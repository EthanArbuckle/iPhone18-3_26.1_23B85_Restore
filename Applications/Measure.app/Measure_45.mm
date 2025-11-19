void sub_1002F6C1C(_Unwind_Exception *a1)
{
  sub_1002F8F64(&STACK[0x700]);
  sub_100006D14(&STACK[0x620]);
  sub_100006D14(&STACK[0x680]);
  sub_1001D8BF4(&STACK[0x6E8]);
  _Unwind_Resume(a1);
}

uint64_t sub_1002F6E04(uint64_t result, unsigned int *a2, int a3)
{
  v4 = *(a2 + 10);
  v5 = *a2;
  v6 = **(result + 64);
  v7 = vadd_s32(v6, 0x100000001);
  v30 = vrev64_s32(v7);
  if (v6.i32[0] >= 3)
  {
    v9 = a3 == 47 || a3 == 49;
    if ((a3 & 0xFFFFFFFE) == 0x2E)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    v29[0] = 0;
    v29[1] = v7.i32[0];
    sub_1002F6FE8(v28, result, a2, v9, v10, &v30);
    v11 = a2[1];
    if (v11 >= 3)
    {
      v13 = *(a2 + 8);
      v14 = (v13 + 4);
      v15 = 1;
      v16 = v11 & 0x7FFFFFFE;
      v17 = 1;
      do
      {
        v15 *= *(v14 - 1);
        v17 *= *v14;
        v14 += 2;
        v16 -= 2;
      }

      while (v16);
      v12 = v17 * v15;
      v18 = v11 - (v11 & 0x7FFFFFFE);
      if (v18)
      {
        v19 = (v13 + 8 * ((v11 >> 1) & 0x3FFFFFFF));
        do
        {
          v20 = *v19++;
          v12 *= v20;
          --v18;
        }

        while (v18);
      }
    }

    else
    {
      v12 = a2[3] * a2[2];
    }

    sub_1002829C8(v29, v28, vcvtd_n_f64_u64(v12, 0x10uLL));
    result = sub_1002F7A18(v28);
  }

  v21 = ((v5 >> 3) & 0x1FF) + 1;
  v22 = *(a2 + 8);
  v23 = *v22;
  v30.i32[0] = v22[1];
  v30.i32[1] = v23;
  v24 = *(a2 + 2);
  v25 = v30.i32[0] * v21;
  if (v23 <= 2)
  {
    if (v25 >= 1)
    {
      v27 = 0;
      do
      {
        v24[(v30.i32[1] - 1) * v4] = 0;
        *v24++ = 0;
        ++v27;
      }

      while (v27 < v30.i32[0] * v21);
    }
  }

  else if (v25 >= 1)
  {
    v26 = 0;
    do
    {
      *v24 = v24[v4];
      v24[(v30.i32[1] - 1) * v4] = v24[(v30.i32[1] - 2) * v4];
      ++v26;
      ++v24;
    }

    while (v26 < v30.i32[0] * v21);
  }

  return result;
}

void sub_1002F6FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002F7A18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002F6FE8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  *a1 = off_1004788B0;
  v11 = *a2;
  v12 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = *(a2 + 32);
  v13 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 72);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v17 = *(a3 + 32);
  v19 = *(a3 + 48);
  v18 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 72);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = *a6;
  return a1;
}

void sub_1002F7158(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_1002F7188(uint64_t a1)
{
  sub_1002F7A18(a1);

  operator delete();
}

uint64_t sub_1002F71C0(uint64_t result, _DWORD *a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v10 = *a2;
  if (*a2 < a2[1])
  {
    v92 = v8;
    v93 = v9;
    v11 = ((*(result + 104) >> 3) & 0x1FF) + 1;
    v12 = *(result + 204);
    if (v10)
    {
      v13 = *(result + 200) == 0;
    }

    else
    {
      v13 = *(result + 200);
    }

    if (v10)
    {
      v12 = -v12;
    }

    v14 = *(result + 184);
    v15 = (*(result + 120) + v14 + v14 * v10 + v11 + 1);
    v16 = *(result + 88);
    v17 = *(result + 24) + v10 * v16;
    v18 = (2 * v11);
    v19 = 2 * v16;
    v89 = v19 | 1;
    v20 = ((v16 << 32) + 0x200000000) >> 32;
    v21 = (&_mh_execute_header + (v16 << 32)) >> 32;
    v22 = 2 * v16 + 2;
    v23 = ((v16 << 32) + 0x300000000) >> 32;
    v90 = v14;
    v24.i64[0] = -1;
    v24.i64[1] = -1;
    v87 = a2;
    do
    {
      v31 = *(result + 208);
      if (v31 <= 0)
      {
        if (v11 == 3)
        {
          v15[3 * v31 + 1] = 0;
          v15[3 * *(result + 208)] = 0;
          v15[3 * *(result + 208) - 1] = 0;
          *(v15 - 3) = 0;
          *(v15 - 4) = 0;
        }

        else
        {
          v15[v31 * v11 + 1] = 0;
          v15[*(result + 208) * v11] = 0;
          v15[*(result + 208) * v11 - 1] = 0;
          *(v15 - 3) = 0;
          *(v15 - 5) = 0;
          v15[*(result + 208) * v11 + 2] = -1;
          *(v15 - 2) = -1;
        }

        goto LABEL_11;
      }

      v32 = v17;
      v33 = v15;
      if (v13)
      {
        v32 = (v17 + 1);
        v34 = *(v17 + v16) + *(v17 + v20);
        v15[-v12] = (*(v17 + 1) + *(v17 + v89) + 1) >> 1;
        *v15 = *(v17 + v21);
        v15[v12] = (v34 + 1) >> 1;
        if (v11 == 4)
        {
          v15[2] = -1;
        }

        v33 = &v15[v11];
      }

      v35 = &v32->i8[*(result + 208)];
      if (v11 == 4)
      {
        v91.val[3] = v24;
        v36 = (v35 - 18);
        LODWORD(v37) = v32;
        if (v36 >= v32)
        {
          v38 = v33 - 1;
          v37 = v32;
          do
          {
            v39 = *(v37 + v16);
            v40 = vshrq_n_u16(v39, 8uLL);
            *a8.i8 = vshrn_n_s16(v39, 8uLL);
            v41 = vsraq_n_u16(vextq_s8(v40, v40, 2uLL), v39, 8uLL);
            v39.i16[0] = v39.u8[0];
            v39.i16[1] = BYTE2(*(v37 + v16));
            v39.i16[2] = BYTE4(*(v37->i64 + v16));
            v39.i16[3] = BYTE6(*(v37->i64 + v16));
            v39.i16[4] = *(&v37->i64[1] + v16);
            v39.i16[5] = BYTE2(*(&v37->i64[1] + v16));
            v39.i16[6] = BYTE12(*(v37 + v16));
            v39.i16[7] = BYTE14(*(v37 + v16));
            v42 = vextq_s8(v39, v39, 2uLL);
            v43.i16[0] = v37->u8[0];
            v43.i16[1] = BYTE2(v37->u32[0]);
            v43.i16[2] = BYTE4(v37->i64[0]);
            v43.i16[3] = BYTE6(v37->i64[0]);
            v43.i16[4] = v37->i64[1];
            v43.i16[5] = BYTE2(v37->i64[1]);
            v43.i16[6] = BYTE12(*v37);
            v43.i16[7] = BYTE14(*v37);
            v44.i16[0] = *(v37 + v19);
            v44.i16[1] = BYTE2(*(v37 + v19));
            v44.i16[2] = BYTE4(*(v37->i64 + v19));
            v44.i16[3] = BYTE6(*(v37->i64 + v19));
            v44.i16[4] = *(&v37->i64[1] + v19);
            v44.i16[5] = BYTE2(*(&v37->i64[1] + v19));
            v44.i16[6] = BYTE12(*(v37 + v19));
            v44.i16[7] = BYTE14(*(v37 + v19));
            v45 = vaddq_s16(v44, v43);
            v46 = vextq_s8(v45, v45, 2uLL);
            v47 = vaddq_s16(v46, v45);
            *v47.i8 = vrshrn_n_s16(v47, 2uLL);
            *v46.i8 = vrshrn_n_s16(v46, 1uLL);
            v48 = vzip1q_s8(v47, v46);
            v49 = vaddq_s16(vsraq_n_u16(vsraq_n_u16(v39, *v37, 8uLL), *(v37 + v19), 8uLL), v42);
            v91.val[1 - v12] = v48;
            *v49.i8 = vrshrn_n_s16(v49, 2uLL);
            *v48.i8 = vmovn_s16(v42);
            v50 = vzip1q_s8(v49, v48);
            *v48.i8 = vrshrn_n_s16(v41, 1uLL);
            v91.val[1] = v50;
            v91.val[v12 + 1] = vzip1q_s8(a8, v48);
            v95 = v91;
            vst4q_s8(v38, v95);
            v37 = (v37 + 14);
            v38 += 56;
          }

          while (v37 <= v36);
        }
      }

      else
      {
        v51 = (v35 - 18);
        LODWORD(v37) = v32;
        if (v51 >= v32)
        {
          v52 = v33 - 1;
          v37 = v32;
          do
          {
            v53 = *(v37 + v16);
            v54 = vshrq_n_u16(v53, 8uLL);
            v55 = vsraq_n_u16(vextq_s8(v54, v54, 2uLL), v53, 8uLL);
            *a8.i8 = vshrn_n_s16(v53, 8uLL);
            v53.i16[0] = v53.u8[0];
            v53.i16[1] = BYTE2(*(v37 + v16));
            v53.i16[2] = BYTE4(*(v37->i64 + v16));
            v53.i16[3] = BYTE6(*(v37->i64 + v16));
            v53.i16[4] = *(&v37->i64[1] + v16);
            v53.i16[5] = BYTE2(*(&v37->i64[1] + v16));
            v53.i16[6] = BYTE12(*(v37 + v16));
            v53.i16[7] = BYTE14(*(v37 + v16));
            v56 = vextq_s8(v53, v53, 2uLL);
            v57.i16[0] = v37->u8[0];
            v57.i16[1] = BYTE2(v37->u32[0]);
            v57.i16[2] = BYTE4(v37->i64[0]);
            v57.i16[3] = BYTE6(v37->i64[0]);
            v57.i16[4] = v37->i64[1];
            v57.i16[5] = BYTE2(v37->i64[1]);
            v57.i16[6] = BYTE12(*v37);
            v57.i16[7] = BYTE14(*v37);
            v58 = vsraq_n_u16(vsraq_n_u16(v53, *v37, 8uLL), *(v37 + v19), 8uLL);
            v59.i16[0] = *(v37 + v19);
            v59.i16[1] = BYTE2(*(v37 + v19));
            v59.i16[2] = BYTE4(*(v37->i64 + v19));
            v59.i16[3] = BYTE6(*(v37->i64 + v19));
            v59.i16[4] = *(&v37->i64[1] + v19);
            v59.i16[5] = BYTE2(*(&v37->i64[1] + v19));
            v59.i16[6] = BYTE12(*(v37 + v19));
            v59.i16[7] = BYTE14(*(v37 + v19));
            v60 = vaddq_s16(v59, v57);
            v61 = vextq_s8(v60, v60, 2uLL);
            v62 = vaddq_s16(v61, v60);
            *v62.i8 = vrshrn_n_s16(v62, 2uLL);
            *v61.i8 = vrshrn_n_s16(v61, 1uLL);
            v63 = vzip1q_s8(v62, v61);
            v91.val[1 - v12] = v63;
            v64 = vaddq_s16(v58, v56);
            *v64.i8 = vrshrn_n_s16(v64, 2uLL);
            *v63.i8 = vmovn_s16(v56);
            v65 = vzip1q_s8(v64, v63);
            *v63.i8 = vrshrn_n_s16(v55, 1uLL);
            v91.val[1] = v65;
            v91.val[v12 + 1] = vzip1q_s8(a8, v63);
            v94 = *v91.val[0].i8;
            vst3q_s8(v52, v94);
            v37 = (v37 + 14);
            v52 += 42;
          }

          while (v37 <= v51);
        }
      }

      v66 = v37 - v32;
      v67 = &v32->u8[v66];
      v68 = &v33[v11 * v66];
      v69 = v17 + v31 - 2;
      if (v11 == 3)
      {
        if (v12 <= 0)
        {
          if (v67 <= v69)
          {
            v88 = v13;
            v70 = &v32->u8[v66 + 1];
            do
            {
              v78 = v70 + 1;
              v79 = (*v70 + v70[v16 - 1] + v70[v20 - 1] + v70[v19] + 2) >> 2;
              v68[1] = (*(v70 - 1) + v70[1] + v70[v19 - 1] + v70[v22 - 1] + 2) >> 2;
              *v68 = v79;
              v80 = v70[v21 - 1];
              *(v68 - 1) = v80;
              v81 = (v80 + v70[v23 - 1] + 1) >> 1;
              v68[4] = (v70[1] + v70[v22 - 1] + 1) >> 1;
              v68[3] = v70[v20 - 1];
              v68[2] = v81;
              v68 += v18;
              v70 += 2;
            }

            while (v78 <= v69);
            goto LABEL_46;
          }
        }

        else if (v67 <= v69)
        {
          v88 = v13;
          v70 = &v32->u8[v66 + 1];
          do
          {
            v71 = v70 + 1;
            v72 = (*v70 + v70[v16 - 1] + v70[v20 - 1] + v70[v19] + 2) >> 2;
            *(v68 - 1) = (*(v70 - 1) + v70[1] + v70[v19 - 1] + v70[v22 - 1] + 2) >> 2;
            *v68 = v72;
            v73 = v70[v21 - 1];
            v68[1] = v73;
            v74 = (v73 + v70[v23 - 1] + 1) >> 1;
            v68[2] = (v70[1] + v70[v22 - 1] + 1) >> 1;
            v68[3] = v70[v20 - 1];
            v68[4] = v74;
            v68 += v18;
            v70 += 2;
          }

          while (v71 <= v69);
LABEL_46:
          v67 = v70 - 1;
          a2 = v87;
          v13 = v88;
        }
      }

      else if (v12 <= 0)
      {
        if (v67 <= v69)
        {
          v88 = v13;
          v70 = &v32->u8[v66 + 1];
          do
          {
            v82 = v70 + 1;
            v83 = (*(v70 - 1) + v70[1] + v70[v19 - 1] + v70[v22 - 1] + 2) >> 2;
            v84 = (*v70 + v70[v16 - 1] + v70[v20 - 1] + v70[v19] + 2) >> 2;
            *(v68 - 1) = v70[v21 - 1];
            *v68 = v84;
            v68[1] = v83;
            v68[2] = -1;
            v85 = (v70[1] + v70[v22 - 1] + 1) >> 1;
            v68[3] = (v70[v21 - 1] + v70[v23 - 1] + 1) >> 1;
            v68[4] = v70[v20 - 1];
            v68[5] = v85;
            v68[6] = -1;
            v68 += v18;
            v70 += 2;
          }

          while (v82 <= v69);
          goto LABEL_46;
        }
      }

      else if (v67 <= v69)
      {
        v88 = v13;
        v70 = &v32->u8[v66 + 1];
        do
        {
          v75 = v70 + 1;
          v76 = (*v70 + v70[v16 - 1] + v70[v20 - 1] + v70[v19] + 2) >> 2;
          *(v68 - 1) = (*(v70 - 1) + v70[1] + v70[v19 - 1] + v70[v22 - 1] + 2) >> 2;
          *v68 = v76;
          v68[1] = v70[v21 - 1];
          v68[2] = -1;
          v77 = (v70[v21 - 1] + v70[v23 - 1] + 1) >> 1;
          v68[3] = (v70[1] + v70[v22 - 1] + 1) >> 1;
          v68[4] = v70[v20 - 1];
          v68[5] = v77;
          v68[6] = -1;
          v68 += v18;
          v70 += 2;
        }

        while (v75 <= v69);
        goto LABEL_46;
      }

      if (v67 < v17 + v31 && (v86 = (v67[1] + v67[v16] + v67[v20] + v67[v89] + 2) >> 2, v68[-v12] = (*v67 + v67[2] + v67[v19] + v67[v22] + 2) >> 2, *v68 = v86, v68[v12] = v67[v21], v11 == 4))
      {
        v68[2] = -1;
      }

      else if (v11 == 3)
      {
        *(v15 - 4) = *(v15 - 1);
        *(v15 - 3) = *v15;
        v15[3 * *(result + 208) - 1] = v15[3 * *(result + 208) - 4];
        v27 = 3 * *(result + 208);
        v28 = 1;
        v29 = 3;
        v26 = v27;
        goto LABEL_10;
      }

      *(v15 - 5) = *(v15 - 1);
      v15[*(result + 208) * v11 - 1] = v15[*(result + 208) * v11 - 5];
      v25 = &v15[*(result + 208) * v11];
      *v25 = *(v25 - 4);
      v26 = *(result + 208) * v11;
      v27 = v26 + 1;
      v28 = 2;
      v29 = v11;
LABEL_10:
      v13 = v13 == 0;
      v15[v27] = v15[v26 - 3];
      v30 = *(result + 208) * v29;
      v15[v30 + v28] = v15[v30 - 2];
      v12 = -v12;
LABEL_11:
      v17 += v16;
      v15 += v90;
      ++v10;
    }

    while (v10 < a2[1]);
  }

  return result;
}

uint64_t sub_1002F7A18(uint64_t a1)
{
  *a1 = off_1004788B0;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_1002F7B54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, void *a6, int a7, int a8)
{
  *a1 = off_1004788F0;
  v15 = *a2;
  v16 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v16;
  *(a1 + 40) = *(a2 + 32);
  v17 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v17;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v17)
  {
    atomic_fetch_add((v17 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v18 = *(a2 + 72);
      v19 = *(a1 + 80);
      *v19 = *v18;
      v19[1] = v18[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v15) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v20 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v21 = *(a3 + 32);
  v23 = *(a3 + 48);
  v22 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v21;
  *(a1 + 152) = v23;
  *(a1 + 160) = v22;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v20;
  if (!v22)
  {
    if (SDWORD1(v20) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v22 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = *(a3 + 72);
  v25 = *(a1 + 176);
  *v25 = *v24;
  v25[1] = v24[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = *a6;
  *(a1 + 216) = a7;
  *(a1 + 220) = a8;
  return a1;
}

void sub_1002F7CDC(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_1002F7D0C(uint64_t a1)
{
  sub_1002F85E8(a1);

  operator delete();
}

uint64_t sub_1002F7D44(uint64_t result, _DWORD *a2)
{
  v6 = *a2;
  if (*a2 < a2[1])
  {
    v7 = 0;
    if (v6)
    {
      v8 = *(result + 200) == 0;
    }

    else
    {
      v8 = *(result + 200);
    }

    LODWORD(v10) = *(result + 216);
    v9 = *(result + 220);
    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (v6)
    {
      v10 = v9;
    }

    else
    {
      v10 = v10;
    }

    v12 = *(result + 184);
    v13 = *(result + 88);
    v14 = *(result + 24) + v6 * v13;
    v15 = 2 * v13;
    v16 = v15 | 1;
    v17 = ((v13 << 32) + 0x200000000) >> 32;
    v18 = (&_mh_execute_header + (v13 << 32)) >> 32;
    v163 = 2 * v13 + 2;
    v164 = v12;
    v19 = v14 - 1;
    v160 = ((v13 << 32) + 0x300000000) >> 32;
    v156 = v18 + 1;
    v155 = v17 + 1;
    v20 = xmmword_1003E3710;
    v21 = xmmword_1003E3700;
    v22 = xmmword_1003E3730;
    v23 = xmmword_1003E3720;
    v24 = xmmword_1003E36F0;
    v25 = vdup_n_s16(0x2591u);
    v26 = vdup_n_s16(0x4B22u);
    v27 = (*(result + 120) + v12 + 1 + v6 * v12);
    v157 = v14 - 1;
    v159 = a2;
    v158 = result;
    while (1)
    {
      v29 = *(result + 208);
      if (v29 <= 0)
      {
        v27[v29] = 0;
        *(v27 - 1) = 0;
        goto LABEL_13;
      }

      v30 = *(result + 208);
      v31 = v14;
      v32 = v27;
      if (v8)
      {
        v31 = v14 + 1;
        *v27 = ((*(v14 + v17) + *(v14 + v13)) * v10 + (*(v14 + v16) + *(v14 + 1)) * v11 + 19234 * *(v14 + v18) + 0x4000) >> 15;
        v32 = (v27 + 1);
        v30 = *(result + 208);
      }

      v33 = v31 + v30 - 18;
      v34 = 4 * v10;
      LODWORD(v35) = v31;
      if (v33 >= v31)
      {
        v35 = v31;
        v36 = v32;
        do
        {
          v37 = *(v35 + v13);
          v38 = vshrq_n_u16(v37, 8uLL);
          v39 = vsraq_n_u16(vextq_s8(v38, v38, 2uLL), v37, 8uLL);
          v37.i16[0] = v37.u8[0];
          v37.i16[1] = BYTE2(*(v35 + v13));
          v37.i16[2] = BYTE4(*(v35->i64 + v13));
          v37.i16[3] = BYTE6(*(v35->i64 + v13));
          v37.i16[4] = *(&v35->i64[1] + v13);
          v37.i16[5] = BYTE2(*(&v35->i64[1] + v13));
          v37.i16[6] = BYTE12(*(v35 + v13));
          v37.i16[7] = BYTE14(*(v35 + v13));
          v40 = vextq_s8(v37, v37, 2uLL);
          v41.i16[0] = v35->u8[0];
          v41.i16[1] = BYTE2(v35->u32[0]);
          v41.i16[2] = BYTE4(v35->i64[0]);
          v41.i16[3] = BYTE6(v35->i64[0]);
          v41.i16[4] = v35->i64[1];
          v41.i16[5] = BYTE2(v35->i64[1]);
          v41.i16[6] = BYTE12(*v35);
          v41.i16[7] = BYTE14(*v35);
          v42.i16[0] = *(v35 + v15);
          v42.i16[1] = BYTE2(*(v35 + v15));
          v42.i16[2] = BYTE4(*(v35->i64 + v15));
          v42.i16[3] = BYTE6(*(v35->i64 + v15));
          v42.i16[4] = *(&v35->i64[1] + v15);
          v42.i16[5] = BYTE2(*(&v35->i64[1] + v15));
          v42.i16[6] = BYTE12(*(v35 + v15));
          v42.i16[7] = BYTE14(*(v35 + v15));
          v43 = vaddq_s16(v42, v41);
          v44 = vextq_s8(v43, v43, 2uLL);
          v45 = vdupq_n_s16(0x4B22u);
          v2.i32[0] = 2 * v11;
          v3.i32[0] = 4 * v11;
          v4.i32[0] = 2 * v10;
          *v37.i8 = vrshrn_n_s16(vaddq_s16(vqdmulhq_s16(vaddq_s16(vsraq_n_u16(vsraq_n_u16(v37, *v35, 8uLL), *(v35 + v15), 8uLL), v40), v45), vaddq_s16(vqdmulhq_lane_s16(vaddq_s16(v44, v43), *v2.i8, 0), vqdmulhq_lane_s16(vshlq_n_s16(v38, 2uLL), *v4.i8, 0))), 2uLL);
          v5.i32[0] = 4 * v10;
          *v43.i8 = vrshrn_n_s16(vaddq_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v40, 2uLL), v45), vqdmulhq_lane_s16(v44, v3, 0)), vqdmulhq_lane_s16(v39, *v5.i8, 0)), 2uLL);
          *v36 = vzip1_s8(*v37.i8, *v43.i8);
          v36[1] = vzip2_s8(*v37.i8, *v43.i8);
          v35 = (v35 + 14);
          v36 = (v36 + 14);
        }

        while (v35 <= v33);
      }

      v46 = v35 - v31;
      v47 = (v31 + v46);
      v48 = v32 + v46;
      v49 = v14 + v29 - 2;
      if (v31 + v46 <= v49)
      {
        break;
      }

      if (v47 < v14 + v29)
      {
        goto LABEL_84;
      }

LABEL_12:
      v8 = v8 == 0;
      *(v27 - 1) = *v27;
      v27[*(result + 208)] = v27[*(result + 208) - 1];
      v28 = v11;
      v11 = v10;
      v10 = v28;
LABEL_13:
      ++v6;
      v14 += v13;
      v27 += v164;
      ++v7;
      v19 += v13;
      if (v6 >= a2[1])
      {
        return result;
      }
    }

    v161 = v14 + v29;
    v162 = v8;
    v50 = v47 + 2;
    v51 = v157 + v13 * v7 + v29;
    if ((v47 + 2) > v51)
    {
      v51 = (v47 + 2);
    }

    v52 = v51 + ~v31 - v46;
    if (v52 >= 0x20)
    {
      v53 = (v52 & 0xFFFFFFFFFFFFFFFELL) + v46;
      v54 = v18;
      v55 = v32 + v53 + 2;
      v56 = v31 + v53;
      v58 = v48 < v31 + v53 + v156 && v31 + v54 + v46 < v55;
      v60 = v48 < v56 + v15 + 2 && v31 + v15 + v46 < v55;
      v62 = v48 < v56 + v155 && v31 + v17 + v46 < v55;
      v64 = v48 < v56 + v13 + 1 && v31 + v13 + v46 < v55;
      v66 = v48 < v56 + 3 && v47 < v55;
      v68 = v48 < v56 + (v163 | 1uLL) && v31 + v163 + v46 < v55;
      if (v31 + v160 + v46 >= v55 || v48 >= v56 + v160 + 1)
      {
        v18 = (&_mh_execute_header + (v13 << 32)) >> 32;
        if (!v58 && !v60 && !v62 && !v64 && !v66)
        {
          v17 = ((v13 << 32) + 0x200000000) >> 32;
          if (v68)
          {
            goto LABEL_81;
          }

          v70 = (v52 >> 1) + 1;
          v71 = v70 & 0xF;
          if ((v70 & 0xF) == 0)
          {
            v71 = 16;
          }

          v72 = 2 * (v70 - v71);
          v48 += v72;
          v73 = vdupq_n_s32(v11);
          v47 += v72;
          v165 = vdupq_n_s32(v10);
          v166 = vdupq_n_s32(v34);
          v74 = (v19 + v29);
          if (v50 > v19 + v29)
          {
            v74 = v50;
          }

          v75 = ~(&v74[~v31 - v46] >> 1) + v71;
          v76 = v31 + v160;
          v77 = v31 + ((&_mh_execute_header + (v13 << 32)) >> 32);
          v78 = v31 + (((v13 << 32) + 0x200000000) >> 32);
          v79 = v31 + v13;
          v80 = v31 + v163;
          v81 = v31 + v15;
          v82 = v31 + 2;
          do
          {
            v83 = (v82 + v46);
            v84 = (v82 + v46 - 2);
            v85 = vld2q_s8(v84);
            v86 = vld2q_s8(v83);
            v87 = (v81 + v46);
            v167 = vld2q_s8(v87);
            v88 = vaddl_u8(*&v86, *&v85);
            v89 = vaddl_high_u8(v86, v85);
            v90 = vmovl_u8(*v167.val[0].i8);
            v91 = vmovl_high_u8(v167.val[0]);
            v92 = vaddl_high_u16(v89, v91);
            v93 = vaddl_u16(*v89.i8, *v91.i8);
            v94 = vaddl_high_u16(v88, v90);
            v95 = vaddl_u16(*v88.i8, *v90.i8);
            v96 = (v80 + v46);
            v97 = vld2q_s8(v96);
            v98 = vqtbl1q_s8(v97, v20);
            v99 = vqtbl1q_s8(v97, v21);
            v100 = vqtbl1q_s8(v97, v22);
            v101 = (v82 + v46 - 1);
            v102 = v26;
            v103 = v22;
            v104 = v21;
            v105 = v20;
            v168 = vld2q_s8(v101);
            v106 = v23;
            v107 = vqtbl1q_s8(v97, v23);
            v108 = (v79 + v46);
            v109 = vld2q_s8(v108);
            v110 = v24;
            v111 = vaddl_high_u8(v109, v168.val[0]);
            v112 = (v78 + v46);
            v113 = vld2q_s8(v112);
            v114 = vaddl_u8(*&v109, *v168.val[0].i8);
            v115 = vqtbl1q_s8(v113, v105);
            v116 = vqtbl1q_s8(v113, v104);
            v117 = vqtbl1q_s8(v113, v103);
            v118 = vqtbl1q_s8(v113, v106);
            v119 = vaddw_u16(v118, *v114.i8);
            v120 = vaddw_high_u16(v117, v114);
            v121 = vaddw_u16(v116, *v111.i8);
            v122 = vmovl_u8(*v167.val[1].i8);
            v167.val[0] = vmovl_high_u8(v167.val[1]);
            v123 = vaddw_high_u16(vaddw_high_u16(v115, v111), v167.val[0]);
            v124 = vaddw_u16(v121, *v167.val[0].i8);
            v125 = (v77 + v46);
            v126 = vld2q_s8(v125);
            v127 = vaddw_high_u16(v120, v122);
            v128 = vaddw_u16(v119, *v122.i8);
            v4 = vqtbl1q_s8(v126, v105);
            v5 = vqtbl1q_s8(v126, v104);
            v129 = vqtbl1q_s8(v126, v103);
            v130 = vqtbl1q_s8(v126, v106);
            v131 = vmlal_u16(vmulq_s32(vaddq_s32(v95, v107), v73), vmovn_s32(v128), v25);
            v132 = vmulq_s32(vaddq_s32(v94, v100), v73);
            *v94.i8 = vmovn_s32(v123);
            *v123.i8 = vmovn_s32(v127);
            v127.i64[0] = 0x800000008000;
            v127.i64[1] = 0x800000008000;
            v133 = vmlal_u16(v132, *v123.i8, v25);
            v24 = v110;
            v3 = v25;
            v2 = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmlal_u16(vmulq_s32(vaddq_s32(v92, v98), v73), *v94.i8, v25), v166, v4), v127), 0x10uLL);
            v134 = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmlal_u16(vmulq_s32(vaddq_s32(v93, v99), v73), vmovn_s32(v124), v25), v166, v5), v127), 0x10uLL);
            v135 = vshrq_n_u32(vaddq_s32(vmlaq_s32(v133, v166, v129), v127), 0x10uLL);
            v136 = vshrq_n_u32(vaddq_s32(vmlaq_s32(v131, v166, v130), v127), 0x10uLL);
            v169.val[0] = vqtbl4q_s8(*(&v2 - 3), v24);
            v137 = vmovl_high_u8(v168.val[1]);
            v138 = vmovl_u8(*v168.val[1].i8);
            v20 = v105;
            v21 = v104;
            v22 = v103;
            v26 = v102;
            v139 = vaddw_u16(v107, *v138.i8);
            v140 = vaddw_high_u16(v100, v138);
            v141 = (v76 + v46);
            v142 = vld2q_s8(v141);
            v23 = v106;
            v143 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v142, v106), v130), v165), v139, v73);
            v144 = vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v142, v20), v4), v165), vaddw_high_u16(v98, v137), v73), vmovn_s32(v115), v102);
            v145 = vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v142, v22), v129), v165), v140, v73), vmovn_s32(v117), v102);
            v134.i64[0] = 0x400000004000;
            v134.i64[1] = 0x400000004000;
            v146 = vaddq_s32(vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v142, v21), v5), v165), vaddw_u16(v99, *v137.i8), v73), vmovn_s32(v116), v102), v134);
            v147 = vaddq_s32(v144, v134);
            v25 = v3;
            v170.val[3] = vshrq_n_u32(v147, 0xFuLL);
            v170.val[2] = vshrq_n_u32(v146, 0xFuLL);
            v170.val[1] = vshrq_n_u32(vaddq_s32(v145, v134), 0xFuLL);
            v170.val[0] = vshrq_n_u32(vaddq_s32(vmlal_u16(v143, vmovn_s32(v118), v102), v134), 0xFuLL);
            v169.val[1] = vqtbl4q_s8(v170, v24);
            v148 = v32 + v46;
            vst2q_s8(v148, v169);
            v76 += 32;
            v77 += 32;
            v78 += 32;
            v79 += 32;
            v32 += 4;
            v80 += 32;
            v81 += 32;
            v82 += 32;
            v75 += 16;
          }

          while (v75);
        }

        v17 = ((v13 << 32) + 0x200000000) >> 32;
        goto LABEL_81;
      }

      v17 = ((v13 << 32) + 0x200000000) >> 32;
      v18 = (&_mh_execute_header + (v13 << 32)) >> 32;
    }

LABEL_81:
    v149 = 0;
    v150 = &v47[v18];
    v151 = &v47[v17];
    v152 = &v47[v163];
    do
    {
      v153 = &v48[v149];
      *v153 = (9617 * (v47[v13 + v149] + v47[v149 + 1] + v151[v149] + v47[v15 + 1 + v149]) + (v47[v149 + 2] + v47[v149] + v47[v15 + v149] + v152[v149]) * v11 + v34 * v150[v149] + 0x8000) >> 16;
      v153[1] = ((v47[v160 + v149] + v150[v149]) * v10 + (v152[v149] + v47[v149 + 2]) * v11 + 19234 * v151[v149] + 0x4000) >> 15;
      v149 += 2;
      v154 = &v47[v149];
    }

    while (&v47[v149] <= v49);
    v48 += v149;
    v47 += v149;
    result = v158;
    a2 = v159;
    v8 = v162;
    v16 = v15 | 1;
    v17 = ((v13 << 32) + 0x200000000) >> 32;
    v18 = (&_mh_execute_header + (v13 << 32)) >> 32;
    if (v154 >= v161)
    {
      goto LABEL_12;
    }

LABEL_84:
    *v48 = (9617 * (v47[v13] + v47[1] + v47[v17] + v47[v16]) + (v47[2] + *v47 + v47[v15] + v47[v163]) * v11 + 4 * v10 * v47[v18] + 0x8000) >> 16;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1002F85E8(uint64_t a1)
{
  *a1 = off_1004788F0;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_1002F8724(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, void *a6, int a7, int a8)
{
  *a1 = off_100478930;
  v15 = *a2;
  v16 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v16;
  *(a1 + 40) = *(a2 + 32);
  v17 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v17;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v17)
  {
    atomic_fetch_add((v17 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v18 = *(a2 + 72);
      v19 = *(a1 + 80);
      *v19 = *v18;
      v19[1] = v18[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v15) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v20 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v21 = *(a3 + 32);
  v23 = *(a3 + 48);
  v22 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v21;
  *(a1 + 152) = v23;
  *(a1 + 160) = v22;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v20;
  if (!v22)
  {
    if (SDWORD1(v20) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v22 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = *(a3 + 72);
  v25 = *(a1 + 176);
  *v25 = *v24;
  v25[1] = v24[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = *a6;
  *(a1 + 216) = a7;
  *(a1 + 220) = a8;
  return a1;
}

void sub_1002F88AC(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_1002F88DC(uint64_t a1)
{
  sub_1002F8F64(a1);

  operator delete();
}

uint64_t sub_1002F8914(uint64_t result, int *a2)
{
  v3 = *a2;
  v2 = a2[1];
  LODWORD(v4) = *(result + 216);
  v5 = *(result + 220);
  if (*a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = v5;
  }

  if (v3)
  {
    v7 = *(result + 200) == 0;
  }

  else
  {
    v7 = *(result + 200);
  }

  v8 = v2 - v3;
  if (v2 > v3)
  {
    v9 = *(result + 184);
    v10 = (*(result + 120) + ((&_mh_execute_header + (v9 >> 1 << 32)) >> 31) + 2 * (v3 * (v9 >> 1)));
    v11 = *(result + 208);
    v12 = (v9 >> 1);
    if (v11 <= 0)
    {
      do
      {
        v10[v11] = 0;
        *(v10 - 1) = 0;
        v10 += v12;
        --v8;
      }

      while (v8);
    }

    else
    {
      v13 = 0;
      v14 = *(result + 88) >> 1;
      v15 = *(result + 24);
      v16 = 2 * v14;
      result = v16 | 1;
      v17 = v14 << 32;
      v18 = v14;
      v19 = (v14 << 32) + 0x200000000;
      v20 = v19 >> 32;
      v21 = &_mh_execute_header + (v14 << 32);
      v22 = v21 >> 32;
      v23 = 2 * v14 + 2;
      v24 = (v14 << 32) + 0x300000000;
      v25 = v11 - 1;
      LODWORD(v14) = v3 * v14;
      v26 = v15 + 2 * v14;
      v27 = v17 >> 31;
      v108 = v24 >> 31;
      v106 = v21 >> 31;
      v107 = (v24 >> 31) + 2;
      v119 = v16;
      v126 = 2 * v16;
      v104 = 2 * v16 + 4;
      v105 = (v21 >> 31) + 2;
      v103 = v19 >> 31;
      v102 = (v19 >> 31) + 2;
      v101 = v27 + 2;
      v114 = v23;
      v125 = 2 * v23;
      v100 = (2 * v23) | 2;
      v124 = 2 * (v24 >> 32);
      v123 = 2 * (v21 >> 32);
      v122 = 2 * (v19 >> 32);
      v120 = v12;
      v121 = 2 * v18;
      v28 = vdupq_n_s32(0x2591u);
      v29 = vdupq_n_s16(0x4B22u);
      v111 = v27;
      v112 = v15 + 2 * (v11 + v14) - 3;
      v30 = v112;
      v110 = v2;
      v109 = v11;
      v117 = v18;
      v118 = v16 | 1;
      v115 = v21 >> 32;
      v116 = v19 >> 32;
      v113 = v11 - 1;
      do
      {
        v32 = v4;
        v33 = v26;
        v34 = v10;
        if (v7)
        {
          v33 = v26 + 2;
          *v10 = ((*(v26 + 2 * v20) + *(v26 + 2 * v18)) * v6 + (*(v26 + 2 * result) + *(v26 + 2)) * v32 + 19234 * *(v26 + 2 * v22) + 0x4000) >> 15;
          v34 = v10 + 1;
        }

        v35 = v26 + 2 * v11;
        v36 = v35 - 4;
        if (v33 <= v35 - 4)
        {
          v127 = v26 + 2 * v11;
          v128 = v7;
          v37 = v112 + v27 * v13;
          v38 = 4 * v6;
          v39 = v33 + 4;
          if (v37 <= v33 + 4)
          {
            v37 = v33 + 4;
          }

          v40 = v27;
          v41 = v37 + ~v33;
          if (v41 >= 0x20)
          {
            v42 = v34 + (v41 & 0xFFFFFFFFFFFFFFFCLL) + 4;
            v43 = v33 + (v41 & 0xFFFFFFFFFFFFFFFCLL);
            v44 = v43 + v107;
            v45 = v43 + v104;
            v46 = v43 + v102;
            v47 = v33 + v40;
            v48 = v43 + v101;
            v49 = v43 + 6;
            v50 = v43 + v100;
            v52 = v34 < v43 + v105 && v33 + v106 < v42;
            v54 = v34 < v45 && v33 + v126 < v42;
            v56 = v34 < v46 && v33 + v103 < v42;
            v58 = v34 < v48 && v47 < v42;
            v60 = v34 < v49 && v33 < v42;
            v62 = v34 < v50 && v33 + v125 < v42;
            if (v33 + v108 >= v42 || v34 >= v44)
            {
              v2 = v110;
              v11 = v109;
              if (!v52 && !v54 && !v56 && !v58 && !v60 && !v62)
              {
                v64 = 0;
                v65 = (v41 >> 2) + 1;
                v66 = v65 & 7;
                if ((v65 & 7) == 0)
                {
                  v66 = 8;
                }

                v67 = 2 * (v65 - v66);
                v68 = &v34[v67];
                v69 = v33 + v67 * 2;
                v70 = vdupq_n_s32(v32);
                v71 = vdupq_n_s32(v38);
                v72 = vdupq_n_s32(v6);
                if (v30 > v39)
                {
                  v39 = v30;
                }

                v73 = ~((~v33 + v39) >> 2) + v66;
                do
                {
                  v74 = (v33 + v64);
                  v75 = vld2q_s16(v74);
                  v76 = (v33 + v126 + v64);
                  v129 = vld2q_s16(v76);
                  v77 = (v33 + v125 + v64);
                  v78 = vld2q_s16(v77);
                  v79 = (v33 + v64 + 4);
                  v80 = vld2q_s16(v79);
                  v81 = (v33 + v64 + 2);
                  v130 = vld2q_s16(v81);
                  v82 = vaddl_u16(*&v80, *&v75);
                  v83 = (v33 + v121 + v64);
                  v84 = vld2q_s16(v83);
                  v85 = vaddl_high_u16(v80, v75);
                  v86 = (v33 + v122 + v64);
                  v87 = vld2q_s16(v86);
                  v88 = vaddw_u16(v82, *v129.val[0].i8);
                  v89 = (v33 + v123 + v64);
                  v90 = vld2q_s16(v89);
                  v91 = vaddw_high_u16(vaddw_high_u16(v85, v129.val[0]), v78);
                  v129.val[0] = vmulq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v84, v130.val[0]), v87), v129.val[1]), v28);
                  v92 = vmlaq_s32(vmulq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*&v84, *v130.val[0].i8), *&v87), *v129.val[1].i8), v28), vaddw_u16(v88, *&v78), v70);
                  v93 = (v33 + v124 + v64);
                  v129.val[1] = vld2q_s16(v93);
                  v130.val[0] = vraddhn_high_s32(vraddhn_s32(vmlaq_s32(v92, v71, vmovl_u16(*&v90)), 0), vmlaq_s32(vmlaq_s32(v129.val[0], v91, v70), v71, vmovl_high_u16(v90)), 0);
                  v130.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmlaq_s32(vmulq_s32(vaddl_u16(*v129.val[1].i8, *&v90), v72), vaddl_u16(*&v78, *v130.val[1].i8), v70), *&v87, *v29.i8), 0xFuLL), vmlal_high_u16(vmlaq_s32(vmulq_s32(vaddl_high_u16(v129.val[1], v90), v72), vaddl_high_u16(v78, v130.val[1]), v70), v87, v29), 0xFuLL);
                  v94 = &v34[v64 / 2];
                  vst2q_s16(v94, v130);
                  v64 += 32;
                  v73 += 8;
                }

                while (v73);
                v34 = v68;
                v33 = v69;
              }
            }

            else
            {
              v2 = v110;
              v11 = v109;
            }
          }

          v95 = 0;
          v96 = v33 + v123;
          v97 = v33 + v122;
          v98 = v33 + v125;
          do
          {
            v99 = &v34[v95 / 2];
            *v99 = (9617 * (*(v33 + v121 + v95) + *(v33 + v95 + 2) + *(v97 + v95) + *(v33 + v126 + v95 + 2)) + (*(v33 + v95 + 4) + *(v33 + v95) + *(v33 + v126 + v95) + *(v98 + v95)) * v32 + v38 * *(v96 + v95) + 0x8000) >> 16;
            v99[1] = ((*(v33 + v124 + v95) + *(v96 + v95)) * v6 + (*(v98 + v95) + *(v33 + v95 + 4)) * v32 + 19234 * *(v97 + v95) + 0x4000) >> 15;
            v95 += 4;
          }

          while (v33 + v95 <= v36);
          v34 = (v34 + v95);
          v33 += v95;
          v7 = v128;
          v12 = v120;
          v18 = v117;
          result = v118;
          v22 = v115;
          v20 = v116;
          v25 = v113;
          v27 = v111;
          v35 = v127;
        }

        if (v33 < v35)
        {
          *v34 = (9617 * (*(v33 + 2 * v18) + *(v33 + 2) + *(v33 + 2 * v20) + *(v33 + 2 * result)) + (*(v33 + 4) + *v33 + *(v33 + 2 * v119) + *(v33 + 2 * v114)) * v32 + 4 * v6 * *(v33 + 2 * v22) + 0x8000) >> 16;
        }

        v7 = v7 == 0;
        v31 = v10[v25];
        v26 += 2 * v18;
        *(v10 - 1) = *v10;
        v10[v11] = v31;
        v10 += v12;
        ++v3;
        ++v13;
        v30 += v27;
        v4 = v6;
        v6 = v32;
      }

      while (v3 != v2);
    }
  }

  return result;
}

uint64_t sub_1002F8F64(uint64_t a1)
{
  *a1 = off_100478930;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_1002F90A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  *a1 = off_100478970;
  v11 = *a2;
  v12 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = *(a2 + 32);
  v13 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 72);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v17 = *(a3 + 32);
  v19 = *(a3 + 48);
  v18 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 72);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = *a6;
  return a1;
}

void sub_1002F9210(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_1002F9240(uint64_t a1)
{
  sub_1002F9924(a1);

  operator delete();
}

uint64_t sub_1002F9278(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 > *a2)
  {
    v5 = *(result + 104);
    v6 = ((v5 >> 3) & 0x1FF) + 1;
    v7 = *(result + 184) >> 1;
    v8 = *(result + 120);
    v9 = v7 + v7 * v2;
    v10 = *(result + 208);
    v11 = v10 * v6;
    v58 = v10 * v6 - 1;
    if (v10 >= 1)
    {
      v12 = (v8 + 2 * v9 + 2 * v6 + 2);
      v13 = *(result + 88);
      v14 = 2 * (v13 >> 1);
      v15 = v14;
      v16 = v14 | 1;
      v17 = v13 >> 1 << 32;
      v18 = (v13 >> 1);
      v19 = (v17 + 0x200000000) >> 32;
      v20 = (&_mh_execute_header + v17) >> 32;
      v21 = v14 + 2;
      v22 = (v17 + 0x300000000) >> 32;
      v57 = v15;
      v23 = *(result + 200);
      if (v2)
      {
        v24 = -*(result + 204);
      }

      else
      {
        v24 = *(result + 204);
      }

      if (v2)
      {
        v23 = v23 == 0;
      }

      v25 = *(result + 24) + 2 * (v2 * (v13 >> 1));
      v26 = 4 * ((v5 >> 3) & 0x1FF) + 4;
      v27 = 2 * v15 + 2;
      while (1)
      {
        v33 = v25;
        v34 = v12;
        if (v23)
        {
          v33 = (v25 + 2);
          v35 = *(v25 + 2 * v18) + *(v25 + 2 * v19);
          v12[-v24] = (*(v25 + 2) + *(v25 + 2 * v16) + 1) >> 1;
          *v12 = *(v25 + 2 * v20);
          v12[v24] = (v35 + 1) >> 1;
          if (v6 == 4)
          {
            v12[2] = -1;
          }

          v34 = &v12[v6];
        }

        v36 = v25 + 2 * v10;
        v37 = v36 - 4;
        if (v6 == 3)
        {
          if (v24 <= 0)
          {
            for (i = v33; i <= v37; v33 = i)
            {
              i = v33 + 2;
              v43 = (v33[1] + v33[v18] + v33[v19] + *(v33 + v27) + 2) >> 2;
              v34[1] = (*v33 + v33[2] + *(v33 + v27 - 2) + v33[v21] + 2) >> 2;
              *v34 = v43;
              v44 = v33[v20];
              *(v34 - 1) = v44;
              v45 = v33[v22];
              v34[4] = (v33[2] + v33[v21] + 1) >> 1;
              v34[3] = v33[v19];
              v34[2] = (v44 + v45 + 1) >> 1;
              v34 = (v34 + v26);
            }
          }

          else
          {
            if (v33 > v37)
            {
              goto LABEL_24;
            }

            i = v33;
            do
            {
              v39 = i[2];
              i += 2;
              v40 = (v33[1] + v33[v18] + v33[v19] + *(v33 + v27) + 2) >> 2;
              *(v34 - 1) = (*v33 + v39 + *(v33 + v27 - 2) + v33[v21] + 2) >> 2;
              *v34 = v40;
              v41 = v33[v20];
              v34[1] = v41;
              v42 = v33[v22];
              v34[2] = (*i + v33[v21] + 1) >> 1;
              v34[3] = v33[v19];
              v34[4] = (v41 + v42 + 1) >> 1;
              v34 = (v34 + v26);
              v33 = i;
            }

            while (i <= v37);
          }
        }

        else if (v24 <= 0)
        {
          for (i = v33; i <= v37; v33 = i)
          {
            i = v33 + 2;
            v46 = (*v33 + v33[2] + *(v33 + v27 - 2) + v33[v21] + 2) >> 2;
            v47 = (v33[1] + v33[v18] + v33[v19] + *(v33 + v27) + 2) >> 2;
            *(v34 - 1) = v33[v20];
            *v34 = v47;
            v34[1] = v46;
            v34[2] = -1;
            v48 = (v33[2] + v33[v21] + 1) >> 1;
            v34[3] = (v33[v20] + v33[v22] + 1) >> 1;
            v34[4] = v33[v19];
            v34[5] = v48;
            v34[6] = -1;
            v34 = (v34 + v26);
          }
        }

        else
        {
          if (v33 > v37)
          {
LABEL_24:
            i = v33;
            goto LABEL_33;
          }

          i = v33;
          do
          {
            v49 = i[2];
            i += 2;
            v50 = (v33[1] + v33[v18] + v33[v19] + *(v33 + v27) + 2) >> 2;
            *(v34 - 1) = (*v33 + v49 + *(v33 + v27 - 2) + v33[v21] + 2) >> 2;
            *v34 = v50;
            v34[1] = v33[v20];
            v34[2] = -1;
            v51 = (v33[v20] + v33[v22] + 1) >> 1;
            v34[3] = (*i + v33[v21] + 1) >> 1;
            v34[4] = v33[v19];
            v34[5] = v51;
            v34[6] = -1;
            v34 = (v34 + v26);
            v33 = i;
          }

          while (i <= v37);
        }

LABEL_33:
        if (i < v36 && (v52 = (i[1] + i[v18] + i[v19] + i[v16] + 2) >> 2, v34[-v24] = (*i + i[2] + i[v57] + i[v21] + 2) >> 2, *v34 = v52, v34[v24] = i[v20], v6 == 4))
        {
          v34[2] = -1;
        }

        else if (v6 == 3)
        {
          *(v12 - 4) = *(v12 - 1);
          *(v12 - 3) = *v12;
          result = 3 * v10 - 1;
          v28 = 3 * v10;
          v29 = 3 * v10;
          v30 = 3 * v10 + 1;
          goto LABEL_11;
        }

        *(v12 - 5) = *(v12 - 1);
        v12[v58] = v12[v11 - 5];
        v28 = v10 * v6;
        result = (v10 * v6);
        v29 = v10 * v6 + 1;
        v30 = v10 * v6 + 2;
LABEL_11:
        v31 = v30;
        v32 = &v12[v28];
        v12[result] = *(v32 - 4);
        v12[v29] = *(v32 - 3);
        v12[v31] = *(v32 - 2);
        v23 = v23 == 0;
        v24 = -v24;
        v25 += 2 * v18;
        v12 += v7;
        if (++v2 == v3)
        {
          return result;
        }
      }
    }

    if (((*(result + 104) >> 3) & 0x1FF) == 2)
    {
      v53 = 2 * v9 + 2 * ((v5 >> 3) & 0x1FF) + v8 - 4;
      v54 = 2 * v7;
      do
      {
        *(v53 + 2 * (3 * v10 + 1) + 4 + 4) = 0;
        *(v53 + 6 * v10 + 4 + 4) = 0;
        *(v53 + 2 * (3 * v10 - 1) + 4 + 4) = 0;
        *(v53 + 4) = 0;
        *v53 = 0;
        v53 += v54;
        --v4;
      }

      while (v4);
    }

    else
    {
      v55 = (v8 + 2 * v9 + 2 * ((v5 >> 3) & 0x1FF));
      v56 = 2 * v7;
      do
      {
        v55[v10 * v6 + 3] = 0;
        v55[v11 + 2] = 0;
        v55[v58 + 2] = 0;
        *(v55 - 1) = 0;
        *(v55 - 3) = 0;
        v55[v10 * v6 + 4] = -1;
        *v55 = -1;
        v55 = (v55 + v56);
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_1002F9924(uint64_t a1)
{
  *a1 = off_100478970;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_1002F9A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6)
{
  *a1 = off_1004789B0;
  v11 = *a2;
  v12 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = *(a2 + 32);
  v13 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 72);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v17 = *(a3 + 32);
  v19 = *(a3 + 48);
  v18 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 72);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = *a4;
  *(a1 + 208) = a5;
  *(a1 + 212) = a6;
  return a1;
}

void sub_1002F9BD0(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_1002F9C00(uint64_t a1)
{
  sub_1002FA100(a1);

  operator delete();
}

uint64_t sub_1002F9C38(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 < a2[1])
  {
    v3 = *(result + 104);
    v4 = (v3 >> 3) & 0x1FF;
    v5 = v4 + 1;
    v6 = *a2 & 1 ^ *(result + 212);
    v7 = *a2 & 1 ^ *(result + 208);
    v8 = *(result + 184);
    v9 = v2 + 1;
    v10 = (*(result + 120) + v8 * v9 + v4 + 1);
    v11 = (*(result + 24) + **(result + 80) * v9 + 1);
    v12 = (0x88442211uLL >> (4 * (v3 & 7u))) & 0xF;
    v13 = *(result + 88) / ((0x88442211uLL >> (4 * (*(result + 8) & 7u))) & 0xF);
    v14 = (2 * (v4 + 1));
    v15 = -v13;
    v16 = ~v13;
    v17 = (&_mh_execute_header - (v13 << 32)) >> 32;
    v18 = ((v13 << 32) - 0x100000000) >> 32;
    v19 = (&_mh_execute_header + (v13 << 32)) >> 32;
    v20 = v8 / v12;
    v21 = v14 - v20;
    v22 = v4 + 1 - v20;
    v23 = v14 - v20;
    v24 = v22;
    v25 = v4;
    v26 = v4 < 7;
    v27 = v22 >= 0x20 && v4 >= 0x1F;
    v31 = !v27 || v21 < 0x20 || v22 + v4 + 1 < 0x20 || (v22 - v21) < 0x20;
    v32 = v5 & 0x3E0;
    v33 = v26 | v31;
    v82 = 15 - v25;
    v34 = ~v25;
    do
    {
      v35 = 2 * v7;
      if (v6)
      {
        v10[v35] = (v11[v13] + v11[v15]) >> 1;
        v10[1] = *v11;
        v36 = *++v11;
        v10[-v35 + 2] = (v36 + *(v11 - 2)) >> 1;
        v10 += v5;
        v37 = 2;
        v38 = *(result + 200);
        v39 = v38 > 2;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v37 = 1;
        v38 = *(result + 200);
        v39 = v38 > 1;
        if (!v7)
        {
LABEL_32:
          if (v39)
          {
            do
            {
              *v10 = (v11[v16] + v11[v17] + v11[v18] + v11[v19] + 2) >> 2;
              v50 = *(v11 - 1);
              v51 = v11[1];
              v52 = v50 - v51;
              v53 = v11[v13];
              if (v50 - v51 < 0)
              {
                v52 = v51 - v50;
              }

              v54 = v11[v15];
              v55 = v53 - v54;
              if (v53 - v54 < 0)
              {
                v55 = v54 - v53;
              }

              v56 = v54 + v53;
              v57 = v51 + v50;
              if (v52 > v55)
              {
                v57 = v56;
              }

              v10[1] = (v57 + 1) >> 1;
              v10[2] = *v11;
              v10[3] = (v11[v17] + v11[v19] + 1) >> 1;
              v10[4] = v11[1];
              v58 = *v11;
              v59 = v11[2];
              v11 += 2;
              v10[5] = (v58 + v59 + 1) >> 1;
              v37 += 2;
              v10 += v14;
              v38 = *(result + 200);
            }

            while (v37 < v38);
          }

          goto LABEL_41;
        }
      }

      if (v39)
      {
        do
        {
          v40 = v11;
          *v10 = *v11;
          v41 = *(v11 - 1);
          v42 = v11[1];
          v43 = v41 - v42;
          if (v41 - v42 < 0)
          {
            v43 = v42 - v41;
          }

          v44 = v11[v13];
          v45 = v11[v15];
          v46 = v44 - v45;
          if (v44 - v45 < 0)
          {
            v46 = v45 - v44;
          }

          v47 = v45 + v44;
          if (v43 <= v46)
          {
            v47 = v42 + v41;
          }

          v10[1] = (v47 + 1) >> 1;
          v10[2] = (v11[v17] + v11[v16] + v11[v18] + v11[v19]) >> 2;
          v48 = *v11;
          v49 = v11[2];
          v11 += 2;
          v10[3] = (v48 + v49 + 1) >> 1;
          v10[4] = v40[1];
          v10[5] = (v40[v17] + v40[v19] + 1) >> 1;
          v37 += 2;
          v10 += v14;
          v38 = *(result + 200);
        }

        while (v37 < v38);
      }

LABEL_41:
      if (v37 <= v38)
      {
        v60 = v35;
        v10[v35] = (v11[v16] + v11[v17] + v11[v18] + v11[v19] + 2) >> 2;
        v61 = *(v11 - 1);
        v62 = v11[1];
        v63 = v61 - v62;
        if (v61 - v62 < 0)
        {
          v63 = v62 - v61;
        }

        v64 = v11[v13];
        v65 = v11[v15];
        v66 = v64 - v65;
        if (v64 - v65 < 0)
        {
          v66 = v65 - v64;
        }

        v67 = v65 + v64;
        v68 = v62 + v61;
        if (v63 > v66)
        {
          v68 = v67;
        }

        v10[1] = (v68 + 1) >> 1;
        v10[-v60 + 2] = *v11;
        v10 += v5;
        ++v11;
      }

      v69 = 0;
      if (v33)
      {
        goto LABEL_50;
      }

      v71 = &v10[v82];
      v72 = v10 + 16;
      v73 = v5 & 0x3E0;
      do
      {
        v74 = *v71;
        *(v72 - 1) = *(v71 - 1);
        *v72 = v74;
        v75 = &v10[v69 + v23];
        v76 = *v75;
        v77 = v75[1];
        v78 = &v10[v69 + v24];
        *v78 = v76;
        v78[1] = v77;
        v69 += 32;
        v71 += 2;
        v72 += 2;
        v73 -= 32;
      }

      while (v73);
      if (v32 != v5)
      {
        v69 = v5 & 0x3E0;
        if ((v5 & 0x18) == 0)
        {
          goto LABEL_50;
        }

        v79 = &v10[v32];
        v80 = (v5 & 0x3F8) - (v5 & 0x3E0);
        v81 = v5 & 0x3E0;
        do
        {
          *v79 = *(v79 + v34);
          ++v79;
          *&v10[v81 + v24] = *&v10[v81 + v23];
          v81 += 8;
          v80 -= 8;
        }

        while (v80);
        v69 = v5 & 0x3F8;
        if (v69 != v5)
        {
LABEL_50:
          v70 = v34 + v69;
          do
          {
            v10[v69] = v10[v70];
            v10[v69 + v24] = v10[v69 + v23];
            ++v69;
            v27 = __CFADD__(v70++, 1);
          }

          while (!v27);
        }
      }

      v6 ^= 1u;
      v7 ^= 1u;
      v11 += 2;
      v10 += v14;
      ++v2;
    }

    while (v2 < a2[1]);
  }

  return result;
}

uint64_t sub_1002FA100(uint64_t a1)
{
  *a1 = off_1004789B0;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_1002FA23C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6)
{
  *a1 = off_1004789F0;
  v11 = *a2;
  v12 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = *(a2 + 32);
  v13 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 72);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v17 = *(a3 + 32);
  v19 = *(a3 + 48);
  v18 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 72);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = *a4;
  *(a1 + 208) = a5;
  *(a1 + 212) = a6;
  return a1;
}

void sub_1002FA3AC(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_1002FA3DC(uint64_t a1)
{
  sub_1002FA90C(a1);

  operator delete();
}

uint64_t sub_1002FA414(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 < v3)
  {
    v4 = *(result + 104);
    v5 = *(result + 184);
    v6 = v5 / ((0x88442211uLL >> (4 * (v4 & 7u))) & 0xF);
    v7 = *(result + 88) / ((0x88442211uLL >> (4 * (*(result + 8) & 7u))) & 0xF);
    v8 = (v4 >> 3) & 0x1FF;
    v9 = v8 + 1;
    v10 = *a2 & 1 ^ *(result + 212);
    v11 = *a2 & 1 ^ *(result + 208);
    v12 = v2 + 1;
    v13 = 2 * (v8 + 1);
    v14 = (*(result + 120) + v5 * v12 + v13);
    v15 = (*(result + 24) + **(result + 80) * v12 + 2);
    v16 = (2 * (v8 + 1));
    v17 = -v7;
    v18 = ~v7;
    v19 = (&_mh_execute_header - (v7 << 32)) >> 32;
    v20 = ((v7 << 32) - 0x100000000) >> 32;
    v21 = (&_mh_execute_header + (v7 << 32)) >> 32;
    v22 = v8 + 1 - v6;
    v23 = v16 - v6;
    v24 = v22;
    v25 = 2 * v22;
    v26 = v8 < 3;
    v31 = v25 < 0x20 || v8 < 0xF || (2 * v23) < 0x20 || 2 * (v24 + ((v4 >> 3) & 0x1FF)) + 2 < 0x20 || v25 - 2 * v23 < 0x20;
    v32 = v26 || v31;
    v33 = (v4 >> 3) & 0x1FF;
    v34 = 4 * v33 + 4;
    v81 = 14 - 2 * v33;
    v35 = (2 * v33) ^ 0xFFFFFFFFFFFFFFFELL;
    result = *(result + 200);
    v80 = v13 & 0x7E0;
    v82 = v33 + 1;
    do
    {
      v36 = 2 * v11;
      if (v10)
      {
        v14[v36] = (v15[v7] + v15[v17]) >> 1;
        v14[1] = *v15;
        v37 = v15[1];
        ++v15;
        v38 = 2;
        v14[2 - v36] = (v37 + *(v15 - 2)) >> 1;
        v14 += v9;
        if (!v11)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v38 = 1;
        if (!v11)
        {
LABEL_50:
          for (i = v15; v38 < result; v14 = (v14 + v34))
          {
            *v14 = (i[v18] + i[v19] + i[v20] + i[v21] + 2) >> 2;
            v70 = *(i - 1);
            v71 = i[1];
            v72 = v70 - v71;
            if (v70 - v71 < 0)
            {
              v72 = v71 - v70;
            }

            v73 = i[v7];
            v74 = i[v17];
            v75 = v73 - v74;
            if (v73 - v74 < 0)
            {
              v75 = v74 - v73;
            }

            v76 = v74 + v73;
            v77 = v71 + v70;
            if (v72 > v75)
            {
              v77 = v76;
            }

            v14[1] = (v77 + 1) >> 1;
            v14[2] = *i;
            v14[3] = (i[v19] + i[v21] + 1) >> 1;
            v14[4] = i[1];
            v78 = *i;
            v79 = i[2];
            i += 2;
            v14[5] = (v78 + v79 + 1) >> 1;
            v38 += 2;
          }

          goto LABEL_29;
        }
      }

      for (i = v15; v38 < result; v15 += 2)
      {
        *v14 = *v15;
        v40 = *(v15 - 1);
        v41 = v15[1];
        v42 = v40 - v41;
        if (v40 - v41 < 0)
        {
          v42 = v41 - v40;
        }

        v43 = v15[v7];
        v44 = v15[v17];
        v45 = v43 - v44;
        if (v43 - v44 < 0)
        {
          v45 = v44 - v43;
        }

        v46 = v44 + v43;
        v47 = v41 + v40;
        if (v42 > v45)
        {
          v47 = v46;
        }

        v14[1] = (v47 + 1) >> 1;
        v14[2] = (v15[v19] + v15[v18] + v15[v20] + v15[v21]) >> 2;
        i = v15 + 2;
        v14[3] = (*v15 + v15[2] + 1) >> 1;
        v14[4] = v15[1];
        v14[5] = (v15[v19] + v15[v21] + 1) >> 1;
        v38 += 2;
        v14 = (v14 + v34);
      }

LABEL_29:
      if (v38 <= result)
      {
        v14[v36] = (i[v18] + i[v19] + i[v20] + i[v21] + 2) >> 2;
        v48 = *(i - 1);
        v49 = i[1];
        v50 = v48 - v49;
        v51 = i[v7];
        if (v48 - v49 < 0)
        {
          v50 = v49 - v48;
        }

        v52 = i[v17];
        v53 = v51 - v52;
        if (v51 - v52 < 0)
        {
          v53 = v52 - v51;
        }

        v54 = v52 + v51;
        v55 = v49 + v48;
        if (v50 > v53)
        {
          v55 = v54;
        }

        v14[1] = (v55 + 1) >> 1;
        v14[2 - v36] = *i;
        v14 += v9;
        ++i;
      }

      v56 = 0;
      if (v32)
      {
        goto LABEL_38;
      }

      v59 = (v14 + v81);
      v60 = v14 + 8;
      v61 = v9 & 0x3F0;
      do
      {
        v62 = *v59;
        *(v60 - 1) = *(v59 - 1);
        *v60 = v62;
        v63 = &v14[v56 + v23];
        v64 = *v63;
        v65 = v63[1];
        v66 = &v14[v56 + v24];
        *v66 = v64;
        v66[1] = v65;
        v56 += 16;
        v59 += 2;
        v60 += 2;
        v61 -= 16;
      }

      while (v61);
      if ((v9 & 0x3F0) != v9)
      {
        v56 = v9 & 0x3F0;
        if ((v9 & 0xC) == 0)
        {
          goto LABEL_38;
        }

        v67 = (v9 & 0x3FC) - (v9 & 0x3F0);
        v68 = (v14 + v80);
        v69 = v9 & 0x3F0;
        do
        {
          *v68 = *(v68 + v35);
          ++v68;
          *&v14[v69 + v24] = *&v14[v69 + v23];
          v69 += 4;
          v67 -= 4;
        }

        while (v67);
        v56 = v9 & 0x3FC;
        if (v56 != v9)
        {
LABEL_38:
          v57 = &v14[v56];
          v58 = v82 - v56;
          do
          {
            *v57 = *(v57 + v35);
            ++v57;
            v14[v56 + v24] = v14[v56 + v23];
            ++v56;
            --v58;
          }

          while (v58);
        }
      }

      v10 ^= 1u;
      v11 ^= 1u;
      v15 = i + 2;
      v14 += v16;
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_1002FA90C(uint64_t a1)
{
  *a1 = off_1004789F0;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

void sub_1002FAA44(uint64_t a1, uint64_t a2, int a3, int a4, unsigned __int8 a5, int a6)
{
  if ((a6 - 5) >= 2)
  {
    v60 = 0uLL;
    qmemcpy(sub_1002A80E0(&v60, 24), "ktype == 5 || ktype == 6", 24);
    sub_1002A8980(-215, &v60, "getScharrKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 61);
  }

  sub_100275A84(a1, 3u, 1u, a6, -1, 1, 0);
  sub_100275A84(a2, 3u, 1u, a6, -1, 1, 0);
  if (sub_100271148(a1) == 0x10000)
  {
    v12 = *(a1 + 8);
    v13 = *v12;
    v14 = *(v12 + 16);
    v60 = *v12;
    v61 = v14;
    v62 = *(v12 + 32);
    v15 = *(v12 + 56);
    v63 = *(v12 + 48);
    v64 = v15;
    v65 = &v60 + 8;
    v66 = v67;
    v67[0] = 0;
    v67[1] = 0;
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*(v12 + 4) <= 2)
      {
LABEL_6:
        v16 = *(v12 + 72);
        v17 = v66;
        *v66 = *v16;
        v17[1] = v16[1];
        goto LABEL_10;
      }
    }

    else if (SDWORD1(v13) <= 2)
    {
      goto LABEL_6;
    }

    DWORD1(v60) = 0;
    sub_100269B58(&v60, v12);
  }

  else
  {
    sub_1002703C0(a1, -1, &v60);
  }

LABEL_10:
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, -1, &v52);
    goto LABEL_17;
  }

  v18 = *(a2 + 8);
  v19 = *v18;
  v20 = *(v18 + 16);
  v52 = *v18;
  v21 = *(v18 + 32);
  v53 = v20;
  v54 = v21;
  v22 = *(v18 + 56);
  v55 = *(v18 + 48);
  v56 = v22;
  v57 = &v52 + 8;
  v58 = v59;
  v59[0] = 0;
  v59[1] = 0;
  if (!v22)
  {
    if (SDWORD1(v19) <= 2)
    {
      goto LABEL_13;
    }

LABEL_16:
    DWORD1(v52) = 0;
    sub_100269B58(&v52, v18);
    goto LABEL_17;
  }

  atomic_fetch_add((v22 + 20), 1u);
  if (*(v18 + 4) > 2)
  {
    goto LABEL_16;
  }

LABEL_13:
  v23 = *(v18 + 72);
  v24 = v58;
  *v58 = *v23;
  v24[1] = v23[1];
LABEL_17:
  if ((a4 | a3) < 0 || a4 + a3 != 1)
  {
    v42 = 0;
    v43 = 0;
    qmemcpy(sub_1002A80E0(&v42, 32), "dx >= 0 && dy >= 0 && dx+dy == 1", 32);
    sub_1002A8980(-215, &v42, "getScharrKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 67);
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_25;
    }

    v25 = 0xFFFFFFFFLL;
    v26 = 1;
  }

  else
  {
    v25 = 0xA00000003;
    v26 = 3;
  }

  v68 = v25;
  v69 = v26;
LABEL_25:
  v43 = *(&v60 + 1);
  *&v44 = &v68;
  *(&v44 + 1) = &v68;
  v46 = 0;
  v47 = 0;
  v48 = &v43;
  v49 = &v50;
  v42 = 0x242FF4004;
  v50 = 4 * SHIDWORD(v60);
  v51 = 4;
  *&v45 = &v68 + v50 * SDWORD2(v60);
  *(&v45 + 1) = v45;
  v39 = 33619968;
  v40 = &v60;
  v41 = 0;
  v27 = 0.03125;
  if (((a3 != 1) & a5) == 0)
  {
    v27 = 1.0;
  }

  sub_10020EF14(&v42, &v39, a6, v27, 0.0);
  if (v47 && atomic_fetch_add((v47 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v42);
  }

  v47 = 0;
  v44 = 0u;
  v45 = 0u;
  if (SHIDWORD(v42) >= 1)
  {
    v28 = 0;
    v29 = v48;
    do
    {
      *(v29 + v28++) = 0;
    }

    while (v28 < SHIDWORD(v42));
  }

  if (v49 != &v50)
  {
    j__free(v49);
  }

  if (a4 == 1)
  {
    v30 = 0xFFFFFFFFLL;
    v31 = 1;
  }

  else
  {
    if (a4)
    {
      goto LABEL_40;
    }

    v30 = 0xA00000003;
    v31 = 3;
  }

  v68 = v30;
  v69 = v31;
LABEL_40:
  v43 = *(&v52 + 1);
  *&v44 = &v68;
  *(&v44 + 1) = &v68;
  v46 = 0;
  v47 = 0;
  v48 = &v43;
  v49 = &v50;
  v42 = 0x242FF4004;
  v50 = 4 * SHIDWORD(v52);
  v51 = 4;
  *&v45 = &v68 + v50 * SDWORD2(v52);
  *(&v45 + 1) = v45;
  v39 = 33619968;
  v40 = &v52;
  v41 = 0;
  v32 = 0.03125;
  if (((a4 != 1) & a5) == 0)
  {
    v32 = 1.0;
  }

  sub_10020EF14(&v42, &v39, a6, v32, 0.0);
  if (v47 && atomic_fetch_add((v47 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v42);
  }

  v47 = 0;
  v44 = 0u;
  v45 = 0u;
  if (SHIDWORD(v42) >= 1)
  {
    v33 = 0;
    v34 = v48;
    do
    {
      *(v34 + v33++) = 0;
    }

    while (v33 < SHIDWORD(v42));
  }

  if (v49 != &v50)
  {
    j__free(v49);
  }

  if (v56 && atomic_fetch_add((v56 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v52);
  }

  v56 = 0;
  v53 = 0u;
  v54 = 0u;
  if (SDWORD1(v52) >= 1)
  {
    v35 = 0;
    v36 = v57;
    do
    {
      *&v36[4 * v35++] = 0;
    }

    while (v35 < SDWORD1(v52));
  }

  if (v58 != v59)
  {
    j__free(v58);
  }

  if (v64 && atomic_fetch_add((v64 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v60);
  }

  v64 = 0;
  v61 = 0u;
  v62 = 0u;
  if (SDWORD1(v60) >= 1)
  {
    v37 = 0;
    v38 = v65;
    do
    {
      *&v38[4 * v37++] = 0;
    }

    while (v37 < SDWORD1(v60));
  }

  if (v66 != v67)
  {
    j__free(v66);
  }
}

void sub_1002FB014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FB0BC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  if (a3 > 0 && a5 == 1)
  {
    v10 = 3;
  }

  else
  {
    v10 = a5;
  }

  if (a4 > 0 && a5 == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = a5;
  }

  v88 = v11;
  v89 = v10;
  if ((a7 - 5) >= 2)
  {
    v110 = 0uLL;
    qmemcpy(sub_1002A80E0(&v110, 24), "ktype == 5 || ktype == 6", 24);
    sub_1002A8980(-215, &v110, "getSobelKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 96);
  }

  sub_100275A84(a1, v10, 1u, a7, -1, 1, 0);
  sub_100275A84(a2, v88, 1u, a7, -1, 1, 0);
  if (sub_100271148(a1) == 0x10000)
  {
    v12 = *(a1 + 8);
    v13 = *v12;
    v14 = *(v12 + 16);
    v110 = *v12;
    v111 = v14;
    v112 = *(v12 + 32);
    v15 = *(v12 + 56);
    v113 = *(v12 + 48);
    v114 = v15;
    v115 = &v110 + 8;
    v116 = v117;
    v117[0] = 0;
    v117[1] = 0;
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*(v12 + 4) <= 2)
      {
LABEL_12:
        v16 = *(v12 + 72);
        v17 = v116;
        *v116 = *v16;
        v17[1] = v16[1];
        goto LABEL_16;
      }
    }

    else if (SDWORD1(v13) <= 2)
    {
      goto LABEL_12;
    }

    DWORD1(v110) = 0;
    sub_100269B58(&v110, v12);
  }

  else
  {
    sub_1002703C0(a1, -1, &v110);
  }

LABEL_16:
  if (sub_100271148(a2) == 0x10000)
  {
    v18 = *(a2 + 8);
    v19 = *v18;
    v20 = *(v18 + 16);
    v102 = *v18;
    v21 = *(v18 + 32);
    v103 = v20;
    v104 = v21;
    v22 = *(v18 + 56);
    v105 = *(v18 + 48);
    v106 = v22;
    v107 = &v102 + 8;
    v108 = v109;
    v109[0] = 0;
    v109[1] = 0;
    if (v22)
    {
      atomic_fetch_add((v22 + 20), 1u);
      if (*(v18 + 4) <= 2)
      {
LABEL_19:
        v23 = *(v18 + 72);
        v24 = v108;
        *v108 = *v23;
        v24[1] = v23[1];
        goto LABEL_23;
      }
    }

    else if (SDWORD1(v19) <= 2)
    {
      goto LABEL_19;
    }

    DWORD1(v102) = 0;
    sub_100269B58(&v102, v18);
  }

  else
  {
    sub_1002703C0(a2, -1, &v102);
  }

LABEL_23:
  if (a5 > 31 || (a5 & 1) == 0)
  {
    v93 = 0;
    v94 = 0;
    qmemcpy(sub_1002A80E0(&v93, 50), "The kernel size must be odd and not larger than 31", 50);
    sub_1002A8980(-211, &v93, "getSobelKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 104);
  }

  v25 = v88;
  if (v89 > v88)
  {
    v25 = v89;
  }

  if (v25 != -1)
  {
    if (v25 > -2)
    {
      operator new();
    }

    sub_10000918C();
  }

  if ((a4 | a3) < 0 || (a4 + a3 < 0) ^ __OFADD__(a4, a3) | (a4 + a3 == 0))
  {
    v93 = 0;
    v94 = 0;
    qmemcpy(sub_1002A80E0(&v93, 31), "dx >= 0 && dy >= 0 && dx+dy > 0", 31);
    sub_1002A8980(-215, &v93, "getSobelKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 107);
  }

  v26 = 1;
  do
  {
    v27 = v26;
    if (v26)
    {
      v28 = &v110;
    }

    else
    {
      v28 = &v102;
    }

    if (v26)
    {
      v29 = a3;
    }

    else
    {
      v29 = a4;
    }

    if (v26)
    {
      v30 = v89;
    }

    else
    {
      v30 = v88;
    }

    if (v30 <= v29)
    {
      v93 = 0;
      v94 = 0;
      qmemcpy(sub_1002A80E0(&v93, 13), "ksize > order", 13);
      sub_1002A8980(-215, &v93, "getSobelKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 115);
    }

    v31 = 0;
    if (v30 == 1)
    {
      goto LABEL_67;
    }

    if (v30 == 3)
    {
      v32 = 0x200000001;
      if (v29)
      {
        if (v29 == 1)
        {
          v32 = 0xFFFFFFFFLL;
        }

        else
        {
          v32 = 0xFFFFFFFE00000001;
        }
      }

      MEMORY[0] = v32;
      v31 = 8;
LABEL_67:
      *v31 = 1;
      goto LABEL_68;
    }

    MEMORY[0] = 1;
    if (v30 >= 1)
    {
      bzero(4, 4 * v30);
    }

    v33 = v30 + ~v29;
    if (v33 >= 1 && v30 >= 1)
    {
      if (v30 >= 8)
      {
        for (i = 0; i != v33; ++i)
        {
          v50 = vld1q_dup_f32(0);
          v51 = v30 & 0x7FFFFFF8;
          v52 = 16;
          v53 = v50;
          do
          {
            v54 = *(v52 - 12);
            v55 = vextq_s8(v50, v54, 0xCuLL);
            v50 = *(v52 + 4);
            v56 = vextq_s8(v54, v50, 0xCuLL);
            v57 = vaddq_s32(v55, v54);
            v58 = vextq_s8(v53, v57, 0xCuLL);
            v53 = vaddq_s32(v56, v50);
            *(v52 - 16) = v58;
            *v52 = vextq_s8(v57, v53, 0xCuLL);
            v52 += 32;
            v51 -= 8;
          }

          while (v51);
          if ((v30 & 0x7FFFFFF8) != v30)
          {
            v59 = v53.i32[3];
            v60 = v50.i32[3];
            v61 = ~(v30 & 0x7FFFFFF8) + (v30 + 1);
            v62 = (32 * ((v30 >> 3) & 0xFFFFFFF) + 4);
            do
            {
              v63 = *v62;
              *(v62 - 1) = v59;
              v59 = v60 + v63;
              ++v62;
              v60 = v63;
              --v61;
            }

            while (v61);
          }
        }
      }

      else
      {
        v34 = MEMORY[4];
        do
        {
          v35 = MEMORY[0] + v34;
          v36 = MEMORY[8];
          MEMORY[4] = MEMORY[0] + v34;
          if (v30 != 2)
          {
            v37 = v34 + MEMORY[8];
            v38 = MEMORY[0xC];
            MEMORY[8] = v37;
            v39 = v36 + MEMORY[0xC];
            v40 = MEMORY[0x10];
            MEMORY[0xC] = v39;
            if (v30 != 4)
            {
              v41 = v38 + MEMORY[0x10];
              v42 = MEMORY[0x14];
              MEMORY[0x10] = v41;
              if (v30 != 5)
              {
                MEMORY[0x14] += v40;
                if (v30 != 6)
                {
                  MEMORY[0x18] += v42;
                }
              }
            }
          }

          v34 = v35;
          --v33;
        }

        while (v33);
      }
    }

    if (v29 >= 1 && v30 >= 1)
    {
      for (j = 0; j != v29; ++j)
      {
        v65 = MEMORY[0];
        v66 = -MEMORY[0];
        if (v30 >= 8)
        {
          v68 = vdupq_n_s32(MEMORY[0]);
          v69 = vdupq_n_s32(v66);
          v70 = v30 & 0x7FFFFFF8;
          v71 = 16;
          do
          {
            v72 = *(v71 - 12);
            v73 = vextq_s8(v68, v72, 0xCuLL);
            v68 = *(v71 + 4);
            v74 = vextq_s8(v72, v68, 0xCuLL);
            v75 = vsubq_s32(v73, v72);
            v76 = vextq_s8(v69, v75, 0xCuLL);
            v69 = vsubq_s32(v74, v68);
            *(v71 - 16) = v76;
            *v71 = vextq_s8(v75, v69, 0xCuLL);
            v71 += 32;
            v70 -= 8;
          }

          while (v70);
          if ((v30 & 0x7FFFFFF8) == v30)
          {
            continue;
          }

          v65 = v68.i32[3];
          v66 = v69.u32[3];
          v67 = v30 & 0x7FFFFFF8 | 1;
        }

        else
        {
          v67 = 1;
        }

        v77 = (4 * v67);
        v78 = (v30 + 1) - v67;
        do
        {
          v79 = *v77;
          *(v77 - 1) = v66;
          v66 = v65 - v79;
          ++v77;
          v65 = v79;
          --v78;
        }

        while (v78);
      }
    }

LABEL_68:
    v43 = &v102;
    if (v27)
    {
      v43 = &v110;
    }

    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    v94 = __PAIR64__(v44, v45);
    v95 = 0uLL;
    v97 = 0;
    v98 = 0;
    v99 = &v94;
    v100 = v101;
    v93 = 0x242FF4004;
    v101[0] = 4 * v44;
    v101[1] = 4;
    *&v96 = 4 * v44 * v45;
    *(&v96 + 1) = v96;
    v46 = 1.0;
    if (a6)
    {
      v46 = 1.0 / (1 << (v30 + ~v29));
    }

    v90 = 33619968;
    v91 = v28;
    v92 = 0;
    sub_10020EF14(&v93, &v90, a7, v46, 0.0);
    if (v98 && atomic_fetch_add((v98 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v93);
    }

    v98 = 0;
    v95 = 0u;
    v96 = 0u;
    if (SHIDWORD(v93) >= 1)
    {
      v47 = 0;
      v48 = v99;
      do
      {
        *(v48 + v47++) = 0;
      }

      while (v47 < SHIDWORD(v93));
    }

    if (v100 != v101)
    {
      j__free(v100);
    }

    v26 = 0;
  }

  while ((v27 & 1) != 0);
  if (v106 && atomic_fetch_add((v106 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v102);
  }

  v106 = 0;
  v103 = 0u;
  v104 = 0u;
  if (SDWORD1(v102) >= 1)
  {
    v80 = 0;
    v81 = v107;
    do
    {
      *&v81[4 * v80++] = 0;
    }

    while (v80 < SDWORD1(v102));
  }

  if (v108 != v109)
  {
    j__free(v108);
  }

  if (v114 && atomic_fetch_add((v114 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v110);
  }

  v114 = 0;
  v111 = 0u;
  v112 = 0u;
  if (SDWORD1(v110) >= 1)
  {
    v82 = 0;
    v83 = v115;
    do
    {
      *&v83[4 * v82++] = 0;
    }

    while (v82 < SDWORD1(v110));
  }

  if (v116 != v117)
  {
    j__free(v116);
  }
}

void sub_1002FB98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1002A8124(&a17);
  if (v29)
  {
    operator delete(v29);
  }

  sub_100006D14(&a29);
  sub_100006D14(v30 - 224);
  _Unwind_Resume(a1);
}

void sub_1002FBA48(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, char a7, double a8)
{
  sub_1002ACE7C(v74, &off_100478A20);
  v16 = sub_100271A88(a1, -1);
  v17 = v16;
  v18 = v16 & 7;
  if (a3 < 0)
  {
    a3 = v16 & 7;
  }

  sub_100271154(a1, 0xFFFFFFFF, v69);
  sub_100275370(a2, v69, v17 & 0xFF8 | a3 & 7, -1, 0, 0);
  v69[0] = 1124007936;
  memset(&v69[1], 0, 32);
  if (a3 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = a3;
  }

  *v70 = 0uLL;
  if (v19 <= 5)
  {
    v20 = 5;
  }

  else
  {
    v20 = v19;
  }

  *&v70[12] = 0uLL;
  v71 = &v69[2];
  v72 = v73;
  v73[0] = 0;
  v73[1] = 0;
  v65[0] = 1124007936;
  memset(&v65[1], 0, 60);
  v66 = &v65[2];
  v67 = v68;
  v68[0] = 0;
  v68[1] = 0;
  LODWORD(v57) = 33619968;
  *(&v57 + 1) = v69;
  *&v58 = 0;
  LODWORD(v49) = 33619968;
  *(&v49 + 1) = v65;
  *&v50 = 0;
  if (a6 <= 0)
  {
    sub_1002FAA44(&v57, &v49, a4, a5, 0, v20);
  }

  else
  {
    sub_1002FB0BC(&v57, &v49, a4, a5, a6, 0, v20);
  }

  if (a8 != 1.0)
  {
    LODWORD(v57) = 33619968;
    if (a4)
    {
      *(&v57 + 1) = v65;
      *&v58 = 0;
      sub_10020EF14(v65, &v57, -1, a8, 0.0);
    }

    else
    {
      *(&v57 + 1) = v69;
      *&v58 = 0;
      sub_10020EF14(v69, &v57, -1, a8, 0.0);
    }
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v21 = *(a1 + 8);
    v22 = *v21;
    v23 = *(v21 + 16);
    v57 = *v21;
    v58 = v23;
    v59 = *(v21 + 32);
    v24 = *(v21 + 56);
    v60 = *(v21 + 48);
    v61 = v24;
    v62 = &v57 + 8;
    v63 = v64;
    v64[0] = 0;
    v64[1] = 0;
    if (v24)
    {
      atomic_fetch_add((v24 + 20), 1u);
      if (*(v21 + 4) <= 2)
      {
LABEL_19:
        v25 = *(v21 + 72);
        v26 = v63;
        *v63 = *v25;
        v26[1] = v25[1];
        goto LABEL_23;
      }
    }

    else if (SDWORD1(v22) <= 2)
    {
      goto LABEL_19;
    }

    DWORD1(v57) = 0;
    sub_100269B58(&v57, v21);
  }

  else
  {
    sub_1002703C0(a1, -1, &v57);
  }

LABEL_23:
  if (sub_100271148(a2) == 0x10000)
  {
    v27 = *(a2 + 8);
    v28 = *v27;
    v29 = *(v27 + 16);
    v49 = *v27;
    v30 = *(v27 + 32);
    v50 = v29;
    v51 = v30;
    v31 = *(v27 + 56);
    v52 = *(v27 + 48);
    v53 = v31;
    v54 = &v49 + 8;
    v55 = v56;
    v56[0] = 0;
    v56[1] = 0;
    if (v31)
    {
      atomic_fetch_add((v31 + 20), 1u);
      if (*(v27 + 4) <= 2)
      {
LABEL_26:
        v32 = *(v27 + 72);
        v33 = v55;
        *v55 = *v32;
        v33[1] = v32[1];
        goto LABEL_30;
      }
    }

    else if (SDWORD1(v28) <= 2)
    {
      goto LABEL_26;
    }

    DWORD1(v49) = 0;
    sub_100269B58(&v49, v27);
  }

  else
  {
    sub_1002703C0(a2, -1, &v49);
  }

LABEL_30:
  v48 = 0;
  v47 = vrev64_s32(*(&v57 + 8));
  if ((a7 & 0x10) == 0)
  {
    sub_10026BBAC(&v57, &v47, &v48);
  }

  v46 = 0;
  v44 = 16842752;
  v45 = &v57;
  v41 = 33619968;
  v42 = &v49;
  v43 = 0;
  v40 = 0;
  v38 = 16842752;
  v39 = v69;
  v37 = 0;
  v35 = 16842752;
  v36 = v65;
  v34 = -1;
  sub_100309920(&v44, &v41, a3, &v38, &v35, &v34, a7);
}

void sub_1002FBFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  sub_100006D14(&a49);
  sub_100006D14(v49 - 224);
  sub_1001D8BF4(v49 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FC078(uint64_t result)
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

BOOL sub_1002FC0E8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  sub_1002ACE7C(v26, &off_100478A40);
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1 - 1;
  if (*a1 < 1 || v7 < 1)
  {
    v10 = 0;
    if (!v27)
    {
      return v10;
    }

    goto LABEL_35;
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = (*a2 >> 63) | (2 * (*a2 >= v6)) | (8 * (v12 >= v7)) | (v12 >> 61) & 4;
  v14 = a3[1];
  v15 = (*a3 >> 63) | (2 * (*a3 >= v6)) | (8 * (v14 >= v7)) | (v14 >> 61) & 4;
  if ((v15 & v13) == 0 && (v15 | v13) != 0)
  {
    if (v13 >= 4)
    {
      if (v12 >= v7)
      {
        v17 = v7 - 1;
      }

      else
      {
        v17 = 0;
      }

      v11 += ((*a3 - v11) * (v17 - v12) / (v14 - v12));
      *a2 = v11;
      a2[1] = v17;
      v13 = (v11 >> 63) | (2 * (v11 >= v6));
      v12 = v17;
      if (v15 < 4)
      {
LABEL_14:
        if ((v15 & v13) != 0)
        {
          goto LABEL_34;
        }

LABEL_24:
        if (v15 | v13)
        {
          if (v13)
          {
            if (v13 == 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = v8;
            }

            v21 = a2[1];
            v22 = (v20 - *a2) * (a3[1] - v21) / (*a3 - *a2);
            *a2 = v20;
            a2[1] = v21 + v22;
          }

          v13 = 0;
          if (v15)
          {
            if (v15 == 1)
            {
              v8 = 0;
            }

            v23 = a3[1];
            v24 = (v8 - *a3) * (v23 - a2[1]) / (*a3 - *a2);
            *a3 = v8;
            a3[1] = v23 + v24;
            v15 = 0;
          }
        }

        goto LABEL_34;
      }
    }

    else if (v15 < 4)
    {
      goto LABEL_14;
    }

    if (v14 >= v7)
    {
      v18 = v7 - 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = *a3 + ((v18 - a3[1]) * (*a3 - v11) / (a3[1] - v12));
    *a3 = v19;
    a3[1] = v18;
    v15 = (v19 >> 63) | (2 * (v19 >= v6));
    if ((v15 & v13) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

LABEL_34:
  v10 = (v13 | v15) == 0;
  if (v27)
  {
LABEL_35:
    sub_1002ACC1C(v26);
  }

  return v10;
}

uint64_t sub_1002FC330(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4, int a5, int a6)
{
  *(a1 + 28) = -1;
  if (a5 != 4 && a5 != 8)
  {
    v58 = 0uLL;
    qmemcpy(sub_1002A80E0(&v58, 38), "connectivity == 8 || connectivity == 4", 38);
    sub_1002A8980(-215, v58.i64, "LineIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/drawing.cpp", 170);
  }

  v12 = *(a2 + 12);
  v13 = *a4;
  v14 = *a3 >= v12 || v13 >= v12;
  if (v14 || (v15 = *(a2 + 8), a3[1] >= v15) || (v16 = a4[1], v16 >= v15))
  {
    v17 = **(a2 + 64);
    v18 = *(*(a2 + 64) + 4);
    v19 = a3[1];
    v58.i64[0] = *a3;
    v58.i64[1] = v19;
    v20 = a4[1];
    v56 = v13;
    v57 = v20;
    v55[0] = v18;
    v55[1] = v17;
    v21 = sub_1002FC0E8(v55, v58.i64, &v56);
    *a3 = vmovn_s64(v58);
    v13 = v56;
    v16 = v57;
    *a4 = v56;
    a4[1] = v16;
    if (!v21)
    {
      *a1 = *(a2 + 16);
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return a1;
    }
  }

  v22 = *(a2 + 4);
  if (v22 < 1)
  {
    v23 = 0;
    v24 = *(a2 + 80);
    v25 = *a3;
    v26 = a3[1];
    v27 = v13 - *a3;
    v28 = v16 - v26;
    v29 = v27 >> 31;
    if (a6)
    {
      goto LABEL_13;
    }

LABEL_16:
    v30 = (v23 ^ v29) - v29;
    goto LABEL_17;
  }

  v23 = *(*(a2 + 72) + 8 * v22 - 8);
  v24 = *(a2 + 80);
  v25 = *a3;
  v26 = a3[1];
  v27 = v13 - *a3;
  v28 = v16 - v26;
  v29 = v27 >> 31;
  if (!a6)
  {
    goto LABEL_16;
  }

LABEL_13:
  v28 = (v28 ^ v29) - v29;
  v25 = v13 & v29 | v25 & ~v29;
  v26 = v16 & v29 | v26 & ~v29;
  *a3 = v25;
  a3[1] = v26;
  v30 = v23;
LABEL_17:
  v31 = (v29 ^ v27) - v29;
  v32 = *(a2 + 16);
  v33 = v32 + v24 * v26;
  v34 = v28 >> 31;
  if (v28 < 0)
  {
    v28 = -v28;
  }

  v35 = (v24 ^ v34) - v34;
  v36 = v28 <= v31;
  if (v28 <= v31)
  {
    v37 = 0;
  }

  else
  {
    v37 = v28;
  }

  v38 = v37 ^ v31;
  if (v36)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  v40 = v39 ^ v28;
  if (v36)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  v42 = v41 ^ v38;
  if (v36)
  {
    v43 = 0;
  }

  else
  {
    v43 = v35;
  }

  v44 = v43 ^ v30;
  if (v36)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  v46 = v45 ^ v35;
  if (v36)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

  v48 = v47 ^ v44;
  v49 = -2 * v40;
  v50 = v42 + v40;
  v51 = 2 * v40;
  if (a5 == 8)
  {
    v50 = v42;
  }

  v52 = v42 - v51;
  if (a5 == 8)
  {
    v53 = -v51;
  }

  else
  {
    v52 = 0;
    v53 = v49;
  }

  if (a5 != 8)
  {
    v46 -= v48;
  }

  *(a1 + 32) = v53;
  *(a1 + 36) = 2 * v50;
  *(a1 + 40) = v48;
  *(a1 + 44) = v46;
  *(a1 + 24) = v52;
  *(a1 + 28) = v50 + 1;
  *a1 = v33 + v23 * v25;
  *(a1 + 8) = v32;
  *(a1 + 16) = v24;
  *(a1 + 20) = v23;
  return a1;
}

void sub_1002FC5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002FC5C8(uint64_t a1, double *a2, int a3, signed int a4, signed int a5, uint64_t a6, double **a7)
{
  sub_1002ACE7C(v70, &off_100478A60);
  v14 = a3 + 360 * ((a3 >> 31) + ((a3 & ~(a3 >> 31)) - ((a3 >> 31) + a3)) / 0x168);
  if (v14 >= 360)
  {
    v15 = 360;
  }

  else
  {
    v15 = a3 + 360 * ((a3 >> 31) + ((a3 & ~(a3 >> 31)) - ((a3 >> 31) + a3)) / 0x168);
  }

  v16 = v14 - 360 * ((v14 - v15 + 359) / 0x168u);
  if (a4 <= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  if (a4 >= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = a4;
  }

  if ((v18 & 0x80000000) != 0)
  {
    if (v18 <= 0xFFFFFE98)
    {
      v19 = -360;
    }

    else
    {
      v19 = v18;
    }

    if (v18 >= 0xFFFFFE98)
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 + 1;
    }

    v21 = (v19 - v20) / 0x168;
    if (v18 < 0xFFFFFE98)
    {
      ++v21;
    }

    v22 = 360 * v21;
    v18 += v22 + 360;
    v17 += v22 + 360;
  }

  v23 = v17 - 720;
  if (v17 < 0x2D0)
  {
    v23 = 0;
  }

  v24 = 360 * ((v23 + 359) / 0x168u);
  v25 = v17 - v24 - 360;
  v26 = v18 - v24 - 360;
  if (v17 < 361)
  {
    v26 = v18;
  }

  else
  {
    v17 = v25;
  }

  if (v17 - v26 <= 360)
  {
    v27 = v17;
  }

  else
  {
    v27 = 360;
  }

  if (v17 - v26 <= 360)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = flt_1003E7908[v16];
  v30 = flt_1003E7908[450 - v16];
  v31 = *a7;
  v32 = a7[1];
  if (v32 != *a7)
  {
    a7[1] = v31;
    v32 = v31;
  }

  if (v28 < v27 + a6)
  {
    v33 = v30;
    v34 = v29;
    do
    {
      while (1)
      {
        v36 = v28 >= v27 ? v27 : v28;
        v37 = v36 + (v36 < 0 ? 0x168 : 0);
        v38 = a2[1] * flt_1003E7908[v37];
        v39 = *a2 * flt_1003E7908[450 - v37];
        v40 = *a1 + v39 * v33 - v38 * v34;
        v41 = *(a1 + 8) + v39 * v34 + v38 * v33;
        v42 = a7[2];
        if (v32 >= v42)
        {
          break;
        }

        *v32 = v40;
        v32[1] = v41;
        v32 += 2;
        a7[1] = v32;
        v35 = v28 < v27;
        v28 += a6;
        if (!v35)
        {
          goto LABEL_73;
        }
      }

      v43 = a6;
      v44 = *a7;
      v45 = v32 - *a7;
      v46 = v45 >> 4;
      v47 = (v45 >> 4) + 1;
      if (v47 >> 60)
      {
        sub_10000918C();
      }

      v48 = v42 - v44;
      if (v48 >> 3 > v47)
      {
        v47 = v48 >> 3;
      }

      if (v48 >= 0x7FFFFFFFFFFFFFF0)
      {
        v49 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        if (!(v49 >> 60))
        {
          operator new();
        }

        sub_10000927C();
      }

      v50 = v45 >> 4;
      v51 = (16 * v46);
      *v51 = v40;
      v51[1] = v41;
      if (v44 != v32)
      {
        v52 = v32 - v44 - 16;
        v53 = v44;
        v54 = 0;
        if (v52 < 0x90)
        {
          goto LABEL_83;
        }

        v56 = v45 + (v52 & 0xFFFFFFFFFFFFFFF0) - 16 * v50;
        v57 = v56 + 8;
        v58 = v56 + 16;
        v59 = v45 - 16 * v50 + 8 >= v44 + (v52 & 0xFFFFFFFFFFFFFFF0) + 16 || (v44 + 1) >= v58;
        v60 = !v59;
        v61 = v44 >= v57 || (v44 + (v52 & 0xFFFFFFFFFFFFFFF0) + 8) == 0;
        v53 = v44;
        v54 = 0;
        if (!v61)
        {
          goto LABEL_83;
        }

        v53 = v44;
        v54 = 0;
        if (v60)
        {
          goto LABEL_83;
        }

        v62 = (v52 >> 4) + 1;
        v54 = (16 * (v62 & 0x1FFFFFFFFFFFFFFCLL));
        v53 = (v54 + v44);
        v63 = (-16 * v50 + 16 * v46 + 32);
        v64 = (v44 + 4);
        v65 = v62 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v67 = *(v64 - 2);
          v66 = *(v64 - 1);
          v69 = *v64;
          v68 = v64[1];
          v64 += 4;
          *(v63 - 2) = v67;
          *(v63 - 1) = v66;
          *v63 = v69;
          v63[1] = v68;
          v63 += 4;
          v65 -= 4;
        }

        while (v65);
        if (v62 != (v62 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_83:
          do
          {
            v55 = *v53;
            v53 += 2;
            *v54++ = v55;
          }

          while (v53 != v32);
        }
      }

      v32 = v51 + 2;
      *a7 = 0;
      a7[1] = v51 + 2;
      a7[2] = 0;
      if (v44)
      {
        operator delete(v44);
      }

      a6 = v43;
      a7[1] = v32;
      v35 = v28 < v27;
      v28 += v43;
    }

    while (v35);
LABEL_73:
    v31 = *a7;
  }

  if (v32 - v31 == 16)
  {
    sub_1002FCA28(a7, 2uLL, a1);
  }

  if (v71)
  {
    sub_1002ACC1C(v70);
  }
}

int64x2_t *sub_1002FCA28(uint64_t a1, unint64_t a2, int64x2_t *a3)
{
  v5 = *(a1 + 16);
  v6 = *a1;
  result = v6;
  if (a2 > (v5 - v6) >> 4)
  {
    if (v6)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a2 >> 60))
    {
      v8 = v5 >> 3;
      if (v5 >> 3 <= a2)
      {
        v8 = a2;
      }

      v9 = v5 >= 0x7FFFFFFFFFFFFFF0;
      v10 = 0xFFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 60))
      {
        operator new();
      }
    }

    sub_10000918C();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v6;
  v13 = v11 - v6;
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v11 - v6;
  }

  if (v14)
  {
    v15 = *a3;
    v16 = v14;
    if (v14 < 4)
    {
      goto LABEL_31;
    }

    result = &v6[v14 & 0xFFFFFFFFFFFFFFFCLL];
    v16 = v14 & 3;
    *&v17 = a3->i64[0];
    *(&v17 + 1) = vdupq_laneq_s64(v15, 1).u64[0];
    v18 = v6 + 2;
    v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      *(v18 - 2) = v17;
      *(v18 - 1) = v17;
      *v18 = v17;
      v18[1] = v17;
      v18 += 4;
      v19 -= 4;
    }

    while (v19);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_31:
      do
      {
        *result++ = v15;
        --v16;
      }

      while (v16);
    }
  }

  v9 = a2 >= v13;
  v20 = a2 - v13;
  if (v20 != 0 && v9)
  {
    v21 = &v11[v20];
    v22 = *a3;
    v23 = 16 * a2 - v12 - 16;
    v24 = v11;
    if (v23 < 0x30)
    {
      goto LABEL_32;
    }

    v25 = (v23 >> 4) + 1;
    v24 = &v11[v25 & 0x1FFFFFFFFFFFFFFCLL];
    *&v26 = a3->i64[0];
    *(&v26 + 1) = vdupq_laneq_s64(v22, 1).u64[0];
    v27 = v11 + 2;
    v28 = v25 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v27 - 2) = v26;
      *(v27 - 1) = v26;
      *v27 = v26;
      v27[1] = v26;
      v27 += 4;
      v28 -= 4;
    }

    while (v28);
    if (v25 != (v25 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      do
      {
        *v24++ = v22;
      }

      while (v24 != v21);
    }

    *(a1 + 8) = v21;
  }

  else
  {
    *(a1 + 8) = &v6[a2];
  }

  return result;
}

void sub_1002FCC3C(uint64_t a1, void *a2, void *a3, unint64_t a4, unsigned int a5, int a6, unsigned int a7)
{
  sub_1002ACE7C(v35, &off_100478A80);
  if (sub_100271148(a1) == 0x10000)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v27 = *v14;
    v28 = v16;
    v29 = *(v14 + 32);
    v17 = *(v14 + 56);
    v30 = *(v14 + 48);
    v31 = v17;
    v32 = &v27 + 8;
    v33 = v34;
    v34[0] = 0;
    v34[1] = 0;
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_4:
        v18 = *(v14 + 72);
        v19 = v33;
        *v33 = *v18;
        v19[1] = v18[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v27) = 0;
    sub_100269B58(&v27, v14);
  }

  else
  {
    sub_1002703C0(a1, -1, &v27);
  }

LABEL_8:
  if ((v27 & 7) != 0)
  {
    v20 = 8;
  }

  else
  {
    v20 = 16;
  }

  if (a6 == 16)
  {
    a6 = v20;
  }

  if (a5 >= 0x8000)
  {
    v37 = 0;
    v38 = 0;
    qmemcpy(sub_1002A80E0(&v37, 44), "0 <= thickness && thickness <= MAX_THICKNESS", 44);
    sub_1002A8980(-215, &v37, "line", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/drawing.cpp", 1817);
  }

  if (a7 >= 0x11)
  {
    v37 = 0;
    v38 = 0;
    qmemcpy(sub_1002A80E0(&v37, 31), "0 <= shift && shift <= XY_SHIFT", 31);
    sub_1002A8980(-215, &v37, "line", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/drawing.cpp", 1818);
  }

  sub_10026F720(a4, &v37, v27 & 0xFFF, 0);
  v21.i64[0] = *a2;
  v21.i64[1] = HIDWORD(*a2);
  v22 = v21;
  v21.i64[0] = *a3;
  v21.i64[1] = HIDWORD(*a3);
  v25 = v21;
  v26 = v22;
  sub_1002FCF98(&v27, &v26, &v25, &v37, a5, a6, 3, a7);
  if (v31 && atomic_fetch_add((v31 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v27);
  }

  v31 = 0;
  v28 = 0u;
  v29 = 0u;
  if (SDWORD1(v27) >= 1)
  {
    v23 = 0;
    v24 = v32;
    do
    {
      *&v24[4 * v23++] = 0;
    }

    while (v23 < SDWORD1(v27));
  }

  if (v33 != v34)
  {
    j__free(v33);
  }

  if (v36)
  {
    sub_1002ACC1C(v35);
  }
}

void sub_1002FCF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FCF98(void *a1, uint64x2_t *a2, int64x2_t *a3, char *a4, int a5, int a6, char a7, int a8)
{
  *a2 = vshlq_u64(*a2, vdupq_n_s64((16 - a8)));
  v12 = a3->i64[0] << (16 - a8);
  v13 = a3->i64[1] << (16 - a8);
  a3->i64[0] = v12;
  a3->i64[1] = v13;
  if (a5 > 1)
  {
    v26 = a2->i64[0];
    v27 = a2->i64[1];
    v28 = vcvtd_n_f64_s64(a2->i64[0] - v12, 0x10uLL);
    v29 = vcvtd_n_f64_s64(v13 - v27, 0x10uLL);
    v30 = v29 * v29 + v28 * v28;
    v31 = a5 << 15;
    if (fabs(v30) > 2.22044605e-16)
    {
      v32 = (v31 + ((a5 & 1) << 16) * 0.5) / sqrt(v30);
      v33 = rint(v29 * v32);
      v34 = rint(v28 * v32);
      v43.i64[0] = v33 + v26;
      v43.i64[1] = v34 + v27;
      v44 = v26 - v33;
      v45 = v27 - v34;
      v46 = v12 - v33;
      v47 = v13 - v34;
      v48 = v33 + v12;
      v49 = v34 + v13;
      v35 = a1;
      sub_1002FD4FC(a1, &v43, 4, a4, a6, 16);
      a1 = v35;
    }

    if (a6 >= 16)
    {
      if (a7)
      {
        v42 = *a2;
        v41.i64[0] = v31;
        v41.i64[1] = v31;
        v40 = a1;
        sub_1002FDB44(a1, &v42, &v41, 0, 0, 360, a4, -1, a6);
        a1 = v40;
      }

      v38 = a3->i64[0];
      a2->i64[0] = a3->i64[0];
      v39 = a3->i64[1];
      a2->i64[1] = v39;
      if ((a7 & 2) == 0)
      {
        goto LABEL_44;
      }

      v42.i64[0] = v38;
      v42.i64[1] = v39;
      v41.i64[0] = v31;
      v41.i64[1] = v31;
      sub_1002FDB44(a1, &v42, &v41, 0, 0, 360, a4, -1, a6);
    }

    else
    {
      if (a7)
      {
        *v42.i8 = vrshrn_n_s64(*a2, 0x10uLL);
        v36 = a1;
        sub_1002FE1EC(a1, &v42, (v31 + 0x8000) >> 16, a4, 1);
        a1 = v36;
      }

      v37 = *a3;
      *a2 = *a3;
      if ((a7 & 2) == 0)
      {
        v39 = v37.i64[1];
        v38 = v37.i64[0];
LABEL_44:
        a2->i64[0] = v38;
        a2->i64[1] = v39;
        return;
      }

      *v42.i8 = vrshrn_n_s64(v37, 0x10uLL);
      sub_1002FE1EC(a1, &v42, (v31 + 0x8000) >> 16, a4, 1);
    }

    v38 = a3->i64[0];
    v39 = a3->i64[1];
    goto LABEL_44;
  }

  if (a6 > 15)
  {
    v43 = *a2;
    v42.i64[0] = v12;
    v42.i64[1] = v13;
    sub_100300880(a1, v43.i64, v42.i64, a4);
  }

  else if (!a8 || a6 == 4 || a6 == 1)
  {
    v14 = vdupq_n_s64(0x8000uLL);
    *a2 = vshrq_n_s64(vaddq_s64(*a2, v14), 0x10uLL);
    v15 = vshrq_n_s64(vaddq_s64(*a3, v14), 0x10uLL);
    *a3 = v15;
    v16 = 0xFFFFFFFF80000000;
    v17 = a2->i64[0];
    v18 = a2->i64[1];
    if (a2->i64[0] <= 0xFFFFFFFF80000000)
    {
      v17 = 0xFFFFFFFF80000000;
    }

    if (v17 >= 0x7FFFFFFF)
    {
      v19 = 0x7FFFFFFF;
    }

    else
    {
      v19 = v17;
    }

    if (v18 <= 0xFFFFFFFF80000000)
    {
      v20 = 0xFFFFFFFF80000000;
    }

    else
    {
      v20 = a2->i64[1];
    }

    if (v20 >= 0x7FFFFFFF)
    {
      v21 = 0x7FFFFFFF;
    }

    else
    {
      v21 = v20;
    }

    v22 = v15.i64[0];
    if (v15.i64[0] <= 0xFFFFFFFF80000000)
    {
      v22 = 0xFFFFFFFF80000000;
    }

    if (v22 >= 0x7FFFFFFF)
    {
      v23 = 0x7FFFFFFF;
    }

    else
    {
      v23 = v22;
    }

    if (v15.i64[1] > 0xFFFFFFFF80000000)
    {
      v16 = v15.i64[1];
    }

    if (v16 >= 0x7FFFFFFF)
    {
      v24 = 0x7FFFFFFF;
    }

    else
    {
      v24 = v16;
    }

    sub_1002FFF10(a1, v19, v21, v23, v24, a4, a6);
  }

  else
  {
    v43 = *a2;
    v42.i64[0] = v12;
    v42.i64[1] = v13;
    sub_1003000C4(a1, &v43, &v42, a4);
  }
}

__n128 sub_1002FD350(void *a1, uint64_t a2, unsigned int a3, int a4, char *a5, int a6, int a7, unsigned int a8)
{
  if (a2 && a3 >= 1)
  {
    if (a4)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    if (a6 < 0 || a8 >= 0x11)
    {
      v27 = 0uLL;
      qmemcpy(sub_1002A80E0(&v27, 49), "0 <= shift && shift <= XY_SHIFT && thickness >= 0", 49);
      sub_1002A8980(-215, v27.i64, "PolyLine", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/drawing.cpp", 1726);
    }

    if ((a4 ^ 1u) < a3)
    {
      if (a4)
      {
        v15 = a3 - 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = a3;
      v17 = *(a2 + 16 * v15);
      v25 = *(a2 + 16 * (a4 ^ 1u));
      v26 = v25;
      v27 = v17;
      if (a4)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      sub_1002FCF98(a1, &v27, &v26, a5, a6, a7, v14, a8);
      v20 = v16 - v18;
      if (v16 != v18)
      {
        v21 = v25.i64[1];
        v22 = v25.i64[0];
        v23 = (a2 + 16 * v18);
        do
        {
          v27.i64[0] = v22;
          v27.i64[1] = v21;
          v24 = *v23++;
          v26 = v24;
          sub_1002FCF98(a1, &v27, &v26, a5, a6, a7, 2, a8);
          result = v24;
          v21 = v24.n128_i64[1];
          v22 = v24.n128_u64[0];
          --v20;
        }

        while (v20);
      }
    }
  }

  return result;
}

void sub_1002FD4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FD4FC(uint64_t result, void *a2, int a3, char *a4, int a5, int a6)
{
  v6 = *(result + 64);
  v7 = *(result + 4);
  if (v7 < 1)
  {
    v91 = 0;
  }

  else
  {
    v91 = *(*(result + 72) + 8 * v7 - 8);
  }

  v92 = *v6;
  v96 = v6[1];
  v85 = a5 < 16;
  v87 = *(result + 16);
  v8 = 0xFFFFLL;
  if (a5 < 16)
  {
    v8 = 0x8000;
  }

  v90 = v8;
  v9 = 16 - a6;
  v10 = *a2;
  v11 = a2[1];
  v103 = 16 - a6;
  v104 = result;
  v97 = a3 - 1;
  v94 = a6;
  if (a3 < 1)
  {
    v18 = 0;
    v21 = *a2;
    v20 = a2[1];
    v16 = a4;
  }

  else
  {
    v12 = &a2[2 * a3 - 2];
    v13 = v12[1];
    v14 = *v12 << v9;
    v15 = v13 << v9;
    v101 = a3;
    if (a5 >= 9)
    {
      v26 = 0;
      LODWORD(v18) = 0;
      v27 = a2 + 1;
      v20 = a2[1];
      v21 = *a2;
      v16 = a4;
      do
      {
        v28 = *(v27 - 1);
        v29 = *v27;
        if (*v27 >= v20)
        {
          v18 = v18;
        }

        else
        {
          v18 = v26;
        }

        if (*v27 < v20)
        {
          v20 = *v27;
        }

        if (v11 <= v29)
        {
          v11 = *v27;
        }

        if (v10 <= v28)
        {
          v10 = *(v27 - 1);
        }

        if (v21 >= v28)
        {
          v21 = *(v27 - 1);
        }

        v30 = v28 << v9;
        v106.i64[0] = v14;
        v106.i64[1] = v15;
        v31 = v29 << v9;
        v105.i64[0] = v28 << v9;
        v105.i64[1] = v29 << v9;
        sub_100300880(v104, v106.i64, v105.i64, v16);
        v9 = v103;
        result = v104;
        ++v26;
        v27 += 2;
        v14 = v30;
        v15 = v31;
      }

      while (v101 != v26);
    }

    else
    {
      v16 = a4;
      if (a6)
      {
        v17 = 0;
        LODWORD(v18) = 0;
        v19 = a2 + 1;
        v20 = a2[1];
        v21 = *a2;
        do
        {
          v22 = *(v19 - 1);
          v23 = *v19;
          if (*v19 >= v20)
          {
            v18 = v18;
          }

          else
          {
            v18 = v17;
          }

          if (*v19 < v20)
          {
            v20 = *v19;
          }

          if (v11 <= v23)
          {
            v11 = *v19;
          }

          if (v10 <= v22)
          {
            v10 = *(v19 - 1);
          }

          if (v21 >= v22)
          {
            v21 = *(v19 - 1);
          }

          v24 = v22 << v9;
          v106.i64[0] = v14;
          v106.i64[1] = v15;
          v25 = v23 << v9;
          v105.i64[0] = v22 << v9;
          v105.i64[1] = v23 << v9;
          sub_1003000C4(v104, &v106, &v105, v16);
          v9 = v103;
          result = v104;
          ++v17;
          v19 += 2;
          v14 = v24;
          v15 = v25;
        }

        while (v101 != v17);
      }

      else
      {
        v32 = 0;
        LODWORD(v18) = 0;
        v33 = a2 + 1;
        v20 = a2[1];
        v21 = *a2;
        do
        {
          v34 = *(v33 - 1);
          v35 = *v33;
          if (*v33 >= v20)
          {
            v18 = v18;
          }

          else
          {
            v18 = v32;
          }

          if (*v33 < v20)
          {
            v20 = *v33;
          }

          if (v11 <= v35)
          {
            v11 = *v33;
          }

          v36 = v34 << v9;
          v37 = v35 << v9;
          if (v10 <= v34)
          {
            v10 = *(v33 - 1);
          }

          if (v21 >= v34)
          {
            v21 = *(v33 - 1);
          }

          sub_1002FFF10(v104, v14 >> 16, v15 >> 16, v36 >> 16, v37 >> 16, v16, a5);
          v9 = v103;
          result = v104;
          ++v32;
          v33 += 2;
          v14 = v36;
          v15 = v37;
        }

        while (v101 != v32);
      }
    }
  }

  __src = v16;
  v39 = a3;
  v38 = a5;
  v40 = a2;
  v41 = v97;
  if (a3 < 3)
  {
    return result;
  }

  v42 = 1 << v94 >> 1;
  if ((((v10 + v42) >> v94) & 0x80000000) != 0)
  {
    return result;
  }

  v43 = (v11 + v42) >> v94;
  if ((v43 & 0x80000000) != 0)
  {
    return result;
  }

  v44 = v94;
  if (v96 <= ((v21 + v42) >> v94))
  {
    return result;
  }

  v82 = (v20 + v42) >> v94;
  if (v92 <= v82)
  {
    return result;
  }

  v83 = 0;
  v84 = 0;
  v79 = v85 << 15;
  if (v43 >= v92 - 1)
  {
    LODWORD(v45) = v92 - 1;
  }

  else
  {
    v45 = (v11 + v42) >> v94;
  }

  result = v87 + *(result + 80) * v82;
  v86 = v45;
  if (v82 <= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = (v20 + v42) >> v94;
  }

  v88 = v46;
  v47 = -65536;
  v48 = (v20 + v42) >> v94;
  v49 = -65536;
  LODWORD(v20) = v48;
  v50 = v18;
  v51 = a3;
  v52 = v82;
  v80 = 1 << v94 >> 1;
  v81 = v94;
  while (1)
  {
    if (v38 >= 16 && v52 >= v86 && v52 != v82)
    {
LABEL_81:
      if (v51 < 0)
      {
        return result;
      }

      v93 = v48;
      v95 = v50;
      v102 = result;
      if ((v52 & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_64;
    }

    if (v52 >= v48)
    {
      v54 = __OFSUB__(v51--, 1);
      if (v51 < 0 == v54)
      {
        break;
      }
    }

LABEL_80:
    if (v52 < v20)
    {
      goto LABEL_81;
    }

    if (v51 < 1)
    {
      return result;
    }

    if (v41 + v18 >= v39)
    {
      v73 = v39;
    }

    else
    {
      v73 = 0;
    }

    v74 = v41 + v18 - v73;
    v75 = &v40[2 * v74];
    v20 = (v75[1] + v42) >> v44;
    if (v52 >= v20)
    {
      while (1)
      {
        v54 = __OFSUB__(v51--, 1);
        if ((v51 < 0) ^ v54 | (v51 == 0))
        {
          return result;
        }

        LODWORD(v18) = v74;
        v76 = v74 + v41;
        if (v76 >= v39)
        {
          v77 = v39;
        }

        else
        {
          v77 = 0;
        }

        v74 = v76 - v77;
        v75 = &v40[2 * v74];
        v20 = (v75[1] + v42) >> v44;
        if (v52 < v20)
        {
          --v51;
          goto LABEL_115;
        }
      }
    }

    --v51;
LABEL_115:
    v78 = v40[2 * v18];
    v47 = v78 << v9;
    LODWORD(v18) = v74;
    v84 = (2 * ((*v75 - v78) << v9) + v20 - v52) / (2 * (v20 - v52));
    v93 = v48;
    v95 = v50;
    v102 = result;
    if ((v52 & 0x80000000) == 0)
    {
LABEL_83:
      if (v49 >= v47)
      {
        v61 = v47;
      }

      else
      {
        v61 = v49;
      }

      if (v49 <= v47)
      {
        v62 = v47;
      }

      else
      {
        v62 = v49;
      }

      v63 = (v62 + v79) >> 16;
      if ((v63 & 0x80000000) == 0)
      {
        v64 = (v61 + v90) >> 16;
        if (v96 > v64)
        {
          v65 = v64 & ~(v64 >> 31);
          v66 = v96 - 1;
          if (v96 > v63)
          {
            v66 = v63;
          }

          v67 = v65 * v91;
          v68 = (v102 + v67);
          v69 = v91 + v91 * v66;
          if (v91 == 1)
          {
            memset(v68, *__src, v69 - v67);
          }

          else
          {
            v70 = (v102 + v65 * v91);
            if (v67 < v69)
            {
              memcpy(v68, __src, v91);
              v70 = &v68[v91];
            }

            v71 = v102 + v69;
            if (v70 < v71)
            {
              v72 = v91;
              do
              {
                memcpy(v70, v68, v72);
                v70 += v72;
                if (v71 - v70 >= 2 * v72)
                {
                  v72 *= 2;
                }

                else
                {
                  v72 = v71 - v70;
                }
              }

              while (v71 > v70);
            }
          }
        }
      }
    }

LABEL_64:
    v49 += v83;
    v47 += v84;
    v9 = v103;
    result = v102 + *(v104 + 80);
    v53 = v52++ == v88;
    v39 = a3;
    v38 = a5;
    v40 = a2;
    v41 = v97;
    v42 = v80;
    v44 = v81;
    v48 = v93;
    v50 = v95;
    if (v53)
    {
      return result;
    }
  }

  if (v50 + 1 >= v39)
  {
    v55 = v39;
  }

  else
  {
    v55 = 0;
  }

  v56 = (v50 + 1 - v55);
  v57 = &v40[2 * v56];
  v48 = (v57[1] + v42) >> v44;
  if (v52 < v48)
  {
LABEL_79:
    v60 = v40[2 * v50];
    v49 = v60 << v9;
    v50 = v56;
    v83 = (2 * ((*v57 - v60) << v9) + v48 - v52) / (2 * (v48 - v52));
    goto LABEL_80;
  }

  while (v51 > 0)
  {
    LODWORD(v50) = v56;
    v58 = v56 + 1;
    if (v58 >= v39)
    {
      v59 = v39;
    }

    else
    {
      v59 = 0;
    }

    v56 = (v58 - v59);
    --v51;
    v57 = &v40[2 * v56];
    v48 = (v57[1] + v42) >> v44;
    if (v52 < v48)
    {
      goto LABEL_79;
    }
  }

  return result;
}

void sub_1002FDB44(uint64_t a1, int64x2_t *a2, int64x2_t *a3, int a4, signed int a5, signed int a6, char *a7, int a8, int a9)
{
  v11 = a5;
  v13 = vabsq_s64(*a3);
  *a3 = v13;
  v14 = v13.i64[1];
  if (v13.i64[0] > v13.i64[1])
  {
    v14 = v13.i64[0];
  }

  v15 = (v14 + 0x8000) >> 16;
  if (v15 >= 3)
  {
    if (v15 >= 0xA)
    {
      if (v15 >= 0xF)
      {
        v16 = 5;
      }

      else
      {
        v16 = 18;
      }
    }

    else
    {
      v16 = 30;
    }
  }

  else
  {
    v16 = 90;
  }

  v98 = 0;
  v99 = 0;
  v100 = 0;
  *__p = vcvtq_f64_s64(*a2);
  *v94 = vcvtq_f64_u64(v13);
  sub_1002FC5C8(__p, v94, a4, a5, a6, v16, &v98);
  __p[0] = 0;
  __p[1] = 0;
  v97 = 0;
  v18 = v98;
  v17 = v99;
  if (v99 != v98)
  {
    v88 = v11;
    v89 = a6;
    v90 = a8;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v23 = -1;
    do
    {
      v24 = &v18[16 * v20];
      v25 = *v24;
      v26 = v24[1];
      v27 = rint(*v24 * 0.0000152587891) << 16;
      v28 = rint(v26 * 0.0000152587891) << 32 >> 16;
      v29 = v27 + rint(v25 - v27);
      v30 = v28 + rint(v26 - v28);
      v31 = v29 == v22 && v30 == v23;
      if (!v31)
      {
        if (v19 < v97)
        {
          *v19 = v29;
          *(v19 + 1) = v30;
          v19 += 16;
        }

        else
        {
          v32 = __p[0];
          v33 = v19 - __p[0];
          v34 = (v19 - __p[0]) >> 4;
          v35 = v34 + 1;
          if ((v34 + 1) >> 60)
          {
            sub_10000918C();
          }

          v36 = v97 - __p[0];
          if ((v97 - __p[0]) >> 3 > v35)
          {
            v35 = v36 >> 3;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF0)
          {
            v37 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            if (!(v37 >> 60))
            {
              operator new();
            }

            sub_10000927C();
          }

          v38 = (v19 - __p[0]) >> 4;
          v39 = (16 * v34);
          *v39 = v29;
          v39[1] = v30;
          if (v32 != v19)
          {
            v40 = v19 - v32 - 16;
            v41 = v32;
            v42 = 0;
            if (v40 < 0x90)
            {
              goto LABEL_101;
            }

            v44 = v33 + (v40 & 0xFFFFFFFFFFFFFFF0) - 16 * v38;
            v45 = v44 + 8;
            v46 = v44 + 16;
            v47 = v33 - 16 * v38 + 8 >= &v32[(v40 & 0xFFFFFFFFFFFFFFF0) + 16] || (v32 + 8) >= v46;
            v48 = !v47;
            v49 = v32 >= v45 || &v32[(v40 & 0xFFFFFFFFFFFFFFF0) + 8] == 0;
            v41 = v32;
            v42 = 0;
            if (!v49)
            {
              goto LABEL_101;
            }

            v41 = v32;
            v42 = 0;
            if (v48)
            {
              goto LABEL_101;
            }

            v50 = (v40 >> 4) + 1;
            v42 = (16 * (v50 & 0x1FFFFFFFFFFFFFFCLL));
            v41 = v42 + v32;
            v51 = (-16 * v38 + 16 * v34 + 32);
            v52 = (v32 + 32);
            v53 = v50 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v55 = *(v52 - 2);
              v54 = *(v52 - 1);
              v57 = *v52;
              v56 = v52[1];
              v52 += 4;
              *(v51 - 2) = v55;
              *(v51 - 1) = v54;
              *v51 = v57;
              v51[1] = v56;
              v51 += 4;
              v53 -= 4;
            }

            while (v53);
            if (v50 != (v50 & 0x1FFFFFFFFFFFFFFCLL))
            {
LABEL_101:
              do
              {
                v43 = *v41;
                v41 += 16;
                *v42++ = v43;
              }

              while (v41 != v19);
            }
          }

          v19 = (v39 + 2);
          __p[0] = 0;
          __p[1] = v39 + 2;
          v97 = 0;
        }

        __p[1] = v19;
        v22 = v29;
        v23 = v30;
        v18 = v98;
        v17 = v99;
      }

      v20 = ++v21;
    }

    while (v21 < ((v17 - v18) >> 4));
    v31 = (v19 - __p[0]) == 16;
    a6 = v89;
    a8 = v90;
    v11 = v88;
    if (v31)
    {
      sub_1002FCA28(__p, 2uLL, a2);
    }
  }

  v58 = a9;
  if (a8 < 0)
  {
    if (a6 - v11 < 360)
    {
      v59 = __p[1];
      if (__p[1] >= v97)
      {
        v61 = __p[0];
        v62 = __p[1] - __p[0];
        v63 = (__p[1] - __p[0]) >> 4;
        v64 = v63 + 1;
        if ((v63 + 1) >> 60)
        {
          sub_10000918C();
        }

        v65 = v97 - __p[0];
        if ((v97 - __p[0]) >> 3 > v64)
        {
          v64 = v65 >> 3;
        }

        if (v65 >= 0x7FFFFFFFFFFFFFF0)
        {
          v66 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v66 = v64;
        }

        if (v66)
        {
          if (!(v66 >> 60))
          {
            operator new();
          }

          sub_10000927C();
        }

        v67 = (__p[1] - __p[0]) >> 4;
        v68 = (16 * v63 - 16 * v67);
        *(16 * v63) = *a2;
        v60 = (16 * v63 + 16);
        if (v61 != v59)
        {
          v69 = v59 - v61 - 16;
          v70 = v61;
          v71 = (16 * v63 - 16 * v67);
          if (v69 < 0x190)
          {
            goto LABEL_102;
          }

          v73 = v62 + (v69 & 0xFFFFFFFFFFFFFFF0) - 16 * v67;
          v74 = v73 + 8;
          v75 = v73 + 16;
          v76 = v62 - 16 * v67 + 8 >= &v61[(v69 & 0xFFFFFFFFFFFFFFF0) + 16] || (v61 + 8) >= v75;
          v77 = !v76;
          v78 = v61 >= v74 || v68 >= &v61[(v69 & 0xFFFFFFFFFFFFFFF0) + 8];
          v70 = v61;
          v71 = (16 * v63 - 16 * v67);
          if (!v78)
          {
            goto LABEL_102;
          }

          v70 = v61;
          v71 = (16 * v63 - 16 * v67);
          if (v77)
          {
            goto LABEL_102;
          }

          v79 = (v69 >> 4) + 1;
          v80 = 16 * (v79 & 0x1FFFFFFFFFFFFFFCLL);
          v70 = &v61[v80];
          v71 = &v68[v80];
          v81 = (-16 * v67 + 16 * v63 + 32);
          v82 = (v61 + 32);
          v83 = v79 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v85 = *(v82 - 2);
            v84 = *(v82 - 1);
            v87 = *v82;
            v86 = v82[1];
            v82 += 4;
            *(v81 - 2) = v85;
            *(v81 - 1) = v84;
            *v81 = v87;
            v81[1] = v86;
            v81 += 4;
            v83 -= 4;
          }

          while (v83);
          if (v79 != (v79 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_102:
            do
            {
              v72 = *v70;
              v70 += 16;
              *v71 = v72;
              v71 += 16;
            }

            while (v70 != v59);
          }
        }

        __p[0] = v68;
        __p[1] = (16 * v63 + 16);
        v97 = 0;
        if (v61)
        {
          operator delete(v61);
          v58 = a9;
        }
      }

      else
      {
        *__p[1] = *a2;
        v60 = v59 + 16;
      }

      __p[1] = v60;
      v94[0] = 0;
      v94[1] = 0;
      v95 = 0;
      v93 = 0;
      sub_1002FEB34(a1, __p[0], (v60 - __p[0]) >> 4, v94, a7, v58, 0x10u, &v93);
      sub_1002FEE1C(a1, v94, a7);
      if (v94[0])
      {
        v94[1] = v94[0];
        operator delete(v94[0]);
      }
    }

    else
    {
      sub_1002FD4FC(a1, __p[0], (__p[1] - __p[0]) >> 4, a7, a9, 16);
    }
  }

  else
  {
    sub_1002FD350(a1);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }
}

void sub_1002FE170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    v24 = a19;
    if (!a19)
    {
LABEL_3:
      v25 = a22;
      if (!a22)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v24 = a19;
    if (!a19)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  v25 = a22;
  if (!a22)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void *sub_1002FE1EC(void *result, _DWORD *a2, int a3, unsigned __int8 *a4, int a5)
{
  v5 = a3;
  v6 = result[8];
  v86 = v6[1];
  v7 = *(result + 1);
  if (v7 < 1)
  {
    LODWORD(v95) = 0;
  }

  else
  {
    v95 = *(result[9] + 8 * v7 - 8);
  }

  v85 = *v6;
  v8 = *a2 >= a3 && *a2 < v86 - a3;
  if (v8 && (v9 = a2[1], v9 >= a3))
  {
    v94 = v9 < (v85 - a3);
    if (a3 < 0)
    {
      return result;
    }
  }

  else
  {
    v94 = 0;
    if (a3 < 0)
    {
      return result;
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 2 * a3 - 1;
  v91 = result[2];
  v92 = result[10];
  v84 = v86 - 1;
  v13 = 1;
  v93 = a2;
  do
  {
    v20 = a2[1];
    v21 = v20 - v11;
    v22 = v20 + v11;
    v23 = v20 + v5;
    v24 = *a2 - v5;
    v25 = *a2 + v5;
    v26 = *a2 + v11;
    v103 = v13;
    v104 = v12;
    if (v94)
    {
      v98 = v20 + v5;
      v100 = *a2 - v11;
      v27 = v91 + v92 * v21;
      v28 = v91 + v92 * v22;
      v29 = v24 * v95;
      v30 = (v27 + v29);
      v96 = v20 - v5;
      v88 = *a2 + v11;
      if (a5)
      {
        v31 = v95 + v95 * v25;
        if (v95 == 1)
        {
          memset((v27 + v29), *a4, v31 - v29);
          result = memset((v28 + v29), *a4, v31 - v29);
        }

        else
        {
          v36 = (v27 + v29);
          if (v29 < v31)
          {
            result = memcpy((v27 + v29), a4, v95);
            v36 = &v30[v95];
          }

          v37 = v27 + v31;
          if (v36 < v27 + v31)
          {
            v38 = v95;
            do
            {
              result = memcpy(v36, v30, v38);
              v36 += v38;
              if (v37 - v36 >= 2 * v38)
              {
                v38 *= 2;
              }

              else
              {
                v38 = v37 - v36;
              }
            }

            while (v37 > v36);
          }

          v39 = (v28 + v29);
          v40 = (v28 + v29);
          if (v29 < v31)
          {
            result = memcpy((v28 + v29), a4, v95);
            v40 = &v39[v95];
          }

          v41 = v28 + v31;
          if (v40 < v28 + v31)
          {
            v42 = v95;
            do
            {
              result = memcpy(v40, v39, v42);
              v40 += v42;
              if (v41 - v40 >= 2 * v42)
              {
                v42 *= 2;
              }

              else
              {
                v42 = v41 - v40;
              }
            }

            while (v41 > v40);
          }
        }

        v43 = v91 + v92 * v96;
        v44 = v91 + v92 * v98;
        v45 = v95 * v100;
        v46 = (v43 + v45);
        v47 = v95 + v95 * v88;
        if (v95 == 1)
        {
          memset((v43 + v45), *a4, v47 - v45);
          result = memset((v44 + v45), *a4, v47 - v45);
        }

        else
        {
          v48 = (v43 + v45);
          if (v45 < v47)
          {
            result = memcpy((v43 + v45), a4, v95);
            v48 = &v46[v95];
          }

          v49 = v43 + v47;
          if (v48 < v43 + v47)
          {
            v50 = v95;
            do
            {
              result = memcpy(v48, v46, v50);
              v48 += v50;
              if (v49 - v48 >= 2 * v50)
              {
                v50 *= 2;
              }

              else
              {
                v50 = v49 - v48;
              }
            }

            while (v49 > v48);
          }

          v51 = (v44 + v45);
          v52 = (v44 + v45);
          if (v45 < v47)
          {
            result = memcpy((v44 + v45), a4, v95);
            v52 = &v51[v95];
          }

          v53 = v44 + v47;
          if (v52 < v53)
          {
            v54 = v95;
            do
            {
              result = memcpy(v52, v51, v54);
              v52 += v54;
              if (v53 - v52 >= 2 * v54)
              {
                v54 *= 2;
              }

              else
              {
                v54 = v53 - v52;
              }
            }

            while (v53 > v52);
          }
        }
      }

      else
      {
        v14 = *a2 + v5;
        memcpy((v27 + v29), a4, v95);
        memcpy((v28 + v29), a4, v95);
        memcpy((v27 + v95 * v14), a4, v95);
        memcpy((v28 + v95 * v14), a4, v95);
        v15 = v91 + v92 * v96;
        v16 = v91 + v92 * v23;
        memcpy((v15 + v95 * v100), a4, v95);
        memcpy((v16 + v95 * v100), a4, v95);
        memcpy((v15 + v95 * v26), a4, v95);
        result = memcpy((v16 + v95 * v26), a4, v95);
      }
    }

    else if (v24 < v86 && (v25 & 0x80000000) == 0 && v20 - v5 < v85 && (v23 & 0x80000000) == 0)
    {
      v101 = *a2 - v11;
      v97 = v20 - v5;
      v99 = (v20 + v5);
      if (a5)
      {
        v24 &= ~(v24 >> 31);
        if (v25 >= v84)
        {
          v25 = v86 - 1;
        }

        v89 = v25;
        if (v21 < v85)
        {
          v32 = v91 + v92 * v21;
          v33 = v24 * v95;
          v34 = (v32 + v33);
          v35 = v95 + v95 * v25;
          if (v95 == 1)
          {
            result = memset(v34, *a4, v35 - v33);
          }

          else
          {
            v57 = (v32 + v33);
            if (v33 < v35)
            {
              result = memcpy((v32 + v33), a4, v95);
              v57 = &v34[v95];
            }

            v58 = v32 + v35;
            if (v57 < v58)
            {
              v59 = v95;
              do
              {
                result = memcpy(v57, v34, v59);
                v57 += v59;
                if (v58 - v57 >= 2 * v59)
                {
                  v59 *= 2;
                }

                else
                {
                  v59 = v58 - v57;
                }
              }

              while (v58 > v57);
            }
          }
        }
      }

      else
      {
        v89 = *a2 + v5;
        if (v21 < v85)
        {
          v55 = v91 + v92 * v21;
          v56 = v95;
          if ((v24 & 0x80000000) == 0)
          {
            result = memcpy((v55 + v24 * v95), a4, v95);
            v25 = v89;
            v56 = v95;
          }

          if (v25 < v86)
          {
            result = memcpy((v55 + v25 * v56), a4, v95);
          }
        }
      }

      if (v22 < v85)
      {
        v60 = v91 + v92 * v22;
        if (a5)
        {
          v61 = v24 * v95;
          v62 = (v60 + v61);
          v63 = v95 + v95 * v89;
          if (v95 == 1)
          {
            result = memset(v62, *a4, v63 - v61);
          }

          else
          {
            v64 = (v60 + v61);
            if (v61 < v63)
            {
              result = memcpy((v60 + v61), a4, v95);
              v64 = &v62[v95];
            }

            v65 = v60 + v63;
            if (v64 < v65)
            {
              v66 = v95;
              do
              {
                result = memcpy(v64, v62, v66);
                v64 += v66;
                if (v65 - v64 >= 2 * v66)
                {
                  v66 *= 2;
                }

                else
                {
                  v66 = v65 - v64;
                }
              }

              while (v65 > v64);
            }
          }
        }

        else
        {
          if ((v24 & 0x80000000) == 0)
          {
            result = memcpy((v60 + v24 * v95), a4, v95);
          }

          if (v89 < v86)
          {
            result = memcpy((v60 + v89 * v95), a4, v95);
          }
        }
      }

      v67 = v101;
      if (v101 < v86 && (v26 & 0x80000000) == 0)
      {
        if (a5)
        {
          v67 = v101 & ~(v101 >> 31);
          if (v26 >= v84)
          {
            v26 = v86 - 1;
          }

          if (v97 < v85)
          {
            v68 = v91 + v92 * v97;
            v69 = v67 * v95;
            v70 = (v68 + v69);
            v71 = v95 + v95 * v26;
            if (v95 == 1)
            {
              result = memset(v70, *a4, v71 - v69);
            }

            else
            {
              v102 = v101 & ~(v101 >> 31);
              v74 = (v68 + v69);
              if (v69 < v71)
              {
                result = memcpy((v68 + v69), a4, v95);
                v74 = &v70[v95];
              }

              v75 = v68 + v71;
              if (v74 < v75)
              {
                v76 = v95;
                do
                {
                  result = memcpy(v74, v70, v76);
                  v74 += v76;
                  if (v75 - v74 >= 2 * v76)
                  {
                    v76 *= 2;
                  }

                  else
                  {
                    v76 = v75 - v74;
                  }
                }

                while (v75 > v74);
              }

              v67 = v102;
            }
          }
        }

        else if (v97 < v85)
        {
          v72 = v91 + v92 * v97;
          v73 = v95;
          if ((v101 & 0x80000000) == 0)
          {
            result = memcpy((v72 + v101 * v95), a4, v95);
            v73 = v95;
          }

          if (v26 < v86)
          {
            result = memcpy((v72 + v26 * v73), a4, v95);
          }
        }

        if (v99 < v85)
        {
          v77 = v91 + v92 * v99;
          if (a5)
          {
            v78 = v67 * v95;
            v79 = (v77 + v78);
            v80 = v95 + v95 * v26;
            if (v95 == 1)
            {
              result = memset(v79, *a4, v80 - v78);
            }

            else
            {
              v81 = (v77 + v78);
              if (v78 < v80)
              {
                result = memcpy((v77 + v78), a4, v95);
                v81 = &v79[v95];
              }

              v82 = v77 + v80;
              if (v81 < v82)
              {
                v83 = v95;
                do
                {
                  result = memcpy(v81, v79, v83);
                  v81 += v83;
                  if (v82 - v81 >= 2 * v83)
                  {
                    v83 *= 2;
                  }

                  else
                  {
                    v83 = v82 - v81;
                  }
                }

                while (v82 > v81);
              }
            }
          }

          else
          {
            if ((v67 & 0x80000000) == 0)
            {
              result = memcpy((v77 + v67 * v95), a4, v95);
            }

            if (v26 < v86)
            {
              result = memcpy((v77 + v26 * v95), a4, v95);
            }
          }
        }
      }
    }

    v13 = v103 + 2;
    if ((v10 + v103 < 0) ^ __OFADD__(v10, v103) | (v10 + v103 == 0))
    {
      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    if ((v10 + v103 < 0) ^ __OFADD__(v10, v103) | (v10 + v103 == 0))
    {
      v18 = 0;
    }

    else
    {
      v18 = v104;
    }

    if ((v10 + v103 < 0) ^ __OFADD__(v10, v103) | (v10 + v103 == 0))
    {
      v19 = 0;
    }

    else
    {
      v19 = -2;
    }

    v10 = v10 + v103 - v18;
    v5 -= v17;
    v12 = v19 + v104;
    v8 = v5 <= v11++;
    a2 = v93;
  }

  while (!v8);
  return result;
}

void sub_1002FEB34(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5, int a6, unsigned int a7, int *a8)
{
  v8 = a2 + 16 * a3;
  v9 = a3 + ((a4[1] - *a4) >> 5);
  if (v9 > (a4[2] - *a4) >> 5)
  {
    if (!(v9 >> 59))
    {
      operator new();
    }

    sub_10000918C();
  }

  if (a3 >= 1)
  {
    v10 = a7;
    v11 = a8[1] + (1 << a7 >> 1);
    v12 = 16 - a7;
    v13 = (*(v8 - 16) + *a8) << (16 - a7);
    v14 = (*(v8 - 8) + v11) >> a7;
    v15 = a3;
    if (a6 >= 16)
    {
      v33 = (a2 + 8);
      do
      {
        v47 = 0u;
        v48 = 0u;
        v34 = (*(v33 - 1) + *a8) << v12;
        v35 = (*v33 + v11) >> v10;
        v46[0] = v13;
        v46[1] = v14 << 16;
        v45[0] = v34;
        v45[1] = v35 << 16;
        sub_100300880(a1, v46, v45, a5);
        if (v35 != v14)
        {
          if (v14 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v14;
          }

          if (v14 <= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v14;
          }

          if (v35 <= v14)
          {
            v38 = v34;
          }

          else
          {
            v38 = v13;
          }

          *&v47 = __PAIR64__(v37, v36);
          *(&v47 + 1) = v38;
          *&v48 = (v34 - v13) / (v35 - v14);
          sub_100301C70(a4, &v47);
        }

        v33 += 2;
        v14 = v35;
        v13 = v34;
        --v15;
      }

      while (v15);
    }

    else
    {
      v16 = (a2 + 8);
      v39 = 16 - a7;
      do
      {
        v47 = 0u;
        v48 = 0u;
        v17 = (*(v16 - 1) + *a8) << v12;
        v18 = v11;
        v19 = *v16 + v11;
        v20 = v10;
        v21 = v19 >> v10;
        v22 = (v13 + 0x8000) >> 16;
        if (v22 <= 0xFFFFFFFF80000000)
        {
          v22 = 0xFFFFFFFF80000000;
        }

        if (v22 >= 0x7FFFFFFF)
        {
          v23 = 0x7FFFFFFF;
        }

        else
        {
          v23 = v22;
        }

        if (v14 <= 0xFFFFFFFF80000000)
        {
          v24 = 0xFFFFFFFF80000000;
        }

        else
        {
          v24 = v14;
        }

        if (v24 >= 0x7FFFFFFF)
        {
          v25 = 0x7FFFFFFF;
        }

        else
        {
          v25 = v24;
        }

        if ((v17 + 0x8000) >> 16 <= 0xFFFFFFFF80000000)
        {
          v26 = 0xFFFFFFFF80000000;
        }

        else
        {
          v26 = (v17 + 0x8000) >> 16;
        }

        if (v26 >= 0x7FFFFFFF)
        {
          v27 = 0x7FFFFFFF;
        }

        else
        {
          v27 = v26;
        }

        if (v21 <= 0xFFFFFFFF80000000)
        {
          v28 = 0xFFFFFFFF80000000;
        }

        else
        {
          v28 = v21;
        }

        if (v28 >= 0x7FFFFFFF)
        {
          v29 = 0x7FFFFFFF;
        }

        else
        {
          v29 = v28;
        }

        sub_1002FFF10(a1, v23, v25, v27, v29, a5, a6);
        if (v21 != v14)
        {
          if (v14 >= v21)
          {
            v30 = v21;
          }

          else
          {
            v30 = v14;
          }

          if (v14 <= v21)
          {
            v31 = v21;
          }

          else
          {
            v31 = v14;
          }

          if (v21 <= v14)
          {
            v32 = v17;
          }

          else
          {
            v32 = v13;
          }

          *&v47 = __PAIR64__(v31, v30);
          *(&v47 + 1) = v32;
          *&v48 = (v17 - v13) / (v21 - v14);
          sub_100301C70(a4, &v47);
        }

        v16 += 2;
        v14 = v21;
        v13 = v17;
        --v15;
        v10 = v20;
        v11 = v18;
        v12 = v39;
      }

      while (v15);
    }
  }
}

void sub_1002FEE1C(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v102 = 0u;
  v103 = 0u;
  v5 = a2[1];
  v99 = a2;
  v6 = *a2;
  v7 = v5 - *a2;
  v100 = v7 >> 5;
  v8 = *(a1 + 4);
  v97 = a1;
  if (v8 < 1)
  {
    v96 = 0;
    if (v100 <= 1)
    {
      return;
    }
  }

  else
  {
    v96 = *(*(a1 + 72) + 8 * v8 - 8);
    if (v100 <= 1)
    {
      return;
    }
  }

  v9 = *(a1 + 64);
  v98 = v9[1];
  v10 = (v7 >> 5) & 0x7FFFFFFF;
  if (v10 >= 9)
  {
    v16 = v7 >> 5;
    if (!v16)
    {
      v16 = 8;
    }

    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v18 = vnegq_f64(v17);
    v19.i64[0] = 0x8000000080000000;
    v19.i64[1] = 0x8000000080000000;
    v11 = v10 - v16;
    v20 = (v6 + 128);
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
    v22 = v11;
    v23.i64[0] = 0x8000000080000000;
    v23.i64[1] = 0x8000000080000000;
    v24 = v18;
    v25 = v18;
    v26 = v18;
    v27.i64[0] = -1;
    v27.i64[1] = -1;
    v28.i64[0] = -1;
    v28.i64[1] = -1;
    v29.i64[0] = -1;
    v29.i64[1] = -1;
    v30.i64[0] = 0x8000000080000000;
    v30.i64[1] = 0x8000000080000000;
    do
    {
      v31 = (v20 - 30);
      v32 = (v20 + 2);
      v33 = (v20 - 14);
      v34 = (v20 + 18);
      v106 = vld4q_f64(v31);
      v105 = vld4q_f64(v33);
      v108 = vld4q_f64(v32);
      v107 = vld4q_f64(v34);
      v35.i32[0] = *(v20 - 31);
      v35.i32[1] = *(v20 - 23);
      v35.i32[2] = *(v20 - 15);
      v36.i32[0] = *(v20 - 32);
      v35.i32[3] = *(v20 - 7);
      v36.i32[1] = *(v20 - 24);
      v36.i32[2] = *(v20 - 16);
      v36.i32[3] = *(v20 - 8);
      v37 = vsubq_s32(v35, v36);
      v38 = vbslq_s8(vcgtq_s64(v18, v106.val[0]), v106.val[0], v18);
      v39 = vbslq_s8(vcgtq_s64(v17, v106.val[0]), v17, v106.val[0]);
      v40.i64[0] = *&v106.val[1].f64[0] * v37.i32[0];
      v40.i64[1] = *&v106.val[1].f64[1] * v37.i32[1];
      v106.val[1] = vaddq_s64(v40, v106.val[0]);
      LODWORD(v106.val[0].f64[0]) = *v20;
      v40.i32[0] = v20[1];
      v40.i32[1] = v20[9];
      v40.i32[2] = v20[17];
      HIDWORD(v106.val[0].f64[0]) = v20[8];
      v40.i32[3] = v20[25];
      LODWORD(v106.val[0].f64[1]) = v20[16];
      HIDWORD(v106.val[0].f64[1]) = v20[24];
      v106.val[2] = vsubq_s32(v40, v106.val[0]);
      v41 = vbslq_s8(vcgtq_s64(v24, v105.val[0]), v105.val[0], v24);
      v42 = vbslq_s8(vcgtq_s64(v27, v105.val[0]), v27, v105.val[0]);
      v37.i64[0] = *&v105.val[1].f64[0] * v37.i32[2];
      v37.i64[1] = *&v105.val[1].f64[1] * v37.i32[3];
      v43 = vaddq_s64(v37, v105.val[0]);
      v44 = vbslq_s8(vcgtq_s64(v25, v108.val[0]), v108.val[0], v25);
      v45 = vbslq_s8(vcgtq_s64(v28, v108.val[0]), v28, v108.val[0]);
      *&v105.val[0].f64[0] = *&v108.val[1].f64[0] * SLODWORD(v106.val[2].f64[0]);
      *&v105.val[0].f64[1] = *&v108.val[1].f64[1] * SHIDWORD(v106.val[2].f64[0]);
      v108.val[0] = vaddq_s64(v105.val[0], v108.val[0]);
      *&v108.val[1].f64[0] = *&v107.val[1].f64[0] * SLODWORD(v106.val[2].f64[1]);
      *&v108.val[1].f64[1] = *&v107.val[1].f64[1] * SHIDWORD(v106.val[2].f64[1]);
      v46 = vbslq_s8(vcgtq_s64(v26, v107.val[0]), v107.val[0], v26);
      v47 = vbslq_s8(vcgtq_s64(v29, v107.val[0]), v29, v107.val[0]);
      v107.val[0] = vaddq_s64(v108.val[1], v107.val[0]);
      v24 = vbslq_s8(vcgtq_s64(v41, v43), v43, v41);
      v27 = vbslq_s8(vcgtq_s64(v42, v43), v42, v43);
      v26 = vbslq_s8(vcgtq_s64(v46, v107.val[0]), v107.val[0], v46);
      v29 = vbslq_s8(vcgtq_s64(v47, v107.val[0]), v47, v107.val[0]);
      v25 = vbslq_s8(vcgtq_s64(v44, v108.val[0]), v108.val[0], v44);
      v28 = vbslq_s8(vcgtq_s64(v45, v108.val[0]), v45, v108.val[0]);
      v18 = vbslq_s8(vcgtq_s64(v38, v106.val[1]), v106.val[1], v38);
      v17 = vbslq_s8(vcgtq_s64(v39, v106.val[1]), v39, v106.val[1]);
      v19 = vminq_s32(v36, v19);
      v30 = vminq_s32(v106.val[0], v30);
      v21 = vmaxq_s32(v21, v35);
      v23 = vmaxq_s32(v23, v40);
      v20 += 64;
      v22 -= 8;
    }

    while (v22);
    v15 = vmaxvq_s32(vmaxq_s32(v21, v23));
    v48 = vbslq_s8(vcgtq_s64(v25, v18), v18, v25);
    v49 = vbslq_s8(vcgtq_s64(v26, v24), v24, v26);
    v50 = vbslq_s8(vcgtq_s64(v49, v48), v48, v49);
    v49.i64[0] = vextq_s8(v50, v50, 8uLL).u64[0];
    v14 = vbsl_s8(vcgtd_s64(v49.i64[0], v50.i64[0]), *v50.i8, *v49.i8);
    v51 = vbslq_s8(vcgtq_s64(v17, v28), v17, v28);
    v52 = vbslq_s8(vcgtq_s64(v27, v29), v27, v29);
    v53 = vbslq_s8(vcgtq_s64(v51, v52), v51, v52);
    v52.i64[0] = vextq_s8(v53, v53, 8uLL).u64[0];
    v13 = vbsl_s8(vcgtd_s64(v53.i64[0], v52.i64[0]), *v53.i8, *v52.i8);
    v12 = vminvq_s32(vminq_s32(v19, v30));
  }

  else
  {
    v11 = 0;
    v12 = 0x7FFFFFFF;
    v13 = -1;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x80000000;
  }

  v54 = *v9;
  v55 = (v6 + 32 * v11 + 8);
  v56 = v10 - v11;
  do
  {
    v58 = v55[-1].i32[0];
    v57 = v55[-1].i32[1];
    v59 = *v55;
    v60 = v55[1];
    v55 += 4;
    v61 = (*&v59 + *&v60 * (v57 - v58));
    if (v58 < v12)
    {
      v12 = v58;
    }

    if (v15 <= v57)
    {
      v15 = v57;
    }

    if (*&v59 >= *&v14)
    {
      v62 = v14;
    }

    else
    {
      v62 = v59;
    }

    if (*&v13 <= *&v59)
    {
      v13 = v59;
    }

    if (*&v61 >= *&v62)
    {
      v14 = v62;
    }

    else
    {
      v14 = v61;
    }

    if (*&v13 <= *&v61)
    {
      v13 = v61;
    }

    --v56;
  }

  while (v56);
  if ((v15 & 0x80000000) == 0 && v12 < v54 && (*&v13 & 0x8000000000000000) == 0 && *&v14 < v98 << 16)
  {
    v63 = 126 - 2 * __clz(v100);
    v64 = v5 == v6 ? 0 : v63;
    sub_100301D90(v6, v5, v104, v64, 1);
    LODWORD(v102) = 0x7FFFFFFF;
    sub_100301C70(v99, &v102);
    *(&v103 + 1) = 0;
    v65 = *v99;
    v66 = v15 >= v54 ? v54 : v15;
    v67 = *v65;
    v94 = v66;
    if (*v65 < v66)
    {
      v68 = 0;
LABEL_41:
      v69 = 0;
      v70 = *(&v103 + 1);
      v71 = v67;
      for (i = &v102; ; i = v73)
      {
        v73 = v70;
        if (!v70)
        {
          break;
        }

        while (*(v73 + 4) == v71)
        {
          v73 = *(v73 + 24);
          *(i + 3) = v73;
          if (!v73)
          {
            goto LABEL_48;
          }
        }

        if (*v65 <= v71 && *(v73 + 8) >= *(v65 + 8))
        {
          if (v68 >= v100)
          {
            goto LABEL_80;
          }

LABEL_54:
          *(i + 3) = v65;
          *(v65 + 24) = v73;
          v68 = (v68 + 1);
          v70 = v73;
          v73 = v65;
          v65 = *v99 + 32 * v68;
          if (!v69)
          {
            goto LABEL_44;
          }

          goto LABEL_59;
        }

        v70 = *(v73 + 24);
        if (!v69)
        {
          goto LABEL_44;
        }

LABEL_59:
        v101 = v68;
        if ((v71 & 0x80000000) == 0)
        {
          v75 = *(i + 1);
          v76 = *(v73 + 8);
          if (v75 >= v76)
          {
            v77 = *(v73 + 8);
          }

          else
          {
            v77 = *(i + 1);
          }

          if (v75 <= v76)
          {
            v75 = *(v73 + 8);
          }

          v78 = v75 >> 16;
          if ((v78 & 0x80000000) == 0)
          {
            v79 = (v77 + 0xFFFF) >> 16;
            if (v98 > v79)
            {
              v80 = *(v97 + 16) + **(v97 + 72) * v71;
              v81 = v79 & ~(v79 >> 31);
              v82 = v98 - 1;
              if (v98 > v78)
              {
                v82 = v78;
              }

              v83 = v81 * v96;
              v84 = (v80 + v83);
              v85 = v96 + v96 * v82;
              if (v96 == 1)
              {
                memset(v84, *a3, v85 - v83);
              }

              else
              {
                v86 = (v80 + v81 * v96);
                if (v83 < v85)
                {
                  memcpy(v84, a3, v96);
                  v86 = &v84[v96];
                }

                v87 = v80 + v85;
                if (v86 < v87)
                {
                  v88 = v96;
                  do
                  {
                    memcpy(v86, v84, v88);
                    v86 += v88;
                    if (v87 - v86 >= 2 * v88)
                    {
                      v88 *= 2;
                    }

                    else
                    {
                      v88 = v87 - v86;
                    }
                  }

                  while (v87 > v86);
                }
              }
            }
          }
        }

        *(i + 1) += *(i + 2);
        *(v73 + 8) += *(v73 + 16);
        v68 = v101;
LABEL_44:
        v69 ^= 1u;
      }

LABEL_48:
      if (*v65 == v71 && v68 < v100)
      {
        v73 = 0;
        goto LABEL_54;
      }

LABEL_80:
      v89 = 0;
      v90 = 0;
      v91 = *(&v103 + 1);
      while (1)
      {
        if (v91 == v89)
        {
          v93 = &v102;
LABEL_89:
          if (!v90)
          {
LABEL_40:
            v67 = v71 + 1;
            if (v71 + 1 == v94)
            {
              return;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v92 = &v102;
          while (1)
          {
            v93 = *(v91 + 24);
            if (!v93)
            {
              break;
            }

            if (*(v91 + 8) > *(v93 + 1))
            {
              *(v92 + 3) = v93;
              *(v91 + 24) = *(v93 + 3);
              *(v93 + 3) = v91;
              v90 = 1;
              v92 = v93;
              if (v91 == v89)
              {
                goto LABEL_89;
              }
            }

            else
            {
              v93 = v91;
              v91 = *(v91 + 24);
              v92 = v93;
              if (v91 == v89)
              {
                goto LABEL_89;
              }
            }
          }

          v93 = v92;
          if (!v90)
          {
            goto LABEL_40;
          }
        }

        if (v93 != &v102)
        {
          v91 = *(&v103 + 1);
          v90 = 1;
          v89 = v93;
          if (v93 != *(&v103 + 1))
          {
            continue;
          }
        }

        goto LABEL_40;
      }
    }
  }
}

void sub_1002FF518(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, unint64_t a6, int a7, int a8, unsigned int a9)
{
  sub_1002ACE7C(v20, &off_100478AA0);
  if ((*a1 & 7) != 0)
  {
    v15 = 8;
  }

  else
  {
    v15 = 16;
  }

  if (a8 == 16)
  {
    a8 = v15;
  }

  if (a9 > 0x10 || a7 >= 0x8000 || !a2 || !a3 || (a7 | a4) < 0)
  {
    v22[0] = 0;
    v22[1] = 0;
    qmemcpy(sub_1002A80E0(v22, 112), "pts && npts && ncontours >= 0 && 0 <= thickness && thickness <= MAX_THICKNESS && 0 <= shift && shift <= XY_SHIFT", 112);
    sub_1002A8980(-215, v22, "polylines", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/drawing.cpp", 2041);
  }

  sub_10026F720(a6, v22, *a1 & 0xFFF, 0);
  if (a4 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = *(a3 + 4 * v16);
      if (v17)
      {
        if ((v17 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_10000918C();
      }

      sub_1002FD350(a1, 0, 0, a5, v22, a7, a8, a9);
      ++v16;
    }

    while (v16 != a4);
  }

  if (v21)
  {
    sub_1002ACC1C(v20);
  }
}

void sub_1002FF798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FF7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002FF808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002FF81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v4)
  {
    operator delete(v4);
  }

  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002FF83C(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, int a6, unsigned int a7)
{
  sub_1002ACE7C(v75, &off_100478AC0);
  if (sub_100271148(a1) != 0x10000)
  {
    sub_1002703C0(a1, -1, &v67);
    goto LABEL_8;
  }

  v14 = *(a1 + 8);
  v15 = *v14;
  v16 = *(v14 + 16);
  v67 = *v14;
  v68 = v16;
  v69 = *(v14 + 32);
  v17 = *(v14 + 56);
  v70 = *(v14 + 48);
  v71 = v17;
  v72 = &v67 + 8;
  v73 = v74;
  v74[0] = 0;
  v74[1] = 0;
  if (!v17)
  {
    if (SDWORD1(v15) <= 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    DWORD1(v67) = 0;
    sub_100269B58(&v67, v14);
    goto LABEL_8;
  }

  atomic_fetch_add((v17 + 20), 1u);
  if (*(v14 + 4) > 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18 = *(v14 + 72);
  v19 = v73;
  *v73 = *v18;
  v19[1] = v18[1];
LABEL_8:
  if (sub_100271148(a2) == 0x40000 || sub_100271148(a2) == 327680)
  {
    v20 = sub_100273E70(a2, 0xFFFFFFFF);
    if (!v20)
    {
      goto LABEL_59;
    }

    v21 = v20;
    v64 = v66;
    v65 = v20;
    v49 = a5;
    v50 = a6;
    v48 = a4;
    v46 = a7;
    v47 = a3;
    v51 = v20;
    if (v20 >= 0x89)
    {
      operator new[]();
    }

    v22 = 1;
  }

  else
  {
    v46 = a7;
    v47 = a3;
    v48 = a4;
    v49 = a5;
    v50 = a6;
    v22 = 0;
    v21 = 1;
    v64 = v66;
    v65 = 1;
    v51 = 1;
  }

  v61 = v63;
  v62 = v21;
  if (v51 >= 1)
  {
    for (i = 0; i != v51; ++i)
    {
      if (v22)
      {
        v24 = i;
      }

      else
      {
        v24 = -1;
      }

      if (sub_100271148(a2) == 0x10000)
      {
        v25 = v22;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        sub_1002703C0(a2, v24, &v53);
      }

      else
      {
        v26 = *(a2 + 8);
        v27 = *v26;
        v28 = *(v26 + 16);
        v53 = *v26;
        v54 = v28;
        v55 = *(v26 + 32);
        v29 = *(v26 + 56);
        v56 = *(v26 + 48);
        v57 = v29;
        v58 = &v53 + 8;
        v59 = v60;
        v60[0] = 0;
        v60[1] = 0;
        if (v29)
        {
          atomic_fetch_add((v29 + 20), 1u);
          if (*(v26 + 4) <= 2)
          {
            goto LABEL_28;
          }
        }

        else if (SDWORD1(v27) <= 2)
        {
LABEL_28:
          v30 = *(v26 + 72);
          v31 = v59;
          *v59 = *v30;
          v31[1] = v30[1];
          v32 = DWORD1(v53);
          if (SDWORD1(v53) < 3)
          {
            goto LABEL_42;
          }

          goto LABEL_29;
        }

        DWORD1(v53) = 0;
        sub_100269B58(&v53, v26);
      }

      v32 = DWORD1(v53);
      if (SDWORD1(v53) < 3)
      {
LABEL_42:
        if (SHIDWORD(v53) * SDWORD2(v53))
        {
          goto LABEL_35;
        }

        goto LABEL_43;
      }

LABEL_29:
      v33 = (v58 + 4);
      v34 = v32 & 0x7FFFFFFE;
      v35 = 1;
      v36 = 1;
      do
      {
        v35 *= *(v33 - 1);
        v36 *= *v33;
        v33 += 2;
        v34 -= 2;
      }

      while (v34);
      v37 = v36 * v35;
      v38 = v32 - (v32 & 0x7FFFFFFE);
      if (v38)
      {
        v39 = &v58[8 * ((v32 >> 1) & 0x3FFFFFFF)];
        do
        {
          v40 = *v39;
          v39 += 4;
          v37 *= v40;
          --v38;
        }

        while (v38);
      }

      if (v37)
      {
LABEL_35:
        if ((sub_10026F620(&v53, 2, 4, 1) & 0x80000000) != 0)
        {
          v52[0] = 0;
          v52[1] = 0;
          qmemcpy(sub_1002A80E0(v52, 24), "p.checkVector(2, 4) >= 0", 24);
          sub_1002A8980(-215, v52, "polylines", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/drawing.cpp", 2432);
        }

        v66[i] = v54;
        v63[i] = (HIDWORD(v53) * DWORD2(v53) + HIDWORD(v53) * DWORD2(v53) * ((v53 >> 3) & 0x1FF)) / 2;
        v41 = v57;
        if (!v57)
        {
          goto LABEL_46;
        }

LABEL_44:
        if (atomic_fetch_add((v41 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v53);
        }

        goto LABEL_46;
      }

LABEL_43:
      v66[i] = 0;
      v63[i] = 0;
      v41 = v57;
      if (v57)
      {
        goto LABEL_44;
      }

LABEL_46:
      v57 = 0;
      v54 = 0u;
      v55 = 0u;
      if (SDWORD1(v53) >= 1)
      {
        v42 = 0;
        v43 = v58;
        do
        {
          *&v43[4 * v42++] = 0;
        }

        while (v42 < SDWORD1(v53));
      }

      if (v59 != v60)
      {
        j__free(v59);
      }
    }
  }

  sub_1002FF518(&v67, v66, v63, v51, v47, v48, v49, v50, v46);
  if (v61 != v63)
  {
    if (v61)
    {
      operator delete[]();
    }

    v62 = 264;
  }

  if (v64 != v66)
  {
    if (v64)
    {
      operator delete[]();
    }

    v65 = 136;
  }

LABEL_59:
  if (v71 && atomic_fetch_add((v71 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v67);
  }

  v71 = 0;
  v68 = 0u;
  v69 = 0u;
  if (SDWORD1(v67) >= 1)
  {
    v44 = 0;
    v45 = v72;
    do
    {
      *&v45[4 * v44++] = 0;
    }

    while (v44 < SDWORD1(v67));
  }

  if (v73 != v74)
  {
    j__free(v73);
  }

  if (v76)
  {
    sub_1002ACC1C(v75);
  }
}

void sub_1002FFE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (STACK[0x4E0] != a14)
  {
    if (STACK[0x4E0])
    {
      operator delete[]();
    }

    STACK[0x4E8] = 136;
  }

  sub_100006D14(v14 - 208);
  sub_1001D8BF4(v14 - 104);
  _Unwind_Resume(a1);
}

_BYTE *sub_1002FFF10(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, char *a6, int a7)
{
  if (a7 == 1)
  {
    v9 = 4;
  }

  else
  {
    v9 = a7;
  }

  v20[0] = a2;
  v20[1] = a3;
  if (!a7)
  {
    v9 = 8;
  }

  v19[0] = a4;
  v19[1] = a5;
  result = sub_1002FC330(&__dst, a1, v20, v19, v9, 1);
  v11 = v23;
  v12 = *(a1 + 4);
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    if (v23 < 1)
    {
      return result;
    }
  }

  else
  {
    v13 = *(*(a1 + 72) + 8 * v12 - 8);
    if (v23 < 1)
    {
      return result;
    }
  }

  result = __dst;
  if (v13 == 1)
  {
    v15 = *a6;
    do
    {
      *result = v15;
      v16 = v22 >> 31;
      v22 += v24 + (v25 & (v22 >> 31));
      result = __dst + v26 + (v27 & v16);
      __dst = result;
      --v11;
    }

    while (v11);
  }

  else if (v13 == 3)
  {
    do
    {
      *result = *a6;
      result[1] = a6[1];
      result[2] = a6[2];
      v14 = v22 >> 31;
      v22 += v24 + (v25 & (v22 >> 31));
      result = __dst + v26 + (v27 & v14);
      __dst = result;
      --v11;
    }

    while (v11);
  }

  else
  {
    v17 = v13;
    do
    {
      memcpy(result, a6, v17);
      v18 = v22 >> 31;
      v22 += v24 + (v25 & (v22 >> 31));
      result = __dst + v26 + (v27 & v18);
      __dst = result;
      --v11;
    }

    while (v11);
  }

  return result;
}

_BYTE *sub_1003000C4(uint64_t a1, int64x2_t *a2, int64x2_t *a3, _BYTE *a4)
{
  v7 = *(a1 + 4);
  if (v7 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(*(a1 + 72) + 8 * v7 - 8);
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = *(a1 + 16);
  v13 = *(a1 + 64);
  v15 = *v13;
  v14 = v13[1];
  v109 = *(a1 + 80);
  v110[0] = v14 << 16;
  v110[1] = v15 << 16;
  result = sub_1002FC0E8(v110, a2->i64, a3->i64);
  if (!result)
  {
    return result;
  }

  v17 = &a3->i64[1];
  v18 = *a3;
  v19 = *a2;
  v20 = vsubq_s64(*a3, *a2);
  v21 = vcltzq_s64(v20);
  v22 = vabsq_s64(v20);
  if (v22.i64[0] <= v22.i64[1])
  {
    v32 = (v21.i64[1] ^ v20.i64[0]) - v21.i64[1];
    v33 = vdupq_laneq_s64(v21, 1);
    v34 = veorq_s8(vandq_s8(v33, v18), v19);
    *a2 = v34;
    v35 = veorq_s8(*a3, vandq_s8(v34, v33));
    *a3 = v35;
    v28 = veorq_s8(*a2, vandq_s8(v35, v33));
    v29 = v28.i64[1];
    a2->i64[1] = v28.i64[1];
    v31 = (v32 << 16) / (v22.i64[1] | 1);
    v30 = 0x10000;
  }

  else
  {
    v23 = v21.i64[0];
    v24 = v20.i64[1] ^ v21.i64[0];
    v25 = vdupq_lane_s64(v21.i64[0], 0);
    v26 = veorq_s8(vandq_s8(v25, v18), v19);
    *a2 = v26;
    v27 = veorq_s8(*a3, vandq_s8(v26, v25));
    *a3 = v27;
    v28 = veorq_s8(*a2, vandq_s8(v27, v25));
    v29 = v28.i64[0];
    a2->i64[0] = v28.i64[0];
    v30 = ((v24 - v23) << 16) / (v22.i64[0] | 1);
    v31 = 0x10000;
    v17 = a3;
  }

  v36 = (*v17 - v29) >> 16;
  *a2 = vaddq_s64(v28, vdupq_n_s64(0x8000uLL));
  v37 = a3->i64[0] + 0x8000;
  v38 = v37 >> 16;
  v39 = a3->i64[1] + 0x8000;
  if (v8 != 1)
  {
    if (v8 == 3)
    {
      if ((v38 & 0x80000000) == 0 && v14 > v38 && ((v39 >> 16) & 0x80000000) == 0 && v15 > (v39 >> 16))
      {
        v40 = (v12 + ((v39 >> 16) & 0x7FFFFFFF) * v109 + (3 * v38));
        *v40 = v9;
        v40[1] = v10;
        v40[2] = v11;
      }

      if (v22.i64[0] <= v22.i64[1])
      {
        v74 = a2->i64[1] >> 16;
        a2->i64[1] = v74;
        if ((v36 & 0x80000000) == 0)
        {
          v75 = a2->i64[0];
          v76 = v36 + 1;
          do
          {
            v77 = v75 >> 16;
            if (((v75 >> 16) & 0x80000000) == 0 && v14 > v77 && (v74 & 0x80000000) == 0 && v15 > v74)
            {
              v78 = (v12 + (v74 & 0x7FFFFFFF) * v109 + (3 * v77));
              *v78 = v9;
              v78[1] = v10;
              v78[2] = v11;
              v75 = a2->i64[0];
              v74 = a2->i64[1];
            }

            v75 += v31;
            ++v74;
            a2->i64[0] = v75;
            a2->i64[1] = v74;
            --v76;
          }

          while (v76);
        }
      }

      else
      {
        v41 = a2->i64[0] >> 16;
        a2->i64[0] = v41;
        if ((v36 & 0x80000000) == 0)
        {
          v42 = a2->u64[1];
          v43 = v36 + 1;
          do
          {
            if ((v41 & 0x80000000) == 0 && v14 > v41 && ((v42 >> 16) & 0x80000000) == 0 && v15 > (v42 >> 16))
            {
              v44 = (v12 + ((v42 >> 16) & 0x7FFFFFFF) * v109 + (3 * v41));
              *v44 = v9;
              v44[1] = v10;
              v44[2] = v11;
              v41 = a2->i64[0];
              v42 = a2->u64[1];
            }

            ++v41;
            v42 += v30;
            a2->i64[0] = v41;
            a2->i64[1] = v42;
            --v43;
          }

          while (v43);
        }
      }

      return result;
    }

    if ((v38 & 0x80000000) != 0 || v14 <= v38 || ((v39 >> 16) & 0x80000000) != 0 || v15 <= (v39 >> 16) || v8 < 1)
    {
      goto LABEL_48;
    }

    v48 = ((v39 >> 16) & 0x7FFFFFFF) * v109;
    v49 = v8 * v38;
    if (v8 < 8 || (v49 + v12 + v48 - a4) < 0x20)
    {
      v50 = 0;
LABEL_46:
      v51 = v8 - v50;
      v52 = (v12 + v50 + v49 + v48);
      v53 = &a4[v50];
      do
      {
        v54 = *v53++;
        *v52++ = v54;
        --v51;
      }

      while (v51);
LABEL_48:
      if (v22.i64[0] > v22.i64[1])
      {
        v55 = a2->i64[0] >> 16;
        a2->i64[0] = v55;
        if ((v36 & 0x80000000) != 0)
        {
          return result;
        }

        v56 = a2->u64[1];
        result = (v12 + 16);
        while (1)
        {
          if ((v55 & 0x80000000) != 0 || v14 <= v55 || ((v56 >> 16) & 0x80000000) != 0 || v15 <= (v56 >> 16) || v8 < 1)
          {
            goto LABEL_52;
          }

          v58 = ((v56 >> 16) & 0x7FFFFFFF) * v109;
          v59 = ((v8 << 32) * v55) >> 32;
          if (v8 >= 8 && (v12 - a4 + v59 + v58) >= 0x20)
          {
            if (v8 < 0x20)
            {
              v65 = 0;
LABEL_70:
              v70 = &a4[v65];
              v71 = (v12 + v65 + v59 + v58);
              v72 = (v8 & 7) - v8 + v65;
              do
              {
                v73 = *v70++;
                *v71++ = v73;
                v72 += 8;
              }

              while (v72);
              v60 = v8 - (v8 & 7);
              if ((v8 & 7) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_61;
            }

            v66 = &result[v59 + v58];
            v67 = v8 - (v8 & 0x1F);
            v68 = (a4 + 16);
            do
            {
              v69 = *v68;
              *(v66 - 1) = *(v68 - 1);
              *v66 = v69;
              v68 += 2;
              v66 += 2;
              v67 -= 32;
            }

            while (v67);
            if ((v8 & 0x1F) == 0)
            {
              goto LABEL_51;
            }

            v65 = v8 - (v8 & 0x1F);
            v60 = v65;
            if ((v8 & 0x1Fu) >= 8uLL)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v60 = 0;
          }

LABEL_61:
          v61 = v8 - v60;
          v62 = (v12 + v60 + v59 + v58);
          v63 = &a4[v60];
          do
          {
            v64 = *v63++;
            *v62++ = v64;
            --v61;
          }

          while (v61);
LABEL_51:
          v55 = a2->i64[0];
          v56 = a2->u64[1];
LABEL_52:
          ++v55;
          v56 += v30;
          a2->i64[0] = v55;
          a2->i64[1] = v56;
          v57 = v36 <= 0;
          LODWORD(v36) = v36 - 1;
          if (v57)
          {
            return result;
          }
        }
      }

      v82 = a2->i64[1] >> 16;
      a2->i64[1] = v82;
      if ((v36 & 0x80000000) != 0)
      {
        return result;
      }

      v83 = a2->i64[0];
      result = (v12 + 16);
      while (1)
      {
        v84 = v83 >> 16;
        if (((v83 >> 16) & 0x80000000) != 0 || v14 <= v84 || (v82 & 0x80000000) != 0 || v15 <= v82 || v8 < 1)
        {
          goto LABEL_93;
        }

        v85 = (v82 & 0x7FFFFFFF) * v109;
        v86 = ((v8 << 32) * v84) >> 32;
        if (v8 >= 8 && (v12 - a4 + v86 + v85) >= 0x20)
        {
          if (v8 < 0x20)
          {
            v92 = 0;
LABEL_111:
            v97 = &a4[v92];
            v98 = (v12 + v92 + v86 + v85);
            v99 = (v8 & 7) - v8 + v92;
            do
            {
              v100 = *v97++;
              *v98++ = v100;
              v99 += 8;
            }

            while (v99);
            v87 = v8 - (v8 & 7);
            if ((v8 & 7) == 0)
            {
              goto LABEL_92;
            }

            goto LABEL_102;
          }

          v93 = &result[v86 + v85];
          v94 = v8 - (v8 & 0x1F);
          v95 = (a4 + 16);
          do
          {
            v96 = *v95;
            *(v93 - 1) = *(v95 - 1);
            *v93 = v96;
            v95 += 2;
            v93 += 2;
            v94 -= 32;
          }

          while (v94);
          if ((v8 & 0x1F) == 0)
          {
            goto LABEL_92;
          }

          v92 = v8 - (v8 & 0x1F);
          v87 = v92;
          if ((v8 & 0x1Fu) >= 8uLL)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v87 = 0;
        }

LABEL_102:
        v88 = v8 - v87;
        v89 = (v12 + v87 + v86 + v85);
        v90 = &a4[v87];
        do
        {
          v91 = *v90++;
          *v89++ = v91;
          --v88;
        }

        while (v88);
LABEL_92:
        v83 = a2->i64[0];
        v82 = a2->i64[1];
LABEL_93:
        v83 += v31;
        ++v82;
        a2->i64[0] = v83;
        a2->i64[1] = v82;
        v57 = v36 <= 0;
        LODWORD(v36) = v36 - 1;
        if (v57)
        {
          return result;
        }
      }
    }

    if (v8 >= 0x20)
    {
      v50 = v8 - (v8 & 0x1F);
      result = a4 + 16;
      v101 = (v49 + v48 + v12 + 16);
      v102 = v50;
      do
      {
        v103 = *result;
        *(v101 - 1) = *(result - 1);
        *v101 = v103;
        result += 32;
        v101 += 2;
        v102 -= 32;
      }

      while (v102);
      if ((v8 & 0x1F) == 0)
      {
        goto LABEL_48;
      }

      if ((v8 & 0x1Fu) < 8uLL)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v50 = 0;
    }

    result = &a4[v50];
    v104 = v50 + v49;
    v105 = v50 + (v8 & 7);
    v50 = v8 - (v8 & 7);
    v106 = (v12 + v104 + v48);
    v107 = v105 - v8;
    do
    {
      v108 = *result;
      result += 8;
      *v106++ = v108;
      v107 += 8;
    }

    while (v107);
    if ((v8 & 7) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if ((v38 & 0x80000000) == 0 && v14 > v38 && ((v39 >> 16) & 0x80000000) == 0 && v15 > (v39 >> 16))
  {
    *(v12 + ((v39 >> 16) & 0x7FFFFFFF) * v109 + ((v37 >> 16) & 0x7FFFFFFF)) = v9;
  }

  if (v22.i64[0] <= v22.i64[1])
  {
    v79 = a2->i64[1] >> 16;
    a2->i64[1] = v79;
    if ((v36 & 0x80000000) == 0)
    {
      v80 = a2->i64[0];
      v81 = v36 + 1;
      do
      {
        if (((v80 >> 16) & 0x80000000) == 0 && v14 > (v80 >> 16) && (v79 & 0x80000000) == 0 && v15 > v79)
        {
          *(v12 + (v79 & 0x7FFFFFFF) * v109 + ((v80 >> 16) & 0x7FFFFFFF)) = v9;
          v80 = a2->i64[0];
          v79 = a2->i64[1];
        }

        v80 += v31;
        ++v79;
        a2->i64[0] = v80;
        a2->i64[1] = v79;
        --v81;
      }

      while (v81);
    }
  }

  else
  {
    v45 = a2->i64[0] >> 16;
    a2->i64[0] = v45;
    if ((v36 & 0x80000000) == 0)
    {
      v46 = a2->u64[1];
      v47 = v36 + 1;
      do
      {
        if ((v45 & 0x80000000) == 0 && v14 > v45 && ((v46 >> 16) & 0x80000000) == 0 && v15 > (v46 >> 16))
        {
          *(v12 + ((v46 >> 16) & 0x7FFFFFFF) * v109 + (v45 & 0x7FFFFFFF)) = v9;
          v45 = a2->i64[0];
          v46 = a2->u64[1];
        }

        ++v45;
        v46 += v30;
        a2->i64[0] = v45;
        a2->i64[1] = v46;
        --v47;
      }

      while (v47);
    }
  }

  return result;
}

uint64_t sub_100300880(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v6 = (*a1 >> 3) & 0x1FF;
  if (v6 <= 3 && v6 != 1 && (*a1 & 7) == 0)
  {
    v4.i32[0] = *a4;
    v14 = *(a1 + 16);
    v15 = *(a1 + 80);
    v16 = **(a1 + 64);
    v17.i64[0] = v16;
    v17.i64[1] = SHIDWORD(v16);
    v18 = vdupq_n_s64(0xFFFFFFFFFFFE0000);
    *a2 = vaddq_s64(*a2, v18);
    *a3 = vaddq_s64(*a3, v18);
    v19 = a3 + 1;
    v20 = vaddq_s64(vshlq_n_s64(v17, 0x10uLL), vdupq_n_s64(0xFFFFFFFFFFFB0001));
    v294 = vextq_s8(v20, v20, 8uLL);
    result = sub_1002FC0E8(v294.i64, a2, a3);
    if (result)
    {
      v24 = vmovl_u8(v4).u64[0];
      v25 = 2 * v6;
      v26 = a3;
      v28 = *a3;
      v27 = a3[1];
      v30 = *a2;
      v29 = a2[1];
      v31 = *a3 - *a2;
      v32 = v27 - v29;
      if (v31 >= 0)
      {
        v33 = *a3 - *a2;
      }

      else
      {
        v33 = *a2 - *a3;
      }

      if (v32 >= 0)
      {
        v34 = v27 - v29;
      }

      else
      {
        v34 = v29 - v27;
      }

      if (v33 <= v34)
      {
        v49 = v32 >> 63;
        v50 = v49 & v28 ^ v30;
        *a2 = v50;
        v51 = *a3 ^ v50 & v49;
        *a3 = v51;
        v52 = *a2 ^ v51 & v49;
        v53 = v49 & v27 ^ v29;
        a2[1] = v53;
        v54 = a3[1] ^ v53 & v49;
        a3[1] = v54;
        a2[1] ^= v54 & v49;
        v42 = (((v49 ^ v31) - v49) << 16) / (v34 | 1);
        v55 = a3[1] + 0x10000;
        a3[1] = v55;
        v45 = a2[1];
        v44 = (v55 >> 16) - (v45 >> 16);
        v43 = v52 + (-(v42 * v45) >> 16) + 0x8000;
        *a2 = v43;
        v48 = 0x10000;
        v47 = v45;
        v26 = v19;
        v46 = v42;
      }

      else
      {
        v35 = v31 >> 63;
        v36 = v35 & v28 ^ v30;
        *a2 = v36;
        v37 = *a3 ^ v36 & v35;
        *a3 = v37;
        v38 = v35 & v27 ^ v29;
        *a2 ^= v37 & v35;
        a2[1] = v38;
        v39 = *a3;
        v40 = a3[1] ^ v38 & v35;
        a3[1] = v40;
        v41 = a2[1] ^ v40 & v35;
        v42 = (((v32 ^ v35) - v35) << 16) / (v33 | 1);
        *a3 = v39 + 0x10000;
        v43 = *a2;
        v44 = ((v39 + 0x10000) >> 16) - (*a2 >> 16);
        v45 = v41 + (-(v42 * *a2) >> 16) + 0x8000;
        a2[1] = v45;
        v46 = 0x10000;
        v47 = v43;
        v48 = v42;
      }

      v56 = ((v42 >> 63) ^ (v42 >> 11)) & 0x3F;
      v57 = (v47 >> 9) & 0x78;
      v58 = (*v26 >> 9) & 0x78;
      if (v56 > 0x1F)
      {
        v59 = 256;
      }

      else
      {
        v59 = byte_1003E8014[v56];
      }

      v60 = vmovl_u16(v24);
      v61 = v14 + 2 * v15 + v25 + 2;
      v62 = v59 * (124 - v57);
      v63 = v59 * (v58 | 4);
      v299 = v59;
      v64 = v58 - v57;
      v294.i32[0] = 0;
      v294.i32[1] = ((v64 & 0x78 | 4u) * v59) >> 8;
      v294.i32[2] = v62 >> 8;
      v294.i32[3] = v294.i32[1];
      v295 = (v59 * (v64 + 132)) >> 8;
      v296 = (v62 + (v59 << 7)) >> 8;
      result = (v63 + (v59 << 7)) >> 8;
      v297 = v63 >> 8;
      v298 = (v63 + (v59 << 7)) >> 8;
      if (v6)
      {
        if (v6 == 2)
        {
          if (v33 <= v34)
          {
            if ((v44 & 0x80000000) == 0)
            {
              v190 = v45 >> 16;
              v191 = v61 + (v45 >> 16) * v15;
              v192 = vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL);
              v60.i32[3] = v60.i32[0];
              v193 = v191 + 3 * (v43 >> 16);
              v194 = v44 - 1;
              result = 1;
              v195 = v44 <= 1 ? 1 : 2;
              v196 = v294.u32[v195 & (v44 | 2)];
              v197.i32[0] = dword_1003E8034[(v43 >> 11) | 0x20];
              v197.i32[1] = dword_1003E8034[v43 >> 11];
              v198 = vand_s8(vshr_n_u32(vmul_s32(v197, vdup_n_s32(v196)), 8uLL), 0xFF000000FFLL);
              v199 = ((LOWORD(dword_1003E8034[(v43 >> 11) ^ 0x3F]) * v196) >> 8);
              v200 = *(v193 + 5) + (((v60.i32[2] - *(v193 + 5)) * v199 + 127) >> 8);
              v201 = (v60.i16[4] - (*(v193 + 5) + (((v60.i16[4] - *(v193 + 5)) * v199 + 127) >> 8))) * v199 + 127;
              v202 = *(v193 - 3);
              v203 = vmovl_u8(v202);
              v204.i32[0] = v198.i32[0];
              v205 = vdupq_n_s32(v199);
              v205.i32[0] = v198.i32[1];
              v206 = vtrn1q_s32(v205, v205);
              v204.i32[1] = v198.i32[0];
              v204.u64[1] = v198;
              v207 = vadd_s8(v202, vuzp1_s8(vshr_n_u16(vadd_s16(vmovn_s32(vmulq_s32(vsubw_u16(v60, *v203.i8), v204)), 0x7F007F007F007FLL), 8uLL), vshr_n_u16(vadd_s16(vmovn_s32(vmulq_s32(vsubw_high_u16(v192, v203), v206)), 0x7F007F007F007FLL), 8uLL)));
              v208 = vmovl_u8(v207);
              *(v193 - 3) = vadd_s8(v207, vuzp1_s8(vshr_n_u16(vadd_s16(vmovn_s32(vmulq_s32(vsubw_u16(v60, *v208.i8), v204)), 0x7F007F007F007FLL), 8uLL), vshr_n_u16(vadd_s16(vmovn_s32(vmulq_s32(vsubw_high_u16(v192, v208), v206)), 0x7F007F007F007FLL), 8uLL)));
              *(v193 + 5) = v200 + HIBYTE(v201);
              v209 = *a2 + v46;
              *a2 = v209;
              if (v44)
              {
                v210 = v191 + v15 + 3 * (v209 >> 16);
                v211 = v194 <= 1 ? 1 : 2;
                v212 = v294.u32[(v211 & (v194 | 2)) + 3];
                v213.i32[0] = dword_1003E8034[(v209 >> 11) | 0x20];
                v213.i32[1] = dword_1003E8034[v209 >> 11];
                v214 = vand_s8(vshr_n_u32(vmul_s32(v213, vdup_n_s32(v212)), 8uLL), 0xFF000000FFLL);
                v215 = ((LOWORD(dword_1003E8034[(v209 >> 11) ^ 0x3F]) * v212) >> 8);
                v216 = *(v210 + 5) + (((v60.i32[2] - *(v210 + 5)) * v215 + 127) >> 8);
                result = (v60.i32[2] - v216) * v215 + 127;
                v217 = *(v210 - 3);
                v218 = vmovl_u8(v217);
                v219.i32[0] = v214.i32[0];
                v220 = vdupq_n_s32(v215);
                v220.i32[0] = v214.i32[1];
                v221 = vtrn1q_s32(v220, v220);
                v219.i32[1] = v214.i32[0];
                v219.u64[1] = v214;
                v222 = vadd_s8(v217, vuzp1_s8(vshr_n_u16(vadd_s16(vmovn_s32(vmulq_s32(vsubw_u16(v60, *v218.i8), v219)), 0x7F007F007F007FLL), 8uLL), vshr_n_u16(vadd_s16(vmovn_s32(vmulq_s32(vsubw_high_u16(v192, v218), v221)), 0x7F007F007F007FLL), 8uLL)));
                v223 = vmovl_u8(v222);
                *(v210 - 3) = vadd_s8(v222, vuzp1_s8(vshr_n_u16(vadd_s16(vmovn_s32(vmulq_s32(vsubw_u16(v60, *v223.i8), v219)), 0x7F007F007F007FLL), 8uLL), vshr_n_u16(vadd_s16(vmovn_s32(vmulq_s32(vsubw_high_u16(v192, v223), v221)), 0x7F007F007F007FLL), 8uLL)));
                *(v210 + 5) = v216 + BYTE1(result);
                v224 = *a2 + v46;
                *a2 = v224;
                if (v44 != 1)
                {
                  LODWORD(result) = v44 - 2;
                  v225 = v14 + v25 + v15 * (v190 + 4);
                  do
                  {
                    v226 = v225 + 3 * (v224 >> 16);
                    v227 = result | 2;
                    v228 = (result - 1);
                    if (result <= 1)
                    {
                      v229 = 1;
                    }

                    else
                    {
                      v229 = 2;
                    }

                    v230 = *(&v294 + (v229 & v227) + 6);
                    v231.i32[0] = dword_1003E8034[(v224 >> 11) | 0x20];
                    v231.i32[1] = dword_1003E8034[v224 >> 11];
                    v232 = vand_s8(vshr_n_u32(vmul_s32(v231, vdup_n_s32(v230)), 8uLL), 0xFF000000FFLL);
                    v233 = ((LOWORD(dword_1003E8034[(v224 >> 11) ^ 0x3F]) * v230) >> 8);
                    LOBYTE(v230) = *(v226 + 7) + (((v60.i16[4] - *(v226 + 7)) * v233 + 127) >> 8);
                    v234 = *(v226 - 1);
                    v235 = vmovl_u8(v234);
                    v236 = vsubw_u16(v60, *v235.i8);
                    v237.i32[0] = v232.i32[0];
                    v238 = vdupq_n_s32(v233);
                    v238.i32[0] = v232.i32[1];
                    v237.i32[1] = v232.i32[0];
                    v237.u64[1] = v232;
                    v239 = vsubw_high_u16(v192, v235);
                    v240 = vtrn1q_s32(v238, v238);
                    v238.i64[0] = 0x7F0000007FLL;
                    v238.i64[1] = 0x7F0000007FLL;
                    v241 = vmlaq_s32(v238, v236, v237);
                    v236.i64[0] = 0x7F0000007FLL;
                    v236.i64[1] = 0x7F0000007FLL;
                    v302.val[1] = vshrq_n_u32(vmlaq_s32(v236, v239, v240), 8uLL);
                    v302.val[0] = vshrq_n_u32(v241, 8uLL);
                    *v239.i8 = vadd_s8(v234, *&vqtbl2q_s8(v302, xmmword_1003E3780));
                    v242 = vmovl_u8(*v239.i8);
                    v241.i64[0] = 0x7F0000007FLL;
                    v241.i64[1] = 0x7F0000007FLL;
                    v236.i64[0] = 0x7F0000007FLL;
                    v236.i64[1] = 0x7F0000007FLL;
                    v301.val[1] = vshrq_n_u32(vmlaq_s32(v236, vsubw_high_u16(v192, v242), v240), 8uLL);
                    v301.val[0] = vshrq_n_u32(vmlaq_s32(v241, vsubw_u16(v60, *v242.i8), v237), 8uLL);
                    *(v226 - 1) = vadd_s8(*v239.i8, *&vqtbl2q_s8(v301, xmmword_1003E3780));
                    *(v226 + 7) = v230 + (((v60.i16[4] - v230) * v233 + 127) >> 8);
                    v224 = *a2 + v46;
                    *a2 = v224;
                    v225 += v15;
                    result = v228;
                  }

                  while (v228 != -1);
                }
              }
            }
          }

          else if ((v44 & 0x80000000) == 0)
          {
            v65 = 0;
            v66 = v61 + 3 * (v43 >> 16);
            result = dword_1003E8034;
            do
            {
              v67 = v45 >> 16;
              v68 = (v66 + ((v45 >> 16) - 1) * v15);
              if (v65 <= 1)
              {
                v69 = 1;
              }

              else
              {
                v69 = 2;
              }

              v70 = 3 * (v69 & (v65 | 2));
              v71 = v44 | 2;
              v72 = v44 - 1;
              if (v44 <= 1)
              {
                v73 = 1;
              }

              else
              {
                v73 = 2;
              }

              v74 = v294.i32[v70 + (v73 & v71)];
              v75 = v45 >> 11;
              v76 = ((LOWORD(dword_1003E8034[v75 | 0x20]) * v74) >> 8);
              v77 = *v68 + (((v60.i16[0] - *v68) * v76 + 127) >> 8);
              v78 = v68[1] + (((v60.i16[2] - v68[1]) * v76 + 127) >> 8);
              v79 = v68[2] + (((v60.i16[4] - v68[2]) * v76 + 127) >> 8);
              *v68 = v77 + (((v60.i16[0] - v77) * v76 + 127) >> 8);
              v68[1] = v78 + (((v60.i16[2] - v78) * v76 + 127) >> 8);
              v68[2] = v79 + (((v60.i16[4] - v79) * v76 + 127) >> 8);
              v80 = v15 * v67;
              v81 = (v66 + v15 * v67);
              v82 = ((LOWORD(dword_1003E8034[v75]) * v74) >> 8);
              v83 = *v81 + (((v60.i16[0] - *v81) * v82 + 127) >> 8);
              v84 = v81[1] + (((v60.i16[2] - v81[1]) * v82 + 127) >> 8);
              v85 = v81[2] + (((v60.i16[4] - v81[2]) * v82 + 127) >> 8);
              *v81 = v83 + (((v60.i16[0] - v83) * v82 + 127) >> 8);
              v81[1] = v84 + (((v60.i16[2] - v84) * v82 + 127) >> 8);
              v81[2] = v85 + (((v60.i16[4] - v85) * v82 + 127) >> 8);
              v86 = (v66 + v15 + v80);
              v87 = ((LOWORD(dword_1003E8034[v75 ^ 0x3F]) * v74) >> 8);
              LOBYTE(v75) = *v86 + (((v60.i16[0] - *v86) * v87 + 127) >> 8);
              LODWORD(v81) = v86[1] + (((v60.i32[1] - v86[1]) * v87 + 127) >> 8);
              v88 = v86[2] + (((v60.i32[2] - v86[2]) * v87 + 127) >> 8);
              v89 = (v60.i16[2] - (v86[1] + (((v60.i16[2] - v86[1]) * v87 + 127) >> 8))) * v87 + 127;
              v90 = v60.i16[4] - (v86[2] + (((v60.i16[4] - v86[2]) * v87 + 127) >> 8));
              *v86 = v75 + (((v60.i16[0] - v75) * v87 + 127) >> 8);
              v86[1] = v81 + HIBYTE(v89);
              v86[2] = v88 + ((v90 * v87 + 127) >> 8);
              v45 = a2[1] + v48;
              a2[1] = v45;
              v66 += 3;
              ++v65;
              LODWORD(v44) = v72;
            }

            while (v72 != -1);
          }
        }

        else if (v33 <= v34)
        {
          if ((v44 & 0x80000000) == 0)
          {
            v274 = 0;
            v275 = v14 + v25 + v15 * ((v45 >> 16) + 2);
            v276.i64[0] = 0xFF000000FFLL;
            v276.i64[1] = 0xFF000000FFLL;
            do
            {
              if (v274 <= 1)
              {
                v277 = 1;
              }

              else
              {
                v277 = 2;
              }

              v278 = 3 * (v277 & (v274 | 2));
              v279 = v44 | 2;
              v280 = v44 - 1;
              if (v44 <= 1)
              {
                v281 = 1;
              }

              else
              {
                v281 = 2;
              }

              result = v294.u32[v278 + (v281 & v279)];
              v282.i32[0] = dword_1003E8034[(v43 >> 11) | 0x20];
              v282.i32[1] = dword_1003E8034[v43 >> 11];
              v44 = v275 + 4 * (v43 >> 16);
              v283 = vand_s8(vshr_n_u32(vmul_s32(v282, vdup_n_s32(result)), 8uLL), 0xFF000000FFLL);
              v284 = *(v44 - 2);
              v285 = vmovl_u8(v284);
              v286.i64[0] = 0x7F0000007FLL;
              v286.i64[1] = 0x7F0000007FLL;
              v287.i64[0] = 0x7F0000007FLL;
              v287.i64[1] = 0x7F0000007FLL;
              v303.val[1] = vshrq_n_u32(vmlaq_lane_s32(v287, vsubw_high_u16(v60, v285), v283, 1), 8uLL);
              v303.val[0] = vshrq_n_u32(vmlaq_lane_s32(v286, vsubw_u16(v60, *v285.i8), v283, 0), 8uLL);
              v288 = vadd_s8(v284, *&vqtbl2q_s8(v303, xmmword_1003E3780));
              v289 = vmovl_u8(v288);
              v286.i64[0] = 0x7F0000007FLL;
              v286.i64[1] = 0x7F0000007FLL;
              v287.i64[0] = 0x7F0000007FLL;
              v287.i64[1] = 0x7F0000007FLL;
              v303.val[1] = vshrq_n_u32(vmlaq_lane_s32(v287, vsubw_high_u16(v60, v289), v283, 1), 8uLL);
              v303.val[0] = vshrq_n_u32(vmlaq_lane_s32(v286, vsubw_u16(v60, *v289.i8), v283, 0), 8uLL);
              v290 = vadd_s8(v288, *&vqtbl2q_s8(v303, xmmword_1003E3780));
              *(v44 - 2) = v290;
              v290.i32[0] = *(v44 + 6);
              v291 = vsubw_u16(v60, *&vmovl_u8(v290));
              v292 = vdupq_n_s32(((LOWORD(dword_1003E8034[(v43 >> 11) ^ 0x3F]) * result) >> 8));
              v287.i64[0] = 0x7F0000007FLL;
              v287.i64[1] = 0x7F0000007FLL;
              *v291.i8 = vshrn_n_s32(vmlaq_s32(v287, v291, v292), 8uLL);
              v293 = vaddw_u8(v291, v290).u64[0];
              *(v44 + 6) = vuzp1_s8(vsra_n_u16(v293, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(v293), v276)), v292)), 0x7F007F007F007FLL), 8uLL), *v60.i8).u32[0];
              v43 = *a2 + v46;
              *a2 = v43;
              ++v274;
              v275 += v15;
              LODWORD(v44) = v280;
            }

            while (v280 != -1);
          }
        }

        else if ((v44 & 0x80000000) == 0)
        {
          v129 = v61 + 4 * (v43 >> 16);
          v130 = (v129 + ((v45 >> 16) - 1) * v15);
          v131 = v44 - 1;
          v132 = v44 <= 1 ? 1 : 2;
          v133 = v294.i32[v132 & (v44 | 2)];
          v134 = v45 >> 11;
          v23.i32[0] = *v130;
          v135.i64[0] = 0xFF000000FFLL;
          v135.i64[1] = 0xFF000000FFLL;
          v136 = vsubw_u16(v60, *&vmovl_u8(v23));
          v137 = vdupq_n_s32(((LOWORD(dword_1003E8034[v134 | 0x20]) * v133) >> 8));
          v138.i64[0] = 0x7F0000007FLL;
          v138.i64[1] = 0x7F0000007FLL;
          v139.i64[0] = 0x7F0000007FLL;
          v139.i64[1] = 0x7F0000007FLL;
          *v136.i8 = vshrn_n_s32(vmlaq_s32(v139, v136, v137), 8uLL);
          v136.i64[0] = vaddw_u8(v136, v23).u64[0];
          v140.i32[1] = 8323199;
          *v136.i8 = vuzp1_s8(vsra_n_u16(*v136.i8, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(*v136.i8), v135)), v137)), 0x7F007F007F007FLL), 8uLL), *v60.i8);
          *v130 = v136.i32[0];
          v141 = (v130 + v15);
          v136.i32[0] = *(v130 + v15);
          v142 = vdupq_n_s32(((LOWORD(dword_1003E8034[v134]) * v133) >> 8));
          v143 = vsubw_u16(v60, *&vmovl_u8(*v136.i8));
          v144.i64[0] = 0x7F0000007FLL;
          v144.i64[1] = 0x7F0000007FLL;
          *v143.i8 = vshrn_n_s32(vmlaq_s32(v144, v143, v142), 8uLL);
          v136.i64[0] = vaddw_u8(v143, *v136.i8).u64[0];
          *v136.i8 = vuzp1_s8(vsra_n_u16(*v136.i8, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(*v136.i8), v135)), v142)), 0x7F007F007F007FLL), 8uLL), *v60.i8);
          *v141 = v136.i32[0];
          result = dword_1003E8034[v134 ^ 0x3F];
          v136.i32[0] = *(v130 + v15 + v15);
          v145 = vdupq_n_s32(((result * v133) >> 8));
          v146 = vsubw_u16(v60, *&vmovl_u8(*v136.i8));
          v144.i64[0] = 0x7F0000007FLL;
          v144.i64[1] = 0x7F0000007FLL;
          *v146.i8 = vshrn_n_s32(vmlaq_s32(v144, v146, v145), 8uLL);
          v136.i64[0] = vaddw_u8(v146, *v136.i8).u64[0];
          v147 = vuzp1_s8(vsra_n_u16(*v136.i8, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(*v136.i8), v135)), v145)), 0x7F007F007F007FLL), 8uLL), *v60.i8);
          *(v141 + v15) = v147.i32[0];
          v148 = a2[1] + v48;
          a2[1] = v148;
          if (v44)
          {
            result = (v148 >> 16) - 1;
            v149 = (v129 + 4 + result * v15);
            v150 = v131 <= 1 ? 1 : 2;
            v151 = v294.i32[(v150 & (v131 | 2)) + 3];
            v152 = dword_1003E8034[(v148 >> 11) | 0x20];
            v153 = v148 >> 11;
            v147.i32[0] = *v149;
            v154 = vsubw_u16(v60, *&vmovl_u8(v147));
            v155 = vdupq_n_s32(((v152 * v151) >> 8));
            v156.i64[0] = 0x7F0000007FLL;
            v156.i64[1] = 0x7F0000007FLL;
            *v154.i8 = vshrn_n_s32(vmlaq_s32(v156, v154, v155), 8uLL);
            v157 = vaddw_u8(v154, v147).u64[0];
            v158 = vuzp1_s8(vsra_n_u16(v157, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(v157), v135)), v155)), 0x7F007F007F007FLL), 8uLL), *v60.i8);
            *v149 = v158.i32[0];
            v159 = (v149 + v15);
            v158.i32[0] = *(v149 + v15);
            v160 = vdupq_n_s32(((LOWORD(dword_1003E8034[v153]) * v151) >> 8));
            v161 = vsubw_u16(v60, *&vmovl_u8(v158));
            v156.i64[0] = 0x7F0000007FLL;
            v156.i64[1] = 0x7F0000007FLL;
            *v161.i8 = vshrn_n_s32(vmlaq_s32(v156, v161, v160), 8uLL);
            v162 = vaddw_u8(v161, v158).u64[0];
            v163 = vuzp1_s8(vsra_n_u16(v162, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(v162), v135)), v160)), 0x7F007F007F007FLL), 8uLL), *v60.i8);
            *v159 = v163.i32[0];
            v163.i32[0] = *(v149 + v15 + v15);
            v164 = vdupq_n_s32(((dword_1003E8034[v153 ^ 0x3F] * v151) >> 8));
            v165 = vmlaq_s32(v138, vsubw_u16(v60, *&vmovl_u8(v163)), v164);
            *v165.i8 = vshrn_n_s32(v165, 8uLL);
            v165.i64[0] = vaddw_u8(v165, v163).u64[0];
            *(v159 + v15) = vuzp1_s8(vsra_n_u16(*v165.i8, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(*v165.i8), v135)), v164)), 0x7F007F007F007FLL), 8uLL), *v60.i8).u32[0];
            v166 = a2[1] + v48;
            a2[1] = v166;
            if (v44 != 1)
            {
              v167 = 0;
              v168 = v129 + 8;
              v169 = v44 - 2;
              v170.i64[0] = 0xFF000000FFLL;
              v170.i64[1] = 0xFF000000FFLL;
              do
              {
                v171 = v166 >> 16;
                v172 = v168 + ((v166 >> 16) - 1) * v15;
                v173 = v169 | 2;
                v119 = v169-- != 0;
                if (v169 != 0 && v119)
                {
                  v174 = 2;
                }

                else
                {
                  v174 = 1;
                }

                v175 = *(&v294 + (v174 & v173) + 6);
                v140.i32[0] = *(v172 + 4 * v167);
                v176 = vsubw_u16(v60, *&vmovl_u8(v140));
                v177 = vdupq_n_s32(((LOWORD(dword_1003E8034[(v166 >> 11) | 0x20]) * v175) >> 8));
                v178.i64[0] = 0x7F0000007FLL;
                v178.i64[1] = 0x7F0000007FLL;
                *v176.i8 = vshrn_n_s32(vmlaq_s32(v178, v176, v177), 8uLL);
                v179 = vaddw_u8(v176, v140).u64[0];
                v180 = vuzp1_s8(vsra_n_u16(v179, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(v179), v170)), v177)), 0x7F007F007F007FLL), 8uLL), *v60.i8);
                *(v172 + 4 * v167) = v180.i32[0];
                v181 = v166 >> 11;
                v182 = v15 * v171;
                v180.i32[0] = *(v168 + v182 + 4 * v167);
                v183 = vdupq_n_s32(((LOWORD(dword_1003E8034[v181]) * v175) >> 8));
                v184 = vsubw_u16(v60, *&vmovl_u8(v180));
                v178.i64[0] = 0x7F0000007FLL;
                v178.i64[1] = 0x7F0000007FLL;
                *v184.i8 = vshrn_n_s32(vmlaq_s32(v178, v184, v183), 8uLL);
                v185 = vaddw_u8(v184, v180).u64[0];
                v186 = vuzp1_s8(vsra_n_u16(v185, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(v185), v170)), v183)), 0x7F007F007F007FLL), 8uLL), *v60.i8);
                *(v168 + v182 + 4 * v167) = v186.i32[0];
                result = v168 + v15 + v182;
                v186.i32[0] = *(result + 4 * v167);
                v187 = vsubw_u16(v60, *&vmovl_u8(v186));
                v188 = vdupq_n_s32(((LOWORD(dword_1003E8034[v181 ^ 0x3F]) * v175) >> 8));
                v178.i64[0] = 0x7F0000007FLL;
                v178.i64[1] = 0x7F0000007FLL;
                *v187.i8 = vshrn_n_s32(vmlaq_s32(v178, v187, v188), 8uLL);
                v189 = vaddw_u8(v187, v186).u64[0];
                v140 = vuzp1_s8(vsra_n_u16(v189, vadd_s16(vmovn_s32(vmulq_s32(vsubq_s32(v60, vandq_s8(vmovl_u16(v189), v170)), v188)), 0x7F007F007F007FLL), 8uLL), *v60.i8);
                *(result + 4 * v167) = v140.i32[0];
                v166 = a2[1] + v48;
                a2[1] = v166;
                ++v167;
              }

              while (v44 - 1 != v167);
            }
          }
        }
      }

      else if (v33 <= v34)
      {
        if ((v44 & 0x80000000) == 0)
        {
          v243 = v61 + (v45 >> 16) * v15;
          v244 = (v243 + (v43 >> 16));
          v245 = v44 - 1;
          v246 = v44 <= 1 ? 1 : 2;
          v247 = v294.i32[v246 & (v44 | 2)];
          result = 32;
          v248 = ((LOWORD(dword_1003E8034[(v43 >> 11) | 0x20]) * v247) >> 8);
          v249 = *(v244 - 1) + (((v60.i16[0] - *(v244 - 1)) * v248 + 127) >> 8);
          *(v244 - 1) = v249 + (((v60.i16[0] - v249) * v248 + 127) >> 8);
          v250 = ((LOWORD(dword_1003E8034[v43 >> 11]) * v247) >> 8);
          *v244 += (((v60.i16[0] - *v244) * v250 + 127) >> 8) + (((v60.i16[0] - (*v244 + (((v60.i16[0] - *v244) * v250 + 127) >> 8))) * v250 + 127) >> 8);
          LOWORD(v247) = ((LOWORD(dword_1003E8034[(v43 >> 11) ^ 0x3F]) * v247) >> 8);
          v244[1] += (((v60.i16[0] - v244[1]) * v247 + 127) >> 8) + (((v60.i16[0] - (v244[1] + (((v60.i16[0] - v244[1]) * v247 + 127) >> 8))) * v247 + 127) >> 8);
          v251 = *a2 + v46;
          *a2 = v251;
          if (v44)
          {
            v252 = (v243 + v15 + (v251 >> 16));
            v253 = v245 <= 1 ? 1 : 2;
            v254 = v294.i32[(v253 & (v245 | 2)) + 3];
            v255 = ((LOWORD(dword_1003E8034[(v251 >> 11) | 0x20]) * v254) >> 8);
            v256 = ((LOWORD(dword_1003E8034[v251 >> 11]) * v254) >> 8);
            v257 = *v252 + (((v60.i32[0] - *v252) * v256 + 127) >> 8);
            v258 = v60.i32[0] - (*v252 + (((v60.i16[0] - *v252) * v256 + 127) >> 8));
            v259 = ((LOWORD(dword_1003E8034[(v251 >> 11) ^ 0x3F]) * v254) >> 8);
            v260 = v252[1] + (((v60.i32[0] - v252[1]) * v259 + 127) >> 8);
            v261 = v60.i16[0] - (v252[1] + (((v60.i16[0] - v252[1]) * v259 + 127) >> 8));
            *(v252 - 1) += (((v60.i16[0] - *(v252 - 1)) * v255 + 127) >> 8) + (((v60.i16[0] - (*(v252 - 1) + (((v60.i16[0] - *(v252 - 1)) * v255 + 127) >> 8))) * v255 + 127) >> 8);
            result = v257 + ((v258 * v256 + 127) >> 8);
            *v252 = v257 + ((v258 * v256 + 127) >> 8);
            v252[1] = v260 + ((v261 * v259 + 127) >> 8);
            v262 = *a2 + v46;
            *a2 = v262;
            if (v44 != 1)
            {
              v263 = v44 - 2;
              v264 = v25 + v15 * ((v45 >> 16) + 4) + v14 + 3;
              do
              {
                v265 = v263 | 2;
                result = v263 - 1;
                if (v263 <= 1)
                {
                  v266 = 1;
                }

                else
                {
                  v266 = 2;
                }

                v267 = *(&v294 + (v266 & v265) + 6);
                v268 = (v264 + (v262 >> 16));
                v269 = v262 >> 11;
                v270 = ((LOWORD(dword_1003E8034[v269 | 0x20]) * v267) >> 8);
                v271 = *(v268 - 2) + (((v60.i16[0] - *(v268 - 2)) * v270 + 127) >> 8);
                *(v268 - 2) = v271 + (((v60.i16[0] - v271) * v270 + 127) >> 8);
                v272 = ((LOWORD(dword_1003E8034[v269]) * v267) >> 8);
                *(v268 - 1) += (((v60.i16[0] - *(v268 - 1)) * v272 + 127) >> 8) + (((v60.i16[0] - (*(v268 - 1) + (((v60.i16[0] - *(v268 - 1)) * v272 + 127) >> 8))) * v272 + 127) >> 8);
                v273 = ((LOWORD(dword_1003E8034[v269 ^ 0x3F]) * v267) >> 8);
                LOBYTE(v267) = *v268 + (((v60.i16[0] - *v268) * v273 + 127) >> 8);
                *v268 = v267 + (((v60.i16[0] - v267) * v273 + 127) >> 8);
                v262 = *a2 + v46;
                *a2 = v262;
                v264 += v15;
                v263 = result;
              }

              while (result != -1);
            }
          }
        }
      }

      else if ((v44 & 0x80000000) == 0)
      {
        v91 = v61 + (v43 >> 16);
        v92 = (v91 + ((v45 >> 16) - 1) * v15);
        v93 = v44 - 1;
        v94 = v44 <= 1 ? 1 : 2;
        result = &v294;
        v95 = v294.i32[v94 & (v44 | 2)];
        v96 = v45 >> 11;
        v97 = ((LOWORD(dword_1003E8034[v96 | 0x20]) * v95) >> 8);
        v98 = *v92 + (((v60.i16[0] - *v92) * v97 + 127) >> 8);
        *v92 = v98 + (((v60.i16[0] - v98) * v97 + 127) >> 8);
        v99 = &v92[v15];
        v100 = ((LOWORD(dword_1003E8034[v96]) * v95) >> 8);
        *v99 += (((v60.i16[0] - *v99) * v100 + 127) >> 8) + (((v60.i16[0] - (*v99 + (((v60.i16[0] - *v99) * v100 + 127) >> 8))) * v100 + 127) >> 8);
        v101 = ((LOWORD(dword_1003E8034[v96 ^ 0x3F]) * v95) >> 8);
        v99[v15] += (((v60.i16[0] - v99[v15]) * v101 + 127) >> 8) + (((v60.i16[0] - (v99[v15] + (((v60.i16[0] - v99[v15]) * v101 + 127) >> 8))) * v101 + 127) >> 8);
        v102 = a2[1] + v48;
        a2[1] = v102;
        if (v44)
        {
          v103 = v93 <= 1 ? 1 : 2;
          v104 = v294.i32[(v103 & (v93 | 2)) + 3];
          v105 = (v91 + ((v102 >> 16) - 1) * v15);
          result = v102 >> 11;
          v106 = ((LOWORD(dword_1003E8034[(v102 >> 11) | 0x20]) * v104) >> 8);
          v107 = *++v105;
          v108 = v107 + (((v60.i16[0] - v107) * v106 + 127) >> 8);
          *v105 = v108 + (((v60.i16[0] - v108) * v106 + 127) >> 8);
          v109 = &v105[v15];
          v110 = ((LOWORD(dword_1003E8034[result]) * v104) >> 8);
          LOBYTE(v105) = v105[v15] + (((v60.i16[0] - v105[v15]) * v110 + 127) >> 8);
          *v109 = v105 + (((v60.i16[0] - v105) * v110 + 127) >> 8);
          v111 = ((LOWORD(dword_1003E8034[result ^ 0x3F]) * v104) >> 8);
          v109[v15] += (((v60.i16[0] - v109[v15]) * v111 + 127) >> 8) + (((v60.i16[0] - (v109[v15] + (((v60.i16[0] - v109[v15]) * v111 + 127) >> 8))) * v111 + 127) >> 8);
          v112 = a2[1] + v48;
          a2[1] = v112;
          v113 = v44 - 1;
          if (v44 != 1)
          {
            v114 = 0;
            LODWORD(result) = v44 - 2;
            v115 = v91 + 2;
            do
            {
              v116 = v112 >> 16;
              v117 = v115 + ((v112 >> 16) - 1) * v15;
              v118 = result | 2;
              v119 = result != 0;
              result = (result - 1);
              if (result != 0 && v119)
              {
                v120 = 2;
              }

              else
              {
                v120 = 1;
              }

              v121 = *(&v294 + (v120 & v118) + 6);
              v122 = v112 >> 11;
              v123 = ((LOWORD(dword_1003E8034[v122 | 0x20]) * v121) >> 8);
              v124 = *(v117 + v114) + (((v60.i16[0] - *(v117 + v114)) * v123 + 127) >> 8);
              *(v117 + v114) = v124 + (((v60.i16[0] - v124) * v123 + 127) >> 8);
              v125 = v15 * v116;
              v126 = v115 + v15 * v116;
              v127 = ((LOWORD(dword_1003E8034[v122]) * v121) >> 8);
              *(v126 + v114) += (((v60.i16[0] - *(v126 + v114)) * v127 + 127) >> 8) + (((v60.i16[0] - (*(v126 + v114) + (((v60.i16[0] - *(v126 + v114)) * v127 + 127) >> 8))) * v127 + 127) >> 8);
              v128 = v115 + v15 + v125;
              LOWORD(v126) = ((LOWORD(dword_1003E8034[v122 ^ 0x3F]) * v121) >> 8);
              *(v128 + v114) += (((v60.i16[0] - *(v128 + v114)) * v126 + 127) >> 8) + (((v60.i16[0] - (*(v128 + v114) + (((v60.i16[0] - *(v128 + v114)) * v126 + 127) >> 8))) * v126 + 127) >> 8);
              v112 = a2[1] + v48;
              a2[1] = v112;
              ++v114;
            }

            while (v113 != v114);
          }
        }
      }
    }
  }

  else
  {
    v9 = *(a2 + 10);
    v10 = *(a3 + 2);
    v11 = *(a3 + 10);
    v12 = *(a2 + 2);

    return sub_1002FFF10(a1, v12, v9, v10, v11, a4, 8);
  }

  return result;
}

void sub_100301C70(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_10000918C();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_10000927C();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_100301D90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:

          sub_1003023C0(v9, v9 + 8, (a2 - 32));
          return;
        case 4uLL:
          sub_1003023C0(v9, v9 + 8, v9 + 4);
          v30 = (a2 - 32);
          v31 = *(a2 - 32);
          v32 = *(v9 + 16);
          v33 = v31 < v32;
          if (v31 == v32 && (v34 = *(a2 - 24), v35 = *(v9 + 9), v33 = v34 < v35, v34 == v35))
          {
            if (*(a2 - 16) >= *(v9 + 10))
            {
              return;
            }
          }

          else if (!v33)
          {
            return;
          }

          v60 = v9[4];
          v59 = v9[5];
          v61 = *(a2 - 16);
          v9[4] = *v30;
          v9[5] = v61;
          *v30 = v60;
          *(a2 - 16) = v59;
          v62 = *(v9 + 16);
          v63 = *(v9 + 8);
          v64 = v62 < v63;
          if (v62 == v63)
          {
            v65 = *(v9 + 9);
            v66 = *(v9 + 5);
            v64 = v65 < v66;
            if (v65 == v66)
            {
              v64 = *(v9 + 10) < *(v9 + 6);
            }
          }

          if (v64)
          {
            v68 = v9[2];
            v67 = v9[3];
            v69 = v9[5];
            v9[2] = v9[4];
            v9[3] = v69;
            v9[4] = v68;
            v9[5] = v67;
            v70 = *(v9 + 8);
            v71 = v70 < *v9;
            if (v70 == *v9)
            {
              v72 = *(v9 + 5);
              v73 = *(v9 + 1);
              v71 = v72 < v73;
              if (v72 == v73)
              {
                v71 = *(v9 + 6) < *(v9 + 2);
              }
            }

            if (v71)
            {
              v91 = *v9;
              v94 = v9[1];
              v74 = v9[3];
              *v9 = v9[2];
              v9[1] = v74;
              v9[2] = v91;
              v9[3] = v94;
            }
          }

          return;
        case 5uLL:

          sub_100302550(v9, v9 + 2, v9 + 4, v9 + 6, (a2 - 32));
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v25 = (a2 - 32);
        v26 = *(a2 - 32);
        v27 = v26 < *v9;
        if (v26 == *v9)
        {
          v28 = *(a2 - 24);
          v29 = *(v9 + 1);
          v27 = v28 < v29;
          if (v28 == v29)
          {
            if (*(a2 - 16) >= *(v9 + 2))
            {
              return;
            }

LABEL_79:
            v90 = *v9;
            v93 = v9[1];
            v58 = *(a2 - 16);
            *v9 = *v25;
            v9[1] = v58;
            *v25 = v90;
            *(a2 - 16) = v93;
            return;
          }
        }

        if (v27)
        {
          goto LABEL_79;
        }

        return;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v55 = (v12 - 2) >> 1;
        v56 = v55 + 1;
        v57 = &v9[2 * v55];
        do
        {
          sub_100302E2C(v9, a3, (a2 - v9) >> 5, v57);
          v57 -= 8;
          --v56;
        }

        while (v56);
        do
        {
          sub_100302FB0(v9, a2, a3, v12);
          a2 -= 32;
          v19 = v12-- > 2;
        }

        while (v19);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_1003023C0((a1 + 32 * (v12 >> 1)), a1, (a2 - 32));
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1003023C0(a1, (a1 + 32 * (v12 >> 1)), (a2 - 32));
      v15 = 32 * v13;
      v16 = (32 * v13 + a1 - 32);
      sub_1003023C0((a1 + 32), v16, (a2 - 64));
      sub_1003023C0((a1 + 64), (a1 + 32 + v15), (a2 - 96));
      sub_1003023C0(v16, v14, (a1 + 32 + v15));
      v89 = *a1;
      v92 = *(a1 + 16);
      v17 = v14[1];
      *a1 = *v14;
      *(a1 + 16) = v17;
      *v14 = v89;
      v14[1] = v92;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v18 = *(a1 - 32);
    v19 = v18 < *a1;
    if (v18 == *a1)
    {
      v20 = *(a1 - 24);
      v21 = *(a1 + 8);
      v19 = v20 < v21;
      if (v20 == v21)
      {
        v19 = *(a1 - 16) < *(a1 + 16);
      }
    }

    if (!v19)
    {
      v9 = sub_100302780(a1, a2);
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }

LABEL_21:
    v22 = sub_100302920(a1, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }

    v24 = sub_100302AC4(a1, v22);
    v9 = (v22 + 32);
    if (sub_100302AC4(v22 + 32, a2))
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_24:
      sub_100301D90(a1, v22, a3, -v11, a5 & 1);
      v9 = (v22 + 32);
      goto LABEL_25;
    }
  }

  v36 = v9 + 2;
  v38 = v9 == a2 || v36 == a2;
  if (a5)
  {
    if (v38)
    {
      return;
    }

    v39 = 0;
    v40 = v9;
LABEL_54:
    v42 = v40;
    v40 = v36;
    v43 = *(v42 + 8);
    if (v43 == *v42)
    {
      v44 = *(v42 + 5);
      v45 = *(v42 + 1);
      if (v44 == v45)
      {
        if (*(v42 + 6) >= *(v42 + 2))
        {
          goto LABEL_53;
        }
      }

      else if (v44 >= v45)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v43 >= *v42)
      {
        goto LABEL_53;
      }

      v44 = *(v42 + 5);
    }

    v46 = *(v42 + 9);
    v47 = *(v42 + 6);
    v48 = *(v42 + 7);
    v49 = v42[1];
    *v40 = *v42;
    v40[1] = v49;
    v41 = v9;
    if (v42 == v9)
    {
      goto LABEL_52;
    }

    v50 = v39;
    while (1)
    {
      v52 = (v9 + v50);
      v53 = *(v9 + v50 - 32);
      if (v43 == v53)
      {
        v54 = *(v52 - 3);
        if (v44 == v54)
        {
          if (v47 >= *(v9 + v50 - 16))
          {
LABEL_71:
            v41 = v42;
LABEL_52:
            *v41 = v43;
            *(v41 + 1) = v46;
            *(v41 + 1) = v44;
            *(v41 + 2) = v47;
            *(v41 + 3) = v48;
LABEL_53:
            v36 = v40 + 2;
            v39 += 32;
            if (v40 + 2 == a2)
            {
              return;
            }

            goto LABEL_54;
          }
        }

        else if (v44 >= v54)
        {
          v41 = (v9 + v50);
          goto LABEL_52;
        }
      }

      else if (v43 >= v53)
      {
        goto LABEL_71;
      }

      v42 -= 2;
      v51 = *(v9 + v50 - 16);
      *v52 = *(v9 + v50 - 32);
      v52[1] = v51;
      v50 -= 32;
      if (!v50)
      {
        v41 = v9;
        goto LABEL_52;
      }
    }
  }

  if (!v38)
  {
    do
    {
      v75 = a1;
      a1 = v36;
      v76 = *(v75 + 32);
      if (v76 == *v75)
      {
        v77 = *(v75 + 40);
        v78 = *(v75 + 8);
        if (v77 == v78)
        {
          if (*(v75 + 48) < *(v75 + 16))
          {
            goto LABEL_103;
          }
        }

        else if (v77 < v78)
        {
          goto LABEL_103;
        }
      }

      else if (v76 < *v75)
      {
        v77 = *(v75 + 40);
LABEL_103:
        v79 = *(v75 + 36);
        v80 = a1;
        v82 = *(v75 + 48);
        v81 = *(v75 + 56);
        v83 = *(a1 - 16);
        *a1 = *(a1 - 32);
        *(a1 + 16) = v83;
        v84 = *(a1 - 64);
        v85 = v76 < v84;
        if (v76 != v84)
        {
          goto LABEL_106;
        }

LABEL_104:
        v86 = *(v80 - 7);
        v85 = v77 < v86;
        if (v77 == v86)
        {
          v85 = v82 < *(v80 - 6);
        }

LABEL_106:
        while (v85)
        {
          v80 -= 2;
          v87 = *(v80 - 1);
          *v80 = *(v80 - 2);
          v80[1] = v87;
          v88 = *(v80 - 16);
          v85 = v76 < v88;
          if (v76 == v88)
          {
            goto LABEL_104;
          }
        }

        *(v80 - 8) = v76;
        *(v80 - 7) = v79;
        *(v80 - 3) = v77;
        *(v80 - 2) = v82;
        *(v80 - 1) = v81;
      }

      v36 = (a1 + 32);
    }

    while (a1 + 32 != a2);
  }
}

uint64_t sub_1003023C0(__int128 *a1, int *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v5 = *(a2 + 1);
    v6 = *(a1 + 1);
    v4 = v5 < v6;
    if (v5 == v6)
    {
      v4 = *(a2 + 2) < *(a1 + 2);
    }
  }

  if (v4)
  {
    v7 = *a3 < v3;
    if (*a3 == v3 && (v8 = *(a3 + 1), v9 = *(a2 + 1), v7 = v8 < v9, v8 == v9))
    {
      if (*(a3 + 2) >= *(a2 + 2))
      {
LABEL_9:
        v11 = *a1;
        v10 = a1[1];
        v12 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v12;
        *a2 = v11;
        *(a2 + 1) = v10;
        v13 = *a3 < *a2;
        if (*a3 == *a2 && (v14 = *(a3 + 1), v15 = *(a2 + 1), v13 = v14 < v15, v14 == v15))
        {
          if (*(a3 + 2) >= *(a2 + 2))
          {
            return 1;
          }
        }

        else if (!v13)
        {
          return 1;
        }

        v30 = *a2;
        v29 = *(a2 + 1);
        v31 = a3[1];
        *a2 = *a3;
        *(a2 + 1) = v31;
        *a3 = v30;
        a3[1] = v29;
        return 1;
      }
    }

    else if (!v7)
    {
      goto LABEL_9;
    }

    v21 = *a1;
    v20 = a1[1];
    v22 = a3[1];
    *a1 = *a3;
    a1[1] = v22;
    *a3 = v21;
    a3[1] = v20;
    return 1;
  }

  v16 = *a3 < v3;
  if (*a3 == v3 && (v17 = *(a3 + 1), v18 = *(a2 + 1), v16 = v17 < v18, v17 == v18))
  {
    if (*(a3 + 2) >= *(a2 + 2))
    {
      return 0;
    }
  }

  else if (!v16)
  {
    return 0;
  }

  v24 = *a2;
  v23 = *(a2 + 1);
  v25 = a3[1];
  *a2 = *a3;
  *(a2 + 1) = v25;
  *a3 = v24;
  a3[1] = v23;
  v26 = *a2 < *a1;
  if (*a2 == *a1 && (v27 = *(a2 + 1), v28 = *(a1 + 1), v26 = v27 < v28, v27 == v28))
  {
    if (*(a2 + 2) < *(a1 + 2))
    {
      goto LABEL_31;
    }
  }

  else if (v26)
  {
LABEL_31:
    v33 = *a1;
    v32 = a1[1];
    v34 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v34;
    *a2 = v33;
    *(a2 + 1) = v32;
    return 1;
  }

  return 1;
}

__n128 sub_100302550(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  sub_1003023C0(a1, a2, a3);
  v11 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v12 = *(a4 + 1);
    v13 = *(a3 + 1);
    v11 = v12 < v13;
    if (v12 == v13)
    {
      v11 = *(a4 + 2) < *(a3 + 2);
    }
  }

  if (v11)
  {
    v14 = *a3;
    result = a3[1];
    v15 = a4[1];
    *a3 = *a4;
    a3[1] = v15;
    *a4 = v14;
    a4[1] = result;
    v16 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v17 = *(a3 + 1);
      v18 = *(a2 + 1);
      v16 = v17 < v18;
      if (v17 == v18)
      {
        v16 = *(a3 + 2) < *(a2 + 2);
      }
    }

    if (v16)
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      v21 = *a2 < *a1;
      if (*a2 == *a1)
      {
        v22 = *(a2 + 1);
        v23 = *(a1 + 8);
        v21 = v22 < v23;
        if (v22 == v23)
        {
          v21 = *(a2 + 2) < *(a1 + 16);
        }
      }

      if (v21)
      {
        v24 = *a1;
        result = *(a1 + 16);
        v25 = a2[1];
        *a1 = *a2;
        *(a1 + 16) = v25;
        *a2 = v24;
        a2[1] = result;
      }
    }
  }

  v26 = *a5 < *a4;
  if (*a5 == *a4 && (v27 = *(a5 + 1), v28 = *(a4 + 1), v26 = v27 < v28, v27 == v28))
  {
    if (*(a5 + 2) >= *(a4 + 2))
    {
      return result;
    }
  }

  else if (!v26)
  {
    return result;
  }

  v29 = *a4;
  result = a4[1];
  v30 = a5[1];
  *a4 = *a5;
  a4[1] = v30;
  *a5 = v29;
  a5[1] = result;
  v31 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v32 = *(a4 + 1);
    v33 = *(a3 + 1);
    v31 = v32 < v33;
    if (v32 == v33)
    {
      v31 = *(a4 + 2) < *(a3 + 2);
    }
  }

  if (v31)
  {
    v34 = *a3;
    result = a3[1];
    v35 = a4[1];
    *a3 = *a4;
    a3[1] = v35;
    *a4 = v34;
    a4[1] = result;
    v36 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v37 = *(a3 + 1);
      v38 = *(a2 + 1);
      v36 = v37 < v38;
      if (v37 == v38)
      {
        v36 = *(a3 + 2) < *(a2 + 2);
      }
    }

    if (v36)
    {
      v39 = *a2;
      result = a2[1];
      v40 = a3[1];
      *a2 = *a3;
      a2[1] = v40;
      *a3 = v39;
      a3[1] = result;
      v41 = *a2 < *a1;
      if (*a2 == *a1)
      {
        v42 = *(a2 + 1);
        v43 = *(a1 + 8);
        v41 = v42 < v43;
        if (v42 == v43)
        {
          v41 = *(a2 + 2) < *(a1 + 16);
        }
      }

      if (v41)
      {
        v44 = *a1;
        result = *(a1 + 16);
        v45 = a2[1];
        *a1 = *a2;
        *(a1 + 16) = v45;
        *a2 = v44;
        a2[1] = result;
      }
    }
  }

  return result;
}

__int128 *sub_100302780(__int128 *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a2 - 32);
  v6 = *a1;
  v7 = v6 < v5;
  if (v6 == v5)
  {
    v8 = *(a2 - 24);
    v7 = v3 < v8;
    if (v3 == v8)
    {
      v7 = v4 < *(a2 - 16);
    }
  }

  if (v7)
  {
    i = a1 + 2;
    v10 = *(a1 + 8);
    v11 = v6 < v10;
    if (v6 != v10)
    {
      goto LABEL_9;
    }

LABEL_7:
    v12 = *(i + 1);
    v11 = v3 < v12;
    if (v3 == v12)
    {
      v11 = v4 < *(i + 2);
    }

LABEL_9:
    while (!v11)
    {
      v13 = *(i + 8);
      i += 2;
      v11 = v6 < v13;
      if (v6 == v13)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    for (i = a1 + 2; i < a2; i += 2)
    {
      v14 = v6 < *i;
      if (v6 == *i)
      {
        v15 = *(i + 1);
        v14 = v3 < v15;
        if (v3 == v15)
        {
          v14 = v4 < *(i + 2);
        }
      }

      if (v14)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    a2 -= 32;
    v16 = v6 < v5;
    if (v6 != v5)
    {
      goto LABEL_22;
    }

LABEL_20:
    v17 = *(a2 + 8);
    v16 = v3 < v17;
    if (v3 == v17)
    {
      v16 = v4 < *(a2 + 16);
    }

LABEL_22:
    while (v16)
    {
      v18 = *(a2 - 32);
      a2 -= 32;
      v16 = v6 < v18;
      if (v6 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  v19 = *(a1 + 3);
LABEL_27:
  while (i < a2)
  {
    v29 = *i;
    v30 = i[1];
    v20 = *(a2 + 16);
    *i = *a2;
    i[1] = v20;
    *a2 = v29;
    *(a2 + 16) = v30;
    do
    {
      while (1)
      {
        while (1)
        {
          v21 = *(i + 8);
          i += 2;
          v22 = v6 < v21;
          if (v6 == v21)
          {
            break;
          }

          if (v22)
          {
            goto LABEL_38;
          }
        }

        v23 = *(i + 1);
        if (v3 != v23)
        {
          break;
        }

        if (v4 < *(i + 2))
        {
          goto LABEL_38;
        }
      }
    }

    while (v3 >= v23);
    do
    {
      while (1)
      {
LABEL_38:
        while (1)
        {
          v24 = *(a2 - 32);
          a2 -= 32;
          v25 = v6 < v24;
          if (v6 == v24)
          {
            break;
          }

          if (!v25)
          {
            goto LABEL_27;
          }
        }

        v26 = *(a2 + 8);
        if (v3 != v26)
        {
          break;
        }

        if (v4 >= *(a2 + 16))
        {
          goto LABEL_27;
        }
      }
    }

    while (v3 < v26);
  }

  if (i - 2 != a1)
  {
    v27 = *(i - 1);
    *a1 = *(i - 2);
    a1[1] = v27;
  }

  *(i - 4) = v2;
  *(i - 3) = v3;
  *(i - 2) = v4;
  *(i - 1) = v19;
  return i;
}