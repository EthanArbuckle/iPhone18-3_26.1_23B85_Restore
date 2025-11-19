uint64_t vt_CopyDec_v216_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v68 = *MEMORY[0x1E69E9840];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  *&v48[32] = 0u;
  *&v48[16] = 0u;
  *v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  memset(v41, 0, sizeof(v41));
  v9 = a2[3];
  v40 = a2[2];
  v42[0] = vdupq_n_s64(1uLL);
  v42[1] = xmmword_18FECD0A0;
  v43 = 1;
  *&v48[8] = v42[0];
  *&v48[24] = xmmword_18FECD0C0;
  v67 = 0;
  *&v48[40] = 2;
  v11 = a2[4];
  v10 = a2[5];
  v12 = *a3;
  v13 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v42, a8, a7, v41);
  if (v9 >= 2)
  {
    v14 = 0;
    v15 = *&v41[0];
    v39 = v9 >> 1;
    v16 = a8[1];
    v17 = *(&v41[0] + 1);
    v18 = 2 * *a8;
    v19 = 2 * v13;
    v20 = *a8 + *&v41[0] + 1;
    v21 = ((4 * v11) & 0xFFFFFFFFFFFFFF8) + v13 * v10 + v12;
    v22 = v21 + v13 + 6;
    v23 = (v21 + 4);
    do
    {
      if (v40 >= 2)
      {
        v24 = 0;
        v25 = v23;
        v26 = v22;
        v27 = v20;
        v28 = v40 >> 1;
        do
        {
          v29 = (v15 + v24);
          v30 = (v17 + v24);
          v31 = *(v25 - 2);
          if (v31 >= 0xF000)
          {
            v31 = 61440;
          }

          if (v31 <= 0x1000)
          {
            v31 = 4096;
          }

          v32 = *(v25 - 1);
          if (v32 >= 0xEB00)
          {
            v32 = 60160;
          }

          if (v32 <= 0x1000)
          {
            v32 = 4096;
          }

          v33 = *v25;
          if (v33 >= 0xF000)
          {
            v33 = 61440;
          }

          if (v33 <= 0x1000)
          {
            v33 = 4096;
          }

          v34 = v25[1];
          if (v34 >= 0xEB00)
          {
            v34 = 60160;
          }

          if (v34 <= 0x1000)
          {
            v34 = 4096;
          }

          v35 = *(v26 - 2);
          if (v35 >= 0xEB00)
          {
            v35 = 60160;
          }

          if (v35 <= 0x1000)
          {
            v35 = 4096;
          }

          v37 = *v26;
          v26 += 4;
          v36 = v37;
          if (v37 >= 0xEB00)
          {
            v36 = 60160;
          }

          if (v36 <= 0x1000)
          {
            v36 = 4096;
          }

          *v29 = (-1016685 - v32 + (v32 << 8)) / 0xDB00;
          v29[1] = (-1016685 - v34 + (v34 << 8)) / 0xDB00;
          *(v27 - 1) = (-1016685 - v35 + (v35 << 8)) / 0xDB00;
          *v27 = (-1016685 - v36 + (v36 << 8)) / 0xDB00;
          v27 += 2;
          *v30 = (613566757 * ((-1015920 - v31 + (v31 << 8)) >> 13)) >> 32;
          v30[1] = (613566757 * ((-1015920 - v33 + (v33 << 8)) >> 13)) >> 32;
          v24 += 2;
          v25 += 4;
          --v28;
        }

        while (v28);
      }

      v15 += v18;
      v17 += v16;
      ++v14;
      v20 += v18;
      v22 += v19;
      v23 = (v23 + v19);
    }

    while (v14 != v39);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_x420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v70 = *MEMORY[0x1E69E9840];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  *&v50[32] = 0u;
  *&v50[16] = 0u;
  *v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  memset(v43, 0, sizeof(v43));
  v9 = a2[2];
  v10 = a2[3];
  v44[0] = vdupq_n_s64(1uLL);
  v44[1] = xmmword_18FECD180;
  v45 = 1;
  *&v50[8] = v44[0];
  *&v50[24] = xmmword_18FECD190;
  v69 = 0;
  *&v50[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v44, a8, a7, v43);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = *a8;
    v18 = a8[1];
    v19 = *(&v43[0] + 1);
    v20 = *&v43[0];
    v21 = 2 * *a8;
    v22 = 2 * v14;
    v23 = ((4 * v12) & 0xFFFFFFFFFFFFFF8) + v14 * v11 + v13 + 4;
    v24 = (v23 + v14);
    do
    {
      if (v9 >= 2)
      {
        v25 = 0;
        v26 = (v20 + v17);
        v27 = v24;
        v28 = v23;
        v29 = v9 >> 1;
        do
        {
          v30 = (v20 + v25);
          v31 = (v19 + v25);
          v32 = *(v27 - 2) + *(v28 - 2);
          v33 = v32 >> 1;
          if (v32 >> 1 >= 0xF000)
          {
            LOWORD(v33) = -4096;
          }

          v34 = *(v28 - 1);
          if (v34 >= 0xEB00)
          {
            v34 = 60160;
          }

          if (v34 <= 0x1000)
          {
            LOWORD(v34) = 4096;
          }

          v35 = *v27 + *v28;
          v36 = v35 >> 1;
          if (v35 >> 1 >= 0xF000)
          {
            LOWORD(v36) = -4096;
          }

          v37 = v28[1];
          if (v37 >= 0xEB00)
          {
            v37 = 60160;
          }

          if (v37 <= 0x1000)
          {
            LOWORD(v37) = 4096;
          }

          v38 = *(v27 - 1);
          if (v38 >= 0xEB00)
          {
            v38 = 60160;
          }

          if (v38 <= 0x1000)
          {
            LOWORD(v38) = 4096;
          }

          v39 = v27[1];
          if (v39 >= 0xEB00)
          {
            v39 = 60160;
          }

          if (v39 <= 0x1000)
          {
            LOWORD(v39) = 4096;
          }

          *v30 = (v34 + 32) & 0xFFC0;
          v30[1] = (v37 + 32) & 0xFFC0;
          *v26 = (v38 + 32) & 0xFFC0;
          v26[1] = (v39 + 32) & 0xFFC0;
          v40 = v33 & 0xFFC0;
          if (v32 < 0x2000)
          {
            v40 = 4096;
          }

          *v31 = v40;
          v41 = v36 & 0xFFC0;
          if (v35 < 0x2000)
          {
            v41 = 4096;
          }

          v31[1] = v41;
          v26 += 2;
          v25 += 4;
          v28 += 4;
          v27 += 4;
          --v29;
        }

        while (v29);
      }

      v20 += v21;
      v19 += v18;
      ++v15;
      v23 += v22;
      v24 = (v24 + v22);
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_x420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v68 = *MEMORY[0x1E69E9840];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  *&v48[32] = 0u;
  *&v48[16] = 0u;
  *v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  memset(v41, 0, sizeof(v41));
  v9 = a2[2];
  v10 = a2[3];
  v42[0] = vdupq_n_s64(1uLL);
  v42[1] = xmmword_18FECD180;
  v43 = 1;
  *&v48[8] = v42[0];
  *&v48[24] = xmmword_18FECD190;
  v67 = 0;
  *&v48[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v42, a8, a7, v41);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = *a8;
    v18 = a8[1];
    v19 = *(&v41[0] + 1);
    v20 = *&v41[0];
    v21 = 2 * *a8;
    v22 = 2 * v14;
    v23 = ((4 * v12) & 0xFFFFFFFFFFFFFF8) + v14 * v11 + v13;
    v24 = v23 + v14 + 6;
    v25 = (v23 + 4);
    do
    {
      if (v9 >= 2)
      {
        v26 = 0;
        v27 = (v20 + v17);
        v28 = v25;
        v29 = v24;
        v30 = v9 >> 1;
        do
        {
          v31 = (v20 + v26);
          v32 = (v19 + v26);
          v33 = *(v28 - 2);
          if (v33 >= 0xF000)
          {
            v33 = 61440;
          }

          if (v33 <= 0x1000)
          {
            LOWORD(v33) = 4096;
          }

          v34 = *(v28 - 1);
          if (v34 >= 0xEB00)
          {
            v34 = 60160;
          }

          if (v34 <= 0x1000)
          {
            LOWORD(v34) = 4096;
          }

          v35 = *v28;
          if (v35 >= 0xF000)
          {
            v35 = 61440;
          }

          if (v35 <= 0x1000)
          {
            LOWORD(v35) = 4096;
          }

          v36 = v28[1];
          if (v36 >= 0xEB00)
          {
            v36 = 60160;
          }

          if (v36 <= 0x1000)
          {
            LOWORD(v36) = 4096;
          }

          v37 = *(v29 - 2);
          if (v37 >= 0xEB00)
          {
            v37 = 60160;
          }

          if (v37 <= 0x1000)
          {
            LOWORD(v37) = 4096;
          }

          v39 = *v29;
          v29 += 4;
          v38 = v39;
          if (v39 >= 0xEB00)
          {
            v38 = 60160;
          }

          if (v38 <= 0x1000)
          {
            LOWORD(v38) = 4096;
          }

          *v31 = (v34 + 32) & 0xFFC0;
          v31[1] = (v36 + 32) & 0xFFC0;
          *v27 = (v37 + 32) & 0xFFC0;
          v27[1] = (v38 + 32) & 0xFFC0;
          *v32 = v33 & 0xFFC0;
          v32[1] = v35 & 0xFFC0;
          v27 += 2;
          v26 += 4;
          v28 += 4;
          --v30;
        }

        while (v30);
      }

      v20 += v21;
      v19 += v18;
      ++v15;
      v24 += v22;
      v25 = (v25 + v22);
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_xf20(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v74 = *MEMORY[0x1E69E9840];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  *&v54[32] = 0u;
  *&v54[16] = 0u;
  *v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  memset(v47, 0, sizeof(v47));
  v9 = a2[3];
  v46 = a2[2];
  v48[0] = vdupq_n_s64(1uLL);
  v48[1] = xmmword_18FECD180;
  v49 = 1;
  *&v54[8] = v48[0];
  *&v54[24] = xmmword_18FECD190;
  v73 = 0;
  *&v54[40] = 2;
  v11 = a2[4];
  v10 = a2[5];
  v12 = *a3;
  v13 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v48, a8, a7, v47);
  if (v9 >= 2)
  {
    v14 = 0;
    v15 = *&v47[0];
    v45 = v9 >> 1;
    v44 = a8[1];
    v16 = *(&v47[0] + 1);
    v43 = *a8;
    v17 = 2 * *a8;
    v18 = 2 * v13;
    v19 = ((4 * v11) & 0xFFFFFFFFFFFFFF8) + v13 * v10 + v12 + 4;
    v20 = (v19 + v13);
    do
    {
      if (v46 >= 2)
      {
        v21 = 0;
        v22 = v46 >> 1;
        v23 = (v15 + v43);
        v24 = v20;
        v25 = v19;
        do
        {
          v26 = (v15 + v21);
          v27 = *(v24 - 2) + *(v25 - 2);
          if (v27 >> 1 >= 0xF000)
          {
            v28 = 61440;
          }

          else
          {
            v28 = v27 >> 1;
          }

          v29 = *(v25 - 1);
          if (v29 >= 0xEB00)
          {
            v29 = 60160;
          }

          if (v29 <= 0x1000)
          {
            v30 = 4096;
          }

          else
          {
            v30 = v29;
          }

          v31 = *v24 + *v25;
          v32 = v31 >> 1;
          v33 = v25[1];
          if (v31 >> 1 >= 0xF000)
          {
            v32 = 61440;
          }

          if (v33 >= 0xEB00)
          {
            v33 = 60160;
          }

          if (v33 <= 0x1000)
          {
            v34 = 4096;
          }

          else
          {
            v34 = v33;
          }

          v35 = *(v24 - 1);
          if (v35 >= 0xEB00)
          {
            v35 = 60160;
          }

          if (v35 <= 0x1000)
          {
            v36 = 4096;
          }

          else
          {
            v36 = v35;
          }

          v37 = v24[1];
          v38 = (v16 + v21);
          if (v37 >= 0xEB00)
          {
            v37 = 60160;
          }

          v39 = 19611723 * ((65472 * v30 - 268173312) >> 8);
          if (v37 <= 0x1000)
          {
            v37 = 4096;
          }

          *v26 = (WORD2(v39) + 32) & 0xFFC0;
          v26[1] = ((65472 * v34 - 268173312) / 0xDB00u + 32) & 0xFFC0;
          *v23 = ((65472 * v36 - 268173312) / 0xDB00u + 32) & 0xFFC0;
          v40 = (((613566757 * ((65472 * v28 - 268173312) >> 13)) >> 32) + 32) & 0xFFC0;
          if (v27 < 0x2000)
          {
            v40 = 0;
          }

          v23[1] = ((65472 * v37 - 268173312) / 0xDB00 + 32) & 0xFFC0;
          v41 = (((613566757 * ((65472 * v32 - 268173312) >> 13)) >> 32) + 32) & 0xFFC0;
          if (v31 < 0x2000)
          {
            v41 = 0;
          }

          *v38 = v40;
          v38[1] = v41;
          v23 += 2;
          v21 += 4;
          v25 += 4;
          v24 += 4;
          --v22;
        }

        while (v22);
      }

      v15 += v17;
      v16 += v44;
      ++v14;
      v19 += v18;
      v20 = (v20 + v18);
    }

    while (v14 != v45);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_xf20(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  *&v49[32] = 0u;
  *&v49[16] = 0u;
  *v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  memset(v42, 0, sizeof(v42));
  v9 = a2[3];
  v41 = a2[2];
  v43[0] = vdupq_n_s64(1uLL);
  v43[1] = xmmword_18FECD180;
  v44 = 1;
  *&v49[8] = v43[0];
  *&v49[24] = xmmword_18FECD190;
  v68 = 0;
  *&v49[40] = 2;
  v11 = a2[4];
  v10 = a2[5];
  v12 = *a3;
  v13 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v43, a8, a7, v42);
  if (v9 >= 2)
  {
    v14 = 0;
    v15 = *&v42[0];
    v16 = v9 >> 1;
    v17 = a8[1];
    v18 = *(&v42[0] + 1);
    v40 = *a8;
    v19 = 2 * *a8;
    v20 = 2 * v13;
    v21 = ((4 * v11) & 0xFFFFFFFFFFFFFF8) + v13 * v10 + v12;
    v22 = v21 + v13 + 6;
    v23 = (v21 + 4);
    do
    {
      if (v41 >= 2)
      {
        v24 = 0;
        v25 = v41 >> 1;
        v26 = (v15 + v40);
        v27 = v23;
        v28 = v22;
        do
        {
          v29 = (v15 + v24);
          v30 = *(v27 - 2);
          if (v30 >= 0xF000)
          {
            v30 = 61440;
          }

          v31 = *(v27 - 1);
          if (v30 <= 0x1000)
          {
            v30 = 4096;
          }

          if (v31 >= 0xEB00)
          {
            v31 = 60160;
          }

          if (v31 <= 0x1000)
          {
            v32 = 4096;
          }

          else
          {
            v32 = v31;
          }

          v33 = *v27;
          if (v33 >= 0xF000)
          {
            v33 = 61440;
          }

          if (v33 <= 0x1000)
          {
            v33 = 4096;
          }

          v34 = v27[1];
          if (v34 >= 0xEB00)
          {
            v34 = 60160;
          }

          if (v34 <= 0x1000)
          {
            v34 = 4096;
          }

          v35 = *(v28 - 2);
          if (v35 >= 0xEB00)
          {
            v35 = 60160;
          }

          if (v35 <= 0x1000)
          {
            v35 = 4096;
          }

          v37 = *v28;
          v28 += 4;
          v36 = v37;
          if (v37 >= 0xEB00)
          {
            v36 = 60160;
          }

          v38 = (v18 + v24);
          if (v36 <= 0x1000)
          {
            v36 = 4096;
          }

          *v29 = ((65472 * v32 - 268173312) / 0xDB00u + 32) & 0xFFC0;
          v29[1] = ((65472 * v34 - 268173312) / 0xDB00 + 32) & 0xFFC0;
          *v26 = ((65472 * v35 - 268173312) / 0xDB00 + 32) & 0xFFC0;
          v26[1] = ((65472 * v36 - 268173312) / 0xDB00 + 32) & 0xFFC0;
          *v38 = (((613566757 * ((65472 * v30 - 268173312) >> 13)) >> 32) + 32) & 0xFFC0;
          v38[1] = (((613566757 * ((65472 * v33 - 268173312) >> 13)) >> 32) + 32) & 0xFFC0;
          v26 += 2;
          v24 += 4;
          v27 += 4;
          --v25;
        }

        while (v25);
      }

      v15 += v19;
      v18 += v17;
      ++v14;
      v22 += v20;
      v23 = (v23 + v20);
    }

    while (v14 != v16);
  }

  return 0;
}

vImage_Error vt_VImage_Setup_v216_32BGRA(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v23 = 0uLL;
  v24 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&v18 = 0xFFFFLL;
  *(&v18 + 1) = 0xFFFFLL;
  *&pixelRange.Yp_bias = xmmword_18FECD160;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v23 = xmmword_18FECD070;
      v21 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v23 = xmmword_18FECD080;
      v21 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v23 = xmmword_18FECD090;
      v21 = 1072746935;
    }

    v24 = v21;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v23;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CbYpCrYp16, kvImageARGB8888, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_v216_32BGRA;
  *a11 = vt_VImage_Cleanup_v216_32BGRA;
  *a8 = v17;
  return result;
}

vImage_Error vt_VImage_Setup_v216_32ARGB(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v23 = 0uLL;
  v24 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&v18 = 0xFFFFLL;
  *(&v18 + 1) = 0xFFFFLL;
  *&pixelRange.Yp_bias = xmmword_18FECD160;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v23 = xmmword_18FECD070;
      v21 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v23 = xmmword_18FECD080;
      v21 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v23 = xmmword_18FECD090;
      v21 = 1072746935;
    }

    v24 = v21;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v23;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CbYpCrYp16, kvImageARGB8888, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_v216_32ARGB;
  *a11 = vt_VImage_Cleanup_v216_32ARGB;
  *a8 = v17;
  return result;
}

vImage_Error vt_VImage_Setup_v216_l64r(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v23 = 0uLL;
  v24 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&v18 = 0xFFFFLL;
  *(&v18 + 1) = 0xFFFFLL;
  *&pixelRange.Yp_bias = xmmword_18FECD160;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v23 = xmmword_18FECD070;
      v21 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v23 = xmmword_18FECD080;
      v21 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v23 = xmmword_18FECD090;
      v21 = 1072746935;
    }

    v24 = v21;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v23;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CbYpCrYp16, kvImageARGB16U, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_v216_l64r;
  *a11 = vt_VImage_Cleanup_v216_l64r;
  *a8 = v17;
  return result;
}

vImage_Error vt_VImage_Setup_v216_RGhA(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v23 = 0uLL;
  v24 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&v18 = 0xFFFFLL;
  *(&v18 + 1) = 0xFFFFLL;
  *&pixelRange.Yp_bias = xmmword_18FECD160;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v23 = xmmword_18FECD070;
      v21 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v23 = xmmword_18FECD080;
      v21 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v23 = xmmword_18FECD090;
      v21 = 1072746935;
    }

    v24 = v21;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v23;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CbYpCrYp16, kvImageARGB16U, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_v216_RGhA;
  *a11 = vt_VImage_Cleanup_v216_RGhA;
  *a8 = v17;
  return result;
}

uint64_t vt_Copy_v216_s4as(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v12 = a8[1];
    v11 = a8[2];
    v13 = *a8;
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v12 * v14;
    v17 = a7[2] + v11 * v14;
    v18 = *a7 + *a8 * v14;
    v19 = *a4;
    v20 = v16 + 4 * v15;
    v21 = v17 + 2 * v15;
    v22 = v18 + 2 * v15;
    v23 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v24 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v26 = (v22 + 2 * i);
          v27 = (v20 + v24);
          *(v21 + 2 * i) = -1;
          v28 = *(v23 + v24);
          v29 = *(v23 + v24 + 4);
          *v27 = v28;
          v27[1] = v29;
          v27[2] = v28;
          v27[3] = v29;
          v30 = *(v23 + v24 + 6);
          *v26 = *(v23 + v24 + 2);
          v26[1] = v30;
          v24 += 8;
        }
      }

      v23 += v19;
      v22 += v13;
      v20 += v12;
      v21 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_sv44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a8;
    v12 = a8[1];
    v14 = a6[4];
    v13 = a6[5];
    v15 = a7[1] + v12 * v13;
    v16 = *a7 + *a8 * v13;
    v17 = *a4;
    v18 = v15 + 4 * v14;
    v19 = v16 + 2 * v14;
    v20 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v21 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v23 = (v19 + 2 * i);
          v24 = (v18 + v21);
          v25 = *(v20 + v21);
          v26 = *(v20 + v21 + 4);
          *v24 = v25;
          v24[1] = v26;
          v24[2] = v25;
          v24[3] = v26;
          v27 = *(v20 + v21 + 6);
          *v23 = *(v20 + v21 + 2);
          v23[1] = v27;
          v21 += 8;
        }
      }

      v20 += v17;
      v19 += v11;
      v18 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_sf44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a4;
    v12 = *a8;
    v13 = a8[1];
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v13 * v14 + 4 * v15;
    v17 = *a7 + *a8 * v14 + 2 * v15;
    v18 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v19 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v21 = (v18 + v19);
          v22 = *(v18 + v19);
          if (v22 >= 0xF000)
          {
            v22 = 61440;
          }

          if (v22 <= 0x1000)
          {
            v22 = 4096;
          }

          v23 = v21[2];
          if (v23 >= 0xF000)
          {
            v23 = 61440;
          }

          v24 = (v16 + v19);
          if (v23 <= 0x1000)
          {
            v23 = 4096;
          }

          v25 = (613566757 * ((-268431360 - v22 + (v22 << 16)) >> 13)) >> 32;
          v26 = (613566757 * ((-268431360 - v23 + (v23 << 16)) >> 13)) >> 32;
          *v24 = v25;
          v24[1] = v26;
          v24[2] = v25;
          v24[3] = v26;
          v27 = v21[1];
          if (v27 >= 0xEB00)
          {
            v27 = 60160;
          }

          if (v27 <= 0x1000)
          {
            v27 = 4096;
          }

          v28 = v21[3];
          v29 = (v17 + 2 * i);
          if (v28 >= 0xEB00)
          {
            v28 = 60160;
          }

          if (v28 <= 0x1000)
          {
            v28 = 4096;
          }

          *v29 = (-268431360 - v27 + (v27 << 16)) / 0xDB00;
          v29[1] = (-268431360 - v28 + (v28 << 16)) / 0xDB00;
          v19 += 8;
        }
      }

      v18 += v11;
      v17 += v12;
      v16 += v13;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = a8[2];
    v18 = a7[2] + v17 * v15;
    v19 = *a7 + *a8 * v15;
    v20 = *a4;
    v21 = v18 + 2 * v10;
    v22 = v19 + 2 * v10;
    v23 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    do
    {
      if (v11)
      {
        v24 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v26 = (v22 + 2 * i);
          *(v21 + 2 * i) = -1;
          v27 = (v16 + 2 * i);
          v28 = *(v23 + v24 + 4);
          *v27 = *(v23 + v24);
          v27[1] = v28;
          v29 = *(v23 + v24 + 6);
          *v26 = *(v23 + v24 + 2);
          v26[1] = v29;
          v24 += 8;
        }
      }

      v23 += v20;
      v22 += v13;
      v16 += v14;
      v21 += v17;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = *a4;
    v18 = *a7 + *a8 * v15 + 2 * v10;
    v19 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    do
    {
      if (v11)
      {
        v20 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v22 = (v18 + 2 * i);
          v23 = (v16 + 2 * i);
          v24 = *(v19 + v20 + 4);
          *v23 = *(v19 + v20);
          v23[1] = v24;
          v25 = *(v19 + v20 + 6);
          *v22 = *(v19 + v20 + 2);
          v22[1] = v25;
          v20 += 8;
        }
      }

      v19 += v17;
      v18 += v13;
      v16 += v14;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a4;
    v14 = *a8;
    v15 = a8[1];
    v16 = *(a6 + 40);
    v17 = 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v18 = *a7 + *a8 * v16 + 2 * v10;
    v19 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    v20 = a7[1] + v15 * v16 + v17;
    do
    {
      if (v11)
      {
        v21 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v23 = (v19 + v21);
          v24 = (v20 + 2 * i);
          v25 = *(v19 + v21);
          if (v25 >= 0xF000)
          {
            v25 = 61440;
          }

          v26 = v23[2];
          if (v25 <= 0x1000)
          {
            v25 = 4096;
          }

          if (v26 >= 0xF000)
          {
            v26 = 61440;
          }

          if (v26 <= 0x1000)
          {
            v26 = 4096;
          }

          *v24 = (613566757 * ((-268431360 - v25 + (v25 << 16)) >> 13)) >> 32;
          v24[1] = (613566757 * ((-268431360 - v26 + (v26 << 16)) >> 13)) >> 32;
          v27 = v23[1];
          if (v27 >= 0xEB00)
          {
            v27 = 60160;
          }

          if (v27 <= 0x1000)
          {
            v27 = 4096;
          }

          v28 = v23[3];
          v29 = (v18 + 2 * i);
          if (v28 >= 0xEB00)
          {
            v28 = 60160;
          }

          if (v28 <= 0x1000)
          {
            v28 = 4096;
          }

          *v29 = (-268431360 - v27 + (v27 << 16)) / 0xDB00;
          v29[1] = (-268431360 - v28 + (v28 << 16)) / 0xDB00;
          v21 += 8;
        }
      }

      v19 += v13;
      v18 += v14;
      v20 += v15;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 40);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v11 = (v8 & 1) + v8;
  v12 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v13 = (*(a6 + 32) & 1) + *(a6 + 32);
  v14 = (*(a6 + 40) & 1) + *(a6 + 40);
  v15 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v16 = v10 - v9;
  if (v16 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13)
  {
    v16 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13;
  }

  v17 = v12 - v11;
  if (v17 >= v15 - v14)
  {
    v17 = v15 - v14;
  }

  if (v17)
  {
    v18 = 0;
    v19 = *a8;
    v20 = a8[1];
    v21 = a7[1] + ((v20 * v14) >> 1) + 2 * (v13 & 0x3FFFFFFFFFFFFFFFLL);
    v22 = *a4;
    v23 = *a7 + *a8 * v14 + 2 * v13;
    v24 = v22 + v22 * (v8 + (v8 & 1)) + 2 * v9 + *a3 + 4;
    v25 = *a4 * v11 + 2 * v9 + *a3 + 4;
    do
    {
      if (v16)
      {
        v26 = 0;
        v27 = v25;
        v28 = v24;
        v29 = v21;
        do
        {
          if ((v18 & 1) == 0)
          {
            v30 = (*v27 + *v28 + 1) >> 1;
            *v29 = (*(v27 - 2) + *(v28 - 2) + 1) >> 1;
            v29[1] = v30;
            v29 += 2;
          }

          v31 = (v23 + 2 * v26);
          v32 = v27[1];
          *v31 = *(v27 - 1);
          v31[1] = v32;
          v26 += 2;
          v28 += 4;
          v27 += 4;
        }

        while (v26 < v16);
      }

      v23 += v19;
      if (v18)
      {
        v33 = 0;
      }

      else
      {
        v33 = v20;
      }

      v21 += v33;
      ++v18;
      v24 += v22;
      v25 += v22;
    }

    while (v18 != v17);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = (*(a2 + 40) & 1) + *(a2 + 40);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = (*(a6 + 40) & 1) + *(a6 + 40);
  v12 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v13 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v8;
  if (v13 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v13 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  v14 = ((*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE) - v9;
  if (v14 >= v12 - v11)
  {
    v14 = v12 - v11;
  }

  if (v14)
  {
    v15 = 0;
    v16 = *a8;
    v17 = a8[1];
    v18 = a7[1] + ((v17 * v11) >> 1) + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v19 = *a4;
    v20 = *a7 + *a8 * v11 + 2 * v10;
    v21 = *a4 * v9 + 2 * v8 + *a3 + 4;
    do
    {
      if (v13)
      {
        v22 = 0;
        v23 = v21;
        v24 = v18;
        do
        {
          if ((v15 & 1) == 0)
          {
            v25 = *v23;
            *v24 = *(v23 - 2);
            v24[1] = v25;
            v24 += 2;
          }

          v26 = (v20 + 2 * v22);
          v27 = v23[1];
          *v26 = *(v23 - 1);
          v26[1] = v27;
          v22 += 2;
          v23 += 4;
        }

        while (v22 < v13);
      }

      v20 += v16;
      if (v15)
      {
        v28 = 0;
      }

      else
      {
        v28 = v17;
      }

      v18 += v28;
      ++v15;
      v21 += v19;
    }

    while (v15 != v14);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 40);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v11 = (v8 & 1) + v8;
  v12 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v13 = (*(a6 + 32) & 1) + *(a6 + 32);
  v14 = (*(a6 + 40) & 1) + *(a6 + 40);
  v15 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v16 = v10 - v9;
  if (v16 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13)
  {
    v16 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13;
  }

  v17 = v12 - v11;
  if (v17 >= v15 - v14)
  {
    v17 = v15 - v14;
  }

  if (v17)
  {
    v18 = 0;
    v19 = *a4;
    v20 = *a8;
    v21 = a8[1];
    v22 = a7[1] + ((v21 * v14) >> 1) + 2 * (v13 & 0x3FFFFFFFFFFFFFFFLL);
    v23 = *a7 + *a8 * v14 + 2 * v13;
    v24 = v19 + v19 * (v8 + (v8 & 1)) + 2 * v9 + *a3 + 4;
    v25 = *a4 * v11 + 2 * v9 + *a3 + 4;
    do
    {
      if (v16)
      {
        v26 = 0;
        v27 = v25;
        v28 = v24;
        v29 = v22;
        do
        {
          if ((v18 & 1) == 0)
          {
            v30 = *(v27 - 2);
            v31 = *(v28 - 2);
            if (v30 >= 0xF000)
            {
              v30 = 61440;
            }

            if (v30 <= 0x1000)
            {
              v30 = 4096;
            }

            if (v31 >= 0xF000)
            {
              v31 = 61440;
            }

            if (v31 <= 0x1000)
            {
              v31 = 4096;
            }

            v32 = *v27;
            v33 = *v28;
            if (v32 >= 0xF000)
            {
              v32 = 61440;
            }

            if (v32 <= 0x1000)
            {
              v32 = 4096;
            }

            if (v33 >= 0xF000)
            {
              v33 = 61440;
            }

            if (v33 <= 0x1000)
            {
              v33 = 4096;
            }

            *v29 = (((613566757 * ((-268431360 - v30 + (v30 << 16)) >> 13)) >> 32) + ((613566757 * ((-268431360 - v31 + (v31 << 16)) >> 13)) >> 32) + 1) >> 1;
            v29[1] = (((613566757 * ((-268431360 - v32 + (v32 << 16)) >> 13)) >> 32) + ((613566757 * ((-268431360 - v33 + (v33 << 16)) >> 13)) >> 32) + 1) >> 1;
            v29 += 2;
          }

          v34 = (v23 + 2 * v26);
          v35 = *(v27 - 1);
          if (v35 >= 0xEB00)
          {
            v35 = 60160;
          }

          if (v35 <= 0x1000)
          {
            v35 = 4096;
          }

          v36 = v27[1];
          if (v36 >= 0xEB00)
          {
            v36 = 60160;
          }

          if (v36 <= 0x1000)
          {
            v36 = 4096;
          }

          *v34 = (-268431360 - v35 + (v35 << 16)) / 0xDB00;
          v34[1] = (-268431360 - v36 + (v36 << 16)) / 0xDB00;
          v26 += 2;
          v28 += 4;
          v27 += 4;
        }

        while (v26 < v16);
      }

      v23 += v20;
      if (v18)
      {
        v37 = 0;
      }

      else
      {
        v37 = v21;
      }

      v22 += v37;
      ++v18;
      v24 += v19;
      v25 += v19;
    }

    while (v18 != v17);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v10 = (*(a2 + 40) & 1) + *(a2 + 40);
  v11 = (*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE;
  v12 = (*(a6 + 32) & 1) + *(a6 + 32);
  v13 = (*(a6 + 40) & 1) + *(a6 + 40);
  v14 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v15 = v9 - v8;
  if (v15 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12)
  {
    v15 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12;
  }

  v16 = v11 - v10;
  if (v16 >= v14 - v13)
  {
    v16 = v14 - v13;
  }

  if (v16)
  {
    v17 = 0;
    v18 = *a4;
    v19 = *a8;
    v20 = a8[1];
    v21 = a7[1] + ((v20 * v13) >> 1) + 2 * (v12 & 0x3FFFFFFFFFFFFFFFLL);
    v22 = *a7 + *a8 * v13 + 2 * v12;
    v23 = *a4 * v10 + 2 * v8 + *a3 + 4;
    do
    {
      if (v15)
      {
        v24 = 0;
        v25 = v23;
        v26 = v21;
        do
        {
          if ((v17 & 1) == 0)
          {
            v27 = *(v25 - 2);
            if (v27 >= 0xF000)
            {
              v27 = 61440;
            }

            if (v27 <= 0x1000)
            {
              v27 = 4096;
            }

            v28 = *v25;
            if (v28 >= 0xF000)
            {
              v28 = 61440;
            }

            if (v28 <= 0x1000)
            {
              v28 = 4096;
            }

            *v26 = (613566757 * ((-268431360 - v27 + (v27 << 16)) >> 13)) >> 32;
            v26[1] = (613566757 * ((-268431360 - v28 + (v28 << 16)) >> 13)) >> 32;
            v26 += 2;
          }

          v29 = (v22 + 2 * v24);
          v30 = *(v25 - 1);
          if (v30 >= 0xEB00)
          {
            v30 = 60160;
          }

          if (v30 <= 0x1000)
          {
            v30 = 4096;
          }

          v31 = v25[1];
          if (v31 >= 0xEB00)
          {
            v31 = 60160;
          }

          if (v31 <= 0x1000)
          {
            v31 = 4096;
          }

          *v29 = (-268431360 - v30 + (v30 << 16)) / 0xDB00;
          v29[1] = (-268431360 - v31 + (v31 << 16)) / 0xDB00;
          v24 += 2;
          v25 += 4;
        }

        while (v24 < v15);
      }

      v22 += v19;
      if (v17)
      {
        v32 = 0;
      }

      else
      {
        v32 = v20;
      }

      v21 += v32;
      ++v17;
      v23 += v18;
    }

    while (v17 != v16);
  }

  return 0;
}

uint64_t vt_Copy_v216_t4as(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v12 = a8[1];
    v11 = a8[2];
    v13 = *a8;
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v12 * v14;
    v17 = a7[2] + v11 * v14;
    v18 = *a7 + *a8 * v14;
    v19 = *a4;
    v20 = v16 + 4 * v15;
    v21 = v17 + 2 * v15;
    v22 = v18 + 2 * v15;
    v23 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v24 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v26 = (v22 + 2 * i);
          *(v21 + 2 * i) = -1;
          v27 = (v20 + v24);
          v28 = *(v23 + v24) & 0xFFF0;
          v29 = *(v23 + v24 + 4) & 0xFFF0;
          *v27 = v28;
          v27[1] = v29;
          v27[2] = v28;
          v27[3] = v29;
          v30 = *(v23 + v24 + 6) & 0xFFF0;
          *v26 = *(v23 + v24 + 2) & 0xFFF0;
          v26[1] = v30;
          v24 += 8;
        }
      }

      v23 += v19;
      v22 += v13;
      v20 += v12;
      v21 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_tv44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a8;
    v12 = a8[1];
    v14 = a6[4];
    v13 = a6[5];
    v15 = a7[1] + v12 * v13;
    v16 = *a7 + *a8 * v13;
    v17 = *a4;
    v18 = v15 + 4 * v14;
    v19 = v16 + 2 * v14;
    v20 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v21 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v23 = (v19 + 2 * i);
          v24 = (v18 + v21);
          v25 = *(v20 + v21) & 0xFFF0;
          v26 = *(v20 + v21 + 4) & 0xFFF0;
          *v24 = v25;
          v24[1] = v26;
          v24[2] = v25;
          v24[3] = v26;
          v27 = *(v20 + v21 + 6) & 0xFFF0;
          *v23 = *(v20 + v21 + 2) & 0xFFF0;
          v23[1] = v27;
          v21 += 8;
        }
      }

      v20 += v17;
      v19 += v11;
      v18 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_tf44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a4;
    v12 = *a8;
    v13 = a8[1];
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v13 * v14 + 4 * v15;
    v17 = *a7 + *a8 * v14 + 2 * v15;
    v18 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v19 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v21 = (v18 + v19);
          v22 = (v16 + v19);
          v23 = *(v18 + v19);
          if (v23 >= 0xF000)
          {
            v23 = 61440;
          }

          v24 = v21[2];
          if (v23 <= 0x1000)
          {
            v23 = 4096;
          }

          if (v24 >= 0xF000)
          {
            v24 = 61440;
          }

          if (v24 <= 0x1000)
          {
            v24 = 4096;
          }

          v25 = 16 * ((613566757 * ((-16773120 - v23 + (v23 << 12)) >> 13)) >> 32);
          *v22 = v25;
          v26 = 16 * ((613566757 * ((-16773120 - v24 + (v24 << 12)) >> 13)) >> 32);
          v22[1] = v26;
          v22[2] = v25;
          v22[3] = v26;
          v27 = v21[1];
          if (v27 >= 0xEB00)
          {
            v27 = 60160;
          }

          if (v27 <= 0x1000)
          {
            v27 = 4096;
          }

          v28 = v21[3];
          if (v28 >= 0xEB00)
          {
            v28 = 60160;
          }

          v29 = (v17 + 2 * i);
          if (v28 <= 0x1000)
          {
            v28 = 4096;
          }

          *v29 = 16 * ((-16773120 - v27 + (v27 << 12)) / 0xDB00);
          v29[1] = 16 * ((-16773120 - v28 + (v28 << 12)) / 0xDB00);
          v19 += 8;
        }
      }

      v18 += v11;
      v17 += v12;
      v16 += v13;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = a8[2];
    v18 = a7[2] + v17 * v15;
    v19 = *a7 + *a8 * v15;
    v20 = *a4;
    v21 = v18 + 2 * v10;
    v22 = v19 + 2 * v10;
    v23 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    do
    {
      if (v11)
      {
        v24 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v26 = (v22 + 2 * i);
          v27 = (v16 + 2 * i);
          *(v21 + 2 * i) = -1;
          v28 = *(v23 + v24 + 4) & 0xFFF0;
          *v27 = *(v23 + v24) & 0xFFF0;
          v27[1] = v28;
          v29 = *(v23 + v24 + 6) & 0xFFF0;
          *v26 = *(v23 + v24 + 2) & 0xFFF0;
          v26[1] = v29;
          v24 += 8;
        }
      }

      v23 += v20;
      v22 += v13;
      v16 += v14;
      v21 += v17;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = *a4;
    v18 = *a7 + *a8 * v15 + 2 * v10;
    v19 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    do
    {
      if (v11)
      {
        v20 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v22 = (v18 + 2 * i);
          v23 = (v16 + 2 * i);
          v24 = *(v19 + v20 + 4) & 0xFFF0;
          *v23 = *(v19 + v20) & 0xFFF0;
          v23[1] = v24;
          v25 = *(v19 + v20 + 6) & 0xFFF0;
          *v22 = *(v19 + v20 + 2) & 0xFFF0;
          v22[1] = v25;
          v20 += 8;
        }
      }

      v19 += v17;
      v18 += v13;
      v16 += v14;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a4;
    v14 = *a8;
    v15 = a8[1];
    v16 = *(a6 + 40);
    v17 = 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v18 = *a7 + *a8 * v16 + 2 * v10;
    v19 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    v20 = a7[1] + v15 * v16 + v17;
    do
    {
      if (v11)
      {
        v21 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v23 = (v19 + v21);
          v24 = *(v19 + v21);
          if (v24 >= 0xF000)
          {
            v24 = 61440;
          }

          if (v24 <= 0x1000)
          {
            v24 = 4096;
          }

          v25 = v23[2];
          if (v25 >= 0xF000)
          {
            v25 = 61440;
          }

          if (v25 <= 0x1000)
          {
            v25 = 4096;
          }

          v26 = (v20 + 2 * i);
          *v26 = 16 * ((613566757 * ((-16773120 - v24 + (v24 << 12)) >> 13)) >> 32);
          v26[1] = 16 * ((613566757 * ((-16773120 - v25 + (v25 << 12)) >> 13)) >> 32);
          v27 = v23[1];
          if (v27 >= 0xEB00)
          {
            v27 = 60160;
          }

          if (v27 <= 0x1000)
          {
            v27 = 4096;
          }

          v28 = v23[3];
          if (v28 >= 0xEB00)
          {
            v28 = 60160;
          }

          v29 = (v18 + 2 * i);
          if (v28 <= 0x1000)
          {
            v28 = 4096;
          }

          *v29 = 16 * ((-16773120 - v27 + (v27 << 12)) / 0xDB00);
          v29[1] = 16 * ((-16773120 - v28 + (v28 << 12)) / 0xDB00);
          v21 += 8;
        }
      }

      v19 += v13;
      v18 += v14;
      v20 += v15;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 40);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v11 = (v8 & 1) + v8;
  v12 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v13 = (*(a6 + 32) & 1) + *(a6 + 32);
  v14 = (*(a6 + 40) & 1) + *(a6 + 40);
  v15 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v16 = v10 - v9;
  if (v16 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13)
  {
    v16 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13;
  }

  v17 = v12 - v11;
  if (v17 >= v15 - v14)
  {
    v17 = v15 - v14;
  }

  if (v17)
  {
    v18 = 0;
    v19 = *a8;
    v20 = a8[1];
    v21 = a7[1] + ((v20 * v14) >> 1) + 2 * (v13 & 0x3FFFFFFFFFFFFFFFLL);
    v22 = *a4;
    v23 = *a7 + *a8 * v14 + 2 * v13;
    v24 = v22 + v22 * (v8 + (v8 & 1)) + 2 * v9 + *a3 + 4;
    v25 = *a4 * v11 + 2 * v9 + *a3 + 4;
    do
    {
      if (v16)
      {
        v26 = 0;
        v27 = v25;
        v28 = v24;
        v29 = v21;
        do
        {
          if ((v18 & 1) == 0)
          {
            v30 = *v27;
            v31 = *v28 >> 4;
            *v29 = (8 * ((*(v28 - 2) >> 4) + (*(v27 - 2) >> 4)) + 8) & 0xFFF0;
            v29[1] = (8 * (v31 + (v30 >> 4)) + 8) & 0xFFF0;
            v29 += 2;
          }

          v32 = (v23 + 2 * v26);
          v33 = v27[1] & 0xFFF0;
          *v32 = *(v27 - 1) & 0xFFF0;
          v32[1] = v33;
          v26 += 2;
          v28 += 4;
          v27 += 4;
        }

        while (v26 < v16);
      }

      v23 += v19;
      if (v18)
      {
        v34 = 0;
      }

      else
      {
        v34 = v20;
      }

      v21 += v34;
      ++v18;
      v24 += v22;
      v25 += v22;
    }

    while (v18 != v17);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = (*(a2 + 40) & 1) + *(a2 + 40);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = (*(a6 + 40) & 1) + *(a6 + 40);
  v12 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v13 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v8;
  if (v13 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v13 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  v14 = ((*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE) - v9;
  if (v14 >= v12 - v11)
  {
    v14 = v12 - v11;
  }

  if (v14)
  {
    v15 = 0;
    v16 = *a8;
    v17 = a8[1];
    v18 = a7[1] + ((v17 * v11) >> 1) + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v19 = *a4;
    v20 = *a7 + *a8 * v11 + 2 * v10;
    v21 = *a4 * v9 + 2 * v8 + *a3 + 4;
    do
    {
      if (v13)
      {
        v22 = 0;
        v23 = v21;
        v24 = v18;
        do
        {
          if ((v15 & 1) == 0)
          {
            v25 = *v23 & 0xFFF0;
            *v24 = *(v23 - 2) & 0xFFF0;
            v24[1] = v25;
            v24 += 2;
          }

          v26 = (v20 + 2 * v22);
          v27 = v23[1] & 0xFFF0;
          *v26 = *(v23 - 1) & 0xFFF0;
          v26[1] = v27;
          v22 += 2;
          v23 += 4;
        }

        while (v22 < v13);
      }

      v20 += v16;
      if (v15)
      {
        v28 = 0;
      }

      else
      {
        v28 = v17;
      }

      v18 += v28;
      ++v15;
      v21 += v19;
    }

    while (v15 != v14);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 40);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v11 = (v8 & 1) + v8;
  v12 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v13 = (*(a6 + 32) & 1) + *(a6 + 32);
  v14 = (*(a6 + 40) & 1) + *(a6 + 40);
  v15 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v16 = v10 - v9;
  if (v16 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13)
  {
    v16 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13;
  }

  v17 = v12 - v11;
  if (v17 >= v15 - v14)
  {
    v17 = v15 - v14;
  }

  if (v17)
  {
    v18 = 0;
    v19 = *a4;
    v20 = *a8;
    v21 = a8[1];
    v22 = a7[1] + ((v21 * v14) >> 1) + 2 * (v13 & 0x3FFFFFFFFFFFFFFFLL);
    v23 = *a7 + *a8 * v14 + 2 * v13;
    v24 = v19 + v19 * (v8 + (v8 & 1)) + 2 * v9 + *a3 + 4;
    v25 = *a4 * v11 + 2 * v9 + *a3 + 4;
    do
    {
      if (v16)
      {
        v26 = 0;
        v27 = v25;
        v28 = v24;
        v29 = v22;
        do
        {
          if ((v18 & 1) == 0)
          {
            v30 = *(v27 - 2);
            v31 = *(v28 - 2);
            if (v30 >= 0xF000)
            {
              v30 = 61440;
            }

            if (v30 <= 0x1000)
            {
              v30 = 4096;
            }

            if (v31 >= 0xF000)
            {
              v31 = 61440;
            }

            if (v31 <= 0x1000)
            {
              v31 = 4096;
            }

            v32 = *v27;
            v33 = *v28;
            if (v32 >= 0xF000)
            {
              v32 = 61440;
            }

            if (v32 <= 0x1000)
            {
              v32 = 4096;
            }

            if (v33 >= 0xF000)
            {
              v33 = 61440;
            }

            if (v33 <= 0x1000)
            {
              v33 = 4096;
            }

            *v29 = (8 * (((613566757 * ((-16773120 - v31 + (v31 << 12)) >> 13)) >> 32) + ((613566757 * ((-16773120 - v30 + (v30 << 12)) >> 13)) >> 32)) + 8) & 0xFFF0;
            v29[1] = (8 * (((613566757 * ((-16773120 - v33 + (v33 << 12)) >> 13)) >> 32) + ((613566757 * ((-16773120 - v32 + (v32 << 12)) >> 13)) >> 32)) + 8) & 0xFFF0;
            v29 += 2;
          }

          v34 = (v23 + 2 * v26);
          v35 = *(v27 - 1);
          if (v35 >= 0xEB00)
          {
            v35 = 60160;
          }

          if (v35 <= 0x1000)
          {
            v35 = 4096;
          }

          v36 = v27[1];
          if (v36 >= 0xEB00)
          {
            v36 = 60160;
          }

          if (v36 <= 0x1000)
          {
            v36 = 4096;
          }

          *v34 = 16 * ((-16773120 - v35 + (v35 << 12)) / 0xDB00);
          v34[1] = 16 * ((-16773120 - v36 + (v36 << 12)) / 0xDB00);
          v26 += 2;
          v28 += 4;
          v27 += 4;
        }

        while (v26 < v16);
      }

      v23 += v20;
      if (v18)
      {
        v37 = 0;
      }

      else
      {
        v37 = v21;
      }

      v22 += v37;
      ++v18;
      v24 += v19;
      v25 += v19;
    }

    while (v18 != v17);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v10 = (*(a2 + 40) & 1) + *(a2 + 40);
  v11 = (*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE;
  v12 = (*(a6 + 32) & 1) + *(a6 + 32);
  v13 = (*(a6 + 40) & 1) + *(a6 + 40);
  v14 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v15 = v9 - v8;
  if (v15 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12)
  {
    v15 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12;
  }

  v16 = v11 - v10;
  if (v16 >= v14 - v13)
  {
    v16 = v14 - v13;
  }

  if (v16)
  {
    v17 = 0;
    v18 = *a4;
    v19 = *a8;
    v20 = a8[1];
    v21 = a7[1] + ((v20 * v13) >> 1) + 2 * (v12 & 0x3FFFFFFFFFFFFFFFLL);
    v22 = *a7 + *a8 * v13 + 2 * v12;
    v23 = *a4 * v10 + 2 * v8 + *a3 + 4;
    do
    {
      if (v15)
      {
        v24 = 0;
        v25 = v23;
        v26 = v21;
        do
        {
          if ((v17 & 1) == 0)
          {
            v27 = *(v25 - 2);
            if (v27 >= 0xF000)
            {
              v27 = 61440;
            }

            if (v27 <= 0x1000)
            {
              v27 = 4096;
            }

            v28 = *v25;
            if (v28 >= 0xF000)
            {
              v28 = 61440;
            }

            if (v28 <= 0x1000)
            {
              v28 = 4096;
            }

            *v26 = 16 * ((613566757 * ((-16773120 - v27 + (v27 << 12)) >> 13)) >> 32);
            v26[1] = 16 * ((613566757 * ((-16773120 - v28 + (v28 << 12)) >> 13)) >> 32);
            v26 += 2;
          }

          v29 = (v22 + 2 * v24);
          v30 = *(v25 - 1);
          if (v30 >= 0xEB00)
          {
            v30 = 60160;
          }

          if (v30 <= 0x1000)
          {
            v30 = 4096;
          }

          v31 = v25[1];
          if (v31 >= 0xEB00)
          {
            v31 = 60160;
          }

          if (v31 <= 0x1000)
          {
            v31 = 4096;
          }

          *v29 = 16 * ((-16773120 - v30 + (v30 << 12)) / 0xDB00);
          v29[1] = 16 * ((-16773120 - v31 + (v31 << 12)) / 0xDB00);
          v24 += 2;
          v25 += 4;
        }

        while (v24 < v15);
      }

      v22 += v19;
      if (v17)
      {
        v32 = 0;
      }

      else
      {
        v32 = v20;
      }

      v21 += v32;
      ++v17;
      v23 += v18;
    }

    while (v17 != v16);
  }

  return 0;
}

uint64_t vt_Copy_v216_x4as(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v12 = a8[1];
    v11 = a8[2];
    v13 = *a8;
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v12 * v14;
    v17 = a7[2] + v11 * v14;
    v18 = *a7 + *a8 * v14;
    v19 = *a4;
    v20 = v16 + 4 * v15;
    v21 = v17 + 2 * v15;
    v22 = v18 + 2 * v15;
    v23 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v24 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v26 = (v22 + 2 * i);
          *(v21 + 2 * i) = -1;
          v27 = (v20 + v24);
          v28 = *(v23 + v24) & 0xFFC0;
          v29 = *(v23 + v24 + 4) & 0xFFC0;
          *v27 = v28;
          v27[1] = v29;
          v27[2] = v28;
          v27[3] = v29;
          v30 = *(v23 + v24 + 6) & 0xFFC0;
          *v26 = *(v23 + v24 + 2) & 0xFFC0;
          v26[1] = v30;
          v24 += 8;
        }
      }

      v23 += v19;
      v22 += v13;
      v20 += v12;
      v21 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_x444(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a8;
    v12 = a8[1];
    v14 = a6[4];
    v13 = a6[5];
    v15 = a7[1] + v12 * v13;
    v16 = *a7 + *a8 * v13;
    v17 = *a4;
    v18 = v15 + 4 * v14;
    v19 = v16 + 2 * v14;
    v20 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v21 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v23 = (v19 + 2 * i);
          v24 = (v18 + v21);
          v25 = *(v20 + v21) & 0xFFC0;
          v26 = *(v20 + v21 + 4) & 0xFFC0;
          *v24 = v25;
          v24[1] = v26;
          v24[2] = v25;
          v24[3] = v26;
          v27 = *(v20 + v21 + 6) & 0xFFC0;
          *v23 = *(v20 + v21 + 2) & 0xFFC0;
          v23[1] = v27;
          v21 += 8;
        }
      }

      v20 += v17;
      v19 += v11;
      v18 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_xf44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a4;
    v12 = *a8;
    v13 = a8[1];
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v13 * v14 + 4 * v15;
    v17 = *a7 + *a8 * v14 + 2 * v15;
    v18 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v19 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v21 = (v18 + v19);
          v22 = (v16 + v19);
          v23 = *(v18 + v19);
          if (v23 >= 0xF000)
          {
            v23 = 61440;
          }

          v24 = v21[2];
          if (v23 <= 0x1000)
          {
            v23 = 4096;
          }

          if (v24 >= 0xF000)
          {
            v24 = 61440;
          }

          if (v24 <= 0x1000)
          {
            v24 = 4096;
          }

          v25 = (613566757 * ((-4190208 - v23 + (v23 << 10)) >> 13)) >> 32 << 6;
          *v22 = v25;
          v26 = (613566757 * ((-4190208 - v24 + (v24 << 10)) >> 13)) >> 32 << 6;
          v22[1] = v26;
          v22[2] = v25;
          v22[3] = v26;
          v27 = v21[1];
          if (v27 >= 0xEB00)
          {
            v27 = 60160;
          }

          if (v27 <= 0x1000)
          {
            v27 = 4096;
          }

          v28 = v21[3];
          if (v28 >= 0xEB00)
          {
            v28 = 60160;
          }

          v29 = (v17 + 2 * i);
          if (v28 <= 0x1000)
          {
            v28 = 4096;
          }

          *v29 = ((-4190208 - v27 + (v27 << 10)) / 0xDB00) << 6;
          v29[1] = ((-4190208 - v28 + (v28 << 10)) / 0xDB00) << 6;
          v19 += 8;
        }
      }

      v18 += v11;
      v17 += v12;
      v16 += v13;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = a8[2];
    v18 = a7[2] + v17 * v15;
    v19 = *a7 + *a8 * v15;
    v20 = *a4;
    v21 = v18 + 2 * v10;
    v22 = v19 + 2 * v10;
    v23 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    do
    {
      if (v11)
      {
        v24 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v26 = (v22 + 2 * i);
          v27 = (v16 + 2 * i);
          *(v21 + 2 * i) = -1;
          v28 = *(v23 + v24 + 4) & 0xFFC0;
          *v27 = *(v23 + v24) & 0xFFC0;
          v27[1] = v28;
          v29 = *(v23 + v24 + 6) & 0xFFC0;
          *v26 = *(v23 + v24 + 2) & 0xFFC0;
          v26[1] = v29;
          v24 += 8;
        }
      }

      v23 += v20;
      v22 += v13;
      v16 += v14;
      v21 += v17;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = *a4;
    v18 = *a7 + *a8 * v15 + 2 * v10;
    v19 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    do
    {
      if (v11)
      {
        v20 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v22 = (v18 + 2 * i);
          v23 = (v16 + 2 * i);
          v24 = *(v19 + v20 + 4) & 0xFFC0;
          *v23 = *(v19 + v20) & 0xFFC0;
          v23[1] = v24;
          v25 = *(v19 + v20 + 6) & 0xFFC0;
          *v22 = *(v19 + v20 + 2) & 0xFFC0;
          v22[1] = v25;
          v20 += 8;
        }
      }

      v19 += v17;
      v18 += v13;
      v16 += v14;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a4;
    v14 = *a8;
    v15 = a8[1];
    v16 = *(a6 + 40);
    v17 = 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v18 = *a7 + *a8 * v16 + 2 * v10;
    v19 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    v20 = a7[1] + v15 * v16 + v17;
    do
    {
      if (v11)
      {
        v21 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v23 = (v19 + v21);
          v24 = *(v19 + v21);
          if (v24 >= 0xF000)
          {
            v24 = 61440;
          }

          if (v24 <= 0x1000)
          {
            v24 = 4096;
          }

          v25 = v23[2];
          if (v25 >= 0xF000)
          {
            v25 = 61440;
          }

          if (v25 <= 0x1000)
          {
            v25 = 4096;
          }

          v26 = (v20 + 2 * i);
          *v26 = ((613566757 * ((-4190208 - v24 + (v24 << 10)) >> 13)) >> 32) << 6;
          v26[1] = ((613566757 * ((-4190208 - v25 + (v25 << 10)) >> 13)) >> 32) << 6;
          v27 = v23[1];
          if (v27 >= 0xEB00)
          {
            v27 = 60160;
          }

          if (v27 <= 0x1000)
          {
            v27 = 4096;
          }

          v28 = v23[3];
          if (v28 >= 0xEB00)
          {
            v28 = 60160;
          }

          v29 = (v18 + 2 * i);
          if (v28 <= 0x1000)
          {
            v28 = 4096;
          }

          *v29 = ((-4190208 - v27 + (v27 << 10)) / 0xDB00) << 6;
          v29[1] = ((-4190208 - v28 + (v28 << 10)) / 0xDB00) << 6;
          v21 += 8;
        }
      }

      v19 += v13;
      v18 += v14;
      v20 += v15;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_v4a8(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v12 = a8[1];
    v11 = a8[2];
    v13 = *a8;
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v12 * v14;
    v17 = a7[2] + v11 * v14;
    v18 = *a7 + *a8 * v14;
    v19 = *a4;
    v20 = v16 + 2 * v15;
    v21 = v17 + v15;
    v22 = v18 + v15;
    v23 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v24 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v26 = (v23 + 2 * v24);
          v27 = (v22 + i);
          v28 = (v20 + v24);
          *(v21 + i) = -1;
          v29 = v26[1];
          v30 = v26[5];
          *v28 = v29;
          v28[1] = v30;
          v28[2] = v29;
          v28[3] = v30;
          LOBYTE(v28) = v26[3];
          LOBYTE(v26) = v26[7];
          *v27 = v28;
          v27[1] = v26;
          v24 += 4;
        }
      }

      v23 += v19;
      v22 += v13;
      v20 += v12;
      v21 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_444v(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a8;
    v12 = a8[1];
    v14 = a6[4];
    v13 = a6[5];
    v15 = a7[1] + v12 * v13;
    v16 = *a7 + *a8 * v13;
    v17 = *a4;
    v18 = v15 + 2 * v14;
    v19 = v16 + v14;
    v20 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v21 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v23 = (v20 + 2 * v21);
          v24 = (v19 + i);
          v25 = (v18 + v21);
          v26 = v23[1];
          v27 = v23[5];
          *v25 = v26;
          v25[1] = v27;
          v25[2] = v26;
          v25[3] = v27;
          LOBYTE(v25) = v23[3];
          LOBYTE(v23) = v23[7];
          *v24 = v25;
          v24[1] = v23;
          v21 += 4;
        }
      }

      v20 += v17;
      v19 += v11;
      v18 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_444f(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a4;
    v12 = *a8;
    v13 = a8[1];
    v14 = a6[4];
    v15 = a6[5];
    v16 = a7[1] + v13 * v15 + 2 * v14;
    v17 = *a3 + *a4 * a2[5] + 2 * (a2[4] & 0xFFFFFFFELL);
    v18 = *a7 + *a8 * v15 + v14;
    do
    {
      if (v8)
      {
        v19 = 0;
        for (i = 0; i < v8; i += 2)
        {
          v21 = (v17 + 2 * v19);
          v22 = *v21;
          if (v22 >= 0xF000)
          {
            v22 = 61440;
          }

          if (v22 <= 0x1000)
          {
            v22 = 4096;
          }

          v23 = v21[2];
          if (v23 >= 0xF000)
          {
            v23 = 61440;
          }

          v24 = (v16 + v19);
          if (v23 <= 0x1000)
          {
            v23 = 4096;
          }

          v25 = (613566757 * ((-1044480 - v22 + (v22 << 8)) >> 13)) >> 32;
          v26 = (613566757 * ((-1044480 - v23 + (v23 << 8)) >> 13)) >> 32;
          *v24 = v25;
          v24[1] = v26;
          v24[2] = v25;
          v24[3] = v26;
          v27 = v21[1];
          if (v27 >= 0xEB00)
          {
            v27 = 60160;
          }

          if (v27 <= 0x1000)
          {
            v27 = 4096;
          }

          v28 = v21[3];
          v29 = (v18 + i);
          if (v28 >= 0xEB00)
          {
            v28 = 60160;
          }

          if (v28 <= 0x1000)
          {
            v28 = 4096;
          }

          *v29 = (-1044480 - v27 + (v27 << 8)) / 0xDB00;
          v29[1] = (-1044480 - v28 + (v28 << 8)) / 0xDB00;
          v19 += 4;
        }
      }

      v17 += v11;
      v18 += v12;
      v16 += v13;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_v216_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = a8[2];
    v18 = a7[2] + v17 * v15;
    v19 = *a7 + *a8 * v15;
    v20 = *a4;
    v21 = v18 + v10;
    v22 = v19 + v10;
    v23 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    do
    {
      if (v11)
      {
        v24 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v26 = (v22 + i);
          *(v21 + i) = -1;
          v27 = (v16 + i);
          v28 = *(v23 + v24 + 5);
          *v27 = *(v23 + v24 + 1);
          v27[1] = v28;
          v29 = *(v23 + v24 + 7);
          *v26 = *(v23 + v24 + 3);
          v26[1] = v29;
          v24 += 8;
        }
      }

      v23 += v20;
      v22 += v13;
      v16 += v14;
      v21 += v17;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = *a4;
    v18 = *a7 + *a8 * v15 + v10;
    v19 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    do
    {
      if (v11)
      {
        v20 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v22 = (v18 + i);
          v23 = (v16 + i);
          v24 = *(v19 + v20 + 5);
          *v23 = *(v19 + v20 + 1);
          v23[1] = v24;
          v25 = *(v19 + v20 + 7);
          *v22 = *(v19 + v20 + 3);
          v22[1] = v25;
          v20 += 8;
        }
      }

      v19 += v17;
      v18 += v13;
      v16 += v14;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_v216_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a4;
    v14 = *a8;
    v15 = a8[1];
    v16 = *(a6 + 40);
    v17 = a7[1] + v15 * v16 + (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = *a3 + *a4 * *(a2 + 40) + 2 * v9;
    v19 = *a7 + *a8 * v16 + v10;
    do
    {
      if (v11)
      {
        v20 = 0;
        for (i = 0; i < v11; i += 2)
        {
          v22 = (v18 + v20);
          v23 = (v17 + i);
          v24 = *(v18 + v20);
          if (v24 >= 0xF000)
          {
            v24 = 61440;
          }

          v25 = v22[2];
          if (v24 <= 0x1000)
          {
            v24 = 4096;
          }

          if (v25 >= 0xF000)
          {
            v25 = 61440;
          }

          if (v25 <= 0x1000)
          {
            v25 = 4096;
          }

          *v23 = (613566757 * ((-1044480 - v24 + (v24 << 8)) >> 13)) >> 32;
          v23[1] = (613566757 * ((-1044480 - v25 + (v25 << 8)) >> 13)) >> 32;
          v26 = v22[1];
          if (v26 >= 0xEB00)
          {
            v26 = 60160;
          }

          if (v26 <= 0x1000)
          {
            v26 = 4096;
          }

          v27 = v22[3];
          v28 = (v19 + i);
          if (v27 >= 0xEB00)
          {
            v27 = 60160;
          }

          if (v27 <= 0x1000)
          {
            v27 = 4096;
          }

          *v28 = (-1044480 - v26 + (v26 << 8)) / 0xDB00;
          v28[1] = (-1044480 - v27 + (v27 << 8)) / 0xDB00;
          v20 += 8;
        }
      }

      v18 += v13;
      v19 += v14;
      v17 += v15;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 40);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (v8 & 1) + v8;
  v11 = (*(a6 + 32) & 1) + *(a6 + 32);
  v12 = (*(a6 + 40) & 1) + *(a6 + 40);
  v13 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v14 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v14 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v11)
  {
    v14 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v11;
  }

  v15 = ((*(a2 + 24) + v8) & 0xFFFFFFFE) - v10;
  if (v15 >= v13 - v12)
  {
    v15 = v13 - v12;
  }

  if (v15)
  {
    v16 = 0;
    v17 = *a8;
    v18 = a8[1];
    v19 = a7[1] + ((v18 * v12) >> 1) + (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = a8[2];
    v21 = a7[2] + v20 * v12;
    v22 = *a7 + *a8 * v12;
    v23 = *a4;
    v24 = v21 + v11;
    v25 = v22 + v11;
    v26 = v23 + v23 * (v8 + (v8 & 1)) + 2 * v9 + *a3 + 4;
    v27 = *a4 * v10 + 2 * v9 + *a3 + 4;
    do
    {
      if (v14)
      {
        v28 = 0;
        v29 = v27;
        v30 = v26;
        v31 = v19;
        do
        {
          *(v24 + v28) = -1;
          if ((v16 & 1) == 0)
          {
            v32 = (*(v29 + 1) + *(v30 + 1) + 1) >> 1;
            *v31 = (*(v29 - 3) + *(v30 - 3) + 1) >> 1;
            v31[1] = v32;
            v31 += 2;
          }

          v33 = (v25 + v28);
          v34 = *(v29 + 3);
          *v33 = *(v29 - 1);
          v33[1] = v34;
          v28 += 2;
          v30 += 8;
          v29 += 8;
        }

        while (v28 < v14);
      }

      v25 += v17;
      if (v16)
      {
        v35 = 0;
      }

      else
      {
        v35 = v18;
      }

      v19 += v35;
      v24 += v20;
      ++v16;
      v26 += v23;
      v27 += v23;
    }

    while (v16 != v15);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = (*(a2 + 40) & 1) + *(a2 + 40);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = (*(a6 + 40) & 1) + *(a6 + 40);
  v12 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v13 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v8;
  if (v13 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v13 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  v14 = ((*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE) - v9;
  if (v14 >= v12 - v11)
  {
    v14 = v12 - v11;
  }

  if (v14)
  {
    v15 = 0;
    v16 = *a8;
    v17 = a8[1];
    v18 = a7[1] + ((v17 * v11) >> 1) + (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = a8[2];
    v20 = a7[2] + v19 * v11;
    v21 = *a7 + *a8 * v11;
    v22 = *a4;
    v23 = v20 + v10;
    v24 = v21 + v10;
    v25 = *a4 * v9 + 2 * v8 + *a3 + 4;
    do
    {
      if (v13)
      {
        v26 = 0;
        v27 = v25;
        v28 = v18;
        do
        {
          *(v23 + v26) = -1;
          if ((v15 & 1) == 0)
          {
            v29 = *(v27 + 1);
            *v28 = *(v27 - 3);
            v28[1] = v29;
            v28 += 2;
          }

          v30 = (v24 + v26);
          v31 = *(v27 + 3);
          *v30 = *(v27 - 1);
          v30[1] = v31;
          v26 += 2;
          v27 += 8;
        }

        while (v26 < v13);
      }

      v24 += v16;
      if (v15)
      {
        v32 = 0;
      }

      else
      {
        v32 = v17;
      }

      v18 += v32;
      v23 += v19;
      ++v15;
      v25 += v22;
    }

    while (v15 != v14);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 40);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v11 = (v8 & 1) + v8;
  v12 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v13 = (*(a6 + 32) & 1) + *(a6 + 32);
  v14 = (*(a6 + 40) & 1) + *(a6 + 40);
  v15 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v16 = v10 - v9;
  if (v16 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13)
  {
    v16 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13;
  }

  v17 = v12 - v11;
  if (v17 >= v15 - v14)
  {
    v17 = v15 - v14;
  }

  if (v17)
  {
    v18 = 0;
    v19 = *a8;
    v20 = a8[1];
    v21 = a8[2];
    v22 = *a4;
    v23 = (a7[2] + ((v21 * v14) >> 1) + (v13 >> 1));
    v24 = (a7[1] + ((v20 * v14) >> 1) + (v13 >> 1));
    v25 = *a7 + *a8 * v14 + v13;
    v26 = v22 + v22 * (v8 + (v8 & 1)) + 2 * v9 + *a3 + 4;
    v27 = *a4 * v11 + 2 * v9 + *a3 + 4;
    do
    {
      if (v16)
      {
        v28 = 0;
        v29 = v27;
        v30 = v26;
        v31 = v23;
        v32 = v24;
        do
        {
          if ((v18 & 1) == 0)
          {
            v33 = (*(v29 + 1) + *(v30 + 1) + 1) >> 1;
            *v32++ = (*(v29 - 3) + *(v30 - 3) + 1) >> 1;
            *v31++ = v33;
          }

          v34 = (v25 + v28);
          v35 = *(v29 + 3);
          *v34 = *(v29 - 1);
          v34[1] = v35;
          v28 += 2;
          v30 += 8;
          v29 += 8;
        }

        while (v28 < v16);
      }

      v25 += v19;
      if (v18)
      {
        v36 = 0;
      }

      else
      {
        v36 = v20;
      }

      v24 += v36;
      if (v18)
      {
        v37 = 0;
      }

      else
      {
        v37 = v21;
      }

      v23 += v37;
      ++v18;
      v26 += v22;
      v27 += v22;
    }

    while (v18 != v17);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v10 = (*(a2 + 40) & 1) + *(a2 + 40);
  v11 = (*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE;
  v12 = (*(a6 + 32) & 1) + *(a6 + 32);
  v13 = (*(a6 + 40) & 1) + *(a6 + 40);
  v14 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v15 = v9 - v8;
  if (v15 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12)
  {
    v15 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12;
  }

  v16 = v11 - v10;
  if (v16 >= v14 - v13)
  {
    v16 = v14 - v13;
  }

  if (v16)
  {
    v17 = 0;
    v18 = *a8;
    v19 = a8[1];
    v20 = a8[2];
    v21 = *a4;
    v22 = (a7[2] + ((v20 * v13) >> 1) + (v12 >> 1));
    v23 = (a7[1] + ((v19 * v13) >> 1) + (v12 >> 1));
    v24 = *a7 + *a8 * v13 + v12;
    v25 = *a4 * v10 + 2 * v8 + *a3 + 4;
    do
    {
      if (v15)
      {
        v26 = 0;
        v27 = v25;
        v28 = v22;
        v29 = v23;
        do
        {
          if ((v17 & 1) == 0)
          {
            v30 = *(v27 + 1);
            *v29++ = *(v27 - 3);
            *v28++ = v30;
          }

          v31 = (v24 + v26);
          v32 = *(v27 + 3);
          *v31 = *(v27 - 1);
          v31[1] = v32;
          v26 += 2;
          v27 += 8;
        }

        while (v26 < v15);
      }

      v24 += v18;
      if (v17)
      {
        v33 = 0;
      }

      else
      {
        v33 = v19;
      }

      v23 += v33;
      if (v17)
      {
        v34 = 0;
      }

      else
      {
        v34 = v20;
      }

      v22 += v34;
      ++v17;
      v25 += v21;
    }

    while (v17 != v16);
  }

  return 0;
}

uint64_t vt_CopyAvg_v216_f420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 40);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v11 = (v8 & 1) + v8;
  v12 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v13 = (*(a6 + 32) & 1) + *(a6 + 32);
  v14 = (*(a6 + 40) & 1) + *(a6 + 40);
  v15 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v16 = v10 - v9;
  if (v16 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13)
  {
    v16 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v13;
  }

  v17 = v12 - v11;
  if (v17 >= v15 - v14)
  {
    v17 = v15 - v14;
  }

  if (v17)
  {
    v18 = 0;
    v19 = *a4;
    v20 = *a8;
    v21 = a8[1];
    v22 = a8[2];
    v23 = (a7[2] + ((v22 * v14) >> 1) + (v13 >> 1));
    v24 = (a7[1] + ((v21 * v14) >> 1) + (v13 >> 1));
    v25 = *a7 + *a8 * v14 + v13;
    v26 = *a3;
    v27 = v19 + v19 * (v8 + (v8 & 1)) + 2 * v9 + v26 + 4;
    v28 = *a4 * v11 + 2 * v9 + v26 + 4;
    do
    {
      if (v16)
      {
        v29 = 0;
        v30 = v28;
        v31 = v27;
        v32 = v23;
        v33 = v24;
        do
        {
          if ((v18 & 1) == 0)
          {
            v34 = *(v30 - 2);
            v35 = *(v31 - 2);
            if (v34 >= 0xF000)
            {
              v34 = 61440;
            }

            if (v34 <= 0x1000)
            {
              v34 = 4096;
            }

            if (v35 >= 0xF000)
            {
              v35 = 61440;
            }

            if (v35 <= 0x1000)
            {
              v35 = 4096;
            }

            v36 = *v30;
            v37 = *v31;
            if (v36 >= 0xF000)
            {
              v36 = 61440;
            }

            if (v36 <= 0x1000)
            {
              v36 = 4096;
            }

            if (v37 >= 0xF000)
            {
              v37 = 61440;
            }

            if (v37 <= 0x1000)
            {
              v37 = 4096;
            }

            *v33++ = (((613566757 * ((-1044480 - v34 + (v34 << 8)) >> 13)) >> 32) + ((613566757 * ((-1044480 - v35 + (v35 << 8)) >> 13)) >> 32) + 1) >> 1;
            *v32++ = (((613566757 * ((-1044480 - v36 + (v36 << 8)) >> 13)) >> 32) + ((613566757 * ((-1044480 - v37 + (v37 << 8)) >> 13)) >> 32) + 1) >> 1;
          }

          v38 = (v25 + v29);
          v39 = *(v30 - 1);
          if (v39 >= 0xEB00)
          {
            v39 = 60160;
          }

          if (v39 <= 0x1000)
          {
            v39 = 4096;
          }

          v40 = v30[1];
          if (v40 >= 0xEB00)
          {
            v40 = 60160;
          }

          if (v40 <= 0x1000)
          {
            v40 = 4096;
          }

          *v38 = (-1044480 - v39 + (v39 << 8)) / 0xDB00;
          v38[1] = (-1044480 - v40 + (v40 << 8)) / 0xDB00;
          v29 += 2;
          v31 += 4;
          v30 += 4;
        }

        while (v29 < v16);
      }

      v25 += v20;
      if (v18)
      {
        v41 = 0;
      }

      else
      {
        v41 = v21;
      }

      v24 += v41;
      if (v18)
      {
        v42 = 0;
      }

      else
      {
        v42 = v22;
      }

      v23 += v42;
      ++v18;
      v27 += v19;
      v28 += v19;
    }

    while (v18 != v17);
  }

  return 0;
}

uint64_t vt_CopyDec_v216_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v10 = (*(a2 + 40) & 1) + *(a2 + 40);
  v11 = (*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE;
  v12 = (*(a6 + 32) & 1) + *(a6 + 32);
  v13 = (*(a6 + 40) & 1) + *(a6 + 40);
  v14 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v15 = v9 - v8;
  if (v15 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12)
  {
    v15 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12;
  }

  v16 = v11 - v10;
  if (v16 >= v14 - v13)
  {
    v16 = v14 - v13;
  }

  if (v16)
  {
    v17 = 0;
    v18 = *a4;
    v19 = *a8;
    v20 = a8[1];
    v21 = a8[2];
    v22 = (a7[2] + ((v21 * v13) >> 1) + (v12 >> 1));
    v23 = (a7[1] + ((v20 * v13) >> 1) + (v12 >> 1));
    v24 = *a7 + *a8 * v13 + v12;
    v25 = *a4 * v10 + 2 * v8 + *a3 + 4;
    do
    {
      if (v15)
      {
        v26 = 0;
        v27 = v25;
        v28 = v22;
        v29 = v23;
        do
        {
          if ((v17 & 1) == 0)
          {
            v30 = *(v27 - 2);
            if (v30 >= 0xF000)
            {
              v30 = 61440;
            }

            if (v30 <= 0x1000)
            {
              v30 = 4096;
            }

            v31 = *v27;
            if (v31 >= 0xF000)
            {
              v31 = 61440;
            }

            if (v31 <= 0x1000)
            {
              v31 = 4096;
            }

            *v29++ = (613566757 * ((-1044480 - v30 + (v30 << 8)) >> 13)) >> 32;
            *v28++ = (613566757 * ((-1044480 - v31 + (v31 << 8)) >> 13)) >> 32;
          }

          v32 = (v24 + v26);
          v33 = *(v27 - 1);
          if (v33 >= 0xEB00)
          {
            v33 = 60160;
          }

          if (v33 <= 0x1000)
          {
            v33 = 4096;
          }

          v34 = v27[1];
          if (v34 >= 0xEB00)
          {
            v34 = 60160;
          }

          if (v34 <= 0x1000)
          {
            v34 = 4096;
          }

          *v32 = (-1044480 - v33 + (v33 << 8)) / 0xDB00;
          v32[1] = (-1044480 - v34 + (v34 << 8)) / 0xDB00;
          v26 += 2;
          v27 += 4;
        }

        while (v26 < v15);
      }

      v24 += v19;
      if (v17)
      {
        v35 = 0;
      }

      else
      {
        v35 = v20;
      }

      v23 += v35;
      if (v17)
      {
        v36 = 0;
      }

      else
      {
        v36 = v21;
      }

      v22 += v36;
      ++v17;
      v25 += v18;
    }

    while (v17 != v16);
  }

  return 0;
}

uint64_t vt_Copy_v210_2vuy(unint64_t a1, uint64_t a2, uint64_t *a3, __int32 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a4;
    v10 = *a6 + 8;
    v11 = vdupq_n_s32(0x3FEu);
    v12.i64[0] = 0x200000002;
    v12.i64[1] = 0x200000002;
    v13.i64[0] = 0xFE000000FELL;
    v13.i64[1] = 0xFE000000FELL;
    do
    {
      if (a1)
      {
        v14 = 0;
        v15 = v10;
        v16 = v9;
        do
        {
          v17 = v16[1];
          v18.i32[0] = *v16;
          v18.i32[1] = *v16 >> 10;
          v18.i32[2] = *v16 >> 20;
          v20 = v16[2];
          v19 = v16[3];
          v18.i32[3] = v17;
          *(v15 - 2) = vuzp1_s8(vmovn_s32(vminq_u32(vshrq_n_u32(vaddq_s32(vandq_s8(v18, v11), v12), 2uLL), v13)), 0xFFFFFFECFFFFFFF6).u32[0];
          if (v14 + 2 < a1)
          {
            *v21.i8 = vshl_u32(vdup_n_s32(v17), 0xFFFFFFECFFFFFFF6);
            v21.i32[2] = v20;
            v21.i32[3] = v20 >> 10;
            *(v15 - 1) = vuzp1_s8(vmovn_s32(vminq_u32(vshrq_n_u32(vaddq_s32(vandq_s8(v21, v11), v12), 2uLL), v13)), 0xFFFFFFECFFFFFFF6).u32[0];
          }

          if (v14 + 4 < a1)
          {
            v22.i32[0] = v20 >> 20;
            v22.i32[1] = v19;
            v22.u64[1] = vshl_u32(vdup_n_s32(v19), 0xFFFFFFECFFFFFFF6);
            *v15 = vuzp1_s8(vmovn_s32(vminq_u32(vshrq_n_u32(vaddq_s32(vandq_s8(v22, v11), v12), 2uLL), v13)), 0xFFFFFFECFFFFFFF6).u32[0];
          }

          v14 += 6;
          v15 += 3;
          v16 += 4;
        }

        while (v14 < a1);
      }

      v9 = (v9 + v7);
      ++v6;
      v10 += v8;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_v210_yuvs(unint64_t a1, uint64_t a2, uint64_t *a3, __int32 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a4;
    v10 = *a6 + 8;
    v11 = vdupq_n_s32(0x3FEu);
    v12.i64[0] = 0x200000002;
    v12.i64[1] = 0x200000002;
    v13.i64[0] = 0xFE000000FELL;
    v13.i64[1] = 0xFE000000FELL;
    do
    {
      if (a1)
      {
        v14 = 0;
        v15 = v10;
        v16 = v9;
        do
        {
          v17 = v16[1];
          v19 = v16[2];
          v18 = v16[3];
          v20.i32[0] = *v16 >> 10;
          v20.i32[1] = *v16;
          v20.i32[2] = v17;
          v20.i32[3] = *v16 >> 20;
          *(v15 - 2) = vuzp1_s8(vmovn_s32(vminq_u32(vshrq_n_u32(vaddq_s32(vandq_s8(v20, v11), v12), 2uLL), v13)), 0xFFFFFFF6FFFFFFECLL).u32[0];
          if (v14 + 2 < a1)
          {
            *v21.i8 = vshl_u32(vdup_n_s32(v17), 0xFFFFFFF6FFFFFFECLL);
            v21.i32[2] = v19 >> 10;
            v21.i32[3] = v19;
            *(v15 - 1) = vuzp1_s8(vmovn_s32(vminq_u32(vshrq_n_u32(vaddq_s32(vandq_s8(v21, v11), v12), 2uLL), v13)), 0xFFFFFFF6FFFFFFECLL).u32[0];
          }

          if (v14 + 4 < a1)
          {
            v22.i32[0] = v18;
            v22.i32[1] = v19 >> 20;
            v22.u64[1] = vshl_u32(vdup_n_s32(v18), 0xFFFFFFF6FFFFFFECLL);
            *v15 = vuzp1_s8(vmovn_s32(vminq_u32(vshrq_n_u32(vaddq_s32(vandq_s8(v22, v11), v12), 2uLL), v13)), 0xFFFFFFF6FFFFFFECLL).u32[0];
          }

          v14 += 6;
          v15 += 3;
          v16 += 4;
        }

        while (v14 < a1);
      }

      v9 = (v9 + v7);
      ++v6;
      v10 += v8;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_v210_422v(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v11 = *a6;
    v10 = a6[1];
    v12 = *a4;
    do
    {
      if (a1)
      {
        v13 = 0;
        v14 = v12;
        do
        {
          v15 = (v10 + v13);
          v16 = (v11 + v13);
          v17 = v14[1];
          v19 = v14[2];
          v18 = v14[3];
          v20 = ((*v14 & 0x3FEu) + 2) >> 2;
          v21 = (((*v14 >> 10) & 0x3FEu) + 2) >> 2;
          v22 = (((*v14 >> 20) & 0x3FEu) + 2) >> 2;
          if (v21 >= 0xFE)
          {
            LOBYTE(v21) = -2;
          }

          *v16 = v21;
          if (v20 >= 0xFE)
          {
            LOBYTE(v20) = -2;
          }

          *v15 = v20;
          if (((v17 & 0x3FE) + 2) >> 2 >= 0xFE)
          {
            v23 = -2;
          }

          else
          {
            v23 = ((v17 & 0x3FE) + 2) >> 2;
          }

          v16[1] = v23;
          if (v22 >= 0xFE)
          {
            LOBYTE(v22) = -2;
          }

          v15[1] = v22;
          if (v13 + 2 < a1)
          {
            v24 = (((v17 >> 20) & 0x3FE) + 2) >> 2;
            v25 = (((v17 >> 10) & 0x3FE) + 2) >> 2;
            if (v24 >= 0xFE)
            {
              LOBYTE(v24) = -2;
            }

            v16[2] = v24;
            if (v25 >= 0xFE)
            {
              LOBYTE(v25) = -2;
            }

            v15[2] = v25;
            if ((((v19 >> 10) & 0x3FE) + 2) >> 2 >= 0xFE)
            {
              v26 = -2;
            }

            else
            {
              v26 = (((v19 >> 10) & 0x3FE) + 2) >> 2;
            }

            v16[3] = v26;
            if (((v19 & 0x3FE) + 2) >> 2 >= 0xFE)
            {
              v27 = -2;
            }

            else
            {
              v27 = ((v19 & 0x3FE) + 2) >> 2;
            }

            v15[3] = v27;
          }

          if (v13 + 4 < a1)
          {
            v28 = (((v19 >> 20) & 0x3FE) + 2) >> 2;
            v29 = ((v18 & 0x3FE) + 2) >> 2;
            v30 = (((v18 >> 10) & 0x3FE) + 2) >> 2;
            v31 = (((v18 >> 20) & 0x3FE) + 2) >> 2;
            if (v29 >= 0xFE)
            {
              LOBYTE(v29) = -2;
            }

            *(v11 + v13 + 4) = v29;
            if (v28 >= 0xFE)
            {
              LOBYTE(v28) = -2;
            }

            *(v10 + v13 + 4) = v28;
            if (v31 >= 0xFE)
            {
              LOBYTE(v31) = -2;
            }

            *(v11 + v13 + 5) = v31;
            if (v30 >= 0xFE)
            {
              v32 = -2;
            }

            else
            {
              v32 = v30;
            }

            *(v10 + v13 + 5) = v32;
          }

          v13 += 6;
          v14 += 4;
        }

        while (v13 < a1);
      }

      v12 = (v12 + v7);
      v11 += v8;
      v10 += v9;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_CopyAvg_v210_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v72 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  *&v52[32] = 0u;
  *&v52[16] = 0u;
  *v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  memset(v45, 0, sizeof(v45));
  v9 = a2[2];
  v10 = a2[3];
  v46[0] = vdupq_n_s64(1uLL);
  v46[1] = xmmword_18FECD0A0;
  v47 = 1;
  *&v52[8] = v46[0];
  *&v52[24] = xmmword_18FECD0C0;
  v71 = 0;
  *&v52[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v46, a8, a7, v45);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = a8[1];
    v18 = *(&v45[0] + 1);
    v19 = *&v45[0];
    v20 = 2 * *a8;
    v21 = 2 * v14;
    v22 = v14 + v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v23 = v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v24 = *a8 + *&v45[0] + 5;
    do
    {
      if (v9)
      {
        v25 = 0;
        v26 = v23;
        v27 = v22;
        do
        {
          v28 = (v19 + v25);
          v29 = v24 + v25;
          v31 = *(v26 - 2);
          v30 = *(v26 - 1);
          v33 = *v26;
          v32 = v26[1];
          v35 = *(v27 - 2);
          v34 = *(v27 - 1);
          v37 = *v27;
          v36 = v27[1];
          *v28 = ((v31 >> 10) + 2) >> 2;
          v28[1] = (v30 + 2) >> 2;
          *(v29 - 5) = ((v35 >> 10) + 2) >> 2;
          *(v29 - 4) = (v34 + 2) >> 2;
          if (v25 + 2 < v9)
          {
            v28[2] = ((v30 >> 20) + 2) >> 2;
            v28[3] = ((v33 >> 10) + 2) >> 2;
            *(v29 - 3) = ((v34 >> 20) + 2) >> 2;
            *(v29 - 2) = ((v37 >> 10) + 2) >> 2;
          }

          if (v25 + 4 < v9)
          {
            v38 = v19 + v25;
            *(v38 + 4) = (v32 + 2) >> 2;
            *(v38 + 5) = ((v32 >> 20) + 2) >> 2;
            v39 = (v24 + v25);
            *(v39 - 1) = (v36 + 2) >> 2;
            *v39 = ((v36 >> 20) + 2) >> 2;
          }

          v40 = (v18 + v25);
          *v40 = ((((v35 & 0x3FF) + (v31 & 0x3FF)) >> 1) + 2) >> 2;
          v40[1] = (((((v35 >> 20) & 0x3FF) + ((v31 >> 20) & 0x3FF)) >> 1) + 2) >> 2;
          if (v25 + 2 < v9)
          {
            v41 = v18 + v25;
            *(v41 + 2) = (((((v34 >> 10) & 0x3FF) + ((v30 >> 10) & 0x3FF)) >> 1) + 2) >> 2;
            *(v41 + 3) = ((((v37 & 0x3FF) + (v33 & 0x3FF)) >> 1) + 2) >> 2;
          }

          if (v25 + 4 < v9)
          {
            v42 = (((v36 >> 10) & 0x3FF) + ((v32 >> 10) & 0x3FF)) >> 1;
            v43 = v18 + v25;
            *(v43 + 4) = (((((v37 >> 20) & 0x3FF) + ((v33 >> 20) & 0x3FF)) >> 1) + 2) >> 2;
            *(v43 + 5) = (v42 + 2) >> 2;
          }

          v25 += 6;
          v27 += 4;
          v26 += 4;
        }

        while (v25 < v9);
      }

      v19 += v20;
      v18 += v17;
      ++v15;
      v22 += v21;
      v23 += v21;
      v24 += v20;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyDec_v210_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v71 = *MEMORY[0x1E69E9840];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  *&v51[32] = 0u;
  *&v51[16] = 0u;
  *v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  memset(v44, 0, sizeof(v44));
  v9 = a2[2];
  v10 = a2[3];
  v45[0] = vdupq_n_s64(1uLL);
  v45[1] = xmmword_18FECD0A0;
  v46 = 1;
  *&v51[8] = v45[0];
  *&v51[24] = xmmword_18FECD0C0;
  v70 = 0;
  *&v51[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v45, a8, a7, v44);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = a8[1];
    v18 = *(&v44[0] + 1);
    v19 = *&v44[0];
    v20 = 2 * *a8;
    v21 = 2 * v14;
    v22 = v14 + v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v23 = v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v24 = *a8 + *&v44[0] + 5;
    do
    {
      if (v9)
      {
        v25 = 0;
        v26 = v23;
        v27 = v22;
        do
        {
          v28 = (v19 + v25);
          v29 = v24 + v25;
          v31 = *(v26 - 2);
          v30 = *(v26 - 1);
          v32 = *v26;
          v33 = v26[1];
          v34 = *(v27 - 1);
          v36 = *v27;
          v35 = v27[1];
          v37 = *(v27 - 2) >> 10;
          *v28 = ((v31 >> 10) + 2) >> 2;
          v28[1] = (v30 + 2) >> 2;
          *(v29 - 5) = (v37 + 2) >> 2;
          *(v29 - 4) = (v34 + 2) >> 2;
          if (v25 + 2 < v9)
          {
            v28[2] = ((v30 >> 20) + 2) >> 2;
            v28[3] = ((v32 >> 10) + 2) >> 2;
            *(v29 - 3) = ((v34 >> 20) + 2) >> 2;
            *(v29 - 2) = ((v36 >> 10) + 2) >> 2;
          }

          if (v25 + 4 < v9)
          {
            v38 = v19 + v25;
            *(v38 + 4) = (v33 + 2) >> 2;
            *(v38 + 5) = ((v33 >> 20) + 2) >> 2;
            v39 = (v24 + v25);
            *(v39 - 1) = (v35 + 2) >> 2;
            *v39 = ((v35 >> 20) + 2) >> 2;
          }

          v40 = (v18 + v25);
          *v40 = (v31 + 2) >> 2;
          v40[1] = ((v31 >> 20) + 2) >> 2;
          if (v25 + 2 < v9)
          {
            v41 = v18 + v25;
            *(v41 + 2) = ((v30 >> 10) + 2) >> 2;
            *(v41 + 3) = (v32 + 2) >> 2;
          }

          if (v25 + 4 < v9)
          {
            v42 = v18 + v25;
            *(v42 + 4) = ((v32 >> 20) + 2) >> 2;
            *(v42 + 5) = ((v33 >> 10) + 2) >> 2;
          }

          v25 += 6;
          v27 += 4;
          v26 += 4;
        }

        while (v25 < v9);
      }

      v19 += v20;
      v18 += v17;
      ++v15;
      v22 += v21;
      v23 += v21;
      v24 += v20;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyAvg_v210_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v72 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  *&v52[32] = 0u;
  *&v52[16] = 0u;
  *v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  memset(v45, 0, sizeof(v45));
  v9 = a2[2];
  v10 = a2[3];
  v46[0] = vdupq_n_s64(1uLL);
  v46[1] = xmmword_18FECD0A0;
  v47 = 1;
  *&v52[8] = v46[0];
  *&v52[24] = xmmword_18FECD0C0;
  v71 = 0;
  *&v52[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v46, a8, a7, v45);
  if (v10 >= 2)
  {
    v15 = 0;
    v43 = a8[1];
    v44 = v10 >> 1;
    v16 = *(&v45[0] + 1);
    v17 = *&v45[0];
    v18 = (v12 << 7) & 0xFFFFFFFFFFFFFF00;
    v41 = 2 * v14;
    v42 = 2 * *a8;
    v19 = v14 + v14 * v11 + v18 / 0x30 + v13 + 8;
    v20 = v14 * v11 + v18 / 0x30 + v13 + 8;
    v21 = *a8 + *&v45[0] + 5;
    do
    {
      if (v9)
      {
        v22 = 0;
        v23 = v20;
        v24 = v19;
        do
        {
          v25 = (v17 + v22);
          v26 = v21 + v22;
          v28 = *(v23 - 2);
          v27 = *(v23 - 1);
          v30 = *v23;
          v29 = v23[1];
          v32 = *(v24 - 2);
          v31 = *(v24 - 1);
          v34 = *v24;
          v33 = v24[1];
          *v25 = (255 * ((v28 >> 10) & 0x3FF) - 16065) / 0x36C;
          v25[1] = (255 * (v27 & 0x3FF) - 16065) / 0x36C;
          *(v26 - 5) = (255 * ((v32 >> 10) & 0x3FF) - 16065) / 0x36C;
          *(v26 - 4) = (255 * (v31 & 0x3FF) - 16065) / 0x36C;
          if (v22 + 2 < v9)
          {
            v25[2] = (255 * ((v27 >> 20) & 0x3FF) - 16065) / 0x36C;
            v25[3] = (255 * ((v30 >> 10) & 0x3FF) - 16065) / 0x36C;
            *(v26 - 3) = (255 * ((v31 >> 20) & 0x3FF) - 16065) / 0x36C;
            *(v26 - 2) = (255 * ((v34 >> 10) & 0x3FF) - 16065) / 0x36C;
          }

          if (v22 + 4 < v9)
          {
            v35 = v17 + v22;
            *(v35 + 4) = (255 * (v29 & 0x3FF) - 16065) / 0x36C;
            *(v35 + 5) = (255 * ((v29 >> 20) & 0x3FF) - 16065) / 0x36C;
            v36 = (v21 + v22);
            *(v36 - 1) = (255 * (v33 & 0x3FF) - 16065) / 0x36C;
            *v36 = (255 * ((v33 >> 20) & 0x3FF) - 16065) / 0x36C;
          }

          v37 = (v16 + v22);
          *v37 = (613566757 * ((255 * (((v32 & 0x3FF) + (v28 & 0x3FF)) >> 1) - 16065) >> 7)) >> 32;
          v37[1] = (613566757 * ((255 * ((((v32 >> 20) & 0x3FF) + ((v28 >> 20) & 0x3FF)) >> 1) - 16065) >> 7)) >> 32;
          if (v22 + 2 < v9)
          {
            v38 = v16 + v22;
            *(v38 + 2) = (613566757 * ((255 * ((((v31 >> 10) & 0x3FF) + ((v27 >> 10) & 0x3FF)) >> 1) - 16065) >> 7)) >> 32;
            *(v38 + 3) = (613566757 * ((255 * (((v34 & 0x3FF) + (v30 & 0x3FF)) >> 1) - 16065) >> 7)) >> 32;
          }

          if (v22 + 4 < v9)
          {
            v39 = v16 + v22;
            *(v39 + 4) = (613566757 * ((255 * ((((v34 >> 20) & 0x3FF) + ((v30 >> 20) & 0x3FF)) >> 1) - 16065) >> 7)) >> 32;
            *(v39 + 5) = (613566757 * ((255 * ((((v33 >> 10) & 0x3FF) + ((v29 >> 10) & 0x3FF)) >> 1) - 16065) >> 7)) >> 32;
          }

          v22 += 6;
          v24 += 4;
          v23 += 4;
        }

        while (v22 < v9);
      }

      v17 += v42;
      v16 += v43;
      ++v15;
      v19 += v41;
      v20 += v41;
      v21 += v42;
    }

    while (v15 != v44);
  }

  return 0;
}

uint64_t vt_CopyDec_v210_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v73 = *MEMORY[0x1E69E9840];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  *&v53[32] = 0u;
  *&v53[16] = 0u;
  *v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  memset(v46, 0, sizeof(v46));
  v9 = a2[2];
  v10 = a2[3];
  v47[0] = vdupq_n_s64(1uLL);
  v47[1] = xmmword_18FECD0A0;
  v48 = 1;
  *&v53[8] = v47[0];
  *&v53[24] = xmmword_18FECD0C0;
  v72 = 0;
  *&v53[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v47, a8, a7, v46);
  if (v10 >= 2)
  {
    v15 = 0;
    v44 = a8[1];
    v45 = v10 >> 1;
    v16 = *(&v46[0] + 1);
    v17 = *&v46[0];
    v18 = 2 * *a8;
    v19 = 2 * v14;
    v20 = v14 + v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v21 = v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v22 = *a8 + *&v46[0] + 5;
    do
    {
      if (v9)
      {
        v23 = 0;
        v24 = v21;
        v25 = v20;
        do
        {
          v26 = (v17 + v23);
          v27 = v22 + v23;
          v29 = *(v24 - 2);
          v28 = *(v24 - 1);
          v30 = *v24;
          v31 = v24[1];
          v32 = *(v25 - 1);
          v34 = *v25;
          v33 = v25[1];
          v35 = (*(v25 - 2) >> 10) & 0x3FF;
          *v26 = (255 * ((v29 >> 10) & 0x3FF) - 16065) / 0x36C;
          v26[1] = (255 * (v28 & 0x3FF) - 16065) / 0x36C;
          *(v27 - 5) = (255 * v35 - 16065) / 0x36Cu;
          *(v27 - 4) = (255 * (v32 & 0x3FF) - 16065) / 0x36C;
          if (v23 + 2 < v9)
          {
            v26[2] = (255 * ((v28 >> 20) & 0x3FF) - 16065) / 0x36C;
            v26[3] = (255 * ((v30 >> 10) & 0x3FF) - 16065) / 0x36C;
            *(v27 - 3) = (255 * ((v32 >> 20) & 0x3FF) - 16065) / 0x36C;
            *(v27 - 2) = (255 * ((v34 >> 10) & 0x3FF) - 16065) / 0x36C;
          }

          if (v23 + 4 < v9)
          {
            v36 = v17 + v23;
            *(v36 + 4) = (255 * (v31 & 0x3FF) - 16065) / 0x36C;
            *(v36 + 5) = (255 * ((v31 >> 20) & 0x3FF) - 16065) / 0x36C;
            v37 = (v22 + v23);
            *(v37 - 1) = (255 * (v33 & 0x3FF) - 16065) / 0x36C;
            *v37 = (255 * ((v33 >> 20) & 0x3FF) - 16065) / 0x36C;
          }

          v38 = (v16 + v23);
          *v38 = (613566757 * ((255 * (v29 & 0x3FF) - 16065) >> 7)) >> 32;
          v38[1] = (613566757 * ((255 * ((v29 >> 20) & 0x3FF) - 16065) >> 7)) >> 32;
          if (v23 + 2 < v9)
          {
            v39 = (613566757 * ((255 * ((v28 >> 10) & 0x3FF) - 16065) >> 7)) >> 32;
            v40 = v16 + v23;
            *(v40 + 2) = v39;
            *(v40 + 3) = (613566757 * ((255 * (v30 & 0x3FF) - 16065) >> 7)) >> 32;
          }

          if (v23 + 4 < v9)
          {
            v41 = (613566757 * ((255 * ((v30 >> 20) & 0x3FF) - 16065) >> 7)) >> 32;
            v42 = v16 + v23;
            *(v42 + 4) = v41;
            *(v42 + 5) = (613566757 * ((255 * ((v31 >> 10) & 0x3FF) - 16065) >> 7)) >> 32;
          }

          v23 += 6;
          v25 += 4;
          v24 += 4;
        }

        while (v23 < v9);
      }

      v17 += v18;
      v16 += v44;
      ++v15;
      v20 += v19;
      v21 += v19;
      v22 += v18;
    }

    while (v15 != v45);
  }

  return 0;
}

uint64_t vt_CopyAvg_v210_x420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v73 = *MEMORY[0x1E69E9840];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  *&v53[32] = 0u;
  *&v53[16] = 0u;
  *v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  memset(v46, 0, sizeof(v46));
  v9 = a2[2];
  v10 = a2[3];
  v47[0] = vdupq_n_s64(1uLL);
  v47[1] = xmmword_18FECD180;
  v48 = 1;
  *&v53[8] = v47[0];
  *&v53[24] = xmmword_18FECD190;
  v72 = 0;
  *&v53[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v47, a8, a7, v46);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = a8[1];
    v18 = *(&v46[0] + 1);
    v19 = *&v46[0];
    v20 = 2 * *a8;
    v21 = 2 * v14;
    v22 = v14 + v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v23 = v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v24 = *&v46[0] + *a8;
    do
    {
      if (v9)
      {
        v25 = 0;
        v26 = 0;
        v27 = v23;
        v28 = v22;
        do
        {
          v29 = (v24 + v25);
          v30 = (v19 + v25);
          v32 = *(v27 - 2);
          v31 = *(v27 - 1);
          v33 = *v27;
          v34 = v27[1];
          v36 = *(v28 - 2);
          v35 = *(v28 - 1);
          v38 = *v28;
          v37 = v28[1];
          *v30 = (v32 >> 4) & 0xFFC0;
          v30[1] = v31 << 6;
          *v29 = (v36 >> 4) & 0xFFC0;
          v29[1] = v35 << 6;
          if (v26 + 2 < v9)
          {
            v30[2] = (v31 >> 14) & 0xFFC0;
            v30[3] = (v33 >> 4) & 0xFFC0;
            v29[2] = (v35 >> 14) & 0xFFC0;
            v29[3] = (v38 >> 4) & 0xFFC0;
          }

          if (v26 + 4 < v9)
          {
            v39 = v19 + v25;
            *(v39 + 8) = v34 << 6;
            *(v39 + 10) = (v34 >> 14) & 0xFFC0;
            v40 = v24 + v25;
            *(v40 + 8) = v37 << 6;
            *(v40 + 10) = (v37 >> 14) & 0xFFC0;
          }

          v41 = (v18 + v25);
          *v41 = (32 * ((v36 & 0x3FF) + (v32 & 0x3FF))) & 0xFFC0;
          v41[1] = (32 * (((v36 >> 20) & 0x3FF) + ((v32 >> 20) & 0x3FF))) & 0xFFC0;
          if (v26 + 2 < v9)
          {
            v42 = v18 + v25;
            *(v42 + 4) = (32 * (((v35 >> 10) & 0x3FF) + ((v31 >> 10) & 0x3FF))) & 0xFFC0;
            *(v42 + 6) = (32 * ((v38 & 0x3FF) + (v33 & 0x3FF))) & 0xFFC0;
          }

          if (v26 + 4 < v9)
          {
            v43 = ((v37 >> 10) & 0x3FF) + ((v34 >> 10) & 0x3FF);
            v44 = v18 + v25;
            *(v44 + 8) = (32 * (((v38 >> 20) & 0x3FF) + ((v33 >> 20) & 0x3FF))) & 0xFFC0;
            *(v44 + 10) = (32 * v43) & 0xFFC0;
          }

          v26 += 6;
          v28 += 4;
          v27 += 4;
          v25 += 12;
        }

        while (v26 < v9);
      }

      v19 += v20;
      v18 += v17;
      ++v15;
      v22 += v21;
      v23 += v21;
      v24 += v20;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyDec_v210_x420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v72 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  *&v52[32] = 0u;
  *&v52[16] = 0u;
  *v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  memset(v45, 0, sizeof(v45));
  v9 = a2[2];
  v10 = a2[3];
  v46[0] = vdupq_n_s64(1uLL);
  v46[1] = xmmword_18FECD180;
  v47 = 1;
  *&v52[8] = v46[0];
  *&v52[24] = xmmword_18FECD190;
  v71 = 0;
  *&v52[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v46, a8, a7, v45);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = a8[1];
    v18 = *(&v45[0] + 1);
    v19 = *&v45[0];
    v20 = 2 * *a8;
    v21 = 2 * v14;
    v22 = v14 + v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v23 = v14 * v11 + ((v12 << 7) & 0xFFFFFFFFFFFFFF00) / 0x30 + v13 + 8;
    v24 = *&v45[0] + *a8;
    do
    {
      if (v9)
      {
        v25 = 0;
        v26 = 0;
        v27 = v23;
        v28 = v22;
        do
        {
          v29 = (v24 + v25);
          v30 = (v19 + v25);
          v32 = *(v27 - 2);
          v31 = *(v27 - 1);
          v34 = *v27;
          v33 = v27[1];
          v35 = *(v28 - 2);
          v36 = *(v28 - 1);
          v38 = *v28;
          v37 = v28[1];
          *v30 = (v32 >> 4) & 0xFFC0;
          v30[1] = v31 << 6;
          *v29 = (v35 >> 4) & 0xFFC0;
          v29[1] = v36 << 6;
          if (v26 + 2 < v9)
          {
            v30[2] = (v31 >> 14) & 0xFFC0;
            v30[3] = (v34 >> 4) & 0xFFC0;
            v29[2] = (v36 >> 14) & 0xFFC0;
            v29[3] = (v38 >> 4) & 0xFFC0;
          }

          if (v26 + 4 < v9)
          {
            v39 = v19 + v25;
            *(v39 + 8) = v33 << 6;
            *(v39 + 10) = (v33 >> 14) & 0xFFC0;
            v40 = v24 + v25;
            *(v40 + 8) = v37 << 6;
            *(v40 + 10) = (v37 >> 14) & 0xFFC0;
          }

          v41 = (v18 + v25);
          *v41 = v32 << 6;
          v41[1] = (v32 >> 14) & 0xFFC0;
          if (v26 + 2 < v9)
          {
            v42 = v18 + v25;
            *(v42 + 4) = (v31 >> 4) & 0xFFC0;
            *(v42 + 6) = v34 << 6;
          }

          if (v26 + 4 < v9)
          {
            v43 = v18 + v25;
            *(v43 + 8) = (v34 >> 14) & 0xFFC0;
            *(v43 + 10) = (v33 >> 4) & 0xFFC0;
          }

          v26 += 6;
          v28 += 4;
          v27 += 4;
          v25 += 12;
        }

        while (v26 < v9);
      }

      v19 += v20;
      v18 += v17;
      ++v15;
      v22 += v21;
      v23 += v21;
      v24 += v20;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyAvg_v210_xf20(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v74 = *MEMORY[0x1E69E9840];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  *&v54[32] = 0u;
  *&v54[16] = 0u;
  *v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  memset(v47, 0, sizeof(v47));
  v9 = a2[2];
  v10 = a2[3];
  v48[0] = vdupq_n_s64(1uLL);
  v48[1] = xmmword_18FECD180;
  v49 = 1;
  *&v54[8] = v48[0];
  *&v54[24] = xmmword_18FECD190;
  v73 = 0;
  *&v54[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v48, a8, a7, v47);
  if (v10 >= 2)
  {
    v15 = 0;
    v44 = a8[1];
    v45 = v10 >> 1;
    v16 = *(&v47[0] + 1);
    v17 = *&v47[0];
    v18 = (v12 << 7) & 0xFFFFFFFFFFFFFF00;
    v43 = 2 * *a8;
    v42 = 2 * v14;
    v19 = v14 + v14 * v11 + v18 / 0x30 + v13 + 8;
    v20 = v14 * v11 + v18 / 0x30 + v13 + 8;
    v21 = *&v47[0] + *a8;
    do
    {
      v46 = v15;
      if (v9)
      {
        v22 = 0;
        v23 = 0;
        v24 = v20;
        v25 = v19;
        do
        {
          v26 = (v21 + v22);
          v27 = (v17 + v22);
          v29 = *(v24 - 2);
          v28 = *(v24 - 1);
          v31 = *v24;
          v30 = v24[1];
          v33 = *(v25 - 2);
          v32 = *(v25 - 1);
          v35 = *v25;
          v34 = v25[1];
          *v27 = ((65472 * ((v29 >> 10) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          v27[1] = ((65472 * (v28 & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          *v26 = ((65472 * ((v33 >> 10) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          v26[1] = ((65472 * (v32 & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          if (v23 + 2 < v9)
          {
            v27[2] = ((65472 * ((v28 >> 20) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            v27[3] = ((65472 * ((v31 >> 10) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            v26[2] = ((65472 * ((v32 >> 20) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            v26[3] = ((65472 * ((v35 >> 10) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          }

          if (v23 + 4 < v9)
          {
            v36 = v17 + v22;
            *(v36 + 8) = ((65472 * (v30 & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            *(v36 + 10) = ((65472 * ((v30 >> 20) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            v37 = v21 + v22;
            *(v37 + 8) = ((65472 * (v34 & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            *(v37 + 10) = ((65472 * ((v34 >> 20) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          }

          v38 = (v16 + v22);
          *v38 = (((613566757 * ((65472 * (((v33 & 0x3FF) + (v29 & 0x3FF)) >> 1) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
          v38[1] = (((613566757 * ((65472 * ((((v33 >> 20) & 0x3FF) + ((v29 >> 20) & 0x3FF)) >> 1) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
          if (v23 + 2 < v9)
          {
            v39 = v16 + v22;
            *(v39 + 4) = (((613566757 * ((65472 * ((((v32 >> 10) & 0x3FF) + ((v28 >> 10) & 0x3FF)) >> 1) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
            *(v39 + 6) = (((613566757 * ((65472 * (((v35 & 0x3FF) + (v31 & 0x3FF)) >> 1) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
          }

          if (v23 + 4 < v9)
          {
            v40 = v16 + v22;
            *(v40 + 8) = (((613566757 * ((65472 * ((((v35 >> 20) & 0x3FF) + ((v31 >> 20) & 0x3FF)) >> 1) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
            *(v40 + 10) = (((613566757 * ((65472 * ((((v34 >> 10) & 0x3FF) + ((v30 >> 10) & 0x3FF)) >> 1) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
          }

          v23 += 6;
          v25 += 4;
          v24 += 4;
          v22 += 12;
        }

        while (v23 < v9);
      }

      v17 += v43;
      v16 += v44;
      v15 = v46 + 1;
      v19 += v42;
      v20 += v42;
      v21 += v43;
    }

    while (v46 + 1 != v45);
  }

  return 0;
}

uint64_t vt_CopyDec_v210_xf20(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v73 = *MEMORY[0x1E69E9840];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  *&v53[32] = 0u;
  *&v53[16] = 0u;
  *v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  memset(v46, 0, sizeof(v46));
  v9 = a2[2];
  v10 = a2[3];
  v47[0] = vdupq_n_s64(1uLL);
  v47[1] = xmmword_18FECD180;
  v48 = 1;
  *&v53[8] = v47[0];
  *&v53[24] = xmmword_18FECD190;
  v72 = 0;
  *&v53[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v47, a8, a7, v46);
  if (v10 >= 2)
  {
    v15 = 0;
    v44 = a8[1];
    v45 = v10 >> 1;
    v16 = *(&v46[0] + 1);
    v17 = *&v46[0];
    v18 = (v12 << 7) & 0xFFFFFFFFFFFFFF00;
    v43 = 2 * *a8;
    v19 = 2 * v14;
    v20 = v14 + v14 * v11 + v18 / 0x30 + v13 + 8;
    v21 = v14 * v11 + v18 / 0x30 + v13 + 8;
    v22 = *&v46[0] + *a8;
    do
    {
      if (v9)
      {
        v23 = 0;
        v24 = 0;
        v25 = v21;
        v26 = v20;
        do
        {
          v27 = (v22 + v23);
          v28 = (v17 + v23);
          v30 = *(v25 - 2);
          v29 = *(v25 - 1);
          v31 = *v25;
          v32 = v25[1];
          v33 = *(v26 - 1);
          v35 = *v26;
          v34 = v26[1];
          v36 = (*(v26 - 2) >> 10) & 0x3FF;
          *v28 = ((65472 * ((v30 >> 10) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          v28[1] = ((65472 * (v29 & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          *v27 = ((65472 * v36 - 4190208) / 0x36Cu + 32) & 0xFFC0;
          v27[1] = ((65472 * (v33 & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          if (v24 + 2 < v9)
          {
            v28[2] = ((65472 * ((v29 >> 20) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            v28[3] = ((65472 * ((v31 >> 10) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            v27[2] = ((65472 * ((v33 >> 20) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            v27[3] = ((65472 * ((v35 >> 10) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          }

          if (v24 + 4 < v9)
          {
            v37 = v17 + v23;
            *(v37 + 8) = ((65472 * (v32 & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            *(v37 + 10) = ((65472 * ((v32 >> 20) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            v38 = v22 + v23;
            *(v38 + 8) = ((65472 * (v34 & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
            *(v38 + 10) = ((65472 * ((v34 >> 20) & 0x3FF) - 4190208) / 0x36C + 32) & 0xFFC0;
          }

          v39 = (v16 + v23);
          *v39 = (((613566757 * ((65472 * (v30 & 0x3FF) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
          v39[1] = (((613566757 * ((65472 * ((v30 >> 20) & 0x3FF) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
          if (v24 + 2 < v9)
          {
            v40 = v16 + v23;
            *(v40 + 4) = (((613566757 * ((65472 * ((v29 >> 10) & 0x3FF) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
            *(v40 + 6) = (((613566757 * ((65472 * (v31 & 0x3FF) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
          }

          if (v24 + 4 < v9)
          {
            v41 = v16 + v23;
            *(v41 + 8) = (((613566757 * ((65472 * ((v31 >> 20) & 0x3FF) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
            *(v41 + 10) = (((613566757 * ((65472 * ((v32 >> 10) & 0x3FF) - 4190208) >> 7)) >> 32) + 32) & 0xFFC0;
          }

          v24 += 6;
          v26 += 4;
          v25 += 4;
          v23 += 12;
        }

        while (v24 < v9);
      }

      v17 += v43;
      v16 += v44;
      ++v15;
      v20 += v19;
      v21 += v19;
      v22 += v43;
    }

    while (v15 != v45);
  }

  return 0;
}

vImage_Error vt_VImage_Setup_v210_32BGRA(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v22 = 0uLL;
  v23 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&pixelRange.Yp_bias = xmmword_18FECD150;
  *&pixelRange.YpMax = xmmword_18FECD140;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v22 = xmmword_18FECD070;
      v20 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v22 = xmmword_18FECD080;
      v20 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v22 = xmmword_18FECD090;
      v20 = 1072746935;
    }

    v23 = v20;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v22;
    goto LABEL_11;
  }

  v18 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v18;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CrYpCbYpCbYpCbYpCrYpCrYp10, kvImageARGB8888, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_v210_32BGRA;
  *a11 = vt_VImage_Cleanup_v210_32BGRA;
  *a8 = v17;
  return result;
}

vImage_Error vt_VImage_Setup_v210_32ARGB(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v22 = 0uLL;
  v23 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&pixelRange.Yp_bias = xmmword_18FECD150;
  *&pixelRange.YpMax = xmmword_18FECD140;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v22 = xmmword_18FECD070;
      v20 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v22 = xmmword_18FECD080;
      v20 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v22 = xmmword_18FECD090;
      v20 = 1072746935;
    }

    v23 = v20;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v22;
    goto LABEL_11;
  }

  v18 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v18;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CrYpCbYpCbYpCbYpCrYpCrYp10, kvImageARGB8888, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_v210_32ARGB;
  *a11 = vt_VImage_Cleanup_v210_32ARGB;
  *a8 = v17;
  return result;
}

vImage_Error vt_VImage_Setup_v210_RGhA(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v22 = 0uLL;
  v23 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&pixelRange.Yp_bias = xmmword_18FECD150;
  *&pixelRange.YpMax = xmmword_18FECD140;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v22 = xmmword_18FECD070;
      v20 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v22 = xmmword_18FECD080;
      v20 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v22 = xmmword_18FECD090;
      v20 = 1072746935;
    }

    v23 = v20;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v22;
    goto LABEL_11;
  }

  v18 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v18;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CrYpCbYpCbYpCbYpCrYpCrYp10, kvImageARGB16Q12, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_v210_RGhA;
  *a11 = vt_VImage_Cleanup_v210_RGhA;
  *a8 = v17;
  return result;
}

uint64_t vt_Copy_OneComponent_420v(unint64_t a1, unint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = a2 >> 1;
    v8 = *a5;
    v9 = a5[1];
    v11 = *a6;
    v10 = a6[1];
    v12 = *a4;
    v13 = 2 * *a5;
    v14 = 2 * *a3;
    v15 = *a3 + *a4 + 1;
    do
    {
      if (a1 >= 2)
      {
        v16 = 0;
        v17 = v11 + v8;
        v18 = v15;
        v19 = a1 >> 1;
        do
        {
          v20 = *(v18 - 1);
          v21 = *v18;
          v18 += 2;
          v22 = sLumaTableFtoV[*(v12 + v16 + 1)];
          LOBYTE(v20) = sLumaTableFtoV[v20];
          v23 = sLumaTableFtoV[v21];
          v24 = (v11 + v16);
          *v24 = sLumaTableFtoV[*(v12 + v16)];
          v24[1] = v22;
          *(v17 + v16) = v20;
          *(v17 + v16 + 1) = v23;
          *(v10 + v16) = -32640;
          v16 += 2;
          --v19;
        }

        while (v19);
      }

      v11 += v13;
      v10 += v9;
      v12 += v14;
      ++v6;
      v15 += v14;
    }

    while (v6 != v7);
  }

  return 0;
}

uint64_t vt_Copy_OneComponent_420f(unint64_t a1, unint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = a2 >> 1;
    v8 = *a5;
    v9 = a5[1];
    v11 = *a6;
    v10 = a6[1];
    v12 = *a4;
    v13 = 2 * *a5;
    v14 = 2 * *a3;
    v15 = *a3 + *a4 + 1;
    do
    {
      if (a1 >= 2)
      {
        v16 = 0;
        v17 = v11 + v8;
        v18 = v15;
        v19 = a1 >> 1;
        do
        {
          v20 = *(v18 - 1);
          v21 = *v18;
          v18 += 2;
          *(v11 + v16) = *(v12 + v16);
          *(v17 + v16) = v20;
          *(v17 + v16 + 1) = v21;
          *(v10 + v16) = -32640;
          v16 += 2;
          --v19;
        }

        while (v19);
      }

      v11 += v13;
      v10 += v9;
      v12 += v14;
      ++v6;
      v15 += v14;
    }

    while (v6 != v7);
  }

  return 0;
}

uint64_t vt_VImage_Setup_OneComponent_32BGRA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, vImage_Error (**a9)(uint64_t a1, vImagePixelCount *a2, uint64_t *a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, size_t *a8), uint64_t a10, void (**a11)(void **a1))
{
  v14 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  *(v14 + 36) = 0;
  *(v14 + 37) = a5;
  *(v14 + 288) = a6;
  *a9 = vt_VImage_Copy_OneComponent_32BGRA;
  *a11 = vt_VImage_Cleanup_OneComponent_32BGRA;
  *a8 = v14;
  return 0;
}

uint64_t vt_Copy_L010_L008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1)
      {
        for (i = 0; i != a1; ++i)
        {
          *(v9 + i) = (4198405 * (255 * (*(v10 + 2 * i) >> 6))) >> 32;
        }
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

vImage_Error vt_Copy_Half_Float(vImagePixelCount a1, vImagePixelCount a2, size_t *a3, void **a4, size_t *a5, void **a6)
{
  v6 = *a3;
  src.width = a1;
  src.rowBytes = v6;
  src.data = *a4;
  src.height = a2;
  v7 = *a5;
  v9.width = a1;
  v9.rowBytes = v7;
  v9.data = *a6;
  v9.height = a2;
  return vImageConvert_Planar16FtoPlanarF(&src, &v9, 0);
}

vImage_Error vt_Copy_Float_Half(vImagePixelCount a1, vImagePixelCount a2, size_t *a3, void **a4, size_t *a5, void **a6)
{
  v6 = *a3;
  src.width = a1;
  src.rowBytes = v6;
  src.data = *a4;
  src.height = a2;
  v7 = *a5;
  v9.width = a1;
  v9.rowBytes = v7;
  v9.data = *a6;
  v9.height = a2;
  return vImageConvert_PlanarFtoPlanar16F(&src, &v9, 0);
}

vImage_Error vt_VImage_Setup_2vuf_32ARGB(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v23 = 0uLL;
  v24 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&v18 = 255;
  *(&v18 + 1) = 255;
  *&pixelRange.Yp_bias = xmmword_18FECD0D0;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v23 = xmmword_18FECD070;
      v21 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v23 = xmmword_18FECD080;
      v21 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v23 = xmmword_18FECD090;
      v21 = 1072746935;
    }

    v24 = v21;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v23;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CbYpCrYp8, kvImageARGB8888, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_2vuf_32ARGB;
  *a11 = vt_VImage_Cleanup_2vuf_32ARGB;
  *a8 = v17;
  return result;
}

vImage_Error vt_VImage_Setup_2vuf_32BGRA(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v23 = 0uLL;
  v24 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&v18 = 255;
  *(&v18 + 1) = 255;
  *&pixelRange.Yp_bias = xmmword_18FECD0D0;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v23 = xmmword_18FECD070;
      v21 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v23 = xmmword_18FECD080;
      v21 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v23 = xmmword_18FECD090;
      v21 = 1072746935;
    }

    v24 = v21;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v23;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CbYpCrYp8, kvImageARGB8888, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_2vuf_32BGRA;
  *a11 = vt_VImage_Cleanup_2vuf_32BGRA;
  *a8 = v17;
  return result;
}

uint64_t vt_VImage_Setup_RGhA_32ARGB(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v16 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v16 = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[5] = 0u;
  v16[6] = 0u;
  v16[7] = 0u;
  v16[8] = 0u;
  v16[9] = 0u;
  v16[10] = 0u;
  v16[11] = 0u;
  v16[12] = 0u;
  v16[13] = 0u;
  v16[14] = 0u;
  v16[15] = 0u;
  v16[16] = 0u;
  v16[17] = 0u;
  v16[18] = 0u;
  if (a1)
  {
    v17 = 0;
    v18 = 8 * a1;
    if (a2 && v18)
    {
      if (((v18 | a2) & 0x8000000000000000) != 0)
      {
        v19 = 0;
        goto LABEL_11;
      }

      v19 = 0;
      if (!is_mul_ok(a2, v18))
      {
        goto LABEL_11;
      }

      v17 = v18 * a2;
      if (!(v18 * a2))
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    v19 = malloc_type_malloc(v17, 0xF69F77A8uLL);
LABEL_11:
    *(v16 + 32) = v19;
    *(v16 + 33) = a2;
    *(v16 + 34) = a1;
    *(v16 + 35) = v18;
    goto LABEL_12;
  }

  if (a2)
  {
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

LABEL_12:
  *(v16 + 37) = a5;
  *(v16 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_32ARGB;
  *a11 = vt_VImage_Cleanup_RGhA_32ARGB;
  *a8 = v16;
  return 0;
}

uint64_t vt_VImage_Setup_RGhA_32BGRA(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v16 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v16 = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[5] = 0u;
  v16[6] = 0u;
  v16[7] = 0u;
  v16[8] = 0u;
  v16[9] = 0u;
  v16[10] = 0u;
  v16[11] = 0u;
  v16[12] = 0u;
  v16[13] = 0u;
  v16[14] = 0u;
  v16[15] = 0u;
  v16[16] = 0u;
  v16[17] = 0u;
  v16[18] = 0u;
  if (a1)
  {
    v17 = 0;
    v18 = 8 * a1;
    if (a2 && v18)
    {
      if (((v18 | a2) & 0x8000000000000000) != 0)
      {
        v19 = 0;
        goto LABEL_11;
      }

      v19 = 0;
      if (!is_mul_ok(a2, v18))
      {
        goto LABEL_11;
      }

      v17 = v18 * a2;
      if (!(v18 * a2))
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    v19 = malloc_type_malloc(v17, 0xF69F77A8uLL);
LABEL_11:
    *(v16 + 32) = v19;
    *(v16 + 33) = a2;
    *(v16 + 34) = a1;
    *(v16 + 35) = v18;
    goto LABEL_12;
  }

  if (a2)
  {
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

LABEL_12:
  *(v16 + 37) = a5;
  *(v16 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_32BGRA;
  *a11 = vt_VImage_Cleanup_RGhA_32BGRA;
  *a8 = v16;
  return 0;
}

vImage_Error vt_VImage_Setup_RGhA_y416(unint64_t a1, unint64_t a2, uint64_t a3, const __CFString *a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v24 = 0u;
  v25 = 0u;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *(v17 + 4) = 0u;
  *(v17 + 5) = 0u;
  *(v17 + 6) = 0u;
  *(v17 + 7) = 0u;
  *(v17 + 8) = 0u;
  *(v17 + 9) = 0u;
  *(v17 + 10) = 0u;
  *(v17 + 11) = 0u;
  *(v17 + 12) = 0u;
  *(v17 + 13) = 0u;
  *(v17 + 14) = 0u;
  *(v17 + 15) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 17) = 0u;
  *(v17 + 18) = 0u;
  *&v18 = 0xFFFFLL;
  *(&v18 + 1) = 0xFFFFLL;
  *&pixelRange.Yp_bias = xmmword_18FECD160;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v21 = xmmword_18FECD0E0;
      v22 = xmmword_18FECD0F0;
    }

    else if (FigCFEqual())
    {
      v21 = xmmword_18FECD100;
      v22 = xmmword_18FECD110;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a4) != 5)
        {
          DefaultARGBToYpCbCrMatrixWidthDimensionHint = GetDefaultARGBToYpCbCrMatrixWidthDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958830];
        goto LABEL_3;
      }

      v21 = xmmword_18FECD120;
      v22 = xmmword_18FECD130;
    }

    v24 = v21;
    v25 = v22;
    DefaultARGBToYpCbCrMatrixWidthDimensionHint = &v24;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958838];
LABEL_3:
  DefaultARGBToYpCbCrMatrixWidthDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_ARGBToYpCbCr_GenerateConversion(DefaultARGBToYpCbCrMatrixWidthDimensionHint, &pixelRange, v17 + 1, kvImageARGB16U, kvImage444AYpCbCr16, 0);
  *(v17 + 37) = a5;
  *(v17 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_y416;
  *a11 = vt_VImage_Cleanup_RGhA_y416;
  *a8 = v17;
  return result;
}

uint64_t vt_VImage_Setup_RGhA_l64r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v14 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  *(v14 + 36) = 0;
  *(v14 + 37) = a5;
  *(v14 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_l64r;
  *a11 = vt_VImage_Cleanup_RGhA_l64r;
  *a8 = v14;
  return 0;
}

uint64_t vt_VImage_Setup_RGhA_RGfA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v14 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  *(v14 + 36) = 0;
  *(v14 + 37) = a5;
  *(v14 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_RGfA;
  *a11 = vt_VImage_Cleanup_RGhA_RGfA;
  *a8 = v14;
  return 0;
}

vImage_Error vt_VImage_Setup_RGhA_v410(unint64_t a1, unint64_t a2, uint64_t a3, const __CFString *a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v28 = 0u;
  v29 = 0u;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *(v17 + 4) = 0u;
  *(v17 + 5) = 0u;
  *(v17 + 6) = 0u;
  *(v17 + 7) = 0u;
  *(v17 + 8) = 0u;
  *(v17 + 9) = 0u;
  *(v17 + 10) = 0u;
  *(v17 + 11) = 0u;
  *(v17 + 12) = 0u;
  *(v17 + 13) = 0u;
  *(v17 + 14) = 0u;
  *(v17 + 15) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 17) = 0u;
  *(v17 + 18) = 0u;
  *&pixelRange.Yp_bias = xmmword_18FECD150;
  *&pixelRange.YpMax = xmmword_18FECD140;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v20 = xmmword_18FECD0E0;
      v21 = xmmword_18FECD0F0;
    }

    else if (FigCFEqual())
    {
      v20 = xmmword_18FECD100;
      v21 = xmmword_18FECD110;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a4) != 5)
        {
          DefaultARGBToYpCbCrMatrixWidthDimensionHint = GetDefaultARGBToYpCbCrMatrixWidthDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6958830];
        goto LABEL_3;
      }

      v20 = xmmword_18FECD120;
      v21 = xmmword_18FECD130;
    }

    v28 = v20;
    v29 = v21;
    DefaultARGBToYpCbCrMatrixWidthDimensionHint = &v28;
    goto LABEL_11;
  }

  v18 = MEMORY[0x1E6958838];
LABEL_3:
  DefaultARGBToYpCbCrMatrixWidthDimensionHint = *v18;
LABEL_11:
  v22 = vImageConvert_ARGBToYpCbCr_GenerateConversion(DefaultARGBToYpCbCrMatrixWidthDimensionHint, &pixelRange, v17 + 1, kvImageARGB16Q12, kvImage444CrYpCb10, 0);
  if (!v22 && (*(v17 + 34) != a1 || *(v17 + 33) != a2 || *(v17 + 35) != 8 * a1))
  {
    v23 = *(v17 + 32);
    if (v23)
    {
      *(v17 + 32) = 0;
      free(v23);
    }

    v24 = 0;
    v25 = 8 * a1;
    if (a2 && v25)
    {
      if (((v25 | a2) & 0x8000000000000000) != 0)
      {
        v26 = 0;
        goto LABEL_24;
      }

      v26 = 0;
      if (!is_mul_ok(a2, v25))
      {
        goto LABEL_24;
      }

      v24 = v25 * a2;
      if (!(v25 * a2))
      {
        goto LABEL_24;
      }
    }

    v26 = malloc_type_malloc(v24, 0xF69F77A8uLL);
LABEL_24:
    *(v17 + 32) = v26;
    *(v17 + 33) = a2;
    *(v17 + 34) = a1;
    *(v17 + 35) = v25;
  }

  *(v17 + 37) = a5;
  *(v17 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_v410;
  *a11 = vt_VImage_Cleanup_RGhA_v410;
  *a8 = v17;
  return v22;
}

vImage_Error vt_VImage_Setup_RGhA_v210(unint64_t a1, unint64_t a2, uint64_t a3, const __CFString *a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v28 = 0u;
  v29 = 0u;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *(v17 + 4) = 0u;
  *(v17 + 5) = 0u;
  *(v17 + 6) = 0u;
  *(v17 + 7) = 0u;
  *(v17 + 8) = 0u;
  *(v17 + 9) = 0u;
  *(v17 + 10) = 0u;
  *(v17 + 11) = 0u;
  *(v17 + 12) = 0u;
  *(v17 + 13) = 0u;
  *(v17 + 14) = 0u;
  *(v17 + 15) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 17) = 0u;
  *(v17 + 18) = 0u;
  *&pixelRange.Yp_bias = xmmword_18FECD150;
  *&pixelRange.YpMax = xmmword_18FECD140;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v20 = xmmword_18FECD0E0;
      v21 = xmmword_18FECD0F0;
    }

    else if (FigCFEqual())
    {
      v20 = xmmword_18FECD100;
      v21 = xmmword_18FECD110;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a4) != 5)
        {
          DefaultARGBToYpCbCrMatrixWidthDimensionHint = GetDefaultARGBToYpCbCrMatrixWidthDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6958830];
        goto LABEL_3;
      }

      v20 = xmmword_18FECD120;
      v21 = xmmword_18FECD130;
    }

    v28 = v20;
    v29 = v21;
    DefaultARGBToYpCbCrMatrixWidthDimensionHint = &v28;
    goto LABEL_11;
  }

  v18 = MEMORY[0x1E6958838];
LABEL_3:
  DefaultARGBToYpCbCrMatrixWidthDimensionHint = *v18;
LABEL_11:
  v22 = vImageConvert_ARGBToYpCbCr_GenerateConversion(DefaultARGBToYpCbCrMatrixWidthDimensionHint, &pixelRange, v17 + 1, kvImageARGB16Q12, kvImage422CrYpCbYpCbYpCbYpCrYpCrYp10, 0);
  if (!v22 && (*(v17 + 34) != a1 || *(v17 + 33) != a2 || *(v17 + 35) != 8 * a1))
  {
    v23 = *(v17 + 32);
    if (v23)
    {
      *(v17 + 32) = 0;
      free(v23);
    }

    v24 = 0;
    v25 = 8 * a1;
    if (a2 && v25)
    {
      if (((v25 | a2) & 0x8000000000000000) != 0)
      {
        v26 = 0;
        goto LABEL_24;
      }

      v26 = 0;
      if (!is_mul_ok(a2, v25))
      {
        goto LABEL_24;
      }

      v24 = v25 * a2;
      if (!(v25 * a2))
      {
        goto LABEL_24;
      }
    }

    v26 = malloc_type_malloc(v24, 0xF69F77A8uLL);
LABEL_24:
    *(v17 + 32) = v26;
    *(v17 + 33) = a2;
    *(v17 + 34) = a1;
    *(v17 + 35) = v25;
  }

  *(v17 + 37) = a5;
  *(v17 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_v210;
  *a11 = vt_VImage_Cleanup_RGhA_v210;
  *a8 = v17;
  return v22;
}

vImage_Error vt_VImage_Setup_RGhA_v216(unint64_t a1, unint64_t a2, uint64_t a3, const __CFString *a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v29 = 0u;
  v30 = 0u;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *(v17 + 4) = 0u;
  *(v17 + 5) = 0u;
  *(v17 + 6) = 0u;
  *(v17 + 7) = 0u;
  *(v17 + 8) = 0u;
  *(v17 + 9) = 0u;
  *(v17 + 10) = 0u;
  *(v17 + 11) = 0u;
  *(v17 + 12) = 0u;
  *(v17 + 13) = 0u;
  *(v17 + 14) = 0u;
  *(v17 + 15) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 17) = 0u;
  *(v17 + 18) = 0u;
  *&v18 = 0xFFFFLL;
  *(&v18 + 1) = 0xFFFFLL;
  *&pixelRange.Yp_bias = xmmword_18FECD160;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v21 = xmmword_18FECD0E0;
      v22 = xmmword_18FECD0F0;
    }

    else if (FigCFEqual())
    {
      v21 = xmmword_18FECD100;
      v22 = xmmword_18FECD110;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a4) != 5)
        {
          DefaultARGBToYpCbCrMatrixWidthDimensionHint = GetDefaultARGBToYpCbCrMatrixWidthDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958830];
        goto LABEL_3;
      }

      v21 = xmmword_18FECD120;
      v22 = xmmword_18FECD130;
    }

    v29 = v21;
    v30 = v22;
    DefaultARGBToYpCbCrMatrixWidthDimensionHint = &v29;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958838];
LABEL_3:
  DefaultARGBToYpCbCrMatrixWidthDimensionHint = *v19;
LABEL_11:
  v23 = vImageConvert_ARGBToYpCbCr_GenerateConversion(DefaultARGBToYpCbCrMatrixWidthDimensionHint, &pixelRange, v17 + 1, kvImageARGB16U, kvImage422CbYpCrYp16, 0);
  if (!v23 && (*(v17 + 34) != a1 || *(v17 + 33) != a2 || *(v17 + 35) != 8 * a1))
  {
    v24 = *(v17 + 32);
    if (v24)
    {
      *(v17 + 32) = 0;
      free(v24);
    }

    v25 = 0;
    v26 = 8 * a1;
    if (a2 && v26)
    {
      if (((v26 | a2) & 0x8000000000000000) != 0)
      {
        v27 = 0;
        goto LABEL_24;
      }

      v27 = 0;
      if (!is_mul_ok(a2, v26))
      {
        goto LABEL_24;
      }

      v25 = v26 * a2;
      if (!(v26 * a2))
      {
        goto LABEL_24;
      }
    }

    v27 = malloc_type_malloc(v25, 0xF69F77A8uLL);
LABEL_24:
    *(v17 + 32) = v27;
    *(v17 + 33) = a2;
    *(v17 + 34) = a1;
    *(v17 + 35) = v26;
  }

  *(v17 + 37) = a5;
  *(v17 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_v216;
  *a11 = vt_VImage_Cleanup_RGhA_v216;
  *a8 = v17;
  return v23;
}

uint64_t vt_VImage_Setup_RGhA_R10k(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v16 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v16 = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[5] = 0u;
  v16[6] = 0u;
  v16[7] = 0u;
  v16[8] = 0u;
  v16[9] = 0u;
  v16[10] = 0u;
  v16[11] = 0u;
  v16[12] = 0u;
  v16[13] = 0u;
  v16[14] = 0u;
  v16[15] = 0u;
  v16[16] = 0u;
  v16[17] = 0u;
  v16[18] = 0u;
  if (a1)
  {
    v17 = 0;
    v18 = 8 * a1;
    if (a2 && v18)
    {
      if (((v18 | a2) & 0x8000000000000000) != 0)
      {
        v19 = 0;
        goto LABEL_11;
      }

      v19 = 0;
      if (!is_mul_ok(a2, v18))
      {
        goto LABEL_11;
      }

      v17 = v18 * a2;
      if (!(v18 * a2))
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    v19 = malloc_type_malloc(v17, 0xF69F77A8uLL);
LABEL_11:
    *(v16 + 32) = v19;
    *(v16 + 33) = a2;
    *(v16 + 34) = a1;
    *(v16 + 35) = v18;
    goto LABEL_12;
  }

  if (a2)
  {
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

LABEL_12:
  *(v16 + 37) = a5;
  *(v16 + 288) = a6;
  *a9 = vt_VImage_Copy_RGhA_R10k;
  *a11 = vt_VImage_Cleanup_RGhA_R10k;
  *a8 = v16;
  return 0;
}

uint64_t vt_Copy_RGhA_p420ITU2020(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unint64_t *a8)
{
  v246 = 1313280;
  v10 = *(a2 + 40);
  v11 = (v10 & 1) + v10;
  v12 = (*(a2 + 32) & 1) + *(a2 + 32);
  v13 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v14 = (*(a2 + 24) + v10) & 0xFFFFFFFE;
  v15 = (*(a6 + 40) & 1) + *(a6 + 40);
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v19 = v13 - v12;
  v20 = v17 - v16;
  if (v13 - v12 >= v17 - v16)
  {
    v21 = v17 - v16;
  }

  else
  {
    v21 = v13 - v12;
  }

  if (v14 - v11 >= v18 - v15)
  {
    v22 = v18 - v15;
  }

  else
  {
    v22 = v14 - v11;
  }

  v23 = v17 % 6;
  _CF = v21 >= v23;
  v25 = v21 - v23;
  if (_CF)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v28 = v16 / 3;
    v29 = v22 >> 1;
    v30 = v16 % 3;
    v31 = 6 * (v16 / 6) - v16 + 6;
    v33 = *a8;
    v32 = a8[1];
    v35 = a7[1] + v32 * (v15 >> 1);
    v36 = *a7 + v33 * v15 + 4 * v28;
    v37 = (v36 + v33);
    v38 = *a3;
    v39 = *a3 + *a4 * v11;
    v40 = 8 * v12;
    v41 = (v39 + 8 * v12);
    v42 = (v41 + *a4);
    v239 = *a4 & 0x7FFFFFFFFFFFFFFFLL;
    v238 = (v33 >> 1) & 0x7FFFFFFFFFFFFFFELL;
    v237 = v32 >> 2;
    v236 = 2 * *a4;
    v43 = v38 + *a4 + *a4 * (v10 + (v10 & 1));
    if (v20 >= v19)
    {
      v44 = v19;
    }

    else
    {
      v44 = v20;
    }

    v245 = v44;
    v45 = (v35 + 4 * v28);
    v231 = v29;
    v232 = v21;
    v230 = v30;
    do
    {
      v46 = 0;
      v241 = v43;
      v242 = v42;
      v243 = v41;
      v244 = v39;
      v47 = v39;
      v48 = v41;
      v49 = v42;
      v50 = v36;
      v51 = v37;
      v240 = v45;
      v52 = v30;
      v53 = v30;
      do
      {
        v54 = v51;
        v55 = v50;
        if (v46)
        {
          v60 = (v47 + v40 - 8);
          v56 = (v47 + v40 - 6);
          v57 = (v47 + v40 - 4);
          _H20 = *(v47 + v40);
          LODWORD(_D22) = *(v47 + v40 + 2);
          __asm { FCVT            D21, H20 }

          v58 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
        }

        else
        {
          v56 = v48 + 1;
          v57 = v48 + 2;
          v58 = 0uLL;
          _D21 = 0.0;
          v60 = v48;
        }

        _H22 = *v60;
        _H23 = *v56;
        _H25 = *v57;
        __asm
        {
          FCVT            D22, H22
          FCVT            D24, H23
          FCVT            D23, H25
        }

        v70 = *(&v246 + v52);
        *v50 = (((_D24 * 0.580573067 + _D22 * 0.22495132 + _D23 * 0.0507805982) * 1023.0 + 64.0) << v70) | *v50 & ~(1023 << v70);
        if (v46)
        {
          v75 = (v43 + v40 - 8);
          v71 = (v43 + v40 - 6);
          v72 = (v43 + v40 - 4);
          _H25 = *(v43 + v40);
          LODWORD(_D27) = *(v43 + v40 + 2);
          __asm { FCVT            D26, H25 }

          v73 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
        }

        else
        {
          v71 = v49 + 1;
          v72 = v49 + 2;
          v73 = 0uLL;
          _D26 = 0.0;
          v75 = v49;
        }

        _H28 = *v72;
        _H29 = *v71;
        _H27 = *v75;
        __asm
        {
          FCVT            D27, H27
          FCVT            D29, H29
          FCVT            D28, H28
        }

        if (v46)
        {
          v83 = vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD1A0, _D24), xmmword_18FECD1B0, _D22);
          HIDWORD(_D22) = 1071384321;
          v84 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v83, xmmword_18FECD1C0, _D23), xmmword_18FECD1B0, _D21), xmmword_18FECD1A0, v58.f64[0]), xmmword_18FECD1C0, v58, 1), xmmword_18FECD1B0, _D27), xmmword_18FECD1A0, _D29), xmmword_18FECD1C0, _D28), xmmword_18FECD1B0, _D26), xmmword_18FECD1A0, v73.f64[0]), xmmword_18FECD1C0, v73, 1), vdupq_n_s64(0x408FF80000000000uLL));
          __asm { FMOV            V21.2D, #0.25 }

          v82 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v84, _Q21)))), 0x20000000200);
        }

        else
        {
          v82 = 0;
        }

        *v54 = *v54 & ~(1023 << v70) | (((_D29 * 0.580573067 + _D27 * 0.22495132 + _D28 * 0.0507805982) * 1023.0 + 64.0) << v70);
        if (v52 == 2)
        {
          v52 = 0;
        }

        else
        {
          ++v52;
        }

        if (v46)
        {
          v86 = *(&v246 + v53);
          *v45 = *v45 & ~(1023 << v86) | (v82.i32[0] << v86);
          v87 = (v45 + ((v86 >> 2) & 0x3C));
          if (v53 == 2)
          {
            v88 = 0;
          }

          else
          {
            v88 = v53 + 1;
          }

          v89 = *(&v246 + v88);
          *v87 = *v87 & ~(1023 << v89) | (v82.i32[1] << v89);
          v45 = (v87 + ((v89 >> 2) & 0x3C));
          if (v88 == 2)
          {
            v53 = 0;
          }

          else
          {
            v53 = v88 + 1;
          }
        }

        v48 += 4;
        v50 = &v55[v70 >> 4];
        v49 += 4;
        ++v46;
        v47 += 8;
        v51 = &v54[v70 >> 4];
        v43 += 8;
      }

      while (v31 != v46);
      if (v31 >= v26)
      {
        v192 = (v47 + v40);
        v191 = (v43 + v40);
        v95 = v31;
      }

      else
      {
        v234 = v37;
        v235 = v36;
        v90 = 0;
        v233 = v70 >> 2;
        v91 = (v70 >> 2) & 0x3C;
        v92 = v54 + v91;
        v93 = v55 + v91;
        v94 = v40;
        v95 = v31;
        do
        {
          _H20 = *(v47 + v94);
          _H21 = *(v47 + v94 + 2);
          _H22 = *(v47 + v94 + 4);
          __asm
          {
            FCVT            D27, H20
            FCVT            D28, H21
            FCVT            D29, H22
          }

          _H21 = *(v47 + v94 + 8);
          _H22 = *(v47 + v94 + 10);
          _H23 = *(v47 + v94 + 12);
          __asm
          {
            FCVT            D30, H21
            FCVT            D31, H22
            FCVT            D26, H23
          }

          _H22 = *(v43 + v94);
          _H23 = *(v43 + v94 + 2);
          _H8 = *(v43 + v94 + 4);
          __asm
          {
            FCVT            D25, H22
            FCVT            D24, H23
            FCVT            D23, H8
          }

          _H21 = *(v43 + v94 + 8);
          v115 = ((_D28 * 0.580573067 + _D27 * 0.22495132 + _D29 * 0.0507805982) * 1023.0 + 64.0);
          _H20 = *(v43 + v94 + 10);
          _H10 = *(v43 + v94 + 12);
          __asm
          {
            FCVT            D22, H21
            FCVT            D21, H20
          }

          v120 = ((_D31 * 0.580573067 + _D30 * 0.22495132 + _D26 * 0.0507805982) * 1023.0 + 64.0);
          __asm { FCVT            D20, H10 }

          v122 = ((_D24 * 0.580573067 + _D25 * 0.22495132 + _D23 * 0.0507805982) * 1023.0 + 64.0);
          v123 = ((_D21 * 0.580573067 + _D22 * 0.22495132 + _D20 * 0.0507805982) * 1023.0 + 64.0);
          v124 = _D28 * -0.315631984 + _D27 * -0.122295679 + _D29 * 0.437927664 + _D30 * -0.122295679;
          v125 = _D28 * -0.402705142 + _D27 * 0.437927664 + _D29 * -0.035222522 + _D30 * 0.437927664;
          v126 = v124 + _D31 * -0.315631984;
          _D27 = v125 + _D31 * -0.402705142;
          LOWORD(_D29) = *(v47 + v94 + 16);
          LOWORD(_D31) = *(v47 + v94 + 18);
          _H9 = *(v47 + v94 + 20);
          __asm { FCVT            D30, H29 }

          v130 = v126 + _D26 * 0.437927664;
          __asm
          {
            FCVT            D8, H31
            FCVT            D31, H9
          }

          v133 = _D27 + _D26 * -0.035222522;
          v134 = ((_D8 * 0.580573067 + _D30 * 0.22495132 + _D31 * 0.0507805982) * 1023.0 + 64.0);
          LOWORD(_D26) = *(v47 + v94 + 24);
          LOWORD(_D27) = *(v47 + v94 + 26);
          _D28 = v130 + _D25 * -0.122295679;
          LOWORD(_D29) = *(v47 + v94 + 28);
          __asm
          {
            FCVT            D26, H26
            FCVT            D27, H27
          }

          v138 = v133 + _D25 * 0.437927664;
          __asm { FCVT            D25, H29 }

          v140 = ((_D27 * 0.580573067 + _D26 * 0.22495132 + _D25 * 0.0507805982) * 1023.0 + 64.0);
          v141 = _D28 + _D24 * -0.315631984;
          LOWORD(_D28) = *(v43 + v94 + 16);
          _H11 = *(v43 + v94 + 18);
          _H12 = *(v43 + v94 + 20);
          __asm
          {
            FCVT            D29, H28
            FCVT            D28, H11
          }

          v146 = v138 + _D24 * -0.402705142;
          __asm { FCVT            D24, H12 }

          v148 = v141 + _D23 * 0.437927664;
          _H11 = *(v43 + v94 + 24);
          _H12 = *(v43 + v94 + 26);
          _H13 = *(v43 + v94 + 28);
          v152 = v146 + _D23 * -0.035222522;
          __asm
          {
            FCVT            D9, H11
            FCVT            D11, H12
            FCVT            D13, H13
          }

          v156 = v148 + _D22 * -0.122295679;
          v157 = v152 + _D22 * 0.437927664;
          v158 = _D8 * -0.315631984 + _D30 * -0.122295679;
          v159 = _D8 * -0.402705142 + _D30 * 0.437927664;
          v160 = v156 + _D21 * -0.315631984;
          v161 = v157 + _D21 * -0.402705142;
          _D22 = v159 + _D31 * -0.035222522;
          v163 = &v45[v90 / 4];
          v164 = v115 | (v120 << 10);
          v165 = &v92[v90];
          _D30 = v160 + _D20 * 0.437927664;
          v167 = v161 + _D20 * -0.035222522;
          v168 = &v93[v90];
          *v168 = v164 | (v134 << 20);
          *v165 = v122 | (v123 << 10) | (((_D28 * 0.580573067 + _D29 * 0.22495132 + _D24 * 0.0507805982) * 1023.0 + 64.0) << 20);
          v169 = (v158 + _D31 * 0.437927664 + _D26 * -0.122295679 + _D27 * -0.315631984 + _D25 * 0.437927664 + _D29 * -0.122295679 + _D28 * -0.315631984 + _D24 * 0.437927664 + _D9 * -0.122295679 + _D11 * -0.315631984 + _D13 * 0.437927664) * 1023.0;
          v170 = v167 * 1023.0 * 0.25;
          _D20 = _D22 + _D26 * 0.437927664 + _D27 * -0.402705142 + _D25 * -0.035222522 + _D29 * 0.437927664 + _D28 * -0.402705142 + _D24 * -0.035222522 + _D9 * 0.437927664 + _D11 * -0.402705142 + _D13 * -0.035222522;
          _D25 = v169 * 0.25;
          v173 = _D20 * 1023.0;
          LOWORD(_D20) = *(v47 + v94 + 32);
          LOWORD(_D22) = *(v47 + v94 + 34);
          LOWORD(_D24) = *(v47 + v94 + 36);
          __asm { FCVT            D20, H20 }

          _D26 = v173 * 0.25;
          __asm
          {
            FCVT            D21, H22
            FCVT            D22, H24
          }

          *&_D27 = _D30 * 1023.0 * 0.25;
          LOWORD(_D24) = *(v47 + v94 + 40);
          LOWORD(_D28) = *(v47 + v94 + 42);
          *&_D29 = v170;
          LOWORD(_D30) = *(v47 + v94 + 44);
          __asm
          {
            FCVT            D23, H24
            FCVT            D24, H28
          }

          *&_D25 = _D25;
          __asm { FCVT            D30, H30 }

          *&_D26 = _D26;
          v180 = v140 | (((_D21 * 0.580573067 + _D20 * 0.22495132 + _D22 * 0.0507805982) * 1023.0 + 64.0) << 10) | (((_D24 * 0.580573067 + _D23 * 0.22495132 + _D30 * 0.0507805982) * 1023.0 + 64.0) << 20);
          LOWORD(_D28) = *(v43 + v94 + 32);
          LOWORD(_D31) = *(v43 + v94 + 34);
          v181 = llroundf(*&_D27);
          LOWORD(_D27) = *(v43 + v94 + 36);
          __asm
          {
            FCVT            D28, H28
            FCVT            D31, H31
          }

          v184 = llroundf(*&_D29);
          __asm { FCVT            D27, H27 }

          v185 = llroundf(*&_D25);
          LOWORD(_D25) = *(v43 + v94 + 40);
          LOWORD(_D29) = *(v43 + v94 + 42);
          v186 = llroundf(*&_D26);
          LOWORD(_D26) = *(v43 + v94 + 44);
          __asm
          {
            FCVT            D25, H25
            FCVT            D29, H29
            FCVT            D26, H26
          }

          *&v160 = (_D21 * -0.315631984 + _D20 * -0.122295679 + _D22 * 0.437927664 + _D23 * -0.122295679 + _D24 * -0.315631984 + _D30 * 0.437927664 + _D28 * -0.122295679 + _D31 * -0.315631984 + _D27 * 0.437927664 + _D25 * -0.122295679 + _D29 * -0.315631984 + _D26 * 0.437927664) * 1023.0 * 0.25;
          *v163 = ((v184 << 10) + 0x80000) | (v181 + 512) | ((v185 << 20) + 0x20000000);
          *&_D20 = (_D21 * -0.402705142 + _D20 * 0.437927664 + _D22 * -0.035222522 + _D23 * 0.437927664 + _D24 * -0.402705142 + _D30 * -0.035222522 + _D28 * 0.437927664 + _D31 * -0.402705142 + _D27 * -0.035222522 + _D25 * 0.437927664 + _D29 * -0.402705142 + _D26 * -0.035222522) * 1023.0 * 0.25;
          v168[1] = v180;
          v165[1] = ((_D11 * 0.580573067 + _D9 * 0.22495132 + _D13 * 0.0507805982) * 1023.0 + 64.0) | (((_D31 * 0.580573067 + _D28 * 0.22495132 + _D27 * 0.0507805982) * 1023.0 + 64.0) << 10) | (((_D29 * 0.580573067 + _D25 * 0.22495132 + _D26 * 0.0507805982) * 1023.0 + 64.0) << 20);
          v163[1] = ((llroundf(*&_D20) << 20) + 0x20000000) | (v186 + 512) | ((llroundf(*&v160) << 10) + 0x80000);
          v95 += 6;
          v90 += 8;
          v94 += 48;
        }

        while (v95 < v26);
        v45 = (v45 + v90);
        v21 = v232;
        v190 = v233 & 0x3C;
        v51 = (v54 + v190 + v90);
        v50 = (v55 + v190 + v90);
        v191 = (v43 + v94);
        v192 = (v47 + v94);
        v36 = v235;
        v29 = v231;
        v30 = v230;
        v37 = v234;
      }

      if (v95 < v21)
      {
        v193 = 0;
        v194 = v192;
        v195 = v191;
        v196 = v26 % 3;
        do
        {
          if (v95)
          {
            v201 = &v192[v193 - 4];
            v197 = &v192[v193 - 3];
            v198 = &v192[v193 - 2];
            _H20 = v192[v193];
            LODWORD(_D22) = *&v192[v193 + 1];
            __asm { FCVT            D21, H20 }

            v199 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
          }

          else
          {
            v197 = v194 + 1;
            v198 = v194 + 2;
            v199 = 0uLL;
            _D21 = 0.0;
            v201 = v194;
          }

          _H23 = *v198;
          _H24 = *v197;
          _H22 = *v201;
          __asm
          {
            FCVT            D22, H22
            FCVT            D24, H24
            FCVT            D23, H23
          }

          v209 = *(&v246 + v196);
          *v50 = (((_D24 * 0.580573067 + _D22 * 0.22495132 + _D23 * 0.0507805982) * 1023.0 + 64.0) << v209) | *v50 & ~(1023 << v209);
          if (v95)
          {
            v214 = &v191[v193 - 4];
            v210 = &v191[v193 - 3];
            v211 = &v191[v193 - 2];
            _H25 = v191[v193];
            LODWORD(_D27) = *&v191[v193 + 1];
            __asm { FCVT            D26, H25 }

            v212 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
          }

          else
          {
            v210 = v195 + 1;
            v211 = v195 + 2;
            v212 = 0uLL;
            _D26 = 0.0;
            v214 = v195;
          }

          _H28 = *v211;
          _H29 = *v210;
          _H27 = *v214;
          __asm
          {
            FCVT            D27, H27
            FCVT            D29, H29
            FCVT            D28, H28
          }

          if (v95)
          {
            v222 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD1A0, _D24), xmmword_18FECD1B0, _D22), xmmword_18FECD1C0, _D23), xmmword_18FECD1B0, _D21), xmmword_18FECD1A0, v199.f64[0]), xmmword_18FECD1C0, v199, 1), xmmword_18FECD1B0, _D27), xmmword_18FECD1A0, _D29), xmmword_18FECD1C0, _D28), xmmword_18FECD1B0, _D26), xmmword_18FECD1A0, v212.f64[0]), xmmword_18FECD1C0, v212, 1), vdupq_n_s64(0x408FF80000000000uLL));
            __asm { FMOV            V21.2D, #0.25 }

            v221 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v222, _Q21)))), 0x20000000200);
          }

          else
          {
            v221 = 0;
          }

          HIDWORD(_D22) = 1078984704;
          *v51 = *v51 & ~(1023 << v209) | (((_D29 * 0.580573067 + _D27 * 0.22495132 + _D28 * 0.0507805982) * 1023.0 + 64.0) << v209);
          if (v196 == 2)
          {
            v196 = 0;
          }

          else
          {
            ++v196;
          }

          if (v95)
          {
            v224 = *(&v246 + v53);
            *v45 = *v45 & ~(1023 << v224) | (v221.i32[0] << v224);
            v225 = (v45 + ((v224 >> 2) & 0x3C));
            if (v53 == 2)
            {
              v226 = 0;
            }

            else
            {
              v226 = v53 + 1;
            }

            v227 = *(&v246 + v226);
            *v225 = *v225 & ~(1023 << v227) | (v221.i32[1] << v227);
            v45 = (v225 + ((v227 >> 2) & 0x3C));
            if (v226 == 2)
            {
              v53 = 0;
            }

            else
            {
              v53 = v226 + 1;
            }
          }

          v194 += 4;
          v228 = v209 >> 4;
          v50 += v228;
          v195 += 4;
          ++v95;
          v193 += 4;
          v51 += v228;
        }

        while (v245 != v95);
      }

      v41 = &v243[v239];
      v42 = &v242[v239];
      v36 += 4 * v238;
      ++v27;
      v37 += v238;
      v39 = v244 + v236;
      v43 = v241 + v236;
      v45 = &v240[v237];
    }

    while (v27 != v29);
  }

  return 0;
}

uint64_t vt_Copy_RGhA_p420ITU709(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unint64_t *a8)
{
  v246 = 1313280;
  v10 = *(a2 + 40);
  v11 = (v10 & 1) + v10;
  v12 = (*(a2 + 32) & 1) + *(a2 + 32);
  v13 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v14 = (*(a2 + 24) + v10) & 0xFFFFFFFE;
  v15 = (*(a6 + 40) & 1) + *(a6 + 40);
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v19 = v13 - v12;
  v20 = v17 - v16;
  if (v13 - v12 >= v17 - v16)
  {
    v21 = v17 - v16;
  }

  else
  {
    v21 = v13 - v12;
  }

  if (v14 - v11 >= v18 - v15)
  {
    v22 = v18 - v15;
  }

  else
  {
    v22 = v14 - v11;
  }

  v23 = v17 % 6;
  _CF = v21 >= v23;
  v25 = v21 - v23;
  if (_CF)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v28 = v16 / 3;
    v29 = v22 >> 1;
    v30 = v16 % 3;
    v31 = 6 * (v16 / 6) - v16 + 6;
    v33 = *a8;
    v32 = a8[1];
    v35 = a7[1] + v32 * (v15 >> 1);
    v36 = *a7 + v33 * v15 + 4 * v28;
    v37 = (v36 + v33);
    v38 = *a3;
    v39 = *a3 + *a4 * v11;
    v40 = 8 * v12;
    v41 = (v39 + 8 * v12);
    v42 = (v41 + *a4);
    v239 = *a4 & 0x7FFFFFFFFFFFFFFFLL;
    v238 = (v33 >> 1) & 0x7FFFFFFFFFFFFFFELL;
    v237 = v32 >> 2;
    v236 = 2 * *a4;
    v43 = v38 + *a4 + *a4 * (v10 + (v10 & 1));
    if (v20 >= v19)
    {
      v44 = v19;
    }

    else
    {
      v44 = v20;
    }

    v245 = v44;
    v45 = (v35 + 4 * v28);
    v231 = v29;
    v232 = v21;
    v230 = v30;
    do
    {
      v46 = 0;
      v241 = v43;
      v242 = v42;
      v243 = v41;
      v244 = v39;
      v47 = v39;
      v48 = v41;
      v49 = v42;
      v50 = v36;
      v51 = v37;
      v240 = v45;
      v52 = v30;
      v53 = v30;
      do
      {
        v54 = v51;
        v55 = v50;
        if (v46)
        {
          v60 = (v47 + v40 - 8);
          v56 = (v47 + v40 - 6);
          v57 = (v47 + v40 - 4);
          _H20 = *(v47 + v40);
          LODWORD(_D22) = *(v47 + v40 + 2);
          __asm { FCVT            D21, H20 }

          v58 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
        }

        else
        {
          v56 = v48 + 1;
          v57 = v48 + 2;
          v58 = 0uLL;
          _D21 = 0.0;
          v60 = v48;
        }

        _H22 = *v60;
        _H23 = *v56;
        _H25 = *v57;
        __asm
        {
          FCVT            D22, H22
          FCVT            D24, H23
          FCVT            D23, H25
        }

        v70 = *(&v246 + v52);
        *v50 = (((_D24 * 0.614230588 + _D22 * 0.182585882 + _D23 * 0.0620070588) * 1023.0 + 64.0) << v70) | *v50 & ~(1023 << v70);
        if (v46)
        {
          v75 = (v43 + v40 - 8);
          v71 = (v43 + v40 - 6);
          v72 = (v43 + v40 - 4);
          _H25 = *(v43 + v40);
          LODWORD(_D27) = *(v43 + v40 + 2);
          __asm { FCVT            D26, H25 }

          v73 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
        }

        else
        {
          v71 = v49 + 1;
          v72 = v49 + 2;
          v73 = 0uLL;
          _D26 = 0.0;
          v75 = v49;
        }

        _H28 = *v72;
        _H29 = *v71;
        _H27 = *v75;
        __asm
        {
          FCVT            D27, H27
          FCVT            D29, H29
          FCVT            D28, H28
        }

        if (v46)
        {
          v83 = vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD1D0, _D24), xmmword_18FECD1E0, _D22);
          HIDWORD(_D22) = 1071389724;
          v84 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v83, xmmword_18FECD1F0, _D23), xmmword_18FECD1E0, _D21), xmmword_18FECD1D0, v58.f64[0]), xmmword_18FECD1F0, v58, 1), xmmword_18FECD1E0, _D27), xmmword_18FECD1D0, _D29), xmmword_18FECD1F0, _D28), xmmword_18FECD1E0, _D26), xmmword_18FECD1D0, v73.f64[0]), xmmword_18FECD1F0, v73, 1), vdupq_n_s64(0x408FF80000000000uLL));
          __asm { FMOV            V21.2D, #0.25 }

          v82 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v84, _Q21)))), 0x20000000200);
        }

        else
        {
          v82 = 0;
        }

        *v54 = *v54 & ~(1023 << v70) | (((_D29 * 0.614230588 + _D27 * 0.182585882 + _D28 * 0.0620070588) * 1023.0 + 64.0) << v70);
        if (v52 == 2)
        {
          v52 = 0;
        }

        else
        {
          ++v52;
        }

        if (v46)
        {
          v86 = *(&v246 + v53);
          *v45 = *v45 & ~(1023 << v86) | (v82.i32[0] << v86);
          v87 = (v45 + ((v86 >> 2) & 0x3C));
          if (v53 == 2)
          {
            v88 = 0;
          }

          else
          {
            v88 = v53 + 1;
          }

          v89 = *(&v246 + v88);
          *v87 = *v87 & ~(1023 << v89) | (v82.i32[1] << v89);
          v45 = (v87 + ((v89 >> 2) & 0x3C));
          if (v88 == 2)
          {
            v53 = 0;
          }

          else
          {
            v53 = v88 + 1;
          }
        }

        v48 += 4;
        v50 = &v55[v70 >> 4];
        v49 += 4;
        ++v46;
        v47 += 8;
        v51 = &v54[v70 >> 4];
        v43 += 8;
      }

      while (v31 != v46);
      if (v31 >= v26)
      {
        v192 = (v47 + v40);
        v191 = (v43 + v40);
        v95 = v31;
      }

      else
      {
        v234 = v37;
        v235 = v36;
        v90 = 0;
        v233 = v70 >> 2;
        v91 = (v70 >> 2) & 0x3C;
        v92 = v54 + v91;
        v93 = v55 + v91;
        v94 = v40;
        v95 = v31;
        do
        {
          _H20 = *(v47 + v94);
          _H21 = *(v47 + v94 + 2);
          _H22 = *(v47 + v94 + 4);
          __asm
          {
            FCVT            D27, H20
            FCVT            D28, H21
            FCVT            D29, H22
          }

          _H21 = *(v47 + v94 + 8);
          _H22 = *(v47 + v94 + 10);
          _H23 = *(v47 + v94 + 12);
          __asm
          {
            FCVT            D30, H21
            FCVT            D31, H22
            FCVT            D26, H23
          }

          _H22 = *(v43 + v94);
          _H23 = *(v43 + v94 + 2);
          _H8 = *(v43 + v94 + 4);
          __asm
          {
            FCVT            D25, H22
            FCVT            D24, H23
            FCVT            D23, H8
          }

          _H21 = *(v43 + v94 + 8);
          v115 = ((_D28 * 0.614230588 + _D27 * 0.182585882 + _D29 * 0.0620070588) * 1023.0 + 64.0);
          _H20 = *(v43 + v94 + 10);
          _H10 = *(v43 + v94 + 12);
          __asm
          {
            FCVT            D22, H21
            FCVT            D21, H20
          }

          v120 = ((_D31 * 0.614230588 + _D30 * 0.182585882 + _D26 * 0.0620070588) * 1023.0 + 64.0);
          __asm { FCVT            D20, H10 }

          v122 = ((_D24 * 0.614230588 + _D25 * 0.182585882 + _D23 * 0.0620070588) * 1023.0 + 64.0);
          v123 = ((_D21 * 0.614230588 + _D22 * 0.182585882 + _D20 * 0.0620070588) * 1023.0 + 64.0);
          v124 = _D28 * -0.338572047 + _D27 * -0.100643639 + _D29 * 0.439215686 + _D30 * -0.100643639;
          v125 = _D28 * -0.398942243 + _D27 * 0.439215686 + _D29 * -0.0402734431 + _D30 * 0.439215686;
          v126 = v124 + _D31 * -0.338572047;
          _D27 = v125 + _D31 * -0.398942243;
          LOWORD(_D29) = *(v47 + v94 + 16);
          LOWORD(_D31) = *(v47 + v94 + 18);
          _H9 = *(v47 + v94 + 20);
          __asm { FCVT            D30, H29 }

          v130 = v126 + _D26 * 0.439215686;
          __asm
          {
            FCVT            D8, H31
            FCVT            D31, H9
          }

          v133 = _D27 + _D26 * -0.0402734431;
          v134 = ((_D8 * 0.614230588 + _D30 * 0.182585882 + _D31 * 0.0620070588) * 1023.0 + 64.0);
          LOWORD(_D26) = *(v47 + v94 + 24);
          LOWORD(_D27) = *(v47 + v94 + 26);
          _D28 = v130 + _D25 * -0.100643639;
          LOWORD(_D29) = *(v47 + v94 + 28);
          __asm
          {
            FCVT            D26, H26
            FCVT            D27, H27
          }

          v138 = v133 + _D25 * 0.439215686;
          __asm { FCVT            D25, H29 }

          v140 = ((_D27 * 0.614230588 + _D26 * 0.182585882 + _D25 * 0.0620070588) * 1023.0 + 64.0);
          v141 = _D28 + _D24 * -0.338572047;
          LOWORD(_D28) = *(v43 + v94 + 16);
          _H11 = *(v43 + v94 + 18);
          _H12 = *(v43 + v94 + 20);
          __asm
          {
            FCVT            D29, H28
            FCVT            D28, H11
          }

          v146 = v138 + _D24 * -0.398942243;
          __asm { FCVT            D24, H12 }

          v148 = v141 + _D23 * 0.439215686;
          _H11 = *(v43 + v94 + 24);
          _H12 = *(v43 + v94 + 26);
          _H13 = *(v43 + v94 + 28);
          v152 = v146 + _D23 * -0.0402734431;
          __asm
          {
            FCVT            D9, H11
            FCVT            D11, H12
            FCVT            D13, H13
          }

          v156 = v148 + _D22 * -0.100643639;
          v157 = v152 + _D22 * 0.439215686;
          v158 = _D8 * -0.338572047 + _D30 * -0.100643639;
          v159 = _D8 * -0.398942243 + _D30 * 0.439215686;
          v160 = v156 + _D21 * -0.338572047;
          v161 = v157 + _D21 * -0.398942243;
          _D22 = v159 + _D31 * -0.0402734431;
          v163 = &v45[v90 / 4];
          v164 = v115 | (v120 << 10);
          v165 = &v92[v90];
          _D30 = v160 + _D20 * 0.439215686;
          v167 = v161 + _D20 * -0.0402734431;
          v168 = &v93[v90];
          *v168 = v164 | (v134 << 20);
          *v165 = v122 | (v123 << 10) | (((_D28 * 0.614230588 + _D29 * 0.182585882 + _D24 * 0.0620070588) * 1023.0 + 64.0) << 20);
          v169 = (v158 + _D31 * 0.439215686 + _D26 * -0.100643639 + _D27 * -0.338572047 + _D25 * 0.439215686 + _D29 * -0.100643639 + _D28 * -0.338572047 + _D24 * 0.439215686 + _D9 * -0.100643639 + _D11 * -0.338572047 + _D13 * 0.439215686) * 1023.0;
          v170 = v167 * 1023.0 * 0.25;
          _D20 = _D22 + _D26 * 0.439215686 + _D27 * -0.398942243 + _D25 * -0.0402734431 + _D29 * 0.439215686 + _D28 * -0.398942243 + _D24 * -0.0402734431 + _D9 * 0.439215686 + _D11 * -0.398942243 + _D13 * -0.0402734431;
          _D25 = v169 * 0.25;
          v173 = _D20 * 1023.0;
          LOWORD(_D20) = *(v47 + v94 + 32);
          LOWORD(_D22) = *(v47 + v94 + 34);
          LOWORD(_D24) = *(v47 + v94 + 36);
          __asm { FCVT            D20, H20 }

          _D26 = v173 * 0.25;
          __asm
          {
            FCVT            D21, H22
            FCVT            D22, H24
          }

          *&_D27 = _D30 * 1023.0 * 0.25;
          LOWORD(_D24) = *(v47 + v94 + 40);
          LOWORD(_D28) = *(v47 + v94 + 42);
          *&_D29 = v170;
          LOWORD(_D30) = *(v47 + v94 + 44);
          __asm
          {
            FCVT            D23, H24
            FCVT            D24, H28
          }

          *&_D25 = _D25;
          __asm { FCVT            D30, H30 }

          *&_D26 = _D26;
          v180 = v140 | (((_D21 * 0.614230588 + _D20 * 0.182585882 + _D22 * 0.0620070588) * 1023.0 + 64.0) << 10) | (((_D24 * 0.614230588 + _D23 * 0.182585882 + _D30 * 0.0620070588) * 1023.0 + 64.0) << 20);
          LOWORD(_D28) = *(v43 + v94 + 32);
          LOWORD(_D31) = *(v43 + v94 + 34);
          v181 = llroundf(*&_D27);
          LOWORD(_D27) = *(v43 + v94 + 36);
          __asm
          {
            FCVT            D28, H28
            FCVT            D31, H31
          }

          v184 = llroundf(*&_D29);
          __asm { FCVT            D27, H27 }

          v185 = llroundf(*&_D25);
          LOWORD(_D25) = *(v43 + v94 + 40);
          LOWORD(_D29) = *(v43 + v94 + 42);
          v186 = llroundf(*&_D26);
          LOWORD(_D26) = *(v43 + v94 + 44);
          __asm
          {
            FCVT            D25, H25
            FCVT            D29, H29
            FCVT            D26, H26
          }

          *&v160 = (_D21 * -0.338572047 + _D20 * -0.100643639 + _D22 * 0.439215686 + _D23 * -0.100643639 + _D24 * -0.338572047 + _D30 * 0.439215686 + _D28 * -0.100643639 + _D31 * -0.338572047 + _D27 * 0.439215686 + _D25 * -0.100643639 + _D29 * -0.338572047 + _D26 * 0.439215686) * 1023.0 * 0.25;
          *v163 = ((v184 << 10) + 0x80000) | (v181 + 512) | ((v185 << 20) + 0x20000000);
          *&_D20 = (_D21 * -0.398942243 + _D20 * 0.439215686 + _D22 * -0.0402734431 + _D23 * 0.439215686 + _D24 * -0.398942243 + _D30 * -0.0402734431 + _D28 * 0.439215686 + _D31 * -0.398942243 + _D27 * -0.0402734431 + _D25 * 0.439215686 + _D29 * -0.398942243 + _D26 * -0.0402734431) * 1023.0 * 0.25;
          v168[1] = v180;
          v165[1] = ((_D11 * 0.614230588 + _D9 * 0.182585882 + _D13 * 0.0620070588) * 1023.0 + 64.0) | (((_D31 * 0.614230588 + _D28 * 0.182585882 + _D27 * 0.0620070588) * 1023.0 + 64.0) << 10) | (((_D29 * 0.614230588 + _D25 * 0.182585882 + _D26 * 0.0620070588) * 1023.0 + 64.0) << 20);
          v163[1] = ((llroundf(*&_D20) << 20) + 0x20000000) | (v186 + 512) | ((llroundf(*&v160) << 10) + 0x80000);
          v95 += 6;
          v90 += 8;
          v94 += 48;
        }

        while (v95 < v26);
        v45 = (v45 + v90);
        v21 = v232;
        v190 = v233 & 0x3C;
        v51 = (v54 + v190 + v90);
        v50 = (v55 + v190 + v90);
        v191 = (v43 + v94);
        v192 = (v47 + v94);
        v36 = v235;
        v29 = v231;
        v30 = v230;
        v37 = v234;
      }

      if (v95 < v21)
      {
        v193 = 0;
        v194 = v192;
        v195 = v191;
        v196 = v26 % 3;
        do
        {
          if (v95)
          {
            v201 = &v192[v193 - 4];
            v197 = &v192[v193 - 3];
            v198 = &v192[v193 - 2];
            _H20 = v192[v193];
            LODWORD(_D22) = *&v192[v193 + 1];
            __asm { FCVT            D21, H20 }

            v199 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
          }

          else
          {
            v197 = v194 + 1;
            v198 = v194 + 2;
            v199 = 0uLL;
            _D21 = 0.0;
            v201 = v194;
          }

          _H23 = *v198;
          _H24 = *v197;
          _H22 = *v201;
          __asm
          {
            FCVT            D22, H22
            FCVT            D24, H24
            FCVT            D23, H23
          }

          v209 = *(&v246 + v196);
          *v50 = (((_D24 * 0.614230588 + _D22 * 0.182585882 + _D23 * 0.0620070588) * 1023.0 + 64.0) << v209) | *v50 & ~(1023 << v209);
          if (v95)
          {
            v214 = &v191[v193 - 4];
            v210 = &v191[v193 - 3];
            v211 = &v191[v193 - 2];
            _H25 = v191[v193];
            LODWORD(_D27) = *&v191[v193 + 1];
            __asm { FCVT            D26, H25 }

            v212 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
          }

          else
          {
            v210 = v195 + 1;
            v211 = v195 + 2;
            v212 = 0uLL;
            _D26 = 0.0;
            v214 = v195;
          }

          _H28 = *v211;
          _H29 = *v210;
          _H27 = *v214;
          __asm
          {
            FCVT            D27, H27
            FCVT            D29, H29
            FCVT            D28, H28
          }

          if (v95)
          {
            v222 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD1D0, _D24), xmmword_18FECD1E0, _D22), xmmword_18FECD1F0, _D23), xmmword_18FECD1E0, _D21), xmmword_18FECD1D0, v199.f64[0]), xmmword_18FECD1F0, v199, 1), xmmword_18FECD1E0, _D27), xmmword_18FECD1D0, _D29), xmmword_18FECD1F0, _D28), xmmword_18FECD1E0, _D26), xmmword_18FECD1D0, v212.f64[0]), xmmword_18FECD1F0, v212, 1), vdupq_n_s64(0x408FF80000000000uLL));
            __asm { FMOV            V21.2D, #0.25 }

            v221 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v222, _Q21)))), 0x20000000200);
          }

          else
          {
            v221 = 0;
          }

          HIDWORD(_D22) = 1078984704;
          *v51 = *v51 & ~(1023 << v209) | (((_D29 * 0.614230588 + _D27 * 0.182585882 + _D28 * 0.0620070588) * 1023.0 + 64.0) << v209);
          if (v196 == 2)
          {
            v196 = 0;
          }

          else
          {
            ++v196;
          }

          if (v95)
          {
            v224 = *(&v246 + v53);
            *v45 = *v45 & ~(1023 << v224) | (v221.i32[0] << v224);
            v225 = (v45 + ((v224 >> 2) & 0x3C));
            if (v53 == 2)
            {
              v226 = 0;
            }

            else
            {
              v226 = v53 + 1;
            }

            v227 = *(&v246 + v226);
            *v225 = *v225 & ~(1023 << v227) | (v221.i32[1] << v227);
            v45 = (v225 + ((v227 >> 2) & 0x3C));
            if (v226 == 2)
            {
              v53 = 0;
            }

            else
            {
              v53 = v226 + 1;
            }
          }

          v194 += 4;
          v228 = v209 >> 4;
          v50 += v228;
          v195 += 4;
          ++v95;
          v193 += 4;
          v51 += v228;
        }

        while (v245 != v95);
      }

      v41 = &v243[v239];
      v42 = &v242[v239];
      v36 += 4 * v238;
      ++v27;
      v37 += v238;
      v39 = v244 + v236;
      v43 = v241 + v236;
      v45 = &v240[v237];
    }

    while (v27 != v29);
  }

  return 0;
}

uint64_t vt_Copy_RGhA_p420ITU601(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unint64_t *a8)
{
  v246 = 1313280;
  v10 = *(a2 + 40);
  v11 = (v10 & 1) + v10;
  v12 = (*(a2 + 32) & 1) + *(a2 + 32);
  v13 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v14 = (*(a2 + 24) + v10) & 0xFFFFFFFE;
  v15 = (*(a6 + 40) & 1) + *(a6 + 40);
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v19 = v13 - v12;
  v20 = v17 - v16;
  if (v13 - v12 >= v17 - v16)
  {
    v21 = v17 - v16;
  }

  else
  {
    v21 = v13 - v12;
  }

  if (v14 - v11 >= v18 - v15)
  {
    v22 = v18 - v15;
  }

  else
  {
    v22 = v14 - v11;
  }

  v23 = v17 % 6;
  _CF = v21 >= v23;
  v25 = v21 - v23;
  if (_CF)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v28 = v16 / 3;
    v29 = v22 >> 1;
    v30 = v16 % 3;
    v31 = 6 * (v16 / 6) - v16 + 6;
    v33 = *a8;
    v32 = a8[1];
    v35 = a7[1] + v32 * (v15 >> 1);
    v36 = *a7 + v33 * v15 + 4 * v28;
    v37 = (v36 + v33);
    v38 = *a3;
    v39 = *a3 + *a4 * v11;
    v40 = 8 * v12;
    v41 = (v39 + 8 * v12);
    v42 = (v41 + *a4);
    v239 = *a4 & 0x7FFFFFFFFFFFFFFFLL;
    v238 = (v33 >> 1) & 0x7FFFFFFFFFFFFFFELL;
    v237 = v32 >> 2;
    v236 = 2 * *a4;
    v43 = v38 + *a4 + *a4 * (v10 + (v10 & 1));
    if (v20 >= v19)
    {
      v44 = v19;
    }

    else
    {
      v44 = v20;
    }

    v245 = v44;
    v45 = (v35 + 4 * v28);
    v231 = v29;
    v232 = v21;
    v230 = v30;
    do
    {
      v46 = 0;
      v241 = v43;
      v242 = v42;
      v243 = v41;
      v244 = v39;
      v47 = v39;
      v48 = v41;
      v49 = v42;
      v50 = v36;
      v51 = v37;
      v240 = v45;
      v52 = v30;
      v53 = v30;
      do
      {
        v54 = v51;
        v55 = v50;
        if (v46)
        {
          v60 = (v47 + v40 - 8);
          v56 = (v47 + v40 - 6);
          v57 = (v47 + v40 - 4);
          _H20 = *(v47 + v40);
          LODWORD(_D22) = *(v47 + v40 + 2);
          __asm { FCVT            D21, H20 }

          v58 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
        }

        else
        {
          v56 = v48 + 1;
          v57 = v48 + 2;
          v58 = 0uLL;
          _D21 = 0.0;
          v60 = v48;
        }

        _H22 = *v60;
        _H23 = *v56;
        _H25 = *v57;
        __asm
        {
          FCVT            D22, H22
          FCVT            D24, H23
          FCVT            D23, H25
        }

        v70 = *(&v246 + v52);
        *v50 = (((_D24 * 0.504129412 + _D22 * 0.256788235 + _D23 * 0.0979058824) * 1023.0 + 64.0) << v70) | *v50 & ~(1023 << v70);
        if (v46)
        {
          v75 = (v43 + v40 - 8);
          v71 = (v43 + v40 - 6);
          v72 = (v43 + v40 - 4);
          _H25 = *(v43 + v40);
          LODWORD(_D27) = *(v43 + v40 + 2);
          __asm { FCVT            D26, H25 }

          v73 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
        }

        else
        {
          v71 = v49 + 1;
          v72 = v49 + 2;
          v73 = 0uLL;
          _D26 = 0.0;
          v75 = v49;
        }

        _H28 = *v72;
        _H29 = *v71;
        _H27 = *v75;
        __asm
        {
          FCVT            D27, H27
          FCVT            D29, H29
          FCVT            D28, H28
        }

        if (v46)
        {
          v83 = vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD200, _D24), xmmword_18FECD210, _D22);
          HIDWORD(_D22) = 1071389724;
          v84 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v83, xmmword_18FECD220, _D23), xmmword_18FECD210, _D21), xmmword_18FECD200, v58.f64[0]), xmmword_18FECD220, v58, 1), xmmword_18FECD210, _D27), xmmword_18FECD200, _D29), xmmword_18FECD220, _D28), xmmword_18FECD210, _D26), xmmword_18FECD200, v73.f64[0]), xmmword_18FECD220, v73, 1), vdupq_n_s64(0x408FF80000000000uLL));
          __asm { FMOV            V21.2D, #0.25 }

          v82 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v84, _Q21)))), 0x20000000200);
        }

        else
        {
          v82 = 0;
        }

        *v54 = *v54 & ~(1023 << v70) | (((_D29 * 0.504129412 + _D27 * 0.256788235 + _D28 * 0.0979058824) * 1023.0 + 64.0) << v70);
        if (v52 == 2)
        {
          v52 = 0;
        }

        else
        {
          ++v52;
        }

        if (v46)
        {
          v86 = *(&v246 + v53);
          *v45 = *v45 & ~(1023 << v86) | (v82.i32[0] << v86);
          v87 = (v45 + ((v86 >> 2) & 0x3C));
          if (v53 == 2)
          {
            v88 = 0;
          }

          else
          {
            v88 = v53 + 1;
          }

          v89 = *(&v246 + v88);
          *v87 = *v87 & ~(1023 << v89) | (v82.i32[1] << v89);
          v45 = (v87 + ((v89 >> 2) & 0x3C));
          if (v88 == 2)
          {
            v53 = 0;
          }

          else
          {
            v53 = v88 + 1;
          }
        }

        v48 += 4;
        v50 = &v55[v70 >> 4];
        v49 += 4;
        ++v46;
        v47 += 8;
        v51 = &v54[v70 >> 4];
        v43 += 8;
      }

      while (v31 != v46);
      if (v31 >= v26)
      {
        v192 = (v47 + v40);
        v191 = (v43 + v40);
        v95 = v31;
      }

      else
      {
        v234 = v37;
        v235 = v36;
        v90 = 0;
        v233 = v70 >> 2;
        v91 = (v70 >> 2) & 0x3C;
        v92 = v54 + v91;
        v93 = v55 + v91;
        v94 = v40;
        v95 = v31;
        do
        {
          _H20 = *(v47 + v94);
          _H21 = *(v47 + v94 + 2);
          _H22 = *(v47 + v94 + 4);
          __asm
          {
            FCVT            D27, H20
            FCVT            D28, H21
            FCVT            D29, H22
          }

          _H21 = *(v47 + v94 + 8);
          _H22 = *(v47 + v94 + 10);
          _H23 = *(v47 + v94 + 12);
          __asm
          {
            FCVT            D30, H21
            FCVT            D31, H22
            FCVT            D26, H23
          }

          _H22 = *(v43 + v94);
          _H23 = *(v43 + v94 + 2);
          _H8 = *(v43 + v94 + 4);
          __asm
          {
            FCVT            D25, H22
            FCVT            D24, H23
            FCVT            D23, H8
          }

          _H21 = *(v43 + v94 + 8);
          v115 = ((_D28 * 0.504129412 + _D27 * 0.256788235 + _D29 * 0.0979058824) * 1023.0 + 64.0);
          _H20 = *(v43 + v94 + 10);
          _H10 = *(v43 + v94 + 12);
          __asm
          {
            FCVT            D22, H21
            FCVT            D21, H20
          }

          v120 = ((_D31 * 0.504129412 + _D30 * 0.256788235 + _D26 * 0.0979058824) * 1023.0 + 64.0);
          __asm { FCVT            D20, H10 }

          v122 = ((_D24 * 0.504129412 + _D25 * 0.256788235 + _D23 * 0.0979058824) * 1023.0 + 64.0);
          v123 = ((_D21 * 0.504129412 + _D22 * 0.256788235 + _D20 * 0.0979058824) * 1023.0 + 64.0);
          v124 = _D28 * -0.29099269 + _D27 * -0.148222996 + _D29 * 0.439215686 + _D30 * -0.148222996;
          v125 = _D28 * -0.367788675 + _D27 * 0.439215686 + _D29 * -0.0714270118 + _D30 * 0.439215686;
          v126 = v124 + _D31 * -0.29099269;
          _D27 = v125 + _D31 * -0.367788675;
          LOWORD(_D29) = *(v47 + v94 + 16);
          LOWORD(_D31) = *(v47 + v94 + 18);
          _H9 = *(v47 + v94 + 20);
          __asm { FCVT            D30, H29 }

          v130 = v126 + _D26 * 0.439215686;
          __asm
          {
            FCVT            D8, H31
            FCVT            D31, H9
          }

          v133 = _D27 + _D26 * -0.0714270118;
          v134 = ((_D8 * 0.504129412 + _D30 * 0.256788235 + _D31 * 0.0979058824) * 1023.0 + 64.0);
          LOWORD(_D26) = *(v47 + v94 + 24);
          LOWORD(_D27) = *(v47 + v94 + 26);
          _D28 = v130 + _D25 * -0.148222996;
          LOWORD(_D29) = *(v47 + v94 + 28);
          __asm
          {
            FCVT            D26, H26
            FCVT            D27, H27
          }

          v138 = v133 + _D25 * 0.439215686;
          __asm { FCVT            D25, H29 }

          v140 = ((_D27 * 0.504129412 + _D26 * 0.256788235 + _D25 * 0.0979058824) * 1023.0 + 64.0);
          v141 = _D28 + _D24 * -0.29099269;
          LOWORD(_D28) = *(v43 + v94 + 16);
          _H11 = *(v43 + v94 + 18);
          _H12 = *(v43 + v94 + 20);
          __asm
          {
            FCVT            D29, H28
            FCVT            D28, H11
          }

          v146 = v138 + _D24 * -0.367788675;
          __asm { FCVT            D24, H12 }

          v148 = v141 + _D23 * 0.439215686;
          _H11 = *(v43 + v94 + 24);
          _H12 = *(v43 + v94 + 26);
          _H13 = *(v43 + v94 + 28);
          v152 = v146 + _D23 * -0.0714270118;
          __asm
          {
            FCVT            D9, H11
            FCVT            D11, H12
            FCVT            D13, H13
          }

          v156 = v148 + _D22 * -0.148222996;
          v157 = v152 + _D22 * 0.439215686;
          v158 = _D8 * -0.29099269 + _D30 * -0.148222996;
          v159 = _D8 * -0.367788675 + _D30 * 0.439215686;
          v160 = v156 + _D21 * -0.29099269;
          v161 = v157 + _D21 * -0.367788675;
          _D22 = v159 + _D31 * -0.0714270118;
          v163 = &v45[v90 / 4];
          v164 = v115 | (v120 << 10);
          v165 = &v92[v90];
          _D30 = v160 + _D20 * 0.439215686;
          v167 = v161 + _D20 * -0.0714270118;
          v168 = &v93[v90];
          *v168 = v164 | (v134 << 20);
          *v165 = v122 | (v123 << 10) | (((_D28 * 0.504129412 + _D29 * 0.256788235 + _D24 * 0.0979058824) * 1023.0 + 64.0) << 20);
          v169 = (v158 + _D31 * 0.439215686 + _D26 * -0.148222996 + _D27 * -0.29099269 + _D25 * 0.439215686 + _D29 * -0.148222996 + _D28 * -0.29099269 + _D24 * 0.439215686 + _D9 * -0.148222996 + _D11 * -0.29099269 + _D13 * 0.439215686) * 1023.0;
          v170 = v167 * 1023.0 * 0.25;
          _D20 = _D22 + _D26 * 0.439215686 + _D27 * -0.367788675 + _D25 * -0.0714270118 + _D29 * 0.439215686 + _D28 * -0.367788675 + _D24 * -0.0714270118 + _D9 * 0.439215686 + _D11 * -0.367788675 + _D13 * -0.0714270118;
          _D25 = v169 * 0.25;
          v173 = _D20 * 1023.0;
          LOWORD(_D20) = *(v47 + v94 + 32);
          LOWORD(_D22) = *(v47 + v94 + 34);
          LOWORD(_D24) = *(v47 + v94 + 36);
          __asm { FCVT            D20, H20 }

          _D26 = v173 * 0.25;
          __asm
          {
            FCVT            D21, H22
            FCVT            D22, H24
          }

          *&_D27 = _D30 * 1023.0 * 0.25;
          LOWORD(_D24) = *(v47 + v94 + 40);
          LOWORD(_D28) = *(v47 + v94 + 42);
          *&_D29 = v170;
          LOWORD(_D30) = *(v47 + v94 + 44);
          __asm
          {
            FCVT            D23, H24
            FCVT            D24, H28
          }

          *&_D25 = _D25;
          __asm { FCVT            D30, H30 }

          *&_D26 = _D26;
          v180 = v140 | (((_D21 * 0.504129412 + _D20 * 0.256788235 + _D22 * 0.0979058824) * 1023.0 + 64.0) << 10) | (((_D24 * 0.504129412 + _D23 * 0.256788235 + _D30 * 0.0979058824) * 1023.0 + 64.0) << 20);
          LOWORD(_D28) = *(v43 + v94 + 32);
          LOWORD(_D31) = *(v43 + v94 + 34);
          v181 = llroundf(*&_D27);
          LOWORD(_D27) = *(v43 + v94 + 36);
          __asm
          {
            FCVT            D28, H28
            FCVT            D31, H31
          }

          v184 = llroundf(*&_D29);
          __asm { FCVT            D27, H27 }

          v185 = llroundf(*&_D25);
          LOWORD(_D25) = *(v43 + v94 + 40);
          LOWORD(_D29) = *(v43 + v94 + 42);
          v186 = llroundf(*&_D26);
          LOWORD(_D26) = *(v43 + v94 + 44);
          __asm
          {
            FCVT            D25, H25
            FCVT            D29, H29
            FCVT            D26, H26
          }

          *&v160 = (_D21 * -0.29099269 + _D20 * -0.148222996 + _D22 * 0.439215686 + _D23 * -0.148222996 + _D24 * -0.29099269 + _D30 * 0.439215686 + _D28 * -0.148222996 + _D31 * -0.29099269 + _D27 * 0.439215686 + _D25 * -0.148222996 + _D29 * -0.29099269 + _D26 * 0.439215686) * 1023.0 * 0.25;
          *v163 = ((v184 << 10) + 0x80000) | (v181 + 512) | ((v185 << 20) + 0x20000000);
          *&_D20 = (_D21 * -0.367788675 + _D20 * 0.439215686 + _D22 * -0.0714270118 + _D23 * 0.439215686 + _D24 * -0.367788675 + _D30 * -0.0714270118 + _D28 * 0.439215686 + _D31 * -0.367788675 + _D27 * -0.0714270118 + _D25 * 0.439215686 + _D29 * -0.367788675 + _D26 * -0.0714270118) * 1023.0 * 0.25;
          v168[1] = v180;
          v165[1] = ((_D11 * 0.504129412 + _D9 * 0.256788235 + _D13 * 0.0979058824) * 1023.0 + 64.0) | (((_D31 * 0.504129412 + _D28 * 0.256788235 + _D27 * 0.0979058824) * 1023.0 + 64.0) << 10) | (((_D29 * 0.504129412 + _D25 * 0.256788235 + _D26 * 0.0979058824) * 1023.0 + 64.0) << 20);
          v163[1] = ((llroundf(*&_D20) << 20) + 0x20000000) | (v186 + 512) | ((llroundf(*&v160) << 10) + 0x80000);
          v95 += 6;
          v90 += 8;
          v94 += 48;
        }

        while (v95 < v26);
        v45 = (v45 + v90);
        v21 = v232;
        v190 = v233 & 0x3C;
        v51 = (v54 + v190 + v90);
        v50 = (v55 + v190 + v90);
        v191 = (v43 + v94);
        v192 = (v47 + v94);
        v36 = v235;
        v29 = v231;
        v30 = v230;
        v37 = v234;
      }

      if (v95 < v21)
      {
        v193 = 0;
        v194 = v192;
        v195 = v191;
        v196 = v26 % 3;
        do
        {
          if (v95)
          {
            v201 = &v192[v193 - 4];
            v197 = &v192[v193 - 3];
            v198 = &v192[v193 - 2];
            _H20 = v192[v193];
            LODWORD(_D22) = *&v192[v193 + 1];
            __asm { FCVT            D21, H20 }

            v199 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
          }

          else
          {
            v197 = v194 + 1;
            v198 = v194 + 2;
            v199 = 0uLL;
            _D21 = 0.0;
            v201 = v194;
          }

          _H23 = *v198;
          _H24 = *v197;
          _H22 = *v201;
          __asm
          {
            FCVT            D22, H22
            FCVT            D24, H24
            FCVT            D23, H23
          }

          v209 = *(&v246 + v196);
          *v50 = (((_D24 * 0.504129412 + _D22 * 0.256788235 + _D23 * 0.0979058824) * 1023.0 + 64.0) << v209) | *v50 & ~(1023 << v209);
          if (v95)
          {
            v214 = &v191[v193 - 4];
            v210 = &v191[v193 - 3];
            v211 = &v191[v193 - 2];
            _H25 = v191[v193];
            LODWORD(_D27) = *&v191[v193 + 1];
            __asm { FCVT            D26, H25 }

            v212 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
          }

          else
          {
            v210 = v195 + 1;
            v211 = v195 + 2;
            v212 = 0uLL;
            _D26 = 0.0;
            v214 = v195;
          }

          _H28 = *v211;
          _H29 = *v210;
          _H27 = *v214;
          __asm
          {
            FCVT            D27, H27
            FCVT            D29, H29
            FCVT            D28, H28
          }

          if (v95)
          {
            v222 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD200, _D24), xmmword_18FECD210, _D22), xmmword_18FECD220, _D23), xmmword_18FECD210, _D21), xmmword_18FECD200, v199.f64[0]), xmmword_18FECD220, v199, 1), xmmword_18FECD210, _D27), xmmword_18FECD200, _D29), xmmword_18FECD220, _D28), xmmword_18FECD210, _D26), xmmword_18FECD200, v212.f64[0]), xmmword_18FECD220, v212, 1), vdupq_n_s64(0x408FF80000000000uLL));
            __asm { FMOV            V21.2D, #0.25 }

            v221 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v222, _Q21)))), 0x20000000200);
          }

          else
          {
            v221 = 0;
          }

          HIDWORD(_D22) = 1078984704;
          *v51 = *v51 & ~(1023 << v209) | (((_D29 * 0.504129412 + _D27 * 0.256788235 + _D28 * 0.0979058824) * 1023.0 + 64.0) << v209);
          if (v196 == 2)
          {
            v196 = 0;
          }

          else
          {
            ++v196;
          }

          if (v95)
          {
            v224 = *(&v246 + v53);
            *v45 = *v45 & ~(1023 << v224) | (v221.i32[0] << v224);
            v225 = (v45 + ((v224 >> 2) & 0x3C));
            if (v53 == 2)
            {
              v226 = 0;
            }

            else
            {
              v226 = v53 + 1;
            }

            v227 = *(&v246 + v226);
            *v225 = *v225 & ~(1023 << v227) | (v221.i32[1] << v227);
            v45 = (v225 + ((v227 >> 2) & 0x3C));
            if (v226 == 2)
            {
              v53 = 0;
            }

            else
            {
              v53 = v226 + 1;
            }
          }

          v194 += 4;
          v228 = v209 >> 4;
          v50 += v228;
          v195 += 4;
          ++v95;
          v193 += 4;
          v51 += v228;
        }

        while (v245 != v95);
      }

      v41 = &v243[v239];
      v42 = &v242[v239];
      v36 += 4 * v238;
      ++v27;
      v37 += v238;
      v39 = v244 + v236;
      v43 = v241 + v236;
      v45 = &v240[v237];
    }

    while (v27 != v29);
  }

  return 0;
}

uint64_t vt_Copy_RGhA_pf20ITU2020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v242 = 1313280;
  v10 = *(a2 + 40);
  v11 = (v10 & 1) + v10;
  v12 = (*(a2 + 32) & 1) + *(a2 + 32);
  v13 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v14 = (*(a2 + 24) + v10) & 0xFFFFFFFE;
  v15 = (*(a6 + 40) & 1) + *(a6 + 40);
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v19 = v13 - v12;
  v20 = v17 - v16;
  if (v13 - v12 >= v17 - v16)
  {
    v21 = v17 - v16;
  }

  else
  {
    v21 = v13 - v12;
  }

  if (v14 - v11 >= v18 - v15)
  {
    v22 = v18 - v15;
  }

  else
  {
    v22 = v14 - v11;
  }

  v23 = v17 % 6;
  _CF = v21 >= v23;
  v25 = v21 - v23;
  if (!_CF)
  {
    v25 = 0;
  }

  if (v22 >= 2)
  {
    v26 = 0;
    v27 = v16 / 3;
    v28 = v22 >> 1;
    v29 = v16 % 3;
    v30 = 6 * (v16 / 6) - v16 + 6;
    v31 = a8[1];
    v32 = a7[1] + v31 * (v15 >> 1);
    v33 = *a7 + *a8 * v15 + 4 * v27;
    v34 = (v33 + *a8);
    v35 = *a3;
    v36 = *a4;
    v37 = *a3 + *a4 * v11;
    v38 = 8 * v12;
    v39 = (v37 + 8 * v12);
    v40 = (v39 + *a4);
    v235 = v36 & 0x7FFFFFFFFFFFFFFFLL;
    v234 = (*a8 >> 1) & 0x7FFFFFFFFFFFFFFELL;
    v233 = v31 >> 2;
    v232 = 2 * v36;
    v41 = v35 + v36 + v36 * (v10 + (v10 & 1));
    if (v20 >= v19)
    {
      v42 = v19;
    }

    else
    {
      v42 = v20;
    }

    v241 = v42;
    v43 = (v32 + 4 * v27);
    v228 = v28;
    v229 = v21;
    v227 = v29;
    do
    {
      v44 = 0;
      v237 = v41;
      v238 = v40;
      v239 = v39;
      v240 = v37;
      v45 = v37;
      v46 = v39;
      v47 = v40;
      v48 = v33;
      v49 = v34;
      v236 = v43;
      v50 = v29;
      v51 = v29;
      do
      {
        v52 = v49;
        v53 = v48;
        if (v44)
        {
          v58 = (v45 + v38 - 8);
          v54 = (v45 + v38 - 6);
          v55 = (v45 + v38 - 4);
          _H20 = *(v45 + v38);
          LODWORD(_D22) = *(v45 + v38 + 2);
          __asm { FCVT            D21, H20 }

          v56 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
        }

        else
        {
          v54 = v46 + 1;
          v55 = v46 + 2;
          v56 = 0uLL;
          _D21 = 0.0;
          v58 = v46;
        }

        _H22 = *v58;
        _H23 = *v54;
        _H25 = *v55;
        __asm
        {
          FCVT            D22, H22
          FCVT            D24, H23
          FCVT            D23, H25
        }

        v68 = *(&v242 + v50);
        *v48 = (((_D24 * 0.677998 + _D22 * 0.2627 + _D23 * 0.059302) * 1023.0 + 0.0) << v68) | *v48 & ~(1023 << v68);
        if (v44)
        {
          v73 = (v41 + v38 - 8);
          v69 = (v41 + v38 - 6);
          v70 = (v41 + v38 - 4);
          _H25 = *(v41 + v38);
          LODWORD(_D27) = *(v41 + v38 + 2);
          __asm { FCVT            D26, H25 }

          v71 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
        }

        else
        {
          v69 = v47 + 1;
          v70 = v47 + 2;
          v71 = 0uLL;
          _D26 = 0.0;
          v73 = v47;
        }

        _H28 = *v70;
        _H29 = *v69;
        _H27 = *v73;
        __asm
        {
          FCVT            D27, H27
          FCVT            D29, H29
          FCVT            D28, H28
        }

        if (v44)
        {
          v81 = vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD230, _D24), xmmword_18FECD240, _D22);
          HIDWORD(_D22) = 1071644672;
          v82 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v81, xmmword_18FECD250, _D23), xmmword_18FECD240, _D21), xmmword_18FECD230, v56.f64[0]), xmmword_18FECD250, v56, 1), xmmword_18FECD240, _D27), xmmword_18FECD230, _D29), xmmword_18FECD250, _D28), xmmword_18FECD240, _D26), xmmword_18FECD230, v71.f64[0]), xmmword_18FECD250, v71, 1), vdupq_n_s64(0x408FF80000000000uLL));
          __asm { FMOV            V21.2D, #0.25 }

          v80 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v82, _Q21)))), 0x20000000200);
        }

        else
        {
          v80 = 0;
        }

        *v52 = *v52 & ~(1023 << v68) | (((_D29 * 0.677998 + _D27 * 0.2627 + _D28 * 0.059302) * 1023.0 + 0.0) << v68);
        if (v50 == 2)
        {
          v50 = 0;
        }

        else
        {
          ++v50;
        }

        if (v44)
        {
          v84 = *(&v242 + v51);
          *v43 = *v43 & ~(1023 << v84) | (v80.i32[0] << v84);
          v85 = (v43 + ((v84 >> 2) & 0x3C));
          if (v51 == 2)
          {
            v86 = 0;
          }

          else
          {
            v86 = v51 + 1;
          }

          v87 = *(&v242 + v86);
          *v85 = *v85 & ~(1023 << v87) | (v80.i32[1] << v87);
          v43 = (v85 + ((v87 >> 2) & 0x3C));
          if (v86 == 2)
          {
            v51 = 0;
          }

          else
          {
            v51 = v86 + 1;
          }
        }

        v46 += 4;
        v48 += v68 >> 4;
        v47 += 4;
        ++v44;
        v45 += 8;
        v49 = &v52[v68 >> 4];
        v41 += 8;
      }

      while (v30 != v44);
      if (v30 >= v25)
      {
        v190 = (v45 + v38);
        v189 = (v41 + v38);
        v93 = v30;
      }

      else
      {
        v231 = v26;
        v88 = 0;
        v230 = v68 >> 2;
        v89 = (v68 >> 2) & 0x3C;
        v90 = v52 + v89;
        v91 = v53 + v89;
        v92 = v38;
        v93 = v30;
        do
        {
          _H20 = *(v45 + v92);
          _H21 = *(v45 + v92 + 2);
          _H22 = *(v45 + v92 + 4);
          __asm
          {
            FCVT            D27, H20
            FCVT            D28, H21
            FCVT            D29, H22
          }

          _H21 = *(v45 + v92 + 8);
          _H22 = *(v45 + v92 + 10);
          _H23 = *(v45 + v92 + 12);
          __asm
          {
            FCVT            D30, H21
            FCVT            D31, H22
            FCVT            D26, H23
          }

          _H22 = *(v41 + v92);
          _H23 = *(v41 + v92 + 2);
          _H8 = *(v41 + v92 + 4);
          __asm
          {
            FCVT            D25, H22
            FCVT            D24, H23
            FCVT            D23, H8
          }

          _H21 = *(v41 + v92 + 8);
          v113 = ((_D28 * 0.677998 + _D27 * 0.2627 + _D29 * 0.059302) * 1023.0 + 0.0);
          _H20 = *(v41 + v92 + 10);
          _H10 = *(v41 + v92 + 12);
          __asm
          {
            FCVT            D22, H21
            FCVT            D21, H20
          }

          v118 = ((_D31 * 0.677998 + _D30 * 0.2627 + _D26 * 0.059302) * 1023.0 + 0.0);
          __asm { FCVT            D20, H10 }

          v120 = ((_D24 * 0.677998 + _D25 * 0.2627 + _D23 * 0.059302) * 1023.0 + 0.0);
          v121 = ((_D21 * 0.677998 + _D22 * 0.2627 + _D20 * 0.059302) * 1023.0 + 0.0);
          v122 = _D28 * -0.36037 + _D27 * -0.13963 + _D29 * 0.5 + _D30 * -0.13963;
          v123 = _D28 * -0.459785 + _D27 * 0.5 + _D29 * -0.040215 + _D30 * 0.5;
          v124 = v122 + _D31 * -0.36037;
          _D27 = v123 + _D31 * -0.459785;
          LOWORD(_D29) = *(v45 + v92 + 16);
          LOWORD(_D31) = *(v45 + v92 + 18);
          _H9 = *(v45 + v92 + 20);
          __asm { FCVT            D30, H29 }

          v128 = v124 + _D26 * 0.5;
          __asm
          {
            FCVT            D8, H31
            FCVT            D31, H9
          }

          v131 = _D27 + _D26 * -0.040215;
          v132 = ((_D8 * 0.677998 + _D30 * 0.2627 + _D31 * 0.059302) * 1023.0 + 0.0);
          LOWORD(_D26) = *(v45 + v92 + 24);
          LOWORD(_D27) = *(v45 + v92 + 26);
          _D28 = v128 + _D25 * -0.13963;
          LOWORD(_D29) = *(v45 + v92 + 28);
          __asm
          {
            FCVT            D26, H26
            FCVT            D27, H27
          }

          v136 = v131 + _D25 * 0.5;
          __asm { FCVT            D25, H29 }

          v138 = ((_D27 * 0.677998 + _D26 * 0.2627 + _D25 * 0.059302) * 1023.0 + 0.0);
          v139 = _D28 + _D24 * -0.36037;
          LOWORD(_D28) = *(v41 + v92 + 16);
          _H11 = *(v41 + v92 + 18);
          _H12 = *(v41 + v92 + 20);
          __asm
          {
            FCVT            D29, H28
            FCVT            D28, H11
          }

          v144 = v136 + _D24 * -0.459785;
          __asm { FCVT            D24, H12 }

          v146 = v139 + _D23 * 0.5;
          _H11 = *(v41 + v92 + 24);
          _H12 = *(v41 + v92 + 26);
          _H13 = *(v41 + v92 + 28);
          v150 = v144 + _D23 * -0.040215;
          __asm
          {
            FCVT            D9, H11
            FCVT            D11, H12
            FCVT            D13, H13
          }

          v154 = v146 + _D22 * -0.13963;
          v155 = v150 + _D22 * 0.5;
          v156 = _D8 * -0.36037 + _D30 * -0.13963;
          v157 = _D8 * -0.459785 + _D30 * 0.5;
          v158 = v154 + _D21 * -0.36037;
          v159 = v155 + _D21 * -0.459785;
          _D22 = v157 + _D31 * -0.040215;
          v161 = &v43[v88 / 4];
          v162 = v113 | (v118 << 10);
          v163 = &v90[v88];
          _D30 = v158 + _D20 * 0.5;
          v165 = v159 + _D20 * -0.040215;
          v166 = &v91[v88];
          *v166 = v162 | (v132 << 20);
          *v163 = v120 | (v121 << 10) | (((_D28 * 0.677998 + _D29 * 0.2627 + _D24 * 0.059302) * 1023.0 + 0.0) << 20);
          v167 = (v156 + _D31 * 0.5 + _D26 * -0.13963 + _D27 * -0.36037 + _D25 * 0.5 + _D29 * -0.13963 + _D28 * -0.36037 + _D24 * 0.5 + _D9 * -0.13963 + _D11 * -0.36037 + _D13 * 0.5) * 1023.0;
          v168 = v165 * 1023.0 * 0.25;
          _D20 = _D22 + _D26 * 0.5 + _D27 * -0.459785 + _D25 * -0.040215 + _D29 * 0.5 + _D28 * -0.459785 + _D24 * -0.040215 + _D9 * 0.5 + _D11 * -0.459785 + _D13 * -0.040215;
          _D25 = v167 * 0.25;
          v171 = _D20 * 1023.0;
          LOWORD(_D20) = *(v45 + v92 + 32);
          LOWORD(_D22) = *(v45 + v92 + 34);
          LOWORD(_D24) = *(v45 + v92 + 36);
          __asm { FCVT            D20, H20 }

          _D26 = v171 * 0.25;
          __asm
          {
            FCVT            D21, H22
            FCVT            D22, H24
          }

          *&_D27 = _D30 * 1023.0 * 0.25;
          LOWORD(_D24) = *(v45 + v92 + 40);
          LOWORD(_D28) = *(v45 + v92 + 42);
          *&_D29 = v168;
          LOWORD(_D30) = *(v45 + v92 + 44);
          __asm
          {
            FCVT            D23, H24
            FCVT            D24, H28
          }

          *&_D25 = _D25;
          __asm { FCVT            D30, H30 }

          *&_D26 = _D26;
          v178 = v138 | (((_D21 * 0.677998 + _D20 * 0.2627 + _D22 * 0.059302) * 1023.0 + 0.0) << 10) | (((_D24 * 0.677998 + _D23 * 0.2627 + _D30 * 0.059302) * 1023.0 + 0.0) << 20);
          LOWORD(_D28) = *(v41 + v92 + 32);
          LOWORD(_D31) = *(v41 + v92 + 34);
          v179 = llroundf(*&_D27);
          LOWORD(_D27) = *(v41 + v92 + 36);
          __asm
          {
            FCVT            D28, H28
            FCVT            D31, H31
          }

          v182 = llroundf(*&_D29);
          __asm { FCVT            D27, H27 }

          v183 = llroundf(*&_D25);
          LOWORD(_D25) = *(v41 + v92 + 40);
          LOWORD(_D29) = *(v41 + v92 + 42);
          v184 = llroundf(*&_D26);
          LOWORD(_D26) = *(v41 + v92 + 44);
          __asm
          {
            FCVT            D25, H25
            FCVT            D29, H29
            FCVT            D26, H26
          }

          *&v158 = (_D21 * -0.36037 + _D20 * -0.13963 + _D22 * 0.5 + _D23 * -0.13963 + _D24 * -0.36037 + _D30 * 0.5 + _D28 * -0.13963 + _D31 * -0.36037 + _D27 * 0.5 + _D25 * -0.13963 + _D29 * -0.36037 + _D26 * 0.5) * 1023.0 * 0.25;
          *v161 = ((v182 << 10) + 0x80000) | (v179 + 512) | ((v183 << 20) + 0x20000000);
          *&_D20 = (_D21 * -0.459785 + _D20 * 0.5 + _D22 * -0.040215 + _D23 * 0.5 + _D24 * -0.459785 + _D30 * -0.040215 + _D28 * 0.5 + _D31 * -0.459785 + _D27 * -0.040215 + _D25 * 0.5 + _D29 * -0.459785 + _D26 * -0.040215) * 1023.0 * 0.25;
          v166[1] = v178;
          v163[1] = ((_D11 * 0.677998 + _D9 * 0.2627 + _D13 * 0.059302) * 1023.0 + 0.0) | (((_D31 * 0.677998 + _D28 * 0.2627 + _D27 * 0.059302) * 1023.0 + 0.0) << 10) | (((_D29 * 0.677998 + _D25 * 0.2627 + _D26 * 0.059302) * 1023.0 + 0.0) << 20);
          v161[1] = ((llroundf(*&_D20) << 20) + 0x20000000) | (v184 + 512) | ((llroundf(*&v158) << 10) + 0x80000);
          v93 += 6;
          v88 += 8;
          v92 += 48;
        }

        while (v93 < v25);
        v43 = (v43 + v88);
        v21 = v229;
        v188 = v230 & 0x3C;
        v49 = (v52 + v188 + v88);
        v48 = (v53 + v188 + v88);
        v189 = (v41 + v92);
        v190 = (v45 + v92);
        v26 = v231;
        v28 = v228;
        v29 = v227;
      }

      if (v93 < v21)
      {
        v191 = 0;
        v192 = v190;
        v193 = v189;
        v194 = v25 % 3;
        do
        {
          if (v93)
          {
            v199 = &v190[v191 - 4];
            v195 = &v190[v191 - 3];
            v196 = &v190[v191 - 2];
            _H20 = v190[v191];
            LODWORD(_D22) = *&v190[v191 + 1];
            __asm { FCVT            D21, H20 }

            v197 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
          }

          else
          {
            v195 = v192 + 1;
            v196 = v192 + 2;
            v197 = 0uLL;
            _D21 = 0.0;
            v199 = v192;
          }

          _H23 = *v196;
          _H24 = *v195;
          _H22 = *v199;
          __asm
          {
            FCVT            D22, H22
            FCVT            D24, H24
            FCVT            D23, H23
          }

          v206 = *(&v242 + v194);
          *v48 = (((_D24 * 0.677998 + _D22 * 0.2627 + _D23 * 0.059302) * 1023.0 + 0.0) << v206) | *v48 & ~(1023 << v206);
          if (v93)
          {
            v211 = &v189[v191 - 4];
            v207 = &v189[v191 - 3];
            v208 = &v189[v191 - 2];
            _H25 = v189[v191];
            LODWORD(_D27) = *&v189[v191 + 1];
            __asm { FCVT            D26, H25 }

            v209 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
          }

          else
          {
            v207 = v193 + 1;
            v208 = v193 + 2;
            v209 = 0uLL;
            _D26 = 0.0;
            v211 = v193;
          }

          _H28 = *v208;
          _H29 = *v207;
          _H27 = *v211;
          __asm
          {
            FCVT            D27, H27
            FCVT            D29, H29
            FCVT            D28, H28
          }

          if (v93)
          {
            v219 = vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD230, _D24), xmmword_18FECD240, _D22);
            HIDWORD(_D22) = 1071644672;
            v220 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v219, xmmword_18FECD250, _D23), xmmword_18FECD240, _D21), xmmword_18FECD230, v197.f64[0]), xmmword_18FECD250, v197, 1), xmmword_18FECD240, _D27), xmmword_18FECD230, _D29), xmmword_18FECD250, _D28), xmmword_18FECD240, _D26), xmmword_18FECD230, v209.f64[0]), xmmword_18FECD250, v209, 1), vdupq_n_s64(0x408FF80000000000uLL));
            __asm { FMOV            V21.2D, #0.25 }

            v218 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v220, _Q21)))), 0x20000000200);
          }

          else
          {
            v218 = 0;
          }

          *v49 = *v49 & ~(1023 << v206) | (((_D29 * 0.677998 + _D27 * 0.2627 + _D28 * 0.059302) * 1023.0 + 0.0) << v206);
          if (v194 == 2)
          {
            v194 = 0;
          }

          else
          {
            ++v194;
          }

          if (v93)
          {
            v222 = *(&v242 + v51);
            *v43 = *v43 & ~(1023 << v222) | (v218.i32[0] << v222);
            v223 = (v43 + ((v222 >> 2) & 0x3C));
            if (v51 == 2)
            {
              v224 = 0;
            }

            else
            {
              v224 = v51 + 1;
            }

            v225 = *(&v242 + v224);
            *v223 = *v223 & ~(1023 << v225) | (v218.i32[1] << v225);
            v43 = (v223 + ((v225 >> 2) & 0x3C));
            if (v224 == 2)
            {
              v51 = 0;
            }

            else
            {
              v51 = v224 + 1;
            }
          }

          v192 += 4;
          v48 += v206 >> 4;
          v193 += 4;
          ++v93;
          v191 += 4;
          v49 += v206 >> 4;
        }

        while (v241 != v93);
      }

      v39 = &v239[v235];
      v40 = &v238[v235];
      v33 += 4 * v234;
      ++v26;
      v34 += v234;
      v37 = v240 + v232;
      v41 = v237 + v232;
      v43 = &v236[v233];
    }

    while (v26 != v28);
  }

  return 0;
}

uint64_t vt_Copy_RGhA_pf20ITU709(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v242 = 1313280;
  v10 = *(a2 + 40);
  v11 = (v10 & 1) + v10;
  v12 = (*(a2 + 32) & 1) + *(a2 + 32);
  v13 = (*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE;
  v14 = (*(a2 + 24) + v10) & 0xFFFFFFFE;
  v15 = (*(a6 + 40) & 1) + *(a6 + 40);
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v19 = v13 - v12;
  v20 = v17 - v16;
  if (v13 - v12 >= v17 - v16)
  {
    v21 = v17 - v16;
  }

  else
  {
    v21 = v13 - v12;
  }

  if (v14 - v11 >= v18 - v15)
  {
    v22 = v18 - v15;
  }

  else
  {
    v22 = v14 - v11;
  }

  v23 = v17 % 6;
  _CF = v21 >= v23;
  v25 = v21 - v23;
  if (!_CF)
  {
    v25 = 0;
  }

  if (v22 >= 2)
  {
    v26 = 0;
    v27 = v16 / 3;
    v28 = v22 >> 1;
    v29 = v16 % 3;
    v30 = 6 * (v16 / 6) - v16 + 6;
    v31 = a8[1];
    v32 = a7[1] + v31 * (v15 >> 1);
    v33 = *a7 + *a8 * v15 + 4 * v27;
    v34 = (v33 + *a8);
    v35 = *a3;
    v36 = *a4;
    v37 = *a3 + *a4 * v11;
    v38 = 8 * v12;
    v39 = (v37 + 8 * v12);
    v40 = (v39 + *a4);
    v235 = v36 & 0x7FFFFFFFFFFFFFFFLL;
    v234 = (*a8 >> 1) & 0x7FFFFFFFFFFFFFFELL;
    v233 = v31 >> 2;
    v232 = 2 * v36;
    v41 = v35 + v36 + v36 * (v10 + (v10 & 1));
    if (v20 >= v19)
    {
      v42 = v19;
    }

    else
    {
      v42 = v20;
    }

    v241 = v42;
    v43 = (v32 + 4 * v27);
    v228 = v28;
    v229 = v21;
    v227 = v29;
    do
    {
      v44 = 0;
      v237 = v41;
      v238 = v40;
      v239 = v39;
      v240 = v37;
      v45 = v37;
      v46 = v39;
      v47 = v40;
      v48 = v33;
      v49 = v34;
      v236 = v43;
      v50 = v29;
      v51 = v29;
      do
      {
        v52 = v49;
        v53 = v48;
        if (v44)
        {
          v58 = (v45 + v38 - 8);
          v54 = (v45 + v38 - 6);
          v55 = (v45 + v38 - 4);
          _H20 = *(v45 + v38);
          LODWORD(_D22) = *(v45 + v38 + 2);
          __asm { FCVT            D21, H20 }

          v56 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
        }

        else
        {
          v54 = v46 + 1;
          v55 = v46 + 2;
          v56 = 0uLL;
          _D21 = 0.0;
          v58 = v46;
        }

        _H22 = *v58;
        _H23 = *v54;
        _H25 = *v55;
        __asm
        {
          FCVT            D22, H22
          FCVT            D24, H23
          FCVT            D23, H25
        }

        v68 = *(&v242 + v50);
        *v48 = (((_D24 * 0.7152 + _D22 * 0.2126 + _D23 * 0.0722) * 1023.0 + 0.0) << v68) | *v48 & ~(1023 << v68);
        if (v44)
        {
          v73 = (v41 + v38 - 8);
          v69 = (v41 + v38 - 6);
          v70 = (v41 + v38 - 4);
          _H25 = *(v41 + v38);
          LODWORD(_D27) = *(v41 + v38 + 2);
          __asm { FCVT            D26, H25 }

          v71 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
        }

        else
        {
          v69 = v47 + 1;
          v70 = v47 + 2;
          v71 = 0uLL;
          _D26 = 0.0;
          v73 = v47;
        }

        _H28 = *v70;
        _H29 = *v69;
        _H27 = *v73;
        __asm
        {
          FCVT            D27, H27
          FCVT            D29, H29
          FCVT            D28, H28
        }

        if (v44)
        {
          v81 = vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD260, _D24), xmmword_18FECD270, _D22);
          HIDWORD(_D22) = 1071644672;
          v82 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v81, xmmword_18FECD280, _D23), xmmword_18FECD270, _D21), xmmword_18FECD260, v56.f64[0]), xmmword_18FECD280, v56, 1), xmmword_18FECD270, _D27), xmmword_18FECD260, _D29), xmmword_18FECD280, _D28), xmmword_18FECD270, _D26), xmmword_18FECD260, v71.f64[0]), xmmword_18FECD280, v71, 1), vdupq_n_s64(0x408FF80000000000uLL));
          __asm { FMOV            V21.2D, #0.25 }

          v80 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v82, _Q21)))), 0x20000000200);
        }

        else
        {
          v80 = 0;
        }

        *v52 = *v52 & ~(1023 << v68) | (((_D29 * 0.7152 + _D27 * 0.2126 + _D28 * 0.0722) * 1023.0 + 0.0) << v68);
        if (v50 == 2)
        {
          v50 = 0;
        }

        else
        {
          ++v50;
        }

        if (v44)
        {
          v84 = *(&v242 + v51);
          *v43 = *v43 & ~(1023 << v84) | (v80.i32[0] << v84);
          v85 = (v43 + ((v84 >> 2) & 0x3C));
          if (v51 == 2)
          {
            v86 = 0;
          }

          else
          {
            v86 = v51 + 1;
          }

          v87 = *(&v242 + v86);
          *v85 = *v85 & ~(1023 << v87) | (v80.i32[1] << v87);
          v43 = (v85 + ((v87 >> 2) & 0x3C));
          if (v86 == 2)
          {
            v51 = 0;
          }

          else
          {
            v51 = v86 + 1;
          }
        }

        v46 += 4;
        v48 += v68 >> 4;
        v47 += 4;
        ++v44;
        v45 += 8;
        v49 = &v52[v68 >> 4];
        v41 += 8;
      }

      while (v30 != v44);
      if (v30 >= v25)
      {
        v190 = (v45 + v38);
        v189 = (v41 + v38);
        v93 = v30;
      }

      else
      {
        v231 = v26;
        v88 = 0;
        v230 = v68 >> 2;
        v89 = (v68 >> 2) & 0x3C;
        v90 = v52 + v89;
        v91 = v53 + v89;
        v92 = v38;
        v93 = v30;
        do
        {
          _H20 = *(v45 + v92);
          _H21 = *(v45 + v92 + 2);
          _H22 = *(v45 + v92 + 4);
          __asm
          {
            FCVT            D27, H20
            FCVT            D28, H21
            FCVT            D29, H22
          }

          _H21 = *(v45 + v92 + 8);
          _H22 = *(v45 + v92 + 10);
          _H23 = *(v45 + v92 + 12);
          __asm
          {
            FCVT            D30, H21
            FCVT            D31, H22
            FCVT            D26, H23
          }

          _H22 = *(v41 + v92);
          _H23 = *(v41 + v92 + 2);
          _H8 = *(v41 + v92 + 4);
          __asm
          {
            FCVT            D25, H22
            FCVT            D24, H23
            FCVT            D23, H8
          }

          _H21 = *(v41 + v92 + 8);
          v113 = ((_D28 * 0.7152 + _D27 * 0.2126 + _D29 * 0.0722) * 1023.0 + 0.0);
          _H20 = *(v41 + v92 + 10);
          _H10 = *(v41 + v92 + 12);
          __asm
          {
            FCVT            D22, H21
            FCVT            D21, H20
          }

          v118 = ((_D31 * 0.7152 + _D30 * 0.2126 + _D26 * 0.0722) * 1023.0 + 0.0);
          __asm { FCVT            D20, H10 }

          v120 = ((_D24 * 0.7152 + _D25 * 0.2126 + _D23 * 0.0722) * 1023.0 + 0.0);
          v121 = ((_D21 * 0.7152 + _D22 * 0.2126 + _D20 * 0.0722) * 1023.0 + 0.0);
          v122 = _D28 * -0.385428 + _D27 * -0.114572 + _D29 * 0.5 + _D30 * -0.114572;
          v123 = _D28 * -0.454153 + _D27 * 0.5 + _D29 * -0.045847 + _D30 * 0.5;
          v124 = v122 + _D31 * -0.385428;
          _D27 = v123 + _D31 * -0.454153;
          LOWORD(_D29) = *(v45 + v92 + 16);
          LOWORD(_D31) = *(v45 + v92 + 18);
          _H9 = *(v45 + v92 + 20);
          __asm { FCVT            D30, H29 }

          v128 = v124 + _D26 * 0.5;
          __asm
          {
            FCVT            D8, H31
            FCVT            D31, H9
          }

          v131 = _D27 + _D26 * -0.045847;
          v132 = ((_D8 * 0.7152 + _D30 * 0.2126 + _D31 * 0.0722) * 1023.0 + 0.0);
          LOWORD(_D26) = *(v45 + v92 + 24);
          LOWORD(_D27) = *(v45 + v92 + 26);
          _D28 = v128 + _D25 * -0.114572;
          LOWORD(_D29) = *(v45 + v92 + 28);
          __asm
          {
            FCVT            D26, H26
            FCVT            D27, H27
          }

          v136 = v131 + _D25 * 0.5;
          __asm { FCVT            D25, H29 }

          v138 = ((_D27 * 0.7152 + _D26 * 0.2126 + _D25 * 0.0722) * 1023.0 + 0.0);
          v139 = _D28 + _D24 * -0.385428;
          LOWORD(_D28) = *(v41 + v92 + 16);
          _H11 = *(v41 + v92 + 18);
          _H12 = *(v41 + v92 + 20);
          __asm
          {
            FCVT            D29, H28
            FCVT            D28, H11
          }

          v144 = v136 + _D24 * -0.454153;
          __asm { FCVT            D24, H12 }

          v146 = v139 + _D23 * 0.5;
          _H11 = *(v41 + v92 + 24);
          _H12 = *(v41 + v92 + 26);
          _H13 = *(v41 + v92 + 28);
          v150 = v144 + _D23 * -0.045847;
          __asm
          {
            FCVT            D9, H11
            FCVT            D11, H12
            FCVT            D13, H13
          }

          v154 = v146 + _D22 * -0.114572;
          v155 = v150 + _D22 * 0.5;
          v156 = _D8 * -0.385428 + _D30 * -0.114572;
          v157 = _D8 * -0.454153 + _D30 * 0.5;
          v158 = v154 + _D21 * -0.385428;
          v159 = v155 + _D21 * -0.454153;
          _D22 = v157 + _D31 * -0.045847;
          v161 = &v43[v88 / 4];
          v162 = v113 | (v118 << 10);
          v163 = &v90[v88];
          _D30 = v158 + _D20 * 0.5;
          v165 = v159 + _D20 * -0.045847;
          v166 = &v91[v88];
          *v166 = v162 | (v132 << 20);
          *v163 = v120 | (v121 << 10) | (((_D28 * 0.7152 + _D29 * 0.2126 + _D24 * 0.0722) * 1023.0 + 0.0) << 20);
          v167 = (v156 + _D31 * 0.5 + _D26 * -0.114572 + _D27 * -0.385428 + _D25 * 0.5 + _D29 * -0.114572 + _D28 * -0.385428 + _D24 * 0.5 + _D9 * -0.114572 + _D11 * -0.385428 + _D13 * 0.5) * 1023.0;
          v168 = v165 * 1023.0 * 0.25;
          _D20 = _D22 + _D26 * 0.5 + _D27 * -0.454153 + _D25 * -0.045847 + _D29 * 0.5 + _D28 * -0.454153 + _D24 * -0.045847 + _D9 * 0.5 + _D11 * -0.454153 + _D13 * -0.045847;
          _D25 = v167 * 0.25;
          v171 = _D20 * 1023.0;
          LOWORD(_D20) = *(v45 + v92 + 32);
          LOWORD(_D22) = *(v45 + v92 + 34);
          LOWORD(_D24) = *(v45 + v92 + 36);
          __asm { FCVT            D20, H20 }

          _D26 = v171 * 0.25;
          __asm
          {
            FCVT            D21, H22
            FCVT            D22, H24
          }

          *&_D27 = _D30 * 1023.0 * 0.25;
          LOWORD(_D24) = *(v45 + v92 + 40);
          LOWORD(_D28) = *(v45 + v92 + 42);
          *&_D29 = v168;
          LOWORD(_D30) = *(v45 + v92 + 44);
          __asm
          {
            FCVT            D23, H24
            FCVT            D24, H28
          }

          *&_D25 = _D25;
          __asm { FCVT            D30, H30 }

          *&_D26 = _D26;
          v178 = v138 | (((_D21 * 0.7152 + _D20 * 0.2126 + _D22 * 0.0722) * 1023.0 + 0.0) << 10) | (((_D24 * 0.7152 + _D23 * 0.2126 + _D30 * 0.0722) * 1023.0 + 0.0) << 20);
          LOWORD(_D28) = *(v41 + v92 + 32);
          LOWORD(_D31) = *(v41 + v92 + 34);
          v179 = llroundf(*&_D27);
          LOWORD(_D27) = *(v41 + v92 + 36);
          __asm
          {
            FCVT            D28, H28
            FCVT            D31, H31
          }

          v182 = llroundf(*&_D29);
          __asm { FCVT            D27, H27 }

          v183 = llroundf(*&_D25);
          LOWORD(_D25) = *(v41 + v92 + 40);
          LOWORD(_D29) = *(v41 + v92 + 42);
          v184 = llroundf(*&_D26);
          LOWORD(_D26) = *(v41 + v92 + 44);
          __asm
          {
            FCVT            D25, H25
            FCVT            D29, H29
            FCVT            D26, H26
          }

          *&v158 = (_D21 * -0.385428 + _D20 * -0.114572 + _D22 * 0.5 + _D23 * -0.114572 + _D24 * -0.385428 + _D30 * 0.5 + _D28 * -0.114572 + _D31 * -0.385428 + _D27 * 0.5 + _D25 * -0.114572 + _D29 * -0.385428 + _D26 * 0.5) * 1023.0 * 0.25;
          *v161 = ((v182 << 10) + 0x80000) | (v179 + 512) | ((v183 << 20) + 0x20000000);
          *&_D20 = (_D21 * -0.454153 + _D20 * 0.5 + _D22 * -0.045847 + _D23 * 0.5 + _D24 * -0.454153 + _D30 * -0.045847 + _D28 * 0.5 + _D31 * -0.454153 + _D27 * -0.045847 + _D25 * 0.5 + _D29 * -0.454153 + _D26 * -0.045847) * 1023.0 * 0.25;
          v166[1] = v178;
          v163[1] = ((_D11 * 0.7152 + _D9 * 0.2126 + _D13 * 0.0722) * 1023.0 + 0.0) | (((_D31 * 0.7152 + _D28 * 0.2126 + _D27 * 0.0722) * 1023.0 + 0.0) << 10) | (((_D29 * 0.7152 + _D25 * 0.2126 + _D26 * 0.0722) * 1023.0 + 0.0) << 20);
          v161[1] = ((llroundf(*&_D20) << 20) + 0x20000000) | (v184 + 512) | ((llroundf(*&v158) << 10) + 0x80000);
          v93 += 6;
          v88 += 8;
          v92 += 48;
        }

        while (v93 < v25);
        v43 = (v43 + v88);
        v21 = v229;
        v188 = v230 & 0x3C;
        v49 = (v52 + v188 + v88);
        v48 = (v53 + v188 + v88);
        v189 = (v41 + v92);
        v190 = (v45 + v92);
        v26 = v231;
        v28 = v228;
        v29 = v227;
      }

      if (v93 < v21)
      {
        v191 = 0;
        v192 = v190;
        v193 = v189;
        v194 = v25 % 3;
        do
        {
          if (v93)
          {
            v199 = &v190[v191 - 4];
            v195 = &v190[v191 - 3];
            v196 = &v190[v191 - 2];
            _H20 = v190[v191];
            LODWORD(_D22) = *&v190[v191 + 1];
            __asm { FCVT            D21, H20 }

            v197 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D22));
          }

          else
          {
            v195 = v192 + 1;
            v196 = v192 + 2;
            v197 = 0uLL;
            _D21 = 0.0;
            v199 = v192;
          }

          _H23 = *v196;
          _H24 = *v195;
          _H22 = *v199;
          __asm
          {
            FCVT            D22, H22
            FCVT            D24, H24
            FCVT            D23, H23
          }

          v206 = *(&v242 + v194);
          *v48 = (((_D24 * 0.7152 + _D22 * 0.2126 + _D23 * 0.0722) * 1023.0 + 0.0) << v206) | *v48 & ~(1023 << v206);
          if (v93)
          {
            v211 = &v189[v191 - 4];
            v207 = &v189[v191 - 3];
            v208 = &v189[v191 - 2];
            _H25 = v189[v191];
            LODWORD(_D27) = *&v189[v191 + 1];
            __asm { FCVT            D26, H25 }

            v209 = vcvtq_f64_f32(*&vcvtq_f32_f16(*&_D27));
          }

          else
          {
            v207 = v193 + 1;
            v208 = v193 + 2;
            v209 = 0uLL;
            _D26 = 0.0;
            v211 = v193;
          }

          _H28 = *v208;
          _H29 = *v207;
          _H27 = *v211;
          __asm
          {
            FCVT            D27, H27
            FCVT            D29, H29
            FCVT            D28, H28
          }

          if (v93)
          {
            v219 = vmlaq_n_f64(vmulq_n_f64(xmmword_18FECD260, _D24), xmmword_18FECD270, _D22);
            HIDWORD(_D22) = 1071644672;
            v220 = vmulq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v219, xmmword_18FECD280, _D23), xmmword_18FECD270, _D21), xmmword_18FECD260, v197.f64[0]), xmmword_18FECD280, v197, 1), xmmword_18FECD270, _D27), xmmword_18FECD260, _D29), xmmword_18FECD280, _D28), xmmword_18FECD270, _D26), xmmword_18FECD260, v209.f64[0]), xmmword_18FECD280, v209, 1), vdupq_n_s64(0x408FF80000000000uLL));
            __asm { FMOV            V21.2D, #0.25 }

            v218 = vadd_s32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v220, _Q21)))), 0x20000000200);
          }

          else
          {
            v218 = 0;
          }

          *v49 = *v49 & ~(1023 << v206) | (((_D29 * 0.7152 + _D27 * 0.2126 + _D28 * 0.0722) * 1023.0 + 0.0) << v206);
          if (v194 == 2)
          {
            v194 = 0;
          }

          else
          {
            ++v194;
          }

          if (v93)
          {
            v222 = *(&v242 + v51);
            *v43 = *v43 & ~(1023 << v222) | (v218.i32[0] << v222);
            v223 = (v43 + ((v222 >> 2) & 0x3C));
            if (v51 == 2)
            {
              v224 = 0;
            }

            else
            {
              v224 = v51 + 1;
            }

            v225 = *(&v242 + v224);
            *v223 = *v223 & ~(1023 << v225) | (v218.i32[1] << v225);
            v43 = (v223 + ((v225 >> 2) & 0x3C));
            if (v224 == 2)
            {
              v51 = 0;
            }

            else
            {
              v51 = v224 + 1;
            }
          }

          v192 += 4;
          v48 += v206 >> 4;
          v193 += 4;
          ++v93;
          v191 += 4;
          v49 += v206 >> 4;
        }

        while (v241 != v93);
      }

      v39 = &v239[v235];
      v40 = &v238[v235];
      v33 += 4 * v234;
      ++v26;
      v34 += v234;
      v37 = v240 + v232;
      v41 = v237 + v232;
      v43 = &v236[v233];
    }

    while (v26 != v28);
  }

  return 0;
}