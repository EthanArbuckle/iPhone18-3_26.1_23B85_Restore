uint64_t sub_240B23CB8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, void *a6)
{
  sub_240B22DA4(v46, a2);
  sub_240B22DA4(__p, 2 * a2);
  v12 = __clz(a2);
  v13 = (((-1 << (v12 ^ 0x1F)) + a2) >> (v12 ^ 0x1F)) - v12 + 32;
  if (!a2)
  {
    v13 = 0;
  }

  if (v13 >= 7)
  {
    v13 = 7;
  }

  v14 = sub_240B24020(a5, *(*a6 + v13), a4) + a1;
  if (v14 > a2)
  {
LABEL_6:
    a3 = 1;
    goto LABEL_39;
  }

  if (v14 > a1)
  {
    LODWORD(v15) = 0;
    v16 = a2 - a1;
    do
    {
      v17 = __clz(v15);
      v18 = (((-1 << (v17 ^ 0x1F)) + v15) >> (v17 ^ 0x1F)) - v17 + 32;
      if (!v15)
      {
        v18 = 0;
      }

      if (v18 >= 7)
      {
        v18 = 7;
      }

      v15 = sub_240B24020(a5, *(*a6 + v18), a4);
      *(v46[0] + a1) = v15;
      if (v16 <= v15)
      {
        goto LABEL_6;
      }

      ++a1;
      --v16;
    }

    while (v14 != a1);
  }

  if (a3)
  {
    v19 = v46[0];
    v20 = __p[0];
    v21 = __clz(a2) ^ 0x3F;
    if ((a2 & (a2 - 1)) != 0)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 1 << v22;
    v24 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v25 = vdupq_n_s64(v23 - 1);
    v26 = xmmword_240C111C0;
    v27 = xmmword_240C111D0;
    v28 = (__p[0] + 8);
    v29.i64[0] = 0x100000001;
    v29.i64[1] = 0x100000001;
    v30 = vdupq_n_s64(4uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v25, v27));
      v32 = vuzp1q_s32(v27, v26);
      v33 = vaddq_s32(v32, v29);
      if (vuzp1_s16(v31, *v25.i8).u8[0])
      {
        *(v28 - 2) = v33.i32[0] & ~v32.i32[0];
      }

      if (vuzp1_s16(v31, *&v25).i8[2])
      {
        *(v28 - 1) = v33.i32[1] & ~v32.i32[1];
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v26))).i32[1])
      {
        *v28 = v33.i64[1] & ~v32.i64[1];
      }

      v26 = vaddq_s64(v26, v30);
      v27 = vaddq_s64(v27, v30);
      v28 += 2;
      v24 -= 4;
    }

    while (v24);
    if (a2)
    {
      v34 = 0;
      v35 = v20 - 4;
      v36 = v21 + ((a2 & (a2 - 1)) != 0) + 1;
      do
      {
        v37 = 0;
        v38 = v19[v34] + 1;
        v39 = v36;
        v40 = v23;
        do
        {
          v41 = v37 + v40;
          v42 = *&v35[4 * v37 + 4 * v40];
          v40 >>= 1;
          if (v42 < v38)
          {
            v37 = v41;
          }

          else
          {
            v42 = 0;
          }

          v38 -= v42;
          --v39;
        }

        while (v39);
        *(a3 + 4 * v34) = v37;
        for (i = v37 + 1; i <= v23; i += i & -i)
        {
          --*&v35[4 * i];
        }

        ++v34;
      }

      while (v34 != a2);
    }

    a3 = 0;
  }

LABEL_39:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  return a3;
}

void sub_240B23FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B23FBC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 8);
  sub_240B23988(&v5);
  sub_240B22320(a1);
  return a1;
}

uint64_t sub_240B24020(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *(a1 + 68);
  if (v4)
  {
    v36 = *(a1 + 56);
    v40 = *(a1 + 72);
    *(a1 + 72) = v40 + 1;
    LODWORD(v18) = *(v36 + 4 * (*&v40 & 0xFFFFFLL));
    *(a1 + 68) = v4 - 1;
    goto LABEL_19;
  }

  v7 = a3[2];
  if (v7 > a3[3])
  {
    sub_240B244C4(a3);
  }

  else
  {
    v8 = a3[1];
    v9 = *a3 | (*v7 << v8);
    a3[2] = v7 + ((63 - v8) >> 3);
    *a3 = v9;
    a3[1] = v8 | 0x38;
  }

  v10 = *(a1 + 16);
  if (v10 == 1)
  {
    v18 = sub_240B435F8(*(*(a1 + 8) + 24 * a2), a3);
  }

  else
  {
    v11 = *(a1 + 20);
    v12 = (v11 & 0xFFF) >> *(a1 + 36);
    v13 = *(a1 + 40) & v11 & 0xFFFu;
    v14 = *(*a1 + 8 * (a2 << *(a1 + 32)) + 8 * v12);
    if (v14 <= v13)
    {
      v15 = *(*a1 + 8 * (a2 << *(a1 + 32)) + 8 * v12);
    }

    else
    {
      v15 = 0;
    }

    v16 = HIDWORD(v15);
    v17 = HIWORD(v15);
    if (v14 <= v13)
    {
      v18 = BYTE1(v14);
    }

    else
    {
      v18 = (v11 & 0xFFF) >> *(a1 + 36);
    }

    v19 = v13 + v16 + (v17 ^ WORD1(v14)) * (*(a1 + 20) >> 12);
    v20 = v19 < 0x10000;
    v21 = a3[1];
    v22 = *a3 >> (16 * v20);
    if (v19 < 0x10000)
    {
      v19 = *a3 | (v19 << 16);
    }

    *(a1 + 20) = v19;
    *a3 = v22;
    a3[1] = v21 - 16 * v20;
  }

  v23 = *(a1 + 84);
  v24 = v18 >= v23;
  v25 = v18 - v23;
  if (v24)
  {
    v41 = *(a1 + 92);
    v24 = v25 >= v41;
    v42 = v25 - v41;
    if (v24)
    {
      v44 = *(a1 + 96);
      v43 = *(a1 + 100);
      v45 = *(a1 + 88) - (v44 + v43) + (v42 >> (v44 + v43));
      v46 = *a3 & ~(-1 << v45);
      v47 = a3[1] - (v45 & 0x1F);
      *a3 >>= v45 & 0x1F;
      a3[1] = v47;
      LODWORD(v25) = v25 & ~(-1 << v43) | ((v46 | (((v25 >> v43) & ((1 << v44) - 1) | (1 << v44)) << v45)) << v43);
    }

    v48 = *(a1 + 80);
    v49 = v48 + v25;
    *(a1 + 68) = v48 + v25;
    v50 = a3[2];
    if (v50 > a3[3])
    {
      v83 = v48;
      sub_240B244C4(a3);
      v48 = v83;
    }

    else
    {
      v51 = a3[1];
      v52 = *a3 | (*v50 << v51);
      a3[2] = v50 + ((63 - v51) >> 3);
      *a3 = v52;
      a3[1] = v51 | 0x38;
    }

    v53 = *(a1 + 76);
    if (v10)
    {
      v84 = v48;
      v80 = *(a1 + 76);
      v81 = sub_240B435F8(*(*(a1 + 8) + 24 * v53), a3);
      v53 = v80;
      v48 = v84;
      v61 = v81;
    }

    else
    {
      v54 = *(a1 + 20);
      v55 = (v54 & 0xFFF) >> *(a1 + 36);
      v56 = *(a1 + 40) & v54 & 0xFFFu;
      v57 = *(*a1 + 8 * (v53 << *(a1 + 32)) + 8 * v55);
      if (v57 <= v56)
      {
        v58 = *(*a1 + 8 * (v53 << *(a1 + 32)) + 8 * v55);
      }

      else
      {
        v58 = 0;
      }

      v59 = HIDWORD(v58);
      v60 = HIWORD(v58);
      if (v57 <= v56)
      {
        v61 = BYTE1(v57);
      }

      else
      {
        v61 = (v54 & 0xFFF) >> *(a1 + 36);
      }

      v62 = v56 + v59 + (v60 ^ WORD1(v57)) * (*(a1 + 20) >> 12);
      v63 = v62 < 0x10000;
      v64 = a3[1];
      v65 = *a3 >> (16 * v63);
      if (v62 < 0x10000)
      {
        v62 = *a3 | (v62 << 16);
      }

      *(a1 + 20) = v62;
      *a3 = v65;
      a3[1] = v64 - 16 * v63;
    }

    v66 = (*(a1 + 24) + 16 * v53);
    v67 = v66[1];
    v24 = v61 >= v67;
    v68 = v61 - v67;
    if (v24)
    {
      v69 = *v66;
      v72 = v66 + 2;
      v70 = v66[2];
      v71 = v72[1];
      v73 = v69 - (v70 + v71) + (v68 >> (v70 + v71));
      v74 = *a3 & ~(-1 << v73);
      v75 = a3[1] - (v73 & 0x1F);
      *a3 >>= v73 & 0x1F;
      a3[1] = v75;
      LODWORD(v61) = v61 & ~(-1 << v71) | ((v74 | (((v61 >> v71) & ((1 << v70) - 1) | (1 << v70)) << v73)) << v71);
    }

    v76 = *(a1 + 584);
    if (v61 >= v76)
    {
      v77 = v61 - v76 + 1;
    }

    else
    {
      v77 = *(a1 + 4 * v61 + 104);
    }

    v37 = (a1 + 64);
    v78 = *(a1 + 64);
    if (v77 > v78)
    {
      v77 = *(a1 + 64);
    }

    if (v77 > 0x100000)
    {
      *(a1 + 72) = v78 - 0x100000;
    }

    else
    {
      *(a1 + 72) = v78 - v77;
      if (!v77)
      {
        if (v49 >= 0x100000)
        {
          v82 = 0x100000;
        }

        else
        {
          v82 = v49;
        }

        bzero(*(a1 + 56), (4 * v82));
        v49 = *(a1 + 68);
        v48 = *(a1 + 80);
      }
    }

    if (v49 < v48)
    {
      LODWORD(v18) = 0;
      return v18;
    }

    v36 = *(a1 + 56);
    v79 = *(a1 + 72);
    *(a1 + 72) = v79 + 1;
    LODWORD(v18) = *(v36 + 4 * (*&v79 & 0xFFFFFLL));
    *(a1 + 68) = v49 - 1;
    goto LABEL_20;
  }

  v26 = (*(a1 + 24) + 16 * a2);
  v27 = v26[1];
  v24 = v18 >= v27;
  v28 = v18 - v27;
  if (v24)
  {
    v29 = *v26;
    v32 = v26 + 2;
    v30 = v26[2];
    v31 = v32[1];
    v33 = v29 - (v30 + v31) + (v28 >> (v30 + v31));
    v34 = *a3 & ~(-1 << v33);
    v35 = a3[1] - (v33 & 0x1F);
    *a3 >>= v33 & 0x1F;
    a3[1] = v35;
    LODWORD(v18) = v18 & ~(-1 << v31) | ((v34 | (((v18 >> v31) & ((1 << v30) - 1) | (1 << v30)) << v33)) << v31);
  }

  v36 = *(a1 + 56);
  if (v36)
  {
LABEL_19:
    v37 = (a1 + 64);
LABEL_20:
    v38 = (*v37)++;
    *(v36 + 4 * (*&v38 & 0xFFFFFLL)) = v18;
  }

  return v18;
}

void *sub_240B244C4(void *result)
{
  v1 = result[1];
  if (v1 <= 0x37)
  {
    v2 = result[2];
    v3 = result[3] + 8;
    while (v2 < v3)
    {
      result[2] = v2 + 1;
      v4 = v1 + 8;
      *result |= *v2 << v1;
      result[1] = v1 + 8;
      ++v2;
      v5 = v1 >= 0x30;
      v1 += 8;
      if (v5)
      {
        goto LABEL_8;
      }
    }
  }

  v4 = v1;
LABEL_8:
  result[5] += (63 - v4) >> 3;
  result[1] = ((63 - v4) & 0xFFFFFFFFFFFFFFF8) + v4;
  return result;
}

void sub_240B2453C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    atomic_fetch_add(&qword_27E519020, -*(v2 - 24));
    free(*(v2 - 32));
  }
}

uint64_t *sub_240B24568(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_240B22320((v2 + 48));

    JUMPOUT(0x245CCE590);
  }

  return result;
}

void sub_240B245C8(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B228D4(v10);
      }

      sub_240B228BC();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

uint64_t sub_240B246DC(uint64_t a1, uint64_t a2)
{
  v6 = (2 * *(a1 + 8)) ^ (*(a1 + 8) >> 31);
  result = (*(*a2 + 32))(a2, 0x100001200000012, 0x400001402000013, 0, &v6);
  if (!result)
  {
    *(a1 + 8) = -(v6 & 1) ^ (v6 >> 1);
    v5 = (2 * *(a1 + 12)) ^ (*(a1 + 12) >> 31);
    result = (*(*a2 + 32))(a2, 0x100001200000012, 0x400001402000013, 0, &v5);
    if (!result)
    {
      *(a1 + 12) = -(v5 & 1) ^ (v5 >> 1);
    }
  }

  return result;
}

uint64_t sub_240B24808(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == 2)
  {
    *(a1 + 12) = 1;
    *(a1 + 16) = 0x20032DCD5;
  }

  if ((*(*a2 + 64))(a2, v4 != 2))
  {
    return 0;
  }

  result = (*(*a2 + 24))(a2, 0, a1 + 12);
  if (!result)
  {
    if (!(*(*a2 + 64))(a2, *(a1 + 12)))
    {
      result = (*(*a2 + 40))(a2, 24, 10000000, a1 + 16);
      if (result)
      {
        return result;
      }

      if ((*(a1 + 16) - 10000001) < 0xFF676E44)
      {
        return 1;
      }
    }

    if ((*(*a2 + 64))(a2, (*(a1 + 12) & 1) == 0))
    {
      return 0;
    }

    v8 = *(a1 + 20);
    result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x24500000043, 13, &v8);
    if (!result)
    {
      v6 = v8;
      *(a1 + 20) = v8;
      v7 = ((1 << v6) & 0x72106) == 0 || v6 > 0x3F;
      result = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_240B24A20(uint64_t a1, uint64_t a2)
{
  if (!(*(*a2 + 72))(a2, a1, a1 + 8))
  {
    (*(*a2 + 80))(a2, a1);
    return 0;
  }

  result = (*(*a2 + 24))(a2, 0, a1 + 9);
  if (!result)
  {
    v8 = *(a1 + 56);
    result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x24500000043, 0, &v8);
    if (!result)
    {
      v5 = v8;
      *(a1 + 56) = v8;
      result = v5 > 3;
      if (v5 <= 3)
      {
        if ((*(*a2 + 64))(a2, (*(a1 + 9) & 1) == 0))
        {
          return (*(a1 + 9) != 1 || ((*(*a2 + 96))(a2) & 1) == 0) && *(a1 + 32) == *(a1 + 40);
        }

        v6 = *(a1 + 56);
        if (v6 == 2)
        {
          *(a1 + 16) = 1;
        }

        if (!(*(*a2 + 64))(a2, v6 != 2))
        {
          result = sub_240B24E8C(a2, (a1 + 16));
          if (result)
          {
            return result;
          }

          if (!(*(*a2 + 64))(a2, *(a1 + 16) == 2))
          {
            *(a1 + 120) = *(a1 + 76);
            result = (*(*a2 + 88))(a2, a1 + 112);
            if (result)
            {
              return result;
            }

            *(a1 + 76) = *(a1 + 120);
          }
        }

        if (!(*(*a2 + 64))(a2, (*(a1 + 56) - 3) < 0xFFFFFFFE))
        {
          result = sub_240B24F20(a2, (a1 + 20));
          if (result)
          {
            return result;
          }

          if (!(*(*a2 + 64))(a2, *(a1 + 20) == 2))
          {
            *(a1 + 160) = *(a1 + 84);
            result = (*(*a2 + 88))(a2, a1 + 152);
            if (result)
            {
              return result;
            }

            *(a1 + 84) = *(a1 + 160);
            *(a1 + 176) = *(a1 + 92);
            result = (*(*a2 + 88))(a2, a1 + 168);
            if (result)
            {
              return result;
            }

            *(a1 + 92) = *(a1 + 176);
            *(a1 + 192) = *(a1 + 100);
            result = (*(*a2 + 88))(a2, a1 + 184);
            if (result)
            {
              return result;
            }

            *(a1 + 100) = *(a1 + 192);
          }
        }

        v7 = (a1 + 64);
        *(a1 + 140) = *(a1 + 64);
        *(a1 + 136) = *(a1 + 56);
        *(a1 + 148) = *(a1 + 72);
        result = (*(*a2 + 88))(a2, a1 + 128);
        if (!result)
        {
          *v7 = *(a1 + 140);
          *(a1 + 72) = *(a1 + 148);
          result = sub_240B24FB4(a2, (a1 + 24));
          if (!result)
          {
            if (*(a1 + 56) == 3 || (*v7 & 1) == 0 && *(a1 + 72) == 2 || sub_240B25034(a1))
            {
              return 1;
            }

            return (*(a1 + 9) != 1 || ((*(*a2 + 96))(a2) & 1) == 0) && *(a1 + 32) == *(a1 + 40);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_240B24E8C(uint64_t a1, unsigned int *a2)
{
  v6 = *a2;
  result = (*(*a1 + 32))(a1, 0x8000000180000000, 0x24500000043, 1, &v6);
  if (!result)
  {
    v4 = v6;
    *a2 = v6;
    return ((1 << v4) & 0xC06) == 0 || v4 > 0x3F;
  }

  return result;
}

uint64_t sub_240B24F20(uint64_t a1, unsigned int *a2)
{
  v6 = *a2;
  result = (*(*a1 + 32))(a1, 0x8000000180000000, 0x24500000043, 1, &v6);
  if (!result)
  {
    v4 = v6;
    *a2 = v6;
    return ((1 << v4) & 0xA06) == 0 || v4 > 0x3F;
  }

  return result;
}

uint64_t sub_240B24FB4(uint64_t a1, unsigned int *a2)
{
  v5 = *a2;
  result = (*(*a1 + 32))(a1, 0x8000000180000000, 0x24500000043, 1, &v5);
  if (!result)
  {
    v4 = v5;
    *a2 = v5;
    return v4 > 3;
  }

  return result;
}

uint64_t sub_240B25034(uint64_t a1)
{
  v2 = a1 + 32;
  *(a1 + 40) = *(a1 + 32);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_240B250A4(v4, a1 + 16);
  result = sub_240B25260(v4, v2);
  if (result)
  {
    *(a1 + 40) = *(a1 + 32);
    return 1;
  }

  return result;
}

uint64_t sub_240B250A4(uint64_t result, uint64_t a2)
{
  *(result + 96) = 0;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 40);
    v3 = *a2;
    *result = v2;
    *(result + 4) = v3;
    if (v3 > 9)
    {
      if (v3 == 10)
      {
        v4 = vdupq_n_s64(0x3FD5555555555555uLL);
      }

      else
      {
        v4 = xmmword_240C11440;
      }
    }

    else if (v3 == 1)
    {
      v4 = xmmword_240C11430;
    }

    else
    {
      v5 = *(a2 + 60);
      v6.i64[0] = v5;
      v6.i64[1] = SHIDWORD(v5);
      v4 = vmulq_f64(vcvtq_f64_s64(v6), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
    }

    *(result + 8) = v4;
    if (v2 == 3 || !v2)
    {
      v7 = *(a2 + 4);
      *(result + 24) = v7;
      if (v7 > 8)
      {
        if (v7 == 9)
        {
          v8 = xmmword_240C114B0;
          v4 = xmmword_240C114C0;
          v9 = xmmword_240C114D0;
        }

        else
        {
          v8 = xmmword_240C11480;
          v4 = xmmword_240C11490;
          v9 = xmmword_240C114A0;
        }
      }

      else if (v7 == 1)
      {
        v8 = xmmword_240C11450;
        v4 = xmmword_240C11460;
        v9 = xmmword_240C11470;
      }

      else
      {
        v10 = *(a2 + 68);
        v11.i64[0] = v10;
        v11.i64[1] = SHIDWORD(v10);
        v12 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
        v4 = vmulq_f64(vcvtq_f64_s64(v11), v12);
        v13 = *(a2 + 76);
        v11.i64[0] = v13;
        v11.i64[1] = SHIDWORD(v13);
        v9 = vmulq_f64(vcvtq_f64_s64(v11), v12);
        v14 = *(a2 + 84);
        v11.i64[0] = v14;
        v11.i64[1] = SHIDWORD(v14);
        v8 = vmulq_f64(vcvtq_f64_s64(v11), v12);
      }

      *(result + 32) = v4;
      *(result + 48) = v9;
      *(result + 64) = v8;
    }

    if (*(a2 + 48) == 1)
    {
      LODWORD(v4.f64[0]) = *(a2 + 52);
      v4.f64[0] = *&v4.f64[0] * 0.0000001;
      v15 = 0xFFFF;
    }

    else
    {
      v15 = *(a2 + 56);
      v4.f64[0] = 0.0;
    }

    *(result + 80) = v15;
    *(result + 88) = v4.f64[0];
    *(result + 96) = *(a2 + 8);
  }

  else
  {
    *(result + 24) = 2;
    *(result + 80) = 2;
    *result = 0x200000003;
  }

  return result;
}

uint64_t sub_240B25260(double *a1, uint64_t a2)
{
  v137 = *MEMORY[0x277D85DE8];
  v122[0] = 0;
  v122[1] = 0;
  v123 = 0;
  v120[0] = 0;
  v120[1] = 0;
  v121 = 0;
  v118[0] = 0;
  v118[1] = 0;
  v119 = 0;
  v2 = 1;
  if (*a1 > 2u)
  {
    goto LABEL_227;
  }

  v4 = *(a1 + 20);
  if (v4 == 2 || *a1 == 2 && *(a1 + 24))
  {
    goto LABEL_227;
  }

  LOBYTE(__str) = 0;
  sub_240B26750(v122, 0x80uLL, &__str);
  sub_240B26894(0, 0, v122);
  v6 = v122[0];
  if ((v122[1] - v122[0]) <= 7)
  {
    sub_240B26918(v122, 8 - (v122[1] - v122[0]));
    v6 = v122[0];
  }

  v6[1] = 543979626;
  sub_240B26894(71303168, 8, v122);
  v7 = *a1;
  v8 = v122[0];
  v9 = v122[1] - v122[0];
  if ((v122[1] - v122[0]) <= 0xF)
  {
    sub_240B26918(v122, 16 - v9);
    v8 = v122[0];
    v9 = v122[1] - v122[0];
  }

  if (v7 == 2)
  {
    v10 = 1919837043;
  }

  else
  {
    v10 = 1920233069;
  }

  v8[3] = v10;
  v11 = *a1;
  if (v9 <= 0x13)
  {
    sub_240B26918(v122, 20 - v9);
    v8 = v122[0];
    v9 = v122[1] - v122[0];
  }

  if (v11 == 1)
  {
    v12 = 1497453127;
  }

  else
  {
    v12 = 541214546;
  }

  v8[4] = v12;
  if (sub_240B26A50(a1))
  {
    v13 = 543318348;
  }

  else
  {
    v13 = 542792024;
  }

  if (v9 <= 0x17)
  {
    sub_240B26918(v122, 24 - v9);
    v8 = v122[0];
    v9 = v122[1] - v122[0];
  }

  v8[5] = v13;
  if (v9 <= 0x19)
  {
    sub_240B26918(v122, 26 - v9);
    v8 = v122[0];
  }

  *(v8 + 12) = -7417;
  v14 = v122[0];
  v15 = v122[1] - v122[0];
  if ((v122[1] - v122[0]) <= 0x1B)
  {
    sub_240B26918(v122, 28 - v15);
    v14 = v122[0];
    v15 = v122[1] - v122[0];
  }

  v14[13] = 3072;
  if (v15 <= 0x1D)
  {
    sub_240B26918(v122, 30 - v15);
    v14 = v122[0];
  }

  v14[14] = 256;
  v16 = v122[0];
  v17 = v122[1] - v122[0];
  if ((v122[1] - v122[0]) <= 0x1F)
  {
    sub_240B26918(v122, 32 - v17);
    v16 = v122[0];
    v17 = v122[1] - v122[0];
  }

  v16[15] = 0;
  if (v17 <= 0x21)
  {
    sub_240B26918(v122, 34 - v17);
    v16 = v122[0];
  }

  v16[16] = 0;
  v18 = v122[0];
  v19 = v122[1] - v122[0];
  if ((v122[1] - v122[0]) <= 0x23)
  {
    sub_240B26918(v122, 36 - v19);
    v18 = v122[0];
    v19 = v122[1] - v122[0];
  }

  v18[17] = 0;
  if (v19 <= 0x27)
  {
    sub_240B26918(v122, 40 - v19);
    v18 = v122[0];
    v19 = v122[1] - v122[0];
  }

  *(v18 + 9) = 1886610273;
  if (v19 <= 0x2B)
  {
    sub_240B26918(v122, 44 - v19);
    v18 = v122[0];
  }

  *(v18 + 10) = 1280331841;
  sub_240B26894(0, 44, v122);
  sub_240B26894(0, 48, v122);
  sub_240B26894(0, 52, v122);
  sub_240B26894(0, 56, v122);
  sub_240B26894(0, 60, v122);
  sub_240B26894(*(a1 + 24), 64, v122);
  sub_240B26894(63190, 68, v122);
  sub_240B26894(0x10000, 72, v122);
  sub_240B26894(54061, 76, v122);
  v20 = v122[0];
  if ((v122[1] - v122[0]) <= 0x53)
  {
    sub_240B26918(v122, 84 - (v122[1] - v122[0]));
    v20 = v122[0];
  }

  v20[20] = 543979626;
  __p = 0;
  v116 = 0;
  v117 = 0;
  sub_240B26894(0, v120[1] - v120[0], v120);
  v113 = 0;
  v114 = 0;
  v21 = sub_240B26AA4(&v136, off_278CB3240[*a1]);
  v22 = *a1;
  if (*a1 != 2)
  {
    std::string::push_back(v21, 95);
    v23 = *(a1 + 1);
    if (v23 == 2)
    {
      v24 = a1[1];
      __str = 0u;
      v126 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v24);
      sub_240B26AA4(&v124, &__str);
      std::string::push_back(&v124, 59);
      v25 = v124.__r_.__value_.__r.__words[2];
      *&v134 = *(&v124.__r_.__value_.__l + 2);
      v133 = *&v124.__r_.__value_.__l.__data_;
      memset(&v124, 0, sizeof(v124));
      v26 = HIBYTE(v25);
      if ((v26 & 0x80u) == 0)
      {
        v27 = &v133;
      }

      else
      {
        v27 = v133;
      }

      if ((v26 & 0x80u) == 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = *(&v133 + 1);
      }

      std::string::append(&v136, v27, v28);
      if (SBYTE7(v134) < 0)
      {
        operator delete(v133);
      }

      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      v29 = a1[2];
      __str = 0u;
      v126 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v29);
      sub_240B26AA4(&v133, &__str);
      if ((SBYTE7(v134) & 0x80u) == 0)
      {
        v30 = &v133;
      }

      else
      {
        v30 = v133;
      }

      if ((SBYTE7(v134) & 0x80u) == 0)
      {
        v31 = BYTE7(v134);
      }

      else
      {
        v31 = *(&v133 + 1);
      }

      std::string::append(&v136, v30, v31);
      if (SBYTE7(v134) < 0)
      {
        v32 = v133;
LABEL_73:
        operator delete(v32);
      }
    }

    else
    {
      if (v23 == 1)
      {
        v33 = "D65";
      }

      else if (v23 == 11)
      {
        v33 = "DCI";
      }

      else
      {
        v33 = "EER";
      }

      sub_240B26AA4(&__str, v33);
      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str;
      }

      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        v35 = BYTE7(v126);
      }

      else
      {
        v35 = *(&__str + 1);
      }

      std::string::append(&v136, p_str, v35);
      if (SBYTE7(v126) < 0)
      {
        v32 = __str;
        goto LABEL_73;
      }
    }
  }

  if ((*a1 - 1) < 2)
  {
    goto LABEL_148;
  }

  std::string::push_back(&v136, 95);
  v36 = *(a1 + 6);
  if (v36 == 2)
  {
    v37 = a1[4];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v37);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v38 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v39 = HIBYTE(v38);
    if ((v39 & 0x80u) == 0)
    {
      v40 = &v133;
    }

    else
    {
      v40 = v133;
    }

    if ((v39 & 0x80u) == 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *(&v133 + 1);
    }

    std::string::append(&v136, v40, v41);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v42 = a1[5];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v42);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v43 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v44 = HIBYTE(v43);
    if ((v44 & 0x80u) == 0)
    {
      v45 = &v133;
    }

    else
    {
      v45 = v133;
    }

    if ((v44 & 0x80u) == 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = *(&v133 + 1);
    }

    std::string::append(&v136, v45, v46);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v47 = a1[6];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v47);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v48 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v49 = HIBYTE(v48);
    if ((v49 & 0x80u) == 0)
    {
      v50 = &v133;
    }

    else
    {
      v50 = v133;
    }

    if ((v49 & 0x80u) == 0)
    {
      v51 = v49;
    }

    else
    {
      v51 = *(&v133 + 1);
    }

    std::string::append(&v136, v50, v51);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v52 = a1[7];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v52);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v53 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v54 = HIBYTE(v53);
    if ((v54 & 0x80u) == 0)
    {
      v55 = &v133;
    }

    else
    {
      v55 = v133;
    }

    if ((v54 & 0x80u) == 0)
    {
      v56 = v54;
    }

    else
    {
      v56 = *(&v133 + 1);
    }

    std::string::append(&v136, v55, v56);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v57 = a1[8];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v57);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v58 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v59 = HIBYTE(v58);
    if ((v59 & 0x80u) == 0)
    {
      v60 = &v133;
    }

    else
    {
      v60 = v133;
    }

    if ((v59 & 0x80u) == 0)
    {
      v61 = v59;
    }

    else
    {
      v61 = *(&v133 + 1);
    }

    std::string::append(&v136, v60, v61);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v62 = a1[9];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v62);
    sub_240B26AA4(&v133, &__str);
    if ((SBYTE7(v134) & 0x80u) == 0)
    {
      v63 = &v133;
    }

    else
    {
      v63 = v133;
    }

    if ((SBYTE7(v134) & 0x80u) == 0)
    {
      v64 = BYTE7(v134);
    }

    else
    {
      v64 = *(&v133 + 1);
    }

    std::string::append(&v136, v63, v64);
    if (SBYTE7(v134) < 0)
    {
      v65 = v133;
LABEL_147:
      operator delete(v65);
    }
  }

  else
  {
    if (v36 == 1)
    {
      v66 = "SRG";
    }

    else if (v36 == 11)
    {
      v66 = "DCI";
    }

    else
    {
      v66 = "202";
    }

    sub_240B26AA4(&__str, v66);
    if ((SBYTE7(v126) & 0x80u) == 0)
    {
      v67 = &__str;
    }

    else
    {
      v67 = __str;
    }

    if ((SBYTE7(v126) & 0x80u) == 0)
    {
      v68 = BYTE7(v126);
    }

    else
    {
      v68 = *(&__str + 1);
    }

    std::string::append(&v136, v67, v68);
    if (SBYTE7(v126) < 0)
    {
      v65 = __str;
      goto LABEL_147;
    }
  }

LABEL_148:
  std::string::push_back(&v136, 95);
  sub_240B26AA4(&__str, off_278CB3260[*(a1 + 24)]);
  if ((SBYTE7(v126) & 0x80u) == 0)
  {
    v69 = &__str;
  }

  else
  {
    v69 = __str;
  }

  if ((SBYTE7(v126) & 0x80u) == 0)
  {
    v70 = BYTE7(v126);
  }

  else
  {
    v70 = *(&__str + 1);
  }

  std::string::append(&v136, v69, v70);
  if (SBYTE7(v126) < 0)
  {
    operator delete(__str);
  }

  if (v22 != 2)
  {
    v71 = *(a1 + 20);
    std::string::push_back(&v136, 95);
    if (v71 == 0xFFFF)
    {
      std::string::push_back(&v136, 103);
      v72 = a1[11];
      __str = 0u;
      v126 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v72);
      sub_240B26AA4(&v133, &__str);
      if ((SBYTE7(v134) & 0x80u) == 0)
      {
        v73 = &v133;
      }

      else
      {
        v73 = v133;
      }

      if ((SBYTE7(v134) & 0x80u) == 0)
      {
        v74 = BYTE7(v134);
      }

      else
      {
        v74 = *(&v133 + 1);
      }

      std::string::append(&v136, v73, v74);
      if (SBYTE7(v134) < 0)
      {
        v75 = v133;
LABEL_187:
        operator delete(v75);
      }
    }

    else
    {
      if (v71 <= 12)
      {
        if (v71 == 1)
        {
          v76 = "709";
        }

        else if (v71 == 2)
        {
          v76 = "TF?";
        }

        else
        {
          v76 = "Lin";
        }
      }

      else if (v71 > 16)
      {
        if (v71 == 17)
        {
          v76 = "DCI";
        }

        else
        {
          v76 = "HLG";
        }
      }

      else if (v71 == 13)
      {
        v76 = "SRG";
      }

      else
      {
        v76 = "PeQ";
      }

      sub_240B26AA4(&__str, v76);
      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        v77 = &__str;
      }

      else
      {
        v77 = __str;
      }

      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        v78 = BYTE7(v126);
      }

      else
      {
        v78 = *(&__str + 1);
      }

      std::string::append(&v136, v77, v78);
      if (SBYTE7(v126) < 0)
      {
        v75 = __str;
        goto LABEL_187;
      }
    }
  }

  sub_240B26B5C(&v136, v118);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  sub_240B26CA8(v118, &v114, &v113);
  sub_240B26D28("desc", v114, v113, v120, &__p);
  sub_240B26AA4(&v124, "CC0");
  sub_240B26B5C(&v124, v118);
  sub_240B26CA8(v118, &v114, &v113);
  sub_240B26D28("cprt", v114, v113, v120, &__p);
  if (*a1 == 1)
  {
    v79 = a1[2];
    if (fabs(v79) < 1.0e-12)
    {
LABEL_220:
      v2 = 1;
      goto LABEL_221;
    }

    v80 = a1[1];
    v81 = 1.0 / v79;
    v82 = v81;
    *&v83 = v80 * v82;
    *&__str = v83 | 0x3F80000000000000;
    v84 = (1.0 - v80 - v79) * v82;
    *(&__str + 2) = v84;
    v85 = sub_240B26E70(&__str, v118);
  }

  else
  {
    v85 = sub_240B26E70(&unk_240C87698, v118);
  }

  v2 = v85;
  if (!v85)
  {
    sub_240B26CA8(v118, &v114, &v113);
    sub_240B26D28("wtpt", v114, v113, v120, &__p);
    if (*a1 == 1)
    {
LABEL_196:
      if (sub_240B26A50(a1))
      {
        v86 = *(a1 + 5);
        v129 = *(a1 + 4);
        v130 = v86;
        v131 = *(a1 + 12);
        v87 = *(a1 + 1);
        __str = *a1;
        v126 = v87;
        v88 = *(a1 + 3);
        v127 = *(a1 + 2);
        v128 = v88;
        v2 = sub_240B27D14(&__str, v118);
        if (!v2)
        {
          sub_240B26CA8(v118, &v114, &v113);
          sub_240B26D28("A2B0", v114, v113, v120, &__p);
          sub_240B27ABC(v118);
        }
      }

      else
      {
        if (v4 <= 15)
        {
          if (v4 != 1)
          {
            if (v4 == 8)
            {
              LODWORD(v133) = 1065353216;
              *&v126 = 0;
              __str = 0uLL;
              sub_240B2860C(&__str, &v133, &v133 + 4, 1uLL);
            }

            LODWORD(v134) = 1025879782;
            v133 = xmmword_240C876A4;
            *&v126 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v133, &v134 + 4, 5uLL);
          }

          LODWORD(v134) = 1034281812;
          v133 = xmmword_240C876B8;
          *&v126 = 0;
          __str = 0uLL;
          sub_240B2860C(&__str, &v133, &v134 + 4, 5uLL);
        }

        if (v4 > 17)
        {
          if (v4 != 18)
          {
            v93 = 1.0 / a1[11];
            *&v133 = v93;
            *&v126 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v133, &v133 + 4, 1uLL);
          }

          sub_240B2877C(&__str, 2);
          sub_240B2890C(&__str, v118);
        }

        else
        {
          if (v4 != 16)
          {
            LODWORD(v134) = 0;
            v133 = *"ff&@";
            *&v126 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v133, &v134 + 4, 5uLL);
          }

          sub_240B2877C(&__str, 1);
          sub_240B2890C(&__str, v118);
        }

        if (__str)
        {
          *(&__str + 1) = __str;
          operator delete(__str);
        }

        sub_240B26CA8(v118, &v114, &v113);
        v96 = *a1;
        v98 = v113;
        v97 = v114;
        if (v96 == 1)
        {
          v99 = "kTRC";
        }

        else
        {
          sub_240B26D28("rTRC", v114, v113, v120, &__p);
          sub_240B26D28("gTRC", v97, v98, v120, &__p);
          v99 = "bTRC";
        }

        sub_240B26D28(v99, v97, v98, v120, &__p);
        v100 = __p;
        v101 = v116;
        v102 = v116 - __p;
        sub_240B26894((v116 - __p) >> 3, 0, v120);
        if (v101 != v100)
        {
          v104 = v122[0];
          v103 = v122[1];
          if ((v102 >> 3) <= 1)
          {
            v105 = 1;
          }

          else
          {
            v105 = v102 >> 3;
          }

          v106 = 8;
          do
          {
            v107 = *v100;
            v100 += 2;
            sub_240B26894(v107 + v103 + LODWORD(v120[1]) - (v104 + LODWORD(v120[0])), v106, v120);
            v106 += 12;
            --v105;
          }

          while (v105);
        }

        v111 = *v118;
        v112 = *v120;
        v108 = vaddq_s64(vaddq_s64(*v122, *v120), *v118);
        sub_240B26894(vsubq_s64(vdupq_laneq_s64(v108, 1), v108).i32[0], 0, v122);
        sub_240B28A14(a2, v122[0], v122[1], v122[1] - v122[0]);
        sub_240B28B3C(a2, *(a2 + 8), v112, *(&v112 + 1), *(&v112 + 1) - v112);
        sub_240B28B3C(a2, *(a2 + 8), v111, *(&v111 + 1), *(&v111 + 1) - v111);
        v133 = 0uLL;
        *&v134 = 0;
        sub_240B28D90(&v133, *a2, *(a2 + 8), *(a2 + 8) - *a2);
        v109 = v133;
        if (*(&v133 + 1) - v133 >= 0x44uLL)
        {
          *(v133 + 44) = 0;
          v109[16] = 0;
        }

        sub_240B28E0C(&v133, &v136);
        *(*a2 + 84) = *&v136.__r_.__value_.__l.__data_;
        if (v109)
        {
          operator delete(v109);
        }

        v2 = 0;
      }

      goto LABEL_221;
    }

    v89 = a1[2];
    if (v89 != 0.0)
    {
      v90 = a1[1];
      v91 = v89;
      v2 = sub_240B26F3C(&__str, v90, v91);
      if (v2)
      {
        goto LABEL_221;
      }

      v133 = __str;
      v134 = v126;
      v135 = v127;
      v2 = sub_240B27174(&v133, v118);
      if (v2)
      {
        goto LABEL_221;
      }

      sub_240B26CA8(v118, &v114, &v113);
      sub_240B26D28("chad", v114, v113, v120, &__p);
      v92 = *a1;
      if (*a1)
      {
        goto LABEL_203;
      }

      sub_240B27240(a1, v118, &v114, &v113, v120, &__p);
      v110 = sub_240B27410(&__str, a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[1], a1[2]);
      if (v110)
      {
        v2 = v110;
        goto LABEL_221;
      }

      *&v133 = __PAIR64__(HIDWORD(__str), __str);
      DWORD2(v133) = DWORD2(v126);
      v136.__r_.__value_.__r.__words[0] = __PAIR64__(v126, DWORD1(__str));
      LODWORD(v136.__r_.__value_.__r.__words[1]) = HIDWORD(v126);
      v132[0] = DWORD2(__str);
      v132[1] = DWORD1(v126);
      v132[2] = v127;
      if (!sub_240B26E70(&v133, v118))
      {
        sub_240B26CA8(v118, &v114, &v113);
        sub_240B26D28("rXYZ", v114, v113, v120, &__p);
        if (!sub_240B26E70(&v136, v118))
        {
          sub_240B26CA8(v118, &v114, &v113);
          sub_240B26D28("gXYZ", v114, v113, v120, &__p);
          if (!sub_240B26E70(v132, v118))
          {
            sub_240B26CA8(v118, &v114, &v113);
            sub_240B26D28("bXYZ", v114, v113, v120, &__p);
            v92 = *a1;
LABEL_203:
            if (v92 == 2)
            {
              sub_240B274E4(v118);
            }

            goto LABEL_196;
          }
        }
      }
    }

    goto LABEL_220;
  }

LABEL_221:
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v118[0])
  {
    operator delete(v118[0]);
  }

LABEL_227:
  if (v120[0])
  {
    operator delete(v120[0]);
  }

  if (v122[0])
  {
    operator delete(v122[0]);
  }

  v94 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_240B2657C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B26750(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_240B228BC();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_240B26894(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8) - *a3;
  v8 = a2 + 4 >= v7;
  v9 = a2 + 4 - v7;
  if (v9 != 0 && v8)
  {
    sub_240B26918(a3, v9);
    v6 = *a3;
  }

  v6[a2] = HIBYTE(a1);
  *(*a3 + a2 + 1) = BYTE2(a1);
  *(*a3 + a2 + 2) = BYTE1(a1);
  *(*a3 + a2 + 3) = a1;
}

void sub_240B26918(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_240B228BC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

BOOL sub_240B26A50(_DWORD *a1)
{
  if (*a1 || (a1[20] & 0xFFFFFFFD) != 0x10)
  {
    return 0;
  }

  v1 = a1[6];
  v2 = a1[1];
  if (v1 == 11 && (v2 == 1 || v2 == 11))
  {
    return 1;
  }

  return v1 != 2 && v2 == 1;
}

_BYTE *sub_240B26AA4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_240B29A3C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_240B26B5C(char *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 1668639853;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  sub_240B26894(1, *(a2 + 8) - *a2, a2);
  sub_240B26894(12, *(a2 + 8) - *a2, a2);
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v6 = *a2;
  }

  *&v6[v7] = 1398107749;
  v8 = a1[23];
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 2);
  }

  sub_240B26894(2 * v8, *(a2 + 8) - *a2, a2);
  sub_240B26894(28, *(a2 + 8) - *a2, a2);
  v9 = *(a1 + 1);
  if (a1[23] >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    a1 = *a1;
    v10 = v9;
  }

  for (; v10; --v10)
  {
    v11 = *a1++;
    v13 = 0;
    sub_240B290C0(a2, &v13);
    v12 = v11;
    sub_240B290C0(a2, &v12);
  }
}

void sub_240B26CA8(void *a1, void *a2, void *a3)
{
  for (i = a1[1] - *a1; (i & 3) != 0; i = a1[1] - *a1)
  {
    v8 = 0;
    sub_240B290C0(a1, &v8);
  }

  v7 = *a2 + *a3;
  *a2 = v7;
  *a3 = i - v7;
}

void sub_240B26D28(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *a4;
  v11 = *(a4 + 8) - *a4;
  if (v11 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a4, 4uLL);
    v10 = *a4;
  }

  *&v10[v11] = *a1;
  sub_240B26894(0, *(a4 + 8) - *a4, a4);
  v13 = *(a5 + 8);
  v12 = *(a5 + 16);
  if (v13 >= v12)
  {
    v15 = *a5;
    v16 = v13 - *a5;
    v17 = v16 >> 3;
    v18 = (v16 >> 3) + 1;
    if (v18 >> 61)
    {
      sub_240B228BC();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      sub_240B299F4(v20);
    }

    *(8 * v17) = a2;
    v14 = 8 * v17 + 8;
    memcpy(0, v15, v16);
    v21 = *a5;
    *a5 = 0;
    *(a5 + 8) = v14;
    *(a5 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v13 = a2;
    v14 = (v13 + 1);
  }

  *(a5 + 8) = v14;
  v22 = *(a4 + 8) - *a4;

  sub_240B26894(a3, v22, a4);
}

uint64_t sub_240B26E70(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 542792024;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + v6);
    if (fabsf(v7) > 32768.0)
    {
      break;
    }

    sub_240B26894(((v7 * 65536.0) + 0.5), *(a2 + 8) - *a2, a2);
    v6 += 4;
    if (v6 == 12)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_240B26F3C(uint64_t a1, float a2, float a3)
{
  v36 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a3 <= 1.0 && a2 >= 0.0 && a2 <= 1.0 && a3 > 0.0)
  {
    v34[0] = a2 / a3;
    v34[1] = 1.0;
    v35 = ((1.0 - a2) - a3) / a3;
    v6 = COERCE_UNSIGNED_INT(fabs(v35)) > 0x7F7FFFFF;
    if (COERCE_INT(fabs(a2 / a3)) <= 2139095039 && !v6)
    {
      v7 = 0;
      v8 = &unk_240C813B0;
      do
      {
        v9 = 0;
        v10 = 0.0;
        do
        {
          v10 = v10 + (*&v8[v9 * 4] * v34[v9]);
          ++v9;
        }

        while (v9 != 3);
        v11 = v10;
        *(&v31 + v7++) = v11;
        v8 += 12;
      }

      while (v7 != 3);
      v12 = 0;
      v13 = &unk_240C813B0;
      do
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v15 = v15 + (*&v13[v14 * 4] * *&dword_240C876E0[v14]);
          ++v14;
        }

        while (v14 != 3);
        v16 = v15;
        *(&v28 + v12++) = v16;
        v13 += 12;
      }

      while (v12 != 3);
      result = 1;
      if (v31 != 0.0 && v32 != 0.0 && v33 != 0.0)
      {
        v21 = v28 / v31;
        v22 = 0;
        v23 = 0;
        v24 = v29 / v32;
        v25 = 0;
        v26 = 0;
        v27 = v30 / v33;
        v17 = COERCE_UNSIGNED_INT(fabs(v29 / v32)) < 0x7F800000;
        v18 = COERCE_UNSIGNED_INT(fabs(v30 / v33)) < 0x7F800000;
        if (COERCE_INT(fabs(v28 / v31)) <= 2139095039 && v17 && v18)
        {
          sub_240B2977C(&v21, &unk_240C813B0, v20);
          sub_240B2977C(&unk_240C813D4, v20, a1);
          result = 0;
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240B27174(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 842229363;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + v6);
    if (fabsf(v7) > 32768.0)
    {
      break;
    }

    sub_240B26894(((v7 * 65536.0) + 0.5), *(a2 + 8) - *a2, a2);
    v6 += 4;
    if (v6 == 36)
    {
      return 0;
    }
  }

  return 1;
}

void sub_240B27240(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!*a1)
  {
    v6 = a1[6];
    if (v6 != 2)
    {
      if (v6 == 11)
      {
        v12 = a1[1];
        if (v12 == 1)
        {
          LOBYTE(v6) = 12;
        }

        else
        {
          if (v12 != 11)
          {
            return;
          }

          LOBYTE(v6) = 11;
        }
      }

      else if (a1[1] != 1)
      {
        return;
      }

      v13 = a1[20];
      if (v13 != 2 && v13 != 0xFFFF)
      {
        v14 = *a2;
        v15 = *(a2 + 8) - *a2;
        if (v15 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          sub_240B26918(a2, 4uLL);
          v14 = *a2;
        }

        *&v14[v15] = 1885563235;
        sub_240B26894(0, *(a2 + 8) - *a2, a2);
        v16 = *a2;
        v17 = *(a2 + 8) - *a2;
        if (v17 != -1)
        {
          sub_240B26918(a2, 1uLL);
          v16 = *a2;
        }

        v16[v17] = v6;
        v18 = *a2;
        v19 = *(a2 + 8) - *a2;
        if (v19 != -1)
        {
          sub_240B26918(a2, 1uLL);
          v18 = *a2;
        }

        v18[v19] = v13;
        v20 = *a2;
        v21 = *(a2 + 8) - *a2;
        if (v21 != -1)
        {
          sub_240B26918(a2, 1uLL);
          v20 = *a2;
        }

        v20[v21] = 0;
        v22 = *a2;
        v23 = *(a2 + 8) - *a2;
        if (v23 != -1)
        {
          sub_240B26918(a2, 1uLL);
          v22 = *a2;
        }

        v22[v23] = 1;
        sub_240B26CA8(a2, a3, a4);
        v24 = *a3;
        v25 = *a4;

        sub_240B26D28("cicp", v24, v25, a5, a6);
      }
    }
  }
}

uint64_t sub_240B27410(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  if (sub_240B295BC(v24, v10, v11, v12, v13, v14, v15, v16, v17) || sub_240B26F3C(v23, v16, v17))
  {
    result = 1;
  }

  else
  {
    sub_240B2977C(v23, v24, v21);
    result = 0;
    v20 = v21[1];
    *a1 = v21[0];
    *(a1 + 16) = v20;
    *(a1 + 32) = v22;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240B274E4(uint64_t a1)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a1, 4uLL);
    v2 = *a1;
  }

  *&v2[v3] = 541213037;
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v4 = *a1;
  v5 = *(a1 + 8) - *a1;
  if (v5 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v4 = *a1;
  }

  v4[v5] = 3;
  v6 = *a1;
  v7 = *(a1 + 8) - *a1;
  if (v7 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v6 = *a1;
  }

  v6[v7] = 3;
  sub_240B29200(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  sub_240B26894(244, *(a1 + 8) - *a1, a1);
  sub_240B26894(148, *(a1 + 8) - *a1, a1);
  sub_240B26894(80, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  v8 = 1065353216;
  memset(__p, 0, 24);
  sub_240B2860C(__p, &v8, &v9, 1uLL);
}

void sub_240B27A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B27ABC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a1, 4uLL);
    v2 = *a1;
  }

  *&v2[v3] = 541147757;
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v4 = *a1;
  v5 = *(a1 + 8) - *a1;
  if (v5 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v4 = *a1;
  }

  v4[v5] = 3;
  v6 = *a1;
  v7 = *(a1 + 8) - *a1;
  if (v7 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v6 = *a1;
  }

  v6[v7] = 3;
  sub_240B29200(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v8 = 1065353216;
  memset(__p, 0, sizeof(__p));
  sub_240B2860C(__p, &v8, __p, 1uLL);
}

void sub_240B27CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B27D14(uint64_t a1, uint64_t a2)
{
  v146 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 829711981;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v6 = *a2;
  }

  v6[v7] = 3;
  v8 = *a2;
  v9 = *(a2 + 8) - *a2;
  if (v9 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v8 = *a2;
  }

  v8[v9] = 3;
  v10 = *a2;
  v11 = *(a2 + 8) - *a2;
  if (v11 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v10 = *a2;
  }

  v10[v11] = 9;
  v12 = *a2;
  v13 = *(a2 + 8) - *a2;
  if (v13 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v12 = *a2;
  }

  v14 = 0;
  v12[v13] = 0;
  do
  {
    v15 = 3;
    do
    {
      if (v14 + v15 == 3)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      sub_240B26894(((v16 * 65536.0) + 0.5), *(a2 + 8) - *a2, a2);
      --v15;
    }

    while (v15);
    ++v14;
  }

  while (v14 != 3);
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 256; ++j)
    {
      v19 = *a2;
      v20 = *(a2 + 8) - *a2;
      if (v20 != -1)
      {
        sub_240B26918(a2, 1uLL);
        v19 = *a2;
      }

      v19[v20] = j;
    }
  }

  v21 = 0;
  v22 = &v140 + 1;
  v23 = -0.8359375;
LABEL_25:
  v122 = v21;
  v24 = vcvts_n_f32_u64(v21, 3uLL);
  v25 = pow(v24, 0.0126833135);
  v26 = v25 + v23;
  if (v25 + v23 < 0.0)
  {
    v26 = 0.0;
  }

  v27 = pow(v26 / (v25 * -18.6875 + 18.8515625), 6.27739464);
  v28 = 0;
  *&v27 = v27;
  v29 = fabsf(*&v27);
  v125 = v24;
  if (v24 == 0.0)
  {
    v29 = 0.0;
  }

  *&v124 = v29;
LABEL_30:
  v123 = v28;
  v30 = v23;
  v31 = vcvts_n_f32_u64(v28, 3uLL);
  v32 = pow(v31, 0.0126833135);
  v33 = v30;
  v34 = v32 + v30;
  if (v32 + v30 < 0.0)
  {
    v34 = 0.0;
  }

  v35 = pow(v34 / (v32 * -18.6875 + 18.8515625), 6.27739464);
  v36 = 0;
  *&v35 = v35;
  v37 = fabsf(*&v35);
  v126 = v31;
  if (v31 == 0.0)
  {
    v37 = 0.0;
  }

  *(&v124 + 1) = v37;
  while (1)
  {
    v127 = v36;
    v38 = vcvts_n_f32_u64(v36, 3uLL);
    *v130 = v125;
    *&v130[1] = v126;
    *&v130[2] = v38;
    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    v41 = *(a1 + 48);
    v42 = *(a1 + 56);
    v43 = *(a1 + 64);
    v44 = *(a1 + 72);
    v45 = *(a1 + 8);
    v46 = *(a1 + 16);
    result = sub_240B295BC(v142, v39, v40, v41, v42, v43, v44, v45, v46);
    if (result)
    {
      break;
    }

    v51 = v143;
    v50 = v144;
    v52 = v145;
    if (*(a1 + 80) == 16)
    {
      v140 = v124;
      v53 = 0.0;
      if (v38 != 0.0)
      {
        v54 = pow(v38, 0.0126833135);
        v55 = v54 + v33;
        if (v54 + v33 < 0.0)
        {
          v55 = 0.0;
        }

        v56 = pow(v55 / (v54 * -18.6875 + 18.8515625), 6.27739464);
        v53 = fabsf(v56);
      }

      v141 = v53;
      v134 = xmmword_240C114E0;
      v135 = __PAIR64__(LODWORD(v50), LODWORD(v51));
      v136 = v52;
      v137 = xmmword_240C114F0;
      v57.i64[1] = 0x3FD6B4FF3ECEC3F3;
      v138 = xmmword_240C11500;
      v57.i64[0] = 0x3B83126F42200000;
      v139 = 0x3B83126F42200000;
      sub_240B292F0(&v134, &v140, v22, &v141, v57);
      v59 = *(&v140 + 1);
      v58 = *&v140;
      v60 = v141;
    }

    else
    {
      for (k = 0; k != 3; ++k)
      {
        v49.i32[0] = v130[k];
        v48.i32[0] = 0;
        if (*v49.i32 != 0.0)
        {
          v62 = fabs(*v49.i32);
          if (v62 <= 0.5)
          {
            *v48.i64 = *v49.i32 * *v49.i32;
            v63 = 0.333333333;
          }

          else
          {
            v128 = v49;
            *v48.i64 = exp((v62 + -0.559910729) * 5.59181631);
            v49 = v128;
            *v48.i64 = *v48.i64 + 0.28466892;
            v63 = 0.0833333333;
          }

          *v48.i64 = *v48.i64 * v63;
          *v48.i32 = *v48.i64;
          v64.i64[0] = 0x8000000080000000;
          v64.i64[1] = 0x8000000080000000;
          v48 = vbslq_s8(v64, v48, v49);
        }

        *(&v140 + k * 4) = v48.i32[0];
      }

      v65 = v140;
      v66 = v141;
      v67 = powf(((v50 * *(&v140 + 1)) + (v51 * *&v140)) + (v52 * v141), -0.18186);
      if (v67 <= 1000000000.0)
      {
        v68 = v67;
      }

      else
      {
        v68 = 1000000000.0;
      }

      v58 = *&v65 * v68;
      v59 = *(&v65 + 1) * v68;
      *&v140 = *&v65 * v68;
      *(&v140 + 1) = *(&v65 + 1) * v68;
      v60 = v66 * v68;
      v141 = v60;
      v33 = -0.8359375;
    }

    v69 = 0;
    v70 = ((v50 * v59) + (v51 * v58)) + (v52 * v60);
    *&v134 = &v140;
    *(&v134 + 1) = v22;
    v135 = &v141;
    v71 = 0.0;
    v72 = 0.0;
    do
    {
      v73 = *(&v134 + v69);
      v74 = *v73 - v70;
      v75 = 1.0 / v74;
      if (v74 == 0.0)
      {
        v75 = 1.0;
      }

      v76 = *v73 * v75;
      if (v72 < v76 && v74 < 0.0)
      {
        v72 = *v73 * v75;
      }

      v78 = v76 - v75;
      if (v74 <= 0.0)
      {
        v78 = v72;
      }

      if (v71 < v78)
      {
        v71 = v78;
      }

      v69 += 8;
    }

    while (v69 != 24);
    v79 = 0;
    v80 = v71 + ((v72 - v71) * 0.3);
    if (v80 <= 1.0)
    {
      v81 = v80;
    }

    else
    {
      v81 = 1.0;
    }

    if (v80 >= 0.0)
    {
      v82 = v81;
    }

    else
    {
      v82 = 0.0;
    }

    *&v134 = &v140;
    *(&v134 + 1) = v22;
    v135 = &v141;
    do
    {
      **(&v134 + v79) = **(&v134 + v79) + (v82 * (v70 - **(&v134 + v79)));
      v79 += 8;
    }

    while (v79 != 24);
    LODWORD(v134) = 1065353216;
    *(&v134 + 4) = v140;
    *(&v134 + 3) = v141;
    v83 = &v134;
    v84 = 1.0;
    for (m = 4; m != 16; m += 4)
    {
      if (v84 < *(&v134 + m))
      {
        v84 = *(&v134 + m);
        v83 = (&v134 + m);
      }
    }

    v86 = 0;
    v87 = *v83;
    *&v134 = &v140;
    *(&v134 + 1) = v22;
    v135 = &v141;
    v88 = 1.0 / v87;
    do
    {
      **(&v134 + v86) = v88 * **(&v134 + v86);
      v86 += 8;
    }

    while (v86 != 24);
    v89 = *(a1 + 8);
    v90 = *(a1 + 16);
    if (sub_240B26F3C(&v134, v89, v90))
    {
      result = 1;
      break;
    }

    v91 = v133;
    sub_240B2977C(&v134, v142, v133);
    v92 = 0;
    v132 = 0.0;
    v131 = 0;
    do
    {
      v93 = 0;
      v94 = *(&v131 + v92);
      do
      {
        v94 = v94 + (*(&v140 + v93) * *&v91[v93]);
        v93 += 4;
      }

      while (v93 != 12);
      *(&v131 + v92++) = v94;
      v91 += 12;
    }

    while (v92 != 3);
    v95 = *&v131 / 0.96421;
    if ((*&v131 / 0.96421) <= 0.0088565)
    {
      v96 = (v95 * 7.787) + 0.13793;
    }

    else
    {
      v96 = cbrtf(v95);
    }

    if (*(&v131 + 1) <= 0.0088565)
    {
      v97 = (*(&v131 + 1) * 7.787) + 0.13793;
    }

    else
    {
      v97 = cbrtf(*(&v131 + 1));
    }

    v98 = v22;
    v99 = a1;
    v100 = v132 / 0.82519;
    if ((v132 / 0.82519) <= 0.0088565)
    {
      v101 = (v100 * 7.787) + 0.13793;
    }

    else
    {
      v101 = cbrtf(v100);
    }

    v102 = 0;
    v103 = (v97 * 1.16) + -0.16;
    if (v103 <= 1.0)
    {
      v104 = (v97 * 1.16) + -0.16;
    }

    else
    {
      v104 = 1.0;
    }

    if (v103 >= 0.0)
    {
      v105 = v104;
    }

    else
    {
      v105 = 0.0;
    }

    v129[0] = ((v105 * 255.0) + 0.5);
    v106 = (v96 - v97) * 500.0;
    if (v106 <= 127.0)
    {
      v107 = (v96 - v97) * 500.0;
    }

    else
    {
      v107 = 127.0;
    }

    v108 = v107 + 128.5;
    if (v106 >= -128.0)
    {
      v109 = v108;
    }

    else
    {
      v109 = 0.5;
    }

    v129[1] = v109;
    v110 = (v97 - v101) * 200.0;
    if (v110 <= 127.0)
    {
      v111 = v110;
    }

    else
    {
      v111 = 127.0;
    }

    v112 = v111 + 128.5;
    if (v110 >= -128.0)
    {
      v113 = v112;
    }

    else
    {
      v113 = 0.5;
    }

    v129[2] = v113;
    do
    {
      v114 = v129[v102];
      v115 = *a2;
      v116 = *(a2 + 8) - *a2;
      if (v116 != -1)
      {
        sub_240B26918(a2, 1uLL);
        v115 = *a2;
      }

      v115[v116] = v114;
      ++v102;
    }

    while (v102 != 3);
    v36 = v127 + 1;
    a1 = v99;
    v22 = v98;
    if (v127 == 8)
    {
      v28 = v123 + 1;
      v23 = v33;
      if (v123 != 8)
      {
        goto LABEL_30;
      }

      v21 = v122 + 1;
      if (v122 == 8)
      {
        for (n = 0; n != 3; ++n)
        {
          for (ii = 0; ii != 256; ++ii)
          {
            v119 = *a2;
            v120 = *(a2 + 8) - *a2;
            if (v120 != -1)
            {
              sub_240B26918(a2, 1uLL);
              v119 = *a2;
            }

            v119[v120] = ii;
          }

          result = 0;
        }

        break;
      }

      goto LABEL_25;
    }
  }

  v121 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240B28660(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B2867C(float **a1, __int16 a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8) - *a3;
  if (v7 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a3, 4uLL);
    v6 = *a3;
  }

  *&v6[v7] = 1634886000;
  sub_240B26894(0, *(a3 + 8) - *a3, a3);
  sub_240B29200(a2, *(a3 + 8) - *a3, a3);
  sub_240B29200(0, *(a3 + 8) - *a3, a3);
  v9 = *a1;
  v8 = a1[1];
  if (v9 == v8)
  {
    return 0;
  }

  while (fabsf(*v9) <= 32768.0)
  {
    sub_240B26894(((*v9++ * 65536.0) + 0.5), *(a3 + 8) - *a3, a3);
    if (v9 == v8)
    {
      return 0;
    }
  }

  return 1;
}

void sub_240B2877C(void *a1, int a2)
{
  v3 = 0;
  v4 = *sub_240B29264(a1, 64);
  do
  {
    v5 = v3 / 63.0;
    v6 = v5;
    v7 = 0.0;
    if (a2 == 2)
    {
      if (v5 == 0.0)
      {
        goto LABEL_13;
      }

      if (v5 <= 0.5)
      {
        v10 = v6 * v6;
        v9 = 0.333333333;
      }

      else
      {
        v8 = exp((v6 + -0.559910729) * 5.59181631);
        v9 = 0.0833333333;
        v10 = v8 + 0.28466892;
      }

      v13 = v10 * v9;
    }

    else
    {
      if (v5 == 0.0)
      {
        goto LABEL_13;
      }

      v11 = pow(v6, 0.0126833135);
      v12 = v11 + -0.8359375;
      if (v11 + -0.8359375 < 0.0)
      {
        v12 = 0.0;
      }

      v13 = pow(v12 / (v11 * -18.6875 + 18.8515625), 6.27739464);
    }

    v14 = v13;
    v7 = fabsf(v14);
LABEL_13:
    if (v7 <= 1.0)
    {
      v15 = v7;
    }

    else
    {
      v15 = 1.0;
    }

    v16 = v15 * 65535.0;
    *(v4 + 2 * v3++) = llroundf(v16);
  }

  while (v3 != 64);
}

void sub_240B2890C(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = &v5[-*a2];
  v7 = v6 + 12;
  v8 = a1[1] - *a1 + v6 + 12;
  v12 = 0;
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v5 = &v4[v8];
      *(a2 + 8) = &v4[v8];
    }
  }

  else
  {
    sub_240B26750(a2, v8 - v6, &v12);
    v4 = *a2;
    v5 = *(a2 + 8);
  }

  v9 = v5 - v4;
  if (v6 + 4 > v9)
  {
    sub_240B26918(a2, v6 + 4 - v9);
    v4 = *a2;
  }

  *&v4[v6] = 1987212643;
  sub_240B26894(0, v6 + 4, a2);
  sub_240B26894((a1[1] - *a1) >> 1, v6 + 8, a2);
  v10 = *a1;
  if (a1[1] != *a1)
  {
    v11 = 0;
    do
    {
      sub_240B29200(*(v10 + 2 * v11++), v7, a2);
      v10 = *a1;
      v7 += 2;
    }

    while (v11 < (a1[1] - *a1) >> 1);
  }
}

void *sub_240B28A14(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B291B0(v6, v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_240B28B3C(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  if (a5 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9 - v10 >= a5)
    {
      v16 = v10 - __dst;
      if (v10 - __dst >= a5)
      {
        v20 = &__dst[a5];
        v21 = &v10[-a5];
        v22 = *(a1 + 8);
        if (v10 >= a5)
        {
          do
          {
            v23 = *v21++;
            *v22++ = v23;
          }

          while (v21 != v10);
        }

        *(a1 + 8) = v22;
        if (v10 != v20)
        {
          memmove(&__dst[a5], __dst, v10 - v20);
        }

        v24 = __dst;
        v25 = __src;
        v26 = a5;
      }

      else
      {
        v17 = &__src[v16];
        v18 = *(a1 + 8);
        while (v17 != a4)
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        *(a1 + 8) = v18;
        if (v16 < 1)
        {
          return;
        }

        v27 = &__dst[a5];
        v28 = &v18[-a5];
        v29 = v18;
        if (&v18[-a5] < v10)
        {
          do
          {
            v30 = *v28++;
            *v29++ = v30;
          }

          while (v28 != v10);
        }

        *(a1 + 8) = v29;
        if (v18 != v27)
        {
          memmove(&__dst[a5], __dst, v18 - v27);
        }

        v24 = __dst;
        v25 = __src;
        v26 = v10 - __dst;
      }

      memmove(v24, v25, v26);
    }

    else
    {
      v11 = *a1;
      v12 = &v10[a5 - *a1];
      if (v12 < 0)
      {
        sub_240B228BC();
      }

      v13 = (__dst - v11);
      v14 = v9 - v11;
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      if (v15)
      {
        operator new();
      }

      v31 = (__dst - v11);
      memcpy(v13, __src, a5);
      v32 = &v13[a5];
      v33 = v10 - __dst;
      memcpy(v32, __dst, v10 - __dst);
      *(a1 + 8) = __dst;
      v34 = &v13[v11 - __dst];
      memcpy(v34, v11, v31);
      *a1 = v34;
      *(a1 + 8) = &v32[v33];
      *(a1 + 16) = 0;
      if (v11)
      {

        operator delete(v11);
      }
    }
  }
}

uint64_t sub_240B28D90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_240B291B0(result, a4);
  }

  return result;
}

void sub_240B28DF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B28E0C(uint64_t *a1, int *a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_240B28D90(&v29, *a1, a1[1], a1[1] - *a1);
  v28 = 0x80;
  sub_240B290C0(&v29, &v28);
  v4 = (56 - (v30 - v29)) & 0x3F;
  v5 = v4 + v30 - v29;
  v28 = 0;
  if (v30 - v29 >= v5)
  {
    if (v30 - v29 > v5)
    {
      v30 += v4;
    }
  }

  else
  {
    sub_240B26750(&v29, v4, &v28);
  }

  v6 = -8;
  do
  {
    v6 += 8;
    v28 = (8 * (a1[1] - *a1)) >> v6;
    sub_240B290C0(&v29, &v28);
  }

  while (v6 < 0x38);
  v7 = -271733879;
  v8 = -1732584194;
  v9 = 1732584193;
  v10 = 271733878;
  v11 = v29;
  if (v30 != v29)
  {
    v12 = 0;
    do
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v16 = 5;
      v17 = v10;
      v18 = v8;
      v19 = v7;
      v20 = v9;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v18;
        v20 = v17;
        v24 = (v19 | ~v17) ^ v18;
        v25 = v13 & 0xF;
        v26 = v18 ^ v22 ^ v20;
        if (v14 <= 0x2F)
        {
          v24 = v26;
          v25 = v16 & 0xF;
        }

        if (v14 <= 0x1F)
        {
          v24 = v20 & v22 | v23 & ~v20;
          v25 = v15 & 0xF;
        }

        if (v14 <= 0xF)
        {
          v25 = v14;
        }

        v27 = *&v29[v12 | (4 * v25)];
        if (v14 <= 0xF)
        {
          v24 = v20 & ~v22 | v23 & v22;
        }

        v19 = __ROR4__(v24 + v21 + dword_240C87808[v14] + v27, -byte_240C87908[4 * v14]) + v22;
        ++v14;
        v13 += 7;
        v16 += 3;
        v15 += 5;
        v17 = v23;
        v18 = v22;
      }

      while (v14 != 64);
      v9 += v20;
      v7 += v19;
      v8 += v22;
      v10 += v23;
      v12 += 64;
    }

    while (v12 < v30 - v29);
  }

  *a2 = v9;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_240B290A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B290C0(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_240B228BC();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_240B291B0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_240B228BC();
}

void sub_240B29200(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8) - *a3;
  v8 = a2 + 2 >= v7;
  v9 = a2 + 2 - v7;
  if (v9 != 0 && v8)
  {
    sub_240B26918(a3, v9);
    v6 = *a3;
  }

  v6[a2] = HIBYTE(a1);
  *(*a3 + a2 + 1) = a1;
}

void *sub_240B29264(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_240B29578(a2);
    }

    sub_240B228BC();
  }

  return result;
}

void sub_240B292D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B292F0(float *a1, float *a2, float *a3, float *a4, int8x16_t a5)
{
  v36[3] = *MEMORY[0x277D85DE8];
  *v5.i32 = a1[1] * (((a1[5] * *a3) + (a1[4] * *a2)) + (a1[6] * *a4));
  v10 = 0.0;
  if (*v5.i32 != 0.0)
  {
    v34 = v5;
    v11 = pow(fabsf(*v5.i32) * 0.0000999999975, 0.159301758);
    *a5.i64 = pow((v11 * 18.8515625 + 0.8359375) / (v11 * 18.6875 + 1.0), 78.84375);
    v5.i32[0] = v34.i32[0];
    *a5.i32 = *a5.i64;
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    LODWORD(v10) = vbslq_s8(v12, a5, v34).u32[0];
  }

  v13 = a1[7];
  v14 = fminf((v10 - v13) * a1[10], 1.0);
  v15 = a1[13];
  if (v14 >= v15)
  {
    v16 = (v14 - v15) * a1[14];
    v14 = (((1.0 - v15) * (v16 + ((v16 * (v16 * v16)) + ((v16 * v16) * -2.0)))) + ((1.0 - (((v16 * v16) * 3.0) - ((v16 * (v16 * v16)) * 2.0))) * v15)) + ((((v16 * v16) * 3.0) + ((v16 * (v16 * v16)) * -2.0)) * a1[12]);
  }

  *a5.i32 = v13 + ((v14 + (a1[11] * (((1.0 - v14) * (1.0 - v14)) * ((1.0 - v14) * (1.0 - v14))))) * a1[9]);
  v17 = 0.0;
  if (*a5.i32 != 0.0)
  {
    v33 = a5;
    v35 = v5.i32[0];
    v18 = pow(fabsf(*a5.i32), 0.0126833135);
    v19 = v18 + -0.8359375;
    if (v18 + -0.8359375 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = pow(v19 / (v18 * -18.6875 + 18.8515625), 6.27739464);
    v5.i32[0] = v35;
    *v21.i64 = v20 * 10000.0;
    *v21.i32 = *v21.i64;
    v22.i64[0] = 0x8000000080000000;
    v22.i64[1] = 0x8000000080000000;
    LODWORD(v17) = vbslq_s8(v22, v21, v33).u32[0];
  }

  v23 = 0;
  v24 = a1[3];
  if (v17 <= v24)
  {
    v24 = v17;
  }

  if (v17 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  if (*v5.i32 >= 0.000001)
  {
    v26 = *v5.i32;
  }

  else
  {
    v26 = 0.000001;
  }

  v27 = v25 / v26;
  v28 = a1[16] * v25;
  v29 = a1[15] * v27;
  v36[0] = a2;
  v36[1] = a3;
  v36[2] = a4;
  do
  {
    v30 = v36[v23];
    v31 = v28;
    if (*v5.i32 > 0.000001)
    {
      v31 = v29 * *v30;
    }

    *v30 = v31;
    ++v23;
  }

  while (v23 != 3);
  v32 = *MEMORY[0x277D85DE8];
}

void sub_240B29578(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B295BC(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v36 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a9 <= 1.0)
  {
    v12 = a8 < 0.0 || a8 > 1.0;
    if (!v12 && a9 > 0.0)
    {
      *&v33 = __PAIR64__(LODWORD(a4), LODWORD(a2));
      *(&v33 + 1) = __PAIR64__(LODWORD(a3), LODWORD(a6));
      *&v34 = __PAIR64__(LODWORD(a7), LODWORD(a5));
      *(&v34 + 2) = (1.0 - a2) - a3;
      *(&v34 + 3) = (1.0 - a4) - a5;
      v35 = (1.0 - a6) - a7;
      v31[0] = v33;
      v31[1] = v34;
      v32 = v35;
      if (sub_240B29844(v31))
      {
        result = 1;
      }

      else
      {
        v29[0] = a8 / a9;
        v29[1] = 1.0;
        v30 = ((1.0 - a8) - a9) / a9;
        v14 = COERCE_INT(fabs(v30)) > 2139095039;
        result = 1;
        if (COERCE_INT(fabs(a8 / a9)) <= 2139095039 && !v14)
        {
          v15 = 0;
          v16 = v31;
          do
          {
            v17 = 0;
            v18 = 0.0;
            do
            {
              v18 = v18 + (*(v16 + v17 * 4) * v29[v17]);
              ++v17;
            }

            while (v17 != 3);
            v19 = v18;
            *&v28[v15++] = v19;
            v16 = (v16 + 12);
          }

          while (v15 != 3);
          v21 = v28[0];
          v22 = 0;
          v23 = 0;
          v24 = v28[1];
          v25 = 0;
          v26 = 0;
          v27 = v28[2];
          sub_240B2977C(&v33, &v21, a1);
          result = 0;
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240B2977C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v13 = *MEMORY[0x277D85DE8];
  do
  {
    v4 = 0;
    v5 = (a2 + 4 * v3);
    v6 = v5[3];
    v12[0] = *v5;
    v12[1] = v6;
    v12[2] = v5[6];
    v7 = result;
    do
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v9 = v9 + (*(v7 + v8 * 4) * *&v12[v8]);
        ++v8;
      }

      while (v8 != 3);
      v10 = v9;
      *(a3 + 4 * v3 + 12 * v4++) = v10;
      v7 += 12;
    }

    while (v4 != 3);
    ++v3;
  }

  while (v3 != 3);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240B29844(float *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[8];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[3];
  v7 = a1[2];
  v8 = *a1;
  v9 = a1[1];
  v19[0] = v1 * v2 - v3 * v5;
  v19[1] = v7 * v5 - v9 * v2;
  v10 = v4;
  v11 = v6;
  v19[2] = v9 * v3 - v7 * v1;
  v20 = v3 * v10 - v11 * v2;
  v12 = v8;
  v21 = v12 * v2 - v7 * v10;
  v22 = v7 * v11 - v12 * v3;
  v23 = v11 * v5 - v1 * v10;
  v24 = v9 * v10 - v12 * v5;
  v25 = v12 * v1 - v9 * v11;
  v13 = v20 * v9 + v12 * v19[0] + v7 * v23;
  if (fabs(v13) >= 1.0e-10)
  {
    v15 = 0;
    v16 = 1.0 / v13;
    do
    {
      v17 = v16 * v19[v15];
      a1[v15++] = v17;
    }

    while (v15 != 9);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240B29978(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B2287C(result, a4);
  }

  return result;
}

void sub_240B299D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B299F4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B29A54(void *a1)
{
  *a1 = &unk_2852A1CB8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x245CCE590);
}

void *sub_240B29AC4(void *a1)
{
  *a1 = &unk_2852A1CB8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_240B29B14(uint64_t a1, int a2, int a3)
{
  v6 = sub_240B29BD0(a1);
  sub_240B29BD0(v6 + 200);
  *(a1 + 56) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  sub_240B25034(a1);
  *(a1 + 256) = 1;
  *(a1 + 216) = 1;
  *(a1 + 220) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = a3;
  return sub_240B25034(a1 + 200);
}

uint64_t sub_240B29BD0(uint64_t a1)
{
  *a1 = &unk_2852A1CB8;
  *(a1 + 16) = 0x100000001;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 53) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 68) = 0xD00000000;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 112) = &unk_2852A1260;
  *(a1 + 120) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B246DC(a1 + 112, &v3);
  *(a1 + 128) = &unk_2852A1A10;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0xD00000000;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B24808(a1 + 128, &v3);
  *(a1 + 152) = &unk_2852A1260;
  *(a1 + 160) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B246DC(a1 + 152, &v3);
  *(a1 + 168) = &unk_2852A1260;
  *(a1 + 176) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B246DC(a1 + 168, &v3);
  *(a1 + 184) = &unk_2852A1260;
  *(a1 + 192) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B246DC(a1 + 184, &v3);
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  (*(*a1 + 16))(a1, &v3);
  return a1;
}

void sub_240B29E74(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B29EA4(uint64_t a1)
{
  for (i = 0; i != -400; i -= 200)
  {
    *(a1 + i + 200) = &unk_2852A1CB8;
    v3 = *(a1 + i + 232);
    if (v3)
    {
      *(a1 + i + 240) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

char *sub_240B29F18(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_281503598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_281503598))
  {
    sub_240B29B14(&unk_27E5165E8, 1, 13);
    __cxa_atexit(sub_240B29EA4, &unk_27E5165E8, &dword_240ABC000);
    __cxa_guard_release(&qword_281503598);
  }

  return &unk_27E5165E8 + 200 * a1;
}

char *sub_240B29FC8(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_27E516910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E516910))
  {
    sub_240B29B14(&unk_27E516780, 1, 8);
    __cxa_atexit(sub_240B29EA4, &unk_27E516780, &dword_240ABC000);
    __cxa_guard_release(&qword_27E516910);
  }

  return &unk_27E516780 + 200 * a1;
}

void sub_240B2A078(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t, double *, int *))
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 != v4)
  {
    v8 = 0;
    if (a3(a2, v3, v4 - v3, v9, &v8) && v8 == 0)
    {
      memset(__p, 0, sizeof(__p));
      if (!sub_240B25260(v9, __p))
      {
        *(a1 + 9) = 0;
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_240B2A104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B2A11C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  sub_240B23590(&v35, a2, a3);
  if (v39)
  {
    *(a1 + 120) = v39;
  }

  else
  {
    sub_240B23590(&v30, a2, a3);
    if (v34)
    {
      *(a1 + 120) = v34;
    }

    else
    {
      sub_240B23590(&v25, a2, a3);
      if (v29)
      {
        *(a1 + 120) = v29;
      }

      else
      {
        v13 = v35;
        v6 = v37;
        v37 = 0;
        v7 = v32;
        v32 = 0;
        v8 = v27;
        v27 = 0;
        v14 = v36;
        v15 = v6;
        v16 = v38;
        v18 = v31;
        v19 = v7;
        v17 = v30;
        v20 = v33;
        v21 = v25;
        v22 = v26;
        v23 = v8;
        v24 = v28;
        *(a1 + 120) = 0;
        sub_240B2A358(a1, &v13);
        for (i = 104; i != -16; i -= 40)
        {
          sub_240B22320((&v13 + i));
        }

        if (!v29)
        {
          v10 = v27;
          v27 = 0;
          if (v10)
          {
            atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
            free(*(v10 - 32));
          }
        }
      }

      if (!v34)
      {
        v11 = v32;
        v32 = 0;
        if (v11)
        {
          atomic_fetch_add(&qword_27E519020, -*(v11 - 24));
          free(*(v11 - 32));
        }
      }
    }

    if (!v39)
    {
      v12 = v37;
      v37 = 0;
      if (v12)
      {
        atomic_fetch_add(&qword_27E519020, -*(v12 - 24));
        free(*(v12 - 32));
      }
    }
  }
}

void sub_240B2A2EC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 104);
  *(v1 - 104) = 0;
  if (!v3 || (atomic_fetch_add(&qword_27E519020, -*(v3 - 24)), free(*(v3 - 32)), !*(v1 - 40)))
  {
    v4 = *(v1 - 56);
    *(v1 - 56) = 0;
    if (v4)
    {
      atomic_fetch_add(&qword_27E519020, -*(v4 - 24));
      free(*(v4 - 32));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B2A358(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  do
  {
    v5 = a1 + v4;
    v6 = *(a2 + v4);
    *(v5 + 16) = *(a2 + v4 + 16);
    *v5 = v6;
    v7 = *(a2 + v4 + 24);
    *(a2 + v4 + 24) = 0;
    v8 = *(a1 + v4 + 24);
    *(v5 + 24) = v7;
    if (v8)
    {
      atomic_fetch_add(&qword_27E519020, -*(v8 - 24));
      free(*(v8 - 32));
    }

    *(v5 + 32) = *(a2 + v4 + 32);
    v4 += 40;
  }

  while (v4 != 120);
  return a1;
}

uint64_t sub_240B2A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240B2AC3C, sub_240B2A49C, 1, a2);
  }

  v5 = 1;
  do
  {
    result = sub_240B2A49C(v6, v5++);
  }

  while (v3 != v5);
  return result;
}

uint64_t sub_240B2A49C(uint64_t a1, unsigned int a2)
{
  v7 = 0;
  v120[3] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v9 = *(v8 + 8);
  v10 = **v8;
  v11 = v10[2];
  v12 = v10[3];
  v13 = v11 * (a2 - 1);
  v14 = v10[8];
  v15 = v10[13];
  v16 = v11 * a2;
  v120[0] = v12 + v16;
  v120[1] = v14 + v16;
  v17 = v15 + v16;
  v120[2] = v15 + v16;
  result = v11 * (a2 + 1);
  v19 = v9[3];
  v20 = v9[2] * a2;
  v21 = v19 + v20;
  v22 = v9[8];
  v23 = v22 + v20;
  v119[0] = v19 + v20;
  v119[1] = v22 + v20;
  v24 = v9[13];
  v25 = v24 + v20;
  v119[2] = v24 + v20;
  v26 = **(v8 + 16);
  v27 = v26 - 1;
  v118[0] = 0;
  v118[1] = v26 - 1;
  do
  {
    v28 = 0;
    v29 = v118[v7];
    do
    {
      *(v119[v28] + 4 * v29) = *(v120[v28] + 4 * v29);
      ++v28;
    }

    while (v28 != 3);
    ++v7;
  }

  while (v7 != 2);
  __asm
  {
    FMOV            V0.2S, #-4.0
    FMOV            V1.2S, #3.0
  }

  if ((v26 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v44 = 1;
  }

  else
  {
    v36 = 0;
    v37 = v20 + 4;
    v38 = v24 + v20 + 4;
    v39 = v22 + v37;
    v40 = v19 + v37;
    v41 = vdup_n_s32(0x3D561170u);
    v42 = vdup_n_s32(0x3E505590u);
    v43 = vdup_n_s32(0x3D092563u);
    v44 = 1;
    do
    {
      v45 = **(v8 + 24);
      v2.i32[0] = *(v12 + v16 + 8 + v36 - 4);
      v46 = vdup_lane_s32(v2, 0);
      v47 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v41, v2.f32[0]), v42, (*(v12 + v16 + v36) + *(v12 + v16 + 8 + v36)) + (*(v12 + v13 + 8 + v36 - 4) + *(v12 + result + 8 + v36 - 4))), v43, (*(v12 + v13 + v36) + *(v12 + v13 + 8 + v36)) + (*(v12 + result + v36) + *(v12 + result + 8 + v36)));
      v48 = v45 + 2;
      v49 = vld1_dup_f32(v45++);
      v50 = vmaxnm_f32(vabs_f32(vdiv_f32(vsub_f32(v46, v47), v49)), 0x3F0000003F000000);
      v4.i32[0] = *(v14 + v16 + 8 + v36 - 4);
      v51 = vdup_lane_s32(v4, 0);
      *v3.f32 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v41, *v4.i32), v42, (*(v14 + v16 + v36) + *(v14 + v16 + 8 + v36)) + (*(v14 + v13 + 8 + v36 - 4) + *(v14 + result + 8 + v36 - 4))), v43, (*(v14 + v13 + v36) + *(v14 + v13 + 8 + v36)) + (*(v14 + result + v36) + *(v14 + result + 8 + v36)));
      v52 = vld1_dup_f32(v45);
      v53 = vmaxnm_f32(v50, vabs_f32(vdiv_f32(vsub_f32(v51, *v3.f32), v52)));
      v5.i32[0] = *(v17 + v36 + 4);
      v54 = vdup_lane_s32(*v5.f32, 0);
      v55 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v41, v5.f32[0]), v42, (*(v17 + v36) + *(v17 + v36 + 8)) + (*(v15 + v13 + v36 + 4) + *(v15 + result + v36 + 4))), v43, (*(v15 + v13 + v36) + *(v15 + v13 + v36 + 8)) + (*(v15 + result + v36) + *(v15 + result + v36 + 8)));
      v56 = vld1_dup_f32(v48);
      v2 = vsub_f32(v54, v55);
      v57 = vmaxnm_f32(vmla_f32(_D1, _D0, vmaxnm_f32(v53, vabs_f32(vdiv_f32(v2, v56)))), 0);
      *(v40 + v36) = vmla_f32(v46, v57, vsub_f32(v47, v46)).u32[0];
      *(v39 + v36) = vmla_f32(v51, v57, vsub_f32(*v3.f32, v51)).u32[0];
      *v6.f32 = vmla_f32(v54, v57, vsub_f32(v55, v54));
      *(v38 + v36) = v6.i32[0];
      ++v44;
      v27 = **(v8 + 16) - 1;
      if (v27 >= 4)
      {
        v58 = 4;
      }

      else
      {
        v58 = **(v8 + 16) - 1;
      }

      v36 += 4;
    }

    while (v44 < v58);
  }

  if (v44 + 4 <= v27)
  {
    v59 = 4 * v44;
    v60 = v12 + v13 + 4;
    v61 = v12 + v16 + 4;
    v62 = result + v15 - 4;
    v63 = v12 + result + 4;
    v64 = v14 + v13 + 4;
    v65 = vdupq_n_s32(0x3D561170u);
    v66 = v16 + v15 - 4;
    v67 = v14 + v16 + 4;
    v68 = vdupq_n_s32(0x3E505590u);
    v69 = vdupq_n_s32(0x3D092563u);
    v70 = v14 + result + 4;
    v71.i64[0] = 0x3F0000003F000000;
    v71.i64[1] = 0x3F0000003F000000;
    v72 = v13 + v15 - 4;
    __asm
    {
      FMOV            V6.4S, #-4.0
      FMOV            V7.4S, #3.0
    }

    v75 = v21;
    v76 = v23;
    v77 = v25;
    do
    {
      v78 = **(v8 + 24);
      v79 = *(v61 + v59 - 4);
      v80 = v78 + 2;
      v81 = vld1q_dup_f32(v78++);
      v82 = vmlaq_f32(vmlaq_f32(vmulq_f32(v79, v65), v68, vaddq_f32(vaddq_f32(*(v61 + v59 - 8), *(v61 + v59)), vaddq_f32(*(v60 + v59 - 4), *(v63 + v59 - 4)))), v69, vaddq_f32(vaddq_f32(*(v60 + v59 - 8), *(v60 + v59)), vaddq_f32(*(v63 + v59 - 8), *(v63 + v59))));
      v83 = *(v67 + v59 - 4);
      v84 = vmlaq_f32(vmlaq_f32(vmulq_f32(v83, v65), v68, vaddq_f32(vaddq_f32(*(v67 + v59 - 8), *(v67 + v59)), vaddq_f32(*(v64 + v59 - 4), *(v70 + v59 - 4)))), v69, vaddq_f32(vaddq_f32(*(v64 + v59 - 8), *(v64 + v59)), vaddq_f32(*(v70 + v59 - 8), *(v70 + v59))));
      v85 = vld1q_dup_f32(v78);
      v86 = *(v66 + v59 + 4);
      v87 = vmaxnmq_f32(vmaxnmq_f32(vabsq_f32(vdivq_f32(vsubq_f32(v79, v82), v81)), v71), vabsq_f32(vdivq_f32(vsubq_f32(v83, v84), v85)));
      v6 = vmlaq_f32(vmlaq_f32(vmulq_f32(v86, v65), v68, vaddq_f32(vaddq_f32(*(v66 + v59), *(v66 + v59 + 8)), vaddq_f32(*(v72 + v59 + 4), *(v62 + v59 + 4)))), v69, vaddq_f32(vaddq_f32(*(v72 + v59), *(v72 + v59 + 8)), vaddq_f32(*(v62 + v59), *(v62 + v59 + 8))));
      v88 = vld1q_dup_f32(v80);
      v3 = vsubq_f32(v86, v6);
      v89 = vmaxnmq_f32(vmlaq_f32(_Q7, _Q6, vmaxnmq_f32(v87, vabsq_f32(vdivq_f32(v3, v88)))), 0);
      *(v75 + v59) = vmlaq_f32(v79, v89, vsubq_f32(v82, v79));
      v5 = vmlaq_f32(v83, v89, vsubq_f32(v84, v83));
      *(v76 + v59) = v5;
      *(v77 + v59) = vmlaq_f32(v86, v89, vsubq_f32(v6, v86));
      v90 = v44 + 8;
      v44 += 4;
      v77 += 16;
      v76 += 16;
      v75 += 16;
      v60 += 16;
      v61 += 16;
      v62 += 16;
      v63 += 16;
      v27 = **(v8 + 16) - 1;
      v64 += 16;
      v66 += 16;
      v67 += 16;
      v70 += 16;
      v72 += 16;
    }

    while (v90 <= v27);
  }

  if (v44 < v27)
  {
    v91 = 4 * v44;
    v92 = v12 + v13 + 4;
    v93 = v16 + 4;
    v94 = vdup_n_s32(0x3D561170u);
    v95 = vdup_n_s32(0x3E505590u);
    v96 = v12 + v16 + 4;
    v97 = vdup_n_s32(0x3D092563u);
    v98 = result + v15 - 4;
    v99 = result + 4;
    v100 = v12 + result + 4;
    result = v14 + v13 + 4;
    v101 = v16 + v15 - 4;
    v102 = v14 + v93;
    v103 = v14 + v99;
    v104 = v13 + v15 - 4;
    v105 = v44;
    do
    {
      v106 = **(v8 + 24);
      v3.i32[0] = *(v96 + v91 - 4);
      v107 = vdup_lane_s32(*v3.f32, 0);
      v108 = v106 + 2;
      v109 = vld1_dup_f32(v106++);
      v5.i32[0] = *(v102 + v91 - 4);
      v110 = vdup_lane_s32(*v5.f32, 0);
      v111 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v94, v3.f32[0]), v95, (*(v96 + 4 * v44 - 8) + *(v96 + 4 * v44)) + (*(v92 + 4 * v44 - 4) + *(v100 + 4 * v44 - 4))), v97, (*(v92 + 4 * v44 - 8) + *(v92 + 4 * v44)) + (*(v100 + 4 * v44 - 8) + *(v100 + 4 * v44)));
      v112 = vld1_dup_f32(v106);
      *v3.f32 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v94, v5.f32[0]), v95, (*(v102 + 4 * v44 - 8) + *(v102 + 4 * v44)) + (*(result + 4 * v44 - 4) + *(v103 + 4 * v44 - 4))), v97, (*(result + 4 * v44 - 8) + *(result + 4 * v44)) + (*(v103 + 4 * v44 - 8) + *(v103 + 4 * v44)));
      v6.i32[0] = *(v101 + v91 + 4);
      v113 = vdup_lane_s32(*v6.f32, 0);
      v114 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v94, v6.f32[0]), v95, (*(v101 + 4 * v44) + *(v101 + 4 * v44 + 8)) + (*(v104 + 4 * v44 + 4) + *(v98 + 4 * v44 + 4))), v97, (*(v104 + 4 * v44) + *(v104 + 4 * v44 + 8)) + (*(v98 + 4 * v44) + *(v98 + 4 * v44 + 8)));
      v115 = vld1_dup_f32(v108);
      v116 = vmaxnm_f32(vmla_f32(_D1, _D0, vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vabs_f32(vdiv_f32(vsub_f32(v107, v111), v109)), 0x3F0000003F000000), vabs_f32(vdiv_f32(vsub_f32(v110, *v3.f32), v112))), vabs_f32(vdiv_f32(vsub_f32(v113, v114), v115)))), 0);
      *(v21 + 4 * v44) = vmla_f32(v107, v116, vsub_f32(v111, v107)).u32[0];
      *(v23 + 4 * v44) = vmla_f32(v110, v116, vsub_f32(*v3.f32, v110)).u32[0];
      *(v25 + 4 * v44) = vmla_f32(v113, v116, vsub_f32(v114, v113)).u32[0];
      ++v105;
      v25 += 4;
      v23 += 4;
      v21 += 4;
      v92 += 4;
      v96 += 4;
      v98 += 4;
      v100 += 4;
      result += 4;
      v101 += 4;
      v102 += 4;
      v103 += 4;
      v104 += 4;
    }

    while (v105 < **(v8 + 16) - 1);
  }

  v117 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240B2AC3C(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL sub_240B2AC6C(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 8);
  if (v1 == byte_240C85334[v2] && (v3 = *(a1 + 21), v3 == byte_240C85338[v2]) && (v4 = *(a1 + 16), v1 == byte_240C85334[v4]) && v3 == byte_240C85338[v4] && (v5 = *(a1 + 12), v1 == byte_240C85334[v5]))
  {
    return v3 == byte_240C85338[v5];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240B2ACE4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a2;
  v27 = a1;
  v4 = *a2;
  v3 = a2[1];
  v25 = v4;
  if (v3 >= 3 && v4 >= 3)
  {
    sub_240B2A11C(v22, v4, v3);
    result = v24;
    if (v24)
    {
      goto LABEL_7;
    }

    sub_240B2A358(v19, v22);
    v10 = 0;
    v11 = 4 * v4;
    do
    {
      v12 = 0;
      v29 = 0;
      v30 = (v3 - 1);
      do
      {
        memcpy((v21[5 * v10] + v20 * (&v29)[v12]), (*&a2[10 * v10 + 6] + *(a2 + 2) * (&v29)[v12]), v11);
        ++v12;
      }

      while (v12 != 2);
      ++v10;
    }

    while (v10 != 3);
    v29 = &v26;
    v30 = v19;
    v31 = &v25;
    v32 = &v27;
    v13 = (v3 - 1);
    if (a3)
    {
      sub_240B2A408(a3, v13, &v29);
    }

    else
    {
      v28[0] = 0;
      v28[1] = v28;
      sub_240B2A408(v28, v13, &v29);
    }

    v14 = 0;
    v15 = v26;
    do
    {
      sub_240B59888(&v19[v14 * 4], &v15[v14]);
      v14 += 10;
    }

    while (v14 != 30);
    for (i = 104; i != -16; i -= 40)
    {
      sub_240B22320(&v19[i]);
    }

    if (!v24)
    {
      v17 = &v23;
      v18 = -120;
      do
      {
        sub_240B22320(v17);
        v17 -= 5;
        v18 += 40;
      }

      while (v18);
    }
  }

  result = 0;
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240B2AEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a11 + i));
  }

  if (!a41)
  {
    v43 = &a39;
    v44 = -120;
    do
    {
      sub_240B22320(v43);
      v43 -= 5;
      v44 += 40;
    }

    while (v44);
  }

  _Unwind_Resume(a1);
}

void sub_240B2AF10(void *a1, void *a2, uint64_t a3, uint64_t a4, float *a5, float *a6, uint64_t a7, int **a8, float a9)
{
  v84 = *MEMORY[0x277D85DE8];
  if (sub_240B2AC6C(a7))
  {
    v18 = a1[3];
    if (v18)
    {
      v19 = 0;
      v20 = *a5 * a9;
      v21 = a5[1] * a9;
      v22 = a5[2] * a9;
      v23 = *a6;
      v24 = a6[2];
      v25 = a1[2];
      do
      {
        if (v25)
        {
          v26 = 0;
          v27 = a2[2] * (a1[1] + v19) + 4 * *a1;
          v28 = (a2[13] + v27);
          v29 = (a2[3] + v27);
          v30 = (a2[8] + v27);
          v31 = (*(*a4 + 152) + *(*a4 + 144) * v19);
          v32 = (*(*a4 + 24) + *(*a4 + 16) * v19);
          v33 = (*(*a4 + 88) + *(*a4 + 80) * v19);
          do
          {
            v34 = *v33++;
            v35 = v34;
            v36 = *v32++;
            v37 = v36;
            v38 = *v31++;
            v39 = vmulq_n_f32(vcvtq_f32_s32(v37), v21);
            *v30++ = v39;
            *v29++ = vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_s32(v35), v20), v39, v23);
            *v28++ = vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_s32(v38), v22), v39, v24);
            v26 += 4;
            v25 = a1[2];
          }

          while (v26 < v25);
          v18 = a1[3];
        }

        ++v19;
      }

      while (v19 < v18);
    }
  }

  else
  {
    v40 = 0;
    v82 = 1;
    v83 = 2;
    do
    {
      v41 = *(&v82 + v40);
      v42 = *(a7 + 8 + 4 * v41);
      v43 = *(a7 + 21) - byte_240C85338[v42];
      v44 = a1[3] >> v43;
      if (v44)
      {
        v45 = 0;
        v46 = *(a7 + 20) - byte_240C85334[v42];
        v47 = *a1 >> v46;
        v48 = a1[1] >> v43;
        v49 = a1[2] >> v46;
        v50 = *a4 + (((v41 < 2) ^ v41) << 6);
        v51 = a5[v41] * a9;
        v52 = &a2[5 * v41];
        v53 = 4 * v47;
        do
        {
          if (v49)
          {
            v54 = 0;
            v55 = (v52[3] + v53 + a2[2] * v48);
            v56 = (*(v50 + 24) + *(v50 + 16) * v45);
            do
            {
              v57 = *v56++;
              *v55++ = vmulq_n_f32(vcvtq_f32_s32(v57), v51);
              v54 += 4;
            }

            while (v54 < v49);
          }

          ++v45;
          ++v48;
        }

        while (v45 != v44);
      }

      v40 += 4;
    }

    while (v40 != 12);
    v18 = a1[3];
  }

  if (a8[16] >= 2)
  {
    if (v18)
    {
      v59 = 0;
      v60 = a1[2];
      do
      {
        if (v60)
        {
          v61 = 0;
          v62 = *(a7 + 21);
          v63 = *(*a4 + 88) + (v59 >> (v62 - byte_240C85338[*(a7 + 8)])) * *(*a4 + 80);
          v64 = *(*a4 + 24) + (v59 >> (v62 - byte_240C85338[*(a7 + 12)])) * *(*a4 + 16);
          v65 = *(a3 + 24) + *(a3 + 16) * (a1[1] + v59) + *a1;
          v66 = *(*a4 + 152) + (v59 >> (v62 - byte_240C85338[*(a7 + 16)])) * *(*a4 + 144);
          do
          {
            v68 = *a8;
            v67 = a8[1];
            if (*a8 == v67)
            {
              v69 = 0;
            }

            else
            {
              v69 = 0;
              do
              {
                v70 = *v68++;
                if (*(v63 + 4 * (v61 >> (*(a7 + 20) - byte_240C85334[*(a7 + 8)]))) > v70)
                {
                  ++v69;
                }
              }

              while (v68 != v67);
            }

            v72 = a8[3];
            v71 = a8[4];
            if (v72 == v71)
            {
              v73 = 0;
            }

            else
            {
              v73 = 0;
              v74 = a8[3];
              do
              {
                v75 = *v74++;
                if (*(v64 + 4 * (v61 >> (*(a7 + 20) - byte_240C85334[*(a7 + 12)]))) > v75)
                {
                  ++v73;
                }
              }

              while (v74 != v71);
            }

            v76 = a8[6];
            v77 = a8[7];
            if (v76 == v77)
            {
              v78 = 0;
            }

            else
            {
              v78 = 0;
              v79 = a8[6];
              do
              {
                v80 = *v79++;
                if (*(v66 + 4 * (v61 >> (*(a7 + 20) - byte_240C85334[*(a7 + 16)]))) > v80)
                {
                  ++v78;
                }
              }

              while (v79 != v77);
            }

            *(v65 + v61++) = v78 + v69 + v69 * ((v77 - v76) >> 2) + (v78 + v69 + v69 * ((v77 - v76) >> 2)) * ((v71 - v72) >> 2) + v73;
            v60 = a1[2];
          }

          while (v61 < v60);
          v18 = a1[3];
        }

        ++v59;
      }

      while (v59 < v18);
    }
  }

  else if (v18)
  {
    v58 = 0;
    do
    {
      bzero((*(a3 + 24) + *(a3 + 16) * (v58 + a1[1]) + *a1), a1[2]);
      ++v58;
    }

    while (v58 < a1[3]);
  }

  v81 = *MEMORY[0x277D85DE8];
}

uint64_t sub_240B2B35C(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 24))(a2, 0, a1 + 8);
  if (!result)
  {
    if ((*(*a2 + 64))(a2, *(a1 + 8)))
    {
      return 0;
    }

    else
    {
      result = (*(*a2 + 32))(a2, 0x80000200800000E0, 0x10E80001000, 224, a1 + 12);
      if (!result)
      {
        v5 = *(*a2 + 32);

        return v5(a2, 0x8000000480000003, 0x127000000A1, 3, a1 + 16);
      }
    }
  }

  return result;
}

uint64_t *sub_240B2B4A8(uint64_t *result, unint64_t a2, int *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return result;
    }

    v11 = v4 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = result[2];
    if (v6 > (v7 - v3) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 1;
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B228D4(v10);
      }

      sub_240B228BC();
    }

    v12 = *a3;
    v13 = (v6 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v6 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v3 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_240C111D0)));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v16 - 1) = v12;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_240C111C0)))).i32[1])
      {
        *v16 = v12;
        v16[1] = v12;
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v11 = v3 + 4 * v6;
  }

  result[1] = v11;
  return result;
}

void sub_240B2B6EC(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

uint64_t sub_240B2B820(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (*(result + 32) + 16 * a2);
  if (*(result + 96) == 1 && *(result + 128) != a2)
  {
    v4 = *(result + 100);
    v5 = a3 >= v4;
    v6 = a3 - v4;
    if (v5)
    {
      v3 = (result + 108);
    }

    if (v5)
    {
      a3 = v6;
    }
  }

  v7 = *v3;
  v8 = v3[1];
  v5 = a3 >= v8;
  v9 = a3 - v8;
  if (v5)
  {
    v10 = v3[2] + v3[3];
    v7 = v10 + v7 - v10 + (v9 >> v10) + 1;
  }

  v11 = *(result + 136);
  if (v11 <= v7)
  {
    v11 = v7;
  }

  *(result + 136) = v11;
  return result;
}

uint64_t sub_240B2B890(unint64_t *a1)
{
  v2 = a1[2];
  if (v2 > a1[3])
  {
    sub_240B244C4(a1);
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v3 = a1[1];
    v4 = *a1 | (*v2 << v3);
    a1[2] = v2 + ((63 - v3) >> 3);
    v5 = v3 | 0x38;
  }

  v6 = v5 - 1;
  *a1 = v4 >> 1;
  a1[1] = v5 - 1;
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  if (v8 > a1[3])
  {
    sub_240B244C4(a1);
    v9 = *a1;
    v10 = a1[1];
  }

  else
  {
    v9 = (*v8 << v6) | (v4 >> 1);
    a1[2] = v8 + ((64 - v5) >> 3);
    v10 = v6 | 0x38;
  }

  v11 = v10 - 3;
  *a1 = v9 >> 3;
  a1[1] = v10 - 3;
  v12 = v9 & 7;
  if ((v9 & 7) == 0)
  {
    return 1;
  }

  v13 = a1[2];
  if (v13 > a1[3])
  {
    sub_240B244C4(a1);
    v14 = *a1;
    v15 = a1[1];
  }

  else
  {
    v14 = (*v13 << v11) | (v9 >> 3);
    a1[2] = v13 + ((66 - v10) >> 3);
    v15 = v11 | 0x38;
  }

  *a1 = v14 >> v12;
  a1[1] = v15 - v12;
  return (1 << v12) + (v14 & ~(-1 << v12));
}

void *sub_240B2B9C0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_240B2287C(result, a2);
  }

  return result;
}

void sub_240B2BA1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B2BA38(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B2287C(result, a4);
  }

  return result;
}

void sub_240B2BA98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B2BAB4(unint64_t a1, _DWORD *a2, unint64_t *a3)
{
  v7 = a3[2];
  v6 = a3[3];
  if (v7 > v6)
  {
    sub_240B244C4(a3);
    v10 = a3[2];
    v6 = a3[3];
  }

  else
  {
    v8 = a3[1];
    v9 = *a3 | (*v7 << v8);
    v10 = (v7 + ((63 - v8) >> 3));
    *a3 = v9;
    a3[1] = v8 | 0x38;
    a3[2] = v10;
  }

  v11 = 64 - __clz(a1);
  if (v10 > v6)
  {
    sub_240B244C4(a3);
    v13 = *a3;
    v14 = a3[1];
  }

  else
  {
    v12 = a3[1];
    v13 = *a3 | (*v10 << v12);
    a3[2] = v10 + ((63 - v12) >> 3);
    v14 = v12 | 0x38;
  }

  v15 = v13 & ~(-1 << v11);
  v16 = v14 - v11;
  v17 = v13 >> v11;
  *a3 = v13 >> v11;
  a3[1] = v16;
  if (v15 == a1)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = __clz(v15 + 1);
    v21 = v20 ^ 0x3F;
    v22 = 64 - v20;
    if (((v15 + 1) & v15) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    v24 = a3[2];
    if (v24 > a3[3])
    {
      sub_240B244C4(a3);
      v25 = *a3;
      v26 = a3[1];
    }

    else
    {
      v25 = (*v24 << v16) | v17;
      a3[2] = v24 + ((63 - v16) >> 3);
      v26 = v16 | 0x38;
    }

    v19 = v25 & ~(-1 << v23);
    v27 = v26 - v23;
    v28 = v25 >> v23;
    *a3 = v28;
    a3[1] = v26 - v23;
    v29 = v15 - v19;
    if (v15 < v19)
    {
      return 1;
    }

    v31 = __clz(v29 + 1) ^ 0x3F;
    if (((v29 + 1) & v29) != 0)
    {
      v32 = v31 + 1;
    }

    else
    {
      v32 = v31;
    }

    v33 = a3[2];
    if (v33 > a3[3])
    {
      v36 = v32;
      sub_240B244C4(a3);
      v32 = v36;
      v34 = *a3;
      v35 = a3[1];
    }

    else
    {
      v34 = (*v33 << v27) | v28;
      a3[2] = v33 + ((63 - v27) >> 3);
      v35 = v27 | 0x38;
    }

    v18 = v34 & ~(-1 << v32);
    *a3 = v34 >> v32;
    a3[1] = v35 - v32;
  }

  result = 1;
  if (v19 + v18 <= v15)
  {
    *a2 = v15;
    a2[1] = 1 << v15;
    a2[2] = v19;
    a2[3] = v18;
    return 0;
  }

  return result;
}

uint64_t sub_240B2BCB4(uint64_t a1)
{
  *a1 = &unk_2852A2298;
  *(a1 + 20) = xmmword_240C11510;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B2B35C(a1, &v3);
  return a1;
}

uint64_t sub_240B2BD40(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a3;
  v275 = *MEMORY[0x277D85DE8];
  v10 = sub_240B546E4(a1, a3 + 88);
  if (v10)
  {
    goto LABEL_2;
  }

  if (*(v7 + 96) == 1)
  {
    v10 = sub_240B2BAB4(8uLL, (v7 + 108), a1);
    if (v10)
    {
LABEL_2:
      v11 = v10;
      goto LABEL_3;
    }

    ++a2;
    if (*(v7 + 96) & 1) != 0 && (a5)
    {
      goto LABEL_307;
    }
  }

  v263 = 1;
  v14 = *(a4 + 8) - *a4;
  if (a2 <= v14)
  {
    if (a2 < v14)
    {
      *(a4 + 8) = *a4 + a2;
    }
  }

  else
  {
    sub_240B26918(a4, a2 - v14);
  }

  if (a2 >= 2)
  {
    v11 = sub_240B30E84(a4, &v263, a1);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  *(v7 + 128) = *(*(a4 + 8) - 1);
  v15 = a1[2];
  if (v15 > a1[3])
  {
    sub_240B244C4(a1);
    v17 = *a1;
    v18 = a1[1];
  }

  else
  {
    v16 = a1[1];
    v17 = *a1 | (*v15 << v16);
    a1[2] = v15 + ((63 - v16) >> 3);
    v18 = v16 | 0x38;
  }

  v19 = v18 - 1;
  *a1 = v17 >> 1;
  a1[1] = v18 - 1;
  *(v7 + 80) = v17 & 1;
  if (v17)
  {
    v23 = 15;
  }

  else
  {
    v20 = a1[2];
    if (v20 > a1[3])
    {
      sub_240B244C4(a1);
      v21 = *a1;
      v22 = a1[1];
    }

    else
    {
      v21 = (*v20 << v19) | (v17 >> 1);
      a1[2] = v20 + ((64 - v18) >> 3);
      v22 = v19 | 0x38;
    }

    *a1 = v21 >> 2;
    a1[1] = v22 - 2;
    v23 = (v21 & 3) + 5;
  }

  *(v7 + 81) = v23;
  v24 = v263;
  sub_240B2D33C((v7 + 32), v263);
  v25 = *(v7 + 81);
  v27 = *(v7 + 32);
  v26 = *(v7 + 40);
  if (v27 != v26)
  {
    do
    {
      if (sub_240B2BAB4(v25, v27, a1))
      {
        goto LABEL_307;
      }

      v27 += 4;
    }

    while (v27 != v26);
    LOBYTE(v25) = *(v7 + 81);
  }

  LODWORD(v273) = -1;
  sub_240B2B4A8((v7 + 56), v24, &v273);
  v259 = v24;
  v260 = 1 << v25;
  if (*(v7 + 80) != 1)
  {
    v36 = sub_240C0C5EC(8 * v24 * (1 << *(v7 + 81)), (atomic_fetch_add_explicit(dword_27E519008, 1u, memory_order_relaxed) & 0xF) << 7);
    v37 = *v7;
    *v7 = v36;
    if (v37)
    {
      atomic_fetch_add(&qword_27E519020, -*(v37 - 24));
      free(*(v37 - 32));
      v38 = *v7;
      if (!v24)
      {
        goto LABEL_317;
      }
    }

    else
    {
      v38 = v36;
      if (!v24)
      {
        goto LABEL_317;
      }
    }

    v44 = 0;
    v257 = v38;
    v250 = v7;
LABEL_50:
    v267[0] = 0;
    v267[1] = 0;
    v268 = 0;
    v45 = a1[2];
    if (v45 > a1[3])
    {
      sub_240B244C4(a1);
      v47 = *a1;
      v48 = a1[1];
    }

    else
    {
      v46 = a1[1];
      v47 = *a1 | (*v45 << v46);
      a1[2] = v45 + ((63 - v46) >> 3);
      v48 = v46 | 0x38;
      *a1 = v47;
      a1[1] = v46 | 0x38;
    }

    v49 = v48 - 1;
    v50 = v47 >> 1;
    *a1 = v47 >> 1;
    a1[1] = v48 - 1;
    if (v47)
    {
      *&v273 = 0;
      v62 = a1[2];
      if (v62 > a1[3])
      {
        sub_240B244C4(a1);
        v63 = *a1;
        v65 = a1[1];
      }

      else
      {
        v63 = (*v62 << v49) | v50;
        v64 = v62 + ((64 - v48) >> 3);
        v65 = v49 | 0x38;
        *a1 = v63;
        a1[1] = v49 | 0x38;
        a1[2] = v64;
      }

      v66 = 0;
      v67 = 0;
      *a1 = v63 >> 1;
      a1[1] = v65 - 1;
      do
      {
        v68 = sub_240B2B890(a1);
        *(&v273 + v66) = v68;
        if (v68 > v67)
        {
          v67 = v68;
        }

        v66 += 4;
      }

      while (4 * (v63 & 1) + 4 != v66);
      sub_240B245C8(v267, (v67 + 1));
      v38 = v257;
      v69 = v273;
      if ((v63 & 1) == 0)
      {
        v70 = v267[0];
        *(v267[0] + v273) = 4096;
        goto LABEL_121;
      }

      v91 = SDWORD1(v273);
      if (v273 != DWORD1(v273))
      {
        v92 = a1[2];
        if (v92 > a1[3])
        {
          sub_240B244C4(a1);
          v94 = *a1;
          v95 = a1[1];
        }

        else
        {
          v93 = a1[1];
          v94 = *a1 | (*v92 << v93);
          a1[2] = v92 + ((63 - v93) >> 3);
          v95 = v93 | 0x38;
          *a1 = v94;
          a1[1] = v93 | 0x38;
        }

        *a1 = v94 >> 12;
        a1[1] = v95 - 12;
        v96 = v94 & 0xFFF;
        v70 = v267[0];
        *(v267[0] + v69) = v96;
        *&v70[4 * v91] = 4096 - v96;
        goto LABEL_121;
      }

      goto LABEL_305;
    }

    v51 = a1[2];
    if (v51 > a1[3])
    {
      sub_240B244C4(a1);
      v52 = *a1;
      v54 = a1[1];
    }

    else
    {
      v52 = (*v51 << v49) | v50;
      v53 = v51 + ((64 - v48) >> 3);
      v54 = v49 | 0x38;
      *a1 = v52;
      a1[1] = v49 | 0x38;
      a1[2] = v53;
    }

    v55 = v54 - 1;
    v56 = v52 >> 1;
    *a1 = v52 >> 1;
    a1[1] = v55;
    if (v52)
    {
      v71 = sub_240B2B890(a1);
      sub_240B226FC(&v273, v71 + 1);
      *v267 = v273;
      v268 = v274;
      v70 = v273;
      goto LABEL_121;
    }

    for (i = 0; i != 3; ++i)
    {
      v58 = a1[2];
      if (v58 > a1[3])
      {
        sub_240B244C4(a1);
        v59 = *a1;
        v61 = a1[1];
      }

      else
      {
        v59 = (*v58 << v55) | v56;
        v60 = v58 + ((63 - v55) >> 3);
        v61 = v55 | 0x38;
        *a1 = v59;
        a1[1] = v55 | 0x38;
        a1[2] = v60;
      }

      v55 = v61 - 1;
      v56 = v59 >> 1;
      *a1 = v59 >> 1;
      a1[1] = v61 - 1;
      if ((v59 & 1) == 0)
      {
        break;
      }
    }

    v72 = a1[2];
    if (v72 > a1[3])
    {
      sub_240B244C4(a1);
      v73 = *a1;
      v74 = a1[1];
    }

    else
    {
      v73 = (*v72 << v55) | v56;
      v74 = v55 | 0x38;
      *a1 = v73;
      a1[1] = v74;
      a1[2] = v72 + ((64 - v61) >> 3);
    }

    *a1 = v73 >> i;
    a1[1] = v74 - i;
    v255 = (1 << i) | v73 & ~(-1 << i);
    if (v255 > 0xE)
    {
      goto LABEL_305;
    }

    v75 = sub_240B2B890(a1);
    sub_240B245C8(v267, (v75 + 3));
    v76 = (v267[1] - v267[0]) >> 2;
    sub_240B2B9C0(&v273, v76);
    v252 = v44;
    LODWORD(v269[0]) = 0;
    sub_240B22768(__p, v76);
    v253 = *(&v273 + 1);
    v77 = v273;
    if (*(&v273 + 1) == v273)
    {
      goto LABEL_300;
    }

    v78 = 0;
    v79 = __p[0];
    v80 = (*(&v273 + 1) - v273) >> 2;
    v81 = -1;
    v82 = 0xFFFFFFFFLL;
    do
    {
      v83 = a1[2];
      if (v83 > a1[3])
      {
        sub_240B244C4(a1);
        v85 = *a1;
        v86 = a1[1];
      }

      else
      {
        v84 = a1[1];
        v85 = *a1 | (*v83 << v84);
        a1[2] = v83 + ((63 - v84) >> 3);
        v86 = v84 | 0x38;
        *a1 = v85;
        a1[1] = v84 | 0x38;
      }

      v87 = &unk_240C8140B + 2 * (v85 & 0x7F);
      v88 = *v87;
      *a1 = v85 >> v88;
      a1[1] = v86 - v88;
      v89 = v87[1];
      v77[v78] = v89;
      if (v89 == 13)
      {
        v90 = sub_240B2B890(a1);
        v79[v78] = v90 + 5;
        v78 += (v90 + 3);
      }

      else
      {
        if (v81 < v89)
        {
          v82 = v78;
        }

        if (v81 <= v89)
        {
          v81 = v89;
        }
      }

      ++v78;
    }

    while (v78 < v80);
    if ((v82 & 0x80000000) != 0 || v82 + 1 < v80 && v77[v82 + 1] == 4097)
    {
LABEL_300:
      v115 = __p[0];
      goto LABEL_301;
    }

    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = __p[0];
    v70 = v267[0];
    v102 = *(&v273 + 1);
    v103 = v273;
    v104 = v253;
    while (1)
    {
      v105 = v101[v97];
      if (v105)
      {
        v98 = v105 - 1;
        if (v97)
        {
          v99 = *&v70[4 * v97 - 4];
        }

        else
        {
          v99 = 0;
        }
      }

      if (v98 < 1)
      {
        if (v82 == v97)
        {
          goto LABEL_103;
        }

        v106 = v77[v97];
        if (!v106)
        {
          goto LABEL_103;
        }

        v107 = v104;
        v108 = v106 - 1;
        if (v106 != 1)
        {
          v109 = v255 + ~((13 - v106) >> 1);
          if (v109 >= v108)
          {
            v110 = v108;
          }

          else
          {
            v110 = v109;
          }

          v111 = a1[2];
          if (v111 > a1[3])
          {
            v254 = v102;
            v77 = v103;
            v249 = v110;
            sub_240B244C4(a1);
            v110 = v249;
            v103 = v77;
            v102 = v254;
            v113 = *a1;
            v114 = a1[1];
            v107 = v254;
          }

          else
          {
            v112 = a1[1];
            v113 = *a1 | (*v111 << v112);
            a1[2] = v111 + ((63 - v112) >> 3);
            v114 = v112 | 0x38;
            *a1 = v113;
            a1[1] = v112 | 0x38;
          }

          *a1 = v113 >> (v110 & ~(v110 >> 31));
          a1[1] = v114 - (v110 & ~(v110 >> 31));
          v106 = (1 << v108) + ((v113 & ~(-1 << (v110 & ~(v110 >> 31)))) << (v108 - (v110 & ~(v110 >> 31))));
        }

        *&v70[4 * v97] = v106;
        v104 = v107;
      }

      else
      {
        *&v70[4 * v97] = v99;
        v106 = v99;
        --v98;
      }

      v100 += v106;
LABEL_103:
      if (++v97 >= ((v104 - v77) >> 2))
      {
        *&v70[4 * v82] = 4096 - v100;
        v115 = __p[0];
        if (v100 < 4096)
        {
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
            v77 = v273;
          }

          v7 = v250;
          v44 = v252;
          v38 = v257;
          if (v77)
          {
            *(&v273 + 1) = v77;
            operator delete(v77);
            v70 = v267[0];
          }

LABEL_121:
          v116 = v267[1];
          v117 = (v267[1] - v70) >> 2;
          if (v117 <= v260)
          {
            if (v70 == v267[1])
            {
              v120 = 1;
            }

            else
            {
              v118 = v267[1];
              do
              {
                v119 = *(v118 - 1);
                v118 -= 4;
                v120 = v119 == 0;
                if (v119)
                {
                  break;
                }

                v116 = v118;
              }

              while (v118 != v70);
              v267[1] = v116;
              v117 = (v116 - v70) >> 2;
            }

            if (v116 != v70)
            {
              v121 = 0;
              if (v117 <= 1)
              {
                v122 = 1;
              }

              else
              {
                v122 = v117;
              }

              do
              {
                if (*&v70[4 * v121])
                {
                  sub_240B2B820(v7, v44, v121);
                }

                ++v121;
              }

              while (v122 != v121);
            }

            LODWORD(v123) = v117 - 1;
            if (v120)
            {
              v123 = 0;
            }

            else
            {
              v123 = v123;
            }

            if (v123 < 1)
            {
              v126 = v259;
            }

            else
            {
              v124 = v70;
              v125 = v123;
              v126 = v259;
              while (1)
              {
                v127 = *v124;
                v124 += 4;
                if (v127)
                {
                  break;
                }

                if (!--v125)
                {
                  goto LABEL_145;
                }
              }

              LODWORD(v123) = -1;
            }

LABEL_145:
            *(*(v7 + 56) + 4 * v44) = v123;
            v265 = 0;
            v266 = 0;
            v264 = 0;
            sub_240B2BA38(&v264, v70, v116, v117);
            sub_240B229E0(&v264, *(v7 + 81), v38 + 8 * v44 * (1 << *(v7 + 81)));
            if (v264)
            {
              v265 = v264;
              operator delete(v264);
            }

            if (v267[0])
            {
              operator delete(v267[0]);
            }

            if (++v44 == v126)
            {
LABEL_317:
              v11 = 0;
              goto LABEL_3;
            }

            goto LABEL_50;
          }

LABEL_305:
          if (v267[0])
          {
            operator delete(v267[0]);
          }

LABEL_307:
          v11 = 1;
          goto LABEL_3;
        }

LABEL_301:
        if (v115)
        {
          __p[1] = v115;
          operator delete(v115);
          v77 = v273;
        }

        if (v77)
        {
          *(&v273 + 1) = v77;
          operator delete(v77);
        }

        goto LABEL_305;
      }
    }
  }

  v28 = *(v7 + 8);
  v29 = *(v7 + 16);
  v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3);
  v31 = v24 - v30;
  if (v24 <= v30)
  {
    if (v24 < v30)
    {
      v39 = v28 + 24 * v24;
      if (v29 != v39)
      {
        v40 = *(v7 + 16);
        do
        {
          v42 = *(v40 - 24);
          v40 -= 24;
          v41 = v42;
          if (v42)
          {
            *(v29 - 16) = v41;
            operator delete(v41);
          }

          v29 = v40;
        }

        while (v40 != v39);
      }

      *(v7 + 16) = v39;
    }

    sub_240B29264(&v264, v24);
    if (!v24)
    {
LABEL_47:
      v43 = 0;
      v11 = 1;
      goto LABEL_311;
    }
  }

  else
  {
    v32 = *(v7 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((v32 - v29) >> 3) < v31)
    {
      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v28) >> 3);
        v34 = 2 * v33;
        if (2 * v33 <= v24)
        {
          v34 = v24;
        }

        if (v33 >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v34;
        }

        if (v35 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    v128 = 24 * ((24 * v31 - 24) / 0x18) + 24;
    bzero(*(v7 + 16), v128);
    *(v7 + 16) = v29 + v128;
    sub_240B29264(&v264, v24);
  }

  v129 = 0;
  v130 = v264;
  do
  {
    v131 = a1[2];
    if (v131 > a1[3])
    {
      sub_240B244C4(a1);
      v133 = *a1;
      v134 = a1[1];
    }

    else
    {
      v132 = a1[1];
      v133 = *a1 | (*v131 << v132);
      a1[2] = v131 + ((63 - v132) >> 3);
      v134 = v132 | 0x38;
    }

    v135 = v134 - 1;
    *a1 = v133 >> 1;
    a1[1] = v134 - 1;
    if (v133)
    {
      v137 = a1[2];
      if (v137 > a1[3])
      {
        sub_240B244C4(a1);
        v138 = *a1;
        v139 = a1[1];
      }

      else
      {
        v138 = (*v137 << v135) | (v133 >> 1);
        a1[2] = v137 + ((64 - v134) >> 3);
        v139 = v135 | 0x38;
      }

      v140 = v139 - 4;
      *a1 = v138 >> 4;
      a1[1] = v139 - 4;
      v141 = v138 & 0xF;
      if ((v138 & 0xF) != 0)
      {
        v142 = a1[2];
        if (v142 > a1[3])
        {
          sub_240B244C4(a1);
          v143 = *a1;
          v144 = a1[1];
        }

        else
        {
          v143 = (*v142 << v140) | (v138 >> 4);
          a1[2] = v142 + ((67 - v139) >> 3);
          v144 = v140 | 0x38;
        }

        *a1 = v143 >> v141;
        a1[1] = v144 - v141;
        v136 = (v143 & ~(-1 << v141)) + (1 << v141) + 1;
      }

      else
      {
        LOWORD(v136) = 2;
      }

      v24 = v259;
    }

    else
    {
      LOWORD(v136) = 1;
    }

    v130[v129] = v136;
    if (v260 < v136)
    {
      v43 = 1;
LABEL_314:
      v11 = 1;
LABEL_315:
      v265 = v130;
      operator delete(v130);
      goto LABEL_316;
    }

    ++v129;
  }

  while (v24 != v129);
  v145 = 0;
  v251 = v7;
  while (1)
  {
    v146 = *(v264 + v145);
    v147 = (*(v7 + 8) + 24 * v145);
    if (v146 < 2)
    {
      v147[1] = *v147;
      sub_240B2B6EC(v147, 0x100uLL);
      goto LABEL_262;
    }

    if (v146 > 0x8000)
    {
      goto LABEL_308;
    }

    v148 = a1[2];
    if (v148 > a1[3])
    {
      sub_240B244C4(a1);
      v150 = *a1;
      v151 = a1[1];
    }

    else
    {
      v149 = a1[1];
      v150 = *a1 | (*v148 << v149);
      a1[2] = v148 + ((63 - v149) >> 3);
      v151 = v149 | 0x38;
      *a1 = v150;
      a1[1] = v149 | 0x38;
    }

    v152 = v150 & 3;
    *a1 = v150 >> 2;
    a1[1] = v151 - 2;
    if (v152 != 1)
    {
      break;
    }

    sub_240B2B6EC(v147, 0x100uLL);
    v153 = *v147;
    v154 = a1[2];
    if (v154 > a1[3])
    {
      sub_240B244C4(a1);
      v156 = *a1;
      v157 = a1[1];
    }

    else
    {
      v155 = a1[1];
      v156 = *a1 | (*v154 << v155);
      a1[2] = v154 + ((63 - v155) >> 3);
      v157 = v155 | 0x38;
      *a1 = v156;
      a1[1] = v155 | 0x38;
    }

    v158 = 0;
    v159 = __clz(v146 - 1);
    v160 = 64 - v159;
    v161 = v156 & 3;
    v162 = v157 - 2;
    v163 = v156 >> 2;
    *a1 = v163;
    a1[1] = v162;
    v164 = v161 + 1;
    *&v273 = 0;
    v165 = ~(-1 << (64 - v159));
    do
    {
      v166 = a1[2];
      if (v166 > a1[3])
      {
        v261 = v164;
        sub_240B244C4(a1);
        v164 = v261;
        v167 = *a1;
        v169 = a1[1];
      }

      else
      {
        v167 = v163 | (*v166 << v162);
        v168 = v166 + ((63 - v162) >> 3);
        v169 = v162 | 0x38;
        *a1 = v167;
        a1[1] = v169;
        a1[2] = v168;
      }

      v170 = v167 & v165;
      v162 = v169 - v160;
      v163 = v167 >> v160;
      *a1 = v163;
      a1[1] = v162;
      if (v146 <= v170)
      {
        goto LABEL_309;
      }

      *(&v273 + v158) = v170;
      v158 += 2;
    }

    while (2 * v161 + 2 != v158);
    if (v161)
    {
      v211 = 0;
      v212 = 2;
      v213 = v161;
      while (2)
      {
        v214 = *(&v273 + v211++);
        v215 = v212;
        v216 = v213;
        do
        {
          if (v214 == *(&v273 + v215))
          {
            goto LABEL_309;
          }

          v215 += 2;
          --v216;
        }

        while (v216);
        --v213;
        v212 += 2;
        if (v211 != v161)
        {
          continue;
        }

        break;
      }

      if (v164 == 4)
      {
        v217 = a1[2];
        if (v217 > a1[3])
        {
          sub_240B244C4(a1);
          v218 = *a1;
          v220 = a1[1];
        }

        else
        {
          v218 = v163 | (*v217 << v162);
          v219 = v217 + ((63 - v162) >> 3);
          v220 = v162 | 0x38;
          *a1 = v218;
          a1[1] = v220;
          a1[2] = v219;
        }

        *a1 = v218 >> 1;
        a1[1] = v220 - 1;
        v164 = v218 & 1 | 4;
      }

      if (v164 <= 2)
      {
        if (v164 == 1)
        {
          goto LABEL_273;
        }

        v245 = v273;
        if (v273 <= WORD1(v273))
        {
          v222 = WORD1(v273);
        }

        else
        {
          v222 = v273;
        }

        if (v273 >= WORD1(v273))
        {
          v245 = WORD1(v273);
        }

        *v153 = 1;
        v153[1] = v245;
        *(v153 + 4) = 1;
        v225 = 3;
        v226 = 2;
      }

      else
      {
        if (v164 == 3)
        {
          v234 = WORD1(v273);
          if (WORD1(v273) <= WORD2(v273))
          {
            v222 = WORD2(v273);
          }

          else
          {
            v222 = WORD1(v273);
          }

          if (WORD1(v273) >= WORD2(v273))
          {
            v234 = WORD2(v273);
          }

          v235 = v273;
          *v153 = 1;
          v153[1] = v235;
          *(v153 + 8) = 1;
          v153[5] = v235;
          *(v153 + 4) = 2;
          v153[3] = v234;
          *(v153 + 12) = 2;
          goto LABEL_290;
        }

        if (v164 != 5)
        {
          v236 = 0;
          v237 = 2;
          do
          {
            v238 = v236++;
            v239 = *(&v273 + v238);
            v240 = v237;
            do
            {
              v241 = *(&v273 + v240);
              if (v239 > v241)
              {
                *(&v273 + v240) = v239;
                *(&v273 + v238) = v241;
                v239 = v241;
              }

              v240 += 2;
            }

            while (v240 != 8);
            v237 += 2;
          }

          while (v236 != 3);
          v242 = v273;
          *v153 = 2;
          v153[1] = v242;
          v243 = WORD1(v273);
          *(v153 + 8) = 2;
          v153[5] = v243;
          v244 = WORD2(v273);
          *(v153 + 4) = 2;
          v153[3] = v244;
          v222 = WORD3(v273);
          *(v153 + 12) = 2;
LABEL_290:
          v225 = 7;
          v226 = 4;
          goto LABEL_274;
        }

        v221 = WORD2(v273);
        if (WORD2(v273) <= WORD3(v273))
        {
          v222 = WORD3(v273);
        }

        else
        {
          v222 = WORD2(v273);
        }

        if (WORD2(v273) >= WORD3(v273))
        {
          v221 = WORD3(v273);
        }

        v223 = v273;
        *v153 = 1;
        v153[1] = v223;
        v224 = WORD1(v273);
        *(v153 + 4) = 2;
        v153[3] = v224;
        *(v153 + 8) = 1;
        v153[5] = v223;
        *(v153 + 12) = 3;
        v153[7] = v221;
        *(v153 + 16) = 1;
        v153[9] = v223;
        *(v153 + 20) = 2;
        v153[11] = v224;
        *(v153 + 24) = 1;
        v153[13] = v223;
        *(v153 + 28) = 3;
        v225 = 15;
        v226 = 8;
      }
    }

    else
    {
LABEL_273:
      v222 = v273;
      *v153 = 0;
      v225 = 1;
      v226 = 1;
    }

LABEL_274:
    v7 = v251;
    v24 = v259;
    v153[v225] = v222;
    do
    {
      memcpy(&v153[2 * v226], v153, 4 * v226);
      v226 *= 2;
    }

    while (v226 != 256);
LABEL_262:
    v227 = *(v7 + 8) + 24 * v145;
    v228 = *v227;
    v229 = *(v227 + 8);
    while (v228 != v229)
    {
      if (*v228 <= 8u)
      {
        sub_240B2B820(v7, v145, *(v228 + 1));
      }

      v228 += 4;
    }

    if (++v145 == v24)
    {
      goto LABEL_47;
    }
  }

  LOBYTE(v273) = 0;
  sub_240B43578(v267, v146);
  v256 = v147;
  v171 = 0;
  v269[0] = 0;
  v269[1] = 0;
  v172 = 32;
  v270 = 0;
  do
  {
    v173 = byte_240C861CE[v152];
    v174 = a1[2];
    if (v174 > a1[3])
    {
      sub_240B244C4(a1);
      v176 = *a1;
      v177 = a1[1];
    }

    else
    {
      v175 = a1[1];
      v176 = *a1 | (*v174 << v175);
      a1[2] = v174 + ((63 - v175) >> 3);
      v177 = v175 | 0x38;
      *a1 = v176;
      a1[1] = v175 | 0x38;
    }

    v178 = &unk_240C81664 + 4 * (v176 & 0xF);
    v179 = *v178;
    *a1 = v176 >> v179;
    a1[1] = v177 - v179;
    v180 = *(v178 + 1);
    *(v269 + v173) = v180;
    if (v180)
    {
      ++v171;
      v181 = 0x20u >> v180;
    }

    else
    {
      v181 = 0;
    }

    v172 -= v181;
    if (v152 > 0x10)
    {
      break;
    }

    ++v152;
  }

  while (v172 > 0);
  if (v171 == 1 || v172 == 0)
  {
    v183 = 0;
    v262 = v267[0];
    *__p = 0u;
    v272 = 0u;
    do
    {
      ++*(__p + *(v269 + v183++));
    }

    while (v183 != 18);
    if (!sub_240B57A54(&v273, 5u, v269, 18, __p))
    {
      goto LABEL_258;
    }

    v184 = 0;
    v185 = 0;
    v186 = 0;
    v258 = 8;
    v187 = 0x8000;
    do
    {
      v188 = a1[2];
      if (v188 > a1[3])
      {
        sub_240B244C4(a1);
        v190 = *a1;
        v191 = a1[1];
      }

      else
      {
        v189 = a1[1];
        v190 = *a1 | (*v188 << v189);
        a1[2] = v188 + ((63 - v189) >> 3);
        v191 = v189 | 0x38;
      }

      v192 = &v273 + 4 * (v190 & 0x1F);
      v193 = *v192;
      v194 = v191 - v193;
      v195 = v190 >> v193;
      *a1 = v195;
      a1[1] = v194;
      v196 = v192[2];
      if (v196 > 0xF)
      {
        v197 = v196 - 14;
        if (v196 == 16)
        {
          v198 = v258;
        }

        else
        {
          v198 = 0;
        }

        if (v185 == v198)
        {
          v199 = v186;
        }

        else
        {
          v199 = 0;
        }

        if (v199 <= 0)
        {
          v200 = v199;
        }

        else
        {
          v200 = (v199 - 2) << (v196 - 14);
        }

        v201 = a1[2];
        if (v201 > a1[3])
        {
          sub_240B244C4(a1);
          v202 = *a1;
          v203 = a1[1];
        }

        else
        {
          v202 = (*v201 << v194) | v195;
          a1[2] = v201 + ((63 - v194) >> 3);
          v203 = v194 | 0x38;
        }

        *a1 = v202 >> v197;
        a1[1] = v203 - v197;
        v186 = v200 + (v202 & ~(-1 << v197)) + 3;
        v204 = v186 - v199;
        v205 = v186 - v199 + v184;
        if (v205 > v146)
        {
          goto LABEL_258;
        }

        v206 = &v262[v184];
        v207 = v204;
        v208 = v204 << (15 - v198);
        if (v198)
        {
          v209 = v208;
        }

        else
        {
          v209 = 0;
        }

        memset(v206, v198, v207);
        v187 -= v209;
        v185 = v198;
        v184 = v205;
      }

      else
      {
        v262[v184] = v196;
        v186 = 0;
        if (v196)
        {
          v187 -= 0x8000u >> v196;
          v258 = v196;
        }

        ++v184;
      }
    }

    while (v146 > v184 && v187 > 0);
    if (!v187)
    {
      bzero(&v262[v184], v146 - v184);
      v273 = 0u;
      v274 = 0u;
      v230 = v146;
      v231 = v267[0];
      do
      {
        v232 = *v231++;
        ++*(&v273 + v232);
        --v230;
      }

      while (v230);
      sub_240B2B6EC(v256, v146 + 376);
      v7 = v251;
      v24 = v259;
      v233 = sub_240B57A54(*v256, 8u, v267[0], v146, &v273);
      sub_240B2B6EC(v256, v233);
      v210 = v233 != 0;
    }

    else
    {
LABEL_258:
      v210 = 0;
      v7 = v251;
      v24 = v259;
    }
  }

  else
  {
    v210 = 0;
  }

  if (v267[0])
  {
    v267[1] = v267[0];
    operator delete(v267[0]);
  }

  if (v210)
  {
    goto LABEL_262;
  }

LABEL_308:
  v162 = a1[1];
LABEL_309:
  v246 = a1[4];
  v247 = a1[3];
  v248 = 8 * (a1[2] - v246 + a1[5]) - v162;
  a1[7] = v248;
  v43 = 1;
  if (v248 <= 8 * (v247 - v246) + 64)
  {
    v130 = v264;
    goto LABEL_314;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_311:
  v130 = v264;
  if (v264)
  {
    goto LABEL_315;
  }

LABEL_316:
  if (!v43)
  {
    goto LABEL_317;
  }

LABEL_3:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_240B2D2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_240B2D33C(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = (v2 - *result) >> 4;
  if (a2 <= v4)
  {
    if (a2 >= v4)
    {
      return result;
    }

    v9 = (v3 + 16 * a2);
  }

  else
  {
    v5 = result[2];
    if (a2 - v4 > (v5 - v2) >> 4)
    {
      if (!(a2 >> 60))
      {
        v6 = v5 - v3;
        v7 = v6 >> 3;
        if (v6 >> 3 <= a2)
        {
          v7 = a2;
        }

        if (v6 >= 0x7FFFFFFFFFFFFFF0)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        sub_240B2D470(v8);
      }

      sub_240B228BC();
    }

    v9 = &v2[a2 - v4];
    v10 = 16 * a2 - 16 * v4;
    do
    {
      *v2++ = xmmword_240C11520;
      v10 -= 16;
    }

    while (v10);
  }

  result[1] = v9;
  return result;
}

void sub_240B2D470(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B2D4B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(*(a2 + 408) + 320) + 3);
  if (a4 & 0x1000000) != 0 && (*(a2 + 24))
  {
    v8 += 3;
  }

  if ((*(a2 + 392) & 1) == 0 && *(a2 + 16) != 1 && (!*(a2 + 376) || *(a2 + 396)))
  {
    sub_240B309B8(v98, *(a3 + 88));
    sub_240B30ABC((a1 + 4496), v98);
    *&v94 = &v107;
    sub_240B30C38(&v94);
    v104 = &unk_2852A1CB8;
    if (__p)
    {
      v106 = __p;
      operator delete(__p);
    }

    for (i = 200; i != 80; i -= 40)
    {
      sub_240B22320((v98 + i));
    }

    if (SBYTE7(v102) < 0)
    {
      operator delete(v101[0]);
    }

    v10 = *&v98[0];
    *&v98[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v94 = 0uLL;
  v95 = 0;
  v96 = v8;
  v97 = a4 & 1;
  if (!sub_240B2AC6C(a2 + 40))
  {
    v11 = 0;
    v12 = a2 + 48;
    do
    {
      if (*(a2 + 60) != byte_240C85334[*(v12 + 4 * v11)])
      {
        operator new();
      }

      if (*(a2 + 61) != byte_240C85338[*(v12 + 4 * v11)])
      {
        operator new();
      }

      ++v11;
    }

    while (v11 != 3);
  }

  if (*(a2 + 425) == 1)
  {
    operator new();
  }

  v13 = *(a2 + 452);
  if (v13 >= 3)
  {
    operator new();
  }

  if (v13)
  {
    operator new();
  }

  if (*(a2 + 452) >= 2u)
  {
    operator new();
  }

  v14 = *(a2 + 268);
  v15 = v14 != 1;
  v16 = *(a2 + 272);
  v17 = *(a2 + 280);
  if (v16 != v17)
  {
    v18 = *(a2 + 272);
    do
    {
      v19 = *v18++;
      LOBYTE(v15) = v19 == v14 && v15;
    }

    while (v18 != v17);
    if (v15)
    {
      v15 = 1;
    }

    else
    {
      v20 = 0;
      do
      {
        if (v16[v20] != 1)
        {
          v21 = *(a2 + 408) + 456;
          sub_240BF7CB8();
        }

        ++v20;
        v16 = *(a2 + 272);
      }

      while (v20 < (*(a2 + 280) - v16) >> 2);
      v15 = 0;
    }
  }

  if ((*(a2 + 24) & 2) != 0)
  {
    v22 = *(**(a1 + 4208) + 320);
    operator new();
  }

  if ((*(a2 + 24) & 0x10) != 0)
  {
    v23 = *(a1 + 4208);
    operator new();
  }

  if (*(a2 + 268) != 1 && (!v15 || (*(a2 + 280) - *(a2 + 272)) >> 2 != -3))
  {
    v24 = *(a2 + 408);
    v25 = __clz(*(a2 + 268)) ^ 0x1F;
    sub_240BF7CB8();
  }

  if (a4 & 0x1000000) != 0 && (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 404))
  {
    operator new();
  }

  if ((*(a2 + 392) & 1) == 0 && *(a2 + 16) != 1 && (!*(a2 + 376) || *(a2 + 396)) && *(a2 + 400) == 1)
  {
    v76 = &unk_2852A1CB8;
    v77 = *(a1 + 5200);
    v26 = *(a1 + 5213);
    v78[0] = *(a1 + 5208);
    *(v78 + 5) = v26;
    memset(v79, 0, sizeof(v79));
    sub_240B28D90(v79, *(a1 + 5224), *(a1 + 5232), *(a1 + 5232) - *(a1 + 5224));
    v80 = *(a1 + 5248);
    v81 = *(a1 + 5264);
    v82 = *(a1 + 5280);
    v83 = *(a1 + 5296);
    v27 = *(a1 + 5312);
    v84 = &unk_2852A1260;
    v85 = v27;
    v86 = &unk_2852A1A10;
    v87 = *(a1 + 5328);
    v28 = *(a1 + 5352);
    v88 = &unk_2852A1260;
    v89 = v28;
    v29 = *(a1 + 5368);
    v90 = &unk_2852A1260;
    v91 = v29;
    v30 = *(a1 + 5384);
    v92 = &unk_2852A1260;
    v93 = v30;
    sub_240BF91EC();
  }

  v31 = *(a3 + 88);
  v33 = *(v31 + 328);
  v32 = *(v31 + 336);
  if (v32 != v33)
  {
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v33) >> 5) <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * ((v32 - v33) >> 5);
    if (*(v33 + 12))
    {
      v35 = 0;
      v36 = (v33 + 108);
      v37 = v34 - 1;
      do
      {
        if (v37 == v35)
        {
          break;
        }

        ++v35;
        v38 = *v36;
        v36 += 24;
      }

      while (v38);
    }
  }

  if (*(a1 + 4448))
  {
    v51 = *(a1 + 4208);
    v100 = *(v51 + 56);
    *v101 = *(v51 + 72);
    v102 = *(v51 + 88);
    v103 = *(v51 + 104);
    v98[0] = *(v51 + 8);
    v98[1] = *(v51 + 24);
    *v99 = *(v51 + 40);
    v52 = *(v51 + 120);
    v58 = *(v51 + 144);
    v57 = *(v51 + 128);
    if (v97 == 1)
    {
      operator new();
    }

    operator new();
  }

  v39 = *(a2 + 32);
  if (!v39)
  {
    operator new();
  }

  if (v39 == 2)
  {
    operator new();
  }

  if ((a4 & 0x100) != 0)
  {
    v40 = *(a2 + 16);
    if (v40 == 3 || !v40)
    {
      v41 = *(a2 + 312) == 0;
      for (j = *(a2 + 344); j != *(a2 + 352); j += 40)
      {
        v41 = (*(j + 8) == 0) & v41;
      }

      if ((*(a2 + 256) & 1) != 0 || !v41)
      {
        operator new();
      }
    }

    if ((*(a2 + 392) & 1) == 0 && *(a2 + 16) != 1 && (!*(a2 + 376) || *(a2 + 396)) && (*(a2 + 400) & 1) == 0)
    {
      v59 = *(a1 + 5200);
      *&v60 = *(a1 + 5208);
      *(&v60 + 5) = *(a1 + 5213);
      memset(v61, 0, sizeof(v61));
      sub_240B28D90(v61, *(a1 + 5224), *(a1 + 5232), *(a1 + 5232) - *(a1 + 5224));
      v62 = *(a1 + 5248);
      v63 = *(a1 + 5264);
      v64 = *(a1 + 5280);
      v65 = *(a1 + 5296);
      v53 = *(a1 + 5312);
      v66 = &unk_2852A1260;
      v67 = v53;
      v68 = &unk_2852A1A10;
      v69 = *(a1 + 5328);
      v54 = *(a1 + 5352);
      v70 = &unk_2852A1260;
      v71 = v54;
      v55 = *(a1 + 5368);
      v72 = &unk_2852A1260;
      v73 = v55;
      v56 = *(a1 + 5384);
      v74 = &unk_2852A1260;
      v75 = v56;
      sub_240BF91EC();
    }
  }

  if ((a4 & 0x10000) != 0)
  {
    v43 = *(a2 + 408);
    v44 = *(v43 + 328);
    v45 = *(v43 + 336);
    while (1)
    {
      if (v44 == v45)
      {
        goto LABEL_76;
      }

      if (*(v44 + 12) == 2)
      {
        break;
      }

      v44 += 96;
    }

    v46 = *(a3 + 88);
    v47 = *(v46 + 328);
    if (*(v46 + 336) != v47)
    {
      v48 = 0;
      v49 = 0;
      do
      {
        if (*(v47 + v48 + 12) == 2)
        {
          operator new();
        }

        ++v49;
        v50 = *(a3 + 88);
        v47 = *(v50 + 328);
        v48 += 96;
      }

      while (v49 < 0xAAAAAAAAAAAAAAABLL * ((*(v50 + 336) - v47) >> 5));
    }
  }

LABEL_76:
  operator new();
}

void sub_240B30500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  v18 = *a15;
  if (*a15)
  {
    *(v15 + 168) = v18;
    operator delete(v18);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v15 + 136) = v19;
    operator delete(v19);
  }

  MEMORY[0x245CCE590](v15, 0x10E1C4001FEA094);
  STACK[0x3E8] = &STACK[0x3C0];
  sub_240B30CC0(&STACK[0x3E8]);
  _Unwind_Resume(a1);
}

uint64_t sub_240B309B8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_240B56E08((a1 + 16));
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  sub_240B29BD0(a1 + 216);
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  return a1;
}

void sub_240B30A4C(_Unwind_Exception *a1)
{
  v4 = v1 + 25;
  v5 = -120;
  do
  {
    sub_240B22320(v4);
    v4 -= 5;
    v5 += 40;
  }

  while (v5);
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  v6 = *v1;
  *v1 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_240B30ABC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 2) = *(a2 + 2);
  v6 = a2[3];
  *(a1 + 30) = *(a2 + 30);
  a1[3] = v6;
  v7 = *(a2 + 5);
  a1[7] = a2[7];
  *(a1 + 5) = v7;
  if (*(a1 + 87) < 0)
  {
    operator delete(a1[8]);
  }

  v8 = *(a2 + 4);
  a1[10] = a2[10];
  *(a1 + 4) = v8;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  a1[11] = a2[11];
  sub_240B30D80((a1 + 12), (a2 + 12));
  v9 = a1[31];
  *(a1 + 112) = *(a2 + 112);
  v10 = a2[29];
  *(a1 + 237) = *(a2 + 237);
  a1[29] = v10;
  if (v9)
  {
    a1[32] = v9;
    operator delete(v9);
    a1[31] = 0;
    a1[32] = 0;
    a1[33] = 0;
  }

  *(a1 + 31) = *(a2 + 31);
  a1[33] = a2[33];
  a2[31] = 0;
  a2[32] = 0;
  a2[33] = 0;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 19);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 18) = v12;
  *(a1 + 19) = v13;
  *(a1 + 17) = v11;
  a1[42] = a2[42];
  *(a1 + 22) = *(a2 + 22);
  a1[47] = a2[47];
  a1[49] = a2[49];
  a1[51] = a2[51];
  sub_240B30E18(a1 + 52);
  *(a1 + 26) = *(a2 + 26);
  v14 = a2[55];
  a1[54] = a2[54];
  a2[52] = 0;
  a2[53] = 0;
  a2[54] = 0;
  a1[55] = v14;
  return a1;
}

void sub_240B30C38(void ***a1)
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
        v6 = v4 - 5;
        sub_240B22320(v4 - 2);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_240B30CC0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240B30D14(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_240B30D14(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_240B30D80(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 120; i += 40)
  {
    v5 = a1 + i;
    v6 = *(a2 + i);
    *(v5 + 16) = *(a2 + i + 16);
    *v5 = v6;
    v7 = *(a2 + i + 24);
    *(a2 + i + 24) = 0;
    v8 = *(a1 + i + 24);
    *(v5 + 24) = v7;
    if (v8)
    {
      atomic_fetch_add(&qword_27E519020, -*(v8 - 24));
      free(*(v8 - 32));
    }

    *(v5 + 32) = *(a2 + i + 32);
  }

  return a1;
}

void sub_240B30E18(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 5;
        sub_240B22320(v3 - 2);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_240B30E84(void **a1, void *a2, unint64_t *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3[2];
  v7 = a3[3];
  if (v6 > v7)
  {
    sub_240B244C4(a3);
    v9 = *a3;
    v11 = a3[1];
    v10 = a3[2];
    v7 = a3[3];
  }

  else
  {
    v8 = a3[1];
    v9 = *a3 | (*v6 << v8);
    v10 = (v6 + ((63 - v8) >> 3));
    v11 = v8 | 0x38;
    *a3 = v9;
    a3[1] = v8 | 0x38;
    a3[2] = v10;
  }

  v12 = v11 - 1;
  v13 = v9 >> 1;
  *a3 = v9 >> 1;
  a3[1] = v11 - 1;
  if (v9)
  {
    if (v10 > v7)
    {
      sub_240B244C4(a3);
      v19 = *a3;
      v21 = a3[1];
    }

    else
    {
      v19 = (*v10 << v12) | v13;
      v20 = v10 + ((64 - v11) >> 3);
      v21 = v12 | 0x38;
      *a3 = v19;
      a3[1] = v12 | 0x38;
      a3[2] = v20;
    }

    *a3 = v19 >> 2;
    a3[1] = v21 - 2;
    v22 = *a1;
    v23 = v19 & 3;
    if ((v19 & 3) != 0)
    {
      for (i = a1[1]; v22 != i; ++v22)
      {
        v25 = a3[2];
        if (v25 > a3[3])
        {
          sub_240B244C4(a3);
          v27 = *a3;
          v28 = a3[1];
        }

        else
        {
          v26 = a3[1];
          v27 = *a3 | (*v25 << v26);
          a3[2] = v25 + ((63 - v26) >> 3);
          v28 = v26 | 0x38;
          *a3 = v27;
          a3[1] = v26 | 0x38;
        }

        *a3 = v27 >> v23;
        a3[1] = v28 - v23;
        *v22 = v27 & ~(-1 << v23);
      }
    }

    else
    {
      v29 = a1[1] - v22;
      if (v29 >= 1)
      {
        bzero(*a1, v29);
      }
    }

LABEL_59:
    v46 = *a1;
    v47 = a1[1];
    if (*a1 != v47)
    {
      v48 = v46 + 1;
      if (v46 + 1 != v47)
      {
        v49 = *v46;
        v50 = v46 + 1;
        do
        {
          v52 = *v50++;
          v51 = v52;
          v53 = v49 >= v52;
          if (v49 <= v52)
          {
            v49 = v51;
          }

          if (!v53)
          {
            v46 = v48;
          }

          v48 = v50;
        }

        while (v50 != v47);
      }
    }

    v54 = *v46;
    *a2 = v54 + 1;
    sub_240B299F4((v54 >> 6) + 1);
  }

  if (v10 > v7)
  {
    sub_240B244C4(a3);
    v14 = *a3;
    v16 = a3[1];
  }

  else
  {
    v14 = (*v10 << v12) | v13;
    v15 = v10 + ((64 - v11) >> 3);
    v16 = v12 | 0x38;
    *a3 = v14;
    a3[1] = v12 | 0x38;
    a3[2] = v15;
  }

  *a3 = v14 >> 1;
  a3[1] = v16 - 1;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  memset(v63, 0, sizeof(v63));
  sub_240B2BCB4(v67);
  v67[6] = 0;
  memset(__p, 0, sizeof(__p));
  v17 = sub_240B2BD40(a3, 1, v63, __p, (a1[1] - *a1) < 3);
  if (v17)
  {
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*(&v65 + 1))
    {
      *&v66 = *(&v65 + 1);
      operator delete(*(&v65 + 1));
    }

    if (v64)
    {
      *(&v64 + 1) = v64;
      operator delete(v64);
    }

    v59 = &v63[1];
    sub_240B23988(&v59);
    v18 = v63[0];
    v63[0] = 0;
    if (v18)
    {
      atomic_fetch_add(&qword_27E519020, -*(v18 - 24));
      free(*(v18 - 32));
    }

    goto LABEL_79;
  }

  sub_240B23A18(&v59, v63, a3, 0);
  v30 = *a1;
  if (a1[1] == *a1)
  {
    LODWORD(v35) = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = __p[0];
    do
    {
      v34 = sub_240B24020(&v59, *v33, a3);
      *(*a1 + v31) = v34;
      if (v32 <= v34)
      {
        v32 = v34;
      }

      ++v31;
      v30 = *a1;
      v35 = a1[1] - *a1;
    }

    while (v31 < v35);
    if (v32 >= 0x100)
    {
      goto LABEL_68;
    }
  }

  if (v60 == 1245184)
  {
    if (v14)
    {
      v36 = 0;
      v37 = xmmword_240C11410;
      v38.i64[0] = 0x1010101010101010;
      v38.i64[1] = 0x1010101010101010;
      do
      {
        *&v68[v36] = v37;
        v36 += 16;
        v37 = vaddq_s8(v37, v38);
      }

      while (v36 != 256);
      if (v35 >= 1)
      {
        v39 = 0;
        v40 = v35 & 0x7FFFFFFF;
        do
        {
          v41 = v30[v39];
          v42 = v68[v41];
          v30[v39] = v42;
          if (v41)
          {
            if (v41 > 3)
            {
              v43 = v41 & 0xF;
              if ((v41 & 0xF) == 0 || (*&v68[(v41 - v43) + 1] = vbslq_s8(vcgtq_u8(xmmword_240C11530, vdupq_n_s8(v43)), *&v68[(v41 - v43) + 1], *&v68[(v41 - v43)]), LODWORD(v41) = v41 - v43, v41))
              {
                do
                {
                  LODWORD(v41) = v41 - 16;
                  *&v68[v41 + 1] = *&v68[v41];
                }

                while (v41);
              }
            }

            else
            {
              do
              {
                v68[v41] = v68[(v41 - 1)];
                --v41;
              }

              while (v41);
            }

            v68[0] = v42;
          }

          ++v39;
        }

        while (v39 != v40);
      }
    }

    v44 = v61;
    v61 = 0;
    if (v44)
    {
      atomic_fetch_add(&qword_27E519020, -*(v44 - 24));
      free(*(v44 - 32));
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*(&v65 + 1))
    {
      *&v66 = *(&v65 + 1);
      operator delete(*(&v65 + 1));
    }

    if (v64)
    {
      *(&v64 + 1) = v64;
      operator delete(v64);
    }

    v59 = &v63[1];
    sub_240B23988(&v59);
    v45 = v63[0];
    v63[0] = 0;
    if (v45)
    {
      atomic_fetch_add(&qword_27E519020, -*(v45 - 24));
      free(*(v45 - 32));
    }

    goto LABEL_59;
  }

LABEL_68:
  v55 = v61;
  v61 = 0;
  if (v55)
  {
    atomic_fetch_add(&qword_27E519020, -*(v55 - 24));
    free(*(v55 - 32));
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*(&v65 + 1))
  {
    *&v66 = *(&v65 + 1);
    operator delete(*(&v65 + 1));
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }

  v59 = &v63[1];
  sub_240B23988(&v59);
  v56 = v63[0];
  v63[0] = 0;
  if (v56)
  {
    atomic_fetch_add(&qword_27E519020, -*(v56 - 24));
    free(*(v56 - 32));
  }

  v17 = 1;
LABEL_79:
  v57 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_240B314D0(_Unwind_Exception *a1)
{
  if (STACK[0x258])
  {
    operator delete(STACK[0x258]);
  }

  sub_240B23FBC(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_240B31560(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_240B31610(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a8 == 0) == (*(a10 + 8) != 0))
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_240B228BC();
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_240B31B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51)
{
  if (a36)
  {
    atomic_fetch_add(&qword_27E519020, -*(a36 - 24));
    free(*(a36 - 32));
  }

  for (i = 144; i != -16; i -= 40)
  {
    sub_240B22320((v51 - 256 + i));
  }

  if (a45)
  {
    (*(a46 + 16))();
  }

  *(v51 - 256) = &a47;
  sub_240B31E8C((v51 - 256));
  if (__p)
  {
    a51 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_240B31C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v8[0] = a3;
  v8[1] = a4;
  if (!*a1)
  {
    v5 = 1;
    if (sub_240B328E8(v8, 1uLL))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240B32AD0(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240B328E8, sub_240B32AD0, 0, a2) != 0;
}

BOOL sub_240B31D24(void *a1, uint64_t a2, uint64_t ***a3, uint64_t ***a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v8[0] = a3;
  v8[1] = a4;
  if (!*a1)
  {
    v5 = 1;
    if (sub_240B32644(v8, 1uLL))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240B32720(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240B32644, sub_240B32720, 0, a2) != 0;
}

BOOL sub_240B31DD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v8[0] = a3;
  v8[1] = a4;
  if (!*a1)
  {
    v5 = 1;
    if (sub_240B31F38(v8, 1uLL))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240B32120(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240B31F38, sub_240B32120, 0, a2) != 0;
}

void sub_240B31E8C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240B31EE0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240B31EE0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

uint64_t sub_240B31F38(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = **(*a1 + 8) * a2;
  LODWORD(v24) = ***a1;
  *(&v24 + 4) = __PAIR64__(v24, v4);
  HIDWORD(v24) = v4;
  v5 = v24;
  if (v24)
  {
    v6 = 4 * v24 + 139;
    if ((v6 & 0x780) != 0)
    {
      v5 = v6 & 0x7FFFFFF80;
    }

    else
    {
      v5 = (v6 & 0x7FFFFFF80) + 128;
    }
  }

  v25 = v5;
  v26 = 0;
  v27 = 4;
  if (sub_240B597F0(&v24))
  {
    v7 = v26;
    v26 = 0;
    if (v7)
    {
      atomic_fetch_add(&qword_27E519020, -*(v7 - 24));
      free(*(v7 - 32));
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v25;
  v10 = v26;
  v11 = v27;
  v12 = *(v3 + 16);
  *v12 = v24;
  v13 = *(v12 + 24);
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  if (v13)
  {
    atomic_fetch_add(&qword_27E519020, -*(v13 - 24));
    free(*(v13 - 32));
  }

  *(v12 + 32) = v11;
  v14 = *(v3 + 24);
  if ((*v14)[1])
  {
    v15 = v14[1];
    v18 = (**v14)((*v14)[3], v2, *v14[2]);
    v19 = *v15;
    *v15 = v18;
    if (v19)
    {
      (*(v15[1] + 16))(v19, v16, v17);
    }

    if (!*v14[1])
    {
      return 0xFFFFFFFFLL;
    }

    sub_240B323EC(v14[3], v2);
    if (v2)
    {
      v20 = 0;
      do
      {
        v21 = *v14[3] + v20;
        v22 = *v14[2];
        v23 = *(v21 + 8) - *v21;
        if (v22 <= v23)
        {
          if (v22 < v23)
          {
            *(v21 + 8) = *v21 + v22;
          }
        }

        else
        {
          sub_240B26918(v21, v22 - v23);
        }

        v20 += 24;
        --v2;
      }

      while (v2);
    }
  }

  return 0;
}

uint64_t sub_240B32120(uint64_t result, unsigned int a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *(result + 8);
  if (*(*v3 + 8))
  {
    v4 = *(**(v3 + 8) + 24 * a3);
  }

  else
  {
    v4 = (**(v3 + 16) + **(v3 + 24) * a2);
  }

  memset(v53, 0, sizeof(v53));
  v5 = **(v3 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = **(v3 + 40);
    do
    {
      v8 = *(v7 + 8 * v6);
      if (v8)
      {
        v9 = *(v8 + 24) + *(v8 + 16) * a2;
      }

      else
      {
        v9 = *(*(v3 + 48) + 24);
      }

      *(v53 + v6++) = v9;
    }

    while (v5 != v6);
    v10 = 0;
    v51 = 0u;
    v52 = 0u;
    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v16 = v5 * a3;
      v17 = *(v3 + 56);
      result = *(v3 + 64);
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      *(&v51 + v10) = v18 + v19 * (v5 * a3 + v10);
      v20 = *result;
      if (*result)
      {
        v21 = 0;
        v22 = *(v53 + v10);
        result = *(v3 + 72);
        v23 = vld1q_dup_f32(result);
        v24 = (v18 + v19 * (v10 + v16));
        do
        {
          v25 = *v22++;
          *v24++ = vcvtnq_s32_f32(vmulq_f32(v23, vminnmq_f32(vmaxnmq_f32(v25, 0), _Q1)));
          v21 += 4;
        }

        while (v21 < v20);
        v5 = **(v3 + 32);
      }

      ++v10;
    }

    while (v10 < v5);
  }

  else
  {
    v51 = 0uLL;
    v52 = 0uLL;
  }

  if (**(v3 + 80) >= 9uLL)
  {
    v33 = **(v3 + 64);
    if (**(v3 + 88) == 1)
    {
      if (v33)
      {
        v34 = 0;
        v35 = v4 + 1;
        do
        {
          if (v5)
          {
            v36 = &v51;
            v37 = v35;
            v38 = v5;
            do
            {
              v39 = *v36++;
              *(v37 - 1) = *(v39 + 4 * v34);
              v37 += 2;
              --v38;
            }

            while (v38);
          }

          ++v34;
          v35 += 2 * v5;
        }

        while (v34 != v33);
      }
    }

    else if (v33)
    {
      v40 = 0;
      v41 = v4 + 1;
      do
      {
        if (v5)
        {
          v42 = &v51;
          v43 = v41;
          v44 = v5;
          do
          {
            v45 = *v42++;
            *(v43 - 1) = bswap32(*(v45 + 4 * v40)) >> 16;
            v43 += 2;
            --v44;
          }

          while (v44);
        }

        ++v40;
        v41 += 2 * v5;
      }

      while (v40 != v33);
    }
  }

  else
  {
    v26 = **(v3 + 64);
    if (v26)
    {
      v27 = 0;
      v28 = v4;
      do
      {
        if (v5)
        {
          v29 = &v51;
          v30 = v28;
          v31 = v5;
          do
          {
            v32 = *v29++;
            *v30++ = *(v32 + 4 * v27);
            --v31;
          }

          while (v31);
        }

        ++v27;
        v28 += v5;
      }

      while (v27 != v26);
    }
  }

  v46 = *(*v3 + 8);
  if (v46)
  {
    v47 = **(v3 + 96);
    v48 = **(v3 + 64);
    v49 = *MEMORY[0x277D85DE8];

    return v46(v47, a3, 0, a2, v48, v4);
  }

  else
  {
    v50 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_240B323EC(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B32588(v10);
      }

      sub_240B228BC();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = v4 + v15;
  }
}

void sub_240B32588(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B325E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240B32644(uint64_t ****a1, unint64_t a2)
{
  v2 = **a1;
  if (!(*v2)[1])
  {
    return 0;
  }

  v3 = a2;
  v4 = v2[1];
  v5 = (**v2)((*v2)[3], a2, *v2[2]);
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    (*(v4[1] + 16))();
  }

  if (*v2[1])
  {
    sub_240B323EC(v2[3], v3);
    if (v3)
    {
      v7 = 0;
      do
      {
        v8 = *v2[3] + v7;
        v9 = *v2[2];
        v10 = *(v8 + 8) - *v8;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            *(v8 + 8) = *v8 + v9;
          }
        }

        else
        {
          sub_240B26918(v8, v9 - v10);
        }

        v7 += 24;
        --v3;
      }

      while (v3);
    }

    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_240B32720(uint64_t result, unsigned int a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(result + 8);
  if (*(*v3 + 8))
  {
    v4 = *(**(v3 + 8) + 24 * a3);
  }

  else
  {
    v4 = (**(v3 + 16) + **(v3 + 24) * a2);
  }

  memset(v28, 0, sizeof(v28));
  v5 = **(v3 + 32);
  if (v5)
  {
    v6 = **(v3 + 40);
    v7 = v28;
    v8 = **(v3 + 32);
    do
    {
      if (*v6)
      {
        v9 = *(*v6 + 24) + *(*v6 + 16) * a2;
      }

      else
      {
        v9 = *(*(v3 + 48) + 24);
      }

      *v7++ = v9;
      v6 += 8;
      --v8;
    }

    while (v8);
  }

  v10 = **(v3 + 64);
  if (**(v3 + 56))
  {
    if (v10)
    {
      v11 = 0;
      v12 = v4;
      do
      {
        if (v5)
        {
          v13 = v28;
          v14 = v12;
          v15 = v5;
          do
          {
            v16 = *v13++;
            *v14++ = *(v16 + 4 * v11);
            --v15;
          }

          while (v15);
        }

        ++v11;
        v12 += v5;
      }

      while (v11 != v10);
    }
  }

  else if (v10)
  {
    v17 = 0;
    v18 = v4;
    do
    {
      if (v5)
      {
        v19 = v28;
        v20 = v18;
        v21 = v5;
        do
        {
          v22 = *v19++;
          *v20++ = bswap32(*(v22 + 4 * v17));
          --v21;
        }

        while (v21);
      }

      ++v17;
      v18 += v5;
    }

    while (v17 != v10);
  }

  v23 = *(*v3 + 8);
  if (v23)
  {
    v24 = **(v3 + 72);
    v25 = **(v3 + 64);
    v26 = *MEMORY[0x277D85DE8];

    return v23(v24, a3, 0, a2, v25, v4);
  }

  else
  {
    v27 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_240B328E8(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = **(*a1 + 8) * a2;
  LODWORD(v24) = ***a1;
  *(&v24 + 4) = __PAIR64__(v24, v4);
  HIDWORD(v24) = v4;
  v5 = v24;
  if (v24)
  {
    v6 = 2 * v24 + 141;
    if ((v6 & 0x780) != 0)
    {
      v5 = v6 & 0x3FFFFFF80;
    }

    else
    {
      v5 = (v6 & 0x3FFFFFF80) + 128;
    }
  }

  v25 = v5;
  v26 = 0;
  v27 = 2;
  if (sub_240B597F0(&v24))
  {
    v7 = v26;
    v26 = 0;
    if (v7)
    {
      atomic_fetch_add(&qword_27E519020, -*(v7 - 24));
      free(*(v7 - 32));
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v25;
  v10 = v26;
  v11 = v27;
  v12 = *(v3 + 16);
  *v12 = v24;
  v13 = *(v12 + 24);
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  if (v13)
  {
    atomic_fetch_add(&qword_27E519020, -*(v13 - 24));
    free(*(v13 - 32));
  }

  *(v12 + 32) = v11;
  v14 = *(v3 + 24);
  if ((*v14)[1])
  {
    v15 = v14[1];
    v18 = (**v14)((*v14)[3], v2, *v14[2]);
    v19 = *v15;
    *v15 = v18;
    if (v19)
    {
      (*(v15[1] + 16))(v19, v16, v17);
    }

    if (!*v14[1])
    {
      return 0xFFFFFFFFLL;
    }

    sub_240B323EC(v14[3], v2);
    if (v2)
    {
      v20 = 0;
      do
      {
        v21 = *v14[3] + v20;
        v22 = *v14[2];
        v23 = *(v21 + 8) - *v21;
        if (v22 <= v23)
        {
          if (v22 < v23)
          {
            *(v21 + 8) = *v21 + v22;
          }
        }

        else
        {
          sub_240B26918(v21, v22 - v23);
        }

        v20 += 24;
        --v2;
      }

      while (v2);
    }
  }

  return 0;
}

unint64_t *sub_240B32AD0(unint64_t *result, unsigned int a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = result[1];
  memset(v36, 0, sizeof(v36));
  v4 = **v3;
  if (v4)
  {
    v5 = 0;
    v6 = *v3[1];
    do
    {
      v7 = *(v6 + 8 * v5);
      if (v7)
      {
        v8 = *(v7 + 24) + *(v7 + 16) * a2;
      }

      else
      {
        v8 = v3[2][3];
      }

      *(v36 + v5++) = v8;
    }

    while (v4 != v5);
    v9 = 0;
    v34 = 0u;
    v35 = 0u;
    do
    {
      v10 = v4 * a3;
      v11 = v3[3];
      result = v3[4];
      v13 = v11[2];
      v12 = v11[3];
      *(&v34 + v9) = v12 + v13 * (v4 * a3 + v9);
      v14 = *result;
      if (*result)
      {
        v15 = 0;
        v16 = *(v36 + v9);
        v17 = (v12 + v13 * (v9 + v10));
        do
        {
          v18 = *v16++;
          *v17++ = vcvt_f16_f32(v18);
          v15 += 4;
        }

        while (v15 < v14);
        v4 = **v3;
      }

      ++v9;
    }

    while (v9 < v4);
  }

  else
  {
    v34 = 0uLL;
    v35 = 0uLL;
  }

  if (v3[5][1])
  {
    v19 = *(*v3[6] + 24 * a3);
  }

  else
  {
    v19 = *v3[7] + *v3[8] * a2;
  }

  v20 = *v3[4];
  if (v20)
  {
    v21 = 0;
    v22 = v4;
    do
    {
      if (v22)
      {
        for (i = 0; i < v22; ++i)
        {
          *(v19 + 2 * (i + v21 * v22)) = *(*(&v34 + i) + 2 * v21);
          v22 = **v3;
        }

        v20 = *v3[4];
        v4 = **v3;
      }

      ++v21;
    }

    while (v21 < v20);
    v24 = 2 * v20;
  }

  else
  {
    v24 = 0;
  }

  if (*v3[9])
  {
    v25 = v24 * v4;
    if (v25)
    {
      for (j = 0; j < v25; j += 2)
      {
        v27 = (v19 + j);
        v28 = *(v19 + j);
        *v27 = *(v19 + j + 1);
        v27[1] = v28;
      }
    }
  }

  v29 = v3[5][1];
  if (v29)
  {
    v30 = *v3[10];
    v31 = *v3[4];
    v32 = *MEMORY[0x277D85DE8];

    return v29(v30, a3, 0, a2, v31, v19);
  }

  else
  {
    v33 = *MEMORY[0x277D85DE8];
  }

  return result;
}

unsigned int *sub_240B32D14(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = result[1];
  if (*result)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  v8 = 4 * *result;
  do
  {
    if ((v7 & 1) == 0)
    {
      v9 = 0;
      v10 = a2 + 40 * v4;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      do
      {
        result = memcpy(v11, (*&v3[10 * v4 + 6] + *&v3[10 * v4 + 4] * v9++), v8);
        v11 += v12;
      }

      while (v5 != v9);
    }

    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t sub_240B32DB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_240B33404(&v27, a1, a6, a2);
  v18 = a3;
  v19 = a4;
  sub_240B335C4(v22, &v18);
  if (!sub_240B3362C(&v27, v22, a5, 0) && !sub_240B33DB0(&v27))
  {
    v9 = 8 * (v22[2] - v23 + v24) - v22[1];
    v26 = v9;
    if (v9 <= 8 * (v22[3] - v23) + 64)
    {
      v10 = v9 >> 3;
      v25 = 1;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      memset(v17, 0, sizeof(v17));
      if (v28 == v29)
      {
        v13 = sub_240B34598(v27.i64, 0, 0, 0) == 0;
      }

      else
      {
        v11 = *v28;
        if (*v28 + v10 <= a4)
        {
          v12 = *(v28 + 8);
          v16[0] = (a3 + v10);
          v16[1] = v11;
          operator new();
        }

        v13 = 0;
      }

      v16[0] = v17;
      sub_240B374BC(v16);
      if (v21)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      if (v14 && !sub_240B37540(&v27))
      {
        *(a5 + 440) = v10;
      }

      v17[0] = &v18;
      sub_240B375DC(v17);
    }
  }

  return sub_240B37684(&v27);
}

void sub_240B33340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, char **a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  a15 = &a17;
  sub_240B374BC(&a15);
  a17 = &a20;
  sub_240B375DC(&a17);
  sub_240B37684(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_240B33404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_240B56E88(a1 + 48, a3);
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 840) = 8;
  *(a1 + 848) = 0;
  *(a1 + 856) = 1;
  *(a1 + 864) = 0;
  *(a1 + 880) = 0;
  *(a1 + 872) = 0;
  *(a1 + 1034) = 1;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0;
  sub_240B2BCB4(a1 + 1152);
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  sub_240B63BBC(a1 + 1232);
  *(a1 + 1328) = 257;
  *(a1 + 1400) = 0;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1410) = 1;
  *(a1 + 1416) = 0;
  *(a1 + 1424) = 1;
  *(a1 + 1484) = 0;
  *(a1 + 1468) = 0;
  *(a1 + 1476) = 0;
  *(a1 + 1460) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1456) = 0;
  return a1;
}

void sub_240B33514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 1208);
  if (v14)
  {
    *(v10 + 1216) = v14;
    operator delete(v14);
  }

  sub_240B23FBC(v10 + 1064);
  v15 = *(v10 + 1040);
  if (v15)
  {
    *(v10 + 1048) = v15;
    operator delete(v15);
  }

  a10 = (v10 + 864);
  sub_240B37900(&a10);
  sub_240B3CF1C(v11);
  sub_240B3CEA4(v10 + 48);
  v16 = *v12;
  if (*v12)
  {
    *(v10 + 24) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B335C4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *a2;
  v4 = *a2 + *(a2 + 8) - 8;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (v3 > v4)
  {
    sub_240B244C4(a1);
  }

  else
  {
    v5 = *v3;
    *(a1 + 16) = v3 + 7;
    *a1 = v5;
    *(a1 + 8) = 56;
  }

  return a1;
}

uint64_t sub_240B3362C(uint64x2_t *a1, unint64_t *a2, uint64_t a3, char a4)
{
  a1[48].i64[0] = a3;
  sub_240B699B4(&v72);
  v8 = a1->i64[0];
  *(v8 + 208) = v72.i32[0];
  v9 = v72.i64[1];
  v72.i64[1] = 0;
  sub_240B3ABD8((v8 + 216), v9);
  *(v8 + 224) = v73;
  memcpy((v8 + 240), v74, 0x2B0uLL);
  sub_240B3CB68((v8 + 928));
  *(v8 + 928) = v75;
  *(v8 + 944) = v76;
  v76 = 0;
  v75 = 0u;
  *&v77[0] = &v75;
  sub_240B3CBC8(v77);
  sub_240B38BD0(&v72.i64[1]);
  a1[38].i8[0] = a4;
  v10 = sub_240B546E4(a2, a1[3].i64);
  if (v10)
  {
    return v10;
  }

  sub_240B3CC4C(&v72, a1[3].i64);
  v11 = v74[5];
  a1[45] = v74[4];
  a1[46] = v11;
  a1[47] = v74[6];
  v12 = v74[1];
  a1[41] = v74[0];
  a1[42] = v12;
  v13 = v74[3];
  a1[43] = v74[2];
  a1[44] = v13;
  v14 = v73;
  a1[39] = v72;
  a1[40] = v14;
  v15 = a1[10].u32[0];
  v16 = a1[46].i64[0];
  v73 = 0u;
  memset(v74, 0, 88);
  v72 = 0u;
  sub_240B30D80(a3 + 96, &v72);
  for (i = 13; i != -2; i -= 5)
  {
    sub_240B22320(&v72.i64[i]);
  }

  v19 = *(a3 + 416);
  v18 = *(a3 + 424);
  if (v18 != v19)
  {
    do
    {
      v20 = v18 - 40;
      sub_240B22320((v18 - 16));
      v18 = v20;
    }

    while (v20 != v19);
  }

  *(a3 + 424) = v19;
  v21 = a1[26].i32[2];
  *(a3 + 48) = v21;
  if ((a1[38].i8[0] & 1) == 0 && ((a1[27].i8[8] & 1) != 0 || v21) && ((v22 = a1[4].i32[0], v22 == 3) || !v22))
  {
    v23 = a1->i64[0];
    *(v23 + 4456) = *(a1->i64[0] + 4456) + 1;
    *(v23 + 4464) = 0;
  }

  else
  {
    ++*(a1->i64[0] + 4464);
  }

  v24 = v16 == 1 && v15 == 1;
  v25 = a1[46].i64[1] + v16 * v15 + 2;
  if (v24)
  {
    v26 = 1;
  }

  else
  {
    v26 = a1[46].i64[1] + v16 * v15 + 2;
  }

  v69 = 0;
  v70 = 0;
  v71 = 0;
  __p = 0;
  v67 = 0;
  v68 = 0;
  if (v26 > 0x10000)
  {
    v10 = 1;
    goto LABEL_42;
  }

  v70 = 0;
  sub_240B245C8(&v69, v26);
  v28 = a2[1];
  v27 = a2[2];
  v29 = a2[3];
  if (8 * (v27 + a2[5] - a2[4]) - v28 < 8 * (v29 - a2[4]) + 64)
  {
    if (v27 > v29)
    {
      sub_240B244C4(a2);
      v30 = *a2;
      v31 = a2[1];
    }

    else
    {
      v30 = *a2 | (*v27 << v28);
      a2[2] = v27 + ((63 - v28) >> 3);
      v31 = v28 | 0x38;
    }

    v32 = v31 - 1;
    *a2 = v30 >> 1;
    a2[1] = v32;
    if (v30)
    {
      v40 = a2[4];
      v41 = 8 * (a2[3] - v40) + 64;
      v42 = 8 * (a2[2] - v40 + a2[5]) - v32;
      v36 = v41 >= v42;
      v43 = v41 - v42;
      if (!v36 || 12 * v26 > v43)
      {
        goto LABEL_38;
      }

      sub_240B245C8(&__p, v26);
      v46 = __p;
      memset(v82, 0, 24);
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      memset(v77, 0, sizeof(v77));
      sub_240B2BCB4(v81);
      v81[6] = 0;
      v10 = sub_240B2BD40(a2, 8uLL, v77, v82, 0);
      if (!v10)
      {
        sub_240B23A18(&v72, v77, a2, 0);
        v47 = sub_240B23CB8(0, v26, v46, a2, &v72, v82);
        v10 = v47 ? v47 : (v73.i32[1] != 1245184);
        v48 = *&v74[1];
        *&v74[1] = 0;
        if (v48)
        {
          atomic_fetch_add(&qword_27E519020, -*(v48 - 24));
          free(*(v48 - 32));
        }
      }

      if (*(&v79 + 1))
      {
        *&v80 = *(&v79 + 1);
        operator delete(*(&v79 + 1));
      }

      if (v78)
      {
        *(&v78 + 1) = v78;
        operator delete(v78);
      }

      v72.i64[0] = v77 + 8;
      sub_240B23988(&v72);
      v49 = *&v77[0];
      *&v77[0] = 0;
      if (v49)
      {
        atomic_fetch_add(&qword_27E519020, -*(v49 - 24));
        free(*(v49 - 32));
      }

      if (v82[0])
      {
        operator delete(v82[0]);
      }

      if (v10)
      {
        goto LABEL_39;
      }
    }

    v10 = sub_240B5081C(a2);
    if (v10)
    {
LABEL_39:
      v44 = __p;
      goto LABEL_40;
    }

    v33 = a2[4];
    v34 = 8 * (a2[3] - v33) + 64;
    v35 = 8 * (a2[2] - v33 + a2[5]) - a2[1];
    v36 = v34 >= v35;
    v37 = v34 - v35;
    if (v36 && 12 * v26 <= v37)
    {
      if (v26)
      {
        v38 = v69;
        v39 = v26;
        do
        {
          *v38++ = sub_240B54F60(0x800D00000009, 0x808801D00088015, a2);
          --v39;
        }

        while (v39);
      }

      if (sub_240B5081C(a2))
      {
        v10 = 1;
        goto LABEL_39;
      }

      if (8 * (a2[2] - a2[4] + a2[5]) - a2[1] <= 8 * (a2[3] - a2[4]) + 64)
      {
        v44 = __p;
        v50 = v67;
        v51 = a1[1].i64[0];
        v52 = a1[1].i64[1];
        v53 = (v52 - v51) >> 4;
        if (v26 <= v53)
        {
          if (v26 < v53)
          {
            a1[1].i64[1] = &v51[2 * v26];
          }

          a1[2].i64[1] = 0;
          v59 = &a1[2].i64[1];
          if (!v26)
          {
LABEL_84:
            if (sub_240B2AC6C(&a1[5].i64[1]) || a1[4].i8[8] < 0 || a1[3].i32[3])
            {
              v10 = 0;
LABEL_40:
              if (v44)
              {
                operator delete(v44);
              }

              goto LABEL_42;
            }

LABEL_83:
            v10 = 1;
            goto LABEL_40;
          }
        }

        else
        {
          v54 = v26 - v53;
          v55 = a1[2].i64[0];
          if (v54 > (v55 - v52) >> 4)
          {
            v56 = v55 - v51;
            v57 = v56 >> 3;
            if (v56 >> 3 <= v26)
            {
              v57 = v26;
            }

            if (v56 >= 0x7FFFFFFFFFFFFFF0)
            {
              v58 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v57;
            }

            if (!(v58 >> 60))
            {
              operator new();
            }

            sub_240B2291C();
          }

          bzero(a1[1].i64[1], 16 * v54);
          a1[1].i64[1] = v52 + 16 * v54;
          a1[2].i64[1] = 0;
          v59 = &a1[2].i64[1];
          v51 = a1[1].i64[0];
        }

        v60 = 0;
        v61 = 0;
        v62 = v69;
        v63 = v51;
        while (1)
        {
          v64 = v62[v61];
          *v63 = v64;
          v65 = v61;
          if (v44 != v50)
          {
            v65 = v44[v61];
          }

          v51[2 * v65 + 1] = v61;
          v36 = __CFADD__(v60, v64);
          v60 += v64;
          if (v36)
          {
            goto LABEL_83;
          }

          *v59 = v60;
          ++v61;
          v63 += 2;
          if (v26 == v61)
          {
            if (__CFADD__(v60, (8 * (a2[2] - a2[4] + a2[5]) - a2[1]) >> 3))
            {
              goto LABEL_83;
            }

            goto LABEL_84;
          }
        }
      }
    }

LABEL_38:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v10 = 0xFFFFFFFFLL;
LABEL_42:
  if (v69)
  {
    operator delete(v69);
  }

  return v10;
}

void sub_240B33CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B33DB0(uint64_t a1)
{
  v2 = *a1;
  **a1 = *(a1 + 456);
  sub_240B3CC4C(&v60, a1 + 48);
  *(v2 + 11) = v64;
  *(v2 + 13) = v65;
  *(v2 + 15) = v66;
  *(v2 + 17) = v67;
  *(v2 + 3) = v61;
  *(v2 + 5) = *v62;
  *(v2 + 7) = *&v62[16];
  *(v2 + 9) = v63;
  *(v2 + 1) = v60;
  v2[157] = v2;
  sub_240B221C8(&v54, v2[9], v2[10]);
  v3 = v59;
  if (v59)
  {
    return v3;
  }

  v5 = v55;
  v4 = v56;
  v56 = 0;
  v6 = v57;
  v60 = v58;
  *(v2 + 19) = v54;
  v7 = v2[22];
  v2[21] = v5;
  v2[22] = v4;
  if (v7)
  {
    atomic_fetch_add(&qword_27E519020, -*(v7 - 24));
    free(*(v7 - 32));
  }

  v2[23] = v6;
  *(v2 + 12) = v60;
  sub_240B3AC2C(&v49, v2[9], v2[10]);
  v3 = v53;
  if (!v53)
  {
    v8 = v50;
    v9 = v51;
    v51 = 0;
    v10 = v52;
    *(v2 + 64) = v49;
    v2[130] = v8;
    v11 = v2[131];
    v2[131] = v9;
    if (v11)
    {
      atomic_fetch_add(&qword_27E519020, -*(v11 - 24));
      free(*(v11 - 32));
    }

    v2[132] = v10;
    sub_240B22220(&v44, v2[9], v2[10]);
    v3 = v48;
    if (v48)
    {
      goto LABEL_36;
    }

    v12 = v46;
    v46 = 0;
    v13 = v47;
    v2[135] = v45;
    *(v2 + 133) = v44;
    v14 = v2[136];
    v2[136] = v12;
    if (v14)
    {
      atomic_fetch_add(&qword_27E519020, -*(v14 - 24));
      free(*(v14 - 32));
    }

    v2[137] = v13;
    sub_240B23694(&v60, v2[1], v2[2], 1);
    v3 = DWORD2(v66);
    if (DWORD2(v66))
    {
      goto LABEL_33;
    }

    v15 = *(&v61 + 1);
    v16 = *v62;
    v18 = *(&v63 + 1);
    v17 = v63;
    v19 = v61;
    *(&v61 + 1) = 0;
    *&v63 = 0;
    *(v2 + 69) = v60;
    v2[140] = v19;
    sub_240B2453C(v2 + 141, v15);
    v2[142] = v16;
    *(v2 + 143) = *&v62[8];
    v2[145] = *&v62[24];
    sub_240B2453C(v2 + 146, v17);
    v2[147] = v18;
    v20 = v65;
    *(v2 + 74) = v64;
    *(v2 + 75) = v20;
    v2[152] = v66;
    v2[195] = 393984;
    sub_240B22220(&v39, v2[9], v2[10]);
    v3 = v43;
    if (v43)
    {
LABEL_33:
      sub_240B6701C(&v60);
      if (!v48)
      {
        v30 = v46;
        v46 = 0;
        if (v30)
        {
          atomic_fetch_add(&qword_27E519020, -*(v30 - 24));
          free(*(v30 - 32));
        }
      }

LABEL_36:
      if (!v53)
      {
        v31 = v51;
        v51 = 0;
        if (v31)
        {
          atomic_fetch_add(&qword_27E519020, -*(v31 - 24));
          free(*(v31 - 32));
        }
      }

      goto LABEL_39;
    }

    v21 = v41;
    v41 = 0;
    v22 = v42;
    v2[201] = v40;
    *(v2 + 199) = v39;
    sub_240B2453C(v2 + 202, v21);
    v2[203] = v22;
    if ((*(a1 + 72) & 0x20) != 0)
    {
      if (*(a1 + 452) == 4)
      {
        goto LABEL_29;
      }

      v37 = 0;
      v36 = 0u;
      memset(v35, 0, sizeof(v35));
      sub_240B30D80((v2 + 204), v35);
      for (i = 104; i != -16; i -= 40)
      {
        sub_240B22320((v35 + i));
      }

      v27 = &v2[15 * *(a1 + 452) + 237];
      v2[219] = v27;
      if (!*v27)
      {
LABEL_29:
        v3 = 1;
        goto LABEL_30;
      }

      if (*(v2 + 398) && *(v2 + 399))
      {
        v28 = 0;
        do
        {
          bzero((v2[202] + v2[201] * v28++), *(v2 + 398));
        }

        while (v28 < *(v2 + 399));
      }
    }

    else
    {
      sub_240B2A11C(v35, v2[9], v2[10]);
      v3 = v38;
      if (v38)
      {
LABEL_30:
        if (!v43)
        {
          v29 = v41;
          v41 = 0;
          if (v29)
          {
            atomic_fetch_add(&qword_27E519020, -*(v29 - 24));
            free(*(v29 - 32));
          }
        }

        goto LABEL_33;
      }

      sub_240B2A358(v34, v35);
      sub_240B30D80((v2 + 204), v34);
      for (j = 104; j != -16; j -= 40)
      {
        sub_240B22320(&v34[j]);
      }

      v2[219] = v2 + 204;
      if (!v38)
      {
        v24 = &v36 + 1;
        v25 = -120;
        do
        {
          sub_240B22320(v24);
          v24 -= 5;
          v25 += 40;
        }

        while (v25);
      }
    }

    v3 = 0;
    goto LABEL_30;
  }

LABEL_39:
  if (!v59)
  {
    v32 = v56;
    v56 = 0;
    if (v32)
    {
      atomic_fetch_add(&qword_27E519020, -*(v32 - 24));
      free(*(v32 - 32));
    }
  }

  if (!v3)
  {
    sub_240B3C9CC(*a1, a1 + 48);
  }

  return v3;
}