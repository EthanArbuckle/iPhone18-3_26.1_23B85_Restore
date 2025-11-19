void FLAC__format_seektable_sort(unsigned int *a1)
{
  v1 = *a1;
  if (v1)
  {
    v3 = *(a1 + 1);
    v4 = *(a1 + 2);
    if (v3 > v4 || *(a1 + 3) > v3 || 24 * v1 > v4 - v3)
    {
LABEL_63:
      __break(0x5519u);
      return;
    }

    qsort(v3, v1, 0x18uLL, seekpoint_compare_);
    v5 = *a1;
    if (*a1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 1;
      while (1)
      {
        v11 = *(a1 + 1);
        v10 = *(a1 + 2);
        v12 = *(a1 + 3);
        v13 = (v11 + v6);
        v14 = v11 + v6 + 24;
        v15 = v14 > v10 || v13 > v14;
        if (v15 || v13 < v12)
        {
          goto LABEL_63;
        }

        if (v9 & 1 | (*v13 == -1))
        {
          goto LABEL_25;
        }

        v17 = (v11 + 24 * (v8 - 1));
        if ((v17 + 3) > v10 || v17 >= v17 + 3 || v17 < v12)
        {
          goto LABEL_63;
        }

        if (*v13 != *v17)
        {
LABEL_25:
          v20 = v11 + 24 * v8;
          if (v20 + 24 > v10 || v20 >= v20 + 24 || v20 < v12)
          {
            goto LABEL_63;
          }

          ++v8;
          v23 = *v13;
          *(v20 + 16) = v13[2];
          *v20 = v23;
          v5 = *a1;
        }

        v9 = 0;
        ++v7;
        v6 += 24;
        if (v7 >= v5)
        {
          if (v8 >= v5)
          {
            return;
          }

          v24 = *(a1 + 3);
          v25 = v5 - v8;
          for (i = 24 * v8 + 16; ; i += 24)
          {
            v27 = *(a1 + 1) + i;
            v28 = (v27 - 16);
            v29 = v27 + 8;
            v30 = v29 > *(a1 + 2) || v28 > v29;
            if (v30 || v28 < v24)
            {
              break;
            }

            *v28 = -1;
            v32 = *(a1 + 1) + i;
            v33 = v32 - 16;
            v34 = (v32 + 8) > *(a1 + 2) || v33 > v32 + 8;
            if (v34 || v33 < v24)
            {
              break;
            }

            *(v32 - 8) = 0;
            v36 = *(a1 + 1);
            v37 = v36 + i - 16;
            v38 = v36 + i + 8;
            v39 = v38 > *(a1 + 2) || v37 > v38;
            if (v39 || v37 < v24)
            {
              break;
            }

            *(v36 + i) = 0;
            if (!--v25)
            {
              return;
            }
          }

          goto LABEL_63;
        }
      }
    }
  }
}

uint64_t seekpoint_compare_(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_wasted_bits_(int *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = 1;
  v4 = a1;
  v5 = a2;
  do
  {
    v6 = *v4++;
    v2 |= v6;
    if (v3 >= a2)
    {
      break;
    }

    ++v3;
  }

  while ((v2 & 1) == 0);
  v7 = 0;
  if (v2)
  {
    v8 = (v2 & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    do
    {
      v9 = v2;
      v2 >>= 1;
      v7 = (v7 + 1);
    }

    while ((v9 & 2) == 0);
    if (v7)
    {
      do
      {
        *a1++ >>= v7;
        --v5;
      }

      while (v5);
    }
  }

  return v7;
}

void process_subframe_(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int a5, int **a6, unint64_t *a7, unint64_t a8, unint64_t a9, _DWORD *a10, _DWORD *a11)
{
  v11 = a5;
  v391[1] = *MEMORY[0x1E69E9840];
  v373 = -1;
  v372[1] = -1;
  v372[0] = -1;
  v370 = -1;
  *&v12 = -1;
  *(&v12 + 1) = -1;
  v369[6] = v12;
  v369[7] = v12;
  v369[4] = v12;
  v369[5] = v12;
  v369[2] = v12;
  v369[3] = v12;
  v369[0] = v12;
  v369[1] = v12;
  v368[14] = v12;
  v368[15] = v12;
  v368[12] = v12;
  v368[13] = v12;
  v368[10] = v12;
  v368[11] = v12;
  v368[8] = v12;
  v368[9] = v12;
  v368[7] = v12;
  v368[5] = v12;
  v368[6] = v12;
  v368[3] = v12;
  v368[4] = v12;
  v368[1] = v12;
  v368[2] = v12;
  v13 = a1[1];
  v36 = *(*a1 + 28) > 0x10u;
  v368[0] = v12;
  if (v36)
  {
    v14 = 31;
  }

  else
  {
    v14 = 15;
  }

  v330 = v14;
  if (*(v13 + 11680) && (v15 = *a4, *a4 > 3))
  {
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = *a6;
    v18 = *a6;
    if (*a6 < a6[2])
    {
      goto LABEL_496;
    }

    v19 = *a4;
    v20 = *a7;
    if (*a7)
    {
      if (v20 >= v20 + 336 || v20 + 336 > a7[1] || v20 < a7[2])
      {
        goto LABEL_496;
      }
    }

    *v20 = 1;
    *(v20 + 8) = v17;
    *(v20 + 24) = v18;
    v16 = *(v20 + 328) + v19 * a5 + 8;
    v15 = *a4;
    if (*a4 < 4)
    {
      LODWORD(v26) = 0;
      goto LABEL_485;
    }

    v13 = a1[1];
  }

  v331 = a4;
  v21 = a5 + (__clz((v15 | 1) - 4) ^ 0x1F) + 4;
  v22 = v15 - 4;
  v23 = a6[1];
  v24 = a6[2];
  if (v21 > 0x20)
  {
    v25 = *(v13 + 11632);
  }

  else
  {
    v25 = *(v13 + 11624);
  }

  *&v375 = *a6 + 4;
  *(&v375 + 1) = v23;
  *&v376 = v24;
  v27 = v25(&v375, v22, v372);
  a4 = v331;
  v28 = a1;
  v29 = a1[1];
  if (!*(v29 + 11672) && *(v372 + 1) == 0.0)
  {
    v30 = *v331;
    v31 = *a6;
    v32 = a6[1];
    v33 = a6[2];
    if (v30 < 2)
    {
LABEL_35:
      if ((v31 + 1) <= v32 && v31 <= v31 + 1 && v31 >= v33)
      {
        v38 = (a7 + 3);
        if (a7 + 3 <= a7 + 6 && v38 >= a7)
        {
          v39 = *v31;
          v40 = *v38;
          if (!v40 || v40 < v40 + 84 && (v40 + 84) <= a7[4] && v40 >= a7[5])
          {
            *v40 = 0;
            v40[2] = v39;
            v41 = v11 + v40[82] + 8;
            LODWORD(v26) = v41 < v16;
            if (v41 < v16)
            {
              LODWORD(v16) = v11 + v40[82] + 8;
            }

            goto LABEL_485;
          }
        }
      }

      goto LABEL_496;
    }

    v34 = v31 + 1;
    if ((v31 + 1) > v32 || v31 > v34 || v31 < v33)
    {
      goto LABEL_496;
    }

    v35 = v30 - 1;
    while (1)
    {
      v36 = (v34 + 1) > v32 || v34 > v34 + 1;
      if (v36 || v34 < v33)
      {
        goto LABEL_496;
      }

      if (*v31 != *v34)
      {
        break;
      }

      ++v34;
      if (!--v35)
      {
        goto LABEL_35;
      }
    }
  }

  v42 = *a1;
  v353 = v11;
  if ((!*(v29 + 11676) || (!v42[139] ? (v43 = v16 == -1) : (v43 = 0), v43)) && (v42[142] ? (v44 = 4) : (v44 = v27), v42[142] ? (v45 = 0) : (v45 = v27), v44 >= *v331 ? (v46 = *v331 - 1) : (v46 = v44), v45 <= v46))
  {
    v26 = 0;
    v47 = v11;
    v48 = -v45;
    v346 = v46;
    do
    {
      v49 = v372 + v45;
      v50 = v49 + 1;
      if (v49 < v372 || v50 > &v374 || v49 > v50)
      {
        goto LABEL_496;
      }

      v53 = *v49;
      if (*v49 < v47)
      {
        if (v53 > 0.0)
        {
          v54 = (v53 + 0.5) + 1;
        }

        else
        {
          v54 = 1;
        }

        if (v54 >= v330)
        {
          v55 = v330 - 1;
        }

        else
        {
          v55 = v54;
        }

        v56 = v26 == 0;
        v57 = a9 + 24 * v56;
        if (v57 < a9)
        {
          goto LABEL_496;
        }

        if (v57 + 24 > a9 + 48)
        {
          goto LABEL_496;
        }

        if (v57 > v57 + 24)
        {
          goto LABEL_496;
        }

        v58 = *v57;
        if (*v57 < *(v57 + 16))
        {
          goto LABEL_496;
        }

        v59 = v28[1];
        v60 = v59[1391];
        if (v60 < v59[1393])
        {
          goto LABEL_496;
        }

        v61 = v59[1394];
        if (v61 < v59[1396])
        {
          goto LABEL_496;
        }

        v62 = &a7[3 * v56];
        if (v62 < a7)
        {
          goto LABEL_496;
        }

        if (v62 + 3 > a7 + 6)
        {
          goto LABEL_496;
        }

        if (v62 > v62 + 3)
        {
          goto LABEL_496;
        }

        v63 = *(v57 + 8);
        v64 = v59[1392];
        v65 = v59[1395];
        v66 = *a4;
        v67 = *(*v28 + 572);
        v68 = *v62;
        if (*v62)
        {
          if (v68 >= v68 + 336 || v68 + 336 > v62[1] || v68 < v62[2])
          {
            goto LABEL_496;
          }
        }

        v69 = (a8 + 8 * v56);
        if (v69 < a8 || (v69 + 1) > a8 + 16 || v69 > v69 + 1)
        {
          goto LABEL_496;
        }

        v70 = 4 * v45;
        v71 = *a6;
        v72 = a6[1];
        v361 = v65;
        v363 = v66 - v45;
        v73 = a6[2];
        v348 = v26;
        v357 = v64;
        v355 = v26 == 0;
        v356 = *v69;
        if (v45 <= 1)
        {
          if (v45)
          {
            if (v45 == 1 && v363 >= 1)
            {
              v87 = 0;
              v88 = 4 * (v66 + v48);
              v89 = &v71[v70];
              do
              {
                v90 = &v89[v87];
                v91 = &v89[v87 + 4];
                if (v91 > v72 || v90 > v91 || v90 < v73)
                {
                  goto LABEL_496;
                }

                v94 = v90 - 4;
                if (v90 < 4)
                {
                  goto LABEL_496;
                }

                if (v94 < v73)
                {
                  goto LABEL_496;
                }

                v95 = &v58[v87 / 4];
                v96 = &v58[v87 / 4 + 1];
                if (v96 > v63 || v95 > v96 || v95 < v58)
                {
                  goto LABEL_496;
                }

                *v95 = *v90 - *v94;
                v87 += 4;
              }

              while (v88 != v87);
            }
          }

          else
          {
            if (v71 > v72)
            {
              goto LABEL_496;
            }

            if (v73 > v71)
            {
              goto LABEL_496;
            }

            v120 = 4 * v363;
            if (v120 > v72 - v71)
            {
              goto LABEL_496;
            }

            if (v58 > v63)
            {
              goto LABEL_496;
            }

            if (v120 > v63 - v58)
            {
              goto LABEL_496;
            }

            v343 = v55;
            v339 = v61;
            v341 = v60;
            v337 = *(*v28 + 572);
            memcpy(v58, v71, 4 * v363);
            v67 = v337;
            v61 = v339;
            v60 = v341;
            v55 = v343;
            v28 = a1;
            if (v58 > &v58[v120 / 4])
            {
              goto LABEL_496;
            }
          }
        }

        else if (v45 == 2)
        {
          if (v363 >= 1)
          {
            v97 = 0;
            v98 = 4 * (v66 + v48);
            v99 = &v71[v70];
            do
            {
              v100 = &v99[v97];
              v101 = &v99[v97 + 4];
              if (v101 > v72 || v100 > v101 || v100 < v73)
              {
                goto LABEL_496;
              }

              v104 = v100 - 4;
              if (v100 < 4)
              {
                goto LABEL_496;
              }

              if (v104 < v73)
              {
                goto LABEL_496;
              }

              v105 = &v99[v97 - 8];
              if (v105 > v104)
              {
                goto LABEL_496;
              }

              if (v105 < v73)
              {
                goto LABEL_496;
              }

              v106 = &v58[v97 / 4];
              v107 = &v58[v97 / 4 + 1];
              if (v107 > v63 || v106 > v107 || v106 < v58)
              {
                goto LABEL_496;
              }

              *v106 = *v100 - 2 * *v104 + *v105;
              v97 += 4;
            }

            while (v98 != v97);
          }
        }

        else if (v45 == 3)
        {
          if (v363 >= 1)
          {
            v108 = 0;
            v109 = 4 * (v66 + v48);
            v110 = &v71[v70];
            do
            {
              v111 = &v110[v108];
              v112 = &v110[v108 + 4];
              if (v112 > v72 || v111 > v112 || v111 < v73)
              {
                goto LABEL_496;
              }

              v115 = v111 - 4;
              if (v111 < 4)
              {
                goto LABEL_496;
              }

              if (v115 < v73)
              {
                goto LABEL_496;
              }

              v116 = &v110[v108 - 8];
              if (v116 > v115)
              {
                goto LABEL_496;
              }

              if (v116 < v73)
              {
                goto LABEL_496;
              }

              v117 = &v110[v108 - 12];
              if (v117 > v116)
              {
                goto LABEL_496;
              }

              if (v117 < v73)
              {
                goto LABEL_496;
              }

              v118 = &v58[v108 / 4];
              v119 = &v58[v108 / 4 + 1];
              if (v119 > v63 || v118 > v119 || v118 < v58)
              {
                goto LABEL_496;
              }

              *v118 = *v111 - *v117 + 3 * (*v116 - *v115);
              v108 += 4;
            }

            while (v109 != v108);
          }
        }

        else if (v45 == 4 && v363 >= 1)
        {
          v74 = 0;
          v75 = 4 * (v66 + v48);
          v76 = &v71[v70];
          do
          {
            v77 = &v76[v74];
            v78 = &v76[v74 + 4];
            if (v78 > v72 || v77 > v78 || v77 < v73)
            {
              goto LABEL_496;
            }

            v81 = v77 - 4;
            if (v77 < 4)
            {
              goto LABEL_496;
            }

            if (v81 < v73)
            {
              goto LABEL_496;
            }

            v82 = &v76[v74 - 8];
            if (v82 > v81)
            {
              goto LABEL_496;
            }

            if (v82 < v73)
            {
              goto LABEL_496;
            }

            v83 = &v76[v74 - 12];
            if (v83 > v82)
            {
              goto LABEL_496;
            }

            if (v83 < v73)
            {
              goto LABEL_496;
            }

            v84 = &v76[v74 - 16];
            if (v84 > v83)
            {
              goto LABEL_496;
            }

            if (v84 < v73)
            {
              goto LABEL_496;
            }

            v85 = &v58[v74 / 4];
            v86 = &v58[v74 / 4 + 1];
            if (v86 > v63 || v85 > v86 || v85 < v58)
            {
              goto LABEL_496;
            }

            *v85 = *v77 + 6 * *v82 + *v84 - 4 * (*v83 + *v81);
            v74 += 4;
          }

          while (v75 != v74);
        }

        *(v68 + 8) = 0;
        *v68 = 2;
        *(v68 + 24) = v356;
        *(v68 + 56) = v58;
        *(v68 + 64) = v63;
        *(v68 + 72) = v58;
        find_best_partition_order_(v28[1], v58, v63, v60, v357, v61, v361, v363, v45, v55, v330, a2, a3, v353, v67, v68 + 8);
        *(v68 + 32) = v45;
        a4 = v331;
        if (v45)
        {
          v122 = 0;
          do
          {
            v123 = &v71[v122];
            v124 = &v71[v122 + 4];
            v126 = v124 <= v72 && v123 <= v124 && v123 >= v73;
            v127 = (v68 + v122 + 36);
            v128 = v68 + v122 + 40;
            if (!v126 || v127 < v68 + 36 || v128 > v68 + 52 || v127 > v128)
            {
              goto LABEL_496;
            }

            *v127 = *v123;
            v122 += 4;
          }

          while (v70 != v122);
        }

        v11 = v353;
        v132 = v121 + v45 * v353 + *(v68 + 328) + 8;
        if (v132 >= v16)
        {
          v26 = v348;
        }

        else
        {
          v26 = v355;
        }

        if (v132 >= v16)
        {
          v16 = v16;
        }

        else
        {
          v16 = v132;
        }

        v28 = a1;
        v46 = v346;
      }

      ++v45;
      --v48;
    }

    while (v45 <= v46);
    v42 = *v28;
  }

  else
  {
    v26 = 0;
  }

  v133 = v42[139];
  if (!v133)
  {
    goto LABEL_485;
  }

  v134 = v133 >= *a4 ? *a4 - 1 : v42[139];
  if (!v134 || !v42[10])
  {
    goto LABEL_485;
  }

  v135 = 0;
  v136 = v11;
  do
  {
    v137 = v28[1];
    v138 = v137 + 157;
    v323 = v135;
    v139 = &v137[3 * v135 + 61];
    v140 = v139 + 24;
    if (v139 < (v137 + 61) || v140 > v138 || v139 > v140)
    {
      goto LABEL_496;
    }

    v143 = v137[157];
    v144 = v137[158];
    if (v143 > v144 || v137[159] > v143)
    {
      goto LABEL_496;
    }

    v145 = *v139;
    v146 = *(v139 + 8);
    v147 = *(v139 + 16);
    v148 = *a4;
    v149 = v148 > (v144 - v143) >> 2 || v145 > v146;
    if (v149 || v147 > v145)
    {
      goto LABEL_496;
    }

    v151 = *a6;
    v152 = a6[1];
    v153 = v148 > (v146 - v145) >> 2 || v151 > v152;
    v154 = v153 || a6[2] > v151;
    if (v154 || v148 > (v152 - v151) >> 2)
    {
      goto LABEL_496;
    }

    v155 = v26;
    v156 = v16;
    if (v148)
    {
      v157 = *a4;
      do
      {
        v158 = *v151++;
        v159 = v158;
        v160 = *v145++;
        *v143++ = v160 * v159;
        --v157;
      }

      while (v157);
    }

    v161 = v137[1455];
    v375 = *v138;
    *&v376 = v138[2];
    *__e = v369;
    v366 = v371;
    v367 = v369;
    v161(&v375);
    if (*v369 == 0.0)
    {
      a4 = v331;
      v28 = a1;
      v26 = v155;
      v211 = v323;
      goto LABEL_482;
    }

    v162 = 0;
    v28 = a1;
    v163 = a1[1] + 13584;
    *&v164 = -1;
    *(&v164 + 1) = -1;
    v389 = v164;
    v390 = v164;
    v387 = v164;
    v388 = v164;
    v385 = v164;
    v386 = v164;
    v383 = v164;
    v384 = v164;
    v381 = v164;
    v382 = v164;
    v379 = v164;
    v380 = v164;
    v377 = v164;
    v378 = v164;
    v165 = *v369;
    v166 = -1;
    v375 = v164;
    v376 = v164;
    v26 = v155;
    do
    {
      v167 = v162 >> 1;
      if (((v162 >> 1) & 0x7FFFFFFE) != 0)
      {
        v168 = v162 >> 1;
      }

      else
      {
        v168 = 1;
      }

      if (v167 <= 1)
      {
        v169 = 1;
      }

      else
      {
        v169 = v167;
      }

      if (v162 == v134)
      {
        goto LABEL_326;
      }

      v170 = v162 + 1;
      v171 = v369 + v162 + 1;
      if (v171 + 1 > v371 || v171 > v171 + 1 || v171 < v369)
      {
        goto LABEL_496;
      }

      v172 = -*v171;
      if (v162)
      {
        v173 = &v375;
        v174 = v162;
        do
        {
          v175 = v173 + 1;
          v176 = v173 < &v375 || v175 > v391;
          if (v176 || v173 > v175)
          {
            goto LABEL_496;
          }

          v178 = v369 + v174;
          v179 = v178 + 1 > v371 || v178 > v178 + 1;
          if (v179 || v178 < v369)
          {
            goto LABEL_496;
          }

          v181 = *v173++;
          v172 = v172 - v181 * *v178;
        }

        while (--v174);
      }

      v182 = &v375 + 8 * v162;
      if (v182 < &v375 || v182 + 8 > v391 || v182 > v182 + 8)
      {
        goto LABEL_496;
      }

      v183 = v172 / v165;
      *(&v375 + v162) = v183;
      if (v162 >= 2)
      {
        v184 = &v375;
        v185 = v166;
        while (1)
        {
          v186 = v184 + 1;
          v187 = v184 < &v375 || v186 > v391;
          v188 = v187 || v184 > v186;
          v189 = &v375 + v185;
          v190 = v189 + 1;
          v191 = !v188 && v189 >= &v375;
          v192 = !v191 || v190 > v391;
          if (v192 || v189 > v190)
          {
            goto LABEL_496;
          }

          v194 = *v184;
          *v184 = *v184 + v183 * *v189;
          ++v184;
          *v189 = *v189 + v183 * v194;
          --v185;
          if (!--v168)
          {
            goto LABEL_301;
          }
        }
      }

      v169 = 0;
LABEL_301:
      if (v162)
      {
        v195 = &v375 + v169;
        if (v195 < &v375 || v195 + 1 > v391 || v195 > v195 + 1)
        {
          goto LABEL_496;
        }

        *v195 = *v195 + *v195 * v183;
      }

      v196 = 0;
      v165 = v165 * (1.0 - v183 * v183);
      v197 = v163 + (v162 << 7);
      do
      {
        v198 = v196;
        v199 = &v375 + 8 * v196;
        v200 = v199 + 8 > v391 || v199 > v199 + 8;
        v201 = (v197 + 4 * v198);
        v202 = (v201 + 1);
        if (v200 || v201 < v197 || v202 > v197 + 128 || v201 > v202)
        {
          goto LABEL_496;
        }

        v206 = *(&v375 + v198);
        *v201 = -v206;
        v196 = v198 + 1;
      }

      while (v198 + 1 <= v162);
      v207 = v368 + v162;
      if (v207 + 1 > v369 || v207 > v207 + 1 || v207 < v368)
      {
        goto LABEL_496;
      }

      *v207 = v165;
      ++v166;
      v162 = v170;
    }

    while (v165 != 0.0);
    v134 = v170;
LABEL_326:
    v208 = *a1;
    a4 = v331;
    v209 = *v331;
    if (*(*a1 + 568))
    {
LABEL_327:
      v210 = 1;
      goto LABEL_346;
    }

    if (*(v208 + 564))
    {
      v212 = 5;
    }

    else
    {
      v212 = *(v208 + 560);
    }

    if (v134 > 0x20)
    {
      goto LABEL_496;
    }

    v213 = v134;
    if (!v134)
    {
      v134 = 1;
      goto LABEL_327;
    }

    v214 = 0;
    v215 = 0;
    v216 = v212 + v11;
    v217 = v213;
    v218 = v209 - 1;
    v219 = v212 + v11;
    v220 = 4294967300.0;
    do
    {
      v221 = *(v368 + v214);
      if (v221 <= 0.0)
      {
        if (v221 >= 0.0)
        {
          v223 = 0.0;
        }

        else
        {
          v223 = 1.0e32;
        }
      }

      else
      {
        v222 = log(0.5 / v209 * v221);
        v26 = v155;
        v16 = v156;
        a4 = v331;
        v28 = a1;
        v223 = v222 * 0.5 / 0.693147181;
        if (v223 < 0.0)
        {
          v223 = 0.0;
        }
      }

      v224 = v219 + v223 * v218;
      if (v224 < v220)
      {
        v220 = v224;
        v215 = v214;
      }

      ++v214;
      v219 += v216;
      --v218;
    }

    while (v217 != v214);
    v134 = v215 + 1;
    v210 = v215 + 1;
LABEL_346:
    if (v134 >= v209)
    {
      v134 = v209 - 1;
    }

    if (v210 <= v134)
    {
      v325 = v210 - 1;
      v324 = v134;
      while (1)
      {
        v225 = v368 + v210 - 1;
        v226 = v225 + 1;
        if (v225 < v368 || v226 > v369 || v225 > v226)
        {
          goto LABEL_496;
        }

        if (*v225 <= 0.0)
        {
          v231 = *v225 >= 0.0 ? 0.0 : 1.0e32;
        }

        else
        {
          v229 = v26;
          v230 = log(0.5 / (*a4 - v210) * *v225);
          v26 = v229;
          a4 = v331;
          v28 = a1;
          v231 = v230 * 0.5 / 0.693147181;
          if (v231 < 0.0)
          {
            v231 = 0.0;
          }
        }

        if (v231 < v136)
        {
          break;
        }

LABEL_480:
        ++v210;
        ++v325;
        v134 = v324;
        if (v210 > v324)
        {
          goto LABEL_481;
        }
      }

      if (v231 > 0.0)
      {
        v232 = (v231 + 0.5) + 1;
      }

      else
      {
        v232 = 1;
      }

      if (v232 >= v330)
      {
        v232 = v330 - 1;
      }

      v328 = v232;
      v233 = __clz(v210);
      if (*(*v28 + 564))
      {
        v234 = 5;
        if (v11 > 0x11)
        {
          v235 = 15;
        }

        else
        {
          v235 = (v233 ^ 0xFFFFFFE0) - v11 + 33;
          if (v235 >= 0xF)
          {
            v235 = 15;
          }

          if (v235 <= 5)
          {
            v235 = 5;
          }
        }

        v362 = v235;
      }

      else
      {
        v234 = *(*v28 + 560);
        v362 = v234;
      }

      v236 = v210;
      v354 = v325 << 7;
      v364 = (v233 ^ 0xFFFFFFE0) - v11 + 33;
      v329 = v233 ^ 0x1F;
      v347 = v210;
      v345 = v210;
      while (2)
      {
        v237 = v26 == 0;
        v238 = (a9 + 24 * v237);
        v239 = (v238 + 3);
        if (v238 < a9 || v239 > a9 + 48 || v238 > v239)
        {
          goto LABEL_496;
        }

        v242 = *v238;
        if (*v238 < v238[2])
        {
          goto LABEL_496;
        }

        v243 = v28[1];
        v244 = v243[1391];
        if (v244 < v243[1393])
        {
          goto LABEL_496;
        }

        v245 = v243[1394];
        if (v245 < v243[1396])
        {
          goto LABEL_496;
        }

        v246 = &a7[3 * v237];
        v247 = (v246 + 3);
        v248 = v246 < a7 || v247 > (a7 + 6);
        if (v248 || v246 > v247)
        {
          goto LABEL_496;
        }

        v250 = v238[1];
        v251 = v243[1392];
        v252 = v243[1395];
        v253 = *a4;
        v254 = *(*v28 + 572);
        v255 = *v246;
        if (*v246)
        {
          v258 = v246 + 1;
          v256 = v246[1];
          v257 = v258[1];
          v259 = v255 >= v255 + 336 || v255 + 336 > v256;
          if (v259 || v255 < v257)
          {
            goto LABEL_496;
          }
        }

        v261 = (a8 + 8 * v237);
        if (v261 < a8 || (v261 + 1) > a8 + 16 || v261 > v261 + 1)
        {
          goto LABEL_496;
        }

        v262 = *v261;
        v264 = *a6;
        v263 = a6[1];
        v265 = a6[2];
        v266 = v364;
        if (v364 >= v234)
        {
          v266 = v234;
        }

        v267 = v11 >= 0x12 ? v234 : v266;
        *&v268 = 0xAAAAAAAAAAAAAAAALL;
        *(&v268 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v381 = v268;
        v382 = v268;
        v379 = v268;
        v380 = v268;
        v377 = v268;
        v378 = v268;
        v375 = v268;
        v376 = v268;
        if (v210 >= 0x21)
        {
          goto LABEL_496;
        }

        if (v210)
        {
          v352 = v242;
          v269 = v253 - v210;
          v270 = 1 << (v267 - 1);
          v271 = -v270;
          v272 = (v243 + v354 + 13584);
          v273 = 0.0;
          v274 = v236;
          do
          {
            v275 = *v272++;
            v276 = fabsf(v275);
            if (v273 < v276)
            {
              v273 = v276;
            }

            --v274;
          }

          while (v274);
          if (v273 <= 0.0)
          {
            goto LABEL_425;
          }

          v342 = v244;
          v344 = v269;
          v334 = v262;
          v335 = v254;
          v350 = v250;
          v336 = v251;
          v338 = v252;
          v340 = v245;
          v349 = v26;
          __e[0] = -1431655766;
          v351 = v267;
          frexp(v273, __e);
          v277 = v351 + ~__e[0];
          if (v277 >= 16)
          {
            v277 = 15;
            v236 = v345;
LABEL_427:
            v279 = (v243 + v354 + 13584);
            v280 = 0.0;
            v281 = &v375;
            v282 = v236;
            v283 = v350;
            do
            {
              v284 = *v279++;
              v285 = v280 + (v284 * (1 << v277));
              v286 = llround(v285);
              if (v286 <= v271)
              {
                v287 = -v270;
              }

              else
              {
                v287 = v286;
              }

              if (v270 <= v286)
              {
                v288 = v270 - 1;
              }

              else
              {
                v288 = v287;
              }

              v280 = v285 - v288;
              *v281++ = v288;
              --v282;
            }

            while (v282);
            goto LABEL_435;
          }

          a4 = v331;
          v28 = a1;
          LODWORD(v26) = v349;
          v236 = v345;
          if (v277 >= -16)
          {
            if ((v277 & 0x80000000) == 0)
            {
              goto LABEL_427;
            }

            v309 = (v243 + v354 + 13584);
            v310 = 0.0;
            v311 = &v375;
            v312 = v345;
            v283 = v350;
            do
            {
              v313 = *v309++;
              v314 = v310 + (v313 / (1 << -v277));
              v315 = llround(v314);
              if (v315 <= v271)
              {
                v316 = -v270;
              }

              else
              {
                v316 = v315;
              }

              if (v270 <= v315)
              {
                v317 = v270 - 1;
              }

              else
              {
                v317 = v316;
              }

              v310 = v314 - v317;
              *v311++ = v317;
              --v312;
            }

            while (v312);
            v277 = 0;
LABEL_435:
            v333 = v277;
            v210 = v347;
            if (v351 + v353 + v329 > 0x20)
            {
              if (v352 > v283 || v344 > (v283 - v352) >> 2)
              {
                goto LABEL_496;
              }

              v289 = v243[1457];
            }

            else if (v353 > 0x10 || v351 > 0x10)
            {
              if (v352 > v283 || v344 > (v283 - v352) >> 2)
              {
                goto LABEL_496;
              }

              v289 = v243[1456];
            }

            else
            {
              if (v352 > v283 || v344 > (v283 - v352) >> 2)
              {
                goto LABEL_496;
              }

              v289 = v243[1458];
            }

            *__e = &v264[v236];
            v366 = v263;
            v367 = v265;
            v289(__e, v344, &v375, v347);
            *(v255 + 8) = 0;
            *v255 = 3;
            *(v255 + 24) = v334;
            *(v255 + 304) = v352;
            *(v255 + 312) = v350;
            *(v255 + 320) = v352;
            v11 = v353;
            find_best_partition_order_(a1[1], v352, v350, v342, v336, v340, v338, v344, v347, v328, v330, a2, a3, v353, v335, v255 + 8);
            v28 = a1;
            v291 = 0;
            *(v255 + 32) = v347;
            *(v255 + 36) = v351;
            *(v255 + 40) = v333;
            v293 = v377;
            v292 = v378;
            v294 = v376;
            *(v255 + 44) = v375;
            *(v255 + 60) = v294;
            v296 = v381;
            v295 = v382;
            v297 = v380;
            *(v255 + 108) = v379;
            *(v255 + 124) = v297;
            *(v255 + 140) = v296;
            *(v255 + 156) = v295;
            *(v255 + 76) = v293;
            *(v255 + 92) = v292;
            v236 = v345;
            v298 = v345;
            a4 = v331;
            LODWORD(v26) = v349;
            do
            {
              v299 = &v264[v291];
              v300 = &v264[v291 + 1];
              v302 = v300 <= v263 && v299 <= v300 && v299 >= v265;
              v303 = (v255 + v291 * 4 + 172);
              v304 = v255 + v291 * 4 + 176;
              if (!v302 || v304 > v255 + 300 || v303 > v304)
              {
                goto LABEL_496;
              }

              *v303 = *v299;
              ++v291;
              --v298;
            }

            while (v298);
            v278 = v290 + (v351 + v353) * v347 + *(v255 + 328) + 17;
          }

          else
          {
LABEL_425:
            v278 = 0;
            v11 = v353;
            v210 = v347;
          }
        }

        else
        {
          v278 = 0;
        }

        v307 = v278 != 0;
        v308 = v278 < v16;
        if (v307 && v308)
        {
          v26 = v237;
        }

        else
        {
          v26 = v26;
        }

        if (v307 && v308)
        {
          v16 = v278;
        }

        else
        {
          v16 = v16;
        }

        if (++v234 > v362)
        {
          goto LABEL_480;
        }

        continue;
      }
    }

LABEL_481:
    v211 = v323;
LABEL_482:
    v135 = v211 + 1;
  }

  while (v135 < *(*v28 + 40));
LABEL_485:
  if (v16 == -1)
  {
    v318 = *a6;
    v319 = *a6;
    if (*a6 >= a6[2])
    {
      v320 = &a7[3 * v26];
      if (v320 >= a7 && v320 + 3 <= a7 + 6 && v320 <= v320 + 3)
      {
        v321 = *a4;
        v322 = *v320;
        if (!*v320 || v322 < v322 + 336 && v322 + 336 <= v320[1] && v322 >= v320[2])
        {
          *v322 = 1;
          *(v322 + 8) = v318;
          *(v322 + 24) = v319;
          LODWORD(v16) = *(v322 + 328) + v321 * v11 + 8;
          goto LABEL_495;
        }
      }
    }

LABEL_496:
    __break(0x5519u);
  }

LABEL_495:
  *a10 = v26;
  *a11 = v16;
}

uint64_t FLAC__frame_add_header(uint64_t a1, uint64_t a2)
{
  result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, 0x3FFEu, 0xEu);
  if (!result)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!*a2)
  {
    return 0;
  }

  if (*(a2 + 28) <= (*(a2 + 32) + 1))
  {
    result = bitwriter_grow_(a2, 1);
    if (!result)
    {
      return 0;
    }
  }

  v5 = *(a2 + 36);
  if ((32 - v5) < 2)
  {
    if (v5)
    {
      v6 = *(a2 + 24) << (32 - v5);
      v7 = v5 - 31;
      *(a2 + 24) = v6;
      v8 = *a2;
      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      v11 = *(a2 + 32);
      *(a2 + 32) = v11 + 1;
      *(a2 + 36) = v7;
      v12 = (v8 + 4 * v11);
      if ((v12 + 1) > v9 || v12 > v12 + 1 || v12 < v10)
      {
        goto LABEL_144;
      }

      *v12 = bswap32(v6);
      *(a2 + 24) = 0;
    }

    else
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      v15 = *(a2 + 16);
      v16 = *(a2 + 32);
      *(a2 + 32) = v16 + 1;
      v17 = (v13 + 4 * v16);
      if ((v17 + 1) > v14 || v17 > v17 + 1 || v17 < v15)
      {
        goto LABEL_144;
      }

      *v17 = 0;
    }
  }

  else
  {
    *(a2 + 24) *= 2;
    *(a2 + 36) = v5 + 1;
  }

  if (!FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 20) != 0, 1u))
  {
    return 0;
  }

  v18 = *a1;
  if (*a1 <= 2047)
  {
    if (v18 > 575)
    {
      switch(v18)
      {
        case 576:
          v19 = 2;
          goto LABEL_48;
        case 1024:
          v19 = 10;
          goto LABEL_48;
        case 1152:
          v19 = 3;
          goto LABEL_48;
      }
    }

    else
    {
      switch(v18)
      {
        case 192:
          v20 = 1;
          v21 = 16;
          v19 = 1;
          goto LABEL_49;
        case 256:
          v19 = 8;
          goto LABEL_48;
        case 512:
          v19 = 9;
          goto LABEL_48;
      }
    }
  }

  else if (v18 <= 4607)
  {
    switch(v18)
    {
      case 2048:
        v19 = 11;
        goto LABEL_48;
      case 2304:
        v19 = 4;
        goto LABEL_48;
      case 4096:
        v19 = 12;
        goto LABEL_48;
    }
  }

  else if (v18 >= 0x4000)
  {
    if (v18 == 0x4000)
    {
      v19 = 14;
      goto LABEL_48;
    }

    if (v18 == 0x8000)
    {
      v19 = 15;
      goto LABEL_48;
    }
  }

  else
  {
    if (v18 == 4608)
    {
      v19 = 5;
      goto LABEL_48;
    }

    if (v18 == 0x2000)
    {
      v19 = 13;
LABEL_48:
      v21 = 16;
      v20 = 1;
      goto LABEL_49;
    }
  }

  v20 = 0;
  if (v18 >= 0x101)
  {
    v21 = 16;
  }

  else
  {
    v21 = 8;
  }

  if (v18 < 0x101)
  {
    v19 = 6;
  }

  else
  {
    v19 = 7;
  }

LABEL_49:
  if (!FLAC__bitwriter_write_raw_uint32_nocheck(a2, v19, 4u))
  {
    return 0;
  }

  v22 = *(a1 + 4);
  if (v22 <= 44099)
  {
    if (v22 <= 22049)
    {
      if (v22 == 8000)
      {
        v23 = 0;
        v24 = 4;
        goto LABEL_90;
      }

      if (v22 == 16000)
      {
        v23 = 0;
        v24 = 5;
        goto LABEL_90;
      }
    }

    else
    {
      switch(v22)
      {
        case 22050:
          v23 = 0;
          v24 = 6;
          goto LABEL_90;
        case 24000:
          v23 = 0;
          v24 = 7;
          goto LABEL_90;
        case 32000:
          v23 = 0;
          v24 = 8;
          goto LABEL_90;
      }
    }
  }

  else if (v22 > 95999)
  {
    switch(v22)
    {
      case 96000:
        v23 = 0;
        v24 = 11;
        goto LABEL_90;
      case 192000:
        v23 = 0;
        v24 = 3;
        goto LABEL_90;
      case 176400:
        v23 = 0;
        v24 = 2;
        goto LABEL_90;
    }
  }

  else
  {
    switch(v22)
    {
      case 44100:
        v23 = 0;
        v24 = 9;
        goto LABEL_90;
      case 48000:
        v23 = 0;
        v24 = 10;
        goto LABEL_90;
      case 88200:
        v23 = 0;
        v24 = 1;
        goto LABEL_90;
    }
  }

  if (v22 >= 0x3E419 || v22 % 0x3E8u)
  {
    HIDWORD(v25) = -858993459 * v22;
    LODWORD(v25) = -858993459 * v22;
    if ((v25 >> 1) < 0x1999999A)
    {
      v23 = 14;
      v24 = 14;
    }

    else
    {
      if (v22 >= 0x10000)
      {
        v23 = 0;
      }

      else
      {
        v23 = 13;
      }

      v24 = v23;
    }
  }

  else
  {
    v23 = 12;
    v24 = 12;
  }

LABEL_90:
  if (!FLAC__bitwriter_write_raw_uint32_nocheck(a2, v24, 4u))
  {
    return 0;
  }

  v26 = *(a1 + 12);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v24 = 9;
    }

    else if (v26 == 3)
    {
      v24 = 10;
    }
  }

  else if (v26)
  {
    if (v26 == 1)
    {
      v24 = 8;
    }
  }

  else
  {
    v24 = *(a1 + 8) - 1;
    if (v24 > 0xF)
    {
      return 0;
    }
  }

  if (!FLAC__bitwriter_write_raw_uint32_nocheck(a2, v24, 4u))
  {
    return 0;
  }

  HIDWORD(v28) = *(a1 + 16) - 8;
  LODWORD(v28) = HIDWORD(v28);
  v27 = v28 >> 2;
  v29 = v27 > 4 ? 0 : dword_19B3A2244[v27];
  result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v29, 3u);
  if (!result)
  {
    return 0;
  }

  if (!*a2)
  {
    return 0;
  }

  if (*(a2 + 28) <= (*(a2 + 32) + 1))
  {
    result = bitwriter_grow_(a2, 1);
    if (!result)
    {
      return 0;
    }
  }

  v30 = *(a2 + 36);
  if ((32 - v30) >= 2)
  {
    *(a2 + 24) *= 2;
    *(a2 + 36) = v30 + 1;
    goto LABEL_120;
  }

  if (v30)
  {
    v31 = *(a2 + 24) << (32 - v30);
    v32 = v30 - 31;
    *(a2 + 24) = v31;
    v33 = *a2;
    v34 = *(a2 + 8);
    v35 = *(a2 + 16);
    v36 = *(a2 + 32);
    *(a2 + 32) = v36 + 1;
    *(a2 + 36) = v32;
    v37 = (v33 + 4 * v36);
    if ((v37 + 1) <= v34 && v37 <= v37 + 1 && v37 >= v35)
    {
      *v37 = bswap32(v31);
      *(a2 + 24) = 0;
      goto LABEL_120;
    }

LABEL_144:
    __break(0x5519u);
    return result;
  }

  v38 = *a2;
  v39 = *(a2 + 8);
  v40 = *(a2 + 16);
  v41 = *(a2 + 32);
  *(a2 + 32) = v41 + 1;
  v42 = (v38 + 4 * v41);
  if ((v42 + 1) > v39 || v42 > v42 + 1 || v42 < v40)
  {
    goto LABEL_144;
  }

  *v42 = 0;
LABEL_120:
  if (*(a1 + 20))
  {
    if (!FLAC__bitwriter_write_utf8_uint64(a2, *(a1 + 24)))
    {
      return 0;
    }
  }

  else if (!FLAC__bitwriter_write_utf8_uint32(a2, *(a1 + 24)))
  {
    return 0;
  }

  if ((v20 & 1) == 0)
  {
    v47 = *a1 - 1;
    if (v47 >> v21 || !FLAC__bitwriter_write_raw_uint32_nocheck(a2, v47, v21))
    {
      return 0;
    }
  }

  switch(v23)
  {
    case 14:
      v48 = *(a1 + 4);
      if (v48 >> 17 > 4)
      {
        return 0;
      }

      v44 = v48 / 0xA;
      v45 = a2;
      break;
    case 13:
      v44 = *(a1 + 4);
      if (HIWORD(v44))
      {
        return 0;
      }

      v45 = a2;
      break;
    case 12:
      v43 = *(a1 + 4);
      if (v43 < 0x3E800)
      {
        v44 = v43 / 0x3E8;
        v45 = a2;
        v46 = 8;
        goto LABEL_138;
      }

      return 0;
    default:
      goto LABEL_139;
  }

  v46 = 16;
LABEL_138:
  if (!FLAC__bitwriter_write_raw_uint32_nocheck(v45, v44, v46))
  {
    return 0;
  }

LABEL_139:
  v50 = -86;
  if (!FLAC__bitwriter_get_write_crc8(a2, &v50))
  {
    return 0;
  }

  v49 = v50;

  return FLAC__bitwriter_write_raw_uint32_nocheck(a2, v49, 8u);
}

uint64_t add_subframe_(_DWORD **a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v9 = *a4;
  result = 1;
  if (*a4 > 1)
  {
    if (v9 == 2)
    {
      v51 = (a4 + 8);
      if (a4 + 8 > (a4 + 80))
      {
        goto LABEL_109;
      }

      v62 = *(a4 + 32);
      v52 = 2 * v62;
      if ((2 * v62) > 0xFF)
      {
        goto LABEL_107;
      }

      v53 = *(a4 + 328);
      if (v53)
      {
        ++v52;
      }

      result = FLAC__bitwriter_write_raw_uint32_nocheck(a5, v52 | 0x10u, 8u);
      if (!result)
      {
        goto LABEL_107;
      }

      if (v53)
      {
        result = FLAC__bitwriter_write_unary_unsigned(a5, v53 - 1);
        if (!result)
        {
          goto LABEL_107;
        }
      }

      if (*(a4 + 32))
      {
        v54 = 0;
        v55 = 0;
        if (a3 < 0x20)
        {
          v56 = ~(-1 << a3);
        }

        else
        {
          v56 = -1;
        }

        do
        {
          v57 = a4 + v54 + 36;
          v58 = a4 + v54 + 40;
          v59 = v57 < a4 + 36 || v58 > a4 + 52;
          if (v59 || v57 > v58)
          {
            goto LABEL_109;
          }

          result = FLAC__bitwriter_write_raw_uint32_nocheck(a5, v56 & *(a4 + 4 * v55 + 36), a3);
          if (!result)
          {
            goto LABEL_107;
          }

          ++v55;
          v54 += 4;
        }

        while (v55 < *(a4 + 32));
      }

      result = add_entropy_coding_method_(a5, (a4 + 8));
      if (!result)
      {
        goto LABEL_107;
      }

      v41 = *v51;
      if (*v51 > 1)
      {
        return 1;
      }

      v42 = *(a4 + 56);
      if (v42 < *(a4 + 72))
      {
        goto LABEL_109;
      }

      v43 = *(a4 + 24);
      v44 = *v43;
      if (*v43 < *(v43 + 16))
      {
        goto LABEL_109;
      }

      v45 = *(v43 + 24);
      if (v45 < *(v43 + 40))
      {
        goto LABEL_109;
      }

      v46 = a2 - v62;
      v47 = *(a4 + 64);
    }

    else
    {
      if (v9 != 3)
      {
        return result;
      }

      v21 = (a4 + 8);
      if (a4 + 8 > (a4 + 328))
      {
        goto LABEL_109;
      }

      v61 = *(a4 + 32);
      v22 = 2 * v61 - 2;
      if (v22 > 0xFF)
      {
        goto LABEL_107;
      }

      v23 = *(a4 + 328);
      if (v23)
      {
        v22 = 2 * v61 - 1;
      }

      result = FLAC__bitwriter_write_raw_uint32_nocheck(a5, v22 | 0x40, 8u);
      if (!result)
      {
        goto LABEL_107;
      }

      if (v23)
      {
        result = FLAC__bitwriter_write_unary_unsigned(a5, v23 - 1);
        if (!result)
        {
          goto LABEL_107;
        }
      }

      if (*(a4 + 32))
      {
        v24 = 0;
        v25 = 0;
        if (a3 < 0x20)
        {
          v26 = ~(-1 << a3);
        }

        else
        {
          v26 = -1;
        }

        do
        {
          v27 = a4 + v24 + 172;
          v28 = a4 + v24 + 176;
          v29 = v27 < a4 + 172 || v28 > a4 + 300;
          if (v29 || v27 > v28)
          {
            goto LABEL_109;
          }

          result = FLAC__bitwriter_write_raw_uint32_nocheck(a5, v26 & *(a4 + 4 * v25 + 172), a3);
          if (!result)
          {
            goto LABEL_107;
          }

          ++v25;
          v24 += 4;
        }

        while (v25 < *(a4 + 32));
      }

      v31 = *(a4 + 36) - 1;
      if (v31 > 0xF)
      {
        goto LABEL_107;
      }

      if (!FLAC__bitwriter_write_raw_uint32_nocheck(a5, v31, 4u))
      {
        goto LABEL_107;
      }

      result = FLAC__bitwriter_write_raw_uint32_nocheck(a5, *(a4 + 40) & 0x1F, 5u);
      if (!result)
      {
        goto LABEL_107;
      }

      if (*(a4 + 32))
      {
        v32 = 0;
        v33 = 0;
        do
        {
          v34 = a4 + v32 + 44;
          v35 = a4 + v32 + 48;
          v36 = v34 < a4 + 44 || v35 > a4 + 172;
          if (v36 || v34 > v35)
          {
            goto LABEL_109;
          }

          v38 = *(a4 + 36);
          if (v38 < 0x20)
          {
            v39 = ~(-1 << v38);
          }

          else
          {
            v39 = -1;
          }

          result = FLAC__bitwriter_write_raw_uint32_nocheck(a5, v39 & *(a4 + 4 * v33 + 44), v38);
          if (!result)
          {
            goto LABEL_107;
          }

          ++v33;
          v32 += 4;
        }

        while (v33 < *(a4 + 32));
      }

      result = add_entropy_coding_method_(a5, (a4 + 8));
      if (!result)
      {
        goto LABEL_107;
      }

      v41 = *v21;
      if (*v21 > 1)
      {
        return 1;
      }

      v42 = *(a4 + 304);
      if (v42 < *(a4 + 320))
      {
        goto LABEL_109;
      }

      v43 = *(a4 + 24);
      v44 = *v43;
      if (*v43 < *(v43 + 16))
      {
        goto LABEL_109;
      }

      v45 = *(v43 + 24);
      if (v45 < *(v43 + 40))
      {
        goto LABEL_109;
      }

      v46 = a2 - v61;
      v47 = *(a4 + 312);
    }

    if (add_residual_partitioned_rice_(a5, v42, v47, v46, *(a4 + 32), v44, *(v43 + 8), v40, v45, *(v43 + 32), *(a4 + 16), v41 == 1))
    {
      return 1;
    }

    goto LABEL_107;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      return result;
    }

    if (a4 + 8 <= (a4 + 32))
    {
      v12 = *(a4 + 328);
      v13 = *(a4 + 8);
      v14 = *(a4 + 16);
      v15 = *(a4 + 24);
      if (v12)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      result = FLAC__bitwriter_write_raw_uint32_nocheck(a5, v16, 8u);
      if (result)
      {
        if (!v12 || (result = FLAC__bitwriter_write_unary_unsigned(a5, v12 - 1), result))
        {
          if (a2)
          {
            v17 = a2;
            if (a3 < 0x20)
            {
              v18 = ~(-1 << a3);
            }

            else
            {
              v18 = -1;
            }

            while (1)
            {
              v19 = (v13 + 1) > v14 || v13 > v13 + 1;
              if (v19 || v13 < v15)
              {
                goto LABEL_109;
              }

              if (!FLAC__bitwriter_write_raw_uint32_nocheck(a5, v18 & *v13, a3))
              {
                goto LABEL_107;
              }

              ++v13;
              result = 1;
              if (!--v17)
              {
                return result;
              }
            }
          }

          return 1;
        }
      }

      goto LABEL_107;
    }

LABEL_109:
    __break(0x5519u);
    return result;
  }

  v48 = (a4 + 8);
  if (a4 + 8 > (a4 + 12))
  {
    goto LABEL_109;
  }

  v49 = *(a4 + 328);
  if (FLAC__bitwriter_write_raw_uint32_nocheck(a5, v49 != 0, 8u) && (!v49 || FLAC__bitwriter_write_unary_unsigned(a5, v49 - 1)))
  {
    v50 = a3 < 0x20 ? ~(-1 << a3) : -1;
    if (FLAC__bitwriter_write_raw_uint32_nocheck(a5, v50 & *v48, a3))
    {
      return 1;
    }
  }

LABEL_107:
  result = 0;
  **a1 = 7;
  return result;
}

unint64_t write_bitbuffer_(int **a1, uint64_t a2)
{
  memset(v41, 170, sizeof(v41));
  v4 = *(a1[1] + 1397);
  v40[0] = &v41[1];
  v40[1] = &v42;
  v40[2] = &v41[1];
  result = FLAC__bitwriter_get_buffer(v4, v40, v41);
  v6 = *a1;
  if (!result)
  {
    v10 = 8;
LABEL_45:
    *v6 = v10;
    return result;
  }

  v7 = v41[0];
  if (v6[1])
  {
    v8 = a1[1];
    *(v8 + 4502) = *&v41[1];
    *(v8 + 2253) = v41[3];
    v9 = a1[1];
    v9[4509] = v7;
    if (v9[4450])
    {
      result = FLAC__stream_decoder_process_single(*(v9 + 2224));
      if (!result)
      {
        *(*(a1[1] + 1397) + 32) = 0;
        v6 = *a1;
        if (**a1 == 4)
        {
          return result;
        }

        result = 0;
        v10 = 3;
        goto LABEL_45;
      }
    }

    else
    {
      v9[4451] = 1;
    }
  }

  v11 = v41[1];
  if (v41[2] < v41[1] || v41[3] > v41[1] || v7 > v41[2] - v41[1])
  {
    goto LABEL_62;
  }

  v40[0] = 0;
  v12 = a1[1];
  v13 = *(v12 + 1463);
  if (v13)
  {
    result = v13(a1, v40, *(v12 + 1467));
    if (result == 1)
    {
LABEL_44:
      result = 0;
      v6 = *a1;
      *(*(a1[1] + 1397) + 32) = 0;
      v10 = 5;
      goto LABEL_45;
    }
  }

  if (!a2)
  {
    if (v7)
    {
      if ((*v11 & 0x7F) == 3)
      {
        if (!*(*a1 + 80))
        {
          *(*a1 + 80) = v40[0];
        }
      }

      else if ((*v11 & 0x7F) == 0)
      {
        *(*a1 + 79) = v40[0];
      }

      goto LABEL_15;
    }

LABEL_62:
    __break(0x5519u);
    return result;
  }

LABEL_15:
  v14 = a1[1];
  v15 = *(v14 + 1424);
  if (v15)
  {
    v16 = *(*a1 + 81);
    if (v16)
    {
      v17 = *v15;
      if (v17)
      {
        v18 = v14[2936];
        if (v18 < v17)
        {
          v19 = (*a1)[9];
          v20 = *(v14 + 1471);
          v21 = v15[3];
          v22 = v17 - v18;
          v23 = v18 + 1;
          v24 = 24 * v18 + 16;
          do
          {
            v25 = v15[1] + v24;
            result = v25 - 16;
            v26 = v25 + 8;
            v27 = v26 > v15[2] || result > v26;
            if (v27 || result < v21)
            {
              goto LABEL_62;
            }

            if (*result > v19 + v20 - 1)
            {
              break;
            }

            if (*result >= v20)
            {
              *result = v20;
              result = v15[1] + v24;
              v29 = result - 16;
              if (result + 8 > v15[2] || v29 > result + 8 || v29 < v21)
              {
                goto LABEL_62;
              }

              *(result - 8) = v40[0] - v16;
              result = v15[1];
              v32 = result + v24 + 8;
              if (v32 > v15[2])
              {
                goto LABEL_62;
              }

              v33 = result + v24 - 16;
              if (v33 > v32 || v33 < v21)
              {
                goto LABEL_62;
              }

              *(result + v24) = v19;
            }

            v14[2936] = v23++;
            v24 += 24;
          }

          while (--v22);
        }
      }
    }
  }

  if ((*(v14 + 1464))(a1, v11, v7, a2, v14[2851], *(v14 + 1467)))
  {
    goto LABEL_44;
  }

  v34 = a1[1];
  *(v34 + 1470) += v7;
  *(v34 + 1471) += a2;
  v35 = v34[2944];
  v36 = v34[2851];
  if (v35 <= v36 + 1)
  {
    v35 = v36 + 1;
  }

  v34[2944] = v35;
  *(*(v34 + 1397) + 32) = 0;
  if (a2)
  {
    v37 = v34[2806];
    if (v7 < v37)
    {
      LODWORD(v37) = v7;
    }

    v34[2806] = v37;
    v38 = a1[1];
    v39 = v38[2807];
    if (v7 > v39)
    {
      LODWORD(v39) = v7;
    }

    v38[2807] = v39;
  }

  return 1;
}

uint64_t FLAC__bitwriter_get_buffer(uint64_t result, unint64_t *a2, void *a3)
{
  v3 = *(result + 36);
  if ((v3 & 7) != 0)
  {
    return 0;
  }

  v6 = result;
  if (v3)
  {
    v7 = *(result + 32);
    if (v7 == *(result + 28))
    {
      result = bitwriter_grow_(result, 32);
      if (!result)
      {
        return result;
      }

      v7 = *(v6 + 32);
    }

    v8 = (*v6 + 4 * v7);
    if ((v8 + 1) > *(v6 + 8) || v8 >= v8 + 1 || v8 < *(v6 + 16))
    {
      goto LABEL_26;
    }

    *v8 = bswap32(*(v6 + 24) << -*(v6 + 36));
  }

  v11 = *a2;
  v12 = *a2 + 24;
  if (v12 > a2[1] || v11 > v12 || v11 < a2[2])
  {
LABEL_26:
    __break(0x5519u);
    return result;
  }

  v15 = *(v6 + 16);
  *v11 = *v6;
  *(v11 + 16) = v15;
  *a3 = ((*(v6 + 36) >> 3) + 4 * *(v6 + 32));
  return 1;
}

uint64_t bitwriter_grow_(uint64_t a1, int a2)
{
  v2 = *(a1 + 28);
  v3 = *(a1 + 32) + ((a2 + *(a1 + 36) + 31) >> 5);
  v4 = v3 - v2;
  if (v3 <= v2)
  {
    return 1;
  }

  v6 = (v4 & 0x3FF) == 0;
  v7 = v3 - (v4 & 0x3FF) + 1024;
  if (v6)
  {
    v8 = *(a1 + 32) + ((a2 + *(a1 + 36) + 31) >> 5);
  }

  else
  {
    v8 = v7;
  }

  v9 = *a1;
  if (!v8)
  {
    result = malloc_type_realloc(*a1, 0, 0xFB4BFC99uLL);
    v11 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = malloc_type_realloc(*a1, 4 * v8, 0x5C7DB875uLL);
  if (result)
  {
    v11 = result + 4 * v8;
LABEL_10:
    *a1 = result;
    *(a1 + 8) = v11;
    *(a1 + 16) = result;
    result = 1;
    *(a1 + 28) = v8;
    return result;
  }

  free(v9);
  return 0;
}

uint64_t FLAC__bitwriter_write_raw_uint32_nocheck(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (result)
  {
    v4 = result;
    result = 0;
    if (a3 <= 0x20)
    {
      if (*v4)
      {
        if (!a3)
        {
          return 1;
        }

        if (*(v4 + 28) > *(v4 + 32) + a3 || (result = bitwriter_grow_(v4, a3), result))
        {
          v6 = *(v4 + 36);
          v7 = a3 - (32 - v6);
          if (a3 >= 32 - v6)
          {
            if (v6)
            {
              v8 = (*(v4 + 24) << (32 - v6)) | (a2 >> v7);
              *(v4 + 24) = v8;
              v9 = *v4;
              v10 = *(v4 + 8);
              v11 = *(v4 + 16);
              v12 = *(v4 + 32);
              *(v4 + 32) = v12 + 1;
              *(v4 + 36) = v7;
              v13 = (v9 + 4 * v12);
              if ((v13 + 1) <= v10 && v13 <= v13 + 1 && v13 >= v11)
              {
                *v13 = HIBYTE(v8) & 0xFF00FFFF | (v8 << 24) | (v8 >> 8) & 0xFF00 | (BYTE1(v8) << 16);
                *(v4 + 24) = a2;
                return 1;
              }
            }

            else
            {
              v14 = *v4;
              v15 = *(v4 + 8);
              v16 = *(v4 + 16);
              v17 = *(v4 + 32);
              *(v4 + 32) = v17 + 1;
              v18 = (v14 + 4 * v17);
              if ((v18 + 1) <= v15 && v18 <= v18 + 1 && v18 >= v16)
              {
                *v18 = bswap32(a2);
                return 1;
              }
            }

            __break(0x5519u);
            return result;
          }

          *(v4 + 24) = (*(v4 + 24) << a3) | a2;
          *(v4 + 36) = v6 + a3;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t FLAC__bitwriter_write_unary_unsigned(uint64_t result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  if (a2 > 0x1F)
  {
    if (*(result + 28) <= *(result + 32) + a2)
    {
      result = bitwriter_grow_(result, a2);
      if (!result)
      {
        return result;
      }
    }

    v5 = *(v3 + 36);
    if (v5)
    {
      if (32 - v5 >= v2)
      {
        v6 = v2;
      }

      else
      {
        v6 = 32 - v5;
      }

      v7 = *(v3 + 24) << v6;
      *(v3 + 24) = v7;
      v8 = v6 + v5;
      *(v3 + 36) = v8;
      if (v8 == 32)
      {
        v9 = *v3;
        v10 = *(v3 + 8);
        v11 = *(v3 + 16);
        v12 = *(v3 + 32);
        *(v3 + 32) = v12 + 1;
        v13 = (v9 + 4 * v12);
        if ((v13 + 1) > v10 || v13 >= v13 + 1 || v13 < v11)
        {
LABEL_37:
          __break(0x5519u);
          return result;
        }

        v2 -= v6;
        *v13 = bswap32(v7);
        *(v3 + 36) = 0;
        if (v2 >= 0x20)
        {
          goto LABEL_21;
        }

LABEL_30:
        if (v2)
        {
          *(v3 + 24) = 0;
          *(v3 + 36) = v2;
        }
      }

      result = v3;
      v4 = 1;
      goto LABEL_33;
    }

    v11 = *(v3 + 16);
LABEL_21:
    while (1)
    {
      v16 = *v3;
      v17 = *(v3 + 8);
      v18 = *(v3 + 32);
      *(v3 + 32) = v18 + 1;
      v19 = (v16 + 4 * v18);
      v20 = (v19 + 1) > v17 || v19 >= v19 + 1;
      if (v20 || v19 < v11)
      {
        goto LABEL_37;
      }

      *v19 = 0;
      v2 -= 32;
      if (v2 <= 0x1F)
      {
        goto LABEL_30;
      }
    }
  }

  v4 = a2 + 1;
LABEL_33:

  return FLAC__bitwriter_write_raw_uint32_nocheck(result, 1u, v4);
}

uint64_t add_entropy_coding_method_(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (v3 <= 3)
  {
    result = FLAC__bitwriter_write_raw_uint32_nocheck(a1, v3, 2u);
    if (!result)
    {
      return result;
    }

    if (*a2 > 1)
    {
      return 1;
    }

    v6 = a2[2];
    if (v6 <= 0xF)
    {
      result = FLAC__bitwriter_write_raw_uint32_nocheck(a1, v6, 4u);
      if (!result)
      {
        return result;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t add_residual_partitioned_rice_(uint64_t result, int *a2, unint64_t a3, unsigned int a4, uint64_t a5, unsigned int *a6, unint64_t a7, uint64_t a8, unsigned int *a9, unint64_t a10, int a11, int a12)
{
  v15 = result;
  v16 = a9;
  if (a12)
  {
    v17 = 5;
  }

  else
  {
    v17 = 4;
  }

  if (a12)
  {
    v18 = 31;
  }

  else
  {
    v18 = 15;
  }

  v39 = v17;
  if (a11)
  {
    v19 = 0;
    v20 = 0;
    v38 = (a5 + a4) >> a11;
    v35 = v18;
    v36 = v18 >> v17;
    while (1)
    {
      v21 = v19 ? 0 : a5;
      v22 = &v16[v19];
      if (v22 < v16 || (v22 + 1) > a10 || v22 > v22 + 1)
      {
        goto LABEL_68;
      }

      v23 = a5;
      v24 = v38 - v21;
      v40 = v38 - v21 + v20;
      if (*v22)
      {
        if (v36)
        {
          return 0;
        }

        v25 = v19;
        result = FLAC__bitwriter_write_raw_uint32_nocheck(v15, v35, v39);
        if (!result)
        {
          return result;
        }

        if (*v22 > 0x1F)
        {
          return 0;
        }

        result = FLAC__bitwriter_write_raw_uint32_nocheck(v15, *v22, 5u);
        if (!result)
        {
          return result;
        }

        if (v20 < v40)
        {
          v26 = &a2[v20];
          v27 = v40 - v20;
          while (v26 >= a2 && (v26 + 1) <= a3 && v26 <= v26 + 1)
          {
            if (*v22 < 0x20)
            {
              v28 = ~(-1 << *v22);
            }

            else
            {
              v28 = -1;
            }

            result = FLAC__bitwriter_write_raw_uint32_nocheck(v15, v28 & *v26, *v22);
            if (!result)
            {
              return result;
            }

            ++v26;
            if (!--v27)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_68;
        }
      }

      else
      {
        v29 = &a6[v19];
        if (v29 < a6)
        {
          goto LABEL_68;
        }

        v25 = v19;
        if ((v29 + 1) > a7 || v29 > v29 + 1)
        {
          goto LABEL_68;
        }

        if (*v29 >> v39)
        {
          return 0;
        }

        result = FLAC__bitwriter_write_raw_uint32_nocheck(v15, *v29, v39);
        if (!result)
        {
          return result;
        }

        v41 = &a2[v20];
        v42 = a3;
        v43 = a2;
        result = FLAC__bitwriter_write_rice_signed_block(v15, &v41, v24, *v29);
        if (!result)
        {
          return result;
        }
      }

LABEL_37:
      v19 = v25 + 1;
      v20 = v40;
      a5 = v23;
      v16 = a9;
      if ((v25 + 1) >> a11)
      {
        return 1;
      }
    }
  }

  if ((a9 + 1) > a10 || a9 + 1 < a9)
  {
LABEL_68:
    __break(0x5519u);
    return result;
  }

  if (!*a9)
  {
    if ((a6 + 1) > a7 || a6 + 1 < a6)
    {
      goto LABEL_68;
    }

    if (!(*a6 >> v17))
    {
      result = FLAC__bitwriter_write_raw_uint32_nocheck(result, *a6, v17);
      if (result)
      {
        v41 = a2;
        v42 = a3;
        v43 = a2;
        result = FLAC__bitwriter_write_rice_signed_block(v15, &v41, a4, *a6);
        if (result)
        {
          return 1;
        }
      }

      return result;
    }

    return 0;
  }

  if (v18 >> v17)
  {
    return 0;
  }

  result = FLAC__bitwriter_write_raw_uint32_nocheck(result, v18, v17);
  if (!result)
  {
    return result;
  }

  if (*a9 > 0x1F)
  {
    return 0;
  }

  result = FLAC__bitwriter_write_raw_uint32_nocheck(v15, *a9, 5u);
  if (result)
  {
    if (a4)
    {
      v31 = a4;
      for (i = a2; i >= a2 && (i + 1) <= a3 && i <= i + 1; ++i)
      {
        if (*a9 < 0x20)
        {
          v33 = ~(-1 << *a9);
        }

        else
        {
          v33 = -1;
        }

        result = FLAC__bitwriter_write_raw_uint32_nocheck(v15, v33 & *i, *a9);
        if (!result)
        {
          return result;
        }

        if (!--v31)
        {
          return 1;
        }
      }

      goto LABEL_68;
    }

    return 1;
  }

  return result;
}

uint64_t FLAC__bitwriter_write_rice_signed_block(uint64_t result, int **a2, int a3, int a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = result;
    v8 = -1 << a4;
    v9 = 0xFFFFFFFF >> ~a4;
    v10 = a4 + 1;
    v11 = *a2;
    do
    {
      if (v11 + 1 > a2[1] || v11 > v11 + 1 || v11 < a2[2])
      {
LABEL_50:
        __break(0x5519u);
        return result;
      }

      v14 = (2 * *v11) ^ (*v11 >> 31);
      v15 = v14 >> v4;
      v16 = (v14 >> v4) + v10;
      v17 = *(v7 + 36);
      if (v17 && v16 + v17 <= 0x1F)
      {
        *(v7 + 36) = v16 + v17;
        v18 = (*(v7 + 24) << v16) | (v14 | v8) & v9;
LABEL_46:
        *(v7 + 24) = v18;
        goto LABEL_47;
      }

      if (*(v7 + 28) <= v17 + v15 + *(v7 + 32) + 1)
      {
        result = bitwriter_grow_(v7, v16);
        if (!result)
        {
          return result;
        }

        v17 = *(v7 + 36);
      }

      if (v15)
      {
        if (v17)
        {
          v19 = 32 - v17;
          v20 = *(v7 + 24);
          v21 = v15 - (32 - v17);
          if (v15 < 32 - v17)
          {
            *(v7 + 24) = v20 << v15;
            v15 += v17;
            goto LABEL_40;
          }

          v22 = v20 << v19;
          *(v7 + 24) = v20 << v19;
          v23 = *v7;
          v24 = *(v7 + 8);
          v25 = *(v7 + 16);
          v26 = *(v7 + 32);
          *(v7 + 32) = v26 + 1;
          v27 = (v23 + 4 * v26);
          if ((v27 + 1) > v24 || v27 > v27 + 1 || v27 < v25)
          {
            goto LABEL_50;
          }

          *v27 = bswap32(v22);
          *(v7 + 36) = 0;
          v15 = v21;
        }

        if (v15 >= 0x20)
        {
          v28 = *(v7 + 16);
          do
          {
            v29 = *v7;
            v30 = *(v7 + 8);
            v31 = *(v7 + 32);
            *(v7 + 32) = v31 + 1;
            v32 = (v29 + 4 * v31);
            v33 = (v32 + 1) > v30 || v32 > v32 + 1;
            if (v33 || v32 < v28)
            {
              goto LABEL_50;
            }

            *v32 = 0;
            v15 -= 32;
          }

          while (v15 > 0x1F);
        }

        if (v15)
        {
          *(v7 + 24) = 0;
        }

        else
        {
          v15 = *(v7 + 36);
        }
      }

      else
      {
        v15 = v17;
      }

LABEL_40:
      v18 = (v14 | v8) & v9;
      v35 = *(v7 + 24);
      v36 = v10 - (32 - v15);
      if (v10 >= 32 - v15)
      {
        v37 = (v35 << (32 - v15)) | (v18 >> v36);
        *(v7 + 24) = v37;
        v38 = *v7;
        v39 = *(v7 + 8);
        v40 = *(v7 + 16);
        v41 = *(v7 + 32);
        *(v7 + 32) = v41 + 1;
        *(v7 + 36) = v36;
        v42 = (v38 + 4 * v41);
        if ((v42 + 1) > v39 || v42 > v42 + 1 || v42 < v40)
        {
          goto LABEL_50;
        }

        *v42 = HIBYTE(v37) & 0xFF00FFFF | (v37 << 24) | (v37 >> 8) & 0xFF00 | (BYTE1(v37) << 16);
        goto LABEL_46;
      }

      *(v7 + 24) = (v35 << v10) | v18;
      *(v7 + 36) = v15 + v10;
LABEL_47:
      v11 = *a2 + 1;
      *a2 = v11;
      --v5;
    }

    while (v5);
  }

  return 1;
}

uint64_t FLAC__bitwriter_write_utf8_uint32(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a2 > 0x7F)
  {
    if (a2 <= 0x7FF)
    {
      v5 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) | 0xC0, 8u);
      return FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u) & v5;
    }

    if (!HIWORD(a2))
    {
      v6 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) | 0xE0, 8u);
      v7 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) & 0x3F | 0x80, 8u) & v6;
      return v7 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u);
    }

    if (a2 >> 21)
    {
      if (!(a2 >> 26))
      {
        v10 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, HIBYTE(a2) | 0xF8, 8u);
        v11 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 18) & 0x3F | 0x80, 8u) & v10;
        v12 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) & 0x3F | 0x80, 8u);
        v7 = v11 & v12 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) & 0x3F | 0x80, 8u);
        return v7 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u);
      }

      v13 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 30) | 0xFC, 8u);
      v14 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, HIBYTE(a2) & 0x3F | 0x80, 8u) & v13;
      v15 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 18) & 0x3F | 0x80, 8u);
      v9 = v14 & v15 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) & 0x3F | 0x80, 8u);
    }

    else
    {
      v8 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 18) | 0xF0, 8u);
      v9 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) & 0x3F | 0x80, 8u) & v8;
    }

    v16 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) & 0x3F | 0x80, 8u);
    return v9 & v16 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u);
  }

  return FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2, 8u);
}

uint64_t FLAC__bitwriter_write_utf8_uint64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 36)
  {
    return 0;
  }

  if (a2 > 0x7F)
  {
    if (a2 <= 0x7FF)
    {
      v5 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) | 0xC0, 8u);
      return FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u) & v5;
    }

    if (!(a2 >> 16))
    {
      v6 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) | 0xE0, 8u);
      v7 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) & 0x3F | 0x80, 8u) & v6;
      return v7 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u);
    }

    if (a2 >> 21)
    {
      if (!(a2 >> 26))
      {
        v12 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 24) | 0xF8, 8u);
        v13 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 18) & 0x3F | 0x80, 8u) & v12;
        v14 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) & 0x3F | 0x80, 8u);
        v7 = v13 & v14 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) & 0x3F | 0x80, 8u);
        return v7 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u);
      }

      if (a2 >> 31)
      {
        v18 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, 0xFEu, 8u);
        v19 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 30) | 0x80, 8u) & v18;
        v20 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, BYTE3(a2) & 0x3F | 0x80, 8u);
        v9 = v19 & v20 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 18) & 0x3F | 0x80, 8u);
        v21 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) & 0x3F | 0x80, 8u);
        v22 = v21 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) & 0x3F | 0x80, 8u);
        v11 = v22 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u);
        return v9 & v11;
      }

      v15 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 30) | 0xFC, 8u);
      v16 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, BYTE3(a2) & 0x3F | 0x80, 8u) & v15;
      v17 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 18) & 0x3F | 0x80, 8u);
      v9 = v16 & v17 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) & 0x3F | 0x80, 8u);
    }

    else
    {
      v8 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 18) | 0xF0, 8u);
      v9 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 12) & 0x3F | 0x80, 8u) & v8;
    }

    v10 = FLAC__bitwriter_write_raw_uint32_nocheck(a1, (a2 >> 6) & 0x3F | 0x80, 8u);
    v11 = v10 & FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2 & 0x3F | 0x80, 8u);
    return v9 & v11;
  }

  return FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2, 8u);
}

uint64_t FLAC__bitwriter_get_write_crc8(uint64_t a1, _BYTE *a2)
{
  memset(v13, 170, sizeof(v13));
  v12[0] = &v13[1];
  v12[1] = &v14;
  v12[2] = &v13[1];
  result = FLAC__bitwriter_get_buffer(a1, v12, v13);
  if (result)
  {
    v4 = v13[1];
    if (v13[1] <= v13[2])
    {
      v5 = v13[3] >= v13[1];
      v6 = v13[3] == v13[1];
    }

    else
    {
      v5 = 1;
      v6 = 0;
    }

    if (!v6 && v5 || (v7 = LODWORD(v13[0]), LODWORD(v13[0]) > v13[2] - v13[1]))
    {
LABEL_16:
      __break(0x5519u);
      return result;
    }

    v8 = 0;
    if (LODWORD(v13[0]))
    {
      do
      {
        v9 = *v4++;
        v10 = &FLAC__crc8_table[(v9 ^ v8)];
        if (v10 >= FLAC__crc16_table || v10 < FLAC__crc8_table)
        {
          goto LABEL_16;
        }

        v8 = *v10;
      }

      while (--v7);
    }

    *a2 = v8;
    return 1;
  }

  return result;
}

void find_best_partition_order_(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8, unsigned int a9, int a10, unsigned int a11, unsigned int a12, unsigned int a13, int a14, int a15, uint64_t a16)
{
  v21 = a13;
  v22 = a9 + a8;
  do
  {
    v23 = v21;
    v24 = v22 >> v21;
    if (!v21)
    {
      break;
    }

    v21 = (v21 - 1);
  }

  while (v24 <= a9);
  if (v23 >= a12)
  {
    v25 = a12;
  }

  else
  {
    v25 = v23;
  }

  (*(a1 + 11616))(a2, a3, a4, a5, a8, a9, v25, v23, a14);
  if (!a15)
  {
    goto LABEL_65;
  }

  if ((v23 & 0x80000000) != 0)
  {
    LODWORD(v28) = 0;
LABEL_33:
    if (v23 > v25)
    {
      v40 = 0;
      v41 = v23;
LABEL_35:
      --v41;
      v42 = 1;
      while (1)
      {
        v43 = (a6 + 4 * v40);
        v44 = v43 + 1;
        v45 = v43 < a6 || v44 > a7;
        v46 = v45 || v43 > v44;
        v47 = (a6 + 4 * (v40 + 1));
        v48 = v47 + 1;
        v49 = !v46 && v47 >= a6;
        v50 = !v49 || v48 > a7;
        v51 = v50 || v47 > v48;
        v52 = (a6 + 4 * v28);
        v53 = v52 + 1;
        v54 = !v51 && v52 >= a6;
        v55 = !v54 || v53 > a7;
        if (v55 || v52 > v53)
        {
          goto LABEL_231;
        }

        v57 = *v43;
        v58 = *v47;
        if (v57 <= v58)
        {
          v57 = v58;
        }

        *v52 = v57;
        v40 += 2;
        LODWORD(v28) = v28 + 1;
        if (v42++ >> v41)
        {
          if (v41 > v25)
          {
            goto LABEL_35;
          }

          break;
        }
      }
    }

LABEL_65:
    if (v23 >= v25)
    {
      v143 = 0;
      v61 = 0;
      v60 = 0;
      v62 = 0;
      v63 = a1 + 17680;
      v135 = v25;
      while (1)
      {
        v64 = (a4 + 8 * v62);
        v65 = (a6 + 4 * v62);
        if (v64 < a4 || v65 < a6)
        {
          break;
        }

        v67 = v63 + 56 * !v61;
        v139 = v61;
        v140 = v60;
        v137 = v62;
        v136 = !v61;
        if (v67)
        {
          v68 = v67 + 56;
          if (v67 < v63 || v68 > a1 + 17792 || v67 > v68)
          {
            goto LABEL_231;
          }

          if (v23 <= 6)
          {
            v71 = 6;
          }

          else
          {
            v71 = v23;
          }

          v72 = v63 + 56 * !v61;
        }

        else
        {
          if (v23 <= 6)
          {
            v71 = 6;
          }

          else
          {
            v71 = v23;
          }

          v72 = 0;
        }

        FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(v72, v71);
        v73 = *v67;
        v74 = *(v67 + 8);
        v75 = *(v67 + 16);
        v76 = *(v67 + 24);
        v78 = *(v67 + 32);
        v77 = *(v67 + 40);
        if (v23)
        {
          v79 = 0;
          v80 = 0;
          v81 = v22 >> v23;
          v82 = 6;
          while (1)
          {
            v83 = v80 ? 0 : a9;
            if (!v80 && v81 <= a9)
            {
              break;
            }

            v84 = &v64[v80];
            if (v84 < v64 || (v84 + 1) > a5 || v84 > v84 + 1)
            {
              goto LABEL_231;
            }

            v85 = v81 - v83;
            v86 = *v84;
            if (v86 > 0x10000000)
            {
              v87 = 0;
              if (v86 > 0x100000000000000 || v85 << 7 >= v86)
              {
                v91 = v85;
              }

              else
              {
                v87 = 0;
                v90 = v85;
                do
                {
                  v87 += 8;
                  v91 = v90 << 8;
                  v35 = v86 > v90 << 15;
                  v90 <<= 8;
                }

                while (v35);
              }

              while (v91 < v86)
              {
                ++v87;
                v91 *= 2;
              }
            }

            else
            {
              if (v86 <= 8 * v85)
              {
                v87 = 0;
                v89 = v85;
              }

              else
              {
                v87 = 0;
                v88 = v85;
                do
                {
                  v87 += 4;
                  v89 = 16 * v88;
                  v35 = v86 > v88 << 7;
                  v88 *= 16;
                }

                while (v35);
              }

              while (v89 < v86)
              {
                ++v87;
                v89 *= 2;
              }
            }

            if (v87 >= a11)
            {
              v87 = a11 - 1;
            }

            v92 = v86 >> (v87 - 1);
            v93 = 2 * v86;
            if (v87)
            {
              v93 = v92;
            }

            v94 = v85 + v85 * v87 - (v85 >> 1) + v93 + 4;
            if (v94 != -1)
            {
              v79 = v87;
            }

            if (a15)
            {
              v95 = &v65[v80];
              if (v95 < v65)
              {
                goto LABEL_231;
              }

              if ((v95 + 1) > a7)
              {
                goto LABEL_231;
              }

              if (v95 > v95 + 1)
              {
                goto LABEL_231;
              }

              v96 = &v76[v80];
              if ((v96 + 1) > v78 || v96 > v96 + 1 || v96 < v77)
              {
                goto LABEL_231;
              }

              v97 = *v95;
              v98 = *v95 * v85 + 10;
              v99 = v98 > v94;
              if (v98 < v94)
              {
                v94 = v98;
              }

              if (v99)
              {
                v79 = v87;
              }

              else
              {
                v79 = 0;
              }

              if (v99)
              {
                v100 = 0;
              }

              else
              {
                v100 = v97;
              }

              *v96 = v100;
            }

            v101 = &v73[v80];
            if ((v101 + 1) > v74 || v101 > v101 + 1 || v101 < v75)
            {
              goto LABEL_231;
            }

            *v101 = v79;
            v82 += v94;
            if (++v80 >> v23)
            {
              goto LABEL_174;
            }
          }

          v61 = v139;
          v60 = v140;
          goto LABEL_186;
        }

        if ((v64 + 1) > a5 || v64 + 1 < v64)
        {
          goto LABEL_231;
        }

        v102 = 2 * *v64;
        if (a10)
        {
          v102 = *v64 >> (a10 - 1);
        }

        v103 = a8 + a8 * a10 - (a8 >> 1) + 4 + v102;
        if (v103 == -1)
        {
          v104 = 0;
        }

        else
        {
          v104 = a10;
        }

        if (a15)
        {
          if ((v65 + 1) > a7 || v65 + 1 < v65 || (v76 + 1) > v78 || v76 > v76 + 1 || v76 < v77)
          {
            goto LABEL_231;
          }

          v105 = *v65 * a8 + 10;
          v106 = v105 > v103;
          if (v105 < v103)
          {
            v103 = *v65 * a8 + 10;
          }

          if (v106)
          {
            v104 = a10;
          }

          else
          {
            v104 = 0;
          }

          if (v106)
          {
            v107 = 0;
          }

          else
          {
            v107 = *v65;
          }

          *v76 = v107;
        }

        v108 = (v73 + 1) > v74 || v73 > v73 + 1;
        if (v108 || v73 < v75)
        {
          goto LABEL_231;
        }

        *v73 = v104;
        v82 = v103 + 6;
LABEL_174:
        v62 = (1 << v23) + v137;
        v110 = v143;
        if (v143 - 1 >= v82)
        {
          v60 = v23;
        }

        else
        {
          v60 = v140;
        }

        if (v143 - 1 >= v82)
        {
          v61 = v136;
        }

        else
        {
          v61 = v139;
        }

        if (v143 - 1 >= v82)
        {
          v110 = v82;
        }

        v143 = v110;
        v35 = v23 <= v135;
        LODWORD(v23) = v23 - 1;
        v63 = a1 + 17680;
        if (v35)
        {
          goto LABEL_186;
        }
      }
    }

    else
    {
      v60 = 0;
      v61 = 0;
LABEL_186:
      *(a16 + 8) = v60;
      v111 = *(a16 + 16);
      if (v111 < v111 + 56)
      {
        v112 = v60 <= 6 ? 6 : v60;
        v113 = v60;
        v114 = v61;
        FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(v111, v112);
        v115 = a1 + 17680 + 56 * v114;
        if (v115 >= a1 + 17680 && v115 + 56 <= a1 + 17792 && v115 <= v115 + 56)
        {
          v117 = *v115;
          v118 = *(v115 + 8);
          if (*v115 <= v118)
          {
            v120 = *v111;
            v119 = *(v111 + 8);
            v121 = (1 << v113);
            v122 = 4 * v121;
            v123 = v118 - v117;
            v124 = *(v115 + 16) > v117 || v122 > v123;
            v125 = v124 || v120 > v119;
            v126 = v125 || *(v111 + 16) > v120;
            if (!v126 && v122 <= v119 - *v111)
            {
              memcpy(*v111, v117, 4 * v121);
              if (v120 <= &v120[v122])
              {
                if (!a15 || (v128 = *(v115 + 24), v129 = *(v115 + 32), v128 <= v129) && *(v115 + 40) <= v128 && v122 <= v129 - v128 && (v131 = *(v111 + 24), v130 = *(v111 + 32), v131 <= v130) && *(v111 + 40) <= v131 && v122 <= v130 - v131 && (memcpy(*(v111 + 24), v128, 4 * v121), v131 <= v131 + v122))
                {
                  for (i = *v111; ; i += 4)
                  {
                    v133 = (i + 4) > *(v111 + 8) || i > i + 4;
                    if (v133 || i < *(v111 + 16))
                    {
                      break;
                    }

                    if (*i >= 0xFu)
                    {
                      *a16 = 1;
                      return;
                    }

                    if (!--v121)
                    {
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_231;
  }

  v26 = 0;
  v27 = 0;
  v28 = (1 << v23);
  while (1)
  {
    v29 = v26 ? 0 : a9;
    v30 = 0;
    v31 = v24 - v29;
    if (v24 != v29)
    {
      break;
    }

LABEL_24:
    v37 = (a6 + 4 * v26);
    if (v37 < a6 || (v37 + 1) > a7 || v37 > v37 + 1)
    {
      goto LABEL_231;
    }

    v38 = (__clz(v30) ^ 0x1F) + 2;
    if (v30)
    {
      v39 = v38;
    }

    else
    {
      v39 = 1;
    }

    *v37 = v39;
    if (++v26 == v28)
    {
      goto LABEL_33;
    }
  }

  v32 = v27 + v24 - v29;
  while (1)
  {
    v33 = (a2 + 4 * v27);
    v34 = v33 + 1;
    v35 = v33 < a2 || v34 > a3;
    if (v35 || v33 > v34)
    {
      break;
    }

    ++v27;
    v30 |= *v33 ^ (*v33 >> 31);
    if (!--v31)
    {
      v27 = v32;
      goto LABEL_24;
    }
  }

LABEL_231:
  __break(0x5519u);
}

void FLAC__stream_encoder_init_stream(int **a1, uint64_t a2, double a3, double a4)
{
  v205 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (**a1 != 1)
  {
    return;
  }

  v5 = v4[6];
  if ((v5 - 9) < 0xFFFFFFF8)
  {
    return;
  }

  if (v5 != 2)
  {
    v4[4] = 0;
LABEL_7:
    v4[5] = 0;
    goto LABEL_8;
  }

  if (!v4[4])
  {
    goto LABEL_7;
  }

LABEL_8:
  v8 = v4[7];
  if (v8 >= 0x20)
  {
    v4[4] = 0;
    return;
  }

  if (v8 - 25 >= 0xFFFFFFEB)
  {
    v9 = v4[8];
    if (v9 - 655351 >= 0xFFF6000A)
    {
      v10 = v4[9];
      if (v10)
      {
        if (v10 - 0x10000 < 0xFFFF0010)
        {
          return;
        }

        v11 = v4[139];
      }

      else
      {
        v11 = v4[139];
        v10 = v11 ? 4096 : 1152;
        v4[9] = v10;
      }

      if (v11 <= 0x20 && v10 >= v11)
      {
        v12 = v4[140];
        if (v12)
        {
          if ((v12 - 16) < 0xFFFFFFF5)
          {
            return;
          }
        }

        else
        {
          if (v8 > 0xF)
          {
            if (v8 == 16)
            {
              if (v10 >= 0xC1)
              {
                if (v10 >= 0x181)
                {
                  if (v10 >= 0x241)
                  {
                    if (v10 >= 0x481)
                    {
                      if (v10 >= 0x901)
                      {
                        if (v10 < 0x1201)
                        {
                          v13 = 12;
                        }

                        else
                        {
                          v13 = 13;
                        }
                      }

                      else
                      {
                        v13 = 11;
                      }
                    }

                    else
                    {
                      v13 = 10;
                    }
                  }

                  else
                  {
                    v13 = 9;
                  }
                }

                else
                {
                  v13 = 8;
                }
              }

              else
              {
                v13 = 7;
              }
            }

            else
            {
              if (v10 < 0x481)
              {
                v14 = 14;
              }

              else
              {
                v14 = 15;
              }

              if (v10 >= 0x181)
              {
                v13 = v14;
              }

              else
              {
                v13 = 13;
              }
            }
          }

          else
          {
            v13 = (v8 >> 1) + 2;
            if (v8 <= 5)
            {
              v13 = 5;
            }
          }

          v4[140] = v13;
        }

        if (v4[2])
        {
          v16 = v10 > 0x1200 && v9 < 0xBB81;
          if (v10 > 0x4000)
          {
            return;
          }

          if (v16)
          {
            return;
          }

          HIDWORD(v17) = -858993459 * v9;
          LODWORD(v17) = -858993459 * v9;
          if ((v17 >> 1) >= 0x1999999A && v9 >= 0x10000 && v9 % 0x3E8)
          {
            return;
          }

          HIDWORD(v18) = v8 - 8;
          LODWORD(v18) = v8 - 8;
          if ((v18 >> 2) > 4)
          {
            return;
          }

          v19 = v4[145];
          if (v19 > 8)
          {
            return;
          }

          v20 = v10 > 0x1200 || v11 > 0xC;
          v21 = v20;
          if (v9 <= 0xBB80 && v21)
          {
            return;
          }
        }

        else
        {
          v19 = v4[145];
          if (v19 >= 0x10)
          {
            v19 = 15;
            v4[145] = 15;
          }
        }

        if (v4[144] >= v19)
        {
          v4[144] = v19;
        }

        v22 = *(v4 + 75);
        v23 = v4[156];
        if (!v22)
        {
          goto LABEL_132;
        }

        if (!v23)
        {
          v28 = a1 + 1;
          *a1[1] = 0;
          v29 = 1;
          goto LABEL_135;
        }

        v24 = v4[156];
        while (1)
        {
          if (v22 >= v22 + 1 || (v22 + 1) > *(v4 + 76) || v22 < *(v4 + 77))
          {
            goto LABEL_316;
          }

          v27 = *v22;
          if (*v22)
          {
            if (*v27 == 3)
            {
              break;
            }
          }

          ++v22;
          if (!--v24)
          {
            goto LABEL_84;
          }
        }

        if (v27 + 4 > v27 + 12)
        {
          goto LABEL_316;
        }

        *(a1[1] + 1424) = v27 + 4;
        if (*(v4 + 75))
        {
LABEL_84:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          do
          {
            v35 = *(v4 + 76);
            v36 = *(v4 + 77);
            v37 = (*(v4 + 75) + 8 * v30);
            if ((v37 + 1) > v35 || v37 > v37 + 1 || v37 < v36)
            {
              goto LABEL_316;
            }

            v40 = *v37;
            v41 = **v37;
            if (v41 > 4)
            {
              if (v41 == 5)
              {
                if (v40 + 4 > v40 + 48)
                {
                  goto LABEL_316;
                }

                if (!FLAC__format_cuesheet_is_legal((v40 + 4), v40[40]))
                {
                  return;
                }
              }

              else if (v41 == 6)
              {
                if (v40 + 4 > v40 + 30)
                {
                  goto LABEL_316;
                }

                if (!FLAC__format_picture_is_legal(v40 + 16))
                {
                  return;
                }

                v42 = v40[4];
                if (v42 == 2)
                {
                  if (v34)
                  {
                    return;
                  }

                  v34 = 1;
                }

                else if (v42 == 1)
                {
                  if (v33)
                  {
                    return;
                  }

                  v43 = *(v40 + 3);
                  v44 = *(v40 + 4);
                  if (v43 < *(v40 + 5) || v43 >= v44)
                  {
                    goto LABEL_316;
                  }

                  v46 = v43 + 1;
                  v47 = v43 + 1;
                  do
                  {
                    if (v47 > v44)
                    {
                      goto LABEL_316;
                    }
                  }

                  while (*(v47++ - 1));
                  if (strcmp(*(v40 + 3), "image/png"))
                  {
                    do
                    {
                      if (v46 > v44)
                      {
                        goto LABEL_316;
                      }
                    }

                    while (*(v46++ - 1));
                    if (strcmp(v43, "-->"))
                    {
                      return;
                    }
                  }

                  if (v40[18] != 32 || v40[19] != 32)
                  {
                    return;
                  }

                  v33 = 1;
                }
              }
            }

            else
            {
              switch(v41)
              {
                case 3:
                  if (v31)
                  {
                    return;
                  }

                  if (v40 + 4 > v40 + 12)
                  {
                    goto LABEL_316;
                  }

                  if (!FLAC__format_seektable_is_legal((v40 + 4)))
                  {
                    return;
                  }

                  v31 = 1;
                  break;
                case 4:
                  if (v32)
                  {
                    return;
                  }

                  v32 = 1;
                  break;
                case 0:
                  return;
              }
            }

            ++v30;
            v4 = *a1;
          }

          while (v30 < (*a1)[156]);
          v29 = v32 == 0;
          v5 = v4[6];
        }

        else
        {
LABEL_132:
          if (v23)
          {
            return;
          }

          v29 = 1;
        }

        v28 = a1 + 1;
        *a1[1] = 0;
        if (v5)
        {
LABEL_135:
          v50 = 0;
          v51 = 0;
          do
          {
            v52 = *v28;
            v53 = &(*v28)[v50];
            v54 = v53 + 2946;
            v55 = (v53 + 2952);
            v56 = v53 + 2946 < *v28 + 2946 || v55 > (*v28 + 2994);
            v57 = v56 || v54 > v55;
            v58 = (v52 + 2);
            v59 = (v52 + 50);
            v60 = v53 + 2;
            v61 = (v53 + 8);
            v62 = !v57 && v60 >= v58;
            v63 = !v62 || v61 > v59;
            if (v63 || v60 > v61)
            {
              goto LABEL_316;
            }

            *v60 = 0;
            v60[1] = 0;
            v60[2] = 0;
            v54[1] = 0;
            v54[2] = 0;
            *v54 = 0;
            v65 = *v28;
            v66 = (*v28 + 3006);
            v67 = v66 + v50 * 4;
            if (v66 + v50 * 4 < v66)
            {
              goto LABEL_316;
            }

            if (v67 + 24 > (v65 + 3054))
            {
              goto LABEL_316;
            }

            if (v67 > v67 + 24)
            {
              goto LABEL_316;
            }

            v68 = &v65[v50 + 62];
            if (v68 < v65 + 62)
            {
              goto LABEL_316;
            }

            v69 = &v65[v50 + 68];
            if (v69 > (v65 + 110) || v68 > v69)
            {
              goto LABEL_316;
            }

            v70 = &v65[v50 + 3006];
            *v68 = 0;
            *(v68 + 1) = 0;
            *(v68 + 2) = 0;
            *(v70 + 1) = 0;
            *(v70 + 2) = 0;
            *v70 = 0;
            ++v51;
            v50 += 6;
          }

          while (v51 < (*a1)[6]);
        }

        v71 = 0;
        v72 = 1;
        do
        {
          v73 = v72;
          v74 = *v28;
          v75 = &(*v28)[6 * v71];
          v76 = (v75 + 11976);
          v77 = v75 + 12000;
          v78 = v77 > (*v28 + 3006) || v76 > v77;
          v79 = &v74[6 * v71];
          v80 = (v74 + 62);
          v81 = v79 + 50;
          v82 = (v79 + 56);
          if (v78 || v82 > v80 || v81 > v82)
          {
            goto LABEL_316;
          }

          *v81 = 0;
          v81[1] = 0;
          v81[2] = 0;
          v76[1] = 0;
          v76[2] = 0;
          *v76 = 0;
          v85 = *v28;
          v86 = &(*v28)[6 * v71];
          v87 = (v86 + 12216);
          v88 = v86 + 12240;
          if (v88 > (*v28 + 3066) || v87 > v88)
          {
            goto LABEL_316;
          }

          v90 = &v85[6 * v71];
          v91 = (v85 + 122);
          v92 = (v90 + 116);
          if ((v90 + 116) > v91)
          {
            goto LABEL_316;
          }

          v93 = v90 + 110;
          if (v93 > v92)
          {
            goto LABEL_316;
          }

          v72 = 0;
          *v93 = 0;
          v93[1] = 0;
          v93[2] = 0;
          v87[1] = 0;
          v87[2] = 0;
          v71 = 1;
          *v87 = 0;
        }

        while ((v73 & 1) != 0);
        if ((*a1)[10])
        {
          v94 = 0;
          v95 = 0;
          do
          {
            v96 = *v28;
            v97 = (*v28 + 3066);
            v98 = (v97 + v94 * 4);
            v99 = &(*v28)[v94];
            v100 = (v99 + 3072);
            v101 = v97 + v94 * 4 < v97 || v100 > (*v28 + 3258);
            v102 = v101 || v98 > v100;
            v103 = (v96 + 122);
            v104 = (v96 + 314);
            v105 = v99 + 122;
            v106 = (v99 + 128);
            v107 = !v102 && v105 >= v103;
            v108 = !v107 || v106 > v104;
            if (v108 || v105 > v106)
            {
              goto LABEL_316;
            }

            *v105 = 0;
            v105[1] = 0;
            v105[2] = 0;
            v98[1] = 0;
            v98[2] = 0;
            *v98 = 0;
            ++v95;
            v94 += 6;
          }

          while (v95 < (*a1)[10]);
        }

        v110 = a1[1];
        *(v110 + 159) = 0;
        *(v110 + 314) = 0u;
        *(v110 + 1629) = 0;
        *(v110 + 815) = 0u;
        v111 = a1[1];
        if ((*a1)[6])
        {
          v112 = 0;
          v113 = 2762;
          v114 = 2762;
          do
          {
            v115 = &v111[v112];
            v116 = &v111[v112 + 3264];
            if (v116 > v115 + 3270 || v115 + 330 > v115 + 336)
            {
              goto LABEL_316;
            }

            *(v115 + 165) = 0;
            *(v115 + 166) = 0;
            *(v115 + 167) = 0;
            *(v116 + 1) = 0;
            *(v116 + 2) = 0;
            *v116 = 0;
            v117 = &(*v28)[v112];
            v118 = (v117 + 13080);
            v119 = v117 + 13080 <= (v117 + 13104) && v118 >= v117 + 13056;
            v120 = v117 + 1320;
            v121 = (v117 + 1344);
            v122 = v117 + 1368;
            v123 = !v119 || v121 > v122;
            if (v123 || v121 < v120)
            {
              goto LABEL_316;
            }

            *v121 = 0;
            v121[1] = 0;
            v121[2] = 0;
            v118[1] = 0;
            v118[2] = 0;
            *v118 = 0;
            v111 = *v28;
            v125 = &(*v28)[v114];
            if (v125 < (*v28 + 2762) || v125 + 4 > (v111 + 2770) || v125 > v125 + 4)
            {
              goto LABEL_316;
            }

            v111[v113] = 0;
            v126 = v113 - 2761;
            ++v113;
            ++v114;
            v112 += 12;
          }

          while (v126 < (*a1)[6]);
        }

        v127 = 0;
        v128 = 1;
        do
        {
          v129 = v128;
          v130 = &v111[12 * v127];
          v131 = v130 + 3360;
          v20 = v130 + 3360 > v130 + 3366;
          v132 = v130 + 426;
          v133 = (v130 + 432);
          if (v20 || v132 > v133)
          {
            goto LABEL_316;
          }

          *v132 = 0;
          v132[1] = 0;
          v132[2] = 0;
          v131[1] = 0;
          v131[2] = 0;
          *v131 = 0;
          v135 = &(*v28)[12 * v127];
          v136 = (v135 + 13464);
          v137 = v135 + 13464 <= (v135 + 13488) && v136 >= v135 + 13440;
          v138 = &(*v28)[12 * v127];
          v139 = v138 + 1704;
          v140 = (v138 + 1728);
          v141 = v138 + 1752;
          v142 = !v137 || v140 > v141;
          if (v142 || v140 < v139)
          {
            goto LABEL_316;
          }

          *v140 = 0;
          v140[1] = 0;
          v140[2] = 0;
          v136[1] = 0;
          v136[2] = 0;
          *v136 = 0;
          v111 = *v28;
          v144 = &(*v28)[v127];
          v145 = v144 + 11084;
          if (v144 + 11084 > (*v28 + 2772))
          {
            goto LABEL_316;
          }

          v146 = (v144 + 11080);
          if (v146 > v145)
          {
            goto LABEL_316;
          }

          v128 = 0;
          *v146 = 0;
          v127 = 1;
        }

        while ((v129 & 1) != 0);
        *(v111 + 2782) = 0u;
        *(v111 + 1393) = 0;
        *(v111 + 1692) = 0;
        *(v111 + 3386) = 0u;
        v147 = a1[1];
        *(v147 + 1396) = 0;
        *(v147 + 697) = 0u;
        *(v147 + 1695) = 0;
        *(v147 + 848) = 0u;
        v148 = a1[1];
        LODWORD(a4) = (*a1)[9];
        v149 = ((*a1)[8] * 0.4 / *&a4 + 0.5);
        if (v149 <= 1)
        {
          v149 = 1;
        }

        v148[2796] = v149;
        v148[2797] = 0;
        *(v148 + 1425) = 0;
        v150 = v148 + 2882;
        if (v148 + 2882 > v148 + 2904)
        {
LABEL_316:
          __break(0x5519u);
          return;
        }

        *(v148 + 1451) = 0;
        *(v148 + 2894) = 0uLL;
        *(v148 + 2898) = 0uLL;
        *(v148 + 2886) = 0uLL;
        *(v148 + 2890) = 0uLL;
        *v150 = 0uLL;
        *v150 = 0x200000000;
        v151 = a1[1];
        *(v151 + 1455) = FLAC__lpc_compute_autocorrelation;
        *(v151 + 1452) = precompute_partition_info_sums_;
        *(v151 + 1453) = FLAC__fixed_compute_best_predictor;
        *(v151 + 1454) = FLAC__fixed_compute_best_predictor_wide;
        *(v151 + 1456) = FLAC__lpc_compute_residual_from_qlp_coefficients;
        *(v151 + 1457) = FLAC__lpc_compute_residual_from_qlp_coefficients_wide;
        *(v151 + 1458) = FLAC__lpc_compute_residual_from_qlp_coefficients;
        v152 = *a1;
        *v152 = 0;
        *(v151 + 2922) = 0uLL;
        *(v151 + 1464) = ACFLACEncoder::stream_encoder_write_callback;
        *(v151 + 1463) = 0;
        *(v151 + 1465) = ACFLACEncoder::stream_encoder_metadata_callback;
        *(v151 + 1467) = a2;
        resize_buffers_(a1, v152[9]);
        if (!v153)
        {
          return;
        }

        v154 = FLAC__bitwriter_init(*(a1[1] + 1397));
        v155 = *a1;
        if (!v154)
        {
LABEL_304:
          v191 = 8;
          goto LABEL_309;
        }

        if (v155[1])
        {
          v156 = *v28;
          (*v28)[4500] = v155[9] + 1;
          if (v155[6])
          {
            v157 = 0;
            v158 = 4452;
            while (1)
            {
              v159 = (*v28 + 4500);
              v160 = &(*v28)[v158];
              v161 = v160 + 6;
              v162 = v160 < *v28 + 4452 || v161 > v159;
              if (v162 || v160 > v161)
              {
                goto LABEL_316;
              }

              v164 = safe_malloc_mul_2op_p(4, *v159);
              *v160 = v164;
              *(v160 + 1) = v165;
              *(v160 + 2) = v164;
              if (!v164)
              {
                v155 = *a1;
                goto LABEL_304;
              }

              ++v157;
              v158 += 6;
              if (v157 >= (*a1)[6])
              {
                v156 = *v28;
                break;
              }
            }
          }

          v156[4501] = 0;
          v166 = *(v156 + 2224);
          if (v166 || (v166 = FLAC__stream_decoder_new(), (*(*v28 + 2224) = v166) != 0))
          {
            inited = FLAC__stream_decoder_init_stream(v166, verify_read_callback_, verify_write_callback_, verify_metadata_callback_, verify_error_callback_, a1);
            v155 = *a1;
            if (!inited)
            {
              v168 = v155[1] == 0;
LABEL_259:
              v169 = *v28;
              v170 = (*v28 + 4510);
              v169[2936] = 0;
              *(v169 + 1471) = 0;
              *(v169 + 2255) = 0;
              *(v169 + 1128) = 0u;
              *(v170 + 24) = 0;
              *(v155 + 81) = 0;
              *(v155 + 158) = 0u;
              if (!v168)
              {
                v169[4450] = 0;
              }

              if (FLAC__bitwriter_write_raw_uint32_nocheck(*(v169 + 1397), 0x664C6143u, 0x20u))
              {
                if (!write_bitbuffer_(a1, 0))
                {
                  return;
                }

                v171 = *a1;
                v172 = a1[1];
                if ((*a1)[1])
                {
                  v172[4450] = 1;
                }

                *(v172 + 1400) = 0;
                v172[2802] = 34;
                v172[2804] = v171[9];
                a1[1][2805] = (*a1)[9];
                a1[1][2806] = 0;
                a1[1][2807] = 0;
                a1[1][2808] = (*a1)[8];
                a1[1][2809] = (*a1)[6];
                a1[1][2810] = (*a1)[7];
                *(a1[1] + 1406) = *(*a1 + 74);
                v173 = a1[1];
                *(v173 + 2814) = 0u;
                if (v173 + 2814 > v173 + 2818)
                {
                  goto LABEL_316;
                }

                if ((*a1)[3])
                {
                  v174 = *v28;
                  if (*v28 + 2852 > *v28 + 2882)
                  {
                    goto LABEL_316;
                  }

                  *(v174 + 717) = xmmword_19B0B27F0;
                  *(v174 + 718) = 0u;
                  *(v174 + 719) = 0u;
                  *(v174 + 1440) = 0;
                }

                v175 = (*v28 + 2800);
                if (v175 > (*v28 + 2848))
                {
                  goto LABEL_316;
                }

                if (FLAC__add_metadata_block(v175, *(*v28 + 1397)))
                {
                  if (!write_bitbuffer_(a1, 0))
                  {
                    return;
                  }

                  (*v28)[2806] = 0xFFFFFF;
                  *(*v28 + 1406) = 0;
                  if (!v29)
                  {
LABEL_275:
                    v155 = *a1;
                    LODWORD(v179) = (*a1)[156];
                    if (v179)
                    {
                      v180 = 0;
                      do
                      {
                        v181 = *(v155 + 77);
                        v182 = *(v155 + 75) + 8 * v180;
                        v183 = v182 + 8 > *(v155 + 76) || v182 > v182 + 8;
                        if (v183 || v182 < v181)
                        {
                          goto LABEL_316;
                        }

                        *(*v182 + 4) = v180 == v179 - 1;
                        v185 = *(v155 + 76);
                        v186 = (*(v155 + 75) + 8 * v180);
                        v187 = (v186 + 1) > v185 || v186 > v186 + 1;
                        if (v187 || v186 < v181)
                        {
                          goto LABEL_316;
                        }

                        if (!FLAC__add_metadata_block(*v186, *(*v28 + 1397)))
                        {
                          goto LABEL_300;
                        }

                        if (!write_bitbuffer_(a1, 0))
                        {
                          return;
                        }

                        ++v180;
                        v155 = *a1;
                        v179 = (*a1)[156];
                      }

                      while (v180 < v179);
                    }

                    v189 = *(*v28 + 1463);
                    if (v189)
                    {
                      if (v155 + 162 > v155 + 164)
                      {
                        goto LABEL_316;
                      }

                      v190 = v189(a1);
                      v155 = *a1;
                      if (v190 == 1)
                      {
                        v191 = 5;
LABEL_309:
                        *v155 = v191;
                        return;
                      }
                    }

                    if (v155[1])
                    {
                      (*v28)[4450] = 2;
                    }

                    return;
                  }

                  *&v176 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v176 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v193 = v176;
                  v196 = v176;
                  v197 = v176;
                  v204 = 0xAAAAAAAAAAAAAAAALL;
                  v203 = v176;
                  v202 = v176;
                  v201 = v176;
                  v200 = v176;
                  v199 = v176;
                  v198 = v176;
                  v195 = v176;
                  v194 = v176;
                  v177 = a1[1];
                  v178 = (*a1)[156] == 0;
                  v192[0] = 4;
                  v192[1] = v178;
                  LODWORD(v193) = 8;
                  DWORD2(v193) = 0;
                  v196 = 0uLL;
                  *&v197 = 0;
                  v194 = 0uLL;
                  DWORD2(v195) = 0;
                  *&v195 = 0;
                  if (FLAC__add_metadata_block(v192, *(v177 + 1397)))
                  {
                    if (!write_bitbuffer_(a1, 0))
                    {
                      return;
                    }

                    goto LABEL_275;
                  }
                }
              }

LABEL_300:
              v155 = *a1;
              v191 = 7;
              goto LABEL_309;
            }
          }

          else
          {
            v155 = *a1;
          }

          v191 = 3;
          goto LABEL_309;
        }

        v168 = 1;
        goto LABEL_259;
      }
    }
  }
}

uint64_t FLAC__format_seektable_is_legal(uint64_t result)
{
  v1 = *result;
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = 1;
  v6 = *(result + 24);
  while (1)
  {
    if (v5)
    {
      goto LABEL_9;
    }

    if ((v3 + 3) > v4 || v3 > v3 + 3 || v3 < v6)
    {
      break;
    }

    if (*v3 != -1 && *v3 <= v2)
    {
      return 0;
    }

LABEL_9:
    if ((v3 + 3) > v4 || v3 > v3 + 3 || v3 < v6)
    {
      break;
    }

    v5 = 0;
    v7 = *v3;
    v3 += 3;
    v2 = v7;
    if (!--v1)
    {
      return 1;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t FLAC__format_cuesheet_is_legal(unint64_t result, int a2)
{
  if (!a2)
  {
    v4 = *(result + 148);
    if (!v4)
    {
      return 0;
    }

    v5 = *(result + 152);
    v6 = *(result + 160);
    v8 = v4 - 1;
    v7 = *(result + 168);
    goto LABEL_20;
  }

  v2 = *(result + 136);
  if (v2 >= 0x15888 && v2 % 0x24C == 0)
  {
    v4 = *(result + 148);
    if (v4)
    {
      v5 = *(result + 152);
      v6 = *(result + 160);
      v7 = *(result + 168);
      v8 = v4 - 1;
      v9 = v5 + 48 * (v4 - 1);
      if (v9 + 48 > v6 || v9 >= v9 + 48 || v9 < v7)
      {
LABEL_81:
        __break(0x5519u);
        return result;
      }

      if (*(v9 + 8) == 170)
      {
LABEL_20:
        v12 = 0;
        while (1)
        {
          v13 = v5 + 48 * v12;
          result = v13 + 48;
          if (v13 + 48 > v6 || v13 >= result || v13 < v7)
          {
            goto LABEL_81;
          }

          result = *(v13 + 8);
          if (!*(v13 + 8))
          {
            return result;
          }

          if (a2 && result >= 0x64)
          {
            if (result != 170)
            {
              return 0;
            }
          }

          else if (!a2)
          {
            goto LABEL_36;
          }

          if (__ROR8__(0xD4766BF908B51D9BLL * *v13, 2) > 0x6F74AE26501BDDuLL)
          {
            return 0;
          }

LABEL_36:
          result = *(v13 + 23);
          if (v12 < v8)
          {
            if (!*(v13 + 23))
            {
              return result;
            }

            v16 = *(v13 + 24);
            if (v16 + 16 <= *(v13 + 32) && v16 < v16 + 16 && v16 >= *(v13 + 40))
            {
              if (*(v16 + 8) <= 1u)
              {
LABEL_49:
                v19 = 0;
                v20 = -16;
                while (1)
                {
                  if (a2)
                  {
                    v21 = *(v13 + 24) + v20;
                    v22 = (v21 + 16);
                    v23 = v21 + 32;
                    if (v23 > *(v13 + 32) || v22 > v23 || v22 < *(v13 + 40))
                    {
                      goto LABEL_81;
                    }

                    if (__ROR8__(0xD4766BF908B51D9BLL * *v22, 2) > 0x6F74AE26501BDDuLL)
                    {
                      return 0;
                    }
                  }

                  if (v19)
                  {
                    v26 = *(v13 + 40);
                    v27 = *(v13 + 24) + v20;
                    v28 = v27 + 16;
                    if (v27 + 32 > *(v13 + 32) || v28 > v27 + 32 || v28 < v26 || v27 >= v28 || v27 < v26)
                    {
                      goto LABEL_81;
                    }

                    if (*(v27 + 8) + 1 != *(v27 + 24))
                    {
                      return 0;
                    }
                  }

                  ++v19;
                  v20 += 16;
                  if (result == v19)
                  {
                    goto LABEL_77;
                  }
                }
              }

              return 0;
            }

            goto LABEL_81;
          }

          if (*(v13 + 23))
          {
            goto LABEL_49;
          }

LABEL_77:
          ++v12;
          result = 1;
          if (v12 == v4)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t FLAC__format_picture_is_legal(unsigned __int8 *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v2 < v1 && v2 >= v3;
  if (v4)
  {
    v5 = v2 + 1;
    do
    {
      if (!*(v5 - 1))
      {
        goto LABEL_12;
      }

      if (*(v5 - 1) - 127 < 0xFFFFFFA1)
      {
        return 0;
      }

      if (v5 >= v1)
      {
        break;
      }

      v4 = v5++ >= v3;
    }

    while (v4);
  }

  do
  {
LABEL_11:
    __break(0x5519u);
LABEL_12:
    v6 = *(a1 + 4);
    v7 = *(a1 + 5);
    v8 = *(a1 + 6);
  }

  while (v6 >= v7 || v6 < v8);
  while (1)
  {
    v10 = *v6;
    if (!*v6)
    {
      return 1;
    }

    if (v6 >= v7)
    {
      goto LABEL_11;
    }

    if ((v10 & 0x80) != 0)
    {
      if ((v10 & 0xE0) != 0xC0)
      {
        goto LABEL_101;
      }

      a1 = v6 + 1;
      if ((v6 + 1) >= v7 || a1 < v6)
      {
        goto LABEL_11;
      }

      a1 = (*a1 & 0xC0);
      if (a1 == 128)
      {
        if ((v10 & 0xDE) == 0xC0)
        {
          return 0;
        }

        v11 = 2;
      }

      else
      {
        if ((v10 & 0xF0) != 0xE0)
        {
          goto LABEL_52;
        }

LABEL_101:
        a1 = v6 + 1;
        if ((v6 + 1) >= v7 || a1 < v6)
        {
          goto LABEL_11;
        }

        a1 = *a1;
        if ((a1 & 0xC0) != 0x80)
        {
          goto LABEL_43;
        }

        v12 = v6 + 2;
        if ((v6 + 2) >= v7 || v12 < v6)
        {
          goto LABEL_11;
        }

        v13 = *v12;
        if ((v13 & 0xC0) == 0x80)
        {
          if (v10 == 224 && (a1 & 0xA0) == 0x80)
          {
            return 0;
          }

          if (v10 == 239)
          {
            if (a1 == 191)
            {
              a1 = (v13 & 0xBE);
              v11 = 3;
              if (a1 == 190)
              {
                return 0;
              }

              goto LABEL_21;
            }
          }

          else if (v10 == 237 && (a1 & 0xE0) == 0xA0)
          {
            return 0;
          }

          v11 = 3;
        }

        else
        {
LABEL_43:
          if ((v10 & 0xF8) != 0xF0)
          {
            goto LABEL_67;
          }

LABEL_52:
          a1 = v6 + 1;
          if ((v6 + 1) >= v7 || a1 < v6)
          {
            goto LABEL_11;
          }

          a1 = *a1;
          if ((a1 & 0xC0) != 0x80)
          {
            goto LABEL_55;
          }

          v14 = v6 + 2;
          if ((v6 + 2) >= v7 || v14 < v6)
          {
            goto LABEL_11;
          }

          if ((*v14 & 0xC0) != 0x80)
          {
            goto LABEL_55;
          }

          v15 = v6 + 3;
          if ((v6 + 3) >= v7 || v15 < v6)
          {
            goto LABEL_11;
          }

          if ((*v15 & 0xC0) == 0x80)
          {
            if (v10 == 240)
            {
              a1 = (a1 & 0xB0);
              v11 = 4;
              goto LABEL_88;
            }

            v11 = 4;
          }

          else
          {
LABEL_55:
            if ((v10 & 0xFC) != 0xF8)
            {
              goto LABEL_70;
            }

LABEL_67:
            a1 = v6 + 1;
            if ((v6 + 1) >= v7 || a1 < v6)
            {
              goto LABEL_11;
            }

            a1 = *a1;
            if ((a1 & 0xC0) != 0x80)
            {
              goto LABEL_70;
            }

            v16 = v6 + 2;
            if ((v6 + 2) >= v7 || v16 < v6)
            {
              goto LABEL_11;
            }

            if ((*v16 & 0xC0) != 0x80)
            {
              goto LABEL_70;
            }

            v17 = v6 + 3;
            if ((v6 + 3) >= v7 || v17 < v6)
            {
              goto LABEL_11;
            }

            if ((*v17 & 0xC0) != 0x80)
            {
              goto LABEL_70;
            }

            v18 = v6 + 4;
            if ((v6 + 4) >= v7 || v18 < v6)
            {
              goto LABEL_11;
            }

            if ((*v18 & 0xC0) == 0x80)
            {
              if (v10 == 248)
              {
                a1 = (a1 & 0xB8);
                v11 = 5;
                goto LABEL_88;
              }

              v11 = 5;
            }

            else
            {
LABEL_70:
              if ((v10 & 0xFE) != 0xFC)
              {
                return 0;
              }

              a1 = v6 + 1;
              if ((v6 + 1) >= v7 || a1 < v6)
              {
                goto LABEL_11;
              }

              a1 = *a1;
              if ((a1 & 0xC0) != 0x80)
              {
                return 0;
              }

              v19 = v6 + 2;
              if ((v6 + 2) >= v7 || v19 < v6)
              {
                goto LABEL_11;
              }

              if ((*v19 & 0xC0) != 0x80)
              {
                return 0;
              }

              v20 = v6 + 3;
              if ((v6 + 3) >= v7 || v20 < v6)
              {
                goto LABEL_11;
              }

              if ((*v20 & 0xC0) != 0x80)
              {
                return 0;
              }

              v21 = v6 + 4;
              if ((v6 + 4) >= v7 || v21 < v6)
              {
                goto LABEL_11;
              }

              if ((*v21 & 0xC0) != 0x80)
              {
                return 0;
              }

              v22 = v6 + 5;
              if ((v6 + 5) >= v7 || v22 < v6)
              {
                goto LABEL_11;
              }

              if ((*v22 & 0xC0) != 0x80)
              {
                return 0;
              }

              if (v10 == 252)
              {
                a1 = (a1 & 0xBC);
                v11 = 6;
LABEL_88:
                if (a1 == 128)
                {
                  return 0;
                }

                goto LABEL_21;
              }

              v11 = 6;
            }
          }
        }
      }
    }

    else
    {
      v11 = 1;
    }

LABEL_21:
    v6 += v11;
    if (v6 >= v7 || v6 < v8)
    {
      goto LABEL_11;
    }
  }
}

void resize_buffers_(void *a1, int a2)
{
  if (*a1[1] < a2)
  {
    v4 = 0;
    v5 = (a2 + 5);
    v6 = -1;
    v7 = 11784;
    while (++v6 < *(*a1 + 24))
    {
      v8 = a1[1];
      *v149 = v8 + v7;
      *&v149[8] = v8 + 11976;
      *&v149[16] = v8 + 11784;
      *&v147 = v8 + v4 + 8;
      *(&v147 + 1) = v8 + 200;
      v148 = v8 + 8;
      FLAC__memory_alloc_aligned_int32_array(v5, v149, &v147);
      v10 = a1[1];
      v11 = (v10 + v4 + 8);
      if (v11 < v10 + 8)
      {
        goto LABEL_192;
      }

      v12 = v10 + v4 + 32;
      if (v12 > v10 + 200)
      {
        goto LABEL_192;
      }

      if (v11 > v12)
      {
        goto LABEL_192;
      }

      v13 = *v11;
      v14 = v10 + v4;
      v15 = *(v14 + 16);
      if (v13 > v15)
      {
        goto LABEL_192;
      }

      v16 = *(v14 + 24);
      if (v15 - v13 < 0x10 || v16 > v13)
      {
        goto LABEL_192;
      }

      *v13 = 0;
      v13[1] = 0;
      if (v13 >= v13 + 2)
      {
        goto LABEL_192;
      }

      v18 = a1[1];
      v19 = v18 + v4;
      v20 = (v18 + v4 + 8);
      if (v20 < v18 + 8 || v19 + 32 > (v18 + 200) || v20 > v19 + 32)
      {
        goto LABEL_192;
      }

      v7 += 24;
      v4 += 24;
      *v20 += 16;
      if (!v9)
      {
LABEL_191:
        **a1 = 8;
        return;
      }
    }

    v21 = 0;
    v22 = 1;
    while (1)
    {
      v23 = a1[1];
      *v149 = v23 + 11976 + 24 * v21;
      *&v149[8] = v23 + 12024;
      *&v149[16] = v23 + 11976;
      *&v147 = v23 + 200 + 24 * v21;
      *(&v147 + 1) = v23 + 248;
      v148 = v23 + 200;
      FLAC__memory_alloc_aligned_int32_array(v5, v149, &v147);
      v25 = a1[1];
      v26 = v25 + 24 * v21;
      v27 = v26 + 200;
      v28 = v26 + 224;
      if (v28 > v25 + 248 || v27 > v28)
      {
        break;
      }

      v30 = *v27;
      v31 = *(v27 + 8);
      if (*v27 > v31)
      {
        break;
      }

      v32 = *(v27 + 16);
      if (v31 - v30 < 0x10 || v32 > v30)
      {
        break;
      }

      *v30 = 0;
      v30[1] = 0;
      if (v30 >= v30 + 2)
      {
        break;
      }

      v34 = a1[1];
      v35 = v34 + 24 * v21;
      v36 = v34 + 248;
      v37 = v35 + 224;
      if (v35 + 224 > v36)
      {
        break;
      }

      v38 = (v35 + 200);
      if (v38 > v37)
      {
        break;
      }

      *v38 += 16;
      v39 = (v24 != 0) & v22;
      v21 = 1;
      v22 = 0;
      if ((v39 & 1) == 0)
      {
        if (!v24)
        {
          goto LABEL_191;
        }

        if (*(*a1 + 556))
        {
          v40 = -1;
          v41 = 488;
          v42 = 12264;
          while (++v40 < *(*a1 + 40))
          {
            v43 = v42 + 24;
            v44 = a1[1];
            v45 = v41 + 24;
            *v149 = v44 + v42;
            *&v149[8] = v44 + 13032;
            *&v149[16] = v44 + 12264;
            *&v147 = v44 + v41;
            *(&v147 + 1) = v44 + 1256;
            v148 = v44 + 488;
            FLAC__memory_alloc_aligned_int32_array(a2, v149, &v147);
            v41 = v45;
            v42 = v43;
            if (!v46)
            {
              goto LABEL_191;
            }
          }

          v47 = a1[1];
          *v149 = v47 + 13032;
          *&v149[8] = v47 + 13056;
          *&v149[16] = v47 + 13032;
          *&v147 = v47 + 1256;
          *(&v147 + 1) = v47 + 1280;
          v148 = v47 + 1256;
          FLAC__memory_alloc_aligned_int32_array(a2, v149, &v147);
          if (!v48)
          {
            goto LABEL_191;
          }
        }

        v49 = 0;
        while (v49 < *(*a1 + 24))
        {
          v50 = 0;
          v51 = 1;
          do
          {
            v52 = v51;
            v53 = a1[1] + 48 * v49;
            v54 = 3 * v50;
            *v149 = v53 + 13056 + 8 * v54;
            *&v149[8] = v53 + 13104;
            *&v149[16] = v53 + 13056;
            *&v147 = v53 + 1320 + 8 * v54;
            *(&v147 + 1) = v53 + 1368;
            v148 = v53 + 1320;
            FLAC__memory_alloc_aligned_int32_array(a2, v149, &v147);
            if (!v55)
            {
              break;
            }

            v51 = 0;
            v50 = 1;
          }

          while ((v52 & 1) != 0);
          ++v49;
          if (!v55)
          {
            goto LABEL_191;
          }
        }

        v56 = 0;
        v57 = 1;
        do
        {
          v58 = 0;
          v59 = 1;
          do
          {
            v60 = v59;
            v61 = a1[1] + 48 * v56;
            v62 = 3 * v58;
            *v149 = v61 + 13440 + 8 * v62;
            *&v149[8] = v61 + 13488;
            *&v149[16] = v61 + 13440;
            *&v147 = v61 + 1704 + 8 * v62;
            *(&v147 + 1) = v61 + 1752;
            v148 = v61 + 1704;
            FLAC__memory_alloc_aligned_int32_array(a2, v149, &v147);
            if (!v63)
            {
              break;
            }

            v59 = 0;
            v58 = 1;
          }

          while ((v60 & 1) != 0);
          v64 = (v63 != 0) & v57;
          v56 = 1;
          v57 = 0;
        }

        while ((v64 & 1) != 0);
        if (!v63)
        {
          goto LABEL_191;
        }

        v65 = a1[1];
        memset(v149, 170, sizeof(v149));
        v146[0] = v149;
        v146[1] = &v150;
        v146[2] = v149;
        FLAC__memory_alloc_aligned(&v147, 8 * (2 * a2), v146);
        v66 = v147;
        if (!v147)
        {
          goto LABEL_191;
        }

        v67 = (v65 + 13536);
        if (v65 + 13536 <= (v65 + 13560))
        {
          v68 = (v65 + 11128);
          v69 = v148;
          if (*v67)
          {
            v145 = v147;
            free(*v67);
            v66 = v145;
          }

          *(v65 + 13536) = v66;
          *(v65 + 13552) = v69;
          if (v68 <= v65 + 11152)
          {
            v70 = *v149;
            *v68 = *v149;
            *(v65 + 11144) = *&v149[16];
            if (*(*a1 + 572))
            {
              v71 = a1[1];
              *v149 = v71 + 13560;
              *&v149[8] = v71 + 13584;
              *&v149[16] = v71 + 13560;
              *&v147 = v71 + 11152;
              *(&v147 + 1) = v71 + 11176;
              v148 = v71 + 11152;
              FLAC__memory_alloc_aligned_int32_array((2 * a2), v149, &v147);
              if (!v72)
              {
                goto LABEL_191;
              }
            }

            v73 = a1[1];
            if (*v73 == a2 || (v74 = *a1, !*(*a1 + 556)) || !*(v74 + 40))
            {
LABEL_189:
              *v73 = a2;
              return;
            }

            v75 = 0;
            v76 = 488;
            v77 = 44;
            while (1)
            {
              v78 = (v74 + v77);
              if (v74 + v77 < (v74 + 44) || (v78 + 4) > v74 + 556 || v78 > v78 + 4)
              {
                break;
              }

              v79 = *v78;
              v80 = a1[1];
              v81 = v80 + v76;
              v82 = v80 + v76 + 24;
              v85 = v82 <= v80 + 1256 && v81 <= v82 && v81 >= v80 + 488;
              switch(v79)
              {
                case 0:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v86 = v80 + v76;
                  v87 = *v86;
                  v88 = *(v86 + 8);
                  if (*v86 > v88 || *(v86 + 16) > v87 || a2 < 0 || (v88 - v87) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_bartlett(v87, a2);
                  break;
                case 1:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v112 = (v80 + v76);
                  v113 = *v112;
                  v114 = v112[1];
                  if (*v112 > v114 || v112[2] > v113 || a2 < 0 || (v114 - v113) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_bartlett_hann(v113, a2, v70);
                  break;
                case 2:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v120 = (v80 + v76);
                  v121 = *v120;
                  v122 = v120[1];
                  if (*v120 > v122 || v120[2] > v121 || a2 < 0 || (v122 - v121) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_blackman(v121, a2);
                  break;
                case 3:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v103 = (v80 + v76);
                  v104 = *v103;
                  v105 = v103[1];
                  if (*v103 > v105 || v103[2] > v104 || a2 < 0 || (v105 - v104) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_blackman_harris_4term_92db_sidelobe(v104, a2);
                  break;
                case 4:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v128 = (v80 + v76);
                  v129 = *v128;
                  v130 = v128[1];
                  if (*v128 > v130 || v128[2] > v129 || a2 < 0 || (v130 - v129) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_connes(v129, a2);
                  break;
                case 5:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v136 = (v80 + v76);
                  v137 = *v136;
                  v138 = v136[1];
                  if (*v136 > v138 || v136[2] > v137 || a2 < 0 || (v138 - v137) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_flattop(v137, a2);
                  break;
                case 6:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v123 = v80 + v76;
                  v124 = *(v80 + v76);
                  v125 = *(v80 + v76 + 8);
                  v126 = *(v123 + 16);
                  v127 = v124 > v125 || v126 > v124;
                  if (v127 || a2 < 0 || (v125 - v124) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_gauss(v124, a2, *(v74 + v77 + 4));
                  break;
                case 7:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v142 = (v80 + v76);
                  v143 = *v142;
                  v144 = v142[1];
                  if (*v142 > v144 || v142[2] > v143 || a2 < 0 || (v144 - v143) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_hamming(v143, a2);
                  break;
                case 9:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v109 = (v80 + v76);
                  v110 = *v109;
                  v111 = v109[1];
                  if (*v109 > v111 || v109[2] > v110 || a2 < 0 || (v111 - v110) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_kaiser_bessel(v110, a2);
                  break;
                case 10:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v139 = (v80 + v76);
                  v140 = *v139;
                  v141 = v139[1];
                  if (*v139 > v141 || v139[2] > v140 || a2 < 0 || (v141 - v140) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_nuttall(v140, a2);
                  break;
                case 11:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v100 = v80 + v76;
                  v101 = *v100;
                  v102 = *(v100 + 8);
                  if (*v100 > v102 || *(v100 + 16) > v101 || a2 < 0 || (v102 - v101) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  if (a2 >= 1)
                  {
                    memset_pattern16(v101, &unk_19B3D5A30, 4 * a2);
                  }

                  break;
                case 12:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v106 = v80 + v76;
                  v107 = *v106;
                  v108 = *(v106 + 8);
                  if (*v106 > v108 || *(v106 + 16) > v107 || a2 < 0 || (v108 - v107) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_triangle(v107, a2);
                  break;
                case 13:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v131 = v80 + v76;
                  v132 = *(v80 + v76);
                  v133 = *(v80 + v76 + 8);
                  v134 = *(v131 + 16);
                  v135 = v132 > v133 || v134 > v132;
                  if (v135 || a2 < 0 || (v133 - v132) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_tukey(v132, a2, *(v74 + v77 + 4));
                  break;
                case 14:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v95 = v80 + v76;
                  v96 = *(v80 + v76);
                  v97 = *(v80 + v76 + 8);
                  v98 = *(v95 + 16);
                  v99 = v96 > v97 || v98 > v96;
                  if (v99 || a2 < 0 || (v97 - v96) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_partial_tukey(v96, a2, *(v74 + v77 + 4), *(v74 + v77 + 8), *(v74 + v77 + 12));
                  break;
                case 15:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v115 = v80 + v76;
                  v116 = *(v80 + v76);
                  v117 = *(v80 + v76 + 8);
                  v118 = *(v115 + 16);
                  v119 = v116 > v117 || v118 > v116;
                  if (v119 || a2 < 0 || (v117 - v116) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_punchout_tukey(v116, a2, *(v74 + v77 + 4), *(v74 + v77 + 8), *(v74 + v77 + 12));
                  break;
                case 16:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v92 = (v80 + v76);
                  v93 = *v92;
                  v94 = v92[1];
                  if (*v92 > v94 || v92[2] > v93 || a2 < 0 || (v94 - v93) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_welch(v93, a2);
                  break;
                default:
                  if (!v85)
                  {
                    goto LABEL_192;
                  }

                  v89 = (v80 + v76);
                  v90 = *v89;
                  v91 = v89[1];
                  if (*v89 > v91 || v89[2] > v90 || a2 < 0 || (v91 - v90) >> 2 < a2)
                  {
                    goto LABEL_192;
                  }

                  FLAC__window_hann(v90, a2);
                  break;
              }

              ++v75;
              v74 = *a1;
              v76 += 24;
              v77 += 16;
              if (v75 >= *(*a1 + 40))
              {
                v73 = a1[1];
                goto LABEL_189;
              }
            }
          }
        }

        break;
      }
    }

LABEL_192:
    __break(0x5519u);
  }
}

BOOL FLAC__bitwriter_init(uint64_t a1)
{
  *(a1 + 36) = 0;
  *(a1 + 28) = 0x2000;
  v2 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  v3 = v2 + 0x8000;
  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  return v2 != 0;
}

unint64_t FLAC__add_metadata_block(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 >= 2)
  {
    return 0;
  }

  result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v3, 1u);
  if (!result)
  {
    return result;
  }

  if (*a1 > 0x7Fu)
  {
    return 0;
  }

  result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *a1, 7u);
  if (!result)
  {
    return result;
  }

  v6 = *(a1 + 8);
  if (*a1 == 4)
  {
    v6 = v6 - *(a1 + 16) + 32;
  }

  if (HIBYTE(v6))
  {
    return 0;
  }

  result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v6, 0x18u);
  if (!result)
  {
    return result;
  }

  v7 = *a1;
  if (*a1 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result = FLAC__bitwriter_write_zeroes(a2, 8 * *(a1 + 8));
        if (!result)
        {
          return result;
        }

        return 1;
      }

      if (v7 != 2)
      {
        goto LABEL_117;
      }

      v20 = 0;
      while (1)
      {
        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 16 + v20), 8u);
        if (!result)
        {
          return result;
        }

        if (++v20 == 4)
        {
          v22 = *(a1 + 24);
          v21 = *(a1 + 32);
          if (v22 > v21)
          {
            goto LABEL_192;
          }

          if (*(a1 + 40) > v22)
          {
            goto LABEL_192;
          }

          v23 = (*(a1 + 8) - 4);
          if (v21 - v22 < v23)
          {
            goto LABEL_192;
          }

          if (!v23)
          {
            return 1;
          }

          while (1)
          {
            v24 = *v22++;
            result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v24, 8u);
            if (!result)
            {
              break;
            }

            if (!--v23)
            {
              return 1;
            }
          }

          return result;
        }
      }
    }

    v46 = *(a1 + 16);
    if (!HIWORD(v46))
    {
      result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v46, 0x10u);
      if (!result)
      {
        return result;
      }

      v47 = *(a1 + 20);
      if (!HIWORD(v47))
      {
        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v47, 0x10u);
        if (!result)
        {
          return result;
        }

        v48 = *(a1 + 24);
        if (!HIBYTE(v48))
        {
          result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v48, 0x18u);
          if (!result)
          {
            return result;
          }

          v49 = *(a1 + 28);
          if (!HIBYTE(v49))
          {
            result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v49, 0x18u);
            if (!result)
            {
              return result;
            }

            v50 = *(a1 + 32);
            if (!(v50 >> 20))
            {
              result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v50, 0x14u);
              if (!result)
              {
                return result;
              }

              v51 = *(a1 + 36) - 1;
              if (v51 <= 7)
              {
                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v51, 3u);
                if (!result)
                {
                  return result;
                }

                v52 = *(a1 + 40) - 1;
                if (v52 <= 0x1F)
                {
                  result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v52, 5u);
                  if (result)
                  {
                    result = FLAC__bitwriter_write_raw_uint64(a2, *(a1 + 48), 36);
                    if (result)
                    {
                      v53 = 0;
                      v54 = a1 + 56;
                      while (1)
                      {
                        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(v54 + v53), 8u);
                        if (!result)
                        {
                          break;
                        }

                        if (++v53 == 16)
                        {
                          return 1;
                        }
                      }
                    }
                  }

                  return result;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v7 <= 4)
  {
    if (v7 == 3)
    {
      if (!*(a1 + 16))
      {
        return 1;
      }

      v59 = 0;
      v60 = 0;
      while (1)
      {
        v61 = (*(a1 + 24) + v59);
        v62 = (v61 + 3) > *(a1 + 32) || v61 > v61 + 3;
        if (v62 || v61 < *(a1 + 40))
        {
          goto LABEL_192;
        }

        v64 = *v61;
        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, HIDWORD(*v61), 0x20u);
        if (!result)
        {
          return result;
        }

        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v64, 0x20u);
        if (!result)
        {
          return result;
        }

        v65 = *(a1 + 24) + v59;
        v66 = v65 + 24 > *(a1 + 32) || v65 > v65 + 24;
        if (v66 || v65 < *(a1 + 40))
        {
          goto LABEL_192;
        }

        v68 = *(v65 + 8);
        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, HIDWORD(v68), 0x20u);
        if (!result)
        {
          return result;
        }

        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v68, 0x20u);
        if (!result)
        {
          return result;
        }

        v69 = *(a1 + 24);
        v70 = v69 + v59;
        v71 = v69 + v59 + 24;
        if (v71 > *(a1 + 32) || v70 > v71 || v70 < *(a1 + 40))
        {
          goto LABEL_192;
        }

        v72 = *(v69 + v59 + 16);
        if (HIWORD(v72))
        {
          return 0;
        }

        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v72, 0x10u);
        if (!result)
        {
          return result;
        }

        ++v60;
        v59 += 24;
        if (v60 >= *(a1 + 16))
        {
          return 1;
        }
      }
    }

    if (v7 == 4)
    {
      result = FLAC__bitwriter_write_raw_uint32_little_endian(a2, 0x20u);
      if (result)
      {
        v8 = 0;
        while (1)
        {
          result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, aReferenceLibfl[v8], 8u);
          if (!result)
          {
            break;
          }

          if (++v8 == 32)
          {
            result = FLAC__bitwriter_write_raw_uint32_little_endian(a2, *(a1 + 48));
            if (!result)
            {
              return result;
            }

            if (*(a1 + 48))
            {
              v9 = 0;
              while (1)
              {
                v10 = (*(a1 + 56) + 32 * v9);
                v11 = (v10 + 8) > *(a1 + 64) || v10 > v10 + 8;
                v12 = !v11 && v10 >= *(a1 + 72);
                if (!v12)
                {
                  goto LABEL_192;
                }

                v13 = *v10;
                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *v10, 8u);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, BYTE1(v13), 8u);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, BYTE2(v13), 8u);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, HIBYTE(v13), 8u);
                if (!result)
                {
                  return result;
                }

                v14 = (*(a1 + 56) + 32 * v9);
                if ((v14 + 4) > *(a1 + 64))
                {
                  goto LABEL_192;
                }

                if (v14 > v14 + 4)
                {
                  goto LABEL_192;
                }

                if (v14 < *(a1 + 72))
                {
                  goto LABEL_192;
                }

                v16 = v14[1];
                v15 = v14[2];
                v12 = v15 >= v16;
                v17 = v15 - v16;
                if (!v12)
                {
                  goto LABEL_192;
                }

                if (v14[3] > v16)
                {
                  goto LABEL_192;
                }

                v18 = *v14;
                if (v17 < v18)
                {
                  goto LABEL_192;
                }

                if (v18)
                {
                  do
                  {
                    v19 = *v16++;
                    result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v19, 8u);
                    if (!result)
                    {
                      return result;
                    }
                  }

                  while (--v18);
                }

                if (++v9 >= *(a1 + 48))
                {
                  return 1;
                }
              }
            }

            return 1;
          }
        }
      }

      return result;
    }

LABEL_117:
    v56 = *(a1 + 16);
    v55 = *(a1 + 24);
    if (v56 <= v55 && *(a1 + 32) <= v56)
    {
      v57 = *(a1 + 8);
      if (v55 - v56 >= v57)
      {
        if (v57)
        {
          while (1)
          {
            v58 = *v56++;
            result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v58, 8u);
            if (!result)
            {
              break;
            }

            if (!--v57)
            {
              return 1;
            }
          }

          return result;
        }

        return 1;
      }
    }

LABEL_192:
    __break(0x5519u);
    return result;
  }

  if (v7 != 5)
  {
    if (v7 == 6)
    {
      result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 16), 0x20u);
      if (!result)
      {
        return result;
      }

      result = *(a1 + 24);
      if (result >= *(a1 + 40))
      {
        v25 = *(a1 + 32);
        if (result < v25)
        {
          v26 = result + 1;
          while (v26 <= v25)
          {
            if (!*(v26++ - 1))
            {
              v28 = strlen(result);
              result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v28, 0x20u);
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 24);
              v29 = *(a1 + 32);
              if (v30 > v29)
              {
                goto LABEL_192;
              }

              if (*(a1 + 40) > v30)
              {
                goto LABEL_192;
              }

              v31 = v28;
              if (v28 > v29 - v30)
              {
                goto LABEL_192;
              }

              if (!v28)
              {
LABEL_72:
                result = *(a1 + 48);
                v33 = *(a1 + 56);
                if (result >= *(a1 + 64) && result < v33)
                {
                  v35 = result + 1;
                  while (v35 <= v33)
                  {
                    if (!*(v35++ - 1))
                    {
                      v37 = strlen(result);
                      result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v37, 0x20u);
                      if (!result)
                      {
                        return result;
                      }

                      v39 = *(a1 + 48);
                      v38 = *(a1 + 56);
                      if (v39 > v38)
                      {
                        goto LABEL_192;
                      }

                      if (*(a1 + 64) > v39)
                      {
                        goto LABEL_192;
                      }

                      v40 = v37;
                      if (v37 > v38 - v39)
                      {
                        goto LABEL_192;
                      }

                      if (v37)
                      {
                        while (1)
                        {
                          v41 = *v39++;
                          result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v41, 8u);
                          if (!result)
                          {
                            break;
                          }

                          if (!--v40)
                          {
                            goto LABEL_86;
                          }
                        }
                      }

                      else
                      {
LABEL_86:
                        result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 72), 0x20u);
                        if (result)
                        {
                          result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 76), 0x20u);
                          if (result)
                          {
                            result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 80), 0x20u);
                            if (result)
                            {
                              result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 84), 0x20u);
                              if (result)
                              {
                                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 88), 0x20u);
                                if (result)
                                {
                                  v43 = *(a1 + 96);
                                  v42 = *(a1 + 104);
                                  if (v43 > v42)
                                  {
                                    goto LABEL_192;
                                  }

                                  if (*(a1 + 112) > v43)
                                  {
                                    goto LABEL_192;
                                  }

                                  v44 = *(a1 + 88);
                                  if (v42 - v43 < v44)
                                  {
                                    goto LABEL_192;
                                  }

                                  if (!v44)
                                  {
                                    return 1;
                                  }

                                  while (1)
                                  {
                                    v45 = *v43++;
                                    result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v45, 8u);
                                    if (!result)
                                    {
                                      break;
                                    }

                                    if (!--v44)
                                    {
                                      return 1;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      return result;
                    }
                  }
                }

                goto LABEL_192;
              }

              while (1)
              {
                v32 = *v30++;
                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v32, 8u);
                if (!result)
                {
                  return result;
                }

                if (!--v31)
                {
                  goto LABEL_72;
                }
              }
            }
          }
        }
      }

      goto LABEL_192;
    }

    goto LABEL_117;
  }

  v73 = 0;
  while (1)
  {
    result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 16 + v73), 8u);
    if (!result)
    {
      return result;
    }

    if (++v73 == 128)
    {
      result = FLAC__bitwriter_write_raw_uint64(a2, *(a1 + 152), 64);
      if (!result)
      {
        return result;
      }

      result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(a1 + 160) != 0, 1u);
      if (!result)
      {
        return result;
      }

      result = FLAC__bitwriter_write_zeroes(a2, 2071);
      if (!result)
      {
        return result;
      }

      v74 = *(a1 + 164);
      if (v74 > 0xFF)
      {
        return 0;
      }

      result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, v74, 8u);
      if (!result)
      {
        return result;
      }

      if (!*(a1 + 164))
      {
        return 1;
      }

      v75 = 0;
      v76 = 9;
LABEL_163:
      v77 = *(a1 + 168);
      v78 = v77 + 48 * v75;
      if (v78 + 48 <= *(a1 + 176) && *(a1 + 184) <= v78)
      {
        result = FLAC__bitwriter_write_raw_uint64(a2, *v78, 64);
        if (result)
        {
          result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(v78 + 8), 8u);
          if (result)
          {
            v80 = 0;
            v81 = v77 + v76;
            while (1)
            {
              result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(v81 + v80), 8u);
              if (!result)
              {
                break;
              }

              if (++v80 == 12)
              {
                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(v78 + 22) & 1, 1u);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, (*(v78 + 22) >> 1) & 1, 1u);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitwriter_write_zeroes(a2, 110);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(v78 + 23), 8u);
                if (!result)
                {
                  return result;
                }

                if (*(v78 + 23))
                {
                  v82 = 0;
                  v83 = 0;
                  do
                  {
                    v84 = *(v78 + 24);
                    v85 = (v84 + v82);
                    if ((v84 + v82 + 16) > *(v78 + 32) || *(v78 + 40) > v85)
                    {
                      goto LABEL_192;
                    }

                    result = FLAC__bitwriter_write_raw_uint64(a2, *v85, 64);
                    if (!result)
                    {
                      return result;
                    }

                    result = FLAC__bitwriter_write_raw_uint32_nocheck(a2, *(v84 + v82 + 8), 8u);
                    if (!result)
                    {
                      return result;
                    }

                    result = FLAC__bitwriter_write_zeroes(a2, 24);
                    if (!result)
                    {
                      return result;
                    }

                    ++v83;
                    v82 += 16;
                  }

                  while (v83 < *(v78 + 23));
                }

                ++v75;
                v76 += 48;
                if (v75 < *(a1 + 164))
                {
                  goto LABEL_163;
                }

                return 1;
              }
            }
          }
        }

        return result;
      }

      goto LABEL_192;
    }
  }
}

uint64_t FLAC__bitwriter_write_raw_uint64(uint64_t a1, unint64_t a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = HIDWORD(a2);
  v6 = a3 - 32;
  v7 = v5 >> v3;
  v8 = v6 > 0x1F || v7 == 0;
  if (!v8 || !FLAC__bitwriter_write_raw_uint32_nocheck(a1, v5, v6))
  {
    return 0;
  }

  return FLAC__bitwriter_write_raw_uint32_nocheck(a1, v4, 0x20u);
}

uint64_t FLAC__bitwriter_write_zeroes(uint64_t result, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 28) > (*(result + 32) + a2) || (result = bitwriter_grow_(result, a2), result))
  {
    v4 = *(v3 + 36);
    if (!v4)
    {
LABEL_18:
      if (v2 >= 0x20)
      {
        v15 = *(v3 + 16);
        do
        {
          v16 = *v3;
          v17 = *(v3 + 8);
          v18 = *(v3 + 32);
          *(v3 + 32) = v18 + 1;
          v19 = (v16 + 4 * v18);
          v20 = (v19 + 1) > v17 || v19 >= v19 + 1;
          if (v20 || v19 < v15)
          {
            goto LABEL_33;
          }

          *v19 = 0;
          v2 -= 32;
        }

        while (v2 > 0x1F);
      }

      if (v2)
      {
        *(v3 + 24) = 0;
        *(v3 + 36) = v2;
      }

      return 1;
    }

    if (32 - v4 >= v2)
    {
      v5 = v2;
    }

    else
    {
      v5 = 32 - v4;
    }

    v6 = *(v3 + 24) << v5;
    *(v3 + 24) = v6;
    v7 = v5 + v4;
    *(v3 + 36) = v7;
    if (v7 == 32)
    {
      v8 = *v3;
      v9 = *(v3 + 8);
      v10 = *(v3 + 16);
      v11 = *(v3 + 32);
      *(v3 + 32) = v11 + 1;
      v12 = (v8 + 4 * v11);
      if ((v12 + 1) > v9 || v12 >= v12 + 1 || v12 < v10)
      {
LABEL_33:
        __break(0x5519u);
        return result;
      }

      v2 -= v5;
      *v12 = bswap32(v6);
      *(v3 + 36) = 0;
      goto LABEL_18;
    }

    return 1;
  }

  return result;
}

uint64_t FLAC__bitwriter_write_raw_uint32_little_endian(uint64_t a1, unsigned int a2)
{
  if (!FLAC__bitwriter_write_raw_uint32_nocheck(a1, a2, 8u) || !FLAC__bitwriter_write_raw_uint32_nocheck(a1, BYTE1(a2), 8u) || !FLAC__bitwriter_write_raw_uint32_nocheck(a1, BYTE2(a2), 8u))
  {
    return 0;
  }

  return FLAC__bitwriter_write_raw_uint32_nocheck(a1, HIBYTE(a2), 8u);
}

void verify_write_callback_(uint64_t a1, unsigned int *a2, unint64_t *a3, _DWORD **a4)
{
  v4 = *a2;
  v63 = a2[2];
  if (v63)
  {
    v5 = 0;
    v6 = (4 * v4);
    v7 = *a3;
    v60 = a3[1];
    v61 = *a2;
    v8 = 4452;
    v59 = a3[2];
    v62 = a4;
    while (1)
    {
      v9 = v7 + 24 > v60 || v7 >= v7 + 24;
      if (v9 || v7 < v59)
      {
        goto LABEL_85;
      }

      v11 = a4[1];
      v12 = &v11[v8];
      v13 = &v11[v8 + 6];
      v14 = &v11[v8] < v11 + 4452 || v13 > (v11 + 4500);
      if (v14 || v12 > v13)
      {
        goto LABEL_85;
      }

      v16 = *v12;
      v17 = *(v12 + 8);
      if (*v12 > v17)
      {
        goto LABEL_85;
      }

      v19 = *v7;
      v18 = *(v7 + 8);
      v20 = *(v7 + 16);
      v21 = *&v11[v8 + 4];
      v22 = v21 <= v16 && v17 - v16 >= v6;
      v23 = !v22 || v19 > v18;
      v24 = v23 || v20 > v19;
      if (v24 || v18 - *v7 < v6)
      {
        goto LABEL_85;
      }

      v58 = *(v7 + 8);
      v26 = v6;
      if (memcmp(v19, v16, v6))
      {
        break;
      }

      ++v5;
      v8 += 6;
      v7 += 24;
      a4 = v62;
      v6 = v26;
      if (v63 == v5)
      {
        v11[4501] -= v61;
        for (i = 4452; ; i += 6)
        {
          v28 = a4[1];
          v29 = &v28[i];
          v30 = &v28[i + 6];
          v31 = &v28[i] < v28 + 4452 || v30 > (v28 + 4500);
          if (v31 || v29 > v30)
          {
            break;
          }

          v34 = *v29;
          v33 = *(v29 + 8);
          v35 = *(v29 + 16);
          v36 = &v34[4 * v61];
          if (v36 > v33 || v35 > v36)
          {
            break;
          }

          v38 = 4 * v28[4501];
          v39 = v33 - v36;
          v9 = v33 >= v34;
          v40 = v33 - v34;
          v41 = !v9 || v38 > v39;
          v42 = v41 || v35 > v34;
          if (v42 || v38 > v40)
          {
            break;
          }

          memmove(v34, v36, v38);
          if (v34 > &v34[v38])
          {
            break;
          }

          a4 = v62;
          if (!--v63)
          {
            return;
          }
        }

LABEL_85:
        __break(0x5519u);
        return;
      }
    }

    v44 = v61;
    if (v61)
    {
      v45 = 0;
      v44 = v61;
      v46 = v62;
      while (1)
      {
        v47 = &v19[4 * v45];
        v48 = (v47 + 4) > v58 || v47 >= v47 + 4;
        v49 = !v48 && v47 >= v20;
        v50 = &v16[4 * v45];
        v51 = v50 + 4;
        v52 = v49 && v50 >= v21;
        v53 = !v52 || v51 > v17;
        if (v53 || v50 >= v51)
        {
          goto LABEL_85;
        }

        v55 = *v47;
        v56 = *v50;
        if (v55 != v56)
        {
          v44 = v61;
          goto LABEL_84;
        }

        if (++v45 == v61)
        {
          v55 = 0;
          v56 = 0;
          LODWORD(v45) = 0;
          goto LABEL_84;
        }
      }
    }

    v55 = 0;
    v56 = 0;
    LODWORD(v45) = 0;
    v46 = v62;
LABEL_84:
    *(v11 + 2255) = *(a2 + 3) + v45;
    v11[4512] = *(a2 + 3) / v44;
    v11[4513] = v5;
    v11[4514] = v45;
    v11[4515] = v56;
    v11[4516] = v55;
    **v46 = 4;
  }

  else
  {
    a4[1][4501] -= v4;
  }
}

uint64_t verify_read_callback_(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  if (*(v6 + 17804))
  {
    *a3 = 4;
    v7 = *a2;
    v8 = *(a2 + 8);
    v11 = v8 >= *a2;
    v9 = v8 - *a2;
    v11 = v11 && *(a2 + 16) <= v7 && v9 >= 4;
    if (v11)
    {
      *v7 = 1130450022;
      if (v7 < v7 + 1)
      {
        result = 0;
        *(*(a4 + 8) + 17804) = 0;
        return result;
      }
    }
  }

  else
  {
    v13 = *(v6 + 18036);
    if (!v13)
    {
      return 2;
    }

    v14 = *a3;
    if (*a3 > v13)
    {
      *a3 = v13;
      v14 = v13;
    }

    v15 = *(v6 + 18008);
    v16 = *(v6 + 18016);
    if (v15 <= v16)
    {
      v17 = *(a2 + 8);
      v18 = *a2;
      v19 = v16 - v15;
      v20 = *(v6 + 18024) > v15 || v14 > v19;
      v21 = v20 || v18 > v17;
      v22 = v21 || *(a2 + 16) > v18;
      if (!v22 && v14 <= v17 - *a2)
      {
        result = memcpy(*a2, v15, v14);
        if (v18 <= (v18 + v14))
        {
          result = 0;
          *(*(a4 + 8) + 18008) += *a3;
          *(*(a4 + 8) + 18036) -= *a3;
          return result;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

float *FLAC__window_bartlett(float *result, unsigned int a2)
{
  v2 = a2 - 1;
  if (a2)
  {
    v7 = &result[a2];
    if (((v2 >> 1) & 0x80000000) == 0)
    {
      v8 = 0;
      v9 = (v2 >> 1) + 1;
      v10 = result;
      v11 = v9;
      while (v10 >= result && (v10 + 1) <= v7 && v10 <= v10 + 1)
      {
        *v10++ = (v8 + v8) / v2;
        ++v8;
        if (!--v11)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_32;
    }

    v9 = 0;
LABEL_25:
    if (v9 < a2)
    {
      v15 = v2;
      v16 = a2 - v9;
      for (i = &result[v9]; i >= result && (i + 1) <= v7 && i <= i + 1; ++i)
      {
        *i = 2.0 - ((v9 + v9) / v15);
        ++v9;
        if (!--v16)
        {
          return result;
        }
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v3 = 0;
      v4 = a2 >> 1;
      v5 = result;
      v6 = a2 >> 1;
      while (v5 >= result && v5 + 1 <= &result[a2] && v5 <= v5 + 1)
      {
        *v5++ = (v3 + v3) / v2;
        ++v3;
        if (!--v6)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_32;
    }

    v4 = 0;
LABEL_17:
    if (v4 < a2)
    {
      v12 = v2;
      v13 = a2 - v4;
      for (j = &result[v4]; j >= result && j + 1 <= &result[a2] && j <= j + 1; ++j)
      {
        *j = 2.0 - ((v4 + v4) / v12);
        ++v4;
        if (!--v13)
        {
          return result;
        }
      }

LABEL_32:
      __break(0x5519u);
    }
  }

  return result;
}

void FLAC__window_bartlett_hann(uint64_t a1, int a2, double a3)
{
  if (a2 >= 1)
  {
    *&a3 = (a2 - 1);
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(a2 - 1);
    v28 = vdupq_lane_s32(*&a3, 0);
    v5 = xmmword_19B0A5840;
    v6 = xmmword_19B0A5850;
    v7 = xmmword_19B0A5860;
    v8 = (a1 + 8);
    v27 = vdupq_n_s64(0x401921FB54442D18uLL);
    v23 = vdupq_n_s64(4uLL);
    v24 = vdupq_n_s64(0xBFD851EB80000000);
    v29 = v4;
    v25 = vdupq_n_s64(0x3FE3D70A40000000uLL);
    v26 = vdupq_n_s64(0xBFDEB851E0000000);
    do
    {
      v37 = v6;
      v38 = v5;
      v9 = vcgeq_u64(v4, v6);
      v10 = vmovn_s64(v9);
      v35 = vuzp1_s16(v10, *v9.i8).u8[0];
      v36 = v7;
      v32 = vdivq_f32(vcvtq_f32_u32(v7), v28);
      v39 = vmulq_f64(vcvt_hight_f64_f32(v32), v27);
      __x = vmulq_f64(vcvtq_f64_f32(*v32.f32), v27);
      v33 = cos(__x.f64[1]);
      v11.f64[0] = cos(__x.f64[0]);
      v11.f64[1] = v33;
      __xa = v11;
      v34 = cos(v39.f64[1]);
      v12.f64[0] = cos(v39.f64[0]);
      v13.i64[0] = 0xBF000000BF000000;
      v13.i64[1] = 0xBF000000BF000000;
      v14 = vabsq_f32(vaddq_f32(v32, v13));
      v15 = vmlaq_f64(vmlaq_f64(v25, v26, vcvtq_f64_f32(*v14.f32)), v24, __xa);
      if (v35)
      {
        v16 = v15.f64[0];
        *(v8 - 2) = v16;
      }

      if (vuzp1_s16(v10, *&v12).i8[2])
      {
        v17 = v15.f64[1];
        *(v8 - 1) = v17;
      }

      v12.f64[1] = v34;
      v18 = vmlaq_f64(vmlaq_f64(v25, v26, vcvt_hight_f64_f32(v14)), v24, v12);
      v4 = v29;
      v19 = vmovn_s64(vcgeq_u64(v29, v38));
      if (vuzp1_s16(v19, v19).i32[1])
      {
        v20 = v18.f64[0];
        *v8 = v20;
        v21 = v18.f64[1];
        v8[1] = v21;
      }

      v5 = vaddq_s64(v38, v23);
      v6 = vaddq_s64(v37, v23);
      v22.i64[0] = 0x400000004;
      v22.i64[1] = 0x400000004;
      v7 = vaddq_s32(v36, v22);
      v8 += 4;
      v3 -= 4;
    }

    while (v3);
  }
}

void FLAC__window_blackman(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = (a2 + 3) & 0xFFFFFFFC;
    v3 = vdupq_n_s64(a2 - 1);
    v49 = vdupq_lane_s64(COERCE__INT64((a2 - 1)), 0);
    v4 = xmmword_19B0A5840;
    v5 = xmmword_19B0A5850;
    v6 = xmmword_19B0A5860;
    v31 = vdupq_n_s64(0x401921FB54442D18uLL);
    v32 = vdupq_n_s64(0x402921FB54442D18uLL);
    v7 = (a1 + 8);
    __asm { FMOV            V6.2D, #-0.5 }

    v27 = vdupq_n_s64(4uLL);
    v28 = vdupq_n_s64(0x3FB47AE140000000uLL);
    v33 = v3;
    v29 = _Q6;
    v30 = vdupq_n_s64(0x3FDAE147A0000000uLL);
    do
    {
      v47 = v5;
      v48 = v4;
      v13 = vcgeq_u64(v3, v5);
      v14 = vmovn_s64(v13);
      v45 = vuzp1_s16(v14, *v13.i8);
      v15.i64[0] = v6.u32[2];
      v15.i64[1] = v6.u32[3];
      v36 = vcvtq_f64_u64(v15);
      v46 = v6;
      v15.i64[0] = v6.u32[0];
      v15.i64[1] = v6.u32[1];
      v39 = vcvtq_f64_u64(v15);
      v50 = vdivq_f64(vmulq_f64(v36, v32), v49);
      __xa = vdivq_f64(vmulq_f64(v39, v32), v49);
      v43 = cos(__xa.f64[1]);
      v16.f64[0] = cos(__xa.f64[0]);
      v16.f64[1] = v43;
      v35 = v16;
      __x = cos(v50.f64[1]);
      v44 = cos(v50.f64[0]);
      v51 = vdivq_f64(vmulq_f64(v39, v31), v49);
      v37 = vdivq_f64(vmulq_f64(v36, v31), v49);
      v40 = cos(v37.f64[1]);
      v38 = cos(v37.f64[0]);
      v34 = cos(v51.f64[1]);
      v17.f64[0] = cos(v51.f64[0]);
      v17.f64[1] = v34;
      v18 = vmlaq_f64(vmlaq_f64(v30, v29, v17), v28, v35);
      v19 = v45;
      if (v45.i8[0])
      {
        *v19.i32 = v18.f64[0];
        *(v7 - 2) = *v19.i32;
      }

      if (vuzp1_s16(v14, v19).i8[2])
      {
        v20 = v18.f64[1];
        *(v7 - 1) = v20;
      }

      v21.f64[0] = v44;
      v21.f64[1] = __x;
      v22.f64[0] = v38;
      v22.f64[1] = v40;
      v23 = vmlaq_f64(vmlaq_f64(v30, v29, v22), v28, v21);
      v3 = v33;
      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v33, *&v48))).i32[1])
      {
        v24 = v23.f64[0];
        *v7 = v24;
        v25 = v23.f64[1];
        v7[1] = v25;
      }

      v4 = vaddq_s64(v48, v27);
      v5 = vaddq_s64(v47, v27);
      v26.i64[0] = 0x400000004;
      v26.i64[1] = 0x400000004;
      v6 = vaddq_s32(v46, v26);
      v7 += 4;
      v2 -= 4;
    }

    while (v2);
  }
}

void FLAC__window_blackman_harris_4term_92db_sidelobe(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = (a2 + 3) & 0xFFFFFFFC;
    v3 = vdupq_n_s64(a2 - 1);
    v57 = vdupq_lane_s64(COERCE__INT64((a2 - 1)), 0);
    v4 = xmmword_19B0A5840;
    v5 = xmmword_19B0A5850;
    v6 = xmmword_19B0A5860;
    v7 = (a1 + 8);
    v32 = vdupq_n_s64(0x402921FB54442D18uLL);
    v33 = vdupq_n_s64(0x4032D97C7F3321D2uLL);
    v31 = vdupq_n_s64(0x401921FB54442D18uLL);
    v26 = vdupq_n_s64(4uLL);
    v27 = vdupq_n_s64(0xBF87EBAF20000000);
    v34 = v3;
    v29 = vdupq_n_s64(0x3FD6F5C280000000uLL);
    v30 = vdupq_n_s64(0xBFDF4024C0000000);
    v28 = vdupq_n_s64(0x3FC2157680000000uLL);
    do
    {
      v48 = v5;
      v49 = v4;
      v8 = vcgeq_u64(v3, v5);
      v9 = vmovn_s64(v8);
      v46 = vuzp1_s16(v9, *v8.i8).u8[0];
      v47 = v6;
      v10.i64[0] = v6.u32[2];
      v10.i64[1] = v6.u32[3];
      v11 = vcvtq_f64_u64(v10);
      v10.i64[0] = v6.u32[0];
      v10.i64[1] = v6.u32[1];
      v53 = vcvtq_f64_u64(v10);
      v55 = v11;
      v50 = vdivq_f64(vmulq_f64(v11, v33), v57);
      __xa = vdivq_f64(vmulq_f64(v53, v33), v57);
      v44 = cos(__xa.f64[1]);
      v12.f64[0] = cos(__xa.f64[0]);
      v12.f64[1] = v44;
      v38 = v12;
      __x = cos(v50.f64[1]);
      v45 = cos(v50.f64[0]);
      v51 = vdivq_f64(vmulq_f64(v53, v32), v57);
      v40 = vdivq_f64(vmulq_f64(v55, v32), v57);
      v39 = cos(v40.f64[1]);
      v41 = cos(v40.f64[0]);
      v35 = cos(v51.f64[1]);
      v13.f64[0] = cos(v51.f64[0]);
      v13.f64[1] = v35;
      v52 = v13;
      v56 = vdivq_f64(vmulq_f64(v55, v31), v57);
      v36 = vdivq_f64(vmulq_f64(v53, v31), v57);
      v53.f64[0] = cos(v36.f64[1]);
      v14.f64[0] = cos(v36.f64[0]);
      v14.f64[1] = v53.f64[0];
      v37 = v14;
      v54 = cos(v56.f64[1]);
      v15.f64[0] = cos(v56.f64[0]);
      v16 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v29, v30, v37), v28, v52), v27, v38);
      if (v46)
      {
        v17 = v16.f64[0];
        *(v7 - 2) = v17;
      }

      if (vuzp1_s16(v9, *&v15).i8[2])
      {
        v18 = v16.f64[1];
        *(v7 - 1) = v18;
      }

      v19.f64[0] = v45;
      v20.f64[0] = v41;
      v19.f64[1] = __x;
      v20.f64[1] = v39;
      v15.f64[1] = v54;
      v21 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v29, v30, v15), v28, v20), v27, v19);
      v3 = v34;
      v22 = vmovn_s64(vcgeq_u64(v34, v49));
      if (vuzp1_s16(v22, v22).i32[1])
      {
        v23 = v21.f64[0];
        *v7 = v23;
        v24 = v21.f64[1];
        v7[1] = v24;
      }

      v4 = vaddq_s64(v49, v26);
      v5 = vaddq_s64(v48, v26);
      v25.i64[0] = 0x400000004;
      v25.i64[1] = 0x400000004;
      v6 = vaddq_s32(v47, v25);
      v7 += 4;
      v2 -= 4;
    }

    while (v2);
  }
}

uint64_t FLAC__window_connes(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v2 = (a2 + 1) & 0xFFFFFFFE;
    v3 = vdupq_n_s64(a2 - 1);
    v4 = vdupq_lane_s64(COERCE__INT64(vcvtd_n_f64_u32(a2 - 1, 1uLL)), 0);
    v5 = 0x100000000;
    v6 = xmmword_19B0A5850;
    v7 = (result + 4);
    __asm { FMOV            V4.2D, #1.0 }

    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v3, v6));
      v15.i64[0] = v5.u32[0];
      v15.i64[1] = v5.u32[1];
      v16 = vdivq_f64(vsubq_f64(vcvtq_f64_u64(v15), v4), v4);
      v17 = vmlsq_f64(_Q4, v16, v16);
      if (v14.i8[0])
      {
        v18 = vmulq_f64(v17, v17).f64[0];
        *(v7 - 1) = v18;
      }

      if (v14.i8[4])
      {
        v19 = COERCE_DOUBLE(*&vmulq_f64(v17, v17).f64[1]);
        *v7 = v19;
      }

      v6 = vaddq_s64(v6, v13);
      v5 = vadd_s32(v5, 0x200000002);
      v7 += 2;
      v2 -= 2;
    }

    while (v2);
  }

  return result;
}

void FLAC__window_flattop(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = (a2 + 3) & 0xFFFFFFFC;
    v3 = vdupq_n_s64(a2 - 1);
    v72 = vdupq_lane_s64(COERCE__INT64((a2 - 1)), 0);
    v4 = xmmword_19B0A5840;
    v5 = xmmword_19B0A5850;
    v6 = xmmword_19B0A5860;
    v7 = (a1 + 8);
    v40 = vdupq_n_s64(0x4032D97C7F3321D2uLL);
    v41 = vdupq_n_s64(0x403921FB54442D18uLL);
    v38 = vdupq_n_s64(0x401921FB54442D18uLL);
    v39 = vdupq_n_s64(0x402921FB54442D18uLL);
    __asm { FMOV            V16.2D, #1.0 }

    v42 = v3;
    v36 = vdupq_n_s64(0x3FF4A3D700000000uLL);
    v37 = vdupq_n_s64(0xBFFEE147A0000000);
    v34 = _Q16;
    v35 = vdupq_n_s64(0xBFD8D4FE00000000);
    v33 = vdupq_n_s64(0x3FA07C84C0000000uLL);
    do
    {
      v62 = v5;
      v63 = v4;
      v13 = vcgeq_u64(v3, v5);
      v14 = vmovn_s64(v13);
      v58 = vuzp1_s16(v14, *v13.i8);
      v15.i64[0] = v6.u32[2];
      v15.i64[1] = v6.u32[3];
      v16 = vcvtq_f64_u64(v15);
      v61 = v6;
      v15.i64[0] = v6.u32[0];
      v15.i64[1] = v6.u32[1];
      v68 = v16;
      v70 = vcvtq_f64_u64(v15);
      v64 = vdivq_f64(vmulq_f64(v16, v41), v72);
      v56 = vdivq_f64(vmulq_f64(v70, v41), v72);
      v59 = cos(v56.f64[1]);
      v17.f64[0] = cos(v56.f64[0]);
      v17.f64[1] = v59;
      v52 = v17;
      v57 = cos(v64.f64[1]);
      v60 = cos(v64.f64[0]);
      v65 = vdivq_f64(vmulq_f64(v70, v40), v72);
      v54 = vdivq_f64(vmulq_f64(v68, v40), v72);
      v53 = cos(v54.f64[1]);
      v55 = cos(v54.f64[0]);
      v49 = cos(v65.f64[1]);
      v18.f64[0] = cos(v65.f64[0]);
      v18.f64[1] = v49;
      v48 = v18;
      v66 = vdivq_f64(vmulq_f64(v68, v39), v72);
      __xa = vdivq_f64(vmulq_f64(v70, v39), v72);
      v50 = cos(__xa.f64[1]);
      v19.f64[0] = cos(__xa.f64[0]);
      v19.f64[1] = v50;
      v44 = v19;
      v51 = cos(v66.f64[1]);
      v67 = cos(v66.f64[0]);
      v71 = vdivq_f64(vmulq_f64(v70, v38), v72);
      __xb = vdivq_f64(vmulq_f64(v68, v38), v72);
      v69 = cos(__xb.f64[1]);
      __x = cos(__xb.f64[0]);
      v43 = cos(v71.f64[1]);
      v20.f64[0] = cos(v71.f64[0]);
      v20.f64[1] = v43;
      v21 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(v34, v37, v20), v36, v44), v35, v48), v33, v52);
      v22 = v58;
      if (v58.i8[0])
      {
        *v22.i32 = v21.f64[0];
        *(v7 - 2) = *v22.i32;
      }

      if (vuzp1_s16(v14, v22).i8[2])
      {
        v23 = v21.f64[1];
        *(v7 - 1) = v23;
      }

      v24.f64[0] = v60;
      v25.f64[0] = v55;
      v24.f64[1] = v57;
      v25.f64[1] = v53;
      v26.f64[0] = v67;
      v26.f64[1] = v51;
      v27.f64[0] = __x;
      v27.f64[1] = v69;
      v28 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(v34, v37, v27), v36, v26), v35, v25), v33, v24);
      v3 = v42;
      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v42, *&v63))).i32[1])
      {
        v29 = v28.f64[0];
        *v7 = v29;
        v30 = v28.f64[1];
        v7[1] = v30;
      }

      v31 = vdupq_n_s64(4uLL);
      v4 = vaddq_s64(v63, v31);
      v5 = vaddq_s64(v62, v31);
      v32.i64[0] = 0x400000004;
      v32.i64[1] = 0x400000004;
      v6 = vaddq_s32(v61, v32);
      v7 += 4;
      v2 -= 4;
    }

    while (v2);
  }
}

void FLAC__window_gauss(uint64_t a1, int a2, float a3)
{
  if (a2 >= 1)
  {
    *&v3 = vcvtd_n_f64_u32(a2 - 1, 1uLL);
    v4 = (a2 + 3) & 0xFFFFFFFC;
    v5 = vdupq_n_s64(a2 - 1);
    v30 = vdupq_lane_s64(COERCE__INT64(*&v3 * a3), 0);
    v31 = vdupq_lane_s64(v3, 0);
    v6 = xmmword_19B0A5840;
    v7 = xmmword_19B0A5850;
    v8 = xmmword_19B0A5860;
    v9 = (a1 + 8);
    __asm { FMOV            V5.2D, #-0.5 }

    v28 = vdupq_n_s64(4uLL);
    v29 = _Q5;
    v32 = v5;
    do
    {
      v39 = v7;
      v40 = v6;
      v15 = vcgeq_u64(v5, v7);
      v16 = vmovn_s64(v15);
      v34 = vuzp1_s16(v16, *v15.i8).u8[0];
      v17.i64[0] = v8.u32[0];
      v17.i64[1] = v8.u32[1];
      v18 = vcvtq_f64_u64(v17);
      v38 = v8;
      v17.i64[0] = v8.u32[2];
      v17.i64[1] = v8.u32[3];
      v19 = vdivq_f64(vsubq_f64(v18, v31), v30);
      v20 = vdivq_f64(vsubq_f64(vcvtq_f64_u64(v17), v31), v30);
      v41 = vmulq_f64(v19, vmulq_f64(v19, v29));
      __xa = vmulq_f64(v20, vmulq_f64(v20, v29));
      v35 = exp(__xa.f64[1]);
      __x = exp(__xa.f64[0]);
      v33 = exp(v41.f64[1]);
      v21 = exp(v41.f64[0]);
      if (v34)
      {
        v22 = v21;
        *(v9 - 2) = v22;
      }

      if (vuzp1_s16(v16, *&v21).i8[2])
      {
        v23 = v33;
        *(v9 - 1) = v23;
      }

      v5 = v32;
      v24 = vmovn_s64(vcgeq_u64(v32, v40));
      if (vuzp1_s16(v24, v24).i32[1])
      {
        v25 = __x;
        *v9 = v25;
        v26 = v35;
        v9[1] = v26;
      }

      v6 = vaddq_s64(v40, v28);
      v7 = vaddq_s64(v39, v28);
      v27.i64[0] = 0x400000004;
      v27.i64[1] = 0x400000004;
      v8 = vaddq_s32(v38, v27);
      v9 += 4;
      v4 -= 4;
    }

    while (v4);
  }
}

void FLAC__window_hamming(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = vdupq_n_s64(a2 - 1);
    v4 = xmmword_19B0A5840;
    v5 = xmmword_19B0A5850;
    v25 = vdupq_n_s64(0x401921FB54442D18uLL);
    v22 = vdupq_n_s64(4uLL);
    v6 = (a2 + 3) & 0xFFFFFFFC;
    v21 = vdupq_lane_s64(COERCE__INT64((a2 - 1)), 0);
    v7 = (a1 + 8);
    v26 = v3;
    v23 = vdupq_n_s64(0x3FE147AE20000000uLL);
    v24 = vdupq_n_s64(0xBFDD70A3E0000000);
    do
    {
      v32 = v5;
      v33 = v4;
      v8 = vorr_s8(vdup_n_s32(v2), 0x300000002);
      v9 = vmovn_s64(vcgeq_u64(v3, v5));
      v31 = vuzp1_s16(v9, v8).u8[0];
      v10.i64[0] = v8.u32[0];
      v10.i64[1] = v8.u32[1];
      v11 = vcvtq_f64_u64(v10);
      v10.i64[0] = v2;
      v10.i64[1] = (v2 + 1);
      v34 = vdivq_f64(vmulq_f64(v11, v25), v21);
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v10), v25), v21);
      v29 = cos(__x.f64[1]);
      v12.f64[0] = cos(__x.f64[0]);
      v12.f64[1] = v29;
      __xa = v12;
      v30 = cos(v34.f64[1]);
      v13.f64[0] = cos(v34.f64[0]);
      v14 = vmlaq_f64(v23, v24, __xa);
      if (v31)
      {
        v15 = v14.f64[0];
        *(v7 - 2) = v15;
      }

      if (vuzp1_s16(v9, *&v13).i8[2])
      {
        v16 = v14.f64[1];
        *(v7 - 1) = v16;
      }

      v13.f64[1] = v30;
      v17 = vmlaq_f64(v23, v24, v13);
      v3 = v26;
      v18 = vmovn_s64(vcgeq_u64(v26, v33));
      if (vuzp1_s16(v18, v18).i32[1])
      {
        v19 = v17.f64[0];
        *v7 = v19;
        v20 = v17.f64[1];
        v7[1] = v20;
      }

      v2 += 4;
      v4 = vaddq_s64(v33, v22);
      v5 = vaddq_s64(v32, v22);
      v7 += 4;
    }

    while (v6 != v2);
  }
}

void FLAC__window_hann(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = vdupq_n_s64(a2 - 1);
    v4 = xmmword_19B0A5840;
    v5 = xmmword_19B0A5850;
    v30 = vdupq_n_s64(4uLL);
    v31 = vdupq_n_s64(0x401921FB54442D18uLL);
    v6 = (a2 + 3) & 0xFFFFFFFC;
    v7 = (a1 + 8);
    __asm
    {
      FMOV            V5.2D, #-0.5
      FMOV            V6.2D, #0.5
    }

    v32 = v3;
    v28 = _Q5;
    v29 = vdupq_lane_s64(COERCE__INT64((a2 - 1)), 0);
    v27 = _Q6;
    do
    {
      v38 = v5;
      v39 = v4;
      v14 = vorr_s8(vdup_n_s32(v2), 0x300000002);
      v15 = vmovn_s64(vcgeq_u64(v3, v5));
      v37 = vuzp1_s16(v15, v14).u8[0];
      v16.i64[0] = v14.u32[0];
      v16.i64[1] = v14.u32[1];
      v17 = vcvtq_f64_u64(v16);
      v16.i64[0] = v2;
      v16.i64[1] = (v2 + 1);
      v40 = vdivq_f64(vmulq_f64(v17, v31), v29);
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v16), v31), v29);
      v35 = cos(__x.f64[1]);
      v18.f64[0] = cos(__x.f64[0]);
      v18.f64[1] = v35;
      __xa = v18;
      v36 = cos(v40.f64[1]);
      v19.f64[0] = cos(v40.f64[0]);
      v20 = vmlaq_f64(v27, v28, __xa);
      if (v37)
      {
        v21 = v20.f64[0];
        *(v7 - 2) = v21;
      }

      if (vuzp1_s16(v15, *&v19).i8[2])
      {
        v22 = v20.f64[1];
        *(v7 - 1) = v22;
      }

      v19.f64[1] = v36;
      v23 = vmlaq_f64(v27, v28, v19);
      v3 = v32;
      v24 = vmovn_s64(vcgeq_u64(v32, v39));
      if (vuzp1_s16(v24, v24).i32[1])
      {
        v25 = v23.f64[0];
        *v7 = v25;
        v26 = v23.f64[1];
        v7[1] = v26;
      }

      v2 += 4;
      v4 = vaddq_s64(v39, v30);
      v5 = vaddq_s64(v38, v30);
      v7 += 4;
    }

    while (v6 != v2);
  }
}

void FLAC__window_kaiser_bessel(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = (a2 + 3) & 0xFFFFFFFC;
    v3 = vdupq_n_s64(a2 - 1);
    v57 = vdupq_lane_s64(COERCE__INT64((a2 - 1)), 0);
    v4 = xmmword_19B0A5840;
    v5 = xmmword_19B0A5850;
    v6 = xmmword_19B0A5860;
    v7 = (a1 + 8);
    v32 = vdupq_n_s64(0x402921FB54442D18uLL);
    v33 = vdupq_n_s64(0x4032D97C7F3321D2uLL);
    v31 = vdupq_n_s64(0x401921FB54442D18uLL);
    v26 = vdupq_n_s64(4uLL);
    v27 = vdupq_n_s64(0xBF50624DE0000000);
    v34 = v3;
    v29 = vdupq_n_s64(0x3FD9BA5E40000000uLL);
    v30 = vdupq_n_s64(0xBFDFDF3B60000000);
    v28 = vdupq_n_s64(0x3FB9168720000000uLL);
    do
    {
      v48 = v5;
      v49 = v4;
      v8 = vcgeq_u64(v3, v5);
      v9 = vmovn_s64(v8);
      v46 = vuzp1_s16(v9, *v8.i8).u8[0];
      v47 = v6;
      v10.i64[0] = v6.u32[2];
      v10.i64[1] = v6.u32[3];
      v11 = vcvtq_f64_u64(v10);
      v10.i64[0] = v6.u32[0];
      v10.i64[1] = v6.u32[1];
      v53 = vcvtq_f64_u64(v10);
      v55 = v11;
      v50 = vdivq_f64(vmulq_f64(v11, v33), v57);
      __xa = vdivq_f64(vmulq_f64(v53, v33), v57);
      v44 = cos(__xa.f64[1]);
      v12.f64[0] = cos(__xa.f64[0]);
      v12.f64[1] = v44;
      v38 = v12;
      __x = cos(v50.f64[1]);
      v45 = cos(v50.f64[0]);
      v51 = vdivq_f64(vmulq_f64(v53, v32), v57);
      v40 = vdivq_f64(vmulq_f64(v55, v32), v57);
      v39 = cos(v40.f64[1]);
      v41 = cos(v40.f64[0]);
      v35 = cos(v51.f64[1]);
      v13.f64[0] = cos(v51.f64[0]);
      v13.f64[1] = v35;
      v52 = v13;
      v56 = vdivq_f64(vmulq_f64(v55, v31), v57);
      v36 = vdivq_f64(vmulq_f64(v53, v31), v57);
      v53.f64[0] = cos(v36.f64[1]);
      v14.f64[0] = cos(v36.f64[0]);
      v14.f64[1] = v53.f64[0];
      v37 = v14;
      v54 = cos(v56.f64[1]);
      v15.f64[0] = cos(v56.f64[0]);
      v16 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v29, v30, v37), v28, v52), v27, v38);
      if (v46)
      {
        v17 = v16.f64[0];
        *(v7 - 2) = v17;
      }

      if (vuzp1_s16(v9, *&v15).i8[2])
      {
        v18 = v16.f64[1];
        *(v7 - 1) = v18;
      }

      v19.f64[0] = v45;
      v20.f64[0] = v41;
      v19.f64[1] = __x;
      v20.f64[1] = v39;
      v15.f64[1] = v54;
      v21 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v29, v30, v15), v28, v20), v27, v19);
      v3 = v34;
      v22 = vmovn_s64(vcgeq_u64(v34, v49));
      if (vuzp1_s16(v22, v22).i32[1])
      {
        v23 = v21.f64[0];
        *v7 = v23;
        v24 = v21.f64[1];
        v7[1] = v24;
      }

      v4 = vaddq_s64(v49, v26);
      v5 = vaddq_s64(v48, v26);
      v25.i64[0] = 0x400000004;
      v25.i64[1] = 0x400000004;
      v6 = vaddq_s32(v47, v25);
      v7 += 4;
      v2 -= 4;
    }

    while (v2);
  }
}

void FLAC__window_nuttall(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = (a2 + 3) & 0xFFFFFFFC;
    v3 = vdupq_n_s64(a2 - 1);
    v57 = vdupq_lane_s64(COERCE__INT64((a2 - 1)), 0);
    v4 = xmmword_19B0A5840;
    v5 = xmmword_19B0A5850;
    v6 = xmmword_19B0A5860;
    v7 = (a1 + 8);
    v32 = vdupq_n_s64(0x402921FB54442D18uLL);
    v33 = vdupq_n_s64(0x4032D97C7F3321D2uLL);
    v31 = vdupq_n_s64(0x401921FB54442D18uLL);
    v26 = vdupq_n_s64(4uLL);
    v27 = vdupq_n_s64(0xBF85CB0040000000);
    v34 = v3;
    v29 = vdupq_n_s64(0x3FD744ED00000000uLL);
    v30 = vdupq_n_s64(0xBFDF4EAF20000000);
    v28 = vdupq_n_s64(0x3FC17C17A0000000uLL);
    do
    {
      v48 = v5;
      v49 = v4;
      v8 = vcgeq_u64(v3, v5);
      v9 = vmovn_s64(v8);
      v46 = vuzp1_s16(v9, *v8.i8).u8[0];
      v47 = v6;
      v10.i64[0] = v6.u32[2];
      v10.i64[1] = v6.u32[3];
      v11 = vcvtq_f64_u64(v10);
      v10.i64[0] = v6.u32[0];
      v10.i64[1] = v6.u32[1];
      v53 = vcvtq_f64_u64(v10);
      v55 = v11;
      v50 = vdivq_f64(vmulq_f64(v11, v33), v57);
      __xa = vdivq_f64(vmulq_f64(v53, v33), v57);
      v44 = cos(__xa.f64[1]);
      v12.f64[0] = cos(__xa.f64[0]);
      v12.f64[1] = v44;
      v38 = v12;
      __x = cos(v50.f64[1]);
      v45 = cos(v50.f64[0]);
      v51 = vdivq_f64(vmulq_f64(v53, v32), v57);
      v40 = vdivq_f64(vmulq_f64(v55, v32), v57);
      v39 = cos(v40.f64[1]);
      v41 = cos(v40.f64[0]);
      v35 = cos(v51.f64[1]);
      v13.f64[0] = cos(v51.f64[0]);
      v13.f64[1] = v35;
      v52 = v13;
      v56 = vdivq_f64(vmulq_f64(v55, v31), v57);
      v36 = vdivq_f64(vmulq_f64(v53, v31), v57);
      v53.f64[0] = cos(v36.f64[1]);
      v14.f64[0] = cos(v36.f64[0]);
      v14.f64[1] = v53.f64[0];
      v37 = v14;
      v54 = cos(v56.f64[1]);
      v15.f64[0] = cos(v56.f64[0]);
      v16 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v29, v30, v37), v28, v52), v27, v38);
      if (v46)
      {
        v17 = v16.f64[0];
        *(v7 - 2) = v17;
      }

      if (vuzp1_s16(v9, *&v15).i8[2])
      {
        v18 = v16.f64[1];
        *(v7 - 1) = v18;
      }

      v19.f64[0] = v45;
      v20.f64[0] = v41;
      v19.f64[1] = __x;
      v20.f64[1] = v39;
      v15.f64[1] = v54;
      v21 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v29, v30, v15), v28, v20), v27, v19);
      v3 = v34;
      v22 = vmovn_s64(vcgeq_u64(v34, v49));
      if (vuzp1_s16(v22, v22).i32[1])
      {
        v23 = v21.f64[0];
        *v7 = v23;
        v24 = v21.f64[1];
        v7[1] = v24;
      }

      v4 = vaddq_s64(v49, v26);
      v5 = vaddq_s64(v48, v26);
      v25.i64[0] = 0x400000004;
      v25.i64[1] = 0x400000004;
      v6 = vaddq_s32(v47, v25);
      v7 += 4;
      v2 -= 4;
    }

    while (v2);
  }
}

float *FLAC__window_triangle(float *result, unsigned int a2)
{
  if (a2)
  {
    v6 = a2 + 1;
    v7 = &result[a2];
    v8 = a2 + 1.0;
    v9 = v6 >> 1;
    v10 = 1;
    v11 = result;
    while (v11 >= result && (v11 + 1) <= v7 && v11 <= v11 + 1)
    {
      *v11++ = (v10 + v10) / v8;
      ++v10;
      if (!--v9)
      {
        if ((v6 >> 1) >= a2)
        {
          return result;
        }

        v12 = v6 >> 1;
        v13 = ~(v6 >> 1) + v6;
        v14 = 2 * a2 - 2 * v12;
        for (i = &result[v12]; i >= result && (i + 1) <= v7 && i <= i + 1; ++i)
        {
          *i = v14 / v8;
          v14 -= 2;
          if (!--v13)
          {
            return result;
          }
        }

        goto LABEL_29;
      }
    }

    goto LABEL_29;
  }

  if (a2)
  {
    v2 = (a2 >> 1) + 1;
    v3 = a2 >> 1;
    v4 = 1;
    v5 = result;
    while (v5 >= result && v5 + 1 <= &result[a2] && v5 <= v5 + 1)
    {
      *v5++ = (v4 + v4) / (a2 + 1.0);
      ++v4;
      if (!--v3)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_29;
  }

  v2 = 1;
LABEL_22:
  if (v2 <= a2)
  {
    v16 = a2 + 1 - v2;
    v17 = 2 * a2 - 2 * v2 + 2;
    for (j = &result[v2 - 1]; j >= result && j + 1 <= &result[a2] && j <= j + 1; ++j)
    {
      *j = v17 / (a2 + 1.0);
      v17 -= 2;
      if (!--v16)
      {
        return result;
      }
    }

LABEL_29:
    __break(0x5519u);
  }

  return result;
}

void FLAC__window_tukey(char *__b, unsigned int a2, float a3)
{
  if (a3 <= 0.0)
  {
    if (a2)
    {

      memset_pattern16(__b, &unk_19B3D5A30, 4 * a2);
    }
  }

  else if (a3 >= 1.0)
  {
    if (a2)
    {
      v20 = 0;
      v21 = vdupq_n_s64(a2 - 1);
      v22 = xmmword_19B0A5840;
      v23 = xmmword_19B0A5850;
      v48 = vdupq_n_s64(4uLL);
      v49 = vdupq_n_s64(0x401921FB54442D18uLL);
      v24 = (a2 + 3) & 0xFFFFFFFC;
      v25 = (__b + 8);
      __asm
      {
        FMOV            V5.2D, #-0.5
        FMOV            V6.2D, #0.5
      }

      v50 = v21;
      v46 = _Q5;
      v47 = vdupq_lane_s64(COERCE__INT64((a2 - 1)), 0);
      v45 = _Q6;
      do
      {
        v57 = v22;
        v32 = vorr_s8(vdup_n_s32(v20), 0x300000002);
        v56 = v23;
        v33 = vmovn_s64(vcgeq_u64(v21, v23));
        v55 = vuzp1_s16(v33, v32).u8[0];
        v34.i64[0] = v32.u32[0];
        v34.i64[1] = v32.u32[1];
        v35 = vcvtq_f64_u64(v34);
        v34.i64[0] = v20;
        v34.i64[1] = (v20 + 1);
        v58 = vdivq_f64(vmulq_f64(v35, v49), v47);
        __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v34), v49), v47);
        v53 = cos(__x.f64[1]);
        v36.f64[0] = cos(__x.f64[0]);
        v36.f64[1] = v53;
        __xa = v36;
        v54 = cos(v58.f64[1]);
        v37.f64[0] = cos(v58.f64[0]);
        v38 = vmlaq_f64(v45, v46, __xa);
        if (v55)
        {
          v39 = v38.f64[0];
          *(v25 - 2) = v39;
        }

        if (vuzp1_s16(v33, *&v37).i8[2])
        {
          v40 = v38.f64[1];
          *(v25 - 1) = v40;
        }

        v37.f64[1] = v54;
        v41 = vmlaq_f64(v45, v46, v37);
        v21 = v50;
        v42 = vmovn_s64(vcgeq_u64(v50, v57));
        if (vuzp1_s16(v42, v42).i32[1])
        {
          v43 = v41.f64[0];
          *v25 = v43;
          v44 = v41.f64[1];
          v25[1] = v44;
        }

        v20 += 4;
        v22 = vaddq_s64(v57, v48);
        v23 = vaddq_s64(v56, v48);
        v25 += 4;
      }

      while (v24 != v20);
    }
  }

  else
  {
    v5 = ((a3 * 0.5) * a2);
    if (a2)
    {
      memset_pattern16(__b, &unk_19B3D5A30, 4 * a2);
    }

    if (v5 >= 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = v5 - 1;
      v9 = &__b[4 * a2];
      v10 = (v5 - 1);
      v11 = a2 - v5;
      v12 = 4 * v5;
      v13 = &__b[4 * v11];
      while (1)
      {
        v14 = &__b[v7 + 4];
        v15 = &__b[v7] < __b || v14 > v9;
        if (v15 || &__b[v7] > v14)
        {
          break;
        }

        v17 = cos(v6 * 3.14159265 / v10) * -0.5 + 0.5;
        *&__b[v7] = v17;
        v18 = &v13[v7];
        if (&v13[v7] < __b || v18 + 1 > v9 || v18 > v18 + 1)
        {
          break;
        }

        v19 = cos(v8 * 3.14159265 / v10) * -0.5 + 0.5;
        *v18 = v19;
        v7 += 4;
        ++v8;
        ++v6;
        if (v12 == v7)
        {
          return;
        }
      }

      __break(0x5519u);
    }
  }
}

void FLAC__window_partial_tukey(char *a1, unsigned int a2, float a3, float a4, float a5)
{
  do
  {
    do
    {
      v7 = a3;
      v8 = a3 > 0.0;
      a3 = 0.05;
    }

    while (!v8);
    a3 = 0.95;
  }

  while (v7 >= 1.0);
  v9 = (a2 * a4);
  v10 = (a2 * a5);
  v11 = ((v7 * 0.5) * (v10 - v9));
  if (v9 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (a2 * a4);
  }

  if (v12 < 1)
  {
    v12 = 0;
  }

  else
  {
    bzero(a1, 4 * v12);
  }

  if (v11 + v9 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = (v11 + v9);
  }

  if (v12 < v13)
  {
    v14 = v13 - v12;
    v15 = 1;
    v16 = &a1[4 * v12];
    while (v16 >= a1 && v16 + 1 <= &a1[4 * a2] && v16 <= v16 + 1)
    {
      v17 = cos(v15 * 3.14159265 / v11) * -0.5 + 0.5;
      *v16++ = v17;
      ++v15;
      if (!--v14)
      {
        v12 = v13;
        goto LABEL_20;
      }
    }

    goto LABEL_45;
  }

LABEL_20:
  v18 = v10 - v11;
  if (v10 - v11 >= a2)
  {
    v18 = a2;
  }

  if (v12 < v18)
  {
    v19 = &a1[4 * v12];
    while (v19 >= a1 && v19 + 4 <= &a1[4 * a2] && v19 <= v19 + 4)
    {
      *v19 = 1065353216;
      v19 += 4;
      if (v18 <= ++v12)
      {
        v12 = v18;
        goto LABEL_29;
      }
    }

    goto LABEL_45;
  }

LABEL_29:
  if (v10 >= a2)
  {
    v10 = a2;
  }

  if (v12 < v10)
  {
    v20 = v11;
    v21 = &a1[4 * v12];
    while (v21 >= a1 && v21 + 1 <= &a1[4 * a2] && v21 <= v21 + 1)
    {
      v22 = cos(v11 * 3.14159265 / v20) * -0.5 + 0.5;
      *v21++ = v22;
      --v11;
      if (v10 <= ++v12)
      {
        v12 = v10;
        goto LABEL_38;
      }
    }

    goto LABEL_45;
  }

LABEL_38:
  if (v12 < a2)
  {
    for (i = &a1[4 * v12]; i >= a1 && i + 4 <= &a1[4 * a2] && i <= i + 4; i += 4)
    {
      *i = 0;
      if (++v12 >= a2)
      {
        return;
      }
    }

LABEL_45:
    __break(0x5519u);
  }
}

void FLAC__window_punchout_tukey(unint64_t a1, unsigned int a2, float a3, float a4, float a5)
{
  do
  {
    do
    {
      v8 = a3;
      v55 = a3 > 0.0;
      a3 = 0.05;
    }

    while (!v55);
    a3 = 0.95;
  }

  while (v8 >= 1.0);
  v9 = a2;
  v10 = (a2 * a4);
  v11 = v8 * 0.5;
  v12 = ((v8 * 0.5) * v10);
  if (v12 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v12;
  }

  v14 = v12;
  v66 = v12;
  if (v13 < 1)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v15 = 0;
    v16 = vdupq_n_s64(v13 - 1);
    v71 = vdupq_lane_s64(*&v14, 0);
    v17 = xmmword_19B0A5840;
    v18 = xmmword_19B0A5850;
    v70 = vdupq_n_s64(0x400921FB54442D18uLL);
    v19 = (a1 + 8);
    __asm
    {
      FMOV            V5.2D, #-0.5
      FMOV            V6.2D, #0.5
    }

    v72 = v16;
    v68 = _Q5;
    v69 = vdupq_n_s64(4uLL);
    v67 = _Q6;
    do
    {
      v79 = v17;
      v78 = v18;
      v26 = vcgeq_u64(v16, v18);
      v27 = vmovn_s64(v26);
      v77 = vuzp1_s16(v27, *v26.i8).u8[0];
      v28 = vaddq_s32(vdupq_n_s32(v15), xmmword_19B0B1640);
      v29.i64[0] = v28.u32[2];
      v29.i64[1] = v28.u32[3];
      v30 = vcvtq_f64_u64(v29);
      v29.i64[0] = v28.u32[0];
      v29.i64[1] = v28.u32[1];
      v80 = vdivq_f64(vmulq_f64(v30, v70), v71);
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v29), v70), v71);
      v75 = cos(__x.f64[1]);
      v31.f64[0] = cos(__x.f64[0]);
      v31.f64[1] = v75;
      __xa = v31;
      v76 = cos(v80.f64[1]);
      v32.f64[0] = cos(v80.f64[0]);
      v33 = vmlaq_f64(v67, v68, __xa);
      if (v77)
      {
        v34 = v33.f64[0];
        *(v19 - 2) = v34;
      }

      if (vuzp1_s16(v27, *&v32).i8[2])
      {
        v35 = v33.f64[1];
        *(v19 - 1) = v35;
      }

      v32.f64[1] = v76;
      v36 = vmlaq_f64(v67, v68, v32);
      v16 = v72;
      v37 = vmovn_s64(vcgeq_u64(v72, v79));
      if (vuzp1_s16(v37, v37).i32[1])
      {
        v38 = v36.f64[0];
        *v19 = v38;
        v39 = v36.f64[1];
        v19[1] = v39;
      }

      v15 += 4;
      v17 = vaddq_s64(v79, v69);
      v18 = vaddq_s64(v78, v69);
      v19 += 4;
    }

    while (((v13 + 3) & 0xFFFFFFFC) != v15);
    v14 = v12;
  }

  LODWORD(v40) = v10 - v12;
  if (v10 - v12 >= a2)
  {
    v40 = a2;
  }

  else
  {
    v40 = v40;
  }

  if (v13 < v40)
  {
    v41 = v40 - v13;
    v42 = (a1 + 4 * v13);
    while (v42 >= a1 && (v42 + 1) <= a1 + 4 * a2 && v42 <= v42 + 1)
    {
      *v42++ = 1065353216;
      if (!--v41)
      {
        LODWORD(v13) = v40;
        goto LABEL_28;
      }
    }

    goto LABEL_79;
  }

LABEL_28:
  if (v10 >= a2)
  {
    v10 = a2;
  }

  if (v13 < v10)
  {
    v43 = (a1 + 4 * v13);
    while (v43 >= a1 && (v43 + 1) <= a1 + 4 * a2 && v43 <= v43 + 1)
    {
      v44 = cos(v12 * 3.14159265 / v14);
      v14 = v66;
      *&v44 = v44 * -0.5 + 0.5;
      *v43++ = LODWORD(v44);
      --v12;
      LODWORD(v13) = v13 + 1;
      if (v10 <= v13)
      {
        LODWORD(v13) = v10;
        goto LABEL_37;
      }
    }

    goto LABEL_79;
  }

LABEL_37:
  v45 = (v9 * a5);
  if (v45 >= a2)
  {
    v46 = a2;
  }

  else
  {
    v46 = (v9 * a5);
  }

  if (v13 < v46)
  {
    v47 = (a1 + 4 * v13);
    while (v47 >= a1 && (v47 + 1) <= a1 + 4 * a2 && v47 <= v47 + 1)
    {
      *v47++ = 0;
      LODWORD(v13) = v13 + 1;
      if (v46 <= v13)
      {
        LODWORD(v13) = v46;
        goto LABEL_47;
      }
    }

    goto LABEL_79;
  }

LABEL_47:
  v48 = (v11 * (a2 - v45));
  v49 = v48 + v45;
  if (v49 >= a2)
  {
    v50 = a2;
  }

  else
  {
    v50 = v49;
  }

  if (v13 < v50)
  {
    v51 = 4 * v13;
    if (a2 >= v49)
    {
      v52 = v49;
    }

    else
    {
      v52 = a2;
    }

    v53 = 1;
    v13 = v13;
    do
    {
      v54 = a1 + v51 + 4;
      v55 = a1 + v51 < a1 || v54 > a1 + 4 * a2;
      if (v55 || a1 + v51 > v54)
      {
        goto LABEL_79;
      }

      v57 = cos(v53 * 3.14159265 / v48) * -0.5 + 0.5;
      *(a1 + 4 * v13++) = v57;
      ++v53;
      v51 += 4;
    }

    while (v52 != v13);
  }

  v58 = a2 - v48;
  if ((a2 - v48) >= a2)
  {
    v58 = a2;
  }

  if (v13 < v58)
  {
    v59 = (a1 + 4 * v13);
    while (v59 >= a1 && (v59 + 1) <= a1 + 4 * a2 && v59 <= v59 + 1)
    {
      *v59++ = 1065353216;
      LODWORD(v13) = v13 + 1;
      if (v58 <= v13)
      {
        LODWORD(v13) = v58;
        goto LABEL_72;
      }
    }

    goto LABEL_79;
  }

LABEL_72:
  if (v13 < a2)
  {
    v60 = a2;
    v61 = a1 + 4 * a2;
    v62 = v48;
    v63 = v60 - v13;
    for (i = (a1 + 4 * v13); i >= a1 && (i + 1) <= v61 && i <= i + 1; ++i)
    {
      v65 = cos(v48 * 3.14159265 / v62) * -0.5 + 0.5;
      *i = v65;
      --v48;
      if (!--v63)
      {
        return;
      }
    }

LABEL_79:
    __break(0x5519u);
  }
}

uint64_t FLAC__window_welch(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v2 = (a2 + 3) & 0xFFFFFFFC;
    v3 = vdupq_n_s64(a2 - 1);
    v4 = vdupq_lane_s64(COERCE__INT64(vcvtd_n_f64_u32(a2 - 1, 1uLL)), 0);
    v5 = xmmword_19B0A5840;
    v6 = xmmword_19B0A5850;
    v7 = xmmword_19B0A5860;
    v8 = (result + 8);
    __asm { FMOV            V5.2D, #1.0 }

    v14 = vdupq_n_s64(4uLL);
    v15.i64[0] = 0x400000004;
    v15.i64[1] = 0x400000004;
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v3, v6));
      v17.i64[0] = v7.u32[0];
      v17.i64[1] = v7.u32[1];
      v18 = vdivq_f64(vsubq_f64(vcvtq_f64_u64(v17), v4), v4);
      v19 = vmlsq_f64(_Q5, v18, v18);
      if (vuzp1_s16(v16, *v3.i8).u8[0])
      {
        v20 = v19.f64[0];
        *(v8 - 2) = v20;
      }

      if (vuzp1_s16(v16, *&v3).i8[2])
      {
        v21 = v19.f64[1];
        *(v8 - 1) = v21;
      }

      v22.i64[0] = v7.u32[2];
      v22.i64[1] = v7.u32[3];
      v23 = vdivq_f64(vsubq_f64(vcvtq_f64_u64(v22), v4), v4);
      v24 = vmlsq_f64(_Q5, v23, v23);
      if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v5))).i32[1])
      {
        v25 = v24.f64[0];
        *v8 = v25;
        v26 = v24.f64[1];
        v8[1] = v26;
      }

      v5 = vaddq_s64(v5, v14);
      v6 = vaddq_s64(v6, v14);
      v7 = vaddq_s32(v7, v15);
      v8 += 4;
      v2 -= 4;
    }

    while (v2);
  }

  return result;
}

unint64_t FLAC__lpc_compute_residual_from_qlp_coefficients_wide(unint64_t result, int a2, int *a3, unsigned int a4, char a5, _DWORD *a6)
{
  v499 = a6;
  v8 = a4 - 13;
  if (a4 >= 0xD)
  {
    if (a2 >= 1)
    {
      v39 = 0;
      v40 = &a3[a4];
      v41 = (a3 + 30);
      v44 = a3 + 30 <= a3 + 31 && (a3 + 31) <= v40 && v41 >= a3;
      v475 = v44;
      v45 = (a3 + 29);
      v48 = (a3 + 29) <= v41 && v41 <= v40 && v45 >= a3;
      v476 = v48;
      v49 = (a3 + 28);
      v52 = (a3 + 28) <= v45 && v45 <= v40 && v49 >= a3;
      v477 = v52;
      v53 = (a3 + 27);
      v56 = (a3 + 27) <= v49 && v49 <= v40 && v53 >= a3;
      v478 = v56;
      v57 = (a3 + 26);
      v60 = (a3 + 26) <= v53 && v53 <= v40 && v57 >= a3;
      v479 = v60;
      v61 = (a3 + 25);
      v64 = (a3 + 25) <= v57 && v57 <= v40 && v61 >= a3;
      v480 = v64;
      v65 = (a3 + 24);
      v68 = (a3 + 24) <= v61 && v61 <= v40 && v65 >= a3;
      v481 = v68;
      v69 = (a3 + 23);
      v72 = (a3 + 23) <= v65 && v65 <= v40 && v69 >= a3;
      v482 = v72;
      v73 = (a3 + 22);
      v76 = (a3 + 22) <= v69 && v69 <= v40 && v73 >= a3;
      v483 = v76;
      v77 = (a3 + 21);
      v80 = (a3 + 21) <= v73 && v73 <= v40 && v77 >= a3;
      v484 = v80;
      v81 = (a3 + 20);
      v84 = (a3 + 20) <= v77 && v77 <= v40 && v81 >= a3;
      v485 = v84;
      v85 = (a3 + 19);
      v88 = (a3 + 19) <= v81 && v81 <= v40 && v85 >= a3;
      v486 = v88;
      v89 = (a3 + 18);
      v92 = (a3 + 18) <= v85 && v85 <= v40 && v89 >= a3;
      v487 = v92;
      v93 = (a3 + 17);
      v96 = (a3 + 17) <= v89 && v89 <= v40 && v93 >= a3;
      v488 = v96;
      v97 = (a3 + 16);
      v100 = (a3 + 16) <= v93 && v93 <= v40 && v97 >= a3;
      v490 = v100;
      v101 = a3 + 15;
      v104 = (a3 + 15) <= v97 && v97 <= v40 && v101 >= a3;
      v492 = v104;
      v105 = a3 + 14;
      v108 = a3 + 14 <= v101 && v101 <= v40 && v105 >= a3;
      v494 = v108;
      v109 = a3 + 13 > v105 || v105 > v40;
      v111 = 4 * a2;
      v112 = !v109;
      v497 = v112;
      while (2)
      {
        v113 = 0;
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        switch(v8)
        {
          case 0u:
            v131 = 0;
            v132 = *result;
            v133 = *(result + 8);
            v134 = *(result + 16);
            goto LABEL_406;
          case 1u:
            goto LABEL_396;
          case 2u:
            goto LABEL_386;
          case 3u:
            goto LABEL_376;
          case 4u:
            goto LABEL_366;
          case 5u:
            goto LABEL_356;
          case 6u:
            goto LABEL_346;
          case 7u:
            goto LABEL_336;
          case 8u:
            goto LABEL_326;
          case 9u:
            goto LABEL_316;
          case 0xAu:
            goto LABEL_306;
          case 0xBu:
            goto LABEL_296;
          case 0xCu:
            goto LABEL_286;
          case 0xDu:
            goto LABEL_276;
          case 0xEu:
            goto LABEL_266;
          case 0xFu:
            goto LABEL_256;
          case 0x10u:
            goto LABEL_246;
          case 0x11u:
            goto LABEL_236;
          case 0x12u:
            goto LABEL_226;
          case 0x13u:
            v136 = *result + v39;
            v137 = (v136 - 128);
            v138 = v136 - 124;
            if (v138 > *(result + 8) || v137 > v138 || v137 < *(result + 16))
            {
              goto LABEL_797;
            }

            v113 = *v137 * a3[31];
LABEL_226:
            if (!v475)
            {
              goto LABEL_797;
            }

            v141 = *result + v39;
            v142 = (v141 - 124);
            v143 = v141 - 120;
            v144 = v143 > *(result + 8) || v142 > v143;
            if (v144 || v142 < *(result + 16))
            {
              goto LABEL_797;
            }

            v114 = v113 + *v142 * a3[30];
LABEL_236:
            if (!v476)
            {
              goto LABEL_797;
            }

            v146 = *result + v39;
            v147 = (v146 - 120);
            v148 = v146 - 116;
            v149 = v148 > *(result + 8) || v147 > v148;
            if (v149 || v147 < *(result + 16))
            {
              goto LABEL_797;
            }

            v115 = v114 + *v147 * a3[29];
LABEL_246:
            if (!v477)
            {
              goto LABEL_797;
            }

            v151 = *result + v39;
            v152 = (v151 - 116);
            v153 = v151 - 112;
            v154 = v153 > *(result + 8) || v152 > v153;
            if (v154 || v152 < *(result + 16))
            {
              goto LABEL_797;
            }

            v116 = v115 + *v152 * a3[28];
LABEL_256:
            if (!v478)
            {
              goto LABEL_797;
            }

            v156 = *result + v39;
            v157 = (v156 - 112);
            v158 = v156 - 108;
            v159 = v158 > *(result + 8) || v157 > v158;
            if (v159 || v157 < *(result + 16))
            {
              goto LABEL_797;
            }

            v117 = v116 + *v157 * a3[27];
LABEL_266:
            if (!v479)
            {
              goto LABEL_797;
            }

            v161 = *result + v39;
            v162 = (v161 - 108);
            v163 = v161 - 104;
            v164 = v163 > *(result + 8) || v162 > v163;
            if (v164 || v162 < *(result + 16))
            {
              goto LABEL_797;
            }

            v118 = v117 + *v162 * a3[26];
LABEL_276:
            if (!v480)
            {
              goto LABEL_797;
            }

            v166 = *result + v39;
            v167 = (v166 - 104);
            v168 = v166 - 100;
            v169 = v168 > *(result + 8) || v167 > v168;
            if (v169 || v167 < *(result + 16))
            {
              goto LABEL_797;
            }

            v119 = v118 + *v167 * a3[25];
LABEL_286:
            if (!v481)
            {
              goto LABEL_797;
            }

            v171 = *result + v39;
            v172 = (v171 - 100);
            v173 = v171 - 96;
            v174 = v173 > *(result + 8) || v172 > v173;
            if (v174 || v172 < *(result + 16))
            {
              goto LABEL_797;
            }

            v120 = v119 + *v172 * a3[24];
LABEL_296:
            if (!v482)
            {
              goto LABEL_797;
            }

            v176 = *result + v39;
            v177 = (v176 - 96);
            v178 = v176 - 92;
            v179 = v178 > *(result + 8) || v177 > v178;
            if (v179 || v177 < *(result + 16))
            {
              goto LABEL_797;
            }

            v121 = v120 + *v177 * a3[23];
LABEL_306:
            if (!v483)
            {
              goto LABEL_797;
            }

            v181 = *result + v39;
            v182 = (v181 - 92);
            v183 = v181 - 88;
            v184 = v183 > *(result + 8) || v182 > v183;
            if (v184 || v182 < *(result + 16))
            {
              goto LABEL_797;
            }

            v122 = v121 + *v182 * a3[22];
LABEL_316:
            if (!v484)
            {
              goto LABEL_797;
            }

            v186 = *result + v39;
            v187 = (v186 - 88);
            v188 = v186 - 84;
            v189 = v188 > *(result + 8) || v187 > v188;
            if (v189 || v187 < *(result + 16))
            {
              goto LABEL_797;
            }

            v123 = v122 + *v187 * a3[21];
LABEL_326:
            if (!v485)
            {
              goto LABEL_797;
            }

            v191 = *result + v39;
            v192 = (v191 - 84);
            v193 = v191 - 80;
            v194 = v193 > *(result + 8) || v192 > v193;
            if (v194 || v192 < *(result + 16))
            {
              goto LABEL_797;
            }

            v124 = v123 + *v192 * a3[20];
LABEL_336:
            if (!v486)
            {
              goto LABEL_797;
            }

            v196 = *result + v39;
            v197 = (v196 - 80);
            v198 = v196 - 76;
            v199 = v198 > *(result + 8) || v197 > v198;
            if (v199 || v197 < *(result + 16))
            {
              goto LABEL_797;
            }

            v125 = v124 + *v197 * a3[19];
LABEL_346:
            if (!v487)
            {
              goto LABEL_797;
            }

            v201 = *result + v39;
            v202 = (v201 - 76);
            v203 = v201 - 72;
            v204 = v203 > *(result + 8) || v202 > v203;
            if (v204 || v202 < *(result + 16))
            {
              goto LABEL_797;
            }

            v126 = v125 + *v202 * a3[18];
LABEL_356:
            if (!v488)
            {
              goto LABEL_797;
            }

            v206 = *result + v39;
            v207 = (v206 - 72);
            v208 = v206 - 68;
            v209 = v208 > *(result + 8) || v207 > v208;
            if (v209 || v207 < *(result + 16))
            {
              goto LABEL_797;
            }

            v127 = v126 + *v207 * a3[17];
LABEL_366:
            if (!v490)
            {
              goto LABEL_797;
            }

            v211 = *result + v39;
            v212 = (v211 - 68);
            v213 = v211 - 64;
            v214 = v213 > *(result + 8) || v212 > v213;
            if (v214 || v212 < *(result + 16))
            {
              goto LABEL_797;
            }

            v128 = v127 + *v212 * a3[16];
LABEL_376:
            if (!v492)
            {
              goto LABEL_797;
            }

            v216 = *result + v39;
            v217 = (v216 - 64);
            v218 = v216 - 60;
            v219 = v218 > *(result + 8) || v217 > v218;
            if (v219 || v217 < *(result + 16))
            {
              goto LABEL_797;
            }

            v129 = v128 + *v217 * *v101;
LABEL_386:
            if (!v494)
            {
              goto LABEL_797;
            }

            v221 = *result + v39;
            v222 = (v221 - 60);
            v223 = v221 - 56;
            v224 = v223 > *(result + 8) || v222 > v223;
            if (v224 || v222 < *(result + 16))
            {
              goto LABEL_797;
            }

            v130 = v129 + *v222 * *v105;
LABEL_396:
            if (!v497)
            {
              goto LABEL_797;
            }

            v132 = *result;
            v133 = *(result + 8);
            v134 = *(result + 16);
            v226 = *result + v39;
            v227 = (v226 - 56);
            v228 = v226 - 52;
            v229 = v228 > v133 || v227 > v228;
            if (v229 || v227 < v134)
            {
              goto LABEL_797;
            }

            v131 = v130 + *v227 * a3[13];
LABEL_406:
            v231 = &v132[v39 / 4];
            v232 = &v132[v39 / 4 - 13];
            v233 = &v132[v39 / 4 - 12];
            v234 = v233 > v133 || v232 > v233;
            if (v234 || v232 < v134)
            {
              goto LABEL_797;
            }

            v236 = (v231 - 44);
            if (v231 - 44 > v133 || v233 > v236)
            {
              goto LABEL_797;
            }

            v238 = &v132[v39 / 4];
            v239 = &v132[v39 / 4 - 10];
            if (v239 > v133 || v236 > v239)
            {
              goto LABEL_797;
            }

            v241 = v238 - 9;
            if ((v238 - 9) > v133)
            {
              goto LABEL_797;
            }

            if (v239 > v241)
            {
              goto LABEL_797;
            }

            v242 = &v132[v39 / 4 - 8];
            if (v242 > v133)
            {
              goto LABEL_797;
            }

            if (v241 > v242)
            {
              goto LABEL_797;
            }

            v243 = &v132[v39 / 4 - 7];
            if (v243 > v133)
            {
              goto LABEL_797;
            }

            if (v242 > v243)
            {
              goto LABEL_797;
            }

            v244 = &v132[v39 / 4 - 6];
            if (v244 > v133)
            {
              goto LABEL_797;
            }

            if (v243 > v244)
            {
              goto LABEL_797;
            }

            v245 = &v132[v39 / 4 - 5];
            if (v245 > v133)
            {
              goto LABEL_797;
            }

            if (v244 > v245)
            {
              goto LABEL_797;
            }

            v246 = &v132[v39 / 4 - 4];
            if (v246 > v133)
            {
              goto LABEL_797;
            }

            if (v245 > v246)
            {
              goto LABEL_797;
            }

            v247 = &v132[v39 / 4 - 3];
            if (v247 > v133)
            {
              goto LABEL_797;
            }

            if (v246 > v247)
            {
              goto LABEL_797;
            }

            v248 = &v132[v39 / 4 - 2];
            if (v248 > v133)
            {
              goto LABEL_797;
            }

            if (v247 > v248)
            {
              goto LABEL_797;
            }

            v249 = &v132[v39 / 4 - 1];
            if (v249 > v133 || v248 > v249 || v231 > v133 || v249 > v231)
            {
              goto LABEL_797;
            }

            v135 = v131 + *v232 * a3[12] + *v233 * a3[11] + *v236 * a3[10] + *v239 * a3[9] + *v241 * a3[8] + *v242 * a3[7] + *v243 * a3[6] + *v244 * a3[5] + *v245 * a3[4] + *v246 * a3[3] + *v247 * a3[2] + *v248 * a3[1] + *v249 * *a3;
LABEL_443:
            v250 = &v132[v39 / 4];
            v251 = &v132[v39 / 4 + 1];
            if (v251 > v133 || v250 > v251 || v250 < v134)
            {
              goto LABEL_797;
            }

            v499[v39 / 4] = *v250 - (v135 >> a5);
            v39 += 4;
            if (v111 == v39)
            {
              return result;
            }

            continue;
          default:
            v135 = 0;
            v132 = *result;
            v133 = *(result + 8);
            v134 = *(result + 16);
            goto LABEL_443;
        }
      }
    }
  }

  else if (a4 < 9)
  {
    if (a4 < 5)
    {
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          if (a2 >= 1)
          {
            v398 = a3 + 1;
            if (a3 + 1 <= a3 + 2 && v398 >= a3)
            {
              v399 = *result;
              v400 = *(result + 8);
              v401 = *(result + 16);
              v402 = a2;
              while (1)
              {
                v403 = v399 - 2;
                v404 = v399 - 1;
                v405 = (v399 - 1) > v400 || v403 > v404;
                v406 = !v405 && v403 >= v401;
                if (!v406 || v399 > v400 || v404 > v399 || (v399 + 1) > v400 || v399 > v399 + 1)
                {
                  break;
                }

                v407 = *(v399 - 1);
                v408 = *(v399 - 2) * *v398;
                v409 = *v399++;
                *v499++ = v409 - ((v408 + v407 * *a3) >> a5);
                if (!--v402)
                {
                  return result;
                }
              }
            }

            goto LABEL_797;
          }
        }

        else if (a2 >= 1)
        {
          v467 = *result;
          v468 = *(result + 8);
          v469 = *(result + 16);
          v471 = a3 + 1 >= a3 && a3 + 1 <= &a3[a4];
          v472 = a2;
          while (1)
          {
            v473 = (v467 + 1) > v468 || v467 > v467 + 1;
            v474 = !v473 && v467 >= v469;
            if (!v474 || !v471 || v467 < 4 || (v467 - 1) < v469)
            {
              break;
            }

            *v499++ = *v467 - ((*(v467 - 1) * *a3) >> a5);
            ++v467;
            if (!--v472)
            {
              return result;
            }
          }

          goto LABEL_797;
        }
      }

      else if (a4 == 4)
      {
        if (a2 >= 1)
        {
          v306 = a3 + 4;
          v307 = a3 + 3;
          if (a3 + 3 <= a3 + 4 && v307 >= a3)
          {
            v308 = 0;
            v309 = a3 + 2;
            v310 = a3 + 1;
            v312 = *result;
            v313 = *(result + 8);
            v314 = *(result + 16);
            v315 = 4 * a2;
            while (1)
            {
              result = &v312[v308 / 4];
              v316 = &v312[v308 / 4 - 4];
              v317 = &v312[v308 / 4 - 3];
              v318 = v317 > v313 || v316 > v317;
              if (v318 || v316 < v314)
              {
                break;
              }

              v320 = (result - 8);
              if (result - 8 > v313)
              {
                break;
              }

              if (v317 > v320)
              {
                break;
              }

              if (v309 > v306)
              {
                break;
              }

              v321 = &v312[v308 / 4 - 1];
              if (v321 > v313)
              {
                break;
              }

              if (v320 > v321)
              {
                break;
              }

              if (v310 > v306)
              {
                break;
              }

              if (result > v313)
              {
                break;
              }

              if (v321 > result)
              {
                break;
              }

              v322 = &v312[v308 / 4 + 1];
              if (v322 > v313 || result > v322)
              {
                break;
              }

              result = *result - ((*v316 * *v307 + *v317 * *v309 + *v320 * *v310 + *v321 * *a3) >> a5);
              v499[v308 / 4] = result;
              v308 += 4;
              if (v315 == v308)
              {
                return result;
              }
            }
          }

          goto LABEL_797;
        }
      }

      else if (a2 >= 1)
      {
        v433 = a3 + 2;
        if (a3 + 2 <= a3 + 3 && v433 >= a3)
        {
          v434 = 0;
          v435 = a3 + 1;
          v437 = *result;
          v438 = *(result + 8);
          v439 = *(result + 16);
          v440 = 4 * a2;
          while (1)
          {
            v441 = &v437[v434 / 4];
            v442 = &v437[v434 / 4 - 3];
            result = &v437[v434 / 4 - 2];
            v443 = result > v438 || v442 > result;
            if (v443 || v442 < v439)
            {
              break;
            }

            v445 = v441 - 1;
            if ((v441 - 1) > v438)
            {
              break;
            }

            if (result > v445)
            {
              break;
            }

            if (v435 > a3 + 3)
            {
              break;
            }

            if (v441 > v438)
            {
              break;
            }

            if (v445 > v441)
            {
              break;
            }

            v446 = &v437[v434 / 4 + 1];
            if (v446 > v438 || v441 > v446)
            {
              break;
            }

            v447 = *v441 - ((*v442 * *v433 + *result * *v435 + *v445 * *a3) >> a5);
            result = a6;
            a6[v434 / 4] = v447;
            v434 += 4;
            if (v440 == v434)
            {
              return result;
            }
          }
        }

        goto LABEL_797;
      }
    }

    else if (a4 < 7)
    {
      if (a4 == 6)
      {
        if (a2 >= 1)
        {
          v351 = a3 + 6;
          v352 = a3 + 5;
          if (a3 + 5 <= a3 + 6 && v352 >= a3)
          {
            v353 = 0;
            v354 = a3 + 4;
            v355 = a3 + 3;
            v356 = a3 + 2;
            v357 = a3 + 1;
            v359 = *result;
            v358 = *(result + 8);
            result = *(result + 16);
            v360 = 4 * a2;
            while (1)
            {
              v362 = &v359[v353 / 4];
              v363 = &v359[v353 / 4 - 6];
              v364 = &v359[v353 / 4 - 5];
              v365 = v364 > v358 || v363 > v364;
              if (v365 || v363 < result)
              {
                break;
              }

              v367 = v362 - 4;
              if ((v362 - 4) > v358)
              {
                break;
              }

              if (v364 > v367)
              {
                break;
              }

              if (v354 > v351)
              {
                break;
              }

              v368 = &v359[v353 / 4 - 3];
              if (v368 > v358)
              {
                break;
              }

              if (v367 > v368)
              {
                break;
              }

              if (v355 > v351)
              {
                break;
              }

              v369 = &v359[v353 / 4 - 2];
              if (v369 > v358)
              {
                break;
              }

              if (v368 > v369)
              {
                break;
              }

              if (v356 > v351)
              {
                break;
              }

              v370 = &v359[v353 / 4 - 1];
              if (v370 > v358)
              {
                break;
              }

              if (v369 > v370)
              {
                break;
              }

              if (v357 > v351)
              {
                break;
              }

              if (v362 > v358)
              {
                break;
              }

              if (v370 > v362)
              {
                break;
              }

              v371 = &v359[v353 / 4 + 1];
              if (v371 > v358 || v362 > v371)
              {
                break;
              }

              v499[v353 / 4] = *v362 - ((*v363 * *v352 + *v364 * *v354 + *v367 * *v355 + *v368 * *v356 + *v369 * *v357 + *v370 * *a3) >> a5);
              v353 += 4;
              if (v360 == v353)
              {
                return result;
              }
            }
          }

          goto LABEL_797;
        }
      }

      else if (a2 >= 1)
      {
        v448 = a3 + 5;
        v449 = a3 + 4;
        if (a3 + 4 <= a3 + 5 && v449 >= a3)
        {
          v450 = 0;
          v451 = a3 + 3;
          v452 = a3 + 2;
          v453 = a3 + 1;
          v455 = *result;
          v456 = *(result + 8);
          result = *(result + 16);
          v457 = 4 * a2;
          while (1)
          {
            v458 = &v455[v450 / 4];
            v459 = &v455[v450 / 4 - 5];
            v460 = &v455[v450 / 4 - 4];
            v461 = v460 > v456 || v459 > v460;
            if (v461 || v459 < result)
            {
              break;
            }

            v463 = v458 - 3;
            if ((v458 - 3) > v456)
            {
              break;
            }

            if (v460 > v463)
            {
              break;
            }

            if (v451 > v448)
            {
              break;
            }

            v464 = &v455[v450 / 4 - 2];
            if (v464 > v456)
            {
              break;
            }

            if (v463 > v464)
            {
              break;
            }

            if (v452 > v448)
            {
              break;
            }

            v465 = &v455[v450 / 4 - 1];
            if (v465 > v456)
            {
              break;
            }

            if (v464 > v465)
            {
              break;
            }

            if (v453 > v448)
            {
              break;
            }

            if (v458 > v456)
            {
              break;
            }

            if (v465 > v458)
            {
              break;
            }

            v466 = &v455[v450 / 4 + 1];
            if (v466 > v456 || v458 > v466)
            {
              break;
            }

            v499[v450 / 4] = *v458 - ((*v459 * *v449 + *v460 * *v451 + *v463 * *v452 + *v464 * *v453 + *v465 * *a3) >> a5);
            v450 += 4;
            if (v457 == v450)
            {
              return result;
            }
          }
        }

        goto LABEL_797;
      }
    }

    else if (a4 == 8)
    {
      if (a2 >= 1)
      {
        v254 = a3 + 8;
        v255 = a3 + 7;
        if (a3 + 7 <= a3 + 8 && v255 >= a3)
        {
          v256 = 0;
          v257 = a3 + 6;
          v258 = a3 + 5;
          v259 = a3 + 4;
          v260 = a3 + 3;
          v261 = a3 + 2;
          v262 = a3 + 1;
          v263 = *result;
          v264 = *(result + 8);
          result = *(result + 16);
          v265 = 4 * a2;
          while (1)
          {
            v266 = &v263[v256 / 4];
            v267 = &v263[v256 / 4 - 8];
            v268 = &v263[v256 / 4 - 7];
            v269 = v268 > v264 || v267 > v268;
            if (v269 || v267 < result)
            {
              break;
            }

            v271 = v266 - 6;
            if ((v266 - 6) > v264)
            {
              break;
            }

            if (v268 > v271)
            {
              break;
            }

            if (v257 > v254)
            {
              break;
            }

            v272 = &v263[v256 / 4 - 5];
            if (v272 > v264)
            {
              break;
            }

            if (v271 > v272)
            {
              break;
            }

            if (v258 > v254)
            {
              break;
            }

            v273 = &v263[v256 / 4 - 4];
            if (v273 > v264)
            {
              break;
            }

            if (v272 > v273)
            {
              break;
            }

            if (v259 > v254)
            {
              break;
            }

            v274 = &v263[v256 / 4 - 3];
            if (v274 > v264)
            {
              break;
            }

            if (v273 > v274)
            {
              break;
            }

            if (v260 > v254)
            {
              break;
            }

            v275 = &v263[v256 / 4 - 2];
            if (v275 > v264)
            {
              break;
            }

            if (v274 > v275)
            {
              break;
            }

            if (v261 > v254)
            {
              break;
            }

            v276 = &v263[v256 / 4 - 1];
            if (v276 > v264)
            {
              break;
            }

            if (v275 > v276)
            {
              break;
            }

            if (v262 > v254)
            {
              break;
            }

            if (v266 > v264)
            {
              break;
            }

            if (v276 > v266)
            {
              break;
            }

            v277 = &v263[v256 / 4 + 1];
            if (v277 > v264 || v266 > v277)
            {
              break;
            }

            v499[v256 / 4] = *v266 - ((*v267 * *v255 + *v268 * *v257 + *v271 * *v258 + *v272 * *v259 + *v273 * *v260 + *v274 * *v261 + *v275 * *v262 + *v276 * *a3) >> a5);
            v256 += 4;
            if (v265 == v256)
            {
              return result;
            }
          }
        }

        goto LABEL_797;
      }
    }

    else if (a2 >= 1)
    {
      v410 = a3 + 7;
      v411 = a3 + 6;
      if (a3 + 6 <= a3 + 7 && v411 >= a3)
      {
        v412 = 0;
        v413 = a3 + 5;
        v414 = a3 + 4;
        v415 = a3 + 3;
        v416 = a3 + 2;
        v417 = a3 + 1;
        v418 = *result;
        v419 = *(result + 8);
        result = *(result + 16);
        v420 = 4 * a2;
        while (1)
        {
          v422 = &v418[v412 / 4];
          v423 = &v418[v412 / 4 - 7];
          v424 = &v418[v412 / 4 - 6];
          v425 = v424 > v419 || v423 > v424;
          if (v425 || v423 < result)
          {
            break;
          }

          v427 = v422 - 5;
          if ((v422 - 5) > v419)
          {
            break;
          }

          if (v424 > v427)
          {
            break;
          }

          if (v413 > v410)
          {
            break;
          }

          v428 = &v418[v412 / 4 - 4];
          if (v428 > v419)
          {
            break;
          }

          if (v427 > v428)
          {
            break;
          }

          if (v414 > v410)
          {
            break;
          }

          v429 = &v418[v412 / 4 - 3];
          if (v429 > v419)
          {
            break;
          }

          if (v428 > v429)
          {
            break;
          }

          if (v415 > v410)
          {
            break;
          }

          v430 = &v418[v412 / 4 - 2];
          if (v430 > v419)
          {
            break;
          }

          if (v429 > v430)
          {
            break;
          }

          if (v416 > v410)
          {
            break;
          }

          v431 = &v418[v412 / 4 - 1];
          if (v431 > v419)
          {
            break;
          }

          if (v430 > v431)
          {
            break;
          }

          if (v417 > v410)
          {
            break;
          }

          if (v422 > v419)
          {
            break;
          }

          if (v431 > v422)
          {
            break;
          }

          v432 = &v418[v412 / 4 + 1];
          if (v432 > v419 || v422 > v432)
          {
            break;
          }

          v499[v412 / 4] = *v422 - ((*v423 * *v411 + *v424 * *v413 + *v427 * *v414 + *v428 * *v415 + *v429 * *v416 + *v430 * *v417 + *v431 * *a3) >> a5);
          v412 += 4;
          if (v420 == v412)
          {
            return result;
          }
        }
      }

      goto LABEL_797;
    }
  }

  else if (a4 < 0xB)
  {
    if (a4 == 10)
    {
      if (a2 >= 1)
      {
        v278 = a3 + 10;
        v279 = a3 + 9;
        if (a3 + 9 <= a3 + 10 && v279 >= a3)
        {
          v280 = 0;
          v281 = a3 + 8;
          v282 = a3 + 7;
          v283 = a3 + 6;
          v284 = a3 + 5;
          v285 = a3 + 4;
          v286 = a3 + 3;
          v287 = a3 + 2;
          v288 = *result;
          v289 = *(result + 8);
          result = *(result + 16);
          v290 = a3 + 1;
          v291 = 4 * a2;
          while (1)
          {
            v292 = &v288[v280 / 4];
            v293 = &v288[v280 / 4 - 10];
            v294 = &v288[v280 / 4 - 9];
            v295 = v294 > v289 || v293 > v294;
            if (v295 || v293 < result)
            {
              break;
            }

            v297 = v292 - 8;
            if ((v292 - 8) > v289)
            {
              break;
            }

            if (v294 > v297)
            {
              break;
            }

            if (v281 > v278)
            {
              break;
            }

            v298 = &v288[v280 / 4 - 7];
            if (v298 > v289)
            {
              break;
            }

            if (v297 > v298)
            {
              break;
            }

            if (v282 > v278)
            {
              break;
            }

            v299 = &v288[v280 / 4 - 6];
            if (v299 > v289)
            {
              break;
            }

            if (v298 > v299)
            {
              break;
            }

            if (v283 > v278)
            {
              break;
            }

            v300 = &v288[v280 / 4 - 5];
            if (v300 > v289)
            {
              break;
            }

            if (v299 > v300)
            {
              break;
            }

            if (v284 > v278)
            {
              break;
            }

            v301 = &v288[v280 / 4 - 4];
            if (v301 > v289)
            {
              break;
            }

            if (v300 > v301)
            {
              break;
            }

            if (v285 > v278)
            {
              break;
            }

            v302 = &v288[v280 / 4 - 3];
            if (v302 > v289)
            {
              break;
            }

            if (v301 > v302)
            {
              break;
            }

            if (v286 > v278)
            {
              break;
            }

            v303 = &v288[v280 / 4 - 2];
            if (v303 > v289)
            {
              break;
            }

            if (v302 > v303)
            {
              break;
            }

            if (v287 > v278)
            {
              break;
            }

            v304 = &v288[v280 / 4 - 1];
            if (v304 > v289)
            {
              break;
            }

            if (v303 > v304)
            {
              break;
            }

            if (v290 > v278)
            {
              break;
            }

            if (v292 > v289)
            {
              break;
            }

            if (v304 > v292)
            {
              break;
            }

            v305 = &v288[v280 / 4 + 1];
            if (v305 > v289 || v292 > v305)
            {
              break;
            }

            v499[v280 / 4] = *v292 - ((*v293 * *v279 + *v294 * *v281 + *v297 * *v282 + *v298 * *v283 + *v299 * *v284 + *v300 * *v285 + *v301 * *v286 + *v302 * *v287 + *v303 * *v290 + *v304 * *a3) >> a5);
            v280 += 4;
            if (v291 == v280)
            {
              return result;
            }
          }
        }

        goto LABEL_797;
      }
    }

    else if (a2 >= 1)
    {
      v372 = a3 + 9;
      v373 = a3 + 8;
      if (a3 + 8 <= a3 + 9 && v373 >= a3)
      {
        v374 = 0;
        v375 = a3 + 7;
        v376 = a3 + 6;
        v377 = a3 + 5;
        v378 = a3 + 4;
        v379 = a3 + 3;
        v380 = a3 + 2;
        v381 = a3 + 1;
        v382 = *result;
        v383 = *(result + 8);
        result = *(result + 16);
        v384 = 4 * a2;
        while (1)
        {
          v385 = &v382[v374 / 4];
          v386 = &v382[v374 / 4 - 9];
          v387 = &v382[v374 / 4 - 8];
          v388 = v387 > v383 || v386 > v387;
          if (v388 || v386 < result)
          {
            break;
          }

          v390 = v385 - 7;
          if ((v385 - 7) > v383)
          {
            break;
          }

          if (v387 > v390)
          {
            break;
          }

          if (v375 > v372)
          {
            break;
          }

          v391 = &v382[v374 / 4 - 6];
          if (v391 > v383)
          {
            break;
          }

          if (v390 > v391)
          {
            break;
          }

          if (v376 > v372)
          {
            break;
          }

          v392 = &v382[v374 / 4 - 5];
          if (v392 > v383)
          {
            break;
          }

          if (v391 > v392)
          {
            break;
          }

          if (v377 > v372)
          {
            break;
          }

          v393 = &v382[v374 / 4 - 4];
          if (v393 > v383)
          {
            break;
          }

          if (v392 > v393)
          {
            break;
          }

          if (v378 > v372)
          {
            break;
          }

          v394 = &v382[v374 / 4 - 3];
          if (v394 > v383)
          {
            break;
          }

          if (v393 > v394)
          {
            break;
          }

          if (v379 > v372)
          {
            break;
          }

          v395 = &v382[v374 / 4 - 2];
          if (v395 > v383)
          {
            break;
          }

          if (v394 > v395)
          {
            break;
          }

          if (v380 > v372)
          {
            break;
          }

          v396 = &v382[v374 / 4 - 1];
          if (v396 > v383)
          {
            break;
          }

          if (v395 > v396)
          {
            break;
          }

          if (v381 > v372)
          {
            break;
          }

          if (v385 > v383)
          {
            break;
          }

          if (v396 > v385)
          {
            break;
          }

          v397 = &v382[v374 / 4 + 1];
          if (v397 > v383 || v385 > v397)
          {
            break;
          }

          v499[v374 / 4] = *v385 - ((*v386 * *v373 + *v387 * *v375 + *v390 * *v376 + *v391 * *v377 + *v392 * *v378 + *v393 * *v379 + *v394 * *v380 + *v395 * *v381 + *v396 * *a3) >> a5);
          v374 += 4;
          if (v384 == v374)
          {
            return result;
          }
        }
      }

      goto LABEL_797;
    }
  }

  else if (a4 == 12)
  {
    if (a2 >= 1)
    {
      v9 = a3 + 12;
      v496 = a3 + 11;
      if (a3 + 11 <= a3 + 12 && v496 >= a3)
      {
        v10 = 0;
        v11 = a3 + 10;
        v12 = a3 + 9;
        v13 = a3 + 8;
        v14 = a3 + 7;
        v15 = a3 + 6;
        v16 = a3 + 5;
        v17 = a3 + 4;
        v18 = *result;
        v19 = *(result + 8);
        v493 = *(result + 16);
        v20 = a3 + 3;
        v21 = a3 + 2;
        v22 = a3 + 1;
        v491 = 4 * a2;
        v489 = a5;
        while (1)
        {
          v23 = &v18[v10 / 4];
          v24 = &v18[v10 / 4 - 12];
          v25 = &v18[v10 / 4 - 11];
          v26 = v25 > v19 || v24 > v25;
          if (v26 || v24 < v493)
          {
            break;
          }

          v28 = v23 - 10;
          if ((v23 - 10) > v19)
          {
            break;
          }

          if (v25 > v28)
          {
            break;
          }

          if (v11 > v9)
          {
            break;
          }

          v29 = &v18[v10 / 4 - 9];
          if (v29 > v19)
          {
            break;
          }

          if (v28 > v29)
          {
            break;
          }

          if (v12 > v9)
          {
            break;
          }

          v30 = &v18[v10 / 4 - 8];
          if (v30 > v19)
          {
            break;
          }

          if (v29 > v30)
          {
            break;
          }

          if (v13 > v9)
          {
            break;
          }

          v31 = &v18[v10 / 4 - 7];
          if (v31 > v19)
          {
            break;
          }

          if (v30 > v31)
          {
            break;
          }

          if (v14 > v9)
          {
            break;
          }

          v32 = &v18[v10 / 4 - 6];
          if (v32 > v19)
          {
            break;
          }

          if (v31 > v32)
          {
            break;
          }

          if (v15 > v9)
          {
            break;
          }

          v33 = &v18[v10 / 4 - 5];
          if (v33 > v19)
          {
            break;
          }

          if (v32 > v33)
          {
            break;
          }

          if (v16 > v9)
          {
            break;
          }

          v34 = &v18[v10 / 4 - 4];
          if (v34 > v19)
          {
            break;
          }

          if (v33 > v34)
          {
            break;
          }

          if (v17 > v9)
          {
            break;
          }

          v35 = &v18[v10 / 4 - 3];
          if (v35 > v19)
          {
            break;
          }

          if (v34 > v35)
          {
            break;
          }

          if (v20 > v9)
          {
            break;
          }

          result = &v18[v10 / 4 - 2];
          if (result > v19)
          {
            break;
          }

          if (v35 > result)
          {
            break;
          }

          if (v21 > v9)
          {
            break;
          }

          v36 = &v18[v10 / 4 - 1];
          if (v36 > v19)
          {
            break;
          }

          if (result > v36)
          {
            break;
          }

          if (v22 > v9)
          {
            break;
          }

          if (v23 > v19)
          {
            break;
          }

          if (v36 > v23)
          {
            break;
          }

          v37 = &v18[v10 / 4 + 1];
          if (v37 > v19 || v23 > v37)
          {
            break;
          }

          v38 = *v24 * *v496 + *v25 * *v11 + *v28 * *v12 + *v29 * *v13 + *v30 * *v14 + *v31 * *v15 + *v32 * *v16 + *v33 * *v17 + *v34 * *v20 + *v35 * *v21 + *result * *v22;
          result = *a3;
          v499[v10 / 4] = *v23 - ((v38 + *v36 * result) >> v489);
          v10 += 4;
          if (v491 == v10)
          {
            return result;
          }
        }
      }

LABEL_797:
      __break(0x5519u);
    }
  }

  else if (a2 >= 1)
  {
    v323 = a3 + 11;
    v498 = a3 + 10;
    if (a3 + 10 <= a3 + 11 && v498 >= a3)
    {
      v324 = 0;
      v325 = a3 + 9;
      v326 = a3 + 8;
      v327 = a3 + 7;
      v328 = a3 + 6;
      v329 = a3 + 5;
      v330 = a3 + 4;
      v331 = *result;
      v332 = *(result + 8);
      v333 = a3 + 3;
      v495 = *(result + 16);
      v334 = a3 + 2;
      v335 = a3 + 1;
      v336 = 4 * a2;
      while (1)
      {
        v337 = &v331[v324 / 4];
        v338 = &v331[v324 / 4 - 11];
        v339 = &v331[v324 / 4 - 10];
        v340 = v339 > v332 || v338 > v339;
        if (v340 || v338 < v495)
        {
          break;
        }

        v342 = v337 - 9;
        if ((v337 - 9) > v332)
        {
          break;
        }

        if (v339 > v342)
        {
          break;
        }

        if (v325 > v323)
        {
          break;
        }

        v343 = &v331[v324 / 4 - 8];
        if (v343 > v332)
        {
          break;
        }

        if (v342 > v343)
        {
          break;
        }

        if (v326 > v323)
        {
          break;
        }

        v344 = &v331[v324 / 4 - 7];
        if (v344 > v332)
        {
          break;
        }

        if (v343 > v344)
        {
          break;
        }

        if (v327 > v323)
        {
          break;
        }

        v345 = &v331[v324 / 4 - 6];
        if (v345 > v332)
        {
          break;
        }

        if (v344 > v345)
        {
          break;
        }

        if (v328 > v323)
        {
          break;
        }

        v346 = &v331[v324 / 4 - 5];
        if (v346 > v332)
        {
          break;
        }

        if (v345 > v346)
        {
          break;
        }

        if (v329 > v323)
        {
          break;
        }

        v347 = &v331[v324 / 4 - 4];
        if (v347 > v332)
        {
          break;
        }

        if (v346 > v347)
        {
          break;
        }

        if (v330 > v323)
        {
          break;
        }

        v348 = &v331[v324 / 4 - 3];
        if (v348 > v332)
        {
          break;
        }

        if (v347 > v348)
        {
          break;
        }

        if (v333 > v323)
        {
          break;
        }

        v349 = &v331[v324 / 4 - 2];
        if (v349 > v332)
        {
          break;
        }

        if (v348 > v349)
        {
          break;
        }

        if (v334 > v323)
        {
          break;
        }

        v350 = &v331[v324 / 4 - 1];
        if (v350 > v332)
        {
          break;
        }

        if (v349 > v350)
        {
          break;
        }

        if (v335 > v323)
        {
          break;
        }

        if (v337 > v332)
        {
          break;
        }

        if (v350 > v337)
        {
          break;
        }

        result = &v331[v324 / 4 + 1];
        if (result > v332 || v337 > result)
        {
          break;
        }

        result = v499;
        v499[v324 / 4] = *v337 - ((*v338 * *v498 + *v339 * *v325 + *v342 * *v326 + *v343 * *v327 + *v344 * *v328 + *v345 * *v329 + *v346 * *v330 + *v347 * *v333 + *v348 * *v334 + *v349 * *v335 + *v350 * *a3) >> a5);
        v324 += 4;
        if (v336 == v324)
        {
          return result;
        }
      }
    }

    goto LABEL_797;
  }

  return result;
}