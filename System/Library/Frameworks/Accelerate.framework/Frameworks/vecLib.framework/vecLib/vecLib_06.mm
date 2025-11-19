uint64_t sub_236702178(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  if (*v2 - 96 * a2 >= 96)
  {
    v4 = 96;
  }

  else
  {
    v4 = *v2 - 96 * a2;
  }

  v3 = v2[1];
  if (v3 - 96 * a2 >= 96)
  {
    v5 = 96;
  }

  else
  {
    v5 = v3 - 96 * a2;
  }

  v6 = *(v2 + 1) + 8 * (96 * a2 * *(v2 + 2) + 96 * a2);
  result = dpotf2_NEWLAPACK();
  v8 = v5;
  if (v4 > v5)
  {
    result = APL_dtrsm();
    v8 = v5;
  }

  if (v8 != v5)
  {
    v2[6] = 0;
  }

  return result;
}

uint64_t sub_236702274(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = (*v2 - 1) / 96 + 1;
  v4 = *(v2 + 4) - 96 * (a2 / v3);
  v6 = *(v2 + 8) + 8 * 96 * (a2 / v3) * *(v2 + 16) + 768 * (a2 % v3);
  return APL_dtrsm();
}

uint64_t sub_236702330(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = (*v2 - 1) / 96 + 1;
  v4 = 3 * (a2 % v3);
  v5 = 96 * (a2 % v3);
  v6 = (v3 * v3);
  v7 = 3 * (a2 / v6);
  v8 = 96 * (a2 / v6);
  if (*v2 - 32 * v4 >= 96)
  {
    v9 = 96;
  }

  else
  {
    v9 = *v2 - 32 * v4;
  }

  v10 = *(v2 + 4) - 32 * v7;
  v11 = *(v2 + 8) + 8 * *(v2 + 16) * v8 + 8 * v5;
  if (8 * v5 != 8 * v8)
  {
    return APL_dgemm();
  }

  result = cblas_dsyrk_NEWLAPACK();
  if (v10 < v9)
  {
    return APL_dgemm();
  }

  return result;
}

uint64_t sub_2367024D8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (a4 < 1)
  {
    return 0;
  }

  v15 = 0;
  v16 = a4;
  v17 = 8 * a7 + 8;
  while (*a6 != 0.0)
  {
    a2.n128_u64[0] = *a6;
    sub_236778EA4(a1, v16, a6, a7, a8, a10, a2);
    *a6 = *a8;
    v15 = (v15 + 1);
    a1 = (a1 - 1);
    a6 = (a6 + v17);
    if (!--v16)
    {
      return a4;
    }
  }

  return v15;
}

uint64_t sub_236702598(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = a2;
  v29[2] = *MEMORY[0x277D85DE8];
  if (a2 >= 48)
  {
    LODWORD(v13) = 0;
    v28 = a4 + 1;
    v26 = a1 - a2;
    do
    {
      v14 = &v11[v28 * v13];
      v15 = v12 - v13;
      if (v12 - v13 >= 48)
      {
        v16 = 48;
      }

      else
      {
        v16 = v15;
      }

      v17 = a1;
      v18 = sub_2367024D8((a1 - v13), a5, a2, v16, a4, &v11[v28 * v13], a4, v29, a9, a8);
      v13 = (v18 + v13);
      if (v18 >= 1 && v13 < v12)
      {
        v20 = v18;
        v21 = v15 - v18;
        v22 = v14 + 8 * v18;
        v23 = v14 + 8 * v28 * v18;
        sub_2368013F0(v21, v18, v22, a4, v14, v23, a4, a8);
        if (v17 > v12)
        {
          sub_2368021E4(v26, v21, v20, v22 + 8 * v21, v22, a4, v14, v23 + 8 * v21, a4, a8);
        }
      }

      v11 = a3;
      a1 = v17;
    }

    while (v13 < v12);
  }

  else
  {
    v13 = sub_2367024D8(a1, a5, a2, a2, a4, a3, a4, v29, a9, a8);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_236702720(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4 - 1;
  if (a4 >= 1)
  {
    v10 = 0;
    v11 = a6 + 8;
    do
    {
      v12 = 1.0 / *(v11 - 8);
      cblas_dscal_NEWLAPACK();
      if (v9 >= 1)
      {
        cblas_dger_NEWLAPACK();
      }

      ++v10;
      v11 += 8 * a7 + 8;
      --v9;
    }

    while (a4 != v10);
  }

  if (a1 > a4)
  {
    cblas_dtrsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_dtrsm_NEWLAPACK();
    cblas_dgemm_NEWLAPACK();
  }

  return a4;
}

uint64_t sub_2367028D0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a3 >= 100)
  {
    v10 = 0;
    do
    {
      v11 = a3 - v10;
      if (a3 - v10 >= 100)
      {
        v12 = 100;
      }

      else
      {
        v12 = v11;
      }

      sub_236702720(a1 - v10, a2, v11, v12, a5, a4 + 8 * (a5 + 1) * v10, a5);
      v10 += v12;
    }

    while (v10 < a3);
  }

  else
  {
    sub_236702720(a1, a2, a3, a3, a5, a4, a5);
  }

  v13 = __OFSUB__(v8, a3);
  v14 = v8 - a3;
  if (!((v14 < 0) ^ v13 | (v14 == 0)))
  {
    cblas_dtrsm_NEWLAPACK();
  }

  if (a1 - a3 >= 1 && v14 >= 1)
  {
    cblas_dgemm_NEWLAPACK();
  }

  return a3;
}

uint64_t sub_236702A2C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = a3;
  v21 = a10;
  if (a1 > 767 || a3 > 383)
  {
    if (a17)
    {
      v22 = (a1 - 1) / 384;
      v23 = v22 + 1;
      v76[0] = a1;
      v76[1] = a2;
      v78 = a4;
      v77 = a3;
      v24 = (a2 - 1) / 384 + 1;
      v79 = a5;
      v80 = a6;
      v81 = a7;
      v82 = a8;
      v83 = a9;
      v84 = a10;
      v85 = a14;
      v86 = a12;
      v87 = a13;
      v88 = a16;
      v74 = 0u;
      v75 = 0u;
      sub_236792218(a17, a18, &v74);
      *(&v75 + 1) = v76;
      v25 = v24 * (v22 + 1);
      v30 = (*(a12 + 24))(48 * v25);
      if (v25 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v25; ++i)
        {
          v33 = v30 + 48 * i;
          atomic_store(0, v33);
          *(v33 + 4) = 0;
          *(v33 + 8) = 0;
          v34 = *(v33 + 16);
          do
          {
            _X5 = *(v33 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X11] }

            _ZF = _X4 == v34;
            v34 = _X4;
          }

          while (!_ZF);
          *(v33 + 32) = 0;
          *(v33 + 40) = 0;
        }
      }

      if (v19 >= 1)
      {
        v64 = v30;
        v65 = 0;
        v39 = 0;
        v40 = v23;
        v62 = 48 * v22 + 48;
        v69 = v23;
        v70 = 384;
        v63 = v19;
        v72 = v30;
        do
        {
          v66 = v39 / 0x180 * v40;
          v68 = v39 / 0x180;
          v41 = v30 + 48 * v66;
          v42 = v41 + 48 * (v39 / 0x180);
          sub_236792228(&v74, v39 / 0x180, sub_236703450, 1, _X4, _X5, v28, v29, v42);
          v43 = v39;
          if (v39)
          {
            v44 = v40;
            v45 = 0;
            v46 = v64;
            v47 = v65;
            do
            {
              v48 = v42;
              v49 = v44;
              sub_236792228(&v74, v47, sub_2367039D4, 2, _X4, _X5, v28, v29, v46);
              v44 = v49;
              v42 = v48;
              v45 += 384;
              v46 += v62;
              v47 += v44;
            }

            while (v45 < v43);
          }

          v39 = v43 + 384;
          if (v43 + 384 < a1)
          {
            v50 = v70;
            do
            {
              sub_236792228(&v74, v66 + v50 / 0x180uLL, sub_236703B44, 2, _X4, _X5, v28, v29, v72 + 48 * (v66 + v50 / 0x180uLL));
              v50 += 384;
            }

            while (v50 < a1);
          }

          if (v39 < a2)
          {
            v51 = v70;
            do
            {
              sub_236792228(&v74, v68 + v51 / 0x180u * v69, sub_236703D30, 2, _X4, _X5, v28, v29, v42);
              v51 += 384;
            }

            while (v51 < a2);
            v67 = v66 * v24;
            v52 = v70;
            do
            {
              if (v39 < a1)
              {
                v53 = v70;
                do
                {
                  sub_236792228(&v74, v67 + v52 / 0x180u * v69 + v53 / 0x180uLL, sub_2367040E4, 3, _X4, _X5, v28, v29, v41 + 48 * (v53 / 0x180uLL));
                  v53 += 384;
                }

                while (v53 < a1);
              }

              v52 += 384;
            }

            while (v52 < a2);
          }

          v40 = v69;
          v70 += 384;
          v64 += 48;
          ++v65;
          v19 = v63;
          v30 = v72;
        }

        while (v39 < v63);
      }

      if (sub_236792900(&v74))
      {
        sub_2366FCEC8(a17);
      }

      (*(a12 + 32))(v30);
    }

    else
    {
      if (a3 >= 384)
      {
        v54 = 0;
        v55 = a5 + 1;
        do
        {
          v58 = v19 - v54;
          if (v19 - v54 >= 384)
          {
            v59 = 384;
          }

          else
          {
            v59 = v58;
          }

          v60 = v21;
          sub_2367030A0(a1 - v54, a2 - v54, v58, v59, v54, a4 + 8 * v55 * v54, a5, a6, a7, v21 + 4 * v54, a13);
          v21 = v60;
          v54 += v59;
        }

        while (v54 < v19);
      }

      else
      {
        sub_2367030A0(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
      }

      if (a2 > v19)
      {
        cblas_dtrsm_NEWLAPACK();
      }

      if (a1 - v19 >= 1 && a2 - v19 >= 1)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_2367030A0(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
    if (a2 > v19)
    {
      cblas_dtrsm_NEWLAPACK();
    }

    if (a1 - v19 >= 1 && a2 - v19 >= 1)
    {
LABEL_46:
      cblas_dgemm_NEWLAPACK();
    }
  }

  return v19;
}

uint64_t sub_2367030A0(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v34 = a6 + 8 * ~a7 * a5;
    v40 = (a5 + a3);
    v36 = 8 * a7 + 8;
    v37 = a10 - 4 * a5;
    v35 = a3 - 2;
    v41 = a3 + 1;
    do
    {
      v14 = (a6 + 8 * v13 * a7 + 8 * v13);
      if (a3 - v13 < 1)
      {
        v16 = 0.0;
      }

      else
      {
        v15 = v41 - v13;
        v16 = 0.0;
        v17 = (a6 + 8 * v13 * a7 + 8 * v13);
        do
        {
          v18 = *v17++;
          v19 = fabs(v18);
          if (v16 <= v19)
          {
            v16 = v19;
          }

          --v15;
        }

        while (v15 > 1);
      }

      if (v16 >= *(a11 + 24))
      {
        v21 = (a6 + 8 * v13 * a7 + 8 * v13);
        v22 = v13;
        v23 = v13;
        if (a3 > v13)
        {
          while (fabs(*v21) != v16)
          {
            ++v22;
            ++v21;
            if (a3 == v22)
            {
              v23 = v13;
              goto LABEL_18;
            }
          }

          v23 = v22;
        }

LABEL_18:
        if (v13 != v23)
        {
          v24 = v13 + a5;
          v25 = *(a10 + 4 * v13);
          v26 = v23 + a5;
          *(a10 + 4 * v13) = *(v37 + 4 * v26);
          *(v37 + 4 * v26) = v25;
          if (v40 >= 1)
          {
            v27 = v34;
            v28 = v40;
            do
            {
              v29 = *(v27 + 8 * v24);
              *(v27 + 8 * v24) = *(v27 + 8 * v26);
              *(v27 + 8 * v26) = v29;
              v27 += 8 * a7;
              --v28;
            }

            while (v28);
          }

          if (a2 > a3)
          {
            cblas_dswap_NEWLAPACK();
          }
        }

        v30 = *v14;
        v20 = v13 + 1;
        cblas_dscal_NEWLAPACK();
        if (a3 - v13 >= 2 && ~v13 + a4 >= 1)
        {
          cblas_dger_NEWLAPACK();
        }
      }

      else
      {
        *v14 = 0x3E50000000000000;
        v20 = v13 + 1;
        if (v13 + 1 < a3)
        {
          bzero((a6 + 8 + v36 * v13), 8 * (v35 - v13) + 8);
        }
      }

      v13 = v20;
    }

    while (v20 != a4);
  }

  if (a1 > a3)
  {
    cblas_dtrsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_dtrsm_NEWLAPACK();
    cblas_dgemm_NEWLAPACK();
  }

  return a4;
}

uint64_t sub_236703450(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v3 = *v2;
  v4 = v2[1];
  v5 = 3 * (a2 % ((*v2 - 1) / 384 + 1));
  v6 = 384 * (a2 % ((*v2 - 1) / 384 + 1));
  v7 = v6 + 384;
  if (v6 + 384 < *v2)
  {
    v3 = v6 + 384;
  }

  v72 = v3;
  if (v7 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6 + 384;
  }

  v71 = v8;
  v9 = v2[2];
  if (v7 < v9)
  {
    v9 = v6 + 384;
  }

  v74 = v9;
  v10 = (v9 - (v5 << 7));
  v11 = *(v2 + 2);
  v12 = *(v2 + 3);
  v75 = v6;
  v13 = v11 + 8 * (v6 * v12 + v6);
  v73 = v2;
  v14 = *(v2 + 9);
  v15 = (v14 + 4 * v6);
  if (v10 >= 1)
  {
    v16 = 0;
    v17 = *(v73 + 11);
    v18 = vdupq_n_s64(v10 - 1);
    v19 = (v14 + 4 * v75 + 8);
    v20 = xmmword_23681F910;
    v21 = xmmword_23681F920;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v21));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        *(v19 - 2) = v16;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        *(v19 - 1) = v16 + 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v20))).i32[1])
      {
        *v19 = v16 + 2;
        v19[1] = v16 + 3;
      }

      v16 += 4;
      v20 = vaddq_s64(v20, v22);
      v21 = vaddq_s64(v21, v22);
      v19 += 4;
    }

    while (((v10 + 3) & 0xFFFFFFFC) != v16);
    v24 = 0;
    v78 = 8 * v12 + 8;
    v77 = v10 - 2;
    v76 = v13 + 8;
    v79 = v74 - v75 + 1;
    do
    {
      v25 = (v13 + 8 * v24 * v12 + 8 * v24);
      if (v10 - v24 < 1)
      {
        v27 = 0.0;
      }

      else
      {
        v26 = v79 - v24;
        v27 = 0.0;
        v28 = (v13 + 8 * v24 * v12 + 8 * v24);
        do
        {
          v29 = *v28++;
          v30 = fabs(v29);
          if (v27 <= v30)
          {
            v27 = v30;
          }

          --v26;
        }

        while (v26 > 1);
      }

      v31 = (v13 + 8 * v24 * v12 + 8 * v24);
      v32 = v24;
      if (v27 >= *(v17 + 24))
      {
        while (fabs(*v31) != v27)
        {
          ++v32;
          ++v31;
          if (v10 == v32)
          {
            LODWORD(v32) = v24;
            break;
          }
        }

        if (v24 != v32)
        {
          v34 = v15[v24];
          v15[v24] = v15[v32];
          v15[v32] = v34;
          v35 = v13;
          v36 = v10;
          do
          {
            v37 = *(v35 + 8 * v24);
            *(v35 + 8 * v24) = *(v35 + 8 * v32);
            *(v35 + 8 * v32) = v37;
            v35 += 8 * v12;
            --v36;
          }

          while (v36);
        }

        v38 = *v25;
        v33 = v24 + 1;
        a1 = cblas_dscal_NEWLAPACK();
        if (v10 - v24 >= 2)
        {
          LODWORD(v68) = v12;
          a1 = cblas_dger_NEWLAPACK();
        }
      }

      else
      {
        *v25 = 0x3E50000000000000;
        v33 = v24 + 1;
        if (v24 + 1 < v10)
        {
          bzero((v76 + v24 * v78), 8 * (v77 - v24) + 8);
        }
      }

      v24 = v33;
    }

    while (v33 != v10);
  }

  v39 = v73;
  v40 = (*(v73 + 8) + 4 * v75);
  MEMORY[0x28223BE20](a1);
  v42 = &v70 - ((v41 + 15) & 0x7FFFFFFF0);
  result = memcpy(v42, v40, 4 * v10);
  if (v10 >= 1)
  {
    v44 = v10;
    v45 = v15;
    do
    {
      v46 = *v45++;
      *v40++ = *&v42[4 * v46];
      --v44;
    }

    while (v44);
  }

  v47 = v72 - v74;
  v48 = (v71 - v74);
  if (v72 - v74 > 0)
  {
    LODWORD(v68) = v39[6];
    v67 = v13 + 8 * v10;
    LODWORD(v66) = v68;
    result = cblas_dtrsm_NEWLAPACK();
  }

  if (v48 >= 1)
  {
    v49 = *(v39 + 4) + 8 * *(v39 + 5) * v75;
    MEMORY[0x28223BE20](result);
    v50 = 0;
    v51 = 8 * *(v39 + 5);
    v52 = v49;
    do
    {
      if (v10 >= 1)
      {
        v53 = v52;
        v54 = v65;
        v55 = v10;
        do
        {
          *v54++ = *v53;
          v53 = (v53 + v51);
          --v55;
        }

        while (v55);
        v56 = 0;
        v57 = v15;
        v58 = v10;
        do
        {
          v59 = *v57++;
          *(v52 + v56) = v65[v59];
          v56 += v51;
          --v58;
        }

        while (v58);
      }

      ++v50;
      ++v52;
    }

    while (v50 != v48);
    v64 = *(v39 + 3);
    result = cblas_dtrsm_NEWLAPACK();
    if (v47 >= 1)
    {
      v60 = *(v39 + 5);
      v61 = *(v39 + 6) + 8 * (v74 - v39[2]);
      v62 = v39[6];
      v69 = *(v39 + 7);
      v68 = v61;
      LODWORD(v67) = v60;
      v66 = v49;
      result = cblas_dgemm_NEWLAPACK();
    }
  }

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2367039D4(uint64_t result, uint64_t a2)
{
  v21[384] = *MEMORY[0x277D85DE8];
  v2 = *(*result + 24);
  v3 = *(v2 + 4);
  v4 = (*v2 - 1) / 384 + 1;
  v5 = a2 / v4;
  if (v3 >= 384 * v5 + 384)
  {
    v3 = 384 * v5 + 384;
  }

  v20 = (v3 - 384 * v5);
  if (v20 >= 1)
  {
    v6 = 0;
    v7 = 384 * (a2 % v4);
    v8 = *(v2 + 72) + 4 * v7;
    v9 = *(v2 + 24);
    v10 = *(v2 + 16) + 8 * v9 * 384 * v5 + 8 * v7;
    v11 = *(v2 + 8);
    if (v11 >= v7 + 384)
    {
      v11 = v7 + 384;
    }

    v12 = v11 - v7;
    v13 = 8 * (v11 - v7);
    v14 = v10;
    do
    {
      result = __memcpy_chk();
      v15 = v8;
      v16 = v14;
      v17 = v13;
      if (v12 >= 1)
      {
        do
        {
          v18 = *v15++;
          *v16++ = v21[v18];
          v17 -= 8;
        }

        while (v17);
      }

      ++v6;
      v14 += v9;
    }

    while (v6 != v20);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_236703B44(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = (*v2 - 1) / 384 + 1;
  v4 = a2 / v3;
  v5 = 3 * (a2 % v3);
  v6 = 384 * (a2 % v3);
  v7 = 3 * v4;
  v8 = 384 * v4;
  if (*v2 - (v5 << 7) >= 384)
  {
    v9 = 384;
  }

  else
  {
    v9 = *v2 - (v5 << 7);
  }

  v10 = *(v2 + 8) - (v7 << 7);
  if (*(v2 + 4) - (v7 << 7) >= 384)
  {
    v11 = 384;
  }

  else
  {
    v11 = *(v2 + 4) - (v7 << 7);
  }

  v12 = v6;
  v13 = *(v2 + 16) + 8 * *(v2 + 24) * v8 + 8 * v6;
  result = cblas_dtrsm_NEWLAPACK();
  v15 = *(v2 + 8);
  v16 = v15 - (v7 << 7);
  if (v11 < v16)
  {
    v16 = v11;
  }

  v17 = v11 - (v16 & ~(v16 >> 31));
  v18 = v15 - (v5 << 7);
  if (v9 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v9;
  }

  v20 = v19 & ~(v19 >> 31);
  v21 = v9 - v20;
  v23 = *(v2 + 32);
  v22 = *(v2 + 40);
  if (v19 >= 1 && v17 >= 1)
  {
    v30 = *(v2 + 40);
    v27 = *(v2 + 24);
    result = cblas_dgemm_NEWLAPACK();
  }

  if (v17 >= 1 && v21 >= 1)
  {
    v26 = *(v2 + 24);
    v31 = *(v2 + 56);
    v28 = *(v2 + 40);
    v29 = *(v2 + 48) + 8 * (v20 + v12 - *(v2 + 8));
    return cblas_dgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_236703D30(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v4 = (*v2 - 1) / 384 + 1;
  v5 = a2 / v4;
  v6 = 3 * (a2 % v4);
  v7 = v6 << 7;
  v8 = 3 * v5;
  v9 = (v8 << 7);
  v10 = *v2 - (v6 << 7);
  if (v10 >= 384)
  {
    v11 = 384;
  }

  else
  {
    v11 = v10;
  }

  v3 = *(v2 + 1);
  if (v3 - (v8 << 7) >= 384)
  {
    v12 = 384;
  }

  else
  {
    v12 = v3 - (v8 << 7);
  }

  v13 = *(v2 + 2);
  result = (v13 - (v6 << 7));
  if (result >= 384)
  {
    v15 = 384;
  }

  else
  {
    v15 = result;
  }

  v16 = v7;
  v17 = v2[2];
  v18 = v2[3];
  v19 = v17 + 8 * (v7 * v18 + v7);
  v64 = v2[9] + 4 * v7;
  v20 = v13 - (v8 << 7);
  if (v12 < v20)
  {
    v20 = v12;
  }

  v21 = v20 & ~(v20 >> 31);
  v22 = (v12 - v21);
  if (v11 >= result)
  {
    v23 = result;
  }

  else
  {
    v23 = v11;
  }

  if (v20 >= 1)
  {
    v56 = v23;
    v58 = result;
    v60 = v19;
    v61 = (v12 - v21);
    v62 = v15;
    v55[1] = v55;
    v57 = v9;
    v59 = v16;
    v24 = v17 + 8 * v18 * v9 + 8 * v16;
    MEMORY[0x28223BE20](result);
    v25 = 0;
    v63 = v2;
    v26 = v2[3];
    v27 = v24;
    do
    {
      __memcpy_chk();
      v28 = v64;
      v29 = v27;
      v30 = v11;
      if (v10 >= 1)
      {
        do
        {
          v31 = *v28++;
          *v29++ = v51[v31];
          --v30;
        }

        while (v30);
      }

      ++v25;
      v27 += v26;
    }

    while (v25 != v21);
    v15 = v62;
    cblas_dtrsm_NEWLAPACK();
    v2 = v63;
    v13 = *(v63 + 2);
    v22 = v61;
    v16 = v59;
    result = v58;
    LODWORD(v9) = v57;
    v23 = v56;
  }

  if (v22 >= 1)
  {
    v63 = v55;
    v32 = v23 & ~(v23 >> 31);
    v33 = v21 + v9 - v13;
    v34 = v2[4] + 8 * v2[5] * v16 + 8 * v33;
    v35 = MEMORY[0x28223BE20](result);
    v36 = 0;
    v37 = 8 * v2[5];
    v38 = v34;
    do
    {
      if (v35 >= 1)
      {
        v39 = v38;
        v40 = v51;
        v41 = v15;
        do
        {
          *v40++ = *v39;
          v39 = (v39 + v37);
          --v41;
        }

        while (v41);
        v42 = 0;
        v43 = v64;
        v44 = v15;
        do
        {
          v45 = *v43++;
          *(v38 + v42) = v51[v45];
          v42 += v37;
          --v44;
        }

        while (v44);
      }

      ++v36;
      ++v38;
    }

    while (v36 != v22);
    v50 = v2[3];
    result = cblas_dtrsm_NEWLAPACK();
    if (v11 - v32 >= 1)
    {
      v46 = v2[5];
      v47 = v2[6] + 8 * v2[7] * v33 + 8 * (v32 + v16 - *(v2 + 2));
      v48 = *(v2 + 6);
      v54 = v2[7];
      v52 = v46;
      v51[380] = v34;
      v53 = v47;
      result = cblas_dgemm_NEWLAPACK();
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2367040E4(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 24);
  v3 = *(v2 + 4);
  v4 = (*v2 - 1) / 384 + 1;
  v5 = 3 * (a2 % v4);
  v6 = 384 * (a2 % v4);
  v7 = 3 * ((a2 % (v4 + v4 * ((v3 - 1) / 384))) / v4);
  v8 = v7 << 7;
  if (*v2 - (v5 << 7) >= 384)
  {
    v9 = 384;
  }

  else
  {
    v9 = *v2 - (v5 << 7);
  }

  if (v3 - (v7 << 7) >= 384)
  {
    v10 = 384;
  }

  else
  {
    v10 = v3 - (v7 << 7);
  }

  v11 = *(v2 + 8);
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  v14 = v6;
  v15 = v11 - (v7 << 7);
  if (v10 < v15)
  {
    v15 = v10;
  }

  v16 = v15 & ~(v15 >> 31);
  v17 = v10 - v16;
  if (v9 >= v11 - (v5 << 7))
  {
    v18 = v11 - (v5 << 7);
  }

  else
  {
    v18 = v9;
  }

  v19 = v18 & ~(v18 >> 31);
  if (v15 >= 1)
  {
    v29 = *(v2 + 24);
    result = cblas_dgemm_NEWLAPACK();
    v11 = *(v2 + 8);
  }

  v20 = v9 - v19;
  v21 = v16 + v8 - v11;
  v23 = *(v2 + 32);
  v22 = *(v2 + 40);
  v24 = v21;
  if (v18 >= 1 && v17 >= 1)
  {
    v30 = *(v2 + 40);
    v26 = *(v2 + 24);
    result = cblas_dgemm_NEWLAPACK();
  }

  if (v20 >= 1 && v17 >= 1)
  {
    v25 = *(v2 + 24);
    v27 = *(v2 + 40);
    v28 = *(v2 + 48) + 8 * *(v2 + 56) * v24 + 8 * (v19 + v14 - *(v2 + 8));
    return cblas_dgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_236704344(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a4 < 1)
  {
    return 0;
  }

  v17 = a6;
  v58 = 0;
  v21 = 0;
  v56 = a6 + 8 * ~a7 * a5;
  v54 = a10 - 4 * a5;
  v55 = a8 - 8 * a5 * a9;
  v22 = a11 - 4 * a5;
  v50 = 8 * a7;
  v51 = a7 + 1;
  v52 = 8 * a7 + 8;
  v53 = a6 + 8;
  v49 = a3 - 1;
  v47 = a1 - a3;
  v48 = a6 + 8 * a3;
  LODWORD(v23) = a4;
  while (1)
  {
    v24 = (v21 + 1);
    v25 = 0.0;
    if (v24 < a3)
    {
      v26 = (v53 + v52 * v21);
      v27 = v49 - v21;
      do
      {
        v28 = *v26++;
        v29 = fabs(v28);
        if (v25 <= v29)
        {
          v25 = v29;
        }

        --v27;
      }

      while (v27);
    }

    v30 = v25;
    if (a3 < a1)
    {
      v31 = (v48 + v50 * v21);
      v32 = v47;
      v30 = v25;
      do
      {
        v33 = *v31++;
        v34 = fabs(v33);
        if (v30 <= v34)
        {
          v30 = v34;
        }

        --v32;
      }

      while (v32);
    }

    v35 = *(a13 + 24);
    if (v30 >= v35 || fabs(*(v17 + 8 * v51 * v21)) >= v35)
    {
      v36 = v30 * *(a13 + 16);
      v37 = (v17 + 8 * v21 * a7 + 8 * v21);
      if (v36 <= fabs(*v37))
      {
        goto LABEL_25;
      }

      if (v36 <= v25)
      {
        if (v24 >= a3)
        {
LABEL_23:
          v42 = -1;
        }

        else
        {
          v41 = (v53 + v52 * v21);
          v42 = v21 + 1;
          while (fabs(*v41) < v25)
          {
            ++v42;
            ++v41;
            if (a3 == v42)
            {
              goto LABEL_23;
            }
          }
        }

        sub_236704748((v21 + a5), v42 + a5, a5 + a2, a5 + a3, v56, a7, v55, a9, v54);
        v43 = *v37;
LABEL_25:
        cblas_dscal_NEWLAPACK();
        if (~v21 + a1 >= 1 && ~v21 + a4 >= 1)
        {
          cblas_dger_NEWLAPACK();
        }

        ++v58;
        goto LABEL_29;
      }
    }

    v23 = v23 - 1;
    v38 = v23 + a5;
    v39 = v21 + a5;
    sub_236704748(v39, v23 + a5, a5 + a2, a5 + a3, v56, a7, v55, a9, v54);
    if (v21 == v23)
    {
      break;
    }

    v40 = *(v22 + 4 * v39);
    *(v22 + 4 * v39) = *(v22 + 4 * v38);
    *(v22 + 4 * v38) = v40;
    cblas_dswap_NEWLAPACK();
    v24 = v21;
LABEL_29:
    v21 = v24;
    v17 = a6;
    if (v24 >= v23)
    {
      goto LABEL_33;
    }
  }

  v17 = a6;
LABEL_33:
  if (a3 <= a4)
  {
    return v58;
  }

  v44 = v58;
  if (v58 > 0)
  {
    cblas_dtrsm_NEWLAPACK();
    sub_2367047C0(0x6Fu, a1 - v58, a3 - a4, v58, v17 + 8 * v58, a7, v17 + 8 * a4 * a7, a7, v17 + 8 * a4 * a7 + 8 * v58, a7, a12, a14, a15, a16);
  }

  return v44;
}

uint64_t sub_236704748(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result != a2)
  {
    v9 = *(a9 + 4 * result);
    *(a9 + 4 * result) = *(a9 + 4 * a2);
    *(a9 + 4 * a2) = v9;
    if (a4 >= 1)
    {
      v10 = a4;
      do
      {
        v11 = *(a5 + 8 * result);
        *(a5 + 8 * result) = *(a5 + 8 * a2);
        *(a5 + 8 * a2) = v11;
        a5 += 8 * a6;
        --v10;
      }

      while (v10);
    }

    result = (a3 - a4);
    if (a3 > a4)
    {
      return cblas_dswap_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_2367047C0(unsigned int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a2 - 1;
  if (a2 < 1)
  {
    v14 = a2 + 254;
  }

  v15 = (v14 >> 8) + 1;
  v16 = a3 - 1;
  if (a3 < 1)
  {
    v16 = a3 + 254;
  }

  v17 = ((v16 >> 8) + 1) * v15;
  if (v17 == 1 || a13 == 0)
  {

    return cblas_dgemm_NEWLAPACK();
  }

  else
  {
    v35 = xmmword_23681FB50;
    v27[0] = a2;
    v27[1] = a3;
    v27[2] = a4;
    v27[3] = 111;
    v28 = a1;
    v29 = a5;
    v30 = a7;
    v31 = a9;
    v32 = a6;
    v33 = a8;
    v34 = a10;
    v36 = a11;
    v37 = a12;
    v25 = 0u;
    v26 = 0u;
    sub_236792218(a13, a14, &v25);
    *(&v26 + 1) = v27;
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        sub_236792228(&v25, i, sub_236705DA0, 0, v20, v21, v22, v23, v25);
      }
    }

    result = sub_236792900(&v25);
    if (result)
    {
      return sub_2366FCEC8(a13);
    }
  }

  return result;
}

uint64_t sub_236704934(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v80 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  v12 = a6;
  v13 = a5;
  v15 = a2;
  v71 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v83 = a5 + 8 * ~a6 * a4;
  v76 = a9 - 4 * a4;
  v77 = a7 - 8 * a4 * a8;
  v72 = (a2 - a3);
  v20 = a5 + 8;
  v21 = 8 * a6;
  v81 = 8 * a6 + 8;
  v68 = 8 * (~a3 + a2);
  v66 = a3 - 2;
  v67 = a1 - 2;
  v86 = 16 * a6;
  LODWORD(v22) = a3;
  v69 = a10 - 4 * a4;
  v75 = a5 + 8 * a3;
  v73 = a5 + 8;
  do
  {
    while (1)
    {
      v23 = (v18 + 1);
      v24 = 0.0;
      if (v23 < a3)
      {
        v25 = (v20 + v81 * v18);
        v26 = v80 - v18;
        do
        {
          v27 = *v25++;
          v28 = fabs(v27);
          if (v24 <= v28)
          {
            v24 = v28;
          }

          --v26;
        }

        while (v26);
      }

      v87 = v19;
      v29 = v24;
      if (a3 < a1)
      {
        v30 = (v75 + v21 * v18);
        v31 = a3;
        v29 = v24;
        do
        {
          v32 = *v30++;
          v33 = fabs(v32);
          if (v29 <= v33)
          {
            v29 = v33;
          }

          ++v31;
        }

        while (v31 < a1);
      }

      v34 = *(a12 + 24);
      v35 = v13 + 8 * v18 * v12;
      if (v29 >= v34 || fabs(*(v35 + 8 * v18)) >= v34)
      {
        v43 = v29 * *(a12 + 16);
        v44 = (v35 + 8 * v18);
        if (v43 <= fabs(*v44))
        {
          goto LABEL_34;
        }

        if (v43 <= v24)
        {
          if (v23 >= a3)
          {
LABEL_32:
            v49 = -1;
          }

          else
          {
            v48 = (v20 + v81 * v18);
            v49 = v18 + 1;
            while (fabs(*v48) < v24)
            {
              ++v49;
              ++v48;
              if (a3 == v49)
              {
                goto LABEL_32;
              }
            }
          }

          sub_236704748((v18 + a4), v49 + a4, a4 + v15, a4 + a3, v83, v12, v77, a8, v76);
          v50 = *v44;
LABEL_34:
          cblas_dscal_NEWLAPACK();
          if (~v18 + a1 >= 1 && ~v18 + a3 >= 1)
          {
            cblas_dger_NEWLAPACK();
          }

          v19 = (v87 + 1);
          v17 = 1;
          v12 = a6;
          v13 = a5;
          goto LABEL_63;
        }

        v79 = v17;
        v22 = v22 - 1;
        v45 = v22 + a4;
        v46 = v18 + a4;
        v47 = v12;
        sub_236704748(v46, v22 + a4, a4 + v15, a4 + a3, v83, v12, v77, a8, v76);
        goto LABEL_60;
      }

      v36 = 0.0;
      if (v23 < a3)
      {
        v37 = (a5 + v21 + v21 * v18 + 8 * v18);
        v38 = v80 - v18;
        do
        {
          v39 = fabs(*v37);
          if (v36 <= v39)
          {
            v36 = v39;
          }

          v37 = (v37 + v21);
          --v38;
        }

        while (v38);
      }

      if (v36 < v34)
      {
        v40 = v83;
        if (v15 <= a3)
        {
          v41 = v71;
        }

        else
        {
          v41 = v71;
          if (v19 > v71)
          {
            v42 = v17;
            cblas_dtrsm_NEWLAPACK();
            v17 = v42;
            v40 = v83;
            v12 = a6;
            v41 = v87;
            if (a3 > v87)
            {
              cblas_dgemm_NEWLAPACK();
              v17 = v42;
              v40 = v83;
              v12 = a6;
              v41 = v87;
            }
          }
        }

        v71 = v41;
        v15 = a2;
        if (a2 <= a3)
        {
          v20 = v73;
          goto LABEL_46;
        }

        v51 = (a7 + 8 * v18 * a8);
        v52 = v72;
        v20 = v73;
        do
        {
          v53 = *v51++;
          v54 = fabs(v53);
          if (v36 <= v54)
          {
            v36 = v54;
          }

          --v52;
        }

        while (v52);
      }

      v40 = v83;
LABEL_46:
      if (v36 < *(a12 + 24))
      {
        *(v35 + 8 * v18) = 0x7FF0000000000000;
        if (a1 > v23)
        {
          v55 = v17;
          bzero((v20 + v81 * v18), 8 * (v67 - v18) + 8);
          v17 = v55;
        }

        v13 = a5;
        if (v23 < a3)
        {
          v56 = 0;
          v57 = a5 + 8 * v18;
          v58 = (v66 - v18);
          v59 = vdupq_n_s64(v58);
          do
          {
            v60 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(vdupq_n_s64(v56), xmmword_23681F920)));
            if (v60.i8[0])
            {
              *(v57 + v21 + v21 * v18) = 0;
            }

            if (v60.i8[4])
            {
              *(v57 + v21 * (v18 + 2)) = 0;
            }

            v56 += 2;
            v57 += v86;
          }

          while (((v58 + 2) & 0x1FFFFFFFELL) != v56);
        }

        if (v72 >= 1)
        {
          v61 = (a7 + 8 * v18 * a8);
          v62 = v17;
          bzero(v61, v68 + 8);
          v17 = v62;
        }

        v19 = (v87 + 1);
        v12 = a6;
        goto LABEL_63;
      }

      v79 = v17;
      v22 = v22 - 1;
      v45 = v22 + a4;
      v46 = v18 + a4;
      v47 = v12;
      sub_236704748(v46, v22 + a4, a4 + v15, a4 + a3, v40, v12, v77, a8, v76);
LABEL_60:
      if (v18 == v22)
      {
        break;
      }

      v63 = *(v69 + 4 * v46);
      *(v69 + 4 * v46) = *(v69 + 4 * v45);
      *(v69 + 4 * v45) = v63;
      cblas_dswap_NEWLAPACK();
      v23 = v18;
      v12 = v47;
      v13 = a5;
      v19 = v87;
      v15 = a2;
      v20 = v73;
      v17 = v79;
LABEL_63:
      v18 = v23;
      if (v23 >= v22)
      {
        goto LABEL_64;
      }
    }

    v12 = v47;
    v13 = a5;
    v19 = v87;
    v15 = a2;
    v20 = v73;
    LOBYTE(v17) = v79;
LABEL_64:
    if ((v17 & 1) == 0)
    {
      break;
    }

    v17 = 0;
    v18 = v19;
    LODWORD(v22) = a3;
  }

  while (a3 > v19);
  if (v15 > a3 && v19 > v71)
  {
    v64 = v19;
    cblas_dtrsm_NEWLAPACK();
    if (a3 > v64)
    {
      cblas_dgemm_NEWLAPACK();
    }

    return v64;
  }

  return v19;
}

uint64_t sub_2367050AC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a8;
  v21 = a5;
  v22 = a4;
  v24 = a1;
  v25 = a2;
  if (a3 >= 100)
  {
    v28 = 0;
    v29 = a5 + 1;
    do
    {
      if (a3 - v28 < 101)
      {
        break;
      }

      v30 = v24;
      v31 = sub_236704344(v24 - v28, v25 - v28, a3 - v28, 100, v28, v22 + 8 * v29 * v28, a5, a6 + 8 * v28 * a7, a7, a10 + 4 * v28, a11 + 4 * v28, a12, a13, a16, a17, a18);
      v24 = v30;
      a2 = v25;
      v22 = a4;
      v28 += v31;
    }

    while (v31);
    if (a2 > a3 && v28 >= 1)
    {
      LODWORD(v34) = a7;
      v35 = v24;
      cblas_dtrsm_NEWLAPACK();
      LODWORD(v24) = v35;
      a2 = v25;
      v22 = a4;
      if (a3 > v28)
      {
        v34 = a6 + 8 * v28 * a7;
        cblas_dgemm_NEWLAPACK();
        LODWORD(v24) = v35;
        a2 = v25;
        v22 = a4;
      }
    }

    v32 = v22 + 8 * v29 * v28;
    v26 = v24;
    v21 = a5;
    v27 = sub_236704934(v24 - v28, a2 - v28, a3 - v28, v28, v32, a5, a6 + 8 * v28 * a7, a7, a10 + 4 * v28, a11 + 4 * v28, v34, a13) + v28;
    v18 = a8;
  }

  else
  {
    v26 = a1;
    v27 = sub_236704934(a1, a2, a3, 0, a4, a5, a6, a7, a10, a11, v34, a13);
  }

  if (v26 - a3 >= 1 && v25 - a3 >= 1)
  {
    sub_2367047C0(0x70u, v26 - a3, v25 - a3, v27, a4 + 8 * a3, v21, a6, a7, v18, a9, a12, a16, a17, a18);
  }

  return v27;
}

uint64_t sub_23670535C(int a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = a2;
  v99 = a4;
  v10 = a4 + 1;
  v11 = *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4);
  v12 = *(a2 + 88);
  v112 = v10;
  v106 = *(v12 + 4 * v10);
  v105 = *(v12 + 4 * a4);
  v13 = (v106 - v105);
  v97 = *(a3[5] + 8 * a4);
  v14 = v97 + 1;
  v96 = *v97;
  v15 = 2 * v13;
  v116 = a1 - 3;
  if ((a1 - 3) >= 2)
  {
    v15 = 0;
  }

  v109 = v15;
  v16 = atomic_load((a3[6] + 4 * a4));
  *(a3[5] + 8 * a4) = (*(a2 + 24))(8 * (2 * (v16 + v13) + (v16 + v11) * (v16 + v13)) + 4 * (v16 + v13) + 8);
  v102 = a3;
  v17 = *(a3[5] + 8 * a4);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v98 = v16;
  *v17 = 8 * (2 * (v16 + v13) + (v16 + v11) * (v16 + v13)) + 4 * (v16 + v13) + 8;
  v101 = a1;
  if (a1 == 4)
  {
    v18 = a3[5];
    v19 = v99;
    v20 = atomic_load((a3[6] + 4 * v99));
    v17 = *(v18 + 8 * v19);
    v21 = v112;
  }

  else
  {
    v20 = 0;
    v21 = v112;
    v19 = v99;
  }

  v23 = *(v8 + 88);
  v24 = *(v23 + 4 * v21);
  v25 = *(v23 + 4 * v19);
  v26 = v24 - v25 + v20;
  v27 = v17 + 1;
  v95 = v20 + *(*(v8 + 120) + 8 * v21) - *(*(v8 + 120) + 8 * v19);
  if (v116 >= 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = 2 * v26;
  }

  v29 = 8 * v95;
  v100 = v8;
  v113 = v17;
  v115 = v17 + 1;
  v93 = v28;
  v94 = v24 - v25 + v20;
  if (v13 >= 1)
  {
    v30 = &v14[v11 * v13 + v109];
    v31 = v24 - v25 + v20;
    v32 = &v17[v26 * v95 + 1 + v28];
    v33 = (v106 - v105);
    do
    {
      v34 = *v30++;
      *v32++ = v34;
      --v33;
    }

    while (v33);
    v35 = 0;
    v36 = 8 * v13 + 8;
    v107 = 8 * (v20 + v24 + v105 + ~v25 - v106);
    v108 = v36;
    v37 = 8 * v11;
    v38 = v37 + 8;
    v39 = v29 + 8;
    v40 = &v17[v98 + 1 + v13];
    v41 = (v97 + v36);
    v42 = v17 + 1;
    v110 = v24 - v25 + v20;
    v104 = v37 + 8;
    v103 = v29 + 8;
    do
    {
      v43 = 0;
      do
      {
        v42[v43] = v14[v43];
        ++v43;
      }

      while (v35 + v43 < v13);
      if (v13 < v31)
      {
        bzero(v113 + v36 + v29 * v35, v107 + 8);
        v39 = v103;
        v38 = v104;
        v37 = 8 * v11;
        v36 = v108;
        v31 = v110;
        v29 = 8 * v95;
        v27 = v115;
      }

      v44 = v13;
      v45 = v41;
      for (i = v40; v44 < v11; ++v44)
      {
        v47 = *v45++;
        *i++ = v47;
      }

      ++v35;
      v14 = (v14 + v38);
      v42 = (v42 + v39);
      v40 += v29;
      v41 = (v41 + v37);
    }

    while (v35 != v13);
    v19 = v99;
    v8 = v100;
    v21 = v112;
  }

  bzero(&v27[v95 * v13], 8 * v98 * v95);
  v48 = *(v8 + 120);
  v49 = *(v48 + 8 * v19);
  v50 = *(v48 + 8 * v21);
  v51 = v50 <= v49;
  v52 = v50 - v49;
  v53 = a3;
  v54 = v101;
  if (!v51)
  {
    v55 = 0;
    v56 = *(v8 + 128) + 4 * v49;
    do
    {
      *(a5 + 4 * *(v56 + 4 * v55)) = v55;
      ++v55;
    }

    while (v52 != v55);
  }

  v57 = *(v8 + 96);
  v58 = *(v57 + 4 * v19);
  if (v58 < *(v57 + 4 * v21))
  {
    v111 = v113 + 1;
    v59 = v13;
    do
    {
      v60 = *(*(v8 + 104) + 4 * v58);
      if (v54 == 4)
      {
        v61 = atomic_load((v53[6] + 4 * v60));
        v48 = *(v8 + 120);
      }

      else
      {
        v61 = 0;
      }

      v62 = *(v48 + 8 * (v60 + 1));
      v63 = *(v8 + 88);
      v64 = *(v63 + 4 * (v60 + 1));
      v65 = v64 - *(v63 + 4 * v60) + v61;
      v66 = v65;
      if (v54 == 4)
      {
        v66 = *(v53[7] + 4 * v60);
      }

      if (v116 >= 2)
      {
        v67 = 0;
      }

      else
      {
        v67 = 2 * v65;
      }

      if (v65 != v66)
      {
        if (v66 < v65)
        {
          v68 = *(v53[5] + 8 * v60);
          v69 = (v61 + v62 - *(v48 + 8 * v60));
          v114 = *(v63 + 4 * v60);
          v70 = v64 - v114;
          v71 = v59 - v66;
          v72 = v66;
          v73 = 8 * v65;
          v74 = (v68 + v73 * v69 + 8 * v67 + 4 * v66 + 8);
          v75 = v59;
          v76 = v66;
          do
          {
            v77 = *v74++;
            *(&v115[v94 * v95 + v93] + v75) = v77;
            ++v76;
            ++v75;
          }

          while (v76 < v65);
          v78 = 8 * v69 + 8;
          v79 = v68 + v78 * v66 + 8;
          v80 = &v111[v59];
          v81 = v59;
          v82 = v66;
          do
          {
            v83 = 0;
            do
            {
              *(&v80[v83] + 8 * v95 * v81) = *(v79 + 8 * v83);
              ++v83;
            }

            while (v82 + v83 < v65);
            ++v82;
            v79 += v78;
            ++v80;
            ++v81;
          }

          while (v82 < v65);
          v84 = *(v48 + 8 * v60) + v70;
          v85 = v68 + 8 * v66 * v69 + 8 * v64 + v73 - 8 * v114 - 8 * v70 + 8;
          v8 = v100;
          v53 = v102;
          v54 = v101;
          do
          {
            if (v84 < v62)
            {
              v86 = *(v100 + 128);
              v87 = v85;
              v88 = v84;
              do
              {
                v89 = *(a5 + 4 * *(v86 + 4 * v88));
                v90 = *v87++;
                v91 = v90;
                if (v89 >= v13)
                {
                  v92 = &v115[v98 + v95 * (v71 + v72) + v89];
                }

                else
                {
                  v92 = &v115[v71 + v72 + v89 * v95];
                }

                *v92 = v91;
                ++v88;
              }

              while (v88 < v62);
            }

            ++v72;
            v85 += 8 * v69;
          }

          while (v72 < v65);
        }

        v59 = v65 + v59 - v66;
        v21 = v112;
      }

      ++v58;
    }

    while (v58 < *(*(v8 + 96) + 4 * v21));
  }

  if (v96)
  {
    (*(v8 + 32))(v97);
  }

  return 0;
}

BOOL sub_23670590C(_BOOL8 result, int a2, int a3, uint64_t a4, double *a5, int a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a2;
  v13 = a9;
  v14 = 8 * a2;
  if (a9)
  {
    v14 = 0;
  }

  else
  {
    v13 = a11;
  }

  v58 = v13;
  v64 = a6;
  if ((a2 | result) & 0x80000000 || a6 < 1 || ((v15 = (a12 - v14) >> 3, v15 >= a2) ? (v16 = a6 < a2) : (v16 = 1), !v16 ? (v17 = v15 <= 0) : (v17 = 1), v17))
  {
    __break(1u);
  }

  else
  {
    v19 = a5;
    v20 = result;
    if (a2 >= result)
    {
      v21 = result;
    }

    else
    {
      v21 = a2;
    }

    if (v21)
    {
      v60 = (a11 + v14);
      v56 = a3;
      v55 = a6;
      v54 = result;
      if (v21 < 33)
      {
        v22 = 0;
        v23 = 32;
      }

      else if (v21 < 0x41 || v15 >= 32 * a2)
      {
        v23 = 32;
        v22 = 64;
      }

      else
      {
        v22 = 64;
        v23 = v15 / a2;
      }

      v24 = 0;
      v63 = v21 - v22;
      if (v21 > v22 && v23 >= 2 && v23 < v21)
      {
        if (v63 < 1)
        {
          v24 = 0;
        }

        else
        {
          v25 = 0;
          v24 = 0;
          v26 = a4;
          v59 = a4 - 4;
          v27 = v21;
          v28 = v58;
          v57 = v21;
          do
          {
            if (v23 >= v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = v23;
            }

            v30 = v21 + v25;
            if (v21 + v25 >= v23)
            {
              v31 = v23;
            }

            else
            {
              v31 = v21 + v25;
            }

            v32 = *(v59 + 4 * (v29 + v24));
            v33 = (v25 + v32);
            v34 = v33 & ~(v33 >> 31);
            if (v34 < v31)
            {
              if (v23 < v30)
              {
                v30 = v23;
              }

              bzero((v58 + 8 * (((v32 + v25) & ~((v32 + v25) >> 31)) + v24)), 8 * (v30 + ~v34) + 8);
            }

            if (v33 >= 1)
            {
              sub_236705EA4(v33, v31, v26, v24, &a5[v24 + v24 * v64], v64, v28, v60);
              if (v24 + v31 < a2)
              {
                dlarft_NEWLAPACK();
                v21 = v57;
                dlarfb_NEWLAPACK();
              }
            }

            v24 += v23;
            v28 += 8 * v23;
            v26 += 4 * v23;
            v25 -= v23;
            v27 -= v23;
          }

          while (v63 > v24);
        }
      }

      v19 = a5;
      v12 = a2;
      v20 = v54;
      if (v24 < v21)
      {
        sub_236705EA4((v54 - v24), a2 - v24, a4 + 4 * v24, v24, &a5[v24 + v24 * v64], v64, v58 + 8 * v24, v60);
      }

      a3 = v56;
      a6 = v55;
    }

    LODWORD(v35) = v20 - a3;
    if (v20 >= a3)
    {
      v36 = a3;
    }

    else
    {
      v36 = v20;
    }

    if (v36 >= 1)
    {
      if (*v19 == 0.0)
      {
        return 1;
      }

      v37 = 0;
      v38 = a6 + 1;
      while (v36 - 1 != v37)
      {
        v39 = v19[v38];
        v38 += a6 + 1;
        ++v37;
        if (v39 == 0.0)
        {
          return v37 < v36;
        }
      }
    }

    if (a7 && a3 >= 1)
    {
      v40 = 0;
      v41 = v19;
      v42 = v12;
      do
      {
        v43 = v42;
        v44 = a7;
        v45 = v41;
        if (v40 < v12)
        {
          do
          {
            v46 = *v45++;
            *v44++ = v46;
            --v43;
          }

          while (v43);
        }

        ++v40;
        v41 += a6 + 1;
        a7 += a8 + 1;
        --v42;
      }

      while (v40 != a3);
    }

    v47 = v12 - a3;
    if (v20 >= v12)
    {
      v35 = v47;
    }

    else
    {
      v35 = v35;
    }

    if (v35 >= 1)
    {
      v48 = 0;
      v50 = &v19[a3 + a3 * a6];
      do
      {
        if (v48 < v47)
        {
          v51 = 0;
          do
          {
            *(a10 + 8 * v51) = v50[v51];
            ++v51;
          }

          while (v48 + v51 < v47);
        }

        ++v48;
        v50 += a6 + 1;
        a10 += 8 * v12 - 8 * a3 + 8;
      }

      while (v48 != v35);
    }

    return 0;
  }

  return result;
}

uint64_t sub_236705DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = *(v2 + 4);
  v4 = *v2 - 1;
  if (*v2 < 1)
  {
    v4 = *v2 + 254;
  }

  v5 = (v4 >> 8) + 1;
  v6 = (a2 % v5) << 8;
  v7 = *(v2 + 24);
  if (*(v2 + 12) != 111)
  {
    v8 = *(v2 + 48) * v6;
  }

  v9 = v3 - 1;
  if (v3 < 1)
  {
    v9 = v3 + 254;
  }

  v10 = ((a2 % (v5 + v5 * (v9 >> 8))) / v5) << 8;
  v11 = *(v2 + 48);
  v12 = *(v2 + 52);
  if (*(v2 + 16) == 111)
  {
    v13 = *(v2 + 52);
  }

  else
  {
    v13 = 1;
  }

  v14 = *(v2 + 8);
  v15 = *(v2 + 64);
  v16 = *(v2 + 72);
  v19 = *(v2 + 52);
  v18 = *(v2 + 32) + 8 * v10 * v13;
  v20 = *(v2 + 40) + 8 * (v6 + *(v2 + 56) * v10);
  return cblas_dgemm_NEWLAPACK();
}

uint64_t sub_236705EA4(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, float64x2_t *a8)
{
  if (a2 >= result)
  {
    v8 = result;
  }

  else
  {
    v8 = a2;
  }

  if (v8 >= 1)
  {
    v13 = 0;
    do
    {
      v27 = *(a3 + 4 * v13) - (v13 + a4);
      if (v27 <= 0)
      {
        *(a7 + 8 * v13) = 0;
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13 + 1;
        result = dlarfg_NEWLAPACK();
        if (v13 + 1 < a2)
        {
          v23 = (a5 + 8 * (v13 + a6 * v13));
          v24 = *v23;
          *v23 = 1.0;
          result = sub_2367E3678((~v13 + a2), v27, v23, a6, (a7 + 8 * v13), a5 + 8 * (a6 * v13 + v14), a6, a8, v15, v16, v17, v18, v19, v20, v21, v22);
          *(a5 + 8 * (v13 + v13 * a6)) = v24;
        }
      }

      v13 = v14;
    }

    while (v14 != v8);
  }

  return result;
}

void _SparseSpMV_Float(float alpha, SparseMatrix_Float *A, DenseMatrix_Float *x, BOOL accumulate, DenseMatrix_Float *y)
{
  v5 = 4;
  if (*&y->attributes)
  {
    v5 = 0;
  }

  v315 = *(&y->rowCount + v5);
  v6 = *(&A->structure.blockSize + 2);
  rowIndices = A->structure.rowIndices;
  data = A->data;
  v298 = data;
  columnStarts = A->structure.columnStarts;
  if (!accumulate && v315 >= 1)
  {
    v8 = 0;
    v9 = 4;
    if ((*&A->structure.attributes & 1) == 0)
    {
      v9 = 0;
    }

    v10 = *(&A->structure.rowCount + v9) * v6;
    do
    {
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = y->data;
        columnStride = y->columnStride;
        do
        {
          if (*&y->attributes)
          {
            v14 = v11;
          }

          else
          {
            v14 = v8;
          }

          if (*&y->attributes)
          {
            v15 = v8;
          }

          else
          {
            v15 = v11;
          }

          v12[v15 + columnStride * v14] = 0.0;
          ++v11;
        }

        while (v10 != v11);
      }

      ++v8;
    }

    while (v8 != v315);
  }

  v296 = (v6 * v6);
  v16 = (*&A->structure.attributes >> 2) & 3;
  if ((v16 - 1) >= 2)
  {
    if (v16)
    {
      columnCount = A->structure.columnCount;
      if (columnCount >= 1)
      {
        v160 = 0;
        v161 = 0;
        v317 = v6 + 1;
        v162 = *columnStarts;
        v303 = 4 * v296;
        v163 = 4 * v6;
        v301 = 1;
        do
        {
          v305 = v161;
          v297 = v161 + 1;
          v304 = columnStarts[v161 + 1];
          if (v162 < v304)
          {
            v164 = v161 * v6;
            v308 = (v298 + v303 * v162);
            v307 = v298 + v303 * v162 + 4;
            do
            {
              v306 = v162;
              v165 = rowIndices[v162];
              v166 = *&A->structure.attributes;
              if ((v166 & 2) == 0 || v305 <= v165)
              {
                v167 = v305 < v165 && (*&A->structure.attributes & 2) == 0;
                if (!v167 && (v165 & 0x80000000) == 0 && v165 < A->structure.rowCount)
                {
                  if (v305 == v165)
                  {
                    v168 = &v298[v162 * v296];
                    if ((v166 & 2) != 0)
                    {
                      if (v315 >= 1)
                      {
                        v169 = 0;
                        v170 = v165 * v6;
                        v300 = v165 * v6 + 1;
                        v302 = v160;
                        do
                        {
                          if (v6)
                          {
                            v171 = 0;
                            v172 = x->data;
                            v314 = y->columnStride;
                            v173 = y->data;
                            v174 = v6 - 1;
                            v176 = v300;
                            v175 = v301;
                            v177 = v307;
                            do
                            {
                              v178 = v168;
                              v179 = v171 + 1;
                              if (v171 + 1 < v6)
                              {
                                v180 = x->columnStride;
                                v181 = y->columnStride;
                                v182 = v176 + v169 * v181;
                                v183 = v169 + v181 * v176;
                                v184 = v175 + v169 * v180;
                                v185 = v169 + v180 * v175;
                                v186 = v174;
                                v187 = v177;
                                do
                                {
                                  if (*&x->attributes)
                                  {
                                    v188 = v171 + v164;
                                  }

                                  else
                                  {
                                    v188 = v169;
                                  }

                                  if (*&x->attributes)
                                  {
                                    v189 = v169;
                                  }

                                  else
                                  {
                                    v189 = v171 + v164;
                                  }

                                  v190 = v172[v189 + v180 * v188];
                                  if (*&y->attributes)
                                  {
                                    v191 = v183;
                                  }

                                  else
                                  {
                                    v191 = v182;
                                  }

                                  v173[v191] = v173[v191] + ((*v187 * alpha) * v190);
                                  v192 = *v187++;
                                  v193 = v192 * alpha;
                                  if (*&x->attributes)
                                  {
                                    v194 = v185;
                                  }

                                  else
                                  {
                                    v194 = v184;
                                  }

                                  v195 = v172[v194];
                                  if (*&y->attributes)
                                  {
                                    v196 = v170 + v171;
                                  }

                                  else
                                  {
                                    v196 = v169;
                                  }

                                  if (*&y->attributes)
                                  {
                                    v197 = v169;
                                  }

                                  else
                                  {
                                    v197 = v170 + v171;
                                  }

                                  v173[v197 + v181 * v196] = v173[v197 + v181 * v196] + (v193 * v195);
                                  ++v182;
                                  v183 += v181;
                                  ++v184;
                                  v185 += v180;
                                  --v186;
                                }

                                while (v186);
                              }

                              v168 = v178;
                              if (*&x->attributes)
                              {
                                v198 = v169 + x->columnStride * (v171 + v164);
                              }

                              else
                              {
                                v198 = v171 + v164 + x->columnStride * v169;
                              }

                              v199 = v172[v198];
                              if (*&y->attributes)
                              {
                                v200 = v169 + v314 * (v170 + v171);
                              }

                              else
                              {
                                v200 = v170 + v171 + v314 * v169;
                              }

                              v173[v200] = v173[v200] + ((v178[v171 * v317] * alpha) * v199);
                              v177 += v6 + 1;
                              ++v176;
                              ++v175;
                              --v174;
                              ++v171;
                            }

                            while (v179 != v6);
                          }

                          ++v169;
                          v160 = v302;
                        }

                        while (v169 != v315);
                      }
                    }

                    else if (v315 >= 1)
                    {
                      v238 = 0;
                      v239 = v165 * v6;
                      v240 = v6 * v165;
                      do
                      {
                        if (v6)
                        {
                          v241 = 0;
                          v242 = x->data;
                          v243 = y->data;
                          v244 = y->columnStride;
                          v245 = v308;
                          do
                          {
                            if (v241)
                            {
                              v246 = x->columnStride;
                              v247 = y->columnStride;
                              v248 = v239 + v238 * v247;
                              v249 = v238 + v240 * v247;
                              v250 = v160 + v238 * v246;
                              v251 = v238 + v160 * v246;
                              v252 = v241;
                              v253 = v245;
                              do
                              {
                                if (*&x->attributes)
                                {
                                  v254 = v241 + v164;
                                }

                                else
                                {
                                  v254 = v238;
                                }

                                if (*&x->attributes)
                                {
                                  v255 = v238;
                                }

                                else
                                {
                                  v255 = v241 + v164;
                                }

                                v256 = v242[v255 + v246 * v254];
                                if (*&y->attributes)
                                {
                                  v257 = v249;
                                }

                                else
                                {
                                  v257 = v248;
                                }

                                v243[v257] = v243[v257] + ((*v253 * alpha) * v256);
                                v258 = *v253++;
                                v259 = v258 * alpha;
                                if (*&x->attributes)
                                {
                                  v260 = v251;
                                }

                                else
                                {
                                  v260 = v250;
                                }

                                v261 = v242[v260];
                                if (*&y->attributes)
                                {
                                  v262 = v239 + v241;
                                }

                                else
                                {
                                  v262 = v238;
                                }

                                if (*&y->attributes)
                                {
                                  v263 = v238;
                                }

                                else
                                {
                                  v263 = v239 + v241;
                                }

                                v243[v263 + v247 * v262] = v243[v263 + v247 * v262] + (v259 * v261);
                                ++v248;
                                v249 += v247;
                                ++v250;
                                v251 += v246;
                                --v252;
                              }

                              while (v252);
                            }

                            if (*&x->attributes)
                            {
                              v264 = v238 + x->columnStride * (v241 + v164);
                            }

                            else
                            {
                              v264 = v241 + v164 + x->columnStride * v238;
                            }

                            v265 = v242[v264];
                            if (*&y->attributes)
                            {
                              v266 = v238 + v244 * (v239 + v241);
                            }

                            else
                            {
                              v266 = v239 + v241 + v244 * v238;
                            }

                            v243[v266] = v243[v266] + ((v168[v241 * v317] * alpha) * v265);
                            ++v241;
                            v245 = (v245 + v163);
                          }

                          while (v241 != v6);
                        }

                        ++v238;
                      }

                      while (v238 != v315);
                    }
                  }

                  else if (v315 >= 1)
                  {
                    v201 = 0;
                    v202 = v165 * v6;
                    do
                    {
                      if (v6)
                      {
                        v203 = 0;
                        v204 = x->data;
                        v205 = y->data;
                        v206 = x->columnStride;
                        v207 = y->columnStride;
                        v208 = v308;
                        do
                        {
                          v209 = v6;
                          v210 = v201 + v202 * v207;
                          v211 = v202 + v207 * v201;
                          v212 = v208;
                          do
                          {
                            v213 = *v212++;
                            v214 = v213;
                            if (*&x->attributes)
                            {
                              v215 = v203 + v164;
                            }

                            else
                            {
                              v215 = v201;
                            }

                            if (*&x->attributes)
                            {
                              v216 = v201;
                            }

                            else
                            {
                              v216 = v203 + v164;
                            }

                            v217 = v204[v216 + v206 * v215];
                            v218 = v214 * alpha;
                            if (*&y->attributes)
                            {
                              v219 = v210;
                            }

                            else
                            {
                              v219 = v211;
                            }

                            v205[v219] = v205[v219] + (v218 * v217);
                            ++v211;
                            v210 += v207;
                            --v209;
                          }

                          while (v209);
                          ++v203;
                          v208 = (v208 + v163);
                        }

                        while (v203 != v6);
                      }

                      ++v201;
                    }

                    while (v201 != v315);
                    v220 = 0;
                    v221 = v6 * v165;
                    do
                    {
                      if (v6)
                      {
                        v222 = 0;
                        v223 = x->data;
                        v224 = y->data;
                        v225 = x->columnStride;
                        v226 = y->columnStride;
                        v227 = v308;
                        do
                        {
                          v228 = v6;
                          v229 = v220 + v221 * v225;
                          v230 = v202 + v225 * v220;
                          v231 = v227;
                          do
                          {
                            v232 = *v231++;
                            v233 = v232 * alpha;
                            if (*&x->attributes)
                            {
                              v234 = v229;
                            }

                            else
                            {
                              v234 = v230;
                            }

                            v235 = v223[v234];
                            if (*&y->attributes)
                            {
                              v236 = v222 + v164;
                            }

                            else
                            {
                              v236 = v220;
                            }

                            if (*&y->attributes)
                            {
                              v237 = v220;
                            }

                            else
                            {
                              v237 = v222 + v164;
                            }

                            v224[v237 + v226 * v236] = v224[v237 + v226 * v236] + (v233 * v235);
                            ++v230;
                            v229 += v225;
                            --v228;
                          }

                          while (v228);
                          ++v222;
                          v227 = (v227 + v163);
                        }

                        while (v222 != v6);
                      }

                      ++v220;
                    }

                    while (v220 != v315);
                  }
                }
              }

              v162 = v306 + 1;
              v308 = (v308 + v303);
              v307 += v303;
            }

            while (v306 + 1 != v304);
          }

          v160 += v6;
          v301 += v6;
          v162 = v304;
          v161 = v297;
        }

        while (v297 != columnCount);
      }
    }

    else
    {
      v74 = A->structure.columnCount;
      if (*&A->structure.attributes)
      {
        if (v74 >= 1)
        {
          v75 = 0;
          v76 = *columnStarts;
          v77 = 4 * v296;
          do
          {
            v78 = v75 + 1;
            v79 = columnStarts[v75 + 1];
            if (v76 < v79)
            {
              v80 = v75 * v6;
              v81 = (v298 + v77 * v76);
              do
              {
                v82 = rowIndices[v76];
                if ((v82 & 0x80000000) == 0 && v82 < A->structure.rowCount && v315 >= 1)
                {
                  v84 = 0;
                  v85 = v82 * v6;
                  do
                  {
                    if (v6)
                    {
                      v86 = 0;
                      v87 = x->data;
                      v88 = y->data;
                      v89 = x->columnStride;
                      v90 = y->columnStride;
                      v91 = v81;
                      do
                      {
                        v92 = v6;
                        v93 = v84 + v85 * v89;
                        v94 = v85 + v89 * v84;
                        v95 = v91;
                        do
                        {
                          v96 = *v95++;
                          v97 = v96 * alpha;
                          if (*&x->attributes)
                          {
                            v98 = v93;
                          }

                          else
                          {
                            v98 = v94;
                          }

                          v99 = v87[v98];
                          if (*&y->attributes)
                          {
                            v100 = v86 + v80;
                          }

                          else
                          {
                            v100 = v84;
                          }

                          if (*&y->attributes)
                          {
                            v101 = v84;
                          }

                          else
                          {
                            v101 = v86 + v80;
                          }

                          v88[v101 + v90 * v100] = v88[v101 + v90 * v100] + (v97 * v99);
                          ++v94;
                          v93 += v89;
                          --v92;
                        }

                        while (v92);
                        ++v86;
                        v91 += v6;
                      }

                      while (v86 != v6);
                    }

                    ++v84;
                  }

                  while (v84 != v315);
                }

                ++v76;
                v81 = (v81 + v77);
              }

              while (v76 != v79);
            }

            v76 = v79;
            v75 = v78;
          }

          while (v78 != v74);
        }
      }

      else if (v74 >= 1)
      {
        v267 = 0;
        v268 = *columnStarts;
        v269 = 4 * v296;
        do
        {
          v270 = v267 + 1;
          v271 = columnStarts[v267 + 1];
          if (v268 < v271)
          {
            v272 = v267 * v6;
            v273 = (v298 + v269 * v268);
            do
            {
              v274 = rowIndices[v268];
              if ((v274 & 0x80000000) == 0 && v274 < A->structure.rowCount && v315 >= 1)
              {
                v276 = 0;
                v277 = v274 * v6;
                do
                {
                  if (v6)
                  {
                    v278 = 0;
                    v279 = x->data;
                    v280 = y->data;
                    v281 = x->columnStride;
                    v282 = y->columnStride;
                    v283 = v273;
                    do
                    {
                      v284 = v6;
                      v285 = v276 + v277 * v282;
                      v286 = v277 + v282 * v276;
                      v287 = v283;
                      do
                      {
                        v288 = *v287++;
                        v289 = v288;
                        if (*&x->attributes)
                        {
                          v290 = v278 + v272;
                        }

                        else
                        {
                          v290 = v276;
                        }

                        if (*&x->attributes)
                        {
                          v291 = v276;
                        }

                        else
                        {
                          v291 = v278 + v272;
                        }

                        v292 = v279[v291 + v281 * v290];
                        v293 = v289 * alpha;
                        if (*&y->attributes)
                        {
                          v294 = v285;
                        }

                        else
                        {
                          v294 = v286;
                        }

                        v280[v294] = v280[v294] + (v293 * v292);
                        ++v286;
                        v285 += v282;
                        --v284;
                      }

                      while (v284);
                      ++v278;
                      v283 += v6;
                    }

                    while (v278 != v6);
                  }

                  ++v276;
                }

                while (v276 != v315);
              }

              ++v268;
              v273 = (v273 + v269);
            }

            while (v268 != v271);
          }

          v268 = v271;
          v267 = v270;
        }

        while (v270 != v74);
      }
    }

    return;
  }

  v316 = A->structure.columnCount;
  if ((*&A->structure.attributes & 1) == 0)
  {
    if (v316 < 1)
    {
      return;
    }

    v102 = 0;
    v103 = 0;
    v104 = *columnStarts;
    v105 = 4 * (v6 * v6);
    v106 = 4 * v6;
    while (1)
    {
      v313 = v102;
      v311 = v103 + 1;
      v107 = columnStarts[v103 + 1];
      if (v104 < v107)
      {
        break;
      }

LABEL_177:
      if ((*&A->structure.attributes & 0xC) == 8 && v315 >= 1)
      {
        v153 = 0;
        do
        {
          if (v6)
          {
            v154 = x->data;
            v155 = y->data;
            v156 = v6;
            v157 = v313;
            do
            {
              if (*&x->attributes)
              {
                v158 = v153 + x->columnStride * v157;
              }

              else
              {
                v158 = v157 + v153 * x->columnStride;
              }

              if (*&y->attributes)
              {
                v159 = v153 + y->columnStride * v157;
              }

              else
              {
                v159 = v157 + v153 * y->columnStride;
              }

              v155[v159] = v155[v159] + (alpha * v154[v158]);
              ++v157;
              --v156;
            }

            while (v156);
          }

          ++v153;
        }

        while (v153 != v315);
      }

      v102 = v313 + v6;
      v104 = v107;
      v103 = v311;
      if (v311 == v316)
      {
        return;
      }
    }

    v108 = v103 * v6;
    v109 = (v298 + v105 * v104);
    while (1)
    {
      v110 = rowIndices[v104];
      v111 = *&A->structure.attributes;
      if (((v111 & 2) == 0 || v103 <= v110) && v110 < A->structure.rowCount)
      {
        if ((v111 & 2) != 0)
        {
          if ((v110 & 0x80000000) == 0)
          {
LABEL_133:
            if (v110 == v103)
            {
              if (v315 >= 1)
              {
                v112 = 0;
                v113 = (v111 & 0xC) == 8;
                v114 = v110 * v6;
                do
                {
                  if (v6)
                  {
                    v115 = 0;
                    v116 = v109;
                    do
                    {
                      v117 = (v115 + v113) & (v111 << 30 >> 31);
                      v118 = v115 + 1;
                      v119 = v115 + 1 - v113;
                      if ((v111 & 2) != 0)
                      {
                        v120 = v6;
                      }

                      else
                      {
                        v120 = v115 + 1 - v113;
                      }

                      if (v117 < v120)
                      {
                        v121 = x->data;
                        v122 = v115 + v108;
                        v123 = y->data;
                        v124 = x->columnStride;
                        v125 = y->columnStride;
                        v126 = v112 + v125 * (v114 + v117);
                        do
                        {
                          if (*&x->attributes)
                          {
                            v127 = v122;
                          }

                          else
                          {
                            v127 = v112;
                          }

                          if (*&x->attributes)
                          {
                            v128 = v112;
                          }

                          else
                          {
                            v128 = v122;
                          }

                          v129 = v121[v128 + v124 * v127];
                          if (*&y->attributes)
                          {
                            v130 = v126;
                          }

                          else
                          {
                            v130 = v114 + v112 * v125 + v117;
                          }

                          v123[v130] = v123[v130] + ((v116[v117++] * alpha) * v129);
                          v111 = *&A->structure.attributes;
                          if ((v111 & 2) != 0)
                          {
                            v131 = v6;
                          }

                          else
                          {
                            v131 = v119;
                          }

                          v126 += v125;
                        }

                        while (v117 < v131);
                      }

                      v116 = (v116 + v106);
                      v115 = v118;
                    }

                    while (v118 != v6);
                  }

                  ++v112;
                }

                while (v112 != v315);
              }
            }

            else if (v315 >= 1)
            {
              v132 = 0;
              v133 = v110 * v6;
              v134 = v6 * v110;
              do
              {
                if (v6)
                {
                  v135 = 0;
                  v136 = x->data;
                  v137 = y->data;
                  v138 = x->columnStride;
                  v139 = y->columnStride;
                  v140 = v109;
                  do
                  {
                    v141 = v6;
                    v142 = v132 + v134 * v139;
                    v143 = v133 + v139 * v132;
                    v144 = v140;
                    do
                    {
                      v145 = *v144++;
                      v146 = v145;
                      if (*&x->attributes)
                      {
                        v147 = v135 + v108;
                      }

                      else
                      {
                        v147 = v132;
                      }

                      if (*&x->attributes)
                      {
                        v148 = v132;
                      }

                      else
                      {
                        v148 = v135 + v108;
                      }

                      v149 = v136[v148 + v138 * v147];
                      v150 = v146 * alpha;
                      if (*&y->attributes)
                      {
                        v151 = v142;
                      }

                      else
                      {
                        v151 = v143;
                      }

                      v137[v151] = v137[v151] + (v150 * v149);
                      ++v143;
                      v142 += v139;
                      --v141;
                    }

                    while (v141);
                    ++v135;
                    v140 = (v140 + v106);
                  }

                  while (v135 != v6);
                }

                ++v132;
              }

              while (v132 != v315);
            }
          }
        }

        else if (v103 >= v110)
        {
          goto LABEL_133;
        }
      }

      ++v104;
      v109 = (v109 + v105);
      if (v104 == v107)
      {
        goto LABEL_177;
      }
    }
  }

  if (v316 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = *columnStarts;
    v20 = 4 * (v6 * v6);
    v21 = 4 * v6;
    while (1)
    {
      v312 = v17;
      v310 = v18 + 1;
      v22 = columnStarts[v18 + 1];
      if (v19 < v22)
      {
        break;
      }

LABEL_75:
      if ((*&A->structure.attributes & 0xC) == 8 && v315 >= 1)
      {
        v67 = 0;
        do
        {
          if (v6)
          {
            v68 = x->data;
            v69 = y->data;
            v70 = v6;
            v71 = v312;
            do
            {
              if (*&x->attributes)
              {
                v72 = v67 + x->columnStride * v71;
              }

              else
              {
                v72 = v71 + v67 * x->columnStride;
              }

              if (*&y->attributes)
              {
                v73 = v67 + y->columnStride * v71;
              }

              else
              {
                v73 = v71 + v67 * y->columnStride;
              }

              v69[v73] = v69[v73] + (alpha * v68[v72]);
              ++v71;
              --v70;
            }

            while (v70);
          }

          ++v67;
        }

        while (v67 != v315);
      }

      v17 = v312 + v6;
      v19 = v22;
      v18 = v310;
      if (v310 == v316)
      {
        return;
      }
    }

    v23 = v18 * v6;
    v24 = (v298 + v20 * v19);
    while (1)
    {
      v25 = rowIndices[v19];
      v26 = *&A->structure.attributes;
      if (((v26 & 2) == 0 || v18 <= v25) && v25 < A->structure.rowCount)
      {
        if ((v26 & 2) != 0)
        {
          if ((v25 & 0x80000000) == 0)
          {
LABEL_31:
            if (v25 == v18)
            {
              if (v315 >= 1)
              {
                v27 = 0;
                v28 = (v26 & 0xC) == 8;
                v29 = v25 * v6;
                do
                {
                  if (v6)
                  {
                    v30 = 0;
                    v31 = v24;
                    do
                    {
                      v32 = (v30 + v28) & (v26 << 30 >> 31);
                      v33 = v30 + 1;
                      v34 = v30 + 1 - v28;
                      if ((v26 & 2) != 0)
                      {
                        v35 = v6;
                      }

                      else
                      {
                        v35 = v30 + 1 - v28;
                      }

                      if (v32 < v35)
                      {
                        v36 = x->data;
                        v37 = y->data;
                        v38 = v30 + v23;
                        v39 = x->columnStride;
                        v40 = y->columnStride;
                        v41 = v27 + v39 * (v29 + v32);
                        do
                        {
                          if (*&x->attributes)
                          {
                            v42 = v41;
                          }

                          else
                          {
                            v42 = v29 + v27 * v39 + v32;
                          }

                          v43 = v36[v42];
                          if (*&y->attributes)
                          {
                            v44 = v38;
                          }

                          else
                          {
                            v44 = v27;
                          }

                          if (*&y->attributes)
                          {
                            v45 = v27;
                          }

                          else
                          {
                            v45 = v38;
                          }

                          v37[v45 + v40 * v44] = v37[v45 + v40 * v44] + ((v31[v32++] * alpha) * v43);
                          v26 = *&A->structure.attributes;
                          if ((v26 & 2) != 0)
                          {
                            v46 = v6;
                          }

                          else
                          {
                            v46 = v34;
                          }

                          v41 += v39;
                        }

                        while (v32 < v46);
                      }

                      v31 = (v31 + v21);
                      v30 = v33;
                    }

                    while (v33 != v6);
                  }

                  ++v27;
                }

                while (v27 != v315);
              }
            }

            else if (v315 >= 1)
            {
              v47 = 0;
              v48 = v25 * v6;
              v49 = v6 * v25;
              do
              {
                if (v6)
                {
                  v50 = 0;
                  v51 = x->data;
                  v52 = y->data;
                  v53 = x->columnStride;
                  v54 = y->columnStride;
                  v55 = v24;
                  do
                  {
                    v56 = v6;
                    v57 = v47 + v49 * v53;
                    v58 = v48 + v53 * v47;
                    v59 = v55;
                    do
                    {
                      v60 = *v59++;
                      v61 = v60 * alpha;
                      if (*&x->attributes)
                      {
                        v62 = v57;
                      }

                      else
                      {
                        v62 = v58;
                      }

                      v63 = v51[v62];
                      if (*&y->attributes)
                      {
                        v64 = v50 + v23;
                      }

                      else
                      {
                        v64 = v47;
                      }

                      if (*&y->attributes)
                      {
                        v65 = v47;
                      }

                      else
                      {
                        v65 = v50 + v23;
                      }

                      v52[v65 + v54 * v64] = v52[v65 + v54 * v64] + (v61 * v63);
                      ++v58;
                      v57 += v53;
                      --v56;
                    }

                    while (v56);
                    ++v50;
                    v55 = (v55 + v21);
                  }

                  while (v50 != v6);
                }

                ++v47;
              }

              while (v47 != v315);
            }
          }
        }

        else if (v18 >= v25)
        {
          goto LABEL_31;
        }
      }

      ++v19;
      v24 = (v24 + v20);
      if (v19 == v22)
      {
        goto LABEL_75;
      }
    }
  }
}

SparseOpaquePreconditioner_Float *__cdecl _SparseCreatePreconditioner_Float(SparseOpaquePreconditioner_Float *__return_ptr retstr, SparsePreconditioner_t type, SparseMatrix_Float *A)
{
  if (type <= SparsePreconditionerUser)
  {
    if (type)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23670BA40();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BA84();
    }

    _SparseTrap();
  }

  if (type == SparsePreconditionerDiagonal)
  {
    v5 = *(&A->structure.blockSize + 2);
    v6 = A->structure.rowCount * v5;
    v7 = A->structure.columnCount * v5;
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    *&retstr->type = 2;
    result = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
    v10 = result;
    retstr->mem = result;
    retstr->apply = sub_23670B980;
    if (v8 >= 1)
    {
      memset_pattern16(result, &unk_23681FB80, 4 * v8);
    }

    if ((*&A->structure.attributes & 0xC) != 8)
    {
      columnCount = A->structure.columnCount;
      if (columnCount >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = *(&A->structure.blockSize + 2);
        columnStarts = A->structure.columnStarts;
        v16 = *columnStarts;
        v17 = 4 * (v14 * v14);
        do
        {
          v18 = v12 + 1;
          v19 = columnStarts[v12 + 1];
          if (v16 < v19)
          {
            result = (v10 + 4 * v13);
            rowIndices = A->structure.rowIndices;
            v21 = v17 * v16;
            do
            {
              if (v12 == rowIndices[v16] && v14 != 0)
              {
                v23 = (A->data + v21);
                v24 = (&v10->type + v13);
                v25 = v14;
                do
                {
                  if (*v23 != 0.0)
                  {
                    *v24 = 1.0 / *v23;
                  }

                  v23 += v14 + 1;
                  ++v24;
                  --v25;
                }

                while (v25);
              }

              ++v16;
              v21 += v17;
            }

            while (v16 != v19);
          }

          v13 += v14;
          v16 = v19;
          ++v12;
        }

        while (v18 != columnCount);
      }
    }
  }

  else
  {

    sub_2367070F4(A, retstr);
  }

  return result;
}

void sub_2367070F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v182[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 28);
  v5 = (*(a1 + 4) * v4);
  *a2 = 0;
  *a2 = 3;
  v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  v7 = v6;
  a2[1] = v6;
  a2[2] = sub_23670B980;
  v8 = (v4 * v4);
  v9 = (*(a1 + 24) >> 2) & 3;
  if ((v9 - 1) >= 2)
  {
    if (v9 != 3)
    {
      if (*(a1 + 24))
      {
        bzero(v6, 4 * v5);
        v141 = *(a1 + 4);
        if (v141 >= 1)
        {
          v142 = 0;
          v143 = *(a1 + 8);
          v144 = *v143;
          v145 = 4 * (v4 * v4);
          do
          {
            v146 = v143[++v142];
            if (v144 < v146)
            {
              v147 = *(a1 + 16);
              v148 = v145 * v144;
              do
              {
                v149 = *(v147 + 4 * v144);
                if ((v149 & 0x80000000) == 0 && v149 < *a1 && v4)
                {
                  v150 = 0;
                  v151 = &v7[(v149 * v4)];
                  v152 = (*(a1 + 32) + v148);
                  do
                  {
                    v153 = v4;
                    v154 = v152;
                    v155 = v151;
                    do
                    {
                      v156 = *v154++;
                      *v155 = *v155 + (v156 * v156);
                      ++v155;
                      --v153;
                    }

                    while (v153);
                    ++v150;
                    v152 += v4;
                  }

                  while (v150 != v4);
                }

                ++v144;
                v148 += v145;
              }

              while (v144 != v146);
            }

            v144 = v146;
          }

          while (v142 != v141);
        }

        if (v5 >= 1)
        {
          do
          {
            v157 = fabsf(*v7);
            v158 = 1.0;
            if (v157 >= 0.00000011921)
            {
              v158 = 1.0 / sqrt(v157);
            }

            *v7++ = v158;
            --v5;
          }

          while (v5);
        }
      }

      else if (*(a1 + 4) >= 1)
      {
        v161 = 0;
        v162 = 4 * v4;
        v163 = 4 * (v4 * v4);
        v164 = (4 * v4 + 15) & 0x7F0;
        do
        {
          v6 = MEMORY[0x28223BE20](v6);
          v165 = (v182 - v164);
          if (v4)
          {
            bzero(v182 - v164, 4 * v4);
          }

          v166 = *(a1 + 8);
          v167 = *(v166 + 8 * v161++);
          v168 = *(v166 + 8 * v161);
          if (v167 < v168)
          {
            v169 = *(a1 + 16);
            v170 = v163 * v167;
            do
            {
              v171 = *(v169 + 4 * v167);
              if ((v171 & 0x80000000) == 0 && v171 < *a1 && v4)
              {
                v172 = 0;
                v173 = (*(a1 + 32) + v170);
                do
                {
                  v174 = v165[v172];
                  v175 = v4;
                  v176 = v173;
                  do
                  {
                    v177 = *v176++;
                    v174 = v174 + (v177 * v177);
                    --v175;
                  }

                  while (v175);
                  v165[v172++] = v174;
                  v173 = (v173 + v162);
                }

                while (v172 != v4);
              }

              ++v167;
              v170 += v163;
            }

            while (v167 != v168);
          }

          v178 = v4;
          v179 = v7;
          if (v4)
          {
            do
            {
              v180 = 1.0;
              if (*v165 >= 0.00000011921)
              {
                v180 = 1.0 / sqrt(*v165);
              }

              *v179++ = v180;
              ++v165;
              --v178;
            }

            while (v178);
          }

          v7 = (v7 + v162);
        }

        while (v161 < *(a1 + 4));
      }

      goto LABEL_187;
    }

    bzero(v6, 4 * v5);
    v48 = *(a1 + 4);
    if (v48 < 1)
    {
LABEL_82:
      if (v5 >= 1)
      {
        do
        {
          v87 = fabsf(*v7);
          v88 = 1.0;
          if (v87 >= 0.00000011921)
          {
            v88 = 1.0 / sqrt(v87);
          }

          *v7++ = v88;
          --v5;
        }

        while (v5);
      }

      goto LABEL_187;
    }

    v49 = 0;
    v50 = *(a1 + 8);
    v51 = *v50;
    v52 = 4 * (v4 * v4);
    v53 = 4 * v4;
    v182[0] = v7 + 1;
    while (1)
    {
      v54 = v49 + 1;
      v55 = v50[v49 + 1];
      if (v51 < v55)
      {
        break;
      }

LABEL_81:
      v51 = v55;
      ++v49;
      if (v54 == v48)
      {
        goto LABEL_82;
      }
    }

    v56 = &v7[v49 * v4];
    v57 = *(a1 + 16);
    v58 = v52 * v51;
    v59 = v52 * v51 + 4;
    while (1)
    {
      v60 = *(v57 + 4 * v51);
      v61 = v60;
      if ((*(a1 + 24) & 2) != 0)
      {
        if (v49 <= v60 && v60 < *a1)
        {
          v69 = v60 * v4;
          v70 = *(a1 + 32);
          v64 = (v70 + 4 * v51 * v8);
          if (v49 == v61)
          {
            if (v4)
            {
              v71 = 0;
              v72 = (v70 + v59);
              v73 = v4 - 1;
              v74 = v182[0] + 4 * v69;
              do
              {
                v75 = v64[v71 + (v71 * v4)];
                v56[v71] = v56[v71] + (v75 * v75);
                v76 = v71 + 1;
                if (v71 + 1 < v4)
                {
                  v77 = v73;
                  v78 = v74;
                  v79 = v72;
                  do
                  {
                    v56[v71] = v56[v71] + (*v79 * *v79);
                    v80 = *v79++;
                    *v78 = *v78 + (v80 * v80);
                    ++v78;
                    --v77;
                  }

                  while (v77);
                }

                v72 += v4 + 1;
                v74 += 4;
                --v73;
                ++v71;
              }

              while (v76 != v4);
            }

            goto LABEL_80;
          }

          goto LABEL_75;
        }
      }

      else if (v49 >= v60)
      {
        v62 = v60 * v4;
        v63 = *(a1 + 32);
        v64 = (v63 + 4 * v51 * v8);
        if (v49 != v61)
        {
          v69 = v62;
LABEL_75:
          if (v4)
          {
            v81 = 0;
            v82 = &v7[v69];
            do
            {
              v83 = v4;
              v84 = v82;
              v85 = v64;
              do
              {
                v56[v81] = v56[v81] + (*v85 * *v85);
                v86 = *v85++;
                *v84 = *v84 + (v86 * v86);
                ++v84;
                --v83;
              }

              while (v83);
              ++v81;
              v64 = (v64 + v53);
            }

            while (v81 != v4);
          }

          goto LABEL_80;
        }

        if (v4)
        {
          v65 = 0;
          v66 = &v7[v62];
          v67 = v63 + v58;
          do
          {
            if (v65)
            {
              for (i = 0; i != v65; ++i)
              {
                v56[v65] = v56[v65] + (*(v67 + 4 * i) * *(v67 + 4 * i));
                v66[i] = v66[i] + (*(v67 + 4 * i) * *(v67 + 4 * i));
              }
            }

            v56[v65] = v56[v65] + (v64[v65 * (v4 + 1)] * v64[v65 * (v4 + 1)]);
            ++v65;
            v67 += v53;
          }

          while (v65 != v4);
        }
      }

LABEL_80:
      ++v51;
      v59 += v52;
      v58 += v52;
      if (v51 == v55)
      {
        goto LABEL_81;
      }
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 4) < 1)
    {
      goto LABEL_187;
    }

    while (1)
    {
      MEMORY[0x28223BE20](v182);
      v102 = (v182 - v101);
      if (v4)
      {
        if ((*(a1 + 24) & 0xC) == 8)
        {
          v103 = v100;
        }

        else
        {
          v103 = v99;
        }

        v104 = v102 + 2;
        v105 = v90;
        v106 = v95;
        v107 = v94;
        do
        {
          v108 = vmovn_s64(vcgeq_u64(v93, v106));
          if (vuzp1_s16(v108, *v93.i8).u8[0])
          {
            *(v104 - 2) = v103;
          }

          if (vuzp1_s16(v108, *&v93).i8[2])
          {
            *(v104 - 1) = v103;
          }

          if (vuzp1_s16(*&v93, vmovn_s64(vcgeq_u64(v93, *&v107))).i32[1])
          {
            *v104 = v103;
            v104[1] = v103;
          }

          v107 = vaddq_s64(v107, v96);
          v106 = vaddq_s64(v106, v96);
          v104 += 4;
          v105 -= 4;
        }

        while (v105);
      }

      v109 = *(a1 + 8);
      v110 = *(v109 + 8 * v92);
      v111 = v92 + 1;
      v112 = *(v109 + 8 * (v92 + 1));
      if (v110 < v112)
      {
        break;
      }

LABEL_138:
      v138 = v4;
      v139 = v7;
      if (v4)
      {
        do
        {
          v140 = 1.0;
          if (*v102 >= v97)
          {
            v140 = v98 / sqrt(*v102);
          }

          *v139++ = v140;
          ++v102;
          --v138;
        }

        while (v138);
      }

      v7 = (v7 + v89);
      if (v111 >= *(a1 + 4))
      {
        goto LABEL_187;
      }
    }

    v113 = *(a1 + 16);
    v114 = *(a1 + 24);
    v115 = v114 & 0xC;
    v116 = v91 * v110;
    while (1)
    {
      v117 = *(v113 + 4 * v110);
      v118 = v117;
      if ((v114 & 2) != 0)
      {
        if (v92 <= v117 && v117 < *a1)
        {
          v124 = *(a1 + 32);
          if (v92 == v117)
          {
            if (v4)
            {
              v125 = 0;
              v126 = v124 + v116;
              do
              {
                if (v115 == 8)
                {
                  v127 = v125 + 1;
                }

                else
                {
                  v127 = v125;
                }

                if (v127 < v4)
                {
                  v128 = v102[v125];
                  v129 = (v126 + 4 * v127);
                  v130 = v4 - v127;
                  do
                  {
                    v131 = *v129++;
                    v128 = v128 + (v131 * v131);
                    --v130;
                  }

                  while (v130);
                  v102[v125] = v128;
                }

                ++v125;
                v126 += v89;
              }

              while (v125 != v4);
            }

            goto LABEL_137;
          }

          v132 = (v124 + 4 * v110 * v8);
          if (v4)
          {
            goto LABEL_133;
          }
        }
      }

      else if (v92 >= v117)
      {
        v119 = *(a1 + 32);
        if (v92 == v118)
        {
          if (v4)
          {
            for (j = 0; j != v4; ++j)
            {
              if (v115 == 8)
              {
                LODWORD(v121) = j;
              }

              else
              {
                LODWORD(v121) = j + 1;
              }

              v121 = v121;
              if (v121)
              {
                v122 = v102[j];
                v123 = v119;
                do
                {
                  v122 = v122 + (*(v123 + v116) * *(v123 + v116));
                  v123 += 4;
                  --v121;
                }

                while (v121);
                v102[j] = v122;
              }

              v119 += v89;
            }
          }

          goto LABEL_137;
        }

        v132 = (v119 + 4 * v110 * v8);
        if (v4)
        {
LABEL_133:
          for (k = 0; k != v4; ++k)
          {
            v134 = v102[k];
            v135 = v4;
            v136 = v132;
            do
            {
              v137 = *v136++;
              v134 = v134 + (v137 * v137);
              --v135;
            }

            while (v135);
            v102[k] = v134;
            v132 = (v132 + v89);
          }
        }
      }

LABEL_137:
      ++v110;
      v116 += v91;
      if (v110 == v112)
      {
        goto LABEL_138;
      }
    }
  }

  bzero(v6, 4 * v5);
  v10 = *(a1 + 4);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 8);
    v13 = *v12;
    v14 = 4 * (v4 * v4);
    v15 = 4 * v4;
    while (1)
    {
      v16 = v11 + 1;
      v17 = v12[v11 + 1];
      if (v13 < v17)
      {
        break;
      }

LABEL_44:
      v13 = v17;
      ++v11;
      if (v16 == v10)
      {
        goto LABEL_45;
      }
    }

    v18 = *(a1 + 16);
    v19 = v14 * v13;
    while (1)
    {
      v20 = *(v18 + 4 * v13);
      v21 = *(v18 + 4 * v13);
      v22 = *(a1 + 24);
      if ((v22 & 2) != 0)
      {
        if (v11 <= v20 && v21 < *a1)
        {
          v31 = *(a1 + 32);
          if (v11 == v20)
          {
            if (v4)
            {
              v32 = 0;
              v33 = &v7[v21 * v4];
              v34 = v31 + v19;
              do
              {
                if ((*(a1 + 24) & 0xC) == 8)
                {
                  v35 = v32 + 1;
                }

                else
                {
                  v35 = v32;
                }

                if (v35 < v4)
                {
                  v36 = &v33[v35];
                  v37 = (v34 + 4 * v35);
                  v38 = v4 - v35;
                  do
                  {
                    v39 = *v37++;
                    *v36 = *v36 + (v39 * v39);
                    ++v36;
                    --v38;
                  }

                  while (v38);
                }

                ++v32;
                v34 += v15;
              }

              while (v32 != v4);
            }

            goto LABEL_43;
          }

          v40 = (v31 + 4 * v13 * v8);
          if (v4)
          {
            goto LABEL_39;
          }
        }
      }

      else if (v11 >= v20)
      {
        v23 = *(a1 + 32);
        if (v11 == v20)
        {
          if (v4)
          {
            v24 = 0;
            v25 = &v7[v20 * v4];
            v26 = v23 + v19;
            do
            {
              v27 = v24 + 1;
              if ((v22 & 0xC) != 8 || v24 != 0)
              {
                v29 = 0;
                do
                {
                  v25[v29] = v25[v29] + (*(v26 + 4 * v29) * *(v26 + 4 * v29));
                  ++v29;
                  v22 = *(a1 + 24);
                  if ((v22 & 0xC) == 8)
                  {
                    v30 = v24;
                  }

                  else
                  {
                    v30 = v24 + 1;
                  }
                }

                while (v29 < v30);
              }

              v26 += v15;
              ++v24;
            }

            while (v27 != v4);
          }

          goto LABEL_43;
        }

        v40 = (v23 + 4 * v13 * v8);
        if (v4)
        {
LABEL_39:
          v41 = 0;
          v42 = &v7[v21 * v4];
          do
          {
            v43 = v4;
            v44 = v40;
            v45 = v42;
            do
            {
              v46 = *v44++;
              *v45 = *v45 + (v46 * v46);
              ++v45;
              --v43;
            }

            while (v43);
            ++v41;
            v40 = (v40 + v15);
          }

          while (v41 != v4);
        }
      }

LABEL_43:
      ++v13;
      v19 += v14;
      if (v13 == v17)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if ((*(a1 + 24) & 0xC) == 8)
  {
    if (v5 >= 1)
    {
      do
      {
        v47 = 1.0 / sqrt(*v7 + 1.0);
        *v7++ = v47;
        --v5;
      }

      while (v5);
    }
  }

  else if (v5 >= 1)
  {
    do
    {
      v159 = fabsf(*v7);
      v160 = 1.0;
      if (v159 >= 0.00000011921)
      {
        v160 = 1.0 / sqrt(v159);
      }

      *v7++ = v160;
      --v5;
    }

    while (v5);
  }

LABEL_187:
  v181 = *MEMORY[0x277D85DE8];
}

uint64_t sub_236708260(int a1, int a2, int a3)
{
  v3 = a3 * a2;
  if (!a1)
  {
    v3 = 0;
  }

  return 4 * (v3 + ((2 * a2) | 1) * a3);
}

SparseIterativeStatus_t _SparseCGSolve_Float(const SparseCGOptions *options, DenseMatrix_Float *X, DenseMatrix_Float *B, void *ApplyOperator, const SparseOpaquePreconditioner_Float *Preconditioner)
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = 4;
  if (*&X->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&X->rowCount + v10);
  if (*&X->attributes)
  {
    v9 = 0;
  }

  v12 = *(&X->rowCount + v9);
  v13 = v12 * v11;
  if (Preconditioner)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = 4 * (((2 * v11) | 1) * v12 + (v12 + v13) + v14) + v12 + 24;
  v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
  if (v16)
  {
    data = v16;
    *&R.attributes = 0;
    R.rowCount = v11;
    R.columnCount = v12;
    R.columnStride = v11;
    v18 = (&v16[v12 * v11 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
    if (v16 + v15 < v18)
    {
      goto LABEL_59;
    }

    v19 = v16 + v15;
    v48 = Preconditioner;
    v49 = options;
    R.data = v16;
    v47 = ApplyOperator;
    sub_236708720(&X->rowCount, B, &R.rowCount, ApplyOperator);
    v20 = (v18 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v20)
    {
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      v21 = v12;
      v22 = data;
      v23 = v18;
      do
      {
        cblas_snrm2_NEWLAPACK();
        *v23++ = v24;
        v22 += v11;
        --v21;
      }

      while (v21);
    }

    if (v19 < ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_59:
      __break(1u);
    }

    bzero(((v18 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8), v12);
    if (v49->maxIterations)
    {
      maxIterations = v49->maxIterations;
    }

    else
    {
      maxIterations = 100;
    }

    atol = v49->atol;
    v27.n128_u64[0] = *&v49->rtol;
    v27.n128_f32[0] = v27.n128_f64[0];
    v30 = v27.n128_f32[0] == 0.0;
    if (v27.n128_f32[0] < 0.0)
    {
      v27.n128_f32[0] = 0.0;
    }

    if (v30)
    {
      v31 = 0.00034527;
    }

    else
    {
      v31 = v27.n128_f32[0];
    }

    reportStatus = v49->reportStatus;
    if (reportStatus)
    {
      v25 = (reportStatus)("   Itr   ||r[0]||_2\n", v27);
    }

    if (maxIterations < 1)
    {
LABEL_42:
      reportError = v49->reportError;
      if (!v49->reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23670BAC8();
        }

        _SparseTrap();
      }

      memset(&__str[35], 0, 221);
      strcpy(__str, "Exceeded maximum iteration limit.\n");
      (reportError)(__str);
      v44 = SparseIterativeMaxIterations;
    }

    else
    {
      v33 = 0;
      v34 = atol;
      while (1)
      {
        if (v49->reportStatus && (v33 < 0xA || !(v33 % 0xA)))
        {
          if (v33)
          {
            v35 = data;
          }

          else
          {
            v35 = v18;
          }

          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v33, *v35);
          v25 = (v49->reportStatus)(__str);
        }

        _SparseCGIterate_Float(v25, v33, ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8), ((v18 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8), X, v26, &R, v48, v47);
        data = R.data;
        if (v12 < 1)
        {
          break;
        }

        v36 = 4 * R.columnStride;
        v37 = 1;
        v38 = v12;
        v39 = ((v18 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v40 = v18;
        v41 = R.data;
        do
        {
          if ((*v39 & 1) == 0)
          {
            v42 = fabsf(*v41) < (v34 + (v31 * *v40));
            *v39 = v42;
            v37 &= v42;
          }

          v41 = (v41 + v36);
          ++v40;
          ++v39;
          --v38;
        }

        while (v38);
        if (v37)
        {
          goto LABEL_53;
        }

        if (++v33 == maxIterations)
        {
          goto LABEL_42;
        }
      }

      v33 = 0;
LABEL_53:
      if (!v49->reportStatus)
      {
        v44 = SparseIterativeConverged;
        goto LABEL_56;
      }

      snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v33 + 1, *data);
      (v49->reportStatus)(__str);
      v44 = SparseIterativeConverged;
    }

    data = R.data;
LABEL_56:
    free(data);
    goto LABEL_57;
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BB0C();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v15);
  (options->reportError)(__str);
  v44 = SparseIterativeInternalError;
LABEL_57:
  v45 = *MEMORY[0x277D85DE8];
  return v44;
}

uint64_t sub_236708720(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = 4;
  if (*(a1 + 3))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + v7);
  if (*(a1 + 3))
  {
    v6 = 0;
  }

  v9 = *(a1 + v6);
  v10 = *(a4 + 16);
  v25 = *a1;
  v26 = *(a1 + 2);
  v23 = *a3;
  v24 = *(a3 + 2);
  result = v10(a4, 0, 111, &v25, &v23);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (v8 >= 1)
      {
        v13 = 0;
        v14 = *(a2 + 16);
        v15 = *(a3 + 2);
        v16 = *(a2 + 8);
        v17 = *(a3 + 2);
        do
        {
          if (*(a2 + 12))
          {
            v18 = v13;
          }

          else
          {
            v18 = i;
          }

          if (*(a2 + 12))
          {
            v19 = i;
          }

          else
          {
            v19 = v13;
          }

          v20 = *(v14 + 4 * (v19 + v16 * v18));
          if (*(a3 + 3))
          {
            v21 = v13;
          }

          else
          {
            v21 = i;
          }

          if (*(a3 + 3))
          {
            v22 = i;
          }

          else
          {
            v22 = v13;
          }

          *(v15 + 4 * (v22 + v17 * v21)) = v20 - *(v15 + 4 * (v22 + v17 * v21));
          ++v13;
        }

        while (v8 != v13);
      }
    }
  }

  return result;
}

uint64_t sub_23670882C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 20);
  if (!v4)
  {
    v4 = 16;
  }

  v5 = *(a1 + 16);
  v6 = ((v4 + 3) * v4 + (2 * v4 + 2) * a3) * a4;
  v7 = a4 + a4 * (v4 + a3) * (v4 + 3);
  v8 = a4 * a3 * v4;
  if (v5 != 2)
  {
    v8 = 0;
  }

  v9 = v8 + a4 + v7;
  if ((v5 - 1) > 1)
  {
    v9 = v6;
  }

  return 4 * v9;
}

void _SparseGMRESIterate_Float(const SparseGMRESOptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Float *X, DenseMatrix_Float *B, DenseMatrix_Float *R, const SparseOpaquePreconditioner_Float *Preconditioner, void *ApplyOperator)
{
  v210 = R;
  v9 = state;
  v10 = ApplyOperator;
  variant = options->variant;
  if ((variant - 1) >= 2)
  {
    if (options->variant == SparseVariantDQGMRES)
    {
      v17 = *&X->attributes;
      v18 = 4;
      if (v17)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v18 = 0;
      }

      if (options->nvec)
      {
        nvec = options->nvec;
      }

      else
      {
        nvec = 16;
      }

      if (v17)
      {
        columnStride = X->columnStride;
      }

      if (*&R->attributes)
      {
        v46 = R->columnStride;
      }

      else
      {
        v46 = 1;
      }

      if (iteration < 0)
      {

        sub_236708720(&X->rowCount, B, &R->rowCount, ApplyOperator);
      }

      else
      {
        v47 = *(&X->rowCount + v19);
        v48 = *(&X->rowCount + v18);
        v209 = v48;
        v203 = nvec * v48 * nvec;
        v181 = &state[4 * nvec * v48 * v47 + 4 * v203];
        v183 = &state[4 * nvec * v48 * v47];
        v201 = 2 * nvec * v48;
        v213 = 4 * v48 * v47;
        v49 = &v181[4 * v201 + v213];
        v206 = nvec * v48 * v47;
        __dst = &v49[4 * v206];
        v192 = &__dst[v213];
        v199 = (iteration % nvec);
        v220 = v48 * v47;
        v50 = iteration % nvec * v48 * v47;
        __srca = &v49[4 * v50];
        if (!iteration && v48 >= 1)
        {
          v51 = 0;
          v52 = state;
          v53 = 4 * v46;
          do
          {
            if (!converged[v51])
            {
              v54 = (*&R->attributes & 1) != 0 ? v51 : R->columnStride * v51;
              v55 = &R->data[v54];
              cblas_snrm2_NEWLAPACK();
              R = v210;
              *&v192[4 * v51 * nvec] = v56;
              if (v47 >= 1)
              {
                v57 = v52;
                v58 = v47;
                do
                {
                  *v57++ = *v55 / *&v192[4 * v51 * nvec];
                  v55 = (v55 + v53);
                  --v58;
                }

                while (v58);
              }
            }

            ++v51;
            v52 += 4 * v47;
          }

          while (v51 != v209);
        }

        v59 = 4 * v206;
        v60 = 4 * v203;
        v207 = 4 * v201;
        memcpy(__dst, __srca, v213);
        if (Preconditioner)
        {
          mem = Preconditioner->mem;
          apply = Preconditioner->apply;
          v226 = *&v47;
          v227 = v209;
          v228 = v47;
          v229 = 0;
          v230 = &v9[4 * v50];
          v221 = v47;
          v222 = v209;
          v223 = v47;
          v224 = 0;
          v225 = __srca;
          (apply)(mem, 0, &v226, &v221);
        }

        else if (v209 >= 1)
        {
          v63 = 4 * v47;
          v64 = &v9[4 * v50 + v60 + v59 + v207 + v213];
          v65 = converged;
          v66 = v209;
          do
          {
            v67 = *v65++;
            if ((v67 & 1) == 0)
            {
              memcpy(v64, &v9[4 * v50], v63);
            }

            v50 += v47;
            v64 += v63;
            --v66;
          }

          while (v66);
        }

        v68 = *(ApplyOperator + 2);
        v226 = *&v47;
        v227 = v209;
        v228 = v47;
        v229 = 0;
        v230 = __srca;
        v221 = v47;
        v222 = v209;
        v223 = v47;
        v224 = 0;
        v225 = &v181[4 * v201];
        v68(ApplyOperator, 0, 111, &v226, &v221);
        if (v209 >= 1)
        {
          v69 = 0;
          v70 = nvec - iteration;
          if (nvec <= iteration)
          {
            v70 = 1;
          }

          v214 = nvec - v70;
          v71 = nvec < 1 || nvec - v70 < 0;
          v72 = v71;
          v176 = v72;
          v218 = v199 * nvec;
          v195 = ((iteration + 1) % nvec);
          v73 = &v9[4 * (iteration + 1) % nvec * v220];
          v216 = v70 + v199;
          v74 = 4 * v47;
          v75 = &v9[v207 + v60 + v59];
          v190 = (iteration - nvec) & ~((iteration - nvec) >> 31);
          do
          {
            if (!converged[v69])
            {
              v204 = v75;
              v208 = v73;
              v76 = &v183[4 * v69 * nvec * nvec];
              if ((v176 & 1) == 0)
              {
                v77 = 0;
                do
                {
                  cblas_sdot_NEWLAPACK();
                  *&v76[4 * ((v216 + v77) % nvec) + 4 * v218] = v78;
                  cblas_saxpy_NEWLAPACK();
                  if (v77 + 1 >= nvec)
                  {
                    break;
                  }

                  v71 = v77++ < v214;
                }

                while (v71);
              }

              cblas_snrm2_NEWLAPACK();
              if (v79 == 0.0)
              {
                v79 = 1.1755e-38;
              }

              v226 = v79;
              v80 = v204;
              v81 = v208;
              v82 = v47;
              if (v47 >= 1)
              {
                do
                {
                  v83 = *v80++;
                  *v81++ = v83 / v79;
                  --v82;
                }

                while (v82);
              }

              v84 = &v181[4 * v69 * 2 * nvec];
              v85 = &v76[4 * v218];
              if (iteration > v190)
              {
                v86 = iteration - v190;
                v87 = (iteration - nvec) & ~((iteration - nvec) >> 31);
                do
                {
                  v88 = v87 % nvec;
                  v89 = *&v84[8 * (v87 % nvec)];
                  if (v87 % nvec + 1 < nvec)
                  {
                    v90 = v88 + 1;
                  }

                  else
                  {
                    v90 = 0;
                  }

                  v91 = *&v84[4 * ((2 * (v88 & 0x3FFFFFFF)) | 1)];
                  if (nvec == v86)
                  {
                    v92 = v89 * *&v85[4 * v90];
                  }

                  else
                  {
                    v93 = *&v85[4 * v88];
                    v94 = *&v85[4 * v90];
                    *&v85[4 * v88] = (v91 * v94) + (v89 * v93);
                    v92 = (v89 * v94) - (v91 * v93);
                  }

                  *&v85[4 * v90] = v92;
                  ++v87;
                  --v86;
                }

                while (v86);
              }

              v95 = &v192[4 * v69 * nvec];
              v96 = &v84[4 * (2 * v199)];
              v97 = &v84[4 * ((2 * (v199 & 0x3FFFFFFF)) | 1)];
              cblas_srotg_NEWLAPACK();
              *&v95[4 * v195] = -(*v97 * *&v95[4 * v199]);
              *&v95[4 * v199] = *v96 * *&v95[4 * v199];
              data = X->data;
              if ((*&X->attributes & 1) == 0)
              {
                v99 = X->columnStride * v69;
              }

              if (nvec <= iteration)
              {
                cblas_saxpy_NEWLAPACK();
                cblas_sgemm_NEWLAPACK();
              }

              cblas_sgemm_NEWLAPACK();
              v100 = 1.0 / *&v76[4 * v199 * nvec + 4 * v199];
              cblas_sscal_NEWLAPACK();
              v101 = *&v95[4 * v199];
              cblas_saxpy_NEWLAPACK();
              if (*&v210->attributes)
              {
                v102 = v69;
              }

              else
              {
                v102 = v210->columnStride * v69;
              }

              v73 = v208;
              v74 = 4 * v47;
              v75 = v204;
              v210->data[v102] = fabsf(*&v95[4 * v195]);
            }

            ++v69;
            v73 += v74;
            v75 += v74;
          }

          while (v69 != v209);
        }
      }
    }

    return;
  }

  v12 = 4;
  if (*&X->attributes)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(&X->rowCount + v13);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  v15 = *(&X->rowCount + v12);
  if (*&R->attributes)
  {
    v16 = R->columnStride;
  }

  else
  {
    v16 = 1;
  }

  v193 = v16;
  if (options->nvec)
  {
    v22 = options->nvec;
  }

  else
  {
    v22 = 16;
  }

  v212 = (iteration % v22);
  v182 = v22 + 1;
  v23 = (v22 + 1) * v15;
  v178 = 4 * v23 * v14;
  v219 = v22 * v22;
  v198 = &state[v178];
  v172 = 8 * v15 * v22;
  v173 = 4 * v22 * v22 * v15;
  v191 = &state[v178 + v173];
  v200 = v15 * v14;
  v186 = &v191[4 * v200 + v172];
  __src = v15 * v14;
  v24 = v186 + 4 * v200;
  v194 = v22;
  v25 = 4 * v22 * v15 * v14;
  if (variant == 2)
  {
    v26 = v186 + 4 * v15 * v14;
  }

  else
  {
    v26 = 0;
  }

  v189 = v26;
  if (variant != 2)
  {
    v25 = 0;
  }

  v202 = v24 + v25;
  v215 = v15;
  v217 = v24 + v25 + 4 * v23;
  if (iteration < 0 || !v212)
  {
    if (!iteration)
    {
LABEL_131:
      if (v15 >= 1)
      {
        v124 = 0;
        v125 = v9;
        do
        {
          *(v217 + 4 * v124) = 0;
          if (!converged[v124])
          {
            v126 = (*&R->attributes & 1) != 0 ? v124 : R->columnStride * v124;
            v127 = &R->data[v126];
            cblas_snrm2_NEWLAPACK();
            R = v210;
            *(v202 + 4 * v124 * v182) = v128;
            v15 = v215;
            if (v14 >= 1)
            {
              v129 = v125;
              v130 = v14;
              do
              {
                *v129++ = *v127 / *(v202 + 4 * v124 * v182);
                v127 += v193;
                --v130;
              }

              while (v130);
            }
          }

          ++v124;
          v125 += v14;
        }

        while (v124 != v15);
      }

      goto LABEL_141;
    }

    if (v15 < 1)
    {
      v34 = X;
      if (variant == 2)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v27 = 0;
      v28 = 4 * v23;
      v170 = v25 + 8 * v200;
      v29 = v170 + v173 + v178 + v172;
      v30 = &state[v29];
      v171 = v28;
      v31 = &state[v28 + v29];
      v32 = v15;
      do
      {
        v33 = *v31;
        v31 += 4;
        if (v33)
        {
          cblas_strsv_NEWLAPACK();
        }

        v30 += 4 * v182;
        v27 += v219;
        --v32;
      }

      while (v32);
      v34 = X;
      v35 = 0;
      if (variant == 2)
      {
        v36 = v215;
        do
        {
          if (*(v217 + 4 * v35))
          {
            cblas_sgemv_NEWLAPACK();
            v36 = v215;
            if (v14 >= 1)
            {
              v37 = X->data;
              v38 = X->columnStride;
              v39 = v38 * v35;
              v40 = &v9[v173 + v178 + v172];
              v41 = v35;
              v42 = v14;
              do
              {
                v43 = *v40++;
                v44 = v43;
                if (*&X->attributes)
                {
                  v45 = v41;
                }

                else
                {
                  v45 = v39;
                }

                v37[v45] = v44 + v37[v45];
                ++v39;
                v41 += v38;
                --v42;
              }

              while (v42);
            }
          }

          ++v35;
        }

        while (v35 != v36);
        goto LABEL_130;
      }

      v103 = v173 + v178 + v172;
      v104 = v103 + 4 * __src;
      v105 = 4 * v14;
      v106 = v103 + v170;
      v107 = v103 + v170 + v171;
      v15 = v215;
      v108 = v215;
      do
      {
        if (*&v9[v107])
        {
          cblas_sgemv_NEWLAPACK();
          v15 = v215;
        }

        v104 += v105;
        v35 += v105;
        v106 += 4 * v182;
        v107 += 4;
        --v108;
      }

      while (v108);
    }

    if (Preconditioner)
    {
      v109 = Preconditioner->mem;
      v110 = Preconditioner->apply;
      v226 = *&v14;
      v227 = v15;
      v228 = v14;
      v229 = 0;
      v230 = &v191[4 * v200 + v172];
      v221 = v14;
      v222 = v15;
      v223 = v14;
      v224 = 0;
      v225 = &v191[v172];
      (v110)(v109, 0, &v226, &v221);
      v15 = v215;
      v111 = &v191[v172];
    }

    else
    {
      v111 = &v191[4 * v200 + v172];
    }

    if (v15 >= 1)
    {
      v112 = 0;
      for (i = 0; i != v15; ++i)
      {
        if (v14 >= 1 && *(v217 + 4 * i))
        {
          v114 = (v111 + 4 * v112);
          v115 = v34->data;
          v116 = v34->columnStride;
          v117 = v116 * i;
          v118 = i;
          v119 = v14;
          do
          {
            v120 = *v114++;
            v121 = v120;
            if (*&v34->attributes)
            {
              v122 = v118;
            }

            else
            {
              v122 = v117;
            }

            v115[v122] = v121 + v115[v122];
            ++v117;
            v118 += v116;
            --v119;
          }

          while (v119);
        }

        v112 += v14;
      }
    }

LABEL_130:
    p_rowCount = &v34->rowCount;
    v10 = ApplyOperator;
    sub_236708720(p_rowCount, B, &v210->rowCount, ApplyOperator);
    v15 = v215;
    R = v210;
    if (iteration < 0)
    {
      return;
    }

    goto LABEL_131;
  }

LABEL_141:
  if (Preconditioner)
  {
    v131 = Preconditioner->mem;
    v132 = Preconditioner->apply;
    if (options->variant == SparseVariantFGMRES)
    {
      v133 = v189 + 4 * v212 * __src;
    }

    else
    {
      v133 = &v191[4 * v200 + v172];
    }

    v226 = *&v14;
    v227 = v15;
    v228 = v14;
    v229 = 0;
    v230 = &v9[4 * v212 * __src];
    v221 = v14;
    v222 = v15;
    v223 = v14;
    v224 = 0;
    v225 = v133;
    v134 = v15;
    (v132)(v131, 0, &v226, &v221);
    v135 = v10[2];
    v226 = *&v14;
    v227 = v134;
    v228 = v14;
    v229 = 0;
    v230 = v133;
    v221 = v14;
    v222 = v134;
    v223 = v14;
    v224 = 0;
    v225 = &v191[v172];
    v135(v10, 0, 111, &v226, &v221);
  }

  else
  {
    v136 = v10[2];
    v226 = *&v14;
    v227 = v15;
    v228 = v14;
    v229 = 0;
    v230 = &v9[4 * v212 * __src];
    v221 = v14;
    v222 = v15;
    v223 = v14;
    v224 = 0;
    v225 = &v191[v172];
    v134 = v15;
    v136(v10, 0, 111, &v226, &v221, B);
  }

  if (v134 >= 1)
  {
    v137 = v134;
    v138 = 0;
    v139 = 0;
    v177 = v194 * v212;
    v184 = 2 * v194;
    v140 = &v9[4 * v177 + v178];
    v141 = 4 * v14;
    v142 = v173 + v178;
    v179 = v173 + v178 + v172;
    v143 = &v9[v142 + 4];
    v144 = 4 * v184;
    v196 = v140;
    v174 = v140 + 4;
    while (converged[v139])
    {
LABEL_164:
      ++v139;
      v138 += v219;
      v9 += v141;
      v143 += v144;
      if (v139 == v137)
      {
        return;
      }
    }

    ++*(v217 + 4 * v139);
    if ((v212 & 0x80000000) == 0)
    {
      v145 = (v212 + 1);
      v146 = &v196[4 * v138];
      v147 = v9;
      do
      {
        cblas_sdot_NEWLAPACK();
        *v146 = v148;
        v146 += 4;
        cblas_saxpy_NEWLAPACK();
        v147 += 4 * v200;
        --v145;
      }

      while (v145);
    }

    cblas_snrm2_NEWLAPACK();
    v226 = v149;
    if (v149 == 0.0)
    {
      v150 = v210;
      v151 = v210->data;
      v152 = 0.0;
      if (*&v210->attributes)
      {
LABEL_155:
        v153 = v139;
LABEL_163:
        v137 = v215;
        v141 = 4 * v14;
        v144 = 4 * v184;
        v151[v153] = v152;
        goto LABEL_164;
      }
    }

    else
    {
      v154 = v179;
      v155 = 4 * (v212 + 1) * v200;
      v156 = v14;
      if (v14 >= 1)
      {
        do
        {
          *&v9[v155] = *&v9[v154] / v149;
          v155 += 4;
          v154 += 4;
          --v156;
        }

        while (v156);
      }

      if (v212 >= 1)
      {
        v157 = *&v198[4 * v219 * v139 + 4 * v177];
        v158 = v143;
        v159 = v212;
        v160 = &v174[4 * v138];
        do
        {
          v161 = *(v158 - 1);
          v162 = (*v158 * *v160) + (v161 * v157);
          v157 = (v161 * *v160) - (*v158 * v157);
          *(v160 - 1) = v162;
          *v160 = v157;
          v158 += 2;
          ++v160;
          --v159;
        }

        while (v159);
      }

      v163 = &v191[4 * v139 * v184];
      v164 = v202 + 4 * v139 * v182;
      v165 = &v163[8 * v212];
      v166 = &v163[4 * ((2 * v212) | 1)];
      cblas_srotg_NEWLAPACK();
      v167 = *(v164 + 4 * v212);
      v168 = -(*v166 * v167);
      *(v164 + 4 * (v212 + 1)) = v168;
      *(v164 + 4 * v212) = v167 * *v165;
      v152 = fabsf(v168);
      v150 = v210;
      v151 = v210->data;
      if (*&v210->attributes)
      {
        goto LABEL_155;
      }
    }

    v153 = v150->columnStride * v139;
    goto LABEL_163;
  }
}

SparseIterativeStatus_t _SparseGMRESSolve_Float(SparseGMRESOptions *options, DenseMatrix_Float *X, DenseMatrix_Float *B, void *ApplyOperator, const SparseOpaquePreconditioner_Float *Preconditioner)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = 4;
  if (*&X->attributes)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(&X->rowCount + v8);
  if (*&X->attributes)
  {
    v7 = 0;
  }

  v10 = *(&X->rowCount + v7);
  variant = options->variant;
  if (Preconditioner || variant != 2)
  {
    if (options->nvec)
    {
      nvec = options->nvec;
    }

    else
    {
      nvec = 16;
    }

    v14 = variant - 1;
    v15 = v10 * v9;
    if (variant == 2)
    {
      v16 = v15 * nvec;
    }

    else
    {
      v16 = 0;
    }

    v17 = v10 + 4 * (v10 + (v10 + v15) + v16 + v10 + v10 * (nvec + v9) * (nvec + 3));
    if (v14 > 1)
    {
      v17 = v10 + 4 * (((nvec + 3) * nvec + (2 * nvec + 2) * v9) * v10 + (v10 + v10 * v9));
    }

    v18 = v17 + 24;
    v19 = malloc_type_malloc(v17 + 24, 0x100004077774924uLL);
    if (v19)
    {
      v20 = v19 + v18;
      *&R.attributes = 0;
      R.rowCount = v9;
      R.columnCount = v10;
      R.columnStride = v9;
      v21 = ((&v19[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
      if (v20 < v21 || (v53 = v19, R.data = v19, LODWORD(v19) = sub_236708720(&X->rowCount, B, &R.rowCount, ApplyOperator), v22 = &v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8, v20 < v22) || (Preconditionera = Preconditioner, bzero(v21, v10), v50 = ((v22 + 4 * v10 + 7) & 0xFFFFFFFFFFFFFFF8), v20 < v50))
      {
        __break(1u);
        return v19;
      }

      v48 = v9;
      if (v10 >= 1)
      {
        v23 = v10;
        v24 = v53;
        v25 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
        do
        {
          cblas_snrm2_NEWLAPACK();
          *v25++ = v26;
          v24 += v9;
          --v23;
        }

        while (v23);
      }

      if (options->maxIterations)
      {
        maxIterations = options->maxIterations;
      }

      else
      {
        maxIterations = 100;
      }

      rtol = options->rtol;
      v29 = rtol == 0.0;
      if (rtol < 0.0)
      {
        rtol = 0.0;
      }

      if (v29)
      {
        v30 = 0.00034527;
      }

      else
      {
        v30 = rtol;
      }

      if (maxIterations < 1)
      {
LABEL_51:
        reportError = options->reportError;
        if (!options->reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23670BAC8();
          }

          _SparseTrap();
        }

        memset(&__str[35], 0, 221);
        strcpy(__str, "Exceeded maximum iteration limit.\n");
        (reportError)(__str);
        v44 = 1;
        v43 = v53;
      }

      else
      {
        v31 = 0;
        atol = options->atol;
        v33 = v48;
        if (*&R.attributes)
        {
          v33 = 1;
        }

        v34 = 4 * v33;
        while (1)
        {
          if (options->reportStatus && (v31 < nvec || !(v31 % nvec)))
          {
            v35 = v53;
            if (!v31)
            {
              v35 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
            }

            snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v31, *v35);
            (options->reportStatus)(__str);
          }

          _SparseGMRESIterate_Float(options, v31, v50, v21, X, B, &R, Preconditionera, ApplyOperator);
          if (v10 < 1)
          {
            break;
          }

          v36 = 1;
          v37 = v10;
          v38 = v53;
          v39 = v21;
          v40 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v41 = *v39 || fabsf(*v38) < (atol + (v30 * *v40));
            *v39++ = v41;
            v36 &= v41;
            ++v40;
            v38 = (v38 + v34);
            --v37;
          }

          while (v37);
          if (v36)
          {
            goto LABEL_65;
          }

          if (++v31 == maxIterations)
          {
            goto LABEL_51;
          }
        }

        v31 = 0;
LABEL_65:
        v43 = v53;
        if (options->reportStatus)
        {
          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v31 + 1, *v53);
          (options->reportStatus)(__str);
        }

        _SparseGMRESIterate_Float(options, -1, v50, v21, X, B, &R, Preconditionera, ApplyOperator);
        v44 = 0;
      }

      free(v43);
    }

    else
    {
      if (!options->reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23670BB0C();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v18);
      (options->reportError)(__str);
      v44 = -99;
    }
  }

  else
  {
    v12 = options->reportError;
    if (!options->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23670BB88();
      }

      _SparseTrap();
    }

    memset(&__str[100], 0, 156);
    strcpy(__str, "FGMRES requires a preconditioner.\nIf no preconditioner is available, use GMRES or DQGMRES instead.\n");
    (v12)(__str);
    v44 = -1;
  }

  v45 = *MEMORY[0x277D85DE8];
  LODWORD(v19) = v44;
  return v19;
}

uint64_t sub_236709EA4(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  if (v5 >= a3)
  {
    v5 = a3;
  }

  if (v5 >= a4)
  {
    v5 = a4;
  }

  v6 = 4 * (a3 + (v5 + 3) * a4 + 3) + 88;
  v7 = 8 * a4 * a5 + 104;
  if (!a2)
  {
    v7 = 104;
  }

  return v7 + v6 * a5;
}

void _SparseLSMRIterate_Float(const SparseLSMROptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Float *X, DenseMatrix_Float *B, DenseMatrix_Float *R, const SparseOpaquePreconditioner_Float *Preconditioner, void *ApplyOperator)
{
  v12 = converged;
  v13 = options;
  v14 = 4;
  if (*&B->attributes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(&B->rowCount + v15);
  if (*&X->attributes)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&X->rowCount + v17);
  if (*&X->attributes)
  {
    v14 = 0;
  }

  v19 = *(&X->rowCount + v14);
  v20 = ApplyOperator;
  nvec = options->nvec;
  if (nvec >= v16)
  {
    nvec = v16;
  }

  if (nvec >= v18)
  {
    v22 = *(&X->rowCount + v17);
  }

  else
  {
    v22 = nvec;
  }

  v65[0] = v18;
  v65[1] = v19;
  v65[2] = v18;
  v65[3] = 0;
  v66 = &state[88 * v19 + 7] & 0xFFFFFFFFFFFFFFF8;
  v63[0] = v18;
  v63[1] = v19;
  v63[2] = v18;
  v63[3] = 0;
  v64 = v66 + 4 * (v19 * v18);
  v23 = v64 + 4 * (v19 * v18);
  *&v61 = __PAIR64__(v19, v16);
  *(&v61 + 1) = v16;
  v62 = v23 + 4 * (v19 * v18 * v22);
  *&v59 = __PAIR64__(v19, v18);
  *(&v59 + 1) = v18;
  v60 = v62 + 4 * v19 * v16;
  v24 = (v60 + 4 * (v19 * v18));
  *&v57 = __PAIR64__(v19, v18);
  *(&v57 + 1) = v18;
  v58 = 0;
  *&v55 = __PAIR64__(v19, v18);
  *(&v55 + 1) = v18;
  v56 = 0;
  if (Preconditioner)
  {
    v25 = 4 * (v19 * v18);
    v58 = v60 + v25;
    v56 = &v24[v25 / 4];
    if ((iteration & 0x80000000) == 0)
    {
      v24 = (v24 + v25 + v25);
      goto LABEL_18;
    }

    v47 = Preconditioner;
    sub_2367CDB58(&X->rowCount, &v57);
    mem = v47->mem;
    apply = v47->apply;
    v69 = v57;
    v70 = v58;
    v67 = *&X->rowCount;
    data = X->data;
    (apply)(mem, 111, &v69, &v67);
LABEL_46:
    sub_236708720(&X->rowCount, B, &R->rowCount, ApplyOperator);
    return;
  }

  if (iteration < 0)
  {
    goto LABEL_46;
  }

LABEL_18:
  v26 = &v24[v19];
  v27 = &v26[v19];
  if (iteration)
  {
    goto LABEL_49;
  }

  v54 = state;
  v53 = Preconditioner;
  v52 = &v26[v19];
  v30 = sub_23670A23C(options, v16, v18, v19, converged, &v61, &v59, &X->rowCount, &B->rowCount, &v57, v65, v63, v23, Preconditioner, ApplyOperator, state);
  v13 = options;
  iteration = 0;
  v12 = converged;
  Preconditioner = v53;
  v20 = ApplyOperator;
  v26 = &v24[v19];
  v27 = v52;
  state = v54;
  if ((v30 & 1) == 0)
  {
LABEL_49:
    lambda = v13->lambda;
    v51 = v20;
    v50 = Preconditioner;
    v32 = state;
    v33 = X;
    v34 = v26;
    sub_23670A62C(iteration, lambda, v16, v18, v19, v12, &v61, &v59, v33, &v57, &v55, v65, v63, v23, v24, v26, v27, v50, v51, state);
    if (v19 >= 1)
    {
      v35 = 0;
      v36 = 4;
      if ((*&R->attributes & 1) == 0)
      {
        v36 = 0;
      }

      v37 = *(&R->rowCount + v36);
      v38 = (v32 + 36);
      do
      {
        if (v37 >= 1)
        {
          v39 = (*&R->attributes & 1) != 0 ? v35 : R->columnStride * v35;
          v40 = R->data;
          v40[v39] = fabsf(*v38);
          if (v37 != 1)
          {
            columnStride = R->columnStride;
            v42 = columnStride * v35;
            v43 = (*&R->attributes & 1) != 0 ? v35 + columnStride : v42 + 1;
            v40[v43] = *&v24[v35];
            if (v37 >= 3)
            {
              v44 = v42 + 2;
              if (*&R->attributes)
              {
                v44 = v35 + 2 * columnStride;
              }

              v40[v44] = *&v34[v35];
              if (v37 != 3)
              {
                if (*&R->attributes)
                {
                  v45 = 3;
                }

                else
                {
                  v45 = v35;
                }

                if (*&R->attributes)
                {
                  v46 = v35;
                }

                else
                {
                  v46 = 3;
                }

                v40[v46 + columnStride * v45] = *&v27[v35];
              }
            }
          }
        }

        ++v35;
        v38 += 22;
      }

      while (v19 != v35);
    }
  }
}

uint64_t sub_23670A23C(uint64_t a1, int a2, int a3, int a4, uint64_t a5, unsigned int *a6, __int128 *a7, int *a8, int *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = *(a1 + 16);
  if (v20 >= a2)
  {
    v20 = a2;
  }

  if (v20 >= a3)
  {
    v20 = a3;
  }

  v44 = v20;
  sub_2367CDB58(a9, a6);
  sub_2367CDC98(a8);
  v21 = 1;
  if (a4 >= 1)
  {
    v22 = 0;
    v23 = a16;
    v24 = a4;
    v25 = -a4;
    v26 = 1;
LABEL_7:
    v27 = v23 + 88 * v22++;
    do
    {
      if ((*(a5 + v22 - 1) & 1) == 0)
      {
        *v27 = 0;
        v28 = *(a6 + 2) + 4 * (a6[2] * (v22 - 1));
        *(v27 + 4) = 0;
        cblas_snrm2_NEWLAPACK();
        *(v27 + 8) = v29;
        if (v29 > 0.0)
        {
          cblas_sscal_NEWLAPACK();
          v26 = 0;
          v23 = a16;
          if (v25 + v22)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }

        *v27 = 1;
        *(v27 + 36) = 0;
      }

      ++v22;
      v27 += 88;
    }

    while (v25 + v22 != 1);
    v23 = a16;
    if (v26)
    {
      v21 = 1;
      return v21 & 1;
    }

LABEL_17:
    v30 = *(a15 + 16);
    v51 = *a6;
    v52 = *(a6 + 2);
    if (a14)
    {
      v49 = *a10;
      v50 = *(a10 + 2);
      v30();
      v31 = *(a14 + 8);
      v32 = *(a14 + 16);
      v51 = *a10;
      v52 = *(a10 + 2);
      v49 = *a7;
      v50 = *(a7 + 2);
      v32(v31, 112, &v51, &v49);
    }

    else
    {
      v49 = *a7;
      v50 = *(a7 + 2);
      v30();
    }

    v33 = 0;
    v34 = 0;
    __n = 4 * a3;
    v35 = (v23 + 84);
    v21 = 1;
    do
    {
      if ((*(a5 + v34) & 1) == 0 && *(v35 - 19) != 0.0)
      {
        v36 = (*(a7 + 2) + 4 * v34 * *(a7 + 2));
        v37 = *(a11 + 8);
        v45 = *(a11 + 16);
        v46 = *(a12 + 16);
        v38 = *(a12 + 8);
        cblas_snrm2_NEWLAPACK();
        *(v35 - 20) = v39;
        if (v39 > 0.0)
        {
          cblas_sscal_NEWLAPACK();
          v39 = *(v35 - 20);
        }

        v40 = v39 * *(v35 - 19);
        if (v40 == 0.0)
        {
          *(v35 - 84) = 1;
        }

        else
        {
          *(v35 - 44) = v44 > 0;
          *(v35 - 10) = 0.0;
          *(v35 - 9) = v44;
          *(v35 - 43) = 0;
          if (v44 >= 1)
          {
            memcpy((a13 + 4 * v33), v36, __n);
            v39 = *(v35 - 20);
            v40 = v39 * *(v35 - 19);
          }

          *(v35 - 12) = v40;
          *(v35 - 18) = v39;
          *(v35 - 17) = xmmword_23681FB60;
          memcpy((v45 + 4 * v34 * v37), v36, __n);
          bzero((v46 + 4 * v34 * v38), __n);
          v21 = 0;
          v41 = *(v35 - 20);
          *(v35 - 7) = *(v35 - 19);
          *(v35 - 8) = 0.0;
          *(v35 - 13) = 0.0;
          *(v35 - 6) = xmmword_23681FB70;
          *v35 = v41 * v41;
          *(v35 - 1) = 0x7F7FFFFF00000000;
        }
      }

      ++v34;
      v35 += 22;
      v33 += a3 * v44;
    }

    while (v24 != v34);
  }

  return v21 & 1;
}

uint64_t sub_23670A62C(int a1, float a2, uint64_t a3, int a4, int a5, _BYTE *a6, __int128 *a7, __int128 *a8, uint64_t a9, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16, _DWORD *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (*(a9 + 12))
  {
    v23 = *(a9 + 8);
  }

  v154 = a6;
  if (a5 >= 1)
  {
    v24 = a5;
    v25 = a6;
    v26 = a20;
    v27 = a15;
    v28 = a16;
    v29 = a17;
    do
    {
      v30 = *v25++;
      if ((v30 & 1) == 0 && *v26 == 1)
      {
        *v27 = 0;
        *v28 = 0;
        *v29 = -1082130432;
      }

      ++v29;
      ++v28;
      ++v27;
      v26 += 88;
      --v24;
    }

    while (v24);
    v31 = 0;
    v32 = (a20 + 4);
    do
    {
      if ((a6[v31] & 1) == 0 && (*(v32 - 1) & 1) == 0)
      {
        v33 = *(a7 + 2);
        v34 = (*(a7 + 2) * v31);
        v35 = -*v32;
        cblas_sscal_NEWLAPACK();
        a6 = v154;
      }

      ++v31;
      v32 += 22;
    }

    while (a5 != v31);
  }

  if (a18)
  {
    v36 = *(a18 + 8);
    v37 = *(a18 + 16);
    v157 = *a8;
    v158 = *(a8 + 2);
    v155 = *a10;
    v156 = *(a10 + 2);
    v37(v36, 111, &v157, &v155);
    v38 = *(a19 + 16);
    v157 = *a10;
    v39 = *(a10 + 2);
  }

  else
  {
    v38 = *(a19 + 16);
    v157 = *a8;
    v39 = *(a8 + 2);
  }

  v158 = v39;
  v155 = *a7;
  v156 = *(a7 + 2);
  result = v38(a19, 1, 111, &v157, &v155);
  v41 = v154;
  if (a5 >= 1)
  {
    v152 = a5;
    v42 = 0;
    v43 = 0;
    v141 = a4;
    v44 = 4 * a4;
    v136 = a4;
    v45 = a20 + 48;
    v148 = a4;
    v46 = -a5;
    while (2)
    {
      v143 = v43;
      v47 = (v45 + 88 * v42);
      v48 = v44 * v42;
      v49 = v42++;
      while (1)
      {
        if ((v41[v42 - 1] & 1) == 0 && (*(v47 - 12) & 1) == 0)
        {
          v50 = *(a7 + 2) + 4 * *(a7 + 2) * (v42 - 1);
          v51 = *(a8 + 2);
          v52 = *(a8 + 2);
          v53 = *v47;
          result = cblas_snrm2_NEWLAPACK();
          v41 = v154;
          *(v47 - 10) = v54;
          if (v54 > 0.0)
          {
            break;
          }
        }

        ++v42;
        v47 += 22;
        v48 += v44;
        ++v49;
        if (v46 + v42 == 1)
        {
          v62 = v136;
          v64 = a16;
          v63 = a17;
          v65 = a20;
          v66 = a11;
          if ((v143 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_34;
        }
      }

      cblas_sscal_NEWLAPACK();
      if (*(v47 - 8) == 1)
      {
        v55 = *v47;
        v56 = *(v47 - 1) + 1;
        *(v47 - 1) = v56;
        if (v56 >= SLODWORD(v55))
        {
          v56 = 0;
          *(v47 - 1) = 0.0;
          *(v47 - 7) = 1;
        }

        if (v136 >= 1)
        {
          v57 = (a14 + 4 * v56 * v136 + v48 * v53);
          v58 = (v51 + 4 * v52 * v49);
          v59 = v148;
          do
          {
            v60 = *v58++;
            *v57++ = v60;
            --v59;
          }

          while (v59);
        }
      }

      v61 = -*(v47 - 10);
      v43 = 1;
      v62 = v136;
      result = cblas_sscal_NEWLAPACK();
      v41 = v154;
      v64 = a16;
      v63 = a17;
      v65 = a20;
      v66 = a11;
      v45 = a20 + 48;
      if (v152 != v42)
      {
        continue;
      }

      break;
    }

LABEL_34:
    v67 = *(a19 + 16);
    if (a18)
    {
      v157 = *a7;
      v158 = *(a7 + 2);
      v155 = *a10;
      v156 = *(a10 + 2);
      v67();
      v68 = *(a18 + 8);
      v69 = *(a18 + 16);
      v157 = *a10;
      v158 = *(a10 + 2);
      v155 = *v66;
      v156 = *(v66 + 2);
      result = v69(v68, 112, &v157, &v155);
      v70 = 0;
      v41 = v154;
      do
      {
        if (v62 >= 1)
        {
          v71 = (*(a8 + 2) + 4 * *(a8 + 2) * v70);
          v72 = (*(v66 + 2) + 4 * *(v66 + 2) * v70);
          v73 = v148;
          do
          {
            v74 = *v72++;
            *v71 = v74 + *v71;
            ++v71;
            --v73;
          }

          while (v73);
        }

        ++v70;
      }

      while (v70 != v152);
    }

    else
    {
      v157 = *a7;
      v158 = *(a7 + 2);
      v155 = *a8;
      v156 = *(a8 + 2);
      result = (v67)();
      v41 = v154;
    }

LABEL_42:
    v75 = 0;
    v76 = 0;
    v137 = fabsf(a2);
    v77 = 4 * v141;
    v78 = v152;
    v138 = a2;
    do
    {
      if ((v41[v76] & 1) == 0)
      {
        v79 = v65 + 88 * v76;
        if ((*v79 & 1) == 0)
        {
          if ((*(a9 + 12) & 1) == 0)
          {
            v80 = *(a9 + 8) * v76;
          }

          v151 = *(a8 + 2);
          v149 = *(a8 + 2);
          v81 = *(a12 + 16);
          v82 = *(a12 + 8);
          v83 = *(a13 + 16);
          v84 = *(a13 + 8);
          if (*(v79 + 8) > 0.0)
          {
            v142 = *(a9 + 16);
            v144 = *(a13 + 8);
            v85 = *(a13 + 16);
            v146 = *(a12 + 8);
            v86 = *(a12 + 16);
            if (*(v79 + 40) == 1)
            {
              v87 = *(v79 + 48);
              if ((*(v79 + 41) & 1) == 0)
              {
                v87 = *(v79 + 44) + 1;
              }

              v62 = v136;
              if (v87 >= 1)
              {
                v88 = v87;
                v89 = a14 + v75 * *(v79 + 48);
                do
                {
                  cblas_sdot_NEWLAPACK();
                  cblas_saxpy_NEWLAPACK();
                  v89 += v77;
                  --v88;
                }

                while (v88);
              }
            }

            cblas_snrm2_NEWLAPACK();
            *(v79 + 4) = v90;
            v64 = a16;
            v63 = a17;
            v81 = v86;
            v82 = v146;
            v83 = v85;
            v84 = v144;
            if (v90 > 0.0)
            {
              cblas_sscal_NEWLAPACK();
              v84 = v144;
              v83 = v85;
              v82 = v146;
              v81 = v86;
            }
          }

          v91 = *(v79 + 12);
          v92 = 0.0;
          v93 = 0.0;
          v94 = v91;
          if (a2 != 0.0)
          {
            v95 = v137 + fabsf(v91);
            v94 = 0.0;
            if (v95 != 0.0)
            {
              v94 = sqrt((((a2 / v95) * (a2 / v95)) + ((v91 / v95) * (v91 / v95)))) * v95;
            }

            v93 = a2 / v94;
          }

          v147 = v93;
          v96 = *(v79 + 24);
          v97 = *(v79 + 8);
          v98 = fabsf(v94) + fabsf(v97);
          if (v98 != 0.0)
          {
            v92 = sqrt((((v97 / v98) * (v97 / v98)) + ((v94 / v98) * (v94 / v98)))) * v98;
          }

          *(v79 + 24) = v92;
          v99 = v94 / v92;
          v100 = v97 / v92;
          v101 = *(v79 + 4);
          v102 = v100 * v101;
          *(v79 + 12) = (v94 / v92) * v101;
          v103 = *(v79 + 28);
          v145 = *(v79 + 32);
          v104 = v92 * *(v79 + 16);
          v105 = fabsf(v100 * v101) + fabsf(v104);
          v106 = 0.0;
          if (v105 != 0.0)
          {
            v106 = sqrt((((v102 / v105) * (v102 / v105)) + ((v104 / v105) * (v104 / v105)))) * v105;
          }

          v107 = v92 * *(v79 + 20);
          *(v79 + 16) = v104 / v106;
          *(v79 + 20) = v102 / v106;
          v108 = *(v79 + 36);
          *(v79 + 28) = v106;
          *(v79 + 32) = (v104 / v106) * v108;
          *(v79 + 36) = -((v102 / v106) * v108);
          v65 = a20;
          if (v62 <= 0)
          {
            result = cblas_saxpy_NEWLAPACK();
            v78 = v152;
          }

          else
          {
            v109 = (v83 + 4 * v84 * v76);
            v110 = (v81 + 4 * v82 * v76);
            v111 = v148;
            v112 = v110;
            do
            {
              v113 = *v112++;
              *v109 = v113 + (((*(v79 + 24) * -v107) / (v96 * v103)) * *v109);
              ++v109;
              --v111;
            }

            while (v111);
            v114 = *(v79 + 32) / (*(v79 + 24) * *(v79 + 28));
            result = cblas_saxpy_NEWLAPACK();
            v78 = v152;
            v115 = (v151 + 4 * v149 * v76);
            v116 = v148;
            do
            {
              v117 = *v115++;
              *v110 = v117 + ((-v102 / *(v79 + 24)) * *v110);
              ++v110;
              --v116;
            }

            while (v116);
          }

          v118 = *(v79 + 56);
          v119 = (v91 / v94) * v118;
          v120 = -(v100 * v119);
          *(v79 + 56) = v120;
          v121 = *(v79 + 72);
          v122 = *(v79 + 64);
          v123 = fabsf(v107) + fabsf(v122);
          v124 = 0.0;
          v41 = v154;
          if (v123 != 0.0)
          {
            v124 = sqrt((((v107 / v123) * (v107 / v123)) + ((v122 / v123) * (v122 / v123)))) * v123;
          }

          v125 = v122 / v124;
          v126 = *(v79 + 28);
          v127 = *(v79 + 32);
          v128 = (v107 / v124) * v126;
          v129 = v125 * v126;
          v130 = ((v99 * v119) * v125) - ((v107 / v124) * *(v79 + 52));
          *(v79 + 52) = v130;
          v131 = (v145 - (v121 * *(v79 + 68))) / v124;
          *(v79 + 68) = v131;
          *(v79 + 72) = v128;
          v132 = *(v79 + 60) + (-(v147 * v118) * -(v147 * v118));
          *(v79 + 60) = v132;
          *(v79 + 64) = v129;
          *&a15[v76] = sqrtf((v132 + ((v130 - ((v127 - (v128 * v131)) / v129)) * (v130 - ((v127 - (v128 * v131)) / v129)))) + (v120 * v120));
          v133 = *(v79 + 84) + (*(v79 + 8) * *(v79 + 8));
          *(v79 + 84) = v133;
          *&v64[v76] = sqrtf(v133);
          *(v79 + 84) = *(v79 + 84) + (*(v79 + 4) * *(v79 + 4));
          v134 = *(v79 + 76);
          a2 = v138;
          if (v103 > v134)
          {
            *(v79 + 76) = v103;
            v134 = v103;
          }

          v135 = *(v79 + 80);
          if (a1 >= 1 && v103 < v135)
          {
            *(v79 + 80) = v103;
            v135 = v103;
          }

          if (v134 <= v104)
          {
            v134 = v104;
          }

          if (v135 >= v104)
          {
            v135 = v104;
          }

          *&v63[v76] = v134 / v135;
        }
      }

      ++v76;
      v75 += v77;
    }

    while (v76 != v78);
  }

  return result;
}

SparseIterativeStatus_t _SparseLSMRSolve_Float(SparseLSMROptions *options, DenseMatrix_Float *X, DenseMatrix_Float *B, void *ApplyOperator, const SparseOpaquePreconditioner_Float *Preconditioner)
{
  v5 = Preconditioner;
  v132 = *MEMORY[0x277D85DE8];
  v9 = 4;
  if (*&B->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&B->rowCount + v10);
  if (*&X->attributes)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(&X->rowCount + v12);
  if (*&X->attributes)
  {
    v9 = 0;
  }

  v14 = *(&X->rowCount + v9);
  maxIterations = options->maxIterations;
  if (maxIterations <= 0)
  {
    maxIterations = 4 * v13;
  }

  v94 = maxIterations;
  nvec = options->nvec;
  if (nvec >= v11)
  {
    nvec = v11;
  }

  if (nvec >= v13)
  {
    nvec = *(&X->rowCount + v12);
  }

  v17 = 4 * (v11 + (nvec + 3) * v13 + 3) + 88;
  v18 = 4 * (2 * v13 * v14) + 104;
  if (!Preconditioner)
  {
    v18 = 104;
  }

  v19 = 5 * v14 + v18 + v17 * v14 + 16;
  v20 = malloc_type_malloc(v19, 0xEC5780E5uLL);
  if (v20)
  {
    v21 = v20;
    v22 = v20 + v19;
    v23 = options->nvec;
    if (v23 >= v11)
    {
      v23 = v11;
    }

    if (v23 >= v13)
    {
      v24 = v13;
    }

    else
    {
      v24 = v23;
    }

    v25 = (&v20[22 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
    if (v22 >= v25)
    {
      v114[0] = v13;
      v114[1] = v14;
      v114[2] = v13;
      v114[3] = 0;
      v26 = v14 * v13;
      v27 = (v25 + 4 * (v14 * v13) + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v22 >= v27)
      {
        v28 = v11;
        v29 = 4 * v26;
        v115 = (&v20[22 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
        v112[0] = v13;
        v112[1] = v14;
        v112[2] = v13;
        v112[3] = 0;
        v30 = (v27 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v22 >= v30)
        {
          v113 = (v25 + 4 * v26 + 7) & 0xFFFFFFFFFFFFFFF8;
          v31 = (v30 + 4 * (v24 * v26) + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v22 >= v31)
          {
            *&v110 = __PAIR64__(v14, v28);
            *(&v110 + 1) = v28;
            v32 = (v31 + 4 * (v14 * v28) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v22 >= v32)
            {
              v111 = v31;
              *&v108 = __PAIR64__(v14, v13);
              *(&v108 + 1) = v13;
              v33 = ((v32 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
              if (v22 >= v33)
              {
                v109 = (v31 + 4 * (v14 * v28) + 7) & 0xFFFFFFFFFFFFFFF8;
                *&v106 = __PAIR64__(v14, v13);
                *(&v106 + 1) = v13;
                v107 = 0;
                *&v104 = __PAIR64__(v14, v13);
                *(&v104 + 1) = v13;
                v105 = 0;
                if (v5)
                {
                  v34 = &v33[v29 + 7] & 0xFFFFFFFFFFFFFFF8;
                  if (v22 < v34)
                  {
                    goto LABEL_107;
                  }

                  v107 = v33;
                  v33 = ((v34 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
                  if (v22 < v33)
                  {
                    goto LABEL_107;
                  }

                  v105 = v34;
                }

                v35 = &v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
                if (v22 >= v35)
                {
                  v36 = 4 * v14;
                  v98 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                  v37 = (v35 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v22 >= v37)
                  {
                    v100 = v37;
                    v38 = (v37 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
                    if (v22 >= v38)
                    {
                      v39 = (v38 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
                      if (v22 >= v39)
                      {
                        v99 = v38;
                        v95 = v28;
                        v101 = ((v38 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
                        if (v22 >= ((v39 + v36 + 7) & 0xFFFFFFFFFFFFFFF8))
                        {
                          bzero(v33, v14);
                          v40 = ApplyOperator;
                          if (sub_23670A23C(options, v95, v13, v14, v33, &v110, &v108, &X->rowCount, &B->rowCount, &v106, v114, v112, v30, v5, ApplyOperator, v21))
                          {
                            if (!v5)
                            {
LABEL_42:
                              free(v21);
                              result = SparseIterativeConverged;
                              goto LABEL_102;
                            }

                            sub_2367CDB58(&X->rowCount, &v106);
                            mem = v5->mem;
                            apply = v5->apply;
                          }

                          else
                          {
                            convergenceTest = options->convergenceTest;
                            if (convergenceTest)
                            {
                              if (convergenceTest == SparseLSMRCTFongSaunders && v14 >= 1)
                              {
                                v45 = (v21 + 2);
                                v46 = v14;
                                v47 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                                do
                                {
                                  v48 = *v45;
                                  v45 += 22;
                                  *v47++ = v48;
                                  --v46;
                                }

                                while (v46);
                              }
                            }

                            else if (v14 >= 1)
                            {
                              v49 = v21 + 9;
                              v50 = v14;
                              v51 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              do
                              {
                                v52 = *v49;
                                v49 += 22;
                                *v51++ = fabsf(v52);
                                --v50;
                              }

                              while (v50);
                            }

                            conditionLimit = options->conditionLimit;
                            v54 = 0.0;
                            if (conditionLimit > 0.0)
                            {
                              v54 = 1.0 / conditionLimit;
                            }

                            reportStatus = options->reportStatus;
                            if (reportStatus)
                            {
                              (reportStatus)("\n   Itn       y(1)           norm rbar    Abar'rbar Compatible    LS    norm Abar cond Abar\n");
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e\n", 0, *X->data, 0.0, v21[2], (v21[2] * v21[1]), 1.0, (v21[1] / v21[2]));
                              (options->reportStatus)(__str);
                            }

                            rtol = options->rtol;
                            v57 = rtol == 0.0;
                            if (rtol < 0.0)
                            {
                              rtol = 0.0;
                            }

                            if (v57)
                            {
                              v58 = 0.00034527;
                            }

                            else
                            {
                              v58 = rtol;
                            }

                            v59 = v99;
                            v60 = v100;
                            v61 = v101;
                            if (v94 < 1)
                            {
LABEL_100:
                              free(v21);
                              result = SparseIterativeMaxIterations;
                              goto LABEL_102;
                            }

                            v62 = 0;
                            v92 = v21 + 9;
                            v93 = v5;
                            v97 = v21;
                            v91 = v30;
                            while (1)
                            {
                              lambda = options->lambda;
                              sub_23670A62C(v62, lambda, v95, v13, v14, v33, &v110, &v108, X, &v106, &v104, v114, v112, v30, v60, v59, v61, v5, v40, v21);
                              v64 = options->convergenceTest;
                              if (v64 == SparseLSMRCTFongSaunders)
                              {
                                break;
                              }

                              if (v64 || v14 < 1)
                              {
                                goto LABEL_103;
                              }

                              v65 = 1;
                              v66 = v14;
                              v67 = v92;
                              v68 = v33;
                              v69 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              do
                              {
                                v70 = *v68 || options->atol + (v58 * *v69) >= fabsf(*v67);
                                *v68++ = v70;
                                v65 &= v70;
                                ++v69;
                                v67 += 22;
                                --v66;
                              }

                              while (v66);
LABEL_94:
                              v21 = v97;
                              if (v65)
                              {
                                goto LABEL_103;
                              }

                              if (options->reportStatus && (v62 < 0xA || !(v62 % 0xA)))
                              {
                                v88 = fabsf(*v92);
                                snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v62, *X->data, 0.0, *v100, v88, (*v100 / *v98), (v88 / (*v100 * *v99)), *v99, *v101);
                                (options->reportStatus)(__str);
                              }

                              ++v62;
                              v5 = v93;
                              v40 = ApplyOperator;
                              v30 = v91;
                              v59 = v99;
                              v60 = v100;
                              v61 = v101;
                              if (v62 == v94)
                              {
                                goto LABEL_100;
                              }
                            }

                            if (*&X->attributes)
                            {
                              columnStride = X->columnStride;
                            }

                            if (v14 >= 1)
                            {
                              v72 = 0;
                              v65 = 1;
                              v73 = 9;
                              while (1)
                              {
                                if ((v33[v72] & 1) == 0)
                                {
                                  if ((*&X->attributes & 1) == 0)
                                  {
                                    v74 = (X->columnStride * v72);
                                  }

                                  v75 = v97[v73];
                                  data = X->data;
                                  cblas_snrm2_NEWLAPACK();
                                  v78 = 1.0 / v101[v72];
                                  if (v78 + 1.0 <= 1.0 || v78 <= v54)
                                  {
                                    free(v97);
                                    result = SparseIterativeIllConditioned;
                                    goto LABEL_102;
                                  }

                                  v79 = v100[v72];
                                  v80 = v99[v72];
                                  v81 = (fabsf(v75) / (v79 * v80));
                                  if (v81 + 1.0 <= 1.0 || (v82 = v98[v72], v83 = v79 / v82, atol = options->atol, v85 = options->btol + atol * v80 * v77 / v82, v83 <= v85) || atol >= v81 || (v86 = v83 / (((v77 * v80) / v82) + 1.0), v86 + 1.0 <= 1.0))
                                  {
                                    v87 = 1;
                                    v33[v72] = 1;
                                  }

                                  else
                                  {
                                    v87 = v33[v72] != 0;
                                  }

                                  v65 &= v87;
                                }

                                ++v72;
                                v73 += 22;
                                if (v14 == v72)
                                {
                                  goto LABEL_94;
                                }
                              }
                            }

LABEL_103:
                            if (options->reportStatus)
                            {
                              v90 = fabsf(*v92);
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v62, *X->data, 0.0, *v100, v90, (*v100 / *v98), (v90 / (*v100 * *v99)), *v99, *v101);
                              (options->reportStatus)(__str);
                            }

                            if (!v93)
                            {
                              goto LABEL_42;
                            }

                            sub_2367CDB58(&X->rowCount, &v106);
                            mem = v93->mem;
                            apply = v93->apply;
                          }

                          *__str = v106;
                          *&v117 = v107;
                          v102 = *&X->rowCount;
                          v103 = X->data;
                          (apply)(mem, 111, __str, &v102);
                          goto LABEL_42;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_107:
    __break(1u);
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BBCC();
    }

    _SparseTrap();
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  *__str = 0u;
  v117 = 0u;
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v19);
  (options->reportError)(__str);
  result = SparseIterativeInternalError;
LABEL_102:
  v89 = *MEMORY[0x277D85DE8];
  return result;
}

float *sub_23670B980(float *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(a3 + v4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 4;
    if ((*(a3 + 12) & 1) == 0)
    {
      v7 = 0;
    }

    v8 = *(a3 + v7);
    v9 = *(a3 + 16);
    v10 = *(a3 + 8);
    v11 = *(a4 + 16);
    v12 = *(a4 + 8);
    do
    {
      if (*(a3 + 12))
      {
        v13 = v6;
      }

      else
      {
        v13 = v10 * v6;
      }

      if (*(a3 + 12))
      {
        v14 = v10;
      }

      else
      {
        v14 = 1;
      }

      v15 = *(a4 + 12);
      if (v15)
      {
        v16 = v6;
      }

      else
      {
        v16 = v12 * v6;
      }

      if (v15)
      {
        v17 = v12;
      }

      else
      {
        v17 = 1;
      }

      if (v8 >= 1)
      {
        v18 = (v9 + 4 * v13);
        v19 = 4 * v17;
        v20 = 4 * v14;
        v21 = v8;
        v22 = result;
        v23 = (v11 + 4 * v16);
        do
        {
          v24 = *v22++;
          *v23 = v24 * *v18;
          v23 = (v23 + v19);
          v18 = (v18 + v20);
          --v21;
        }

        while (v21);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_23670BB0C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23670BBCC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23670BC48(int *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, unsigned int *__b, uint64_t a11, unsigned int *a12)
{
  *a8 = a3;
  *(a8 + 4) = a3;
  v18 = a6 + 8 * a3 + 16;
  *(a8 + 8) = a6;
  *(a8 + 16) = v18;
  *(a8 + 24) = 0;
  *(a8 + 28) = *(a1 + 28);
  __pattern4 = -1;
  memset_pattern4(__b, &__pattern4, 4 * *a1);
  if (a3 <= 0)
  {
    memset_pattern4(a12, &__pattern4, 4 * a1[1]);
    v20 = a3;
    bzero(a7, 4 * a3);
    v23 = 0;
  }

  else
  {
    v19 = 0;
    v20 = a3;
    do
    {
      __b[*(a4 + 4 * v19)] = v19;
      ++v19;
    }

    while (a3 != v19);
    memset_pattern4(a12, &__pattern4, 4 * a1[1]);
    v21 = 0;
    do
    {
      a12[*(a5 + 4 * v21)] = v21;
      ++v21;
    }

    while (a3 != v21);
    bzero(a7, 4 * a3);
    v22 = 0;
    v23 = 0;
    v24 = *(a1 + 1);
    v25 = *(a2 + 8);
    do
    {
      *(a6 + 8 * v22) = v23;
      v26 = (v24 + 8 * *(a5 + 4 * v22));
      v28 = *v26;
      v27 = v26[1];
      v29 = v27 <= v28;
      v30 = v27 - v28;
      if (!v29)
      {
        v31 = (*(a1 + 2) + 4 * v28);
        do
        {
          v33 = *v31++;
          v32 = v33;
          if ((v33 & 0x80000000) == 0 && v32 < *a1)
          {
            v34 = __b[v32];
            v35 = v22 == v34 || v34 >= a3;
            if (!v35 && v22 >= a7[v34])
            {
              *(v18 + 4 * v23++) = v34;
              a7[v34] = v22 + 1;
            }
          }

          --v30;
        }

        while (v30);
      }

      v36 = (v25 + 8 * *(a4 + 4 * v22));
      v38 = *v36;
      v37 = v36[1];
      v39 = v37 - v38;
      if (v37 <= v38)
      {
        v40 = v22 + 1;
      }

      else
      {
        v40 = v22 + 1;
        v41 = (*(a2 + 16) + 4 * v38);
        do
        {
          v42 = *v41++;
          v43 = a12[v42];
          v44 = v22 == v43 || v43 >= a3;
          if (!v44 && v22 >= a7[v43])
          {
            *(v18 + 4 * v23++) = v43;
            a7[v43] = v40;
          }

          --v39;
        }

        while (v39);
      }

      v22 = v40;
    }

    while (v40 != a3);
  }

  *(a6 + 8 * v20) = v23;
}

uint64_t sub_23670BE58(int a1, int a2, uint64_t a3, int a4)
{
  v4 = a4 * a2;
  if (a4 * a1 > a4 * a2)
  {
    v4 = a4 * a1;
  }

  return 4 * ((a4 * a4) * a3 + 5 * a4 * a2 + a4 * a2 + 2 * a4 * a1) + 8 * (a4 * a1 + (2 * a4 * a2) + v4 + (a4 * a4) * a3 + a4 * a2 + 1 + a4 * a1 + 2 * a4 * a2) + 112;
}

uint64_t sub_23670BEB4(uint64_t a1, char *__b, double *a3, double *a4, uint64_t *a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = *(a1 + 28);
  v9 = (*a1 * v8);
  v10 = (*(a1 + 4) * v8);
  v11 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v11;
  v15 = *(a1 + 32);
  v12 = sub_23670BF70(0, v14, __b, v9, a3, v9, a4, v10, a5, a6);
  if (v9)
  {
    do
    {
      *v7 = exp(*v7);
      ++v7;
      --v9;
    }

    while (v9);
  }

  if (v10)
  {
    do
    {
      *v6 = exp(*v6);
      ++v6;
      --v10;
    }

    while (v10);
  }

  return v12;
}

uint64_t sub_23670BF70(int a1, signed int *a2, char *__b, uint64_t a4, double *a5, unint64_t a6, double *a7, unint64_t a8, uint64_t *a9, uint64_t a10)
{
  v11 = a2;
  v13 = a9;
  v14 = *(a2 + 28);
  v15 = a2[1];
  v16 = v15 * v14;
  v264 = *(a2 + 1);
  v261 = (v14 * v14);
  v17 = (*(v264 + 8 * v15) * v261) << a1;
  v240 = v15 * v14 + 1;
  v18 = *a2 * v14;
  v19 = &a9[v240];
  v20 = (4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v19 + v20;
  v22 = v17;
  v266 = (v19 + v20 + 8 * v17);
  v238 = v18 & 0x1FFFFFFFFFFFFFFFLL;
  v254 = &v266[(20 * v15 * v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  v23 = v15 * v14;
  v234 = 8 * v18;
  v252 = &v254[v234];
  v24 = &v254[8 * v23 + v234];
  v243 = v17;
  v247 = (20 * v15 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v237 = v23 & 0x1FFFFFFFFFFFFFFFLL;
  v258 = (v24 + 8 * v23);
  v25 = &a9[v23];
  v263 = v23;
  v251 = 8 * v240;
  v269 = __b;
  v250 = v20;
  v248 = v18;
  if (v15 * v14 < 1)
  {
    *v25 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_65;
    }

    v235 = v15 * v14;
    v245 = v17 & 0x1FFFFFFFFFFFFFFFLL;
    v52 = 0;
  }

  else
  {
    v232 = &a9[v16];
    v235 = v15 * v14;
    v245 = v17 & 0x1FFFFFFFFFFFFFFFLL;
    v26 = 0;
    v27 = 0;
    v259 = &a9[v240] + v20;
    v28 = 0;
    do
    {
      a9[v26] = v27;
      v29 = (v264 + 8 * (v26 / v14));
      v30 = *v29;
      v31 = v29[1];
      if (v30 < v31)
      {
        v32 = *(v11 + 2);
        v28 = v27;
        do
        {
          v33 = *(v32 + 4 * v30);
          if ((v33 & 0x80000000) == 0)
          {
            v34 = v33 < (v26 / v14) ? a1 : 0;
            if ((v34 & 1) == 0 && v33 < *v11)
            {
              v35 = v26 % v14;
              v36 = v35 * v14;
              if (!a1)
              {
                v35 = 0;
              }

              v37 = *(v11 + 4) + 8 * v30 * v261 + 8 * v36;
              v38 = v35 + v33 * v14;
              do
              {
                v39 = *(v37 + 8 * v35);
                if (v39 != 0.0)
                {
                  *(v19 + 4 * v28) = v38;
                  *(v21 + 8 * v28++) = fabs(v39);
                }

                ++v35;
                ++v38;
              }

              while (v35 < v14);
            }
          }

          ++v30;
        }

        while (v30 != v31);
      }

      v40 = v28 - v27;
      if (v28 > v27)
      {
        v41 = &v259[8 * v27];
        do
        {
          *v41 = log(*v41);
          ++v41;
          --v40;
        }

        while (v40);
      }

      ++v26;
      v27 = v28;
      v23 = v263;
      __b = v269;
      v11 = a2;
    }

    while (v26 != v263);
    *v232 = v28;
    v13 = a9;
    v18 = v248;
    if ((a1 & 1) == 0)
    {
      goto LABEL_49;
    }

    v42 = v28 + 1;
    bzero(v266, 4 * v263);
    v43 = 0;
    v44 = 0;
    v45 = *a9;
    do
    {
      v46 = v43 + 1;
      v47 = a9[v43 + 1];
      *&v266[4 * v43] += v47 - v45;
      v48 = v47 - v45;
      if (v47 > v45)
      {
        v49 = &a9[v251 / 8] + v45;
        do
        {
          v51 = *v49++;
          v50 = v51;
          if (v43 == v51)
          {
            ++v44;
          }

          else
          {
            ++*&v266[4 * v50];
          }

          --v48;
        }

        while (v48);
      }

      v45 = v47;
      ++v43;
    }

    while (v46 != v263);
    v52 = 2 * v28 - v44;
    v53 = v52 + 1;
    v54 = a9;
    v55 = v263;
    __b = v269;
    v11 = a2;
    do
    {
      v56 = v55 - 1;
      v57 = v54[v55 - 1] + 1;
      v58 = v53;
      if (v42 > v57)
      {
        v59 = 0;
        do
        {
          *(&a9[v251 / 8 - 2 + v53 + v59] + v250) = *(&a9[v251 / 8 - 2 + v42 + v59] + v250);
          *(&a9[v251 / 8 - 1] + v53 + v59) = *(&a9[v251 / 8 - 1] + v42 + v59);
          --v59;
        }

        while (v42 + v59 > v57);
        v58 = v53 + v59;
      }

      v54 = a9;
      a9[v56] = v58 - 1;
      v53 -= *&v266[4 * v56];
      *&v266[4 * v56] = v42 - v57;
      v42 = v57;
      v124 = v55-- <= 1;
    }

    while (!v124);
    v60 = v263;
    v13 = a9;
    v18 = v248;
    do
    {
      v61 = v60--;
      v62 = *&v266[4 * v60];
      if (v62 >= 1)
      {
        v63 = a9[v60];
        v64 = v63 + v62;
        do
        {
          v65 = *(v19 + 4 * v63);
          if (v60 != v65)
          {
            v66 = a9[v65] - 1;
            a9[v65] = v66;
            *(v21 + 8 * v66) = *(&a9[v63] + v250 + v251);
            *(v19 + 4 * v66) = v60;
          }

          ++v63;
        }

        while (v63 < v64);
      }
    }

    while (v61 >= 2);
    v25 = v232;
  }

  *v25 = v52;
LABEL_49:
  v22 = v245;
  v16 = v235;
  if (v23 >= 1)
  {
    v67 = 0;
    v68 = *v13;
    do
    {
      v69 = v67 + 1;
      v70 = v13[v67 + 1];
      v71 = v70 - v68;
      if (v70 - v68 == -1)
      {
        v72 = v245 - v68;
      }

      else
      {
        v72 = v70 - v68;
      }

      if (v72)
      {
        v73 = (v21 + 8 * v68);
        v74 = *v73;
        v75 = 8 * v72;
        do
        {
          v76 = *v73++;
          v77 = v76;
          if (v74 < v76)
          {
            v74 = v77;
          }

          v75 -= 8;
        }

        while (v75);
      }

      else
      {
        v74 = NAN;
      }

      *(v24 + 8 * v67) = v74;
      if (v70 > v68)
      {
        v78 = (&v13[v68] + v250 + v251);
        do
        {
          *v78 = v74 - *v78;
          ++v78;
          --v71;
        }

        while (v71);
      }

      v68 = v70;
      ++v67;
    }

    while (v69 != v23);
  }

LABEL_65:
  v236 = 8 * v16;
  v246 = v243;
  v79 = sub_23670D0B4(v18, v23, v13, v240, v19, v243, v21, v22, __b, a4, v254, v238, v252, v237, v258);
  if (!a1 || v79 == v23)
  {
    v244 = v79;
    v139 = v248;
    if (v248 >= 1)
    {
      v140 = (&v13[v246] + v250 + v247 + v251);
      v141 = a5;
      do
      {
        v142 = *v140++;
        *v141++ = v142;
        --v139;
      }

      while (v139);
    }

    v143 = a7;
    v144 = v269;
    if (v23 >= 1)
    {
      v145 = (&v13[v246] + v250 + v247 + v234 + v251);
      v146 = v23;
      v147 = a7;
      do
      {
        v148 = v145[v236 / 8];
        v149 = *v145++;
        *v147++ = v149 - v148;
        --v146;
      }

      while (v146);
    }

    v150 = *(v11 + 28);
    v265 = *v11;
    v151 = *v11 * v150;
    v152 = v11[1] * v150;
    if (v151 == v152)
    {
      v153 = a6;
      if (v151 != -1)
      {
        v153 = *v11 * *(v11 + 28);
      }

      v154 = 0.0;
      v155 = 0.0;
      if (v153)
      {
        v156 = 8 * v153;
        v157 = a5;
        do
        {
          v158 = *v157++;
          v155 = v155 + v158;
          v156 -= 8;
        }

        while (v156);
      }

      v159 = a8;
      if (v151 != -1)
      {
        v159 = *v11 * *(v11 + 28);
      }

      if (v159)
      {
        v160 = 8 * v159;
        v154 = 0.0;
        v161 = a7;
        do
        {
          v162 = *v161++;
          v154 = v154 + v162;
          v160 -= 8;
        }

        while (v160);
      }

      if (v151 >= 1)
      {
        v163 = (v155 / v151 - v154 / v151) * 0.5;
        v164 = v151;
        v165 = v151;
        do
        {
          *a5 = *a5 - v163;
          ++a5;
          --v165;
        }

        while (v165);
        do
        {
          *v143 = v163 + *v143;
          ++v143;
          --v164;
        }

        while (v164);
      }
    }

    else
    {
      v253 = *(v11 + 1);
      v268 = *(v11 + 2);
      v262 = v150 * v150;
      v260 = *(v11 + 4);
      v249 = v11[1] * v150;
      v272 = *(v11 + 28);
      if (v151 >= v152)
      {
        if (v152 < v151)
        {
          v242 = *v11 * *(v11 + 28);
          if (v151 <= 0)
          {
            v184 = (0.0 / v79 - 0.0 / v79) * 0.5;
          }

          else
          {
            v177 = 0.0;
            v178 = v269;
            v179 = a5;
            v180 = v151;
            v181 = 0.0;
            do
            {
              v183 = *v178;
              v178 += 4;
              v182 = v183;
              if (v183 != -1)
              {
                v181 = v181 + *v179;
                v177 = v177 + a7[v182];
              }

              ++v179;
              --v180;
            }

            while (v180);
            v184 = (v181 / v79 - v177 / v79) * 0.5;
            v185 = a5;
            v186 = v151;
            do
            {
              *v185 = *v185 - v184;
              ++v185;
              --v186;
            }

            while (v186);
          }

          v239 = v151;
          if (v152 <= 0)
          {
            bzero(v258, 8 * v151);
          }

          else
          {
            v210 = a7;
            v211 = v152;
            do
            {
              *v210 = v184 + *v210;
              ++v210;
              --v211;
            }

            while (v211);
            bzero(v258, 8 * v151);
            v212 = 0;
            if (v150 <= 1)
            {
              v213 = 1;
            }

            else
            {
              v213 = v150;
            }

            v256 = v213;
            do
            {
              v214 = v212 / v150;
              v215 = (v253 + 8 * v214);
              v216 = *v215;
              v217 = v215[1];
              if (*v215 < v217)
              {
                do
                {
                  v218 = *(v268 + 4 * v216);
                  if ((v218 & 0x80000000) == 0 && v218 < v265)
                  {
                    v219 = 0;
                    v220 = &v258[8 * v218 * v272];
                    v221 = v256;
                    do
                    {
                      v222 = fabs(*(v260 + 8 * v216 * v262 + 8 * (v212 - v214 * v272) * v272 + 8 * v219));
                      v223 = v222 * exp(a7[v212]);
                      if (*v220 >= v223)
                      {
                        v223 = *v220;
                      }

                      *v220++ = v223;
                      ++v219;
                      --v221;
                    }

                    while (v221);
                  }

                  ++v216;
                }

                while (v216 != v217);
              }

              ++v212;
              v150 = v272;
            }

            while (v212 != v152);
          }

          if (v242 >= 1)
          {
            v224 = (&a9[2 * v263 + v246] + v250 + v247 + v234 + v251);
            v225 = v269;
            v226 = v239;
            do
            {
              v227 = *v225;
              v225 += 4;
              if (v227 == -1)
              {
                v228 = 0.0;
                if (*v224 != 0.0)
                {
                  v229 = v225;
                  v228 = log(1.0 / *v224);
                  v225 = v229;
                }

                *a5 = v228;
              }

              ++a5;
              ++v224;
              --v226;
            }

            while (v226);
          }
        }
      }

      else
      {
        v241 = *v11 * *(v11 + 28);
        if (v151 <= 0)
        {
          v174 = (0.0 / v79 - 0.0 / v79) * 0.5;
        }

        else
        {
          v166 = v151;
          v167 = 0.0;
          v168 = v269;
          v169 = a5;
          v170 = v151;
          v171 = 0.0;
          do
          {
            v173 = *v168;
            v168 += 4;
            v172 = v173;
            if (v173 != -1)
            {
              v167 = v167 + *v169;
              v171 = v171 + a7[v172];
            }

            ++v169;
            --v170;
          }

          while (v170);
          v174 = (v167 / v79 - v171 / v79) * 0.5;
          v175 = a5;
          do
          {
            *v175 = *v175 - v174;
            ++v175;
            --v166;
          }

          while (v166);
        }

        if (v152 >= 1)
        {
          v187 = a7;
          v188 = v152;
          do
          {
            *v187 = v174 + *v187;
            ++v187;
            --v188;
          }

          while (v188);
          v189 = 0;
          if (v150 <= 1)
          {
            v190 = 1;
          }

          else
          {
            v190 = v150;
          }

          do
          {
            v191 = (v253 + 8 * (v189 / v150));
            v193 = *v191;
            v192 = v191[1];
            v194 = 0.0;
            if (*v191 < v192)
            {
              v195 = 0.0;
              v196 = v189 % v150 * v150;
              do
              {
                v197 = *(v268 + 4 * v193);
                if ((v197 & 0x80000000) == 0 && v197 < v265)
                {
                  v198 = 0;
                  v199 = &a5[v197 * v272];
                  v200 = v190;
                  do
                  {
                    v201 = fabs(*(v260 + 8 * v193 * v262 + 8 * v196 + 8 * v198));
                    v202 = *v199++;
                    v203 = v201 * exp(v202);
                    if (v195 < v203)
                    {
                      v195 = v203;
                    }

                    ++v198;
                    --v200;
                  }

                  while (v200);
                }

                ++v193;
                v23 = v263;
                v144 = v269;
              }

              while (v193 != v192);
              v194 = 0.0;
              v152 = v249;
              v150 = v272;
              if (v195 != 0.0)
              {
                v194 = log(1.0 / v195);
                v144 = v269;
              }
            }

            *&v258[8 * v189++] = v194;
          }

          while (v189 != v152);
        }

        v204 = a7;
        if (v241 >= 1)
        {
          v205 = v241;
          do
          {
            v207 = *v144;
            v144 += 4;
            v206 = v207;
            if (v207 != -1)
            {
              *&v258[8 * v206] = a7[v206];
            }

            --v205;
          }

          while (v205);
        }

        if (v152 >= 1)
        {
          v208 = (&a9[2 * v23 + v246] + v250 + v247 + v234 + v251);
          do
          {
            v209 = *v208++;
            *v204++ = v209;
            --v152;
          }

          while (v152);
        }
      }
    }
  }

  else
  {
    v80 = 2 * v23;
    if (v23 == -1)
    {
      v81 = 0x3FFFFFFFFFFFFFFDLL;
    }

    else
    {
      v81 = v23;
    }

    v82 = &v266[4 * v80];
    if (v248 >= 1)
    {
      v83 = 0;
      v84 = 0;
      v85 = v79 + 1;
      v86 = &v13[v246] + v250 + v251;
      do
      {
        if (*&v269[4 * v83] > -2)
        {
          *&v86[4 * v83] = v84;
          *&v266[4 * v23 + 4 * v84++] = v83;
        }

        else
        {
          *&v86[4 * v83] = ~v85++;
        }

        ++v83;
      }

      while (v248 != v83);
    }

    *v13 = 0;
    if (v23 <= 0)
    {
      return sub_23670D0B4(0, 0, v13, v240, v19, v243, v21, v22, v82, v81, v254, v238, v252, v237, v258);
    }

    v87 = v22;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = v80;
    do
    {
      v93 = v88 + 1;
      v94 = v13[v88 + 1];
      if (*&v269[4 * v88] >= -1)
      {
        v95 = v94 - v91;
        if (v94 > v91)
        {
          v96 = &v13[v251 / 8] + v91;
          v97 = (&v13[v91] + v250 + v251);
          do
          {
            v99 = *v96++;
            v98 = v99;
            if (*&v269[4 * v99] >= -1)
            {
              *(v19 + 4 * v89) = *&v266[4 * v98];
              *(v21 + 8 * v89++) = *v97;
            }

            ++v97;
            --v95;
          }

          while (v95);
        }

        v13[++v90] = v89;
      }

      v88 = v93;
      v91 = v94;
    }

    while (v93 != v23);
    v244 = sub_23670D0B4(v90, v90, v13, v240, v19, v243, v21, v87, v82, v81, v254, v238, v252, v237, v258);
    v100 = (&v13[v246] + v250 + v251);
    v101 = (&v13[v246] + v250 + v247 + v236 + v234 + v251);
    v102 = v23;
    v103 = a5;
    do
    {
      v105 = *v100++;
      v104 = v105;
      if (v105 >= -1)
      {
        v106 = (*&v254[8 * v104] + v252[v104] - *v101) * 0.5;
      }

      else
      {
        v106 = -INFINITY;
      }

      *v103++ = v106;
      ++v101;
      --v102;
    }

    while (v102);
    memset_pattern16(v269, &unk_23681FAD0, 4 * v23);
    v107 = v269;
    if (v90 > 0)
    {
      v108 = v90;
      v109 = v246 * 8 + v250 + v251;
      v110 = (v13 + 4 * v92 + v109);
      v111 = (v13 + 4 * v23 + v109);
      do
      {
        v113 = *v110++;
        v112 = v113;
        v114 = *v111++;
        *&v269[4 * v114] = v112;
        --v108;
      }

      while (v108);
    }

    v115 = (&v13[v246] + v250 + v251);
    v116 = v23;
    do
    {
      if (*v107 == -2)
      {
        *v107 = *v115;
      }

      v107 += 4;
      ++v115;
      --v116;
    }

    while (v116);
    v117 = (&v13[v246] + v250 + v247 + v236 + v234 + v251);
    v118 = a5;
    do
    {
      v119 = *v118++;
      *v117++ = v119;
      --v23;
    }

    while (v23);
    v120 = 0;
    v255 = *(a2 + 1);
    do
    {
      v121 = (v255 + 8 * (v120 / v14));
      v122 = *v121;
      v270 = v121[1];
      if (*v121 < v270)
      {
        v267 = *(a2 + 2);
        do
        {
          v123 = *(v267 + 4 * v122);
          if ((v123 & 0x80000000) == 0)
          {
            v124 = v123 >= (v120 / v14) && v123 < *a2;
            if (v124)
            {
              v125 = (v123 * v14);
              v126 = *(a2 + 4) + 8 * v122 * v261 + 8 * v120 % v14 * v14;
              v127 = v120 % v14;
              do
              {
                v128 = v127 + v125;
                v129 = *(v126 + 8 * v127);
                if (*(v24 + 8 * v120) == -INFINITY && *(v24 + 8 * v128) != -INFINITY)
                {
                  v130 = log(fabs(v129)) + a5[v128];
                  if (a5[v120] >= v130)
                  {
                    v130 = a5[v120];
                  }

                  a5[v120] = v130;
                }

                if (*(v24 + 8 * v128) == -INFINITY && *(v24 + 8 * v120) != -INFINITY)
                {
                  v131 = log(fabs(v129)) + a5[v120];
                  if (a5[v128] >= v131)
                  {
                    v131 = a5[v128];
                  }

                  a5[v128] = v131;
                }

                ++v127;
              }

              while (v127 < v14);
            }
          }

          ++v122;
        }

        while (v122 != v270);
      }

      ++v120;
      v132 = v263;
    }

    while (v120 != v263);
    v133 = a7;
    v134 = (&a9[v246] + v250 + v247 + v236 + v234 + v251);
    v135 = v263;
    v136 = a5;
    do
    {
      if (*v134 == -INFINITY)
      {
        if (*v136 == -INFINITY)
        {
          v137 = 0.0;
        }

        else
        {
          v137 = -*v136;
        }

        *v136 = v137;
      }

      ++v134;
      ++v136;
      --v135;
    }

    while (v135);
    do
    {
      v138 = *a5++;
      *v133++ = v138;
      --v132;
    }

    while (v132);
  }

  return v244;
}

uint64_t sub_23670CFEC(uint64_t a1, char *__b, long double *a3, double *a4, uint64_t a5)
{
  v7 = *(a1 + 4) * *(a1 + 28);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  v13 = *(a1 + 32);
  v9 = sub_23670BF70(1, v12, __b, v7, a4, v7 & 0x1FFFFFFFFFFFFFFFLL, &a4[v7], v7 & 0x1FFFFFFFFFFFFFFFLL, &a4[v7 + v7], a5 - 16 * v7);
  if (v7)
  {
    v10 = v7;
    do
    {
      *a3++ = exp((*a4 + a4[v10]) * 0.5);
      ++a4;
      --v7;
    }

    while (v7);
  }

  return v9;
}

uint64_t sub_23670D0B4(int a1, int a2, uint64_t *a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, char *__b, uint64_t a10, void *a11, uint64_t a12, double *a13, uint64_t a14, char *a15)
{
  v17 = a1;
  v18 = a15;
  v19 = &a15[8 * a2];
  v20 = (4 * a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = &v19[8 * a2];
  v21 = &v143[v20];
  v135 = 4 * a1 + 7;
  v146 = v135 & 0xFFFFFFFFFFFFFFF8;
  if (a1 <= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a1;
  }

  v138 = v22;
  if (a1 >= 1)
  {
    memset(__b, 255, 4 * a1);
  }

  v144 = &v21[v146];
  v23 = a11;
  if (a2 >= 1)
  {
    memset(a15, 255, 8 * a2);
  }

  v128 = a2;
  if (v17 >= 1)
  {
    memset_pattern16(a11, &unk_23681FBA0, 8 * v17);
    bzero(v144, 8 * v17);
  }

  v24 = &v144[8 * v17];
  v25 = __b;
  v26 = a7;
  if (a2 >= 1)
  {
    v27 = 0;
    v28 = *a3;
    do
    {
      v29 = v27++;
      v30 = a3[v27];
      while (v28 < v30)
      {
        v31 = *(a5 + 4 * v28);
        v32 = *(a7 + 8 * v28);
        if (v32 <= *&a11[v31])
        {
          *&a11[v31] = v32;
          *&__b[4 * v31] = v29;
          *&v144[8 * v31] = v28;
          v30 = a3[v27];
        }

        ++v28;
      }

      v28 = v30;
    }

    while (v27 != a2);
  }

  v33 = (v24 + v146);
  v145 = a3 + 1;
  if (v17 < 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0;
    v35 = v17;
    v36 = __b;
    v37 = &v21[v146];
    do
    {
      v38 = *v36;
      if (*v36 != -1)
      {
        *v36 = -1;
        if (*&a15[8 * v38] == -1 && (v17 < 0x33 || v145[v38] - a3[v38] <= (v17 / 0xAuLL)))
        {
          v34 = (v34 + 1);
          *v36 = v38;
          *&a15[8 * v38] = *v37;
        }
      }

      v37 += 8;
      ++v36;
      --v35;
    }

    while (v35);
  }

  v140 = v20;
  v142 = v19;
  if (v128 >= v17)
  {
    v39 = v17;
  }

  else
  {
    v39 = v128;
  }

  v133 = v39;
  if (v128 >= 1 && v34 != v39)
  {
    v40 = v34;
    bzero(v33, 8 * v128);
    v41 = a3;
    v42 = v19;
    v43 = v128;
    do
    {
      v44 = *v41++;
      *v42 = v44;
      v42 += 8;
      --v43;
    }

    while (v43);
    v45 = 0;
    v25 = __b;
    v26 = a7;
    v34 = v40;
    do
    {
      if (*&a15[8 * v45] == -1)
      {
        v46 = a3[v45];
        v47 = v145[v45];
        if (v46 < v47)
        {
          v48 = *(a5 + 4 * v46);
          v49 = *(a7 + 8 * v46) - *&a11[v48];
          v50 = v46 + 1;
          if (v46 + 1 < v47)
          {
            do
            {
              v51 = *(a5 + 4 * v50);
              v52 = *(a7 + 8 * v50) - *&a11[v51];
              if (v52 <= v49)
              {
                v53 = v52 != v49 || v52 == INFINITY;
                if (v53 || *&__b[4 * v51] == -1 && *&__b[4 * v48] != -1)
                {
                  v48 = *(a5 + 4 * v50);
                  v49 = *(a7 + 8 * v50) - *&a11[v51];
                  v46 = v50;
                }
              }

              ++v50;
            }

            while (v47 != v50);
          }

          *(v33 + v45) = v49;
          v54 = &__b[4 * v48];
          if (*v54 == -1)
          {
            v60 = v19;
LABEL_62:
            v34 = (v34 + 1);
            *&a15[8 * v45] = v46;
            *v54 = v45;
            *&v60[8 * v45] = v46 + 1;
          }

          else
          {
            while (v46 < v47)
            {
              v55 = *(a5 + 4 * v46);
              if (*(a7 + 8 * v46) - *&a11[v55] <= v49)
              {
                v56 = *&__b[4 * v55];
                v57 = *&v19[8 * v56];
                v58 = v145[v56];
                if (v57 < v58)
                {
                  while (1)
                  {
                    v59 = *(a5 + 4 * v57);
                    if ((*&__b[4 * v59] & 0x80000000) != 0 && *(a7 + 8 * v57) - *&a11[v59] <= *(v33 + v56))
                    {
                      break;
                    }

                    if (v58 == ++v57)
                    {
                      goto LABEL_58;
                    }
                  }

                  *&a15[8 * v56] = v57;
                  *&__b[4 * v59] = v56;
                  v60 = v19;
                  *&v19[8 * v56] = v57 + 1;
                  v54 = &__b[4 * v55];
                  goto LABEL_62;
                }

LABEL_58:
                *&v19[8 * v56] = v58;
                v47 = v145[v45];
              }

              ++v46;
            }
          }
        }
      }

      ++v45;
    }

    while (v45 != v128);
  }

  v61 = v133;
  if (v34 == v133)
  {
    goto LABEL_65;
  }

  v130 = v17;
  if (v17 >= 1)
  {
    v70 = 8 * v17;
    v71 = &a15[16 * v128];
    v72 = &v71[((2 * v135) & 0x7FFFFFFF0) + v140 + v70];
    v136 = v34;
    memset_pattern16(v72, &unk_23681FBA0, 8 * v130);
    v73 = v146 + v140 + v70;
    v17 = v130;
    v74 = &v71[v73];
    v19 = v142;
    memset(v74, 255, 4 * v130);
    v34 = v136;
    v26 = a7;
    v25 = __b;
  }

  if (v128 >= 1)
  {
    v75 = 0;
    v131 = v17;
    v147 = v138;
    v76 = v128;
    v127 = &a15[16 * v128 + v140];
    v137 = -1;
    v139 = -1;
    v61 = v34;
    v77 = a3;
    while (1)
    {
      if (v18[v75] != -1)
      {
        goto LABEL_166;
      }

      *&v143[4 * v75] = -1;
      v78 = v77[v75];
      v79 = v145[v75];
      if (v78 >= v79)
      {
        LODWORD(v89) = 0;
        v81 = INFINITY;
        v82 = INFINITY;
      }

      else
      {
        v80 = 0;
        v81 = INFINITY;
        v82 = INFINITY;
        v83 = v137;
        v84 = v139;
        do
        {
          v85 = *(a5 + 4 * v78);
          v86 = *&a11[v85];
          v87 = *(v26 + 8 * v78) - v86;
          if (v87 < v82)
          {
            if (v25[v85] == -1)
            {
              v82 = *(v26 + 8 * v78) - v86;
              v84 = v75;
              v83 = v78;
            }

            else
            {
              if (v87 < v81)
              {
                v81 = *(v26 + 8 * v78) - v86;
              }

              *(v33 + v85) = v87;
              *&v144[8 * v80++] = v78;
              v79 = v145[v75];
            }
          }

          ++v78;
        }

        while (v78 < v79);
        v139 = v84;
        v137 = v83;
        if (v80 >= 1)
        {
          v88 = 0;
          v89 = 0;
          v90 = v17;
          do
          {
            v91 = *&v144[8 * v88];
            v92 = *(a5 + 4 * v91);
            v93 = *(v33 + v92);
            if (v82 <= v93)
            {
              *(v33 + v92) = 0x7FF0000000000000;
            }

            else
            {
              if (v93 <= v81)
              {
                *&v21[4 * --v90] = v92;
                *(v24 + 4 * v92) = v90;
                v94 = v89;
              }

              else
              {
                v94 = (v89 + 1);
                *(v24 + 4 * v92) = v89;
                if (v89 < 1)
                {
                  *&v21[4 * v89] = v92;
                }

                else
                {
                  do
                  {
                    v95 = *&v21[4 * ((v89 + 1) >> 1) - 4];
                    if (v93 >= *(v33 + v95))
                    {
                      goto LABEL_100;
                    }

                    *&v21[4 * v89] = v95;
                    *(v24 + 4 * v95) = v89;
                    v111 = v89 > 2;
                    LODWORD(v89) = ((v89 + 1) >> 1) - 1;
                  }

                  while (v111);
                  LODWORD(v89) = 0;
LABEL_100:
                  *&v21[4 * v89] = v92;
                  *(v24 + 4 * v92) = v89;
                }
              }

              v96 = v25[v92];
              *&v19[8 * v96] = v91;
              *&v143[4 * v96] = v75;
              v89 = v94;
            }

            ++v88;
          }

          while (v88 != v80);
          goto LABEL_110;
        }

        LODWORD(v89) = 0;
      }

      v90 = v17;
LABEL_110:
      v129 = v75;
      v149[0] = v89;
      v134 = v61;
      if (v61 < 1)
      {
        LODWORD(v97) = v130;
        goto LABEL_150;
      }

      v141 = 0;
      v97 = v131;
      while (v90 != v97)
      {
LABEL_119:
        v100 = v97 - 1;
        v101 = *&v21[4 * v97 - 4];
        v102 = *(v33 + v101);
        if (v102 >= v82)
        {
          goto LABEL_149;
        }

        v103 = v25[v101];
        v104 = a3[v103];
        v105 = v145[v103];
        if (v104 < v105)
        {
          v106 = v102 - *(v26 + 8 * *&a15[8 * v103]) + *&a11[v101];
          do
          {
            v107 = *(a5 + 4 * v104);
            v108 = *(v24 + 4 * v107);
            if (v100 > v108)
            {
              v109 = *&a11[v107];
              v110 = v106 + *(v26 + 8 * v104) - v109;
              if (v110 < v82)
              {
                if (v25[v107] == -1)
                {
                  v82 = v106 + *(v26 + 8 * v104) - v109;
                  v139 = v103;
                  v137 = v104;
                }

                else
                {
                  v111 = *(v33 + v107) > v110 && v108 < v90;
                  if (v111)
                  {
                    *(v33 + v107) = v110;
                    if (v110 <= v81)
                    {
                      if (v108 != -1)
                      {
                        sub_23670DB6C(v108, v149, v21, v131 & 0x3FFFFFFFFFFFFFFFLL, v33, v147 & 0x1FFFFFFFFFFFFFFFLL, v24);
                        v26 = a7;
                        v25 = __b;
                      }

                      *&v21[4 * --v90] = v107;
                      *(v24 + 4 * v107) = v90;
                    }

                    else
                    {
                      if (v108 == -1)
                      {
                        LODWORD(v108) = v149[0]++;
                        *(v24 + 4 * v107) = v108;
                      }

                      if (v108 < 1)
                      {
                        *&v21[4 * v108] = v107;
                      }

                      else
                      {
                        while (1)
                        {
                          v112 = *&v21[4 * ((v108 + 1) >> 1) - 4];
                          if (v110 >= *(v33 + v112))
                          {
                            break;
                          }

                          *&v21[4 * v108] = v112;
                          *(v24 + 4 * v112) = v108;
                          v111 = v108 > 2;
                          LODWORD(v108) = ((v108 + 1) >> 1) - 1;
                          if (!v111)
                          {
                            LODWORD(v108) = 0;
                            break;
                          }
                        }

                        *&v21[4 * v108] = v107;
                        *(v24 + 4 * v107) = v108;
                      }
                    }

                    v113 = v25[v107];
                    *&v142[8 * v113] = v104;
                    *&v143[4 * v113] = v103;
                    v105 = v145[v103];
                  }
                }
              }
            }

            ++v104;
          }

          while (v104 < v105);
        }

        v97 = v100;
        if (++v141 >= v134)
        {
          LODWORD(v97) = v100;
LABEL_149:
          v19 = v142;
          goto LABEL_150;
        }
      }

      if (!v149[0])
      {
        LODWORD(v97) = v90;
        goto LABEL_149;
      }

      v81 = *(v33 + *v21);
      v19 = v142;
      if (v81 < v82)
      {
        if (v149[0] >= 1)
        {
          v98 = &v127[4 * v90 - 4];
          do
          {
            v99 = *v21;
            if (*(v33 + *v21) > v81)
            {
              break;
            }

            sub_23670DB6C(0, v149, v21, v131 & 0x3FFFFFFFFFFFFFFFLL, v33, v147 & 0x1FFFFFFFFFFFFFFFLL, v24);
            v26 = a7;
            v25 = __b;
            --v90;
            *v98 = v99;
            v98 -= 4;
            *(v24 + 4 * v99) = v90;
          }

          while (v149[0] > 0);
        }

        goto LABEL_119;
      }

      LODWORD(v97) = v90;
LABEL_150:
      if (v82 == INFINITY)
      {
        v77 = a3;
        v61 = v134;
      }

      else
      {
        v25[*(a5 + 4 * v137)] = v139;
        *&a15[8 * v139] = v137;
        if ((v134 & 0x80000000) == 0)
        {
          v114 = v134 + 1;
          v115 = v139;
          do
          {
            v116 = *&v143[4 * v115];
            if (v116 == -1)
            {
              break;
            }

            v117 = *&v19[8 * v115];
            v25[*(a5 + 4 * v117)] = v116;
            *&a15[8 * v116] = v117;
            v115 = v116;
            --v114;
          }

          while (v114);
        }

        if (v97 < v130)
        {
          v118 = &v127[4 * v97];
          v119 = v131 - v97;
          do
          {
            v120 = *v118;
            v118 += 4;
            *&a11[v120] = *&a11[v120] + *(v33 + v120) - v82;
            --v119;
          }

          while (v119);
        }

        v61 = v134 + 1;
        v77 = a3;
      }

      v75 = v129;
      if (v90 < v130)
      {
        v121 = &v127[4 * v90];
        v122 = v131 - v90;
        do
        {
          v123 = *v121;
          v121 += 4;
          *(v33 + v123) = 0x7FF0000000000000;
          *(v24 + 4 * v123) = -1;
          --v122;
        }

        while (v122);
      }

      v124 = v149[0];
      v125 = v21;
      if (v149[0] >= 1)
      {
        do
        {
          v126 = *v125;
          v125 += 4;
          *(v33 + v126) = 0x7FF0000000000000;
          *(v24 + 4 * v126) = -1;
          --v124;
        }

        while (v124);
      }

      v17 = v130;
      v18 = a15;
      v76 = v128;
LABEL_166:
      if (++v75 == v76)
      {
LABEL_65:
        if (v128 >= 1)
        {
          v63 = v128;
          do
          {
            v65 = *v18++;
            v64 = v65;
            if (v65 == -1)
            {
              v66 = 0.0;
            }

            else
            {
              v66 = *(v26 + 8 * v64) - *&a11[*(a5 + 4 * v64)];
            }

            *a13++ = v66;
            --v63;
          }

          while (v63);
        }

        v34 = v61;
        break;
      }
    }
  }

  if (v17 >= 1)
  {
    v67 = v17;
    do
    {
      v68 = *v25++;
      if (v68 == -1)
      {
        *v23 = 0;
      }

      ++v23;
      --v67;
    }

    while (v67);
  }

  return v34;
}

uint64_t sub_23670DB6C(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2 - 1;
  if (v7 == result)
  {
    *a2 = result;
    return result;
  }

  *a2 = v7;
  v8 = *(a3 + 4 * v7);
  v9 = *(a5 + 8 * v8);
  if (result < 1)
  {
    *(a3 + 4 * result) = v8;
    v14 = (a7 + 4 * v8);
    *v14 = result;
LABEL_12:
    v15 = 2 * result;
    v16 = *a2 - 1;
    if (2 * result < v16)
    {
      while (1)
      {
        v17 = v15 | 1;
        v18 = *(a5 + 8 * *(a3 + 4 * v17));
        if (v17 < v16)
        {
          v19 = v15 + 2;
          v20 = *(a5 + 8 * *(a3 + 4 * v19));
          if (v18 <= v20)
          {
            v17 = v17;
          }

          else
          {
            v17 = v19;
          }

          if (v18 > v20)
          {
            v18 = *(a5 + 8 * *(a3 + 4 * v19));
          }
        }

        if (v9 <= v18)
        {
          break;
        }

        v21 = *(a3 + 4 * v17);
        *(a3 + 4 * result) = v21;
        *(a7 + 4 * v21) = result;
        v15 = 2 * v17;
        v16 = *a2 - 1;
        result = v17;
        if (2 * v17 >= v16)
        {
          goto LABEL_24;
        }
      }
    }

    LODWORD(v17) = result;
LABEL_24:
    *(a3 + 4 * v17) = v8;
    *v14 = v17;
    return result;
  }

  v10 = result;
  while (1)
  {
    v11 = (v10 + 1) / 2 - 1;
    v12 = *(a3 + 4 * v11);
    if (v9 >= *(a5 + 8 * v12))
    {
      break;
    }

    *(a3 + 4 * v10) = v12;
    *(a7 + 4 * v12) = v10;
    v13 = v10 <= 2;
    v10 = (v10 + 1) / 2 - 1;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v11 = v10;
LABEL_11:
  *(a3 + 4 * v11) = v8;
  v14 = (a7 + 4 * v8);
  *v14 = v11;
  if (v11 == result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_23670DC88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = 126 - 2 * __clz(a2);
  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return sub_23670DEC4(a1, (a1 + 4 * a2), &v6, v4, 1);
}

uint64_t *sub_23670DCD0(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v8 = a1;
  if (a1 >= 1)
  {
    v9 = 0;
    v10 = vdupq_n_s64(a1 - 1);
    v11 = xmmword_23681F920;
    v12 = a4 + 1;
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v10, v11));
      if (v14.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v14.i8[4])
      {
        *v12 = v9 + 1;
      }

      v9 += 2;
      v11 = vaddq_s64(v11, v13);
      v12 += 2;
    }

    while (((a1 + 1) & 0xFFFFFFFE) != v9);
  }

  v28 = a3;
  v15 = 126 - 2 * __clz(a1);
  if (a1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_23670EDF8(a4, &a4[a1], &v28, v16, 1);
  if (a1 < 1)
  {
    v28 = v5;
    return sub_23670EDF8(v4, &v4[a1], &v28, v16, 1);
  }

  else
  {
    v17 = 0;
    do
    {
      v4[v17] = *(a2 + 8 * v4[v17]);
      ++v17;
    }

    while (a1 != v17);
    v18 = 0;
    do
    {
      *(a2 + v18 * 8) = v4[v18];
      ++v18;
    }

    while (v8 != v18);
    v19 = 0;
    v20 = xmmword_23681F920;
    v21 = vdupq_n_s64(v8 - 1);
    v22 = vdupq_n_s64(2uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v21, v20));
      if (v23.i8[0])
      {
        v4[v19] = v19;
      }

      if (v23.i8[4])
      {
        v4[v19 + 1] = v19 + 1;
      }

      v19 += 2;
      v20 = vaddq_s64(v20, v22);
    }

    while (((v8 + 1) & 0xFFFFFFFE) != v19);
    v28 = v5;
    result = sub_23670EDF8(v4, &v4[a1], &v28, v16, 1);
    v25 = v8;
    v26 = v4;
    do
    {
      *v26 = v5[*v26];
      ++v26;
      --v25;
    }

    while (v25);
    do
    {
      v27 = *v4++;
      *v5++ = v27;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_23670DEC4(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v81 = *(a2 - 1);
        v82 = *v10;
        if (*(*a3 + 4 * v81) >= *(*a3 + 4 * v82))
        {
          return result;
        }

        *v10 = v81;
LABEL_176:
        *(a2 - 1) = v82;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v88 = v10 + 1;
      v89 = v10[1];
      v90 = v10 + 2;
      v91 = v10[2];
      v92 = *v10;
      v93 = *a3;
      v94 = *(*a3 + 4 * v89);
      v95 = *v10;
      result = *(*a3 + 4 * v95);
      v96 = v91;
      v97 = *(*a3 + 4 * v91);
      if (v94 >= result)
      {
        if (v97 < v94)
        {
          *v88 = v91;
          *v90 = v89;
          result = *(v93 + 4 * v91);
          v95 = v89;
          v98 = v10;
          v99 = v10 + 1;
          v96 = v89;
          if (result < *(v93 + 4 * v92))
          {
            goto LABEL_178;
          }

LABEL_180:
          v144 = *(a2 - 1);
          if (*(v93 + 4 * v144) < *(v93 + 4 * v96))
          {
            *v90 = v144;
            *(a2 - 1) = v89;
            v145 = *v90;
            v146 = *v88;
            if (*(v93 + 4 * v145) < *(v93 + 4 * v146))
            {
              v10[1] = v145;
              v10[2] = v146;
              v147 = *v10;
              if (*(v93 + 4 * v145) < *(v93 + 4 * v147))
              {
                *v10 = v145;
                v10[1] = v147;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v97 < v94)
        {
          v98 = v10;
          v99 = v10 + 2;
          v89 = *v10;
          goto LABEL_178;
        }

        *v10 = v89;
        v10[1] = v92;
        result = *(v93 + 4 * v91);
        v98 = v10 + 1;
        v99 = v10 + 2;
        v89 = v92;
        if (result < *(v93 + 4 * v92))
        {
LABEL_178:
          *v98 = v91;
          *v99 = v92;
          v96 = v95;
          goto LABEL_180;
        }
      }

      v89 = v91;
      goto LABEL_180;
    }

    if (v11 == 5)
    {

      return sub_23670E92C(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v100 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v101 = 0;
            v102 = *a3;
            v103 = v10;
            do
            {
              v104 = v103[1];
              v105 = *v103;
              v103 = v100;
              if (*(v102 + 4 * v104) < *(v102 + 4 * v105))
              {
                v106 = v101;
                while (1)
                {
                  *(v10 + v106 + 4) = v105;
                  if (!v106)
                  {
                    break;
                  }

                  v105 = *(v10 + v106 - 4);
                  v106 -= 4;
                  if (*(v102 + 4 * v104) >= *(v102 + 4 * v105))
                  {
                    v107 = (v10 + v106 + 4);
                    goto LABEL_124;
                  }
                }

                v107 = v10;
LABEL_124:
                *v107 = v104;
              }

              v100 = v103 + 1;
              v101 += 4;
            }

            while (v103 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v139 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v140 = *a3;
          do
          {
            v141 = v9[1];
            v142 = *v9;
            v9 = v139;
            if (*(v140 + 4 * v141) < *(v140 + 4 * v142))
            {
              do
              {
                *v139 = v142;
                v142 = *(v139 - 2);
                --v139;
              }

              while (*(v140 + 4 * v141) < *(v140 + 4 * v142));
              *v139 = v141;
            }

            v139 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v108 = (v11 - 2) >> 1;
        v109 = *a3;
        v110 = v108;
        do
        {
          v111 = v110;
          if (v108 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v10[v112];
            v114 = *v113;
            if (2 * v111 + 2 < v11 && *(v109 + 4 * v114) < *(v109 + 4 * v113[1]))
            {
              v114 = v113[1];
              ++v113;
              v112 = 2 * v111 + 2;
            }

            v115 = &v10[v111];
            v116 = *v115;
            if (*(v109 + 4 * v114) >= *(v109 + 4 * *v115))
            {
              do
              {
                v117 = v113;
                *v115 = v114;
                if (v108 < v112)
                {
                  break;
                }

                v118 = (2 * v112) | 1;
                v113 = &v10[v118];
                v112 = 2 * v112 + 2;
                v114 = *v113;
                if (v112 >= v11)
                {
                  v112 = v118;
                }

                else if (*(v109 + 4 * v114) >= *(v109 + 4 * v113[1]))
                {
                  v112 = v118;
                }

                else
                {
                  v114 = v113[1];
                  ++v113;
                }

                v115 = v117;
              }

              while (*(v109 + 4 * v114) >= *(v109 + 4 * v116));
              *v117 = v116;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v119 = 0;
          v120 = *v10;
          v121 = *a3;
          v122 = v10;
          do
          {
            v123 = &v122[v119];
            v124 = v123 + 1;
            v125 = v123[1];
            result = 2 * v119;
            v126 = (2 * v119) | 1;
            v119 = 2 * v119 + 2;
            if (v119 >= v11)
            {
              v119 = v126;
            }

            else
            {
              v128 = v123[2];
              v127 = v123 + 2;
              result = v128;
              if (*(v121 + 4 * v125) >= *(v121 + 4 * v128))
              {
                v119 = v126;
              }

              else
              {
                v125 = result;
                v124 = v127;
              }
            }

            *v122 = v125;
            v122 = v124;
          }

          while (v119 <= ((v11 - 2) >> 1));
          if (v124 == --a2)
          {
            *v124 = v120;
          }

          else
          {
            *v124 = *a2;
            *a2 = v120;
            v129 = (v124 - v10 + 4) >> 2;
            v130 = v129 < 2;
            v131 = v129 - 2;
            if (!v130)
            {
              v132 = v131 >> 1;
              v133 = &v10[v132];
              v134 = *v133;
              v135 = *v124;
              if (*(v121 + 4 * v134) < *(v121 + 4 * *v124))
              {
                do
                {
                  v136 = v133;
                  *v124 = v134;
                  if (!v132)
                  {
                    break;
                  }

                  v132 = (v132 - 1) >> 1;
                  v133 = &v10[v132];
                  v134 = *v133;
                  v124 = v136;
                }

                while (*(v121 + 4 * v134) < *(v121 + 4 * v135));
                *v136 = v135;
              }
            }
          }

          v130 = v11-- <= 2;
        }

        while (!v130);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * v17);
      if (v19 >= *(v14 + 4 * *v10))
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v23 = *v12;
          v24 = *v10;
          if (*(v14 + 4 * v23) < *(v14 + 4 * v24))
          {
            *v10 = v23;
            *v12 = v24;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v27 = *(a2 - 1);
        if (*(v14 + 4 * v27) < *(v14 + 4 * v18))
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 4 * v29);
      v32 = *(a2 - 2);
      v33 = *(v14 + 4 * v32);
      if (v31 >= *(v14 + 4 * v30))
      {
        if (v33 < v31)
        {
          *v28 = v32;
          *(a2 - 2) = v29;
          v34 = *v28;
          v35 = v10[1];
          if (*(v14 + 4 * v34) < *(v14 + 4 * v35))
          {
            v10[1] = v34;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v10[1] = v32;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v14 + 4 * v37) < *(v14 + 4 * v30))
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v14 + 4 * v43);
      if (v42 >= *(v14 + 4 * v41))
      {
        if (v44 < v42)
        {
          *v38 = v43;
          *(a2 - 3) = v39;
          v45 = *v38;
          v46 = v10[2];
          if (*(v14 + 4 * v45) < *(v14 + 4 * v46))
          {
            v10[2] = v45;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v44 < v42)
        {
          v10[2] = v43;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v14 + 4 * v47) < *(v14 + 4 * v41))
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = *(v14 + 4 * v48);
      v51 = *v38;
      v52 = *(v14 + 4 * *v38);
      if (v50 >= *(v14 + 4 * *v28))
      {
        if (v52 >= v50)
        {
          goto LABEL_56;
        }

        *v13 = v51;
        *v38 = v48;
        v38 = v13;
        LODWORD(v48) = v49;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v50)
      {
        *v28 = v48;
        *v13 = v49;
        v28 = v13;
        LODWORD(v48) = v51;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v49;
LABEL_56:
          v53 = *v10;
          *v10 = v48;
          *v13 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v38 = v49;
      goto LABEL_56;
    }

    v20 = *v10;
    v21 = *v13;
    v22 = *(v14 + 4 * v20);
    if (v22 >= *(v14 + 4 * *v13))
    {
      if (v16 < v22)
      {
        *v10 = v15;
        *(a2 - 1) = v20;
        v25 = *v10;
        v26 = *v13;
        if (*(v14 + 4 * v25) < *(v14 + 4 * v26))
        {
          *v13 = v25;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v22)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v21;
      goto LABEL_57;
    }

    *v13 = v20;
    *v10 = v21;
    v36 = *(a2 - 1);
    if (*(v14 + 4 * v36) < *(v14 + 4 * v21))
    {
      *v10 = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v10;
    if (a5)
    {
      v55 = *(v14 + 4 * v54);
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v10[++v56];
      }

      while (*(v14 + 4 * v57) < v55);
      v58 = &v10[v56];
      v59 = a2;
      if (v56 == 1)
      {
        v59 = a2;
        do
        {
          if (v58 >= v59)
          {
            break;
          }

          v61 = *--v59;
        }

        while (*(v14 + 4 * v61) >= v55);
      }

      else
      {
        do
        {
          v60 = *--v59;
        }

        while (*(v14 + 4 * v60) >= v55);
      }

      if (v58 >= v59)
      {
        v69 = v58 - 1;
      }

      else
      {
        v62 = *v59;
        v63 = v57;
        v64 = v58;
        v65 = v59;
        do
        {
          *v64 = v62;
          *v65 = v63;
          v66 = *(v14 + 4 * v54);
          do
          {
            v67 = v64[1];
            ++v64;
            v63 = v67;
          }

          while (*(v14 + 4 * v67) < v66);
          do
          {
            v68 = *--v65;
            v62 = v68;
          }

          while (*(v14 + 4 * v68) >= v66);
        }

        while (v64 < v65);
        v69 = v64 - 1;
      }

      if (v69 != v10)
      {
        *v10 = *v69;
      }

      *v69 = v54;
      if (v58 < v59)
      {
        goto LABEL_81;
      }

      v70 = sub_23670EAC0(v10, v69, a3);
      v10 = v69 + 1;
      result = sub_23670EAC0(v69 + 1, a2, a3);
      if (result)
      {
        a2 = v69;
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_81:
        result = sub_23670DEC4(v9, v69, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v69 + 1;
      }
    }

    else
    {
      v55 = *(v14 + 4 * v54);
      if (*(v14 + 4 * *(v10 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v14 + 4 * *(a2 - 1)))
      {
        v72 = v10 + 1;
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          ++v72;
        }

        while (v55 >= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v71 = v10[1];
          ++v10;
        }

        while (v55 >= *(v14 + 4 * v71));
      }

      v73 = a2;
      if (v10 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *--v73;
        }

        while (v55 < *(v14 + 4 * v74));
      }

      if (v10 < v73)
      {
        v75 = *v10;
        v76 = *v73;
        do
        {
          *v10 = v76;
          *v73 = v75;
          v77 = *(v14 + 4 * v54);
          do
          {
            v78 = v10[1];
            ++v10;
            v75 = v78;
          }

          while (v77 >= *(v14 + 4 * v78));
          do
          {
            v79 = *--v73;
            v76 = v79;
          }

          while (v77 < *(v14 + 4 * v79));
        }

        while (v10 < v73);
      }

      v80 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v80;
      }

      a5 = 0;
      *v80 = v54;
    }
  }

  LODWORD(v82) = *v10;
  v83 = v10[1];
  v84 = *a3;
  v85 = *(*a3 + 4 * v83);
  v86 = *(a2 - 1);
  v87 = *(*a3 + 4 * v86);
  if (v85 < *(*a3 + 4 * *v10))
  {
    if (v87 >= v85)
    {
      *v10 = v83;
      v10[1] = v82;
      v143 = *(a2 - 1);
      if (*(v84 + 4 * v143) >= *(v84 + 4 * v82))
      {
        return result;
      }

      v10[1] = v143;
    }

    else
    {
      *v10 = v86;
    }

    goto LABEL_176;
  }

  if (v87 < v85)
  {
    v10[1] = v86;
    *(a2 - 1) = v83;
    v138 = *v10;
    v137 = v10[1];
    if (*(v84 + 4 * v137) < *(v84 + 4 * v138))
    {
      *v10 = v137;
      v10[1] = v138;
    }
  }

  return result;
}