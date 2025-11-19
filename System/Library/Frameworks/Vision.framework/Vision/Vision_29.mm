BOOL checkBridgeCrossing(uint64_t a1, int a2, int a3)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = a3 - a2;
  v6 = a3 >> 16;
  v7 = a2 >> 16;
  v8 = (a3 >> 16) - (a2 >> 16);
  if ((v5 & 0x80000000) != 0)
  {
    v16 = a2 - a3;
    if ((v8 & 0x80000000) != 0)
    {
      v22 = (a2 >> 16) - (a3 >> 16);
      LODWORD(v34) = 0;
      if (v5 > v8)
      {
        v35 = 2 * (v8 - v5);
        v36 = v8 + 2 * v16;
        do
        {
          v37 = &v4[2 * v34];
          *v37 = v3;
          *(v37 + 1) = v7;
          if (v36 < 1)
          {
            v39 = 2 * v16;
          }

          else
          {
            v34 = v34 + 1;
            v38 = &v4[2 * v34];
            *v38 = v3;
            *(v38 + 1) = v7 - 1;
            LOWORD(v3) = v3 - 1;
            v39 = v35;
          }

          v36 += v39;
          --v7;
          LODWORD(v34) = v34 + 1;
        }

        while (v6 != v7);
        v14 = v34;
        v15 = v16;
        goto LABEL_61;
      }

      v50 = 2 * (v5 - v8);
      v51 = v5 + 2 * v22;
      do
      {
        v52 = &v4[2 * v34];
        *v52 = v3;
        *(v52 + 1) = v7;
        if (v51 < 1)
        {
          v54 = 2 * v22;
        }

        else
        {
          v34 = v34 + 1;
          v53 = &v4[2 * v34];
          *v53 = v3 - 1;
          *(v53 + 1) = v7;
          LOWORD(v7) = v7 - 1;
          v54 = v50;
        }

        v51 += v54;
        --v3;
        LODWORD(v34) = v34 + 1;
      }

      while (a3 != v3);
      v14 = v34;
      LOWORD(v6) = v7;
      v15 = v22;
    }

    else
    {
      LODWORD(v17) = 0;
      if (v16 < v8)
      {
        v18 = -2 * v5 - v8;
        do
        {
          v19 = &v4[2 * v17];
          *v19 = v3;
          *(v19 + 1) = v7;
          if (v18 < 1)
          {
            v21 = -2 * v5;
          }

          else
          {
            v17 = v17 + 1;
            v20 = &v4[2 * v17];
            *v20 = v3;
            *(v20 + 1) = v7 + 1;
            LOWORD(v3) = v3 - 1;
            v21 = 2 * (v16 - v8);
          }

          v18 += v21;
          ++v7;
          LODWORD(v17) = v17 + 1;
        }

        while (v6 != v7);
        v14 = v17;
        v15 = -v5;
        goto LABEL_18;
      }

      v40 = 2 * (v5 + v8);
      v41 = v5 + 2 * v8;
      do
      {
        v42 = &v4[2 * v17];
        *v42 = v3;
        *(v42 + 1) = v7;
        if (v41 < 1)
        {
          v44 = 2 * v8;
        }

        else
        {
          v17 = v17 + 1;
          v43 = &v4[2 * v17];
          *v43 = v3 - 1;
          *(v43 + 1) = v7;
          LOWORD(v7) = v7 + 1;
          v44 = v40;
        }

        v41 += v44;
        --v3;
        LODWORD(v17) = v17 + 1;
      }

      while (a3 != v3);
      v14 = v17;
      LOWORD(v6) = v7;
      v15 = v8;
    }

    v22 = v16;
    goto LABEL_61;
  }

  if ((v8 & 0x80000000) != 0)
  {
    v22 = (a2 >> 16) - (a3 >> 16);
    LODWORD(v23) = 0;
    if (v22 <= v5)
    {
      v45 = 2 * ((a2 >> 16) - (a3 >> 16) - v5);
      v46 = 2 * v22 - v5;
      do
      {
        v47 = &v4[2 * v23];
        *v47 = v3;
        *(v47 + 1) = v7;
        if (v46 < 1)
        {
          v49 = 2 * v22;
        }

        else
        {
          v23 = v23 + 1;
          v48 = &v4[2 * v23];
          *v48 = v3 + 1;
          *(v48 + 1) = v7;
          LOWORD(v7) = v7 - 1;
          v49 = v45;
        }

        v46 += v49;
        ++v3;
        LODWORD(v23) = v23 + 1;
      }

      while (a3 != v3);
      v14 = v23;
      LOWORD(v6) = v7;
      v15 = v22;
      goto LABEL_52;
    }

    v24 = 2 * (v5 + v8);
    v25 = v8 + 2 * v5;
    do
    {
      v26 = &v4[2 * v23];
      *v26 = v3;
      *(v26 + 1) = v7;
      if (v25 < 1)
      {
        v28 = 2 * v5;
      }

      else
      {
        v23 = v23 + 1;
        v27 = &v4[2 * v23];
        *v27 = v3;
        *(v27 + 1) = v7 - 1;
        LOWORD(v3) = v3 + 1;
        v28 = v24;
      }

      v25 += v28;
      --v7;
      LODWORD(v23) = v23 + 1;
    }

    while (v6 != v7);
    v14 = v23;
    v15 = v5;
  }

  else
  {
    if (v8 > v5)
    {
      LODWORD(v9) = 0;
      v10 = 2 * v5 - v8;
      do
      {
        v11 = &v4[2 * v9];
        *v11 = v3;
        *(v11 + 1) = v7;
        if (v10 < 1)
        {
          v13 = 2 * v5;
        }

        else
        {
          v9 = v9 + 1;
          v12 = &v4[2 * v9];
          *v12 = v3;
          *(v12 + 1) = v7 + 1;
          LOWORD(v3) = v3 + 1;
          v13 = 2 * (v5 - v8);
        }

        v10 += v13;
        ++v7;
        LODWORD(v9) = v9 + 1;
      }

      while (v6 != v7);
      v14 = v9;
      v15 = v5;
LABEL_18:
      v22 = v8;
      goto LABEL_61;
    }

    if (v5)
    {
      LODWORD(v29) = 0;
      v30 = 2 * v8 - v5;
      do
      {
        v31 = &v4[2 * v29];
        *v31 = v3;
        *(v31 + 1) = v7;
        if (v30 < 1)
        {
          v33 = 2 * v8;
        }

        else
        {
          v29 = v29 + 1;
          v32 = &v4[2 * v29];
          *v32 = v3 + 1;
          *(v32 + 1) = v7;
          LOWORD(v7) = v7 + 1;
          v33 = 2 * (v8 - v5);
        }

        v30 += v33;
        ++v3;
        LODWORD(v29) = v29 + 1;
      }

      while (a3 != v3);
      v14 = v29;
      LOWORD(v6) = v7;
      v15 = v8;
LABEL_52:
      v22 = v5;
      goto LABEL_61;
    }

    v14 = 0;
    v22 = 0;
    v6 = a2 >> 16;
    v15 = (a3 >> 16) - (a2 >> 16);
  }

LABEL_61:
  v55 = &v4[2 * v14];
  *v55 = v3;
  *(v55 + 1) = v6;
  v56 = v15 + v22 + 1;
  if (v56 < 1)
  {
    v59 = 0;
    v61 = 0;
  }

  else
  {
    v57 = *(a1 + 8);
    v58 = *(v57 + 4);
    v59 = v56;
    v60 = v4;
    do
    {
      *v60 = *v60 + v60[1] * v58;
      v60 += 2;
      --v59;
    }

    while (v59);
    v61 = 0;
    v62 = *v57;
    do
    {
      v64 = *v4;
      v4 += 2;
      v63 = v64;
      if (*(v62 + v64))
      {
        ++v59;
      }

      if (*(**(a1 + 16) + 2 * v63))
      {
        ++v61;
      }

      --v56;
    }

    while (v56);
  }

  return v59 == v61;
}

float computePolyAreaAndMetric(float *a1, float *a2, float *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1 + 3;
  v6 = 0.0;
  v7 = 3;
  v8 = v4;
  v9 = *a1;
  v10 = 0.0;
  do
  {
    v11 = v9;
    v12 = v8;
    v9 = *(v5 - 1);
    v8 = *v5;
    v10 = v10 + sqrtf(((*v5 - v12) * (*v5 - v12)) + ((v9 - v11) * (v9 - v11)));
    v6 = v6 + ((v11 * *v5) - (v9 * v12));
    v5 += 2;
    --v7;
  }

  while (v7);
  v13 = v10 + sqrtf(((v4 - v8) * (v4 - v8)) + ((v3 - v9) * (v3 - v9)));
  v14 = fabsf(v6 + ((v9 * v4) - (v3 * v8))) * 0.5;
  *a2 = v14;
  result = (v14 * 12.566) / (v13 * v13);
  *a3 = result;
  return result;
}

void findContourCorners(uint64_t a1, float a2, uint64_t a3, uint64_t a4)
{
  v101 = *MEMORY[0x1E69E9840];
  v99 = 0;
  v6 = *(a1 + 12);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](&v86 - ((v7 + 15) & 0x7FFFFFFF0));
  v96 = &v86 - v13;
  if (v11)
  {
    v14 = 0;
    v15 = -1;
    v16 = -1;
    do
    {
      *(a4 + 8 * v14) = v11;
      v17 = v11[5];
      v18 = *v17;
      v19 = v17[1];
      v20 = &v17[2 * *(v11 + 3)];
      v21 = (*(v20 - 2) - v18) * (*(v20 - 2) - v18) + (*(v20 - 1) - v19) * (*(v20 - 1) - v19);
      v8[v14] = v21;
      if (v21 > v15)
      {
        v16 = v14;
        v15 = v21;
      }

      ++v14;
      v11 = *v11;
    }

    while (v11);
    v99 = v21;
  }

  else
  {
    v16 = -1;
  }

  v95 = v8;
  v91 = v12;
  if (v9)
  {
    v22 = v9[1] >> 1;
    v9[2] = v22;
    v9[3] = v22 - 1;
  }

  __src = 0;
  v98 = 0;
  v88 = v9;
  v89 = (a4 + 8 * v16);
  v23 = v16 - v6;
  v90 = v10;
  v87 = v16 - v6;
  if (!v10)
  {
    v23 = 0;
  }

  LODWORD(v97) = v23;
  if (v16 > v23)
  {
    v24 = v89;
    v86 = v16;
    while (2)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *v24;
      v29 = *(v28 + 12);
      v30 = *(v28 + 40);
      v31 = 0.0;
      v32 = 1;
      v33 = 1;
      v34 = v86;
      v35 = 1;
LABEL_15:
      v94 = v25;
      v93 = v26;
      v92 = v32;
      v36 = v34 - 1;
      v37 = v31;
      while (1)
      {
        v38 = v34 - 1;
        v39 = v34 <= 0 ? v6 : 0;
        v40 = *(a4 + 8 * (v36 + v39));
        segmentSinCosLen2(v29, v30, *(v40 + 12), *(v40 + 40), &v98 + 1, &v98, &v99);
        v31 = fabsf(*(&v98 + 1));
        v41 = (__PAIR64__(*(&v98 + 1) > 0.0, HIDWORD(v98)) - COERCE_UNSIGNED_INT(0.0)) >> 32;
        if ((v35 & 1) == 0)
        {
          break;
        }

        if (v31 >= a2)
        {
          v33 = 0;
          v34 = v38;
          v27 = (__PAIR64__(*(&v98 + 1) > 0.0, HIDWORD(v98)) - COERCE_UNSIGNED_INT(0.0)) >> 32;
          v45 = v93;
LABEL_37:
          v35 = 0;
          v95[v45] = v99;
          *&v96[4 * v45] = v34;
          v26 = v45 + 1;
          v32 = v92 + 1;
          v25 = v94 + 1;
          if (v34 > v97)
          {
            goto LABEL_15;
          }

          if (v45)
          {
            LODWORD(v51) = 0;
            v52 = *v95;
            v53 = 1;
            v54 = v88;
            do
            {
              if (v95[v53] > v52)
              {
                LODWORD(v51) = v53;
                v52 = v95[v53];
              }

              ++v53;
            }

            while (v92 != v53);
            v51 = v51;
          }

          else
          {
            v51 = 0;
            v54 = v88;
          }

          LOWORD(__src) = (v6 & (*&v96[4 * v51] >> 31)) + *&v96[4 * v51];
          HIWORD(__src) = (v6 & (v86 >> 31)) + v86;
          prependDequeElement(v54, &__src);
          goto LABEL_56;
        }

        v43 = v31 >= v37 && v27 == v41;
        if (*&v98 >= 0.0 && ((v33 | v43) & 1) != 0)
        {
          v33 = 0;
          --v36;
          v35 = 1;
          v34 = v38;
          v27 = (__PAIR64__(*(&v98 + 1) > 0.0, HIDWORD(v98)) - COERCE_UNSIGNED_INT(0.0)) >> 32;
          v37 = v31;
          if (v38 > v97)
          {
            continue;
          }
        }

        goto LABEL_56;
      }

      v44 = v31 >= a2 && v41 == v27;
      v34 = v38;
      v45 = v93;
      if (v44)
      {
        goto LABEL_37;
      }

      if (v93 < 2)
      {
        v46 = 0;
        v49 = v88;
      }

      else
      {
        LODWORD(v46) = 0;
        v47 = *v95;
        v48 = 1;
        v49 = v88;
        do
        {
          if (v95[v48] > v47)
          {
            LODWORD(v46) = v48;
            v47 = v95[v48];
          }

          ++v48;
        }

        while (v94 != v48);
        v46 = v46;
      }

      v50 = *&v96[4 * v46];
      LOWORD(__src) = (v6 & (v50 >> 31)) + v50;
      HIWORD(__src) = (v6 & (v86 >> 31)) + v86;
      prependDequeElement(v49, &__src);
      v24 = (a4 + 8 * ((v6 & (v50 >> 31)) + v50));
      v86 = v50;
      if (v50 > v97)
      {
        continue;
      }

      break;
    }
  }

LABEL_56:
  if (v90)
  {
    if (v88)
    {
      v55 = v88[2];
      v56 = v87;
      if (v88[3] + 1 != v55)
      {
        __src = *(*(v88 + 2) + *v88 * v55);
        if (v16 == __src)
        {
          v56 = v16;
        }

        else
        {
          v56 = (v6 + __src);
        }
      }
    }

    else
    {
      v56 = v87;
    }
  }

  else
  {
    v56 = (v6 - 1);
  }

  if (v16 < v56)
  {
    v57 = *v89;
    while (2)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = *(v57 + 40);
      v62 = 0.0;
      v63 = 1;
      v64 = v16;
      v65 = 1;
      v66 = 1;
LABEL_67:
      v94 = v58;
      v97 = v59;
      LODWORD(v93) = v63;
      ++v64;
      v67 = v62;
      while (1)
      {
        v68 = v56;
        v69 = *(a4 + 8 * (v64 % v6));
        segmentSinCosLen2(*(v57 + 12), v61, *(v69 + 12), *(v69 + 40), &v98 + 1, &v98, &v99);
        v62 = fabsf(*(&v98 + 1));
        v70 = (__PAIR64__(*(&v98 + 1) > 0.0, HIDWORD(v98)) - COERCE_UNSIGNED_INT(0.0)) >> 32;
        if ((v66 & 1) == 0)
        {
          break;
        }

        if (v62 >= a2)
        {
          v65 = 0;
          v60 = (__PAIR64__(*(&v98 + 1) > 0.0, HIDWORD(v98)) - COERCE_UNSIGNED_INT(0.0)) >> 32;
          v56 = v68;
          v75 = v97;
LABEL_86:
          v66 = 0;
          v95[v75] = v99;
          *&v96[4 * v75] = v64;
          v59 = v75 + 1;
          v63 = v93 + 1;
          v58 = v94 + 1;
          if (v64 < v56)
          {
            goto LABEL_67;
          }

          if (v75)
          {
            LODWORD(v81) = 0;
            v82 = *v95;
            v83 = 1;
            v84 = v88;
            do
            {
              if (v95[v83] > v82)
              {
                LODWORD(v81) = v83;
                v82 = v95[v83];
              }

              ++v83;
            }

            while (v93 != v83);
            v81 = v81;
          }

          else
          {
            v81 = 0;
            v84 = v88;
          }

          v85 = *&v96[4 * v81] % v6;
          LOWORD(__src) = v16 % v6;
          HIWORD(__src) = v85;
          appendDequeElement(v84, &__src);
          return;
        }

        v72 = v62 >= v67 && v60 == v70;
        if (*&v98 >= 0.0 && ((v65 | v72) & 1) != 0)
        {
          v56 = v68;
          v65 = 0;
          v66 = 1;
          v60 = (__PAIR64__(*(&v98 + 1) > 0.0, HIDWORD(v98)) - COERCE_UNSIGNED_INT(0.0)) >> 32;
          v67 = v62;
          if (v64++ < v68)
          {
            continue;
          }
        }

        return;
      }

      v74 = v62 >= a2 && v70 == v60;
      v56 = v68;
      v75 = v97;
      if (v74)
      {
        goto LABEL_86;
      }

      if (v97 < 2)
      {
        v76 = 0;
        v79 = v88;
      }

      else
      {
        LODWORD(v76) = 0;
        v77 = *v95;
        v78 = 1;
        v79 = v88;
        do
        {
          if (v95[v78] > v77)
          {
            LODWORD(v76) = v78;
            v77 = v95[v78];
          }

          ++v78;
        }

        while (v94 != v78);
        v76 = v76;
      }

      v80 = v16 % v6;
      v16 = *&v96[4 * v76];
      LOWORD(__src) = v80;
      HIWORD(__src) = v16 % v6;
      appendDequeElement(v79, &__src);
      v57 = *(a4 + 8 * (v16 % v6));
      v56 = v68;
      if (v16 < v68)
      {
        continue;
      }

      break;
    }
  }
}

BOOL extendedSegmentTest(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a4)
  {
    v16 = 0;
    v12 = *(a1 + 12);
    v13 = *(a1 + 40);
    v8 = *(a2 + 12);
    v9 = *(a2 + 40);
    segmentSinCos(v12, v13, v8, v9, &v16 + 1, &v16);
    if (fabsf(*(&v16 + 1)) >= *(a5 + 80) || *&v16 >= 0.0)
    {
      v10 = *(a3 + 12);
      v11 = *(a3 + 40);
      goto LABEL_9;
    }

    return 0;
  }

  v16 = 0;
  v8 = *(a2 + 12);
  v9 = *(a2 + 40);
  v10 = *(a3 + 12);
  v11 = *(a3 + 40);
  segmentSinCos(v8, v9, v10, v11, &v16 + 1, &v16);
  if (fabsf(*(&v16 + 1)) < *(a5 + 80) && *&v16 < 0.0)
  {
    return 0;
  }

  v12 = *(a1 + 12);
  v13 = *(a1 + 40);
LABEL_9:
  v15 = calcRotationParity(v12, v13, v8, v9);
  return v15 == calcRotationParity(v8, v9, v10, v11);
}

uint64_t Contours2Quads(uint64_t a1, float *a2, uint64_t *a3, uint64_t a4, int a5)
{
  *&v459[9] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 4);
  v10 = *(a3 + 4);
  v444 = a3;
  v11 = malloc_type_malloc(4 * (*(a3 + 2) + v10), 0x100004052888210uLL);
  v12 = a2[20];
  v13 = a2[17];
  v450 = a2;
  v14 = a2[23];
  v432 = a1;
  v430 = *(a1 + 8);
  v15 = malloc_type_malloc(0x28uLL, 0x2A103737uLL);
  v458 = v15;
  v457 = xmmword_1A6038B60;
  v431 = v9;
  if (v9 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v428 = v11 + 2;
    v435 = v11;
    v433 = a5;
    while (1)
    {
      v18 = *(v432 + 16) + 40 * *(v430 + 2 * v16);
      if (*v18 == 1)
      {
        v429 = &v426;
        v19 = *(v18 + 8);
        v20 = *(v18 + 12);
        MEMORY[0x1EEE9AC00](v15);
        v22 = &v426 - ((v21 + 15) & 0xFFFFFFFF0);
        v23 = v21 >= 0x200 ? 512 : v21;
        bzero(&v426 - ((v21 + 15) & 0xFFFFFFFF0), v23);
        v445 = v20;
        bzero(v22, 8 * v20);
        findContourCorners(v18, v450[20], &v457, v22);
        MEMORY[0x1EEE9AC00](v24);
        v29 = (&v426 - v28);
        if (v25 >= 1)
        {
          v30 = (v26 + 2);
          v447 = v29;
          v31 = v25;
          do
          {
            v32 = *&v22[8 * *(v30 - 1)];
            v33 = *&v22[8 * *v30];
            v34 = v32[3];
            v35 = v33[3];
            *v27.i32 = (-v33[2].f32[1] * v34.f32[0]) + (v32[2].f32[1] * v35.f32[0]);
            v36.i32[0] = vdup_lane_s32(v34, 1).u32[0];
            v36.i32[1] = v32[2].i32[1];
            v37 = vmul_f32(v35, vneg_f32(v36));
            v35.i32[0] = vdup_lane_s32(v35, 1).u32[0];
            v35.i32[1] = v33[2].i32[1];
            *v29++ = vdiv_f32(vmla_f32(v37, v34, v35), vdup_lane_s32(v27, 0));
            v30 += 2;
            --v31;
          }

          while (v31);
          v443 = (v25 - 1);
          MEMORY[0x1EEE9AC00](v15);
          v448 = (&v426 - ((v41 + 15) & 0x7FFFFFFF0));
          LODWORD(v42) = 0;
          v43 = 0;
          LODWORD(v442) = v38 + v19;
          LODWORD(v437) = v19 << 31 >> 31;
          *&v439 = v39 + 2;
          LODWORD(v434) = v44 + v19 - v45;
          v446 = v19;
          v438 = a4;
          v441 = v17;
          v436 = v16;
          v453 = v39;
          v454 = v22;
          v455 = v38;
          v427 = v19;
          do
          {
            if (v42 < v38)
            {
              v46 = (v439 + 4 * v42);
              v42 = v42;
              v47 = v450[20];
              while (1)
              {
                v48 = *&v22[8 * *(v46 - 1)];
                v49 = *&v22[8 * *v46];
                *v459 = 0;
                segmentSinCos(*(v48 + 12), *(v48 + 40), *(v49 + 12), *(v49 + 40), &v459[1], v459);
                if (fabsf(*&v459[1]) >= v47 || *v459 >= 0.0)
                {
                  break;
                }

                v46 += 2;
                ++v42;
                LODWORD(v38) = v455;
                if (v455 == v42)
                {
                  v39 = v453;
                  goto LABEL_42;
                }
              }

              v39 = v453;
              LODWORD(v38) = v455;
            }

            if (v42 == v38)
            {
              break;
            }

            v50 = (v39 + 4 * v42);
            v51 = v50[1];
            v52 = *&v22[8 * *v50];
            v15 = calcRotationParity(*(v52 + 12), *(v52 + 40), *(*&v22[8 * v51] + 12), *(*&v22[8 * v51] + 40));
            v53 = v442;
            LODWORD(v449) = v15;
            v54 = v42 + 1;
            if (v42 + 1 >= v442)
            {
              LOWORD(v57) = 1;
            }

            else
            {
              LODWORD(v440) = v43;
              v55 = v51;
              v426 = v442 - v42;
              v56 = v450[20];
              v57 = 1;
              v58 = v434;
              while (1)
              {
                v452 = v55;
                v54 = v42 + v57;
                v59 = (v453 + 4 * ((v42 + v57) % v455));
                v60 = *v59;
                v61 = v59[1];
                v62 = *&v454[8 * v60];
                v63 = *&v454[8 * v61];
                v64 = *(v62 + 12);
                v65 = *(v62 + 40);
                v66 = *(v63 + 12);
                v67 = *(v63 + 40);
                LODWORD(v451) = calcRotationParity(v64, v65, v66, v67);
                *v459 = 0;
                segmentSinCos(v64, v65, v66, v67, &v459[1], v459);
                v68 = fabsf(*&v459[1]);
                _NF = *v459 < 0.0 && v68 < v56;
                v70 = _NF;
                _ZF = v60 == v452 && v451 == v449;
                if (!_ZF || v70)
                {
                  break;
                }

                v55 = v61;
                ++v57;
                if (v42 == --v58)
                {
                  a4 = v438;
                  v17 = v441;
                  v16 = v436;
                  v39 = v453;
                  LODWORD(v38) = v455;
                  v19 = v427;
                  v43 = v440;
                  v53 = v442;
                  LOWORD(v57) = v426;
                  goto LABEL_38;
                }
              }

              v446 = 0;
              v72 = v440;
              v73 = &v448[2 * v440];
              v73[1] = v57;
              *v73 = v42;
              v43 = v72 + 1;
              LODWORD(v42) = v42 + v57;
              a4 = v438;
              v17 = v441;
              v16 = v436;
              v19 = v427;
              v53 = v442;
            }

            v39 = v453;
            LODWORD(v38) = v455;
            if (v54 == v53)
            {
LABEL_38:
              v74 = (v57 + v437);
              v75 = &v448[2 * v43];
              v75[1] = v57 + v437;
              *v75 = v42;
              if (v74 > 0)
              {
                ++v43;
              }

              v54 = v53;
            }

            v22 = v454;
          }

          while (v54 < v38);
LABEL_42:
          if (v19)
          {
            v76 = v43 - 1;
            if (v43 > 1)
            {
              v77 = &v448[2 * v43];
              v78 = *(v77 - 2);
              v79 = *(v77 - 1);
              v80 = v39 + 4 * v78 + 4 * v79;
              v81 = *(v80 - 2);
              v82 = (v39 + 4 * *v448);
              if (*v82 == v81)
              {
                LODWORD(v440) = v43;
                v83 = v82[1];
                v84 = v454;
                v85 = *&v454[8 * *(v80 - 4)];
                v86 = *&v454[8 * v81];
                v87 = *(v86 + 12);
                v88 = *(v86 + 40);
                v89 = calcRotationParity(*(v85 + 12), *(v85 + 40), v87, v88);
                v90 = *&v84[8 * v83];
                LODWORD(v84) = *(v90 + 12);
                v91 = *(v90 + 40);
                v92 = calcRotationParity(v87, v88, v84, v91);
                *v459 = 0;
                segmentSinCos(v87, v88, v84, v91, &v459[1], v459);
                v93 = fabsf(*&v459[1]);
                v95 = *v459 < 0.0 && v93 < v450[20];
                if (v92 == v89)
                {
                  a4 = v438;
                  v17 = v441;
                  v16 = v436;
                  v39 = v453;
                  LODWORD(v38) = v455;
                  v43 = v440;
                  if (!v95)
                  {
                    v96 = v448;
                    v448[1] += v79;
                    *v96 = v78;
                    v43 = v76;
                  }
                }

                else
                {
                  a4 = v438;
                  v17 = v441;
                  v16 = v436;
                  v39 = v453;
                  LODWORD(v38) = v455;
                  v43 = v440;
                }
              }
            }
          }

          if (v43 >= 1)
          {
            v97 = v433;
            if (v17 < v433)
            {
              break;
            }
          }
        }
      }

LABEL_327:
      if (++v16 == v431)
      {
        v15 = v458;
        v11 = v435;
        if (v458)
        {
          goto LABEL_329;
        }

        goto LABEL_330;
      }
    }

    v98 = 0;
    v99 = 0;
    v452 = v445 - 1;
    v449 = v43;
    v100 = v454;
    while (1)
    {
      v101 = &v448[2 * v98];
      v102 = *v101;
      v103 = v101[1];
      if (v446)
      {
        if (v103 == 4)
        {
          v104 = v99;
          v105 = 0;
          v459[0] = 0;
          v456 = 0.0;
          v106 = v39 + 4 * v102;
          do
          {
            if (v102 >= v38)
            {
              v107 = v38;
            }

            else
            {
              v107 = 0;
            }

            v108 = (v106 - 4 * v107);
            v109 = *&v100[8 * *v108];
            v110 = *&v100[8 * v108[1]];
            v111 = v109[3];
            v112 = v110[3];
            *&v40 = (-v110[2].f32[1] * v111.f32[0]) + (v109[2].f32[1] * v112.f32[0]);
            v113.i32[0] = vdup_lane_s32(v111, 1).u32[0];
            v113.i32[1] = v109[2].i32[1];
            v114 = vneg_f32(v113);
            v113.i32[0] = vdup_lane_s32(v112, 1).u32[0];
            v113.i32[1] = v110[2].i32[1];
            v115 = vdiv_f32(vmla_f32(vmul_f32(v112, v114), v111, v113), vdup_lane_s32(*&v40, 0));
            *&v459[v105 + 1] = v115;
            *(a4 + v105 * 4) = v115;
            ++v102;
            v105 += 2;
            v106 += 4;
          }

          while (v105 != 8);
          computePolyAreaAndMetric(&v459[1], v459, &v456);
          *&v119 = v456;
          if (v456 >= v14)
          {
            v15 = quadValid(a4, v450, v119, v116, v117, v118, v40);
            if (v15)
            {
              a4 += 32;
              v17 = (v17 + 1);
            }

            else
            {
              v17 = v17;
            }
          }

          v99 = v104;
          v39 = v453;
          LODWORD(v38) = v455;
        }
      }

      else if (v103 >= 2)
      {
        v441 = v17;
        v120 = v103 + v102;
        _Q0 = MEMORY[0x1EEE9AC00](v15);
        v131 = (&v426 - 8 * v130);
        v437 = &v426;
        if (v125 != 4)
        {
          v132 = v447;
          if (v125 == 3)
          {
            v142 = &v131[8 * v123];
            v143 = *&v100[8 * *(v126 + 4 * v102)];
            if (v102 + 1 >= v122)
            {
              v144 = v122;
            }

            else
            {
              v144 = 0;
            }

            v145 = v447[v102 + 1 - v144];
            ++v123;
            if (v102 + 2 >= v122)
            {
              v146 = v122;
            }

            else
            {
              v146 = 0;
            }

            v147 = v102 + 2 - v146;
            v148 = *&v100[8 * *(v126 + 4 * v147 + 2)];
            v149 = v447[v147];
            *v142 = v447[v102];
            v142[1] = v145;
            v142[2] = v149;
            v150 = v148[3];
            v151 = v143[3];
            v152.i32[0] = vdup_lane_s32(v150, 1).u32[0];
            v152.i32[1] = v148[2].i32[1];
            _Q0.n128_f32[0] = (-v143[2].f32[1] * v150.f32[0]) + (v152.f32[1] * v151.f32[0]);
            v153 = vneg_f32(v152);
            v152.i32[0] = vdup_lane_s32(v151, 1).u32[0];
            v152.i32[1] = v143[2].i32[1];
            v142[3] = vdiv_f32(vmla_f32(vmul_f32(v151, v153), v150, v152), vdup_lane_s32(_Q0.n128_u64[0], 0));
            goto LABEL_251;
          }

          if (v125 == 2)
          {
            v133 = v100;
            v134 = *(v126 + 4 * v102);
            v135 = *&v133[8 * v134];
            if (v122 <= v102)
            {
              v136 = v122;
            }

            else
            {
              v136 = 0;
            }

            v137 = v102 - v136;
            v138 = *(v126 + 4 * (v102 - v136));
            if (!*(v126 + 4 * v137))
            {
              goto LABEL_222;
            }

            if (v137 >= 1)
            {
              v139 = v102 >= 1 ? 0 : v122;
              v140 = v102 + v139 - 1;
              if (v138 == *(v126 + 4 * v140 + 2))
              {
                v141 = v447[v140];
                goto LABEL_223;
              }
            }

            v291 = v120 <= v122 ? 0 : v122;
            v292 = v135;
            v293 = v123;
            v294 = v124;
            v121 = extendedSegmentTest(*&v454[8 * ((v452 + *(v126 + 4 * (v124 - v291))) % v445)], *&v454[8 * *(v126 + 4 * (v124 - v291))], *&v454[8 * *(v126 + 4 * (v124 - v291) + 2)], 0, v450);
            v135 = v292;
            v124 = v294;
            v123 = v293;
            v132 = v447;
            v122 = v455;
            v126 = v453;
            if (v121)
            {
              if (v134 >= 1)
              {
                v296 = 0;
              }

              else
              {
                v296 = v445;
              }

              v297 = *(*&v454[8 * v134 - 8 + 8 * v296] + 40);
              *_D0.i32 = *v297;
              v298 = v297[1];
              v299 = *(v292 + 40);
              v300 = *v299;
              v301 = v299[1];
              v302 = &v447[v102];
              v303 = v302[1];
              v304 = v300 - *_D0.i32;
              v305 = v301 - v298;
              v306 = *v302 - v300;
              v307 = v303 - v301;
              if (v102 + 1 >= v455)
              {
                v309 = v455;
              }

              else
              {
                v309 = 0;
              }

              *&v308 = ((v300 - *_D0.i32) * (v303 - v301)) - (v306 * (v301 - v298));
              *&v310 = (v306 * (v447[v102 + 1 - v309].f32[1] - v303)) - ((v447[v102 + 1 - v309].f32[0] - *v302) * v307);
              if ((__PAIR64__(*&v308 > 0.0, v308) - COERCE_UNSIGNED_INT(0.0)) >> 32 != (__PAIR64__(*&v310 > 0.0, v310) - COERCE_UNSIGNED_INT(0.0)) >> 32 || (v311 = 1.0 / sqrtf(((v305 * v305) + (v304 * v304)) * ((v307 * v307) + (v306 * v306))), fabsf(((v305 * v306) - (v304 * v307)) * v311) < v450[20]) && (((v305 * v307) + (v304 * v306)) * v311) < 0.0)
              {
                *_D0.i32 = v300;
              }

              _D3 = *(v292 + 20);
              __asm { FMLA            S1, S0, V3.S[1] }

              v314 = vdup_lane_s32(_D3, 0);
              v314.f32[0] = -_D3.f32[1];
              *_D0.i32 = -(vmuls_lane_f32(_D3.f32[1], _D3, 1) + (_D3.f32[0] * _D3.f32[0]));
              _D1 = vmla_n_f32(vmul_n_f32(v314, _S1), _D3, *(v292 + 28));
              v141 = vdiv_f32(_D1, vdup_lane_s32(_D0, 0));
            }

            else
            {
LABEL_222:
              _D1.f32[0] = **(v135 + 40);
              _D3 = *(v135 + 20);
              __asm { FMLA            S2, S1, V3.S[1] }

              v317 = vdup_lane_s32(_D3, 0);
              v317.f32[0] = -_D3.f32[1];
              _D1.f32[0] = -(vmuls_lane_f32(_D3.f32[1], _D3, 1) + (_D3.f32[0] * _D3.f32[0]));
              v141 = vdiv_f32(vmla_n_f32(vmul_n_f32(v317, _S2), _D3, *(v135 + 28)), vdup_lane_s32(_D1, 0));
            }

LABEL_223:
            v318 = &v131[8 * v123];
            *v318 = v141;
            v319 = v132[v102];
            if (v102 + 1 >= v122)
            {
              v320 = v122;
            }

            else
            {
              v320 = 0;
            }

            v321 = v102 + 1 - v320;
            v322 = v132[v321];
            v318[1] = v319;
            v318[2] = v322;
            v323 = *(v126 + 4 * v321 + 2);
            v324 = *&v454[8 * v323];
            if (v120 <= v122)
            {
              v325 = 0;
            }

            else
            {
              v325 = v122;
            }

            v326 = v124 - v325;
            v327 = (v126 + 4 * (v124 - v325));
            v328 = v327[1];
            if (v452 == v328)
            {
              goto LABEL_248;
            }

            if (v326 < v443)
            {
              v329 = v120 >= v122 ? v122 : 0;
              v330 = v120 - v329;
              if (*(v126 + 4 * v330) == v328)
              {
                v331 = v132[v330];
                goto LABEL_249;
              }
            }

            v333 = v123;
            v121 = extendedSegmentTest(*&v454[8 * *v327], *&v454[8 * v327[1]], *&v454[8 * ((v327[1] + 1) % v445)], 1, v450);
            v123 = v333;
            if (!v121)
            {
LABEL_248:
              _D1.f32[0] = *(*(v324 + 40) + 4 * *(v324 + 12) - 4);
              _D3 = *(v324 + 20);
              __asm { FMLA            S2, S1, V3.S[1] }

              v355 = vdup_lane_s32(_D3, 0);
              v355.f32[0] = -_D3.f32[1];
              _D1.f32[0] = -(vmuls_lane_f32(_D3.f32[1], _D3, 1) + (_D3.f32[0] * _D3.f32[0]));
              v331 = vdiv_f32(vmla_n_f32(vmul_n_f32(v355, _S2), _D3, *(v324 + 28)), vdup_lane_s32(_D1, 0));
LABEL_249:
              v100 = v454;
            }

            else
            {
              v335 = v319;
              if (v323 + 1 >= v445)
              {
                v336 = v445;
              }

              else
              {
                v336 = 0;
              }

              v100 = v454;
              v337 = *&v454[8 * (v323 + 1 - v336)];
              v338 = *(v337 + 40) + 4 * *(v337 + 12);
              *_D0.i32 = *(v338 - 4);
              v339 = *(v338 - 2);
              v340 = *(v324 + 40) + 4 * *(v324 + 12);
              v341 = *(v340 - 4);
              v342 = *(v340 - 2);
              v343 = v341 - v322.f32[0];
              v344 = v342 - v322.f32[1];
              *&v345 = ((v322.f32[0] - v335.f32[0]) * (v342 - v322.f32[1])) - ((v341 - v322.f32[0]) * (v322.f32[1] - v335.f32[1]));
              LODWORD(v340) = (__PAIR64__(*&v345 > 0.0, v345) - COERCE_UNSIGNED_INT(0.0)) >> 32;
              v346 = *_D0.i32 - v341;
              v347 = v339 - v342;
              *&v348 = ((v341 - v322.f32[0]) * (v339 - v342)) - ((*_D0.i32 - v341) * (v342 - v322.f32[1]));
              if (v340 != (__PAIR64__(*&v348 > 0.0, v348) - COERCE_UNSIGNED_INT(0.0)) >> 32 || (v349 = 1.0 / sqrtf(((v347 * v347) + (v346 * v346)) * ((v344 * v344) + (v343 * v343))), fabsf(((v347 * -v343) + (v344 * v346)) * v349) < v450[20]) && (((v347 * v344) + (v343 * v346)) * v349) < 0.0)
              {
                *_D0.i32 = v341;
              }

              _D3 = *(v324 + 20);
              __asm { FMLA            S1, S0, V3.S[1] }

              v352 = vdup_lane_s32(_D3, 0);
              v352.f32[0] = -_D3.f32[1];
              *_D0.i32 = -(vmuls_lane_f32(_D3.f32[1], _D3, 1) + (_D3.f32[0] * _D3.f32[0]));
              v331 = vdiv_f32(vmla_n_f32(vmul_n_f32(v352, _S1), _D3, *(v324 + 28)), vdup_lane_s32(_D0, 0));
            }

            ++v123;
            v318[3] = v331;
LABEL_251:
            v356 = v123;
            MEMORY[0x1EEE9AC00](v121);
            MEMORY[0x1EEE9AC00](v357);
            v359 = (&v426 - v358);
            MEMORY[0x1EEE9AC00](v360);
            v442 = &v426 - 8 * v356;
            if (v99 < 1)
            {
              v17 = v441;
              v97 = v433;
            }

            else
            {
              v434 = v99;
              v438 = a4;
              v362 = v131;
              v363 = v361;
              v364 = v361;
              v365 = v359;
              v366 = v356;
              do
              {
                computePolyAreaAndMetric(v362, v364++, v365++);
                v362 += 8;
                --v366;
              }

              while (v366);
              v372 = 0;
              v373 = 0;
              v374 = 0.0;
              v451 = 0xFFFFFFFFLL;
              v100 = v454;
              do
              {
                if (v359[v372] >= v14)
                {
                  v375 = &v131[8 * v372];
                  v376 = v375->f32[1];
                  v377 = v375[3].f32[0];
                  v378 = v375[3].f32[1];
                  v379 = v377 - v375[2].f32[0];
                  v380 = v378 - v375[2].f32[1];
                  v381 = v375->f32[0] - v377;
                  v382 = v376 - v378;
                  v383 = (v380 * v380) + (v379 * v379);
                  *&v369 = (v382 * v382) + (v381 * v381);
                  v40 = fabsf((v379 * v382) - (v381 * v380));
                  v384 = v40 / sqrt((v383 * *&v369));
                  *&v384 = v384;
                  v385 = fabsf((v381 * (v375[1].f32[1] - v376)) - ((v375[1].f32[0] - v375->f32[0]) * v382)) / sqrt(((((v375[1].f32[1] - v376) * (v375[1].f32[1] - v376)) + ((v375[1].f32[0] - v375->f32[0]) * (v375[1].f32[0] - v375->f32[0]))) * *&v369));
                  if (v12 <= *&v384 && v12 <= v385)
                  {
                    *&v367 = vcvt_s32_f32(vrnda_f32(v375[3]));
                    *&v368 = vcvt_s32_f32(vrnda_f32(*v375));
                    *&v371 = vabd_s32(*&v368, *&v367);
                    if (v371 <= DWORD1(v371))
                    {
                      v387 = DWORD1(v371);
                    }

                    else
                    {
                      v387 = v371;
                    }

                    if (v387 < 0xC)
                    {
                      goto LABEL_313;
                    }

                    v369 = COERCE_DOUBLE(vcvt_f32_s32(*&v367));
                    v388 = vcvt_f32_s32(*&v368);
                    *&v40 = (*(v444 + 4) - 2);
                    *v370.i32 = (*(v444 + 2) - 2);
                    v389 = vzip1_s32(v388, *&v369);
                    __asm { FMOV            V7.2S, #1.0 }

                    v391 = vzip2_s32(v388, *&v369);
                    v392 = vorr_s8(vsub_s32(vand_s8(vcgt_f32(v389, vdup_lane_s32(*&v40, 0)), 0x200000002), vcgt_f32(_D7, v389)), vorr_s8(vand_s8(vcgt_f32(_D7, v391), 0x400000004), vand_s8(vcgt_f32(v391, vdup_lane_s32(v370, 0)), 0x800000008)));
                    v393 = v392.i32[1];
                    v394 = v392.i32[0];
                    if (!*&v392)
                    {
                      v440 = v371;
                      v405 = vuzp1_s16(*&v368, *&v367);
                      *&v368 = 0x1000000FFLL;
                      v439 = v368;
                      goto LABEL_294;
                    }

                    if ((v392.i32[0] & v392.i32[1]) == 0)
                    {
                      v395 = 0;
                      v396 = 0;
                      v397 = v388.f32[1];
                      v398 = *(&v369 + 1);
                      v399 = 0.0;
                      LODWORD(v400) = LODWORD(v369);
                      v401.i32[0] = v388.i32[0];
                      v402.i32[0] = 0;
                      do
                      {
                        if (v393)
                        {
                          v403 = v393;
                        }

                        else
                        {
                          v403 = v394;
                        }

                        if ((v403 & 4) != 0)
                        {
                          v399 = 1.0;
                          v402.f32[0] = *&v400 + (((1.0 - v398) * (v401.f32[0] - *&v400)) / (v397 - v398));
                        }

                        else if ((v403 & 8) != 0)
                        {
                          v402.f32[0] = *&v400 + (((*v370.i32 - v398) * (v401.f32[0] - *&v400)) / (v397 - v398));
                          v399 = (*(v444 + 2) - 2);
                        }

                        else
                        {
                          if (v403)
                          {
                            v399 = v398 + (((1.0 - *&v400) * (v397 - v398)) / (v401.f32[0] - *&v400));
                            v402.f32[0] = 1.0;
                          }

                          if ((v403 & 2) != 0)
                          {
                            v399 = v398 + (((*&v40 - *&v400) * (v397 - v398)) / (v401.f32[0] - *&v400));
                            v402.f32[0] = (*(v444 + 4) - 2);
                          }
                        }

                        if (v403 == v393)
                        {
                          v404 = (4 * (v399 < 1.0)) | (8 * (v399 > *v370.i32));
                          if (v402.f32[0] < 1.0)
                          {
                            ++v404;
                          }

                          v393 = v404 | (2 * (v402.f32[0] > *&v40));
                          if (!(v394 | v393))
                          {
                            v402.f32[1] = v399;
                            v369 = *&v402;
                            if ((v395 & 1) == 0)
                            {
                              goto LABEL_293;
                            }

LABEL_292:
                            v401.f32[1] = v397;
                            *&v402 = v369;
                            v388 = v401;
LABEL_293:
                            v406 = vcvt_s32_f32(vrnda_f32(v402));
                            v407 = vcvt_s32_f32(vrnda_f32(v388));
                            *&v368 = vand_s8(vceq_s32(vand_s8(vzip1_s32(v407, v406), 0xFFFF0000FFFFLL), vand_s8(vzip1_s32(*&v368, *&v367), 0xFFFF0000FFFFLL)), vceq_s32(vand_s8(vzip2_s32(v407, v406), 0xFFFF0000FFFFLL), vand_s8(vzip2_s32(*&v368, *&v367), 0xFFFF0000FFFFLL)));
                            DWORD1(v368) = vand_s8(*&v368, 0x100000001).i32[1];
                            v439 = v368;
                            *&v367 = vabd_s32(vshr_n_s32(vshl_n_s32(v407, 0x10uLL), 0x10uLL), vshr_n_s32(vshl_n_s32(v406, 0x10uLL), 0x10uLL));
                            v440 = v367;
                            v405 = vuzp1_s16(v407, v406);
LABEL_294:
                            v15 = BresenhamCoords(v405.i32[1], v405.i32[0], v435);
                            v384 = *&v439;
                            v408 = (v15 + v439);
                            v409 = v444[3];
                            v368 = v440;
                            v410 = *v444;
                            *&v367 = vcgt_u32(*&v440, vdup_lane_s32(*&v440, 1));
                            if (v367)
                            {
                              if (v408 > SBYTE4(v439))
                              {
                                v411 = 0;
                                v412 = v408 - SBYTE4(v439);
                                v413 = &v428[4 * SBYTE4(v439)];
                                do
                                {
                                  v414 = *(v413 - 1) + *v413 * v409;
                                  v415 = *(v410 + v414) || *(v410 + v414 + v409) || *(v410 + v414 - v409) != 0;
                                  v413 += 4;
                                  v411 += v415;
                                  --v412;
                                }

                                while (v412);
                                goto LABEL_312;
                              }

LABEL_311:
                              v411 = 0;
                              goto LABEL_312;
                            }

                            if (v408 <= SBYTE4(v439))
                            {
                              goto LABEL_311;
                            }

                            v411 = 0;
                            v416 = v408 - SBYTE4(v439);
                            v417 = &v428[4 * SBYTE4(v439)];
                            do
                            {
                              v418 = (v410 + *(v417 - 1) + v409 * *v417);
                              v419 = *v418 || v418[1] || *(v418 - 1) != 0;
                              v417 += 4;
                              v411 += v419;
                              --v416;
                            }

                            while (v416);
LABEL_312:
                            *&v367 = v411;
                            *&v368 = roundf(v13 * (v387 - 1));
                            if (*&v368 <= v411)
                            {
LABEL_313:
                              v15 = quadValid(&v131[8 * v372], v450, *&v367, *&v368, v384, v369, v40);
                              if (v15)
                              {
                                v420 = &v442[8 * v373];
                                v367 = *v375->f32;
                                v368 = *v375[2].f32;
                                *v420 = *v375->f32;
                                *(v420 + 1) = v368;
                                if (v363[v372] <= v374)
                                {
                                  v421 = v451;
                                }

                                else
                                {
                                  v374 = v363[v372];
                                  v421 = v373;
                                }

                                v451 = v421;
                                ++v373;
                              }
                            }

                            break;
                          }

                          v396 = 1;
                          v398 = v399;
                          LODWORD(v400) = v402.i32[0];
                        }

                        else
                        {
                          v394 = (*&v400 < 1.0) | (2 * (*&v400 > *&v40)) | (4 * (v398 < 1.0)) | (8 * (v398 > *v370.i32));
                          if (!(v394 | v393))
                          {
                            *(&v400 + 1) = v398;
                            if (v396)
                            {
                              v369 = v400;
                            }

                            v397 = v399;
                            v401.i32[0] = v402.i32[0];
                            goto LABEL_292;
                          }

                          v395 = 1;
                          v397 = v399;
                          v401.i32[0] = v402.i32[0];
                        }
                      }

                      while ((v394 & v393) <= 0);
                    }
                  }
                }

                ++v372;
              }

              while (v372 != v356);
              if (v373 <= 0)
              {
                a4 = v438;
                v17 = v441;
              }

              else
              {
                v422 = &v442[8 * v451];
                v423 = *(v422 + 1);
                v424 = v438;
                *v438 = *v422;
                v424[1] = v423;
                a4 = (v424 + 2);
                v17 = v441 + 1;
              }

              v39 = v453;
              LODWORD(v38) = v455;
              v97 = v433;
              v99 = v434;
            }

            v16 = v436;
            goto LABEL_325;
          }

          LODWORD(v442) = v120 - 4;
          if (v120 - 4 < v102)
          {
            goto LABEL_251;
          }

          v438 = a4;
          v188 = v123;
          LODWORD(v451) = v125 + v102 - 3;
          if (v120 >= v122)
          {
            v189 = v122;
          }

          else
          {
            v189 = 0;
          }

          v190 = &v447[v120 - v189];
          v191 = &v131[8 * v123 + 4];
          v192 = v102;
          while (2)
          {
            if (v192 >= v122)
            {
              v193 = v122;
            }

            else
            {
              v193 = 0;
            }

            v194 = v192 - v193;
            if (v192 + 3 >= v122)
            {
              v195 = v122;
            }

            else
            {
              v195 = 0;
            }

            v196 = v192 + 3 - v195;
            v197 = v194;
            if (v194 >= v122)
            {
              v198 = v122;
            }

            else
            {
              v198 = 0;
            }

            v199 = v194 - v198;
            v200 = *(v126 + 4 * (v194 - v198));
            if (*(v126 + 4 * v199))
            {
              if (v199 >= 1 && (v194 <= 0 ? (v201 = v122) : (v201 = 0), v200 == *(v126 + 4 * (v194 + v201 - 1) + 2)))
              {
                if (v194 == v102)
                {
                  if (v192 <= 0)
                  {
                    v202 = v122;
                  }

                  else
                  {
                    v202 = 0;
                  }

                  v203 = v192 + v202 - 1;
                  v204 = v192 + 1;
                  if (v192 + 1 >= v122)
                  {
                    v205 = v122;
                  }

                  else
                  {
                    v205 = 0;
                  }

                  v206 = &v132[v203];
                  v207 = &v132[v194];
                  v208 = &v132[v204 - v205];
                  _Q0.n128_u32[0] = v206->i32[0];
                  v209 = v206->f32[1];
                  v210 = *v207;
                  v211 = v207[1];
                  v212 = v208[1];
                  v213 = *v207 - v206->f32[0];
                  v214 = v211 - v209;
                  v215 = *v208 - *v207;
                  v216 = v212 - v211;
                  v218 = v192 + 2;
                  if (v192 + 2 >= v122)
                  {
                    v219 = v122;
                  }

                  else
                  {
                    v219 = 0;
                  }

                  *&v217 = (v213 * (v212 - v211)) - (v215 * (v211 - v209));
                  *&v220 = (v215 * (v132[v218 - v219].f32[1] - v212)) - ((v132[v218 - v219].f32[0] - *v208) * v216);
                  if ((__PAIR64__(*&v217 > 0.0, v217) - COERCE_UNSIGNED_INT(0.0)) >> 32 != (__PAIR64__(*&v220 > 0.0, v220) - COERCE_UNSIGNED_INT(0.0)) >> 32 || (v221 = 1.0 / sqrtf(((v214 * v214) + (v213 * v213)) * ((v216 * v216) + (v215 * v215))), fabsf(((v214 * v215) - (v213 * v216)) * v221) < v450[20]) && (((v214 * v216) + (v213 * v215)) * v221) < 0.0)
                  {
                    _Q0.n128_f32[0] = v210;
                  }

                  v222 = *&v454[8 * *(v126 + 4 * v194 + 2)];
                  _D3 = *(v222 + 20);
                  __asm { FMLA            S1, S0, V3.S[1] }

                  v225 = vdup_lane_s32(_D3, 0);
                  v225.f32[0] = -_D3.f32[1];
                  _Q0.n128_f32[0] = -(vmuls_lane_f32(_D3.f32[1], _D3, 1) + (_D3.f32[0] * _D3.f32[0]));
                  _Q0.n128_u64[0] = vdiv_f32(vmla_n_f32(vmul_n_f32(v225, _S1), _D3, *(v222 + 28)), vdup_lane_s32(_Q0.n128_u64[0], 0));
LABEL_151:
                  *(v191 - 2) = _Q0.n128_u64[0];
                  if (v204 >= v122)
                  {
                    v227 = v122;
                  }

                  else
                  {
                    v227 = 0;
                  }

                  v228 = v132[v204 - v227];
                  if (v218 >= v122)
                  {
                    v229 = v122;
                  }

                  else
                  {
                    v229 = 0;
                  }

                  v230 = v132[v218 - v229];
                  *(v191 - 1) = v228;
                  *v191 = v230;
                  if (v196 >= v122)
                  {
                    v231 = v122;
                  }

                  else
                  {
                    v231 = 0;
                  }

                  v232 = v196 - v231;
                  v233 = (v126 + 4 * (v196 - v231));
                  v234 = v233[1];
                  if (v452 != v234)
                  {
                    if (v232 < v443 && (v196 + 1 >= v122 ? (v235 = v122) : (v235 = 0), *(v126 + 4 * (v196 + 1 - v235)) == v234))
                    {
                      if (v192 == v442)
                      {
                        v236 = v228;
                        v237 = &v132[v196];
                        v238 = v237[1];
                        _Q0.n128_u32[0] = v190->i32[0];
                        v239 = v190->f32[1];
                        v240 = *v237 - v230.f32[0];
                        v241 = v238 - v230.f32[1];
                        v242 = v190->f32[0] - *v237;
                        v243 = v239 - v238;
                        v100 = v454;
                        *&v244 = (v240 * (v239 - v238)) - (v242 * (v238 - v230.f32[1]));
                        *&v245 = ((v230.f32[0] - v236.f32[0]) * (v238 - v230.f32[1])) - (v240 * (v230.f32[1] - v236.f32[1]));
                        if ((__PAIR64__(*&v244 > 0.0, v244) - COERCE_UNSIGNED_INT(0.0)) >> 32 != (__PAIR64__(*&v245 > 0.0, v245) - COERCE_UNSIGNED_INT(0.0)) >> 32 || (v246 = 1.0 / sqrtf(((v241 * v241) + (v240 * v240)) * ((v243 * v243) + (v242 * v242))), fabsf(((v243 * -v240) + (v241 * v242)) * v246) < v450[20]) && (((v241 * v243) + (v240 * v242)) * v246) < 0.0)
                        {
                          _Q0.n128_f32[0] = *v237;
                        }

                        v247 = *&v454[8 * *(v126 + 4 * v196)];
                        _D3 = *(v247 + 20);
                        __asm { FMLA            S1, S0, V3.S[1] }

                        v250 = vdup_lane_s32(_D3, 0);
                        v250.f32[0] = -_D3.f32[1];
                        _Q0.n128_f32[0] = -(vmuls_lane_f32(_D3.f32[1], _D3, 1) + (_D3.f32[0] * _D3.f32[0]));
                        _Q0.n128_u64[0] = vdiv_f32(vmla_n_f32(vmul_n_f32(v250, _S1), _D3, *(v247 + 28)), vdup_lane_s32(_Q0.n128_u64[0], 0));
LABEL_174:
                        *(v191 + 1) = _Q0.n128_u64[0];
                        v191 += 8;
                        ++v188;
                        v192 = v204;
                        if (v204 == v451)
                        {
                          v123 = v188;
                          a4 = v438;
                          goto LABEL_251;
                        }

                        continue;
                      }
                    }

                    else
                    {
                      v121 = extendedSegmentTest(*&v454[8 * *v233], *&v454[8 * v233[1]], *&v454[8 * ((v233[1] + 1) % v445)], 1, v450);
                      v132 = v447;
                      v122 = v455;
                      v126 = v453;
                    }
                  }

                  _Q0.n128_u64[0] = v132[v196];
                  v100 = v454;
                  goto LABEL_174;
                }
              }

              else
              {
                if (v196 >= v122)
                {
                  v226 = v122;
                }

                else
                {
                  v226 = 0;
                }

                v121 = extendedSegmentTest(*&v454[8 * ((v452 + *(v126 + 4 * (v196 - v226))) % v445)], *&v454[8 * *(v126 + 4 * (v196 - v226))], *&v454[8 * *(v126 + 4 * (v196 - v226) + 2)], 0, v450);
                v132 = v447;
                v122 = v455;
                v126 = v453;
              }
            }

            break;
          }

          _Q0.n128_u64[0] = v132[v197];
          v204 = v192 + 1;
          v218 = v192 + 2;
          goto LABEL_151;
        }

        if (v122 <= v102)
        {
          v154 = v122;
        }

        else
        {
          v154 = 0;
        }

        v155 = v102 - v154;
        v156 = *(v126 + 4 * (v102 - v154));
        v157 = v447;
        if (*(v126 + 4 * v155))
        {
          if (v155 >= 1)
          {
            v158 = v102 >= 1 ? 0 : v122;
            v159 = v102 + v158 - 1;
            if (v156 == *(v126 + 4 * v159 + 2))
            {
              v160 = v102 + 1;
              if (v102 + 1 >= v122)
              {
                v161 = v122;
              }

              else
              {
                v161 = 0;
              }

              v162 = v160 - v161;
              v163 = &v447[v159];
              _Q0.n128_u32[0] = v163->i32[0];
              v164 = v163->f32[1];
              v165 = v102 + 2;
              if (v102 + 2 >= v122)
              {
                v166 = v122;
              }

              else
              {
                v166 = 0;
              }

              v167 = &v447[v165 - v166];
              v129.i32[0] = v167->i32[1];
              v168 = v447[v102];
              v169 = v447[v162];
              v170 = vsub_f32(v169, v168);
              v171 = vzip1_s32(v129, v168);
              v172.i32[0] = vdup_lane_s32(v169, 1).u32[0];
              v172.i32[1] = _Q0.n128_u32[0];
              _D5 = vsub_f32(v171, v172);
              v174 = vrev64_s32(v170);
              v169.i32[1] = v174.i32[1];
              v169.f32[0] = v167->f32[0] - v169.f32[0];
              v174.f32[1] = v168.f32[1] - v164;
              v175 = vmla_f32(vmul_f32(v174, vneg_f32(v169)), _D5, v170);
              v176 = vsub_s32(vcltz_f32(v175), vcgtz_f32(v175));
              if ((vceq_s32(vand_s8(vdup_lane_s32(v176, 1), 0xFF000000FFLL), vand_s8(v176, 0xFF000000FFLL)).u8[0] & 1) == 0)
              {
                goto LABEL_109;
              }

              _S6 = _Q0.n128_f32[0] - v168.f32[0];
              _S17 = _D5.i32[1];
              __asm { FMLA            S16, S17, V5.S[1] }

              v182 = 1.0 / sqrtf(_S16 * (((v164 - v168.f32[1]) * (v164 - v168.f32[1])) + (_S6 * _S6)));
              if (fabsf((((v168.f32[1] - v164) * (_Q0.n128_f32[0] - v168.f32[0])) - (_D5.f32[1] * (v164 - v168.f32[1]))) * v182) < v450[20])
              {
                __asm { FMLA            S4, S6, V5.S[1] }

                if ((_S4 * v182) < 0.0)
                {
LABEL_109:
                  _Q0.n128_u32[0] = v168.i32[0];
                }
              }

              v184 = *&v100[8 * *(v126 + 4 * v102 + 2)];
              _D3 = *(v184 + 20);
              __asm { FMLA            S1, S0, V3.S[1] }

              v187 = vdup_lane_s32(_D3, 0);
              v187.f32[0] = -_D3.f32[1];
              _Q0.n128_f32[0] = -(vmuls_lane_f32(_D3.f32[1], _D3, 1) + (_D3.f32[0] * _D3.f32[0]));
              _Q0.n128_u64[0] = vdiv_f32(vmla_n_f32(vmul_n_f32(v187, _S1), _D3, *(v184 + 28)), vdup_lane_s32(_Q0.n128_u64[0], 0));
LABEL_181:
              v259 = &v131[8 * v123];
              *v259 = _Q0.n128_u64[0];
              if (v160 >= v122)
              {
                v260 = v122;
              }

              else
              {
                v260 = 0;
              }

              v261 = v157[v160 - v260];
              if (v165 >= v122)
              {
                v262 = v122;
              }

              else
              {
                v262 = 0;
              }

              v263 = v157[v165 - v262];
              *(v259 + 1) = v261;
              *(v259 + 2) = v263;
              if (v102 + 3 >= v122)
              {
                v264 = v122;
              }

              else
              {
                v264 = 0;
              }

              v265 = v102 + 3 - v264;
              v266 = v265;
              if (v120 <= v122)
              {
                v267 = 0;
              }

              else
              {
                v267 = v122;
              }

              v268 = v124 - v267;
              v269 = (v126 + 4 * (v124 - v267));
              v270 = v269[1];
              if (v452 != v270)
              {
                if (v268 < v443)
                {
                  v271 = v120 >= v122 ? v122 : 0;
                  if (*(v126 + 4 * (v120 - v271)) == v270)
                  {
                    v272 = v263;
                    v273 = v261;
                    if (v102 + 4 >= v122)
                    {
                      v274 = v122;
                    }

                    else
                    {
                      v274 = 0;
                    }

                    v275 = v102 + 4 - v274;
                    v276 = &v157[v265];
                    v277 = &v157[v275];
                    v278 = v276[1];
                    _Q0.n128_u32[0] = v277->i32[0];
                    v279 = v277->f32[1];
                    v280 = *v276 - v272.f32[0];
                    v281 = v278 - v272.f32[1];
                    v282 = v277->f32[0] - *v276;
                    v283 = v279 - v278;
                    *&v285 = ((v272.f32[0] - v273.f32[0]) * (v278 - v272.f32[1])) - (v280 * (v272.f32[1] - v273.f32[1]));
                    v100 = v454;
                    *&v284 = (v280 * (v279 - v278)) - (v282 * (v278 - v272.f32[1]));
                    if ((__PAIR64__(*&v284 > 0.0, v284) - COERCE_UNSIGNED_INT(0.0)) >> 32 != (__PAIR64__(*&v285 > 0.0, v285) - COERCE_UNSIGNED_INT(0.0)) >> 32 || (v286 = 1.0 / sqrtf(((v281 * v281) + (v280 * v280)) * ((v283 * v283) + (v282 * v282))), fabsf(((v283 * -v280) + (v281 * v282)) * v286) < v450[20]) && (((v281 * v283) + (v280 * v282)) * v286) < 0.0)
                    {
                      _Q0.n128_f32[0] = *v276;
                    }

                    v287 = *&v454[8 * *(v126 + 4 * v265)];
                    _D3 = *(v287 + 20);
                    __asm { FMLA            S1, S0, V3.S[1] }

                    v290 = vdup_lane_s32(_D3, 0);
                    v290.f32[0] = -_D3.f32[1];
                    _Q0.n128_f32[0] = -(vmuls_lane_f32(_D3.f32[1], _D3, 1) + (_D3.f32[0] * _D3.f32[0]));
                    _Q0.n128_u64[0] = vdiv_f32(vmla_n_f32(vmul_n_f32(v290, _S1), _D3, *(v287 + 28)), vdup_lane_s32(_Q0.n128_u64[0], 0));
                    goto LABEL_238;
                  }
                }

                v332 = v123;
                v121 = extendedSegmentTest(*&v454[8 * *v269], *&v454[8 * v269[1]], *&v454[8 * ((v269[1] + 1) % v445)], 1, v450);
                v123 = v332;
                v157 = v447;
              }

              _Q0.n128_u64[0] = v157[v266];
              v100 = v454;
LABEL_238:
              ++v123;
              *(v259 + 3) = _Q0.n128_u64[0];
              goto LABEL_251;
            }
          }

          if (v120 <= v122)
          {
            v251 = 0;
          }

          else
          {
            v251 = v122;
          }

          v252 = (v126 + 4 * (v124 - v251));
          v253 = *v252;
          v254 = *&v100[8 * ((v452 + v253) % v445)];
          v255 = *&v100[8 * v253];
          v256 = v123;
          v257 = *&v100[8 * v252[1]];
          v258 = v124;
          v121 = extendedSegmentTest(v254, v255, v257, 0, v450);
          v124 = v258;
          v123 = v256;
          v157 = v447;
          v122 = v455;
          v126 = v453;
        }

        _Q0.n128_u64[0] = v157[v102];
        v160 = v102 + 1;
        v165 = v102 + 2;
        goto LABEL_181;
      }

LABEL_325:
      if (++v98 >= v449 || v17 >= v97)
      {
        goto LABEL_327;
      }
    }
  }

  v17 = 0;
  if (v15)
  {
LABEL_329:
    free(v15);
  }

LABEL_330:
  if (v11)
  {
    free(v11);
  }

  return v17;
}

BOOL quadValid(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v10 = *(a2 + 96) - *(a2 + 20);
  v11.i32[1] = 0;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  v12 = v10 * v10;
  v13 = (a1 + 4);
  for (i = 1; i != 5; ++i)
  {
    v15 = ((*v13 - *(a1 + 8 * (i & 3) + 4)) * (*v13 - *(a1 + 8 * (i & 3) + 4))) + ((*(v13 - 1) - *(a1 + 8 * (i & 3))) * (*(v13 - 1) - *(a1 + 8 * (i & 3))));
    v13 += 2;
    if (v15 < v12)
    {
      return 0;
    }
  }

  v16 = *(a2 + 52);
  if (v16 < 0.0)
  {
    return 1;
  }

  LODWORD(a5) = *(a2 + 56);
  LODWORD(a6) = *(a2 + 60);
  v18 = *a1 - *&a5;
  *&a7 = *(a1 + 4) - *&a6;
  v19.i32[0] = *(a1 + 8);
  v20.i32[0] = *(a1 + 12);
  v8.f32[0] = *(a1 + 16) - *&a5;
  *v7.i32 = *(a1 + 20) - *&a6;
  *v9.i32 = -*&a7;
  *v11.i32 = -v18;
  v19.i32[1] = *(a1 + 24);
  v20.i32[1] = *(a1 + 28);
  v21 = vsub_f32(v19, vdup_lane_s32(*&a5, 0));
  v22 = vsub_f32(v20, vdup_lane_s32(*&a6, 0));
  v23 = vdup_lane_s32(v7, 0);
  v24 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v22, -(v18 - v8.f32[0])), v21, *&a7 - *v7.i32), v23, v18);
  v25 = vdup_lane_s32(v8, 0);
  v26 = vmla_f32(vmla_f32(vmul_f32(v22, vneg_f32(vrev64_s32(vsub_f32(v21, v25)))), v21, vrev64_s32(vsub_f32(v22, v23))), vzip1_s32(v7, v21), vext_s8(v21, v7, 4uLL));
  v27 = vrev64_s32(v22);
  v28 = vdiv_f32(vmls_lane_f32(v24, v25, *&a7, 0), vmls_lane_f32(v26, v27, v8, 0));
  __asm
  {
    FMOV            V6.2S, #-1.0
    FMOV            V16.2S, #1.0
  }

  v35 = vbsl_s8(vcgt_f32(vdup_n_s32(0x3BA3D70Au), vabs_f32(vadd_f32(v28, _D6))), _D16, v28);
  v36 = vadd_f32(v35, _D6);
  v37 = vmla_f32(vdup_lane_s32(v9, 0), v27, v35);
  v38 = vmla_f32(vdup_lane_s32(v11, 0), vrev64_s32(v21), v35);
  v39 = vmla_f32(vmla_f32(vmul_f32(v37, v37), v36, vmul_n_f32(v36, v16 * v16)), v38, v38);
  v40 = sqrtf(vdiv_f32(vdup_lane_s32(v39, 1), v39).f32[0]);
  if (v40 > 1.0)
  {
    v40 = 1.0 / v40;
  }

  if (v40 < *(a2 + 44))
  {
    return 0;
  }

  return v40 <= *(a2 + 48);
}

uint64_t ImageProcessing_writeBufferUncompressed(FILE *__stream, char **a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  if (!*a2)
  {
    return 4220;
  }

  v7 = a2[2];
  if (!v7)
  {
    return 4220;
  }

  v8 = a2[1];
  if (!v8)
  {
    return 4220;
  }

  v9 = a2[3];
  if (v9 < 2)
  {
    return 4220;
  }

  v12 = v8 - 1;
  if (v12)
  {
    v13 = v9 * v12;
    if (v9 * v12 != fwrite(v5, 1uLL, v9 * v12, __stream))
    {
      return 4213;
    }

    *a4 += v13;
    v14 = a2[1];
    if (!v14)
    {
      return 4224;
    }

    v5 = *a2;
    v12 = v14 - 1;
    v7 = a2[2];
    v9 = a2[3];
  }

  v15 = v7 * a3;
  if (v15 != fwrite(&v5[v9 * v12], 1uLL, v15, __stream))
  {
    return 4213;
  }

  *a4 += v15;
  if (a2[3] <= v15)
  {
    return 4224;
  }

  __ptr = 0;
  v16 = 4213;
  while (fwrite(&__ptr, 1uLL, 1uLL, __stream) == 1)
  {
    if (++v15 >= a2[3])
    {
      return 4224;
    }
  }

  return v16;
}

FILE *ImageProcessing_save(FILE *result, uint64_t a2, int a3)
{
  if (result)
  {
    if (a2)
    {
      if (*a2)
      {
        v4 = (a2 + 16);
        if (*(a2 + 16))
        {
          v5 = (a2 + 8);
          if (*(a2 + 8))
          {
            if (*(a2 + 24) >= 2uLL)
            {
              v9 = 0;
              result = fopen(result, "wb");
              if (result)
              {
                v7 = result;
                if (*a2 && *v4 && *v5 && *(a2 + 24) >= 2uLL)
                {
                  if (a3)
                  {
                    v8 = 1;
                    goto LABEL_16;
                  }

                  if ((a3 & 0x3E) != 0)
                  {
                    v8 = 4;
LABEL_16:
                    __ptr = 0;
                    if (fwrite(&__ptr, 4uLL, 1uLL, result) == 1)
                    {
                      v11 = a3;
                      if (fwrite(&v11, 4uLL, 1uLL, v7) == 1 && fwrite((a2 + 16), 8uLL, 1uLL, v7) == 1 && fwrite((a2 + 8), 8uLL, 1uLL, v7) == 1)
                      {
                        v10 = *(a2 + 24);
                        if (fwrite(&v10, 8uLL, 1uLL, v7) == 1)
                        {
                          v9 = 32;
                          ImageProcessing_writeBufferUncompressed(v7, a2, v8, &v9);
                        }
                      }
                    }

                    return fclose(v7);
                  }

                  if ((a3 & 0x3C0) != 0)
                  {
                    v8 = 16;
                    goto LABEL_16;
                  }

                  syslog(5, "ERROR: Invalid image type");
                }

                return fclose(v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const char *CVML_getStatusDescription(unint64_t a1)
{
  v1 = "Not supported error";
  switch(a1)
  {
    case 0x59u:
      return v1;
    case 0x5Au:
      v1 = "General error";
      break;
    case 0x5Bu:
      v1 = "Espresso error";
      break;
    case 0x5Cu:
      v1 = "incorrect binserializer key";
      break;
    case 0x5Du:
      v1 = "small sparsity error";
      break;
    case 0x5Eu:
      v1 = "feature extraction error";
      break;
    case 0x5Fu:
      v1 = "initialization error";
      break;
    case 0x60u:
      v1 = "no saved state to revert";
      break;
    case 0x61u:
      v1 = "nominal distance not changed";
      break;
    case 0x62u:
      v1 = "batch size violation";
      break;
    case 0x63u:
      v1 = "computation kill request was issued";
      break;
    case 0x64u:
      v1 = "too few IDs to build VIP model";
      break;
    case 0x65u:
      v1 = "video error";
      break;
    case 0x66u:
      v1 = "error with projection computation";
      break;
    case 0x67u:
      v1 = "missing positional parameter";
      break;
    case 0x68u:
      v1 = "inconsistent state error";
      break;
    case 0x69u:
      v1 = "warping error";
      break;
    case 0x6Au:
      v1 = "OpenGL error";
      break;
    case 0x6Bu:
      v1 = "invalid format";
      break;
    case 0x6Cu:
      v1 = "out of bounds";
      break;
    case 0x6Du:
      v1 = "singular point configuration error";
      break;
    case 0x6Eu:
      v1 = "division by zero";
      break;
    case 0x6Fu:
      v1 = "LAPACK error";
      break;
    case 0x70u:
      v1 = "platform endianess not supported";
      break;
    case 0x71u:
      v1 = "hash already in use";
      break;
    case 0x72u:
      v1 = "invalid ID";
      break;
    case 0x73u:
      v1 = "invalid data type";
      break;
    case 0x74u:
      v1 = "data inconsistency error";
      break;
    case 0x75u:
      v1 = "I/O error";
      break;
    case 0x76u:
      v1 = "unknown option";
      break;
    case 0x77u:
      v1 = "invalid option";
      break;
    case 0x78u:
      v1 = "missing option";
      break;
    case 0x79u:
      v1 = "delegate error";
      break;
    case 0x7Au:
      v1 = "vImage related error";
      break;
    case 0x7Bu:
      v1 = "memory allocation error";
      break;
    case 0x7Cu:
      v1 = "invalid parameter";
      break;
    case 0x7Du:
      v1 = "unexpected null pointer";
      break;
    case 0x7Eu:
      v1 = "internal error";
      break;
    case 0x7Fu:
      v1 = "not implemented error";
      break;
    case 0x80u:
      v1 = "ok";
      break;
    default:
      v1 = CVML_getStatusDescription_ourSharedDefaultStatusDescription;
      snprintf(CVML_getStatusDescription_ourSharedDefaultStatusDescription, 0x3FuLL, "CVML_status module %d error %lld", a1 >> 8, a1 - 128);
      break;
  }

  return v1;
}

const char *CVML_getModuleDescription(uint64_t a1)
{
  v1 = "BinSerializer";
  switch(a1 >> 8)
  {
    case 1:
      return v1;
    case 2:
      v1 = "ERT";
      break;
    case 3:
      v1 = "Face3D";
      break;
    case 4:
      v1 = "FaceDescriptor";
      break;
    case 5:
      v1 = "FaceFrontalizer";
      break;
    case 6:
      v1 = "FaceWarper";
      break;
    case 7:
      v1 = "Geometry2D";
      break;
    case 8:
      v1 = "Geometry3D";
      break;
    case 9:
      v1 = "ImageGrouping";
      break;
    case 10:
      v1 = "ImageQuality";
      break;
    case 11:
      v1 = "LandmarkDetector";
      break;
    case 12:
      v1 = "MomentProcessor";
      break;
    case 13:
      v1 = "FaceboxAligner";
      break;
    case 14:
      v1 = "ImageDescriptor";
      break;
    case 15:
      v1 = "ImageClassifier";
      break;
    case 16:
      v1 = "ImageProcessing";
      break;
    case 17:
      v1 = "VIPIdentification";
      break;
    case 18:
      v1 = "ImageRegistration";
      break;
    case 19:
      v1 = "SimilarityMatrix";
      break;
    case 20:
      v1 = "Clustering";
      break;
    case 21:
      v1 = "HumanDetector";
      break;
    case 22:
      v1 = "FaceRegionMap";
      break;
    case 23:
      v1 = "ObjectDetector";
      break;
    case 24:
      v1 = "DML";
      break;
    case 25:
      v1 = "SGD";
      break;
    case 26:
      v1 = "ObjectTracker";
      break;
    case 27:
      v1 = "SRCClassifier";
      break;
    case 28:
      v1 = "Kmeans";
      break;
    case 29:
      v1 = "SparseCoding";
      break;
    case 30:
      v1 = "FaceID";
      break;
    case 31:
      v1 = "BoostedClassifier";
      break;
    case 32:
      v1 = "FaceSegmenter";
      break;
    case 33:
      v1 = "ImageAnalyzer";
      break;
    case 34:
      v1 = "FaceAttributes";
      break;
    case 35:
      v1 = "FaceprintAndAttributes";
      break;
    case 36:
      v1 = "FaceQuality";
      break;
    case 37:
      v1 = "Torsoprint";
      break;
    case 38:
      v1 = "ScreenGaze";
      break;
    case 39:
      v1 = "TapToBox";
      break;
    case 40:
      v1 = "PetprintGenerator";
      break;
    case 41:
    case 42:
    case 43:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
      goto LABEL_5;
    case 44:
      v1 = "RANSAC";
      break;
    case 64:
      v1 = "Generic";
      break;
    case 65:
      v1 = "ImageTools";
      break;
    case 66:
      v1 = "VideoTools";
      break;
    case 67:
      v1 = "ImageWarper";
      break;
    case 68:
      v1 = "ThirdParty";
      break;
    case 69:
      v1 = "BinSerializerProcessor";
      break;
    case 70:
      v1 = "AppleNetParser";
      break;
    case 128:
      v1 = "FaceProcessorCLI";
      break;
    case 129:
      v1 = "ImageClassifierCLI";
      break;
    case 130:
      v1 = "MPCmdlineClientCLI";
      break;
    case 131:
      v1 = "ClusteringCLI";
      break;
    case 132:
      v1 = "ImageProcessorCLI";
      break;
    case 133:
      v1 = "PhotosProcessorCLI";
      break;
    default:
      if (a1 >> 8 == 192)
      {
        v1 = "CVMLEngine";
      }

      else
      {
LABEL_5:
        v1 = CVML_getModuleDescription_ourSharedModuleNameString;
        snprintf(CVML_getModuleDescription_ourSharedModuleNameString, 0x1FuLL, "CVML Module %lld", a1 >> 8);
      }

      break;
  }

  return v1;
}

void _recordResultsInObservationsRecipients(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = v4;
        if (v9)
        {
          v11 = [v9 observationsRecipient];
          [v10 cacheObservationsOfRequest:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_1A5DB9A7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},objc_selector *>>>::find<objc_class * {__strong}>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::__unordered_map_hasher<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::hash<objc_class * {__strong}>,std::equal_to<objc_class * {__strong}>,true>,std::__unordered_map_equal<objc_class * {__strong},std::__hash_value_type<objc_class * {__strong},objc_selector *>,std::equal_to<objc_class * {__strong}>,std::hash<objc_class * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_class * {__strong},objc_selector *>>>::__emplace_unique_key_args<objc_class * {__strong},std::piecewise_construct_t const&,std::tuple<objc_class * const {__strong}&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1A5DBAA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1A5DBAB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1A5DBB0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5DBB1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5DBB2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5DBB400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5DBB594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5DBB6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5DBB7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5DBB8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1A5DBB988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1A5DBBA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1A5DBBDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t AltruisticBodyPoseKitLibraryCore()
{
  if (!AltruisticBodyPoseKitLibraryCore_frameworkLibrary)
  {
    AltruisticBodyPoseKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AltruisticBodyPoseKitLibraryCore_frameworkLibrary;
}

Class __getABPKPoseEstimationPipelineClass_block_invoke(uint64_t a1)
{
  if (!AltruisticBodyPoseKitLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("ABPKPoseEstimationPipeline");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getABPKPoseEstimationPipelineClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return __AltruisticBodyPoseKitLibraryCore_block_invoke();
  }

  return result;
}

uint64_t __AltruisticBodyPoseKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AltruisticBodyPoseKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A5DBD4F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5DBD7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNFgBgE5MLInputElement;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5DBDE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v33 = *(v31 - 168);
  if (v33)
  {
    *(v31 - 160) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DBDEAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1A5DBDEC0);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DBDED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29)
{
  objc_end_catch();
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *(v29 - 168);
  if (v31)
  {
    *(v29 - 160) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DBE488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DBEE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3823(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5DC04B0()
{
  if (v0)
  {
    JUMPOUT(0x1A5DC04B8);
  }

  JUMPOUT(0x1A5DC04BCLL);
}

void sub_1A5DC0770(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1A5DC1168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5DC10CCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5DC1444(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1A5DC1BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5DC1B90);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5DC1D5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5DC2710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DC31B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNInstanceMaskObservation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void Geometry3D_mallocCart3D(uint64_t a1, int a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a2 >= 1 && (v4 = 4 * a2, v5 = malloc_type_malloc(v4, 0x100004052888210uLL), (*a1 = v5) != 0) && (v6 = malloc_type_malloc(v4, 0x100004052888210uLL), (*(a1 + 8) = v6) != 0) && (v7 = malloc_type_malloc(v4, 0x100004052888210uLL), (*(a1 + 16) = v7) != 0))
  {
    *(a1 + 24) = a2;
  }

  else
  {

    Geometry3D_freeCart3D(a1);
  }
}

void Geometry3D_freeCart3D(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    *a1 = 0;
    free(*(a1 + 8));
    *(a1 + 8) = 0;
    free(*(a1 + 16));
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }
}

void sub_1A5DC45C4(_Unwind_Exception *a1)
{
  v6 = *(v4 - 88);
  if (v6)
  {
    *(v4 - 80) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::ImageAnalyzer::getSceneRepresentation(vision::mod::ImageAnalyzer *this, uint64_t a2)
{
  v9 = 1;
  v10 = &v9;
  if (*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a2 + 824), 1u) + 20) == 1)
  {
    v9 = 1;
    v10 = &v9;
    v4 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a2 + 784), 1u) + 3;
    v5 = this;
    v6 = 0;
  }

  else
  {
    v9 = 1024;
    v10 = &v9;
    if (*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a2 + 824), 0x400u) + 20) != 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 8574;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v9 = 1024;
    v10 = &v9;
    v4 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a2 + 784), 0x400u) + 3;
    v5 = this;
    v6 = 1;
  }

  return vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(v5, v4, v6);
}

void vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(void *a1, unint64_t *a2)
{
  std::vector<float>::vector[abi:ne200100](a1, *a2);
  if (*a2)
  {
    v5 = 0;
    do
    {
      v4 = vision::mod::ImageAnalyzer_Tensor1D<float>::operator[](a2, v5, v4);
      *(*a1 + 4 * v5++) = v4;
    }

    while (v5 < *a2);
  }
}

void sub_1A5DC478C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    v2 = *(a1 + 168);
    switch(v2)
    {
      case 65552:
        if (*(a1 + 8))
        {
LABEL_10:
          MEMORY[0x1AC556AE0]();
        }

LABEL_11:
        *(a1 + 8) = 0;
        return a1;
      case 262152:
        if (*(a1 + 8))
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      case 65568:
        if (*(a1 + 8))
        {
          goto LABEL_10;
        }

        goto LABEL_11;
    }
  }

  return a1;
}

float vision::mod::ImageAnalyzer_Tensor1D<float>::operator[](uint64_t a1, unint64_t a2, float a3)
{
  if (*a1 <= a2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = 8556;
    goto LABEL_13;
  }

  v3 = *(a1 + 168);
  if (v3 > 131103)
  {
    if (v3 == 131104)
    {
      return *(*(a1 + 8) + 4 * a2);
    }

    else
    {
      if (v3 != 262152)
      {
LABEL_14:
        exception = __cxa_allocate_exception(8uLL);
        v6 = 8563;
LABEL_13:
        *exception = v6;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }

      LOBYTE(a3) = *(*(a1 + 8) + a2);
      return LODWORD(a3);
    }
  }

  else
  {
    if (v3 != 65568)
    {
      if (v3 == 131080)
      {
        return *(*(a1 + 8) + a2);
      }

      goto LABEL_14;
    }

    return *(*(a1 + 8) + 4 * a2);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(uint64_t result, __int128 *a2, int a3)
{
  *result = 0;
  *(result + 176) = 0;
  if (!*a2)
  {
    goto LABEL_28;
  }

  if (*(a2 + 13) > 1uLL || *(a2 + 14) >= 2uLL)
  {
    goto LABEL_28;
  }

  v4 = *(a2 + 10);
  v5 = v4 > 1;
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a2 + 10);
  }

  *result = v6;
  v7 = *(a2 + 11);
  if (v7 >= 2)
  {
    v6 *= v7;
    *result = v6;
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  v8 = *(a2 + 12);
  if (v8 >= 2)
  {
    v6 *= v8;
    *result = v6;
    ++v5;
  }

  if (!a3)
  {
    if (v5 == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (*(a2 + 18) != v6)
  {
    if (*(a2 + 13) <= 1uLL && *(a2 + 14) < 2uLL)
    {
      v17 = *(a2 + 40);
      switch(v17)
      {
        case 65552:
          operator new[]();
        case 262152:
          operator new[]();
        case 65568:
          operator new[]();
      }

      exception = __cxa_allocate_exception(8uLL);
      v19 = 8563;
LABEL_29:
      *exception = v19;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

LABEL_28:
    exception = __cxa_allocate_exception(8uLL);
    v19 = 8572;
    goto LABEL_29;
  }

  *(result + 176) = 0;
LABEL_19:
  v9 = *a2;
  v10 = a2[1];
  *(result + 40) = a2[2];
  *(result + 24) = v10;
  *(result + 8) = v9;
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  *(result + 104) = a2[6];
  *(result + 88) = v13;
  *(result + 72) = v12;
  *(result + 56) = v11;
  v14 = a2[7];
  v15 = a2[8];
  v16 = a2[9];
  *(result + 168) = *(a2 + 20);
  *(result + 152) = v16;
  *(result + 136) = v15;
  *(result + 120) = v14;
  return result;
}

_BYTE **vision::mod::EspressoUint8ElemPtr::assign(uint64_t a1, const void **a2)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8573;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  **(a1 + 8) = *result[1];
  return result;
}

_WORD **vision::mod::EspressoUint16ElemPtr::assign(uint64_t a1, const void **a2)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8573;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  **(a1 + 8) = *result[1];
  return result;
}

float vision::mod::EspressoFloatElemPtr::assign(uint64_t a1, const void **a2)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8573;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  result = *v3[1];
  **(a1 + 8) = result;
  return result;
}

void ma::GaborFilters::Destroy(ma::GaborFilters *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x1AC556AE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x1AC556AE0](v3, 0x1000C8052888210);
  }

  if (*this)
  {
    MEMORY[0x1AC556AE0](*this, 0x1000C8052888210);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x1AC556AE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 9);
  if (v5)
  {
    MEMORY[0x1AC556AE0](v5, 0x1000C8052888210);
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v6 = *(this + 12);
  if (v6)
  {
    MEMORY[0x1AC556AE0](v6, 0x1000C8052888210);
  }

  *(this + 12) = 0;
  v7 = *(this + 19);
  if (v7)
  {
    MEMORY[0x1AC556AE0](v7, 0x1000C8052888210);
  }

  *(this + 19) = 0;
  v8 = *(this + 18);
  if (v8)
  {
    MEMORY[0x1AC556AE0](v8, 0x1000C80BDFB0063);
  }

  *(this + 18) = 0;
  v9 = *(this + 13);
  if (v9)
  {
    MEMORY[0x1AC556AE0](v9, 0x1000C8052888210);
  }

  *(this + 13) = 0;
  v10 = *(this + 14);
  if (v10)
  {
    MEMORY[0x1AC556AE0](v10, 0x1000C8052888210);
  }

  *(this + 14) = 0;
  v11 = *(this + 15);
  if (v11)
  {
    MEMORY[0x1AC556AE0](v11, 0x1000C8052888210);
  }

  *(this + 15) = 0;
  v12 = *(this + 17);
  if (v12)
  {
    MEMORY[0x1AC556AE0](v12, 0x1000C8052888210);
  }

  *(this + 17) = 0;
  vDSP_destroy_fftsetup(*(this + 10));
  v13 = *(this + 21);
  if (v13)
  {
    dispatch_release(v13);
    *(this + 21) = 0;
  }

  v14 = *(this + 22);
  if (v14)
  {
    dispatch_release(v14);
    *(this + 22) = 0;
  }

  v15 = *(this + 23);
  if (v15)
  {
    dispatch_release(v15);
    *(this + 23) = 0;
  }

  v16 = *(this + 24);
  if (v16)
  {
    dispatch_release(v16);
    *(this + 24) = 0;
  }
}

void ma::GaborFilters::DispatchHelperCreateGabor(ma::GaborFilters *this, void *a2)
{
  v43 = *(*this + 132);
  if (v43 >= 1)
  {
    v2 = 0;
    v41 = *(this + 3);
    __asm { FMOV            V0.4S, #-1.0 }

    v40 = _Q0;
    do
    {
      v7 = *this;
      v8 = *(*this + 120);
      v9 = *(*this + 132);
      v11 = (*this + 88);
      v10 = *v11;
      v12 = *(*this + 28) * *(*this + 24);
      if (v12 < 0)
      {
        v13 = -1;
      }

      else
      {
        v13 = 4 * v12;
      }

      v14 = MEMORY[0x1E69E5398];
      v15 = operator new[](v13, MEMORY[0x1E69E5398]);
      if (v10 < 0)
      {
        v16 = -1;
      }

      else
      {
        v16 = 4 * v10;
      }

      v17 = operator new[](v16, v14);
      v18 = v17;
      if (v15)
      {
        _ZF = v17 == 0;
      }

      else
      {
        _ZF = 1;
      }

      v20 = !_ZF;
      if (!_ZF)
      {
        v42 = v2 + v9 * v41;
        memcpy(v15, *(v7 + 112), 4 * v10);
        v21 = *(v7 + 96);
        if (v10 >= 1)
        {
          v22 = *(v21 + 16 * v42 + 12);
          v23 = v15;
          v24 = v10;
          do
          {
            v25 = v22 + *v23;
            *v23 = v25;
            v26 = v25;
            v27 = -6.28318531;
            if (v26 > 3.14159265 || (v27 = 6.28318531, v26 < -3.14159265))
            {
              v28 = v27 + v26;
              *v23 = v28;
            }

            ++v23;
            --v24;
          }

          while (v24);
        }

        if (*(v7 + 88) >= 1)
        {
          v29 = 0;
          v30 = (v21 + 16 * v42);
          v31 = (v30[2] + v30[2]) * 3.14159265;
          v32 = *v30 * -10.0;
          v33 = (1.0 / *(v7 + 24)) / v30[1];
          v34 = v15;
          v35 = v18;
          do
          {
            v36 = *v8++;
            v37 = vaddq_f32(vmulq_n_f32(v36, v33), v40);
            v38 = *v34++;
            *v35++ = vsubq_f32(vmulq_f32(v37, vmulq_n_f32(v37, v32)), vmulq_n_f32(vmulq_f32(v38, v38), v31));
            v29 += 4;
          }

          while (v29 < *v11);
        }

        vvexpf((*(v7 + 152) + 4 * v42 * v10), v18, v11);
      }

      v39 = *(v7 + 184);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN2ma12GaborFilters29CreateOneGaborFilterFrequencyEii_block_invoke;
      block[3] = &__block_descriptor_tmp_5_4228;
      block[4] = v7;
      v46 = v20;
      dispatch_sync(v39, block);
      if (v15)
      {
        MEMORY[0x1AC556AE0](v15, 0x1000C8052888210);
      }

      if (v18)
      {
        MEMORY[0x1AC556AE0](v18, 0x1000C8052888210);
      }

      ++v2;
    }

    while (v2 != v43);
  }
}

uint64_t ___ZN2ma12GaborFilters29CreateOneGaborFilterFrequencyEii_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 160) == 1)
  {
    v2 = *(result + 40);
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 160) = v2 & 1;
  return result;
}

uint64_t ma::GaborFilters::ExtractGaborDescriptorGCD(ma::GaborFilters *this, unsigned __int8 *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  fftsetup = vDSP_create_fftsetup(*(this + 8), 0);
  v6 = dispatch_group_create();
  context = this;
  v51 = v4;
  v52 = 0;
  v53 = this;
  v54 = v4;
  v55 = 1;
  v56 = this;
  v57 = v4;
  v58 = 2;
  v60 = v4;
  v61 = 3;
  v7 = *(this + 22);
  v8 = 4 * v7;
  if (v7 < 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = 4 * v7;
  }

  v59 = this;
  v10 = operator new[](v9, MEMORY[0x1E69E5398]);
  v11 = v10;
  v12 = *(this + 51) - 128;
  if (*(this + 51) == 128)
  {
    v13 = vcvtd_n_f64_s32(*(this + 52) - 128, 1uLL);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_17:
    v26 = 4294967188;
    goto LABEL_31;
  }

  v13 = 0;
  v12 = vcvtd_n_f64_s32(v12, 1uLL);
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_6:
  v14 = 0;
  v15 = 0;
  v16 = 1.0 / v7;
  v17 = *(this + 53);
  v18 = *(this + 13);
  v19 = v12 + v13 * v17;
  v20 = 255;
  v21 = v18;
  do
  {
    for (i = 0; i != 128; ++i)
    {
      v23 = a2[v19 + i];
      if (v20 >= v23)
      {
        v20 = a2[v19 + i];
      }

      if (v15 <= v23)
      {
        v15 = a2[v19 + i];
      }

      v21[i] = v23;
    }

    ++v14;
    v19 += v17;
    v21 += 128;
  }

  while (v14 != 128);
  v24 = v15 - v20;
  if (v24 < 1)
  {
    v25 = 255.0;
  }

  else
  {
    v25 = 255.0 / v24;
  }

  if (v7 >= 1)
  {
    v27 = v20;
    v28 = v18;
    do
    {
      v29 = log((v25 * (*v28 - v27)) + 1.0);
      *v28++ = v29;
      --v7;
    }

    while (v7);
  }

  memcpy(v11, v18, v8);
  *(this + 6) = v18;
  bzero(*(this + 7), v8);
  vDSP_fft2d_zip(*(this + 10), this + 3, 1, 0, *(this + 9), *(this + 10), 1);
  vDSP_zvmul(this, 1, this + 3, 1, this + 4, 1, *(this + 22), 1);
  vDSP_fft2d_zip(*(this + 10), this + 4, 1, 0, *(this + 9), *(this + 10), -1);
  v30 = *(this + 22);
  if (v30 >= 1)
  {
    v31 = *(this + 8);
    v32 = *(this + 13);
    v33 = v11;
    v34 = *(this + 22);
    do
    {
      v35 = *v31++;
      v36 = *v33 + (-v16 * v35);
      *v33++ = v36;
      *v32++ = v36 * v36;
      --v34;
    }

    while (v34);
  }

  bzero(*(this + 7), 4 * v30);
  vDSP_fft2d_zip(*(this + 10), this + 3, 1, 0, *(this + 9), *(this + 10), 1);
  vDSP_zvmul(this, 1, this + 3, 1, this + 4, 1, *(this + 22), 1);
  vDSP_fft2d_zip(*(this + 10), this + 4, 1, 0, *(this + 9), *(this + 10), -1);
  v37 = *(this + 22);
  if (v37 >= 1)
  {
    v38 = *(this + 8);
    v39 = *(this + 13);
    v40 = v11;
    do
    {
      v41 = sqrtf(fabsf(*v38 * v16));
      *v38++ = v41;
      v42 = *v40++;
      *v39++ = v42 / (v41 + 0.2);
      --v37;
    }

    while (v37);
  }

  MEMORY[0x1AC556AE0](v11, 0x1000C8052888210);
  bzero(*(this + 7), 4 * *(this + 22));
  vDSP_fft2d_zip(fftsetup, this + 3, 1, 0, *(this + 9), *(this + 10), 1);
  dispatch_group_async_f(v6, *(this + 22), &context, ma::GaborFilters::DispatchHelperDescriptor);
  dispatch_group_async_f(v6, *(this + 22), &v53, ma::GaborFilters::DispatchHelperDescriptor);
  dispatch_group_async_f(v6, *(this + 22), &v56, ma::GaborFilters::DispatchHelperDescriptor);
  dispatch_group_async_f(v6, *(this + 22), &v59, ma::GaborFilters::DispatchHelperDescriptor);
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v6);
  v43 = 0;
  v44 = *(this + 17);
  v45 = *(this + 18);
  v46 = vdupq_n_s32(0x477FFF00u);
  do
  {
    v48 = *v44;
    v47 = v44[1];
    v44 += 2;
    *(v45 + v43) = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(v48, v46)), vcvtq_u32_f32(vmulq_f32(v47, v46)));
    v43 += 16;
  }

  while (v43 != 64);
  v26 = 0;
LABEL_31:
  vDSP_destroy_fftsetup(fftsetup);
  return v26;
}

void ma::GaborFilters::DispatchHelperDescriptor(ma::GaborFilters *this, void *a2)
{
  v2 = this;
  v3 = *(*this + 88);
  fftsetup = vDSP_create_fftsetup(*(*this + 32), 0);
  v36 = v3;
  if (v3 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = 4 * v3;
  }

  v6 = MEMORY[0x1E69E5398];
  v7 = operator new[](v5, MEMORY[0x1E69E5398]);
  v8 = operator new[](v5, v6);
  v9 = operator new[](v5, v6);
  v10 = operator new[](v5, v6);
  v11 = *(v2 + 3);
  v12 = operator new[](v5, v6);
  if (v12)
  {
    v13 = v7 == 0;
  }

  else
  {
    v13 = 1;
  }

  v16 = v13 || v8 == 0 || v9 == 0 || v10 == 0;
  v17 = !v16;
  v18 = *v2;
  if (!v16)
  {
    v35 = v17;
    memcpy(v8, *(v18 + 48), 4 * v36);
    memcpy(v7, *(v18 + 56), 4 * v36);
    __B.realp = v8;
    __B.imagp = v7;
    __C.realp = v9;
    __C.imagp = v10;
    v19 = *(v18 + 132);
    if (v19 >= 1)
    {
      v31 = v10;
      v32 = v2;
      v33 = v7;
      v34 = v9;
      v20 = 0;
      v21 = *(v18 + 88);
      v22 = v19 * v11;
      v24 = *(v18 + 36);
      v23 = *(v18 + 40);
      do
      {
        v25 = *(v18 + 8);
        __A.realp = (*(v18 + 152) + 4 * (v20 + v19 * v11) * v21);
        __A.imagp = v25;
        vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v21, 1);
        vDSP_fft2d_zip(fftsetup, &__C, 1, 0, v24, v23, -1);
        vDSP_zvmags(&__C, 1, v12, 1, v21);
        if (v21 >= 4)
        {
          v26 = v21 >> 2;
          v27 = v12;
          do
          {
            v28 = vrsqrteq_f32(*v27);
            v29 = vmulq_f32(v28, vrsqrtsq_f32(vmulq_f32(v28, v28), *v27));
            *v27 = vmulq_n_f32(vmulq_f32(*v27, vmulq_f32(vrsqrtsq_f32(vmulq_f32(v29, v29), *v27), v29)), 1.0 / v21);
            ++v27;
            --v26;
          }

          while (v26);
        }

        vDSP_meanv(v12, 1, (*(v18 + 136) + 4 * v22++), v21);
        ++v20;
        v19 = *(v18 + 132);
      }

      while (v20 < v19);
      v2 = v32;
      v7 = v33;
      v18 = *v32;
      v9 = v34;
      v10 = v31;
    }

    v17 = v35;
  }

  v30 = *(v18 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2ma12GaborFilters24DispatchHelperDescriptorEPv_block_invoke;
  block[3] = &__block_descriptor_tmp_4230;
  block[4] = v2;
  v38 = v17;
  dispatch_sync(v30, block);
  vDSP_destroy_fftsetup(fftsetup);
  if (v12)
  {
    MEMORY[0x1AC556AE0](v12, 0x1000C8052888210);
  }

  if (v7)
  {
    MEMORY[0x1AC556AE0](v7, 0x1000C8052888210);
  }

  if (v8)
  {
    MEMORY[0x1AC556AE0](v8, 0x1000C8052888210);
  }

  if (v10)
  {
    MEMORY[0x1AC556AE0](v10, 0x1000C8052888210);
  }

  if (v9)
  {
    MEMORY[0x1AC556AE0](v9, 0x1000C8052888210);
  }
}

uint64_t ___ZN2ma12GaborFilters24DispatchHelperDescriptorEPv_block_invoke(uint64_t result)
{
  v1 = **(result + 32);
  if (*(v1 + 161) == 1)
  {
    v2 = *(result + 40);
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 161) = v2 & 1;
  return result;
}

void sub_1A5DC70B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  MEMORY[0x1AC556B00](v21, v20);
  _Unwind_Resume(a1);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5DC71B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<VNRequestFaceLandmarksConstellation,std::vector<int>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1A5DC74D0(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v2 + 8));
  MEMORY[0x1AC556B00](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1A5DC8350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5DC8320);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1A5DC89A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = VNFaceLandmarkDetector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void cvml::util::binserialized_table_of_contents::init(cvml::util::binserialized_table_of_contents *this, unsigned __int16 *a2, uint64_t a3)
{
  if (a3 >= 41)
  {
    if (a2[4] - 1 <= 8)
    {
      operator new();
    }

    syslog(3, "Error %s when executing %s in file %s:%d\n", "model file is corrupt", "void cvml::util::binserialized_table_of_contents::init(const void *const, size_t)", "/Library/Caches/com.apple.xbs/Sources/Vision/VisionKitFramework/VN/algorithm_util/binserialized_mapped_file_contents.h", 119);
    __assert_rtn("syslog_assert_failed", "common_defines.h", 24, "false");
  }
}

void sub_1A5DC93C0(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,void *>>>::operator()[abi:ne200100](1, v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1A5DC93F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1A5DC9414(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1A5DC941CLL);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void cvml::util::binserialized_contents::init_model_values(void *a1, uint64_t a2, const char *a3, unint64_t *a4)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v52, "::");
    v7 = strlen(a3);
    v8 = std::string::insert(&v52, 0, a3, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v58 = v8->__r_.__value_.__r.__words[2];
    v57 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SBYTE7(v53) < 0)
    {
      operator delete(v52);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v57, "");
  }

  v50 = a3;
  if (*a4)
  {
    v10 = 0;
    do
    {
      v11 = *(a4[1] + 8 * v10);
      if (v58 >= 0)
      {
        v12 = HIBYTE(v58);
      }

      else
      {
        v12 = *(&v57 + 1);
      }

      v13 = strlen(*(a4[1] + 8 * v10));
      std::string::basic_string[abi:ne200100](&__p, v12 + v13);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v12)
      {
        if (v58 >= 0)
        {
          v15 = &v57;
        }

        else
        {
          v15 = v57;
        }

        memmove(p_p, v15, v12);
      }

      v16 = p_p + v12;
      if (v13)
      {
        memmove(v16, v11, v13);
      }

      v16[v13] = 0;
      v17 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &__p;
      }

      v18 = v17->__r_.__value_.__s.__data_[0];
      if (v17->__r_.__value_.__s.__data_[0])
      {
        v19 = &v17->__r_.__value_.__s.__data_[1];
        v20 = 5381;
        do
        {
          v20 = 33 * v20 + v18;
          v21 = *v19++;
          v18 = v21;
        }

        while (v21);
      }

      else
      {
        v20 = 5381;
      }

      v22 = std::__hash_table<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>>>::find<unsigned long long>(*a2, *(a2 + 8), v20);
      if (v22)
      {
        v24 = v22[3];
        v23 = v22[4];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&v52 = v24;
        *(&v52 + 1) = v23;
        v25 = *(v22 + 7);
        v53 = *(v22 + 5);
        v54 = v25;
        v55 = v22[9];
        if (WORD4(v53) - 1 < 2)
        {
          goto LABEL_33;
        }

        if (WORD4(v53) != 3)
        {
          syslog(3, "Error %s when executing %s in file %s:%d\n", "Model file info populated incorrectly", "void cvml::util::binserialized_contents::init_model_values(const binserialized_table_of_contents &, const char *, const vision::mod::BinSerializedModelFileInfo &)", "/Library/Caches/com.apple.xbs/Sources/Vision/VisionKitFramework/VN/algorithm_util/binserialized_mapped_file_contents.h", 209);
          __assert_rtn("syslog_assert_failed", "common_defines.h", 24, "false");
        }

        if ((v24 & 3) != 0)
        {
LABEL_33:
          operator new[]();
        }

        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        vision::mod::ModelValues::setModelValues(a1, &__p, v24, v23, v55);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v10;
    }

    while (v10 < *a4);
  }

  if (a4[2])
  {
    v26 = 0;
    do
    {
      v27 = *(a4[3] + 8 * v26);
      if (v58 >= 0)
      {
        v28 = HIBYTE(v58);
      }

      else
      {
        v28 = *(&v57 + 1);
      }

      v29 = strlen(*(a4[3] + 8 * v26));
      std::string::basic_string[abi:ne200100](&v52, v28 + v29);
      if ((SBYTE7(v53) & 0x80u) == 0)
      {
        v30 = &v52;
      }

      else
      {
        v30 = v52;
      }

      if (v28)
      {
        if (v58 >= 0)
        {
          v31 = &v57;
        }

        else
        {
          v31 = v57;
        }

        memmove(v30, v31, v28);
      }

      v32 = v30 + v28;
      if (v29)
      {
        memmove(v32, v27, v29);
      }

      v32[v29] = 0;
      v33 = v52;
      if ((SBYTE7(v53) & 0x80u) == 0)
      {
        v33 = &v52;
      }

      v34 = *v33;
      if (*v33)
      {
        v35 = v33 + 1;
        v36 = 5381;
        do
        {
          v36 = 33 * v36 + v34;
          v37 = *v35++;
          v34 = v37;
        }

        while (v37);
      }

      else
      {
        v36 = 5381;
      }

      v38 = std::__hash_table<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>>>::find<unsigned long long>(*a2, *(a2 + 8), v36);
      if (v38)
      {
        v39 = v38[3];
        v40 = v38[4];
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(v38 + 24) != 9)
        {
          syslog(3, "Error %s when executing %s in file %s:%d\n", "Model file info populated incorrectly", "void cvml::util::binserialized_contents::init_model_values(const binserialized_table_of_contents &, const char *, const vision::mod::BinSerializedModelFileInfo &)", "/Library/Caches/com.apple.xbs/Sources/Vision/VisionKitFramework/VN/algorithm_util/binserialized_mapped_file_contents.h", 226);
          __assert_rtn("syslog_assert_failed", "common_defines.h", 24, "false");
        }

        vision::mod::ModelValues::setModelValues(a1, &v52, v39, v40, v38[9]);
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }
      }

      if (SBYTE7(v53) < 0)
      {
        operator delete(v52);
      }

      ++v26;
    }

    while (v26 < a4[2]);
  }

  if (a4[4])
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = a4[5];
      v44 = *(v43 + 8 * v42);
      if (v50)
      {
        if (v44)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, *(v43 + 8 * v42));
          if (v58 >= 0)
          {
            v45 = &v57;
          }

          else
          {
            v45 = v57;
          }

          if (v58 >= 0)
          {
            v46 = HIBYTE(v58);
          }

          else
          {
            v46 = *(&v57 + 1);
          }

          v47 = std::string::insert(&__p, 0, v45, v46);
          v48 = *&v47->__r_.__value_.__l.__data_;
          *&v53 = *(&v47->__r_.__value_.__l + 2);
          v52 = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          if ((SBYTE7(v53) & 0x80u) == 0)
          {
            v49 = &v52;
          }

          else
          {
            v49 = v52;
          }

          cvml::util::binserialized_contents::init_model_values(a1, a2, v49, a4[6] + v41);
          if (SBYTE7(v53) < 0)
          {
            operator delete(v52);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          cvml::util::binserialized_contents::init_model_values(a1, a2, v50, a4[6] + v41);
        }
      }

      else
      {
        cvml::util::binserialized_contents::init_model_values(a1, a2, v44, a4[6] + v41);
      }

      ++v42;
      v41 += 56;
    }

    while (v42 < a4[4]);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }
}

void sub_1A5DC9A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5DC9AA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 89) < 0)
  {
    JUMPOUT(0x1A5DC9B88);
  }

  JUMPOUT(0x1A5DC9B8CLL);
}

void sub_1A5DC9AE0(void *a1)
{
  __cxa_begin_catch(a1);
  MEMORY[0x1AC556AE0](v1, 0x1000C8052888210);
  __cxa_rethrow();
}

void sub_1A5DC9B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a20 < 0)
  {
    JUMPOUT(0x1A5DC9B6CLL);
  }

  if (*(v21 - 89) < 0)
  {
    JUMPOUT(0x1A5DC9B88);
  }

  JUMPOUT(0x1A5DC9B8CLL);
}

void std::__shared_ptr_emplace<vision::mod::LandmarkAttributes>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1971D58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void vision::mod::ModelValues::setModelValues(void *a1, __int128 *a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5)
{
  v6 = 2;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3;
  v8 = a4;
  v9 = a5;
  std::pair<std::string const,vision::mod::ModelValues::ValueInfo>::pair[abi:ne200100]<std::string const&,vision::mod::ModelValues::ValueInfo,0>(&__p, a2, &v6);
  std::__hash_table<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,vision::mod::ModelValues::ValueInfo>>(a1, &__p);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

{
  v6 = 1;
  v7 = a3;
  v8 = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a5;
  std::pair<std::string const,vision::mod::ModelValues::ValueInfo>::pair[abi:ne200100]<std::string const&,vision::mod::ModelValues::ValueInfo,0>(&__p, a2, &v6);
  std::__hash_table<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,vision::mod::ModelValues::ValueInfo>>(a1, &__p);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1A5DC9D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::pair<std::string const,vision::mod::ModelValues::ValueInfo>::~pair(va);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DC9DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::pair<std::string const,vision::mod::ModelValues::ValueInfo>::~pair(va);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,vision::mod::ModelValues::ValueInfo>::pair[abi:ne200100]<std::string const&,vision::mod::ModelValues::ValueInfo,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = *a3;
  *&this[1].__r_.__value_.__r.__words[1] = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  this[2].__r_.__value_.__r.__words[0] = *(a3 + 24);
  return this;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,vision::mod::ModelValues::ValueInfo>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1A5DCA30C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,vision::mod::ModelValues::ValueInfo>::~pair(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,vision::mod::ModelValues::ValueInfo>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__shared_ptr_pointer<unsigned char const*,cvml::util::binserialized_table_of_contents::blob_info::blob_info(unsigned char const*,_BinSerializer_blobHeader_ const&)::{lambda(unsigned char const*)#1},std::allocator<unsigned char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4cvml4util31binserialized_table_of_contents9blob_infoC1EPKhRK26_BinSerializer_blobHeader_EUlS4_E_"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<unsigned char const*,cvml::util::binserialized_table_of_contents::blob_info::blob_info(unsigned char const*,_BinSerializer_blobHeader_ const&)::{lambda(unsigned char const*)#1},std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5DCB5EC(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1A5DCB708(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4488(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t FaceRegionMap_addForeheadLandmarks(float32x2_t **a1)
{
  v3 = *a1;
  if (a1[1] - *a1 != 504)
  {
    return 5759;
  }

  v20[3] = v1;
  v20[4] = v2;
  v5 = vmul_f32(vadd_f32(v3[2], v3[5]), 0x3F0000003F000000);
  v6 = vadd_f32(vsub_f32(v3[40], v3[41]), vsub_f32(v3[50], v3[49]));
  v7 = vmul_f32(v6, v6);
  *v7.i32 = sqrtf(*&v7.i32[1] + (v6.f32[0] * v6.f32[0]));
  if (*v7.i32 > 0.0)
  {
    v6 = vdiv_f32(v6, vdup_lane_s32(v7, 0));
  }

  v8 = v3[60].f32[0] - v3[62].f32[0];
  v9 = v3[60].f32[1] - v3[62].f32[1];
  v10 = vmul_n_f32(v6, sqrtf((v9 * v9) + (v8 * v8)));
  v11 = vdup_n_s32(0x3F333333u);
  v12 = v3[1];
  v20[0] = vmla_f32(*v3, v11, v10);
  v13 = vdup_n_s32(0x3F666666u);
  v19 = vmla_f32(v12, v13, v10);
  v18 = vmla_f32(v5, vdup_n_s32(0x3F8CCCCDu), v10);
  v14 = vmla_f32(v3[6], v13, v10);
  v16 = vmla_f32(v3[7], v11, v10);
  v17 = v14;
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](a1, v20);
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](a1, &v19);
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](a1, &v18);
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](a1, &v17);
  std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](a1, &v16);
  return 5760;
}

void sub_1A5DCCC98(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

void sub_1A5DCCD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNImageSourceManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5DCD020(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DCD0C0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DCD0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5DCD14C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DCD160(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5DCD1E0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DCD1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5DCD274(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DCD288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  objc_end_catch();
  a9.super_class = VNImageBufferCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5DCFD60()
{
  if (v0)
  {
    JUMPOUT(0x1A5DCFD68);
  }

  JUMPOUT(0x1A5DCFDE4);
}

void sub_1A5DCFDB0()
{
  if (v0)
  {
    JUMPOUT(0x1A5DCFDB8);
  }

  JUMPOUT(0x1A5DCFDE4);
}

void sub_1A5DD1240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5DD121CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5DD1B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5DD1A68);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5DD1BB0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  JUMPOUT(0x1A5DD1C18);
}

void sub_1A5DD1BCC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    os_unfair_lock_unlock(v2 + 4);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A5DD1BEC()
{
  objc_end_catch();

  if (!v1)
  {
    JUMPOUT(0x1A5DD1B70);
  }

  JUMPOUT(0x1A5DD1B6CLL);
}

void sub_1A5DD1C30()
{
  objc_end_catch();

  JUMPOUT(0x1A5DD1BC0);
}

void sub_1A5DD1C58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DD259C()
{
  objc_end_catch();

  JUMPOUT(0x1A5DD25A8);
}

void CVPixelBufferReleaseReferencingPixelBufferCallback(__CVBuffer *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    CVPixelBufferUnlockBaseAddress(a1, 0);

    CVPixelBufferRelease(a1);
  }

  else
  {
    VNValidatedLog(4, @"VNImageBuffer - this release call should not be used with anything but a referencing pixelbuffer %s", a3, a4, a5, a6, a7, a8, "void CVPixelBufferReleaseReferencingPixelBufferCallback(void * _Nullable, const void * _Nullable)");
  }
}

void sub_1A5DD3A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  _Block_object_dispose((v20 - 152), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4804(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1A5DD43E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNImageBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5DD562C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v2 + 8));
  MEMORY[0x1AC556B00](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t Geometry2D_metricToPixelHomo2D(uint64_t *a1, float *a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1916;
  }

  v3 = *a3;
  if (!*a3)
  {
    return 1916;
  }

  v4 = a3[1];
  if (!v4)
  {
    return 1916;
  }

  v6 = a3[2];
  if (!v6)
  {
    return 1916;
  }

  v7 = 1916;
  if (!a1)
  {
    return v7;
  }

  v8 = *(a3 + 6);
  if (v8 < 1)
  {
    return v7;
  }

  v9 = *a1;
  if (!*a1)
  {
    return 1916;
  }

  v10 = a1[1];
  if (!v10)
  {
    return 1916;
  }

  v11 = a1[2];
  if (!v11)
  {
    return 1916;
  }

  v12 = *(a1 + 6);
  v7 = 1916;
  if (v12 >= 1 && v12 == v8)
  {
    v13 = 0;
    v14 = *a2;
    v15 = a2[3];
    v16 = a2[4];
    v17 = 4 * v8;
    v18 = a2[6];
    v19 = a2[7];
    do
    {
      *(v3 + v13) = ((v15 * *(v10 + v13)) + (v14 * *(v9 + v13))) + (v18 * *&v11[v13]);
      *(v4 + v13) = (v19 * *&v11[v13]) + (v16 * *(v10 + v13));
      v13 += 4;
    }

    while (v17 != v13);
    memcpy(v6, v11, v17);
    return 1920;
  }

  return v7;
}

void sub_1A5DD602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);

  _Unwind_Resume(a1);
}

void sub_1A5DD6404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18)
{
  _Block_object_dispose((v20 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

IOSurfaceRef createIOSurfaceWithInput(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  dest.data = *MEMORY[0x1E696D130];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  src.data = v10;
  dest.height = *MEMORY[0x1E696CF58];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
  src.height = v11;
  dest.width = *MEMORY[0x1E696CE50];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:2];
  src.width = v12;
  dest.rowBytes = *MEMORY[0x1E696CE58];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  src.rowBytes = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&src forKeys:&dest count:4];

  v15 = IOSurfaceCreate(v14);
  if (!v15)
  {
    if (a5)
    {
      v16 = +[VNFgBgInstanceSegmenterError allocationErrorIOSurface];
      v17 = [VNFgBgInstanceSegmenterError errorWithCode:-7 description:v16];
LABEL_13:
      *a5 = v17;

      return 0;
    }

    return 0;
  }

  if (IOSurfaceLock(v15, 0, 0))
  {
    CFRelease(v15);
    if (a5)
    {
      goto LABEL_12;
    }

    return 0;
  }

  BaseAddress = IOSurfaceGetBaseAddress(v15);
  src.data = *a4;
  src.height = 1;
  src.width = a2 * a1;
  src.rowBytes = 4 * a2 * a1;
  dest.data = BaseAddress;
  dest.height = 1;
  dest.width = a2 * a1;
  dest.rowBytes = 2 * a2 * a1;
  v19 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
  if (a5 && v19)
  {
    v20 = +[VNFgBgInstanceSegmenterError genericErrorIOSurface];
    *a5 = [VNFgBgInstanceSegmenterError errorWithCode:-7 description:v20];
  }

  if (IOSurfaceUnlock(v15, 0, 0))
  {
    CFRelease(v15);
    if (a5)
    {
LABEL_12:
      v16 = +[VNFgBgInstanceSegmenterError genericErrorIOSurface];
      v17 = [VNFgBgInstanceSegmenterError errorWithCode:-7 description:v16];
      goto LABEL_13;
    }

    return 0;
  }

  return v15;
}

void sub_1A5DD6E08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5DD73B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, void *a29, uint64_t a30, void *a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);

  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5007(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

char *apple::vision::libraries::autotrace::EPolygon::addPointAtStart(apple::vision::libraries::autotrace::EPolygon *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 1);
LABEL_5:
    result = &v3[8 * v2 - 8];
    ++*this;
    *(this + 4) = v2 - 1;
    return result;
  }

  v4 = malloc_type_malloc(8 * *this + 800, 0x100004000313F17uLL);
  if (v4)
  {
    v3 = v4;
    memmove(v4 + 400, (*(this + 1) + 8 * *(this + 4)), 8 * *this);
    *(this + 4) = 50;
    *(this + 1) = *this + 100;
    free(*(this + 1));
    *(this + 1) = v3;
    v2 = *(this + 4);
    goto LABEL_5;
  }

  VNValidatedLog(4, @"%s: could not extend extract polygons point list", v5, v6, v7, v8, v9, v10, "addPointAtStart");
  return 0;
}

char *apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(apple::vision::libraries::autotrace::EPolygon *this)
{
  v2 = *this;
  v3 = *this + *(this + 4);
  if (v3 != *(this + 1))
  {
    v11 = *(this + 1);
    goto LABEL_5;
  }

  v4 = malloc_type_malloc(8 * v2 + 800, 0x100004000313F17uLL);
  if (v4)
  {
    v11 = v4;
    memmove(v4 + 400, (*(this + 1) + 8 * *(this + 4)), 8 * *this);
    *(this + 4) = 50;
    *(this + 1) = *this + 100;
    free(*(this + 1));
    *(this + 1) = v11;
    v2 = *this;
    v3 = *this + *(this + 4);
LABEL_5:
    result = &v11[8 * v3];
    *this = v2 + 1;
    return result;
  }

  VNValidatedLog(4, @"%s: could not extend extract polygons point list", v5, v6, v7, v8, v9, v10, "addPointAtEnd");
  return 0;
}

uint64_t apple::vision::libraries::autotrace::EPolygon::containsPoint(unsigned int *a1, double a2)
{
  v2 = *a1;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 1);
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v2 - 1 == v3)
      {
        v7 = 0;
      }

      else
      {
        v7 = v3 + 1;
      }

      v8 = *(v5 + 8 * v7);
      if (*(&v6 + 1) != *(&v8 + 1))
      {
        if (*(&v8 + 1) <= *(&v6 + 1))
        {
          v10 = *&v8;
          LODWORD(v8) = *(v5 + 8 * v3);
          LODWORD(v11) = HIDWORD(*(v5 + 8 * v7));
          LODWORD(v12) = HIDWORD(*(v5 + 8 * v3));
        }

        else
        {
          LODWORD(v10) = *(v5 + 8 * v3);
          LODWORD(v11) = HIDWORD(*(v5 + 8 * v3));
          LODWORD(v12) = HIDWORD(*(v5 + 8 * v7));
        }

        v9 = 0;
        if (v10 < *&a2 && *&v8 < *&a2)
        {
          goto LABEL_8;
        }

        if (v11 > *(&a2 + 1) || v12 < *(&a2 + 1))
        {
          goto LABEL_8;
        }

        if (*&v8 > *&a2 && v10 > *&a2)
        {
          v9 = v11 != *(&a2 + 1);
          if (*(&v8 + 1) > *(&v6 + 1) || v11 == *(&a2 + 1))
          {
            goto LABEL_8;
          }

          goto LABEL_40;
        }

        v17 = ((*&a2 - *&v8) * (v11 - v12)) - ((*(&a2 + 1) - v12) * (v10 - *&v8));
        if (v17 != 0.0)
        {
          v18 = v17 <= 0.0 || v11 == *(&a2 + 1);
          v9 = !v18;
          if (v18 || *(&v8 + 1) > *(&v6 + 1))
          {
            goto LABEL_8;
          }

LABEL_40:
          v9 = 1;
          goto LABEL_8;
        }
      }

      v9 = 0;
LABEL_8:
      ++v3;
      v4 += v9;
      if (v2 == v3)
      {
        return v4 & 1;
      }
    }
  }

  return 0;
}

BOOL apple::vision::libraries::autotrace::EPolygonList::init(apple::vision::libraries::autotrace::EPolygonList *this)
{
  v8 = malloc_type_malloc(0xFA0uLL, 0x10800400A3A46C6uLL);
  *(this + 1) = v8;
  if (v8)
  {
    *this = 0x6400000000;
    *(this + 4) = -1;
  }

  else
  {
    VNValidatedLog(4, @"%s: could not allocate extract polygons point list", v2, v3, v4, v5, v6, v7, "init");
  }

  return v8 != 0;
}

void apple::vision::libraries::autotrace::EPolygonList::term(apple::vision::libraries::autotrace::EPolygonList *this)
{
  if (*this >= 1)
  {
    v2 = 0;
    v3 = *(this + 1);
    v4 = v3 + 21;
    do
    {
      *(v4 + 3) = *(this + 4);
      *(this + 4) = -858993459 * ((v3 - *(this + 1)) >> 3);
      *v4 = 1;
      free(*(v4 - 13));
      *(v4 - 21) = 0u;
      *(v4 + 7) = -1;
      ++v2;
      v4 += 40;
      v3 += 40;
    }

    while (v2 < *this);
  }

  v5 = *(this + 1);

  free(v5);
}

void apple::vision::libraries::autotrace::EPolygonList::freePolygon(apple::vision::libraries::autotrace::EPolygonList *this, apple::vision::libraries::autotrace::EPolygon *a2)
{
  *(a2 + 6) = *(this + 4);
  *(this + 4) = -858993459 * ((a2 - *(this + 1)) >> 3);
  *(a2 + 21) = 1;
  free(*(a2 + 1));
  *a2 = 0u;
  *(a2 + 28) = -1;

  apple::vision::libraries::autotrace::EPolygonList::verifyList(this, v4, v5, v6, v7, v8, v9, v10);
}

void apple::vision::libraries::autotrace::EPolygonList::verifyList(apple::vision::libraries::autotrace::EPolygonList *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = *(this + 4); i != -1; i = *(v11 + 24))
  {
    v10 = i;
    if (i < 0 || i >= *this)
    {
      VNValidatedLog(4, @"%s: free polygon %d free list index out of range (value: %d)", a3, a4, a5, a6, a7, a8, "verifyList");
    }

    v11 = *(this + 1) + 40 * v10;
    if ((*(v11 + 21) & 1) == 0)
    {
      VNValidatedLog(4, @"%s: polygon %d on free list is not marked free", a3, a4, a5, a6, a7, a8, "verifyList");
    }
  }

  if (*this >= 1)
  {
    v12 = 0;
    v13 = *(this + 1);
    do
    {
      if (*(v13 + 21) == 1)
      {
        for (j = *(this + 4); j != -1; j = *(*(this + 1) + 40 * j + 24))
        {
          if (j == v12)
          {
            goto LABEL_28;
          }
        }

        VNValidatedLog(4, @"%s: free polygon %d is not on the free list", a3, a4, a5, a6, a7, a8, "verifyPolygon");
      }

      else
      {
        if ((*v13 & 0x80000000) != 0 || *v13 > *(v13 + 4))
        {
          VNValidatedLog(4, @"%s: polygon %d has a bad number of points %d (maxPoints %d)", a3, a4, a5, a6, a7, a8, "verifyPolygon");
        }

        v15 = *(v13 + 32);
        if (v15 == -1)
        {
          if (*(v13 + 24) != -1)
          {
            VNValidatedLog(4, @"%s: top-level polygon %d has a next pointer (value: %d)", a3, a4, a5, a6, a7, a8, "verifyPolygon");
          }

          for (k = *(v13 + 28); k != -1; k = *(*(this + 1) + 40 * k + 24))
          {
            if (k < 0 || k >= *this)
            {
              VNValidatedLog(4, @"%s: polygon %d has a bad index (value: %d) in its child list", a3, a4, a5, a6, a7, a8, "verifyPolygon");
            }
          }
        }

        else
        {
          if (v15 < 0 || v15 >= *this)
          {
            VNValidatedLog(4, @"%s: child polygon %d has a bad parent index (value %d)", a3, a4, a5, a6, a7, a8, "verifyPolygon");
            v15 = *(v13 + 32);
          }

          v16 = *(this + 1);
          for (m = *(v16 + 40 * v15 + 28); m != -1; m = *(v16 + 40 * m + 24))
          {
            if (m == v12)
            {
              goto LABEL_28;
            }
          }

          VNValidatedLog(4, @"%s: child polygon %d is not found in the child list of its parent polygon %d", a3, a4, a5, a6, a7, a8, "verifyPolygon");
        }
      }

LABEL_28:
      ++v12;
      v13 += 40;
    }

    while (v12 < *this);
  }
}

uint64_t apple::vision::libraries::autotrace::EPolygonList::newPolygon(apple::vision::libraries::autotrace::EPolygonList *this, int a2, int a3)
{
  v6 = *(this + 4);
  if (v6 == -1)
  {
    v8 = *this;
    v9 = *(this + 1);
    if (*this >= v9)
    {
      v10 = malloc_type_malloc(40 * v9 + 4000, 0x10800400A3A46C6uLL);
      v7 = v10;
      if (!v10)
      {
        VNValidatedLog(4, @"%s: could not extend extract polygons list", v11, v12, v13, v14, v15, v16, "newPolygon");
        return v7;
      }

      memmove(v10, *(this + 1), 40 * *(this + 1));
      *(this + 1) += 100;
      free(*(this + 1));
      *(this + 1) = v7;
      v8 = *this;
    }

    else
    {
      v7 = *(this + 1);
    }

    v7 += 40 * v8;
    *this = v8 + 1;
  }

  else
  {
    v7 = *(this + 1) + 40 * v6;
    *(this + 4) = *(v7 + 24);
    *(v7 + 21) = 0;
  }

  v17 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  *(v7 + 8) = v17;
  if (v17)
  {
    *v7 = 0;
    *(v7 + 4) = a2;
    v25 = a2 / 2;
    if (!a3)
    {
      v25 = 0;
    }

    *(v7 + 16) = v25;
    *(v7 + 20) = 0;
    *(v7 + 24) = -1;
    *(v7 + 32) = -1;
    apple::vision::libraries::autotrace::EPolygonList::verifyList(this, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    VNValidatedLog(4, @"%s: could not allocate extract polygons point list", v19, v20, v21, v22, v23, v24, "newPolygon");
    return 0;
  }

  return v7;
}

void apple::vision::libraries::autotrace::EPolygonList::insertPolygon(apple::vision::libraries::autotrace::EPolygonList *this, apple::vision::libraries::autotrace::EPolygon *a2, apple::vision::libraries::autotrace::EPolygon *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 20) != 1 || (*(a3 + 20) & 1) == 0)
  {
    VNValidatedLog(4, @"%s: something is not closed", a3, a4, a5, a6, a7, a8, "insertPolygon");
  }

  v11 = *(this + 1);
  v12 = -858993459 * ((a3 - v11) >> 3);
  v13 = *(a3 + 8);
  if (v13 != -1)
  {
    v14 = v11 + 40 * v13;
    v17 = *(v14 + 28);
    v15 = (v14 + 28);
    v16 = v17;
    if (v17 != -1)
    {
      v18 = 0;
      while (1)
      {
        if ((v16 & 0x80000000) != 0 || v16 >= *this)
        {
          VNValidatedLog(4, @"%s: bad next index %d in polygon %d nested list", a3, a4, a5, a6, a7, a8, "insertPolygon");
          v11 = *(this + 1);
          goto LABEL_16;
        }

        v19 = v11 + 40 * v16;
        if (v16 == v12)
        {
          break;
        }

        v16 = *(v19 + 24);
        v18 = v19;
        if (v16 == -1)
        {
          goto LABEL_16;
        }
      }

      v20 = *(v19 + 24);
      if (v18)
      {
        *(v18 + 24) = v20;
      }

      else
      {
        *v15 = v20;
      }
    }
  }

LABEL_16:
  *(a3 + 6) = *(a2 + 7);
  *(a2 + 7) = v12;
  *(a3 + 21) = 0;
  v21 = -858993459 * ((a2 - v11) >> 3);
  *(a3 + 8) = v21;
  if (v21 < 0 || *this <= v21)
  {
    VNValidatedLog(4, @"%s: parent index out of whack", a3, a4, a5, a6, a7, a8, "insertPolygon");
  }

  apple::vision::libraries::autotrace::EPolygonList::verifyList(this, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t apple::vision::libraries::autotrace::EPolygonList::containsPolygon(apple::vision::libraries::autotrace::EPolygonList *this, EPolygon *a2)
{
  v2 = *this;
  if (*this < 1)
  {
    return 0;
  }

  v4 = **(a2 + 1);
  for (i = *(this + 1); i == a2 || (*(i + 21) & 1) != 0 || *(i + 20) != 1 || (apple::vision::libraries::autotrace::EPolygon::containsPoint(i, v4) & 1) == 0; i += 40)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = begin;
    value = 0;
    v19.__end_ = begin;
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
      value = v19.__end_cap_.__value_;
    }

    else
    {
      v13 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v13;
      end = begin;
    }

    v10 = end + 1;
    v15 = *(a1 + 8) - *a1;
    v16 = begin - v15;
    memcpy(begin - v15, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v10;
    v18 = *(a1 + 16);
    *(a1 + 16) = value;
    v19.__end_ = v17;
    v19.__end_cap_.__value_ = v18;
    v19.__first_ = v17;
    v19.__begin_ = v17;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

size_t *std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(v10);
    }

    v11 = 32 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v11 + 24) = *(a2 + 6);
    v6 = 32 * v7 + 32;
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 6);
    v6 = v3 + 32;
  }

  v2[1] = v6;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,false>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = (a2 - 4);
    v8 = (a2 - 1);
    v195 = a2 - 12;
    v196 = a2 - 8;
    v197 = (a2 - 9);
    v198 = (a2 - 5);
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = (a2 - v9) >> 5;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v123 = (a1 + 56);
                v124 = *(a1 + 56);
                v125 = (a1 + 32);
                v126 = (a1 + 24);
                v127 = *(a1 + 24);
                v128 = *v8;
                if (v124 <= v127)
                {
                  if (v128 <= v124)
                  {
                    return;
                  }

                  v180 = *v125;
                  v181 = *(a1 + 48);
                  v182 = *(a2 - 2);
                  *v125 = *v7;
                  *(a1 + 48) = v182;
                  *(a2 - 2) = v181;
                  *v7 = v180;
                  *&v180 = *v123;
                  *v123 = *v8;
                  *v8 = v180;
                  if (*v123 <= *v126)
                  {
                    return;
                  }

                  v257 = *(a1 + 16);
                  v230 = *a1;
                  *a1 = *v125;
                  *(a1 + 16) = *(a1 + 48);
                  *v125 = v230;
                  *(a1 + 48) = v257;
                }

                else
                {
                  if (v128 <= v124)
                  {
                    v258 = *(a1 + 16);
                    v232 = *a1;
                    *a1 = *v125;
                    *(a1 + 16) = *(a1 + 48);
                    *v125 = v232;
                    *(a1 + 48) = v258;
                    *(a1 + 24) = v124;
                    *(a1 + 56) = v127;
                    if (*v8 <= v127)
                    {
                      return;
                    }

                    v191 = *v125;
                    v192 = *(a1 + 48);
                    v193 = *(a2 - 2);
                    *v125 = *v7;
                    *(a1 + 48) = v193;
                    *(a2 - 2) = v192;
                    *v7 = v191;
                    v126 = (a1 + 56);
                  }

                  else
                  {
                    v256 = *(a1 + 16);
                    v226 = *a1;
                    v129 = *v7;
                    *(a1 + 16) = *(a2 - 2);
                    *a1 = v129;
                    *(a2 - 2) = v256;
                    *v7 = v226;
                  }

                  v123 = v8;
                }

                v194 = *v126;
                *v126 = *v123;
                *v123 = v194;
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,0>(a1, (a1 + 32), (a1 + 64), a2 - 2);
                return;
              case 5:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96));
                if (*v8 > *(a1 + 120))
                {
                  v111 = *(a1 + 96);
                  v112 = *(a1 + 112);
                  v113 = *(a2 - 2);
                  *(a1 + 96) = *v7;
                  *(a1 + 112) = v113;
                  *(a2 - 2) = v112;
                  *v7 = v111;
                  LODWORD(v111) = *(a1 + 120);
                  *(a1 + 120) = *v8;
                  *v8 = v111;
                  v114 = *(a1 + 120);
                  v115 = *(a1 + 88);
                  if (v114 > v115)
                  {
                    v116 = *(a1 + 80);
                    v117 = *(a1 + 64);
                    *(a1 + 64) = *(a1 + 96);
                    *(a1 + 80) = *(a1 + 112);
                    *(a1 + 96) = v117;
                    *(a1 + 112) = v116;
                    *(a1 + 88) = v114;
                    v118 = *(a1 + 56);
                    *(a1 + 120) = v115;
                    if (v114 > v118)
                    {
                      v119 = *(a1 + 48);
                      v120 = *(a1 + 32);
                      *(a1 + 32) = *(a1 + 64);
                      *(a1 + 48) = *(a1 + 80);
                      *(a1 + 64) = v120;
                      *(a1 + 80) = v119;
                      *(a1 + 56) = v114;
                      v121 = *(a1 + 24);
                      *(a1 + 88) = v118;
                      if (v114 > v121)
                      {
                        v254 = *(a1 + 16);
                        v224 = *a1;
                        *a1 = *(a1 + 32);
                        *(a1 + 16) = *(a1 + 48);
                        *(a1 + 32) = v224;
                        *(a1 + 48) = v254;
                        *(a1 + 24) = v114;
                        *(a1 + 56) = v121;
                      }
                    }
                  }
                }

                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (*v8 > *(a1 + 24))
              {
                v255 = *(a1 + 16);
                v225 = *a1;
                v122 = *v7;
                *(a1 + 16) = *(a2 - 2);
                *a1 = v122;
                *(a2 - 2) = v255;
                *v7 = v225;
                LODWORD(v122) = *(a1 + 24);
                *(a1 + 24) = *v8;
                *v8 = v122;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v130 = (a1 + 32);
            v132 = a1 == a2 || v130 == a2;
            if (a4)
            {
              if (!v132)
              {
                v133 = 0;
                v134 = a1;
                do
                {
                  v135 = v130;
                  v136 = *(v134 + 56);
                  if (v136 > *(v134 + 24))
                  {
                    v137 = *v130;
                    *v227 = *(v134 + 40);
                    *&v227[7] = *(v134 + 47);
                    v138 = *(v134 + 55);
                    v130[1] = 0;
                    v130[2] = 0;
                    *v130 = 0;
                    v139 = v133;
                    while (1)
                    {
                      v140 = a1 + v139;
                      if (*(a1 + v139 + 55) < 0)
                      {
                        operator delete(*(v140 + 32));
                      }

                      *(v140 + 32) = *v140;
                      *(v140 + 48) = *(v140 + 16);
                      *(v140 + 23) = 0;
                      *v140 = 0;
                      *(v140 + 56) = *(v140 + 24);
                      if (!v139)
                      {
                        break;
                      }

                      v141 = *(a1 + v139 - 8);
                      v139 -= 32;
                      if (v136 <= v141)
                      {
                        v142 = a1 + v139 + 32;
                        goto LABEL_146;
                      }
                    }

                    v142 = a1;
LABEL_146:
                    if (*(v142 + 23) < 0)
                    {
                      operator delete(*v142);
                    }

                    *v142 = v137;
                    *(v142 + 8) = *v227;
                    *(v142 + 15) = *&v227[7];
                    *(v142 + 23) = v138;
                    *(v142 + 24) = v136;
                  }

                  v130 = v135 + 4;
                  v133 += 32;
                  v134 = v135;
                }

                while (v135 + 4 != a2);
              }
            }

            else if (!v132)
            {
              v183 = a1 - 8;
              do
              {
                v184 = v130;
                v185 = *(a1 + 56);
                if (v185 > *(a1 + 24))
                {
                  v186 = *v130;
                  *v231 = *(a1 + 40);
                  *&v231[7] = *(a1 + 47);
                  v187 = *(a1 + 55);
                  v130[1] = 0;
                  v130[2] = 0;
                  *v130 = 0;
                  v188 = v183;
                  do
                  {
                    if (*(v188 + 63) < 0)
                    {
                      operator delete(*(v188 + 40));
                    }

                    *(v188 + 40) = *(v188 + 8);
                    *(v188 + 56) = *(v188 + 24);
                    *(v188 + 8) = 0;
                    v189 = v188 + 8;
                    *(v188 + 31) = 0;
                    *(v188 + 64) = *(v188 + 32);
                    v190 = *v188;
                    v188 -= 32;
                  }

                  while (v185 > v190);
                  if (*(v189 + 23) < 0)
                  {
                    operator delete(*v189);
                  }

                  *v189 = v186;
                  *(v189 + 15) = *&v231[7];
                  *(v189 + 8) = *v231;
                  *(v189 + 23) = v187;
                  *(v189 + 24) = v185;
                }

                v130 = v184 + 4;
                v183 += 32;
                a1 = v184;
              }

              while (v184 + 4 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v143 = v11 >> 1;
              v144 = v11 >> 1;
              do
              {
                v145 = v144;
                if (v143 >= v144)
                {
                  v146 = (2 * v144) | 1;
                  v147 = a1 + 32 * v146;
                  if (2 * v145 + 2 < v10 && *(v147 + 24) > *(v147 + 56))
                  {
                    v147 += 32;
                    v146 = 2 * v145 + 2;
                  }

                  v148 = a1 + 32 * v145;
                  v149 = *(v148 + 24);
                  if (*(v147 + 24) <= v149)
                  {
                    v150 = *v148;
                    *&v228[7] = *(v148 + 15);
                    *v228 = *(v148 + 8);
                    v151 = *(v148 + 23);
                    *v148 = 0;
                    *(v148 + 8) = 0;
                    *(v148 + 16) = 0;
                    do
                    {
                      v152 = v148;
                      v148 = v147;
                      if (*(v152 + 23) < 0)
                      {
                        operator delete(*v152);
                      }

                      v153 = *v148;
                      *(v152 + 16) = *(v148 + 16);
                      *v152 = v153;
                      *(v148 + 23) = 0;
                      *v148 = 0;
                      *(v152 + 24) = *(v148 + 24);
                      if (v143 < v146)
                      {
                        break;
                      }

                      v154 = 2 * v146;
                      v146 = (2 * v146) | 1;
                      v147 = a1 + 32 * v146;
                      v155 = v154 + 2;
                      if (v155 < v10 && *(v147 + 24) > *(v147 + 56))
                      {
                        v147 += 32;
                        v146 = v155;
                      }
                    }

                    while (*(v147 + 24) <= v149);
                    if (*(v148 + 23) < 0)
                    {
                      operator delete(*v148);
                    }

                    *v148 = v150;
                    *(v148 + 8) = *v228;
                    *(v148 + 15) = *&v228[7];
                    *(v148 + 23) = v151;
                    *(v148 + 24) = v149;
                  }
                }

                v144 = v145 - 1;
              }

              while (v145);
              do
              {
                v156 = 0;
                v157 = a2;
                v158 = *a1;
                *v202 = *(a1 + 8);
                *&v202[7] = *(a1 + 15);
                v159 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v160 = *(a1 + 24);
                v161 = a1;
                do
                {
                  v162 = v161 + 32 * v156;
                  v163 = v162 + 32;
                  if (2 * v156 + 2 >= v10)
                  {
                    v156 = (2 * v156) | 1;
                  }

                  else
                  {
                    v164 = *(v162 + 56);
                    v165 = *(v162 + 88);
                    v166 = v162 + 64;
                    if (v164 <= v165)
                    {
                      v156 = (2 * v156) | 1;
                    }

                    else
                    {
                      v163 = v166;
                      v156 = 2 * v156 + 2;
                    }
                  }

                  if (*(v161 + 23) < 0)
                  {
                    operator delete(*v161);
                  }

                  v167 = *v163;
                  *(v161 + 16) = *(v163 + 16);
                  *v161 = v167;
                  *(v163 + 23) = 0;
                  *v163 = 0;
                  *(v161 + 24) = *(v163 + 24);
                  v161 = v163;
                }

                while (v156 <= ((v10 - 2) >> 1));
                a2 -= 4;
                v168 = *(v163 + 23);
                if (v163 == v157 - 4)
                {
                  if (v168 < 0)
                  {
                    operator delete(*v163);
                  }

                  *v163 = v158;
                  *(v163 + 8) = *v202;
                  *(v163 + 15) = *&v202[7];
                  *(v163 + 23) = v159;
                  *(v163 + 24) = v160;
                }

                else
                {
                  if (v168 < 0)
                  {
                    operator delete(*v163);
                  }

                  v169 = *a2;
                  *(v163 + 16) = *(v157 - 2);
                  *v163 = v169;
                  *(v157 - 9) = 0;
                  *(v157 - 32) = 0;
                  *(v163 + 24) = *(v157 - 2);
                  if (*(v157 - 9) < 0)
                  {
                    operator delete(*a2);
                  }

                  *(v157 - 4) = v158;
                  *(v157 - 17) = *&v202[7];
                  *(v157 - 3) = *v202;
                  *(v157 - 9) = v159;
                  *(v157 - 2) = v160;
                  v170 = (v163 + 32 - a1) >> 5;
                  v171 = v170 < 2;
                  v172 = v170 - 2;
                  if (!v171)
                  {
                    v173 = v172 >> 1;
                    v174 = a1 + 32 * (v172 >> 1);
                    v175 = *(v163 + 24);
                    if (*(v174 + 24) > v175)
                    {
                      v176 = *v163;
                      *v229 = *(v163 + 8);
                      *&v229[7] = *(v163 + 15);
                      v177 = *(v163 + 23);
                      *(v163 + 8) = 0;
                      *(v163 + 16) = 0;
                      *v163 = 0;
                      do
                      {
                        v178 = v174;
                        if (*(v163 + 23) < 0)
                        {
                          operator delete(*v163);
                        }

                        v179 = *v178;
                        *(v163 + 16) = *(v178 + 16);
                        *v163 = v179;
                        *(v178 + 23) = 0;
                        *v178 = 0;
                        *(v163 + 24) = *(v178 + 24);
                        if (!v173)
                        {
                          break;
                        }

                        v173 = (v173 - 1) >> 1;
                        v174 = a1 + 32 * v173;
                        v163 = v178;
                      }

                      while (*(v174 + 24) > v175);
                      if (*(v178 + 23) < 0)
                      {
                        operator delete(*v178);
                      }

                      *v178 = v176;
                      *(v178 + 8) = *v229;
                      *(v178 + 15) = *&v229[7];
                      *(v178 + 23) = v177;
                      *(v178 + 24) = v175;
                    }
                  }
                }

                v171 = v10-- <= 2;
              }

              while (!v171);
            }

            return;
          }

          v12 = a1 + 32 * (v10 >> 1);
          v13 = *v8;
          if (v10 >= 0x81)
          {
            v14 = (v12 + 24);
            v15 = *(v12 + 24);
            v16 = (a1 + 24);
            v17 = *(a1 + 24);
            if (v15 <= v17)
            {
              if (v13 <= v15 || (v235 = *(v12 + 16), v205 = *v12, v22 = *v7, *(v12 + 16) = *(a2 - 2), *v12 = v22, *(a2 - 2) = v235, *v7 = v205, LODWORD(v22) = *(v12 + 24), *(v12 + 24) = *v8, *v8 = v22, *(v12 + 24) <= *v16))
              {
LABEL_28:
                v30 = (v12 - 8);
                v31 = *(v12 - 8);
                v32 = (v12 - 32);
                v33 = (a1 + 56);
                v34 = *(a1 + 56);
                v35 = *v198;
                if (v31 <= v34)
                {
                  if (v35 <= v31 || (v241 = *(v12 - 16), v211 = *v32, v39 = *v196, *(v12 - 16) = *(a2 - 6), *v32 = v39, *(a2 - 6) = v241, *v196 = v211, LODWORD(v39) = *(v12 - 8), *(v12 - 8) = *v198, *v198 = v39, *(v12 - 8) <= *v33))
                  {
LABEL_41:
                    v51 = (v12 + 56);
                    v52 = *(v12 + 56);
                    v53 = (v12 + 32);
                    v54 = (a1 + 88);
                    v55 = *(a1 + 88);
                    v56 = *v197;
                    if (v52 <= v55)
                    {
                      if (v56 <= v52 || (v245 = *(v12 + 48), v215 = *v53, v60 = *v195, *(v12 + 48) = *(a2 - 10), *v53 = v60, *(a2 - 10) = v245, *v195 = v215, LODWORD(v60) = *(v12 + 56), *(v12 + 56) = *v197, *v197 = v60, v52 = *(v12 + 56), v52 <= *v54))
                      {
LABEL_51:
                        v70 = *v14;
                        if (*v14 <= *v30)
                        {
                          if (v52 <= v70)
                          {
                            goto LABEL_60;
                          }

                          v248 = *(v12 + 16);
                          v218 = *v12;
                          *v12 = *v53;
                          *(v12 + 16) = *(v12 + 48);
                          *(v12 + 48) = v248;
                          *v53 = v218;
                          v71 = *(v12 + 24);
                          v72 = *(v12 + 56);
                          *(v12 + 24) = v72;
                          *(v12 + 56) = v71;
                          if (v72 <= *v30)
                          {
                            goto LABEL_60;
                          }

                          v249 = *(v12 - 16);
                          v219 = *v32;
                          *v32 = *v12;
                          *(v12 - 16) = *(v12 + 16);
                          *(v12 + 16) = v249;
                          *v12 = v219;
                          v51 = (v12 + 24);
                        }

                        else if (v52 <= v70)
                        {
                          v250 = *(v12 - 16);
                          v220 = *v32;
                          *v32 = *v12;
                          *(v12 - 16) = *(v12 + 16);
                          *(v12 + 16) = v250;
                          *v12 = v220;
                          v73 = *(v12 - 8);
                          *(v12 - 8) = *(v12 + 24);
                          *(v12 + 24) = v73;
                          if (*v51 <= v73)
                          {
LABEL_60:
                            v252 = *(a1 + 16);
                            v222 = *a1;
                            v75 = *v12;
                            *(a1 + 16) = *(v12 + 16);
                            *a1 = v75;
                            *(v12 + 16) = v252;
                            *v12 = v222;
                            goto LABEL_61;
                          }

                          v251 = *(v12 + 16);
                          v221 = *v12;
                          *v12 = *v53;
                          *(v12 + 16) = *(v12 + 48);
                          *(v12 + 48) = v251;
                          *v53 = v221;
                          v30 = (v12 + 24);
                        }

                        else
                        {
                          v247 = *(v12 - 16);
                          v217 = *v32;
                          *v32 = *v53;
                          *(v12 - 16) = *(v12 + 48);
                          *(v12 + 48) = v247;
                          *v53 = v217;
                        }

                        v74 = *v30;
                        *v30 = *v51;
                        *v51 = v74;
                        goto LABEL_60;
                      }

                      v61 = *(a1 + 64);
                      v62 = *(a1 + 80);
                      v63 = *(v12 + 48);
                      *(a1 + 64) = *v53;
                      *(a1 + 80) = v63;
                      *(v12 + 48) = v62;
                      *v53 = v61;
                      v64 = (v12 + 56);
                    }

                    else
                    {
                      if (v56 <= v52)
                      {
                        v65 = *(a1 + 64);
                        v66 = *(a1 + 80);
                        v67 = *(v12 + 48);
                        *(a1 + 64) = *v53;
                        *(a1 + 80) = v67;
                        *(v12 + 48) = v66;
                        *v53 = v65;
                        *v54 = *(v12 + 56);
                        *(v12 + 56) = v55;
                        v52 = v55;
                        if (*v197 <= v55)
                        {
                          goto LABEL_51;
                        }

                        v246 = *(v12 + 48);
                        v216 = *v53;
                        v68 = *v195;
                        *(v12 + 48) = *(a2 - 10);
                        *v53 = v68;
                        *(a2 - 10) = v246;
                        *v195 = v216;
                        v54 = (v12 + 56);
                      }

                      else
                      {
                        v57 = *(a1 + 64);
                        v58 = *(a1 + 80);
                        v59 = *(a2 - 10);
                        *(a1 + 64) = *v195;
                        *(a1 + 80) = v59;
                        *(a2 - 10) = v58;
                        *v195 = v57;
                      }

                      v64 = (a2 - 9);
                    }

                    v69 = *v54;
                    *v54 = *v64;
                    *v64 = v69;
                    v52 = *v51;
                    goto LABEL_51;
                  }

                  v40 = *(a1 + 32);
                  v41 = *(a1 + 48);
                  v42 = *(v12 - 16);
                  *(a1 + 32) = *v32;
                  *(a1 + 48) = v42;
                  *(v12 - 16) = v41;
                  *v32 = v40;
                  v43 = (v12 - 8);
                }

                else
                {
                  if (v35 <= v31)
                  {
                    v46 = *(a1 + 32);
                    v47 = *(a1 + 48);
                    v48 = *(v12 - 16);
                    *(a1 + 32) = *v32;
                    *(a1 + 48) = v48;
                    *(v12 - 16) = v47;
                    *v32 = v46;
                    *v33 = *(v12 - 8);
                    *(v12 - 8) = v34;
                    if (*v198 <= v34)
                    {
                      goto LABEL_41;
                    }

                    v244 = *(v12 - 16);
                    v214 = *v32;
                    v49 = *v196;
                    *(v12 - 16) = *(a2 - 6);
                    *v32 = v49;
                    *(a2 - 6) = v244;
                    *v196 = v214;
                    v33 = (v12 - 8);
                  }

                  else
                  {
                    v36 = *(a1 + 32);
                    v37 = *(a1 + 48);
                    v38 = *(a2 - 6);
                    *(a1 + 32) = *v196;
                    *(a1 + 48) = v38;
                    *(a2 - 6) = v37;
                    *v196 = v36;
                  }

                  v43 = (a2 - 5);
                }

                v50 = *v33;
                *v33 = *v43;
                *v43 = v50;
                goto LABEL_41;
              }

              v236 = *(a1 + 16);
              v206 = *a1;
              v23 = *v12;
              *(a1 + 16) = *(v12 + 16);
              *a1 = v23;
              *(v12 + 16) = v236;
              *v12 = v206;
              v19 = (a1 + 24);
              v24 = (v12 + 24);
            }

            else
            {
              if (v13 <= v15)
              {
                v239 = *(a1 + 16);
                v209 = *a1;
                v27 = *v12;
                *(a1 + 16) = *(v12 + 16);
                *a1 = v27;
                *(v12 + 16) = v239;
                *v12 = v209;
                *(a1 + 24) = *(v12 + 24);
                *(v12 + 24) = v17;
                if (*v8 <= v17)
                {
                  goto LABEL_28;
                }

                v240 = *(v12 + 16);
                v210 = *v12;
                v28 = *v7;
                *(v12 + 16) = *(a2 - 2);
                *v12 = v28;
                *(a2 - 2) = v240;
                *v7 = v210;
                v19 = (v12 + 24);
              }

              else
              {
                v233 = *(a1 + 16);
                v203 = *a1;
                v18 = *v7;
                *(a1 + 16) = *(a2 - 2);
                *a1 = v18;
                *(a2 - 2) = v233;
                *v7 = v203;
                v19 = (a1 + 24);
              }

              v24 = v8;
            }

            v29 = *v19;
            *v19 = *v24;
            *v24 = v29;
            goto LABEL_28;
          }

          v14 = (a1 + 24);
          v20 = *(a1 + 24);
          v16 = (v12 + 24);
          if (v20 > *(v12 + 24))
          {
            if (v13 <= v20)
            {
              v242 = *(v12 + 16);
              v212 = *v12;
              v44 = *a1;
              *(v12 + 16) = *(a1 + 16);
              *v12 = v44;
              *(a1 + 16) = v242;
              *a1 = v212;
              LODWORD(v44) = *(v12 + 24);
              *(v12 + 24) = v20;
              *(a1 + 24) = v44;
              if (*v8 <= *&v44)
              {
                goto LABEL_62;
              }

              v243 = *(a1 + 16);
              v213 = *a1;
              v45 = *v7;
              *(a1 + 16) = *(a2 - 2);
              *a1 = v45;
              *(a2 - 2) = v243;
              *v7 = v213;
              v16 = (a1 + 24);
            }

            else
            {
              v234 = *(v12 + 16);
              v204 = *v12;
              v21 = *v7;
              *(v12 + 16) = *(a2 - 2);
              *v12 = v21;
              *(a2 - 2) = v234;
              *v7 = v204;
            }

            v14 = v8;
            goto LABEL_61;
          }

          if (v13 > v20)
          {
            v237 = *(a1 + 16);
            v207 = *a1;
            v25 = *v7;
            *(a1 + 16) = *(a2 - 2);
            *a1 = v25;
            *(a2 - 2) = v237;
            *v7 = v207;
            LODWORD(v25) = *(a1 + 24);
            *(a1 + 24) = *v8;
            *v8 = v25;
            if (*(a1 + 24) > *v16)
            {
              v238 = *(v12 + 16);
              v208 = *v12;
              v26 = *a1;
              *(v12 + 16) = *(a1 + 16);
              *v12 = v26;
              *(a1 + 16) = v238;
              *a1 = v208;
LABEL_61:
              v76 = *v16;
              *v16 = *v14;
              *v14 = v76;
            }
          }

LABEL_62:
          --a3;
          if (a4)
          {
            break;
          }

          v77 = *(a1 + 24);
          if (*(a1 - 8) > v77)
          {
            goto LABEL_65;
          }

          v97 = *a1;
          *v201 = *(a1 + 8);
          *&v201[7] = *(a1 + 15);
          v98 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          if (v77 <= *v8)
          {
            v101 = a1 + 32;
            do
            {
              v9 = v101;
              if (v101 >= a2)
              {
                break;
              }

              v102 = *(v101 + 24);
              v101 += 32;
            }

            while (v77 <= v102);
          }

          else
          {
            v99 = a1;
            do
            {
              v9 = v99 + 32;
              v100 = *(v99 + 56);
              v99 += 32;
            }

            while (v77 <= v100);
          }

          v103 = a2;
          if (v9 < a2)
          {
            v104 = a2;
            do
            {
              v103 = v104 - 4;
              v105 = *(v104 - 2);
              v104 -= 4;
            }

            while (v77 > v105);
          }

          while (v9 < v103)
          {
            v253 = *(v9 + 16);
            v223 = *v9;
            v106 = *v103;
            *(v9 + 16) = v103[2];
            *v9 = v106;
            v103[2] = v253;
            *v103 = v223;
            LODWORD(v106) = *(v9 + 24);
            *(v9 + 24) = *(v103 + 6);
            *(v103 + 6) = v106;
            do
            {
              v107 = *(v9 + 56);
              v9 += 32;
            }

            while (v77 <= v107);
            do
            {
              v108 = *(v103 - 2);
              v103 -= 4;
            }

            while (v77 > v108);
          }

          v109 = (v9 - 32);
          if (v9 - 32 != a1)
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v110 = *v109;
            *(a1 + 16) = *(v9 - 16);
            *a1 = v110;
            *(v9 - 9) = 0;
            *(v9 - 32) = 0;
            *(a1 + 24) = *(v9 - 8);
          }

          if (*(v9 - 9) < 0)
          {
            operator delete(*v109);
          }

          a4 = 0;
          *(v9 - 32) = v97;
          *(v9 - 17) = *&v201[7];
          *(v9 - 24) = *v201;
          *(v9 - 9) = v98;
          *(v9 - 8) = v77;
        }

        v77 = *(a1 + 24);
LABEL_65:
        v78 = *a1;
        *v200 = *(a1 + 8);
        *&v200[7] = *(a1 + 15);
        v79 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v80 = a1;
        do
        {
          v81 = v80;
          v80 += 32;
        }

        while (*(v81 + 56) > v77);
        v82 = a2;
        if (v81 == a1)
        {
          v85 = a2;
          while (v80 < v85)
          {
            v83 = v85 - 4;
            v86 = *(v85 - 2);
            v85 -= 4;
            if (v86 > v77)
            {
              goto LABEL_75;
            }
          }

          v83 = v85;
        }

        else
        {
          do
          {
            v83 = v82 - 4;
            v84 = *(v82 - 2);
            v82 -= 4;
          }

          while (v84 <= v77);
        }

LABEL_75:
        v9 = v80;
        if (v80 < v83)
        {
          v87 = v83;
          do
          {
            v88 = *v9;
            v89 = *(v9 + 16);
            v90 = *(v87 + 16);
            *v9 = *v87;
            *(v9 + 16) = v90;
            *(v87 + 16) = v89;
            *v87 = v88;
            LODWORD(v88) = *(v9 + 24);
            *(v9 + 24) = *(v87 + 24);
            *(v87 + 24) = v88;
            do
            {
              v91 = *(v9 + 56);
              v9 += 32;
            }

            while (v91 > v77);
            do
            {
              v92 = *(v87 - 8);
              v87 -= 32;
            }

            while (v92 <= v77);
          }

          while (v9 < v87);
        }

        v93 = (v9 - 32);
        if (v9 - 32 != a1)
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v94 = *v93;
          *(a1 + 16) = *(v9 - 16);
          *a1 = v94;
          *(v9 - 9) = 0;
          *(v9 - 32) = 0;
          *(a1 + 24) = *(v9 - 8);
        }

        if (*(v9 - 9) < 0)
        {
          operator delete(*v93);
        }

        *(v9 - 32) = v78;
        *(v9 - 17) = *&v200[7];
        *(v9 - 24) = *v200;
        *(v9 - 9) = v79;
        *(v9 - 8) = v77;
        v95 = v80 >= v83;
        v8 = (a2 - 1);
        if (v95)
        {
          break;
        }

LABEL_91:
        std::__introsort<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,false>(a1, v9 - 32, a3, a4 & 1);
        a4 = 0;
      }

      v96 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *>(a1, v9 - 32);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *>(v9, a2))
      {
        break;
      }

      if (!v96)
      {
        goto LABEL_91;
      }
    }

    a2 = (v9 - 32);
    if (!v96)
    {
      continue;
    }

    break;
  }
}

void std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v25 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(v10);
    }

    v12 = 32 * v7;
    v21 = 0;
    v22 = v12;
    v13 = 0;
    v23 = v12;
    v24 = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v12, *a2, *(a2 + 1));
      v15 = v22;
      v16 = v23;
      v13 = v24;
    }

    else
    {
      v14 = *a2;
      *(v12 + 16) = *(a2 + 2);
      *v12 = v14;
      v15 = v12;
      v16 = v12;
    }

    *(v12 + 24) = *(a2 + 6);
    v11 = v16 + 32;
    v17 = *(a1 + 8) - *a1;
    v18 = v15 - v17;
    memcpy((v15 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v11;
    v20 = *(a1 + 16);
    *(a1 + 16) = v13;
    v23 = v19;
    v24 = v20;
    v21 = v19;
    v22 = v19;
    std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(&v21);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    *(v5 + 24) = *(a2 + 6);
    v11 = v5 + 32;
    *(a1 + 8) = v11;
  }

  *(a1 + 8) = v11;
}

void sub_1A5DDA3BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,0>(__int128 *a1, float *a2, float *a3, __int128 *a4)
{
  v4 = a2[6];
  v5 = a1 + 6;
  v6 = a3 + 6;
  result = a3[6];
  if (v4 <= *(a1 + 6))
  {
    if (result > v4)
    {
      v12 = *(a2 + 2);
      v13 = *a2;
      v14 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v14;
      *a3 = v13;
      *(a3 + 2) = v12;
      result = a2[6];
      a2[6] = a3[6];
      a3[6] = result;
      if (a2[6] > *v5)
      {
        v15 = *(a1 + 2);
        v16 = *a1;
        v17 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v17;
        *a2 = v16;
        *(a2 + 2) = v15;
        v11 = a1 + 6;
        v18 = (a2 + 6);
LABEL_10:
        v26 = *v11;
        *v11 = *v18;
        *v18 = v26;
        result = *v6;
      }
    }
  }

  else
  {
    if (result > v4)
    {
      v8 = *(a1 + 2);
      v9 = *a1;
      v10 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v10;
      *a3 = v9;
      *(a3 + 2) = v8;
      v11 = a1 + 6;
LABEL_9:
      v18 = (a3 + 6);
      goto LABEL_10;
    }

    v19 = *(a1 + 2);
    v20 = *a1;
    v21 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v21;
    *a2 = v20;
    *(a2 + 2) = v19;
    v22 = *(a1 + 6);
    *(a1 + 6) = a2[6];
    a2[6] = v22;
    result = *v6;
    if (*v6 > v22)
    {
      v23 = *(a2 + 2);
      v24 = *a2;
      v25 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v25;
      *a3 = v24;
      *(a3 + 2) = v23;
      v11 = (a2 + 6);
      goto LABEL_9;
    }
  }

  if (*(a4 + 6) > result)
  {
    v27 = *(a3 + 2);
    v28 = *a3;
    v29 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v29;
    *a4 = v28;
    *(a4 + 2) = v27;
    *&v28 = a3[6];
    a3[6] = *(a4 + 6);
    *(a4 + 6) = v28;
    result = a3[6];
    if (result > a2[6])
    {
      v30 = *(a2 + 2);
      v31 = *a2;
      v32 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v32;
      *a3 = v31;
      *(a3 + 2) = v30;
      *&v31 = a2[6];
      a2[6] = a3[6];
      *(a3 + 6) = v31;
      result = a2[6];
      if (result > *v5)
      {
        v33 = *(a1 + 2);
        v34 = *a1;
        v35 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v35;
        *a2 = v34;
        *(a2 + 2) = v33;
        result = *(a1 + 6);
        *(a1 + 6) = a2[6];
        a2[6] = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v21 = (a1 + 56);
      v22 = *(a1 + 56);
      v23 = (a2 - 8);
      v24 = *(a2 - 8);
      v25 = (a1 + 32);
      v26 = (a2 - 32);
      v27 = (a1 + 24);
      v28 = *(a1 + 24);
      if (v22 <= v28)
      {
        if (v24 <= v22)
        {
          return 1;
        }

        v41 = *(a1 + 48);
        v42 = *v25;
        v43 = *(a2 - 16);
        *v25 = *v26;
        *(a1 + 48) = v43;
        *v26 = v42;
        *(a2 - 16) = v41;
        LODWORD(v42) = *v21;
        *v21 = *v23;
        *v23 = v42;
        if (*v21 <= *v27)
        {
          return 1;
        }

        v44 = *(a1 + 16);
        v45 = *a1;
        *a1 = *v25;
        *(a1 + 16) = *(a1 + 48);
        *v25 = v45;
        *(a1 + 48) = v44;
      }

      else
      {
        if (v24 <= v22)
        {
          v50 = *(a1 + 16);
          v51 = *a1;
          *a1 = *v25;
          *(a1 + 16) = *(a1 + 48);
          *v25 = v51;
          *(a1 + 48) = v50;
          *(a1 + 24) = v22;
          *(a1 + 56) = v28;
          if (*v23 <= v28)
          {
            return 1;
          }

          v52 = *(a1 + 48);
          v53 = *v25;
          v54 = *(a2 - 16);
          *v25 = *v26;
          *(a1 + 48) = v54;
          *v26 = v53;
          *(a2 - 16) = v52;
          v27 = (a1 + 56);
        }

        else
        {
          v29 = *(a1 + 16);
          v30 = *a1;
          v31 = *(a2 - 16);
          *a1 = *v26;
          *(a1 + 16) = v31;
          *v26 = v30;
          *(a2 - 16) = v29;
        }

        v21 = (a2 - 8);
      }

      v55 = *v27;
      *v27 = *v21;
      *v21 = v55;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96));
        if (*(a2 - 8) > *(a1 + 120))
        {
          v8 = *(a1 + 112);
          v9 = *(a1 + 96);
          v10 = *(a2 - 16);
          *(a1 + 96) = *(a2 - 32);
          *(a1 + 112) = v10;
          *(a2 - 32) = v9;
          *(a2 - 16) = v8;
          LODWORD(v9) = *(a1 + 120);
          *(a1 + 120) = *(a2 - 8);
          *(a2 - 8) = v9;
          v11 = *(a1 + 120);
          v12 = *(a1 + 88);
          if (v11 > v12)
          {
            v13 = *(a1 + 80);
            v14 = *(a1 + 64);
            *(a1 + 64) = *(a1 + 96);
            *(a1 + 80) = *(a1 + 112);
            *(a1 + 96) = v14;
            *(a1 + 112) = v13;
            *(a1 + 88) = v11;
            v15 = *(a1 + 56);
            *(a1 + 120) = v12;
            if (v11 > v15)
            {
              v16 = *(a1 + 48);
              v17 = *(a1 + 32);
              *(a1 + 32) = *(a1 + 64);
              *(a1 + 48) = *(a1 + 80);
              *(a1 + 64) = v17;
              *(a1 + 80) = v16;
              *(a1 + 56) = v11;
              v18 = *(a1 + 24);
              *(a1 + 88) = v15;
              if (v11 > v18)
              {
                v19 = *(a1 + 16);
                v20 = *a1;
                *a1 = *(a1 + 32);
                *(a1 + 16) = *(a1 + 48);
                *(a1 + 32) = v20;
                *(a1 + 48) = v19;
                *(a1 + 24) = v11;
                *(a1 + 56) = v18;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) > *(a1 + 24))
    {
      v5 = *(a1 + 16);
      v6 = *a1;
      v7 = *(a2 - 16);
      *a1 = *(a2 - 32);
      *(a1 + 16) = v7;
      *(a2 - 32) = v6;
      *(a2 - 16) = v5;
      LODWORD(v6) = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v6;
    }

    return 1;
  }

LABEL_17:
  v32 = (a1 + 56);
  v33 = *(a1 + 56);
  v34 = a1 + 64;
  v35 = (a1 + 32);
  v36 = (a1 + 24);
  v37 = *(a1 + 24);
  v38 = *(a1 + 88);
  if (v33 > v37)
  {
    if (v38 <= v33)
    {
      v56 = *(a1 + 16);
      v57 = *a1;
      *a1 = *v35;
      *(a1 + 16) = *(a1 + 48);
      *v35 = v57;
      *(a1 + 48) = v56;
      *(a1 + 24) = v33;
      *(a1 + 56) = v37;
      if (v38 <= v37)
      {
        goto LABEL_35;
      }

      v58 = *(a1 + 48);
      v59 = *v35;
      *v35 = *v34;
      *(a1 + 48) = *(a1 + 80);
      *v34 = v59;
      *(a1 + 80) = v58;
      v36 = (a1 + 56);
    }

    else
    {
      v39 = *(a1 + 16);
      v40 = *a1;
      *a1 = *v34;
      *(a1 + 16) = *(a1 + 80);
      *v34 = v40;
      *(a1 + 80) = v39;
    }

    v32 = (a1 + 88);
    goto LABEL_34;
  }

  if (v38 > v33)
  {
    v46 = *(a1 + 48);
    v47 = *v35;
    *v35 = *v34;
    *(a1 + 48) = *(a1 + 80);
    *v34 = v47;
    *(a1 + 80) = v46;
    *v32 = v38;
    *(a1 + 88) = v33;
    if (v38 > v37)
    {
      v48 = *(a1 + 16);
      v49 = *a1;
      *a1 = *v35;
      *(a1 + 16) = *(a1 + 48);
      *v35 = v49;
      *(a1 + 48) = v48;
LABEL_34:
      *v36 = v38;
      *v32 = v37;
    }
  }

LABEL_35:
  v60 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v61 = 0;
  v62 = 0;
  while (1)
  {
    v63 = *(v60 + 24);
    if (v63 > *(v34 + 24))
    {
      v64 = *v60;
      *v71 = *(v60 + 8);
      *&v71[7] = *(v60 + 15);
      v65 = *(v60 + 23);
      *(v60 + 8) = 0;
      *(v60 + 16) = 0;
      *v60 = 0;
      v66 = v61;
      while (1)
      {
        v67 = a1 + v66;
        if (*(a1 + v66 + 119) < 0)
        {
          operator delete(*(v67 + 96));
        }

        *(v67 + 96) = *(v67 + 64);
        *(v67 + 112) = *(v67 + 80);
        *(v67 + 87) = 0;
        *(v67 + 64) = 0;
        *(v67 + 120) = *(v67 + 88);
        if (v66 == -64)
        {
          break;
        }

        v68 = *(a1 + v66 + 56);
        v66 -= 32;
        if (v63 <= v68)
        {
          v69 = a1 + v66 + 96;
          goto LABEL_45;
        }
      }

      v69 = a1;
LABEL_45:
      if (*(v69 + 23) < 0)
      {
        operator delete(*v69);
      }

      *v69 = v64;
      *(v69 + 8) = *v71;
      *(v69 + 15) = *&v71[7];
      *(v69 + 23) = v65;
      *(v69 + 24) = v63;
      if (++v62 == 8)
      {
        return v60 + 32 == a2;
      }
    }

    v34 = v60;
    v61 += 32;
    v60 += 32;
    if (v60 == a2)
    {
      return 1;
    }
  }
}

void ImageClassifier_getLabels(void *a1, void **a2, void *a3, unint64_t a4, float a5)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (a2)
  {
    v9 = a2;
    do
    {
      if (*(v9 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v23, v9[2], v9[3]);
      }

      else
      {
        v23 = *(v9 + 2);
      }

      v10 = *(v9 + 10);
      v11 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, &v23);
      v12 = a5;
      if (v11)
      {
        v12 = a5;
        if (v11[10] >= a5)
        {
          v12 = v11[10];
        }
      }

      if (v10 >= v12)
      {
        if (*(v9 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v9[2], v9[3]);
          v10 = *(v9 + 10);
        }

        else
        {
          __p = *(v9 + 2);
        }

        v22 = v10;
        std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](&v24, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v9 = *v9;
    }

    while (v9);
    v13 = v24;
    a2 = v25;
  }

  else
  {
    v13 = 0;
  }

  v14 = 126 - 2 * __clz((a2 - v13) >> 5);
  if (a2 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  std::__introsort<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,false>(v13, a2, v15, 1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v16 = v24;
  v17 = (v25 - v24) >> 5;
  if (v17 >= a4)
  {
    v17 = a4;
  }

  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](a1, (v16 + v18));
      ++v19;
      v16 = v24;
      v20 = (v25 - v24) >> 5;
      if (v20 >= a4)
      {
        v20 = a4;
      }

      v18 += 32;
    }

    while (v19 < v20);
  }

  __p.__r_.__value_.__r.__words[0] = &v24;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1A5DDAD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  a9 = &a22;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *ImageClassifier_getBatchCumulativeLabels(void *result, uint64_t *a2, int a3)
{
  v3 = result;
  *result = 0u;
  *(result + 1) = 0u;
  *(result + 8) = 1065353216;
  v5 = *a2;
  v4 = a2[1];
  v23 = v4;
LABEL_2:
  if (v5 != v4)
  {
    v6 = *(v5 + 16);
    if (!v6)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v7 = std::__string_hash<char>::operator()[abi:ne200100]((v6 + 4));
      v8 = v3[1];
      if (!*&v8)
      {
        goto LABEL_20;
      }

      v9 = v7;
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.u32[0];
      if (v10.u32[0] > 1uLL)
      {
        v12 = v7;
        if (v7 >= *&v8)
        {
          v12 = v7 % *&v8;
        }
      }

      else
      {
        v12 = (*&v8 - 1) & v7;
      }

      v13 = *(*v3 + 8 * v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_20:
        result = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(v3, v6 + 2);
        goto LABEL_21;
      }

      while (1)
      {
        v15 = v14[1];
        if (v15 == v9)
        {
          break;
        }

        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_20;
        }

LABEL_19:
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:ne200100](v14 + 2, v6 + 2))
      {
        goto LABEL_19;
      }

      if (a3 == 2)
      {
        v16 = *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, v6 + 2) + 10);
        v17 = v6[10];
        result = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, v6 + 2);
        if (v16 >= v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }
      }

      else
      {
        v19 = v6[10];
        result = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, v6 + 2);
        v18 = v19 + *(result + 10);
      }

      *(result + 10) = v18;
LABEL_21:
      v6 = *v6;
      if (!v6)
      {
LABEL_29:
        v5 += 40;
        v4 = v23;
        goto LABEL_2;
      }
    }
  }

  if (a3 == 1)
  {
    v20 = v3[2];
    if (v20)
    {
      v21 = (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
      do
      {
        v20[10] = v20[10] / v21;
        v20 = *v20;
      }

      while (v20);
    }
  }

  return result;
}

void ImageClassifier_getLabelsAuto(void *a1, void **a2, float a3, float a4)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (a2)
  {
    v7 = a2;
    do
    {
      v8 = *(v7 + 10);
      if (v8 >= a3)
      {
        if (*(v7 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, v7[2], v7[3]);
          v8 = *(v7 + 10);
        }

        else
        {
          v23 = *(v7 + 2);
        }

        v24 = v8;
        std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](&v25, &v23);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }
      }

      v7 = *v7;
    }

    while (v7);
    v9 = v25;
    a2 = v26;
  }

  else
  {
    v9 = 0;
  }

  v10 = 126 - 2 * __clz((a2 - v9) >> 5);
  if (a2 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,ImageClassifier_getLabels(std::unordered_map<std::string,float> const&,float,unsigned long)::$_0 &,std::pair<std::string,float> *,false>(v9, a2, v11, 1);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v12 = v25;
  if (v26 != v25)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](&v20, (v12 + v13));
      ++v14;
      v12 = v25;
      v15 = (v26 - v25) >> 5;
      if (v15 >= 0x7FFFFFFF)
      {
        v15 = 0x7FFFFFFFLL;
      }

      v13 += 32;
    }

    while (v14 < v15);
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v23);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v21 != v20)
  {
    std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](a1, v20);
    v16 = v20;
    if ((v21 - v20) >= 0x21)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = &v16[v17];
        if ((*(v19 + 14) / *(*a1 + v17 * 16 + 24)) < a4)
        {
          break;
        }

        std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](a1, v19 + 2);
        ++v18;
        v16 = v20;
        v17 += 2;
      }

      while (v18 < (v21 - v20) >> 5);
    }
  }

  v23.__r_.__value_.__r.__words[0] = &v20;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v23);
}

void sub_1A5DDB1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a10;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ImageClassifier_getLabelsAuto(void *a1, void **a2, void *a3, float a4, float a5)
{
  ImageClassifier_getLabels(&v11, a2, a3, 0x7FFFFFFFuLL, a4);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v12 != v11)
  {
    std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](a1, v11);
    v7 = v11;
    if ((v12 - v11) >= 0x21)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = &v7[v8];
        if ((*(v10 + 14) / *(*a1 + v8 * 16 + 24)) < a5)
        {
          break;
        }

        std::vector<std::pair<std::string,float>>::push_back[abi:ne200100](a1, v10 + 2);
        ++v9;
        v7 = v11;
        v8 += 2;
      }

      while (v9 < (v12 - v11) >> 5);
    }
  }

  v13 = &v11;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_1A5DDB314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = &a9;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_1A5DDC964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  vision::mod::RPNTrackerOptions::~RPNTrackerOptions(va);
  _Unwind_Resume(a1);
}

void sub_1A5DDCA50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<vision::mod::ObjectTrackerAbstract *,std::shared_ptr<vision::mod::ObjectTrackerAbstract>::__shared_ptr_default_delete<vision::mod::ObjectTrackerAbstract,vision::mod::ObjectTrackerAbstract>,std::allocator<vision::mod::ObjectTrackerAbstract>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN6vision3mod21ObjectTrackerAbstractEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<vision::mod::ObjectTrackerAbstract *,std::shared_ptr<vision::mod::ObjectTrackerAbstract>::__shared_ptr_default_delete<vision::mod::ObjectTrackerAbstract,vision::mod::ObjectTrackerAbstract>,std::allocator<vision::mod::ObjectTrackerAbstract>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<vision::mod::ObjectTrackerAbstract *,std::shared_ptr<vision::mod::ObjectTrackerAbstract>::__shared_ptr_default_delete<vision::mod::ObjectTrackerAbstract,vision::mod::ObjectTrackerAbstract>,std::allocator<vision::mod::ObjectTrackerAbstract>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void vision::mod::ObjectDetectorAbstract::detectObjectsInImages_Planar8(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      (*(*a1 + 56))(v7, a1, v3);
      std::vector<std::vector<vision::mod::DetectedObject>>::push_back[abi:ne200100](a3, v7);
      v8 = v7;
      std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v8);
      v3 += 32;
    }

    while (v3 != v4);
  }
}

void std::vector<std::vector<vision::mod::DetectedObject>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CGPoint>>>(v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = 24 * v6 + 24;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy((v10 - v11), *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
}

void std::vector<std::vector<vision::mod::DetectedObject>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void vision::mod::ObjectDetector_DCNFaceDetector_v2::detectObjectsInImages_BGRA8888(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__6;
  v19 = "";
  v6 = *a2;
  v5 = a2[1];
  memset(v20, 0, 24);
  v22 = v20;
  LOBYTE(v23) = 0;
  v7 = v5 - v6;
  if (v7)
  {
    if ((v7 >> 5) <= 0xAAAAAAAAAAAAAAALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CGPoint>>>(v7 >> 5);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(*(a1 + 112) + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN6vision3mod33ObjectDetector_DCNFaceDetector_v230detectObjectsInImages_BGRA8888ERKNSt3__16vectorI13vImage_BufferNS2_9allocatorIS4_EEEE_block_invoke;
  v13[3] = &unk_1E77B2C38;
  v13[5] = a1;
  v13[6] = a2;
  v13[4] = &v14;
  vision::mod::dispatch_sync_guard(v8, v13);
  v9 = v15;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v10 = v9[6];
  v11 = v9[7];
  v20[3] = a3;
  v21 = 0;
  if (v11 != v10)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
    if (v12 <= 0xAAAAAAAAAAAAAAALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CGPoint>>>(v12);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  _Block_object_dispose(&v14, 8);
  v22 = v20;
  std::vector<std::vector<vision::mod::DetectedObject>>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_1A5DDD6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  *(v9 - 128) = v8;
  std::vector<std::vector<vision::mod::DetectedObject>>::__destroy_vector::operator()[abi:ne200100]((v9 - 128));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN6vision3mod33ObjectDetector_DCNFaceDetector_v230detectObjectsInImages_BGRA8888ERKNSt3__16vectorI13vImage_BufferNS2_9allocatorIS4_EEEE_block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = *v1;
  v22 = *(v1 + 8);
  if (*v1 != v22)
  {
    v4 = 0;
    v5 = a1[5];
    do
    {
      v6 = v2[1];
      v25[0] = *v2;
      v25[1] = v6;
      vision::mod::ObjectDetector_DCNFaceDetector_v2::priv::detectFacesInImageBufferInternal(&v23, *(v5 + 112), v25, *(v5 + 104), *v25);
      v7 = (*(*(a1[4] + 8) + 48) + 24 * v4);
      if (v7 != &v23)
      {
        v9 = v23;
        v8 = v24;
        v10 = v24 - v23;
        v11 = *v7;
        if (v7[2] - *v7 < (v24 - v23))
        {
          v12 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 4);
          std::vector<vision::mod::DetectedObject>::__vdeallocate(v7);
          if (v12 <= 0x333333333333333)
          {
            v13 = 0x999999999999999ALL * ((v7[2] - *v7) >> 4);
            if (v13 <= v12)
            {
              v13 = v12;
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v7[2] - *v7) >> 4) >= 0x199999999999999)
            {
              v14 = 0x333333333333333;
            }

            else
            {
              v14 = v13;
            }

            std::vector<vision::mod::DetectedObject>::__vallocate[abi:ne200100](v7, v14);
          }

          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v15 = v7[1];
        v16 = (v15 - v11);
        if (v15 - v11 >= v10)
        {
          if (v23 != v24)
          {
            v19 = 0;
            do
            {
              if (v9 != v11)
              {
                *&v11[v19 + 8] = *&v9[v19 + 8];
                std::string::operator=(&v11[v19], &v9[v19]);
                v20 = &v11[v19];
                *(v20 + 3) = *&v9[v19 + 3];
                *(v20 + 24) = v9[v19 + 6];
                v20[5] = v9[v19 + 5];
                *(v20 + 56) = v9[v19 + 7];
                *(v20 + 13) = HIDWORD(v9[v19 + 6]);
                *(v20 + 15) = HIDWORD(v9[v19 + 7]);
              }

              v19 += 10;
            }

            while (&v9[v19] != v8);
            v11 = (v11 + v19 * 8);
            v15 = v7[1];
          }

          while (v15 != v11)
          {
            v21 = *(v15 - 57);
            v15 -= 10;
            if (v21 < 0)
            {
              operator delete(*v15);
            }
          }

          v7[1] = v11;
        }

        else
        {
          if (v15 != v11)
          {
            v17 = 0;
            do
            {
              if (v9 != v11)
              {
                *&v17[v11 + 64] = *&v17[v9 + 64];
                std::string::operator=(&v17[v11], &v17[v9]);
                v18 = &v17[v11];
                *(v18 + 3) = *&v17[v9 + 24];
                *(v18 + 24) = *&v17[v9 + 48];
                v18[5] = *&v17[v9 + 40];
                *(v18 + 56) = v17[v9 + 56];
                *(v18 + 13) = *&v17[v9 + 52];
                *(v18 + 15) = *&v17[v9 + 60];
              }

              v17 += 80;
            }

            while (v16 != v17);
            v15 = v7[1];
          }

          v7[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<vision::mod::DetectedObject>,vision::mod::DetectedObject*,vision::mod::DetectedObject*,vision::mod::DetectedObject*>(v7, &v16[v9], v8, v15);
        }
      }

      ++v4;
      v26 = &v23;
      std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v26);
      v2 += 2;
    }

    while (v2 != v22);
  }
}

void sub_1A5DDDA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  *(v18 + 8) = v19;
  a18 = &a10;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void vision::mod::dispatch_sync_guard(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x4012000000;
  v19 = __Block_byref_object_copy__18;
  v20 = __Block_byref_object_dispose__19;
  v21 = "";
  MEMORY[0x1AC556740](v22, "Unspecified error");
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6vision3modL19dispatch_sync_guardEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1E77B2C60;
  v5 = v4;
  v9 = v5;
  v10 = &v12;
  v11 = &v16;
  dispatch_sync(v3, block);
  if (*(v13 + 24) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v7 = MEMORY[0x1AC556750](exception, v17 + 6);
    __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  MEMORY[0x1AC556760](v22);
}

void sub_1A5DDDC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  MEMORY[0x1AC556760](v11 + 48);

  _Unwind_Resume(a1);
}

uint64_t std::vector<vision::mod::DetectedObject>::__init_with_size[abi:ne200100]<vision::mod::DetectedObject*,vision::mod::DetectedObject*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vision::mod::DetectedObject>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5DDDCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<vision::mod::DetectedObject>>,std::vector<vision::mod::DetectedObject>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<vision::mod::DetectedObject>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DetectedObject>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<vision::mod::DetectedObject>,vision::mod::DetectedObject*,vision::mod::DetectedObject*,vision::mod::DetectedObject*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      vision::mod::DetectedObject::DetectedObject(v4, v6);
      v6 += 80;
      v4 = v11 + 80;
      v11 += 80;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vision::mod::DetectedObject>,vision::mod::DetectedObject*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void sub_1A5DDDE68(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  *(*(*(v2 + 40) + 8) + 24) = 1;
  if (a2 == 2)
  {
    std::runtime_error::operator=((*(*(v2 + 48) + 8) + 48), v4);
  }

  __cxa_end_catch();
}

void vision::mod::ObjectDetector_DCNFaceDetector_v2::priv::detectFacesInImageBufferInternal(vision::mod::ObjectDetector_DCNFaceDetector_v2::priv *this, const vImage_Buffer *a2, uint64_t a3, int a4, double a5)
{
  v6 = this;
  v58[1] = *MEMORY[0x1E69E9840];
  v7 = *(&a2[2].width + 1);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v9 = *(a3 + 8);
  v8 = *(a3 + 16);
  LODWORD(a5) = a2->data;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:a5];
  v58[0] = v10;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];

  data = a2[3].data;
  v12 = [data detect:a3 inputIsBGR:1];
  v13 = v8;
  v14 = v9;
  *&v15 = v9;
  *&v16 = v8;
  v17 = [data processBoxes:v12 withHeight:v41 andWidth:v15 filterThresholds:v16];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v19)
  {
    v20 = *v45;
    v21 = vneg_f32(0x3F0000003FLL);
    do
    {
      v22 = 0;
      do
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v23 = v6;
        v24 = *(*(&v44 + 1) + 8 * v22);
        std::string::basic_string[abi:ne200100]<0>(__p, "unknown");
        v50 = v21;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        [v24 bounds];
        *&v25 = v25;
        *&v26 = v26;
        v50 = __PAIR64__(LODWORD(v26), LODWORD(v25));
        *&v25 = v27;
        *&v26 = v28;
        v51 = __PAIR64__(LODWORD(v25), LODWORD(v26));
        [v24 confidence];
        v56 = v29;
        [v24 rotationAngle];
        LODWORD(v52) = v30;
        LOBYTE(v53) = 1;
        [v24 yawAngle];
        HIDWORD(v52) = v31;
        HIBYTE(v53) = 1;
        if (v49 < 0)
        {
          __p[1] = 4;
          v32 = __p[0];
        }

        else
        {
          v49 = 4;
          v32 = __p;
        }

        strcpy(v32, "face");
        v6 = v23;
        if (((*&v50 + *(&v51 + 1)) - v13) <= (v7 * *(&v51 + 1)) && (v7 * *&v51) >= -*(&v50 + 1) && (v7 * *(&v51 + 1)) >= -*&v50 && ((*(&v50 + 1) + *&v51) - v14) <= (v7 * *&v51))
        {
          if ((*&v50 + *(&v51 + 1)) <= v13)
          {
            v33 = 0.0;
          }

          else
          {
            v33 = (*&v50 + *(&v51 + 1)) - v13;
          }

          if (*&v50 < 0.0)
          {
            v33 = *&v50;
          }

          if ((*(&v50 + 1) + *&v51) > v14)
          {
            v34 = (*(&v50 + 1) + *&v51) - v14;
          }

          else
          {
            v34 = 0.0;
          }

          if (*(&v50 + 1) < 0.0)
          {
            v34 = *(&v50 + 1);
          }

          v35 = *&v50 - v33;
          v36 = *(&v50 + 1) - v34;
          *&v50 = v35;
          *(&v50 + 1) = *(&v50 + 1) - v34;
          if ((*(&v51 + 1) + v35) <= v13 && v36 >= 0.0 && v35 >= 0.0 && (*&v51 + v36) <= v14)
          {
            if (a4)
            {
              *(&v50 + 1) = (*(a3 + 8) - v36) - *&v51;
            }

            v38 = v23[1];
            if (v38 >= v23[2])
            {
              v39 = std::vector<vision::mod::DetectedObject>::__emplace_back_slow_path<vision::mod::DetectedObject const&>(v23, __p);
            }

            else
            {
              vision::mod::DetectedObject::DetectedObject(v38, __p);
              v39 = v38 + 80;
            }

            v6 = v23;
            v23[1] = v39;
          }
        }

        if (v49 < 0)
        {
          operator delete(__p[0]);
        }

        ++v22;
      }

      while (v19 != v22);
      v40 = [v18 countByEnumeratingWithState:&v44 objects:v57 count:16];
      v19 = v40;
    }

    while (v40);
  }
}

void std::vector<vision::mod::DetectedObject>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<vision::mod::DetectedObject>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void vision::mod::ObjectDetectorAbstract::detectObjectsInImages_RGBA8888(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      (*(*a1 + 40))(v7, a1, v3);
      std::vector<std::vector<vision::mod::DetectedObject>>::push_back[abi:ne200100](a3, v7);
      v8 = v7;
      std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v8);
      v3 += 32;
    }

    while (v3 != v4);
  }
}

void vision::mod::ObjectDetectorAbstract::detectObjectsInImage_Planar8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 6015;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void sub_1A5DDE42C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vision::mod::ObjectDetector_DCNFaceDetector_v2::detectObjectsInImage_BGRA8888(vision::mod::ObjectDetector_DCNFaceDetector_v2 *this@<X0>, const vImage_Buffer *a2@<X1>, void *a3@<X8>)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4812000000;
  v10 = __Block_byref_object_copy__5313;
  v11 = __Block_byref_object_dispose__5314;
  v12 = "";
  memset(v13, 0, sizeof(v13));
  v4 = *(*(this + 14) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN6vision3mod33ObjectDetector_DCNFaceDetector_v229detectObjectsInImage_BGRA8888ERK13vImage_Buffer_block_invoke;
  v6[3] = &unk_1E77B2C38;
  v6[4] = &v7;
  v6[5] = this;
  v6[6] = a2;
  vision::mod::dispatch_sync_guard(v4, v6);
  v5 = v8;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<vision::mod::DetectedObject>::__init_with_size[abi:ne200100]<vision::mod::DetectedObject*,vision::mod::DetectedObject*>(a3, v5[6], v5[7], 0xCCCCCCCCCCCCCCCDLL * ((v5[7] - v5[6]) >> 4));
  _Block_object_dispose(&v7, 8);
  v14 = v13;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_1A5DDE560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  *(v10 - 24) = v9;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100]((v10 - 24));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5313(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN6vision3mod33ObjectDetector_DCNFaceDetector_v229detectObjectsInImage_BGRA8888ERK13vImage_Buffer_block_invoke(void *a1, double a2)
{
  vision::mod::ObjectDetector_DCNFaceDetector_v2::priv::detectFacesInImageBufferInternal(&v4, *(a1[5] + 112), a1[6], *(a1[5] + 104), a2);
  v3 = *(a1[4] + 8);
  std::vector<vision::mod::DetectedObject>::__vdeallocate(v3 + 48);
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v5 = 0;
  v4 = 0uLL;
  v6 = &v4;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v6);
}