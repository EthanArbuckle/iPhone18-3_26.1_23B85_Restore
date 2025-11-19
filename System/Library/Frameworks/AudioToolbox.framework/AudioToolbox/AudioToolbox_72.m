uint64_t bsod_unprj_11184(uint64_t result, int a2)
{
  v2 = *(result + 24);
  v3 = (*(result + 26) << v2) << a2;
  v4 = v2 + a2;
  if (v4 >= 17)
  {
    v5 = (*result + 2);
    v6 = *result + 4;
    if (v6 > *(result + 8) || v5 > v6 || v5 < *(result + 16))
    {
      __break(0x5519u);
      return result;
    }

    v9 = *v5;
    LOWORD(v4) = v4 - 16;
    *(result + 26) = v9;
    *result = v5;
    v3 |= v9 << v4;
  }

  *(result + 24) = v4;
  return (v3 >> 16);
}

unint64_t ddp_udc_int_dmxd_process(unint64_t result, int a2, __int16 *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (!*(a5 + 288))
  {
    v75 = &ddp_udc_int_gbl_chantab[6 * a2];
    v76 = &v75[result];
    v77 = (v76 + 1);
    if (v76 >= v75 && v77 <= (v75 + 6) && v76 <= v77)
    {
      v80 = a3[2];
      if (v80)
      {
        v81 = 0;
        v82 = *v76;
        while (1)
        {
          result = &ddp_udc_int_gbl_chantab[6 * *a3];
          v83 = (result + 2 * v81);
          v84 = (v83 + 1);
          v85 = v83 < result || v84 > result + 12;
          if (v85 || v83 > v84)
          {
            goto LABEL_250;
          }

          v87 = *v83;
          result = a5 + 24 * v87;
          v88 = (result + 4 * v82);
          v89 = (v88 + 1);
          v90 = v88 < result || v89 > result + 24;
          if (v90 || v88 > v89)
          {
            goto LABEL_250;
          }

          result = a5 + 144 + 24 * v87;
          v92 = (result + 4 * v82);
          v93 = (v92 + 1);
          v94 = v92 < result || v93 > result + 24;
          if (v94 || v92 > v93)
          {
            goto LABEL_250;
          }

          v96 = *v88;
          v97 = *v92;
          if (*v88 != 0.0 || v97 != 0.0)
          {
            result = &ddp_udc_int_dnmixtabshift + 12 * v87;
            v98 = (result + 2 * v82);
            v99 = (v98 + 1);
            if (v98 < result || v99 > result + 12 || v98 > v99)
            {
              goto LABEL_250;
            }

            v102 = *a7 + 32 * v87;
            result = v102 + 32;
            v103 = v102 + 32 > a7[1] || v102 > result;
            if (v103 || v102 < a7[2])
            {
              goto LABEL_250;
            }

            v105 = *v102;
            if (*v102)
            {
              v107 = *a4;
              v106 = a4[1];
              v108 = a4[2];
              v109 = *v98;
              v110 = *(v102 + 8);
              v111 = *(v102 + 16);
              v112 = *(v102 + 24);
              if (v96 == v97)
              {
                if (v109)
                {
                  result = ((v109 << 23) + 1065353216);
                  LODWORD(v131) = (v109 << 23) + 1065353216;
                  v132 = 8 * v112;
                  v133 = v112;
                  v134 = (v107 + 4);
                  v135 = -256;
                  while (v134 <= v106)
                  {
                    result = (v134 - 1);
                    if (v134 < 4)
                    {
                      break;
                    }

                    if (result < v108)
                    {
                      break;
                    }

                    result = (v134 + 1);
                    if ((v134 + 1) > v106 || v134 > result)
                    {
                      break;
                    }

                    v136 = (v96 * *v134) * v131;
                    if (v136 < -1.0)
                    {
                      v136 = -1.0;
                    }

                    result = (v105 + 1);
                    if ((v105 + 1) > v110 || v105 > result || v105 < v111)
                    {
                      break;
                    }

                    v137 = (v96 * *(v134 - 1)) * v131;
                    if (v137 < -1.0)
                    {
                      v137 = -1.0;
                    }

                    v138 = fminf(v137, 1.0) + (*v105 * 0.5);
                    if (v138 < -1.0)
                    {
                      v138 = -1.0;
                    }

                    v139 = fminf(v138, 1.0);
                    v140 = v139 + v139;
                    if (v140 < -1.0)
                    {
                      v140 = -1.0;
                    }

                    *v105 = fminf(v140, 1.0);
                    v141 = &v105[v133];
                    result = &v105[v133 + 1];
                    if (result > v110 || v141 > result || v141 < v111)
                    {
                      break;
                    }

                    v142 = fminf(v136, 1.0) + (*v141 * 0.5);
                    if (v142 < -1.0)
                    {
                      v142 = -1.0;
                    }

                    v143 = fminf(v142, 1.0);
                    v144 = v143 + v143;
                    if (v144 < -1.0)
                    {
                      v144 = -1.0;
                    }

                    *v141 = fminf(v144, 1.0);
                    v105 = (v105 + v132);
                    v134 += 2;
                    v135 += 2;
                    if (!v135)
                    {
                      goto LABEL_244;
                    }
                  }
                }

                else
                {
                  v157 = 8 * v112;
                  v158 = v112;
                  v159 = (v107 + 4);
                  v160 = -256;
                  while (v159 <= v106)
                  {
                    result = (v159 - 1);
                    if (v159 < 4)
                    {
                      break;
                    }

                    if (result < v108)
                    {
                      break;
                    }

                    result = (v159 + 1);
                    if ((v159 + 1) > v106)
                    {
                      break;
                    }

                    if (v159 > result)
                    {
                      break;
                    }

                    result = (v105 + 1);
                    if ((v105 + 1) > v110 || v105 > result || v105 < v111)
                    {
                      break;
                    }

                    v161 = *v159;
                    v162 = (v96 * *(v159 - 1)) + (*v105 * 0.5);
                    if (v162 < -1.0)
                    {
                      v162 = -1.0;
                    }

                    v163 = fminf(v162, 1.0);
                    v164 = v163 + v163;
                    if (v164 < -1.0)
                    {
                      v164 = -1.0;
                    }

                    *v105 = fminf(v164, 1.0);
                    v165 = &v105[v158];
                    result = &v105[v158 + 1];
                    if (result > v110 || v165 > result || v165 < v111)
                    {
                      break;
                    }

                    v166 = (v96 * v161) + (*v165 * 0.5);
                    if (v166 < -1.0)
                    {
                      v166 = -1.0;
                    }

                    v167 = fminf(v166, 1.0);
                    v168 = v167 + v167;
                    if (v168 < -1.0)
                    {
                      v168 = -1.0;
                    }

                    *v165 = fminf(v168, 1.0);
                    v105 = (v105 + v157);
                    v159 += 2;
                    v160 += 2;
                    if (!v160)
                    {
LABEL_244:
                      v169 = (*a6 + 2 * v87);
                      result = (v169 + 1);
                      if ((v169 + 1) <= a6[1] && v169 <= result)
                      {
                        result = a6[2];
                        if (v169 >= result)
                        {
                          *v169 = 1;
                          v80 = a3[2];
                          goto LABEL_248;
                        }
                      }

                      goto LABEL_250;
                    }
                  }
                }
              }

              else
              {
                v113 = v96 * 0.5;
                v114 = (v97 * 0.5) - v113;
                v115 = 0;
                if (v109)
                {
                  result = ((v109 << 23) + 0x40000000);
                  LODWORD(v116) = (v109 << 23) + 0x40000000;
                  v117 = 8 * v112;
                  v118 = v112;
                  v119 = &dword_19B308938;
                  while (1)
                  {
                    v120 = v119 + 1;
                    if (v119 + 1 < ddp_udc_int_window2)
                    {
                      break;
                    }

                    result = (v119 + 2);
                    if (v119 + 2 > ddp_udc_int_gbl_sampratetab)
                    {
                      break;
                    }

                    if (v120 > result)
                    {
                      break;
                    }

                    if (v119 < ddp_udc_int_window2)
                    {
                      break;
                    }

                    if (v119 > v120)
                    {
                      break;
                    }

                    result = v107 + v115;
                    v121 = (v107 + v115 + 4);
                    if (v121 > v106)
                    {
                      break;
                    }

                    result = v107 + v115;
                    if (v107 + v115 > v121)
                    {
                      break;
                    }

                    if (result < v108)
                    {
                      break;
                    }

                    result = v107 + v115 + 8;
                    if (result > v106 || v121 > result)
                    {
                      break;
                    }

                    v122 = ((v113 + (v114 * *v119)) * *v121) * v116;
                    if (v122 < -1.0)
                    {
                      v122 = -1.0;
                    }

                    result = (v105 + 1);
                    if ((v105 + 1) > v110 || v105 > result || v105 < v111)
                    {
                      break;
                    }

                    v123 = ((v113 + (v114 * v119[1])) * *(v107 + v115)) * v116;
                    if (v123 < -1.0)
                    {
                      v123 = -1.0;
                    }

                    v124 = fminf(v123, 1.0) + (*v105 * 0.5);
                    if (v124 < -1.0)
                    {
                      v124 = -1.0;
                    }

                    v125 = fminf(v124, 1.0);
                    v126 = v125 + v125;
                    if (v126 < -1.0)
                    {
                      v126 = -1.0;
                    }

                    *v105 = fminf(v126, 1.0);
                    v127 = &v105[v118];
                    result = &v105[v118 + 1];
                    if (result > v110 || v127 > result || v127 < v111)
                    {
                      break;
                    }

                    v128 = fminf(v122, 1.0) + (*v127 * 0.5);
                    if (v128 < -1.0)
                    {
                      v128 = -1.0;
                    }

                    v129 = fminf(v128, 1.0);
                    v130 = v129 + v129;
                    if (v130 < -1.0)
                    {
                      v130 = -1.0;
                    }

                    *v127 = fminf(v130, 1.0);
                    v115 += 8;
                    v105 = (v105 + v117);
                    v119 -= 2;
                    if (v115 == 1024)
                    {
                      goto LABEL_244;
                    }
                  }
                }

                else
                {
                  v145 = 8 * v112;
                  v146 = v112;
                  v147 = &dword_19B308938;
                  while (1)
                  {
                    v148 = v147 + 1;
                    if (v147 + 1 < ddp_udc_int_window2)
                    {
                      break;
                    }

                    result = (v147 + 2);
                    if (v147 + 2 > ddp_udc_int_gbl_sampratetab)
                    {
                      break;
                    }

                    if (v148 > result)
                    {
                      break;
                    }

                    if (v147 < ddp_udc_int_window2)
                    {
                      break;
                    }

                    if (v147 > v148)
                    {
                      break;
                    }

                    result = v107 + v115;
                    v149 = (v107 + v115 + 4);
                    if (v149 > v106)
                    {
                      break;
                    }

                    result = v107 + v115;
                    if (v107 + v115 > v149)
                    {
                      break;
                    }

                    if (result < v108)
                    {
                      break;
                    }

                    result = v107 + v115 + 8;
                    if (result > v106)
                    {
                      break;
                    }

                    if (v149 > result)
                    {
                      break;
                    }

                    result = (v105 + 1);
                    if ((v105 + 1) > v110 || v105 > result || v105 < v111)
                    {
                      break;
                    }

                    v150 = *v147;
                    v151 = *v149;
                    v152 = ((v113 + (v114 * v147[1])) * *(v107 + v115)) + (*v105 * 0.25);
                    if (v152 < -1.0)
                    {
                      v152 = -1.0;
                    }

                    v153 = fminf(v152, 1.0) * 4.0;
                    if (v153 < -1.0)
                    {
                      v153 = -1.0;
                    }

                    *v105 = fminf(v153, 1.0);
                    v154 = &v105[v146];
                    result = &v105[v146 + 1];
                    if (result > v110 || v154 > result || v154 < v111)
                    {
                      break;
                    }

                    v155 = ((v113 + (v114 * v150)) * v151) + (*v154 * 0.25);
                    if (v155 < -1.0)
                    {
                      v155 = -1.0;
                    }

                    v156 = fminf(v155, 1.0) * 4.0;
                    if (v156 < -1.0)
                    {
                      v156 = -1.0;
                    }

                    *v154 = fminf(v156, 1.0);
                    v115 += 8;
                    v105 = (v105 + v145);
                    v147 -= 2;
                    if (v115 == 1024)
                    {
                      goto LABEL_244;
                    }
                  }
                }
              }

              goto LABEL_250;
            }
          }

LABEL_248:
          ++v81;
          result = v80;
          if (v81 >= v80)
          {
            return result;
          }
        }
      }

      return result;
    }

LABEL_250:
    __break(0x5519u);
    return result;
  }

  v7 = &ddp_udc_int_gbl_chantab[6 * a2];
  v8 = &v7[result];
  v9 = (v8 + 1);
  if (v8 < v7 || v9 > (v7 + 6) || v8 > v9)
  {
    goto LABEL_250;
  }

  v12 = a3[2];
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *a4;
    v15 = a4[1];
    v16 = a4[2];
    v17 = *a6;
    v18 = a6[1];
    v19 = a6[2];
    v20 = *a7;
    v21 = a7[1];
    result = a5 + 144;
    v22 = a7[2];
    v23 = *v8;
    while (1)
    {
      v24 = &ddp_udc_int_gbl_chantab[6 * *a3];
      v25 = &v24[v13];
      v26 = (v25 + 1);
      v27 = v25 < v24 || v26 > (v24 + 6);
      if (v27 || v25 > v26)
      {
        goto LABEL_250;
      }

      v29 = *v25;
      v30 = a5 + 24 * v29;
      v31 = (v30 + 4 * v23);
      v32 = (v31 + 1);
      v33 = v31 < v30 || v32 > v30 + 24;
      v34 = v33 || v31 > v32;
      v35 = result + 24 * v29;
      v36 = (v35 + 4 * v23);
      v37 = (v36 + 1);
      v38 = !v34 && v36 >= v35;
      v39 = !v38 || v37 > v35 + 24;
      if (v39 || v36 > v37)
      {
        goto LABEL_250;
      }

      if (*v31 != 0.0 || *v36 != 0.0)
      {
        v41 = v20 + 32 * v29;
        if (v41 + 32 <= v21 && v41 <= v41 + 32 && v41 >= v22)
        {
          v44 = 0;
          v46 = *(v41 + 8);
          v45 = *(v41 + 16);
          v47 = *(v41 + 24);
          v48 = *v41;
          v49 = 16 * v47;
          v50 = v47;
          v51 = 2 * v47;
          v52 = 3 * v47;
          while (1)
          {
            v53 = (v14 + v44);
            v54 = (v14 + v44 + 4);
            v55 = v54 > v15 || v53 > v54;
            if (v55 || v53 < v16)
            {
              break;
            }

            v58 = *v53;
            v57 = v53 + 2;
            v59 = v58;
            if (v57 > v15)
            {
              break;
            }

            if (v54 > v57)
            {
              break;
            }

            v60 = (v14 + v44 + 12);
            if (v60 > v15)
            {
              break;
            }

            if (v57 > v60)
            {
              break;
            }

            v61 = v14 + v44 + 16;
            if (v61 > v15 || v60 > v61)
            {
              break;
            }

            v62 = *v57;
            v63 = *v60;
            if ((*v54 + *v54) >= -1.0)
            {
              v64 = *v54 + *v54;
            }

            else
            {
              v64 = -1.0;
            }

            if ((v62 + v62) >= -1.0)
            {
              v65 = v62 + v62;
            }

            else
            {
              v65 = -1.0;
            }

            v66 = v63 + v63;
            if ((v63 + v63) < -1.0)
            {
              v66 = -1.0;
            }

            if ((v48 + 1) > v46 || v48 > v48 + 1 || v48 < v45)
            {
              break;
            }

            v67 = v59 + v59;
            if (v67 < -1.0)
            {
              v67 = -1.0;
            }

            *v48 = fminf(v67, 1.0);
            v68 = &v48[v50];
            v69 = &v48[v50 + 1];
            if (v69 > v46)
            {
              break;
            }

            if (v68 > v69)
            {
              break;
            }

            if (v68 < v45)
            {
              break;
            }

            *v68 = fminf(v64, 1.0);
            v70 = &v48[v51];
            v71 = &v48[v51 + 1];
            if (v71 > v46)
            {
              break;
            }

            if (v70 > v71)
            {
              break;
            }

            if (v70 < v45)
            {
              break;
            }

            *v70 = fminf(v65, 1.0);
            v72 = &v48[v52];
            v73 = &v48[v52 + 1];
            if (v73 > v46 || v72 > v73 || v72 < v45)
            {
              break;
            }

            *v72 = fminf(v66, 1.0);
            v48 = (v48 + v49);
            v44 += 16;
            if (v44 == 1024)
            {
              v74 = (v17 + 2 * v29);
              if ((v74 + 1) <= v18 && v74 <= v74 + 1 && v74 >= v19)
              {
                *v74 = 1;
                LOWORD(v12) = a3[2];
                goto LABEL_86;
              }

              goto LABEL_250;
            }
          }
        }

        goto LABEL_250;
      }

LABEL_86:
      if (++v13 >= v12)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t ddp_udc_int_dmxd_clear(uint64_t result, int a2, void *a3, void *a4)
{
  if (result >= 1)
  {
    v4 = 0;
    v5 = &ddp_udc_int_gbl_chantab[6 * a2];
    while (1)
    {
      v6 = &v5[v4];
      v7 = (v6 + 1);
      v8 = v6 < v5 || v7 > (v5 + 6);
      if (v8 || v6 >= v7)
      {
        break;
      }

      v10 = *v6;
      v11 = (*a3 + 2 * v10);
      v12 = (v11 + 1) > a3[1] || v11 >= v11 + 1;
      if (v12 || v11 < a3[2])
      {
        break;
      }

      if (!*v11)
      {
        v14 = *a4 + 32 * v10;
        if (v14 + 32 > a4[1] || v14 >= v14 + 32 || v14 < a4[2])
        {
          break;
        }

        v17 = *v14;
        if (*v14)
        {
          v18 = *(v14 + 8);
          v19 = *(v14 + 16);
          v20 = 4 * *(v14 + 24);
          v21 = 256;
          do
          {
            v22 = (v17 + 1) > v18 || v17 >= v17 + 1;
            if (v22 || v17 < v19)
            {
              goto LABEL_40;
            }

            *v17 = 0;
            v17 = (v17 + v20);
          }

          while (--v21);
        }
      }

      if (++v4 == result)
      {
        return result;
      }
    }

LABEL_40:
    __break(0x5519u);
  }

  return result;
}

_WORD *ddp_udc_int_abkd_blkinit(_WORD *result, uint64_t a2)
{
  *(a2 + 2362) = 0;
  *(a2 + 2338) = 0;
  *(a2 + 2282) = 0;
  *(a2 + 2294) = 0;
  if (a2 + 5172 <= (a2 + 5184))
  {
    v2 = a2 + 2280;
    *(a2 + 5180) = 0;
    *(a2 + 5172) = 0;
    *(a2 + 50) = 0;
    v3 = a2 + 408;
    *(a2 + 58) = 0;
    v4 = (a2 + 14);
    v5 = &ddp_udc_int_cpl_defbndstrc;
    v6 = 18;
    do
    {
      if ((v4 + 1) > a2 + 50 || v4 >= v4 + 1)
      {
        goto LABEL_40;
      }

      v8 = *v5++;
      *v4++ = v8;
      --v6;
    }

    while (v6);
    *(a2 + 144) = 2;
    *(a2 + 176) = 4;
    *(a2 + 4376) = 0;
    v9 = (a2 + 4386);
    v10 = 22;
    v11 = &ddp_udc_int_ecpd_defecplbndstrc;
    do
    {
      if ((v9 + 1) > a2 + 4430 || v9 >= v9 + 1)
      {
        goto LABEL_40;
      }

      v13 = *v11++;
      *v9++ = v13;
      --v10;
    }

    while (v10);
    if (result[9] >= 1)
    {
      v14 = 0;
      v15 = 312 * result[9];
      do
      {
        v16 = a2 + v14 + 408;
        if (a2 + v14 == -408)
        {
          MEMORY[4] = 0;
          MEMORY[0xB0] = 1;
          MEMORY[8] = 0;
          MEMORY[0x40] = 2;
          MEMORY[0x42] = 0;
          MEMORY[0x60] = 4;
        }

        else
        {
          v17 = a2 + v14 + 720;
          if (v16 < v3 || v17 > v2 || v16 > v17)
          {
            goto LABEL_40;
          }

          v20 = a2 + v14;
          *(v20 + 412) = 0;
          *(v20 + 584) = 1;
          *(v20 + 416) = 0;
          *(v20 + 472) = 2;
          *(v20 + 504) = 4;
        }

        v14 += 312;
      }

      while (v15 != v14);
    }

    if (!result[7])
    {
LABEL_39:
      *(a2 + 2384) = 0;
      *(a2 + 2424) = 0;
      *(a2 + 2392) = 0u;
      *(a2 + 2408) = 0u;
      return result;
    }

    v21 = v3 + 312 * result[8];
    if (!v21)
    {
      MEMORY[4] = 0;
      MEMORY[0xB0] = 0;
      MEMORY[8] = 0;
      MEMORY[2] = 7;
      MEMORY[0x128] = 7;
      MEMORY[0x32] = 7;
      MEMORY[0xC] = 0;
      MEMORY[0x20] = 0;
      v25 = 66;
      MEMORY[0x40] = 2;
      goto LABEL_38;
    }

    v22 = v21 + 312;
    if (v21 >= v3 && v22 <= v2 && v21 < v22)
    {
      *(v21 + 176) = 0;
      *(v21 + 8) = 0;
      *(v21 + 2) = 7;
      *(v21 + 296) = 7;
      *(v21 + 50) = 7;
      *(v21 + 12) = 0;
      *(v21 + 32) = 0;
      v25 = v21 + 66;
      *(v21 + 64) = 2;
LABEL_38:
      *v25 = 0;
      goto LABEL_39;
    }
  }

LABEL_40:
  __break(0x5519u);
  return result;
}

unint64_t ddp_udc_int_abkd_copy(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 + 2328 <= (a2 + 2342) && a3 + 2328 <= (a3 + 2342))
  {
    v5 = result;
    *(a3 + 2338) = *(a2 + 2338);
    v6 = *(a2 + 2340);
    *(a3 + 2340) = *(a2 + 2340);
    if (v6 < 1)
    {
LABEL_22:
      if (a2 + 2344 <= (a2 + 2380) && a3 + 2344 <= (a3 + 2380))
      {
        *(a3 + 2372) = *(a2 + 2372);
        *(a3 + 2378) = *(a2 + 2378);
        *(a3 + 2358) = *(a2 + 2358);
        v150 = a2 + 2350;
        v151 = a3 + 2350;
        *(a3 + 2350) = *(a2 + 2350);
        v19 = *(result + 20);
        if (v19 < 1)
        {
LABEL_37:
          if (*(result + 18) < 1)
          {
LABEL_50:
            v31 = *(a2 + 6);
            *(a3 + 6) = v31;
            if (v31)
            {
              *(a3 + 8) = *(a2 + 8);
              *(a3 + 52) = *(a2 + 52);
              *(a3 + 54) = *(a2 + 54);
              *a3 = *a2;
              *(a3 + 64) = *(a2 + 64);
              *(a3 + 58) = *(a2 + 58);
              *(a3 + 50) = *(a2 + 50);
            }

            v32 = 0;
            while (1)
            {
              v33 = (a2 + v32 + 14);
              v34 = a2 + v32 + 16;
              v35 = v34 > a2 + 50 || v33 > v34;
              v36 = (a3 + v32 + 14);
              v37 = a3 + v32 + 16;
              v38 = v35 || v37 > a3 + 50;
              if (v38 || v36 > v37)
              {
                break;
              }

              *v36 = *v33;
              v32 += 2;
              if (v32 == 36)
              {
                result = ddp_udc_int_exmd_copy(a2 + 120, a3 + 120);
                if (a2 + 4376 <= (a2 + 5172) && a3 + 4376 <= (a3 + 5172))
                {
                  v40 = *(a2 + 4376);
                  *(a3 + 4376) = v40;
                  if (v40)
                  {
                    *(a3 + 4380) = *(a2 + 4380);
                    *(a3 + 4384) = *(a2 + 4384);
                    v41 = *(a2 + 5124);
                    *(a3 + 5124) = *(a2 + 5124);
                    *(a3 + 5120) = *(a2 + 5120);
                    if (v41 < 0)
                    {
LABEL_77:
                      v48 = 0;
                      v49 = 0;
                      v50 = a2 + 4480;
                      v51 = a3 + 4480;
                      while (1)
                      {
                        result = v41;
                        if (result >= 1)
                        {
                          break;
                        }

LABEL_106:
                        ++v49;
                        v48 += 138;
                        if (v49 == 5)
                        {
                          goto LABEL_107;
                        }
                      }

                      result = 138 * v49;
                      v52 = a2 + 4430 + 138 * v49;
                      if (v52 + 138 <= (a2 + 5120))
                      {
                        v53 = 0;
                        v54 = a3 + 4430 + result;
                        result = v52 + 4;
                        v55 = v52 + 48;
                        v56 = v54 + 138;
                        v57 = v54 + 4;
                        v58 = v54 + 48;
                        v59 = v52 + 92;
                        v60 = v54 + 92;
                        v61 = v52 + 136;
                        v62 = v54 + 136;
                        v63 = v48;
                        while (1)
                        {
                          v64 = v50 + v63 - 46;
                          v65 = v50 + v63 - 44;
                          v66 = v64 < result || v65 > v55;
                          if (v66 || v64 > v65)
                          {
                            break;
                          }

                          if (v56 > a3 + 5120)
                          {
                            break;
                          }

                          v68 = v51 + v63 - 46;
                          if (v68 < v57)
                          {
                            break;
                          }

                          v69 = v51 + v63 - 44;
                          if (v69 > v58)
                          {
                            break;
                          }

                          if (v68 > v69)
                          {
                            break;
                          }

                          *(a3 + v63 + 4434) = *(a2 + v63 + 4434);
                          v70 = v50 + v63;
                          v71 = v50 + v63 - 2;
                          if (v71 < v55)
                          {
                            break;
                          }

                          if (v70 > v59)
                          {
                            break;
                          }

                          if (v71 > v70)
                          {
                            break;
                          }

                          v72 = v51 + v63;
                          v73 = v51 + v63 - 2;
                          if (v73 < v58)
                          {
                            break;
                          }

                          if (v72 > v60)
                          {
                            break;
                          }

                          if (v73 > v72)
                          {
                            break;
                          }

                          *(a3 + v63 + 4478) = *(a2 + v63 + 4478);
                          v74 = v50 + v63 + 42;
                          if (v74 < v59)
                          {
                            break;
                          }

                          v75 = v50 + v63 + 44;
                          if (v75 > v61)
                          {
                            break;
                          }

                          if (v74 > v75)
                          {
                            break;
                          }

                          v76 = v51 + v63 + 42;
                          if (v76 < v60)
                          {
                            break;
                          }

                          v77 = v51 + v63 + 44;
                          if (v77 > v62 || v76 > v77)
                          {
                            break;
                          }

                          *(a3 + v63 + 4522) = *(a2 + v63 + 4522);
                          ++v53;
                          v63 += 2;
                          if (v53 >= *(a2 + 5124))
                          {
                            LOWORD(v41) = *(a2 + 5124);
                            goto LABEL_106;
                          }
                        }
                      }
                    }

                    else
                    {
                      v42 = 0;
                      v43 = a2 + 5126;
                      v44 = a3 + 5126;
                      v45 = a3 + 5128;
                      v46 = a2 + 5128;
                      v47 = -1;
                      while (v43 + v42 >= v43 && v46 + v42 <= (a2 + 5172) && v43 + v42 <= v46 + v42 && v44 + v42 >= v44 && v45 + v42 <= (a3 + 5172) && v44 + v42 <= v45 + v42)
                      {
                        *(a3 + v42 + 5126) = *(a2 + v42 + 5126);
                        ++v47;
                        v42 += 2;
                        if (v47 >= *(a2 + 5124))
                        {
                          LOWORD(v41) = *(a2 + 5124);
                          goto LABEL_77;
                        }
                      }
                    }
                  }

                  else
                  {
LABEL_107:
                    v78 = 0;
                    v79 = a3 + 4388;
                    v80 = a2 + 4388;
                    while (v80 + v78 <= (a2 + 4430) && a2 + 4386 + v78 <= (v80 + v78) && v79 + v78 <= (a3 + 4430) && a3 + 4386 + v78 <= (v79 + v78))
                    {
                      *(a3 + v78 + 4386) = *(a2 + v78 + 4386);
                      v78 += 2;
                      if (v78 == 44)
                      {
                        v81 = *(v5 + 16);
                        v82 = *(a2 + 4002);
                        *(a3 + 4002) = v82;
                        if (v82)
                        {
                          result = v150;
                          *(v151 + 1654) = *(v150 + 1654);
                          if (*(a2 + 4052) < 1)
                          {
LABEL_133:
                            v95 = 0;
                            v96 = (v150 + 1696);
                            v97 = (v151 + 1696);
                            while (1)
                            {
                              v98 = (a2 + v95 + 4012);
                              v99 = a2 + v95 + 4014;
                              v100 = v99 > v96 || v98 > v99;
                              v101 = (a3 + v95 + 4012);
                              v102 = a3 + v95 + 4014;
                              v103 = v100 || v102 > v97;
                              if (v103 || v101 > v102)
                              {
                                break;
                              }

                              *v101 = *v98;
                              v95 += 2;
                              if (v95 == 34)
                              {
                                v105 = *v96;
                                *v97 = *v96;
                                if (v81 < 1)
                                {
                                  goto LABEL_195;
                                }

                                v106 = 0;
                                v107 = a2 + 4088;
                                v108 = a3 + 4088;
                                v109 = HIWORD(v105);
                                while (1)
                                {
                                  v110 = v107 + 56 * v106;
                                  v111 = v110 + 56;
                                  v112 = v110 < v107 || v111 > a2 + 4368;
                                  v113 = v112 || v110 > v111;
                                  v114 = v108 + 56 * v106;
                                  result = v114 + 56;
                                  v115 = !v113 && v114 >= v108;
                                  v116 = !v115 || result > a3 + 4368;
                                  if (v116 || v114 > result)
                                  {
                                    goto LABEL_217;
                                  }

                                  *(v114 + 2) = *(v110 + 2);
                                  *(v114 + 6) = *(v110 + 6);
                                  result = v109;
                                  if (result >= 1)
                                  {
                                    v118 = 0;
                                    result = 4;
                                    while (1)
                                    {
                                      v119 = *(v110 + 48);
                                      v120 = *(v110 + 32) + result;
                                      v121 = (v120 - 4);
                                      v122 = v120 + 4;
                                      v123 = v122 > *(v110 + 40) || v121 > v122;
                                      if (v123 || v121 < v119)
                                      {
                                        goto LABEL_217;
                                      }

                                      v125 = *(v114 + 48);
                                      v126 = *(v114 + 32) + result;
                                      v127 = (v126 - 4);
                                      v128 = v126 + 4;
                                      v129 = v128 > *(v114 + 40) || v127 > v128;
                                      if (v129 || v127 < v125)
                                      {
                                        goto LABEL_217;
                                      }

                                      *v127 = *v121;
                                      v131 = *(v114 + 32);
                                      v132 = v131 + result - 4;
                                      v133 = v131 + result + 4;
                                      v134 = v133 > *(v114 + 40) || v132 > v133;
                                      if (v134 || v132 < v125)
                                      {
                                        goto LABEL_217;
                                      }

                                      v136 = *(v110 + 32);
                                      v137 = v136 + result + 4;
                                      if (v137 > *(v110 + 40))
                                      {
                                        goto LABEL_217;
                                      }

                                      v138 = v136 + result - 4;
                                      if (v138 > v137 || v138 < v119)
                                      {
                                        goto LABEL_217;
                                      }

                                      *(v131 + result) = *(v136 + result);
                                      ++v118;
                                      result += 8;
                                      if (v118 >= *(a2 + 4052))
                                      {
                                        v109 = *(a2 + 4052);
                                        break;
                                      }
                                    }
                                  }

                                  if (++v106 == v81)
                                  {
                                    goto LABEL_195;
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
                            v83 = 0;
                            v84 = a2 + 4054;
                            v85 = a3 + 4054;
                            while (1)
                            {
                              v86 = (v84 + 2 * v83);
                              v87 = (v86 + 1);
                              v88 = v86 < v84 || v87 > a2 + 4084;
                              v89 = v88 || v86 > v87;
                              v90 = (v85 + 2 * v83);
                              v91 = (v90 + 1);
                              v92 = !v89 && v90 >= v85;
                              v93 = !v92 || v91 > a3 + 4084;
                              if (v93 || v90 > v91)
                              {
                                break;
                              }

                              *v90 = *v86;
                              if (++v83 >= *(a2 + 4052))
                              {
                                goto LABEL_133;
                              }
                            }
                          }
                        }

                        else
                        {
LABEL_195:
                          v139 = 0;
                          while (1)
                          {
                            v140 = (a2 + v139 + 4012);
                            v141 = a2 + v139 + 4014;
                            v142 = v141 > a2 + 4046 || v140 > v141;
                            v143 = (a3 + v139 + 4012);
                            v144 = a3 + v139 + 4014;
                            v145 = v142 || v144 > a3 + 4046;
                            if (v145 || v143 > v144)
                            {
                              break;
                            }

                            *v143 = *v140;
                            v139 += 2;
                            if (v139 == 34)
                            {
                              if (v81 < 1)
                              {
                                return result;
                              }

                              v147 = (a2 + 4088);
                              for (i = (a3 + 4088); v147 >= a2 + 4088 && (v147 + 28) <= a2 + 4368 && v147 <= v147 + 28 && i >= a3 + 4088 && (i + 28) <= a3 + 4368 && i <= i + 28; i += 28)
                              {
                                v149 = *v147;
                                v147 += 28;
                                *i = v149;
                                if (!--v81)
                                {
                                  return result;
                                }
                              }

                              goto LABEL_217;
                            }
                          }
                        }

                        goto LABEL_217;
                      }
                    }
                  }
                }

                break;
              }
            }
          }

          else
          {
            v22 = 0;
            v23 = a2 + 408;
            v24 = a2 + 2280;
            v25 = a3 + 408;
            v26 = a3 + 2280;
            v27 = a2 + 408;
            v28 = a3 + 408;
            while (!v27 || v27 >= v23 && v27 + 312 <= v24 && v27 <= v27 + 312)
            {
              if (v28)
              {
                if (v28 < v25 || v28 + 312 > v26 || v28 > v28 + 312)
                {
                  break;
                }

                v29 = v27;
                v30 = v28;
              }

              else
              {
                v29 = v27;
                v30 = 0;
              }

              result = ddp_udc_int_chnd_copy(v29, v30);
              ++v22;
              v28 += 312;
              v27 += 312;
              if (v22 >= *(v5 + 18))
              {
                goto LABEL_50;
              }
            }
          }
        }

        else
        {
          v20 = a2 + 2280;
          v21 = a3 + 2280;
          while (!v20 || v20 >= a2 + 2280 && v20 + 12 <= a2 + 2304 && v20 <= v20 + 12)
          {
            if (v21)
            {
              if (v21 < a3 + 2280 || v21 + 12 > a3 + 2304 || v21 > v21 + 12)
              {
                break;
              }

              *(v21 + 2) = *(v20 + 2);
            }

            else
            {
              MEMORY[2] = *(v20 + 2);
            }

            v21 += 12;
            v20 += 12;
            if (!--v19)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

    else
    {
      v7 = 0;
      v8 = a2 + 2330;
      v9 = a3 + 2330;
      while (1)
      {
        v10 = (v8 + 2 * v7);
        v11 = (v10 + 1);
        v12 = v10 < v8 || v11 > a2 + 2338;
        v13 = v12 || v10 > v11;
        v14 = (v9 + 2 * v7);
        v15 = (v14 + 1);
        v16 = !v13 && v14 >= v9;
        v17 = !v16 || v15 > a3 + 2338;
        if (v17 || v14 > v15)
        {
          break;
        }

        *v14 = *v10;
        if (++v7 >= *(a3 + 2340))
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_217:
  __break(0x5519u);
  return result;
}

unint64_t ddp_udc_int_abkd_unpddfixed(unint64_t result, _WORD *a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = (a4 + 408);
  if (a2[8] >= 1)
  {
    v9 = 0;
    v10 = a4 + 2280;
    v11 = *(a3 + 24);
    v12 = *(a3 + 26);
    v13 = a4 + 408;
    do
    {
      v14 = 2 * (v12 << v11);
      if (v11 < 16)
      {
        ++v11;
      }

      else
      {
        v15 = (*a3 + 2);
        v16 = *a3 + 4;
        if (v16 > *(a3 + 8) || v15 > v16 || v15 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v12 = *v15;
        v11 -= 15;
        *(a3 + 26) = v12;
        *a3 = v15;
        v14 |= v12 << v11;
      }

      *(a3 + 24) = v11;
      if (v13 < v8 || v13 + 312 > v10 || v13 > v13 + 312)
      {
        goto LABEL_421;
      }

      *(v13 + 4) = HIWORD(v14);
      ++v9;
      v19 = a2[8];
      v13 += 312;
    }

    while (v9 < v19);
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = a4 + 720;
      do
      {
        v22 = 2 * (v12 << v11);
        if (v11 < 16)
        {
          ++v11;
        }

        else
        {
          v23 = (*a3 + 2);
          v24 = *a3 + 4;
          if (v24 > *(a3 + 8) || v23 > v24 || v23 < *(a3 + 16))
          {
            goto LABEL_421;
          }

          v12 = *v23;
          v11 -= 15;
          *(a3 + 26) = v12;
          *a3 = v23;
          v22 |= v12 << v11;
        }

        *(a3 + 24) = v11;
        if (v21 - 312 < v8 || v21 > v10 || v21 - 312 > v21)
        {
          goto LABEL_421;
        }

        *(v21 - 136) = HIWORD(v22);
        ++v20;
        v21 += 312;
      }

      while (v20 < a2[8]);
    }
  }

  if (a2[10] >= 1)
  {
    v27 = 0;
    LOWORD(v28) = *(a3 + 24);
    v29 = *(a3 + 26);
    v30 = (a4 + 2280);
    do
    {
      v31 = 2 * (v29 << v28);
      if (v28 < 16)
      {
        v28 = v28 + 1;
      }

      else
      {
        result = *(a3 + 16);
        v32 = (*a3 + 2);
        v33 = *a3 + 4;
        if (v33 > *(a3 + 8) || v32 > v33 || v32 < result)
        {
          goto LABEL_421;
        }

        v29 = *v32;
        v28 = v28 - 15;
        *(a3 + 26) = v29;
        *a3 = v32;
        v31 |= v29 << v28;
      }

      *(a3 + 24) = v28;
      if (v30 < a4 + 2280 || (v30 + 6) > a4 + 2304 || v30 > v30 + 6)
      {
        goto LABEL_421;
      }

      *v30 = HIWORD(v31);
      if (v31 >= 0x10000)
      {
        v36 = v29 << v28;
        v37 = v28 + 8;
        *(a3 + 24) = v28 + 8;
        v38 = __OFSUB__(v28, 8);
        v28 -= 8;
        if (v28 < 0 != v38)
        {
          LOWORD(v28) = v37;
        }

        else
        {
          v39 = *a3;
          v40 = *a3 + 4;
          if (v40 > *(a3 + 8))
          {
            goto LABEL_421;
          }

          v41 = (v39 + 2);
          if (v39 + 2 > v40 || v41 < *(a3 + 16))
          {
            goto LABEL_421;
          }

          v29 = *v41;
          *(a3 + 26) = v29;
          *a3 = v41;
          *(a3 + 24) = v28;
          v36 |= v29 >> (8 - v28);
        }

        v30[1] = (v36 >> 1) & 0xFF80;
      }

      ++v27;
      v30 += 6;
    }

    while (v27 < a2[10]);
  }

  if (v8 < a4)
  {
    goto LABEL_421;
  }

  v42 = *(a3 + 24);
  v43 = *(a3 + 26);
  v44 = 2 * (v43 << *(a3 + 24));
  if (v42 < 16)
  {
    v48 = v42 + 1;
  }

  else
  {
    v45 = *a3;
    v46 = *a3 + 4;
    if (v46 > *(a3 + 8))
    {
      goto LABEL_421;
    }

    v47 = (v45 + 2);
    if (v45 + 2 > v46 || v47 < *(a3 + 16))
    {
      goto LABEL_421;
    }

    v43 = *v47;
    v48 = v42 - 15;
    *(a3 + 26) = v43;
    *a3 = v47;
    v44 |= v43 << v48;
  }

  v49 = a4 + 2280;
  *(a3 + 24) = v48;
  *(a4 + 4) = HIWORD(v44);
  if (v44 >= 0x10000)
  {
    v51 = v48;
    v52 = 2 * (v43 << v48);
    if (v51 < 16)
    {
      LOWORD(v51) = v51 + 1;
    }

    else
    {
      v53 = *a3;
      v54 = *a3 + 4;
      if (v54 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v55 = (v53 + 2);
      if (v53 + 2 > v54 || v55 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v43 = *v55;
      LOWORD(v51) = v51 - 15;
      *(a3 + 26) = v43;
      *a3 = v55;
      v52 |= v43 << v51;
    }

    v56 = HIWORD(v52);
    *(a3 + 24) = v51;
    *(a4 + 6) = v56;
    if (v56)
    {
      if (!a2[6])
      {
        return 4098;
      }

      if (a2[8] < 1)
      {
        return 4110;
      }

      v71 = 0;
      v72 = 0;
      v73 = a4 + 408;
      do
      {
        v74 = 2 * (v43 << v51);
        if (v51 < 16)
        {
          v51 = v51 + 1;
        }

        else
        {
          v75 = (*a3 + 2);
          v76 = *a3 + 4;
          if (v76 > *(a3 + 8) || v75 > v76 || v75 < *(a3 + 16))
          {
            goto LABEL_421;
          }

          v43 = *v75;
          v51 = v51 - 15;
          *(a3 + 26) = v43;
          *a3 = v75;
          v74 |= v43 << v51;
        }

        *(a3 + 24) = v51;
        if (v73 + 312 > v49 || v73 > v73 + 312 || v73 < v8)
        {
          goto LABEL_421;
        }

        v79 = HIWORD(v74);
        *(v73 + 8) = v79;
        if (v79)
        {
          ++v72;
        }

        ++v71;
        v80 = a2[8];
        v73 += 312;
      }

      while (v71 < v80);
      if (v72 < 2)
      {
        return 4110;
      }

      if (v80 >= 1)
      {
        v130 = 0;
        v131 = a4 + 408;
        do
        {
          v132 = v131 + 312 > v49 || v131 > v131 + 312;
          if (v132 || v131 < v8)
          {
            goto LABEL_421;
          }

          if (*(v131 + 8))
          {
            *(a4 + 50) = v130;
            break;
          }

          ++v130;
          v131 += 312;
        }

        while (v80 != v130);
      }

      if (a2[6] == 2)
      {
        v141 = v51;
        v142 = 2 * (v43 << v51);
        if (v51 < 16)
        {
          LOWORD(v51) = v51 + 1;
        }

        else
        {
          v143 = *a3;
          v144 = *a3 + 4;
          if (v144 > *(a3 + 8))
          {
            goto LABEL_421;
          }

          v145 = (v143 + 2);
          if (v143 + 2 > v144 || v145 < *(a3 + 16))
          {
            goto LABEL_421;
          }

          v43 = *v145;
          LOWORD(v51) = v141 - 15;
          *(a3 + 26) = v43;
          *a3 = v145;
          v142 |= v43 << (v141 - 15);
        }

        v146 = HIWORD(v142);
        *(a3 + 24) = v51;
      }

      else
      {
        LOWORD(v146) = 0;
      }

      *(a4 + 58) = v146;
      v147 = v51;
      v148 = 16 * (v43 << v51);
      if (v147 < 13)
      {
        v152 = v147 + 4;
      }

      else
      {
        v149 = *a3;
        v150 = *a3 + 4;
        if (v150 > *(a3 + 8))
        {
          goto LABEL_421;
        }

        v151 = (v149 + 2);
        if (v149 + 2 > v150 || v151 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v43 = *v151;
        v152 = v147 - 12;
        *(a3 + 26) = v43;
        *a3 = v151;
        v148 |= v43 << v152;
      }

      LODWORD(v153) = HIWORD(v148);
      *(a3 + 24) = v152;
      *(a4 + 8) = v153;
      *(a4 + 52) = v153;
      v154 = 16 * (v43 << v152);
      if (v152 < 13)
      {
        v157 = v152 + 4;
      }

      else
      {
        v155 = *a3 + 4;
        if (v155 > *(a3 + 8))
        {
          goto LABEL_421;
        }

        v153 = *a3 + 2;
        if (v153 > v155 || v153 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v156 = *v153;
        v157 = v152 - 12;
        *(a3 + 26) = v156;
        *a3 = v153;
        v154 |= v156 << v157;
        LOWORD(v153) = *(a4 + 52);
      }

      v158 = HIWORD(v154);
      *(a3 + 24) = v157;
      *(a4 + 10) = v158;
      v159 = v158 + 3;
      v160 = (v158 + 3);
      *(a4 + 54) = v159;
      if (v160 < v153)
      {
        return 4109;
      }

      *a4 = 12 * v153 + 37;
      *(a4 + 2) = 12 * v160 + 37;
      v161 = &ddp_udc_int_cpl_bndtab[v153];
      if (v161 < ddp_udc_int_cpl_bndtab)
      {
        goto LABEL_421;
      }

      if (v161 + 1 > ddp_udc_int_mtx_rematbnds)
      {
        goto LABEL_421;
      }

      if (v161 > v161 + 1)
      {
        goto LABEL_421;
      }

      *(a4 + 128) = ddp_udc_int_cpl_bndtab[v153];
      v162 = (a4 + 14 + 2 * v153);
      if (v162 < a4 + 14 || (v162 + 1) > a4 + 50 || v162 > v162 + 1)
      {
        goto LABEL_421;
      }

      *v162 = 0;
      if ((*(a4 + 52) + 1) < *(a4 + 54))
      {
        v163 = (*(a4 + 52) + 1);
        v164 = (a4 + 2 * v163 + 14);
        do
        {
          v165 = *(a3 + 24);
          v166 = 2 * (*(a3 + 26) << *(a3 + 24));
          if (v165 < 16)
          {
            v172 = v165 + 1;
          }

          else
          {
            v167 = (*a3 + 2);
            v168 = *a3 + 4;
            if (v168 > *(a3 + 8) || v167 > v168 || v167 < *(a3 + 16))
            {
              goto LABEL_421;
            }

            v171 = *v167;
            v172 = v165 - 15;
            *(a3 + 26) = v171;
            *a3 = v167;
            v166 |= v171 << v172;
          }

          *(a3 + 24) = v172;
          if (v164 < a4 + 14 || (v164 + 1) > a4 + 50 || v164 > v164 + 1)
          {
            goto LABEL_421;
          }

          *v164++ = HIWORD(v166);
          ++v163;
        }

        while (v163 < *(a4 + 54));
      }
    }

    else
    {
      v57 = a2[8];
      if (v57 >= 1)
      {
        v58 = a4 + 408;
        do
        {
          v59 = v58 + 312 > v49 || v58 > v58 + 312;
          if (v59 || v58 < v8)
          {
            goto LABEL_421;
          }

          *(v58 + 8) = 0;
          v58 += 312;
        }

        while (--v57);
      }

      *(a4 + 58) = 0;
      *(a4 + 50) = 0;
    }
  }

  else
  {
    if (v7)
    {
      v50 = 0;
    }

    else
    {
      v50 = 4097;
    }

    if (!v7)
    {
      return v50;
    }
  }

  if (*(a4 + 6))
  {
    v61 = a2[8];
    if (v61 >= 1)
    {
      v62 = 0;
      v63 = 0;
      v64 = a4 + 408;
      while (v64 >= v8 && v64 + 312 <= v49 && v64 <= v64 + 312)
      {
        if (*(v64 + 8))
        {
          v65 = *(a3 + 24);
          v66 = 2 * (*(a3 + 26) << *(a3 + 24));
          if (v65 < 16)
          {
            v70 = v65 + 1;
          }

          else
          {
            v67 = *a3 + 4;
            if (v67 > *(a3 + 8))
            {
              goto LABEL_421;
            }

            v68 = (*a3 + 2);
            if (v68 > v67 || v68 < *(a3 + 16))
            {
              goto LABEL_421;
            }

            v69 = *v68;
            v70 = v65 - 15;
            *(a3 + 26) = v69;
            *a3 = v68;
            v66 |= v69 << v70;
          }

          *(a3 + 24) = v70;
          *(v64 + 10) = HIWORD(v66);
          result = ddp_udc_int_unpcplco(v7, v62, a3, a4);
          v50 = result;
          if (result > 0)
          {
            return v50;
          }

          if (result)
          {
            v63 = result;
          }

          LOWORD(v61) = a2[8];
        }

        ++v62;
        v64 += 312;
        if (v62 >= v61)
        {
          goto LABEL_135;
        }
      }

      goto LABEL_421;
    }

    v63 = 0;
LABEL_135:
    v265 = v8;
    v266 = a4 + 2280;
    v267 = v8;
    ddp_udc_int_unpphsflgs(a3, &v265, a4);
  }

  else
  {
    v63 = 0;
  }

  result = ddp_udc_int_unprematstr(v7, a2, a3, a4);
  v50 = result;
  if (result > 0)
  {
    return v50;
  }

  v81 = *(a4 + 2338);
  v82 = a2[8];
  v83 = a2[8];
  if (*(a4 + 6))
  {
    v84 = *(a3 + 24);
    v85 = 4 * (*(a3 + 26) << *(a3 + 24));
    if (v84 < 15)
    {
      v89 = v84 + 2;
    }

    else
    {
      v86 = *a3 + 4;
      if (v86 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v87 = (*a3 + 2);
      if (v87 > v86 || v87 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v88 = *v87;
      v89 = v84 - 14;
      *(a3 + 26) = v88;
      *a3 = v87;
      v85 |= v88 << v89;
      v83 = a2[8];
    }

    *(a3 + 24) = v89;
    *(a4 + 120) = HIWORD(v85);
  }

  if (v83 >= 1)
  {
    v90 = 0;
    v91 = *(a3 + 24);
    v92 = *(a3 + 26);
    v93 = v8;
    do
    {
      v94 = 4 * (v92 << v91);
      if (v91 < 15)
      {
        v91 += 2;
      }

      else
      {
        v95 = (*a3 + 2);
        v96 = *a3 + 4;
        if (v96 > *(a3 + 8) || v95 > v96 || v95 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v92 = *v95;
        v91 -= 14;
        *(a3 + 26) = v92;
        *a3 = v95;
        v94 |= v92 << v91;
      }

      *(a3 + 24) = v91;
      if (v93 < v8 || v93 + 312 > v49 || v93 > v93 + 312)
      {
        goto LABEL_421;
      }

      *(v93 + 40) = HIWORD(v94);
      ++v90;
      v93 += 312;
    }

    while (v90 < a2[8]);
    v83 = a2[8];
  }

  if (a2[7])
  {
    v99 = *(a3 + 24);
    v100 = 2 * (*(a3 + 26) << *(a3 + 24));
    if (v99 < 16)
    {
      v104 = v99 + 1;
    }

    else
    {
      v101 = *a3 + 4;
      if (v101 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v102 = (*a3 + 2);
      if (v102 > v101 || v102 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v103 = *v102;
      v104 = v99 - 15;
      *(a3 + 26) = v103;
      *a3 = v102;
      v100 |= v103 << v104;
    }

    *(a3 + 24) = v104;
    v105 = &v8[156 * v82];
    if (v105 < v8 || v105 + 312 > v49 || v105 > v105 + 312)
    {
      goto LABEL_421;
    }

    *(v105 + 40) = HIWORD(v100);
    v83 = a2[8];
  }

  if (v83 >= 1)
  {
    v106 = 0;
    v107 = 0;
    do
    {
      v108 = a4 + v106 + 408;
      v109 = a4 + v106 + 720;
      v110 = v108 < v8 || v109 > v49;
      if (v110 || v108 > v109)
      {
        goto LABEL_421;
      }

      if (*(a4 + v106 + 448))
      {
        v112 = a4 + v106;
        if (*(a4 + v106 + 416))
        {
          *(v112 + 704) = *a4;
          *(v112 + 410) = *(a4 + 2);
        }

        else
        {
          v113 = *(a3 + 24);
          v114 = (*(a3 + 26) << *(a3 + 24)) << 6;
          if (v113 < 11)
          {
            v118 = v113 + 6;
          }

          else
          {
            v115 = *a3 + 4;
            if (v115 > *(a3 + 8))
            {
              goto LABEL_421;
            }

            v116 = (*a3 + 2);
            if (v116 > v115 || v116 < *(a3 + 16))
            {
              goto LABEL_421;
            }

            v117 = *v116;
            v118 = v113 - 10;
            *(a3 + 26) = v117;
            *a3 = v116;
            v114 |= v117 << v118;
          }

          *(a3 + 24) = v118;
          v119 = a4 + v106;
          *(a4 + v106 + 414) = HIWORD(v114);
          if (v114 >> 16 > 60)
          {
            return 4103;
          }

          v120 = 3 * HIWORD(v114) + 73;
          *(v119 + 704) = v120;
          *(v119 + 410) = v120;
          v83 = a2[8];
        }
      }

      ++v107;
      v106 += 312;
    }

    while (v107 < v83);
  }

  result = ddp_udc_int_checkexpstr(v7, a2, a4);
  if (result)
  {
    return result;
  }

  v265 = v8;
  v266 = a4 + 2280;
  v267 = v8;
  result = ddp_udc_int_savepkexps(v81, a2, a3, a4, &v265);
  if (v50)
  {
    v50 = v50;
  }

  else
  {
    v50 = v63;
  }

  v121 = (a4 + 2344);
  if (a4 + 2344 > a4 + 2380)
  {
    goto LABEL_421;
  }

  v122 = a2[8];
  v123 = *(a3 + 24);
  v124 = *(a3 + 26);
  v125 = 2 * (v124 << *(a3 + 24));
  if (v123 < 16)
  {
    v129 = v123 + 1;
  }

  else
  {
    v126 = *a3;
    v127 = *a3 + 4;
    if (v127 > *(a3 + 8))
    {
      goto LABEL_421;
    }

    v128 = (v126 + 2);
    if (v126 + 2 > v127 || v128 < *(a3 + 16))
    {
      goto LABEL_421;
    }

    v124 = *v128;
    v129 = v123 - 15;
    *(a3 + 26) = v124;
    *a3 = v128;
    v125 |= v124 << v129;
  }

  *(a3 + 24) = v129;
  *v121 = HIWORD(v125);
  if (!v7 && v125 < 0x10000)
  {
    return 4104;
  }

  if (v125 >= 0x10000)
  {
    v134 = v129;
    v135 = 4 * (v124 << v129);
    v136 = v129 - 14;
    if (v134 <= 14)
    {
      v136 = v134 + 2;
      v140 = v124 << (v134 + 2);
    }

    else
    {
      v137 = *a3;
      v138 = *a3 + 4;
      if (v138 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v139 = (v137 + 2);
      if (v137 + 2 > v138 || v139 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v124 = *v139;
      *(a3 + 26) = v124;
      *a3 = v139;
      v140 = v124 << v136;
      v135 |= v124 << v136;
    }

    *(a3 + 24) = v136;
    *(a4 + 2350) = HIWORD(v135);
    v173 = 4 * v140;
    v174 = v136 - 14;
    if (v136 <= 14)
    {
      v174 = v136 + 2;
      v178 = v124 << (v136 + 2);
    }

    else
    {
      v175 = *a3;
      v176 = *a3 + 4;
      if (v176 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v177 = (v175 + 2);
      if (v175 + 2 > v176 || v177 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v124 = *v177;
      *(a3 + 26) = v124;
      *a3 = v177;
      v178 = v124 << v174;
      v173 |= v124 << v174;
    }

    *(a3 + 24) = v174;
    *(a4 + 2352) = HIWORD(v173);
    v179 = 4 * v178;
    v180 = v174 - 14;
    if (v174 <= 14)
    {
      v180 = v174 + 2;
      v184 = v124 << (v174 + 2);
    }

    else
    {
      v181 = *a3;
      v182 = *a3 + 4;
      if (v182 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v183 = (v181 + 2);
      if (v181 + 2 > v182 || v183 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v124 = *v183;
      *(a3 + 26) = v124;
      *a3 = v183;
      v184 = v124 << v180;
      v179 |= v124 << v180;
    }

    *(a3 + 24) = v180;
    *(a4 + 2354) = HIWORD(v179);
    v185 = 4 * v184;
    v186 = v180 - 14;
    if (v180 <= 14)
    {
      v186 = v180 + 2;
      v190 = v124 << (v180 + 2);
    }

    else
    {
      v187 = *a3;
      v188 = *a3 + 4;
      if (v188 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v189 = (v187 + 2);
      if (v187 + 2 > v188 || v189 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v124 = *v189;
      *(a3 + 26) = v124;
      *a3 = v189;
      v190 = v124 << v186;
      v185 |= v124 << v186;
    }

    *(a3 + 24) = v186;
    *(a4 + 2356) = HIWORD(v185);
    v191 = 8 * v190;
    if (v186 < 14)
    {
      v129 = v186 + 3;
    }

    else
    {
      v192 = *a3;
      v193 = *a3 + 4;
      if (v193 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v194 = (v192 + 2);
      if (v192 + 2 > v193 || v194 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v124 = *v194;
      v129 = v186 - 13;
      *(a3 + 26) = v124;
      *a3 = v194;
      v191 |= v124 << v129;
    }

    *(a3 + 24) = v129;
    *(a4 + 2358) = HIWORD(v191);
  }

  v195 = 2 * (v124 << v129);
  if (v129 < 16)
  {
    LOWORD(v199) = v129 + 1;
  }

  else
  {
    v196 = *a3;
    v197 = *a3 + 4;
    if (v197 > *(a3 + 8))
    {
      goto LABEL_421;
    }

    v198 = (v196 + 2);
    if (v196 + 2 > v197 || v198 < *(a3 + 16))
    {
      goto LABEL_421;
    }

    v124 = *v198;
    LOWORD(v199) = v129 - 15;
    *(a3 + 26) = v124;
    *a3 = v198;
    v195 |= v124 << v199;
  }

  *(a3 + 24) = v199;
  *(a4 + 2346) = HIWORD(v195);
  if (!v7 && v195 < 0x10000)
  {
    return 4105;
  }

  if (v195 >= 0x10000)
  {
    v200 = (v124 << v199) << 6;
    if (v199 < 11)
    {
      v199 = v199 + 6;
    }

    else
    {
      v201 = *a3;
      v202 = *a3 + 4;
      if (v202 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v203 = (v201 + 2);
      if (v201 + 2 > v202 || v203 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v124 = *v203;
      v199 = v199 - 10;
      *(a3 + 26) = v124;
      *a3 = v203;
      v200 |= v124 << v199;
    }

    *(a3 + 24) = v199;
    *(a4 + 2360) = HIWORD(v200);
    if (*(a4 + 6))
    {
      v204 = 16 * (v124 << v199);
      v205 = v199 - 12;
      if (v199 <= 12)
      {
        v205 = v199 + 4;
        v209 = v124 << (v199 + 4);
      }

      else
      {
        v206 = *a3;
        v207 = *a3 + 4;
        if (v207 > *(a3 + 8))
        {
          goto LABEL_421;
        }

        v208 = (v206 + 2);
        if (v206 + 2 > v207 || v208 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v124 = *v208;
        *(a3 + 26) = v124;
        *a3 = v208;
        v209 = v124 << v205;
        v204 |= v124 << v205;
      }

      *(a3 + 24) = v205;
      *(a4 + 178) = HIWORD(v204);
      v210 = 8 * v209;
      if (v205 < 14)
      {
        LOWORD(v199) = v205 + 3;
      }

      else
      {
        v211 = *a3;
        v212 = *a3 + 4;
        if (v212 > *(a3 + 8))
        {
          goto LABEL_421;
        }

        v213 = (v211 + 2);
        if (v211 + 2 > v212 || v213 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v124 = *v213;
        LOWORD(v199) = v205 - 13;
        *(a3 + 26) = v124;
        *a3 = v213;
        v210 |= v124 << (v205 - 13);
      }

      *(a3 + 24) = v199;
      *(a4 + 176) = HIWORD(v210);
    }

    if (a2[8] >= 1)
    {
      v214 = 0;
      v215 = v8;
      do
      {
        v216 = v199;
        v217 = 16 * (v124 << v199);
        if (v216 < 13)
        {
          v222 = v216 + 4;
        }

        else
        {
          v218 = (*a3 + 2);
          v219 = *a3 + 4;
          if (v219 > *(a3 + 8) || v218 > v219 || v218 < *(a3 + 16))
          {
            goto LABEL_421;
          }

          v124 = *v218;
          v222 = v216 - 12;
          *(a3 + 26) = v124;
          *a3 = v218;
          v217 |= v124 << v222;
        }

        *(a3 + 24) = v222;
        if (v215 + 312 > v49 || v215 > v215 + 312 || v215 < v8)
        {
          goto LABEL_421;
        }

        *(v215 + 98) = HIWORD(v217);
        v199 = v222;
        v223 = 8 * (v124 << v222);
        if (v199 < 14)
        {
          LOWORD(v199) = v199 + 3;
        }

        else
        {
          v224 = *a3;
          v225 = *a3 + 4;
          if (v225 > *(a3 + 8))
          {
            goto LABEL_421;
          }

          v226 = (v224 + 2);
          if (v224 + 2 > v225 || v226 < *(a3 + 16))
          {
            goto LABEL_421;
          }

          v124 = *v226;
          LOWORD(v199) = v199 - 13;
          *(a3 + 26) = v124;
          *a3 = v226;
          v223 |= v124 << v199;
        }

        *(a3 + 24) = v199;
        *(v215 + 96) = HIWORD(v223);
        ++v214;
        v215 += 312;
      }

      while (v214 < a2[8]);
    }

    if (a2[7])
    {
      v227 = v199;
      v228 = 16 * (v124 << v199);
      if (v227 < 13)
      {
        v232 = v227 + 4;
      }

      else
      {
        v229 = *a3;
        v230 = *a3 + 4;
        if (v230 > *(a3 + 8))
        {
          goto LABEL_421;
        }

        v231 = (v229 + 2);
        if (v229 + 2 > v230 || v231 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v124 = *v231;
        v232 = v227 - 12;
        *(a3 + 26) = v124;
        *a3 = v231;
        v228 |= v124 << v232;
      }

      *(a3 + 24) = v232;
      v233 = &v8[156 * v122];
      if (v233 + 312 > v49 || v233 > v233 + 312 || v233 < v8)
      {
        goto LABEL_421;
      }

      *(v233 + 98) = HIWORD(v228);
      v199 = v232;
      v234 = 8 * (v124 << v232);
      if (v199 < 14)
      {
        LOWORD(v199) = v199 + 3;
      }

      else
      {
        v235 = *a3;
        v236 = *a3 + 4;
        if (v236 > *(a3 + 8))
        {
          goto LABEL_421;
        }

        v237 = (v235 + 2);
        if (v235 + 2 > v236 || v237 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v124 = *v237;
        LOWORD(v199) = v199 - 13;
        *(a3 + 26) = v124;
        *a3 = v237;
        v234 |= v124 << v199;
      }

      *(a3 + 24) = v199;
      *(v233 + 96) = HIWORD(v234);
    }
  }

  if (*(a4 + 6))
  {
    v238 = 2 * (v124 << v199);
    if (v199 < 16)
    {
      v242 = v199 + 1;
    }

    else
    {
      v239 = *a3;
      v240 = *a3 + 4;
      if (v240 > *(a3 + 8))
      {
        goto LABEL_421;
      }

      v241 = (v239 + 2);
      if (v239 + 2 > v240 || v241 < *(a3 + 16))
      {
        goto LABEL_421;
      }

      v124 = *v241;
      v242 = v199 - 15;
      *(a3 + 26) = v124;
      *a3 = v241;
      v238 |= v124 << v242;
    }

    *(a3 + 24) = v242;
    *(a4 + 62) = HIWORD(v238);
    if (v238 >= 0x10000)
    {
      v243 = v242;
      v244 = 8 * (v124 << v242);
      v245 = v243 - 13;
      if (v243 <= 13)
      {
        v245 = v243 + 3;
        v249 = v124 << (v243 + 3);
      }

      else
      {
        v246 = *a3 + 4;
        if (v246 > *(a3 + 8))
        {
          goto LABEL_421;
        }

        v247 = (*a3 + 2);
        if (v247 > v246 || v247 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v248 = *v247;
        *(a3 + 26) = v248;
        *a3 = v247;
        v249 = v248 << v245;
        v244 |= v248 << v245;
      }

      *(a3 + 24) = v245;
      *(a4 + 66) = ((v244 >> 8) & 0xFF00) + 768;
      v250 = 8 * v249;
      if (v245 < 14)
      {
        v254 = v245 + 3;
      }

      else
      {
        v251 = *a3 + 4;
        if (v251 > *(a3 + 8))
        {
          goto LABEL_421;
        }

        v252 = (*a3 + 2);
        if (v252 > v251 || v252 < *(a3 + 16))
        {
          goto LABEL_421;
        }

        v253 = *v252;
        v254 = v245 - 13;
        *(a3 + 26) = v253;
        *a3 = v252;
        v250 |= v253 << v254;
      }

      *(a3 + 24) = v254;
      *(a4 + 64) = ((v250 >> 8) & 0xFF00) + 768;
      *(a4 + 336) = 1;
    }

    else if (!v7)
    {
      return 4106;
    }
  }

  if (*v121 || *(a4 + 2346))
  {
    v255 = a2[9];
    if (v255 >= 1)
    {
      v256 = a4 + 720;
      while (v256 <= v49 && v256 >= 0x138 && v256 - 312 >= v8)
      {
        *(v256 - 56) = 1;
        v256 += 312;
        if (!--v255)
        {
          goto LABEL_406;
        }
      }

      goto LABEL_421;
    }

LABEL_406:
    *(a4 + 336) = 1;
  }

  v265 = v8;
  v266 = a4 + 2280;
  v267 = v8;
  result = ddp_udc_int_unpdeltbai(v7, a2, a3, v121, a4, &v265);
  if (result)
  {
    return result;
  }

  if (a4 + 2368 <= a4 + 2372)
  {
    ddp_udc_int_abk_calcminsnrflg(a2[9], a4, (a4 + 2368));
    v257 = *a3;
    if (*a3)
    {
      v258 = *(a3 + 32);
      if (v258)
      {
        LODWORD(v257) = *(a3 + 24) + 16 * ((v257 - v258) >> 1);
      }

      else
      {
        LODWORD(v257) = 0;
      }
    }

    *(a4 + 2432) = v257;
    v259 = bsod_unprj_11184(a3, 1);
    *(a4 + 2384) = v259;
    if (v259)
    {
      v260 = bsod_unprj_11184(a3, 9);
      *(a4 + 2386) = v260;
      v261 = *(a3 + 32);
      v262 = *(a3 + 16);
      *(a4 + 2392) = *a3;
      *(a4 + 2408) = v262;
      *(a4 + 2424) = v261;
      ddp_udc_int_bsod_skip(a3, 8 * v260);
    }

    if (*a3 && (v263 = *(a3 + 32)) != 0)
    {
      v264 = *(a3 + 24) + 16 * ((*a3 - v263) >> 1) - 1;
    }

    else
    {
      v264 = -1;
    }

    *(a4 + 2436) = v264;
    return v50;
  }

LABEL_421:
  __break(0x5519u);
  return result;
}

unint64_t *ddp_udc_int_bsid_getbsid(__int128 *a1, _WORD *a2)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v3;
  v21 = v3;
  v4 = *(a1 + 12);
  v19[0] = &v20;
  v19[1] = &v23;
  v19[2] = &v20;
  v17 = *a1;
  v18 = *(a1 + 2);
  result = ddp_udc_int_bsod_init(&v17, v4, v19);
  v6 = (WORD4(v21) + 40) >> 4;
  v7 = (WORD4(v21) + 40) & 0xF;
  WORD4(v21) = (WORD4(v21) + 40) & 0xF;
  v8 = (v20 + 2 * v6);
  *&v20 = v8;
  v9 = v8 + 1;
  if ((v8 + 1) > *(&v20 + 1) || v8 >= v9 || v8 < v21)
  {
LABEL_26:
    __break(0x5519u);
    return result;
  }

  WORD5(v21) = *v8;
  v12 = 32 * (WORD5(v21) << v7);
  if (v7 >= 0xC)
  {
    v13 = v8 + 2;
    if (v13 > *(&v20 + 1) || v9 > v13 || v9 < v21)
    {
      goto LABEL_26;
    }

    v12 |= *v9 << (v7 - 11);
  }

  *a2 = HIWORD(v12);
  if (HIWORD(v12) - 11 < 6u || HIWORD(v12) < 9u)
  {
    return 0;
  }

  else
  {
    return 1540;
  }
}

uint64_t ddp_udc_int_bsid_unp(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = a2 + 44;
  v4 = a2 + 48;
  v5 = a2 + 52;
  v6 = a2 + 56;
  v7 = a2 + 60;
  v8 = a2 + 102;
  v9 = (a2 + 32);
  *(a2 + 24) = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = (v3 + 2 * v2);
    if ((v12 + 1) > v4 || v12 > v12 + 1)
    {
      goto LABEL_956;
    }

    *v12 = 0;
    v14 = (v4 + 2 * v2);
    if ((v14 + 1) > v5 || v14 > v14 + 1)
    {
      goto LABEL_956;
    }

    *v14 = 0;
    v16 = (v5 + 2 * v2);
    if ((v16 + 1) > v6)
    {
      goto LABEL_956;
    }

    if (v16 > v16 + 1)
    {
      goto LABEL_956;
    }

    *v16 = 0;
    v17 = (v6 + 2 * v2);
    if ((v17 + 1) > v7)
    {
      goto LABEL_956;
    }

    if (v17 > v17 + 1)
    {
      goto LABEL_956;
    }

    *v17 = 0;
    v18 = (v7 + 2 * v2);
    if ((v18 + 1) > a2 + 64)
    {
      goto LABEL_956;
    }

    if (v18 > v18 + 1)
    {
      goto LABEL_956;
    }

    *v18 = 0;
    v19 = (a2 + 98 + 2 * v2);
    if ((v19 + 1) > v8)
    {
      goto LABEL_956;
    }

    if (v19 > v19 + 1)
    {
      goto LABEL_956;
    }

    *v19 = 0;
    v20 = (v8 + 2 * v2);
    if ((v20 + 1) > a2 + 106)
    {
      goto LABEL_956;
    }

    if (v20 > v20 + 1)
    {
      goto LABEL_956;
    }

    *v20 = 0;
    v21 = (a2 + 32 + 6 * v2);
    if (v21 + 6 > v3 || v21 > (v21 + 6))
    {
      goto LABEL_956;
    }

    v10 = 0;
    *v21 = 0;
    v2 = 1;
  }

  while ((v11 & 1) != 0);
  v22 = 0;
  *(a2 + 68) = 0;
  *(a2 + 10) = 0;
  *(a2 + 64) = 65537;
  *(a2 + 76) = 0;
  *(a2 + 80) = xmmword_19B0B2F30;
  *(a2 + 96) = 0;
  *(a2 + 22) = 0;
  v687 = (a2 + 468);
  *(a2 + 106) = 0;
  *(a2 + 468) = 6;
  *(a2 + 182) = 0;
  *(a2 + 186) = 0;
  v23 = a2 + 202;
  v24 = a2 + 206;
  *(a2 + 192) = 0;
  v25 = a2 + 344;
  v26 = a2 + 348;
  *(a2 + 362) = 0x10000;
  v27 = a2 + 352;
  v28 = 1;
  *(a2 + 196) = 0;
  do
  {
    v29 = v28;
    v30 = (v23 + 2 * v22);
    if ((v30 + 1) > v24 || v30 > v30 + 1)
    {
      goto LABEL_956;
    }

    *v30 = 0;
    v32 = (v25 + 2 * v22);
    if ((v32 + 1) > v26 || v32 > v32 + 1)
    {
      goto LABEL_956;
    }

    *v32 = 0;
    v34 = (v26 + 2 * v22);
    if ((v34 + 1) > v27)
    {
      goto LABEL_956;
    }

    if (v34 > v34 + 1)
    {
      goto LABEL_956;
    }

    *v34 = 0;
    v35 = (v27 + 2 * v22);
    if ((v35 + 1) > a2 + 356 || v35 > v35 + 1)
    {
      goto LABEL_956;
    }

    v28 = 0;
    *v35 = 0;
    v22 = 1;
  }

  while ((v29 & 1) != 0);
  v36 = 0;
  *(a2 + 210) = 0;
  *(a2 + 198) = 655360;
  *(a2 + 214) = 0;
  *(a2 + 252) = 0;
  *(a2 + 286) = 0;
  *(a2 + 290) = 0;
  *(a2 + 296) = 0;
  *(a2 + 300) = 0;
  *(a2 + 304) = 0;
  *(a2 + 310) = 0;
  *(a2 + 360) = 0;
  v683 = (a2 + 360);
  v684 = (a2 + 210);
  v681 = a2 + 332;
  *(a2 + 260) = 0;
  *(a2 + 266) = 0;
  do
  {
    v37 = (a2 + v36 + 332);
    v38 = a2 + v36 + 334;
    if (v38 > v25 || v37 > v38)
    {
      goto LABEL_956;
    }

    *v37 = 0;
    v36 += 2;
  }

  while (v36 != 12);
  v688 = a2 + 32;
  v689 = a2 + 60;
  v679 = (a2 + 252);
  v680 = (a2 + 68);
  v682 = a2 + 356;
  v685 = a2 + 106;
  v686 = a2 + 98;
  v690 = a2 + 56;
  v691 = a2 + 52;
  v692 = (a2 + 64);
  v693 = (a2 + 182);
  v695 = -21846;
  v40 = result;
  result = ddp_udc_int_bsid_getbsid(result, &v695);
  if (!result)
  {
    v678 = v40;
    if (v695 - 11 < 6)
    {
      v42 = v693;
      v41 = a2;
      *(a2 + 368) = 0;
      v43 = v40;
      v44 = *v40;
      v46 = v691;
      v45 = v692;
      v48 = v689;
      v47 = v690;
      if (*v40)
      {
        v49 = *(v40 + 32);
        v51 = v685;
        v50 = v686;
        if (v49)
        {
          LODWORD(v44) = *(v40 + 24) + 16 * ((v44 - v49) >> 1);
        }

        else
        {
          LODWORD(v44) = 0;
        }
      }

      else
      {
        v51 = v685;
        v50 = v686;
      }

      *(a2 + 372) = v44;
      *(a2 + 376) = v44 + 31;
      *(a2 + 368) = 1;
      v59 = *(v40 + 24);
      v60 = *(v40 + 26);
      v61 = v60 << *(v40 + 24) << 16;
      if (v59 < 1)
      {
        LOWORD(v59) = v59 + 16;
      }

      else
      {
        v62 = *v40;
        v63 = *v40 + 4;
        if (v63 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v64 = (v62 + 2);
        if (v62 + 2 > v63 || v64 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v60 = *v64;
        *(v40 + 26) = v60;
        *v40 = v64;
        v61 |= v60 << v59;
      }

      v65 = HIWORD(v61);
      *(v40 + 24) = v59;
      *a2 = v65;
      if (v65 == 2935)
      {
        v66 = v59;
        v67 = 4 * (v60 << v59);
        v68 = v66 - 14;
        if (v66 <= 14)
        {
          v68 = v66 + 2;
        }

        else
        {
          v69 = *v40;
          v70 = *v40 + 4;
          if (v70 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v71 = (v69 + 2);
          if (v69 + 2 > v70 || v71 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v60 = *v71;
          *(v40 + 26) = v60;
          *v40 = v71;
          v67 |= v60 << v68;
        }

        *(v40 + 24) = v68;
        *v693 = HIWORD(v67);
        v72 = 8 * (v60 << v68);
        if (v68 < 14)
        {
          v76 = v68 + 3;
          v77 = v60 << (v68 + 3);
        }

        else
        {
          v73 = *v40;
          v74 = *v40 + 4;
          if (v74 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v75 = (v73 + 2);
          if (v73 + 2 > v74 || v75 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v60 = *v75;
          v76 = v68 - 13;
          *(v40 + 26) = v60;
          *v40 = v75;
          v77 = v60 << (v68 - 13);
          HIWORD(v72) |= HIWORD(v77);
        }

        *(v40 + 24) = v76;
        *(a2 + 184) = HIWORD(v72);
        v78 = v77 << 11;
        v79 = v76 - 5;
        if (v76 <= 5)
        {
          v79 = v76 + 11;
          v83 = v60 << (v76 + 11);
        }

        else
        {
          v80 = *v40;
          v81 = *v40 + 4;
          if (v81 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v82 = (v80 + 2);
          if (v80 + 2 > v81 || v82 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v60 = *v82;
          *(v40 + 26) = v60;
          *v40 = v82;
          v83 = v60 << v79;
          v78 |= v60 << v79;
        }

        *(v40 + 24) = v79;
        *(a2 + 186) = HIWORD(v78) + 1;
        v84 = 4 * v83;
        if (v79 < 15)
        {
          v88 = v79 + 2;
        }

        else
        {
          v85 = *v40;
          v86 = *v40 + 4;
          if (v86 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v87 = (v85 + 2);
          if (v85 + 2 > v86 || v87 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v60 = *v87;
          v88 = v79 - 14;
          *(v40 + 26) = v60;
          *v40 = v87;
          v84 |= v60 << (v79 - 14);
        }

        *(v40 + 24) = v88;
        *(a2 + 4) = HIWORD(v84);
        if (HIWORD(v84) == 3)
        {
          return 1541;
        }

        v89 = 4 * (v60 << v88);
        v90 = v88 - 14;
        if (v88 <= 14)
        {
          v90 = v88 + 2;
          v94 = v60 << (v88 + 2);
        }

        else
        {
          v91 = *v40;
          v92 = *v40 + 4;
          if (v92 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v93 = (v91 + 2);
          if (v91 + 2 > v92 || v93 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v60 = *v93;
          *(v40 + 26) = v60;
          *v40 = v93;
          v94 = v60 << v90;
          v89 |= v60 << v90;
        }

        v95 = HIWORD(v89);
        *(v40 + 24) = v90;
        *(a2 + 190) = v95;
        if (v95 == 3)
        {
          v96 = 6;
        }

        else
        {
          v96 = v95 + 1;
        }

        *(a2 + 468) = v96;
        v97 = 8 * v94;
        v98 = v90 - 13;
        if (v90 <= 13)
        {
          v98 = v90 + 3;
          v102 = v60 << (v90 + 3);
        }

        else
        {
          v99 = *v40;
          v100 = *v40 + 4;
          if (v100 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v101 = (v99 + 2);
          if (v99 + 2 > v100 || v101 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v60 = *v101;
          *(v40 + 26) = v60;
          *v40 = v101;
          v102 = v60 << v98;
          v97 |= v60 << v98;
        }

        v103 = HIWORD(v97);
        *(v40 + 24) = v98;
        *(a2 + 12) = HIWORD(v97);
        if (v97 >= 0x10000)
        {
          v104 = 1;
        }

        else
        {
          v104 = 2;
        }

        *(a2 + 20) = v104;
        v105 = 2 * v102;
        if (v98 < 16)
        {
          v109 = v98 + 1;
        }

        else
        {
          v106 = *v40;
          v107 = *v40 + 4;
          if (v107 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v108 = (v106 + 2);
          if (v106 + 2 > v107 || v108 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v60 = *v108;
          v109 = v98 - 15;
          *(v40 + 26) = v60;
          *v40 = v108;
          v105 |= v60 << v109;
          LOWORD(v103) = *(a2 + 12);
        }

        *(v40 + 24) = v109;
        *(a2 + 14) = HIWORD(v105);
        v110 = &ddp_udc_int_gbl_chanary[v103];
        if (v110 < ddp_udc_int_gbl_chanary || v110 + 1 > block_size || v110 > v110 + 1)
        {
          goto LABEL_956;
        }

        v111 = *v110;
        *(a2 + 16) = v111;
        *(a2 + 18) = v111 + HIWORD(v105);
        v112 = 32 * (v60 << v109);
        if (v109 < 12)
        {
          v116 = v109 + 5;
        }

        else
        {
          v113 = *v40;
          v114 = *v40 + 4;
          if (v114 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v115 = (v113 + 2);
          if (v113 + 2 > v114 || v115 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v60 = *v115;
          v116 = v109 - 11;
          *(v40 + 26) = v60;
          *v40 = v115;
          v112 |= v60 << v116;
        }

        v117 = HIWORD(v112);
        *(v40 + 24) = v116;
        *(a2 + 8) = v117;
        if (v117 - 11 <= 5)
        {
          if (*(a2 + 20) >= 1)
          {
            for (i = 0; i < *(a2 + 20); ++i)
            {
              v119 = v116;
              v120 = 32 * (v60 << v116);
              if (v119 < 12)
              {
                v125 = v119 + 5;
              }

              else
              {
                v121 = (*v40 + 2);
                v122 = *v40 + 4;
                if (v122 > *(v40 + 8) || v121 > v122 || v121 < *(v40 + 16))
                {
                  goto LABEL_956;
                }

                v60 = *v121;
                v125 = v119 - 11;
                *(v40 + 26) = v60;
                *v40 = v121;
                v120 |= v60 << v125;
              }

              *(v40 + 24) = v125;
              if (v9 < v688 || (v9 + 3) > v3 || v9 > v9 + 3)
              {
                goto LABEL_956;
              }

              *v9 = HIWORD(v120);
              v126 = v125;
              v127 = 2 * (v60 << v125);
              if (v126 < 16)
              {
                v116 = v126 + 1;
              }

              else
              {
                v128 = *v40;
                v129 = *v40 + 4;
                if (v129 > *(v40 + 8))
                {
                  goto LABEL_956;
                }

                v130 = (v128 + 2);
                if (v128 + 2 > v129 || v130 < *(v40 + 16))
                {
                  goto LABEL_956;
                }

                v60 = *v130;
                v116 = v126 - 15;
                *(v40 + 26) = v60;
                *v40 = v130;
                v127 |= v60 << v116;
              }

              *(v40 + 24) = v116;
              v9[1] = HIWORD(v127);
              if (v127 >= 0x10000)
              {
                v131 = v60 << v116;
                *(v40 + 24) = v116 + 8;
                if (v116 < 8)
                {
                  v116 += 8;
                }

                else
                {
                  v132 = *v40;
                  v133 = *v40 + 4;
                  if (v133 > *(v40 + 8))
                  {
                    goto LABEL_956;
                  }

                  v134 = (v132 + 2);
                  if (v132 + 2 > v133 || v134 < *(v40 + 16))
                  {
                    goto LABEL_956;
                  }

                  v60 = *v134;
                  *(v40 + 26) = v60;
                  *v40 = v134;
                  v116 -= 8;
                  *(v40 + 24) = v116;
                  v131 |= v60 >> (8 - v116);
                }

                v9[2] = v131 & 0xFF00;
              }

              v9 += 3;
            }
          }

          if (*v693 == 1)
          {
            v135 = 2 * (v60 << v116);
            if (v116 < 16)
            {
              ++v116;
            }

            else
            {
              v136 = *v40;
              v137 = *v40 + 4;
              if (v137 > *(v40 + 8))
              {
                goto LABEL_956;
              }

              v138 = (v136 + 2);
              if (v136 + 2 > v137 || v138 < *(v40 + 16))
              {
                goto LABEL_956;
              }

              v60 = *v138;
              v116 -= 15;
              *(v40 + 26) = v60;
              *v40 = v138;
              v135 |= v60 << v116;
            }

            v176 = HIWORD(v135);
            *(v40 + 24) = v116;
            *(a2 + 192) = v176;
            if (v176)
            {
              v182 = v60 << v116 << 16;
              if (v116 < 1)
              {
                v116 += 16;
              }

              else
              {
                v183 = *v40;
                v184 = *v40 + 4;
                if (v184 > *(v40 + 8))
                {
                  goto LABEL_956;
                }

                v185 = (v183 + 2);
                if (v183 + 2 > v184 || v185 < *(v40 + 16))
                {
                  goto LABEL_956;
                }

                v60 = *v185;
                *(v40 + 26) = v60;
                *v40 = v185;
                v182 |= v60 << v116;
              }

              *(v40 + 24) = v116;
              *(a2 + 194) = HIWORD(v182);
            }

            else
            {
              v177 = *(a2 + 18);
              if (v177 >= 1)
              {
                v178 = &ddp_udc_int_gbl_chantab[6 * *(a2 + 12)];
                v179 = v178;
                while (1)
                {
                  if (v179 < v178 || v179 + 1 > v178 + 6 || v179 > v179 + 1)
                  {
                    goto LABEL_956;
                  }

                  v180 = *v179;
                  if (v180 != 5)
                  {
                    break;
                  }

                  if (*(a2 + 14))
                  {
                    LOWORD(v181) = *(a2 + 194) | 1;
LABEL_215:
                    *(a2 + 194) = v181;
                  }

                  ++v179;
                  if (!--v177)
                  {
                    goto LABEL_239;
                  }
                }

                v181 = *(a2 + 194) | (0x8000u >> v180);
                goto LABEL_215;
              }
            }
          }

LABEL_239:
          v196 = 2 * (v60 << v116);
          if (v116 < 16)
          {
            v200 = v116 + 1;
          }

          else
          {
            v197 = *v40;
            v198 = *v40 + 4;
            if (v198 > *(v40 + 8))
            {
              goto LABEL_956;
            }

            v199 = (v197 + 2);
            if (v197 + 2 > v198 || v199 < *(v40 + 16))
            {
              goto LABEL_956;
            }

            v60 = *v199;
            v200 = v116 - 15;
            *(v40 + 26) = v60;
            *v40 = v199;
            v196 |= v60 << v200;
          }

          *(v40 + 24) = v200;
          *(a2 + 196) = HIWORD(v196);
          if (v196 < 0x10000)
          {
            goto LABEL_477;
          }

          v201 = *(a2 + 12);
          if (v201 >= 3)
          {
            v202 = 4 * (v60 << v200);
            if (v200 < 15)
            {
              v200 += 2;
            }

            else
            {
              v203 = *v40;
              v204 = *v40 + 4;
              if (v204 > *(v40 + 8))
              {
                goto LABEL_956;
              }

              v205 = (v203 + 2);
              if (v203 + 2 > v204 || v205 < *(v40 + 16))
              {
                goto LABEL_956;
              }

              v60 = *v205;
              v200 -= 14;
              *(v40 + 26) = v60;
              *v40 = v205;
              v202 |= v60 << v200;
              v201 = *(a2 + 12);
            }

            *(v40 + 24) = v200;
            *(a2 + 78) = HIWORD(v202);
            *(a2 + 90) = 1;
            if (v201 >= 3 && (v201 & 1) != 0)
            {
              v206 = v200;
              v207 = 8 * (v60 << v200);
              if (v206 < 14)
              {
                v211 = v206 + 3;
              }

              else
              {
                v208 = *v40;
                v209 = *v40 + 4;
                if (v209 > *(v40 + 8))
                {
                  goto LABEL_956;
                }

                v210 = (v208 + 2);
                if (v208 + 2 > v209 || v210 < *(v40 + 16))
                {
                  goto LABEL_956;
                }

                v60 = *v210;
                v211 = v206 - 13;
                *(v40 + 26) = v60;
                *v40 = v210;
                v207 |= v60 << v211;
              }

              *(v40 + 24) = v211;
              *(a2 + 80) = HIWORD(v207);
              v340 = v211;
              v341 = 8 * (v60 << v211);
              if (v340 < 14)
              {
                v200 = v340 + 3;
              }

              else
              {
                v342 = *v40;
                v343 = *v40 + 4;
                if (v343 > *(v40 + 8))
                {
                  goto LABEL_956;
                }

                v344 = (v342 + 2);
                if (v342 + 2 > v343 || v344 < *(v40 + 16))
                {
                  goto LABEL_956;
                }

                v60 = *v344;
                v200 = v340 - 13;
                *(v40 + 26) = v60;
                *v40 = v344;
                v341 |= v60 << v200;
              }

              v345 = HIWORD(v341);
              *(v40 + 24) = v200;
              *(a2 + 84) = v345;
              *(a2 + 88) = 1;
              v346 = &ddp_udc_int_gbl_lxrx2cmix_tab[v345];
              if (v346 < ddp_udc_int_gbl_lxrx2cmix_tab || v346 + 1 > ddp_udc_int_gbl_lxrx2surmix_tab || v346 > v346 + 1)
              {
                goto LABEL_956;
              }

              *(a2 + 24) = *v346;
              v201 = *(a2 + 12);
            }
          }

          if ((v201 & 4) != 0)
          {
            v347 = v200;
            v348 = 8 * (v60 << v200);
            if (v347 < 14)
            {
              v352 = v347 + 3;
            }

            else
            {
              v349 = *v40;
              v350 = *v40 + 4;
              if (v350 > *(v40 + 8))
              {
                goto LABEL_956;
              }

              v351 = (v349 + 2);
              if (v349 + 2 > v350 || v351 < *(v40 + 16))
              {
                goto LABEL_956;
              }

              v60 = *v351;
              v352 = v347 - 13;
              *(v40 + 26) = v60;
              *v40 = v351;
              v348 |= v60 << v352;
            }

            LODWORD(v353) = HIWORD(v348);
            *(v40 + 24) = v352;
            *(a2 + 82) = HIWORD(v348);
            v354 = v352;
            v355 = 8 * (v60 << v352);
            if (v354 < 14)
            {
              v200 = v354 + 3;
            }

            else
            {
              v356 = *v40;
              v357 = *v40 + 4;
              if (v357 > *(v40 + 8))
              {
                goto LABEL_956;
              }

              v353 = (v356 + 2);
              if (v356 + 2 > v357 || v353 < *(v40 + 16))
              {
                goto LABEL_956;
              }

              v60 = *v353;
              v200 = v354 - 13;
              *(v40 + 26) = v60;
              *v40 = v353;
              v355 |= v60 << v200;
              LOWORD(v353) = *(a2 + 82);
            }

            v358 = HIWORD(v355);
            *(v40 + 24) = v200;
            *(a2 + 86) = HIWORD(v355);
            *(a2 + 88) = 1;
            if (v353 <= 2)
            {
              *(a2 + 82) = 3;
            }

            if (v355 >> 16 <= 2)
            {
              v358 = 3;
              *(a2 + 86) = 3;
            }

            v359 = &ddp_udc_int_gbl_lxrx2surmix_tab[v358];
            if (v359 < ddp_udc_int_gbl_lxrx2surmix_tab || v359 + 1 > ddp_udc_int_jocdec_num_dmx_channels_tab || v359 > v359 + 1)
            {
              goto LABEL_956;
            }

            *(a2 + 26) = *v359;
          }

          if (*(a2 + 14))
          {
            v360 = 2 * (v60 << v200);
            if (v200 < 16)
            {
              ++v200;
            }

            else
            {
              v361 = *v40;
              v362 = *v40 + 4;
              if (v362 > *(v40 + 8))
              {
                goto LABEL_956;
              }

              v363 = (v361 + 2);
              if (v361 + 2 > v362 || v363 < *(v40 + 16))
              {
                goto LABEL_956;
              }

              v60 = *v363;
              v200 -= 15;
              *(v40 + 26) = v60;
              *v40 = v363;
              v360 |= v60 << v200;
            }

            *(v40 + 24) = v200;
            *(a2 + 198) = HIWORD(v360);
            if (v360 >= 0x10000)
            {
              v364 = 32 * (v60 << v200);
              if (v200 < 12)
              {
                v200 += 5;
              }

              else
              {
                v365 = *v40;
                v366 = *v40 + 4;
                if (v366 > *(v40 + 8))
                {
                  goto LABEL_956;
                }

                v367 = (v365 + 2);
                if (v365 + 2 > v366 || v367 < *(v40 + 16))
                {
                  goto LABEL_956;
                }

                v60 = *v367;
                v200 -= 11;
                *(v40 + 26) = v60;
                *v40 = v367;
                v364 |= v60 << v200;
              }

              *(v40 + 24) = v200;
              *(a2 + 200) = HIWORD(v364);
            }
          }

          if (*v693)
          {
LABEL_477:
            result = 0;
            v368 = v687;
            goto LABEL_478;
          }

          if (*(a2 + 20) >= 1)
          {
            v414 = 0;
            v415 = a2 + 208;
            do
            {
              v416 = *(v40 + 24);
              v417 = 2 * (*(v40 + 26) << *(v40 + 24));
              if (v416 < 16)
              {
                v423 = v416 + 1;
              }

              else
              {
                v418 = (*v40 + 2);
                v419 = *v40 + 4;
                if (v419 > *(v40 + 8) || v418 > v419 || v418 < *(v40 + 16))
                {
                  goto LABEL_956;
                }

                v422 = *v418;
                v423 = v416 - 15;
                *(v40 + 26) = v422;
                *v40 = v418;
                v417 |= v422 << v423;
              }

              *(v40 + 24) = v423;
              v424 = (v415 - 6);
              if (v415 - 6 < v23 || v415 - 4 > v24 || v424 > v415 - 4)
              {
                goto LABEL_956;
              }

              *v424 = HIWORD(v417);
              if (v417 >= 0x10000)
              {
                v426 = *(v40 + 24);
                v427 = (*(v40 + 26) << *(v40 + 24)) << 6;
                if (v426 < 11)
                {
                  v431 = v426 + 6;
                }

                else
                {
                  v428 = *v40 + 4;
                  if (v428 > *(v40 + 8))
                  {
                    goto LABEL_956;
                  }

                  v429 = (*v40 + 2);
                  if (v429 > v428 || v429 < *(v40 + 16))
                  {
                    goto LABEL_956;
                  }

                  v430 = *v429;
                  v431 = v426 - 10;
                  *(v40 + 26) = v430;
                  *v40 = v429;
                  v427 |= v430 << v431;
                }

                *(v40 + 24) = v431;
                v432 = (v415 - 2);
                if (v415 - 2 < v24 || v415 > v684 || v432 > v415)
                {
                  goto LABEL_956;
                }

                *v432 = HIWORD(v427);
              }

              else
              {
                v425 = (v415 - 2);
                if (v415 - 2 < v24 || v415 > v684 || v425 > v415)
                {
                  goto LABEL_956;
                }

                *v425 = 51;
              }

              ++v414;
              v415 += 2;
            }

            while (v414 < *(a2 + 20));
            v200 = *(v40 + 24);
            v60 = *(v40 + 26);
          }

          v433 = v200;
          v434 = 2 * (v60 << v200);
          if (v433 < 16)
          {
            v438 = v433 + 1;
          }

          else
          {
            v435 = *v40;
            v436 = *v40 + 4;
            if (v436 > *(v40 + 8))
            {
              goto LABEL_956;
            }

            v437 = (v435 + 2);
            if (v435 + 2 > v436 || v437 < *(v40 + 16))
            {
              goto LABEL_956;
            }

            v60 = *v437;
            v438 = v433 - 15;
            *(v40 + 26) = v60;
            *v40 = v437;
            v434 |= v60 << v438;
          }

          *(v40 + 24) = v438;
          *v684 = HIWORD(v434);
          if (v434 >= 0x10000)
          {
            result = bsod_unprj_11184(v40, 6);
            v43 = v40;
            v41 = a2;
            v438 = *(v40 + 24);
            v60 = *(v40 + 26);
          }

          else
          {
            result = 51;
          }

          v41[106] = result;
          v498 = v438;
          v499 = 4 * (v60 << v438);
          if (v438 < 15)
          {
            v503 = v438 + 2;
          }

          else
          {
            v500 = *v43 + 4;
            if (v500 > *(v43 + 8))
            {
              goto LABEL_956;
            }

            v501 = (*v43 + 2);
            if (v501 > v500 || v501 < *(v43 + 16))
            {
              goto LABEL_956;
            }

            v502 = *v501;
            v503 = v498 - 14;
            *(v43 + 26) = v502;
            *v43 = v501;
            v499 |= v502 << v503;
          }

          v504 = HIWORD(v499);
          *(v43 + 24) = v503;
          v41[107] = v504;
          if (v504 != 3)
          {
            if (v504 == 2)
            {
              ddp_udc_int_bsod_skip(v43, 12);
              v43 = v40;
              v41 = a2;
            }

            else if (v504 == 1)
            {
              *(a2 + 254) = bsod_unprj_11184(v43, 1);
              *(a2 + 256) = bsod_unprj_11184(v40, 1);
              v505 = bsod_unprj_11184(v40, 3);
              v43 = v40;
              v41 = a2;
              *(a2 + 258) = v505;
              result = 0;
              *(a2 + 260) = 1;
              goto LABEL_875;
            }

            result = 0;
LABEL_875:
            v42 = v693;
            v46 = v691;
            v45 = v692;
            v48 = v689;
            v47 = v690;
            v51 = v685;
            v50 = v686;
            if (v41[6] <= 1 && v41[10] >= 1)
            {
              v626 = 0;
              v627 = v41 + 179;
              do
              {
                v628 = *(v43 + 24);
                v629 = 2 * (*(v43 + 26) << *(v43 + 24));
                if (v628 < 16)
                {
                  v635 = v628 + 1;
                }

                else
                {
                  v630 = (*v43 + 2);
                  v631 = *v43 + 4;
                  if (v631 > *(v43 + 8) || v630 > v631 || v630 < *(v43 + 16))
                  {
                    goto LABEL_956;
                  }

                  v634 = *v630;
                  v635 = v628 - 15;
                  *(v43 + 26) = v634;
                  *v43 = v630;
                  v629 |= v634 << v635;
                }

                *(v43 + 24) = v635;
                if ((v627 - 7) < v25)
                {
                  goto LABEL_956;
                }

                if ((v627 - 6) > v26)
                {
                  goto LABEL_956;
                }

                if (v627 - 7 > v627 - 6)
                {
                  goto LABEL_956;
                }

                *(v627 - 7) = HIWORD(v629);
                v636 = v627 - 5;
                if ((v627 - 5) < v26 || (v627 - 4) > v27 || v636 > v627 - 4)
                {
                  goto LABEL_956;
                }

                *v636 = 1;
                if (v629 >= 0x10000)
                {
                  v637 = *(v43 + 24);
                  v638 = (*(v43 + 26) << *(v43 + 24)) << 8;
                  if (v637 < 9)
                  {
                    v642 = v637 + 8;
                  }

                  else
                  {
                    v639 = *v43 + 4;
                    if (v639 > *(v43 + 8))
                    {
                      goto LABEL_956;
                    }

                    v640 = (*v43 + 2);
                    if (v640 > v639 || v640 < *(v43 + 16))
                    {
                      goto LABEL_956;
                    }

                    v641 = *v640;
                    v642 = v637 - 8;
                    *(v43 + 26) = v641;
                    *v43 = v640;
                    v638 |= v641 << v642;
                  }

                  *(v43 + 24) = v642;
                  v643 = v627 - 3;
                  if ((v627 - 3) < v27 || (v627 - 2) > v682 || v643 > v627 - 2)
                  {
                    goto LABEL_956;
                  }

                  *v643 = HIWORD(v638);
                  v644 = *(v43 + 24);
                  v645 = (*(v43 + 26) << *(v43 + 24)) << 6;
                  if (v644 < 11)
                  {
                    v649 = v644 + 6;
                  }

                  else
                  {
                    v646 = *v43 + 4;
                    if (v646 > *(v43 + 8))
                    {
                      goto LABEL_956;
                    }

                    v647 = (*v43 + 2);
                    if (v647 > v646 || v647 < *(v43 + 16))
                    {
                      goto LABEL_956;
                    }

                    v648 = *v647;
                    v649 = v644 - 10;
                    *(v43 + 26) = v648;
                    *v43 = v647;
                    v645 |= v648 << v649;
                  }

                  *(v43 + 24) = v649;
                  v650 = v627 - 1;
                  if ((v627 - 1) < v682 || v627 > v683 || v650 > v627)
                  {
                    goto LABEL_956;
                  }

                  *v650 = HIWORD(v645);
                }

                ++v626;
                ++v627;
              }

              while (v626 < v41[10]);
            }

            v651 = *(v43 + 24);
            v652 = 2 * (*(v43 + 26) << *(v43 + 24));
            if (v651 < 16)
            {
              v656 = v651 + 1;
              v368 = v687;
            }

            else
            {
              v653 = *v43 + 4;
              v368 = v687;
              if (v653 > *(v43 + 8))
              {
                goto LABEL_956;
              }

              v654 = (*v43 + 2);
              if (v654 > v653 || v654 < *(v43 + 16))
              {
                goto LABEL_956;
              }

              v655 = *v654;
              v656 = v651 - 15;
              *(v43 + 26) = v655;
              *v43 = v654;
              v652 |= v655 << v656;
            }

            *(v43 + 24) = v656;
            v41[158] = HIWORD(v652);
            if (v652 >= 0x10000)
            {
              v657 = *v368;
              if (v657 == 1)
              {
                v658 = result;
                v659 = bsod_unprj_11184(v43, 5);
                v51 = v685;
                v50 = v686;
                v48 = v689;
                v47 = v690;
                v46 = v691;
                v45 = v692;
                v42 = v693;
                v41 = a2;
                v43 = v678;
                *(a2 + 320) = v659;
                result = v658;
                *(a2 + 332) = 1;
              }

              else if (v657 >= 1)
              {
                v660 = 0;
                v661 = v41 + 160;
                do
                {
                  v662 = *(v43 + 24);
                  v663 = 2 * (*(v43 + 26) << *(v43 + 24));
                  if (v662 < 16)
                  {
                    v669 = v662 + 1;
                  }

                  else
                  {
                    v664 = (*v43 + 2);
                    v665 = *v43 + 4;
                    if (v665 > *(v43 + 8) || v664 > v665 || v664 < *(v43 + 16))
                    {
                      goto LABEL_956;
                    }

                    v668 = *v664;
                    v669 = v662 - 15;
                    *(v43 + 26) = v668;
                    *v43 = v664;
                    v663 |= v668 << v669;
                  }

                  *(v43 + 24) = v669;
                  v41[159] = HIWORD(v663);
                  if (v663 >= 0x10000)
                  {
                    v670 = 32 * (*(v43 + 26) << v669);
                    if (v669 < 12)
                    {
                      v674 = v669 + 5;
                    }

                    else
                    {
                      v671 = *v43 + 4;
                      if (v671 > *(v43 + 8))
                      {
                        goto LABEL_956;
                      }

                      v672 = (*v43 + 2);
                      if (v672 > v671 || v672 < *(v43 + 16))
                      {
                        goto LABEL_956;
                      }

                      v673 = *v672;
                      v674 = v669 - 11;
                      *(v43 + 26) = v673;
                      *v43 = v672;
                      v670 |= v673 << v674;
                    }

                    *(v43 + 24) = v674;
                    if (v661 < v41 + 160)
                    {
                      goto LABEL_956;
                    }

                    if ((v661 + 1) > v681)
                    {
                      goto LABEL_956;
                    }

                    if (v661 > v661 + 1)
                    {
                      goto LABEL_956;
                    }

                    *v661 = HIWORD(v670);
                    v675 = v661 + 7;
                    v676 = v661 + 6;
                    if ((v661 + 6) < v681)
                    {
                      goto LABEL_956;
                    }

                    if (v675 > v25 || v676 > v675)
                    {
                      goto LABEL_956;
                    }

                    *v676 = 1;
                    v368 = v687;
                  }

                  ++v660;
                  ++v661;
                }

                while (v660 < *v368);
              }
            }

LABEL_478:
            v369 = v41 + 186;
            v370 = &v41[4 * v41[184] + 186];
            v371 = v370 + 4;
            if (v370 < v41 + 186 || v371 > v368 || v370 > v371)
            {
              goto LABEL_956;
            }

            if (*v43)
            {
              v374 = *(v43 + 32);
              v375 = *(v43 + 24);
              v376 = *(v43 + 24);
              if (v374)
              {
                v377 = v375 + 16 * ((*v43 - v374) >> 1);
LABEL_490:
                *v370 = v377;
                v378 = 2 * (*(v43 + 26) << v375);
                if (v376 < 16)
                {
                  v382 = v375 + 1;
                }

                else
                {
                  v379 = *v43 + 4;
                  if (v379 > *(v43 + 8))
                  {
                    goto LABEL_956;
                  }

                  v380 = (*v43 + 2);
                  if (v380 > v379 || v380 < *(v43 + 16))
                  {
                    goto LABEL_956;
                  }

                  v381 = *v380;
                  v382 = v375 - 15;
                  *(v43 + 26) = v381;
                  *v43 = v380;
                  v378 |= v381 << v382;
                }

                *(v43 + 24) = v382;
                *v683 = HIWORD(v378);
                if (v378 >= 0x10000)
                {
                  v383 = v382;
                  v384 = *(v43 + 26);
                  v385 = 8 * (v384 << v382);
                  v386 = v383 - 13;
                  if (v383 <= 13)
                  {
                    v386 = v383 + 3;
                    v390 = v384 << (v383 + 3);
                  }

                  else
                  {
                    v387 = *v43;
                    v388 = *v43 + 4;
                    if (v388 > *(v43 + 8))
                    {
                      goto LABEL_956;
                    }

                    v389 = (v387 + 2);
                    if (v387 + 2 > v388 || v389 < *(v43 + 16))
                    {
                      goto LABEL_956;
                    }

                    v384 = *v389;
                    *(v43 + 26) = v384;
                    *v43 = v389;
                    v390 = v384 << v386;
                    v385 |= v384 << v386;
                  }

                  v391 = HIWORD(v385);
                  *(v43 + 24) = v386;
                  v41[5] = v391;
                  v393 = v41[6] > 1 && v391 == 7;
                  v41[11] = v393;
                  v394 = 2 * v390;
                  v395 = v386 - 15;
                  if (v386 <= 15)
                  {
                    v395 = v386 + 1;
                    v399 = v384 << (v386 + 1);
                  }

                  else
                  {
                    v396 = *v43 + 4;
                    if (v396 > *(v43 + 8))
                    {
                      goto LABEL_956;
                    }

                    v397 = (*v43 + 2);
                    if (v397 > v396 || v397 < *(v43 + 16))
                    {
                      goto LABEL_956;
                    }

                    v398 = *v397;
                    *(v43 + 26) = v398;
                    *v43 = v397;
                    v399 = v398 << v395;
                    v394 |= v398 << v395;
                  }

                  *(v43 + 24) = v395;
                  *v45 = HIWORD(v394);
                  v400 = 2 * v399;
                  if (v395 < 16)
                  {
                    v405 = v395 + 1;
                  }

                  else
                  {
                    v401 = *v43;
                    v402 = *v43 + 4;
                    if (v402 > *(v43 + 8))
                    {
                      goto LABEL_956;
                    }

                    v403 = (v401 + 2);
                    if (v401 + 2 > v402 || v403 < *(v43 + 16))
                    {
                      goto LABEL_956;
                    }

                    v404 = *v403;
                    v405 = v395 - 15;
                    *(v43 + 26) = v404;
                    *v43 = v403;
                    v400 |= v404 << (v395 - 15);
                  }

                  *(v43 + 24) = v405;
                  v41[33] = HIWORD(v400);
                  v406 = v41[6];
                  if (v406 == 2)
                  {
                    v407 = *(v43 + 26);
                    v408 = 4 * (v407 << v405);
                    v409 = v405 - 14;
                    if (v405 <= 14)
                    {
                      v409 = v405 + 2;
                      v413 = v407 << (v405 + 2);
                    }

                    else
                    {
                      v410 = *v43 + 4;
                      if (v410 > *(v43 + 8))
                      {
                        goto LABEL_956;
                      }

                      v411 = (*v43 + 2);
                      if (v411 > v410 || v411 < *(v43 + 16))
                      {
                        goto LABEL_956;
                      }

                      v412 = *v411;
                      *(v43 + 26) = v412;
                      *v43 = v411;
                      v413 = v412 << v409;
                      v408 |= v412 << v409;
                    }

                    *(v43 + 24) = v409;
                    v41[14] = HIWORD(v408);
                    v41[15] = 1;
                    v439 = 4 * v413;
                    if (v409 < 15)
                    {
                      LOWORD(v405) = v409 + 2;
                    }

                    else
                    {
                      v440 = *v43;
                      v441 = *v43 + 4;
                      if (v441 > *(v43 + 8))
                      {
                        goto LABEL_956;
                      }

                      v442 = (v440 + 2);
                      if (v440 + 2 > v441 || v442 < *(v43 + 16))
                      {
                        goto LABEL_956;
                      }

                      v443 = *v442;
                      LOWORD(v405) = v409 - 14;
                      *(v43 + 26) = v443;
                      *v43 = v442;
                      v439 |= v443 << (v409 - 14);
                    }

                    *(v43 + 24) = v405;
                    v41[48] = HIWORD(v439);
                    v41[56] = 1;
                    LOWORD(v406) = v41[6];
                  }

                  if (v406 >= 6)
                  {
                    v444 = 4 * (*(v43 + 26) << v405);
                    if (v405 < 15)
                    {
                      v448 = v405 + 2;
                    }

                    else
                    {
                      v445 = *v43 + 4;
                      if (v445 > *(v43 + 8))
                      {
                        goto LABEL_956;
                      }

                      v446 = (*v43 + 2);
                      if (v446 > v445 || v446 < *(v43 + 16))
                      {
                        goto LABEL_956;
                      }

                      v447 = *v446;
                      v448 = v405 - 14;
                      *(v43 + 26) = v447;
                      *v43 = v446;
                      v444 |= v447 << v448;
                    }

                    *(v43 + 24) = v448;
                    v41[47] = HIWORD(v444);
                    v41[55] = 1;
                  }

                  if (v41[10] >= 1)
                  {
                    v449 = 0;
                    v450 = v41 + 52;
                    do
                    {
                      v451 = *(v43 + 24);
                      v452 = 2 * (*(v43 + 26) << *(v43 + 24));
                      if (v451 < 16)
                      {
                        v458 = v451 + 1;
                      }

                      else
                      {
                        v453 = (*v43 + 2);
                        v454 = *v43 + 4;
                        if (v454 > *(v43 + 8) || v453 > v454 || v453 < *(v43 + 16))
                        {
                          goto LABEL_956;
                        }

                        v457 = *v453;
                        v458 = v451 - 15;
                        *(v43 + 26) = v457;
                        *v43 = v453;
                        v452 |= v457 << v458;
                      }

                      *(v43 + 24) = v458;
                      v459 = v450 - 26;
                      if ((v450 - 26) < v46 || (v450 - 25) > v47 || v459 > v450 - 25)
                      {
                        goto LABEL_956;
                      }

                      *v459 = HIWORD(v452);
                      if (v452 >= 0x10000)
                      {
                        v460 = *(v43 + 24);
                        v461 = 32 * (*(v43 + 26) << *(v43 + 24));
                        if (v460 < 12)
                        {
                          v465 = v460 + 5;
                        }

                        else
                        {
                          v462 = *v43 + 4;
                          if (v462 > *(v43 + 8))
                          {
                            goto LABEL_956;
                          }

                          v463 = (*v43 + 2);
                          if (v463 > v462 || v463 < *(v43 + 16))
                          {
                            goto LABEL_956;
                          }

                          v464 = *v463;
                          v465 = v460 - 11;
                          *(v43 + 26) = v464;
                          *v43 = v463;
                          v461 |= v464 << v465;
                        }

                        *(v43 + 24) = v465;
                        v466 = v450 - 24;
                        if ((v450 - 24) < v47 || (v450 - 23) > v48 || v466 > v450 - 23)
                        {
                          goto LABEL_956;
                        }

                        *v466 = HIWORD(v461);
                        v467 = *(v43 + 24);
                        v468 = 4 * (*(v43 + 26) << *(v43 + 24));
                        if (v467 < 15)
                        {
                          v472 = v467 + 2;
                        }

                        else
                        {
                          v469 = *v43 + 4;
                          if (v469 > *(v43 + 8))
                          {
                            goto LABEL_956;
                          }

                          v470 = (*v43 + 2);
                          if (v470 > v469 || v470 < *(v43 + 16))
                          {
                            goto LABEL_956;
                          }

                          v471 = *v470;
                          v472 = v467 - 14;
                          *(v43 + 26) = v471;
                          *v43 = v470;
                          v468 |= v471 << v472;
                        }

                        *(v43 + 24) = v472;
                        v473 = v450 - 22;
                        if ((v450 - 22) < v48 || v450 - 21 > v45 || v473 > v450 - 21)
                        {
                          goto LABEL_956;
                        }

                        *v473 = HIWORD(v468);
                        v474 = *(v43 + 24);
                        v475 = 2 * (*(v43 + 26) << *(v43 + 24));
                        if (v474 < 16)
                        {
                          v479 = v474 + 1;
                        }

                        else
                        {
                          v476 = *v43 + 4;
                          if (v476 > *(v43 + 8))
                          {
                            goto LABEL_956;
                          }

                          v477 = (*v43 + 2);
                          if (v477 > v476 || v477 < *(v43 + 16))
                          {
                            goto LABEL_956;
                          }

                          v478 = *v477;
                          v479 = v474 - 15;
                          *(v43 + 26) = v478;
                          *v43 = v477;
                          v475 |= v478 << v479;
                        }

                        *(v43 + 24) = v479;
                        if ((v450 - 3) < v50)
                        {
                          goto LABEL_956;
                        }

                        if ((v450 - 2) > v8)
                        {
                          goto LABEL_956;
                        }

                        if (v450 - 3 > v450 - 2)
                        {
                          goto LABEL_956;
                        }

                        *(v450 - 3) = HIWORD(v475);
                        v480 = v450 - 1;
                        if ((v450 - 1) < v8 || v450 > v51 || v480 > v450)
                        {
                          goto LABEL_956;
                        }

                        *v480 = 1;
                      }

                      ++v449;
                      ++v450;
                    }

                    while (v449 < v41[10]);
                  }

                  if (v41[2] <= 2)
                  {
                    v481 = *(v43 + 24);
                    v482 = 2 * (*(v43 + 26) << *(v43 + 24));
                    if (v481 < 16)
                    {
                      v486 = v481 + 1;
                    }

                    else
                    {
                      v483 = *v43 + 4;
                      if (v483 > *(v43 + 8))
                      {
                        goto LABEL_956;
                      }

                      v484 = (*v43 + 2);
                      if (v484 > v483 || v484 < *(v43 + 16))
                      {
                        goto LABEL_956;
                      }

                      v485 = *v484;
                      v486 = v481 - 15;
                      *(v43 + 26) = v485;
                      *v43 = v484;
                      v482 |= v485 << v486;
                    }

                    *(v43 + 24) = v486;
                    v41[181] = HIWORD(v482);
                  }
                }

                if (*v43 && (v487 = *(v43 + 32)) != 0)
                {
                  v488 = *(v43 + 24) + 16 * ((*v43 - v487) >> 1) - 1;
                }

                else
                {
                  v488 = -1;
                }

                v489 = v41[184];
                v41[184] = v489 + 1;
                v490 = &v369[4 * v489];
                if (v490 < v369 || v490 + 8 > v687 || v490 > v490 + 8)
                {
                  goto LABEL_956;
                }

                *(v490 + 4) = v488;
                v491 = *v42;
                if (!*v42)
                {
                  if (*v687 == 6)
                  {
                    goto LABEL_685;
                  }

                  v492 = *(v43 + 24);
                  v493 = 2 * (*(v43 + 26) << *(v43 + 24));
                  if (v492 < 16)
                  {
                    v491 = 0;
                    v497 = v492 + 1;
                  }

                  else
                  {
                    v494 = *v43 + 4;
                    if (v494 > *(v43 + 8))
                    {
                      goto LABEL_956;
                    }

                    v495 = (*v43 + 2);
                    if (v495 > v494 || v495 < *(v43 + 16))
                    {
                      goto LABEL_956;
                    }

                    v496 = *v495;
                    v497 = v492 - 15;
                    *(v43 + 26) = v496;
                    *v43 = v495;
                    v493 |= v496 << v497;
                    v491 = *v42;
                  }

                  *(v43 + 24) = v497;
                  v41[182] = HIWORD(v493);
                }

                if (v491 != 2)
                {
                  goto LABEL_685;
                }

                if (*v687 == 6)
                {
                  v41[183] = 1;
                  v506 = *(v43 + 24);
                }

                else
                {
                  v507 = *(v43 + 24);
                  v508 = 2 * (*(v43 + 26) << *(v43 + 24));
                  if (v507 < 16)
                  {
                    v506 = v507 + 1;
                  }

                  else
                  {
                    v509 = *v43 + 4;
                    if (v509 > *(v43 + 8))
                    {
                      goto LABEL_956;
                    }

                    v510 = (*v43 + 2);
                    if (v510 > v509 || v510 < *(v43 + 16))
                    {
                      goto LABEL_956;
                    }

                    v511 = *v510;
                    v506 = v507 - 15;
                    *(v43 + 26) = v511;
                    *v43 = v510;
                    v508 |= v511 << v506;
                  }

                  v512 = HIWORD(v508);
                  *(v43 + 24) = v506;
                  v41[183] = v512;
                  if (v512 != 1)
                  {
                    goto LABEL_685;
                  }
                }

                v513 = (*(v43 + 26) << v506) << 6;
                if (v506 < 11)
                {
                  v517 = v506 + 6;
                }

                else
                {
                  v514 = *v43 + 4;
                  if (v514 > *(v43 + 8))
                  {
                    goto LABEL_956;
                  }

                  v515 = (*v43 + 2);
                  if (v515 > v514 || v515 < *(v43 + 16))
                  {
                    goto LABEL_956;
                  }

                  v516 = *v515;
                  v517 = v506 - 10;
                  *(v43 + 26) = v516;
                  *v43 = v515;
                  v513 |= v516 << v517;
                }

                *(v43 + 24) = v517;
                v41[3] = HIWORD(v513);
LABEL_685:
                v518 = &v369[4 * v41[184]];
                if (v518 < v369 || v518 + 4 > v687 || v518 > v518 + 4)
                {
                  goto LABEL_956;
                }

                if (*v43)
                {
                  v519 = *(v43 + 32);
                  v520 = *(v43 + 24);
                  v521 = *(v43 + 24);
                  if (v519)
                  {
                    v522 = v520 + 16 * ((*v43 - v519) >> 1);
LABEL_693:
                    *v518 = v522;
                    v523 = 2 * (*(v43 + 26) << v520);
                    if (v521 < 16)
                    {
                      v527 = v520 + 1;
                    }

                    else
                    {
                      v524 = *v43 + 4;
                      if (v524 > *(v43 + 8))
                      {
                        goto LABEL_956;
                      }

                      v525 = (*v43 + 2);
                      if (v525 > v524 || v525 < *(v43 + 16))
                      {
                        goto LABEL_956;
                      }

                      v526 = *v525;
                      v527 = v520 - 15;
                      *(v43 + 26) = v526;
                      *v43 = v525;
                      v523 |= v526 << v527;
                    }

                    *(v43 + 24) = v527;
                    v41[57] = HIWORD(v523);
                    if (v523 < 0x10000)
                    {
                      goto LABEL_722;
                    }

                    v528 = (*(v43 + 26) << v527) << 6;
                    if (v527 < 11)
                    {
                      v532 = v527 + 6;
LABEL_706:
                      *(v43 + 24) = v532;
                      v41[58] = HIWORD(v528);
                      v533 = ((v528 + 0x10000) >> 16);
                      if (v533 >= 1)
                      {
                        v534 = v41 + 59;
                        do
                        {
                          v535 = *(v43 + 24);
                          v536 = *(v43 + 26) << *(v43 + 24) << 8;
                          if (v535 < 9)
                          {
                            v542 = v535 + 8;
                          }

                          else
                          {
                            v537 = (*v43 + 2);
                            v538 = *v43 + 4;
                            if (v538 > *(v43 + 8) || v537 > v538 || v537 < *(v43 + 16))
                            {
                              goto LABEL_956;
                            }

                            v541 = *v537;
                            v542 = v535 - 8;
                            *(v43 + 26) = v541;
                            *v43 = v537;
                            v536 |= v541 << v542;
                          }

                          *(v43 + 24) = v542;
                          if (v534 >= v42 || v534 < v41 + 118)
                          {
                            goto LABEL_956;
                          }

                          *v534++ = BYTE2(v536);
                          --v533;
                        }

                        while (v533);
                      }

LABEL_722:
                      if (*v43 && (v543 = *(v43 + 32)) != 0)
                      {
                        v544 = *(v43 + 24) + 16 * ((*v43 - v543) >> 1) - 1;
                      }

                      else
                      {
                        v544 = -1;
                      }

                      v545 = v41[184];
                      v41[184] = v545 + 1;
                      v546 = &v369[4 * v545];
                      if (v546 >= v369 && v546 + 8 <= v687 && v546 <= v546 + 8)
                      {
                        *(v546 + 4) = v544;
                        return result;
                      }

                      goto LABEL_956;
                    }

                    v529 = *v43 + 4;
                    if (v529 <= *(v43 + 8))
                    {
                      v530 = (*v43 + 2);
                      if (v530 <= v529 && v530 >= *(v43 + 16))
                      {
                        v531 = *v530;
                        v532 = v527 - 10;
                        *(v43 + 26) = v531;
                        *v43 = v530;
                        v528 |= v531 << v532;
                        goto LABEL_706;
                      }
                    }

LABEL_956:
                    __break(0x5519u);
                    return result;
                  }
                }

                else
                {
                  v521 = *(v43 + 24);
                }

                v522 = 0;
                LOWORD(v520) = v521;
                goto LABEL_693;
              }
            }

            else
            {
              v376 = *(v43 + 24);
            }

            v377 = 0;
            LOWORD(v375) = v376;
            goto LABEL_490;
          }

          v556 = bsod_unprj_11184(v43, 5);
          *(a2 + 216) = v556;
          v557 = v556 + 2;
          if ((v556 + 2) >= 1)
          {
            v559 = *(v40 + 8);
            v558 = *(v40 + 16);
            v560 = (v556 + 2);
            v561 = *(v40 + 26);
            v562 = *(v40 + 24);
            v563 = (a2 + 218);
            v564 = *v40;
            do
            {
              result = (v561 << v562 << 8);
              if (v562 < 9)
              {
                v562 += 8;
              }

              else
              {
                v565 = v564 + 2;
                if ((v564 + 2) > v559)
                {
                  goto LABEL_956;
                }

                if (++v564 > v565 || v564 < v558)
                {
                  goto LABEL_956;
                }

                v561 = *v564;
                v562 -= 8;
                result = (v561 << v562) | result;
              }

              if (v563 >= a2 + 251 || v563 < a2 + 218)
              {
                goto LABEL_956;
              }

              *v563++ = BYTE2(result);
              --v560;
            }

            while (v560);
          }

          v566 = 8 * v557;
          v567 = bsod_unprj_11184(v678, 1);
          *v679 = v567;
          if (v567 && ((*(a2 + 254) = bsod_unprj_11184(v678, 1), *(a2 + 256) = bsod_unprj_11184(v678, 1), *(a2 + 258) = bsod_unprj_11184(v678, 3), *(a2 + 260) = 1, v568 = bsod_unprj_11184(v678, 1), *(a2 + 262) = v568, !v568) ? (v569 = v566 - 7) : (*(a2 + 274) = bsod_unprj_11184(v678, 4), v569 = v566 - 11), (v605 = bsod_unprj_11184(v678, 1), *(a2 + 264) = v605, !v605) ? (v606 = v569 - 1) : (*(a2 + 276) = bsod_unprj_11184(v678, 4), v606 = v569 - 5), (v607 = bsod_unprj_11184(v678, 1), *(a2 + 266) = v607, !v607) ? (v608 = v606 - 1) : (*(a2 + 278) = bsod_unprj_11184(v678, 4), v608 = v606 - 5), (v609 = bsod_unprj_11184(v678, 1), *(a2 + 268) = v609, !v609) ? (v610 = v608 - 1) : (*(a2 + 280) = bsod_unprj_11184(v678, 4), v610 = v608 - 5), (v611 = bsod_unprj_11184(v678, 1), *(a2 + 270) = v611, !v611) ? (v612 = v610 - 1) : (*(a2 + 282) = bsod_unprj_11184(v678, 4), v612 = v610 - 5), (v613 = bsod_unprj_11184(v678, 1), *(a2 + 272) = v613, !v613) ? (v614 = v612 - 1) : (*(a2 + 284) = bsod_unprj_11184(v678, 4), v614 = v612 - 5), (v615 = bsod_unprj_11184(v678, 1), *(a2 + 286) = v615, !v615) ? (v566 = v614 - 1) : (*(a2 + 288) = bsod_unprj_11184(v678, 4), v566 = v614 - 5), (v616 = bsod_unprj_11184(v678, 1), *(a2 + 290) = v616, v616) && ((v617 = bsod_unprj_11184(v678, 1), *(a2 + 292) = v617, !v617) ? (v566 -= 2) : (*(a2 + 294) = bsod_unprj_11184(v678, 4), v566 -= 6), v618 = bsod_unprj_11184(v678, 1), *(a2 + 296) = v618, v618)))
          {
            *(a2 + 298) = bsod_unprj_11184(v678, 4);
            v619 = v566 - 5;
          }

          else
          {
            v619 = v566 - 1;
          }

          if (v619 < 1)
          {
            v624 = -v619;
          }

          else
          {
            v620 = bsod_unprj_11184(v678, 1);
            *(a2 + 300) = v620;
            if (!v620)
            {
              LOWORD(v623) = v619 - 1;
              v625 = v678;
LABEL_871:
              ddp_udc_int_bsod_skip(v625, v623);
              v43 = v678;
              result = 0;
LABEL_874:
              v41 = a2;
              goto LABEL_875;
            }

            *(a2 + 302) = bsod_unprj_11184(v678, 5);
            v621 = bsod_unprj_11184(v678, 1);
            *(a2 + 304) = v621;
            if (v621)
            {
              *(a2 + 306) = bsod_unprj_11184(v678, 5);
              *(a2 + 308) = bsod_unprj_11184(v678, 2);
              v622 = bsod_unprj_11184(v678, 1);
              *(a2 + 310) = v622;
              if (v622)
              {
                *(a2 + 312) = bsod_unprj_11184(v678, 5);
                *(a2 + 314) = bsod_unprj_11184(v678, 3);
                v623 = v619 - 23;
              }

              else
              {
                v623 = v619 - 15;
              }
            }

            else
            {
              v623 = v619 - 7;
            }

            if ((v623 & 0x8000) == 0)
            {
              v625 = v678;
              goto LABEL_871;
            }

            v624 = -v623;
          }

          ddp_udc_int_bsod_rewind(v678, v624);
          v43 = v678;
          result = 0xFFFFFFFFLL;
          goto LABEL_874;
        }

        return 1540;
      }

      return 1537;
    }

    v53 = v693;
    v52 = a2;
    v54 = v40;
    result = v692;
    if (v695 >= 9)
    {
      return 0;
    }

    *(a2 + 368) = 0;
    v55 = *v40;
    if (*v40)
    {
      v56 = *(v40 + 32);
      v58 = v687;
      v57 = v688;
      if (v56)
      {
        LODWORD(v55) = *(v40 + 24) + 16 * ((v55 - v56) >> 1);
      }

      else
      {
        LODWORD(v55) = 0;
      }
    }

    else
    {
      v58 = v687;
      v57 = v688;
    }

    *(a2 + 372) = v55;
    *(a2 + 376) = v55 + 39;
    *(a2 + 368) = 1;
    v139 = *(v40 + 24);
    v140 = *(v40 + 26);
    v141 = v140 << *(v40 + 24) << 16;
    if (v139 < 1)
    {
      LOWORD(v139) = v139 + 16;
    }

    else
    {
      v142 = *v40;
      v143 = *v40 + 4;
      if (v143 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v144 = (v142 + 2);
      if (v142 + 2 > v143 || v144 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v140 = *v144;
      *(v40 + 26) = v140;
      *v40 = v144;
      v141 |= v140 << v139;
    }

    v145 = HIWORD(v141);
    *(v40 + 24) = v139;
    *a2 = v145;
    if (v145 != 2935)
    {
      return 1537;
    }

    v146 = v139;
    v147 = v140 << v139 << 16;
    if (v139 <= 0)
    {
      LOWORD(v139) = v139 + 16;
      v146 = v139;
      v151 = v140 << v139;
    }

    else
    {
      v148 = *v40;
      v149 = *v40 + 4;
      if (v149 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v150 = (v148 + 2);
      if (v148 + 2 > v149 || v150 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v140 = *v150;
      *(v40 + 26) = v140;
      *v40 = v150;
      v151 = v140 << v139;
      v147 |= v140 << v139;
    }

    *(v40 + 24) = v139;
    v152 = v139;
    *(a2 + 2) = HIWORD(v147);
    v153 = 4 * v151;
    if (v152 < 15)
    {
      v157 = v146 + 2;
    }

    else
    {
      v154 = *v40;
      v155 = *v40 + 4;
      if (v155 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v156 = (v154 + 2);
      if (v154 + 2 > v155 || v156 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v140 = *v156;
      v157 = v146 - 14;
      *(v40 + 26) = v140;
      *v40 = v156;
      v153 |= v140 << v157;
    }

    v158 = HIWORD(v153);
    *(v40 + 24) = v157;
    *(a2 + 4) = v158;
    if (v158 == 3)
    {
      return 1538;
    }

    v159 = v157;
    v160 = (v140 << v157) << 6;
    if (v159 < 11)
    {
      v164 = v159 + 6;
    }

    else
    {
      v161 = *v40;
      v162 = *v40 + 4;
      if (v162 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v163 = (v161 + 2);
      if (v161 + 2 > v162 || v163 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v140 = *v163;
      v164 = v159 - 10;
      *(v40 + 26) = v140;
      *v40 = v163;
      v160 |= v140 << v164;
    }

    *(v40 + 24) = v164;
    *(a2 + 6) = HIWORD(v160);
    if (v160 >> 16 > 37)
    {
      return 1539;
    }

    v165 = 32 * (v140 << v164);
    if (v164 < 12)
    {
      v169 = v164 + 5;
    }

    else
    {
      v166 = *v40;
      v167 = *v40 + 4;
      if (v167 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v168 = (v166 + 2);
      if (v166 + 2 > v167 || v168 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v140 = *v168;
      v169 = v164 - 11;
      *(v40 + 26) = v140;
      *v40 = v168;
      v165 |= v140 << (v164 - 11);
    }

    *(v40 + 24) = v169;
    *(a2 + 8) = HIWORD(v165);
    if (v165 >> 16 > 8)
    {
      return 1540;
    }

    v170 = 8 * (v140 << v169);
    v171 = v169 - 13;
    if (v169 <= 13)
    {
      v171 = v169 + 3;
      v175 = v140 << (v169 + 3);
    }

    else
    {
      v172 = *v40;
      v173 = *v40 + 4;
      if (v173 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v174 = (v172 + 2);
      if (v172 + 2 > v173 || v174 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v140 = *v174;
      *(v40 + 26) = v140;
      *v40 = v174;
      v175 = v140 << v171;
      v170 |= v140 << v171;
    }

    *(v40 + 24) = v171;
    *(a2 + 10) = HIWORD(v170);
    v186 = 8 * v175;
    if (v171 < 14)
    {
      v190 = v171 + 3;
    }

    else
    {
      v187 = *v40;
      v188 = *v40 + 4;
      if (v188 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v189 = (v187 + 2);
      if (v187 + 2 > v188 || v189 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v140 = *v189;
      v190 = v171 - 13;
      *(v40 + 26) = v140;
      *v40 = v189;
      v186 |= v140 << v190;
    }

    v191 = HIWORD(v186);
    *(v40 + 24) = v190;
    *(a2 + 12) = HIWORD(v186);
    if (HIWORD(v186) != 1 && (v186 & 0x10000) != 0)
    {
      v192 = 4 * (v140 << v190);
      if (v190 < 15)
      {
        LOWORD(v190) = v190 + 2;
      }

      else
      {
        v193 = *v40;
        v194 = *v40 + 4;
        if (v194 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v195 = (v193 + 2);
        if (v193 + 2 > v194 || v195 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v140 = *v195;
        LOWORD(v190) = v190 - 14;
        *(v40 + 26) = v140;
        *v40 = v195;
        v192 |= v140 << v190;
        v191 = *(a2 + 12);
      }

      *(v40 + 24) = v190;
      *(a2 + 24) = HIWORD(v192);
    }

    if ((v191 & 4) != 0)
    {
      v212 = 4 * (v140 << v190);
      if (v190 < 15)
      {
        LOWORD(v190) = v190 + 2;
      }

      else
      {
        v213 = *v40;
        v214 = *v40 + 4;
        if (v214 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v215 = (v213 + 2);
        if (v213 + 2 > v214 || v215 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v140 = *v215;
        LOWORD(v190) = v190 - 14;
        *(v40 + 26) = v140;
        *v40 = v215;
        v212 |= v140 << v190;
        v191 = *(a2 + 12);
      }

      *(v40 + 24) = v190;
      *(a2 + 26) = HIWORD(v212);
    }

    if (v191 == 2)
    {
      v216 = 4 * (v140 << v190);
      if (v190 < 15)
      {
        LOWORD(v190) = v190 + 2;
      }

      else
      {
        v217 = *v40;
        v218 = *v40 + 4;
        if (v218 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v219 = (v217 + 2);
        if (v217 + 2 > v218 || v219 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v140 = *v219;
        LOWORD(v190) = v190 - 14;
        *(v40 + 26) = v140;
        *v40 = v219;
        v216 |= v140 << v190;
      }

      *(v40 + 24) = v190;
      *(a2 + 28) = HIWORD(v216);
      *(a2 + 30) = 1;
    }

    v220 = 2 * (v140 << v190);
    if (v190 < 16)
    {
      v224 = v190 + 1;
    }

    else
    {
      v221 = *v40 + 4;
      if (v221 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v222 = (*v40 + 2);
      if (v222 > v221 || v222 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v223 = *v222;
      v224 = v190 - 15;
      *(v40 + 26) = v223;
      *v40 = v222;
      v220 |= v223 << v224;
    }

    *(v40 + 24) = v224;
    *(a2 + 14) = HIWORD(v220);
    v225 = *(a2 + 12);
    v226 = &ddp_udc_int_gbl_chanary[v225];
    if (v226 < ddp_udc_int_gbl_chanary || v226 + 1 > block_size || v226 > v226 + 1)
    {
      goto LABEL_956;
    }

    v227 = *v226;
    *(a2 + 16) = v227;
    *(a2 + 18) = v227 + HIWORD(v220);
    if (v225 < 2)
    {
      *(a2 + 22) = 0;
      if (!v225)
      {
        v228 = 2;
        goto LABEL_291;
      }
    }

    else
    {
      *(a2 + 22) = *(a2 + 10) == 7;
    }

    v228 = 1;
LABEL_291:
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v232 = a2 + 372;
    *(a2 + 20) = v228;
    do
    {
      v233 = *(v40 + 24);
      v234 = *(v40 + 26);
      v235 = 32 * (v234 << *(v40 + 24));
      if (v233 < 12)
      {
        v240 = v233 + 5;
      }

      else
      {
        v236 = (*v40 + 2);
        v237 = *v40 + 4;
        if (v237 > *(v40 + 8) || v236 > v237 || v236 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v234 = *v236;
        v240 = v233 - 11;
        *(v40 + 26) = v234;
        *v40 = v236;
        v235 |= v234 << v240;
      }

      *(v40 + 24) = v240;
      v241 = (a2 + v230 + 32);
      if (v241 < v57)
      {
        goto LABEL_956;
      }

      v242 = a2 + v230 + 38;
      if (v242 > v3 || v241 > v242)
      {
        goto LABEL_956;
      }

      *v241 = HIWORD(v235);
      v243 = v240;
      v244 = 2 * (v234 << v240);
      if (v243 < 16)
      {
        v248 = v243 + 1;
      }

      else
      {
        v245 = *v40;
        v246 = *v40 + 4;
        if (v246 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v247 = (v245 + 2);
        if (v245 + 2 > v246 || v247 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v234 = *v247;
        v248 = v243 - 15;
        *(v40 + 26) = v234;
        *v40 = v247;
        v244 |= v234 << v248;
      }

      *(v40 + 24) = v248;
      *(a2 + v230 + 34) = HIWORD(v244);
      if (v244 >= 0x10000)
      {
        v249 = v234 << v248;
        v250 = v248 + 8;
        *(v40 + 24) = v248 + 8;
        v251 = __OFSUB__(v248, 8);
        v248 -= 8;
        if (v248 < 0 != v251)
        {
          LOWORD(v248) = v250;
        }

        else
        {
          v252 = *v40;
          v253 = *v40 + 4;
          if (v253 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v254 = (v252 + 2);
          if (v252 + 2 > v253 || v254 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v234 = *v254;
          *(v40 + 26) = v234;
          *v40 = v254;
          *(v40 + 24) = v248;
          v249 |= v234 >> (8 - v248);
        }

        *(a2 + v230 + 36) = v249 & 0xFF00;
      }

      v255 = (v232 + 8 * *(a2 + 368));
      if (v255 < v232 || (v255 + 2) > v58 || v255 > v255 + 2)
      {
        goto LABEL_956;
      }

      v256 = v248;
      if (*v40 && (v257 = *(v40 + 32)) != 0)
      {
        v258 = ((8 * (*v40 - v257)) & 0xFFFFFFF0) + v248;
      }

      else
      {
        v258 = 0;
      }

      *v255 = v258;
      v259 = 2 * (v234 << v256);
      if (v256 < 16)
      {
        v264 = v256 + 1;
      }

      else
      {
        v260 = *v40;
        v261 = *v40 + 4;
        if (v261 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v262 = (v260 + 2);
        if (v260 + 2 > v261 || v262 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v263 = *v262;
        v264 = v256 - 15;
        *(v40 + 26) = v263;
        *v40 = v262;
        v259 |= v263 << (v256 - 15);
      }

      *(v40 + 24) = v264;
      v265 = (a2 + v229 + 44);
      if (v265 < v3)
      {
        goto LABEL_956;
      }

      v266 = a2 + v229 + 46;
      if (v266 > v4 || v265 > v266)
      {
        goto LABEL_956;
      }

      *v265 = HIWORD(v259);
      if (v259 >= 0x10000)
      {
        v267 = *(v40 + 24);
        v268 = (*(v40 + 26) << *(v40 + 24)) << 8;
        if (v267 < 9)
        {
          v272 = v267 + 8;
        }

        else
        {
          v269 = *v40 + 4;
          if (v269 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v270 = (*v40 + 2);
          if (v270 > v269 || v270 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v271 = *v270;
          v272 = v267 - 8;
          *(v40 + 26) = v271;
          *v40 = v270;
          v268 |= v271 << v272;
        }

        *(v40 + 24) = v272;
        v273 = (a2 + v229 + 48);
        if (v273 < v4)
        {
          goto LABEL_956;
        }

        v274 = a2 + v229 + 50;
        if (v274 > v691 || v273 > v274)
        {
          goto LABEL_956;
        }

        *v273 = HIWORD(v268);
      }

      v275 = *(v40 + 24);
      v276 = 2 * (*(v40 + 26) << *(v40 + 24));
      if (v275 < 16)
      {
        v280 = v275 + 1;
      }

      else
      {
        v277 = *v40 + 4;
        if (v277 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v278 = (*v40 + 2);
        if (v278 > v277 || v278 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v279 = *v278;
        v280 = v275 - 15;
        *(v40 + 26) = v279;
        *v40 = v278;
        v276 |= v279 << v280;
      }

      *(v40 + 24) = v280;
      v281 = (a2 + v229 + 52);
      if (v281 < v691)
      {
        goto LABEL_956;
      }

      v282 = a2 + v229 + 54;
      if (v282 > v690 || v281 > v282)
      {
        goto LABEL_956;
      }

      *v281 = HIWORD(v276);
      if (v276 >= 0x10000)
      {
        v283 = *(v40 + 24);
        v284 = 32 * (*(v40 + 26) << *(v40 + 24));
        if (v283 < 12)
        {
          v288 = v283 + 5;
        }

        else
        {
          v285 = *v40 + 4;
          if (v285 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v286 = (*v40 + 2);
          if (v286 > v285 || v286 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v287 = *v286;
          v288 = v283 - 11;
          *(v40 + 26) = v287;
          *v40 = v286;
          v284 |= v287 << v288;
        }

        *(v40 + 24) = v288;
        v289 = (a2 + v229 + 56);
        if (v289 < v690)
        {
          goto LABEL_956;
        }

        v290 = a2 + v229 + 58;
        if (v290 > v689 || v289 > v290)
        {
          goto LABEL_956;
        }

        *v289 = HIWORD(v284);
        v291 = *(v40 + 24);
        v292 = 4 * (*(v40 + 26) << *(v40 + 24));
        if (v291 < 15)
        {
          v296 = v291 + 2;
        }

        else
        {
          v293 = *v40 + 4;
          if (v293 > *(v40 + 8))
          {
            goto LABEL_956;
          }

          v294 = (*v40 + 2);
          if (v294 > v293 || v294 < *(v40 + 16))
          {
            goto LABEL_956;
          }

          v295 = *v294;
          v296 = v291 - 14;
          *(v40 + 26) = v295;
          *v40 = v294;
          v292 |= v295 << v296;
        }

        *(v40 + 24) = v296;
        v297 = (a2 + v229 + 60);
        if (v297 < v689)
        {
          goto LABEL_956;
        }

        v298 = a2 + v229 + 62;
        if (v298 > v692 || v297 > v298)
        {
          goto LABEL_956;
        }

        *v297 = HIWORD(v292);
      }

      if (*v40 && (v299 = *(v40 + 32)) != 0)
      {
        v300 = *(v40 + 24) + 16 * ((*v40 - v299) >> 1) - 1;
      }

      else
      {
        v300 = -1;
      }

      v301 = *(a2 + 368);
      v302 = v301 + 1;
      *(a2 + 368) = v301 + 1;
      v303 = v232 + 8 * v301;
      if (v303 < v232 || v303 + 8 > v58 || v303 > v303 + 8)
      {
        goto LABEL_956;
      }

      *(v303 + 4) = v300;
      ++v231;
      v230 += 6;
      v229 += 2;
    }

    while (v231 < *(a2 + 20));
    v304 = (v232 + 8 * v302);
    if (v304 < v232 || (v304 + 2) > v58 || v304 > v304 + 2)
    {
      goto LABEL_956;
    }

    if (*v40)
    {
      v305 = *(v40 + 32);
      v306 = *(v40 + 24);
      v307 = *(v40 + 24);
      if (v305)
      {
        v308 = v306 + 16 * ((*v40 - v305) >> 1);
        goto LABEL_392;
      }
    }

    else
    {
      v307 = *(v40 + 24);
    }

    v308 = 0;
    LOWORD(v306) = v307;
LABEL_392:
    *v304 = v308;
    v309 = *(v40 + 26);
    v310 = 2 * (v309 << v306);
    if (v307 < 16)
    {
      v314 = v306 + 1;
    }

    else
    {
      v311 = *v40;
      v312 = *v40 + 4;
      if (v312 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v313 = (v311 + 2);
      if (v311 + 2 > v312 || v313 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v309 = *v313;
      v314 = v306 - 15;
      *(v40 + 26) = v309;
      *v40 = v313;
      v310 |= v309 << v314;
    }

    *(v40 + 24) = v314;
    *v692 = HIWORD(v310);
    v315 = 2 * (v309 << v314);
    if (v314 < 16)
    {
      v319 = v314 + 1;
    }

    else
    {
      v316 = *v40;
      v317 = *v40 + 4;
      if (v317 > *(v40 + 8))
      {
        goto LABEL_956;
      }

      v318 = (v316 + 2);
      if (v316 + 2 > v317 || v318 < *(v40 + 16))
      {
        goto LABEL_956;
      }

      v309 = *v318;
      v319 = v314 - 15;
      *(v40 + 26) = v309;
      *v40 = v318;
      v315 |= v309 << v319;
    }

    *(v40 + 24) = v319;
    *(a2 + 66) = HIWORD(v315);
    if (*v40 && (v320 = *(v40 + 32)) != 0)
    {
      v321 = ((8 * (*v40 - v320)) & 0xFFFFFFF0) + v319 - 1;
    }

    else
    {
      v321 = -1;
    }

    v322 = *(a2 + 368);
    v323 = v322 + 1;
    *(a2 + 368) = v322 + 1;
    v324 = v232 + 8 * v322;
    if (v324 < v232 || v324 + 8 > v58 || v324 > v324 + 8)
    {
      goto LABEL_956;
    }

    *(v324 + 4) = v321;
    if (*(a2 + 8) == 6)
    {
      v325 = v319;
      v326 = 2 * (v309 << v319);
      if (v319 < 16)
      {
        v330 = v319 + 1;
      }

      else
      {
        v327 = *v40;
        v328 = *v40 + 4;
        if (v328 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v329 = (v327 + 2);
        if (v327 + 2 > v328 || v329 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v309 = *v329;
        v330 = v325 - 15;
        *(v40 + 26) = v309;
        *v40 = v329;
        v326 |= v309 << (v325 - 15);
      }

      *(v40 + 24) = v330;
      *(a2 + 76) = HIWORD(v326);
      if (v326 >= 0x10000)
      {
        if (*(a2 + 12) < 3)
        {
          result = ddp_udc_int_bsod_skip(v40, 14);
          v52 = a2;
          v53 = v693;
        }

        else
        {
          v52[39] = bsod_unprj_11184(v40, 2);
          *(a2 + 80) = bsod_unprj_11184(v40, 3);
          *(a2 + 82) = bsod_unprj_11184(v40, 3);
          *(a2 + 84) = bsod_unprj_11184(v40, 3);
          result = bsod_unprj_11184(v40, 3);
          *(a2 + 86) = result;
          *(a2 + 88) = 65537;
          v52 = a2;
          if (*(a2 + 82) <= 2)
          {
            *(a2 + 82) = 3;
          }

          v53 = v693;
          if (result <= 2)
          {
            *(a2 + 86) = 3;
          }
        }

        v54 = v40;
        v330 = *(v40 + 24);
        v309 = *(v40 + 26);
      }

      v570 = 2 * (v309 << v330);
      if (v330 < 16)
      {
        v574 = v330 + 1;
      }

      else
      {
        v571 = *v54 + 4;
        if (v571 > *(v54 + 8))
        {
          goto LABEL_956;
        }

        v572 = (*v54 + 2);
        if (v572 > v571 || v572 < *(v54 + 16))
        {
          goto LABEL_956;
        }

        v573 = *v572;
        v574 = v330 - 15;
        *(v54 + 26) = v573;
        *v54 = v572;
        v570 |= v573 << v574;
      }

      *(v54 + 24) = v574;
      v52[46] = HIWORD(v570);
      if (v570 >= 0x10000)
      {
        v575 = v52;
        if (v52[6] < 6)
        {
          ddp_udc_int_bsod_skip(v54, 2);
        }

        else
        {
          v52[47] = bsod_unprj_11184(v54, 2);
          v575[55] = 1;
        }

        v54 = v678;
        if (v575[6] == 2)
        {
          v575[48] = bsod_unprj_11184(v678, 2);
          v575[56] = 1;
        }

        else
        {
          ddp_udc_int_bsod_skip(v678, 2);
        }

        v575[49] = bsod_unprj_11184(v678, 1);
        v575[51] = 1;
        v575[53] = bsod_unprj_11184(v678, 8);
        result = bsod_unprj_11184(v678, 1);
        v575[54] = result;
        v52 = v575;
        v53 = v693;
      }
    }

    else
    {
      v331 = (v232 + 8 * v323);
      if (v331 < v232 || (v331 + 2) > v58 || v331 > v331 + 2)
      {
        goto LABEL_956;
      }

      v332 = v319;
      if (*v40 && (v333 = *(v40 + 32)) != 0)
      {
        v334 = ((8 * (*v40 - v333)) & 0xFFFFFFF0) + v319;
      }

      else
      {
        v334 = 0;
      }

      *v331 = v334;
      v335 = 2 * (v309 << v319);
      if (v319 < 16)
      {
        v339 = v319 + 1;
      }

      else
      {
        v336 = *v40;
        v337 = *v40 + 4;
        if (v337 > *(v40 + 8))
        {
          goto LABEL_956;
        }

        v338 = (v336 + 2);
        if (v336 + 2 > v337 || v338 < *(v40 + 16))
        {
          goto LABEL_956;
        }

        v309 = *v338;
        v339 = v332 - 15;
        *(v40 + 26) = v309;
        *v40 = v338;
        v335 |= v309 << (v332 - 15);
      }

      *(v40 + 24) = v339;
      *v680 = HIWORD(v335);
      if (v335 >= 0x10000)
      {
        result = bsod_unprj_11184(v40, 14);
        v53 = v693;
        v52 = a2;
        v54 = v40;
        *(a2 + 70) = result;
        v339 = *(v40 + 24);
        v309 = *(v40 + 26);
      }

      v547 = 2 * (v309 << v339);
      if (v339 < 16)
      {
        v551 = v339 + 1;
      }

      else
      {
        v548 = *v54 + 4;
        if (v548 > *(v54 + 8))
        {
          goto LABEL_956;
        }

        v549 = (*v54 + 2);
        if (v549 > v548 || v549 < *(v54 + 16))
        {
          goto LABEL_956;
        }

        v550 = *v549;
        v551 = v339 - 15;
        *(v54 + 26) = v550;
        *v54 = v549;
        v547 |= v550 << v551;
      }

      *(v54 + 24) = v551;
      v52[36] = HIWORD(v547);
      if (v547 >= 0x10000)
      {
        result = bsod_unprj_11184(v54, 14);
        v53 = v693;
        v52 = a2;
        v54 = v40;
        *(a2 + 74) = result;
      }

      if (*v54 && (v552 = *(v54 + 32)) != 0)
      {
        v553 = *(v54 + 24) + 16 * ((*v54 - v552) >> 1) - 1;
      }

      else
      {
        v553 = -1;
      }

      v554 = v52[184];
      v52[184] = v554 + 1;
      v555 = v232 + 8 * v554;
      if (v555 < v232 || v555 + 8 > v58 || v555 > v555 + 8)
      {
        goto LABEL_956;
      }

      *(v555 + 4) = v553;
    }

    v576 = (v232 + 8 * v52[184]);
    if (v576 < v232 || (v576 + 2) > v58 || v576 > v576 + 2)
    {
      goto LABEL_956;
    }

    if (*v54)
    {
      v577 = *(v54 + 32);
      v578 = *(v54 + 24);
      v579 = *(v54 + 24);
      if (v577)
      {
        v580 = v578 + 16 * ((*v54 - v577) >> 1);
LABEL_797:
        *v576 = v580;
        v581 = *(v54 + 26);
        v582 = 2 * (v581 << v578);
        if (v579 < 16)
        {
          v585 = v578 + 1;
        }

        else
        {
          v583 = *v54 + 4;
          if (v583 > *(v54 + 8))
          {
            goto LABEL_956;
          }

          v584 = (*v54 + 2);
          if (v584 > v583 || v584 < *(v54 + 16))
          {
            goto LABEL_956;
          }

          v581 = *v584;
          v585 = v578 - 15;
          *(v54 + 26) = v581;
          *v54 = v584;
          v582 |= v581 << v585;
        }

        *(v54 + 24) = v585;
        v52[57] = HIWORD(v582);
        if (v582 >= 0x10000)
        {
          v586 = (v581 << v585) << 6;
          if (v585 < 11)
          {
            v590 = v585 + 6;
          }

          else
          {
            v587 = *v54 + 4;
            if (v587 > *(v54 + 8))
            {
              goto LABEL_956;
            }

            v588 = (*v54 + 2);
            if (v588 > v587 || v588 < *(v54 + 16))
            {
              goto LABEL_956;
            }

            v589 = *v588;
            v590 = v585 - 10;
            *(v54 + 26) = v589;
            *v54 = v588;
            v586 |= v589 << v590;
          }

          *(v54 + 24) = v590;
          v52[58] = HIWORD(v586);
          v591 = ((v586 + 0x10000) >> 16);
          if (v591 >= 1)
          {
            v592 = v52 + 59;
            do
            {
              v593 = *(v54 + 24);
              v594 = *(v54 + 26) << *(v54 + 24) << 8;
              if (v593 < 9)
              {
                v600 = v593 + 8;
              }

              else
              {
                v595 = (*v54 + 2);
                v596 = *v54 + 4;
                if (v596 > *(v54 + 8) || v595 > v596 || v595 < *(v54 + 16))
                {
                  goto LABEL_956;
                }

                v599 = *v595;
                v600 = v593 - 8;
                *(v54 + 26) = v599;
                *v54 = v595;
                v594 |= v599 << v600;
              }

              *(v54 + 24) = v600;
              if (v592 >= v53 || v592 < v52 + 118)
              {
                goto LABEL_956;
              }

              *v592++ = BYTE2(v594);
              --v591;
            }

            while (v591);
          }
        }

        if (*v54 && (v601 = *(v54 + 32)) != 0)
        {
          v602 = *(v54 + 24) + 16 * ((*v54 - v601) >> 1) - 1;
        }

        else
        {
          v602 = -1;
        }

        v603 = v52[184];
        v52[184] = v603 + 1;
        v604 = v232 + 8 * v603;
        if (v604 >= v232 && v604 + 8 <= v58 && v604 <= v604 + 8)
        {
          result = 0;
          *(v604 + 4) = v602;
          v52[234] = 6;
          v52[95] = 3;
          return result;
        }

        goto LABEL_956;
      }
    }

    else
    {
      v579 = *(v54 + 24);
    }

    v580 = 0;
    LOWORD(v578) = v579;
    goto LABEL_797;
  }

  return result;
}

unint64_t ddp_udc_int_mem_alloc(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 1); *(i + 6); i += 4)
  {
    if (!--v1)
    {
      return 0;
    }
  }

  v5 = i[1];
  v4 = i[2];
  result = *i;
  *(i + 6) = 1;
  if (result)
  {
    if (result >= v5 || result < v4)
    {
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t ddp_udc_int_mem_release(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 2;
  }

  v3 = 0;
  for (i = *(a1 + 1); *i != a2; i += 4)
  {
    if (v2 == ++v3)
    {
      return 2;
    }
  }

  v6 = *(a1 + 1) + 32 * v3;
  v8 = *(v6 + 24);
  v7 = (v6 + 24);
  result = 0;
  v9 = v8 - 1;
  if (v8 >= 1)
  {
    *v7 = v9;
  }

  return result;
}

unint64_t *ddp_udc_int_bsod_init(unint64_t *result, __int16 a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 40 > a3[1] || a3[2] > v3;
  if (v4 || ((v5 = *result, *(v3 + 16) = result[2], *v3 = v5, v6 = *a3, v7 = a3[2], *a3 + 40 <= a3[1]) ? (v8 = v7 > v6) : (v8 = 1), v8 || (*(v6 + 24) = a2, v9 = *result, v10 = *result + 2, v10 > result[1]) || v9 > v10 || (v11 = result[2], v9 < v11) || (v12 = *a3, *a3 + 40 > a3[1]) || v7 > v12 || (*(v12 + 26) = *v9, (v13 = *result) != 0) && (v13 >= v13 + 2 || v13 + 2 > result[1] || v13 < v11) || (v14 = *a3, *a3 + 40 > a3[1]) || v7 > v14))
  {
    __break(0x5519u);
  }

  else
  {
    *(v14 + 32) = v13;
  }

  return result;
}

uint64_t ddp_udc_int_bsod_skip(uint64_t result, __int16 a2)
{
  v2 = *(result + 24) + a2;
  *(result + 24) = v2 & 0xF;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = (*result + 2 * (v2 >> 4));
  *result = v5;
  if ((v5 + 1) <= v3 && v5 < v5 + 1 && v5 >= v4)
  {
    *(result + 26) = *v5;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t ddp_udc_int_bsod_rewind(uint64_t result, int a2)
{
  if (a2 >= 16)
  {
    v2 = a2 - 31;
    if (a2 < 0x1Fu)
    {
      v2 = 0;
    }

    v3 = v2 + 15;
    LOWORD(a2) = a2 - (v3 & 0x7FF0) - 16;
    *result = *result - ((v3 >> 3) & 0xFFE) - 2;
  }

  v4 = *(result + 24);
  if (v4 >= a2)
  {
    v6 = v4 - a2;
    v5 = *result;
  }

  else
  {
    v5 = (*result - 2);
    *result = v5;
    v6 = v4 - a2 + 16;
  }

  *(result + 24) = v6;
  if ((v5 + 1) <= *(result + 8) && v5 < v5 + 1 && v5 >= *(result + 16))
  {
    *(result + 26) = *v5;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t parse_data(uint64_t result, unsigned int a2, int a3, int a4, int a5, _WORD *a6)
{
  v9 = result;
  if (a2 == 2)
  {
    v10 = &ddp_udc_int_huff_tree_fine_coeff_sparse;
    v11 = &ddp_udc_int_huff_tree_coarse_coeff_sparse;
  }

  else
  {
    if (a2 != 1)
    {
      v12 = a4 == 5;
      if (a4 == 5)
      {
        v13 = &ddp_udc_int_huff_tree_5ch_pos_index_sparse;
      }

      else
      {
        v13 = &ddp_udc_int_huff_tree_7ch_pos_index_sparse;
      }

      v14 = ddpi_udc_setoutparam_a_support_outmode;
      v15 = &ddp_udc_int_huff_tree_7ch_pos_index_sparse;
      goto LABEL_13;
    }

    v10 = &ddp_udc_int_huff_tree_fine_generic;
    v11 = ddp_udc_int_huff_tree_coarse_generic;
  }

  v12 = a5 == 0;
  if (a5)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v14 = v10 + 382;
  v15 = (v11 + 380);
LABEL_13:
  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = &ddp_udc_int_jocdec_absoffset + 8 * a2;
  v18 = &v17[4 * a5];
  v19 = (v18 + 4);
  if (v18 < v17 || v19 > (v17 + 8) || v18 >= v19)
  {
    goto LABEL_41;
  }

  v31 = -1431655766;
  v22 = *v18;
  v28 = v13;
  v29 = v16;
  v30 = v13;
  result = ddp_udc_int_huff_read(result, &v28, &v31);
  if (result)
  {
    return result;
  }

  v23 = a6 + 1;
  if (a6 + 1 > &a6[a3] || v23 < a6)
  {
LABEL_41:
    __break(0x5519u);
    return result;
  }

  if (v31 + v22 >= a4)
  {
    v24 = a4;
  }

  else
  {
    v24 = 0;
  }

  *a6 = v31 + v22 - v24;
  if (a3 < 2)
  {
    return 0;
  }

  v25 = a3 - 1;
  while (1)
  {
    v28 = v13;
    v29 = v16;
    v30 = v13;
    result = ddp_udc_int_huff_read(v9, &v28, &v31);
    if (result)
    {
      return 1;
    }

    if (v23 - 1 < a6 || v23 - 1 > v23)
    {
      goto LABEL_41;
    }

    v26 = v31 + *(v23 - 1);
    if (v26 >= a4)
    {
      v27 = a4;
    }

    else
    {
      v27 = 0;
    }

    *v23++ = v26 - v27;
    if (!--v25)
    {
      return 0;
    }
  }
}

_WORD *_jocdec_dequantize(_WORD *result, __int16 *a2, int a3, uint64_t a4)
{
  if (HIDWORD(a4))
  {
    if (HIDWORD(a4) == 1 && a3 >= 1)
    {
      v4 = a3;
      do
      {
        v5 = *a2++;
        *result++ = 205 * v5 - 19680;
        --v4;
      }

      while (v4);
    }
  }

  else if (a3 >= 1)
  {
    v6 = a3;
    do
    {
      v7 = *a2++;
      *result++ = 410 * v7 - 19680;
      --v6;
    }

    while (v6);
  }

  return result;
}

unint64_t ddp_udc_int_ms_mixer_open(unint64_t result)
{
  v1 = 0;
  v2 = result + 136;
  *(result + 4) = 0;
  v3 = result + 104;
  while (1)
  {
    v4 = result + v1;
    v5 = (result + v1 + 8);
    v6 = result + v1 + 12;
    if (v6 > result + 40 || v5 > v6)
    {
      break;
    }

    *v5 = 0;
    v8 = v4 + 76;
    if (v4 + 76 > v3)
    {
      break;
    }

    v9 = (v4 + 72);
    if (v9 > v8)
    {
      break;
    }

    *v9 = 0;
    v10 = result + v1 + 44;
    if (v10 > result + 72)
    {
      break;
    }

    v11 = (result + v1 + 40);
    if (v11 > v10)
    {
      break;
    }

    *v11 = 0;
    v12 = (result + v1 + 104);
    if (v12 < v3)
    {
      break;
    }

    v13 = result + v1 + 108;
    if (v13 > v2 || v12 > v13)
    {
      break;
    }

    *v12 = 0;
    v1 += 4;
    if (v1 == 32)
    {
      *result = 1;
      if (v2 >= result)
      {
        return result;
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ddp_udc_int_jocd_open(int *a1, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  *v336 = *MEMORY[0x1E69E9840];
  v323 = 0;
  memset(v322, 0, sizeof(v322));
  v4 = *a2;
  v5 = *a2 + 24;
  if (v5 > a2[1] || v4 > v5 || v4 < a2[2])
  {
    goto LABEL_407;
  }

  v10 = 0;
  v11 = *v4;
  v303 = v4[2];
  v304 = v4[1];
  v12 = *a1;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v335[0] = v13;
  v335[1] = v13;
  v325 = v335;
  v326 = v336;
  v324 = 0x1800000001;
  v327 = v335;
  v328 = 48000;
  do
  {
    v14 = v335 + v10 + 4;
    v15 = v14 > v336 || v335 + v10 > v14;
    if (v15 || (v335 + v10) < v335)
    {
      goto LABEL_407;
    }

    *(v335 + v10) = ddp_udc_int_jocdec_get_default_config_channel_order[v10 / 4];
    v10 += 4;
  }

  while (v10 != 32);
  v329 = 0;
  LODWORD(v324) = 4;
  v16 = 1;
  if (v12 == 2)
  {
    v18 = 0;
    v19 = 0;
    LODWORD(v329) = 1;
    v17 = 1;
  }

  else
  {
    if (v12 == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 1;
      HIDWORD(v329) = 1;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v19 = 1;
  }

  a1[1] = 0;
  if (ddp_udc_int_jocdec_query_mem(v322, &v324))
  {
    return 3;
  }

  v20 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 2) = v20;
  *(a1 + 3) = v304;
  *(a1 + 4) = v303;
  v21 = v20 + 49152;
  if (v20 != -49152 && (v20 + 49656 > v304 || v21 > v20 + 49656 || v21 < v303))
  {
    goto LABEL_407;
  }

  *(v20 + 49476) = 15;
  *(a1 + 1) = v21;
  if (v20 + 49480 > v20 + 49488)
  {
    goto LABEL_407;
  }

  v22 = (v20 + 49663) & 0xFFFFFFFFFFFFFFF8;
  if (v22 > v304 || v303 > v22 || v304 - v22 <= 0x2C7)
  {
    goto LABEL_407;
  }

  if (v19 & v16)
  {
    return 3;
  }

  v296 = (v20 + 49480);
  v24 = v22 + 712;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v333 = v25;
  v334 = v25;
  v332 = v25;
  *(v22 + 692) = v18;
  *(v22 + 696) = v17;
  *(v22 + 700) = 0;
  *(v22 + 704) = 0x500000000;
  *(v22 + 8) = 0x1800000004;
  *(v22 + 48) = v17;
  *(v22 + 52) = v18;
  if (v22 >= v22 + 712)
  {
    goto LABEL_407;
  }

  v26 = 0;
  v27 = a3 + a4;
  *(v22 + 560) = 0;
  *(v22 + 568) = 0;
  do
  {
    v28 = v22 + v26;
    v29 = (v22 + v26 + 572);
    v30 = v22 + v26 + 576;
    if (v30 > v22 + 632 || v29 > v30)
    {
      goto LABEL_407;
    }

    *v29 = 0;
    v32 = v28 + 636;
    if (v28 + 636 > v22 + 692)
    {
      goto LABEL_407;
    }

    v33 = (v28 + 632);
    if (v33 > v32)
    {
      goto LABEL_407;
    }

    *v33 = 0;
    v26 += 4;
  }

  while (v26 != 60);
  if (v304 < v24)
  {
    goto LABEL_407;
  }

  if ((v304 - v24) >> 3 <= 0x9F8)
  {
    goto LABEL_407;
  }

  if (a4 <= 0x20F)
  {
    goto LABEL_407;
  }

  *(v22 + 712) = a3;
  bzero((v22 + 728), 0x4B78uLL);
  if (v22 + 728 > v22 + 20048)
  {
    goto LABEL_407;
  }

  *(v22 + 720) = 0;
  *(v22 + 21128) = 0;
  if (v22 + 21136 < v24)
  {
    goto LABEL_407;
  }

  *(v22 + 64) = v24;
  v34 = ((v22 + 21167) & 0xFFFFFFFFFFFFFFE0);
  v330 = 0;
  v331 = 10083;
  if (v304 < v34)
  {
    goto LABEL_407;
  }

  if (v303 > v34)
  {
    goto LABEL_407;
  }

  if (v304 - v34 <= 0x2762)
  {
    goto LABEL_407;
  }

  v35 = (a3 + 559) & 0xFFFFFFFFFFFFFFE0;
  v36 = v27 - v35;
  if (v27 < v35)
  {
    goto LABEL_407;
  }

  if (v35 < a3)
  {
    goto LABEL_407;
  }

  v37 = v34 + 7;
  v321 = v34 + 10083;
  if (v34 + 7 > (v34 + 10083))
  {
    goto LABEL_407;
  }

  v38 = 0;
  *v34 = 0x70000000FLL;
  *(((v22 + 21167) & 0xFFFFFFFFFFFFFFE0) + 8) = 0x1700000018;
  *(((v22 + 21167) & 0xFFFFFFFFFFFFFFE0) + 0x10) = 0xB3D2AAAABLL;
  *(((v22 + 21167) & 0xFFFFFFFFFFFFFFE0) + 0x18) = 1034594987;
  v39 = (v34 + 52);
  v40 = ((v22 + 21167) & 0xFFFFFFFFFFFFFFE0);
  v41 = v34 + 10083;
  v40[4] = v37;
  v40[5] = v321;
  v40[6] = v40;
  v42 = v34 + 10083;
  v43 = v34 + 7;
  v44 = v40;
  do
  {
    v45 = &v43[v38];
    if ((v45 + 3) > v42 || v45 > v45 + 3 || v45 < v40)
    {
      goto LABEL_407;
    }

    *v45 = v39;
    v45[1] = v41;
    v45[2] = v44;
    v43 = *(((v22 + 21167) & 0xFFFFFFFFFFFFFFE0) + 0x20);
    v42 = *(((v22 + 21167) & 0xFFFFFFFFFFFFFFE0) + 0x28);
    v40 = *(((v22 + 21167) & 0xFFFFFFFFFFFFFFE0) + 0x30);
    v48 = &v43[v38];
    v49 = &v43[v38 + 3];
    v50 = v49 > v42 || v48 > v49;
    if (v50 || v48 < v40)
    {
      goto LABEL_407;
    }

    v41 = v48[1];
    v44 = v48[2];
    v39 = *v48 + 644;
    v38 += 3;
  }

  while (v38 != 45);
  if (v34 > v37)
  {
    goto LABEL_407;
  }

  v310 = (a3 + 559) & 0xFFFFFFFFFFFFFFE0;
  *(v22 + 72) = v34;
  *&v332 = v324;
  *(&v334 + 1) = v329;
  if (v325 > v326)
  {
    goto LABEL_407;
  }

  if (v326 - v325 < 29)
  {
    goto LABEL_407;
  }

  if (v327 > v325)
  {
    goto LABEL_407;
  }

  init_channel_mapping(&v332 + 8, v325);
  ddp_udc_int_converter_query_mem(&v331, &v330, &v332);
  if (v304 < v321)
  {
    goto LABEL_407;
  }

  if (v303 > v321)
  {
    goto LABEL_407;
  }

  v52 = v331;
  if (v304 - v321 < v331)
  {
    goto LABEL_407;
  }

  v297 = a3 + a4;
  v298 = a2;
  v299 = a1;
  v307 = v330;
  v53 = (a3 + 559) & 0xFFFFFFFFFFFFFFE0;
  if (v36 < v330)
  {
    goto LABEL_407;
  }

  v54 = 7;
  if (DWORD2(v334))
  {
    v54 = 8;
  }

  v306 = v54;
  v295 = v34 + 10090;
  v55 = (v34 + 10090) & 0xFFFFFFFFFFFFFFF8;
  if (v55 < v321 || (v56 = &v321[v331], v57 = v55 + 480, v55 + 480 > &v321[v331]) || v55 > v57 || (v58 = v332, v59 = v333, *(v55 + 216) = v334, *(v55 + 200) = v59, *(v55 + 184) = v58, v305 = v55 + 184, v55 + 184 > v55 + 232))
  {
LABEL_407:
    __break(0x5519u);
  }

  v60 = 0;
  v300 = v310 + v307;
  *(v55 + 256) = 15;
  *(v55 + 288) = -1090519040;
  v308 = v55 + 64;
  v309 = v310 + 1055;
  v61 = 8107;
  v62 = v55 + 8107;
  v63 = v55 + 5596;
  v64 = 2774;
  v65 = v55 + 3285;
  v66 = v34 + v52;
  v67 = v34 + v52 + 6829;
  v68 = v66 + 4494;
  v69 = v55 + 511;
  v70 = -2774;
  v71 = 2774;
  v317 = v56;
  v318 = (v34 + 10090) & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v72 = v61;
    v73 = v62;
    v74 = v57 + 2551;
    if (v57 + 2551 > v56 || v74 < v321)
    {
      goto LABEL_407;
    }

    if (v56 - v74 < 0xAD6)
    {
      goto LABEL_407;
    }

    if (v307 < 0x41F)
    {
      goto LABEL_407;
    }

    if (v57 > v56)
    {
      goto LABEL_407;
    }

    if (v57 < v321)
    {
      goto LABEL_407;
    }

    if (v56 - v57 < 0x9F7)
    {
      goto LABEL_407;
    }

    v76 = v63;
    v77 = (v57 + 2558) & 0xFFFFFFFFFFFFFFF8;
    if (v57 + 5325 < v77)
    {
      goto LABEL_407;
    }

    if (v77 < v74)
    {
      goto LABEL_407;
    }

    if (v57 + 5325 - v77 <= 0xD7)
    {
      goto LABEL_407;
    }

    v78 = v64;
    v79 = v332;
    *(v77 + 208) = 0;
    *(v77 + 176) = 0u;
    *(v77 + 192) = 0u;
    *(v77 + 144) = 0u;
    *(v77 + 160) = 0u;
    *(v77 + 112) = 0u;
    *(v77 + 128) = 0u;
    *(v77 + 80) = 0u;
    *(v77 + 96) = 0u;
    *(v77 + 48) = 0u;
    *(v77 + 64) = 0u;
    *(v77 + 16) = 0u;
    *(v77 + 32) = 0u;
    *v77 = 0u;
    if (v77 >= v77 + 216 || v77 + 216 > v57 + 5325)
    {
      goto LABEL_407;
    }

    v80 = v71;
    v81 = v70;
    v82 = v65;
    v83 = v67;
    v84 = v68;
    v85 = 0;
    v86 = 0;
    v87 = (v57 + 31) & 0xFFFFFFFFFFFFFFE0;
    *(v77 + 48) = v87;
    *(v77 + 56) = v74;
    v88 = v69 & 0xFFFFFFFFFFFFFFE0;
    *(v77 + 64) = v57;
    *(v77 + 184) = v53;
    *(v77 + 192) = v309;
    *(v77 + 200) = v53;
    v89 = v87 + 2304;
    v90 = 9;
    *v77 = 64;
    do
    {
      v91 = v85 + v88;
      v92 = (v85 + v88 + 2304);
      v93 = v85 + v88 + 2328;
      if (v93 > v74 || v92 > v93 || v92 < v57)
      {
        goto LABEL_407;
      }

      *v92 = v86 + v88;
      *(v91 + 2312) = v74;
      *(v91 + 2320) = v57;
      v86 += 256;
      v85 += 24;
      --v90;
    }

    while (v90);
    *(v77 + 72) = v89;
    *(v77 + 80) = v74;
    *(v77 + 88) = v57;
    v96 = (*(v77 + 32) << 7) - 64;
    *(v77 + 152) = r4_fft_64_pair;
    *(v77 + 160) = r4_fft_32_pair;
    *(v77 + 168) = 64;
    *(v77 + 176) = dlb_dct_twiddle_table16_L64;
    *v77 = 64;
    *(v77 + 32) = 5;
    *(v77 + 36) = v79;
    *(v77 + 40) = 64;
    *(v77 + 96) = v96;
    *(v77 + 100) = 0;
    *(v77 + 104) = &dlb_cos_64_full;
    *(v77 + 112) = &dlb_qmf_filter_coeff_P5_p64atm301_vec_syn;
    *(v77 + 120) = &dlb_cos_64_full;
    *(v77 + 128) = 0;
    *(v77 + 136) = 0;
    *(v77 + 144) = 0;
    *(v77 + 8) = &dlb_qmf_filter_coeff_P5_p64atm301_vec_ana;
    *(v77 + 16) = &vwin64;
    *(v77 + 24) = &dlb_qmf_filter_coeff_P5_p64atm301_vec_ana;
    *(v77 + 208) = analysisPolyphaseFiltering_P5;
    v311 = v69;
    v313 = v60;
    v97 = v76;
    v98 = v73;
    v315 = v84;
    v99 = v72;
    v319 = v83;
    v100 = v82;
    v101 = v78;
    v102 = v81;
    DLB_qmf_analysisL_init(((v57 + 2558) & 0xFFFFFFFFFFFFFFF8));
    v103 = v102;
    v104 = v101;
    v105 = v100;
    v106 = ((v321 + 7) & 0xFFFFFFFFFFFFFFF8);
    v107 = v319;
    v108 = v98;
    v109 = v315;
    v110 = v80;
    v111 = v97;
    v53 = (a3 + 559) & 0xFFFFFFFFFFFFFFE0;
    v56 = v317;
    v112 = (v318 + 8 * v313);
    if (v112 < v318 || (v112 + 1) > v308 || v112 > v112 + 1)
    {
      goto LABEL_407;
    }

    v113 = v99;
    v57 += 2774;
    v60 = v313 + 1;
    *v112 = v77;
    v61 = v99 + 2774;
    v62 = v108 + 2774;
    v63 = v97 + 2774;
    v71 = v110 + 2774;
    v64 = v104 + 2774;
    v70 = v103 - 2774;
    v65 = v105 + 2774;
    v67 = v319 - 2774;
    v68 = v315 - 2774;
    v69 = v311 + 2774;
  }

  while (v313 + 1 != v306);
  if (HIDWORD(v334))
  {
    v114 = 0;
    v115 = -(v295 & 0xFFFFFFFFFFFFFFF8);
    v116 = 15;
    do
    {
      v117 = v106 + v110 + 2815;
      if (v117 > v56)
      {
        goto LABEL_407;
      }

      if (v117 < v321)
      {
        goto LABEL_407;
      }

      if (&v109[v115] < 0x9D6)
      {
        goto LABEL_407;
      }

      v118 = v106 + v110 + 480;
      if (v118 > v56)
      {
        goto LABEL_407;
      }

      if (v118 < v321)
      {
        goto LABEL_407;
      }

      if ((v115 + v107) < 0x91F)
      {
        goto LABEL_407;
      }

      v119 = v106 + v110 + v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8);
      if (v119 > v106 + v113)
      {
        goto LABEL_407;
      }

      if (v119 < v117)
      {
        goto LABEL_407;
      }

      if (v108 - (v111 & 0xFFFFFFFFFFFFFFF8) <= 0xAF)
      {
        goto LABEL_407;
      }

      v120 = v332;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2671) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2655) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2703) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2687) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2735) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2719) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2767) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2751) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2799) = 0u;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2783) = 0u;
      *v119 = 0u;
      if (v119 >= v119 + 176)
      {
        goto LABEL_407;
      }

      if (v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2639 > v106 + v113)
      {
        goto LABEL_407;
      }

      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2695) = r4_fft_32_pair;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2687) = 64;
      v121 = v106 + v110 + v115 + v103 + (v105 & 0xFFFFFFFFFFFFFFE0);
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2679) = dlb_dct_twiddle_table16_L64;
      *v119 = 64;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2783) = 5;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2779) = v120;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2775) = 64;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2755) = 0;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2739) = 0;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2747) = 0;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2731) = 0;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2727) = &dlb_cos_64_full;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2719) = &dlb_qmf_filter_coeff_P5_p64atm301_vec_syn;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2711) = &dlb_cos_64_full;
      *(v115 + v103 + (v111 & 0xFFFFFFFFFFFFFFF8) + v117 - 2703) = r4_fft_64_pair;
      if (v121 > v117)
      {
        goto LABEL_407;
      }

      if (v121 < v118)
      {
        goto LABEL_407;
      }

      if ((v106 + v104 - (v105 & 0xFFFFFFFFFFFFFFE0) + 2815) < 2304)
      {
        goto LABEL_407;
      }

      v122 = v53;
      v312 = v116;
      v314 = v108;
      v123 = v114;
      v316 = v111;
      v320 = v107;
      v124 = v110;
      v125 = v109;
      v126 = v105;
      v127 = v103;
      v128 = v104;
      v129 = v113;
      *(v119 + 48) = v121;
      *(v119 + 56) = 576;
      *(v119 + 144) = v122;
      *(v119 + 152) = v309;
      *(v119 + 160) = v122;
      *(v119 + 8) = &dlb_qmf_filter_coeff_P5_p64atm301_vec_syn;
      *(v119 + 16) = &dlb_qmf_filter_coeff_P5_p64atm301_vec_ana;
      *(v119 + 24) = &dlb_qmf_filter_coeff_P5_p64atm301_vec_syn;
      bzero(v121, 0x900uLL);
      if (v121 >= v121 + 2304)
      {
        goto LABEL_407;
      }

      v130 = synthesisPolyphaseFiltering_P4;
      if (*(v119 + 32) == 5)
      {
        v130 = synthesisPolyphaseFiltering_P5;
      }

      *(v119 + 168) = v130;
      v56 = v317;
      v106 = ((v321 + 7) & 0xFFFFFFFFFFFFFFF8);
      v131 = v123;
      v132 = v123 + v318;
      v133 = (v123 + v318 + 64);
      v115 = -(v295 & 0xFFFFFFFFFFFFFFF8);
      v53 = (a3 + 559) & 0xFFFFFFFFFFFFFFE0;
      v134 = v129;
      v135 = v127;
      v136 = v124;
      if (v133 < v308)
      {
        goto LABEL_407;
      }

      v137 = v132 + 72;
      if (v137 > v305 || v133 > v137)
      {
        goto LABEL_407;
      }

      v114 = v131 + 8;
      v113 = v134 + 2518;
      *v133 = v119;
      v108 = v314 + 2518;
      v111 = v316 + 2518;
      v110 = v136 + 2518;
      v104 = v128 + 2518;
      v103 = v135 - 2518;
      v105 = v126 + 2518;
      v107 = v320 - 2518;
      v109 = v125 - 2518;
      v116 = v312 - 1;
    }

    while (v312 != 1);
    v57 = v110 + v318 + 480;
  }

  v138 = (v310 + 1086) & 0xFFFFFFFFFFFFFFE0;
  v106[29] = v138;
  v106[30] = v300;
  v106[31] = v53;
  v139 = v332;
  v140 = ((v57 + 7) & 0xFFFFFFFFFFFFFFF8);
  v106[33] = v140;
  v106[34] = v56;
  v106[35] = v321;
  if (v56 < v140)
  {
    goto LABEL_407;
  }

  if (v140 < v321)
  {
    goto LABEL_407;
  }

  v141 = (DWORD1(v332) << 6);
  if (4 * v141 > v56 - v140)
  {
    goto LABEL_407;
  }

  bzero(v140, 4 * v141);
  if (v140 > &v140[4 * v141])
  {
    goto LABEL_407;
  }

  v142 = 0;
  v143 = v138 + 4 * (v139 << 6);
  v144 = &v140[4 * v141];
  v145 = v317;
  *(v318 + 260) = 0;
  v146 = v318 + 304;
  v148 = v143 > v300 || v143 < v310;
  do
  {
    v149 = (v146 + 24 * v142);
    v152 = (v149 + 3) <= v318 + 472 && v149 <= v149 + 3 && v149 >= v146;
    if ((v142 - 3) > 1)
    {
      if (!v152)
      {
        goto LABEL_407;
      }

      *v149 = v144;
      v149[1] = v145;
      v149[2] = v321;
      if (v145 < v144)
      {
        goto LABEL_407;
      }

      if (v144 < v321)
      {
        goto LABEL_407;
      }

      if (v145 - v144 < 0xA00)
      {
        goto LABEL_407;
      }

      v156 = v144 + 2560;
      bzero(v144, 0xA00uLL);
      v145 = v317;
      v160 = (v321 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v144 > v144 + 2560)
      {
        goto LABEL_407;
      }
    }

    else
    {
      if (!v152)
      {
        goto LABEL_407;
      }

      v153 = v145 >= v144 && v144 >= v321;
      if (!v153 || v148)
      {
        goto LABEL_407;
      }

      if ((v145 - v144) >> 7 < 0x2D)
      {
        goto LABEL_407;
      }

      v155 = v144 + 264;
      if (v144 + 264 < v144)
      {
        goto LABEL_407;
      }

      v156 = v144 + 5760;
      if (v155 > v144 + 5760)
      {
        goto LABEL_407;
      }

      *(v144 + 584) = 0u;
      *(v144 + 600) = 0u;
      *(v144 + 552) = 0u;
      *(v144 + 568) = 0u;
      *(v144 + 520) = 0u;
      *(v144 + 536) = 0u;
      *(v144 + 488) = 0u;
      *(v144 + 504) = 0u;
      *(v144 + 456) = 0u;
      *(v144 + 472) = 0u;
      *(v144 + 424) = 0u;
      *(v144 + 440) = 0u;
      *(v144 + 392) = 0u;
      *(v144 + 408) = 0u;
      *(v144 + 360) = 0u;
      *(v144 + 376) = 0u;
      *(v144 + 328) = 0u;
      *(v144 + 344) = 0u;
      *(v144 + 296) = 0u;
      *(v144 + 312) = 0u;
      v157 = (v144 + 616);
      *v155 = 0u;
      *(v144 + 280) = 0u;
      if (v155 > v144 + 616)
      {
        goto LABEL_407;
      }

      *v144 = v155;
      *(v144 + 1) = v156;
      *(v144 + 2) = v144;
      if (v157 < v144)
      {
        goto LABEL_407;
      }

      if (v157 > v156)
      {
        goto LABEL_407;
      }

      bzero(v144 + 616, 0x1400uLL);
      if (v157 > (v144 + 5736))
      {
        goto LABEL_407;
      }

      v158 = 0;
      v159 = 616;
      v145 = v317;
      v160 = (v321 + 7) & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v161 = &v144[v158];
        v162 = &v144[v158 + 24];
        v163 = &v144[v158 + 48];
        if (v163 > v155 || v162 > v163)
        {
          goto LABEL_407;
        }

        *v162 = &v144[v159];
        *(v161 + 4) = v156;
        *(v161 + 5) = v144;
        v158 += 24;
        v159 += 512;
      }

      while (v158 != 240);
      *v149 = v144;
      v149[1] = v156;
      v149[2] = v144;
    }

    ++v142;
    v144 = v156;
  }

  while (v142 != 7);
  *(v160 + 296) = 0;
  *(v160 + 472) = 0;
  *(v22 + 56) = v160;
  v165 = (v145 + 31) & 0xFFFFFFFFFFFFFFE0;
  v166 = v304 - v165;
  if (v304 < v165)
  {
    goto LABEL_407;
  }

  if (v303 > v165)
  {
    goto LABEL_407;
  }

  v167 = v324;
  v168 = 24 * v324;
  if (v166 < v168)
  {
    goto LABEL_407;
  }

  v169 = v165 + 24 * v324;
  *(v22 + 152) = v165;
  *(v22 + 160) = v169;
  *(v22 + 168) = v165;
  if (v304 < v169 || v303 > v169 || v304 - v169 < v168)
  {
    goto LABEL_407;
  }

  v170 = v169 + v168;
  *(v22 + 176) = v169;
  *(v22 + 184) = v169 + v168;
  *(v22 + 192) = v169;
  if (v167)
  {
    v171 = 0;
    v172 = v166 - 48 * v167;
    do
    {
      v173 = *(v22 + 152);
      v174 = v173 + v171;
      v175 = v173 + v171 + 24;
      v177 = v175 <= *(v22 + 160) && v174 <= v175 && v174 >= *(v22 + 168);
      if (!v177 || v170 > v304 || v303 > v170 || v172 <= 0xA7)
      {
        goto LABEL_407;
      }

      v178 = v170 + 168;
      v179 = (v173 + v171);
      *v179 = v170;
      v179[1] = v170 + 168;
      v179[2] = v170;
      v180 = *(v22 + 176);
      v181 = v180 + v171;
      v182 = v180 + v171 + 24;
      v183 = v182 > *(v22 + 184) || v181 > v182;
      v184 = !v183 && v181 >= *(v22 + 192);
      if (!v184 || v178 > v304 || v303 > v178 || v172 - 168 <= 0x167)
      {
        goto LABEL_407;
      }

      v170 += 528;
      v185 = (v180 + v171);
      *v185 = v178;
      v185[1] = v170;
      v185[2] = v178;
      v171 += 24;
      v172 -= 528;
    }

    while (v168 != v171);
  }

  if (v304 < v170 || v303 > v170 || v304 - v170 <= 0xA7)
  {
    goto LABEL_407;
  }

  v186 = 0;
  v187 = (v300 + 31) & 0xFFFFFFFFFFFFFFE0;
  v188 = v170 + 168;
  *(v22 + 80) = v170;
  *(v22 + 88) = v170 + 168;
  *(v22 + 96) = v170;
  do
  {
    v189 = (*(v22 + 80) + 24 * v186);
    v191 = (v189 + 3) <= *(v22 + 88) && v189 <= v189 + 3 && v189 >= *(v22 + 96);
    if (!v191 || v304 < v188 || v303 > v188 || v304 - v188 < v168)
    {
      goto LABEL_407;
    }

    v192 = v188 + v168;
    *v189 = v188;
    v189[1] = v188 + v168;
    v189[2] = v188;
    if (v167)
    {
      v193 = 0;
      v194 = a4 + a3 - v187;
      v195 = v187;
      while (v195 <= v297 && v195 >= a3 && v194 > 0x1FF)
      {
        v196 = (*(v22 + 80) + 24 * v186);
        v197 = (v196 + 3) > *(v22 + 88) || v196 > v196 + 3;
        if (v197 || v196 < *(v22 + 96))
        {
          break;
        }

        v199 = *v196;
        v200 = v196[1];
        v201 = v196[2];
        v202 = (v199 + v193);
        v203 = (v202 + 3) > v200 || v202 > v202 + 3;
        if (v203 || v202 < v201)
        {
          break;
        }

        v187 = v195 + 512;
        *v202 = v195;
        v202[1] = v195 + 512;
        v202[2] = v195;
        v205 = *(v22 + 152);
        v206 = v205 + v193;
        v207 = v205 + v193 + 24;
        if (v207 > *(v22 + 160) || v206 > v207 || v206 < *(v22 + 168))
        {
          break;
        }

        v208 = (v205 + v193);
        v209 = v208[1];
        v210 = v208[2];
        v211 = (*v208 + 16 * v186);
        v212 = (v211 + 2) > v209 || v211 > v211 + 2;
        if (v212 || v211 < v210)
        {
          break;
        }

        *v211 = v195;
        v211[1] = v187;
        v193 += 24;
        v194 -= 512;
        v195 += 512;
        if (v168 == v193)
        {
          goto LABEL_266;
        }
      }

      goto LABEL_407;
    }

LABEL_266:
    ++v186;
    v188 = v192;
  }

  while (v186 != 7);
  v214 = v329;
  if (v329)
  {
    if (v304 >= v192 && v303 <= v192 && v304 - v192 > 0xBF)
    {
      v215 = 0;
      v216 = v192 + 192;
      *(v22 + 104) = v192;
      *(v22 + 112) = v192 + 192;
      *(v22 + 120) = v192;
      v217 = (v187 + 31) & 0xFFFFFFFFFFFFFFE0;
      v218 = HIDWORD(v324);
      v219 = 24 * HIDWORD(v324);
      while (1)
      {
        v220 = (*(v22 + 104) + 24 * v215);
        v222 = (v220 + 3) <= *(v22 + 112) && v220 <= v220 + 3 && v220 >= *(v22 + 120);
        if (!v222 || v304 < v216 || v303 > v216 || v304 - v216 < v219)
        {
          goto LABEL_407;
        }

        v192 = v216 + v219;
        *v220 = v216;
        v220[1] = v216 + v219;
        v220[2] = v216;
        if (v218)
        {
          break;
        }

        v187 = v217;
LABEL_307:
        ++v215;
        v216 = v192;
        v217 = v187;
        if (v215 == 8)
        {
          goto LABEL_308;
        }
      }

      v223 = 0;
      v224 = a4 + a3 - v217;
      while (v217 <= v297 && v217 >= a3 && v224 > 0x1FF)
      {
        v225 = (*(v22 + 104) + 24 * v215);
        v226 = (v225 + 3) > *(v22 + 112) || v225 > v225 + 3;
        if (v226 || v225 < *(v22 + 120))
        {
          break;
        }

        v228 = *v225;
        v229 = v225[1];
        v230 = v225[2];
        v231 = (v228 + v223);
        v232 = (v231 + 3) > v229 || v231 > v231 + 3;
        if (v232 || v231 < v230)
        {
          break;
        }

        v187 = v217 + 512;
        *v231 = v217;
        v231[1] = v217 + 512;
        v231[2] = v217;
        v223 += 24;
        v224 -= 512;
        v217 += 512;
        if (v219 == v223)
        {
          goto LABEL_307;
        }
      }
    }

    goto LABEL_407;
  }

LABEL_308:
  if (v304 < v192 || v303 > v192 || v304 - v192 <= 0x17F)
  {
    goto LABEL_407;
  }

  v234 = 0;
  v235 = v192 + 384;
  *(v22 + 128) = v192;
  *(v22 + 136) = v192 + 384;
  *(v22 + 144) = v192;
  v236 = v324;
  v237 = 24 * v324;
  if (v214)
  {
    v238 = 1;
  }

  else
  {
    v238 = v324 == 0;
  }

  v239 = v238;
  do
  {
    v240 = (*(v22 + 128) + 24 * v234);
    v242 = (v240 + 3) <= *(v22 + 136) && v240 <= v240 + 3 && v240 >= *(v22 + 144);
    if (!v242 || v304 < v235 || v303 > v235 || v304 - v235 < v237)
    {
      goto LABEL_407;
    }

    v243 = v235 + v237;
    *v240 = v235;
    v240[1] = v235 + v237;
    v240[2] = v235;
    if ((v239 & 1) == 0)
    {
      v245 = 0;
      v246 = a4 + a3 - v187;
      while (1)
      {
        v247 = (*(v22 + 128) + 24 * v234);
        v248 = (v247 + 3) > *(v22 + 136) || v247 > v247 + 3;
        if (v248 || v247 < *(v22 + 144))
        {
          goto LABEL_407;
        }

        v250 = *v247;
        v251 = v247[1];
        v252 = v247[2];
        v253 = v250 + v245;
        v254 = v250 + v245 + 24;
        v255 = v254 > v251 || v253 > v254;
        v256 = !v255 && v253 >= v252;
        if (!v256 || v187 > v297 || v187 < a3 || v246 <= 0x1FF)
        {
          goto LABEL_407;
        }

        v244 = v187 + 512;
        v257 = (v250 + v245);
        *v257 = v187;
        v257[1] = v187 + 512;
        v257[2] = v187;
        v245 += 24;
        v246 -= 512;
        v187 += 512;
        if (v237 == v245)
        {
          goto LABEL_351;
        }
      }
    }

    v244 = v187;
LABEL_351:
    ++v234;
    v235 = v243;
    v187 = v244;
  }

  while (v234 != 16);
  if (!v214)
  {
    v258 = 0;
    if (v236 <= 1)
    {
      v259 = 1;
    }

    else
    {
      v259 = v236;
    }

    v260 = 24 * v259;
    v261 = v236;
    do
    {
      if (v261)
      {
        v262 = 0;
        do
        {
          v263 = (*(v22 + 176) + v262);
          if ((v263 + 3) > *(v22 + 184) || v263 > v263 + 3 || v263 < *(v22 + 192))
          {
            goto LABEL_407;
          }

          v266 = v263[1];
          v267 = v263[2];
          v268 = *v263 + 24 * v258;
          v269 = v268 + 24 > v266 || v268 > v268 + 24;
          if (v269 || v268 < v267)
          {
            goto LABEL_407;
          }

          v271 = (*(v22 + 128) + 24 * v258);
          v272 = (v271 + 3);
          v273 = (v271 + 6) > *(v22 + 136) || v272 > (v271 + 6);
          if (v273 || v272 < *(v22 + 144))
          {
            goto LABEL_407;
          }

          v275 = v271[4];
          v276 = v271[5];
          v277 = v271[3] + v262;
          v278 = v277 + 24 > v275 || v277 > v277 + 24;
          if (v278 || v277 < v276)
          {
            goto LABEL_407;
          }

          v280 = *v277;
          *(v268 + 16) = *(v277 + 16);
          *v268 = v280;
          v262 += 24;
        }

        while (v260 != v262);
        v261 = v236;
      }

      ++v258;
    }

    while (v258 != 15);
  }

  *v296 = v22;
  if (v214)
  {
    v281 = v323;
  }

  else
  {
    v281 = 0;
  }

  v282 = (v22 + *&v322[0] + v281 + 7) & 0xFFFFFFFFFFFFFFF8;
  v283 = *(v299 + 1);
  *(v283 + 376) = 1;
  *(v283 + 360) = 1;
  *(v283 + 368) = 1;
  *(v283 + 384) = v282;
  *(v283 + 392) = v304;
  *(v283 + 400) = v303;
  v284 = *(v299 + 1);
  *(v284 + 424) = 3;
  *(v284 + 408) = 16;
  *(v284 + 432) = v282 + 24;
  *(v284 + 440) = v304;
  *(v284 + 448) = v303;
  v285 = *(v299 + 1);
  *(v285 + 456) = 8;
  *(v285 + 472) = 3;
  *(v285 + 480) = (v282 + 415) & 0xFFFFFFFFFFFFFFF8;
  *(v285 + 488) = v304;
  *(v285 + 496) = v303;
  v286 = *v298;
  v287 = *v298 + 24;
  if (v287 > v298[1] || v286 > v287 || v286 < v298[2])
  {
    goto LABEL_407;
  }

  v288 = *(v299 + 1);
  v289 = *(v288 + 488);
  *v286 = *(v288 + 480) + 192;
  *(v286 + 8) = v289;
  v290 = *(v299 + 1);
  *(v290 + 288) = 1;
  *(v290 + 300) = 0;
  *(v290 + 292) = 0;
  v291 = (v290 + 8);
  v292 = 12;
  do
  {
    *(v291 - 2) = 1;
    *v291 = 1056964608;
    v291 += 3;
    --v292;
  }

  while (v292);
  *(v290 + 280) = 1;
  *(v290 + 284) = 1056964608;
  v293 = v290 + 156;
  v294 = 11;
  do
  {
    if (v293 > v290 + 276 || v293 < 0xC)
    {
      goto LABEL_407;
    }

    *(v293 - 8) = 1;
    *(v293 - 4) = 1056964608;
    v293 += 12;
    --v294;
  }

  while (v294);
  result = 0;
  *(v290 + 316) = 0;
  *(v290 + 308) = 0;
  *(*(v290 + 328) + 708) = 5;
  return result;
}

uint64_t ddp_udc_int_jocd_process_one_frame(int *a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5, int *a6, int a7, int a8, unsigned int a9, int *a10)
{
  v10 = a4;
  v1982 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 1);
  v12 = v11[41];
  v13 = *(v11 + 81);
  v1964 = 0;
  v14 = *(v11 + 80);
  v15 = *(v11 + 79);
  *(v11 + 75) = 0;
  v1835 = a8;
  v1830 = v13;
  v1833 = v15;
  if (a2 && !a8)
  {
    v16 = v11[48];
    v18 = v16 + 24 <= v11[49] && v16 <= v16 + 24 && v16 >= v11[50];
    if (!v18)
    {
      goto LABEL_3327;
    }

    v1832 = 0;
    v19 = *(a2 + 96);
    *v16 = *(a2 + 80);
    *(v16 + 16) = v19;
    v20 = *(a2 + 72);
    v1828 = v1833 == 1;
    v12[175] = 0;
    v21 = 1;
    goto LABEL_15;
  }

  if (a8 == 7 && v15 == 1)
  {
    v20 = 0;
    v21 = 1;
    v12[175] = 1;
    v1832 = 7;
    v1828 = 1;
LABEL_15:
    v22 = 0;
    v23 = *a1;
    v24 = 1;
    goto LABEL_16;
  }

  v1828 = v15 == 1;
  v20 = 0;
  v21 = 0;
  if (a8 == 7)
  {
    v102 = 5;
  }

  else
  {
    v102 = a8;
  }

  v12[175] = 0;
  v1832 = v102;
  if (v102 != 5 || v15 != 1)
  {
    goto LABEL_15;
  }

  v21 = 0;
  v20 = 0;
  v1828 = 1;
  v12[176] = 1;
  v23 = *a1;
  v22 = *a1 == 1;
  v24 = *a1 != 1;
  v1832 = 5;
LABEL_16:
  v1961 = v12;
  if (v23 == 1 && a2 && !v1832)
  {
    v25 = v12[142] && v14 == 5;
    if (v25)
    {
      v26 = v24;
      v27 = *(*(a1 + 1) + 328);
      *(v27 + 700) = 0;
      v28 = (v27 + 572);
      *(v27 + 560) = 0;
      *(v27 + 568) = 0;
      v29 = 15;
      do
      {
        if ((v28 + 1) > v27 + 632 || v28 > v28 + 1)
        {
          goto LABEL_3327;
        }

        *v28 = 0;
        if ((v28 + 16) > v27 + 692 || v28 + 15 > v28 + 16)
        {
          goto LABEL_3327;
        }

        v28[15] = 0;
        ++v28;
        --v29;
      }

      while (v29);
      *(*(v27 + 64) + 20416) = 0;
      ddp_udc_int_processor_reset(*(v27 + 72));
      v31 = *(v27 + 56);
      *(v31 + 288) = -1090519040;
      *(v31 + 472) = 0;
      *(*(a1 + 1) + 308) = 0;
      v10 = a4;
      v12 = v1961;
      v24 = v26;
    }
  }

  if (a7 == 6)
  {
    v32 = v21;
  }

  else
  {
    v32 = 0;
  }

  v1854 = v11;
  if (((v32 | v22) & 1) == 0)
  {
    v72 = 4;
    v73 = 1;
    v74 = v1830;
    v76 = v1832;
    v75 = v1833;
    if (!*a1)
    {
      goto LABEL_1842;
    }

    goto LABEL_83;
  }

  v33 = *v10;
  *v10 = a9;
  v34 = v11[48];
  v35 = v11[49];
  v36 = v11[50];
  *v12 = 0;
  v37 = (v12 + 143);
  v38 = *(v12 + 147);
  *(v12 + 158) = *(v12 + 143);
  *(v12 + 162) = v38;
  *(v12 + 166) = *(v12 + 151);
  *(v12 + 169) = *(v12 + 154);
  v1855 = (v12 + 158);
  v1849 = v12 + 173;
  if (v12 + 158 > v12 + 173)
  {
    goto LABEL_3327;
  }

  v39 = v12[175];
  if (v39)
  {
    v40 = 7;
  }

  else
  {
    v40 = 0;
  }

  v41 = v12[176];
  if (v41)
  {
    v42 = 8;
  }

  else
  {
    v42 = v40;
  }

  v1826 = v33;
  v1827 = v24;
  if (!(v41 | v39))
  {
    if ((v34 + 3) > v35)
    {
      goto LABEL_3327;
    }

    if (v34 > v34 + 3)
    {
      goto LABEL_3327;
    }

    if (v34 < v36)
    {
      goto LABEL_3327;
    }

    v44 = *v34;
    v43 = v34[1];
    if (*v34 > v43)
    {
      goto LABEL_3327;
    }

    if (v43 - v44 < v20)
    {
      goto LABEL_3327;
    }

    if (v34[2] > v44)
    {
      goto LABEL_3327;
    }

    v45 = *(v12 + 8);
    v46 = *v45;
    if (*v45 > (*v45 + 48))
    {
      goto LABEL_3327;
    }

    v47 = 0;
    *v46 = v44;
    *(v46 + 8) = v44 + v20;
    *(v46 + 16) = v44;
    *(v46 + 24) = v44;
    *(v46 + 32) = 0;
    *(v46 + 40) = 8 * v20;
    v48 = v45 + 2552;
    *(v12 + 67) = v45 + 2507;
    *(v12 + 68) = v45 + 2552;
    *(v12 + 69) = v45 + 2507;
    v49 = v46;
    do
    {
      v50 = &v45[3 * v47 + 2507];
      if (v50 + 3 > v48 || v50 > v50 + 3)
      {
        goto LABEL_3327;
      }

      v52 = 0;
      v53 = &v45[6 * v47 + 2417];
      *v50 = v53;
      v50[1] = v53 + 48;
      v50[2] = v53;
      v54 = 1;
      do
      {
        v55 = v54;
        v56 = (v53 + 24 * v52);
        v57 = (v56 + 3);
        if (v56 < v53 || v57 > v53 + 48 || v56 > v57)
        {
          goto LABEL_3327;
        }

        v54 = 0;
        v60 = &v45[161 * v47 + 2] + 644 * v52;
        *v56 = v60;
        v56[1] = v60 + 644;
        v56[2] = v60;
        v52 = 1;
      }

      while ((v55 & 1) != 0);
      ++v47;
    }

    while (v47 != 15);
    v61 = 0;
    v62 = 0;
    *(v1961 + 28) = 128;
    v63 = (v1961 + 73);
    v64 = (v1961 + 58);
    do
    {
      v65 = &v1961[v62 + 58];
      v66 = &v1961[v62 + 59];
      if (v65 < v64 || v66 > v63 || v65 > v66)
      {
        goto LABEL_3327;
      }

      v69 = &v1961[v61 + 73];
      *v65 = 0;
      if (v63 > v69 || &v1961[v61 + 77] > v1961 + 133)
      {
        goto LABEL_3327;
      }

      *v69 = 0;
      ++v62;
      v61 += 4;
    }

    while (v62 != 15);
    if (!*v48)
    {
      *(v1961 + 27) = 0x800000041;
      *v48 = 1;
    }

    v70 = ddp_udc_int_dlb_bitbuf_read(v49, 3);
    v71 = ddp_udc_int_dlb_bitbuf_read(v49, 6);
    v1961[53] = ddp_udc_int_dlb_bitbuf_read(v49, 3);
    v12 = v1961;
    if (v70 > 4)
    {
      v42 = 2;
      goto LABEL_700;
    }

    v103 = *&ddp_udc_int_jocdec_num_dmx_channels_tab[2 * v70];
    v104 = v1961[55];
    if (v104 == 8 || v103 == v104)
    {
      v106 = 0;
    }

    else
    {
      v106 = 9;
    }

    v1961[50] = v70;
    v1961[51] = v103;
    if ((v71 + 1) < 0xF)
    {
      v107 = v71 + 1;
    }

    else
    {
      v107 = 15;
    }

    v1961[52] = v107;
    if ((v71 + 1) > 0xF)
    {
      v42 = 3;
      goto LABEL_700;
    }

    v1902 = v106;
    v1909 = (v1961 + 133);
    v1920 = v45;
    v281 = *v45;
    v1961[56] = ddp_udc_int_dlb_bitbuf_read(v49, 8);
    v282 = ddp_udc_int_dlb_bitbuf_read(v49, 10);
    v1961[57] = v282;
    v12 = v1961;
    if (!v1961[52])
    {
      goto LABEL_694;
    }

    v283 = 0;
    v1934 = v281 + 528;
    __nb = v281 + 48;
    __lenb = v49;
    do
    {
      v284 = ddp_udc_int_dlb_bitbuf_read(v49, 1);
      v285 = (v64 + 4 * v283);
      if (v285 < v64 || (v285 + 1) > v63 || v285 > v285 + 1)
      {
        goto LABEL_3327;
      }

      v286 = v283;
      *v285 = v284;
      if (v284)
      {
        v287 = ddp_udc_int_dlb_bitbuf_read(v49, 3);
        v288 = (__nb + 32 * v283);
        if ((v288 + 8) > v1934 || v288 > v288 + 8 || v288 < __nb)
        {
          goto LABEL_3327;
        }

        *v288 = v287;
        v288[1] = ddp_udc_int_dlb_bitbuf_read(v49, 1);
        v289 = ddp_udc_int_dlb_bitbuf_read(v49, 1);
        v288[2] = v289;
        v290 = *v288;
        if (v290 > 7)
        {
          v42 = 4;
          goto LABEL_699;
        }

        v288[4] = ddp_udc_int_jocdec_num_freq_bands_tab[v290];
        v291 = &ddp_udc_int_jocdec_num_quant_steps_tab + 4 * v289;
        if (v291 < &ddp_udc_int_jocdec_num_quant_steps_tab)
        {
          goto LABEL_3327;
        }

        if (v291 + 4 > ddp_udc_int_jocdec_codebook_select_tab)
        {
          goto LABEL_3327;
        }

        if (v291 > v291 + 4)
        {
          goto LABEL_3327;
        }

        v288[3] = *(&ddp_udc_int_jocdec_num_quant_steps_tab + v289);
        v292 = &ddp_udc_int_jocdec_codebook_select_tab[16 * v288[1]];
        v293 = &v292[8 * v289];
        if (v293 < v292)
        {
          goto LABEL_3327;
        }

        if (v293 + 8 > v292 + 16)
        {
          goto LABEL_3327;
        }

        if (v293 > v293 + 8)
        {
          goto LABEL_3327;
        }

        *(v288 + 5) = *v293;
        v294 = (v63 + 16 * v283);
        v295 = *v1920;
        v296 = ddp_udc_int_dlb_bitbuf_read(v49, 1);
        if (v63 > v294)
        {
          goto LABEL_3327;
        }

        v297 = (v294 + 4);
        if ((v294 + 4) > v1909)
        {
          goto LABEL_3327;
        }

        *v294 = v296;
        v298 = ddp_udc_int_dlb_bitbuf_read(__lenb, 1);
        v299 = v295 + 48 + 32 * v283;
        v49 = __lenb;
        if (v299 + 32 > v295 + 528 || v299 > v299 + 32 || v299 < v295 + 48)
        {
          goto LABEL_3327;
        }

        *(v299 + 28) = v298;
        v294[1] = v298 + 1;
        if (*v294 == 1)
        {
          v300 = ddp_udc_int_dlb_bitbuf_read(__lenb, 5);
          if ((v294 + 3) > v297)
          {
            goto LABEL_3327;
          }

          v301 = v294 + 2;
          if (v294 + 2 > v294 + 3)
          {
            goto LABEL_3327;
          }

          *v301 = v300;
          if (v300 > 0x17)
          {
            goto LABEL_698;
          }

          if (v294[1] >= 2u)
          {
            v302 = &v1961[4 * v283 + 77];
            v303 = 1;
            while (1)
            {
              v304 = ddp_udc_int_dlb_bitbuf_read(__lenb, 5);
              v305 = (v302 - 4);
              if (v302 - 4 < v301 || v302 > v297 || v305 > v302)
              {
                goto LABEL_3327;
              }

              *v305 = v304;
              if (v304 > 0x17 || v304 <= *(v302 - 8))
              {
                break;
              }

              ++v303;
              v302 += 4;
              if (v303 >= v294[1])
              {
                goto LABEL_448;
              }
            }

LABEL_698:
            v42 = 5;
LABEL_699:
            v11 = v1854;
            v12 = v1961;
            goto LABEL_700;
          }
        }
      }

LABEL_448:
      v283 = v286 + 1;
      v12 = v1961;
      v306 = v1961[52];
    }

    while (v286 + 1 < v306);
    if (!v306)
    {
LABEL_694:
      if ((*(v49 + 32) & 7) != 0)
      {
        ddp_udc_int_dlb_bitbuf_read(v49, 8 - (*(v49 + 32) & 7));
        v12 = v1961;
      }

      v11 = v1854;
      if (v12[53] || !*(v49 + 40))
      {
        *(v12 + 27) = vrev64_s32(*(v12 + 51));
        v42 = v1902;
      }

      else
      {
        v42 = 6;
      }

      goto LABEL_700;
    }

    v307 = 0;
    v308 = *v1920;
    v1875 = *v1920 + 528;
    v1880 = *v1920 + 48;
    while (1)
    {
      v309 = (v64 + 4 * v307);
      v310 = v309 + 1;
      if (v309 < v64 || v310 > v63 || v309 > v310)
      {
        goto LABEL_3327;
      }

      v313 = v307;
      if (!*v309)
      {
        goto LABEL_690;
      }

      v314 = v1880 + 32 * v307;
      if (v314 + 32 > v1875 || v314 > v314 + 32 || v314 < v1880)
      {
        goto LABEL_3327;
      }

      v317 = v313;
      v1898 = v313;
      if (*(v314 + 4))
      {
        *&v318 = 0xAAAAAAAAAAAAAAAALL;
        *(&v318 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *(&v1971[1] + 14) = v318;
        v1971[0] = v318;
        v1971[1] = v318;
        *&v1981[30] = v318;
        *v1981 = v318;
        *&v1981[16] = v318;
        v319 = v63 + 16 * v313;
        if (v319 < v63 || v319 + 16 > v1909 || v319 > v319 + 16)
        {
          goto LABEL_3327;
        }

        v1892 = *(v319 + 4);
        if (v1892)
        {
          v320 = 0;
          v1887 = v12[51];
          while (1)
          {
            v321 = *v1920 + 48;
            v322 = v321 + 32 * v317;
            v323 = v322 + 32;
            if (v322 < v321 || v323 > *v1920 + 528 || v322 > v323)
            {
              goto LABEL_3327;
            }

            v326 = *(v322 + 16);
            if (v326 > 0x17)
            {
              goto LABEL_3327;
            }

            v1904 = v321 + 32 * v317;
            v327 = v12[51];
            LODWORD(v1967) = -1431655766;
            v328 = v327 == 5 ? &ddp_udc_int_huff_tree_7ch_pos_index_sparse : ddpi_udc_setoutparam_a_support_outmode;
            v329 = v327 == 5 ? &ddp_udc_int_huff_tree_5ch_pos_index_sparse : &ddp_udc_int_huff_tree_7ch_pos_index_sparse;
            __nc = v329;
            v330 = ddp_udc_int_dlb_bitbuf_read(__lenb, 3);
            if (!v326)
            {
              goto LABEL_3327;
            }

            *v1981 = v330;
            if (v326 != 1)
            {
              break;
            }

LABEL_497:
            v337 = *(v1904 + 16);
            v11 = v1854;
            if (v337 > 0x17)
            {
              goto LABEL_3327;
            }

            v338 = parse_data(__lenb, 2u, v337, *(v1904 + 12), *(v1904 + 24), v1971);
            if (v338)
            {
              v42 = v338;
              goto LABEL_625;
            }

            v339 = *(v1904 + 16);
            v12 = v1961;
            if (v339)
            {
              v340 = 0;
              v341 = 0;
              v342 = v1961[51];
              do
              {
                if (v342 >= 1)
                {
                  v343 = *(v1961 + 69);
                  v344 = v340;
                  v345 = v342;
                  do
                  {
                    v346 = (*(v1961 + 67) + 24 * v317);
                    if ((v346 + 3) > *(v1961 + 68) || v346 > v346 + 3 || v346 < v343)
                    {
                      goto LABEL_3327;
                    }

                    v349 = v346[1];
                    v350 = v346[2];
                    v351 = (*v346 + 24 * v320);
                    v352 = (v351 + 3) > v349 || v351 > v351 + 3;
                    if (v352 || v351 < v350)
                    {
                      goto LABEL_3327;
                    }

                    v354 = v351[1];
                    v355 = v351[2];
                    v356 = (*v351 + 4 * v344);
                    v357 = (v356 + 1) > v354 || v356 > v356 + 1;
                    if (v357 || v356 < v355)
                    {
                      goto LABEL_3327;
                    }

                    *v356 = 0;
                    ++v344;
                    --v345;
                  }

                  while (v345);
                }

                ++v341;
                v340 += v1887;
              }

              while (v341 != v339);
              if (v339 > 0x17)
              {
                goto LABEL_3327;
              }

              _jocdec_dequantize(v1971, v1971, v339, *(v1904 + 20));
              v12 = v1961;
              v359 = *(v1904 + 16);
              if (v359)
              {
                v360 = 0;
                v361 = v1971;
                v362 = v1981;
                do
                {
                  v363 = v362 + 1;
                  v365 = v362 < v1981 || v363 > &v1981[46] || v362 > v363;
                  if (v365 || v361 < v1971 || v361 + 1 > &v1971[2] + 7 || v361 > v361 + 1)
                  {
                    goto LABEL_3327;
                  }

                  v366 = (*(v1961 + 67) + 24 * v317);
                  v367 = (v366 + 3) > *(v1961 + 68) || v366 > v366 + 3;
                  if (v367 || v366 < *(v1961 + 69))
                  {
                    goto LABEL_3327;
                  }

                  v369 = v366[1];
                  v370 = v366[2];
                  v371 = (*v366 + 24 * v320);
                  v372 = (v371 + 3) > v369 || v371 > v371 + 3;
                  if (v372 || v371 < v370)
                  {
                    goto LABEL_3327;
                  }

                  v374 = v371[1];
                  v375 = v371[2];
                  v376 = (*v371 + 4 * (v360 + *v362));
                  v377 = (v376 + 1) > v374 || v376 > v376 + 1;
                  if (v377 || v376 < v375)
                  {
                    goto LABEL_3327;
                  }

                  *v376 = vcvts_n_f32_s32(*v361, 0xFuLL);
                  v360 += v1887;
                  ++v361;
                  ++v362;
                  --v359;
                }

                while (v359);
              }
            }

            if (++v320 == v1892)
            {
              goto LABEL_626;
            }
          }

          *&v331 = __nc;
          *(&v331 + 1) = v328;
          v1926 = v331;
          v332 = v326 - 1;
          v333 = &v1981[2];
          while (1)
          {
            v1969 = v1926;
            v1970 = __nc;
            v334 = ddp_udc_int_huff_read(__lenb, &v1969, &v1967);
            if (v334)
            {
              goto LABEL_624;
            }

            if (v333 - 1 < v1981 || v333 - 1 > v333)
            {
              goto LABEL_3327;
            }

            v335 = v1967 + *(v333 - 1);
            if (v335 >= v327)
            {
              v336 = v327;
            }

            else
            {
              v336 = 0;
            }

            *v333++ = v335 - v336;
            if (!--v332)
            {
              goto LABEL_497;
            }
          }
        }
      }

      else
      {
        *&v379 = 0xAAAAAAAAAAAAAAAALL;
        *(&v379 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *(&v1971[1] + 14) = v379;
        v1971[0] = v379;
        v1971[1] = v379;
        v380 = v63 + 16 * v313;
        if (v380 < v63 || v380 + 16 > v1909 || v380 > v380 + 16)
        {
          goto LABEL_3327;
        }

        v381 = *(v380 + 4);
        v382 = v308 + 48 + 32 * v313;
        v385 = v382 + 32 <= v308 + 528 && v382 <= v382 + 32 && v382 >= v308 + 48;
        if (v381)
        {
          v386 = 0;
          v387 = v12[51];
          v388 = v387;
          __nd = v381;
          v1927 = v385;
          while (v388 < 1)
          {
LABEL_622:
            if (++v386 == v381)
            {
              goto LABEL_626;
            }
          }

          if (!v385)
          {
            goto LABEL_3327;
          }

          v389 = 0;
          LODWORD(v390) = *(v382 + 16);
          while (1)
          {
            if (v390 > 0x17)
            {
              goto LABEL_3327;
            }

            v334 = parse_data(__lenb, 1u, v390, *(v382 + 12), *(v382 + 24), v1971);
            if (v334)
            {
              break;
            }

            v390 = *(v382 + 16);
            if (v390 > 0x17)
            {
              goto LABEL_3327;
            }

            _jocdec_dequantize(v1971, v1971, *(v382 + 16), *(v382 + 20));
            if (v390)
            {
              v391 = v1971;
              v392 = v389;
              v393 = v390;
              do
              {
                if (v391 + 1 > &v1971[2] + 7 || v391 > v391 + 1)
                {
                  goto LABEL_3327;
                }

                v395 = (*(v1961 + 67) + 24 * v317);
                v396 = (v395 + 3) > *(v1961 + 68) || v395 > v395 + 3;
                if (v396 || v395 < *(v1961 + 69))
                {
                  goto LABEL_3327;
                }

                v398 = v395[1];
                v399 = v395[2];
                v400 = (*v395 + 24 * v386);
                v401 = (v400 + 3) > v398 || v400 > v400 + 3;
                if (v401 || v400 < v399)
                {
                  goto LABEL_3327;
                }

                v403 = v400[1];
                v404 = v400[2];
                v405 = (*v400 + 4 * v392);
                v406 = (v405 + 1) > v403 || v405 > v405 + 1;
                if (v406 || v405 < v404)
                {
                  goto LABEL_3327;
                }

                *v405 = vcvts_n_f32_s32(*v391, 0xFuLL);
                v392 += v387;
                ++v391;
                --v393;
              }

              while (v393);
            }

            ++v389;
            v388 = v1961[51];
            if (v389 >= v388)
            {
              v381 = __nd;
              v385 = v1927;
              goto LABEL_622;
            }
          }

LABEL_624:
          v42 = v334;
          v11 = v1854;
LABEL_625:
          v12 = v1961;
          if (v42)
          {
            break;
          }
        }
      }

LABEL_626:
      v308 = *v1920;
      v408 = *v1920 + 48;
      v409 = v408 + 32 * v317;
      v410 = v409 + 32;
      if (v409 < v408 || v410 > *v1920 + 528 || v409 > v410)
      {
        goto LABEL_3327;
      }

      v413 = v63 + 16 * v317;
      if (v413 < v63 || v413 + 16 > v1909 || v413 > v413 + 16)
      {
        goto LABEL_3327;
      }

      v414 = 0;
      v415 = *(v409 + 16);
      v12 = v1961;
      v416 = v1961[51];
      v417 = *(v413 + 4);
      do
      {
        if (ddp_udc_int_n_par_band_table[v414] == v415)
        {
          break;
        }

        ++v414;
      }

      while (v414 != 8);
      if (v417)
      {
        v418 = 0;
        v419 = &ddp_udc_int_par_band_conv_table + 92 * v414;
        do
        {
          if (v415 != 23)
          {
            v420 = 88 * v416;
            v421 = 22;
            do
            {
              v422 = v421;
              v423 = &v419[4 * v421];
              v424 = (v423 + 4);
              if (v423 < v419 || v424 > (v419 + 92) || v423 > v424)
              {
                goto LABEL_3327;
              }

              if (v416 >= 1)
              {
                v427 = *v423;
                v428 = *(v1961 + 69);
                v429 = 4 * v427 * v416;
                v430 = v420;
                v431 = v416;
                do
                {
                  v432 = (*(v1961 + 67) + 24 * v317);
                  if ((v432 + 3) > *(v1961 + 68) || v432 > v432 + 3 || v432 < v428)
                  {
                    goto LABEL_3327;
                  }

                  v435 = v432[1];
                  v436 = v432[2];
                  v437 = (*v432 + 24 * v418);
                  v438 = (v437 + 3) > v435 || v437 > v437 + 3;
                  if (v438 || v437 < v436)
                  {
                    goto LABEL_3327;
                  }

                  v440 = *v437;
                  v441 = v437[1];
                  v442 = v437[2];
                  v443 = (*v437 + v429);
                  v444 = (v443 + 1) > v441 || v443 > v443 + 1;
                  v445 = !v444 && v443 >= v442;
                  v446 = (v440 + v430);
                  v447 = v446 + 1;
                  v448 = !v445 || v447 > v441;
                  v449 = v448 || v446 > v447;
                  if (v449 || v446 < v442)
                  {
                    goto LABEL_3327;
                  }

                  *v446 = *v443;
                  v430 += 4;
                  v429 += 4;
                  --v431;
                }

                while (v431);
              }

              v421 = v422 - 1;
              v420 -= 4 * v416;
            }

            while (v422);
          }

          ++v418;
        }

        while (v418 != v417);
        v12 = v1961;
      }

      v49 = __lenb;
      v313 = v1898;
LABEL_690:
      v307 = v313 + 1;
      if (v313 + 1 >= v12[52])
      {
        goto LABEL_694;
      }
    }
  }

LABEL_700:
  set_operating_state(v42, v12[57], v12[177], (v12 + 140));
  v12 = v1961;
  v451 = v1961[142];
  if ((v451 & 0xFFFFFFFE) == 2)
  {
    v452 = 0;
    v453 = 0;
    v454 = v1961[3];
    do
    {
      v455 = &v1961[v452 + 58];
      v456 = &v1961[v452 + 59];
      if (v456 > (v1961 + 73) || v455 > v456)
      {
        goto LABEL_3327;
      }

      *v455 = v1961[v452 + 143];
      v458 = &v1961[v453 + 77];
      if (v458 > (v1961 + 133))
      {
        goto LABEL_3327;
      }

      v459 = &v1961[v453 + 73];
      if (v459 > v458)
      {
        goto LABEL_3327;
      }

      *v459 = 1;
      v460 = &v1961[v453];
      v461 = &v1961[v453 + 76];
      if (v461 > v458 || (v460 + 75) > v461)
      {
        goto LABEL_3327;
      }

      v460[75] = v454;
      v453 += 4;
      ++v452;
    }

    while (v453 != 60);
    v451 = v1961[142];
  }

  v10 = a4;
  if (v451 == 4)
  {
    v462 = 0;
    for (i = 0; i != 60; i += 4)
    {
      v464 = &v1961[v462 + 58];
      v465 = &v1961[v462 + 59];
      if (v465 > (v1961 + 73) || v464 > v465)
      {
        goto LABEL_3327;
      }

      *v464 = 1;
      v467 = &v1961[i + 77];
      if (v467 > (v1961 + 133))
      {
        goto LABEL_3327;
      }

      v468 = &v1961[i + 73];
      if (v468 > v467)
      {
        goto LABEL_3327;
      }

      *v468 = 0x100000001;
      v469 = &v1961[i];
      v470 = &v1961[i + 76];
      if (v470 > v467 || (v469 + 75) > v470)
      {
        goto LABEL_3327;
      }

      v469[75] = 0;
      ++v462;
    }
  }

  if (v42 != 9 && v42)
  {
    goto LABEL_800;
  }

  v471 = 0;
  v472 = (v1961 + 58);
  v473 = (v1961 + 73);
  do
  {
    if (*(v1855 + 4 * v471))
    {
      v474 = (v472 + 4 * v471);
      if ((v474 + 1) > v473 || v474 > v474 + 1)
      {
        goto LABEL_3327;
      }

      v12 = v1961;
      if (!*v474)
      {
        *v474 = 1;
        v476 = (v473 + 16 * v471);
        v477 = (v476 + 2);
        if (v476 + 2 > (v1961 + 133))
        {
          goto LABEL_3327;
        }

        if (v476 > v477)
        {
          goto LABEL_3327;
        }

        *v476 = 0x100000001;
        v478 = v476 + 12;
        if (v476 + 12 > v477)
        {
          goto LABEL_3327;
        }

        v479 = (v476 + 1);
        if (v479 > v478)
        {
          goto LABEL_3327;
        }

        *v479 = 0;
        v12 = v1961;
        v480 = v1961[51];
        if (v480 >= 1)
        {
          v481 = 0;
          v482 = 23 * v480;
          v483 = *(v1961 + 69);
          if (v482 <= 1)
          {
            v482 = 1;
          }

          v484 = 4 * v482;
          do
          {
            v485 = *(v12 + 67) + 24 * v471;
            if (v485 + 24 > *(v12 + 68) || v485 > v485 + 24 || v485 < v483)
            {
              goto LABEL_3327;
            }

            v488 = *v485;
            v489 = *(v485 + 8);
            v490 = *(v485 + 16);
            v491 = (v488 + 3) > v489 || v488 > v488 + 3;
            if (v491 || v488 < v490)
            {
              goto LABEL_3327;
            }

            v493 = v488[1];
            v494 = v488[2];
            v495 = (*v488 + v481);
            v496 = (v495 + 1) > v493 || v495 > v495 + 1;
            if (v496 || v495 < v494)
            {
              goto LABEL_3327;
            }

            *v495 = 0;
            v481 += 4;
            v12 = v1961;
          }

          while (v484 != v481);
        }
      }
    }

    ++v471;
  }

  while (v471 != 15);
  if (v12[52])
  {
    v498 = -1;
    v499 = v12;
    do
    {
      v500 = (v499 + 59);
      v502 = (v499 + 58) < v472 || v500 > v473 || (v499 + 58) > v500;
      v503 = (v499 + 143);
      v504 = (v499 + 144);
      if (v502 || v504 > v1855 || v503 > v504 || v503 < v37)
      {
        goto LABEL_3327;
      }

      v499[143] = v499[58];
      v508 = v498 + 1;
      v509 = v498 + 2;
      ++v499;
      ++v498;
    }

    while (v509 < v12[52]);
    if (v508 > 0xD)
    {
      goto LABEL_800;
    }
  }

  else
  {
    v509 = 0;
  }

  v510 = v509 - 15;
  v511 = &v12[v509 + 143];
  do
  {
    if ((v511 + 1) > v1855 || v511 > v511 + 1 || v511 < v37)
    {
      goto LABEL_3327;
    }

    *v511++ = 0;
    v18 = __CFADD__(v510++, 1);
  }

  while (!v18);
LABEL_800:
  v514 = 0;
  v1865 = (v12 + 73);
  v1866 = (v12 + 58);
  v1848 = (v12 + 133);
  while (1)
  {
    *&v515 = 0xAAAAAAAAAAAAAAAALL;
    *(&v515 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v1980[10] = v515;
    v1980[11] = v515;
    v1980[8] = v515;
    v1980[9] = v515;
    v1980[6] = v515;
    v1980[7] = v515;
    v1980[4] = v515;
    v1980[5] = v515;
    v1980[2] = v515;
    v1980[3] = v515;
    v1980[0] = v515;
    v1980[1] = v515;
    v1978 = v515;
    v1979 = v515;
    v1976 = v515;
    v1977 = v515;
    v1974 = v515;
    v1975 = v515;
    v1972 = v515;
    v1973 = v515;
    v1971[2] = v515;
    v1971[3] = v515;
    v1971[0] = v515;
    v1971[1] = v515;
    if (*a1 == 2)
    {
      v517 = v11[42];
      v516 = v11[43];
      v518 = (v1971 + 8);
      v519 = 16;
      v520 = v11[44];
      do
      {
        if (v517 + 24 > v516 || v517 > v517 + 24 || v517 < v520)
        {
          goto LABEL_3327;
        }

        v515 = *(v517 + 8);
        *(v518 - 1) = *v517 + 24 * v514;
        *v518 = v515;
        v518 = (v518 + 24);
        v517 += 24;
        --v519;
      }

      while (v519);
    }

    v523 = *v10;
    v524 = *(v10 + 1);
    v1851 = *(v10 + 3);
    v1852 = *(v10 + 4);
    v1850 = *(v10 + 5);
    v1859 = v11[55];
    v1860 = v11[54];
    v1858 = v11[56];
    if (*v10 != 8 && v523 != 6 || v10[4] != 3)
    {
      goto LABEL_1828;
    }

    v525 = v12[173];
    v526 = v12[142];
    v1847 = v11[52];
    if (v526 > 3)
    {
      if ((v526 - 4) >= 2)
      {
        goto LABEL_1826;
      }

      ddp_udc_int_processor_reset(*(v1961 + 9));
      v12 = v1961;
      v527 = 4;
    }

    else
    {
      switch(v526)
      {
        case 1:
          v527 = 0;
          break;
        case 2:
          v527 = 2;
          break;
        case 3:
          if (v525)
          {
            v524 = 0;
            v1851 = &apzerochannels;
            v1852 = &ddp_udc_int_p_dvlim_win_32;
            v523 = v12[51] + 1;
            v527 = 3;
            v1850 = &apzerochannels;
          }

          else
          {
            v527 = 3;
          }

          break;
        default:
          goto LABEL_1826;
      }
    }

    if (v12[51] != v523 - 1)
    {
      break;
    }

LABEL_835:
    v1863 = (v523 - 1);
    v1839 = v527;
    v1840 = v514;
    v529 = *(v12 + 7);
    v530 = v12[50];
    v1888 = *(v12 + 11);
    v1893 = *(v12 + 10);
    v1881 = *(v12 + 12);
    v1856 = *(v529 + 224);
    v531 = *v12;
    if (!*v12)
    {
      v532 = v12[56];
      v533 = *(v529 + 288);
      *(v529 + 292) = v533;
      v534 = vcvts_n_f32_u32(((v532 & 0x1F) << 6) | 0x800, 0xFuLL) * COERCE_FLOAT((v532 >> 5 << 23) + 1031798784);
      *(v529 + 288) = v534;
      if (v533 < 0.0)
      {
        *(v529 + 292) = v534;
      }
    }

    v1836 = v524;
    v1903 = 4 * v524;
    v1861 = v523;
    if (v523 < 2)
    {
LABEL_940:
      v599 = *(v529 + 184);
      if (v599 <= 9)
      {
        v600 = *(v529 + 296) + (v599 << 6);
        if (v600 > 0x27F)
        {
          v600 -= 640;
        }

        *(v529 + 296) = v600;
      }

      v601 = v1861;
      v602 = v1863;
      if (*(v529 + 472) == v1861)
      {
        v1838 = 0;
        v603 = v1961;
      }

      else
      {
        v604 = (v529 + 472);
        if (v1863 <= 6)
        {
          v605 = 7 - v1863;
          v606 = v529 + 304;
          if (v1856)
          {
            v607 = v1863 + 1;
          }

          else
          {
            v607 = v1863;
          }

          v608 = v606 + 24 * v1863;
          do
          {
            if (v608 < v606)
            {
              goto LABEL_3327;
            }

            if (v608 + 24 > v604)
            {
              goto LABEL_3327;
            }

            if (v608 > v608 + 24)
            {
              goto LABEL_3327;
            }

            v610 = *v608;
            v609 = *(v608 + 8);
            if (*v608 > v609)
            {
              goto LABEL_3327;
            }

            if (v609 - v610 < 0xA00 || *(v608 + 16) > v610)
            {
              goto LABEL_3327;
            }

            bzero(*v608, 0xA00uLL);
            if (v610 >= v610 + 2560)
            {
              goto LABEL_3327;
            }

            v612 = (v529 + 8 * v607);
            if (v612 < v529 || (v612 + 1) > v529 + 64 || v612 > v612 + 1)
            {
              goto LABEL_3327;
            }

            DLB_qmf_analysisL_init(*v612);
            ++v607;
            v608 += 24;
            --v605;
          }

          while (v605);
        }

        v1838 = 0;
        v601 = v1861;
        *v604 = v1861;
        v603 = v1961;
        v602 = v1863;
      }
    }

    else
    {
      v535 = 0;
      v1876 = v529 + 192;
      v1910 = v529 + 304;
      v1905 = v529 + 472;
      if (v530 - 3 >= 2)
      {
        v536 = 0;
      }

      else
      {
        v536 = -1;
      }

      v1867 = v536;
      while (1)
      {
        v1928 = v535;
        v537 = (v1876 + 4 * v535);
        v538 = (v537 + 1);
        if (v537 < v1876 || v538 > v529 + 224 || v537 > v538)
        {
          goto LABEL_3327;
        }

        v541 = &v1851[3 * *v537];
        v542 = v541 + 3 > v1852 || v541 > v541 + 3;
        if (v542 || v541 < v1850)
        {
          goto LABEL_3327;
        }

        v544 = (v535 - 3) >= 2 ? -10 : 0;
        __lenc = v544;
        v545 = (v535 - 3) >= 2 ? 10 : 0;
        v546 = v1893 + 24 * v535;
        v547 = v546 + 24 > v1888 || v546 > v546 + 24;
        v1921 = (v1893 + 24 * v535);
        if (v547 || v546 < v1881)
        {
          goto LABEL_3327;
        }

        if (!*v1921)
        {
          break;
        }

        v549 = *(v529 + 184);
        if (v549 >= 1)
        {
          v550 = 0;
          v551 = *(v529 + 296);
          v553 = *v541;
          v552 = v541[1];
          v554 = v541[2];
          v1935 = (v549 - v545) & ~((v549 - v545) >> 31);
          v555 = (v1910 + 24 * v535);
          v558 = (v555 + 3) <= v1905 && v555 <= v555 + 3 && v555 >= v1910;
          __ne = v558;
          v559 = v531;
          do
          {
            if (v550 >= v545)
            {
              v561 = *(v529 + 240);
              v562 = *(v529 + 248);
              v563 = *(v529 + 232) + (v550 << 8);
              v581 = __lenc;
              v560 = v1903;
            }

            else
            {
              v560 = v1903;
              if (!__ne)
              {
                goto LABEL_3327;
              }

              v561 = v555[1];
              v562 = v555[2];
              v563 = *v555 + 4 * v551;
              if (v561 < v563 || v562 > v563)
              {
                goto LABEL_3327;
              }

              v565 = *(v529 + 240);
              v566 = (*(v529 + 232) + (v550 << 8));
              v567 = v561 - v563 < 0x100 || v566 > v565;
              if (v567 || *(v529 + 248) > v566)
              {
                goto LABEL_3327;
              }

              if (v565 - v566 < 0x100)
              {
                goto LABEL_3327;
              }

              v569 = *v563;
              v570 = *(v563 + 16);
              v571 = *(v563 + 48);
              v566[2] = *(v563 + 32);
              v566[3] = v571;
              *v566 = v569;
              v566[1] = v570;
              v572 = *(v563 + 64);
              v573 = *(v563 + 80);
              v574 = *(v563 + 112);
              v566[6] = *(v563 + 96);
              v566[7] = v574;
              v566[4] = v572;
              v566[5] = v573;
              v575 = *(v563 + 128);
              v576 = *(v563 + 144);
              v577 = *(v563 + 176);
              v566[10] = *(v563 + 160);
              v566[11] = v577;
              v566[8] = v575;
              v566[9] = v576;
              v578 = *(v563 + 192);
              v579 = *(v563 + 208);
              v580 = *(v563 + 240);
              v566[14] = *(v563 + 224);
              v566[15] = v580;
              v566[12] = v578;
              v566[13] = v579;
              if (v566 >= v566 + 16)
              {
                goto LABEL_3327;
              }

              if (v551 == 576)
              {
                v551 = 0;
              }

              else
              {
                v551 += 64;
              }

              v581 = v1935;
            }

            v582 = 0;
            v583 = (v553 + v560 * ((v581 + v559) << 6));
            do
            {
              v585 = (v583 + 1) <= v552 && v583 <= v583 + 1 && v583 >= v554;
              v586 = (v563 + v582);
              v587 = v563 + v582 + 4;
              if (!v585 || v587 > v561 || v586 > v587 || v586 < v562)
              {
                goto LABEL_3327;
              }

              *v586 = *v583;
              v582 += 4;
              v583 = (v583 + v560);
            }

            while (v582 != 256);
            v18 = v561 >= v563;
            v591 = v561 - v563;
            if (!v18 || v562 > v563 || v591 < 253)
            {
              goto LABEL_3327;
            }

            apply_clipgain(v563, v531 + v550++, *(v529 + 292), *(v529 + 288));
            ++v559;
          }

          while (v550 < *(v529 + 184));
        }

        v592 = (v529 + 8 * (v1856 != 0) + 8 * v1928);
        if (v592 < v529 || (v592 + 1) > v529 + 64 || v592 > v592 + 1)
        {
          goto LABEL_3327;
        }

        v593 = *v592;
        v594 = v1921[2];
        *v1981 = *v1921;
        *&v1981[16] = v594;
        v1969 = *(v529 + 232);
        v1970 = *(v529 + 248);
        DLB_CLqmf_analysisL_bidi_indexable(v593, v1981, &v1969);
        if ((v1928 - 3) <= 1)
        {
          v595 = v1910 + 24 * v1928;
          if (v595 < v1910)
          {
            goto LABEL_3327;
          }

          if (v595 + 24 > v1905)
          {
            goto LABEL_3327;
          }

          if (v595 > v595 + 24)
          {
            goto LABEL_3327;
          }

          v596 = *v1921;
          v597 = v1921[1];
          if (*v1921 > v597)
          {
            goto LABEL_3327;
          }

          if (v1921[2] > v596)
          {
            goto LABEL_3327;
          }

          v598 = *(v529 + 184);
          if (0xAAAAAAAAAAAAAAABLL * ((v597 - v596) >> 3) < v598)
          {
            goto LABEL_3327;
          }

          *v1981 = *v595;
          *&v1981[16] = *(v595 + 16);
          ddp_udc_int_ph90_qmf_process(v1981, v596, v598, v1867);
        }

        v535 = v1928 + 1;
        if (v1928 + 1 == v1863)
        {
          goto LABEL_940;
        }
      }

      v1838 = 5;
      v603 = v1961;
      v602 = v1863;
      v601 = v1861;
    }

    if (v603[174])
    {
      v613 = 0;
      LODWORD(v614) = v603[2];
      v615 = v614;
      do
      {
        if (v615)
        {
          v616 = 0;
          v617 = 0;
          v618 = v1971 + 3 * v613;
          v619 = v618 + 3;
          v622 = v618 + 6 > v1981 || v619 > v618 + 6 || v619 < v1971;
          do
          {
            v623 = (*(v603 + 22) + v616);
            if ((v623 + 3) > *(v603 + 23) || v623 > v623 + 3 || v623 < *(v603 + 24))
            {
              goto LABEL_3327;
            }

            v626 = v623[1];
            v627 = v623[2];
            v628 = *v623 + 24 * v613;
            v629 = v628 + 24 > v626 || v628 > v628 + 24;
            v630 = !v629 && v628 >= v627;
            v631 = !v630;
            if (v631 || v622)
            {
              goto LABEL_3327;
            }

            v632 = v618[3] + v616;
            v633 = v632 + 24 > v618[4] || v632 > v632 + 24;
            if (v633 || v632 < v618[5])
            {
              goto LABEL_3327;
            }

            v515 = *v632;
            *(v628 + 16) = *(v632 + 16);
            *v628 = v515;
            ++v617;
            v614 = v603[2];
            v616 += 24;
          }

          while (v617 < v614);
          v615 = v603[2];
        }

        ++v613;
      }

      while (v613 != 15);
      v635 = 0;
      LODWORD(v636) = v614;
      do
      {
        if (v614)
        {
          v637 = 0;
          v638 = 0;
          v639 = v1971 + 3 * v635;
          v642 = v639 + 3 > v1981 || v639 > v639 + 3 || v639 < v1971;
          do
          {
            v643 = (*(v603 + 16) + 24 * v635);
            if ((v643 + 3) > *(v603 + 17) || v643 > v643 + 3 || v643 < *(v603 + 18))
            {
              goto LABEL_3327;
            }

            v646 = v643[1];
            v647 = v643[2];
            v648 = *v643 + v637;
            v649 = v648 + 24 > v646 || v648 > v648 + 24;
            v650 = !v649 && v648 >= v647;
            v651 = !v650;
            if (v651 || v642)
            {
              goto LABEL_3327;
            }

            v652 = *v639 + v637;
            v653 = v652 + 24 > v639[1] || v652 > v652 + 24;
            if (v653 || v652 < v639[2])
            {
              goto LABEL_3327;
            }

            v515 = *v652;
            *(v648 + 16) = *(v652 + 16);
            *v648 = v515;
            ++v638;
            v636 = v603[2];
            v637 += 24;
          }

          while (v638 < v636);
          LODWORD(v614) = v603[2];
        }

        ++v635;
      }

      while (v635 != 16);
      if (v603[174])
      {
        v655 = v601 == 1;
      }

      else
      {
        v655 = 1;
      }

      if (!v655)
      {
        v656 = 0;
        do
        {
          v657 = v656 + 1;
          if (v636)
          {
            v658 = 0;
            v659 = 0;
            do
            {
              v660 = (*(v603 + 13) + 24 * v657);
              if ((v660 + 3) > *(v603 + 14) || v660 > v660 + 3 || v660 < *(v603 + 15))
              {
                goto LABEL_3327;
              }

              v663 = v660[1];
              v664 = v660[2];
              v665 = *v660 + 24 * (v659 + *v603);
              v666 = v665 + 24 > v663 || v665 > v665 + 24;
              if (v666 || v665 < v664)
              {
                goto LABEL_3327;
              }

              v668 = (*(v603 + 10) + 24 * v656);
              v669 = (v668 + 3) > *(v603 + 11) || v668 > v668 + 3;
              if (v669 || v668 < *(v603 + 12))
              {
                goto LABEL_3327;
              }

              v671 = *v668;
              v672 = v668[1];
              v673 = v668[2];
              v674 = *v668 + v658;
              v675 = v674 + 24 > v672 || v674 > v674 + 24;
              if (v675 || v674 < v673)
              {
                goto LABEL_3327;
              }

              v677 = *v674;
              v678 = *(v674 + 8);
              if (*v674 > v678)
              {
                goto LABEL_3327;
              }

              v680 = *v665;
              v679 = *(v665 + 8);
              v681 = *(v665 + 16);
              v682 = *(v671 + v658 + 16);
              v683 = v678 - v677 < 0x200 || v682 > v677;
              v684 = v683 || v680 > v679;
              if (v684 || v681 > v680)
              {
                goto LABEL_3327;
              }

              if (v679 - v680 < 0x200)
              {
                goto LABEL_3327;
              }

              memcpy(v680, v677, 0x200uLL);
              if (v680 >= v680 + 512)
              {
                goto LABEL_3327;
              }

              ++v659;
              v603 = v1961;
              v636 = v1961[2];
              v658 += 24;
            }

            while (v659 < v636);
          }

          ++v656;
        }

        while (v657 < v602);
      }
    }

    LODWORD(v686) = v603[2];
    if (v603[142] == 4)
    {
      v687 = 0;
      v688 = v603[2];
      do
      {
        if (v688)
        {
          v689 = 0;
          v690 = 0;
          do
          {
            v691 = (*(v603 + 10) + 24 * v687);
            if ((v691 + 3) > *(v603 + 11) || v691 > v691 + 3 || v691 < *(v603 + 12))
            {
              goto LABEL_3327;
            }

            v694 = *v691;
            v695 = v691[1];
            v696 = v691[2];
            v697 = v694 + v689;
            v698 = v694 + v689 + 24;
            v699 = v698 > v695 || v697 > v698;
            if (v699 || v697 < v696)
            {
              goto LABEL_3327;
            }

            v701 = *v697;
            v702 = *(v697 + 8);
            if (v701 > v702)
            {
              goto LABEL_3327;
            }

            v703 = *(v694 + v689 + 16);
            if (v702 - v701 < 0x200 || v703 > v701)
            {
              goto LABEL_3327;
            }

            DWORD1(v515) = 0;
            v701[30] = 0u;
            v701[31] = 0u;
            v701[28] = 0u;
            v701[29] = 0u;
            v701[26] = 0u;
            v701[27] = 0u;
            v701[24] = 0u;
            v701[25] = 0u;
            v701[22] = 0u;
            v701[23] = 0u;
            v701[20] = 0u;
            v701[21] = 0u;
            v701[18] = 0u;
            v701[19] = 0u;
            v701[16] = 0u;
            v701[17] = 0u;
            v701[14] = 0u;
            v701[15] = 0u;
            v701[12] = 0u;
            v701[13] = 0u;
            v701[10] = 0u;
            v701[11] = 0u;
            v701[8] = 0u;
            v701[9] = 0u;
            v701[6] = 0u;
            v701[7] = 0u;
            v701[4] = 0u;
            v701[5] = 0u;
            v701[2] = 0u;
            v701[3] = 0u;
            *v701 = 0u;
            v701[1] = 0u;
            if (v701 >= v701 + 32)
            {
              goto LABEL_3327;
            }

            ++v690;
            v686 = v603[2];
            v689 += 24;
          }

          while (v690 < v686);
          v688 = v603[2];
        }

        ++v687;
      }

      while (v687 != 7);
    }

    v705 = *(v603 + 9);
    v706 = *v603;
    v707 = *v705;
    if (v707)
    {
      v708 = 0;
      v1936 = *(v603 + 19);
      v1929 = *(v603 + 20);
      v1915 = *(v603 + 22);
      v1922 = *(v603 + 21);
      __lend = (v686 + v706);
      v1894 = v705 + 3;
      v1906 = *(v603 + 24);
      v1911 = *(v603 + 23);
      v1882 = *v603;
      while (1)
      {
        v709 = (v1866 + 4 * v708);
        v710 = v709 + 1;
        if (v709 < v1866 || v710 > v1865 || v709 > v710)
        {
          goto LABEL_3327;
        }

        v713 = v1882;
        if (*v709 && __lend > v1882)
        {
          break;
        }

LABEL_1242:
        if (++v708 >= v707)
        {
          v706 = *v603;
          goto LABEL_1244;
        }
      }

      v715 = 0;
      v716 = (v1865 + 16 * v708);
      v719 = (v716 + 4) <= v1848 && v716 <= v716 + 4 && v716 >= v1865;
      v1899 = v719;
      __nf = v716 == 0 || v719;
      v720 = (v1855 + 4 * v708);
      v723 = v720 + 1 <= v1849 && v720 <= v720 + 1 && v720 >= v1855;
      while (2)
      {
        v724 = v1936 + v715;
        v725 = v1936 + v715 + 24;
        v727 = v725 <= v1929 && v724 <= v725 && v724 >= v1922;
        v728 = (v1915 + v715);
        v729 = v1915 + v715 + 24;
        if (!v727 || v729 > v1911 || v728 > v729 || v728 < v1906)
        {
          goto LABEL_3327;
        }

        v733 = (*(v603 + 67) + 24 * v708);
        v734 = (v733 + 3) > *(v603 + 68) || v733 > v733 + 3;
        v735 = !v734 && v733 >= *(v603 + 69);
        if (!v735 || !v723)
        {
          goto LABEL_3327;
        }

        v736 = *v728;
        v737 = *v733;
        if (*v720)
        {
          v738 = *(v705 + 4) + 24 * v708;
          if (v738 + 24 > *(v705 + 5) || v738 > v738 + 24 || v738 < *(v705 + 6))
          {
            goto LABEL_3327;
          }

          v741 = *v738;
          v515 = *(v738 + 8);
          v1965 = v515;
        }

        else
        {
          v741 = 0;
          v1965 = 0uLL;
        }

        if (!__nf)
        {
          goto LABEL_3327;
        }

        v742 = v603[51];
        v743 = *(v736 + 24 * v708);
        if (*v716)
        {
          if (v716[2] > v713 && v741)
          {
            *v1981 = v741;
            *&v1981[8] = v1965;
            goto LABEL_1219;
          }

          if (v716[1] != 2 || v716[3] > v713)
          {
LABEL_1217:
            *v1981 = *v737;
            v748 = *(v737 + 2);
            goto LABEL_1218;
          }

LABEL_1216:
          *v1981 = *(v737 + 24);
          v748 = *(v737 + 5);
LABEL_1218:
          *&v1981[16] = v748;
LABEL_1219:
          v1969 = *v724;
          v1970 = *(v724 + 16);
          ddp_udc_int_mult_UM(v742, v1981, &v1969, v743);
        }

        else
        {
          v744 = &v1894[2 * (v716[1] - 1)];
          if (v744 + 8 > (v705 + 7) || v744 > v744 + 8 || v744 < v1894)
          {
            goto LABEL_3327;
          }

          v745 = *(v744 + 4);
          v746 = *v744;
          if (v746 > v713 && v741)
          {
            *&v515 = v745 * (v713 + 1);
            *v1981 = v741;
            *&v1981[8] = v1965;
            v1969 = *v737;
            v747 = *(v737 + 2);
          }

          else
          {
            if (v746 >= v713)
            {
              goto LABEL_1217;
            }

            if (2 * v746 < v713)
            {
              goto LABEL_1216;
            }

            *&v515 = v745 * (v713 - v746);
            *v1981 = *v737;
            *&v1981[16] = *(v737 + 2);
            v1969 = *(v737 + 24);
            v747 = *(v737 + 5);
          }

          v1970 = v747;
          v1967 = *v724;
          v1968 = *(v724 + 16);
          ddp_udc_int_interpol_mult_UM(v742, v1981, &v1969, &v1967, v743, *&v515);
        }

        v603 = v1961;
        if (v713 == v705[2] - 1)
        {
          if (!v1899)
          {
            goto LABEL_3327;
          }

          v749 = v716[1];
          if (v749)
          {
            v750 = *(v705 + 4) + 24 * v708;
            if (v750 + 24 > *(v705 + 5))
            {
              goto LABEL_3327;
            }

            if (v750 > v750 + 24)
            {
              goto LABEL_3327;
            }

            if (v750 < *(v705 + 6))
            {
              goto LABEL_3327;
            }

            v751 = (*(v1961 + 67) + 24 * v708);
            if ((v751 + 3) > *(v1961 + 68))
            {
              goto LABEL_3327;
            }

            if (v751 > v751 + 3)
            {
              goto LABEL_3327;
            }

            if (v751 < *(v1961 + 69))
            {
              goto LABEL_3327;
            }

            v752 = *v751 + 24 * (v749 - 1);
            if (v752 + 24 > v751[1])
            {
              goto LABEL_3327;
            }

            if (v752 > v752 + 24)
            {
              goto LABEL_3327;
            }

            if (v752 < v751[2])
            {
              goto LABEL_3327;
            }

            v753 = *v752;
            v754 = *(v752 + 8);
            if (*v752 > v754)
            {
              goto LABEL_3327;
            }

            if (*(v752 + 16) > v753)
            {
              goto LABEL_3327;
            }

            v755 = 92 * v1961[51];
            if (v755 > v754 - v753)
            {
              goto LABEL_3327;
            }

            v757 = *v750;
            v756 = *(v750 + 8);
            if (*v750 > v756)
            {
              goto LABEL_3327;
            }

            if (*(v750 + 16) > v757)
            {
              goto LABEL_3327;
            }

            if (v755 > v756 - v757)
            {
              goto LABEL_3327;
            }

            memcpy(v757, v753, 92 * v1961[51]);
            v603 = v1961;
            if (v757 > &v757[v755])
            {
              goto LABEL_3327;
            }
          }
        }

        ++v713;
        v715 += 24;
        if (__lend == v713)
        {
          v707 = *v705;
          goto LABEL_1242;
        }

        continue;
      }
    }

LABEL_1244:
    v758 = *(v603 + 7);
    v1853 = *(v603 + 16);
    v759 = 4 * v1847;
    v1845 = *(v603 + 18);
    v1846 = *(v603 + 17);
    v1889 = 4 * v1847;
    if (!v603[173])
    {
      v1884 = v706;
      goto LABEL_1587;
    }

    v760 = v1847 * (v706 << 6);
    if (*(v758 + 256) < 1)
    {
      LODWORD(v761) = 0;
    }

    else
    {
      v761 = 0;
      v1843 = v1847 * (v706 << 6);
      v1844 = v758 + 64;
      v1857 = (v758 + 184);
      v1868 = *(v603 + 7);
      do
      {
        v1864 = v761;
        v1862 = v761 + 1;
        v762 = &v1860[3 * v761 + 3];
        if ((v762 + 3) > v1859 || v762 > v762 + 3 || v762 < v1858)
        {
          goto LABEL_3327;
        }

        v765 = (v1866 + 4 * v1864);
        if ((v765 + 1) > v1865 || v765 > v765 + 1 || v765 < v1866)
        {
          goto LABEL_3327;
        }

        v1907 = v762[2];
        v1912 = v762[1];
        v766 = (*v762 + 4 * v760);
        if (*v765)
        {
          if (v1847 == 1)
          {
            v767 = v762[2];
            v768 = v762[1];
            v769 = (*v762 + 4 * v760);
          }

          else
          {
            v769 = *(v758 + 232);
            v768 = *(v758 + 240);
            v767 = *(v758 + 248);
          }

          v773 = v1844 + 8 * v1864;
          if (v773 < v1844)
          {
            goto LABEL_3327;
          }

          if (v773 + 8 > v1857)
          {
            goto LABEL_3327;
          }

          if (v773 > v773 + 8)
          {
            goto LABEL_3327;
          }

          v774 = (v1853 + 24 * v1862);
          if ((v774 + 3) > v1846)
          {
            goto LABEL_3327;
          }

          if (v774 > v774 + 3)
          {
            goto LABEL_3327;
          }

          if (v774 < v1845)
          {
            goto LABEL_3327;
          }

          v775 = v774[1];
          v1900 = *v774;
          if (*v774 > v775)
          {
            goto LABEL_3327;
          }

          if (v774[2] > v1900)
          {
            goto LABEL_3327;
          }

          v776 = *v773;
          v1895 = *(*v773 + 36);
          if ((0xAAAAAAAAAAAAAAABLL * ((v775 - v1900) >> 3)) < v1895)
          {
            goto LABEL_3327;
          }

          if (v1895)
          {
            v777 = 0;
            v778 = v769;
            v1877 = v769;
            v1883 = v766;
            v1871 = v767;
            v1872 = v768;
            v1869 = *v773;
            do
            {
              if (v778 < v767)
              {
                goto LABEL_3327;
              }

              v780 = *(v776 + 11);
              v779 = *(v776 + 12);
              if (v780 > v779 || *(v776 + 13) > v780)
              {
                goto LABEL_3327;
              }

              v782 = *(v776 + 18);
              v781 = *(v776 + 19);
              v783 = *(v776 + 20);
              v784 = *v776;
              v785 = (2 * v784);
              v786 = v782 + 4 * v785;
              v787 = v785 > (v779 - v780) >> 2 || v786 > v781;
              if (v787 || v783 > v786)
              {
                goto LABEL_3327;
              }

              v789 = v785 > (v781 - v786) >> 2 || v782 > v781;
              v790 = v789 || v783 > v782;
              if (v790 || v785 > (v781 - v782) >> 2)
              {
                goto LABEL_3327;
              }

              v791 = (v1900 + 24 * v777);
              v793 = *v791;
              v792 = v791[1];
              v794 = v791[2];
              v795 = v793 > v792 || v794 > v793;
              if (v795 || v785 > (v792 - v793) >> 2)
              {
                goto LABEL_3327;
              }

              v796 = v776[15];
              __ng = *(v776 + 14);
              __lene = (2 * v784);
              v1937 = v777;
              v1923 = *(v776 + 19);
              v1930 = v778;
              v1916 = *(v776 + 20);
              if (v796)
              {
                v797 = *(v776 + 8);
                v798 = *(v776 + 9);
                v799 = *(v776 + 10);
                if (v796 == 8)
                {
                  if (v797 > v798 || v799 > v797 || v785 > (v798 - v797) >> 2)
                  {
                    goto LABEL_3327;
                  }

                  if (v797)
                  {
                    if (v784)
                    {
                      v800 = 0;
                      v801 = 0;
                      v802 = v797 + 4 * __lene;
                      v803 = v793 + 4 * __lene;
                      do
                      {
                        v804 = (v797 + 4 * v800);
                        v805 = v804 + 1;
                        if (v804 < v797 || v805 > v802 || v804 > v805)
                        {
                          goto LABEL_3327;
                        }

                        v809 = *v804;
                        v808 = v804 + 2;
                        v810 = v809;
                        if (v808 > v802 || v805 > v808)
                        {
                          goto LABEL_3327;
                        }

                        v812 = v800;
                        v813 = (v802 - 8 - 4 * v800);
                        if (v813 < v797)
                        {
                          goto LABEL_3327;
                        }

                        v814 = v813 + 1;
                        if ((v813 + 1) > v802)
                        {
                          goto LABEL_3327;
                        }

                        if (v813 > v814)
                        {
                          goto LABEL_3327;
                        }

                        v816 = *v813;
                        v815 = v813 + 2;
                        v817 = v816;
                        if (v815 > v802)
                        {
                          goto LABEL_3327;
                        }

                        if (v814 > v815)
                        {
                          goto LABEL_3327;
                        }

                        v818 = (v793 + 4 * v812);
                        if (v818 < v793)
                        {
                          goto LABEL_3327;
                        }

                        v819 = v818 + 1;
                        if ((v818 + 1) > v803)
                        {
                          goto LABEL_3327;
                        }

                        if (v818 > v819)
                        {
                          goto LABEL_3327;
                        }

                        v821 = *v818;
                        v820 = v818 + 2;
                        v822 = v821;
                        if (v820 > v803)
                        {
                          goto LABEL_3327;
                        }

                        if (v819 > v820)
                        {
                          goto LABEL_3327;
                        }

                        v823 = (v803 - 8 - 4 * v812);
                        if (v823 < v793)
                        {
                          goto LABEL_3327;
                        }

                        v824 = v823 + 1;
                        if ((v823 + 1) > v803)
                        {
                          goto LABEL_3327;
                        }

                        if (v823 > v824)
                        {
                          goto LABEL_3327;
                        }

                        v826 = *v823;
                        v825 = v803 - 4 * v812;
                        v827 = v826;
                        if (v825 > v803)
                        {
                          goto LABEL_3327;
                        }

                        if (v824 > v825)
                        {
                          goto LABEL_3327;
                        }

                        v828 = (v782 + 4 * v801);
                        if (v828 < v782)
                        {
                          goto LABEL_3327;
                        }

                        v829 = v828 + 1;
                        if ((v828 + 1) > v786)
                        {
                          goto LABEL_3327;
                        }

                        if (v828 > v829)
                        {
                          goto LABEL_3327;
                        }

                        v830 = *v805;
                        v831 = *v814;
                        v832 = *v819;
                        v833 = *v824;
                        *v828 = (*v805 * v822) + (*v819 * v810);
                        v834 = v828 + 2;
                        if (v829 < v782)
                        {
                          goto LABEL_3327;
                        }

                        if (v834 > v786)
                        {
                          goto LABEL_3327;
                        }

                        if (v829 > v834)
                        {
                          goto LABEL_3327;
                        }

                        *v829 = (v810 * v822) - (v832 * v830);
                        v835 = (v782 + 4 * v784 + 4 * v801);
                        if (v835 < v782)
                        {
                          goto LABEL_3327;
                        }

                        v836 = v835 + 1;
                        if ((v835 + 1) > v786)
                        {
                          goto LABEL_3327;
                        }

                        if (v835 > v836)
                        {
                          goto LABEL_3327;
                        }

                        *v835 = (v831 * v827) + (v833 * v817);
                        v837 = v835 + 2;
                        if (v837 > v786 || v836 > v837)
                        {
                          goto LABEL_3327;
                        }

                        *v836 = (v831 * v833) - (v827 * v817);
                        v801 += 2;
                        v800 = v812 + 4;
                      }

                      while (v801 < v784);
                    }
                  }

                  else if (v784 >= 1)
                  {
                    v890 = 0;
                    v891 = (v786 - 8);
                    v892 = v793 + 4;
                    v893 = (v782 + 4);
                    do
                    {
                      v894 = -*v892;
                      *(v893 - 1) = *(v892 - 4);
                      *v893 = v894;
                      *v891-- = *(v892 + 4);
                      v890 += 2;
                      v892 += 16;
                      v893 += 2;
                    }

                    while (v890 < v784);
                  }
                }

                else if (v784 >= 2)
                {
                  v843 = 0;
                  v844 = 0;
                  v845 = 0;
                  v846 = v793 + 4 * __lene;
                  v847 = 4 * v784;
                  v848 = 4 * __lene;
                  v849 = 4 * __lene;
                  v850 = 4 * __lene - 4 * v784;
                  do
                  {
                    v851 = (v797 + v844);
                    v852 = (v797 + v844 + 4);
                    if (v852 > v798 || v851 > v852 || v851 < v799)
                    {
                      goto LABEL_3327;
                    }

                    v856 = *v851;
                    v855 = v851 + 2;
                    v857 = v856;
                    if (v855 > v798)
                    {
                      goto LABEL_3327;
                    }

                    if (v852 > v855)
                    {
                      goto LABEL_3327;
                    }

                    v858 = (v797 + v844 + 12);
                    if (v858 > v798)
                    {
                      goto LABEL_3327;
                    }

                    if (v855 > v858)
                    {
                      goto LABEL_3327;
                    }

                    v859 = v797 + v844 + 16;
                    if (v859 > v798)
                    {
                      goto LABEL_3327;
                    }

                    if (v858 > v859)
                    {
                      goto LABEL_3327;
                    }

                    v860 = v793 + v844;
                    if (v793 + v844 < v793)
                    {
                      goto LABEL_3327;
                    }

                    v861 = (v860 + 4);
                    if (v860 + 4 > v846)
                    {
                      goto LABEL_3327;
                    }

                    if (v860 > v861)
                    {
                      goto LABEL_3327;
                    }

                    v862 = (v793 + v844 + 8);
                    v863 = *(v793 + v844);
                    if (v862 > v846)
                    {
                      goto LABEL_3327;
                    }

                    if (v861 > v862)
                    {
                      goto LABEL_3327;
                    }

                    v864 = (v793 + v844 + 12);
                    if (v864 > v846)
                    {
                      goto LABEL_3327;
                    }

                    if (v862 > v864)
                    {
                      goto LABEL_3327;
                    }

                    v865 = v793 + v844 + 16;
                    if (v865 > v846)
                    {
                      goto LABEL_3327;
                    }

                    if (v864 > v865)
                    {
                      goto LABEL_3327;
                    }

                    v866 = (v793 + v848 - 16);
                    if (v866 < v793)
                    {
                      goto LABEL_3327;
                    }

                    v867 = (v793 + v848 - 12);
                    if (v867 > v846)
                    {
                      goto LABEL_3327;
                    }

                    if (v866 > v867)
                    {
                      goto LABEL_3327;
                    }

                    v868 = (v793 + v848 - 8);
                    if (v868 > v846)
                    {
                      goto LABEL_3327;
                    }

                    if (v867 > v868)
                    {
                      goto LABEL_3327;
                    }

                    v869 = (v793 + v848 - 4);
                    if (v869 > v846)
                    {
                      goto LABEL_3327;
                    }

                    if (v868 > v869)
                    {
                      goto LABEL_3327;
                    }

                    if (v793 + v848 > v846)
                    {
                      goto LABEL_3327;
                    }

                    if (v869 > v793 + v848)
                    {
                      goto LABEL_3327;
                    }

                    v870 = v782 + v843;
                    if (v782 + v843 < v782)
                    {
                      goto LABEL_3327;
                    }

                    v871 = (v870 + 4);
                    if (v870 + 4 > v786)
                    {
                      goto LABEL_3327;
                    }

                    if (v870 > v871)
                    {
                      goto LABEL_3327;
                    }

                    v872 = *v852;
                    v873 = *v855;
                    v874 = *v858;
                    v875 = *v861;
                    v876 = *v862;
                    v877 = *v864;
                    v878 = *v866;
                    v879 = *v867;
                    v880 = *v868;
                    v881 = *v869;
                    *(v782 + v843) = (v857 * *v861) + (v863 * *v852);
                    v882 = v782 + v843 + 8;
                    if (v882 > v786)
                    {
                      goto LABEL_3327;
                    }

                    if (v871 > v882)
                    {
                      goto LABEL_3327;
                    }

                    *v871 = (v857 * v863) - (v875 * v872);
                    v883 = v782 + v850;
                    if (v782 + v850 < v782)
                    {
                      goto LABEL_3327;
                    }

                    v884 = (v883 + 4);
                    if (v883 + 4 > v786)
                    {
                      goto LABEL_3327;
                    }

                    if (v883 > v884)
                    {
                      goto LABEL_3327;
                    }

                    *(v782 + v850) = -((v872 * v881) + (v880 * v857));
                    v885 = v782 + v850 + 8;
                    if (v885 > v786)
                    {
                      goto LABEL_3327;
                    }

                    if (v884 > v885)
                    {
                      goto LABEL_3327;
                    }

                    *v884 = (v872 * v880) - (v881 * v857);
                    v886 = (v782 + v849 - 8);
                    if (v886 < v782)
                    {
                      goto LABEL_3327;
                    }

                    v887 = (v782 + v849 - 4);
                    if (v887 > v786)
                    {
                      goto LABEL_3327;
                    }

                    if (v886 > v887)
                    {
                      goto LABEL_3327;
                    }

                    *v886 = (v873 * v877) + (v876 * v874);
                    if (v782 + v849 > v786)
                    {
                      goto LABEL_3327;
                    }

                    if (v887 > v782 + v849)
                    {
                      goto LABEL_3327;
                    }

                    *v887 = (v874 * v877) - (v876 * v873);
                    v888 = (v782 + v847 - 8);
                    if (v888 < v782)
                    {
                      goto LABEL_3327;
                    }

                    v889 = (v782 + v847 - 4);
                    if (v889 > v786)
                    {
                      goto LABEL_3327;
                    }

                    if (v888 > v889)
                    {
                      goto LABEL_3327;
                    }

                    *v888 = -((v874 * v879) + (v878 * v873));
                    if (v782 + v847 > v786 || v889 > v782 + v847)
                    {
                      goto LABEL_3327;
                    }

                    v845 += 2;
                    v847 -= 8;
                    v844 += 16;
                    v849 -= 8;
                    *v889 = (v873 * v879) - (v878 * v874);
                    v850 += 8;
                    v843 += 8;
                    v848 -= 16;
                  }

                  while (v845 < v784 >> 1);
                }
              }

              else if (v784 >= 1)
              {
                v838 = 0;
                v839 = (v786 - 8);
                v840 = v793 + 4;
                v841 = (v782 + 4);
                do
                {
                  v842 = -*v840;
                  *(v841 - 1) = *(v840 - 4);
                  *v841 = v842;
                  *v839-- = *(v840 + 4);
                  v838 += 2;
                  v840 += 16;
                  v841 += 2;
                }

                while (v838 < v784);
              }

              v895 = v786;
              v896 = (2 * v784);
              v897 = v786 + 4 * __lene;
              if (__ng)
              {
                v898 = *__ng;
                if (v786)
                {
                  goto LABEL_1519;
                }

                goto LABEL_1521;
              }

              if (v784 > 119)
              {
                if (v784 <= 359)
                {
                  if (v784 > 191)
                  {
                    if (v784 <= 255)
                    {
                      if (v784 == 192)
                      {
                        v899 = DLB_r4_fft_192;
                      }

                      else
                      {
                        if (v784 != 240)
                        {
                          goto LABEL_1525;
                        }

                        v899 = DLB_r4_fft_240;
                      }
                    }

                    else
                    {
                      switch(v784)
                      {
                        case 0x100:
                          v899 = DLB_r4_fft_256;
                          break;
                        case 0x120:
                          v899 = DLB_r4_fft_288;
                          break;
                        case 0x140:
                          v899 = DLB_r4_fft_320;
                          break;
                        default:
                          goto LABEL_1525;
                      }
                    }
                  }

                  else if (v784 <= 143)
                  {
                    if (v784 == 120)
                    {
                      v899 = DLB_r4_fft_120;
                    }

                    else
                    {
                      if (v784 != 128)
                      {
                        goto LABEL_1525;
                      }

                      v899 = DLB_r4_fft_128;
                    }
                  }

                  else
                  {
                    switch(v784)
                    {
                      case 0x90:
                        v899 = DLB_r4_fft_144;
                        break;
                      case 0xA0:
                        v899 = DLB_r4_fft_160;
                        break;
                      case 0xB4:
                        v899 = DLB_r4_fft_180;
                        break;
                      default:
                        goto LABEL_1525;
                    }
                  }
                }

                else if (v784 <= 639)
                {
                  if (v784 <= 479)
                  {
                    if (v784 == 360)
                    {
                      v899 = DLB_r4_fft_360;
                    }

                    else
                    {
                      if (v784 != 384)
                      {
                        goto LABEL_1525;
                      }

                      v899 = DLB_r4_fft_384;
                    }
                  }

                  else
                  {
                    switch(v784)
                    {
                      case 0x1E0:
                        v899 = DLB_r4_fft_480;
                        break;
                      case 0x200:
                        v899 = DLB_r4_fft_512;
                        break;
                      case 0x240:
                        v899 = DLB_r4_fft_576;
                        break;
                      default:
                        goto LABEL_1525;
                    }
                  }
                }

                else if (v784 > 959)
                {
                  if (v784 == 960)
                  {
                    v899 = DLB_r4_fft_960;
                  }

                  else
                  {
                    if (v784 != 1024 && v784 != 2048)
                    {
                      goto LABEL_1525;
                    }

                    v899 = DLB_r4_fft_1024;
                  }
                }

                else
                {
                  switch(v784)
                  {
                    case 0x280:
                      v899 = DLB_r4_fft_640;
                      break;
                    case 0x2D0:
                      v899 = DLB_r4_fft_720;
                      break;
                    case 0x300:
                      v899 = DLB_r4_fft_768;
                      break;
                    default:
                      goto LABEL_1525;
                  }
                }
              }

              else if (v784 <= 31)
              {
                if (v784 > 14)
                {
                  if (v784 <= 19)
                  {
                    if (v784 == 15)
                    {
                      v899 = DLB_r4_fft_15;
                    }

                    else
                    {
                      if (v784 != 16)
                      {
                        goto LABEL_1525;
                      }

                      v899 = DLB_r4_fft_16;
                    }
                  }

                  else
                  {
                    switch(v784)
                    {
                      case 0x14:
                        v899 = DLB_r4_fft_20;
                        break;
                      case 0x18:
                        v899 = DLB_r4_fft_24;
                        break;
                      case 0x1E:
                        v899 = DLB_r4_fft_30;
                        break;
                      default:
                        goto LABEL_1525;
                    }
                  }
                }

                else if (v784 <= 5)
                {
                  v898 = DLB_r4_fft_2;
                  if (v784 == 2)
                  {
                    goto LABEL_1518;
                  }

                  if (v784 != 4)
                  {
                    goto LABEL_1525;
                  }

                  v899 = DLB_r4_fft_4;
                }

                else
                {
                  switch(v784)
                  {
                    case 6:
                      v899 = DLB_r4_fft_6;
                      break;
                    case 8:
                      v899 = DLB_r4_fft_8;
                      break;
                    case 0xC:
                      v899 = DLB_r4_fft_12;
                      break;
                    default:
                      goto LABEL_1525;
                  }
                }
              }

              else if (v784 <= 59)
              {
                if (v784 <= 39)
                {
                  if (v784 == 32)
                  {
                    v899 = DLB_r4_fft_32;
                  }

                  else
                  {
                    if (v784 != 36)
                    {
                      goto LABEL_1525;
                    }

                    v899 = DLB_r4_fft_36;
                  }
                }

                else
                {
                  switch(v784)
                  {
                    case '(':
                      v899 = DLB_r4_fft_40;
                      break;
                    case '-':
                      v899 = DLB_r4_fft_45;
                      break;
                    case '0':
                      v899 = DLB_r4_fft_48;
                      break;
                    default:
                      goto LABEL_1525;
                  }
                }
              }

              else if (v784 > 79)
              {
                switch(v784)
                {
                  case 'P':
                    v899 = DLB_r4_fft_80;
                    break;
                  case 'Z':
                    v899 = DLB_r4_fft_90;
                    break;
                    v899 = DLB_r4_fft_96;
                    break;
                  default:
                    goto LABEL_1525;
                }
              }

              else
              {
                switch(v784)
                {
                  case '<':
                    v899 = DLB_r4_fft_60;
                    break;
                  case '@':
                    v899 = DLB_r4_fft_64;
                    break;
                  case 'H':
                    v899 = DLB_r4_fft_72;
                    break;
                  default:
                    goto LABEL_1525;
                }
              }

              v898 = v899;
LABEL_1518:
              if (v786)
              {
LABEL_1519:
                if (v786 + 4 < v786 || v786 + 4 > v897)
                {
                  goto LABEL_3327;
                }
              }

LABEL_1521:
              if (v782 && (v782 + 4 < v782 || v782 + 4 > v786))
              {
                goto LABEL_3327;
              }

              v898(v786, v782, v784);
              v896 = (2 * v784);
LABEL_1525:
              v900 = v780 + 4 * v896;
              v901 = -2 * v784;
              v902 = 4 * v901;
              v903 = v900;
              v904 = v786 + 4 * __lene;
              v905 = -4 * v901;
              do
              {
                v906 = (v903 + v902);
                if (v903 + v902 > v900 || v906 < v780 || v905 <= 28)
                {
                  goto LABEL_3327;
                }

                if (v904 + v902 > v897)
                {
                  goto LABEL_3327;
                }

                if (v904 + v902 < v786)
                {
                  goto LABEL_3327;
                }

                v909 = (v895 + v902);
                if (v895 + v902 > v786 || v909 < v782)
                {
                  goto LABEL_3327;
                }

                v910 = v906[1];
                v911 = vuzp1q_s32(*v906, v910);
                v912 = vuzp2q_s32(*v906, v910);
                v913 = *(v904 + v902);
                v914 = *(v904 + v902 + 16);
                v915 = vuzp2q_s32(v913, v914);
                v916 = vuzp1q_s32(v913, v914);
                v917 = vsubq_f32(vmulq_f32(v912, v915), vmulq_f32(v911, v916));
                v918 = vaddq_f32(v917, v917);
                v919 = vaddq_f32(vmulq_f32(v912, v916), vmulq_f32(v911, v915));
                v920 = vaddq_f32(v919, v919);
                vst2_f32(v909, *(&v918 - 8));
                v921 = (v895 + v902);
                v895 += 32;
                v921[1] = vzip2q_s32(v920, v918);
                v905 -= 32;
                v904 += 32;
                v903 += 32;
                v901 += 8;
              }

              while (v901);
              v776 = v1869;
              v922 = *(v1869 + 21);
              v923 = *(v1869 + 6);
              v924 = v923 + 4 * v1869[14];
              *v1981 = v923;
              *&v1981[8] = v924;
              *&v1981[16] = v923;
              *&v1969 = v782;
              *(&v1969 + 1) = v1923;
              v1970 = v1916;
              *&v1967 = v1930;
              v768 = v1872;
              *(&v1967 + 1) = v1872;
              v1968 = v1930;
              v925 = *v1869;
              v926 = *(v1869 + 2);
              v1966 = *(v1869 + 3);
              v1965 = v926;
              v922(v1981, &v1965, &v1969, &v1967, v925);
              v778 = &v1930[*v1869];
              v777 = v1937 + 1;
              v759 = 4 * v1847;
              v603 = v1961;
              v758 = v1868;
              v769 = v1877;
              v766 = v1883;
              v767 = v1871;
            }

            while (v1937 + 1 != v1895);
          }

          v927 = (*v1857 << 6);
          v760 = v1843;
          if (v927)
          {
            do
            {
              v929 = (v769 + 1) <= v768 && v769 <= v769 + 1 && v769 >= v767;
              v930 = v766 + 1;
              if (!v929 || v930 > v1912 || v766 > v930 || v766 < v1907)
              {
                goto LABEL_3327;
              }

              v934 = *v769++;
              v935 = v934 * 16.0;
              if ((v934 * 16.0) < -1.0)
              {
                v935 = -1.0;
              }

              *v766 = fminf(v935, 1.0);
              v766 = (v766 + v759);
              --v927;
            }

            while (v927);
          }
        }

        else
        {
          for (j = *v1857 << 6; j; --j)
          {
            if ((v766 + 1) > v1912 || v766 > v766 + 1 || v766 < v1907)
            {
              goto LABEL_3327;
            }

            *v766 = 0.0;
            v766 = (v766 + v759);
          }
        }

        v761 = v1862;
      }

      while (v1862 < *(v758 + 256));
      if (v1864 > 0xD)
      {
        goto LABEL_1586;
      }
    }

    v761 = v761;
    do
    {
      ++v761;
      v936 = &v1860[3 * v761];
      if ((v936 + 3) > v1859 || v936 > v936 + 3 || v936 < v1858)
      {
        goto LABEL_3327;
      }

      v939 = *(v758 + 184) << 6;
      if (v939)
      {
        v941 = v936[1];
        v940 = v936[2];
        v942 = (*v936 + 4 * v760);
        do
        {
          if ((v942 + 1) > v941 || v942 > v942 + 1 || v942 < v940)
          {
            goto LABEL_3327;
          }

          *v942 = 0;
          v942 = (v942 + v759);
          --v939;
        }

        while (v939);
      }
    }

    while (v761 != 15);
LABEL_1586:
    v758 = *(v603 + 7);
    v1884 = *v603;
    v1853 = *(v603 + 16);
    v1845 = *(v603 + 18);
    v1846 = *(v603 + 17);
LABEL_1587:
    v945 = (v758 + 220);
    __nh = (v758 + 224);
    if (v758 + 220 > (v758 + 224) || v945 < v758 + 192)
    {
      goto LABEL_3327;
    }

    v946 = &v1851[3 * *v945];
    v947 = v946 + 3 > v1852 || v946 > v946 + 3;
    if (v947 || v946 < v1850)
    {
      goto LABEL_3327;
    }

    v1931 = v1961[142];
    v949 = v1884 << 6;
    v950 = *v946;
    v951 = v946[1];
    v952 = v946[2];
    v953 = *(v758 + 188);
    v954 = *(v758 + 260);
    if (*(v758 + 228))
    {
      if ((v1860 + 3) > v1859 || v1860 > v1860 + 3 || v1860 < v1858)
      {
        goto LABEL_3327;
      }

      v955 = v1860[1];
      v956 = v1860[2];
      v957 = (*v1860 + 4 * v1847 * v949);
    }

    else
    {
      v956 = 0;
      v955 = 0;
      v957 = 0;
    }

    if (*(v758 + 184) >= 1)
    {
      v958 = 0;
      v959 = (v950 + 4 * v1836 * v949);
      v960 = v953 << 6;
      v961 = vadd_s32(vdup_n_s32(v954 + (v953 << 6)), 0xFFFFFB3FFFFFFD80);
      v962 = vdup_n_s32(v953 << 6);
      v963 = vsub_s32(v961, vbic_s8(v962, vcgt_u32(v962, v961)));
      v1938 = v953 << 6;
      do
      {
        v964 = v963.u32[1];
        v965 = v960 - v963.i32[1];
        if (v960 - v963.i32[1] >= 0x40)
        {
          v966 = 64;
        }

        else
        {
          v966 = v960 - v963.i32[1];
        }

        if (*(v758 + 228))
        {
          v967 = v1903;
          if (v1931 == 4)
          {
            v968 = 64;
            do
            {
              if ((v957 + 1) > v955 || v957 > v957 + 1 || v957 < v956)
              {
                goto LABEL_3327;
              }

              *v957 = 0.0;
              v957 = (v957 + v1889);
              --v968;
            }

            while (v968);
          }

          else
          {
            if (v960 != v963.i32[1])
            {
              v971 = *(v758 + 280);
              if (v966 <= 1)
              {
                v972 = 1;
              }

              else
              {
                v972 = v966;
              }

              do
              {
                v973 = (*(v758 + 264) + 4 * v964);
                v975 = (v973 + 1) <= *(v758 + 272) && v973 <= v973 + 1 && v973 >= v971;
                v976 = v957 + 1;
                if (!v975 || v976 > v955 || v957 > v976 || v957 < v956)
                {
                  goto LABEL_3327;
                }

                v980 = *v973 * 16.0;
                if (v980 < -1.0)
                {
                  v980 = -1.0;
                }

                *v957 = fminf(v980, 1.0);
                ++v964;
                v957 = (v957 + v1889);
                --v972;
              }

              while (v972);
            }

            if (v965 <= 0x3F)
            {
              v981 = 0;
              v982 = 64 - v966;
              v983 = *(v758 + 280);
              v984 = -v982;
              do
              {
                v985 = (*(v758 + 264) + v981);
                v987 = (v985 + 1) <= *(v758 + 272) && v985 <= v985 + 1 && v985 >= v983;
                v988 = v957 + 1;
                if (!v987 || v988 > v955 || v957 > v988 || v957 < v956)
                {
                  goto LABEL_3327;
                }

                v992 = *v985 * 16.0;
                if (v992 < -1.0)
                {
                  v992 = -1.0;
                }

                *v957 = fminf(v992, 1.0);
                v981 += 4;
                v957 = (v957 + v1889);
                v18 = __CFADD__(v984++, 1);
              }

              while (!v18);
            }
          }
        }

        else
        {
          v967 = v1903;
        }

        if (*__nh)
        {
          v993 = *(v758 + 272);
          v994 = (*(v758 + 264) + 4 * v963.u32[0]);
          if (v994 > v993)
          {
            goto LABEL_3327;
          }

          v995 = *(v758 + 240);
          v996 = (*(v758 + 232) + (v958 << 8));
          v997 = v993 - v994 < 0x100 || *(v758 + 280) > v994;
          v998 = v997 || v996 > v995;
          if (v998 || *(v758 + 248) > v996)
          {
            goto LABEL_3327;
          }

          if (v995 - v996 < 0x100)
          {
            goto LABEL_3327;
          }

          v1000 = *v994;
          v1001 = v994[1];
          v1002 = v994[3];
          v996[2] = v994[2];
          v996[3] = v1002;
          *v996 = v1000;
          v996[1] = v1001;
          v1003 = v994[4];
          v1004 = v994[5];
          v1005 = v994[7];
          v996[6] = v994[6];
          v996[7] = v1005;
          v996[4] = v1003;
          v996[5] = v1004;
          v1006 = v994[8];
          v1007 = v994[9];
          v1008 = v994[11];
          v996[10] = v994[10];
          v996[11] = v1008;
          v996[8] = v1006;
          v996[9] = v1007;
          v1009 = v994[12];
          v1010 = v994[13];
          v1011 = v994[15];
          v996[14] = v994[14];
          v996[15] = v1011;
          v996[12] = v1009;
          v996[13] = v1010;
          if (v996 >= v996 + 16)
          {
            goto LABEL_3327;
          }
        }

        v1012 = v954;
        v1013 = 64;
        do
        {
          if ((v959 + 1) > v951 || v959 > v959 + 1 || v959 < v952)
          {
            goto LABEL_3327;
          }

          v1016 = *(v758 + 280);
          v1017 = (*(v758 + 264) + 4 * v1012);
          v1018 = (v1017 + 1) > *(v758 + 272) || v1017 > v1017 + 1;
          if (v1018 || v1017 < v1016)
          {
            goto LABEL_3327;
          }

          *v1017 = *v959;
          ++v1012;
          v959 = (v959 + v967);
          --v1013;
        }

        while (v1013);
        v1020 = *(v758 + 272);
        v1021 = (*(v758 + 264) + 4 * v954);
        if (v1021 > v1020)
        {
          goto LABEL_3327;
        }

        if ((v1020 - v1021) < 253 || v1016 > v1021)
        {
          goto LABEL_3327;
        }

        v1023 = v758;
        __lenf = v963;
        apply_clipgain(v1021, v1884 + v958, *(v758 + 292), *(v758 + 288));
        v758 = v1023;
        v960 = v1938;
        if (v954 + 64 >= v1938)
        {
          v1024 = v1938;
        }

        else
        {
          v1024 = 0;
        }

        v954 = v954 + 64 - v1024;
        v1025 = vadd_s32(__lenf, 0x4000000040);
        v963 = vsub_s32(v1025, vbic_s8(v962, vcgt_u32(v962, v1025)));
        ++v958;
      }

      while (v958 < *(v1023 + 184));
    }

    *(v758 + 260) = v954;
    if (*(v758 + 224))
    {
      if (v1853 + 24 > v1846 || v1853 > v1853 + 24 || v1853 < v1845)
      {
        goto LABEL_3327;
      }

      v1026 = *v758;
      v1027 = *(v1853 + 16);
      *v1981 = *v1853;
      *&v1981[16] = v1027;
      v1969 = *(v758 + 232);
      v1970 = *(v758 + 248);
      DLB_CLqmf_analysisL_bidi_indexable(v1026, v1981, &v1969);
    }

    v12 = v1961;
    if (!v1961[174])
    {
      LODWORD(v1048) = v1961[2];
      goto LABEL_1820;
    }

    for (k = 0; k != 15; ++k)
    {
      v1029 = (v1866 + 4 * k);
      if ((v1029 + 1) > v1865 || v1029 > v1029 + 1)
      {
        goto LABEL_3327;
      }

      if (!*v1029 && v1961[2])
      {
        v1031 = 0;
        v1032 = 0;
        do
        {
          v1033 = (*(v1961 + 16) + 24 * k);
          v1034 = (v1033 + 3);
          if ((v1033 + 6) > *(v1961 + 17) || v1034 > (v1033 + 6) || v1034 < *(v1961 + 18))
          {
            goto LABEL_3327;
          }

          v1037 = v1033[3];
          v1038 = v1033[4];
          v1039 = v1033[5];
          v1040 = v1037 + v1031;
          v1041 = v1037 + v1031 + 24;
          v1042 = v1041 > v1038 || v1040 > v1041;
          if (v1042 || v1040 < v1039)
          {
            goto LABEL_3327;
          }

          v1044 = *v1040;
          v1045 = *(v1040 + 8);
          if (v1044 > v1045)
          {
            goto LABEL_3327;
          }

          v1046 = *(v1037 + v1031 + 16);
          if (v1045 - v1044 < 0x200 || v1046 > v1044)
          {
            goto LABEL_3327;
          }

          v1044[30] = 0u;
          v1044[31] = 0u;
          v1044[28] = 0u;
          v1044[29] = 0u;
          v1044[26] = 0u;
          v1044[27] = 0u;
          v1044[24] = 0u;
          v1044[25] = 0u;
          v1044[22] = 0u;
          v1044[23] = 0u;
          v1044[20] = 0u;
          v1044[21] = 0u;
          v1044[18] = 0u;
          v1044[19] = 0u;
          v1044[16] = 0u;
          v1044[17] = 0u;
          v1044[14] = 0u;
          v1044[15] = 0u;
          v1044[12] = 0u;
          v1044[13] = 0u;
          v1044[10] = 0u;
          v1044[11] = 0u;
          v1044[8] = 0u;
          v1044[9] = 0u;
          v1044[6] = 0u;
          v1044[7] = 0u;
          v1044[4] = 0u;
          v1044[5] = 0u;
          v1044[2] = 0u;
          v1044[3] = 0u;
          *v1044 = 0u;
          v1044[1] = 0u;
          if (v1044 >= v1044 + 32)
          {
            goto LABEL_3327;
          }

          ++v1032;
          v1031 += 24;
        }

        while (v1032 < v1961[2]);
      }
    }

    LODWORD(v1048) = v1961[2];
    if (v1961[142] == 4)
    {
      if (!v1048)
      {
        goto LABEL_1820;
      }

      v1049 = 0;
      v1050 = 0;
      do
      {
        v1051 = *(v1961 + 16);
        if ((v1051 + 3) > *(v1961 + 17) || v1051 > v1051 + 3 || v1051 < *(v1961 + 18))
        {
          goto LABEL_3327;
        }

        v1054 = *v1051;
        v1055 = v1051[1];
        v1056 = v1051[2];
        v1057 = v1054 + v1049;
        v1058 = v1054 + v1049 + 24;
        v1059 = v1058 > v1055 || v1057 > v1058;
        if (v1059 || v1057 < v1056)
        {
          goto LABEL_3327;
        }

        v1061 = *v1057;
        v1062 = *(v1057 + 8);
        if (v1061 > v1062)
        {
          goto LABEL_3327;
        }

        v1063 = *(v1054 + v1049 + 16);
        if (v1062 - v1061 < 0x200 || v1063 > v1061)
        {
          goto LABEL_3327;
        }

        v1061[30] = 0u;
        v1061[31] = 0u;
        v1061[28] = 0u;
        v1061[29] = 0u;
        v1061[26] = 0u;
        v1061[27] = 0u;
        v1061[24] = 0u;
        v1061[25] = 0u;
        v1061[22] = 0u;
        v1061[23] = 0u;
        v1061[20] = 0u;
        v1061[21] = 0u;
        v1061[18] = 0u;
        v1061[19] = 0u;
        v1061[16] = 0u;
        v1061[17] = 0u;
        v1061[14] = 0u;
        v1061[15] = 0u;
        v1061[12] = 0u;
        v1061[13] = 0u;
        v1061[10] = 0u;
        v1061[11] = 0u;
        v1061[8] = 0u;
        v1061[9] = 0u;
        v1061[6] = 0u;
        v1061[7] = 0u;
        v1061[4] = 0u;
        v1061[5] = 0u;
        v1061[2] = 0u;
        v1061[3] = 0u;
        *v1061 = 0u;
        v1061[1] = 0u;
        if (v1061 >= v1061 + 32)
        {
          goto LABEL_3327;
        }

        ++v1050;
        v1048 = v1961[2];
        v1049 += 24;
      }

      while (v1050 < v1048);
    }

    v11 = v1854;
    v10 = a4;
    v1065 = v1840;
    if (!v1961[174] || !v1048)
    {
      goto LABEL_1821;
    }

    v1066 = 0;
    v1067 = 0;
    do
    {
      v1068 = *(v12 + 13);
      if ((v1068 + 3) > *(v12 + 14) || v1068 > v1068 + 3 || v1068 < *(v12 + 15))
      {
        goto LABEL_3327;
      }

      v1071 = v1068[1];
      v1072 = v1068[2];
      v1073 = *v1068 + 24 * (v1067 + *v12);
      v1074 = v1073 + 24 > v1071 || v1073 > v1073 + 24;
      if (v1074 || v1073 < v1072)
      {
        goto LABEL_3327;
      }

      v1076 = *(v12 + 16);
      if ((v1076 + 3) > *(v12 + 17) || v1076 > v1076 + 3 || v1076 < *(v12 + 18))
      {
        goto LABEL_3327;
      }

      v1077 = *v1076;
      v1078 = v1076[1];
      v1079 = v1076[2];
      v1080 = *v1076 + v1066;
      v1081 = v1080 + 24 > v1078 || v1080 > v1080 + 24;
      if (v1081 || v1080 < v1079)
      {
        goto LABEL_3327;
      }

      v1083 = *v1080;
      v1084 = *(v1080 + 8);
      if (*v1080 > v1084)
      {
        goto LABEL_3327;
      }

      v1086 = *v1073;
      v1085 = *(v1073 + 8);
      v1087 = *(v1073 + 16);
      v1088 = *(v1077 + v1066 + 16);
      v1089 = v1084 - v1083 < 0x200 || v1088 > v1083;
      v1090 = v1089 || v1086 > v1085;
      if (v1090 || v1087 > v1086)
      {
        goto LABEL_3327;
      }

      if (v1085 - v1086 < 0x200)
      {
        goto LABEL_3327;
      }

      memcpy(v1086, v1083, 0x200uLL);
      if (v1086 >= v1086 + 512)
      {
        goto LABEL_3327;
      }

      ++v1067;
      v12 = v1961;
      v1048 = v1961[2];
      v1066 += 24;
    }

    while (v1067 < v1048);
LABEL_1820:
    v11 = v1854;
    v10 = a4;
    v1065 = v1840;
LABEL_1821:
    v1092 = v1838 | v1839;
    v1093 = *v12 + v1048;
    *v12 = v1093;
    if (v1093 < v12[3])
    {
      v1092 = 1;
    }

    v514 = v1065 + 4;
    if (v1092 != 1)
    {
      goto LABEL_1829;
    }
  }

  v528 = v12[142];
  if (v528 == 3)
  {
    if (v12[176])
    {
      goto LABEL_1825;
    }

    goto LABEL_834;
  }

  if (v528 == 1)
  {
    if (!v12[53])
    {
      goto LABEL_1825;
    }

    goto LABEL_834;
  }

  if ((v528 & 0xFFFFFFFE) != 4)
  {
LABEL_834:
    v12[51] = v523 - 1;
    goto LABEL_835;
  }

LABEL_1825:
  v525 = *v1849;
LABEL_1826:
  if (v525)
  {
    ddp_udc_int_converter_clear_lfe_history(*(v1961 + 7));
    v12 = v1961;
  }

LABEL_1828:
  v1092 = 5;
LABEL_1829:
  v1094 = *a1;
  v74 = v1830;
  v76 = v1832;
  v75 = v1833;
  if (*a1 == 1)
  {
    *v10 = v1826;
  }

  v1095 = (v1092 & 3) != 0;
  v1096 = v1835;
  if (v1827 && v1095)
  {
    v1096 = 6;
  }

  v1835 = v1096;
  if (v1827 && v1095)
  {
    v76 = 6;
  }

  v12[176] = 0;
  if (v1833)
  {
    v1097 = 5;
  }

  else
  {
    v1097 = 4;
  }

  v73 = v1092 == 5;
  if (v73)
  {
    v72 = v1097;
  }

  else
  {
    v72 = 0;
  }

  if (!v1094)
  {
LABEL_1842:
    m = 0;
    v1897 = 0;
    *(v11 + 79) = v75;
    *(v11 + 80) = v76;
    goto LABEL_1843;
  }

LABEL_83:
  if ((v76 & 0xFFFFFFFE) == 6)
  {
    v77 = *(v11 + 77);
    v78 = v77 <= 30;
    if (v77 == 30)
    {
      v79 = 3;
    }

    else
    {
      v79 = v72;
    }

    if (v77 > 30)
    {
      v77 = 36;
    }

    if (v78)
    {
      v72 = v79;
    }

    else
    {
      v72 = 1;
    }

    v80 = a7;
    v81 = v77 + a7;
  }

  else
  {
    v81 = 0;
    v80 = a7;
  }

  v82 = v76 == 5;
  if (v1828 && v82)
  {
    v83 = 3;
  }

  else
  {
    v83 = v72;
  }

  v84 = v75 == 2;
  if (v84 && v82)
  {
    v85 = 1;
  }

  else
  {
    v85 = v83;
  }

  if (v84 && v76 == 0)
  {
    v85 = 2;
  }

  if (v80 == 6)
  {
    v72 = v85;
  }

  else
  {
    v72 = 6;
  }

  v86 = v1835;
  if (v80 != 6)
  {
    v86 = 7;
  }

  v1835 = v86;
  if (v72)
  {
    v87 = v72 == 5;
  }

  else
  {
    v87 = 1;
  }

  v88 = !v87;
  v89 = (v72 != 2) & v88;
  if (v89)
  {
    v90 = 2;
  }

  else
  {
    v90 = 1;
  }

  *(v11 + 77) = v81;
  *a6 = v89;
  if (v72 == 2)
  {
    if (*a1 == 1)
    {
      *a6 = 1;
      m = *v10;
      goto LABEL_161;
    }
  }

  else
  {
    m = *v10;
    if (v72 > 5 || ((1 << v72) & 0x25) == 0)
    {
      goto LABEL_161;
    }
  }

  *&v92 = 0xAAAAAAAAAAAAAAAALL;
  *(&v92 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1971[3] = v92;
  *(&v1971[2] + 4) = v92;
  *(&v1971[1] + 4) = v92;
  *(v1971 + 4) = v92;
  LODWORD(v1971[0]) = 1;
  if (4 * v74 >= 0x3D)
  {
    goto LABEL_3327;
  }

  if (4 * v74 == 60)
  {
    v93 = v1971 + 1;
    v94 = (v12 + 143);
    v95 = 15;
    do
    {
      if (v94 + 1 > v12 + 158 || v94 > v94 + 1)
      {
        goto LABEL_3327;
      }

      v97 = *v94++;
      *v93++ = v97;
      --v95;
    }

    while (v95);
  }

  if (v74)
  {
    for (m = 1; m <= v74; ++m)
    {
      v98 = (v1971 + 4 * m);
      v99 = (v98 + 4);
      if (v98 < v1971 || v99 > &v1972 || v98 > v99)
      {
        goto LABEL_3327;
      }

      if (!*v98)
      {
        break;
      }
    }
  }

  else
  {
    m = 1;
  }

LABEL_161:
  v1964 = m;
  v108 = *(v11 + 73);
  if (v108 <= m)
  {
    v108 = m;
  }

  v1897 = v108;
  v109 = *a1;
  *(v11 + 79) = v90;
  *(v11 + 80) = v76;
  if (v109 == 2)
  {
    v1891 = v72;
    if (v72 == 5 || *a6 == 1)
    {
      v1870 = m;
      if (v73)
      {
        *v12 = 0;
        if (v12[176])
        {
          set_operating_state(8, v12[57], v12[177], (v12 + 140));
          v12 = v1961;
        }

        v110 = 0;
        do
        {
          v111 = 0;
          *&v112 = 0xAAAAAAAAAAAAAAAALL;
          *(&v112 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v1978 = v112;
          v1979 = v112;
          v1976 = v112;
          v1977 = v112;
          v1974 = v112;
          v1975 = v112;
          v1972 = v112;
          v1973 = v112;
          v1971[2] = v112;
          v1971[3] = v112;
          v1971[0] = v112;
          v1971[1] = v112;
          v113 = v11[42];
          v114 = v11[43];
          v115 = v11[44];
          do
          {
            v116 = v113 + v111;
            v117 = v113 + v111 + 24;
            if (v117 > v114 || v116 > v117 || v116 < v115)
            {
              goto LABEL_3327;
            }

            v120 = v1971 + v111;
            v121 = *(v116 + 8);
            *v120 = *v116 + 24 * v110;
            *(v120 + 8) = v121;
            v111 += 24;
          }

          while (v111 != 192);
          v1879 = *(v10 + 1);
          v1919 = *(v10 + 3);
          v1925 = *(v10 + 4);
          v1933 = *(v10 + 5);
          v1886 = *v10;
          if (*v10 != 8 && v1886 != 6 || v10[4] != 3)
          {
            break;
          }

          v1874 = v110;
          v122 = *(v12 + 7);
          if (v122 + 220 > v122 + 224)
          {
            goto LABEL_3327;
          }

          v123 = v122 + 192;
          if (v122 + 220 < v122 + 192)
          {
            goto LABEL_3327;
          }

          v124 = 0;
          v1901 = *v1961;
          v125 = v122 + 304;
          __n = *(v122 + 220);
          __len = v122 + 472;
          v126 = v1886 - 1;
          v127 = 4 * v1879;
          do
          {
            v128 = v126;
            v129 = (v123 + 4 * v124);
            v130 = (v129 + 1);
            if (v129 < v123 || v130 > v122 + 224 || v129 > v130)
            {
              goto LABEL_3327;
            }

            v133 = (v1919 + 24 * *v129);
            v134 = (v133 + 3) > v1925 || v133 > v133 + 3;
            if (v134 || v133 < v1933)
            {
              goto LABEL_3327;
            }

            v136 = v124 - 3;
            if (v124 < __n)
            {
              v137 = v124;
            }

            else
            {
              v137 = v124 + 1;
            }

            v138 = *(v122 + 184);
            if (v138 >= 1)
            {
              v139 = 0;
              v140 = *(v122 + 296);
              v141 = *v133;
              v142 = v133[1];
              v143 = v133[2];
              if (v136 >= 2)
              {
                v144 = 10;
              }

              else
              {
                v144 = 0;
              }

              if (v136 >= 2)
              {
                v145 = -10;
              }

              else
              {
                v145 = 0;
              }

              v146 = (v138 - v144) & ~((v138 - v144) >> 31);
              v147 = (v125 + 24 * v124);
              v150 = (v147 + 3) <= __len && v147 <= v147 + 3 && v147 >= v125;
              v151 = v1901;
              do
              {
                if (v139 >= v144)
                {
                  v152 = *(v122 + 240);
                  v153 = *(v122 + 248);
                  v154 = (*(v122 + 232) + (v139 << 8));
                  v172 = v145;
                }

                else
                {
                  if (!v150)
                  {
                    goto LABEL_3327;
                  }

                  v152 = v147[1];
                  v153 = v147[2];
                  v154 = (*v147 + 4 * v140);
                  if (v152 < v154 || v153 > v154)
                  {
                    goto LABEL_3327;
                  }

                  v156 = *(v122 + 240);
                  v157 = (*(v122 + 232) + (v139 << 8));
                  v158 = v152 - v154 < 0x100 || v157 > v156;
                  if (v158 || *(v122 + 248) > v157)
                  {
                    goto LABEL_3327;
                  }

                  if (v156 - v157 < 0x100)
                  {
                    goto LABEL_3327;
                  }

                  v160 = *v154;
                  v161 = v154[1];
                  v162 = v154[3];
                  v157[2] = v154[2];
                  v157[3] = v162;
                  *v157 = v160;
                  v157[1] = v161;
                  v163 = v154[4];
                  v164 = v154[5];
                  v165 = v154[7];
                  v157[6] = v154[6];
                  v157[7] = v165;
                  v157[4] = v163;
                  v157[5] = v164;
                  v166 = v154[8];
                  v167 = v154[9];
                  v168 = v154[11];
                  v157[10] = v154[10];
                  v157[11] = v168;
                  v157[8] = v166;
                  v157[9] = v167;
                  v169 = v154[12];
                  v170 = v154[13];
                  v171 = v154[15];
                  v157[14] = v154[14];
                  v157[15] = v171;
                  v157[12] = v169;
                  v157[13] = v170;
                  if (v157 >= v157 + 16)
                  {
                    goto LABEL_3327;
                  }

                  v140 += 64;
                  if (v140 == 640)
                  {
                    v140 = 0;
                  }

                  v172 = v146;
                }

                v173 = 0;
                v174 = (v141 + v127 * ((v172 + v151) << 6));
                do
                {
                  v176 = (v174 + 1) <= v142 && v174 <= v174 + 1 && v174 >= v143;
                  v177 = (v154 + v173);
                  v178 = v154 + v173 + 4;
                  if (!v176 || v178 > v152 || v177 > v178 || v177 < v153)
                  {
                    goto LABEL_3327;
                  }

                  *v177 = *v174 * 0.0625;
                  v173 += 4;
                  v174 = (v174 + v127);
                }

                while (v173 != 256);
                ++v139;
                ++v151;
              }

              while (v139 < *(v122 + 184));
            }

            v182 = v124 + 1;
            v183 = (v122 + 8 * (v124 + 1));
            if (v183 < v122)
            {
              goto LABEL_3327;
            }

            if ((v183 + 1) > v122 + 64)
            {
              goto LABEL_3327;
            }

            if (v183 > v183 + 1)
            {
              goto LABEL_3327;
            }

            v184 = v1971 + 24 * v137;
            if (v184 + 24 > v1980 || v184 > v184 + 24 || v184 < v1971)
            {
              goto LABEL_3327;
            }

            v185 = *v183;
            v186 = *(v184 + 2);
            *v1981 = *v184;
            *&v1981[16] = v186;
            v1969 = *(v122 + 232);
            v1970 = *(v122 + 248);
            DLB_CLqmf_analysisL_bidi_indexable(v185, v1981, &v1969);
            if (v136 <= 1)
            {
              v187 = v125 + 24 * v124;
              if (v187 < v125)
              {
                goto LABEL_3327;
              }

              if (v187 + 24 > __len)
              {
                goto LABEL_3327;
              }

              if (v187 > v187 + 24)
              {
                goto LABEL_3327;
              }

              v188 = *v184;
              v189 = *(v184 + 1);
              if (*v184 > v189)
              {
                goto LABEL_3327;
              }

              if (*(v184 + 2) > v188)
              {
                goto LABEL_3327;
              }

              v190 = *(v122 + 184);
              if (0xAAAAAAAAAAAAAAABLL * ((v189 - v188) >> 3) < v190)
              {
                goto LABEL_3327;
              }

              *v1981 = *v187;
              *&v1981[16] = *(v187 + 16);
              ddp_udc_int_ph90_qmf_process(v1981, v188, v190, 0);
            }

            ++v124;
            v126 = v128;
          }

          while (v182 != v128);
          v191 = *(v122 + 184);
          if (v191 <= 9)
          {
            v192 = *(v122 + 296) + (v191 << 6);
            if (v192 > 0x27F)
            {
              v192 -= 640;
            }

            *(v122 + 296) = v192;
          }

          if (*(v122 + 472) != v1886)
          {
            v193 = (v122 + 472);
            if (v128 <= 6)
            {
              v194 = v128 + 1;
              v195 = 8 * v128;
              v196 = 24 * v126;
              do
              {
                v197 = (v122 + v196 + 304);
                v198 = v122 + v196 + 328;
                if (v197 < v122 + 304 || v198 > v193 || v197 > v198)
                {
                  goto LABEL_3327;
                }

                v201 = *v197;
                v202 = *(v122 + v196 + 312);
                if (*v197 > v202)
                {
                  goto LABEL_3327;
                }

                if (v202 - v201 < 0xA00 || *(v122 + v196 + 320) > v201)
                {
                  goto LABEL_3327;
                }

                bzero(v201, 0xA00uLL);
                if (v201 >= v201 + 2560)
                {
                  goto LABEL_3327;
                }

                v204 = v122 + v195 + 8;
                if (v204 < v122)
                {
                  goto LABEL_3327;
                }

                v205 = v122 + v195 + 16;
                if (v205 > v122 + 64 || v204 > v205)
                {
                  goto LABEL_3327;
                }

                DLB_qmf_analysisL_init(*(v122 + 8 * v194));
                v195 += 8;
                v196 += 24;
                v25 = v194++ == 7;
              }

              while (!v25);
            }

            *v193 = v1886;
          }

          v206 = (v1919 + 24 * __n);
          if ((v206 + 3) > v1925 || v206 > v206 + 3 || v206 < v1933)
          {
            goto LABEL_3327;
          }

          if (*(v122 + 184) >= 1)
          {
            v207 = 0;
            v208 = *(v122 + 188) << 6;
            v209 = v208 + *(v122 + 260) - 640;
            if (v209 >= v208)
            {
              v210 = *(v122 + 188) << 6;
            }

            else
            {
              v210 = 0;
            }

            v211 = v209 - v210;
            v213 = v206[1];
            v212 = v206[2];
            v214 = (*v206 + 4 * v1879 * (v1901 << 6));
            do
            {
              v215 = *(v122 + 272);
              v216 = (*(v122 + 264) + 4 * v211);
              if (v216 > v215)
              {
                goto LABEL_3327;
              }

              v217 = *(v122 + 240);
              v218 = (*(v122 + 232) + (v207 << 8));
              v219 = v215 - v216 < 0x100 || *(v122 + 280) > v216;
              v220 = v219 || v218 > v217;
              if (v220 || *(v122 + 248) > v218)
              {
                goto LABEL_3327;
              }

              if (v217 - v218 < 0x100)
              {
                goto LABEL_3327;
              }

              v222 = *v216;
              v223 = v216[1];
              v224 = v216[3];
              v218[2] = v216[2];
              v218[3] = v224;
              *v218 = v222;
              v218[1] = v223;
              v225 = v216[4];
              v226 = v216[5];
              v227 = v216[7];
              v218[6] = v216[6];
              v218[7] = v227;
              v218[4] = v225;
              v218[5] = v226;
              v228 = v216[8];
              v229 = v216[9];
              v230 = v216[11];
              v218[10] = v216[10];
              v218[11] = v230;
              v218[8] = v228;
              v218[9] = v229;
              v231 = v216[12];
              v232 = v216[13];
              v233 = v216[15];
              v218[14] = v216[14];
              v218[15] = v233;
              v218[12] = v231;
              v218[13] = v232;
              if (v218 >= v218 + 16)
              {
                goto LABEL_3327;
              }

              for (n = 0; n != 64; ++n)
              {
                if ((v214 + 1) > v213 || v214 > v214 + 1 || v214 < v212)
                {
                  goto LABEL_3327;
                }

                v237 = *(v122 + 260);
                v238 = (*(v122 + 264) + 4 * (n + v237));
                v239 = (v238 + 1) > *(v122 + 272) || v238 > v238 + 1;
                if (v239 || v238 < *(v122 + 280))
                {
                  goto LABEL_3327;
                }

                *v238 = *v214 * 0.0625;
                v214 = (v214 + v127);
              }

              v241 = v237 + 64;
              if (v237 + 64 >= v208)
              {
                v242 = v208;
              }

              else
              {
                v242 = 0;
              }

              *(v122 + 260) = v241 - v242;
              v243 = v211 + 64;
              if (v243 >= v208)
              {
                v244 = v208;
              }

              else
              {
                v244 = 0;
              }

              v211 = v243 - v244;
              ++v207;
            }

            while (v207 < *(v122 + 184));
          }

          v245 = v1971 + 24 * __n;
          if (v245 + 24 > v1980 || v245 > v245 + 24 || v245 < v1971)
          {
            goto LABEL_3327;
          }

          v246 = *v122;
          v247 = *(v245 + 2);
          *v1981 = *v245;
          *&v1981[16] = v247;
          v1969 = *(v122 + 232);
          v1970 = *(v122 + 248);
          DLB_CLqmf_analysisL_bidi_indexable(v246, v1981, &v1969);
          v12 = v1961;
          *v1961 += v1961[2];
          v110 = v1874 + 4;
          v11 = v1854;
          v10 = a4;
        }

        while (v1874 + 4 < 4 * a7);
        v12[176] = 0;
      }

      else
      {
        v248 = *v10;
        v249 = v11[42];
        __na = v11[43];
        __lena = v11[44];
        if ((*v10 == 8 || v248 == 6) && v248 >= 4 && *(v12 + 13))
        {
          v250 = 0;
          v251 = (4 * a7);
          v252 = (v248 - 1);
          do
          {
            while (1)
            {
              v253 = v250 + 1;
              if (a7 >= 1)
              {
                break;
              }

              ++v250;
              if (v253 == v252)
              {
                goto LABEL_3032;
              }
            }

            v254 = 0;
            if (v250 >= 3)
            {
              LODWORD(v250) = v250 + 1;
            }

            v255 = &v249[3 * v250];
            v258 = (v255 + 3) <= __na && v255 <= v255 + 3 && v255 >= __lena;
            v259 = (4 * a7);
            do
            {
              if (!v258)
              {
                goto LABEL_3327;
              }

              v260 = *v255 + v254;
              v261 = v260 + 24 > v255[1] || v260 > v260 + 24;
              if (v261 || v260 < v255[2])
              {
                goto LABEL_3327;
              }

              v263 = (*(v12 + 13) + 24 * v253);
              v264 = (v263 + 3) > *(v12 + 14) || v263 > v263 + 3;
              if (v264 || v263 < *(v12 + 15))
              {
                goto LABEL_3327;
              }

              v266 = *v263;
              v267 = v263[1];
              v268 = v263[2];
              v269 = *v263 + v254;
              v270 = v269 + 24 > v267 || v269 > v269 + 24;
              if (v270 || v269 < v268)
              {
                goto LABEL_3327;
              }

              v272 = *v269;
              v273 = *(v269 + 8);
              if (*v269 > v273)
              {
                goto LABEL_3327;
              }

              v275 = *v260;
              v274 = *(v260 + 8);
              v276 = *(v260 + 16);
              v277 = *(v266 + v254 + 16);
              v278 = v273 - v272 < 0x200 || v277 > v272;
              v279 = v278 || v275 > v274;
              if (v279 || v276 > v275)
              {
                goto LABEL_3327;
              }

              if (v274 - v275 < 0x200)
              {
                goto LABEL_3327;
              }

              memcpy(v275, v272, 0x200uLL);
              if (v275 >= v275 + 512)
              {
                goto LABEL_3327;
              }

              v254 += 24;
              --v259;
              v12 = v1961;
            }

            while (v259);
            v250 = v253;
          }

          while (v253 != v252);
          v1726 = 0;
          v1727 = (v249 + 9);
          v1730 = (v249 + 12) <= __na && v1727 <= (v249 + 12) && v1727 >= __lena;
          do
          {
            if (!v1730)
            {
              goto LABEL_3327;
            }

            v1731 = v249[9] + v1726;
            v1732 = v1731 + 24 > v249[10] || v1731 > v1731 + 24;
            if (v1732 || v1731 < v249[11])
            {
              goto LABEL_3327;
            }

            v1734 = *(v12 + 13);
            v1735 = (v1734 + 3) > *(v12 + 14) || v1734 > v1734 + 3;
            if (v1735 || v1734 < *(v12 + 15))
            {
              goto LABEL_3327;
            }

            v1737 = *v1734;
            v1738 = v1734[1];
            v1739 = v1734[2];
            v1740 = *v1734 + v1726;
            v1741 = v1740 + 24 > v1738 || v1740 > v1740 + 24;
            if (v1741 || v1740 < v1739)
            {
              goto LABEL_3327;
            }

            v1743 = *v1740;
            v1744 = *(v1740 + 8);
            if (*v1740 > v1744)
            {
              goto LABEL_3327;
            }

            v1746 = *v1731;
            v1745 = *(v1731 + 8);
            v1747 = *(v1731 + 16);
            v1748 = *(v1737 + v1726 + 16);
            v1749 = v1744 - v1743 < 0x200 || v1748 > v1743;
            v1750 = v1749 || v1746 > v1745;
            if (v1750 || v1747 > v1746)
            {
              goto LABEL_3327;
            }

            if (v1745 - v1746 < 0x200)
            {
              goto LABEL_3327;
            }

            memcpy(v1746, v1743, 0x200uLL);
            if (v1746 >= v1746 + 512)
            {
              goto LABEL_3327;
            }

            v1726 += 24;
            --v251;
            v12 = v1961;
          }

          while (v251);
        }
      }

LABEL_3032:
      v72 = v1891;
      v1752 = a7;
      v10 = a4;
      m = v1870;
      if (v1891 == 5)
      {
        v1753 = *a4;
        if (v1753)
        {
          v1754 = 0;
          if (4 * a7 <= 1)
          {
            v1755 = 1;
          }

          else
          {
            v1755 = 4 * a7;
          }

          v1756 = 24 * v1755;
          do
          {
            if (v1752 >= 1)
            {
              v1757 = 0;
              do
              {
                v1758 = (v1854[42] + 24 * v1754);
                if ((v1758 + 3) > v1854[43] || v1758 > v1758 + 3 || v1758 < v1854[44])
                {
                  goto LABEL_3327;
                }

                v1761 = *v1758;
                v1762 = v1758[1];
                v1763 = v1758[2];
                v1764 = v1761 + v1757;
                v1765 = v1761 + v1757 + 24;
                v1766 = v1765 > v1762 || v1764 > v1765;
                if (v1766 || v1764 < v1763)
                {
                  goto LABEL_3327;
                }

                v1768 = *v1764;
                v1769 = *(v1764 + 8);
                if (v1768 > v1769)
                {
                  goto LABEL_3327;
                }

                v1770 = *(v1761 + v1757 + 16);
                if (v1769 - v1768 < 0x200 || v1770 > v1768)
                {
                  goto LABEL_3327;
                }

                v1768[30] = 0uLL;
                v1768[31] = 0uLL;
                v1768[28] = 0uLL;
                v1768[29] = 0uLL;
                v1768[26] = 0uLL;
                v1768[27] = 0uLL;
                v1768[24] = 0uLL;
                v1768[25] = 0uLL;
                v1768[22] = 0uLL;
                v1768[23] = 0uLL;
                v1768[20] = 0uLL;
                v1768[21] = 0uLL;
                v1768[18] = 0uLL;
                v1768[19] = 0uLL;
                v1768[16] = 0uLL;
                v1768[17] = 0uLL;
                v1768[14] = 0uLL;
                v1768[15] = 0uLL;
                v1768[12] = 0uLL;
                v1768[13] = 0uLL;
                v1768[10] = 0uLL;
                v1768[11] = 0uLL;
                v1768[8] = 0uLL;
                v1768[9] = 0uLL;
                v1768[6] = 0uLL;
                v1768[7] = 0uLL;
                v1768[4] = 0uLL;
                v1768[5] = 0uLL;
                v1768[2] = 0uLL;
                v1768[3] = 0uLL;
                *v1768 = 0uLL;
                v1768[1] = 0uLL;
                if (v1768 >= v1768 + 32)
                {
                  goto LABEL_3327;
                }

                v1757 += 24;
              }

              while (v1756 != v1757);
              v1753 = *a4;
              v1752 = a7;
              v72 = 5;
            }

            ++v1754;
          }

          while (v1754 < v1753);
        }
      }

      v11 = v1854;
      if (!*a6)
      {
LABEL_3066:
        if (v12[142] == 3 && m != 0)
        {
          v1773 = 0;
          if (4 * a7 <= 1)
          {
            v1774 = 1;
          }

          else
          {
            v1774 = 4 * a7;
          }

          v1775 = 24 * v1774;
          do
          {
            if (a7 >= 1)
            {
              v1776 = 0;
              do
              {
                v1777 = (v11[42] + 24 * v1773);
                if ((v1777 + 3) > v11[43] || v1777 > v1777 + 3 || v1777 < v11[44])
                {
                  goto LABEL_3327;
                }

                v1780 = *v1777;
                v1781 = v1777[1];
                v1782 = v1777[2];
                v1783 = v1780 + v1776;
                v1784 = v1780 + v1776 + 24;
                v1785 = v1784 > v1781 || v1783 > v1784;
                if (v1785 || v1783 < v1782)
                {
                  goto LABEL_3327;
                }

                v1787 = *v1783;
                v1788 = *(v1783 + 8);
                if (v1787 > v1788)
                {
                  goto LABEL_3327;
                }

                v1789 = *(v1780 + v1776 + 16);
                if (v1788 - v1787 < 0x200 || v1789 > v1787)
                {
                  goto LABEL_3327;
                }

                v1787[30] = 0uLL;
                v1787[31] = 0uLL;
                v1787[28] = 0uLL;
                v1787[29] = 0uLL;
                v1787[26] = 0uLL;
                v1787[27] = 0uLL;
                v1787[24] = 0uLL;
                v1787[25] = 0uLL;
                v1787[22] = 0uLL;
                v1787[23] = 0uLL;
                v1787[20] = 0uLL;
                v1787[21] = 0uLL;
                v1787[18] = 0uLL;
                v1787[19] = 0uLL;
                v1787[16] = 0uLL;
                v1787[17] = 0uLL;
                v1787[14] = 0uLL;
                v1787[15] = 0uLL;
                v1787[12] = 0uLL;
                v1787[13] = 0uLL;
                v1787[10] = 0uLL;
                v1787[11] = 0uLL;
                v1787[8] = 0uLL;
                v1787[9] = 0uLL;
                v1787[6] = 0uLL;
                v1787[7] = 0uLL;
                v1787[4] = 0uLL;
                v1787[5] = 0uLL;
                v1787[2] = 0uLL;
                v1787[3] = 0uLL;
                *v1787 = 0uLL;
                v1787[1] = 0uLL;
                if (v1787 >= v1787 + 32)
                {
                  goto LABEL_3327;
                }

                v1776 += 24;
              }

              while (v1775 != v1776);
            }

            ++v1773;
          }

          while (v1773 != m);
          v72 = v1891;
        }
      }
    }

    else if (!*a6)
    {
      goto LABEL_3066;
    }
  }

LABEL_1843:
  v1098 = v11 + 63;
  v1896 = v72;
  v1932 = v11 + 63;
  if (a3 && !*a6)
  {
    v1105 = a3[10];
    v1106 = a3[11];
    if (v1105 > v1106)
    {
      goto LABEL_3327;
    }

    if (a3[12] > v1105)
    {
      goto LABEL_3327;
    }

    v1107 = a3[9];
    if (v1107 > v1106 - v1105)
    {
      goto LABEL_3327;
    }

    if (!v1105)
    {
      goto LABEL_1862;
    }

    *&v1974 = 0xAAAAAAAAAAAAAAAALL;
    *&v1108 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1108 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v1972 = v1108;
    v1973 = v1108;
    v1971[2] = v1108;
    v1971[3] = v1108;
    v1971[0] = v1108;
    v1971[1] = v1108;
    *&v1981[32] = 0xAAAAAAAAAAAAAAAALL;
    *v1981 = v1105;
    *&v1981[8] = v1105 + v1107;
    *&v1981[16] = v1105;
    if (v1107 < (8 * v1107) >> 3)
    {
      goto LABEL_3327;
    }

    *&v1981[24] = v1105;
    *&v1981[32] = 0;
    *&v1981[40] = 8 * v1107;
    v1109 = ddp_udc_int_dlb_bitbuf_read(v1981, 2);
    if (v1109 == 3)
    {
      v1109 = ddp_udc_int_dlb_bitbuf_read(v1981, 3) + 3;
    }

    v1110 = ddp_udc_int_dlb_bitbuf_read(v1981, 5);
    if (v1110 == 31)
    {
      v1110 = ddp_udc_int_dlb_bitbuf_read(v1981, 7) + 31;
    }

    if (v1109)
    {
LABEL_1862:
      v1111 = 1;
LABEL_1863:
      *a10 = v1111;
      goto LABEL_1869;
    }

    *&v1974 = 0;
    v1972 = 0u;
    v1973 = 0u;
    memset(v1971, 0, sizeof(v1971));
    if (ddp_udc_int_dlb_bitbuf_read(v1981, 1))
    {
      LODWORD(v1974) = v1110 + 1;
      LODWORD(v1971[0]) = ddp_udc_int_dlb_bitbuf_read(v1981, 1);
      if (!LODWORD(v1971[0]))
      {
        goto LABEL_3269;
      }

      *&v1971[1] |= 8uLL;
      goto LABEL_3263;
    }

    v1724 = ddp_udc_int_dlb_bitbuf_read(v1981, 4);
    if ((v1724 & 1) == 0)
    {
LABEL_3250:
      if ((v1724 & 2) != 0)
      {
        v1797 = ddp_udc_int_dlb_bitbuf_read(v1981, 3);
        HIDWORD(v1973) = v1797;
        if (v1797 <= 5)
        {
          DWORD2(v1973) = dword_19B2FFF50[v1797];
        }
      }

      v11 = v1854;
      v1098 = v1932;
      if ((v1724 & 4) != 0)
      {
        v1798 = ddp_udc_int_dlb_bitbuf_read(v1981, 5);
        LODWORD(v1974) = v1798;
        if (v1798 == 31)
        {
          v1799 = ddp_udc_int_dlb_bitbuf_read(v1981, 7);
          v1798 = v1974 + v1799;
        }

        LODWORD(v1974) = v1798 + 1;
      }

      if ((v1724 & 8) != 0)
      {
        v1800 = 8 * ddp_udc_int_dlb_bitbuf_read(v1981, 4) + 8;
        if (v1800 < 0x21)
        {
          if (!v1800)
          {
            goto LABEL_3263;
          }
        }

        else
        {
          do
          {
            ddp_udc_int_dlb_bitbuf_read_long(v1981, 0x20u);
            v1800 -= 32;
          }

          while (v1800 > 0x20);
        }

        ddp_udc_int_dlb_bitbuf_read_long(v1981, v1800);
      }

LABEL_3263:
      if (LODWORD(v1971[0]) && v1110 + 1 != m)
      {
        v1111 = 2;
        v10 = a4;
        goto LABEL_1863;
      }

      if (LODWORD(v1971[0]))
      {
        v1801 = ((LODWORD(v1971[1]) >> 1) & 1) + (v1971[1] & 1);
        v1802 = (LODWORD(v1971[1]) >> 2) & 1;
        *a10 = 0;
        v1100 = (v1801 + v1802);
        v10 = a4;
        if (!(v1801 + v1802))
        {
          goto LABEL_1869;
        }

        goto LABEL_3271;
      }

LABEL_3269:
      v10 = a4;
      if (v1110 != m - 2)
      {
        v1111 = 2;
        goto LABEL_1863;
      }

      *a10 = 0;
      v1100 = 0xFFFFFFFFLL;
LABEL_3271:
      if (*a1 == 1)
      {
        if (!*a6)
        {
          goto LABEL_1865;
        }

        if (v1100 == -1)
        {
          v1101 = *(v11 + 73) + 1;
        }

        else
        {
LABEL_1848:
          v1101 = *(v11 + 73);
        }

        LODWORD(v1971[0]) = v1101;
        if (v11 > v1098)
        {
          goto LABEL_3327;
        }

        v1102 = v11 + 51;
        if (v11 + 51 > v11 + 57)
        {
          goto LABEL_3327;
        }

        v1103 = a7 << 8;
        v1104 = v1971;
LABEL_1868:
        reorder_joc_pcm_output(v1100, v1102, v1103, v1104);
      }

      else
      {
        v1803 = v11[42];
        v1804 = v11[43];
        v1805 = v11[44];
        v1806 = m - 1;
        if (v1100 == -1)
        {
          v1807 = v1806;
        }

        else
        {
          v1807 = v1100;
        }

        if (v1807 >= 1 && v1807 < m)
        {
          v1809 = v1803 + 24;
          if (v1803 + 24 > v1804 || v1803 > v1809 || v1803 < v1805)
          {
            goto LABEL_3327;
          }

          v1810 = *v1803;
          v1811 = *(v1803 + 16);
          v1812 = v1807;
          do
          {
            if (v1809 + 24 > v1804 || v1809 > v1809 + 24 || v1809 < v1805)
            {
              goto LABEL_3327;
            }

            *(v1809 - 24) = *v1809;
            *(v1809 - 8) = *(v1809 + 16);
            v1809 += 24;
            --v1812;
          }

          while (v1812);
          v1815 = v1803 + 24 * v1807;
          if (v1815 + 24 > v1804 || v1815 > v1815 + 24 || v1815 < v1805)
          {
            goto LABEL_3327;
          }

          *v1815 = v1810;
          *(v1815 + 16) = v1811;
        }

        if (v1100 == -1)
        {
          v1818 = (v1803 + 24 * v1806);
          if ((v1818 + 3) > v1804 || v1818 > v1818 + 3 || v1818 < v1805)
          {
            goto LABEL_3327;
          }

          for (ii = 0; ii != 576; ii += 24)
          {
            v1820 = *v1818 + ii;
            if (v1820 + 24 > v1818[1] || v1820 > v1820 + 24 || v1820 < v1818[2])
            {
              goto LABEL_3327;
            }

            v1823 = *v1820;
            v1824 = *(v1820 + 8);
            if (v1823 > v1824)
            {
              goto LABEL_3327;
            }

            if (v1824 - v1823 >= 0x200 && *(*v1818 + ii + 16) <= v1823)
            {
              v1823[30] = 0uLL;
              v1823[31] = 0uLL;
              v1823[28] = 0uLL;
              v1823[29] = 0uLL;
              v1823[26] = 0uLL;
              v1823[27] = 0uLL;
              v1823[24] = 0uLL;
              v1823[25] = 0uLL;
              v1823[22] = 0uLL;
              v1823[23] = 0uLL;
              v1823[20] = 0uLL;
              v1823[21] = 0uLL;
              v1823[18] = 0uLL;
              v1823[19] = 0uLL;
              v1823[16] = 0uLL;
              v1823[17] = 0uLL;
              v1823[14] = 0uLL;
              v1823[15] = 0uLL;
              v1823[12] = 0uLL;
              v1823[13] = 0uLL;
              v1823[10] = 0uLL;
              v1823[11] = 0uLL;
              v1823[8] = 0uLL;
              v1823[9] = 0uLL;
              v1823[6] = 0uLL;
              v1823[7] = 0uLL;
              v1823[4] = 0uLL;
              v1823[5] = 0uLL;
              v1823[2] = 0uLL;
              v1823[3] = 0uLL;
              *v1823 = 0uLL;
              v1823[1] = 0uLL;
              if (v1823 < v1823 + 32)
              {
                continue;
              }
            }

            goto LABEL_3327;
          }

          v1964 = m - 1;
        }
      }

LABEL_1869:
      v1099 = *a1;
      if (*a1 != 1)
      {
        goto LABEL_2161;
      }

      v1112 = *v10;
      v1113 = *(v10 + 1);
      v1114 = *(v10 + 3);
      v1115 = *(v10 + 4);
      v1116 = *(v10 + 5);
      v1117 = *(a1 + 2);
      v1118 = *(a1 + 3);
      v1119 = v11;
      v1120 = *(a1 + 4);
      v1121 = *(v1119 + 102);
      v1122 = v1119[52];
      v1123 = v72;
      v1124 = v1119[55];
      v1962 = v1119[54];
      v1125 = v1119[56];
      if (v1123 > 3)
      {
        if (v1123 != 4)
        {
          if (v1123 == 5)
          {
            v11 = v1854;
            if (!v1112)
            {
              goto LABEL_2563;
            }

            v1269 = 0;
            v1270 = 4 * v1122;
            do
            {
              v1271 = v1962 + 24 * v1269;
              if (v1271 + 24 > v1124 || v1271 > v1271 + 24 || v1271 < v1125)
              {
                goto LABEL_3327;
              }

              v1274 = *v1271;
              v1275 = *(v1271 + 8);
              v1276 = 1536;
              v1277 = *(v1271 + 16);
              do
              {
                if ((v1274 + 1) > v1275 || v1274 > v1274 + 1 || v1274 < v1277)
                {
                  goto LABEL_3327;
                }

                *v1274 = 0;
                v1274 = (v1274 + v1270);
                --v1276;
              }

              while (v1276);
              ++v1269;
            }

            while (v1269 != v1112);
          }

          else
          {
            v1908 = v1116;
            v1913 = v1115;
            v1917 = v1114;
            v1924 = v1112;
            v1939 = (a7 << 8);
            if (v1122 == 1)
            {
              v1167 = v1962 + 24;
              if (v1962 + 24 > v1124 || v1962 > v1167 || v1962 < v1125)
              {
                goto LABEL_3327;
              }

              if (v1121 >= 2)
              {
                v1168 = *v1962;
                v1169 = *(v1962 + 8);
                v1170 = v1121 - 1;
                v1171 = a7 << 8;
                do
                {
                  if (v1167 + 24 > v1124 || v1167 > v1167 + 24 || v1167 < v1125)
                  {
                    goto LABEL_3327;
                  }

                  *v1167 = v1168 + 4 * v1171;
                  *(v1167 + 8) = v1169;
                  v1171 += v1939;
                  v1167 += 24;
                  --v1170;
                }

                while (v1170);
              }
            }

            v1174 = v1114;
            v1176 = v1116;
            v1175 = v1115;
            if (v1112)
            {
              v1177 = 0;
              v1878 = (1536 - v1939);
              v1885 = v1124;
              __leng = 4 * v1878;
              __ni = 4 * (a7 << 8);
              if (v1939 <= 1)
              {
                v1178 = 1;
              }

              else
              {
                v1178 = a7 << 8;
              }

              v1873 = v1178;
              v1179 = 4 * v1122;
              v1890 = v1125;
              do
              {
                v1180 = (v1174 + 24 * v1177);
                if ((v1180 + 3) > v1175 || v1180 > v1180 + 3 || v1180 < v1176)
                {
                  goto LABEL_3327;
                }

                v1183 = v1962 + 24 * v1177;
                v1184 = v1183 + 24 > v1124 || v1183 > v1183 + 24;
                if (v1184 || v1183 < v1125)
                {
                  goto LABEL_3327;
                }

                v1186 = *v1180;
                v1187 = v1180[1];
                v1188 = v1117 + 319;
                v1189 = v1180[2];
                if (a7)
                {
                  v1191 = *(v1183 + 8);
                  v1190 = *(v1183 + 16);
                  v1192 = v1873;
                  v1193 = *v1183;
                  do
                  {
                    v1194 = v1188 + 1;
                    v1196 = (v1188 + 1) <= v1118 && v1188 <= v1194 && v1188 >= v1120;
                    v1197 = v1193 + 1;
                    if (!v1196 || v1197 > v1191 || v1193 > v1197 || v1193 < v1190)
                    {
                      goto LABEL_3327;
                    }

                    *v1193 = *v1188;
                    v1193 = (v1193 + v1179);
                    ++v1188;
                    --v1192;
                  }

                  while (v1192);
                }

                else
                {
                  v1194 = v1188;
                }

                v1201 = &v1194[-(v1939 + 319)];
                v1202 = (v1201 + 4 * v1939);
                if (v1202 > v1118)
                {
                  goto LABEL_3327;
                }

                if (v1120 > v1202)
                {
                  goto LABEL_3327;
                }

                if (v1118 < v1201)
                {
                  goto LABEL_3327;
                }

                if (__leng > v1118 - v1202)
                {
                  goto LABEL_3327;
                }

                if (v1120 > v1201)
                {
                  goto LABEL_3327;
                }

                if (__leng > v1118 - v1201)
                {
                  goto LABEL_3327;
                }

                v1203 = v1177;
                v1204 = v1186;
                memmove(&v1194[-(v1939 + 319)], v1202, __leng);
                if (v1201 > v1201 + __leng)
                {
                  goto LABEL_3327;
                }

                v1205 = v1204;
                v18 = v1187 >= v1204;
                v1206 = v1187 - v1204;
                v1207 = v1203;
                v1124 = v1885;
                v1125 = v1890;
                if (!v18)
                {
                  goto LABEL_3327;
                }

                if (v1189 > v1205)
                {
                  goto LABEL_3327;
                }

                if (__ni > v1206)
                {
                  goto LABEL_3327;
                }

                v1208 = v1201 + 4 * v1878;
                if (v1208 > v1118)
                {
                  goto LABEL_3327;
                }

                if (v1120 > v1208)
                {
                  goto LABEL_3327;
                }

                if (__ni > v1118 - v1208)
                {
                  goto LABEL_3327;
                }

                memcpy((v1201 + 4 * v1878), v1205, __ni);
                if (v1208 > v1208 + __ni)
                {
                  goto LABEL_3327;
                }

                v1117 = (v1201 + 6144);
                v1177 = v1207 + 1;
                v1174 = v1917;
                v1176 = v1908;
                v1175 = v1913;
              }

              while (v1177 != v1924);
            }
          }

LABEL_2160:
          v1099 = *a1;
          v11 = v1854;
          v72 = v1896;
          goto LABEL_2161;
        }

        v1209 = v1854;
        if (v1112)
        {
          v1242 = 0;
          v1243 = 4 * v1122;
          v1244 = 4 * v1113;
          do
          {
            v1245 = v1962 + 24 * v1242;
            if (v1245 + 24 > v1124 || v1245 > v1245 + 24 || v1245 < v1125)
            {
              goto LABEL_3327;
            }

            v1249 = *v1245;
            v1248 = *(v1245 + 8);
            v1250 = *(v1245 + 16);
            v1251 = &v1249[v1243 / 4];
            v1252 = 1217;
            do
            {
              v1253 = v1251;
              if ((v1249 + 1) > v1248 || v1249 > v1249 + 1 || v1249 < v1250)
              {
                goto LABEL_3327;
              }

              *v1249 = 0;
              v1249 = (v1249 + v1243);
              v1251 = (v1251 + v1243);
              --v1252;
            }

            while (v1252);
            v1256 = v1114 + 24 * v1242;
            if (v1256 + 24 > v1115 || v1256 > v1256 + 24 || v1256 < v1116)
            {
              goto LABEL_3327;
            }

            v1259 = *v1256;
            v1260 = *(v1256 + 8);
            v1261 = 319;
            v1262 = *(v1256 + 16);
            do
            {
              v1264 = (v1259 + 1) <= v1260 && v1259 <= v1259 + 1 && v1259 >= v1262;
              v1265 = v1253 + 1;
              if (!v1264 || v1265 > v1248 || v1253 > v1265 || v1253 < v1250)
              {
                goto LABEL_3327;
              }

              *v1253 = *v1259;
              v1259 = (v1259 + v1244);
              v1253 = (v1253 + v1243);
              --v1261;
            }

            while (v1261);
            ++v1242;
          }

          while (v1242 != v1112);
          goto LABEL_2160;
        }
      }

      else
      {
        if ((v1123 - 2) < 2)
        {
          if (v1112)
          {
            v1126 = 0;
            v1127 = v1122;
            v1128 = 4 * v1113;
            do
            {
              v1129 = v1962 + 24 * v1126;
              if (v1129 + 24 > v1124 || v1129 > v1129 + 24 || v1129 < v1125)
              {
                goto LABEL_3327;
              }

              v1132 = *v1129;
              v1133 = *(v1129 + 8);
              v1134 = *(v1129 + 16);
              v1135 = v1117 + 319;
              v1136 = &v1132[v1127];
              v1137 = 1217;
              do
              {
                v1138 = v1136;
                v1117 = v1135 + 1;
                v1140 = (v1135 + 1) <= v1118 && v1135 <= v1117 && v1135 >= v1120;
                v1141 = v1132 + 1;
                if (!v1140 || v1141 > v1133 || v1132 > v1141 || v1132 < v1134)
                {
                  goto LABEL_3327;
                }

                *v1132 = *v1135;
                v1132 = (v1132 + v1127 * 4);
                v1136 = &v1138[v1127];
                ++v1135;
                --v1137;
              }

              while (v1137);
              v1145 = v1114 + 24 * v1126;
              if (v1145 + 24 > v1115 || v1145 > v1145 + 24 || v1145 < v1116)
              {
                goto LABEL_3327;
              }

              v1148 = *v1145;
              v1149 = *(v1145 + 8);
              v1150 = 319;
              v1151 = *(v1145 + 16);
              do
              {
                v1153 = (v1148 + 1) <= v1149 && v1148 <= v1148 + 1 && v1148 >= v1151;
                v1154 = v1138 + 1;
                if (!v1153 || v1154 > v1133 || v1138 > v1154 || v1138 < v1134)
                {
                  goto LABEL_3327;
                }

                *v1138 = *v1148;
                v1148 = (v1148 + v1128);
                v1138 = (v1138 + v1127 * 4);
                --v1150;
              }

              while (v1150);
              ++v1126;
            }

            while (v1126 != v1112);
          }

          if (v1121 > v1112)
          {
            do
            {
              v1158 = v1962 + 24 * v1112;
              if (v1158 + 24 > v1124 || v1158 > v1158 + 24 || v1158 < v1125)
              {
                goto LABEL_3327;
              }

              v1161 = *v1158;
              v1162 = *(v1158 + 8);
              v1163 = 1536;
              v1164 = *(v1158 + 16);
              do
              {
                if ((v1161 + 1) > v1162 || v1161 > v1161 + 1 || v1161 < v1164)
                {
                  goto LABEL_3327;
                }

                *v1161 = 0;
                v1161 += v1122;
                --v1163;
              }

              while (v1163);
              ++v1112;
            }

            while (v1112 != v1121);
          }

          goto LABEL_2160;
        }

        if (v1123 == 1)
        {
          v1209 = v1854;
          if (v1112)
          {
            v1210 = 0;
            v1211 = v1122;
            v1212 = 4 * v1113;
            do
            {
              v1213 = v1962 + 24 * v1210;
              if (v1213 + 24 > v1124 || v1213 > v1213 + 24 || v1213 < v1125)
              {
                goto LABEL_3327;
              }

              v1217 = *v1213;
              v1216 = *(v1213 + 8);
              v1218 = *(v1213 + 16);
              v1219 = v1117 + 319;
              v1220 = &v1217[v1211];
              v1221 = 1217;
              do
              {
                v1222 = v1220;
                v1117 = v1219 + 1;
                v1224 = (v1219 + 1) <= v1118 && v1219 <= v1117 && v1219 >= v1120;
                v1225 = v1217 + 1;
                if (!v1224 || v1225 > v1216 || v1217 > v1225 || v1217 < v1218)
                {
                  goto LABEL_3327;
                }

                *v1217 = *v1219;
                v1217 = (v1217 + v1211 * 4);
                v1220 = &v1222[v1211];
                ++v1219;
                --v1221;
              }

              while (v1221);
              v1229 = v1114 + 24 * v1210;
              if (v1229 + 24 > v1115 || v1229 > v1229 + 24 || v1229 < v1116)
              {
                goto LABEL_3327;
              }

              v1232 = *v1229;
              v1233 = *(v1229 + 8);
              v1234 = 319;
              v1235 = *(v1229 + 16);
              do
              {
                v1237 = (v1232 + 1) <= v1233 && v1232 <= v1232 + 1 && v1232 >= v1235;
                v1238 = v1222 + 1;
                if (!v1237 || v1238 > v1216 || v1222 > v1238 || v1222 < v1218)
                {
                  goto LABEL_3327;
                }

                *v1222 = *v1232;
                v1232 = (v1232 + v1212);
                v1222 = (v1222 + v1211 * 4);
                --v1234;
              }

              while (v1234);
              ++v1210;
            }

            while (v1210 != v1112);
            goto LABEL_2160;
          }
        }

        else
        {
          v1209 = v1854;
        }
      }

LABEL_2167:
      v1280 = (v1209 + 18);
      if (v1122 == 1)
      {
        memset(v1971, 170, 24);
        if (a7 >= 1)
        {
          v1281 = 0;
          v1282 = v1971;
          do
          {
            v1283 = (v1854 + v1281);
            v1284 = v1854 + v1281 + 12;
            v1285 = v1284 > v1280 || v1283 > v1284;
            if (v1285 || v1284 < v1854 || (v1283 + 6) > v1280 || v1284 > (v1283 + 6))
            {
              goto LABEL_3327;
            }

            v1286 = *(v1283 + 2);
            if (*(v1854 + v1281 + 16) == *(v1283 + 2) && (v1287 = v1283[2], v1287 == *(v1854 + v1281 + 20)))
            {
              v1288 = (v1286 & 0x80000000) == 0 && (v1287 - COERCE_FLOAT(1065353216 - (v1286 << 23))) == 0.0 ? 2 : 257;
            }

            else
            {
              v1288 = 176;
            }

            if (v1282 < v1971 || v1282 + 1 > &v1971[1] + 2 || v1282 > v1282 + 1)
            {
              goto LABEL_3327;
            }

            *v1282++ = v1288;
            v1281 += 12;
          }

          while (12 * a7 != v1281);
        }

        if (!v1897)
        {
LABEL_2562:
          v11 = v1854;
          goto LABEL_2563;
        }

        v1444 = 0;
        while (a7 < 1)
        {
LABEL_2561:
          if (++v1444 == v1897)
          {
            goto LABEL_2562;
          }
        }

        v1445 = 0;
        v1446 = (v1962 + 24 * v1444);
        v1449 = (v1446 + 3) <= v1124 && v1446 <= v1446 + 3 && v1446 >= v1125;
        while (1)
        {
          v1450 = v1971 + v1445;
          v1451 = v1450 + 1;
          if (v1450 < v1971 || v1451 > &v1971[1] + 2 || v1450 > v1451)
          {
            goto LABEL_3327;
          }

          v1454 = *v1450;
          if (*v1450 != 2)
          {
            v1455 = v1854 + 3 * v1445;
            v1456 = (v1455 + 3);
            v1458 = v1455 < v1854 || v1456 > v1280 || v1455 > v1456;
            if (v1458 || !v1449)
            {
              goto LABEL_3327;
            }

            v1459 = *(v1455 + 2);
            v1460 = v1455[2];
            v1461 = v1454 & 0xFFFFFFFC;
            v1462 = v1446[1];
            v1463 = v1446[2];
            v1464 = (*v1446 + (v1445 << 10));
            if ((v1459 & 0x8000) == 0)
            {
              if (v1461)
              {
                while (1)
                {
                  v1465 = v1464 + 1;
                  v1466 = (v1464 + 1) > v1462 || v1464 > v1465;
                  if (v1466 || v1464 < v1463)
                  {
                    break;
                  }

                  v1468 = (v1460 * *v1464) * COERCE_FLOAT((v1459 << 23) + 1065353216);
                  if (v1468 < -1.0)
                  {
                    v1468 = -1.0;
                  }

                  *v1464++ = fminf(v1468, 1.0);
                  if (!--v1461)
                  {
                    goto LABEL_2513;
                  }
                }

LABEL_3327:
                __break(0x5519u);
              }

LABEL_2515:
              v1465 = (*v1446 + (v1445 << 10));
              if ((v1454 & 1) == 0)
              {
                goto LABEL_2516;
              }

              goto LABEL_2560;
            }

            if (!v1461)
            {
              goto LABEL_2515;
            }

            do
            {
              v1465 = v1464 + 1;
              if ((v1464 + 1) > v1462 || v1464 > v1465 || v1464 < v1463)
              {
                goto LABEL_3327;
              }

              *v1464 = (v1460 * *v1464) * COERCE_FLOAT((v1459 << 23) + 1065353216);
              ++v1464;
              --v1461;
            }

            while (v1461);
LABEL_2513:
            if ((v1454 & 1) == 0)
            {
LABEL_2516:
              if ((v1455 + 6) <= v1280 && v1456 <= (v1455 + 6))
              {
                v1471 = 0;
                v1472 = 0;
                v1473 = v1455[5];
                LODWORD(v1474) = (v1459 << 23) + 1065353216;
                LODWORD(v1475) = (*(v1455 + 8) << 23) + 1065353216;
                do
                {
                  v1476 = &v1465[v1472];
                  v1477 = &v1465[v1472 + 1];
                  if (v1477 > v1462 || v1476 > v1477 || v1476 < v1463)
                  {
                    goto LABEL_3327;
                  }

                  v1480 = (v1460 * *v1476) * v1474;
                  if (v1480 < -1.0)
                  {
                    v1480 = -1.0;
                  }

                  v1481 = (v1473 * *v1476) * v1475;
                  if (v1481 < -1.0)
                  {
                    v1481 = -1.0;
                  }

                  v1482 = &ddp_udc_int_crossfade_win_32[v1471 + 31];
                  v1483 = &ddp_udc_int_crossfade_win_32[v1471 + 32];
                  v1484 = v1482 < ddp_udc_int_crossfade_win_32 || v1483 > ddp_udc_int_gbl_full_chantab;
                  v1485 = v1484 || v1482 > v1483;
                  v1486 = &ddp_udc_int_crossfade_win_32[v1472];
                  v1487 = &ddp_udc_int_crossfade_win_32[v1472 + 1];
                  v1488 = !v1485 && v1486 >= ddp_udc_int_crossfade_win_32;
                  v1489 = !v1488 || v1487 > ddp_udc_int_gbl_full_chantab;
                  if (v1489 || v1486 > v1487)
                  {
                    goto LABEL_3327;
                  }

                  *v1476 = (fminf(v1480, 1.0) * *v1482) + (fminf(v1481, 1.0) * *&ddp_udc_int_crossfade_win_32[v1472++]);
                  --v1471;
                }

                while (v1472 != 32);
                v1491 = v1465 + 32;
                v1492 = 48;
                while (1)
                {
                  v1493 = (v1491 + 1) > v1462 || v1491 > v1491 + 1;
                  if (v1493 || v1491 < v1463)
                  {
                    break;
                  }

                  v1495 = (v1473 * *v1491) * v1475;
                  if (v1495 < -1.0)
                  {
                    v1495 = -1.0;
                  }

                  *v1491++ = fminf(v1495, 1.0);
                  if (!--v1492)
                  {
                    goto LABEL_2560;
                  }
                }
              }

              goto LABEL_3327;
            }
          }

LABEL_2560:
          if (++v1445 == a7)
          {
            goto LABEL_2561;
          }
        }
      }

      v11 = v1209;
      if (a7 < 1)
      {
        goto LABEL_2563;
      }

      v1389 = 0;
      v1390 = 0;
      v1391 = v1122 << 10;
      v1392 = 4 * v1122;
      while (1)
      {
        v1393 = v11 + 12 * v1390;
        if (v1393 + 12 > v1280 || v1393 > v1393 + 12)
        {
          goto LABEL_3327;
        }

        ++v1390;
        v1395 = v1854 + 3 * v1390;
        v1396 = (v1395 + 3);
        v1397 = v1395 < v1854 || v1396 > v1280;
        if (v1397 || v1395 > v1396)
        {
          goto LABEL_3327;
        }

        v1399 = *(v1393 + 4);
        v1400 = *(v1393 + 8);
        v1401 = *(v1395 + 2);
        v1402 = v1395[2];
        v1403 = v1400 == v1402 && v1399 == v1401;
        v1404 = !v1403;
        if (!v1403)
        {
          break;
        }

        if ((v1399 & 0x8000) != 0 || (v1400 - COERCE_FLOAT(1065353216 - (v1399 << 23))) != 0.0)
        {
          v1405 = 256;
LABEL_2383:
          if (v1897)
          {
            v1406 = 0;
            LODWORD(v1407) = (v1399 << 23) + 1065353216;
            LODWORD(v1408) = (v1401 << 23) + 1065353216;
            do
            {
              v1409 = (v1962 + 24 * v1406);
              if ((v1409 + 3) > v1124 || v1409 > v1409 + 3 || v1409 < v1125)
              {
                goto LABEL_3327;
              }

              v1413 = *v1409;
              v1412 = v1409[1];
              v1414 = v1409[2];
              v1415 = (v1413 + v1389);
              v1416 = v1405;
              if ((v1399 & 0x8000) != 0)
              {
                do
                {
                  if ((v1415 + 1) > v1412 || v1415 > v1415 + 1 || v1415 < v1414)
                  {
                    goto LABEL_3327;
                  }

                  *v1415 = (v1400 * *v1415) * v1407;
                  v1415 = (v1415 + v1392);
                  --v1416;
                }

                while (v1416);
              }

              else
              {
                do
                {
                  if ((v1415 + 1) > v1412 || v1415 > v1415 + 1 || v1415 < v1414)
                  {
                    goto LABEL_3327;
                  }

                  v1419 = (v1400 * *v1415) * v1407;
                  if (v1419 < -1.0)
                  {
                    v1419 = -1.0;
                  }

                  *v1415 = fminf(v1419, 1.0);
                  v1415 = (v1415 + v1392);
                  --v1416;
                }

                while (v1416);
              }

              if (v1404)
              {
                v1422 = 0;
                v1423 = 0;
                v1424 = &v1415[v1392 / 4];
                do
                {
                  v1425 = v1424;
                  if ((v1415 + 1) > v1412 || v1415 > v1415 + 1 || v1415 < v1414)
                  {
                    goto LABEL_3327;
                  }

                  v1428 = (v1400 * *v1415) * v1407;
                  if (v1428 < -1.0)
                  {
                    v1428 = -1.0;
                  }

                  v1429 = (v1402 * *v1415) * v1408;
                  if (v1429 < -1.0)
                  {
                    v1429 = -1.0;
                  }

                  v1430 = &ddp_udc_int_crossfade_win_32[v1422 + 31];
                  v1431 = &ddp_udc_int_crossfade_win_32[v1422 + 32];
                  v1432 = v1430 < ddp_udc_int_crossfade_win_32 || v1431 > ddp_udc_int_gbl_full_chantab;
                  v1433 = v1432 || v1430 > v1431;
                  v1434 = &ddp_udc_int_crossfade_win_32[v1423];
                  v1435 = &ddp_udc_int_crossfade_win_32[v1423 + 1];
                  v1436 = !v1433 && v1434 >= ddp_udc_int_crossfade_win_32;
                  v1437 = !v1436 || v1435 > ddp_udc_int_gbl_full_chantab;
                  if (v1437 || v1434 > v1435)
                  {
                    goto LABEL_3327;
                  }

                  v1439 = *&ddp_udc_int_crossfade_win_32[v1423++];
                  *v1415 = (fminf(v1428, 1.0) * *v1430) + (fminf(v1429, 1.0) * v1439);
                  --v1422;
                  v1415 = (v1415 + v1392);
                  v1424 = &v1425[v1392 / 4];
                }

                while (v1423 != 32);
                v1440 = 48;
                do
                {
                  if ((v1425 + 1) > v1412 || v1425 > v1425 + 1 || v1425 < v1414)
                  {
                    goto LABEL_3327;
                  }

                  v1443 = (v1402 * *v1425) * v1408;
                  if (v1443 < -1.0)
                  {
                    v1443 = -1.0;
                  }

                  *v1425 = fminf(v1443, 1.0);
                  v1425 = (v1425 + v1392);
                  --v1440;
                }

                while (v1440);
              }

              ++v1406;
            }

            while (v1406 != v1897);
          }
        }

        v1389 += v1391;
        v11 = v1854;
        if (v1390 == a7)
        {
          goto LABEL_2563;
        }
      }

      v1405 = 176;
      goto LABEL_2383;
    }

    DWORD1(v1971[0]) = ddp_udc_int_dlb_bitbuf_read(v1981, 1);
    if (ddp_udc_int_dlb_bitbuf_read(v1981, 1))
    {
      v1725 = ddp_udc_int_dlb_bitbuf_read(v1981, 3);
      HIDWORD(v1971[0]) = v1725 + 2;
      if (v1725 == -2)
      {
        goto LABEL_3250;
      }
    }

    else
    {
      HIDWORD(v1971[0]) = 1;
    }

    v1791 = 0;
    v1792 = &v1971[1];
    while (1)
    {
      if (ddp_udc_int_dlb_bitbuf_read(v1981, 1))
      {
        if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
        {
          goto LABEL_3327;
        }

        v1793 = &v1971[1] + v1791;
        v1794 = 8;
      }

      else
      {
        if (ddp_udc_int_dlb_bitbuf_read(v1981, 1))
        {
          v1795 = ddp_udc_int_dlb_bitbuf_read(v1981, 10);
          if (v1795)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 3uLL;
            DWORD2(v1971[0]) += 2;
          }

          if ((v1795 & 2) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 4uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1795 & 4) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 8uLL;
            ++DWORD2(v1971[0]);
            LODWORD(v1971[0]) = 1;
          }

          if ((v1795 & 8) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x30uLL;
            DWORD2(v1971[0]) += 2;
          }

          if ((v1795 & 0x10) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0xC0uLL;
            DWORD2(v1971[0]) += 2;
          }

          if ((v1795 & 0x20) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0xC00uLL;
            DWORD2(v1971[0]) += 2;
          }

          if ((v1795 & 0x40) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x3000uLL;
            DWORD2(v1971[0]) += 2;
          }

          if ((v1795 & 0x80) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0xC000uLL;
            DWORD2(v1971[0]) += 2;
          }

          if ((v1795 & 0x100) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x300uLL;
            DWORD2(v1971[0]) += 2;
          }

          if ((v1795 & 0x200) == 0)
          {
            goto LABEL_3249;
          }

          if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
          {
            goto LABEL_3327;
          }

          v1793 = &v1971[1] + v1791;
        }

        else
        {
          v1796 = ddp_udc_int_dlb_bitbuf_read_long(v1981, 0x11u);
          if (v1796)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 1uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 2) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 2uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 4) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 4uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 8) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 8uLL;
            ++DWORD2(v1971[0]);
            LODWORD(v1971[0]) = 1;
          }

          if ((v1796 & 0x10) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x10uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x20) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x20uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x40) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x40uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x80) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x80uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x100) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x400uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x200) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x800uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x400) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x1000uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x800) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x2000uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x1000) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x4000uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x2000) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x8000uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x4000) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x100uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x8000) != 0)
          {
            if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
            {
              goto LABEL_3327;
            }

            *v1792 |= 0x200uLL;
            ++DWORD2(v1971[0]);
          }

          if ((v1796 & 0x10000) == 0)
          {
            goto LABEL_3249;
          }

          if (v1792 < &v1971[1] || v1792 + 1 > &v1973 + 1 || v1792 > v1792 + 1)
          {
            goto LABEL_3327;
          }

          v1793 = v1792;
        }

        v1794 = 0x80000000;
      }

      *v1793 |= v1794;
      ++DWORD2(v1971[0]);
      LODWORD(v1971[0]) = 1;
LABEL_3249:
      ++v1791;
      ++v1792;
      if (v1791 >= HIDWORD(v1971[0]))
      {
        goto LABEL_3250;
      }
    }
  }

  v1099 = *a1;
  if (*a1 == 1)
  {
    if (*a6)
    {
      v1100 = 4294967294;
      goto LABEL_1848;
    }

    v1100 = 4294967294;
LABEL_1865:
    if (v11 > v1098)
    {
      goto LABEL_3327;
    }

    v1102 = v11 + 51;
    if (v11 + 51 > v11 + 57)
    {
      goto LABEL_3327;
    }

    v1103 = a7 << 8;
    v1104 = &v1964;
    goto LABEL_1868;
  }

LABEL_2161:
  if (v72 != 5)
  {
    if (v1099 != 1)
    {
      if (a7 >= 1)
      {
        v1914 = v11 + 276;
        v1918 = v11 + 18;
        v1963 = v11[42];
        __lenh = v11[43];
        v1940 = 0;
        __nj = v11[44];
        v1289 = v1964;
        do
        {
          if (v1289)
          {
            v1290 = 0;
            v1291 = 4 * (v1940 & 0x3FFFFFFF);
            v1292 = v1918 + 12 * v1940;
            v1293 = v1292 + 12;
            v1296 = v1292 + 12 <= v1914 && v1292 <= v1293 && v1292 >= v1918;
            v1298 = v1292 + 24 <= v1914 && v1293 <= v1292 + 24;
            do
            {
              v1299 = (v1963 + 24 * v1290);
              if ((v1299 + 3) > __lenh || v1299 > v1299 + 3 || v1299 < __nj)
              {
                goto LABEL_3327;
              }

              v1302 = 0;
              v1303 = v1299[2];
              v1304 = 1;
              do
              {
                v1305 = v1304;
                v1306 = v1302 | v1291;
                v1307 = *v1299 + 24 * (v1302 | v1291);
                v1309 = v1307 + 24 <= v1299[1] && v1307 <= v1307 + 24 && v1307 >= v1303;
                if (!v1309 || !v1296)
                {
                  goto LABEL_3327;
                }

                v1310 = *(v1307 + 8);
                v1311 = *v1307;
                v18 = v1310 >= *v1307;
                v1312 = v1310 - *v1307;
                v1313 = !v18 || *(v1307 + 16) > v1311;
                if (v1313 || v1312 < 0x1FD)
                {
                  goto LABEL_3327;
                }

                v1314 = *(v1292 + 8);
                v1315 = *(v1292 + 4);
                v1316 = *v1307;
                if (((&v1311[1].u64[1] + 7) & 0xFFFFFFFFFFFFFFE0) == v1311)
                {
                  _DLB_CLmpy_shlCLSIU_strict(v1311, v1316, v1315, v1314);
                }

                else
                {
                  _dlb_CLmpy_shlCLSIU_flex(v1311, v1316, v1315, v1314);
                }

                v1317 = 0;
                v1303 = v1299[2];
                do
                {
                  v1318 = (*v1299 + 24 * v1306);
                  if ((v1318 + 3) > v1299[1] || v1318 > v1318 + 3 || v1318 < v1303)
                  {
                    goto LABEL_3327;
                  }

                  v1321 = v1318[1];
                  v1322 = v1318[2];
                  v1323 = (*v1318 + v1317);
                  v1324 = (v1323 + 1) > v1321 || v1323 > v1323 + 1;
                  if (v1324 || v1323 < v1322)
                  {
                    goto LABEL_3327;
                  }

                  v1326 = *v1323;
                  if (*v1323 < -1.0)
                  {
                    v1326 = -1.0;
                  }

                  *v1323 = fminf(v1326, 1.0);
                  v1327 = (*v1299 + 24 * v1306);
                  v1328 = (v1327 + 3) > v1299[1] || v1327 > v1327 + 3;
                  if (v1328 || v1327 < v1303)
                  {
                    goto LABEL_3327;
                  }

                  v1330 = v1327[1];
                  v1331 = v1327[2];
                  v1332 = *v1327 + v1317;
                  v1333 = (v1332 + 4);
                  v1334 = v1332 + 8;
                  v1335 = v1334 > v1330 || v1333 > v1334;
                  if (v1335 || v1333 < v1331)
                  {
                    goto LABEL_3327;
                  }

                  v1337 = *v1333;
                  if (*v1333 < -1.0)
                  {
                    v1337 = -1.0;
                  }

                  *v1333 = fminf(v1337, 1.0);
                  v1317 += 8;
                }

                while (v1317 != 512);
                v1304 = 0;
                v1302 = 1;
              }

              while ((v1305 & 1) != 0);
              v1338 = 0;
              v1339 = 2;
              do
              {
                v1340 = v1338;
                v1341 = v1339 | v1291;
                v1342 = *v1299 + 24 * (v1339 | v1291);
                v1344 = v1342 + 24 <= v1299[1] && v1342 <= v1342 + 24 && v1342 >= v1303;
                if (!v1344 || !v1298)
                {
                  goto LABEL_3327;
                }

                v1345 = *(v1342 + 8);
                v1346 = *v1342;
                v18 = v1345 >= *v1342;
                v1347 = v1345 - *v1342;
                v1348 = !v18 || *(v1342 + 16) > v1346;
                if (v1348 || v1347 < 0x1FD)
                {
                  goto LABEL_3327;
                }

                v1349 = *(v1292 + 20);
                v1350 = *(v1292 + 16);
                v1351 = *v1342;
                if (((&v1346[1].u64[1] + 7) & 0xFFFFFFFFFFFFFFE0) == v1346)
                {
                  _DLB_CLmpy_shlCLSIU_strict(v1346, v1351, v1350, v1349);
                }

                else
                {
                  _dlb_CLmpy_shlCLSIU_flex(v1346, v1351, v1350, v1349);
                }

                v1352 = 0;
                v1303 = v1299[2];
                do
                {
                  v1353 = (*v1299 + 24 * v1341);
                  if ((v1353 + 3) > v1299[1] || v1353 > v1353 + 3 || v1353 < v1303)
                  {
                    goto LABEL_3327;
                  }

                  v1356 = v1353[1];
                  v1357 = v1353[2];
                  v1358 = (*v1353 + v1352);
                  v1359 = (v1358 + 1) > v1356 || v1358 > v1358 + 1;
                  if (v1359 || v1358 < v1357)
                  {
                    goto LABEL_3327;
                  }

                  v1361 = *v1358;
                  if (*v1358 < -1.0)
                  {
                    v1361 = -1.0;
                  }

                  *v1358 = fminf(v1361, 1.0);
                  v1362 = (*v1299 + 24 * v1341);
                  v1363 = (v1362 + 3) > v1299[1] || v1362 > v1362 + 3;
                  if (v1363 || v1362 < v1303)
                  {
                    goto LABEL_3327;
                  }

                  v1365 = v1362[1];
                  v1366 = v1362[2];
                  v1367 = *v1362 + v1352;
                  v1368 = (v1367 + 4);
                  v1369 = v1367 + 8;
                  v1370 = v1369 > v1365 || v1368 > v1369;
                  if (v1370 || v1368 < v1366)
                  {
                    goto LABEL_3327;
                  }

                  v1372 = *v1368;
                  if (*v1368 < -1.0)
                  {
                    v1372 = -1.0;
                  }

                  *v1368 = fminf(v1372, 1.0);
                  v1352 += 8;
                }

                while (v1352 != 512);
                v1338 = 1;
                v1339 = 3;
              }

              while ((v1340 & 1) == 0);
              ++v1290;
            }

            while (v1290 != v1289);
          }

          ++v1940;
        }

        while (v1940 != a7);
        v1099 = *a1;
        v11 = v1854;
      }

      goto LABEL_2162;
    }

    v1122 = v11[52];
    v1124 = v11[55];
    v1962 = v11[54];
    v1125 = v11[56];
    v1209 = v11;
    goto LABEL_2167;
  }

LABEL_2162:
  if (v1099 == 2)
  {
    v1373 = v1964;
    if (v1964 <= 0xF)
    {
      do
      {
        for (jj = 0; jj != 576; jj += 24)
        {
          v1375 = (v11[42] + 24 * v1373);
          if ((v1375 + 3) > v11[43] || v1375 > v1375 + 3 || v1375 < v11[44])
          {
            goto LABEL_3327;
          }

          v1378 = *v1375;
          v1379 = v1375[1];
          v1380 = v1375[2];
          v1381 = v1378 + jj;
          v1382 = v1378 + jj + 24;
          v1383 = v1382 > v1379 || v1381 > v1382;
          if (!v1383 && v1381 >= v1380)
          {
            v1385 = *v1381;
            v1386 = *(v1381 + 8);
            if (v1385 <= v1386)
            {
              v1387 = *(v1378 + jj + 16);
              if (v1386 - v1385 >= 0x200 && v1387 <= v1385)
              {
                v1385[30] = 0uLL;
                v1385[31] = 0uLL;
                v1385[28] = 0uLL;
                v1385[29] = 0uLL;
                v1385[26] = 0uLL;
                v1385[27] = 0uLL;
                v1385[24] = 0uLL;
                v1385[25] = 0uLL;
                v1385[22] = 0uLL;
                v1385[23] = 0uLL;
                v1385[20] = 0uLL;
                v1385[21] = 0uLL;
                v1385[18] = 0uLL;
                v1385[19] = 0uLL;
                v1385[16] = 0uLL;
                v1385[17] = 0uLL;
                v1385[14] = 0uLL;
                v1385[15] = 0uLL;
                v1385[12] = 0uLL;
                v1385[13] = 0uLL;
                v1385[10] = 0uLL;
                v1385[11] = 0uLL;
                v1385[8] = 0uLL;
                v1385[9] = 0uLL;
                v1385[6] = 0uLL;
                v1385[7] = 0uLL;
                v1385[4] = 0uLL;
                v1385[5] = 0uLL;
                v1385[2] = 0uLL;
                v1385[3] = 0uLL;
                *v1385 = 0uLL;
                v1385[1] = 0uLL;
                if (v1385 < v1385 + 32)
                {
                  continue;
                }
              }
            }
          }

          goto LABEL_3327;
        }

        ++v1373;
      }

      while (v1373 != 16);
    }

    goto LABEL_2902;
  }

  if (v1099 != 1)
  {
    goto LABEL_2902;
  }

LABEL_2563:
  if (v11 > v1932 || v11 + 51 > v11 + 57)
  {
    goto LABEL_3327;
  }

  v1496 = a7 << 8;
  v1497 = v11[52];
  *(a5 + 8) = v1497;
  *a5 = *(v11 + 102);
  if (v1497 == 1)
  {
    v1498 = a7 << 8;
  }

  else
  {
    v1498 = 1;
  }

  v1499 = *(a5 + 16);
  if (v1499 <= 4)
  {
    if (v1499 != 3)
    {
      if (v1499 != 4)
      {
        goto LABEL_2902;
      }

      v1521 = v11[54];
      v1522 = v1897;
      if (v1521 + 24 > v11[55] || v1521 > v1521 + 24 || v1521 < v11[56])
      {
        goto LABEL_3327;
      }

      v1523 = 0;
      v1524 = *v1521;
      v1525 = *(v1521 + 8);
      v1526 = *(a5 + 24);
      v1527 = *(a5 + 32);
      v1528 = 2 * v1498;
      v1529 = *(a5 + 40);
      do
      {
        v1530 = v1526 + v1523;
        v1531 = v1526 + v1523 + 24;
        if (v1531 > v1527 || v1530 > v1531 || v1530 < v1529)
        {
          goto LABEL_3327;
        }

        *v1530 = v1524;
        *(v1530 + 8) = v1525;
        v1523 += 24;
        v1524 = (v1524 + v1528);
      }

      while (v1523 != 384);
      if (v1897 > 0xF || v1497 == 1)
      {
        if (v1526 + 24 > v1527 || v1526 < v1529)
        {
          goto LABEL_3327;
        }

        v1677 = v1897 * v1496;
        if (v1897 * v1496)
        {
          v1678 = *(v1526 + 8);
          v1679 = *(v1526 + 16);
          v1681 = *(v1521 + 8);
          v1680 = *(v1521 + 16);
          v1682 = *v1521;
          v1683 = *v1526;
          do
          {
            v1684 = v1682 + 1;
            v1685 = (v1682 + 1) > v1681 || v1682 > v1684;
            v1686 = !v1685 && v1682 >= v1680;
            v1687 = v1683 + 1;
            v1688 = !v1686 || v1687 > v1678;
            v1689 = v1688 || v1683 > v1687;
            if (v1689 || v1683 < v1679)
            {
              goto LABEL_3327;
            }

            v1691 = rintf(*v1682 * 32768.0);
            if (v1691 <= -32768)
            {
              v1691 = -32768;
            }

            if (v1691 >= 0x7FFF)
            {
              LOWORD(v1691) = 0x7FFF;
            }

            *v1683++ = v1691;
            v1682 = v1684;
          }

          while (--v1677);
        }

LABEL_2883:
        if (v1522 > 0xF)
        {
          goto LABEL_2902;
        }
      }

      else
      {
        if (v1526 + 24 > v1527 || v1526 < v1529)
        {
          goto LABEL_3327;
        }

        if (a7)
        {
          v1534 = 0;
          v1535 = *(v1526 + 8);
          v1536 = *(v1526 + 16);
          v1538 = *(v1521 + 8);
          v1537 = *(v1521 + 16);
          v1539 = *v1521;
          v1522 = v1897;
          v1540 = v1497 - v1897;
          v1541 = *v1526;
          while (!v1897)
          {
            v1543 = v1539;
            v1546 = v1541;
LABEL_2653:
            v1541 = &v1546[v1540];
            v1539 = &v1543[v1540];
            if (++v1534 == v1496)
            {
              goto LABEL_2883;
            }
          }

          v1542 = v1897;
          while (1)
          {
            v1543 = v1539 + 1;
            v1544 = (v1539 + 1) > v1538 || v1539 > v1543;
            v1545 = !v1544 && v1539 >= v1537;
            v1546 = v1541 + 1;
            v1547 = !v1545 || v1546 > v1535;
            v1548 = v1547 || v1541 > v1546;
            if (v1548 || v1541 < v1536)
            {
              goto LABEL_3327;
            }

            v1550 = rintf(*v1539 * 32768.0);
            if (v1550 <= -32768)
            {
              v1550 = -32768;
            }

            if (v1550 >= 0x7FFF)
            {
              LOWORD(v1550) = 0x7FFF;
            }

            *v1541++ = v1550;
            v1539 = v1543;
            if (!--v1542)
            {
              goto LABEL_2653;
            }
          }
        }
      }

      v1692 = v1526 + 24 * v1897;
      if (v1692 + 24 > v1527 || v1692 > v1692 + 24 || v1692 < v1529)
      {
        goto LABEL_3327;
      }

      v1654 = *v1692;
      v1653 = *(v1692 + 8);
      v1655 = *(v1692 + 16);
      if (v1497 != 1)
      {
        if (a7)
        {
          v1709 = 0;
          do
          {
            v1710 = v1897 - 16;
            do
            {
              v1711 = v1654 + 1;
              if ((v1654 + 1) > v1653 || v1654 > v1711 || v1654 < v1655)
              {
                goto LABEL_3327;
              }

              *v1654++ = 0;
              v18 = __CFADD__(v1710++, 1);
            }

            while (!v18);
            v1654 = &v1711[v1897];
            ++v1709;
          }

          while (v1709 != v1496);
        }

        goto LABEL_2902;
      }

      v1656 = 32 - 2 * v1897;
      goto LABEL_2894;
    }

    v1613 = v11[54];
    if (v1613 + 24 > v11[55] || v1613 > v1613 + 24 || v1613 < v11[56])
    {
      goto LABEL_3327;
    }

    v1614 = *v1613;
    v1615 = *(v1613 + 8);
    v1616 = *(a5 + 24);
    v1617 = *(a5 + 32);
    v1618 = *(a5 + 40);
    v1619 = 4 * v1498;
    v1620 = 16;
    v1621 = v1616;
    do
    {
      if (v1621 + 24 > v1617 || v1621 > v1621 + 24 || v1621 < v1618)
      {
        goto LABEL_3327;
      }

      *v1621 = v1614;
      *(v1621 + 8) = v1615;
      v1614 += v1619;
      v1621 += 24;
      --v1620;
    }

    while (v1620);
    if (v1897 <= 0xF)
    {
      v1624 = v1616 + 24 * v1897;
      if (v1624 + 24 > v1617 || v1624 > v1624 + 24 || v1624 < v1618)
      {
        goto LABEL_3327;
      }

      v1628 = *v1624;
      v1627 = *(v1624 + 8);
      v1629 = *(v1624 + 16);
      if (v1497 == 1)
      {
        v1630 = (16 - v1897) * v1496;
        if (v1630)
        {
          do
          {
            v1631 = (v1628 + 1) > v1627 || v1628 > v1628 + 1;
            if (v1631 || v1628 < v1629)
            {
              goto LABEL_3327;
            }

            *v1628++ = 0;
          }

          while (--v1630);
        }
      }

      else if (a7)
      {
        v1719 = 0;
        do
        {
          v1720 = v1897 - 16;
          do
          {
            v1721 = v1628 + 1;
            if ((v1628 + 1) > v1627 || v1628 > v1721 || v1628 < v1629)
            {
              goto LABEL_3327;
            }

            *v1628++ = 0;
            v18 = __CFADD__(v1720++, 1);
          }

          while (!v18);
          v1628 = &v1721[v1897];
          ++v1719;
        }

        while (v1719 != v1496);
      }
    }
  }

  else
  {
    v1500 = v1897;
    if (v1499 == 5)
    {
      v1551 = v11[54];
      if (v1551 + 24 > v11[55] || v1551 > v1551 + 24 || v1551 < v11[56])
      {
        goto LABEL_3327;
      }

      v1552 = 0;
      v1553 = *v1551;
      v1554 = *(v1551 + 8);
      v1555 = *(a5 + 24);
      v1556 = *(a5 + 32);
      v1557 = 4 * v1498;
      v1558 = *(a5 + 40);
      do
      {
        v1559 = v1555 + v1552;
        v1560 = v1555 + v1552 + 24;
        if (v1560 > v1556 || v1559 > v1560 || v1559 < v1558)
        {
          goto LABEL_3327;
        }

        *v1559 = v1553;
        *(v1559 + 8) = v1554;
        v1552 += 24;
        v1553 = (v1553 + v1557);
      }

      while (v1552 != 384);
      if (v1897 > 0xF || v1497 == 1)
      {
        if (v1555 + 24 > v1556 || v1555 < v1558)
        {
          goto LABEL_3327;
        }

        v1633 = v1897 * v1496;
        if (v1897 * v1496)
        {
          v1634 = *(v1555 + 8);
          v1635 = *(v1555 + 16);
          v1637 = *(v1551 + 8);
          v1636 = *(v1551 + 16);
          v1638 = *v1551;
          v1639 = *v1555;
          do
          {
            v1640 = v1638 + 1;
            v1641 = (v1638 + 1) > v1637 || v1638 > v1640;
            v1642 = !v1641 && v1638 >= v1636;
            v1643 = v1639 + 1;
            v1644 = !v1642 || v1643 > v1634;
            v1645 = v1644 || v1639 > v1643;
            if (v1645 || v1639 < v1635)
            {
              goto LABEL_3327;
            }

            v1647 = *v1638;
            v1648 = *v1638 * 2147500000.0;
            if (v1648 < -2147500000.0)
            {
              v1648 = -2147500000.0;
            }

            v1649 = rintf(v1648);
            if (v1647 >= 1.0)
            {
              LODWORD(v1649) = 0x7FFFFFFF;
            }

            *v1639++ = v1649;
            v1638 = v1640;
          }

          while (--v1633);
        }

LABEL_2809:
        if (v1500 > 0xF)
        {
          goto LABEL_2902;
        }
      }

      else
      {
        if (v1555 + 24 > v1556 || v1555 < v1558)
        {
          goto LABEL_3327;
        }

        if (a7)
        {
          v1563 = 0;
          v1564 = *(v1555 + 8);
          v1565 = *(v1555 + 16);
          v1567 = *(v1551 + 8);
          v1566 = *(v1551 + 16);
          v1568 = *v1551;
          v1500 = v1897;
          v1569 = v1497 - v1897;
          v1570 = *v1555;
          while (!v1897)
          {
            v1572 = v1568;
            v1575 = v1570;
LABEL_2700:
            v1570 = &v1575[v1569];
            v1568 = &v1572[v1569];
            if (++v1563 == v1496)
            {
              goto LABEL_2809;
            }
          }

          v1571 = v1897;
          while (1)
          {
            v1572 = v1568 + 1;
            v1573 = (v1568 + 1) > v1567 || v1568 > v1572;
            v1574 = !v1573 && v1568 >= v1566;
            v1575 = v1570 + 1;
            v1576 = !v1574 || v1575 > v1564;
            v1577 = v1576 || v1570 > v1575;
            if (v1577 || v1570 < v1565)
            {
              goto LABEL_3327;
            }

            v1579 = *v1568;
            v1580 = *v1568 * 2147500000.0;
            if (v1580 < -2147500000.0)
            {
              v1580 = -2147500000.0;
            }

            v1581 = rintf(v1580);
            if (v1579 >= 1.0)
            {
              LODWORD(v1581) = 0x7FFFFFFF;
            }

            *v1570++ = v1581;
            v1568 = v1572;
            if (!--v1571)
            {
              goto LABEL_2700;
            }
          }
        }
      }

      v1650 = v1555 + 24 * v1897;
      if (v1650 + 24 > v1556 || v1650 > v1650 + 24 || v1650 < v1558)
      {
        goto LABEL_3327;
      }

      v1654 = *v1650;
      v1653 = *(v1650 + 8);
      v1655 = *(v1650 + 16);
      if (v1497 != 1)
      {
        if (a7)
        {
          v1699 = 0;
          do
          {
            v1700 = v1897 - 16;
            do
            {
              v1701 = v1654 + 2;
              if ((v1654 + 2) > v1653 || v1654 > v1701 || v1654 < v1655)
              {
                goto LABEL_3327;
              }

              *v1654 = 0;
              v1654 += 2;
              v18 = __CFADD__(v1700++, 1);
            }

            while (!v18);
            v1654 = &v1701[2 * v1897];
            ++v1699;
          }

          while (v1699 != v1496);
        }

        goto LABEL_2902;
      }

      v1656 = 64 - 4 * v1897;
      goto LABEL_2894;
    }

    if (v1499 != 6)
    {
      if (v1499 == 7)
      {
        v1501 = v11[54];
        if (v1501 + 24 > v11[55] || v1501 > v1501 + 24 || v1501 < v11[56])
        {
          goto LABEL_3327;
        }

        v1502 = *v1501;
        v1503 = *(v1501 + 8);
        v1504 = *(a5 + 24);
        v1505 = *(a5 + 32);
        v1506 = *(a5 + 40);
        v1507 = 4 * v1498;
        v1508 = 16;
        v1509 = v1504;
        do
        {
          if (v1509 + 24 > v1505 || v1509 > v1509 + 24 || v1509 < v1506)
          {
            goto LABEL_3327;
          }

          *v1509 = v1502;
          *(v1509 + 8) = v1503;
          v1502 += v1507;
          v1509 += 24;
          --v1508;
        }

        while (v1508);
        if (v1897 <= 0xF)
        {
          v1512 = v1504 + 24 * v1897;
          if (v1512 + 24 > v1505 || v1512 > v1512 + 24 || v1512 < v1506)
          {
            goto LABEL_3327;
          }

          v1516 = *v1512;
          v1515 = *(v1512 + 8);
          v1517 = *(v1512 + 16);
          if (v1497 == 1)
          {
            v1518 = (16 - v1897) * v1496;
            if (v1518)
            {
              while (1)
              {
                v1519 = (v1516 + 1) > v1515 || v1516 > v1516 + 1;
                if (v1519 || v1516 < v1517)
                {
                  goto LABEL_3327;
                }

                *v1516++ = 0;
                if (!--v1518)
                {
                  goto LABEL_2902;
                }
              }
            }
          }

          else if (a7)
          {
            v1714 = 0;
            do
            {
              v1715 = v1897 - 16;
              do
              {
                v1716 = v1516 + 1;
                if ((v1516 + 1) > v1515 || v1516 > v1716 || v1516 < v1517)
                {
                  goto LABEL_3327;
                }

                *v1516++ = 0;
                v18 = __CFADD__(v1715++, 1);
              }

              while (!v18);
              v1516 = &v1716[v1897];
              ++v1714;
            }

            while (v1714 != v1496);
          }
        }
      }

      goto LABEL_2902;
    }

    v1582 = v11[54];
    if (v1582 + 24 > v11[55] || v1582 > v1582 + 24 || v1582 < v11[56])
    {
      goto LABEL_3327;
    }

    v1583 = 0;
    v1584 = *v1582;
    v1585 = *(v1582 + 8);
    v1586 = *(a5 + 24);
    v1587 = *(a5 + 32);
    v1588 = 8 * v1498;
    v1589 = *(a5 + 40);
    do
    {
      v1590 = v1586 + v1583;
      v1591 = v1586 + v1583 + 24;
      if (v1591 > v1587 || v1590 > v1591 || v1590 < v1589)
      {
        goto LABEL_3327;
      }

      *v1590 = v1584;
      *(v1590 + 8) = v1585;
      v1583 += 24;
      v1584 = (v1584 + v1588);
    }

    while (v1583 != 384);
    if (v1897 <= 0xF && v1497 != 1)
    {
      if (v1586 + 24 > v1587 || v1586 < v1589)
      {
        goto LABEL_3327;
      }

      if (a7)
      {
        v1594 = 0;
        v1595 = *(v1586 + 8);
        v1596 = *(v1586 + 16);
        v1598 = *(v1582 + 8);
        v1597 = *(v1582 + 16);
        v1599 = *v1582;
        v1500 = v1897;
        v1600 = v1497 - v1897;
        v1601 = *v1586;
        while (!v1897)
        {
          v1603 = v1599;
          v1606 = v1601;
LABEL_2747:
          v1601 = &v1606[v1600];
          v1599 = &v1603[v1600];
          if (++v1594 == v1496)
          {
            goto LABEL_2846;
          }
        }

        v1602 = v1897;
        while (1)
        {
          v1603 = v1599 + 1;
          v1604 = (v1599 + 1) > v1598 || v1599 > v1603;
          v1605 = !v1604 && v1599 >= v1597;
          v1606 = v1601 + 1;
          v1607 = !v1605 || v1606 > v1595;
          v1608 = v1607 || v1601 > v1606;
          if (v1608 || v1601 < v1596)
          {
            goto LABEL_3327;
          }

          v1610 = *v1599;
          v1611 = *v1599 * 2147500000.0;
          if (v1611 < -2147500000.0)
          {
            v1611 = -2147500000.0;
          }

          v1612 = rintf(v1611);
          if (v1610 >= 1.0)
          {
            v1612 = 0x7FFFFFFFLL;
          }

          *v1601++ = v1612;
          v1599 = v1603;
          if (!--v1602)
          {
            goto LABEL_2747;
          }
        }
      }

      goto LABEL_2847;
    }

    if (v1586 + 24 > v1587 || v1586 < v1589)
    {
      goto LABEL_3327;
    }

    v1657 = v1897 * v1496;
    if (v1897 * v1496)
    {
      v1658 = *(v1586 + 8);
      v1659 = *(v1586 + 16);
      v1661 = *(v1582 + 8);
      v1660 = *(v1582 + 16);
      v1662 = *v1582;
      v1663 = *v1586;
      do
      {
        v1664 = v1662 + 1;
        v1665 = (v1662 + 1) > v1661 || v1662 > v1664;
        v1666 = !v1665 && v1662 >= v1660;
        v1667 = v1663 + 1;
        v1668 = !v1666 || v1667 > v1658;
        v1669 = v1668 || v1663 > v1667;
        if (v1669 || v1663 < v1659)
        {
          goto LABEL_3327;
        }

        v1671 = *v1662;
        v1672 = *v1662 * 2147500000.0;
        if (v1672 < -2147500000.0)
        {
          v1672 = -2147500000.0;
        }

        v1673 = rintf(v1672);
        if (v1671 >= 1.0)
        {
          v1673 = 0x7FFFFFFFLL;
        }

        *v1663++ = v1673;
        v1662 = v1664;
      }

      while (--v1657);
    }

LABEL_2846:
    if (v1500 <= 0xF)
    {
LABEL_2847:
      v1674 = v1586 + 24 * v1897;
      if (v1674 + 24 > v1587 || v1674 > v1674 + 24 || v1674 < v1589)
      {
        goto LABEL_3327;
      }

      v1654 = *v1674;
      v1653 = *(v1674 + 8);
      v1655 = *(v1674 + 16);
      if (v1497 != 1)
      {
        if (a7)
        {
          v1704 = 0;
          do
          {
            v1705 = v1897 - 16;
            do
            {
              v1706 = v1654 + 4;
              if ((v1654 + 4) > v1653 || v1654 > v1706 || v1654 < v1655)
              {
                goto LABEL_3327;
              }

              *v1654 = 0;
              v1654 += 4;
              v18 = __CFADD__(v1705++, 1);
            }

            while (!v18);
            v1654 = &v1706[4 * v1897];
            ++v1704;
          }

          while (v1704 != v1496);
        }

        goto LABEL_2902;
      }

      v1656 = 128 - 8 * v1897;
LABEL_2894:
      v1695 = v1656 * v1496;
      if (v1653 < v1654 || v1655 > v1654 || v1695 > v1653 - v1654)
      {
        goto LABEL_3327;
      }

      bzero(v1654, v1695);
      if (v1654 > (v1654 + v1695))
      {
        goto LABEL_3327;
      }
    }
  }

LABEL_2902:
  if ((v1896 & 0xFFFFFFFE) == 2)
  {
    *(v11 + 75) = 1;
  }

  *(v11 + 74) = v1964;
  return v1835;
}