int *sub_239ECFC04(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = result[2];
  v4 = *(*result + 144);
  v5 = *(v4 + 8 * v3);
  if (v5 >= 1)
  {
    v6 = (*(v2 + 168) + 4 * *(v4 + 8 * v3 + 4));
    v7 = *(v2 + 24);
    do
    {
      v8 = *v6++;
      *a2++ = *(v7 + 8 * v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_239ECFC50(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v8 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v8;
    *(a3 + 32) = v8;
    *(a3 + 36) = 1;
    **a3 = (v8 - 2) / v8;
    if (v8 >= 1)
    {
      v9 = 1.0 / (v8 * v8);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      do
      {
        *v10++ = v9;
        *v11++ = v9;
        --v8;
      }

      while (v8);
    }

    goto LABEL_69;
  }

  v12 = a4;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (v14)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *(a2 + 24);
  v17 = 4 * v16;
  MEMORY[0x28223BE20]();
  v18 = &v79 - ((4 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 4 * v16);
  if ((v12 | 4) != 4 && v15 == v12)
  {
    v18 = 0;
    v21 = 0.0;
LABEL_25:
    if (v12 == 4)
    {
      v79 = v15;
      v31 = *MEMORY[0x277D86528];
      v32 = 0xFFFFFFFF00000000;
      v33 = v18;
      do
      {
        v34 = *v33++;
        v32 += 0x100000000;
      }

      while (v31 >= v34);
      v35 = v16 << 32;
      v36 = &v18[4 * v16 - 4];
      do
      {
        v37 = *v36--;
        v35 -= 0x100000000;
      }

      while (v31 >= v37);
      v38 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v38;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v39 = *(a3 + 8);
      if (v38 >= 1)
      {
        bzero(*(a3 + 8), 4 * v38);
      }

      *(v39 + (v32 >> 30)) = 1040187392;
      *(v39 + (v35 >> 30)) = 1040187392;
      v15 = v79;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v15 != v12)
    {
      v80 = *a1;
      MEMORY[0x28223BE20]();
      bzero(&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v16);
      v40 = sub_239ED0230(a2, &v80, (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
      v41 = *(a2 + 20);
      v42 = *(*(a2 + 8) + 408);
      v43 = *(v42 + 4 * v41);
      if (v15 || (v15 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v80, *(v42 + 4 * v41), v16, v40), v15 != v12))
      {
        MEMORY[0x28223BE20]();
        v45 = (&v79 - v44);
        bzero(&v79 - v44, v46);
        v47 = v45 + 1;
        if ((v15 - 1) > 1)
        {
          if (v15 == 4)
          {
            v54 = *MEMORY[0x277D86528];
            v48 = 0xFFFFFFFF00000000;
            v55 = v40;
            do
            {
              v56 = *v55++;
              v48 += 0x100000000;
            }

            while (v54 >= v56);
            v57 = v16 << 32;
            v58 = &v40[v16 - 1];
            do
            {
              v59 = *v58--;
              v57 -= 0x100000000;
            }

            while (v54 >= v59);
            v60 = *(a2 + 24);
            *v45 = 0.75;
            if (v60 >= 1)
            {
              bzero(v45 + 1, 4 * v60);
            }

            v53 = 0;
            *(v47 + (v48 >> 30)) = 1040187392;
            *(v47 + (v57 >> 30)) = 1040187392;
            LODWORD(v48) = v60;
            v52 = 0;
          }

          else
          {
            LODWORD(v48) = 0;
            v53 = 0;
            v52 = 0;
            *v45 = 1.0;
          }
        }

        else
        {
          v48 = *(a2 + 28);
          *v45 = (v48 - 2) / v48;
          if (v48 >= 1)
          {
            v49 = 1.0 / (v48 * v48);
            v50 = v45 + 1;
            v51 = v48;
            do
            {
              *v50 = v49;
              v50[v16] = v49;
              ++v50;
              --v51;
            }

            while (v51);
          }

          v52 = 1;
          v53 = v48;
        }

        OpenSubdiv::__aapl__::Sdc::Crease::ComputeFractionalWeightAtVertex(&v80, v21, v43, v16, v18, v40);
        v62 = 1.0 - v61;
        **a3 = (**a3 * v61) + (*v45 * (1.0 - v61));
        if (v48)
        {
          if (*(a3 + 28))
          {
            if (v48 >= 1)
            {
              v63 = *(a3 + 8);
              v64 = v48;
              v65 = v45 + 1;
              do
              {
                v66 = *v65++;
                *v63 = (*v63 * v61) + (v66 * v62);
                ++v63;
                --v64;
              }

              while (v64);
            }
          }

          else
          {
            *(a3 + 28) = v48;
            if (v48 >= 1)
            {
              v67 = *(a3 + 8);
              v68 = v48;
              v69 = v45 + 1;
              do
              {
                v70 = *v69++;
                *v67++ = v70 * v62;
                --v68;
              }

              while (v68);
            }
          }
        }

        if (v53)
        {
          v71 = &v47[v16];
          if (*(a3 + 32))
          {
            if (v53 >= 1)
            {
              v72 = *(a3 + 16);
              v73 = v53;
              do
              {
                v74 = *v71++;
                *v72 = (*v72 * v61) + (v74 * v62);
                ++v72;
                --v73;
              }

              while (v73);
            }
          }

          else
          {
            *(a3 + 32) = v53;
            *(a3 + 36) = v52;
            if (v53 >= 1)
            {
              v75 = *(a3 + 16);
              v76 = v53;
              do
              {
                v77 = *v71++;
                *v75++ = v77 * v62;
                --v76;
              }

              while (v76);
            }
          }
        }
      }
    }

    goto LABEL_69;
  }

  v19 = *a2;
  v20 = *(a2 + 16);
  v21 = *(*(*a2 + 408) + 4 * v20);
  if (v16 >= 1)
  {
    v22 = (v19[45] + 4 * *(v19[42] + 8 * v20 + 4));
    v23 = v19[27];
    v24 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v16;
    do
    {
      v26 = *v22++;
      *v24++ = *(v23 + 4 * v26);
      --v25;
    }

    while (v25);
  }

  if (!v12)
  {
    v80 = *a1;
    v12 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v80, v21, v16, (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v7 = v12 - 1;
  }

  if (v7 > 1)
  {
    goto LABEL_25;
  }

  v27 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v27;
  *(a3 + 32) = v27;
  *(a3 + 36) = 1;
  **a3 = (v27 - 2) / v27;
  if (v27 >= 1)
  {
    v28 = 1.0 / (v27 * v27);
    v29 = *(a3 + 8);
    v30 = *(a3 + 16);
    do
    {
      *v29++ = v28;
      *v30++ = v28;
      --v27;
    }

    while (v27);
  }

LABEL_69:
  v78 = *MEMORY[0x277D85DE8];
}

float *sub_239ED0230(int *a1, OpenSubdiv::__aapl__::Sdc::Crease *this, float *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = v15;
  memset(v15, 0, sizeof(v15));
  v7 = a1[6];
  __p = 0;
  if (v7 >= 0x11)
  {
    v6 = operator new(4 * v7);
    __p = v6;
    v7 = a1[6];
  }

  if (v7 >= 1)
  {
    v8 = (*(*a1 + 360) + 4 * *(*(*a1 + 336) + 8 * a1[4] + 4));
    v9 = *(*a1 + 216);
    v10 = v7;
    v11 = v6;
    do
    {
      v12 = *v8++;
      *v11++ = *(v9 + 4 * v12);
      --v10;
    }

    while (v10);
  }

  OpenSubdiv::__aapl__::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(this, v7, v6, a3);
  operator delete(__p);
  v13 = *MEMORY[0x277D85DE8];
  return a3;
}

_DWORD *sub_239ED035C(_DWORD *result, int *a2, uint64_t a3, int a4, int a5, double a6, int64x2_t a7)
{
  if (!a4)
  {
    v7 = *a2;
    v8 = a2[2];
    if (*(*(*a2 + 216) + 4 * v8) <= 0.0)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v9 = *a2;
        LODWORD(v10) = a2[2];
LABEL_8:
        v11 = v10;
        v12 = *(*(v9 + 144) + 8 * v10);
        *(a3 + 24) = 2;
        *(a3 + 32) = v12;
        *(a3 + 36) = 0;
        v13 = *a3;
        __asm { FMOV            V0.2S, #0.375 }

        **a3 = _D0;
        if (v12 == 2)
        {
          **(a3 + 16) = 0x3E0000003E000000;
        }

        else if (v12 >= 1)
        {
          *_D0.i32 = 0.25 / v12;
          v31 = (v12 + 3) & 0xFFFFFFFC;
          a7 = vdupq_n_s64(v12 - 1);
          v32 = xmmword_239F9AD30;
          v33 = xmmword_239F9AD40;
          v34 = (*(a3 + 16) + 8);
          v35 = vdupq_n_s64(4uLL);
          do
          {
            v36 = vmovn_s64(vcgeq_u64(a7, v33));
            if (vuzp1_s16(v36, _D0).u8[0])
            {
              *(v34 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v36, _D0).i8[2])
            {
              *(v34 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(*&a7, *&v32))).i32[1])
            {
              *v34 = _D0.i32[0];
              v34[1] = _D0.i32[0];
            }

            v32 = vaddq_s64(v32, v35);
            v33 = vaddq_s64(v33, v35);
            v34 += 4;
            v31 -= 4;
          }

          while (v31);
        }

        a7.i32[0] = *(*(v9 + 216) + 4 * v11);
        v37 = 1.0 - *a7.i32;
        *a7.i32 = *a7.i32 * 0.5;
        *v13 = vmla_n_f32(vdup_lane_s32(*a7.i8, 0), *v13, v37);
        if (v12 >= 1)
        {
          v38 = *(a3 + 16);
          do
          {
            *v38 = *v38 * v37;
            ++v38;
            --v12;
          }

          while (v12);
        }

        return result;
      }
    }

    else if (a4 != 4)
    {
      v9 = *a2;
      v10 = a2[2];
      v29 = *(*(*a2 + 216) + 4 * v10);
      if (v29 < 1.0 && ((*result & 0xFF0000) == 0 || (v29 + -1.0) <= 0.0))
      {
        goto LABEL_8;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    v21 = 0.5;
    goto LABEL_27;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v7 = *a2;
  LODWORD(v8) = a2[2];
LABEL_10:
  v19 = *(*(v7 + 144) + 8 * v8);
  *(a3 + 24) = 2;
  *(a3 + 32) = v19;
  *(a3 + 36) = 0;
  __asm { FMOV            V0.2S, #0.375 }

  **a3 = _D0;
  if (v19 == 2)
  {
    a3 += 16;
    v21 = 0.125;
LABEL_27:
    v30 = *a3;
    v30->f32[0] = v21;
    v30->f32[1] = v21;
    return result;
  }

  if (v19 >= 1)
  {
    *_D0.i32 = 0.25 / v19;
    v22 = (v19 + 3) & 0xFFFFFFFC;
    v23 = vdupq_n_s64(v19 - 1);
    v24 = xmmword_239F9AD30;
    v25 = xmmword_239F9AD40;
    v26 = (*(a3 + 16) + 8);
    v27 = vdupq_n_s64(4uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v23, v25));
      if (vuzp1_s16(v28, _D0).u8[0])
      {
        *(v26 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v28, _D0).i8[2])
      {
        *(v26 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v23, *&v24))).i32[1])
      {
        *v26 = _D0.i32[0];
        v26[1] = _D0.i32[0];
      }

      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v26 += 4;
      v22 -= 4;
    }

    while (v22);
  }

  return result;
}

void sub_239ED0628(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, long double a6)
{
  v94 = *MEMORY[0x277D85DE8];
  v8 = a4 - 1;
  if ((a4 - 1) > 1)
  {
    v10 = a4;
    if (a5)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4 == 0;
    }

    if (v12)
    {
      v13 = a5;
    }

    else
    {
      v13 = a4;
    }

    v14 = *(a2 + 24);
    v15 = 4 * v14;
    MEMORY[0x28223BE20]();
    v16 = &v92 - ((4 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v16, 4 * v14);
    if ((v10 | 4) == 4 || v13 != v10)
    {
      v18 = *a2;
      v19 = *(a2 + 16);
      v20 = *(*(*a2 + 408) + 4 * v19);
      if (v14 >= 1)
      {
        v21 = (v18[45] + 4 * *(v18[42] + 8 * v19 + 4));
        v22 = v18[27];
        v23 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
        v24 = v14;
        do
        {
          v25 = *v21++;
          *v23++ = *(v22 + 4 * v25);
          --v24;
        }

        while (v24);
      }

      if (!v10)
      {
        v93 = *a1;
        v10 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v93, v20, v14, (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
        v8 = v10 - 1;
      }

      if (v8 <= 1)
      {
        v26 = *(a2 + 28);
        *(a3 + 24) = 1;
        *(a3 + 28) = v26;
        *(a3 + 36) = 0;
        if (v26 == 6)
        {
          **a3 = 1059061760;
          LODWORD(v17) = 1031798784;
        }

        else
        {
          v56 = 1.0 / v26;
          v57 = cos(v56 * 6.28318531);
          v17 = -(((v57 * 0.25 + 0.375) * (v57 * 0.25 + 0.375) + -0.625) * v56);
          *&v17 = v17;
          v58 = 1.0 - *&v17 * v26;
          **a3 = v58;
          if (v26 < 1)
          {
            goto LABEL_84;
          }
        }

        v59 = (v26 + 3) & 0xFFFFFFFC;
        v60 = vdupq_n_s64(v26 - 1);
        v61 = xmmword_239F9AD30;
        v62 = xmmword_239F9AD40;
        v63 = (*(a3 + 8) + 8);
        v64 = vdupq_n_s64(4uLL);
        do
        {
          v65 = vmovn_s64(vcgeq_u64(v60, v62));
          if (vuzp1_s16(v65, *&v17).u8[0])
          {
            *(v63 - 2) = LODWORD(v17);
          }

          if (vuzp1_s16(v65, *&v17).i8[2])
          {
            *(v63 - 1) = LODWORD(v17);
          }

          if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v60, *&v61))).i32[1])
          {
            *v63 = LODWORD(v17);
            v63[1] = LODWORD(v17);
          }

          v61 = vaddq_s64(v61, v64);
          v62 = vaddq_s64(v62, v64);
          v63 += 4;
          v59 -= 4;
        }

        while (v59);
        goto LABEL_84;
      }
    }

    else
    {
      v16 = 0;
      v20 = 0.0;
    }

    if (v10 == 4)
    {
      v92 = v13;
      v37 = *MEMORY[0x277D86528];
      v38 = 0xFFFFFFFF00000000;
      v39 = v16;
      do
      {
        v40 = *v39++;
        v38 += 0x100000000;
      }

      while (v37 >= v40);
      v41 = v14 << 32;
      v42 = &v16[4 * v14 - 4];
      do
      {
        v43 = *v42--;
        v41 -= 0x100000000;
      }

      while (v37 >= v43);
      v44 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v44;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v45 = *(a3 + 8);
      if (v44 >= 1)
      {
        bzero(*(a3 + 8), 4 * v44);
      }

      *(v45 + (v38 >> 30)) = 1040187392;
      *(v45 + (v41 >> 30)) = 1040187392;
      v13 = v92;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v13 == v10)
    {
      goto LABEL_84;
    }

    v93 = *a1;
    MEMORY[0x28223BE20]();
    bzero(&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v14);
    v46 = sub_239ED0230(a2, &v93, (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v47 = *(a2 + 20);
    v48 = *(*(a2 + 8) + 408);
    v49 = *(v48 + 4 * v47);
    if (!v13)
    {
      v13 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v93, *(v48 + 4 * v47), v14, v46);
      if (v13 == v10)
      {
        goto LABEL_84;
      }
    }

    MEMORY[0x28223BE20]();
    v51 = (&v92 - v50);
    bzero(&v92 - v50, v52);
    v54 = (v51 + 1);
    if ((v13 - 1) > 1)
    {
      if (v13 == 4)
      {
        v66 = *MEMORY[0x277D86528];
        v67 = 0xFFFFFFFF00000000;
        v68 = v46;
        do
        {
          v69 = *v68++;
          v67 += 0x100000000;
        }

        while (v66 >= v69);
        v70 = v14 << 32;
        v71 = &v46[v14 - 1];
        do
        {
          v72 = *v71--;
          v70 -= 0x100000000;
        }

        while (v66 >= v72);
        v55 = *(a2 + 24);
        *v51 = 1061158912;
        if (v55 >= 1)
        {
          bzero(v51 + 1, 4 * v55);
        }

        *(v54 + (v67 >> 30)) = 0.125;
        *(v54 + (v70 >> 30)) = 0.125;
      }

      else
      {
        LODWORD(v55) = 0;
        *v51 = 1065353216;
      }

      goto LABEL_75;
    }

    v55 = *(a2 + 28);
    if (v55 == 6)
    {
      *v51 = 1059061760;
      LODWORD(v53) = 1031798784;
    }

    else
    {
      v73 = 1.0 / v55;
      v74 = cos(v73 * 6.28318531);
      v53 = -(((v74 * 0.25 + 0.375) * (v74 * 0.25 + 0.375) + -0.625) * v73);
      *&v53 = v53;
      v75 = 1.0 - *&v53 * v55;
      *v51 = v75;
      if (v55 < 1)
      {
LABEL_75:
        OpenSubdiv::__aapl__::Sdc::Crease::ComputeFractionalWeightAtVertex(&v93, v20, v49, v14, v16, v46);
        v84 = 1.0 - v83;
        **a3 = (**a3 * v83) + (*v51 * (1.0 - v83));
        if (v55)
        {
          if (*(a3 + 28))
          {
            if (v55 >= 1)
            {
              v85 = *(a3 + 8);
              v86 = v55;
              do
              {
                v87 = *v54++;
                *v85 = (*v85 * v83) + (v87 * v84);
                ++v85;
                --v86;
              }

              while (v86);
            }
          }

          else
          {
            *(a3 + 28) = v55;
            if (v55 >= 1)
            {
              v88 = *(a3 + 8);
              v89 = v55;
              do
              {
                v90 = *v54++;
                *v88++ = v90 * v84;
                --v89;
              }

              while (v89);
            }
          }
        }

        goto LABEL_84;
      }
    }

    v76 = (v55 + 3) & 0xFFFFFFFC;
    v77 = vdupq_n_s64(v55 - 1);
    v78 = xmmword_239F9AD30;
    v79 = xmmword_239F9AD40;
    v80 = v51 + 4;
    v81 = vdupq_n_s64(4uLL);
    do
    {
      v82 = vmovn_s64(vcgeq_u64(v77, v79));
      if (vuzp1_s16(v82, *&v53).u8[0])
      {
        *(v80 - 3) = LODWORD(v53);
      }

      if (vuzp1_s16(v82, *&v53).i8[2])
      {
        *(v80 - 2) = LODWORD(v53);
      }

      if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v77, *&v78))).i32[1])
      {
        *(v80 - 1) = LODWORD(v53);
        *v80 = LODWORD(v53);
      }

      v78 = vaddq_s64(v78, v81);
      v79 = vaddq_s64(v79, v81);
      v80 += 4;
      v76 -= 4;
    }

    while (v76);
    goto LABEL_75;
  }

  v9 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v9;
  *(a3 + 36) = 0;
  if (v9 == 6)
  {
    **a3 = 1059061760;
    LODWORD(a6) = 1031798784;
  }

  else
  {
    v27 = 1.0 / v9;
    v28 = cos(v27 * 6.28318531);
    a6 = -(((v28 * 0.25 + 0.375) * (v28 * 0.25 + 0.375) + -0.625) * v27);
    *&a6 = a6;
    v29 = 1.0 - *&a6 * v9;
    **a3 = v29;
    if (v9 < 1)
    {
      goto LABEL_84;
    }
  }

  v30 = (v9 + 3) & 0xFFFFFFFC;
  v31 = vdupq_n_s64(v9 - 1);
  v32 = xmmword_239F9AD30;
  v33 = xmmword_239F9AD40;
  v34 = (*(a3 + 8) + 8);
  v35 = vdupq_n_s64(4uLL);
  do
  {
    v36 = vmovn_s64(vcgeq_u64(v31, v33));
    if (vuzp1_s16(v36, *&a6).u8[0])
    {
      *(v34 - 2) = LODWORD(a6);
    }

    if (vuzp1_s16(v36, *&a6).i8[2])
    {
      *(v34 - 1) = LODWORD(a6);
    }

    if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v31, *&v32))).i32[1])
    {
      *v34 = LODWORD(a6);
      v34[1] = LODWORD(a6);
    }

    v32 = vaddq_s64(v32, v35);
    v33 = vaddq_s64(v33, v35);
    v34 += 4;
    v30 -= 4;
  }

  while (v30);
LABEL_84:
  v91 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239ED0DC4(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 == -1)
  {
    sub_239ED1824();
  }

  v4 = &v3;
  return (off_284D17DD8[v1])(&v4, a1);
}

void sub_239ED0E10(pxrInternal__aapl__pxrReserved__::UsdGeomBoundable *a1)
{
  v11[13] = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
  {
    v5[1] = 0;
    v5[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v5[0] = MEMORY[0x277D86738] + 16;
    v3 = 0u;
    v4 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::GetExtentAttr(&v3, v5);
    if (sub_239E5E5B4(&v3))
    {
      memset(v11, 0, 104);
      v10 = 0u;
      MEMORY[0x23EE7E950](&v10, &v3);
      pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v9 = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::CreateExtentAttr(v5, v8);
    LODWORD(v3) = v10;
    if (*(&v3 + 1))
    {
      sub_239E5E560(*(&v3 + 1));
    }

    *(&v3 + 1) = *(&v10 + 1);
    *(&v10 + 1) = 0;
    sub_239E650AC(&v4, v11);
    sub_239E65104(&v4 + 4, v11 + 1);
    if ((BYTE8(v4) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v4 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v4 + 1) = v11[1];
    v11[1] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(v11);
    if (*(&v10 + 1))
    {
      sub_239E5E560(*(&v10 + 1));
    }

    sub_239E5B240(v8);
    v2[1] = 0;
    v2[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v2[0] = MEMORY[0x277D86770] + 16;
    MEMORY[0x23EE7E9A0](v2);
    if ((BYTE8(v4) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v4 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v4);
    if (*(&v3 + 1))
    {
      sub_239E5E560(*(&v3 + 1));
    }

    MEMORY[0x23EE7E8D0](v5);
  }

  sub_239E56C80(v6);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_239ED147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_239E56C80(v37 - 176);
  MEMORY[0x23EE7E6C0](&a27);
  MEMORY[0x23EE7E6F0](&a34);
  sub_239E56C80(&a37);
  MEMORY[0x23EE7E9A0](&a10);
  sub_239E85E5C(&a13);
  MEMORY[0x23EE7E8D0](&a18);
  sub_239E56C80(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_239ED1618(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 120) = -1;
  sub_239ED1660(a1, a2);
  return a1;
}

uint64_t sub_239ED1660(uint64_t a1, uint64_t a2)
{
  result = sub_239ED16C4(a1);
  v5 = *(a2 + 120);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_284D17DC8 + v5))(&v6, a2);
    *(a1 + 120) = v5;
  }

  return result;
}

uint64_t sub_239ED16C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  if (v2 != -1)
  {
    result = (off_284D17DB8[v2])(&v3, result);
  }

  *(v1 + 120) = -1;
  return result;
}

uint64_t sub_239ED171C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a2 + 16);
  result = *(a2 + 8);
  if (result)
  {

    return sub_239E5E560(result);
  }

  return result;
}

_DWORD *sub_239ED1794(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  v4 = *(a2 + 8);
  *(v3 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_239E57FC0((v3 + 16), (a2 + 16));
  result = sub_239E5B49C((v3 + 20), (a2 + 20));
  v6 = *(a2 + 24);
  *(v3 + 24) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v3 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_239ED1824()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::exception::~exception);
}

void *sub_239ED1884(void *a1)
{
  v4 = a1[14];
  v2 = a1 + 14;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_239ED18EC(v2, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239F74270(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574((a1 + 2));
  v5 = a1[1];
  if (v5)
  {
    sub_239E5E560(v5);
  }

  return a1;
}

void sub_239ED18EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_239E9A9B4(v2);
    }

    JUMPOUT(0x23EE802C0);
  }
}

uint64_t sub_239ED1944(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_239E5B574(a1);
}

uint64_t sub_239ED1984(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

void sub_239ED19E0(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (!*(a1 + 24))
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(a1 + 24))
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        *(v5 + 4 * v4) = *a2;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_239F74394(a1, v4, a2);
    goto LABEL_13;
  }

  sub_239F74318(a1);
}

uint64_t sub_239ED1A88(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8);
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *a1 = 0;
  }

  return a1;
}

void sub_239ED1AC4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v1 = 0uLL;
  operator new();
}

void sub_239ED1B5C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_239E9A9B4(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239ED1BB0(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v2)
    {
      sub_239E9A9B4(v2);
    }

    v6 = v4[7];
    v5 = v4[8];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    if (v7)
    {
      sub_239E9A9B4(v7);
    }

    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = v4 + 3;
    v9 = v4[3];
    v10 = v3;
    if (v9)
    {
      v11 = v3;
      do
      {
        v12 = v9;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v8;
        }

        v10 = v4[4];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          sub_239E9A9B4(v11);
          sub_239E9A9B4(v11);
        }

        v8 = v12 + 3;
        v9 = v12[3];
        v11 = v10;
        v4 = v12;
      }

      while (v9);
    }

    v13 = *(a1 + 8);
    if (v10)
    {
      sub_239E9A9B4(v10);
    }

    v2 = v3;
    if (!v13)
    {
      v14 = 0uLL;
      operator new();
    }
  }
}

void sub_239ED1D28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_239E9A9B4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239ED1D44()
{
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_239ED22B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_239E9A9B4(a14);
    if (!v16)
    {
LABEL_3:
      if (!v17)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  sub_239E9A9B4(v16);
  if (!v17)
  {
LABEL_5:
    if (a16)
    {
      sub_239E9A9B4(a16);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_239E9A9B4(v17);
  goto LABEL_5;
}

void sub_239ED2318(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v26 = 0;
  sub_239ED2574(a1, a2, &v25);
  v3 = v25;
  if (v25)
  {
    v4 = v26;
    v5 = v26;
    while (1)
    {
      v6 = v3[2];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v8 = v7 ? v3[1] : 0;
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }

      v9 = *(a1 + 8);
      if (v8 == v9 && !v3[3])
      {
        v22 = *(v9 + 56);
        if (v22)
        {
          break;
        }
      }

      v10 = v3[2];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v3[1];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      v14 = v3[3];
      v13 = v3[4];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(v12 + 32);
      *(v12 + 24) = v14;
      *(v12 + 32) = v13;
      if (v15)
      {
        sub_239E9A9B4(v15);
      }

      v16 = v3[3];
      if (v16)
      {
        v18 = v3[1];
        v17 = v3[2];
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
        }

        v19 = *(v16 + 16);
        *(v16 + 8) = v18;
        *(v16 + 16) = v17;
        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v20 = v3[7];
      if (!v20)
      {
        v21 = 3;
        if (!v11)
        {
          goto LABEL_37;
        }

LABEL_36:
        sub_239E9A9B4(v11);
        goto LABEL_37;
      }

      v4 = v3[8];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = v4;
      if (v5)
      {
        sub_239E9A9B4(v5);
      }

      if (v4)
      {
        sub_239E9A9B4(v4);
        v21 = 0;
LABEL_31:
        v5 = v4;
        goto LABEL_35;
      }

      v5 = 0;
      v21 = 0;
LABEL_35:
      v3 = v20;
      if (v11)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v7)
      {
        sub_239E9A9B4(v7);
      }

      if (v21 == 3)
      {
        goto LABEL_56;
      }
    }

    v11 = *(v9 + 64);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(a1 + 16);
    *(a1 + 8) = v22;
    *(a1 + 16) = v11;
    if (v23)
    {
      sub_239E9A9B4(v23);
      v22 = *(a1 + 8);
    }

    v24 = *(v22 + 48);
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    v20 = v3[7];
    v4 = v3[8];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v4;
    if (v5)
    {
      sub_239E9A9B4(v5);
    }

    --*a1;
    if (v4)
    {
      sub_239E9A9B4(v4);
    }

    v21 = 2;
    goto LABEL_31;
  }

  v4 = v26;
LABEL_56:
  if (v4)
  {

    sub_239E9A9B4(v4);
  }
}

void sub_239ED2574(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      if (*(v5 + 72) == -1 || *(*v5 + 4) < *(a2 + 4))
      {
        break;
      }

      if (*v5 == a2)
      {
        *a3 = v5;
        a3[1] = v6;
        return;
      }

      v9 = *(v5 + 16);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = *(v5 + 8);
          if (!v7)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v11 = 0;
          if (!v7)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        sub_239E9A9B4(v7);
        goto LABEL_20;
      }

      v11 = 0;
      v10 = 0;
      if (v7)
      {
        goto LABEL_19;
      }

LABEL_20:
      v5 = *(v11 + 56);
      if (!v5)
      {
        goto LABEL_29;
      }

      v6 = *(v11 + 64);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = v10;
      v8 = v5;
      if (v10)
      {
LABEL_24:
        sub_239E9A9B4(v7);
        v5 = v8;
      }
    }

    v8 = *(v5 + 24);
    if (!v8)
    {
      break;
    }

    v6 = *(v5 + 32);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    v5 = v8;
    if (v7)
    {
      goto LABEL_24;
    }
  }

  v8 = *(v5 + 56);
  if (v8)
  {
    v6 = *(v5 + 64);
    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v10 = v6;
LABEL_29:
  *a3 = 0;
  a3[1] = 0;
  if (v10)
  {

    sub_239E9A9B4(v10);
  }
}

void *sub_239ED26E0(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  sub_239ED2574(a1, a2, &v10);
  v2 = v10;
  if (!v10)
  {
    v7 = v11;
    if (!v11)
    {
      return v2;
    }

    goto LABEL_21;
  }

  v3 = v10[7];
  if (v3)
  {
    v4 = v11;
    do
    {
      v5 = v2[8];
      v2 = v3;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4)
      {
        sub_239E9A9B4(v4);
      }

      v3 = v2[7];
      v4 = v5;
    }

    while (v3);
    v11 = v5;
  }

  v6 = v2[2];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v2[1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v11)
  {
    sub_239E9A9B4(v11);
  }

  if (*(v8 + 72) == -1)
  {
    v2 = 0;
    if (!v7)
    {
      return v2;
    }

    goto LABEL_21;
  }

  v2 = *v8;
  if (v7)
  {
LABEL_21:
    sub_239E9A9B4(v7);
  }

  return v2;
}

void *sub_239ED27CC(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  sub_239ED2574(a1, a2, &v8);
  v2 = v8;
  if (v8)
  {
    v3 = v8[7];
    if (v3)
    {
      v4 = v9;
      do
      {
        v5 = v2[8];
        v2 = v3;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          sub_239E9A9B4(v4);
        }

        v3 = v2[7];
        v4 = v5;
      }

      while (v3);
      v9 = v5;
    }

    v6 = v2[3];
    if (v6)
    {
      v2 = *v6;
    }

    else
    {
      v2 = 0;
    }
  }

  if (v9)
  {
    sub_239E9A9B4(v9);
  }

  return v2;
}

void sub_239ED286C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_239ED28EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239ED2900(va);
  _Unwind_Resume(a1);
}

void **sub_239ED2900(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_239ED2A08(v2);
    MEMORY[0x23EE802C0](v3, 0x1020C40DCAD37ECLL);
  }

  return a1;
}

void sub_239ED294C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

void *sub_239ED2984(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_239ED2A08(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239ED29C8(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17680))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_239ED2A08(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    sub_239E9A9B4(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

double sub_239ED2C10@<D0>(uint64_t a1@<X8>, double a2@<D0>, float64x2_t a3@<Q1>, float64_t a4@<D2>, float64x2_t a5@<Q3>)
{
  a3.f64[1] = a4;
  v6 = vmulq_f64(a3, a3);
  v6.f64[0] = 1.0 / sqrt(vaddvq_f64(v6) + vmulq_f64(a5, a5).f64[0]);
  v23 = vmulq_n_f64(a3, v6.f64[0]);
  v24 = vmulq_f64(v6, a5).f64[0];
  v7 = __sincos_stret(a2);
  v8 = (1.0 - v7.__cosval) * v23.f64[0];
  *&v9 = v7.__cosval + v8 * v23.f64[0];
  v10 = vmuld_lane_f64(v8, v23, 1);
  v11 = v8 * v24;
  v12 = vmuld_lane_f64(v7.__sinval, v23, 1);
  _V19.D[1] = v23.f64[1];
  *(&v9 + 1) = v10 + v7.__sinval * v24;
  *a1 = v9;
  *(a1 + 16) = COERCE_UNSIGNED_INT64(v11 - v12);
  *&v9 = v10 - v7.__sinval * v24;
  _D5 = vmuld_lane_f64(1.0 - v7.__cosval, v23, 1);
  __asm { FMLA            D1, D5, V19.D[1] }

  v20 = _D5 * v24;
  *(&v9 + 1) = _D1;
  *(a1 + 32) = v9;
  *(a1 + 48) = COERCE_UNSIGNED_INT64(v20 + v7.__sinval * v23.f64[0]);
  *&v21 = v11 + v12;
  *(&v21 + 1) = v20 - v7.__sinval * v23.f64[0];
  *(a1 + 64) = v21;
  *(a1 + 80) = COERCE_UNSIGNED_INT64(v7.__cosval + vmuld_n_f64(v24, v24) * (1.0 - v7.__cosval));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 112) = xmmword_239F9C570;
  return result;
}

uint64_t sub_239ED9758(uint64_t a1)
{
  *(a1 + 48) = 0u;
  v2 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_239ED9820(a1);
  v4 = 0x1000000;
  sub_239EA83F8(a1, &v4);
  sub_239EDC368((a1 + 24));
  v4 = 0x2000000;
  sub_239EA83F8((a1 + 24), &v4);
  sub_239EDEEF0(v2);
  v4 = 0x4000000;
  sub_239EA83F8(v2, &v4);
  return a1;
}

void sub_239ED97F4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  sub_239F74424((v1 + 24), v1);
  _Unwind_Resume(a1);
}

void sub_239ED9820(const void **a1)
{
  sub_239ED9878(a1);
  v2 = 2396744;
  sub_239EA83F8(a1, &v2);
  v2 = 2396745;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9878(const void **a1)
{
  sub_239ED98D0(a1);
  v2 = 2396736;
  sub_239EA83F8(a1, &v2);
  v2 = 2396737;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED98D0(const void **a1)
{
  sub_239ED9928(a1);
  v2 = 2396680;
  sub_239EA83F8(a1, &v2);
  v2 = 2396681;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9928(const void **a1)
{
  sub_239ED9980(a1);
  v2 = 2396672;
  sub_239EA83F8(a1, &v2);
  v2 = 2396673;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9980(const void **a1)
{
  sub_239ED99D8(a1);
  v2 = 2396232;
  sub_239EA83F8(a1, &v2);
  v2 = 2396233;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED99D8(const void **a1)
{
  sub_239ED9A30(a1);
  v2 = 2396224;
  sub_239EA83F8(a1, &v2);
  v2 = 2396225;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9A30(const void **a1)
{
  sub_239ED9A88(a1);
  v2 = 2396168;
  sub_239EA83F8(a1, &v2);
  v2 = 2396169;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9A88(const void **a1)
{
  sub_239ED9AE0(a1);
  v2 = 2396160;
  sub_239EA83F8(a1, &v2);
  v2 = 2396161;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9AE0(const void **a1)
{
  sub_239ED9B38(a1);
  v2 = 2392648;
  sub_239EA83F8(a1, &v2);
  v2 = 2392649;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9B38(const void **a1)
{
  sub_239ED9B90(a1);
  v2 = 2392640;
  sub_239EA83F8(a1, &v2);
  v2 = 2392641;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9B90(const void **a1)
{
  sub_239ED9BE8(a1);
  v2 = 2392584;
  sub_239EA83F8(a1, &v2);
  v2 = 2392585;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9BE8(const void **a1)
{
  sub_239ED9C40(a1);
  v2 = 2392576;
  sub_239EA83F8(a1, &v2);
  v2 = 2392577;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9C40(const void **a1)
{
  sub_239ED9C98(a1);
  v2 = 2392136;
  sub_239EA83F8(a1, &v2);
  v2 = 2392137;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9C98(const void **a1)
{
  sub_239ED9CF0(a1);
  v2 = 2392128;
  sub_239EA83F8(a1, &v2);
  v2 = 2392129;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9CF0(const void **a1)
{
  sub_239ED9D48(a1);
  v2 = 2392072;
  sub_239EA83F8(a1, &v2);
  v2 = 2392073;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9D48(const void **a1)
{
  sub_239ED9DA0(a1);
  v2 = 2392064;
  sub_239EA83F8(a1, &v2);
  v2 = 2392065;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9DA0(const void **a1)
{
  sub_239ED9DF8(a1);
  v2 = 2363976;
  sub_239EA83F8(a1, &v2);
  v2 = 2363977;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9DF8(const void **a1)
{
  sub_239ED9E50(a1);
  v2 = 2363968;
  sub_239EA83F8(a1, &v2);
  v2 = 2363969;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9E50(const void **a1)
{
  sub_239ED9EA8(a1);
  v2 = 2363912;
  sub_239EA83F8(a1, &v2);
  v2 = 2363913;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9EA8(const void **a1)
{
  sub_239ED9F00(a1);
  v2 = 2363904;
  sub_239EA83F8(a1, &v2);
  v2 = 2363905;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9F00(const void **a1)
{
  sub_239ED9F58(a1);
  v2 = 2363464;
  sub_239EA83F8(a1, &v2);
  v2 = 2363465;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9F58(const void **a1)
{
  sub_239ED9FB0(a1);
  v2 = 2363456;
  sub_239EA83F8(a1, &v2);
  v2 = 2363457;
  sub_239EA83F8(a1, &v2);
}

void sub_239ED9FB0(const void **a1)
{
  sub_239EDA008(a1);
  v2 = 2363400;
  sub_239EA83F8(a1, &v2);
  v2 = 2363401;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA008(const void **a1)
{
  sub_239EDA060(a1);
  v2 = 2363392;
  sub_239EA83F8(a1, &v2);
  v2 = 2363393;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA060(const void **a1)
{
  sub_239EDA0B8(a1);
  v2 = 2359880;
  sub_239EA83F8(a1, &v2);
  v2 = 2359881;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA0B8(const void **a1)
{
  sub_239EDA110(a1);
  v2 = 2359872;
  sub_239EA83F8(a1, &v2);
  v2 = 2359873;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA110(const void **a1)
{
  sub_239EDA168(a1);
  v2 = 2359816;
  sub_239EA83F8(a1, &v2);
  v2 = 2359817;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA168(const void **a1)
{
  sub_239EDA1C0(a1);
  v2 = 2359808;
  sub_239EA83F8(a1, &v2);
  v2 = 2359809;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA1C0(const void **a1)
{
  sub_239EDA218(a1);
  v2 = 2359368;
  sub_239EA83F8(a1, &v2);
  v2 = 2359369;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA218(const void **a1)
{
  sub_239EDA270(a1);
  v2 = 2359360;
  sub_239EA83F8(a1, &v2);
  v2 = 2359361;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA270(const void **a1)
{
  sub_239EDA2C8(a1);
  v2 = 2359304;
  sub_239EA83F8(a1, &v2);
  v2 = 2359305;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA2C8(const void **a1)
{
  sub_239EDA320(a1);
  v2 = 2359296;
  sub_239EA83F8(a1, &v2);
  v2 = 2359297;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA320(const void **a1)
{
  sub_239EDA378(a1);
  v2 = 2134600;
  sub_239EA83F8(a1, &v2);
  v2 = 2134601;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA378(const void **a1)
{
  sub_239EDA3D0(a1);
  v2 = 2134592;
  sub_239EA83F8(a1, &v2);
  v2 = 2134593;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA3D0(const void **a1)
{
  sub_239EDA428(a1);
  v2 = 2134536;
  sub_239EA83F8(a1, &v2);
  v2 = 2134537;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA428(const void **a1)
{
  sub_239EDA480(a1);
  v2 = 2134528;
  sub_239EA83F8(a1, &v2);
  v2 = 2134529;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA480(const void **a1)
{
  sub_239EDA4D8(a1);
  v2 = 2134088;
  sub_239EA83F8(a1, &v2);
  v2 = 2134089;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA4D8(const void **a1)
{
  sub_239EDA530(a1);
  v2 = 2134080;
  sub_239EA83F8(a1, &v2);
  v2 = 2134081;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA530(const void **a1)
{
  sub_239EDA588(a1);
  v2 = 2134024;
  sub_239EA83F8(a1, &v2);
  v2 = 2134025;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA588(const void **a1)
{
  sub_239EDA5E0(a1);
  v2 = 2134016;
  sub_239EA83F8(a1, &v2);
  v2 = 2134017;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA5E0(const void **a1)
{
  sub_239EDA638(a1);
  v2 = 2130504;
  sub_239EA83F8(a1, &v2);
  v2 = 2130505;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA638(const void **a1)
{
  sub_239EDA690(a1);
  v2 = 2130496;
  sub_239EA83F8(a1, &v2);
  v2 = 2130497;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA690(const void **a1)
{
  sub_239EDA6E8(a1);
  v2 = 2130440;
  sub_239EA83F8(a1, &v2);
  v2 = 2130441;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA6E8(const void **a1)
{
  sub_239EDA740(a1);
  v2 = 2130432;
  sub_239EA83F8(a1, &v2);
  v2 = 2130433;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA740(const void **a1)
{
  sub_239EDA798(a1);
  v2 = 2129992;
  sub_239EA83F8(a1, &v2);
  v2 = 2129993;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA798(const void **a1)
{
  sub_239EDA7F0(a1);
  v2 = 2129984;
  sub_239EA83F8(a1, &v2);
  v2 = 2129985;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA7F0(const void **a1)
{
  sub_239EDA848(a1);
  v2 = 2129928;
  sub_239EA83F8(a1, &v2);
  v2 = 2129929;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA848(const void **a1)
{
  sub_239EDA8A0(a1);
  v2 = 2129920;
  sub_239EA83F8(a1, &v2);
  v2 = 2129921;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA8A0(const void **a1)
{
  sub_239EDA8F8(a1);
  v2 = 2101832;
  sub_239EA83F8(a1, &v2);
  v2 = 2101833;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA8F8(const void **a1)
{
  sub_239EDA950(a1);
  v2 = 2101824;
  sub_239EA83F8(a1, &v2);
  v2 = 2101825;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA950(const void **a1)
{
  sub_239EDA9A8(a1);
  v2 = 2101768;
  sub_239EA83F8(a1, &v2);
  v2 = 2101769;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDA9A8(const void **a1)
{
  sub_239EDAA00(a1);
  v2 = 2101760;
  sub_239EA83F8(a1, &v2);
  v2 = 2101761;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAA00(const void **a1)
{
  sub_239EDAA58(a1);
  v2 = 2101320;
  sub_239EA83F8(a1, &v2);
  v2 = 2101321;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAA58(const void **a1)
{
  sub_239EDAAB0(a1);
  v2 = 2101312;
  sub_239EA83F8(a1, &v2);
  v2 = 2101313;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAAB0(const void **a1)
{
  sub_239EDAB08(a1);
  v2 = 2101256;
  sub_239EA83F8(a1, &v2);
  v2 = 2101257;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAB08(const void **a1)
{
  sub_239EDAB60(a1);
  v2 = 2101248;
  sub_239EA83F8(a1, &v2);
  v2 = 2101249;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAB60(const void **a1)
{
  sub_239EDABB8(a1);
  v2 = 2097736;
  sub_239EA83F8(a1, &v2);
  v2 = 2097737;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDABB8(const void **a1)
{
  sub_239EDAC10(a1);
  v2 = 2097728;
  sub_239EA83F8(a1, &v2);
  v2 = 2097729;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAC10(const void **a1)
{
  sub_239EDAC68(a1);
  v2 = 2097672;
  sub_239EA83F8(a1, &v2);
  v2 = 2097673;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAC68(const void **a1)
{
  sub_239EDACC0(a1);
  v2 = 2097664;
  sub_239EA83F8(a1, &v2);
  v2 = 2097665;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDACC0(const void **a1)
{
  sub_239EDAD18(a1);
  v2 = 2097224;
  sub_239EA83F8(a1, &v2);
  v2 = 2097225;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAD18(const void **a1)
{
  sub_239EDAD70(a1);
  v2 = 2097216;
  sub_239EA83F8(a1, &v2);
  v2 = 2097217;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAD70(const void **a1)
{
  sub_239EDADC8(a1);
  v2 = 2097160;
  sub_239EA83F8(a1, &v2);
  v2 = 2097161;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDADC8(const void **a1)
{
  sub_239EDAE20(a1);
  v2 = 0x200000;
  sub_239EA83F8(a1, &v2);
  v2 = 2097153;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAE20(const void **a1)
{
  sub_239EDAE78(a1);
  v2 = 299592;
  sub_239EA83F8(a1, &v2);
  v2 = 299593;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAE78(const void **a1)
{
  sub_239EDAED0(a1);
  v2 = 299584;
  sub_239EA83F8(a1, &v2);
  v2 = 299585;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAED0(const void **a1)
{
  sub_239EDAF28(a1);
  v2 = 299528;
  sub_239EA83F8(a1, &v2);
  v2 = 299529;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAF28(const void **a1)
{
  sub_239EDAF80(a1);
  v2 = 299520;
  sub_239EA83F8(a1, &v2);
  v2 = 299521;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAF80(const void **a1)
{
  sub_239EDAFD8(a1);
  v2 = 299080;
  sub_239EA83F8(a1, &v2);
  v2 = 299081;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDAFD8(const void **a1)
{
  sub_239EDB030(a1);
  v2 = 299072;
  sub_239EA83F8(a1, &v2);
  v2 = 299073;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB030(const void **a1)
{
  sub_239EDB088(a1);
  v2 = 299016;
  sub_239EA83F8(a1, &v2);
  v2 = 299017;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB088(const void **a1)
{
  sub_239EDB0E0(a1);
  v2 = 299008;
  sub_239EA83F8(a1, &v2);
  v2 = 299009;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB0E0(const void **a1)
{
  sub_239EDB138(a1);
  v2 = 295496;
  sub_239EA83F8(a1, &v2);
  v2 = 295497;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB138(const void **a1)
{
  sub_239EDB190(a1);
  v2 = 295488;
  sub_239EA83F8(a1, &v2);
  v2 = 295489;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB190(const void **a1)
{
  sub_239EDB1E8(a1);
  v2 = 295432;
  sub_239EA83F8(a1, &v2);
  v2 = 295433;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB1E8(const void **a1)
{
  sub_239EDB240(a1);
  v2 = 295424;
  sub_239EA83F8(a1, &v2);
  v2 = 295425;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB240(const void **a1)
{
  sub_239EDB298(a1);
  v2 = 294984;
  sub_239EA83F8(a1, &v2);
  v2 = 294985;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB298(const void **a1)
{
  sub_239EDB2F0(a1);
  v2 = 294976;
  sub_239EA83F8(a1, &v2);
  v2 = 294977;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB2F0(const void **a1)
{
  sub_239EDB348(a1);
  v2 = 294920;
  sub_239EA83F8(a1, &v2);
  v2 = 294921;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB348(const void **a1)
{
  sub_239EDB3A0(a1);
  v2 = 294912;
  sub_239EA83F8(a1, &v2);
  v2 = 294913;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB3A0(const void **a1)
{
  sub_239EDB3F8(a1);
  v2 = 266824;
  sub_239EA83F8(a1, &v2);
  v2 = 266825;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB3F8(const void **a1)
{
  sub_239EDB450(a1);
  v2 = 266816;
  sub_239EA83F8(a1, &v2);
  v2 = 266817;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB450(const void **a1)
{
  sub_239EDB4A8(a1);
  v2 = 266760;
  sub_239EA83F8(a1, &v2);
  v2 = 266761;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB4A8(const void **a1)
{
  sub_239EDB500(a1);
  v2 = 266752;
  sub_239EA83F8(a1, &v2);
  v2 = 266753;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB500(const void **a1)
{
  sub_239EDB558(a1);
  v2 = 266312;
  sub_239EA83F8(a1, &v2);
  v2 = 266313;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB558(const void **a1)
{
  sub_239EDB5B0(a1);
  v2 = 266304;
  sub_239EA83F8(a1, &v2);
  v2 = 266305;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB5B0(const void **a1)
{
  sub_239EDB608(a1);
  v2 = 266248;
  sub_239EA83F8(a1, &v2);
  v2 = 266249;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB608(const void **a1)
{
  sub_239EDB660(a1);
  v2 = 266240;
  sub_239EA83F8(a1, &v2);
  v2 = 266241;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB660(const void **a1)
{
  sub_239EDB6B8(a1);
  v2 = 262728;
  sub_239EA83F8(a1, &v2);
  v2 = 262729;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB6B8(const void **a1)
{
  sub_239EDB710(a1);
  v2 = 262720;
  sub_239EA83F8(a1, &v2);
  v2 = 262721;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB710(const void **a1)
{
  sub_239EDB768(a1);
  v2 = 262664;
  sub_239EA83F8(a1, &v2);
  v2 = 262665;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB768(const void **a1)
{
  sub_239EDB7C0(a1);
  v2 = 262656;
  sub_239EA83F8(a1, &v2);
  v2 = 262657;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB7C0(const void **a1)
{
  sub_239EDB818(a1);
  v2 = 262216;
  sub_239EA83F8(a1, &v2);
  v2 = 262217;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB818(const void **a1)
{
  sub_239EDB870(a1);
  v2 = 262208;
  sub_239EA83F8(a1, &v2);
  v2 = 262209;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB870(const void **a1)
{
  sub_239EDB8C8(a1);
  v2 = 262152;
  sub_239EA83F8(a1, &v2);
  v2 = 262153;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB8C8(const void **a1)
{
  sub_239EDB920(a1);
  v2 = 0x40000;
  sub_239EA83F8(a1, &v2);
  v2 = 262145;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB920(const void **a1)
{
  sub_239EDB974(a1);
  v2 = 37448;
  sub_239EA83F8(a1, &v2);
  v2 = 37449;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB974(const void **a1)
{
  sub_239EDB9C8(a1);
  v2 = 37440;
  sub_239EA83F8(a1, &v2);
  v2 = 37441;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDB9C8(const void **a1)
{
  sub_239EDBA1C(a1);
  v2 = 37384;
  sub_239EA83F8(a1, &v2);
  v2 = 37385;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBA1C(const void **a1)
{
  sub_239EDBA70(a1);
  v2 = 37376;
  sub_239EA83F8(a1, &v2);
  v2 = 37377;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBA70(const void **a1)
{
  sub_239EDBAC4(a1);
  v2 = 36936;
  sub_239EA83F8(a1, &v2);
  v2 = 36937;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBAC4(const void **a1)
{
  sub_239EDBB18(a1);
  v2 = 36928;
  sub_239EA83F8(a1, &v2);
  v2 = 36929;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBB18(const void **a1)
{
  sub_239EDBB6C(a1);
  v2 = 36872;
  sub_239EA83F8(a1, &v2);
  v2 = 36873;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBB6C(const void **a1)
{
  sub_239EDBBC0(a1);
  v2 = 36864;
  sub_239EA83F8(a1, &v2);
  v2 = 36865;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBBC0(const void **a1)
{
  sub_239EDBC14(a1);
  v2 = 33352;
  sub_239EA83F8(a1, &v2);
  v2 = 33353;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBC14(const void **a1)
{
  sub_239EDBC68(a1);
  v2 = 33344;
  sub_239EA83F8(a1, &v2);
  v2 = 33345;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBC68(const void **a1)
{
  sub_239EDBCBC(a1);
  v2 = 33288;
  sub_239EA83F8(a1, &v2);
  v2 = 33289;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBCBC(const void **a1)
{
  sub_239EDBD10(a1);
  v2 = 33280;
  sub_239EA83F8(a1, &v2);
  v2 = 33281;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBD10(const void **a1)
{
  sub_239EDBD64(a1);
  v2 = 32840;
  sub_239EA83F8(a1, &v2);
  v2 = 32841;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBD64(const void **a1)
{
  sub_239EDBDB8(a1);
  v2 = 32832;
  sub_239EA83F8(a1, &v2);
  v2 = 32833;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBDB8(const void **a1)
{
  sub_239EDBE0C(a1);
  v2 = 32776;
  sub_239EA83F8(a1, &v2);
  v2 = 32777;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBE0C(const void **a1)
{
  sub_239EDBE60(a1);
  v2 = 0x8000;
  sub_239EA83F8(a1, &v2);
  v2 = 32769;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBE60(const void **a1)
{
  sub_239EDBEB4(a1);
  v2 = 4680;
  sub_239EA83F8(a1, &v2);
  v2 = 4681;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBEB4(const void **a1)
{
  sub_239EDBF08(a1);
  v2 = 4672;
  sub_239EA83F8(a1, &v2);
  v2 = 4673;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBF08(const void **a1)
{
  sub_239EDBF5C(a1);
  v2 = 4616;
  sub_239EA83F8(a1, &v2);
  v2 = 4617;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBF5C(const void **a1)
{
  sub_239EDBFB0(a1);
  v2 = 4608;
  sub_239EA83F8(a1, &v2);
  v2 = 4609;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDBFB0(const void **a1)
{
  sub_239EDC004(a1);
  v2 = 4168;
  sub_239EA83F8(a1, &v2);
  v2 = 4169;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC004(const void **a1)
{
  sub_239EDC058(a1);
  v2 = 4160;
  sub_239EA83F8(a1, &v2);
  v2 = 4161;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC058(const void **a1)
{
  sub_239EDC0AC(a1);
  v2 = 4104;
  sub_239EA83F8(a1, &v2);
  v2 = 4105;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC0AC(const void **a1)
{
  sub_239EDC100(a1);
  v2 = 4096;
  sub_239EA83F8(a1, &v2);
  v2 = 4097;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC100(const void **a1)
{
  sub_239EDC154(a1);
  v2 = 584;
  sub_239EA83F8(a1, &v2);
  v2 = 585;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC154(const void **a1)
{
  sub_239EDC1A8(a1);
  v2 = 576;
  sub_239EA83F8(a1, &v2);
  v2 = 577;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC1A8(const void **a1)
{
  sub_239EDC1FC(a1);
  v2 = 520;
  sub_239EA83F8(a1, &v2);
  v2 = 521;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC1FC(const void **a1)
{
  sub_239EDC250(a1);
  v2 = 512;
  sub_239EA83F8(a1, &v2);
  v2 = 513;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC250(const void **a1)
{
  sub_239EDC2A4(a1);
  v2 = 72;
  sub_239EA83F8(a1, &v2);
  v2 = 73;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC2A4(const void **a1)
{
  sub_239EDC2F8(a1);
  v2 = 64;
  sub_239EA83F8(a1, &v2);
  v2 = 65;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC2F8(const void **a1)
{
  v2 = 0;
  sub_239EA83F8(a1, &v2);
  v2 = 1;
  sub_239EA83F8(a1, &v2);
  v2 = 8;
  sub_239EA83F8(a1, &v2);
  v2 = 9;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC368(const void **a1)
{
  sub_239EDC3C0(a1);
  v2 = 4793488;
  sub_239EA83F8(a1, &v2);
  v2 = 4793490;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC3C0(const void **a1)
{
  sub_239EDC418(a1);
  v2 = 4793472;
  sub_239EA83F8(a1, &v2);
  v2 = 4793474;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC418(const void **a1)
{
  sub_239EDC470(a1);
  v2 = 4793360;
  sub_239EA83F8(a1, &v2);
  v2 = 4793362;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC470(const void **a1)
{
  sub_239EDC4C8(a1);
  v2 = 4793344;
  sub_239EA83F8(a1, &v2);
  v2 = 4793346;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC4C8(const void **a1)
{
  sub_239EDC520(a1);
  v2 = 4792464;
  sub_239EA83F8(a1, &v2);
  v2 = 4792466;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC520(const void **a1)
{
  sub_239EDC578(a1);
  v2 = 4792448;
  sub_239EA83F8(a1, &v2);
  v2 = 4792450;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC578(const void **a1)
{
  sub_239EDC5D0(a1);
  v2 = 4792336;
  sub_239EA83F8(a1, &v2);
  v2 = 4792338;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC5D0(const void **a1)
{
  sub_239EDC628(a1);
  v2 = 4792320;
  sub_239EA83F8(a1, &v2);
  v2 = 4792322;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC628(const void **a1)
{
  sub_239EDC680(a1);
  v2 = 4785296;
  sub_239EA83F8(a1, &v2);
  v2 = 4785298;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC680(const void **a1)
{
  sub_239EDC6D8(a1);
  v2 = 4785280;
  sub_239EA83F8(a1, &v2);
  v2 = 4785282;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC6D8(const void **a1)
{
  sub_239EDC730(a1);
  v2 = 4785168;
  sub_239EA83F8(a1, &v2);
  v2 = 4785170;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC730(const void **a1)
{
  sub_239EDC788(a1);
  v2 = 4785152;
  sub_239EA83F8(a1, &v2);
  v2 = 4785154;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC788(const void **a1)
{
  sub_239EDC7E0(a1);
  v2 = 4784272;
  sub_239EA83F8(a1, &v2);
  v2 = 4784274;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC7E0(const void **a1)
{
  sub_239EDC838(a1);
  v2 = 4784256;
  sub_239EA83F8(a1, &v2);
  v2 = 4784258;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC838(const void **a1)
{
  sub_239EDC890(a1);
  v2 = 4784144;
  sub_239EA83F8(a1, &v2);
  v2 = 4784146;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC890(const void **a1)
{
  sub_239EDC8E8(a1);
  v2 = 4784128;
  sub_239EA83F8(a1, &v2);
  v2 = 4784130;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC8E8(const void **a1)
{
  sub_239EDC940(a1);
  v2 = 4727952;
  sub_239EA83F8(a1, &v2);
  v2 = 4727954;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC940(const void **a1)
{
  sub_239EDC998(a1);
  v2 = 4727936;
  sub_239EA83F8(a1, &v2);
  v2 = 4727938;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC998(const void **a1)
{
  sub_239EDC9F0(a1);
  v2 = 4727824;
  sub_239EA83F8(a1, &v2);
  v2 = 4727826;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDC9F0(const void **a1)
{
  sub_239EDCA48(a1);
  v2 = 4727808;
  sub_239EA83F8(a1, &v2);
  v2 = 4727810;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCA48(const void **a1)
{
  sub_239EDCAA0(a1);
  v2 = 4726928;
  sub_239EA83F8(a1, &v2);
  v2 = 4726930;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCAA0(const void **a1)
{
  sub_239EDCAF8(a1);
  v2 = 4726912;
  sub_239EA83F8(a1, &v2);
  v2 = 4726914;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCAF8(const void **a1)
{
  sub_239EDCB50(a1);
  v2 = 4726800;
  sub_239EA83F8(a1, &v2);
  v2 = 4726802;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCB50(const void **a1)
{
  sub_239EDCBA8(a1);
  v2 = 4726784;
  sub_239EA83F8(a1, &v2);
  v2 = 4726786;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCBA8(const void **a1)
{
  sub_239EDCC00(a1);
  v2 = 4719760;
  sub_239EA83F8(a1, &v2);
  v2 = 4719762;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCC00(const void **a1)
{
  sub_239EDCC58(a1);
  v2 = 4719744;
  sub_239EA83F8(a1, &v2);
  v2 = 4719746;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCC58(const void **a1)
{
  sub_239EDCCB0(a1);
  v2 = 4719632;
  sub_239EA83F8(a1, &v2);
  v2 = 4719634;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCCB0(const void **a1)
{
  sub_239EDCD08(a1);
  v2 = 4719616;
  sub_239EA83F8(a1, &v2);
  v2 = 4719618;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCD08(const void **a1)
{
  sub_239EDCD60(a1);
  v2 = 4718736;
  sub_239EA83F8(a1, &v2);
  v2 = 4718738;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCD60(const void **a1)
{
  sub_239EDCDB8(a1);
  v2 = 4718720;
  sub_239EA83F8(a1, &v2);
  v2 = 4718722;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCDB8(const void **a1)
{
  sub_239EDCE10(a1);
  v2 = 4718608;
  sub_239EA83F8(a1, &v2);
  v2 = 4718610;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCE10(const void **a1)
{
  sub_239EDCE68(a1);
  v2 = 4718592;
  sub_239EA83F8(a1, &v2);
  v2 = 4718594;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCE68(const void **a1)
{
  sub_239EDCEC0(a1);
  v2 = 4269200;
  sub_239EA83F8(a1, &v2);
  v2 = 4269202;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCEC0(const void **a1)
{
  sub_239EDCF18(a1);
  v2 = 4269184;
  sub_239EA83F8(a1, &v2);
  v2 = 4269186;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCF18(const void **a1)
{
  sub_239EDCF70(a1);
  v2 = 4269072;
  sub_239EA83F8(a1, &v2);
  v2 = 4269074;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCF70(const void **a1)
{
  sub_239EDCFC8(a1);
  v2 = 4269056;
  sub_239EA83F8(a1, &v2);
  v2 = 4269058;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDCFC8(const void **a1)
{
  sub_239EDD020(a1);
  v2 = 4268176;
  sub_239EA83F8(a1, &v2);
  v2 = 4268178;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD020(const void **a1)
{
  sub_239EDD078(a1);
  v2 = 4268160;
  sub_239EA83F8(a1, &v2);
  v2 = 4268162;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD078(const void **a1)
{
  sub_239EDD0D0(a1);
  v2 = 4268048;
  sub_239EA83F8(a1, &v2);
  v2 = 4268050;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD0D0(const void **a1)
{
  sub_239EDD128(a1);
  v2 = 4268032;
  sub_239EA83F8(a1, &v2);
  v2 = 4268034;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD128(const void **a1)
{
  sub_239EDD180(a1);
  v2 = 4261008;
  sub_239EA83F8(a1, &v2);
  v2 = 4261010;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD180(const void **a1)
{
  sub_239EDD1D8(a1);
  v2 = 4260992;
  sub_239EA83F8(a1, &v2);
  v2 = 4260994;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD1D8(const void **a1)
{
  sub_239EDD230(a1);
  v2 = 4260880;
  sub_239EA83F8(a1, &v2);
  v2 = 4260882;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD230(const void **a1)
{
  sub_239EDD288(a1);
  v2 = 4260864;
  sub_239EA83F8(a1, &v2);
  v2 = 4260866;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD288(const void **a1)
{
  sub_239EDD2E0(a1);
  v2 = 4259984;
  sub_239EA83F8(a1, &v2);
  v2 = 4259986;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD2E0(const void **a1)
{
  sub_239EDD338(a1);
  v2 = 4259968;
  sub_239EA83F8(a1, &v2);
  v2 = 4259970;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD338(const void **a1)
{
  sub_239EDD390(a1);
  v2 = 4259856;
  sub_239EA83F8(a1, &v2);
  v2 = 4259858;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD390(const void **a1)
{
  sub_239EDD3E8(a1);
  v2 = 4259840;
  sub_239EA83F8(a1, &v2);
  v2 = 4259842;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD3E8(const void **a1)
{
  sub_239EDD440(a1);
  v2 = 4203664;
  sub_239EA83F8(a1, &v2);
  v2 = 4203666;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD440(const void **a1)
{
  sub_239EDD498(a1);
  v2 = 4203648;
  sub_239EA83F8(a1, &v2);
  v2 = 4203650;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD498(const void **a1)
{
  sub_239EDD4F0(a1);
  v2 = 4203536;
  sub_239EA83F8(a1, &v2);
  v2 = 4203538;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD4F0(const void **a1)
{
  sub_239EDD548(a1);
  v2 = 4203520;
  sub_239EA83F8(a1, &v2);
  v2 = 4203522;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD548(const void **a1)
{
  sub_239EDD5A0(a1);
  v2 = 4202640;
  sub_239EA83F8(a1, &v2);
  v2 = 4202642;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD5A0(const void **a1)
{
  sub_239EDD5F8(a1);
  v2 = 4202624;
  sub_239EA83F8(a1, &v2);
  v2 = 4202626;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD5F8(const void **a1)
{
  sub_239EDD650(a1);
  v2 = 4202512;
  sub_239EA83F8(a1, &v2);
  v2 = 4202514;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD650(const void **a1)
{
  sub_239EDD6A8(a1);
  v2 = 4202496;
  sub_239EA83F8(a1, &v2);
  v2 = 4202498;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD6A8(const void **a1)
{
  sub_239EDD700(a1);
  v2 = 4195472;
  sub_239EA83F8(a1, &v2);
  v2 = 4195474;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD700(const void **a1)
{
  sub_239EDD758(a1);
  v2 = 4195456;
  sub_239EA83F8(a1, &v2);
  v2 = 4195458;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD758(const void **a1)
{
  sub_239EDD7B0(a1);
  v2 = 4195344;
  sub_239EA83F8(a1, &v2);
  v2 = 4195346;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD7B0(const void **a1)
{
  sub_239EDD808(a1);
  v2 = 4195328;
  sub_239EA83F8(a1, &v2);
  v2 = 4195330;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD808(const void **a1)
{
  sub_239EDD860(a1);
  v2 = 4194448;
  sub_239EA83F8(a1, &v2);
  v2 = 4194450;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD860(const void **a1)
{
  sub_239EDD8B8(a1);
  v2 = 4194432;
  sub_239EA83F8(a1, &v2);
  v2 = 4194434;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD8B8(const void **a1)
{
  sub_239EDD910(a1);
  v2 = 4194320;
  sub_239EA83F8(a1, &v2);
  v2 = 4194322;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD910(const void **a1)
{
  sub_239EDD968(a1);
  v2 = 0x400000;
  sub_239EA83F8(a1, &v2);
  v2 = 4194306;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD968(const void **a1)
{
  sub_239EDD9C0(a1);
  v2 = 599184;
  sub_239EA83F8(a1, &v2);
  v2 = 599186;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDD9C0(const void **a1)
{
  sub_239EDDA18(a1);
  v2 = 599168;
  sub_239EA83F8(a1, &v2);
  v2 = 599170;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDA18(const void **a1)
{
  sub_239EDDA70(a1);
  v2 = 599056;
  sub_239EA83F8(a1, &v2);
  v2 = 599058;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDA70(const void **a1)
{
  sub_239EDDAC8(a1);
  v2 = 599040;
  sub_239EA83F8(a1, &v2);
  v2 = 599042;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDAC8(const void **a1)
{
  sub_239EDDB20(a1);
  v2 = 598160;
  sub_239EA83F8(a1, &v2);
  v2 = 598162;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDB20(const void **a1)
{
  sub_239EDDB78(a1);
  v2 = 598144;
  sub_239EA83F8(a1, &v2);
  v2 = 598146;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDB78(const void **a1)
{
  sub_239EDDBD0(a1);
  v2 = 598032;
  sub_239EA83F8(a1, &v2);
  v2 = 598034;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDBD0(const void **a1)
{
  sub_239EDDC28(a1);
  v2 = 598016;
  sub_239EA83F8(a1, &v2);
  v2 = 598018;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDC28(const void **a1)
{
  sub_239EDDC80(a1);
  v2 = 590992;
  sub_239EA83F8(a1, &v2);
  v2 = 590994;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDC80(const void **a1)
{
  sub_239EDDCD8(a1);
  v2 = 590976;
  sub_239EA83F8(a1, &v2);
  v2 = 590978;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDCD8(const void **a1)
{
  sub_239EDDD30(a1);
  v2 = 590864;
  sub_239EA83F8(a1, &v2);
  v2 = 590866;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDD30(const void **a1)
{
  sub_239EDDD88(a1);
  v2 = 590848;
  sub_239EA83F8(a1, &v2);
  v2 = 590850;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDD88(const void **a1)
{
  sub_239EDDDE0(a1);
  v2 = 589968;
  sub_239EA83F8(a1, &v2);
  v2 = 589970;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDDE0(const void **a1)
{
  sub_239EDDE38(a1);
  v2 = 589952;
  sub_239EA83F8(a1, &v2);
  v2 = 589954;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDE38(const void **a1)
{
  sub_239EDDE90(a1);
  v2 = 589840;
  sub_239EA83F8(a1, &v2);
  v2 = 589842;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDE90(const void **a1)
{
  sub_239EDDEE8(a1);
  v2 = 589824;
  sub_239EA83F8(a1, &v2);
  v2 = 589826;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDEE8(const void **a1)
{
  sub_239EDDF40(a1);
  v2 = 533648;
  sub_239EA83F8(a1, &v2);
  v2 = 533650;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDF40(const void **a1)
{
  sub_239EDDF98(a1);
  v2 = 533632;
  sub_239EA83F8(a1, &v2);
  v2 = 533634;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDF98(const void **a1)
{
  sub_239EDDFF0(a1);
  v2 = 533520;
  sub_239EA83F8(a1, &v2);
  v2 = 533522;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDDFF0(const void **a1)
{
  sub_239EDE048(a1);
  v2 = 533504;
  sub_239EA83F8(a1, &v2);
  v2 = 533506;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE048(const void **a1)
{
  sub_239EDE0A0(a1);
  v2 = 532624;
  sub_239EA83F8(a1, &v2);
  v2 = 532626;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE0A0(const void **a1)
{
  sub_239EDE0F8(a1);
  v2 = 532608;
  sub_239EA83F8(a1, &v2);
  v2 = 532610;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE0F8(const void **a1)
{
  sub_239EDE150(a1);
  v2 = 532496;
  sub_239EA83F8(a1, &v2);
  v2 = 532498;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE150(const void **a1)
{
  sub_239EDE1A8(a1);
  v2 = 532480;
  sub_239EA83F8(a1, &v2);
  v2 = 532482;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE1A8(const void **a1)
{
  sub_239EDE200(a1);
  v2 = 525456;
  sub_239EA83F8(a1, &v2);
  v2 = 525458;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE200(const void **a1)
{
  sub_239EDE258(a1);
  v2 = 525440;
  sub_239EA83F8(a1, &v2);
  v2 = 525442;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE258(const void **a1)
{
  sub_239EDE2B0(a1);
  v2 = 525328;
  sub_239EA83F8(a1, &v2);
  v2 = 525330;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE2B0(const void **a1)
{
  sub_239EDE308(a1);
  v2 = 525312;
  sub_239EA83F8(a1, &v2);
  v2 = 525314;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE308(const void **a1)
{
  sub_239EDE360(a1);
  v2 = 524432;
  sub_239EA83F8(a1, &v2);
  v2 = 524434;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE360(const void **a1)
{
  sub_239EDE3B8(a1);
  v2 = 524416;
  sub_239EA83F8(a1, &v2);
  v2 = 524418;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE3B8(const void **a1)
{
  sub_239EDE410(a1);
  v2 = 524304;
  sub_239EA83F8(a1, &v2);
  v2 = 524306;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE410(const void **a1)
{
  sub_239EDE468(a1);
  v2 = 0x80000;
  sub_239EA83F8(a1, &v2);
  v2 = 524290;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE468(const void **a1)
{
  sub_239EDE4C0(a1);
  v2 = 74896;
  sub_239EA83F8(a1, &v2);
  v2 = 74898;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE4C0(const void **a1)
{
  sub_239EDE518(a1);
  v2 = 74880;
  sub_239EA83F8(a1, &v2);
  v2 = 74882;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE518(const void **a1)
{
  sub_239EDE570(a1);
  v2 = 74768;
  sub_239EA83F8(a1, &v2);
  v2 = 74770;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE570(const void **a1)
{
  sub_239EDE5C8(a1);
  v2 = 74752;
  sub_239EA83F8(a1, &v2);
  v2 = 74754;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE5C8(const void **a1)
{
  sub_239EDE620(a1);
  v2 = 73872;
  sub_239EA83F8(a1, &v2);
  v2 = 73874;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE620(const void **a1)
{
  sub_239EDE678(a1);
  v2 = 73856;
  sub_239EA83F8(a1, &v2);
  v2 = 73858;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE678(const void **a1)
{
  sub_239EDE6D0(a1);
  v2 = 73744;
  sub_239EA83F8(a1, &v2);
  v2 = 73746;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE6D0(const void **a1)
{
  sub_239EDE728(a1);
  v2 = 73728;
  sub_239EA83F8(a1, &v2);
  v2 = 73730;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE728(const void **a1)
{
  sub_239EDE780(a1);
  v2 = 66704;
  sub_239EA83F8(a1, &v2);
  v2 = 66706;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE780(const void **a1)
{
  sub_239EDE7D8(a1);
  v2 = 66688;
  sub_239EA83F8(a1, &v2);
  v2 = 66690;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE7D8(const void **a1)
{
  sub_239EDE830(a1);
  v2 = 66576;
  sub_239EA83F8(a1, &v2);
  v2 = 66578;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE830(const void **a1)
{
  sub_239EDE888(a1);
  v2 = 66560;
  sub_239EA83F8(a1, &v2);
  v2 = 66562;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE888(const void **a1)
{
  sub_239EDE8E0(a1);
  v2 = 65680;
  sub_239EA83F8(a1, &v2);
  v2 = 65682;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE8E0(const void **a1)
{
  sub_239EDE938(a1);
  v2 = 65664;
  sub_239EA83F8(a1, &v2);
  v2 = 65666;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE938(const void **a1)
{
  sub_239EDE990(a1);
  v2 = 65552;
  sub_239EA83F8(a1, &v2);
  v2 = 65554;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE990(const void **a1)
{
  sub_239EDE9E8(a1);
  v2 = 0x10000;
  sub_239EA83F8(a1, &v2);
  v2 = 65538;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDE9E8(const void **a1)
{
  sub_239EDEA3C(a1);
  v2 = 9360;
  sub_239EA83F8(a1, &v2);
  v2 = 9362;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEA3C(const void **a1)
{
  sub_239EDEA90(a1);
  v2 = 9344;
  sub_239EA83F8(a1, &v2);
  v2 = 9346;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEA90(const void **a1)
{
  sub_239EDEAE4(a1);
  v2 = 9232;
  sub_239EA83F8(a1, &v2);
  v2 = 9234;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEAE4(const void **a1)
{
  sub_239EDEB38(a1);
  v2 = 9216;
  sub_239EA83F8(a1, &v2);
  v2 = 9218;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEB38(const void **a1)
{
  sub_239EDEB8C(a1);
  v2 = 8336;
  sub_239EA83F8(a1, &v2);
  v2 = 8338;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEB8C(const void **a1)
{
  sub_239EDEBE0(a1);
  v2 = 8320;
  sub_239EA83F8(a1, &v2);
  v2 = 8322;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEBE0(const void **a1)
{
  sub_239EDEC34(a1);
  v2 = 8208;
  sub_239EA83F8(a1, &v2);
  v2 = 8210;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEC34(const void **a1)
{
  sub_239EDEC88(a1);
  v2 = 0x2000;
  sub_239EA83F8(a1, &v2);
  v2 = 8194;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEC88(const void **a1)
{
  sub_239EDECDC(a1);
  v2 = 1168;
  sub_239EA83F8(a1, &v2);
  v2 = 1170;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDECDC(const void **a1)
{
  sub_239EDED30(a1);
  v2 = 1152;
  sub_239EA83F8(a1, &v2);
  v2 = 1154;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDED30(const void **a1)
{
  sub_239EDED84(a1);
  v2 = 1040;
  sub_239EA83F8(a1, &v2);
  v2 = 1042;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDED84(const void **a1)
{
  sub_239EDEDD8(a1);
  v2 = 1024;
  sub_239EA83F8(a1, &v2);
  v2 = 1026;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEDD8(const void **a1)
{
  sub_239EDEE2C(a1);
  v2 = 144;
  sub_239EA83F8(a1, &v2);
  v2 = 146;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEE2C(const void **a1)
{
  sub_239EDEE80(a1);
  v2 = 128;
  sub_239EA83F8(a1, &v2);
  v2 = 130;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEE80(const void **a1)
{
  v2 = 0;
  sub_239EA83F8(a1, &v2);
  v2 = 2;
  sub_239EA83F8(a1, &v2);
  v2 = 16;
  sub_239EA83F8(a1, &v2);
  v2 = 18;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEEF0(const void **a1)
{
  sub_239EDEF48(a1);
  v2 = 9586976;
  sub_239EA83F8(a1, &v2);
  v2 = 9586980;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEF48(const void **a1)
{
  sub_239EDEFA0(a1);
  v2 = 9586944;
  sub_239EA83F8(a1, &v2);
  v2 = 9586948;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEFA0(const void **a1)
{
  sub_239EDEFF8(a1);
  v2 = 9586720;
  sub_239EA83F8(a1, &v2);
  v2 = 9586724;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDEFF8(const void **a1)
{
  sub_239EDF050(a1);
  v2 = 9586688;
  sub_239EA83F8(a1, &v2);
  v2 = 9586692;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF050(const void **a1)
{
  sub_239EDF0A8(a1);
  v2 = 9584928;
  sub_239EA83F8(a1, &v2);
  v2 = 9584932;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF0A8(const void **a1)
{
  sub_239EDF100(a1);
  v2 = 9584896;
  sub_239EA83F8(a1, &v2);
  v2 = 9584900;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF100(const void **a1)
{
  sub_239EDF158(a1);
  v2 = 9584672;
  sub_239EA83F8(a1, &v2);
  v2 = 9584676;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF158(const void **a1)
{
  sub_239EDF1B0(a1);
  v2 = 9584640;
  sub_239EA83F8(a1, &v2);
  v2 = 9584644;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF1B0(const void **a1)
{
  sub_239EDF208(a1);
  v2 = 9570592;
  sub_239EA83F8(a1, &v2);
  v2 = 9570596;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF208(const void **a1)
{
  sub_239EDF260(a1);
  v2 = 9570560;
  sub_239EA83F8(a1, &v2);
  v2 = 9570564;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF260(const void **a1)
{
  sub_239EDF2B8(a1);
  v2 = 9570336;
  sub_239EA83F8(a1, &v2);
  v2 = 9570340;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF2B8(const void **a1)
{
  sub_239EDF310(a1);
  v2 = 9570304;
  sub_239EA83F8(a1, &v2);
  v2 = 9570308;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF310(const void **a1)
{
  sub_239EDF368(a1);
  v2 = 9568544;
  sub_239EA83F8(a1, &v2);
  v2 = 9568548;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF368(const void **a1)
{
  sub_239EDF3C0(a1);
  v2 = 9568512;
  sub_239EA83F8(a1, &v2);
  v2 = 9568516;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF3C0(const void **a1)
{
  sub_239EDF418(a1);
  v2 = 9568288;
  sub_239EA83F8(a1, &v2);
  v2 = 9568292;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF418(const void **a1)
{
  sub_239EDF470(a1);
  v2 = 9568256;
  sub_239EA83F8(a1, &v2);
  v2 = 9568260;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF470(const void **a1)
{
  sub_239EDF4C8(a1);
  v2 = 9455904;
  sub_239EA83F8(a1, &v2);
  v2 = 9455908;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF4C8(const void **a1)
{
  sub_239EDF520(a1);
  v2 = 9455872;
  sub_239EA83F8(a1, &v2);
  v2 = 9455876;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF520(const void **a1)
{
  sub_239EDF578(a1);
  v2 = 9455648;
  sub_239EA83F8(a1, &v2);
  v2 = 9455652;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF578(const void **a1)
{
  sub_239EDF5D0(a1);
  v2 = 9455616;
  sub_239EA83F8(a1, &v2);
  v2 = 9455620;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF5D0(const void **a1)
{
  sub_239EDF628(a1);
  v2 = 9453856;
  sub_239EA83F8(a1, &v2);
  v2 = 9453860;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF628(const void **a1)
{
  sub_239EDF680(a1);
  v2 = 9453824;
  sub_239EA83F8(a1, &v2);
  v2 = 9453828;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF680(const void **a1)
{
  sub_239EDF6D8(a1);
  v2 = 9453600;
  sub_239EA83F8(a1, &v2);
  v2 = 9453604;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF6D8(const void **a1)
{
  sub_239EDF730(a1);
  v2 = 9453568;
  sub_239EA83F8(a1, &v2);
  v2 = 9453572;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF730(const void **a1)
{
  sub_239EDF788(a1);
  v2 = 9439520;
  sub_239EA83F8(a1, &v2);
  v2 = 9439524;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF788(const void **a1)
{
  sub_239EDF7E0(a1);
  v2 = 9439488;
  sub_239EA83F8(a1, &v2);
  v2 = 9439492;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF7E0(const void **a1)
{
  sub_239EDF838(a1);
  v2 = 9439264;
  sub_239EA83F8(a1, &v2);
  v2 = 9439268;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF838(const void **a1)
{
  sub_239EDF890(a1);
  v2 = 9439232;
  sub_239EA83F8(a1, &v2);
  v2 = 9439236;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF890(const void **a1)
{
  sub_239EDF8E8(a1);
  v2 = 9437472;
  sub_239EA83F8(a1, &v2);
  v2 = 9437476;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF8E8(const void **a1)
{
  sub_239EDF940(a1);
  v2 = 9437440;
  sub_239EA83F8(a1, &v2);
  v2 = 9437444;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF940(const void **a1)
{
  sub_239EDF998(a1);
  v2 = 9437216;
  sub_239EA83F8(a1, &v2);
  v2 = 9437220;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF998(const void **a1)
{
  sub_239EDF9F0(a1);
  v2 = 9437184;
  sub_239EA83F8(a1, &v2);
  v2 = 9437188;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDF9F0(const void **a1)
{
  sub_239EDFA48(a1);
  v2 = 8538400;
  sub_239EA83F8(a1, &v2);
  v2 = 8538404;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFA48(const void **a1)
{
  sub_239EDFAA0(a1);
  v2 = 8538368;
  sub_239EA83F8(a1, &v2);
  v2 = 8538372;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFAA0(const void **a1)
{
  sub_239EDFAF8(a1);
  v2 = 8538144;
  sub_239EA83F8(a1, &v2);
  v2 = 8538148;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFAF8(const void **a1)
{
  sub_239EDFB50(a1);
  v2 = 8538112;
  sub_239EA83F8(a1, &v2);
  v2 = 8538116;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFB50(const void **a1)
{
  sub_239EDFBA8(a1);
  v2 = 8536352;
  sub_239EA83F8(a1, &v2);
  v2 = 8536356;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFBA8(const void **a1)
{
  sub_239EDFC00(a1);
  v2 = 8536320;
  sub_239EA83F8(a1, &v2);
  v2 = 8536324;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFC00(const void **a1)
{
  sub_239EDFC58(a1);
  v2 = 8536096;
  sub_239EA83F8(a1, &v2);
  v2 = 8536100;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFC58(const void **a1)
{
  sub_239EDFCB0(a1);
  v2 = 8536064;
  sub_239EA83F8(a1, &v2);
  v2 = 8536068;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFCB0(const void **a1)
{
  sub_239EDFD08(a1);
  v2 = 8522016;
  sub_239EA83F8(a1, &v2);
  v2 = 8522020;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFD08(const void **a1)
{
  sub_239EDFD60(a1);
  v2 = 8521984;
  sub_239EA83F8(a1, &v2);
  v2 = 8521988;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFD60(const void **a1)
{
  sub_239EDFDB8(a1);
  v2 = 8521760;
  sub_239EA83F8(a1, &v2);
  v2 = 8521764;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFDB8(const void **a1)
{
  sub_239EDFE10(a1);
  v2 = 8521728;
  sub_239EA83F8(a1, &v2);
  v2 = 8521732;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFE10(const void **a1)
{
  sub_239EDFE68(a1);
  v2 = 8519968;
  sub_239EA83F8(a1, &v2);
  v2 = 8519972;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFE68(const void **a1)
{
  sub_239EDFEC0(a1);
  v2 = 8519936;
  sub_239EA83F8(a1, &v2);
  v2 = 8519940;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFEC0(const void **a1)
{
  sub_239EDFF18(a1);
  v2 = 8519712;
  sub_239EA83F8(a1, &v2);
  v2 = 8519716;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFF18(const void **a1)
{
  sub_239EDFF70(a1);
  v2 = 8519680;
  sub_239EA83F8(a1, &v2);
  v2 = 8519684;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFF70(const void **a1)
{
  sub_239EDFFC8(a1);
  v2 = 8407328;
  sub_239EA83F8(a1, &v2);
  v2 = 8407332;
  sub_239EA83F8(a1, &v2);
}

void sub_239EDFFC8(const void **a1)
{
  sub_239EE0020(a1);
  v2 = 8407296;
  sub_239EA83F8(a1, &v2);
  v2 = 8407300;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0020(const void **a1)
{
  sub_239EE0078(a1);
  v2 = 8407072;
  sub_239EA83F8(a1, &v2);
  v2 = 8407076;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0078(const void **a1)
{
  sub_239EE00D0(a1);
  v2 = 8407040;
  sub_239EA83F8(a1, &v2);
  v2 = 8407044;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE00D0(const void **a1)
{
  sub_239EE0128(a1);
  v2 = 8405280;
  sub_239EA83F8(a1, &v2);
  v2 = 8405284;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0128(const void **a1)
{
  sub_239EE0180(a1);
  v2 = 8405248;
  sub_239EA83F8(a1, &v2);
  v2 = 8405252;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0180(const void **a1)
{
  sub_239EE01D8(a1);
  v2 = 8405024;
  sub_239EA83F8(a1, &v2);
  v2 = 8405028;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE01D8(const void **a1)
{
  sub_239EE0230(a1);
  v2 = 8404992;
  sub_239EA83F8(a1, &v2);
  v2 = 8404996;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0230(const void **a1)
{
  sub_239EE0288(a1);
  v2 = 8390944;
  sub_239EA83F8(a1, &v2);
  v2 = 8390948;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0288(const void **a1)
{
  sub_239EE02E0(a1);
  v2 = 8390912;
  sub_239EA83F8(a1, &v2);
  v2 = 8390916;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE02E0(const void **a1)
{
  sub_239EE0338(a1);
  v2 = 8390688;
  sub_239EA83F8(a1, &v2);
  v2 = 8390692;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0338(const void **a1)
{
  sub_239EE0390(a1);
  v2 = 8390656;
  sub_239EA83F8(a1, &v2);
  v2 = 8390660;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0390(const void **a1)
{
  sub_239EE03E8(a1);
  v2 = 8388896;
  sub_239EA83F8(a1, &v2);
  v2 = 8388900;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE03E8(const void **a1)
{
  sub_239EE0440(a1);
  v2 = 8388864;
  sub_239EA83F8(a1, &v2);
  v2 = 8388868;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0440(const void **a1)
{
  sub_239EE0498(a1);
  v2 = 8388640;
  sub_239EA83F8(a1, &v2);
  v2 = 8388644;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0498(const void **a1)
{
  sub_239EE04F0(a1);
  v2 = 0x800000;
  sub_239EA83F8(a1, &v2);
  v2 = 8388612;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE04F0(const void **a1)
{
  sub_239EE0548(a1);
  v2 = 1198368;
  sub_239EA83F8(a1, &v2);
  v2 = 1198372;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0548(const void **a1)
{
  sub_239EE05A0(a1);
  v2 = 1198336;
  sub_239EA83F8(a1, &v2);
  v2 = 1198340;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE05A0(const void **a1)
{
  sub_239EE05F8(a1);
  v2 = 1198112;
  sub_239EA83F8(a1, &v2);
  v2 = 1198116;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE05F8(const void **a1)
{
  sub_239EE0650(a1);
  v2 = 1198080;
  sub_239EA83F8(a1, &v2);
  v2 = 1198084;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0650(const void **a1)
{
  sub_239EE06A8(a1);
  v2 = 1196320;
  sub_239EA83F8(a1, &v2);
  v2 = 1196324;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE06A8(const void **a1)
{
  sub_239EE0700(a1);
  v2 = 1196288;
  sub_239EA83F8(a1, &v2);
  v2 = 1196292;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0700(const void **a1)
{
  sub_239EE0758(a1);
  v2 = 1196064;
  sub_239EA83F8(a1, &v2);
  v2 = 1196068;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0758(const void **a1)
{
  sub_239EE07B0(a1);
  v2 = 1196032;
  sub_239EA83F8(a1, &v2);
  v2 = 1196036;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE07B0(const void **a1)
{
  sub_239EE0808(a1);
  v2 = 1181984;
  sub_239EA83F8(a1, &v2);
  v2 = 1181988;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0808(const void **a1)
{
  sub_239EE0860(a1);
  v2 = 1181952;
  sub_239EA83F8(a1, &v2);
  v2 = 1181956;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0860(const void **a1)
{
  sub_239EE08B8(a1);
  v2 = 1181728;
  sub_239EA83F8(a1, &v2);
  v2 = 1181732;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE08B8(const void **a1)
{
  sub_239EE0910(a1);
  v2 = 1181696;
  sub_239EA83F8(a1, &v2);
  v2 = 1181700;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0910(const void **a1)
{
  sub_239EE0968(a1);
  v2 = 1179936;
  sub_239EA83F8(a1, &v2);
  v2 = 1179940;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0968(const void **a1)
{
  sub_239EE09C0(a1);
  v2 = 1179904;
  sub_239EA83F8(a1, &v2);
  v2 = 1179908;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE09C0(const void **a1)
{
  sub_239EE0A18(a1);
  v2 = 1179680;
  sub_239EA83F8(a1, &v2);
  v2 = 1179684;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0A18(const void **a1)
{
  sub_239EE0A70(a1);
  v2 = 1179648;
  sub_239EA83F8(a1, &v2);
  v2 = 1179652;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0A70(const void **a1)
{
  sub_239EE0AC8(a1);
  v2 = 1067296;
  sub_239EA83F8(a1, &v2);
  v2 = 1067300;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0AC8(const void **a1)
{
  sub_239EE0B20(a1);
  v2 = 1067264;
  sub_239EA83F8(a1, &v2);
  v2 = 1067268;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0B20(const void **a1)
{
  sub_239EE0B78(a1);
  v2 = 1067040;
  sub_239EA83F8(a1, &v2);
  v2 = 1067044;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0B78(const void **a1)
{
  sub_239EE0BD0(a1);
  v2 = 1067008;
  sub_239EA83F8(a1, &v2);
  v2 = 1067012;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0BD0(const void **a1)
{
  sub_239EE0C28(a1);
  v2 = 1065248;
  sub_239EA83F8(a1, &v2);
  v2 = 1065252;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0C28(const void **a1)
{
  sub_239EE0C80(a1);
  v2 = 1065216;
  sub_239EA83F8(a1, &v2);
  v2 = 1065220;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0C80(const void **a1)
{
  sub_239EE0CD8(a1);
  v2 = 1064992;
  sub_239EA83F8(a1, &v2);
  v2 = 1064996;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0CD8(const void **a1)
{
  sub_239EE0D30(a1);
  v2 = 1064960;
  sub_239EA83F8(a1, &v2);
  v2 = 1064964;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0D30(const void **a1)
{
  sub_239EE0D88(a1);
  v2 = 1050912;
  sub_239EA83F8(a1, &v2);
  v2 = 1050916;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0D88(const void **a1)
{
  sub_239EE0DE0(a1);
  v2 = 1050880;
  sub_239EA83F8(a1, &v2);
  v2 = 1050884;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0DE0(const void **a1)
{
  sub_239EE0E38(a1);
  v2 = 1050656;
  sub_239EA83F8(a1, &v2);
  v2 = 1050660;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0E38(const void **a1)
{
  sub_239EE0E90(a1);
  v2 = 1050624;
  sub_239EA83F8(a1, &v2);
  v2 = 1050628;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0E90(const void **a1)
{
  sub_239EE0EE8(a1);
  v2 = 1048864;
  sub_239EA83F8(a1, &v2);
  v2 = 1048868;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0EE8(const void **a1)
{
  sub_239EE0F40(a1);
  v2 = 1048832;
  sub_239EA83F8(a1, &v2);
  v2 = 1048836;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0F40(const void **a1)
{
  sub_239EE0F98(a1);
  v2 = 1048608;
  sub_239EA83F8(a1, &v2);
  v2 = 1048612;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0F98(const void **a1)
{
  sub_239EE0FF0(a1);
  v2 = 0x100000;
  sub_239EA83F8(a1, &v2);
  v2 = 1048580;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE0FF0(const void **a1)
{
  sub_239EE1048(a1);
  v2 = 149792;
  sub_239EA83F8(a1, &v2);
  v2 = 149796;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1048(const void **a1)
{
  sub_239EE10A0(a1);
  v2 = 149760;
  sub_239EA83F8(a1, &v2);
  v2 = 149764;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE10A0(const void **a1)
{
  sub_239EE10F8(a1);
  v2 = 149536;
  sub_239EA83F8(a1, &v2);
  v2 = 149540;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE10F8(const void **a1)
{
  sub_239EE1150(a1);
  v2 = 149504;
  sub_239EA83F8(a1, &v2);
  v2 = 149508;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1150(const void **a1)
{
  sub_239EE11A8(a1);
  v2 = 147744;
  sub_239EA83F8(a1, &v2);
  v2 = 147748;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE11A8(const void **a1)
{
  sub_239EE1200(a1);
  v2 = 147712;
  sub_239EA83F8(a1, &v2);
  v2 = 147716;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1200(const void **a1)
{
  sub_239EE1258(a1);
  v2 = 147488;
  sub_239EA83F8(a1, &v2);
  v2 = 147492;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1258(const void **a1)
{
  sub_239EE12B0(a1);
  v2 = 147456;
  sub_239EA83F8(a1, &v2);
  v2 = 147460;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE12B0(const void **a1)
{
  sub_239EE1308(a1);
  v2 = 133408;
  sub_239EA83F8(a1, &v2);
  v2 = 133412;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1308(const void **a1)
{
  sub_239EE1360(a1);
  v2 = 133376;
  sub_239EA83F8(a1, &v2);
  v2 = 133380;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1360(const void **a1)
{
  sub_239EE13B8(a1);
  v2 = 133152;
  sub_239EA83F8(a1, &v2);
  v2 = 133156;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE13B8(const void **a1)
{
  sub_239EE1410(a1);
  v2 = 133120;
  sub_239EA83F8(a1, &v2);
  v2 = 133124;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1410(const void **a1)
{
  sub_239EE1468(a1);
  v2 = 131360;
  sub_239EA83F8(a1, &v2);
  v2 = 131364;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1468(const void **a1)
{
  sub_239EE14C0(a1);
  v2 = 131328;
  sub_239EA83F8(a1, &v2);
  v2 = 131332;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE14C0(const void **a1)
{
  sub_239EE1518(a1);
  v2 = 131104;
  sub_239EA83F8(a1, &v2);
  v2 = 131108;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1518(const void **a1)
{
  sub_239EE1570(a1);
  v2 = 0x20000;
  sub_239EA83F8(a1, &v2);
  v2 = 131076;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1570(const void **a1)
{
  sub_239EE15C4(a1);
  v2 = 18720;
  sub_239EA83F8(a1, &v2);
  v2 = 18724;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE15C4(const void **a1)
{
  sub_239EE1618(a1);
  v2 = 18688;
  sub_239EA83F8(a1, &v2);
  v2 = 18692;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1618(const void **a1)
{
  sub_239EE166C(a1);
  v2 = 18464;
  sub_239EA83F8(a1, &v2);
  v2 = 18468;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE166C(const void **a1)
{
  sub_239EE16C0(a1);
  v2 = 18432;
  sub_239EA83F8(a1, &v2);
  v2 = 18436;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE16C0(const void **a1)
{
  sub_239EE1714(a1);
  v2 = 16672;
  sub_239EA83F8(a1, &v2);
  v2 = 16676;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1714(const void **a1)
{
  sub_239EE1768(a1);
  v2 = 16640;
  sub_239EA83F8(a1, &v2);
  v2 = 16644;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1768(const void **a1)
{
  sub_239EE17BC(a1);
  v2 = 16416;
  sub_239EA83F8(a1, &v2);
  v2 = 16420;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE17BC(const void **a1)
{
  sub_239EE1810(a1);
  v2 = 0x4000;
  sub_239EA83F8(a1, &v2);
  v2 = 16388;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1810(const void **a1)
{
  sub_239EE1864(a1);
  v2 = 2336;
  sub_239EA83F8(a1, &v2);
  v2 = 2340;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1864(const void **a1)
{
  sub_239EE18B8(a1);
  v2 = 2304;
  sub_239EA83F8(a1, &v2);
  v2 = 2308;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE18B8(const void **a1)
{
  sub_239EE190C(a1);
  v2 = 2080;
  sub_239EA83F8(a1, &v2);
  v2 = 2084;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE190C(const void **a1)
{
  sub_239EE1960(a1);
  v2 = 2048;
  sub_239EA83F8(a1, &v2);
  v2 = 2052;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1960(const void **a1)
{
  sub_239EE19B4(a1);
  v2 = 288;
  sub_239EA83F8(a1, &v2);
  v2 = 292;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE19B4(const void **a1)
{
  sub_239EE1A08(a1);
  v2 = 256;
  sub_239EA83F8(a1, &v2);
  v2 = 260;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1A08(const void **a1)
{
  v2 = 0;
  sub_239EA83F8(a1, &v2);
  v2 = 4;
  sub_239EA83F8(a1, &v2);
  v2 = 32;
  sub_239EA83F8(a1, &v2);
  v2 = 36;
  sub_239EA83F8(a1, &v2);
}

void sub_239EE1B24(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v3, 0x1030C403C5DC1E9);

  _Unwind_Resume(a1);
}

void sub_239EE1C0C(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v3, 0x1030C403C5DC1E9);

  _Unwind_Resume(a1);
}

void sub_239EE1E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

void *sub_239EE1E40(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[25];
    if (v3)
    {
      v2[26] = v3;
      operator delete(v3);
    }

    v4 = v2[11];
    if (v4)
    {
      v2[12] = v4;
      operator delete(v4);
    }

    v5 = v2[8];
    if (v5)
    {
      v2[9] = v5;
      operator delete(v5);
    }

    v6 = v2[5];
    if (v6)
    {
      v2[6] = v6;
      operator delete(v6);
    }

    v7 = v2[1];
    if (v7)
    {
      v2[2] = v7;
      operator delete(v7);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239EE1EE8(uint64_t a1, char a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *a1 = &unk_284D17568;
  operator new();
}

void sub_239EE1F90(_Unwind_Exception *a1)
{
  *v1 = &unk_284D17508;
  sub_239E91CE0(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_239EE1FC8(uint64_t a1)
{
  *a1 = &unk_284D17568;
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
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

  v9 = (a1 + 56);
  sub_239EE83A4(&v9);
  v7 = *(a1 + 48);
  if (v7)
  {
    sub_239E9A9B4(v7);
  }

  *a1 = &unk_284D17508;
  sub_239E91CE0(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_239EE20A8(uint64_t a1)
{
  sub_239EE1FC8(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239EE20E0(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  memset(&__str, 0, sizeof(__str));
  if (!sub_239EE2B84(a3, &__str))
  {
    sub_239E552A0(a4, "Parse PLY: Bad header");
    goto LABEL_169;
  }

  memset(v72, 0, sizeof(v72));
  *v70 = 0u;
  v71 = 0u;
  memset(v69, 0, sizeof(v69));
  v68 = 0u;
  sub_239EE2D04(&v68);
  std::string::operator=(v70, &__str);
  sub_239E98A8C(v69);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  sub_239E88B00(&v68, &v65);
  if (SHIBYTE(v67) < 0)
  {
    if (v66 == 6)
    {
      v8 = v65;
      goto LABEL_8;
    }

LABEL_12:
    MEMORY[0x23EE7FFA0](a2, "ascii");
    goto LABEL_13;
  }

  if (SHIBYTE(v67) != 6)
  {
    goto LABEL_12;
  }

  v8 = &v65;
LABEL_8:
  v9 = *v8;
  v10 = v8[2];
  if (v9 != 1836216166 || v10 != 29793)
  {
    goto LABEL_12;
  }

  sub_239E88B00(&v68, a2);
LABEL_13:
  while (sub_239EE2B84(a3, &__str))
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::ios_base::clear((&v69[-1] + *(v68 - 24)), 0);
      std::string::operator=(v70, &__str);
      sub_239E98A8C(v69);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      sub_239E88B00(&v68, &v62);
      if (SHIBYTE(v64) < 0)
      {
        if (v63 != 7)
        {
          if (v63 != 8 || *v62 != 0x79747265706F7270)
          {
            goto LABEL_30;
          }

LABEL_40:
          if (a1[8] == a1[7])
          {
            v18 = 0;
            if (v64 < 0)
            {
              goto LABEL_58;
            }

            goto LABEL_161;
          }

          v54[0] = 0;
          v54[1] = 0;
          v55 = 0;
          sub_239E88B00(&v68, v54);
          if ((SHIBYTE(v55) & 0x80000000) == 0)
          {
            if (SHIBYTE(v55) == 4)
            {
              v19 = v54;
              goto LABEL_62;
            }

            goto LABEL_63;
          }

          if (v54[1] != 4)
          {
            goto LABEL_63;
          }

          v19 = v54[0];
LABEL_62:
          if (*v19 == 1953720684)
          {
            sub_239E88B00(&v68, v54);
            v26 = sub_239EE2E74(v54);
            sub_239E88B00(&v68, v54);
          }

          else
          {
LABEL_63:
            v26 = 8;
          }

          v60 = 0uLL;
          v61 = 0;
          sub_239E88B00(&v68, &v60);
          v27 = a1[8];
          if ((SHIBYTE(v61) & 0x80000000) == 0)
          {
            v28 = 10;
            if (HIBYTE(v61) > 3u)
            {
              if (HIBYTE(v61) <= 0xBu)
              {
                if (HIBYTE(v61) != 4)
                {
                  if (HIBYTE(v61) != 5)
                  {
                    goto LABEL_143;
                  }

                  if (v60 != 1701147239 || BYTE4(v60) != 110)
                  {
                    goto LABEL_143;
                  }

LABEL_132:
                  v28 = 7;
                  goto LABEL_143;
                }

                if (v60 != 1702194274)
                {
                  goto LABEL_143;
                }

LABEL_120:
                v28 = 8;
                goto LABEL_143;
              }

              if (HIBYTE(v61) != 12)
              {
                if (HIBYTE(v61) != 14)
                {
                  goto LABEL_143;
                }

                v32 = (v60 ^ 0x695F786574726576 | *(&v60 + 6) ^ 0x73656369646E695FLL) == 0;
                goto LABEL_140;
              }

              v37 = &v60;
LABEL_122:
              v38 = bswap64(*v37);
              if (v38 == 0x7665727465785F69)
              {
                v38 = bswap32(*(v37 + 8));
                if (v38 == 1852073336)
                {
                  v39 = 0;
LABEL_139:
                  v32 = v39 == 0;
LABEL_140:
                  if (v32)
                  {
                    v28 = 9;
                  }

                  else
                  {
                    v28 = 10;
                  }

                  goto LABEL_143;
                }

                v40 = 1852073336;
              }

              else
              {
                v40 = 0x7665727465785F69;
              }

              if (v38 < v40)
              {
                v39 = -1;
              }

              else
              {
                v39 = 1;
              }

              goto LABEL_139;
            }

            if (HIBYTE(v61) != 1)
            {
              if (HIBYTE(v61) != 2)
              {
                if (HIBYTE(v61) != 3 || (v60 == 25970 ? (v31 = BYTE2(v60) == 100) : (v31 = 0), !v31))
                {
LABEL_143:
                  v41 = sub_239EE2E74(v54);
                  v43 = *(v27 - 48);
                  v42 = *(v27 - 40);
                  if (v43 >= v42)
                  {
                    v45 = *(v27 - 56);
                    v46 = v43 - v45;
                    v47 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v45) >> 2);
                    v48 = v47 + 1;
                    if (v47 + 1 > 0x1555555555555555)
                    {
                      sub_239E797B4();
                    }

                    v49 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v45) >> 2);
                    if (2 * v49 > v48)
                    {
                      v48 = 2 * v49;
                    }

                    if (v49 >= 0xAAAAAAAAAAAAAAALL)
                    {
                      v50 = 0x1555555555555555;
                    }

                    else
                    {
                      v50 = v48;
                    }

                    if (v50)
                    {
                      sub_239E95B5C(v27 - 56, v50);
                    }

                    v51 = 12 * v47;
                    *v51 = v28;
                    *(v51 + 4) = v41;
                    *(v51 + 8) = v26;
                    v44 = 12 * v47 + 12;
                    v52 = v51 - v46;
                    memcpy((v51 - v46), v45, v46);
                    v53 = *(v27 - 56);
                    *(v27 - 56) = v52;
                    *(v27 - 48) = v44;
                    *(v27 - 40) = 0;
                    if (v53)
                    {
                      operator delete(v53);
                    }
                  }

                  else
                  {
                    *v43 = v28;
                    v43[1] = v41;
                    v44 = (v43 + 3);
                    v43[2] = v26;
                  }

                  *(v27 - 48) = v44;
                  if (SHIBYTE(v61) < 0)
                  {
                    operator delete(v60);
                  }

                  if (SHIBYTE(v55) < 0)
                  {
                    v25 = v54[0];
                    goto LABEL_159;
                  }

                  goto LABEL_160;
                }

LABEL_130:
                v28 = 6;
                goto LABEL_143;
              }

              if (v60 != 30830)
              {
                if (v60 != 31086)
                {
                  if (v60 != 31342)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_128;
                }

LABEL_134:
                v28 = 4;
                goto LABEL_143;
              }

LABEL_129:
              v28 = 3;
              goto LABEL_143;
            }

            v33 = v60 - 120;
            if (v33 >= 3)
            {
              goto LABEL_143;
            }

LABEL_118:
            v28 = v33;
            goto LABEL_143;
          }

          v30 = *(&v60 + 1);
          if (*(&v60 + 1) == 1)
          {
            v33 = *v60 - 120;
            if (v33 < 3)
            {
              goto LABEL_118;
            }

LABEL_95:
            v30 = *(&v60 + 1);
          }

          else if (*(&v60 + 1) == 2)
          {
            switch(*v60)
            {
              case 0x786E:
                goto LABEL_129;
              case 0x796E:
                goto LABEL_134;
              case 0x7A6E:
LABEL_128:
                v28 = 5;
                goto LABEL_143;
            }

            goto LABEL_95;
          }

          if (v30 == 3)
          {
            if (*v60 == 25970 && *(v60 + 2) == 100)
            {
              goto LABEL_130;
            }

            v30 = *(&v60 + 1);
          }

          if (v30 == 5 && *v60 == 1701147239 && *(v60 + 4) == 110)
          {
            goto LABEL_132;
          }

          if (*(&v60 + 1) == 14)
          {
            if (*v60 == 0x695F786574726576 && *(v60 + 6) == 0x73656369646E695FLL)
            {
              v28 = 9;
              goto LABEL_143;
            }
          }

          else if (*(&v60 + 1) == 4 && *v60 == 1702194274)
          {
            goto LABEL_120;
          }

          if (*(&v60 + 1) != 12)
          {
            v28 = 10;
            goto LABEL_143;
          }

          v37 = v60;
          goto LABEL_122;
        }

        if (*v62 != 1835363429 || *(v62 + 3) != 1953391981)
        {
LABEL_30:
          if (v63 != 10)
          {
            goto LABEL_160;
          }

          v13 = v62;
          goto LABEL_32;
        }

LABEL_49:
        v60 = 0uLL;
        v61 = 0;
        sub_239E88B00(&v68, &v60);
        v59 = 0;
        MEMORY[0x23EE800C0](&v68, &v59);
        sub_239EE7C30(v54, &v60, v59);
        v21 = a1[8];
        if (v21 >= a1[9])
        {
          v23 = sub_239EE8540(a1 + 7, v54);
          v24 = SHIBYTE(v57);
          a1[8] = v23;
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *v21 = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = *v54;
          *(v21 + 16) = v55;
          v54[0] = 0;
          v54[1] = 0;
          v55 = 0;
          v22 = v57;
          *(v21 + 24) = *__p;
          *(v21 + 40) = v22;
          __p[1] = 0;
          v57 = 0;
          __p[0] = 0;
          *(v21 + 48) = v58;
          a1[8] = v21 + 56;
        }

        if (v54[0])
        {
          v54[1] = v54[0];
          operator delete(v54[0]);
        }

        if (SHIBYTE(v61) < 0)
        {
          v25 = v60;
LABEL_159:
          operator delete(v25);
        }

LABEL_160:
        v18 = 0;
        if ((v64 & 0x8000000000000000) == 0)
        {
          goto LABEL_161;
        }

LABEL_58:
        operator delete(v62);
        if (v18)
        {
          break;
        }
      }

      else
      {
        if (HIBYTE(v64) == 7)
        {
          if (v62 != 1835363429 || *(&v62 + 3) != 1953391981)
          {
            goto LABEL_160;
          }

          goto LABEL_49;
        }

        if (HIBYTE(v64) == 8)
        {
          if (v62 != 0x79747265706F7270)
          {
            goto LABEL_160;
          }

          goto LABEL_40;
        }

        if (HIBYTE(v64) != 10)
        {
          goto LABEL_160;
        }

        v13 = &v62;
LABEL_32:
        v15 = *v13;
        v16 = v13[4];
        if (v15 != 0x646165685F646E65 || v16 != 29285)
        {
          goto LABEL_160;
        }

        v18 = 1;
        if (v64 < 0)
        {
          goto LABEL_58;
        }

LABEL_161:
        if (v18)
        {
          break;
        }
      }
    }
  }

  sub_239E552A0(a4, "");
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v65);
  }

  *&v68 = *MEMORY[0x277D82820];
  *(&v69[-1] + *(v68 - 24)) = *(MEMORY[0x277D82820] + 24);
  *&v69[0] = MEMORY[0x277D82878] + 16;
  if (SBYTE7(v71) < 0)
  {
    operator delete(v70[0]);
  }

  *&v69[0] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v69 + 1);
  std::istream::~istream();
  MEMORY[0x23EE80250](v72 + 8);
LABEL_169:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_239EE2AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_239EE7CF0(&a39, MEMORY[0x277D82820]);
  MEMORY[0x23EE80250](&a54);
  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  _Unwind_Resume(a1);
}

BOOL sub_239EE2B84(void *a1, uint64_t a2)
{
  v3 = sub_239EE3F14(a1, a2);
  v4 = *(v3 + *(*v3 - 24) + 32) & 5;
  if (!v4)
  {
    v5 = *(a2 + 23);
    v6 = v5;
    v7 = a2 + v5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *a2 + *(a2 + 8);
    }

    if (v6 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = MEMORY[0x277D85DE0];
    while (v8 != v9)
    {
      v12 = *--v8;
      v11 = v12;
      if ((v12 & 0x80000000) != 0)
      {
        if (!__maskrune(v11, 0x4000uLL))
        {
LABEL_14:
          v9 = v8 + 1;
          break;
        }
      }

      else if ((*(v10 + 4 * v11 + 60) & 0x4000) == 0)
      {
        goto LABEL_14;
      }
    }

    v13 = *(a2 + 23);
    v14 = v13;
    v15 = a2 + v13;
    if (v14 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v15 = *a2 + *(a2 + 8);
      v16 = *a2;
    }

    std::string::erase(a2, v9 - v16, v15 - v9);
    v17 = *(a2 + 23);
    v18 = *a2;
    if (v17 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v17 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    if (v20)
    {
      v21 = (v19 + v20);
      v22 = v19;
      do
      {
        v23 = *v22;
        if ((v23 & 0x80000000) != 0)
        {
          if (!__maskrune(v23, 0x4000uLL))
          {
            goto LABEL_32;
          }
        }

        else if ((*(v10 + 4 * v23 + 60) & 0x4000) == 0)
        {
          goto LABEL_32;
        }

        ++v22;
        --v20;
      }

      while (v20);
      v22 = v21;
LABEL_32:
      LOBYTE(v17) = *(a2 + 23);
      v18 = *a2;
    }

    else
    {
      v22 = v19;
    }

    if ((v17 & 0x80u) == 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = v18;
    }

    std::string::erase(a2, v19 - v24, &v22[-v19]);
  }

  return v4 == 0;
}

uint64_t *sub_239EE2D04(uint64_t *a1)
{
  a1[21] = 0;
  v2 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v3 = *(MEMORY[0x277D82820] + 16);
  v4 = *(MEMORY[0x277D82820] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82898] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[15] = v2;
  sub_239EE8484((a1 + 2), 8);
  return a1;
}

void sub_239EE2E4C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239EE2E74(void *a1)
{
  v2 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) <= 4u)
    {
      if (v2 != 3)
      {
        if (v2 != 4)
        {
          goto LABEL_58;
        }

        v3 = a1;
        if (*a1 == 1918986339)
        {
          return 0;
        }

LABEL_46:
        if (*v3 == 1953393013)
        {
          return 5;
        }

        goto LABEL_58;
      }

      goto LABEL_48;
    }

    if (v2 != 5)
    {
      if (v2 == 6 && *a1 == 1869116277 && *(a1 + 2) == 29810)
      {
        return 3;
      }

      goto LABEL_58;
    }

    if (*a1 != 1634231157 || *(a1 + 4) != 114)
    {
      if (*a1 != 1919903859 || *(a1 + 4) != 116)
      {
        goto LABEL_44;
      }

      return 2;
    }

    return 1;
  }

  if (a1[1] == 4 && **a1 == 1918986339)
  {
    return 0;
  }

  if (a1[1] == 5 && **a1 == 1634231157 && *(*a1 + 4) == 114)
  {
    return 1;
  }

  if (a1[1] == 5 && **a1 == 1919903859 && *(*a1 + 4) == 116)
  {
    return 2;
  }

  if (a1[1] == 6)
  {
    if (**a1 == 1869116277 && *(*a1 + 4) == 29810)
    {
      return 3;
    }

    if ((v2 & 0x80) == 0)
    {
LABEL_44:
      if (v2 != 3)
      {
        v3 = a1;
        if (v2 != 4)
        {
          goto LABEL_58;
        }

        goto LABEL_46;
      }

LABEL_48:
      if (*a1 == 28265 && *(a1 + 2) == 116)
      {
        return 4;
      }

      goto LABEL_58;
    }
  }

  v7 = a1[1];
  if (v7 != 3)
  {
    if (v7 != 4)
    {
      goto LABEL_58;
    }

    v3 = *a1;
    goto LABEL_46;
  }

  if (**a1 == 28265 && *(*a1 + 2) == 116)
  {
    return 4;
  }

LABEL_58:
  if (sub_239E55D74(a1, "float"))
  {
    return 6;
  }

  if (sub_239E55D74(a1, "double"))
  {
    return 7;
  }

  if (sub_239E55D74(a1, "int8"))
  {
    return 0;
  }

  if (sub_239E55D74(a1, "uint8"))
  {
    return 1;
  }

  if (sub_239E55D74(a1, "int16"))
  {
    return 2;
  }

  if (sub_239E55D74(a1, "uint16"))
  {
    return 3;
  }

  if (sub_239E55D74(a1, "int32"))
  {
    return 4;
  }

  if (sub_239E55D74(a1, "uint32"))
  {
    return 5;
  }

  if (sub_239E55D74(a1, "float32"))
  {
    return 6;
  }

  if (sub_239E55D74(a1, "float64"))
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_239EE3194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  if (v7 == 8)
  {
    sub_239EE3224(a4, a3, *(a2 + 4));
    return 1;
  }

  sub_239EE3224(a4, a3, v7);
  v9 = v8;
  if (v8 <= 0x400)
  {
    for (; v9; --v9)
    {
      sub_239EE3224(a4, a3, *(a2 + 4));
    }

    return 1;
  }

  return 0;
}

uint64_t sub_239EE3224(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_239E7C368();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_239EE3278(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v123 = *MEMORY[0x277D85DE8];
  v112[0] = 0;
  v112[1] = 0;
  v113 = 0;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v6 = std::locale::use_facet(&v120, MEMORY[0x277D82680]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v120);
  v8 = sub_239EE8088(a2, v112, v7);
  if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
  {
    sub_239E552A0(a3, "Parse PLY: Empty file");
    goto LABEL_68;
  }

  v9 = v112[0];
  v10 = v112;
  if (v113 >= 0)
  {
    v11 = v112;
  }

  else
  {
    v11 = v112[0];
  }

  v12 = *v11;
  if (v12 != 112)
  {
    if (112 == v12)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v113 < 0)
  {
    v10 = v112[0];
  }

  v13 = *(v10 + 1);
  if (v13 != 108)
  {
    if (108 == v13)
    {
      goto LABEL_13;
    }

LABEL_18:
    sub_239E552A0(a3, "Parse PLY: Bad format");
    goto LABEL_68;
  }

  if (v113 >= 0)
  {
    v9 = v112;
  }

  if (121 != *(v9 + 2))
  {
    goto LABEL_18;
  }

LABEL_13:
  v109 = 0;
  v110 = 0;
  v111 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v108 = 0;
  sub_239EE20E0(a1, &v109, a2, __p);
  v14 = HIBYTE(v108);
  if (v108 < 0)
  {
    v14 = __p[1];
  }

  if (!v14)
  {
    memset(v119, 0, sizeof(v119));
    memset(v118, 0, sizeof(v118));
    memset(v117, 0, sizeof(v117));
    if (v111 < 0)
    {
      if (v110 != 5 || (*v109 == 1768125281 ? (v17 = *(v109 + 4) == 105) : (v17 = 0), !v17))
      {
        if (v110 == 20)
        {
          v18 = *v109 == 0x6C5F7972616E6962 && *(v109 + 1) == 0x6E655F656C747469;
          if (v18 && *(v109 + 4) == 1851877732)
          {
LABEL_72:
            v120.__locale_ = &unk_284D17DF8;
            v121 = sub_239EE42D4;
            v122 = &v120;
            sub_239EE8A90(&v120, v119);
            v31 = sub_239EE88FC(&v120);
            v120.__locale_ = &unk_284D17EA8;
            v121 = sub_239EE43F8;
            v122 = &v120;
            sub_239EE8A90(v31, v118);
            v29 = sub_239EE88FC(&v120);
            v120.__locale_ = &unk_284D17EA8;
            v30 = sub_239EE4538;
            goto LABEL_73;
          }
        }

        if (v110 != 17)
        {
LABEL_63:
          sub_239E552A0(a3, "Parse PLY: Bad format");
          goto LABEL_64;
        }

        v20 = v109;
LABEL_50:
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v20 + 16);
        if (v21 != 0x625F7972616E6962 || v22 != 0x6169646E655F6769 || v23 != 110)
        {
          goto LABEL_63;
        }

        sub_239EE40A0(v119, sub_239EE4578);
        sub_239EE4204(v118, sub_239EE46AC);
        sub_239EE4204(v117, sub_239EE47FC);
        goto LABEL_74;
      }
    }

    else
    {
      if (HIBYTE(v111) != 5)
      {
        if (HIBYTE(v111) != 17)
        {
          if (HIBYTE(v111) != 20)
          {
            goto LABEL_63;
          }

          v15 = v109 == 0x6C5F7972616E6962 && v110 == 0x6E655F656C747469;
          if (!v15 || v111 != 1851877732)
          {
            goto LABEL_63;
          }

          goto LABEL_72;
        }

        v20 = &v109;
        goto LABEL_50;
      }

      if (v109 != 1768125281 || BYTE4(v109) != 105)
      {
        goto LABEL_63;
      }
    }

    v120.__locale_ = &unk_284D17DF8;
    v121 = sub_239EE3FD0;
    v122 = &v120;
    sub_239EE8A90(&v120, v119);
    v28 = sub_239EE88FC(&v120);
    v120.__locale_ = &unk_284D17EA8;
    v121 = sub_239EE4130;
    v122 = &v120;
    sub_239EE8A90(v28, v118);
    v29 = sub_239EE88FC(&v120);
    v120.__locale_ = &unk_284D17EA8;
    v30 = sub_239EE4294;
LABEL_73:
    v121 = v30;
    v122 = &v120;
    sub_239EE8A90(v29, v117);
    sub_239EE88FC(&v120);
LABEL_74:
    v32 = a1[7];
    v101 = a1[8];
    if (v32 == v101)
    {
LABEL_180:
      sub_239E552A0(a3, "");
LABEL_64:
      sub_239EE88FC(v117);
      sub_239EE88FC(v118);
      sub_239EE88FC(v119);
      if (SHIBYTE(v108) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_66;
    }

    while (1)
    {
      v33 = *(v32 + 48);
      if (v33 >> 28)
      {
        sub_239E552A0(a3, "Parse PLY: Element has invalid count");
        goto LABEL_64;
      }

      v34 = (v32 + 24);
      v103 = v32;
      if (*(v32 + 47) < 0)
      {
        if (*(v32 + 32) != 6 || (**v34 == 1953654134 ? (v37 = *(*v34 + 4) == 30821) : (v37 = 0), !v37))
        {
          if (*(v32 + 32) == 4)
          {
            v34 = *v34;
LABEL_92:
            if (*v34 == 1701011814)
            {
              sub_239E95D48(a1 + 19, 3 * v33);
              sub_239E95D48(a1 + 22, *(v32 + 48));
              v48 = *(v32 + 48);
              if (!v48)
              {
                goto LABEL_179;
              }

              v49 = 0;
              while (1)
              {
                v50 = *v32;
                v102 = *(v32 + 8);
                if (*v32 != v102)
                {
                  break;
                }

LABEL_140:
                if (++v49 >= v48)
                {
                  goto LABEL_179;
                }
              }

              v100 = v49;
              while (1)
              {
                if (*v50 == 9)
                {
                  sub_239EE3224(v119, a2, v50[2]);
                  v52 = v51;
                  if (v51 > 0x400)
                  {
                    sub_239E552A0(a3, "Parse PLY: Property list has invalid number of elements");
                    goto LABEL_64;
                  }

                  v53 = v51;
                  if (v52)
                  {
                    do
                    {
                      sub_239EE3224(v119, a2, v50[1]);
                      v55 = v54;
                      v57 = a1[20];
                      v56 = a1[21];
                      if (v57 >= v56)
                      {
                        v59 = a1[19];
                        v60 = v57 - v59;
                        v61 = (v57 - v59) >> 2;
                        v62 = v61 + 1;
                        if ((v61 + 1) >> 62)
                        {
                          sub_239E797B4();
                        }

                        v63 = v56 - v59;
                        if (v63 >> 1 > v62)
                        {
                          v62 = v63 >> 1;
                        }

                        v64 = v63 >= 0x7FFFFFFFFFFFFFFCLL;
                        v65 = 0x3FFFFFFFFFFFFFFFLL;
                        if (!v64)
                        {
                          v65 = v62;
                        }

                        if (v65)
                        {
                          sub_239E79984((a1 + 19), v65);
                        }

                        v66 = (v57 - v59) >> 2;
                        v67 = (4 * v61);
                        v68 = (4 * v61 - 4 * v66);
                        *v67 = v55;
                        v58 = v67 + 1;
                        memcpy(v68, v59, v60);
                        v69 = a1[19];
                        a1[19] = v68;
                        a1[20] = v58;
                        a1[21] = 0;
                        if (v69)
                        {
                          operator delete(v69);
                        }
                      }

                      else
                      {
                        *v57 = v55;
                        v58 = v57 + 1;
                      }

                      a1[20] = v58;
                      --v53;
                    }

                    while (v53);
                  }

                  v71 = a1[23];
                  v70 = a1[24];
                  v32 = v103;
                  v49 = v100;
                  if (v71 >= v70)
                  {
                    v75 = a1[22];
                    v76 = v71 - v75;
                    v77 = (v71 - v75) >> 2;
                    v78 = v77 + 1;
                    if ((v77 + 1) >> 62)
                    {
                      sub_239E797B4();
                    }

                    v79 = v70 - v75;
                    if (v79 >> 1 > v78)
                    {
                      v78 = v79 >> 1;
                    }

                    v64 = v79 >= 0x7FFFFFFFFFFFFFFCLL;
                    v80 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v64)
                    {
                      v80 = v78;
                    }

                    if (v80)
                    {
                      sub_239E79984((a1 + 22), v80);
                    }

                    v81 = (v71 - v75) >> 2;
                    v82 = (4 * v77);
                    v83 = (4 * v77 - 4 * v81);
                    *v82 = v52;
                    v72 = v82 + 1;
                    memcpy(v83, v75, v76);
                    v84 = a1[22];
                    a1[22] = v83;
                    a1[23] = v72;
                    a1[24] = 0;
                    if (v84)
                    {
                      operator delete(v84);
                    }
                  }

                  else
                  {
                    *v71 = v52;
                    v72 = v71 + 1;
                  }

                  a1[23] = v72;
                }

                else
                {
                  v73 = sub_239EE8E74(v115, v119);
                  v74 = sub_239EE3194(v73, v50, a2, v115);
                  sub_239EE88FC(v115);
                  if ((v74 & 1) == 0)
                  {
                    goto LABEL_127;
                  }
                }

                v50 += 3;
                if (v50 == v102)
                {
                  v48 = *(v32 + 48);
                  goto LABEL_140;
                }
              }
            }
          }

LABEL_93:
          if (!v33)
          {
            goto LABEL_179;
          }

          v38 = 0;
          while (1)
          {
            v39 = *v32;
            v40 = *(v32 + 8);
            if (*v32 != v40)
            {
              break;
            }

LABEL_99:
            if (++v38 >= v33)
            {
              goto LABEL_179;
            }
          }

          while (1)
          {
            v41 = sub_239EE8E74(v114, v119);
            v42 = sub_239EE3194(v41, v39, a2, v114);
            sub_239EE88FC(v114);
            if ((v42 & 1) == 0)
            {
              break;
            }

            v39 += 12;
            if (v39 == v40)
            {
              v33 = *(v32 + 48);
              goto LABEL_99;
            }
          }

LABEL_127:
          sub_239E552A0(a3, "Parse PLY: Unknown property");
          goto LABEL_64;
        }
      }

      else
      {
        v35 = *(v32 + 47);
        if (v35 == 4)
        {
          goto LABEL_92;
        }

        if (v35 != 6)
        {
          goto LABEL_93;
        }

        if (*v34 != 1953654134 || *(v32 + 28) != 30821)
        {
          goto LABEL_93;
        }
      }

      v43 = *v32;
      v44 = *(v32 + 8);
      if (*v32 == v44)
      {
        v46 = 0;
        v45 = 0;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        do
        {
          v47 = *v43;
          v43 += 3;
          v45 |= v47 == 3;
          v46 |= v47 == 6;
        }

        while (v43 != v44);
      }

      sub_239EE483C(a1 + 10, v33);
      if (v45)
      {
        sub_239EE483C(a1 + 13, *(v32 + 48));
      }

      if (v46)
      {
        sub_239EE483C(a1 + 16, *(v32 + 48));
      }

      LODWORD(v121) = 0;
      v120.__locale_ = 0;
      v104 = 0;
      v105 = 0;
      v106 = 1065353216;
      if (*(v32 + 48))
      {
        break;
      }

LABEL_179:
      v32 += 56;
      if (v32 == v101)
      {
        goto LABEL_180;
      }
    }

    v85 = 0;
LABEL_149:
    v86 = *v32;
    v87 = *(v32 + 8);
    while (1)
    {
      if (v86 == v87)
      {
        sub_239EE4964(a1 + 10, &v120);
        if (v45)
        {
          sub_239EE4964(a1 + 13, &v105 + 4);
        }

        if (v46)
        {
          sub_239EE4964(a1 + 16, &v104);
        }

        ++v85;
        v32 = v103;
        if (v85 >= *(v103 + 48))
        {
          goto LABEL_179;
        }

        goto LABEL_149;
      }

      v88 = *v86;
      if (*v86 <= 3)
      {
        if (v88 > 1)
        {
          if (v88 == 2)
          {
            sub_239EE3224(v118, a2, v86[1]);
            LODWORD(v121) = v94;
            goto LABEL_173;
          }

          if (v88 == 3)
          {
            sub_239EE3224(v118, a2, v86[1]);
            HIDWORD(v105) = v91;
            goto LABEL_173;
          }
        }

        else
        {
          if (!v88)
          {
            sub_239EE3224(v118, a2, v86[1]);
            LODWORD(v120.__locale_) = v93;
            goto LABEL_173;
          }

          if (v88 == 1)
          {
            sub_239EE3224(v118, a2, v86[1]);
            HIDWORD(v120.__locale_) = v90;
            goto LABEL_173;
          }
        }
      }

      else if (v88 <= 5)
      {
        if (v88 == 4)
        {
          sub_239EE3224(v118, a2, v86[1]);
          LODWORD(v106) = v96;
          goto LABEL_173;
        }

        if (v88 == 5)
        {
          sub_239EE3224(v118, a2, v86[1]);
          HIDWORD(v106) = v92;
          goto LABEL_173;
        }
      }

      else
      {
        switch(v88)
        {
          case 6:
            sub_239EE3224(v117, a2, v86[1]);
            LODWORD(v104) = v95;
            goto LABEL_173;
          case 7:
            sub_239EE3224(v117, a2, v86[1]);
            HIDWORD(v104) = v97;
            goto LABEL_173;
          case 8:
            sub_239EE3224(v117, a2, v86[1]);
            LODWORD(v105) = v89;
            goto LABEL_173;
        }
      }

      v98 = sub_239EE8E74(v116, v119);
      v99 = sub_239EE3194(v98, v86, a2, v116);
      sub_239EE88FC(v116);
      if ((v99 & 1) == 0)
      {
        goto LABEL_127;
      }

LABEL_173:
      v86 += 3;
    }
  }

  *a3 = *__p;
  *(a3 + 16) = v108;
LABEL_66:
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

LABEL_68:
  if (SHIBYTE(v113) < 0)
  {
    operator delete(v112[0]);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_239EE3E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_239EE88FC(&a46);
  sub_239EE88FC(v46 - 208);
  sub_239EE88FC(v46 - 176);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void *sub_239EE3F14(void *a1, uint64_t a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v7);
  return sub_239EE8088(a1, a2, v5);
}

uint64_t sub_239EE3FD0(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return v2;
        }

        goto LABEL_10;
      }

LABEL_11:
      LODWORD(v4) = 0;
      MEMORY[0x23EE800A0](a1, &v4);
      return LODWORD(v4);
    }

    if (a2 == 2)
    {
      goto LABEL_11;
    }

LABEL_10:
    LODWORD(v4) = 0;
    MEMORY[0x23EE800B0](a1, &v4);
    return LODWORD(v4);
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 == 6)
  {
    LODWORD(v4) = 0;
    MEMORY[0x23EE80090](a1, &v4);
    return *&v4;
  }

  else if (a2 == 7)
  {
    v4 = 0.0;
    MEMORY[0x23EE80080](a1, &v4);
    return v4;
  }

  return v2;
}

void *sub_239EE40A0(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_284D17DF8;
  v5[1] = a2;
  v5[3] = v5;
  sub_239EE8A90(v5, a1);
  sub_239EE88FC(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

float sub_239EE4130(uint64_t a1, int a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return a3.n128_f32[0];
        }

        goto LABEL_10;
      }

LABEL_11:
      LODWORD(v4) = 0;
      MEMORY[0x23EE800A0](a1, &v4, a3);
      a3.n128_f32[0] = SLODWORD(v4);
      return a3.n128_f32[0];
    }

    if (a2 == 2)
    {
      goto LABEL_11;
    }

LABEL_10:
    LODWORD(v4) = 0;
    MEMORY[0x23EE800B0](a1, &v4, a3);
    a3.n128_f32[0] = LODWORD(v4);
    return a3.n128_f32[0];
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 == 7)
  {
    v4 = 0.0;
    MEMORY[0x23EE80080](a1, &v4, 0.0);
    a3.n128_f32[0] = v4;
  }

  else if (a2 == 6)
  {
    LODWORD(v4) = 0;
    MEMORY[0x23EE80090](a1, &v4, 0.0);
    a3.n128_u32[0] = LODWORD(v4);
  }

  return a3.n128_f32[0];
}

void *sub_239EE4204(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_284D17EA8;
  v5[1] = a2;
  v5[3] = v5;
  sub_239EE8A90(v5, a1);
  sub_239EE88FC(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

float sub_239EE4294(uint64_t a1, unsigned int a2, __n128 a3)
{
  if (a2 <= 5)
  {
    return sub_239EE3FD0(a1, a2) * 0.0039216;
  }

  return sub_239EE4130(a1, a2, a3);
}

uint64_t sub_239EE42D4(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
LABEL_5:
      std::istream::read();
      return 0;
    }

    if (a2 == 6)
    {
      std::istream::read();
      return 0.0;
    }

    else if (a2 == 7)
    {
      std::istream::read();
      return 0.0;
    }
  }

  else if (a2 >= 0)
  {
    goto LABEL_5;
  }

  return v2;
}

float sub_239EE43F8(uint64_t a1, int a2)
{
  result = 0.0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return result;
        }

        std::istream::read();
        LOBYTE(v3) = 0;
        return v3;
      }

      goto LABEL_15;
    }

    if (a2 != 2)
    {
      std::istream::read();
      LOWORD(v3) = 0;
      return v3;
    }

    goto LABEL_15;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      std::istream::read();
      return 0;
    }

LABEL_15:
    std::istream::read();
    return 0;
  }

  if (a2 == 7)
  {
    std::istream::read();
    return 0.0;
  }

  else if (a2 == 6)
  {
    std::istream::read();
    return 0.0;
  }

  return result;
}

float sub_239EE4538(uint64_t a1, unsigned int a2)
{
  if (a2 <= 5)
  {
    return sub_239EE42D4(a1, a2) * 0.0039216;
  }

  return sub_239EE43F8(a1, a2);
}

uint64_t sub_239EE4578(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        std::istream::read();
        return COERCE_FLOAT(bswap32(0));
      }

      else if (a2 == 7)
      {
        return sub_239EE7E0C();
      }
    }

    else
    {
      std::istream::read();
      return bswap32(0);
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        std::istream::read();
        return __rev16(0);
      }

      goto LABEL_4;
    }

    if (a2 <= 1)
    {
LABEL_4:
      std::istream::read();
      return 0;
    }
  }

  return v2;
}

float sub_239EE46AC(uint64_t a1, int a2)
{
  result = 0.0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          std::istream::read();
          LOBYTE(v3) = 0;
          return v3;
        }

        return result;
      }

      std::istream::read();
      return 0;
    }

    if (a2 == 2)
    {
      std::istream::read();
      return (bswap32(0) >> 16);
    }

    std::istream::read();
    return (bswap32(0) >> 16);
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      std::istream::read();
      return bswap32(0);
    }

    std::istream::read();
    return bswap32(0);
  }

  if (a2 == 7)
  {
    return sub_239EE7E0C();
  }

  if (a2 == 6)
  {
    std::istream::read();
    return COERCE_FLOAT(bswap32(0));
  }

  return result;
}

float sub_239EE47FC(uint64_t a1, unsigned int a2)
{
  if (a2 <= 5)
  {
    return sub_239EE4578(a1, a2) * 0.0039216;
  }

  return sub_239EE46AC(a1, a2);
}

void *sub_239EE483C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_239E95B5C(result, a2);
    }

    sub_239E797B4();
  }

  return result;
}

void sub_239EE4914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EE4964(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239EE8F0C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 12;
  }

  a1[1] = result;
  return result;
}

void sub_239EE49B4(uint64_t *a1, void *a2, void *a3)
{
  v168[1] = *MEMORY[0x277D85DE8];
  v163 = a2;
  v159 = a3;
  v5 = objc_alloc_init(MDLVertexDescriptor);
  v8 = objc_msgSend_attributes(v5, v6, v7);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, 0);
  objc_msgSend_setName_(v10, v11, @"position");

  v14 = objc_msgSend_attributes(v5, v12, v13);
  v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);
  objc_msgSend_setFormat_(v16, v17, 786435);

  v20 = objc_msgSend_attributes(v5, v18, v19);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
  objc_msgSend_setBufferIndex_(v22, v23, 0);

  if (a1[14] != a1[13])
  {
    v26 = objc_msgSend_attributes(v5, v24, v25);
    v28 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, 1);
    objc_msgSend_setName_(v28, v29, @"normal");

    v32 = objc_msgSend_attributes(v5, v30, v31);
    v34 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, 1);
    objc_msgSend_setFormat_(v34, v35, 786435);

    v38 = objc_msgSend_attributes(v5, v36, v37);
    v40 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, 1);
    objc_msgSend_setBufferIndex_(v40, v41, 0);
  }

  if (a1[17] != a1[16])
  {
    v42 = objc_msgSend_attributes(v5, v24, v25);
    v44 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 2);
    objc_msgSend_setName_(v44, v45, @"color");

    v48 = objc_msgSend_attributes(v5, v46, v47);
    v50 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, 2);
    objc_msgSend_setFormat_(v50, v51, 786435);

    v54 = objc_msgSend_attributes(v5, v52, v53);
    v56 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, 2);
    objc_msgSend_setBufferIndex_(v56, v57, 0);
  }

  objc_msgSend_setPackedOffsets(v5, v24, v25);
  objc_msgSend_setPackedStrides(v5, v58, v59);
  v61 = a1[10];
  v60 = a1[11];
  v64 = objc_msgSend_layouts(v5, v62, v63);
  v66 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 0);
  v160 = objc_msgSend_stride(v66, v67, v68);

  __p = 0;
  v166 = 0;
  v167 = 0;
  sub_239E95D48(&__p, (a1[20] - a1[19]) >> 2);
  v70 = a1[19];
  v69 = a1[20];
  sub_239E95D48(&__p, (a1[11] - a1[10]) >> 2);
  if (v69 == v70)
  {
    v164 = 0;
    if (a1[11] != a1[10])
    {
      do
      {
        sub_239E73254(&__p, &v164);
        ++v164;
      }

      while (v164 < ((a1[11] - a1[10]) >> 2));
    }

    v156 = 0;
  }

  else
  {
    v71 = a1[22];
    v72 = a1[23];
    if (v71 == v72)
    {
      v156 = 2;
    }

    else
    {
      v73 = 0;
      v156 = 2;
      v157 = v60;
      do
      {
        v74 = *v71;
        if (*v71 >= 3)
        {
          v76 = 0;
          v77 = 4 * v73;
          v75 = v73;
          do
          {
            v78 = a1[19];
            if (v75 >= (a1[20] - v78) >> 2)
            {
              break;
            }

            sub_239E73254(&__p, (v78 + v77));
            if (v76 >= 3)
            {
              sub_239E73254(&__p, (a1[19] + 4 * v73));
              sub_239E73254(&__p, (a1[19] + v77 - 4));
            }

            ++v75;
            v77 += 4;
            ++v76;
          }

          while (v74 != v76);
        }

        else
        {
          v75 = v73 + v74;
        }

        ++v71;
        v73 = v75;
      }

      while (v71 != v72);
      v60 = v157;
    }
  }

  v154 = __p;
  v155 = v166;
  v79 = objc_alloc(MEMORY[0x277CBEB28]);
  v80 = (0xAAAAAAAAAAAAAAABLL * ((v60 - v61) >> 2));
  v81 = v160 * v80;
  v83 = objc_msgSend_initWithLength_(v79, v82, v160 * v80);
  v84 = objc_alloc_init(MDLVertexAttribute);
  objc_msgSend_setFormat_(v84, v85, 786435);
  objc_msgSend_setBufferIndex_(v84, v86, 0);
  objc_msgSend_setOffset_(v84, v87, 0);
  objc_msgSend_setName_(v84, v88, @"position");
  v162 = objc_alloc_init(MDLVertexAttribute);
  objc_msgSend_setFormat_(v162, v89, 786436);
  objc_msgSend_setBufferIndex_(v162, v90, 0);
  objc_msgSend_setOffset_(v162, v91, 0);
  objc_msgSend_setName_(v162, v92, @"color");
  v93 = v83;
  v96 = objc_msgSend_mutableBytes(v83, v94, v95);
  v99 = objc_msgSend_attributes(v5, v97, v98);
  v101 = objc_msgSend_objectAtIndexedSubscript_(v99, v100, 0);
  sub_239E70888(v96, v160, v101, a1[10], 0xC, v84, v80, v160 * v80, (a1[11] - a1[10]));

  if (a1[14] != a1[13])
  {
    objc_msgSend_setName_(v84, v102, @"normal");
    v104 = v83;
    v107 = objc_msgSend_mutableBytes(v83, v105, v106);
    v110 = objc_msgSend_attributes(v5, v108, v109);
    v112 = objc_msgSend_objectAtIndexedSubscript_(v110, v111, 1);
    sub_239E70888(v107, v160, v112, a1[13], 0xC, v84, v80, v81, (a1[14] - a1[13]));
  }

  if (a1[17] != a1[16])
  {
    v113 = v83;
    v116 = objc_msgSend_mutableBytes(v83, v114, v115);
    v119 = objc_msgSend_attributes(v5, v117, v118);
    v121 = objc_msgSend_objectAtIndexedSubscript_(v119, v120, 2);
    sub_239E70888(v116, v160, v121, a1[16], 0xC, v162, v80, v81, (a1[17] - a1[16]));
  }

  v122 = objc_msgSend_bufferAllocator(v163, v102, v103);
  v158 = objc_msgSend_newBufferFromZone_data_type_(v122, v123, 0, v83, 1);

  v124 = objc_alloc(MEMORY[0x277CBEA90]);
  v161 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v124, v125, __p, v155 - v154, 0);
  v128 = objc_msgSend_bufferAllocator(v163, v126, v127);
  v130 = objc_msgSend_newBufferFromZone_data_type_(v128, v129, 0, v161, 2);

  v131 = [MDLSubmesh alloc];
  v132 = __p;
  v133 = v166;
  v134 = [MDLMaterial alloc];
  v135 = objc_opt_new();
  v137 = objc_msgSend_initWithName_scatteringFunction_(v134, v136, @"PLY Material", v135);
  v139 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v131, v138, v130, (v133 - v132) >> 2, 32, v156, v137);

  v140 = [MDLMesh alloc];
  v168[0] = v139;
  v142 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v141, v168, 1);
  v144 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v140, v143, v158, v80, v5, v142);

  v147 = objc_msgSend_vertexDescriptor(v163, v145, v146);
  LOBYTE(v142) = v147 == 0;

  if ((v142 & 1) == 0)
  {
    v150 = objc_msgSend_vertexDescriptor(v163, v148, v149);
    objc_msgSend_setVertexDescriptor_(v144, v151, v150);
  }

  objc_msgSend_setName_(v144, v148, v159);
  objc_msgSend_addObject_(v163, v152, v144);

  if (__p)
  {
    v166 = __p;
    operator delete(__p);
  }

  v153 = *MEMORY[0x277D85DE8];
}

void sub_239EE51B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EE5374(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v32[19] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (sub_239F5C490(v7, v9, v10))
  {
    v13 = objc_msgSend_path(v7, v11, v12);
    v14 = v13;
    if (v13)
    {
      v28[0] = 0;
      v28[1] = 0;
      v29 = 0;
      v15 = v13;
      v17 = objc_msgSend_cStringUsingEncoding_(v15, v16, 4);
      sub_239E552A0(v28, v17);
      bzero(v30, 0x240uLL);
      sub_239EE5698(v30);
      if (v31[15])
      {
        __p[0] = 0;
        __p[1] = 0;
        v27 = 0;
        sub_239EE3278(a1, v30, __p);
        v20 = HIBYTE(v27);
        if (v27 < 0)
        {
          v20 = __p[1];
        }

        if (v20)
        {
          *a4 = *__p;
          *(a4 + 16) = v27;
        }

        else
        {
          v21 = objc_msgSend_URLByDeletingPathExtension(v7, v18, v19);
          v24 = objc_msgSend_lastPathComponent(v21, v22, v23);
          sub_239EE49B4(a1, v8, v24);

          sub_239E552A0(a4, "");
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        sub_239E552A0(a4, "Could not open PLY file");
      }

      v30[0] = *MEMORY[0x277D82808];
      *(v30 + *(v30[0] - 24)) = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x23EE80040](v31);
      std::istream::~istream();
      MEMORY[0x23EE80250](v32);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }
    }

    else
    {
      sub_239E552A0(a4, "Could not open PLY file: Incorrect URL");
    }
  }

  else
  {
    sub_239E552A0(a4, "Could not find PLY file");
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_239EE560C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_239EE585C(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_239EE5698(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x23EE80030](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_239EE5824(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

void *sub_239EE585C(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x23EE80040](a1 + 2);
  std::istream::~istream();
  MEMORY[0x23EE80250](a1 + 53);
  return a1;
}

void sub_239EE5928(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v285 = *MEMORY[0x277D85DE8];
  v245 = a2;
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    sub_239E552A0(a4, "");
    goto LABEL_138;
  }

  v279 = 0;
  v278 = 0;
  v280 = 0;
  v274 = 0u;
  v275 = 0u;
  v276 = 0u;
  v277 = 0u;
  v9 = v7;
  v258 = v8;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v274, v284, 16);
  if (v11)
  {
    v12 = *v275;
    v13 = MEMORY[0x277D860B8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v275 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v274 + 1) + 8 * i);
        sub_239F5C680(a1, &v278, v15, *v13, v13[1], v13[2], v13[3]);
        sub_239F5CA38(a1, &v278, v15, *v13, v13[1], v13[2], v13[3]);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v274, v284, 16);
    }

    while (v11);
  }

  *v246 = a4;

  memset(&__str, 0, sizeof(__str));
  sub_239E5663C(v245, v17, v18, &__str);
  v19 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
  v20 = a4;
  if (v19 != -1)
  {
    std::string::basic_string(&v281, &__str, 0, v19, &v265);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v281;
  }

  v21 = v278;
  v255 = v279;
  v8 = v258;
  if (v278 == v279)
  {
    goto LABEL_133;
  }

  LODWORD(v22) = 0;
  v23 = *(MEMORY[0x277D82810] + 16);
  v253 = v23;
  v254 = *(MEMORY[0x277D82810] + 8);
  v251 = *(MEMORY[0x277D82810] + 24);
  v252 = *MEMORY[0x277D82810];
  v24 = *(MEMORY[0x277D82818] + 64);
  v249 = v24;
  v250 = *MEMORY[0x277D82818];
  v248 = *(MEMORY[0x277D82818] + 72);
  do
  {
    v272 = 0;
    v270 = 0u;
    memset(v271, 0, sizeof(v271));
    *v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    memset(v267, 0, sizeof(v267));
    v265 = 0u;
    sub_239EE76F8(&v265);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    sub_239E98B94(&v266, p_str, size);
    v22 = (v22 + 1);
    if (0xCCCCCCCCCCCCCCCDLL * ((v279 - v278) >> 4) >= 2)
    {
      v27 = sub_239E98B94(&v266, "_", 1);
      MEMORY[0x23EE80140](v27, v22);
    }

    sub_239E98B94(&v266, ".ply", 4);
    v28 = MEMORY[0x277D82860] + 64;
    bzero(&v281.__r_.__value_.__r.__words[1], 0x230uLL);
    v283[0] = v28;
    v281.__r_.__value_.__r.__words[0] = v254;
    *(v281.__r_.__value_.__r.__words + *(v254 - 24)) = v253;
    v29 = (&v281 + *(v281.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v29, &v281.__r_.__value_.__r.__words[1]);
    v30 = MEMORY[0x277D82860] + 24;
    v29[1].__vftable = 0;
    v29[1].__fmtflags_ = -1;
    v281.__r_.__value_.__r.__words[0] = v30;
    v283[0] = v28;
    MEMORY[0x23EE80030](&v281.__r_.__value_.__r.__words[1]);
    std::stringbuf::str();
    std::ofstream::open();
    if (v264 < 0)
    {
      operator delete(__p[0]);
    }

    v259 = *&v282[*(v281.__r_.__value_.__r.__words[0] - 24)] & 5;
    if (v259)
    {
      sub_239E552A0(v20, "Failed to open file path.");
      goto LABEL_129;
    }

    v31 = sub_239E98B94(&v281, "ply ", 4);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v32 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v33 = sub_239E98B94(v31, "format ascii 1.0", 16);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v37 = objc_msgSend_name(*(v21 + 64), v35, v36);
    v257 = v22;
    v38 = v37 == 0;

    if (v38)
    {
      v52 = sub_239E98B94(&v281, "comment object: submesh", 23);
      v53 = MEMORY[0x23EE80140](v52, v257);
      std::ios_base::getloc((v53 + *(*v53 - 24)));
      v54 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v54->__vftable[2].~facet_0)(v54, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
    }

    else
    {
      v39 = sub_239E98B94(&v281, "comment object: ", 16);
      v42 = objc_msgSend_name(*(v21 + 64), v40, v41);
      v43 = v42;
      v46 = objc_msgSend_UTF8String(v42, v44, v45);
      v47 = strlen(v46);
      v48 = sub_239E98B94(v39, v46, v47);
      v49 = MEMORY[0x23EE80140](v48, v257);
      std::ios_base::getloc((v49 + *(*v49 - 24)));
      v50 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v50->__vftable[2].~facet_0)(v50, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
    }

    v247 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(*(v21 + 64), v51, @"normal", 786435);
    v57 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(*(v21 + 64), v55, @"occlusionValue", 786435);
    if (!v57)
    {
      v57 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(*(v21 + 64), v56, @"color", 786435);
    }

    v58 = sub_239E98B94(&v281, "element vertex ", 15);
    v61 = objc_msgSend_vertexCount(*(v21 + 64), v59, v60);
    v62 = MEMORY[0x23EE80160](v58, v61);
    std::ios_base::getloc((v62 + *(*v62 - 24)));
    v63 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v63->__vftable[2].~facet_0)(v63, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v64 = sub_239E98B94(&v281, "property float x", 16);
    std::ios_base::getloc((v64 + *(*v64 - 24)));
    v65 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v65->__vftable[2].~facet_0)(v65, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v66 = sub_239E98B94(v64, "property float y", 16);
    std::ios_base::getloc((v66 + *(*v66 - 24)));
    v67 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v67->__vftable[2].~facet_0)(v67, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v68 = sub_239E98B94(v66, "property float z", 16);
    std::ios_base::getloc((v68 + *(*v68 - 24)));
    v69 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v69->__vftable[2].~facet_0)(v69, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    if (v57)
    {
      v72 = sub_239E98B94(&v281, "property uchar red", 18);
      std::ios_base::getloc((v72 + *(*v72 - 24)));
      v73 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v73->__vftable[2].~facet_0)(v73, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      v74 = sub_239E98B94(v72, "property uchar green", 20);
      std::ios_base::getloc((v74 + *(*v74 - 24)));
      v75 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v75->__vftable[2].~facet_0)(v75, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      v76 = sub_239E98B94(v74, "property uchar blue", 19);
      std::ios_base::getloc((v76 + *(*v76 - 24)));
      v77 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
      (v77->__vftable[2].~facet_0)(v77, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
    }

    v260 = v57;
    if (objc_msgSend_geometryType(*(v21 + 72), v70, v71) == 2)
    {
      v80 = sub_239E98B94(&v281, "element face ", 13);
      v83 = objc_msgSend_indexCount(*(v21 + 72), v81, v82) / 3uLL;
LABEL_46:
      MEMORY[0x23EE80160](v80, v83);
      goto LABEL_47;
    }

    if (objc_msgSend_geometryType(*(v21 + 72), v78, v79) == 4)
    {
      v80 = sub_239E98B94(&v281, "element face ", 13);
      v83 = objc_msgSend_indexCount(*(v21 + 72), v86, v87) >> 2;
      goto LABEL_46;
    }

    if (objc_msgSend_geometryType(*(v21 + 72), v84, v85) == 1)
    {
      v80 = sub_239E98B94(&v281, "element face ", 13);
      v83 = objc_msgSend_indexCount(*(v21 + 72), v90, v91) >> 1;
      goto LABEL_46;
    }

    if (!objc_msgSend_geometryType(*(v21 + 72), v88, v89))
    {
      v80 = sub_239E98B94(&v281, "element face ", 13);
      v83 = objc_msgSend_indexCount(*(v21 + 72), v111, v112);
      goto LABEL_46;
    }

    if (objc_msgSend_geometryType(*(v21 + 72), v92, v93) == 5)
    {
      v98 = objc_msgSend_topology(*(v21 + 72), v94, v95);
      if (v98)
      {
        v99 = objc_msgSend_topology(*(v21 + 72), v96, v97);
        v102 = objc_msgSend_faceTopology(v99, v100, v101);
        v103 = v102 == 0;

        if (!v103)
        {
          v104 = sub_239E98B94(&v281, "element face ", 13);
          v107 = objc_msgSend_topology(*(v21 + 72), v105, v106);
          v110 = objc_msgSend_faceCount(v107, v108, v109);
          MEMORY[0x23EE80160](v104, v110);
        }
      }
    }

LABEL_47:
    std::ios_base::getloc((&v281 + *(v281.__r_.__value_.__r.__words[0] - 24)));
    v113 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v113->__vftable[2].~facet_0)(v113, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v114 = sub_239E98B94(&v281, "property list uchar int vertex_index", 36);
    std::ios_base::getloc((v114 + *(*v114 - 24)));
    v115 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v115->__vftable[2].~facet_0)(v115, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v116 = sub_239E98B94(v114, "end_header", 10);
    std::ios_base::getloc((v116 + *(*v116 - 24)));
    v117 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v117->__vftable[2].~facet_0)(v117, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v119 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(*(v21 + 64), v118, @"position", 786435);
    v122 = objc_msgSend_dataStart(v119, v120, v121);
    v127 = objc_msgSend_stride(v119, v123, v124);
    if (!v57)
    {
      v128 = 0;
      v131 = 0;
LABEL_56:
      v135 = 255.0;
      goto LABEL_58;
    }

    v128 = objc_msgSend_stride(v57, v125, v126);
    v131 = objc_msgSend_dataStart(v57, v129, v130);
    if (objc_msgSend_bufferSize(v57, v132, v133) < 0xC)
    {
      goto LABEL_56;
    }

    v134 = -1;
    while (++v134 < objc_msgSend_vertexCount(*(v21 + 64), v125, v126))
    {
      v135 = 1.0;
      if (*v131 > 1.0 || v131[1] > 1.0 || v131[2] > 1.0)
      {
        goto LABEL_58;
      }
    }

    v135 = 255.0;
LABEL_58:
    v136 = 0;
    v137 = 0;
    v138 = v131 + 2;
    while (v137 < objc_msgSend_vertexCount(*(v21 + 64), v125, v126))
    {
      if (v136 + 12 <= objc_msgSend_bufferSize(v119, v139, v140))
      {
        v261 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(*(v21 + 48), *v21, *(v122 + v136)), *(v21 + 16), *(v122 + v136 + 4)), *(v21 + 32), *(v122 + v136 + 8));
        v141 = std::ostream::operator<<();
        sub_239E98B94(v141, " ", 1);
        v142 = std::ostream::operator<<();
        sub_239E98B94(v142, " ", 1);
        std::ostream::operator<<();
        if (v57)
        {
          v143 = sub_239E98B94(&v281, " ", 1);
          v144 = MEMORY[0x23EE80140](v143, (*(v138 - 2) * v135));
          v145 = sub_239E98B94(v144, " ", 1);
          v146 = MEMORY[0x23EE80140](v145, (*(v138 - 1) * v135));
          v147 = sub_239E98B94(v146, " ", 1);
          MEMORY[0x23EE80140](v147, (*v138 * v135));
        }

        std::ios_base::getloc((&v281 + *(v281.__r_.__value_.__r.__words[0] - 24)));
        v148 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v148->__vftable[2].~facet_0)(v148, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v137;
      v138 = (v138 + v128);
      v136 += v127;
    }

    v149 = objc_msgSend_indexType(*(v21 + 72), v139, v140);
    v152 = objc_msgSend_indexBuffer(*(v21 + 72), v150, v151);
    v256 = objc_msgSend_map(v152, v153, v154);

    v157 = objc_msgSend_bytes(v256, v155, v156);
    if (objc_msgSend_geometryType(*(v21 + 72), v158, v159) == 2)
    {
      v162 = (v157 + 8);
      v163 = (v157 + 2);
      v164 = (v157 + 2);
      v165 = 2;
      while (objc_msgSend_indexCount(*(v21 + 72), v160, v161) > (v165 - 2))
      {
        switch(v149)
        {
          case 32:
            v166 = *(v162 - 2);
            v167 = *(v162 - 1);
            v168 = *v162;
            break;
          case 16:
            v166 = *(v163 - 1);
            v167 = *v163;
            v168 = v163[1];
            break;
          case 8:
            v166 = *(v164 - 2);
            v167 = *(v164 - 1);
            v168 = *v164;
            break;
          default:
            v166 = 0;
            v167 = 0;
            v168 = 0;
            break;
        }

        v169 = sub_239E98B94(&v281, "3 ", 2);
        v170 = MEMORY[0x23EE80140](v169, v166);
        v171 = sub_239E98B94(v170, " ", 1);
        v172 = MEMORY[0x23EE80140](v171, v167);
        v173 = sub_239E98B94(v172, " ", 1);
        v174 = MEMORY[0x23EE80140](v173, v168);
        std::ios_base::getloc((v174 + *(*v174 - 24)));
        v175 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v175->__vftable[2].~facet_0)(v175, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v165 += 3;
        v162 += 3;
        v164 += 3;
        v163 += 3;
      }

      goto LABEL_126;
    }

    if (objc_msgSend_geometryType(*(v21 + 72), v160, v161) == 4)
    {
      v178 = 0;
      v179 = 0;
      for (j = 0; ; j += 4)
      {
        if (objc_msgSend_indexCount(*(v21 + 72), v176, v177) <= j)
        {
          goto LABEL_126;
        }

        if (v149 == 32)
        {
          v182 = *(v157 + v178);
        }

        else if (v149 == 16)
        {
          v182 = vmovl_u16(*(v157 + v179));
        }

        else
        {
          v181.i32[1] = 0;
          v262 = 0u;
          if (v149 != 8)
          {
            goto LABEL_86;
          }

          v181.i32[0] = *(v157 + j);
          v182 = vmovl_u16(*&vmovl_u8(v181));
        }

        v262 = v182;
LABEL_86:
        v183 = sub_239E98B94(&v281, "4 ", 2);
        v184 = MEMORY[0x23EE80140](v183, v262.u32[0]);
        v185 = sub_239E98B94(v184, " ", 1);
        v186 = MEMORY[0x23EE80140](v185, v262.u32[1]);
        v187 = sub_239E98B94(v186, " ", 1);
        v188 = MEMORY[0x23EE80140](v187, v262.u32[2]);
        v189 = sub_239E98B94(v188, " ", 1);
        v190 = MEMORY[0x23EE80140](v189, v262.u32[3]);
        std::ios_base::getloc((v190 + *(*v190 - 24)));
        v191 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v191->__vftable[2].~facet_0)(v191, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v179 += 8;
        v178 += 16;
      }
    }

    if (objc_msgSend_geometryType(*(v21 + 72), v176, v177) == 1)
    {
      v194 = (v157 + 2);
      v195 = (v157 + 4);
      v196 = (v157 + 1);
      v197 = 1;
      while (objc_msgSend_indexCount(*(v21 + 72), v192, v193) > (v197 - 1))
      {
        switch(v149)
        {
          case 32:
            v198 = *(v195 - 1);
            v199 = *v195;
            break;
          case 16:
            v198 = *(v194 - 1);
            v199 = *v194;
            break;
          case 8:
            v198 = *(v196 - 1);
            v199 = *v196;
            break;
          default:
            v198 = 0;
            v199 = 0;
            break;
        }

        v200 = sub_239E98B94(&v281, "2 ", 2);
        v201 = MEMORY[0x23EE80140](v200, v198);
        v202 = sub_239E98B94(v201, " ", 1);
        v203 = MEMORY[0x23EE80140](v202, v199);
        std::ios_base::getloc((v203 + *(*v203 - 24)));
        v204 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v204->__vftable[2].~facet_0)(v204, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v197 += 2;
        v194 += 2;
        v195 += 2;
        v196 += 2;
      }

      goto LABEL_126;
    }

    if (!objc_msgSend_geometryType(*(v21 + 72), v192, v193))
    {
      for (k = 0; objc_msgSend_indexCount(*(v21 + 72), v205, v206) > k; ++k)
      {
        switch(v149)
        {
          case 32:
            v242 = *(v157 + 4 * k);
            break;
          case 16:
            v242 = *(v157 + 2 * k);
            break;
          case 8:
            v242 = *(v157 + k);
            break;
          default:
            v242 = 0;
            break;
        }

        v243 = sub_239E98B94(&v281, "1 ", 2);
        MEMORY[0x23EE80140](v243, v242);
      }

      goto LABEL_126;
    }

    if (objc_msgSend_geometryType(*(v21 + 72), v205, v206) == 5)
    {
      v211 = objc_msgSend_topology(*(v21 + 72), v207, v208);
      if (v211)
      {
        v212 = objc_msgSend_topology(*(v21 + 72), v209, v210);
        v215 = objc_msgSend_faceTopology(v212, v213, v214);
        v216 = v215 == 0;

        if (!v216)
        {
          v219 = objc_msgSend_topology(*(v21 + 72), v217, v218);
          v222 = objc_msgSend_faceTopology(v219, v220, v221);
          v225 = objc_msgSend_map(v222, v223, v224);

          v230 = objc_msgSend_bytes(v225, v226, v227);
          v231 = 0;
          v232 = 0;
          while (1)
          {
            v233 = objc_msgSend_topology(*(v21 + 72), v228, v229);
            v236 = objc_msgSend_faceCount(v233, v234, v235) > v231;

            if (!v236)
            {
              break;
            }

            v237 = *(v230 + v231);
            v238 = MEMORY[0x23EE80140](&v281, *(v230 + v231));
            sub_239E98B94(v238, " ", 1);
            for (; v237; --v237)
            {
              switch(v149)
              {
                case 32:
                  v239 = *(v157 + 4 * v232);
                  break;
                case 16:
                  v239 = *(v157 + 2 * v232);
                  break;
                case 8:
                  v239 = *(v157 + v232);
                  break;
                default:
                  v239 = 0;
                  goto LABEL_113;
              }

              ++v232;
LABEL_113:
              MEMORY[0x23EE80140](&v281, v239);
            }

            std::ios_base::getloc((&v281 + *(v281.__r_.__value_.__r.__words[0] - 24)));
            v240 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
            (v240->__vftable[2].~facet_0)(v240, 10);
            std::locale::~locale(__p);
            std::ostream::put();
            std::ostream::flush();
            ++v231;
          }
        }
      }
    }

LABEL_126:
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v281 + *(v281.__r_.__value_.__r.__words[0] - 24)), *&v282[*(v281.__r_.__value_.__r.__words[0] - 24)] | 4);
    }

    v20 = *v246;
    LODWORD(v22) = v257;
LABEL_129:
    v281.__r_.__value_.__r.__words[0] = v252;
    *(v281.__r_.__value_.__r.__words + *(v252 - 24)) = v251;
    MEMORY[0x23EE80040](&v281.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x23EE80250](v283);
    *&v265 = v250;
    *(&v265 + *(v250 - 24)) = v249;
    *&v266 = v248;
    *(&v266 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v269) < 0)
    {
      operator delete(v268[1]);
    }

    *(&v266 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v267);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v271);
    v8 = v258;
    if (v259)
    {
      goto LABEL_134;
    }

    v21 += 80;
  }

  while (v21 != v255);
LABEL_133:
  sub_239E552A0(v20, "");
LABEL_134:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v281.__r_.__value_.__r.__words[0] = &v278;
  sub_239E99B30(&v281);
LABEL_138:

  v244 = *MEMORY[0x277D85DE8];
}

void sub_239EE737C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _BYTE *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, std::locale a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_239EE7E70(&STACK[0x2A0], MEMORY[0x277D82810]);
  MEMORY[0x23EE80250](a15);
  sub_239EE7F38(&a41, MEMORY[0x277D82818]);
  MEMORY[0x23EE80250](&a57);
  if (a2 == 1)
  {
    v61 = __cxa_begin_catch(a1);
    v62 = (*(*v61 + 16))(v61);
    sub_239E552A0(a16, v62);
    __cxa_end_catch();
    JUMPOUT(0x239EE72FCLL);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  STACK[0x2A0] = &STACK[0x288];
  sub_239E99B30(&STACK[0x2A0]);

  _Unwind_Resume(a1);
}

uint64_t *sub_239EE76F8(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_239EE8484((a1 + 3), 24);
  return a1;
}

void sub_239EE7974(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

void sub_239EE799C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21[19] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = objc_msgSend_path(v5, v6, v7);
  v9 = v8;
  if (v8)
  {
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    v10 = v8;
    v12 = objc_msgSend_cStringUsingEncoding_(v10, v11, 4);
    sub_239E552A0(v17, v12);
    bzero(v19, 0x240uLL);
    sub_239EE5698(v19);
    if (v20[15])
    {
      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      sub_239EE3278(a1, v19, __p);
      v13 = HIBYTE(v16);
      if (v16 < 0)
      {
        v13 = __p[1];
      }

      if (v13)
      {
        *a3 = *__p;
        *(a3 + 16) = v16;
      }

      else
      {
        sub_239E552A0(a3, "");
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      sub_239E552A0(a3, "Could not open PLY file");
    }

    v19[0] = *MEMORY[0x277D82808];
    *(v19 + *(v19[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x23EE80040](v20);
    std::istream::~istream();
    MEMORY[0x23EE80250](v21);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    sub_239E552A0(a3, "Could not open PLY file: Incorrect URL");
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_239EE7BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_239EE585C(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EE7C30(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = a3;
  return a1;
}

void sub_239EE7C90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EE7CAC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_239EE7CF0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

double sub_239EE7E0C()
{
  v2 = *MEMORY[0x277D85DE8];
  std::istream::read();
  v0 = *MEMORY[0x277D85DE8];
  return COERCE_DOUBLE(bswap64(0));
}

uint64_t sub_239EE7E70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x23EE80040](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t sub_239EE7F38(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_239EE8088(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = 0;
  MEMORY[0x23EE80060](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_239EE81F0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x239EE81B0);
  }

  __cxa_rethrow();
}

void sub_239EE82E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE802C0](v1, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EE8310(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239EE8348(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EE8364(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D176C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_239EE83A4(void ***a1)
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
        v4 -= 56;
        sub_239EE842C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_239EE842C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t sub_239EE8484(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE80200](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_239E98A8C(a1);
  return a1;
}

void sub_239EE8518(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_239EE8540(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_239E797B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_239EE86B8(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(v7 + 48) = *(a2 + 48);
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = 56 * v2 + *a1 - v9;
  sub_239EE8714(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_239EE8880(&v15);
  return v14;
}

void sub_239EE86A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239EE8880(va);
  _Unwind_Resume(a1);
}

void sub_239EE86B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EE8714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v8 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v8;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      sub_239EE842C(a1, v5);
      v5 += 56;
    }
  }

  return sub_239EE87F4(v10);
}

uint64_t sub_239EE87F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EE882C(a1);
  }

  return a1;
}

void sub_239EE882C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_239EE842C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_239EE8880(void **a1)
{
  sub_239EE88B4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239EE88B4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_239EE842C(v4, i - 56);
  }
}

uint64_t sub_239EE88FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_239EE89EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D17DF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_239EE8A44(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17E78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_239EE8A90(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v6, 0, 24);
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239EE8CF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_239E797CC(a1);
}

uint64_t sub_239EE8D6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D17EA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_239EE8DAC(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_239EE8DF8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      v5 += 12;
      v6 += 12;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_239EE8E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_239EE8F0C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_239E95B5C(a1, v6);
  }

  v7 = 12 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v12 = 12 * v2 + 12;
  v13 = 0;
  sub_239EE8DF8(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 12) % 0xCuLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_239EE9034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_239EE9094(uint64_t a1, int8x16_t a2)
{
  *a1 = 1049652922;
  *(a1 + 4) = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL)), xmmword_239F9C950));
  result = *a2.i32 * -0.488602511;
  *(a1 + 12) = result;
  return result;
}

float32x2_t sub_239EE90DC(uint64_t a1, __n128 _Q0)
{
  *a1 = 1049652922;
  _S1 = _Q0.n128_u32[1];
  v3.f64[0] = _Q0.n128_f32[2];
  v4 = &qword_239F9C990;
  *&v5.f64[0] = *&vld1q_dup_f64(v4);
  v5.f64[1] = _Q0.n128_f32[1] * 1.09254843;
  v6.f64[0] = _Q0.n128_f32[1];
  v6.f64[1] = v3.f64[0];
  v3.f64[1] = v3.f64[0] * v3.f64[0];
  v7 = vmulq_f64(v3, xmmword_239F9C960);
  v8 = vdupq_n_s64(0xBFD42F601A7DF7D6);
  v9 = vaddq_f64(v7, v8);
  v8.f64[0] = _Q0.n128_f32[1];
  *&_Q2.f64[0] = *&vmulq_f64(v7, v8);
  _Q2.f64[1] = v9.f64[1];
  *(a1 + 20) = vcvt_f32_f64(_Q2);
  __asm { FMLS            S2, S1, V0.S[1] }

  _Q0.n128_u32[1] = LODWORD(_Q2.f64[0]);
  v15 = vcvtq_f64_f32(_Q0.n128_u64[0]);
  *(a1 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v6, xmmword_239F9C950)), vmulq_n_f64(v5, v15.f64[0]));
  v7.f64[1] = 0.546274215;
  result = vcvt_f32_f64(vmulq_f64(v7, v15));
  *(a1 + 28) = result;
  return result;
}

float32x2_t sub_239EE91A4(uint64_t a1, float32x4_t _Q0)
{
  _S1 = _Q0.u32[1];
  v3 = vmuls_lane_f32(_Q0.f32[2], _Q0, 2);
  v4 = vmuls_lane_f32(-1.0925, _Q0, 2);
  *(a1 + 24) = (v3 * 0.94617) + -0.31539;
  *(a1 + 28) = v4 * _Q0.f32[0];
  _D2 = vmul_n_f32(0x3FEED53640124131, v3);
  v6.i32[0] = vsub_f32(0x3FEED5363EEA01E8, _D2).u32[0];
  v6.i32[1] = vadd_f32(_D2, vdup_n_s32(0xBF8F4CBA)).i32[1];
  *(a1 + 20) = vmuls_lane_f32(v4, *_Q0.f32, 1);
  *(a1 + 52) = vmuls_n_f32(v6.f32[0], _Q0.f32[0]);
  *(a1 + 44) = vmul_f32(v6, vext_s8(*_Q0.f32, *&vextq_s8(_Q0, _Q0, 8uLL), 4uLL));
  v7 = vmuls_lane_f32(_Q0.f32[0] + _Q0.f32[0], *_Q0.f32, 1);
  v8 = vmuls_lane_f32(1.4453, _Q0, 2);
  __asm { FMLS            S2, S1, V0.S[1] }

  *&v13 = -(vmuls_lane_f32(v7, *_Q0.f32, 1) - (_D2.f32[0] * _Q0.f32[0]));
  v6.f32[0] = vmuls_lane_f32(_D2.f32[0], *_Q0.f32, 1) + (v7 * _Q0.f32[0]);
  _Q0.f32[3] = v7;
  v14 = vmulq_f32(_Q0, xmmword_239F9C970);
  *a1 = 1049652923;
  *(a1 + 4) = vzip2q_s32(vzip1q_s32(v14, vextq_s8(v14, v14, 0xCuLL)), v14);
  *(a1 + 40) = v7 * v8;
  v14.i64[0] = __PAIR64__(v13, _D2.u32[0]);
  v15 = &unk_239F9C9E4;
  v16 = vld1_dup_f32(v15);
  v16.f32[0] = v8;
  *(a1 + 56) = vmul_f32(*v14.i8, v16);
  _D2.i32[1] = v6.i32[0];
  result = vmul_f32(_D2, 0xBF170D193F0BD8A1);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_239EE92BC(uint64_t result, __int128 *a2, __int128 *a3)
{
  v3 = xmmword_239F9C090;
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        v3 = xmmword_239F9C050;
        v4 = xmmword_239F9C060;
        break;
      case 4:
        v4 = xmmword_239F9C070;
        break;
      case 5:
        v4 = xmmword_239F9C050;
        break;
      default:
        return result;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      v4 = xmmword_239F9C080;
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v3 = xmmword_239F9C070;
      v4 = xmmword_239F9C090;
    }
  }

  else
  {
    v4 = xmmword_239F9AD10;
  }

  *a2 = v4;
  *a3 = v3;
  return result;
}

double sub_239EE9354(int a1, int a2, int a3, float32x4_t a4)
{
  v4 = 0.0;
  v5 = a1;
  if (a3 > 2)
  {
    v13 = 1.0;
    v14 = (a2 * 2.0) + 1.0;
    v15 = -((v14 * a4.f32[0]) + -1.0);
    v16 = (((v5 * 2.0) + 1.0) * a4.f32[0]) + -1.0;
    v17 = (v14 * a4.f32[0]) + -1.0;
    a4.f32[0] = -v16;
    if (a3 == 5)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0.0;
    }

    if (a3 != 5)
    {
      v13 = 0.0;
      a4.f32[0] = 0.0;
    }

    if (a3 == 4)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (a3 == 4)
    {
      v20 = -1.0;
    }

    else
    {
      v20 = v13;
    }

    if (a3 == 4)
    {
      a4.f32[0] = v16;
    }

    if (a3 == 3)
    {
      v10 = -1.0;
    }

    else
    {
      v10 = v19;
    }

    if (a3 == 3)
    {
      *&v12 = v15;
    }

    else
    {
      *&v12 = v20;
    }

    if (a3 == 3)
    {
      a4.f32[0] = v16;
    }
  }

  else
  {
    v6 = -1.0;
    v7 = (((v5 * 2.0) + 1.0) * a4.f32[0]) + -1.0;
    v8 = (((a2 * 2.0) + 1.0) * a4.f32[0]) + -1.0;
    v9 = -v7;
    if (a3 == 2)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    if (a3 == 2)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    if (a3 == 2)
    {
      v4 = v7;
    }

    if (a3 == 1)
    {
      v10 = v8;
    }

    else
    {
      v9 = v11;
    }

    if (a3 != 1)
    {
      v6 = v4;
    }

    if (a3)
    {
      *&v12 = v9;
    }

    else
    {
      v10 = v8;
      *&v12 = v7;
    }

    if (a3)
    {
      a4.f32[0] = v6;
    }

    else
    {
      a4.f32[0] = 1.0;
    }
  }

  a4.f32[1] = v10;
  a4.i32[2] = v12;
  v21 = vmulq_f32(a4, a4);
  *&v22 = vaddv_f32(*v21.f32) + v21.f32[2];
  *v21.f32 = vrsqrte_f32(v22);
  *v21.f32 = vmul_f32(vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)), *v21.f32);
  a4.i64[0] = vmulq_n_f32(a4, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]).u64[0];
  return *a4.i64;
}