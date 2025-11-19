void LSCComputeFromNVMApple<unsigned char>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 14) >> 1;
  v15 = *(a1 + 16) >> 1;
  v18 = a8 / 2;
  v19 = a9 / 2;
  if (a3)
  {
    v11 = 0;
    do
    {
      v13[v11] = *(a10 + 4 * v11);
      ++v11;
    }

    while (a3 > v11);
  }

  if (a4)
  {
    v12 = 0;
    do
    {
      v13[v12 + 27] = *(a11 + 4 * v12);
      ++v12;
    }

    while (a4 > v12);
  }

  v20 = a1 + 18;
  v21 = a1 + 36;
  v22 = a1 + 54;
  v23 = a1 + 72;
  v16 = *(a1 + 20);
  v17 = *(a1 + 28);
  operator new[]();
}

uint64_t LSCInterpolateNvm<unsigned char>(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v69 = result;
  v79[16] = *MEMORY[0x277D85DE8];
  v70 = a3[7];
  if (a3[7])
  {
    v68 = a3[3];
    v15 = a3[2];
    v67 = a3[5];
    v16 = a4 + 56;
    v17 = a4 + 164;
    v73 = a2 - 2;
    v18 = a3[4];
    v19 = a3[6];
    v71 = 0;
    v72 = v19;
    while (!v19)
    {
LABEL_51:
      if (++v71 == v70)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = (v67 + v71 * v68);
    v22 = *(a4 + 40);
    v23 = *(a4 + 42);
    v24 = -3.0;
    result = v69 + 8 * v71 * v19;
    v75 = result;
    while (1)
    {
      v25 = (v18 + v20 * v15);
      if (v22)
      {
        v26 = 0;
        LOWORD(v24) = *a4;
        *&v24 = LODWORD(v24);
        while (v25 >= (*(v16 + 4 * v26) * *&v24))
        {
          if (v22 == ++v26)
          {
            LOWORD(v26) = v22;
            if (v23)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if (v23)
        {
LABEL_12:
          v27 = 0;
          LOWORD(v24) = *(a4 + 2);
          *&v24 = LODWORD(v24);
          while (v21 >= (*(v17 + 4 * v27) * *&v24))
          {
            if (v23 == ++v27)
            {
              v28 = v23;
              goto LABEL_19;
            }
          }

          v28 = v27;
          goto LABEL_19;
        }
      }

LABEL_17:
      v28 = 0;
LABEL_19:
      v29 = v26;
      v30 = v26 - 1;
      v31 = v30;
      v32 = v28;
      v33 = v28 - 1;
      v34 = v33;
      if (v29 < 2 || (v35 = v32 - 2, v32 < 2) || (v22 + -3.0 >= v31 ? (v36 = a5 == 0) : (v36 = 1), !v36 ? (v37 = v23 + -3.0 < v34) : (v37 = 1), v37))
      {
        if (!v29)
        {
          v31 = 0.0;
        }

        if (!v32)
        {
          v34 = 0.0;
        }

        if (v31 >= (v22 - 2))
        {
          v31 = (v22 - 2);
        }

        v52 = vcvtmd_u64_f64(v31);
        if (v34 >= (v23 - 2))
        {
          v53 = (v23 - 2);
        }

        else
        {
          v53 = v34;
        }

        v54 = vcvtmd_u64_f64(v53);
        v55 = v52 + v54 * v22;
        LOBYTE(v53) = *(a2 + v55);
        v56 = *(a4 + 48);
        LOBYTE(a9) = *(a2 + v55 + 1);
        v57 = v52 + (v54 + 1) * v22;
        LOBYTE(a10) = *(a2 + v57);
        LOBYTE(a11) = *(a2 + v57 + 1);
        LOWORD(a13) = *a4;
        v58 = LODWORD(a13);
        v59 = roundf(*(v16 + 4 * v52) * v58);
        LOWORD(v13) = *(a4 + 2);
        v60 = LODWORD(v13);
        v61 = roundf(*(v17 + 4 * v54) * v60);
        a13 = roundf(*(v16 + 4 * (v52 + 1)) * v58);
        v13 = roundf(*(v17 + 4 * (v54 + 1)) * v60);
        v62 = v25 - v59;
        v63 = a13 - v25;
        v64 = *&a10 / v56 * v63 + v62 * (*&a11 / v56);
        a11 = v62 + v63;
        a10 = v64 / (v62 + v63);
        v65 = (*&v53 / v56 * v63 + v62 * (*&a9 / v56)) / (v62 + v63);
        a9 = v13 - v21;
        v66 = fmin(((v13 - v21) * v65 + (v21 - v61) * a10) / (v21 - v61 + v13 - v21), 1.0);
        v24 = 1.0 / v56;
        if (v66 <= 1.0 / v56)
        {
          v66 = 1.0 / v56;
        }

        *(result + 8 * v20) = v66;
      }

      else
      {
        v38 = 0;
        v39 = *(a4 + 48);
        v40 = v35;
        v41 = (v73 + v29 + v22 * v35);
        v42 = v79;
        do
        {
          v43 = 0;
          v78[v38] = *(v16 + 4 * (v38 + v29 - 2));
          v44 = *(v17 + 4 * (v38 + v40));
          v77[v38] = v44;
          v45 = v41;
          do
          {
            LOBYTE(v44) = *v45;
            v44 = *&v44 / v39;
            v42[v43] = v44;
            v45 += v22;
            ++v43;
          }

          while (v43 != 4);
          ++v38;
          ++v41;
          v42 += 4;
        }

        while (v38 != 4);
        LOWORD(v44) = *a4;
        v46 = v25 / *&v44;
        v47 = *(v16 + 4 * v30);
        v48 = v46 - v47;
        *&v49 = (*(v16 + 4 * v29) - v47);
        v50 = v48 / *&v49;
        LOWORD(v49) = *(a4 + 2);
        bicubicInterpolateNonuniform(v79, v78, v77, v50, (v21 / v49 - *(v17 + 4 * v33)) / (*(v17 + 4 * v32) - *(v17 + 4 * v33)));
        v24 = 1.0 / v39;
        if (v51 >= 1.0)
        {
          v19 = v72;
          result = v75;
          if (v24 < 1.0)
          {
            v24 = 1.0;
          }
        }

        else
        {
          v19 = v72;
          result = v75;
          if (v51 > v24)
          {
            v24 = v51;
          }
        }

        *(result + 8 * v20) = v24;
      }

      if (++v20 == v19)
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void LSCComputeFromNVMApple<unsigned short>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 14) >> 1;
  v15 = *(a1 + 16) >> 1;
  v18 = a8 / 2;
  v19 = a9 / 2;
  if (a3)
  {
    v11 = 0;
    do
    {
      v13[v11] = *(a10 + 4 * v11);
      ++v11;
    }

    while (a3 > v11);
  }

  if (a4)
  {
    v12 = 0;
    do
    {
      v13[v12 + 27] = *(a11 + 4 * v12);
      ++v12;
    }

    while (a4 > v12);
  }

  v20 = a1 + 18;
  v21 = a1 + 36;
  v22 = a1 + 54;
  v23 = a1 + 72;
  v16 = *(a1 + 20);
  v17 = *(a1 + 28);
  operator new[]();
}

uint64_t LSCInterpolateNvm<unsigned short>(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v70 = result;
  v81[16] = *MEMORY[0x277D85DE8];
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v15 = a3[2];
    v68 = a3[5];
    v16 = a4 + 56;
    v17 = a4 + 164;
    v18 = a3[4];
    v19 = a3[6];
    v74 = v18;
    v75 = a2 - 4;
    v72 = 0;
    v73 = v19;
    while (!v19)
    {
LABEL_51:
      if (++v72 == v71)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = (v68 + v72 * v69);
    v22 = *(a4 + 40);
    v23 = *(a4 + 42);
    v24 = -3.0;
    result = v70 + 8 * v72 * v19;
    v25 = 2 * v22;
    v77 = result;
    while (1)
    {
      v26 = (v18 + v20 * v15);
      if (v22)
      {
        v27 = 0;
        LOWORD(v24) = *a4;
        *&v24 = LODWORD(v24);
        while (v26 >= (*(v16 + 4 * v27) * *&v24))
        {
          if (v22 == ++v27)
          {
            LOWORD(v27) = v22;
            if (v23)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v27) = 0;
        if (v23)
        {
LABEL_12:
          v28 = 0;
          LOWORD(v24) = *(a4 + 2);
          *&v24 = LODWORD(v24);
          while (v21 >= (*(v17 + 4 * v28) * *&v24))
          {
            if (v23 == ++v28)
            {
              v29 = v23;
              goto LABEL_19;
            }
          }

          v29 = v28;
          goto LABEL_19;
        }
      }

LABEL_17:
      v29 = 0;
LABEL_19:
      v30 = v27;
      v31 = v27 - 1;
      v32 = v31;
      v33 = v29;
      v34 = v29 - 1;
      v35 = v34;
      if (v30 < 2 || (v36 = v33 - 2, v33 < 2) || (v22 + -3.0 >= v32 ? (v37 = a5 == 0) : (v37 = 1), !v37 ? (v38 = v23 + -3.0 < v35) : (v38 = 1), v38))
      {
        if (!v30)
        {
          v32 = 0.0;
        }

        if (!v33)
        {
          v35 = 0.0;
        }

        if (v32 >= (v22 - 2))
        {
          v32 = (v22 - 2);
        }

        v53 = vcvtmd_u64_f64(v32);
        if (v35 >= (v23 - 2))
        {
          v54 = (v23 - 2);
        }

        else
        {
          v54 = v35;
        }

        v55 = vcvtmd_u64_f64(v54);
        v56 = v53 + v55 * v22;
        LOWORD(v54) = *(a2 + 2 * v56);
        v57 = *(a4 + 48);
        LOWORD(a9) = *(a2 + 2 * (v56 + 1));
        v58 = v53 + (v55 + 1) * v22;
        LOWORD(a10) = *(a2 + 2 * v58);
        LOWORD(a11) = *(a2 + 2 * (v58 + 1));
        LOWORD(a13) = *a4;
        v59 = LODWORD(a13);
        v60 = roundf(*(v16 + 4 * v53) * v59);
        LOWORD(v13) = *(a4 + 2);
        v61 = LODWORD(v13);
        v62 = roundf(*(v17 + 4 * v55) * v61);
        a13 = roundf(*(v16 + 4 * (v53 + 1)) * v59);
        v13 = roundf(*(v17 + 4 * (v55 + 1)) * v61);
        v63 = v26 - v60;
        v64 = a13 - v26;
        v65 = *&a10 / v57 * v64 + v63 * (*&a11 / v57);
        a11 = v63 + v64;
        a10 = v65 / (v63 + v64);
        v66 = (*&v54 / v57 * v64 + v63 * (*&a9 / v57)) / (v63 + v64);
        a9 = v13 - v21;
        v67 = fmin(((v13 - v21) * v66 + (v21 - v62) * a10) / (v21 - v62 + v13 - v21), 1.0);
        v24 = 1.0 / v57;
        if (v67 <= 1.0 / v57)
        {
          v67 = 1.0 / v57;
        }

        *(result + 8 * v20) = v67;
      }

      else
      {
        v39 = 0;
        v40 = *(a4 + 48);
        v41 = v36;
        v42 = (v75 + 2 * v30 + v25 * v36);
        v43 = v81;
        do
        {
          v44 = 0;
          v80[v39] = *(v16 + 4 * (v39 + (v30 - 2)));
          v45 = *(v17 + 4 * (v39 + v41));
          v79[v39] = v45;
          v46 = v42;
          do
          {
            LOWORD(v45) = *v46;
            v45 = *&v45 / v40;
            v43[v44] = v45;
            v46 = (v46 + v25);
            ++v44;
          }

          while (v44 != 4);
          ++v39;
          ++v42;
          v43 += 4;
        }

        while (v39 != 4);
        LOWORD(v45) = *a4;
        v47 = v26 / *&v45;
        v48 = *(v16 + 4 * v31);
        v49 = v47 - v48;
        *&v50 = (*(v16 + 4 * v30) - v48);
        v51 = v49 / *&v50;
        LOWORD(v50) = *(a4 + 2);
        bicubicInterpolateNonuniform(v81, v80, v79, v51, (v21 / v50 - *(v17 + 4 * v34)) / (*(v17 + 4 * v33) - *(v17 + 4 * v34)));
        v24 = 1.0 / v40;
        if (v52 >= 1.0)
        {
          v19 = v73;
          v18 = v74;
          result = v77;
          if (v24 < 1.0)
          {
            v24 = 1.0;
          }
        }

        else
        {
          v19 = v73;
          v18 = v74;
          result = v77;
          if (v52 > v24)
          {
            v24 = v52;
          }
        }

        *(result + 8 * v20) = v24;
      }

      if (++v20 == v19)
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void CICComputeFromNVMApple<unsigned char>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 14) >> 1;
  v13 = *(a1 + 16) >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v11[v10 + 17] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v16 = a1 + 18;
  v17 = a1 + 36;
  v18 = a1 + 54;
  v19 = a1 + 72;
  v20 = a1 + 90;
  v21 = a1 + 108;
  v22 = a1 + 126;
  v23 = a1 + 144;
  v24 = a1 + 162;
  v25 = a1 + 180;
  v26 = a1 + 198;
  v27 = a1 + 216;
  v28 = a1 + 234;
  v29 = a1 + 252;
  v30 = a1 + 270;
  v31 = a1 + 288;
  ldexp(1.0, __e);
  ldexp(1.0, a7 - 1);
  ldexp(1.0, a7);
  v14 = *(v16 + 2);
  v15 = *(v16 + 10);
  operator new[]();
}

void CICInterpolateNvm<unsigned short>(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v80[16] = *MEMORY[0x277D85DE8];
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v13 = a3[2];
    v14 = a4 + 56;
    v15 = a4 + 124;
    v68 = a3[5];
    v16 = a3[4];
    v17 = a3[6];
    v75 = v16;
    v76 = a2 - 4;
    v74 = v17;
    v72 = 0;
    v73 = v13;
    while (!v17)
    {
LABEL_43:
      if (++v72 == v71)
      {
        return;
      }
    }

    v18 = 0;
    v19 = (v68 + v72 * v69);
    v20 = *(a4 + 40);
    v21 = *(a4 + 42);
    v22 = -3.0;
    v23 = a1 + 8 * v72 * v17;
    v24 = 2 * v20;
    while (1)
    {
      v25 = (v16 + v18 * v13);
      if (v20)
      {
        v26 = 0;
        LOWORD(v22) = *a4;
        *&v22 = LODWORD(v22);
        while (v25 >= (*(v14 + 4 * v26) * *&v22))
        {
          if (v20 == ++v26)
          {
            LOWORD(v26) = v20;
            if (v21)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v21)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if (v21)
        {
LABEL_12:
          v27 = 0;
          LOWORD(v22) = *(a4 + 2);
          *&v22 = LODWORD(v22);
          while (v19 >= (*(v15 + 4 * v27) * *&v22))
          {
            if (v21 == ++v27)
            {
              v28 = v21;
              goto LABEL_19;
            }
          }

          v28 = v27;
          goto LABEL_19;
        }
      }

LABEL_17:
      v28 = 0;
LABEL_19:
      v29 = v26;
      v30 = v26 - 1;
      v31 = v30;
      v32 = v28;
      v33 = v28 - 1;
      v34 = v33;
      if (v29 < 2 || (v35 = v32 - 2, v32 < 2) || (v20 + -3.0 >= v31 ? (v36 = v21 + -3.0 < v34) : (v36 = 1), v36))
      {
        if (!v29)
        {
          v31 = 0.0;
        }

        if (!v32)
        {
          v34 = 0.0;
        }

        if (v31 >= (v20 - 2))
        {
          v31 = (v20 - 2);
        }

        if (v34 >= (v21 - 2))
        {
          v34 = (v21 - 2);
        }

        v51 = vcvtmd_u64_f64(v31);
        v52 = vcvtmd_u64_f64(v34);
        v53 = v51 + v52 * v20;
        LOWORD(v31) = *(a2 + 2 * v53);
        v54 = *(a4 + 48);
        v55 = *&v31 / v54;
        LOWORD(a8) = *(a2 + 2 * (v53 + 1));
        v56 = *&a8 / v54;
        v57 = v51 + (v52 + 1) * v20;
        LOWORD(a9) = *(a2 + 2 * v57);
        v58 = *&a9 / v54;
        LOWORD(a10) = *(a2 + 2 * (v57 + 1));
        v59 = *&a10 / v54;
        LOWORD(a11) = *a4;
        v60 = LODWORD(a11);
        v61 = roundf(*(v14 + 4 * v51) * v60);
        LOWORD(v11) = *(a4 + 2);
        v62 = LODWORD(v11);
        v63 = roundf(*(v15 + 4 * v52) * v62);
        a11 = roundf(*(v14 + 4 * (v51 + 1)) * v60);
        v11 = roundf(*(v15 + 4 * (v52 + 1)) * v62);
        a10 = v25 - v61;
        v64 = a11 - v25;
        v65 = v58 * v64 + a10 * v59;
        a9 = a10 + v64;
        v66 = v65 / (a10 + v64);
        v67 = (v55 * v64 + a10 * v56) / (a10 + v64);
        a8 = v11 - v19;
        v22 = v19 - v63 + v11 - v19;
        *(v23 + 8 * v18) = fmax(fmin(((v11 - v19) * v67 + (v19 - v63) * v66) / v22, 2.0), 0.5);
      }

      else
      {
        v37 = 0;
        v38 = *(a4 + 48);
        v39 = v35;
        v40 = (v76 + 2 * v29 + v24 * v35);
        v41 = v80;
        do
        {
          v42 = 0;
          v79[v37] = *(v14 + 4 * (v37 + (v29 - 2)));
          v43 = *(v15 + 4 * (v37 + v39));
          v78[v37] = v43;
          v44 = v40;
          do
          {
            LOWORD(v43) = *v44;
            v43 = *&v43 / v38;
            v41[v42] = v43;
            v44 = (v44 + v24);
            ++v42;
          }

          while (v42 != 4);
          ++v37;
          ++v40;
          v41 += 4;
        }

        while (v37 != 4);
        LOWORD(v38) = *a4;
        v45 = v25 / *&v38;
        v46 = *(v14 + 4 * v30);
        v47 = v45 - v46;
        *&v48 = (*(v14 + 4 * v29) - v46);
        v49 = v47 / *&v48;
        LOWORD(v48) = *(a4 + 2);
        bicubicInterpolateNonuniform(v80, v79, v78, v49, (v19 / v48 - *(v15 + 4 * v33)) / (*(v15 + 4 * v32) - *(v15 + 4 * v33)));
        v22 = 2.0;
        if (v50 < 2.0)
        {
          v22 = 0.5;
          if (v50 > 0.5)
          {
            v22 = v50;
          }
        }

        *(v23 + 8 * v18) = v22;
        v13 = v73;
        v17 = v74;
        v16 = v75;
      }

      if (++v18 == v17)
      {
        goto LABEL_43;
      }
    }
  }
}

void CICComputeFromNVMApple<unsigned short>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 14) >> 1;
  v13 = *(a1 + 16) >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v11[v10 + 17] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v16 = a1 + 18;
  v17 = a1 + 36;
  v18 = a1 + 54;
  v19 = a1 + 72;
  v20 = a1 + 90;
  v21 = a1 + 108;
  v22 = a1 + 126;
  v23 = a1 + 144;
  v24 = a1 + 162;
  v25 = a1 + 180;
  v26 = a1 + 198;
  v27 = a1 + 216;
  v28 = a1 + 234;
  v29 = a1 + 252;
  v30 = a1 + 270;
  v31 = a1 + 288;
  ldexp(1.0, __e);
  ldexp(1.0, a7 - 1);
  ldexp(1.0, a7);
  v14 = *(v16 + 2);
  v15 = *(v16 + 10);
  operator new[]();
}

void GICComputeFromNVMApple<unsigned char>(_WORD *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v19 = a1[7] >> 1;
  v20 = a1[8] >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v18[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v18[v10 + 27] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v11 = a1 + 9;
  v12 = a1[16];
  v13 = a1[17];
  if (((v12 * v13) & 0xFFFF0000) == 0)
  {
    a1[13] = 0;
    a1[22] = 0;
  }

  v14 = 1;
  v15 = a1 + 9;
  while (1)
  {
    v16 = v14;
    v17 = v15[7];
    if (v17 != v12)
    {
      break;
    }

    if (v15[8] != v13)
    {
      GICComputeFromNVMApple<unsigned char>();
    }

    if (*(v15 + 3) % (v13 * v17))
    {
      GICComputeFromNVMApple<unsigned char>();
    }

    v14 = 0;
    v15 = a1 + 18;
    if ((v16 & 1) == 0)
    {
      ldexp(1.0, __e);
      ldexp(1.0, a7 - 1);
      ldexp(1.0, a7);
      v21 = *(v11 + 1);
      v22 = *(v11 + 5);
      operator new[]();
    }
  }

  GICComputeFromNVMApple<unsigned char>();
}

uint64_t GICInterpolateNvm<short>(uint64_t result, uint64_t a2, unsigned __int16 *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v88 = result;
  v100[16] = *MEMORY[0x277D85DE8];
  v89 = a3[7];
  if (a3[7])
  {
    v90 = 0;
    v87 = a3[3];
    v13 = a3[2];
    v14 = (a4 + 7);
    v15 = a4 + 82;
    v94 = a2 - 4;
    v95 = a2 + 2;
    v86 = a3[5];
    v16 = a3[4];
    result = a3[6];
    v96 = a2;
    v92 = result;
    v93 = v16;
    v91 = v13;
    while (!result)
    {
LABEL_77:
      if (++v90 == v89)
      {
        return result;
      }
    }

    v17 = 0;
    v18 = (v86 + v90 * v87);
    v19 = *(a4 + 20);
    v20 = *(a4 + 21);
    v21 = v20;
    v22 = v19 - 1;
    v23 = v88 + 8 * v90 * result;
    v97 = v20 - 1;
    v24 = 2 * v19;
    while (1)
    {
      v25 = (v16 + v17 * v13);
      if (v19)
      {
        break;
      }

      LOWORD(v26) = 0;
      if (!v20)
      {
        goto LABEL_17;
      }

LABEL_12:
      v27 = 0;
      LOWORD(v21) = *(a4 + 1);
      *&v21 = LODWORD(v21);
      while (v18 >= (*&v15[2 * v27] * *&v21))
      {
        if (v20 == ++v27)
        {
          LOWORD(v27) = v20;
          break;
        }
      }

LABEL_18:
      v28 = v26 - 1;
      v29 = v28;
      v30 = v27;
      v31 = v27 - 1;
      v32 = v31;
      if (v26 && v27 && (v19 + -2.0 >= v29 ? (v33 = v20 + -2.0 < v32) : (v33 = 1), !v33))
      {
        if (v26 >= 2u)
        {
          v34 = v27 - 2;
          if (v27 >= 2u && v19 + -3.0 >= v29 && v20 + -3.0 >= v32)
          {
            v36 = 0;
            v37 = a4[6];
            v38 = v34;
            v39 = (v94 + 2 * v26 + v24 * v34);
            v40 = v100;
            do
            {
              v41 = 0;
              v99[v36] = *&v14[2 * v36 - 4 + 2 * v26];
              v98[v36] = *&v15[2 * v36 + 2 * v38];
              v42 = v39;
              do
              {
                v40[v41] = *v42 / v37;
                v42 = (v42 + v24);
                ++v41;
              }

              while (v41 != 4);
              ++v36;
              ++v39;
              v40 += 4;
            }

            while (v36 != 4);
            LOWORD(v37) = *a4;
            v43 = v25 / *&v37;
            v44 = *&v14[2 * v28];
            v45 = v43 - v44;
            *&v46 = (*&v14[2 * v26] - v44);
            v47 = v45 / *&v46;
            LOWORD(v46) = *(a4 + 1);
            bicubicInterpolateNonuniform(v100, v99, v98, v47, (v18 / v46 - *&v15[2 * v31]) / (*&v15[2 * v30] - *&v15[2 * v31]));
            v21 = 0.125;
            if (v48 < 0.125)
            {
              v21 = -0.125;
              if (v48 > -0.125)
              {
                v21 = v48;
              }
            }

            *(v23 + 8 * v17) = v21;
            v13 = v91;
            result = v92;
            a2 = v96;
            v16 = v93;
            v22 = v19 - 1;
            goto LABEL_71;
          }
        }

        if (v29 >= (v19 - 2))
        {
          v29 = (v19 - 2);
        }

        if (v32 >= (v20 - 2))
        {
          v32 = (v20 - 2);
        }

        v55 = vcvtmd_u64_f64(v29);
        v56 = vcvtmd_u64_f64(v32);
        v57 = v55 + v56 * v19;
        v58 = a4[6];
        v59 = *(a2 + 2 * v57) / v58;
        v60 = *(a2 + 2 * (v57 + 1)) / v58;
        LOWORD(a11) = *a4;
        v61 = LODWORD(a11);
        v62 = roundf(*&v14[2 * v55] * v61);
        LOWORD(v11) = *(a4 + 1);
        v63 = LODWORD(v11);
        v64 = roundf(*&v15[2 * v56] * v63);
        a11 = roundf(*&v14[2 * v55 + 2] * v61);
        v11 = roundf(*&v15[2 * v56 + 2] * v63);
        v65 = v25 - v62;
        v66 = a11 - v25;
        v67 = (*(a2 + 2 * (v55 + (v56 + 1) * v19)) / v58 * v66 + v65 * (*(a2 + 2 * (v55 + (v56 + 1) * v19 + 1)) / v58)) / (v65 + v66);
        v68 = (v59 * v66 + v65 * v60) / (v65 + v66);
        v69 = v18 - v64;
        v70 = v11 - v18;
      }

      else
      {
        if (!v26)
        {
          v29 = 0.0;
        }

        if (!v27)
        {
          v32 = 0.0;
        }

        if (v29 >= (v19 - 1))
        {
          v29 = (v19 - 1);
        }

        if (v32 >= (v20 - 1))
        {
          v32 = (v20 - 1);
        }

        v49 = vcvtmd_u64_f64(v29);
        v50 = vcvtmd_u64_f64(v32);
        if (!(v49 | v50))
        {
          v51 = *(v95 + 2 * v19);
LABEL_69:
          v21 = a4[6];
          v74 = v51 / v21;
          goto LABEL_70;
        }

        if (v49)
        {
          v52 = 0;
        }

        else
        {
          v52 = v97 == v50;
        }

        if (v52)
        {
          v54 = (v20 - 1) * v19 + 1;
          goto LABEL_68;
        }

        if (v22 == v49 && v50 == 0)
        {
          v54 = v19 - 1 + v19;
          goto LABEL_68;
        }

        if (v22 == v49)
        {
          if (v97 == v50)
          {
            v54 = (v20 - 1) * v19 + v19 - 1;
LABEL_68:
            v51 = *(a2 + 2 * v54);
            goto LABEL_69;
          }

          v75 = *a4;
          v76 = *(a4 + 1);
        }

        else
        {
          v75 = *a4;
          v76 = *(a4 + 1);
          if (v49)
          {
            v77 = roundf(*&v14[2 * v49] * v75);
            v78 = roundf(*&v15[2 * v50] * v76);
            v79 = roundf(*&v14[2 * v49 + 2] * v75);
            a11 = roundf(*&v15[2 * v50 + 2] * v76);
            v80 = (*(a2 + 2 * (v49 + v50 * v19)) / a4[6] * (v79 - v25) + (v25 - v77) * (*(a2 + 2 * (v49 + v50 * v19 + 1)) / a4[6])) / (v25 - v77 + v79 - v25);
            v71 = (a11 - v18) * v80 + (v18 - v78) * v80;
            v72 = v18 - v78 + a11 - v18;
            goto LABEL_65;
          }
        }

        v81 = a4[6];
        v82 = *(a2 + 2 * (v49 + (v50 + 1) * v19));
        v83 = *(a2 + 2 * (v49 + v50 * v19)) / v81;
        a11 = roundf(*&v15[2 * v50 + 2] * v76);
        v84 = v25 - roundf(*&v14[2 * v49] * v75);
        v85 = roundf(*&v14[2 * v49 + 2] * v75) - v25;
        v67 = (v82 / v81 * v85 + v84 * (v82 / v81)) / (v84 + v85);
        v68 = (v83 * v85 + v84 * v83) / (v84 + v85);
        v69 = v18 - roundf(*&v15[2 * v50] * v76);
        v70 = a11 - v18;
      }

      v71 = v70 * v68 + v69 * v67;
      v72 = v69 + v70;
LABEL_65:
      v73 = fmin(v71 / v72, 0.125);
      v21 = -0.125;
      v74 = fmax(v73, -0.125);
LABEL_70:
      *(v23 + 8 * v17) = v74;
LABEL_71:
      if (++v17 == result)
      {
        goto LABEL_77;
      }
    }

    v26 = 0;
    LOWORD(v21) = *a4;
    *&v21 = LODWORD(v21);
    while (v25 >= (*&v14[2 * v26] * *&v21))
    {
      if (v19 == ++v26)
      {
        LOWORD(v26) = v19;
        if (v20)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }
    }

    if (v20)
    {
      goto LABEL_12;
    }

LABEL_17:
    LOWORD(v27) = 0;
    goto LABEL_18;
  }

  return result;
}

void GICComputeFromNVMApple<unsigned short>(_WORD *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v19 = a1[7] >> 1;
  v20 = a1[8] >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v18[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v18[v10 + 27] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v11 = a1 + 9;
  v12 = a1[16];
  v13 = a1[17];
  if (((v12 * v13) & 0xFFFF0000) == 0)
  {
    a1[13] = 0;
    a1[22] = 0;
  }

  v14 = 1;
  v15 = a1 + 9;
  while (1)
  {
    v16 = v14;
    v17 = v15[7];
    if (v17 != v12)
    {
      break;
    }

    if (v15[8] != v13)
    {
      GICComputeFromNVMApple<unsigned char>();
    }

    if (*(v15 + 3) % (v13 * v17))
    {
      GICComputeFromNVMApple<unsigned char>();
    }

    v14 = 0;
    v15 = a1 + 18;
    if ((v16 & 1) == 0)
    {
      ldexp(1.0, __e);
      ldexp(1.0, a7 - 1);
      ldexp(1.0, a7);
      v21 = *(v11 + 1);
      v22 = *(v11 + 5);
      operator new[]();
    }
  }

  GICComputeFromNVMApple<unsigned char>();
}

H16ISP *H16ISP::createExtrinsicsArray(H16ISP *this, double (*a2)[3], double *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 24; j += 8)
    {
      H16ISP::addNumberToArray(Mutable, v5, *(this + j));
    }

    H16ISP::addNumberToArray(Mutable, v5, (*a2)[i]);
    this = (this + 24);
  }

  return Mutable;
}

__CFArray *H16ISP::FaceLandmarkCreateMultiPointRepresentationWithRange(uint64_t a1, unsigned int a2, int a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v7 = Mutable;
  if (Mutable)
  {
    H16ISP::FaceLandmarkFillMultiPointRepresentationWithRangeInternal(Mutable, a1, a2, a3);
  }

  return v7;
}

void H16ISP::FaceLandmarkFillMultiPointRepresentationWithRangeInternal(__CFArray *a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a4;
  if (a3 + a4 > a3)
  {
    v6 = (a2 + 8 * a3);
    do
    {
      v7 = vcvtq_f64_f32(*v6);
      y = v7.y;
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v7);
      if (DictionaryRepresentation)
      {
        v10 = DictionaryRepresentation;
        CFArrayAppendValue(a1, DictionaryRepresentation);
        CFRelease(v10);
      }

      ++v6;
      --v4;
    }

    while (v4);
  }
}

void H16ISP::addNumberToArray(H16ISP *this, __CFArray *a2, double a3)
{
  valuePtr = a3;
  v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  CFArrayAppendValue(this, v4);
  CFRelease(v4);
}

unint64_t PDAF::BinPixelCoordinates(int *a1, _DWORD *a2)
{
  v2 = a2[1];
  if (*a2)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    PDAF::BinPixelCoordinates();
  }

  v4 = 2 * v2;
  v5 = a1[1];
  if (*a1 >= 0)
  {
    v6 = *a1 & 1;
  }

  else
  {
    v6 = -(*a1 & 1);
  }

  v7 = a1[1] & 1;
  if (v5 < 0)
  {
    v7 = -v7;
  }

  return (v6 + 2 * (*a1 / (2 * *a2))) | ((v7 + 2 * (v5 / v4)) << 32);
}

float PDAF::EstimateCurve(uint64_t a1, unint64_t a2, float a3)
{
  if (a2 < 2)
  {
    v4 = 1;
  }

  else
  {
    v3 = (a1 + 8);
    v4 = 1;
    while (*v3 <= a3)
    {
      ++v4;
      v3 += 2;
      if (a2 == v4)
      {
        v4 = a2;
        break;
      }
    }
  }

  if (v4 >= a2 - 1)
  {
    v4 = a2 - 1;
  }

  v5 = (a1 + 8 * v4);
  v6 = *(v5 - 2);
  if (*v5 == v6)
  {
    return *(v5 - 1);
  }

  v8 = (a3 - v6) / (*v5 - v6);
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  return ((1.0 - v11) * *(v5 - 1)) + (v11 * v5[1]);
}

float PDAF::LinearInterp(uint64_t a1, unint64_t a2, float a3)
{
  if (a2 < 2)
  {
    v4 = 1;
  }

  else
  {
    v3 = (a1 + 8);
    v4 = 1;
    while (*v3 <= a3)
    {
      ++v4;
      v3 += 2;
      if (a2 == v4)
      {
        v4 = a2;
        break;
      }
    }
  }

  if (v4 >= a2 - 1)
  {
    v4 = a2 - 1;
  }

  v5 = (a1 + 8 * v4);
  v6 = *(v5 - 2);
  if (*v5 == v6)
  {
    return *(v5 - 1);
  }

  v8 = (a3 - v6) / (*v5 - v6);
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  return ((1.0 - v11) * *(v5 - 1)) + (v11 * v5[1]);
}

uint64_t PDAF::FocusingBehavior::print(PDAF::FocusingBehavior *this)
{
  v2 = MEMORY[0x277D85DF8];
  if (*this == 1)
  {
    v3 = *MEMORY[0x277D85DF8];
    v4 = "focusingMode            = LOCK_WHEN_DONE\n";
    v5 = 41;
    goto LABEL_5;
  }

  if (!*this)
  {
    v3 = *MEMORY[0x277D85DF8];
    v4 = "focusingMode            = CONTINUOUS\n";
    v5 = 37;
LABEL_5:
    fwrite(v4, v5, 1uLL, v3);
  }

  v6 = 1;
  fwrite("focusMethods =\n", 0xFuLL, 1uLL, *v2);
  v7 = 0;
  do
  {
    v8 = v6;
    v9 = *(this + v7 + 1);
    if (v9 <= 5)
    {
      fprintf(*v2, off_27853B778[v9], v7);
    }

    v6 = 0;
    v7 = 1;
  }

  while ((v8 & 1) != 0);
  result = fprintf(*v2, "lensMotionSpeedHint     = %u\n", *(this + 12));
  if (*this)
  {
    if (*this != 1)
    {
      return result;
    }

    fwrite("lockWhenDoneMode =\n", 0x13uLL, 1uLL, *v2);
    fprintf(*v2, "timeLimit                     = %u\n", *(this + 4));
    fprintf(*v2, "minScanCoverage               = %u\n", *(this + 5));
    v11 = 24;
  }

  else
  {
    fwrite("continuousMode =\n", 0x11uLL, 1uLL, *v2);
    v11 = 16;
  }

  return fprintf(*v2, "minOnTargetDurationToBeStable = %u\n", *(this + v11));
}

void PDAF::MiniMap::set(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, _OWORD *a6, char a7, char a8, void *__src)
{
  if (!__src)
  {
    PDAF::MiniMap::set();
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = *a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = *a6;
  *(a1 + 48) = a7;
  *(a1 + 49) = a8;
  v10 = *(a4 + 4) * a5;
  if (v10 >= 0x1801)
  {
    *(a1 + 20) = 0x1800 / a5;
    v10 = 0x1800 / a5 * a5;
    *(a1 + 44) = (*(a1 + 44) * (0x1800 / a5) + *(a4 + 4) / 2) / *(a4 + 4);
  }

  if (!v10 || (memcpy((a1 + 50), __src, v10), v10 >> 11 <= 2))
  {

    bzero((a1 + v10 + 50), 6144 - v10);
  }
}

void PDAF::MiniMap::clear(PDAF::MiniMap *this, int a2)
{
  *(this + 24) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    bzero(this + 50, 0x1800uLL);
  }
}

__n128 ISPExclaveSensorMetadata::ISPExclaveSensorMetadata(uint64_t a1, _OWORD *a2, __int128 *a3, __n128 *a4)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  v8 = *a3;
  *(a1 + 108) = *(a3 + 2);
  *(a1 + 92) = v8;
  result = *a4;
  *(a1 + 116) = *a4;
  return result;
}

{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  v8 = *a3;
  *(a1 + 108) = *(a3 + 2);
  *(a1 + 92) = v8;
  result = *a4;
  *(a1 + 116) = *a4;
  return result;
}

void H16ISP::H16ISPGraphExclaveSyncNode::H16ISPGraphExclaveSyncNode(H16ISP::H16ISPGraphExclaveSyncNode *this, H16ISP::H16ISPDevice *a2)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 24);
  *v3 = &unk_2838148A0;
  *(v3 + 80) = a2;
  *(v3 + 88) = 0x4059000000000000;
  *(v3 + 96) = 6;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 104) = 0;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 24);
  *v3 = &unk_2838148A0;
  *(v3 + 80) = a2;
  *(v3 + 88) = 0x4059000000000000;
  *(v3 + 96) = 6;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 104) = 0;
}

void H16ISP::H16ISPGraphExclaveSyncNode::~H16ISPGraphExclaveSyncNode(H16ISP::H16ISPGraphExclaveSyncNode *this)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_2838148A0;
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "~H16ISPGraphExclaveSyncNode";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_INFO, "%s - [Exclaves]: Sync Node being deconstructed!\n", &v4, 0xCu);
  }

  (*(*this + 56))(this);
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPGraphExclaveSyncNode::~H16ISPGraphExclaveSyncNode(this);

  JUMPOUT(0x22AA55B60);
}

void sub_22495B2F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t H16ISP::H16ISPGraphExclaveSyncNode::onActivate(H16ISP::H16ISPGraphExclaveSyncNode *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "onActivate";
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "%s - [Exclaves]: Sync node activated!\n", &v3, 0xCu);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveSyncNode::onDeactivate(H16ISP::H16ISPGraphExclaveSyncNode *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "onDeactivate";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_INFO, "%s - [Exclaves]: Sync node being deactivated!\n", &v5, 0xCu);
  }

  v3 = *(this + 13);
  if (v3 != *(this + 14))
  {
    do
    {
      H16ISP::H16ISPFilterGraphMessage::Release(*v3);
      v3 += 2;
    }

    while (v3 != *(this + 14));
    v3 = *(this + 13);
  }

  *(this + 14) = v3;
  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveSyncNode::onMessageProcessing(H16ISP::H16ISPDevice **this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  rep = 0;
  pthread_mutex_lock((a2 + 8));
  if (H16ISP::H16ISPDevice::enabledExclaveDebug(this[10]))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 90);
      *buf = 136315650;
      v48 = "onMessageProcessing";
      v49 = 1024;
      v50 = v5;
      v51 = 1024;
      v52 = v5;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: Sync Node current message requestID=0x%08X, frameID=%U\n", buf, 0x18u);
    }
  }

  v7 = this[13];
  v6 = this + 13;
  if (v7 == this[14])
  {
LABEL_11:
    pthread_mutex_unlock((a2 + 8));
    pthread_mutex_lock((a2 + 8));
    ++*a2;
    pthread_mutex_unlock((a2 + 8));
    v15.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    rep = v15.__d_.__rep_;
    v17 = this[14];
    v16 = this[15];
    if (v17 >= v16)
    {
      v19 = (v17 - *v6) >> 4;
      v20 = v19 + 1;
      if ((v19 + 1) >> 60)
      {
        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }

      v21 = v16 - *v6;
      if (v21 >> 3 > v20)
      {
        v20 = v21 >> 3;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF0)
      {
        v22 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::allocator<H16ISP::ExclaveMessageStruct>::allocate_at_least[abi:ne200100]((this + 13), v22);
      }

      v28 = (16 * v19);
      v28->__d_.__rep_ = a2;
      v28[1].__d_.__rep_ = v15.__d_.__rep_;
      v18 = 16 * v19 + 16;
      v29 = this[13];
      v30 = this[14] - v29;
      v31 = (16 * v19 - v30);
      memcpy(v31, v29, v30);
      v32 = this[13];
      this[13] = v31;
      this[14] = v18;
      this[15] = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v17->__d_.__rep_ = a2;
      v17[1].__d_.__rep_ = v15.__d_.__rep_;
      v18 = &v17[2];
    }

    this[14] = v18;
    H16ISP::H16ISPGraphExclaveSyncNode::cleanupMessageList(this, &rep);
    return 3758097130;
  }

  v8 = (v7 + 2);
  while (1)
  {
    v9 = *v7;
    pthread_mutex_lock((*v7 + 8));
    if (*(v9 + 180) == *(a2 + 180))
    {
      v14 = *(v9 + 387);
      if (*(a2 + 387) != v14)
      {
        break;
      }
    }

    pthread_mutex_unlock((*v7 + 8));
    v7 += 2;
    v8 = (v8 + 16);
    if (v7 == this[14])
    {
      goto LABEL_11;
    }
  }

  if ((v14 & 1) == 0)
  {
    v23 = *(a2 + 47);
    if (v23)
    {
      LOWORD(v10) = v23[46];
      v24 = v10;
      LOWORD(v11) = v23[47];
      v25 = v11;
      LOWORD(v12) = v23[48];
      v26 = v12;
      LOWORD(v13) = v23[49];
      v27 = v13;
LABEL_32:
      v35 = *v7;
      *(v9 + 11) = *(a2 + 11);
      *(v9 + 49) = v24;
      *(v9 + 50) = v25;
      *(v9 + 51) = v26;
      *(v9 + 52) = v27;
      v36 = v35;
      goto LABEL_33;
    }
  }

  v34 = *(v9 + 47);
  if (v34)
  {
    LOWORD(v10) = v34[46];
    v24 = v10;
    LOWORD(v11) = v34[47];
    v25 = v11;
    LOWORD(v12) = v34[48];
    v26 = v12;
    LOWORD(v13) = v34[49];
    v27 = v13;
    if ((v14 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v24 = *MEMORY[0x277CBF398];
    v25 = *(MEMORY[0x277CBF398] + 8);
    v26 = *(MEMORY[0x277CBF398] + 16);
    v27 = *(MEMORY[0x277CBF398] + 24);
    if ((v14 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  *(a2 + 11) = *(v9 + 11);
  *(a2 + 49) = v24;
  *(a2 + 50) = v25;
  *(a2 + 51) = v26;
  *(a2 + 52) = v27;
  v35 = *v7;
  v36 = a2;
LABEL_33:
  pthread_mutex_unlock((v35 + 8));
  pthread_mutex_unlock((a2 + 8));
  v37 = this[4];
  v38 = this[5];
  v39 = (v37 + 8 * (this[7] >> 9));
  if (v38 == v37)
  {
    v40 = 0;
  }

  else
  {
    v40 = (*v39 + 8 * (this[7] & 0x1FF));
  }

  while (1)
  {
    if (v38 == v37)
    {
      v43 = 0;
    }

    else
    {
      v42 = this[7] + this[8];
      v43 = *(v37 + ((v42 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v42 & 0x1FF);
    }

    if (v40 == v43)
    {
      break;
    }

    (*(**v40 + 32))(*v40, v36);
    if ((++v40 - *v39) == 4096)
    {
      v41 = v39[1];
      ++v39;
      v40 = v41;
    }

    v37 = this[4];
    v38 = this[5];
  }

  H16ISP::H16ISPFilterGraphMessage::Release(*v7);
  v44 = this[14];
  v45 = v44 - v8;
  if (v44 != v8)
  {
    memmove(v8 - 16, v8, v44 - v8);
  }

  this[14] = (v8 + v45 - 16);
  return 3758097130;
}

void H16ISP::H16ISPGraphExclaveSyncNode::cleanupMessageList(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 104);
  v3 = *(a1 + 112);
  if (v4 == v3)
  {
    v9 = *(a1 + 104);
  }

  else
  {
    v6 = (v4 + 2);
    v7 = -16 - v4;
    v8 = MEMORY[0x277D86220];
    v9 = *(a1 + 104);
    do
    {
      if ((*(v9 + 1) - *a2) / 1000000.0 > *(a1 + 88))
      {
        v10 = *v9;
        pthread_mutex_lock((*v9 + 8));
        v11 = *(v10 + 360);
        pthread_mutex_unlock((*v9 + 8));
        H16ISP::H16ISPFilterGraphMessage::Release(*v9);
        v12 = *(a1 + 112);
        v13 = &v12[v7];
        if (v6 != v12)
        {
          memmove(v6 - 16, v6, &v12[v7]);
        }

        *(a1 + 112) = &v13[(v6 - 16)];
        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v8)
        {
          v14 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "cleanupMessageList";
          v27 = 1024;
          v28 = v11;
          _os_log_error_impl(&dword_2247DB000, v14, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: Message Drop Timeout!, requestid=0x%0X\n", buf, 0x12u);
        }
      }

      v9 += 16;
      v3 = *(a1 + 112);
      v6 += 16;
      v7 -= 16;
    }

    while (v9 != v3);
    v4 = *(a1 + 104);
  }

  if (*(a1 + 96) < ((v9 - v4) >> 4) && v4 != v3)
  {
    v16 = -16 - v4;
    v17 = MEMORY[0x277D86220];
    v18 = v4;
    do
    {
      v19 = *v4;
      pthread_mutex_lock((*v4 + 8));
      v20 = *(v19 + 90);
      pthread_mutex_unlock((*v4 + 8));
      H16ISP::H16ISPFilterGraphMessage::Release(*v4);
      v21 = *(a1 + 112);
      v22 = v21 + v16;
      if (v18 + 2 != v21)
      {
        memmove(v18, v18 + 2, v21 + v16);
      }

      *(a1 + 112) = v18 + v22;
      v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v17)
      {
        v23 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v23;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "cleanupMessageList";
        v27 = 1024;
        v28 = v20;
        _os_log_error_impl(&dword_2247DB000, v23, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: Message Drop due to above queue size!, requestid=0x%0X\n", buf, 0x12u);
      }

      v24 = *(a1 + 112);
      if (*(a1 + 96) >= ((v24 - *(a1 + 104)) >> 4))
      {
        break;
      }

      v4 += 2;
      v18 += 2;
      v16 -= 16;
    }

    while (v4 != v24);
  }
}

void std::allocator<H16ISP::ExclaveMessageStruct>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ImageUtils::Cornerfinder(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a1 + 20);
  v15 = *(a1 + 8);
  Matrix<double>::Resize(a5, 2, v14);
  memcpy(*(a5 + 8), v15, 8 * (2 * v14));
  Matrix<BOOL>::Resize(a6, 1, v14);
  Matrix<BOOL>::Resize(a7, 1, v14);
  Matrix<BOOL>::Resize(a8, 1, v14);
  v27 = a3;
  LODWORD(a6) = (2 * a3) | 1;
  Matrix<double>::Matrix(v33, (2 * a4) | 1, a6);
  Matrix<double>::Matrix(v31, (2 * a4) | 1, a6);
  v28 = a6;
  Matrix<double>::Matrix(v29, (2 * a4) | 1, a6);
  v16 = -a4;
  if (-a4 <= a4)
  {
    v17 = -a3;
    v18 = v30;
    v19 = v32;
    v20 = v34;
    v21 = a4;
    do
    {
      v22 = a4;
      if (v17 <= v27)
      {
        v23 = exp(-(v16 / v21 * (v16 / v21)));
        v24 = v28;
        do
        {
          *v20++ = v23 * exp(-(v17 / v27 * (v17 / v27)));
          *v19++ = v17;
          *v18++ = v16;
          ++v17;
          --v24;
        }

        while (v24);
      }

      a4 = v22;
      v25 = v16++ == v22;
      v17 = -v27;
    }

    while (!v25);
  }

  if (v14)
  {
    operator new[]();
  }

  Matrix<double>::~Matrix(v29);
  Matrix<double>::~Matrix(v31);
  return Matrix<double>::~Matrix(v33);
}

void sub_22495C468(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(v1 - 216);
  Matrix<double>::~Matrix(v1 - 184);
  _Unwind_Resume(a1);
}

double ImageUtils::DetectArucoMarker(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 20);
  v4 = *(a1 + 8);
  Matrix<BOOL>::Matrix(v21, v3, v2);
  v5 = v22;
  ImageUtils::OtsuThreshold(a1);
  v7 = v2 * v3;
  if (v2 * v3)
  {
    do
    {
      v8 = *v4++;
      *v5++ = v8 > v6;
      --v7;
    }

    while (v7);
  }

  v9 = 0;
  v10 = vcvtmd_u64_f64(v3 / 7.0);
  v11 = v2 * v10;
  v12 = v2 - v10;
LABEL_4:
  v13 = 0;
  if (v9 == 6 || v9 == 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 6;
  }

  while (1)
  {
    if (v10)
    {
      v16 = 0;
      v17 = 0;
      v18 = &v22[(v11 * v9) + v13 * v10];
      do
      {
        v19 = 0;
        do
        {
          v17 += v18[v19++];
        }

        while (v10 != v19);
        ++v16;
        v18 += v10 + v12;
      }

      while (v16 != v10);
      if (v17 > (v10 * v10) >> 1)
      {
        break;
      }
    }

    v13 += v15;
    if (v13 > 6)
    {
      if (++v9 == 7)
      {
        operator new[]();
      }

      goto LABEL_4;
    }
  }

  Matrix<BOOL>::~Matrix(v21);
  return -1.0;
}

void sub_22495C920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  Matrix<BOOL>::~Matrix(va);
  Matrix<BOOL>::~Matrix(va1);
  Matrix<BOOL>::~Matrix(v9 - 96);
  _Unwind_Resume(a1);
}

uint64_t CheckParity(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  Matrix<BOOL>::Resize(a2, *(a1 + 16), *(a1 + 20));
  v4 = 0;
  v5 = *(a2 + 8);
  v6 = *(v3 + 9);
  *v5 = *v3;
  *(v5 + 9) = v6;
  v7 = v5 + 2;
  v8 = 5;
  do
  {
    v9 = (*v3 == v3[1]) | (2 * (v3[2] != v3[3])) | (4 * ((v3[2] ^ v3[1]) != v3[4]));
    if (v9 > 3)
    {
      if (v9 <= 5)
      {
        ++v4;
        if (v9 == 4)
        {
          v7[2] ^= 1u;
        }

        else
        {
          *(v7 - 1) ^= 1u;
        }

        goto LABEL_15;
      }

      if (v9 == 6)
      {
        ++v4;
        *v7 ^= 1u;
        goto LABEL_15;
      }

LABEL_13:
      v4 += 2;
      goto LABEL_15;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        ++v4;
        v7[1] ^= 1u;
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (v9)
    {
      ++v4;
      *(v7 - 2) ^= 1u;
    }

LABEL_15:
    v3 += 5;
    v7 += 5;
    --v8;
  }

  while (v8);
  if (v4 == 1)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void ImageUtils::GetInitialGuessLineScan(uint64_t *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t a5, unsigned int a6)
{
  v10 = *(a3 + 20);
  v11 = *(a3 + 8);
  Matrix<double>::Matrix(&v96, 2, *(a3 + 20));
  v96 = &unk_283813CF8;
  v12 = v97;
  Matrix<BOOL>::Matrix(&v92, 1, v10);
  v92 = &unk_283814388;
  bzero(v93, (v95 * v94));
  if (v10)
  {
    v13 = 0;
    v14 = 0;
    v15 = v93;
    v16 = v93 + 1;
    v17 = v10 - 1;
    v18 = v11 + 1;
    do
    {
      if (v15[v13] == 1)
      {
        ++v13;
      }

      else
      {
        v19 = 1;
        v15[v13] = 1;
        v20 = *v11;
        v21 = v11[v10];
        if (++v13 >= v10)
        {
          v26 = v11[v10];
          v25 = *v11;
        }

        else
        {
          v22 = v18;
          v23 = v17;
          v24 = v16;
          v25 = *v11;
          v26 = v11[v10];
          do
          {
            v27 = *v22;
            v28 = v22[v10];
            if (sqrt((v20 - *v22) * (v20 - *v22) + (v21 - v28) * (v21 - v28)) <= 5.0)
            {
              *v24 = 1;
              v25 = v25 + v27;
              v26 = v26 + v28;
              ++v19;
            }

            ++v24;
            ++v22;
            --v23;
          }

          while (v23);
        }

        if (v19 >= a6)
        {
          *v12 = v25 / v19;
          v12[v10] = v26 / v19;
          ++v12;
          ++v14;
        }
      }

      ++v11;
      ++v16;
      --v17;
      ++v18;
    }

    while (v13 != v10);
  }

  else
  {
    v14 = 0;
  }

  Matrix<double>::Matrix(&v90, 2, v14);
  v90 = &unk_283813CF8;
  memcpy(v91, v97, 8 * v14);
  memcpy(&v91[8 * v14], &v97[v10], 8 * v14);
  v88 = 2;
  v89 = 0;
  v86 = &unk_283813CF8;
  v87 = 0;
  v84[1] = 0;
  v84[2] = 1;
  v85 = 0;
  v84[0] = &unk_283814388;
  v81 = 0;
  v82 = 1;
  v83 = 0;
  v80 = &unk_283814388;
  v77 = 0;
  v78 = 1;
  v79 = 0;
  v76 = &unk_283814388;
  ImageUtils::Cornerfinder(&v90, a5, 3u, 3, &v86, v84, &v80, &v76);
  v29 = v14;
  v30 = 0;
  if (v14)
  {
    v31 = v77;
    v32 = v81;
    v33 = v87;
    v34 = v91;
    do
    {
      if ((*v32 & 1) == 0 && (*v31 & 1) == 0)
      {
        *v34 = *v33;
        v34[v29] = v33[v29];
        ++v34;
        ++v30;
      }

      ++v32;
      ++v31;
      ++v33;
      --v14;
    }

    while (v14);
  }

  Matrix<double>::Matrix(&v74, 2, v30);
  v74 = &unk_283813CF8;
  memcpy(__dst, v91, 8 * v30);
  memcpy(__dst + 8 * v30, &v91[8 * v29], 8 * v30);
  Matrix<int>::Matrix(&v70, 2, v30);
  v70 = &unk_283814980;
  memset(__b, 255, 4 * (v73 * v72));
  v35 = __b;
  Matrix<int>::Matrix(v66, a4[1] + 1, *a4 + 1);
  memset(v67, 255, 4 * (a4[1] + 1 + (a4[1] + 1) * *a4));
  Matrix<unsigned int>::Matrix(v65, 1, v30);
  v65[0] = &unk_283814350;
  v36 = v65[1];
  Matrix<BOOL>::Matrix(v62, 1, v30);
  v62[0] = &unk_283814388;
  bzero(v62[1], (v64 * v63));
  Matrix<unsigned int>::Matrix(&v61, 1, v30);
  v61 = &unk_283814350;
  Matrix<BOOL>::Matrix(v58, 1, v30);
  v37 = v30;
  v58[0] = &unk_283814388;
  bzero(v58[1], (v60 * v59));
  v38 = *a1;
  v39 = (a1[1] - *a1) >> 5;
  v40 = &v35[v37];
  if (v39)
  {
    v41 = 0;
    v42 = *a2;
    v43 = v36;
    do
    {
      v56 = 1;
      v57 = 0;
      v55 = 0;
      v54 = &unk_283812C88;
      v52 = 1;
      v53 = 0;
      v51 = 0;
      v50 = &unk_283814350;
      NearestNeighbor(&v74, v42, &v54, &v50);
      if (*v55 <= 3.0 && v55[1] <= 3.0 && v55[2] <= 3.0 && v55[3] <= 3.0)
      {
        v44 = 0;
        v45 = v51;
        v46 = *(v38 + 8);
        do
        {
          v47 = *(v46 + v44);
          v48 = *(v46 + v44 + 16);
          v35[*(v45 + v44)] = v47;
          *&v40[4 * *(v45 + v44)] = v48;
          if (v68 <= v48 || v69 <= v47)
          {
            __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
          }

          *(v67 + v47 + v69 * v48) = *(v45 + v44);
          *(v43 + v44) = *(v45 + v44);
          v44 += 4;
        }

        while (v44 != 16);
        v43 += v44;
      }

      Matrix<unsigned int>::~Matrix(&v50);
      Matrix<double>::~Matrix(&v54);
      ++v41;
      v38 += 32;
      v42 += 32;
    }

    while (v41 != v39);
  }

  v54 = &unk_283812C58;
  operator new[]();
}

void sub_22495E17C(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(&STACK[0x238]);
  Matrix<BOOL>::~Matrix(&STACK[0x258]);
  Matrix<unsigned int>::~Matrix(&STACK[0x278]);
  Matrix<BOOL>::~Matrix(&STACK[0x298]);
  Matrix<unsigned int>::~Matrix(&STACK[0x2B8]);
  Matrix<int>::~Matrix(&STACK[0x2D8]);
  Matrix<int>::~Matrix(&STACK[0x2F8]);
  Matrix<double>::~Matrix(&STACK[0x318]);
  Matrix<BOOL>::~Matrix(&STACK[0x338]);
  Matrix<BOOL>::~Matrix(&STACK[0x358]);
  Matrix<BOOL>::~Matrix(&STACK[0x378]);
  Matrix<double>::~Matrix(v1 - 232);
  Matrix<double>::~Matrix(v1 - 200);
  Matrix<BOOL>::~Matrix(v1 - 168);
  Matrix<double>::~Matrix(v1 - 136);
  _Unwind_Resume(a1);
}

uint64_t NearestNeighbor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 20);
  v8 = *(a2 + 8);
  v9 = *(a1 + 20);
  Matrix<double>::Resize(a3, 1, v7);
  v10 = *(a3 + 8);
  result = Matrix<float>::Resize(a4, 1, v7);
  if (v7)
  {
    v12 = 0;
    v13 = *(a4 + 8);
    do
    {
      v14 = *v8;
      v15 = v8[v7];
      v16 = *(a1 + 8);
      v17 = sqrt((*v16 - *v8) * (*v16 - *v8) + (v16[v9] - v15) * (v16[v9] - v15));
      *v10 = v17;
      *v13 = 0;
      if (v9 >= 2)
      {
        v18 = v16 + 1;
        v19 = 1;
        do
        {
          v20 = sqrt((*v18 - v14) * (*v18 - v14) + (v18[v9] - v15) * (v18[v9] - v15));
          if (v20 < v17)
          {
            *v10 = v20;
            *v13 = v19;
            v17 = v20;
          }

          ++v19;
          ++v18;
        }

        while (v9 != v19);
      }

      ++v12;
      ++v8;
      ++v10;
      ++v13;
    }

    while (v12 != v7);
  }

  return result;
}

void ScanPointsOnLine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 20) == 1)
  {
    if (*(a3 + 20) == 1)
    {
      if (*(a5 + 20) == 1)
      {
        operator new[]();
      }

      ScanPointsOnLine();
    }

    ScanPointsOnLine();
  }

  ScanPointsOnLine();
}

void sub_22495EA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  Matrix<double>::~Matrix(&a23);
  Matrix<double>::~Matrix(&a27);
  Matrix<double>::~Matrix(&a31);
  Matrix<double>::~Matrix(&a35);
  Matrix<double>::~Matrix(v35 - 176);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<2u,double>::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator*(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283813CF8;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

void sub_22495F824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a26);
  a26 = &a40;
  std::vector<ImageUtils::Marker>::__destroy_vector::operator()[abi:ne200100](&a26);
  Matrix<double>::~Matrix(&a47);
  Matrix<double>::~Matrix(&a51);
  a26 = &a55;
  std::vector<ImageUtils::Rect>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a58;
  std::vector<ImageUtils::Blob>::__destroy_vector::operator()[abi:ne200100](&a26);
  Matrix<BOOL>::~Matrix(&a61);
  a26 = &a65;
  std::vector<ImageUtils::Blob>::__destroy_vector::operator()[abi:ne200100](&a26);
  Matrix<unsigned short>::~Matrix(v65 - 248);
  Matrix<BOOL>::~Matrix(v65 - 216);
  Matrix<BOOL>::~Matrix(v65 - 184);
  Matrix<BOOL>::~Matrix(v65 - 152);
  _Unwind_Resume(a1);
}

void std::vector<ImageUtils::Rect>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<ImageUtils::Rect>::__construct_one_at_end[abi:ne200100]<ImageUtils::Rect const&>(a1, a2);
  }

  std::vector<ImageUtils::Rect>::__emplace_back_slow_path<ImageUtils::Rect const&>(a1, a2);
}

uint64_t MatrixNxPts<2u,double>::operator+@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator+(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283813CF8;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t MatrixNxPts<2u,double>::operator/@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator/(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283813CF8;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t MatrixNxPts<2u,double>::operator-@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator-(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283813CF8;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

double Circshift(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 20);
  Matrix<double>::Resize(a3, 2, v6);
  if (v6)
  {
    v8 = *(a1 + 8);
    v9 = *(a3 + 8);
    v10 = -a2;
    v11 = v6;
    do
    {
      v12 = (v8 + 8 * (v10 % v6));
      *v9 = *v12;
      result = *&v12[v6];
      *&v9[v6] = result;
      ++v9;
      ++v10;
      --v11;
    }

    while (v11);
  }

  return result;
}

void std::vector<ImageUtils::Marker>::push_back[abi:ne200100](void *a1, void *a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<ImageUtils::Marker>::__construct_one_at_end[abi:ne200100]<ImageUtils::Marker const&>(a1, a2);
  }

  std::vector<ImageUtils::Marker>::__emplace_back_slow_path<ImageUtils::Marker const&>(a1, a2);
}

void sub_22495FDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(&a17);
  _Unwind_Resume(a1);
}

uint64_t SurfaceFittingSubPixelRefinement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v30 = *(a1 + 20);
  v31 = *(a1 + 16);
  v8 = *(a2 + 20);
  Matrix<double>::Matrix(a4, 2, v8);
  *a4 = &unk_283813CF8;
  memcpy(*(a4 + 8), *(v5 + 8), 8 * (2 * v8));
  v9 = *(a4 + 8);
  LODWORD(v5) = ((2 * a3) | 1) * ((2 * a3) | 1);
  Matrix<double>::Matrix(v33, v5, 6);
  Matrix<double>::Matrix(v32, 1, v5);
  v32[0] = &unk_283812C88;
  if (v8)
  {
    v10 = 0;
    do
    {
      v11 = llround(*v9);
      v12 = llround(v9[v8]);
      if (v11 >= a3 && v11 + a3 < v30 && v12 >= a3 && v12 + a3 < v31)
      {
        if ((a3 & 0x80000000) == 0)
        {
          v16 = v32[1];
          v17 = v34;
          v18 = *(a1 + 16);
          v19 = -a3;
          v20 = v12 - a3;
          v21 = (v12 - a3) * (v11 - a3);
          do
          {
            v22 = v19 + v12;
            v23 = *(a1 + 20);
            v24 = 8 * (v11 - a3) + 8 * v23 * v20;
            v25 = v21;
            v26 = v11 - a3;
            v27 = (2 * a3) | 1;
            do
            {
              *v17 = (v26 * v26);
              *(v17 + 8) = v25;
              *(v17 + 16) = (v22 * v22);
              *(v17 + 24) = v26;
              *(v17 + 32) = (v19 + v12);
              *(v17 + 40) = 0x3FF0000000000000;
              if (v22 >= v18 || v26 >= v23)
              {
                __assert_rtn("operator()", "Matrix.hpp", 125, "row < m_rows && col < m_cols");
              }

              *v16++ = *(*(a1 + 8) + v24);
              v17 += 48;
              ++v26;
              v24 += 8;
              v25 += v20;
              --v27;
            }

            while (v27);
            ++v20;
            v21 += v11 - a3;
          }

          while (v19++ != a3);
        }

        Matrix<double>::SolveUsingQR(v33, v32);
      }

      ++v10;
      ++v9;
    }

    while (v10 != v8);
  }

  Matrix<double>::~Matrix(v32);
  return Matrix<double>::~Matrix(v33);
}

void sub_22496019C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  Matrix<double>::~Matrix(va2);
  Matrix<double>::~Matrix(v3);
  _Unwind_Resume(a1);
}

uint64_t ImageUtils::DetectAndTrackChessBoard(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, _BYTE *a7, uint64_t *a8)
{
  v13 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *a7 = 0;
  v8 = *a1;
  v9 = a1[1] - *a1;
  std::vector<Matrix<double>>::resize(a8, (v9 >> 5));
  for (i = 1; (i & 1) != 0; i = 0)
  {
    if ((v9 & 0x1FFFFFFFE0) != 0)
    {
      Matrix<double>::Matrix(v12, v8, 0, -1);
    }
  }

  return 1;
}

void sub_224960C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a31);
  Matrix<unsigned int>::~Matrix(&a35);
  Matrix<double>::~Matrix(&a39);
  Matrix<double>::~Matrix(&a43);
  Matrix<double>::~Matrix(&a47);
  a47 = &a51;
  std::vector<ImageUtils::Rect>::__destroy_vector::operator()[abi:ne200100](&a47);
  a47 = &a54;
  std::vector<ImageUtils::Marker>::__destroy_vector::operator()[abi:ne200100](&a47);
  Matrix<double>::~Matrix(&a57);
  Matrix<double>::~Matrix(&a61);
  Matrix<double>::~Matrix(&a65);
  *(v72 - 208) = &a69;
  std::vector<Matrix<double>>::__destroy_vector::operator()[abi:ne200100]((v72 - 208));
  *(v72 - 208) = &a72;
  std::vector<MatrixNxPts<2u,unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v72 - 208));
  Matrix<unsigned int>::~Matrix(&STACK[0x210]);
  *(v72 - 208) = &STACK[0x230];
  std::vector<ImageUtils::Rect>::__destroy_vector::operator()[abi:ne200100]((v72 - 208));
  *(v72 - 208) = &STACK[0x248];
  std::vector<ImageUtils::Marker>::__destroy_vector::operator()[abi:ne200100]((v72 - 208));
  Matrix<double>::~Matrix(&STACK[0x280]);
  Matrix<double>::~Matrix(v72 - 240);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<Matrix<double>>::resize(uint64_t *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 32 * a2;
      if (v3 != v6)
      {
        v7 = v3 - 32;
        v8 = (v3 - 32);
        v9 = (v3 - 32);
        do
        {
          v10 = *v9;
          v9 -= 4;
          result = (*v10)(v8);
          v7 -= 32;
          v11 = v8 == v6;
          v8 = v9;
        }

        while (!v11);
      }

      v2[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<Matrix<double>>::__append(result, v5);
  }

  return result;
}

void std::vector<MatrixNxPts<2u,unsigned int>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<MatrixNxPts<2u,unsigned int>>::__construct_one_at_end[abi:ne200100]<MatrixNxPts<2u,unsigned int> const&>(a1, a2);
  }

  std::vector<MatrixNxPts<2u,unsigned int>>::__emplace_back_slow_path<MatrixNxPts<2u,unsigned int> const&>(a1, a2);
}

void std::vector<MatrixNxPts<2u,double>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<MatrixNxPts<2u,double>>::__construct_one_at_end[abi:ne200100]<MatrixNxPts<2u,double> const&>(a1, a2);
  }

  std::vector<MatrixNxPts<2u,double>>::__emplace_back_slow_path<MatrixNxPts<2u,double> const&>(a1, a2);
}

void std::vector<MatrixNxPts<3u,double>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<MatrixNxPts<3u,double>>::__construct_one_at_end[abi:ne200100]<MatrixNxPts<3u,double> const&>(a1, a2);
  }

  std::vector<MatrixNxPts<3u,double>>::__emplace_back_slow_path<MatrixNxPts<3u,double> const&>(a1, a2);
}

uint64_t MatrixNxPts<2u,double>::operator-@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix<double>::operator-(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &unk_283813CF8;
  *(a3 + 8) = v4;
  *(a3 + 16) = 2;
  *(a3 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t Matrix<int>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283814918;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

void Matrix<int>::~Matrix(uint64_t a1)
{
  Matrix<int>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void std::vector<ImageUtils::Rect>::__emplace_back_slow_path<ImageUtils::Rect const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<ImageUtils::Rect>::allocate_at_least[abi:ne200100](a1, v6);
    }

    *(&v7 + 1) = 0;
    Matrix<double>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_2249611FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ImageUtils::Rect>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ImageUtils::Rect>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ImageUtils::Rect>,ImageUtils::Rect*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    Matrix<double>::Matrix(a4, a2, 0, -1);
  }
}

void sub_224961308(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = Matrix<double>::~Matrix(v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ImageUtils::Rect>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    Matrix<double>::~Matrix(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ImageUtils::Marker>::__construct_one_at_end[abi:ne200100]<ImageUtils::Marker const&>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *v2 = *a2;
  Matrix<double>::Matrix((v2 + 1), (a2 + 1), 0, -1);
}

void std::vector<ImageUtils::Marker>::__emplace_back_slow_path<ImageUtils::Marker const&>(void *a1, void *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v5 = 0x666666666666666;
    }

    else
    {
      v5 = v3;
    }

    v8 = a1;
    if (v5)
    {
      std::allocator<ImageUtils::Marker>::allocate_at_least[abi:ne200100](a1, v5);
    }

    v6 = 0;
    v7 = 40 * v2;
    *(40 * v2) = *a2;
    Matrix<double>::Matrix(40 * v2 + 8, (a2 + 1), 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_22496152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ImageUtils::Marker>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ImageUtils::Marker>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ImageUtils::Marker>,ImageUtils::Marker*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    Matrix<double>::Matrix((a4 + 1), (a2 + 1), 0, -1);
  }
}

void sub_224961648(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      v5 = Matrix<double>::~Matrix(v5) - 40;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ImageUtils::Marker>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    Matrix<double>::~Matrix(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ImageUtils::Marker>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        Matrix<double>::~Matrix((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<ImageUtils::Rect>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = Matrix<double>::~Matrix(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Matrix<double>::SolveUsingQR(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v21 = *(a1 + 20);
  v5 = v21;
  v22 = v4;
  Matrix<double>::Matrix(v19, v4, v21);
  if (v5 >= 1)
  {
    v6 = *(a1 + 8);
    v7 = &v6[v5];
    v8 = v20;
    v9 = v4 * v5;
    do
    {
      if (v9 >= 1)
      {
        v10 = v6;
        do
        {
          *v8++ = *v10;
          v10 += v5;
        }

        while (v10 < &v6[v9]);
      }

      ++v6;
    }

    while (v6 < v7);
  }

  v18 = 0.0;
  v16 = 0;
  v17 = -1;
  v15 = 78;
  if (v4 <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = v4;
  }

  v13 = v11;
  v14 = 1;
  Matrix<double>::Matrix(v12, 1, v11);
  v12[0] = &unk_283812C88;
  memcpy(v12[1], *(a2 + 8), 8 * *(a2 + 20));
  dgels_NEWLAPACK();
  if (!v16)
  {
    v17 = v18;
    operator new[]();
  }

  __assert_rtn("SolveUsingQR", "Matrix.hpp", 2234, "!info");
}

void sub_224961A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<Matrix<double>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = v4 + 32 * a2;
      v12 = result[1];
      do
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *v4 = &unk_283812C58;
        *(v4 + 24) = 0;
        v4 += 32;
        v12 += 32;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v23 = result;
    if (v10)
    {
      std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v13 = 32 * v8;
    v20 = 0;
    v21 = 32 * v8;
    *(&v22 + 1) = 0;
    v14 = 32 * v8;
    v15 = 32 * v8;
    do
    {
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *v15 = &unk_283812C58;
      *(v15 + 24) = 0;
      v15 += 32;
      v14 += 32;
    }

    while (v15 != 32 * v8 + 32 * a2);
    *&v22 = v13 + 32 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<Matrix<double>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_224961BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<MatrixNxPts<2u,unsigned int>>::__emplace_back_slow_path<MatrixNxPts<2u,unsigned int> const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<MatrixNxPts<2u,unsigned int>>::allocate_at_least[abi:ne200100](a1, v6);
    }

    *(&v7 + 1) = 0;
    Matrix<unsigned int>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_224961D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MatrixNxPts<2u,unsigned int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void MatrixNxPts<2u,unsigned int>::~MatrixNxPts(uint64_t a1)
{
  Matrix<unsigned int>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void std::allocator<MatrixNxPts<2u,unsigned int>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<2u,unsigned int>>,MatrixNxPts<2u,unsigned int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    Matrix<unsigned int>::Matrix(a4, a2, 0, -1);
  }
}

void sub_224961E9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<2u,unsigned int>>,MatrixNxPts<2u,unsigned int>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<MatrixNxPts<2u,unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<MatrixNxPts<2u,double>>::__emplace_back_slow_path<MatrixNxPts<2u,double> const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](a1, v6);
    }

    *(&v7 + 1) = 0;
    Matrix<double>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_2249620A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<2u,double>>,MatrixNxPts<2u,double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    Matrix<double>::Matrix(a4, a2, 0, -1);
  }
}

void sub_224962188(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>();
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MatrixNxPts<3u,double>>::__emplace_back_slow_path<MatrixNxPts<3u,double> const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](a1, v6);
    }

    *(&v7 + 1) = 0;
    Matrix<double>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_224962320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<3u,double>>,MatrixNxPts<3u,double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    Matrix<double>::Matrix(a4, a2, 0, -1);
  }
}

void sub_224962408(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>();
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MatrixNxPts<2u,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t Matrix<int>::Matrix(uint64_t result, int a2, int a3)
{
  *result = &unk_283814918;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

void MatrixNxPts<2u,int>::~MatrixNxPts(uint64_t a1)
{
  Matrix<int>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void Matrix<double>::operator+(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = a3;
  Matrix<double>::Matrix(a2, *(a1 + 16), *(a1 + 20));
  vDSPVsadd<double>(*(a1 + 8), 1, &v5, *(a2 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

uint64_t dumpTailspinOnDispatchQueue(char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v9 = MEMORY[0x277D86220];
  if (!v8)
  {
    v28 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == MEMORY[0x277D86220])
    {
      v28 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v28;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_6(a2, v28);
    }

    return 0;
  }

  v10 = v8;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v12 = *MEMORY[0x277D82D08];
  v65[0] = v10;
  v13 = *MEMORY[0x277D82D38];
  v64[0] = v12;
  v64[1] = v13;
  v65[1] = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  v64[2] = *MEMORY[0x277D82D18];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:has_internal_diagnostics ^ 1u];
  v15 = *MEMORY[0x277D82D00];
  v65[2] = v14;
  v65[3] = MEMORY[0x277CBEC38];
  v16 = *MEMORY[0x277D82CC0];
  v64[3] = v15;
  v64[4] = v16;
  v17 = *MEMORY[0x277D82CC8];
  v65[4] = MEMORY[0x277CBEC38];
  v65[5] = MEMORY[0x277CBEC38];
  v18 = *MEMORY[0x277D82CB8];
  v64[5] = v17;
  v64[6] = v18;
  v64[7] = *MEMORY[0x277D82CD0];
  v65[6] = MEMORY[0x277CBEC38];
  v65[7] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:8];
  CFRelease(v10);
  v20 = GetCameraUserspaceLogStream__servicesLog;
  if (GetCameraUserspaceLogStream__servicesLog == v9)
  {
    v20 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream__servicesLog = v20;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v74 = a1;
    v75 = 2112;
    v76 = v19;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = a4;
    _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_DEFAULT, "dumpTailspinWithOptionsOnQueue %s %@ %p %p\n", buf, 0x2Au);
  }

  v21 = strlen(a1);
  if (v21 >= 0x401)
  {
    v29 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v29 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v29;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_1(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    return 0;
  }

  v22 = v21;
  v23 = strrchr(a1, 47);
  if (v23)
  {
    v24 = v23;
    v25 = v19;
    v26 = v23 - a1;
    __strncpy_chk();
    buf[v26] = 0;
    v27 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v27 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v27;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v66) = 136315138;
      *(&v66 + 4) = buf;
      _os_log_impl(&dword_2247DB000, v27, OS_LOG_TYPE_DEFAULT, "creating directory %s\n", &v66, 0xCu);
    }

    if (mkdir(buf, 0x1EDu) && *__error() != 17)
    {
      v51 = GetCameraUserspaceLogStream__servicesLog;
      if (GetCameraUserspaceLogStream__servicesLog == v9)
      {
        v51 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream__servicesLog = v51;
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        dumpTailspinOnDispatchQueue_cold_2();
      }

      return 0;
    }

    strncpy(&buf[v26], v24, v22 - v26);
    v19 = v25;
  }

  else
  {
    strncpy(buf, a1, 0x400uLL);
  }

  v63 = 0;
  if (time(&v63) == -1)
  {
    v43 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v43 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v43;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_5(v43, v44, v45, v46, v47, v48, v49, v50);
    }

    return 0;
  }

  v37 = localtime(&v63);
  v38 = strftime(&buf[v22], 1024 - v22, "_%Y.%m.%d_%H-%M-%S%z.tailspin", v37);
  v39 = GetCameraUserspaceLogStream__servicesLog;
  if (!v38)
  {
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v39 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v39;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_4(v39, v52, v53, v54, v55, v56, v57, v58);
    }

    return 0;
  }

  if (GetCameraUserspaceLogStream__servicesLog == v9)
  {
    v39 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream__servicesLog = v39;
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v66) = 136315138;
    *(&v66 + 4) = buf;
    _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_DEFAULT, "creating tailspin file %s\n", &v66, 0xCu);
  }

  v40 = open(buf, 514, 420);
  if (v40 < 0)
  {
    v59 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v59 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v59;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_3();
    }

    return 0;
  }

  v41 = v40;
  if (a3)
  {
    *&v66 = MEMORY[0x277D85DD0];
    *(&v66 + 1) = 3221225472;
    v67 = __dumpTailspinWithOptionsOnQueue_block_invoke;
    v68 = &unk_27853B7B0;
    v72 = v40;
    v70 = a4;
    v71 = a1;
    v69 = v19;
    tailspin_dump_output_with_options();
    return 1;
  }

  else
  {
    v61 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v61 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v61;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v66) = 136315138;
      *(&v66 + 4) = buf;
      _os_log_impl(&dword_2247DB000, v61, OS_LOG_TYPE_DEFAULT, "Dump tailspin to %s begin ...\n", &v66, 0xCu);
    }

    v42 = tailspin_dump_output_with_options_sync();
    v62 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v62 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v62;
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v66) = 0;
      _os_log_impl(&dword_2247DB000, v62, OS_LOG_TYPE_DEFAULT, "Dump tailspin end ...\n", &v66, 2u);
    }

    fsync(v41);
    close(v41);
  }

  return v42;
}

uint64_t dumpTailspinInBackground(char *a1, const char *a2, uint64_t a3)
{
  global_queue = dispatch_get_global_queue(9, 0);

  return dumpTailspinOnDispatchQueue(a1, a2, global_queue, a3);
}

uint64_t __dumpTailspinWithOptionsOnQueue_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  fsync(*(a1 + 56));
  close(*(a1 + 56));
  v4 = GetCameraUserspaceLogStream__servicesLog;
  if (a2)
  {
    if (GetCameraUserspaceLogStream__servicesLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D82D08]];
      v6 = *(a1 + 48);
      v8 = 138412546;
      v9 = v5;
      v10 = 2080;
      v11 = v6;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "Tailspin with reason '%@' stored at path %s\n", &v8, 0x16u);
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream__servicesLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __dumpTailspinWithOptionsOnQueue_block_invoke_cold_1(a1);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

H16ISP::H16ISPGeneralProcessFrameReceiver *H16ISP::H16ISPGeneralProcessFrameReceiver::H16ISPGeneralProcessFrameReceiver(H16ISP::H16ISPGeneralProcessFrameReceiver *this, H16ISP::H16ISPDevice *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 184) = 0;
  *(this + 33) = 0;
  *(this + 68) = 0;
  *(this + 35) = 0;
  *(this + 36) = a2;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 44) = 0x4000000000000000;
  *(this + 90) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  pthread_mutex_init((this + 48), 0);
  pthread_mutex_init(this + 3, 0);
  *(this + 32) = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  pthread_mutex_init((this + 112), &v4);
  pthread_mutexattr_destroy(&v4);
  *(this + 22) = dispatch_semaphore_create(0);
  return this;
}

void H16ISP::H16ISPGeneralProcessFrameReceiver::~H16ISPGeneralProcessFrameReceiver(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  if (*this)
  {
    H16ISP::H16ISPGeneralProcessFrameReceiver::stopReceive(this);
  }

  if (*(this + 35))
  {
    H16ISP::H16ISPGeneralProcessFrameReceiver::removeIODispatcherFromRunLoop(this);
  }

  pthread_mutex_destroy((this + 48));
  pthread_mutex_destroy((this + 112));
  pthread_mutex_destroy(this + 3);
  H16ISP::H16ISPDevice::ISP_FlushInactiveDARTMappings(*(this + 36));
  dispatch_release(*(this + 22));
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 37);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::stopReceive(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  v2 = 3758097110;
  pthread_mutex_lock((this + 48));
  if (*this)
  {
    H16ISP::H16ISPGeneralProcessFrameReceiver::stopNoDataTimer(this);
    pthread_mutex_lock((this + 112));
    *(this + 344) = 1;
    pthread_mutex_unlock((this + 112));
    v3 = 2001;
    do
    {
      pthread_mutex_lock((this + 112));
      if (!*(this + 42))
      {
        v2 = 0;
        goto LABEL_32;
      }

      usleep(0x3E8u);
      --v3;
    }

    while (v3);
    printf("H16ISPGeneralProcessFrameReceiver: Did not get all pending requests back from kernel. remaining: %d.\n", *(this + 42));
    v4 = *(this + 38);
    v5 = *(this + 39);
    v6 = &v4[*(this + 41) >> 9];
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = (*v6 + 8 * (*(this + 41) & 0x1FFLL));
    }

    while (1)
    {
      v8 = v5 - v4;
      if (v8)
      {
        v9 = *(this + 42) + *(this + 41);
        v10 = *(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF);
      }

      else
      {
        v10 = 0;
      }

      if (v7 == v10)
      {
        break;
      }

      v11 = *v7;
      if (*v7)
      {
        CVPixelBufferRelease(*(v11 + 8));
        CVPixelBufferRelease(*(v11 + 32));
        v12 = *(v11 + 40);
        if (v12)
        {
          CVPixelBufferRelease(v12);
        }

        if (*(v11 + 944))
        {
          v13 = 0;
          do
          {
            CVPixelBufferRelease(*(v11 + 48 + 8 * v13++));
          }

          while (v13 < *(v11 + 944));
        }

        printf("H16ISPGeneralProcessFrameReceiver: Request not returned 0x%p\n", v11);
        MEMORY[0x22AA55B60](v11, 0x10E0C40926370D1);
      }

      else
      {
        printf("H16ISPGeneralProcessFrameReceiver: Request not returned 0x%p\n", 0);
      }

      if (++v7 - *v6 == 4096)
      {
        v14 = v6[1];
        ++v6;
        v7 = v14;
      }

      v4 = *(this + 38);
      v5 = *(this + 39);
    }

    *(this + 42) = 0;
    v15 = v8 >> 3;
    if (v15 >= 3)
    {
      do
      {
        operator delete(*v4);
        v16 = *(this + 39);
        v4 = (*(this + 38) + 8);
        *(this + 38) = v4;
        v15 = (v16 - v4) >> 3;
      }

      while (v15 > 2);
    }

    if (v15 == 1)
    {
      v17 = 256;
    }

    else
    {
      if (v15 != 2)
      {
LABEL_32:
        pthread_mutex_unlock((this + 112));
        *(this + 344) = 0;
        *this = 0;
        goto LABEL_33;
      }

      v17 = 512;
    }

    *(this + 41) = v17;
    goto LABEL_32;
  }

  v2 = 3758097122;
LABEL_33:
  pthread_mutex_unlock((this + 48));
  return v2;
}

void H16ISP::H16ISPGeneralProcessFrameReceiver::removeIODispatcherFromRunLoop(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  v2 = *(this + 35);
  if (v2)
  {
    CFRunLoopRemoveSource(*(this + 1), v2, *MEMORY[0x277CBF058]);
    CFRelease(*(this + 35));
    *(this + 35) = 0;
  }

  v3 = *(this + 33);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 33));
    *(this + 33) = 0;
  }

  v4 = *(this + 68);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], v4, 1u, -1);
    *(this + 68) = 0;
  }
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::setupFrameReceiver(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  *(this + 1) = CFRunLoopGetCurrent();

  return H16ISP::H16ISPGeneralProcessFrameReceiver::addIODispatcherToRunLoop(this);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::addIODispatcherToRunLoop(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  v2 = IOCreateReceivePort(0x39u, this + 68);
  if (!v2)
  {
    v2 = 3758097085;
    shouldFreeInfo = 0;
    context.version = 1;
    context.info = this;
    memset(&context.retain, 0, 24);
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], *(this + 68), MEMORY[0x277CD27F0], &context, &shouldFreeInfo);
    *(this + 33) = v5;
    if (v5)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      *(this + 35) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(this + 1), RunLoopSource, *MEMORY[0x277CBF058]);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::registerFrameReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::registerMessageCallback(H16ISP::H16ISPGeneralProcessFrameReceiver *this, void (*a2)(unsigned int, unsigned int, unsigned int, void *, void *, void *), void *a3)
{
  *(this + 4) = a2;
  *(this + 5) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::startReceive(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  pthread_mutex_lock((this + 48));
  if (*this == 1)
  {
    v2 = 3758097122;
  }

  else
  {
    v2 = 0;
    *(this + 344) = 0;
    *this = 1;
  }

  pthread_mutex_unlock((this + 48));
  return v2;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::stopNoDataTimer(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  pthread_mutex_lock(this + 3);
  v2 = *(this + 32);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 32));
    *(this + 32) = 0;
  }

  return pthread_mutex_unlock(this + 3);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::completeAllRequests(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  pthread_mutex_lock((this + 48));
  if (*this)
  {
    pthread_mutex_lock((this + 112));
    if (*(this + 42))
    {
      *(this + 184) = 1;
      pthread_mutex_unlock((this + 112));
      v2 = dispatch_time(0, 2000000000);
      if (dispatch_semaphore_wait(*(this + 22), v2))
      {
        v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v3 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPGeneralProcessFrameReceiver::completeAllRequests(this + 42, v3);
        }

        v4 = *(this + 38);
        v5 = *(this + 39);
        v6 = (v4 + 8 * (*(this + 41) >> 9));
        if (v5 == v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = (*v6 + 8 * (*(this + 41) & 0x1FFLL));
        }

        while (1)
        {
          if (v5 == v4)
          {
            v10 = 0;
          }

          else
          {
            v9 = *(this + 42) + *(this + 41);
            v10 = *(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF);
          }

          if (v7 == v10)
          {
            break;
          }

          v11 = *v7++;
          printf("H16ISPGeneralProcessFrameReceiver: Request not returned 0x%p\n", v11);
          if ((v7 - *v6) == 4096)
          {
            v12 = v6[1];
            ++v6;
            v7 = v12;
          }

          v4 = *(this + 38);
          v5 = *(this + 39);
        }

        v8 = 3758097110;
        goto LABEL_22;
      }
    }

    else
    {
      pthread_mutex_unlock((this + 112));
    }

    v8 = 0;
LABEL_22:
    pthread_mutex_lock((this + 112));
    *(this + 184) = 0;
    pthread_mutex_unlock((this + 112));
    pthread_mutex_unlock((this + 48));
    return v8;
  }

  pthread_mutex_unlock((this + 48));
  return 3758097122;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcess(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v158 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((v2 + 48));
  if ((*(v7 + 344) & 1) != 0 || *v7 != 1)
  {
    pthread_mutex_unlock((v7 + 48));
    return 3758097122;
  }

  v8 = *(v6 + 1);
  if (v8)
  {
    if (*(v6 + 4))
    {
      v9 = v6[236];
      if ((v9 - 21) >= 0xFFFFFFEC)
      {
        v12 = &BytesPerRow;
        v13 = 12;
        do
        {
          if (!*&v6[v13])
          {
            goto LABEL_6;
          }

          v13 += 2;
          --v9;
        }

        while (v9);
        v124 = v4;
        if ((v4 & 1) == 0)
        {
          CVPixelBufferRetain(v8);
          v14 = *(v6 + 2);
          if (v14)
          {
            CVPixelBufferRetain(v14);
          }

          CVPixelBufferRetain(*(v6 + 4));
          v15 = *(v6 + 5);
          if (v15)
          {
            CVPixelBufferRetain(v15);
          }

          if (v6[236])
          {
            v16 = 0;
            do
            {
              CVPixelBufferRetain(*&v6[2 * v16++ + 12]);
            }

            while (v16 < v6[236]);
          }
        }

        bzero(inputStruct, 0x3C8uLL);
        IOSurface = CVPixelBufferGetIOSurface(*(v6 + 1));
        ID = IOSurfaceGetID(IOSurface);
        v18 = *(v6 + 2);
        v125 = v7;
        v128 = v6 + 12;
        if (v18)
        {
          v19 = CVPixelBufferGetIOSurface(v18);
          LODWORD(v18) = IOSurfaceGetID(v19);
        }

        v144 = v18;
        v127 = v6;
        v20 = (v6 + 2);
        PixelFormatType = CVPixelBufferGetPixelFormatType(*(v6 + 1));
        H16ISP::getFrameFormatMetaInfo(PixelFormatType, &v136);
        FrameFormat = H16ISP::getFrameFormat(PixelFormatType);
        Width = CVPixelBufferGetWidth(*v20);
        Height = CVPixelBufferGetHeight(*v20);
        v23 = v127[6];
        v150 = Height;
        v151 = v23;
        if (FrameFormat != 15 && FrameFormat)
        {
          v30 = *(v127 + 1);
          if (v137 == 2)
          {
            v31 = CVPixelBufferGetIOSurface(v30);
            BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v33 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            AllocSize = IOSurfaceGetAllocSize(v31);
            DataSize = v33 - BaseAddressOfCompressedTileDataRegionOfPlane;
            v142 = AllocSize - (v33 - BaseAddressOfCompressedTileDataRegionOfPlane);
            BytesPerRowOfTileDataOfPlane = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
            v35 = *(v127 + 2);
            if (!v35)
            {
              goto LABEL_32;
            }

            v36 = CVPixelBufferGetIOSurface(v35);
            v37 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v38 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v39 = IOSurfaceGetAllocSize(v36);
            v145 = v38 - v37;
            v146 = v39 - DataSize;
            v29 = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
          }

          else
          {
            BytesPerRowOfTileDataOfPlane = CVPixelBufferGetBytesPerRow(v30);
            DataSize = CVPixelBufferGetDataSize(*(v127 + 1));
            v142 = 0;
            v40 = *(v127 + 2);
            if (!v40)
            {
              goto LABEL_32;
            }

            BytesPerRow = CVPixelBufferGetBytesPerRow(v40);
            v41 = CVPixelBufferGetDataSize(*(v127 + 2));
            v29 = 0;
            v145 = v41;
            v12 = &v146;
          }
        }

        else
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v127 + 1), 0);
          DataSize = CVPixelBufferGetHeight(*(v127 + 1)) * BytesPerRowOfPlane;
          v25 = CVPixelBufferGetBytesPerRowOfPlane(*(v127 + 1), 1uLL);
          v142 = (CVPixelBufferGetHeight(*(v127 + 1)) * v25) >> 1;
          BytesPerRowOfTileDataOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v127 + 1), 0);
          v26 = *(v127 + 2);
          if (!v26)
          {
            goto LABEL_32;
          }

          v27 = CVPixelBufferGetBytesPerRowOfPlane(v26, 0);
          v145 = CVPixelBufferGetHeight(*(v127 + 2)) * v27;
          v28 = CVPixelBufferGetBytesPerRowOfPlane(*(v127 + 2), 1uLL);
          v146 = (CVPixelBufferGetHeight(*(v127 + 2)) * v28) >> 1;
          v29 = CVPixelBufferGetBytesPerRowOfPlane(*(v127 + 2), 0);
        }

        *v12 = v29;
LABEL_32:
        v42 = 0;
        if (PixelFormatType != 875704438 && PixelFormatType != 2016686640 && PixelFormatType != 2037741171)
        {
          if (BYTE8(v136))
          {
            v43 = 0;
          }

          else
          {
            v43 = v137 == 2;
          }

          v42 = !v43;
        }

        v152 = v42;
        v44 = CVPixelBufferGetIOSurface(*(v127 + 4));
        v153 = IOSurfaceGetID(v44);
        v154 = CVPixelBufferGetDataSize(*(v127 + 4));
        v45 = v127;
        v46 = *(v127 + 5);
        if (v46)
        {
          v47 = CVPixelBufferGetIOSurface(v46);
          v156[215] = IOSurfaceGetID(v47);
          v156[216] = CVPixelBufferGetDataSize(*(v127 + 5));
          v45 = v127;
        }

        LODWORD(v48) = *(v45 + 236);
        if (v48)
        {
          v49 = 0;
          v50 = (v45 + 28);
          v126 = (v45 + 108);
          v51 = v128;
          do
          {
            v52 = CVPixelBufferGetPixelFormatType(*&v51[2 * v49]);
            v53 = CVPixelBufferGetIOSurface(*&v128[2 * v49]);
            v156[v49] = IOSurfaceGetID(v53);
            FrameFormatMetaInfo = H16ISP::getFrameFormatMetaInfo(v52, &v134);
            v55 = DWORD1(v134);
            if (!FrameFormatMetaInfo)
            {
              v55 = 0;
            }

            v156[v49 + 80] = v55;
            if (!v55 || (v55 != 15 ? (v56 = v135 == 2) : (v56 = 1), v56))
            {
              v57 = CVPixelBufferGetBytesPerRowOfPlane(*&v128[2 * v49], 0);
            }

            else
            {
              v57 = CVPixelBufferGetBytesPerRow(*&v128[2 * v49]);
            }

            v58 = &v50[8 * v49];
            v59 = *v58;
            v60 = v58[1];
            v61 = v58[2];
            v62 = v58[3];
            v156[v49 + 60] = v57;
            v156[v49 + 100] = v59;
            v156[v49 + 120] = v60;
            v156[v49 + 140] = v61;
            v156[v49 + 160] = v62;
            *(&v156[180] + v49) = CVPixelBufferGetWidth(*&v128[2 * v49]);
            *(&v156[190] + v49) = CVPixelBufferGetHeight(*&v128[2 * v49]);
            *(&v156[200] + v49) = v126[v49];
            v63 = v156[v49 + 80];
            if (v63 != 15 && v63)
            {
              v67 = *&v128[2 * v49];
              if (v135 == 2)
              {
                v68 = CVPixelBufferGetIOSurface(v67);
                v69 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
                v70 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
                v71 = IOSurfaceGetAllocSize(v68);
                v156[2 * v49 + 20] = v70 - v69;
                v66 = v71 - (v70 - v69);
              }

              else
              {
                v72 = CVPixelBufferGetBytesPerRow(v67);
                v73 = CVPixelBufferGetHeight(*&v128[2 * v49]);
                v66 = 0;
                v156[2 * v49 + 20] = v73 * v72;
              }
            }

            else
            {
              v64 = CVPixelBufferGetBytesPerRowOfPlane(*&v128[2 * v49], 0);
              v156[2 * v49 + 20] = CVPixelBufferGetHeight(*&v128[2 * v49]) * v64;
              v65 = CVPixelBufferGetBytesPerRowOfPlane(*&v128[2 * v49], 1uLL);
              v66 = (CVPixelBufferGetHeight(*&v128[2 * v49]) * v65) >> 1;
            }

            v74 = 0;
            v156[2 * v49 + 21] = v66;
            v51 = v128;
            if (v52 != 875704438 && v52 != 2016686640 && v52 != 2037741171)
            {
              if (BYTE8(v134))
              {
                v75 = 0;
              }

              else
              {
                v75 = v135 == 2;
              }

              v74 = !v75;
            }

            *(&v156[210] + v49++) = v74;
            v45 = v127;
            v48 = v127[236];
          }

          while (v49 < v48);
        }

        inputStruct[0] = *v45;
        v76 = inputStruct[0];
        v77 = *(v45 + 1);
        v155 = v48;
        v139 = v77;
        v157 = H16ISP::H16ISPGeneralProcessFrameReceiver::FrameDone;
        bzero(__src, 0xE08uLL);
        LOWORD(__src[0]) = v76;
        extraRowsOnBottom = 0;
        extraColumnsOnRight = 0;
        v78 = v137 == 2;
        BYTE2(__src[0]) = v137 == 2;
        WORD2(__src[0]) = 1;
        v79 = v45 + 1;
        CVPixelBufferGetExtendedPixels(v45[1], 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
        v80 = CVPixelBufferGetIOSurface(v45[1]);
        PlaneCount = CVPixelBufferGetPlaneCount(*v79);
        if (v137 == 2)
        {
          v82 = PlaneCount;
          if (PlaneCount)
          {
            v83 = 0;
            v84 = 1;
            do
            {
              v85 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
              BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
              v87 = &__src[1] + 28 * v83;
              *v87 = 0;
              *(v87 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
              *(v87 + 2) = BaseAddressOfCompressedTileHeaderRegionOfPlane - v85;
              v88 = *(&DataSize + v83) - (BaseAddressOfCompressedTileHeaderRegionOfPlane - v85);
              *(v87 + 3) = BaseAddressOfCompressedTileHeaderRegionOfPlane - v85;
              *(v87 + 4) = v88;
              WidthOfPlane = IOSurfaceGetWidthOfPlane(v80, v83);
              *(v87 + 10) = extraColumnsOnRight + WidthOfPlane;
              HeightOfPlane = IOSurfaceGetHeightOfPlane(v80, v83);
              *(v87 + 11) = extraRowsOnBottom + HeightOfPlane;
              *(v87 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
              v83 = v84;
              v91 = v82 > v84++;
            }

            while (v91);
            v78 = 1;
          }

          BYTE2(__src[0]) = v78;
        }

        v92 = v127;
        v93 = *(v127 + 2);
        if (v93)
        {
          WORD2(__src[0]) = 2;
          CVPixelBufferGetExtendedPixels(v93, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
          v94 = CVPixelBufferGetIOSurface(*(v127 + 2));
          v95 = CVPixelBufferGetPixelFormatType(*(v127 + 2));
          v96 = CVPixelBufferGetPlaneCount(*(v127 + 2));
          v97 = H16ISP::getFrameFormatMetaInfo(v95, &v129);
          if (v130 == 2)
          {
            v98 = v97;
          }

          else
          {
            v98 = 0;
          }

          if (v98 == 1)
          {
            if (v96)
            {
              v99 = 0;
              v100 = 1;
              do
              {
                v101 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
                v102 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
                v103 = &__src[15] + 28 * v99;
                *v103 = 0;
                *(v103 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
                *(v103 + 2) = v102 - v101;
                v104 = *(&DataSize + v99) - (v102 - v101);
                *(v103 + 3) = v102 - v101;
                *(v103 + 4) = v104;
                v105 = IOSurfaceGetWidthOfPlane(v94, v99);
                *(v103 + 10) = extraColumnsOnRight + v105;
                v106 = IOSurfaceGetHeightOfPlane(v94, v99);
                *(v103 + 11) = extraRowsOnBottom + v106;
                *(v103 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
                v99 = v100;
                v91 = v96 > v100++;
              }

              while (v91);
              v78 = 1;
            }

            BYTE2(__src[0]) = v78;
          }

          v92 = v127;
        }

        v107 = *(v92 + 236);
        HIWORD(__src[0]) = v107;
        if (v107)
        {
          v108 = 0;
          v109 = BYTE3(__src[0]);
          do
          {
            v110 = &v128[2 * v108];
            v111 = CVPixelBufferGetIOSurface(*v110);
            v112 = CVPixelBufferGetPixelFormatType(*v110);
            v113 = CVPixelBufferGetPlaneCount(*v110);
            CVPixelBufferGetExtendedPixels(*v110, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
            H16ISP::getFrameFormatMetaInfo(v112, &v134);
            if (v113)
            {
              v114 = 0;
              v115 = 1;
              do
              {
                if (v135 == 2)
                {
                  v116 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
                  v117 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
                  v118 = &__src[14 * v108 + 225] + 28 * v114;
                  *v118 = 0;
                  *(v118 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
                  *(v118 + 2) = v117 - v116;
                  v119 = v156[2 * v108 + 20 + v114] - (v117 - v116);
                  *(v118 + 3) = v117 - v116;
                  *(v118 + 4) = v119;
                  v120 = IOSurfaceGetWidthOfPlane(v111, v114);
                  *(v118 + 10) = extraColumnsOnRight + v120;
                  v121 = IOSurfaceGetHeightOfPlane(v111, v114);
                  *(v118 + 11) = extraRowsOnBottom + v121;
                  *(v118 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
                  v109 = 1;
                }

                else
                {
                  v109 = 0;
                }

                v114 = v115;
                v91 = v113 > v115++;
              }

              while (v91);
            }

            ++v108;
            v92 = v127;
          }

          while (v127[236] > v108);
          BYTE3(__src[0]) = v109;
        }

        v122 = v92 + 4;
        CVPixelBufferLockBaseAddress(v92[4], 0);
        BaseAddress = CVPixelBufferGetBaseAddress(*v122);
        memcpy(&BaseAddress[*(BaseAddress + 7)], __src, 0xE08uLL);
        CVPixelBufferUnlockBaseAddress(*v122, 0);
        if ((v124 & 1) == 0)
        {
          operator new();
        }

        v10 = H16ISP::H16ISPDevice::ISP_GeneralProcess(*(v125 + 36), inputStruct, 0);
        pthread_mutex_unlock((v125 + 48));
        return v10;
      }
    }
  }

LABEL_6:
  v10 = 3758097090;
  pthread_mutex_unlock((v7 + 48));
  return v10;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::FrameDone(uint64_t this, void *a2, void *a3, unint64_t *a4)
{
  if (this)
  {
    v4 = a4;
    v6 = a2;
    v7 = this;
    pthread_mutex_lock((this + 112));
    v8 = *(v7 + 328);
    v9 = *(v7 + 304);
    v10 = *(v7 + 312);
    v11 = v9 + 8 * (v8 >> 9);
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*v11 + 8 * (*(v7 + 328) & 0x1FFLL));
    }

LABEL_6:
    v13 = v12;
    while (1)
    {
      v14 = v10 == v9 ? 0 : *(v9 + (((*(v7 + 336) + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v7 + 336) + v8) & 0x1FF);
      if (v13 == v14)
      {
        break;
      }

      v15 = *v13;
      if (*v13 && a3[2] == *(v15 + 1964))
      {
        std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((v7 + 296), v11, v12);
        *(v15 + 948) = v6;
        if (v4 < 5)
        {
          v17 = 0;
          *(v15 + 952) = 0;
        }

        else
        {
          *(v15 + 952) = a3[3];
          v17 = a3[4];
        }

        *(v15 + 960) = v17;
        v18 = *(v7 + 16);
        if (v18)
        {
          v18(*(v7 + 24), v15);
        }

        v19 = *(v15 + 8);
        if (v19)
        {
          CVPixelBufferRelease(v19);
        }

        v20 = *(v15 + 16);
        if (v20)
        {
          CVPixelBufferRelease(v20);
        }

        v21 = *(v15 + 1960);
        if (v21)
        {
          for (i = 0; i < v21; ++i)
          {
            v23 = *(v15 + 1720 + 8 * i);
            if (v23)
            {
              CVPixelBufferRelease(v23);
              v21 = *(v15 + 1960);
            }
          }
        }

        v24 = *(v15 + 32);
        if (v24)
        {
          CVPixelBufferRelease(v24);
        }

        v25 = *(v15 + 216);
        if (v25)
        {
          CVPixelBufferRelease(v25);
        }

        v26 = *(v15 + 208);
        if (v26)
        {
          CVPixelBufferRelease(v26);
        }

        v27 = *(v15 + 40);
        if (v27)
        {
          CVPixelBufferRelease(v27);
        }

        v28 = *(v15 + 944);
        if (v28)
        {
          for (j = 0; j < v28; ++j)
          {
            v30 = *(v15 + 48 + 8 * j);
            if (v30)
            {
              CVPixelBufferRelease(v30);
              v28 = *(v15 + 944);
            }
          }
        }

        MEMORY[0x22AA55B60](v15, 0x10E0C40926370D1);
        if (*(v7 + 336))
        {
          H16ISP::H16ISPGeneralProcessFrameReceiver::tickleNoDataTimer(v7);
        }

        else
        {
          H16ISP::H16ISPGeneralProcessFrameReceiver::stopNoDataTimer(v7);
        }

        if (*(v7 + 184) == 1 && !*(v7 + 336))
        {
          dispatch_semaphore_signal(*(v7 + 176));
        }

        break;
      }

      v13 += 8;
      v12 += 8;
      if ((*v11 + 4096) == v12)
      {
        v16 = *(v11 + 8);
        v11 += 8;
        v12 = v16;
        goto LABEL_6;
      }
    }

    return pthread_mutex_unlock((v7 + 112));
  }

  return this;
}

void *std::deque<H16ISP::H16ISPGeneralProcessFrameReceiverRequest *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<H16ISP::H16ISPGeneralProcessFrameReceiverRequest *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::startNoDataTimer(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  v2 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableISPBringup", @"com.apple.coremedia", 0);
  pthread_mutex_lock(this + 3);
  v3 = *(this + 32);
  if (v3)
  {
    CFRunLoopTimerInvalidate(v3);
    CFRelease(*(this + 32));
    *(this + 32) = 0;
  }

  context.version = 0;
  context.info = this;
  memset(&context.retain, 0, 24);
  v4 = CFAbsoluteTimeGetCurrent() + *(this + 44);
  v5 = 200.0;
  if (!v2)
  {
    v5 = 0.0;
  }

  v6 = CFRunLoopTimerCreate(0, v5 + v4, 0.0, 0, 0, H16ISP::H16ISPGeneralProcessFrameReceiver::NoDataTimeout, &context);
  *(this + 32) = v6;
  if (v6)
  {
    CFRunLoopAddTimer(*(this + 1), v6, *MEMORY[0x277CBF058]);
  }

  return pthread_mutex_unlock(this + 3);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcessBuffers(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v119 = v3;
  v5 = v4;
  v6 = v2;
  v135 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((v2 + 48));
  if ((*(v6 + 344) & 1) != 0 || *v6 != 1)
  {
    pthread_mutex_unlock((v6 + 48));
    return 3758097122;
  }

  v7 = *(v5 + 490);
  if (v7 >= 0x15 || *(v5 + 236) >= 0x15u)
  {
    v8 = v6;
    v9 = 3758097090;
    pthread_mutex_unlock((v8 + 48));
    return v9;
  }

  if ((v119 & 1) == 0)
  {
    v11 = *(v5 + 4);
    if (v11)
    {
      CVPixelBufferRetain(v11);
      v7 = *(v5 + 490);
    }

    if (v7)
    {
      for (i = 0; i < v7; ++i)
      {
        v13 = *&v5[4 * i + 860];
        if (v13)
        {
          CVPixelBufferRetain(v13);
          v7 = *(v5 + 490);
        }
      }
    }

    v14 = *(v5 + 5);
    if (v14)
    {
      CVPixelBufferRetain(v14);
    }

    v15 = *(v5 + 236);
    if (v15)
    {
      for (j = 0; j < v15; ++j)
      {
        v17 = *&v5[4 * j + 24];
        if (v17)
        {
          CVPixelBufferRetain(v17);
          v15 = *(v5 + 236);
        }
      }
    }
  }

  v118 = v6;
  bzero(inputStruct, 0x628uLL);
  LODWORD(v18) = *(v5 + 490);
  v122 = v5;
  if (v18)
  {
    v19 = 0;
    v20 = v5 + 860;
    v21 = 48;
    v22 = 572;
    while (1)
    {
      v23 = *&v20[4 * v19];
      if (v23)
      {
        break;
      }

LABEL_43:
      ++v19;
      v18 = *(v5 + 490);
      v21 += 4;
      v22 += 4;
      if (v19 >= v18)
      {
        goto LABEL_48;
      }
    }

    IOSurface = CVPixelBufferGetIOSurface(v23);
    v25 = &inputStruct[2 * v19];
    *(v25 + 3) = IOSurfaceGetID(IOSurface);
    PixelFormatType = CVPixelBufferGetPixelFormatType(*&v20[4 * v19]);
    H16ISP::getFrameFormatMetaInfo(PixelFormatType, &v128);
    *(&__src[424] + v22) = H16ISP::getFrameFormat(PixelFormatType);
    *(&__src[434] + v22) = CVPixelBufferGetWidth(*&v20[4 * v19]);
    Height = CVPixelBufferGetHeight(*&v20[4 * v19]);
    v28 = &inputStruct[v22 / 2];
    *(v28 - 20) = Height;
    *v28 = *&v122[4 * v19 + 1880];
    v29 = *(&__src[424] + v22);
    if (v29 == 15 || v29 == 0)
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*&v20[4 * v19], 0);
      *&inputStruct[v21 - 2] = CVPixelBufferGetHeight(*&v20[4 * v19]) * BytesPerRowOfPlane;
      v32 = CVPixelBufferGetBytesPerRowOfPlane(*&v20[4 * v19], 1uLL);
      *&inputStruct[v21] = (CVPixelBufferGetHeight(*&v20[4 * v19]) * v32) >> 1;
      BytesPerRowOfTileDataOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*&v20[4 * v19], 0);
    }

    else
    {
      v36 = *&v20[4 * v19];
      if (v129 != 2)
      {
        *(v25 + 63) = CVPixelBufferGetBytesPerRow(v36);
        DataSize = CVPixelBufferGetDataSize(*&v20[4 * v19]);
        v43 = &inputStruct[v21];
        *(v43 - 1) = DataSize;
        *v43 = 0;
LABEL_33:
        v34 = 0;
        v5 = v122;
        if (PixelFormatType != 875704438 && PixelFormatType != 2016686640 && PixelFormatType != 2037741171)
        {
          if (BYTE8(v128))
          {
            v35 = 0;
          }

          else
          {
            v35 = v129 == 2;
          }

          v34 = !v35;
        }

        *(&v133[140] + v19) = v34;
        goto LABEL_43;
      }

      v37 = CVPixelBufferGetIOSurface(v36);
      BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      v39 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      AllocSize = IOSurfaceGetAllocSize(v37);
      v41 = &inputStruct[v21];
      *(v41 - 1) = v39 - BaseAddressOfCompressedTileDataRegionOfPlane;
      *v41 = AllocSize - (v39 - BaseAddressOfCompressedTileDataRegionOfPlane);
      BytesPerRowOfTileDataOfPlane = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
    }

    *(v25 + 63) = BytesPerRowOfTileDataOfPlane;
    goto LABEL_33;
  }

LABEL_48:
  v132 = v18;
  v44 = *(v5 + 4);
  if (v44)
  {
    v45 = CVPixelBufferGetIOSurface(v44);
    v133[145] = IOSurfaceGetID(v45);
    v133[146] = CVPixelBufferGetDataSize(*(v122 + 4));
    v5 = v122;
  }

  v46 = *(v5 + 5);
  if (v46)
  {
    v47 = CVPixelBufferGetIOSurface(v46);
    v133[363] = IOSurfaceGetID(v47);
    v133[364] = CVPixelBufferGetDataSize(*(v122 + 5));
    v5 = v122;
  }

  if (*(v5 + 236))
  {
    v48 = 1524;
    v49 = 382;
    v50 = 342;
    v51 = 702;
    v52 = 224;
    do
    {
      v53 = &v5[v49 - 358];
      if (*v53)
      {
        v54 = CVPixelBufferGetPixelFormatType(*v53);
        v55 = CVPixelBufferGetIOSurface(*v53);
        v56 = &inputStruct[v50];
        *&inputStruct[v50] = IOSurfaceGetID(v55);
        FrameFormatMetaInfo = H16ISP::getFrameFormatMetaInfo(v54, &v126);
        v58 = DWORD1(v126);
        if (!FrameFormatMetaInfo)
        {
          v58 = 0;
        }

        *(v56 + 80) = v58;
        if (!v58 || (v58 != 15 ? (v59 = v127 == 2) : (v59 = 1), v59))
        {
          BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(*v53, 0);
        }

        else
        {
          BytesPerRow = CVPixelBufferGetBytesPerRow(*v53);
        }

        v61 = *&v122[v52];
        v62 = *&v122[v52 + 8];
        v63 = *&v122[v52 + 16];
        v64 = *&v122[v52 + 24];
        v65 = &inputStruct[v50];
        v65[60] = BytesPerRow;
        v65[100] = v61;
        v65[120] = v62;
        v65[140] = v63;
        v65[160] = v64;
        v66 = &inputStruct[v51];
        inputStruct[v51] = CVPixelBufferGetWidth(*v53);
        v66[20] = CVPixelBufferGetHeight(*v53);
        v66[40] = *&v122[v50 * 2 + 180];
        v67 = *(v56 + 80);
        if (v67 != 15 && v67)
        {
          v71 = *v53;
          if (v127 == 2)
          {
            v72 = CVPixelBufferGetIOSurface(v71);
            v73 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v74 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v75 = IOSurfaceGetAllocSize(v72);
            *&inputStruct[v49] = v74 - v73;
            v70 = v75 - (v74 - v73);
          }

          else
          {
            v76 = CVPixelBufferGetBytesPerRow(v71);
            v77 = CVPixelBufferGetHeight(*v53);
            v70 = 0;
            *&inputStruct[v49] = v77 * v76;
          }
        }

        else
        {
          v68 = CVPixelBufferGetBytesPerRowOfPlane(*v53, 0);
          *&inputStruct[v49] = CVPixelBufferGetHeight(*v53) * v68;
          v69 = CVPixelBufferGetBytesPerRowOfPlane(*v53, 1uLL);
          v70 = (CVPixelBufferGetHeight(*v53) * v69) >> 1;
        }

        v78 = 0;
        *&inputStruct[v49 + 2] = v70;
        if (v54 != 875704438 && v54 != 2016686640 && v54 != 2037741171)
        {
          if (BYTE8(v126))
          {
            v79 = 0;
          }

          else
          {
            v79 = v127 == 2;
          }

          v78 = !v79;
        }

        *(inputStruct + v48) = v78;
      }

      v5 = v122;
      v80 = *(v122 + 236);
      v81 = v48 - 1523;
      ++v48;
      v49 += 4;
      v50 += 2;
      ++v51;
      v52 += 32;
    }

    while (v81 < v80);
  }

  else
  {
    LODWORD(v80) = 0;
  }

  inputStruct[0] = *v5;
  v82 = inputStruct[0];
  v83 = *(v5 + 1);
  v133[147] = v80;
  v131 = v83;
  v134 = H16ISP::H16ISPGeneralProcessFrameReceiver::FrameDone;
  bzero(__src, 0xE08uLL);
  LOWORD(__src[0]) = v82;
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  v84 = v129 == 2;
  v85 = *(v5 + 490);
  WORD2(__src[0]) = v85;
  if (v85)
  {
    v86 = 0;
    v120 = v5 + 860;
    while (1)
    {
      v87 = *&v120[4 * v86];
      if (v87)
      {
        CVPixelBufferGetExtendedPixels(v87, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
        v88 = CVPixelBufferGetIOSurface(*&v120[4 * v86]);
        PlaneCount = CVPixelBufferGetPlaneCount(*&v120[4 * v86]);
        if (v129 != 2)
        {
          goto LABEL_91;
        }

        v90 = PlaneCount;
        v5 = v122;
        if (PlaneCount)
        {
          break;
        }
      }

LABEL_92:
      if (++v86 >= *(v5 + 490))
      {
        LODWORD(v80) = *(v5 + 236);
        goto LABEL_94;
      }
    }

    v91 = 0;
    v92 = 1;
    do
    {
      v93 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
      v95 = &__src[1] + 28 * v91;
      *v95 = 0;
      *(v95 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
      *(v95 + 2) = BaseAddressOfCompressedTileHeaderRegionOfPlane - v93;
      v96 = v133[v91] - (BaseAddressOfCompressedTileHeaderRegionOfPlane - v93);
      *(v95 + 3) = BaseAddressOfCompressedTileHeaderRegionOfPlane - v93;
      *(v95 + 4) = v96;
      WidthOfPlane = IOSurfaceGetWidthOfPlane(v88, v91);
      *(v95 + 10) = extraColumnsOnRight + WidthOfPlane;
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v88, v91);
      *(v95 + 11) = extraRowsOnBottom + HeightOfPlane;
      *(v95 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
      v91 = v92;
      v99 = v90 > v92++;
    }

    while (v99);
    v84 = 1;
LABEL_91:
    v5 = v122;
    goto LABEL_92;
  }

LABEL_94:
  BYTE2(__src[0]) = v84;
  HIWORD(__src[0]) = v80;
  if (v80)
  {
    v100 = 0;
    v121 = v5 + 24;
    v101 = BYTE3(__src[0]);
    do
    {
      v102 = v100;
      v103 = *&v121[4 * v100];
      if (v103)
      {
        v104 = CVPixelBufferGetIOSurface(v103);
        v105 = CVPixelBufferGetPixelFormatType(*&v121[4 * v102]);
        v106 = CVPixelBufferGetPlaneCount(*&v121[4 * v102]);
        CVPixelBufferGetExtendedPixels(*&v121[4 * v102], 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
        H16ISP::getFrameFormatMetaInfo(v105, &v126);
        if (v106)
        {
          v107 = 0;
          v108 = 1;
          do
          {
            if (v127 == 2)
            {
              v109 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
              v110 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
              v111 = &__src[14 * v102 + 225] + 28 * v107;
              *v111 = 0;
              *(v111 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
              *(v111 + 2) = v110 - v109;
              v112 = v133[2 * v102 + 168 + v107] - (v110 - v109);
              *(v111 + 3) = v110 - v109;
              *(v111 + 4) = v112;
              v113 = IOSurfaceGetWidthOfPlane(v104, v107);
              *(v111 + 10) = extraColumnsOnRight + v113;
              v114 = IOSurfaceGetHeightOfPlane(v104, v107);
              *(v111 + 11) = extraRowsOnBottom + v114;
              *(v111 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
              v101 = 1;
            }

            else
            {
              v101 = 0;
            }

            v107 = v108;
            v99 = v106 > v108++;
          }

          while (v99);
        }
      }

      v100 = v102 + 1;
      v5 = v122;
    }

    while (*(v122 + 236) > (v102 + 1));
    BYTE3(__src[0]) = v101;
  }

  v115 = *(v5 + 4);
  if (v115)
  {
    CVPixelBufferLockBaseAddress(v115, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*(v122 + 4));
    v117 = BaseAddress[7];
    if (v117)
    {
      memcpy(BaseAddress + v117, __src, 0xE08uLL);
    }

    CVPixelBufferUnlockBaseAddress(*(v122 + 4), 0);
  }

  if ((v119 & 1) == 0)
  {
    operator new();
  }

  v9 = H16ISP::H16ISPDevice::ISP_GeneralProcessBuffers(*(v118 + 36), inputStruct, 0);
  pthread_mutex_unlock((v118 + 48));
  return v9;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcessGeneric(uint64_t a1, uint64_t a2, char a3)
{
  pthread_mutex_lock((a1 + 48));
  if ((*(a1 + 344) & 1) != 0 || *a1 != 1)
  {
    pthread_mutex_unlock((a1 + 48));
    return 3758097122;
  }

  else
  {
    if (*(a2 + 216))
    {
      v6 = *(a2 + 208);
      if (v6)
      {
        v7 = *(a2 + 944);
        if ((v7 - 21) >= 0xFFFFFFEC)
        {
          v10 = 48;
          while (*(a2 + v10))
          {
            v10 += 8;
            if (!--v7)
            {
              if ((a3 & 1) == 0)
              {
                CVPixelBufferRetain(v6);
                CVPixelBufferRetain(*(a2 + 216));
                v11 = *(a2 + 40);
                if (v11)
                {
                  CVPixelBufferRetain(v11);
                }

                if (*(a2 + 944))
                {
                  v12 = 0;
                  do
                  {
                    CVPixelBufferRetain(*(a2 + 48 + 8 * v12++));
                  }

                  while (v12 < *(a2 + 944));
                }
              }

              bzero(inputStruct, 0x478uLL);
              IOSurface = CVPixelBufferGetIOSurface(*(a2 + 216));
              ID = IOSurfaceGetID(IOSurface);
              DataSize = CVPixelBufferGetDataSize(*(a2 + 216));
              v14 = CVPixelBufferGetIOSurface(*(a2 + 208));
              v39 = IOSurfaceGetID(v14);
              v40 = CVPixelBufferGetDataSize(*(a2 + 208));
              v15 = *(a2 + 40);
              if (v15)
              {
                v16 = CVPixelBufferGetIOSurface(v15);
                v41 = IOSurfaceGetID(v16);
                v42 = CVPixelBufferGetDataSize(*(a2 + 40));
              }

              LODWORD(v17) = *(a2 + 944);
              if (v17)
              {
                v18 = v44;
                v19 = 48;
                v20 = 216;
                v21 = 224;
                do
                {
                  v22 = CVPixelBufferGetIOSurface(*(a2 + v19));
                  *(v18 - 46) = IOSurfaceGetID(v22);
                  PixelFormatType = CVPixelBufferGetPixelFormatType(*(a2 + v19));
                  FrameFormat = H16ISP::getFrameFormat(PixelFormatType);
                  *(v18 - 26) = FrameFormat;
                  *(v18 - 34) = CVPixelBufferGetBytesPerRowOfPlane(*(a2 + v19), 0);
                  *(v18 - 22) = vuzp1q_s32(vcvtq_u64_f64(*(a2 + v21)), vcvtq_u64_f64(*(a2 + v21 + 16)));
                  *(v18 - 3) = CVPixelBufferGetWidth(*(a2 + v19));
                  *(v18 - 2) = CVPixelBufferGetHeight(*(a2 + v19));
                  v25 = CVPixelBufferGetPixelFormatType(*(a2 + v19));
                  *(v18 - 1) = *(a2 + 4 * v20);
                  v26 = *(a2 + v19);
                  if (FrameFormat)
                  {
                    BytesPerRow = CVPixelBufferGetBytesPerRow(v26);
                    Height = CVPixelBufferGetHeight(*(a2 + v19));
                    v29 = 0;
                    *(v18 - 42) = Height * BytesPerRow;
                  }

                  else
                  {
                    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v26, 0);
                    *(v18 - 42) = CVPixelBufferGetHeight(*(a2 + v19)) * BytesPerRowOfPlane;
                    v31 = CVPixelBufferGetBytesPerRowOfPlane(*(a2 + v19), 1uLL);
                    v29 = (CVPixelBufferGetHeight(*(a2 + v19)) * v31) >> 1;
                  }

                  *(v18 - 38) = v29;
                  v33 = v25 != 2037741171 && v25 != 875704438;
                  *v18 = v33;
                  v18 += 48;
                  v17 = *(a2 + 944);
                  v19 += 8;
                  v34 = v20 - 215;
                  ++v20;
                  v21 += 32;
                }

                while (v34 < v17);
              }

              v43 = v17;
              v36 = *a2;
              *&v44[918] = H16ISP::H16ISPGeneralProcessFrameReceiver::FrameDone;
              if ((a3 & 1) == 0)
              {
                operator new();
              }

              v8 = H16ISP::H16ISPDevice::ISP_GeneralProcessGeneric(*(a1 + 288), inputStruct, 0);
              goto LABEL_7;
            }
          }
        }
      }
    }

    v8 = 3758097090;
LABEL_7:
    pthread_mutex_unlock((a1 + 48));
  }

  return v8;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::tickleNoDataTimer(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 3);
  sig = this[4].__sig;
  if (sig)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(sig, Current + *&this[5].__opaque[24]);
  }

  return pthread_mutex_unlock(this + 3);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::NoDataTimeout(H16ISP::H16ISPGeneralProcessFrameReceiver *this, __CFRunLoopTimer *a2, void *a3)
{
  result = puts("H16ISPGeneralProcessFrameReceiver::NoDataTimeout!");
  v5 = *(a2 + 38);
  v6 = *(a2 + 39);
  v7 = (v5 + 8 * (*(a2 + 41) >> 9));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*v7 + 8 * (*(a2 + 41) & 0x1FFLL));
  }

  while (1)
  {
    if (v6 == v5)
    {
      v10 = 0;
    }

    else
    {
      v9 = *(a2 + 42) + *(a2 + 41);
      v10 = *(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF);
    }

    if (v8 == v10)
    {
      break;
    }

    v11 = *v8++;
    result = printf("H16ISPGeneralProcessFrameReceiver: Request not returned 0x%p\n", v11);
    if ((v8 - *v7) == 4096)
    {
      v12 = v7[1];
      ++v7;
      v8 = v12;
    }

    v5 = *(a2 + 38);
    v6 = *(a2 + 39);
  }

  v13 = *(a2 + 4);
  if (v13)
  {
    v14 = *(a2 + 5);

    return v13(0, 0, 0, 0, 0, v14);
  }

  return result;
}

uint64_t H16ISP::CreateH16ISPGeneralProcessFrameReceiver(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 0;
  H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(&v12);
  v7 = 0;
  v2 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = v2;
  v10 = *(a1 + 8);
  v11 = &v12;
  pthread_attr_init(&v13);
  pthread_attr_setdetachstate(&v13, 2);
  pthread_create(&v6, &v13, H16ISP::H16ISPGeneralProcessFrameReceiverRTThreadStart, &v7);
  pthread_attr_destroy(&v13);
  H16ISP::H16ISPThreadReadySyncer::wait(&v12);
  v3 = v7;
  **a1 = v7;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3758097084;
  }

  H16ISP::H16ISPThreadReadySyncer::~H16ISPThreadReadySyncer(&v12);
  return v4;
}

void H16ISP::H16ISPGeneralProcessFrameReceiverRTThreadStart(uint64_t a1)
{
  pthread_setname_np("H16ISPGeneralProcessFrameReceiverRealTimeThread");
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  H16ISP::H16ISPSetMachThreadPriority(v3, 47);
  H16ISP::H16ISPThreadReadySyncer::lock(*(a1 + 48));
  operator new();
}

uint64_t H16ISP::DestroyH16ISPGeneralProcessFrameReceiver(H16ISP *this, H16ISP::H16ISPGeneralProcessFrameReceiver *a2)
{
  v3 = *(this + 1);
  CFRetain(v3);
  H16ISP::H16ISPGeneralProcessFrameReceiver::~H16ISPGeneralProcessFrameReceiver(this);
  MEMORY[0x22AA55B60]();
  CFRunLoopStop(v3);
  CFRelease(v3);
  return 0;
}

void *std::deque<H16ISP::H16ISPGeneralProcessFrameReceiverRequest *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, &v10);
}

void sub_224965D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL GMC_FaceCoverageTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, double *a6)
{
  bzero(*(a4 + 8), (*(a4 + 20) * *(a4 + 16)));
  *a5 = 0;
  v12 = *(a3 + 16);
  v13 = *(a3 + 20);
  v14 = v13 * v12;
  if (!(v13 * v12))
  {
    GMC_ExtractTestSamples();
  }

  if (v14 <= 2)
  {
    GMC_ExtractTestSamples();
  }

  if (v14 == 3)
  {
    GMC_ExtractTestSamples();
  }

  v15 = *(a1 + 20);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(a3 + 8);
    v19 = *v18 + v18[2];
    v20 = v18[1] + v18[3];
    v21 = 0.0;
    v22 = 1.0e10;
    v23 = 1.0e10;
    v24 = 0.0;
    do
    {
      v25 = *(a1 + 16);
      if (!v25)
      {
        MatrixNxPts<3u,double>::CloneColumn();
      }

      v26 = *(a3 + 20) * *(a3 + 16);
      if (!v26)
      {
        GMC_ExtractTestSamples();
      }

      v27 = *(a1 + 8);
      v28 = *(v27 + 8 * v17);
      v29 = *(a3 + 8);
      if (v28 > *v29 && v28 < v19)
      {
        if (v25 == 1)
        {
          MatrixNxPts<3u,double>::CloneColumn();
        }

        if (v26 == 1)
        {
          GMC_ExtractTestSamples();
        }

        v31 = *(v27 + 8 * v15 + 8 * v17);
        if (v31 > v29[1] && v31 < v20)
        {
          if (v17 >= (*(a4 + 20) * *(a4 + 16)))
          {
            GMC_ExtractTestSamples();
          }

          *(*(a4 + 8) + v17) = 1;
          v33 = (*(a1 + 8) + 8 * v17);
          if (*v33 < v22)
          {
            v22 = *v33;
          }

          if (*v33 > v24)
          {
            v24 = *v33;
          }

          v34 = v33[v15];
          if (v34 < v23)
          {
            v23 = v33[v15];
          }

          if (v34 > v21)
          {
            v21 = v33[v15];
          }

          *a5 = ++v16;
          v15 = *(a1 + 20);
        }
      }

      ++v17;
    }

    while (v17 < v15);
    v12 = *(a3 + 16);
    v13 = *(a3 + 20);
    v35 = (v21 - v23) * (v24 - v22);
  }

  else
  {
    v16 = 0;
    v35 = 1.0e20;
  }

  v36 = v13 * v12;
  if (v36 <= 2)
  {
    GMC_ExtractTestSamples();
  }

  if (v36 == 3)
  {
    GMC_ExtractTestSamples();
  }

  v37 = v35 / (*(*(a3 + 8) + 16) * *(*(a3 + 8) + 24));
  *a6 = v37;
  return v37 > *(a2 + 712) && v16 > *(a2 + 720);
}

void sub_2249676CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a53);
  Matrix<double>::~Matrix(&a57);
  Matrix<double>::~Matrix(&a61);
  Matrix<double>::~Matrix(&a65);
  _GMC_Params::~_GMC_Params(&a69);
  _Unwind_Resume(a1);
}

void _GMC_Params::~_GMC_Params(_GMC_Params *this)
{
  Matrix<double>::~Matrix(this + 872);
  Matrix<double>::~Matrix(this + 840);
  Matrix<double>::~Matrix(this + 808);
  Matrix<double>::~Matrix(this + 776);
  Matrix<double>::~Matrix(this + 744);
  Matrix<double>::~Matrix(this + 256);
  Matrix<double>::~Matrix(this + 224);
  Matrix<double>::~Matrix(this + 192);
  Matrix<double>::~Matrix(this + 160);
  Matrix<double>::~Matrix(this + 128);
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::onActivate(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::onActivate\n", v4, 2u);
  }

  return H16ISP::H16ISPGraphVIOCameraControlNode::InitVIO(this);
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::InitVIO(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v104 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v3 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO\n\n", buf, 2u);
  }

  v4 = CVHWAFeatureExtractionCreate();
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    v7 = 3758097084;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v99 = v5;
      v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - CVHWAFeatureExtractionCreate failed: %d\n\n";
LABEL_20:
      v11 = buf;
LABEL_21:
      v12 = v6;
LABEL_22:
      v13 = 8;
LABEL_23:
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, v8, v11, v13);
    }
  }

  else
  {
    bzero(v92, 0x10uLL);
    v93 = 12551;
    v94 = *(this + 24);
    v95 = *(this + 120) << 10;
    v96 = *(this + 262);
    v9 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v92, 0x10u, 0, 0xFFFFFFFF);
    if (v9)
    {
      v7 = v9;
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v99 = v7;
        v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVIODownScaleFactorSet failed: 0x%08X\n\n";
        goto LABEL_20;
      }
    }

    else
    {
      bzero(v87, 0x14uLL);
      v88 = 12549;
      v89 = *(this + 24);
      v90 = 1;
      v91 = *(this + 64);
      v10 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v87, 0x14u, 0, 0xFFFFFFFF);
      if (v10)
      {
        v7 = v10;
        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
        {
          v6 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v99 = v7;
          v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioEnable failed: 0x%08X\n\n";
          goto LABEL_20;
        }
      }

      else
      {
        bzero(buf, 0x2CuLL);
        LOWORD(v99) = 12550;
        v100 = *(this + 24);
        v7 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), buf, 0x2Cu, 0, 0xFFFFFFFF);
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (!v7)
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v97 = 67109120;
            *&v97[4] = v101;
            _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - cmdChVioInputConfigGet.width: %d\n\n", v97, 8u);
            v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          }

          if (v15 == v3)
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v97 = 67109120;
            *&v97[4] = v103;
            _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - cmdChVioInputConfigGet.height: %d\n\n", v97, 8u);
            v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          }

          if (v15 == v3)
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v97 = 67109120;
            *&v97[4] = v102;
            _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - cmdChVioInputConfigGet.bufferStride: %d\n\n", v97, 8u);
            v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          }

          if (v15 == v3)
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(this + 67);
            *v97 = 67109120;
            *&v97[4] = v16;
            _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - vioParams.keypointDetectionFlow: %d\n\n", v97, 8u);
          }

          if (H16ISP::H16ISPGetCFPreferenceNumber(@"EnableVIODebug", @"com.apple.coremedia", 0))
          {
            v17 = v102 * v103;
          }

          else
          {
            v17 = 0;
          }

          v18 = CVHWAFeatureExtractionConfigCreate();
          if (v18)
          {
            v19 = v18;
            v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
            {
              v6 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
            }

            if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              return v7;
            }

            *v97 = 67109120;
            *&v97[4] = v19;
            v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - CVHWAFeatureExtractionConfigCreate failed: %d\n\n";
          }

          else
          {
            CVHWAFeatureExtractionConfigSetImageSize();
            CVHWAFeatureExtractionConfigSetMaxImageSize();
            CVHWAFeatureExtractionConfigSetNumberOfOctaves();
            CVHWAFeatureExtractionConfigSetTargetNumberOfKeypoints();
            CVHWAFeatureExtractionConfigSetMaxNumberOfKeypoints();
            CVHWAFeatureExtractionConfigSetResponseThreshold();
            CVHWAFeatureExtractionConfigSetEnableParedGrid();
            CVHWAFeatureExtractionConfigSetEnableOrientationAssignment();
            CVHWAFeatureExtractionConfigSetEnableDynamicThresholding();
            CVHWAFeatureExtractionConfigSetDetectionFlow();
            CVHWAFeatureExtractionConfigSetDisablePostProcessing();
            CVHWAFeatureExtractionConfigSetSigmaDistanceThreshold();
            CVHWAFeatureExtractionConfigSetSquareDistanceDisparityFraction();
            CVHWAFeatureExtractionConfigSetHammingDistanceThreshold();
            CVHWAFeatureExtractionConfigSetOrientationDistanceThreshold();
            CVHWAFeatureExtractionConfigSetFeatureMatchingDescriptorSize();
            CVHWAFeatureExtractionConfigSetEnableFeatureMatching();
            CVHWAFeatureExtractionConfigSetExtraTestThreshold();
            inited = CVHWAFeatureExtractionInitDirectWithLacc();
            if (inited)
            {
              v21 = inited;
              v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
              {
                v6 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
              }

              if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
              {
                return v7;
              }

              *v97 = 67109120;
              *&v97[4] = v21;
              v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - CVHWAFeatureExtractionInitDirect failed: %d\n\n";
            }

            else
            {
              *(this + 16) = CVHWAFeatureExtractionGetActionBuffer();
              *(this + 17) = CVHWAFeatureExtractionGetOperationBuffer();
              *(this + 38) = CVHWAFeatureExtractionGetActionSizeInBytes();
              *(this + 39) = CVHWAFeatureExtractionGetOperationSizeInBytes();
              *(this + 40) = CVHWAFeatureExtractionGetOutputSizeInBytes();
              *(this + 41) = CVHWAFeatureExtractionGetOutputReserveSizeInBytes();
              *(this + 172) = CVHWAFeatureExtractionGetDynamicThresholdingEnable();
              *(this + 44) = CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsConfigCount();
              *(this + 18) = CVHWAFeatureExtractionGetLaccBuffer();
              v22 = 0;
              *(this + 42) = CVHWAFeatureExtractionGetLaccSizeInBytes();
              do
              {
                *(this + v22++ + 45) = CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsAtIndex();
              }

              while (v22 != 9);
              v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (*(this + 16))
                {
                  v24 = "Yes";
                }

                else
                {
                  v24 = "No";
                }

                v25 = *(this + 38);
                *v97 = 136315394;
                *&v97[4] = v24;
                *&v97[12] = 1024;
                *&v97[14] = v25;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - action buffer: %s, actionSizeInBytes: %d\n\n", v97, 0x12u);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (v23 == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (*(this + 17))
                {
                  v26 = "Yes";
                }

                else
                {
                  v26 = "No";
                }

                v27 = *(this + 39);
                *v97 = 136315394;
                *&v97[4] = v26;
                *&v97[12] = 1024;
                *&v97[14] = v27;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - operation buffer: %s, operationSizeInBytes: %d\n\n", v97, 0x12u);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (v23 == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(this + 40);
                *v97 = 67109120;
                *&v97[4] = v28;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - outputSizeInBytes: %d\n\n", v97, 8u);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (v23 == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(this + 41);
                *v97 = 67109120;
                *&v97[4] = v29;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - keypointAndDescriptorSizeInBytes: %d\n\n", v97, 8u);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (v23 == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (*(this + 18))
                {
                  v30 = "Yes";
                }

                else
                {
                  v30 = "No";
                }

                v31 = *(this + 42);
                *v97 = 136315394;
                *&v97[4] = v30;
                *&v97[12] = 1024;
                *&v97[14] = v31;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - lacc buffer: %s, laccSizeInBytes: %d\n\n", v97, 0x12u);
              }

              bzero(v83, 0x10uLL);
              v84 = 12545;
              v32 = *(this + 40);
              v85 = *(this + 24);
              v86 = v32;
              v33 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v83, 0x10u, 0, 0xFFFFFFFF);
              if (v33)
              {
                v7 = v33;
                v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                {
                  v6 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                }

                if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                {
                  return v7;
                }

                *v97 = 67109120;
                *&v97[4] = v7;
                v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioBlobSize failed: 0x%08X\n\n";
              }

              else
              {
                bzero(v78, 0x14uLL);
                v79 = 12546;
                v34 = *(this + 41);
                v80 = *(this + 24);
                v81 = v34;
                v82 = v17;
                v35 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v78, 0x14u, 0, 0xFFFFFFFF);
                if (v35)
                {
                  v7 = v35;
                  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                  {
                    v6 = os_log_create("com.apple.isp", "general");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                  }

                  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                  {
                    return v7;
                  }

                  *v97 = 67109120;
                  *&v97[4] = v7;
                  v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioMetaReserve failed: 0x%08X\n\n";
                }

                else
                {
                  v36 = *(this + 16);
                  if (v36 && *(this + 38))
                  {
                    CVPixelBufferLockBaseAddress(v36, 0);
                    if (CVPixelBufferGetBaseAddress(*(this + 16)))
                    {
                      operator new[]();
                    }

                    v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v37 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v37;
                    }

                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      *v97 = 0;
                      _os_log_impl(&dword_2247DB000, v37, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - CVPixelBufferGetBaseAddress for action buffer returned NULL\n\n", v97, 2u);
                    }

                    CVPixelBufferUnlockBaseAddress(*(this + 16), 0);
                  }

                  v38 = *(this + 17);
                  if (v38 && *(this + 39))
                  {
                    CVPixelBufferLockBaseAddress(v38, 0);
                    if (CVPixelBufferGetBaseAddress(*(this + 17)))
                    {
                      operator new[]();
                    }

                    v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v39 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v39;
                    }

                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *v97 = 0;
                      _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - CVPixelBufferGetBaseAddress for operation buffer returned NULL\n\n", v97, 2u);
                    }

                    CVPixelBufferUnlockBaseAddress(*(this + 17), 0);
                  }

                  v40 = *(this + 18);
                  if (v40)
                  {
                    CVPixelBufferLockBaseAddress(v40, 0);
                    if (CVPixelBufferGetBaseAddress(*(this + 18)))
                    {
                      operator new[]();
                    }

                    v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v41 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v41;
                    }

                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      *v97 = 0;
                      _os_log_impl(&dword_2247DB000, v41, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - CVPixelBufferGetBaseAddress for lacc buffer returned NULL\n\n", v97, 2u);
                    }

                    CVPixelBufferUnlockBaseAddress(*(this + 18), 0);
                  }

                  v42 = *(this + 16);
                  if (v42)
                  {
                    CVPixelBufferRelease(v42);
                    *(this + 16) = 0;
                  }

                  v43 = *(this + 17);
                  if (v43)
                  {
                    CVPixelBufferRelease(v43);
                    *(this + 17) = 0;
                  }

                  v44 = *(this + 37);
                  if (v44)
                  {
                    CVPixelBufferRelease(v44);
                    *(this + 37) = 0;
                  }

                  v45 = *(this + 18);
                  if (v45)
                  {
                    CVPixelBufferRelease(v45);
                    *(this + 18) = 0;
                  }

                  bzero(v74, 0x10uLL);
                  v75 = 12547;
                  v76 = *(this + 24);
                  v46 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v74, 0x10u, 0, 0xFFFFFFFF);
                  if (v46)
                  {
                    v7 = v46;
                    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v6 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                    }

                    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                    {
                      return v7;
                    }

                    *v97 = 67109120;
                    *&v97[4] = v7;
                    v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioOutputBufferSize failed: 0x%08X\n\n";
                  }

                  else
                  {
                    v48 = *(this + 55);
                    if (v48 <= 0.0)
                    {
                      *(this + 55) = 1114636288;
                      v48 = 60.0;
                    }

                    v49.i32[0] = *(this + 56);
                    if (v49.f32[0] <= 0.0)
                    {
                      *(this + 56) = v48;
                      v49.f32[0] = v48;
                    }

                    v50 = *(this + 57);
                    if (v50 <= 0.0)
                    {
                      *(this + 57) = v48;
                      v50 = v48;
                    }

                    *v47.i32 = v48;
                    v49.f32[1] = v50;
                    *(this + 40) = vmax_u32(vcvt_u32_f32(vdiv_f32(vdup_lane_s32(v47, 0), v49)), 0x100000001);
                    HIDWORD(v51) = 1083129856;
                    v52 = 1.0 / v48 * 1000.0;
                    LODWORD(v51) = *(this + 58);
                    v53 = (v51 / v52);
                    *(this + 82) = v53;
                    *(this + 83) = v53;
                    v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v55 = *(this + 55);
                      *v97 = 134217984;
                      *&v97[4] = v55;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - vioParams.streamFrameRate=%.3f\n\n", v97, 0xCu);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v56 = *(this + 56);
                      *v97 = 134217984;
                      *&v97[4] = v56;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - vioParams.vioFrameRate=%.3f\n\n", v97, 0xCu);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v57 = *(this + 57);
                      *v97 = 134217984;
                      *&v97[4] = v57;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - vioParams.vioBurstFrameRate=%.3f\n\n", v97, 0xCu);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v58 = *(this + 80);
                      *v97 = 67109120;
                      *&v97[4] = v58;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - decimationFactorForVIOFrameRate=%d\n\n", v97, 8u);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v59 = *(this + 81);
                      *v97 = 67109120;
                      *&v97[4] = v59;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - decimationFactorForBurstFrameRate=%d\n\n", v97, 8u);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v60 = *(this + 82);
                      *v97 = 67109120;
                      *&v97[4] = v60;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - numFramesForBurstMode=%d\n\n", v97, 8u);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    v61 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
                    v62 = *(this + 83);
                    if (v61)
                    {
                      *v97 = 67109120;
                      *&v97[4] = v62;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - remainingBurstModeFrames=%d\n\n", v97, 8u);
                      v62 = *(this + 83);
                    }

                    v63 = v62 == 0;
                    v64 = 324;
                    if (v63)
                    {
                      v64 = 320;
                    }

                    v65 = H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(this, *(this + v64), *(this + 62), *(this + 172), this + 45);
                    if (v65)
                    {
                      v7 = v65;
                      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                      {
                        v6 = os_log_create("com.apple.isp", "general");
                        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                      }

                      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                      {
                        return v7;
                      }

                      *v97 = 67109120;
                      *&v97[4] = v7;
                      v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - SetVIORunTimeParameters failed: 0x%08X\n\n";
                    }

                    else
                    {
                      v66 = H16ISP::H16ISPDevice::SuspendVio(*(this + 10), *(this + 24), *(this + 217));
                      if (v66)
                      {
                        v7 = v66;
                        v67 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                        {
                          v67 = os_log_create("com.apple.isp", "general");
                          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v67;
                        }

                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                        {
                          v68 = *(this + 217);
                          *v97 = 67109376;
                          *&v97[4] = v68;
                          *&v97[8] = 1024;
                          *&v97[10] = v7;
                          v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - SuspendVio(%d) failed: 0x%08X\n\n";
                          v11 = v97;
                          v12 = v67;
                          v13 = 14;
                          goto LABEL_23;
                        }

                        return v7;
                      }

                      H16ISP::H16ISPDevice::GetPoolInfo(*(this + 10), *(this + 24), 24, this + 25, 0);
                      if (v69)
                      {
                        v7 = v69;
                        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                        {
                          v6 = os_log_create("com.apple.isp", "general");
                          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                        }

                        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                        {
                          return v7;
                        }

                        *v97 = 67109120;
                        *&v97[4] = v7;
                        v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - GetPoolInfo failed: 0x%08X\n\n";
                      }

                      else
                      {
                        *v73 = 0;
                        H16ISP::H16ISPGetYUVSBufferParamsForDataBufferSize(v77, &v73[1], v73, v70);
                        if (!*(this + 63))
                        {
                          *(this + 63) = 1;
                        }

                        v71 = *(this + 11);
                        v72 = *(this + 25);
                        memset(v97, 0, sizeof(v97));
                        v7 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v71, 24, v72);
                        if (!v7)
                        {
                          return v7;
                        }

                        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                        {
                          v6 = os_log_create("com.apple.isp", "general");
                          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                        }

                        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                        {
                          return v7;
                        }

                        *v97 = 67109120;
                        *&v97[4] = v7;
                        v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - addBufferPoolToFrameReceiver failed: 0x%08X\n\n";
                      }
                    }
                  }
                }
              }
            }
          }

          v11 = v97;
          goto LABEL_21;
        }

        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
        {
          v15 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v97 = 67109120;
          *&v97[4] = v7;
          v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioInputConfigGet failed: 0x%08X\n\n";
          v11 = v97;
          v12 = v15;
          goto LABEL_22;
        }
      }
    }
  }

  return v7;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::onDeactivate(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::onDeactivate\n\n", v4, 2u);
  }

  H16ISP::H16ISPGraphVIOCameraControlNode::DeInitVIO(this);
  return 0;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::DeInitVIO(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v3 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::DeInitVIO\n\n", v8, 2u);
  }

  bzero(v8, 0x14uLL);
  v8[2] = 12549;
  v9 = *(this + 24);
  v10 = 0;
  v4 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v8, 0x14u, 0, 0xFFFFFFFF);
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v5;
      _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::DeInitVIO - sCIspCmdChVioEnable (false) failed: 0x%08X\n\n", buf, 8u);
    }
  }

  if (*(this + 14))
  {
    CVHWAFeatureExtractionRelease();
  }

  if (*(this + 15))
  {
    CVHWAFeatureExtractionConfigRelease();
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::onMessageProcessing(H16ISP::H16ISPGraphVIOCameraControlNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a2 + 8));
  v4 = *(a2 + 25);
  if (v4)
  {
    v5 = (a2 + 112);
    while (*v5 != 24)
    {
      v5 += 4;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *(v5 - 1);
    CVPixelBufferRetain(v6);
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  pthread_mutex_unlock((a2 + 8));
  v7 = *(this + 83);
  if (v7 && (v8 = v7 - 1, (*(this + 83) = v8) == 0) && (v13 = H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(this, *(this + 80), -1, *(this + 172), this + 45)) != 0)
  {
    v14 = v13;
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "onMessageProcessing";
      v18 = 1024;
      v19 = v14;
      _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::%s - SetVIORunTimeParameters failed: 0x%08X\n\n", &v16, 0x12u);
    }
  }

  else if (v6)
  {
    v9 = CVHWAFeatureExtractionProcessHwOutputs();
    if (v9)
    {
      v10 = v9;
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        LODWORD(v17) = v10;
        _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::onMessageProcessing - CVHWAFeatureExtractionProcessHwOutputs failed: %d\n\n", &v16, 8u);
      }
    }

    CVPixelBufferRelease(v6);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(H16ISP::H16ISPGraphVIOCameraControlNode *this, int a2, int a3, int a4, unsigned int *a5)
{
  *(this + 62) = a3;
  bzero(v12, 0x3CuLL);
  v13 = 12548;
  v14 = *(this + 24);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if (a5)
  {
    v10 = *(a5 + 1);
    v18 = *a5;
    v19 = v10;
    v20 = a5[8];
  }

  return H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v12, 0x3Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::TriggerBurstMode(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v1 = *(this + 82);
  *(this + 83) = v1;
  if (v1)
  {
    return H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(this, *(this + 81), -1, *(this + 172), this + 45);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::Suspend(uint64_t this)
{
  *(this + 217) = 1;
  if (*(this + 16) == 1)
  {
    return H16ISP::H16ISPDevice::SuspendVio(*(this + 80), *(this + 96), 1);
  }

  return this;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::Resume(uint64_t this)
{
  *(this + 217) = 0;
  if (*(this + 16) == 1)
  {
    return H16ISP::H16ISPDevice::SuspendVio(*(this + 80), *(this + 96), 0);
  }

  return this;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::AdjustStreamFrameRate(H16ISP::H16ISPGraphVIOCameraControlNode *this, float a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *(this + 55) = a2;
  if (*(this + 16) != 1)
  {
    goto LABEL_9;
  }

  *&a3 = a2;
  if (a2 <= 0.0)
  {
    *(this + 55) = 1114636288;
    LODWORD(a3) = 1114636288;
  }

  v5.i32[0] = *(this + 56);
  if (v5.f32[0] <= 0.0)
  {
    *(this + 56) = LODWORD(a3);
    v5.i32[0] = LODWORD(a3);
  }

  v6 = *(this + 57);
  if (v6 <= 0.0)
  {
    *(this + 57) = LODWORD(a3);
    v6 = *&a3;
  }

  *&a3 = *&a3;
  v5.f32[1] = v6;
  v7 = vmax_u32(vcvt_u32_f32(vdiv_f32(vdup_lane_s32(*&a3, 0), v5)), 0x100000001);
  *(this + 40) = v7;
  if (!*(this + 83))
  {
    v8 = H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(this, v7.i32[0], -1, *(this + 172), this + 45);
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(this + 80);
    v12 = 134218496;
    v13 = a2;
    v14 = 1024;
    v15 = v10;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::AdjustStreamFrameRate - newStreamFrameRate=%.3f, decimationFactorForVIOFrameRate=%d, res=0x%08X\n\n", &v12, 0x18u);
  }

  return v8;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::H16ISPGraphVIOCameraControlNode(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(a1, 9);
  *v8 = &unk_2838149B8;
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode Constructor\n\n", v11, 2u);
  }

  mach_timebase_info((a1 + 104));
  *(a1 + 80) = a2;
  *(a1 + 96) = a3;
  memmove((a1 + 216), a4, 0x68uLL);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void H16ISP::H16ISPGraphVIOCameraControlNode::~H16ISPGraphVIOCameraControlNode(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  *this = &unk_2838149B8;
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode Destructor\n\n", v3, 2u);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPGraphVIOCameraControlNode::~H16ISPGraphVIOCameraControlNode(this);

  JUMPOUT(0x22AA55B60);
}

BOOL H16ISP::savePeridotCalib(H16ISP *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPServicesRemote *a3, void *a4, const void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v10 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "general");
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;

    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "savePeridotCalib";
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - saving calibration\n", &v29, 0xCu);
  }

  if (!a4)
  {
    return 0;
  }

  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v10)
  {
    v14 = os_log_create("com.apple.isp", "general");
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;

    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "savePeridotCalib";
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - updating firmware\n", &v29, 0xCu);
  }

  if (H16ISP::savePeridotCalibToFW(this, a3, a4, v16))
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (a2)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v10)
      {
        v18 = os_log_create("com.apple.isp", "general");
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;

        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315138;
        v30 = "savePeridotCalib";
        _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - sending to daemon to store\n", &v29, 0xCu);
      }

      v20 = CFRetain(a4);
      if (v20)
      {
        v21 = v20;
        H16ISP::H16ISPServicesRemote::SaveJasperCalibData(a2, v20);
        CFRelease(v21);
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v10)
      {
        v26 = os_log_create("com.apple.isp", "general");
        v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v26;

        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315138;
        v30 = "savePeridotCalib";
        _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - storing locally\n", &v29, 0xCu);
      }

      JasperCalibration::save(a4, v28);
    }

    return 1;
  }

  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v10)
  {
    v23 = os_log_create("com.apple.isp", "general");
    v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;

    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  result = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v29 = 136315138;
    v30 = "savePeridotCalib";
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_DEFAULT, "%s - failed to update calibration in firmware\n", &v29, 0xCu);
    return 0;
  }

  return result;
}

BOOL H16ISP::setPeridotCalib(H16ISP *this, xpc_connection_t *a2, H16ISP::H16ISPServicesRemote *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  PeridotCalib = H16ISP::createPeridotCalib(this, a2, 0);
  if (!PeridotCalib)
  {
    return 0;
  }

  v6 = PeridotCalib;
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v8 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "general");
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;

    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "setPeridotCalib";
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "%s - updating firmware\n", &v17, 0xCu);
  }

  v12 = H16ISP::savePeridotCalibToFW(this, a3, v6, v11);
  if (!v12)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v8)
    {
      v14 = os_log_create("com.apple.isp", "general");
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;

      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "setPeridotCalib";
      _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - failed to update firmware\n", &v17, 0xCu);
    }
  }

  CFRelease(v6);
  return v12;
}

BOOL H16ISP::savePeridotCalibToFW(H16ISP *this, H16ISP::H16ISPDevice *a2, unsigned __int16 a3, const void *a4)
{
  v4 = a2;
  v31 = *MEMORY[0x277D85DE8];
  H16ISP::JasperConfigManager::getJasperOptionsDict(this);
  IspFirmwareCalibWithOptions = PDPeridotCalibCreateIspFirmwareCalibWithOptions();
  if (IspFirmwareCalibWithOptions)
  {
    v7 = IspFirmwareCalibWithOptions;
    if (CFDataGetLength(IspFirmwareCalibWithOptions) == 536)
    {
      bzero(buf, 0x228uLL);
      LOWORD(v26) = 14087;
      HIDWORD(v26) = v4;
      v32.location = 0;
      v32.length = 536;
      CFDataGetBytes(v7, v32, &Length + 2);
      v8 = H16ISP::H16ISPDevice::ISP_SendCommand(this, buf, 0x228u, 0, 0xFFFFFFFF);
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "general");
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;

        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315394;
        v22 = "savePeridotCalibToFW";
        v23 = 1024;
        v24 = v8;
        _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: %d\n", &v21, 0x12u);
      }

      CFRelease(v7);
      return v8 == 0;
    }

    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "general");
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;

      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    v20 = v17;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = "savePeridotCalibToFW";
      v27 = 2048;
      Length = CFDataGetLength(v7);
      v29 = 2048;
      v30 = 536;
      _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: unexpected size: %ld != %lu\n", buf, 0x20u);
    }

    CFRelease(v7);
    return 0;
  }

  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v14 = os_log_create("com.apple.isp", "general");
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;

    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  v16 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v16)
  {
    *buf = 136315138;
    v26 = "savePeridotCalibToFW";
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: bad input\n", buf, 0xCu);
    return 0;
  }

  return result;
}

void H16ISP::H16ISPJasperDepthNode::H16ISPJasperDepthNode(H16ISP::H16ISPJasperDepthNode *this, H16ISP::H16ISPDevice *a2, int a3, int a4, int a5, H16ISP::H16ISPServicesRemote *a6)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 11);
  *v12 = &unk_283814A30;
  *(v12 + 80) = a2;
  *(v12 + 88) = a6;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = vdup_n_s32(0x42F00000u);
  *(v12 + 120) = a3;
  *(v12 + 128) = a4;
  *(v12 + 132) = a5;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 1;
  mach_timebase_info((v12 + 168));
  *(this + 213) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 31) = H16ISP::H16ISPDevice::getSensorChannel(a2, 1785950322, 1852793709);
  *(this + 56) = H16ISP::H16ISPGetCFPreferenceNumber(@"JasperCongestionLimit", @"com.apple.coremedia", 2);
  operator new();
}

void H16ISP::H16ISPJasperDepthNode::~H16ISPJasperDepthNode(H16ISP::H16ISPJasperDepthNode *this)
{
  *this = &unk_283814A30;
  *(this + 228) = 1;
  v2 = objc_autoreleasePoolPush();
  v3 = *(this + 26);
  if (v3)
  {
    os_workgroup_cancel(v3);
    v4 = *(this + 26);
    *(this + 26) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v5 = *(this + 27);
  if (v5)
  {
    dispatch_async_and_wait(v5, &__block_literal_global_11);
    v6 = *(this + 27);
    *(this + 27) = 0;
  }

  v7 = *(this + 13);
  if (v7)
  {
    H16ISP::JasperDepthNodeInternal::~JasperDepthNodeInternal(v7);
    MEMORY[0x22AA55B60]();
  }

  *(this + 13) = 0;
  v8 = *(this + 18);
  if (v8)
  {
    CFRelease(v8);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPJasperDepthNode::~H16ISPJasperDepthNode(this);

  JUMPOUT(0x22AA55B60);
}

H16ISP::H16ISPTimeOfFlightColorSynchronizer *H16ISP::H16ISPJasperDepthNode::setJasperMode(id **this)
{
  v2 = [*this[13] expectedBanksPerFrame];
  if (v2 < 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8u / v2;
  }

  result = this[12];
  if (result)
  {

    return H16ISP::H16ISPTimeOfFlightColorSynchronizer::setCloudsPerImage(result, v3);
  }

  return result;
}

uint64_t H16ISP::H16ISPJasperDepthNode::setGmoShouldDropBeforeWakeup(H16ISP::H16ISPJasperDepthNode *this, char a2)
{
  v2 = *(this + 152);
  if ((v2 & 1) == 0)
  {
    *(this + 154) = a2;
  }

  return v2 ^ 1u;
}

uint64_t H16ISP::H16ISPJasperDepthNode::setGmoDebugMode(H16ISP::H16ISPJasperDepthNode *this, char a2)
{
  v2 = *(this + 152);
  if ((v2 & 1) == 0)
  {
    *(this + 155) = a2;
  }

  return v2 ^ 1u;
}

void H16ISP::H16ISPJasperDepthNode::setBufferPool(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 144);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 144) = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    if (*v5)
    {
      v6 = *(a1 + 216);
      if (v6)
      {
        v7 = *(a1 + 144);
        if (v7)
        {
          CFRetain(*(a1 + 144));
          v6 = *(a1 + 216);
        }

        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = ___ZN6H16ISP21H16ISPJasperDepthNode13setBufferPoolEP18__CVDataBufferPool_block_invoke;
        v8[3] = &__block_descriptor_48_e5_v8__0l;
        v8[4] = a1;
        v8[5] = v7;
        dispatch_async(v6, v8);
      }
    }
  }
}

void ___ZN6H16ISP21H16ISPJasperDepthNode13setBufferPoolEP18__CVDataBufferPool_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 228) & 1) == 0)
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      if (*v3)
      {
        [*v3 setDataBufferPool:*(a1 + 40)];
      }
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t H16ISP::H16ISPJasperDepthNode::onActivate(H16ISP::H16ISPJasperDepthNode *this)
{
  v16 = *MEMORY[0x277D85DE8];
  *(this + 152) = 0;
  *(this + 23) = 0;
  if (*(this + 26))
  {
    goto LABEL_4;
  }

  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  v13 = 0u;
  v12 = 799564724;
  if (os_workgroup_attr_set_flags())
  {
    H16ISP::H16ISPJasperDepthNode::onActivate();
  }

  v2 = os_workgroup_create();
  v3 = *(this + 26);
  *(this + 26) = v2;

  if (*(this + 26))
  {
LABEL_4:
    v4 = *(this + 27);
    if (v4 || (inactive = dispatch_workloop_create_inactive("com.apple.h16jaspernode.workloop"), v6 = *(this + 27), *(this + 27) = inactive, v6, dispatch_workloop_set_os_workgroup(*(this + 27), *(this + 26)), dispatch_activate(*(this + 27)), (v4 = *(this + 27)) != 0))
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___ZN6H16ISP21H16ISPJasperDepthNode10onActivateEv_block_invoke;
      v11[3] = &__block_descriptor_40_e5_v8__0l;
      v11[4] = this;
      dispatch_async(v4, v11);
      *(this + 153) = 0;
    }
  }

  else
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "general");
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;

      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPJasperDepthNode::onActivate(v8);
    }
  }

  return 0;
}

void ___ZN6H16ISP21H16ISPJasperDepthNode10onActivateEv_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  PeridotCalib = H16ISP::createPeridotCalib(*(v1 + 80), *(v1 + 88), 0);
  if (PeridotCalib)
  {
    v3 = PeridotCalib;
    v4 = CFRetain(PeridotCalib);
    if (H16ISP::H16ISPDevice::GetCameraConfig(*(v1 + 80), *(v1 + 124), 0, v34, v35))
    {
      CFRelease(v3);
    }

    else
    {
      v5 = [MEMORY[0x277D3A158] calibrationDataWithPeridotCalib:v4 platformId:*(v1 + 120) sensorVersion:v36];
      if (v5)
      {
        H16ISP::JasperDepthNodeInternal::validate(*(v1 + 104), *(v1 + 80), *(v1 + 124), *(v1 + 88), v5, *(v1 + 112), *(v1 + 116));
        v6 = **(v1 + 104);
        v7 = *(v1 + 88);
        if (v7)
        {
          theDict.columns[0].i64[0] = 0;
          H16ISP::H16ISPServicesRemote::ReadDictionary(v7, @"/var/mobile/Library/ISP/JasperL/session_persistency.plist", &theDict);
          if (theDict.columns[0].i64[0])
          {
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict.columns[0].i64[0]);
            CFRelease(theDict.columns[0].i64[0]);
          }

          else
          {
            MutableCopy = 0;
          }
        }

        else
        {
          v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/mobile/Library/ISP/JasperL/session_persistency.plist"];
          MutableCopy = [v9 mutableCopy];

          if (MutableCopy)
          {
            v10 = MutableCopy;
          }
        }

        *(v1 + 192) = MutableCopy;
        v11 = [(__CFDictionary *)MutableCopy objectForKeyedSubscript:@"DepthProcessor"];
        if (v11)
        {
          [v6 setInternalState:v11];
        }

        v12 = *(v1 + 144);
        if (v12)
        {
          v13 = CFRetain(v12);
          v14 = *(v1 + 216);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___ZN6H16ISP21H16ISPJasperDepthNode10onActivateEv_block_invoke_2;
          block[3] = &unk_27853B7D8;
          v32 = v6;
          v33 = v13;
          dispatch_async(v14, block);
        }

        if (*(v1 + 155) == 1)
        {
          v12 = [v6 setGmoDebugMode];
        }

        isValidSequenceApplied = H16ISP::JasperConfigManager::isValidSequenceApplied(v12);
        if (!isValidSequenceApplied)
        {
          NSLog(&cfstr_Jasperdepthnod_1.isa);
        }

        FrameMode = H16ISP::JasperConfigManager::getFrameMode(isValidSequenceApplied);
        if (FrameMode == 108)
        {
          v17 = 2;
        }

        else
        {
          v17 = FrameMode == 104;
        }

        [*(*(v1 + 104) + 8) setGmoFlowBitmask:0];
        [**(v1 + 104) setGmoFlowBitmap:0];
        LODWORD(v18) = *(v1 + 128);
        LODWORD(v19) = *(v1 + 132);
        [v6 prepareForPeridotPreset:v17 rawSensorDimensions:{v18, v19}];
        v20 = *(v1 + 96);
        if (v20 && (*(v1 + 136) || H16ISP::H16ISPTimeOfFlightColorSynchronizer::isAutoFocusAssistanceActive(v20)))
        {
          PDPeridotCalibGetOperationalWideToPeridotTransform();
          theDict.columns[0] = v21;
          theDict.columns[1] = v22;
          theDict.columns[2] = v23;
          theDict.columns[3] = v24;
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setWideToTofExtrinsics(*(v1 + 96), &theDict);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setFWProjectorMode(*(v1 + 96), 1);
          v25 = *(v1 + 120);
          v26 = v36;
          v27 = *(v1 + 96);
          v28 = **(v1 + 104);
          v29 = v28;
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::activate(v27, v4, v25, v26, v28);
        }

        [v6 startNewStatisticsSession];
        H16ISP::H16ISPJasperDepthNode::setJasperMode(v1);
        *(v1 + 152) = 1;
        CFRelease(v3);
      }

      else
      {
        CFRelease(v3);
      }
    }
  }

  else
  {
    NSLog(&cfstr_Jasperdepthnod_0.isa);
  }
}

uint64_t H16ISP::JasperDepthNodeInternal::validate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, float a6, float a7)
{
  v13 = a5;
  v14 = *(a1 + 8);
  if (!v14 || ![v14 isSameDevice:a2])
  {
    v17 = [[JasperDepthProvider alloc] initWithDevice:a2 andChannel:a3 andRemote:a4];
    v18 = *(a1 + 8);
    *(a1 + 8) = v17;

    v20 = *(a1 + 8);
    if (v20)
    {
      *&v19 = a6;
      [v20 setJasperFrameRateMin:v19];
      *&v21 = a7;
      [*(a1 + 8) setJasperFrameRateMax:v21];
      v22 = [objc_alloc(MEMORY[0x277D3A148]) initWithSystemCalibrationData:v13];
      v23 = *a1;
      *a1 = v22;

      v24 = *(a1 + 8);
      if (*a1)
      {
        [*a1 setDelegate:v24];
        v25 = H16ISP::H16ISPGetCFPreferenceNumber(@"JasperDumpRawBuffers", @"com.apple.coremedia", 0);
        *(a1 + 16) = v25 != 0;
        if (v25)
        {
          v26 = NSTemporaryDirectory();
          v27 = [v26 stringByAppendingPathComponent:@"JasperRawBuffers"];
          v28 = *(a1 + 32);
          *(a1 + 32) = v27;

          NSLog(&cfstr_DumpingTofRawB.isa, *(a1 + 32));
          v29 = [MEMORY[0x277CCAA00] defaultManager];
          v30 = *(a1 + 32);
          v36 = 0;
          [v29 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v36];
          v31 = v36;

          v32 = objc_opt_new();
          v33 = *(a1 + 24);
          *(a1 + 24) = v32;

          [*(a1 + 24) setDateFormat:@"yyyyMMdd-HHmmss-SSS"];
        }

        goto LABEL_8;
      }

      *(a1 + 8) = 0;
    }

    v34 = 0;
    goto LABEL_11;
  }

  *&v15 = a6;
  [*(a1 + 8) setJasperFrameRateMin:v15];
  *&v16 = a7;
  [*(a1 + 8) setJasperFrameRateMax:v16];
LABEL_8:
  v34 = 1;
LABEL_11:

  return v34;
}

void ___ZN6H16ISP21H16ISPJasperDepthNode10onActivateEv_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDataBufferPool:*(a1 + 40)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t H16ISP::H16ISPJasperDepthNode::onDeactivate(H16ISP::H16ISPJasperDepthNode *this)
{
  *(this + 76) = 0;
  v2 = *(this + 27);
  if (v2)
  {
    dispatch_async_and_wait(v2, &__block_literal_global_99);
    v3 = *(this + 27);
    *(this + 27) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::deactivate(v4);
  }

  v5 = *(this + 24);
  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v6 = **(this + 13);
  if (v6)
  {
    [v6 reportSessionStatistics];
    v7 = [**(this + 13) getInternalState];
    if (v7)
    {
      [v5 setObject:v7 forKey:@"DepthProcessor"];
    }
  }

  v8 = *(this + 10);
  v9 = *(this + 23);
  v10 = v5;
  v11 = [v10 objectForKeyedSubscript:@"JasperTotalFrameCount"];
  v12 = [v11 longLongValue];

  v13 = [v10 objectForKeyedSubscript:@"JasperFramesSinceLastTransition"];
  v14 = [v13 longLongValue];

  v15 = [v10 objectForKeyedSubscript:@"JasperCurrentState"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 intValue];
  }

  else
  {
    v17 = 1;
  }

  v18 = [v10 objectForKeyedSubscript:@"JasperStateTransitionCount"];
  v19 = [v18 intValue];

  JasperStatistics = H16ISP::H16ISPDevice::ISP_GetJasperStatistics(v8, &outputStruct);
  v21 = v14 + v9;
  if (!JasperStatistics)
  {
    if (v17 != outputStruct)
    {
      v19 = (v19 + 1);
      reportJasperStateAnalytics();
      v21 = 0;
    }

    if (v33)
    {
      v22 = 0;
      v23 = &v32;
      do
      {
        reportPeridotCoexRetries();
        ++v23;
        ++v22;
      }

      while (v22 < v33);
    }
  }

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
  [v10 setObject:v24 forKeyedSubscript:@"JasperFramesSinceLastTransition"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:outputStruct];
  [v10 setObject:v25 forKeyedSubscript:@"JasperCurrentState"];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:v19];
  [v10 setObject:v26 forKeyedSubscript:@"JasperStateTransitionCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12 + v9];
  [v10 setObject:v27 forKeyedSubscript:@"JasperTotalFrameCount"];

  v28 = *(this + 11);
  if (v28)
  {
    H16ISP::H16ISPServicesRemote::WriteDictionary(v28, @"/var/mobile/Library/ISP/JasperL/session_persistency.plist", v10);
  }

  else
  {
    [v10 writeToFile:@"/var/mobile/Library/ISP/JasperL/session_persistency.plist" atomically:1];
  }

  v29 = *(this + 25);
  if (v29)
  {
    CFRelease(v29);
  }

  return 0;
}

uint64_t H16ISP::H16ISPJasperDepthNode::onMessageProcessing(H16ISP::H16ISPJasperDepthNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  pthread_mutex_lock((a2 + 8));
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 112;
  do
  {
    v8 = a2 + 344 * v4 + 80;
    if (*(v8 + 4) == *(this + 31))
    {
      v9 = *(v8 + 5);
      if (v9)
      {
        v10 = v7;
        v11 = v7;
        do
        {
          v12 = *v11;
          v11 += 4;
          if (v12 == 1)
          {
            v5 = *(v10 - 1);
            v6 = *(v8 + 1);
          }

          v10 = v11;
          --v9;
        }

        while (v9);
      }
    }

    ++v4;
    v7 += 344;
  }

  while (v4 != 3);
  pthread_mutex_unlock((a2 + 8));
  if (!v5)
  {
    return 0;
  }

  v13 = 3758097130;
  H16ISP::JasperDepthNodeInternal::saveBuffer(*(this + 13), v5);
  ++*(this + 23);
  Attachment = CVBufferGetAttachment(v5, *MEMORY[0x277CF3F70], 0);
  if (H16ISP::H16ISPJasperDepthNode::updateJasperMetadata(this, v5, Attachment))
  {
    v15 = *(*(this + 13) + 8);
    v16 = ([v15 isValid] & 1) == 0 && objc_msgSend(*(*(this + 13) + 8), "gmoFlowBitmask") != 0;

    CVPixelBufferLockBaseAddress(v5, 1uLL);
    CVPixelBufferGetBaseAddress(v5);
    if (*(this + 12))
    {
      shouldProcessForAutoFocus = H16ISP::H16ISPTimeOfFlightColorSynchronizer::shouldProcessForAutoFocus(*(this + 12));
      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
      if (shouldProcessForAutoFocus)
      {
        goto LABEL_23;
      }
    }

    else
    {
      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
    }

    v18 = *(this + 12);
    if (v18 && H16ISP::H16ISPTimeOfFlightColorSynchronizer::isFWAFOwner(v18))
    {
      if (!v16)
      {
        return v13;
      }
    }

    else if (!*(this + 34))
    {
      return 0;
    }

LABEL_23:
    if (*(this + 152) == 1)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v19 = *(this + 27);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN6H16ISP21H16ISPJasperDepthNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke;
      block[3] = &unk_27853B800;
      block[4] = &v22;
      block[5] = this;
      block[6] = v6;
      block[7] = v5;
      block[8] = Attachment;
      dispatch_async_and_wait(v19, block);
      v13 = *(v23 + 6);
      _Block_object_dispose(&v22, 8);
      return v13;
    }

    return 0;
  }

  return v13;
}

void H16ISP::JasperDepthNodeInternal::saveBuffer(H16ISP::JasperDepthNodeInternal *this, CVPixelBufferRef pixelBuffer)
{
  if (pixelBuffer && (*(this + 16) & 1) != 0)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    v4 = MEMORY[0x277CBEA90];
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    v12 = [v4 dataWithBytesNoCopy:BaseAddress length:CVPixelBufferGetDataSize(pixelBuffer) freeWhenDone:0];
    v6 = MEMORY[0x277CCACA8];
    v7 = *(this + 3);
    v8 = *(this + 4);
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [v7 stringFromDate:v9];
    v11 = [v6 stringWithFormat:@"%@/buffer-%@.raw", v8, v10];

    [v12 writeToFile:v11 atomically:1];
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }
}

uint64_t H16ISP::H16ISPJasperDepthNode::updateJasperMetadata(H16ISP::H16ISPJasperDepthNode *this, CVPixelBufferRef pixelBuffer, __CFDictionary *a3)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  DataSize = CVPixelBufferGetDataSize(pixelBuffer);
  ChannelSensorID = H16ISP::H16ISPDevice::GetChannelSensorID(*(this + 10), *(this + 31));
  if (ChannelSensorID == 1425)
  {
    if (DataSize <= 0x13F)
    {
      NSLog(&cfstr_UnexpectedPeri.isa, DataSize);
      goto LABEL_14;
    }

    if (BaseAddress[63] != 4)
    {
      NSLog(&cfstr_UnexpectedPeri_0.isa, BaseAddress[63], 4);
    }

    v19 = &BaseAddress[9280 * BaseAddress[51]];
    if (v19 + 384 > &BaseAddress[DataSize])
    {
      NSLog(&cfstr_BadPeridotFram.isa, BaseAddress[51]);
      goto LABEL_14;
    }

    v29 = v19[132] - 1;
    FrameMode = H16ISP::JasperConfigManager::getFrameMode(ChannelSensorID);
    if (FrameMode == 108)
    {
      v22 = 6;
    }

    else if (FrameMode == 104)
    {
      v22 = 5;
    }

    else
    {
      v22 = 1;
    }

    v28 = v22;
    v23 = *MEMORY[0x277CBECE8];
    v24 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, &v28);
    CFDictionarySetValue(a3, *MEMORY[0x277CF52E0], v24);
    CFRelease(v24);
    v17 = CFNumberCreate(v23, kCFNumberSInt8Type, &v29);
    CFDictionarySetValue(a3, @"JasperBankId", v17);
    v18 = *MEMORY[0x277CF52D0];
    goto LABEL_23;
  }

  v9 = 126208;
  if (BaseAddress[7] >= 0)
  {
    v9 = 63088;
  }

  v10 = &BaseAddress[v9];
  v11 = *&BaseAddress[v9];
  if ((v11 - 9) < 2)
  {
    if (!a3)
    {
LABEL_24:
      v20 = 1;
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      return v20;
    }

    v12 = [MEMORY[0x277D3A160] getPresetFromOperationModeNumber:*(v10 + 3)] == 0;
    valuePtr = 4 * v12;
    v13 = *MEMORY[0x277CBECE8];
    v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a3, @"JasperPresetIndex", v14);
    CFRelease(v14);
    v26 = v12;
    v15 = CFNumberCreate(v13, kCFNumberSInt16Type, &v26);
    CFDictionarySetValue(a3, *MEMORY[0x277CF52E0], v15);
    CFRelease(v15);
    v16 = CFNumberCreate(v13, kCFNumberSInt8Type, v10 + 2053);
    CFDictionarySetValue(a3, @"JasperBankId", v16);
    CFDictionarySetValue(a3, *MEMORY[0x277CF52D0], v16);
    CFRelease(v16);
    v17 = CFNumberCreate(v13, kCFNumberSInt16Type, v10 + 2);
    v18 = @"JasperConfigId";
LABEL_23:
    CFDictionarySetValue(a3, v18, v17);
    CFRelease(v17);
    goto LABEL_24;
  }

  if (v11 != -1)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    NSLog(&cfstr_JasperFrameVDE.isa, *v10, 9);
    return 0;
  }

LABEL_14:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return 0;
}

H16ISP::H16ISPJasperDepthNode *___ZN6H16ISP21H16ISPJasperDepthNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if ((*(result + 228) & 1) == 0)
  {
    result = H16ISP::H16ISPJasperDepthNode::processJasper(result, *(a1 + 48), *(a1 + 56), *(a1 + 64));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPJasperDepthNode::processJasper(H16ISP::H16ISPJasperDepthNode *this, unint64_t a2, __CVBuffer *a3, __CFDictionary *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(this + 152) != 1)
  {
    goto LABEL_26;
  }

  CVPixelBufferLockBaseAddress(a3, 1uLL);
  kdebug_trace();
  v8 = *(this + 25);
  if (!v8)
  {
    goto LABEL_6;
  }

  Length = CFDataGetLength(v8);
  if (Length < CVPixelBufferGetDataSize(a3))
  {
    CFRelease(*(this + 25));
  }

  v10 = *(this + 25);
  if (!v10)
  {
LABEL_6:
    v11 = *MEMORY[0x277CBECE8];
    DataSize = CVPixelBufferGetDataSize(a3);
    Mutable = CFDataCreateMutable(v11, DataSize);
    *(this + 25) = Mutable;
    v14 = CVPixelBufferGetDataSize(a3);
    CFDataSetLength(Mutable, v14);
    v10 = *(this + 25);
  }

  MutableBytePtr = CFDataGetMutableBytePtr(v10);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v17 = CVPixelBufferGetDataSize(a3);
  memcpy(MutableBytePtr, BaseAddress, v17);
  kdebug_trace();
  kdebug_trace();
  v18 = **(this + 13);
  memset(&v37, 0, sizeof(v37));
  v19 = FigHostTimeToNanoseconds();
  CMTimeMake(&v37, v19, 1000000000);
  v20 = *(this + 25);
  v36 = v37;
  v21 = [v18 generatePointCloudFromRawFrame:v20 timestamp:&v36];
  v22 = CVPixelBufferGetBaseAddress(a3);
  v23 = 126208;
  if (v22[7] >= 0)
  {
    v23 = 63088;
  }

  v24 = v22[v23 + 2053];
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  [v21 length];
  v25 = kdebug_trace();
  if (v21)
  {
    v26 = [v21 dataBuffer];
    v27 = v26;
    if (v26)
    {
      Attachment = CVBufferGetAttachment(v26, @"Metadata", 0);
      v29 = CVBufferGetAttachment(a3, *MEMORY[0x277CF3F70], 0);
      if (Attachment && v29)
      {
        CFDictionaryApplyFunction(Attachment, H16ISP::AppendDictionary, v29);
        CVBufferRemoveAttachment(v27, @"Metadata");
      }

      CVBufferSetAttachment(a3, @"PointCloudRidingOnRaw", v27, kCVAttachmentMode_ShouldPropagate);
    }

    v30 = *(*(this + 13) + 8);
    if ([v30 isValid])
    {
    }

    else
    {
      v35 = [*(*(this + 13) + 8) gmoFlowBitmask];

      if (*(this + 154) == 1 && v35)
      {
        NSLog(&cfstr_Jasperdepthnod_2.isa);
        v33 = 3758097130;

        goto LABEL_27;
      }
    }

    *(this + 153) = 1;
    v25 = *(this + 12);
    if (v25 && v27 && (*(v25 + 8) & 1) != 0)
    {
      H16ISP::H16ISPTimeOfFlightColorSynchronizer::pushJasperCloud(v25, v27, a4);
    }
  }

  isBurstAllowed = H16ISP::JasperConfigManager::isBurstAllowed(v25);
  v32 = v24 == 3 ? 0 : isBurstAllowed;

  if (v32)
  {
    v33 = 3758097130;
  }

  else
  {
LABEL_26:
    v33 = 0;
  }

LABEL_27:
  objc_autoreleasePoolPop(v7);
  return v33;
}

void H16ISP::JasperDepthNodeInternal::~JasperDepthNodeInternal(H16ISP::JasperDepthNodeInternal *this)
{
  v2 = *this;
  *this = 0;

  v3 = *(this + 1);
  *(this + 1) = 0;

  *(this + 16) = 0;
}

void H16ISP::H16ISPJasperColorNode::~H16ISPJasperColorNode(H16ISP::H16ISPJasperColorNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::~H16ISPTimeOfFlightColorSynchronizer(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizerD2Ev_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_sync(v2, block);
    v3 = *(this + 2);
  }

  else
  {
    v3 = 0;
  }

  *(this + 2) = 0;

  v4 = *(this + 3);
  if (v4)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::~TimeOfFlightColorSynchronizerInternal(v4);
    MEMORY[0x22AA55B60]();
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::activate(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this, const __CFData *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(this + 2);
  if (!v10)
  {
    v11 = H16ISP::CreateFixedPrioritySerialDispatchQueue_arc("com.apple.H16ispjaspercolorcalibration", 0x3A);
    v12 = *(this + 2);
    *(this + 2) = v11;

    v10 = *(this + 2);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer8activateEPK8__CFDatajjPv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_async(v10, block);
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::enableClouds(*(this + 3), 2);
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activate(*(this + 3), a2, a3, a4, a5);
}

NSObject *H16ISP::CreateFixedPrioritySerialDispatchQueue_arc(H16ISP *this, const char *a2)
{
  v2 = a2;
  v19 = *MEMORY[0x277D85DE8];
  v4 = dispatch_queue_create(this, 0);
  if (v4)
  {
    snprintf(__str, 0x100uLL, "%s.root", this);
    v5 = strlen(this);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v5;
    if (v5)
    {
      memcpy(&__dst, this, v5);
    }

    __dst.__r_.__value_.__s.__data_[v6] = 0;
    v7 = std::string::append(&__dst, ".thread", 7uLL);
    v8 = v7->__r_.__value_.__r.__words[0];
    size = v7->__r_.__value_.__l.__size_;
    v17[0] = v7->__r_.__value_.__r.__words[2];
    *(v17 + 3) = *(&v7->__r_.__value_.__r.__words[2] + 3);
    v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v10 < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v8, size);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = v8;
      __p.__r_.__value_.__l.__size_ = size;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v17[0];
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v17 + 3);
      *(&__p.__r_.__value_.__s + 23) = v10;
    }

    v15 = v2;
    v11 = dispatch_pthread_root_queue_create();
    if (v11)
    {
      v12 = v11;
      dispatch_set_target_queue(v4, v11);
    }

    else
    {
      v12 = v4;
      v4 = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v8);
  }

LABEL_18:

  return v4;
}

void sub_22496C1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v24);

  _Unwind_Resume(a1);
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::enableClouds(uint64_t this, int a2)
{
  v2 = this;
  if (*(this + 217) != 1 || *(this + 220) != a2)
  {
    *(this + 217) = 1;
    *(this + 220) = a2;
    v3 = objc_alloc(MEMORY[0x277CED118]);
    LODWORD(v4) = *(v2 + 268);
    v5 = [v3 initWithStreamCount:1 allowedMatchTimeInterval:v4 / 1000.0];
    v6 = *(v2 + 240);
    *(v2 + 240) = v5;

    LODWORD(v7) = *(v2 + 268);
    [*(v2 + 240) setStream:0 queueSize:2 * *(v2 + 220) aggregationCount:v7 / 1000.0 allowedAggregationInterval:?];
    v8 = objc_alloc(MEMORY[0x277CED118]);
    LODWORD(v9) = *(v2 + 264);
    v10 = [v8 initWithStreamCount:2 allowedMatchTimeInterval:v9 / 1000.0];
    v11 = *(v2 + 248);
    *(v2 + 248) = v10;

    LODWORD(v12) = *(v2 + 272);
    [*(v2 + 248) setStream:0 queueSize:2 * *(v2 + 220) aggregationCount:v12 / 1000.0 allowedAggregationInterval:?];
    v13 = *(v2 + 248);

    return [v13 setStream:1 queueSize:2];
  }

  return this;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = a5;
  pthread_mutex_lock((a1 + 128));
  v10 = [MEMORY[0x277D3A158] calibrationDataWithPeridotCalib:a2 platformId:a3 sensorVersion:a4];
  v11 = *(a1 + 200);
  *(a1 + 200) = v10;

  *(a1 + 208) = a3;
  *(a1 + 212) = a4;
  v12 = *(a1 + 8);
  v13 = *(v12 + 96);
  v14 = *(v12 + 112);
  v15 = *(v12 + 128);
  v16 = vzip1q_s32(v13, v15);
  v17 = vzip2q_s32(v13, v15);
  v18 = vdupq_laneq_s32(v14, 2);
  v19 = vtrn2q_s32(v13, v14);
  v19.i32[2] = HIDWORD(*(v12 + 128));
  v20 = vzip1q_s32(v16, v14);
  v21 = vzip1q_s32(v17, v18);
  v22 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*(v12 + 144))), v19, *(v12 + 144), 1), v21, *(v12 + 144), 2));
  *(a1 + 56) = v15.i32[0];
  *(a1 + 48) = v20.i64[0];
  *(a1 + 60) = 0;
  *(a1 + 72) = v15.i32[1];
  *(a1 + 64) = v19.i64[0];
  *(a1 + 76) = 0;
  *(a1 + 88) = v15.i32[2];
  *(a1 + 80) = v21.i64[0];
  *(a1 + 92) = 0;
  *(a1 + 104) = v22.i32[2];
  *(a1 + 96) = v22.i64[0];
  *(a1 + 108) = 0;
  objc_storeStrong((a1 + 224), a5);
  if (*(a1 + 112) != 0.0)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activateColor(a1);
  }

  v23 = *(a1 + 16);
  *(v23 + 32) = mach_absolute_time();
  pthread_mutex_unlock((a1 + 128));
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::deactivate(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this)
{
  if (*(this + 8) == 1)
  {
    block[5] = v1;
    block[6] = v2;
    v3 = *(this + 2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer10deactivateEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_async(v3, block);
  }
}

void ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer10deactivateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::deactivate(*(v1 + 24));
  }

  *(v1 + 8) = 0;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::deactivate(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    H16ISP::TimeOfFlightAutoFocusAssistant::deactivate(v2);
  }

  if (*this)
  {
    H16ISP::TimeOfFlightColorInfieldCalibrationManager::deactivate(*this);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;

  v4 = *(this + 35);
  if (v4)
  {
    CVPixelBufferRelease(v4);
  }

  v5 = *(this + 36);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 35) = 0;
  *(this + 36) = 0;
  v6 = *(this + 25);
  *(this + 25) = 0;

  v7 = *(this + 24);
  *(this + 24) = 0;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setDilutionRate(uint64_t this, int a2)
{
  v2 = **(this + 24);
  *(v2 + 64) = a2;
  *(v2 + 84) = a2;
  *(v2 + 88) = a2;
  *(v2 + 80) = 0;
  return this;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setLowFrameInterval(uint64_t this, int a2)
{
  v2 = **(this + 24);
  *(v2 + 84) = a2;
  *(v2 + 80) = *(v2 + 88) != a2;
  *(v2 + 64) = a2;
  return this;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setHighFrameInterval(uint64_t this, int a2)
{
  v2 = **(this + 24);
  *(v2 + 88) = a2;
  v3 = *(v2 + 84);
  *(v2 + 80) = v3 != a2;
  *(v2 + 64) = v3;
  return this;
}

__n128 H16ISP::H16ISPTimeOfFlightColorSynchronizer::setWideToTofExtrinsics(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this, const simd_float4x3 *a2)
{
  v2 = *(*(this + 3) + 8);
  v3 = a2->columns[1];
  v4 = a2->columns[2];
  v5 = vzip1q_s32(vzip1q_s32(a2->columns[0], v4), v3);
  v6 = vtrn2q_s32(a2->columns[0], v3);
  v6.i32[2] = HIDWORD(a2->columns[2].i64[0]);
  v7 = vzip1q_s32(vzip2q_s32(a2->columns[0], v4), vdupq_laneq_s32(v3, 2));
  v8 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*&a2->columns[3])), v6, *a2->columns[3].f32, 1), v7, a2->columns[3], 2));
  *(v2 + 104) = v4.i32[0];
  *(v2 + 120) = v4.i32[1];
  *(v2 + 96) = v5.i64[0];
  *(v2 + 112) = v6.i64[0];
  *(v2 + 136) = v4.i32[2];
  *(v2 + 128) = v7.i64[0];
  *(v2 + 152) = v8.i32[2];
  *(v2 + 144) = v8.i64[0];
  v9 = *(v2 + 112);
  *(v2 + 160) = *(v2 + 96);
  *(v2 + 176) = v9;
  result = *(v2 + 128);
  v11 = *(v2 + 144);
  *(v2 + 192) = result;
  *(v2 + 208) = v11;
  return result;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::pushJasperCloud(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this, CVBufferRef buffer, const __CFDictionary *a3)
{
  CVBufferRetain(buffer);
  if (a3)
  {
    CFRetain(a3);
  }

  v6 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer15pushJasperCloudEP10__CVBufferPK14__CFDictionary_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = this;
  block[5] = buffer;
  block[6] = a3;
  dispatch_async(v6, block);
}

void ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer15pushJasperCloudEP10__CVBufferPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::processCloud(*(v2 + 24), *(a1 + 40), *(a1 + 48));
  }

  CVBufferRelease(*(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::processCloud(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this, __CVBuffer *a2, const __CFDictionary *a3)
{
  if (*(this + 344) == 1)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "general");
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;

      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: processCloud\n", &buf, 2u);
    }
  }

  v9 = [MEMORY[0x277CED0A8] makeWithDataBuffer:a2];
  if (v9)
  {
    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CF3F80]);
    memset(&buf, 0, sizeof(buf));
    CMTimeMakeFromDictionary(&buf, Value);
    v11 = 0;
    while (v11 < [v9 length])
    {
      if (!*([v9 bankIds] + v11++))
      {
        [*(this + 30) reset];
        break;
      }
    }

    v13 = *(this + 30);
    v22 = buf;
    Seconds = CMTimeGetSeconds(&v22);
    v15 = MEMORY[0x277D860B8];
    v16 = [v13 pushData:v9 streamIndex:0 timestamp:a3 pose:Seconds meta:{*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)}];
    if (v16)
    {
      if (*(this + 344) == 1)
      {
        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v18 = os_log_create("com.apple.isp", "general");
          v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;

          v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22.value) = 0;
          _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: processCloud found match\n", &v22, 2u);
        }
      }

      H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleAggregation(this, v16);
    }

    v20 = *(this + 31);
    v22 = buf;
    v21 = [v20 pushData:v9 streamIndex:0 timestamp:a3 pose:CMTimeGetSeconds(&v22) meta:{*v15, v15[2], v15[4], v15[6]}];

    if (v21)
    {
      H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleInfieldMatch(this, v21);
    }
  }
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::pushColorMessage(uint64_t this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v42 = this;
  if (*(this + 8) == 1)
  {
    pthread_mutex_lock((a2 + 8));
    v3 = 0;
    v41 = a2 + 80;
    v4 = *MEMORY[0x277CF3F70];
    v40 = *MEMORY[0x277CF5278];
    v38 = *MEMORY[0x277CF5288];
    v37 = *MEMORY[0x277CF3CD8];
    v39 = *MEMORY[0x277CF51C8];
    v35 = *MEMORY[0x277CF5138];
    v34 = *MEMORY[0x277CF5338];
    v33 = *MEMORY[0x277CF5128];
    v36 = a2;
    v32 = *MEMORY[0x277CF5300];
    v5 = (a2 + 112);
    v31 = *MEMORY[0x277CF5110];
    v30 = *MEMORY[0x277CF4D60];
    while (1)
    {
      v6 = &v41[344 * v3];
      if (*(v6 + 5))
      {
        break;
      }

LABEL_35:
      ++v3;
      v5 += 86;
      if (v3 == 3)
      {
        return pthread_mutex_unlock((v36 + 8));
      }
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v43 = v5;
    do
    {
      v12 = *v5;
      if (*v5 == 7 || v12 == 1)
      {
        v8 = 1;
      }

      else if (!v12)
      {
        v9 = *(v5 - 1);
        v14 = CVBufferGetAttachment(v9, v4, 0);

        v12 = *v5;
        v11 = v14;
      }

      if (v12 == 10)
      {
        v10 = *(v5 - 1);
        if (!v11)
        {
          v11 = CVBufferGetAttachment(*(v5 - 1), v4, 0);
        }
      }

      ++v7;
      v5 += 4;
    }

    while (v7 < *(v6 + 5));
    v15 = [v11 objectForKeyedSubscript:v40];
    v16 = [v15 isEqual:&unk_283820080];

    if (!(v8 & 1 | ((*(*(*(v42 + 24) + 8) + 225) & v16 & 1) == 0)))
    {
      v17 = [v11 objectForKeyedSubscript:v38];
      v18 = [v17 objectForKeyedSubscript:v37];
      v19 = [v18 objectForKeyedSubscript:v39];
      v20 = [v19 isEqual:&unk_283820080];

      if (v20)
      {
        [v18 setObject:&unk_283820098 forKeyedSubscript:v39];
      }
    }

    if (!(v9 | v10) || *(v6 + 4) != *(v42 + 32))
    {
LABEL_34:

      v5 = v43;
      goto LABEL_35;
    }

    if (v9)
    {
      Attachment = CVBufferGetAttachment(v9, v4, 0);
      if (Attachment)
      {
        DeepCopy = H16ISP::dictionaryCreateDeepCopy(Attachment, v22);
LABEL_33:
        CVPixelBufferRetain(v9);
        v29 = *(v42 + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer16pushColorMessageEPNS_24H16ISPFilterGraphMessageE_block_invoke;
        block[3] = &__block_descriptor_64_e5_v8__0l;
        block[4] = v42;
        block[5] = v10;
        block[6] = v9;
        block[7] = DeepCopy;
        dispatch_async(v29, block);
        goto LABEL_34;
      }
    }

    else
    {
      if (v10)
      {
        v24 = CVBufferGetAttachment(v10, v4, 0);
        if (v24)
        {
          DeepCopy = H16ISP::dictionaryCreateDeepCopy(v24, v25);
          H16ISP::updateMetadataReplaceField(DeepCopy, v35, v34, v26);
          H16ISP::updateMetadataReplaceField(DeepCopy, v33, v32, v27);
          H16ISP::updateMetadataReplaceField(DeepCopy, v31, v30, v28);
        }

        else
        {
          DeepCopy = 0;
        }

        v9 = v10;
        goto LABEL_33;
      }

      v9 = 0;
    }

    DeepCopy = 0;
    goto LABEL_33;
  }

  return this;
}

void ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer16pushColorMessageEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::logColorBuffer(*(v2 + 24), *(a1 + 40) != 0, *(a1 + 48), *(a1 + 56));
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::processBuffer(*(v2 + 24), *(a1 + 48), *(a1 + 56));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);

  CVPixelBufferRelease(v4);
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::logColorBuffer(H16ISP::TimeOfFlightAutoFocusAssistant **this, int a2, __CVBuffer *a3, NSDictionary *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (*(this + 344) == 1)
  {
    PreviewMasterType = H16ISP::TimeOfFlightAutoFocusAssistant::getPreviewMasterType(this[1]);
    v9 = "SuperWide";
    if (PreviewMasterType == 1919251564)
    {
      v10 = "Tele";
    }

    else
    {
      v10 = "Unknown";
    }

    if (PreviewMasterType != 1919251319)
    {
      v9 = v10;
    }

    if (PreviewMasterType == 1919246706)
    {
      v11 = "Wide";
    }

    else
    {
      v11 = v9;
    }

    v12 = [(NSDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CF5338]];
    [v12 floatValue];
    v14 = v13;

    [MEMORY[0x277CED068] getFrameTransformsFromMetadataDictionary:v7 sensorCropRect:v35 rawSensorSize:v33 postReadCropRect:v34];
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "general");
      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;

      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    v18 = v15;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v11;
      v20 = v35[0];
      v19 = v35[1];
      if (a2)
      {
        v21 = "secondary";
      }

      else
      {
        v21 = "primary";
      }

      v23 = v35[2];
      v22 = v35[3];
      v24 = v33[0];
      v27 = v33[1];
      v28 = v34[0];
      v29 = v34[1];
      v30 = v34[2];
      v31 = v34[3];
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      *buf = 136318722;
      v37 = v21;
      v38 = 2048;
      v39 = v14;
      v40 = 2048;
      v41 = v20;
      v42 = 2048;
      v43 = v19;
      v44 = 2048;
      v45 = v23;
      v46 = 2048;
      v47 = v22;
      v48 = 2048;
      v49 = v24;
      v50 = 2048;
      v51 = v27;
      v52 = 2048;
      v53 = v28;
      v54 = 2048;
      v55 = v29;
      v56 = 2048;
      v57 = v30;
      v58 = 2048;
      v59 = v31;
      v60 = 2048;
      v61 = Width;
      v62 = 2048;
      v63 = Height;
      v64 = 2080;
      v65 = v32;
      _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_DEFAULT, "Got Wide buffer from %s scaler. Zoom factor: %f. Sensor crop: (%.1f, %.1f, %.1f, %.1f), readout size: (%.1f, %.1f), ISP crop: (%.1f, %.1f, %.1f, %.1f), image size: (%zu, %zu). Preview master: %s\n", buf, 0x98u);
    }
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::processBuffer(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this, __CVBuffer *a2, const __CFDictionary *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::doesNeedColor(this))
      {
        Value = CFDictionaryGetValue(a3, *MEMORY[0x277CF3F80]);
        if (Value)
        {
          v7 = Value;
          if (*(this + 344) == 1)
          {
            v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v9 = os_log_create("com.apple.isp", "general");
              v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;

              v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            }

            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.value) = 0;
              _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: process buffer\n", &buf, 2u);
            }
          }

          memset(&buf, 0, sizeof(buf));
          CMTimeMakeFromDictionary(&buf, v7);
          v11 = *(this + 35);
          if (v11)
          {
            CVPixelBufferRelease(v11);
          }

          v12 = *(this + 36);
          if (v12)
          {
            CFRelease(v12);
          }

          *(this + 35) = CVPixelBufferRetain(a2);
          *(this + 36) = CFRetain(a3);
          *(this + 304) = 0;
          v18 = buf;
          Seconds = CMTimeGetSeconds(&v18);
          v14 = *(this + 37);
          if (v14 != 0.0)
          {
            v15 = (vabdd_f64(Seconds, v14) * 1000.0 * 0.5 + 1.0);
            if (*(this + 64) != v15)
            {
              *(this + 64) = v15;
            }

            if (*(this + 66) != v15)
            {
              if (*(this + 65) < v15)
              {
                v15 = *(this + 65);
              }

              *(this + 66) = v15;
            }
          }

          *(this + 37) = Seconds;
          if (*(this + 39))
          {
            H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleTofMatch(this);
          }

          v16 = *(this + 31);
          v18 = buf;
          v17 = [v16 pushData:a2 streamIndex:1 timestamp:a3 pose:CMTimeGetSeconds(&v18) meta:{*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)}];
          if (v17)
          {
            H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleInfieldMatch(this, v17);
          }
        }
      }
    }
  }
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setPreviewMasterCallback(uint64_t this, unsigned __int16 (*a2)(void *), void *a3)
{
  v3 = *(*(this + 24) + 8);
  *(v3 + 232) = a2;
  *(v3 + 240) = a3;
  return this;
}

double H16ISP::H16ISPTimeOfFlightColorSynchronizer::getTeleDensificationZoomLimit(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this)
{
  result = 2.65;
  if ((*(*(this + 3) + 208) - 97) >= 2)
  {
    return 0.0;
  }

  return result;
}

uint64_t ___ZN6H16ISP42CreateFixedPrioritySerialDispatchQueue_arcEPKcj_block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  pthread_setname_np(v2);
  v3 = pthread_self();
  v4 = pthread_mach_thread_np(v3);
  v5 = H16ISP::H16ISPSetMachThreadPriority(v4, *(a1 + 56));

  return MEMORY[0x282204EA8](v5);
}

void __copy_helper_block_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::~TimeOfFlightColorSynchronizerInternal(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    H16ISP::TimeOfFlightAutoFocusAssistant::~TimeOfFlightAutoFocusAssistant(v2);
    MEMORY[0x22AA55B60]();
  }

  if (*this)
  {
    H16ISP::TimeOfFlightColorInfieldCalibrationManager::~TimeOfFlightColorInfieldCalibrationManager(*this);
    MEMORY[0x22AA55B60]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x22AA55B60](v3, 0x1020C405CE9ABE8);
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    CVPixelBufferRelease(v5);
  }

  v6 = *(this + 36);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 25);
  *(this + 25) = 0;

  v8 = *(this + 24);
  *(this + 24) = 0;

  pthread_mutex_destroy(this + 2);
}

void H16ISP::TimeOfFlightAutoFocusAssistant::~TimeOfFlightAutoFocusAssistant(id *this)
{
  H16ISP::TimeOfFlightAutoFocusAssistant::deactivate(this);
}

uint64_t H16ISP::TimeOfFlightAutoFocusAssistant::deactivate(H16ISP::TimeOfFlightAutoFocusAssistant *this)
{
  result = H16ISP::H16ISPDevice::getSensorChannel(*this, 1785950322, 1852793709);
  *(this + 2) = result;
  *(this + 33) = 0;
  if (result != -1)
  {
    LOWORD(v3) = result;
    if (*(this + 88) == 1)
    {
      NSLog(&cfstr_Timeofflightau_2.isa, result, *(this + 32), 0, *(this + 9), 0);
      v3 = *(this + 2);
      v4 = *(this + 33);
    }

    else
    {
      v4 = 0;
    }

    H16ISP::H16ISPDevice::SetTOFControlMode(*this, v3, *(this + 32), v4 & 1, *(this + 9), 0);
    result = H16ISP::H16ISPServicesRemote::UpdateFlickerIRSignalRateHint(*(this + 2), 0.0, v5);
  }

  *(this + 5) = 0;
  return result;
}

void H16ISP::TimeOfFlightColorInfieldCalibrationManager::~TimeOfFlightColorInfieldCalibrationManager(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activateColor(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  v26 = *(this + 3);
  v29 = *(this + 4);
  v32 = *(this + 5);
  v35 = *(this + 6);
  v2 = [*(this + 25) peridotCamera];
  [v2 cameraToPlatformTransform];
  v24 = v4;
  v25 = v3;
  v22 = v6;
  v23 = v5;
  v7 = v35;
  HIDWORD(v7) = 1.0;
  v8 = v32;
  HIDWORD(v8) = 0;
  v33 = v8;
  v36 = v7;
  v9 = v29;
  HIDWORD(v9) = 0;
  v30 = v9;
  v10 = v26;
  HIDWORD(v10) = 0;
  v27 = v10;

  v11 = 0;
  v38[0] = v27;
  v38[1] = v30;
  v38[2] = v33;
  v38[3] = v36;
  do
  {
    *(&v39 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(v38[v11])), v24, *&v38[v11], 1), v23, v38[v11], 2), v22, v38[v11], 3);
    ++v11;
  }

  while (v11 != 4);
  v34 = *&v41;
  v37 = *&v42;
  v28 = *&v39;
  v31 = *&v40;
  v12 = objc_alloc(MEMORY[0x277D3A150]);
  LODWORD(v13) = *(this + 28);
  v14 = [v12 initWithPixelSize:*(this + 4) gdcModel:v13 cameraToPlatformTransform:{v28, v31, v34, v37}];
  v15 = *(this + 24);
  *(this + 24) = v14;

  v16 = *(this + 24);
  if (v16)
  {
    v17 = *(this + 58);
    if (v17 == 2 || v17 == 1 && (v18 = *(this + 52) - 66, v18 <= 0x20) && ((1 << v18) & 0x180000001) != 0)
    {
      H16ISP::TimeOfFlightAutoFocusAssistant::enableTeleDensification(*(this + 1), 1, v16);
      v16 = *(this + 24);
    }

    v19 = *this;
    v20 = *(this + 53);
    v21 = *(this + 25);

    H16ISP::TimeOfFlightColorInfieldCalibrationManager::activate(v19, v20, v16, v21);
  }
}

void H16ISP::TimeOfFlightAutoFocusAssistant::enableTeleDensification(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  *(a1 + 224) = a2;
  if (a2)
  {
    objc_storeStrong((a1 + 256), a3);
    v6 = objc_alloc_init(MEMORY[0x277CECFC8]);
    v7 = *(a1 + 248);
    *(a1 + 248) = v6;

    v8 = [*(a1 + 248) executorParameters];
    [v8 setAutoSetColorROI:1];

    [*(a1 + 248) prepare];
  }

  else
  {
    v9 = *(a1 + 256);
    *(a1 + 256) = 0;

    v10 = *(a1 + 248);
    *(a1 + 248) = 0;
  }
}

void H16ISP::TimeOfFlightColorInfieldCalibrationManager::activate(uint64_t a1, int a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  *(a1 + 20) = *(a1 + 16) != 0;
  *(a1 + 24) = a2;
  objc_storeStrong((a1 + 40), a3);
  objc_storeStrong((a1 + 32), a4);
  if (*(a1 + 108) == 1)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "general");
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;

      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 20);
      v14[0] = 67109120;
      v14[1] = v13;
      _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: active mode: %d\n", v14, 8u);
    }
  }
}

id GetCameraUserspaceLogStream()
{
  v0 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;

    v0 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  return v0;
}

void H16ISP::TimeOfFlightColorInfieldCalibrationManager::deactivate(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this)
{
  if (*(this + 108) == 1)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;

      v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: deactivate\n", v5, 2u);
    }
  }

  *(this + 20) = 0;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleAggregation(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 344) == 1)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;

      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: reached  handleAggregation\n", buf, 2u);
    }
  }

  v7 = [v3 matchedObjectsForStream:0];
  v8 = [v7 count];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  *buf = 0;
  v32 = buf;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer37TimeOfFlightColorSynchronizerInternal17handleAggregationEP17ADStreamSyncMatch_block_invoke;
  v18 = &unk_27853B848;
  v10 = v9;
  v19 = v10;
  v20 = buf;
  v21 = &v27;
  v22 = &v23;
  [v7 enumerateObjectsUsingBlock:&v15];
  v11 = *(v28 + 6);
  if (v11 >= 1)
  {
    *(v32 + 3) = *(v32 + 3) / v11;
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(v24 + 6);
    if (v13 >= 1)
    {
      H16ISP::TimeOfFlightAutoFocusAssistant::updateDecimationRate(v12, v13, *(a1 + 220));
    }
  }

  v14 = [*(a1 + 224) postProcessAllBanks:{v10, v15, v16, v17, v18}];
  objc_storeStrong((a1 + 312), v14);
  *(a1 + 328) = *(v32 + 3);
  *(a1 + 336) = 0;
  objc_storeStrong((a1 + 320), v7);
  H16ISP::NearEventComplianceHandler::handleEvent(*(a1 + 16), v14, *(v24 + 6), *(a1 + 220));
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleTofMatch(a1);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);
}

void sub_22496DF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 96), 8);

  _Unwind_Resume(a1);
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleInfieldMatch(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (a1[344] == 1)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;

      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: Got infield match\n", v13, 2u);
    }
  }

  if (*a1 && *(*a1 + 20) == 1)
  {
    v7 = [v3 matchedObjectsForStream:0];
    v8 = [v3 matchedObjectsForStream:1];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = *a1;
    v11 = [v9 data];
    v12 = [v9 metadata];
    H16ISP::TimeOfFlightColorInfieldCalibrationManager::handleMatch(v10, v11, v12, v7);
  }
}