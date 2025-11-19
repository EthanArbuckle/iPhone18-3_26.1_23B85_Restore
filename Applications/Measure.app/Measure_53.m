int16x4_t *sub_100356090(int16x4_t *result, uint64_t a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s16(*result, 0x10uLL);
    if (a6 > 7)
    {
      v9 = a6 & 0x7FFFFFF8;
      v10 = &a5[v9];
      v11 = a5 + 4;
      v12 = v9;
      do
      {
        v11[-4] = v8;
        v11[-3] = v8;
        v11[-2] = v8;
        v11[-1] = v8;
        *v11 = v8;
        v11[1] = v8;
        v11[2] = v8;
        v11[3] = v8;
        v11 += 8;
        v12 -= 8;
      }

      while (v12);
      if (v9 == a6)
      {
LABEL_12:
        a4 += 2 * (a6 - 1) + 2;
        a5 = v10;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a5;
    }

    v13 = a6 - v9;
    do
    {
      *v10++ = v8;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v14 = a7 - a6;
    v15 = (a3 + 4 * a6);
    do
    {
      v16 = *v15++;
      v17 = &result[v16];
      a5->i32[0] = *a4 * *v17 + a4[1] * v17[4];
      a5->i32[1] = *a4 * v17[1] + a4[1] * v17[5];
      a5->i32[2] = *a4 * v17[2] + a4[1] * v17[6];
      v18 = *a4;
      v19 = a4[1];
      a4 += 2;
      v20 = v18 * v17[3] + v19 * v17[7];
      v21 = a5 + 1;
      a5->i32[3] = v20;
      ++a5;
      --v14;
    }

    while (v14);
    a5 = v21;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v22 = vshll_n_s16(result[*(a3 + 4 * a8 - 4)], 0x10uLL);
  v23 = (~a7 + a8);
  if (v23 < 7)
  {
    v24 = a5;
LABEL_21:
    v29 = a8 - a7;
    do
    {
      *v24++ = v22;
      --v29;
    }

    while (v29);
    return result;
  }

  v25 = v23 + 1;
  v26 = (v23 + 1) & 0x1FFFFFFF8;
  a7 += v26;
  v24 = &a5[v26];
  v27 = a5 + 4;
  v28 = v26;
  do
  {
    v27[-4] = v22;
    v27[-3] = v22;
    v27[-2] = v22;
    v27[-1] = v22;
    *v27 = v22;
    v27[1] = v22;
    v27[2] = v22;
    v27[3] = v22;
    v27 += 8;
    v28 -= 8;
  }

  while (v28);
  if (v25 != v26)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100356234(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + (*(a3 + 4 * v37) * a2);
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
            --v58;
          }

          while (v58);
        }

        ++a6;
      }

      while (a6 != a8);
    }

    else
    {
      v43 = result + v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

int16x4_t *sub_1003564D8(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 > 0)
    {
      goto LABEL_24;
    }

LABEL_10:
    LODWORD(v12) = a6;
LABEL_42:
    v40 = a5;
    goto LABEL_43;
  }

  if (a2 > 0)
  {
    if (a2 > 0xF)
    {
      v13 = 4 * (a2 & 0x7FFFFFF0);
      v14 = a2 - (a2 & 0x7FFFFFF0);
      if (a2 == (a2 & 0x7FFFFFF0))
      {
        v15 = (a5 + 8);
        do
        {
          a5 = (a5 + v13);
          v16 = v15;
          v17 = result + 2;
          v18 = a2 & 0x7FFFFFF0;
          do
          {
            _Q0 = *v17[-2].i8;
            _Q1 = *v17->i8;
            v21 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v26 = vshll_n_s16(*v17, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v16[-2] = v21;
            v16[-1] = _Q0;
            *v16 = v26;
            v16[1] = _Q1;
            v16 += 4;
            v17 += 4;
            v18 -= 16;
          }

          while (v18);
          ++v14;
          v15 = (v15 + v13);
        }

        while (v14 != a6);
      }

      else
      {
        for (i = 0; i != a6; ++i)
        {
          v28 = (a5 + 8);
          a5 = (a5 + v13);
          v29 = a2 & 0x7FFFFFF0;
          v30 = result + 2;
          do
          {
            _Q0 = *v30[-2].i8;
            _Q1 = *v30->i8;
            v33 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v34 = vshll_n_s16(*v30, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v28[-2] = v33;
            v28[-1] = _Q0;
            *v28 = v34;
            v28[1] = _Q1;
            v28 += 4;
            v30 += 4;
            v29 -= 16;
          }

          while (v29);
          v35 = a2 - (a2 & 0x7FFFFFF0);
          v36 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
          do
          {
            v37 = v36->u16[0];
            v36 = (v36 + 2);
            *a5++ = v37 << 16;
            --v35;
          }

          while (v35);
        }
      }
    }

    else
    {
      for (j = 0; j != a6; ++j)
      {
        v9 = result;
        v10 = a2;
        do
        {
          v11 = *v9++;
          *a5++ = v11 << 16;
          --v10;
        }

        while (v10);
      }
    }
  }

  a4 += 2 * (a6 - 1) + 2;
  if (a6 >= a7)
  {
    goto LABEL_10;
  }

LABEL_24:
  if (a2 < 1)
  {
    LODWORD(v12) = a7;
    goto LABEL_42;
  }

  v12 = a6;
  if (a2 >= 8)
  {
    v68 = &a4[2 * (~a6 + a7) + 2];
    v69 = a4;
    while (1)
    {
      v70 = *(a3 + 4 * v12) * a2;
      if (a5 >= v68 || a4 >= &a5[a2])
      {
        v72 = (result + 2 * v70);
        v40 = &a5[a2 & 0x7FFFFFF8];
        v73 = v69;
        v74 = vld1q_dup_f32(v73++);
        v75 = vld1q_dup_f32(v73);
        v76 = a2 & 0x7FFFFFF8;
        do
        {
          v77 = *(v72 + 2 * a2);
          v78 = vmlaq_s32(vmulq_s32(v74, vmovl_high_u16(*v72)), v75, vmovl_high_u16(v77));
          *a5 = vmlaq_s32(vmulq_s32(v74, vmovl_u16(*v72->i8)), v75, vmovl_u16(*v77.i8));
          *(a5 + 1) = v78;
          a5 += 8;
          ++v72;
          v76 -= 8;
        }

        while (v76);
        v71 = a2 & 0x7FFFFFF8;
        if (v71 == a2)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v71 = 0;
        v40 = a5;
      }

      v79 = result + v71 + v70;
      v80 = a2 - v71;
      do
      {
        v81 = *v69 * *v79;
        *v40 = v81;
        *v40++ = v81 + *(v69 + 1) * v79[a2];
        ++v79;
        --v80;
      }

      while (v80);
LABEL_60:
      ++v12;
      v69 += 2;
      a5 = v40;
      if (v12 >= a7)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = (a3 + 4 * a6);
  v39 = a4 + 1;
  LODWORD(v12) = a6;
  v40 = a5;
  do
  {
    v41 = *v38++;
    v42 = result + (v41 * a2);
    v43 = &v42[a2];
    v44 = *(v39 - 1) * *v42;
    *v40 = v44;
    *v40 = v44 + *v39 * *v43;
    if (a2 == 1)
    {
      ++v40;
    }

    else
    {
      v45 = *(v39 - 1) * v42[1];
      v40[1] = v45;
      v40[1] = v45 + *v39 * v43[1];
      if (a2 == 2)
      {
        v40 += 2;
      }

      else
      {
        v46 = *(v39 - 1) * v42[2];
        v40[2] = v46;
        v40[2] = v46 + *v39 * v43[2];
        if (a2 == 3)
        {
          v40 += 3;
        }

        else
        {
          v47 = *(v39 - 1) * v42[3];
          v40[3] = v47;
          v40[3] = v47 + *v39 * v43[3];
          if (a2 == 4)
          {
            v40 += 4;
          }

          else
          {
            v48 = *(v39 - 1) * v42[4];
            v40[4] = v48;
            v40[4] = v48 + *v39 * v43[4];
            if (a2 == 5)
            {
              v40 += 5;
            }

            else
            {
              v49 = *(v39 - 1) * v42[5];
              v40[5] = v49;
              v40[5] = v49 + *v39 * v43[5];
              if (a2 == 6)
              {
                v40 += 6;
              }

              else
              {
                v50 = *(v39 - 1) * v42[6];
                v40[6] = v50;
                v40[6] = v50 + *v39 * v43[6];
                v40 += 7;
              }
            }
          }
        }
      }
    }

    LODWORD(v12) = v12 + 1;
    v39 += 2;
  }

  while (v12 < a7);
LABEL_43:
  if (v12 < a8 && a2 >= 1)
  {
    v51 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v56 = (result + 2 * v51);
      v57 = v56 + 2;
      v58 = &v56[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v59 = (v40 + 8);
        v40 += a2 & 0x7FFFFFF0;
        v60 = a2 & 0x7FFFFFF0;
        result = v57;
        do
        {
          _Q0 = *result[-2].i8;
          _Q1 = *result->i8;
          v63 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v64 = vshll_n_s16(*result, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v59[-2] = v63;
          v59[-1] = _Q0;
          *v59 = v64;
          v59[1] = _Q1;
          v59 += 4;
          result += 4;
          v60 -= 16;
        }

        while (v60);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v65 = a2 - (a2 & 0x7FFFFFF0);
          v66 = v58;
          do
          {
            v67 = *v66;
            v66 += 2;
            result = (v67 << 16);
            *v40++ = result;
            --v65;
          }

          while (v65);
        }

        LODWORD(v12) = v12 + 1;
      }

      while (v12 != a8);
    }

    else
    {
      v52 = result + v51;
      do
      {
        v53 = v52;
        v54 = a2;
        do
        {
          v55 = *v53++;
          *v40++ = v55 << 16;
          --v54;
        }

        while (v54);
        LODWORD(v12) = v12 + 1;
      }

      while (v12 != a8);
    }
  }

  return result;
}

int16x4_t *sub_1003569B0(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (a2 > 0)
  {
    if (a2 > 0xF)
    {
      v12 = 4 * (a2 & 0x7FFFFFF0);
      v13 = a2 - (a2 & 0x7FFFFFF0);
      if (a2 == (a2 & 0x7FFFFFF0))
      {
        v14 = a5 + 2;
        do
        {
          a5 = (a5 + v12);
          v15 = v14;
          v16 = result + 2;
          v17 = a2 & 0x7FFFFFF0;
          do
          {
            _Q0 = *v16[-2].i8;
            _Q1 = *v16->i8;
            v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v25 = vshll_n_s16(*v16, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v15[-2] = v20;
            v15[-1] = _Q0;
            *v15 = v25;
            v15[1] = _Q1;
            v15 += 4;
            v16 += 4;
            v17 -= 16;
          }

          while (v17);
          ++v13;
          v14 = (v14 + v12);
        }

        while (v13 != a6);
      }

      else
      {
        v26 = 0;
        do
        {
          v27 = a5 + 2;
          a5 = (a5 + v12);
          v28 = a2 & 0x7FFFFFF0;
          v29 = result + 2;
          do
          {
            _Q0 = *v29[-2].i8;
            _Q1 = *v29->i8;
            v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v33 = vshll_n_s16(*v29, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v27[-2] = v32;
            v27[-1] = _Q0;
            *v27 = v33;
            v27[1] = _Q1;
            v27 += 4;
            v29 += 4;
            v28 -= 16;
          }

          while (v28);
          v34 = a2 - (a2 & 0x7FFFFFF0);
          v35 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
          do
          {
            v36 = v35->u16[0];
            v35 = (v35 + 2);
            a5->i32[0] = v36 << 16;
            a5 = (a5 + 4);
            --v34;
          }

          while (v34);
          ++v26;
        }

        while (v26 != a6);
      }
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = result;
        v10 = a2;
        do
        {
          v11 = v9->u16[0];
          v9 = (v9 + 2);
          a5->i32[0] = v11 << 16;
          a5 = (a5 + 4);
          --v10;
        }

        while (v10);
        ++v8;
      }

      while (v8 != a6);
    }
  }

  a4 += 2 * (a6 - 1) + 2;
  if (a6 < a7)
  {
LABEL_24:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v37 = 0;
        v38 = result + (*(a3 + 4 * a6) * a2);
        do
        {
          v39 = *a4;
          if (*a4)
          {
            v39 *= *v38;
          }

          a5->i32[0] = v39;
          v40 = a4[1];
          if (v40)
          {
            v40 *= v38[a2];
          }

          a5->i32[0] = v40 + v39;
          a5 = (a5 + 4);
          ++v38;
          v37 += 2;
        }

        while (2 * a2 != v37);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_34:
  if (a6 < a8 && a2 >= 1)
  {
    v41 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v46 = (result + 2 * v41);
      v47 = v46 + 2;
      v48 = &v46[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v49 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v50 = a2 & 0x7FFFFFF0;
        v51 = v47;
        do
        {
          _Q0 = *v51[-2].i8;
          _Q1 = *v51->i8;
          v54 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v55 = vshll_n_s16(*v51, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v49[-2] = v54;
          v49[-1] = _Q0;
          *v49 = v55;
          v49[1] = _Q1;
          v49 += 4;
          v51 += 4;
          v50 -= 16;
        }

        while (v50);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v56 = a2 - (a2 & 0x7FFFFFF0);
          v57 = v48;
          do
          {
            v58 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v58 << 16;
            a5 = (a5 + 4);
            --v56;
          }

          while (v56);
        }

        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }

    else
    {
      v42 = result + v41;
      do
      {
        v43 = v42;
        v44 = a2;
        do
        {
          v45 = *v43++;
          a5->i32[0] = v45 << 16;
          a5 = (a5 + 4);
          --v44;
        }

        while (v44);
        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }
  }

  return result;
}

uint64_t sub_100356C58(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4)
{
  sub_10029DA40(&v15, a2);
  v14 = 0x3FE0000000000000;
  sub_10029DFB4(&v15, &v14, &v17);
  sub_10029E004(a1, &v17, &v18);
  v13 = 0x3FE0000000000000;
  sub_10029DFDC(&v18, &v13, &v16);
  result = sub_10029DD18(&v16);
  if ((result & 0x80000000) != 0 || (v9 = *(a1 + 8), v9 < 2))
  {
    if (*(a1 + 12) <= a2 + 1)
    {
      v11 = a2 + 1;
    }

    else
    {
      v11 = *(a1 + 12);
    }

    *(a1 + 12) = v11;
  }

  else
  {
    v10 = v9 - 1;
    if (result >= v10)
    {
      *a3 = v10;
      v12 = *(a1 + 16);
      if (v12 >= a2)
      {
        v12 = a2;
      }

      *(a1 + 16) = v12;
    }

    else
    {
      *a3 = result;
      sub_10029DA40(&v14, result);
      sub_10029DFDC(&v16, &v14, &v15);
      if ((v15 & 0x8000000000000000) != 0)
      {
        result = 0;
      }

      else
      {
        sub_10029DA40(&v17, 0x10000);
        sub_10029E004(&v15, &v17, &v18);
        result = sub_10029DC5C(&v18);
      }

      *a4 = 0x10000 - result;
      a4[1] = result;
    }
  }

  return result;
}

void sub_100356DC0(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

int32x4_t *sub_100356DF8(uint64_t a1, int *a2)
{
  v4 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v119, 0x420uLL);
  v117 = v119;
  v118 = v4;
  if (v4 >= 0x109)
  {
    operator new[]();
  }

  v5 = *a2;
  v6 = *(a1 + 104);
  if (v6 <= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *(a1 + 104);
  }

  if (a2[1] >= *(a1 + 108))
  {
    v8 = *(a1 + 108);
  }

  else
  {
    v8 = a2[1];
  }

  if (v5 < v6)
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v119, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    v5 = *a2;
    v9 = 1;
    v10 = -1;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  v9 = 0;
  v10 = -2;
  if (v5 < v7)
  {
LABEL_52:
    v62 = (*(a1 + 56) * *(a1 + 48));
    if (v62 < 1)
    {
      goto LABEL_57;
    }

    v63 = v117;
    v64 = *(a1 + 40);
    v65 = v5;
    v66 = (*(a1 + 32) + v64 * v5);
    if (v62 < 4)
    {
      do
      {
        v67 = v63;
        v68 = v66;
        v69 = v62;
        do
        {
          v70 = v67->i32[0];
          v67 = (v67 + 4);
          v68->i16[0] = (v70 + 0x8000) >> 16;
          v68 = (v68 + 2);
          --v69;
        }

        while (v69);
        ++v65;
        v66 = (v66 + v64);
      }

      while (v65 != v7);
LABEL_57:
      v5 = v7;
      if (v7 < v8)
      {
        goto LABEL_12;
      }

LABEL_58:
      v31 = v117;
      v12 = *(a1 + 28);
      if (v10 + 2 <= v12)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v85 = v66 + 1;
    while (v62 >= 0x10)
    {
      v87 = v62 & 0x7FFFFFF0;
      v88 = v85;
      v89 = v63 + 2;
      do
      {
        v91 = v89[-2];
        v90 = v89[-1];
        v93 = *v89;
        v92 = v89[1];
        v89 += 4;
        v88[-1] = vraddhn_high_s32(vraddhn_s32(v91, 0), v90, 0);
        *v88 = vraddhn_high_s32(vraddhn_s32(v93, 0), v92, 0);
        v88 += 2;
        v87 -= 16;
      }

      while (v87);
      if ((v62 & 0x7FFFFFF0) == v62)
      {
        goto LABEL_79;
      }

      v86 = v62 & 0x7FFFFFF0;
      v94 = v86;
      if ((v62 & 0xC) != 0)
      {
        goto LABEL_86;
      }

      do
      {
LABEL_89:
        v66->i16[v94] = (v63->i32[v94] + 0x8000) >> 16;
        ++v94;
      }

      while (v62 != v94);
LABEL_79:
      ++v65;
      v85 = (v85 + v64);
      v66 = (v66 + v64);
      if (v65 == v7)
      {
        goto LABEL_57;
      }
    }

    v86 = 0;
LABEL_86:
    v95 = (v63 + 4 * v86);
    v96 = v86 - (v62 & 0x7FFFFFFC);
    v97 = (v66 + 2 * v86);
    do
    {
      v98 = *v95++;
      *v97++ = vraddhn_s32(v98, 0);
      v96 += 4;
    }

    while (v96);
    v94 = v62 & 0x7FFFFFFC;
    if (v94 == v62)
    {
      goto LABEL_79;
    }

    goto LABEL_89;
  }

LABEL_11:
  if (v5 >= v8)
  {
    goto LABEL_58;
  }

LABEL_12:
  v11 = v5;
  v12 = *(a1 + 28);
  *&v13.f64[0] = 0x8000000080000000;
  *&v13.f64[1] = 0x8000000080000000;
  v14 = vnegq_f64(v13);
  v15.i64[0] = 0xFFFFLL;
  v15.i64[1] = 0xFFFFLL;
  v114 = v14;
  do
  {
    v16 = v10;
    v17 = *(a1 + 72);
    v18 = v10 + 2;
    v10 = *(v17 + 4 * v11);
    if (v10 > v18)
    {
      v18 = *(v17 + 4 * v11);
    }

    v19 = v10 + 2;
    if (v12 < v10 + 2)
    {
      v19 = v12;
    }

    if (v18 < v19)
    {
      if (v16 + 2 <= v10)
      {
        v20 = v10;
      }

      else
      {
        v20 = v16 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v20++);
        v10 = *(v17 + 4 * v11);
        v9 = (v9 & 1) == 0;
        v21 = v10 + 2;
        v12 = *(a1 + 28);
        if (v12 < v10 + 2)
        {
          v21 = *(a1 + 28);
        }
      }

      while (v20 < v21);
      v14 = v114;
      v15.i64[0] = 0xFFFFLL;
      v15.i64[1] = 0xFFFFLL;
    }

    v22 = v12 - 2;
    if (v10 <= v12 - 2)
    {
      v23 = v12 - 2;
    }

    else
    {
      v23 = v10;
    }

    v24 = v23 + v9;
    if (v16 > v22)
    {
      v22 = v16;
    }

    v25 = v24 - v22;
    v115 = 0;
    v116 = 0;
    if (v25 >= 0)
    {
      v9 = v25 & 1;
    }

    else
    {
      v9 = -(v25 & 1);
    }

    v26 = *(a1 + 88);
    if (v9 < 1)
    {
      v27 = 0;
      v29 = 0;
      v28 = &v116;
    }

    else
    {
      v27 = *(v26 + 8 * v11 + 4);
      v28 = &v115;
      v29 = 1;
    }

    v116 = v27;
    v30 = v26 + 4 * (2 * v11 - v9);
    *v28 = *(v30 + 4 * v29);
    if (v9 <= 0)
    {
      v115 = *(v30 + 4);
      v31 = v117;
      v32 = *(a1 + 56) * *(a1 + 48);
      if (v32 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v31 = v117;
      v32 = *(a1 + 56) * *(a1 + 48);
      if (v32 < 1)
      {
        goto LABEL_13;
      }
    }

    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v35 = v115;
    v36 = v116;
    if (v32 >= 8)
    {
      v37 = v32 & 0x7FFFFFF8;
      v38 = (v33 + v34 * v11);
      v39 = vdupq_n_s32(v116);
      v40 = vdupq_n_s32(v115);
      v41 = v37;
      v42 = v31;
      do
      {
        v43 = v42[1];
        v44 = vmull_high_u32(v39, v43);
        v46 = *(v42 + 4 * v32);
        v45 = *(&v42[1] + 4 * v32);
        v47 = vshrq_n_u64(vaddq_s64(vmlal_u32(vmull_u32(*v39.i8, *v43.i8), *v40.i8, *v45.i8), v14), 0x20uLL);
        v48 = vshrq_n_u64(vaddq_s64(vmlal_high_u32(v44, v40, v45), v14), 0x20uLL);
        v49 = vshrq_n_u64(vaddq_s64(vmlal_u32(vmull_u32(*v39.i8, *v42->i8), *v40.i8, *v46.i8), v14), 0x20uLL);
        v50 = vshrq_n_u64(vaddq_s64(vmlal_high_u32(vmull_high_u32(v39, *v42), v40, v46), v14), 0x20uLL);
        v51 = vcgtq_u64(v15, v50);
        v52 = vornq_s8(vandq_s8(v50, v51), v51);
        v53 = vcgtq_u64(v15, v49);
        v54 = vornq_s8(vandq_s8(v49, v53), v53);
        v55 = vcgtq_u64(v15, v48);
        v56 = vornq_s8(vandq_s8(v48, v55), v55);
        v57 = vcgtq_u64(v15, v47);
        *v38++ = vuzp1q_s16(vuzp1q_s32(v54, v52), vuzp1q_s32(vornq_s8(vandq_s8(v47, v57), v57), v56));
        v42 += 2;
        v41 -= 8;
      }

      while (v41);
      if (v37 == v32)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v37 = 0;
    }

    v58 = v32 - v37;
    v59 = (v33 + v34 * v11 + 2 * v37);
    v60 = v31 + v37;
    do
    {
      v61 = (v60[v32] * v35 + *v60 * v36 + 0x80000000) >> 32;
      if (v61 >= 0xFFFF)
      {
        LOWORD(v61) = -1;
      }

      *v59++ = v61;
      ++v60;
      --v58;
    }

    while (v58);
LABEL_13:
    ++v11;
  }

  while (v8 != v11);
  v5 = v8;
  if (v10 + 2 <= v12)
  {
LABEL_64:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v12 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v31, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_65;
  }

LABEL_59:
  v71 = v9 + ~v10 + v12;
  if (v71 >= 0)
  {
    v72 = v71 & 1;
  }

  else
  {
    v72 = -(v71 & 1);
  }

  v31 = (v31 + 4 * *(a1 + 48) * v72 * *(a1 + 56));
LABEL_65:
  v73 = a2[1];
  if (v5 < v73)
  {
    v74 = (*(a1 + 56) * *(a1 + 48));
    if (v74 >= 1)
    {
      v76 = *(a1 + 32);
      v75 = *(a1 + 40);
      v77 = v5;
      if (v74 < 4)
      {
        v78 = (v76 + v75 * v5);
        do
        {
          v79 = v31;
          v80 = v78;
          v81 = v74;
          do
          {
            v82 = v79->i32[0];
            v79 = (v79 + 4);
            *v80++ = (v82 + 0x8000) >> 16;
            --v81;
          }

          while (v81);
          ++v77;
          v78 = (v78 + v75);
        }

        while (v77 != v73);
        goto LABEL_72;
      }

      v99 = (v76 + v75 * v5);
      v100 = v99 + 1;
      while (2)
      {
        if (v74 >= 0x10)
        {
          v102 = v74 & 0x7FFFFFF0;
          v103 = v100;
          v104 = v31 + 2;
          do
          {
            v106 = v104[-2];
            v105 = v104[-1];
            v108 = *v104;
            v107 = v104[1];
            v104 += 4;
            v103[-1] = vraddhn_high_s32(vraddhn_s32(v106, 0), v105, 0);
            *v103 = vraddhn_high_s32(vraddhn_s32(v108, 0), v107, 0);
            v103 += 2;
            v102 -= 16;
          }

          while (v102);
          if ((v74 & 0x7FFFFFF0) != v74)
          {
            v101 = v74 & 0x7FFFFFF0;
            i = v101;
            if ((v74 & 0xC) != 0)
            {
              goto LABEL_99;
            }

            goto LABEL_102;
          }
        }

        else
        {
          v101 = 0;
LABEL_99:
          v110 = (v31 + 4 * v101);
          v111 = v101 - (v74 & 0x7FFFFFFC);
          v112 = (v99 + 2 * v101);
          do
          {
            v113 = *v110++;
            *v112++ = vraddhn_s32(v113, 0);
            v111 += 4;
          }

          while (v111);
          for (i = v74 & 0x7FFFFFFC; v74 != i; ++i)
          {
LABEL_102:
            v99->i16[i] = (v31->i32[i] + 0x8000) >> 16;
          }
        }

        ++v77;
        v100 = (v100 + v75);
        v99 = (v99 + v75);
        if (v77 == v73)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_72:
  result = v117;
  if (v117 != v119 && v117 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_1003574FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != v16)
  {
    if (a16)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

unsigned __int16 *sub_100357540(unsigned __int16 *result, uint64_t a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = *result << 16;
  if (a6 <= 7)
  {
    LODWORD(v9) = 0;
    v10 = a5;
LABEL_9:
    v14 = a6 - v9;
    do
    {
      *v10++ = v8;
      --v14;
    }

    while (v14);
    goto LABEL_11;
  }

  v9 = a6 & 0x7FFFFFF8;
  v10 = a5 + v9;
  v11 = vdupq_n_s32(v8);
  v12 = a5 + 1;
  v13 = v9;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 8;
  }

  while (v13);
  if (v9 != a6)
  {
    goto LABEL_9;
  }

LABEL_11:
  a4 += 2 * (a6 - 1) + 2;
  a5 = v10;
  if (a6 >= a7)
  {
    goto LABEL_15;
  }

LABEL_12:
  v15 = a7 - a6;
  v16 = (a3 + 4 * a6);
  do
  {
    v17 = *v16++;
    v18 = *a4;
    v19 = a4[1];
    a4 += 2;
    a5->i32[0] = v18 * result[v17] + v19 * result[v17 + 1];
    a5 = (a5 + 4);
    --v15;
  }

  while (v15);
  a6 = a7;
LABEL_15:
  if (a6 >= a8)
  {
    return result;
  }

  v20 = result[*(a3 + 4 * a8 - 4)] << 16;
  v21 = (~a6 + a8);
  if (v21 < 7)
  {
    v22 = a5;
LABEL_21:
    v28 = a8 - a6;
    do
    {
      *v22++ = v20;
      --v28;
    }

    while (v28);
    return result;
  }

  v23 = v21 + 1;
  v24 = (v21 + 1) & 0x1FFFFFFF8;
  a6 += v24;
  v22 = a5 + v24;
  v25 = vdupq_n_s32(v20);
  v26 = a5 + 1;
  v27 = v24;
  do
  {
    v26[-1] = v25;
    *v26 = v25;
    v26 += 2;
    v27 -= 8;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100357678(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + (*(a3 + 4 * v37) * a2);
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
            --v58;
          }

          while (v58);
        }

        ++a6;
      }

      while (a6 != a8);
    }

    else
    {
      v43 = result + v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

_WORD *sub_10035791C(_WORD *result, double a2, uint64_t a3, uint64_t a4, int *a5, double *a6, int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    LOWORD(a2) = *result;
    WORD2(a2) = result[1];
    a2 = COERCE_DOUBLE(vshl_n_s32(*&a2, 0x10uLL));
    if (a7 > 7)
    {
      v9 = a7 & 0x7FFFFFF8;
      v10 = &a6[v9];
      *&v11 = a2;
      *(&v11 + 1) = a2;
      v12 = a6 + 4;
      v13 = v9;
      do
      {
        *(v12 - 2) = v11;
        *(v12 - 1) = v11;
        *v12 = v11;
        v12[1] = v11;
        v12 += 4;
        v13 -= 8;
      }

      while (v13);
      if (v9 == a7)
      {
LABEL_12:
        a5 += 2 * (a7 - 1) + 2;
        a6 = v10;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a6;
    }

    v14 = a7 - v9;
    do
    {
      *v10++ = a2;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v15 = a8 - a7;
    v16 = (a4 + 4 * a7);
    do
    {
      v17 = *v16++;
      v18 = &result[2 * v17];
      *a6 = *a5 * *v18 + a5[1] * v18[2];
      v19 = *a5;
      v20 = a5[1];
      a5 += 2;
      v21 = v19 * v18[1] + v20 * v18[3];
      v22 = a6 + 1;
      *(a6++ + 1) = v21;
      --v15;
    }

    while (v15);
    a6 = v22;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  v23 = &result[2 * *(a4 + 4 * a9 - 4)];
  LOWORD(a2) = *v23;
  WORD2(a2) = v23[1];
  v24 = vshl_n_s32(*&a2, 0x10uLL);
  v25 = (~a8 + a9);
  if (v25 < 7)
  {
    v26 = a6;
LABEL_21:
    v32 = a9 - a8;
    do
    {
      *v26++ = v24;
      --v32;
    }

    while (v32);
    return result;
  }

  v27 = v25 + 1;
  v28 = (v25 + 1) & 0x1FFFFFFF8;
  a8 += v28;
  v26 = &a6[v28];
  *&v29 = v24;
  *(&v29 + 1) = v24;
  v30 = a6 + 4;
  v31 = v28;
  do
  {
    *(v30 - 2) = v29;
    *(v30 - 1) = v29;
    *v30 = v29;
    v30[1] = v29;
    v30 += 4;
    v31 -= 8;
  }

  while (v31);
  if (v27 != v28)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100357A9C(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + (*(a3 + 4 * v37) * a2);
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
            --v58;
          }

          while (v58);
        }

        ++a6;
      }

      while (a6 != a8);
    }

    else
    {
      v43 = result + v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

__int16 *sub_100357D40(__int16 *result, int32x2_t a2, uint64_t a3, uint64_t a4, int *a5, int32x2_t *a6, int a7, int a8, int a9)
{
  if (a7 >= 1)
  {
    a2.i16[0] = *result;
    a2.i16[2] = result[1];
    a2 = vshl_n_s32(a2, 0x10uLL);
    v9 = result[2] << 16;
    if (a7 > 7)
    {
      v10 = a7 & 0x7FFFFFF8;
      *&v12 = a2;
      *(&v12 + 1) = __PAIR64__(a2.u32[0], v9);
      LODWORD(v13) = a2.i32[1];
      DWORD1(v13) = result[2] << 16;
      *(&v13 + 1) = a2;
      v11 = (a6 + 12 * v10);
      *&v14 = __PAIR64__(a2.u32[0], DWORD1(v13));
      *(&v14 + 1) = __PAIR64__(v9, a2.u32[1]);
      v15 = v10;
      do
      {
        *a6->i8 = v12;
        *a6[2].i8 = v13;
        *a6[4].i8 = v14;
        *a6[6].i8 = v12;
        *a6[8].i8 = v13;
        *a6[10].i8 = v14;
        a6 += 12;
        v15 -= 8;
      }

      while (v15);
      if (v10 == a7)
      {
LABEL_12:
        a5 += 2 * (a7 - 1) + 2;
        a6 = v11;
        if (a7 < a8)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a6;
    }

    v16 = a7 - v10;
    v17 = v11;
    do
    {
      *v17 = a2;
      v11 = (v17 + 12);
      v17[1].i32[0] = v9;
      v17 = (v17 + 12);
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  a7 = 0;
  if (a8 > 0)
  {
LABEL_13:
    v18 = a8 - a7;
    v19 = (a4 + 4 * a7);
    do
    {
      v20 = *v19++;
      v21 = &result[3 * v20];
      a6->i32[0] = *a5 * *v21 + a5[1] * v21[3];
      a6->i32[1] = *a5 * v21[1] + a5[1] * v21[4];
      v22 = *a5;
      v23 = a5[1];
      a5 += 2;
      v24 = v22 * v21[2] + v23 * v21[5];
      v25 = (a6 + 12);
      a6[1].i32[0] = v24;
      a6 = (a6 + 12);
      --v18;
    }

    while (v18);
    a6 = v25;
    if (a8 >= a9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a8 = a7;
  if (a7 >= a9)
  {
    return result;
  }

LABEL_16:
  v26 = &result[3 * *(a4 + 4 * a9 - 4)];
  a2.i16[0] = *v26;
  a2.i16[2] = v26[1];
  v27 = vshl_n_s32(a2, 0x10uLL);
  v28 = v26[2] << 16;
  v29 = (~a8 + a9);
  if (v29 < 7)
  {
    v30 = a6;
LABEL_21:
    v36 = a9 - a8;
    do
    {
      *v30 = v27;
      v30[1].i32[0] = v28;
      v30 = (v30 + 12);
      --v36;
    }

    while (v36);
    return result;
  }

  v31 = v29 + 1;
  a8 += v31 & 0xFFFFFFF8;
  *&v32 = v27;
  *(&v32 + 1) = __PAIR64__(v27.u32[0], v28);
  *&v33 = __PAIR64__(v28, v27.u32[1]);
  *(&v33 + 1) = v27;
  v30 = (a6 + 12 * (v31 & 0x1FFFFFFF8));
  *&v34 = __PAIR64__(v27.u32[0], v28);
  *(&v34 + 1) = __PAIR64__(v28, v27.u32[1]);
  v35 = v31 & 0x1FFFFFFF8;
  do
  {
    *a6->i8 = v32;
    *a6[2].i8 = v33;
    *a6[4].i8 = v34;
    *a6[6].i8 = v32;
    *a6[8].i8 = v33;
    *a6[10].i8 = v34;
    a6 += 12;
    v35 -= 8;
  }

  while (v35);
  if (v31 != (v31 & 0x1FFFFFFF8))
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_100357F70(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + (*(a3 + 4 * v37) * a2);
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
            --v58;
          }

          while (v58);
        }

        ++a6;
      }

      while (a6 != a8);
    }

    else
    {
      v43 = result + v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

int16x4_t *sub_100358214(int16x4_t *result, uint64_t a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s16(*result, 0x10uLL);
    if (a6 > 7)
    {
      v9 = a6 & 0x7FFFFFF8;
      v10 = &a5[v9];
      v11 = a5 + 4;
      v12 = v9;
      do
      {
        v11[-4] = v8;
        v11[-3] = v8;
        v11[-2] = v8;
        v11[-1] = v8;
        *v11 = v8;
        v11[1] = v8;
        v11[2] = v8;
        v11[3] = v8;
        v11 += 8;
        v12 -= 8;
      }

      while (v12);
      if (v9 == a6)
      {
LABEL_12:
        a4 += 2 * (a6 - 1) + 2;
        a5 = v10;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a5;
    }

    v13 = a6 - v9;
    do
    {
      *v10++ = v8;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v14 = a7 - a6;
    v15 = (a3 + 4 * a6);
    do
    {
      v16 = *v15++;
      v17 = &result[v16];
      a5->i32[0] = *a4 * *v17 + a4[1] * v17[4];
      a5->i32[1] = *a4 * v17[1] + a4[1] * v17[5];
      a5->i32[2] = *a4 * v17[2] + a4[1] * v17[6];
      v18 = *a4;
      v19 = a4[1];
      a4 += 2;
      v20 = v18 * v17[3] + v19 * v17[7];
      v21 = a5 + 1;
      a5->i32[3] = v20;
      ++a5;
      --v14;
    }

    while (v14);
    a5 = v21;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v22 = vshll_n_s16(result[*(a3 + 4 * a8 - 4)], 0x10uLL);
  v23 = (~a7 + a8);
  if (v23 < 7)
  {
    v24 = a5;
LABEL_21:
    v29 = a8 - a7;
    do
    {
      *v24++ = v22;
      --v29;
    }

    while (v29);
    return result;
  }

  v25 = v23 + 1;
  v26 = (v23 + 1) & 0x1FFFFFFF8;
  a7 += v26;
  v24 = &a5[v26];
  v27 = a5 + 4;
  v28 = v26;
  do
  {
    v27[-4] = v22;
    v27[-3] = v22;
    v27[-2] = v22;
    v27[-1] = v22;
    *v27 = v22;
    v27[1] = v22;
    v27[2] = v22;
    v27[3] = v22;
    v27 += 8;
    v28 -= 8;
  }

  while (v28);
  if (v25 != v26)
  {
    goto LABEL_21;
  }

  return result;
}

int16x4_t *sub_1003583B8(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 0xF)
      {
        v12 = 4 * (a2 & 0x7FFFFFF0);
        v13 = a2 - (a2 & 0x7FFFFFF0);
        if (a2 == (a2 & 0x7FFFFFF0))
        {
          v14 = a5 + 2;
          do
          {
            a5 = (a5 + v12);
            v15 = v14;
            v16 = result + 2;
            v17 = a2 & 0x7FFFFFF0;
            do
            {
              _Q0 = *v16[-2].i8;
              _Q1 = *v16->i8;
              v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v25 = vshll_n_s16(*v16, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v15[-2] = v20;
              v15[-1] = _Q0;
              *v15 = v25;
              v15[1] = _Q1;
              v15 += 4;
              v16 += 4;
              v17 -= 16;
            }

            while (v17);
            ++v13;
            v14 = (v14 + v12);
          }

          while (v13 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v27 = a5 + 2;
            a5 = (a5 + v12);
            v28 = a2 & 0x7FFFFFF0;
            v29 = result + 2;
            do
            {
              _Q0 = *v29[-2].i8;
              _Q1 = *v29->i8;
              v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
              __asm { SHLL2           V0.4S, V0.8H, #0x10 }

              v33 = vshll_n_s16(*v29, 0x10uLL);
              __asm { SHLL2           V1.4S, V1.8H, #0x10 }

              v27[-2] = v32;
              v27[-1] = _Q0;
              *v27 = v33;
              v27[1] = _Q1;
              v27 += 4;
              v29 += 4;
              v28 -= 16;
            }

            while (v28);
            v34 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
            v35 = a2 - (a2 & 0x7FFFFFF0);
            do
            {
              v36 = v34->u16[0];
              v34 = (v34 + 2);
              a5->i32[0] = v36 << 16;
              a5 = (a5 + 4);
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        for (j = 0; j != a6; ++j)
        {
          v9 = result;
          v10 = a2;
          do
          {
            v11 = v9->u16[0];
            v9 = (v9 + 2);
            a5->i32[0] = v11 << 16;
            a5 = (a5 + 4);
            --v10;
          }

          while (v10);
        }
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_34;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v37 = a6;
  do
  {
    v38 = result + (*(a3 + 4 * v37) * a2);
    v39 = a2;
    do
    {
      v40 = *a4;
      if (*a4)
      {
        v40 *= *v38;
      }

      a5->i32[0] = v40;
      v41 = a4[1];
      if (v41)
      {
        v41 *= v38[a2];
      }

      a5->i32[0] = v41 + v40;
      a5 = (a5 + 4);
      ++v38;
      --v39;
    }

    while (v39);
    ++v37;
    a4 += 2;
  }

  while (v37 < a7);
  a6 = a7;
LABEL_34:
  if (a2 >= 1 && a6 < a8)
  {
    v42 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v47 = (result + 2 * v42);
      v48 = v47 + 2;
      v49 = &v47[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v50 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v51 = a2 & 0x7FFFFFF0;
        v52 = v48;
        do
        {
          _Q0 = *v52[-2].i8;
          _Q1 = *v52->i8;
          v55 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v56 = vshll_n_s16(*v52, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v50[-2] = v55;
          v50[-1] = _Q0;
          *v50 = v56;
          v50[1] = _Q1;
          v50 += 4;
          v52 += 4;
          v51 -= 16;
        }

        while (v51);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v57 = v49;
          v58 = a2 - (a2 & 0x7FFFFFF0);
          do
          {
            v59 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v59 << 16;
            a5 = (a5 + 4);
            --v58;
          }

          while (v58);
        }

        ++a6;
      }

      while (a6 != a8);
    }

    else
    {
      v43 = result + v42;
      do
      {
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v44++;
          a5->i32[0] = v46 << 16;
          a5 = (a5 + 4);
          --v45;
        }

        while (v45);
        ++a6;
      }

      while (a6 != a8);
    }
  }

  return result;
}

int16x4_t *sub_10035865C(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 > 0)
    {
      goto LABEL_24;
    }

LABEL_10:
    LODWORD(v12) = a6;
LABEL_42:
    v40 = a5;
    goto LABEL_43;
  }

  if (a2 > 0)
  {
    if (a2 > 0xF)
    {
      v13 = 4 * (a2 & 0x7FFFFFF0);
      v14 = a2 - (a2 & 0x7FFFFFF0);
      if (a2 == (a2 & 0x7FFFFFF0))
      {
        v15 = (a5 + 8);
        do
        {
          a5 = (a5 + v13);
          v16 = v15;
          v17 = result + 2;
          v18 = a2 & 0x7FFFFFF0;
          do
          {
            _Q0 = *v17[-2].i8;
            _Q1 = *v17->i8;
            v21 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v26 = vshll_n_s16(*v17, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v16[-2] = v21;
            v16[-1] = _Q0;
            *v16 = v26;
            v16[1] = _Q1;
            v16 += 4;
            v17 += 4;
            v18 -= 16;
          }

          while (v18);
          ++v14;
          v15 = (v15 + v13);
        }

        while (v14 != a6);
      }

      else
      {
        for (i = 0; i != a6; ++i)
        {
          v28 = (a5 + 8);
          a5 = (a5 + v13);
          v29 = a2 & 0x7FFFFFF0;
          v30 = result + 2;
          do
          {
            _Q0 = *v30[-2].i8;
            _Q1 = *v30->i8;
            v33 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v34 = vshll_n_s16(*v30, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v28[-2] = v33;
            v28[-1] = _Q0;
            *v28 = v34;
            v28[1] = _Q1;
            v28 += 4;
            v30 += 4;
            v29 -= 16;
          }

          while (v29);
          v35 = a2 - (a2 & 0x7FFFFFF0);
          v36 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
          do
          {
            v37 = v36->u16[0];
            v36 = (v36 + 2);
            *a5++ = v37 << 16;
            --v35;
          }

          while (v35);
        }
      }
    }

    else
    {
      for (j = 0; j != a6; ++j)
      {
        v9 = result;
        v10 = a2;
        do
        {
          v11 = *v9++;
          *a5++ = v11 << 16;
          --v10;
        }

        while (v10);
      }
    }
  }

  a4 += 2 * (a6 - 1) + 2;
  if (a6 >= a7)
  {
    goto LABEL_10;
  }

LABEL_24:
  if (a2 < 1)
  {
    LODWORD(v12) = a7;
    goto LABEL_42;
  }

  v12 = a6;
  if (a2 >= 8)
  {
    v68 = &a4[2 * (~a6 + a7) + 2];
    v69 = a4;
    while (1)
    {
      v70 = *(a3 + 4 * v12) * a2;
      if (a5 >= v68 || a4 >= &a5[a2])
      {
        v72 = (result + 2 * v70);
        v40 = &a5[a2 & 0x7FFFFFF8];
        v73 = v69;
        v74 = vld1q_dup_f32(v73++);
        v75 = vld1q_dup_f32(v73);
        v76 = a2 & 0x7FFFFFF8;
        do
        {
          v77 = *(v72 + 2 * a2);
          v78 = vmlaq_s32(vmulq_s32(v74, vmovl_high_s16(*v72)), v75, vmovl_high_s16(v77));
          *a5 = vmlaq_s32(vmulq_s32(v74, vmovl_s16(*v72->i8)), v75, vmovl_s16(*v77.i8));
          *(a5 + 1) = v78;
          a5 += 8;
          ++v72;
          v76 -= 8;
        }

        while (v76);
        v71 = a2 & 0x7FFFFFF8;
        if (v71 == a2)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v71 = 0;
        v40 = a5;
      }

      v79 = result + v71 + v70;
      v80 = a2 - v71;
      do
      {
        v81 = *v69 * *v79;
        *v40 = v81;
        *v40++ = v81 + *(v69 + 1) * v79[a2];
        ++v79;
        --v80;
      }

      while (v80);
LABEL_60:
      ++v12;
      v69 += 2;
      a5 = v40;
      if (v12 >= a7)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = (a3 + 4 * a6);
  v39 = a4 + 1;
  LODWORD(v12) = a6;
  v40 = a5;
  do
  {
    v41 = *v38++;
    v42 = result + (v41 * a2);
    v43 = &v42[a2];
    v44 = *(v39 - 1) * *v42;
    *v40 = v44;
    *v40 = v44 + *v39 * *v43;
    if (a2 == 1)
    {
      ++v40;
    }

    else
    {
      v45 = *(v39 - 1) * v42[1];
      v40[1] = v45;
      v40[1] = v45 + *v39 * v43[1];
      if (a2 == 2)
      {
        v40 += 2;
      }

      else
      {
        v46 = *(v39 - 1) * v42[2];
        v40[2] = v46;
        v40[2] = v46 + *v39 * v43[2];
        if (a2 == 3)
        {
          v40 += 3;
        }

        else
        {
          v47 = *(v39 - 1) * v42[3];
          v40[3] = v47;
          v40[3] = v47 + *v39 * v43[3];
          if (a2 == 4)
          {
            v40 += 4;
          }

          else
          {
            v48 = *(v39 - 1) * v42[4];
            v40[4] = v48;
            v40[4] = v48 + *v39 * v43[4];
            if (a2 == 5)
            {
              v40 += 5;
            }

            else
            {
              v49 = *(v39 - 1) * v42[5];
              v40[5] = v49;
              v40[5] = v49 + *v39 * v43[5];
              if (a2 == 6)
              {
                v40 += 6;
              }

              else
              {
                v50 = *(v39 - 1) * v42[6];
                v40[6] = v50;
                v40[6] = v50 + *v39 * v43[6];
                v40 += 7;
              }
            }
          }
        }
      }
    }

    LODWORD(v12) = v12 + 1;
    v39 += 2;
  }

  while (v12 < a7);
LABEL_43:
  if (v12 < a8 && a2 >= 1)
  {
    v51 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v56 = (result + 2 * v51);
      v57 = v56 + 2;
      v58 = &v56[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v59 = (v40 + 8);
        v40 += a2 & 0x7FFFFFF0;
        v60 = a2 & 0x7FFFFFF0;
        result = v57;
        do
        {
          _Q0 = *result[-2].i8;
          _Q1 = *result->i8;
          v63 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v64 = vshll_n_s16(*result, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v59[-2] = v63;
          v59[-1] = _Q0;
          *v59 = v64;
          v59[1] = _Q1;
          v59 += 4;
          result += 4;
          v60 -= 16;
        }

        while (v60);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v65 = a2 - (a2 & 0x7FFFFFF0);
          v66 = v58;
          do
          {
            v67 = *v66;
            v66 += 2;
            result = (v67 << 16);
            *v40++ = result;
            --v65;
          }

          while (v65);
        }

        LODWORD(v12) = v12 + 1;
      }

      while (v12 != a8);
    }

    else
    {
      v52 = result + v51;
      do
      {
        v53 = v52;
        v54 = a2;
        do
        {
          v55 = *v53++;
          *v40++ = v55 << 16;
          --v54;
        }

        while (v54);
        LODWORD(v12) = v12 + 1;
      }

      while (v12 != a8);
    }
  }

  return result;
}

int16x4_t *sub_100358B34(int16x4_t *result, unsigned int a2, uint64_t a3, int *a4, int32x4_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (a2 > 0)
  {
    if (a2 > 0xF)
    {
      v12 = 4 * (a2 & 0x7FFFFFF0);
      v13 = a2 - (a2 & 0x7FFFFFF0);
      if (a2 == (a2 & 0x7FFFFFF0))
      {
        v14 = a5 + 2;
        do
        {
          a5 = (a5 + v12);
          v15 = v14;
          v16 = result + 2;
          v17 = a2 & 0x7FFFFFF0;
          do
          {
            _Q0 = *v16[-2].i8;
            _Q1 = *v16->i8;
            v20 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v25 = vshll_n_s16(*v16, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v15[-2] = v20;
            v15[-1] = _Q0;
            *v15 = v25;
            v15[1] = _Q1;
            v15 += 4;
            v16 += 4;
            v17 -= 16;
          }

          while (v17);
          ++v13;
          v14 = (v14 + v12);
        }

        while (v13 != a6);
      }

      else
      {
        v26 = 0;
        do
        {
          v27 = a5 + 2;
          a5 = (a5 + v12);
          v28 = a2 & 0x7FFFFFF0;
          v29 = result + 2;
          do
          {
            _Q0 = *v29[-2].i8;
            _Q1 = *v29->i8;
            v32 = vshll_n_s16(*_Q0.i8, 0x10uLL);
            __asm { SHLL2           V0.4S, V0.8H, #0x10 }

            v33 = vshll_n_s16(*v29, 0x10uLL);
            __asm { SHLL2           V1.4S, V1.8H, #0x10 }

            v27[-2] = v32;
            v27[-1] = _Q0;
            *v27 = v33;
            v27[1] = _Q1;
            v27 += 4;
            v29 += 4;
            v28 -= 16;
          }

          while (v28);
          v34 = a2 - (a2 & 0x7FFFFFF0);
          v35 = &result[4 * ((a2 >> 4) & 0x7FFFFFF)];
          do
          {
            v36 = v35->u16[0];
            v35 = (v35 + 2);
            a5->i32[0] = v36 << 16;
            a5 = (a5 + 4);
            --v34;
          }

          while (v34);
          ++v26;
        }

        while (v26 != a6);
      }
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = result;
        v10 = a2;
        do
        {
          v11 = v9->u16[0];
          v9 = (v9 + 2);
          a5->i32[0] = v11 << 16;
          a5 = (a5 + 4);
          --v10;
        }

        while (v10);
        ++v8;
      }

      while (v8 != a6);
    }
  }

  a4 += 2 * (a6 - 1) + 2;
  if (a6 < a7)
  {
LABEL_24:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v37 = 0;
        v38 = result + (*(a3 + 4 * a6) * a2);
        do
        {
          v39 = *a4;
          if (*a4)
          {
            v39 *= *v38;
          }

          a5->i32[0] = v39;
          v40 = a4[1];
          if (v40)
          {
            v40 *= v38[a2];
          }

          a5->i32[0] = v40 + v39;
          a5 = (a5 + 4);
          ++v38;
          v37 += 2;
        }

        while (2 * a2 != v37);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_34:
  if (a6 < a8 && a2 >= 1)
  {
    v41 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 0x10)
    {
      v46 = (result + 2 * v41);
      v47 = v46 + 2;
      v48 = &v46[4 * ((a2 >> 4) & 0x7FFFFFF)];
      do
      {
        v49 = a5 + 2;
        a5 = (a5 + 4 * (a2 & 0x7FFFFFF0));
        v50 = a2 & 0x7FFFFFF0;
        v51 = v47;
        do
        {
          _Q0 = *v51[-2].i8;
          _Q1 = *v51->i8;
          v54 = vshll_n_s16(*_Q0.i8, 0x10uLL);
          __asm { SHLL2           V0.4S, V0.8H, #0x10 }

          v55 = vshll_n_s16(*v51, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          v49[-2] = v54;
          v49[-1] = _Q0;
          *v49 = v55;
          v49[1] = _Q1;
          v49 += 4;
          v51 += 4;
          v50 -= 16;
        }

        while (v50);
        if (a2 != (a2 & 0x7FFFFFF0))
        {
          v56 = a2 - (a2 & 0x7FFFFFF0);
          v57 = v48;
          do
          {
            v58 = v57->u16[0];
            v57 = (v57 + 2);
            a5->i32[0] = v58 << 16;
            a5 = (a5 + 4);
            --v56;
          }

          while (v56);
        }

        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }

    else
    {
      v42 = result + v41;
      do
      {
        v43 = v42;
        v44 = a2;
        do
        {
          v45 = *v43++;
          a5->i32[0] = v45 << 16;
          a5 = (a5 + 4);
          --v44;
        }

        while (v44);
        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }
  }

  return result;
}

void sub_100358DE0(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

int32x4_t *sub_100358E18(uint64_t a1, int *a2)
{
  v4 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v118, 0x420uLL);
  v116 = v118;
  v117 = v4;
  if (v4 >= 0x109)
  {
    operator new[]();
  }

  LODWORD(v5) = *a2;
  v6 = *(a1 + 104);
  if (v6 <= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *(a1 + 104);
  }

  if (a2[1] >= *(a1 + 108))
  {
    v8 = *(a1 + 108);
  }

  else
  {
    v8 = a2[1];
  }

  if (v5 < v6)
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v118, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    LODWORD(v5) = *a2;
    v9 = 1;
    v10 = -1;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

  v9 = 0;
  v10 = -2;
  if (v5 < v7)
  {
LABEL_54:
    v59 = (*(a1 + 56) * *(a1 + 48));
    if (v59 < 1)
    {
      goto LABEL_59;
    }

    v60 = v116;
    v61 = *(a1 + 40);
    v62 = v5;
    v63 = (*(a1 + 32) + v61 * v5);
    if (v59 < 4)
    {
      do
      {
        v64 = v60;
        v65 = v63;
        v66 = v59;
        do
        {
          v67 = v64->i32[0];
          v64 = (v64 + 4);
          v65->i16[0] = (v67 + 0x8000) >> 16;
          v65 = (v65 + 2);
          --v66;
        }

        while (v66);
        ++v62;
        v63 = (v63 + v61);
      }

      while (v62 != v7);
LABEL_59:
      LODWORD(v5) = v7;
      if (v7 < v8)
      {
        goto LABEL_12;
      }

LABEL_60:
      v30 = v116;
      v11 = *(a1 + 28);
      if (v10 + 2 <= v11)
      {
        goto LABEL_66;
      }

      goto LABEL_61;
    }

    v82 = v63 + 1;
    while (v59 >= 0x10)
    {
      v84 = v59 & 0x7FFFFFF0;
      v85 = v82;
      v86 = v60 + 2;
      do
      {
        v88 = v86[-2];
        v87 = v86[-1];
        v90 = *v86;
        v89 = v86[1];
        v86 += 4;
        v85[-1] = vraddhn_high_s32(vraddhn_s32(v88, 0), v87, 0);
        *v85 = vraddhn_high_s32(vraddhn_s32(v90, 0), v89, 0);
        v85 += 2;
        v84 -= 16;
      }

      while (v84);
      if ((v59 & 0x7FFFFFF0) == v59)
      {
        goto LABEL_81;
      }

      v83 = v59 & 0x7FFFFFF0;
      v91 = v83;
      if ((v59 & 0xC) != 0)
      {
        goto LABEL_88;
      }

      do
      {
LABEL_91:
        v63->i16[v91] = (v60->i32[v91] + 0x8000) >> 16;
        ++v91;
      }

      while (v59 != v91);
LABEL_81:
      ++v62;
      v82 = (v82 + v61);
      v63 = (v63 + v61);
      if (v62 == v7)
      {
        goto LABEL_59;
      }
    }

    v83 = 0;
LABEL_88:
    v92 = (v60 + 4 * v83);
    v93 = v83 - (v59 & 0x7FFFFFFC);
    v94 = (v63 + 2 * v83);
    do
    {
      v95 = *v92++;
      *v94++ = vraddhn_s32(v95, 0);
      v93 += 4;
    }

    while (v93);
    v91 = v59 & 0x7FFFFFFC;
    if (v91 == v59)
    {
      goto LABEL_81;
    }

    goto LABEL_91;
  }

LABEL_11:
  if (v5 >= v8)
  {
    goto LABEL_60;
  }

LABEL_12:
  v5 = v5;
  v11 = *(a1 + 28);
  *&v12.f64[0] = 0x8000000080000000;
  *&v12.f64[1] = 0x8000000080000000;
  v13 = vnegq_f64(v12);
  v14 = vdupq_n_s64(0xFFFFFFFFFFFF8000);
  v113 = v8;
  v111 = v14;
  v112 = v13;
  do
  {
    v15 = v10;
    v16 = *(a1 + 72);
    v17 = v10 + 2;
    v10 = *(v16 + 4 * v5);
    if (v10 > v17)
    {
      v17 = *(v16 + 4 * v5);
    }

    v18 = v10 + 2;
    if (v11 < v10 + 2)
    {
      v18 = v11;
    }

    if (v17 < v18)
    {
      if (v15 + 2 <= v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = v15 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v19++);
        v10 = *(v16 + 4 * v5);
        v9 = (v9 & 1) == 0;
        v20 = v10 + 2;
        v11 = *(a1 + 28);
        if (v11 < v10 + 2)
        {
          v20 = *(a1 + 28);
        }
      }

      while (v19 < v20);
      v8 = v113;
      v14 = v111;
      v13 = v112;
    }

    v21 = v11 - 2;
    if (v10 <= v11 - 2)
    {
      v22 = v11 - 2;
    }

    else
    {
      v22 = v10;
    }

    v23 = v22 + v9;
    if (v15 > v21)
    {
      v21 = v15;
    }

    v24 = v23 - v21;
    v114 = 0;
    v115 = 0;
    if (v24 >= 0)
    {
      v9 = v24 & 1;
    }

    else
    {
      v9 = -(v24 & 1);
    }

    v25 = *(a1 + 88);
    if (v9 < 1)
    {
      v26 = 0;
      v28 = 0;
      v27 = &v115;
    }

    else
    {
      v26 = *(v25 + 8 * v5 + 4);
      v27 = &v114;
      v28 = 1;
    }

    v115 = v26;
    v29 = v25 + 4 * (2 * v5 - v9);
    *v27 = *(v29 + 4 * v28);
    if (v9 <= 0)
    {
      v114 = *(v29 + 4);
      v30 = v116;
      v31 = *(a1 + 56) * *(a1 + 48);
      if (v31 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v30 = v116;
      v31 = *(a1 + 56) * *(a1 + 48);
      if (v31 < 1)
      {
        goto LABEL_13;
      }
    }

    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = v114;
    v35 = v115;
    if (v31 >= 8)
    {
      v36 = v31 & 0x7FFFFFF8;
      v37 = (v32 + v33 * v5);
      v38 = vdupq_n_s32(v115);
      v39 = vdupq_n_s32(v114);
      v40 = v36;
      v41 = v30;
      do
      {
        v42 = v41[1];
        v43 = vmull_s32(*v38.i8, *v42.i8);
        v44 = *(v41 + 4 * v31);
        v45 = *(v41 + 4 * v31 + 16);
        v46 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v38, *v41), v39, v44), v13), 0x20uLL);
        v47 = vshrq_n_s64(vaddq_s64(vmlal_s32(vmull_s32(*v38.i8, *v41->i8), *v39.i8, *v44.i8), v13), 0x20uLL);
        v48 = vshrq_n_s64(vaddq_s64(vmlal_high_s32(vmull_high_s32(v38, v42), v39, v45), v13), 0x20uLL);
        v49 = vshrq_n_s64(vaddq_s64(vmlal_s32(v43, *v39.i8, *v45.i8), v13), 0x20uLL);
        v50 = vbslq_s8(vcgtq_s64(v49, v14), v49, v14);
        v51 = vbslq_s8(vcgtq_s64(v48, v14), v48, v14);
        v52 = vbslq_s8(vcgtq_s64(v47, v14), v47, v14);
        v53 = vbslq_s8(vcgtq_s64(v46, v14), v46, v14);
        v54 = vdupq_n_s64(0x7FFFuLL);
        *v37++ = vuzp1q_s16(vuzp1q_s32(vbslq_s8(vcgtq_s64(v54, v52), v52, v54), vbslq_s8(vcgtq_s64(v54, v53), v53, v54)), vuzp1q_s32(vbslq_s8(vcgtq_s64(v54, v50), v50, v54), vbslq_s8(vcgtq_s64(v54, v51), v51, v54)));
        v41 += 2;
        v40 -= 8;
      }

      while (v40);
      if (v36 == v31)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v36 = 0;
    }

    v55 = v31 - v36;
    v56 = (v32 + v33 * v5 + 2 * v36);
    v57 = &v30->i32[v36];
    do
    {
      v58 = (v57[v31] * v34 + *v57 * v35 + 0x80000000) >> 32;
      if (v58 <= -32768)
      {
        v58 = -32768;
      }

      if (v58 >= 0x7FFF)
      {
        LOWORD(v58) = 0x7FFF;
      }

      *v56++ = v58;
      ++v57;
      --v55;
    }

    while (v55);
LABEL_13:
    ++v5;
  }

  while (v8 != v5);
  LODWORD(v5) = v8;
  if (v10 + 2 <= v11)
  {
LABEL_66:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v11 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v30, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_67;
  }

LABEL_61:
  v68 = v9 + ~v10 + v11;
  if (v68 >= 0)
  {
    v69 = v68 & 1;
  }

  else
  {
    v69 = -(v68 & 1);
  }

  v30 = (v30 + 4 * *(a1 + 48) * v69 * *(a1 + 56));
LABEL_67:
  v70 = a2[1];
  if (v5 < v70)
  {
    v71 = (*(a1 + 56) * *(a1 + 48));
    if (v71 >= 1)
    {
      v73 = *(a1 + 32);
      v72 = *(a1 + 40);
      v74 = v5;
      if (v71 < 4)
      {
        v75 = (v73 + v72 * v5);
        do
        {
          v76 = v30;
          v77 = v75;
          v78 = v71;
          do
          {
            v79 = v76->i32[0];
            v76 = (v76 + 4);
            *v77++ = (v79 + 0x8000) >> 16;
            --v78;
          }

          while (v78);
          ++v74;
          v75 = (v75 + v72);
        }

        while (v74 != v70);
        goto LABEL_74;
      }

      v96 = (v73 + v72 * v5);
      v97 = v96 + 1;
      while (2)
      {
        if (v71 >= 0x10)
        {
          v99 = v71 & 0x7FFFFFF0;
          v100 = v97;
          v101 = v30 + 2;
          do
          {
            v103 = v101[-2];
            v102 = v101[-1];
            v105 = *v101;
            v104 = v101[1];
            v101 += 4;
            v100[-1] = vraddhn_high_s32(vraddhn_s32(v103, 0), v102, 0);
            *v100 = vraddhn_high_s32(vraddhn_s32(v105, 0), v104, 0);
            v100 += 2;
            v99 -= 16;
          }

          while (v99);
          if ((v71 & 0x7FFFFFF0) != v71)
          {
            v98 = v71 & 0x7FFFFFF0;
            i = v98;
            if ((v71 & 0xC) != 0)
            {
              goto LABEL_101;
            }

            goto LABEL_104;
          }
        }

        else
        {
          v98 = 0;
LABEL_101:
          v107 = (v30 + 4 * v98);
          v108 = v98 - (v71 & 0x7FFFFFFC);
          v109 = (v96 + 2 * v98);
          do
          {
            v110 = *v107++;
            *v109++ = vraddhn_s32(v110, 0);
            v108 += 4;
          }

          while (v108);
          for (i = v71 & 0x7FFFFFFC; v71 != i; ++i)
          {
LABEL_104:
            v96->i16[i] = (v30->i32[i] + 0x8000) >> 16;
          }
        }

        ++v74;
        v97 = (v97 + v72);
        v96 = (v96 + v72);
        if (v74 == v70)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_74:
  result = v116;
  if (v116 != v118 && v116 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_100359540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18 != v18)
  {
    if (a18)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_100359584(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t *a4, int64x2_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = *result << 32;
  if (a6 <= 3)
  {
    LODWORD(v9) = 0;
    v10 = a5;
LABEL_9:
    v14 = a6 - v9;
    do
    {
      *v10++ = v8;
      --v14;
    }

    while (v14);
    goto LABEL_11;
  }

  v9 = a6 & 0x7FFFFFFC;
  v10 = a5 + v9;
  v11 = vdupq_n_s64(v8);
  v12 = a5 + 1;
  v13 = v9;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 4;
  }

  while (v13);
  if (v9 != a6)
  {
    goto LABEL_9;
  }

LABEL_11:
  a4 += 2 * (a6 - 1) + 2;
  a5 = v10;
  if (a6 >= a7)
  {
    goto LABEL_15;
  }

LABEL_12:
  v15 = a7 - a6;
  v16 = (a3 + 4 * a6);
  do
  {
    v17 = *v16++;
    v18 = *a4;
    v19 = a4[1];
    a4 += 2;
    a5->i64[0] = v18 * result[v17] + v19 * result[v17 + 1];
    a5 = (a5 + 8);
    --v15;
  }

  while (v15);
  a6 = a7;
LABEL_15:
  if (a6 >= a8)
  {
    return result;
  }

  v20 = result[*(a3 + 4 * a8 - 4)] << 32;
  v21 = (~a6 + a8);
  if (v21 < 3)
  {
    v22 = a5;
LABEL_21:
    v28 = a8 - a6;
    do
    {
      *v22++ = v20;
      --v28;
    }

    while (v28);
    return result;
  }

  v23 = v21 + 1;
  v24 = (v21 + 1) & 0x1FFFFFFFCLL;
  a6 += v24;
  v22 = a5 + v24;
  v25 = vdupq_n_s64(v20);
  v26 = a5 + 1;
  v27 = v24;
  do
  {
    v26[-1] = v25;
    *v26 = v25;
    v26 += 2;
    v27 -= 4;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_21;
  }

  return result;
}

unsigned int *sub_1003596B8(unsigned int *result, unsigned int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = (a5 + 4);
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = (result + 4);
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v26 = (a5 + 4);
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = (result + 4);
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v26[-2] = v31;
              v26[-1] = _Q0;
              *v26 = v32;
              v26[1] = _Q1;
              v26 += 4;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = &result[8 * ((a2 >> 3) & 0xFFFFFFF)];
            v34 = a2 - v10;
            do
            {
              v35 = *v33++;
              *a5++ = v35 << 32;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v8 = *result << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_44;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v36 = a6;
  do
  {
    v37 = &result[*(a3 + 4 * v36) * a2];
    v38 = a2;
    do
    {
      v39 = *a4;
      if (*a4)
      {
        v39 *= *v37;
      }

      *a5 = v39;
      v40 = a4[1];
      if (v40)
      {
        v40 *= v37[a2];
      }

      *a5++ = v40 + v39;
      ++v37;
      --v38;
    }

    while (v38);
    ++v36;
    a4 += 2;
  }

  while (v36 < a7);
  a6 = a7;
LABEL_44:
  if (a2 >= 1)
  {
    v41 = a8 - a6;
    if (a8 > a6)
    {
      v42 = *(a3 + 4 * a8 - 4) * a2;
      if (a2 >= 8)
      {
        v45 = v42;
        v46 = a2 & 0x7FFFFFF8;
        v47 = &result[v45];
        v48 = (v47 + 4);
        v49 = &v47[8 * ((a2 >> 3) & 0xFFFFFFF)];
        do
        {
          v50 = (a5 + 4);
          a5 += v46;
          v51 = a2 & 0x7FFFFFF8;
          v52 = v48;
          do
          {
            _Q0 = *v52[-2].i8;
            _Q1 = *v52->i8;
            v55 = vshll_n_s32(*_Q0.i8, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v56 = vshll_n_s32(*v52, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            v50[-2] = v55;
            v50[-1] = _Q0;
            *v50 = v56;
            v50[1] = _Q1;
            v50 += 4;
            v52 += 4;
            v51 -= 8;
          }

          while (v51);
          if (a2 != v46)
          {
            v57 = v49;
            v58 = a2 - v46;
            do
            {
              v59 = *v57++;
              *a5++ = v59 << 32;
              --v58;
            }

            while (v58);
          }

          ++a6;
        }

        while (a6 != a8);
      }

      else
      {
        v43 = &result[v42];
        v44 = *v43 << 32;
        do
        {
          *a5 = v44;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = v43[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = v43[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = v43[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = v43[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = v43[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = v43[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v41;
        }

        while (v41);
      }
    }
  }

  return result;
}

int32x2_t *sub_100359A98(int32x2_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s32(*result, 0x20uLL);
    if (a6 > 3)
    {
      v9 = a6 & 0x7FFFFFFC;
      v10 = &a5[2 * v9];
      *&v11 = v8.i64[0];
      *(&v11 + 1) = vdupq_laneq_s64(v8, 1).u64[0];
      v12 = a5 + 4;
      v13 = v9;
      do
      {
        *(v12 - 2) = v11;
        *(v12 - 1) = v11;
        *v12 = v11;
        v12[1] = v11;
        v12 += 4;
        v13 -= 4;
      }

      while (v13);
      if (v9 == a6)
      {
LABEL_12:
        a4 += 2 * (a6 - 1) + 2;
        a5 = v10;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = a5;
    }

    v14 = a6 - v9;
    do
    {
      *v10++ = v8;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v15 = a7 - a6;
    v16 = (a3 + 4 * a6);
    do
    {
      v17 = *v16++;
      v18 = &result[v17];
      v19 = v18[1];
      v20 = *a4 * *v18;
      v22 = v18[2];
      v21 = v18[3];
      *a5 = v20 + a4[1] * v22;
      v23 = *a4;
      v24 = a4[1];
      a4 += 2;
      v25 = v23 * v19 + v24 * v21;
      v26 = a5 + 2;
      a5[1] = v25;
      a5 += 2;
      --v15;
    }

    while (v15);
    a5 = v26;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v27 = vshll_n_s32(result[*(a3 + 4 * a8 - 4)], 0x20uLL);
  v28 = (~a7 + a8);
  if (v28 < 3)
  {
    v29 = a5;
LABEL_21:
    v35 = a8 - a7;
    do
    {
      *v29++ = v27;
      --v35;
    }

    while (v35);
    return result;
  }

  v30 = v28 + 1;
  v31 = (v28 + 1) & 0x1FFFFFFFCLL;
  a7 += v31;
  v29 = &a5[2 * v31];
  *&v32 = v27.i64[0];
  *(&v32 + 1) = vdupq_laneq_s64(v27, 1).u64[0];
  v33 = a5 + 4;
  v34 = v31;
  do
  {
    *(v33 - 2) = v32;
    *(v33 - 1) = v32;
    *v33 = v32;
    v33[1] = v32;
    v33 += 4;
    v34 -= 4;
  }

  while (v34);
  if (v30 != v31)
  {
    goto LABEL_21;
  }

  return result;
}

unsigned int *sub_100359C04(unsigned int *result, unsigned int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = (a5 + 4);
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = (result + 4);
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v26 = (a5 + 4);
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = (result + 4);
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v26[-2] = v31;
              v26[-1] = _Q0;
              *v26 = v32;
              v26[1] = _Q1;
              v26 += 4;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = &result[8 * ((a2 >> 3) & 0xFFFFFFF)];
            v34 = a2 - v10;
            do
            {
              v35 = *v33++;
              *a5++ = v35 << 32;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v8 = *result << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_44;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v36 = a6;
  do
  {
    v37 = &result[*(a3 + 4 * v36) * a2];
    v38 = a2;
    do
    {
      v39 = *a4;
      if (*a4)
      {
        v39 *= *v37;
      }

      *a5 = v39;
      v40 = a4[1];
      if (v40)
      {
        v40 *= v37[a2];
      }

      *a5++ = v40 + v39;
      ++v37;
      --v38;
    }

    while (v38);
    ++v36;
    a4 += 2;
  }

  while (v36 < a7);
  a6 = a7;
LABEL_44:
  if (a2 >= 1)
  {
    v41 = a8 - a6;
    if (a8 > a6)
    {
      v42 = *(a3 + 4 * a8 - 4) * a2;
      if (a2 >= 8)
      {
        v45 = v42;
        v46 = a2 & 0x7FFFFFF8;
        v47 = &result[v45];
        v48 = (v47 + 4);
        v49 = &v47[8 * ((a2 >> 3) & 0xFFFFFFF)];
        do
        {
          v50 = (a5 + 4);
          a5 += v46;
          v51 = a2 & 0x7FFFFFF8;
          v52 = v48;
          do
          {
            _Q0 = *v52[-2].i8;
            _Q1 = *v52->i8;
            v55 = vshll_n_s32(*_Q0.i8, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v56 = vshll_n_s32(*v52, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            v50[-2] = v55;
            v50[-1] = _Q0;
            *v50 = v56;
            v50[1] = _Q1;
            v50 += 4;
            v52 += 4;
            v51 -= 8;
          }

          while (v51);
          if (a2 != v46)
          {
            v57 = v49;
            v58 = a2 - v46;
            do
            {
              v59 = *v57++;
              *a5++ = v59 << 32;
              --v58;
            }

            while (v58);
          }

          ++a6;
        }

        while (a6 != a8);
      }

      else
      {
        v43 = &result[v42];
        v44 = *v43 << 32;
        do
        {
          *a5 = v44;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = v43[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = v43[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = v43[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = v43[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = v43[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = v43[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v41;
        }

        while (v41);
      }
    }
  }

  return result;
}

int32x2_t *sub_100359FE4(int32x2_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, int64x2_t *a5, int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s32(*result, 0x20uLL);
    v9 = result[1].u32[0] << 32;
    if (a6 > 3)
    {
      v10 = a6 & 0x7FFFFFFC;
      v13 = vdupq_n_s64(v9);
      v14 = vzip2q_s64(v8, v13);
      v13.i64[1] = v8.i64[0];
      v11 = (a5 + 24 * v10);
      v12.i64[0] = v8.i64[0];
      v12.i64[1] = vextq_s8(v8, v8, 8uLL).u64[0];
      v13.i64[1] = vextq_s8(v13, v13, 8uLL).u64[0];
      v14.i64[1] = vextq_s8(v14, v14, 8uLL).u64[0];
      v15 = v10;
      do
      {
        *a5 = v12;
        a5[1] = v13;
        a5[2] = v14;
        a5[3] = v12;
        a5[4] = v13;
        a5[5] = v14;
        a5 += 6;
        v15 -= 4;
      }

      while (v15);
      if (v10 == a6)
      {
LABEL_12:
        a4 += 2 * (a6 - 1) + 2;
        a5 = v11;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a5;
    }

    v16 = a6 - v10;
    v17 = v11;
    do
    {
      *v17 = v8;
      v11 = (v17 + 24);
      v17[1].i64[0] = v9;
      v17 = (v17 + 24);
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v18 = a7 - a6;
    v19 = (a3 + 4 * a6);
    do
    {
      v20 = *v19++;
      v21 = result + 3 * v20;
      v22 = v21[1];
      v23 = v21[2];
      a5->i64[0] = *a4 * *v21 + a4[1] * v21[3];
      v25 = v21[4];
      v24 = v21[5];
      a5->i64[1] = *a4 * v22 + a4[1] * v25;
      v26 = *a4;
      v27 = a4[1];
      a4 += 2;
      v28 = v26 * v23 + v27 * v24;
      v29 = (a5 + 24);
      a5[1].i64[0] = v28;
      a5 = (a5 + 24);
      --v18;
    }

    while (v18);
    a5 = v29;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v30 = (result + 12 * *(a3 + 4 * a8 - 4));
  v31 = vshll_n_s32(*v30, 0x20uLL);
  v32 = v30[1].u32[0] << 32;
  v33 = (~a7 + a8);
  if (v33 < 3)
  {
    v34 = a5;
LABEL_21:
    v41 = a8 - a7;
    do
    {
      *v34 = v31;
      v34[1].i64[0] = v32;
      v34 = (v34 + 24);
      --v41;
    }

    while (v41);
    return result;
  }

  v35 = v33 + 1;
  v36 = (v33 + 1) & 0x1FFFFFFFCLL;
  a7 += v36;
  v38 = vdupq_n_s64(v32);
  v39 = vzip2q_s64(v31, v38);
  v38.i64[1] = v31.i64[0];
  v34 = (a5 + 24 * v36);
  v37.i64[0] = v31.i64[0];
  v37.i64[1] = vextq_s8(v31, v31, 8uLL).u64[0];
  v38.i64[1] = vextq_s8(v38, v38, 8uLL).u64[0];
  v39.i64[1] = vextq_s8(v39, v39, 8uLL).u64[0];
  v40 = v36;
  do
  {
    *a5 = v37;
    a5[1] = v38;
    a5[2] = v39;
    a5[3] = v37;
    a5[4] = v38;
    a5[5] = v39;
    a5 += 6;
    v40 -= 4;
  }

  while (v40);
  if (v35 != v36)
  {
    goto LABEL_21;
  }

  return result;
}

unsigned int *sub_10035A1E0(unsigned int *result, unsigned int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = (a5 + 4);
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = (result + 4);
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v26 = (a5 + 4);
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = (result + 4);
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v26[-2] = v31;
              v26[-1] = _Q0;
              *v26 = v32;
              v26[1] = _Q1;
              v26 += 4;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = &result[8 * ((a2 >> 3) & 0xFFFFFFF)];
            v34 = a2 - v10;
            do
            {
              v35 = *v33++;
              *a5++ = v35 << 32;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v8 = *result << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_44;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v36 = a6;
  do
  {
    v37 = &result[*(a3 + 4 * v36) * a2];
    v38 = a2;
    do
    {
      v39 = *a4;
      if (*a4)
      {
        v39 *= *v37;
      }

      *a5 = v39;
      v40 = a4[1];
      if (v40)
      {
        v40 *= v37[a2];
      }

      *a5++ = v40 + v39;
      ++v37;
      --v38;
    }

    while (v38);
    ++v36;
    a4 += 2;
  }

  while (v36 < a7);
  a6 = a7;
LABEL_44:
  if (a2 >= 1)
  {
    v41 = a8 - a6;
    if (a8 > a6)
    {
      v42 = *(a3 + 4 * a8 - 4) * a2;
      if (a2 >= 8)
      {
        v45 = v42;
        v46 = a2 & 0x7FFFFFF8;
        v47 = &result[v45];
        v48 = (v47 + 4);
        v49 = &v47[8 * ((a2 >> 3) & 0xFFFFFFF)];
        do
        {
          v50 = (a5 + 4);
          a5 += v46;
          v51 = a2 & 0x7FFFFFF8;
          v52 = v48;
          do
          {
            _Q0 = *v52[-2].i8;
            _Q1 = *v52->i8;
            v55 = vshll_n_s32(*_Q0.i8, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v56 = vshll_n_s32(*v52, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            v50[-2] = v55;
            v50[-1] = _Q0;
            *v50 = v56;
            v50[1] = _Q1;
            v50 += 4;
            v52 += 4;
            v51 -= 8;
          }

          while (v51);
          if (a2 != v46)
          {
            v57 = v49;
            v58 = a2 - v46;
            do
            {
              v59 = *v57++;
              *a5++ = v59 << 32;
              --v58;
            }

            while (v58);
          }

          ++a6;
        }

        while (a6 != a8);
      }

      else
      {
        v43 = &result[v42];
        v44 = *v43 << 32;
        do
        {
          *a5 = v44;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = v43[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = v43[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = v43[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = v43[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = v43[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = v43[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v41;
        }

        while (v41);
      }
    }
  }

  return result;
}

int32x2_t *sub_10035A5C0(int32x2_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, int64x2_t *a5, int a6, int a7, int a8)
{
  if (a6 >= 1)
  {
    v8 = vshll_n_s32(*result, 0x20uLL);
    v9 = vshll_n_s32(result[1], 0x20uLL);
    if (a6 > 3)
    {
      v10 = a6 & 0x7FFFFFFC;
      v11 = &a5[2 * v10];
      v12 = a5 + 4;
      v13 = v10;
      do
      {
        v12[-4] = v8;
        v12[-3] = v9;
        v12[-2] = v8;
        v12[-1] = v9;
        *v12 = v8;
        v12[1] = v9;
        v12[2] = v8;
        v12[3] = v9;
        v12 += 8;
        v13 -= 4;
      }

      while (v13);
      if (v10 == a6)
      {
LABEL_12:
        a4 += 2 * (a6 - 1) + 2;
        a5 = v11;
        if (a6 < a7)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = a5;
    }

    v14 = a6 - v10;
    v15 = v11;
    do
    {
      v11 = v15 + 2;
      *v15 = v8;
      v15[1] = v9;
      v15 += 2;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  a6 = 0;
  if (a7 > 0)
  {
LABEL_13:
    v16 = a7 - a6;
    v17 = (a3 + 4 * a6);
    do
    {
      v18 = *v17++;
      v19 = &result[2 * v18];
      v20 = v19[1];
      v21 = v19[5];
      a5->i64[0] = *a4 * *v19 + a4[1] * v19[4];
      a5->i64[1] = *a4 * v20 + a4[1] * v21;
      v22 = v19[3];
      v23 = *a4 * v19[2];
      v25 = v19[6];
      v24 = v19[7];
      a5[1].i64[0] = v23 + a4[1] * v25;
      v26 = *a4;
      v27 = a4[1];
      a4 += 2;
      v28 = v26 * v22 + v27 * v24;
      v29 = a5 + 2;
      a5[1].i64[1] = v28;
      a5 += 2;
      --v16;
    }

    while (v16);
    a5 = v29;
    if (a7 >= a8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_5:
  a7 = a6;
  if (a6 >= a8)
  {
    return result;
  }

LABEL_16:
  v30 = &result[2 * *(a3 + 4 * a8 - 4)];
  v31 = vshll_n_s32(*v30, 0x20uLL);
  v32 = vshll_n_s32(v30[1], 0x20uLL);
  v33 = (~a7 + a8);
  if (v33 < 3)
  {
    v34 = a5;
LABEL_21:
    v39 = a8 - a7;
    do
    {
      *v34 = v31;
      v34[1] = v32;
      v34 += 2;
      --v39;
    }

    while (v39);
    return result;
  }

  v35 = v33 + 1;
  v36 = (v33 + 1) & 0x1FFFFFFFCLL;
  a7 += v36;
  v34 = &a5[2 * v36];
  v37 = a5 + 4;
  v38 = v36;
  do
  {
    v37[-4] = v31;
    v37[-3] = v32;
    v37[-2] = v31;
    v37[-1] = v32;
    *v37 = v31;
    v37[1] = v32;
    v37[2] = v31;
    v37[3] = v32;
    v37 += 8;
    v38 -= 4;
  }

  while (v38);
  if (v35 != v36)
  {
    goto LABEL_21;
  }

  return result;
}

unsigned int *sub_10035A76C(unsigned int *result, unsigned int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, int a6, int a7, int a8)
{
  if (a6 < 1)
  {
    a6 = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = (a5 + 4);
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = (result + 4);
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          for (i = 0; i != a6; ++i)
          {
            v26 = (a5 + 4);
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = (result + 4);
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v26[-2] = v31;
              v26[-1] = _Q0;
              *v26 = v32;
              v26[1] = _Q1;
              v26 += 4;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = &result[8 * ((a2 >> 3) & 0xFFFFFFF)];
            v34 = a2 - v10;
            do
            {
              v35 = *v33++;
              *a5++ = v35 << 32;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v8 = *result << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_44;
    }
  }

  if (a2 < 1)
  {
    return result;
  }

  v36 = a6;
  do
  {
    v37 = &result[*(a3 + 4 * v36) * a2];
    v38 = a2;
    do
    {
      v39 = *a4;
      if (*a4)
      {
        v39 *= *v37;
      }

      *a5 = v39;
      v40 = a4[1];
      if (v40)
      {
        v40 *= v37[a2];
      }

      *a5++ = v40 + v39;
      ++v37;
      --v38;
    }

    while (v38);
    ++v36;
    a4 += 2;
  }

  while (v36 < a7);
  a6 = a7;
LABEL_44:
  if (a2 >= 1)
  {
    v41 = a8 - a6;
    if (a8 > a6)
    {
      v42 = *(a3 + 4 * a8 - 4) * a2;
      if (a2 >= 8)
      {
        v45 = v42;
        v46 = a2 & 0x7FFFFFF8;
        v47 = &result[v45];
        v48 = (v47 + 4);
        v49 = &v47[8 * ((a2 >> 3) & 0xFFFFFFF)];
        do
        {
          v50 = (a5 + 4);
          a5 += v46;
          v51 = a2 & 0x7FFFFFF8;
          v52 = v48;
          do
          {
            _Q0 = *v52[-2].i8;
            _Q1 = *v52->i8;
            v55 = vshll_n_s32(*_Q0.i8, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v56 = vshll_n_s32(*v52, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            v50[-2] = v55;
            v50[-1] = _Q0;
            *v50 = v56;
            v50[1] = _Q1;
            v50 += 4;
            v52 += 4;
            v51 -= 8;
          }

          while (v51);
          if (a2 != v46)
          {
            v57 = v49;
            v58 = a2 - v46;
            do
            {
              v59 = *v57++;
              *a5++ = v59 << 32;
              --v58;
            }

            while (v58);
          }

          ++a6;
        }

        while (a6 != a8);
      }

      else
      {
        v43 = &result[v42];
        v44 = *v43 << 32;
        do
        {
          *a5 = v44;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = v43[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = v43[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = v43[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = v43[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = v43[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = v43[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v41;
        }

        while (v41);
      }
    }
  }

  return result;
}

unsigned int *sub_10035AB4C(unsigned int *result, unsigned int a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 > 7)
      {
        v10 = a2 & 0x7FFFFFF8;
        v11 = 8 * v10;
        v12 = a2 - v10;
        if (a2 == v10)
        {
          v13 = (a5 + 4);
          do
          {
            a5 = (a5 + v11);
            v14 = v13;
            v15 = (result + 4);
            v16 = a2 & 0x7FFFFFF8;
            do
            {
              _Q0 = *v15[-2].i8;
              _Q1 = *v15->i8;
              v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v24 = vshll_n_s32(*v15, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v14[-2] = v19;
              v14[-1] = _Q0;
              *v14 = v24;
              v14[1] = _Q1;
              v14 += 4;
              v15 += 4;
              v16 -= 8;
            }

            while (v16);
            ++v12;
            v13 = (v13 + v11);
          }

          while (v12 != a6);
        }

        else
        {
          v25 = 0;
          do
          {
            v26 = (a5 + 4);
            a5 = (a5 + v11);
            v27 = a2 & 0x7FFFFFF8;
            v28 = (result + 4);
            do
            {
              _Q0 = *v28[-2].i8;
              _Q1 = *v28->i8;
              v31 = vshll_n_s32(*_Q0.i8, 0x20uLL);
              __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

              v32 = vshll_n_s32(*v28, 0x20uLL);
              __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

              v26[-2] = v31;
              v26[-1] = _Q0;
              *v26 = v32;
              v26[1] = _Q1;
              v26 += 4;
              v28 += 4;
              v27 -= 8;
            }

            while (v27);
            v33 = a2 - v10;
            v34 = &result[8 * ((a2 >> 3) & 0xFFFFFFF)];
            do
            {
              v35 = *v34++;
              *a5++ = v35 << 32;
              --v33;
            }

            while (v33);
            ++v25;
          }

          while (v25 != a6);
        }
      }

      else
      {
        v8 = *result << 32;
        v9 = a6;
        do
        {
          *a5 = v8;
          if (a2 == 1)
          {
            ++a5;
          }

          else
          {
            a5[1] = result[1] << 32;
            if (a2 == 2)
            {
              a5 += 2;
            }

            else
            {
              a5[2] = result[2] << 32;
              if (a2 == 3)
              {
                a5 += 3;
              }

              else
              {
                a5[3] = result[3] << 32;
                if (a2 == 4)
                {
                  a5 += 4;
                }

                else
                {
                  a5[4] = result[4] << 32;
                  if (a2 == 5)
                  {
                    a5 += 5;
                  }

                  else
                  {
                    a5[5] = result[5] << 32;
                    if (a2 == 6)
                    {
                      a5 += 6;
                    }

                    else
                    {
                      a5[6] = result[6] << 32;
                      a5 += 7;
                    }
                  }
                }
              }
            }
          }

          --v9;
        }

        while (v9);
      }
    }

    a4 += 2 * (a6 - 1) + 2;
    if (a6 >= a7)
    {
      goto LABEL_39;
    }
  }

  if (a2 < 1)
  {
    LODWORD(a6) = a7;
    v39 = a8 - a7;
    if (a8 <= a7)
    {
      return result;
    }

    goto LABEL_40;
  }

  a6 = a6;
  do
  {
    v36 = 0;
    v37 = &result[*(a3 + 4 * a6) * a2];
    do
    {
      v38 = *a4 * *v37;
      *a5 = v38;
      *a5++ = v38 + a4[1] * v37[a2];
      ++v37;
      v36 += 4;
    }

    while (4 * a2 != v36);
    ++a6;
    a4 += 2;
  }

  while (a6 < a7);
LABEL_39:
  v39 = a8 - a6;
  if (a8 <= a6)
  {
    return result;
  }

LABEL_40:
  if (a2 >= 1)
  {
    v40 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 8)
    {
      v43 = v40;
      v44 = a2 & 0x7FFFFFF8;
      v45 = &result[v43];
      v46 = (v45 + 4);
      v47 = &v45[8 * ((a2 >> 3) & 0xFFFFFFF)];
      do
      {
        v48 = (a5 + 4);
        a5 += v44;
        v49 = a2 & 0x7FFFFFF8;
        v50 = v46;
        do
        {
          _Q0 = *v50[-2].i8;
          _Q1 = *v50->i8;
          v53 = vshll_n_s32(*_Q0.i8, 0x20uLL);
          __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

          v54 = vshll_n_s32(*v50, 0x20uLL);
          __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

          v48[-2] = v53;
          v48[-1] = _Q0;
          *v48 = v54;
          v48[1] = _Q1;
          v48 += 4;
          v50 += 4;
          v49 -= 8;
        }

        while (v49);
        if (a2 != v44)
        {
          v55 = a2 - v44;
          v56 = v47;
          do
          {
            v57 = *v56++;
            *a5++ = v57 << 32;
            --v55;
          }

          while (v55);
        }

        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }

    else
    {
      v41 = &result[v40];
      v42 = *v41 << 32;
      do
      {
        *a5 = v42;
        if (a2 == 1)
        {
          ++a5;
        }

        else
        {
          a5[1] = v41[1] << 32;
          if (a2 == 2)
          {
            a5 += 2;
          }

          else
          {
            a5[2] = v41[2] << 32;
            if (a2 == 3)
            {
              a5 += 3;
            }

            else
            {
              a5[3] = v41[3] << 32;
              if (a2 == 4)
              {
                a5 += 4;
              }

              else
              {
                a5[4] = v41[4] << 32;
                if (a2 == 5)
                {
                  a5 += 5;
                }

                else
                {
                  a5[5] = v41[5] << 32;
                  if (a2 == 6)
                  {
                    a5 += 6;
                  }

                  else
                  {
                    a5[6] = v41[6] << 32;
                    a5 += 7;
                  }
                }
              }
            }
          }
        }

        --v39;
      }

      while (v39);
    }
  }

  return result;
}

unsigned int *sub_10035AF20(unsigned int *result, unsigned int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t a6, int a7, int a8)
{
  if (a6 < 1)
  {
    LODWORD(a6) = 0;
    if (a7 <= 0)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  if (a2 > 0)
  {
    if (a2 > 7)
    {
      v10 = a2 & 0x7FFFFFF8;
      v11 = 8 * v10;
      v12 = a2 - v10;
      if (a2 == v10)
      {
        v13 = (a5 + 4);
        do
        {
          a5 = (a5 + v11);
          v14 = v13;
          v15 = (result + 4);
          v16 = a2 & 0x7FFFFFF8;
          do
          {
            _Q0 = *v15[-2].i8;
            _Q1 = *v15->i8;
            v19 = vshll_n_s32(*_Q0.i8, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v24 = vshll_n_s32(*v15, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            v14[-2] = v19;
            v14[-1] = _Q0;
            *v14 = v24;
            v14[1] = _Q1;
            v14 += 4;
            v15 += 4;
            v16 -= 8;
          }

          while (v16);
          ++v12;
          v13 = (v13 + v11);
        }

        while (v12 != a6);
      }

      else
      {
        v25 = 0;
        do
        {
          v26 = (a5 + 4);
          a5 = (a5 + v11);
          v27 = a2 & 0x7FFFFFF8;
          v28 = (result + 4);
          do
          {
            _Q0 = *v28[-2].i8;
            _Q1 = *v28->i8;
            v31 = vshll_n_s32(*_Q0.i8, 0x20uLL);
            __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

            v32 = vshll_n_s32(*v28, 0x20uLL);
            __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

            v26[-2] = v31;
            v26[-1] = _Q0;
            *v26 = v32;
            v26[1] = _Q1;
            v26 += 4;
            v28 += 4;
            v27 -= 8;
          }

          while (v27);
          v33 = a2 - v10;
          v34 = &result[8 * ((a2 >> 3) & 0xFFFFFFF)];
          do
          {
            v35 = *v34++;
            *a5++ = v35 << 32;
            --v33;
          }

          while (v33);
          ++v25;
        }

        while (v25 != a6);
      }
    }

    else
    {
      v8 = *result << 32;
      v9 = a6;
      do
      {
        *a5 = v8;
        if (a2 == 1)
        {
          ++a5;
        }

        else
        {
          a5[1] = result[1] << 32;
          if (a2 == 2)
          {
            a5 += 2;
          }

          else
          {
            a5[2] = result[2] << 32;
            if (a2 == 3)
            {
              a5 += 3;
            }

            else
            {
              a5[3] = result[3] << 32;
              if (a2 == 4)
              {
                a5 += 4;
              }

              else
              {
                a5[4] = result[4] << 32;
                if (a2 == 5)
                {
                  a5 += 5;
                }

                else
                {
                  a5[5] = result[5] << 32;
                  if (a2 == 6)
                  {
                    a5 += 6;
                  }

                  else
                  {
                    a5[6] = result[6] << 32;
                    a5 += 7;
                  }
                }
              }
            }
          }
        }

        --v9;
      }

      while (v9);
    }
  }

  a4 += 2 * (a6 - 1) + 2;
  if (a6 < a7)
  {
LABEL_34:
    if (a2 < 1)
    {
      LODWORD(a6) = a7;
    }

    else
    {
      a6 = a6;
      do
      {
        v36 = 0;
        v37 = &result[*(a3 + 4 * a6) * a2];
        do
        {
          v38 = *a4;
          if (*a4)
          {
            v38 *= *v37;
          }

          *a5 = v38;
          v39 = a4[1];
          if (v39)
          {
            v39 *= v37[a2];
          }

          *a5++ = v39 + v38;
          ++v37;
          v36 += 4;
        }

        while (4 * a2 != v36);
        ++a6;
        a4 += 2;
      }

      while (a6 < a7);
    }
  }

LABEL_44:
  v40 = a8 - a6;
  if (a8 > a6 && a2 >= 1)
  {
    v41 = *(a3 + 4 * a8 - 4) * a2;
    if (a2 >= 8)
    {
      v44 = v41;
      v45 = a2 & 0x7FFFFFF8;
      v46 = &result[v44];
      v47 = (v46 + 4);
      v48 = &v46[8 * ((a2 >> 3) & 0xFFFFFFF)];
      do
      {
        v49 = (a5 + 4);
        a5 += v45;
        v50 = a2 & 0x7FFFFFF8;
        v51 = v47;
        do
        {
          _Q0 = *v51[-2].i8;
          _Q1 = *v51->i8;
          v54 = vshll_n_s32(*_Q0.i8, 0x20uLL);
          __asm { SHLL2           V0.2D, V0.4S, #0x20 ; ' ' }

          v55 = vshll_n_s32(*v51, 0x20uLL);
          __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

          v49[-2] = v54;
          v49[-1] = _Q0;
          *v49 = v55;
          v49[1] = _Q1;
          v49 += 4;
          v51 += 4;
          v50 -= 8;
        }

        while (v50);
        if (a2 != v45)
        {
          v56 = a2 - v45;
          v57 = v48;
          do
          {
            v58 = *v57++;
            *a5++ = v58 << 32;
            --v56;
          }

          while (v56);
        }

        LODWORD(a6) = a6 + 1;
      }

      while (a6 != a8);
    }

    else
    {
      v42 = &result[v41];
      v43 = *v42 << 32;
      do
      {
        *a5 = v43;
        if (a2 == 1)
        {
          ++a5;
        }

        else
        {
          a5[1] = v42[1] << 32;
          if (a2 == 2)
          {
            a5 += 2;
          }

          else
          {
            a5[2] = v42[2] << 32;
            if (a2 == 3)
            {
              a5 += 3;
            }

            else
            {
              a5[3] = v42[3] << 32;
              if (a2 == 4)
              {
                a5 += 4;
              }

              else
              {
                a5[4] = v42[4] << 32;
                if (a2 == 5)
                {
                  a5 += 5;
                }

                else
                {
                  a5[5] = v42[5] << 32;
                  if (a2 == 6)
                  {
                    a5 += 6;
                  }

                  else
                  {
                    a5[6] = v42[6] << 32;
                    a5 += 7;
                  }
                }
              }
            }
          }
        }

        --v40;
      }

      while (v40);
    }
  }

  return result;
}

uint64_t sub_10035B304(uint64_t a1, int a2, unsigned int *a3, void *a4)
{
  sub_10029DA40(&v15, a2);
  v14 = 0x3FE0000000000000;
  sub_10029DFB4(&v15, &v14, &v17);
  sub_10029E004(a1, &v17, &v18);
  v13 = 0x3FE0000000000000;
  sub_10029DFDC(&v18, &v13, &v16);
  result = sub_10029DD18(&v16);
  if ((result & 0x80000000) != 0 || (v9 = *(a1 + 8), v9 < 2))
  {
    if (*(a1 + 12) <= a2 + 1)
    {
      v11 = a2 + 1;
    }

    else
    {
      v11 = *(a1 + 12);
    }

    *(a1 + 12) = v11;
  }

  else
  {
    v10 = v9 - 1;
    if (result >= v10)
    {
      *a3 = v10;
      v12 = *(a1 + 16);
      if (v12 >= a2)
      {
        v12 = a2;
      }

      *(a1 + 16) = v12;
    }

    else
    {
      *a3 = result;
      sub_10029DA40(&v14, result);
      sub_10029DFDC(&v16, &v14, &v15);
      sub_10029DAC0(&v17, &_mh_execute_header);
      sub_10029E004(&v15, &v17, &v18);
      result = sub_10029DDC8(&v18);
      *a4 = &_mh_execute_header - result;
      a4[1] = result;
    }
  }

  return result;
}

void sub_10035B45C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

int64x2_t *sub_10035B494(uint64_t a1, int *a2)
{
  v4 = 2 * *(a1 + 48) * *(a1 + 56);
  bzero(v119, 0x440uLL);
  v117 = v119;
  v118 = v4;
  if (v4 >= 0x89)
  {
    operator new[]();
  }

  v5 = *a2;
  v6 = *(a1 + 104);
  if (v6 <= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *(a1 + 104);
  }

  if (a2[1] >= *(a1 + 108))
  {
    v8 = *(a1 + 108);
  }

  else
  {
    v8 = a2[1];
  }

  if (v5 >= v6)
  {
    v9 = 0;
    v10 = -2;
    if (v5 >= v7)
    {
LABEL_11:
      if (v5 >= v8)
      {
        goto LABEL_86;
      }

      goto LABEL_12;
    }
  }

  else
  {
    (*(a1 + 112))(*(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 80), v119, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    v5 = *a2;
    v9 = 1;
    v10 = -1;
    if (*a2 >= v7)
    {
      goto LABEL_11;
    }
  }

  v72 = v117;
  v73 = *(a1 + 40);
  v74 = v5;
  v75 = v117 + 2;
  v76 = (*(a1 + 32) + v73 * v5);
  v77 = v76 + 1;
  do
  {
    v78 = (*(a1 + 56) * *(a1 + 48));
    if (v78 < 1)
    {
      goto LABEL_75;
    }

    if (v78 < 8)
    {
      v79 = 0;
LABEL_82:
      v87 = v78 - v79;
      v88 = &v76->i32[v79];
      v89 = &v72->i64[v79];
      do
      {
        v90 = *v89++;
        *v88++ = (v90 + 0x80000000) >> 32;
        --v87;
      }

      while (v87);
      goto LABEL_75;
    }

    v79 = v78 & 0x7FFFFFF8;
    v80 = v79;
    v81 = v77;
    v82 = v75;
    do
    {
      v84 = v82[-2];
      v83 = v82[-1];
      v86 = *v82;
      v85 = v82[1];
      v82 += 4;
      v81[-1] = vraddhn_high_s64(vraddhn_s64(v84, 0), v83, 0);
      *v81 = vraddhn_high_s64(vraddhn_s64(v86, 0), v85, 0);
      v81 += 2;
      v80 -= 8;
    }

    while (v80);
    if (v79 != v78)
    {
      goto LABEL_82;
    }

LABEL_75:
    ++v74;
    v77 = (v77 + v73);
    v76 = (v76 + v73);
  }

  while (v74 != v7);
  v5 = v7;
  if (v7 >= v8)
  {
LABEL_86:
    v28 = v117;
    v91 = *(a1 + 28);
    if (v10 + 2 <= v91)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

LABEL_12:
  v11 = v5;
  while (2)
  {
    v12 = *(a1 + 72);
    v13 = *(v12 + 4 * v11);
    if (v13 <= v10 + 2)
    {
      v14 = v10 + 2;
    }

    else
    {
      v14 = *(v12 + 4 * v11);
    }

    v15 = v13 + 2;
    v16 = *(a1 + 28);
    if (v16 < v13 + 2)
    {
      v15 = *(a1 + 28);
    }

    if (v14 < v15)
    {
      if (v10 + 2 <= v13)
      {
        v17 = v13;
      }

      else
      {
        v17 = v10 + 2;
      }

      do
      {
        (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * v17++);
        v13 = *(v12 + 4 * v11);
        v9 = (v9 & 1) == 0;
        v18 = v13 + 2;
        v16 = *(a1 + 28);
        if (v16 < v13 + 2)
        {
          v18 = *(a1 + 28);
        }
      }

      while (v17 < v18);
    }

    v19 = v16 - 2;
    if (v13 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v13;
    }

    v21 = v20 + v9;
    if (v10 > v19)
    {
      v19 = v10;
    }

    v22 = v21 - v19;
    v115 = 0;
    if (v22 >= 0)
    {
      v9 = v22 & 1;
    }

    else
    {
      v9 = -(v22 & 1);
    }

    v23 = *(a1 + 88);
    if (v9 < 1)
    {
      v24 = 0;
      v26 = 0;
      v25 = &v116;
    }

    else
    {
      v24 = *(v23 + 16 * v11 + 8);
      v25 = &v115;
      v26 = 1;
    }

    v116 = v24;
    v27 = v23 + 8 * (2 * v11 - v9);
    *v25 = *(v27 + 8 * v26);
    if (v9 <= 0)
    {
      v115 = *(v27 + 8);
      v28 = v117;
      v29 = *(a1 + 56) * *(a1 + 48);
      if (v29 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v28 = v117;
      v29 = *(a1 + 56) * *(a1 + 48);
      if (v29 < 1)
      {
        goto LABEL_13;
      }
    }

    v30 = v116 >> 63;
    if (v116 >= 0)
    {
      v31 = v116;
    }

    else
    {
      v31 = -v116;
    }

    v32 = v31;
    v33 = HIDWORD(v31);
    v34 = v115 >> 63;
    if (v115 >= 0)
    {
      v35 = v115;
    }

    else
    {
      v35 = -v115;
    }

    v36 = v35;
    v37 = HIDWORD(v35);
    v38 = v29;
    v39 = (*(a1 + 32) + *(a1 + 40) * v11);
    v40 = v28;
    do
    {
      v41 = *v40;
      if (*v40 >= 0)
      {
        v42 = *v40;
      }

      else
      {
        v42 = -v41;
      }

      v43 = v42;
      v44 = v42 * v32 + 0x80000000;
      v45 = HIDWORD(v42);
      v46 = v45 * v32;
      v47 = v43 * v33;
      v48 = v46 + v47 + HIDWORD(v44);
      v49 = HIDWORD(v46) + v45 * v33 + HIDWORD(v47) + HIDWORD(v48);
      v50 = v48;
      v51 = -v48;
      if (v48)
      {
        v52 = ~v49;
      }

      else
      {
        v52 = -v49;
      }

      v53 = v30 == v41 >> 63;
      if (v30 == v41 >> 63)
      {
        v54 = v50;
      }

      else
      {
        v54 = v51;
      }

      if (!v53)
      {
        v49 = v52;
      }

      v55 = v40[v29];
      if (v55 >= 0)
      {
        v56 = v40[v29];
      }

      else
      {
        v56 = -v55;
      }

      v57 = v56;
      v58 = v56 * v36 + 0x80000000;
      v59 = HIDWORD(v56);
      v60 = v59 * v36;
      v61 = v57 * v37;
      v62 = v60 + v61 + HIDWORD(v58);
      v63 = v49 << 32;
      v64 = HIDWORD(v60) + v59 * v37 + HIDWORD(v61) + HIDWORD(v62);
      v65 = v62;
      v66 = -v62;
      if (v62)
      {
        LODWORD(v67) = ~v64;
      }

      else
      {
        v67 = -v64;
      }

      v68 = v34 == v55 >> 63;
      if (v34 == v55 >> 63)
      {
        v69 = v65;
      }

      else
      {
        v69 = v66;
      }

      v70 = v54 + v63 + v69 + 0x80000000;
      if (v68)
      {
        v71 = v64;
      }

      else
      {
        v71 = v67;
      }

      *v39++ = HIDWORD(v70) + v71;
      ++v40;
      --v38;
    }

    while (v38);
LABEL_13:
    ++v11;
    v10 = v13;
    if (v8 != v11)
    {
      continue;
    }

    break;
  }

  v10 = v13;
  v5 = v8;
  v94 = v13 + 2;
  v91 = *(a1 + 28);
  if (v94 <= v91)
  {
LABEL_92:
    (*(a1 + 112))(*(a1 + 8) + *(a1 + 16) * (v91 - 1), *(a1 + 56), *(a1 + 64), *(a1 + 80), v28, *(a1 + 96), *(a1 + 100), *(a1 + 48));
    goto LABEL_93;
  }

LABEL_87:
  v92 = v9 + ~v10 + v91;
  if (v92 >= 0)
  {
    v93 = v92 & 1;
  }

  else
  {
    v93 = -(v92 & 1);
  }

  v28 = (v28 + 8 * *(a1 + 48) * v93 * *(a1 + 56));
LABEL_93:
  v95 = a2[1];
  if (v5 < v95)
  {
    v96 = *(a1 + 40);
    v97 = v5;
    v98 = (*(a1 + 32) + v96 * v5);
    v99 = v98 + 1;
    while (2)
    {
      v100 = (*(a1 + 56) * *(a1 + 48));
      if (v100 < 1)
      {
        goto LABEL_96;
      }

      if (v100 < 8)
      {
        v101 = 0;
        goto LABEL_103;
      }

      v101 = v100 & 0x7FFFFFF8;
      v102 = v101;
      v103 = v99;
      v104 = v28 + 2;
      do
      {
        v106 = v104[-2];
        v105 = v104[-1];
        v108 = *v104;
        v107 = v104[1];
        v104 += 4;
        v103[-1] = vraddhn_high_s64(vraddhn_s64(v106, 0), v105, 0);
        *v103 = vraddhn_high_s64(vraddhn_s64(v108, 0), v107, 0);
        v103 += 2;
        v102 -= 8;
      }

      while (v102);
      if (v101 != v100)
      {
LABEL_103:
        v109 = v100 - v101;
        v110 = &v98->i32[v101];
        v111 = &v28->i64[v101];
        do
        {
          v112 = *v111++;
          *v110++ = (v112 + 0x80000000) >> 32;
          --v109;
        }

        while (v109);
      }

      v95 = a2[1];
LABEL_96:
      ++v97;
      v99 = (v99 + v96);
      v98 = (v98 + v96);
      if (v97 >= v95)
      {
        break;
      }

      continue;
    }
  }

  result = v117;
  if (v117 != v119 && v117 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_10035BA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

void sub_10035BADC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002ACE7C(v92, &off_10047AB68);
  *v88 = 1124007936;
  memset(&v88[4], 0, 60);
  v89 = &v88[8];
  v90 = v91;
  v91[0] = 0;
  v91[1] = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  LODWORD(v95[0]) = 33619968;
  *(&v95[0] + 1) = v88;
  *&v95[1] = 0;
  sub_1002EF584(a1, v95, 1, 1);
  if ((v88[0] & 7) == 5)
  {
    goto LABEL_23;
  }

  LODWORD(v95[0]) = 1124007936;
  memset(v95 + 4, 0, 60);
  v96 = v95 + 8;
  v97 = v98;
  v98[0] = 0;
  v98[1] = 0;
  LODWORD(v99) = 33619968;
  v100 = v95;
  v101 = 0;
  sub_10020EF14(v88, &v99, 5, 1.0, 0.0);
  if (*(&v95[3] + 1))
  {
    atomic_fetch_add((*(&v95[3] + 1) + 20), 1u);
  }

  if (*&v88[56] && atomic_fetch_add((*&v88[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v88);
  }

  *&v88[56] = 0;
  memset(&v88[16], 0, 32);
  if (*v88 <= 0)
  {
    v6 = DWORD1(v95[0]);
    *v88 = v95[0];
    if (SDWORD1(v95[0]) <= 2)
    {
LABEL_12:
      *&v88[4] = v6;
      *&v88[8] = *(&v95[0] + 1);
      v7 = v97;
      v8 = v90;
      *v90 = *v97;
      v8[1] = v7[1];
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
    v5 = v89;
    do
    {
      *&v5[4 * v4++] = 0;
    }

    while (v4 < *&v88[4]);
    *v88 = v95[0];
    if (*&v88[4] <= 2)
    {
      v6 = DWORD1(v95[0]);
      if (SDWORD1(v95[0]) <= 2)
      {
        goto LABEL_12;
      }
    }
  }

  sub_100269B58(v88, v95);
LABEL_15:
  *&v88[16] = v95[1];
  *&v88[32] = v95[2];
  *&v88[48] = v95[3];
  if (*(&v95[3] + 1) && atomic_fetch_add((*(&v95[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v95);
  }

  *(&v95[3] + 1) = 0;
  memset(&v95[1], 0, 32);
  if (SDWORD1(v95[0]) >= 1)
  {
    v9 = 0;
    v10 = v96;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < SDWORD1(v95[0]));
  }

  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_23:
  v11 = sub_10026F620(v88, 2, -1, 1);
  v12 = v11;
  v13 = *&v88[16];
  if (v11 >= 3)
  {
    *&v95[0] = &v95[1];
    *(&v95[0] + 1) = 3 * v11;
    if (v11 >= 0x59)
    {
      operator new[]();
    }

    v14 = 0;
    LODWORD(v15) = 0;
    v16 = 0;
    LODWORD(v17) = 0;
    LODWORD(v18) = 0;
    v19 = &v95[1] + 4 * v11;
    v99 = -1;
    v100 = -1;
    v21 = **&v88[16];
    v20 = *(*&v88[16] + 4);
    v22 = (v19 + 4);
    v23 = &v95[1];
    v24 = **&v88[16];
    v25 = v20;
    v26 = v20;
    v27 = **&v88[16];
    do
    {
      if (v27 < v21)
      {
        v21 = v27;
        LODWORD(v15) = v14;
      }

      if (v27 > v24)
      {
        v24 = v27;
        LODWORD(v17) = v14;
      }

      if (v26 > v20)
      {
        v20 = v26;
        LODWORD(v18) = v14;
      }

      if (v26 < v25)
      {
        v25 = v26;
        v16 = v14;
      }

      v28 = ++v14;
      if (v14 >= v11)
      {
        v28 = 0;
      }

      v29 = (v13 + 8 * v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = *v29 - v27;
      v33 = v31 - v26;
      *(v22 - 1) = v32;
      *v22 = v33;
      v34 = 1.0 / sqrt(v33 * v33 + v32 * v32);
      *v23++ = v34;
      v22 += 2;
      v26 = v31;
      v27 = v30;
    }

    while (v11 != v14);
    v35 = vcvtq_f64_f32(*&v19[8 * v11 - 8]);
    v36 = (&v95[1] + 4 * v11);
    v37 = v11;
    while (1)
    {
      v38 = v35;
      v35 = vcvtq_f64_f32(*v36);
      v39 = -v38.f64[1] * v35.f64[0] + v38.f64[0] * v35.f64[1];
      if (v39 != 0.0)
      {
        break;
      }

      ++v36;
      if (!--v37)
      {
        v94[0] = 0;
        v94[1] = 0;
        *sub_1002A80E0(v94, 16) = *"orientation != 0";
        sub_1002A8980(-215, v94, "rotatingCalipers", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/rotcalipers.cpp", 166);
      }
    }

    if (v39 <= 0.0)
    {
      v48 = -1.0;
    }

    else
    {
      v48 = 1.0;
    }

    v49 = 0;
    v50 = 0;
    v99 = __PAIR64__(v17, v16);
    v100 = __PAIR64__(v15, v18);
    v51 = 0.0;
    v52 = 3.4028e38;
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    do
    {
      v57 = (v51 * *&v19[8 * v16 + 4]) + (v48 * *&v19[8 * v16]);
      v58 = (v48 * *&v19[8 * v17 + 4]) - (v51 * *&v19[8 * v17]);
      v59 = -(v51 * *&v19[8 * v18 + 4]) - (v48 * *&v19[8 * v18]);
      v60 = (v51 * *&v19[8 * v15]) - (v48 * *&v19[8 * v15 + 4]);
      v61 = v57 * *(&v95[1] + v16);
      v62 = v58 * *(&v95[1] + v17);
      v63 = v62 > v61;
      v64 = *(&v95[1] + v18);
      if (v62 > v61)
      {
        v61 = v62;
      }

      if ((v59 * v64) > v61)
      {
        v61 = v59 * v64;
        v63 = 2;
      }

      if ((v60 * *(&v95[1] + v15)) > v61)
      {
        v63 = 3;
      }

      v65 = *(&v99 + v63);
      v66 = &v19[8 * v65];
      v67 = *(&v95[1] + v65);
      v68 = *v66 * v67;
      v48 = v67 * v66[1];
      v69 = -v68;
      v70 = -v48;
      if (v63 == 2)
      {
        v71 = -v48;
      }

      else
      {
        v71 = v68;
      }

      if (v63 == 2)
      {
        v70 = -v68;
      }

      if (!v63)
      {
        v69 = v48;
        v48 = v68;
      }

      if (v63 <= 1)
      {
        v51 = v69;
      }

      else
      {
        v51 = v71;
      }

      if (v63 > 1)
      {
        v48 = v70;
      }

      if (v65 + 1 == v11)
      {
        v72 = 0;
      }

      else
      {
        v72 = v65 + 1;
      }

      *(&v99 + v63) = v72;
      v16 = v99;
      v17 = SHIDWORD(v99);
      v18 = v100;
      v15 = SHIDWORD(v100);
      v73 = (v51 * (*(v13 + 8 * v17 + 4) - *(v13 + 8 * v15 + 4))) + ((*(v13 + 8 * v17) - *(v13 + 8 * v15)) * v48);
      v74 = (v13 + 8 * v99);
      v75 = (v48 * (*(v13 + 8 * v18 + 4) - v74[1])) - ((*(v13 + 8 * v18) - *v74) * v51);
      if ((v73 * v75) <= v52)
      {
        v56 = v48;
        v55 = (v51 * (*(v13 + 8 * SHIDWORD(v99) + 4) - *(v13 + 8 * SHIDWORD(v100) + 4))) + ((*(v13 + 8 * SHIDWORD(v99)) - *(v13 + 8 * SHIDWORD(v100))) * v48);
        v54 = v51;
        v53 = (v48 * (*(v13 + 8 * v100 + 4) - v74[1])) - ((*(v13 + 8 * v100) - *v74) * v51);
        v50 = v99;
        v49 = HIDWORD(v100);
        v52 = v73 * v75;
      }

      --v12;
    }

    while (v12);
    v76 = (v54 * *(v13 + 8 * v49 + 4)) + (v56 * *(v13 + 8 * v49));
    v77 = (v56 * *(v13 + 8 * v50 + 4)) - (v54 * *(v13 + 8 * v50));
    v78 = 1.0 / ((v54 * v54) + (v56 * v56));
    v79 = v56 * v55;
    v80 = v55 * v54;
    v81 = -(v54 * v53);
    v82 = v56 * v53;
    if (*&v95[0] != &v95[1] && *&v95[0])
    {
      operator delete[]();
    }

    *a2 = (v78 * ((v76 * v56) - (v77 * v54))) + ((v79 - (v54 * v53)) * 0.5);
    *(a2 + 4) = (v78 * ((v54 * v76) + (v56 * v77))) + ((v80 + v82) * 0.5);
    v83 = sqrt(v80 * v80 + v79 * v79);
    v84 = sqrt(v82 * v82 + v81 * v81);
    *(a2 + 8) = v83;
    *(a2 + 12) = v84;
    v46 = atan2(v80, v79);
    v47 = 16;
    goto LABEL_78;
  }

  if (v11 == 1)
  {
    v46 = *(*&v88[16] + 4);
    *a2 = **&v88[16];
    v47 = 4;
    goto LABEL_78;
  }

  if (v11 == 2)
  {
    v40 = **&v88[16];
    v41 = *(*&v88[16] + 8);
    *a2 = vmul_f32(vadd_f32(**&v88[16], v41), 0x3F0000003F000000);
    v42 = vsub_f32(v41, v40);
    v43 = v42.f32[0];
    v44 = v42.f32[1];
    v45 = sqrt(v44 * v44 + v43 * v43);
    *(a2 + 8) = v45;
    *(a2 + 12) = 0;
    v46 = atan2(v44, v43);
    v47 = 16;
LABEL_78:
    *(a2 + v47) = v46;
  }

  v85 = (*(a2 + 16) * 180.0) / 3.14159265;
  *(a2 + 16) = v85;
  if (*&v88[56] && atomic_fetch_add((*&v88[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v88);
  }

  *&v88[56] = 0;
  memset(&v88[16], 0, 32);
  if (*&v88[4] >= 1)
  {
    v86 = 0;
    v87 = v89;
    do
    {
      *&v87[4 * v86++] = 0;
    }

    while (v86 < *&v88[4]);
  }

  if (v90 != v91)
  {
    j__free(v90);
  }

  if (v93)
  {
    sub_1002ACC1C(v92);
  }
}

void sub_10035C2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035C3AC(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  sub_1002ACE7C(v20, &off_10047AB88);
  if (sub_100271148(a1) == 0x10000)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(v4 + 16);
    v12 = *v4;
    v13 = v6;
    v14 = *(v4 + 32);
    v7 = *(v4 + 56);
    v15 = *(v4 + 48);
    v16 = v7;
    v17 = &v12 + 8;
    v18 = v19;
    v19[0] = 0;
    v19[1] = 0;
    if (v7)
    {
      atomic_fetch_add((v7 + 20), 1u);
      if (*(v4 + 4) <= 2)
      {
LABEL_4:
        v8 = *(v4 + 72);
        v9 = v18;
        *v18 = *v8;
        v9[1] = v8[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v5) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v12) = 0;
    sub_100269B58(&v12, v4);
  }

  else
  {
    sub_1002703C0(a1, -1, &v12);
  }

LABEL_8:
  if ((v12 & 7) != 0)
  {
    sub_10035C8B4(a2, &v12);
  }

  else
  {
    sub_10035C56C(a2, &v12);
  }

  if (v16 && atomic_fetch_add((v16 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v12);
  }

  v16 = 0;
  v13 = 0u;
  v14 = 0u;
  if (SDWORD1(v12) >= 1)
  {
    v10 = 0;
    v11 = v17;
    do
    {
      *&v11[4 * v10++] = 0;
    }

    while (v10 < SDWORD1(v12));
  }

  if (v18 != v19)
  {
    j__free(v18);
  }

  if (v21)
  {
    sub_1002ACC1C(v20);
  }
}

void sub_10035C53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 32);
  _Unwind_Resume(a1);
}

unint64_t sub_10035C56C(unint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*a2 & 0xFFE) != 0)
  {
    v44[0] = 0;
    v44[1] = 0;
    qmemcpy(sub_1002A80E0(v44, 39), "img.depth() <= 1 && img.channels() == 1", 39);
    sub_1002A8980(-215, v44, "maskBoundingRect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/shapedescr.cpp", 859);
  }

  v3 = *(a2 + 64);
  v5 = *v3;
  v4 = v3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = -*(a2 + 16);
    v9 = v7 + 3;
    v10 = -1;
    v11 = **(a2 + 72);
    v12 = v7;
    v13 = v4;
    v14 = -1;
    v15 = -1;
    while (1)
    {
      if (v4 >= (v8 + (v9 & 0xFFFFFFFC)))
      {
        v17 = v8 + (v9 & 0xFFFFFFFC);
      }

      else
      {
        v17 = v4;
      }

      v18 = v7 + v11 * v6;
      v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v20 = v19 - v18;
      if (v4 >= v19 - v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = v4;
      }

      if (v21 < 1)
      {
LABEL_24:
        v16 = 0;
        if (v4 <= v20)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v22 = 0;
        while (!*(v12 + v22))
        {
          if (++v22 >= v21)
          {
            goto LABEL_24;
          }
        }

        if (v22 < v13)
        {
          v13 = v22;
        }

        if (v22 > v15)
        {
          v15 = v22;
        }

        v16 = 1;
        if (v4 <= v20)
        {
          goto LABEL_8;
        }
      }

      v23 = v13 - v21;
      if (v23 >= 4)
      {
        v24 = 0;
        do
        {
          if (*(v19 + v24))
          {
            break;
          }

          v24 += 4;
        }

        while (v23 - 4 >= v24);
      }

      else
      {
        LODWORD(v24) = 0;
      }

      v25 = v15 - v21;
      if (v24 < v23)
      {
        v26 = (v19 + v24);
        while (!*v26++)
        {
          LODWORD(v24) = v24 + 1;
          if (v23 <= v24)
          {
            goto LABEL_52;
          }
        }

        if (v24 > v25)
        {
          v25 = v24;
        }

        v16 = 1;
        v23 = v24;
      }

LABEL_52:
      v32 = v4 - v17 - 1;
      v33 = v4 + ~v17;
      v34 = v24 - 1;
      if (v24 - 1 <= v25)
      {
        v34 = v25;
      }

      v35 = v34;
      while (1)
      {
        LODWORD(v36) = v33;
        v37 = v33 & 3;
        if (v32 <= v35 || v37 == 3)
        {
          break;
        }

        v38 = *(v19 + v32);
        --v33;
        --v32;
        if (v38)
        {
          goto LABEL_65;
        }
      }

      if (v32 > v35 && v37 == 3 && v35 + 3 < v33)
      {
        do
        {
          if (*(v19 - 3 + v33))
          {
            break;
          }

          v33 -= 4;
        }

        while (v33 > v35 + 3);
        LODWORD(v36) = v33;
      }

LABEL_65:
      if (v36 > v35)
      {
        v36 = v36;
        while (!*(v19 + v36))
        {
          if (--v36 <= v35)
          {
            goto LABEL_5;
          }
        }

        v16 = 1;
        v25 = v36;
        goto LABEL_7;
      }

LABEL_5:
      if (!v16)
      {
        for (i = v24 & 0x7FFFFFFC; v36 - 3 >= i; i += 4)
        {
          if (*(v19 + i))
          {
            break;
          }
        }

        if (i > v36)
        {
LABEL_48:
          v16 = 0;
          goto LABEL_7;
        }

        v29 = i - 1;
        v30 = (v19 + i);
        while (!*v30++)
        {
          if (v36 <= ++v29)
          {
            goto LABEL_48;
          }
        }
      }

      v16 = 1;
LABEL_7:
      v13 = v23 + v21;
      v15 = v25 + v21;
LABEL_8:
      if (v10 >= 0)
      {
        result = v10;
      }

      else
      {
        result = v6;
      }

      if (v16)
      {
        v14 = v6;
        v10 = result;
      }

      ++v6;
      v8 -= v11;
      v9 += v11;
      v12 += v11;
      if (v6 == v5)
      {
        v39 = v15 + 1;
        v40 = v14 + 1;
        goto LABEL_73;
      }
    }
  }

  v39 = 0;
  v40 = 0;
  v10 = -1;
  v13 = v4;
LABEL_73:
  v41 = v13 < v4;
  if (v13 >= v4)
  {
    v42 = 0;
  }

  else
  {
    v42 = v10;
  }

  if (v41)
  {
    v43 = v13;
  }

  else
  {
    v43 = 0;
  }

  *v2 = v43;
  v2[1] = v42;
  v2[2] = v39 - v43;
  v2[3] = v40 - v42;
  return result;
}

unint64_t sub_10035C8B4(uint64_t a1, uint64_t a2)
{
  result = sub_10026F620(a2, 2, -1, 1);
  if ((result & 0x80000000) != 0 || (*a2 & 6) != 4)
  {
    v52[0] = 0;
    v52[1] = 0;
    qmemcpy(sub_1002A80E0(v52, 42), "npoints >= 0 && (depth == 5 || depth == 4)", 42);
    sub_1002A8980(-215, v52, "pointSetBoundingRect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/shapedescr.cpp", 741);
  }

  if (!result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    return result;
  }

  v5 = *(a2 + 16);
  v6 = *v5;
  if ((*a2 & 7) == 5)
  {
    *v7.i8 = veor_s8((*&vcltz_s32(v6) & 0x7FFFFFFF7FFFFFFFLL), v6);
    if (result < 2)
    {
      v9 = *v7.i8;
    }

    else
    {
      if (result >= 9)
      {
        v15 = (result - 1) & 0xFFFFFFFFFFFFFFF8;
        v8 = v15 | 1;
        v16 = vdupq_lane_s32(*v7.i8, 0);
        v7 = vdupq_lane_s32(*v7.i8, 1);
        v17 = (v5 + 5);
        v18 = v15;
        v19 = v16;
        v20 = v7;
        v21 = v16;
        v22 = v16;
        v23 = v7;
        v24 = v7;
        do
        {
          v25 = v17 - 8;
          v53 = vld2q_f32(v25);
          v55 = vld2q_f32(v17);
          v26 = veorq_s8((*&vcltzq_s32(v53.val[0]) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v53.val[0]);
          v27 = veorq_s8((*&vcltzq_s32(v55.val[0]) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v55.val[0]);
          v53.val[0] = veorq_s8((*&vcltzq_s32(v53.val[1]) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v53.val[1]);
          v53.val[1] = veorq_s8((*&vcltzq_s32(v55.val[1]) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v55.val[1]);
          v16 = vminq_s32(v16, v26);
          v19 = vminq_s32(v19, v27);
          v21 = vmaxq_s32(v21, v26);
          v22 = vmaxq_s32(v22, v27);
          v7 = vminq_s32(v7, v53.val[0]);
          v20 = vminq_s32(v20, v53.val[1]);
          v23 = vmaxq_s32(v23, v53.val[0]);
          v24 = vmaxq_s32(v24, v53.val[1]);
          v17 += 16;
          v18 -= 8;
        }

        while (v18);
        v9.i32[0] = vminvq_s32(vminq_s32(v16, v19));
        v28 = vminvq_s32(vminq_s32(v7, v20));
        v7.i64[0] = __PAIR64__(vmaxvq_s32(vmaxq_s32(v23, v24)), vmaxvq_s32(vmaxq_s32(v21, v22)));
        v9.i32[1] = v28;
        if (result - 1 == v15)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v8 = 1;
        v9 = *v7.i8;
      }

      v29 = &v5[v8];
      v30 = result - v8;
      do
      {
        v31 = *v29++;
        v32 = veor_s8((*&vcltz_s32(v31) & 0x7FFFFFFF7FFFFFFFLL), v31);
        v9 = vmin_s32(v9, v32);
        *v7.i8 = vmax_s32(*v7.i8, v32);
        --v30;
      }

      while (v30);
    }

LABEL_20:
    v7.u64[1] = v9;
    v33 = vrev64q_s32(v7);
    v34 = veorq_s8((*&vcltzq_s32(v33) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v33);
    v35 = vcvtq_s32_f32(v34);
    *v34.f32 = vmovn_s32(vcgtq_f32(vcvtq_f32_s32(v35), v34));
    v10 = v35.i32[3] - (v34.i8[6] & 1);
    v11 = v35.i32[2] - (v34.i8[4] & 1);
    v13 = v35.i32[1] - (v34.i8[2] & 1);
    v14 = v35.i32[0] - (v34.i8[0] & 1);
    goto LABEL_34;
  }

  v10 = *v5;
  v11 = HIDWORD(*v5);
  if (result >= 2)
  {
    if (result >= 9)
    {
      v36 = (result - 1) & 0xFFFFFFFFFFFFFFF8;
      v12 = v36 | 1;
      v37 = vdupq_lane_s32(v6, 0);
      v38 = vdupq_lane_s32(v6, 1);
      v39 = (v5 + 5);
      v40 = v36;
      v41 = v37;
      v42 = v38;
      v43 = v37;
      v44 = v37;
      v45 = v38;
      v46 = v38;
      do
      {
        v47 = v39 - 8;
        v54 = vld2q_f32(v47);
        v56 = vld2q_f32(v39);
        v37 = vminq_s32(v37, v54.val[0]);
        v41 = vminq_s32(v41, v56.val[0]);
        v43 = vmaxq_s32(v43, v54.val[0]);
        v44 = vmaxq_s32(v44, v56.val[0]);
        v38 = vminq_s32(v38, v54.val[1]);
        v42 = vminq_s32(v42, v56.val[1]);
        v45 = vmaxq_s32(v45, v54.val[1]);
        v46 = vmaxq_s32(v46, v56.val[1]);
        v39 += 16;
        v40 -= 8;
      }

      while (v40);
      v10 = vminvq_s32(vminq_s32(v37, v41));
      v11 = vminvq_s32(vminq_s32(v38, v42));
      v13 = vmaxvq_s32(vmaxq_s32(v43, v44));
      v14 = vmaxvq_s32(vmaxq_s32(v45, v46));
      if (result - 1 == v36)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 1;
      v13 = *v5;
      v14 = HIDWORD(*v5);
    }

    v48 = &v5[v12] + 1;
    v49 = result - v12;
    do
    {
      v50 = *(v48 - 1);
      v51 = *v48;
      if (v10 >= v50)
      {
        v10 = *(v48 - 1);
      }

      if (v13 <= v50)
      {
        v13 = *(v48 - 1);
      }

      if (v11 >= v51)
      {
        v11 = *v48;
      }

      if (v14 <= v51)
      {
        v14 = *v48;
      }

      v48 += 2;
      --v49;
    }

    while (v49);
    goto LABEL_34;
  }

  v14 = HIDWORD(*v5);
  v13 = *v5;
LABEL_34:
  *a1 = v10;
  *(a1 + 4) = v11;
  *(a1 + 8) = v13 - v10 + 1;
  *(a1 + 12) = v14 - v11 + 1;
  return result;
}

uint64_t sub_10035CC70(_DWORD *a1, int a2)
{
  v2 = a1;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  if (a1 && HIWORD(*a1) == 17049)
  {
    if ((*a1 & 0xFFE) != 0xC)
    {
      v21 = 0;
      v22 = 0;
      qmemcpy(sub_1002A80E0(&v21, 25), "Unsupported sequence type", 25);
      sub_1002A8980(-5, &v21, "cvBoundingRect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/shapedescr.cpp", 1316);
    }

    if (a1[1] >= 128)
    {
      if (!a2)
      {
        v11 = (a1 + 24);
        return *v11;
      }

      v3 = 0;
      if (!a1[10])
      {
        goto LABEL_8;
      }

LABEL_13:
      v21 = v23;
      v22 = 136;
      sub_10026AD20(v2, 0, 0, &v21, &v13);
      sub_10035C8B4(v20, &v13);
      v4 = v20[1];
      v33 = v20[0];
      if (v16 && atomic_fetch_add((v16 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v13);
      }

      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      if (SHIDWORD(v13) >= 1)
      {
        v6 = 0;
        v7 = v17;
        do
        {
          *(v7 + 4 * v6++) = 0;
        }

        while (v6 < SHIDWORD(v13));
      }

      if (v18 != &v19)
      {
        j__free(v18);
      }

      if (v21 != v23 && v21 != 0)
      {
        operator delete[]();
      }

      goto LABEL_26;
    }
  }

  else
  {
    v5 = sub_1001FD9EC(a1, v28, 0, 0);
    if ((*v5 & 0xFFFu) < 2)
    {
      sub_10026AD20(v5, 0, 0, 0, &v21);
      sub_10035C56C(&v13, &v21);
      v33 = v13;
      if (v24 && atomic_fetch_add((v24 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v21);
      }

      v24 = 0;
      memset(v23, 0, sizeof(v23));
      if (SHIDWORD(v21) >= 1)
      {
        v9 = 0;
        v10 = v25;
        do
        {
          *(v10 + 4 * v9++) = 0;
        }

        while (v9 < SHIDWORD(v21));
      }

      if (v26 != &v27)
      {
        j__free(v26);
      }

      goto LABEL_37;
    }

    if ((*v5 & 0xFFFu) - 12 > 1)
    {
      v21 = 0;
      v22 = 0;
      qmemcpy(sub_1002A80E0(&v21, 56), "The image/matrix format is not supported by the function", 56);
      sub_1002A8980(-210, &v21, "cvBoundingRect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/shapedescr.cpp", 1336);
    }

    v2 = sub_100375C9C(0, v5, v30, v29);
  }

  v3 = 1;
  if (v2[10])
  {
    goto LABEL_13;
  }

LABEL_8:
  v4 = 0;
LABEL_26:
  if ((v3 & 1) == 0)
  {
    *(v2 + 12) = v33;
    *(v2 + 13) = v4;
  }

LABEL_37:
  v11 = &v33;
  return *v11;
}

void sub_10035CFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10035D028(uint64_t a1, unsigned __int16 a2, int a3, int a4)
{
  v7 = a4;
  v8 = a3;
  if (((a2 ^ a1) & 0xFF8) != 0)
  {
    *v6 = 0uLL;
    qmemcpy(sub_1002A80E0(v6, 90), "((((sumType) & ((512 - 1) << 3)) >> 3) + 1) == ((((srcType) & ((512 - 1) << 3)) >> 3) + 1)", 90);
    sub_1002A8980(-215, v6, "getRowSumFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1302);
  }

  v4 = a1 & 7;
  if (a4 < 0)
  {
    v7 = a3 / 2;
    v5 = a2 & 7;
    if ((a1 & 7) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = a2 & 7;
    if ((a1 & 7) != 0)
    {
      goto LABEL_9;
    }
  }

  if (v5 == 4)
  {
    operator new();
  }

LABEL_9:
  if ((a1 & 7) == 0 && v5 == 2)
  {
    operator new();
  }

  if ((a1 & 7) == 0 && v5 == 6)
  {
    operator new();
  }

  if (v4 == 2 && v5 == 4)
  {
    operator new();
  }

  if (v4 == 2 && v5 == 6)
  {
    operator new();
  }

  if (v4 == 3 && v5 == 4)
  {
    sub_10035D810();
  }

  if (v4 == 4 && v5 == 4)
  {
    sub_10035D960();
  }

  if (v4 == 3 && v5 == 6)
  {
    sub_10035DAB0();
  }

  if (v4 == 5 && v5 == 6)
  {
    sub_10035DC00();
  }

  if (v4 == 6 && v5 == 6)
  {
    sub_10035DD50();
  }

  sub_1002A8688(v6, "Unsupported combination of source format (=%d), and buffer format (=%d)", a1, HIDWORD(a1));
  sub_1002A8980(-213, v6, "getRowSumFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1330);
}

void sub_10035D72C()
{
  sub_1002A8124(&v1);
  *v0 = 0;
  v0[1] = 0;
}

void sub_10035D754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10035D8F0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035DA40(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035DB90(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035DCE0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035DE30(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_10035DEA0(uint64_t a1, unsigned __int16 a2, int a3, int a4, double a5)
{
  v9 = a4;
  v10 = a3;
  v8 = a5;
  if (((a2 ^ a1) & 0xFF8) != 0)
  {
    v7 = 0uLL;
    qmemcpy(sub_1002A80E0(&v7, 90), "((((sumType) & ((512 - 1) << 3)) >> 3) + 1) == ((((dstType) & ((512 - 1) << 3)) >> 3) + 1)", 90);
    sub_1002A8980(-215, &v7, "getColumnSumFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1340);
  }

  v5 = a1 & 7;
  v6 = a2 & 7;
  if (a4 < 0)
  {
    v9 = v10 / 2;
    if (v5 != 4)
    {
      goto LABEL_9;
    }
  }

  else if (v5 != 4)
  {
    goto LABEL_9;
  }

  if ((a2 & 7) == 0)
  {
    operator new();
  }

LABEL_9:
  if (v5 == 2 && (a2 & 7) == 0)
  {
    sub_10035E6BC();
  }

  if (v5 == 6 && (a2 & 7) == 0)
  {
    operator new();
  }

  if (v5 == 4 && v6 == 2)
  {
    operator new();
  }

  if (v5 == 6 && v6 == 2)
  {
    operator new();
  }

  if (v5 == 4 && v6 == 3)
  {
    sub_10035E830();
  }

  if (v5 == 6 && v6 == 3)
  {
    sub_10035E9A0();
  }

  if (v5 == 4 && v6 == 4)
  {
    sub_10035EB10();
  }

  if (v5 == 4 && v6 == 5)
  {
    sub_10035EC80();
  }

  if (v5 == 6 && v6 == 5)
  {
    sub_10035EDF0();
  }

  if (v5 == 4 && v6 == 6)
  {
    sub_10035EF60();
  }

  if (v5 == 6 && v6 == 6)
  {
    sub_10035F0D0();
  }

  sub_1002A8688(&v7, "Unsupported combination of sum format (=%d), and destination format (=%d)", a1, HIDWORD(a1));
  sub_1002A8980(-213, &v7, "getColumnSumFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1372);
}

void sub_10035E618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10035E930(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035EAA0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035EC10(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035ED80(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035EEF0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035F060(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10035F1D0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_10035F240(uint64_t a1, char a2, int *a3, int *a4, int a5)
{
  v5 = a1 & 7;
  if ((a1 & 7) != 0)
  {
    if (v5 > 4)
    {
      goto LABEL_15;
    }
  }

  else if ((a2 & 7) == 0 && a3[1] * *a3 < 257)
  {
    v6 = 2;
    goto LABEL_17;
  }

  if (!a5 || (v5 != 2 ? (v7 = 0x10000) : (v7 = 0x8000), (a1 & 7) != 0 ? (v8 = v7) : (v8 = 0x800000), a3[1] * *a3 <= v8))
  {
    v6 = 4;
LABEL_17:
    sub_10035D028(a1, v6 | a1 & 0xFF8, *a3, *a4);
  }

LABEL_15:
  v6 = 6;
  goto LABEL_17;
}

void sub_10035F520(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t *a5, int a6, char a7)
{
  sub_1002ACE7C(v46, &off_10047ABA8);
  if (sub_100271148(a1) == 0x10000)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v40[0] = *v14;
    v40[1] = v16;
    v40[2] = *(v14 + 32);
    v17 = *(v14 + 56);
    v41 = *(v14 + 48);
    v42 = v17;
    v43 = v40 + 1;
    v44 = v45;
    v45[0] = 0;
    v45[1] = 0;
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_4:
        v18 = *(v14 + 72);
        v19 = v44;
        *v44 = *v18;
        v19[1] = v18[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v40[0]) = 0;
    sub_100269B58(v40, v14);
  }

  else
  {
    sub_1002703C0(a1, -1, v40);
  }

LABEL_8:
  v20 = v40[0];
  if (a3 >= 0)
  {
    v20 = a3;
  }

  *&v34[0] = vrev64_s32(*v43);
  sub_100275370(a2, v34, v40[0] & 0xFF8 | v20 & 7, -1, 0, 0);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, -1, v34);
    goto LABEL_17;
  }

  v21 = *(a2 + 8);
  v22 = *v21;
  v23 = *(v21 + 16);
  v34[0] = *v21;
  v34[1] = v23;
  v34[2] = *(v21 + 32);
  v24 = *(v21 + 56);
  v35 = *(v21 + 48);
  v36 = v24;
  v37 = v34 + 8;
  v38 = v39;
  v39[0] = 0;
  v39[1] = 0;
  if (v24)
  {
    atomic_fetch_add((v24 + 20), 1u);
    if (*(v21 + 4) <= 2)
    {
LABEL_13:
      v25 = *(v21 + 72);
      v26 = v38;
      *v38 = *v25;
      v26[1] = v25[1];
LABEL_17:
      if ((a7 & 0x10) != 0 && a6)
      {
        v27 = DWORD2(v40[0]);
        if (DWORD2(v40[0]) == 1)
        {
          a4[1] = 1;
        }

        v28 = HIDWORD(v40[0]);
        if (HIDWORD(v40[0]) == 1)
        {
          *a4 = 1;
        }

        v33 = 0;
        v32 = __PAIR64__(v27, v28);
      }

      else
      {
        v33 = 0;
        v32 = vrev64_s32(*(v40 + 8));
        if ((a7 & 0x10) == 0)
        {
          sub_10026BBAC(v40, &v32, &v33);
        }
      }

      v29 = *a4;
      v30 = *a5;
      v31 = v29;
      sub_10035F240(v40[0] & 0xFFF, v34[0], &v31, &v30, a6);
    }
  }

  else if (SDWORD1(v22) <= 2)
  {
    goto LABEL_13;
  }

  DWORD1(v34[0]) = 0;
  sub_100269B58(v34, v21);
  goto LABEL_17;
}

void sub_10035F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100006D14(&a15);
  sub_100006D14(&a27);
  sub_1001D8BF4(v27 - 80);
  _Unwind_Resume(a1);
}

void sub_10035F958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100006D14(&a27);
  sub_1001D8BF4(v27 - 80);
  _Unwind_Resume(a1);
}

void sub_10035F98C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char a5)
{
  sub_1002ACE7C(v13, &off_10047ABC8);
  v10 = *a3;
  v11 = *a4;
  v12 = v10;
  sub_10035F520(a1, a2, -1, &v12, &v11, 1, a5);
}

void sub_10035FA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_10035FA38(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a1 < 8 && (a1 & 0x80000001) == 1 && a4 <= 0.0;
  if ((a2 - 5) >= 2)
  {
    __src[0] = 0;
    __src[1] = 0;
    qmemcpy(sub_1002A80E0(__src, 24), "ktype == 5 || ktype == 6", 24);
    sub_1002A8980(-215, __src, "getGaussianKernel", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1726);
  }

  *a3 = 1124007936;
  *(a3 + 4) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 64) = a3 + 8;
  *(a3 + 72) = a3 + 80;
  *(a3 + 88) = 0;
  __src[0] = a1 | 0x100000000;
  sub_100268ED0(a3, 2, __src, a2 & 0xFFF);
  v10 = (a1 - 1);
  v11 = (v10 * 0.5 + -1.0) * 0.3 + 0.8;
  if (a4 > 0.0)
  {
    v11 = a4;
  }

  if (a1 < 1)
  {
    return;
  }

  v12 = *(a3 + 16);
  if (v9)
  {
    v13 = (&unk_1003EA650 + 28 * (a1 >> 1));
    v14 = *v13;
    if (a2 == 5)
    {
      *v12 = v14;
      v15 = v14 + 0.0;
      if (a1 != 1)
      {
        v16 = v13[1];
        *(v12 + 4) = v16;
        v15 = v15 + v16;
        if (a1 != 2)
        {
          v17 = v13[2];
          *(v12 + 8) = v17;
          v15 = v15 + v17;
          if (a1 != 3)
          {
            v18 = v13[3];
            *(v12 + 12) = v18;
            v15 = v15 + v18;
            if (a1 != 4)
            {
              v19 = v13[4];
              *(v12 + 16) = v19;
              v15 = v15 + v19;
              if (a1 != 5)
              {
                v20 = v13[5];
                *(v12 + 20) = v20;
                v15 = v15 + v20;
                if (a1 != 6)
                {
                  v21 = v13[6];
                  *(v12 + 24) = v21;
                  v15 = v15 + v21;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v26 = v14;
      *v12 = v26;
      v15 = v26 + 0.0;
      if (a1 != 1)
      {
        v27 = v13[1];
        *(v12 + 8) = v27;
        v15 = v15 + v27;
        if (a1 != 2)
        {
          v28 = v13[2];
          *(v12 + 16) = v28;
          v15 = v15 + v28;
          if (a1 != 3)
          {
            v29 = v13[3];
            *(v12 + 24) = v29;
            v15 = v15 + v29;
            if (a1 != 4)
            {
              v30 = v13[4];
              *(v12 + 32) = v30;
              v15 = v15 + v30;
              if (a1 != 5)
              {
                v31 = v13[5];
                *(v12 + 40) = v31;
                v15 = v15 + v31;
                if (a1 != 6)
                {
                  v32 = v13[6];
                  *(v12 + 48) = v32;
                  v15 = v15 + v32;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_42;
  }

  v22 = -v10;
  v23 = -0.5 / (v11 * v11);
  v93 = v22;
  v94 = v23;
  if (a2 == 5)
  {
    if (a1 >= 4)
    {
      v24 = a1 & 0x7FFFFFFC;
      v83 = vdupq_lane_s64(*&v22, 0);
      v35 = &_mh_execute_header;
      v36 = (v12 + 8);
      v15 = 0.0;
      __asm { FMOV            V0.2D, #0.5 }

      v81 = _Q0;
      v41 = v24;
      do
      {
        v42 = vadd_s32(v35, 0x200000002);
        v43.i64[0] = v35;
        v43.i64[1] = HIDWORD(v35);
        v44 = vcvtq_f64_u64(v43);
        v43.i64[0] = v42.u32[0];
        v43.i64[1] = v42.u32[1];
        v45 = vmlaq_f64(v44, v81, v83);
        v46 = vmlaq_f64(vcvtq_f64_u64(v43), v81, v83);
        __x = vmulq_f64(v45, vmulq_n_f64(v45, v23));
        v91 = vmulq_f64(v46, vmulq_n_f64(v46, v94));
        v88 = exp(__x.f64[1]);
        v47.f64[0] = exp(__x.f64[0]);
        v47.f64[1] = v88;
        v89 = v47;
        __x.f64[0] = exp(v91.f64[1]);
        v48.f64[0] = exp(v91.f64[0]);
        v48.f64[1] = __x.f64[0];
        v49 = vcvt_f32_f64(v89);
        *&v48.f64[0] = vcvt_f32_f64(v48);
        *(v36 - 1) = *&v49;
        *v36 = v48.f64[0];
        v50 = vcvtq_f64_f32(v49);
        v51 = vcvtq_f64_f32(*&v48.f64[0]);
        v15 = v15 + v50.f64[0] + v50.f64[1] + v51.f64[0] + v51.f64[1];
        v23 = v94;
        v35 = vadd_s32(v35, 0x400000004);
        v36 += 2;
        v41 -= 4;
      }

      while (v41);
      v25 = v93;
      if (v24 == a1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 = 0;
      v15 = 0.0;
      v25 = v22;
    }

    do
    {
      v52 = exp((v24 + v25 * 0.5) * (v23 * (v24 + v25 * 0.5)));
      v25 = v93;
      v23 = v94;
      *&v52 = v52;
      *(v12 + 4 * v24) = LODWORD(v52);
      v15 = v15 + *&v52;
      ++v24;
    }

    while (a1 != v24);
  }

  else
  {
    if (a1 > 3)
    {
      v33 = a1 & 0x7FFFFFFC;
      v80 = vdupq_lane_s64(*&v22, 0);
      v53 = &_mh_execute_header;
      v54 = (v12 + 16);
      v15 = 0.0;
      __asm { FMOV            V0.2D, #0.5 }

      v79 = _Q0;
      v56 = v33;
      do
      {
        v57 = vadd_s32(v53, 0x200000002);
        v58.i64[0] = v53;
        v58.i64[1] = HIDWORD(v53);
        v59 = vcvtq_f64_u64(v58);
        v58.i64[0] = v57.u32[0];
        v58.i64[1] = v57.u32[1];
        v60 = vmlaq_f64(v59, v79, v80);
        v61 = vmlaq_f64(vcvtq_f64_u64(v58), v79, v80);
        __xa = vmulq_f64(v60, vmulq_n_f64(v60, v23));
        v90 = vmulq_f64(v61, vmulq_n_f64(v61, v94));
        v92 = exp(__xa.f64[1]);
        v84 = exp(__xa.f64[0]);
        *&v62 = v84;
        *(&v62 + 1) = v92;
        __xb = v62;
        v82 = exp(v90.f64[1]);
        *&v63 = exp(v90.f64[0]);
        v23 = v94;
        *(&v63 + 1) = v82;
        *(v54 - 1) = __xb;
        *v54 = v63;
        v15 = v15 + v84 + v92 + *&v63 + v82;
        v53 = vadd_s32(v53, 0x400000004);
        v54 += 2;
        v56 -= 4;
      }

      while (v56);
      v34 = v93;
      if (v33 == a1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v33 = 0;
      v15 = 0.0;
      v34 = v22;
    }

    do
    {
      v64 = exp((v33 + v34 * 0.5) * (v23 * (v33 + v34 * 0.5)));
      v34 = v93;
      v23 = v94;
      *(v12 + 8 * v33) = v64;
      v15 = v15 + v64;
      ++v33;
    }

    while (a1 != v33);
  }

LABEL_42:
  v65 = 1.0 / v15;
  if (a2 != 5)
  {
    if (a1 > 3)
    {
      v67 = a1 & 0x7FFFFFFC;
      v74 = (v12 + 16);
      v75 = v67;
      do
      {
        v76 = vmulq_n_f64(*v74, v65);
        v74[-1] = vmulq_n_f64(v74[-1], v65);
        *v74 = v76;
        v74 += 2;
        v75 -= 4;
      }

      while (v75);
      if (v67 == a1)
      {
        return;
      }
    }

    else
    {
      v67 = 0;
    }

    v77 = (v12 + 8 * v67);
    v78 = a1 - v67;
    do
    {
      *v77 = v65 * *v77;
      ++v77;
      --v78;
    }

    while (v78);
    return;
  }

  if (a1 < 8)
  {
    v66 = 0;
LABEL_50:
    v71 = (v12 + 4 * v66);
    v72 = a1 - v66;
    do
    {
      v73 = v65 * *v71;
      *v71++ = v73;
      --v72;
    }

    while (v72);
    return;
  }

  v66 = a1 & 0x7FFFFFF8;
  v68 = (v12 + 16);
  v69 = v66;
  do
  {
    v70 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v68), v65)), vmulq_n_f64(vcvt_hight_f64_f32(*v68->f32), v65));
    *v68[-2].f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v68[-2]), v65)), vmulq_n_f64(vcvt_hight_f64_f32(*v68[-2].f32), v65));
    *v68->f32 = v70;
    v68 += 4;
    v69 -= 8;
  }

  while (v69);
  if (v66 != a1)
  {
    goto LABEL_50;
  }
}

void sub_1003600C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003600F4(uint64_t a1, uint64_t a2, char a3, signed int *a4, double a5, double a6)
{
  v9 = a3 & 7;
  if (a6 <= 0.0)
  {
    v10 = a5;
  }

  else
  {
    v10 = a6;
  }

  v11 = *a4;
  if (a5 > 0.0 && v11 <= 0)
  {
    if ((a3 & 7) != 0)
    {
      v13 = 4;
    }

    else
    {
      v13 = 3;
    }

    v11 = rint(v13 * a5 * 2.0 + 1.0) | 1;
    *a4 = v11;
  }

  v14 = a4[1];
  if (v10 > 0.0 && v14 <= 0)
  {
    if ((a3 & 7) != 0)
    {
      v16 = 4;
    }

    else
    {
      v16 = 3;
    }

    v14 = rint(v10 * v16 * 2.0 + 1.0) | 1;
    a4[1] = v14;
  }

  if (v11 < 1 || (v11 & 1) == 0 || v14 < 1 || (v14 & 1) == 0)
  {
    *v53 = 0uLL;
    qmemcpy(sub_1002A80E0(v53, 84), "ksize.width > 0 && ksize.width % 2 == 1 && ksize.height > 0 && ksize.height % 2 == 1", 84);
    sub_1002A8980(-215, v53, "createGaussianKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 1780);
  }

  if (a5 >= 0.0)
  {
    v20 = a5;
  }

  else
  {
    v20 = 0.0;
  }

  if (v10 >= 0.0)
  {
    v21 = v10;
  }

  else
  {
    v21 = 0.0;
  }

  if (v9 <= 5)
  {
    v9 = 5;
  }

  sub_10035FA38(v11, v9, v53, v20);
  if (v53 != a1)
  {
    v22 = *(a1 + 56);
    if (v22 && atomic_fetch_add((v22 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1);
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) >= 1)
    {
      v23 = 0;
      v24 = *(a1 + 64);
      do
      {
        *(v24 + 4 * v23++) = 0;
      }

      while (v23 < *(a1 + 4));
    }

    v25 = *&v53[4];
    v26 = *&v53[16];
    *a1 = *v53;
    *(a1 + 16) = v26;
    v27 = *&v53[48];
    *(a1 + 32) = *&v53[32];
    *(a1 + 48) = v27;
    v28 = *(a1 + 72);
    if (v28 == (a1 + 80))
    {
      v29 = v55;
      if (v25 <= 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      j__free(v28);
      *(a1 + 64) = a1 + 8;
      *(a1 + 72) = a1 + 80;
      v28 = (a1 + 80);
      v29 = v55;
      if (*&v53[4] <= 2)
      {
LABEL_51:
        *v28 = *v29;
        v28[1] = v29[1];
LABEL_57:
        *v53 = 1124007936;
        memset(&v53[4], 0, 60);
        goto LABEL_58;
      }
    }

    *(a1 + 64) = v54;
    *(a1 + 72) = v29;
    v54 = &v53[8];
    v55 = v56;
    goto LABEL_57;
  }

  if (*&v53[56] && atomic_fetch_add((*&v53[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v53);
  }

LABEL_58:
  *&v53[56] = 0;
  memset(&v53[16], 0, 32);
  if (*&v53[4] >= 1)
  {
    v30 = 0;
    v31 = v54;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < *&v53[4]);
  }

  if (v55 != v56)
  {
    j__free(v55);
  }

  v32 = a4[1];
  v33 = vabdd_f64(v20, v21);
  if (v32 == *a4 && v33 < 2.22044605e-16)
  {
    if (a2 == a1)
    {
      return;
    }

    v43 = *(a1 + 56);
    if (v43)
    {
      atomic_fetch_add((v43 + 20), 1u);
    }

    v44 = *(a2 + 56);
    if (v44 && atomic_fetch_add((v44 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a2);
    }

    *(a2 + 56) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    if (*(a2 + 4) <= 0)
    {
      *a2 = *a1;
      v48 = *(a1 + 4);
      if (v48 <= 2)
      {
LABEL_91:
        *(a2 + 4) = v48;
        *(a2 + 8) = *(a1 + 8);
        v49 = *(a1 + 72);
        v50 = *(a2 + 72);
        *v50 = *v49;
        v50[1] = v49[1];
LABEL_102:
        *(a2 + 16) = *(a1 + 16);
        *(a2 + 32) = *(a1 + 32);
        *(a2 + 48) = *(a1 + 48);
        return;
      }
    }

    else
    {
      v45 = 0;
      v46 = *(a2 + 64);
      do
      {
        *(v46 + 4 * v45++) = 0;
        v47 = *(a2 + 4);
      }

      while (v45 < v47);
      *a2 = *a1;
      if (v47 <= 2)
      {
        v48 = *(a1 + 4);
        if (v48 <= 2)
        {
          goto LABEL_91;
        }
      }
    }

    sub_100269B58(a2, a1);
    goto LABEL_102;
  }

  sub_10035FA38(v32, v9, v53, v21);
  if (v53 == a2)
  {
    if (*&v53[56] && atomic_fetch_add((*&v53[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v53);
    }

    goto LABEL_95;
  }

  v35 = *(a2 + 56);
  if (v35 && atomic_fetch_add((v35 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a2);
  }

  *(a2 + 56) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (*(a2 + 4) >= 1)
  {
    v36 = 0;
    v37 = *(a2 + 64);
    do
    {
      *(v37 + 4 * v36++) = 0;
    }

    while (v36 < *(a2 + 4));
  }

  v38 = *&v53[4];
  v39 = *&v53[16];
  *a2 = *v53;
  *(a2 + 16) = v39;
  v40 = *&v53[48];
  *(a2 + 32) = *&v53[32];
  *(a2 + 48) = v40;
  v41 = *(a2 + 72);
  if (v41 == (a2 + 80))
  {
    v42 = v55;
    if (v38 <= 2)
    {
      goto LABEL_76;
    }

LABEL_93:
    *(a2 + 64) = v54;
    *(a2 + 72) = v42;
    v54 = &v53[8];
    v55 = v56;
    goto LABEL_94;
  }

  j__free(v41);
  *(a2 + 64) = a2 + 8;
  *(a2 + 72) = a2 + 80;
  v41 = (a2 + 80);
  v42 = v55;
  if (*&v53[4] > 2)
  {
    goto LABEL_93;
  }

LABEL_76:
  *v41 = *v42;
  v41[1] = v42[1];
LABEL_94:
  *v53 = 1124007936;
  memset(&v53[4], 0, 60);
LABEL_95:
  *&v53[56] = 0;
  memset(&v53[16], 0, 32);
  if (*&v53[4] >= 1)
  {
    v51 = 0;
    v52 = v54;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < *&v53[4]);
  }

  if (v55 != v56)
  {
    j__free(v55);
  }
}