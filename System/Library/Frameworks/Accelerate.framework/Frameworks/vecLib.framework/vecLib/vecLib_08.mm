uint64_t sub_23671A900(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v10 = a3 + 16 * a2 * a4;
  if (a2 < 48)
  {
    return sub_23671A3E0(a1, a2, a2, 0, a3, a4, a5, v10, a6, a7);
  }

  v12 = 0;
  v29 = a4 + 1;
  v25 = a1 - a2;
  v26 = a3 + 16 * a2 * a4;
  v27 = a5;
  v30 = a6;
  do
  {
    v13 = v29 * v12;
    v14 = v8 + 16 * v13;
    v15 = v10 + 32 * v12;
    v16 = a2 - v12;
    if (a2 - v12 >= 48)
    {
      v17 = 48;
    }

    else
    {
      v17 = a2 - v12;
    }

    v18 = a1;
    v19 = (a1 - v12);
    v20 = a5 + 4 * v12;
    v21 = sub_23671A3E0(v19, a2 - v12, v17, v12, v8 + 16 * v13, a4, v20, v10 + 32 * v12, a6, a7);
    if (v21)
    {
      v22 = v21;
      if (v17 + v12 < a2 && v21 >= 1)
      {
        v23 = (v16 - v17);
        v24 = v14 + 16 * v29 * v17;
        sub_236745F38(v23, v21, v14 + 16 * v17, a4, v15, v24, a4, a7);
        if (v18 > a2)
        {
          sub_23674A3F0(v25, v23, v22, v14 + 16 * v17 + 16 * v23, v14 + 16 * v17, a4, v15, v24 + 16 * v23, a4, a7);
        }
      }

      a1 = v18;
      goto LABEL_15;
    }

    if (v16 < 49)
    {
      break;
    }

    v22 = sub_23671A3E0(v19, a2 - v12, a2 - v12, v12, v14, a4, v20, v15, v30, a7);
    a1 = v18;
    if (!v22)
    {
      break;
    }

LABEL_15:
    v12 = (v22 + v12);
    a5 = v27;
    v8 = a3;
    a6 = v30;
    v10 = v26;
  }

  while (v12 < a2);
  return v12;
}

uint64_t sub_23671AAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, long double *a5, uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  if (a3 < 1)
  {
    return 0;
  }

  v14 = 0;
  v15 = a3;
  v16 = 16 * a6 + 16;
  while (hypot(*a5, a5[1]) != 0.0)
  {
    sub_236779A4C(a1, v15, a5, a6, a7, a9);
    *a5 = *a7;
    v14 = (v14 + 1);
    a1 = (a1 - 1);
    a5 = (a5 + v16);
    if (!--v15)
    {
      return a3;
    }
  }

  return v14;
}

uint64_t sub_23671ABB8(uint64_t a1, uint64_t a2, long double *a3, uint64_t a4, uint64_t a5, uint64_t a6, float64x2_t *a7, uint64_t a8)
{
  v10 = a3;
  v11 = a2;
  v29 = *MEMORY[0x277D85DE8];
  if (a2 >= 48)
  {
    LODWORD(v12) = 0;
    v27 = a4 + 1;
    v25 = a1 - a2;
    do
    {
      v13 = &v10[2 * v27 * v12];
      v14 = v11 - v12;
      if (v11 - v12 >= 48)
      {
        v15 = 48;
      }

      else
      {
        v15 = v14;
      }

      v16 = a1;
      v17 = sub_23671AAF4((a1 - v12), a2, v15, a4, &v10[2 * v27 * v12], a4, v28, a8, a7);
      v12 = (v17 + v12);
      if (v17 >= 1 && v12 < v11)
      {
        v19 = v17;
        v20 = v14 - v17;
        v21 = (v13 + 16 * v17);
        v22 = v13 + 16 * v27 * v17;
        sub_23680185C(v20, v17, v21, a4, v13, v22, a4, a7);
        if (v16 > v11)
        {
          sub_2368025FC(v25, v20, v19, v21[v20].i64, v21, a4, v13, v22 + 16 * v20, a4, a7);
        }
      }

      v10 = a3;
      a1 = v16;
    }

    while (v12 < v11);
  }

  else
  {
    v12 = sub_23671AAF4(a1, a2, a2, a4, a3, a4, v28, a8, a7);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_23671AD40(int a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v7 = a3;
  v105 = a4;
  v10 = a4 + 1;
  v11 = *(a2 + 88);
  v107 = v10;
  v12 = *(v11 + 4 * v10);
  v110 = *(v11 + 4 * a4);
  v13 = (v12 - v110);
  v103 = *(a3[5] + 8 * a4);
  v14 = v103 + 1;
  v102 = *v103;
  v15 = 2 * v13;
  v117 = a1 - 3;
  if ((a1 - 3) >= 2)
  {
    v15 = 0;
  }

  v112 = v15;
  v16 = atomic_load((a3[6] + 4 * a4));
  v115 = *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4);
  v17 = 16 * (2 * (v16 + v13) + (v16 + *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4)) * (v16 + v13)) + 4 * (v16 + v13) + 8;
  *(a3[5] + 8 * a4) = (*(a2 + 24))(v17);
  v18 = *(v7[5] + 8 * a4);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v104 = v16;
  *v18 = v17;
  v19 = a1;
  if (a1 == 4)
  {
    v20 = v7[5];
    v21 = v105;
    v22 = atomic_load((v7[6] + 4 * v105));
    v18 = *(v20 + 8 * v21);
    v23 = v107;
  }

  else
  {
    v22 = 0;
    v23 = v107;
    v21 = v105;
  }

  v25 = v115;
  v26 = v22 + *(*(a2 + 120) + 8 * v23) - *(*(a2 + 120) + 8 * v21);
  v27 = *(a2 + 88);
  v28 = *(v27 + 4 * v23);
  v29 = *(v27 + 4 * v21);
  v30 = v28 - v29 + v22;
  v31 = v18 + 1;
  v32 = v26;
  if (v117 >= 2)
  {
    v33 = 0;
  }

  else
  {
    v33 = 2 * v30;
  }

  v34 = 16 * v26;
  v106 = v19;
  v116 = v18 + 1;
  v118 = v34;
  v114 = v18;
  v100 = v33;
  v101 = v28 - v29 + v22;
  if (v13 >= 1)
  {
    v98 = v22 + *(*(a2 + 120) + 8 * v23) - *(*(a2 + 120) + 8 * v21);
    v99 = v7;
    v35 = &v14[2 * v115 * v13 + 2 * v112];
    v36 = v28 - v29 + v22;
    v37 = &v18[2 * v30 * v26 + 1 + 2 * v33];
    v38 = (v12 - v110);
    do
    {
      v39 = *v35++;
      *v37 = v39;
      v37 = (v37 + 4);
      --v38;
    }

    while (v38);
    v40 = 0;
    v41 = (16 * (v12 - v110)) | 8;
    v111 = 16 * (v22 + v28 + v110 + ~v29 - v12);
    v42 = 16 * v115;
    v43 = v42 + 16;
    v44 = v34 + 16;
    v45 = &v18[2 * v104 + 1 + 2 * v13];
    v46 = &v103[2 * v13 + 1];
    v47 = v18 + 1;
    v113 = v28 - v29 + v22;
    v109 = v42 + 16;
    v108 = v34 + 16;
    do
    {
      v48 = 0;
      do
      {
        *&v47[2 * v48] = *&v14[2 * v48];
        ++v48;
      }

      while (v40 + v48 < v13);
      if (v13 < v36)
      {
        bzero(v114 + v41 + v34 * v40, v111 + 16);
        v44 = v108;
        v43 = v109;
        v42 = 16 * v115;
        v41 = (16 * v13) | 8;
        v36 = v113;
        v25 = v115;
        v31 = v116;
        v34 = v118;
      }

      v49 = v13;
      v50 = v46;
      for (i = v45; v49 < v25; ++v49)
      {
        v52 = *v50++;
        *i++ = v52;
      }

      ++v40;
      v14 = (v14 + v43);
      v47 = (v47 + v44);
      v45 += v34;
      v46 += v42;
    }

    while (v40 != v13);
    v26 = v98;
    v7 = v99;
    v19 = v106;
    v21 = v105;
  }

  bzero(&v31[2 * v32 * v13], 16 * v104 * v32);
  v53 = *(a2 + 120);
  v54 = *(v53 + 8 * v21);
  v55 = *(v53 + 8 * v107);
  v56 = v55 <= v54;
  v57 = v55 - v54;
  if (!v56)
  {
    v58 = 0;
    v59 = *(a2 + 128) + 4 * v54;
    do
    {
      *(a5 + 4 * *(v59 + 4 * v58)) = v58;
      ++v58;
    }

    while (v57 != v58);
  }

  v60 = *(a2 + 96);
  v61 = *(v60 + 4 * v21);
  v62 = v107;
  if (v61 < *(v60 + 4 * v107))
  {
    v63 = &v116[2 * v101 * v26 + 2 * v100];
    v64 = v13;
    do
    {
      v65 = *(*(a2 + 104) + 4 * v61);
      if (v19 == 4)
      {
        v66 = atomic_load((v7[6] + 4 * v65));
      }

      else
      {
        v66 = 0;
      }

      v67 = *(a2 + 120);
      v68 = v65 + 1;
      v69 = *(v67 + 8 * (v65 + 1));
      v70 = *(v67 + 8 * v65);
      v71 = *(a2 + 88);
      v72 = *(v71 + 4 * (v65 + 1));
      v73 = v72 - *(v71 + 4 * v65) + v66;
      v74 = v73;
      if (v19 == 4)
      {
        v74 = *(v7[7] + 4 * v65);
      }

      if (v117 >= 2)
      {
        v75 = 0;
      }

      else
      {
        v75 = 2 * v73;
      }

      if (v73 != v74)
      {
        if (v74 < v73)
        {
          v76 = v66 + v69 - v70;
          v77 = *(v7[5] + 8 * v65);
          v78 = v72 - *(v71 + 4 * v65);
          v79 = v64 - v74;
          v80 = v74;
          v81 = 16 * v73;
          v82 = (v77 + v81 * v76 + 16 * v75 + 4 * v74 + 8);
          v83 = v64;
          v84 = v74;
          do
          {
            v85 = *v82++;
            *(v63 + 4 * v83) = v85;
            ++v84;
            ++v83;
          }

          while (v84 < v73);
          v86 = 16 * v76 + 16;
          v87 = v77 + v86 * v74 + 8;
          v88 = &v114[2 * v64 + 1];
          v89 = v64;
          v90 = v74;
          do
          {
            v91 = 0;
            do
            {
              *(v88 + v118 * v89 + 16 * v91) = *(v87 + 16 * v91);
              ++v91;
            }

            while (v90 + v91 < v73);
            ++v90;
            v87 += v86;
            v88 += 16;
            ++v89;
          }

          while (v90 < v73);
          v92 = *(a2 + 120);
          v93 = v77 + v81 + 16 * v74 * v76 - 16 * v78 + 8;
          v19 = v106;
          v62 = v107;
          do
          {
            for (j = *(v92 + 8 * v65) + v78; j < *(v92 + 8 * v68); v92 = *(a2 + 120))
            {
              v95 = *(a5 + 4 * *(*(a2 + 128) + 4 * j));
              v96 = v93 - 16 * *(v92 + 8 * v65);
              if (v95 >= v13)
              {
                v97 = &v116[2 * v104 + 2 * v32 * (v79 + v80) + 2 * v95];
              }

              else
              {
                v97 = &v116[2 * v79 + 2 * v80 + 2 * v95 * v32];
              }

              *v97 = *(v96 + 16 * j++);
            }

            ++v80;
            v93 += 16 * v76;
          }

          while (v80 < v73);
        }

        v64 = v73 + v64 - v74;
      }

      ++v61;
    }

    while (v61 < *(*(a2 + 96) + 4 * v62));
  }

  if (v102)
  {
    (*(a2 + 32))(v103);
  }

  return 0;
}

uint64_t sub_23671B2FC(uint64_t a1, uint64_t a2)
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
  if (*(v2 + 16) == 111)
  {
    v11 = *(v2 + 52);
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v2 + 8);
  v13 = *(v2 + 64);
  v17 = *(v2 + 52);
  v15 = *(v2 + 48);
  v16 = *(v2 + 32) + 16 * v10 * v11;
  v18 = *(v2 + 72);
  v19 = *(v2 + 40) + 16 * (v6 + *(v2 + 56) * v10);
  return cblas_zgemm_NEWLAPACK();
}

uint64_t sub_23671B404(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a2 >= result)
  {
    v7 = result;
  }

  else
  {
    v7 = a2;
  }

  if (v7 >= 1)
  {
    v12 = 0;
    v13 = result - 1;
    v26 = a5 + 8;
    do
    {
      v27 = *(a3 + 4 * v12) - (v12 + a4);
      v14 = (a7 + 16 * v12);
      if (v27 < 1)
      {
        v15 = v12 + 1;
        *v14 = 0.0;
        v14[1] = 0.0;
      }

      else
      {
        v15 = v12 + 1;
        if (v12 + 1 >= v13)
        {
          v16 = v13;
        }

        else
        {
          v16 = v12 + 1;
        }

        v17 = v12 + a6 * v16;
        result = zlarfg_NEWLAPACK();
        v18 = v27;
        v19 = (v27 - 1);
        if (v27 > 1)
        {
          v20 = (v26 + 16 * v17);
          do
          {
            *v20 = -*v20;
            v20 += 2 * a6;
            --v19;
          }

          while (v19);
        }

        v14[1] = -v14[1];
        if (v15 < a2)
        {
          v21 = (a5 + 16 * (v12 + a6 * v12));
          v25 = *v21;
          *v21 = xmmword_23681FBD0;
          result = sub_2367E3DAC();
          v18 = v27;
          *(a5 + 16 * (v12 + v12 * a6)) = v25;
        }

        if (v18 >= 2)
        {
          v22 = (v18 - 1);
          v23 = (v26 + 16 * v17);
          do
          {
            *v23 = -*v23;
            v23 += 2 * a6;
            --v22;
          }

          while (v22);
        }
      }

      v12 = v15;
    }

    while (v15 != v7);
  }

  return result;
}

void sub_23671B5CC(uint64_t a1, double *__b, char *a3)
{
  v4 = __b;
  v5 = *(a1 + 4);
  v6 = *(a1 + 28);
  v61 = (v6 * v6);
  v59 = v5;
  v7 = (v5 * v6);
  v8 = 8 * v7;
  v77 = v6;
  if (v7 >= 1)
  {
    memset_pattern16(__b, &unk_23681FAF0, 8 * (v5 * v6));
    v6 = v77;
  }

  v9 = 0;
  v73 = v6 + 1;
  v57 = v6 - 1;
  v63 = 16 * v61;
  v76 = 16 * v6;
  v54 = 8 * v7;
  v55 = v7;
  do
  {
    while (1)
    {
      v56 = v9;
      if (v7 >= 1)
      {
        bzero(a3, v8);
        v6 = v77;
      }

      if (v59 >= 1)
      {
        v10 = 0;
        v58 = *(a1 + 8);
        v11 = *v58;
        while (1)
        {
          v60 = v10 + 1;
          v64 = v58[v10 + 1];
          if (v11 < v64)
          {
            break;
          }

LABEL_51:
          v11 = v64;
          v10 = v60;
          if (v60 == v59)
          {
            goto LABEL_52;
          }
        }

        v62 = *(a1 + 16);
        v78 = v10 * v6;
        v67 = v63 * v11 + 24;
        v68 = v63 * v11 + 8;
        v65 = v10;
        while (1)
        {
          v69 = v11;
          v12 = *(v62 + 4 * v11);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v10 <= v12 && v12 < *a1)
            {
              v26 = *(a1 + 32);
              v74 = v26 + 16 * v69 * v61;
              if (v65 == v12)
              {
                if (v6)
                {
                  v27 = 0;
                  v28 = (v26 + v67);
                  v29 = &v4[v12 * v6 + 1];
                  v30 = &a3[8 * v12 * v6 + 8];
                  v31 = v57;
                  do
                  {
                    v32 = v27 + v78;
                    v33 = v30;
                    v71 = v29;
                    v72 = v28;
                    v34 = v31;
                    v70 = v27 + 1;
                    if (v27 + 1 < v6)
                    {
                      do
                      {
                        v35 = *v29++;
                        v36 = v35 * hypot(*(v28 - 1), *v28) * v4[v32];
                        v37 = *v33;
                        if (v36 > *v33)
                        {
                          v37 = v36;
                        }

                        *v33++ = v37;
                        if (v36 <= *&a3[8 * v32])
                        {
                          v36 = *&a3[8 * v32];
                        }

                        *&a3[8 * v32] = v36;
                        v28 += 2;
                        --v34;
                      }

                      while (v34);
                    }

                    v38 = v4[v32];
                    v39 = v38 * (v38 * hypot(*(v74 + 16 * v27 * v73), *(v74 + 16 * v27 * v73 + 8)));
                    if (v39 <= *&a3[8 * v32])
                    {
                      v39 = *&a3[8 * v32];
                    }

                    *&a3[8 * v32] = v39;
                    --v31;
                    v28 = &v72[v76 / 8 + 2];
                    v29 = v71 + 1;
                    ++v30;
                    ++v27;
                    v6 = v77;
                  }

                  while (v70 != v77);
                }

                goto LABEL_50;
              }

LABEL_41:
              if (v6)
              {
                v40 = 0;
                v41 = (v74 + 8);
                v75 = &v4[v12 * v6];
                v42 = &a3[8 * v12 * v6];
                do
                {
                  v43 = v40 + v78;
                  v44 = v6;
                  v45 = v42;
                  v46 = v75;
                  v47 = v41;
                  do
                  {
                    v48 = *v46++;
                    v49 = v48 * hypot(*(v47 - 1), *v47) * v4[v43];
                    v50 = *v45;
                    if (v49 > *v45)
                    {
                      v50 = v49;
                    }

                    *v45++ = v50;
                    if (v49 <= *&a3[8 * v43])
                    {
                      v49 = *&a3[8 * v43];
                    }

                    *&a3[8 * v43] = v49;
                    v47 += 2;
                    --v44;
                  }

                  while (v44);
                  ++v40;
                  v6 = v77;
                  v41 = (v41 + v76);
                }

                while (v40 != v77);
              }
            }
          }

          else if (v10 >= v12)
          {
            v13 = *(a1 + 32);
            v74 = v13 + 16 * v69 * v61;
            if (v65 != v12)
            {
              goto LABEL_41;
            }

            if (v6)
            {
              v14 = 0;
              v15 = (v13 + v68);
              v16 = &v4[v12 * v6];
              v17 = &a3[8 * v12 * v6];
              do
              {
                v18 = v78;
                if (v14)
                {
                  v19 = 0;
                  v18 = v14 + v78;
                  v20 = v15;
                  do
                  {
                    v21 = v16[v19];
                    v22 = v21 * hypot(*(v20 - 1), *v20) * v4[v18];
                    v23 = *&v17[8 * v19];
                    if (v22 > v23)
                    {
                      v23 = v22;
                    }

                    *&v17[8 * v19] = v23;
                    if (v22 <= *&a3[8 * v18])
                    {
                      v22 = *&a3[8 * v18];
                    }

                    *&a3[8 * v18] = v22;
                    ++v19;
                    v20 += 2;
                  }

                  while (v14 != v19);
                }

                v24 = v4[v18];
                v25 = v24 * (v24 * hypot(*(v74 + 16 * v14 * v73), *(v74 + 16 * v14 * v73 + 8)));
                if (v25 <= *&a3[8 * v18])
                {
                  v25 = *&a3[8 * v18];
                }

                *&a3[8 * v18] = v25;
                ++v14;
                v6 = v77;
                v15 = (v15 + v76);
              }

              while (v14 != v77);
            }
          }

LABEL_50:
          v11 = v69 + 1;
          v67 += v63;
          v68 += v63;
          v10 = v65;
          if (v69 + 1 == v64)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      v8 = v54;
      v7 = v55;
      v51 = v55;
      v52 = a3;
      v53 = v4;
      if (v55 >= 1)
      {
        break;
      }

      v9 = v56 + 1;
      if (v56 == 2)
      {
        return;
      }
    }

    do
    {
      if (*v52 == 0.0)
      {
        *v53 = INFINITY;
      }

      else
      {
        *v53 = *v53 / sqrt(*v52);
      }

      ++v53;
      ++v52;
      --v51;
    }

    while (v51);
    v9 = v56 + 1;
  }

  while (v56 != 2);
  do
  {
    if (fabs(*v4) == INFINITY)
    {
      *v4 = 1.0;
    }

    ++v4;
    --v7;
  }

  while (v7);
}

void sub_23671BAE8(int *a1, uint64_t a2, uint64_t a3, void *__b, char *a5, char *a6)
{
  v41 = a1[1];
  v9 = *(a1 + 28);
  v47 = *a1;
  if (v47 * v9 >= 1)
  {
    memset_pattern16(__b, &unk_23681FAF0, 8 * (v47 * v9));
  }

  v43 = __b;
  v38 = (v41 * v9);
  if (v38 >= 1)
  {
    memset_pattern16(a5, &unk_23681FAF0, 8 * (v41 * v9));
  }

  v10 = 0;
  v37 = (v47 * v9);
  v35 = 8 * (v41 * v9);
  v49 = 16 * (v9 * v9);
  v53 = 16 * v9;
  v39 = a3;
  v11 = &a6[8 * v47];
  do
  {
    v36 = v10;
    if (v37 >= 1)
    {
      bzero(a6, 8 * v37);
    }

    if (v38 >= 1)
    {
      bzero(v11, v35);
    }

    if (v41 >= 1)
    {
      v12 = 0;
      v40 = *(a1 + 1);
      do
      {
        if (a3)
        {
          v13 = *(a3 + 4 * v12);
        }

        else
        {
          v13 = v12;
        }

        v14 = *(v40 + 8 * v12);
        v42 = v12 + 1;
        v50 = *(v40 + 8 * (v12 + 1));
        if (v14 < v50)
        {
          v48 = *(a1 + 2);
          v54 = v9 * v13;
          v52 = v49 * v14 + 8;
          do
          {
            v51 = v14;
            v15 = *(v48 + 4 * v14);
            if ((v15 & 0x80000000) == 0 && v15 < v47)
            {
              if (a2)
              {
                v15 = *(a2 + 4 * v15);
              }

              if (v9)
              {
                v16 = 0;
                v17 = v15 * v9;
                v18 = (*(a1 + 4) + v52);
                v56 = &v43[v17];
                v55 = &a6[8 * v17];
                do
                {
                  v19 = v55;
                  v20 = v16 + v54;
                  v21 = v56;
                  v22 = v18;
                  v23 = v9;
                  do
                  {
                    v24 = *v21++;
                    v25 = v24 * hypot(*(v22 - 1), *v22) * *&a5[8 * v20];
                    v26 = *v19;
                    if (v25 > *v19)
                    {
                      v26 = v25;
                    }

                    *v19++ = v26;
                    if (v25 <= *&v11[8 * v20])
                    {
                      v25 = *&v11[8 * v20];
                    }

                    *&v11[8 * v20] = v25;
                    v22 += 2;
                    --v9;
                  }

                  while (v9);
                  ++v16;
                  v18 = (v18 + v53);
                  v9 = v23;
                }

                while (v16 != v23);
              }
            }

            v14 = v51 + 1;
            v52 += v49;
          }

          while (v51 + 1 != v50);
        }

        v12 = v42;
        a3 = v39;
      }

      while (v42 != v41);
    }

    v27 = v37;
    v29 = v43;
    v28 = a6;
    if (v37 >= 1)
    {
      do
      {
        if (*v28 == 0.0)
        {
          *v29 = INFINITY;
        }

        else
        {
          *v29 = *v29 / sqrt(*v28);
        }

        ++v29;
        ++v28;
        --v27;
      }

      while (v27);
    }

    v30 = v38;
    v31 = &a6[8 * v47];
    v32 = a5;
    if (v38 >= 1)
    {
      do
      {
        if (*v31 == 0.0)
        {
          *v32 = INFINITY;
        }

        else
        {
          *v32 = *v32 / sqrt(*v31);
        }

        ++v32;
        ++v31;
        --v30;
      }

      while (v30);
    }

    v10 = v36 + 1;
  }

  while (v36 != 2);
  v33 = v37;
  v34 = v43;
  if (v37 >= 1)
  {
    do
    {
      if (fabs(*v34) == INFINITY)
      {
        *v34 = 1.0;
      }

      ++v34;
      --v33;
    }

    while (v33);
  }

  if (v38 >= 1)
  {
    do
    {
      if (fabs(*a5) == INFINITY)
      {
        *a5 = 0x3FF0000000000000;
      }

      a5 += 8;
      --v38;
    }

    while (v38);
  }
}

uint64_t sub_23671BEAC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v13 = result;
  v14 = a5[4];
  v15 = a5[1];
  if (v14 < v15)
  {
    v16 = a5[3];
    v78 = a6;
    v17 = v16 + a10;
    while (1)
    {
      if (v14 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v14;
      }

      if (v14 == v16 && v17 >= v15)
      {
        goto LABEL_101;
      }

      v19 = a5[19];
      if (v19 - v15 + v18 >= 0 && (*(a6[6] + (v19 - v15 + v18)) & 1) != 0)
      {
        goto LABEL_100;
      }

      if (v18 >= v16)
      {
        break;
      }

      if (v18 < 0)
      {
        goto LABEL_19;
      }

      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v18);
      }

      else
      {
        v20 = v18 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_21:
      v24 = *(a13 + 4 * v20);
      v25 = *(a2 + 12);
      if (v24 >= v25)
      {
        v27 = *(a2 + 4);
        v28 = v27 - *(a2 + 76);
        if (v24 < v28)
        {
          result = ((v24 - v25) / a8);
          v26 = (v24 - v25) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v13) + 4 * result) * a8;
          goto LABEL_31;
        }

        if (v27 > v24)
        {
          v26 = *(*(a2 + 88) + 4 * (v24 - v28));
          goto LABEL_31;
        }
      }

      else if ((v24 & 0x80000000) == 0)
      {
        if (*(a2 + 56))
        {
          v26 = *(*(a2 + 64) + 4 * v24);
        }

        else
        {
          v26 = v24 + *(a7[22] + 4 * v13) * a8;
        }

        goto LABEL_31;
      }

      v26 = 0x7FFFFFFF;
LABEL_31:
      if (v26 == v20)
      {
        v29 = (v24 - v25);
        if (v24 - v25 >= 0)
        {
          if (a11 >= 1)
          {
            v30 = (v18 - v16);
            v31 = 16 * (v16 + a9) - 16 * v16;
            v32 = v16 + a9;
            v33 = a9;
            do
            {
              if (v32 >= v16)
              {
                v36 = *a5;
                v37 = a5[18];
                if (v32 < v36 - v37)
                {
                  v38 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * (v33 / a8));
                  v39 = v33 % a8;
LABEL_45:
                  v35 = v39 + v38 * a8;
                  goto LABEL_46;
                }

                if (v32 >= v36)
                {
LABEL_43:
                  v35 = 0x7FFFFFFF;
                  goto LABEL_46;
                }

                v35 = *(*(a5 + 10) + 4 * (v32 + v37 - v36));
              }

              else
              {
                if (v32 < 0)
                {
                  goto LABEL_43;
                }

                v34 = *(a5 + 7);
                if (!v34)
                {
                  v38 = *(a7[22] + 4 * a4);
                  v39 = v16 + v33;
                  goto LABEL_45;
                }

                v35 = *(v34 + 4 * v32);
              }

LABEL_46:
              v40 = *(a12 + 4 * v35);
              if (v40 >= v25)
              {
                if ((v30 & 0x80000000) != 0)
                {
                  v41 = (*(a5 + 3) + 16 * *(a5 + 4) * v18 + 16 * v32);
                }

                else if (v32 >= v16)
                {
                  v41 = (a6[12] + 16 * a6[2] * v30 + v31);
                }

                else
                {
                  v41 = (*(a5 + 5) + 16 * *(a5 + 6) * v32 + 16 * v30);
                }

                result = *(a3 + 96) + 16 * *(a3 + 16) * v29;
                v42 = (result + 16 * (v40 - v25));
              }

              else
              {
                if ((v30 & 0x80000000) != 0)
                {
                  v41 = (*(a5 + 3) + 16 * *(a5 + 4) * v18 + 16 * v32);
                }

                else if (v32 >= v16)
                {
                  v41 = (a6[12] + 16 * a6[2] * v30 + v31);
                }

                else
                {
                  v41 = (*(a5 + 5) + 16 * *(a5 + 6) * v32 + 16 * v30);
                }

                result = *(a2 + 40);
                v42 = (result + 16 * *(a2 + 48) * v40 + 16 * v29);
              }

              *v42 = vaddq_f64(*v41, *v42);
              ++v32;
              ++v33;
              v31 += 16;
            }

            while (v32 < v16 + a9 + a11);
          }

          v43 = a5[18];
          v17 = v16 + a10;
          if (v43 >= 1)
          {
            v44 = 0;
            v45 = *a5;
            v77 = v45 - v43;
            v46 = a6[4];
            v47 = (v18 - v16);
            v79 = v45 - v16 - v43;
            v48 = -16 * v16 + 16 * (v45 - v43);
            v49 = v45 - v43;
            while ((*(v46 + v44) & 1) != 0)
            {
LABEL_99:
              ++v49;
              ++v44;
              v48 += 16;
              if (v77 + v44 >= v45)
              {
                goto LABEL_100;
              }
            }

            v50 = v77 + v44;
            if (v50 >= v16)
            {
              if (v50 < v77)
              {
                v53 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v79 + v44) / a8));
                v54 = (v79 + v44) % a8;
                goto LABEL_73;
              }

              v52 = *(a5 + 10);
LABEL_70:
              v55 = *(v52 + 4 * v44);
            }

            else if (v50 < 0)
            {
              v55 = 0x7FFFFFFF;
            }

            else
            {
              v51 = *(a5 + 7);
              if (v51)
              {
                v52 = v51 + 4 * v77;
                goto LABEL_70;
              }

              v53 = *(a7[22] + 4 * a4);
              v54 = v77 + v44;
LABEL_73:
              v55 = v54 + v53 * a8;
            }

            result = *(a12 + 4 * v55);
            v56 = result;
            if (result >= v25)
            {
              v59 = *a2 - *(a2 + 72);
              if (result < v59)
              {
                v17 = v16 + a10;
                a6 = v78;
                v58 = (result - v25) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v13) + 4 * ((result - v25) / a8)) * a8;
                goto LABEL_84;
              }

              if (*a2 > result)
              {
                v58 = *(*(a2 + 80) + 4 * (result - v59));
                goto LABEL_84;
              }
            }

            else if ((result & 0x80000000) == 0)
            {
              v57 = *(a2 + 56);
              if (v57)
              {
                v58 = *(v57 + 4 * result);
              }

              else
              {
                v58 = result + *(a7[22] + 4 * v13) * a8;
              }

LABEL_84:
              if (v58 == v55)
              {
                if (v25 <= result)
                {
                  if ((v47 & 0x80000000) != 0)
                  {
                    v60 = (*(a5 + 3) + 16 * *(a5 + 4) * v18 + 16 * v49);
                  }

                  else if (v50 >= v16)
                  {
                    v60 = (a6[12] + 16 * a6[2] * v47 + v48);
                  }

                  else
                  {
                    v60 = (*(a5 + 5) + 16 * *(a5 + 6) * v50 + 16 * v47);
                  }

                  result = *(a3 + 96);
                  v61 = (result + 16 * *(a3 + 16) * v29 + 16 * (v56 - v25));
                }

                else
                {
                  if ((v47 & 0x80000000) != 0)
                  {
                    v60 = (*(a5 + 3) + 16 * *(a5 + 4) * v18 + 16 * v49);
                  }

                  else if (v50 >= v16)
                  {
                    v60 = (a6[12] + 16 * a6[2] * v47 + v48);
                  }

                  else
                  {
                    v60 = (*(a5 + 5) + 16 * *(a5 + 6) * v50 + 16 * v47);
                  }

                  result = *(a2 + 48);
                  v61 = (*(a2 + 40) + 16 * result * v56 + 16 * v29);
                }

                *v61 = vaddq_f64(*v60, *v61);
              }

              goto LABEL_99;
            }

            v58 = 0x7FFFFFFF;
            goto LABEL_84;
          }
        }
      }

LABEL_100:
      v14 = v18 + 1;
      if (v18 + 1 >= v15)
      {
        goto LABEL_101;
      }
    }

    v21 = v15 - v19;
    v22 = __OFSUB__(v18, v21);
    v23 = v18 - v21;
    if (v23 < 0 != v22)
    {
      v20 = (v18 - v16) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v18 - v16) / a8)) * a8;
      goto LABEL_21;
    }

    if (v15 > v18)
    {
      v20 = *(*(a5 + 11) + 4 * v23);
      goto LABEL_21;
    }

LABEL_19:
    v20 = 0x7FFFFFFF;
    goto LABEL_21;
  }

LABEL_101:
  v62 = a5[18];
  if (v62 >= 1)
  {
    v63 = 0;
    v64 = *a5;
    v65 = v64 - v62;
    v66 = a6[4];
    result = v13;
    while ((*(v66 + v63) & 1) != 0)
    {
LABEL_126:
      ++v63;
      if (v65 + v63 >= v64)
      {
        return result;
      }
    }

    v67 = v65 + v63;
    v68 = a5[3];
    if (v67 < v68)
    {
      if (v67 < 0)
      {
        v71 = 0x7FFFFFFF;
      }

      else
      {
        v69 = *(a5 + 7);
        if (v69)
        {
          v70 = v69 + 4 * v65;
LABEL_111:
          v71 = *(v70 + 4 * v63);
          goto LABEL_114;
        }

        v71 = v65 + v63 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_114:
      v72 = *(a12 + 4 * v71);
      v73 = *(a2 + 12);
      if (v72 >= v73)
      {
        v76 = *a2 - *(a2 + 72);
        if (v72 < v76)
        {
          v75 = (v72 - v73) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v13) + 4 * ((v72 - v73) / a8)) * a8;
          goto LABEL_124;
        }

        if (*a2 > v72)
        {
          v75 = *(*(a2 + 80) + 4 * (v72 - v76));
          goto LABEL_124;
        }
      }

      else if ((v72 & 0x80000000) == 0)
      {
        v74 = *(a2 + 56);
        if (v74)
        {
          v75 = *(v74 + 4 * v72);
        }

        else
        {
          v75 = v72 + *(a7[22] + 4 * v13) * a8;
        }

        goto LABEL_124;
      }

      v75 = 0x7FFFFFFF;
LABEL_124:
      if (v75 == v71)
      {
        *(v66 + v63) = 1;
      }

      goto LABEL_126;
    }

    if (v67 < v65)
    {
      v71 = (v65 + v63 - v68) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v65 + v63 - v68) / a8)) * a8;
      goto LABEL_114;
    }

    v70 = *(a5 + 10);
    goto LABEL_111;
  }

  return result;
}

uint64_t sub_23671C5FC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, uint64_t a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v100 = result;
  v13 = a5[3];
  if (a11 >= 1)
  {
    v14 = v13 + a9;
    v15 = v13 + a10;
    v16 = *(a2 + 12);
    v104 = 4 * v14;
    v108 = a5 + 10;
    v106 = a5 + 12;
    v17 = a5 + 6;
    v18 = a5 + 8;
    v19 = 16 * v15 - 16 * v13;
    while (1)
    {
      result = v15 - v13;
      if (v15 < v13)
      {
        break;
      }

      v21 = a5[1];
      v22 = v21 - a5[19];
      v23 = __OFSUB__(v15, v22);
      v24 = v15 - v22;
      if (v24 < 0 != v23)
      {
        v20 = (v15 - v13) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v15 - v13) / a8)) * a8;
      }

      else
      {
        if (v15 >= v21)
        {
          goto LABEL_12;
        }

        v20 = *(*(a5 + 11) + 4 * v24);
      }

LABEL_14:
      v25 = *(a13 + 4 * v20);
      v26 = (v25 - v16);
      if (v25 - v16 >= 0)
      {
        v27 = a5[4];
        if (v27 < v13)
        {
          if (result >= 0)
          {
            v28 = a5 + 10;
          }

          else
          {
            v28 = a5 + 6;
          }

          if (result >= 0)
          {
            v29 = a5 + 12;
          }

          else
          {
            v29 = a5 + 8;
          }

          do
          {
            if (v27 < 0)
            {
              v31 = 0x7FFFFFFF;
            }

            else
            {
              v30 = *(a5 + 7);
              if (v30)
              {
                v31 = *(v30 + 4 * v27);
              }

              else
              {
                v31 = v27 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v32 = *(a12 + 4 * v31);
            if (v32 >= v16)
            {
              v37 = v32 - v16;
              if (result >= 0)
              {
                v38 = v27;
              }

              else
              {
                v38 = v15;
              }

              if (result >= 0)
              {
                v39 = v15 - v13;
              }

              else
              {
                v39 = v27;
              }

              v35 = (*v28 + 16 * *v29 * v38 + 16 * v39);
              v36 = (*(a3 + 96) + 16 * *(a3 + 16) * v26 + 16 * v37);
            }

            else
            {
              if (result >= 0)
              {
                v33 = v27;
              }

              else
              {
                v33 = v15;
              }

              if (result >= 0)
              {
                v34 = v15 - v13;
              }

              else
              {
                v34 = v27;
              }

              v35 = (*v28 + 16 * *v29 * v33 + 16 * v34);
              v36 = (*(a2 + 40) + 16 * *(a2 + 48) * v32 + 16 * v26);
            }

            *v36 = vaddq_f64(*v35, *v36);
            ++v27;
          }

          while (v13 != v27);
        }

        v40 = *a5;
        if (v14 < v40)
        {
          v41 = 0;
          v42 = a5[18];
          v43 = v40 - v42;
          v44 = v13 + a9 + v42 - v40;
          v45 = v104 + 4 * v42 - 4 * v40;
          v46 = 16 * v14 - 16 * v13;
          v47 = v13 + a9;
          while (((v44 + v41) & 0x80000000) == 0 && (*(*(a6 + 32) + (v44 + v41)) & 1) != 0)
          {
LABEL_72:
            ++v47;
            ++v41;
            v46 += 16;
            if (v14 + v41 >= v40)
            {
              goto LABEL_73;
            }
          }

          v48 = v14 + v41;
          if (v14 + v41 >= v13)
          {
            if (v48 < v43)
            {
              v51 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v41) / a8));
              v52 = (a9 + v41) % a8;
              goto LABEL_57;
            }

            v50 = *(a5 + 10) + v45;
LABEL_54:
            v53 = *(v50 + 4 * v41);
          }

          else if (v48 < 0)
          {
            v53 = 0x7FFFFFFF;
          }

          else
          {
            v49 = *(a5 + 7);
            if (v49)
            {
              v50 = v49 + v104;
              goto LABEL_54;
            }

            v51 = *(a7[22] + 4 * a4);
            v52 = v13 + a9 + v41;
LABEL_57:
            v53 = v52 + v51 * a8;
          }

          v54 = *(a12 + 4 * v53);
          if (v54 >= v16)
          {
            if (result < 0)
            {
              v55 = (*v17 + 16 * *v18 * v15 + 16 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v46);
            }

            else
            {
              v55 = (*v108 + 16 * *v106 * v48 + 16 * result);
            }

            v56 = (*(a3 + 96) + 16 * *(a3 + 16) * v26 + 16 * (v54 - v16));
          }

          else
          {
            if (result < 0)
            {
              v55 = (*v17 + 16 * *v18 * v15 + 16 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v46);
            }

            else
            {
              v55 = (*v108 + 16 * *v106 * v48 + 16 * result);
            }

            v56 = (*(a2 + 40) + 16 * *(a2 + 48) * v54 + 16 * v26);
          }

          *v56 = vaddq_f64(*v55, *v56);
          goto LABEL_72;
        }
      }

LABEL_73:
      ++v15;
      v19 += 16;
      if (v15 >= v13 + a10 + a11)
      {
        goto LABEL_74;
      }
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v15);
      }

      else
      {
        v20 = v15 + *(a7[22] + 4 * a4) * a8;
      }

      goto LABEL_14;
    }

LABEL_12:
    v20 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_74:
  v57 = a5[19];
  if (v57 < 1)
  {
    return result;
  }

  v58 = 0;
  v59 = 0;
  v60 = v13 + a9;
  v61 = a5[1];
  v62 = *(a6 + 48);
  v63 = v61 - v57;
  v102 = 4 * v60;
  v105 = a5 + 10;
  v103 = a5 + 12;
  v109 = a5 + 6;
  v107 = a5 + 8;
  v64 = 16 * v63 - 16 * v13;
  v99 = v61;
  v101 = v63;
  do
  {
    if (*(v62 + v58))
    {
      goto LABEL_153;
    }

    v65 = v63 - v13;
    if (v63 >= v13)
    {
      if (v63 >= v101)
      {
        v66 = *(*(a5 + 11) + 4 * (v63 - v101));
      }

      else
      {
        if (v65 < a10 || v65 >= a11 + a10)
        {
          __break(1u);
          return result;
        }

        v66 = v65 % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * (v65 / a8)) * a8;
      }
    }

    else if (v63 < 0)
    {
      v66 = 0x7FFFFFFF;
    }

    else if (*(a5 + 7))
    {
      v66 = *(*(a5 + 8) + 4 * v63);
    }

    else
    {
      v66 = v63 + *(a7[22] + 4 * a4) * a8;
    }

    v67 = *(a13 + 4 * v66);
    v68 = *(a2 + 12);
    if (v67 >= v68)
    {
      v70 = *(a2 + 4);
      v71 = v70 - *(a2 + 76);
      if (v67 >= v71)
      {
        if (v70 <= v67)
        {
LABEL_96:
          v69 = 0x7FFFFFFF;
          goto LABEL_98;
        }

        v69 = *(*(a2 + 88) + 4 * (v67 - v71));
      }

      else
      {
        result = ((v67 - v68) / a8);
        v69 = (v67 - v68) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v100) + 4 * result) * a8;
      }
    }

    else
    {
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_96;
      }

      if (*(a2 + 56))
      {
        v69 = *(*(a2 + 64) + 4 * v67);
      }

      else
      {
        v69 = v67 + *(a7[22] + 4 * v100) * a8;
      }
    }

LABEL_98:
    if (v69 == v66)
    {
      result = (v67 - v68);
      if (v67 - v68 >= 0)
      {
        v72 = a5[4];
        if (v72 < v13)
        {
          v74 = a5 + 8;
          v73 = a5 + 6;
          if (v65 >= 0)
          {
            v73 = a5 + 10;
            v74 = a5 + 12;
          }

          do
          {
            if (v72 < 0)
            {
              v76 = 0x7FFFFFFF;
            }

            else
            {
              v75 = *(a5 + 7);
              if (v75)
              {
                v76 = *(v75 + 4 * v72);
              }

              else
              {
                v76 = v72 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v77 = *(a12 + 4 * v76);
            if (v77 >= v68)
            {
              v82 = v77 - v68;
              if (v65 >= 0)
              {
                v83 = v72;
              }

              else
              {
                v83 = v63;
              }

              if (v65 >= 0)
              {
                v84 = v63 - v13;
              }

              else
              {
                v84 = v72;
              }

              v80 = (*v73 + 16 * *v74 * v83 + 16 * v84);
              v81 = (*(a3 + 96) + 16 * *(a3 + 16) * result + 16 * v82);
            }

            else
            {
              if (v65 >= 0)
              {
                v78 = v72;
              }

              else
              {
                v78 = v63;
              }

              if (v65 >= 0)
              {
                v79 = v63 - v13;
              }

              else
              {
                v79 = v72;
              }

              v80 = (*v73 + 16 * *v74 * v78 + 16 * v79);
              v81 = (*(a2 + 40) + 16 * *(a2 + 48) * v77 + 16 * result);
            }

            *v81 = vaddq_f64(*v80, *v81);
            ++v72;
          }

          while (v13 != v72);
        }

        v85 = *a5;
        if (v60 < v85)
        {
          v86 = 0;
          v87 = a5[18];
          v88 = v85 - v87;
          v89 = v13 + a9 + v87 - v85;
          v90 = v102 + 4 * v87 - 4 * v85;
          v91 = 16 * v60 - 16 * v13;
          v92 = v13 + a9;
          do
          {
            if (v89 + v86 < 0 || (*(*(a6 + 32) + (v89 + v86)) & 1) == 0)
            {
              v93 = v60 + v86;
              if (v60 + v86 >= v13)
              {
                if (v93 >= v88)
                {
                  v95 = *(*(a5 + 10) + v90 + 4 * v86);
                }

                else
                {
                  v95 = (a9 + v86) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v86) / a8)) * a8;
                }
              }

              else if (v93 < 0)
              {
                v95 = 0x7FFFFFFF;
              }

              else
              {
                v94 = *(a5 + 7);
                if (v94)
                {
                  v95 = *(v94 + v102 + 4 * v86);
                }

                else
                {
                  v95 = v13 + a9 + v86 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v96 = *(a12 + 4 * v95);
              if (v96 >= v68)
              {
                if (v65 < 0)
                {
                  v97 = (*v109 + 16 * *v107 * v63 + 16 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v91);
                }

                else
                {
                  v97 = (*v105 + 16 * *v103 * v93 + 16 * v65);
                }

                v98 = (*(a3 + 96) + 16 * *(a3 + 16) * result + 16 * (v96 - v68));
              }

              else
              {
                if (v65 < 0)
                {
                  v97 = (*v109 + 16 * *v107 * v63 + 16 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v91);
                }

                else
                {
                  v97 = (*v105 + 16 * *v103 * v93 + 16 * v65);
                }

                v98 = (*(a2 + 40) + 16 * *(a2 + 48) * v96 + 16 * result);
              }

              *v98 = vaddq_f64(*v97, *v98);
            }

            ++v92;
            ++v86;
            v91 += 16;
          }

          while (v60 + v86 < v85);
        }

        *(v62 + v58) = 1;
        ++v59;
        v61 = v99;
      }
    }

LABEL_153:
    ++v63;
    ++v58;
    v64 += 16;
  }

  while (v63 < v61);
  if (v59 > 0)
  {
    atomic_fetch_add_explicit((a6 + 24), -v59, memory_order_release);
  }

  return result;
}

uint64_t sub_23671CEF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = a5[3];
  v62 = a5[1];
  if (v12 + a10 < v62)
  {
    v13 = a5[19];
    v61 = v13 - v62;
    v64 = a5 + 10;
    v14 = v12 + a10;
    v63 = a5 + 12;
    v65 = a5 + 6;
    v15 = a5 + 8;
    v60 = v62 - v13;
    for (i = 16 * a10; ; i += 16)
    {
      if (v61 + v14 < 0 || (*(a6[6] + (v61 + v14)) & 1) == 0)
      {
        v17 = v14 - v12;
        if (v14 >= v12)
        {
          v18 = v14 >= v60 ? *(*(a5 + 11) + 4 * (v14 - v60)) : (v14 - v12) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v14 - v12) / a8)) * a8;
        }

        else if (v14 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a5 + 7) ? *(*(a5 + 8) + 4 * v14) : v14 + *(a7[22] + 4 * a4) * a8;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        v21 = (v19 - v20);
        if (v19 - v20 >= 0)
        {
          v22 = a5[4];
          if (v22 < v12)
          {
            if (v17 >= 0)
            {
              v23 = a5 + 10;
            }

            else
            {
              v23 = a5 + 6;
            }

            if (v17 >= 0)
            {
              v24 = a5 + 12;
            }

            else
            {
              v24 = a5 + 8;
            }

            do
            {
              if (v22 < 0)
              {
                v26 = 0x7FFFFFFF;
              }

              else
              {
                v25 = *(a5 + 7);
                if (v25)
                {
                  v26 = *(v25 + 4 * v22);
                }

                else
                {
                  v26 = v22 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v27 = *(a11 + 4 * v26);
              if (v27 >= v20)
              {
                v32 = v27 - v20;
                if (v17 >= 0)
                {
                  v33 = v22;
                }

                else
                {
                  v33 = v14;
                }

                if (v17 >= 0)
                {
                  v34 = v14 - v12;
                }

                else
                {
                  v34 = v22;
                }

                v30 = (*v23 + 16 * *v24 * v33 + 16 * v34);
                v31 = (*(a3 + 96) + 16 * *(a3 + 16) * v21 + 16 * v32);
              }

              else
              {
                if (v17 >= 0)
                {
                  v28 = v22;
                }

                else
                {
                  v28 = v14;
                }

                if (v17 >= 0)
                {
                  v29 = v14 - v12;
                }

                else
                {
                  v29 = v22;
                }

                v30 = (*v23 + 16 * *v24 * v28 + 16 * v29);
                v31 = (*(a2 + 40) + 16 * *(a2 + 48) * v27 + 16 * v21);
              }

              *v31 = vaddq_f64(*v30, *v31);
              ++v22;
            }

            while (v12 != v22);
          }

          v35 = *a5;
          v36 = a5[18];
          v37 = v35 - v36;
          if (v12 + a9 < v35 - v36)
          {
            v38 = a7[24] + 4 * *(a7[23] + 8 * a4);
            v39 = a6[12] - 16 * v12 + a6[2] * i;
            v40 = a9;
            v41 = v12 + a9;
            do
            {
              v42 = *(a11 + 4 * (v40 % a8 + *(v38 + 4 * (v40 / a8)) * a8));
              if (v42 >= v20)
              {
                v43 = (*(a3 + 96) + 16 * *(a3 + 16) * v21 + 16 * (v42 - v20));
              }

              else
              {
                v43 = (*(a2 + 40) + 16 * *(a2 + 48) * v42 + 16 * v21);
              }

              *v43 = vaddq_f64(*(v39 + 16 * v41++), *v43);
              ++v40;
            }

            while (v41 < v37);
          }

          if (v36 >= 1)
          {
            break;
          }
        }
      }

LABEL_78:
      if (++v14 >= v62)
      {
        return result;
      }
    }

    v44 = 0;
    v45 = a6[4];
    v46 = v35 - v12 - v36;
    v47 = 4 * v35 - 4 * v36;
    v48 = 16 * (v35 - v12 - v36);
    v49 = v37;
    while ((*(v45 + v44) & 1) != 0)
    {
LABEL_77:
      ++v49;
      ++v44;
      v48 += 16;
      if (v37 + v44 >= v35)
      {
        goto LABEL_78;
      }
    }

    v50 = v37 + v44;
    if (v50 >= v12)
    {
      if (v50 >= v37)
      {
        v52 = *(a5 + 10);
        goto LABEL_59;
      }

      result = ((v46 + v44) / a8);
      v54 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * result);
      v55 = (v46 + v44) % a8;
    }

    else
    {
      if (v50 < 0)
      {
        v56 = 0x7FFFFFFF;
        goto LABEL_63;
      }

      v51 = *(a5 + 7);
      if (v51)
      {
        v52 = v51 + v47;
LABEL_59:
        v56 = *(v52 + 4 * v44);
LABEL_63:
        v57 = *(a11 + 4 * v56);
        if (v57 >= v20)
        {
          if (v17 < 0)
          {
            v58 = (*v65 + 16 * *v15 * v14 + 16 * v49);
          }

          else if (v50 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48);
          }

          else
          {
            v58 = (*v64 + 16 * *v63 * v50 + 16 * v17);
          }

          v59 = (*(a3 + 96) + 16 * *(a3 + 16) * v21 + 16 * (v57 - v20));
        }

        else
        {
          if (v17 < 0)
          {
            v58 = (*v65 + 16 * *v15 * v14 + 16 * v49);
          }

          else if (v50 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48);
          }

          else
          {
            v58 = (*v64 + 16 * *v63 * v50 + 16 * v17);
          }

          v59 = (*(a2 + 40) + 16 * *(a2 + 48) * v57 + 16 * v21);
        }

        *v59 = vaddq_f64(*v58, *v59);
        goto LABEL_77;
      }

      v54 = *(a7[22] + 4 * a4);
      v55 = v37 + v44;
    }

    v56 = v55 + v54 * a8;
    goto LABEL_63;
  }

  return result;
}

uint64_t _SparseNumericFactorLU_Complex_Double@<X0>(__int128 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v8 = a1[2];
  *(a6 + 56) = a1[3];
  v9 = *(a1 + 17);
  v10 = *(a1 + 3);
  *a6 = -3;
  *(a6 + 4) = *(a1 + 6) & 1;
  *(a6 + 40) = v8;
  v11 = *a1;
  *(a6 + 24) = a1[1];
  *(a6 + 8) = v11;
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  atomic_fetch_add((v10 + 48), 1u);
  if (*(a3 + 4) == 4)
  {
    v12 = *(v10 + 40);
    if (!v12)
    {
      v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v17)
      {
        sub_23672AC1C(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      _SparseTrap();
    }

    memset(&v26[14] + 4, 0, 28);
    memset(&v26[9] + 4, 0, 80);
    strcpy(v26, "nfoptions->scalingMethod=SparseScalingHungarianScalingAndOrdering is only supported if a combined symbolic+numeric call to SparseFactor() is made.\n");
    result = v12(v26);
    *a6 = -4;
    v25 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *(a6 + 80) = sub_23671D5A0(v9, *(a1 + 16), v10, 2 * *(a1 + 7), a3, a4);
    _SparseRefactorLU_Complex_Double(a2, a6, a3, a5);
    v16 = *MEMORY[0x277D85DE8];

    return sub_23671E4F8(a6);
  }

  return result;
}

uint64_t sub_23671D5A0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v48 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v6 = (*(a3 + 24))(a4);
    if (!v6)
    {
      if (!*(a3 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672AC58();
        }

        _SparseTrap();
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *__str = 0u;
      v33 = 0u;
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorLU.", a4);
      (*(a3 + 40))(__str);
      v6 = 0;
      goto LABEL_28;
    }
  }

  v12 = v6 + a4;
  v13 = 8 * *(a3 + 56);
  v14 = *(a5 + 4);
  if ((v14 - 2) >= 3)
  {
    if (v14 == 1)
    {
      if (!*(a5 + 8))
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = (v6 + 151) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v15)
  {
    goto LABEL_34;
  }

  v16 = v15 + 16 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60));
  if (v16 > v12)
  {
    goto LABEL_34;
  }

  if (a2 < 2)
  {
    v17 = (v15 + 16 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)));
    v16 = 0;
  }

  else
  {
    v17 = ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 < v17)
    {
      goto LABEL_34;
    }
  }

  if (a1 != 83)
  {
    v21 = 0;
    v24 = 0;
    v19 = 0;
    v22 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_23:
    v25 = (v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 >= v25)
    {
      v26 = (v25 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 >= v26)
      {
        v13 = v17;
        v17 = v26;
        goto LABEL_26;
      }
    }

LABEL_34:
    __break(1u);
  }

  v18 = *(a3 + 168);
  v19 = (v17 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v19)
  {
    goto LABEL_34;
  }

  v20 = 4 * v18;
  v21 = (v19 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v21)
  {
    goto LABEL_34;
  }

  v22 = (v21 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v22)
  {
    goto LABEL_34;
  }

  v23 = (v22 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v23)
  {
    goto LABEL_34;
  }

  v24 = v17;
  v17 = v23;
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_21:
  v25 = 0;
LABEL_26:
  v27 = (v17 + 8 * *(a3 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v27)
  {
    goto LABEL_34;
  }

  v28 = *(a5 + 16);
  *v6 = *a5;
  *(v6 + 16) = v28;
  *(v6 + 32) = 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = v16;
  *(v6 + 56) = 0;
  *(v6 + 64) = v24;
  *(v6 + 72) = v19;
  *(v6 + 80) = v21;
  *(v6 + 88) = v22;
  *(v6 + 96) = v13;
  *(v6 + 104) = v25;
  *(v6 + 112) = v17;
  v29 = (v27 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(v6 + 120) = v29;
  *(v6 + 128) = v12 - v29;
  *(v6 + 136) = 0;
  bzero(v17, 8 * *(a3 + 168));
LABEL_28:
  v30 = *MEMORY[0x277D85DE8];
  return v6;
}

void _SparseRefactorLU_Complex_Double(unsigned int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v6 = a1;
  v220 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 32);
  v8 = *(a2 + 80);
  v187 = *(a2 + 25);
  v9 = *(a1 + 28);
  v10 = 2 * *(a2 + 48);
  v11 = *(a3 + 4);
  v190 = v8;
  v191 = v7;
  if (v11 <= 1)
  {
    if (*(a3 + 4))
    {
      v16 = *(a3 + 8);
      if (v16)
      {
        v17 = *a1;
        if (v17 >= 1)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            if (v9)
            {
              v20 = (v16 + 8 * *(*(v191 + 152) + 4 * i) * v9);
              v21 = (*(v8 + 96) + v18);
              v22 = v9;
              do
              {
                v23 = *v20++;
                *v21++ = v23;
                --v22;
              }

              while (v22);
            }

            v18 += 8 * v9;
          }
        }

        v24 = a1[1];
        if (v24 >= 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = v16 + 8 * v17 * v9;
          do
          {
            if (v9)
            {
              v28 = (v27 + 8 * *(*(v191 + 160) + 4 * v26) * v9);
              v29 = (*(v8 + 104) + v25);
              v30 = v9;
              do
              {
                v31 = *v28++;
                *v29++ = v31;
                --v30;
              }

              while (v30);
            }

            ++v26;
            v25 += 8 * v9;
          }

          while (v26 != v24);
        }
      }
    }
  }

  else
  {
    if (v11 == 2)
    {
      v32 = (a1[1] + *a1) * v9;
      v33 = *(a1 + 1);
      v197 = *a1;
      v198 = v33;
      v199 = *(a1 + 4);
      sub_23671BAE8(&v197, *(v7 + 136), *(v7 + 144), *(v8 + 96), *(v8 + 104), a4);
LABEL_25:
      v6 = a1;
      v8 = v190;
      v4 = a4;
      goto LABEL_26;
    }

    if (v11 == 3)
    {
      v12 = *a1;
      v13 = sub_23670BE58(v12, v6[1], *(*(v6 + 1) + 8 * v6[1]), v9) + 4 * v12 * v9 + 8;
      if (v10 >= v13)
      {
        v15 = 0;
        v14 = a4;
        v13 = v10;
      }

      else
      {
        v14 = (*(v191 + 24))(v13);
        v15 = v14;
      }

      v34 = (4 * (*a1 * v9) + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = *(a1 + 1);
      v197 = *a1;
      v198 = v35;
      v199 = *(a1 + 4);
      sub_2367130B4(&v197, v14, *(v190 + 96), *(v190 + 104), &v14[v34], v13 - v34);
      v6 = a1;
      v8 = v190;
      v4 = a4;
      if (v15)
      {
        (*(v191 + 32))(v15);
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v36 = *(a3 + 8);
  if (v36 && *(a3 + 4) != 1)
  {
    v37 = *v6;
    v38 = &v36[8 * v37 * v9];
    v39 = *(v8 + 96);
    if (v39)
    {
      if (v37 >= 1)
      {
        for (j = 0; j != v37; ++j)
        {
          if (v9)
          {
            v41 = &v36[8 * *(*(v191 + 152) + 4 * j) * v9];
            v42 = v9;
            v43 = v39;
            do
            {
              v44 = *v43++;
              *v41 = v44;
              v41 += 8;
              --v42;
            }

            while (v42);
          }

          v39 += v9;
        }
      }

      v45 = v6[1];
      if (v45 >= 1)
      {
        v46 = 0;
        for (k = 0; k != v45; ++k)
        {
          if (v9)
          {
            v48 = &v38[8 * *(*(v191 + 160) + 4 * k) * v9];
            v49 = (*(v8 + 104) + v46);
            v50 = v9;
            do
            {
              v51 = *v49++;
              *v48 = v51;
              v48 += 8;
              --v50;
            }

            while (v50);
          }

          v46 += 8 * v9;
        }
      }
    }

    else
    {
      if (v37 * v9 >= 1)
      {
        memset_pattern16(v36, &unk_23681FAF0, 8 * (v37 * v9));
        v4 = a4;
        v6 = a1;
        v8 = v190;
      }

      if ((v6[1] * v9) >= 1)
      {
        memset_pattern16(v38, &unk_23681FAF0, 8 * v6[1] * v9);
        v4 = a4;
        v6 = a1;
        v8 = v190;
      }
    }
  }

  v52 = v191;
  if (*(*(v191 + 120) + 8 * *(v191 + 60)) >= 1)
  {
    v53 = *(v191 + 64);
    v54 = &v4[8 * v53 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (&v4[v10] < v54 || &v4[v10] < ((v54 + 4 * v53 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    bzero((&v4[8 * v53 + 7] & 0xFFFFFFFFFFFFFFF8), 4 * v53);
    v55 = a1;
    v8 = v190;
    v56 = *(a1 + 28);
    LODWORD(v197) = v56;
    v57 = (v56 * v56);
    v58 = v191;
    v59 = a4;
    if (*(v191 + 60) >= 1)
    {
      v60 = 0;
      v61 = 16 * v57;
      v62 = 16 * v56;
      do
      {
        v63 = v60;
        v64 = *(v58 + 120);
        v65 = *(v64 + 8 * v60++);
        v66 = *(v64 + 8 * v60);
        if (v65 != v66)
        {
          if (v65 < v66)
          {
            v67 = *(v191 + 128);
            v68 = v57 * v65;
            do
            {
              v69 = *(v67 + 4 * v65);
              *(v54 + 4 * v69) = v60;
              *&v59[8 * v69] = v68;
              ++v65;
              v68 += v57;
            }

            while (v65 < *(v64 + 8 * v60));
          }

          v70 = *(*(v191 + 160) + 4 * v63);
          v71 = *(v55 + 1);
          v72 = (v71 + 8 * v70);
          v73 = *v72;
          if (*v72 < v72[1])
          {
            v74 = v61 * v73;
            do
            {
              v75 = *(*(v55 + 2) + 4 * v73);
              if ((v75 & 0x80000000) == 0 && v75 < *v55 && v63 < *(v54 + 4 * v75))
              {
                v76 = *(v8 + 96);
                v77 = (*(v8 + 40) + 16 * *&v59[8 * v75]);
                v78 = *(v55 + 4);
                if (v76)
                {
                  if (v56)
                  {
                    v79 = 0;
                    v80 = (v76 + 8 * *(*(v191 + 136) + 4 * v75));
                    v81 = *(v8 + 104) + 8 * v63;
                    v82 = (v78 + v74);
                    do
                    {
                      v83 = v80;
                      v84 = v82;
                      v85 = v77;
                      v86 = v56;
                      do
                      {
                        v87 = *v83++;
                        v88 = v87;
                        v89 = *v84++;
                        *v85++ = vmulq_n_f64(vmulq_n_f64(v89, v88), *(v81 + 8 * v79));
                        --v86;
                      }

                      while (v86);
                      ++v79;
                      v77 = (v77 + v62);
                      v82 = (v82 + v62);
                    }

                    while (v79 != v56);
                  }
                }

                else
                {
                  memcpy(v77, (v78 + 16 * v73 * v57), 16 * v57);
                  v59 = a4;
                  v55 = a1;
                  v8 = v190;
                  v71 = *(a1 + 1);
                }
              }

              ++v73;
              v74 += v61;
            }

            while (v73 < *(v71 + 8 * v70 + 8));
          }
        }

        v58 = v191;
      }

      while (v60 < *(v191 + 60));
    }

    LODWORD(v90) = *(v58 + 96);
    if (v56 == 1)
    {
      v52 = v191;
      if (v90 >= 1)
      {
        v91 = 0;
        v92 = *(v8 + 40);
        do
        {
          v93 = *(*(v191 + 120) + 8 * v91);
          v94 = sub_23681E17C(1.0, 0.0, *(v92 + 16 * v93), *(v92 + 16 * v93 + 8));
          v8 = v190;
          v92 = *(v190 + 40);
          v95 = v92 + 16 * v93;
          *v95 = v94;
          *(v95 + 8) = v96;
          ++v91;
        }

        while (v91 < *(v191 + 96));
      }

      v97 = *(v191 + 100);
      if (v97 >= 1)
      {
        v98 = *(v191 + 60) - v97;
        v99 = *(v8 + 40);
        do
        {
          v100 = *(*(v191 + 120) + 8 * v98);
          v101 = sub_23681E17C(1.0, 0.0, *(v99 + 16 * v100), *(v99 + 16 * v100 + 8));
          v8 = v190;
          v99 = *(v190 + 40);
          v102 = v99 + 16 * v100;
          *v102 = v101;
          *(v102 + 8) = v103;
          ++v98;
        }

        while (v98 < *(v191 + 60));
      }
    }

    else if (v90 < 1)
    {
LABEL_82:
      v52 = v191;
      v108 = *(v191 + 100);
      if (v108 >= 1)
      {
        v109 = *(v191 + 60) - v108;
        do
        {
          v110 = *(*(v52 + 120) + 8 * v109) * v57;
          v111 = *(v8 + 40);
          v112 = *(v8 + 48) + 4 * v90 * v56;
          LODWORD(v213[0]) = 0;
          zgetrf_NEWLAPACK();
          v8 = v190;
          v52 = v191;
          if (LODWORD(v213[0]))
          {
            break;
          }

          LODWORD(v56) = v197;
          ++v109;
          LODWORD(v90) = v90 + 1;
        }

        while (v109 < *(v191 + 60));
      }
    }

    else
    {
      v104 = 0;
      v52 = v191;
      while (1)
      {
        v105 = *(*(v52 + 120) + 8 * v104) * v57;
        v106 = *(v8 + 40);
        v107 = *(v8 + 48) + 4 * v56 * v104;
        LODWORD(v213[0]) = 0;
        zgetrf_NEWLAPACK();
        v8 = v190;
        v52 = v191;
        if (LODWORD(v213[0]))
        {
          break;
        }

        LODWORD(v56) = v197;
        ++v104;
        v90 = *(v191 + 96);
        if (v104 >= v90)
        {
          goto LABEL_82;
        }
      }
    }

    v4 = a4;
    v6 = a1;
  }

  v113 = *(v6 + 28);
  v114 = *(v52 + 168);
  v115 = &v4[8 * v114];
  v116 = *(v52 + 52);
  if (v116 >= 2)
  {
    _X0 = 0;
    v118 = *(v52 + 56);
    v119 = 6 * v118;
    v120 = 4 * v118 + 8;
    if (v187 != 82)
    {
      v120 = 0;
    }

    v121 = v120 + 4 * v119 + 48;
    LODWORD(v213[0]) = *(v52 + 52);
    atomic_store(0, v213 + 1);
    atomic_store(0, (v213 | 0xC));
    atomic_store(0, v214);
    v122 = v215;
    do
    {
      _X5 = v216;
      __asm { CASPAL          X4, X5, X0, X1, [X25] }

      _ZF = _X4 == v122;
      v122 = _X4;
    }

    while (!_ZF);
    v217 = v120 + 4 * v119 + 48;
    v218 = &v4[8 * v114];
    v129 = &v115[40 * *(v191 + 336) + ((v121 * v116 + 7) & 0xFFFFFFFFFFFFFFF8)];
    LOBYTE(v197) = v187;
    *(&v197 + 1) = v6;
    *&v198 = v191;
    DWORD2(v198) = v113;
    v199 = v8;
    v200 = v4;
    v201 = *(v8 + 120);
    v202 = &v115[(v121 * v116 + 7) & 0xFFFFFFFFFFFFFFF8];
    v203 = sub_2367921D4(256, v129 + 16 * v116);
    v204 = v130;
    v205 = 0;
    v206 = 0;
    v207 = 0;
    v208 = v129;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v219 = &v197;
    if (*(v191 + 52))
    {
      v131 = 0;
      v132 = 0;
      do
      {
        v133 = *(v191 + 56);
        madvise(v115, 8 * v133, 3);
        madvise(&v115[8 * v133], 0x64uLL, 3);
        madvise(&v115[12 * v133], 0x64uLL, 3);
        madvise(&v115[16 * v133], 0x64uLL, 3);
        madvise(&v115[20 * v133], 0x64uLL, 3);
        *(v208 + v131 + 8) = *(v191 + 392);
        v134 = (*(v191 + 24))();
        v135 = (v208 + v131);
        *v135 = v134;
        madvise(v134, v135[1], 3);
        ++v132;
        v131 += 16;
        v115 += v121;
      }

      while (v132 < *(v191 + 52));
    }

    if (*(v190 + 128) >= 0x8000000uLL)
    {
      v136 = 0x8000000;
    }

    else
    {
      v136 = *(v190 + 128);
    }

    madvise(*(v190 + 120), v136, 3);
    if (*(v191 + 336) >= 1)
    {
      _X20 = 0;
      v138 = 0;
      v139 = 0;
      do
      {
        v140 = v139;
        if (*(*(v191 + 176) + 4 * *(*(v191 + 344) + 4 * v139++)) >= *(*(v191 + 112) + 4 * (v138 + 1)))
        {
          ++v138;
        }

        v142 = *(*(v191 + 368) + 8 * v139) - *(*(v191 + 368) + 8 * v140);
        v143 = &v202[40 * v140];
        atomic_store(v142, v143);
        *(v143 + 2) = v140;
        *(v143 + 3) = v138;
        *(v143 + 2) = sub_236721B8C;
        if (!v142)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X24] }

          *(v143 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v143 + 4) = 0;
          v147 = _X0 & 1;
          _X2 = v147 | v143;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X24] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X20, X21, [X10] }

            *(v143 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v143 + 4) = 0;
            v147 = _X0 & 1;
            _X2 = v147 | v143;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v147)
          {
            __ulock_wake();
          }
        }
      }

      while (v139 < *(v191 + 336));
    }

    _X0 = 0;
    _X1 = 0;
    v193 = xmmword_28499C248;
    v194 = off_28499C258;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v195 = _X0 & 0xFFFFFFFFFFFFFFFELL;
    v196 = 0;
    _X2 = &v193 | _X0 & 1;
    _X5 = 0;
    __asm { CASPL           X4, X5, X2, X3, [X8] }

    if (_X4 == _X0)
    {
      if ((_X0 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      _X2 = 0;
      do
      {
        _X5 = 0;
        __asm { CASP            X4, X5, X2, X3, [X8] }

        v195 = _X4 & 0xFFFFFFFFFFFFFFFELL;
        v196 = 0;
        _X0 = &v193 | _X4 & 1;
        _X7 = 0;
        __asm { CASPL           X6, X7, X0, X1, [X8] }
      }

      while (_X6 != _X4);
      if ((_X4 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    __ulock_wake();
LABEL_124:
    v174 = sub_2366FCD2C(v213, 1);
    if (v174)
    {
      if (v205)
      {
        v206 = v205;
        operator delete(v205);
      }

      goto LABEL_135;
    }

    if (*(v191 + 52))
    {
      v183 = 0;
      v184 = 0;
      do
      {
        (*(v191 + 32))(*(v208 + v183));
        ++v184;
        v183 += 16;
      }

      while (v184 < *(v191 + 52));
    }

    if (v205)
    {
      v206 = v205;
      operator delete(v205);
    }

LABEL_134:
    v174 = 0;
    goto LABEL_135;
  }

  v160 = *(a2 + 48);
  v161 = *(v8 + 120);
  v162 = *(v8 + 128);
  v213[0] = v161;
  v192 = 0;
  LODWORD(v193) = 0;
  v163 = (*(v52 + 24))(*(v52 + 392));
  v165 = *(v191 + 392);
  *&v197 = v163;
  *(&v197 + 1) = v165;
  if (*(v191 + 168) < 1)
  {
    v175 = 0;
    v176 = 0;
    v173 = v190;
LABEL_128:
    atomic_store(v176, (v173 + 136));
    atomic_store(v175, (v173 + 140));
    (*(v191 + 32))(v163);
    goto LABEL_134;
  }

  v166 = 0;
  v167 = 0;
  v168 = 2 * v160;
  v169 = v114;
  v170 = v161 + v162;
  v171 = v168 - 8 * v114;
  v173 = v190;
  v172 = v191;
  while (1)
  {
    if (*(*(v172 + 176) + 4 * v166) >= *(*(v172 + 112) + 4 * (v167 + 1)))
    {
      ++v167;
    }

    v174 = sub_23672201C(v166, v167, a1, v187, v172, v113, v173, v164, a4, v169, v213, v170, &v193, &v192, v115, v171, &v197, 0, 0);
    if (v174)
    {
      break;
    }

    ++v166;
    v173 = v190;
    v172 = v191;
    if (v166 >= *(v191 + 168))
    {
      v175 = v192;
      v176 = v193;
      v163 = v197;
      goto LABEL_128;
    }
  }

LABEL_135:
  *a2 = v174;
  v185 = *MEMORY[0x277D85DE8];
}

void sub_23671E4C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23671E4F8(uint64_t result)
{
  if (*result != -3)
  {
    v1 = *(result + 32);
    v2 = *(result + 80);
    v3 = v1[42];
    v4 = 40 * v1[84];
    v6 = v1[13];
    v5 = v1[14];
    *(result + 88) = v4 + 12 * v3 + (*MEMORY[0x277D85FA0] + 4 * v5) * v6 + 56;
    LODWORD(v2) = atomic_load((v2 + 140));
    *(result + 96) = 32 * (v5 + v6 * v2);
  }

  return result;
}

uint64_t _SparseFactorLU_Complex_Double@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v551 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*(a2 + 1) + 8 * v7);
  if (a1 == 80)
  {
    v9 = 83;
  }

  else
  {
    v9 = a1;
  }

  if (v6 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *a5 = -3;
  v11 = a2[6] & 1;
  *(a5 + 4) = v11;
  *(a5 + 8) = -3;
  *(a5 + 12) = v6;
  *(a5 + 16) = v7;
  *(a5 + 20) = v11;
  v529 = a2;
  *(a5 + 24) = *(a2 + 28);
  v528 = v9;
  *(a5 + 25) = v9;
  *(a5 + 80) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 57) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v524 = (a5 + 80);
  v543 = 0;
  if (sub_236720B94(v10, v8, &v543))
  {
    v12 = *(a3 + 40);
    if (!v12)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        sub_23672B05C(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v12(__str);
LABEL_119:
    v166 = -4;
LABEL_120:
    *a5 = v166;
LABEL_121:
    v122 = *MEMORY[0x277D85DE8];
    return result;
  }

  v14 = v543;
  v15 = (*(a3 + 24))(v543);
  if (!v15)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v14);
    result = (*(a3 + 40))(__str);
    goto LABEL_121;
  }

  v16 = v15;
  __src = v15;
  if (*(a4 + 4) == 4)
  {
    if (*(v529 + 28) != 1)
    {
      v55 = *(a3 + 40);
      if (!v55)
      {
        v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v65)
        {
          sub_23672ACD0(v65, v66, v67, v68, v69, v70, v71, v72);
        }

        _SparseTrap();
      }

      memset(&__str[98], 0, 158);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is only supported for blockSize=1\n");
      v55(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    if (*(a3 + 16))
    {
      v17 = *(a3 + 40);
      if (!v17)
      {
        v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v82)
        {
          sub_23672AD0C(v82, v83, v84, v85, v86, v87, v88, v89);
        }

        _SparseTrap();
      }

      memset(&__str[123], 0, 133);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.ignoreRowsAndColumns!=NULL\n");
      v17(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    if (*(a3 + 4) == 1)
    {
      v64 = *(a3 + 40);
      if (!v64)
      {
        v114 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v114)
        {
          sub_23672B020(v114, v115, v116, v117, v118, v119, v120, v121);
        }

        _SparseTrap();
      }

      memset(&__str[125], 0, 131);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.orderMethod==SparseOrderUser\n");
      v64(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    v90 = v529;
    v91 = (*(a3 + 24))(4 * *v529);
    v92 = (*(a3 + 24))(8 * (v90[1] + *v90));
    v93 = *v529;
    v94 = &v92[v93];
    v95 = sub_23670BE58(v93, v90[1], *(*(v90 + 1) + 8 * v90[1]), 1);
    v96 = v95;
    if (v95 >= v14)
    {
      v16 = (*(a3 + 24))(v95);
    }

    v97 = *(v529 + 1);
    *__str = *v529;
    *&__str[16] = v97;
    *&__str[32] = *(v529 + 4);
    v539 = v91;
    v521 = v94;
    v522 = v92;
    v98 = sub_2367130B4(__str, v91, v92, v94, v16, v96);
    if (v16 != __src)
    {
      (*(a3 + 32))(v16);
    }

    if (v98 != v529[1])
    {
      v113 = *(a3 + 40);
      if (!v113)
      {
        v157 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v157)
        {
          sub_23672AD48(v157, v158, v159, v160, v161, v162, v163, v164);
        }

        _SparseTrap();
      }

      memset(&__str[39], 0, 217);
      strcpy(__str, "Matrix is structurally rank deficient\n");
      v113(__str);
      v165 = *(a3 + 32);
      v534 = (a3 + 32);
      v165(v91);
      (*v534)(v92);
      result = (*v534)(__src);
      v166 = -2;
      goto LABEL_120;
    }
  }

  else
  {
    v521 = 0;
    v522 = 0;
    v539 = 0;
  }

  v26 = *(v529 + 1);
  *__str = *v529;
  *&__str[16] = v26;
  v27 = _SparseFromStructureComplex(__str, v542);
  *a5 = -3;
  if (*v542 >= *&v542[4])
  {
    v28 = *&v542[4];
  }

  else
  {
    v28 = *v542;
  }

  if (*v542 <= *&v542[4])
  {
    v29 = *&v542[4];
  }

  else
  {
    v29 = *v542;
  }

  v30 = v542[28];
  v31 = v28 + 1;
  v32 = 4 * v28;
  v33 = v32 + 8;
  if (v528 != 83)
  {
    v33 = 0;
  }

  v34 = v542[28] * (*&v542[4] + *v542) + 8;
  if (!*(a3 + 16))
  {
    v34 = 0;
  }

  v35 = 8 * (*&v542[4] + *v542) + 24 * v31 + v33 + v34 + 464;
  result = (*(a3 + 24))(v35, v27);
  v36 = result;
  if (!result)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v35);
    (*(a3 + 40))(__str);
    goto LABEL_268;
  }

  v37 = result;
  v38 = result + v35;
  v39 = (result + 407) & 0xFFFFFFFFFFFFFFF8;
  v40 = a3;
  if (v38 >= v39)
  {
    v41 = *(a3 + 16);
    v42 = *(a3 + 32);
    *__str = *a3;
    *&__str[16] = v41;
    *&__str[32] = v42;
    result = 1;
    if ((*(a3 + 3) & 0x40) == 0)
    {
      result = sub_2366FCCD0(0x10u);
      v40 = a3;
      v37 = v36;
    }

    *v37 = *__str;
    *(v37 + 16) = *&__str[16];
    *(v37 + 32) = *&__str[32];
    *(v37 + 48) = 1;
    *(v37 + 52) = result;
    *(v37 + 56) = v28 * v30;
    *(v37 + 60) = v28;
    *(v37 + 64) = v29;
    *(v37 + 84) = 0u;
    *(v37 + 100) = 0u;
    *(v37 + 116) = 0u;
    *(v37 + 132) = 0u;
    *(v37 + 148) = 0u;
    *(v37 + 164) = 0u;
    *(v37 + 180) = 0u;
    *(v37 + 196) = 0u;
    *(v37 + 212) = 0u;
    *(v37 + 228) = 0u;
    *(v37 + 244) = 0u;
    *(v37 + 384) = 0u;
    *(v37 + 68) = 0u;
    *(v37 + 260) = 0u;
    *(v37 + 276) = 0u;
    *(v37 + 292) = 0u;
    *(v37 + 308) = 0u;
    *(v37 + 324) = 0u;
    *(v37 + 340) = 0u;
    *(v37 + 356) = 0u;
    *(v37 + 372) = 0u;
    v43 = *v542;
    v44 = (v39 + 4 * *v542 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v38 >= v44)
    {
      *(v37 + 136) = v39;
      v45 = *&v542[4];
      v46 = (v44 + 4 * *&v542[4] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v38 >= v46)
      {
        *(v37 + 144) = v44;
        v47 = (v46 + 4 * v43 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v38 >= v47)
        {
          *(v37 + 152) = v46;
          v48 = (v47 + 4 * v45 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v38 >= v48)
          {
            *(v37 + 160) = v47;
            v49 = v48 + 8 * v31;
            if (v49 <= v38)
            {
              v50 = 8 * v31;
              *(v37 + 120) = v48;
              v51 = v49 + v50;
              if (v49 + v50 <= v38)
              {
                *(v37 + 184) = v49;
                v52 = (v51 + v50) & 0xFFFFFFFFFFFFFFF8;
                if (v38 >= v52)
                {
                  *(v37 + 200) = v51;
                  if (v528 == 83)
                  {
                    if (v38 < ((v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_553;
                    }

                    *(v37 + 304) = v52;
                    v52 = (v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  if (!*(v40 + 16))
                  {
                    goto LABEL_49;
                  }

                  v53 = v542[28];
                  if (v38 >= ((v52 + (v45 + v43) * v542[28] + 7) & 0xFFFFFFFFFFFFFFF8))
                  {
                    *(v37 + 72) = v52;
                    *(v37 + 80) = v52 + v43 * v53;
LABEL_49:
                    v546 = 0;
                    if (sub_236720B94(v28, *(*&v542[8] + 8 * v28), &v546))
                    {
                      v54 = *(a3 + 40);
                      if (!v54)
                      {
                        v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v73)
                        {
                          sub_23672AF6C(v73, v74, v75, v76, v77, v78, v79, v80);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[56], 0, 200);
                      strcpy(__str, "Symbolic workspace requirement calculation overflowed.\n");
                      v54(__str);
                      (*(a3 + 32))(v36);
                      goto LABEL_112;
                    }

                    v56 = v546;
                    v57 = *(a3 + 16);
                    if (v57)
                    {
                      bzero(*(v36 + 72), (*&v542[4] + *v542) * v542[28]);
                      v58 = *(a3 + 16);
                      v59 = *v58;
                      if ((*v58 & 0x80000000) != 0)
                      {
                        LODWORD(v57) = 0;
                        v60 = 0;
                      }

                      else
                      {
                        v60 = 0;
                        LODWORD(v57) = 0;
                        v61 = *v542 * v542[28];
                        v62 = v58 + 1;
                        do
                        {
                          if (v59 >= v61)
                          {
                            *(*(v36 + 80) + (v59 - v61)) = 1;
                            LODWORD(v57) = v57 + 1;
                          }

                          else
                          {
                            *(*(v36 + 72) + v59) = 1;
                            ++v60;
                          }

                          v63 = *v62++;
                          v59 = v63;
                        }

                        while ((v63 & 0x80000000) == 0);
                      }

                      if (v542[24])
                      {
                        *(v36 + 72) = vextq_s8(*(v36 + 72), *(v36 + 72), 8uLL);
                        v81 = v60;
                      }

                      else
                      {
                        v81 = v57;
                        LODWORD(v57) = v60;
                      }
                    }

                    else
                    {
                      v81 = 0;
                    }

                    v99 = v542[28];
                    v100 = *v542;
                    v101 = *&v542[4];
                    v102 = *v542 * v542[28] - v57;
                    if (v102 != *&v542[4] * v542[28] - v81)
                    {
                      if (!*(a3 + 40))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          sub_23672AD84();
                        }

                        _SparseTrap();
                      }

                      memset(__str, 0, 256);
                      snprintf(__str, 0x100uLL, "Sparse LU factorization only supports square matrices, but supplied matrix without any ignored rows and columns has shape %dx%d.\n", v102, *&v542[4] * v542[28] - v81);
                      (*(a3 + 40))(__str);
                      (*(a3 + 32))(v36);
LABEL_112:
                      v111 = 0;
                      v112 = -4;
LABEL_113:
                      *a5 = v112;
                      goto LABEL_269;
                    }

                    if (*(a3 + 4) == 1)
                    {
                      v103 = *(a3 + 8);
                      if (v103)
                      {
                        if (*&v542[4] >= 1)
                        {
                          v104 = 0;
                          v105 = *(v36 + 136);
                          do
                          {
                            *(v105 + 4 * v104) = *(v103 + 4 * v104);
                            ++v104;
                          }

                          while (v104 < *&v542[4]);
                          v100 = *v542;
                        }

                        if (v100 < 1)
                        {
                          goto LABEL_133;
                        }

                        v106 = 0;
                        v107 = *(v36 + 144);
                        do
                        {
                          *(v107 + 4 * v106) = *(v103 + 4 * (v106 + *&v542[4]));
                          ++v106;
                        }

                        while (v106 < *v542);
                        v100 = *v542;
                      }

                      else
                      {
                        if (*v542 >= 1)
                        {
                          v123 = 0;
                          v124 = *(v36 + 136);
                          do
                          {
                            *(v124 + 4 * v123) = v123;
                            ++v123;
                          }

                          while (v123 < *v542);
                          v101 = *&v542[4];
                          v100 = *v542;
                        }

                        if (v101 >= 1)
                        {
                          v125 = 0;
                          v126 = *(v36 + 144);
                          do
                          {
                            *(v126 + 4 * v125) = v125;
                            ++v125;
                          }

                          while (v125 < *&v542[4]);
                          v100 = *v542;
                        }
                      }

                      if (v100 >= 1)
                      {
                        v127 = 0;
                        v128 = *(v36 + 152);
                        v129 = *(v36 + 136);
                        do
                        {
                          *(v128 + 4 * *(v129 + 4 * v127)) = v127;
                          ++v127;
                        }

                        while (v127 < *v542);
                      }

LABEL_133:
                      v130 = *&v542[4];
                      if (*&v542[4] >= 1)
                      {
                        v131 = 0;
                        v132 = *(v36 + 160);
                        v133 = *(v36 + 144);
                        do
                        {
                          *(v132 + 4 * *(v133 + 4 * v131)) = v131;
                          ++v131;
                          v130 = *&v542[4];
                        }

                        while (v131 < *&v542[4]);
                      }

                      if (v57 > 0)
                      {
                        v134 = sub_236721ACC(*v542, v99, *(v36 + 136), *(v36 + 152), *(v36 + 72), __src);
                        *(v36 + 88) = v134;
                        v28 = (*(v36 + 60) - v134);
                        *(v36 + 60) = v28;
                        v130 = *&v542[4];
                      }

                      if (v81 <= 0)
                      {
                        v135 = *(v36 + 92);
                      }

                      else
                      {
                        v135 = sub_236721ACC(v130, v542[28], *(v36 + 144), *(v36 + 160), *(v36 + 80), __src);
                        *(v36 + 92) = v135;
                        v130 = *&v542[4];
                      }

                      if (*v542 - *(v36 + 88) == v130 - v135)
                      {
                        v136 = sub_236798D30(v28, v542, *(v36 + 136), *(v36 + 160), (v36 + 96), (v36 + 100), (v36 + 104), __src);
                        if (v136 >= 1)
                        {
                          if (!*(a3 + 40))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                            {
                              sub_23672AEB0();
                            }

                            _SparseTrap();
                          }

                          memset(__str, 0, 256);
                          snprintf(__str, 0x100uLL, "User-supplied ordering does not place an entry on diagonal %d.", v136 - 1);
                          (*(a3 + 40))(__str);
                          (*(a3 + 32))(v36);
                          goto LABEL_112;
                        }

                        v175 = (*(a3 + 24))(4 * *(v36 + 104) + 4);
                        v176 = v36;
                        *(v36 + 112) = v175;
                        v177 = __src;
                        memcpy(v175, __src, 4 * *(v36 + 104) + 4);
                        v178 = v28;
                        v179 = v56;
                        goto LABEL_195;
                      }

                      v137 = *(a3 + 40);
                      if (!v137)
                      {
                        v167 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v167)
                        {
                          sub_23672AE38(v167, v168, v169, v170, v171, v172, v173, v174);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[74], 0, 182);
                      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
                      v137(__str);
                      *a5 = -4;
                      (*(a3 + 32))(v36);
LABEL_268:
                      v111 = 0;
LABEL_269:
                      v295 = a3;
LABEL_270:
                      v296 = v539;
LABEL_271:
                      v527 = v111;
                      if (v296)
                      {
                        (*(v295 + 32))();
                        v295 = a3;
                        v111 = v527;
                      }

                      if (!v111)
                      {
                        result = (*(v295 + 32))(__src);
                        goto LABEL_121;
                      }

                      v297 = *(v529 + 28);
                      v298 = *(v111 + 168);
                      if (v298 >= 0)
                      {
                        v299 = v298;
                      }

                      else
                      {
                        v299 = -v298;
                      }

                      v300 = 8 * v299;
                      if (v298 < 0)
                      {
                        v300 = -8 * v299;
                      }

                      v301 = v300 + 40;
                      v302 = v300 >= 0xFFFFFFFFFFFFFFD8 || v298 < 0;
                      v532 = (v297 * v297);
                      v303 = *(v111 + 336);
                      v304 = MEMORY[0x277D85FA0];
                      if (v303 < 1)
                      {
                        v308 = 0;
                        v307 = 0;
                        v350 = 0;
                        v349 = 0;
                      }

                      else
                      {
                        v517 = v299;
                        v518 = *(v111 + 168);
                        v519 = v300 + 40;
                        v305 = 0;
                        v306 = 0;
                        v307 = 0;
                        v308 = 0;
                        v309 = *(v111 + 344);
                        v310 = *(v111 + 384);
                        v520 = *(v529 + 28);
                        v525 = (2 * v297);
                        v311 = *MEMORY[0x277D85FA0] - 1;
                        v312 = -*MEMORY[0x277D85FA0];
                        v315 = *v309;
                        v313 = v309 + 1;
                        v314 = v315;
                        do
                        {
                          v535 = *v313;
                          v316 = *v313;
                          v317 = *v310;
                          v538 = v310 + 1;
                          v540 = v313 + 1;
                          v318 = *v310 >> 63;
                          v541 = 0;
                          v319 = sub_23681EB64(v317, v318, v532, 0, &v541);
                          if ((v320 << 63 >> 63) ^ v320 | v541)
                          {
                            v321 = 1;
                          }

                          else
                          {
                            v321 = v320 << 63 >> 63 == -1;
                          }

                          v322 = v321;
                          v323 = v302 | v322;
                          if ((v528 & 0xFE) == 0x52)
                          {
                            v324 = *(v527[22] + 4 * v316) - *(v527[22] + 4 * v314);
                            v325 = v525 * v324;
                            v323 |= ((((v324 * v525) >> 64) + (v324 >> 63) * v525) << 63) >> 63 == -1;
                          }

                          else
                          {
                            v325 = 0;
                          }

                          v326 = 0;
                          if (v316 - v314 < 0)
                          {
                            v331 = 0;
                            v332 = 0;
                            v333 = 0;
                            v330 = 1;
                          }

                          else
                          {
                            v327 = 24 * (v316 - v314);
                            v328 = v327 + 4 * v325;
                            v329 = __CFADD__(v327, 4 * v325);
                            v330 = 1;
                            v331 = 0;
                            v332 = 0;
                            if (v325 >> 62)
                            {
                              v333 = 0;
                            }

                            else
                            {
                              v333 = 0;
                              if (!v329)
                              {
                                v333 = v328 + 4 * v319;
                                v334 = __CFADD__(v328, 4 * v319);
                                if (v319 >> 62)
                                {
                                  v326 = 0;
                                  v331 = 0;
                                  v332 = 0;
                                }

                                else
                                {
                                  v332 = v328 + 8 * v319;
                                  v335 = __CFADD__(v328, 8 * v319);
                                  v336 = v319 >> 60 != 0;
                                  v337 = __CFADD__(v328, 16 * v319);
                                  v338 = v328 + 16 * v319;
                                  if (v337)
                                  {
                                    v336 = 1;
                                  }

                                  v339 = !v335;
                                  if (v335)
                                  {
                                    v340 = 0;
                                  }

                                  else
                                  {
                                    v340 = v338;
                                  }

                                  if (v339)
                                  {
                                    v341 = v332;
                                  }

                                  else
                                  {
                                    v341 = 0;
                                  }

                                  if (!v339)
                                  {
                                    v336 = 1;
                                  }

                                  if (v319 >> 61)
                                  {
                                    v340 = 0;
                                    v341 = 0;
                                    v342 = 1;
                                  }

                                  else
                                  {
                                    v342 = v336;
                                  }

                                  v343 = !v334;
                                  if (v334)
                                  {
                                    v326 = 0;
                                  }

                                  else
                                  {
                                    v326 = v340;
                                  }

                                  if (v343)
                                  {
                                    v331 = v341;
                                  }

                                  else
                                  {
                                    v331 = 0;
                                  }

                                  if (v343)
                                  {
                                    v330 = v342;
                                  }

                                  else
                                  {
                                    v332 = 0;
                                    v330 = 1;
                                  }
                                }
                              }
                            }
                          }

                          v344 = v330 | v323 & 1;
                          v345 = (v333 + v311) & v312;
                          v346 = (v332 + v311) & v312;
                          v347 = (v331 + v311) & v312;
                          v348 = (v326 + v311) & v312;
                          v337 = __CFADD__(v306, v348);
                          v306 += v348;
                          if (v337)
                          {
                            v344 = 1;
                          }

                          v337 = __CFADD__(v305, v347);
                          v305 += v347;
                          if (v337)
                          {
                            v344 = 1;
                          }

                          v337 = __CFADD__(v308, v346);
                          v308 += v346;
                          if (v337)
                          {
                            v344 = 1;
                          }

                          v337 = __CFADD__(v307, v345);
                          v307 += v345;
                          if (v337)
                          {
                            v302 = 1;
                          }

                          else
                          {
                            v302 = v344;
                          }

                          v310 = v538;
                          v314 = v535;
                          --v303;
                          v313 = v540;
                        }

                        while (v303);
                        v349 = (v305 + 1) >> 1;
                        v350 = (v306 + 1) >> 1;
                        v295 = a3;
                        v111 = v527;
                        v304 = MEMORY[0x277D85FA0];
                        v297 = v520;
                        v301 = v519;
                        v298 = v518;
                        v299 = v517;
                      }

                      if (v307 > v349)
                      {
                        v349 = v307;
                      }

                      if (v308 > v350)
                      {
                        v350 = v308;
                      }

                      v321 = v298 < 0;
                      v351 = v298 < 0;
                      v352 = 16 * v299;
                      if (v321)
                      {
                        v352 = -v352;
                      }

                      v337 = __CFADD__(v352, 32);
                      v353 = v352 + 32;
                      if (v337)
                      {
                        v351 = 1;
                      }

                      v337 = __CFADD__(v353, v301);
                      v354 = v353 + v301;
                      v355 = v337;
                      if (v351)
                      {
                        v354 = v301;
                      }

                      v356 = (v351 || v302) | v355;
                      if (v528 == 83)
                      {
                        v357 = v356;
                      }

                      else
                      {
                        v357 = v302;
                      }

                      if (v528 == 83)
                      {
                        v358 = v354;
                      }

                      else
                      {
                        v358 = v301;
                      }

                      v359 = *(*(v111 + 120) + 8 * *(v111 + 60));
                      v360 = v359 * v532;
                      v361 = v357 || (v359 * v532) >> 64 != (v359 * v532) >> 63;
                      if (v297 == 1)
                      {
                        v362 = 0;
                      }

                      else
                      {
                        v362 = 4 * v297 * (*(v111 + 100) + *(v111 + 96)) + 8;
                      }

                      v337 = __CFADD__(v358, v362);
                      v363 = v358 + v362;
                      if (v337)
                      {
                        v364 = (v362 >> 63) + 1;
                      }

                      else
                      {
                        v364 = v362 >> 63;
                      }

                      v366 = v364 << 63 >> 63 != v364 || v364 << 63 >> 63 == -1;
                      v337 = __CFADD__(*v304, v363);
                      v367 = *v304 + v363;
                      if (v337)
                      {
                        v366 = 1;
                      }

                      v368 = v361 || v366;
                      v369 = *(v111 + 56);
                      v370 = v360 >> 63;
                      v337 = __CFADD__(v360, 2 * v369);
                      v371 = v360 + 2 * v369;
                      if (v337)
                      {
                        v372 = v370 + 1;
                      }

                      else
                      {
                        v372 = v370;
                      }

                      v373 = v372 << 63 >> 63;
                      v374 = v373 != v372;
                      if (v368)
                      {
                        goto LABEL_427;
                      }

                      if ((*(v111 + 56) >> 63))
                      {
                        goto LABEL_427;
                      }

                      if (v374)
                      {
                        goto LABEL_427;
                      }

                      if (v373 < 0)
                      {
                        goto LABEL_427;
                      }

                      v375 = 4 * v371 + 144;
                      if (v371 >> 62 || 4 * v371 >= 0xFFFFFFFFFFFFFF70)
                      {
                        goto LABEL_427;
                      }

                      v337 = __CFADD__(v375, v367);
                      v376 = v375 + v367;
                      v377 = v337;
                      v337 = __CFADD__(v349, v376);
                      v378 = v349 + v376;
                      v379 = v337;
                      *(a5 + 56) = v378;
                      if (v377)
                      {
                        goto LABEL_427;
                      }

                      if (v379)
                      {
                        goto LABEL_427;
                      }

                      v380 = 8 * v371 + 144;
                      if (v371 >> 61 || 8 * v371 >= 0xFFFFFFFFFFFFFF70)
                      {
                        goto LABEL_427;
                      }

                      v337 = __CFADD__(v380, v367);
                      v381 = v380 + v367;
                      v382 = v337;
                      v383 = v350 + v381;
                      v384 = __CFADD__(v350, v381);
                      *(a5 + 64) = v383;
                      if (v382 || v384)
                      {
LABEL_427:
                        v397 = *(v295 + 40);
                        if (!v397)
                        {
                          v398 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                          if (v398)
                          {
                            sub_23672AFE4(v398, v399, v400, v401, v402, v403, v404, v405);
                          }

                          _SparseTrap();
                        }

                        memset(&__str[40], 0, 216);
                        strcpy(__str, "Computation of factor size overflowed.\n");
                        v397(__str);
                        (*(a3 + 32))(__src);
                        result = sub_23680EF08(v527, a3);
                        goto LABEL_121;
                      }

                      v385 = *(v111 + 64);
                      *(v111 + 392) = 8;
                      v386 = *(v111 + 56);
                      if (v386 >= 0)
                      {
                        v387 = v386;
                      }

                      else
                      {
                        v387 = -v386;
                      }

                      v388 = 8 * (v387 + 2 * v387);
                      if (v386 < 0)
                      {
                        v388 = -8 * (v387 + 2 * v387);
                      }

                      v389 = v388 + 48;
                      v390 = v388 >= 0xFFFFFFFFFFFFFFD0;
                      if (v528 == 82)
                      {
                        v321 = v386 < 0;
                        v391 = v386 < 0;
                        v392 = 4 * v387;
                        if (v321)
                        {
                          v392 = -v392;
                        }

                        v337 = __CFADD__(v392, 8);
                        v393 = v392 + 8;
                        if (v337)
                        {
                          v391 = 1;
                        }

                        v337 = __CFADD__(v393, v389);
                        v394 = v393 + v389;
                        v395 = v337;
                        if (!v391)
                        {
                          v389 = v394;
                        }

                        LOBYTE(v396) = v391 | v395;
                      }

                      else
                      {
                        v396 = v386 >> 31;
                      }

                      v406 = 0;
                      v407 = v390 | v396;
                      v408 = *(v111 + 52);
                      v409 = v408 < 0;
                      if (v408 >= 0)
                      {
                        v410 = v408;
                      }

                      else
                      {
                        v410 = -v408;
                      }

                      v411 = !is_mul_ok(v410, v389);
                      v412 = v410 * v389;
                      if (!(v410 * v389))
                      {
                        v409 = 0;
                      }

                      v413 = 1;
                      if (!v411 && !v409)
                      {
                        v406 = 0;
                        if (v408 >= 0)
                        {
                          v414 = v412;
                        }

                        else
                        {
                          v414 = -v412;
                        }

                        v415 = *(v111 + 168);
                        if (v415 >= 0)
                        {
                          v416 = *(v111 + 168);
                        }

                        else
                        {
                          v416 = -v415;
                        }

                        v417 = 8 * v416;
                        if (v415 < 0)
                        {
                          v417 = -v417;
                        }

                        v337 = __CFADD__(v414, v417);
                        v418 = v414 + v417;
                        v419 = v337;
                        v413 = 1;
                        if ((v415 & 0x80000000) == 0 && (v419 & 1) == 0)
                        {
                          v406 = v418 + 8;
                          v413 = v418 >= 0xFFFFFFFFFFFFFFF8;
                        }
                      }

                      v420 = v413 | v407 & 1;
                      if (v408 >= 2)
                      {
                        v421 = *(v111 + 336);
                        if (v421 >= 0)
                        {
                          v422 = *(v111 + 336);
                        }

                        else
                        {
                          v422 = -v421;
                        }

                        v423 = 40 * v422;
                        if (v421 < 0)
                        {
                          v423 = -v423;
                        }

                        v424 = v406 + v423;
                        v425 = __CFADD__(v406, v423);
                        v426 = 1;
                        if ((v421 & 0x80000000) == 0 && !v425)
                        {
                          v427 = v424 + 49152;
                          if (v424 >= 0xFFFFFFFFFFFF4000 || (v337 = __CFADD__(v427, 16 * v410), v428 = v427 + 16 * v410, v337))
                          {
                            v426 = 1;
                          }

                          else
                          {
                            v406 = v428 + 24;
                            v426 = v428 >= 0xFFFFFFFFFFFFFFE8;
                          }
                        }

                        v420 |= v426;
                      }

                      v481 = 12 * v385 + 16;
                      if (v481 <= v406)
                      {
                        v481 = v406;
                      }

                      *(a5 + 40) = v481;
                      *(a5 + 48) = v481;
                      if (!v420)
                      {
                        v483 = 2 * v481;
                        if (2 * v481 <= v543 || ((*(v295 + 32))(__src), __src = (*(a3 + 24))(v483), v111 = v527, __src))
                        {
                          *(a5 + 8) = 0;
                          *(a5 + 32) = v111;
                          v484 = sub_23671D5A0(v528, *(a5 + 24), v111, 2 * v383, a4, 0);
                          if (v484)
                          {
                            v485 = __src;
                            *v524 = v484;
                            if (v522)
                            {
                              v486 = *(v529 + 28);
                              v487 = *v529;
                              if (v487 >= 1)
                              {
                                v488 = 0;
                                for (i = 0; i != v487; ++i)
                                {
                                  if (v486)
                                  {
                                    v490 = (*(v484 + 96) + v488);
                                    v491 = &v522[*(v527[19] + 4 * i) * v486];
                                    v492 = v486;
                                    do
                                    {
                                      v493 = *v491++;
                                      *v490++ = v493;
                                      --v492;
                                    }

                                    while (v492);
                                  }

                                  v488 += 8 * v486;
                                }
                              }

                              v494 = v529[1];
                              if (v494 >= 1)
                              {
                                v495 = 0;
                                for (j = 0; j != v494; ++j)
                                {
                                  if (v486)
                                  {
                                    v497 = (*(v484 + 104) + v495);
                                    v498 = &v521[*(v527[20] + 4 * j) * v486];
                                    v499 = v486;
                                    do
                                    {
                                      v500 = *v498++;
                                      *v497++ = v500;
                                      --v499;
                                    }

                                    while (v499);
                                  }

                                  v495 += 8 * v486;
                                }
                              }

                              (*(a3 + 32))(v522, v521, v527, __src);
                              v485 = __src;
                            }

                            _SparseRefactorLU_Complex_Double(v529, a5, a4, v485);
                            (*(a3 + 32))(__src);
                            result = sub_23671E4F8(a5);
                          }

                          else
                          {
                            result = (*(a3 + 32))(__src);
                          }
                        }

                        else
                        {
                          if (!*(a3 + 40))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                            {
                              sub_2366F716C();
                            }

                            _SparseTrap();
                          }

                          memset(__str, 0, 256);
                          snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v483);
                          result = (*(a3 + 40))(__str);
                        }

                        goto LABEL_121;
                      }

                      v482 = *(v295 + 40);
                      if (!v482)
                      {
                        v501 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v501)
                        {
                          sub_23672AFA8(v501, v502, v503, v504, v505, v506, v507, v508);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[73], 0, 183);
                      strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
                      v482(__str);
                      result = (*(a3 + 32))(__src);
                      goto LABEL_119;
                    }

                    v545 = 0uLL;
                    *&v544 = __PAIR64__(*v542, *&v542[4]);
                    *(&v544 + 1) = __src;
                    v108 = (4 * *(*&v542[8] + 8 * *&v542[4]) + 7) & 0xFFFFFFFFFFFFFFF8;
                    v536 = v56;
                    *&v545 = &__src[2 * *v542 + 2];
                    v109 = (v545 + v108);
                    if (sub_236750FA0(v542, &v544, *(v36 + 72), *(v36 + 80), (v36 + 88), (v36 + 92), (v36 + 96), (v36 + 100), *(v36 + 152), *(v36 + 160), v545 + v108))
                    {
                      v110 = *(a3 + 40);
                      if (!v110)
                      {
                        v148 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v148)
                        {
                          sub_23672ADFC(v148, v149, v150, v151, v152, v153, v154, v155);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[33], 0, 223);
                      strcpy(__str, "Matrix is structurally singular.");
                      v110(__str);
                      (*(a3 + 32))(v36);
LABEL_156:
                      v156 = -2;
LABEL_157:
                      *a5 = v156;
LABEL_510:
                      v295 = a3;
                      v111 = 0;
                      goto LABEL_270;
                    }

                    v138 = *v542;
                    v139 = vsub_s32(*v542, *(v36 + 88));
                    v140 = *(v36 + 60) - *(v36 + 88);
                    *(v36 + 60) = v140;
                    if ((vceq_s32(v139, vdup_lane_s32(v139, 1)).u8[0] & 1) == 0)
                    {
                      v180 = *(a3 + 40);
                      if (!v180)
                      {
                        v464 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v464)
                        {
                          sub_23672AE38(v464, v465, v466, v467, v468, v469, v470, v471);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[74], 0, 182);
                      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
                      v180(__str);
                      *a5 = -4;
                      (*(a3 + 32))(v36);
                      goto LABEL_510;
                    }

                    v141 = v36;
                    v142 = *(v36 + 96);
                    v143 = *(v36 + 100) + v142;
                    if (v539)
                    {
                      v144 = *(v36 + 152);
                      v145 = *(v36 + 160);
                      v146 = v109;
                      if (v138 >= 1)
                      {
                        v147 = 0;
                        do
                        {
                          *(v145 + v147) = *&v539[4 * *(v144 + v147)];
                          v147 += 4;
                        }

                        while (4 * v138 != v147);
                      }
                    }

                    else
                    {
                      *__str = *v542;
                      *&__str[16] = *&v542[16];
                      *v549 = v544;
                      *&v549[16] = v545;
                      v181 = v140;
                      if (sub_236710A64(__str, v549, v140 - v143, *(v36 + 152) + 4 * v142, v140 - v143, (*(v36 + 160) + 4 * v142), v109) != v140 - v143)
                      {
                        v472 = *(a3 + 40);
                        if (!v472)
                        {
                          v509 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                          if (v509)
                          {
                            sub_23672AE74(v509, v510, v511, v512, v513, v514, v515, v516);
                          }

                          _SparseTrap();
                        }

                        memset(&__str[74], 0, 182);
                        strcpy(__str, "Unable to construct maximal transversal, matrix is structurally singular.");
                        v472(__str);
                        goto LABEL_156;
                      }

                      v141 = v36;
                      v144 = *(v36 + 152);
                      v145 = *(v36 + 160);
                      v140 = v181;
                      v146 = v109;
                    }

                    v531 = v140;
                    *__str = *v542;
                    *&__str[16] = *&v542[16];
                    v182 = sub_2367D4EEC(__str, v140 - v143, (v144 + 4 * *(v141 + 96)), (v145 + 4 * *(v141 + 96)), v146, v146 + ((4 * (v140 - v143) + 11) & 0xFFFFFFFFFFFFFFF8));
                    *(v36 + 104) = v182;
                    v183 = (*(a3 + 24))(4 * v182 + 4);
                    v184 = v36;
                    *(v36 + 112) = v183;
                    if ((*(v36 + 104) & 0x80000000) != 0)
                    {
                      goto LABEL_186;
                    }

                    v185 = v109;
                    v186 = 0;
                    do
                    {
                      *(v183 + 4 * v186) = *(v36 + 96) + *&v109[4 * v186];
                      v187 = *(v36 + 104);
                      v321 = v186++ < v187;
                    }

                    while (v321);
                    if (v187 < 1)
                    {
LABEL_186:
                      v176 = v184;
                      if (*v542 >= 1)
                      {
                        v214 = 0;
                        v215 = *(v184 + 136);
                        v216 = *(v184 + 152);
                        do
                        {
                          *(v215 + 4 * *(v216 + 4 * v214)) = v214;
                          ++v214;
                        }

                        while (v214 < *v542);
                      }

                      v177 = __src;
                      v179 = v536;
                      if (*&v542[4] >= 1)
                      {
                        v217 = 0;
                        v218 = *(v184 + 144);
                        v219 = *(v184 + 160);
                        do
                        {
                          *(v218 + 4 * *(v219 + 4 * v217)) = v217;
                          ++v217;
                        }

                        while (v217 < *&v542[4]);
                      }

                      v220 = *(a3 + 8);
                      if (v220)
                      {
                        memcpy(v220, *(v184 + 136), 4 * *v542);
                        memcpy((*(a3 + 8) + 4 * *v542), *(v176 + 144), 4 * *&v542[4]);
                      }

                      v178 = v531;
LABEL_195:
                      v221 = v178 - (*(v176 + 96) + *(v176 + 100));
                      *__str = v221;
                      *&__str[4] = v221;
                      *&__str[16] = 0;
                      *&__str[24] = 0;
                      *&__str[8] = v177;
                      *v549 = v221;
                      *&v549[4] = v221;
                      v222 = &v177[2 * v221 + 8 + 2 * v221];
                      *&v549[16] = 0;
                      *&v549[24] = 0;
                      *&v549[8] = &v177[2 * v221 + 4];
                      v223 = 4 * *(*&v542[8] + 8 * v178);
                      v224 = (v223 + 7) & 0xFFFFFFFFFFFFFFF8;
                      v537 = v179;
                      v225 = &v222[v224];
                      v547 = *v542;
                      v548 = *&v542[16];
                      sub_236789F74(&v547, *(v176 + 104), *(v176 + 112), *(v176 + 136), *(v176 + 144), __str, v549, v222, v223, &v222[v224]);
                      v226 = 8 * v221;
                      *(v36 + 216) = (*(a3 + 24))(v226 + 8);
                      *(v36 + 240) = (*(a3 + 24))(v226 + 8);
                      sub_23676C728(v528, v221, *&__str[8], *&__str[16], *&v549[8], *&v549[16], (v36 + 168), (v36 + 176), *(v36 + 184), (v36 + 192), *(v36 + 200), (v36 + 208), *(v36 + 216), (v36 + 224), (v36 + 232), v542[28], a3, v225);
                      v227 = sub_23676DFE0(*(v36 + 60), *(v36 + 168), *(*(v36 + 216) + 8 * *(v36 + 168)));
                      if (v227 <= v537)
                      {
                        sub_23676E074(v36, v542[28], __src);
                      }

                      else
                      {
                        v228 = (*(a3 + 24))(v227);
                        sub_23676E074(v36, v542[28], v228);
                        if (v228 != __src)
                        {
                          (*(a3 + 32))(v228);
                        }
                      }

                      v229 = sub_2366F8F4C(v221, *(v36 + 168));
                      v230 = v229;
                      v231 = __src;
                      if (v229 > v537)
                      {
                        v231 = (*(a3 + 24))(v229);
                      }

                      sub_2366F8F68(v528, v221, *(v36 + 168), *(v36 + 176), *(v36 + 184), *(v36 + 192), *(v36 + 200), *(v36 + 208), *(v36 + 216), *(v36 + 224), *(v36 + 232), *(v36 + 240), (v36 + 248), (v36 + 256), *(v36 + 304), a3, v231, v230);
                      if (v231 != __src)
                      {
                        (*(a3 + 32))(v231);
                      }

                      v232 = sub_2366FAB28(*(v36 + 60), *(v36 + 168));
                      v233 = __src;
                      if (v232 > v537)
                      {
                        v233 = (*(a3 + 24))(v232, __src);
                      }

                      sub_2366FAB3C(v36, v233);
                      if ((*(v36 + 168) & 0x80000000) == 0)
                      {
                        v234 = *(v36 + 176);
                        v235 = -1;
                        do
                        {
                          *v234++ += *(v36 + 96);
                          v236 = *(v36 + 168);
                          ++v235;
                        }

                        while (v235 < v236);
                        if (v236 >= 1)
                        {
                          v237 = 0;
                          v238 = *(v36 + 184);
                          v239 = *(v36 + 200);
                          v240 = *v238;
                          do
                          {
                            v241 = v237++;
                            v242 = v238[v237];
                            v243 = v242 - v240;
                            if (v242 > v240)
                            {
                              v244 = (*(v36 + 192) + 4 * v240);
                              do
                              {
                                *v244++ += *(v36 + 96);
                                --v243;
                              }

                              while (v243);
                            }

                            v245 = *(v239 + 8 * v241);
                            v246 = *(v239 + 8 * v237);
                            v321 = v246 <= v245;
                            v247 = v246 - v245;
                            if (!v321)
                            {
                              v248 = (*(v36 + 208) + 4 * v245);
                              do
                              {
                                *v248++ += *(v36 + 96);
                                --v247;
                              }

                              while (v247);
                            }

                            v240 = v242;
                          }

                          while (v237 < *(v36 + 168));
                        }
                      }

                      if (v528 == 83)
                      {
                        LODWORD(v249) = *(v36 + 96);
                        v250 = *(v36 + 60) - *(v36 + 100);
                        if (v250 > v249)
                        {
                          v251 = *(v36 + 304) - 4;
                          do
                          {
                            *(v251 + 4 * v250) = *(v251 + 4 * v250 - 4 * v249);
                            v249 = *(v36 + 96);
                            --v250;
                          }

                          while (v250 > v249);
                        }
                      }

                      v252 = (*(a3 + 24))(8 * *v542 + 16);
                      *(v36 + 312) = v252;
                      v253 = *v542;
                      v254 = *&v542[4];
                      v255 = *&v542[8];
                      v256 = *&v542[16];
                      v257 = v252 + 2;
                      bzero(v252 + 2, 8 * *v542);
                      if (v254 >= 1)
                      {
                        v258 = 0;
                        v259 = *(v36 + 144);
                        v260 = *(v36 + 96);
                        do
                        {
                          v261 = *(v259 + 4 * v258);
                          if (v261 >= v260 && v261 < *(v36 + 60) - *(v36 + 100))
                          {
                            v262 = (v255 + 8 * v258);
                            v263 = *v262;
                            v264 = v262[1];
                            while (v263 < v264)
                            {
                              v265 = *(v256 + 4 * v263);
                              if ((v265 & 0x80000000) == 0 && v265 < v253)
                              {
                                v266 = *(*(v36 + 136) + 4 * v265);
                                if (v266 <= v261)
                                {
                                  ++v257[v266];
                                  v264 = v262[1];
                                }
                              }

                              ++v263;
                            }
                          }

                          ++v258;
                        }

                        while (v258 != v254);
                      }

                      v252[1] = 0;
                      v267 = v252 + 1;
                      if (v253 >= 1)
                      {
                        v268 = 0;
                        v269 = v253;
                        do
                        {
                          v268 += *v257;
                          *v257++ = v268;
                          --v269;
                        }

                        while (v269);
                      }

                      v270 = v267[v253];
                      v271 = (*(a3 + 24))(12 * v270 + 8);
                      v272 = (v271 + 4 * v270 + 7) & 0xFFFFFFFFFFFFFFF8;
                      *(v36 + 320) = v271;
                      *(v36 + 328) = v272;
                      *v252 = 0;
                      if (v254 > 0)
                      {
                        v273 = 0;
                        v274 = *(v36 + 144);
                        do
                        {
                          v275 = *(v274 + 4 * v273);
                          if (v275 >= *(v36 + 96) && v275 < *(v36 + 60) - *(v36 + 100))
                          {
                            v276 = (v255 + 8 * v273);
                            v277 = *v276;
                            v278 = v276[1];
                            while (v277 < v278)
                            {
                              v279 = *(v256 + 4 * v277);
                              if ((v279 & 0x80000000) == 0 && v279 < v253)
                              {
                                v280 = *(*(v36 + 136) + 4 * v279);
                                if (v280 <= v275)
                                {
                                  v281 = v267[v280];
                                  *(v271 + 4 * v281) = v275;
                                  *(v272 + 8 * v281) = v277;
                                  ++v267[v280];
                                  v278 = v276[1];
                                }
                              }

                              ++v277;
                            }
                          }

                          ++v273;
                        }

                        while (v273 != v254);
                      }

                      v282 = *(v36 + 168);
                      if (v282 < 1)
                      {
                        v284 = 0;
                      }

                      else
                      {
                        v283 = 0;
                        v284 = 0;
                        v285 = *(v36 + 176);
                        v286 = *v285;
                        do
                        {
                          v287 = v285[++v283];
                          if (v286 < v287)
                          {
                            v288 = *(v36 + 312);
                            v289 = v286;
                            v290 = *(v288 + 8 * v286);
                            do
                            {
                              *(v288 + 8 * v289++) = v284;
                              v291 = *(v288 + 8 * v289);
                              if (v290 < v291)
                              {
                                do
                                {
                                  v292 = *(v271 + 4 * v290);
                                  if (v292 >= v285[v283])
                                  {
                                    *(v271 + 4 * v284) = v292;
                                    *(v272 + 8 * v284++) = *(v272 + 8 * v290);
                                    v291 = *(v288 + 8 * v289);
                                  }

                                  ++v290;
                                }

                                while (v290 < v291);
                                v287 = v285[v283];
                              }

                              v290 = v291;
                            }

                            while (v289 < v287);
                            v282 = *(v36 + 168);
                          }

                          v286 = v287;
                        }

                        while (v283 < v282);
                      }

                      *(*(v36 + 312) + 8 * (*(v36 + 60) - *(v36 + 100))) = v284;
                      v293 = sub_2366FB334(v282);
                      if (v537 >= v293)
                      {
                        sub_2366FB348(v36, __src);
                      }

                      else
                      {
                        v294 = (*(a3 + 24))(v293);
                        sub_2366FB348(v36, v294);
                        if (v294 != __src)
                        {
                          (*(a3 + 32))(v294);
                        }
                      }

                      *__str = *v542;
                      *&__str[16] = *&v542[16];
                      if (!sub_2368124D8(__str, *(v36 + 88), *(v36 + 92), *(v36 + 96), *(v36 + 100), *(v36 + 104), *(v36 + 112), *(v36 + 136), *(v36 + 160), *(v36 + 120), (v36 + 128), a3))
                      {
                        v429 = 0;
                        v430 = 0;
                        v431 = 0;
                        v111 = v36;
                        *(v36 + 288) = 0;
                        *(v36 + 296) = 0;
                        v432 = *(v36 + 168) & ~(*(v36 + 168) >> 31);
                        v433 = v542[28];
                        v295 = a3;
                        v296 = v539;
                        while (v432 != v431)
                        {
                          v434 = (*(*(v36 + 176) + 4 * v431 + 4) - *(*(v36 + 176) + 4 * v431)) * v433;
                          v435 = *(*(v36 + 184) + 8 * v431);
                          v436 = *(*(v36 + 184) + 8 * v431 + 8);
                          v437 = __OFSUB__(v436, v435);
                          v438 = v436 - v435;
                          if (v438 >= 0)
                          {
                            v439 = v438;
                          }

                          else
                          {
                            v439 = -v438;
                          }

                          v440 = (v439 * v433) >> 64;
                          v441 = v439 * v433;
                          if (v438 < 0 != v437)
                          {
                            v442 = -v441;
                          }

                          else
                          {
                            v442 = v439 * v433;
                          }

                          v443 = v440 != 0;
                          v437 = __OFADD__(v434, v442);
                          v444 = v434 + v442;
                          v445 = v437;
                          v447 = *(*(v36 + 200) + 8 * v431);
                          v446 = *(*(v36 + 200) + 8 * v431 + 8);
                          v448 = __OFSUB__(v446, v447);
                          v449 = v446 - v447;
                          if (v449 >= 0)
                          {
                            v450 = v449;
                          }

                          else
                          {
                            v450 = -v449;
                          }

                          v451 = (v450 * v433) >> 64;
                          v452 = v450 * v433;
                          if (v449 < 0 != v448)
                          {
                            v453 = -v452;
                          }

                          else
                          {
                            v453 = v452;
                          }

                          v454 = v451 != 0;
                          v455 = v434 + v453;
                          v456 = __OFADD__(v434, v453);
                          v457 = (v444 * v434) >> 64 != (v444 * v434) >> 63;
                          v437 = __OFADD__(v430, v444 * v434);
                          v430 += v444 * v434;
                          v458 = v437;
                          v459 = v455 - v434;
                          v460 = (v455 - v434) * v434;
                          v461 = (v459 * v434) >> 64 != v460 >> 63;
                          v437 = __OFADD__(v429, v460);
                          v429 += v460;
                          v462 = v437;
                          *(v36 + 288) = v430;
                          *(v36 + 296) = v429;
                          if (!v443 && v441 <= (v438 >> 63) + 0x7FFFFFFFFFFFFFFFLL && (v445 & 1) == 0 && !v454 && v452 <= (v449 >> 63) + 0x7FFFFFFFFFFFFFFFLL && !v456 && !v457 && (v458 & 1) == 0 && !v461)
                          {
                            ++v431;
                            if (!v462)
                            {
                              continue;
                            }
                          }

                          v463 = *(a3 + 40);
                          if (!v463)
                          {
                            v473 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                            if (v473)
                            {
                              sub_23672AF30(v473, v474, v475, v476, v477, v478, v479, v480);
                            }

                            _SparseTrap();
                          }

                          memset(&__str[36], 0, 220);
                          strcpy(__str, "factor size calculation overflowed\n");
                          v463(__str, v452, v36, v458, v457, v461, v454);
                          (*(a3 + 32))(v36);
                          v111 = 0;
                          v112 = -3;
                          goto LABEL_113;
                        }

                        goto LABEL_271;
                      }

                      (*(a3 + 32))(*(v36 + 112));
                      (*(a3 + 32))(v36);
                      goto LABEL_268;
                    }

                    v188 = 0;
                    v189 = 4 * v29;
                    while (1)
                    {
                      v190 = 8 * (*(*&v542[8] + 8 * *&v542[4]) + v531 + 2);
                      v191 = *(v184 + 112);
                      v192 = *(v191 + 4 * v188++);
                      v193 = *(v184 + 152);
                      v194 = *(v184 + 160);
                      __b = *(v184 + 136);
                      v196 = *(v184 + 144);
                      v197 = (*(v191 + 4 * v188) - v192);
                      *v549 = *v542;
                      *&v549[8] = *&v542[8];
                      *&v549[24] = *&v542[24];
                      v198 = v193 + 4 * v192;
                      v547 = v544;
                      v548 = v545;
                      v199 = v194 + 4 * v192;
                      sub_23670BC48(v549, &v547, v197, v198, v199, v185 + ((v189 + 7) & 0xFFFFFFFFFFFFFFF8), v185, __str, v189, __b, 4 * *v542, v196);
                      *v549 = *__str;
                      *&v549[16] = *&__str[16];
                      if (sub_2367E3E64(v528, v549, 0, __b, v196, a3))
                      {
                        break;
                      }

                      if (v197 <= 0)
                      {
                        v213 = v198;
                        v207 = 4 * v197;
                        memcpy(v213, v196, v207);
                        v208 = v199;
                      }

                      else
                      {
                        v200 = v198;
                        v201 = __b;
                        v202 = v197;
                        do
                        {
                          v204 = *v200++;
                          v203 = v204;
                          v205 = *v201++;
                          v196[v205] = v203;
                          --v202;
                        }

                        while (v202);
                        v206 = v198;
                        v207 = 4 * v197;
                        memcpy(v206, v196, 4 * v197);
                        v208 = v199;
                        v209 = v199;
                        do
                        {
                          v211 = *v209++;
                          v210 = v211;
                          v212 = *__b++;
                          v196[v212] = v210;
                          --v197;
                        }

                        while (v197);
                      }

                      memcpy(v208, v196, v207);
                      v184 = v36;
                      v185 = v109;
                      if (v188 >= *(v36 + 104))
                      {
                        goto LABEL_186;
                      }
                    }

                    (*(a3 + 32))(v36);
                    v156 = -3;
                    goto LABEL_157;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_553:
  __break(1u);
  return result;
}

uint64_t sub_236720B94(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  if (sub_23676C5D0(a1, &v56) & 1) != 0 || (sub_236710A14(&v55, a1, a1) & 1) != 0 || (sub_2367D4EC0(&v54, a1, a1, a1))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_236750F80(&v53, a1, a1);
  }

  v7 = v56;
  v8 = v56 + 16 * (a1 + 2);
  v9 = __CFADD__(v56, 16 * (a1 + 2));
  v10 = 1;
  if (!((a1 + 2) >> 60) && !v9)
  {
    v11 = __CFADD__(v8, 4 * a2);
    v12 = v8 + 4 * a2;
    v13 = v11;
    if (!(a2 >> 62) && !v13)
    {
      v7 = v12 + 32;
      v10 = v12 >= 0xFFFFFFFFFFFFFFE0;
    }
  }

  v14 = 0;
  v15 = v7 + 8 * (a1 + 1);
  v16 = __CFADD__(v7, 8 * (a1 + 1));
  v17 = 1;
  if (!((a1 + 1) >> 61) && !v16)
  {
    v11 = __CFADD__(v15, 4 * a2);
    v18 = v15 + 4 * a2;
    v19 = v11;
    if (a2 >> 62)
    {
      v14 = 0;
    }

    else
    {
      v11 = __CFADD__(v18, 16);
      v20 = v18 + 16;
      v21 = v11;
      v22 = (v19 & 1) == 0;
      if (v19)
      {
        v14 = 0;
      }

      else
      {
        v14 = v20;
      }

      if (v22)
      {
        v17 = v21;
      }

      else
      {
        v17 = 1;
      }
    }
  }

  v23 = v54;
  v24 = a1 + 2;
  v25 = (((a1 >= 0xFFFFFFFFFFFFFFFELL) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFFELL);
  if (v25)
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v27 = a1 + 2 * a2;
    v28 = __CFADD__(a1, 2 * a2);
    v26 = 1;
    if ((a2 & 0x8000000000000000) == 0 && !v28)
    {
      v29 = v27 >> 62;
      v30 = 4 * v27;
      v11 = __CFADD__(v30, 8 * v24);
      v31 = v30 + 8 * v24;
      v32 = v11;
      v33 = v24 >> 61;
      v11 = __CFADD__(v31, 24);
      v34 = v31 + 24;
      v35 = v11;
      if (v32)
      {
        v34 = 0;
        v36 = 1;
      }

      else
      {
        v36 = v35;
      }

      v37 = v33 == 0;
      if (v33)
      {
        v38 = 0;
      }

      else
      {
        v38 = v34;
      }

      if (v37)
      {
        v39 = v36;
      }

      else
      {
        v39 = 1;
      }

      v40 = v29 == 0;
      if (v29)
      {
        v25 = 0;
      }

      else
      {
        v25 = v38;
      }

      if (v40)
      {
        v26 = v39;
      }

      else
      {
        v26 = 1;
      }
    }
  }

  v41 = a1 >> 62 != 0;
  v42 = v54 + 4 * a1;
  if (__CFADD__(v54, 4 * a1))
  {
    v41 = 1;
  }

  v11 = __CFADD__(v42, 8);
  v43 = v42 + 8;
  v44 = v11 || v41;
  if (!v41)
  {
    v23 = v43;
  }

  v45 = v6 | v10 | v17 | v26 | v44;
  v46 = v53;
  if (v23 > v53)
  {
    v46 = v23;
  }

  if (v55 > v46)
  {
    v46 = v55;
  }

  if (v25 > v46)
  {
    v46 = v25;
  }

  v11 = __CFADD__(v14, v46);
  v47 = v14 + v46;
  v48 = v11;
  v49 = v45 | v48;
  if (v7 <= v47)
  {
    v7 = v47;
  }

  v11 = __CFADD__(v7, 8);
  v50 = v7 + 8;
  v51 = v11;
  *a3 = v50;
  return v49 | v51;
}

uint64_t _SparseUpdatePartialRefactorLU_Complex_Double(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v197 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 80);
  v7 = *(a1 + 25);
  v8 = *(a4 + 28);
  v169 = v8;
  v9 = *(v5 + 168);
  v10 = *(v5 + 56);
  v11 = 8 * v9 + 16 * v10 + 4 * (9 * v10 + v9);
  v12 = v9 + 8 * v10 + 8 * v9 + 40 * *(v5 + 336) + (v11 + 120) * *(v5 + 52) + 49208;
  v13 = (*(v5 + 24))(v12);
  v14 = *(v5 + 56);
  v15 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v13 + v15;
  v145 = v14;
  if (*(v5 + 168) >= 1)
  {
    v17 = 0;
    v18 = v6[14];
    v19 = *(v5 + 176);
    while (1)
    {
      if (v7 == 83)
      {
        v20 = *(v6[9] + 4 * v17);
        v21 = *(v6[10] + 4 * v17);
        v22 = *(v6[11] + 4 * v17);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      v23 = v17 + 1;
      v24 = v20 + (*(v19 + 4 * (v17 + 1)) - *(v19 + 4 * v17)) * v8;
      if (v7 == 83)
      {
        v25 = *(v6[8] + 4 * v17);
      }

      else
      {
        v25 = v24;
        if (v7 == 81)
        {
          if (v24 >= 1)
          {
            v26 = 0;
            do
            {
              *(v13 + 4 * (v26 + *(v19 + 4 * v17) * v8)) = v17;
              *(v16 + 4 * (v26 + *(v19 + 4 * v17) * v8)) = v17;
              ++v26;
            }

            while (v24 != v26);
          }

          goto LABEL_16;
        }
      }

      if (v25 >= 1)
      {
        v27 = v24;
        v28 = v24 + v21 + (*(*(v5 + 184) + 8 * v23) - *(*(v5 + 184) + 8 * v17)) * v8;
        v29 = v25;
        v30 = *(v18 + 8 * v17) + 8;
        v31 = 16 * (v22 + (*(*(v5 + 200) + 8 * v23) - *(*(v5 + 200) + 8 * v17)) * v8) + 16 * v28;
        v32 = (v30 + (v31 | 4) * v27 + 4 * v21);
        v33 = (v30 + v31 * v27);
        do
        {
          v34 = *v33++;
          *(v13 + 4 * v34) = v17;
          v35 = *v32++;
          *(v16 + 4 * v35) = v17;
          --v29;
        }

        while (v29);
      }

LABEL_16:
      ++v17;
      if (v23 >= *(v5 + 168))
      {
        v14 = *(v5 + 56);
        break;
      }
    }
  }

  memset(__str, 0, sizeof(__str));
  v178 = 0;
  v179 = v5;
  v170[0] = v5;
  sub_23672A590(v168, v14, __str, v170);
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v179 + 32))();
  }

  v36 = *(v5 + 56);
  memset(__str, 0, sizeof(__str));
  v178 = 0;
  v179 = v5;
  v170[0] = v5;
  sub_23672A590(v167, v36, __str, v170);
  v143 = v12;
  v144 = v11;
  v151 = v7;
  v153 = v6;
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v179 + 32))();
  }

  v142 = v15;
  v37 = (v16 + v15);
  v152 = *(v5 + 168);
  bzero(v37, v152);
  if (a2 >= 1)
  {
    v38 = 0;
    v39 = (v8 * v8);
    v40 = 16 * v39;
    v155 = a2;
    v149 = -16 * v39;
    while (1)
    {
      v41 = (a3 + 8 * v38);
      v43 = *v41;
      v42 = v41[1];
      v44 = v43 / v169;
      v45 = v42 / v169;
      v46 = *(*(v5 + 136) + 4 * (v43 / v169));
      v47 = *(*(v5 + 144) + 4 * (v42 / v169));
      v48 = v43 % v169 + v46 * v169;
      LODWORD(v170[0]) = v48;
      v49 = v42 % v169 + v47 * v169;
      LODWORD(v166[0]) = v49;
      v50 = *(v5 + 72);
      if (v50 && (*(v50 + v43) & 1) != 0)
      {
        goto LABEL_60;
      }

      v51 = *(v5 + 80);
      if (v51)
      {
        if (*(v51 + v42))
        {
          goto LABEL_60;
        }
      }

      if (v47 < *(v5 + 96))
      {
        goto LABEL_35;
      }

      if (v47 >= *(v5 + 60) - *(v5 + 100))
      {
        goto LABEL_35;
      }

      v52 = *(v5 + 112);
      do
      {
        v54 = *v52++;
        v53 = v54;
      }

      while (v47 >= v54);
      if (v46 >= v53)
      {
LABEL_35:
        v59 = (*(v5 + 120) + 8 * v47);
        v61 = *v59;
        v60 = v59[1];
        v62 = v60 <= v61;
        v63 = v60 - v61;
        if (v62)
        {
LABEL_39:
          v67 = 0;
        }

        else
        {
          v64 = v149 * v61;
          v65 = (*(v5 + 128) + 4 * v61);
          while (1)
          {
            v66 = *v65++;
            if (v66 == v44)
            {
              break;
            }

            v64 -= v40;
            if (!--v63)
            {
              goto LABEL_39;
            }
          }

          v67 = (*(v153 + 40) - v64);
        }

        v68 = (*(a4 + 8) + 8 * v45);
        v70 = *v68;
        v69 = v68[1];
        v62 = v69 <= v70;
        v71 = v69 - v70;
        if (v62)
        {
LABEL_45:
          v75 = 0;
        }

        else
        {
          v72 = v149 * v70;
          v73 = (*(a4 + 16) + 4 * v70);
          while (1)
          {
            v74 = *v73++;
            if (v74 == v44)
            {
              break;
            }

            v72 -= v40;
            if (!--v71)
            {
              goto LABEL_45;
            }
          }

          v75 = (*(a4 + 32) - v72);
        }

        memcpy(v67, v75, v40);
        if (v46 == v47)
        {
          if (v169 == 1)
          {
            *v67 = sub_23681E17C(1.0, 0.0, *v67, v67[1]);
            *(v67 + 1) = v76;
          }

          else
          {
            v77 = *(v5 + 96);
            if (v46 >= v77)
            {
              v46 = v77 + v46 - *(v5 + 60) + *(v5 + 100);
            }

            v78 = *(v153 + 48) + 4 * v46 * v169;
            LODWORD(v165[0]) = 0;
            zgetrf_NEWLAPACK();
          }
        }

        goto LABEL_60;
      }

      v55 = *(v13 + 4 * v48);
      v56 = *(v16 + 4 * v49);
      if (v55 < v56)
      {
        break;
      }

      if (v55 > v56)
      {
        v57 = (v168[0] + 32 * v56);
        v58 = v170;
        goto LABEL_55;
      }

LABEL_56:
      if (v55 <= v56)
      {
        v79 = v56;
      }

      else
      {
        v79 = v55;
      }

      v37[v79] = 1;
LABEL_60:
      if (++v38 == v155)
      {
        goto LABEL_61;
      }
    }

    v57 = (v167[0] + 32 * v55);
    v58 = v166;
LABEL_55:
    sub_236725158(v57, v58);
    goto LABEL_56;
  }

LABEL_61:
  v158 = &v37[(v152 + 7) & 0xFFFFFFFFFFFFFFF8];
  v80 = *(v5 + 168);
  if (v80 >= 1)
  {
    for (i = 0; i != v80; ++i)
    {
      if ((v37[i] & 1) == 0)
      {
        v82 = (*(v5 + 240) + 8 * i);
        v84 = *v82;
        v83 = v82[1];
        v62 = v83 <= v84;
        v85 = v83 - v84;
        if (!v62)
        {
          v86 = (*(v5 + 248) + 4 * v84);
          while (1)
          {
            v87 = *v86++;
            if (v37[v87] == 1)
            {
              break;
            }

            if (!--v85)
            {
              goto LABEL_70;
            }
          }

          v37[i] = 1;
        }
      }

LABEL_70:
      ;
    }
  }

  v156 = v145 & 0x3FFFFFFFFFFFFFFFLL;
  v88 = v80;
  v89 = 8 * v80;
  v90 = &v158[v89];
  bzero(v158, v89);
  v91 = *(v5 + 52);
  if (v91 != 1)
  {
    _X0 = 0;
    LODWORD(v170[0]) = *(v5 + 52);
    atomic_store(0, v170 + 1);
    atomic_store(0, (v170 | 0xC));
    atomic_store(0, v171);
    v109 = v172;
    do
    {
      _X5 = v173;
      __asm { CASPAL          X4, X5, X0, X1, [X19] }

      _ZF = _X4 == v109;
      v109 = _X4;
    }

    while (!_ZF);
    v174 = v144 + 104;
    v175 = &v158[v89];
    v176 = 0;
    v116 = &v90[40 * *(v5 + 336) + (((v144 + 104) * v91 + 7) & 0xFFFFFFFFFFFFFFF8)];
    __str[0] = v151;
    *&__str[8] = a4;
    v178 = v5;
    LODWORD(v179) = v169;
    v180 = v153;
    v181 = &v37[(v152 + 7) & 0xFFFFFFFFFFFFFFF8];
    v182 = 0;
    v183 = &v90[((v144 + 104) * v91 + 7) & 0xFFFFFFFFFFFFFFF8];
    v184 = sub_2367921D4(256, v116 + 16 * v91);
    v185 = v117;
    __p[0] = 0;
    __p[1] = 0;
    v187 = 0;
    v188 = v116;
    v189 = v37;
    v190 = v152;
    v191 = v13;
    v192 = v145 & 0x3FFFFFFFFFFFFFFFLL;
    v193 = v16;
    v194 = v145 & 0x3FFFFFFFFFFFFFFFLL;
    v195 = v168;
    v196 = v167;
    v176 = __str;
    if (*(v5 + 52))
    {
      v118 = 0;
      v119 = 0;
      do
      {
        *(v116 + v118 + 8) = *(v5 + 392);
        v120 = (*(v5 + 24))();
        v116 = v188;
        *(v188 + v118) = v120;
        ++v119;
        v118 += 16;
      }

      while (v119 < *(v5 + 52));
    }

    if (*(v5 + 336) >= 1)
    {
      _X22 = 0;
      v122 = 0;
      v123 = 0;
      do
      {
        v124 = v123;
        v62 = *(*(v5 + 176) + 4 * *(*(v5 + 344) + 4 * v123++)) < *(*(v5 + 112) + 4 * (v122 + 1));
        if (!v62)
        {
          ++v122;
        }

        v125 = *(*(v5 + 368) + 8 * v123) - *(*(v5 + 368) + 8 * v124);
        v126 = &v183[40 * v124];
        atomic_store(v125, v126);
        *(v126 + 2) = v124;
        *(v126 + 3) = v122;
        *(v126 + 2) = sub_23672A17C;
        if (!v125)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X27] }

          *(v126 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v126 + 4) = 0;
          v130 = _X0 & 1;
          _X2 = v130 | v126;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X27] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X22, X23, [X10] }

            *(v126 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v126 + 4) = 0;
            v130 = _X0 & 1;
            _X2 = v130 | v126;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v130)
          {
            __ulock_wake();
          }
        }
      }

      while (v123 < *(v5 + 336));
    }

    v137 = sub_2366FCD2C(v170, 1);
    v107 = v137;
    if (!v137)
    {
      if (*(v5 + 52))
      {
        v138 = 0;
        v139 = 0;
        do
        {
          (*(v5 + 32))(*(v188 + v138));
          ++v139;
          v138 += 16;
        }

        while (v139 < *(v5 + 52));
      }

      v107 = -3;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v137)
    {
      goto LABEL_108;
    }

LABEL_107:
    (*(v5 + 32))(v13);
    v107 = 0;
    goto LABEL_108;
  }

  v92 = *(v5 + 56);
  v146 = (4 * v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  *__str = &v158[v89];
  *&__str[8] = v92 & 0x3FFFFFFFFFFFFFFFLL;
  LODWORD(v178) = 1;
  bzero(v90, 4 * v92);
  v93 = *(v5 + 168);
  v170[0] = &v90[v146];
  v170[1] = v93 & 0x3FFFFFFFFFFFFFFFLL;
  v171[0] = 1;
  v148 = &v90[v146];
  v94 = 4 * v93;
  bzero(&v90[v146], 4 * v93);
  v166[0] = 0;
  v166[1] = 0;
  v165[0] = 0;
  v165[1] = 0;
  v164[0] = 0;
  v164[1] = 0;
  v163[0] = 0;
  v163[1] = 0;
  v162[0] = 0;
  v162[1] = 0;
  v95 = (*(v5 + 24))(*(v5 + 392));
  v96 = *(v5 + 392);
  v161[0] = v95;
  v161[1] = v96;
  v97 = v153;
  v98 = (v153 + 136);
  LODWORD(v96) = atomic_load((v153 + 136));
  v160 = v96;
  v99 = (v97 + 140);
  v100 = atomic_load((v97 + 140));
  v159 = v100;
  if (*(v5 + 168) < 1)
  {
LABEL_81:
    atomic_store(v160, v98);
    atomic_store(v100, v99);
    (*(v5 + 32))(v163[0]);
    (*(v5 + 32))(v162[0]);
    (*(v5 + 32))(v166[0]);
    (*(v5 + 32))(v165[0]);
    (*(v5 + 32))(v164[0]);
    goto LABEL_107;
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  v150 = v88;
  v104 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = v143 - v104 - (((v152 + 7) & 0xFFFFFFFFFFFFFFF8) + 2 * v142 + v89 + v146);
  v106 = &v148[v104];
  while (1)
  {
    if (*(*(v5 + 176) + 4 * v102) >= *(*(v5 + 112) + 4 * (v103 + 1)))
    {
      ++v103;
    }

    if (v37[v102] == 1 || (sub_23672524C(v102, a4, v151, v5, v169, v153, v168, v167, v163, v162, v166, v165, v164, __str, v37, v152, v106), (v37[v102] & 1) != 0))
    {
      *(v167[0] + v101 + 8) = *(v167[0] + v101);
      *(v168[0] + v101 + 8) = *(v168[0] + v101);
      v107 = sub_236727534(v102, v103, a4, v151, v5, v169, v153, &v160, &v159, v158, v150, v166, v165, v164, __str, v170, v37, v152, v13, v156, v16, v156, v106, v105, v161, 0, 0);
      if (v107)
      {
        break;
      }
    }

    ++v102;
    v101 += 32;
    if (v102 >= *(v5 + 168))
    {
      v100 = v159;
      v98 = (v153 + 136);
      v99 = (v153 + 140);
      goto LABEL_81;
    }
  }

  (*(v5 + 32))(v163[0]);
  (*(v5 + 32))(v162[0]);
  (*(v5 + 32))(v166[0]);
  (*(v5 + 32))(v165[0]);
  (*(v5 + 32))(v164[0]);
  (*(v5 + 32))(v13);
LABEL_108:
  *__str = v167;
  sub_23672A890(__str);
  *__str = v168;
  sub_23672A890(__str);
  *a1 = v107;
  result = sub_23671E4F8(a1);
  v141 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_236721ACC(int a1, int a2, uint64_t a3, int *a4, uint64_t a5, int *a6)
{
  if (a1 < 1)
  {
    return 0;
  }

  v7 = 0;
  result = 0;
  v9 = 0;
  do
  {
    v10 = a4[v7];
    if (a2 < 1)
    {
      goto LABEL_7;
    }

    v11 = (a5 + v10 * a2);
    v12 = 1;
    v13 = a2;
    do
    {
      v14 = *v11++;
      v12 &= v14;
      --v13;
    }

    while (v13);
    if (v12)
    {
LABEL_7:
      v15 = result;
      result = (result + 1);
      v16 = a6;
    }

    else
    {
      v15 = v9++;
      v16 = a4;
    }

    v16[v15] = v10;
    ++v7;
  }

  while (v7 != a1);
  if (result >= 1)
  {
    v17 = result;
    v18 = &a4[v9];
    do
    {
      v19 = *a6++;
      *v18++ = v19;
      --v17;
    }

    while (v17);
    for (i = 0; i != a1; ++i)
    {
      *(a3 + 4 * a4[i]) = i;
    }
  }

  return result;
}

void *sub_236721B8C(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = result;
  v91 = *MEMORY[0x277D85DE8];
  v9 = result[1];
  v10 = *(v9 + 64);
  v11 = *(v10 + 2);
  v12 = *(v11 + 344);
  v13 = *(v12 + 4 * a2);
  v14 = (a2 << 32) + 0x100000000;
  v15 = *(v12 + (v14 >> 30));
  v16 = *(v10 + 6);
  v17 = 16 * (v16 * v16) * *(*(v11 + 384) + 8 * a2);
  if ((*v10 & 0xFE) == 0x52)
  {
    v17 += 8 * v16 * (*(*(v11 + 176) + 4 * v15) - *(*(v11 + 176) + 4 * v13));
  }

  v18 = result[5];
  v19 = *(v9 + 48);
  v20 = *(v11 + 168);
  v21 = (v17 + 24 * (v15 - v13) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  v22 = *(v10 + 4);
  v23 = *(v10 + 5);
  v24 = *(v22 + 120) + *(v22 + 128);
  v25 = *(v10 + 6);
  v26 = (v25 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v24 < v26)
  {
LABEL_4:
    v76 = 0;
LABEL_5:
    v27 = *(v11 + 40);
    if (!v27)
    {
      v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v35)
      {
        sub_23672B110(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      _SparseTrap();
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    strcpy(v77, "Failed to acquire chunkFactorStorage from pool\n");
    v78 = 0u;
    result = v27(v77);
    _X2 = 0;
    v44 = v8[1];
    atomic_store(0xFFFFFFFD, (v44 + 16));
    atomic_store(1u, (v44 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      result = __ulock_wake();
    }

    goto LABEL_22;
  }

  v28 = *(v10 + 6);
  atomic_compare_exchange_strong_explicit(v10 + 6, &v28, v26, memory_order_relaxed, memory_order_relaxed);
  if (v28 != v25)
  {
    do
    {
      v29 = (v28 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v24 < v29)
      {
        goto LABEL_4;
      }

      v25 = v28;
      v30 = v28;
      atomic_compare_exchange_strong_explicit(v10 + 6, &v30, v29, memory_order_relaxed, memory_order_relaxed);
      _ZF = v30 == v28;
      v28 = v30;
    }

    while (!_ZF);
  }

  v76 = v25;
  if (!v25)
  {
    goto LABEL_5;
  }

  v77[0] = 0;
  v75 = 0;
  if (v15 <= v13)
  {
    v34 = 0;
LABEL_24:
    v51 = v14 >> 32;
    v52 = *(v22 + 136);
    while (1)
    {
      v53 = *(v10 + 4);
      if (v34 <= v52)
      {
        break;
      }

      v54 = v52;
      atomic_compare_exchange_strong_explicit((v53 + 136), &v54, v34, memory_order_relaxed, memory_order_relaxed);
      _ZF = v54 == v52;
      v52 = v54;
      if (_ZF)
      {
        v53 = *(v10 + 4);
        break;
      }
    }

    v55 = *(v53 + 140);
    v56 = v75;
    do
    {
      if (v56 <= v55)
      {
        break;
      }

      v57 = v55;
      atomic_compare_exchange_strong_explicit((*(v10 + 4) + 140), &v57, v56, memory_order_relaxed, memory_order_relaxed);
      _ZF = v57 == v55;
      v55 = v57;
    }

    while (!_ZF);
    v58 = *(v10 + 2);
    v59 = *(v58 + 352);
    v60 = *(v59 + 8 * a2);
    if (v60 < *(v59 + 8 * v51))
    {
      do
      {
        v61 = (*(v10 + 7) + 40 * *(*(v58 + 360) + 4 * v60));
        if (atomic_fetch_add_explicit(v61, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v62 = v8[2];
          if (v62)
          {
            v63 = v8[1] + 32;
            v64 = v8[3];
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v62 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v62 + 32) = 0;
              _X2 = _X4 & 1 | v62;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          v8[2] = v61;
          v8[3] = 0;
        }

        ++v60;
        v58 = *(v10 + 2);
      }

      while (v60 < *(*(v58 + 352) + 8 * v51));
    }
  }

  else
  {
    v73 = (a2 << 32) + 0x100000000;
    v74 = a2;
    v32 = HIDWORD(a2);
    v33 = v25 + v21;
    while (1)
    {
      result = sub_23672201C(v13, v32, *(v10 + 1), *v10, *(v10 + 2), *(v10 + 6), *(v10 + 4), a8, v23, v20, &v76, v33, v77, &v75, v18, v19, *(v10 + 13), v8, v10);
      if (result)
      {
        break;
      }

      v13 = (v13 + 1);
      if (v15 == v13)
      {
        v22 = *(v10 + 4);
        v34 = v77[0];
        v14 = v73;
        LODWORD(a2) = v74;
        goto LABEL_24;
      }
    }

    _X2 = 0;
    v70 = v8[1];
    atomic_store(result, (v70 + 16));
    atomic_store(1u, (v70 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      result = __ulock_wake();
    }
  }

LABEL_22:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_236721F94(uint64_t result)
{
  v1 = *(*(*(result + 8) + 64) + 32);
  v2 = *(v1 + 128);
  if (v2 >= 134217729)
  {
    v3 = *(v1 + 120);
    v4 = v3 + v2;
    v5 = (v3 + 0x8000000);
    v6 = v2 - 0x8000000;
    do
    {
      if (v6 >= 0x8000000)
      {
        v7 = 0x8000000;
      }

      else
      {
        v7 = v6;
      }

      result = madvise(v5, v7, 3);
      v5 += 0x8000000;
      v6 -= 0x8000000;
    }

    while (v5 < v4);
  }

  return result;
}

uint64_t sub_23672201C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9, int a10, unint64_t *a11, unint64_t a12, int *a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a6;
  v239 = *MEMORY[0x277D85DE8];
  v205 = *(&off_28499C270 + a4 - 81);
  v21 = *(a5 + 56);
  v22 = 4 * v21;
  v23 = (4 * v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v212 = a15 + v23;
  v24 = (a15 + v23 + v23);
  v25 = (v24 + v23);
  v26 = (v24 + v23 + v23);
  v27 = (v26 + v23);
  v28 = v26 + v23 + v23;
  if (a4 != 82)
  {
    v22 = 0;
  }

  v204 = v22;
  v228 = 0;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  v29 = a1;
  v30 = a1 + 1;
  v31 = *(a5 + 184);
  v32 = *(*(a5 + 176) + 4 * v30) - *(*(a5 + 176) + 4 * a1);
  v33 = v32 * a6;
  DWORD1(v223) = v32 * a6;
  v34 = *(a7[14] + 8 * a1);
  if (a4 != 82)
  {
    v28 = 0;
  }

  v203 = v28;
  *&v224 = v34 + 8;
  v35 = 8 * v30;
  v36 = 8 * a1;
  v37 = (v32 + *(v31 + 8 * v30) - *(v31 + v36)) * a6;
  v221 = v37;
  v38 = (*(*(a5 + 200) + 8 * v30) - *(*(a5 + 200) + v36)) * a6;
  v39 = v38 + v33;
  v222 = v38 + v33;
  v40 = v34 + 8 + 16 * v37 * v33;
  *(&v224 + 1) = v37;
  *&v225 = v40;
  *(&v225 + 1) = v38;
  v215 = a7;
  if (a4 == 81 || (*&v226 = v40 + 16 * v38 * v33, *(&v226 + 1) = v226 + 4 * v33, a4 != 83))
  {
    v54 = 0;
    v43 = 0;
    v47 = 0;
    v46 = 0;
    v199 = 0;
    v200 = 0;
    v55 = 0;
    v45 = 0;
    __src = 0;
    v42 = 0;
  }

  else
  {
    v41 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    sub_236722FDC(a1, 1, 83, a5, a6, a7, a9, v229, v25, v41, v27, v41);
    v42 = *&v229[8];
    v200 = *&v229[16];
    __src = *v229;
    v199 = *&v229[24];
    sub_236722FDC(a1, 2, 83, a5, v19, v215, a9, v229, v24, v41, v26, v41);
    v43 = 0;
    v45 = *&v229[8];
    v44 = *v229;
    v46 = *&v229[24];
    v47 = *&v229[16];
    a7 = v215;
    *(v215[10] + 4 * v29) = *&v229[8];
    *(v215[11] + 4 * v29) = v42;
    v48 = v215[9];
    *(v48 + 4 * v29) = 0;
    v49 = (*(a5 + 240) + 8 * v29);
    v50 = *v49;
    v51 = v49[1];
    if (v50 < v51)
    {
      v43 = 0;
      v52 = *(a5 + 256);
      do
      {
        if (*(v52 + v50) == 3)
        {
          v53 = *(*(a5 + 248) + 4 * v50);
          v43 += *(v48 + 4 * v53) + (*(*(a5 + 176) + 4 * v53 + 4) - *(*(a5 + 176) + 4 * v53)) * v19 - *(v215[8] + 4 * v53);
          *(v48 + 4 * v29) = v43;
        }

        ++v50;
      }

      while (v51 != v50);
    }

    LODWORD(v223) = v43;
    v33 = DWORD1(v223);
    v54 = 1;
    v37 = v221;
    v39 = v222;
    v55 = v44;
  }

  v206 = v42;
  v56 = v43 + v33;
  v57 = 16 * ((v39 - v33 + v42) * v56 + ((v37 + v43 + v45) * v56));
  if ((a4 & 0xFE) == 0x52)
  {
    v57 += 4 * (v45 + 2 * v56 + v42);
  }

  v58 = v57 + 8;
  v59 = (a7[14] + 8 * v29);
  v60 = *v59;
  if (*v59)
  {
    v61 = a7[15];
    if (v60 < v61 || v60 >= v61 + a7[16])
    {
      if (*v60 >= v58)
      {
        goto LABEL_22;
      }

      v62 = v55;
      v63 = v46;
      v216 = 8 * v30;
      v64 = v30;
      v65 = v45;
      v66 = v47;
      (*(a5 + 32))();
      v47 = v66;
      v45 = v65;
      v30 = v64;
      a7 = v215;
      v35 = v216;
      v46 = v63;
      v55 = v62;
      v59 = (v215[14] + 8 * v29);
    }

    *v59 = 0;
  }

LABEL_22:
  v67 = a7[14];
  if (!*(v67 + 8 * v29))
  {
    v68 = *a11;
    v69 = (*a11 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v69 <= a12)
    {
      *a11 = v69;
      *(a7[14] + 8 * v29) = v68;
      if (v68)
      {
        **(a7[14] + 8 * v29) = 0;
        goto LABEL_29;
      }
    }

    else
    {
      *(v67 + 8 * v29) = 0;
    }

    v217 = v30;
    v70 = v45;
    v71 = v47;
    v72 = v55;
    v73 = v46;
    v74 = (*(a5 + 24))(v58);
    a7 = v215;
    *(v215[14] + 8 * v29) = v74;
    v75 = *(v215[14] + 8 * v29);
    if (!v75)
    {
      v186 = *(a5 + 40);
      if (!v186)
      {
        v187 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v187)
        {
          sub_23672B14C(v187, v188, v189, v190, v191, v192, v193, v194);
        }

        _SparseTrap();
      }

      memset(v238, 0, sizeof(v238));
      v237 = 0u;
      v236 = 0u;
      v235 = 0u;
      v234 = 0u;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v230 = 0u;
      memset(&v229[58], 0, 48);
      strcpy(v229, "Failed to allocate additional storage for delayed pivots\n");
      v186(v229);
      result = 4294967293;
      goto LABEL_163;
    }

    *v75 = v58;
    v46 = v73;
    v55 = v72;
    v47 = v71;
    v45 = v70;
    v30 = v217;
  }

LABEL_29:
  v197 = v47;
  if (v54)
  {
    v76 = *(a7[9] + 4 * v29);
    v77 = *(a7[10] + 4 * v29);
    v78 = *(a7[11] + 4 * v29);
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
  }

  v196 = v46;
  v79 = a7[14];
  v213 = (*(v79 + 8 * v29) + 8);
  v80 = *(a5 + 176);
  v81 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
  v82 = v81 + v76;
  v83 = v81 + v76;
  if (v54)
  {
    v83 = *(a7[8] + 4 * v29);
  }

  v84 = *(a5 + 184);
  v85 = *(a5 + 200);
  v86 = *(v85 + v35);
  v87 = v82 + v77 + (*(v84 + v35) - *(v84 + 8 * v29)) * v19;
  v88 = (v86 - *(v85 + 8 * v29)) * v19;
  v89 = &v213[16 * v87 * v82];
  v90 = v88 + v78;
  v221 = v87;
  v222 = v82 + v78 + v88;
  LODWORD(v223) = v76;
  DWORD1(v223) = v81 + v76;
  *(&v223 + 1) = v83;
  if (a4 == 81)
  {
    v91 = 0;
  }

  else
  {
    v91 = &v89[16 * v90 * v82];
  }

  if (a4 == 81)
  {
    v92 = 0;
  }

  else
  {
    v92 = &v89[16 * (v88 + v78) * v82 + 4 * v82 + 4 * v77];
  }

  *&v224 = v213;
  *(&v224 + 1) = v87;
  v93 = &v91[4 * v82];
  if (v77 <= 0)
  {
    v93 = 0;
  }

  v201 = &v213[16 * v87 * v82];
  v202 = v90;
  *&v225 = v201;
  *(&v225 + 1) = v90;
  v94 = v92 + 4 * v82;
  *&v226 = v91;
  *(&v226 + 1) = v92;
  if (v78 <= 0)
  {
    v94 = 0;
  }

  *&v227 = __PAIR64__(v78, v77);
  *(&v227 + 1) = v93;
  v228 = v94;
  if (a4 != 81 && v81 >= 1)
  {
    v95 = 0;
    do
    {
      *&v91[4 * v95] = v95 + *(v80 + 4 * v29) * v19;
      *(v92 + 4 * v95) = v95 + *(v80 + 4 * v29) * v19;
      ++v95;
      v76 = v223;
    }

    while (v95 < SDWORD1(v223) - v223);
  }

  v218 = v54;
  if (v76 >= 1)
  {
    v96 = *(a5 + 240);
    v97 = *(v96 + 8 * v29);
    v98 = *(v96 + 8 * v30);
    if (v97 < v98)
    {
      v99 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
      v100 = (v92 + 4 * v99);
      v101 = &v91[4 * v99];
      v102 = *(a5 + 256);
      do
      {
        if (*(v102 + v97) == 3)
        {
          v103 = *(*(a5 + 248) + 4 * v97);
          if (v54)
          {
            v104 = *(a7[9] + 4 * v103);
            v105 = *(a7[10] + 4 * v103);
            v106 = *(a7[11] + 4 * v103);
          }

          else
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
          }

          v107 = v104 + (*(v80 + 4 * (v103 + 1)) - *(v80 + 4 * v103)) * v19;
          v108 = v107;
          if (v54)
          {
            v108 = *(a7[8] + 4 * v103);
          }

          if (a4 == 81)
          {
            v109 = 0;
            v110 = 0;
          }

          else
          {
            v54 = v218;
            v109 = *(v79 + 8 * v103) + 8 + 16 * (v107 + v105 + (*(v84 + 8 * (v103 + 1)) - *(v84 + 8 * v103)) * v19) * v107 + 16 * (v106 + (*(v85 + 8 * (v103 + 1)) - *(v85 + 8 * v103)) * v19) * v107;
            v110 = v109 + 4 * v107 + 4 * v105;
          }

          if (v107 != *(a7[8] + 4 * v103) && v108 < v107)
          {
            v112 = (v109 + 4 * v108);
            v113 = (v110 + 4 * v108);
            v114 = v108 - v107;
            do
            {
              v116 = *v112++;
              v115 = v116;
              if (v116 < 0)
              {
                v115 = -v115;
              }

              *v101++ = v115;
              v118 = *v113++;
              v117 = v118;
              if (v118 < 0)
              {
                v117 = -v117;
              }

              *v100++ = v117;
            }

            while (!__CFADD__(v114++, 1));
          }
        }

        ++v97;
      }

      while (v97 != v98);
    }
  }

  if (v45)
  {
    memcpy(&v91[4 * SDWORD1(v223)], v55, 4 * v45);
  }

  if (v206)
  {
    memcpy((v92 + 4 * SDWORD1(v223)), __src, 4 * v206);
  }

  v120 = v221;
  if (v221 >= 1)
  {
    v121 = 0;
    v122 = *(&v227 + 1);
    v123 = v226;
    do
    {
      if (v121 >= SDWORD1(v223))
      {
        v125 = v120 - v227;
        if (v121 >= v125)
        {
          v124 = *(v122 - 4 * v125 + 4 * v121);
        }

        else
        {
          v124 = (v121 - DWORD1(v223)) % v19 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v29) + 4 * ((v121 - DWORD1(v223)) / v19)) * v19;
        }
      }

      else if (v123)
      {
        v124 = *(v123 + 4 * v121);
      }

      else
      {
        v124 = v121 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v124 < 0)
      {
        v124 = -v124;
      }

      *(a15 + 4 * v124) = v121++;
      v120 = v221;
    }

    while (v121 < v221);
  }

  v126 = v222;
  if (v222 >= 1)
  {
    v127 = 0;
    v128 = v228;
    v129 = v226;
    do
    {
      if (v127 >= SDWORD1(v223))
      {
        v131 = v126 - SDWORD1(v227);
        if (v127 >= v131)
        {
          v130 = *(v128 - 4 * v131 + 4 * v127);
        }

        else
        {
          v130 = (v127 - DWORD1(v223)) % v19 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v29) + 4 * ((v127 - DWORD1(v223)) / v19)) * v19;
        }
      }

      else if (v129)
      {
        v130 = *(*(&v129 + 1) + 4 * v127);
      }

      else
      {
        v130 = v127 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v130 < 0)
      {
        v130 = -v130;
      }

      *(v212 + 4 * v130) = v127++;
      v126 = v222;
    }

    while (v127 < v222);
    v120 = v221;
  }

  v132 = 16 * SDWORD1(v223);
  bzero(v213, v132 * v87);
  bzero(v201, v132 * v202);
  sub_2367234E4(a2, a1, SDWORD1(v223), a3, a5, v213, v87, v201, v202, a15, v212, v215[12], v215[13]);
  if ((v126 - DWORD1(v223)) * (v120 - DWORD1(v223)) <= 0)
  {
    v134 = 0;
  }

  else
  {
    v133 = 5 * (SDWORD1(v227) + v227);
    v134 = (*(a5 + 24))(v133 + 152);
    sub_236724DE4(v134, &v221, v197, v196, v200, v199, (v134 + 120), v133 + 32, a5);
    v135 = *(v134 + 16) * *(v134 + 8);
    v136 = (*(*v134 + 24))(16 * v135);
    *(v134 + 96) = v136;
    *(v134 + 104) = v135;
    bzero(v136, 16 * v135);
  }

  *(a9 + 8 * v29) = v134;
  v137 = (*(a5 + 240) + 8 * v29);
  v138 = *v137;
  v139 = v215;
  v140 = v218;
  if (*v137 < v137[1])
  {
    v208 = v134;
    v210 = v29;
    v214 = v19;
    do
    {
      v141 = *(*(a5 + 248) + 4 * v138);
      memset(&v229[16], 0, 56);
      if (v140)
      {
        v142 = *(v139[9] + 4 * v141);
        v143 = *(v139[10] + 4 * v141);
        v144 = *(v139[11] + 4 * v141);
      }

      else
      {
        v142 = 0;
        v143 = 0;
        v144 = 0;
      }

      v145 = *(v139[14] + 8 * v141) + 8;
      *&v229[8] = v142;
      *&v229[24] = v145;
      *&v229[72] = __PAIR64__(v144, v143);
      *&v229[12] = v142 + (*(*(a5 + 176) + 4 * (v141 + 1)) - *(*(a5 + 176) + 4 * v141)) * v19;
      v146 = *&v229[12];
      if (v140)
      {
        v146 = *(v139[8] + 4 * v141);
      }

      *&v229[16] = v146;
      v147 = 8 * (v141 + 1);
      *v229 = *&v229[12] + v143 + (*(*(a5 + 184) + v147) - *(*(a5 + 184) + 8 * v141)) * v19;
      v148 = (*(*(a5 + 200) + v147) - *(*(a5 + 200) + 8 * v141)) * v19;
      *&v229[4] = *&v229[12] + v144 + v148;
      v149 = v145 + 16 * *v229 * *&v229[12];
      *&v229[32] = *v229;
      *&v229[40] = v149;
      *&v229[48] = v148 + v144;
      if (a4 == 81)
      {
        v151 = 0;
        v150 = 0;
      }

      else
      {
        v150 = v149 + 16 * (v148 + v144) * *&v229[12];
        v151 = v150 + 4 * *&v229[12] + 4 * v143;
        *&v229[56] = v150;
        *&v229[64] = v151;
      }

      v152 = v150 + 4 * *&v229[12];
      if (v143 <= 0)
      {
        v153 = 0;
      }

      else
      {
        v153 = v152;
      }

      v154 = v151 + 4 * *&v229[12];
      if (v144 <= 0)
      {
        v155 = 0;
      }

      else
      {
        v155 = v154;
      }

      *&v229[80] = v153;
      *&v229[88] = v155;
      v156 = *(a9 + 8 * v141);
      if (!v156)
      {
        goto LABEL_142;
      }

      v157 = *(*(a5 + 264) + 4 * v138) * v19;
      v158 = *(*(a5 + 272) + 4 * v138) * v19;
      v159 = *(*(a5 + 256) + v138);
      switch(v159)
      {
        case 3:
          v177 = sub_236724410(&v221, v141, v229, v156, a5, v214, v157, v158, a15, v212);
          v19 = v214;
          sub_23671CEF0(v177, &v221, v134, v141, v229, v156, a5, v214, v157, v158, a15, v212);
          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_140;
          }

          break;
        case 2:
          v170 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v220, *(a9 + 8 * v141));
          v171 = v170 * v19;
          sub_236723DC0(a1, &v221, v141, v229, v156, a5, v214, v157, v158, v171, a15, v212);
          v19 = v214;
          v134 = v208;
          sub_23671C5FC(a1, &v221, v208, v141, v229, v156, a5, v214, v157, v158, v171, a15, v212);
          add_explicit = atomic_fetch_add_explicit((v156 + 24), -v171, memory_order_release);
          if (*(v220 + 112) == 1)
          {
            v173 = (v220 + 113);
            atomic_store(0, (v220 + 113));
            std::__cxx_atomic_notify_one(v173);
          }

          v139 = v215;
          v29 = v210;
          v140 = v218;
          if (add_explicit != v171)
          {
            goto LABEL_142;
          }

          v174 = *(*v156 + 32);
          v176 = *(v156 + 96);
          v175 = (v156 + 96);
          v174(v176);
          *v175 = 0;
          v175[1] = 0;
          v139 = v215;
          v140 = v218;
          if (*&v229[12] != *&v229[16] || *&v229[72])
          {
            goto LABEL_142;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (!v168)
          {
            break;
          }

LABEL_140:
          (*(*v167 + 32))(v168);
          *v169 = 0;
          v169[1] = 0;
          v178 = *(a9 + 8 * v141);
          break;
        case 1:
          v160 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v220, *(a9 + 8 * v141));
          v161 = v160 * v19;
          sub_23672392C(a1, &v221, v141, v229, v156, a5, v214, v157, v158, v161, a15, v212);
          v19 = v214;
          v134 = v208;
          sub_23671BEAC(a1, &v221, v208, v141, v229, v156, a5, v214, v157, v158, v161, a15, v212);
          v162 = atomic_fetch_add_explicit((v156 + 28), -v161, memory_order_release);
          if (*(v220 + 112) == 1)
          {
            v163 = (v220 + 113);
            atomic_store(0, (v220 + 113));
            std::__cxx_atomic_notify_one(v163);
          }

          v139 = v215;
          v29 = v210;
          v140 = v218;
          if (v162 != v161)
          {
            goto LABEL_142;
          }

          v164 = *(*v156 + 32);
          v166 = *(v156 + 96);
          v165 = (v156 + 96);
          v164(v166);
          *v165 = 0;
          v165[1] = 0;
          v139 = v215;
          v140 = v218;
          if (*&v229[12] != *&v229[16] || *&v229[72])
          {
            goto LABEL_142;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_140;
          }

          break;
        default:
          goto LABEL_142;
      }

      (*(a5 + 32))();
      *(a9 + 8 * v141) = 0;
      v139 = v215;
      v140 = v218;
LABEL_142:
      ++v138;
    }

    while (v138 < *(*(a5 + 240) + 8 * v29 + 8));
  }

  if (v134)
  {
    v179 = *(v134 + 96);
    v180 = *(v134 + 16);
  }

  else
  {
    v179 = 0;
    v180 = 0;
  }

  if (a19)
  {
    v181 = a19 + 64;
  }

  else
  {
    v181 = 0;
  }

  v182 = v205(v221, v222, DWORD1(v223), v224, *(&v224 + 1), v225, *(&v225 + 1), v179, v180, v226, *(&v226 + 1), a5, v139, v203, v204, a17, a18, v181);
  v183 = *a13;
  if (*a13 <= v182)
  {
    v183 = v182;
  }

  *a13 = v183;
  v184 = *a14;
  if (*a14 <= v222)
  {
    v184 = v222;
  }

  *a14 = v184;
  if (v218)
  {
    *(v215[8] + 4 * v29) = v182;
  }

  else if (v182 != DWORD1(v223))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_163;
  }

  result = 0;
LABEL_163:
  v195 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_236722FC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

void sub_236722FDC(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, _DWORD *a9, unint64_t a10, _DWORD *a11, uint64_t a12)
{
  v12 = a11;
  v13 = (a4[30] + 8 * a1);
  v14 = *v13;
  if (*v13 < v13[1])
  {
    v17 = 0;
    v18 = 0;
    v83 = a1;
    v19 = a9;
    v20 = a11;
    v80 = a6;
    v78 = a2;
    v79 = a3;
    while (1)
    {
      v21 = *(a4[32] + v14);
      if ((v21 & a2) != 0)
      {
        break;
      }

LABEL_61:
      if (++v14 >= *(a4[30] + 8 * v83 + 8))
      {
        goto LABEL_64;
      }
    }

    v22 = *(a4[31] + 4 * v14);
    if (a3 == 83)
    {
      v23 = *(a6[9] + 4 * v22);
      v24 = *(a6[10] + 4 * v22);
      v25 = *(a6[11] + 4 * v22);
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    v26 = a4[22];
    v27 = *(v26 + 4 * (v22 + 1));
    v28 = *(v26 + 4 * v22);
    v29 = v23 + (v27 - v28) * a5;
    if (a3 == 83)
    {
      v30 = *(a6[8] + 4 * v22);
      v31 = v29;
    }

    else
    {
      v31 = v29;
      if (a3 == 81)
      {
        v32 = 0;
        v33 = 0;
        v30 = v29;
        goto LABEL_13;
      }

      v30 = v29;
    }

    v33 = *(a6[14] + 8 * v22) + 8 + 16 * v31 * (v29 + v24 + (*(a4[23] + 8 * (v22 + 1)) - *(a4[23] + 8 * v22)) * a5) + 16 * v31 * (v25 + (*(a4[25] + 8 * (v22 + 1)) - *(a4[25] + 8 * v22)) * a5);
    v32 = v33 + 4 * v31 + 4 * v24;
LABEL_13:
    if (v24 <= 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = (v33 + 4 * v31);
    }

    v35 = (v32 + 4 * v31);
    if (v25 <= 0)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    if (v21 == 3)
    {
      v38 = 0;
      v37 = 0;
    }

    else
    {
      v37 = v29 - *(a6[8] + 4 * v22);
      if (v21 == 2)
      {
        v38 = (v33 + 4 * v30);
      }

      else if (v21 == 1)
      {
        v38 = (v32 + 4 * v30);
      }

      else
      {
        v38 = 0;
      }
    }

    v39 = *(a7 + 8 * v22);
    v40 = *(a4[38] + 4 * v28);
    if (a2 == 1)
    {
      if (v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = v25 == 0;
      }

      if (!v41)
      {
        v72 = *(a4[38] + 4 * v28);
        v74 = v38;
        v76 = v37;
        v45 = v25;
        v46 = v25;
        v47 = v17;
        v48 = v18;
        v70 = v25;
        v49 = v19;
        v50 = v20;
        sub_236724CB4(v84, v46);
        if (v70 >= 1)
        {
          v51 = 0;
          v52 = a4[38];
          v53 = v84[0];
          do
          {
              ;
            }

            v53[v51++] = i;
          }

          while (v51 != v45);
        }

        v12 = a11;
        sub_236724994(v49, v47, v50, v48, a9, a10, a11, &v85, v76, v74, v72, v70, v36, v84[0], a1, a4);
LABEL_53:
        v19 = v85;
        v17 = v86;
        v20 = v87;
        v18 = v88;
        if (v84[0])
        {
          v84[1] = v84[0];
          v65 = v86;
          v66 = v88;
          v67 = v85;
          v68 = v87;
          operator delete(v84[0]);
          v20 = v68;
          v19 = v67;
          v18 = v66;
          v17 = v65;
        }

        goto LABEL_60;
      }

      if (v39)
      {
        v42 = *(v39 + 80);
      }

      else
      {
        v42 = 0;
      }

      sub_236724994(v19, v17, v20, v18, a9, a10, v12, &v85, v37, v38, v40, v25, v36, v42, a1, a4);
    }

    else
    {
      if (v39)
      {
        v43 = 1;
      }

      else
      {
        v43 = v24 == 0;
      }

      if (!v43)
      {
        v73 = *(a4[38] + 4 * v28);
        v75 = v38;
        v77 = v37;
        v55 = v24;
        v56 = v24;
        v57 = v17;
        v58 = v18;
        v59 = v19;
        v71 = v24;
        v60 = v20;
        sub_236724CB4(v84, v56);
        if (v71 >= 1)
        {
          v61 = 0;
          v62 = a4[38];
          v63 = v84[0];
          do
          {
              ;
            }

            v63[v61++] = j;
          }

          while (v61 != v55);
        }

        v12 = a11;
        sub_236724994(v59, v57, v60, v58, a9, a10, a11, &v85, v77, v75, v73, v71, v34, v84[0], a1, a4);
        goto LABEL_53;
      }

      if (v39)
      {
        v44 = *(v39 + 64);
      }

      else
      {
        v44 = 0;
      }

      sub_236724994(v19, v17, v20, v18, a9, a10, v12, &v85, v37, v38, v40, v24, v34, v44, a1, a4);
    }

    v19 = v85;
    v17 = v86;
    v20 = v87;
    v18 = v88;
LABEL_60:
    a6 = v80;
    a2 = v78;
    a3 = v79;
    goto LABEL_61;
  }

  v17 = 0;
  v18 = 0;
  v19 = a9;
  v20 = a11;
LABEL_64:
  *a8 = v19;
  a8[1] = v17;
  a8[2] = v20;
  a8[3] = v18;
}

void sub_2367234C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367234E4(int a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *(a4 + 28);
  v14 = (v13 * v13);
  v15 = *(a5[14] + 4 * a1 + 4);
  v16 = a5[22];
  v17 = (v16 + 4 * a2);
  result = *v17;
  v19 = result;
  if (a12)
  {
    v20 = v17[1];
    if (result < v20)
    {
      v102 = a5[20];
      v101 = *(a4 + 8);
      v21 = 16 * v14;
      v22 = 16 * v13;
      v100 = 16 * a7 * v13;
      v23 = 16 * a7;
      v24 = result;
      do
      {
        v25 = (v101 + 8 * *(v102 + 4 * v24));
        v26 = *v25;
        v27 = v25[1];
        if (*v25 < v27)
        {
          v28 = *(a4 + 16);
          v29 = v21 * v26;
          do
          {
            v30 = *(v28 + 4 * v26);
            if ((v30 & 0x80000000) == 0 && v30 < *a4)
            {
              v31 = *(a5[17] + 4 * v30);
              v32 = v31 >= result && v31 < v15;
              if (v32 && v13)
              {
                v33 = 0;
                v34 = v31 * v13;
                v35 = (a12 + 8 * v34);
                v36 = (*(a4 + 32) + v29);
                v37 = (a6 + 16 * *(a10 + 4 * v34));
                do
                {
                  v38 = v13;
                  v39 = v37;
                  v40 = v35;
                  v41 = v36;
                  do
                  {
                    v42 = *v40++;
                    v43 = v42;
                    v44 = *v41++;
                    *v39++ = vmulq_n_f64(vmulq_n_f64(v44, v43), *(a13 + 8 * v24 * v13 + 8 * v33));
                    --v38;
                  }

                  while (v38);
                  ++v33;
                  v36 = (v36 + v22);
                  v37 = (v37 + v23);
                }

                while (v33 != v13);
              }
            }

            ++v26;
            v29 += v21;
          }

          while (v26 != v27);
        }

        ++v24;
        a6 += v100;
      }

      while (v24 != v20);
      v45 = a5[39];
      v46 = *(v45 + 8 * result);
      v47 = a8 - 16 * a3;
      result = 16 * a9 * v13;
      v48 = (a12 + 8 * v19 * v13);
      do
      {
        ++v19;
        v49 = *(v45 + 8 * v19);
        if (v46 < v49)
        {
          v50 = *(a4 + 32);
          v51 = a5[40];
          v52 = a5[41];
          do
          {
            if (v13)
            {
              v53 = 0;
              v54 = (v50 + 16 * *(v52 + 8 * v46) * v14);
              v55 = *(v51 + 4 * v46) * v13;
              v56 = a13 + 8 * v55;
              v57 = (v47 + 16 * *(a11 + 4 * v55));
              do
              {
                v58 = v13;
                v59 = v48;
                v60 = v57;
                v61 = v54;
                do
                {
                  v62 = *v59++;
                  v63 = v62;
                  v64 = *v61++;
                  *v60 = vmulq_n_f64(vmulq_n_f64(v64, v63), *(v56 + 8 * v53));
                  v60 += a9;
                  --v58;
                }

                while (v58);
                ++v53;
                v54 = (v54 + v22);
                ++v57;
              }

              while (v53 != v13);
            }

            ++v46;
          }

          while (v46 != v49);
        }

        v47 += result;
        v48 += v13;
        v46 = v49;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v65 = a2;
    v66 = a2 + 1;
    LODWORD(v67) = *(v16 + 4 * v66);
    if (result < v67)
    {
      v68 = *(a4 + 8);
      v69 = 16 * v14;
      v70 = 16 * a7;
      do
      {
        v71 = *(a5[20] + 4 * v19);
        v72 = (v68 + 8 * v71);
        v73 = *v72;
        if (*v72 < v72[1])
        {
          v74 = v69 * v73;
          do
          {
            v75 = *(*(a4 + 16) + 4 * v73);
            if ((v75 & 0x80000000) == 0 && v75 < *a4)
            {
              v76 = *(a5[17] + 4 * v75);
              v77 = *(a5[22] + 4 * v65);
              v78 = v76 >= v77 && v76 < v15;
              if (v78 && v13)
              {
                v79 = 0;
                v80 = (*(a4 + 32) + v74);
                v81 = (a6 + v70 * v13 * (v19 - v77) + 16 * *(a10 + 4 * v76 * v13));
                do
                {
                  v82 = v13;
                  v83 = v81;
                  v84 = v80;
                  do
                  {
                    v85 = *v84++;
                    *v83++ = v85;
                    --v82;
                  }

                  while (v82);
                  ++v79;
                  v80 += v13;
                  v81 = (v81 + v70);
                }

                while (v79 != v13);
                v68 = *(a4 + 8);
              }
            }

            ++v73;
            v74 += v69;
          }

          while (v73 < *(v68 + 8 * v71 + 8));
          v16 = a5[22];
        }

        ++v19;
        v67 = *(v16 + 4 * v66);
      }

      while (v19 < v67);
      result = *(v16 + 4 * v65);
    }

    if (result < v67)
    {
      v86 = result;
      v87 = a5[39];
      v88 = 16 * a9;
      v89 = a8 - 16 * a3;
      do
      {
        v90 = v86;
        result = *(v87 + 8 * v86++);
        if (result < *(v87 + 8 * v86))
        {
          do
          {
            if (v13)
            {
              v91 = 0;
              v92 = *(a4 + 32) + 16 * *(a5[41] + 8 * result) * v14;
              v93 = (v89 + v88 * v13 * (v90 - *(a5[22] + 4 * v65)) + 16 * *(a11 + 4 * *(a5[40] + 4 * result) * v13));
              do
              {
                v94 = v13;
                v95 = v93;
                v96 = v92;
                do
                {
                  v97 = *v96++;
                  *v95 = v97;
                  v95 = (v95 + v88);
                  --v94;
                }

                while (v94);
                ++v91;
                v92 += 16 * v13;
                ++v93;
              }

              while (v91 != v13);
              v87 = a5[39];
            }

            ++result;
          }

          while (result < *(v87 + 8 * v86));
          v16 = a5[22];
        }
      }

      while (v86 < *(v16 + 4 * v66));
    }
  }

  return result;
}

uint64_t sub_23672392C(uint64_t result, uint64_t a2, int a3, int *a4, void *a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v59 = result;
  v12 = a4[3];
  v61 = a4[1];
  if (v12 + a9 < v61)
  {
    v55 = v12 + a8;
    v13 = v12 + a8 + a10;
    v14 = a4[19];
    v60 = v14 - v61;
    v15 = v12 + a9;
    v57 = v61 - v14;
    for (i = 16 * a9; ; i += 16)
    {
      if (v60 + v15 < 0 || (*(a5[6] + (v60 + v15)) & 1) == 0)
      {
        v17 = v15 - v12;
        if (v15 >= v12)
        {
          v18 = v15 >= v57 ? *(*(a4 + 11) + 4 * (v15 - v57)) : (v15 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v15 - v12) / a7)) * a7;
        }

        else if (v15 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v15) : v15 + *(a6[22] + 4 * a3) * a7;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        if (v20 > v19)
        {
          v21 = v19;
          if ((v19 & 0x80000000) != 0)
          {
            v22 = 0x7FFFFFFF;
          }

          else
          {
            v22 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v19) : v19 + *(a6[22] + 4 * v59) * a7;
          }

          if (v22 == v18)
          {
            if (a10 >= 1)
            {
              v23 = *(a2 + 24) + 16 * *(a2 + 32) * v21;
              v24 = 16 * v55 - 16 * v12;
              v25 = v55;
              v26 = a8;
              do
              {
                if (v25 >= v12)
                {
                  v29 = *a4;
                  v30 = a4[18];
                  if (v25 >= v29 - v30)
                  {
                    if (v25 < v29)
                    {
                      v28 = *(*(a4 + 10) + 4 * (v25 + v30 - v29));
                      if ((v17 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_34;
                    }

LABEL_33:
                    v28 = 0x7FFFFFFF;
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v26 / a7));
                  v32 = v26 % a7;
                }

                else
                {
                  if (v25 < 0)
                  {
                    goto LABEL_33;
                  }

                  v27 = *(a4 + 7);
                  if (v27)
                  {
                    v28 = *(v27 + 4 * v25);
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[22] + 4 * a3);
                  v32 = v12 + v26;
                }

                v28 = v32 + v31 * a7;
                if ((v17 & 0x8000000000000000) == 0)
                {
LABEL_37:
                  if (v25 >= v12)
                  {
                    v33 = (a5[12] + i * a5[2] + v24);
                  }

                  else
                  {
                    v33 = (*(a4 + 5) + 16 * *(a4 + 6) * v25 + 16 * v17);
                  }

                  goto LABEL_40;
                }

LABEL_34:
                v33 = (*(a4 + 3) + 16 * *(a4 + 4) * v15 + 16 * v25);
LABEL_40:
                v34 = *(a11 + 4 * v28);
                *(v23 + 16 * v34) = vaddq_f64(*v33, *(v23 + 16 * v34));
                ++v25;
                ++v26;
                v24 += 16;
              }

              while (v25 < v13);
            }

            v35 = a4[18];
            if (v35 >= 1)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (++v15 >= v61)
      {
        return result;
      }
    }

    v36 = 0;
    v37 = *a4;
    v38 = v37 - v35;
    v39 = a5[4];
    v40 = v37 - v12 - v35;
    v58 = 4 * (v37 - v35);
    v41 = -16 * v12 + 16 * (v37 - v35);
    v42 = v37 - v35;
    while ((*(v39 + v36) & 1) != 0)
    {
LABEL_72:
      ++v42;
      ++v36;
      ++v40;
      v41 += 16;
      if (v38 + v36 >= v37)
      {
        goto LABEL_73;
      }
    }

    v43 = v38 + v36;
    if (v43 >= v12)
    {
      if (v43 >= v38)
      {
        v45 = *(a4 + 10);
        goto LABEL_51;
      }

      v46 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v40 / a7));
      v47 = v40 % a7;
    }

    else
    {
      if (v43 < 0)
      {
        v48 = 0x7FFFFFFF;
        goto LABEL_55;
      }

      v44 = *(a4 + 7);
      if (v44)
      {
        v45 = v44 + v58;
LABEL_51:
        v48 = *(v45 + 4 * v36);
        goto LABEL_55;
      }

      v46 = *(a6[22] + 4 * a3);
      v47 = v38 + v36;
    }

    v48 = v47 + v46 * a7;
LABEL_55:
    v49 = *(a11 + 4 * v48);
    v50 = v49;
    if (v49 >= v20)
    {
      result = (*a2 - *(a2 + 72));
      if (v49 < result)
      {
        result = a6[24];
        v52 = (v49 - v20) % a7 + *(result + 4 * *(a6[23] + 8 * v59) + 4 * ((v49 - v20) / a7)) * a7;
        goto LABEL_65;
      }

      if (*a2 > v49)
      {
        v52 = *(*(a2 + 80) + 4 * (v49 - result));
        goto LABEL_65;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      v51 = *(a2 + 56);
      if (v51)
      {
        v52 = *(v51 + 4 * v49);
      }

      else
      {
        v52 = v49 + *(a6[22] + 4 * v59) * a7;
      }

LABEL_65:
      if (v52 == v48)
      {
        if (v17 < 0)
        {
          v53 = (*(a4 + 3) + 16 * *(a4 + 4) * v15 + 16 * v42);
        }

        else if (v43 >= v12)
        {
          v53 = (a5[12] + i * a5[2] + v41);
        }

        else
        {
          v53 = (*(a4 + 5) + 16 * *(a4 + 6) * v43 + 16 * v17);
        }

        v54 = *(a2 + 24) + 16 * *(a2 + 32) * v21;
        *(v54 + 16 * v50) = vaddq_f64(*v53, *(v54 + 16 * v50));
      }

      goto LABEL_72;
    }

    v52 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_236723DC0(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v82 = result;
  v12 = a4[3];
  if (a10 >= 1)
  {
    v86 = v12 + a8;
    v13 = v12 + a9;
    v14 = *(a2 + 12);
    v15 = 16 * v13 - 16 * v12;
    while (1)
    {
      v16 = v13 - v12;
      if (v13 < v12)
      {
        break;
      }

      v17 = a4[1];
      v18 = v17 - a4[19];
      v19 = __OFSUB__(v13, v18);
      v20 = v13 - v18;
      if (v20 < 0 != v19)
      {
        result = ((v13 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v13 - v12) / a7)) * a7);
      }

      else
      {
        if (v13 >= v17)
        {
          goto LABEL_12;
        }

        result = *(*(a4 + 11) + 4 * v20);
      }

LABEL_14:
      v21 = *(a12 + 4 * result);
      if (v21 < v14)
      {
        result = a4[4];
        if (result < v12)
        {
          v22 = *(a2 + 24) + 16 * *(a2 + 32) * v21;
          if (v16 >= 0)
          {
            v23 = (a4 + 10);
          }

          else
          {
            v23 = (a4 + 6);
          }

          if (v16 >= 0)
          {
            v24 = (a4 + 12);
          }

          else
          {
            v24 = (a4 + 8);
          }

          v25 = *v23;
          v26 = *v24;
          do
          {
            if (result < 0)
            {
              v28 = 0x7FFFFFFF;
            }

            else
            {
              v27 = *(a4 + 7);
              if (v27)
              {
                v28 = *(v27 + 4 * result);
              }

              else
              {
                v28 = result + *(a6[22] + 4 * a3) * a7;
              }
            }

            v29 = *(a11 + 4 * v28);
            if (v16 >= 0)
            {
              v30 = result;
            }

            else
            {
              v30 = v13;
            }

            if (v16 >= 0)
            {
              v31 = v13 - v12;
            }

            else
            {
              v31 = result;
            }

            *(v22 + 16 * v29) = vaddq_f64(*(v25 + 16 * v26 * v30 + 16 * v31), *(v22 + 16 * v29));
            ++result;
          }

          while (v12 != result);
        }

        v32 = *a4;
        if (v86 < v32)
        {
          v33 = a4[18];
          v34 = v32 - v33;
          v35 = v12 + v33 - v32;
          result = 4 * v33 - 4 * v32;
          v36 = 16 * v86 - 16 * v12;
          v37 = a8;
          v38 = v86;
          while (2)
          {
            if (v35 + v37 >= 0 && (*(*(a5 + 32) + (v35 + v37)) & 1) != 0)
            {
              goto LABEL_52;
            }

            if (v38 >= v12)
            {
              if (v38 >= v34)
              {
                v40 = *(*(a4 + 10) + result + 4 * v38);
                if (v16 < 0)
                {
                  break;
                }
              }

              else
              {
                v40 = v37 % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v37 / a7)) * a7;
                if (v16 < 0)
                {
                  break;
                }
              }

              goto LABEL_46;
            }

            if (v38 < 0)
            {
              v40 = 0x7FFFFFFF;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v39 = *(a4 + 7);
              if (v39)
              {
                v40 = *(v39 + 4 * v38);
                if (v16 < 0)
                {
                  break;
                }

LABEL_46:
                if (v38 >= v12)
                {
                  v41 = (*(a5 + 96) + v15 * *(a5 + 16) + v36);
                }

                else
                {
                  v41 = (*(a4 + 5) + 16 * *(a4 + 6) * v38 + 16 * v16);
                }

LABEL_51:
                v42 = *(a11 + 4 * v40);
                v43 = *(a2 + 24) + 16 * *(a2 + 32) * v21;
                *(v43 + 16 * v42) = vaddq_f64(*v41, *(v43 + 16 * v42));
LABEL_52:
                ++v38;
                ++v37;
                v36 += 16;
                if (v38 >= v32)
                {
                  goto LABEL_58;
                }

                continue;
              }

              v40 = v12 + v37 + *(a6[22] + 4 * a3) * a7;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            break;
          }

          v41 = (*(a4 + 3) + 16 * *(a4 + 4) * v13 + 16 * v38);
          goto LABEL_51;
        }
      }

LABEL_58:
      ++v13;
      v15 += 16;
      if (v13 >= v12 + a9 + a10)
      {
        goto LABEL_59;
      }
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 7))
      {
        result = *(*(a4 + 8) + 4 * v13);
      }

      else
      {
        result = (v13 + *(a6[22] + 4 * a3) * a7);
      }

      goto LABEL_14;
    }

LABEL_12:
    result = 0x7FFFFFFFLL;
    goto LABEL_14;
  }

LABEL_59:
  v44 = a4[19];
  if (v44 >= 1)
  {
    v45 = 0;
    v46 = 0;
    v47 = a4[1];
    v48 = *(a5 + 48);
    v84 = v12 + a8;
    result = v47 - v44;
    v49 = 16 * result - 16 * v12;
    v50 = result;
    v83 = result;
    do
    {
      if ((*(v48 + v45) & 1) == 0)
      {
        v51 = v50 - v12;
        if (v50 >= v12)
        {
          v52 = v50 >= result ? *(*(a4 + 11) + 4 * (v50 - result)) : (v50 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v50 - v12) / a7)) * a7;
        }

        else if (v50 < 0)
        {
          v52 = 0x7FFFFFFF;
        }

        else
        {
          v52 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v50) : v50 + *(a6[22] + 4 * a3) * a7;
        }

        v53 = *(a12 + 4 * v52);
        if (*(a2 + 12) > v53)
        {
          v54 = v53;
          if ((v53 & 0x80000000) != 0)
          {
            v55 = 0x7FFFFFFF;
          }

          else
          {
            v55 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v53) : v53 + *(a6[22] + 4 * v82) * a7;
          }

          if (v55 == v52)
          {
            v56 = a4[4];
            if (v56 < v12)
            {
              v57 = *(a2 + 24) + 16 * *(a2 + 32) * v54;
              v58 = (a4 + 10);
              if (v51 >= 0)
              {
                v59 = (a4 + 12);
              }

              else
              {
                v58 = (a4 + 6);
                v59 = (a4 + 8);
              }

              v60 = *v58;
              v61 = *v59;
              do
              {
                if (v56 < 0)
                {
                  v63 = 0x7FFFFFFF;
                }

                else
                {
                  v62 = *(a4 + 7);
                  if (v62)
                  {
                    v63 = *(v62 + 4 * v56);
                  }

                  else
                  {
                    v63 = v56 + *(a6[22] + 4 * a3) * a7;
                  }
                }

                v64 = *(a11 + 4 * v63);
                if (v51 >= 0)
                {
                  v65 = v56;
                }

                else
                {
                  v65 = v50;
                }

                if (v51 >= 0)
                {
                  v66 = v50 - v12;
                }

                else
                {
                  v66 = v56;
                }

                *(v57 + 16 * v64) = vaddq_f64(*(v60 + 16 * v61 * v65 + 16 * v66), *(v57 + 16 * v64));
                ++v56;
              }

              while (v12 != v56);
            }

            v67 = *a4;
            if (v84 < v67)
            {
              v68 = a4[18];
              v69 = v67 - v68;
              v70 = v12 + v68 - v67;
              v71 = 4 * v68 - 4 * v67;
              v72 = 16 * v84 - 16 * v12;
              v73 = a8;
              v74 = v12 + a8;
              while (2)
              {
                if (v70 + v73 >= 0 && (*(*(a5 + 32) + (v70 + v73)) & 1) != 0)
                {
                  goto LABEL_116;
                }

                if (v74 >= v12)
                {
                  if (v74 >= v69)
                  {
                    v76 = *(*(a4 + 10) + v71 + 4 * v74);
                    if (v51 < 0)
                    {
                      goto LABEL_107;
                    }

                    goto LABEL_112;
                  }

                  v77 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v73 / a7));
                  v78 = v73 % a7;
                }

                else
                {
                  if (v74 < 0)
                  {
                    v76 = 0x7FFFFFFF;
                    if ((v51 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_112;
                    }

LABEL_107:
                    v79 = (*(a4 + 3) + 16 * *(a4 + 4) * v50 + 16 * v74);
                    goto LABEL_115;
                  }

                  v75 = *(a4 + 7);
                  if (v75)
                  {
                    v76 = *(v75 + 4 * v74);
                    if (v51 < 0)
                    {
                      goto LABEL_107;
                    }

LABEL_112:
                    if (v74 >= v12)
                    {
                      v79 = (*(a5 + 96) + v49 * *(a5 + 16) + v72);
                    }

                    else
                    {
                      v79 = (*(a4 + 5) + 16 * *(a4 + 6) * v74 + 16 * v51);
                    }

LABEL_115:
                    v80 = *(a11 + 4 * v76);
                    v81 = *(a2 + 24) + 16 * *(a2 + 32) * v54;
                    *(v81 + 16 * v80) = vaddq_f64(*v79, *(v81 + 16 * v80));
LABEL_116:
                    ++v74;
                    ++v73;
                    v72 += 16;
                    if (v74 >= v67)
                    {
                      goto LABEL_117;
                    }

                    continue;
                  }

                  v77 = *(a6[22] + 4 * a3);
                  v78 = v12 + v73;
                }

                break;
              }

              v76 = v78 + v77 * a7;
              if (v51 < 0)
              {
                goto LABEL_107;
              }

              goto LABEL_112;
            }

LABEL_117:
            *(v48 + v45) = 1;
            ++v46;
            result = v83;
          }
        }
      }

      ++v50;
      ++v45;
      v49 += 16;
    }

    while (v50 < v47);
    if (v46 > 0)
    {
      atomic_fetch_add_explicit((a5 + 24), -v46, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_236724410(uint64_t result, int a2, int *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = a3[3];
  v91 = a3[4];
  if (v91 < v10)
  {
    v11 = v10 + a7;
    v12 = *a3;
    v13 = *(a3 + 7);
    v90 = *(a3 + 8);
    v89 = *(result + 24);
    v88 = *(result + 32);
    v14 = a3[4];
    v15 = 16 * v91 - 16 * v10;
    while (1)
    {
      v16 = v91;
      v17 = *(a10 + 4 * *(v90 + 4 * v14));
      v18 = v14 - v10;
      v19 = v14 >= v10 ? a3 + 10 : a3 + 6;
      v20 = v14 >= v10 ? a3 + 12 : a3 + 8;
      v21 = *v19;
      v22 = *v20;
      do
      {
        if (v18 >= 0)
        {
          v24 = v16;
        }

        else
        {
          v24 = v14;
        }

        if (v18 >= 0)
        {
          v25 = v14 - v10;
        }

        else
        {
          v25 = v16;
        }

        v23 = *(a9 + 4 * *(v13 + 4 * v16));
        *(v89 + 16 * v88 * v17 + 16 * v23) = vaddq_f64(*(v21 + 16 * v22 * v24 + 16 * v25), *(v89 + 16 * v88 * v17 + 16 * v23));
        ++v16;
      }

      while (v10 != v16);
      if (v11 < v12)
      {
        break;
      }

LABEL_39:
      ++v14;
      v15 += 16;
      if (v14 == v10)
      {
        goto LABEL_40;
      }
    }

    v26 = a3[18];
    v27 = v12 - v26;
    v28 = v10 - v12 + v26;
    v29 = -4 * v12 + 4 * v26;
    v30 = 16 * v11 - 16 * v10;
    v31 = a7;
    v32 = v10 + a7;
    while (1)
    {
      if (v28 + v31 >= 0 && (*(a4[4] + (v28 + v31)) & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v32 >= v10)
      {
        break;
      }

      if ((v32 & 0x8000000000000000) == 0)
      {
        v33 = *(a3 + 7);
        if (!v33)
        {
          v34 = *(a5[22] + 4 * a2);
          v35 = v10 + v31;
          goto LABEL_27;
        }

LABEL_30:
        v36 = *(v33 + 4 * v32);
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v36 = 0x7FFFFFFF;
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_31:
        if (v32 >= v10)
        {
          v37 = (a4[12] + v15 * a4[2] + v30);
        }

        else
        {
          v37 = (*(a3 + 5) + 16 * *(a3 + 6) * v32 + 16 * v18);
        }

        goto LABEL_34;
      }

LABEL_28:
      v37 = (*(a3 + 3) + 16 * *(a3 + 4) * v14 + 16 * v32);
LABEL_34:
      v38 = *(a9 + 4 * v36);
      v39 = *(result + 24) + 16 * *(result + 32) * v17;
      *(v39 + 16 * v38) = vaddq_f64(*v37, *(v39 + 16 * v38));
LABEL_35:
      ++v32;
      ++v31;
      v30 += 16;
      if (v32 >= v12)
      {
        goto LABEL_39;
      }
    }

    if (v32 < v27)
    {
      v34 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v31 / a6));
      v35 = v31 % a6;
LABEL_27:
      v36 = v35 + v34 * a6;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v33 = *(a3 + 10) + v29;
    goto LABEL_30;
  }

LABEL_40:
  v40 = v10 + a8;
  v41 = a3[1];
  if (v10 + a8 < v41)
  {
    v42 = a3[19];
    v43 = v42 - v41;
    v44 = v40;
    v45 = v41 - v42;
    for (i = 16 * v40 - 16 * v10; ; i += 16)
    {
      if (v43 + v44 < 0 || (*(a4[6] + (v43 + v44)) & 1) == 0)
      {
        v47 = v44 - v10;
        if (v44 >= v10)
        {
          v48 = v44 >= v45 ? *(*(a3 + 11) + 4 * (v44 - v45)) : (v44 - v10) % a6 + *(a5[26] + 4 * *(a5[25] + 8 * a2) + 4 * ((v44 - v10) / a6)) * a6;
        }

        else if (v44 < 0)
        {
          v48 = 0x7FFFFFFF;
        }

        else
        {
          v48 = *(a3 + 7) ? *(*(a3 + 8) + 4 * v44) : v44 + *(a5[22] + 4 * a2) * a6;
        }

        v49 = *(a10 + 4 * v48);
        if (v49 < *(result + 12))
        {
          if (v91 < v10)
          {
            v50 = *(a3 + 7);
            v51 = *(result + 24) + 16 * *(result + 32) * v49;
            v52 = 10;
            if (v47 < 0)
            {
              v52 = 6;
            }

            v53 = 12;
            if (v47 < 0)
            {
              v53 = 8;
            }

            v54 = *&a3[v52];
            v55 = *&a3[v53];
            v56 = v91;
            do
            {
              if (v47 >= 0)
              {
                v58 = v56;
              }

              else
              {
                v58 = v44;
              }

              if (v47 >= 0)
              {
                v59 = v44 - v10;
              }

              else
              {
                v59 = v56;
              }

              v57 = *(a9 + 4 * *(v50 + 4 * v56));
              *(v51 + 16 * v57) = vaddq_f64(*(v54 + 16 * v55 * v58 + 16 * v59), *(v51 + 16 * v57));
              ++v56;
            }

            while (v10 != v56);
          }

          v60 = *a3;
          v61 = a3[18];
          v62 = v60 - v61;
          if (v10 + a7 < v60 - v61)
          {
            v63 = a5[24] + 4 * *(a5[23] + 8 * a2);
            v64 = *(result + 24) + 16 * *(result + 32) * v49;
            v65 = a4[12] - 16 * v10 + a4[2] * i;
            v66 = a7;
            v67 = v10 + a7;
            do
            {
              v68 = *(a9 + 4 * (v66 % a6 + *(v63 + 4 * (v66 / a6)) * a6));
              *(v64 + 16 * v68) = vaddq_f64(*(v65 + 16 * v67++), *(v64 + 16 * v68));
              ++v66;
            }

            while (v67 < v62);
          }

          if (v61 >= 1)
          {
            break;
          }
        }
      }

LABEL_91:
      if (++v44 >= v41)
      {
        return result;
      }
    }

    v69 = 0;
    v70 = v62;
    v71 = a4[4];
    v72 = v60 - v10 - v61;
    v73 = 4 * v60 - 4 * v61;
    v74 = 16 * (v60 - v10 - v61);
    v75 = v62;
    v76 = v60 - v61;
    while ((*(v71 + v69) & 1) != 0)
    {
LABEL_90:
      ++v75;
      ++v69;
      ++v72;
      v74 += 16;
      if (v70 + v69 >= v60)
      {
        goto LABEL_91;
      }
    }

    v77 = v70 + v69;
    if (v70 + v69 >= v10)
    {
      if (v77 >= v70)
      {
        v79 = *(a3 + 10);
LABEL_80:
        v82 = *(v79 + 4 * v69);
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_88:
        v83 = (*(a3 + 3) + 16 * *(a3 + 4) * v44 + 16 * v75);
LABEL_89:
        v84 = *(a9 + 4 * v82);
        v85 = *(result + 24) + 16 * *(result + 32) * v49;
        *(v85 + 16 * v84) = vaddq_f64(*v83, *(v85 + 16 * v84));
        goto LABEL_90;
      }

      v80 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v72 / a6));
      v81 = v72 % a6;
    }

    else
    {
      if (v77 < 0)
      {
        v82 = 0x7FFFFFFF;
        if (v47 < 0)
        {
          goto LABEL_88;
        }

        goto LABEL_81;
      }

      v78 = *(a3 + 7);
      if (v78)
      {
        v79 = v78 + v73;
        goto LABEL_80;
      }

      v80 = *(a5[22] + 4 * a2);
      v81 = v76 + v69;
    }

    v82 = v81 + v80 * a6;
    if (v47 < 0)
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v77 >= v10)
    {
      v83 = (a4[12] + i * a4[2] + v74);
    }

    else
    {
      v83 = (*(a3 + 5) + 16 * *(a3 + 6) * v77 + 16 * v47);
    }

    goto LABEL_89;
  }

  return result;
}

void sub_236724994(void *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, unint64_t a6@<X5>, _DWORD *a7@<X6>, void *a8@<X8>, int a9, void *a10, int a11, unsigned int a12, _DWORD *a13, int *a14, int a15, uint64_t a16)
{
  v19 = a12;
  if (a12 | a9)
  {
    __src = a1;
    v20 = a16;
    v21 = a10;
    v22 = a2 + a9 + a12;
    v40 = a8;
    v36 = a16;
    if (v22 <= a6)
    {
      v39 = a3;
      v25 = a7;
      v24 = a5;
    }

    else
    {
      v23 = 4 * v22;
      v24 = (*(a16 + 24))(4 * v22);
      v25 = (*(v20 + 24))(v23);
      memcpy(v24, __src, 4 * a2);
      memcpy(v25, a3, 4 * a4);
      v21 = a10;
      v39 = v25;
      __src = v24;
    }

    memcpy(&v24[a2], v21, 4 * a9);
    std::__sort<std::__less<int,int> &,int *>();
    memset_pattern4(&v25[a4], &a11, 4 * a9);
    v26 = a9;
    if (v19 >= 1)
    {
      v28 = a13;
      v27 = a14;
      v26 = a9;
      v29 = a15;
      do
      {
        if (*v27 > v29)
        {
          v24[a2 + v26] = *v28;
          v25[a4 + v26++] = *v27;
        }

        ++v28;
        ++v27;
        --v19;
      }

      while (v19);
    }

    if (v26)
    {
      sub_236724C1C(&v24[a2], v26, &v25[a4], v26, a9);
      sub_236724C1C(v24, a2 + v26, v25, a4 + v26, a2);
      if ((a2 + v26) < 2)
      {
        a4 = 1;
        v35 = a5;
        v34 = a7;
      }

      else
      {
        v30 = v25 + 1;
        v31 = v24 + 1;
        v32 = a2 + v26 - 1;
        v33 = 1;
        v35 = a5;
        v34 = a7;
        do
        {
          if (*(v31 - 1) != *v31)
          {
            v24[v33] = *v31;
            v25[v33++] = *v30;
          }

          ++v31;
          ++v30;
          --v32;
        }

        while (v32);
        a4 = v33;
      }

      if (v24 == v35)
      {
        v34 = v25;
      }

      else
      {
        memcpy(v35, v24, 4 * a4);
        memcpy(v34, v25, 4 * a4);
        (*(v36 + 32))(v24);
        (*(v36 + 32))(v25);
      }

      a8 = v40;
      *v40 = v35;
      v40[1] = a4;
      v40[2] = v34;
    }

    else
    {
      a8 = v40;
      *v40 = __src;
      v40[1] = a2;
      v40[2] = v39;
    }
  }

  else
  {
    *a8 = a1;
    a8[1] = a2;
    a8[2] = a3;
  }

  a8[3] = a4;
}

uint64_t sub_236724C1C(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5 - 1;
  if (a5 >= 1 && a2 > a5)
  {
    v6 = a2;
    do
    {
      --v6;
      v7 = *(result + 4 * v5);
      v8 = *(result + 4 * v6);
      if (v7 > v8)
      {
        *(result + 4 * v5) = v8;
        *(result + 4 * v6) = v7;
        v9 = *(a3 + 4 * v5);
        *(a3 + 4 * v5) = *(a3 + 4 * v6);
        *(a3 + 4 * v6) = v9;
        if (a5 >= 2)
        {
          v10 = a5 - 1;
          do
          {
            v11 = v10 - 1;
            v12 = *(result + 4 * (v10 - 1));
            v13 = *(result + 4 * v10);
            if (v12 <= v13)
            {
              break;
            }

            *(result + 4 * v11) = v13;
            *(result + 4 * v10) = v12;
            v14 = *(a3 + 4 * v11);
            *(a3 + 4 * v11) = *(a3 + 4 * v10);
            *(a3 + 4 * v10--) = v14;
          }

          while (v10 > 0);
        }
      }
    }

    while (v6 > a5);
  }

  return result;
}

void *sub_236724CB4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_236724D2C(result, a2);
  }

  return result;
}

void sub_236724D10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_236724D2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_236724D68(a1, a2);
  }

  sub_2366FB858();
}

void sub_236724D68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_236724DB0();
}

void sub_236724DB0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_236724DE4(uint64_t a1, int *a2, const void *a3, int a4, const void *a5, int a6, char *a7, int a8, uint64_t a9)
{
  v9 = a7;
  *a1 = a9;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1] - v13;
  *(a1 + 8) = v15;
  v16 = v14 - v13;
  *(a1 + 16) = v16;
  *(a1 + 24) = v15;
  *(a1 + 28) = v16;
  *(a1 + 112) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a2[3] != a2[4];
  v17 = a2[18];
  if (v17 >= 1)
  {
    v19 = &a7[(v17 + 7) & 0xFFFFFFF8];
    *(a1 + 32) = a7;
    *(a1 + 40) = v17;
    bzero(a7, v17);
    v20 = a2[18];
    v9 = &v19[(4 * v20 + 7) & 0xFFFFFFFFFFFFFFF8];
    *(a1 + 64) = v19;
    *(a1 + 72) = v20 & 0x3FFFFFFFFFFFFFFFLL;
    memcpy(v19, a3, 4 * v20);
    *(a1 + 112) = 1;
  }

  v21 = a2[19];
  if (v21 >= 1)
  {
    v22 = &v9[(v21 + 7) & 0xFFFFFFF8];
    *(a1 + 48) = v9;
    *(a1 + 56) = v21;
    bzero(v9, v21);
    v23 = a2[19];
    *(a1 + 80) = v22;
    *(a1 + 88) = v23 & 0x3FFFFFFFFFFFFFFFLL;
    memcpy(v22, a5, 4 * v23);
    *(a1 + 112) = 1;
  }

  return a1;
}

void *sub_236724F10(void *a1, uint64_t a2)
{
  *a1 = a2;
  if (*(a2 + 112) == 1)
  {
    v3 = (a2 + 113);
    while ((atomic_exchange_explicit(v3, 1u, memory_order_acquire) & 1) != 0)
    {
      v6 = 1;
      v5 = &v6;
      v10 = 0;
      v8[0] = v3;
      v8[1] = &v6;
      v9 = 0;
      v7[0] = v3;
      v7[1] = &v10;
      v7[2] = &v5;
      sub_236724FB0(v7, v8, 0);
    }
  }

  return a1;
}

BOOL sub_236724FB0(uint64_t a1, void **a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a3)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = 0;
  while (1)
  {
    v8 = *a1;
    v9 = **(a1 + 8);
    if ((v9 - 1) >= 2)
    {
      explicit = v9 == 5 ? atomic_load(v8) : *v8;
    }

    else
    {
      explicit = atomic_load_explicit(v8, memory_order_acquire);
    }

    v11 = explicit & 1;
    v12 = ***(a1 + 16);
    if (v12 != v11)
    {
      break;
    }

    if (v7 <= 0x3F)
    {
      ++v7;
    }

    else
    {
      v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - v6.__d_.__rep_;
      if (a3 && v13.__d_.__rep_ > a3 || sub_236725080(a2, v13.__d_.__rep_))
      {
        return v12 != v11;
      }
    }
  }

  return v12 != v11;
}

uint64_t sub_236725080(void **a1, uint64_t a2)
{
  if (a2 < 4001)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v4 = *a1;
  if (sub_2367250E4(a1, *a1, v6))
  {
    return 1;
  }

  std::__libcpp_atomic_wait(v4, v6[0]);
  return 0;
}

BOOL sub_2367250E4(uint64_t a1, void *a2, std::__cxx_contention_t *a3)
{
  *a3 = std::__libcpp_atomic_monitor(a2);
  v4 = *a1;
  v5 = *(a1 + 16);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 5)
    {
      explicit = atomic_load(v4);
    }

    else
    {
      explicit = *v4;
    }
  }

  else
  {
    explicit = atomic_load_explicit(v4, memory_order_acquire);
  }

  return **(a1 + 8) != (explicit & 1);
}

uint64_t *sub_236725158(uint64_t *result, int *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = *result;
    v8 = v5 - *result;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_2366FB858();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v13 = (result + 3);
    v21[4] = (v3 + 3);
    if (v12)
    {
      v14 = sub_23672A7E0(v13, v12);
      v7 = *v3;
      v8 = v3[1] - *v3;
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 4 * v9);
    v16 = v14 + 4 * v12;
    v17 = *a2;
    v18 = &v15[-(v8 >> 2)];
    *v15 = v17;
    v6 = v15 + 1;
    memcpy(v18, v7, v8);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v6;
    v20 = v3[2];
    v3[2] = v16;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = sub_23672A940(v21);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  v3[1] = v6;
  return result;
}

void sub_23672524C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, void *a7, void *a8, void **a9, void **a10, void *a11, void *a12, float64x2_t **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a4;
  v483 = *(a4 + 56);
  v543 = 0;
  v542 = 0u;
  v20 = (4 * v483 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = a17 + v20;
  v22 = a1;
  v541 = 0u;
  v540 = 0u;
  if (a3 == 83)
  {
    v23 = *(*(a6 + 72) + 4 * a1);
    v24 = *(*(a6 + 80) + 4 * a1);
    v25 = *(*(a6 + 88) + 4 * a1);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  v26 = v21 + v20;
  v27 = *(*(a6 + 112) + 8 * v22) + 8;
  *(&v540 + 1) = v27;
  v544 = v24;
  v545 = v25;
  v514 = v22 + 1;
  v28 = v23 + (*(*(a4 + 176) + 4 * (v22 + 1)) - *(*(a4 + 176) + 4 * v22)) * a5;
  v538 = v23;
  v539 = v28;
  v29 = v28;
  if (a3 == 83)
  {
    v29 = *(*(a6 + 64) + 4 * v22);
  }

  i = v26 + v20;
  LODWORD(v540) = v29;
  v495 = 8 * v22;
  v31 = (*(*(a4 + 200) + 8 * v514) - *(*(a4 + 200) + 8 * v22)) * a5;
  v536 = v28 + v24 + (*(*(a4 + 184) + 8 * v514) - *(*(a4 + 184) + 8 * v22)) * a5;
  v537 = v28 + v25 + v31;
  v524 = v537;
  v520 = v536;
  *&v541 = v536;
  *(&v541 + 1) = v27 + 16 * v536 * v28;
  v32 = v31 + v25;
  *&v542 = v32;
  v484 = (4 * v483 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a3 == 81)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = v27 + 16 * v536 * v28 + 16 * v32 * v28;
    v33 = v34 + 4 * v28 + 4 * v24;
    *(&v542 + 1) = v34;
    v543 = v33;
  }

  v504 = v29;
  v516 = v34;
  v35 = v34 + 4 * v28;
  if (v24 <= 0)
  {
    v35 = 0;
  }

  v507 = v33;
  v36 = v33 + 4 * v28;
  if (v25 <= 0)
  {
    v36 = 0;
  }

  v498 = v35;
  v500 = v36;
  v546 = v35;
  v547 = v36;
  v37 = *(a4 + 240);
  v38 = *(v37 + 8 * v22);
  v511 = v26 + v20;
  v530 = a5;
  v515 = v21 + v20;
  v519 = v22;
  v480 = v25;
  if (v38 < *(v37 + 8 * v514))
  {
    v497 = 0;
    v39 = v536 - v24;
    v40 = v537 - v25;
    while (1)
    {
      v41 = *(*(v18 + 248) + 4 * v38);
      if ((*(*(v18 + 256) + v38) & 2) != 0)
      {
        v42 = *a7 + 32 * v41;
        v43 = *v42;
        v44 = *(v42 + 8);
        if (v44 != *v42)
        {
          if ((v497 & 1) == 0)
          {
            sub_23672A9A0(a1, &v536, a4, a5, v26);
            v22 = v519;
            v26 = v515;
            a5 = v530;
            v45 = *a7 + 32 * v41;
            v43 = *v45;
            v44 = *(v45 + 8);
          }

          while (v43 != v44)
          {
            v535 = *v43;
            v46 = *(v26 + 4 * v535);
            if (v46 < v520)
            {
              if (v46 >= v28)
              {
                if (v46 >= v39)
                {
                  v47 = *(v498 + 4 * (v46 - v39));
                }

                else
                {
                  v47 = (v46 - v28) % a5 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v22) + 4 * ((v46 - v28) / a5)) * a5;
                }
              }

              else if ((v46 & 0x80000000) != 0)
              {
                v47 = 0x7FFFFFFF;
              }

              else if (v516)
              {
                v47 = v516[v46];
              }

              else
              {
                v47 = v46 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v47 < 0)
              {
                v47 = -v47;
              }

              if (v535 == v47)
              {
                sub_236725158((*a7 + 32 * v22), &v535);
                v22 = v519;
                v26 = v515;
                a5 = v530;
              }
            }

            ++v43;
          }

          LOBYTE(v497) = 1;
        }

        v18 = a4;
      }

      if (*(*(v18 + 256) + v38))
      {
        v48 = *a8 + 32 * v41;
        v49 = *v48;
        v50 = *(v48 + 8);
        if (v50 != *v48)
        {
          if ((v497 & 0x100000000) == 0)
          {
            sub_23672AA5C(a1, &v536, a4, a5, v511);
            v22 = v519;
            v26 = v515;
            a5 = v530;
            v51 = *a8 + 32 * v41;
            v49 = *v51;
            v50 = *(v51 + 8);
          }

          for (i = v511; v49 != v50; ++v49)
          {
            v535 = *v49;
            v52 = *(v511 + 4 * v535);
            if (v52 < v524)
            {
              if (v52 >= v28)
              {
                if (v52 >= v40)
                {
                  v53 = *(v500 + 4 * (v52 - v40));
                }

                else
                {
                  v53 = (v52 - v28) % a5 + *(*(a4 + 208) + 4 * *(*(a4 + 200) + 8 * v22) + 4 * ((v52 - v28) / a5)) * a5;
                }
              }

              else if ((v52 & 0x80000000) != 0)
              {
                v53 = 0x7FFFFFFF;
              }

              else if (v516)
              {
                v53 = v507[v52];
              }

              else
              {
                v53 = v52 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v53 < 0)
              {
                v53 = -v53;
              }

              if (v535 == v53)
              {
                sub_236725158((*a8 + 32 * v22), &v535);
                v22 = v519;
                v26 = v515;
                a5 = v530;
              }
            }
          }

          BYTE4(v497) = 1;
          v18 = a4;
          goto LABEL_60;
        }

        v18 = a4;
      }

      i = v511;
LABEL_60:
      if (++v38 >= *(*(v18 + 240) + 8 * v514))
      {
        goto LABEL_63;
      }
    }
  }

  v497 = 0;
LABEL_63:
  if (!v504)
  {
    return;
  }

  v54 = (*a7 + 32 * v22);
  v55 = (*a8 + 32 * v22);
  if (v54[1] == *v54 && v55[1] == *v55)
  {
    return;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v56 = sub_23672AB6C(*v54, v54[1]);
  v482 = v55;
  if (v56 != v54[1])
  {
    v54[1] = v56;
  }

  v57 = *v55;
  v58 = v55[1];
  std::__sort<std::__less<int,int> &,int *>();
  v59 = sub_23672AB6C(*v55, v55[1]);
  v61 = v55[1];
  if (v59 != v61)
  {
    v60 = v55[1];
    v61 = v59;
    v55[1] = v59;
  }

  if (v516)
  {
    if (v504 >= 1)
    {
      v62 = 0;
      v63 = v516;
      v64 = v507;
      do
      {
        v65 = *v63++;
        *(a17 + 4 * v65) = v62;
        v66 = *v64++;
        *(v21 + 4 * v66) = v62--;
      }

      while (-v504 != v62);
    }
  }

  else if (v504 >= 1)
  {
    v67 = 0;
    v68 = 0;
    v69 = *(v18 + 176);
    do
    {
      *(a17 + 4 * (v68 + *(v69 + 4 * v519) * v530)) = v67;
      *(v21 + 4 * (v68 + *(v69 + 4 * v519) * v530)) = v67;
      ++v68;
      --v67;
    }

    while (v504 != v68);
  }

  v70 = *v54;
  v71 = v54[1];
  v72 = v71 - *v54;
  if (v71 != *v54)
  {
    v73 = 0;
    v74 = v72 >> 2;
    if ((v72 >> 2) <= 1)
    {
      v74 = 1;
    }

    do
    {
      *(a17 + 4 * v70[v73]) = v73;
      ++v73;
    }

    while (v74 != v73);
  }

  v75 = *v55;
  v76 = v61 - *v55;
  if (v61 != *v55)
  {
    v77 = 0;
    v78 = v76 >> 2;
    if ((v76 >> 2) <= 1)
    {
      v78 = 1;
    }

    do
    {
      *(v21 + 4 * v75[v77]) = v77;
      ++v77;
    }

    while (v78 != v77);
  }

  v534 = (i + v484);
  v79 = v76 >> 2;
  v474 = v72;
  v478 = v76;
  v80 = (v504 * (v72 >> 2));
  v491 = 16 * v80;
  if (a9[1] < v80)
  {
    if (*a9)
    {
      (*(v18 + 32))(*a9, v60);
    }

    *a9 = (*(v18 + 24))(v491, v60);
    a9[1] = v80;
  }

  v81 = &v534[v483];
  v82 = (v504 * v79);
  v513 = v81;
  if (a10[1] >= v82)
  {
    v487 = 16 * v82;
  }

  else
  {
    if (*a10)
    {
      (*(v18 + 32))();
    }

    v487 = 16 * v82;
    *a10 = (*(v18 + 24))();
    a10[1] = v82;
    v81 = &v534[v483];
  }

  v499 = &v81[v483];
  bzero(*a9, v491);
  bzero(*a10, v487);
  v83 = *v54;
  v84 = v54[1] - *v54;
  v85 = *v55;
  v86 = v55[1] - *v55;
  v488 = *a10;
  v492 = *a9;
  v87 = *(a6 + 96);
  v88 = *(a2 + 28);
  v89 = (v88 * v88);
  v90 = v504;
  v91 = v84 <= 0 || v504 <= 0;
  v92 = !v91;
  if (v87)
  {
    v93 = *(a6 + 104);
    if (v92)
    {
      v94 = 0;
      v525 = *(v18 + 160);
      v501 = *(a2 + 8);
      v95 = 16 * v89;
      do
      {
        if (v507)
        {
          v96 = v507[v94];
        }

        else
        {
          v96 = v94 + *(*(v18 + 176) + 4 * v519) * v88;
        }

        v97 = (v501 + 8 * *(v525 + 4 * (v96 / v88)));
        v98 = *v97;
        v99 = v97[1];
        if (*v97 < v99)
        {
          v100 = *(a2 + 16);
          v101 = v95 * v98 + 16 * v96 % v88 * v88;
          do
          {
            v102 = *(v100 + 4 * v98);
            if ((v102 & 0x80000000) == 0 && v102 < *a2 && v88 != 0)
            {
              v104 = *(*(a4 + 136) + 4 * v102) * v88;
              v105 = (v87 + 8 * v104);
              v106 = (a17 + 4 * v104);
              v107 = v88;
              v108 = v101;
              do
              {
                v110 = *v106++;
                v109 = v110;
                if (v110 < v84 && v104 == v83[v109])
                {
                  v492[v94 * v84 + v109] = vmulq_n_f64(vmulq_n_f64(*(*(a2 + 32) + v108), *v105), *(v93 + 8 * v96));
                }

                v108 += 16;
                ++v105;
                ++v104;
                --v107;
              }

              while (v107);
            }

            ++v98;
            v101 += v95;
          }

          while (v98 != v99);
        }

        ++v94;
        v18 = a4;
        i = v511;
        v90 = v504;
      }

      while (v94 != v504);
    }

    if (v86 >= 1 && v90 >= 1)
    {
      v111 = 0;
      v526 = *(v18 + 312);
      v112 = v90;
      do
      {
        if (v516)
        {
          v113 = v516[v111];
        }

        else
        {
          v113 = v111 + *(*(v18 + 176) + 4 * v519) * v88;
        }

        v114 = (v526 + 8 * (v113 / v88));
        v115 = *v114;
        v116 = v114[1];
        if (v115 < v116)
        {
          v117 = *(a4 + 320);
          do
          {
            v118 = *(v117 + 4 * v115) * v88;
            v119 = (v93 + 8 * v118);
            v120 = (a17 + v484 + 4 * v118);
            v121 = v88;
            v122 = 16 * (v113 % v88);
            do
            {
              v124 = *v120++;
              v123 = v124;
              if (v124 < v86 && v118 == v85[v123])
              {
                v488[v111 * v86 + v123] = vmulq_n_f64(vmulq_n_f64(*(*(a2 + 32) + 16 * *(*(a4 + 328) + 8 * v115) * v89 + v122), *(v87 + 8 * v113)), *v119);
              }

              v122 += 16 * v88;
              ++v119;
              ++v118;
              --v121;
            }

            while (v121);
            ++v115;
          }

          while (v115 != v116);
        }

        ++v111;
        v18 = a4;
        i = v511;
        v90 = v504;
      }

      while (v111 != v112);
    }
  }

  else
  {
    if (v92)
    {
      v125 = 0;
      v126 = 16 * v89;
      do
      {
        if (v507)
        {
          v127 = v507[v125];
        }

        else
        {
          v127 = v125 + *(*(v18 + 176) + 4 * v519) * v88;
        }

        v128 = *(*(v18 + 160) + 4 * (v127 / v88));
        v129 = *(a2 + 8);
        v130 = (v129 + 8 * v128);
        v131 = *v130;
        if (*v130 < v130[1])
        {
          v132 = v126 * v131 + 16 * v127 % v88 * v88;
          do
          {
            v133 = *(*(a2 + 16) + 4 * v131);
            if ((v133 & 0x80000000) == 0 && v133 < *a2 && v88 != 0)
            {
              v135 = *(*(v18 + 136) + 4 * v133) * v88;
              v136 = (a17 + 4 * v135);
              v137 = v88;
              v138 = v132;
              do
              {
                v140 = *v136++;
                v139 = v140;
                if (v140 < v84 && v135 == v83[v139])
                {
                  v492[v125 * v84 + v139] = *(*(a2 + 32) + v138);
                }

                v138 += 16;
                ++v135;
                --v137;
              }

              while (v137);
              v129 = *(a2 + 8);
            }

            ++v131;
            v132 += v126;
          }

          while (v131 < *(v129 + 8 * v128 + 8));
        }

        ++v125;
      }

      while (v125 < v504);
    }

    if (v86 >= 1)
    {
      if (v504 >= 1)
      {
        for (j = 0; j < v504; ++j)
        {
          if (v516)
          {
            v142 = v516[j];
          }

          else
          {
            v142 = j + *(*(v18 + 176) + 4 * v519) * v88;
          }

          v143 = (*(v18 + 312) + 8 * (v142 / v88));
          v144 = *v143;
          if (*v143 < v143[1])
          {
            do
            {
              v145 = *(*(v18 + 320) + 4 * v144) * v88;
              v146 = (a17 + v484 + 4 * v145);
              v147 = v88;
              v148 = 16 * (v142 % v88);
              do
              {
                v150 = *v146++;
                v149 = v150;
                if (v150 < v86 && v145 == v85[v149])
                {
                  v488[j * v86 + v149] = *(*(a2 + 32) + 16 * *(*(v18 + 328) + 8 * v144) * v89 + v148);
                }

                v148 += 16 * v88;
                ++v145;
                --v147;
              }

              while (v147);
              ++v144;
            }

            while (v144 < *(*(v18 + 312) + 8 * (v142 / v88) + 8));
          }
        }
      }

      if (v480 >= 1 && v504 < v524)
      {
        v151 = v524 - v480;
        v152 = v504;
        do
        {
          if (v152 >= v28)
          {
            if (v152 >= v151)
            {
              v153 = *(v500 + 4 * (v152 - v151));
            }

            else
            {
              v153 = (v152 - v28) % v88 + *(*(v18 + 208) + 4 * *(*(v18 + 200) + 8 * v519) + 4 * ((v152 - v28) / v88)) * v88;
            }
          }

          else if (v152 < 0)
          {
            v153 = 0x7FFFFFFF;
          }

          else if (v516)
          {
            v153 = v507[v152];
          }

          else
          {
            v153 = v152 + *(*(v18 + 176) + 4 * v519) * v88;
          }

          if (v153 < 0)
          {
            v153 = -v153;
          }

          v154 = *(v21 + 4 * v153);
          if (v154 < v86 && v85[v154] == v153 && (v152 < v28 || v153 < *(*(v18 + 176) + 4 * v519) * v88))
          {
            v155 = *(*(v18 + 160) + 4 * (v153 / v88));
            v156 = *(a2 + 8);
            v157 = (v156 + 8 * v155);
            v158 = *v157;
            if (*v157 < v157[1])
            {
              v159 = &v488[v154];
              v160 = v153 % v88 * v88;
              do
              {
                v161 = *(*(a2 + 16) + 4 * v158);
                if ((v161 & 0x80000000) == 0 && v161 < *a2 && v88 != 0)
                {
                  v163 = 0;
                  v164 = *(*(v18 + 136) + 4 * v161) * v88;
                  v165 = (a17 + 4 * v164);
                  v166 = v88;
                  do
                  {
                    v168 = *v165++;
                    v167 = v168;
                    v169 = -v168;
                    if (v168 <= 0 && v504 > v169)
                    {
                      v171 = v516 ? v516[v169] : *(*(v18 + 176) + 4 * v519) * v88 - v167;
                      if (v164 == v171)
                      {
                        v159[v169 * v86] = *(*(a2 + 32) + 16 * v158 * v89 + 16 * v163 + 16 * v160);
                      }
                    }

                    ++v163;
                    ++v164;
                    --v166;
                  }

                  while (v166);
                  v156 = *(a2 + 8);
                }

                ++v158;
              }

              while (v158 < *(v156 + 8 * v155 + 8));
            }
          }

          ++v152;
        }

        while (v152 < v524);
      }
    }
  }

  if (v54[1] == *v54)
  {
    v290 = 0;
    v291 = a14;
    goto LABEL_375;
  }

  sub_23672AB18(a14);
  v172 = *(v18 + 240);
  v173 = *(v172 + 8 * v519);
  v174 = *(v172 + 8 * v514);
  v175 = a9;
  if (v173 >= v174)
  {
    v528 = 0;
    goto LABEL_363;
  }

  v176 = 0;
  v177 = *(v18 + 256);
  v178 = *a14;
  v179 = v530;
  v180 = a6;
  LODWORD(v181) = a3;
  v182 = v499;
  do
  {
    if ((*(v177 + v173) & 2) != 0)
    {
      v183 = *(*(v18 + 248) + 4 * v173);
      v499[v176++] = v183;
      *(v178 + 4 * v183) = *(a14 + 16);
    }

    ++v173;
  }

  while (v174 != v173);
  if (v176 < 1)
  {
    v528 = v176;
    goto LABEL_363;
  }

  do
  {
    v184 = v176 - 1;
    v185 = v182[v184];
    if (v181 == 83)
    {
      v186 = *(v180[9] + 4 * v185);
      LODWORD(v187) = *(v180[10] + 4 * v185);
      LODWORD(v188) = *(v180[11] + 4 * v185);
    }

    else
    {
      v186 = 0;
      LODWORD(v187) = 0;
      LODWORD(v188) = 0;
    }

    v189 = *(v18 + 176);
    v190 = v185 + 1;
    v191 = v186 + (*(v189 + 4 * (v185 + 1)) - *(v189 + 4 * v185)) * v179;
    v192 = v191;
    if (v181 == 83)
    {
      v192 = *(v180[8] + 4 * v185);
    }

    v521 = v192;
    v193 = v180[14];
    v194 = *(v18 + 184);
    v195 = *(v194 + 8 * v190);
    v196 = *(v194 + 8 * v185);
    v197 = *(v18 + 200);
    v198 = *(v197 + 8 * v190);
    v199 = *(v197 + 8 * v185);
    v508 = *(v193 + 8 * v185) + 8;
    v200 = (v189 + 4 * v519);
    v527 = v184;
    v517 = v182[v184];
    v502 = v188 + (v198 - v199) * v179;
    v505 = v508 + 16 * (v191 + v187 + (v195 - v196) * v179) * v191;
    v489 = v191 + v187 + (v195 - v196) * v179;
    if (v181 == 81)
    {
      v201 = 0;
      v485 = 0;
      if (v187 <= 0)
      {
        v202 = 0;
      }

      else
      {
        v202 = v191;
      }

      v203 = 4 * v202;
      if (v188 <= 0)
      {
        v204 = 0;
      }

      else
      {
        v204 = v191;
      }

      v205 = (4 * v204);
    }

    else
    {
      v201 = v508 + 16 * (v191 + v187 + (v195 - v196) * v179) * v191 + 16 * (v188 + (v198 - v199) * v179) * v191;
      if (v187 <= 0)
      {
        v203 = 0;
      }

      else
      {
        v203 = v201 + 4 * v191;
      }

      v485 = v201 + 4 * v191 + 4 * v187;
      v205 = (v485 + 4 * v191);
      if (v188 <= 0)
      {
        v205 = 0;
      }

      if (v181 == 83)
      {
        v206 = v180[8];
        v207 = *(v180[9] + 4 * v519);
        v208 = *(v180[10] + 4 * v519);
        v209 = *(v180[11] + 4 * v519);
        v210 = v207 + (*(v189 + 4 * v514) - *v200) * v179;
        v211 = *(v206 + 4 * v519);
        goto LABEL_238;
      }
    }

    v209 = 0;
    v208 = 0;
    v210 = (*(v189 + 4 * v514) - *v200) * v179;
    v211 = v210;
LABEL_238:
    v212 = *v54;
    v213 = (v54[1] - *v54) >> 2;
    v493 = *v175;
    v214 = *(v193 + 8 * v519) + 16 * (v208 + v210 + (*(v194 + 8 * v514) - *(v194 + v495)) * v179) * v210 + 16 * (v209 + (*(v197 + 8 * v514) - *(v197 + v495)) * v179) * v210 + 4 * v210 + 4 * v208 + 8;
    if (a3 == 81)
    {
      v215 = 0;
    }

    else
    {
      v215 = v214;
    }

    if (v521 >= v191)
    {
      v216 = 0;
      v226 = v521;
    }

    else
    {
      v216 = 0;
      v217 = v521 - v191;
      v218 = (v201 + 4 * v521);
      v219 = v521;
      do
      {
        v221 = *v218++;
        v220 = v221;
        if (v221 >= 0)
        {
          v222 = v220;
        }

        else
        {
          v222 = -v220;
        }

        v223 = *(a17 + 4 * v222);
        if ((v223 & 0x80000000) == 0 && v223 < v213 && v212[v223] == v222)
        {
          v224 = &v534[v216];
          *v224 = v219;
          *(v224 + 1) = v223;
          ++v216;
        }

        ++v219;
        v225 = __CFADD__(v217++, 1);
      }

      while (!v225);
      v226 = v191;
    }

    if (v195 > v196)
    {
      v227 = *(a4 + 192);
      do
      {
        if (v179 >= 1)
        {
          v228 = *(v227 + 4 * v196) * v179;
          v229 = v228 + v179;
          do
          {
            v230 = *(a17 + 4 * v228);
            if ((v230 & 0x80000000) == 0 && v230 < v213 && v228 == v212[v230])
            {
              v231 = &v534[v216++];
              *v231 = v226;
              v231[1] = v230;
            }

            ++v228;
            ++v226;
          }

          while (v228 < v229);
        }

        ++v196;
      }

      while (v196 != v195);
    }

    if (v187 < 1)
    {
      v18 = a4;
    }

    else
    {
      v187 = v187;
      v18 = a4;
      do
      {
        v232 = *v203;
        v203 += 4;
        v196 = v232;
        v195 = *(a17 + 4 * v232);
        if ((v195 & 0x80000000) == 0 && v195 < v213 && v212[v195] == v196)
        {
          v196 = &v534[v216];
          *v196 = v226;
          *(v196 + 4) = v195;
          ++v216;
        }

        ++v226;
        --v187;
      }

      while (v187);
    }

    v181 = a3;
    v233 = &v534[v483];
    v234 = v521;
    if (v216)
    {
      if (v521 >= v191)
      {
        v235 = 0;
        v242 = v521;
      }

      else
      {
        v235 = 0;
        v236 = v521 - v191;
        v237 = (v485 + 4 * v521);
        v238 = v521;
        do
        {
          v240 = *v237++;
          v239 = v240;
          if (v240 >= 0)
          {
            v195 = v239;
          }

          else
          {
            v195 = -v239;
          }

          v196 = *(v21 + 4 * v195);
          v203 = -v196;
          if (v196 <= 0 && v211 > v203)
          {
            if (v181 == 81)
            {
              v196 = (*v200 * v179 - v196);
              v181 = a3;
            }

            else
            {
              v196 = *(v214 + 4 * v203);
            }

            if (v196 == v195)
            {
              v195 = &v513[v235];
              v196 = (v235 + 1);
              *v195 = v238;
              *(v195 + 4) = v203;
              ++v235;
            }
          }

          ++v238;
          v225 = __CFADD__(v236++, 1);
        }

        while (!v225);
        v242 = v191;
      }

      if (v198 > v199)
      {
        v243 = *(v18 + 208);
        do
        {
          if (v179 >= 1)
          {
            v244 = *(v243 + 4 * v199) * v179;
            v203 = v244 + v179;
            do
            {
              v196 = *(v21 + 4 * v244);
              v195 = -v196;
              if (v196 <= 0 && v211 > v195)
              {
                if (v181 == 81)
                {
                  v196 = (*v200 * v179 - v196);
                }

                else
                {
                  v196 = *(v214 + 4 * v195);
                }

                if (v244 == v196)
                {
                  v196 = &v513[v235];
                  *v196 = v242;
                  *(v196 + 4) = v195;
                  ++v235;
                }

                v181 = a3;
              }

              ++v244;
              ++v242;
            }

            while (v244 < v203);
          }

          ++v199;
        }

        while (v199 != v198);
      }

      if (v188 >= 1)
      {
        v188 = v188;
        do
        {
          v247 = *v205++;
          v246 = v247;
          v248 = *(v21 + 4 * v247);
          v249 = -v248;
          v250 = v248 > 0 || v211 <= v249;
          if (!v250 && *(v215 + 4 * v249) == v246)
          {
            v251 = &v513[v235];
            *v251 = v242;
            v251[1] = v249;
            ++v235;
          }

          ++v242;
          --v188;
        }

        while (v188);
      }

      if (v235)
      {
        v252 = v216 * v521;
        if (a11[1] < (v216 * v521))
        {
          if (*a11)
          {
            (*(v18 + 32))(*a11, v203, v195, v196, v181, v521);
          }

          *a11 = (*(v18 + 24))(16 * v252);
          a11[1] = v252;
          v233 = &v534[v483];
          v234 = v521;
        }

        v253 = v234;
        v255 = v505;
        v254 = v508;
        v256 = v502;
        if (v234 >= 1)
        {
          v257 = 0;
          for (k = 0; k != v234; ++k)
          {
            if (v216 >= 1)
            {
              v259 = v534;
              v260 = v257;
              v261 = v216;
              do
              {
                v262 = *v259++;
                *(*a11 + v260) = *(v508 + 16 * k * v489 + 16 * v262);
                v260 += 16;
                --v261;
              }

              while (v261);
            }

            v257 += 16 * v216;
          }
        }

        v263 = v235 * v234;
        if (a12[1] < (v235 * v234))
        {
          v264 = a4;
          if (*a12)
          {
            (*(a4 + 32))(*a12, v505, v502);
            v264 = a4;
          }

          *a12 = (*(v264 + 24))(16 * v263, v255, v256);
          a12[1] = v263;
          v233 = &v534[v483];
          v234 = v521;
          v255 = v505;
          v254 = v508;
          v256 = v502;
        }

        v265 = v235;
        v18 = a4;
        if (v234 >= 1)
        {
          v266 = 0;
          v267 = 0;
          do
          {
            if (v235 >= 1)
            {
              v268 = v233;
              v269 = v266;
              v270 = v235;
              do
              {
                v271 = *v268++;
                v272 = v255 + 16 * v267 * v256 + 16 * (v271 - v191);
                v273 = (v254 + 16 * v267 + 16 * v271 * v489);
                if (v271 >= v191)
                {
                  v273 = v272;
                }

                *(*a12 + v269) = *v273;
                v269 += 16;
                --v270;
              }

              while (v270);
            }

            ++v267;
            v266 += 16 * v235;
          }

          while (v267 != v253);
        }

        v274 = v235 * v216;
        v275 = *a13;
        if (a13[1] < v235 * v216)
        {
          if (v275)
          {
            (*(a4 + 32))(v275, v255, v256, v235);
          }

          *a13 = (*(a4 + 24))(16 * v274, v255, v256, v265);
          a13[1] = v274;
        }

        v276 = *a11;
        v470 = *a12;
        cblas_zgemm_NEWLAPACK();
        v179 = v530;
        LODWORD(v181) = a3;
        if (v235 >= 1)
        {
          v277 = 0;
          v278 = *a13;
          do
          {
            if (v216 >= 1)
            {
              v279 = v493 + 16 * SHIDWORD(v513[v277]) * (v474 >> 2);
              v280 = v534;
              v281 = v278;
              v282 = v216;
              do
              {
                v283 = *v281++;
                *(v279 + 16 * *(v280 + 1)) = vaddq_f64(v283, *(v279 + 16 * *(v280 + 1)));
                ++v280;
                --v282;
              }

              while (v282);
            }

            ++v277;
            v278 += v216;
          }

          while (v277 != v235);
        }
      }
    }

    v284 = (*(v18 + 240) + 8 * v517);
    v285 = *v284;
    v286 = v284[1];
    if (v285 >= v286)
    {
      v180 = a6;
      v175 = a9;
      v182 = v499;
      v176 = v527;
    }

    else
    {
      v287 = *(v18 + 256);
      v288 = *a14;
      v180 = a6;
      v175 = a9;
      v182 = v499;
      v176 = v527;
      do
      {
        if ((*(v287 + v285) & 2) != 0)
        {
          v289 = *(*(v18 + 248) + 4 * v285);
          if (*(v288 + 4 * v289) < *(a14 + 16))
          {
            v499[v176++] = v289;
            *(v288 + 4 * v289) = *(a14 + 16);
          }
        }

        ++v285;
      }

      while (v286 != v285);
    }
  }

  while (v176 >= 1);
  v528 = v176;
  v90 = v540;
LABEL_363:
  v292 = (v54[1] - *v54) >> 2;
  v472 = *v175;
  cblas_ztrsm_NEWLAPACK();
  if (v90 < 1)
  {
    v298 = 0.0;
  }

  else
  {
    v293 = 0;
    v522 = v54[1];
    v518 = *v54;
    v294 = v522 - *v54;
    v295 = *v175;
    if (v294 <= 1)
    {
      v294 = 1;
    }

    v509 = v294;
    v296 = v90;
    v297 = (v295 + 8);
    v298 = 0.0;
    do
    {
      v299 = v509;
      v300 = v297;
      if (v522 != v518)
      {
        do
        {
          v301 = hypot(*(v300 - 1), *v300);
          if (v301 >= v298)
          {
            v298 = v301;
          }

          v300 += 2;
          --v299;
        }

        while (v299);
      }

      ++v293;
      v297 += 2 * (v474 >> 2);
    }

    while (v293 != v296);
  }

  v18 = a4;
  i = v511;
  v291 = a14;
  v290 = v528;
  if (v298 > 1.0 / *(a6 + 16))
  {
    *(a15 + v519) = 1;
    v315 = *(a4 + 168);
    if (v514 >= v315)
    {
      return;
    }

    while (1)
    {
      if ((*(a15 + v514) & 1) == 0)
      {
        v316 = (*(a4 + 240) + 8 * v514);
        v318 = *v316;
        v317 = v316[1];
        v91 = v317 <= v318;
        v319 = v317 - v318;
        if (!v91)
        {
          v320 = (*(a4 + 248) + 4 * v318);
          while (1)
          {
            v321 = *v320++;
            if (*(a15 + v321) == 1)
            {
              break;
            }

            if (!--v319)
            {
              goto LABEL_390;
            }
          }

          *(a15 + v514) = 1;
        }
      }

LABEL_390:
      if (v315 == ++v514)
      {
        return;
      }
    }
  }

LABEL_375:
  v302 = (v478 >> 2);
  if (v482[1] == *v482)
  {
    goto LABEL_534;
  }

  v303 = v291;
  sub_23672AB18(v291);
  v304 = *(v18 + 240);
  v305 = v519;
  v306 = *(v304 + 8 * v519);
  v481 = v304;
  v307 = *(v304 + 8 * v514);
  if (v306 >= v307)
  {
    v310 = v530;
    v311 = a3;
    v312 = v499;
    LODWORD(v313) = v290;
  }

  else
  {
    v308 = *(v18 + 256);
    v309 = *v303;
    v310 = v530;
    v311 = a3;
    v312 = v499;
    LODWORD(v313) = v290;
    do
    {
      if (*(v308 + v306))
      {
        v314 = *(*(v18 + 248) + 4 * v306);
        v499[v313] = v314;
        LODWORD(v313) = v313 + 1;
        *(v309 + 4 * v314) = *(v303 + 16);
      }

      ++v306;
    }

    while (v307 != v306);
  }

  while (2)
  {
    if (v313 >= 1)
    {
      v322 = v313 - 1;
      v323 = v312[v322];
      if (v311 == 83)
      {
        v324 = a6;
        v325 = *(*(a6 + 72) + 4 * v323);
        LODWORD(v326) = *(*(a6 + 80) + 4 * v323);
        v327 = *(*(a6 + 88) + 4 * v323);
      }

      else
      {
        v325 = 0;
        LODWORD(v326) = 0;
        v327 = 0;
        v324 = a6;
      }

      v529 = v322;
      v328 = *(v18 + 176);
      v329 = v323 + 1;
      v330 = v325 + (*(v328 + 4 * (v323 + 1)) - *(v328 + 4 * v323)) * v310;
      v331 = v330;
      if (v311 == 83)
      {
        v331 = *(v324[8] + 4 * v323);
      }

      v523 = v331;
      v332 = v324[14];
      v333 = *(v18 + 184);
      v334 = *(v333 + 8 * v329);
      v335 = *(v333 + 8 * v323);
      v336 = *(v18 + 200);
      v337 = *(v336 + 8 * v329);
      v506 = v323;
      v338 = *(v336 + 8 * v323);
      v477 = v330 + v326 + (v334 - v335) * v310;
      v486 = *(v332 + 8 * v323) + 8;
      v339 = v327 + (v337 - v338) * v310;
      v340 = (v328 + 4 * v305);
      v510 = v339;
      v494 = v327;
      if (v311 == 81)
      {
        v341 = 0;
        v475 = 0;
        if (v326 <= 0)
        {
          v342 = 0;
        }

        else
        {
          v342 = v330;
        }

        v343 = (4 * v342);
        if (v327 <= 0)
        {
          v344 = 0;
        }

        else
        {
          v344 = v330;
        }

        v345 = (4 * v344);
      }

      else
      {
        v341 = v486 + 16 * v477 * v330 + 16 * v339 * v330;
        v346 = v341 + 4 * v330;
        if (v326 <= 0)
        {
          v343 = 0;
        }

        else
        {
          v343 = (v341 + 4 * v330);
        }

        v475 = v346 + 4 * v326;
        if (v327 <= 0)
        {
          v345 = 0;
        }

        else
        {
          v345 = (v346 + 4 * v326 + 4 * v330);
        }

        if (v311 == 83)
        {
          v347 = *(v324[10] + 4 * v519);
          v348 = *(v324[11] + 4 * v519);
          v349 = *(v324[9] + 4 * v519) + (*(v328 + 4 * v514) - *v340) * v310;
          v350 = *(v324[8] + 4 * v519);
          v311 = a3;
          goto LABEL_415;
        }
      }

      v348 = 0;
      v347 = 0;
      v349 = (*(v328 + 4 * v514) - *v340) * v310;
      v350 = v349;
LABEL_415:
      v351 = 0;
      v352 = *(v332 + 8 * v519);
      v353 = *v482;
      v490 = v482[1];
      v479 = *a10;
      v354 = v352 + 16 * (v347 + v349 + (*(v333 + 8 * v514) - *(v333 + v495)) * v310) * v349 + 16 * (v348 + (*(v336 + 8 * v514) - *(v336 + v495)) * v310) * v349;
      v355 = v354 + 8;
      if (v311 == 81)
      {
        v356 = 0;
      }

      else
      {
        v356 = v354 + 8;
      }

      v357 = v523;
      if (v523 < v330)
      {
        v351 = 0;
        v358 = v523 - v330;
        v359 = (v341 + 4 * v523);
        v360 = v523;
        do
        {
          v362 = *v359++;
          v361 = v362;
          if (v362 >= 0)
          {
            v363 = v361;
          }

          else
          {
            v363 = -v361;
          }

          v364 = *(a17 + 4 * v363);
          v365 = -v364;
          if (v364 <= 0 && v350 > v365)
          {
            if (v311 == 81)
            {
              v311 = a3;
              v367 = *v340 * v530 - v364;
            }

            else
            {
              v367 = *(v355 + 4 * v365);
            }

            if (v367 == v363)
            {
              v368 = &v534[v351++];
              *v368 = v360;
              v368[1] = v365;
            }
          }

          ++v360;
          v225 = __CFADD__(v358++, 1);
        }

        while (!v225);
        v357 = v330;
        v310 = v530;
      }

      if (v334 > v335)
      {
        v369 = *(a4 + 192);
        do
        {
          if (v310 >= 1)
          {
            v370 = *(v369 + 4 * v335) * v310;
            v371 = v370 + v310;
            v372 = v370;
            do
            {
              v373 = *(a17 + 4 * v372);
              v374 = -v373;
              if (v373 <= 0 && v350 > v374)
              {
                if (v311 == 81)
                {
                  v376 = *v340 * v530 - v373;
                  v311 = a3;
                }

                else
                {
                  v376 = *(v355 + 4 * v374);
                }

                if (v372 == v376)
                {
                  v377 = &v534[v351++];
                  *v377 = v357;
                  v377[1] = v374;
                }
              }

              ++v372;
              ++v357;
            }

            while (v372 < v371);
          }

          ++v335;
          v310 = v530;
        }

        while (v335 != v334);
      }

      if (v326 >= 1)
      {
        v326 = v326;
        do
        {
          v379 = *v343++;
          v378 = v379;
          v380 = *(a17 + 4 * v379);
          v381 = -v380;
          v382 = v380 > 0 || v350 <= v381;
          if (!v382 && *(v356 + 4 * v381) == v378)
          {
            v383 = &v534[v351++];
            *v383 = v357;
            v383[1] = v381;
          }

          ++v357;
          --v326;
        }

        while (v326);
      }

      v18 = a4;
      if (v351)
      {
        v384 = (v490 - v353) >> 2;
        v385 = &v534[v483];
        v312 = v499;
        v313 = v529;
        v386 = 0;
        if (v523 >= v330)
        {
          v396 = v523;
          v390 = v486 + 16 * v477 * v330;
          v391 = v510;
        }

        else
        {
          v387 = v523 - v330;
          v388 = (v475 + 4 * v523);
          v389 = v523;
          v390 = v486 + 16 * v477 * v330;
          v391 = v510;
          do
          {
            v393 = *v388++;
            v392 = v393;
            if (v393 < 0)
            {
              v392 = -v392;
            }

            v394 = *(v21 + 4 * v392);
            if ((v394 & 0x80000000) == 0 && v394 < v384)
            {
              v335 = v353[v394];
              if (v335 == v392)
              {
                v395 = &v513[v386++];
                *v395 = v389;
                v395[1] = v394;
              }
            }

            ++v389;
            v225 = __CFADD__(v387++, 1);
          }

          while (!v225);
          v396 = v330;
        }

        if (v337 > v338)
        {
          v397 = *(a4 + 208);
          do
          {
            if (v310 >= 1)
            {
              v398 = *(v397 + 4 * v338) * v310;
              v399 = v398;
              v400 = v398 + v310;
              do
              {
                v335 = *(v21 + 4 * v399);
                if ((v335 & 0x80000000) == 0 && v335 < v384 && v399 == v353[v335])
                {
                  v401 = &v513[v386++];
                  *v401 = v396;
                  v401[1] = v335;
                }

                ++v399;
                ++v396;
              }

              while (v399 < v400);
            }

            ++v338;
          }

          while (v338 != v337);
        }

        if (v494 >= 1)
        {
          v402 = v494;
          v305 = v519;
          do
          {
            v404 = *v345++;
            v403 = v404;
            v405 = *(v21 + 4 * v404);
            if ((v405 & 0x80000000) == 0 && v405 < v384 && v353[v405] == v403)
            {
              v406 = &v513[v386++];
              *v406 = v396;
              v406[1] = v405;
            }

            ++v396;
            --v402;
          }

          while (v402);
          if (!v386)
          {
            goto LABEL_523;
          }

          goto LABEL_493;
        }

        v305 = v519;
        if (v386)
        {
LABEL_493:
          v407 = v523;
          v408 = v523 * v351;
          if (a11[1] < (v523 * v351))
          {
            if (*a11)
            {
              (*(a4 + 32))(*a11, v335, v513, v499, v311, v529);
            }

            *a11 = (*(a4 + 24))(16 * v408);
            a11[1] = v408;
            v385 = &v534[v483];
            v407 = v523;
            v390 = v486 + 16 * v477 * v330;
            v391 = v510;
          }

          v409 = v407;
          v410 = v486;
          if (v407 >= 1)
          {
            v411 = 0;
            v412 = 0;
            do
            {
              v413 = v534;
              v414 = v411;
              v415 = v351;
              do
              {
                v416 = *v413++;
                *(*a11 + v414) = *(v486 + 16 * v412 * v477 + 16 * v416);
                v414 += 16;
                --v415;
              }

              while (v415);
              ++v412;
              v411 += 16 * v351;
            }

            while (v412 != v409);
          }

          v417 = v523;
          v418 = v523 * v386;
          if (a12[1] < (v523 * v386))
          {
            v419 = a4;
            if (*a12)
            {
              (*(a4 + 32))(*a12, v335, v385, v312, v311, v313);
              v419 = a4;
              v418 = v523 * v386;
            }

            v503 = v418;
            *a12 = (*(v419 + 24))(16 * v418);
            a12[1] = v503;
            v385 = &v534[v483];
            v417 = v523;
            v410 = v486;
            v390 = v486 + 16 * v477 * v330;
            v391 = v510;
          }

          if (v417 >= 1)
          {
            v420 = 0;
            v421 = 0;
            do
            {
              v422 = v385;
              v423 = v420;
              v424 = v386;
              do
              {
                v425 = *v422++;
                v426 = v390 + 16 * v421 * v391 + 16 * (v425 - v330);
                v427 = (v410 + 16 * v421 + 16 * v425 * v477);
                if (v425 >= v330)
                {
                  v427 = v426;
                }

                *(*a12 + v423) = *v427;
                v423 += 16;
                --v424;
              }

              while (v424);
              ++v421;
              v420 += 16 * v386;
            }

            while (v421 != v409);
          }

          v428 = v386 * v351;
          v429 = *a13;
          if (a13[1] >= v428)
          {
            v430 = a13;
          }

          else
          {
            if (v429)
            {
              (*(a4 + 32))(v429, v335, v385, v312, v311, v313);
            }

            v430 = a13;
            *a13 = (*(a4 + 24))(16 * v428);
            a13[1] = v428;
          }

          v431 = *a11;
          v471 = *a12;
          cblas_zgemm_NEWLAPACK();
          v432 = 0;
          v433 = *v430;
          v18 = a4;
          v310 = v530;
          v311 = a3;
          v305 = v519;
          v312 = v499;
          LODWORD(v313) = v529;
          do
          {
            v434 = &v479[16 * SHIDWORD(v513[v432])];
            v435 = v534;
            v436 = v433;
            v437 = v351;
            do
            {
              v438 = *(v435 + 1) * v302;
              v439 = *v436++;
              *&v434[16 * v438] = vaddq_f64(v439, *&v434[16 * v438]);
              ++v435;
              --v437;
            }

            while (v437);
            ++v432;
            v433 += v351;
          }

          while (v432 != v386);
          v481 = *(a4 + 240);
        }
      }

      else
      {
        v305 = v519;
        v312 = v499;
        LODWORD(v313) = v529;
      }

LABEL_523:
      v440 = (v481 + 8 * v506);
      v441 = *v440;
      v442 = v440[1];
      if (*v440 >= v442)
      {
        i = v511;
      }

      else
      {
        v443 = *(v18 + 256);
        v444 = *a14;
        i = v511;
        do
        {
          if (*(v443 + v441))
          {
            v445 = *(*(v18 + 248) + 4 * v441);
            if (*(v444 + 4 * v445) < *(a14 + 16))
            {
              v312[v313] = v445;
              LODWORD(v313) = v313 + 1;
              *(v444 + 4 * v445) = *(a14 + 16);
            }
          }

          ++v441;
        }

        while (v442 != v441);
      }

      continue;
    }

    break;
  }

  if (v540 > 1)
  {
    v446 = (v482[1] - *v482) >> 2;
    v473 = *a10;
    cblas_ztrsm_NEWLAPACK();
  }

LABEL_534:
  if ((v497 & 1) == 0 && v54[1] != *v54)
  {
    sub_23672A9A0(a1, &v536, v18, v530, v515);
  }

  v447 = v540;
  if (v540 >= 1)
  {
    v448 = 0;
    v449 = 0;
    v450 = *(&v540 + 1);
    v451 = v541;
    v452 = *v54;
    v453 = v54[1];
    do
    {
      if (v453 == v452)
      {
        v453 = v452;
      }

      else
      {
        v454 = 0;
        v455 = v448;
        do
        {
          *(v450 + 16 * v451 * v449 + 16 * *(v515 + 4 * v452[v454++])) = *(*a9 + v455);
          v452 = *v54;
          v453 = v54[1];
          v455 += 16;
        }

        while (v454 < v453 - *v54);
      }

      ++v449;
      v448 += 16 * (v474 >> 2);
    }

    while (v449 != v447);
  }

  if ((v497 & 0x100000000) == 0 && v482[1] != *v482)
  {
    sub_23672AA5C(a1, &v536, v18, v530, i);
  }

  if (v447 >= 1)
  {
    v456 = 0;
    v457 = 0;
    v458 = v539;
    v459 = *(&v541 + 1);
    v460 = v542;
    v461 = *(&v540 + 1);
    v462 = v541;
    v463 = *v482;
    v464 = v482[1];
    do
    {
      if (v464 == v463)
      {
        v464 = v463;
      }

      else
      {
        v465 = 0;
        v466 = v456;
        do
        {
          v467 = *(i + 4 * v463[v465]);
          v91 = v467 < v458;
          v468 = v459 + 16 * v460 * v457 + 16 * (v467 - v458);
          v469 = (v461 + 16 * v457 + 16 * v462 * v467);
          if (!v91)
          {
            v469 = v468;
          }

          *v469 = *(*a10 + v466);
          ++v465;
          v463 = *v482;
          v464 = v482[1];
          v466 += 16;
        }

        while (v465 < v464 - *v482);
      }

      ++v457;
      v456 += 16 * v302;
    }

    while (v457 != v447);
  }
}