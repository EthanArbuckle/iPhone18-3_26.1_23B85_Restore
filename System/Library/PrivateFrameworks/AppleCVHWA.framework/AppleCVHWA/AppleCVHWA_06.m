void sub_1E5449DD4(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void sub_1E5449DF0(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (v5 + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 2;
    v7 = v6 + a2;
    if ((v6 + a2) >> 62)
    {
      sub_1E5415338();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v18 = 4 * v6;
    v19 = 4 * v6 + 4 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

char *sub_1E5449FC0(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4)) < a5)
  {
    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * ((v9 - *a1) >> 4);
    if (v11 > 0x555555555555555)
    {
      sub_1E5415338();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v33 = 16 * ((__dst - v10) >> 4);
    v34 = 48 * a5;
    v35 = v33 + 48 * a5;
    v36 = v33;
    do
    {
      v37 = *v6;
      v38 = *(v6 + 2);
      v36[1] = *(v6 + 1);
      v36[2] = v38;
      *v36 = v37;
      v36 += 3;
      v6 += 48;
      v34 -= 48;
    }

    while (v34);
    v39 = *(a1 + 8) - __dst;
    memcpy((v33 + 48 * a5), __dst, v39);
    v40 = v35 + v39;
    *(a1 + 8) = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = v33 - v42;
    memcpy((v33 - v42), *a1, v42);
    *a1 = v43;
    *(a1 + 8) = v40;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v33;
  }

  v14 = v9 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - __dst) >> 4)) >= a5)
  {
    v14 = 48 * a5;
    v28 = &__dst[48 * a5];
    v29 = (v9 - 48 * a5);
    for (i = *(a1 + 8); v29 < v9; v29 += 3)
    {
      v31 = *v29;
      v32 = v29[2];
      i[1] = v29[1];
      i[2] = v32;
      *i = v31;
      i += 3;
    }

    *(a1 + 8) = i;
    if (v9 == v28)
    {
      goto LABEL_27;
    }

    v26 = v9 - v28;
    v27 = &__dst[48 * a5];
    goto LABEL_26;
  }

  v15 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v16 = a5;
    v17 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v17;
    a5 = v16;
  }

  v18 = (v9 + v15);
  *(a1 + 8) = v9 + v15;
  if (v14 >= 1)
  {
    v19 = &v5[48 * a5];
    v20 = v9 + v15;
    if (&v18[-48 * a5] < v9)
    {
      v21 = &v5[a4];
      v22 = &v5[a4 + -48 * a5];
      do
      {
        v23 = (v21 - v6);
        v24 = *(v22 - v6);
        v25 = *(v22 - v6 + 32);
        v23[1] = *(v22 - v6 + 16);
        v23[2] = v25;
        *v23 = v24;
        v22 += 48;
        v21 += 48;
      }

      while (v22 - v6 < v9);
      v20 = v21 - v6;
    }

    *(a1 + 8) = v20;
    if (v18 == v19)
    {
      goto LABEL_27;
    }

    v26 = v18 - v19;
    v27 = &v5[48 * a5];
LABEL_26:
    memmove(v27, v5, v26);
LABEL_27:
    memmove(v5, v6, v14);
  }

  return v5;
}

void sub_1E544A280(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4) + a2;
    if (v6 > 0x555555555555555)
    {
      sub_1E5415338();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v10 = (16 * ((v4 - *a1) >> 4));
    v11 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

char *sub_1E544A428(char *result, int *a2, unint64_t a3, int *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 4) & ~(*(a2 - 4) >> 31);
      if (v5 >= 7)
      {
        v5 = 7;
      }

      if ((*(result + 8) & ~(*(result + 8) >> 31)) >= 7)
      {
        v6 = 7;
      }

      else
      {
        v6 = *(result + 8) & ~(*(result + 8) >> 31);
      }

      if (dword_1E5492534[v5] + dword_1E5492554[v5] * *(a2 - 11) < dword_1E5492534[v6] + dword_1E5492554[v6] * *(result + 1))
      {
        v7 = *result;
        v8 = *(result + 1);
        v9 = *(result + 2);
        v11 = *(a2 - 2);
        v10 = *(a2 - 1);
        *result = *(a2 - 3);
        *(result + 1) = v11;
        *(result + 2) = v10;
        *(a2 - 2) = v8;
        *(a2 - 1) = v9;
        *(a2 - 3) = v7;
      }
    }

    else if (a3 > 128)
    {
      v30 = a3 >> 1;
      v31 = &result[48 * (a3 >> 1)];
      v32 = a3 - (a3 >> 1);
      v33 = result;
      if (a3 <= a5)
      {
        v37 = a4;
        sub_1E544A7F8(result, v31, a3 >> 1, a4);
        v38 = &v37[12 * v30];
        result = sub_1E544A7F8(v31, a2, v32, v38);
        v39 = &v37[12 * a3];
        v40 = v38;
        while (v40 != v39)
        {
          v43 = v40[8] & ~(v40[8] >> 31);
          if (v43 >= 7)
          {
            v43 = 7;
          }

          v44 = v37[8] & ~(v37[8] >> 31);
          if (v44 >= 7)
          {
            v44 = 7;
          }

          if (dword_1E5492534[v43] + dword_1E5492554[v43] * *(v40 + 1) >= dword_1E5492534[v44] + dword_1E5492554[v44] * *(v37 + 1))
          {
            v41 = *v37;
            v42 = *(v37 + 2);
            *(v33 + 1) = *(v37 + 1);
            *(v33 + 2) = v42;
            *v33 = v41;
            v33 += 48;
            v37 += 12;
            if (v37 == v38)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v45 = *v40;
            v46 = *(v40 + 2);
            *(v33 + 1) = *(v40 + 1);
            *(v33 + 2) = v46;
            *v33 = v45;
            v33 += 48;
            v40 += 12;
            if (v37 == v38)
            {
LABEL_48:
              while (v40 != v39)
              {
                v49 = *v40;
                v50 = *(v40 + 2);
                *(v33 + 1) = *(v40 + 1);
                *(v33 + 2) = v50;
                *v33 = v49;
                v33 += 48;
                v40 += 12;
              }

              return result;
            }
          }
        }

        while (v37 != v38)
        {
          v47 = *v37;
          v48 = *(v37 + 2);
          *(v33 + 1) = *(v37 + 1);
          *(v33 + 2) = v48;
          *v33 = v47;
          v33 += 48;
          v37 += 12;
        }
      }

      else
      {
        sub_1E544A428(result, v31, a3 >> 1, a4, a5);
        sub_1E544A428(v31, a2, v32, a4, a5);

        return sub_1E544ABA8(v33, v31, a2, v30, v32, a4, a5);
      }
    }

    else if (result != a2)
    {
      v12 = result + 48;
      if (result + 48 != a2)
      {
        v13 = 0;
        v14 = result;
        do
        {
          v16 = *(v14 + 20);
          v17 = v16 & ~(v16 >> 31);
          if (v17 >= 7)
          {
            v17 = 7;
          }

          v18 = dword_1E5492534[v17];
          v19 = dword_1E5492554[v17];
          v20 = *(v14 + 13);
          if ((*(v14 + 8) & ~(*(v14 + 8) >> 31)) >= 7)
          {
            v21 = 7;
          }

          else
          {
            v21 = *(v14 + 8) & ~(*(v14 + 8) >> 31);
          }

          v22 = v18 + v19 * v20;
          v23 = v12;
          if (v22 < dword_1E5492534[v21] + dword_1E5492554[v21] * *(v14 + 1))
          {
            v24 = *v12;
            v53 = *(v14 + 56);
            v54 = *(v14 + 9);
            v51 = *(v14 + 84);
            v52 = *(v14 + 23);
            v25 = v13;
            do
            {
              v26 = &result[v25];
              v27 = *&result[v25 + 16];
              *(v26 + 3) = *&result[v25];
              *(v26 + 4) = v27;
              *(v26 + 5) = *&result[v25 + 32];
              if (!v25)
              {
                v15 = result;
                goto LABEL_16;
              }

              v28 = *(v26 - 4) & ~(*(v26 - 4) >> 31);
              if (v28 >= 7)
              {
                v28 = 7;
              }

              v25 -= 48;
            }

            while (v22 < dword_1E5492534[v28] + dword_1E5492554[v28] * *(v26 - 11));
            v15 = &result[v25 + 48];
LABEL_16:
            *v15 = v24;
            *(v15 + 4) = v20;
            *(v15 + 8) = v53;
            *(v15 + 24) = v54;
            *(v15 + 32) = v16;
            *(v15 + 36) = v51;
            *(v15 + 44) = v52;
          }

          v12 = v23 + 12;
          v13 += 48;
          v14 = v23;
        }

        while (v23 + 12 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_1E544A7F8(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v6 = (a2 - 48);
      v7 = *(a2 - 16) & ~(*(a2 - 16) >> 31);
      if (v7 >= 7)
      {
        v7 = 7;
      }

      if ((*(result + 32) & ~(*(result + 32) >> 31)) >= 7)
      {
        v8 = 7;
      }

      else
      {
        v8 = *(result + 32) & ~(*(result + 32) >> 31);
      }

      if (dword_1E5492534[v7] + dword_1E5492554[v7] * *(a2 - 44) >= dword_1E5492534[v8] + dword_1E5492554[v8] * *(result + 4))
      {
        v34 = *result;
        v35 = *(result + 32);
        *(a4 + 1) = *(result + 16);
        *(a4 + 2) = v35;
        *a4 = v34;
        v11 = *v6;
        v12 = *(a2 - 32);
        v13 = *(a2 - 16);
      }

      else
      {
        v9 = *v6;
        v10 = *(a2 - 16);
        *(a4 + 1) = *(a2 - 32);
        *(a4 + 2) = v10;
        *a4 = v9;
        v11 = *result;
        v12 = *(result + 16);
        v13 = *(result + 32);
      }

      *(a4 + 4) = v12;
      *(a4 + 5) = v13;
      *(a4 + 3) = v11;
    }

    else if (a3 == 1)
    {
      v4 = *result;
      v5 = *(result + 32);
      *(a4 + 1) = *(result + 16);
      *(a4 + 2) = v5;
      *a4 = v4;
    }

    else if (a3 > 8)
    {
      v36 = a3 >> 1;
      v37 = 12 * (a3 >> 1);
      v38 = v37 * 4 + result;
      v39 = result;
      v42 = a4;
      (sub_1E544A428)();
      result = sub_1E544A428(v38, a2, a3 - v36, &v42[v37], a3 - v36);
      v43 = v38;
      while (v43 != a2)
      {
        v46 = *(v43 + 32) & ~(*(v43 + 32) >> 31);
        if (v46 >= 7)
        {
          v46 = 7;
        }

        v47 = *(v39 + 32) & ~(*(v39 + 32) >> 31);
        if (v47 >= 7)
        {
          v47 = 7;
        }

        if (dword_1E5492534[v46] + dword_1E5492554[v46] * *(v43 + 4) >= dword_1E5492534[v47] + dword_1E5492554[v47] * *(v39 + 4))
        {
          v44 = *v39;
          v45 = *(v39 + 32);
          *(v42 + 1) = *(v39 + 16);
          *(v42 + 2) = v45;
          *v42 = v44;
          v42 += 12;
          v39 += 48;
          if (v39 == v38)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v48 = *v43;
          v49 = *(v43 + 32);
          *(v42 + 1) = *(v43 + 16);
          *(v42 + 2) = v49;
          *v42 = v48;
          v42 += 12;
          v43 += 48;
          if (v39 == v38)
          {
LABEL_48:
            while (v43 != a2)
            {
              v52 = *v43;
              v53 = *(v43 + 32);
              *(v42 + 1) = *(v43 + 16);
              *(v42 + 2) = v53;
              *v42 = v52;
              v42 += 12;
              v43 += 48;
            }

            return result;
          }
        }
      }

      while (v39 != v38)
      {
        v50 = *v39;
        v51 = *(v39 + 32);
        *(v42 + 1) = *(v39 + 16);
        *(v42 + 2) = v51;
        *v42 = v50;
        v42 += 12;
        v39 += 48;
      }
    }

    else if (result != a2)
    {
      v14 = *result;
      v15 = *(result + 32);
      *(a4 + 1) = *(result + 16);
      *(a4 + 2) = v15;
      *a4 = v14;
      v16 = result + 48;
      if (result + 48 != a2)
      {
        v17 = 0;
        v18 = a4;
        do
        {
          v21 = result;
          v22 = v18;
          result = v16;
          v18 += 12;
          v23 = *(v21 + 80) & ~(*(v21 + 80) >> 31);
          if (v23 >= 7)
          {
            v23 = 7;
          }

          v24 = v22[8] & ~(v22[8] >> 31);
          v25 = dword_1E5492534[v23];
          v26 = dword_1E5492554[v23];
          if (v24 >= 7)
          {
            v24 = 7;
          }

          v27 = v25 + v26 * *(v21 + 52);
          v28 = v18;
          if (v27 < dword_1E5492534[v24] + dword_1E5492554[v24] * *(v22 + 1))
          {
            v29 = *(v22 + 1);
            *v18 = *v22;
            *(v18 + 1) = v29;
            *(v18 + 2) = *(v22 + 2);
            v28 = a4;
            if (v22 != a4)
            {
              v30 = v17;
              while (1)
              {
                v28 = (a4 + v30);
                v31 = *(v21 + 80) & ~(*(v21 + 80) >> 31);
                if (v31 >= 7)
                {
                  v31 = 7;
                }

                v32 = *(v28 - 4) & ~(*(v28 - 4) >> 31);
                if (v32 >= 7)
                {
                  v32 = 7;
                }

                if (dword_1E5492534[v31] + dword_1E5492554[v31] * *(v21 + 52) >= dword_1E5492534[v32] + dword_1E5492554[v32] * *(v28 - 11))
                {
                  break;
                }

                v33 = *(v28 - 2);
                *v28 = *(v28 - 3);
                *(v28 + 1) = v33;
                *(v28 + 2) = *(v28 - 1);
                v30 -= 48;
                if (!v30)
                {
                  v28 = a4;
                  break;
                }
              }
            }
          }

          v19 = *result;
          v20 = *(result + 32);
          *(v28 + 1) = *(result + 16);
          *(v28 + 2) = v20;
          *v28 = v19;
          v16 = result + 48;
          v17 += 48;
        }

        while (result + 48 != a2);
      }
    }
  }

  return result;
}

char *sub_1E544ABA8(char *result, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a4 > a7 && a5 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v7 = 0;
    v8 = a2[8] & ~(a2[8] >> 31);
    if (v8 >= 7)
    {
      v8 = 7;
    }

    v9 = dword_1E5492534[v8] + dword_1E5492554[v8] * *(a2 + 1);
    v10 = -a4;
    while (1)
    {
      v11 = &result[v7];
      v12 = *&result[v7 + 32] & ~(*&result[v7 + 32] >> 31);
      if (v12 >= 7)
      {
        v12 = 7;
      }

      if (v9 < dword_1E5492534[v12] + dword_1E5492554[v12] * v11[1])
      {
        break;
      }

      v7 += 48;
      if (__CFADD__(v10++, 1))
      {
        return result;
      }
    }

    if (-v10 < a5)
    {
      v14 = a5 / 2;
      v15 = &a2[12 * (a5 / 2)];
      v16 = a2;
      if (a2 - result != v7)
      {
        v17 = v15[8] & ~(v15[8] >> 31);
        if (v17 >= 7)
        {
          v17 = 7;
        }

        v18 = dword_1E5492534[v17];
        v19 = dword_1E5492554[v17];
        v20 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result - v7) >> 4);
        v21 = v18 + v19 * *(v15 + 1);
        v16 = &result[v7];
        do
        {
          v22 = v20 >> 1;
          v23 = &v16[12 * (v20 >> 1)];
          v24 = v23[8] & ~(v23[8] >> 31);
          if (v24 >= 7)
          {
            v24 = 7;
          }

          v25 = dword_1E5492534[v24] + dword_1E5492554[v24] * *(v23 + 1);
          v26 = v23 + 12;
          v20 += ~v22;
          if (v21 < v25)
          {
            v20 = v22;
          }

          else
          {
            v16 = v26;
          }
        }

        while (v20);
      }

      v27 = 0xAAAAAAAAAAAAAAABLL * ((v16 - result - v7) >> 4);
      v28 = &a2[12 * (a5 / 2)];
      v29 = a2 - v16;
      if (a2 == v16)
      {
        goto LABEL_61;
      }

LABEL_39:
      v28 = v16;
      if (a2 != v15)
      {
        if (v16 + 12 == a2)
        {
          v121 = *(v16 + 1);
          v125 = *(v16 + 2);
          v116 = *v16;
          v39 = v15 - a2;
          v107 = a5;
          v109 = result;
          v111 = a6;
          v113 = a3;
          v103 = v27;
          v105 = a7;
          v101 = v14;
          memmove(v16, a2, v15 - a2);
          v14 = v101;
          v27 = v103;
          a7 = v105;
          a5 = v107;
          result = v109;
          a6 = v111;
          a3 = v113;
          v28 = (v16 + v39);
          *v28 = v116;
          *(v28 + 1) = v121;
          *(v28 + 2) = v125;
        }

        else if (a2 + 12 == v15)
        {
          v28 = v16 + 12;
          v117 = *(v15 - 3);
          v122 = *(v15 - 2);
          v126 = *(v15 - 1);
          if (v15 - 12 != v16)
          {
            v108 = a5;
            v110 = result;
            v114 = a3;
            v40 = a6;
            v104 = v27;
            v106 = a7;
            v102 = v14;
            memmove(v16 + 12, v16, (v15 - 12) - v16);
            result = v110;
            v28 = v16 + 12;
            v14 = v102;
            v27 = v104;
            a7 = v106;
            a5 = v108;
            a6 = v40;
            a3 = v114;
          }

          *(v16 + 1) = v122;
          *(v16 + 2) = v126;
          *v16 = v117;
        }

        else
        {
          v41 = 0xAAAAAAAAAAAAAAABLL * ((v15 - a2) >> 4);
          if (0xAAAAAAAAAAAAAAABLL * (v29 >> 4) == v41)
          {
            v42 = v16 + 12;
            v43 = a2 + 12;
            do
            {
              v123 = *(v42 - 2);
              v127 = *(v42 - 1);
              v118 = *(v42 - 3);
              v44 = *(v43 - 3);
              v45 = *(v43 - 1);
              *(v42 - 2) = *(v43 - 2);
              *(v42 - 1) = v45;
              *(v42 - 3) = v44;
              *(v43 - 3) = v118;
              *(v43 - 2) = v123;
              *(v43 - 1) = v127;
              if (v42 == a2)
              {
                break;
              }

              v42 += 12;
              v46 = v43 == v15;
              v43 += 12;
            }

            while (!v46);
            v28 = a2;
          }

          else
          {
            v47 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 4);
            do
            {
              v48 = v47;
              v47 = v41;
              v41 = v48 % v41;
            }

            while (v41);
            v49 = &v16[12 * v47];
            do
            {
              v50 = *(v49 - 3);
              v51 = *(v49 - 2);
              v52 = *(v49 - 1);
              v49 -= 12;
              v119 = v50;
              v128 = v52;
              v53 = (v49 + v29);
              v54 = v49;
              do
              {
                v55 = v53;
                v56 = *v53;
                v57 = *(v53 + 2);
                *(v54 + 1) = *(v53 + 1);
                *(v54 + 2) = v57;
                *v54 = v56;
                v58 = v15 - v53;
                v53 += 4 * (v29 >> 4);
                if (v29 >= v58)
                {
                  v53 = (a2 - v58);
                }

                v54 = v55;
              }

              while (v53 != v49);
              *(v55 + 1) = v51;
              *(v55 + 2) = v128;
              *v55 = v119;
            }

            while (v49 != v16);
            v28 = (v16 + v15 - a2);
          }
        }
      }

      goto LABEL_61;
    }

    if (v10 == -1)
    {
      v92 = &result[v7];
      v124 = *&result[v7 + 16];
      v129 = *&result[v7 + 32];
      v120 = *&result[v7];
      v93 = *a2;
      v94 = *(a2 + 2);
      *(v92 + 1) = *(a2 + 1);
      *(v92 + 2) = v94;
      *v92 = v93;
      *a2 = v120;
      *(a2 + 1) = v124;
      *(a2 + 2) = v129;
      return result;
    }

    v27 = -v10 / 2;
    v15 = a2;
    if (a2 != a3)
    {
      v30 = &result[48 * v27 + v7];
      v31 = v30[8] & ~(v30[8] >> 31);
      if (v31 >= 7)
      {
        v31 = 7;
      }

      v32 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4);
      v33 = dword_1E5492534[v31] + dword_1E5492554[v31] * *(v30 + 1);
      v15 = a2;
      do
      {
        v34 = v32 >> 1;
        v35 = &v15[12 * (v32 >> 1)];
        v36 = v35[8] & ~(v35[8] >> 31);
        if (v36 >= 7)
        {
          v36 = 7;
        }

        v37 = dword_1E5492534[v36] + dword_1E5492554[v36] * *(v35 + 1);
        v38 = v35 + 12;
        v32 += ~v34;
        if (v37 < v33)
        {
          v15 = v38;
        }

        else
        {
          v32 = v34;
        }
      }

      while (v32);
    }

    v16 = &result[48 * v27 + v7];
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v15 - a2) >> 4);
    v28 = v15;
    v29 = a2 - v16;
    if (a2 != v16)
    {
      goto LABEL_39;
    }

LABEL_61:
    v59 = -v10 - v27;
    v60 = a5 - v14;
    if (v27 + v14 >= a5 - (v27 + v14) - v10)
    {
      v66 = v15;
      v64 = a6;
      v65 = a7;
      v67 = v27;
      v60 = v14;
      v112 = v28;
      sub_1E544ABA8(v28, v66, a3, v59, a5 - v14);
      a2 = v16;
      a4 = v67;
      a3 = v112;
    }

    else
    {
      v61 = &result[v7];
      v62 = v16;
      v115 = a3;
      v63 = -v10 - v27;
      v64 = a6;
      v65 = a7;
      v11 = v28;
      sub_1E544ABA8(v61, v62, v28, v27, v14);
      a4 = v63;
      a3 = v115;
      a2 = v15;
    }

    a5 = v60;
    result = v11;
    a6 = v64;
    a7 = v65;
    if (!v60)
    {
      return result;
    }
  }

  if (a4 <= a5)
  {
    if (a2 != result)
    {
      v81 = -a6;
      v82 = a6;
      v83 = result;
      do
      {
        v84 = *v83;
        v85 = *(v83 + 2);
        v82[1] = *(v83 + 1);
        v82[2] = v85;
        *v82 = v84;
        v82 += 3;
        v83 += 12;
        v81 -= 48;
      }

      while (v83 != a2);
      while (a2 != a3)
      {
        v88 = a2[8] & ~(a2[8] >> 31);
        if (v88 >= 7)
        {
          v88 = 7;
        }

        v89 = *(a6 + 32) & ~(*(a6 + 32) >> 31);
        if (v89 >= 7)
        {
          v89 = 7;
        }

        if (dword_1E5492534[v88] + dword_1E5492554[v88] * *(a2 + 1) >= dword_1E5492534[v89] + dword_1E5492554[v89] * *(a6 + 4))
        {
          v86 = *a6;
          v87 = *(a6 + 32);
          *(result + 1) = *(a6 + 16);
          *(result + 2) = v87;
          *result = v86;
          result += 48;
          a6 += 48;
          if (v82 == a6)
          {
            return result;
          }
        }

        else
        {
          v90 = *a2;
          v91 = *(a2 + 2);
          *(result + 1) = *(a2 + 1);
          *(result + 2) = v91;
          *result = v90;
          result += 48;
          a2 += 12;
          if (v82 == a6)
          {
            return result;
          }
        }
      }

      return memmove(result, a6, -(a6 + v81));
    }
  }

  else if (a2 != a3)
  {
    v68 = 0;
    do
    {
      v69 = (a6 + v68 * 4);
      v70 = *&a2[v68];
      v71 = *&a2[v68 + 8];
      v69[1] = *&a2[v68 + 4];
      v69[2] = v71;
      *v69 = v70;
      v68 += 12;
    }

    while (&a2[v68] != a3);
    v72 = (a6 + v68 * 4);
    while (a2 != result)
    {
      v73 = *(v72 - 4) & ~(*(v72 - 4) >> 31);
      if (v73 >= 7)
      {
        v73 = 7;
      }

      v74 = *(a2 - 4) & ~(*(a2 - 4) >> 31);
      if (v74 >= 7)
      {
        v74 = 7;
      }

      v75 = dword_1E5492534[v73] + dword_1E5492554[v73] * *(v72 - 11);
      v76 = dword_1E5492534[v74] + dword_1E5492554[v74] * *(a2 - 11);
      v77 = v75 < v76;
      if (v75 >= v76)
      {
        v78 = (v72 - 48);
      }

      else
      {
        v78 = a2 - 12;
      }

      v79 = *v78;
      v80 = *(v78 + 2);
      *(a3 - 2) = *(v78 + 1);
      *(a3 - 1) = v80;
      *(a3 - 3) = v79;
      a3 -= 12;
      if (v77)
      {
        a2 -= 12;
      }

      else
      {
        v72 -= 48;
      }

      if (v72 == a6)
      {
        return result;
      }
    }

    if (v72 != a6)
    {
      v95 = 0x3FFFFFFFFFFFFFF4;
      do
      {
        v96 = *(v72 - 3);
        v97 = *(v72 - 2);
        v98 = *(v72 - 1);
        v99 = v72 - 48;
        v100 = &a3[v95];
        *(v100 + 1) = v97;
        *(v100 + 2) = v98;
        *v100 = v96;
        v95 -= 12;
        v72 = v99;
      }

      while (v99 != a6);
    }
  }

  return result;
}

uint64_t sub_1E544B2EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

float sub_1E544B35C(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = a3;
  v5 = a4;
  v6 = a3 + 1;
  v7 = v5 + 1;
  v8 = a2 + 2 * v5 * a1;
  v9 = v8 + 2 * a1;
  v10 = v6 - a3;
  v11 = v7 - a4;
  *&v12 = v10 * v11;
  v13 = a3 - a3;
  v14 = v13 * v11;
  *&v15 = a4 - a4;
  v16 = v10 * *&v15;
  v17 = v13 * *&v15;
  v4 *= 2;
  v6 *= 2;
  LOWORD(v15) = *(v8 + 2 * v4);
  v18 = *&v12 * v15;
  LOWORD(v12) = *(v8 + 2 * v6);
  *&v19 = v14 * v12;
  v20 = v18 + *&v19;
  LOWORD(v19) = *(v9 + 2 * v4);
  *&v21 = v16 * v19;
  v22 = v20 + *&v21;
  LOWORD(v21) = *(v9 + 2 * v6);
  return v22 + (v17 * v21);
}

BOOL sub_1E544B400(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *(a2 + 64);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = 12;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v7 = 15;
    }

    *(a1 + 256) = v7;
    v8 = *(a1 + 180);
    if (v8 == *(a1 + 184))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v6 = 9;
    }

    else
    {
      v6 = 7;
    }

    *(a1 + 256) = v6;
    *(a2 + 28) = *(a2 + 24);
    v8 = *(a1 + 180);
    if (v8 == *(a1 + 184))
    {
      goto LABEL_15;
    }
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 89, "hal_.minSupportedWidth == hal_.minSupportedHeight && min supported width and height should match", 98, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_69;
  }

  v8 = *(a1 + 180);
LABEL_15:
  v9 = sub_1E545A1B0(*a2, *(a2 + 4), *(a2 + 50), v8);
  v10 = v9;
  *(a2 + 50) = v9;
  if (v9 >= 7u)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 94, "config.numberOfOctaves <= kMaxNumOctaves && Number of octaves has to be smaller than the maximum possible", 107, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_69;
    }

    v10 = *(a2 + 50);
  }

  if (v10)
  {
    LOBYTE(v10) = v10 - 1;
    if (*a2 >> v10 >= *(a1 + 180))
    {
      goto LABEL_20;
    }

LABEL_24:
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 98, "(config.inputImageWidth >> (config.numberOfOctaves - 1)) >= hal_.minSupportedWidth && Min supported width violation", 117, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_69;
    }

    if (*(a2 + 4) >> (*(a2 + 50) - 1) >= *(a1 + 184))
    {
      goto LABEL_27;
    }

LABEL_26:
    if (!sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 101, "(config.inputImageHeight >> (config.numberOfOctaves - 1)) >= hal_.minSupportedHeight && Min supported height violation", 120, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_27;
    }

LABEL_69:
    abort();
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 95, "config.numberOfOctaves > 0 && Number of octaves should be greater than 0", 74, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_69;
  }

  LOWORD(v10) = *(a2 + 50) - 1;
  if (*a2 >> (*(a2 + 50) - 1) < *(a1 + 180))
  {
    goto LABEL_24;
  }

LABEL_20:
  if (*(a2 + 4) >> v10 < *(a1 + 184))
  {
    goto LABEL_26;
  }

LABEL_27:
  result = sub_1E543980C((a1 + 172), a2);
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 8);
  *(a1 + 152) = *a2;
  v12 = *(a2 + 50);
  *(a1 + 160) = v12;
  v13 = *(a2 + 72);
  *(a1 + 164) = *(a2 + 24);
  *(a1 + 168) = v13;
  v14 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - v11) >> 2);
  if (v12 <= v14)
  {
    if (v12 < v14)
    {
      *(a1 + 16) = v11 + 28 * v12;
    }
  }

  else
  {
    sub_1E541C3F8(a1 + 8, v12 - v14);
    v12 = *(a2 + 50);
  }

  v15 = *(a1 + 32);
  v16 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 40) - v15) >> 2);
  if (v12 <= v16)
  {
    if (v12 < v16)
    {
      *(a1 + 40) = v15 + 28 * v12;
    }
  }

  else
  {
    sub_1E541C3F8(a1 + 32, v12 - v16);
    v12 = *(a2 + 50);
  }

  v17 = *(a1 + 56);
  v18 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - v17) >> 2);
  if (v12 <= v18)
  {
    if (v12 < v18)
    {
      *(a1 + 64) = v17 + 28 * v12;
    }
  }

  else
  {
    sub_1E541C3F8(a1 + 56, v12 - v18);
    v12 = *(a2 + 50);
  }

  v19 = *(a1 + 80);
  v20 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 88) - v19) >> 2);
  if (v12 <= v20)
  {
    if (v12 < v20)
    {
      *(a1 + 88) = v19 + 28 * v12;
    }
  }

  else
  {
    sub_1E541C3F8(a1 + 80, v12 - v20);
    v12 = *(a2 + 50);
  }

  v21 = *(a1 + 104);
  v22 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 112) - v21) >> 2);
  if (v12 <= v22)
  {
    if (v12 < v22)
    {
      *(a1 + 112) = v21 + 28 * v12;
    }
  }

  else
  {
    sub_1E541C3F8(a1 + 104, v12 - v22);
    v12 = *(a2 + 50);
  }

  v23 = *(a1 + 128);
  v24 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 136) - v23) >> 2);
  if (v12 <= v24)
  {
    if (v12 < v24)
    {
      *(a1 + 136) = v23 + 28 * v12;
    }
  }

  else
  {
    sub_1E541C3F8(a1 + 128, v12 - v24);
    v12 = *(a2 + 50);
  }

  v25 = *(a1 + 232);
  v26 = *(a1 + 240);
  v27 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v25) >> 5);
  v28 = v12 - v27;
  if (v12 <= v27)
  {
    if (v12 < v27)
    {
      *(a1 + 240) = v25 + 160 * v12;
    }

    if (!v12)
    {
      return 1;
    }
  }

  else
  {
    v29 = *(a1 + 248);
    if (0xCCCCCCCCCCCCCCCDLL * ((v29 - v26) >> 5) < v28)
    {
      v30 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v25) >> 5);
      if (2 * v30 > v12)
      {
        v12 = 2 * v30;
      }

      if (v30 >= 0xCCCCCCCCCCCCCCLL)
      {
        v12 = 0x199999999999999;
      }

      if (v12 <= 0x199999999999999)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    bzero(*(a1 + 240), 160 * ((160 * v28 - 160) / 0xA0) + 160);
    *(a1 + 240) = v26 + 160 * ((160 * v28 - 160) / 0xA0) + 160;
    if (!*(a2 + 50))
    {
      return 1;
    }
  }

  v31 = 0;
  v32 = 0;
  do
  {
    sub_1E5439938(a1 + 172, a2, v32++, (*(a1 + 232) + v31));
    v31 += 160;
  }

  while (v32 < *(a2 + 50));
  return 1;
}

uint64_t sub_1E544B9A0(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  if (*(a1 + 160) <= a7 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 133, "octave < number_of_octaves_ && Attempting to process invalid octave", 69, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_21;
  }

  v14 = (*(*a1 + 56))(a1);
  bzero(a2, v14);
  *a2 = -1;
  a2[1] = a3 | 0x80000000;
  *(a2 + 1) = 0;
  v15 = (a2 + 38);
  a2[38] |= 0x7FFFFFFFu;
  v16 = a2[59];
  *(a2 + 18) = 0x100000007;
  a2[59] = v16 | 0x7FFFFFFF;
  a2[80] |= 0x7FFFFFFFu;
  a2[101] |= 0x7FFFFFFFu;
  a2[122] |= 0x7FFFFFFFu;
  a2[143] |= 0x7FFFFFFFu;
  a2[164] |= 0x7FFFFFFFu;
  if (a7)
  {
    v17 = *(a1 + 56);
    if (*(v17 + 28 * (a7 - 1)))
    {
LABEL_7:
      v18 = (v17 + 28 * (a7 - 1));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      v22 = *(a1 + 168) + v18[4];
      v23 = 4;
      v24 = 1;
      goto LABEL_9;
    }

    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 157, "info_gp2_[octave - 1].enabled && GP2 of previous octave has to be enabled, as it is the input to the current octave", 119, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      v17 = *(a1 + 56);
      v15 = (a2 + 38);
      goto LABEL_7;
    }

LABEL_21:
    abort();
  }

  v19 = a4;
  v20 = a5;
  v21 = a6;
  v23 = 8;
  v24 = 0;
  v22 = 0;
LABEL_9:
  sub_1E544DF60(v15, v19, v20, v21, v23, v24, v22);
  v25 = *(a1 + 8) + 28 * a7;
  if (*v25 == 1)
  {
    sub_1E544DF60((a2 + 122), *(v25 + 4), *(v25 + 8), *(v25 + 12), 8, 1, *(a1 + 168) + *(v25 + 16));
    v26 = *(a1 + 32) + 28 * a7;
    if (*v26 != 1)
    {
LABEL_11:
      v27 = *(a1 + 56) + 28 * a7;
      if (*v27 != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v26 = *(a1 + 32) + 28 * a7;
    if (*v26 != 1)
    {
      goto LABEL_11;
    }
  }

  sub_1E544DF60((a2 + 143), *(v26 + 4), *(v26 + 8), *(v26 + 12), 8, 1, *(a1 + 168) + *(v26 + 16));
  v27 = *(a1 + 56) + 28 * a7;
  if (*v27 != 1)
  {
LABEL_12:
    v28 = *(a1 + 80) + 28 * a7;
    if (*v28 != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  sub_1E544DF60((a2 + 59), *(v27 + 4), *(v27 + 8), *(v27 + 12), 4, 1, *(a1 + 168) + *(v27 + 16));
  v28 = *(a1 + 80) + 28 * a7;
  if (*v28 == 1)
  {
LABEL_13:
    sub_1E544DF60((a2 + 101), *(v28 + 4), *(v28 + 8), *(v28 + 12), 4, 1, *(a1 + 168) + *(v28 + 16));
  }

LABEL_14:
  v29 = (*(a1 + 104) + 28 * a7);
  sub_1E544DF60((a2 + 80), v29[1], v29[2], v29[3], 8, 1, *(a1 + 168) + v29[4]);
  v30 = (*(a1 + 128) + 28 * a7);
  v31 = v30[1];
  v32 = v30[2];
  v33 = v30[3];
  v34 = *(a1 + 168) + v30[4];

  return sub_1E544DF60((a2 + 164), v31, v32, v33, 8, 1, v34);
}

uint64_t sub_1E544BD20(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= 6)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 237, &unk_1E549A011, 0, "Unsupported buffer type", 23, sub_1E548FDE0);
    abort();
  }

  return *(a1 + 24 * a2 + 8) + 28 * a3;
}

__n128 sub_1E544BD9C(uint32x2_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a1[32].u8[0];
  *a2 = -1;
  *(a2 + 4) = v4;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 12) = 0x200000100;
  *(a2 + 20) = vshl_u32(a1[19], vneg_s32(vdup_n_s32(a3)));
  *(a2 + 28) = a4;
  *(a2 + 32) = 1;
  v5 = *&a1[29] + 160 * a3;
  *v5 = *v5 & 0xFFFFFFFBFFFFFFFFLL | ((a4 == 4) << 34);
  v6 = *(v5 + 32);
  v7 = *(v5 + 48);
  v8 = *(v5 + 64);
  *(a2 + 156) = *(v5 + 80);
  *(a2 + 140) = v8;
  *(a2 + 124) = v7;
  *(a2 + 108) = v6;
  v9 = *(v5 + 96);
  v10 = *(v5 + 112);
  v11 = *(v5 + 128);
  *(a2 + 220) = *(v5 + 144);
  *(a2 + 204) = v11;
  *(a2 + 188) = v10;
  *(a2 + 172) = v9;
  result = *v5;
  *(a2 + 92) = *(v5 + 16);
  *(a2 + 76) = result;
  return result;
}

uint64_t sub_1E544BE54(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 232);
  v7 = *(a1 + 240);
  v8 = *(v6 + 72);
  if (v6 != v7)
  {
    while (*(v6 + 72) == v8)
    {
      v6 += 160;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 273, "(std::all_of(key_cfg_.begin(), key_cfg_.end(), [key_out_max](const HwKeyEngineCfg& config) { return config.keyOutMax == key_out_max; })) && keyOutMax for all octaves needs to be the same", 188, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_27:
      abort();
    }
  }

LABEL_6:
  if (!*(a1 + 160))
  {
    return 0;
  }

  v9 = 0;
  LODWORD(v10) = 0;
  v11 = 0;
  v33 = 4 * v8;
  v12 = 16;
  do
  {
    v16 = *(a1 + 232);
    v17 = *(v16 + v9);
    if ((v17 & 0x40000000000) != 0)
    {
      v18 = *(a1 + 8);
      if (a2 >> v11 == -1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformUtils.h", 282, "val != std::numeric_limits<uint32_t>::max() && Passing max value for uint32_t into IncrementIfOdd, most likely unexpected behaviour", 135, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_27;
      }

      v19 = ((a2 >> v11) & 1) + (a2 >> v11);
      if (v19)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformUtils.h", 286, "val % 2 == 0 && IncrementIfOdd should always return an even number", 70, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_27;
        }
      }

      *(v18 + v12 - 16) = 1;
      v20 = (v18 + v12);
      *(v20 - 3) = v19;
      *(v20 - 2) = a3 >> v11;
      v21 = (v19 + 63) & 0xFFFFFFC0;
      *(v20 - 1) = v21;
      *v20 = v10;
      LODWORD(v10) = v10 + v21 * (a3 >> v11);
      v16 = *(a1 + 232);
      v17 = *(v16 + v9);
    }

    if ((~v17 & 0x80200000000) == 0)
    {
      v22 = *(a1 + 32);
      if (a2 >> v11 == -1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformUtils.h", 282, "val != std::numeric_limits<uint32_t>::max() && Passing max value for uint32_t into IncrementIfOdd, most likely unexpected behaviour", 135, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_27;
      }

      v23 = ((a2 >> v11) & 1) + (a2 >> v11);
      if (v23)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformUtils.h", 286, "val % 2 == 0 && IncrementIfOdd should always return an even number", 70, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_27;
        }
      }

      *(v22 + v12 - 16) = 1;
      v24 = (v22 + v12);
      *(v24 - 3) = v23;
      *(v24 - 2) = a3 >> v11;
      v25 = (v23 + 63) & 0xFFFFFFC0;
      *(v24 - 1) = v25;
      *v24 = v10;
      LODWORD(v10) = v10 + v25 * (a3 >> v11);
      v16 = *(a1 + 232);
      v17 = *(v16 + v9);
    }

    if ((~v17 & 0x300000000) == 0)
    {
      v26 = (*(a1 + 56) + v12);
      v27 = a2 >> (v11 + 1);
      v28 = a3 >> (v11 + 1);
      *(v26 - 16) = 1;
      *(v26 - 3) = v27;
      *(v26 - 2) = v28;
      v29 = (2 * v27 + 63) & 0xFFFFFFC0;
      *(v26 - 1) = v29;
      *v26 = v10;
      LODWORD(v10) = v10 + v29 * v28;
      v17 = *(v16 + v9);
    }

    if ((v17 & 0x8000) != 0)
    {
      v30 = (*(a1 + 80) + v12);
      *(v30 - 16) = 1;
      *(v30 - 3) = 2 * (a2 >> v11);
      *(v30 - 2) = a3 >> v11;
      v31 = (4 * (a2 >> v11) + 63) & 0xFFFFFFC0;
      *(v30 - 1) = v31;
      *v30 = v10;
      LODWORD(v10) = v10 + v31 * (a3 >> v11);
    }

    v13 = sub_1E544E3D8(v33, v10, 64, *(a1 + 104) + v12 - 16) + v10;
    v14 = (*(a1 + 128) + v12);
    v15 = ((*(*a1 + 72))(a1) + 63) & 0xFFFFFFC0;
    *(v14 - 16) = 1;
    *(v14 - 3) = v15;
    *(v14 - 2) = 1;
    *(v14 - 1) = v15;
    *v14 = v13;
    v10 = (v15 + v13);
    ++v11;
    v12 += 28;
    v9 += 160;
  }

  while (v11 < *(a1 + 160));
  return v10;
}

void sub_1E544C1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 52) = *(a2 + 4);
  *(a3 + 92) = *a2;
  *a3 = *(a2 + 8);
  *(a3 + 2) = *(a2 + 10);
  *(a3 + 4) = *(a2 + 12);
  *(a3 + 6) = *(a2 + 14);
  *(a3 + 8) = *(a2 + 16);
  *(a3 + 10) = *(a2 + 18);
  *(a3 + 12) = *(a2 + 20);
  *(a3 + 14) = *(a2 + 22);
  *(a3 + 16) = *(a2 + 24);
  *(a3 + 18) = *(a2 + 26);
  *(a3 + 20) = *(a2 + 28);
  *(a3 + 22) = *(a2 + 30);
  *(a3 + 24) = *(a2 + 32);
  *(a3 + 26) = *(a2 + 34);
  *(a3 + 28) = *(a2 + 36);
  *(a3 + 30) = *(a2 + 38);
  *(a3 + 32) = *(a2 + 40);
  *(a3 + 34) = *(a2 + 42);
  *(a3 + 36) = *(a2 + 44);
  *(a3 + 38) = *(a2 + 46);
  *(a3 + 40) = *(a2 + 48);
  *(a3 + 42) = *(a2 + 50);
  *(a3 + 44) = *(a2 + 52);
  *(a3 + 46) = *(a2 + 54);
  *(a3 + 48) = *(a2 + 56);
}

uint64_t sub_1E544C2C8()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 335, "0 && Update config not supported", 34, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1E544C31C()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 341, "0 && Get Kp Limit Per Scale not supported", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1E544C370()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 347, "0 && Update Dynamic Threshold is not supported", 48, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1E544C3D4()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwKeyEngine.cpp", 355, "0 && Update TID counter init value is not supported", 53, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

void sub_1E544C42C(void *a1)
{
  sub_1E544C498(a1);

  JUMPOUT(0x1E6928650);
}

void *sub_1E544C498(void *a1)
{
  *a1 = &unk_1F5F0A630;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_1E544C548(uint64_t result, unsigned int a2, uint64_t a3, char a4)
{
  v7 = result;
  if (a2 >= 4)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwLaccUtils.cpp", 107, "(rmanum < 4) && RMA index out of bounds", 41, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  v8 = v7 + 36 * a2;
  *(v8 + 4) = 1;
  *(v8 + 5) = a4;
  *(v8 + 12) = HIDWORD(a3);
  *(v8 + 16) = a3;
  *(v8 + 8) = 8;
  return result;
}

uint64_t sub_1E544C5E8(uint64_t a1)
{
  sub_1E5414D60(v35, 16);
  v2 = v35 + *(v35[0] - 24);
  if (*(v2 + 36) == -1)
  {
    std::ios_base::getloc((v35 + *(v35[0] - 24)));
    v3 = std::locale::use_facet(&v42, MEMORY[0x1E69E5318]);
    (v3->__vftable[2].~facet_0)(v3, 32);
    std::locale::~locale(&v42);
  }

  v4 = 0;
  *(v2 + 36) = 48;
  v5 = a1 + 172;
  do
  {
    v6 = sub_1E53DF59C(&v36, "GRF ", 4);
    v7 = MEMORY[0x1E6928470](v6, v4);
    v8 = sub_1E53DF59C(v7, " = 0x", 5);
    v9 = *v8;
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v8 + *(v9 - 24) + 24) = 8;
    v10 = MEMORY[0x1E6928460]();
    v11 = sub_1E53DF59C(v10, "\t\tVRF ", 6);
    *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
    v12 = MEMORY[0x1E6928470]();
    sub_1E53DF59C(v12, " = (", 4);
    v13 = sub_1E53DF59C(&v36, "0x", 2);
    v14 = *v13;
    *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v13 + *(v14 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v36, ", ", 2);
    v15 = sub_1E53DF59C(&v36, "0x", 2);
    v16 = *v15;
    *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v15 + *(v16 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v36, ", ", 2);
    v17 = sub_1E53DF59C(&v36, "0x", 2);
    v18 = *v17;
    *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v17 + *(v18 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v36, ", ", 2);
    v19 = sub_1E53DF59C(&v36, "0x", 2);
    v20 = *v19;
    *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v19 + *(v20 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v36, ", ", 2);
    v21 = sub_1E53DF59C(&v36, "0x", 2);
    v22 = *v21;
    *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v21 + *(v22 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v36, ", ", 2);
    v23 = sub_1E53DF59C(&v36, "0x", 2);
    v24 = *v23;
    *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v23 + *(v24 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v36, ", ", 2);
    v25 = sub_1E53DF59C(&v36, "0x", 2);
    v26 = *v25;
    *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v25 + *(v26 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v36, ", ", 2);
    v27 = sub_1E53DF59C(&v36, "0x", 2);
    v28 = *v27;
    *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v27 + *(v28 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v36, ")", 1);
    if (v40 < 0)
    {
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    v40 = 0;
    sub_1E53E768C(&v37);
    ++v4;
    v5 += 32;
  }

  while (v4 != 32);
  std::ios_base::clear((v35 + *(v35[0] - 24)), 0);
  v29 = (v35 + *(v35[0] - 24));
  if (v29[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v29);
    v30 = std::locale::use_facet(&v42, MEMORY[0x1E69E5318]);
    (v30->__vftable[2].~facet_0)(v30, 32);
    std::locale::~locale(&v42);
  }

  v29[1].__fmtflags_ = 48;
  v31 = sub_1E53DF59C(&v36, "RET = 0x", 8);
  v32 = *v31;
  *(v31 + *(*v31 - 24) + 8) = *(v31 + *(*v31 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v31 + *(v32 - 24) + 24) = 8;
  MEMORY[0x1E6928460]();
  if (v40 < 0)
  {
    operator delete(__p);
  }

  LOBYTE(__p) = 0;
  v40 = 0;
  sub_1E53E768C(&v37);
  std::ios_base::clear((v35 + *(v35[0] - 24)), 0);
  v35[0] = *MEMORY[0x1E69E54D8];
  v33 = *(MEMORY[0x1E69E54D8] + 72);
  *(v35 + *(v35[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v36 = v33;
  v37 = MEMORY[0x1E69E5548] + 16;
  if (v40 < 0)
  {
    operator delete(__p);
  }

  v37 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v38);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E69285E0](&v41);
}

void sub_1E544CF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::locale::~locale((v30 - 96));
  sub_1E5415094(&a14, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69285E0](&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1E544CFB4(uint64_t a1, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  pixelBuffer = 0;
  if (*(a1 + 185))
  {
    if (*(a1 + 185) == 1)
    {
      CVPixelBufferGetBytesPerRow(*(a1 + 192));
      CVPixelBufferGetHeight(*(a1 + 192));
      CVPixelBufferLockBaseAddress(*(a1 + 192), 0);
      operator new();
    }

    return 0;
  }

  *(a2 + 112) = a3;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if (*(a2 + 103) >= 0)
  {
    v6 = (a2 + 80);
  }

  else
  {
    v6 = *(a2 + 80);
  }

  v7 = fopen(v6, "rb");
  if (!v7)
  {
    if ((a3 - 5) < 7)
    {
      v11 = off_1E876F408[a3 - 5];
      v12 = *v11;
      __p_2 = v11[2];
      __p = v12;
      v41 = 3;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1E6928330](exception, "unsupported platform");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  fclose(v7);
  v8 = strlen(v6);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1E53DF584();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v35) = v8;
  if (v8)
  {
    memcpy(&__dst, v6, v8);
  }

  *(&__dst + v9) = 0;
  if (SHIBYTE(v35) < 0)
  {
    if (*(&__dst + 1))
    {
      p_dst = __dst;
      goto LABEL_22;
    }

LABEL_63:
    v32 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1E6928330](v32, "cannot find tid kernel");
    goto LABEL_65;
  }

  if (!HIBYTE(v35))
  {
    goto LABEL_63;
  }

  p_dst = &__dst;
LABEL_22:
  memset(&v43, 0, sizeof(v43));
  v14 = p_dst - 1;
    ;
  }

  sub_1E5433A1C(&v43, p_dst, v14);
  v16 = std::__fs::filesystem::__file_size(&v43, 0);
  *(a2 + 104) = v16;
  if (SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__pn_.__r_.__value_.__l.__data_);
    v16 = *(a2 + 104);
  }

  if (!v16)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1E6928330](v32, "invalid bin size");
LABEL_65:
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *v36 = __dst;
  v37 = v35;
  v17 = HIBYTE(v35);
  if (v35 < 0)
  {
    v17 = v36[1];
  }

  if (v17)
  {
    st_size = 0;
    v20 = 0;
    if (SHIBYTE(v35) < 0)
    {
      if (!v36[1])
      {
        goto LABEL_44;
      }

      v21 = v36[0];
    }

    else
    {
      if (!HIBYTE(v35))
      {
        goto LABEL_44;
      }

      v21 = v36;
    }

    if (stat(v21, &v45))
    {
      goto LABEL_43;
    }

    st_size = v45.st_size;
    v44[6] = 0;
    v22 = MEMORY[0x1E69E5528] + 64;
    v44[0] = MEMORY[0x1E69E5528] + 64;
    v23 = MEMORY[0x1E69E54C8];
    v24 = *(MEMORY[0x1E69E54C8] + 16);
    v43.__pn_.__r_.__value_.__r.__words[0] = *(MEMORY[0x1E69E54C8] + 8);
    *(v43.__pn_.__r_.__value_.__r.__words + *(v43.__pn_.__r_.__value_.__r.__words[0] - 24)) = v24;
    v43.__pn_.__r_.__value_.__l.__size_ = 0;
    v25 = (&v43 + *(v43.__pn_.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v25, &v43.__pn_.__r_.__value_.__r.__words[2]);
    v26 = MEMORY[0x1E69E5528] + 24;
    v25[1].__vftable = 0;
    v25[1].__fmtflags_ = -1;
    v43.__pn_.__r_.__value_.__r.__words[0] = v26;
    v44[0] = v22;
    MEMORY[0x1E69283D0](&v43.__pn_.__r_.__value_.__r.__words[2]);
    std::ifstream::open();
    v27 = *(&v43 + *(v43.__pn_.__r_.__value_.__r.__words[0] - 24) + 32) & 5;
    if (v27)
    {
      v20 = 0;
    }

    else
    {
      std::istream::read();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((&v43 + *(v43.__pn_.__r_.__value_.__r.__words[0] - 24)), *(&v43 + *(v43.__pn_.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
      }

      v20 = &v42;
    }

    v43.__pn_.__r_.__value_.__r.__words[0] = *v23;
    *(v43.__pn_.__r_.__value_.__r.__words + *(v43.__pn_.__r_.__value_.__r.__words[0] - 24)) = v23[3];
    MEMORY[0x1E69283E0](&v43.__pn_.__r_.__value_.__r.__words[2]);
    std::istream::~istream();
    MEMORY[0x1E69285E0](v44);
    if (v27)
    {
LABEL_43:
      LODWORD(v18) = 0;
      goto LABEL_60;
    }

LABEL_44:
    *(a2 + 8) = v20->__r_.__value_.__r.__words[1];
    v28 = HIDWORD(v20[1].__r_.__value_.__r.__words[0]);
    if (v28)
    {
      v29 = &v20[1].__r_.__value_.__s.__data_[19];
      v18 = 96;
      do
      {
        while (1)
        {
          while (*(v29 - 2) == 114 && *(v29 - 1) == 111 && !*v29)
          {
            *(a2 + 24) = *(v29 - 7);
            v30 = *(v29 - 11);
            *(a2 + 28) = v30;
            *(a2 + 32) = 1;
            v18 += v30;
            v29 += 16;
            if (!--v28)
            {
              goto LABEL_56;
            }
          }

          if (!strncmp(v29 - 2, "text", 7uLL))
          {
            break;
          }

          v29 += 16;
          if (!--v28)
          {
            goto LABEL_56;
          }
        }

        *(a2 + 12) = *(v29 - 7);
        *(a2 + 16) = 64;
        v31 = *(v29 - 11) + 63;
        *(a2 + 20) = v31 >> 6;
        v18 += v31 & 0xFFFFFFC0;
        v29 += 16;
        --v28;
      }

      while (v28);
    }

    else
    {
      v18 = 96;
    }

LABEL_56:
    if (!(*(a2 + 20) * *(a2 + 16)) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwLaccUtils.cpp", 394, "(lacc_info.itcm_width * lacc_info.itcm_height) > 0 && text segment cannot be zero", 83, &unk_1E549A011, 0, sub_1E548FDE0) || v18 < st_size && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwLaccUtils.cpp", 395, "lacc_buffer_size >= input_size", 30, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      abort();
    }

    goto LABEL_60;
  }

  LODWORD(v18) = 0;
LABEL_60:
  pixelBuffer = sub_1E541BCC4(v18, v36, 0, 0);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  result = 1;
  *a2 = pixelBuffer;
  return result;
}

void sub_1E544DBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_1E541BB34(v35 - 240);
  sub_1E541BB34(&a35);
  _Unwind_Resume(a1);
}

void sub_1E544DC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  __cxa_free_exception(v53);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    sub_1E544DDF0(v52);
    __cxa_end_catch();
    JUMPOUT(0x1E544D3BCLL);
  }

  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1E544DDF0(int a1)
{
  if ((a1 - 5) > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1E876F440 + (a1 - 5));
  }
}

__n128 sub_1E544DEA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F0ABF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1E544DEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFiP10__CVBufferyEJRKS6_iEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFiP10__CVBufferyEJRKS6_iEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFiP10__CVBufferyEJRKS6_iEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFiP10__CVBufferyEJRKS6_iEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1E544DF60(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, __int16 a5, int a6, int a7)
{
  v12 = a2;
  v13 = result;
  if (a2 >= 0x10000 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwPlatformUtils.cpp", 42, "(width < (1u << 16)) && Buffer width is 16-bit value but width passed is larger than that. Overflow!", 104, &unk_1E549A011, 0, sub_1E548FDE0), result) || a3 >= 0x10000 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwPlatformUtils.cpp", 45, "(height < (1u << 16)) && Buffer height is 16-bit value but height passed is larger than that. Overflow!", 107, &unk_1E549A011, 0, sub_1E548FDE0), result) || a4 >= 0x10000 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwPlatformUtils.cpp", 48, "(stride < (1u << 16)) && Buffer stride is 16-bit value but stride passed is larger than that. Overflow!", 107, &unk_1E549A011, 0, sub_1E548FDE0), result) || a6 < 0 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwPlatformUtils.cpp", 51, "(idx < (1u << 31)) && Buffer id is 31-bit value but idx passed is larger than that.  Overflow!", 98, &unk_1E549A011, 0, sub_1E548FDE0), result))
  {
    abort();
  }

  v14 = *v13 & 0x80000000 | a6 & 0x7FFFFFFF;
  *(v13 + 14) = a5;
  *(v13 + 10) = a3;
  *(v13 + 12) = v12;
  *(v13 + 8) = a4;
  *v13 = v14;
  *(v13 + 4) = a7;
  *(v13 + 16) = 0;
  return result;
}

uint64_t CVHWAGetFeatureDetectionSupported_0()
{
  sub_1E548F388();
  v0 = sub_1E548ED74();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = v0;
  result = 1;
  if (v2 <= 33024)
  {
    v7 = v2 - 32800;
    v8 = v7 > 0x10;
    v9 = (1 << v7) & 0x10081;
    if (v8 || v9 == 0)
    {
      return 0;
    }
  }

  else if (((v2 - 33025) > 0x3F || ((1 << (v2 - 1)) & 0x8002800280028005) == 0) && v2 != 33090 && v2 != 33104)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E544E18C(int *a1)
{
  sub_1E548F388();
  v2 = sub_1E548ED74();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (v2 <= 33055)
  {
    if (v2 > 33024)
    {
      if (v2 > 33039)
      {
        if (v2 == 33040)
        {
          *a1 = 3;
          return 1;
        }

        else
        {
          v4 = v2 == 33042;
          result = 0;
          if (v4)
          {
            *a1 = 4;
            return 1;
          }
        }
      }

      else
      {
        v4 = v2 == 33025 || v2 == 33027;
        result = 0;
        if (v4)
        {
          *a1 = 2;
          return 1;
        }
      }

      return result;
    }

    v6 = 0;
    if (v2 != 32800 && v2 != 32807)
    {
      v4 = v2 == 32816;
      result = 0;
      if (v4)
      {
        *a1 = 1;
        return 1;
      }

      return result;
    }

LABEL_18:
    *a1 = v6;
    return 1;
  }

  if (v2 <= 33073)
  {
    if (v2 == 33056)
    {
      *a1 = 6;
      return 1;
    }

    else if (v2 == 33058)
    {
      *a1 = 5;
      return 1;
    }

    else
    {
      v4 = v2 == 33072;
      result = 0;
      if (v4)
      {
        *a1 = 7;
        return 1;
      }
    }
  }

  else if (v2 > 33089)
  {
    if (v2 == 33090)
    {
      *a1 = 10;
      return 1;
    }

    else
    {
      v4 = v2 == 33104;
      result = 0;
      if (v4)
      {
        *a1 = 11;
        return 1;
      }
    }
  }

  else
  {
    if (v2 == 33074)
    {
      *a1 = 8;
      return 1;
    }

    v4 = v2 == 33088;
    result = 0;
    if (v4)
    {
      v6 = 9;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_1E544E3D8(unsigned int a1, int a2, int a3, uint64_t a4)
{
  v7 = (a3 + sqrt(a1) - 1) & -a3;
  if (v7 >= 0x10000 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwPlatformUtils.cpp", 340, "width < (1 << 16) && The width of the keypointbuffer has to be smaller than 2^16", 82, &unk_1E549A011, 0, sub_1E548FDE0) || (v8 = (a1 + v7 - 1) / v7, v8 * v7 < a1) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwPlatformUtils.cpp", 342, "width * height >= size && Buffer for keypoints is too small to contain all keypoints", 86, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *a4 = 1;
  *(a4 + 4) = v7;
  *(a4 + 8) = v8;
  v9 = (v7 + 63) & 0xFFFFFFC0;
  *(a4 + 12) = v9;
  *(a4 + 16) = a2;
  return v8 * v9;
}

uint64_t sub_1E544E4E4(uint64_t a1, int a2)
{
  *a1 = &unk_1F5F0AC70;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 2;
  *(a1 + 200) = 0;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0;
  *(a1 + 204) = 0;
  *(a1 + 228) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0;
  *(a1 + 260) = 0;
  *(a1 + 284) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0;
  *(a1 + 316) = 0;
  *(a1 + 340) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  *(a1 + 348) = 0u;
  *(a1 + 364) = 0;
  *(a1 + 372) = 0;
  *(a1 + 396) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 420) = 0;
  *(a1 + 404) = 0u;
  *(a1 + 428) = 0;
  *(a1 + 452) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 480) = 0;
  *(a1 + 460) = 0u;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0;
  *(a1 + 508) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 532) = 0;
  *(a1 + 516) = 0u;
  *(a1 + 540) = 0;
  *(a1 + 564) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 592) = 0;
  *(a1 + 588) = 0;
  *(a1 + 572) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 660) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 703) = 17;
  strcpy((a1 + 680), "lacc_DpKernel.bin");
  *(a1 + 704) = 0;
  *(a1 + 712) = 6;
  *(a1 + 720) = xmmword_1E5491C20;
  *(a1 + 736) = xmmword_1E5491C30;
  *(a1 + 752) = xmmword_1E5491C40;
  *(a1 + 768) = xmmword_1E5491C50;
  *(a1 + 784) = 4;
  *(a1 + 788) = 5;
  *(a1 + 792) = 0xFFFF0000003FLL;
  *(a1 + 800) = xmmword_1E5491C60;
  *(a1 + 816) = 0x3F80000000000000;
  *(a1 + 824) = 511;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 856) = 29;
  *(a1 + 864) = 0;
  if (a2 == 9)
  {
    v3 = xmmword_1E5492720;
    v4 = 0x323000000;
    goto LABEL_5;
  }

  if (a2 == 10)
  {
    v3 = xmmword_1E5492730;
    v4 = 0x4A3000000;
LABEL_5:
    *(a1 + 864) = v4;
    *(a1 + 656) = v3;
    goto LABEL_7;
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 54, "0 && unsupported platform", 27, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

LABEL_7:
  *(a1 + 856) = 29;
  return a1;
}

void sub_1E544E7B8(_Unwind_Exception *a1)
{
  v5 = v3;
  if (*v5)
  {
    *(v1 + 840) = *v5;
    MEMORY[0x1E6928640]();
    if ((*(v1 + 703) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1E5414CDC(v2);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 703) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v4);
  sub_1E5414CDC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1E544E80C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 68) != 2)
  {
    return 0;
  }

  *(a2 + 50) = sub_1E54789D8(*a2, *(a2 + 4));
  result = sub_1E541DFEC(a1 + 720, a2);
  if (!result)
  {
    return result;
  }

  if (*(a2 + 113) == 1)
  {
    if (*(a2 + 185) != 1 || *(a2 + 192))
    {
      v5 = sub_1E544CFB4(a2, a1 + 600, 9);
      *(a1 + 29) = v5;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (*(a2 + 192))
  {
    return 0;
  }

  *(a1 + 8) = *a2;
  v6 = *(a2 + 50);
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = *(a2 + 72);
  v7 = *(a2 + 68);
  *(a1 + 28) = v7;
  sub_1E541C1E0((a1 + 32), v6, v7);
  if (*(a1 + 28) == 2)
  {
    v8 = *(a1 + 840);
    v9 = *(a1 + 832);
    v10 = 0xFAFAFAFAFAFAFAFBLL * ((v8 - v9) >> 7);
    if (v8 == v9)
    {
      if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 848) - v8) >> 7) >= 1 - v10)
      {
        if (v8 - v9 != 6528)
        {
          bzero(*(a1 + 840), 0x1980uLL);
          v8 += 6528;
        }

        *(a1 + 840) = v8;
      }

      else
      {
        v11 = operator new(0x1980uLL, 0x40uLL);
        bzero(v11, 0x1980uLL);
        *(a1 + 832) = v11;
        *(a1 + 840) = v11 + 6528;
        *(a1 + 848) = v11 + 6528;
        if (v8)
        {
          MEMORY[0x1E6928640](v9, 64);
        }
      }

      v9 = *(a1 + 832);
    }

    else if (v10 >= 2)
    {
      *(a1 + 840) = v9 + 6528;
    }

    bzero(v9, 0x1980uLL);
    *(a1 + 672) = (*(a1 + 600) != 0) << 12;
    v12 = *(a1 + 616);
    v13 = *(a1 + 620);
    bzero((v9 + 64), 0xF80uLL);
    *(v9 + 64) = *(a2 + 113);
    v14 = *a2;
    if (*a2 >= 0x280u)
    {
      v15 = 640;
    }

    else
    {
      v15 = *a2;
    }

    *(v9 + 68) = v15;
    v16 = *(a2 + 4);
    *(v9 + 72) = v16;
    *(v9 + 76) = 8;
    v17 = *(a2 + 50);
    if ((v17 & 0xFFFE) != 4)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 271, "(input_cfg.numberOfOctaves == 4 || input_cfg.numberOfOctaves == 5) && Number of octaves can only be 4 or 5.", 109, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_232;
      }

      v17 = *(a2 + 50);
      v14 = *a2;
      v16 = *(a2 + 4);
    }

    if (sub_1E54789D8(v14, v16) != v17 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 276, "(input_cfg.numberOfOctaves == hw::desgen::ComputeNumOctavesFlow2( input_cfg.inputImageWidth, input_cfg.inputImageHeight)) && If width and height are > 320 then number of octaves should be 5 else, number of octaves should be 4.", 230, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_232:
      abort();
    }

    v18 = *(a2 + 50);
    bzero((v9 + 128), 0xE80uLL);
    *(v9 + 128) = 4128;
    v19 = *a2;
    v20 = *(a2 + 4);
    if (*a2 >= 0x280u)
    {
      LOWORD(v19) = 640;
    }

    *(v9 + 140) = 0u;
    *(v9 + 136) = v19;
    *(v9 + 138) = v20;
    *(v9 + 396) = 0;
    *(v9 + 364) = 0u;
    *(v9 + 380) = 0u;
    *(v9 + 332) = 0u;
    *(v9 + 348) = 0u;
    *(v9 + 300) = 0u;
    *(v9 + 316) = 0u;
    *(v9 + 268) = 0u;
    *(v9 + 284) = 0u;
    *(v9 + 236) = 0u;
    *(v9 + 252) = 0u;
    *(v9 + 204) = 0u;
    *(v9 + 220) = 0u;
    *(v9 + 172) = 0u;
    *(v9 + 188) = 0u;
    *(v9 + 156) = 0u;
    if (*(a2 + 50) == 5)
    {
      v21 = 1023;
    }

    else
    {
      v21 = 255;
    }

    if (*(a2 + 84))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    *(v9 + 404) = v22;
    if (*(a2 + 50) == 5)
    {
      v23 = 1023;
    }

    else
    {
      v23 = 255;
    }

    if (*(a2 + 85))
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *(v9 + 408) = v24;
    v25 = *(a2 + 86);
    if (*(a2 + 50) == 5)
    {
      v26 = 510;
    }

    else
    {
      v26 = 126;
    }

    if (*(a2 + 86))
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    *(v9 + 412) = v27;
    if ((v25 & 1) == 0 && (*(a2 + 87) & 1) == 0 && (*(a2 + 88) & 1) == 0 && (*(a2 + 89) & 1) == 0 && (*(a2 + 173) & 1) == 0 && *(a2 + 113) != 1)
    {
      v26 = 0;
    }

    v28 = 2 * v18;
    *(v9 + 416) = v26;
    if (v18)
    {
      if (v18 > 3)
      {
        v30 = xmmword_1E5491C90;
        v31 = xmmword_1E5491CA0;
        v32 = xmmword_1E5491CB0;
        v33 = xmmword_1E5491CC0;
        v29 = v28 & 0x1FFF8;
        *&v34 = 0x3000300030003;
        *(&v34 + 1) = 0x3000300030003;
        v35.i64[0] = 0x20002000200020;
        v35.i64[1] = 0x20002000200020;
        v36 = vdupq_n_s64(1uLL);
        v37.i64[0] = 0x10001000100010;
        v37.i64[1] = 0x10001000100010;
        v38 = vdupq_n_s64(8uLL);
        v39 = v28 & 0x1FFF8;
        v40 = v9 + 420;
        do
        {
          *v40 = v34;
          *(v40 + 124) = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v33, v36)), vceqzq_s64(vandq_s8(v32, v36))), vuzp1q_s32(vceqzq_s64(vandq_s8(v31, v36)), vceqzq_s64(vandq_s8(v30, v36)))), v37, v35);
          v31 = vaddq_s64(v31, v38);
          v32 = vaddq_s64(v32, v38);
          v33 = vaddq_s64(v33, v38);
          v30 = vaddq_s64(v30, v38);
          v40 += 16;
          v39 -= 8;
        }

        while (v39);
        if (v28 == v29)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v29 = 0;
      }

      v41 = v29 - v28;
      v42 = (v9 + 2 * v29 + 544);
      do
      {
        *(v42 - 62) = 3;
        if (v29)
        {
          v43 = 32;
        }

        else
        {
          v43 = 16;
        }

        *v42++ = v43;
        LOBYTE(v29) = v29 + 1;
        _CF = __CFADD__(v41++, 1);
      }

      while (!_CF);
    }

LABEL_69:
    *(v9 + 440) = 0;
    v45 = *(a1 + 788);
    if (*(a1 + 788))
    {
      v46 = 0;
      v47 = *(a2 + 20);
      v48 = v9 + 444;
      v49 = vdupq_n_s32(v47);
      v50 = (v9 + 460);
      do
      {
        v51 = v45 & 0xFFF8;
        v52 = v50;
        if (v45 >= 8)
        {
          do
          {
            v52[-1] = v49;
            *v52 = v49;
            v52 += 2;
            v51 -= 8;
          }

          while (v51);
          v53 = v45 & 0xFFF8;
          if (v53 == v45)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v53 = 0;
        }

        v54 = v45 - v53;
        v55 = (v48 + 4 * v53);
        do
        {
          *v55++ = v47;
          --v54;
        }

        while (v54);
LABEL_71:
        ++v46;
        v50 = (v50 + 20);
        v48 += 20;
      }

      while (v46 != v45);
    }

    *(v9 + 1944) = *(a2 + 24);
    *(v9 + 1948) = 2047;
    *(v9 + 1952) = sub_1E5478AA8(*a2, 0);
    v56 = sub_1E5478AA8(*a2, 1u);
    *(v9 + 1956) = v56;
    *(v9 + 1960) = v56;
    v57 = sub_1E5478AA8(*a2, 2u);
    *(v9 + 1964) = v57;
    *(v9 + 1968) = v57;
    v58 = sub_1E5478AA8(*a2, 3u);
    *(v9 + 1972) = v58;
    if (*(a2 + 50) == 5)
    {
      *(v9 + 1976) = v58;
      *(v9 + 1980) = sub_1E5478AA8(*a2, 4u);
    }

    *(v9 + 2048) = 1023;
    *(v9 + 2052) = xmmword_1E5491CD0;
    *(v9 + 2068) = 9437297;
    if (v18 >= 2)
    {
      v59 = v9 + 2072;
      v60 = 2;
      do
      {
        *v59 = xmmword_1E5491CE0;
        *(v59 + 16) = 9830514;
        v60 += 2;
        v59 += 20;
      }

      while (v60 < v28);
    }

    v61 = *(v9 + 2176) & 0xFFFFFFFD;
    *(v9 + 2176) = v61;
    if ((*(a2 + 88) & 1) != 0 && *(a2 + 89) == 1)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 391, "!(input_cfg.enableShortDescriptorOutputFlow2 && input_cfg.enableLongDescriptorOutputFlow2) && short and long descriptor should not be enabled at the same time", 160, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_232;
      }

      v61 = *(v9 + 2176);
    }

    v62 = v61 & 0xFFFFFFF3;
    *(v9 + 2176) = v61 & 0xFFFFFFF3;
    if (*(a2 + 89) == 1)
    {
      v62 = v61 | 0xC;
    }

    else if (*(a2 + 88) == 1)
    {
      v63 = v62 | 4;
      if (*(a2 + 112) == 1)
      {
        v62 |= 8u;
      }

      if (!*(a2 + 112))
      {
        v62 = v63;
      }
    }

    *(v9 + 2176) = v62 & 0xFFE0018F | 0x88000;
    if (*(a2 + 50) == 5)
    {
      v64 = 510;
    }

    else
    {
      v64 = 126;
    }

    if (*(a2 + 87))
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    *(v9 + 2180) = v65;
    v66 = *(a2 + 28);
    v303[0] = v66;
    v303[1] = v66;
    v303[2] = v66;
    v303[3] = v66;
    v304[0] = v66;
    v304[1] = v66;
    v304[2] = v66;
    v304[3] = v66;
    if (*(a2 + 76) == 1)
    {
      sub_1E5478504(v66, 2 * v18, v303);
    }

    v67 = v28 - 1;
    if (v28 != 2)
    {
      v68 = 2;
      if (v67 > 2)
      {
        v68 = v28 - 1;
      }

      if (v67 <= 8)
      {
        v69 = 1;
LABEL_111:
        v78 = v68 - v69;
        v79 = (v9 + 4 * v69 + 2184);
        v80 = &v303[v69 - 1];
        do
        {
          v81 = *v80++;
          *v79++ = v81;
          --v78;
        }

        while (v78);
        goto LABEL_113;
      }

      v70 = (v68 - 1) & 0xFFFFFFFFFFFFFFF8;
      v69 = v70 | 1;
      v71 = v304;
      v72 = (v9 + 2204);
      v73 = v70;
      do
      {
        v75 = v71[-2];
        v74 = v71[-1];
        v77 = *v71;
        v76 = v71[1];
        v71 += 4;
        v72[-1] = vuzp1q_s32(v75, v74);
        *v72 = vuzp1q_s32(v77, v76);
        v72 += 2;
        v73 -= 8;
      }

      while (v73);
      if (v68 - 1 != v70)
      {
        goto LABEL_111;
      }
    }

LABEL_113:
    v82 = (v9 + 1560);
    v83 = v9 + 564;
    v84 = v13 * v12;
    v85 = *(v9 + 2220) & 0xFFFFFC00 | *a2 & 0x3FF;
    *(v9 + 2220) = v85;
    *(v9 + 2220) = v85 & 0xE000FFFF | ((*(a2 + 4) & 0x1FFF) << 16);
    *(v9 + 2224) = xmmword_1E5491CF0;
    *(v9 + 2240) = xmmword_1E5491D00;
    *(v9 + 2256) = xmmword_1E5491D10;
    *(v9 + 2272) = xmmword_1E5491D20;
    *(v9 + 2288) = 0x1D002E00230039;
    v86 = (a2 + 20);
    if (v67 > 7 && (v9 + 2316 >= (a2 + 22) || v86 >= v9 + 4 * v18 + 2368))
    {
      v88 = (v9 + 2370);
      v87 = v67 & 0xFFFFFFFFFFFFFFF8;
      v89.i64[0] = 0x1000100010001;
      v89.i64[1] = 0x1000100010001;
      v90.i64[0] = -1;
      v90.i64[1] = -1;
      v91 = v67 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        *(v88 - 54) = v89;
        *(v88 - 36) = v90;
        v92 = vld1q_dup_s16(v86);
        *v88 = v92;
        *(v88++ - 18) = v92;
        v91 -= 8;
      }

      while (v91);
    }

    else
    {
      v87 = 0;
    }

    v93 = v9 + 3844;
    v94 = v87 - v28 + 1;
    v95 = (v9 + 2 * v87 + 2370);
    do
    {
      *(v95 - 27) = 1;
      *(v95 - 18) = -1;
      v96 = *v86;
      *v95 = *v86;
      *(v95 - 9) = v96;
      ++v95;
      _CF = __CFADD__(v94++, 1);
    }

    while (!_CF);
    v97 = (a2 + 22);
    if (v67 < 4 || (v98 = v9 + 2388, v9 + 2388 < (a2 + 23)) && v97 < v9 + 8 * v18 + 2384)
    {
      v99 = 0;
      goto LABEL_133;
    }

    if (v67 >= 0x10)
    {
      v99 = v67 & 0xFFFFFFFFFFFFFFF0;
      v100.i64[0] = 0xFFFFFF00FFFFFF00;
      v100.i64[1] = 0xFFFFFF00FFFFFF00;
      v101 = v67 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v102 = vqtbl1q_s8(*v97, v100);
        v103 = *(v98 + 48) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00);
        v104.i64[0] = __PAIR64__(HIDWORD(*v98), *v98) & 0xFFFFFF00FFFFFF00;
        v104.i32[2] = *(v98 + 8) & 0xFFFFFF00;
        v104.i32[3] = HIDWORD(*v98) & 0xFFFFFF00;
        v105 = *(v98 + 16) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00);
        *(v98 + 32) = vorrq_s8((*(v98 + 32) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v102);
        *(v98 + 48) = vorrq_s8(v103, v102);
        *v98 = vorrq_s8(v104, v102);
        *(v98 + 16) = vorrq_s8(v105, v102);
        v98 += 64;
        v101 -= 16;
      }

      while (v101);
      if ((v67 & 0xC) == 0)
      {
LABEL_133:
        v111 = v99 - v28 + 1;
        v112 = (v9 + 4 * v99 + 2388);
        do
        {
          *v112 = v97->i8[0];
          v112 += 4;
          _CF = __CFADD__(v111++, 1);
        }

        while (!_CF);
        *(v9 + 2424) = xmmword_1E5491D30;
        *(v9 + 2440) = 0;
        v113 = *(a2 + 50);
        if (v113 == 5)
        {
          v114 = 15;
        }

        else
        {
          v114 = 7;
        }

        *(v9 + 2448) = v114;
        if (v113 != 1)
        {
          v115 = 0;
          v116 = v9 + 2454;
          do
          {
            *(v116 - 2) = 19267693;
            ++v115;
            v116 += 4;
          }

          while (v115 < *(a2 + 50) - 1);
        }

        if (v67 < 4 || v83 < a2 + 48 && a2 + 43 < (v9 + 8 * v18 + 560))
        {
          v117 = 0;
          goto LABEL_153;
        }

        if (v67 >= 0x10)
        {
          v117 = v67 & 0xFFFFFFFFFFFFFFF0;
          v118.i64[0] = 0xFFFFFF00FFFFFF00;
          v118.i64[1] = 0xFFFFFF00FFFFFF00;
          v119 = v67 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v120 = vqtbl1q_s8(*(a2 + 43), v118);
            v121.i64[0] = __PAIR64__(HIDWORD(*v83), *v83) & 0xFFFFFFFEFFFFFFFELL;
            v121.i32[2] = *(v83 + 8) & 0xFFFFFFFE;
            v121.i32[3] = HIDWORD(*v83) & 0xFFFFFFFE;
            v122 = vorrq_s8((*(v83 + 16) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v120);
            v123 = vorrq_s8(v121, v120);
            v124 = vorrq_s8((*(v83 + 48) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v120);
            v125 = vorrq_s8((*(v83 + 32) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v120);
            *(v83 + 32) = v125;
            *(v83 + 48) = v124;
            *v83 = v123;
            *(v83 + 16) = v122;
            _Q6 = vdupq_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0);
            __asm { SHLL2           V7.4S, V6.8H, #0x10 }

            v131 = vshll_n_s16(*_Q6.i8, 0x10uLL);
            *(v83 + 32) = vorrq_s8(v131, (*&v125 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            *(v83 + 48) = vorrq_s8(_Q7, (*&v124 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            *v83 = vorrq_s8(v131, (*&v123 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            *(v83 + 16) = vorrq_s8(_Q7, (*&v122 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            v83 += 64;
            v119 -= 16;
          }

          while (v119);
          if ((v67 & 0xC) == 0)
          {
LABEL_153:
            v138 = v117 - v28 + 1;
            v139 = (v9 + 4 * v117 + 564);
            do
            {
              v140 = *v139 & 0xFFFFFFFE | *(a2 + 43);
              *v139 = v140;
              *v139++ = v140 & 0xFFC0FFFF | ((*(a2 + 46) & 0x3F) << 16);
              _CF = __CFADD__(v138++, 1);
            }

            while (!_CF);
            if (*(a2 + 113))
            {
              v141 = 1;
            }

            else
            {
              v141 = *(a2 + 173);
            }

            v142 = *(v9 + 2468) & 0xFFFFFFFE | v141;
            *(v9 + 2468) = v142;
            if ((*(a2 + 113) & 1) != 0 || *(a2 + 173) == 1)
            {
              v143 = v142 & 0xFFFE00FF | (((vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) >> 5) & 0x1FF) << 8);
              *(v9 + 2468) = v143;
              *(v9 + 2468) = v143 & 0xF8FFFFFF | ((*(a2 + 152) & 3) << 24);
              *(v9 + 2488) = sub_1E541F5EC(*(a2 + 24));
              v144 = *(a1 + 672);
              v145 = *(a1 + 664) + v144;
              *(v9 + 2472) = v145;
              *(a1 + 392) = 1;
              *(a1 + 396) = v144;
              v146 = *(a2 + 152);
              if (v146 > 2)
              {
                v147 = 16;
              }

              else
              {
                v147 = *&asc_1E549277C[4 * v146];
              }

              if (sub_1E544E3D8(v147 * vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(*(a2 + 24), 9uLL)) + 1.0, 9uLL), 0, 64, a1 + 372) >= 0x4B001 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 553, "curr_desc_size <= kCurrDescriptorDTCMSizeColl", 45, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_232;
              }

              v148 = *(a1 + 672) + 307200;
              *(v9 + 2480) = v145 + 307200;
              *(a1 + 672) = v148 + (*(v9 + 2488) << 6);
            }

            *v82 = vandq_s8(*v82, xmmword_1E5491D40);
            *(v9 + 1904) = *&vandq_s8(*(v9 + 1904), vdupq_n_s32(0xE000F000)) | __PAIR128__(0x10001000100010, 0x10001000100010);
            *(v9 + 1576) &= 0xFFFFFFF0FFFFFFF0;
            *(v9 + 1920) = vorrq_s8(vandq_s8(*(v9 + 1920), xmmword_1E5491D50), xmmword_1E5491D60);
            *(v9 + 1936) = vorr_s8(vand_s8(*(v9 + 1936), vdup_n_s32(0xFFFF8080)), vdup_n_s32(0x101u));
            v149 = vdupq_n_s32(0xF000F800);
            *(v9 + 1584) = *&vandq_s8(*(v9 + 1584), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1600) = *(v9 + 1600) & 0xF000F800 | 0x50005;
            *(v9 + 1604) = *&vandq_s8(*(v9 + 1604), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1620) = *(v9 + 1620) & 0xF000F800 | 0x50005;
            *(v9 + 1624) = *&vandq_s8(*(v9 + 1624), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1640) = *(v9 + 1640) & 0xF000F800 | 0x50005;
            *(v9 + 1644) = *&vandq_s8(*(v9 + 1644), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1660) = *(v9 + 1660) & 0xF000F800 | 0x50005;
            *(v9 + 1664) = *&vandq_s8(*(v9 + 1664), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1680) = *(v9 + 1680) & 0xF000F800 | 0x50005;
            *(v9 + 1684) = *&vandq_s8(*(v9 + 1684), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1700) = *(v9 + 1700) & 0xF000F800 | 0x50005;
            *(v9 + 1704) = *&vandq_s8(*(v9 + 1704), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1720) = *(v9 + 1720) & 0xF000F800 | 0x50005;
            *(v9 + 1724) = *&vandq_s8(*(v9 + 1724), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1740) = *(v9 + 1740) & 0xF000F800 | 0x50005;
            *(v9 + 1744) = *&vandq_s8(*(v9 + 1744), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1760) = *(v9 + 1760) & 0xF000F800 | 0x50005;
            *(v9 + 1764) = *&vandq_s8(*(v9 + 1764), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1780) = *(v9 + 1780) & 0xF000F800 | 0x50005;
            *(v9 + 1784) = *&vandq_s8(*(v9 + 1784), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1800) = *(v9 + 1800) & 0xF000F800 | 0x50005;
            *(v9 + 1804) = *&vandq_s8(*(v9 + 1804), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1820) = *(v9 + 1820) & 0xF000F800 | 0x50005;
            *(v9 + 1824) = *&vandq_s8(*(v9 + 1824), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1840) = *(v9 + 1840) & 0xF000F800 | 0x50005;
            *(v9 + 1844) = *&vandq_s8(*(v9 + 1844), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1860) = *(v9 + 1860) & 0xF000F800 | 0x50005;
            *(v9 + 1864) = *&vandq_s8(*(v9 + 1864), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1880) = *(v9 + 1880) & 0xF000F800 | 0x50005;
            *(v9 + 1884) = *&vandq_s8(*(v9 + 1884), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1900) = *(v9 + 1900) & 0xF000F800 | 0x50005;
            if (*a2 > 0x280u)
            {
              sub_1E5478B6C(640, *a2, *(a2 + 4), *(a2 + 42), v246);
              v159 = v246[0] & 0x1F;
              v160 = *(v9 + 128) & 0xFFFFFFE0FFFFFFFFLL | ((v246[0] & 0x1F) << 32);
              *(v9 + 128) = v160;
              v161 = HIDWORD(v160) & 0x1F;
              if (v159)
              {
                v162 = 0;
                v163 = 0;
                v164 = 496;
                do
                {
                  *(v9 + v164 * 4) = *(v9 + v164 * 4) & 0xFFFFE000 | v246[v164 - 495] & 0x1FFF;
                  v165 = (v9 + v162);
                  v165[150] = *(v9 + v162 + 600) & 0xE000F800 | *(&v248 + v163) & 0x7FF | ((*(&v249 + v163) & 0x1FFF) << 16);
                  v166 = *(&v258 + v163);
                  v165[230] = *(v9 + v162 + 920) & 0xE000FC00 | (v166 / 5) & 0x3FF | (((((1717986919 * *(&v259 + v163)) >> 33) + ((1717986919 * *(&v259 + v163)) >> 63)) & 0x1FFF) << 16);
                  v165[310] = *(v9 + v162 + 1240) & 0xFFFFFC00 | (v166 % 5) & 0x3FF;
                  v165[151] = *(v9 + v162 + 604) & 0xE000F800 | *(&v250 + v163) & 0x7FF | ((*(&v251 + v163) & 0x1FFF) << 16);
                  v167 = *(&v260 + v163);
                  v165[231] = *(v9 + v162 + 924) & 0xE000FC00 | (v167 / 5) & 0x3FF | (((((1717986919 * *(&v261 + v163)) >> 33) + ((1717986919 * *(&v261 + v163)) >> 63)) & 0x1FFF) << 16);
                  v165[311] = *(v9 + v162 + 1244) & 0xFFFFFC00 | (v167 % 5) & 0x3FF;
                  v165[152] = *(v9 + v162 + 608) & 0xE000F800 | *(&v252 + v163) & 0x7FF | ((*(&v253 + v163) & 0x1FFF) << 16);
                  v168 = *(&v262 + v163);
                  v165[232] = *(v9 + v162 + 928) & 0xE000FC00 | (v168 / 5) & 0x3FF | (((((1717986919 * *(&v263 + v163)) >> 33) + ((1717986919 * *(&v263 + v163)) >> 63)) & 0x1FFF) << 16);
                  v165[312] = *(v9 + v162 + 1248) & 0xFFFFFC00 | (v168 % 5) & 0x3FF;
                  v165[153] = *(v9 + v162 + 612) & 0xE000F800 | *(&v254 + v163) & 0x7FF | ((*(&v255 + v163) & 0x1FFF) << 16);
                  v169 = *(&v264 + v163);
                  v170 = *(v9 + v162 + 1252) & 0xFFFFFC00 | (v169 % 5) & 0x3FF;
                  v165[233] = *(v9 + v162 + 932) & 0xE000FC00 | (v169 / 5) & 0x3FF | (((((1717986919 * *(&v265 + v163)) >> 33) + ((1717986919 * *(&v265 + v163)) >> 63)) & 0x1FFF) << 16);
                  v165[313] = v170;
                  v165[154] = *(v9 + v162 + 616) & 0xE000F800 | v257[v163 / 4 - 1] & 0x7FF | ((v257[v163 / 4] & 0x1FFF) << 16);
                  v171 = v267[v163 / 4 - 1];
                  v172 = *(v9 + v162 + 1256);
                  v165[234] = *(v9 + v162 + 936) & 0xE000FC00 | (v171 / 5) & 0x3FF | (((((1717986919 * v267[v163 / 4]) >> 33) + ((1717986919 * v267[v163 / 4]) >> 63)) & 0x1FFF) << 16);
                  v165[314] = v172 & 0xFFFFFC00 | (v171 % 5) & 0x3FF;
                  v163 += 40;
                  ++v164;
                  v162 += 20;
                }

                while (40 * v161 != v163);
              }

              v82->i32[0] = v82->i32[0] & 0xFFFFFFFE | *(a2 + 42);
              if (*(a2 + 42) == 1)
              {
                *(v9 + 1924) = *(v9 + 1924) & 0xFFFF8080 | v278 & 0x7F | ((v279 & 0x7F) << 8);
                *(v9 + 1904) = *(v9 + 1904) & 0xE000F000 | v288 & 0xFFF | ((v289 & 0x1FFF) << 16);
                *(v9 + 1564) = *(v9 + 1564) & 0xFFFFFFF0 | v298 & 0xF;
                *(v9 + 1928) = *(v9 + 1928) & 0xFFFF8080 | v280 & 0x7F | ((v281 & 0x7F) << 8);
                *(v9 + 1908) = *(v9 + 1908) & 0xE000F000 | v290 & 0xFFF | ((v291 & 0x1FFF) << 16);
                *(v9 + 1568) = *(v9 + 1568) & 0xFFFFFFF0 | v299 & 0xF;
                *(v9 + 1932) = *(v9 + 1932) & 0xFFFF8080 | v282 & 0x7F | ((v283 & 0x7F) << 8);
                *(v9 + 1912) = *(v9 + 1912) & 0xE000F000 | v292 & 0xFFF | ((v293 & 0x1FFF) << 16);
                *(v9 + 1572) = *(v9 + 1572) & 0xFFFFFFF0 | v300 & 0xF;
                *(v9 + 1936) = *(v9 + 1936) & 0xFFFF8080 | v284 & 0x7F | ((v285 & 0x7F) << 8);
                *(v9 + 1916) = *(v9 + 1916) & 0xE000F000 | v294 & 0xFFF | ((v295 & 0x1FFF) << 16);
                *(v9 + 1576) = *(v9 + 1576) & 0xFFFFFFF0 | v301 & 0xF;
                *(v9 + 1940) = *(v9 + 1940) & 0xFFFF8080 | v286 & 0x7F | ((v287 & 0x7F) << 8);
                *(v9 + 1920) = *(v9 + 1920) & 0xE000F000 | v296 & 0xFFF | ((v297 & 0x1FFF) << 16);
                *(v9 + 1580) = *(v9 + 1580) & 0xFFFFFFF0 | v302 & 0xF;
                if (v159)
                {
                  v173 = &v277;
                  v174 = (v9 + 1600);
                  v175 = HIDWORD(v160) & 0x1F;
                  do
                  {
                    v176 = *(v174 - 3);
                    *(v174 - 4) = *(v174 - 4) & 0xF000F800 | *(v173 - 9) & 0x7FF | ((*(v173 - 8) & 0xFFF) << 16);
                    *(v174 - 3) = v176 & 0xF000F800 | *(v173 - 7) & 0x7FF | ((*(v173 - 6) & 0xFFF) << 16);
                    v177 = *(v174 - 1);
                    *(v174 - 2) = *(v174 - 2) & 0xF000F800 | *(v173 - 5) & 0x7FF | ((*(v173 - 4) & 0xFFF) << 16);
                    *(v174 - 1) = v177 & 0xF000F800 | *(v173 - 3) & 0x7FF | ((*(v173 - 2) & 0xFFF) << 16);
                    v178 = *v174 & 0xF000F800 | *(v173 - 1) & 0x7FF;
                    v179 = *v173;
                    v173 += 10;
                    *v174 = v178 | ((v179 & 0xFFF) << 16);
                    v174 += 5;
                    --v175;
                  }

                  while (v175);
                }
              }

              *(v9 + 2496) = *(v9 + 2496) & 0xE0000000 | (2 * (*(v9 + 136) & 0x3FFF)) & 0x7FFF | ((*(v9 + 138) & 0x3FFF) << 15) | 1;
              *(v9 + 2500) = v159;
              if (v161)
              {
                if (v161 > 7)
                {
                  v197 = (v9 + 1984);
                  v198 = HIDWORD(v160) & 7;
                  v180 = v161 - v198;
                  v199.i64[0] = 0x1F0000001FLL;
                  v199.i64[1] = 0x1F0000001FLL;
                  v200 = v161 - v198;
                  do
                  {
                    v201 = (v197 + 524);
                    v202 = *v197;
                    v203 = *(v197 + 1);
                    v197 += 2;
                    *v201 = vandq_s8(v202, v199);
                    v201[1] = vandq_s8(v203, v199);
                    v200 -= 8;
                  }

                  while (v200);
                  if (!v198)
                  {
                    goto LABEL_197;
                  }
                }

                else
                {
                  v180 = 0;
                }

                v204 = v180 - v161;
                v205 = (v9 + 4 * v180 + 1984);
                do
                {
                  v205[131] = *v205 & 0x1FFF;
                  ++v205;
                  _CF = __CFADD__(v204++, 1);
                }

                while (!_CF);
              }
            }

            else
            {
              v245 = v84;
              *(v9 + 128) = *(v9 + 128) & 0xFFFFFFE0FFFFFFFFLL | 0x100000000;
              v150 = vdupq_n_s32(0xC000E000);
              *(v9 + 1984) = vandq_s8(*(v9 + 1984), v150);
              *(v9 + 2000) = vandq_s8(*(v9 + 2000), v150);
              *(v9 + 2016) = vandq_s8(*(v9 + 2016), v150);
              *(v9 + 2032) = vandq_s8(*(v9 + 2032), v150);
              if (*(a1 + 784) != 4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 232, "hal.minBlockSize == feature_detection::kMinBlockSize", 52, &unk_1E549A011, 0, sub_1E548FDE0) || *(a1 + 788) != 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 233, "hal.numberOfGridElements == feature_detection::kNumRegionOfInterestBlocks", 73, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_232;
              }

              if (*(a2 + 50))
              {
                v151 = 0;
                do
                {
                  v153 = sub_1E5478AA8(*a2, v151);
                  v154 = sub_1E5478AA8(*(a2 + 4), v151);
                  v155 = *(a2 + 14);
                  v156 = v153;
                  if (*(a2 + 18))
                  {
                    v156 = sub_1E5478AA8(*(a2 + 18), v151);
                  }

                  v157 = *(a2 + 12);
                  v158 = v154;
                  if (*(a2 + 16))
                  {
                    v158 = sub_1E5478AA8(*(a2 + 16), v151);
                  }

                  v246[0] = 0;
                  *v306 = 0;
                  v305 = 0;
                  sub_1E541E498(a1 + 720, v153, v246, &v306[1], v155 >> v151, v156);
                  sub_1E541E498(a1 + 720, v154, v306, &v305, v157 >> v151, v158);
                  v152 = v9 + 4 * v151;
                  *(v152 + 600) = *(v152 + 600) & 0xE000F800 | v246[0] & 0x7FF | ((v306[0] & 0x1FFF) << 16);
                  *(v152 + 920) = *(v152 + 920) & 0xE000FC00 | v306[1] & 0x3FF | ((v305 & 0x1FFF) << 16);
                  ++v151;
                }

                while (v151 < *(a2 + 50));
              }

              v93 = v9 + 3844;
              *(v9 + 1560) = *(v9 + 1560) & 0xFFFFFFFE | *(a2 + 42);
              v84 = v245;
              if (*(a2 + 42) == 1)
              {
                bzero(v247, 0x824uLL);
                v181 = *(v9 + 600);
                v182 = v181 & 0x7FF;
                v246[0] = 1;
                v183 = HIWORD(v181) & 0x1FFF;
                v184 = *(v9 + 920);
                v259 = 5 * (HIWORD(v184) & 0x1FFF);
                v258 = (*(v9 + 1240) & 0x3FF) + 5 * (v184 & 0x3FF);
                v185 = *(v9 + 604);
                v248 = v182;
                v249 = v183;
                v250 = v185 & 0x7FF;
                v186 = HIWORD(v185) & 0x1FFF;
                v187 = *(v9 + 924);
                v261 = 5 * (HIWORD(v187) & 0x1FFF);
                v260 = (*(v9 + 1244) & 0x3FF) + 5 * (v187 & 0x3FF);
                v188 = *(v9 + 608);
                v251 = v186;
                v252 = v188 & 0x7FF;
                v189 = HIWORD(v188) & 0x1FFF;
                v190 = *(v9 + 928);
                v263 = 5 * (HIWORD(v190) & 0x1FFF);
                v262 = (*(v9 + 1248) & 0x3FF) + 5 * (v190 & 0x3FF);
                v191 = *(v9 + 612);
                v253 = v189;
                v254 = v191 & 0x7FF;
                v192 = HIWORD(v191) & 0x1FFF;
                v193 = *(v9 + 932);
                v265 = 5 * (HIWORD(v193) & 0x1FFF);
                v264 = (*(v9 + 1252) & 0x3FF) + 5 * (v193 & 0x3FF);
                v194 = *(v9 + 616);
                v255 = v192;
                v256 = v194 & 0x7FF;
                v195 = *(v9 + 936);
                v267[0] = 5 * (HIWORD(v195) & 0x1FFF);
                v196 = (*(v9 + 1256) & 0x3FF) + 5 * (v195 & 0x3FF);
                v257[0] = HIWORD(v194) & 0x1FFF;
                v266 = v196;
                sub_1E5478B6C(640, *a2, *(a2 + 4), 1, v246);
                *(v9 + 1924) = *(v9 + 1924) & 0xFFFF8080 | v278 & 0x7F | ((v279 & 0x7F) << 8);
                *(v9 + 1904) = *(v9 + 1904) & 0xE000F000 | v288 & 0xFFF | ((v289 & 0x1FFF) << 16);
                *(v9 + 1564) = *(v9 + 1564) & 0xFFFFFFF0 | v298 & 0xF;
                *(v9 + 1584) = *(v9 + 1584) & 0xF000F800 | v268 & 0x7FF | ((v269 & 0xFFF) << 16);
                *(v9 + 1928) = *(v9 + 1928) & 0xFFFF8080 | v280 & 0x7F | ((v281 & 0x7F) << 8);
                *(v9 + 1908) = *(v9 + 1908) & 0xE000F000 | v290 & 0xFFF | ((v291 & 0x1FFF) << 16);
                *(v9 + 1568) = *(v9 + 1568) & 0xFFFFFFF0 | v299 & 0xF;
                *(v9 + 1588) = *(v9 + 1588) & 0xF000F800 | v270 & 0x7FF | ((v271 & 0xFFF) << 16);
                *(v9 + 1932) = *(v9 + 1932) & 0xFFFF8080 | v282 & 0x7F | ((v283 & 0x7F) << 8);
                *(v9 + 1912) = *(v9 + 1912) & 0xE000F000 | v292 & 0xFFF | ((v293 & 0x1FFF) << 16);
                *(v9 + 1572) = *(v9 + 1572) & 0xFFFFFFF0 | v300 & 0xF;
                *(v9 + 1592) = *(v9 + 1592) & 0xF000F800 | v272 & 0x7FF | ((v273 & 0xFFF) << 16);
                *(v9 + 1936) = *(v9 + 1936) & 0xFFFF8080 | v284 & 0x7F | ((v285 & 0x7F) << 8);
                *(v9 + 1916) = *(v9 + 1916) & 0xE000F000 | v294 & 0xFFF | ((v295 & 0x1FFF) << 16);
                *(v9 + 1576) = *(v9 + 1576) & 0xFFFFFFF0 | v301 & 0xF;
                *(v9 + 1596) = *(v9 + 1596) & 0xF000F800 | v274 & 0x7FF | ((v275 & 0xFFF) << 16);
                *(v9 + 1940) = *(v9 + 1940) & 0xFFFF8080 | v286 & 0x7F | ((v287 & 0x7F) << 8);
                *(v9 + 1920) = *(v9 + 1920) & 0xE000F000 | v296 & 0xFFF | ((v297 & 0x1FFF) << 16);
                *(v9 + 1580) = *(v9 + 1580) & 0xFFFFFFF0 | v302 & 0xF;
                *(v9 + 1600) = *(v9 + 1600) & 0xF000F800 | v276 & 0x7FF | ((v277 & 0xFFF) << 16);
              }
            }

LABEL_197:
            v206 = *(v9 + 3840);
            if (*(a2 + 113))
            {
              *(v9 + 3840) = v206 & 0xFFFFFFFE;
              v207 = vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) & 0x3FFF;
              *(v9 + 3904) = *(v9 + 3904) & 0xFFFFC000 | v207;
              v208 = v206 & 0xFFFE00FE | (((vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) >> 5) & 0x1FF) << 8);
              *(v9 + 3840) = v208;
              *(v9 + 3840) = v208 & 0xFCFFFFFF | ((*(a2 + 152) & 3) << 24);
              v209 = *(v9 + 2472);
              *v93 = v209;
              *(v93 + 24) = *(v9 + 2480);
              v210 = *(a2 + 152);
              if (v210 > 2)
              {
                v211 = 0;
                v212 = 512;
              }

              else
              {
                v211 = dword_1E5492788[v210];
                v212 = dword_1E5492794[v210];
              }

              *(v9 + 3852) = v211;
              *(v9 + 3856) = v212;
              *(v9 + 3860) = (v209 & 0x7FFFF) + 384;
              *(v9 + 3864) = (v209 & 0x7FFFF) + 512;
              *(v9 + 3876) = *(v9 + 2488);
              v214 = *(a1 + 672);
              v215 = *(a1 + 664) + v214;
              *(v9 + 3880) = v215;
              v216 = 4 * v207;
              v217 = v215 + v216;
              LODWORD(v216) = v214 + v216;
              *(a1 + 672) = v216;
              *(v9 + 3888) = v217;
              v218 = v217 + 16 * (*(v9 + 3904) & 0x3FFF);
              LODWORD(v216) = 16 * (*(v9 + 3904) & 0x3FFF) + v216;
              *(a1 + 672) = v216;
              *(v9 + 3896) = v218;
              *(a1 + 420) = 1;
              *(a1 + 424) = v216;
              *(a1 + 672) += sub_1E544E3D8(32 * (*(v9 + 3904) & 0x3FFFu) + 32, 0, 64, a1 + 400);
              *(v9 + 3904) &= 0xC0FFFFFF;
              *(v9 + 3908) = 1;
              v219 = *(a2 + 116);
              *(v93 + 68) = vcvtq_u32_f32(v219);
              v220.i64[0] = 0x300000003;
              v220.i64[1] = 0x300000003;
              *(v93 + 104) = vandq_s8(vcvtq_n_u32_f32(vabsq_f32(v219), 0x12uLL), v220);
              v221 = *(a2 + 132);
              *(v93 + 84) = vcvtq_u32_f32(v221);
              *(v93 + 120) = vandq_s8(vcvtq_n_u32_f32(vabsq_f32(v221), 0x12uLL), v220);
              v221.i32[0] = *(a2 + 148);
              *(v9 + 3944) = v221.f32[0];
              *(v9 + 3980) = vcvts_n_u32_f32(fabsf(v221.f32[0]), 0x12uLL) & 0x3FFFF;
              v222 = *(v9 + 3984);
              *(v9 + 3984) = v222 & 0xFFFFFFFFC000E000;
              v223 = v222 & 0xFFFFE000C000E000 | ((*a2 & 0x1FFF) << 32);
              *(v9 + 3984) = v223;
              *(v9 + 3984) = v223 & 0xC000FFFFFFFFFFFFLL | ((*(a2 + 4) & 0x3FFF) << 48);
              v224 = *(v9 + 3992) & 0xFFFFFF00 | vcvtas_u32_f32((*(a2 + 156) * 256.0) / 360.0);
              *(v9 + 3992) = v224;
              *(v9 + 3992) = v224 & 0xFEC000FF | ((vcvtas_u32_f32(*(a2 + 160) * 512.0) & 0x3FFF) << 8);
              *(v9 + 3996) = (*(a2 + 164) * ((*(a2 + 164) * *a2) * *a2));
              *(v9 + 4000) = *(a2 + 168);
              v213 = *(v9 + 4) & 0xFFFFFFFC;
              if (v84)
              {
                ++v213;
              }

              *(v9 + 4) = v213;
              if (!v84)
              {
                goto LABEL_211;
              }
            }

            else
            {
              *(v9 + 3840) = v206 | 1;
              v213 = *(v9 + 4) & 0xFFFFFFFC;
              if (v84)
              {
                ++v213;
              }

              *(v9 + 4) = v213;
              if (!v84)
              {
                goto LABEL_211;
              }
            }

            *(a1 + 504) = 1;
            *(a1 + 508) = 0;
            v225 = *(a1 + 616);
            v226 = *(a1 + 620);
            v227 = *(a1 + 612);
            *(a1 + 484) = 1;
            *(a1 + 488) = v225;
            *(a1 + 492) = v226;
            v228 = (v225 + 63) & 0xFFFFFFC0;
            *(a1 + 496) = v228;
            *(a1 + 500) = v227;
            if (v228 * v226 != v84 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 460, "size == itcm_size", 17, &unk_1E549A011, 0, sub_1E548FDE0))
            {
              goto LABEL_232;
            }

            v213 = *(v9 + 4) & 0xFFFFFFF3 | 4;
            *(v9 + 4) = v213;
            *(v9 + 6376) = *(a1 + 656);
            *(v9 + 6384) = v84;
LABEL_211:
            v229 = *(a1 + 628);
            v230 = *(a1 + 632);
            v231 = v230 * v229;
            if ((v230 * v229) > 0x1000)
            {
              if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 470, "data_segment_size <= kDataSegmentSize && Data segment size larger than expected", 81, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_232;
              }

              v229 = *(a1 + 628);
              v230 = *(a1 + 632);
            }

            else if (!v231)
            {
LABEL_219:
              v234 = *(a1 + 640);
              v235 = *(a1 + 644);
              v236 = v235 * v234;
              if (!(v235 * v234))
              {
                goto LABEL_224;
              }

              *(a1 + 560) = 1;
              v237 = *(a1 + 672);
              *(a1 + 564) = v237;
              v238 = *(a1 + 636);
              *(a1 + 540) = 1;
              *(a1 + 544) = v234;
              *(a1 + 548) = v235;
              v239 = (v234 + 63) & 0xFFFFFFC0;
              *(a1 + 552) = v239;
              *(a1 + 556) = v238;
              v240 = v239 * v235;
              v241 = v237;
              if (v240 == v236)
              {
LABEL_223:
                *(a1 + 672) = v241 + v236;
                v242 = *(a1 + 664) + v237;
                v213 = *(v9 + 4) & 0xFFFFFF3F | 0x40;
                *(v9 + 4) = v213;
                *(v9 + 6400) = v242;
                *(v9 + 6408) = v236;
LABEL_224:
                if (*(a1 + 392) == 1)
                {
                  v243 = *(a1 + 664) + *(a1 + 396);
                  v213 = v213 & 0xFFFFF3FF | 0x400;
                  *(v9 + 4) = v213;
                  *(v9 + 6424) = v243;
                  *(v9 + 6432) = *(a1 + 380) * *(a1 + 384);
                  if (*(a1 + 420) != 1)
                  {
                    goto LABEL_226;
                  }
                }

                else if (*(a1 + 420) != 1)
                {
LABEL_226:
                  if (!v84)
                  {
                    return 1;
                  }

LABEL_227:
                  *(v9 + 5336) = *(a1 + 608);
                  *(v9 + 5340) = 0x80000000;
                  *(v9 + 5344) = 0;
                  *(v9 + 5208) = 0x600000006;
                  *(v9 + 5180) = 0x80000;
                  return 1;
                }

                v244 = *(a1 + 664) + *(a1 + 424);
                *(v9 + 4) = v213 & 0xFFFFCFFF | 0x1000;
                *(v9 + 6436) = v244;
                *(v9 + 6444) = *(a1 + 408) * *(a1 + 412);
                if (!v84)
                {
                  return 1;
                }

                goto LABEL_227;
              }

              if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 505, "size == extra_input_size", 24, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
              {
                v241 = *(a1 + 672);
                v237 = *(a1 + 564);
                goto LABEL_223;
              }

              goto LABEL_232;
            }

            *(a1 + 532) = 1;
            *(a1 + 536) = 0;
            v232 = *(a1 + 624);
            *(a1 + 512) = 1;
            *(a1 + 516) = v229;
            *(a1 + 520) = v230;
            v233 = (v229 + 63) & 0xFFFFFFC0;
            *(a1 + 524) = v233;
            *(a1 + 528) = v232;
            if (v233 * v230 != v231 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 484, "size == data_segment_size", 25, &unk_1E549A011, 0, sub_1E548FDE0))
            {
              goto LABEL_232;
            }

            v213 = *(v9 + 4) & 0xFFFFFFCF | 0x10;
            *(v9 + 4) = v213;
            *(v9 + 6388) = *(a1 + 664);
            *(v9 + 6396) = v231;
            goto LABEL_219;
          }
        }

        else
        {
          v117 = 0;
        }

        v132 = v117;
        v117 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        v133 = (v9 + 4 * v132 + 564);
        v134 = v132 - v117;
        v135.i64[0] = 0xFF000000FFLL;
        v135.i64[1] = 0xFF000000FFLL;
        do
        {
          v136.i64[0] = __PAIR64__(HIDWORD(*v133), *v133) & 0xFFFFFFFEFFFFFFFELL;
          v136.i32[2] = v133[1] & 0xFFFFFFFE;
          v136.i32[3] = HIDWORD(*v133) & 0xFFFFFFFE;
          v137 = vorrq_s8(v136, vandq_s8(vmovl_u16(vdup_n_s16(*(a2 + 43))), v135));
          *v133 = v137;
          *v133 = vorrq_s8(vshll_n_s16(vdup_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0), 0x10uLL), (*&v137 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
          v133 += 2;
          v134 += 4;
        }

        while (v134);
        goto LABEL_153;
      }
    }

    else
    {
      v99 = 0;
    }

    v106 = v99;
    v99 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v107 = (v9 + 4 * v106 + 2388);
    v108 = v106 - (v67 & 0xFFFFFFFFFFFFFFFCLL);
    v109.i64[0] = 0xFF000000FFLL;
    v109.i64[1] = 0xFF000000FFLL;
    do
    {
      v110.i64[0] = __PAIR64__(HIDWORD(*v107), *v107) & 0xFFFFFF00FFFFFF00;
      v110.i32[2] = v107[1] & 0xFFFFFF00;
      v110.i32[3] = HIDWORD(*v107) & 0xFFFFFF00;
      *v107 = vorrq_s8(v110, vandq_s8(vmovl_u16(vdup_n_s16(v97->i64[0])), v109));
      v107 += 2;
      v108 += 4;
    }

    while (v108);
    goto LABEL_133;
  }

  return 0;
}

__n128 sub_1E5450940(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a1;
  v5 = *(a1 + 832);
  v6 = *(a1 + 16);
  v32 = (*(*a1 + 72))(a1);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v33 = 28 * v6;
    v12 = v4;
    do
    {
      if (((3 << v8) & v5[101]) != 0)
      {
        v13 = *(v4 + 32) + v10;
        v14 = sub_1E5478AA8(a2, v9);
        v15 = sub_1E5478AA8(a3, v9);
        *v13 = 1;
        *(v13 + 4) = 2 * v14;
        *(v13 + 8) = v15;
        v16 = (2 * v14 + 63) & 0xFFFFFFC0;
        *(v13 + 12) = v16;
        *(v13 + 16) = v11;
        v11 += v16 * v15;
      }

      v4 = v12;
      if (((3 << v8) & v5[102]) != 0)
      {
        v17 = *(v12 + 104) + v10;
        v18 = sub_1E5478AA8(a2, v9);
        v19 = sub_1E5478AA8(a3, v9);
        *v17 = 1;
        *(v17 + 4) = 2 * v18;
        *(v17 + 8) = v19;
        v20 = (4 * v18 + 63) & 0xFFFFFFC0;
        *(v17 + 12) = v20;
        *(v17 + 16) = v11;
        v11 += v20 * v19;
      }

      v10 += 28;
      ++v9;
      v8 += 2;
    }

    while (v33 != v10);
  }

  else
  {
    v11 = 0;
  }

  if (v5[545])
  {
    v11 += sub_1E544E3D8(0x186A00u, v11, 64, v4 + 288);
  }

  if (v5[103])
  {
    v11 += sub_1E544E3D8(8 * v5[486], v11, 64, v4 + 316);
  }

  v21 = (v5[544] >> 2) & 3;
  if (v21 > 1)
  {
    if (v21 == 3)
    {
      v22 = 76;
    }

    else
    {
      v22 = 44;
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_29;
    }

    v22 = 28;
  }

  v23 = v5[486] * v22;
  v24 = (v23 + 65471) / 0xFFC0;
  if (v23 >= 0xFFC1)
  {
    v25 = (v23 + 65471) / 0xFFC0;
  }

  else
  {
    v25 = 1;
  }

  if (v23 >= 0xFFC1)
  {
    v26 = 65472;
  }

  else
  {
    v26 = (v23 + 63) & 0x1FFC0;
  }

  *(v4 + 204) = 1;
  *(v4 + 208) = v26;
  *(v4 + 212) = v25;
  *(v4 + 216) = v26;
  *(v4 + 220) = v11;
  v27 = v11 + v26 * v25;
  if (v23 >= 0xFFC1)
  {
    v28 = 65472;
  }

  else
  {
    v24 = 1;
    v28 = (v23 + 63) & 0x1FFC0;
  }

  *(v4 + 176) = 1;
  *(v4 + 180) = v28;
  *(v4 + 184) = v24;
  *(v4 + 188) = v28;
  *(v4 + 192) = v27;
  v11 = v27 + v28 * v24;
LABEL_29:
  v29 = *(v4 + 152);
  v30 = (v32 + 63) & 0xFFFFFFC0;
  *v29 = 1;
  *(v29 + 4) = v30;
  *(v29 + 8) = 1;
  *(v29 + 12) = v30;
  *(v29 + 16) = v11;
  v31 = v11 + v30;
  if (*(v4 + 372) == 1)
  {
    *(v4 + 388) = v31;
    v31 += *(v4 + 380) * *(v4 + 384);
  }

  if (*(v4 + 400) == 1)
  {
    *(v4 + 416) = v31;
    *(v4 + 360) = *(v4 + 388);
    result = *(v4 + 372);
    *(v4 + 344) = result;
    *(v4 + 364) = 0;
    *(v4 + 368) = 0;
  }

  return result;
}

void *sub_1E5450C48(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a4 != 8 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 202, "input_format == CISP_INPUT_FORMAT_RAW8", 38, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 856);
  if (a3 || (v8 = *(a1 + 832), *(a1 + 840) - v8 != 6528))
  {
    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 42, "cvd_all_cfg.size() == 1 && octave == 0 && Operation buffer is only programmed once for flow2", 94, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      v8 = *(a1 + 832);
      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

LABEL_7:
  *a2 = -1;
  a2[1] = v7;
  a2[3] = 6528;

  return memcpy(a2 + 4, v8, 0x1980uLL);
}

uint64_t sub_1E5450D48(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a7 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 208, "octave == 0", 11, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v13 = (*(*a1 + 56))(a1);
  v14 = *(a1 + 24);

  return sub_1E5411AA4(a2, v13, a3, a4, a5, a6, v14, (a1 + 32));
}

__n128 sub_1E5450E28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  *(a3 + 92) = *(a2 + 100);
  v4 = *a2;
  *(a3 + 8) = *(a2 + 4);
  *a3 = v4;
  v5 = *(a2 + 10);
  *(a3 + 18) = *(a2 + 9);
  *(a3 + 10) = v5;
  v6 = *(a2 + 20);
  *(a3 + 28) = *(a2 + 14);
  *(a3 + 20) = v6;
  v7 = *(a2 + 30);
  *(a3 + 38) = *(a2 + 19);
  *(a3 + 30) = v7;
  v8 = a2[5];
  *(a3 + 48) = *(a2 + 24);
  *(a3 + 40) = v8;
  v9 = *(a2 + 52);
  v10 = *(a2 + 68);
  *(a3 + 84) = *(a2 + 84);
  *(a3 + 68) = v10;
  *(a3 + 52) = v9;
  v11 = *(a2 + 126);
  *(a3 + 124) = *(a2 + 71);
  *(a3 + 108) = v11;
  v12 = *(a2 + 108);
  *(a3 + 142) = *(a2 + 62);
  *(a3 + 126) = v12;
  v13 = *(a2 + 82);
  *(a3 + 144) = *(a2 + 81);
  *(a3 + 160) = v13;
  v14 = (a2 + 49);
  do
  {
    v15 = *(a3 + 240 + v3);
    v16 = vmovl_u16(v14[-14]);
    *v15 = vmovl_u16(v14[-15]);
    v15[1] = v16;
    v17 = vmovl_u16(v14[-12]);
    v15[2] = vmovl_u16(v14[-13]);
    v15[3] = v17;
    v18 = vmovl_u16(v14[-10]);
    v15[4] = vmovl_u16(v14[-11]);
    v15[5] = v18;
    v19 = vmovl_u16(v14[-8]);
    v15[6] = vmovl_u16(v14[-9]);
    v15[7] = v19;
    v20 = vmovl_u16(v14[-6]);
    v15[8] = vmovl_u16(v14[-7]);
    v15[9] = v20;
    v21 = vmovl_u16(v14[-4]);
    v15[10] = vmovl_u16(v14[-5]);
    v15[11] = v21;
    v22 = vmovl_u16(v14[-2]);
    v15[12] = vmovl_u16(v14[-3]);
    v15[13] = v22;
    v23 = vmovl_u16(v14[-1]);
    v24 = vmovl_u16(*v14);
    v3 += 24;
    v14 += 16;
    v15[14] = v23;
    v15[15] = v24;
  }

  while (v3 != 192);
  *(a3 + 176) = *(a2 + 664);
  *(a3 + 436) = *(a2 + 24);
  *(a3 + 180) = *(a2 + 100);
  *(a3 + 196) = *(a2 + 101);
  *(a3 + 212) = *(a2 + 102);
  *(a3 + 228) = a2[206];
  *(a3 + 236) = *(a2 + 414);
  *(a3 + 432) = *(a2 + 866);
  *(a3 + 440) = *(a2 + 23);
  v25 = *(a2 + 1660);
  v26 = *(a2 + 1676);
  *(a3 + 512) = *(a2 + 423);
  *(a3 + 480) = v25;
  *(a3 + 496) = v26;
  result = *(a2 + 106);
  v28 = *(a2 + 107);
  *(a3 + 548) = *(a2 + 432);
  *(a3 + 516) = result;
  *(a3 + 532) = v28;
  return result;
}

uint64_t sub_1E5450FDC(uint64_t a1, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 0:
      return *(a1 + 32) + 28 * a3;
    case 1:
      if (*(a1 + 28) != 1)
      {
        v15 = a3;
        v16 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 298, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v15;
        if (v16)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 56) + 28 * a3;
      break;
    case 2:
      if (*(a1 + 28) != 1)
      {
        v11 = a3;
        v12 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 301, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v11;
        if (v12)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 80) + 28 * a3;
      break;
    case 3:
      return *(a1 + 104) + 28 * a3;
    case 4:
      if (*(a1 + 28) != 1)
      {
        v7 = a3;
        v8 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 306, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v7;
        if (v8)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 128) + 28 * a3;
      break;
    case 5:
      v17 = *(a1 + 28);
      if (v17 != 1 && (a3 || v17 != 2))
      {
        v18 = a3;
        v19 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 310, "(FlowType::kFlow1 == flow_) || ((FlowType::kFlow2 == flow_) && octave == 0) && Invalid request", 96, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v18;
        if (v19)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 152) + 28 * a3;
      break;
    case 6:
      if (*(a1 + 28) != 2)
      {
        v20 = a3;
        v21 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 313, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v20;
        if (v21)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 314, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 176;
      break;
    case 7:
      if (*(a1 + 28) != 2)
      {
        v13 = a3;
        v14 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 317, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v13;
        if (v14)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 318, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 204;
      break;
    case 8:
      if (*(a1 + 28) != 2)
      {
        v24 = a3;
        v25 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 321, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v24;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 322, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 232;
      break;
    case 9:
      if (*(a1 + 28) != 2)
      {
        v9 = a3;
        v10 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 325, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v9;
        if (v10)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 326, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 260;
      break;
    case 10:
      if (*(a1 + 28) != 2)
      {
        v22 = a3;
        v23 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 329, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v22;
        if (v23)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 330, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 288;
      break;
    case 11:
      if (*(a1 + 28) != 2)
      {
        v5 = a3;
        v6 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 333, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v5;
        if (v6)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 334, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 316;
      break;
    case 12:
      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 337, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 372;
      break;
    case 13:
      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 340, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
LABEL_54:
        abort();
      }

      result = a1 + 400;
      break;
    default:
      sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 343, &unk_1E549A011, 0, "Unsupported buffer type", 23, sub_1E548FDE0);
      abort();
  }

  return result;
}

uint64_t sub_1E54516C0(uint64_t result, int32x4_t *a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 349, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  v4 = *(v3 + 16);
  v5 = 2 * v4 - 2;
  if (2 * v4 != 2)
  {
    v6 = *(v3 + 832);
    if (v5 < 4)
    {
      v7 = 0;
      goto LABEL_15;
    }

    if (v5 >= 0x10)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFF0;
      v8 = (v6 + 2388);
      v9 = a2 + 4;
      v10 = v5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v11 = vuzp1q_s16(vuzp1q_s32(v9[-4], v9[-3]), vuzp1q_s32(v9[-2], v9[-1]));
        v12 = vuzp1q_s16(vuzp1q_s32(*v9, v9[1]), vuzp1q_s32(v9[2], v9[3]));
        v8[-1] = v11;
        *v8 = v12;
        *(v8 - 34) = v11;
        *(v8 - 18) = v12;
        v8 += 2;
        v9 += 8;
        v10 -= 16;
      }

      while (v10);
      if (v7 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
LABEL_15:
        v19 = v7 - 2 * v4 + 2;
        v20 = (v6 + 2 * v7 + 2354);
        v21 = &a2->i16[4 * v7];
        do
        {
          v22 = *v21;
          v21 += 4;
          v20[9] = v22;
          *v20++ = v22;
        }

        while (!__CFADD__(v19++, 1));
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    v13 = v7;
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v6 + 2 * v13 + 2372);
    v15 = (a2 + 8 * v13);
    v16 = v13 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v18 = *v15;
      v17 = v15[1];
      v15 += 2;
      *v17.i8 = vmovn_s32(vuzp1q_s32(v18, v17));
      *v14 = v17.i64[0];
      *(v14++ - 18) = v17.i64[0];
      v16 += 4;
    }

    while (v16);
    if (v7 != v5)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1E5451830()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 369, "0 && Update config not supported", 34, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

__n128 sub_1E5451884@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = (*(a1 + 832) + 2188);
  v3 = *(*(a1 + 832) + 2196);
  v4.n128_u64[0] = *v2;
  v4.n128_u64[1] = HIDWORD(*v2);
  v5 = v4;
  v4.n128_u64[0] = v3;
  v4.n128_u64[1] = HIDWORD(v3);
  *a2 = v5;
  a2[1] = v4;
  v5.n128_u64[0] = v2[2];
  v6 = v2[3];
  v4.n128_u64[0] = v5.n128_u32[0];
  v4.n128_u64[1] = v5.n128_u32[1];
  result = v4;
  v4.n128_u64[0] = v6;
  v4.n128_u64[1] = HIDWORD(v6);
  a2[2] = result;
  a2[3] = v4;
  return result;
}

uint64_t sub_1E54518C0(uint64_t result, int a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 388, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  *(*(v3 + 832) + 3908) = a2;
  return result;
}

uint64_t sub_1E5451944(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *a2;
  *(a3 + 8) = 2;
  *(a3 + 12) = v3;
  if (v3 == 1)
  {
    v6 = 0x20000;
    v4 = 0x80000;
    v5 = 0x200000;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = 98304;
    v5 = 0x400000;
    v6 = 98304;
LABEL_5:
    *a3 = *(result + 864) + v5;
    *(a3 + 16) = 0;
    *(a3 + 20) = v4;
    *(a3 + 24) = 0x100000;
    *(a3 + 28) = v6;
    return result;
  }

  *a3 = -1;
  *(a3 + 16) = -1;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  return result;
}

double sub_1E54519C0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 423, "(operation_buffer_base_addr_) && HwPlatformInterface::InitLaccOperation() called with NULL argument.", 102, &unk_1E549A011, 0, sub_1E548FDE0);
    abort();
  }

  *a2 = xmmword_1E5492740;
  *&result = 0x198000000000;
  *(a2 + 16) = 0x198000000000;
  return result;
}

double sub_1E5451A28(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 4);
  if (qword_1EE30C490 == 1)
  {
    v6 = qword_1EE30C488;
    v7 = qword_1EE30C490;
    if ((qword_1EE30C490 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v6 == 33088)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1E548F388();
  v6 = sub_1E548ED74();
  qword_1EE30C488 = v6;
  LOBYTE(qword_1EE30C490) = v8;
  v7 = v8;
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v7 & 1) == 0 && (sub_1E548F388(), v6 = sub_1E548ED74(), qword_1EE30C488 = v6, LOBYTE(qword_1EE30C490) = v9, (v9 & 1) == 0) || v6 != 33090)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 148, "isPlatformMatched && Configuration not supported.", 51, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_48;
    }
  }

LABEL_10:
  v10 = *a3;
  if (v10 >= 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 168, "(config.laccMode < 4) && LaccMode has to be set to a value between 0 and 3 inclusive.", 87, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_48;
    }

    LOBYTE(v10) = *a3;
  }

  v11 = a2 + v5;
  *(v11 + 20) = *(v11 + 20) & 0xFFFFFFFC | v10 & 3;
  *(v11 + 80) &= ~1u;
  *(v11 + 144) |= 1uLL;
  *(v11 + 3856) |= 1u;
  if (a3[2] >= 3u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) || a3[6] >= 3u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) || a3[3] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[7] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[4] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[8] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[5] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[9] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
LABEL_48:
    abort();
  }

  if (a3[2])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFFF3 | (4 * (a3[2] & 3));
    *(v11 + 6392) = *(a3 + 162);
    *(v11 + 6400) = *(a3 + 326);
  }

  if (a3[3])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFFCF | (16 * (a3[3] & 3));
    *(v11 + 6404) = *(a3 + 327);
    *(v11 + 6408) = *(a3 + 164);
  }

  if (a3[4])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFF3F | ((a3[4] & 3) << 6);
    *(v11 + 6416) = *(a3 + 165);
    *(v11 + 6424) = *(a3 + 332);
  }

  if (a3[5])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFCFF | ((a3[5] & 3) << 8);
    *(v11 + 6428) = *(a3 + 333);
    *(v11 + 6432) = *(a3 + 167);
  }

  if (a3[6])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFF3FF | ((a3[6] & 3) << 10);
    *(v11 + 6440) = *(a3 + 168);
    *(v11 + 6448) = *(a3 + 338);
  }

  if (a3[7])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFCFFF | ((a3[7] & 3) << 12);
    *(v11 + 6452) = *(a3 + 339);
    *(v11 + 6456) = *(a3 + 170);
  }

  if (a3[8])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFF3FFF | ((a3[8] & 3) << 14);
    *(v11 + 6464) = *(a3 + 171);
    *(v11 + 6472) = *(a3 + 344);
  }

  if (a3[9])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFCFFFF | ((a3[9] & 3) << 16);
    *(v11 + 6476) = *(a3 + 345);
    *(v11 + 6480) = *(a3 + 173);
  }

  v12 = 0;
  v13 = 4048;
  do
  {
    *(v11 + v12 + 5072) = *&a3[v12 + 12];
    v14 = (v11 + v13);
    *v14 = *&a3[v13 - 3904];
    v14[1] = *&a3[v13 - 3900];
    v14[2] = *&a3[v13 - 3896];
    v14[3] = *&a3[v13 - 3892];
    v14[4] = *&a3[v13 - 3888];
    v14[5] = *&a3[v13 - 3884];
    v14[6] = *&a3[v13 - 3880];
    v14[7] = *&a3[v13 - 3876];
    v12 += 4;
    v13 += 32;
  }

  while (v12 != 128);
  *(v11 + 5216) = *(a3 + 292);
  *(v11 + 5356) = *(a3 + 293);
  *(v11 + 5360) = *(a3 + 294);
  *(v11 + 5364) = *(a3 + 295);
  *(v11 + 5220) = a3[1184];
  result = *(a3 + 1188);
  *(v11 + 5224) = result;
  *(v11 + 5232) = a3[1196];
  *(v11 + 5236) = *(a3 + 300);
  *(v11 + 5252) = a3[1216];
  *(v11 + 5268) = *(a3 + 306);
  *(v11 + 5284) = *(a3 + 310);
  *(v11 + 5300) = a3[1256];
  *(v11 + 5316) = *(a3 + 316);
  *(v11 + 5240) = *(a3 + 301);
  *(v11 + 5256) = a3[1217];
  *(v11 + 5272) = *(a3 + 307);
  *(v11 + 5288) = *(a3 + 311);
  *(v11 + 5304) = a3[1257];
  *(v11 + 5320) = *(a3 + 317);
  *(v11 + 5244) = *(a3 + 302);
  *(v11 + 5260) = a3[1218];
  *(v11 + 5276) = *(a3 + 308);
  *(v11 + 5292) = *(a3 + 312);
  *(v11 + 5308) = a3[1258];
  *(v11 + 5324) = *(a3 + 318);
  *(v11 + 5248) = *(a3 + 303);
  *(v11 + 5264) = a3[1219];
  *(v11 + 5280) = *(a3 + 309);
  *(v11 + 5296) = *(a3 + 313);
  *(v11 + 5312) = a3[1259];
  v16 = *(a3 + 323);
  *(v11 + 5332) = *(a3 + 320);
  *(v11 + 5336) = a3[1284];
  *(v11 + 5340) = a3[1286];
  *(v11 + 5344) = a3[1287];
  *(v11 + 5348) = a3[1288];
  *(v11 + 5352) = v16;
  return result;
}

double sub_1E54520C0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 441, "(action_buffer_base_addr_) && HwCrete::InitLaccAction() called with NULL argument.", 84, &unk_1E549A011, 0, sub_1E548FDE0);
    abort();
  }

  *a2 = xmmword_1E5491D80;
  *(a2 + 16) = 0;
  *&result = 0x100000012;
  *(a2 + 152) = 0x100000012;
  *(a2 + 160) |= 0x7FFFFFFFu;
  *(a2 + 244) |= 0x7FFFFFFFu;
  *(a2 + 328) |= 0x7FFFFFFFu;
  *(a2 + 412) |= 0x7FFFFFFFu;
  *(a2 + 496) |= 0x7FFFFFFFu;
  *(a2 + 580) |= 0x7FFFFFFFu;
  *(a2 + 664) |= 0x7FFFFFFFu;
  *(a2 + 748) |= 0x7FFFFFFFu;
  *(a2 + 832) |= 0x7FFFFFFFu;
  *(a2 + 916) |= 0x7FFFFFFFu;
  *(a2 + 1000) |= 0x7FFFFFFFu;
  *(a2 + 1084) |= 0x7FFFFFFFu;
  *(a2 + 1168) |= 0x7FFFFFFFu;
  *(a2 + 1252) |= 0x7FFFFFFFu;
  *(a2 + 1336) |= 0x7FFFFFFFu;
  *(a2 + 1420) |= 0x7FFFFFFFu;
  *(a2 + 1504) |= 0x7FFFFFFFu;
  *(a2 + 1588) |= 0x7FFFFFFFu;
  return result;
}

void sub_1E5452204(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2 + *(a2 + 4);
  if (*(v6 + 144) <= *(a3 + 2) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*a3 == 1)
  {
    v7 = v6 + 84 * *(a3 + 2);
    *(v7 + 152) = *(v7 + 152) & 0x80000000 | a4 & 0x7FFFFFFF;
    *(v7 + 166) = *(a3 + 4);
    v8 = *(a3 + 24);
    *(v7 + 164) = *(a3 + 20);
    *(v7 + 162) = v8;
    v9 = *(a3 + 32);
    *(v7 + 160) = *(a3 + 28);
    *(v7 + 156) = v9;
  }
}

uint64_t sub_1E54522CC(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v4 = a2[201];
  v9[4] = a2[200];
  v9[5] = v4;
  v5 = a2[203];
  v9[6] = a2[202];
  v9[7] = v5;
  v6 = a2[197];
  v9[0] = a2[196];
  v9[1] = v6;
  v7 = a2[199];
  v9[2] = a2[198];
  v9[3] = v7;
  if (a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 199, "(reg < grf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(v9 + a3);
}

void *sub_1E5452374(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  memcpy(v9, (a2 + 2112), sizeof(v9));
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 208, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 209, "(reg < vrf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 < 9 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 211, "(n <= 8) && number of vector lanes cannot exceed 8", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      return memcpy(a4, &v9[2 * a3], 4 * a5);
    }

LABEL_10:
    abort();
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 210, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

void *sub_1E54524F0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  memcpy(v9, (a2 + 2112), sizeof(v9));
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 220, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 221, "(reg < vrf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 < 5 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 223, "(n <= 4) && number of vector lanes cannot exceed 4", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      return memcpy(a4, &v9[2 * a3], 8 * a5);
    }

LABEL_10:
    abort();
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 222, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1E545266C(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 229, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *a5 = 0;
  if (a3 <= 0x7F)
  {
    v9 = *(a2 + (a3 & 0xFFFFFFFFFFFFFFFCLL) + 3136);
LABEL_8:
    *a4 = v9;
    *a5 = 4;
    return 1;
  }

  if (a3 == 2004)
  {
    *a5 = 4;
    v10 = a2[834];
LABEL_12:
    *a4 = v10;
    return 1;
  }

  if (a3 == 2000)
  {
    v9 = a2[835];
    goto LABEL_8;
  }

  if (a3 - 2008 <= 0xB)
  {
    *a5 = 4;
    v10 = *(a2 + (a3 & 0x7FC) + 1336);
    goto LABEL_12;
  }

  if (a3 - 6000 <= 0x3FF)
  {
    *a5 = 32;
    v12 = (a2 + ((a3 - 6000) & 0xFFFFFFFFFFFFFFE0) + ((8 * a3 - 13952) & 0xFFE0));
    v13 = v12[1];
    *a4 = *v12;
    *(a4 + 16) = v13;
    return 1;
  }

  result = 0;
  switch(__ROR8__(a3 - 10000, 2))
  {
    case 0:
      *a5 = 4;
      v10 = a2[848];
      goto LABEL_12;
    case 1:
      *a5 = 4;
      v10 = a2[850];
      goto LABEL_12;
    case 2:
      *a5 = 4;
      v10 = a2[854];
      goto LABEL_12;
    case 5:
      *a5 = 4;
      v10 = a2[857];
      goto LABEL_12;
    case 7:
      *a5 = 4;
      v10 = a2[856];
      goto LABEL_12;
    case 0xDLL:
      *a5 = 4;
      v10 = a2[846];
      goto LABEL_12;
    case 0xELL:
      *a5 = 4;
      v10 = a2[847];
      goto LABEL_12;
    case 0xFLL:
      *a5 = 4;
      v10 = a2[849];
      goto LABEL_12;
    case 0x10:
      *a5 = 4;
      v10 = a2[851];
      goto LABEL_12;
    case 0x11:
      *a5 = 4;
      v10 = a2[852];
      goto LABEL_12;
    case 0x12:
      *a5 = 4;
      v10 = a2[853];
      goto LABEL_12;
    case 0x13:
      *a5 = 4;
      v10 = a2[855];
      goto LABEL_12;
    case 0x14:
      *a5 = 4;
      v10 = a2[858];
      goto LABEL_12;
    case 0x15:
      *a5 = 4;
      v10 = a2[859];
      goto LABEL_12;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E54528B0(uint64_t a1, uint64_t a2)
{
  sub_1E5414D60(v34, 16);
  v3 = a2 + 3136;
  v4 = a2 + 2140;
  v5 = -32;
  do
  {
    v6 = v34 + *(v34[0] - 24);
    if (*(v6 + 36) == -1)
    {
      std::ios_base::getloc((v34 + *(v34[0] - 24)));
      v7 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
      (v7->__vftable[2].~facet_0)(v7, 32);
      std::locale::~locale(&v41);
    }

    *(v6 + 36) = 48;
    v8 = sub_1E53DF59C(&v35, "GRF ", 4);
    v9 = MEMORY[0x1E6928450](v8, v5 + 32);
    v10 = sub_1E53DF59C(v9, " = 0x", 5);
    v11 = *v10;
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v10 + *(v11 - 24) + 24) = 8;
    v12 = MEMORY[0x1E6928460]();
    v13 = sub_1E53DF59C(v12, "\t\t", 2);
    *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
    v14 = MEMORY[0x1E6928450]();
    sub_1E53DF59C(v14, " = (", 4);
    v15 = sub_1E53DF59C(&v35, "0x", 2);
    v16 = *v15;
    *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v15 + *(v16 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v17 = sub_1E53DF59C(&v35, "0x", 2);
    v18 = *v17;
    *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v17 + *(v18 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v19 = sub_1E53DF59C(&v35, "0x", 2);
    v20 = *v19;
    *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v19 + *(v20 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v21 = sub_1E53DF59C(&v35, "0x", 2);
    v22 = *v21;
    *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v21 + *(v22 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v23 = sub_1E53DF59C(&v35, "0x", 2);
    v24 = *v23;
    *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v23 + *(v24 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v25 = sub_1E53DF59C(&v35, "0x", 2);
    v26 = *v25;
    *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v25 + *(v26 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v27 = sub_1E53DF59C(&v35, "0x", 2);
    v28 = *v27;
    *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v27 + *(v28 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v29 = sub_1E53DF59C(&v35, "0x", 2);
    v30 = *v29;
    *(v29 + *(*v29 - 24) + 8) = *(v29 + *(*v29 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v29 + *(v30 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ")", 1);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    v39 = 0;
    sub_1E53E768C(&v36);
    v3 += 4;
    v4 += 32;
  }

  while (!__CFADD__(v5++, 1));
  v34[0] = *MEMORY[0x1E69E54D8];
  v32 = *(MEMORY[0x1E69E54D8] + 72);
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v35 = v32;
  v36 = MEMORY[0x1E69E5548] + 16;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  v36 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v37);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E69285E0](&v40);
}

void sub_1E5453034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale((v26 - 96));
  sub_1E5415094(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69285E0](&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1E545307C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = (*(a3 + 2192) >> 2) & 3;
  if (v6 > 1)
  {
    if (v6 == 3)
    {
      v11 = 76;
    }

    else
    {
      v11 = 44;
    }
  }

  else
  {
    if (!v6)
    {
      v8 = a2;
      v9 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwTahiti.cpp", 490, "false && dmaDescSize not supported", 36, &unk_1E549A011, 0, sub_1E548FDE0);
      a2 = v8;
      if (v9)
      {
        abort();
      }

      *(a4 + 4) = *(a1 + 16);
      v10 = *(v5 + 148) & 0x1F;
      if (v10 == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v11 = 28;
  }

  *(a4 + 8) = v11;
  *(a4 + 4) = *(a1 + 16);
  v10 = *(a3 + 148) & 0x1F;
  if (v10 == 1)
  {
LABEL_14:
    result = 0;
    *a4 = 0xFFFF;
    return result;
  }

LABEL_11:
  if (v10 <= *a4)
  {
    goto LABEL_14;
  }

  if ((*(v5 + 1576) & 1) == 0)
  {
    return 0;
  }

  v13 = *(a4 + 32);
  v14 = a2[228];
  *(a4 + 12) = a2[207];
  *(a4 + 16) = v14;
  *(a4 + 20) = a2[396];
  v15 = HIDWORD(*(v5 + 144)) & 0x1FLL;
  *(a4 + 24) = v15;
  v16 = (*(a4 + 40) - v13) >> 2;
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(a4 + 40) = v13 + 4 * v15;
    }
  }

  else
  {
    sub_1E54151E4(a4 + 32, v15 - v16);
  }

  v17 = *(a4 + 56);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 64) - v17) >> 3);
  if (v15 <= v18)
  {
    if (v15 < v18)
    {
      *(a4 + 64) = v17 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 56, v15 - v18);
  }

  v19 = *(a4 + 80);
  v20 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 88) - v19) >> 3);
  if (v15 <= v20)
  {
    if (v15 < v20)
    {
      *(a4 + 88) = v19 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 80, v15 - v20);
  }

  v21 = *(a4 + 104);
  v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 112) - v21) >> 3);
  if (v15 <= v22)
  {
    if (v15 < v22)
    {
      *(a4 + 112) = v21 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 104, v15 - v22);
  }

  v23 = *(a4 + 128);
  v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 136) - v23) >> 3);
  if (v15 <= v24)
  {
    if (v15 < v24)
    {
      *(a4 + 136) = v23 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 128, v15 - v24);
  }

  v25 = *(a4 + 152);
  v26 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 160) - v25) >> 3);
  if (v15 <= v26)
  {
    if (v15 < v26)
    {
      *(a4 + 160) = v25 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 152, v15 - v26);
  }

  v27 = *(a4 + 176);
  v28 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 184) - v27) >> 3);
  if (v15 <= v28)
  {
    if (v15 < v28)
    {
      *(a4 + 184) = v27 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 176, v15 - v28);
  }

  v29 = *(a4 + 200);
  v30 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 208) - v29) >> 3);
  if (v15 <= v30)
  {
    if (v15 < v30)
    {
      *(a4 + 208) = v29 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 200, v15 - v30);
  }

  if (v15)
  {
    v31 = 0;
    v32 = v5 + 2000;
    v33 = *(a4 + 32);
    v34 = *(a4 + 56);
    v35 = *(a4 + 80);
    v36 = *(a4 + 104);
    v37 = *(a4 + 128);
    v38 = *(a4 + 152);
    v39 = *(a4 + 176);
    v40 = *(a4 + 200);
    do
    {
      *(v33 + 4 * v31) = *(v32 + 4 * v31) & 0x1FFF;
      if (*(a4 + 4))
      {
        v41 = 0;
        v42 = 936;
        do
        {
          v43 = 4 * v41;
          v44 = v5 + 4 * v41;
          *(v34 + v43) = *(v44 + 616) & 0x7FF;
          *(v35 + v43) = *(v44 + 618) & 0x1FFF;
          *(v36 + v43) = *(v5 + v42) & 0x3FF;
          *(v37 + v43) = *(v5 + v42 + 2) & 0x1FFF;
          *(v38 + v43) = *(v5 + v42 + 320) & 0x3FF;
          *(v39 + v43) = *(v5 + v42 + 664) & 0x7FF;
          *(v40 + v43) = *(v5 + v42 + 666) & 0xFFF;
          ++v41;
          v42 += 4;
        }

        while (v41 < *(a4 + 4));
      }

      ++v31;
      v40 += 24;
      v39 += 24;
      v5 += 20;
      v38 += 24;
      v34 += 24;
      v37 += 24;
      v36 += 24;
      v35 += 24;
    }

    while (v31 != v15);
  }

  return 1;
}

void sub_1E54534C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = *(a4 + 12) + v6 * *(a4 + 232);
  v8 = *(a4 + 16) + *(a4 + 236) * v6;
  v9 = (v7 + 63) & 0xFFFFFFC0;
  *(a2 + 828) = v9;
  v10 = (v8 + 63) & 0xFFFFFFC0;
  *(a2 + 912) = v10;
  *(a4 + 240) = v7;
  *(a4 + 244) = v9;
  *(a4 + 248) = v8;
  *(a4 + 252) = v10;
  v12 = *(a4 + 224);
  v11 = *(a4 + 228);
  v13 = (v11 - v12);
  if (v11 == v12 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 155, "num_stripes > 0 && Invalid number of stripes", 46, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *(a3 + 144) = *(a3 + 144) & 0xFFFFFFE0FFFFFFFFLL | ((v13 & 0x1F) << 32);
  *(a3 + 2516) = v13;
  v14 = *(a4 + 224);
  if (v14 < *(a4 + 228))
  {
    v15 = 24 * v14;
    do
    {
      v16 = v14 - *(a4 + 224);
      *(a3 + 2000 + 4 * v16) = *(a3 + 2000 + 4 * v16) & 0xFFFFE000 | *(*(a4 + 32) + 4 * v14) & 0x1FFF;
      *(a3 + 2524 + 4 * v16) = *(*(a4 + 32) + 4 * v14);
      if (*(a4 + 4))
      {
        v17 = 0;
        v18 = a3 + 20 * v16;
        v19 = 936;
        do
        {
          v20 = v18 + 4 * v17;
          v21 = *(v20 + 616) & 0xFFFFF800 | *(*(a4 + 56) + v15 + 4 * v17) & 0x7FF;
          *(v20 + 616) = v21;
          *(v20 + 616) = v21 & 0xE000FFFF | ((*(*(a4 + 80) + v15 + 4 * v17) & 0x1FFF) << 16);
          v22 = (v18 + v19);
          v23 = *(v18 + v19) & 0xFFFFFC00 | *(*(a4 + 104) + v15 + 4 * v17) & 0x3FF;
          *v22 = v23;
          *v22 = v23 & 0xE000FFFF | ((*(*(a4 + 128) + v15 + 4 * v17) & 0x1FFF) << 16);
          v22[80] = *(v18 + v19 + 320) & 0xFFFFFC00 | *(*(a4 + 152) + v15 + 4 * v17) & 0x3FF;
          v24 = *(v18 + v19 + 664) & 0xFFFFF800 | *(*(a4 + 176) + v15 + 4 * v17) & 0x7FF;
          v22[166] = v24;
          v22[166] = v24 & 0xF000FFFF | ((*(*(a4 + 200) + v15 + 4 * v17++) & 0xFFF) << 16);
          v19 += 4;
        }

        while (v17 < *(a4 + 4));
      }

      ++v14;
      v15 += 24;
    }

    while (v14 < *(a4 + 228));
  }

  if (v13 < *(a4 + 24))
  {
    v25 = (a3 + 20 * v13);
    do
    {
      *(a3 + 2000 + 4 * v13) &= 0xFFFFE000;
      *(a3 + 2524 + 4 * v13) = 0;
      if (*(a4 + 4))
      {
        v26 = v25;
        v27 = 400;
        do
        {
          v26[154] &= 0xE000F800;
          v26[234] &= 0xE000FC00;
          v26[314] &= 0xFFFFFC00;
          v26[400] = v26[400] & 0xF000F800 | 0x50005;
          v28 = v27 - 399;
          ++v27;
          ++v26;
        }

        while (v28 < *(a4 + 4));
      }

      ++v13;
      v25 += 5;
    }

    while (v13 < *(a4 + 24));
  }
}

void *sub_1E5453774(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  v5 = a2 + a3[2].u32[1];
  v6 = *(v5 + 100);
  a3[29] = vadd_s32(a3[29], v6);
  v7 = a3[30].u32[0];
  v8 = a3[30].u32[1];
  if (v7 == v8)
  {
    v9 = a3[31].u32[0];
    v10 = a3[31].u32[1];
    if (v9 == v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = v6.i32[1];
    result = memcpy((a2 + v7), (a2 + v8), (a3[1].i32[0] * v6.i32[0]));
    v6.i32[1] = v12;
    v9 = a3[31].u32[0];
    v10 = a3[31].u32[1];
    if (v9 == v10)
    {
LABEL_3:
      if (a3[32].i8[0] != 1)
      {
        return result;
      }

LABEL_7:
      *(v5 + 100) = a3[29].i32[0];
      *(v5 + 104) = a3[29].i32[1];
      return result;
    }
  }

  result = memcpy((a2 + v9), (a2 + v10), (a3[1].i32[0] * v6.i32[1]));
  if (a3[32].i8[0] == 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1E5453858(uint64_t a1)
{
  *a1 = &unk_1F5F0AC70;
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    MEMORY[0x1E6928640]();
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_1E545391C(uint64_t a1)
{
  *a1 = &unk_1F5F0AC70;
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    MEMORY[0x1E6928640]();
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E5453A08(uint64_t a1, int a2)
{
  *a1 = &unk_1F5F0ADA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 2;
  *(a1 + 200) = 0;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0;
  *(a1 + 204) = 0;
  *(a1 + 228) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0;
  *(a1 + 260) = 0;
  *(a1 + 284) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0;
  *(a1 + 316) = 0;
  *(a1 + 340) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  *(a1 + 348) = 0u;
  *(a1 + 364) = 0;
  *(a1 + 372) = 0;
  *(a1 + 396) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 420) = 0;
  *(a1 + 404) = 0u;
  *(a1 + 428) = 0;
  *(a1 + 452) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 480) = 0;
  *(a1 + 460) = 0u;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0;
  *(a1 + 508) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 532) = 0;
  *(a1 + 516) = 0u;
  *(a1 + 540) = 0;
  *(a1 + 564) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 592) = 0;
  *(a1 + 588) = 0;
  *(a1 + 572) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 660) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 703) = 17;
  strcpy((a1 + 680), "lacc_DpKernel.bin");
  *(a1 + 704) = 0;
  *(a1 + 712) = 6;
  *(a1 + 720) = xmmword_1E5491C20;
  *(a1 + 736) = xmmword_1E5491C30;
  *(a1 + 752) = xmmword_1E5491C40;
  *(a1 + 768) = xmmword_1E5491C50;
  *(a1 + 784) = 4;
  *(a1 + 788) = 5;
  *(a1 + 792) = 0xFFFF0000003FLL;
  *(a1 + 800) = xmmword_1E5491C60;
  *(a1 + 816) = 0x3F80000000000000;
  *(a1 + 824) = 511;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 856) = 32;
  *(a1 + 864) = 0;
  if (a2 == 11)
  {
    *(a1 + 864) = 0x323000000;
    *(a1 + 656) = xmmword_1E5492720;
  }

  else if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 46, "0 && unsupported platform", 27, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *(a1 + 856) = 32;
  return a1;
}

void sub_1E5453CC0(_Unwind_Exception *a1)
{
  v5 = v3;
  if (*v5)
  {
    *(v1 + 840) = *v5;
    MEMORY[0x1E6928640]();
    if ((*(v1 + 703) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1E5414CDC(v2);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 703) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v4);
  sub_1E5414CDC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1E5453D14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 68) != 2)
  {
    return 0;
  }

  *(a2 + 50) = sub_1E54789D8(*a2, *(a2 + 4));
  result = sub_1E541DFEC(a1 + 720, a2);
  if (!result)
  {
    return result;
  }

  if (*(a2 + 113) == 1)
  {
    if (*(a2 + 185) != 1 || *(a2 + 192))
    {
      v5 = sub_1E544CFB4(a2, a1 + 600, 11);
      *(a1 + 29) = v5;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (*(a2 + 192))
  {
    return 0;
  }

  *(a1 + 8) = *a2;
  v6 = *(a2 + 50);
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = *(a2 + 72);
  v7 = *(a2 + 68);
  *(a1 + 28) = v7;
  sub_1E541C1E0((a1 + 32), v6, v7);
  if (*(a1 + 28) == 2)
  {
    v8 = *(a1 + 840);
    v9 = *(a1 + 832);
    v10 = 0xFAFAFAFAFAFAFAFBLL * ((v8 - v9) >> 7);
    if (v8 == v9)
    {
      if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 848) - v8) >> 7) >= 1 - v10)
      {
        if (v8 - v9 != 6528)
        {
          bzero(*(a1 + 840), 0x1980uLL);
          v8 += 6528;
        }

        *(a1 + 840) = v8;
      }

      else
      {
        v11 = operator new(0x1980uLL, 0x40uLL);
        bzero(v11, 0x1980uLL);
        *(a1 + 832) = v11;
        *(a1 + 840) = v11 + 6528;
        *(a1 + 848) = v11 + 6528;
        if (v8)
        {
          MEMORY[0x1E6928640](v9, 64);
        }
      }

      v9 = *(a1 + 832);
    }

    else if (v10 >= 2)
    {
      *(a1 + 840) = v9 + 6528;
    }

    bzero(v9, 0x1980uLL);
    *(a1 + 672) = (*(a1 + 600) != 0) << 12;
    v12 = *(a1 + 616);
    v13 = *(a1 + 620);
    bzero((v9 + 64), 0xF80uLL);
    *(v9 + 64) = *(a2 + 113);
    v14 = *a2;
    if (*a2 >= 0x280u)
    {
      v15 = 640;
    }

    else
    {
      v15 = *a2;
    }

    *(v9 + 68) = v15;
    v16 = *(a2 + 4);
    *(v9 + 72) = v16;
    *(v9 + 76) = 8;
    v17 = *(a2 + 50);
    if ((v17 & 0xFFFE) != 4)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 271, "(input_cfg.numberOfOctaves == 4 || input_cfg.numberOfOctaves == 5) && Number of octaves can only be 4 or 5.", 109, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_235;
      }

      v17 = *(a2 + 50);
      v14 = *a2;
      v16 = *(a2 + 4);
    }

    if (sub_1E54789D8(v14, v16) != v17 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 276, "(input_cfg.numberOfOctaves == hw::desgen::ComputeNumOctavesFlow2( input_cfg.inputImageWidth, input_cfg.inputImageHeight)) && If width and height are > 320 then number of octaves should be 5 else, number of octaves should be 4.", 230, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_235:
      abort();
    }

    v18 = *(a2 + 50);
    bzero((v9 + 128), 0xE80uLL);
    *(v9 + 128) = 4128;
    v19 = *a2;
    v20 = *(a2 + 4);
    if (*a2 >= 0x280u)
    {
      LOWORD(v19) = 640;
    }

    *(v9 + 140) = 0u;
    *(v9 + 136) = v19;
    *(v9 + 138) = v20;
    *(v9 + 396) = 0;
    *(v9 + 364) = 0u;
    *(v9 + 380) = 0u;
    *(v9 + 332) = 0u;
    *(v9 + 348) = 0u;
    *(v9 + 300) = 0u;
    *(v9 + 316) = 0u;
    *(v9 + 268) = 0u;
    *(v9 + 284) = 0u;
    *(v9 + 236) = 0u;
    *(v9 + 252) = 0u;
    *(v9 + 204) = 0u;
    *(v9 + 220) = 0u;
    *(v9 + 172) = 0u;
    *(v9 + 188) = 0u;
    *(v9 + 156) = 0u;
    if (*(a2 + 50) == 5)
    {
      v21 = 1023;
    }

    else
    {
      v21 = 255;
    }

    if (*(a2 + 84))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    *(v9 + 404) = v22;
    if (*(a2 + 50) == 5)
    {
      v23 = 1023;
    }

    else
    {
      v23 = 255;
    }

    if (*(a2 + 85))
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *(v9 + 408) = v24;
    v25 = *(a2 + 86);
    if (*(a2 + 50) == 5)
    {
      v26 = 510;
    }

    else
    {
      v26 = 126;
    }

    if (*(a2 + 86))
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    *(v9 + 412) = v27;
    if ((v25 & 1) == 0 && (*(a2 + 87) & 1) == 0 && (*(a2 + 88) & 1) == 0 && (*(a2 + 89) & 1) == 0 && (*(a2 + 173) & 1) == 0 && *(a2 + 113) != 1)
    {
      v26 = 0;
    }

    v28 = 2 * v18;
    *(v9 + 416) = v26;
    if (v18)
    {
      if (v18 > 3)
      {
        v30 = xmmword_1E5491C90;
        v31 = xmmword_1E5491CA0;
        v32 = xmmword_1E5491CB0;
        v33 = xmmword_1E5491CC0;
        v29 = v28 & 0x1FFF8;
        *&v34 = 0x3000300030003;
        *(&v34 + 1) = 0x3000300030003;
        v35.i64[0] = 0x20002000200020;
        v35.i64[1] = 0x20002000200020;
        v36 = vdupq_n_s64(1uLL);
        v37.i64[0] = 0x10001000100010;
        v37.i64[1] = 0x10001000100010;
        v38 = vdupq_n_s64(8uLL);
        v39 = v28 & 0x1FFF8;
        v40 = v9 + 420;
        do
        {
          *v40 = v34;
          *(v40 + 124) = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v33, v36)), vceqzq_s64(vandq_s8(v32, v36))), vuzp1q_s32(vceqzq_s64(vandq_s8(v31, v36)), vceqzq_s64(vandq_s8(v30, v36)))), v37, v35);
          v31 = vaddq_s64(v31, v38);
          v32 = vaddq_s64(v32, v38);
          v33 = vaddq_s64(v33, v38);
          v30 = vaddq_s64(v30, v38);
          v40 += 16;
          v39 -= 8;
        }

        while (v39);
        if (v28 == v29)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v29 = 0;
      }

      v41 = v29 - v28;
      v42 = (v9 + 2 * v29 + 544);
      do
      {
        *(v42 - 62) = 3;
        if (v29)
        {
          v43 = 32;
        }

        else
        {
          v43 = 16;
        }

        *v42++ = v43;
        LOBYTE(v29) = v29 + 1;
        _CF = __CFADD__(v41++, 1);
      }

      while (!_CF);
    }

LABEL_69:
    *(v9 + 440) = 0;
    v45 = *(a1 + 788);
    if (*(a1 + 788))
    {
      v46 = 0;
      v47 = *(a2 + 20);
      v48 = v9 + 444;
      v49 = vdupq_n_s32(v47);
      v50 = (v9 + 460);
      do
      {
        v51 = v45 & 0xFFF8;
        v52 = v50;
        if (v45 >= 8)
        {
          do
          {
            v52[-1] = v49;
            *v52 = v49;
            v52 += 2;
            v51 -= 8;
          }

          while (v51);
          v53 = v45 & 0xFFF8;
          if (v53 == v45)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v53 = 0;
        }

        v54 = v45 - v53;
        v55 = (v48 + 4 * v53);
        do
        {
          *v55++ = v47;
          --v54;
        }

        while (v54);
LABEL_71:
        ++v46;
        v50 = (v50 + 20);
        v48 += 20;
      }

      while (v46 != v45);
    }

    *(v9 + 1944) = *(a2 + 24);
    *(v9 + 1956) = 2047;
    *(v9 + 1960) = sub_1E5478AA8(*a2, 0);
    v56 = sub_1E5478AA8(*a2, 1u);
    *(v9 + 1964) = v56;
    *(v9 + 1968) = v56;
    v57 = sub_1E5478AA8(*a2, 2u);
    *(v9 + 1972) = v57;
    *(v9 + 1976) = v57;
    v58 = sub_1E5478AA8(*a2, 3u);
    *(v9 + 1980) = v58;
    if (*(a2 + 50) == 5)
    {
      *(v9 + 1984) = v58;
      *(v9 + 1988) = sub_1E5478AA8(*a2, 4u);
    }

    *(v9 + 2056) = 1023;
    *(v9 + 2060) = xmmword_1E5491CD0;
    *(v9 + 2076) = 9437297;
    if (v18 >= 2)
    {
      v59 = v9 + 2098;
      v60 = 2;
      do
      {
        *(v59 - 18) = xmmword_1E5491CE0;
        *(v59 - 2) = 9830514;
        v60 += 2;
        v59 += 20;
      }

      while (v60 < v28);
    }

    v61 = *(v9 + 2176) & 0xFFFFFFFD;
    *(v9 + 2176) = v61;
    if ((*(a2 + 88) & 1) != 0 && *(a2 + 89) == 1)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 391, "!(input_cfg.enableShortDescriptorOutputFlow2 && input_cfg.enableLongDescriptorOutputFlow2) && short and long descriptor should not be enabled at the same time", 160, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_235;
      }

      v61 = *(v9 + 2176);
    }

    v62 = v61 & 0xFFFFFFF3;
    *(v9 + 2176) = v61 & 0xFFFFFFF3;
    if (*(a2 + 89) == 1)
    {
      v62 = v61 | 0xC;
    }

    else if (*(a2 + 88) == 1)
    {
      if (*(a2 + 112))
      {
        if (*(a2 + 112) == 1)
        {
          v62 |= 8u;
        }
      }

      else
      {
        v62 |= 4u;
      }
    }

    *(v9 + 2176) = v62 & 0xFFE0018F | 0x88000;
    if (*(a2 + 50) == 5)
    {
      v63 = 510;
    }

    else
    {
      v63 = 126;
    }

    if (*(a2 + 87))
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    *(v9 + 2180) = v64;
    if (*(v9 + 412))
    {
      v65 = *(a2 + 92);
    }

    else
    {
      v65 = 0;
    }

    *(v9 + 2184) = v65;
    *(v9 + 1948) = *(a2 + 104);
    v66 = *(a2 + 28);
    v306[0] = v66;
    v306[1] = v66;
    v306[2] = v66;
    v306[3] = v66;
    v307[0] = v66;
    v307[1] = v66;
    v307[2] = v66;
    v307[3] = v66;
    if (*(a2 + 76) == 1)
    {
      sub_1E5478504(v66, 2 * v18, v306);
    }

    v67 = v28 - 1;
    if (v28 != 2)
    {
      v68 = 2;
      if (v67 > 2)
      {
        v68 = v28 - 1;
      }

      if (v67 <= 8)
      {
        v69 = 1;
LABEL_114:
        v78 = v68 - v69;
        v79 = (v9 + 4 * v69 + 2188);
        v80 = &v306[v69 - 1];
        do
        {
          v81 = *v80++;
          *v79++ = v81;
          --v78;
        }

        while (v78);
        goto LABEL_116;
      }

      v70 = (v68 - 1) & 0xFFFFFFFFFFFFFFF8;
      v69 = v70 | 1;
      v71 = v307;
      v72 = (v9 + 2208);
      v73 = v70;
      do
      {
        v75 = v71[-2];
        v74 = v71[-1];
        v77 = *v71;
        v76 = v71[1];
        v71 += 4;
        v72[-1] = vuzp1q_s32(v75, v74);
        *v72 = vuzp1q_s32(v77, v76);
        v72 += 2;
        v73 -= 8;
      }

      while (v73);
      if (v68 - 1 != v70)
      {
        goto LABEL_114;
      }
    }

LABEL_116:
    v82 = (v9 + 1560);
    v83 = v9 + 564;
    v84 = v13 * v12;
    v85 = *(v9 + 2224) & 0xFFFFFC00 | *a2 & 0x3FF;
    *(v9 + 2224) = v85;
    *(v9 + 2224) = v85 & 0xE000FFFF | ((*(a2 + 4) & 0x1FFF) << 16);
    *(v9 + 2228) = xmmword_1E5491CF0;
    *(v9 + 2244) = xmmword_1E5491D00;
    *(v9 + 2260) = xmmword_1E5491D10;
    *(v9 + 2276) = xmmword_1E5491D20;
    *(v9 + 2292) = 0x1D002E00230039;
    v86 = (a2 + 20);
    if (v67 > 7 && (v9 + 2320 >= (a2 + 22) || v86 >= v9 + 4 * v18 + 2372))
    {
      v88 = (v9 + 2374);
      v87 = v67 & 0xFFFFFFFFFFFFFFF8;
      v89.i64[0] = 0x1000100010001;
      v89.i64[1] = 0x1000100010001;
      v90.i64[0] = -1;
      v90.i64[1] = -1;
      v91 = v67 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        *(v88 - 54) = v89;
        *(v88 - 36) = v90;
        v92 = vld1q_dup_s16(v86);
        *v88 = v92;
        *(v88++ - 18) = v92;
        v91 -= 8;
      }

      while (v91);
    }

    else
    {
      v87 = 0;
    }

    v93 = v9 + 3912;
    v94 = v87 - v28 + 1;
    v95 = (v9 + 2 * v87 + 2374);
    do
    {
      *(v95 - 27) = 1;
      *(v95 - 18) = -1;
      v96 = *v86;
      *v95 = *v86;
      *(v95 - 9) = v96;
      ++v95;
      _CF = __CFADD__(v94++, 1);
    }

    while (!_CF);
    v97 = (a2 + 22);
    if (v67 < 4 || (v98 = v9 + 2392, v9 + 2392 < (a2 + 23)) && v97 < v9 + 8 * v18 + 2388)
    {
      v99 = 0;
      goto LABEL_136;
    }

    if (v67 >= 0x10)
    {
      v99 = v67 & 0xFFFFFFFFFFFFFFF0;
      v100.i64[0] = 0xFFFFFF00FFFFFF00;
      v100.i64[1] = 0xFFFFFF00FFFFFF00;
      v101 = v67 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v102 = vqtbl1q_s8(*v97, v100);
        v103 = *(v98 + 48) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00);
        v104.i64[0] = __PAIR64__(HIDWORD(*v98), *v98) & 0xFFFFFF00FFFFFF00;
        v104.i32[2] = *(v98 + 8) & 0xFFFFFF00;
        v104.i32[3] = HIDWORD(*v98) & 0xFFFFFF00;
        v105 = *(v98 + 16) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00);
        *(v98 + 32) = vorrq_s8((*(v98 + 32) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v102);
        *(v98 + 48) = vorrq_s8(v103, v102);
        *v98 = vorrq_s8(v104, v102);
        *(v98 + 16) = vorrq_s8(v105, v102);
        v98 += 64;
        v101 -= 16;
      }

      while (v101);
      if ((v67 & 0xC) == 0)
      {
LABEL_136:
        v111 = v99 - v28 + 1;
        v112 = (v9 + 4 * v99 + 2392);
        do
        {
          *v112 = v97->i8[0];
          v112 += 4;
          _CF = __CFADD__(v111++, 1);
        }

        while (!_CF);
        *(v9 + 2428) = xmmword_1E5491D30;
        *(v9 + 2444) = 0;
        v113 = *(a2 + 50);
        if (v113 == 5)
        {
          v114 = 15;
        }

        else
        {
          v114 = 7;
        }

        *(v9 + 2452) = v114;
        if (v113 != 1)
        {
          v115 = 0;
          v116 = v9 + 2458;
          do
          {
            *(v116 - 2) = 19267693;
            ++v115;
            v116 += 4;
          }

          while (v115 < *(a2 + 50) - 1);
        }

        if (v67 < 4 || v83 < a2 + 48 && a2 + 43 < (v9 + 8 * v18 + 560))
        {
          v117 = 0;
          goto LABEL_156;
        }

        if (v67 >= 0x10)
        {
          v117 = v67 & 0xFFFFFFFFFFFFFFF0;
          v118.i64[0] = 0xFFFFFF00FFFFFF00;
          v118.i64[1] = 0xFFFFFF00FFFFFF00;
          v119 = v67 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v120 = vqtbl1q_s8(*(a2 + 43), v118);
            v121.i64[0] = __PAIR64__(HIDWORD(*v83), *v83) & 0xFFFFFFFEFFFFFFFELL;
            v121.i32[2] = *(v83 + 8) & 0xFFFFFFFE;
            v121.i32[3] = HIDWORD(*v83) & 0xFFFFFFFE;
            v122 = vorrq_s8((*(v83 + 16) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v120);
            v123 = vorrq_s8(v121, v120);
            v124 = vorrq_s8((*(v83 + 48) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v120);
            v125 = vorrq_s8((*(v83 + 32) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v120);
            *(v83 + 32) = v125;
            *(v83 + 48) = v124;
            *v83 = v123;
            *(v83 + 16) = v122;
            _Q6 = vdupq_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0);
            __asm { SHLL2           V7.4S, V6.8H, #0x10 }

            v131 = vshll_n_s16(*_Q6.i8, 0x10uLL);
            *(v83 + 32) = vorrq_s8(v131, (*&v125 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            *(v83 + 48) = vorrq_s8(_Q7, (*&v124 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            *v83 = vorrq_s8(v131, (*&v123 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            *(v83 + 16) = vorrq_s8(_Q7, (*&v122 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
            v83 += 64;
            v119 -= 16;
          }

          while (v119);
          if ((v67 & 0xC) == 0)
          {
LABEL_156:
            v138 = v117 - v28 + 1;
            v139 = (v9 + 4 * v117 + 564);
            do
            {
              v140 = *v139 & 0xFFFFFFFE | *(a2 + 43);
              *v139 = v140;
              *v139++ = v140 & 0xFFC0FFFF | ((*(a2 + 46) & 0x3F) << 16);
              _CF = __CFADD__(v138++, 1);
            }

            while (!_CF);
            if (*(a2 + 113))
            {
              v141 = 1;
            }

            else
            {
              v141 = *(a2 + 173);
            }

            v142 = *(v9 + 2472) & 0xFFFFFFFE | v141;
            *(v9 + 2472) = v142;
            if ((*(a2 + 113) & 1) != 0 || *(a2 + 173) == 1)
            {
              v143 = v142 & 0xFFFE00FF | (((vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) >> 5) & 0x1FF) << 8);
              *(v9 + 2472) = v143;
              *(v9 + 2472) = v143 & 0xF8FFFFFF | ((*(a2 + 152) & 3) << 24);
              *(v9 + 2492) = sub_1E541F5EC(*(a2 + 24));
              v144 = *(a1 + 672);
              v145 = *(a1 + 664) + v144;
              *(v9 + 2476) = v145;
              *(a1 + 392) = 1;
              *(a1 + 396) = v144;
              v146 = *(a2 + 152);
              if (v146 > 2)
              {
                v147 = 16;
              }

              else
              {
                v147 = *&asc_1E54927DC[4 * v146];
              }

              if (sub_1E544E3D8(v147 * vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(*(a2 + 24), 9uLL)) + 1.0, 9uLL), 0, 64, a1 + 372) >= 0x4B001 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 553, "curr_desc_size <= kCurrDescriptorDTCMSizeColl", 45, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_235;
              }

              v148 = *(a1 + 672) + 307200;
              *(v9 + 2484) = v145 + 307200;
              *(a1 + 672) = v148 + (*(v9 + 2492) << 6);
            }

            *v82 = vandq_s8(*v82, xmmword_1E5491D40);
            *(v9 + 1904) = *&vandq_s8(*(v9 + 1904), vdupq_n_s32(0xE000F000)) | __PAIR128__(0x10001000100010, 0x10001000100010);
            *(v9 + 1576) &= 0xFFFFFFF0FFFFFFF0;
            *(v9 + 1920) = vorrq_s8(vandq_s8(*(v9 + 1920), xmmword_1E5491D50), xmmword_1E5491D60);
            *(v9 + 1936) = vorr_s8(vand_s8(*(v9 + 1936), vdup_n_s32(0xFFFF8080)), vdup_n_s32(0x101u));
            v149 = vdupq_n_s32(0xF000F800);
            *(v9 + 1584) = *&vandq_s8(*(v9 + 1584), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1600) = *(v9 + 1600) & 0xF000F800 | 0x50005;
            *(v9 + 1604) = *&vandq_s8(*(v9 + 1604), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1620) = *(v9 + 1620) & 0xF000F800 | 0x50005;
            *(v9 + 1624) = *&vandq_s8(*(v9 + 1624), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1640) = *(v9 + 1640) & 0xF000F800 | 0x50005;
            *(v9 + 1644) = *&vandq_s8(*(v9 + 1644), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1660) = *(v9 + 1660) & 0xF000F800 | 0x50005;
            *(v9 + 1664) = *&vandq_s8(*(v9 + 1664), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1680) = *(v9 + 1680) & 0xF000F800 | 0x50005;
            *(v9 + 1684) = *&vandq_s8(*(v9 + 1684), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1700) = *(v9 + 1700) & 0xF000F800 | 0x50005;
            *(v9 + 1704) = *&vandq_s8(*(v9 + 1704), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1720) = *(v9 + 1720) & 0xF000F800 | 0x50005;
            *(v9 + 1724) = *&vandq_s8(*(v9 + 1724), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1740) = *(v9 + 1740) & 0xF000F800 | 0x50005;
            *(v9 + 1744) = *&vandq_s8(*(v9 + 1744), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1760) = *(v9 + 1760) & 0xF000F800 | 0x50005;
            *(v9 + 1764) = *&vandq_s8(*(v9 + 1764), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1780) = *(v9 + 1780) & 0xF000F800 | 0x50005;
            *(v9 + 1784) = *&vandq_s8(*(v9 + 1784), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1800) = *(v9 + 1800) & 0xF000F800 | 0x50005;
            *(v9 + 1804) = *&vandq_s8(*(v9 + 1804), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1820) = *(v9 + 1820) & 0xF000F800 | 0x50005;
            *(v9 + 1824) = *&vandq_s8(*(v9 + 1824), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1840) = *(v9 + 1840) & 0xF000F800 | 0x50005;
            *(v9 + 1844) = *&vandq_s8(*(v9 + 1844), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1860) = *(v9 + 1860) & 0xF000F800 | 0x50005;
            *(v9 + 1864) = *&vandq_s8(*(v9 + 1864), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1880) = *(v9 + 1880) & 0xF000F800 | 0x50005;
            *(v9 + 1884) = *&vandq_s8(*(v9 + 1884), v149) | __PAIR128__(0x5000500050005, 0x5000500050005);
            *(v9 + 1900) = *(v9 + 1900) & 0xF000F800 | 0x50005;
            if (*a2 > 0x280u)
            {
              sub_1E5478B6C(640, *a2, *(a2 + 4), *(a2 + 42), v249);
              v162 = v249[0] & 0x1F;
              v163 = *(v9 + 128) & 0xFFFFFFE0FFFFFFFFLL | ((v249[0] & 0x1F) << 32);
              *(v9 + 128) = v163;
              v164 = HIDWORD(v163) & 0x1F;
              if (v162)
              {
                v165 = 0;
                v166 = 0;
                v167 = 498;
                do
                {
                  *(v9 + v167 * 4) = *(v9 + v167 * 4) & 0xFFFFE000 | v249[v167 - 497] & 0x1FFF;
                  v168 = (v9 + v165);
                  v168[150] = *(v9 + v165 + 600) & 0xE000F800 | *(&v251 + v166) & 0x7FF | ((*(&v252 + v166) & 0x1FFF) << 16);
                  v169 = *(&v261 + v166);
                  v168[230] = *(v9 + v165 + 920) & 0xE000FC00 | (v169 / 5) & 0x3FF | (((((1717986919 * *(&v262 + v166)) >> 33) + ((1717986919 * *(&v262 + v166)) >> 63)) & 0x1FFF) << 16);
                  v168[310] = *(v9 + v165 + 1240) & 0xFFFFFC00 | (v169 % 5) & 0x3FF;
                  v168[151] = *(v9 + v165 + 604) & 0xE000F800 | *(&v253 + v166) & 0x7FF | ((*(&v254 + v166) & 0x1FFF) << 16);
                  v170 = *(&v263 + v166);
                  v168[231] = *(v9 + v165 + 924) & 0xE000FC00 | (v170 / 5) & 0x3FF | (((((1717986919 * *(&v264 + v166)) >> 33) + ((1717986919 * *(&v264 + v166)) >> 63)) & 0x1FFF) << 16);
                  v168[311] = *(v9 + v165 + 1244) & 0xFFFFFC00 | (v170 % 5) & 0x3FF;
                  v168[152] = *(v9 + v165 + 608) & 0xE000F800 | *(&v255 + v166) & 0x7FF | ((*(&v256 + v166) & 0x1FFF) << 16);
                  v171 = *(&v265 + v166);
                  v168[232] = *(v9 + v165 + 928) & 0xE000FC00 | (v171 / 5) & 0x3FF | (((((1717986919 * *(&v266 + v166)) >> 33) + ((1717986919 * *(&v266 + v166)) >> 63)) & 0x1FFF) << 16);
                  v168[312] = *(v9 + v165 + 1248) & 0xFFFFFC00 | (v171 % 5) & 0x3FF;
                  v168[153] = *(v9 + v165 + 612) & 0xE000F800 | *(&v257 + v166) & 0x7FF | ((*(&v258 + v166) & 0x1FFF) << 16);
                  v172 = *(&v267 + v166);
                  v173 = *(v9 + v165 + 1252) & 0xFFFFFC00 | (v172 % 5) & 0x3FF;
                  v168[233] = *(v9 + v165 + 932) & 0xE000FC00 | (v172 / 5) & 0x3FF | (((((1717986919 * *(&v268 + v166)) >> 33) + ((1717986919 * *(&v268 + v166)) >> 63)) & 0x1FFF) << 16);
                  v168[313] = v173;
                  v168[154] = *(v9 + v165 + 616) & 0xE000F800 | v260[v166 / 4 - 1] & 0x7FF | ((v260[v166 / 4] & 0x1FFF) << 16);
                  v174 = v270[v166 / 4 - 1];
                  v175 = *(v9 + v165 + 1256);
                  v168[234] = *(v9 + v165 + 936) & 0xE000FC00 | (v174 / 5) & 0x3FF | (((((1717986919 * v270[v166 / 4]) >> 33) + ((1717986919 * v270[v166 / 4]) >> 63)) & 0x1FFF) << 16);
                  v168[314] = v175 & 0xFFFFFC00 | (v174 % 5) & 0x3FF;
                  v166 += 40;
                  ++v167;
                  v165 += 20;
                }

                while (40 * v164 != v166);
              }

              v82->i32[0] = v82->i32[0] & 0xFFFFFFFE | *(a2 + 42);
              if (*(a2 + 42) == 1)
              {
                *(v9 + 1924) = *(v9 + 1924) & 0xFFFF8080 | v281 & 0x7F | ((v282 & 0x7F) << 8);
                *(v9 + 1904) = *(v9 + 1904) & 0xE000F000 | v291 & 0xFFF | ((v292 & 0x1FFF) << 16);
                *(v9 + 1564) = *(v9 + 1564) & 0xFFFFFFF0 | v301 & 0xF;
                *(v9 + 1928) = *(v9 + 1928) & 0xFFFF8080 | v283 & 0x7F | ((v284 & 0x7F) << 8);
                *(v9 + 1908) = *(v9 + 1908) & 0xE000F000 | v293 & 0xFFF | ((v294 & 0x1FFF) << 16);
                *(v9 + 1568) = *(v9 + 1568) & 0xFFFFFFF0 | v302 & 0xF;
                *(v9 + 1932) = *(v9 + 1932) & 0xFFFF8080 | v285 & 0x7F | ((v286 & 0x7F) << 8);
                *(v9 + 1912) = *(v9 + 1912) & 0xE000F000 | v295 & 0xFFF | ((v296 & 0x1FFF) << 16);
                *(v9 + 1572) = *(v9 + 1572) & 0xFFFFFFF0 | v303 & 0xF;
                *(v9 + 1936) = *(v9 + 1936) & 0xFFFF8080 | v287 & 0x7F | ((v288 & 0x7F) << 8);
                *(v9 + 1916) = *(v9 + 1916) & 0xE000F000 | v297 & 0xFFF | ((v298 & 0x1FFF) << 16);
                *(v9 + 1576) = *(v9 + 1576) & 0xFFFFFFF0 | v304 & 0xF;
                *(v9 + 1940) = *(v9 + 1940) & 0xFFFF8080 | v289 & 0x7F | ((v290 & 0x7F) << 8);
                *(v9 + 1920) = *(v9 + 1920) & 0xE000F000 | v299 & 0xFFF | ((v300 & 0x1FFF) << 16);
                *(v9 + 1580) = *(v9 + 1580) & 0xFFFFFFF0 | v305 & 0xF;
                if (v162)
                {
                  v176 = &v280;
                  v177 = (v9 + 1600);
                  v178 = HIDWORD(v163) & 0x1F;
                  do
                  {
                    v179 = *(v177 - 3);
                    *(v177 - 4) = *(v177 - 4) & 0xF000F800 | *(v176 - 9) & 0x7FF | ((*(v176 - 8) & 0xFFF) << 16);
                    *(v177 - 3) = v179 & 0xF000F800 | *(v176 - 7) & 0x7FF | ((*(v176 - 6) & 0xFFF) << 16);
                    v180 = *(v177 - 1);
                    *(v177 - 2) = *(v177 - 2) & 0xF000F800 | *(v176 - 5) & 0x7FF | ((*(v176 - 4) & 0xFFF) << 16);
                    *(v177 - 1) = v180 & 0xF000F800 | *(v176 - 3) & 0x7FF | ((*(v176 - 2) & 0xFFF) << 16);
                    v181 = *v177 & 0xF000F800 | *(v176 - 1) & 0x7FF;
                    v182 = *v176;
                    v176 += 10;
                    *v177 = v181 | ((v182 & 0xFFF) << 16);
                    v177 += 5;
                    --v178;
                  }

                  while (v178);
                }
              }

              *(v9 + 2496) = *(v9 + 2496) & 0xE0000000 | (2 * (*(v9 + 136) & 0x3FFF)) & 0x7FFF | ((*(v9 + 138) & 0x3FFF) << 15) | 1;
              *(v9 + 2500) = v162;
              if (v164)
              {
                if (v164 > 7)
                {
                  v200 = HIDWORD(v163) & 7;
                  v183 = v164 - v200;
                  v201 = (v9 + 2524);
                  v202.i64[0] = 0x1F0000001FLL;
                  v202.i64[1] = 0x1F0000001FLL;
                  v203 = v164 - v200;
                  do
                  {
                    v204 = vandq_s8(*(v201 - 516), v202);
                    v201[-1] = vandq_s8(*(v201 - 532), v202);
                    *v201 = v204;
                    v201 += 2;
                    v203 -= 8;
                  }

                  while (v203);
                  if (!v200)
                  {
                    goto LABEL_200;
                  }
                }

                else
                {
                  v183 = 0;
                }

                v205 = v183 - v164;
                v206 = (v9 + 4 * v183 + 1992);
                do
                {
                  v206[129] = *v206 & 0x1FFF;
                  ++v206;
                  _CF = __CFADD__(v205++, 1);
                }

                while (!_CF);
              }
            }

            else
            {
              v248 = v84;
              v150 = vdupq_n_s32(0xC000E000);
              v151 = vandq_s8(*(v9 + 2008), v150);
              *(v9 + 1992) = vandq_s8(*(v9 + 1992), v150);
              *(v9 + 2008) = v151;
              v152 = vandq_s8(*(v9 + 2024), v150);
              v153 = vandq_s8(*(v9 + 2040), v150);
              *(v9 + 128) = *(v9 + 128) & 0xFFFFFFE0FFFFFFFFLL | 0x100000000;
              *(v9 + 2024) = v152;
              *(v9 + 2040) = v153;
              if (*(a1 + 784) != 4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 232, "hal.minBlockSize == feature_detection::kMinBlockSize", 52, &unk_1E549A011, 0, sub_1E548FDE0) || *(a1 + 788) != 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 233, "hal.numberOfGridElements == feature_detection::kNumRegionOfInterestBlocks", 73, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_235;
              }

              if (*(a2 + 50))
              {
                v154 = 0;
                do
                {
                  v156 = sub_1E5478AA8(*a2, v154);
                  v157 = sub_1E5478AA8(*(a2 + 4), v154);
                  v158 = *(a2 + 14);
                  v159 = v156;
                  if (*(a2 + 18))
                  {
                    v159 = sub_1E5478AA8(*(a2 + 18), v154);
                  }

                  v160 = *(a2 + 12);
                  v161 = v157;
                  if (*(a2 + 16))
                  {
                    v161 = sub_1E5478AA8(*(a2 + 16), v154);
                  }

                  v249[0] = 0;
                  *v309 = 0;
                  v308 = 0;
                  sub_1E541E498(a1 + 720, v156, v249, &v309[1], v158 >> v154, v159);
                  sub_1E541E498(a1 + 720, v157, v309, &v308, v160 >> v154, v161);
                  v155 = v9 + 4 * v154;
                  *(v155 + 600) = *(v155 + 600) & 0xE000F800 | v249[0] & 0x7FF | ((v309[0] & 0x1FFF) << 16);
                  *(v155 + 920) = *(v155 + 920) & 0xE000FC00 | v309[1] & 0x3FF | ((v308 & 0x1FFF) << 16);
                  ++v154;
                }

                while (v154 < *(a2 + 50));
              }

              v93 = v9 + 3912;
              *(v9 + 1560) = *(v9 + 1560) & 0xFFFFFFFE | *(a2 + 42);
              v84 = v248;
              if (*(a2 + 42) == 1)
              {
                bzero(v250, 0x824uLL);
                v184 = *(v9 + 600);
                v185 = v184 & 0x7FF;
                v249[0] = 1;
                v186 = HIWORD(v184) & 0x1FFF;
                v187 = *(v9 + 920);
                v262 = 5 * (HIWORD(v187) & 0x1FFF);
                v261 = (*(v9 + 1240) & 0x3FF) + 5 * (v187 & 0x3FF);
                v188 = *(v9 + 604);
                v251 = v185;
                v252 = v186;
                v253 = v188 & 0x7FF;
                v189 = HIWORD(v188) & 0x1FFF;
                v190 = *(v9 + 924);
                v264 = 5 * (HIWORD(v190) & 0x1FFF);
                v263 = (*(v9 + 1244) & 0x3FF) + 5 * (v190 & 0x3FF);
                v191 = *(v9 + 608);
                v254 = v189;
                v255 = v191 & 0x7FF;
                v192 = HIWORD(v191) & 0x1FFF;
                v193 = *(v9 + 928);
                v266 = 5 * (HIWORD(v193) & 0x1FFF);
                v265 = (*(v9 + 1248) & 0x3FF) + 5 * (v193 & 0x3FF);
                v194 = *(v9 + 612);
                v256 = v192;
                v257 = v194 & 0x7FF;
                v195 = HIWORD(v194) & 0x1FFF;
                v196 = *(v9 + 932);
                v268 = 5 * (HIWORD(v196) & 0x1FFF);
                v267 = (*(v9 + 1252) & 0x3FF) + 5 * (v196 & 0x3FF);
                v197 = *(v9 + 616);
                v258 = v195;
                v259 = v197 & 0x7FF;
                v198 = *(v9 + 936);
                v270[0] = 5 * (HIWORD(v198) & 0x1FFF);
                v199 = (*(v9 + 1256) & 0x3FF) + 5 * (v198 & 0x3FF);
                v260[0] = HIWORD(v197) & 0x1FFF;
                v269 = v199;
                sub_1E5478B6C(640, *a2, *(a2 + 4), 1, v249);
                *(v9 + 1924) = *(v9 + 1924) & 0xFFFF8080 | v281 & 0x7F | ((v282 & 0x7F) << 8);
                *(v9 + 1904) = *(v9 + 1904) & 0xE000F000 | v291 & 0xFFF | ((v292 & 0x1FFF) << 16);
                *(v9 + 1564) = *(v9 + 1564) & 0xFFFFFFF0 | v301 & 0xF;
                *(v9 + 1584) = *(v9 + 1584) & 0xF000F800 | v271 & 0x7FF | ((v272 & 0xFFF) << 16);
                *(v9 + 1928) = *(v9 + 1928) & 0xFFFF8080 | v283 & 0x7F | ((v284 & 0x7F) << 8);
                *(v9 + 1908) = *(v9 + 1908) & 0xE000F000 | v293 & 0xFFF | ((v294 & 0x1FFF) << 16);
                *(v9 + 1568) = *(v9 + 1568) & 0xFFFFFFF0 | v302 & 0xF;
                *(v9 + 1588) = *(v9 + 1588) & 0xF000F800 | v273 & 0x7FF | ((v274 & 0xFFF) << 16);
                *(v9 + 1932) = *(v9 + 1932) & 0xFFFF8080 | v285 & 0x7F | ((v286 & 0x7F) << 8);
                *(v9 + 1912) = *(v9 + 1912) & 0xE000F000 | v295 & 0xFFF | ((v296 & 0x1FFF) << 16);
                *(v9 + 1572) = *(v9 + 1572) & 0xFFFFFFF0 | v303 & 0xF;
                *(v9 + 1592) = *(v9 + 1592) & 0xF000F800 | v275 & 0x7FF | ((v276 & 0xFFF) << 16);
                *(v9 + 1936) = *(v9 + 1936) & 0xFFFF8080 | v287 & 0x7F | ((v288 & 0x7F) << 8);
                *(v9 + 1916) = *(v9 + 1916) & 0xE000F000 | v297 & 0xFFF | ((v298 & 0x1FFF) << 16);
                *(v9 + 1576) = *(v9 + 1576) & 0xFFFFFFF0 | v304 & 0xF;
                *(v9 + 1596) = *(v9 + 1596) & 0xF000F800 | v277 & 0x7FF | ((v278 & 0xFFF) << 16);
                *(v9 + 1940) = *(v9 + 1940) & 0xFFFF8080 | v289 & 0x7F | ((v290 & 0x7F) << 8);
                *(v9 + 1920) = *(v9 + 1920) & 0xE000F000 | v299 & 0xFFF | ((v300 & 0x1FFF) << 16);
                *(v9 + 1580) = *(v9 + 1580) & 0xFFFFFFF0 | v305 & 0xF;
                *(v9 + 1600) = *(v9 + 1600) & 0xF000F800 | v279 & 0x7FF | ((v280 & 0xFFF) << 16);
              }
            }

LABEL_200:
            v207 = *(v9 + 3840);
            if (*(a2 + 113))
            {
              *(v9 + 3840) = v207 & 0xFFFFFFFE;
              v208 = vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) & 0x3FFF;
              *(v9 + 3904) = *(v9 + 3904) & 0xFFFFC000 | v208;
              v209 = v207 & 0xFFFE00FE | (((vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) >> 5) & 0x1FF) << 8);
              *(v9 + 3840) = v209;
              *(v9 + 3840) = v209 & 0xFCFFFFFF | ((*(a2 + 152) & 3) << 24);
              v210 = *(v9 + 2476);
              *(v9 + 3844) = v210;
              *(v9 + 3848) = *(v9 + 2480);
              *(v9 + 3868) = *(v9 + 2484);
              *(v9 + 3872) = *(v9 + 2488);
              v211 = *(a2 + 152);
              if (v211 > 2)
              {
                v212 = 0;
                v213 = 512;
              }

              else
              {
                v212 = dword_1E54927E8[v211];
                v213 = dword_1E54927F4[v211];
              }

              *(v9 + 3852) = v212;
              *(v9 + 3856) = v213;
              v215 = v210 & 0x7FFFF;
              *(v9 + 3860) = v215 + 384;
              *(v9 + 3864) = v215 + 512;
              *(v9 + 3876) = *(v9 + 2492);
              v216 = *(a1 + 672);
              v217 = *(a1 + 664) + v216;
              *(v9 + 3880) = v217;
              v218 = 4 * v208;
              v219 = v217 + v218;
              LODWORD(v218) = v216 + v218;
              *(a1 + 672) = v218;
              *(v9 + 3888) = v219;
              v220 = v219 + 16 * (*(v9 + 3904) & 0x3FFF);
              LODWORD(v218) = 16 * (*(v9 + 3904) & 0x3FFF) + v218;
              *(a1 + 672) = v218;
              *(v9 + 3896) = v220;
              *(a1 + 420) = 1;
              *(a1 + 424) = v218;
              *(a1 + 672) += sub_1E544E3D8(32 * (*(v9 + 3904) & 0x3FFFu) + 32, 0, 64, a1 + 400);
              *(v9 + 3904) &= 0xC0FFFFFF;
              *(v9 + 3908) = 1;
              v221 = *(a2 + 116);
              *v93 = vcvtq_u32_f32(v221);
              v222.i64[0] = 0x300000003;
              v222.i64[1] = 0x300000003;
              *(v93 + 36) = vandq_s8(vcvtq_n_u32_f32(vabsq_f32(v221), 0x12uLL), v222);
              v223 = *(a2 + 132);
              *(v93 + 16) = vcvtq_u32_f32(v223);
              *(v93 + 52) = vandq_s8(vcvtq_n_u32_f32(vabsq_f32(v223), 0x12uLL), v222);
              v223.i32[0] = *(a2 + 148);
              *(v9 + 3944) = v223.f32[0];
              *(v9 + 3980) = vcvts_n_u32_f32(fabsf(v223.f32[0]), 0x12uLL) & 0x3FFFF;
              v224 = *(v9 + 3984);
              *(v9 + 3984) = v224 & 0xFFFFFFFFC000E000;
              v225 = v224 & 0xFFFFE000C000E000 | ((*a2 & 0x1FFF) << 32);
              *(v9 + 3984) = v225;
              *(v9 + 3984) = v225 & 0xC000FFFFFFFFFFFFLL | ((*(a2 + 4) & 0x3FFF) << 48);
              v226 = *(v9 + 3992) & 0xFFFFFF00 | vcvtas_u32_f32((*(a2 + 156) * 256.0) / 360.0);
              *(v9 + 3992) = v226;
              *(v9 + 3992) = v226 & 0xFEC000FF | ((vcvtas_u32_f32(*(a2 + 160) * 512.0) & 0x3FFF) << 8);
              *(v9 + 3996) = (*(a2 + 164) * ((*(a2 + 164) * *a2) * *a2));
              v227 = *(v9 + 4000) & 0xFFFFF000 | *(a2 + 96) & 0xFFF;
              *(v9 + 4000) = v227;
              *(v9 + 4000) = v227 & 0xE000FFFF | ((*(a2 + 100) & 0x1FFF) << 16);
              *(v9 + 4004) = *(a2 + 168);
              v214 = *(v9 + 4) & 0xFFFFFFFC;
              if (v84)
              {
                ++v214;
              }

              *(v9 + 4) = v214;
              if (!v84)
              {
                goto LABEL_214;
              }
            }

            else
            {
              *(v9 + 3840) = v207 | 1;
              v214 = *(v9 + 4) & 0xFFFFFFFC;
              if (v84)
              {
                ++v214;
              }

              *(v9 + 4) = v214;
              if (!v84)
              {
                goto LABEL_214;
              }
            }

            *(a1 + 504) = 1;
            *(a1 + 508) = 0;
            v228 = *(a1 + 616);
            v229 = *(a1 + 620);
            v230 = *(a1 + 612);
            *(a1 + 484) = 1;
            *(a1 + 488) = v228;
            *(a1 + 492) = v229;
            v231 = (v228 + 63) & 0xFFFFFFC0;
            *(a1 + 496) = v231;
            *(a1 + 500) = v230;
            if (v231 * v229 != v84 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 460, "size == itcm_size", 17, &unk_1E549A011, 0, sub_1E548FDE0))
            {
              goto LABEL_235;
            }

            v214 = *(v9 + 4) & 0xFFFFFFF3 | 4;
            *(v9 + 4) = v214;
            *(v9 + 6376) = *(a1 + 656);
            *(v9 + 6384) = v84;
LABEL_214:
            v232 = *(a1 + 628);
            v233 = *(a1 + 632);
            v234 = v233 * v232;
            if ((v233 * v232) > 0x1000)
            {
              if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 470, "data_segment_size <= kDataSegmentSize && Data segment size larger than expected", 81, &unk_1E549A011, 0, sub_1E548FDE0))
              {
                goto LABEL_235;
              }

              v232 = *(a1 + 628);
              v233 = *(a1 + 632);
            }

            else if (!v234)
            {
LABEL_222:
              v237 = *(a1 + 640);
              v238 = *(a1 + 644);
              v239 = v238 * v237;
              if (!(v238 * v237))
              {
                goto LABEL_227;
              }

              *(a1 + 560) = 1;
              v240 = *(a1 + 672);
              *(a1 + 564) = v240;
              v241 = *(a1 + 636);
              *(a1 + 540) = 1;
              *(a1 + 544) = v237;
              *(a1 + 548) = v238;
              v242 = (v237 + 63) & 0xFFFFFFC0;
              *(a1 + 552) = v242;
              *(a1 + 556) = v241;
              v243 = v242 * v238;
              v244 = v240;
              if (v243 == v239)
              {
LABEL_226:
                *(a1 + 672) = v244 + v239;
                v245 = *(a1 + 664) + v240;
                v214 = *(v9 + 4) & 0xFFFFFF3F | 0x40;
                *(v9 + 4) = v214;
                *(v9 + 6400) = v245;
                *(v9 + 6408) = v239;
LABEL_227:
                if (*(a1 + 392) == 1)
                {
                  v246 = *(a1 + 664) + *(a1 + 396);
                  v214 = v214 & 0xFFFFF3FF | 0x400;
                  *(v9 + 4) = v214;
                  *(v9 + 6424) = v246;
                  *(v9 + 6432) = *(a1 + 380) * *(a1 + 384);
                  if (*(a1 + 420) != 1)
                  {
                    goto LABEL_229;
                  }
                }

                else if (*(a1 + 420) != 1)
                {
LABEL_229:
                  if (!v84)
                  {
                    return 1;
                  }

LABEL_230:
                  *(v9 + 5336) = *(a1 + 608);
                  *(v9 + 5340) = 0x80000000;
                  *(v9 + 5344) = 0;
                  *(v9 + 5208) = 0x600000006;
                  *(v9 + 5180) = 0x80000;
                  return 1;
                }

                v247 = *(a1 + 664) + *(a1 + 424);
                *(v9 + 4) = v214 & 0xFFFFCFFF | 0x1000;
                *(v9 + 6436) = v247;
                *(v9 + 6444) = *(a1 + 408) * *(a1 + 412);
                if (!v84)
                {
                  return 1;
                }

                goto LABEL_230;
              }

              if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 505, "size == extra_input_size", 24, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
              {
                v244 = *(a1 + 672);
                v240 = *(a1 + 564);
                goto LABEL_226;
              }

              goto LABEL_235;
            }

            *(a1 + 532) = 1;
            *(a1 + 536) = 0;
            v235 = *(a1 + 624);
            *(a1 + 512) = 1;
            *(a1 + 516) = v232;
            *(a1 + 520) = v233;
            v236 = (v232 + 63) & 0xFFFFFFC0;
            *(a1 + 524) = v236;
            *(a1 + 528) = v235;
            if (v236 * v233 != v234 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 484, "size == data_segment_size", 25, &unk_1E549A011, 0, sub_1E548FDE0))
            {
              goto LABEL_235;
            }

            v214 = *(v9 + 4) & 0xFFFFFFCF | 0x10;
            *(v9 + 4) = v214;
            *(v9 + 6388) = *(a1 + 664);
            *(v9 + 6396) = v234;
            goto LABEL_222;
          }
        }

        else
        {
          v117 = 0;
        }

        v132 = v117;
        v117 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        v133 = (v9 + 4 * v132 + 564);
        v134 = v132 - v117;
        v135.i64[0] = 0xFF000000FFLL;
        v135.i64[1] = 0xFF000000FFLL;
        do
        {
          v136.i64[0] = __PAIR64__(HIDWORD(*v133), *v133) & 0xFFFFFFFEFFFFFFFELL;
          v136.i32[2] = v133[1] & 0xFFFFFFFE;
          v136.i32[3] = HIDWORD(*v133) & 0xFFFFFFFE;
          v137 = vorrq_s8(v136, vandq_s8(vmovl_u16(vdup_n_s16(*(a2 + 43))), v135));
          *v133 = v137;
          *v133 = vorrq_s8(vshll_n_s16(vdup_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0), 0x10uLL), (*&v137 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
          v133 += 2;
          v134 += 4;
        }

        while (v134);
        goto LABEL_156;
      }
    }

    else
    {
      v99 = 0;
    }

    v106 = v99;
    v99 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v107 = (v9 + 4 * v106 + 2392);
    v108 = v106 - (v67 & 0xFFFFFFFFFFFFFFFCLL);
    v109.i64[0] = 0xFF000000FFLL;
    v109.i64[1] = 0xFF000000FFLL;
    do
    {
      v110.i64[0] = __PAIR64__(HIDWORD(*v107), *v107) & 0xFFFFFF00FFFFFF00;
      v110.i32[2] = v107[1] & 0xFFFFFF00;
      v110.i32[3] = HIDWORD(*v107) & 0xFFFFFF00;
      *v107 = vorrq_s8(v110, vandq_s8(vmovl_u16(vdup_n_s16(v97->i64[0])), v109));
      v107 += 2;
      v108 += 4;
    }

    while (v108);
    goto LABEL_136;
  }

  return 0;
}

__n128 sub_1E5455E98(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a1;
  v5 = *(a1 + 832);
  v6 = *(a1 + 16);
  v32 = (*(*a1 + 72))(a1);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v33 = 28 * v6;
    v12 = v4;
    do
    {
      if (((3 << v8) & v5[101]) != 0)
      {
        v13 = *(v4 + 32) + v10;
        v14 = sub_1E5478AA8(a2, v9);
        v15 = sub_1E5478AA8(a3, v9);
        *v13 = 1;
        *(v13 + 4) = 2 * v14;
        *(v13 + 8) = v15;
        v16 = (2 * v14 + 63) & 0xFFFFFFC0;
        *(v13 + 12) = v16;
        *(v13 + 16) = v11;
        v11 += v16 * v15;
      }

      v4 = v12;
      if (((3 << v8) & v5[102]) != 0)
      {
        v17 = *(v12 + 104) + v10;
        v18 = sub_1E5478AA8(a2, v9);
        v19 = sub_1E5478AA8(a3, v9);
        *v17 = 1;
        *(v17 + 4) = 2 * v18;
        *(v17 + 8) = v19;
        v20 = (4 * v18 + 63) & 0xFFFFFFC0;
        *(v17 + 12) = v20;
        *(v17 + 16) = v11;
        v11 += v20 * v19;
      }

      v10 += 28;
      ++v9;
      v8 += 2;
    }

    while (v33 != v10);
  }

  else
  {
    v11 = 0;
  }

  if (v5[545])
  {
    v11 += sub_1E544E3D8(0x186A00u, v11, 64, v4 + 288);
  }

  if (v5[103])
  {
    v11 += sub_1E544E3D8(8 * v5[486], v11, 64, v4 + 316);
  }

  v21 = (v5[544] >> 2) & 3;
  if (v21 > 1)
  {
    if (v21 == 3)
    {
      v22 = 76;
    }

    else
    {
      v22 = 44;
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_29;
    }

    v22 = 28;
  }

  v23 = v5[486] * v22;
  v24 = (v23 + 65471) / 0xFFC0;
  if (v23 >= 0xFFC1)
  {
    v25 = (v23 + 65471) / 0xFFC0;
  }

  else
  {
    v25 = 1;
  }

  if (v23 >= 0xFFC1)
  {
    v26 = 65472;
  }

  else
  {
    v26 = (v23 + 63) & 0x1FFC0;
  }

  *(v4 + 204) = 1;
  *(v4 + 208) = v26;
  *(v4 + 212) = v25;
  *(v4 + 216) = v26;
  *(v4 + 220) = v11;
  v27 = v11 + v26 * v25;
  if (v23 >= 0xFFC1)
  {
    v28 = 65472;
  }

  else
  {
    v24 = 1;
    v28 = (v23 + 63) & 0x1FFC0;
  }

  *(v4 + 176) = 1;
  *(v4 + 180) = v28;
  *(v4 + 184) = v24;
  *(v4 + 188) = v28;
  *(v4 + 192) = v27;
  v11 = v27 + v28 * v24;
LABEL_29:
  v29 = *(v4 + 152);
  v30 = (v32 + 63) & 0xFFFFFFC0;
  *v29 = 1;
  *(v29 + 4) = v30;
  *(v29 + 8) = 1;
  *(v29 + 12) = v30;
  *(v29 + 16) = v11;
  v31 = v11 + v30;
  if (*(v4 + 372) == 1)
  {
    *(v4 + 388) = v31;
    v31 += *(v4 + 380) * *(v4 + 384);
  }

  if (*(v4 + 400) == 1)
  {
    *(v4 + 416) = v31;
    *(v4 + 360) = *(v4 + 388);
    result = *(v4 + 372);
    *(v4 + 344) = result;
    *(v4 + 364) = 0;
    *(v4 + 368) = 0;
  }

  return result;
}

void *sub_1E54561A0(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a4 != 8 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 198, "input_format == CISP_INPUT_FORMAT_RAW8", 38, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 856);
  if (a3 || (v8 = *(a1 + 832), *(a1 + 840) - v8 != 6528))
  {
    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 42, "cvd_all_cfg.size() == 1 && octave == 0 && Operation buffer is only programmed once for flow2", 94, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      v8 = *(a1 + 832);
      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

LABEL_7:
  *a2 = -1;
  a2[1] = v7;
  a2[3] = 6528;

  return memcpy(a2 + 4, v8, 0x1980uLL);
}

uint64_t sub_1E54562A0(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a7 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 204, "octave == 0", 11, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v13 = (*(*a1 + 56))(a1);
  v14 = *(a1 + 24);

  return sub_1E5411AA4(a2, v13, a3, a4, a5, a6, v14, (a1 + 32));
}

__n128 sub_1E5456380(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  *(a3 + 92) = *(a2 + 100);
  v4 = *a2;
  *(a3 + 8) = *(a2 + 4);
  *a3 = v4;
  v5 = *(a2 + 10);
  *(a3 + 18) = *(a2 + 9);
  *(a3 + 10) = v5;
  v6 = *(a2 + 20);
  *(a3 + 28) = *(a2 + 14);
  *(a3 + 20) = v6;
  v7 = *(a2 + 30);
  *(a3 + 38) = *(a2 + 19);
  *(a3 + 30) = v7;
  v8 = a2[5];
  *(a3 + 48) = *(a2 + 24);
  *(a3 + 40) = v8;
  v9 = *(a2 + 52);
  v10 = *(a2 + 68);
  *(a3 + 84) = *(a2 + 84);
  *(a3 + 68) = v10;
  *(a3 + 52) = v9;
  v11 = *(a2 + 126);
  *(a3 + 124) = *(a2 + 71);
  *(a3 + 108) = v11;
  v12 = *(a2 + 108);
  *(a3 + 142) = *(a2 + 62);
  *(a3 + 126) = v12;
  v13 = *(a2 + 82);
  *(a3 + 144) = *(a2 + 81);
  *(a3 + 160) = v13;
  v14 = (a2 + 49);
  do
  {
    v15 = *(a3 + 240 + v3);
    v16 = vmovl_u16(v14[-14]);
    *v15 = vmovl_u16(v14[-15]);
    v15[1] = v16;
    v17 = vmovl_u16(v14[-12]);
    v15[2] = vmovl_u16(v14[-13]);
    v15[3] = v17;
    v18 = vmovl_u16(v14[-10]);
    v15[4] = vmovl_u16(v14[-11]);
    v15[5] = v18;
    v19 = vmovl_u16(v14[-8]);
    v15[6] = vmovl_u16(v14[-9]);
    v15[7] = v19;
    v20 = vmovl_u16(v14[-6]);
    v15[8] = vmovl_u16(v14[-7]);
    v15[9] = v20;
    v21 = vmovl_u16(v14[-4]);
    v15[10] = vmovl_u16(v14[-5]);
    v15[11] = v21;
    v22 = vmovl_u16(v14[-2]);
    v15[12] = vmovl_u16(v14[-3]);
    v15[13] = v22;
    v23 = vmovl_u16(v14[-1]);
    v24 = vmovl_u16(*v14);
    v3 += 24;
    v14 += 16;
    v15[14] = v23;
    v15[15] = v24;
  }

  while (v3 != 192);
  *(a3 + 176) = *(a2 + 664);
  *(a3 + 436) = *(a2 + 24);
  *(a3 + 180) = *(a2 + 100);
  *(a3 + 196) = *(a2 + 101);
  *(a3 + 212) = *(a2 + 102);
  *(a3 + 228) = a2[206];
  *(a3 + 236) = *(a2 + 414);
  *(a3 + 432) = *(a2 + 866);
  *(a3 + 440) = *(a2 + 23);
  v25 = *(a2 + 1660);
  v26 = *(a2 + 1676);
  *(a3 + 512) = *(a2 + 423);
  *(a3 + 480) = v25;
  *(a3 + 496) = v26;
  result = *(a2 + 106);
  v28 = *(a2 + 107);
  *(a3 + 548) = *(a2 + 432);
  *(a3 + 516) = result;
  *(a3 + 532) = v28;
  return result;
}

uint64_t sub_1E5456534(uint64_t a1, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 0:
      return *(a1 + 32) + 28 * a3;
    case 1:
      if (*(a1 + 28) != 1)
      {
        v15 = a3;
        v16 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 294, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v15;
        if (v16)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 56) + 28 * a3;
      break;
    case 2:
      if (*(a1 + 28) != 1)
      {
        v11 = a3;
        v12 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 297, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v11;
        if (v12)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 80) + 28 * a3;
      break;
    case 3:
      return *(a1 + 104) + 28 * a3;
    case 4:
      if (*(a1 + 28) != 1)
      {
        v7 = a3;
        v8 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 302, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v7;
        if (v8)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 128) + 28 * a3;
      break;
    case 5:
      v17 = *(a1 + 28);
      if (v17 != 1 && (a3 || v17 != 2))
      {
        v18 = a3;
        v19 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 306, "(FlowType::kFlow1 == flow_) || ((FlowType::kFlow2 == flow_) && octave == 0) && Invalid request", 96, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v18;
        if (v19)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 152) + 28 * a3;
      break;
    case 6:
      if (*(a1 + 28) != 2)
      {
        v20 = a3;
        v21 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 309, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v20;
        if (v21)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 310, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 176;
      break;
    case 7:
      if (*(a1 + 28) != 2)
      {
        v13 = a3;
        v14 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 313, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v13;
        if (v14)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 314, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 204;
      break;
    case 8:
      if (*(a1 + 28) != 2)
      {
        v24 = a3;
        v25 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 317, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v24;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 318, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 232;
      break;
    case 9:
      if (*(a1 + 28) != 2)
      {
        v9 = a3;
        v10 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 321, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v9;
        if (v10)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 322, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 260;
      break;
    case 10:
      if (*(a1 + 28) != 2)
      {
        v22 = a3;
        v23 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 325, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v22;
        if (v23)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 326, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 288;
      break;
    case 11:
      if (*(a1 + 28) != 2)
      {
        v5 = a3;
        v6 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 329, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v5;
        if (v6)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 330, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 316;
      break;
    case 12:
      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 333, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 372;
      break;
    case 13:
      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 336, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
LABEL_54:
        abort();
      }

      result = a1 + 400;
      break;
    default:
      sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 339, &unk_1E549A011, 0, "Unsupported buffer type", 23, sub_1E548FDE0);
      abort();
  }

  return result;
}

uint64_t sub_1E5456C18(uint64_t result, int32x4_t *a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 345, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  v4 = *(v3 + 16);
  v5 = 2 * v4 - 2;
  if (2 * v4 != 2)
  {
    v6 = *(v3 + 832);
    if (v5 < 4)
    {
      v7 = 0;
      goto LABEL_15;
    }

    if (v5 >= 0x10)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFF0;
      v8 = (v6 + 2392);
      v9 = a2 + 4;
      v10 = v5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v11 = vuzp1q_s16(vuzp1q_s32(v9[-4], v9[-3]), vuzp1q_s32(v9[-2], v9[-1]));
        v12 = vuzp1q_s16(vuzp1q_s32(*v9, v9[1]), vuzp1q_s32(v9[2], v9[3]));
        v8[-1] = v11;
        *v8 = v12;
        *(v8 - 34) = v11;
        *(v8 - 18) = v12;
        v8 += 2;
        v9 += 8;
        v10 -= 16;
      }

      while (v10);
      if (v7 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
LABEL_15:
        v19 = v7 - 2 * v4 + 2;
        v20 = (v6 + 2 * v7 + 2358);
        v21 = &a2->i16[4 * v7];
        do
        {
          v22 = *v21;
          v21 += 4;
          v20[9] = v22;
          *v20++ = v22;
        }

        while (!__CFADD__(v19++, 1));
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    v13 = v7;
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v6 + 2 * v13 + 2358);
    v15 = (a2 + 8 * v13);
    v16 = v13 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v18 = *v15;
      v17 = v15[1];
      v15 += 2;
      *v17.i8 = vmovn_s32(vuzp1q_s32(v18, v17));
      *(v14 + 18) = v17.i64[0];
      *v14++ = v17.i64[0];
      v16 += 4;
    }

    while (v16);
    if (v7 != v5)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1E5456D84()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 355, "0 && Update config not supported", 34, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

__n128 sub_1E5456DD8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 832);
  v3 = v2[274];
  v4.n128_u64[0] = v3;
  v4.n128_u64[1] = HIDWORD(v3);
  v5 = v4;
  v6 = v2[275];
  v4.n128_u64[0] = v6;
  v4.n128_u64[1] = HIDWORD(v6);
  *a2 = v5;
  a2[1] = v4;
  v5.n128_u64[0] = v2[276];
  v4.n128_u64[0] = v5.n128_u32[0];
  v4.n128_u64[1] = v5.n128_u32[1];
  result = v4;
  v8 = v2[277];
  v4.n128_u64[0] = v8;
  v4.n128_u64[1] = HIDWORD(v8);
  a2[2] = result;
  a2[3] = v4;
  return result;
}

uint64_t sub_1E5456E18(uint64_t result, int a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 373, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  *(*(v3 + 832) + 3908) = a2;
  return result;
}

uint64_t sub_1E5456E9C(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *a2;
  *(a3 + 8) = 2;
  *(a3 + 12) = v3;
  if (v3 == 1)
  {
    v6 = 0x20000;
    v4 = 0x80000;
    v5 = 0x200000;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = 98304;
    v5 = 0x400000;
    v6 = 98304;
LABEL_5:
    *a3 = *(result + 864) + v5;
    *(a3 + 16) = 0;
    *(a3 + 20) = v4;
    *(a3 + 24) = 0x100000;
    *(a3 + 28) = v6;
    return result;
  }

  *a3 = -1;
  *(a3 + 16) = -1;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  return result;
}

double sub_1E5456F18(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 423, "(operation_buffer_base_addr_) && HwPlatformInterface::InitLaccOperation() called with NULL argument.", 102, &unk_1E549A011, 0, sub_1E548FDE0);
    abort();
  }

  *a2 = xmmword_1E54927A0;
  *&result = 0x198000000000;
  *(a2 + 16) = 0x198000000000;
  return result;
}

double sub_1E5456F80(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 4);
  if (qword_1EE30C490 != 1)
  {
    sub_1E548F388();
    v6 = sub_1E548ED74();
    qword_1EE30C488 = v6;
    LOBYTE(qword_1EE30C490) = v7;
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v6 == 33104)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = qword_1EE30C488;
  if (qword_1EE30C490)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 154, "isPlatformMatched && Configuration not supported.", 51, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_45;
  }

LABEL_7:
  v8 = *a3;
  if (v8 >= 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 168, "(config.laccMode < 4) && LaccMode has to be set to a value between 0 and 3 inclusive.", 87, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_45;
    }

    LOBYTE(v8) = *a3;
  }

  v9 = a2 + v5;
  *(v9 + 20) = *(v9 + 20) & 0xFFFFFFFC | v8 & 3;
  *(v9 + 80) &= ~1u;
  *(v9 + 144) |= 1uLL;
  *(v9 + 3856) |= 1u;
  if (a3[2] >= 3u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) || a3[6] >= 3u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) || a3[3] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[7] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[4] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[8] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[5] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[9] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
LABEL_45:
    abort();
  }

  if (a3[2])
  {
    *(v9 + 20) = *(v9 + 20) & 0xFFFFFFF3 | (4 * (a3[2] & 3));
    *(v9 + 6392) = *(a3 + 162);
    *(v9 + 6400) = *(a3 + 326);
  }

  if (a3[3])
  {
    *(v9 + 20) = *(v9 + 20) & 0xFFFFFFCF | (16 * (a3[3] & 3));
    *(v9 + 6404) = *(a3 + 327);
    *(v9 + 6408) = *(a3 + 164);
  }

  if (a3[4])
  {
    *(v9 + 20) = *(v9 + 20) & 0xFFFFFF3F | ((a3[4] & 3) << 6);
    *(v9 + 6416) = *(a3 + 165);
    *(v9 + 6424) = *(a3 + 332);
  }

  if (a3[5])
  {
    *(v9 + 20) = *(v9 + 20) & 0xFFFFFCFF | ((a3[5] & 3) << 8);
    *(v9 + 6428) = *(a3 + 333);
    *(v9 + 6432) = *(a3 + 167);
  }

  if (a3[6])
  {
    *(v9 + 20) = *(v9 + 20) & 0xFFFFF3FF | ((a3[6] & 3) << 10);
    *(v9 + 6440) = *(a3 + 168);
    *(v9 + 6448) = *(a3 + 338);
  }

  if (a3[7])
  {
    *(v9 + 20) = *(v9 + 20) & 0xFFFFCFFF | ((a3[7] & 3) << 12);
    *(v9 + 6452) = *(a3 + 339);
    *(v9 + 6456) = *(a3 + 170);
  }

  if (a3[8])
  {
    *(v9 + 20) = *(v9 + 20) & 0xFFFF3FFF | ((a3[8] & 3) << 14);
    *(v9 + 6464) = *(a3 + 171);
    *(v9 + 6472) = *(a3 + 344);
  }

  if (a3[9])
  {
    *(v9 + 20) = *(v9 + 20) & 0xFFFCFFFF | ((a3[9] & 3) << 16);
    *(v9 + 6476) = *(a3 + 345);
    *(v9 + 6480) = *(a3 + 173);
  }

  v10 = 0;
  v11 = 4048;
  do
  {
    *(v9 + v10 + 5072) = *&a3[v10 + 12];
    v12 = (v9 + v11);
    *v12 = *&a3[v11 - 3904];
    v12[1] = *&a3[v11 - 3900];
    v12[2] = *&a3[v11 - 3896];
    v12[3] = *&a3[v11 - 3892];
    v12[4] = *&a3[v11 - 3888];
    v12[5] = *&a3[v11 - 3884];
    v12[6] = *&a3[v11 - 3880];
    v12[7] = *&a3[v11 - 3876];
    v10 += 4;
    v11 += 32;
  }

  while (v10 != 128);
  *(v9 + 5216) = *(a3 + 292);
  *(v9 + 5356) = *(a3 + 293);
  *(v9 + 5360) = *(a3 + 294);
  *(v9 + 5364) = *(a3 + 295);
  *(v9 + 5220) = a3[1184];
  result = *(a3 + 1188);
  *(v9 + 5224) = result;
  *(v9 + 5232) = a3[1196];
  *(v9 + 5236) = *(a3 + 300);
  *(v9 + 5252) = a3[1216];
  *(v9 + 5268) = *(a3 + 306);
  *(v9 + 5284) = *(a3 + 310);
  *(v9 + 5300) = a3[1256];
  *(v9 + 5316) = *(a3 + 316);
  *(v9 + 5240) = *(a3 + 301);
  *(v9 + 5256) = a3[1217];
  *(v9 + 5272) = *(a3 + 307);
  *(v9 + 5288) = *(a3 + 311);
  *(v9 + 5304) = a3[1257];
  *(v9 + 5320) = *(a3 + 317);
  *(v9 + 5244) = *(a3 + 302);
  *(v9 + 5260) = a3[1218];
  *(v9 + 5276) = *(a3 + 308);
  *(v9 + 5292) = *(a3 + 312);
  *(v9 + 5308) = a3[1258];
  *(v9 + 5324) = *(a3 + 318);
  *(v9 + 5248) = *(a3 + 303);
  *(v9 + 5264) = a3[1219];
  *(v9 + 5280) = *(a3 + 309);
  *(v9 + 5296) = *(a3 + 313);
  *(v9 + 5312) = a3[1259];
  v14 = *(a3 + 323);
  *(v9 + 5332) = *(a3 + 320);
  *(v9 + 5336) = a3[1284];
  *(v9 + 5340) = a3[1286];
  *(v9 + 5344) = a3[1287];
  *(v9 + 5348) = a3[1288];
  *(v9 + 5352) = v14;
  return result;
}

double sub_1E54575D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 441, "(action_buffer_base_addr_) && HwCrete::InitLaccAction() called with NULL argument.", 84, &unk_1E549A011, 0, sub_1E548FDE0);
    abort();
  }

  *a2 = xmmword_1E5491D80;
  *(a2 + 16) = 0;
  *&result = 0x100000012;
  *(a2 + 152) = 0x100000012;
  *(a2 + 160) |= 0x7FFFFFFFu;
  *(a2 + 244) |= 0x7FFFFFFFu;
  *(a2 + 328) |= 0x7FFFFFFFu;
  *(a2 + 412) |= 0x7FFFFFFFu;
  *(a2 + 496) |= 0x7FFFFFFFu;
  *(a2 + 580) |= 0x7FFFFFFFu;
  *(a2 + 664) |= 0x7FFFFFFFu;
  *(a2 + 748) |= 0x7FFFFFFFu;
  *(a2 + 832) |= 0x7FFFFFFFu;
  *(a2 + 916) |= 0x7FFFFFFFu;
  *(a2 + 1000) |= 0x7FFFFFFFu;
  *(a2 + 1084) |= 0x7FFFFFFFu;
  *(a2 + 1168) |= 0x7FFFFFFFu;
  *(a2 + 1252) |= 0x7FFFFFFFu;
  *(a2 + 1336) |= 0x7FFFFFFFu;
  *(a2 + 1420) |= 0x7FFFFFFFu;
  *(a2 + 1504) |= 0x7FFFFFFFu;
  *(a2 + 1588) |= 0x7FFFFFFFu;
  return result;
}

void sub_1E545771C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2 + *(a2 + 4);
  if (*(v6 + 144) <= *(a3 + 2) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*a3 == 1)
  {
    v7 = v6 + 84 * *(a3 + 2);
    *(v7 + 152) = *(v7 + 152) & 0x80000000 | a4 & 0x7FFFFFFF;
    *(v7 + 166) = *(a3 + 4);
    v8 = *(a3 + 24);
    *(v7 + 164) = *(a3 + 20);
    *(v7 + 162) = v8;
    v9 = *(a3 + 32);
    *(v7 + 160) = *(a3 + 28);
    *(v7 + 156) = v9;
  }
}

uint64_t sub_1E54577E4(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v4 = a2[201];
  v9[4] = a2[200];
  v9[5] = v4;
  v5 = a2[203];
  v9[6] = a2[202];
  v9[7] = v5;
  v6 = a2[197];
  v9[0] = a2[196];
  v9[1] = v6;
  v7 = a2[199];
  v9[2] = a2[198];
  v9[3] = v7;
  if (a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 199, "(reg < grf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(v9 + a3);
}

void *sub_1E545788C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  memcpy(v9, (a2 + 2112), sizeof(v9));
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 208, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 209, "(reg < vrf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 < 9 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 211, "(n <= 8) && number of vector lanes cannot exceed 8", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      return memcpy(a4, &v9[2 * a3], 4 * a5);
    }

LABEL_10:
    abort();
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 210, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

void *sub_1E5457A08(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  memcpy(v9, (a2 + 2112), sizeof(v9));
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 220, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 221, "(reg < vrf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 < 5 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 223, "(n <= 4) && number of vector lanes cannot exceed 4", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      return memcpy(a4, &v9[2 * a3], 8 * a5);
    }

LABEL_10:
    abort();
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 222, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1E5457B84(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 229, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *a5 = 0;
  if (a3 <= 0x7F)
  {
    v9 = *(a2 + (a3 & 0xFFFFFFFFFFFFFFFCLL) + 3136);
LABEL_8:
    *a4 = v9;
    *a5 = 4;
    return 1;
  }

  if (a3 == 2004)
  {
    *a5 = 4;
    v10 = a2[834];
LABEL_12:
    *a4 = v10;
    return 1;
  }

  if (a3 == 2000)
  {
    v9 = a2[835];
    goto LABEL_8;
  }

  if (a3 - 2008 <= 0xB)
  {
    *a5 = 4;
    v10 = *(a2 + (a3 & 0x7FC) + 1336);
    goto LABEL_12;
  }

  if (a3 - 6000 <= 0x3FF)
  {
    *a5 = 32;
    v12 = (a2 + ((a3 - 6000) & 0xFFFFFFFFFFFFFFE0) + ((8 * a3 - 13952) & 0xFFE0));
    v13 = v12[1];
    *a4 = *v12;
    *(a4 + 16) = v13;
    return 1;
  }

  result = 0;
  switch(__ROR8__(a3 - 10000, 2))
  {
    case 0:
      *a5 = 4;
      v10 = a2[848];
      goto LABEL_12;
    case 1:
      *a5 = 4;
      v10 = a2[850];
      goto LABEL_12;
    case 2:
      *a5 = 4;
      v10 = a2[854];
      goto LABEL_12;
    case 5:
      *a5 = 4;
      v10 = a2[857];
      goto LABEL_12;
    case 7:
      *a5 = 4;
      v10 = a2[856];
      goto LABEL_12;
    case 0xDLL:
      *a5 = 4;
      v10 = a2[846];
      goto LABEL_12;
    case 0xELL:
      *a5 = 4;
      v10 = a2[847];
      goto LABEL_12;
    case 0xFLL:
      *a5 = 4;
      v10 = a2[849];
      goto LABEL_12;
    case 0x10:
      *a5 = 4;
      v10 = a2[851];
      goto LABEL_12;
    case 0x11:
      *a5 = 4;
      v10 = a2[852];
      goto LABEL_12;
    case 0x12:
      *a5 = 4;
      v10 = a2[853];
      goto LABEL_12;
    case 0x13:
      *a5 = 4;
      v10 = a2[855];
      goto LABEL_12;
    case 0x14:
      *a5 = 4;
      v10 = a2[858];
      goto LABEL_12;
    case 0x15:
      *a5 = 4;
      v10 = a2[859];
      goto LABEL_12;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E5457DC8(uint64_t a1, uint64_t a2)
{
  sub_1E5414D60(v34, 16);
  v3 = a2 + 3136;
  v4 = a2 + 2140;
  v5 = -32;
  do
  {
    v6 = v34 + *(v34[0] - 24);
    if (*(v6 + 36) == -1)
    {
      std::ios_base::getloc((v34 + *(v34[0] - 24)));
      v7 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
      (v7->__vftable[2].~facet_0)(v7, 32);
      std::locale::~locale(&v41);
    }

    *(v6 + 36) = 48;
    v8 = sub_1E53DF59C(&v35, "GRF ", 4);
    v9 = MEMORY[0x1E6928450](v8, v5 + 32);
    v10 = sub_1E53DF59C(v9, " = 0x", 5);
    v11 = *v10;
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v10 + *(v11 - 24) + 24) = 8;
    v12 = MEMORY[0x1E6928460]();
    v13 = sub_1E53DF59C(v12, "\t\t", 2);
    *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
    v14 = MEMORY[0x1E6928450]();
    sub_1E53DF59C(v14, " = (", 4);
    v15 = sub_1E53DF59C(&v35, "0x", 2);
    v16 = *v15;
    *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v15 + *(v16 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v17 = sub_1E53DF59C(&v35, "0x", 2);
    v18 = *v17;
    *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v17 + *(v18 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v19 = sub_1E53DF59C(&v35, "0x", 2);
    v20 = *v19;
    *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v19 + *(v20 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v21 = sub_1E53DF59C(&v35, "0x", 2);
    v22 = *v21;
    *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v21 + *(v22 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v23 = sub_1E53DF59C(&v35, "0x", 2);
    v24 = *v23;
    *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v23 + *(v24 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v25 = sub_1E53DF59C(&v35, "0x", 2);
    v26 = *v25;
    *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v25 + *(v26 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v27 = sub_1E53DF59C(&v35, "0x", 2);
    v28 = *v27;
    *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v27 + *(v28 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v29 = sub_1E53DF59C(&v35, "0x", 2);
    v30 = *v29;
    *(v29 + *(*v29 - 24) + 8) = *(v29 + *(*v29 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v29 + *(v30 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ")", 1);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    v39 = 0;
    sub_1E53E768C(&v36);
    v3 += 4;
    v4 += 32;
  }

  while (!__CFADD__(v5++, 1));
  v34[0] = *MEMORY[0x1E69E54D8];
  v32 = *(MEMORY[0x1E69E54D8] + 72);
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v35 = v32;
  v36 = MEMORY[0x1E69E5548] + 16;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  v36 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v37);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E69285E0](&v40);
}

void sub_1E545854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale((v26 - 96));
  sub_1E5415094(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69285E0](&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1E5458594(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = (*(a3 + 2192) >> 2) & 3;
  if (v6 > 1)
  {
    if (v6 == 3)
    {
      v11 = 76;
    }

    else
    {
      v11 = 44;
    }
  }

  else
  {
    if (!v6)
    {
      v8 = a2;
      v9 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwThera-V53.cpp", 475, "false && dmaDescSize not supported", 36, &unk_1E549A011, 0, sub_1E548FDE0);
      a2 = v8;
      if (v9)
      {
        abort();
      }

      *(a4 + 4) = *(a1 + 16);
      v10 = *(v5 + 148) & 0x1F;
      if (v10 == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v11 = 28;
  }

  *(a4 + 8) = v11;
  *(a4 + 4) = *(a1 + 16);
  v10 = *(a3 + 148) & 0x1F;
  if (v10 == 1)
  {
LABEL_14:
    result = 0;
    *a4 = 0xFFFF;
    return result;
  }

LABEL_11:
  if (v10 <= *a4)
  {
    goto LABEL_14;
  }

  if ((*(v5 + 1576) & 1) == 0)
  {
    return 0;
  }

  v13 = *(a4 + 32);
  v14 = a2[228];
  *(a4 + 12) = a2[207];
  *(a4 + 16) = v14;
  *(a4 + 20) = a2[396];
  v15 = HIDWORD(*(v5 + 144)) & 0x1FLL;
  *(a4 + 24) = v15;
  v16 = (*(a4 + 40) - v13) >> 2;
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(a4 + 40) = v13 + 4 * v15;
    }
  }

  else
  {
    sub_1E54151E4(a4 + 32, v15 - v16);
  }

  v17 = *(a4 + 56);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 64) - v17) >> 3);
  if (v15 <= v18)
  {
    if (v15 < v18)
    {
      *(a4 + 64) = v17 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 56, v15 - v18);
  }

  v19 = *(a4 + 80);
  v20 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 88) - v19) >> 3);
  if (v15 <= v20)
  {
    if (v15 < v20)
    {
      *(a4 + 88) = v19 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 80, v15 - v20);
  }

  v21 = *(a4 + 104);
  v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 112) - v21) >> 3);
  if (v15 <= v22)
  {
    if (v15 < v22)
    {
      *(a4 + 112) = v21 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 104, v15 - v22);
  }

  v23 = *(a4 + 128);
  v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 136) - v23) >> 3);
  if (v15 <= v24)
  {
    if (v15 < v24)
    {
      *(a4 + 136) = v23 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 128, v15 - v24);
  }

  v25 = *(a4 + 152);
  v26 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 160) - v25) >> 3);
  if (v15 <= v26)
  {
    if (v15 < v26)
    {
      *(a4 + 160) = v25 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 152, v15 - v26);
  }

  v27 = *(a4 + 176);
  v28 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 184) - v27) >> 3);
  if (v15 <= v28)
  {
    if (v15 < v28)
    {
      *(a4 + 184) = v27 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 176, v15 - v28);
  }

  v29 = *(a4 + 200);
  v30 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 208) - v29) >> 3);
  if (v15 <= v30)
  {
    if (v15 < v30)
    {
      *(a4 + 208) = v29 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 200, v15 - v30);
  }

  if (v15)
  {
    v31 = 0;
    v32 = v5 + 2008;
    v33 = *(a4 + 32);
    v34 = *(a4 + 56);
    v35 = *(a4 + 80);
    v36 = *(a4 + 104);
    v37 = *(a4 + 128);
    v38 = *(a4 + 152);
    v39 = *(a4 + 176);
    v40 = *(a4 + 200);
    do
    {
      *(v33 + 4 * v31) = *(v32 + 4 * v31) & 0x1FFF;
      if (*(a4 + 4))
      {
        v41 = 0;
        v42 = 936;
        do
        {
          v43 = 4 * v41;
          v44 = v5 + 4 * v41;
          *(v34 + v43) = *(v44 + 616) & 0x7FF;
          *(v35 + v43) = *(v44 + 618) & 0x1FFF;
          *(v36 + v43) = *(v5 + v42) & 0x3FF;
          *(v37 + v43) = *(v5 + v42 + 2) & 0x1FFF;
          *(v38 + v43) = *(v5 + v42 + 320) & 0x3FF;
          *(v39 + v43) = *(v5 + v42 + 664) & 0x7FF;
          *(v40 + v43) = *(v5 + v42 + 666) & 0xFFF;
          ++v41;
          v42 += 4;
        }

        while (v41 < *(a4 + 4));
      }

      ++v31;
      v40 += 24;
      v39 += 24;
      v5 += 20;
      v38 += 24;
      v34 += 24;
      v37 += 24;
      v36 += 24;
      v35 += 24;
    }

    while (v31 != v15);
  }

  return 1;
}

void sub_1E54589D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = *(a4 + 12) + v6 * *(a4 + 232);
  v8 = *(a4 + 16) + *(a4 + 236) * v6;
  v9 = (v7 + 63) & 0xFFFFFFC0;
  *(a2 + 828) = v9;
  v10 = (v8 + 63) & 0xFFFFFFC0;
  *(a2 + 912) = v10;
  *(a4 + 240) = v7;
  *(a4 + 244) = v9;
  *(a4 + 248) = v8;
  *(a4 + 252) = v10;
  v12 = *(a4 + 224);
  v11 = *(a4 + 228);
  v13 = (v11 - v12);
  if (v11 == v12 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 155, "num_stripes > 0 && Invalid number of stripes", 46, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *(a3 + 144) = *(a3 + 144) & 0xFFFFFFE0FFFFFFFFLL | ((v13 & 0x1F) << 32);
  *(a3 + 2516) = v13;
  v14 = *(a4 + 224);
  if (v14 < *(a4 + 228))
  {
    v15 = 24 * v14;
    do
    {
      v16 = v14 - *(a4 + 224);
      *(a3 + 2008 + 4 * v16) = *(a3 + 2008 + 4 * v16) & 0xFFFFE000 | *(*(a4 + 32) + 4 * v14) & 0x1FFF;
      *(a3 + 2524 + 4 * v16) = *(*(a4 + 32) + 4 * v14);
      if (*(a4 + 4))
      {
        v17 = 0;
        v18 = a3 + 20 * v16;
        v19 = 936;
        do
        {
          v20 = v18 + 4 * v17;
          v21 = *(v20 + 616) & 0xFFFFF800 | *(*(a4 + 56) + v15 + 4 * v17) & 0x7FF;
          *(v20 + 616) = v21;
          *(v20 + 616) = v21 & 0xE000FFFF | ((*(*(a4 + 80) + v15 + 4 * v17) & 0x1FFF) << 16);
          v22 = (v18 + v19);
          v23 = *(v18 + v19) & 0xFFFFFC00 | *(*(a4 + 104) + v15 + 4 * v17) & 0x3FF;
          *v22 = v23;
          *v22 = v23 & 0xE000FFFF | ((*(*(a4 + 128) + v15 + 4 * v17) & 0x1FFF) << 16);
          v22[80] = *(v18 + v19 + 320) & 0xFFFFFC00 | *(*(a4 + 152) + v15 + 4 * v17) & 0x3FF;
          v24 = *(v18 + v19 + 664) & 0xFFFFF800 | *(*(a4 + 176) + v15 + 4 * v17) & 0x7FF;
          v22[166] = v24;
          v22[166] = v24 & 0xF000FFFF | ((*(*(a4 + 200) + v15 + 4 * v17++) & 0xFFF) << 16);
          v19 += 4;
        }

        while (v17 < *(a4 + 4));
      }

      ++v14;
      v15 += 24;
    }

    while (v14 < *(a4 + 228));
  }

  if (v13 < *(a4 + 24))
  {
    v25 = (a3 + 20 * v13);
    do
    {
      *(a3 + 2008 + 4 * v13) &= 0xFFFFE000;
      *(a3 + 2524 + 4 * v13) = 0;
      if (*(a4 + 4))
      {
        v26 = v25;
        v27 = 400;
        do
        {
          v26[154] &= 0xE000F800;
          v26[234] &= 0xE000FC00;
          v26[314] &= 0xFFFFFC00;
          v26[400] = v26[400] & 0xF000F800 | 0x50005;
          v28 = v27 - 399;
          ++v27;
          ++v26;
        }

        while (v28 < *(a4 + 4));
      }

      ++v13;
      v25 += 5;
    }

    while (v13 < *(a4 + 24));
  }
}

void *sub_1E5458C8C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  v5 = a2 + a3[2].u32[1];
  v6 = *(v5 + 100);
  a3[29] = vadd_s32(a3[29], v6);
  v7 = a3[30].u32[0];
  v8 = a3[30].u32[1];
  if (v7 == v8)
  {
    v9 = a3[31].u32[0];
    v10 = a3[31].u32[1];
    if (v9 == v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = v6.i32[1];
    result = memcpy((a2 + v7), (a2 + v8), (a3[1].i32[0] * v6.i32[0]));
    v6.i32[1] = v12;
    v9 = a3[31].u32[0];
    v10 = a3[31].u32[1];
    if (v9 == v10)
    {
LABEL_3:
      if (a3[32].i8[0] != 1)
      {
        return result;
      }

LABEL_7:
      *(v5 + 100) = a3[29].i32[0];
      *(v5 + 104) = a3[29].i32[1];
      return result;
    }
  }

  result = memcpy((a2 + v9), (a2 + v10), (a3[1].i32[0] * v6.i32[1]));
  if (a3[32].i8[0] == 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1E5458D70(uint64_t a1)
{
  *a1 = &unk_1F5F0ADA0;
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    MEMORY[0x1E6928640]();
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_1E5458E34(uint64_t a1)
{
  *a1 = &unk_1F5F0ADA0;
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    MEMORY[0x1E6928640]();
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E5458F24(__CVBuffer *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (!BaseAddress)
  {
    return 1;
  }

  v5 = BaseAddress;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  v8 = v5[2];
  if (v8 < 2)
  {
    return 5;
  }

  v10 = Height;
  memcpy(__dst, v5 + 8, 8 * v8);
  v11 = v36;
  result = 5;
  if (v36)
  {
    v12 = v10 * BytesPerRow;
    if (v10 * BytesPerRow >= v36)
    {
      v13 = v35;
      if (v35)
      {
        if (v12 >= v35 && v36 + 576 <= v12)
        {
          v14 = (v5 + v36);
          v15 = *v14;
          v16 = v14[1];
          v17 = *(v14 + 1);
          v18 = *(v14 + 2);
          v19 = *(v14 + 3);
          v20 = v14[8];
          v21 = *(v14 + 5);
          v22 = *(v14 + 6);
          v23 = *(v14 + 20);
          if (v14[1])
          {
            if (v16 != 1)
            {
              return 6;
            }

            v24 = *(v14 + 84);
            if (!*(v14 + 84))
            {
              return 6;
            }

            v25 = *(v14 + 85);
            v16 = *(v14 + 86);
            v26 = *(v14 + 87);
            v28 = *(v14 + 22);
            v27 = *(v14 + 23);
            v29 = *(v14 + 24);
            v30 = *(v14 + 58);
            if (v24 != 1)
            {
              if (v24 == 2)
              {
                if (v21 < 0xA0)
                {
                  return 6;
                }

                if (*(v14 + 124))
                {
                  v31 = 4097;
                }

                else
                {
                  v31 = 641;
                }

                result = 6;
                if (v21 < v31 && (v22 - 8193) >= 0xFFFFE09F)
                {
                  v24 = 2;
                  *(a2 + 32) = v21;
                  *(a2 + 36) = v22;
                  *a2 = v20;
                  if ((v20 - 7) >= 0xFFFFFFFA)
                  {
LABEL_31:
                    *(a2 + 8) = v28;
                    *(a2 + 12) = v23;
                    *(a2 + 4) = v17;
                    *(a2 + 18) = v16 != 0;
                    *(a2 + 16) = v25 != 0;
                    *(a2 + 17) = v24;
                    *(a2 + 19) = v26 != 0;
                    *(a2 + 24) = v30;
                    if (v17 > v15)
                    {
                      return 6;
                    }

                    if (v24 == 1)
                    {
                      v13 = v11;
                    }

                    if (v17)
                    {
                      if (v13 + v18 + 24 * v17 > v12)
                      {
                        return 5;
                      }

                      v32 = v5 + v13;
                      *(a2 + 136) = &v32[v18];
                      if ((v13 + v19) + (v17 << 6) > v12)
                      {
                        return 5;
                      }

                      *(a2 + 144) = &v32[v19];
                    }

                    else
                    {
                      *(a2 + 136) = 0;
                      *(a2 + 144) = 0;
                    }

                    if (v16 && v28)
                    {
                      if (v11 + 8 * v28 + v27 > v12)
                      {
                        return 5;
                      }

                      *(a2 + 152) = v14 + v27;
                      if (!v17)
                      {
                        v33 = 0;
LABEL_49:
                        result = 0;
                        *(a2 + 160) = v33;
                        return result;
                      }
                    }

                    else
                    {
                      v33 = 0;
                      *(a2 + 152) = 0;
                      if (!v17 || !v16)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (v11 + 4 * v17 + v29 > v12)
                    {
                      return 5;
                    }

                    v33 = v14 + v29;
                    goto LABEL_49;
                  }

                  return 6;
                }

                return result;
              }

LABEL_30:
              *(a2 + 32) = v21;
              *(a2 + 36) = v22;
              *a2 = v20;
              if ((v20 - 7) >= 0xFFFFFFFA)
              {
                goto LABEL_31;
              }

              return 6;
            }
          }

          else
          {
            v25 = 1;
            v26 = *(v5 + v36 + 2);
            v28 = v26;
            v27 = v26;
            v30 = *(v5 + v36 + 2);
            v29 = v26;
          }

          result = 6;
          if (v21 - 1281 < 0xFFFFFB1B || (v22 - 1025) < 0xFFFFFC1B)
          {
            return result;
          }

          v24 = 1;
          goto LABEL_30;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E545920C(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    *a3 = 0;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    result = CVPixelBufferGetBaseAddress(result);
    if (result)
    {
      v6 = result;
      BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
      Height = CVPixelBufferGetHeight(v5);
      if (v6[2] < 2u)
      {
        return 0;
      }

      v9 = Height;
      result = 0;
      v10 = v6[12];
      if (v10)
      {
        v11 = v9 * BytesPerRow;
        if (v11 >= v10)
        {
          result = 0;
          v12 = v6[10];
          if (v12)
          {
            if (v11 >= v12)
            {
              v13 = v6 + v10;
              v37 = 0u;
              *&v35[12] = 0u;
              *vars0 = 0u;
              v14 = *(v6 + v10);
              v32[0] = *(v6 + v10);
              v15 = *(v6 + v10 + 4);
              v16 = *(v6 + v10 + 8);
              v32[1] = *(v6 + v10 + 4);
              v32[2] = v16;
              v17 = *(v6 + v10 + 12);
              v18 = *(v6 + v10 + 16);
              v32[3] = *(v6 + v10 + 12);
              v32[4] = v18;
              v19 = *(v6 + v10 + 20);
              v20 = *(v6 + v10 + 24);
              v32[5] = v19;
              v32[6] = v20;
              v21 = *(v6 + v10 + 28);
              v34 = *(v6 + v10 + 44);
              v33 = v21;
              *&v35[16] = *(v6 + v10 + 68);
              *v35 = *(v6 + v10 + 52);
              v22 = *(v6 + v10 + 80);
              *&v35[24] = *(v6 + v10 + 76);
              *vars0 = v22;
              if (HIWORD(v32[0]) != 1)
              {
                if (HIWORD(v32[0]))
                {
                  return 0;
                }

                *&vars0[4] = 257;
                goto LABEL_13;
              }

              *&vars0[4] = *(v13 + 84);
              v37 = *(v13 + 7);
              v23 = vars0[4];
              if (!vars0[4])
              {
                return 0;
              }

              if (vars0[4] == 1)
              {
LABEL_13:
                result = 0;
                if (v19 - 1281 < 0xFFFFFB1B || (v20 - 1025) < 0xFFFFFC1B)
                {
                  return result;
                }

                v23 = 1;
LABEL_26:
                *(a3 + 32) = v19;
                *(a3 + 36) = v20;
                *a3 = v18;
                if (v18 - 7 < 0xFFFFFFFA)
                {
                  return 0;
                }

                v25 = *&vars0[8];
                *(a3 + 4) = v15;
                *(a3 + 8) = v25;
                *(a3 + 12) = v22;
                v26 = vars0[6];
                *(a3 + 18) = vars0[6] != 0;
                *(a3 + 16) = vars0[5] != 0;
                *(a3 + 17) = v23;
                *(a3 + 19) = vars0[7] != 0;
                *(a3 + 24) = *(&v37 + 4);
                if (v15 > v14)
                {
                  return 0;
                }

                if (v23 == 1)
                {
                  v27 = v10;
                }

                else
                {
                  v27 = v12;
                }

                if (a2[2] == 1)
                {
                  if (!v15)
                  {
                    *(a3 + 136) = 0;
                    if (a2[3])
                    {
                      goto LABEL_40;
                    }

                    goto LABEL_42;
                  }

                  if (v27 + v16 + 24 * v15 > v11)
                  {
                    return 0;
                  }

                  *(a3 + 136) = v6 + v27 + v16;
                }

                if (a2[3])
                {
                  if (v15)
                  {
                    if ((v27 + v17) + (v15 << 6) > v11)
                    {
                      return 0;
                    }

                    v28 = v6 + v27 + v17;
                    goto LABEL_41;
                  }

LABEL_40:
                  v28 = 0;
LABEL_41:
                  *(a3 + 144) = v28;
                }

LABEL_42:
                if (*a2 != 1 || (result = sub_1E54595CC(v5, v12, v32, a3), result))
                {
                  if (a2[4] == 1)
                  {
                    v29 = 0;
                    if (v26 && *(a3 + 8))
                    {
                      if (v10 + 8 * v25 + *&vars0[12] > v11)
                      {
                        return 0;
                      }

                      v29 = &v13[*&vars0[12]];
                    }

                    *(a3 + 152) = v29;
                  }

                  if (a2[5] == 1)
                  {
                    if (v26 && (v30 = *(a3 + 4), v30))
                    {
                      if (v10 + 4 * v30 > v11)
                      {
                        return 0;
                      }

                      v31 = v6 + v10;
                    }

                    else
                    {
                      v31 = 0;
                    }

                    *(a3 + 160) = v31;
                  }

                  return 1;
                }

                return result;
              }

              if (vars0[4] != 2)
              {
                goto LABEL_26;
              }

              if (v19 < 0xA0)
              {
                return 0;
              }

              result = 0;
              if (BYTE12(v37))
              {
                v24 = 4097;
              }

              else
              {
                v24 = 641;
              }

              if (v19 < v24 && (v20 - 8193) >= 0xFFFFE09F)
              {
                v23 = 2;
                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E54595CC(__CVBuffer *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  result = CVPixelBufferGetBaseAddress(a1);
  if (result)
  {
    v9 = result;
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    Height = CVPixelBufferGetHeight(a1);
    v12 = *(a3 + 84);
    if (*(a3 + 84))
    {
      v25 = *(a4 + 9);
      v26 = *(a4 + 8);
      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v13 = *(a3 + 20);
          if (v13 < 0xA0)
          {
            return 0;
          }

          v14 = *(a3 + 124) ? 4097 : 641;
          if (v13 >= v14 || (*(a3 + 24) - 8193) < 0xFFFFE09F)
          {
            return 0;
          }
        }

LABEL_14:
        if (!*a4)
        {
          return 1;
        }

        v15 = 0;
        v16 = (a3 + 52);
        v27 = v9 + a2;
        v28 = Height * BytesPerRow;
        for (i = (a4 + 24); ; i += 2)
        {
          v18 = v26 >> v15;
          v19 = v25 >> v15;
          v20 = *(v16 - 6);
          v21 = ((v18 + 63) & 0xFFFFFFC0) * v19 + a2;
          if (v21 + v20 > v28)
          {
            break;
          }

          if (v21 + *v16 > v28)
          {
            break;
          }

          if (CVPixelBufferCreateWithBytes(0, v26 >> v15, v25 >> v15, 0x4C303038u, (v27 + v20), (v18 + 63) & 0xFFFFFFC0, j__CVPixelBufferRelease, a1, 0, i - 1))
          {
            break;
          }

          if (!*(i - 1))
          {
            break;
          }

          CVPixelBufferRetain(a1);
          if (CVPixelBufferCreateWithBytes(0, v18, v19, 0x4C303038u, (v27 + *v16), (v18 + 63) & 0xFFFFFFC0, j__CVPixelBufferRelease, a1, 0, i))
          {
            if (!*i)
            {
              break;
            }
          }

          ++v16;
          CVPixelBufferRetain(a1);
          ++v15;
          result = 1;
          if (v15 >= *a4)
          {
            return result;
          }
        }

        if (*a4)
        {
          v22 = 0;
          v23 = (a4 + 24);
          do
          {
            CVPixelBufferRelease(*(v23 - 1));
            v24 = *v23;
            v23 += 2;
            CVPixelBufferRelease(v24);
            ++v22;
          }

          while (v22 < *a4);
        }

        return 0;
      }

      if ((*(a3 + 20) - 1281) >= 0xFFFFFB1B && (*(a3 + 24) - 1025) >= 0xFFFFFC1B)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}