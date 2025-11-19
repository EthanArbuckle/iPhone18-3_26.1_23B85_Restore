uint64_t sub_10031E5AC(uint64_t a1, uint64_t a2, int a3, double a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = -1;
  *a1 = off_100479900;
  *(a1 + 16) = 1124007936;
  v11 = (a1 + 16);
  *(a1 + 20) = 0u;
  v12 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  v13 = (a1 + 24);
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 128) = 1124007936;
  v14 = (a1 + 128);
  *(a1 + 104) = 0;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 132) = 0u;
  v15 = (a1 + 132);
  *(a1 + 208) = 0;
  *(a1 + 192) = a1 + 136;
  *(a1 + 200) = a1 + 208;
  *(a1 + 216) = 0;
  *(a1 + 120) = 0;
  v16 = a1 + 120;
  if ((*(a2 + 1) & 0x40) == 0)
  {
    LODWORD(v35) = 33619968;
    v36 = a1 + 16;
    v37 = 0;
    sub_10022B754(a2, &v35);
    goto LABEL_17;
  }

  if (v11 != a2)
  {
    v17 = *(a2 + 56);
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      v18 = *(a1 + 72);
      if (v18)
      {
        if (atomic_fetch_add((v18 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v11 = *a2;
      v22 = *(a2 + 4);
      if (v22 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v22;
        *(a1 + 24) = *(a2 + 8);
        v23 = *(a2 + 72);
        v24 = *(a1 + 88);
        *v24 = *v23;
        v24[1] = v23[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
      v20 = *(a1 + 80);
      do
      {
        *(v20 + 4 * v19++) = 0;
        v21 = *v12;
      }

      while (v19 < v21);
      *v11 = *a2;
      if (v21 <= 2)
      {
        v22 = *(a2 + 4);
        if (v22 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v11, a2);
    goto LABEL_16;
  }

LABEL_17:
  *(a1 + 8) = *(a1 + 24) + *(a1 + 28) - 1;
  *(a1 + 12) = a3;
  *(a1 + 224) = rint(a4);
  v25 = (a6 + 8);
  *(a1 + 120) = *a6;
  if (v16 != a6)
  {
    v26 = *(a6 + 64);
    if (v26)
    {
      atomic_fetch_add((v26 + 20), 1u);
    }

    v27 = *(a1 + 184);
    if (v27 && atomic_fetch_add((v27 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v14);
    }

    *(a1 + 184) = 0;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    if (*(a1 + 132) <= 0)
    {
      *v14 = *v25;
      v31 = *(a6 + 12);
      if (v31 <= 2)
      {
LABEL_28:
        *(a1 + 132) = v31;
        *(a1 + 136) = *(a6 + 16);
        v32 = *(a6 + 80);
        v33 = *(a1 + 200);
        *v33 = *v32;
        v33[1] = v32[1];
LABEL_31:
        *(a1 + 144) = *(a6 + 24);
        *(a1 + 160) = *(a6 + 40);
        *(a1 + 176) = *(a6 + 56);
        goto LABEL_32;
      }
    }

    else
    {
      v28 = 0;
      v29 = *(a1 + 192);
      do
      {
        *(v29 + 4 * v28++) = 0;
        v30 = *v15;
      }

      while (v28 < v30);
      *v14 = *v25;
      if (v30 <= 2)
      {
        v31 = *(a6 + 12);
        if (v31 <= 2)
        {
          goto LABEL_28;
        }
      }
    }

    sub_100269B58(v14, a6 + 8);
    goto LABEL_31;
  }

LABEL_32:
  if ((*v11 & 0xFFF) != 4 || *v13 != 1 && *(a1 + 28) != 1)
  {
    v35 = 0;
    v36 = 0;
    qmemcpy(sub_1002A80E0(&v35, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v35, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

void sub_10031E950(_Unwind_Exception *a1)
{
  sub_1003080DC(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10031E98C(uint64_t a1)
{
  *a1 = off_100479900;
  v2 = *(a1 + 184);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 128);
  }

  *(a1 + 184) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a1 + 132) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 192);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 132));
  }

  v5 = *(a1 + 200);
  if (v5 != (a1 + 208))
  {
    j__free(v5);
  }

  v6 = *(a1 + 72);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 80);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 20));
  }

  v9 = *(a1 + 88);
  if (v9 != (a1 + 96))
  {
    j__free(v9);
  }

  return a1;
}

void sub_10031EAB0(uint64_t a1)
{
  sub_10031E98C(a1);

  operator delete();
}

int64_t sub_10031EAE8(int64_t result, uint64_t a2, int16x4_t *a3, int a4, int a5, int a6)
{
  v7 = *(result + 8);
  v8 = *(result + 32);
  v9 = (v7 + (v7 >> 31)) >> 1;
  v10 = (v8 + 4 * (v7 / 2));
  v11 = *(result + 224);
  v12 = (a2 + 8 * (v7 / 2));
  v92 = result;
  v93 = a6;
  if (*(result + 228))
  {
    if (!a5)
    {
      return result;
    }

    v91 = a4;
    v45 = (v7 / 2 + 1);
    v46 = a6 - 4;
    v47 = a6;
    v48 = a2 + 8 * v9;
    v49 = (v48 - 8);
    v97 = v8 + 4 * v9 + 8;
    v98 = (v48 + 16);
    v88 = vdupq_n_s32(v11);
    while (1)
    {
      v95 = a5;
      result = sub_10031F4A8(v92 + 120, v12, a3, a6);
      if (result <= v46)
      {
        v50 = *v12;
        result = result;
        v51 = vld1q_dup_f32(v10);
        do
        {
          v52 = vmlaq_s32(v88, *(v50 + 4 * result), v51);
          if (v7 >= 2)
          {
            v53 = v49;
            v54 = 1;
            do
            {
              v55 = *v53--;
              v56 = &v10[v54];
              v57 = vld1q_dup_f32(v56);
              v52 = vmlaq_s32(v52, vaddq_s32(*(v55 + 4 * result), *(v12[v54++] + 4 * result)), v57);
            }

            while (v45 != v54);
          }

          *(a3 + 2 * result) = vqmovn_s32(v52);
          result += 4;
        }

        while (result <= v46);
      }

      a6 = v93;
      if (result >= v93)
      {
        goto LABEL_49;
      }

      v58 = *v10;
      v59 = *v12;
      v60 = result;
      if (v7 >= 2)
      {
        break;
      }

      v61 = v47 - result;
      if (v61 < 4)
      {
        goto LABEL_84;
      }

      v62 = vdupq_n_s32(LODWORD(v58));
      if (v61 >= 0x10)
      {
        v63 = v61 & 0xFFFFFFFFFFFFFFF0;
        v72 = (v59 + 4 * result + 32);
        v73 = 2 * result;
        v74 = v61 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v76 = v72[-2];
          v75 = v72[-1];
          v78 = *v72;
          v77 = v72[1];
          v72 += 4;
          v79 = (a3 + v73);
          *v79 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v88, v76, v62)), vmlaq_s32(v88, v75, v62));
          v79[1] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v88, v78, v62)), vmlaq_s32(v88, v77, v62));
          v73 += 32;
          v74 -= 16;
        }

        while (v74);
        if (v61 == v63)
        {
          goto LABEL_49;
        }

        if ((v61 & 0xC) == 0)
        {
          v60 = v63 + result;
          do
          {
LABEL_84:
            v85 = v11 + v59->i32[v60] * LODWORD(v58);
            if (v85 <= -32768)
            {
              v85 = -32768;
            }

            if (v85 >= 0x7FFF)
            {
              LOWORD(v85) = 0x7FFF;
            }

            a3->i16[v60++] = v85;
          }

          while (v47 != v60);
          goto LABEL_49;
        }
      }

      else
      {
        v63 = 0;
      }

      v80 = v63 - (v61 & 0xFFFFFFFFFFFFFFFCLL);
      v81 = v63 + result;
      v82 = (v59 + 4 * v81);
      v83 = 2 * v81;
      do
      {
        v84 = *v82++;
        *(a3 + v83) = vqmovn_s32(vmlaq_s32(v88, v84, v62));
        v83 += 8;
        v80 += 4;
      }

      while (v80);
      v60 = (v61 & 0xFFFFFFFFFFFFFFFCLL) + result;
      if (v61 != (v61 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_84;
      }

LABEL_49:
      a3 = (a3 + v91);
      ++v12;
      ++v49;
      ++v98;
      a5 = v95 - 1;
      if (v95 == 1)
      {
        return result;
      }
    }

    while (1)
    {
      v64 = v11 + v59->i32[v60] * LODWORD(v58);
      if (v45 >= 3)
      {
        v66 = 0;
        v67 = v98;
        v68 = v97;
        v69 = (v45 - 1) & 0xFFFFFFFFFFFFFFFELL;
        v70 = v49;
        do
        {
          result = *v68;
          v64 += (*(*v70 + 4 * v60) + *(*(v67 - 1) + 4 * v60)) * *(v68 - 1);
          v66 += (*(*(v70 - 1) + 4 * v60) + *(*v67 + 4 * v60)) * result;
          v70 -= 2;
          v68 += 2;
          v67 += 2;
          v69 -= 2;
        }

        while (v69);
        v64 += v66;
        v65 = (v45 - 1) | 1;
        if (v45 - 1 == ((v45 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_62;
        }
      }

      else
      {
        v65 = 1;
      }

      v71 = -1 * v65;
      do
      {
        v64 += (v12[v71]->i32[v60] + v12[v65]->i32[v60]) * LODWORD(v10[v65]);
        ++v65;
        --v71;
      }

      while (v45 != v65);
LABEL_62:
      if (v64 <= -32768)
      {
        v64 = -32768;
      }

      if (v64 >= 0x7FFF)
      {
        LOWORD(v64) = 0x7FFF;
      }

      a3->i16[v60++] = v64;
      if (v60 == v47)
      {
        goto LABEL_49;
      }
    }
  }

  if (a5)
  {
    if (v11 <= -32768)
    {
      v13 = -32768;
    }

    else
    {
      v13 = *(result + 224);
    }

    if (v13 >= 0x7FFF)
    {
      v14 = 0x7FFF;
    }

    else
    {
      v14 = v13;
    }

    v89 = a4;
    v15 = (v7 / 2 + 1);
    v16 = a6 - 4;
    v17 = a6;
    v18 = a2 + 8 * v9;
    v19 = (v18 - 8);
    v96 = v8 + 4 * v9 + 8;
    v20 = (v18 + 16);
    v90 = v14;
    v86 = vdupq_n_s32(v11);
    v87 = vdupq_n_s16(v14);
    while (1)
    {
      v94 = a5;
      result = sub_10031F4A8(v92 + 120, v12, a3, a6);
      if (result <= v16)
      {
        result = result;
        do
        {
          v21 = *v87.i8;
          if (v7 >= 2)
          {
            v22 = v19;
            v23 = 1;
            v24 = v86;
            do
            {
              v25 = *v22--;
              v26 = &v10[v23];
              v27 = vld1q_dup_f32(v26);
              v24 = vmlaq_s32(v24, vsubq_s32(*(v12[v23++] + 4 * result), *(v25 + 4 * result)), v27);
            }

            while (v15 != v23);
            v21 = vqmovn_s32(v24);
          }

          *(a3 + 2 * result) = v21;
          result += 4;
        }

        while (result <= v16);
      }

      a6 = v93;
      if (result >= v93)
      {
        goto LABEL_10;
      }

      v28 = result;
      if (v7 >= 2)
      {
        break;
      }

      v29 = v17 - result;
      if (v29 >= 4)
      {
        if (v29 < 0x10)
        {
          v30 = 0;
LABEL_40:
          v43 = v30 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
          v44 = 2 * (v30 + result);
          do
          {
            *(a3 + v44) = *v87.i8;
            v44 += 8;
            v43 += 4;
          }

          while (v43);
          v28 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + result;
          if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_10;
          }

          goto LABEL_45;
        }

        v30 = v29 & 0xFFFFFFFFFFFFFFF0;
        v40 = 2 * result;
        v41 = v29 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v42 = (a3 + v40);
          *v42 = v87;
          v42[1] = v87;
          v40 += 32;
          v41 -= 16;
        }

        while (v41);
        if (v29 == v30)
        {
          goto LABEL_10;
        }

        if ((v29 & 0xC) != 0)
        {
          goto LABEL_40;
        }

        v28 = v30 + result;
      }

      do
      {
LABEL_45:
        a3->i16[v28++] = v90;
      }

      while (v17 != v28);
LABEL_10:
      a3 = (a3 + v89);
      ++v12;
      ++v19;
      ++v20;
      a5 = v94 - 1;
      if (v94 == 1)
      {
        return result;
      }
    }

    while (1)
    {
      if (v15 >= 3)
      {
        v33 = 0;
        v34 = v20;
        v35 = v96;
        v36 = (v15 - 1) & 0xFFFFFFFFFFFFFFFELL;
        v37 = v19;
        v38 = v11;
        do
        {
          result = (*(*v34 + 4 * v28) - *(*(v37 - 1) + 4 * v28));
          v38 += (*(*(v34 - 1) + 4 * v28) - *(*v37 + 4 * v28)) * *(v35 - 1);
          v33 += result * *v35;
          v37 -= 2;
          v35 += 2;
          v34 += 2;
          v36 -= 2;
        }

        while (v36);
        v31 = v33 + v38;
        v32 = (v15 - 1) | 1;
        if (v15 - 1 == ((v15 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v32 = 1;
        v31 = v11;
      }

      v39 = -1 * v32;
      do
      {
        v31 += (v12[v32]->i32[v28] - v12[v39]->i32[v28]) * LODWORD(v10[v32]);
        ++v32;
        --v39;
      }

      while (v15 != v32);
LABEL_23:
      if (v31 <= -32768)
      {
        v31 = -32768;
      }

      if (v31 >= 0x7FFF)
      {
        LOWORD(v31) = 0x7FFF;
      }

      a3->i16[v28++] = v31;
      if (v28 == v17)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_10031F144(uint64_t a1)
{
  sub_10031E98C(a1);

  operator delete();
}

int64_t sub_10031F17C(int64_t result, int32x4_t **a2, int16x4_t *a3, int a4, int a5, uint64_t a6)
{
  v49 = result;
  if (a5)
  {
    v7 = a2;
    v8 = *(result + 32);
    v9 = *(result + 224);
    v10 = *(result + 8);
    v11 = a6 - 4;
    v12 = a6;
    v13 = a2 + 2;
    v48 = a4;
    v47 = vdupq_n_s32(v9);
    while (1)
    {
      v50 = a5;
      v14 = a6;
      result = sub_10031F4A8(v49 + 120, v7, a3, a6);
      if (result <= v11)
      {
        v15 = *v7;
        result = result;
        v16 = vld1q_dup_f32(v8);
        do
        {
          v17 = vmlaq_s32(v47, *(v15 + 4 * result), v16);
          if (v10 >= 2)
          {
            for (i = 1; i != v10; ++i)
            {
              v19 = &v8[i];
              v20 = vld1q_dup_f32(v19);
              v17 = vmlaq_s32(v17, *(v7[i] + 4 * result), v20);
            }
          }

          *(a3 + 2 * result) = vqmovn_s32(v17);
          result += 4;
        }

        while (result <= v11);
      }

      a6 = v14;
      if (result >= v14)
      {
        goto LABEL_3;
      }

      v21 = *v8;
      v22 = *v7;
      v23 = result;
      if (v10 >= 2)
      {
        break;
      }

      v24 = v12 - result;
      if (v24 < 4)
      {
        goto LABEL_37;
      }

      v25 = vdupq_n_s32(LODWORD(v21));
      if (v24 >= 0x10)
      {
        v26 = v24 & 0xFFFFFFFFFFFFFFF0;
        v33 = (v22 + 4 * result + 32);
        v34 = 2 * result;
        v35 = v24 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v37 = v33[-2];
          v36 = v33[-1];
          v39 = *v33;
          v38 = v33[1];
          v33 += 4;
          v40 = (a3 + v34);
          *v40 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v47, v37, v25)), vmlaq_s32(v47, v36, v25));
          v40[1] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v47, v39, v25)), vmlaq_s32(v47, v38, v25));
          v34 += 32;
          v35 -= 16;
        }

        while (v35);
        if (v24 == v26)
        {
          goto LABEL_3;
        }

        if ((v24 & 0xC) == 0)
        {
          v23 = v26 + result;
          do
          {
LABEL_37:
            v46 = v9 + v22->i32[v23] * LODWORD(v21);
            if (v46 <= -32768)
            {
              v46 = -32768;
            }

            if (v46 >= 0x7FFF)
            {
              LOWORD(v46) = 0x7FFF;
            }

            a3->i16[v23++] = v46;
          }

          while (v12 != v23);
          goto LABEL_3;
        }
      }

      else
      {
        v26 = 0;
      }

      v41 = v26 - (v24 & 0xFFFFFFFFFFFFFFFCLL);
      v42 = v26 + result;
      v43 = (v22 + 4 * v42);
      v44 = 2 * v42;
      do
      {
        v45 = *v43++;
        *(a3 + v44) = vqmovn_s32(vmlaq_s32(v47, v45, v25));
        v44 += 8;
        v41 += 4;
      }

      while (v41);
      v23 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + result;
      if (v24 != (v24 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_37;
      }

LABEL_3:
      a3 = (a3 + v48);
      ++v7;
      ++v13;
      a5 = v50 - 1;
      if (v50 == 1)
      {
        return result;
      }
    }

    while (1)
    {
      v27 = v9 + v22->i32[v23] * LODWORD(v21);
      if (v10 == 2)
      {
        v28 = 1;
      }

      else
      {
        v29 = 0;
        v30 = v13;
        v31 = v8 + 2;
        v32 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          result = *(*v30 + 4 * v23);
          v27 += *(*(v30 - 1) + 4 * v23) * *(v31 - 1);
          v29 += result * *v31;
          v31 += 2;
          v30 += 2;
          v32 -= 2;
        }

        while (v32);
        v27 += v29;
        v28 = (v10 - 1) | 1;
        if (v10 - 1 == ((v10 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_16;
        }
      }

      do
      {
        v27 += v7[v28]->i32[v23] * LODWORD(v8[v28]);
        ++v28;
      }

      while (v10 != v28);
LABEL_16:
      if (v27 <= -32768)
      {
        v27 = -32768;
      }

      if (v27 >= 0x7FFF)
      {
        LOWORD(v27) = 0x7FFF;
      }

      a3->i16[v23++] = v27;
      if (v23 == v12)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

unint64_t sub_10031F4A8(uint64_t a1, int32x4_t **a2, int16x4_t *a3, int a4)
{
  result = sub_1002A8904(100);
  if (result)
  {
    v10 = *(a1 + 24) + 4 * ((*(a1 + 16) + *(a1 + 20) - 1) / 2);
    v11 = *(a2 - 1);
    v12 = a2[1];
    v13 = (a1 + 4);
    v14 = vld1q_dup_f32(v13);
    v15 = vcvtq_s32_f32(v14);
    if (*a1)
    {
      v17 = *a2;
      v9.i32[0] = *v10;
      if (*v10 == 2.0 && *(v10 + 4) == 1.0)
      {
        if (a4 >= 4)
        {
          result = 0;
          do
          {
            v25 = *v11++;
            v26 = v25;
            v27 = *v17++;
            v28 = v27;
            v29 = *v12++;
            *a3++ = vqmovn_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v15), v29), vqshlq_n_s32(v28, 1uLL)));
            result += 4;
          }

          while (result <= (a4 - 4));
        }

        else
        {
          return 0;
        }
      }

      else if (*v9.i32 == -2.0 && *(v10 + 4) == 1.0)
      {
        if (a4 >= 4)
        {
          result = 0;
          do
          {
            v30 = *v11++;
            v31 = v30;
            v32 = *v17++;
            v33 = v32;
            v34 = *v12++;
            *a3++ = vqmovn_s32(vsubq_s32(vaddq_s32(vaddq_s32(v31, v15), v34), vqshlq_n_s32(v33, 1uLL)));
            result += 4;
          }

          while (result <= (a4 - 4));
        }

        else
        {
          return 0;
        }
      }

      else if (*v9.i32 == 10.0 && *(v10 + 4) == 3.0)
      {
        if (a4 >= 4)
        {
          result = 0;
          v43.i64[0] = 0xA0000000ALL;
          v43.i64[1] = 0xA0000000ALL;
          v44.i64[0] = 0x300000003;
          v44.i64[1] = 0x300000003;
          do
          {
            v45 = *v11++;
            v46 = v45;
            v47 = *v17++;
            v48 = v47;
            v49 = *v12++;
            *a3++ = vqmovn_s32(vmlaq_s32(vmlaq_s32(v15, v48, v43), vaddq_s32(v49, v46), v44));
            result += 4;
          }

          while (result <= (a4 - 4));
        }

        else
        {
          return 0;
        }
      }

      else if (a4 >= 4)
      {
        result = 0;
        v35 = (v10 + 4);
        v36 = vdupq_lane_s32(v9, 0);
        v37 = vld1q_dup_f32(v35);
        do
        {
          v38 = *v11++;
          v39 = v38;
          v40 = *v17++;
          v41 = v40;
          v42 = *v12++;
          *a3++ = vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(vmlaq_f32(v14, v36, vcvtq_f32_s32(v41)), v37, vcvtq_f32_s32(vaddq_s32(v42, v39)))));
          result += 4;
        }

        while (result <= (a4 - 4));
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v9.i32[0] = *(v10 + 4);
      if (fabsf(*v9.i32) == 1.0 && *v9.i32 == -*(v10 - 4))
      {
        if (*v9.i32 >= 0.0)
        {
          v16 = *(a2 - 1);
        }

        else
        {
          v16 = a2[1];
        }

        if (*v9.i32 >= 0.0)
        {
          v11 = a2[1];
        }

        if (a4 >= 4)
        {
          result = 0;
          do
          {
            v22 = *v16++;
            v23 = v22;
            v24 = *v11++;
            *a3++ = vqmovn_s32(vqaddq_s32(vsubq_s32(v24, v23), v15));
            result += 4;
          }

          while (result <= (a4 - 4));
        }

        else
        {
          return 0;
        }
      }

      else if (a4 >= 4)
      {
        result = 0;
        v18 = vdupq_lane_s32(v9, 0);
        do
        {
          v19 = *v11++;
          v20 = v19;
          v21 = *v12++;
          *a3++ = vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(v14, v18, vcvtq_f32_s32(vsubq_s32(v21, v20)))));
          result += 4;
        }

        while (result <= (a4 - 4));
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10031F7D0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_10031F854(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v6 = sub_10031F920(a1, a2, a3, a4, a5);
  *v6 = off_100479970;
  if (*(v6 + 8) != 3)
  {
    v8[0] = 0;
    v8[1] = 0;
    *sub_1002A80E0(v8, 16) = *"this->ksize == 3";
    sub_1002A8980(-215, v8, "SymmColumnSmallFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3420);
  }

  return a1;
}

void sub_10031F8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10031FA00(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031F920(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_10032085C(a1, a2, a3, a5);
  *v7 = off_1004799E8;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_10031F9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100320AE0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031FA00(uint64_t a1)
{
  *a1 = off_100479A18;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_10031FAB0(uint64_t a1)
{
  *a1 = off_100479A18;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_10031FB60(uint64_t a1)
{
  *a1 = off_100479A18;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_10031FC30(uint64_t result, uint64_t a2, unint64_t a3, int a4, int a5, int a6, double a7, double a8, double a9)
{
  v9 = *(result + 32) + 4 * (*(result + 8) / 2);
  LODWORD(a7) = *v9;
  if (*v9 == 2.0)
  {
    v10 = *(v9 + 4) == 1.0;
    if (*&a7 == -2.0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    if (*&a7 == -2.0)
    {
LABEL_3:
      v11 = *(v9 + 4) == 1.0;
      LODWORD(a8) = *(v9 + 4);
      if (*&a7 == 0.0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
  LODWORD(a8) = *(v9 + 4);
  if (*&a7 == 0.0)
  {
LABEL_4:
    if (*&a8 == 1.0)
    {
      v12 = 1;
      LODWORD(a8) = 1.0;
      if (!a5)
      {
        return result;
      }
    }

    else
    {
      v12 = *&a8 == -1.0;
      if (!a5)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

LABEL_9:
  v12 = 0;
  if (a5)
  {
LABEL_12:
    v13 = 0;
    v14 = *(result + 120);
    LODWORD(a9) = *(result + 116);
    v15 = (a2 + 8 * ((*(result + 8) + (*(result + 8) >> 31)) >> 1));
    v16 = a6 - 4;
    v17 = *v15;
    if (v16 <= 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = a6 - 4;
    }

    result = ((4 * v18) & 0x1FFFFFFF0) + 16;
    v19 = result + a3 + a4 * (a5 - 1);
    v177 = (v18 >> 2) + 1;
    v20 = v177 & 0x3FFFFFFC;
    v21 = vdupq_lane_s32(*&a7, 0).u64[0];
    v22 = vdupq_lane_s32(*&a8, 0);
    v23 = vdupq_lane_s32(*&a9, 0);
    v24 = a3 + 8;
    v25 = a3 + 16;
    v26.i64[0] = 0x4000000040000000;
    v26.i64[1] = 0x4000000040000000;
    v27.i64[0] = 0xC0000000C0000000;
    v27.i64[1] = 0xC0000000C0000000;
    v28 = a3;
    while (1)
    {
      v29 = v17;
      v30 = a3 + v13 * a4;
      v31 = v15[1];
      ++v15;
      v17 = v31;
      v32 = *(v15 - 2);
      if (v14)
      {
        if (!v10)
        {
          if (!v11)
          {
            if (a6 < 4)
            {
              v68 = 0;
              if (a6 <= 0)
              {
                goto LABEL_16;
              }

              goto LABEL_156;
            }

            if (v16 <= 0xB)
            {
              v129 = 0;
              goto LABEL_153;
            }

            v129 = 0;
            v160 = v32 + result > a3 && v32 < v19;
            v162 = v29 + result > a3 && v29 < v19;
            if (v17 < v19 && v17 + result > a3)
            {
              goto LABEL_153;
            }

            if (v160)
            {
              goto LABEL_153;
            }

            if (v162)
            {
              goto LABEL_153;
            }

            if (a4 < 0)
            {
              goto LABEL_153;
            }

            v164 = 0;
            v165 = v177 & 0x3FFFFFFC;
            do
            {
              v166 = (v28 + v164);
              v167 = vaddq_f32(v23, vmlaq_f32(vmulq_n_f32(*(v29 + v164 + 48), *&a7), v22, vaddq_f32(*(v32 + v164 + 48), *(v17 + v164 + 48))));
              v168 = vaddq_f32(v23, vmlaq_f32(vmulq_n_f32(*(v29 + v164 + 16), *&a7), v22, vaddq_f32(*(v32 + v164 + 16), *(v17 + v164 + 16))));
              v169 = vaddq_f32(v23, vmlaq_f32(vmulq_n_f32(*(v29 + v164 + 32), *&a7), v22, vaddq_f32(*(v32 + v164 + 32), *(v17 + v164 + 32))));
              *v166 = vaddq_f32(v23, vmlaq_f32(vmulq_n_f32(*(v29 + v164), *&a7), v22, vaddq_f32(*(v32 + v164), *(v17 + v164))));
              v166[1] = v168;
              v166[2] = v169;
              v166[3] = v167;
              v164 += 64;
              v165 -= 4;
            }

            while (v165);
            v129 = 4 * (v177 & 0x3FFFFFFC);
            if (v177 != v20)
            {
LABEL_153:
              v130 = (v29 + 4 * v129 + 8);
              v131 = (v17 + 4 * v129 + 8);
              v132 = (v32 + 4 * v129 + 8);
              v133 = (v24 + 4 * v129);
              do
              {
                v133[-1] = vadd_f32(*v23.f32, vmla_f32(vmul_f32(v21, v130[-1]), *v22.f32, vadd_f32(v132[-1], v131[-1])));
                v134 = *v132;
                v132 += 2;
                v135 = v134;
                v136 = *v131;
                v131 += 2;
                v137 = vadd_f32(v135, v136);
                v138 = *v130;
                v130 += 2;
                v129 += 4;
                *v133 = vadd_f32(*v23.f32, vmla_f32(vmul_f32(v21, v138), *v22.f32, v137));
                v133 += 2;
              }

              while (v129 <= v16);
            }

            v68 = v129;
            if (v129 >= a6)
            {
              goto LABEL_16;
            }

LABEL_156:
            v139 = a6 - v68;
            if (v139 <= 7 || v30 - v32 < 0x20 || v30 - v17 < 0x20 || v30 - v29 < 0x20)
            {
              v140 = v68;
            }

            else
            {
              v140 = (v139 & 0xFFFFFFFFFFFFFFF8) + v68;
              v170 = 4 * v68;
              v171 = (v25 + v170);
              v172 = (v32 + v170 + 16);
              v173 = (v29 + v170 + 16);
              v174 = (v17 + v170 + 16);
              v175 = v139 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v176 = vaddq_f32(v23, vmlaq_f32(vmulq_n_f32(*v173, *&a7), v22, vaddq_f32(*v172, *v174)));
                v171[-1] = vaddq_f32(v23, vmlaq_f32(vmulq_n_f32(v173[-1], *&a7), v22, vaddq_f32(v172[-1], v174[-1])));
                *v171 = v176;
                v171 += 2;
                v172 += 2;
                v173 += 2;
                v174 += 2;
                v175 -= 8;
              }

              while (v175);
              if (v139 == (v139 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_16;
              }
            }

            do
            {
              *(v28 + 4 * v140) = *&a9 + ((*&a7 * *(v29 + 4 * v140)) + ((*(v32 + 4 * v140) + *(v17 + 4 * v140)) * *&a8));
              ++v140;
            }

            while (a6 != v140);
            goto LABEL_16;
          }

          if (a6 < 4)
          {
            v37 = 0;
            if (a6 <= 0)
            {
              goto LABEL_16;
            }

            goto LABEL_73;
          }

          if (v16 <= 0xB)
          {
            v69 = 0;
            goto LABEL_70;
          }

          v69 = 0;
          v142 = v32 + result > a3 && v32 < v19;
          v144 = v17 + result > a3 && v17 < v19;
          if (v29 < v19 && v29 + result > a3)
          {
            goto LABEL_70;
          }

          if (v142)
          {
            goto LABEL_70;
          }

          if (v144)
          {
            goto LABEL_70;
          }

          if (a4 < 0)
          {
            goto LABEL_70;
          }

          v146 = 0;
          v147 = v177 & 0x3FFFFFFC;
          do
          {
            v148 = (v28 + v146);
            v149 = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*(v32 + v146 + 16), v27, *(v29 + v146 + 16)), *(v17 + v146 + 16)));
            v150 = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*(v32 + v146), v27, *(v29 + v146)), *(v17 + v146)));
            v151 = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*(v32 + v146 + 48), v27, *(v29 + v146 + 48)), *(v17 + v146 + 48)));
            v148[2] = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*(v32 + v146 + 32), v27, *(v29 + v146 + 32)), *(v17 + v146 + 32)));
            v148[3] = v151;
            *v148 = v150;
            v148[1] = v149;
            v146 += 64;
            v147 -= 4;
          }

          while (v147);
          v69 = 4 * (v177 & 0x3FFFFFFC);
          if (v177 != v20)
          {
LABEL_70:
            v70 = (v17 + 4 * v69 + 8);
            v71 = (v29 + 4 * v69 + 8);
            v72 = (v32 + 4 * v69 + 8);
            v73 = (v24 + 4 * v69);
            do
            {
              v73[-1] = vadd_f32(*v23.f32, vadd_f32(vmls_f32(v72[-1], 0x4000000040000000, v71[-1]), v70[-1]));
              v74 = *v72;
              v72 += 2;
              v75 = v74;
              v76 = *v71;
              v71 += 2;
              v77 = vmls_f32(v75, 0x4000000040000000, v76);
              v78 = *v70;
              v70 += 2;
              v69 += 4;
              *v73 = vadd_f32(*v23.f32, vadd_f32(v77, v78));
              v73 += 2;
            }

            while (v69 <= v16);
          }

          v37 = v69;
          if (v69 >= a6)
          {
            goto LABEL_16;
          }

LABEL_73:
          v79 = a6 - v37;
          if (v79 <= 7 || v30 - v32 < 0x20 || v30 - v29 < 0x20 || v30 - v17 < 0x20)
          {
            v80 = v37;
          }

          else
          {
            v80 = (v79 & 0xFFFFFFFFFFFFFFF8) + v37;
            v152 = 4 * v37;
            v153 = (v25 + v152);
            v154 = (v32 + v152 + 16);
            v155 = (v17 + v152 + 16);
            v156 = (v29 + v152 + 16);
            v157 = v79 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v158 = vaddq_f32(v23, vaddq_f32(vmlsq_f32(*v154, v26, *v156), *v155));
              v153[-1] = vaddq_f32(v23, vaddq_f32(vmlsq_f32(v154[-1], v26, v156[-1]), v155[-1]));
              *v153 = v158;
              v153 += 2;
              v154 += 2;
              v155 += 2;
              v156 += 2;
              v157 -= 8;
            }

            while (v157);
            if (v79 == (v79 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_16;
            }
          }

          do
          {
            *(v28 + 4 * v80) = *&a9 + ((*(v32 + 4 * v80) + (*(v29 + 4 * v80) * -2.0)) + *(v17 + 4 * v80));
            ++v80;
          }

          while (a6 != v80);
          goto LABEL_16;
        }

        if (a6 < 4)
        {
          v35 = 0;
          if (a6 <= 0)
          {
            goto LABEL_16;
          }

          goto LABEL_52;
        }

        if (v16 <= 0xB)
        {
          v47 = 0;
          goto LABEL_49;
        }

        v47 = 0;
        v97 = v32 + result > a3 && v32 < v19;
        v99 = v17 + result > a3 && v17 < v19;
        if (v29 < v19 && v29 + result > a3)
        {
          goto LABEL_49;
        }

        if (v97)
        {
          goto LABEL_49;
        }

        if (v99)
        {
          goto LABEL_49;
        }

        if (a4 < 0)
        {
          goto LABEL_49;
        }

        v101 = 0;
        v102 = v177 & 0x3FFFFFFC;
        do
        {
          v103 = (v28 + v101);
          v104 = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*(v32 + v101 + 16), v26, *(v29 + v101 + 16)), *(v17 + v101 + 16)));
          v105 = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*(v32 + v101), v26, *(v29 + v101)), *(v17 + v101)));
          v106 = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*(v32 + v101 + 48), v26, *(v29 + v101 + 48)), *(v17 + v101 + 48)));
          v103[2] = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*(v32 + v101 + 32), v26, *(v29 + v101 + 32)), *(v17 + v101 + 32)));
          v103[3] = v106;
          *v103 = v105;
          v103[1] = v104;
          v101 += 64;
          v102 -= 4;
        }

        while (v102);
        v47 = 4 * (v177 & 0x3FFFFFFC);
        if (v177 != v20)
        {
LABEL_49:
          v48 = (v17 + 4 * v47 + 8);
          v49 = (v29 + 4 * v47 + 8);
          v50 = (v32 + 4 * v47 + 8);
          v51 = (v24 + 4 * v47);
          do
          {
            v51[-1] = vadd_f32(*v23.f32, vadd_f32(vmla_f32(v50[-1], 0x4000000040000000, v49[-1]), v48[-1]));
            v52 = *v50;
            v50 += 2;
            v53 = v52;
            v54 = *v49;
            v49 += 2;
            v55 = vmla_f32(v53, 0x4000000040000000, v54);
            v56 = *v48;
            v48 += 2;
            v47 += 4;
            *v51 = vadd_f32(*v23.f32, vadd_f32(v55, v56));
            v51 += 2;
          }

          while (v47 <= v16);
        }

        v35 = v47;
        if (v47 >= a6)
        {
          goto LABEL_16;
        }

LABEL_52:
        v57 = a6 - v35;
        if (v57 <= 7 || v30 - v32 < 0x20 || v30 - v29 < 0x20 || v30 - v17 < 0x20)
        {
          v58 = v35;
        }

        else
        {
          v58 = (v57 & 0xFFFFFFFFFFFFFFF8) + v35;
          v107 = 4 * v35;
          v108 = (v25 + v107);
          v109 = (v32 + v107 + 16);
          v110 = (v17 + v107 + 16);
          v111 = (v29 + v107 + 16);
          v112 = v57 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v113 = vaddq_f32(v23, vaddq_f32(vmlaq_f32(*v109, v26, *v111), *v110));
            v108[-1] = vaddq_f32(v23, vaddq_f32(vmlaq_f32(v109[-1], v26, v111[-1]), v110[-1]));
            *v108 = v113;
            v108 += 2;
            v109 += 2;
            v110 += 2;
            v111 += 2;
            v112 -= 8;
          }

          while (v112);
          if (v57 == (v57 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_16;
          }
        }

        do
        {
          *(v28 + 4 * v58) = *&a9 + ((*(v32 + 4 * v58) + (*(v29 + 4 * v58) * 2.0)) + *(v17 + 4 * v58));
          ++v58;
        }

        while (a6 != v58);
        goto LABEL_16;
      }

      if (!v12)
      {
        if (a6 < 4)
        {
          v36 = 0;
          if (a6 <= 0)
          {
            goto LABEL_16;
          }

          goto LABEL_61;
        }

        if (v16 <= 0xB)
        {
          v59 = 0;
          goto LABEL_58;
        }

        v59 = 0;
        v115 = v17 + result > a3 && v17 < v19;
        if (v32 < v19 && v32 + result > a3)
        {
          goto LABEL_58;
        }

        if (v115)
        {
          goto LABEL_58;
        }

        if (a4 < 0)
        {
          goto LABEL_58;
        }

        v117 = 0;
        v118 = v177 & 0x3FFFFFFC;
        do
        {
          v119 = (v28 + v117);
          v120 = vmlaq_f32(v23, v22, vsubq_f32(*(v17 + v117 + 16), *(v32 + v117 + 16)));
          v121 = vmlaq_f32(v23, v22, vsubq_f32(*(v17 + v117), *(v32 + v117)));
          v122 = vmlaq_f32(v23, v22, vsubq_f32(*(v17 + v117 + 48), *(v32 + v117 + 48)));
          v119[2] = vmlaq_f32(v23, v22, vsubq_f32(*(v17 + v117 + 32), *(v32 + v117 + 32)));
          v119[3] = v122;
          *v119 = v121;
          v119[1] = v120;
          v117 += 64;
          v118 -= 4;
        }

        while (v118);
        v59 = 4 * (v177 & 0x3FFFFFFC);
        if (v177 != v20)
        {
LABEL_58:
          v60 = (v32 + 4 * v59 + 8);
          v61 = (v17 + 4 * v59 + 8);
          v62 = (v24 + 4 * v59);
          do
          {
            v62[-1] = vmla_f32(*v23.f32, *v22.f32, vsub_f32(v61[-1], v60[-1]));
            v63 = *v61;
            v61 += 2;
            v64 = v63;
            v65 = *v60;
            v60 += 2;
            v59 += 4;
            *v62 = vmla_f32(*v23.f32, *v22.f32, vsub_f32(v64, v65));
            v62 += 2;
          }

          while (v59 <= v16);
        }

        v36 = v59;
        if (v59 >= a6)
        {
          goto LABEL_16;
        }

LABEL_61:
        v66 = a6 - v36;
        if (v66 <= 7 || v30 - v17 < 0x20 || v30 - v32 < 0x20)
        {
          v67 = v36;
        }

        else
        {
          v67 = (v66 & 0xFFFFFFFFFFFFFFF8) + v36;
          v123 = 4 * v36;
          v124 = (v25 + 4 * v36);
          v125 = (v17 + 4 * v36 + 16);
          v126 = (v32 + v123 + 16);
          v127 = v66 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v128 = vmlaq_f32(v23, v22, vsubq_f32(*v125, *v126));
            v124[-1] = vmlaq_f32(v23, v22, vsubq_f32(v125[-1], v126[-1]));
            *v124 = v128;
            v124 += 2;
            v125 += 2;
            v126 += 2;
            v127 -= 8;
          }

          while (v127);
          if (v66 == (v66 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_16;
          }
        }

        do
        {
          *(v28 + 4 * v67) = *&a9 + ((*(v17 + 4 * v67) - *(v32 + 4 * v67)) * *&a8);
          ++v67;
        }

        while (a6 != v67);
        goto LABEL_16;
      }

      if (*&a8 >= 0.0)
      {
        v33 = *(v15 - 2);
      }

      else
      {
        v33 = v17;
      }

      if (*&a8 >= 0.0)
      {
        v32 = v17;
      }

      if (a6 < 4)
      {
        v34 = 0;
        if (a6 <= 0)
        {
          goto LABEL_16;
        }

        goto LABEL_43;
      }

      if (v16 <= 0xB)
      {
        break;
      }

      v38 = 0;
      v82 = v33 + result > a3 && v33 < v19;
      if (v32 < v19 && v32 + result > a3)
      {
        goto LABEL_40;
      }

      if (v82)
      {
        goto LABEL_40;
      }

      if (a4 < 0)
      {
        goto LABEL_40;
      }

      v84 = 0;
      v85 = v177 & 0x3FFFFFFC;
      do
      {
        v86 = (v28 + v84);
        v87 = vaddq_f32(v23, vsubq_f32(*(v32 + v84 + 16), *(v33 + v84 + 16)));
        v88 = vaddq_f32(v23, vsubq_f32(*(v32 + v84), *(v33 + v84)));
        v89 = vaddq_f32(v23, vsubq_f32(*(v32 + v84 + 48), *(v33 + v84 + 48)));
        v86[2] = vaddq_f32(v23, vsubq_f32(*(v32 + v84 + 32), *(v33 + v84 + 32)));
        v86[3] = v89;
        *v86 = v88;
        v86[1] = v87;
        v84 += 64;
        v85 -= 4;
      }

      while (v85);
      v38 = 4 * (v177 & 0x3FFFFFFC);
      if (v177 != v20)
      {
        goto LABEL_40;
      }

LABEL_42:
      v34 = v38;
      if (v38 >= a6)
      {
        goto LABEL_16;
      }

LABEL_43:
      v45 = a6 - v34;
      if (v45 <= 7 || v30 - v33 < 0x20 || v30 - v32 < 0x20)
      {
        v46 = v34;
      }

      else
      {
        v46 = (v45 & 0xFFFFFFFFFFFFFFF8) + v34;
        v90 = 4 * v34;
        v91 = (v25 + 4 * v34);
        v92 = (v32 + v90 + 16);
        v93 = (v33 + v90 + 16);
        v94 = v45 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v95 = vaddq_f32(v23, vsubq_f32(*v92, *v93));
          v91[-1] = vaddq_f32(v23, vsubq_f32(v92[-1], v93[-1]));
          *v91 = v95;
          v91 += 2;
          v92 += 2;
          v93 += 2;
          v94 -= 8;
        }

        while (v94);
        if (v45 == (v45 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_16;
        }
      }

      do
      {
        *(v28 + 4 * v46) = *&a9 + (*(v32 + 4 * v46) - *(v33 + 4 * v46));
        ++v46;
      }

      while (a6 != v46);
LABEL_16:
      v28 += a4;
      ++v13;
      v24 += a4;
      v25 += a4;
      if (!--a5)
      {
        return result;
      }
    }

    v38 = 0;
LABEL_40:
    v39 = (v33 + 4 * v38 + 8);
    v40 = (v32 + 4 * v38 + 8);
    v41 = (v24 + 4 * v38);
    do
    {
      v41[-1] = vadd_f32(*v23.f32, vsub_f32(v40[-1], v39[-1]));
      v42 = *v40;
      v40 += 2;
      v43 = v42;
      v44 = *v39;
      v39 += 2;
      v38 += 4;
      *v41 = vadd_f32(*v23.f32, vsub_f32(v43, v44));
      v41 += 2;
    }

    while (v38 <= v16);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_10032085C(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479A18;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v22) = 33619968;
  v23 = a1 + 16;
  v24 = 0;
  sub_10022B754(a2, &v22);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    v22 = 0;
    v23 = 0;
    qmemcpy(sub_1002A80E0(&v22, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v22, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100320AE0(uint64_t a1)
{
  *a1 = off_100479A18;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100320B90(uint64_t a1)
{
  *a1 = off_100479A18;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100320C40(uint64_t a1)
{
  *a1 = off_100479A18;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

unint64_t sub_100320D10(unint64_t result, uint64_t a2, float *a3, int a4, int a5, int a6, double a7)
{
  v7 = *(result + 8);
  v8 = *(result + 32);
  v9 = (v7 + (v7 >> 31)) >> 1;
  v10 = (v8 + 4 * (v7 / 2));
  LODWORD(a7) = *(result + 116);
  v11 = (a2 + 8 * (v7 / 2));
  if (*(result + 120))
  {
    if (!a5)
    {
      return result;
    }

    v36 = (a5 - 1);
    v37 = a4;
    if (a6 <= 3)
    {
      if (a6 >= 1)
      {
        if (v7 >= 2)
        {
          v101 = (v7 / 2 + 1);
          v102 = a2 + 8 * v9 - 8;
          do
          {
            v103 = v36;
            v104 = *v11;
            v105 = *&a7 + (*v10 * **v11);
            v106 = v102;
            v107 = 1;
            do
            {
              v108 = *v106--;
              result = v108;
              v105 = v105 + (v10[v107] * (*v11[v107] + *v108));
              ++v107;
            }

            while (v101 != v107);
            *a3 = v105;
            if (a6 != 1)
            {
              v109 = *&a7 + (*v10 * v104[1]);
              v110 = 0x1FFFFFFFFFFFFFFFLL;
              v111 = 1;
              do
              {
                v109 = v109 + (v10[v111] * (v11[v111][1] + v11[v110][1]));
                ++v111;
                --v110;
              }

              while (v101 != v111);
              a3[1] = v109;
              if (a6 != 2)
              {
                v112 = *&a7 + (*v10 * v104[2]);
                v113 = 0x1FFFFFFFFFFFFFFFLL;
                v114 = 1;
                do
                {
                  v112 = v112 + (v10[v114] * (v11[v114][2] + v11[v113][2]));
                  ++v114;
                  --v113;
                }

                while (v101 != v114);
                a3[2] = v112;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            LODWORD(v36) = v36 - 1;
            v102 += 8;
          }

          while (v103);
        }

        else
        {
          v38 = a3 + 2;
          do
          {
            v39 = *v11;
            *(v38 - 2) = *&a7 + (*v10 * **v11);
            if (a6 != 1)
            {
              *(v38 - 1) = *&a7 + (*v10 * v39[1]);
              if (a6 != 2)
              {
                *v38 = *&a7 + (*v10 * v39[2]);
              }
            }

            ++v11;
            v38 = (v38 + a4);
            --a5;
          }

          while (a5);
        }
      }

      return result;
    }

    v40 = (a6 - 4);
    if (v7 >= 2)
    {
      v87 = (v7 / 2 + 1);
      v88 = vdupq_lane_s32(*&a7, 0);
      v89 = a2 + 8 * v9 - 8;
      do
      {
        result = 0;
        v90 = v36;
        v91 = *v11;
        v92 = 4;
        do
        {
          v93 = v92;
          v94 = vmlaq_n_f32(v88, *&v91[result], *v10);
          v95 = v89;
          v96 = 1;
          do
          {
            v97 = *v95--;
            v94 = vmlaq_n_f32(v94, vaddq_f32(*&v11[v96][result], *(v97 + 4 * result)), v10[v96]);
            ++v96;
          }

          while (v87 != v96);
          *&a3[result] = v94;
          result += 4;
          v92 += 4;
        }

        while (result <= v40);
        if (result < a6)
        {
          do
          {
            v98 = *&a7 + (*v10 * v91[v93]);
            result = v89;
            v99 = 1;
            do
            {
              v100 = *result;
              result -= 8;
              v98 = v98 + (v10[v99] * (v11[v99][v93] + *(v100 + 4 * v93)));
              ++v99;
            }

            while (v87 != v99);
            a3[v93++] = v98;
          }

          while (v93 < a6);
        }

        a3 = (a3 + v37);
        ++v11;
        LODWORD(v36) = v36 - 1;
        v89 += 8;
      }

      while (v90);
      return result;
    }

    v41 = 0;
    if ((v40 & 0x7FFFFFFC) + 5 <= a6)
    {
      v42 = a6;
    }

    else
    {
      v42 = (v40 & 0x7FFFFFFC) + 5;
    }

    v43 = (4 * (a6 - 4)) & 0x1FFFFFFF0;
    v44 = 4 * v42 - v43;
    v45 = v8 + 4 * v9 + 4;
    v46 = v42 - (v40 & 0x7FFFFFFC) - 4;
    result = a3 + a4 * v36 + v43 + 16;
    v47 = (v40 >> 2) + 1;
    v49 = v45 > a3 && v10 < result;
    v50 = vdupq_lane_s32(*&a7, 0);
    v51 = v46 & 0xFFFFFFFFFFFFFFF8;
    v52 = a3 + 4;
    v53 = a3;
    while (1)
    {
      v54 = v36;
      v55 = *v11;
      if (v40 <= 0xB)
      {
        break;
      }

      v56 = (v55 + v43 + 16) <= a3 || v55 >= result;
      v57 = !v56 || a4 < 0;
      v58 = v57 || v49;
      if (v58)
      {
        break;
      }

      v66 = 0;
      v67 = v47 & 0x3FFFFFFC;
      do
      {
        v68 = &v53[v66];
        v69 = vmlaq_n_f32(v50, *&v55[v66 + 12], *v10);
        v70 = vmlaq_n_f32(v50, *&v55[v66 + 4], *v10);
        v71 = vmlaq_n_f32(v50, *&v55[v66 + 8], *v10);
        *v68 = vmlaq_n_f32(v50, *&v55[v66], *v10);
        v68[1] = v70;
        v68[2] = v71;
        v68[3] = v69;
        v66 += 16;
        v67 -= 4;
      }

      while (v67);
      v59 = v47 & 0x3FFFFFFC;
      v61 = (16 * ((v59 >> 2) & 0xFFFFFFF)) | 4;
      v60 = 4 * v59;
      v62 = v59 - 1;
      v63 = v60;
      if (v47 != v59)
      {
        goto LABEL_69;
      }

LABEL_71:
      if (v60 < a6)
      {
        if (v46 >= 8)
        {
          v72 = 4 * v62;
          v73 = &a3[4 * v62] + v41 * a4;
          v74 = v73 + 16;
          v75 = v73 + v44;
          v76 = &v55[v72];
          v77 = &v55[v72 + 4];
          v79 = v74 < v76 + v44 && v77 < v75;
          if (v10 >= v75 || v74 >= v45)
          {
            if (v79)
            {
              v65 = v63;
            }

            else
            {
              v81 = vld1q_dup_f32(v10);
              v65 = v63 + v51;
              v82 = v63;
              v83 = &v52[v63];
              v84 = &v55[v82 + 4];
              v85 = v46 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v86 = vmlaq_f32(v50, *v84, v81);
                v83[-1] = vmlaq_f32(v50, v84[-1], v81);
                *v83 = v86;
                v83 += 2;
                v84 += 2;
                v85 -= 8;
              }

              while (v85);
              if (v46 == v51)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v65 = v63;
          }
        }

        else
        {
          v65 = v63;
        }

        do
        {
          v53[v65] = *&a7 + (*v10 * v55[v65]);
          ++v65;
        }

        while (v65 < a6);
      }

LABEL_56:
      v53 = (v53 + a4);
      ++v11;
      LODWORD(v36) = v54 - 1;
      ++v41;
      v52 = (v52 + a4);
      if (!v54)
      {
        return result;
      }
    }

    v59 = 0;
    v60 = 0;
    v61 = 4;
LABEL_69:
    v62 = v59 - 1;
    v63 = v61 - 4;
    v64 = v60;
    do
    {
      *&v53[v64] = vmlaq_n_f32(v50, *&v55[v64], *v10);
      v60 += 4;
      ++v62;
      v63 += 4;
      v64 += 4;
    }

    while (v60 <= v40);
    goto LABEL_71;
  }

  if (a5)
  {
    v12 = a4;
    v13 = (v7 / 2 + 1);
    v14 = a6 - 4;
    v15 = 3;
    if (v14 > 3)
    {
      v15 = a6 - 4;
    }

    v16 = (v15 >> 2) + 1;
    v17 = vdupq_lane_s32(*&a7, 0);
    result = a2 + 8 * v9 - 8;
    v18 = a3 + 16;
    do
    {
      if (a6 < 4)
      {
        v19 = 0;
        if (a6 <= 0)
        {
          goto LABEL_6;
        }

        goto LABEL_24;
      }

      if (v7 >= 2)
      {
        v19 = 0;
        do
        {
          v20 = result;
          v21 = 1;
          v22 = v17;
          do
          {
            v23 = *v20--;
            v22 = vmlaq_n_f32(v22, vsubq_f32(*&v11[v21][v19], *(v23 + 4 * v19)), v10[v21]);
            ++v21;
          }

          while (v13 != v21);
          *&a3[v19] = v22;
          v19 += 4;
        }

        while (v19 <= v14);
      }

      else
      {
        if (v14 < 0x1C)
        {
          v19 = 0;
LABEL_21:
          v26 = v19;
          do
          {
            *&a3[v26] = v17;
            v19 += 4;
            v26 += 4;
          }

          while (v19 <= v14);
          goto LABEL_23;
        }

        v24 = v16 & 0x3FFFFFF8;
        v25 = v18;
        do
        {
          v25[-4] = v17;
          v25[-3] = v17;
          v25[-2] = v17;
          v25[-1] = v17;
          *v25 = v17;
          v25[1] = v17;
          v25[2] = v17;
          v25[3] = v17;
          v25 += 8;
          v24 -= 8;
        }

        while (v24);
        v19 = 4 * (v16 & 0x3FFFFFF8);
        if (v16 != (v16 & 0x3FFFFFF8))
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v19 = v19;
      if (v19 >= a6)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (v7 >= 2)
      {
        do
        {
          v29 = result;
          v30 = 1;
          v31 = *&a7;
          do
          {
            v32 = *v29--;
            v31 = v31 + (v10[v30] * (v11[v30][v19] - *(v32 + 4 * v19)));
            ++v30;
          }

          while (v13 != v30);
          a3[v19++] = v31;
        }

        while (v19 != a6);
        goto LABEL_6;
      }

      v27 = a6 - v19;
      if (v27 >= 8)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFF8) + v19;
        v33 = v19;
        v34 = v27 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v35 = &a3[v33];
          *v35 = v17;
          v35[1] = v17;
          v33 += 8;
          v34 -= 8;
        }

        while (v34);
        if (v27 == (v27 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v28 = v19;
      }

      do
      {
        a3[v28++] = *&a7;
      }

      while (a6 != v28);
LABEL_6:
      a3 = (a3 + v12);
      ++v11;
      result += 8;
      v18 = (v18 + v12);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_10032142C(uint64_t a1)
{
  *a1 = off_100479A18;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003214DC(uint64_t a1)
{
  *a1 = off_100479A18;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_1003215AC(uint64_t result, float **a2, float *a3, int a4, int a5, int a6, double a7)
{
  if (!a5)
  {
    return result;
  }

  v7 = *(result + 32);
  LODWORD(a7) = *(result + 116);
  v8 = (a5 - 1);
  v9 = *(result + 8);
  if (a6 <= 3)
  {
    if (a6 >= 1)
    {
      if (v9 > 1)
      {
        do
        {
          v11 = v8;
          v12 = *a2;
          v13 = *&a7 + (*v7 * **a2);
          for (i = 1; i != v9; ++i)
          {
            v13 = v13 + (v7[i] * *a2[i]);
          }

          *a3 = v13;
          if (a6 != 1)
          {
            v15 = *&a7 + (*v7 * v12[1]);
            for (j = 1; j != v9; ++j)
            {
              v15 = v15 + (v7[j] * a2[j][1]);
            }

            a3[1] = v15;
            if (a6 != 2)
            {
              v17 = *&a7 + (*v7 * v12[2]);
              for (k = 1; k != v9; ++k)
              {
                v17 = v17 + (v7[k] * a2[k][2]);
              }

              a3[2] = v17;
            }
          }

          a3 = (a3 + a4);
          ++a2;
          LODWORD(v8) = v8 - 1;
        }

        while (v11);
      }

      else
      {
        v10 = a3 + 2;
        do
        {
          v19 = *a2;
          *(v10 - 2) = *&a7 + (*v7 * **a2);
          if (a6 != 1)
          {
            *(v10 - 1) = *&a7 + (*v7 * v19[1]);
            if (a6 != 2)
            {
              *v10 = *&a7 + (*v7 * v19[2]);
            }
          }

          ++a2;
          v10 = (v10 + a4);
          --a5;
        }

        while (a5);
      }
    }

    return result;
  }

  v20 = (a6 - 4);
  if (v9 <= 1)
  {
    v30 = 0;
    if ((v20 & 0x7FFFFFFC) + 5 <= a6)
    {
      v31 = a6;
    }

    else
    {
      v31 = (v20 & 0x7FFFFFFC) + 5;
    }

    v32 = (4 * v20) & 0x1FFFFFFF0;
    v33 = 4 * v31 - v32;
    v34 = v31 - (v20 & 0x7FFFFFFC) - 4;
    v35 = a3 + a4 * v8 + v32 + 16;
    result = (v20 >> 2) + 1;
    v37 = v7 + 1 > a3 && v7 < v35;
    v38 = vdupq_lane_s32(*&a7, 0);
    v39 = v34 & 0xFFFFFFFFFFFFFFF8;
    v40 = a3 + 4;
    v41 = a3;
    while (1)
    {
      v42 = v8;
      v43 = *a2;
      if (v20 <= 0xB)
      {
        break;
      }

      v44 = (v43 + v32 + 16) <= a3 || v43 >= v35;
      v45 = !v44 || a4 < 0;
      v46 = v45 || v37;
      if (v46)
      {
        break;
      }

      v54 = 0;
      v55 = result & 0x3FFFFFFC;
      do
      {
        v56 = &v41[v54];
        v57 = vmlaq_n_f32(v38, *&v43[v54 + 12], *v7);
        v58 = vmlaq_n_f32(v38, *&v43[v54 + 4], *v7);
        v59 = vmlaq_n_f32(v38, *&v43[v54 + 8], *v7);
        *v56 = vmlaq_n_f32(v38, *&v43[v54], *v7);
        v56[1] = v58;
        v56[2] = v59;
        v56[3] = v57;
        v54 += 16;
        v55 -= 4;
      }

      while (v55);
      v47 = result & 0x3FFFFFFC;
      v49 = (16 * ((v47 >> 2) & 0xFFFFFFF)) | 4;
      v48 = 4 * v47;
      v50 = v47 - 1;
      v51 = v48;
      if (result != v47)
      {
        goto LABEL_55;
      }

LABEL_57:
      if (v48 < a6)
      {
        if (v34 <= 7 || ((v60 = 4 * v50, v61 = &a3[4 * v50] + v30 * a4, v62 = v61 + 16, v63 = v61 + v33, v64 = &v43[v60], v65 = &v43[v60 + 4], v62 < v64 + v33) ? (v66 = v65 >= v63) : (v66 = 1), v66 ? (v67 = 0) : (v67 = 1), v7 < v63 ? (v68 = v62 >= (v7 + 1)) : (v68 = 1), !v68 || (v67 & 1) != 0))
        {
          v53 = v51;
        }

        else
        {
          v69 = vld1q_dup_f32(v7);
          v53 = v51 + v39;
          v70 = v51;
          v71 = &v40[v51];
          v72 = &v43[v70 + 4];
          v73 = v34 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v74 = vmlaq_f32(v38, *v72, v69);
            v71[-1] = vmlaq_f32(v38, v72[-1], v69);
            *v71 = v74;
            v71 += 2;
            v72 += 2;
            v73 -= 8;
          }

          while (v73);
          if (v34 == v39)
          {
            goto LABEL_42;
          }
        }

        do
        {
          v41[v53] = *&a7 + (*v7 * v43[v53]);
          ++v53;
        }

        while (v53 < a6);
      }

LABEL_42:
      v41 = (v41 + a4);
      ++a2;
      LODWORD(v8) = v42 - 1;
      ++v30;
      v40 = (v40 + a4);
      if (!v42)
      {
        return result;
      }
    }

    v47 = 0;
    v48 = 0;
    v49 = 4;
LABEL_55:
    v50 = v47 - 1;
    v51 = v49 - 4;
    v52 = v48;
    do
    {
      *&v41[v52] = vmlaq_n_f32(v38, *&v43[v52], *v7);
      v48 += 4;
      ++v50;
      v51 += 4;
      v52 += 4;
    }

    while (v48 <= v20);
    goto LABEL_57;
  }

  v21 = vdupq_lane_s32(*&a7, 0);
  do
  {
    v22 = 0;
    v23 = v8;
    v24 = *a2;
    v25 = 4;
    do
    {
      v26 = v25;
      v27 = vmlaq_n_f32(v21, *&v24[v22], *v7);
      for (result = 1; result != v9; ++result)
      {
        v27 = vmlaq_n_f32(v27, *&a2[result][v22], v7[result]);
      }

      *&a3[v22] = v27;
      v22 += 4;
      v25 += 4;
    }

    while (v22 <= v20);
    if (v22 < a6)
    {
      do
      {
        v28 = *&a7 + (*v7 * v24[v26]);
        for (m = 1; m != v9; ++m)
        {
          v28 = v28 + (v7[m] * a2[m][v26]);
        }

        a3[v26++] = v28;
      }

      while (v26 < a6);
    }

    a3 = (a3 + a4);
    ++a2;
    LODWORD(v8) = v8 - 1;
  }

  while (v23);
  return result;
}

uint64_t sub_100321A5C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100321AF8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100321B7C(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100315700(a1, a2, a3, a5);
  *v7 = off_100479AC8;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100321C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100315E60(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100321C5C(uint64_t a1)
{
  *a1 = off_100479300;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100321D0C(uint64_t a1)
{
  *a1 = off_100479300;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100321DDC(uint64_t result, uint64_t a2, _BYTE *__b, int a4, int a5, size_t __len, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v14 = a5;
  v15 = __b;
  v16 = *(result + 8);
  v17 = (v16 + (v16 >> 31)) >> 1;
  v18 = (*(result + 32) + 4 * (v16 / 2));
  LODWORD(a14) = *(result + 116);
  v19 = (a2 + 8 * (v16 / 2));
  if (*(result + 120))
  {
    if (!a5)
    {
      return result;
    }

    v26 = (v16 / 2 + 1);
    v27 = vdupq_lane_s32(*&a14, 0);
    v28 = a2 + 8 * v17 - 8;
    v29.i64[0] = 0xFF000000FFLL;
    v29.i64[1] = 0xFF000000FFLL;
    while (__len < 4)
    {
      v30 = 0;
      if (__len > 0)
      {
        goto LABEL_25;
      }

LABEL_14:
      v15 += a4;
      ++v19;
      v28 += 8;
      if (!--v14)
      {
        return result;
      }
    }

    v30 = 0;
    do
    {
      v31 = vmlaq_n_f32(v27, *(*v19 + 4 * v30), *v18);
      if (v16 >= 2)
      {
        v32 = v28;
        v33 = 1;
        do
        {
          result = v19[v33];
          v34 = *v32--;
          v31 = vmlaq_n_f32(v31, vaddq_f32(*(result + 4 * v30), *(v34 + 4 * v30)), v18[v33++]);
        }

        while (v26 != v33);
      }

      *&v15[v30] = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), 0), v29)), *v27.f32).u32[0];
      v30 += 4;
    }

    while (v30 <= __len - 4);
    v30 = v30;
    if (v30 >= __len)
    {
      goto LABEL_14;
    }

LABEL_25:
    if (v16 >= 2)
    {
      do
      {
        v37 = *&a14 + (*v18 * *(*v19 + 4 * v30));
        v38 = v28;
        v39 = 1;
        do
        {
          v40 = *v38--;
          v37 = v37 + (v18[v39] * (*(v19[v39] + 4 * v30) + *(v40 + 4 * v30)));
          ++v39;
        }

        while (v26 != v39);
        v41 = rintf(v37);
        v42 = v41 & ~(v41 >> 31);
        if (v42 >= 255)
        {
          LOBYTE(v42) = -1;
        }

        v15[v30++] = v42;
      }

      while (v30 != __len);
    }

    else
    {
      do
      {
        v35 = rintf(*&a14 + (*v18 * *(*v19 + 4 * v30)));
        v36 = v35 & ~(v35 >> 31);
        if (v36 >= 255)
        {
          LOBYTE(v36) = -1;
        }

        v15[v30++] = v36;
      }

      while (__len != v30);
    }

    goto LABEL_14;
  }

  if (a5)
  {
    v20 = a5 - 1;
    v21 = rintf(*&a14);
    result = 255;
    if ((v21 & ~(v21 >> 31)) >= 255)
    {
      v22 = 255;
    }

    else
    {
      v22 = v21 & ~(v21 >> 31);
    }

    v23 = a4;
    v24 = (__len - 4);
    v95 = a4;
    v94 = v22;
    if (__len >= 4)
    {
      v43 = 0;
      v44 = (v16 / 2 + 1);
      v45 = (v24 & 0xFFFFFFFC) + 5;
      if (__len > v45)
      {
        v45 = __len;
      }

      v46 = __len;
      v47 = vdup_n_s16(v22);
      v48 = vdupq_lane_s32(*&a14, 0);
      v89 = v45 - (v24 & 0xFFFFFFFC) - 5;
      v49 = a2 + 8 * v17 - 8;
      v50 = 0uLL;
      v51.i64[0] = 0xFF000000FFLL;
      v51.i64[1] = 0xFF000000FFLL;
      v52 = __b;
      v92 = __len;
      v90 = v48;
      v91 = LODWORD(a14);
      do
      {
        v54 = 0;
        v55 = 0;
        v53 = v20;
        v56 = 4;
        do
        {
          v57 = v56;
          v58 = v54;
          v59 = v47;
          if (v16 >= 2)
          {
            v60 = v49;
            v61 = 1;
            v62 = v48;
            do
            {
              v63 = *v60--;
              v62 = vmlaq_n_f32(v62, vsubq_f32(*(v19[v61] + 4 * v55), *(v63 + 4 * v55)), v18[v61]);
              ++v61;
            }

            while (v44 != v61);
            v59 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), v50), v51));
          }

          *&v52[v55] = vuzp1_s8(v59, v59).u32[0];
          v55 += 4;
          v56 = v57 + 4;
          v54 = v58 + 1;
        }

        while (v55 <= v24);
        if (v55 < __len)
        {
          if (v16 < 2)
          {
            v93 = v53;
            memset(&v15[4 * v58 + 4 + v43 * v23], v22, v89 + 1);
            v53 = v93;
            v22 = v94;
            v51.i64[0] = 0xFF000000FFLL;
            v51.i64[1] = 0xFF000000FFLL;
            v50 = 0uLL;
            v48 = v90;
            LODWORD(a14) = v91;
            result = 255;
            v23 = v95;
            LODWORD(__len) = v92;
          }

          else
          {
            do
            {
              v64 = v49;
              v65 = 1;
              v66 = *&a14;
              do
              {
                v67 = *v64--;
                v66 = v66 + (v18[v65] * (*(v19[v65] + 4 * v57) - *(v67 + 4 * v57)));
                ++v65;
              }

              while (v44 != v65);
              v68 = rintf(v66);
              v69 = v68 & ~(v68 >> 31);
              if (v69 >= 255)
              {
                LOBYTE(v69) = -1;
              }

              v52[v57++] = v69;
            }

            while (v57 < v46);
          }
        }

        v52 += v23;
        ++v19;
        v20 = v53 - 1;
        ++v43;
        v49 += 8;
      }

      while (v53);
    }

    else if (__len >= 1)
    {
      if (v16 >= 2)
      {
        v70 = (v16 / 2 + 1);
        v71 = a2 + 8 * v17 - 8;
        do
        {
          v72 = v20;
          v73 = v71;
          v74 = 1;
          v75 = *&a14;
          do
          {
            v76 = *v73--;
            v75 = v75 + (v18[v74] * (*v19[v74] - *v76));
            ++v74;
          }

          while (v70 != v74);
          v77 = rintf(v75);
          v78 = v77 & ~(v77 >> 31);
          if (v78 >= 255)
          {
            LOBYTE(v78) = -1;
          }

          *v15 = v78;
          if (__len != 1)
          {
            v79 = 0x1FFFFFFFFFFFFFFFLL;
            v80 = 1;
            v81 = *&a14;
            do
            {
              v81 = v81 + (v18[v80] * (*(v19[v80] + 4) - *(v19[v79] + 4)));
              ++v80;
              --v79;
            }

            while (v70 != v80);
            v82 = rintf(v81);
            v83 = v82 & ~(v82 >> 31);
            if (v83 >= 255)
            {
              LOBYTE(v83) = -1;
            }

            v15[1] = v83;
            if (__len != 2)
            {
              v84 = 0x1FFFFFFFFFFFFFFFLL;
              v85 = 1;
              v86 = *&a14;
              do
              {
                v86 = v86 + (v18[v85] * (*(v19[v85] + 8) - *(v19[v84] + 8)));
                ++v85;
                --v84;
              }

              while (v70 != v85);
              v87 = rintf(v86);
              v88 = v87 & ~(v87 >> 31);
              if (v88 >= 255)
              {
                LOBYTE(v88) = -1;
              }

              v15[2] = v88;
            }
          }

          v15 += a4;
          ++v19;
          v20 = v72 - 1;
          v71 += 8;
        }

        while (v72);
      }

      else
      {
        v25 = __len;
        do
        {
          result = memset(v15, v22, v25);
          v22 = v94;
          v15 += v95;
          --v14;
        }

        while (v14);
      }
    }
  }

  return result;
}

uint64_t sub_10032237C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100322400(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100315FAC(a1, a2, a3, a5);
  *v7 = off_100479B50;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_1003224B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100316714(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003224E0(uint64_t a1)
{
  *a1 = off_100479388;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100322590(uint64_t a1)
{
  *a1 = off_100479388;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100322660(uint64_t result, uint64_t a2, _BYTE *__b, int a4, int a5, size_t __len)
{
  v6 = a5;
  v7 = __b;
  v8 = *(result + 8);
  v9 = (v8 + (v8 >> 31)) >> 1;
  v10 = 8 * (v8 / 2);
  v11 = (*(result + 32) + v10);
  v12 = *(result + 120);
  v13 = (a2 + v10);
  if (*(result + 128))
  {
    if (!a5)
    {
      return result;
    }

    v20 = vdupq_lane_s64(v12, 0);
    v21 = a2 + 8 * v9 - 8;
    v22 = 8 * (v8 / 2 + 1);
    v23.i64[0] = 0xFF000000FFLL;
    v23.i64[1] = 0xFF000000FFLL;
    while (__len < 4)
    {
      v24 = 0;
      if (__len > 0)
      {
        goto LABEL_25;
      }

LABEL_14:
      v7 += a4;
      ++v13;
      v21 += 8;
      if (!--v6)
      {
        return result;
      }
    }

    v24 = 0;
    do
    {
      v25 = (*v13 + 8 * v24);
      v26 = vmlaq_n_f64(v20, v25[1], *v11);
      v27 = vmlaq_n_f64(v20, *v25, *v11);
      if (v8 >= 2)
      {
        v28 = 8;
        v29 = v21;
        do
        {
          v30 = (v13[v28 / 8] + 8 * v24);
          v31 = *v29--;
          result = v31 + 8 * v24;
          v32 = v11[v28 / 8];
          v26 = vmlaq_n_f64(v26, vaddq_f64(v30[1], *(result + 16)), v32);
          v27 = vmlaq_n_f64(v27, vaddq_f64(*v30, *result), v32);
          v28 += 8;
        }

        while (v22 != v28);
      }

      *&v7[v24] = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v27)), vcvtq_s64_f64(vrndxq_f64(v26))), 0), v23)), *&v20.f64[0]).u32[0];
      v24 += 4;
    }

    while (v24 <= __len - 4);
    v24 = v24;
    if (v24 >= __len)
    {
      goto LABEL_14;
    }

LABEL_25:
    if (v8 >= 2)
    {
      do
      {
        v35 = *&v12 + *v11 * *(*v13 + 8 * v24);
        v36 = 8;
        v37 = v21;
        do
        {
          v38 = *v37--;
          v35 = v35 + v11[v36 / 8] * (*(v13[v36 / 8] + 8 * v24) + *(v38 + 8 * v24));
          v36 += 8;
        }

        while (v22 != v36);
        v39 = rint(v35);
        v40 = v39 & ~(v39 >> 31);
        if (v40 >= 255)
        {
          LOBYTE(v40) = -1;
        }

        v7[v24++] = v40;
      }

      while (v24 != __len);
    }

    else
    {
      do
      {
        v33 = rint(*&v12 + *v11 * *(*v13 + 8 * v24));
        v34 = v33 & ~(v33 >> 31);
        if (v34 >= 255)
        {
          LOBYTE(v34) = -1;
        }

        v7[v24++] = v34;
      }

      while (__len != v24);
    }

    goto LABEL_14;
  }

  if (a5)
  {
    v14 = a5 - 1;
    v15 = rint(*&v12);
    result = 255;
    if ((v15 & ~(v15 >> 31)) >= 255)
    {
      v16 = 255;
    }

    else
    {
      v16 = v15 & ~(v15 >> 31);
    }

    v17 = a4;
    v18 = (__len - 4);
    v97 = a4;
    v96 = v16;
    if (__len >= 4)
    {
      v41 = 0;
      v42 = (v18 & 0xFFFFFFFC) + 5;
      if (__len > v42)
      {
        v42 = __len;
      }

      v43 = __len;
      v92 = v42 - (v18 & 0xFFFFFFFC) - 5;
      v44 = vdup_n_s16(v16);
      v45 = vdupq_lane_s64(v12, 0);
      v46 = a2 + 8 * v9 - 8;
      v47 = 8 * (v8 / 2 + 1);
      v48 = 0uLL;
      v49.i64[0] = 0xFF000000FFLL;
      v49.i64[1] = 0xFF000000FFLL;
      v50 = __b;
      v94 = __len;
      v93 = v12;
      v91 = v45;
      do
      {
        v52 = 0;
        v53 = 0;
        v51 = v14;
        v54 = 4;
        do
        {
          v55 = v54;
          v56 = v52;
          v57 = v44;
          if (v8 >= 2)
          {
            v58 = 8;
            v59 = v46;
            v60 = v45;
            v61 = v45;
            do
            {
              v62 = (v13[v58 / 8] + 8 * v53);
              v63 = *v59--;
              v64 = (v63 + 8 * v53);
              v65 = v11[v58 / 8];
              v61 = vmlaq_n_f64(v61, vsubq_f64(v62[1], v64[1]), v65);
              v60 = vmlaq_n_f64(v60, vsubq_f64(*v62, *v64), v65);
              v58 += 8;
            }

            while (v47 != v58);
            v57 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v60)), vcvtq_s64_f64(vrndxq_f64(v61))), v48), v49));
          }

          *&v50[v53] = vuzp1_s8(v57, v57).u32[0];
          v53 += 4;
          v54 = v55 + 4;
          v52 = v56 + 1;
        }

        while (v53 <= v18);
        if (v53 < __len)
        {
          if (v8 < 2)
          {
            v95 = v51;
            memset(&v7[4 * v56 + 4 + v41 * v17], v16, v92 + 1);
            v51 = v95;
            v16 = v96;
            v49.i64[0] = 0xFF000000FFLL;
            v49.i64[1] = 0xFF000000FFLL;
            v48 = 0uLL;
            v45 = v91;
            result = 255;
            v17 = v97;
            v12 = v93;
            LODWORD(__len) = v94;
          }

          else
          {
            do
            {
              v66 = 8;
              v67 = v46;
              v68 = *&v12;
              do
              {
                v69 = *v67--;
                v68 = v68 + v11[v66 / 8] * (*(v13[v66 / 8] + 8 * v55) - *(v69 + 8 * v55));
                v66 += 8;
              }

              while (v47 != v66);
              v70 = rint(v68);
              v71 = v70 & ~(v70 >> 31);
              if (v71 >= 255)
              {
                LOBYTE(v71) = -1;
              }

              v50[v55++] = v71;
            }

            while (v55 < v43);
          }
        }

        v50 += v17;
        ++v13;
        v14 = v51 - 1;
        ++v41;
        v46 += 8;
      }

      while (v51);
    }

    else if (__len >= 1)
    {
      if (v8 >= 2)
      {
        v72 = a2 + 8 * v9 - 8;
        v73 = 8 * (v8 / 2 + 1);
        do
        {
          v74 = v14;
          v75 = 8;
          v76 = v72;
          v77 = *&v12;
          do
          {
            v78 = *v76--;
            v77 = v77 + v11[v75 / 8] * (*v13[v75 / 8] - *v78);
            v75 += 8;
          }

          while (v73 != v75);
          v79 = rint(v77);
          v80 = v79 & ~(v79 >> 31);
          if (v80 >= 255)
          {
            LOBYTE(v80) = -1;
          }

          *v7 = v80;
          if (__len != 1)
          {
            v81 = 0x1FFFFFFFFFFFFFFFLL;
            v82 = 8;
            v83 = *&v12;
            do
            {
              v83 = v83 + v11[v82 / 8] * (*(v13[v82 / 8] + 8) - *(v13[v81] + 8));
              v82 += 8;
              --v81;
            }

            while (v73 != v82);
            v84 = rint(v83);
            v85 = v84 & ~(v84 >> 31);
            if (v85 >= 255)
            {
              LOBYTE(v85) = -1;
            }

            v7[1] = v85;
            if (__len != 2)
            {
              v86 = 0x1FFFFFFFFFFFFFFFLL;
              v87 = 8;
              v88 = *&v12;
              do
              {
                v88 = v88 + v11[v87 / 8] * (*(v13[v87 / 8] + 16) - *(v13[v86] + 16));
                v87 += 8;
                --v86;
              }

              while (v73 != v87);
              v89 = rint(v88);
              v90 = v89 & ~(v89 >> 31);
              if (v90 >= 255)
              {
                LOBYTE(v90) = -1;
              }

              v7[2] = v90;
            }
          }

          v7 += a4;
          ++v13;
          v14 = v74 - 1;
          v72 += 8;
        }

        while (v74);
      }

      else
      {
        v19 = __len;
        do
        {
          result = memset(v7, v16, v19);
          v16 = v96;
          v7 += v97;
          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

uint64_t sub_100322C30(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100322CB4(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100316860(a1, a2, a3, a5);
  *v7 = off_100479BD8;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100322D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100317058(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100322D94(uint64_t a1)
{
  *a1 = off_100479410;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100322E44(uint64_t a1)
{
  *a1 = off_100479410;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100322F14(uint64_t result, uint64_t a2, _WORD *a3, int a4, int a5, int a6, double a7, double a8)
{
  v8 = *(result + 8);
  v9 = (v8 + (v8 >> 31)) >> 1;
  v10 = (*(result + 32) + 4 * (v8 / 2));
  LODWORD(a7) = *(result + 116);
  v11 = (a2 + 8 * (v8 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v38 = a5 - 1;
      v39 = a4;
      if (a6 > 3)
      {
        v49 = (a6 - 4);
        LODWORD(a8) = *v10;
        v50 = (v8 / 2 + 1);
        v51 = (v49 & 0x7FFFFFFC) + 5;
        if (v51 <= a6)
        {
          v51 = a6;
        }

        v52 = v51 - (v49 & 0x7FFFFFFC) - 4;
        v53 = v52 & 0xFFFFFFFFFFFFFFF8;
        v54 = vdupq_lane_s32(*&a8, 0);
        v55 = vdupq_lane_s32(*&a7, 0);
        v56 = a2 + 8 * v9 - 8;
        result = (a3 + 4);
        v57.i64[0] = 0xFFFF0000FFFFLL;
        v57.i64[1] = 0xFFFF0000FFFFLL;
        do
        {
          v58 = 0;
          v59 = v38;
          v60 = *v11;
          v61 = (*v11 + 4);
          v62 = result;
          v63 = 4;
          do
          {
            v64 = v63;
            v65 = v61;
            v66 = v62;
            v67 = vmlaq_f32(v55, *&v60[v58], v54);
            if (v8 >= 2)
            {
              v68 = v56;
              v69 = 1;
              do
              {
                v70 = *v68--;
                v67 = vmlaq_n_f32(v67, vaddq_f32(*&v11[v69][v58], *(v70 + 4 * v58)), *&v10[v69]);
                ++v69;
              }

              while (v50 != v69);
            }

            *&a3[v58] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v67.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v67, v67, 8uLL))))), 0), v57));
            v58 += 4;
            v63 = v64 + 4;
            v61 += 16;
            v62 = &v66->u64[1];
          }

          while (v58 <= v49);
          if (v58 < a6)
          {
            if (v8 >= 2)
            {
              do
              {
                v78 = *&a7 + (*&a8 * v60[v64]);
                v79 = v56;
                v80 = 1;
                do
                {
                  v81 = *v79--;
                  v78 = v78 + (*&v10[v80] * (v11[v80][v64] + *(v81 + 4 * v64)));
                  ++v80;
                }

                while (v50 != v80);
                v82 = rintf(v78);
                v83 = v82 & ~(v82 >> 31);
                if (v83 >= 0xFFFF)
                {
                  LOWORD(v83) = -1;
                }

                a3[v64++] = v83;
              }

              while (v64 < a6);
            }

            else
            {
              if (v52 < 8)
              {
                goto LABEL_99;
              }

              v64 += v53;
              v71 = v52 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v72 = *v65;
                v73 = v65[1];
                v65 += 2;
                v74 = vmlaq_f32(v55, v73, v54);
                v75 = vmlaq_f32(v55, v72, v54);
                *v66++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))), 0), v57), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), 0), v57));
                v71 -= 8;
              }

              while (v71);
              if (v52 != v53)
              {
LABEL_99:
                do
                {
                  v76 = rintf(*&a7 + (*&a8 * v60[v64]));
                  v77 = v76 & ~(v76 >> 31);
                  if (v77 >= 0xFFFF)
                  {
                    LOWORD(v77) = -1;
                  }

                  a3[v64++] = v77;
                }

                while (v64 < a6);
              }
            }
          }

          a3 = (a3 + v39);
          ++v11;
          v38 = v59 - 1;
          v56 += 8;
          result += v39;
        }

        while (v59);
      }

      else if (a6 >= 1)
      {
        v40 = *v10;
        if (v8 >= 2)
        {
          v84 = (v8 / 2 + 1);
          v85 = a2 + 8 * v9 - 8;
          do
          {
            v86 = v38;
            v87 = *v11;
            v88 = *&a7 + (v40 * **v11);
            v89 = v85;
            v90 = 1;
            do
            {
              result = v11[v90];
              v91 = *v89--;
              v88 = v88 + (*&v10[v90++] * (*result + *v91));
            }

            while (v84 != v90);
            v92 = rintf(v88);
            v93 = v92 & ~(v92 >> 31);
            if (v93 >= 0xFFFF)
            {
              LOWORD(v93) = -1;
            }

            *a3 = v93;
            if (a6 != 1)
            {
              v94 = *&a7 + (v40 * v87[1]);
              v95 = 0x1FFFFFFFFFFFFFFFLL;
              v96 = 1;
              do
              {
                result = v11[v95];
                v94 = v94 + (*&v10[v96] * (v11[v96][1] + *(result + 4)));
                ++v96;
                --v95;
              }

              while (v84 != v96);
              v97 = rintf(v94);
              v98 = v97 & ~(v97 >> 31);
              if (v98 >= 0xFFFF)
              {
                LOWORD(v98) = -1;
              }

              a3[1] = v98;
              if (a6 != 2)
              {
                v99 = *&a7 + (v40 * v87[2]);
                v100 = 0x1FFFFFFFFFFFFFFFLL;
                v101 = 1;
                do
                {
                  v99 = v99 + (*&v10[v101] * (v11[v101][2] + v11[v100][2]));
                  ++v101;
                  --v100;
                }

                while (v84 != v101);
                v102 = rintf(v99);
                v103 = v102 & ~(v102 >> 31);
                if (v103 >= 0xFFFF)
                {
                  LOWORD(v103) = -1;
                }

                a3[2] = v103;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            --v38;
            v85 += 8;
          }

          while (v86);
        }

        else
        {
          v41 = a3 + 2;
          do
          {
            v42 = *v11;
            v43 = rintf(*&a7 + (v40 * **v11));
            v44 = v43 & ~(v43 >> 31);
            if (v44 >= 0xFFFF)
            {
              LOWORD(v44) = -1;
            }

            *(v41 - 2) = v44;
            if (a6 != 1)
            {
              v45 = rintf(*&a7 + (v40 * v42[1]));
              v46 = v45 & ~(v45 >> 31);
              if (v46 >= 0xFFFF)
              {
                LOWORD(v46) = -1;
              }

              *(v41 - 1) = v46;
              if (a6 != 2)
              {
                v47 = rintf(*&a7 + (v40 * v42[2]));
                v48 = v47 & ~(v47 >> 31);
                if (v48 >= 0xFFFF)
                {
                  LOWORD(v48) = -1;
                }

                *v41 = v48;
              }
            }

            ++v11;
            v41 = (v41 + a4);
            --a5;
          }

          while (a5);
        }
      }
    }
  }

  else if (a5)
  {
    v12 = rintf(*&a7);
    v13 = v12 & ~(v12 >> 31);
    if (v13 >= 0xFFFF)
    {
      v13 = 0xFFFF;
    }

    v14 = a4;
    v15 = (v8 / 2 + 1);
    v16 = vdupq_n_s16(v13);
    v17 = vdupq_lane_s32(*&a7, 0);
    v18 = a2 + 8 * v9 - 8;
    v19.i64[0] = 0xFFFF0000FFFFLL;
    v19.i64[1] = 0xFFFF0000FFFFLL;
    while (a6 < 4)
    {
      result = 0;
      if (a6 > 0)
      {
        goto LABEL_17;
      }

LABEL_6:
      a3 = (a3 + v14);
      ++v11;
      v18 += 8;
      if (!--a5)
      {
        return result;
      }
    }

    result = 0;
    do
    {
      v20 = *v16.i8;
      if (v8 >= 2)
      {
        v21 = v18;
        v22 = 1;
        v23 = v17;
        do
        {
          v24 = *v21--;
          v23 = vmlaq_n_f32(v23, vsubq_f32(*&v11[v22][result], *(v24 + 4 * result)), *&v10[v22]);
          ++v22;
        }

        while (v15 != v22);
        v20 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v23.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v23, v23, 8uLL))))), 0), v19));
      }

      *&a3[result] = v20;
      result += 4;
    }

    while (result <= a6 - 4);
    result = result;
    if (result >= a6)
    {
      goto LABEL_6;
    }

LABEL_17:
    if (v8 >= 2)
    {
      do
      {
        v27 = v18;
        v28 = 1;
        v29 = *&a7;
        do
        {
          v30 = *v27--;
          v29 = v29 + (*&v10[v28] * (v11[v28][result] - *(v30 + 4 * result)));
          ++v28;
        }

        while (v15 != v28);
        v31 = rintf(v29);
        v32 = v31 & ~(v31 >> 31);
        if (v32 >= 0xFFFF)
        {
          LOWORD(v32) = -1;
        }

        a3[result++] = v32;
      }

      while (result != a6);
      goto LABEL_6;
    }

    v25 = a6 - result;
    if (v25 < 4)
    {
      v26 = result;
      goto LABEL_37;
    }

    if (v25 >= 0x10)
    {
      v33 = v25 & 0xFFFFFFFFFFFFFFF0;
      v34 = result;
      v35 = v25 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v36 = &a3[v34];
        *v36 = v16;
        v36[1] = v16;
        v34 += 16;
        v35 -= 16;
      }

      while (v35);
      if (v25 == v33)
      {
        goto LABEL_6;
      }

      if ((v25 & 0xC) == 0)
      {
        v26 = v33 + result;
        do
        {
LABEL_37:
          a3[v26++] = v13;
        }

        while (a6 != v26);
        goto LABEL_6;
      }
    }

    else
    {
      v33 = 0;
    }

    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + result;
    v37 = v33 - (v25 & 0xFFFFFFFFFFFFFFFCLL);
    result = 2 * (v33 + result);
    do
    {
      *(a3 + result) = v16.i64[0];
      result += 8;
      v37 += 4;
    }

    while (v37);
    if (v25 == (v25 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1003235D8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_10032365C(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_1003171A4(a1, a2, a3, a5);
  *v7 = off_100479C60;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100323714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_1003179A0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10032373C(uint64_t a1)
{
  *a1 = off_100479498;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003237EC(uint64_t a1)
{
  *a1 = off_100479498;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_1003238BC(uint64_t result, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = 8 * (v6 / 2);
  v9 = (*(result + 32) + v8);
  v10 = *(result + 120);
  v11 = (a2 + v8);
  if (*(result + 128))
  {
    if (a5)
    {
      v42 = a5 - 1;
      v43 = a4;
      if (a6 > 3)
      {
        v53 = (a6 - 4);
        v54 = *v9;
        v55 = (v53 & 0x7FFFFFFC) + 5;
        if (v55 <= a6)
        {
          v55 = a6;
        }

        v56 = v55 - (v53 & 0x7FFFFFFC) - 4;
        v57 = v56 & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_lane_s64(v54, 0);
        v59 = vdupq_lane_s64(v10, 0);
        v60 = a2 + 8 * v7 - 8;
        v61 = 8 * (v6 / 2 + 1);
        result = (a3 + 4);
        v62.i64[0] = 0xFFFF0000FFFFLL;
        v62.i64[1] = 0xFFFF0000FFFFLL;
        do
        {
          v63 = 0;
          v64 = v42;
          v65 = *v11;
          v66 = (*v11 + 4);
          v67 = result;
          v68 = 4;
          do
          {
            v69 = v68;
            v70 = v66;
            v71 = v67;
            v72 = &v65[v63];
            v73 = vmlaq_f64(v59, v72[1], v58);
            v74 = vmlaq_f64(v59, *v72, v58);
            if (v6 >= 2)
            {
              v75 = 8;
              v76 = v60;
              do
              {
                v77 = &v11[v75 / 8][v63];
                v78 = *v76--;
                v79 = (v78 + 8 * v63);
                v80 = v9[v75 / 8];
                v73 = vmlaq_n_f64(v73, vaddq_f64(v77[1], v79[1]), v80);
                v74 = vmlaq_n_f64(v74, vaddq_f64(*v77, *v79), v80);
                v75 += 8;
              }

              while (v61 != v75);
            }

            *&a3[v63] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v74)), vcvtq_s64_f64(vrndxq_f64(v73))), 0), v62));
            v63 += 4;
            v68 = v69 + 4;
            v66 = &v70[2];
            v67 = &v71->u64[1];
          }

          while (v63 <= v53);
          if (v63 < a6)
          {
            if (v6 >= 2)
            {
              do
              {
                v88 = *&v10 + *&v54 * v65[v69];
                v89 = 8;
                v90 = v60;
                do
                {
                  v91 = *v90--;
                  v88 = v88 + v9[v89 / 8] * (v11[v89 / 8][v69] + *(v91 + 8 * v69));
                  v89 += 8;
                }

                while (v61 != v89);
                v92 = rint(v88);
                v93 = v92 & ~(v92 >> 31);
                if (v93 >= 0xFFFF)
                {
                  LOWORD(v93) = -1;
                }

                a3[v69++] = v93;
              }

              while (v69 < a6);
            }

            else
            {
              if (v56 < 8)
              {
                goto LABEL_99;
              }

              v69 += v57;
              v81 = v56 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v82 = v70[2];
                v83 = v70[3];
                v85 = *v70;
                v84 = v70[1];
                v70 += 4;
                *v71++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v59, v85, v58))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v59, v84, v58)))), 0), v62), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v59, v82, v58))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v59, v83, v58)))), 0), v62));
                v81 -= 8;
              }

              while (v81);
              if (v56 != v57)
              {
LABEL_99:
                do
                {
                  v86 = rint(*&v10 + *&v54 * v65[v69]);
                  v87 = v86 & ~(v86 >> 31);
                  if (v87 >= 0xFFFF)
                  {
                    LOWORD(v87) = -1;
                  }

                  a3[v69++] = v87;
                }

                while (v69 < a6);
              }
            }
          }

          a3 = (a3 + v43);
          ++v11;
          v42 = v64 - 1;
          v60 += 8;
          result += v43;
        }

        while (v64);
      }

      else if (a6 >= 1)
      {
        v44 = *v9;
        if (v6 >= 2)
        {
          v94 = a2 + 8 * v7 - 8;
          v95 = 8 * (v7 + 1);
          do
          {
            v96 = v42;
            v97 = *v11;
            v98 = *&v10 + v44 * **v11;
            v99 = 8;
            v100 = v94;
            do
            {
              result = v11[v99 / 8];
              v101 = *v100--;
              v98 = v98 + v9[v99 / 8] * (*result + *v101);
              v99 += 8;
            }

            while (v95 != v99);
            v102 = rint(v98);
            v103 = v102 & ~(v102 >> 31);
            if (v103 >= 0xFFFF)
            {
              LOWORD(v103) = -1;
            }

            *a3 = v103;
            if (a6 != 1)
            {
              v104 = *&v10 + v44 * v97[1];
              v105 = 0x1FFFFFFFFFFFFFFFLL;
              v106 = 8;
              do
              {
                result = v11[v105];
                v104 = v104 + v9[v106 / 8] * (v11[v106 / 8][1] + *(result + 8));
                v106 += 8;
                --v105;
              }

              while (v95 != v106);
              v107 = rint(v104);
              v108 = v107 & ~(v107 >> 31);
              if (v108 >= 0xFFFF)
              {
                LOWORD(v108) = -1;
              }

              a3[1] = v108;
              if (a6 != 2)
              {
                v109 = *&v10 + v44 * v97[2];
                v110 = 0x1FFFFFFFFFFFFFFFLL;
                v111 = 8;
                do
                {
                  v109 = v109 + v9[v111 / 8] * (v11[v111 / 8][2] + v11[v110][2]);
                  v111 += 8;
                  --v110;
                }

                while (v95 != v111);
                v112 = rint(v109);
                v113 = v112 & ~(v112 >> 31);
                if (v113 >= 0xFFFF)
                {
                  LOWORD(v113) = -1;
                }

                a3[2] = v113;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            --v42;
            v94 += 8;
          }

          while (v96);
        }

        else
        {
          v45 = a3 + 2;
          do
          {
            v46 = *v11;
            v47 = rint(*&v10 + v44 * **v11);
            v48 = v47 & ~(v47 >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            *(v45 - 2) = v48;
            if (a6 != 1)
            {
              v49 = rint(*&v10 + v44 * v46[1]);
              v50 = v49 & ~(v49 >> 31);
              if (v50 >= 0xFFFF)
              {
                LOWORD(v50) = -1;
              }

              *(v45 - 1) = v50;
              if (a6 != 2)
              {
                v51 = rint(*&v10 + v44 * v46[2]);
                v52 = v51 & ~(v51 >> 31);
                if (v52 >= 0xFFFF)
                {
                  LOWORD(v52) = -1;
                }

                *v45 = v52;
              }
            }

            ++v11;
            v45 = (v45 + a4);
            --a5;
          }

          while (a5);
        }
      }
    }
  }

  else if (a5)
  {
    v12 = rint(*&v10);
    v13 = v12 & ~(v12 >> 31);
    if (v13 >= 0xFFFF)
    {
      v13 = 0xFFFF;
    }

    v14 = a4;
    v15 = vdupq_n_s16(v13);
    v16 = vdupq_lane_s64(v10, 0);
    v17 = a2 + 8 * v7 - 8;
    v18 = 8 * (v6 / 2 + 1);
    v19.i64[0] = 0xFFFF0000FFFFLL;
    v19.i64[1] = 0xFFFF0000FFFFLL;
    while (a6 < 4)
    {
      result = 0;
      if (a6 > 0)
      {
        goto LABEL_17;
      }

LABEL_6:
      a3 = (a3 + v14);
      ++v11;
      v17 += 8;
      if (!--a5)
      {
        return result;
      }
    }

    result = 0;
    do
    {
      v20 = *v15.i8;
      if (v6 >= 2)
      {
        v21 = 8;
        v22 = v17;
        v23 = v16;
        v24 = v16;
        do
        {
          v25 = &v11[v21 / 8][result];
          v26 = *v22--;
          v27 = (v26 + 8 * result);
          v28 = v9[v21 / 8];
          v24 = vmlaq_n_f64(v24, vsubq_f64(v25[1], v27[1]), v28);
          v23 = vmlaq_n_f64(v23, vsubq_f64(*v25, *v27), v28);
          v21 += 8;
        }

        while (v18 != v21);
        v20 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v23)), vcvtq_s64_f64(vrndxq_f64(v24))), 0), v19));
      }

      *&a3[result] = v20;
      result += 4;
    }

    while (result <= a6 - 4);
    result = result;
    if (result >= a6)
    {
      goto LABEL_6;
    }

LABEL_17:
    if (v6 >= 2)
    {
      do
      {
        v31 = 8;
        v32 = v17;
        v33 = *&v10;
        do
        {
          v34 = *v32--;
          v33 = v33 + v9[v31 / 8] * (v11[v31 / 8][result] - *(v34 + 8 * result));
          v31 += 8;
        }

        while (v18 != v31);
        v35 = rint(v33);
        v36 = v35 & ~(v35 >> 31);
        if (v36 >= 0xFFFF)
        {
          LOWORD(v36) = -1;
        }

        a3[result++] = v36;
      }

      while (result != a6);
      goto LABEL_6;
    }

    v29 = a6 - result;
    if (v29 < 4)
    {
      v30 = result;
      goto LABEL_37;
    }

    if (v29 >= 0x10)
    {
      v37 = v29 & 0xFFFFFFFFFFFFFFF0;
      v38 = result;
      v39 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v40 = &a3[v38];
        *v40 = v15;
        v40[1] = v15;
        v38 += 16;
        v39 -= 16;
      }

      while (v39);
      if (v29 == v37)
      {
        goto LABEL_6;
      }

      if ((v29 & 0xC) == 0)
      {
        v30 = v37 + result;
        do
        {
LABEL_37:
          a3[v30++] = v13;
        }

        while (a6 != v30);
        goto LABEL_6;
      }
    }

    else
    {
      v37 = 0;
    }

    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + result;
    v41 = v37 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    result = 2 * (v37 + result);
    do
    {
      *(a3 + result) = v15.i64[0];
      result += 8;
      v41 += 4;
    }

    while (v41);
    if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

  return result;
}

uint64_t sub_100323FA4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100324028(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100324108(a1, a2, a3, a5);
  *v7 = off_100479CE8;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_1003240E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100324390(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100324108(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479D48;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v21) = 33619968;
  v22 = a1 + 16;
  v23 = 0;
  sub_10022B754(a2, &v21);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 116) = rint(a4);
  if ((*(a1 + 16) & 0xFFF) != 4 || v19 != 1 && v18 != 1)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v21, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100324390(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100324440(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003244F0(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_1003245C0(uint64_t result, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = *(result + 32);
  v8 = (v6 + (v6 >> 31)) >> 1;
  v9 = (v7 + 4 * (v6 / 2));
  v10 = *(result + 116);
  v11 = (a2 + 8 * (v6 / 2));
  if (*(result + 120))
  {
    if (!a5)
    {
      return result;
    }

    v47 = a5 - 1;
    v156 = a4;
    if (a6 <= 3)
    {
      if (a6 >= 1)
      {
        v48 = *v9;
        if (v6 >= 2)
        {
          v103 = (v6 / 2 + 1);
          if (v8 >= 2)
          {
            v112 = v8;
            v113 = v8 & 0x3FFFFFFE;
            v114 = v8 | 1;
            v115 = a2 + 8 * v8;
            v116 = (v115 - 8);
            result = v7 + 4 * v8 + 8;
            v117 = (v115 + 16);
            do
            {
              v119 = 0;
              v120 = v47;
              v121 = *v11;
              v122 = v10 + **v11 * v48;
              v123 = v117;
              v124 = result;
              v125 = v113;
              v126 = v116;
              do
              {
                v122 += (**v126 + **(v123 - 1)) * *(v124 - 1);
                v119 += (**(v126 - 1) + **v123) * *v124;
                v126 -= 2;
                v124 += 2;
                v123 += 2;
                v125 -= 2;
              }

              while (v125);
              v127 = v119 + v122;
              if (v113 != v112)
              {
                v128 = -1 * v114;
                v129 = v114;
                do
                {
                  v127 += (*v11[v128] + *v11[v129]) * v9[v129];
                  ++v129;
                  --v128;
                }

                while (v103 != v129);
              }

              if (v127 <= -32768)
              {
                v130 = -32768;
              }

              else
              {
                v130 = v127;
              }

              if (v130 >= 0x7FFF)
              {
                LOWORD(v130) = 0x7FFF;
              }

              *a3 = v130;
              if (a6 != 1)
              {
                v131 = 0;
                v132 = v10 + v121[1] * v48;
                v133 = result;
                v134 = v117;
                v135 = v113;
                v136 = v116;
                do
                {
                  v132 += ((*v136)[1] + (*(v134 - 1))[1]) * *(v133 - 1);
                  v131 += ((*(v136 - 1))[1] + (*v134)[1]) * *v133;
                  v136 -= 2;
                  v134 += 2;
                  v133 += 2;
                  v135 -= 2;
                }

                while (v135);
                v137 = v131 + v132;
                if (v113 != v112)
                {
                  v138 = -1 * v114;
                  v139 = v114;
                  do
                  {
                    v137 += (*(v11[v138] + 4) + *(v11[v139] + 4)) * v9[v139];
                    ++v139;
                    --v138;
                  }

                  while (v103 != v139);
                }

                if (v137 <= -32768)
                {
                  v140 = -32768;
                }

                else
                {
                  v140 = v137;
                }

                if (v140 >= 0x7FFF)
                {
                  LOWORD(v140) = 0x7FFF;
                }

                a3[1] = v140;
                if (a6 != 2)
                {
                  v141 = 0;
                  v142 = v10 + v121[2] * v48;
                  v143 = result;
                  v144 = v117;
                  v145 = v113;
                  v146 = v116;
                  do
                  {
                    v142 += ((*v146)[2] + (*(v144 - 1))[2]) * *(v143 - 1);
                    v141 += ((*(v146 - 1))[2] + (*v144)[2]) * *v143;
                    v146 -= 2;
                    v144 += 2;
                    v143 += 2;
                    v145 -= 2;
                  }

                  while (v145);
                  v147 = v141 + v142;
                  if (v113 != v112)
                  {
                    v148 = -1 * v114;
                    v149 = v114;
                    do
                    {
                      v147 += (*(v11[v148] + 8) + *(v11[v149] + 8)) * v9[v149];
                      ++v149;
                      --v148;
                    }

                    while (v103 != v149);
                  }

                  if (v147 <= -32768)
                  {
                    v118 = -32768;
                  }

                  else
                  {
                    v118 = v147;
                  }

                  if (v118 >= 0x7FFF)
                  {
                    LOWORD(v118) = 0x7FFF;
                  }

                  a3[2] = v118;
                }
              }

              a3 = (a3 + a4);
              ++v11;
              --v47;
              ++v116;
              ++v117;
            }

            while (v120);
          }

          else
          {
            do
            {
              v104 = v47;
              v105 = *v11;
              LODWORD(result) = v10 + **v11 * v48;
              v106 = 0x1FFFFFFFFFFFFFFFLL;
              v107 = 1;
              do
              {
                LODWORD(result) = result + (*v11[v106] + *v11[v107]) * v9[v107];
                ++v107;
                --v106;
              }

              while (v103 != v107);
              if (result <= -32768)
              {
                LODWORD(result) = -32768;
              }

              if (result >= 0x7FFF)
              {
                result = 0x7FFFLL;
              }

              else
              {
                result = result;
              }

              *a3 = result;
              if (a6 != 1)
              {
                LODWORD(result) = v10 + v105[1] * v48;
                v108 = 0x1FFFFFFFFFFFFFFFLL;
                v109 = 1;
                do
                {
                  LODWORD(result) = result + (*(v11[v108] + 4) + *(v11[v109] + 4)) * v9[v109];
                  ++v109;
                  --v108;
                }

                while (v103 != v109);
                if (result <= -32768)
                {
                  LODWORD(result) = -32768;
                }

                if (result >= 0x7FFF)
                {
                  result = 0x7FFFLL;
                }

                else
                {
                  result = result;
                }

                a3[1] = result;
                if (a6 != 2)
                {
                  v110 = v10 + v105[2] * v48;
                  result = -8;
                  v111 = 1;
                  do
                  {
                    v110 += (*(*(v11 + result) + 8) + *(v11[v111] + 8)) * v9[v111];
                    ++v111;
                    result -= 8;
                  }

                  while (v103 != v111);
                  if (v110 <= -32768)
                  {
                    v110 = -32768;
                  }

                  if (v110 >= 0x7FFF)
                  {
                    LOWORD(v110) = 0x7FFF;
                  }

                  a3[2] = v110;
                }
              }

              a3 = (a3 + v156);
              ++v11;
              --v47;
            }

            while (v104);
          }
        }

        else
        {
          v49 = a3 + 2;
          do
          {
            v50 = *v11;
            v51 = v10 + **v11 * v48;
            if (v51 <= -32768)
            {
              v51 = -32768;
            }

            if (v51 >= 0x7FFF)
            {
              LOWORD(v51) = 0x7FFF;
            }

            *(v49 - 2) = v51;
            if (a6 != 1)
            {
              v52 = v10 + v50[1] * v48;
              if (v52 <= -32768)
              {
                v52 = -32768;
              }

              if (v52 >= 0x7FFF)
              {
                LOWORD(v52) = 0x7FFF;
              }

              *(v49 - 1) = v52;
              if (a6 != 2)
              {
                v53 = v10 + v50[2] * v48;
                if (v53 <= -32768)
                {
                  v53 = -32768;
                }

                if (v53 >= 0x7FFF)
                {
                  LOWORD(v53) = 0x7FFF;
                }

                *v49 = v53;
              }
            }

            ++v11;
            v49 = (v49 + a4);
            --a5;
          }

          while (a5);
        }
      }

      return result;
    }

    v54 = (a6 - 4);
    v55 = (v7 + 4 * v8);
    v56 = *v55;
    v159 = v55 + 2;
    v57 = (v6 / 2 + 1);
    v58 = v54 & 0x7FFFFFFC;
    v59 = v58 + 5;
    if (v58 + 5 <= a6)
    {
      v59 = a6;
    }

    v60 = v59 - 4;
    v61 = v59 - 4 - v58;
    v62 = vdupq_n_s32(v56);
    v63 = vdupq_n_s32(v10);
    v154 = v61 & 0xFFFFFFFFFFFFFFF0;
    v155 = v61;
    v152 = v61 - (v59 & 3);
    v153 = v59 & 3;
    v64 = a2 + 8 * v8;
    result = v64 - 8;
    v65 = (v64 + 16);
    v66 = (a3 + 12);
    v150 = v61 & 0xC;
    v151 = v60 - v153 - v58;
    while (1)
    {
      v67 = 0;
      v157 = v47;
      v68 = *v11;
      v69 = *v11 + 48;
      v70 = v66;
      v71 = 4;
      do
      {
        v72 = v71;
        v73 = v69;
        v74 = v70;
        v75 = vmlaq_s32(v63, *&v68[v67], v62);
        if (v6 >= 2)
        {
          v76 = result;
          v77 = 1;
          do
          {
            v78 = *v76--;
            v79 = &v9[v77];
            v80 = vld1q_dup_f32(v79);
            v75 = vmlaq_s32(v75, vaddq_s32(*(v78 + 4 * v67), *(v11[v77++] + 4 * v67)), v80);
          }

          while (v57 != v77);
        }

        *&a3[v67] = vqmovn_s32(v75);
        v67 += 4;
        v71 = v72 + 4;
        v69 += 16;
        v70 = &v74->u64[1];
      }

      while (v67 <= v54);
      if (v67 >= a6)
      {
        goto LABEL_74;
      }

      if (v6 >= 2)
      {
        break;
      }

      if (v155 < 4)
      {
        v81 = v72;
        goto LABEL_108;
      }

      if (v155 >= 0x10)
      {
        v92 = v154;
        do
        {
          v94 = v73[-2];
          v93 = v73[-1];
          v96 = *v73;
          v95 = v73[1];
          v73 += 4;
          v74[-1] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v63, v94, v62)), vmlaq_s32(v63, v93, v62));
          *v74 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v63, v96, v62)), vmlaq_s32(v63, v95, v62));
          v74 += 2;
          v92 -= 16;
        }

        while (v92);
        if (v155 == v154)
        {
          goto LABEL_74;
        }

        v91 = v154;
        if (!v150)
        {
          v81 = v72 + v154;
          do
          {
LABEL_108:
            v102 = v10 + v68[v81] * v56;
            if (v102 <= -32768)
            {
              v102 = -32768;
            }

            if (v102 >= 0x7FFF)
            {
              LOWORD(v102) = 0x7FFF;
            }

            a3[v81++] = v102;
          }

          while (v81 < a6);
          goto LABEL_74;
        }
      }

      else
      {
        v91 = 0;
      }

      v81 = v72 + v152;
      v97 = v151 - v91;
      v98 = v91 + v72;
      v99 = &v68[v91 + v72];
      v100 = v98;
      do
      {
        v101 = *v99++;
        *&a3[v100] = vqmovn_s32(vmlaq_s32(v63, v101, v62));
        v100 += 4;
        v97 -= 4;
      }

      while (v97);
      if (v153)
      {
        goto LABEL_108;
      }

LABEL_74:
      a3 = (a3 + a4);
      ++v11;
      v47 = v157 - 1;
      result += 8;
      ++v65;
      v66 = (v66 + a4);
      if (!v157)
      {
        return result;
      }
    }

    while (1)
    {
      v83 = v10 + v68[v72] * v56;
      if (v57 < 3)
      {
        break;
      }

      v85 = 0;
      v86 = v65;
      v87 = v159;
      v88 = (v57 - 1) & 0xFFFFFFFFFFFFFFFELL;
      v89 = result;
      do
      {
        v83 += (*(*v89 + 4 * v72) + *(*(v86 - 1) + 4 * v72)) * *(v87 - 1);
        v85 += (*(*(v89 - 1) + 4 * v72) + *(*v86 + 4 * v72)) * *v87;
        v89 -= 2;
        v87 += 2;
        v86 += 2;
        v88 -= 2;
      }

      while (v88);
      v83 += v85;
      v84 = (v57 - 1) | 1;
      if (v57 - 1 != ((v57 - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_96;
      }

LABEL_85:
      if (v83 <= -32768)
      {
        v82 = -32768;
      }

      else
      {
        v82 = v83;
      }

      if (v82 >= 0x7FFF)
      {
        LOWORD(v82) = 0x7FFF;
      }

      a3[v72++] = v82;
      if (v72 >= a6)
      {
        goto LABEL_74;
      }
    }

    v84 = 1;
LABEL_96:
    v90 = -1 * v84;
    do
    {
      v83 += (*(v11[v90] + 4 * v72) + *(v11[v84] + 4 * v72)) * v9[v84];
      ++v84;
      --v90;
    }

    while (v57 != v84);
    goto LABEL_85;
  }

  if (a5)
  {
    v12 = a6 - 4;
    if (v10 <= -32768)
    {
      v13 = -32768;
    }

    else
    {
      v13 = *(result + 116);
    }

    if (v13 >= 0x7FFF)
    {
      v13 = 0x7FFF;
    }

    v14 = (v6 / 2 + 1);
    v15 = vdupq_n_s16(v13);
    v16 = vdupq_n_s32(v10);
    v17 = a2 + 8 * v8;
    v18 = (v17 - 8);
    v19 = v7 + 4 * v8 + 8;
    v20 = (v17 + 16);
    while (a6 < 4)
    {
      v21 = 0;
      if (a6 > 0)
      {
        goto LABEL_20;
      }

LABEL_9:
      a3 = (a3 + a4);
      ++v11;
      ++v18;
      ++v20;
      if (!--a5)
      {
        return result;
      }
    }

    v21 = 0;
    do
    {
      v22 = *v15.i8;
      if (v6 >= 2)
      {
        v23 = v18;
        v24 = 1;
        v25 = v16;
        do
        {
          v26 = *v23--;
          v27 = &v9[v24];
          v28 = vld1q_dup_f32(v27);
          v25 = vmlaq_s32(v25, vsubq_s32(*(v11[v24++] + 4 * v21), *(v26 + 4 * v21)), v28);
        }

        while (v14 != v24);
        v22 = vqmovn_s32(v25);
      }

      *&a3[v21] = v22;
      v21 += 4;
    }

    while (v21 <= v12);
    v21 = v21;
    if (v21 >= a6)
    {
      goto LABEL_9;
    }

LABEL_20:
    if (v6 < 2)
    {
      v29 = a6 - v21;
      if (v29 < 4)
      {
        v30 = v21;
        goto LABEL_48;
      }

      if (v29 >= 0x10)
      {
        v41 = v29 & 0xFFFFFFFFFFFFFFF0;
        v42 = v21;
        v43 = v29 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v44 = &a3[v42];
          *v44 = v15;
          v44[1] = v15;
          v42 += 16;
          v43 -= 16;
        }

        while (v43);
        if (v29 == v41)
        {
          goto LABEL_9;
        }

        if ((v29 & 0xC) == 0)
        {
          v30 = v41 + v21;
          do
          {
LABEL_48:
            a3[v30++] = v13;
          }

          while (a6 != v30);
          goto LABEL_9;
        }
      }

      else
      {
        v41 = 0;
      }

      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + v21;
      v45 = v41 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
      v46 = v41 + v21;
      do
      {
        *&a3[v46] = v15.i64[0];
        v46 += 4;
        v45 += 4;
      }

      while (v45);
      if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_9;
      }

      goto LABEL_48;
    }

    while (v14 >= 3)
    {
      v34 = 0;
      v35 = v20;
      v36 = v19;
      v37 = (v14 - 1) & 0xFFFFFFFFFFFFFFFELL;
      v38 = v18;
      v39 = v10;
      do
      {
        result = *(*(v38 - 1) + 4 * v21);
        v39 += (*(*(v35 - 1) + 4 * v21) - *(*v38 + 4 * v21)) * *(v36 - 1);
        v34 += (*(*v35 + 4 * v21) - result) * *v36;
        v38 -= 2;
        v36 += 2;
        v35 += 2;
        v37 -= 2;
      }

      while (v37);
      v33 = v34 + v39;
      v32 = (v14 - 1) | 1;
      if (v14 - 1 != ((v14 - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_34;
      }

LABEL_23:
      if (v33 <= -32768)
      {
        v31 = -32768;
      }

      else
      {
        v31 = v33;
      }

      if (v31 >= 0x7FFF)
      {
        LOWORD(v31) = 0x7FFF;
      }

      a3[v21++] = v31;
      if (v21 == a6)
      {
        goto LABEL_9;
      }
    }

    v32 = 1;
    v33 = v10;
LABEL_34:
    v40 = -1 * v32;
    do
    {
      result = *(v11[v40] + 4 * v21);
      v33 += (*(v11[v32] + 4 * v21) - result) * v9[v32];
      ++v32;
      --v40;
    }

    while (v14 != v32);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_100325084(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100325134(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100325204(uint64_t result, void *a2, _WORD *a3, int a4, int a5, int a6)
{
  if (!a5)
  {
    return result;
  }

  v6 = *(result + 32);
  v7 = *(result + 116);
  v8 = a5 - 1;
  v9 = a4;
  v10 = *(result + 8);
  if (a6 > 3)
  {
    v17 = (a6 - 4);
    v18 = *v6;
    v19 = v10 - 1;
    v20 = v17 & 0x7FFFFFFC;
    if (v20 + 5 <= a6)
    {
      v21 = a6;
    }

    else
    {
      v21 = (v17 & 0x7FFFFFFC) + 5;
    }

    v22 = v21 - 4 - v20;
    v23 = vdupq_n_s32(v18);
    v24 = vdupq_n_s32(v7);
    v96 = v22 & 0xFFFFFFFFFFFFFFF0;
    v97 = v22;
    v92 = v22 & 0xC;
    v94 = v22 - (v21 & 3);
    v95 = v21 & 3;
    v25 = (a3 + 12);
    v93 = v21 - 4 - v95 - v20;
    for (i = a2 + 2; ; ++i)
    {
      v27 = 0;
      v28 = v8;
      v29 = *a2;
      v30 = *a2 + 48;
      v31 = v25;
      v32 = 4;
      do
      {
        v33 = v32;
        v34 = v30;
        v35 = v31;
        v36 = vmlaq_s32(v24, *&v29[v27], v23);
        if (v10 >= 2)
        {
          for (j = 1; j != v10; ++j)
          {
            v38 = &v6[j];
            v39 = vld1q_dup_f32(v38);
            v36 = vmlaq_s32(v36, *(a2[j] + 4 * v27), v39);
          }
        }

        *&a3[v27] = vqmovn_s32(v36);
        v27 += 4;
        v32 += 4;
        v30 += 16;
        v31 = &v35->u64[1];
      }

      while (v27 <= v17);
      if (v27 >= a6)
      {
        goto LABEL_29;
      }

      if (v10 >= 2)
      {
        break;
      }

      if (v97 < 4)
      {
        v40 = v33;
        goto LABEL_62;
      }

      if (v97 >= 0x10)
      {
        v49 = v96;
        do
        {
          v51 = v34[-2];
          v50 = v34[-1];
          v53 = *v34;
          v52 = v34[1];
          v34 += 4;
          v35[-1] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v24, v51, v23)), vmlaq_s32(v24, v50, v23));
          *v35 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v24, v53, v23)), vmlaq_s32(v24, v52, v23));
          v35 += 2;
          v49 -= 16;
        }

        while (v49);
        if (v97 == v96)
        {
          goto LABEL_29;
        }

        v48 = v96;
        if (!v92)
        {
          v40 = v33 + v96;
          do
          {
LABEL_62:
            v59 = v7 + v29[v40] * v18;
            if (v59 <= -32768)
            {
              v59 = -32768;
            }

            if (v59 >= 0x7FFF)
            {
              LOWORD(v59) = 0x7FFF;
            }

            a3[v40++] = v59;
          }

          while (v40 < a6);
          goto LABEL_29;
        }
      }

      else
      {
        v48 = 0;
      }

      v40 = v33 + v94;
      v54 = v93 - v48;
      v55 = v48 + v33;
      v56 = &v29[v55];
      v57 = v55;
      do
      {
        v58 = *v56++;
        *&a3[v57] = vqmovn_s32(vmlaq_s32(v24, v58, v23));
        v57 += 4;
        v54 -= 4;
      }

      while (v54);
      if (v95)
      {
        goto LABEL_62;
      }

LABEL_29:
      a3 = (a3 + v9);
      ++a2;
      v8 = v28 - 1;
      v25 = (v25 + v9);
      if (!v28)
      {
        return result;
      }
    }

    while (1)
    {
      v42 = v7 + v29[v33] * v18;
      if (v10 == 2)
      {
        break;
      }

      v44 = 0;
      v45 = i;
      v46 = v6 + 2;
      v47 = v19 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        result = *(*(v45 - 1) + 4 * v33);
        v42 += result * *(v46 - 1);
        v44 += *(*v45 + 4 * v33) * *v46;
        v46 += 2;
        v45 += 2;
        v47 -= 2;
      }

      while (v47);
      v42 += v44;
      k = v19 | 1;
      if (v19 != (v19 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_51;
      }

LABEL_40:
      if (v42 <= -32768)
      {
        v41 = -32768;
      }

      else
      {
        v41 = v42;
      }

      if (v41 >= 0x7FFF)
      {
        LOWORD(v41) = 0x7FFF;
      }

      a3[v33++] = v41;
      if (v33 >= a6)
      {
        goto LABEL_29;
      }
    }

    for (k = 1; k != v10; ++k)
    {
LABEL_51:
      v42 += *(a2[k] + 4 * v33) * v6[k];
    }

    goto LABEL_40;
  }

  if (a6 >= 1)
  {
    v11 = *v6;
    if (v10 <= 1)
    {
      v60 = a3 + 2;
      do
      {
        v61 = *a2;
        v62 = v7 + **a2 * v11;
        if (v62 <= -32768)
        {
          v62 = -32768;
        }

        if (v62 >= 0x7FFF)
        {
          LOWORD(v62) = 0x7FFF;
        }

        *(v60 - 2) = v62;
        if (a6 != 1)
        {
          v63 = v7 + v61[1] * v11;
          if (v63 <= -32768)
          {
            v63 = -32768;
          }

          if (v63 >= 0x7FFF)
          {
            LOWORD(v63) = 0x7FFF;
          }

          *(v60 - 1) = v63;
          if (a6 != 2)
          {
            v64 = v7 + v61[2] * v11;
            if (v64 <= -32768)
            {
              v64 = -32768;
            }

            if (v64 >= 0x7FFF)
            {
              LOWORD(v64) = 0x7FFF;
            }

            *v60 = v64;
          }
        }

        ++a2;
        v60 = (v60 + a4);
        --a5;
      }

      while (a5);
    }

    else if (v10 == 2)
    {
      v12 = v6[1];
      v13 = a2 + 1;
      v14 = a3 + 2;
      do
      {
        v15 = *(v13 - 1);
        LODWORD(result) = v7 + *v15 * v11 + **v13 * v12;
        if (result <= -32768)
        {
          LODWORD(result) = -32768;
        }

        if (result >= 0x7FFF)
        {
          result = 0x7FFFLL;
        }

        else
        {
          result = result;
        }

        *(v14 - 2) = result;
        if (a6 != 1)
        {
          LODWORD(result) = v7 + v15[1] * v11 + *(*v13 + 4) * v6[1];
          if (result <= -32768)
          {
            LODWORD(result) = -32768;
          }

          if (result >= 0x7FFF)
          {
            result = 0x7FFFLL;
          }

          else
          {
            result = result;
          }

          *(v14 - 1) = result;
          if (a6 != 2)
          {
            result = v6[1];
            v16 = v7 + v15[2] * v11 + *(*v13 + 8) * result;
            if (v16 <= -32768)
            {
              v16 = -32768;
            }

            if (v16 >= 0x7FFF)
            {
              LOWORD(v16) = 0x7FFF;
            }

            *v14 = v16;
          }
        }

        ++v13;
        v14 = (v14 + a4);
        --a5;
      }

      while (a5);
    }

    else
    {
      v65 = v10 - 1;
      v66 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
      v67 = (a2 + 2);
      result = 4294934528;
      do
      {
        v69 = 0;
        v70 = v8;
        v71 = *a2;
        v72 = v7 + **a2 * v11;
        v73 = v67;
        v74 = v6 + 2;
        v75 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v72 += **(v73 - 1) * *(v74 - 1);
          v69 += **v73 * *v74;
          v74 += 2;
          v73 += 2;
          v75 -= 2;
        }

        while (v75);
        v76 = v69 + v72;
        if (v65 == v66)
        {
          v77 = a6;
        }

        else
        {
          v78 = (v10 - 1) | 1;
          v77 = a6;
          do
          {
            v76 += *a2[v78] * v6[v78];
            ++v78;
          }

          while (v10 != v78);
        }

        if (v76 <= -32768)
        {
          v76 = -32768;
        }

        if (v76 >= 0x7FFF)
        {
          LOWORD(v76) = 0x7FFF;
        }

        *a3 = v76;
        if (v77 != 1)
        {
          v79 = 0;
          v80 = v7 + v71[1] * v11;
          v81 = v6 + 2;
          v82 = v67;
          v83 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v80 += (*(v82 - 1))[1] * *(v81 - 1);
            v79 += (*v82)[1] * *v81;
            v82 += 2;
            v81 += 2;
            v83 -= 2;
          }

          while (v83);
          v84 = v79 + v80;
          if (v65 != v66)
          {
            v85 = (v10 - 1) | 1;
            do
            {
              v84 += *(a2[v85] + 4) * v6[v85];
              ++v85;
            }

            while (v10 != v85);
          }

          if (v84 <= -32768)
          {
            v84 = -32768;
          }

          if (v84 >= 0x7FFF)
          {
            LOWORD(v84) = 0x7FFF;
          }

          a3[1] = v84;
          if (v77 != 2)
          {
            v86 = 0;
            v87 = v7 + v71[2] * v11;
            v88 = v6 + 2;
            v89 = v67;
            v90 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v87 += (*(v89 - 1))[2] * *(v88 - 1);
              v86 += (*v89)[2] * *v88;
              v89 += 2;
              v88 += 2;
              v90 -= 2;
            }

            while (v90);
            v68 = v86 + v87;
            if (v65 != v66)
            {
              v91 = (v10 - 1) | 1;
              do
              {
                v68 += *(a2[v91] + 8) * v6[v91];
                ++v91;
              }

              while (v10 != v91);
            }

            if (v68 <= -32768)
            {
              v68 = -32768;
            }

            if (v68 >= 0x7FFF)
            {
              LOWORD(v68) = 0x7FFF;
            }

            a3[2] = v68;
          }
        }

        a3 = (a3 + a4);
        ++a2;
        --v8;
        ++v67;
      }

      while (v70);
    }
  }

  return result;
}

uint64_t sub_1003258A0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100325924(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = sub_100325A04(a1, a2, a3, a7, a5, a6);
  *v9 = off_100479DB8;
  *(v9 + 236) = a4;
  if ((a4 & 3) == 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    qmemcpy(sub_1002A80E0(v11, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v11, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_1003259DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100325CE0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100325A04(uint64_t a1, uint64_t a2, int a3, double a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = -1;
  *a1 = off_100479E18;
  *(a1 + 16) = 1124007936;
  v11 = (a1 + 16);
  *(a1 + 20) = 0u;
  v12 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  v13 = (a1 + 24);
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 128) = 1124007936;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 192) = a1 + 136;
  *(a1 + 200) = a1 + 208;
  *(a1 + 216) = 0;
  *(a1 + 120) = 0;
  v14 = a1 + 120;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v11 == a2)
    {
      goto LABEL_17;
    }

    v15 = *(a2 + 56);
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      v16 = *(a1 + 72);
      if (v16)
      {
        if (atomic_fetch_add((v16 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v11 = *a2;
      v20 = *(a2 + 4);
      if (v20 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v20;
        *(a1 + 24) = *(a2 + 8);
        v21 = *(a2 + 72);
        v22 = *(a1 + 88);
        *v22 = *v21;
        v22[1] = v21[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v17 = 0;
      v18 = *(a1 + 80);
      do
      {
        *(v18 + 4 * v17++) = 0;
        v19 = *v12;
      }

      while (v17 < v19);
      *v11 = *a2;
      if (v19 <= 2)
      {
        v20 = *(a2 + 4);
        if (v20 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v11, a2);
    goto LABEL_16;
  }

  LODWORD(v25) = 33619968;
  v26 = a1 + 16;
  v27 = 0;
  sub_10022B754(a2, &v25);
LABEL_17:
  *(a1 + 8) = *(a1 + 24) + *(a1 + 28) - 1;
  *(a1 + 12) = a3;
  v23 = a4;
  *(a1 + 232) = v23;
  sub_100326364(v14, a6);
  if ((*v11 & 0xFFF) != 5 || *v13 != 1 && *(a1 + 28) != 1)
  {
    v25 = 0;
    v26 = 0;
    qmemcpy(sub_1002A80E0(&v25, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v25, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

void sub_100325CA4(_Unwind_Exception *a1)
{
  sub_100308584(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100325CE0(uint64_t a1)
{
  *a1 = off_100479E18;
  v2 = *(a1 + 184);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 128);
  }

  *(a1 + 184) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a1 + 132) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 192);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 132));
  }

  v5 = *(a1 + 200);
  if (v5 != (a1 + 208))
  {
    j__free(v5);
  }

  v6 = *(a1 + 72);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 80);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 20));
  }

  v9 = *(a1 + 88);
  if (v9 != (a1 + 96))
  {
    j__free(v9);
  }

  return a1;
}

void sub_100325E04(uint64_t a1)
{
  sub_100325CE0(a1);

  operator delete();
}

int64_t sub_100325E3C(int64_t result, uint64_t a2, int16x4_t *a3, int a4, int a5, int a6, double a7, double a8)
{
  v9 = *(result + 8);
  v10 = (v9 + (v9 >> 31)) >> 1;
  v11 = (*(result + 32) + 4 * (v9 / 2));
  LODWORD(a8) = *(result + 232);
  v12 = (a2 + 8 * (v9 / 2));
  v71 = result;
  v72 = a6;
  v70 = *&a8;
  if (*(result + 236))
  {
    if (a5)
    {
      v69 = a4;
      v38 = (v9 / 2 + 1);
      v39 = a6 - 4;
      v40 = a6;
      v41 = a2 + 8 * v10 - 8;
      v67 = vdupq_lane_s32(*&a8, 0);
      do
      {
        v74 = a5;
        result = sub_10032677C(v71 + 120, v12, a3, a6);
        if (result <= v39)
        {
          v43 = *v12;
          result = result;
          v42 = vld1q_dup_f32(v11);
          do
          {
            v44 = vmlaq_f32(v67, *(v43 + 4 * result), v42);
            if (v9 >= 2)
            {
              v45 = v41;
              v46 = 1;
              do
              {
                v47 = *v45--;
                v44 = vmlaq_n_f32(v44, vaddq_f32(*(v12[v46] + 4 * result), *(v47 + 4 * result)), v11[v46]);
                ++v46;
              }

              while (v38 != v46);
            }

            *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))));
            result += 4;
          }

          while (result <= v39);
        }

        a6 = v72;
        if (result < v72)
        {
          v42.f32[0] = *v11;
          v48 = *v12;
          v49 = result;
          if (v9 >= 2)
          {
            do
            {
              v60 = v70 + (v42.f32[0] * *(v48 + 4 * v49));
              v61 = v41;
              v62 = 1;
              do
              {
                v63 = *v61--;
                v60 = v60 + (v11[v62] * (*(v12[v62] + 4 * v49) + *(v63 + 4 * v49)));
                ++v62;
              }

              while (v38 != v62);
              v64 = rintf(v60);
              if (v64 <= -32768)
              {
                LODWORD(v64) = -32768;
              }

              if (v64 >= 0x7FFF)
              {
                LOWORD(v64) = 0x7FFF;
              }

              a3->i16[v49++] = v64;
            }

            while (v49 != v40);
          }

          else
          {
            v50 = v40 - result;
            if (v50 < 8)
            {
              goto LABEL_73;
            }

            v51 = vdupq_lane_s32(*v42.f32, 0);
            v52 = (v48 + 4 * result);
            v53 = 2 * result;
            v54 = v50 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v55 = *v52;
              v56 = v52[1];
              v52 += 2;
              v57 = vmlaq_f32(v67, v56, v51);
              v58 = vmlaq_f32(v67, v55, v51);
              *&a3->i8[v53] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL))))));
              v53 += 16;
              v54 -= 8;
            }

            while (v54);
            v49 = (v50 & 0xFFFFFFFFFFFFFFF8) + result;
            if (v50 != (v50 & 0xFFFFFFFFFFFFFFF8))
            {
LABEL_73:
              do
              {
                v59 = rintf(v70 + (v42.f32[0] * *(v48 + 4 * v49)));
                if (v59 <= -32768)
                {
                  LODWORD(v59) = -32768;
                }

                if (v59 >= 0x7FFF)
                {
                  LOWORD(v59) = 0x7FFF;
                }

                a3->i16[v49++] = v59;
              }

              while (v40 != v49);
            }
          }
        }

        a3 = (a3 + v69);
        ++v12;
        v41 += 8;
        a5 = v74 - 1;
      }

      while (v74 != 1);
    }
  }

  else if (a5)
  {
    v13 = rintf(*&a8);
    if (v13 <= -32768)
    {
      LODWORD(v13) = -32768;
    }

    if (v13 >= 0x7FFF)
    {
      v14 = 0x7FFF;
    }

    else
    {
      v14 = v13;
    }

    v68 = a4;
    v15 = (v9 / 2 + 1);
    v16 = a6 - 4;
    v17 = a6;
    v18 = a2 + 8 * v10 - 8;
    v65 = vdupq_n_s16(v14);
    v66 = vdupq_lane_s32(*&a8, 0);
    do
    {
      v73 = a5;
      result = sub_10032677C(v71 + 120, v12, a3, a6);
      if (result <= v16)
      {
        result = result;
        do
        {
          v19 = *v65.i8;
          if (v9 >= 2)
          {
            v20 = v18;
            v21 = 1;
            v22 = v66;
            do
            {
              v23 = *v20--;
              v22 = vmlaq_n_f32(v22, vsubq_f32(*(v12[v21] + 4 * result), *(v23 + 4 * result)), v11[v21]);
              ++v21;
            }

            while (v15 != v21);
            v19 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v22.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v22, v22, 8uLL))))));
          }

          *(a3 + 2 * result) = v19;
          result += 4;
        }

        while (result <= v16);
      }

      a6 = v72;
      if (result >= v72)
      {
        goto LABEL_9;
      }

      v24 = result;
      if (v9 >= 2)
      {
        do
        {
          v28 = v18;
          v29 = 1;
          v30 = v70;
          do
          {
            v31 = *v28--;
            v30 = v30 + (v11[v29] * (*(v12[v29] + 4 * v24) - *(v31 + 4 * v24)));
            ++v29;
          }

          while (v15 != v29);
          v32 = rintf(v30);
          if (v32 <= -32768)
          {
            LODWORD(v32) = -32768;
          }

          if (v32 >= 0x7FFF)
          {
            LOWORD(v32) = 0x7FFF;
          }

          a3->i16[v24++] = v32;
        }

        while (v24 != v17);
        goto LABEL_9;
      }

      v25 = v17 - result;
      if (v25 >= 4)
      {
        if (v25 < 0x10)
        {
          v26 = 0;
          v27 = *v65.i8;
LABEL_34:
          v36 = v26 - (v25 & 0xFFFFFFFFFFFFFFFCLL);
          v37 = 2 * (v26 + result);
          do
          {
            *(a3 + v37) = v27;
            v37 += 8;
            v36 += 4;
          }

          while (v36);
          v24 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + result;
          if (v25 == (v25 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_9;
          }

          goto LABEL_39;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFF0;
        v33 = 2 * result;
        v34 = v25 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v35 = (a3 + v33);
          *v35 = v65;
          v35[1] = v65;
          v33 += 32;
          v34 -= 16;
        }

        while (v34);
        if (v25 == v26)
        {
          goto LABEL_9;
        }

        v27 = *v65.i8;
        if ((v25 & 0xC) != 0)
        {
          goto LABEL_34;
        }

        v24 = v26 + result;
      }

      do
      {
LABEL_39:
        a3->i16[v24++] = v14;
      }

      while (v17 != v24);
LABEL_9:
      a3 = (a3 + v68);
      ++v12;
      v18 += 8;
      a5 = v73 - 1;
    }

    while (v73 != 1);
  }

  return result;
}

uint64_t sub_100326364(uint64_t result, uint64_t a2)
{
  v3 = (a2 + 8);
  *result = *a2;
  v4 = (result + 8);
  if (result != a2)
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      atomic_fetch_add((v5 + 20), 1u);
    }

    v6 = *(result + 64);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      v7 = result;
      sub_100269BC8(result + 8);
      result = v7;
    }

    *(result + 64) = 0;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    if (*(result + 12) <= 0)
    {
      *v4 = *v3;
      v11 = *(a2 + 12);
      if (v11 <= 2)
      {
LABEL_12:
        *(result + 12) = v11;
        *(result + 16) = *(a2 + 16);
        v12 = *(a2 + 80);
        v13 = *(result + 80);
        *v13 = *v12;
        v13[1] = v12[1];
LABEL_15:
        *(result + 24) = *(a2 + 24);
        *(result + 40) = *(a2 + 40);
        *(result + 56) = *(a2 + 56);
        goto LABEL_16;
      }
    }

    else
    {
      v8 = 0;
      v9 = *(result + 72);
      do
      {
        *(v9 + 4 * v8++) = 0;
        v10 = *(result + 12);
      }

      while (v8 < v10);
      *v4 = *v3;
      if (v10 <= 2)
      {
        v11 = *(a2 + 12);
        if (v11 <= 2)
        {
          goto LABEL_12;
        }
      }
    }

    v14 = result;
    sub_100269B58(v4, v3);
    result = v14;
    goto LABEL_15;
  }

LABEL_16:
  *(result + 104) = *(a2 + 104);
  return result;
}

void sub_1003264AC(uint64_t a1)
{
  sub_100325CE0(a1);

  operator delete();
}

int64_t sub_1003264E4(int64_t result, uint64_t *a2, int16x4_t *a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v43 = result;
  if (a5)
  {
    v14 = a5;
    v17 = *(result + 32);
    LODWORD(a13) = *(result + 232);
    v18 = *(result + 8);
    v41 = a4;
    v19 = a6 - 4;
    v20 = a6;
    v42 = *&a13;
    v40 = vdupq_lane_s32(*&a13, 0);
    do
    {
      result = sub_10032677C(v43 + 120, a2, a3, a6);
      if (result <= v19)
      {
        v22 = *a2;
        result = result;
        v21 = vld1q_dup_f32(v17);
        do
        {
          v23 = vmlaq_f32(v40, *(v22 + 4 * result), v21);
          if (v18 >= 2)
          {
            for (i = 1; i != v18; ++i)
            {
              v23 = vmlaq_n_f32(v23, *(a2[i] + 4 * result), v17[i]);
            }
          }

          *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v23.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v23, v23, 8uLL))))));
          result += 4;
        }

        while (result <= v19);
      }

      if (result < a6)
      {
        v21.f32[0] = *v17;
        v25 = *a2;
        v26 = result;
        if (v18 < 2)
        {
          v30 = v20 - result;
          if (v30 <= 7)
          {
            goto LABEL_33;
          }

          v31 = vdupq_lane_s32(*v21.f32, 0);
          v32 = (v25 + 4 * result);
          v33 = 2 * result;
          v34 = v30 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v35 = *v32;
            v36 = v32[1];
            v32 += 2;
            v37 = vmlaq_f32(v40, v36, v31);
            v38 = vmlaq_f32(v40, v35, v31);
            *&a3->i8[v33] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))));
            v33 += 16;
            v34 -= 8;
          }

          while (v34);
          v26 = (v30 & 0xFFFFFFFFFFFFFFF8) + result;
          if (v30 != (v30 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_33:
            do
            {
              v39 = rintf(v42 + (v21.f32[0] * *(v25 + 4 * v26)));
              if (v39 <= -32768)
              {
                LODWORD(v39) = -32768;
              }

              if (v39 >= 0x7FFF)
              {
                LOWORD(v39) = 0x7FFF;
              }

              a3->i16[v26++] = v39;
            }

            while (v20 != v26);
          }
        }

        else
        {
          do
          {
            v27 = v42 + (v21.f32[0] * *(v25 + 4 * v26));
            for (j = 1; j != v18; ++j)
            {
              v27 = v27 + (v17[j] * *(a2[j] + 4 * v26));
            }

            v29 = rintf(v27);
            if (v29 <= -32768)
            {
              LODWORD(v29) = -32768;
            }

            if (v29 >= 0x7FFF)
            {
              LOWORD(v29) = 0x7FFF;
            }

            a3->i16[v26++] = v29;
          }

          while (v26 != v20);
        }
      }

      a3 = (a3 + v41);
      ++a2;
      --v14;
    }

    while (v14);
  }

  return result;
}

unint64_t sub_10032677C(uint64_t a1, void *a2, int16x4_t *a3, int a4)
{
  if (*(a1 + 104) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 16) + *(a1 + 20) - 1;
  v5 = *(a1 + 24);
  v6 = (v4 + (v4 >> 31)) >> 1;
  v7 = (v5 + 4 * (v4 / 2));
  v8 = (a1 + 4);
  v9 = vld1q_dup_f32(v8);
  if (*a1)
  {
    if (*(a1 + 16) + *(a1 + 20) == 2)
    {
      return 0;
    }

    else
    {
      v19 = (a4 - 8);
      if (a4 >= 8)
      {
        v38 = vld1q_dup_f32(v7);
        v37 = v7 + 1;
        v39 = vld1q_dup_f32(v37);
        if (v4 >= 4)
        {
          result = 0;
          if (v4 / 2 <= 2)
          {
            v49 = 2;
          }

          else
          {
            v49 = (v4 / 2);
          }

          v50 = v5 + 4 * v6 + 8;
          v51 = v49 - 1;
          do
          {
            v52 = 4 * result;
            v53 = (*a2 + 4 * result);
            v54 = *v53;
            v55 = v53[1];
            v56 = (a2[1] + 4 * result);
            v57 = (*(a2 - 1) + 4 * result);
            v58 = vmlaq_f32(vmlaq_f32(v9, v38, v54), v39, vaddq_f32(*v56, *v57));
            v59 = vmlaq_f32(vmlaq_f32(v9, v38, v55), v39, vaddq_f32(v56[1], v57[1]));
            v60 = v51;
            v61 = a2 + 2;
            v62 = v50;
            v63 = a2 - 2;
            do
            {
              v64 = *v61++;
              v65 = (v64 + v52);
              v66 = *v63--;
              v67 = vld1q_dup_f32(v62++);
              v58 = vmlaq_f32(v58, v67, vaddq_f32(*v65, *(v66 + 4 * result)));
              v59 = vmlaq_f32(v59, v67, vaddq_f32(v65[1], *(v66 + v52 + 16)));
              --v60;
            }

            while (v60);
            v68 = &a3[result / 4];
            *v68 = vqmovn_s32(vcvtq_s32_f32(v58));
            v68[1] = vqmovn_s32(vcvtq_s32_f32(v59));
            result += 8;
          }

          while (result <= v19);
        }

        else
        {
          v40 = 0;
          result = 0;
          v41 = a3 + 1;
          do
          {
            v42 = (*a2 + v40);
            v43 = *v42;
            v44 = v42[1];
            v45 = (a2[1] + v40);
            v46 = (*(a2 - 1) + v40);
            v47 = vmlaq_f32(v9, v38, v43);
            v48 = vmlaq_f32(vmlaq_f32(v9, v38, v44), v39, vaddq_f32(v45[1], v46[1]));
            v41[-1] = vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(v47, v39, vaddq_f32(*v45, *v46))));
            *v41 = vqmovn_s32(vcvtq_s32_f32(v48));
            result += 8;
            v40 += 32;
            v41 += 2;
          }

          while (result <= v19);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v10 = (a4 - 8);
    if (a4 < 8)
    {
      return 0;
    }

    v12 = v7 + 1;
    v13 = vld1q_dup_f32(v12);
    if (v4 >= 4)
    {
      result = 0;
      if (v4 / 2 <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = (v4 / 2);
      }

      v21 = v5 + 4 * v6 + 8;
      v22 = v20 - 1;
      do
      {
        v23 = 4 * result;
        v24 = (a2[1] + 4 * result);
        v25 = (*(a2 - 1) + 4 * result);
        v26 = vmlaq_f32(v9, v13, vsubq_f32(*v24, *v25));
        v27 = vmlaq_f32(v9, v13, vsubq_f32(v24[1], v25[1]));
        v28 = v22;
        v29 = a2 + 2;
        v30 = v21;
        v31 = a2 - 2;
        do
        {
          v32 = *v29++;
          v33 = (v32 + v23);
          v34 = *v31--;
          v35 = vld1q_dup_f32(v30++);
          v26 = vmlaq_f32(v26, v35, vsubq_f32(*v33, *(v34 + 4 * result)));
          v27 = vmlaq_f32(v27, v35, vsubq_f32(v33[1], *(v34 + v23 + 16)));
          --v28;
        }

        while (v28);
        v36 = &a3[result / 4];
        *v36 = vqmovn_s32(vcvtq_s32_f32(v26));
        v36[1] = vqmovn_s32(vcvtq_s32_f32(v27));
        result += 8;
      }

      while (result <= v10);
    }

    else
    {
      v14 = 0;
      result = 0;
      v15 = a3 + 1;
      do
      {
        v16 = (a2[1] + v14);
        v17 = (*(a2 - 1) + v14);
        v18 = vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(v9, v13, vsubq_f32(v16[1], v17[1]))));
        v15[-1] = vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(v9, v13, vsubq_f32(*v16, *v17))));
        *v15 = v18;
        result += 8;
        v14 += 32;
        v15 += 2;
      }

      while (result <= v10);
    }
  }

  return result;
}

uint64_t sub_100326A98(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100326B1C(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100318390(a1, a2, a3, a5);
  *v7 = off_100479E88;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100326BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100318BA8(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100326BFC(uint64_t a1)
{
  *a1 = off_1004795A8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100326CAC(uint64_t a1)
{
  *a1 = off_1004795A8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100326D7C(uint64_t result, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = 8 * (v6 / 2);
  v9 = (*(result + 32) + v8);
  v10 = *(result + 120);
  v11 = (a2 + v8);
  if (*(result + 128))
  {
    if (a5)
    {
      v41 = a5 - 1;
      if (a6 > 3)
      {
        v48 = (a6 - 4);
        v49 = *v9;
        v50 = (v48 & 0x7FFFFFFC) + 5;
        if (v50 <= a6)
        {
          v50 = a6;
        }

        v51 = v50 - (v48 & 0x7FFFFFFC) - 4;
        v52 = v51 & 0xFFFFFFFFFFFFFFF8;
        v53 = vdupq_lane_s64(v49, 0);
        v54 = vdupq_lane_s64(v10, 0);
        v55 = a2 + 8 * v7 - 8;
        v56 = 8 * (v6 / 2 + 1);
        result = (a3 + 4);
        do
        {
          v57 = 0;
          v58 = v41;
          v59 = *v11;
          v60 = (*v11 + 4);
          v61 = result;
          v62 = 4;
          do
          {
            v63 = v62;
            v64 = v60;
            v65 = v61;
            v66 = &v59[v57];
            v67 = vmlaq_f64(v54, v66[1], v53);
            v68 = vmlaq_f64(v54, *v66, v53);
            if (v6 >= 2)
            {
              v69 = 8;
              v70 = v55;
              do
              {
                v71 = &v11[v69 / 8][v57];
                v72 = *v70--;
                v73 = (v72 + 8 * v57);
                v74 = v9[v69 / 8];
                v67 = vmlaq_n_f64(v67, vaddq_f64(v71[1], v73[1]), v74);
                v68 = vmlaq_n_f64(v68, vaddq_f64(*v71, *v73), v74);
                v69 += 8;
              }

              while (v56 != v69);
            }

            *&a3[v57] = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v68)), vcvtq_s64_f64(vrndxq_f64(v67))));
            v57 += 4;
            v62 = v63 + 4;
            v60 = &v64[2];
            v61 = &v65->u64[1];
          }

          while (v57 <= v48);
          if (v57 < a6)
          {
            if (v6 >= 2)
            {
              do
              {
                v77 = *&v10 + *&v49 * v59[v63];
                v78 = 8;
                v79 = v55;
                do
                {
                  v80 = *v79--;
                  v77 = v77 + v9[v78 / 8] * (v11[v78 / 8][v63] + *(v80 + 8 * v63));
                  v78 += 8;
                }

                while (v56 != v78);
                v81 = rint(v77);
                if (v81 <= -32768)
                {
                  LODWORD(v81) = -32768;
                }

                if (v81 >= 0x7FFF)
                {
                  LOWORD(v81) = 0x7FFF;
                }

                a3[v63++] = v81;
              }

              while (v63 < a6);
            }

            else
            {
              if (v51 < 8)
              {
                goto LABEL_120;
              }

              v63 += v52;
              v75 = v51 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                *v65++ = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v54, *v64, v53))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v54, v64[1], v53))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v54, v64[2], v53))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v54, v64[3], v53)))));
                v64 += 4;
                v75 -= 8;
              }

              while (v75);
              if (v51 != v52)
              {
LABEL_120:
                do
                {
                  v76 = rint(*&v10 + *&v49 * v59[v63]);
                  if (v76 <= -32768)
                  {
                    LODWORD(v76) = -32768;
                  }

                  if (v76 >= 0x7FFF)
                  {
                    LOWORD(v76) = 0x7FFF;
                  }

                  a3[v63++] = v76;
                }

                while (v63 < a6);
              }
            }
          }

          a3 = (a3 + a4);
          ++v11;
          v41 = v58 - 1;
          v55 += 8;
          result += a4;
        }

        while (v58);
      }

      else if (a6 >= 1)
      {
        v42 = *v9;
        if (v6 >= 2)
        {
          v82 = a2 + 8 * v7 - 8;
          v83 = 8 * (v7 + 1);
          do
          {
            v84 = v41;
            v85 = *v11;
            v86 = *&v10 + v42 * **v11;
            v87 = 8;
            result = v82;
            do
            {
              v88 = *result;
              result -= 8;
              v86 = v86 + v9[v87 / 8] * (*v11[v87 / 8] + *v88);
              v87 += 8;
            }

            while (v83 != v87);
            v89 = rint(v86);
            if (v89 <= -32768)
            {
              LODWORD(v89) = -32768;
            }

            if (v89 >= 0x7FFF)
            {
              LOWORD(v89) = 0x7FFF;
            }

            *a3 = v89;
            if (a6 != 1)
            {
              v90 = *&v10 + v42 * v85[1];
              v91 = 0x1FFFFFFFFFFFFFFFLL;
              result = 8;
              do
              {
                v90 = v90 + *(v9 + result) * ((*(v11 + result))[1] + v11[v91][1]);
                result += 8;
                --v91;
              }

              while (v83 != result);
              v92 = rint(v90);
              if (v92 <= -32768)
              {
                LODWORD(v92) = -32768;
              }

              if (v92 >= 0x7FFF)
              {
                LOWORD(v92) = 0x7FFF;
              }

              a3[1] = v92;
              if (a6 != 2)
              {
                v93 = *&v10 + v42 * v85[2];
                v94 = 0x1FFFFFFFFFFFFFFFLL;
                v95 = 8;
                do
                {
                  result = v11[v94];
                  v93 = v93 + v9[v95 / 8] * (v11[v95 / 8][2] + *(result + 16));
                  v95 += 8;
                  --v94;
                }

                while (v83 != v95);
                v96 = rint(v93);
                if (v96 <= -32768)
                {
                  LODWORD(v96) = -32768;
                }

                if (v96 >= 0x7FFF)
                {
                  LOWORD(v96) = 0x7FFF;
                }

                a3[2] = v96;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            --v41;
            v82 += 8;
          }

          while (v84);
        }

        else
        {
          v43 = a3 + 2;
          do
          {
            v44 = *v11;
            v45 = rint(*&v10 + v42 * **v11);
            if (v45 <= -32768)
            {
              LODWORD(v45) = -32768;
            }

            if (v45 >= 0x7FFF)
            {
              LOWORD(v45) = 0x7FFF;
            }

            *(v43 - 2) = v45;
            if (a6 != 1)
            {
              v46 = rint(*&v10 + v42 * v44[1]);
              if (v46 <= -32768)
              {
                LODWORD(v46) = -32768;
              }

              if (v46 >= 0x7FFF)
              {
                LOWORD(v46) = 0x7FFF;
              }

              *(v43 - 1) = v46;
              if (a6 != 2)
              {
                v47 = rint(*&v10 + v42 * v44[2]);
                if (v47 <= -32768)
                {
                  LODWORD(v47) = -32768;
                }

                if (v47 >= 0x7FFF)
                {
                  LOWORD(v47) = 0x7FFF;
                }

                *v43 = v47;
              }
            }

            ++v11;
            v43 = (v43 + a4);
            --a5;
          }

          while (a5);
        }
      }
    }
  }

  else if (a5)
  {
    v12 = rint(*&v10);
    if (v12 <= -32768)
    {
      v13 = -32768;
    }

    else
    {
      v13 = v12;
    }

    if (v13 >= 0x7FFF)
    {
      v13 = 0x7FFF;
    }

    v14 = a4;
    v15 = vdupq_n_s16(v13);
    v16 = vdupq_lane_s64(v10, 0);
    v17 = a2 + 8 * v7 - 8;
    result = 8 * (v6 / 2 + 1);
    while (a6 < 4)
    {
      v18 = 0;
      if (a6 > 0)
      {
        goto LABEL_20;
      }

LABEL_9:
      a3 = (a3 + v14);
      ++v11;
      v17 += 8;
      if (!--a5)
      {
        return result;
      }
    }

    v18 = 0;
    do
    {
      v19 = *v15.i8;
      if (v6 >= 2)
      {
        v20 = 8;
        v21 = v17;
        v22 = v16;
        v23 = v16;
        do
        {
          v24 = &v11[v20 / 8][v18];
          v25 = *v21--;
          v26 = (v25 + 8 * v18);
          v27 = v9[v20 / 8];
          v23 = vmlaq_n_f64(v23, vsubq_f64(v24[1], v26[1]), v27);
          v22 = vmlaq_n_f64(v22, vsubq_f64(*v24, *v26), v27);
          v20 += 8;
        }

        while (result != v20);
        v19 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v22)), vcvtq_s64_f64(vrndxq_f64(v23))));
      }

      *&a3[v18] = v19;
      v18 += 4;
    }

    while (v18 <= a6 - 4);
    v18 = v18;
    if (v18 >= a6)
    {
      goto LABEL_9;
    }

LABEL_20:
    if (v6 >= 2)
    {
      do
      {
        v30 = 8;
        v31 = v17;
        v32 = *&v10;
        do
        {
          v33 = *v31--;
          v32 = v32 + v9[v30 / 8] * (v11[v30 / 8][v18] - *(v33 + 8 * v18));
          v30 += 8;
        }

        while (result != v30);
        v34 = rint(v32);
        if (v34 <= -32768)
        {
          LODWORD(v34) = -32768;
        }

        if (v34 >= 0x7FFF)
        {
          LOWORD(v34) = 0x7FFF;
        }

        a3[v18++] = v34;
      }

      while (v18 != a6);
      goto LABEL_9;
    }

    v28 = a6 - v18;
    if (v28 < 4)
    {
      v29 = v18;
      goto LABEL_42;
    }

    if (v28 >= 0x10)
    {
      v35 = v28 & 0xFFFFFFFFFFFFFFF0;
      v36 = v18;
      v37 = v28 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v38 = &a3[v36];
        *v38 = v15;
        v38[1] = v15;
        v36 += 16;
        v37 -= 16;
      }

      while (v37);
      if (v28 == v35)
      {
        goto LABEL_9;
      }

      if ((v28 & 0xC) == 0)
      {
        v29 = v35 + v18;
        do
        {
LABEL_42:
          a3[v29++] = v13;
        }

        while (a6 != v29);
        goto LABEL_9;
      }
    }

    else
    {
      v35 = 0;
    }

    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + v18;
    v39 = v35 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
    v40 = v35 + v18;
    do
    {
      *&a3[v40] = v15.i64[0];
      v40 += 4;
      v39 += 4;
    }

    while (v39);
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

  return result;
}

uint64_t sub_100327474(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003274F8(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100318CF4(a1, a2, a3, a5);
  *v7 = off_100479F10;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_1003275B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100319590(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003275D8(uint64_t a1)
{
  *a1 = off_100479630;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100327688(uint64_t a1)
{
  *a1 = off_100479630;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

unint64_t sub_100327758(unint64_t result, uint64_t a2, float *a3, int a4, int a5, int a6, double a7)
{
  v7 = *(result + 8);
  v8 = *(result + 32);
  v9 = (v7 + (v7 >> 31)) >> 1;
  v10 = (v8 + 4 * (v7 / 2));
  LODWORD(a7) = *(result + 116);
  v11 = (a2 + 8 * (v7 / 2));
  if (*(result + 120))
  {
    if (!a5)
    {
      return result;
    }

    v36 = (a5 - 1);
    v37 = a4;
    if (a6 <= 3)
    {
      if (a6 >= 1)
      {
        if (v7 >= 2)
        {
          v101 = (v7 / 2 + 1);
          v102 = a2 + 8 * v9 - 8;
          do
          {
            v103 = v36;
            v104 = *v11;
            v105 = *&a7 + (*v10 * **v11);
            v106 = v102;
            v107 = 1;
            do
            {
              v108 = *v106--;
              result = v108;
              v105 = v105 + (v10[v107] * (*v11[v107] + *v108));
              ++v107;
            }

            while (v101 != v107);
            *a3 = v105;
            if (a6 != 1)
            {
              v109 = *&a7 + (*v10 * v104[1]);
              v110 = 0x1FFFFFFFFFFFFFFFLL;
              v111 = 1;
              do
              {
                v109 = v109 + (v10[v111] * (v11[v111][1] + v11[v110][1]));
                ++v111;
                --v110;
              }

              while (v101 != v111);
              a3[1] = v109;
              if (a6 != 2)
              {
                v112 = *&a7 + (*v10 * v104[2]);
                v113 = 0x1FFFFFFFFFFFFFFFLL;
                v114 = 1;
                do
                {
                  v112 = v112 + (v10[v114] * (v11[v114][2] + v11[v113][2]));
                  ++v114;
                  --v113;
                }

                while (v101 != v114);
                a3[2] = v112;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            LODWORD(v36) = v36 - 1;
            v102 += 8;
          }

          while (v103);
        }

        else
        {
          v38 = a3 + 2;
          do
          {
            v39 = *v11;
            *(v38 - 2) = *&a7 + (*v10 * **v11);
            if (a6 != 1)
            {
              *(v38 - 1) = *&a7 + (*v10 * v39[1]);
              if (a6 != 2)
              {
                *v38 = *&a7 + (*v10 * v39[2]);
              }
            }

            ++v11;
            v38 = (v38 + a4);
            --a5;
          }

          while (a5);
        }
      }

      return result;
    }

    v40 = (a6 - 4);
    if (v7 >= 2)
    {
      v87 = (v7 / 2 + 1);
      v88 = vdupq_lane_s32(*&a7, 0);
      v89 = a2 + 8 * v9 - 8;
      do
      {
        result = 0;
        v90 = v36;
        v91 = *v11;
        v92 = 4;
        do
        {
          v93 = v92;
          v94 = vmlaq_n_f32(v88, *&v91[result], *v10);
          v95 = v89;
          v96 = 1;
          do
          {
            v97 = *v95--;
            v94 = vmlaq_n_f32(v94, vaddq_f32(*&v11[v96][result], *(v97 + 4 * result)), v10[v96]);
            ++v96;
          }

          while (v87 != v96);
          *&a3[result] = v94;
          result += 4;
          v92 += 4;
        }

        while (result <= v40);
        if (result < a6)
        {
          do
          {
            v98 = *&a7 + (*v10 * v91[v93]);
            result = v89;
            v99 = 1;
            do
            {
              v100 = *result;
              result -= 8;
              v98 = v98 + (v10[v99] * (v11[v99][v93] + *(v100 + 4 * v93)));
              ++v99;
            }

            while (v87 != v99);
            a3[v93++] = v98;
          }

          while (v93 < a6);
        }

        a3 = (a3 + v37);
        ++v11;
        LODWORD(v36) = v36 - 1;
        v89 += 8;
      }

      while (v90);
      return result;
    }

    v41 = 0;
    if ((v40 & 0x7FFFFFFC) + 5 <= a6)
    {
      v42 = a6;
    }

    else
    {
      v42 = (v40 & 0x7FFFFFFC) + 5;
    }

    v43 = (4 * (a6 - 4)) & 0x1FFFFFFF0;
    v44 = 4 * v42 - v43;
    v45 = v8 + 4 * v9 + 4;
    v46 = v42 - (v40 & 0x7FFFFFFC) - 4;
    result = a3 + a4 * v36 + v43 + 16;
    v47 = (v40 >> 2) + 1;
    v49 = v45 > a3 && v10 < result;
    v50 = vdupq_lane_s32(*&a7, 0);
    v51 = v46 & 0xFFFFFFFFFFFFFFF8;
    v52 = a3 + 4;
    v53 = a3;
    while (1)
    {
      v54 = v36;
      v55 = *v11;
      if (v40 <= 0xB)
      {
        break;
      }

      v56 = (v55 + v43 + 16) <= a3 || v55 >= result;
      v57 = !v56 || a4 < 0;
      v58 = v57 || v49;
      if (v58)
      {
        break;
      }

      v66 = 0;
      v67 = v47 & 0x3FFFFFFC;
      do
      {
        v68 = &v53[v66];
        v69 = vmlaq_n_f32(v50, *&v55[v66 + 12], *v10);
        v70 = vmlaq_n_f32(v50, *&v55[v66 + 4], *v10);
        v71 = vmlaq_n_f32(v50, *&v55[v66 + 8], *v10);
        *v68 = vmlaq_n_f32(v50, *&v55[v66], *v10);
        v68[1] = v70;
        v68[2] = v71;
        v68[3] = v69;
        v66 += 16;
        v67 -= 4;
      }

      while (v67);
      v59 = v47 & 0x3FFFFFFC;
      v61 = (16 * ((v59 >> 2) & 0xFFFFFFF)) | 4;
      v60 = 4 * v59;
      v62 = v59 - 1;
      v63 = v60;
      if (v47 != v59)
      {
        goto LABEL_69;
      }

LABEL_71:
      if (v60 < a6)
      {
        if (v46 >= 8)
        {
          v72 = 4 * v62;
          v73 = &a3[4 * v62] + v41 * a4;
          v74 = v73 + 16;
          v75 = v73 + v44;
          v76 = &v55[v72];
          v77 = &v55[v72 + 4];
          v79 = v74 < v76 + v44 && v77 < v75;
          if (v10 >= v75 || v74 >= v45)
          {
            if (v79)
            {
              v65 = v63;
            }

            else
            {
              v81 = vld1q_dup_f32(v10);
              v65 = v63 + v51;
              v82 = v63;
              v83 = &v52[v63];
              v84 = &v55[v82 + 4];
              v85 = v46 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v86 = vmlaq_f32(v50, *v84, v81);
                v83[-1] = vmlaq_f32(v50, v84[-1], v81);
                *v83 = v86;
                v83 += 2;
                v84 += 2;
                v85 -= 8;
              }

              while (v85);
              if (v46 == v51)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v65 = v63;
          }
        }

        else
        {
          v65 = v63;
        }

        do
        {
          v53[v65] = *&a7 + (*v10 * v55[v65]);
          ++v65;
        }

        while (v65 < a6);
      }

LABEL_56:
      v53 = (v53 + a4);
      ++v11;
      LODWORD(v36) = v54 - 1;
      ++v41;
      v52 = (v52 + a4);
      if (!v54)
      {
        return result;
      }
    }

    v59 = 0;
    v60 = 0;
    v61 = 4;
LABEL_69:
    v62 = v59 - 1;
    v63 = v61 - 4;
    v64 = v60;
    do
    {
      *&v53[v64] = vmlaq_n_f32(v50, *&v55[v64], *v10);
      v60 += 4;
      ++v62;
      v63 += 4;
      v64 += 4;
    }

    while (v60 <= v40);
    goto LABEL_71;
  }

  if (a5)
  {
    v12 = a4;
    v13 = (v7 / 2 + 1);
    v14 = a6 - 4;
    v15 = 3;
    if (v14 > 3)
    {
      v15 = a6 - 4;
    }

    v16 = (v15 >> 2) + 1;
    v17 = vdupq_lane_s32(*&a7, 0);
    result = a2 + 8 * v9 - 8;
    v18 = a3 + 16;
    do
    {
      if (a6 < 4)
      {
        v19 = 0;
        if (a6 <= 0)
        {
          goto LABEL_6;
        }

        goto LABEL_24;
      }

      if (v7 >= 2)
      {
        v19 = 0;
        do
        {
          v20 = result;
          v21 = 1;
          v22 = v17;
          do
          {
            v23 = *v20--;
            v22 = vmlaq_n_f32(v22, vsubq_f32(*&v11[v21][v19], *(v23 + 4 * v19)), v10[v21]);
            ++v21;
          }

          while (v13 != v21);
          *&a3[v19] = v22;
          v19 += 4;
        }

        while (v19 <= v14);
      }

      else
      {
        if (v14 < 0x1C)
        {
          v19 = 0;
LABEL_21:
          v26 = v19;
          do
          {
            *&a3[v26] = v17;
            v19 += 4;
            v26 += 4;
          }

          while (v19 <= v14);
          goto LABEL_23;
        }

        v24 = v16 & 0x3FFFFFF8;
        v25 = v18;
        do
        {
          v25[-4] = v17;
          v25[-3] = v17;
          v25[-2] = v17;
          v25[-1] = v17;
          *v25 = v17;
          v25[1] = v17;
          v25[2] = v17;
          v25[3] = v17;
          v25 += 8;
          v24 -= 8;
        }

        while (v24);
        v19 = 4 * (v16 & 0x3FFFFFF8);
        if (v16 != (v16 & 0x3FFFFFF8))
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v19 = v19;
      if (v19 >= a6)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (v7 >= 2)
      {
        do
        {
          v29 = result;
          v30 = 1;
          v31 = *&a7;
          do
          {
            v32 = *v29--;
            v31 = v31 + (v10[v30] * (v11[v30][v19] - *(v32 + 4 * v19)));
            ++v30;
          }

          while (v13 != v30);
          a3[v19++] = v31;
        }

        while (v19 != a6);
        goto LABEL_6;
      }

      v27 = a6 - v19;
      if (v27 >= 8)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFF8) + v19;
        v33 = v19;
        v34 = v27 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v35 = &a3[v33];
          *v35 = v17;
          v35[1] = v17;
          v33 += 8;
          v34 -= 8;
        }

        while (v34);
        if (v27 == (v27 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v28 = v19;
      }

      do
      {
        a3[v28++] = *&a7;
      }

      while (a6 != v28);
LABEL_6:
      a3 = (a3 + v12);
      ++v11;
      result += 8;
      v18 = (v18 + v12);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_100327E8C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100327F10(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_1003196DC(a1, a2, a3, a5);
  *v7 = off_100479F98;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100327FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10031A004(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100327FF0(uint64_t a1)
{
  *a1 = off_1004796B8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003280A0(uint64_t a1)
{
  *a1 = off_1004796B8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

unint64_t sub_100328170(unint64_t result, uint64_t a2, double *a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = *(result + 32);
  v8 = (v6 + (v6 >> 31)) >> 1;
  v9 = 8 * (v6 / 2);
  v10 = (v7 + v9);
  v11 = *(result + 120);
  v12 = (a2 + v9);
  if (*(result + 128))
  {
    if (!a5)
    {
      return result;
    }

    v43 = (a5 - 1);
    v44 = a4;
    if (a6 <= 3)
    {
      if (a6 >= 1)
      {
        if (v6 >= 2)
        {
          v113 = a2 + 8 * v8 - 8;
          v114 = 8 * (v6 / 2 + 1);
          do
          {
            v115 = v43;
            v116 = *v12;
            v117 = v11 + *v10 * **v12;
            v118 = 8;
            v119 = v113;
            do
            {
              v120 = *v119--;
              result = v120;
              v117 = v117 + v10[v118 / 8] * (*v12[v118 / 8] + *v120);
              v118 += 8;
            }

            while (v114 != v118);
            *a3 = v117;
            if (a6 != 1)
            {
              v121 = v11 + *v10 * v116[1];
              v122 = 0x1FFFFFFFFFFFFFFFLL;
              v123 = 8;
              do
              {
                v121 = v121 + v10[v123 / 8] * (v12[v123 / 8][1] + v12[v122][1]);
                v123 += 8;
                --v122;
              }

              while (v114 != v123);
              a3[1] = v121;
              if (a6 != 2)
              {
                v124 = v11 + *v10 * v116[2];
                v125 = 0x1FFFFFFFFFFFFFFFLL;
                v126 = 8;
                do
                {
                  v124 = v124 + v10[v126 / 8] * (v12[v126 / 8][2] + v12[v125][2]);
                  v126 += 8;
                  --v125;
                }

                while (v114 != v126);
                a3[2] = v124;
              }
            }

            a3 = (a3 + a4);
            ++v12;
            LODWORD(v43) = v43 - 1;
            v113 += 8;
          }

          while (v115);
        }

        else
        {
          v45 = a3 + 2;
          do
          {
            v46 = *v12;
            *(v45 - 2) = v11 + *v10 * **v12;
            if (a6 != 1)
            {
              *(v45 - 1) = v11 + *v10 * v46[1];
              if (a6 != 2)
              {
                *v45 = v11 + *v10 * v46[2];
              }
            }

            ++v12;
            v45 = (v45 + a4);
            --a5;
          }

          while (a5);
        }
      }

      return result;
    }

    v47 = (a6 - 4);
    if (v6 >= 2)
    {
      v93 = vdupq_lane_s64(*&v11, 0);
      v94 = a2 + 8 * v8 - 8;
      v95 = 8 * (v6 / 2 + 1);
      do
      {
        result = 0;
        v96 = v43;
        v97 = *v12;
        v98 = 4;
        do
        {
          v99 = v98;
          v100 = &v97[result];
          v101 = vmlaq_n_f64(v93, *v100, *v10);
          v102 = vmlaq_n_f64(v93, v100[1], *v10);
          v103 = result;
          v104 = 8;
          v105 = v94;
          do
          {
            v106 = &v12[v104 / 8][v103];
            v107 = *v105--;
            v108 = v10[v104 / 8];
            v101 = vmlaq_n_f64(v101, vaddq_f64(*v106, *(v107 + 8 * result)), v108);
            v102 = vmlaq_n_f64(v102, vaddq_f64(v106[1], *(v107 + v103 * 8 + 16)), v108);
            v104 += 8;
          }

          while (v95 != v104);
          v109 = &a3[result];
          *v109 = v101;
          v109[1] = v102;
          result += 4;
          v98 = v99 + 4;
        }

        while (result <= v47);
        if (result < a6)
        {
          do
          {
            v110 = v11 + *v10 * v97[v99];
            result = 8;
            v111 = v94;
            do
            {
              v112 = *v111--;
              v110 = v110 + *(v10 + result) * ((*(v12 + result))[v99] + *(v112 + 8 * v99));
              result += 8;
            }

            while (v95 != result);
            a3[v99++] = v110;
          }

          while (v99 < a6);
        }

        a3 = (a3 + v44);
        ++v12;
        LODWORD(v43) = v43 - 1;
        v94 += 8;
      }

      while (v96);
      return result;
    }

    v48 = 0;
    if ((v47 & 0x7FFFFFFC) + 5 <= a6)
    {
      v49 = a6;
    }

    else
    {
      v49 = (v47 & 0x7FFFFFFC) + 5;
    }

    v50 = (8 * (a6 - 4)) & 0x3FFFFFFE0;
    v51 = 8 * v49 - v50;
    v52 = v7 + 8 * v8 + 8;
    v53 = v49 - (v47 & 0x7FFFFFFC) - 4;
    result = a3 + a4 * v43 + v50 + 32;
    v54 = (v47 >> 2) + 1;
    v56 = v52 > a3 && v10 < result;
    v57 = vdupq_lane_s64(*&v11, 0);
    v127 = v49 & 3;
    v58 = a3 + 2;
    v59 = a3;
    while (1)
    {
      v60 = v43;
      v61 = *v12;
      if (v47 <= 3)
      {
        break;
      }

      v62 = (v61 + v50 + 32) <= a3 || v61 >= result;
      v63 = !v62 || a4 < 0;
      v64 = v63 || v56;
      if (v64)
      {
        break;
      }

      v75 = 0;
      v76 = v54 & 0x3FFFFFFE;
      do
      {
        v77 = &v59[v75];
        v78 = vmlaq_n_f64(v57, *&v61[v75 + 6], *v10);
        v79 = vmlaq_n_f64(v57, *&v61[v75 + 2], *v10);
        v80 = vmlaq_n_f64(v57, *&v61[v75 + 4], *v10);
        *v77 = vmlaq_n_f64(v57, *&v61[v75], *v10);
        v77[1] = v79;
        v77[2] = v80;
        v77[3] = v78;
        v75 += 8;
        v76 -= 2;
      }

      while (v76);
      v65 = v54 & 0x3FFFFFFE;
      v68 = v65 - 1;
      v67 = (4 * v54) | 4;
      v66 = 4 * v65;
      v69 = v66;
      if (v54 != v65)
      {
        goto LABEL_69;
      }

LABEL_71:
      if (v66 < a6)
      {
        if (v53 >= 8)
        {
          v81 = &a3[4 * v68] + v48 * a4;
          v82 = v81 + 32;
          v83 = v81 + v51;
          v84 = &v61[4 * v68];
          v86 = v82 < v84 + v51 && (v84 + 4) < v83;
          if (v10 >= v83 || v82 >= v52)
          {
            if (v86)
            {
              v74 = v69;
            }

            else
            {
              v88 = vld1q_dup_f64(v10);
              v74 = v69 + v53 - v127;
              v89 = &v58[v69];
              v90 = &v61[v69 + 2];
              v91 = v53 - v127;
              do
              {
                v92 = vmlaq_f64(v57, *v90, v88);
                v89[-1] = vmlaq_f64(v57, v90[-1], v88);
                *v89 = v92;
                v89 += 2;
                v90 += 2;
                v91 -= 4;
              }

              while (v91);
              if (!v127)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v74 = v69;
          }
        }

        else
        {
          v74 = v69;
        }

        do
        {
          v59[v74] = v11 + *v10 * v61[v74];
          ++v74;
        }

        while (v74 < a6);
      }

LABEL_56:
      v59 = (v59 + a4);
      ++v12;
      LODWORD(v43) = v60 - 1;
      ++v48;
      v58 = (v58 + a4);
      if (!v60)
      {
        return result;
      }
    }

    v65 = 0;
    v66 = 0;
    v67 = 4;
LABEL_69:
    v68 = v65 - 1;
    v69 = v67 - 4;
    v70 = v66;
    do
    {
      v71 = v11 + *v10 * v61[v70 + 3];
      v72 = &v59[v70];
      v73 = vmlaq_n_f64(v57, *&v61[v70 + 1], *v10);
      *v72 = v11 + *v10 * v61[v70];
      v66 += 4;
      *(v72 + 1) = v73;
      v72[3] = v71;
      ++v68;
      v69 += 4;
      v70 += 4;
    }

    while (v66 <= v47);
    goto LABEL_71;
  }

  if (a5)
  {
    v13 = a4;
    v14 = a6 - 4;
    v15 = 3;
    if (v14 > 3)
    {
      v15 = a6 - 4;
    }

    v16 = (v15 >> 2) + 1;
    v17 = vdupq_lane_s64(*&v11, 0);
    v18 = a2 + 8 * v8 - 8;
    result = 8 * (v6 / 2 + 1);
    v19 = a3 + 8;
    do
    {
      if (a6 < 4)
      {
        v20 = 0;
        if (a6 <= 0)
        {
          goto LABEL_6;
        }

        goto LABEL_24;
      }

      if (v6 >= 2)
      {
        v20 = 0;
        do
        {
          v21 = 8;
          v22 = v18;
          v23 = v17;
          v24 = v17;
          do
          {
            v25 = &v12[v21 / 8][v20];
            v26 = *v22--;
            v27 = (v26 + 8 * v20);
            v28 = v10[v21 / 8];
            v23 = vmlaq_n_f64(v23, vsubq_f64(*v25, *v27), v28);
            v24 = vmlaq_n_f64(v24, vsubq_f64(v25[1], v27[1]), v28);
            v21 += 8;
          }

          while (result != v21);
          v29 = &a3[v20];
          *v29 = v23;
          v29[1] = v24;
          v20 += 4;
        }

        while (v20 <= v14);
      }

      else
      {
        if (v14 < 0xC)
        {
          v20 = 0;
LABEL_21:
          v32 = v20;
          do
          {
            v33 = &a3[v32];
            *v33 = v17;
            v33[1] = v17;
            v20 += 4;
            v32 += 4;
          }

          while (v20 <= v14);
          goto LABEL_23;
        }

        v30 = v16 & 0x3FFFFFFC;
        v31 = v19;
        do
        {
          v31[-4] = v17;
          v31[-3] = v17;
          v31[-2] = v17;
          v31[-1] = v17;
          *v31 = v17;
          v31[1] = v17;
          v31[2] = v17;
          v31[3] = v17;
          v31 += 8;
          v30 -= 4;
        }

        while (v30);
        v20 = 4 * (v16 & 0x3FFFFFFC);
        if (v16 != (v16 & 0x3FFFFFFC))
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v20 = v20;
      if (v20 >= a6)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (v6 >= 2)
      {
        do
        {
          v36 = 8;
          v37 = v18;
          v38 = v11;
          do
          {
            v39 = *v37--;
            v38 = v38 + v10[v36 / 8] * (v12[v36 / 8][v20] - *(v39 + 8 * v20));
            v36 += 8;
          }

          while (result != v36);
          a3[v20++] = v38;
        }

        while (v20 != a6);
        goto LABEL_6;
      }

      v34 = a6 - v20;
      if (v34 >= 4)
      {
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + v20;
        v40 = v20;
        v41 = v34 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v42 = &a3[v40];
          *v42 = v17;
          v42[1] = v17;
          v40 += 4;
          v41 -= 4;
        }

        while (v41);
        if (v34 == (v34 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v35 = v20;
      }

      do
      {
        a3[v35++] = v11;
      }

      while (a6 != v35);
LABEL_6:
      a3 = (a3 + v13);
      ++v12;
      v18 += 8;
      v19 = (v19 + v13);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_100328910(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003289AC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

double sub_100328A30(uint64_t a1, float *a2, int a3)
{
  sub_1002ACE7C(v74, &off_10047A050);
  if (sub_100271148(a1) != 0x10000)
  {
    sub_1002703C0(a1, -1, &v66);
    goto LABEL_8;
  }

  v6 = *(a1 + 8);
  v7 = *v6;
  v8 = *(v6 + 16);
  v66 = *v6;
  v67 = v8;
  v68 = *(v6 + 32);
  v9 = *(v6 + 56);
  v69 = *(v6 + 48);
  v70 = v9;
  v71 = &v66 + 8;
  v72 = v73;
  v73[0] = 0;
  v73[1] = 0;
  if (!v9)
  {
    if (SDWORD1(v7) <= 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    DWORD1(v66) = 0;
    sub_100269B58(&v66, v6);
    goto LABEL_8;
  }

  atomic_fetch_add((v9 + 20), 1u);
  if (*(v6 + 4) > 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = *(v6 + 72);
  v11 = v72;
  *v72 = *v10;
  v11[1] = v10[1];
LABEL_8:
  v12 = sub_10026F620(&v66, 2, -1, 1);
  if (v12 < 0 || (v66 & 6) != 4)
  {
    v65[0] = 0;
    v65[1] = 0;
    qmemcpy(sub_1002A80E0(v65, 40), "total >= 0 && (depth == 4 || depth == 5)", 40);
    sub_1002A8980(-215, v65, "pointPolygonTest", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/geometry.cpp", 103);
  }

  if (!v12)
  {
    if (a3)
    {
      v26 = -1.79769313e308;
    }

    else
    {
      v26 = -1.0;
    }

    v30 = v70;
    if (!v70)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v13 = v66 & 7;
  v14 = *a2;
  v15 = a2[1];
  v16 = v67;
  if (v13 != 5 && !a3)
  {
    v17 = rintf(v14);
    v18 = rintf(v15);
    if (v14 == v17 && v15 == v18)
    {
      if (v12 >= 1)
      {
        v20 = 0;
        v21 = v12;
        v22 = v67 + 8 * v12;
        v23 = *(v22 - 8);
        v24 = *(v22 - 4);
        v25 = (v67 + 4);
        v26 = 0.0;
        while (1)
        {
          v28 = *(v25 - 1);
          v29 = *v25;
          if (v18 >= v24 != *v25 > v18 || v17 > v23 && v28 < v17)
          {
            if (v29 == v18 && (v28 == v17 || v18 == v24 && (v17 >= v23 && v28 >= v17 || v28 <= v17 && v17 <= v23)))
            {
              goto LABEL_128;
            }
          }

          else
          {
            v27 = (v28 - v23) * (v18 - v24) - (v29 - v24) * (v17 - v23);
            if (!v27)
            {
              v26 = 0.0;
              goto LABEL_128;
            }

            if (v29 < v24)
            {
              v27 = -v27;
            }

            if (v27 > 0)
            {
              ++v20;
            }
          }

          v25 += 2;
          v24 = v29;
          v23 = v28;
          if (!--v21)
          {
            if (v20)
            {
              v60 = 1;
            }

            else
            {
              v60 = -1;
            }

            v26 = v60;
            v30 = v70;
            if (!v70)
            {
              goto LABEL_131;
            }

            goto LABEL_129;
          }
        }
      }

      goto LABEL_83;
    }
  }

  v31 = v67 + 8 * v12;
  if (v13 == 5)
  {
    v32 = *(v31 - 8);
    v33 = v12 < 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_86;
  }

  v32 = vcvt_f32_s32(*(v31 - 8));
  v33 = v12 < 1;
  if (a3)
  {
LABEL_86:
    if (v33)
    {
      v26 = -1.84467435e19;
      v30 = v70;
      if (!v70)
      {
        goto LABEL_131;
      }

      goto LABEL_129;
    }

    v44 = 0;
    v45 = v12;
    v46 = 1.0;
    v47 = 3.40282347e38;
    while (1)
    {
      v50 = v32;
      if (v13 == 5)
      {
        v32 = *v16;
      }

      else
      {
        v32 = vcvt_f32_s32(*v16);
      }

      v51 = vsub_f32(v32, v50).f32[0];
      v52 = v32.f32[1] - v50.f32[1];
      v53 = (v32.f32[1] - v50.f32[1]);
      v54 = (v14 - v50.f32[0]);
      v55 = (v15 - v50.f32[1]);
      if (v55 * v53 + v54 * v51 <= 0.0)
      {
        v58 = v55 * v55 + v54 * v54;
        v59 = 1.0;
        if (v46 * v58 >= v47 * 1.0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v56 = (v14 - v32.f32[0]);
        v57 = (v15 - v32.f32[1]);
        if (v57 * v53 + v56 * v51 >= 0.0)
        {
          v58 = v57 * v57 + v56 * v56;
          v59 = 1.0;
          if (v46 * v58 >= v47 * 1.0)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v58 = (v55 * v51 - v54 * v53) * (v55 * v51 - v54 * v53);
          v59 = v53 * v53 + v51 * v51;
          if (v46 * v58 >= v47 * v59)
          {
            goto LABEL_104;
          }
        }
      }

      v47 = v58;
      v46 = v59;
      if (v58 == 0.0)
      {
        v47 = v58;
        v46 = v59;
LABEL_124:
        v26 = sqrt(v47 / v46);
        if ((v44 & 1) == 0)
        {
          v26 = -v26;
          v30 = v70;
          if (!v70)
          {
            goto LABEL_131;
          }

          goto LABEL_129;
        }

LABEL_128:
        v30 = v70;
        if (!v70)
        {
          goto LABEL_131;
        }

LABEL_129:
        if (atomic_fetch_add((v30 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v66);
        }

        goto LABEL_131;
      }

LABEL_104:
      if ((v50.f32[1] > v15 || v32.f32[1] > v15) && (v50.f32[1] <= v15 || v32.f32[1] <= v15) && (v50.f32[0] >= v14 || v32.f32[0] >= v14))
      {
        v48 = v55 * v51 - v54 * v53;
        v49 = -v48;
        if (v52 >= 0.0)
        {
          v49 = v48;
        }

        if (v49 > 0.0)
        {
          ++v44;
        }
      }

      ++v16;
      if (!--v45)
      {
        goto LABEL_124;
      }
    }
  }

LABEL_45:
  if (v33)
  {
LABEL_83:
    v26 = -1.0;
    v30 = v70;
    if (!v70)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v34 = 0;
  v35 = v12;
  v26 = 0.0;
  do
  {
    v37 = v32;
    if (v13 == 5)
    {
      v32 = *v16;
      v38 = v37.f32[1];
      LODWORD(v39) = HIDWORD(*v16);
      if (v37.f32[1] <= v15 && v39 <= v15)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v32 = vcvt_f32_s32(*v16);
      v38 = v37.f32[1];
      v39 = v32.f32[1];
      if (v37.f32[1] <= v15 && v32.f32[1] <= v15)
      {
LABEL_71:
        if (v15 == v39)
        {
          if (v14 == v32.f32[0])
          {
            goto LABEL_128;
          }

          if (v15 == v38)
          {
            if (v37.f32[0] <= v14 && v14 <= v32.f32[0])
            {
              goto LABEL_128;
            }

            if (v32.f32[0] <= v14 && v14 <= v37.f32[0])
            {
              goto LABEL_128;
            }
          }
        }

        goto LABEL_52;
      }
    }

    v42 = v38 <= v15 || v39 <= v15;
    if (!v42 || v37.f32[0] < v14 && v32.f32[0] < v14)
    {
      goto LABEL_71;
    }

    v43 = (v15 - v38) * vsub_f32(v32, v37).f32[0] - (v14 - v37.f32[0]) * (v39 - v38);
    if (v43 == 0.0)
    {
      v26 = 0.0;
      v30 = v70;
      if (v70)
      {
        goto LABEL_129;
      }

      goto LABEL_131;
    }

    if (v39 < v38)
    {
      v43 = -v43;
    }

    if (v43 > 0.0)
    {
      ++v34;
    }

LABEL_52:
    ++v16;
    --v35;
  }

  while (v35);
  if (v34)
  {
    v61 = 1;
  }

  else
  {
    v61 = -1;
  }

  v26 = v61;
  v30 = v70;
  if (v70)
  {
    goto LABEL_129;
  }

LABEL_131:
  v70 = 0;
  v67 = 0u;
  v68 = 0u;
  if (SDWORD1(v66) >= 1)
  {
    v62 = 0;
    v63 = v71;
    do
    {
      *&v63[4 * v62++] = 0;
    }

    while (v62 < SDWORD1(v66));
  }

  if (v72 != v73)
  {
    j__free(v72);
  }

  if (v75)
  {
    sub_1002ACC1C(v74);
  }

  return v26;
}