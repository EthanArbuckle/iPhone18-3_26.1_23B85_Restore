uint64_t sub_1004CEB74(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    while (1)
    {
      v4 = *(v2 + 32);
      if (v4)
      {
        break;
      }

      v2 = *(v2 + 8);
      if (!v2)
      {
        return result;
      }
    }

    if ((*(v2 + 120) & 1) == 0)
    {
      v5 = v4[6];
      if (v5 == v4)
      {
        goto LABEL_59;
      }

      v6 = v4[7];
      if (v5 == v6)
      {
        goto LABEL_59;
      }

      if (v5[6] == v6)
      {
        v30 = *v6;
        v31 = *v6 - *v5;
        if (v31 < 0)
        {
          v31 = *v5 - *v6;
        }

        if (v31 <= 1)
        {
          v32 = v6[1] - v5[1];
          if (v32 < 0)
          {
            v32 = v5[1] - v6[1];
          }

          if (v32 < 2)
          {
            goto LABEL_59;
          }
        }

        v33 = *v4;
        v34 = *v4 - *v5;
        if (v34 < 0)
        {
          v34 = *v5 - *v4;
        }

        if (v34 <= 1)
        {
          v35 = v4[1] - v5[1];
          if (v35 < 0)
          {
            v35 = -v35;
          }

          if (v35 < 2)
          {
            goto LABEL_59;
          }
        }

        v36 = v33 - v30;
        if (v33 - v30 < 0)
        {
          v36 = v30 - v33;
        }

        if (v36 <= 1)
        {
          v37 = v4[1] - v6[1];
          if (v37 < 0)
          {
            v37 = -v37;
          }

          if (v37 <= 1)
          {
LABEL_59:
            *(v4[7] + 48) = 0;
            operator delete();
          }
        }
      }

      v8 = *v4;
      v7 = v4[1];
      v9 = *(v2 + 32);
      do
      {
        v10 = *(v9 + 6);
        v11 = *(v9 + 7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (v8 - *v11);
        v16 = *v10;
        v15 = v10[1];
        v17 = (v15 - v7);
        v18 = (v7 - v13);
        v19 = (*v10 - v8);
        if (v14 * v17 - v18 * v19 == 0.0)
        {
          v20 = v7 == v13;
          v22 = v8 == v12;
          v21 = v8 == v12;
          v22 = v22 && v7 == v13;
          if (v22)
          {
            v21 = 1;
            v20 = 1;
            goto LABEL_26;
          }

          if (v16 == v8 && v15 == v7)
          {
            v16 = v8;
LABEL_26:
            v24 = *(v9 + 8);
            if ((v24 & 0x80000000) == 0 && (*(v9 + 4) != v24 || *(v9 + 3) != *(v9 + 5)))
            {
              v25 = v8 == v16 && v15 == v7;
              if (v25 || (v10 = *(v9 + 7), v21 && v20))
              {
                v26 = *v9;
                v27 = v9[2];
                *(v10 + 1) = v9[1];
                *(v10 + 2) = v27;
                *v10 = v26;
              }
            }

            v28 = *(v9 + 7);
            if (v9 == *(v2 + 32))
            {
              *(v2 + 32) = v28;
            }

            v29 = *(v9 + 6);
            *(v28 + 48) = v29;
            *(v29 + 56) = v28;
            operator delete();
          }

          if (*(v3 + 280) != 1 || v17 * v18 + v14 * v19 < 0.0)
          {
            goto LABEL_26;
          }
        }

        v7 = v10[1];
        v8 = *v10;
        v9 = *(v9 + 6);
      }

      while (v10 != v4);

      return sub_1004CEEC4(v3, v2);
    }
  }

  return result;
}

uint64_t sub_1004CEEC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = v2[3].i64[0];
  v4 = v2[3].i64[1];
  v5 = v3[3].i64[0];
  if (v4 != v5)
  {
    v6 = result;
    v7 = *(a2 + 32);
    do
    {
      v8 = v3->i64[1];
      v10 = *v4;
      v9 = v4[1];
      v13 = v5;
      v11 = *v5;
      v12 = v13[1];
      v14 = v7->i64[1];
      result = v8 - v14;
      if (((v3->i64[0] - v10) * (v12 - v8) - (v8 - v9) * (v11 - v3->i64[0])) * ((v3->i64[0] - v7->i64[0]) * (v12 - v8) - (v8 - v14) * (v11 - v3->i64[0])) < 0.0 && ((v10 - v3->i64[0]) * (v14 - v9) - (v9 - v8) * (v7->i64[0] - v10)) * ((v10 - v11) * (v14 - v9) - (v9 - v12) * (v7->i64[0] - v10)) < 0.0)
      {
        if (v7 == v2 || v3 == v2)
        {
          *(a2 + 32) = v2[3].i64[1];
        }

        sub_1004CEFF8(v6, a2, v7);
      }

      if (v3 == v2)
      {
        break;
      }

      v7 = v3;
      v15 = v3 + 3;
      v3 = v3[3].i64[0];
      v4 = v15->i64[1];
      v5 = v3[3].i64[0];
    }

    while (v4 != v5);
  }

  return result;
}

void sub_1004CEFF8(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  v6 = a3[3].i64[0];
  v7 = a3[3].i64[1];
  v8 = v6[6];
  v32 = 0uLL;
  v9 = v8[1];
  v11 = *v6;
  v10 = v6[1];
  _D2 = (*v8 - *v6);
  *(a2 + 32) = v7;
  v13 = *v7;
  _Q0 = vcvtq_f64_s64(vsubq_s64(*a3, *v7));
  __asm { FMLA            D4, D2, V0.D[1] }

  if (_D4 != 0.0)
  {
    v20 = ((v13.i64[0] - v11) * (v9 - v10) - (v13.i64[1] - v10) * _D2) / _D4;
    if (v20 <= 0.0)
    {
      v21 = *v7;
      goto LABEL_6;
    }

    if (v20 < 1.0)
    {
      v21 = vcvtq_s64_f64(vmlaq_n_f64(vcvtq_f64_s64(v13), _Q0, v20));
LABEL_6:
      v32 = v21;
      goto LABEL_8;
    }

    v32 = *a3;
  }

LABEL_8:
  v22 = *(a1 + 272);
  v23 = v7;
  if (v22)
  {
    (*(*v22 + 48))(*(a1 + 272), v7, a3);
    v23 = *(a2 + 32);
  }

  v24 = 0.0;
  v25 = v23;
  do
  {
    v24 = v24 + (v25->i64[1] + *(v25[3].i64[1] + 8)) * (*v25[3].i64[1] - v25->i64[0]);
    v25 = v25[3].i64[0];
  }

  while (v25 != v23);
  v26 = fabs(v24 * 0.5);
  if (v26 < 2.0)
  {
    *(v23[3].i64[1] + 48) = 0;
    operator delete();
  }

  v27 = a3[3].i64[0];
  v28 = (a3->i64[1] + v32.i64[1]) * (v32.i64[0] - a3->i64[0]) + (v32.i64[1] + v27[1]) * (*v27 - v32.i64[0]) + (a3->i64[1] + v27[1]) * (a3->i64[0] - *v27);
  v29 = fabs(v28);
  if (v32.i64[0] != v7->i64[0] || (v30 = v7, v31 = v8, v32.i64[1] != v7->i64[1]))
  {
    if (v32.i64[0] != *v8 || (v30 = v7, v31 = v8, v32.i64[1] != v8[1]))
    {
      operator new();
    }
  }

  v8[7] = v30;
  v7[3].i64[0] = v31;
  if (v29 >= 1.0 && (v29 > v26 || v24 * 0.5 <= 0.0 != v28 > 0.0))
  {
    sub_1004CE688();
  }

  if (a3[3].i64[0])
  {
    operator delete();
  }

  operator delete();
}

BOOL sub_1004CF3C0(__int128 *a1, uint64_t *a2)
{
  v3 = 0;
  v4 = a2[6];
  v5 = a1;
  do
  {
    if (v4 == a2 || a2[7] == v4)
    {
      goto LABEL_9;
    }

    v6 = *(v5 + 1);
    v7 = a2;
    while (1)
    {
      v8 = v7[1];
      if (v8 != v6)
      {
        break;
      }

      v7 = v7[6];
      if (v7 == a2)
      {
        v8 = v7[1];
        break;
      }
    }

    if (v8 == v6)
    {
LABEL_9:
      ++v3;
    }

    else
    {
      v11 = 0;
      v12 = v8 < v6;
      v13 = *v5;
      v14 = v7;
LABEL_20:
      v14 = v14[6];
      do
      {
        if (v14 == v7)
        {
          break;
        }

        if (v12)
        {
          do
          {
            if (v14[1] >= v6)
            {
              break;
            }

            v14 = v14[6];
          }

          while (v14 != v7);
        }

        else
        {
          do
          {
            if (v14[1] <= v6)
            {
              break;
            }

            v14 = v14[6];
          }

          while (v14 != v7);
        }

        if (v14 == v7)
        {
          break;
        }

        v15 = *v14;
        v16 = v14[1];
        if (v6 != v16)
        {
          v18 = v14[7];
          v19 = *v18;
          if (v13 < v15 && v13 < v19)
          {
            goto LABEL_45;
          }

          if (v13 > v15 && v13 > v19)
          {
            v11 = 1 - v11;
LABEL_45:
            v12 ^= 1u;
            goto LABEL_20;
          }

          v21 = (v15 - v19) * (v6 - v16) - (v16 - v18[1]) * (v13 - v15);
          if ((v12 ^ (v21 >= 0.0)))
          {
            v11 = 1 - v11;
          }

          if (v21 != 0.0)
          {
            goto LABEL_45;
          }

          goto LABEL_10;
        }

        if (v13 == v15)
        {
          goto LABEL_10;
        }

        v17 = v14[7];
        if (v6 == v17[1] && v13 >= v15 == v13 < *v17)
        {
          goto LABEL_10;
        }

        v14 = v14[6];
      }

      while (v14 != v7);
      if (v8 < v6 == (v12 & 1))
      {
        goto LABEL_50;
      }

      v22 = (*v14 - *v14[7]) * (v6 - v14[1]) - (v14[1] - *(v14[7] + 8)) * (v13 - *v14);
      if ((v12 ^ (v22 >= 0.0)))
      {
        v11 = 1 - v11;
      }

      if (v22 != 0.0)
      {
LABEL_50:
        if (!v11)
        {
          goto LABEL_9;
        }

        --v3;
      }
    }

LABEL_10:
    v5 = *(v5 + 6);
    if (v3 >= 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = -v3;
    }
  }

  while (v5 != a1 && v9 < 2);
  if (v9 >= 2)
  {
    return v3 >> 31;
  }

  sub_1004D26D4(a1, &__p);
  v24 = 0uLL;
  if (__p != v33)
  {
    v25 = vnegq_f64(0);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = vnegq_f64(v26);
    v28 = __p;
    do
    {
      v29 = *v28;
      v28 += 3;
      v27 = vbslq_s8(vcgtq_s64(v27, v29), v29, v27);
      v25 = vbslq_s8(vcgtq_s64(v29, v25), v29, v25);
    }

    while (v28 != v33);
    v30 = vaddq_s64(v27, v25);
    v24 = vshrq_n_s64(vsraq_n_u64(v30, v30, 0x3FuLL), 1uLL);
  }

  v34[0] = v24;
  v34[1] = xmmword_101466148;
  v34[2] = unk_101466158;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  sub_1004D26D4(a2, &__p);
  v23 = sub_1001EDB20(v34, &__p) != 2;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  return v23;
}

void sub_1004CF6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004CF6C0(void *a1)
{
  result = a1[18];
  if (result)
  {
    while (result[23] != a1[23])
    {
      v3 = result[1];
      if (result[7] == v3 || (*a1 == *result ? (v4 = a1[1] == v3) : (v4 = 0), v4))
      {
        result = result[18];
        if (result)
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
LABEL_10:
    result = a1[17];
    if (result)
    {
      while (result[23] != a1[23])
      {
        v5 = result[1];
        if (result[7] != v5 && (*a1 != *result || a1[1] != v5))
        {
          return 0;
        }

        result = result[17];
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004CF758(uint64_t a1, int a2, int a3, char a4)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 33) = a4;
  sub_1004CCD70(a1);
  if (a2 && (v10 = 0, sub_1004CF86C(a1, &v10)))
  {
    while (*(a1 + 221) == 1)
    {
      sub_1004CD4A0(a1, v10);
      while (1)
      {
        v6 = *(a1 + 48);
        if (!v6)
        {
          break;
        }

        *(a1 + 48) = *(v6 + 160);
        sub_1004CFA34(a1, v6);
      }

      if (*(a1 + 176) != *(a1 + 168))
      {
        sub_1004D0650(a1);
        *(a1 + 176) = *(a1 + 168);
      }

      *(a1 + 24) = v10;
      if (!sub_1004CF86C(a1, &v10))
      {
        if (*(a1 + 221))
        {
          sub_1004D0B3C(a1);
          v8 = *(a1 + 221);
          return v8 & 1;
        }

        break;
      }

      sub_1004D0A18(a1, v10);
      sub_1004D0A50(a1, v10);
      while (1)
      {
        v7 = *(a1 + 48);
        if (!v7)
        {
          break;
        }

        *(a1 + 48) = *(v7 + 160);
        sub_1004CFA34(a1, v7);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

BOOL sub_1004CF86C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 120);
  v3 = *(a1 + 112);
  if (v3 == v2)
  {
    return v3 != v2;
  }

  v6 = *v3;
  *a2 = *v3;
  v7 = v2 - v3;
  if (v7 >= 2)
  {
    v8 = 0;
    v9 = v3;
    do
    {
      v10 = &v9[v8 + 1];
      v11 = (2 * v8) | 1;
      v12 = 2 * v8 + 2;
      if (v12 < v7)
      {
        v13 = *v10 < v10[1];
        v10 += v13;
        if (v13)
        {
          v11 = v12;
        }
      }

      *v9 = *v10;
      v9 = v10;
      v8 = v11;
    }

    while (v11 <= ((v7 - 2) >> 1));
    v14 = v2 - 1;
    if (v10 != v2 - 1)
    {
      *v10 = *v14;
      *v14 = v6;
      sub_1004D2624(v3, (v10 + 1), &v27, v10 + 1 - v3);
      v15 = *(a1 + 112);
      v16 = *(a1 + 120);
      goto LABEL_12;
    }

    *v10 = v6;
  }

  v15 = v3;
  v16 = v2;
LABEL_12:
  for (i = v16 - 1; ; --i)
  {
    *(a1 + 120) = i;
    if (v15 == i)
    {
      break;
    }

    v18 = *a2;
    if (*a2 != *v15)
    {
      break;
    }

    v19 = i - v15;
    if (v19 >= 2)
    {
      v20 = 0;
      v21 = v15;
      do
      {
        v22 = &v21[v20 + 1];
        v23 = (2 * v20) | 1;
        v24 = 2 * v20 + 2;
        if (v24 < v19)
        {
          v13 = *v22 < v22[1];
          v22 += v13;
          if (v13)
          {
            v23 = v24;
          }
        }

        *v21 = *v22;
        v21 = v22;
        v20 = v23;
      }

      while (v23 <= ((v19 - 2) >> 1));
      v25 = v16 - 2;
      if (v22 == v25)
      {
        *v22 = v18;
      }

      else
      {
        *v22 = *v25;
        *v25 = v18;
        sub_1004D2624(v15, (v22 + 1), &v28, v22 + 1 - v15);
        v15 = *(a1 + 112);
        i = *(a1 + 120);
      }
    }

    v16 = i;
  }

  return v3 != v2;
}

void sub_1004CFA34(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v134 = 0uLL;
  v135 = xmmword_101466148;
  v136 = unk_101466158;
  v4 = *(a2 + 176);
  v5 = *(a2 + 112);
  v6 = v4[1];
  v129 = *(*(a2 + 184) + 12);
  v7 = v4;
  if (v129 == 1)
  {
    if (v5 <= 0)
    {
      do
      {
        v8 = v7;
        v7 = v7[7];
      }

      while (v7[1] == v6 && (v8[8] & 6) == 0);
    }

    else
    {
      do
      {
        v8 = v7;
        v7 = v7[6];
      }

      while (v7[1] == v6 && (v8[8] & 6) == 0);
    }
  }

  else if (v5 <= 0)
  {
    do
    {
      v8 = v7;
      v7 = v7[7];
    }

    while (v7[1] == v6);
  }

  else
  {
    do
    {
      v8 = v7;
      v7 = v7[6];
    }

    while (v7[1] == v6);
  }

  v9 = *(a2 + 8);
  if ((v8[8] & 4) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v10 == v4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && (v129 & 1) == 0)
  {
    v12 = *(a1 + 280);
    v13 = v5 <= 0;
    v14 = 7;
    if (!v13)
    {
      v14 = 6;
    }

    v15 = v4[v14];
    v17 = *v15;
    v16 = v15[1];
    v18 = *(v15 + 2);
    v137 = *(v15 + 1);
    v138 = v18;
    if (v16 == *(a2 + 56))
    {
      v19 = 0;
      v20 = *(a2 + 48);
      v21 = *a2;
      while (1)
      {
        v22 = v17;
        if (v12)
        {
          a1 = v21 >= v20;
          if (v17 < v20 == a1)
          {
            break;
          }
        }

        *(a2 + 176) = v15;
        *(a2 + 48) = v17;
        *(a2 + 56) = v16;
        v23 = v138;
        *(a2 + 64) = v137;
        *(a2 + 80) = v23;
        if ((v15[8] & 4) == 0)
        {
          v15 = v15[v14];
          v17 = *v15;
          a1 = v15[1];
          v24 = *(v15 + 2);
          v137 = *(v15 + 1);
          v138 = v24;
          v19 = 1;
          v20 = v22;
          if (a1 == v16)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v22 = v20;
      if ((v19 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_31:
      v25 = 1.79769313e308;
      if (v22 > v21)
      {
        v25 = -1.79769313e308;
      }

      v26 = v16 - v9;
      if (v26)
      {
        v25 = (v22 - v21) / v26;
      }

      *(a2 + 104) = v25;
    }
  }

LABEL_36:
  v28 = (a2 + 48);
  v27 = *(a2 + 48);
  v29 = *(a2 + 96);
  if (*a2 == v27)
  {
    v30 = a2;
    do
    {
      v30 = *(v30 + 144);
      v31 = v30 != 0;
    }

    while (v30 && *(v30 + 176) != v10);
    v131 = *(a2 + 96);
    v132 = v131;
  }

  else
  {
    v31 = v29 < v27;
    if (v29 >= v27)
    {
      v32 = *(a2 + 48);
    }

    else
    {
      v32 = *(a2 + 96);
    }

    if (v29 > v27)
    {
      v27 = *(a2 + 96);
    }

    v131 = v32;
    v132 = v27;
  }

  if (*(a2 + 128))
  {
    *&v137 = *(a2 + 96);
    *(&v137 + 1) = v9;
    v33 = *(a2 + 32);
    v138 = *(a2 + 16);
    v139 = v33;
    a1 = sub_1004CE960(a1, a2, &v137);
    if ((*(*(a1 + 64) + 120) & 1) == 0)
    {
      v35 = *(v3 + 176);
      v34 = *(v3 + 184);
      if (v35 >= v34)
      {
        v37 = *(v3 + 168);
        v38 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v37) >> 3);
        v39 = v38 + 1;
        if (v38 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000C1D48();
        }

        v40 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v37) >> 3);
        if (2 * v40 > v39)
        {
          v39 = 2 * v40;
        }

        if (v40 >= 0x555555555555555)
        {
          v41 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          sub_1004D2808(v3 + 168, v41);
        }

        v42 = 24 * v38;
        *v42 = a1;
        *(v42 + 8) = 0;
        *(v42 + 16) = 1;
        v36 = 24 * v38 + 24;
        v43 = *(v3 + 168);
        v44 = *(v3 + 176) - v43;
        v45 = v42 - v44;
        memcpy((v42 - v44), v43, v44);
        a1 = *(v3 + 168);
        *(v3 + 168) = v45;
        *(v3 + 176) = v36;
        *(v3 + 184) = 0;
        if (a1)
        {
          operator delete(a1);
        }
      }

      else
      {
        *v35 = a1;
        *(v35 + 8) = 0;
        *(v35 + 16) = 1;
        v36 = v35 + 24;
      }

      *(v3 + 176) = v36;
    }
  }

  v133 = (a2 + 144);
  v46 = (a2 + 136);
  v130 = (v3 + 40);
  while (1)
  {
    v47 = (a2 + 144);
    if (!v31)
    {
      v47 = (a2 + 136);
    }

    v48 = *v47;
    while (v48)
    {
      v49 = v48;
      if (*(v48 + 176) == v10)
      {
        if (*(a2 + 128))
        {
          if (*(v48 + 196))
          {
            sub_1004CE920(v3, v48);
          }

          while (*(a2 + 176) != v10)
          {
            sub_1004CE960(a1, a2, (a2 + 48));
            sub_1004D1644(v3, a2);
          }

          if (v31)
          {
            sub_1004CE720(v3, a2, v48, (a2 + 48));
          }

          else
          {
            sub_1004CE720(v3, v48, a2, (a2 + 48));
          }
        }

        v105 = *(v48 + 136);
        v104 = *(v48 + 144);
        if (*(v48 + 136) == 0)
        {
          if (*v130 == v48)
          {
            *v130 = v104;
          }
        }

        else
        {
          v106 = (v105 + 144);
          if (!v105)
          {
            v106 = (v3 + 40);
          }

          *v106 = v104;
          if (v104)
          {
            *(v104 + 136) = v105;
          }
        }

        v107 = *v46;
        v108 = *v133;
        if (*v46 | *v133)
        {
          v109 = (v107 + 144);
          if (!v107)
          {
            v109 = (v3 + 40);
          }

          *v109 = v108;
          if (v108)
          {
            *(v108 + 136) = v107;
          }
        }

        else if (*v130 == a2)
        {
          *v130 = v108;
        }

        operator delete();
      }

      v50 = *(a2 + 176);
      if (v10 == v50 && (*(v50 + 64) & 3) == 0)
      {
        v51 = *(v48 + 96);
      }

      else
      {
        v51 = *(v48 + 96);
        if (v31)
        {
          if (v51 > v132)
          {
            break;
          }
        }

        else if (v51 < v131)
        {
          break;
        }

        if (v51 == *v28)
        {
          v52 = *(v48 + 56);
          if (v52 != *(v48 + 8))
          {
            v53 = 56;
            if (*(a2 + 112) > 0)
            {
              v53 = 48;
            }

            v54 = *(v50 + v53);
            v56 = v54[1];
            v55 = v54[2];
            v134 = *v54;
            v135 = v56;
            v136 = v55;
            v57 = *(v48 + 184);
            if (v31)
            {
              if (!*(v57 + 12) || *(v57 + 8) == *(*(a2 + 184) + 8) || *(v48 + 128))
              {
                v58 = *(v48 + 48);
                if (v52 != *(&v134 + 1) && v58 != *v48)
                {
                  v59 = *(v48 + 8);
                  v58 = *v48;
                  if (*(&v134 + 1) != v59)
                  {
                    v58 = *v48 + nearbyint(*(v48 + 104) * (*(&v134 + 1) - v59));
                  }
                }

                if (v58 >= v134)
                {
                  break;
                }
              }

              else
              {
                v82 = *(v48 + 48);
                if (v52 != *(&v134 + 1) && v82 != *v48)
                {
                  v83 = *(v48 + 8);
                  v82 = *v48;
                  if (*(&v134 + 1) != v83)
                  {
                    v82 = *v48 + nearbyint(*(v48 + 104) * (*(&v134 + 1) - v83));
                  }
                }

                if (v82 > v134)
                {
                  break;
                }
              }
            }

            else if (!*(v57 + 12) || *(v57 + 8) == *(*(a2 + 184) + 8) || *(v48 + 128))
            {
              v60 = *(v48 + 48);
              if (v52 != *(&v134 + 1) && v60 != *v48)
              {
                v61 = *(v48 + 8);
                v60 = *v48;
                if (*(&v134 + 1) != v61)
                {
                  v60 = *v48 + nearbyint(*(v48 + 104) * (*(&v134 + 1) - v61));
                }
              }

              if (v60 <= v134)
              {
                break;
              }
            }

            else
            {
              v84 = *(v48 + 48);
              if (v52 != *(&v134 + 1) && v84 != *v48)
              {
                v85 = *(v48 + 8);
                v84 = *v48;
                if (*(&v134 + 1) != v85)
                {
                  v84 = *v48 + nearbyint(*(v48 + 104) * (*(&v134 + 1) - v85));
                }
              }

              if (v84 < v134)
              {
                break;
              }
            }
          }
        }
      }

      v62 = *(a2 + 8);
      *&v134 = v51;
      *(&v134 + 1) = v62;
      v135 = xmmword_101466148;
      v136 = unk_101466158;
      if (v31)
      {
        a1 = sub_1004CDE10(v3, a2, v48, &v134);
        v48 = *(v48 + 144);
        if (v48)
        {
          *(v48 + 136) = a2;
        }

        v63 = *v46;
        if (*v46)
        {
          *(v63 + 144) = v49;
        }

        v49[17] = v63;
        v49[18] = a2;
        *(a2 + 136) = v49;
        *(a2 + 144) = v48;
        v64 = v49;
        v65 = (a2 + 144);
        if (v49[17])
        {
          goto LABEL_109;
        }
      }

      else
      {
        a1 = sub_1004CDE10(v3, v48, a2, &v134);
        v66 = *(a2 + 144);
        if (v66)
        {
          *(v66 + 136) = v48;
        }

        v67 = *(v48 + 136);
        if (v67)
        {
          *(v67 + 144) = a2;
        }

        *(a2 + 136) = v67;
        *(a2 + 144) = v48;
        *(v48 + 136) = a2;
        *(v48 + 144) = v66;
        v64 = a2;
        v65 = (a2 + 136);
        v48 = *(a2 + 136);
        if (v48)
        {
          goto LABEL_109;
        }
      }

      *v130 = v64;
      v48 = *v65;
LABEL_109:
      *(a2 + 96) = v49[12];
      v68 = *(a2 + 128);
      if (v68)
      {
        v69 = *(v68 + 32);
        if (*(v68 + 16) != a2)
        {
          v69 = *(v69 + 48);
        }

        if ((*(*(v69 + 64) + 120) & 1) == 0)
        {
          v70 = *(v3 + 176);
          v71 = *(v3 + 184);
          if (v70 >= v71)
          {
            v73 = *(v3 + 168);
            v74 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v73) >> 3);
            v75 = v74 + 1;
            if (v74 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1000C1D48();
            }

            v76 = 0xAAAAAAAAAAAAAAABLL * ((v71 - v73) >> 3);
            if (2 * v76 > v75)
            {
              v75 = 2 * v76;
            }

            if (v76 >= 0x555555555555555)
            {
              v77 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v77 = v75;
            }

            if (v77)
            {
              sub_1004D2808(v3 + 168, v77);
            }

            v78 = 24 * v74;
            *v78 = v69;
            *(v78 + 8) = 0;
            *(v78 + 16) = 1;
            v72 = 24 * v74 + 24;
            v79 = *(v3 + 168);
            v80 = *(v3 + 176) - v79;
            v81 = v78 - v80;
            memcpy((v78 - v80), v79, v80);
            a1 = *(v3 + 168);
            *(v3 + 168) = v81;
            *(v3 + 176) = v72;
            *(v3 + 184) = 0;
            if (a1)
            {
              operator delete(a1);
            }
          }

          else
          {
            *v70 = v69;
            *(v70 + 8) = 0;
            v72 = v70 + 24;
            *(v70 + 16) = 1;
          }

          *(v3 + 176) = v72;
        }
      }
    }

    v86 = *(a2 + 176);
    if (v129 && (*(v86 + 64) & 3) != 0)
    {
      if (*(a2 + 128))
      {
        sub_1004CE960(a1, a2, (a2 + 48));
        v114 = *(a2 + 128);
        v115 = 24;
        if (*(v114 + 16) == a2)
        {
          v115 = 16;
        }

        *(v114 + v115) = 0;
        *(a2 + 128) = 0;
      }

      v116 = *v46;
      v117 = *v133;
      if (*v46 | *v133)
      {
        v118 = (v116 + 144);
        if (!v116)
        {
          v118 = (v3 + 40);
        }

        *v118 = v117;
        if (v117)
        {
          *(v117 + 136) = v116;
        }
      }

      else if (*v130 == a2)
      {
        *v130 = v117;
      }

      operator delete();
    }

    v87 = 56;
    if (*(a2 + 112) > 0)
    {
      v87 = 48;
    }

    v88 = *(*(v86 + v87) + 8);
    v89 = *(a2 + 128);
    if (v88 != *(a2 + 56))
    {
      break;
    }

    if (v89)
    {
      sub_1004CE960(a1, a2, (a2 + 48));
    }

    sub_1004D1644(v3, a2);
    if (v129 & 1 | ((*(v3 + 280) & 1) == 0))
    {
      v90 = *a2;
      v91 = *(a2 + 48);
    }

    else
    {
      v92 = 6;
      if (*(a2 + 112) <= 0)
      {
        v92 = 7;
      }

      v93 = *(*(a2 + 176) + v92 * 8);
      v94 = v93[1];
      v90 = *a2;
      v91 = *(a2 + 48);
      if (v94 == *(a2 + 8))
      {
        v95 = *v93;
        if (v90 < v91 != v91 < *v93)
        {
          v96 = *(v93 + 2);
          v137 = *(v93 + 1);
          v138 = v96;
          if (v94 == *(a2 + 56) && v95 < v91 != v90 >= v91)
          {
            do
            {
              v91 = v95;
              *(a2 + 176) = v93;
              *(a2 + 48) = v95;
              *(a2 + 56) = v94;
              v97 = v138;
              *(a2 + 64) = v137;
              *(a2 + 80) = v97;
              if ((v93[8] & 4) != 0)
              {
                break;
              }

              v93 = v93[v92];
              v95 = *v93;
              v98 = v93[1];
              v99 = *(v93 + 2);
              v137 = *(v93 + 1);
              v138 = v99;
              if (v98 != v94)
              {
                break;
              }
            }

            while (v95 < v91 != v90 >= v91);
            v100 = 1.79769313e308;
            if (v91 > v90)
            {
              v100 = -1.79769313e308;
            }

            *(a2 + 104) = v100;
          }
        }
      }
    }

    v101 = *(a2 + 96);
    if (v90 == v91)
    {
      v102 = a2;
      v132 = *(a2 + 96);
      do
      {
        v102 = *(v102 + 144);
        v31 = v102 != 0;
      }

      while (v102 && *(v102 + 176) != v10);
      v131 = *(a2 + 96);
    }

    else
    {
      v31 = v101 < v91;
      if (v101 >= v91)
      {
        v103 = v91;
      }

      else
      {
        v103 = *(a2 + 96);
      }

      if (v101 <= v91)
      {
        v101 = v91;
      }

      v131 = v103;
      v132 = v101;
    }
  }

  if (v89)
  {
    v110 = sub_1004CE960(a1, a2, (a2 + 48));
    if ((*(*(v110 + 64) + 120) & 1) == 0)
    {
      v112 = *(v3 + 176);
      v111 = *(v3 + 184);
      if (v112 >= v111)
      {
        v119 = *(v3 + 168);
        v120 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v119) >> 3);
        v121 = v120 + 1;
        if (v120 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000C1D48();
        }

        v122 = 0xAAAAAAAAAAAAAAABLL * ((v111 - v119) >> 3);
        if (2 * v122 > v121)
        {
          v121 = 2 * v122;
        }

        if (v122 >= 0x555555555555555)
        {
          v123 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v123 = v121;
        }

        if (v123)
        {
          sub_1004D2808(v3 + 168, v123);
        }

        v124 = 24 * v120;
        *v124 = v110;
        *(v124 + 8) = 0;
        *(v124 + 16) = 1;
        v113 = 24 * v120 + 24;
        v125 = *(v3 + 168);
        v126 = *(v3 + 176) - v125;
        v127 = v124 - v126;
        memcpy((v124 - v126), v125, v126);
        v128 = *(v3 + 168);
        *(v3 + 168) = v127;
        *(v3 + 176) = v113;
        *(v3 + 184) = 0;
        if (v128)
        {
          operator delete(v128);
        }
      }

      else
      {
        *v112 = v110;
        *(v112 + 8) = 0;
        *(v112 + 16) = 1;
        v113 = v112 + 24;
      }

      *(v3 + 176) = v113;
    }
  }

  sub_1004D1644(v3, a2);
}

void sub_1004D0650(uint64_t a1)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = v2;
    do
    {
      v6 = v5->n128_u64[0];
      v7 = v5->n128_u64[0] + 64;
      do
      {
        v8 = *v7;
        v9 = *(*v7 + 32);
        v7 = *v7 + 8;
      }

      while (!v9);
      v10 = *(v8 + 16);
      v11 = v6[1];
      v12 = v5->n128_u64[0];
      if (v10)
      {
        v13 = v5->n128_u64[0];
        do
        {
          v14 = v13;
          if (v13 == *(v9 + 48))
          {
            break;
          }

          v13 = v13[7];
        }

        while (v13[1] == v11);
        do
        {
          v15 = v6;
          if (v6 == v9)
          {
            break;
          }

          v6 = v6[6];
        }

        while (v6[1] == v11);
      }

      else
      {
        do
        {
          v14 = v12;
          v12 = v12[7];
        }

        while (v12 != v6 && v12[1] == v11);
        do
        {
          v15 = v6;
          v6 = v6[6];
        }

        while (v6 != v14 && v6[1] == v11);
      }

      if (*v14 == *v15)
      {
        goto LABEL_23;
      }

      v16 = *v14 < *v15;
      if (*v14 >= *v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      if (*v14 < *v15)
      {
        v14 = v15;
      }

      v5->n128_u64[0] = v17;
      v5->n128_u64[1] = v14;
      v5[1].n128_u8[0] = v16;
      if (v17[9])
      {
LABEL_23:
        v5->n128_u64[1] = 0;
      }

      else
      {
        v17[9] = v5;
        ++v4;
      }

      v5 = (v5 + 24);
    }

    while (v5 != v3);
    if (v4 >= 2)
    {
      sub_1004D3AFC(v2, v3, &v30, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3)), 1);
      v18 = *(a1 + 168);
      v19 = v18 + 24 * v4;
      if (v18 != v19 - 24)
      {
        do
        {
          v20 = v18 + 24;
          if (v18 + 24 != v19)
          {
            v21 = v18 + 24;
            do
            {
              v22 = *v21;
              if (**v21 < **(v18 + 8))
              {
                v23 = *(v18 + 16);
                if (*(v21 + 16) != v23)
                {
                  v24 = *v18;
                  if (**(v21 + 8) > **v18)
                  {
                    v25 = v24[1];
                    if (v23)
                    {
                      v26 = v24[6];
                      if (v26[1] == v25)
                      {
                        do
                        {
                          v22 = *v21;
                          if (*v26 > **v21)
                          {
                            goto LABEL_39;
                          }

                          *v18 = v26;
                          v26 = v26[6];
                        }

                        while (v26[1] == v25);
                        v22 = *v21;
                      }

LABEL_39:
                      for (i = v22[7]; i[1] == v25; i = i[7])
                      {
                        if (*i > **v18)
                        {
                          break;
                        }

                        *v21 = i;
                      }

                      operator new();
                    }

                    v28 = v24[7];
                    if (v28[1] == v25)
                    {
                      do
                      {
                        v22 = *v21;
                        if (*v28 > **v21)
                        {
                          goto LABEL_47;
                        }

                        *v18 = v28;
                        v28 = v28[7];
                      }

                      while (v28[1] == v25);
                      v22 = *v21;
                    }

LABEL_47:
                    for (j = v22[6]; j[1] == v25 && *j <= **v18; j = j[6])
                    {
                      *v21 = j;
                    }

                    operator new();
                  }
                }
              }

              v21 += 24;
            }

            while (v21 != v19);
          }

          v18 += 24;
        }

        while (v20 != v19 - 24);
      }
    }
  }
}

void sub_1004D0A18(void *a1, uint64_t a2)
{
  if (sub_1004D0EC4(a1, a2))
  {
    sub_1004D1090(a1, v3);
    a1[19] = a1[18];
  }
}

void sub_1004D0A50(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = a1;
    while (1)
    {
      v5 = *(v2 + 48);
      if (*(v2 + 56) != a2)
      {
        break;
      }

      *(v2 + 96) = v5;
      if ((*(*(v2 + 176) + 64) & 4) != 0)
      {
        a1 = sub_1004D1820(v4, v2);
        v2 = a1;
        if (!a1)
        {
          return;
        }
      }

      else
      {
        if (*(v2 + 128))
        {
          sub_1004CE960(a1, v2, (v2 + 48));
        }

        sub_1004D1644(v4, v2);
        if (*(v2 + 56) == *(v2 + 8))
        {
          *(v2 + 160) = v4[6];
          v4[6] = v2;
        }

LABEL_13:
        v2 = *(v2 + 144);
        if (!v2)
        {
          return;
        }
      }
    }

    if (v5 != *v2)
    {
      v5 = *v2;
      v6 = a2 - *(v2 + 8);
      if (v6)
      {
        v5 = *v2 + nearbyint(*(v2 + 104) * v6);
      }
    }

    *(v2 + 96) = v5;
    goto LABEL_13;
  }
}

void sub_1004D0B3C(uint64_t a1)
{
  v1 = *(a1 + 192);
  for (i = *(a1 + 200); v1 != i; v1 += 2)
  {
    v4 = *v1;
    for (j = *(*v1 + 64); j; j = *(j + 8))
    {
      if (*(j + 32))
      {
        break;
      }
    }

    v6 = v1[1];
    for (k = *(v6 + 64); k; k = *(k + 8))
    {
      if (*(k + 32))
      {
        break;
      }
    }

    v13 = k;
    v8 = *(v4 + 48);
    v9 = *(v6 + 56);
    *(v4 + 48) = v6;
    *(v6 + 56) = v4;
    *(v8 + 56) = v9;
    *(v9 + 48) = v8;
    if (j == k)
    {
      sub_1004CE688();
    }

    *(k + 32) = 0;
    if (*(a1 + 33) == 1)
    {
      for (m = *(j + 8); m; *(j + 8) = m)
      {
        if (*(m + 32))
        {
          break;
        }

        m = *(m + 8);
      }

      v11 = j;
      do
      {
        v11 = *(v11 + 8);
        if (v11)
        {
          v12 = v11 == k;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
      if (v11)
      {
        *(j + 8) = *(k + 8);
      }

      *(k + 8) = j;
      sub_1004D0E28(k, j);
    }

    else
    {
      *(k + 8) = j;
    }
  }
}

void sub_1004D0D50(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1000C1D48();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1000F5398(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1004D0E28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (!*(a2 + 48))
    {
      operator new();
    }

    v5 = *v2;
    if (*v2 != v2[1])
    {
      do
      {
        sub_100312260(*(a2 + 48), v5++);
        v2 = *(a1 + 48);
      }

      while (v5 != v2[1]);
      v5 = *v2;
    }

    v2[1] = v5;
  }
}

BOOL sub_1004D0EC4(void *a1, uint64_t a2)
{
  v2 = a1[5];
  if (v2 && v2[18])
  {
    a1[6] = v2;
    v5 = v2;
    do
    {
      v7 = v5[17];
      v6 = v5[18];
      v5[19] = v7;
      v5[20] = v6;
      v5[21] = v6;
      if (*(v5 + 49) == 1)
      {
        v8 = *(v7 + 96);
      }

      else
      {
        v8 = v5[6];
        if (v5[7] != a2 && v8 != *v5)
        {
          v8 = *v5;
          v9 = a2 - v5[1];
          if (v9)
          {
            v8 = *v5 + nearbyint(*(v5 + 13) * v9);
          }
        }
      }

      v5[12] = v8;
      v5 = v6;
    }

    while (v6);
    while (1)
    {
      if (!v2[21])
      {
        return a1[19] != a1[18];
      }

      v10 = 0;
      do
      {
        v11 = v2[21];
        if (!v11)
        {
          break;
        }

        v12 = v2;
        v2 = v11[21];
        v12[21] = v2;
        if (v12 != v11 && v11 != v2)
        {
          v14 = v11;
          v15 = v12;
          do
          {
            if (v14[12] >= v15[12])
            {
              v15 = v15[20];
              v17 = v14;
            }

            else
            {
              v16 = v14;
              do
              {
                v16 = *(v16 + 152);
                sub_1004D1218(a1, v16, v14, a2);
              }

              while (v16 != v15);
              v18 = v14[19];
              v17 = v14[20];
              if (v17)
              {
                v17[19] = v18;
              }

              *(v18 + 160) = v17;
              v19 = v15[19];
              v14[19] = v19;
              if (v19)
              {
                *(v19 + 160) = v14;
              }

              v14[20] = v15;
              v15[19] = v14;
              if (v15 == v12)
              {
                v14[21] = v2;
                if (v10)
                {
                  v10[21] = v14;
                }

                else
                {
                  a1[6] = v14;
                }

                v11 = v17;
                goto LABEL_32;
              }

              v11 = v17;
            }

            v14 = v12;
LABEL_32:
            v20 = v15 == v11 || v17 == v2;
            v12 = v14;
            v14 = v17;
          }

          while (!v20);
        }

        v10 = v12;
      }

      while (v2);
      v2 = a1[6];
      if (!v2)
      {
        return a1[19] != a1[18];
      }
    }
  }

  return 0;
}

void sub_1004D1090(void *a1, __n128 a2)
{
  v3 = a1[18];
  v4 = a1[19];
  v5 = 126 - 2 * __clz((v4 - v3) >> 6);
  *&v26 = sub_1004CC454;
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  sub_100217A94(v3, v4, &v26, v6, 1, a2);
  for (i = a1[18]; i != a1[19]; i += 4)
  {
    v8 = *(i + 6);
    v9 = *(i + 7);
    if (*(v8 + 144) != v9 && *(v8 + 136) != v9)
    {
      v10 = i + 4;
      v11 = *(i + 14);
      v12 = *(i + 15);
      if (*(v11 + 144) != v12)
      {
        v13 = i + 4;
        while (*(v11 + 136) != v12)
        {
          v10 = v13 + 4;
          v11 = *(v13 + 14);
          v12 = *(v13 + 15);
          v13 += 4;
          if (*(v11 + 144) == v12)
          {
            goto LABEL_14;
          }
        }

        v10 = v13;
      }

LABEL_14:
      v26 = *i;
      v14 = v26;
      v27 = i[1];
      v15 = v27;
      v28 = i[2];
      v16 = v28;
      v29 = i[3];
      v17 = v29;
      v19 = v10[2];
      v18 = v10[3];
      v20 = v10[1];
      *i = *v10;
      i[1] = v20;
      i[2] = v19;
      i[3] = v18;
      v10[2] = v16;
      v10[3] = v17;
      *v10 = v14;
      v10[1] = v15;
      v8 = *(i + 6);
      v9 = *(i + 7);
    }

    sub_1004CDE10(a1, v8, v9, i);
    v22 = *(i + 6);
    v21 = *(i + 7);
    v23 = v21[18];
    if (v23)
    {
      *(v23 + 136) = v22;
    }

    v24 = v22[17];
    if (v24)
    {
      *(v24 + 144) = v21;
    }

    v21[17] = v24;
    v21[18] = v22;
    v22[17] = v21;
    v22[18] = v23;
    if (!v21[17])
    {
      a1[5] = v21;
    }

    v25 = *i;
    v22[12] = *i;
    v21[12] = v25;
    sub_1004CDCA0(a1, v21, i, 1);
    sub_1004CE488(a1, *(i + 6), i, 1);
  }
}

void sub_1004D1218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = (v6 - *a2);
  v11 = (v7 - v8);
  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  v15 = *a3;
  v14 = *(a3 + 8);
  v16 = (v12 - *a3);
  v17 = (v13 - v14);
  v46 = xmmword_101466148;
  v47 = unk_101466158;
  v18 = v11 * v16 - v17 * v10;
  if (v18 == 0.0)
  {
    v20 = *(a2 + 96);
    v21 = a4;
    v46 = xmmword_101466148;
    v47 = unk_101466158;
  }

  else
  {
    v19 = ((v9 - v15) * v17 - (v8 - v14) * v16) / v18;
    if (v19 <= 0.0)
    {
      v46 = *(a2 + 16);
      v47 = *(a2 + 32);
      v21 = *(a2 + 8);
      v20 = *a2;
    }

    else if (v19 >= 1.0)
    {
      v46 = *(a2 + 64);
      v47 = *(a2 + 80);
      v21 = *(a2 + 56);
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = (v9 + v19 * v10);
      v21 = (v8 + v19 * v11);
    }
  }

  if (v21 >= a4 && v21 <= a1[3])
  {
    v8 = v21;
    v9 = v20;
    goto LABEL_35;
  }

  v22 = *(a2 + 104);
  v23 = fabs(v22);
  v24 = *(a3 + 104);
  v25 = fabs(v24);
  if (v23 > 100.0 && v25 > 100.0)
  {
    if (v23 <= v25)
    {
LABEL_20:
      if (v12 == v15 && v13 == v14)
      {
        v27 = (a3 + 16);
      }

      else
      {
        v30 = (v17 * (v21 - v14) + (v20 - v15) * v16) / (v16 * v16 + v17 * v17);
        v31 = 0.0;
        if (v30 >= 0.0)
        {
          v31 = (v17 * (v21 - v14) + (v20 - v15) * v16) / (v16 * v16 + v17 * v17);
          if (v30 > 1.0)
          {
            v31 = 1.0;
          }
        }

        v12 = v15 + nearbyint(v31 * v16);
        v13 = v14 + nearbyint(v31 * v17);
        v27 = &xmmword_101466148;
      }

      v46 = *v27;
      v47 = v27[1];
      v8 = v13;
      goto LABEL_34;
    }

    goto LABEL_16;
  }

  if (v23 > 100.0)
  {
LABEL_16:
    if (v6 == v9 && v7 == v8)
    {
      v26 = (a2 + 16);
    }

    else
    {
      v28 = (v11 * (v21 - v8) + (v20 - v9) * v10) / (v10 * v10 + v11 * v11);
      v29 = 0.0;
      if (v28 >= 0.0)
      {
        v29 = (v11 * (v21 - v8) + (v20 - v9) * v10) / (v10 * v10 + v11 * v11);
        if (v28 > 1.0)
        {
          v29 = 1.0;
        }
      }

      v6 = v9 + nearbyint(v29 * v10);
      v7 = v8 + nearbyint(v29 * v11);
      v26 = &xmmword_101466148;
    }

    v46 = *v26;
    v47 = v26[1];
    v8 = v7;
    goto LABEL_28;
  }

  if (v25 > 100.0)
  {
    goto LABEL_20;
  }

  if (v21 >= a4)
  {
    v45 = a1[3];
  }

  else
  {
    v45 = a4;
  }

  if (v23 >= v25)
  {
    if (v13 == v45 || v12 == v15)
    {
      v8 = v45;
LABEL_34:
      v9 = v12;
      goto LABEL_35;
    }

    if (v45 == v14)
    {
      v8 = *(a3 + 8);
      v9 = *a3;
      goto LABEL_35;
    }

    v9 = v15 + nearbyint(v24 * (v45 - v14));
    goto LABEL_63;
  }

  if (v7 == v45 || v6 == v9)
  {
    v8 = v45;
LABEL_28:
    v9 = v6;
    goto LABEL_35;
  }

  if (v45 != v8)
  {
    v9 += nearbyint(v22 * (v45 - v8));
LABEL_63:
    v8 = v45;
  }

LABEL_35:
  v32 = a1[19];
  v33 = a1[20];
  if (v32 >= v33)
  {
    v35 = a1[18];
    v36 = (v32 - v35) >> 6;
    v37 = v36 + 1;
    if ((v36 + 1) >> 58)
    {
      sub_1000C1D48();
    }

    v38 = v33 - v35;
    if (v38 >> 5 > v37)
    {
      v37 = v38 >> 5;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFC0)
    {
      v39 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      sub_1004D5108((a1 + 18), v39);
    }

    v40 = v36 << 6;
    *v40 = v9;
    *(v40 + 8) = v8;
    *(v40 + 16) = v46;
    *(v40 + 32) = v47;
    *(v40 + 48) = a2;
    *(v40 + 56) = a3;
    v34 = (v36 << 6) + 64;
    v41 = a1[18];
    v42 = a1[19] - v41;
    v43 = ((v36 << 6) - v42);
    memcpy(v43, v41, v42);
    v44 = a1[18];
    a1[18] = v43;
    a1[19] = v34;
    a1[20] = 0;
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    *v32 = v9;
    *(v32 + 8) = v8;
    *(v32 + 16) = v46;
    *(v32 + 32) = v47;
    *(v32 + 48) = a2;
    *(v32 + 56) = a3;
    v34 = v32 + 64;
  }

  a1[19] = v34;
}

void sub_1004D1644(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  *(a2 + 16) = *(a2 + 64);
  *(a2 + 32) = v4;
  *a2 = *(a2 + 48);
  v5 = 56;
  if (*(a2 + 112) > 0)
  {
    v5 = 48;
  }

  v6 = *(*(a2 + 176) + v5);
  *(a2 + 176) = v6;
  v7 = *v6;
  v8 = v6[2];
  *(a2 + 64) = v6[1];
  *(a2 + 80) = v8;
  *(a2 + 48) = v7;
  v10 = *a2;
  v9 = *(a2 + 8);
  *(a2 + 96) = *a2;
  v11 = *(a2 + 56);
  if (v11 == v9)
  {
    v12 = 1.79769313e308;
    if (*(a2 + 48) > v10)
    {
      v12 = -1.79769313e308;
    }
  }

  else
  {
    v12 = (*(a2 + 48) - v10) / (v11 - v9);
  }

  *(a2 + 104) = v12;
  if (*(a2 + 196))
  {
    sub_1004CE920(a1, a2);
  }

  if (v11 != v9)
  {
    v14 = a1[15];
    v13 = a1[16];
    if (v14 >= v13)
    {
      v16 = a1[14];
      v17 = v14 - v16;
      v18 = (v14 - v16) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        sub_1000C1D48();
      }

      v20 = v13 - v16;
      if (v20 >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
      v22 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v22 = v19;
      }

      if (v22)
      {
        sub_1000E7D14((a1 + 14), v22);
      }

      v23 = v18;
      v24 = (8 * v18);
      v25 = &v24[-v23];
      *v24 = v11;
      v15 = (v24 + 1);
      memcpy(v25, v16, v17);
      v26 = a1[14];
      a1[14] = v25;
      a1[15] = v15;
      a1[16] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v14 = v11;
      v15 = (v14 + 8);
    }

    a1[15] = v15;
    sub_1004D2624(a1[14], v15, &v27, (v15 - a1[14]) >> 3);
    sub_1004CDCA0(a1, a2, a2, 0);
    sub_1004CE488(a1, a2, a2, 1);
  }
}

uint64_t sub_1004D1820(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  v5 = *(a2 + 176);
  if ((*(v5 + 64) & 3) == 0)
  {
    v11 = a2;
    do
    {
      v11 = *(v11 + 144);
      if (!v11)
      {
        return v4;
      }
    }

    while (*(v11 + 176) != v5);
    if (*(a2 + 196))
    {
      sub_1004CE920(a1, a2);
    }

    if (*(v11 + 196))
    {
      sub_1004CE920(a1, v11);
    }

    if (v4 != v11)
    {
      do
      {
        sub_1004CDE10(a1, a2, v4, (a2 + 48));
        v12 = *(v4 + 144);
        if (v12)
        {
          *(v12 + 136) = a2;
        }

        v13 = *(a2 + 136);
        if (v13)
        {
          *(v13 + 144) = v4;
        }

        *(v4 + 136) = v13;
        *(v4 + 144) = a2;
        *(a2 + 136) = v4;
        *(a2 + 144) = v12;
        if (!*(v4 + 136))
        {
          *(a1 + 40) = v4;
        }

        v4 = v12;
      }

      while (v12 != v11);
    }

    v14 = *(a2 + 128);
    if (*(*(a2 + 184) + 12) == 1)
    {
      if (v14)
      {
        sub_1004CE720(a1, a2, v11, (a2 + 48));
      }

      v15 = *(v11 + 136);
      v16 = *(v11 + 144);
      if (*(v11 + 136) == 0)
      {
        if (*(a1 + 40) != v11)
        {
          goto LABEL_47;
        }
      }

      else if (v15)
      {
        v17 = (v15 + 144);
        goto LABEL_45;
      }

      v17 = (a1 + 40);
LABEL_45:
      *v17 = v16;
      if (v16)
      {
        *(v16 + 136) = v15;
      }

LABEL_47:
      v21 = *(a2 + 136);
      v22 = *(a2 + 144);
      if (*(a2 + 136) == 0)
      {
        if (*(a1 + 40) != a2)
        {
          goto LABEL_61;
        }
      }

      else if (v21)
      {
        v23 = (v21 + 144);
        goto LABEL_59;
      }

      v23 = (a1 + 40);
LABEL_59:
      *v23 = v22;
      if (v22)
      {
        *(v22 + 136) = v21;
      }

LABEL_61:
      operator delete();
    }

    if (v14)
    {
      sub_1004CE720(a1, a2, v11, (a2 + 48));
    }

    v18 = *(a2 + 136);
    v19 = *(a2 + 144);
    if (*(a2 + 136) == 0)
    {
      if (*(a1 + 40) != a2)
      {
        goto LABEL_54;
      }
    }

    else if (v18)
    {
      v20 = (v18 + 144);
      goto LABEL_52;
    }

    v20 = (a1 + 40);
LABEL_52:
    *v20 = v19;
    if (v19)
    {
      *(v19 + 136) = v18;
    }

LABEL_54:
    v24 = *(v11 + 136);
    v25 = *(v11 + 144);
    if (*(v11 + 136) == 0)
    {
      if (*(a1 + 40) != v11)
      {
        goto LABEL_66;
      }
    }

    else if (v24)
    {
      v26 = (v24 + 144);
      goto LABEL_64;
    }

    v26 = (a1 + 40);
LABEL_64:
    *v26 = v25;
    if (v25)
    {
      *(v25 + 136) = v24;
    }

LABEL_66:
    operator delete();
  }

  if (*(a2 + 128))
  {
    sub_1004CE960(a1, a2, (a2 + 48));
  }

  if (*(a2 + 56) != *(a2 + 8))
  {
    v6 = *(a2 + 128);
    if (v6)
    {
      v7 = 24;
      if (*(v6 + 16) == a2)
      {
        v7 = 16;
      }

      *(v6 + v7) = 0;
      *(a2 + 128) = 0;
    }

    v8 = *(a2 + 136);
    v9 = *(a2 + 144);
    if (*(a2 + 136) == 0)
    {
      if (*(a1 + 40) != a2)
      {
        goto LABEL_37;
      }
    }

    else if (v8)
    {
      v10 = (v8 + 144);
      goto LABEL_35;
    }

    v10 = (a1 + 40);
LABEL_35:
    *v10 = v9;
    if (v9)
    {
      *(v9 + 136) = v8;
    }

LABEL_37:
    operator delete();
  }

  return v4;
}

uint64_t sub_1004D1B08(uint64_t result, int a2, char a3, void *a4)
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 48);
    if (v5 == result || (a3 & 1) == 0 && v5 == *(result + 56))
    {
      return 0;
    }

    sub_1004D1CB8(a4, 0);
    if (a2)
    {
      v8 = *(v4 + 16);
      v27 = *v4;
      v28 = v8;
      v29 = *(v4 + 32);
      v9 = (v4 + 56);
    }

    else
    {
      v4 = *(v4 + 48);
      v11 = *(v4 + 16);
      v10 = *(v4 + 32);
      v27 = *v4;
      v28 = v11;
      v29 = v10;
      v9 = (v4 + 48);
    }

    v12 = *v9;
    sub_1001ED9D8(a4, &v27);
    if (v12 != v4)
    {
      if (a2)
      {
        v13 = 7;
      }

      else
      {
        v13 = 6;
      }

      do
      {
        if (*v12 != v27 || v12[1] != *(&v27 + 1))
        {
          v15 = *v12;
          v16 = *(v12 + 2);
          v28 = *(v12 + 1);
          v29 = v16;
          v27 = v15;
          sub_1001ED9D8(a4, &v27);
        }

        v12 = v12[v13];
      }

      while (v12 != v4);
    }

    if (a4[1] - *a4 != 144)
    {
      return 1;
    }

    v18 = v12[6];
    v17 = v12[7];
    if (v18[6] != v17)
    {
      return 1;
    }

    v19 = *v17;
    v20 = *v17 - *v18;
    if (v20 < 0)
    {
      v20 = *v18 - *v17;
    }

    if (v20 <= 1)
    {
      v21 = v17[1] - v18[1];
      if (v21 < 0)
      {
        v21 = v18[1] - v17[1];
      }

      if (v21 < 2)
      {
        return 0;
      }
    }

    v22 = *v12;
    v23 = *v12 - *v18;
    if (v23 < 0)
    {
      v23 = *v18 - *v12;
    }

    if (v23 <= 1)
    {
      v24 = v12[1] - v18[1];
      if (v24 < 0)
      {
        v24 = -v24;
      }

      if (v24 < 2)
      {
        return 0;
      }
    }

    v25 = v22 - v19;
    if (v22 - v19 < 0)
    {
      v25 = v19 - v22;
    }

    if (v25 > 1)
    {
      return 1;
    }

    v26 = v12[1] - v17[1];
    if (v26 < 0)
    {
      v26 = -v26;
    }

    return v26 >= 2;
  }

  return result;
}

void sub_1004D1CB8(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1004D5150(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

uint64_t sub_1004D1CF4(uint64_t a1, int64x2_t *a2)
{
  if (!a2[2].i64[0])
  {
    return 0;
  }

  if (a2[5].i64[1] > a2[4].i64[1] && a2[5].i64[0] > a2[4].i64[0])
  {
    return 1;
  }

  sub_1004CEB74(a1, a2);
  result = a2[2].i64[0];
  if (result)
  {
    result = sub_1004D1B08(result, *(a1 + 281), 0, a2[6].i64);
    if (result)
    {
      v5 = a2[6].i64[0];
      v6.f64[0] = NAN;
      v6.f64[1] = NAN;
      v7 = vnegq_f64(0);
      v8 = vnegq_f64(v6);
      while (v5 != a2[6].i64[1])
      {
        v9 = *v5;
        v5 += 3;
        v8 = vbslq_s8(vcgtq_s64(v8, v9), v9, v8);
        v7 = vbslq_s8(vcgtq_s64(v9, v7), v9, v7);
      }

      a2[4] = v8;
      a2[5] = v7;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1004D1DB0(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v7 = *v3;
    if (*v3)
    {
      while (!*(v7 + 32))
      {
        v7 = *(v7 + 8);
        if (!v7)
        {
          goto LABEL_23;
        }
      }

      if (v7 != a2 && *(v7 + 56) != a2)
      {
        *(v7 + 56) = a2;
        if (*(v7 + 48) && (sub_1004D1DB0(a1, a2) & 1) != 0)
        {
          return 1;
        }

        if (sub_1004D1CF4(a1, v7))
        {
          v8 = v7;
          do
          {
            v8 = *(v8 + 8);
            if (v8)
            {
              v9 = v8 == a2;
            }

            else
            {
              v9 = 1;
            }
          }

          while (!v9);
          if (!v8 && *(a2 + 64) >= *(v7 + 64) && *(a2 + 80) <= *(v7 + 80) && *(a2 + 72) >= *(v7 + 72) && *(a2 + 88) <= *(v7 + 88) && sub_1004CF3C0(*(a2 + 32), *(v7 + 32)))
          {
            break;
          }
        }
      }
    }

LABEL_23:
    if (++v3 == v4)
    {
      return 0;
    }
  }

  *(a2 + 8) = v7;
  return 1;
}

uint64_t sub_1004D1ED0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 40) && *(a2 + 88) > *(a2 + 72) && *(a2 + 80) > *(a2 + 64))
  {
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = result;
    while (1)
    {
      v7 = *(v5 + 48);
      if (v7)
      {
        if (sub_1004D1DB0(v6, a2, v7))
        {
          goto LABEL_21;
        }

        v5 = *(a2 + 8);
      }

      if (*(v5 + 32))
      {
        v8 = sub_1004D1CF4(v6, v5);
        v5 = *(a2 + 8);
        if (v8)
        {
          if (*(a2 + 64) >= *(v5 + 64) && *(a2 + 80) <= *(v5 + 80) && *(a2 + 72) >= *(v5 + 72) && *(a2 + 88) <= *(v5 + 88))
          {
            if (sub_1004CF3C0(*(a2 + 32), *(v5 + 32)))
            {
LABEL_21:
              v9 = *(a2 + 8);
              if (v9)
              {
                result = *(v9 + 40);
                if (!result)
                {
                  sub_1004D1ED0(v6);
                  result = *(*(a2 + 8) + 40);
                  if (!result)
                  {
                    return result;
                  }
                }

LABEL_19:
                result = (*(*result + 16))(result, a2 + 96);
                *(a2 + 40) = result;
                return result;
              }

LABEL_18:
              result = a3;
              goto LABEL_19;
            }

            v5 = *(a2 + 8);
          }
        }
      }

      v5 = *(v5 + 8);
      *(a2 + 8) = v5;
      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_1004D2028(uint64_t a1, const void **a2, const void **a3)
{
  sub_1004D2374(a2, 0);
  sub_1004D241C(a2, (*(a1 + 232) - *(a1 + 224)) >> 3);
  if (a3)
  {
    sub_1004D2374(a3, 0);
    sub_1004D241C(a3, (*(a1 + 232) - *(a1 + 224)) >> 3);
  }

  v7 = *(a1 + 224);
  v6 = *(a1 + 232);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      v10 = *(v9 + 32);
      if (v10)
      {
        __p[0] = 0;
        __p[1] = 0;
        v36 = 0;
        if (a3 && *(v9 + 120) == 1)
        {
          if (sub_1004D1B08(v10, *(a1 + 281), 1, __p))
          {
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v21 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
              v22 = v21 + 1;
              if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
LABEL_39:
                sub_1000C1D48();
              }

              v23 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
              if (2 * v23 > v22)
              {
                v22 = 2 * v23;
              }

              if (v23 >= 0x555555555555555)
              {
                v24 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v24 = v22;
              }

              v41 = a3;
              if (v24)
              {
                sub_1001EE0D8(a3, v24);
              }

              v30 = 24 * v21;
              *v30 = 0;
              *(v30 + 8) = 0;
              *(v30 + 16) = 0;
              *v30 = *__p;
              *(v30 + 16) = v36;
              __p[0] = 0;
              __p[1] = 0;
              v36 = 0;
              v13 = 24 * v21 + 24;
              v31 = a3[1] - *a3;
              v32 = 24 * v21 - v31;
              memcpy((v30 - v31), *a3, v31);
              v33 = *a3;
              *a3 = v32;
              a3[1] = v13;
              v34 = a3[2];
              a3[2] = 0;
              v39 = v33;
              v40 = v34;
              v37 = v33;
              v38 = v33;
              sub_1001EE130(&v37);
            }

            else
            {
              *v11 = 0;
              *(v11 + 1) = 0;
              *(v11 + 2) = 0;
              *v11 = *__p;
              *(v11 + 2) = v36;
              __p[0] = 0;
              __p[1] = 0;
              v36 = 0;
              v13 = (v11 + 24);
            }

            a3[1] = v13;
          }
        }

        else
        {
          sub_1004CEB74(a1, v9);
          if (sub_1004D1B08(*(v9 + 32), *(a1 + 281), 0, __p))
          {
            v14 = a2[1];
            v15 = a2[2];
            if (v14 >= v15)
            {
              v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 3);
              v18 = v17 + 1;
              if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_39;
              }

              v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a2) >> 3);
              if (2 * v19 > v18)
              {
                v18 = 2 * v19;
              }

              if (v19 >= 0x555555555555555)
              {
                v20 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v20 = v18;
              }

              v41 = a2;
              if (v20)
              {
                sub_1001EE0D8(a2, v20);
              }

              v25 = 24 * v17;
              *v25 = 0;
              *(v25 + 8) = 0;
              *(v25 + 16) = 0;
              *v25 = *__p;
              *(v25 + 16) = v36;
              __p[0] = 0;
              __p[1] = 0;
              v36 = 0;
              v16 = 24 * v17 + 24;
              v26 = a2[1] - *a2;
              v27 = 24 * v17 - v26;
              memcpy((v25 - v26), *a2, v26);
              v28 = *a2;
              *a2 = v27;
              a2[1] = v16;
              v29 = a2[2];
              a2[2] = 0;
              v39 = v28;
              v40 = v29;
              v37 = v28;
              v38 = v28;
              sub_1001EE130(&v37);
            }

            else
            {
              *v14 = 0;
              *(v14 + 1) = 0;
              *(v14 + 2) = 0;
              *v14 = *__p;
              *(v14 + 2) = v36;
              __p[0] = 0;
              __p[1] = 0;
              v36 = 0;
              v16 = (v14 + 24);
            }

            a2[1] = v16;
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v7 = *(a1 + 224);
        v6 = *(a1 + 232);
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }
}

void sub_1004D2354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D2374(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1004D52B4(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void *sub_1004D241C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_1001EE0D8(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void sub_1004D24D8(uint64_t a1, uint64_t a2, void *a3)
{
  (*(*a2 + 24))(a2);
  sub_1004D2374(a3, 0);
  if (*(a1 + 220) == 1)
  {
    sub_1004D241C(a3, (*(a1 + 232) - *(a1 + 224)) >> 3);
  }

  v6 = *(a1 + 224);
  if (*(a1 + 232) != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 8 * v7);
      if (v8)
      {
        v9 = v8[2].i64[0];
        if (v9)
        {
          if (v8[7].i8[8] == 1)
          {
            __p = 0;
            v11 = 0;
            v12 = 0;
            if (sub_1004D1B08(v9, *(a1 + 281), 1, &__p))
            {
              sub_1001EDAE0(a3, &__p);
            }

            if (__p)
            {
              v11 = __p;
              operator delete(__p);
            }
          }

          else if (sub_1004D1CF4(a1, v8))
          {
            sub_1004D1ED0(a1, v8, a2);
          }
        }
      }

      ++v7;
      v6 = *(a1 + 224);
    }

    while (v7 < (*(a1 + 232) - v6) >> 3);
  }
}

void sub_1004D2608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D2624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *v5;
    if (*v5 < v8)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v9 = *v5;
      }

      while (*v5 < v7);
      *v6 = v7;
    }
  }

  return result;
}

void *sub_1004D2670(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    operator delete();
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1004D26D4(__int128 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 6);
  v5 = a1;
  if (v4 != a1)
  {
    v6 = *a1;
    v5 = a1;
    do
    {
      v7 = v4;
      v8 = *v4;
      if (v6 != *v4 || v6 != **(v5 + 7))
      {
        v9 = *(v5 + 1);
        if (v9 != *(v7 + 1) || v9 != *(*(v5 + 7) + 8))
        {
          break;
        }
      }

      v4 = *(v7 + 6);
      v6 = v8;
      v5 = v7;
    }

    while (v4 != a1);
  }

  sub_1001ED9D8(a2, v5);
  v10 = *(v5 + 6);
  if (v10 != a1)
  {
    do
    {
      v11 = *(v10 + 6);
      if (*v10 != *v11 || *v10 != *v5)
      {
        v12 = *(v10 + 1);
        if (v12 != *(v11 + 1) || v12 != *(v5 + 1))
        {
          sub_1001ED9D8(a2, v10);
          v11 = *(v10 + 6);
          v5 = v10;
        }
      }

      v10 = v11;
    }

    while (v11 != a1);
  }
}

void sub_1004D27E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D2808(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

double sub_1004D2860(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4 = (v3 - a3[1]);
  v5 = *a3 - *a2;
  v6 = v5 * a1[1] + v4 * *a1 - (v3 * v5 + v4 * *a2);
  return v6 * v6 / (v5 * v5 + v4 * v4);
}

void sub_1004D28B4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1004D29B0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1004D2908(uint64_t a1)
{
  sub_1004D2940(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004D2940(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1004D29B0(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_1004D2A18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = a2 - a1;
    while (1)
    {
      v8 = operator new(8 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  sub_1004D2B14(a1, a2, a3, v6, v11, v7);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_1004D2AFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004D2B14(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = *result;
      v9 = **result;
      v10 = v9[1];
      v11 = *(a2 - 1);
      v12 = *(*v11 + 8);
      if (v10 == v12)
      {
        if (*v9 <= **v11)
        {
          return result;
        }
      }

      else if (v10 >= v12)
      {
        return result;
      }

      *result = v11;
      *(a2 - 1) = v8;
      return result;
    }

    if (a4 <= 0)
    {

      return sub_1004D2D1C(result, a2);
    }

    else
    {
      v17 = a4 >> 1;
      v18 = &result[a4 >> 1];
      if (a4 <= a6)
      {
        sub_1004D2E5C(result, &result[a4 >> 1], a3, a4 >> 1, a5);
        sub_1004D2E5C(&v7[a4 >> 1], a2, a3, a4 - v17, &a5[v17]);
        v20 = a4;
        result = sub_1004D2FE4(a5, &a5[v17], &a5[v17], &a5[a4], v7);
        if (a5)
        {
          return sub_1004D357C(&v20, a5);
        }
      }

      else
      {
        sub_1004D2B14(result, &result[a4 >> 1], a3, a4 >> 1, a5, a6);
        v19 = a4 - v17;
        sub_1004D2B14(v18, a2, a3, v19, a5, a6);

        return sub_1004D3120(v7, v18, a2, a3, v17, v19, a5, a6);
      }
    }
  }

  return result;
}

void sub_1004D2D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    sub_1004D357C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004D2D1C(uint64_t *result, uint64_t *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result;
  v3 = result + 1;
  if (result + 1 == a2)
  {
    return result;
  }

  v4 = 0;
  v5 = result;
  do
  {
    v6 = *v5;
    v5 = v3;
    v7 = *(*v6 + 8);
    v8 = *v3;
    v9 = **v3;
    v10 = v9[1];
    if (v7 == v10)
    {
      if (**v6 <= *v9)
      {
        goto LABEL_21;
      }
    }

    else if (v7 >= v10)
    {
      goto LABEL_21;
    }

    v11 = 0;
    *v3 = 0;
    for (i = v4; ; i -= 8)
    {
      v13 = (v2 + i);
      *v13 = 0;
      v13[1] = v6;
      if (v11)
      {
        operator delete();
      }

      if (!i)
      {
        v16 = v2;
        goto LABEL_19;
      }

      v6 = *(v2 + i - 8);
      v14 = *(*v6 + 8);
      v15 = *(*v8 + 8);
      if (v14 != v15)
      {
        break;
      }

      if (**v6 <= **v8)
      {
        goto LABEL_18;
      }

LABEL_16:
      v11 = *v13;
    }

    if (v14 < v15)
    {
      goto LABEL_16;
    }

LABEL_18:
    v16 = (v2 + i);
LABEL_19:
    result = *v16;
    *v16 = v8;
    if (result)
    {
      operator delete();
    }

LABEL_21:
    ++v3;
    v4 += 8;
  }

  while (v5 + 1 != a2);
  return result;
}

void **sub_1004D2E5C(void **result, void **a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (!a4)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v10 = *result;
    v11 = **result;
    v12 = v11[1];
    v13 = *(a2 - 1);
    v14 = *(*v13 + 8);
    if (v12 == v14)
    {
      if (*v11 <= **v13)
      {
LABEL_7:
        *result = 0;
        *a5 = v10;
        v15 = *(a2 - 1);
        *(a2 - 1) = 0;
LABEL_14:
        a5[1] = v15;
        return result;
      }
    }

    else if (v12 >= v14)
    {
      goto LABEL_7;
    }

    *(a2 - 1) = 0;
    *a5 = v13;
    v15 = *result;
    *result = 0;
    goto LABEL_14;
  }

  if (a4 == 1)
  {
    v9 = *result;
    *result = 0;
    *a5 = v9;
  }

  else if (a4 > 8)
  {
    sub_1004D2B14(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
    sub_1004D2B14(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

    return sub_1004D34EC(v8, &v8[a4 >> 1], &v8[a4 >> 1], a2, a5);
  }

  else
  {

    return sub_1004D3380(result, a2, a5);
  }

  return result;
}

void **sub_1004D2FE4(void **result, void **a2, void **a3, void **a4, void *a5)
{
  if (result == a2)
  {
LABEL_18:
    while (a3 != a4)
    {
      v14 = *a3;
      *a3 = 0;
      result = *a5;
      *a5 = v14;
      if (result)
      {
        operator delete();
      }

      ++a3;
      ++a5;
    }

    return result;
  }

  v7 = result;
  while (a3 != a4)
  {
    v8 = *v7;
    v9 = **v7;
    v10 = v9[1];
    v11 = *a3;
    v12 = **a3;
    v13 = v12[1];
    if (v10 == v13)
    {
      if (*v9 > *v12)
      {
        goto LABEL_10;
      }
    }

    else if (v10 < v13)
    {
LABEL_10:
      *a3 = 0;
      result = *a5;
      *a5 = v11;
      if (result)
      {
        operator delete();
      }

      ++a3;
      goto LABEL_13;
    }

    *v7 = 0;
    result = *a5;
    *a5 = v8;
    if (result)
    {
      operator delete();
    }

    ++v7;
LABEL_13:
    ++a5;
    if (v7 == a2)
    {
      goto LABEL_18;
    }
  }

  while (v7 != a2)
  {
    v15 = *v7;
    *v7 = 0;
    result = *a5;
    *a5 = v15;
    if (result)
    {
      operator delete();
    }

    ++v7;
    ++a5;
  }

  return result;
}

unint64_t *sub_1004D3120(unint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  v9 = a6;
  v13 = result;
  while (2)
  {
    if (v9 <= a8 || a5 <= a8)
    {
      return sub_1004D35EC(v13, a2, a3, a4, a5, v9, a7);
    }

    if (!a5)
    {
      return result;
    }

    v14 = 0;
    v15 = 0;
    v16 = **a2;
    v17 = v16[1];
    while (1)
    {
      v18 = v13[v15];
      v19 = *(*v18 + 8);
      if (v19 != v17)
      {
        break;
      }

      if (**v18 > *v16)
      {
        goto LABEL_13;
      }

LABEL_11:
      ++v15;
      v14 -= 8;
      if (a5 == v15)
      {
        return result;
      }
    }

    if (v19 >= v17)
    {
      goto LABEL_11;
    }

LABEL_13:
    v20 = a5 - v15;
    result = &v13[v14 / 0xFFFFFFFFFFFFFFF8];
    v32 = a8;
    v33 = a4;
    v30 = &v13[v14 / 0xFFFFFFFFFFFFFFF8];
    v31 = a3;
    if (a5 - v15 < v9)
    {
      v21 = v9 / 2;
      v22 = &a2[v9 / 2];
      v23 = sub_1004D3718(result, a2, v22);
      v24 = (v23 - v13 + v14) >> 3;
LABEL_17:
      v13 = v22;
      if (v23 != a2)
      {
        v13 = v23;
        if (a2 != v22)
        {
          v13 = sub_1004D3A74(v23, a2, v22);
        }
      }

      v25 = a5 - v24 - v15;
      v26 = v9 - v21;
      if (v24 + v21 >= v9 + a5 - (v24 + v21) - v15)
      {
        v29 = v13;
        result = sub_1004D3120(v13, v22, v31, v33, v25, v26, a7, v32);
        v13 = v30;
        v22 = v23;
        a4 = v33;
        v26 = v21;
        v25 = v24;
        a8 = v32;
        a3 = v29;
      }

      else
      {
        v27 = v23;
        a4 = v33;
        v28 = v24;
        a8 = v32;
        result = sub_1004D3120(v30, v27, v13, v33, v28, v21, a7, v32);
        a3 = v31;
      }

      a5 = v25;
      v9 = v26;
      a2 = v22;
      if (!v26)
      {
        return result;
      }

      continue;
    }

    break;
  }

  if (a5 - 1 != v15)
  {
    v24 = v20 / 2;
    v23 = &v13[v20 / 2 + v14 / 0xFFFFFFFFFFFFFFF8];
    v22 = sub_1004D3A14(a2, v23, a3 - a2);
    v21 = v22 - a2;
    goto LABEL_17;
  }

  v13[v15] = *a2;
  *a2 = v18;
  return result;
}

void *sub_1004D3380(void *result, void **a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = *result;
    *result = 0;
    v4 = (result + 1);
    *a3 = v3;
    if (result + 1 != a2)
    {
      v5 = 0;
      v6 = a3;
      do
      {
        v7 = v6;
        v9 = *v6++;
        v8 = v9;
        v10 = *v9;
        v11 = *(*v9 + 8);
        v12 = *v4;
        v13 = **v4;
        v14 = v13[1];
        if (v11 == v14)
        {
          if (*v10 > *v13)
          {
            goto LABEL_8;
          }
        }

        else if (v11 < v14)
        {
LABEL_8:
          *v7 = 0;
          v7[1] = v8;
          v15 = a3;
          if (v7 != a3)
          {
            v16 = v5;
            do
            {
              v17 = (a3 + v16);
              v18 = *(a3 + v16 - 8);
              v19 = *(*v18 + 8);
              v20 = **v4;
              v21 = v20[1];
              if (v19 == v21)
              {
                if (**v18 <= *v20)
                {
                  v15 = v7;
                  goto LABEL_19;
                }
              }

              else if (v19 >= v21)
              {
                v15 = (a3 + v16);
                goto LABEL_19;
              }

              v22 = *v17;
              *(v17 - 1) = 0;
              *v17 = v18;
              if (v22)
              {
                operator delete();
              }

              --v7;
              v16 -= 8;
            }

            while (v16);
            v15 = a3;
          }

LABEL_19:
          v23 = *v4;
          *v4 = 0;
          result = *v15;
          *v15 = v23;
          if (result)
          {
            operator delete();
          }

          goto LABEL_21;
        }

        *v4 = 0;
        *v6 = v12;
LABEL_21:
        ++v4;
        v5 += 8;
      }

      while (v4 != a2);
    }
  }

  return result;
}

void **sub_1004D34EC(void **result, void **a2, void **a3, void **a4, void *a5)
{
  while (result != a2)
  {
    if (a3 == a4)
    {
      while (result != a2)
      {
        v12 = *result;
        *result++ = 0;
        *a5++ = v12;
      }

      return result;
    }

    v5 = *result;
    v6 = **result;
    v7 = v6[1];
    v8 = *a3;
    v9 = **a3;
    v10 = v9[1];
    if (v7 == v10)
    {
      if (*v6 <= *v9)
      {
        goto LABEL_5;
      }
    }

    else if (v7 >= v10)
    {
LABEL_5:
      *result++ = 0;
      *a5 = v5;
      goto LABEL_8;
    }

    *a3++ = 0;
    *a5 = v8;
LABEL_8:
    ++a5;
  }

  while (a3 != a4)
  {
    v11 = *a3;
    *a3++ = 0;
    *a5++ = v11;
  }

  return result;
}

unint64_t *sub_1004D357C(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = 0;
    do
    {
      result = *(a2 + 8 * v3);
      *(a2 + 8 * v3) = 0;
      if (result)
      {
        operator delete();
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

unint64_t *sub_1004D35EC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a5 <= a6)
  {
    if (a1 == a2)
    {
      v12 = 0;
      v13 = a7;
    }

    else
    {
      v12 = 0;
      v13 = a7;
      v17 = a1;
      do
      {
        v18 = *v17;
        *v17++ = 0;
        *v13++ = v18;
        ++v12;
      }

      while (v17 != a2);
    }

    v19 = v12;
    result = sub_1004D377C(a7, v13, a2, a3, a1);
  }

  else
  {
    if (a2 == a3)
    {
      v10 = 0;
      v11 = a7;
    }

    else
    {
      v10 = 0;
      v11 = a7;
      v14 = a2;
      do
      {
        v15 = *v14;
        *v14++ = 0;
        *v11++ = v15;
        ++v10;
      }

      while (v14 != a3);
    }

    v19 = v10;
    result = sub_1004D387C(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    return sub_1004D357C(&v19, a7);
  }

  return result;
}

void sub_1004D36F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1004D357C((v2 - 24), v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1004D3718(void **result, void **a2, void **a3)
{
  if (a2 != result)
  {
    v3 = a2 - result;
    v4 = **a3;
    v5 = v4[1];
    while (1)
    {
      v6 = v3 >> 1;
      v7 = &result[v3 >> 1];
      v8 = **v7;
      v9 = v8[1];
      if (v9 == v5)
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      v3 = v6;
      if (!v6)
      {
        return result;
      }
    }

    if (*v8 > *v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = v7 + 1;
    v6 = v3 + ~v6;
    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_1004D377C(uint64_t *result, uint64_t *a2, void **a3, void **a4, uint64_t *a5)
{
  if (result != a2)
  {
    v17 = v5;
    v18 = v6;
    v9 = result;
    do
    {
      if (a3 == a4)
      {
        return sub_1004D3994(&v16, v9, a2, a5);
      }

      v10 = *v9;
      v11 = **v9;
      v12 = v11[1];
      v13 = *a3;
      v14 = **a3;
      v15 = v14[1];
      if (v12 == v15)
      {
        if (*v11 > *v14)
        {
          goto LABEL_10;
        }
      }

      else if (v12 < v15)
      {
LABEL_10:
        *a3 = 0;
        result = *a5;
        *a5 = v13;
        if (result)
        {
          operator delete();
        }

        ++a3;
        goto LABEL_13;
      }

      *v9 = 0;
      result = *a5;
      *a5 = v10;
      if (result)
      {
        operator delete();
      }

      ++v9;
LABEL_13:
      ++a5;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t sub_1004D387C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (a2 == a4)
  {
    return result;
  }

  v10 = a2;
  while (a6 != a8)
  {
    v13 = a6 - 1;
    v12 = *(a6 - 1);
    v14 = *(v10 - 1);
    v15 = *(*v12 + 8);
    v16 = *(*v14 + 8);
    if (v15 == v16)
    {
      if (**v12 > **v14)
      {
        goto LABEL_11;
      }
    }

    else if (v15 < v16)
    {
LABEL_11:
      *v13 = 0;
      result = *(a10 - 8);
      *(a10 - 8) = v12;
      if (result)
      {
LABEL_7:
        operator delete();
      }

      goto LABEL_8;
    }

    *(v10 - 1) = 0;
    result = *(a10 - 8);
    *(a10 - 8) = v14;
    v13 = a6;
    --v10;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_8:
    a10 -= 8;
    a6 = v13;
    if (v10 == a4)
    {
      return result;
    }
  }

  if (a4 != v10)
  {
    v18 = -8;
    do
    {
      v19 = *--v10;
      *v10 = 0;
      result = *(a10 + v18);
      *(a10 + v18) = v19;
      if (result)
      {
        operator delete();
      }

      v18 -= 8;
    }

    while (v10 != a4);
  }

  return result;
}

uint64_t *sub_1004D3994(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      *v5 = 0;
      v7 = *a4;
      *a4 = v6;
      if (v7)
      {
        operator delete();
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_1004D3A14(void **result, void **a2, unint64_t a3)
{
  if (a3)
  {
    v3 = **a2;
    v4 = v3[1];
    while (1)
    {
      v5 = a3 >> 1;
      v6 = &result[a3 >> 1];
      v7 = **v6;
      v8 = v7[1];
      if (v4 != v8)
      {
        break;
      }

      if (*v3 > *v7)
      {
        goto LABEL_5;
      }

LABEL_6:
      a3 = v5;
      if (!v5)
      {
        return result;
      }
    }

    if (v4 >= v8)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = v6 + 1;
    v5 = a3 + ~v5;
    goto LABEL_6;
  }

  return result;
}

uint64_t *sub_1004D3A74(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  *a1 = *a2;
  result = a1 + 1;
  for (i = a2; ; *result++ = *i)
  {
    *i++ = v3;
    if (i == a3)
    {
      break;
    }

    if (result == a2)
    {
      a2 = i;
    }

    v3 = *result;
  }

  if (result != a2)
  {
    v6 = result;
    v7 = a2;
    while (1)
    {
      v8 = v6;
      while (1)
      {
        v9 = *v6;
        *v8++ = *v7;
        *v7++ = v9;
        if (v7 != a3)
        {
          break;
        }

        v6 = v8;
        v7 = a2;
        if (v8 == a2)
        {
          return result;
        }
      }

      if (v8 == a2)
      {
        a2 = v7;
      }

      ++v6;
    }
  }

  return result;
}

__n128 sub_1004D3AFC(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = &a2[-2].n128_u64[1];
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v26 = a2[-1].n128_u64[0];
        if (v26 && *(v10 + 1))
        {
          if (**v10 <= **v9)
          {
            return result;
          }
        }

        else if (!v26)
        {
          return result;
        }

        v38 = *(v10 + 2);
        v35 = *v10;
        v28 = *v9;
        *(v10 + 16) = a2[-1].n128_u8[8];
        *v10 = v28;
        result = v35;
        *v9 = v35;
        a2[-1].n128_u8[8] = v38;
        return result;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      sub_1004D4018(v10, v10 + 3, v10 + 3);
      v27 = a2[-1].n128_u64[0];
      if (v27 && *(v10 + 7))
      {
        if (**(v10 + 6) <= **v9)
        {
          return result;
        }
      }

      else if (!v27)
      {
        return result;
      }

      result = v10[3];
      v29 = *(v10 + 8);
      v30 = a2[-1].n128_u8[8];
      v10[3] = *v9;
      *(v10 + 64) = v30;
      a2[-1].n128_u8[8] = v29;
      *v9 = result;
      v31 = *(v10 + 7);
      if (v31 && *(v10 + 4))
      {
        if (**(v10 + 3) <= **(v10 + 6))
        {
          return result;
        }
      }

      else if (!v31)
      {
        return result;
      }

      result = *(v10 + 24);
      *(v10 + 24) = v10[3];
      v32 = *(v10 + 4);
      v33 = *(v10 + 5);
      *(v10 + 40) = *(v10 + 64);
      v10[3] = result;
      *(v10 + 64) = v33;
      if (v32 && *(v10 + 1))
      {
        if (**v10 <= **(v10 + 3))
        {
          return result;
        }
      }

      else if (!v32)
      {
        return result;
      }

      v39 = *(v10 + 2);
      v36 = *v10;
      *v10 = *(v10 + 24);
      *(v10 + 16) = *(v10 + 40);
      result = v36;
      *(v10 + 24) = v36;
      *(v10 + 40) = v39;
      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_1004D41B0(v10, v10 + 24, (v10 + 3), v10 + 72, &a2[-2].n128_i64[1]).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_1004D4434(v10, a2);
      }

      else
      {

        sub_1004D4518(v10, a2);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_1004D4C24(v10, a2, a2, a3);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v10 + 3 * (v14 >> 1);
    if (v13 < 0xC01)
    {
      sub_1004D4018((v10 + 24 * v15), v10, &a2[-2].n128_i8[8]);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1004D4018(v10, v10 + 3 * v15, &a2[-2].n128_i8[8]);
      v17 = 3 * v15;
      v18 = v10 + 3 * v15 - 3;
      sub_1004D4018((v10 + 24), v18, &a2[-3]);
      v19 = v10 + v17 + 3;
      sub_1004D4018((a1 + 48), v19, &a2[-5].n128_i8[8]);
      sub_1004D4018(v18, v16, v19);
      v37 = *(a1 + 16);
      v34 = *a1;
      v20 = *v16;
      *(a1 + 16) = *(v16 + 16);
      *a1 = v20;
      *(v16 + 16) = v37;
      *v16 = v34;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v21 = *(a1 - 16);
    if (v21 && *(a1 + 8))
    {
      if (**a1 <= **(a1 - 24))
      {
        goto LABEL_25;
      }
    }

    else if (!v21)
    {
LABEL_25:
      v10 = sub_1004D45B8(a1, a2);
      goto LABEL_26;
    }

LABEL_21:
    v22 = sub_1004D4764(a1, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }

    v24 = sub_1004D4910(a1, v22);
    v10 = (v22 + 24);
    if (sub_1004D4910(v22 + 24, a2))
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_24:
      sub_1004D3AFC(a1, v22, a3, -v12, a5 & 1);
      v10 = (v22 + 24);
LABEL_26:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  sub_1004D4018(v10, v10 + 3, &a2[-2].n128_i8[8]);
  return result;
}

uint64_t sub_1004D4018(__int128 *a1, uint64_t **a2, __int128 *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *(a1 + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (v3)
    {
      goto LABEL_10;
    }

    if (*(a3 + 1))
    {
LABEL_24:
      v15 = *a2;
      v16 = a2[2];
      v17 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v17;
      *(a3 + 16) = v16;
      *a3 = v15;
      v18 = a2[1];
      if (v18 && *(a1 + 1))
      {
        if (**a1 <= **a2)
        {
          return 1;
        }
      }

      else if (!v18)
      {
        return 1;
      }

      v21 = *a1;
      v22 = *(a1 + 2);
      v23 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v23;
      *(a2 + 16) = v22;
      *a2 = v21;
      return 1;
    }

    return 0;
  }

  v5 = **a2;
  if (**a1 <= v5)
  {
    if (*(a3 + 1) && v5 > **a3)
    {
      goto LABEL_24;
    }

    return 0;
  }

LABEL_10:
  v6 = *(a3 + 1);
  if (v3)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

LABEL_16:
    v8 = *a1;
    v9 = *(a1 + 2);
    v10 = *(a3 + 16);
    *a1 = *a3;
    *(a1 + 16) = v10;
LABEL_31:
    *(a3 + 16) = v9;
    *a3 = v8;
    return 1;
  }

  if (**a2 > **a3)
  {
    goto LABEL_16;
  }

LABEL_18:
  v11 = *a1;
  v12 = *(a1 + 2);
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  *(a2 + 16) = v12;
  *a2 = v11;
  v14 = *(a3 + 1);
  if (v14 && a2[1])
  {
    if (**a2 <= **a3)
    {
      return 1;
    }

    goto LABEL_30;
  }

  if (v14)
  {
LABEL_30:
    v8 = *a2;
    v9 = a2[2];
    v20 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v20;
    goto LABEL_31;
  }

  return 1;
}

__n128 sub_1004D41B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004D4018(a1, a2, a3);
  v11 = *(a4 + 8);
  if (v11)
  {
    v12 = *(a3 + 8) == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else if (**a3 <= **a4)
  {
    goto LABEL_20;
  }

  result = *a3;
  v13 = *(a3 + 16);
  v14 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v14;
  *(a4 + 16) = v13;
  *a4 = result;
  v15 = *(a3 + 8);
  if (v15 && *(a2 + 8))
  {
    if (**a2 <= **a3)
    {
      goto LABEL_20;
    }
  }

  else if (!v15)
  {
    goto LABEL_20;
  }

  result = *a2;
  v16 = *(a2 + 16);
  v17 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v17;
  *(a3 + 16) = v16;
  *a3 = result;
  v18 = *(a2 + 8);
  if (v18 && *(a1 + 8))
  {
    if (**a1 <= **a2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v18)
  {
LABEL_19:
    result = *a1;
    v19 = *(a1 + 16);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    *(a2 + 16) = v19;
    *a2 = result;
  }

LABEL_20:
  v21 = *(a5 + 8);
  if (v21 && *(a4 + 8))
  {
    if (**a4 <= **a5)
    {
      return result;
    }
  }

  else if (!v21)
  {
    return result;
  }

  result = *a4;
  v22 = *(a4 + 16);
  v23 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v23;
  *(a5 + 16) = v22;
  *a5 = result;
  v24 = *(a4 + 8);
  if (v24 && *(a3 + 8))
  {
    if (**a3 <= **a4)
    {
      return result;
    }
  }

  else if (!v24)
  {
    return result;
  }

  result = *a3;
  v25 = *(a3 + 16);
  v26 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v26;
  *(a4 + 16) = v25;
  *a4 = result;
  v27 = *(a3 + 8);
  if (v27 && *(a2 + 8))
  {
    if (**a2 <= **a3)
    {
      return result;
    }
  }

  else if (!v27)
  {
    return result;
  }

  result = *a2;
  v28 = *(a2 + 16);
  v29 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v29;
  *(a3 + 16) = v28;
  *a3 = result;
  v30 = *(a2 + 8);
  if (!v30 || !*(a1 + 8))
  {
    if (!v30)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (**a1 > **a2)
  {
LABEL_40:
    result = *a1;
    v31 = *(a1 + 16);
    v32 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v32;
    *(a2 + 16) = v31;
    *a2 = result;
  }

  return result;
}

uint64_t sub_1004D4434(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = *(v5 + 32);
        if (v6)
        {
          v7 = *(v5 + 8) == 0;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          if (v6)
          {
            v8 = *v4;
LABEL_12:
            v9 = *(v5 + 40);
            *v4 = *v5;
            *(v4 + 16) = *(v5 + 16);
            v10 = result;
            if (v5 != result)
            {
              v11 = v3;
              while (1)
              {
                v12 = result + v11;
                v13 = (result + v11 - 24);
                if (*(result + v11 - 16))
                {
                  if (**v13 <= *v8)
                  {
                    break;
                  }
                }

                *v12 = *v13;
                *(v12 + 16) = *(result + v11 - 8);
                v11 -= 24;
                if (!v11)
                {
                  v10 = result;
                  goto LABEL_19;
                }
              }

              v10 = result + v11;
            }

LABEL_19:
            *v10 = v8;
            *(v10 + 8) = v6;
            *(v10 + 16) = v9;
          }
        }

        else
        {
          v8 = *v4;
          if (**v5 > **v4)
          {
            goto LABEL_12;
          }
        }

        v2 = v4 + 24;
        v3 += 24;
      }

      while (v4 + 24 != a2);
    }
  }

  return result;
}

void **sub_1004D4518(void **result, void **a2)
{
  if (result != a2)
  {
    while (1)
    {
      while (1)
      {
        if (result + 3 == a2)
        {
          return result;
        }

        v2 = result;
        result += 3;
        v3 = v2[4];
        if (!v3 || v2[1] == 0)
        {
          break;
        }

        v5 = *result;
        if (**v2 > **result)
        {
          goto LABEL_11;
        }
      }

      if (v3)
      {
        v5 = *result;
LABEL_11:
        v6 = *(v2 + 40);
        do
        {
          do
          {
            v7 = v2;
            *(v2 + 3) = *v2;
            *(v2 + 40) = *(v2 + 16);
            v2 -= 3;
          }

          while (!v3);
        }

        while (!*(v7 - 2) || **v2 > *v5);
        *v7 = v5;
        v7[1] = v3;
        *(v7 + 16) = v6;
      }
    }
  }

  return result;
}

__int128 *sub_1004D45B8(uint64_t a1, __int128 *j)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(j - 2);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else if (**(j - 3) <= *v2)
  {
LABEL_15:
    for (i = (a1 + 24); i < j; i = (i + 24))
    {
      if (v3 && *(i + 1))
      {
        if (**i > *v2)
        {
          goto LABEL_23;
        }
      }

      else if (v3)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_23;
  }

  i = (a1 + 24);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(i + 1))
  {
    if (**i <= *v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_11:
    while (!v3)
    {
LABEL_12:
      i = (i + 24);
      if (v3)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_23:
  if (i < j)
  {
    v7 = j - 5;
    if (!v3)
    {
      goto LABEL_28;
    }

    while (1)
    {
      if (v4)
      {
        if (*v7[2] <= *v2)
        {
          goto LABEL_30;
        }
      }

      else
      {
LABEL_28:
        if (!v3)
        {
LABEL_30:
          j = (v7 + 2);
          break;
        }
      }

      v8 = *v7;
      v7 -= 3;
      v4 = v8;
    }
  }

  v9 = *(a1 + 16);
  while (i < j)
  {
    v14 = *(i + 2);
    v13 = *i;
    v10 = *j;
    *(i + 16) = *(j + 16);
    *i = v10;
    *(j + 16) = v14;
    *j = v13;
    do
    {
      while (1)
      {
        i = (i + 24);
        if (!v3 || !*(i + 1))
        {
          break;
        }

        if (**i > *v2)
        {
          goto LABEL_39;
        }
      }
    }

    while (!v3);
LABEL_39:
      ;
    }
  }

  if ((i - 24) != a1)
  {
    v11 = *(i - 24);
    *(a1 + 16) = *(i - 8);
    *a1 = v11;
  }

  *(i - 3) = v2;
  *(i - 2) = v3;
  *(i - 8) = v9;
  return i;
}

unint64_t sub_1004D4764(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  while (1)
  {
    v6 = *(a1 + v2 + 32);
    if (v6 && v4 != 0)
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_10:
    v2 += 24;
  }

  if (*v3 > **(a1 + v2 + 24))
  {
    goto LABEL_10;
  }

LABEL_11:
  v8 = a1 + v2 + 24;
  if (v2)
  {
    do
    {
      while (1)
      {
        a2 -= 24;
        v9 = *(a2 + 8);
        if (v9 && v4 != 0)
        {
          break;
        }

        if (v9)
        {
          goto LABEL_38;
        }
      }
    }

    while (*v3 <= **a2);
  }

  else if (v8 < a2)
  {
    do
    {
      while (1)
      {
        a2 -= 24;
        v11 = *(a2 + 8);
        if (!v11 || v4 == 0)
        {
          break;
        }

        if (*v3 > **a2 || v8 >= a2)
        {
          goto LABEL_38;
        }
      }

      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = v8 >= a2;
      }
    }

    while (!v13);
  }

LABEL_38:
  v15 = v8;
  if (v8 < a2)
  {
    v16 = a2;
    do
    {
      v25 = *(v15 + 16);
      v24 = *v15;
      v17 = *v16;
      *(v15 + 16) = *(v16 + 16);
      *v15 = v17;
      *(v16 + 16) = v25;
      *v16 = v24;
      do
      {
        while (1)
        {
          v15 += 24;
          v18 = *(v15 + 8);
          if (v18 && v4 != 0)
          {
            break;
          }

          if (!v18)
          {
            goto LABEL_51;
          }
        }
      }

      while (*v3 > **v15);
      do
      {
LABEL_51:
        while (1)
        {
          v16 -= 24;
          v20 = *(v16 + 8);
          if (!v20 || v4 == 0)
          {
            break;
          }

          if (*v3 > **v16)
          {
            goto LABEL_57;
          }
        }
      }

      while (!v20);
LABEL_57:
      ;
    }

    while (v15 < v16);
  }

  if (v15 - 24 != a1)
  {
    v22 = *(v15 - 24);
    *(a1 + 16) = *(v15 - 8);
    *a1 = v22;
  }

  *(v15 - 24) = v3;
  *(v15 - 16) = v4;
  *(v15 - 8) = v5;
  return v15 - 24;
}

BOOL sub_1004D4910(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1004D4018(a1, (a1 + 24), (a2 - 24));
        return 1;
      case 4:
        v18 = (a2 - 24);
        sub_1004D4018(a1, (a1 + 24), (a1 + 48));
        v19 = *(a2 - 16);
        if (v19 && *(a1 + 56))
        {
          if (**(a1 + 48) <= **v18)
          {
            return 1;
          }
        }

        else if (!v19)
        {
          return 1;
        }

        v23 = *(a1 + 48);
        v24 = *(a1 + 64);
        v25 = *(a2 - 8);
        *(a1 + 48) = *v18;
        *(a1 + 64) = v25;
        *(a2 - 8) = v24;
        *v18 = v23;
        v26 = *(a1 + 56);
        if (v26 && *(a1 + 32))
        {
          if (**(a1 + 24) <= **(a1 + 48))
          {
            return 1;
          }
        }

        else if (!v26)
        {
          return 1;
        }

        v27 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v27;
        *(a1 + 64) = v29;
        if (v28 && *(a1 + 8))
        {
          if (**a1 <= **(a1 + 24))
          {
            return 1;
          }
        }

        else if (!v28)
        {
          return 1;
        }

        v31 = *(a1 + 16);
        v32 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        return 1;
      case 5:
        sub_1004D41B0(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
        return 1;
    }

LABEL_13:
    v7 = a1 + 48;
    sub_1004D4018(a1, (a1 + 24), (a1 + 48));
    v8 = a1 + 72;
    if (a1 + 72 == a2)
    {
      return 1;
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(v8 + 8);
      if (v11)
      {
        v12 = *(v7 + 8) == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (!v11)
        {
          goto LABEL_30;
        }

        v13 = *v8;
      }

      else
      {
        v13 = *v8;
        if (**v7 <= **v8)
        {
          goto LABEL_30;
        }
      }

      v14 = *(v8 + 16);
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      v15 = v9;
      while (1)
      {
        v16 = a1 + v15;
        if (*(a1 + v15 + 32))
        {
          if (**(v16 + 24) <= *v13)
          {
            break;
          }
        }

        *(v16 + 48) = *(v16 + 24);
        *(v16 + 64) = *(v16 + 40);
        v15 -= 24;
        if (v15 == -48)
        {
          v17 = a1;
          goto LABEL_29;
        }
      }

      v17 = a1 + v15 + 48;
LABEL_29:
      *v17 = v13;
      *(v17 + 8) = v11;
      *(v17 + 16) = v14;
      if (++v10 == 8)
      {
        return v8 + 24 == a2;
      }

LABEL_30:
      v7 = v8;
      v9 += 24;
      v8 += 24;
      if (v8 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_13;
  }

  v5 = (a2 - 24);
  v6 = *(a2 - 16);
  if (v6 && *(a1 + 8))
  {
    if (**a1 <= **v5)
    {
      return 1;
    }

    goto LABEL_37;
  }

  if (v6)
  {
LABEL_37:
    v20 = *a1;
    v21 = *(a1 + 16);
    v22 = *(a2 - 8);
    *a1 = *v5;
    *(a1 + 16) = v22;
    *(a2 - 8) = v21;
    *v5 = v20;
  }

  return 1;
}

__n128 *sub_1004D4C24(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        sub_1004D4E00(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      while (1)
      {
        v14 = v13->n128_i64[1];
        if (v14 && a1->n128_u64[1] != 0)
        {
          break;
        }

        if (v14)
        {
          goto LABEL_13;
        }

LABEL_14:
        v13 = (v13 + 24);
        if (v13 == a3)
        {
          goto LABEL_18;
        }
      }

      if (*a1->n128_u64[0] <= *v13->n128_u64[0])
      {
        goto LABEL_14;
      }

LABEL_13:
      v16 = *v13;
      v17 = v13[1].n128_i64[0];
      v18 = a1[1].n128_u8[0];
      *v13 = *a1;
      v13[1].n128_u8[0] = v18;
      a1[1].n128_u8[0] = v17;
      *a1 = v16;
      sub_1004D4E00(a1, a4, v9, a1);
      goto LABEL_14;
    }

LABEL_18:
    if (v8 >= 25)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v20 = (a2 - 24);
      do
      {
        v25 = *a1;
        v26 = a1[1].n128_u64[0];
        sub_1004D4F98(a1, a4, v19);
        if (v20 == v21)
        {
          *v21 = v25;
          v21[1].n128_u8[0] = v26;
        }

        else
        {
          v22 = *v20;
          v21[1].n128_u8[0] = v20[1].n128_u8[0];
          *v21 = v22;
          *v20 = v25;
          v20[1].n128_u8[0] = v26;
          sub_1004D5030(a1, &v21[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v21[1].n128_i8[8] - a1) >> 3));
        }

        v20 = (v20 - 24);
      }

      while (v19-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_1004D4E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
  {
    return result;
  }

  v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
  v6 = (result + 24 * v5);
  if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
  {
    v7 = *(v6 + 1);
    if (v7)
    {
      v8 = *(v6 + 4) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    else if (**(v6 + 3) <= **v6)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 24);
    v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
  }

LABEL_11:
  v9 = *(v6 + 1);
  v10 = *(a4 + 8);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (v9)
    {
      return result;
    }

    v12 = *a4;
  }

  else
  {
    v12 = *a4;
    if (**a4 > **v6)
    {
      return result;
    }
  }

  v13 = *(a4 + 16);
  v14 = *(v6 + 16);
  *a4 = *v6;
  *(a4 + 16) = v14;
  if (v4 >= v5)
  {
    while (1)
    {
      v16 = 2 * v5;
      v5 = (2 * v5) | 1;
      v15 = (result + 24 * v5);
      v17 = v16 + 2;
      if (v17 < a3)
      {
        v18 = *(v15 + 1);
        if (v18)
        {
          v19 = *(v15 + 4) == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          if (**(v15 + 3) <= **v15)
          {
            goto LABEL_34;
          }

LABEL_33:
          v15 = (v15 + 24);
          v5 = v17;
          goto LABEL_34;
        }

        if (v18)
        {
          goto LABEL_33;
        }
      }

LABEL_34:
      v20 = *(v15 + 1);
      if (v20)
      {
        v21 = v10 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        if (v20)
        {
          break;
        }
      }

      else if (*v12 > **v15)
      {
        break;
      }

      v22 = *v15;
      *(v6 + 16) = *(v15 + 16);
      *v6 = v22;
      v6 = v15;
      if (v4 < v5)
      {
        goto LABEL_25;
      }
    }
  }

  v15 = v6;
LABEL_25:
  *v15 = v12;
  *(v15 + 1) = v10;
  *(v15 + 16) = v13;
  return result;
}

__n128 sub_1004D4F98(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = a1 + 24 * v3;
    a1 = (v5 + 24);
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 >= a3)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 4);
    if (v8)
    {
      v9 = *(v5 + 7) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

LABEL_9:
      a1 = (v5 + 48);
      v3 = v7;
      goto LABEL_10;
    }

    if (**(v5 + 6) > **(v5 + 3))
    {
      goto LABEL_9;
    }

LABEL_10:
    result = *a1;
    v4[1].n128_u8[0] = a1[1].n128_u8[0];
    *v4 = result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_1004D5030(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 24 * (v4 >> 1));
    v7 = (a2 - 24);
    v8 = *(v6 + 1);
    v9 = *(a2 - 16);
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!v8)
      {
        return result;
      }

      v11 = *v7;
    }

    else
    {
      v11 = *v7;
      if (**v7 <= **v6)
      {
        return result;
      }
    }

    v12 = *(a2 - 8);
    v13 = *(v6 + 16);
    *v7 = *v6;
    *(a2 - 8) = v13;
    if (v4 >= 2)
    {
      do
      {
        v15 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v14 = (result + 24 * v5);
        v16 = *(v14 + 1);
        if (v16)
        {
          v17 = v9 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          if (!v16)
          {
            goto LABEL_11;
          }
        }

        else if (*v11 <= **v14)
        {
          goto LABEL_11;
        }

        v18 = *v14;
        *(v6 + 16) = *(v14 + 16);
        *v6 = v18;
        v6 = (result + 24 * v5);
      }

      while (v15 > 1);
    }

    else
    {
LABEL_11:
      v14 = v6;
    }

    *v14 = v11;
    *(v14 + 1) = v9;
    *(v14 + 16) = v12;
  }

  return result;
}

void sub_1004D5108(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_1004D5150(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 48 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = xmmword_101466148;
        *(v4 + 32) = unk_101466158;
        v4 += 48;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      sub_1000C1D48();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1001EE080(a1, v9);
    }

    v11 = 48 * v6;
    v12 = 48 * v6 + 48 * a2;
    v13 = v11;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = xmmword_101466148;
      *(v13 + 32) = unk_101466158;
      v13 += 48;
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

void sub_1004D52B4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C1D48();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1001EE0D8(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1001EE130(v18);
  }
}

void sub_1004D5664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D56A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D5B78()
{
  v0 = +[CRLTraceableResourceManager sharedManager];
  [v0 logSerializationAsError];
}

void sub_1004D5BC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D5C04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D5E50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D5E94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004D5ED8(uint64_t a1)
{
  [*(a1 + 32) setRelinquishCallStackIfNeeded:*(a1 + 40) relinquishTime:*(a1 + 56)];
  if (([*(*(a1 + 48) + 8) containsObject:*(a1 + 32)] & 1) == 0)
  {
    sub_1004D5B78();
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101383ED0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = v5;
      v9 = [CRLTraceableResourceToken callStackDescriptionWithAction:@"Relinquish" callStackSymbols:v6 index:0];
      *buf = 67110402;
      v29 = v4;
      v30 = 2082;
      v31 = "[CRLTraceableResource didRelinquishResourceWithToken:]_block_invoke";
      v32 = 2082;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m";
      v34 = 1024;
      v35 = 173;
      v36 = 2114;
      v37 = v7;
      v38 = 2114;
      v39 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Token has already been relinquished: %{public}@\nSecond attempt to relinquish:\n%{public}@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101383EE4();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = *(a1 + 32);
    [CRLTraceableResourceToken callStackDescriptionWithAction:@"Relinquish" callStackSymbols:*(a1 + 40) index:0];
    v27 = v26 = v11;
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Token has already been relinquished: %{public}@\nSecond attempt to relinquish:\n%{public}@", v12, v13, v14, v15, v16, v17, v18, "[CRLTraceableResource didRelinquishResourceWithToken:]_block_invoke");

    v19 = [NSString stringWithUTF8String:"[CRLTraceableResource didRelinquishResourceWithToken:]_block_invoke"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    v21 = *(a1 + 32);
    v22 = [CRLTraceableResourceToken callStackDescriptionWithAction:@"Relinquish" callStackSymbols:*(a1 + 40) index:0];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:173 isFatal:1 description:"Token has already been relinquished: %{public}@\nSecond attempt to relinquish:\n%{public}@", v21, v22, 173, v26, v27];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
    abort();
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 removeToken:v3 isForTemporaryRelinquish:0];
}

void sub_1004D6194(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D61D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D6624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004D663C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D6680(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D66D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D6714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D6768(uint64_t a1)
{
  v1 = *(*(a1 + 56) + 8);
  if (*(v1 + 24) == 1)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138420C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384220();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013842A8();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Completion handler was already called.", v11, v12, v13, v14, v15, v16, v17, "[CRLTraceableResource temporarilyRelinquishForToken:usingBlock:]_block_invoke");
    v18 = [NSString stringWithUTF8String:"[CRLTraceableResource temporarilyRelinquishForToken:usingBlock:]_block_invoke"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:201 isFatal:1 description:"Completion handler was already called."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v20, v21);
    abort();
  }

  *(v1 + 24) = 1;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) addToken:*(*(&v22 + 1) + 8 * i) isForTemporaryRelinquish:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v8 = [*(*(a1 + 40) + 8) firstObject];
  v9 = v8;
  if (v8)
  {
    [*(a1 + 40) scheduleRelinquishTimeoutForToken:v8 timeout:objc_msgSend(v8 isForTemporaryRelinquish:{"timeout"), 1}];
  }

  [*(a1 + 48) didCallCompletionHandler];
  dispatch_resume(*(*(a1 + 40) + 24));
}

void sub_1004D69E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D6A24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D6CB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D6CF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D6E60(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v4 = *v3;
  v5 = [*(*v2 + 1) firstObject];

  if (v4 == v5)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 40) timeout] - *(a1 + 48);
    if (([v6 isTimeoutPaused] & 1) != 0 || v7)
    {
      if ([v6 isTimeoutPaused])
      {
        v7 = [v6 timeout];
      }

      [*(a1 + 32) scheduleRelinquishTimeoutForToken:*(a1 + 40) timeout:v7 isForTemporaryRelinquish:*(a1 + 56)];
    }

    else if ([*v2 printTimeoutAsError])
    {
      if (qword_101AD5A08 != -1)
      {
        sub_1013843A8();
      }

      v8 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_1013843BC(v2, v8, v2 + 1);
      }

      [*v2 p_logErrorTokenSerializationDescriptionFromQueueWithPrefix:&stru_1018BCA28];
    }

    else
    {
      if (qword_101AD5A48 != -1)
      {
        sub_101384394();
      }

      v9 = off_1019EDAA0;
      if (os_log_type_enabled(off_1019EDAA0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v2;
        v11 = v9;
        v12 = [v10 logContext];
        v13 = [v12 publicString];
        v14 = [*v2 logContext];
        v15 = [v14 privateString];
        v16 = [*v2 name];
        v17 = [*v3 timeout];
        v18 = [*v3 intent];
        v19 = 138544386;
        v20 = v13;
        v21 = 2112;
        v22 = v15;
        v23 = 2114;
        v24 = v16;
        v25 = 2048;
        v26 = v17;
        v27 = 2114;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ %{public}@ is taking more than %lu seconds to relinquish resource with '%{public}@' intent.", &v19, 0x34u);
      }

      [*v2 p_logDebugTokenSerializationDescriptionFromQueue];
    }
  }
}

void sub_1004D7104(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D7148(id a1)
{
  v1 = sub_1004BD804("CRLTraceableResourceCat");
  v2 = off_1019EDAA0;
  off_1019EDAA0 = v1;
}

uint64_t sub_1004D727C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1004D7294(uint64_t a1)
{
  v2 = [*(a1 + 32) p_tokenSerializationDescriptionFromQueue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1004D7B10(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D7B54(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D7B98(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D7BDC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D7C20(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D7C64(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D8294(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D82D8(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D831C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D8360(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D83A4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D83E8(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D8858(id a1)
{
  v1 = objc_alloc_init(CRLTraceableResourceManager);
  v2 = qword_101A35218;
  qword_101A35218 = v1;
}

void sub_1004D89E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(*(a1 + 32) + 16) addObject:WeakRetained];
    WeakRetained = v3;
  }
}

void sub_1004D8B38(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) allObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1004D8D3C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D8D80(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004D924C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9290(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9668(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D96AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D96F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9734(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9914(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9958(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9B2C(id a1)
{
  v1 = sub_1004BD804("CRLTraceableResourceCat");
  v2 = off_1019EDAA0;
  off_1019EDAA0 = v1;
}

void sub_1004D9D4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9D90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9F4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004D9F90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004DA560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) appendString:a2];
  if (a3)
  {
    v6 = *(a1 + 32);

    return [v6 appendString:{@", "}];
  }

  return result;
}

void sub_1004DAB74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DABB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DB800(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DB844(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DB888(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DB8CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DB910(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DB954(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DBAE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DBB28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DC2C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DC304(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004DCC38(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 size];
  v2 = sub_10011ECB4();

  return [v1 drawInRect:1 blendMode:v2 alpha:?];
}

void sub_1004DCED0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setFill];
  [v3 fillRect:sub_10011ECB4()];
}

void sub_1004DD1C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DD20C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DDA0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DDA50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DE624(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DE668(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DF4D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DF518(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DFCF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004DFD3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E0884(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E08C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004E090C(uint64_t a1, double a2, double a3, double a4, double a5, long double a6)
{
  result = [*(a1 + 32) width];
  if (*(a1 + 64) == 1)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      [v12 hitInfo];
      v13 = *&v21;
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v13 = 0.0;
    }

    v14 = sub_10011F31C(a3, a4, v13);
    v16 = v15;
    if (a5 < 0.0)
    {
      a5 = sub_10011F31C(CGPointZero.x, CGPointZero.y, a5);
      a6 = v17;
    }

    if (v14 < 0.0)
    {
      v14 = sub_10011F31C(CGPointZero.x, CGPointZero.y, v14);
      v16 = v18;
    }

    v19 = sub_1001208D0(a5, a6);
    v20 = sub_1001208D0(v14, v16);
    sub_1001211D8(v19, v20);
    return [*(a1 + 32) width];
  }

  return result;
}

void sub_1004E0AA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E0AE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E0B28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E0B6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E217C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E21C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E2204(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E2248(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E228C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E22D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E2314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E2358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E2A10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E2A54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E2A98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E2ADC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E37D0(uint64_t a1)
{
  if (*(*(a1 + 32) + 9) == 1)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:" target:0.1 selector:? userInfo:? repeats:?];
    [*(a1 + 32) setTimer:v3];
  }
}

void sub_1004E3A64(uint64_t a1)
{
  if (*(*(a1 + 32) + 10) == 1)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:" target:0.1 selector:? userInfo:? repeats:?];
    [*(a1 + 32) setTimer:v3];
  }
}

void sub_1004E55C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E560C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E587C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E58C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E5A54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E5A98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E5FB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E5FF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E603C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E6080(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1004E6118(id a1, CRLCanvasLayout *a2, BOOL *a3)
{
  v3 = a2;
  if ([(CRLCanvasAbstractLayout *)v3 supportsRotation])
  {
    v4 = [(CRLCanvasLayout *)v3 canInspectGeometry];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1004E8754(uint64_t a1)
{
  result = [*(a1 + 32) elementAtIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1004E8854(uint64_t a1)
{
  result = [*(a1 + 32) elementAtIndex:*(a1 + 48) associatedPoints:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1004E8B68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E8BAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E8D3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E8D80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E8FB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E8FF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E968C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004E96D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EA3A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EA3E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EA958(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EA99C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EAC3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EAC80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EB404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EB42C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1004EB444(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1004EC5A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EC5EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004ED338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004ED37C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EDC3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EDC80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EDCC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EDD08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1004EEEAC(uint64_t a1, int a2)
{
  if (a2 < 4)
  {
    v2 = 0;
    v5 = a2;
  }

  else
  {
    v2 = 0;
    v3 = a2 + 4;
    v4 = (a1 + 3);
    v5 = a2;
    do
    {
      v6 = *(v4 - 3) + 16 * v2;
      v7 = *(v4 - 2) + 16 * (v6 ^ (16 * (v6 >> 28)));
      v8 = *(v4 - 1) + 16 * (v7 ^ (16 * (v7 >> 28)));
      v9 = *v4;
      v4 += 4;
      v10 = v9 + 16 * (v8 ^ (16 * (v8 >> 28)));
      v2 = (v10 ^ ((v10 & 0xF0000000) >> 24)) & ~(v10 & 0xF0000000);
      v3 -= 4;
      v5 -= 4;
    }

    while (v3 > 7);
  }

  switch(v5)
  {
    case 1:
      v11 = a2;
      goto LABEL_13;
    case 3:
      v11 = a2;
      v12 = *(a1 + a2 - 3) + 16 * v2;
      v2 = (v12 ^ ((v12 & 0xF0000000) >> 24)) & ~(v12 & 0xF0000000);
      goto LABEL_11;
    case 2:
      v11 = a2;
LABEL_11:
      v13 = *(a1 + v11 - 2) + 16 * v2;
      v2 = (v13 ^ ((v13 & 0xF0000000) >> 24)) & ~(v13 & 0xF0000000);
LABEL_13:
      v14 = *(a1 + v11 - 1) + 16 * v2;
      return (v14 ^ ((v14 & 0xF0000000) >> 24)) & ~(v14 & 0xF0000000);
  }

  return v2;
}

uint64_t sub_1004EEFA8(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  result = sub_1004A262C((a1 + 4), (a2 + 4));
  if (result != -1 && result != 1)
  {
    v5 = *(a1 + 20);
    v6 = *(a2 + 20);
    v7 = v5 >= v6;
    v8 = v5 > v6;
    if (v7)
    {
      return v8;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void sub_1004EF7A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EF7E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EFAD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EFB14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EFD9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004EFDE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F0B8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F0BD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F0C14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F0C58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F0ED0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F0F14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F1158(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F119C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F1414(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F1458(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F19FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F1A40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F1C98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F1CDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F1F98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F1FDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F2298(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F22DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1004F26B4(uint64_t result, uint64_t a2)
{
  *(a2 + 30) = v2;
  *(a2 + 34) = 2112;
  *(a2 + 36) = result;
  return result;
}

void sub_1004F26D8(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x2Cu);
}

uint64_t sub_1004F2968(void *a1)
{
  v1 = a1;
  v2 = +[NSCharacterSet decimalDigitCharacterSet];
  v3 = [v1 componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 firstObject];

  if ([v4 length])
  {
    if ([v4 isEqualToString:@"iPad"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"iPhone"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"iPod"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"iMac"])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:@"MacBook"])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:@"MacBookAir"])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:@"MacBookPro"])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"Macmini"])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:@"MacPro"])
    {
      v5 = 9;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1004F3238(uint64_t a1)
{
  result = [*(a1 + 32) p_isMetalCapable];
  byte_101A35268 = result;
  return result;
}

void sub_1004F32A0(id a1)
{
  v1 = objc_alloc_init(CRLCapabilities);
  v2 = qword_101A35278;
  qword_101A35278 = v1;
}

void sub_1004F34C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F3504(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F36C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F3708(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F388C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F38D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F3AC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F3B08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F3B4C(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_101A35280;
  qword_101A35280 = v1;
}

uint64_t sub_1004F3CE4(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = [(__CFDictionary *)v1 objectForKey:kCGImagePropertyOrientation];
  v3 = [v2 intValue];

  v4 = 0;
  if (v3 - 1 <= 7)
  {
    v4 = qword_101466370[v3 - 1];
  }

  return v4;
}

uint64_t sub_1004F3D60(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1014663D0[a1 - 1];
  }
}

CGAffineTransform *sub_1004F3D84@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  if (!result)
  {
    v20 = *&CGAffineTransformIdentity.c;
    *a3 = *&CGAffineTransformIdentity.a;
    *(a3 + 16) = v20;
    v21 = *&CGAffineTransformIdentity.tx;
    goto LABEL_28;
  }

  v13 = dword_1014663B0[result];
  v14 = *&CGAffineTransformIdentity.a;
  v15 = *&CGAffineTransformIdentity.c;
  *a3 = *&CGAffineTransformIdentity.a;
  *(a3 + 16) = v15;
  v16 = *&CGAffineTransformIdentity.tx;
  *(a3 + 32) = v16;
  v17 = 0xCCuLL >> result;
  if ((0xCCuLL >> result))
  {
    *&v40.a = v14;
    *&v40.c = v15;
    *&v40.tx = v16;
    result = CGAffineTransformScale(a3, &v40, a6 / a7, a7 / a6);
  }

  if (v13 <= 4)
  {
    if (v13 == 2)
    {
LABEL_17:
      v25 = *(a3 + 16);
      *&v39.a = *a3;
      *&v39.c = v25;
      *&v39.tx = *(a3 + 32);
      v26 = -1.0;
      v27 = 1.0;
LABEL_20:
      result = CGAffineTransformScale(&v40, &v39, v26, v27);
LABEL_23:
      v32 = *&v40.c;
      *a3 = *&v40.a;
      *(a3 + 16) = v32;
      *(a3 + 32) = *&v40.tx;
      goto LABEL_24;
    }

    if (v13 == 3)
    {
      v31 = *(a3 + 16);
      *&v39.a = *a3;
      *&v39.c = v31;
      *&v39.tx = *(a3 + 32);
      v19 = 3.14159265;
      goto LABEL_22;
    }

    if (v13 != 4)
    {
      goto LABEL_24;
    }

LABEL_19:
    v30 = *(a3 + 16);
    *&v39.a = *a3;
    *&v39.c = v30;
    *&v39.tx = *(a3 + 32);
    v26 = 1.0;
    v27 = -1.0;
    goto LABEL_20;
  }

  if (v13 <= 6)
  {
    if (v13 != 5)
    {
      v18 = *(a3 + 16);
      *&v39.a = *a3;
      *&v39.c = v18;
      *&v39.tx = *(a3 + 32);
      v19 = 1.57079633;
LABEL_22:
      result = CGAffineTransformRotate(&v40, &v39, v19);
      goto LABEL_23;
    }

    v23 = *(a3 + 16);
    *&v39.a = *a3;
    *&v39.c = v23;
    *&v39.tx = *(a3 + 32);
    CGAffineTransformRotate(&v40, &v39, -1.57079633);
    v24 = *&v40.c;
    *a3 = *&v40.a;
    *(a3 + 16) = v24;
    *(a3 + 32) = *&v40.tx;
    goto LABEL_17;
  }

  if (v13 == 7)
  {
    v28 = *(a3 + 16);
    *&v39.a = *a3;
    *&v39.c = v28;
    *&v39.tx = *(a3 + 32);
    CGAffineTransformRotate(&v40, &v39, -1.57079633);
    v29 = *&v40.c;
    *a3 = *&v40.a;
    *(a3 + 16) = v29;
    *(a3 + 32) = *&v40.tx;
    goto LABEL_19;
  }

  if (v13 == 8)
  {
    v22 = *(a3 + 16);
    *&v39.a = *a3;
    *&v39.c = v22;
    *&v39.tx = *(a3 + 32);
    v19 = -1.57079633;
    goto LABEL_22;
  }

LABEL_24:
  if (!a2)
  {
    return result;
  }

  v41.origin.x = a4;
  v41.origin.y = a5;
  v41.size.width = a6;
  v41.size.height = a7;
  MidX = CGRectGetMidX(v41);
  v42.origin.x = a4;
  v42.origin.y = a5;
  v42.size.width = a6;
  v42.size.height = a7;
  MidY = CGRectGetMidY(v42);
  memset(&v40, 0, sizeof(v40));
  CGAffineTransformMakeTranslation(&v40, MidX, MidY);
  if (v17)
  {
    t1 = v40;
    CGAffineTransformRotate(&v39, &t1, 3.14159265);
    v40 = v39;
  }

  v35 = *(a3 + 16);
  *&t1.a = *a3;
  *&t1.c = v35;
  *&t1.tx = *(a3 + 32);
  v37 = v40;
  CGAffineTransformConcat(&v39, &t1, &v37);
  v40 = v39;
  t1 = v39;
  result = CGAffineTransformTranslate(&v39, &t1, -MidX, -MidY);
  v36 = *&v39.c;
  v21 = *&v39.tx;
  v40 = v39;
  *a3 = *&v39.a;
  *(a3 + 16) = v36;
LABEL_28:
  *(a3 + 32) = v21;
  return result;
}

void sub_1004F4E64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F4EA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F4EEC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_101A352A0;
  qword_101A352A0 = v1;
}

void sub_1004F51E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F5224(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F5520(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F5564(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F5860(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F58A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F5B9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F5BE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F5ED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F5F1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6214(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6258(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6554(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6598(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6894(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F68D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6BD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6C18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6F14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F6F58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F7250(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F7294(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F758C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F75D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F78C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F790C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F7C04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F7C48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F7F40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F7F84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1004F7FF0(CGImage *a1)
{
  if (!a1)
  {
    return 1;
  }

  memset(data, 0, sizeof(data));
  v2 = CGBitmapContextCreateWithData(data, 1uLL, 1uLL, 8uLL, 1uLL, 0, 7u, 0, 0);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  CGContextDrawImage(v2, v5, a1);
  CFRelease(v2);
  return LOBYTE(data[0]) == 0;
}

CGImageRef sub_1004F826C(uint64_t a1, CGImageRef image, double a3)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v8 = fabs(*(a1 + 40));
  [*(a1 + 32) scale];
  v10 = ceil(v8 * v9 * a3);
  v11 = fabs(*(a1 + 48));
  [*(a1 + 32) scale];
  v13 = ceil(v11 * v12 * a3);
  v14 = *(a1 + 64);
  if (*(a1 + 56) * a3 >= Height)
  {
    v15 = Height;
  }

  else
  {
    v15 = *(a1 + 56) * a3;
  }

  if (v14 * a3 >= Height - v15)
  {
    v16 = Height - v15;
  }

  else
  {
    v16 = v14 * a3;
  }

  v17 = *(a1 + 80);
  if (*(a1 + 72) * a3 >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = *(a1 + 72) * a3;
  }

  if (v17 * a3 >= Width - v18)
  {
    v19 = Width - v18;
  }

  else
  {
    v19 = v17 * a3;
  }

  sub_1004F8568(v41, 0.0, 0.0, Width, Height, v18, v19, v15, v16);
  sub_1004F8568(v39, 0.0, 0.0, v10, v13, v18, v19, v15, v16);
  v20 = sub_1000CDA34(1, v10, v13, 1.0);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = &v42;
  v23 = &v40;
  v24 = 9;
  do
  {
    v25 = *(v22 - 2);
    v26 = *(v22 - 1);
    v27 = *v22;
    v28 = v22[1];
    v29 = *(v23 - 2);
    v30 = *(v23 - 1);
    v31 = *v23;
    v32 = v23[1];
    v43.origin.x = v25;
    v43.origin.y = v26;
    v43.size.width = *v22;
    v43.size.height = v28;
    if (!CGRectIsEmpty(v43))
    {
      v44.origin.x = v25;
      v44.origin.y = v26;
      v44.size.width = v27;
      v44.size.height = v28;
      if (!CGRectIsNull(v44))
      {
        v45.origin.x = v29;
        v45.origin.y = v30;
        v45.size.width = v31;
        v45.size.height = v32;
        if (!CGRectIsEmpty(v45))
        {
          v46.origin.x = v29;
          v46.origin.y = v30;
          v46.size.width = v31;
          v46.size.height = v32;
          if (!CGRectIsNull(v46))
          {
            v47.origin.x = v25;
            v47.origin.y = v26;
            v47.size.width = v27;
            v47.size.height = v28;
            v33 = CGImageCreateWithImageInRect(image, v47);
            if (v33)
            {
              v34 = v33;
              CGContextSaveGState(v21);
              v48.origin.x = v29;
              v48.origin.y = v30;
              v48.size.width = v31;
              v48.size.height = v32;
              MaxY = CGRectGetMaxY(v48);
              v49.origin.x = v29;
              v49.origin.y = v30;
              v49.size.width = v31;
              v49.size.height = v32;
              MinY = CGRectGetMinY(v49);
              CGContextTranslateCTM(v21, 0.0, MaxY + MinY);
              CGContextScaleCTM(v21, 1.0, -1.0);
              v50.origin.x = v29;
              v50.origin.y = v30;
              v50.size.width = v31;
              v50.size.height = v32;
              CGContextDrawImage(v21, v50, v34);
              CGImageRelease(v34);
              CGContextRestoreGState(v21);
            }
          }
        }
      }
    }

    v22 += 4;
    v23 += 4;
    --v24;
  }

  while (v24);
  v37 = CGBitmapContextCreateImage(v21);
  CGContextRelease(v21);
  return v37;
}

void sub_1004F8568(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  remainder.origin = origin;
  remainder.size = size;
  slice.origin = origin;
  slice.size = size;
  v28.origin = origin;
  v28.size = size;
  v29.origin = origin;
  v29.size = size;
  v24.origin = origin;
  v24.size = size;
  v25.origin = origin;
  v25.size = size;
  v26.origin = origin;
  v26.size = size;
  CGRectDivide(*&a2, &slice, &remainder, a8, CGRectMinYEdge);
  CGRectDivide(remainder, &v29, &v28, a9, CGRectMaxYEdge);
  remainder.origin = origin;
  remainder.size = size;
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectDivide(v30, &v24, &remainder, a6, CGRectMinXEdge);
  CGRectDivide(remainder, &v26, &v25, a7, CGRectMaxXEdge);
  v17 = 0;
  v18 = a1 + 16;
  do
  {
    v19 = 0;
    v20 = v18;
    do
    {
      *(v20 - 16) = CGRectIntersection(*(&slice + v19), *(&v24 + v17));
      v20 += 96;
      v19 += 32;
    }

    while (v19 != 96);
    ++v17;
    v18 += 32;
  }

  while (v17 != 3);
}

void sub_1004F8A3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F8A80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F8B48(uint64_t a1)
{
  v2 = [UIImage alloc];
  v3 = [*(a1 + 32) CGImage];
  [*(a1 + 32) scale];
  v5 = [v2 initWithCGImage:v3 scale:objc_msgSend(*(a1 + 32) orientation:{"imageOrientation"), v4}];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

void sub_1004F8E00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F8E44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F92E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F932C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F9598(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F95DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F991C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004F9960(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FA7D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FA814(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FAFC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FB004(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FBBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004FBBC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1004FBBE0(uint64_t a1)
{
  v2 = [*(a1 + 32) mostSpecificSelectionOfClass:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1004FBD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004FBDA8(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionPathWithAppendedSelection:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1004FC1E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FC224(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FDD8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FDDD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FE708(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = a1 < a5;
  if (a1 != a5)
  {
    if (a1 >= a5)
    {
      a1 = a5;
    }

    if (!v14)
    {
      a2 = a6;
      a3 = a7;
    }

    v20 = a7;
    if (!v14)
    {
      a4 = a8;
    }

    v15 = a8;
    CGRectGetMaxX(*&a1);
    a8 = v15;
    a7 = v20;
  }

  if (v12 != a6)
  {
    if (v12 >= a6)
    {
      v16 = a8;
    }

    else
    {
      v16 = v10;
    }

    if (v12 >= a6)
    {
      v17 = a7;
    }

    else
    {
      v17 = v11;
    }

    if (v12 >= a6)
    {
      v18 = a6;
    }

    else
    {
      v18 = v12;
    }

    if (v12 >= a6)
    {
      v19 = a5;
    }

    else
    {
      v19 = v13;
    }

    CGRectGetMaxY(*(&v16 - 3));
  }
}

BOOL sub_1004FEBC8(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] distanceToSelectedSearchReference:v3] == a1[6])
  {
    v4 = [a1[5] infoForSelectionPath];
    v5 = [v3 infoForSelectionPath];
    v6 = v4 == v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1004FED50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v7 = [*(a1 + 32) interactiveCanvasController];
  v8 = objc_opt_class();
  v9 = __CRLAccessibilityCastAsSafeCategory(v8, v7, 1, &v14);
  if (v14 == 1)
  {
    abort();
  }

  v10 = v9;

  v11 = [v10 crlaxRepForSearchReference:v5];
  v12 = [v11 isSelected];

  return v12 ^ 1;
}

uint64_t sub_1004FEE18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 distanceToSelectedSearchReference:a2];
  v8 = [*(a1 + 32) distanceToSelectedSearchReference:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
  }
}

void sub_1004FF240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004FF258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1004FF270(uint64_t a1)
{
  v2 = [objc_alloc(objc_msgSend(*(a1 + 56) "crlaxTargetClass"))];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1004FF7D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FF81C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}