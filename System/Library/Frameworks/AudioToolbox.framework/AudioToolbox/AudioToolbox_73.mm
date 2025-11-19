uint64_t reorder_joc_pcm_output(uint64_t result, void *a2, int a3, int *a4)
{
  v4 = a2[3];
  if ((v4 + 3) > a2[4] || v4 > v4 + 3 || v4 < a2[5])
  {
LABEL_51:
    __break(0x5519u);
    return result;
  }

  v8 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v10 = a2[1];
  if (v10 == 1)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1;
  }

  v12 = result;
  if (result == -1)
  {
    v12 = *a4 - 1;
    if (a3 >= 1)
    {
      v13 = a3;
      v14 = v8;
      do
      {
        v15 = (v14 + 1) > v7 || v14 > v14 + 1;
        if (v15 || v14 < v9)
        {
          goto LABEL_51;
        }

        *v14 = 0;
        v14 += v10;
      }

      while (--v13);
    }
  }

  if (v12 >= 1 && v12 < *a4 && a3 >= 1)
  {
    v18 = 0;
    v19 = v10;
    v20 = v11;
LABEL_30:
    if ((v8 + 1) <= v7 && v8 <= v8 + 1 && v8 >= v9)
    {
      v23 = &v8[v19];
      v24 = *v8;
      v25 = v12;
      while (1)
      {
        v26 = &v8[v20];
        v27 = &v8[v20 + 1];
        v28 = v27 > v7 || v26 > v27;
        if (v28 || v26 < v9)
        {
          break;
        }

        *v8 = *v26;
        v8 = (v8 + v20 * 4);
        if (!--v25)
        {
          *v26 = v24;
          ++v18;
          v8 = v23;
          if (v18 != a3)
          {
            goto LABEL_30;
          }

          goto LABEL_49;
        }
      }
    }

    goto LABEL_51;
  }

LABEL_49:
  if (result == -1)
  {
    --*a4;
  }

  return result;
}

void ddp_udc_int_evod_init(uint64_t a1, unint64_t *a2, int a3, uint64_t a4)
{
  if (a1 && *a2)
  {
    *(a1 + 44200) = a3;
    *(a1 + 64) = 1;
    *(a1 + 13104) = a4;
    v6 = (a1 + 3545) & 0xFFFFFFFFFFFFFFF8;
    if (a1 + 13099 - v6 >= 0x2552 && v6 <= a1 + 13099 && a1 + 3538 <= v6)
    {
      *(a1 + 13224) = 9554;
      *(a1 + 13256) = v6;
      *(a1 + 13264) = 0;
      *(a1 + 13240) = 1;
      *(a1 + 96) = a1 + 3538;
      *(a1 + 104) = a1 + 472;
      *(a1 + 80) = 3066;
      *(a1 + 88) = a1 + 472;
      if (!v6 || v6 + 56 <= v6 + 9554 && v6 <= v6 + 56)
      {
        *(a1 + 72) = v6;
        v7 = a1 + 13576;
        v8 = a1 + 13768;
        v9 = 8;
        v10 = (a1 + 13576);
        v11 = a1 + 13320;
        while (1)
        {
          v12 = (v10 + 3) > v8 || v10 >= v10 + 3;
          if (v12)
          {
            break;
          }

          *v10 = v11;
          v10[1] = v7;
          v11 += 32;
          v10[2] = a1 + 13320;
          v10 += 3;
          if (!--v9)
          {
            *(a1 + 13280) = v7;
            *(a1 + 13288) = v8;
            *(a1 + 13296) = v7;
            *(a1 + 13316) = 0;
            v13 = *a2;
            v14 = a2[1];
            if (*a2 <= v14 && a2[2] <= v13 && v14 - v13 >= 0x170)
            {
              *(a1 + 16) = v13;
              *a1 = 368;
              v15 = a2[1];
              v16 = a2[2];
              v17 = *a2 + 368;
              *a2 = v17;
              v12 = v15 >= v17;
              v18 = v15 - v17;
              if (v12 && v16 <= v17 && v18 >= 0x20)
              {
                *(a1 + 24) = v17;
                *(a1 + 8) = 32;
                *a2 += 32;
                ddp_udc_int_evo_init(a1, 0);
                if (v19)
                {
                  return;
                }

                v20 = *a2;
                v21 = a2[1];
                if (*a2 <= v21 && a2[2] <= v20 && v21 - v20 >= 0x170)
                {
                  *(a1 + 48) = v20;
                  *(a1 + 32) = 368;
                  v22 = a2[1];
                  v23 = a2[2];
                  v24 = *a2 + 368;
                  *a2 = v24;
                  v12 = v22 >= v24;
                  v25 = v22 - v24;
                  if (v12 && v23 <= v24 && v25 >= 0xFE0)
                  {
                    *(a1 + 56) = v24;
                    *(a1 + 40) = 4064;
                    *a2 += 4064;
                    ddp_udc_int_evo_init(a1 + 32, 1);
                    return;
                  }
                }
              }
            }

            break;
          }
        }
      }
    }

    __break(0x5519u);
  }
}

void ddp_udc_int_evod_process(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v199 = v10;
  v200 = v10;
  v11 = a3[1638];
  a3[8] = 1;
  bzero(a3 + 3538, 0x2559uLL);
  v198 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v196 = v12;
  v197 = v12;
  v194 = v12;
  v195 = v12;
  v192 = v12;
  v193 = v12;
  v191 = v12;
  if (!a5)
  {
    goto LABEL_34;
  }

  if (*(*(a1 + 79800) + 8) >= 9)
  {
    if (!a4 || !*(a1 + 274))
    {
      goto LABEL_34;
    }
  }

  else if (!a4)
  {
    goto LABEL_34;
  }

  v13 = v11 + 4096;
  v14 = *(a1 + 240);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = (v11 + 4096);
    do
    {
      v17 = a1 + 544 + 5192 * v15;
      if (*(v17 + 2384))
      {
        v18 = v17 + 2384;
        v19 = *(v17 + 2386);
        if (v19 >= 1)
        {
          v20 = *(v18 + 16);
          v21 = *(v18 + 24);
          v22 = *(v18 + 34);
          v23 = *(v18 + 32);
          v24 = v16;
          v25 = v19;
          v26 = *(v18 + 8);
          do
          {
            v27 = v22 << v23 << 8;
            if (v23 < 9)
            {
              v23 += 8;
            }

            else
            {
              v28 = v26 + 2;
              if ((v26 + 2) > v20)
              {
                goto LABEL_307;
              }

              if (++v26 > v28 || v26 < v21)
              {
                goto LABEL_307;
              }

              v22 = *v26;
              v23 -= 8;
              v27 |= v22 << v23;
            }

            if (v24 >= v11 + 7162 || v24 < v13)
            {
              goto LABEL_307;
            }

            *v24++ = BYTE2(v27);
            --v25;
          }

          while (v25);
          v14 = *(a1 + 240);
        }

        v16 += v19;
      }

      ++v15;
    }

    while (v15 < v14);
    v11 = a3[1638];
    v13 = v16;
  }

  if ((v13 - (v11 + 4096)) < 1)
  {
    goto LABEL_34;
  }

  v29 = 0;
  v30 = a3 + 14;
  v31 = v13 - v11;
  v32 = 4096;
  while (1)
  {
    v33 = (v11 + v32);
    v34 = v11 + v32 < v11 + 7162 && v33 >= v11 + 4096;
    if (!v34)
    {
      goto LABEL_307;
    }

    v29 = *v33 | (v29 << 8);
    if (v29 == 22584)
    {
      break;
    }

    if (v31 == ++v32)
    {
      goto LABEL_34;
    }
  }

  v181 = v11 + 7162;
  v185 = v11 + 4096;
  v186 = v11;
  v73 = *(a2 + 8);
  v189 = v73;
  if (v73[18] > 8)
  {
    v75 = v73 + 107;
  }

  else
  {
    v74 = &framesizetab[38 * v73[16]];
    v75 = &v74[v73[17]];
    v76 = (v75 + 1);
    if (v75 < v74 || v76 > (v74 + 38) || v75 > v76)
    {
      goto LABEL_307;
    }
  }

  v187 = *v75;
  a3[58] = 0;
  *(a3 + 27) = 0u;
  *(a3 + 28) = 0u;
  *(a3 + 25) = 0u;
  *(a3 + 26) = 0u;
  *(a3 + 23) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 21) = 0u;
  *(a3 + 22) = 0u;
  *(a3 + 19) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 17) = 0u;
  *(a3 + 18) = 0u;
  *(a3 + 15) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 13) = 0u;
  *(a3 + 14) = 0u;
  *(a3 + 11) = 0u;
  *(a3 + 12) = 0u;
  *(a3 + 9) = 0u;
  *(a3 + 10) = 0u;
  *v30 = 0u;
  *(a3 + 8) = 0u;
  v89 = v189;
  if (v189[198] >= 1)
  {
    v90 = 0;
    v91 = 0;
    v92 = v189 + 200;
    while (v92 >= v189 + 100 && v92 + 2 <= v189 + 124 && v92 <= v92 + 2)
    {
      v93 = *(a3 + 115);
      if (v93)
      {
        v93 = 2;
      }

      else
      {
        *(a3 + 116) = *v92;
        *(a3 + 115) = 1;
      }

      v91 += v93 + ddp_udc_int_evobh_end_excluded_segment((a3 + 14), v92[1]);
      ++v90;
      v89 = v189;
      v92 += 2;
      if (v90 >= v189[198])
      {
        goto LABEL_140;
      }
    }

    goto LABEL_307;
  }

  v91 = 0;
LABEL_140:
  if (v89[18] - 11 <= 5)
  {
    if (*(a3 + 115))
    {
      v94 = 2;
    }

    else
    {
      v94 = 0;
      *(a3 + 116) = *(a1 + 276);
      *(a3 + 115) = 1;
    }

    v91 += v94 + ddp_udc_int_evobh_end_excluded_segment((a3 + 14), *(a1 + 280));
  }

  if ((*(a1 + 274) || v89[18] - 11 >= 6) && *(a1 + 240) >= 1)
  {
    v95 = 0;
    v96 = (a1 + 2976);
    do
    {
      v97 = (v96 + 690);
      v98 = (v96 - 608) < a1 + 544 || v97 > a1 + 31696;
      if (v98 || (v96 - 608) > v97)
      {
        goto LABEL_307;
      }

      v100 = *(a3 + 115);
      if (v100)
      {
        v100 = 2;
      }

      else
      {
        *(a3 + 116) = *v96;
        *(a3 + 115) = 1;
      }

      v91 += v100 + ddp_udc_int_evobh_end_excluded_segment((a3 + 14), v96[1]);
      ++v95;
      v96 += 1298;
    }

    while (v95 < *(a1 + 240));
  }

  v102 = v185;
  v101 = v186;
  v182 = v91;
  if (*(a3 + 115))
  {
    v184 = 2;
  }

  else
  {
    v184 = 0;
    *(a3 + 116) = *(a1 + 284);
    *(a3 + 115) = 1;
  }

  v103 = v187;
  v104 = ddp_udc_int_evobh_end_excluded_segment((a3 + 14), *(a1 + 288));
  if (*(a3 + 115))
  {
    v183 = 2;
  }

  else
  {
    v183 = 0;
    *(a3 + 116) = *(a1 + 292);
    *(a3 + 115) = 1;
  }

  v105 = ddp_udc_int_evobh_end_excluded_segment((a3 + 14), *(a1 + 296));
  v202 = *v189;
  *&v203 = *(v189 + 2);
  LODWORD(v201[0]) = (16 * v187) | 1;
  HIDWORD(v201[0]) = v201[0];
  v205 = a3 + 14;
  v206 = (a3 + 19);
  v207 = (a3 + 14);
  ddp_udc_int_bsod_init(&v202, 0, &v205);
  a3[19] = v186;
  a3[20] = v185;
  a3[21] = v186;
  *(a3 + 44) = 0;
  if (v186 && (v186 >= v186 + 2 || v186 + 2 > v185))
  {
    goto LABEL_307;
  }

  v106 = (a3 + 24);
  a3[23] = v186;
  v107 = *(a3 + 113);
  v188 = (a3 + 56);
  v108 = *(a3 + 112);
  if (v107 == v108)
  {
    v109 = v201;
  }

  else
  {
    v109 = (v106 + 8 * v107);
    if (v109 && (v109 < v106 || (v109 + 1) > v188 || v109 > v109 + 1))
    {
      goto LABEL_307;
    }

    *(a3 + 113) = ++v107;
  }

  if (v103 < 1)
  {
    v143 = 0;
    LODWORD(v142) = v186;
  }

  else
  {
    v110 = 0;
    v111 = 16 * v103;
    v190 = 16 * v103 - 1;
    do
    {
      v112 = *v109;
      for (i = v110 < v111; v110 < *v109 && v110 < v111; i = v110 < v111)
      {
        v115 = v112 - v110;
        if (16 - (v110 & 0xF) < v115)
        {
          v115 = 16 - (v110 & 0xF);
        }

        if (v115 >= v111 - v110)
        {
          v115 = v111 - v110;
        }

        v116 = *(a3 + 68);
        v117 = *(a3 + 69) << v116;
        v118 = v116 + v115;
        v119 = v118;
        *(a3 + 68) = v118;
        v120 = v118 - 16;
        if (v119 >= 16)
        {
          v121 = a3[14];
          v122 = (v121 + 2);
          v123 = v121 + 4;
          if (v123 > a3[15] || v122 > v123 || v122 < a3[16])
          {
            goto LABEL_307;
          }

          v126 = *v122;
          *(a3 + 69) = v126;
          a3[14] = v122;
          *(a3 + 68) = v120;
          v117 |= v126 >> (v115 - v120);
        }

        v127 = &ddp_udc_int_gbl_msktab[v115];
        v128 = v127 + 1;
        if (v127 < ddp_udc_int_gbl_msktab || v128 > ddp_udc_int_gbl_chanary || v127 > v128)
        {
          goto LABEL_307;
        }

        v131 = v117 & (0xFFFF0000 >> v115) & *v127;
        v132 = *(a3 + 88);
        v133 = *(a3 + 89) | (v131 >> v132);
        *(a3 + 89) |= v131 >> v132;
        v134 = v132 + v115;
        *(a3 + 88) = v134;
        if (v134 >= 16)
        {
          v135 = a3[19];
          if ((v135 + 1) > a3[20])
          {
            goto LABEL_307;
          }

          if (v135 > v135 + 1)
          {
            goto LABEL_307;
          }

          v136 = a3[21];
          if (v135 < v136)
          {
            goto LABEL_307;
          }

          *v135 = v133;
          a3[19] += 2;
          a3[21] = v136;
          v137 = *(a3 + 88) - 16;
          *(a3 + 88) = v137;
          *(a3 + 89) = v131 << (v115 - v137);
        }

        v110 += v115;
        v112 = *v109;
      }

      if (i)
      {
        if (*(v109 + 1) <= v111)
        {
          v138 = *(v109 + 1);
        }

        else
        {
          v138 = v190;
        }

        v139 = v30;
        v140 = v30;
        v141 = v106;
        ddp_udc_int_bsod_skip(v139, v138 - v110 + 1);
        v106 = v141;
        v30 = v140;
        v110 = v138 + 1;
        v107 = *(a3 + 113);
        v108 = *(a3 + 112);
      }

      if (v107 == v108)
      {
        v109 = v201;
        v107 = v108;
      }

      else
      {
        v109 = (v106 + 8 * v107);
        if (v109 && (v109 < v106 || (v109 + 1) > v188 || v109 > v109 + 1))
        {
          goto LABEL_307;
        }

        *(a3 + 113) = ++v107;
      }
    }

    while (v110 < v111);
    v142 = a3[19];
    v143 = *(a3 + 88);
    v102 = v185;
    if ((v143 & 0xF) != 0)
    {
      v144 = &ddp_udc_int_gbl_msktab[v143 & 0xF];
      v145 = v144 + 1;
      v147 = v144 < ddp_udc_int_gbl_msktab || v145 > ddp_udc_int_gbl_chanary || v144 > v145;
      v101 = v186;
      if (v147)
      {
        goto LABEL_307;
      }

      v148 = *(a3 + 89);
      v143 += a3[22] & 0xF;
      *(a3 + 88) = v143;
      if (v143 >= 16)
      {
        if (v142 >= v142 + 1)
        {
          goto LABEL_307;
        }

        if ((v142 + 1) > a3[20])
        {
          goto LABEL_307;
        }

        v149 = a3[21];
        if (v142 < v149)
        {
          goto LABEL_307;
        }

        *v142 = v148;
        v142 = (a3[19] + 2);
        a3[19] = v142;
        a3[21] = v149;
        v143 = *(a3 + 88) - 16;
        *(a3 + 88) = v143;
        *(a3 + 89) = 0;
      }
    }

    else
    {
      v101 = v186;
    }
  }

  v150 = ((((8 * (v142 - *(a3 + 46))) & 0xFFFF0u) + v143) >> 4);
  if (!*(a3 + 114) && v150)
  {
    v151 = v101;
    v152 = v150;
    do
    {
      v153 = (v151 + 1) > v102 || v151 > v151 + 1;
      if (v153 || v151 < v101)
      {
        goto LABEL_307;
      }

      *v151 = bswap32(*v151) >> 16;
      ++v151;
    }

    while (--v152);
  }

  if (v184 + v104 + v182 + v183 + v105)
  {
    return;
  }

  LODWORD(v192) = 0;
  if (v150 > 0x800)
  {
    goto LABEL_307;
  }

  v155 = a3[1638];
  *&v191 = (2 * v150);
  *(&v191 + 1) = v155;
  v156 = (v102 + (v32 - 4095));
  if (v156 >= v181 || v156 < v102 || v156 + 1 >= v181 || v156 + 1 < v102)
  {
    goto LABEL_307;
  }

  v157 = __rev16(*v156);
  v158 = v155 + 4096;
  v159 = v155 + 7162;
  v160 = v155 + 4096 + (v32 - 4095) + 2;
  *&v199 = v157;
  *(&v199 + 1) = v160;
  *&v200 = v159;
  *(&v200 + 1) = v158;
  a3[1655] = *(a3 + 6892) + 1;
  memset(v201, 170, sizeof(v201));
  v161 = a3[3];
  if (!v161)
  {
    return;
  }

  v162 = a3[2];
  if (!v162)
  {
    return;
  }

  v164 = *a3;
  v163 = a3[1];
  *(a3 + 17) = 0;
  if (!v157)
  {
    return;
  }

  *&v165 = 0xAAAAAAAAAAAAAAAALL;
  *(&v165 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v205 = 0xAAAAAAAAAAAAAAAALL;
  v202 = v165;
  v203 = v165;
  v204 = 0xAAAAAAAAAAAAAAAALL;
  v206 = v161;
  v207 = v161 + v163;
  v208 = v161;
  v209 = 0xAAAAAAAAAAAAAAAALL;
  v210 = v161 + 16;
  v211 = v161 + v163;
  v212 = v161;
  if (v160 > v159 || v157 > v159 - v160 || v158 > v160)
  {
    goto LABEL_307;
  }

  if (v160)
  {
    *(&v202 + 1) = v160;
    *&v203 = v160 + v157;
    LOWORD(v202) = 8;
    *(&v203 + 1) = v160;
    v204 = 8 * v157;
  }

  v166 = a3[1653];
  v167 = a3[1657];
  v201[2] = v166;
  if ((v167 & 7) != 0)
  {
    v168 = 8 - (v167 & 7);
    v169 = v167 + v168;
    if (v167 + v168 > v167 + v166 || v169 < v167)
    {
      goto LABEL_307;
    }

    v166 -= v168;
  }

  else
  {
    v169 = v167;
  }

  if (v166 <= 0x37)
  {
    goto LABEL_307;
  }

  if (!v169 || v169 != v167)
  {
    return;
  }

  if (v166 - 56 <= 0x1F)
  {
    goto LABEL_307;
  }

  v201[0] = v169 + 88;
  v201[1] = v166 - 88;
  *(v167 + 16) = v169 + 56;
  if (v169 == -56)
  {
    return;
  }

  if (v167 > v169 + 56)
  {
    goto LABEL_307;
  }

  v170 = ddp_udc_int_evo_parse_bitstream(&v202, v201, (a3 + 1653), &v205, v167);
  if (v170)
  {
    goto LABEL_299;
  }

  a3[1658] = v201[2] - v201[1];
  if (v162 + 12 > (v162 + v164) || v162 > v162 + 12)
  {
LABEL_307:
    __break(0x5519u);
    return;
  }

  v170 = ddp_udc_int_evo_check_bitstream_protection(&v191, &v199, &v205, *(v167 + 4), v162, a3 + 17);
  if (v205)
  {
    v171 = 0;
    do
    {
      v172 = (v206 + v171);
      if (v206 + v171 >= v207 || v172 < v208)
      {
        goto LABEL_307;
      }

      ddp_udc_int_evo_brw_write(&v202, *v172, 8u);
    }

    while (++v171 < v205);
  }

  if (v209)
  {
    v174 = 0;
    do
    {
      v175 = (v210 + v174);
      if (v210 + v174 >= v211 || v175 < v212)
      {
        goto LABEL_307;
      }

      ddp_udc_int_evo_brw_write(&v202, *v175, 8u);
    }

    while (++v174 < v209);
  }

  if (v170)
  {
    v177 = a3[1658];
    if (v177 <= a3[1653])
    {
      v178 = a3[1657];
      bzero(v178, a3[1658]);
      if (v178 <= &v178[v177])
      {
        a3[1658] = 0;
LABEL_299:
        if (v170 != 7)
        {
          return;
        }

        goto LABEL_300;
      }
    }

    goto LABEL_307;
  }

LABEL_300:
  v179 = *(a3 + 17);
  v180 = a3[9];
  *(a3 + 16) = 2 * (v179 != 3);
  if (v179 == 3 && *(v180 + 24) >= 0x33uLL)
  {
    *(a3 + 16) = 2;
  }

  ddp_udc_int_evod_remove_md_from_evo_frame_by_id(v180, 0x1Eu);
  v35 = *(a3 + 16);
  if (v35)
  {
    goto LABEL_35;
  }

  if (!*(a3[9] + 24))
  {
    *(a3 + 16) = 1;
LABEL_37:
    if (*(a3 + 6892))
    {
      *a3[9] = *(a3 + 1721);
      v36 = *(a3 + 6892);
      if (v36 >= 1)
      {
        v37 = (a3 + 1737);
        v38 = (a3 + 3569);
        do
        {
          v39 = v37 - 104;
          if (v37 != 104 && (v39 < (a3 + 1724) || v37 > (a3 + 2374) || v39 > v37))
          {
            goto LABEL_307;
          }

          if (v38 < a3 + 3569 || v38 + 1 > a3 + 3619 || v38 > v38 + 1)
          {
            goto LABEL_307;
          }

          *v38++ = v39;
          v37 += 104;
        }

        while (--v36);
      }

      v40 = a3[9];
      v40[4] = a3 + 3569;
      v40[5] = a3 + 3619;
      v40[6] = a3 + 3569;
      v41 = *(a3 + 6892);
      v42 = a3[9];
      *(v42 + 16) = a3 + 3619;
      *(v42 + 24) = v41;
      *(a3 + 6892) = 0;
    }

    else
    {
      v42 = a3[9];
      *(v42 + 24) = 0;
    }

    *(a3 + 16) = 0;
    goto LABEL_124;
  }

LABEL_34:
  v35 = *(a3 + 16);
LABEL_35:
  if (v35)
  {
    if (v35 != 1)
    {
      return;
    }

    goto LABEL_37;
  }

  v42 = a3[9];
  *(a3 + 3623) = *v42;
  if (*(v42 + 24))
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = (a3 + 4276);
    v47 = v42 + 56;
    v48 = (a3 + 3626);
    v49 = v42;
    v50 = a3 + 4276;
    while (1)
    {
      v51 = v49[4];
      v52 = v49[5];
      v53 = v49[6];
      v54 = (v51 + 8 * v43);
      if ((v54 + 1) > v52 || v54 > v54 + 1 || v54 < v53)
      {
        goto LABEL_307;
      }

      v57 = *v54;
      if (*(v57 + 20))
      {
        v58 = *(v57 + 24);
        if (v58 >= 0x600)
        {
          if (v42 > v47)
          {
            goto LABEL_307;
          }

          goto LABEL_88;
        }

        v59 = v58 + *(a3 + 11050);
      }

      else
      {
        *(v57 + 20) = 1;
        v59 = *(a3 + 11050);
      }

      *(v57 + 24) = v59;
      v34 = v59 >= 0x600;
      v60 = v59 - 1536;
      if (!v34)
      {
        goto LABEL_89;
      }

      *(v57 + 24) = v60;
      v61 = (v48 + 104 * v45);
      v62 = v61 + 13;
      if (v61 < v48 || v62 > v46 || v61 > v62)
      {
        goto LABEL_307;
      }

      v61[10] = v50;
      v61[11] = a3 + 43762;
      v61[12] = v46;
      v65 = a3[9];
      v66 = v65[5];
      v67 = v65[6];
      v68 = v65[4] + 8 * v43;
      v69 = v68 + 8 > v66 || v68 > v68 + 8;
      if (v69 || v68 < v67)
      {
        goto LABEL_307;
      }

      v50 = (v50 + *(*v68 + 72));
      if (v50 - v46 > 9554)
      {
LABEL_126:
        v88 = 2;
        goto LABEL_127;
      }

      v71 = (*(v42 + 32) + 8 * v43);
      if ((v71 + 1) > *(v42 + 40))
      {
        goto LABEL_307;
      }

      if (v71 > v71 + 1)
      {
        goto LABEL_307;
      }

      if (v71 < *(v42 + 48))
      {
        goto LABEL_307;
      }

      evod_copy_payload(v61, *v71);
      if (v42 > v47)
      {
        goto LABEL_307;
      }

      ++v45;
LABEL_88:
      v44 -= evod_remove_md_from_evo_frame_by_index(v42, v44);
LABEL_89:
      v49 = a3[9];
      v72 = v49[3];
      v43 = ++v44;
      if (v72 <= v44)
      {
        v42 = a3[9];
        goto LABEL_104;
      }
    }
  }

  LODWORD(v72) = 0;
  LOWORD(v45) = 0;
LABEL_104:
  *(a3 + 14500) = v45;
  v79 = *(a3 + 6892);
  if (*(a3 + 6892))
  {
    if (v79 >= 1)
    {
      v80 = (a3 + 1737);
      while (1)
      {
        v81 = v80 - 104;
        if (v80 != 104 && (v81 < (a3 + 1724) || v80 > (a3 + 2374) || v81 > v80))
        {
          goto LABEL_307;
        }

        v82 = a3[9];
        v83 = v82[5];
        v84 = v82[6];
        v85 = (v82[4] + 8 * v72);
        v86 = (v85 + 1) > v83 || v85 > v85 + 1;
        if (v86 || v85 < v84)
        {
          goto LABEL_307;
        }

        *v85 = v81;
        LODWORD(v72) = v72 + 1;
        if (v72 > 0x32)
        {
          goto LABEL_126;
        }

        v80 += 104;
        if (!--v79)
        {
          v42 = a3[9];
          break;
        }
      }
    }

    *(v42 + 24) = v72;
  }

  if (!*(a3 + 16))
  {
LABEL_124:
    if (!*(v42 + 24))
    {
      v88 = 1;
LABEL_127:
      *(a3 + 16) = v88;
    }
  }
}

uint64_t ddp_udc_int_evod_remove_md_from_evo_frame_by_id(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = *(result + 24);
  if (v2)
  {
    v3 = 0;
    v4 = a2;
    while (1)
    {
      v5 = *(result + 32);
      v6 = *(result + 40);
      v7 = *(result + 48);
      v8 = (v5 + 8 * v3);
      v9 = (v8 + 1) > v6 || v8 >= v8 + 1;
      if (v9 || v8 < v7)
      {
        break;
      }

      if (**v8 == v4)
      {
        v11 = v3;
        if (v3 + 1 < v2)
        {
          v12 = 0;
          v13 = 0;
          v14 = 8 * (v3 + 1);
          while (1)
          {
            v15 = *(result + 32);
            v16 = *(result + 40);
            v17 = *(result + 48);
            v18 = v15 + v14;
            v19 = v15 + v14 + v12;
            v20 = v19 + 8 > v16 || v19 >= v19 + 8;
            v21 = !v20 && v19 >= v17;
            v22 = (v15 + 8 * (v3 + v13));
            v23 = v22 + 1;
            v24 = !v21 || v23 > v16;
            v25 = v24 || v22 >= v23;
            if (v25 || v22 < v17)
            {
              goto LABEL_47;
            }

            *v22 = *(v18 + 8 * v13++);
            v12 += 8;
            if (!(v3 + 1 - v2 + v13))
            {
              LODWORD(v11) = v3 + v13;
              v5 = *(result + 32);
              v6 = *(result + 40);
              v7 = *(result + 48);
              v11 = v11;
              break;
            }
          }
        }

        v27 = (v5 + 8 * v11);
        if ((v27 + 1) > v6 || v27 >= v27 + 1 || v27 < v7)
        {
          break;
        }

        *v27 = 0;
        LODWORD(v2) = v2 - 1;
        if (!v2)
        {
          goto LABEL_44;
        }

        --v3;
      }

      if (++v3 >= v2)
      {
LABEL_44:
        v2 = v2;
        goto LABEL_46;
      }
    }

LABEL_47:
    __break(0x5519u);
  }

  else
  {
    v2 = 0;
LABEL_46:
    *(result + 24) = v2;
  }

  return result;
}

uint64_t evod_remove_md_from_evo_frame_by_index(uint64_t result, int a2)
{
  v2 = *(result + 24);
  if (v2 <= a2)
  {
    return 0;
  }

  if (v2 - 1 <= a2)
  {
LABEL_23:
    v14 = (*(result + 32) + 8 * a2);
    if ((v14 + 1) <= *(result + 40) && v14 <= v14 + 1 && v14 >= *(result + 48))
    {
      *v14 = 0;
      *(result + 24) = v2 - 1;
      return 1;
    }
  }

  else
  {
    v3 = 8 * a2;
    v4 = v2 - 1 - a2;
    while (1)
    {
      v5 = *(result + 40);
      v6 = *(result + 48);
      v7 = (*(result + 32) + v3);
      v8 = v7 + 1;
      v9 = (v7 + 2) > v5 || v8 > v7 + 2;
      v10 = !v9 && v8 >= v6;
      v11 = !v10 || v8 > v5;
      v12 = v11 || v7 > v8;
      if (v12 || v7 < v6)
      {
        break;
      }

      *v7 = *v8;
      v3 += 8;
      if (!--v4)
      {
        a2 = v2 - 1;
        goto LABEL_23;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t evod_copy_payload(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 72) = *(a2 + 72);
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  *(result + 56) = *(a2 + 56);
  *(result + 40) = v4;
  *(result + 24) = v3;
  *(result + 8) = v2;
  v5 = *(a2 + 72);
  if (v5)
  {
    v7 = *(result + 88);
    v6 = *(result + 96);
    v9 = *(a2 + 88);
    v8 = *(a2 + 96);
    v10 = *(a2 + 80);
    v11 = *(result + 80);
    while (v10 < v9 && v10 >= v8 && v11 < v7 && v11 >= v6)
    {
      v12 = *v10++;
      *v11++ = v12;
      if (!--v5)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t ddp_udc_int_evod_generate_output(uint64_t a1, char *a2, unsigned int a3, int a4, uint64_t a5, int a6)
{
  v123 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    return *(a1 + 64);
  }

  if (!*(*(a1 + 72) + 24))
  {
    v21 = 1;
LABEL_119:
    *(a1 + 64) = v21;
    return *(a1 + 64);
  }

  v122 = 0xAAAAAAAAAAAAAAAALL;
  v120 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v118 = v10;
  v119 = v10;
  v11 = *(a5 + 79800);
  v12 = *(v11 + 8);
  if (v12 < 9)
  {
    v13 = *(v11 + 12);
    v14 = *(v11 + 14);
    v15 = *(v11 + 32);
    if (v12 == 8)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LOWORD(v10) = *(v11 + 24);
      WORD2(v10) = *(v11 + 26);
      *&v10 = vuzp1_s16(*&v10, *&v10);
      v20 = 32;
      goto LABEL_13;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  v18 = *(v11 + 182);
  v17 = *(v11 + 184);
  v13 = *(v11 + 12);
  v14 = *(v11 + 14);
  v15 = *(v11 + 32);
  if (v18 != 1)
  {
    v16 = 0;
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v16 = *(v11 + 194);
  v19 = 1;
LABEL_12:
  *&v10 = *(v11 + 80);
  v20 = 4 * (*(v11 + 8) & 0x1F);
LABEL_13:
  *(a1 + 13208) = 0;
  v22 = (v18 | v17) == 0;
  v23 = (a1 + 13112);
  *(a1 + 13176) = 0u;
  *(a1 + 13192) = 0u;
  v24 = a1 + 13216;
  *(a1 + 13144) = 0u;
  *(a1 + 13160) = 0u;
  *(a1 + 13112) = 0u;
  *(a1 + 13128) = 0u;
  if (a1 + 13112 > (a1 + 13216))
  {
    goto LABEL_160;
  }

  *v23 = 30;
  LOWORD(v122) = ((v17 & 7) << 11) | (v18 << 14) | ((v13 & 7) << 8) | ((v14 & 1) << 7) | v20 | (v15 >> 3) & 3;
  v25 = v15 << 13;
  if (v19)
  {
    v13 = &v122 + 4;
    WORD1(v122) = v25 | (v16 >> 3);
    v25 = v16 << 13;
  }

  else
  {
    v13 = &v122 + 2;
  }

  v26 = vand_s8(vshl_u16(*&v10, 0x100070004000ALL), 0xE038000701C00);
  v27 = v26.i16[0] | v26.i16[2] | v25 | ((v26.i32[0] | v26.i32[1]) >> 16);
  if (v18 | v17)
  {
    v28 = 15;
  }

  else
  {
    if (v13 >= v13 + 2 || v13 + 2 > &v123)
    {
      goto LABEL_160;
    }

    v28 = 0;
    *v13 = v27 | (a6 != 0);
    v13 += 2;
    v27 = 0;
  }

  *(a1 + 13184) = ((v28 & 0xF | (16 * ((v13 - (&vars0 - 96)) >> 1))) + 7) >> 3;
  *(a1 + 13192) = v24;
  *(a1 + 13200) = a1 + 13222;
  *(a1 + 13208) = v24;
  if ((v22 & 1) == 0)
  {
    v22 = ddp_udc_int_gbl_msktab;
    if (&ddp_udc_int_gbl_msktab[16 - v28] < ddp_udc_int_gbl_msktab || v13 > v13 + 2 || v13 + 2 > &v123 || v13 < &v122)
    {
      goto LABEL_160;
    }

    *v13 = v27;
  }

  v115 = &v122;
  v116 = &v123;
  v117 = &v122;
  v114[0] = &v118;
  v114[1] = &v121;
  v114[2] = &v118;
  ddp_udc_int_bsod_init(&v115, 0, v114);
  if (*(a1 + 13184))
  {
    v13 = 0;
    while (1)
    {
      v29 = WORD5(v119) << SBYTE8(v119) << 8;
      if (SWORD4(v119) < 9)
      {
        v33 = WORD4(v119) + 8;
      }

      else
      {
        v22 = v119;
        v30 = (v118 + 2);
        v32 = (v118 + 4) <= *(&v118 + 1) && v30 <= v118 + 4 && v30 >= v119;
        if (!v32)
        {
          break;
        }

        v33 = WORD4(v119) - 8;
        WORD5(v119) = *v30;
        *&v118 = v118 + 2;
        v29 |= WORD5(v119) << (BYTE8(v119) - 8);
      }

      WORD4(v119) = v33;
      v34 = (*(a1 + 13192) + v13);
      if (v34 >= *(a1 + 13200) || v34 < *(a1 + 13208))
      {
        break;
      }

      *v34 = BYTE2(v29);
      if (++v13 >= *(a1 + 13184))
      {
        goto LABEL_47;
      }
    }

LABEL_160:
    while (1)
    {
      __break(0x5519u);
LABEL_161:
      v83 = 247;
LABEL_162:
      if (v22 < 1)
      {
        v106 = 0;
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        do
        {
          if ((v83 >> v89))
          {
            v91 = *(a2 + 3) + v88;
            if (v91 + 24 > *(a2 + 4) || v91 > v91 + 24 || v91 < *(a2 + 5))
            {
              goto LABEL_160;
            }

            if (*v91)
            {
              v94 = (*(a1 + 13280) + 24 * v90);
              v22 = (v94 + 3);
              if ((v94 + 3) > *(a1 + 13288) || v94 > v22 || v94 < *(a1 + 13296))
              {
                goto LABEL_160;
              }

              v22 = *v94;
              v97 = v94[1];
              v98 = v94[2];
              if (v22 + 32 > v97 || v98 > v22)
              {
                goto LABEL_160;
              }

              v100 = *(v91 + 8);
              *(v22 + 8) = *v91;
              *(v22 + 16) = v100;
              v22 = *(a1 + 13280) + 24 * v90;
              v101 = (v22 + 24) > *(a1 + 13288) || v22 > (v22 + 24);
              if (v101 || v22 < *(a1 + 13296))
              {
                goto LABEL_160;
              }

              v103 = *v22;
              v104 = *(v22 + 8);
              v22 = *(v22 + 16);
              if ((v103 + 8) > v104 || v22 > v103)
              {
                goto LABEL_160;
              }

              v22 = *(a2 + 1);
              ++v90;
              *v103 = *(a1 + 13312) * v22;
            }
          }

          ++v89;
          v88 += 24;
        }

        while (v22 > v89);
        v106 = v90;
      }

      a2 = &evo_keys + 16 * v13;
      *(a1 + 13272) = v106;
      if (!a2)
      {
        goto LABEL_118;
      }

      v13 = *(a1 + 16);
      if (v13 + 16 <= v13 + *a1)
      {
        v107 = *(v13 + 8);
        v108 = *v107;
        if (!v108)
        {
          goto LABEL_118;
        }

        v109 = *(v107 + 1);
        while (1)
        {
          v110 = *v109;
          if (**v109 == *a2)
          {
            break;
          }

          ++v109;
          v21 = 2;
          if (!--v108)
          {
            goto LABEL_119;
          }
        }

        v111 = *(v110 + 1);
        if (v111 != *(a2 + 1) || memcmp(v110[1], *(a2 + 1), v111) || *v23 < 0x21uLL)
        {
          goto LABEL_118;
        }

        v13 = *(a1 + 96);
        v112 = *(a1 + 88) + *v23 - 32;
        if (v112 <= v13)
        {
          v13 -= v112;
          if (v13 >= 32 && *(a1 + 104) <= v112)
          {
            if (ddp_udc_int_evo_calculate_pcm_protection((a1 + 13272), a2, v23, v112))
            {
              goto LABEL_118;
            }

            return *(a1 + 64);
          }
        }
      }
    }
  }

LABEL_47:
  v13 = *(a1 + 72);
  v36 = *(v13 + 24);
  v37 = (*(v13 + 32) + 8 * v36);
  if ((v37 + 1) > *(v13 + 40) || v37 > v37 + 1 || v37 < *(v13 + 48))
  {
    goto LABEL_160;
  }

  *v37 = v23;
  v40 = *(v13 + 48);
  v41 = *(v13 + 32) + 8 * v36;
  v42 = v41 + 8 > *(v13 + 40) || v41 > v41 + 8;
  if (v42 || v41 < v40)
  {
    goto LABEL_160;
  }

  *(*v41 + 20) = 1;
  v44 = *(v13 + 32) + 8 * v36;
  v45 = v44 + 8 > *(v13 + 40) || v44 > v44 + 8;
  if (v45 || v44 < v40)
  {
    goto LABEL_160;
  }

  *(*v44 + 24) = *(a1 + 44200);
  v47 = *(v13 + 32) + 8 * v36;
  if (v47 + 8 > *(v13 + 40))
  {
    goto LABEL_160;
  }

  if (v47 > v47 + 8)
  {
    goto LABEL_160;
  }

  if (v47 < v40)
  {
    goto LABEL_160;
  }

  *(*v47 + 32) = 1;
  v48 = *(v13 + 32) + 8 * v36;
  if (v48 + 8 > *(v13 + 40))
  {
    goto LABEL_160;
  }

  if (v48 > v48 + 8)
  {
    goto LABEL_160;
  }

  if (v48 < v40)
  {
    goto LABEL_160;
  }

  *(*v48 + 40) = 1536;
  *(v13 + 24) = v36 + 1;
  *(a1 + 80) = 3066;
  v23 = (a1 + 80);
  v49 = *(a1 + 72);
  *&v50 = 0xAAAAAAAAAAAAAAAALL;
  *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v118 = v50;
  v119 = v50;
  v120 = 0xAAAAAAAAAAAAAAAALL;
  v13 = *(a1 + 48);
  if (v13 + 16 > v13 + *(a1 + 32))
  {
    goto LABEL_160;
  }

  if (!v49 || *v13 != 1)
  {
    goto LABEL_118;
  }

  v13 = *(a1 + 88);
  v51 = *(a1 + 96);
  if (v13 > v51 || v51 - v13 < 0xBFA || *(a1 + 104) > v13)
  {
    goto LABEL_160;
  }

  if (v13)
  {
    *(&v118 + 1) = *(a1 + 88);
    *&v119 = v13 + 3066;
    LOWORD(v118) = 8;
    *(&v119 + 1) = v13;
    v120 = 24528;
  }

  v115 = simple_write_bits_10841;
  v116 = 0;
  v52 = *v49;
  if (v52 < 3)
  {
    v58 = 5;
  }

  else
  {
    v53 = 0;
    v54 = 1;
    while (1)
    {
      v32 = __CFADD__(v53++, 1);
      if (v32)
      {
        break;
      }

      v55 = 0;
      v56 = v54;
      do
      {
        v57 = 4 * v55;
        v55 = 4 * v55 + 4;
        --v56;
      }

      while (v56);
      if (v57 >= -3)
      {
        ++v54;
        if (v55 <= (v52 - 3))
        {
          continue;
        }
      }

      goto LABEL_95;
    }

    v53 = 0;
LABEL_95:
    v58 = 3 * v53 + 5;
  }

  v59 = v49[1];
  v60 = v59 - 7;
  if (v59 >= 7)
  {
    v61 = 0;
    v62 = 1;
    while (1)
    {
      v32 = __CFADD__(v61++, 1);
      if (v32)
      {
        break;
      }

      v63 = 0;
      v64 = v62;
      do
      {
        v22 = 8 * v63;
        v63 = 8 * v63 + 8;
        --v64;
      }

      while (v64);
      if (v22 >= -7)
      {
        ++v62;
        if (v63 <= v60)
        {
          continue;
        }
      }

      goto LABEL_105;
    }

    v61 = 0;
LABEL_105:
    v58 += 4 * v61;
  }

  v65 = (v58 + 261);
  if (v65 > 0x5FD0)
  {
    goto LABEL_118;
  }

  v13 = (v49 + 4);
  if (v49 + 4 < v49)
  {
    goto LABEL_160;
  }

  if (v52 < 3)
  {
    if (simple_write_bits_10841(&v118, v52, 2u))
    {
      goto LABEL_118;
    }
  }

  else if (simple_write_bits_10841(&v118, 3uLL, 2u) || write_variable_bits(*v49 - 3, 2u, &v118, &v115, v66, v67))
  {
    goto LABEL_118;
  }

  v68 = v49[1];
  if (v68 < 7)
  {
    if (!simple_write_bits_10841(&v118, v68, 3u))
    {
      goto LABEL_121;
    }

LABEL_118:
    v21 = 2;
    goto LABEL_119;
  }

  if (simple_write_bits_10841(&v118, 7uLL, 3u) || write_variable_bits(v49[1] - 7, 3u, &v118, &v115, v69, v70))
  {
    goto LABEL_118;
  }

LABEL_121:
  v72 = *(v49 + 3);
  if (v72)
  {
    v73 = 0;
    do
    {
      v13 = *(v49 + 4) + v73;
      if (v13 + 8 > *(v49 + 5) || v13 > v13 + 8 || v13 < *(v49 + 6))
      {
        goto LABEL_160;
      }

      v76 = *v13;
      if (*v13)
      {
        v13 = v76 + 104;
        if (v76 >= v76 + 104)
        {
          goto LABEL_160;
        }

        v65 += ddp_udc_int_evo_get_payload_size(v76);
        if (v65 >= 0x5FD1)
        {
          goto LABEL_118;
        }

        v13 = v76 + 104;
        if (v76 >= v76 + 104)
        {
          goto LABEL_160;
        }

        v77 = v76;
      }

      else
      {
        v65 += ddp_udc_int_evo_get_payload_size(0);
        if (v65 >= 0x5FD1)
        {
          goto LABEL_118;
        }

        v77 = 0;
      }

      ddp_udc_int_evo_write_payload(v77, &v118, &v115);
      v73 += 8;
      --v72;
    }

    while (v72);
  }

  simple_write_bits_10841(&v118, 0, 5u);
  ddp_udc_int_evo_brw_write(&v118, 0, v118 & 7);
  for (i = 0; i != 32; ++i)
  {
    ddp_udc_int_evo_brw_write(&v118, *(*(v49 + 2) + i), 8u);
  }

  v79 = (24528 - v120) >> 3;
  *(a1 + 80) = v79;
  v80 = *(a1 + 64);
  if (a4 && a2 && !v80)
  {
    if (*(a2 + 3))
    {
      v22 = *(a2 + 1);
      if (v22 != 1)
      {
        v81 = *(a1 + 72);
        if (v81)
        {
          v13 = *(v81 + 4);
          v21 = 2;
          if (v13 <= 1)
          {
            *(a1 + 13304) = 256;
            if (*(a2 + 4) == 4)
            {
              v82 = 2;
            }

            else
            {
              v82 = 4;
            }

            *(a1 + 13312) = v82;
            if (a3 < 0x1D)
            {
              v83 = ddp_udc_int_gbl_full_chantab[a3];
              goto LABEL_162;
            }

            goto LABEL_161;
          }

          goto LABEL_119;
        }

        goto LABEL_118;
      }
    }
  }

  else if (!v80)
  {
    v84 = *(a1 + 96);
    v13 = *(a1 + 88) + v79;
    v85 = (v13 - 32);
    if (v13 - 32 > v84)
    {
      goto LABEL_160;
    }

    if (v84 - v85 < 0x20 || *(a1 + 104) > v85)
    {
      goto LABEL_160;
    }

    *&v87 = 0xABABABABABABABABLL;
    *(&v87 + 1) = 0xABABABABABABABABLL;
    *v85 = v87;
    *(v13 - 16) = v87;
    if (v85 > v13)
    {
      goto LABEL_160;
    }
  }

  return *(a1 + 64);
}

unint64_t ddp_udc_int_evod_do_posts(unint64_t result)
{
  v1 = result;
  *(result + 13768) = *(result + 28984);
  v2 = *(result + 29000);
  *(result + 13784) = *(result + 29000);
  if (v2 < 1)
  {
LABEL_14:
    *(v1 + 29000) = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 18992;
    v18 = result + 28546;
    v6 = 13792;
    v19 = result + 13792;
    v7 = 29008;
    v17 = result + 29008;
    v8 = result + 34208;
    v9 = 29112;
    v10 = 13896;
    v11 = result + 18992;
    while (1)
    {
      result = v1 + v6;
      v12 = v1 + v10;
      v13 = v1 + v6 < v19 || v12 > v5;
      if (v13 || result > v12)
      {
        break;
      }

      v15 = (v1 + v3);
      v15[1734] = v11;
      v15[1735] = v18;
      v15[1736] = v5;
      v16 = v1 + v7;
      if (v1 + v7 < v17 || v1 + v9 > v8 || v16 > v1 + v9)
      {
        break;
      }

      v11 += *(v1 + v3 + 29080);
      result = evod_copy_payload(result, v16);
      ++v4;
      v3 += 104;
      v7 += 104;
      v9 += 104;
      v6 += 104;
      v10 += 104;
      if (v4 >= *(v1 + 29000))
      {
        goto LABEL_14;
      }
    }

    __break(0x5519u);
  }

  return result;
}

__int16 *ddp_udc_int_bsie_pacdd(__int16 *result, uint64_t a2)
{
  v2 = result + 1;
  if (result + 1 < result)
  {
    goto LABEL_280;
  }

  v3 = *result;
  v4 = *(a2 + 24);
  v5 = *(a2 + 26) | (v3 >> v4);
  *(a2 + 26) |= v3 >> v4;
  v6 = v4 + 16;
  *(a2 + 24) = v4 + 16;
  if (v4 >> 4 <= 0x7FE)
  {
    v7 = *a2;
    v8 = *(a2 + 16);
    v9 = *a2 + 2;
    if (v9 > *(a2 + 8) || v7 > v9 || v7 < v8)
    {
      goto LABEL_280;
    }

    *v7 = v5;
    *a2 += 2;
    *(a2 + 16) = v8;
    v6 = *(a2 + 24) - 16;
    *(a2 + 24) = v6;
    v5 = v3 << (16 - v6);
    *(a2 + 26) = v5;
  }

  v12 = result + 2;
  if (result + 2 < v2)
  {
    goto LABEL_280;
  }

  v13 = *v2;
  v14 = v5 | (v13 >> v6);
  *(a2 + 26) = v14;
  v15 = v6 + 16;
  *(a2 + 24) = v6 + 16;
  if ((v6 >> 4) <= 0x7FEu)
  {
    v16 = *a2;
    v17 = *a2 + 2;
    if (v17 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v16 > v17)
    {
      goto LABEL_280;
    }

    v18 = *(a2 + 16);
    if (v16 < v18)
    {
      goto LABEL_280;
    }

    *v16 = v14;
    *a2 += 2;
    *(a2 + 16) = v18;
    v15 = *(a2 + 24) - 16;
    *(a2 + 24) = v15;
    v14 = v13 << (16 - v15);
    *(a2 + 26) = v14;
  }

  v19 = result + 3;
  if (result + 3 < v12)
  {
    goto LABEL_280;
  }

  v20 = (*v12 & 3) << 14;
  v21 = v14 | (v20 >> v15);
  *(a2 + 26) = v21;
  v22 = v15 + 2;
  *(a2 + 24) = v15 + 2;
  if ((v15 + 2) >= 16)
  {
    v23 = *a2;
    v24 = *a2 + 2;
    if (v24 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v23 > v24)
    {
      goto LABEL_280;
    }

    v25 = *(a2 + 16);
    if (v23 < v25)
    {
      goto LABEL_280;
    }

    *v23 = v21;
    *a2 += 2;
    *(a2 + 16) = v25;
    v22 = *(a2 + 24) - 16;
    *(a2 + 24) = v22;
    v21 = v20 << (2 - v22);
    *(a2 + 26) = v21;
  }

  v26 = result + 4;
  if (result + 4 < v19)
  {
    goto LABEL_280;
  }

  v27 = (*v19 & 0x3F) << 10;
  v28 = v21 | (v27 >> v22);
  *(a2 + 26) = v28;
  v29 = v22 + 6;
  *(a2 + 24) = v22 + 6;
  if ((v22 + 6) >= 16)
  {
    v30 = *a2;
    v31 = *a2 + 2;
    if (v31 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v30 > v31)
    {
      goto LABEL_280;
    }

    v32 = *(a2 + 16);
    if (v30 < v32)
    {
      goto LABEL_280;
    }

    *v30 = v28;
    *a2 += 2;
    *(a2 + 16) = v32;
    v29 = *(a2 + 24) - 16;
    *(a2 + 24) = v29;
    v28 = v27 << (6 - v29);
    *(a2 + 26) = v28;
  }

  v33 = result + 5;
  if (result + 5 < v26)
  {
    goto LABEL_280;
  }

  v34 = (*v26 & 0x1F) << 11;
  v35 = v28 | (v34 >> v29);
  *(a2 + 26) = v28 | (v34 >> v29);
  v36 = v29 + 5;
  LODWORD(v37) = (v29 + 5);
  *(a2 + 24) = v36;
  if (v37 >= 16)
  {
    v38 = *a2;
    v39 = *a2 + 2;
    if (v39 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v38 > v39)
    {
      goto LABEL_280;
    }

    v37 = *(a2 + 16);
    if (v38 < v37)
    {
      goto LABEL_280;
    }

    *v38 = v35;
    *a2 += 2;
    *(a2 + 16) = v37;
    LOWORD(v37) = *(a2 + 24) - 16;
    *(a2 + 24) = v37;
    v35 = v34 << (5 - v37);
    *(a2 + 26) = v35;
  }

  v40 = result + 6;
  if (result + 6 < v33)
  {
    goto LABEL_280;
  }

  v41 = (*v33 & 7) << 13;
  v42 = v35 | (v41 >> v37);
  *(a2 + 26) = v42;
  v43 = v37 + 3;
  *(a2 + 24) = v37 + 3;
  if ((v37 + 3) >= 16)
  {
    v44 = *a2;
    v45 = *a2 + 2;
    if (v45 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v44 > v45)
    {
      goto LABEL_280;
    }

    v46 = *(a2 + 16);
    if (v44 < v46)
    {
      goto LABEL_280;
    }

    *v44 = v42;
    *a2 += 2;
    *(a2 + 16) = v46;
    v43 = *(a2 + 24) - 16;
    *(a2 + 24) = v43;
    v42 = v41 << (3 - v43);
    *(a2 + 26) = v42;
  }

  v47 = result + 7;
  if (result + 7 < v40)
  {
    goto LABEL_280;
  }

  v48 = (*v40 & 7) << 13;
  v49 = v42 | (v48 >> v43);
  *(a2 + 26) = v49;
  v50 = v43 + 3;
  LODWORD(v51) = (v43 + 3);
  *(a2 + 24) = v50;
  if (v51 >= 16)
  {
    v51 = *a2;
    v52 = *a2 + 2;
    if (v52 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v51 > v52)
    {
      goto LABEL_280;
    }

    v53 = *(a2 + 16);
    if (v51 < v53)
    {
      goto LABEL_280;
    }

    *v51 = v49;
    *a2 += 2;
    *(a2 + 16) = v53;
    LOWORD(v51) = *(a2 + 24) - 16;
    *(a2 + 24) = v51;
    v49 = v48 << (3 - v51);
    *(a2 + 26) = v49;
  }

  v54 = *v40;
  if (v54 != 1 && (v54 & 1) != 0)
  {
    if (result + 13 < result + 12)
    {
      goto LABEL_280;
    }

    v55 = (result[12] & 3) << 14;
    v49 |= v55 >> v51;
    *(a2 + 26) = v49;
    v56 = v51 + 2;
    LODWORD(v51) = (v51 + 2);
    *(a2 + 24) = v56;
    if (v51 >= 16)
    {
      v51 = *a2;
      v57 = *a2 + 2;
      if (v57 > *(a2 + 8))
      {
        goto LABEL_280;
      }

      if (v51 > v57)
      {
        goto LABEL_280;
      }

      v58 = *(a2 + 16);
      if (v51 < v58)
      {
        goto LABEL_280;
      }

      *v51 = v49;
      *a2 += 2;
      *(a2 + 16) = v58;
      LOWORD(v51) = *(a2 + 24) - 16;
      *(a2 + 24) = v51;
      v49 = v55 << (2 - v51);
      *(a2 + 26) = v49;
    }
  }

  v59 = *v40;
  if ((v59 & 4) != 0)
  {
    if (result + 14 < result + 13)
    {
      goto LABEL_280;
    }

    v60 = (result[13] & 3) << 14;
    v49 |= v60 >> v51;
    *(a2 + 26) = v49;
    v61 = v51 + 2;
    LODWORD(v51) = (v51 + 2);
    *(a2 + 24) = v61;
    if (v51 >= 16)
    {
      v51 = *a2;
      v62 = *a2 + 2;
      if (v62 > *(a2 + 8))
      {
        goto LABEL_280;
      }

      if (v51 > v62)
      {
        goto LABEL_280;
      }

      v63 = *(a2 + 16);
      if (v51 < v63)
      {
        goto LABEL_280;
      }

      *v51 = v49;
      *a2 += 2;
      *(a2 + 16) = v63;
      LOWORD(v51) = *(a2 + 24) - 16;
      *(a2 + 24) = v51;
      v49 = v60 << (2 - v51);
      *(a2 + 26) = v49;
    }

    v59 = *v40;
  }

  if (v59 == 2)
  {
    if (result + 15 < result + 14)
    {
      goto LABEL_280;
    }

    v64 = (result[14] & 3) << 14;
    v49 |= v64 >> v51;
    *(a2 + 26) = v49;
    v65 = v51 + 2;
    LODWORD(v51) = (v51 + 2);
    *(a2 + 24) = v65;
    if (v51 >= 16)
    {
      v51 = *a2;
      v66 = *a2 + 2;
      if (v66 > *(a2 + 8))
      {
        goto LABEL_280;
      }

      if (v51 > v66)
      {
        goto LABEL_280;
      }

      v67 = *(a2 + 16);
      if (v51 < v67)
      {
        goto LABEL_280;
      }

      *v51 = v49;
      *a2 += 2;
      *(a2 + 16) = v67;
      LOWORD(v51) = *(a2 + 24) - 16;
      *(a2 + 24) = v51;
      v49 = v64 << (2 - v51);
      *(a2 + 26) = v49;
    }
  }

  if (result + 8 < v47)
  {
    goto LABEL_280;
  }

  v68 = (*v47 & 1) << 15;
  v69 = v49 | (v68 >> v51);
  *(a2 + 26) = v49 | (v68 >> v51);
  LODWORD(v70) = (v51 + 1);
  *(a2 + 24) = v51 + 1;
  if (v70 >= 16)
  {
    v71 = *a2;
    v72 = *a2 + 2;
    if (v72 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v71 > v72)
    {
      goto LABEL_280;
    }

    v73 = *(a2 + 16);
    if (v71 < v73)
    {
      goto LABEL_280;
    }

    *v71 = v69;
    *a2 += 2;
    *(a2 + 16) = v73;
    LOWORD(v70) = *(a2 + 24) - 16;
    *(a2 + 24) = v70;
    v69 = v68 << (1 - v70);
    *(a2 + 26) = v69;
  }

  if (result[10] >= 1)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = result + 22;
    v78 = result + 24;
    v79 = result + 26;
    v80 = result + 28;
    v81 = result + 30;
    v82 = 4;
    do
    {
      v83 = &result[v75 + 16];
      v84 = &result[v75 + 17];
      if (v84 < v83)
      {
        goto LABEL_280;
      }

      v85 = (*v83 & 0x1F) << 11;
      v86 = v69 | (v85 >> v70);
      *(a2 + 26) = v86;
      v87 = v70 + 5;
      LODWORD(v70) = (v70 + 5);
      *(a2 + 24) = v87;
      if (v70 >= 16)
      {
        v88 = *a2;
        v70 = *(a2 + 16);
        v89 = *a2 + 2;
        if (v89 > *(a2 + 8) || v88 > v89 || v88 < v70)
        {
          goto LABEL_280;
        }

        *v88 = v86;
        *a2 += 2;
        *(a2 + 16) = v70;
        LOWORD(v70) = *(a2 + 24) - 16;
        *(a2 + 24) = v70;
        v86 = v85 << (5 - v70);
        *(a2 + 26) = v86;
      }

      v92 = &result[v75 + 18];
      if (v92 < v84)
      {
        goto LABEL_280;
      }

      v93 = (*v84 & 1) << 15;
      v94 = v86 | (v93 >> v70);
      *(a2 + 26) = v94;
      v95 = v70 + 1;
      LODWORD(v70) = (v70 + 1);
      *(a2 + 24) = v95;
      if (v70 >= 16)
      {
        v70 = *a2;
        v96 = *a2 + 2;
        if (v96 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v70 > v96)
        {
          goto LABEL_280;
        }

        v97 = *(a2 + 16);
        if (v70 < v97)
        {
          goto LABEL_280;
        }

        *v70 = v94;
        *a2 += 2;
        *(a2 + 16) = v97;
        LOWORD(v70) = *(a2 + 24) - 16;
        *(a2 + 24) = v70;
        v94 = v93 << (1 - v70);
        *(a2 + 26) = v94;
      }

      if (v83 < result + 16)
      {
        goto LABEL_280;
      }

      v98 = &result[v75 + 19];
      if (v98 > v77 || v83 > v98)
      {
        goto LABEL_280;
      }

      if (*v84)
      {
        if (v98 < v92)
        {
          goto LABEL_280;
        }

        v99 = HIBYTE(result[v75 + 18]) << 8;
        v94 |= v99 >> v70;
        *(a2 + 26) = v94;
        v100 = v70 + 8;
        LODWORD(v70) = (v70 + 8);
        *(a2 + 24) = v100;
        if (v70 >= 16)
        {
          v70 = *a2;
          v101 = *a2 + 2;
          if (v101 > *(a2 + 8))
          {
            goto LABEL_280;
          }

          if (v70 > v101)
          {
            goto LABEL_280;
          }

          v102 = *(a2 + 16);
          if (v70 < v102)
          {
            goto LABEL_280;
          }

          *v70 = v94;
          *a2 += 2;
          *(a2 + 16) = v102;
          LOWORD(v70) = *(a2 + 24) - 16;
          *(a2 + 24) = v70;
          v94 = v99 << (8 - v70);
          *(a2 + 26) = v94;
        }
      }

      v103 = &result[v74 + 22];
      if (v103 > v78)
      {
        goto LABEL_280;
      }

      if (v77 > v103)
      {
        goto LABEL_280;
      }

      if (v82 < 1)
      {
        goto LABEL_280;
      }

      v104 = &result[v74 + 23];
      if (v104 < v103)
      {
        goto LABEL_280;
      }

      v105 = (*v103 & 1) << 15;
      v106 = v94 | (v105 >> v70);
      *(a2 + 26) = v106;
      v107 = v70 + 1;
      LODWORD(v70) = (v70 + 1);
      *(a2 + 24) = v107;
      if (v70 >= 16)
      {
        v70 = *a2;
        v108 = *a2 + 2;
        if (v108 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v70 > v108)
        {
          goto LABEL_280;
        }

        v109 = *(a2 + 16);
        if (v70 < v109)
        {
          goto LABEL_280;
        }

        *v70 = v106;
        *a2 += 2;
        *(a2 + 16) = v109;
        LOWORD(v70) = *(a2 + 24) - 16;
        *(a2 + 24) = v70;
        v106 = v105 << (1 - v70);
        *(a2 + 26) = v106;
      }

      if (v104 > v78)
      {
        goto LABEL_280;
      }

      if (*v103)
      {
        v110 = &result[v74 + 24];
        if (v110 > v79 || v78 > v110 || &result[v74 + 25] < v110)
        {
          goto LABEL_280;
        }

        v111 = *v110 << 8;
        v106 |= v111 >> v70;
        *(a2 + 26) = v106;
        v112 = v70 + 8;
        LODWORD(v70) = (v70 + 8);
        *(a2 + 24) = v112;
        if (v70 >= 16)
        {
          v70 = *a2;
          v113 = *a2 + 2;
          if (v113 > *(a2 + 8))
          {
            goto LABEL_280;
          }

          if (v70 > v113)
          {
            goto LABEL_280;
          }

          v114 = *(a2 + 16);
          if (v70 < v114)
          {
            goto LABEL_280;
          }

          *v70 = v106;
          *a2 += 2;
          *(a2 + 16) = v114;
          LOWORD(v70) = *(a2 + 24) - 16;
          *(a2 + 24) = v70;
          v106 = v111 << (8 - v70);
          *(a2 + 26) = v106;
        }
      }

      v115 = &result[v74 + 26];
      if (v115 > v80)
      {
        goto LABEL_280;
      }

      if (v79 > v115)
      {
        goto LABEL_280;
      }

      v116 = &result[v74 + 27];
      if (v116 < v115)
      {
        goto LABEL_280;
      }

      v117 = (*v115 & 1) << 15;
      v69 = v106 | (v117 >> v70);
      *(a2 + 26) = v69;
      v118 = v70 + 1;
      LODWORD(v70) = (v70 + 1);
      *(a2 + 24) = v118;
      if (v70 >= 16)
      {
        v70 = *a2;
        v119 = *a2 + 2;
        if (v119 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v70 > v119)
        {
          goto LABEL_280;
        }

        v120 = *(a2 + 16);
        if (v70 < v120)
        {
          goto LABEL_280;
        }

        *v70 = v69;
        *a2 += 2;
        *(a2 + 16) = v120;
        LOWORD(v70) = *(a2 + 24) - 16;
        *(a2 + 24) = v70;
        v69 = v117 << (1 - v70);
        *(a2 + 26) = v69;
      }

      if (v116 > v80)
      {
        goto LABEL_280;
      }

      if (*v115)
      {
        v121 = &result[v74 + 28];
        if (v121 > v81 || v80 > v121 || &result[v74 + 29] < v121)
        {
          goto LABEL_280;
        }

        v122 = (*v121 & 0x1F) << 11;
        v123 = v69 | (v122 >> v70);
        *(a2 + 26) = v123;
        v124 = v70 + 5;
        LODWORD(v70) = (v70 + 5);
        *(a2 + 24) = v124;
        if (v70 >= 16)
        {
          v70 = *a2;
          v125 = *a2 + 2;
          if (v125 > *(a2 + 8))
          {
            goto LABEL_280;
          }

          if (v70 > v125)
          {
            goto LABEL_280;
          }

          v126 = *(a2 + 16);
          if (v70 < v126)
          {
            goto LABEL_280;
          }

          *v70 = v123;
          *a2 += 2;
          *(a2 + 16) = v126;
          LOWORD(v70) = *(a2 + 24) - 16;
          *(a2 + 24) = v70;
          v123 = v122 << (5 - v70);
          *(a2 + 26) = v123;
        }

        v127 = &result[v74 + 30];
        if (v127 > result + 32 || v81 > v127 || &result[v74 + 31] < v127)
        {
          goto LABEL_280;
        }

        v128 = (*v127 & 3) << 14;
        v69 = v123 | (v128 >> v70);
        *(a2 + 26) = v69;
        v129 = v70 + 2;
        LODWORD(v70) = (v70 + 2);
        *(a2 + 24) = v129;
        if (v70 >= 16)
        {
          v70 = *a2;
          v130 = *a2 + 2;
          if (v130 > *(a2 + 8))
          {
            goto LABEL_280;
          }

          if (v70 > v130)
          {
            goto LABEL_280;
          }

          v131 = *(a2 + 16);
          if (v70 < v131)
          {
            goto LABEL_280;
          }

          *v70 = v69;
          *a2 += 2;
          *(a2 + 16) = v131;
          LOWORD(v70) = *(a2 + 24) - 16;
          *(a2 + 24) = v70;
          v69 = v128 << (2 - v70);
          *(a2 + 26) = v69;
        }
      }

      ++v76;
      v75 += 3;
      ++v74;
      v82 -= 2;
    }

    while (v76 < result[10]);
  }

  v132 = result + 33;
  if (result + 33 < result + 32)
  {
    goto LABEL_280;
  }

  v133 = (result[32] & 1) << 15;
  v134 = v69 | (v133 >> v70);
  *(a2 + 26) = v69 | (v133 >> v70);
  LODWORD(v135) = (v70 + 1);
  *(a2 + 24) = v70 + 1;
  if (v135 >= 16)
  {
    v136 = *a2;
    v137 = *a2 + 2;
    if (v137 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v136 > v137)
    {
      goto LABEL_280;
    }

    v135 = *(a2 + 16);
    if (v136 < v135)
    {
      goto LABEL_280;
    }

    *v136 = v134;
    *a2 += 2;
    *(a2 + 16) = v135;
    LOWORD(v135) = *(a2 + 24) - 16;
    *(a2 + 24) = v135;
    v134 = v133 << (1 - v135);
    *(a2 + 26) = v134;
  }

  v138 = result + 34;
  if (result + 34 < v132)
  {
LABEL_280:
    __break(0x5519u);
    return result;
  }

  v139 = (*v132 & 1) << 15;
  v140 = v134 | (v139 >> v135);
  *(a2 + 26) = v134 | (v139 >> v135);
  v141 = v135 + 1;
  LODWORD(v135) = (v135 + 1);
  *(a2 + 24) = v141;
  if (v135 >= 16)
  {
    v142 = *a2;
    v143 = *a2 + 2;
    if (v143 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v142 > v143)
    {
      goto LABEL_280;
    }

    v135 = *(a2 + 16);
    if (v142 < v135)
    {
      goto LABEL_280;
    }

    *v142 = v140;
    *a2 += 2;
    *(a2 + 16) = v135;
    LOWORD(v135) = *(a2 + 24) - 16;
    *(a2 + 24) = v135;
    v140 = v139 << (1 - v135);
    *(a2 + 26) = v140;
  }

  if (*v26 == 6)
  {
    v144 = result + 38;
    v145 = result + 39;
    if (result + 39 < result + 38)
    {
      goto LABEL_280;
    }

    v146 = (*v144 & 1) << 15;
    v147 = v140 | (v146 >> v135);
    *(a2 + 26) = v140 | (v146 >> v135);
    LODWORD(v148) = (v135 + 1);
    *(a2 + 24) = v135 + 1;
    if (v148 >= 16)
    {
      v148 = *a2;
      v149 = *a2 + 2;
      if (v149 > *(a2 + 8))
      {
        goto LABEL_280;
      }

      if (v148 > v149)
      {
        goto LABEL_280;
      }

      v150 = *(a2 + 16);
      if (v148 < v150)
      {
        goto LABEL_280;
      }

      *v148 = v147;
      *a2 += 2;
      *(a2 + 16) = v150;
      LOWORD(v148) = *(a2 + 24) - 16;
      *(a2 + 24) = v148;
      v147 = v146 << (1 - v148);
      *(a2 + 26) = v147;
    }

    if (*v144)
    {
      v151 = (result + 40);
      if (result + 40 < v145)
      {
        goto LABEL_280;
      }

      v152 = (*v145 & 3) << 14;
      v153 = v147 | (v152 >> v148);
      *(a2 + 26) = v147 | (v152 >> v148);
      v154 = (v148 + 2);
      *(a2 + 24) = v148 + 2;
      if (v154 >= 16)
      {
        v155 = *a2;
        v156 = *a2 + 2;
        if (v156 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v155 > v156)
        {
          goto LABEL_280;
        }

        v157 = *(a2 + 16);
        if (v155 < v157)
        {
          goto LABEL_280;
        }

        *v155 = v153;
        *a2 += 2;
        *(a2 + 16) = v157;
        LOWORD(v154) = *(a2 + 24) - 16;
        *(a2 + 24) = v154;
        v153 = v152 << (2 - v154);
        *(a2 + 26) = v153;
      }

      v158 = result + 41;
      if ((result + 41) < v151)
      {
        goto LABEL_280;
      }

      v159 = (*v151 & 7) << 13;
      v160 = v153 | (v159 >> v154);
      *(a2 + 26) = v160;
      LODWORD(v151) = (v154 + 3);
      *(a2 + 24) = v154 + 3;
      if (v151 >= 16)
      {
        v151 = *a2;
        v161 = *a2 + 2;
        if (v161 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v151 > v161)
        {
          goto LABEL_280;
        }

        v162 = *(a2 + 16);
        if (v151 < v162)
        {
          goto LABEL_280;
        }

        *v151 = v160;
        *a2 += 2;
        *(a2 + 16) = v162;
        LOWORD(v151) = *(a2 + 24) - 16;
        *(a2 + 24) = v151;
        v160 = v159 << (3 - v151);
        *(a2 + 26) = v160;
      }

      v163 = result + 42;
      if (result + 42 < v158)
      {
        goto LABEL_280;
      }

      v164 = (*v158 & 7) << 13;
      v165 = v160 | (v164 >> v151);
      *(a2 + 26) = v165;
      v166 = v151 + 3;
      *(a2 + 24) = v151 + 3;
      if ((v151 + 3) >= 16)
      {
        v167 = *a2;
        v168 = *a2 + 2;
        if (v168 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v167 > v168)
        {
          goto LABEL_280;
        }

        v169 = *(a2 + 16);
        if (v167 < v169)
        {
          goto LABEL_280;
        }

        *v167 = v165;
        *a2 += 2;
        *(a2 + 16) = v169;
        v166 = *(a2 + 24) - 16;
        *(a2 + 24) = v166;
        v165 = v164 << (3 - v166);
        *(a2 + 26) = v165;
      }

      v170 = result + 43;
      if (result + 43 < v163)
      {
        goto LABEL_280;
      }

      v171 = (*v163 & 7) << 13;
      v172 = v165 | (v171 >> v166);
      *(a2 + 26) = v165 | (v171 >> v166);
      v173 = v166 + 3;
      LODWORD(v174) = (v166 + 3);
      *(a2 + 24) = v173;
      if (v174 >= 16)
      {
        v175 = *a2;
        v176 = *a2 + 2;
        if (v176 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v175 > v176)
        {
          goto LABEL_280;
        }

        v174 = *(a2 + 16);
        if (v175 < v174)
        {
          goto LABEL_280;
        }

        *v175 = v172;
        *a2 += 2;
        *(a2 + 16) = v174;
        LOWORD(v174) = *(a2 + 24) - 16;
        *(a2 + 24) = v174;
        v172 = v171 << (3 - v174);
        *(a2 + 26) = v172;
      }

      if (result + 44 < v170)
      {
        goto LABEL_280;
      }

      v177 = (*v170 & 7) << 13;
      v147 = v172 | (v177 >> v174);
      *(a2 + 26) = v172 | (v177 >> v174);
      LODWORD(v148) = (v174 + 3);
      *(a2 + 24) = v174 + 3;
      if (v148 >= 16)
      {
        v148 = *a2;
        v178 = *a2 + 2;
        if (v178 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v148 > v178)
        {
          goto LABEL_280;
        }

        v179 = *(a2 + 16);
        if (v148 < v179)
        {
          goto LABEL_280;
        }

        *v148 = v147;
        *a2 += 2;
        *(a2 + 16) = v179;
        LOWORD(v148) = *(a2 + 24) - 16;
        *(a2 + 24) = v148;
        v147 = v177 << (3 - v148);
        *(a2 + 26) = v147;
      }
    }

    v180 = result + 46;
    v181 = result + 47;
    if (result + 47 < result + 46)
    {
      goto LABEL_280;
    }

    v182 = (*v180 & 1) << 15;
    v183 = v147 | (v182 >> v148);
    *(a2 + 26) = v183;
    v184 = v148 + 1;
    LODWORD(v148) = (v148 + 1);
    *(a2 + 24) = v184;
    if (v148 >= 16)
    {
      v148 = *a2;
      v185 = *a2 + 2;
      if (v185 > *(a2 + 8))
      {
        goto LABEL_280;
      }

      if (v148 > v185)
      {
        goto LABEL_280;
      }

      v186 = *(a2 + 16);
      if (v148 < v186)
      {
        goto LABEL_280;
      }

      *v148 = v183;
      *a2 += 2;
      *(a2 + 16) = v186;
      LOWORD(v148) = *(a2 + 24) - 16;
      *(a2 + 24) = v148;
      v183 = v182 << (1 - v148);
      *(a2 + 26) = v183;
    }

    if (*v180)
    {
      v187 = result + 48;
      if (result + 48 < v181)
      {
        goto LABEL_280;
      }

      v188 = (*v181 & 3) << 14;
      v189 = v183 | (v188 >> v148);
      *(a2 + 26) = v183 | (v188 >> v148);
      v190 = (v148 + 2);
      *(a2 + 24) = v148 + 2;
      if (v190 >= 16)
      {
        v191 = *a2;
        v192 = *a2 + 2;
        if (v192 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v191 > v192)
        {
          goto LABEL_280;
        }

        v193 = *(a2 + 16);
        if (v191 < v193)
        {
          goto LABEL_280;
        }

        *v191 = v189;
        *a2 += 2;
        *(a2 + 16) = v193;
        LOWORD(v190) = *(a2 + 24) - 16;
        *(a2 + 24) = v190;
        v189 = v188 << (2 - v190);
        *(a2 + 26) = v189;
      }

      v194 = result + 49;
      if (result + 49 < v187)
      {
        goto LABEL_280;
      }

      v195 = (*v187 & 3) << 14;
      v196 = v189 | (v195 >> v190);
      *(a2 + 26) = v189 | (v195 >> v190);
      LODWORD(v197) = (v190 + 2);
      *(a2 + 24) = v190 + 2;
      if (v197 >= 16)
      {
        v197 = *a2;
        v198 = *a2 + 2;
        if (v198 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v197 > v198)
        {
          goto LABEL_280;
        }

        v199 = *(a2 + 16);
        if (v197 < v199)
        {
          goto LABEL_280;
        }

        *v197 = v196;
        *a2 += 2;
        *(a2 + 16) = v199;
        LOWORD(v197) = *(a2 + 24) - 16;
        *(a2 + 24) = v197;
        v196 = v195 << (2 - v197);
        *(a2 + 26) = v196;
      }

      if (result + 50 < v194)
      {
        goto LABEL_280;
      }

      v200 = (*v194 & 1) << 15;
      v201 = v196 | (v200 >> v197);
      *(a2 + 26) = v201;
      v202 = v197 + 1;
      *(a2 + 24) = v197 + 1;
      if ((v197 + 1) >= 16)
      {
        v203 = *a2;
        v204 = *a2 + 2;
        if (v204 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v203 > v204)
        {
          goto LABEL_280;
        }

        v205 = *(a2 + 16);
        if (v203 < v205)
        {
          goto LABEL_280;
        }

        *v203 = v201;
        *a2 += 2;
        *(a2 + 16) = v205;
        v202 = *(a2 + 24) - 16;
        *(a2 + 24) = v202;
        v201 = v200 << (1 - v202);
        *(a2 + 26) = v201;
      }

      v206 = result + 54;
      if (result + 54 < result + 53)
      {
        goto LABEL_280;
      }

      v207 = result[53] << 8;
      LODWORD(v148) = v201 | (v207 >> v202);
      *(a2 + 26) = v148;
      v208 = v202 + 8;
      LODWORD(v209) = (v202 + 8);
      *(a2 + 24) = v208;
      if (v209 >= 16)
      {
        v209 = *a2;
        v210 = *a2 + 2;
        if (v210 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v209 > v210)
        {
          goto LABEL_280;
        }

        v211 = *(a2 + 16);
        if (v209 < v211)
        {
          goto LABEL_280;
        }

        *v209 = v148;
        *a2 += 2;
        *(a2 + 16) = v211;
        LOWORD(v209) = *(a2 + 24) - 16;
        *(a2 + 24) = v209;
        LODWORD(v148) = v207 << (8 - v209);
        *(a2 + 26) = v148;
      }

      if (result + 55 < v206)
      {
        goto LABEL_280;
      }

      v212 = (*v206 & 1) << 15;
      v183 = v148 | (v212 >> v209);
      *(a2 + 26) = v148 | (v212 >> v209);
      LOWORD(v148) = v209 + 1;
      *(a2 + 24) = v209 + 1;
      if ((v209 + 1) >= 16)
      {
        v213 = *a2;
        v214 = *a2 + 2;
        if (v214 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v213 > v214)
        {
          goto LABEL_280;
        }

        v215 = *(a2 + 16);
        if (v213 < v215)
        {
          goto LABEL_280;
        }

        *v213 = v183;
        *a2 += 2;
        *(a2 + 16) = v215;
        v216 = 1;
        goto LABEL_265;
      }
    }
  }

  else
  {
    v217 = result + 35;
    if (result + 35 < v138)
    {
      goto LABEL_280;
    }

    v218 = (*v138 & 1) << 15;
    v219 = v140 | (v218 >> v135);
    *(a2 + 26) = v140 | (v218 >> v135);
    LODWORD(v220) = (v135 + 1);
    *(a2 + 24) = v135 + 1;
    if (v220 >= 16)
    {
      v220 = *a2;
      v221 = *a2 + 2;
      if (v221 > *(a2 + 8))
      {
        goto LABEL_280;
      }

      if (v220 > v221)
      {
        goto LABEL_280;
      }

      v222 = *(a2 + 16);
      if (v220 < v222)
      {
        goto LABEL_280;
      }

      *v220 = v219;
      *a2 += 2;
      *(a2 + 16) = v222;
      LOWORD(v220) = *(a2 + 24) - 16;
      *(a2 + 24) = v220;
      v219 = v218 << (1 - v220);
      *(a2 + 26) = v219;
    }

    if (*v138)
    {
      if (result + 36 < v217)
      {
        goto LABEL_280;
      }

      v223 = 4 * (*v217 & 0x3FFF);
      v219 |= v223 >> v220;
      *(a2 + 26) = v219;
      v224 = v220 + 14;
      LODWORD(v220) = (v220 + 14);
      *(a2 + 24) = v224;
      if (v220 >= 16)
      {
        v220 = *a2;
        v225 = *a2 + 2;
        if (v225 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v220 > v225)
        {
          goto LABEL_280;
        }

        v226 = *(a2 + 16);
        if (v220 < v226)
        {
          goto LABEL_280;
        }

        *v220 = v219;
        *a2 += 2;
        *(a2 + 16) = v226;
        LOWORD(v220) = *(a2 + 24) - 16;
        *(a2 + 24) = v220;
        v219 = v223 << (14 - v220);
        *(a2 + 26) = v219;
      }
    }

    v227 = result + 36;
    v228 = result + 37;
    if (result + 37 < result + 36)
    {
      goto LABEL_280;
    }

    v229 = (*v227 & 1) << 15;
    v183 = v219 | (v229 >> v220);
    *(a2 + 26) = v183;
    LOWORD(v148) = v220 + 1;
    *(a2 + 24) = v220 + 1;
    if ((v220 + 1) >= 16)
    {
      v148 = *a2;
      v230 = *a2 + 2;
      if (v230 > *(a2 + 8))
      {
        goto LABEL_280;
      }

      if (v148 > v230)
      {
        goto LABEL_280;
      }

      v231 = *(a2 + 16);
      if (v148 < v231)
      {
        goto LABEL_280;
      }

      *v148 = v183;
      *a2 += 2;
      *(a2 + 16) = v231;
      LOWORD(v148) = *(a2 + 24) - 16;
      *(a2 + 24) = v148;
      v183 = v229 << (1 - v148);
      *(a2 + 26) = v183;
    }

    if (*v227)
    {
      if (result + 38 < v228)
      {
        goto LABEL_280;
      }

      v212 = 4 * (*v228 & 0x3FFF);
      v183 |= v212 >> v148;
      *(a2 + 26) = v183;
      v232 = v148 + 14;
      LODWORD(v148) = (v148 + 14);
      *(a2 + 24) = v232;
      if (v148 >= 16)
      {
        v233 = *a2;
        v234 = *a2 + 2;
        if (v234 > *(a2 + 8))
        {
          goto LABEL_280;
        }

        if (v233 > v234)
        {
          goto LABEL_280;
        }

        v235 = *(a2 + 16);
        if (v233 < v235)
        {
          goto LABEL_280;
        }

        *v233 = v183;
        *a2 += 2;
        *(a2 + 16) = v235;
        v216 = 14;
LABEL_265:
        LOWORD(v148) = *(a2 + 24) - 16;
        *(a2 + 24) = v148;
        v183 = v212 << (v216 - v148);
        *(a2 + 26) = v183;
      }
    }
  }

  v236 = result + 57;
  v237 = result + 58;
  if (result + 58 < result + 57)
  {
    goto LABEL_280;
  }

  v238 = (*v236 & 1) << 15;
  v239 = v183 | (v238 >> v148);
  *(a2 + 26) = v239;
  v240 = v148 + 1;
  *(a2 + 24) = v148 + 1;
  if ((v148 + 1) >= 16)
  {
    v241 = *a2;
    v242 = *a2 + 2;
    if (v242 > *(a2 + 8))
    {
      goto LABEL_280;
    }

    if (v241 > v242)
    {
      goto LABEL_280;
    }

    v243 = *(a2 + 16);
    if (v241 < v243)
    {
      goto LABEL_280;
    }

    *v241 = v239;
    *a2 += 2;
    *(a2 + 16) = v243;
    v240 = *(a2 + 24) - 16;
    *(a2 + 24) = v240;
    v239 = v238 << (1 - v240);
    *(a2 + 26) = v239;
  }

  if (!*v236)
  {
    return result;
  }

  if (result + 59 < v237)
  {
    goto LABEL_280;
  }

  v244 = (*v237 & 0x3F) << 10;
  v245 = v239 | (v244 >> v240);
  *(a2 + 26) = v245;
  *(a2 + 24) = v240 + 6;
  if ((v240 + 6) < 16)
  {
    return result;
  }

  v246 = *a2;
  v247 = *a2 + 2;
  if (v247 > *(a2 + 8))
  {
    goto LABEL_280;
  }

  if (v246 > v247)
  {
    goto LABEL_280;
  }

  v248 = *(a2 + 16);
  if (v246 < v248)
  {
    goto LABEL_280;
  }

  *v246 = v245;
  *a2 += 2;
  *(a2 + 16) = v248;
  v249 = *(a2 + 24) - 16;
  *(a2 + 24) = v249;
  *(a2 + 26) = v244 << (6 - v249);
  return result;
}

uint64_t *ddp_udc_int_converter_query_mem(uint64_t *result, void *a2, _DWORD *a3)
{
  v3 = a3[11];
  v4 = 22679;
  if (!a3[10])
  {
    v4 = 19905;
  }

  *result = v4;
  if (v3)
  {
    *result = v4 + 37770;
  }

  v5 = a3[1];
  *a2 += 4 * (*a3 << 6) + 1086;
  *result += 4 * (v5 << 6) + 24327;
  return result;
}

float *apply_clipgain(float *result, unsigned int a2, float a3, float a4)
{
  if (a2 > 3 || (v4 = a4 - a3, (a4 - a3) == 0.0))
  {
    v7 = (result + 64);
    if (((result + 31) & 0xFFFFFFFFFFFFFFE0) == result)
    {
      v8 = 64;
      for (i = result; i >= result && (i + 1) <= v7 && i <= i + 1; ++i)
      {
        *i = *i * a4;
        if (!--v8)
        {
          return result;
        }
      }
    }

    else
    {
      v10 = 64;
      for (j = result; j >= result && (j + 1) <= v7 && j <= j + 1; ++j)
      {
        *j = *j * a4;
        if (!--v10)
        {
          return result;
        }
      }
    }

    __break(0x5519u);
  }

  else
  {
    v5 = 0;
    v6 = ((v4 * 0.0039062) * (a2 << 6)) + a3;
    do
    {
      result[v5] = v6 * result[v5];
      v6 = (v4 * 0.0039062) + v6;
      ++v5;
    }

    while (v5 != 64);
  }

  return result;
}

void ddp_udc_int_converter_clear_lfe_history(uint64_t a1)
{
  v2 = *(a1 + 264);
  v1 = *(a1 + 272);
  if (v2 > v1 || ((v3 = 4 * (*(a1 + 188) << 6), v4 = v1 - v2, *(a1 + 280) <= v2) ? (v5 = v3 > v4) : (v5 = 1), v5 || (bzero(*(a1 + 264), v3), v2 > v2 + v3)))
  {
    __break(0x5519u);
  }
}

uint64_t ddp_udc_int_bso_copy(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; result; result = (result - v3))
  {
    if (result >= 0x10)
    {
      v3 = 16;
    }

    else
    {
      v3 = result;
    }

    v4 = *(a2 + 24);
    v5 = *(a2 + 26) << v4;
    v6 = v4 + v3;
    v7 = v6;
    *(a2 + 24) = v6;
    v8 = v6 - 16;
    if (v7 >= 16)
    {
      v9 = (*a2 + 2);
      v10 = *a2 + 4;
      if (v10 > *(a2 + 8) || v9 > v10 || v9 < *(a2 + 16))
      {
LABEL_22:
        __break(0x5519u);
        return result;
      }

      v13 = *v9;
      *(a2 + 26) = v13;
      *a2 = v9;
      *(a2 + 24) = v8;
      v5 |= v13 >> (v3 - v8);
    }

    v14 = v5 & (0xFFFF0000 >> v3) & ddp_udc_int_gbl_msktab[v3];
    v15 = *(a3 + 24);
    v16 = *(a3 + 26) | (v14 >> v15);
    *(a3 + 26) |= v14 >> v15;
    v17 = v15 + v3;
    *(a3 + 24) = v17;
    if (v17 > 15)
    {
      v18 = *a3;
      v19 = *a3 + 2;
      if (v19 > *(a3 + 8))
      {
        goto LABEL_22;
      }

      if (v18 > v19)
      {
        goto LABEL_22;
      }

      v20 = *(a3 + 16);
      if (v18 < v20)
      {
        goto LABEL_22;
      }

      *v18 = v16;
      *a3 += 2;
      *(a3 + 16) = v20;
      v21 = *(a3 + 24) - 16;
      *(a3 + 24) = v21;
      *(a3 + 26) = v14 << (v3 - v21);
    }
  }

  return result;
}

void *ddp_udc_int_evo_pb_init(void *result, unint64_t a2, unint64_t a3)
{
  if (result + 4 < result)
  {
    goto LABEL_18;
  }

  v3 = a2 + a3;
  if (a2)
  {
    if ((a2 & 7) != 0)
    {
      v4 = a2 + 1;
      do
      {
        if (a3)
        {
          --a3;
        }

        else
        {
          a3 = 0;
        }
      }

      while ((v4++ & 7) != 0);
      v6 = a2 - (a2 & 7) + 8;
    }

    else
    {
      v6 = a2;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (v7 && v6 >= a2 && a3 <= v8)
  {
    result[2] = v6;
    result[3] = a3;
    *result = 0;
    result[1] = 0;
  }

  else
  {
LABEL_18:
    __break(0x5519u);
  }

  return result;
}

void cod_amr_reset(char *a1, int a2)
{
  *(a1 + 1132) = a2;
  ***(a1 + 561) = 0;
  v2 = *(*(a1 + 560) + 80);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  if (v2 < v2 + 40)
  {
    v4 = *(a1 + 560);
    *v4 = lsp_init_data;
    *(v4 + 16) = unk_19B326FCC;
    *(v4 + 32) = 0xBF75A1CBBF575F70;
    if (v4 < v4 + 40)
    {
      v5 = *(a1 + 560);
      *(v5 + 40) = lsp_init_data;
      *(v5 + 56) = unk_19B326FCC;
      *(v5 + 72) = 0xBF75A1CBBF575F70;
      if (v5 + 40 <= (v5 + 80))
      {
        v6 = 0;
        v7 = *(a1 + 562);
        v8 = v7[5];
        v9 = v7[6];
        do
        {
          *(v8 + v6) = 783;
          *(v9 + v6) = 783;
          v6 += 4;
        }

        while (v6 != 16);
        v10 = v7[7];
        *v10 = 0;
        v10[1] = 0;
        *(v10 + 22) = 0;
        v10[2] = 0;
        v11 = *(a1 + 562);
        *v11 = 0u;
        v11[1] = 0u;
        *(*(a1 + 562) + 32) = 0;
        v12 = *(a1 + 563);
        *v12 = 0x2800000000;
        *(v12 + 8) = 0;
        v13 = *(a1 + 564);
        *v13 = 0;
        v13[1] = 0;
        *(v13 + 22) = 0;
        v13[2] = 0;
        v14 = **(a1 + 559);
        *v14 = 1065353216;
        *(v14 + 20) = 0u;
        *(v14 + 36) = 0;
        *(v14 + 4) = 0u;
        if (v14 + 4 <= (v14 + 44))
        {
          v15 = *(a1 + 565);
          *(v15 + 234) = 0;
          *(v15 + 144) = 0;
          v16 = (v15 + 168);
          *(v15 + 152) = 0;
          *(v15 + 160) = 0;
          *(v15 + 196) = 0;
          *(v15 + 212) = 0;
          *(v15 + 204) = 0;
          *(v15 + 224) = 0;
          v17 = 5;
          while ((v16 + 1) <= v15 + 188 && v16 < v16 + 1)
          {
            *v16++ = 0;
            if (!--v17)
            {
              v19 = 0;
              while (1)
              {
                v20 = v15 + v19;
                *(v15 + v19) = 1125515264;
                v21 = v15 + v19 + 76;
                v22 = (v15 + v19 + 72);
                if (v21 > v15 + 108 || v22 > v21)
                {
                  goto LABEL_34;
                }

                *v22 = 1125515264;
                v24 = v20 + 40;
                if (v20 + 40 > (v15 + 72))
                {
                  goto LABEL_34;
                }

                v25 = (v20 + 36);
                if (v25 > v24)
                {
                  goto LABEL_34;
                }

                *v25 = 1125515264;
                v26 = v15 + v19 + 112;
                if (v26 > v15 + 144)
                {
                  goto LABEL_34;
                }

                v27 = (v15 + v19 + 108);
                if (v27 > v26)
                {
                  goto LABEL_34;
                }

                *v27 = 0;
                v19 += 4;
                if (v19 == 36)
                {
                  v28 = 0;
                  *(v15 + 238) = 0;
                  *(v15 + 220) = 0;
                  *(v15 + 188) = vdup_n_s32(0x3ECCCCCDu);
                  v29 = *(a1 + 567);
                  *(v29 + 358) = 0;
                  *(v29 + 352) = 0;
                  while (1)
                  {
                    v30 = *(a1 + 567) + v28;
                    *v30 = lsp_init_data;
                    *(v30 + 16) = unk_19B326FCC;
                    *(v30 + 32) = 0xBF75A1CBBF575F70;
                    if (v30 >= v30 + 40)
                    {
                      goto LABEL_34;
                    }

                    v28 += 40;
                    if (v28 == 320)
                    {
                      v31 = *(a1 + 567);
                      *(v31 + 320) = 0u;
                      *(v31 + 336) = 0u;
                      if (v31 + 320 <= (v31 + 352))
                      {
                        *(*(a1 + 567) + 366) = 1966087;
                        *(a1 + 167) = a1 + 640;
                        *(a1 + 168) = a1 + 1280;
                        *(a1 + 169) = a1;
                        *(a1 + 160) = a1 + 480;
                        *(a1 + 161) = a1 + 1280;
                        *(a1 + 162) = a1;
                        *(a1 + 163) = a1 + 320;
                        *(a1 + 164) = a1 + 1280;
                        *(a1 + 165) = a1;
                        *(a1 + 166) = a1 + 160;
                        *(a1 + 322) = a1 + 1932;
                        *(a1 + 323) = a1 + 2572;
                        *(a1 + 324) = a1 + 1360;
                        *(a1 + 486) = a1 + 3244;
                        *(a1 + 487) = a1 + 3884;
                        *(a1 + 488) = a1 + 2628;
                        *(a1 + 515) = a1 + 3956;
                        *(a1 + 608) = a1 + 4704;
                        *(a1 + 609) = a1 + 4864;
                        *(a1 + 610) = a1 + 4664;
                        *(a1 + 516) = a1 + 4312;
                        *(a1 + 517) = a1 + 4472;
                        *(a1 + 518) = a1 + 4152;
                        bzero(a1, 0x500uLL);
                        bzero(a1 + 2628, 0x268uLL);
                        bzero(a1 + 1360, 0x23CuLL);
                        *(a1 + 4040) = 0u;
                        *(a1 + 4056) = 0u;
                        *(a1 + 4008) = 0u;
                        *(a1 + 4024) = 0u;
                        *(a1 + 3976) = 0u;
                        *(a1 + 3992) = 0u;
                        *(a1 + 3944) = 0u;
                        *(a1 + 3960) = 0u;
                        *(a1 + 3912) = 0u;
                        *(a1 + 3928) = 0u;
                        *(a1 + 4152) = 0u;
                        *(a1 + 4168) = 0u;
                        *(a1 + 4184) = 0u;
                        *(a1 + 4200) = 0u;
                        *(a1 + 4216) = 0u;
                        *(a1 + 4232) = 0u;
                        *(a1 + 4248) = 0u;
                        *(a1 + 4264) = 0u;
                        *(a1 + 4280) = 0u;
                        *(a1 + 4296) = 0u;
                        v32 = a1 + 2600;
                        *(a1 + 293) = 0u;
                        *(a1 + 292) = 0u;
                        *(a1 + 291) = 0u;
                        *(a1 + 290) = 0u;
                        *(a1 + 289) = 0u;
                        *(a1 + 288) = 0u;
                        *(a1 + 287) = 0u;
                        *(a1 + 286) = 0u;
                        *(a1 + 285) = 0u;
                        v33 = 5;
                        *(a1 + 284) = 0u;
                        while (v32 + 1 <= a1 + 655 && v32 < v32 + 1)
                        {
                          *v32++ = 40;
                          if (!--v33)
                          {
                            *(a1 + 1222) = 0;
                            return;
                          }
                        }
                      }

                      goto LABEL_34;
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

LABEL_34:
  __break(0x5519u);
}

void *cod_amr(uint64_t a1)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v794 = v10;
  v819 = v11;
  v813 = v12;
  v1049[1] = *MEMORY[0x1E69E9840];
  i = &v904;
  *&v15 = -1;
  *(&v15 + 1) = -1;
  v1013[2] = v15;
  v1013[1] = v15;
  v1013[0] = v15;
  v1012[2] = v15;
  v1012[1] = v15;
  v1012[0] = v15;
  v1011[2] = v15;
  v1011[1] = v15;
  v1011[0] = v15;
  v1010[1] = v15;
  v1010[0] = v15;
  v1009[2] = v15;
  v1009[1] = v15;
  v1009[0] = v15;
  v1008[2] = v15;
  v1008[1] = v15;
  v1008[0] = v15;
  v1007[2] = v15;
  v1007[1] = v15;
  v1007[0] = v15;
  v1006[1] = v15;
  v1006[0] = v15;
  v1004 = -1;
  v1003 = v15;
  v1002 = v15;
  v1001 = v15;
  v1000 = v15;
  v999 = v15;
  v998 = v15;
  v997 = v15;
  v996 = v15;
  v995 = v15;
  v994 = v15;
  v993 = v15;
  __A = v15;
  v991[9] = v15;
  v991[8] = v15;
  v991[7] = v15;
  v991[6] = v15;
  v991[5] = v15;
  v991[4] = v15;
  v991[3] = v15;
  v991[2] = v15;
  v991[1] = v15;
  v991[0] = v15;
  v990 = v15;
  v989 = v15;
  v988 = v15;
  v987 = v15;
  v986 = v15;
  v985 = v15;
  v984 = v15;
  v983 = v15;
  v982 = v15;
  v981 = v15;
  __B[9] = v15;
  __B[8] = v15;
  __B[7] = v15;
  __B[6] = v15;
  __B[5] = v15;
  __B[4] = v15;
  __B[3] = v15;
  __B[2] = v15;
  __B[1] = v15;
  __B[0] = v15;
  v979 = v15;
  v978 = v15;
  v977 = v15;
  v976 = v15;
  v975 = v15;
  v974 = v15;
  v973 = v15;
  v972 = v15;
  v971 = v15;
  v970 = v15;
  v968 = -1;
  LOWORD(mm) = -1;
  v969 = -1;
  v966 = v15;
  v967 = v15;
  v964 = v15;
  v965 = v15;
  v962 = v15;
  v963 = v15;
  v960 = v15;
  v961 = v15;
  v958 = v15;
  v959 = v15;
  v956 = v15;
  v957 = v15;
  v954 = v15;
  v955 = v15;
  v952 = v15;
  v953 = v15;
  v950 = v15;
  v951 = v15;
  v948 = v15;
  v949 = v15;
  v946 = v15;
  v947 = v15;
  v944 = v15;
  v945 = v15;
  v942 = v15;
  v943 = v15;
  v940 = v15;
  v941 = v15;
  v938 = v15;
  v939 = v15;
  v936 = v15;
  v937 = v15;
  v934 = v15;
  v935 = v15;
  v932 = v15;
  v933 = v15;
  v930 = v15;
  v931 = v15;
  v928 = v15;
  v929 = v15;
  v926 = v15;
  v927 = v15;
  v924 = v15;
  v925 = v15;
  v922 = v15;
  v923 = v15;
  v920 = v15;
  v921 = v15;
  v918 = v15;
  v919 = v15;
  v916 = v15;
  v917 = v15;
  v914 = v15;
  v915 = v15;
  v912 = v15;
  v913 = v15;
  v910 = v15;
  v911 = v15;
  v908 = v15;
  v909 = v15;
  v906 = -1;
  v904 = v15;
  v905 = v15;
  v902 = -1;
  v900 = v15;
  v901 = v15;
  v899 = -1;
  v897 = v15;
  v898 = v15;
  v891 = 0;
  *&v890 = NAN;
  LODWORD(v15) = -1431655766;
  v896 = 0xAAAAAAAAAAAAAAAALL;
  v16 = *(v6 + 1336);
  v17 = *(v6 + 1344);
  _CF = v17 >= v16;
  nn = v17 - v16;
  if (!_CF)
  {
    goto LABEL_1457;
  }

  p_A = v6;
  mm = *(v6 + 1352);
  if (mm > v16)
  {
    goto LABEL_1457;
  }

  if (nn <= 0x27F)
  {
    goto LABEL_1457;
  }

  LODWORD(v3) = v7;
  memcpy(*(v6 + 1336), v8, 0x280uLL);
  LOWORD(nn) = v16 + 640;
  if (v16 >= v16 + 640)
  {
    goto LABEL_1457;
  }

  if (!*(p_A + 4528))
  {
    *v819 = v3;
    goto LABEL_195;
  }

  v16 = *(p_A + 4520);
  nn = *(p_A + 1344);
  mm = *(p_A + 1352);
  v19 = *(p_A + 1336) - 160;
  LODWORD(v4) = 0;
  i = -8;
  v20 = v19;
  do
  {
    v21 = v20 + 1;
    v22 = (v20 + 1) > nn || v20 > v21;
    _CF = !v22 && v20 >= mm;
    v24 = v20 + 2;
    v27 = _CF && v24 <= nn && v21 <= v24 && v21 >= mm;
    v28 = v20 + 3;
    v31 = v27 && v28 <= nn && v24 <= v28 && v24 >= mm;
    v32 = v20 + 4;
    v35 = v31 && v32 <= nn && v28 <= v32 && v28 >= mm;
    v36 = v20 + 5;
    v39 = v35 && v36 <= nn && v32 <= v36 && v32 >= mm;
    v40 = v20 + 6;
    v43 = v39 && v40 <= nn && v36 <= v40 && v36 >= mm;
    v44 = v20 + 7;
    v47 = v43 && v44 <= nn && v40 <= v44 && v40 >= mm;
    v9 = (v20 + 8);
    if (!v47 || v9 > nn || v44 > v9 || v44 < mm)
    {
      goto LABEL_1457;
    }

    *&v15 = ((((((*&v4 + (*v20 * *v20)) + (v20[1] * v20[1])) + (v20[2] * v20[2])) + (v20[3] * v20[3])) + (v20[4] * v20[4])) + (v20[5] * v20[5])) + (v20[6] * v20[6]);
    *&v4 = *&v15 + (v20[7] * v20[7]);
    i += 8;
    v20 += 8;
  }

  while (i < 0x98);
  LODWORD(v15) = 1210548224;
  if (*&v4 < 171520.0)
  {
    *(v16 + 200) &= 0x3FFFu;
  }

  i = &qword_19B0B0000;
  v5 = 7500.0;
  if (*&v4 < 7500.0)
  {
    i = *(v16 + 216) & 0x3FFF;
    *(v16 + 216) &= 0x3FFFu;
  }

  if (v19 <= nn && mm <= v19)
  {
    nn -= v19;
    if (nn >= 637)
    {
      memset(__b, 255, 0x280uLL);
      v51 = 0;
      _D2 = *(v16 + 144);
      __asm { FMOV            V1.2S, #0.25 }

      _S4 = 1044885504;
      do
      {
        v56 = &__b[v51];
        _D5 = vmla_f32(vmul_f32(_D2, 0xBE47B000BF2B8600), _D1, *(v19 + v51));
        v58 = _D2.f32[0] + (_D5.f32[0] * 0.67001);
        __asm { FMLA            S2, S4, V5.S[1] }

        *v56 = v58 + _S2;
        v56[1] = v58 - _S2;
        _D2 = vmla_f32(vmul_f32(_D5, 0xBE47B000BF2B8600), _D1, *(v19 + v51 + 8));
        _D5.f32[0] = _D5.f32[0] + (_D2.f32[0] * 0.67001);
        __asm { FMLA            S7, S4, V2.S[1] }

        v56[2] = _D5.f32[0] + _S7;
        v56[3] = _D5.f32[0] - _S7;
        v51 += 16;
      }

      while (v51 != 640);
      v61 = 0;
      v63.i32[0] = *(v16 + 152);
      v64.i32[0] = *(v16 + 156);
      v63.i32[1] = *(v16 + 160);
      v64.i32[1] = *(v16 + 164);
      v65 = vdup_n_s32(0xBF2B8600);
      v66 = vdup_n_s32(0xBE47B000);
      v67 = vdupq_n_s32(0x3E47B000u);
      *(v16 + 144) = _D2;
      v68 = vdupq_n_s32(0x3F2B8600u);
      v69.i64[0] = 0x3F0000003F000000;
      v69.i64[1] = 0x3F0000003F000000;
      do
      {
        *v70.f32 = v64;
        *v71.f32 = v63;
        v63 = vmla_f32(*&__b[v61], v65, v63);
        v64 = vmla_f32(*&__b[v61 + 8], v66, v64);
        *v72.f32 = v64;
        *&v72.u32[2] = v64;
        v70.i64[1] = v70.i64[0];
        *v73.f32 = v63;
        *&v73.u32[2] = v63;
        v74 = vmlaq_f32(v70, v67, v72);
        v71.i64[1] = v71.i64[0];
        v75 = vmlaq_f32(v71, v68, v73);
        v72.i64[0] = vaddq_f32(v75, v74).u64[0];
        v72.i64[1] = vsubq_f32(v75, v74).i64[1];
        *&__b[v61] = vmulq_f32(v72, v69);
        v61 += 16;
      }

      while (v61 != 640);
      v76 = 0;
      v62 = (v16 + 152);
      vst2_f32(v62, *v63.f32);
      v77 = *(v16 + 168);
      v78 = *(v16 + 172);
      v79 = *(v16 + 184);
      do
      {
        v80 = v79;
        v81 = v78;
        v82 = v77;
        v83 = &__b[v76];
        v84 = *&__b[v76 + 12];
        v77 = *&__b[v76 + 16] + (v77 * -0.40781);
        v85 = v82 + (v77 * 0.40781);
        v86 = *&__b[v76];
        v83[4] = (v86 - v85) * 0.5;
        *v83 = (v86 + v85) * 0.5;
        v78 = *&__b[v76 + 24] + (v81 * -0.40781);
        v87 = v81 + (v78 * 0.40781);
        v88 = *&__b[v76 + 8];
        v89 = (v88 - v87) * 0.5;
        v90 = v88 + v87;
        v79 = *&__b[v76 + 28] + (v80 * -0.40781);
        v91 = v80 + (v79 * 0.40781);
        v83[6] = v89;
        v83[7] = (v84 - v91) * 0.5;
        v83[2] = v90 * 0.5;
        v83[3] = (v84 + v91) * 0.5;
        v76 += 32;
      }

      while (v76 != 640);
      v92 = 0;
      *(v16 + 168) = v77;
      *(v16 + 172) = v78;
      *(v16 + 184) = v79;
      v93 = *(v16 + 176);
      v94 = *(v16 + 180);
      do
      {
        v95 = v94;
        v96 = v93;
        v97 = &__b[v92];
        v93 = *&__b[v92 + 32] + (v93 * -0.40781);
        v98 = v96 + (v93 * 0.40781);
        v99 = *&__b[v92];
        v97[8] = (v99 - v98) * 0.5;
        *v97 = (v99 + v98) * 0.5;
        v94 = *&__b[v92 + 48] + (v95 * -0.40781);
        v100 = v95 + (v94 * 0.40781);
        v101 = *&__b[v92 + 16];
        v97[12] = (v101 - v100) * 0.5;
        v97[4] = (v101 + v100) * 0.5;
        v92 += 64;
      }

      while (v92 != 640);
      *(v16 + 176) = v93;
      *(v16 + 180) = v94;
      *&v1039[0] = __b;
      *(&v1039[0] + 1) = &__b[640];
      *&v1039[1] = __b;
      v1 = v16 + 108;
      level_calculation(v1039, (v16 + 140), 0x20u, 0x28u, 4, 1);
      LODWORD(v1039[2]) = v102;
      *v1040 = __b;
      *&v1040[8] = &__b[640];
      *&v1040[16] = __b;
      level_calculation(v1040, (v16 + 136), 0x10u, 0x14u, 8, 7);
      HIDWORD(v1039[1]) = v103;
      *v1040 = __b;
      *&v1040[8] = &__b[640];
      *&v1040[16] = __b;
      level_calculation(v1040, (v16 + 132), 0x10u, 0x14u, 8, 3);
      DWORD2(v1039[1]) = v104;
      *v1040 = __b;
      *&v1040[8] = &__b[640];
      *&v1040[16] = __b;
      level_calculation(v1040, (v16 + 128), 0x10u, 0x14u, 8, 2);
      DWORD1(v1039[1]) = v105;
      *v1040 = __b;
      *&v1040[8] = &__b[640];
      *&v1040[16] = __b;
      level_calculation(v1040, (v16 + 124), 0x10u, 0x14u, 8, 6);
      LODWORD(v1039[1]) = v106;
      *v1040 = __b;
      *&v1040[8] = &__b[640];
      *&v1040[16] = __b;
      level_calculation(v1040, (v16 + 120), 8u, 0xAu, 16, 4);
      HIDWORD(v1039[0]) = v107;
      *v1040 = __b;
      *&v1040[8] = &__b[640];
      *&v1040[16] = __b;
      level_calculation(v1040, (v16 + 116), 8u, 0xAu, 16, 12);
      DWORD2(v1039[0]) = v108;
      *v1040 = __b;
      *&v1040[8] = &__b[640];
      *&v1040[16] = __b;
      level_calculation(v1040, (v16 + 112), 8u, 0xAu, 16, 8);
      DWORD1(v1039[0]) = v109;
      *v1040 = __b;
      *&v1040[8] = &__b[640];
      *&v1040[16] = __b;
      level_calculation(v1040, (v16 + 108), 8u, 0xAu, 16, 0);
      v110 = 0;
      LODWORD(v1039[0]) = v111;
      v112 = 0.0;
      do
      {
        v113 = *(v1039 + v110) / *(v16 + v110);
        v112 = v112 + (v113 * v113);
        v110 += 4;
      }

      while (v110 != 36);
      v114 = v112 * 56.889;
      *&v15 = ((((((((*v16 + *(v16 + 4)) + *(v16 + 8)) + *(v16 + 12)) + *(v16 + 16)) + *(v16 + 20)) + *(v16 + 24)) + *(v16 + 28)) + *(v16 + 32)) * 0.11111;
      v115 = (*&v15 * -0.085714) + 1260.0;
      if (v115 < 720.0)
      {
        v115 = 720.0;
      }

      LODWORD(nn) = *(v16 + 196) >> 1;
      if (v114 > v115)
      {
        LODWORD(nn) = nn | 0x4000;
      }

      *(v16 + 196) = nn;
      v116 = *(v16 + 188);
      v117 = *(v16 + 192);
      v118 = (&unk_19B0AFB28 + 4 * (v117 < 0.6));
      if (v116 < v117)
      {
        v118 = (&unk_19B0AFB20 + 4 * (v117 < 0.6));
      }

      v119 = (v117 - (*v118 * v117)) + (*v118 * v116);
      if (v119 >= 0.4)
      {
        v120 = v119;
      }

      else
      {
        v120 = 0.4;
      }

      if (*&v4 < 7500.0)
      {
        v121 = 0.4;
      }

      else
      {
        v121 = v120;
      }

      *(v16 + 192) = v121;
      v122 = vshr_n_s32(*(v16 + 212), 1uLL);
      *(v16 + 212) = v122;
      v123 = v122.i32[1];
      v124 = v122.i32[0];
      if (*&v4 >= 7500.0)
      {
        if (v120 > 0.6)
        {
          v124 = v122.i32[0] | 0x4000;
          *(v16 + 212) = v122.i32[0] | 0x4000;
        }

        if (v120 > 0.5)
        {
          v123 = v122.i32[1] | 0x4000;
          *(v16 + 216) = v122.i32[1] | 0x4000;
        }
      }

      if (v121 <= 0.7)
      {
        LOWORD(mm) = 0;
      }

      else
      {
        LOWORD(mm) = *(v16 + 236) + 1;
      }

      i = v16 + 36;
      *(v16 + 236) = mm;
      v125 = (~v124 & 0x7F80) == 0;
      v126 = (~v123 & 0x7FFF) == 0 || v125;
      *(v16 + 220) = v126;
      if (v126 == 1 && *(v16 + 232) <= 4)
      {
        *(v16 + 232) = 5;
      }

      v127 = *(v16 + 200);
      if ((~v127 & 0x6000) == 0 || (~*(v16 + 224) & 0x7C00) == 0 || (nn & 0x7F80) == 0)
      {
        goto LABEL_144;
      }

      v9 = v16 + 72;
      v128 = v1039;
      v129 = 0.0;
      v130 = 9;
      v131 = (v16 + 36);
      do
      {
        if ((v131 + 1) > v9 || v131 > v131 + 1)
        {
          goto LABEL_1457;
        }

        v133 = *v128;
        v128 = (v128 + 4);
        v134 = v133;
        v135 = *v131++;
        v136 = v135;
        v137 = v134 <= v135;
        if (v134 <= v135)
        {
          v138 = v134;
        }

        else
        {
          v138 = v136;
        }

        if (v137)
        {
          v134 = v136;
        }

        v139 = 184.0;
        if (v134 < 184.0)
        {
          v134 = 184.0;
        }

        if (v138 >= 184.0)
        {
          v139 = v138;
        }

        v129 = v129 + ((v134 / v139) * 64.0);
        --v130;
      }

      while (v130);
      if (v129 > 1000.0)
      {
LABEL_144:
        v140 = 0;
        *(v16 + 232) = 20;
LABEL_145:
        v141 = 1.0;
        goto LABEL_146;
      }

      v785 = *(v16 + 232);
      if ((nn & 0x4000) != 0)
      {
        if (!*(v16 + 232))
        {
          goto LABEL_1469;
        }

        *(v16 + 232) = --v785;
      }

      if (v785 == 20)
      {
        v140 = 0;
        goto LABEL_145;
      }

LABEL_1469:
      v141 = 0.1;
      if ((nn & 0x4000) == 0)
      {
        v141 = 0.5;
      }

      v140 = v785 == 0;
LABEL_146:
      v9 = v16 + 72;
      v142 = 40;
      while (i + 4 <= v9 && i <= i + 4)
      {
        *i = *i + (v141 * (*&__b[v142 + 1224] - *i));
        i += 4;
        v142 += 4;
        if (v142 == 76)
        {
          i = &loc_19B0A5000;
          if (((v127 | nn) & 0x7800) == 0 && !*(v16 + 234))
          {
            goto LABEL_1458;
          }

          if (v140 && !*(v16 + 234))
          {
            v144 = 2.0;
            v146 = 0.015;
            v145 = 0.057;
          }

          else
          {
            v144 = 0.0;
            v145 = 0.05;
            v146 = 0.0;
          }

          goto LABEL_157;
        }
      }

      goto LABEL_1457;
    }
  }

  while (1)
  {
LABEL_1457:
    __break(0x5519u);
LABEL_1458:
    v144 = 2.0;
    v146 = *(i + 4008);
    v145 = 0.064;
LABEL_157:
    i = 9;
    v147 = v9;
    do
    {
      if ((v147 + 1) > v1 || v147 > v147 + 1)
      {
        goto LABEL_1457;
      }

      v149 = *(v147 - 18);
      v150 = *v147 - v149;
      if (v150 >= 0.0)
      {
        v153 = v144 + (v149 + (v146 * v150));
        *(v147 - 18) = v153;
        v152 = 1182400512;
        if (v153 <= 16000.0)
        {
          goto LABEL_167;
        }

LABEL_166:
        *(v147 - 18) = v152;
        goto LABEL_167;
      }

      v151 = (v149 + (v145 * v150)) + -2.0;
      *(v147 - 18) = v151;
      v152 = 1109393408;
      if (v151 < 40.0)
      {
        goto LABEL_166;
      }

LABEL_167:
      ++v147;
      --i;
    }

    while (i);
    for (i = 76; i != 112; i += 4)
    {
      if (v9 + 4 > v1 || v9 > v9 + 4)
      {
        goto LABEL_1457;
      }

      *v9 = *&__b[i + 1188];
      v9 += 4;
    }

    if (*&v15 <= 100.0)
    {
      v155 = 4;
    }

    else
    {
      v155 = 7;
    }

    v9 = 5;
    if (*&v15 <= 100.0)
    {
      v156 = 5;
    }

    else
    {
      v156 = 4;
    }

    if (*&v4 < v5)
    {
      v158 = 0;
      *(v16 + 228) = 0;
      *(v16 + 234) = 0;
LABEL_185:
      LOWORD(nn) = 1;
      goto LABEL_189;
    }

    v9 = mm;
    v157 = *(v16 + 234);
    if (v9 < 101)
    {
      if (*(v16 + 234))
      {
        goto LABEL_187;
      }

      if ((nn & 0x3FF0) != 0 || (LODWORD(v15) = *(v16 + 192), *&v15 <= 21299.0))
      {
        if ((nn & 0x4000) == 0)
        {
          *(v16 + 228) = 0;
          v783 = *(v16 + 230);
          v784 = v783 - 1;
          if (v783 >= 1)
          {
            LOWORD(nn) = 0;
            *(v16 + 230) = v784;
            goto LABEL_188;
          }

          v158 = 0;
          goto LABEL_185;
        }

        v786 = *(v16 + 228) + 1;
        *(v16 + 228) = v786;
        if (v156 <= v786)
        {
          LOWORD(nn) = 0;
          *(v16 + 230) = v155;
          goto LABEL_188;
        }
      }

      LOWORD(nn) = 0;
      goto LABEL_188;
    }

    if (v157 <= 250)
    {
      v157 = 250;
    }

LABEL_187:
    LOWORD(nn) = 0;
    *(v16 + 228) = 4;
    *(v16 + 234) = v157 - 1;
LABEL_188:
    v158 = 1;
LABEL_189:
    *(v16 + 238) = v158;
    *v819 = v3;
    mm = *(p_A + 4536);
    i = mm + 368;
    if (mm + 368 <= mm + 370)
    {
      v159 = *(mm + 368) + 1;
      *(mm + 368) = v159;
      if ((nn & 1) == 0)
      {
        *(mm + 366) = 7;
        goto LABEL_195;
      }

      if (*(mm + 366))
      {
        v160 = *(mm + 366) - 1;
        *(mm + 366) = v160;
        if (v160 + v159 <= 29)
        {
          *v819 = 8;
        }

LABEL_195:
        v161 = 1;
      }

      else
      {
        v161 = 0;
        *i = 0;
        *v819 = 8;
      }

      v16 = **(p_A + 4472);
      v162 = *(p_A + 1328);
      v163 = *(p_A + 1304);
      nn = *(p_A + 1312);
      mm = *(p_A + 1320);
      *&v15 = -1;
      *(&v15 + 1) = -1;
      *&__b[28] = v15;
      i = -1;
      *(&v1039[0] + 1) = -1;
      *&v1039[0] = -1;
      *__b = v15;
      *&__b[16] = v15;
      if (v3 == 7)
      {
        Autocorr(v162, __b, &window_160_80);
        v1 = &lag_wind;
        nn = 1;
        mm = &lag_wind;
        while (1)
        {
          i = mm + 4;
          if (mm < &lag_wind || mm > i)
          {
            goto LABEL_1457;
          }

          v165 = *mm;
          mm += 4;
          *&v15 = *&__b[4 * nn] * v165;
          *&__b[4 * nn++] = v15;
          if (nn == 11)
          {
            v166 = *__b * 1.0001;
            if ((*__b * 1.0001) < 1.0)
            {
              v166 = 1.0;
            }

            *__b = v166;
            Levinson(v16, __b, v1011 + 12, v1039);
            Autocorr(v162, __b, &window_232_8);
            nn = 1;
            mm = &lag_wind;
            while (1)
            {
              i = mm + 4;
              if (mm < &lag_wind || mm > i)
              {
                goto LABEL_1457;
              }

              v168 = *mm;
              mm += 4;
              *&v15 = *&__b[4 * nn] * v168;
              *&__b[4 * nn++] = v15;
              if (nn == 11)
              {
                goto LABEL_221;
              }
            }
          }
        }
      }

      if (v163 <= nn && mm <= v163)
      {
        nn -= v163;
        if (nn >= 957)
        {
          Autocorr(v163, __b, &window_200_40_227);
          nn = &lag_wind;
          mm = 1;
          i = &lag_wind;
          do
          {
            if (i < &lag_wind || i > i + 4)
            {
              goto LABEL_1457;
            }

            v170 = *i;
            i += 4;
            *&v15 = *&__b[4 * mm] * v170;
            *&__b[4 * mm++] = v15;
          }

          while (mm != 11);
LABEL_221:
          v171 = *__b * 1.0001;
          if ((*__b * 1.0001) < 1.0)
          {
            v171 = 1.0;
          }

          *__b = v171;
          LODWORD(v15) = Levinson(v16, __b, v1013 + 4, v1039).n128_u32[0];
          LOWORD(mm) = v813;
          LOWORD(nn) = v813 + 24;
          if (v813 + 24 >= v813)
          {
            v172 = *v819;
            v1 = *(p_A + 4480);
            v16 = v1 + 40;
            v173 = *(v1 + 80);
            v1021 = -1;
            *&v174 = -1;
            *(&v174 + 1) = -1;
            v1020 = v174;
            v1019 = v174;
            v1017 = -1;
            v1016[1] = v174;
            v1016[0] = v174;
            v1015 = -1;
            v1014[1] = v174;
            v1014[0] = v174;
            v892 = -1431655766;
            v852 = v3;
            __dst = p_A;
            if (v3 == 7)
            {
              p_A = v1016;
              Az_lsp(v1011 + 12, v1016, v1);
              Az_lsp(v1013 + 4, &v1002, v1016);
              nn = 0;
              *&__b[32] = -1;
              *&v15 = -1;
              *(&v15 + 1) = -1;
              *__b = v15;
              *&__b[16] = v15;
              mm = __b;
              i = -2;
              LODWORD(v15) = 0.5;
              while (1)
              {
                v175 = (v1016 + nn + 4);
                v176 = (v1016 + nn + 8);
                *&__b[nn] = (*(v1016 + nn) + *(v1 + nn)) * 0.5;
                v177 = v176 > &v1018 || v175 > v176;
                v9 = v1 + nn + 4;
                v178 = v1 + nn + 8;
                v179 = v177 || v178 > v16;
                v180 = v179 || v9 > v178;
                v181 = &__b[nn + 4];
                v182 = &__b[nn + 8];
                v183 = v180 || v182 > &__b[40];
                if (v183 || v181 > v182)
                {
                  goto LABEL_1457;
                }

                *v181 = (*v175 + *v9) * 0.5;
                i += 2;
                nn += 8;
                if (i >= 8)
                {
                  v3 = __b;
                  p_A = v1010;
                  Lsp_Az_228(__b, v1010);
                  nn = 0;
                  mm = &v1002;
                  i = &v1005;
                  v185 = -2;
                  v9 = v1016;
                  LODWORD(v15) = 0.5;
                  while (1)
                  {
                    v186 = (v1016 + nn + 4);
                    v187 = (v1016 + nn + 8);
                    *&__b[nn] = (*(v1016 + nn) + *(&v1002 + nn)) * 0.5;
                    v188 = v187 > &v1018 || v186 > v187;
                    v189 = (&v1002 + nn + 4);
                    v190 = (&v1002 + nn + 8);
                    v191 = v188 || v190 > &v1005;
                    v192 = v191 || v189 > v190;
                    v193 = &__b[nn + 4];
                    v194 = &__b[nn + 8];
                    v195 = v192 || v194 > &__b[40];
                    if (v195 || v193 > v194)
                    {
                      goto LABEL_1457;
                    }

                    *v193 = (*v186 + *v189) * 0.5;
                    v185 += 2;
                    nn += 8;
                    if (v185 >= 8)
                    {
                      Lsp_Az_228(__b, v1012 + 2);
                      v3 = __dst;
                      if (v172 == 8)
                      {
                        goto LABEL_392;
                      }

                      v197 = *v813;
                      nn = *(v813 + 8);
                      if (*v813 <= nn)
                      {
                        nn -= v197;
                        if (nn >= 9)
                        {
                          nn = *(v813 + 16);
                          if (nn <= v197)
                          {
                            v198 = 0;
                            *&__b[32] = -1;
                            *&v199 = -1;
                            *(&v199 + 1) = -1;
                            *__b = v199;
                            *&__b[16] = v199;
                            LODWORD(v4) = 0x40000000;
                            do
                            {
                              v200 = acos(*(v1016 + v198)) * 1273.2395;
                              *&__b[v198] = v200;
                              v198 += 4;
                            }

                            while (v198 != 40);
                            v201 = 0;
                            *&v1039[2] = -1;
                            *&v202 = -1;
                            *(&v202 + 1) = -1;
                            v1039[1] = v202;
                            v1039[0] = v202;
                            p_A = v1039;
                            do
                            {
                              v203 = acos(*(&v1002 + v201)) * 1273.2395;
                              *(v1039 + v201) = v203;
                              v201 += 4;
                            }

                            while (v201 != 40);
                            *&v1041 = -1;
                            *&v204 = -1;
                            *(&v204 + 1) = -1;
                            *v1040 = v204;
                            *&v1040[16] = v204;
                            *__C = v204;
                            *&__C[16] = v204;
                            v1036 = -1;
                            v1032 = v204;
                            v1033 = v204;
                            v1034 = -1;
                            *v1030 = v204;
                            *&v1030[16] = v204;
                            v1031 = -1;
                            v1027 = v204;
                            v1028 = v204;
                            v1029 = -1;
                            Lsf_wt(__b, v1040);
                            Lsf_wt(v1039, __C);
                            for (j = 0; j != 40; j += 4)
                            {
                              v206 = *&mean_lsf_5_229[j / 4] + (*(v173 + j) * 0.65);
                              *(&v1032 + j) = v206;
                              *&v1030[j] = *&__b[j] - v206;
                              *(&v1027 + j) = *(v1039 + j) - v206;
                            }

                            *&v1024 = &dico1_lsf_5_230;
                            *(&v1024 + 1) = &dico2_lsf_5_231;
                            *&v1025 = &dico1_lsf_5_230;
                            *v197 = Vq_subvec(v1030, &v1027, &v1024, 0x80u, *v1040, *&v1040[4], *__C, *&__C[4]);
                            *&v1024 = &dico2_lsf_5_231;
                            *(&v1024 + 1) = dico3_lsf_5_232;
                            *&v1025 = &dico2_lsf_5_231;
                            v207 = Vq_subvec(&v1030[8], &v1027 + 2, &v1024, 0x100u, *&v1040[8], *&v1040[12], *&__C[8], *&__C[12]);
                            v208 = 0;
                            LODWORD(nn) = 0;
                            LOWORD(mm) = 0;
                            *(v197 + 2) = v207;
                            LODWORD(v15) = *&v1030[16];
                            v209 = *&v1040[16];
                            v210 = *&v1040[20];
                            v211 = *&__C[16];
                            v212 = *&__C[20];
                            v9 = &dword_19B3294E8;
                            v213 = 1.79769313e308;
                            i = dico4_lsf_5_233;
                            while (1)
                            {
                              v214 = v9 - 4 > dico4_lsf_5_233 || v9 > dico4_lsf_5_233;
                              if (v214 || v9 + 4 > dico4_lsf_5_233 || v9 + 8 > dico4_lsf_5_233)
                              {
                                break;
                              }

                              v215 = *(v9 - 8);
                              v216 = *(v9 - 4);
                              v217 = (*&v1030[16] + v215) * (*&v1030[16] + v215) * v209;
                              v218 = (*&v1030[16] - v215) * (*&v1030[16] - v215) * v209 + (*&v1030[20] - v216) * (*&v1030[20] - v216) * v210;
                              v219 = v217 + (*&v1030[20] + v216) * (*&v1030[20] + v216) * v210;
                              LODWORD(v217) = *v9;
                              v220 = *(v9 + 4);
                              v9 += 16;
                              v221 = v218 + (*&v1028 - *&v217) * (*&v1028 - *&v217) * v211 + (*(&v1028 + 1) - v220) * (*(&v1028 + 1) - v220) * v212;
                              v222 = v219 + (*&v1028 + *&v217) * (*&v1028 + *&v217) * v211 + (*(&v1028 + 1) + v220) * (*(&v1028 + 1) + v220) * v212;
                              if (v221 >= v213)
                              {
                                v223 = v213;
                              }

                              else
                              {
                                LOWORD(mm) = 0;
                                v223 = v221;
                              }

                              if (v222 >= v223)
                              {
                                v222 = v223;
                                _NF = v221 < v213;
                              }

                              else
                              {
                                LOWORD(mm) = 1;
                                _NF = 1;
                              }

                              if (_NF)
                              {
                                LODWORD(nn) = v208;
                              }

                              ++v208;
                              v213 = v222;
                              if (v208 == 256)
                              {
                                v225 = &dico3_lsf_5_232[4 * nn];
                                v9 = (v225 + 1);
                                v228 = v225 + 1 <= dico4_lsf_5_233 && v225 <= v9 && v225 >= dico3_lsf_5_232;
                                if (mm)
                                {
                                  if (!v228)
                                  {
                                    goto LABEL_1457;
                                  }

                                  v229 = v225 + 2;
                                  *&v15 = -*v225;
                                  *&v1030[16] = *&v15;
                                  if (v225 + 2 > dico4_lsf_5_233 || v9 > v229)
                                  {
                                    goto LABEL_1457;
                                  }

                                  *&v15 = -v225[1];
                                  *&v1030[20] = *&v15;
                                  v9 = (v225 + 3);
                                  if (v225 + 3 > dico4_lsf_5_233 || v229 > v9)
                                  {
                                    goto LABEL_1457;
                                  }

                                  *&v15 = -v225[2];
                                  *&v1028 = *&v15;
                                  v232 = v225 + 4;
                                  if (v232 > dico4_lsf_5_233 || v9 > v232)
                                  {
                                    goto LABEL_1457;
                                  }

                                  v234 = -*v9;
                                }

                                else
                                {
                                  if (!v228)
                                  {
                                    goto LABEL_1457;
                                  }

                                  v260 = v225 + 2;
                                  *&v15 = *v225;
                                  *&v1030[16] = *v225;
                                  if (v225 + 2 > dico4_lsf_5_233 || v9 > v260)
                                  {
                                    goto LABEL_1457;
                                  }

                                  *&v15 = v225[1];
                                  *&v1030[20] = v15;
                                  v9 = (v225 + 3);
                                  if (v225 + 3 > dico4_lsf_5_233 || v260 > v9)
                                  {
                                    goto LABEL_1457;
                                  }

                                  *&v15 = v225[2];
                                  LODWORD(v1028) = v15;
                                  v263 = v225 + 4;
                                  if (v263 > dico4_lsf_5_233 || v9 > v263)
                                  {
                                    goto LABEL_1457;
                                  }

                                  v234 = *v9;
                                }

                                v1026 = -1;
                                *&v265 = -1;
                                *(&v265 + 1) = -1;
                                v1025 = v265;
                                v1024 = v265;
                                v1022[0] = v265;
                                v1022[1] = v265;
                                v1023 = -1;
                                *(&v1028 + 1) = v234;
                                *(v197 + 4) = mm + 2 * nn;
                                v893 = dico4_lsf_5_233;
                                v894 = &dico5_lsf_5_234;
                                v895 = dico4_lsf_5_233;
                                *(v197 + 6) = Vq_subvec(&v1030[24], &v1028 + 2, &v893, 0x100u, *&v1040[24], *&v1040[28], *&__C[24], *&__C[28]);
                                v893 = &dico5_lsf_5_234;
                                v894 = mean_lsf_3_247;
                                v895 = &dico5_lsf_5_234;
                                v266 = Vq_subvec(&v1031, &v1029, &v893, 0x40u, *&v1041, *(&v1041 + 1), *&v1036, *(&v1036 + 1));
                                v267 = 0;
                                *(v197 + 8) = v266;
                                v268 = v1028;
                                *v173 = v1027;
                                *(v173 + 16) = v268;
                                *(v173 + 32) = v1029;
                                do
                                {
                                  v269 = *(&v1032 + v267);
                                  *(&v1024 + v267) = *&v1030[v267] + v269;
                                  *(v1022 + v267) = v269 + *(&v1027 + v267);
                                  v267 += 4;
                                }

                                while (v267 != 40);
                                v270 = 0;
                                v271 = 50.0;
                                do
                                {
                                  v272 = *(&v1024 + v270);
                                  if (v272 < v271)
                                  {
                                    *(&v1024 + v270) = v271;
                                    v272 = v271;
                                  }

                                  v271 = v272 + 50.0;
                                  v270 += 4;
                                }

                                while (v270 != 40);
                                v273 = 0;
                                v274 = 50.0;
                                do
                                {
                                  v275 = *(v1022 + v273);
                                  if (v275 < v274)
                                  {
                                    *(v1022 + v273) = v274;
                                    v275 = v274;
                                  }

                                  v274 = v275 + 50.0;
                                  v273 += 4;
                                }

                                while (v273 != 40);
                                v276 = 0;
                                LODWORD(v4) = 978182958;
                                do
                                {
                                  v277 = cos((*(&v1024 + v276) * 0.0007854));
                                  *(v1014 + v276) = v277;
                                  v276 += 4;
                                }

                                while (v276 != 40);
                                for (k = 0; k != 40; k += 4)
                                {
                                  v279 = cos((*(v1022 + k) * 0.0007854));
                                  *(&v1019 + k) = v279;
                                }

                                v280 = 0;
                                *&__b[32] = -1;
                                *&v281 = -1;
                                *(&v281 + 1) = -1;
                                *__b = v281;
                                *&__b[16] = v281;
                                do
                                {
                                  *&__b[v280] = (*(v1014 + v280) + *(v16 + v280)) * 0.5;
                                  v280 += 4;
                                }

                                while (v280 != 40);
                                Lsp_Az_228(__b, v1006);
                                Lsp_Az_228(v1014, v1007 + 3);
                                for (m = 0; m != 40; m += 4)
                                {
                                  *&__b[m] = (*(v1014 + m) + *(&v1019 + m)) * 0.5;
                                }

                                Lsp_Az_228(__b, v1008 + 2);
                                Lsp_Az_228(&v1019, v1009 + 1);
                                v259 = 10;
                                goto LABEL_391;
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_1457;
                    }
                  }
                }
              }
            }

            p_A = &v1002;
            Az_lsp(v1013 + 4, &v1002, v1);
            nn = 0;
            *&__b[32] = -1;
            *&v15 = -1;
            *(&v15 + 1) = -1;
            *__b = v15;
            *&__b[16] = v15;
            mm = __b;
            i = -2;
            LODWORD(v15) = 0.75;
            do
            {
              v235 = (&v1002 + nn + 4);
              v236 = (&v1002 + nn + 8);
              *&__b[nn] = (*(v1 + nn) * 0.75) + (*(&v1002 + nn) * 0.25);
              v237 = v236 > &v1005 || v235 > v236;
              v9 = v1 + nn + 4;
              v238 = v1 + nn + 8;
              v240 = v237 || v238 > v16 || v9 > v238;
              v241 = &__b[nn + 4];
              v242 = &__b[nn + 8];
              if (v240 || v242 > &__b[40] || v241 > v242)
              {
                goto LABEL_1457;
              }

              *v241 = (*v9 * 0.75) + (*v235 * 0.25);
              i += 2;
              nn += 8;
            }

            while (i < 8);
            v3 = __b;
            p_A = v1010;
            Lsp_Az_228(__b, v1010);
            nn = 0;
            mm = -2;
            i = &v1002;
            LODWORD(v15) = 0.5;
            do
            {
              v9 = v1 + nn + 8;
              *&__b[nn] = (*(v1 + nn) + *(&v1002 + nn)) * 0.5;
              if (v9 > v16)
              {
                goto LABEL_1457;
              }

              v245 = (v1 + nn + 4);
              if (v245 > v9)
              {
                goto LABEL_1457;
              }

              v9 = &v1002 + nn;
              v246 = &v1002 + nn + 8;
              if (v246 > &v1005)
              {
                goto LABEL_1457;
              }

              v9 += 4;
              if (v9 > v246)
              {
                goto LABEL_1457;
              }

              v247 = &__b[nn + 8];
              if (v247 > &__b[40])
              {
                goto LABEL_1457;
              }

              v248 = &__b[nn + 4];
              if (v248 > v247)
              {
                goto LABEL_1457;
              }

              *v248 = (*v245 + *v9) * 0.5;
              mm += 2;
              nn += 8;
            }

            while (mm < 8);
            v3 = __b;
            Lsp_Az_228(__b, v1011 + 3);
            mm = 0;
            nn = v1010;
            i = -2;
            LODWORD(v15) = 0.75;
            do
            {
              v9 = v1 + mm;
              v249 = v1 + mm + 8;
              *&__b[mm] = (*(&v1002 + mm) * 0.75) + (*(v1 + mm) * 0.25);
              if (v249 > v16)
              {
                goto LABEL_1457;
              }

              v9 += 4;
              if (v9 > v249)
              {
                goto LABEL_1457;
              }

              v250 = (&v1002 + mm + 8);
              if (v250 > &v1005)
              {
                goto LABEL_1457;
              }

              v251 = (&v1002 + mm + 4);
              if (v251 > v250)
              {
                goto LABEL_1457;
              }

              v252 = &__b[mm + 8];
              if (v252 > &__b[40])
              {
                goto LABEL_1457;
              }

              v253 = &__b[mm + 4];
              if (v253 > v252)
              {
                goto LABEL_1457;
              }

              *v253 = (*v251 * 0.75) + (*v9 * 0.25);
              i += 2;
              mm += 8;
            }

            while (i < 8);
            Lsp_Az_228(__b, v1012 + 2);
            v3 = __dst;
            if (v172 != 8)
            {
              v254 = *v813;
              nn = *(v813 + 8);
              if (*v813 <= nn)
              {
                nn -= v254;
                if (nn >= 5)
                {
                  nn = *(v813 + 16);
                  if (nn <= v254)
                  {
                    Q_plsf_3(v852, v173, &v1002, &v1019, v254, &v892);
                    v255 = 0;
                    *&__b[32] = -1;
                    *&v256 = -1;
                    *(&v256 + 1) = -1;
                    *__b = v256;
                    *&__b[16] = v256;
                    do
                    {
                      *&__b[v255] = (*(v16 + v255) * 0.75) + (*(&v1019 + v255) * 0.25);
                      v255 += 4;
                    }

                    while (v255 != 40);
                    Lsp_Az_228(__b, v1006);
                    for (n = 0; n != 40; n += 4)
                    {
                      *&__b[n] = (*(v16 + n) + *(&v1019 + n)) * 0.5;
                    }

                    Lsp_Az_228(__b, v1007 + 3);
                    for (ii = 0; ii != 40; ii += 4)
                    {
                      *&__b[ii] = (*(&v1019 + ii) * 0.75) + (*(v16 + ii) * 0.25);
                    }

                    Lsp_Az_228(__b, v1008 + 2);
                    Lsp_Az_228(&v1019, v1009 + 1);
                    v259 = 6;
LABEL_391:
                    i = v813;
                    mm = *v813;
                    *v813 += v259;
                    goto LABEL_392;
                  }
                }
              }

              continue;
            }

LABEL_392:
            v283 = v1002;
            v284 = v1003;
            *(v1 + 32) = v1004;
            *v1 = v283;
            *(v1 + 16) = v284;
            v15 = v1019;
            v285 = v1020;
            *(v1 + 72) = v1021;
            *v16 = v15;
            *(v1 + 56) = v285;
            v16 = *(v3 + 1336);
            v286 = *(v3 + 1344);
            _CF = v286 >= v16;
            nn = v286 - v16;
            if (_CF)
            {
              mm = *(v3 + 1352);
              if (mm <= v16 && nn >= 637)
              {
                v287 = *(v3 + 4536);
                LOWORD(nn) = v287 + 356;
                LOWORD(mm) = v287 + 358;
                if (v287 + 356 <= v287 + 358)
                {
                  v288 = v287 + 320;
                  v289 = *(v287 + 356);
                  v290 = v289 == 7 ? 0 : v289 + 1;
                  *(v287 + 356) = v290;
                  v291 = 40 * v290;
                  nn = v287 + v291;
                  v292 = (v291 - 321) > 0xFFFFFFFFFFFFFFD7 || nn > v288;
                  v293 = v292 || v287 > nn;
                  mm = &v904;
                  if (!v293)
                  {
                    v15 = v1002;
                    v294 = v1003;
                    *(nn + 32) = v1004;
                    *nn = v15;
                    *(nn + 16) = v294;
                    LOWORD(mm) = nn + 40;
                    if (nn < nn + 40)
                    {
                      v1 = v16 + 640;
                      *__b = -1;
                      vDSP_dotpr(v16, 1, v16, 1, __b, 0x28uLL);
                      v295 = (v16 + 160);
                      if (v16 + 160 <= v16 + 640 && v295 >= v16)
                      {
                        LODWORD(v4) = *__b;
                        *__b = -1;
                        vDSP_dotpr(v295, 1, (v16 + 160), 1, __b, 0x28uLL);
                        v296 = (v16 + 320);
                        if (v16 + 320 <= v1 && v296 >= v16)
                        {
                          v5 = *__b;
                          *__b = -1;
                          vDSP_dotpr(v296, 1, (v16 + 320), 1, __b, 0x28uLL);
                          v297 = (v16 + 480);
                          if (v16 + 480 <= v1 && v297 >= v16)
                          {
                            v4 = *&v4 + v5 + *__b;
                            *__b = -1;
                            vDSP_dotpr(v297, 1, (v16 + 480), 1, __b, 0x28uLL);
                            *&v15 = v4 + *__b;
                            v298 = v287 + 352;
                            v299 = (v288 + 4 * *(v287 + 356));
                            mm = (v299 + 1);
                            LODWORD(nn) = (v299 + 1) <= v298 && v299 <= mm && v299 >= v288;
                            if (*&v15 > 1.0)
                            {
                              if (nn)
                              {
                                *&v15 = log10(*&v15 * 0.00625000009) * 1.66096401;
                                goto LABEL_428;
                              }

                              continue;
                            }

                            if (nn)
                            {
                              LODWORD(v15) = -1066775232;
LABEL_428:
                              *v299 = v15;
                              LODWORD(nn) = *v819;
                              if (*v819 != 8)
                              {
                                v333 = *(v3 + 4512);
                                nn = v333 + 28;
                                mm = v333 + 30;
                                if (nn <= mm)
                                {
                                  v334 = 0;
                                  v335 = *(v3 + 4480);
                                  v336 = 3.4028e38;
                                  v337 = v335[3];
                                  do
                                  {
                                    v338 = v335[v334 + 4];
                                    v339 = v337 - v338;
                                    if (v339 < v336)
                                    {
                                      v336 = v339;
                                    }

                                    ++v334;
                                    v337 = v338;
                                  }

                                  while (v334 != 5);
                                  v340 = v335[1];
                                  v341 = v335[2];
                                  v342 = fminf(v340 - v341, 3.4028e38);
                                  v343 = v341 - v335[3];
                                  if (v343 >= v342)
                                  {
                                    v343 = v342;
                                  }

                                  v344 = flt_19B0AFB48[v340 > 0.93];
                                  if (v340 > 0.98)
                                  {
                                    v344 = 0.018;
                                  }

                                  if (v336 < 0.046 || v343 < v344)
                                  {
                                    v346 = *nn + 1;
                                  }

                                  else
                                  {
                                    v346 = 0;
                                  }

                                  v792 = v346 > 11;
                                  if (v346 > 11)
                                  {
                                    v346 = 12;
                                  }

                                  *nn = v346;
                                  goto LABEL_498;
                                }

                                continue;
                              }

                              v302 = *(v3 + 4536);
                              v303 = (v302 + 358);
                              v16 = v302 + 360;
                              if (v302 + 358 <= (v302 + 360))
                              {
                                v1 = *(*(v3 + 4480) + 80);
                                v304 = *(*(v3 + 4496) + 40);
                                if (!v161 || !*v303)
                                {
                                  v305 = 0;
                                  memset(v1039, 0, 40);
                                  v306 = 0.0;
                                  v307 = v302;
                                  do
                                  {
                                    v308 = 0;
                                    v309 = *(v302 + 320 + 4 * v305);
                                    do
                                    {
                                      *(v1039 + v308) = *(v307 + v308) + *(v1039 + v308);
                                      v308 += 4;
                                    }

                                    while (v308 != 40);
                                    v306 = v306 + v309;
                                    ++v305;
                                    v307 += 40;
                                  }

                                  while (v305 != 8);
                                  for (jj = 0; jj != 40; jj += 4)
                                  {
                                    *(v1039 + jj) = *(v1039 + jj) * 0.125;
                                  }

                                  v311 = 0;
                                  v312 = ((((v306 * 0.125) + 2.5) * 4.0) + 0.5);
                                  if (v312 >= 63)
                                  {
                                    v313 = 63;
                                  }

                                  else
                                  {
                                    v313 = ((((v306 * 0.125) + 2.5) * 4.0) + 0.5);
                                  }

                                  v314 = v313 & ~(v313 >> 31);
                                  *v303 = v314;
                                  v315 = v314 + 736;
                                  if (v312 <= 46)
                                  {
                                    v316 = v315;
                                  }

                                  else
                                  {
                                    v316 = 782;
                                  }

                                  *v304 = vdupq_n_s32(v316);
                                  *&v317 = -1;
                                  *(&v317 + 1) = -1;
                                  *__b = v317;
                                  *&__b[16] = v317;
                                  *&__b[32] = -1;
                                  do
                                  {
                                    v318 = acos(*(v1039 + v311)) * 1273.2395;
                                    *&__b[v311] = v318;
                                    v311 += 4;
                                  }

                                  while (v311 != 40);
                                  v319 = 0;
                                  v320 = 0.00625;
                                  do
                                  {
                                    v321 = *&__b[v319];
                                    if (v321 < v320)
                                    {
                                      *&__b[v319] = v320;
                                      v321 = v320;
                                    }

                                    v320 = v321 + 0.00625;
                                    v319 += 4;
                                  }

                                  while (v319 != 40);
                                  v322 = 0;
                                  LODWORD(v4) = 978182958;
                                  p_A = v1039;
                                  do
                                  {
                                    v323 = cos((*&__b[v322] * 0.0007854));
                                    *(v1039 + v322) = v323;
                                    v322 += 4;
                                  }

                                  while (v322 != 40);
                                  Q_plsf_3(8u, v1, v1039, v1040, (v302 + 360), (v302 + 352));
                                }

                                LODWORD(mm) = *(v302 + 352);
                                i = *v813;
                                v324 = *(v813 + 8);
                                nn = *(v813 + 16);
                                v9 = *v813 + 2;
                                *v813 = v9;
                                v325 = v9 > v324 || i > v9;
                                if (!v325 && i >= nn)
                                {
                                  *i = mm;
                                  LOWORD(mm) = *v16;
                                  i = *v813;
                                  v9 = *(v813 + 8);
                                  v327 = *v813 + 2;
                                  *v813 = v327;
                                  *(v813 + 16) = nn;
                                  if (v327 <= v9 && i <= v327 && i >= nn)
                                  {
                                    *i = mm;
                                    LOWORD(mm) = *(v302 + 362);
                                    i = *v813;
                                    v9 = *(v813 + 8);
                                    v328 = *v813 + 2;
                                    *v813 = v328;
                                    *(v813 + 16) = nn;
                                    if (v328 <= v9 && i <= v328 && i >= nn)
                                    {
                                      *i = mm;
                                      LOWORD(mm) = *(v302 + 364);
                                      i = *v813;
                                      v9 = *(v813 + 8);
                                      v329 = *v813 + 2;
                                      *v813 = v329;
                                      *(v813 + 16) = nn;
                                      if (v329 <= v9 && i <= v329 && i >= nn)
                                      {
                                        *i = mm;
                                        LOWORD(mm) = *v303;
                                        i = *v813;
                                        v9 = *(v813 + 8);
                                        v330 = *v813 + 2;
                                        *v813 = v330;
                                        *(v813 + 16) = nn;
                                        if (v330 <= v9 && i <= v330 && i >= nn)
                                        {
                                          *i = mm;
                                          bzero((v3 + 2628), 0x268uLL);
                                          LOWORD(nn) = v3 + 4584;
                                          *(v3 + 4616) = 0;
                                          v15 = 0uLL;
                                          *(v3 + 4584) = 0u;
                                          *(v3 + 4600) = 0u;
                                          LOWORD(mm) = v3 + 4624;
                                          if (v3 + 4584 <= v3 + 4624)
                                          {
                                            LOWORD(nn) = v3 + 4664;
                                            *(v3 + 4696) = 0;
                                            *(v3 + 4664) = 0uLL;
                                            *(v3 + 4680) = 0uLL;
                                            LOWORD(mm) = v3 + 4704;
                                            i = &v904;
                                            if (v3 + 4664 <= v3 + 4704)
                                            {
                                              nn = *(v3 + 4120);
                                              *(nn + 128) = 0uLL;
                                              *(nn + 144) = 0uLL;
                                              *(nn + 96) = 0uLL;
                                              *(nn + 112) = 0uLL;
                                              *(nn + 64) = 0uLL;
                                              *(nn + 80) = 0uLL;
                                              *(nn + 32) = 0uLL;
                                              *(nn + 48) = 0uLL;
                                              *nn = 0uLL;
                                              *(nn + 16) = 0uLL;
                                              LOWORD(mm) = nn + 160;
                                              if (nn < nn + 160)
                                              {
                                                *(v3 + 4280) = 0uLL;
                                                *(v3 + 4296) = 0uLL;
                                                *(v3 + 4248) = 0uLL;
                                                *(v3 + 4264) = 0uLL;
                                                *(v3 + 4216) = 0uLL;
                                                *(v3 + 4232) = 0uLL;
                                                *(v3 + 4184) = 0uLL;
                                                *(v3 + 4200) = 0uLL;
                                                *(v3 + 4152) = 0uLL;
                                                *(v3 + 4168) = 0uLL;
                                                nn = *(*(v3 + 4480) + 80);
                                                *(nn + 32) = 0;
                                                *nn = 0uLL;
                                                *(nn + 16) = 0uLL;
                                                LOWORD(mm) = nn + 40;
                                                if (nn < nn + 40)
                                                {
                                                  nn = *(v3 + 4480);
                                                  v15 = v1002;
                                                  v331 = v1003;
                                                  *(nn + 32) = v1004;
                                                  *nn = v15;
                                                  *(nn + 16) = v331;
                                                  LOWORD(mm) = nn + 40;
                                                  if (nn < nn + 40)
                                                  {
                                                    v332 = *(v3 + 4480);
                                                    mm = v332 + 40;
                                                    *(v332 + 40) = v1002;
                                                    LODWORD(v15) = v1003;
                                                    *(v332 + 56) = v1003;
                                                    i = v1004;
                                                    *(v332 + 72) = v1004;
                                                    nn = v332 + 80;
                                                    if (mm <= nn)
                                                    {
                                                      break;
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
        }
      }
    }
  }

  v792 = 0;
  ***(v3 + 4488) = 0;
  *(v3 + 4888) = 0;
LABEL_498:
  v863 = 0;
  v9 = 0;
  v818 = (v3 + 1288);
  v793 = (v3 + 1280);
  v870 = (v3 + 4624);
  v347 = &gamma2;
  i = &gamma1;
  if (v852 >= 6)
  {
    v348 = &gamma1_12k2;
  }

  else
  {
    v347 = &gamma1_12k2;
    v348 = &gamma1;
  }

  v350 = v347 >= v348 && v347 - v348 > 36;
  v850 = v350;
  mm = __b;
  v805 = (v3 + 2620);
  v811 = (v3 + 2628);
  v796 = (v3 + 2600);
  nn = &v896;
  v16 = &gamma2;
  do
  {
    v854 = nn;
    v857 = v9;
    v860 = v9;
    v885 = *(v3 + 1280);
    v880 = *v818;
    v875 = *(v3 + 2576);
    v871 = *(v3 + 2584);
    v889 = *(v3 + 2592);
    *&v15 = -1;
    *(&v15 + 1) = -1;
    *&__b[28] = v15;
    *__b = v15;
    *&__b[16] = v15;
    *(&v1039[1] + 12) = v15;
    v1039[0] = v15;
    v1039[1] = v15;
    LOWORD(nn) = v850;
    if (!v850)
    {
      goto LABEL_1457;
    }

    v351 = v863;
    if (v863)
    {
      p_A = 22;
    }

    else
    {
      p_A = 0;
    }

    v1 = v1010 + 4 * p_A + 4;
    LODWORD(nn) = 1;
    do
    {
      LODWORD(v3) = nn;
      mm = v1010 + 4 * p_A;
      LOWORD(nn) = mm >= v1010;
      i = v1014;
      if (mm > v1014 || (nn & 1) == 0)
      {
        goto LABEL_1457;
      }

      nn = 0;
      LODWORD(v15) = *mm;
      *__b = *mm;
      do
      {
        mm = v348 + nn;
        i = v348 + nn + 4;
        if ((v348 + nn) < v348 || mm > i)
        {
          goto LABEL_1457;
        }

        *&__b[nn + 4] = *(v1 + nn) * *mm;
        nn += 4;
      }

      while (nn != 40);
      nn = 0;
      LODWORD(v1039[0]) = v15;
      do
      {
        mm = &gamma2 + nn;
        i = &gamma2 + nn + 4;
        if ((&gamma2 + nn) < &gamma2 || mm > i)
        {
          goto LABEL_1457;
        }

        *&v15 = *(v1 + nn) * *(&gamma2 + nn);
        *(v1039 + nn + 4) = v15;
        nn += 4;
      }

      while (nn != 40);
      *v1040 = __b;
      *&v1040[8] = &__b[44];
      *&v1040[16] = __b;
      *__C = v885 + 4 * v351;
      *&__C[8] = v880;
      v354 = v875 + 4 * v351;
      *&v1032 = v354;
      *(&v1032 + 1) = v871;
      *&v1033 = v889;
      Residu(v1040, __C, &v1032);
      nn = v871 - v354;
      if (v871 < v354)
      {
        goto LABEL_1457;
      }

      LOWORD(mm) = v889;
      if (v889 > v354 || nn < 157)
      {
        goto LABEL_1457;
      }

      LODWORD(v15) = Syn_filt_235(v1039, v354, v354, v870, 1).n128_u32[0];
      LODWORD(nn) = 0;
      p_A += 11;
      v351 += 40;
      v1 += 44;
    }

    while ((v3 & 1) != 0);
    v3 = __dst;
    if (v852 >= 2)
    {
      v355 = *(__dst + 565);
      *__b = *(__dst + 322) + 4 * v863;
      v15 = v818[81];
      *&__b[8] = v15;
      nn = v1039;
      i = v805;
      LOWORD(mm) = v811;
      *&v1039[0] = v805;
      *(&v1039[0] + 1) = v811;
      *&v1039[1] = v805;
      v356 = *(__dst + 563);
      v357 = (v356 + 8);
      if (v356 + 4 > (v356 + 8))
      {
        goto LABEL_1457;
      }

      LOWORD(nn) = v356 + 10;
      if (v357 > v356 + 10)
      {
        goto LABEL_1457;
      }

      *v1040 = v796;
      *&v1040[8] = v805;
      *&v1040[16] = v796;
      ol_ltp(v852, v355, __b, v854, v1039, (v356 + 4), v357, v356, v1040, *(__dst + 1132), v857);
    }

    v863 += 80;
    v9 = 1;
    nn = &v896 + 4;
    LOWORD(mm) = v860;
  }

  while ((v860 & 1) == 0);
  if (v852 <= 1)
  {
    v358 = *(__dst + 565);
    v359 = *(__dst + 324);
    v15 = *(__dst + 161);
    *__b = v15;
    *&__b[16] = v359;
    nn = v1039;
    i = v805;
    LOWORD(mm) = v811;
    *&v1039[0] = v805;
    *(&v1039[0] + 1) = v811;
    *&v1039[1] = v805;
    v360 = *(__dst + 563);
    v361 = (v360 + 8);
    if (v360 + 4 <= (v360 + 8))
    {
      LOWORD(nn) = v360 + 10;
      if (v361 <= v360 + 10)
      {
        *v1040 = v796;
        *&v1040[8] = v805;
        *&v1040[16] = v796;
        ol_ltp(v852, v358, __b, &v896, v1039, (v360 + 4), v361, v360, v1040, *(__dst + 1132), 1);
        HIDWORD(v896) = v896;
        goto LABEL_540;
      }
    }

    goto LABEL_1457;
  }

LABEL_540:
  if (*(__dst + 1132))
  {
    v362 = 0;
    v363 = *(__dst + 565);
    v364 = v363[52];
    v365 = &v896;
    v366 = 1;
    do
    {
      v367 = v364;
      v368 = v366;
      v364 = *v365;
      v369 = v367 - v364;
      if (v367 - v364 < 0)
      {
        v369 = v364 - v367;
      }

      if (v369 < 4)
      {
        ++v362;
      }

      v365 = (&v896 + 4);
      v366 = 0;
    }

    while ((v368 & 1) != 0);
    v363[52] = v364;
    v370 = v363[51];
    v371 = v363[50] >> 1;
    v363[50] = v371;
    if (v370 + v362 >= 4)
    {
      v363[50] = v371 | 0x4000;
    }

    v363[51] = v362;
  }

  if (*v819 != 8)
  {
    v386 = 0;
    v387 = 0;
    v790 = 0;
    v787 = 0;
    v9 = 0;
    v800 = (__dst + 4584);
    v804 = (__dst + 4664);
    v802 = (__dst + 4888);
    v803 = (__dst + 4864);
    v795 = (__dst + 3888);
    v791 = (__dst + 4892);
    v5 = 1.2;
    LODWORD(v15) = -1;
    v788 = NAN;
    v789 = NAN;
    v807 = 16;
    v806 = 20;
    p_A = &__A;
    v809 = v1010;
    v388 = v1006;
    v815 = -1;
LABEL_583:
    v389 = *v819;
    v808 = v9;
    if (v9 == 1)
    {
      if (!v389)
      {
        goto LABEL_594;
      }
    }

    else if (!v389)
    {
      v396 = *(__dst + 285);
      v904 = *(__dst + 284);
      v905 = v396;
      v906 = *(__dst + 572);
      v397 = *(__dst + 4600);
      v900 = *v800;
      v901 = v397;
      v902 = *(__dst + 577);
      v899 = *(__dst + 587);
      v15 = *(__dst + 4680);
      v897 = *v804;
      v898 = v15;
      *&v15 = *v802;
      v891 = *v802;
LABEL_594:
      nn = *(v3 + 4128);
      v398 = *(v3 + 4136);
      i = *(v3 + 4144);
      _CF = v398 >= nn;
      mm = v398 - nn;
      v399 = !_CF || i > nn;
      if (v399 || mm < 157)
      {
        goto LABEL_1457;
      }

      v400 = *(v3 + 4120);
      v401 = *(v3 + 3888) + 4 * v387;
      v402 = *(v3 + 1280) + 4 * v387;
      *__b = v809;
      *&__b[8] = v1014;
      *&__b[16] = v1010;
      *&v1039[0] = v388;
      *(&v1039[0] + 1) = v1010;
      *&v1039[1] = v1006;
      *v1040 = v402;
      *&v1040[8] = *v818;
      *__C = __dst + 4664;
      *&__C[8] = __dst + 4864;
      *&__C[16] = __dst + 4664;
      *&v1032 = __dst + 3912;
      *(&v1032 + 1) = __dst + 4116;
      *&v1033 = __dst + 3912;
      *v1030 = v401;
      *&v1030[8] = v818[163];
      v1027 = *v803;
      *&v1028 = *(__dst + 610);
      *&v15 = subframePreProc(0, __b, v1039, v1040, __C, &v900, v400, &v1032, v1030, nn, &__A, &v958, &v1027);
      v395 = *(v3 + 4128);
      nn = *(v3 + 4136);
      LOWORD(mm) = v808;
      if (v808 != 1)
      {
        if (v395 > nn)
        {
          goto LABEL_1457;
        }

        LOWORD(mm) = nn - v395;
        if (nn - v395 < 0xA0)
        {
          goto LABEL_1457;
        }

        mm = *(v3 + 4144);
        if (mm > v395)
        {
          goto LABEL_1457;
        }

        v403 = *(v395 + 1);
        v908 = *v395;
        v909 = v403;
        v404 = *(v395 + 2);
        v405 = *(v395 + 3);
        v406 = *(v395 + 5);
        v912 = *(v395 + 4);
        v913 = v406;
        v910 = v404;
        v911 = v405;
        v407 = *(v395 + 6);
        v408 = *(v395 + 7);
        v409 = *(v395 + 9);
        v916 = *(v395 + 8);
        v917 = v409;
        v914 = v407;
        v915 = v408;
      }

      goto LABEL_604;
    }

    nn = *(v3 + 4128);
    v390 = *(v3 + 4136);
    i = *(v3 + 4144);
    _CF = v390 >= nn;
    mm = v390 - nn;
    v391 = !_CF || i > nn;
    if (v391 || mm < 157)
    {
      goto LABEL_1457;
    }

    v392 = *(v3 + 4120);
    v393 = *(v3 + 3888) + 4 * v387;
    v394 = *(v3 + 1280) + 4 * v387;
    *__b = v809;
    *&__b[8] = v1014;
    *&__b[16] = v1010;
    *&v1039[0] = v388;
    *(&v1039[0] + 1) = v1010;
    *&v1039[1] = v1006;
    *v1040 = v394;
    *&v1040[8] = *v818;
    *__C = __dst + 4664;
    *&__C[8] = __dst + 4864;
    *&__C[16] = __dst + 4664;
    *&v1032 = __dst + 3912;
    *(&v1032 + 1) = __dst + 4116;
    *&v1033 = __dst + 3912;
    *v1030 = v393;
    *&v1030[8] = v818[163];
    v1027 = *v803;
    *&v1028 = *(__dst + 610);
    subframePreProc(v389, __b, v1039, v1040, __C, v800, v392, &v1032, v1030, nn, &__A, &v958, &v1027);
    v395 = *(v3 + 4128);
    nn = *(v3 + 4136);
LABEL_604:
    v952 = v962;
    v953 = v963;
    v950 = v960;
    v951 = v961;
    v956 = v966;
    v957 = v967;
    v954 = v964;
    v955 = v965;
    LODWORD(v15) = v958;
    v948 = v958;
    v949 = v959;
    if (v395 <= nn)
    {
      nn -= v395;
      if (nn >= 157)
      {
        nn = *(v3 + 4144);
        if (nn <= v395)
        {
          v16 = **(v3 + 4488);
          LOWORD(nn) = v16 + 4;
          if (v16 < v16 + 4)
          {
            v799 = v388;
            v797 = *(v3 + 4512);
            v410 = *v819;
            v820 = *(v3 + 3888);
            v411 = *(v3 + 3896);
            v3 = *(v3 + 3904);
            memset(__b, 170, sizeof(__b));
            memset(v1039, 255, sizeof(v1039));
            v814 = v410;
            mm = mode_dep_parm;
            nn = mode_dep_parm + 9 * v410;
            if (nn >= mode_dep_parm)
            {
              mm = nn + 9;
              i = b24;
              if (nn + 9 <= b24 && nn <= mm)
              {
                if ((v412 = *nn, v864 = *(nn + 1), LODWORD(v1032) = *(nn + 2), v413 = *(nn + 3), v414 = *(nn + 4), v9 = *(nn + 5), v415 = *(nn + 6), i = *(nn + 7), LODWORD(nn) = *(nn + 8), v855 = v413, v861 = v412, v387 != 80) && v387 || v387 == 80 && v410 < 2)
                {
                  v416 = 0;
                  v417 = v16;
                }

                else
                {
                  mm = v387 != 0;
                  i = &v896;
                  v417 = (&v896 | (4 * mm));
                  if (v417 < &v896)
                  {
                    goto LABEL_1457;
                  }

                  mm = v417 + 4;
                  i = &v897;
                  if (v417 + 4 > &v897 || v417 > mm)
                  {
                    goto LABEL_1457;
                  }

                  v416 = 1;
                  v415 = v414;
                  i = v9;
                }

                v418 = *v417 - v415;
                if (v418 > nn)
                {
                  LODWORD(nn) = v418;
                }

                LODWORD(mm) = nn + i;
                v9 = 143;
                v419 = mm >= 143 ? 143 : nn + i;
                v420 = mm <= 143 ? nn : 143 - i;
                v421 = v419 + 5;
                if ((v419 + 5) <= 0xC8)
                {
                  v867 = v416;
                  v872 = v16;
                  v812 = v386;
                  nn = 0;
                  mm = 0;
                  *&v422 = -1;
                  *(&v422 + 1) = -1;
                  v1047 = v422;
                  v1048 = v422;
                  ++v815;
                  v16 = (v395 + 40);
                  v798 = v387;
                  v858 = i;
                  v1045 = v422;
                  v1046 = v422;
                  v423 = v420 - 4;
                  v876 = v419;
                  i = (v419 + 4);
                  v1043 = v422;
                  v1044 = v422;
                  p_A = (4 - v420);
                  v9 = v820 + v807 - 4 * v420;
                  v1041 = v422;
                  v1042 = v422;
                  v881 = v420;
                  v424 = v820 + v806 - 4 * v420;
                  v801 = v387;
                  v886 = v820 + 4 * v387;
                  *v1040 = v422;
                  *&v1040[16] = v422;
                  do
                  {
                    LODWORD(v15) = 0;
                    v425 = v424;
                    v426 = v9;
                    v427 = nn;
                    do
                    {
                      if (v425 > v411)
                      {
                        goto LABEL_1457;
                      }

                      if (v426 > v425)
                      {
                        goto LABEL_1457;
                      }

                      if (v426 < v3)
                      {
                        goto LABEL_1457;
                      }

                      v428 = (v395 + v427);
                      if ((v395 + v427) < v395 || (v428 + 1) > v16 || v428 > v428 + 1)
                      {
                        goto LABEL_1457;
                      }

                      v429 = *v426++;
                      *&v15 = *&v15 + (v429 * *v428);
                      v427 -= 4;
                      v425 += 4;
                    }

                    while (v427 != -4);
                    *&v1040[4 * mm++] = v15;
                    nn += 4;
                  }

                  while (mm != 40);
                  if (v423 <= i)
                  {
                    v430 = v423;
                    v431 = i;
                    v1 = v1039 + 4 * v421;
                    do
                    {
                      *__C = -1;
                      vDSP_dotpr(v1040, 1, v1040, 1, __C, 0x28uLL);
                      LODWORD(v4) = 1.0;
                      if (*__C != 0.0)
                      {
                        *&v4 = 1.0 / sqrt(*__C);
                      }

                      *__C = -1;
                      vDSP_dotpr(&__A, 1, v1040, 1, __C, 0x28uLL);
                      nn = v1039 + 4 * v430;
                      if (nn < v1039)
                      {
                        goto LABEL_1457;
                      }

                      mm = nn + 4;
                      if (nn + 4 > v1 || nn > mm)
                      {
                        goto LABEL_1457;
                      }

                      *&v15 = *&v4 * *__C;
                      *(v1039 + v430) = *&v4 * *__C;
                      if (v430 != v431)
                      {
                        nn = 0;
                        p_A = (p_A - 1);
                        mm = v886 + 4 * p_A;
                        i = mm + 4 <= v411 && mm <= mm + 4 && mm >= v3;
                        for (kk = 40; kk > 1; --kk)
                        {
                          v9 = &v1048 + nn + 12;
                          v435 = (&v1049[-1] + nn);
                          if (&v1049[-1] + nn < v1040 || v9 > v1049 || v435 > v9)
                          {
                            goto LABEL_1457;
                          }

                          if (!i)
                          {
                            goto LABEL_1457;
                          }

                          v438 = (v395 + nn + 156);
                          if (v438 < v395)
                          {
                            goto LABEL_1457;
                          }

                          v439 = v395 + nn + 160;
                          if (v439 > v16 || v438 > v439)
                          {
                            goto LABEL_1457;
                          }

                          LODWORD(v15) = *mm;
                          *v9 = *v435 + (*mm * *v438);
                          nn -= 4;
                        }

                        *v1040 = v15;
                      }
                    }

                    while (v421 != ++v430);
                  }

                  v440 = v881;
                  nn = v1039 + 4 * v881;
                  v1 = v872;
                  p_A = v867;
                  v441 = v876;
                  if (nn >= v1039)
                  {
                    mm = nn + 4;
                    if (nn + 4 <= v1040 && nn <= mm)
                    {
                      if (v881 < v876)
                      {
                        LODWORD(v15) = *(v1039 + v881);
                        i = v876 - v881;
                        v442 = v876 - v858 + 1;
                        LODWORD(nn) = v881;
                        while (1)
                        {
                          v9 = mm + 4;
                          v443 = mm < v1039 || v9 > v1040;
                          if (v443 || mm > v9)
                          {
                            goto LABEL_1457;
                          }

                          v445 = *mm;
                          mm += 4;
                          v446 = v445;
                          if (v445 >= *&v15)
                          {
                            LODWORD(nn) = v442;
                            *&v15 = v446;
                          }

                          ++v442;
                          if (!--i)
                          {
                            goto LABEL_688;
                          }
                        }
                      }

                      LODWORD(nn) = v881;
LABEL_688:
                      *__C = nn;
                      if (nn > v861)
                      {
                        v447 = v867;
                      }

                      else
                      {
                        v447 = 0;
                      }

                      if (v447 == 1)
                      {
                        LODWORD(v1032) = 0;
                        v448 = v864;
LABEL_709:
                        v816 = v1032;
                        if (v448)
                        {
                          if (v867)
                          {
                            if (*__C > 85)
                            {
                              LOWORD(nn) = *__C + 112;
                            }

                            else
                            {
                              LOWORD(nn) = 3 * *__C + v1032 - 58;
                            }
                          }

                          else if (v814 < 4)
                          {
                            v453 = *v872;
                            if (*v872 - v440 > 5)
                            {
                              v453 = v440 + 5;
                            }

                            if (v441 - v453 > 4)
                            {
                              v453 = v441 - 4;
                            }

                            v454 = 3 * *__C + v1032;
                            v455 = 3 * v453;
                            v456 = 3 * v453 - 6;
                            v457 = 3 * v453 + 3;
                            v458 = *__C - v453;
                            v459 = v454 - v455 + 9;
                            if (v457 <= v454)
                            {
                              v459 = v458 + 11;
                            }

                            LOWORD(nn) = v458 + 5;
                            if (v456 < v454)
                            {
                              LOWORD(nn) = v459;
                            }
                          }

                          else
                          {
                            LOWORD(nn) = v1032 + 3 * (*__C - v440) + 2;
                          }
                        }

                        else if (v867)
                        {
                          if (*__C > 94)
                          {
                            LOWORD(nn) = *__C + 368;
                          }

                          else
                          {
                            LOWORD(nn) = v1032 + 6 * *__C - 105;
                          }
                        }

                        else
                        {
                          LOWORD(nn) = v1032 + 6 * (*__C - v440) + 3;
                        }

                        v810 = *__C;
                        *v872 = *__C;
                        i = *v813;
                        v9 = *(v813 + 8);
                        mm = *(v813 + 16);
                        v460 = *v813 + 2;
                        *v813 = v460;
                        if (v460 > v9 || i > v460 || i < mm)
                        {
                          goto LABEL_1457;
                        }

                        mm = 0;
                        *i = nn;
                        nn = v820 + v812;
                        do
                        {
                          i = nn + mm - 616;
                          v461 = nn + mm - 612;
                          if (v461 > v411 || i > v461 || i < v3)
                          {
                            goto LABEL_1457;
                          }

                          LODWORD(v15) = *i;
                          *&__b[mm] = *i;
                          mm += 4;
                        }

                        while (mm != 776);
                        v464 = -v816 << (v448 != 0);
                        if (v816 > 0)
                        {
                          v464 = 6 - (v816 << (v448 != 0));
                        }

                        mm = inter6_236;
                        v465 = &inter6_236[v464];
                        v466 = &inter6_236[6 - v464];
                        i = qua_gain_pitch_246;
                        v467 = v465 + 6;
                        v468 = v465 + 7 > qua_gain_pitch_246 || v467 > v465 + 7;
                        v838 = v465 + 6;
                        v469 = !v468 && v467 >= inter6_236;
                        v470 = !v469;
                        v882 = v470;
                        v471 = v465 + 12;
                        v472 = v465 + 13 > qua_gain_pitch_246 || v471 > v465 + 13;
                        v837 = v465 + 12;
                        v473 = !v472 && v471 >= inter6_236;
                        v474 = !v473;
                        v877 = v474;
                        v475 = v465 + 18;
                        v476 = v465 + 19 > qua_gain_pitch_246 || v475 > v465 + 19;
                        v836 = v465 + 18;
                        v477 = !v476 && v475 >= inter6_236;
                        v478 = !v477;
                        v873 = v478;
                        v479 = v465 + 24;
                        v480 = v465 + 25 > qua_gain_pitch_246 || v479 > v465 + 25;
                        v835 = v465 + 24;
                        v481 = !v480 && v479 >= inter6_236;
                        v482 = !v481;
                        v868 = v482;
                        v483 = v465 + 30;
                        v484 = v465 + 31 > qua_gain_pitch_246 || v483 > v465 + 31;
                        v834 = v465 + 30;
                        v485 = !v484 && v483 >= inter6_236;
                        v486 = !v485;
                        v865 = v486;
                        v487 = v465 + 36;
                        v488 = v465 + 37 > qua_gain_pitch_246 || v487 > v465 + 37;
                        v833 = v465 + 36;
                        v489 = !v488 && v487 >= inter6_236;
                        v490 = !v489;
                        v862 = v490;
                        v491 = v465 + 42;
                        v492 = v465 + 43 > qua_gain_pitch_246 || v491 > v465 + 43;
                        v832 = v465 + 42;
                        v493 = !v492 && v491 >= inter6_236;
                        v494 = !v493;
                        v859 = v494;
                        v495 = v465 + 48;
                        v496 = v465 + 49 > qua_gain_pitch_246 || v495 > v465 + 49;
                        v831 = v465 + 48;
                        v497 = !v496 && v495 >= inter6_236;
                        v498 = !v497;
                        v856 = v498;
                        v499 = v465 + 54;
                        v500 = v465 + 55 > qua_gain_pitch_246 || v499 > v465 + 55;
                        v830 = v465 + 54;
                        v501 = !v500 && v499 >= inter6_236;
                        v502 = !v501;
                        v853 = v502;
                        v503 = v466 + 1 > qua_gain_pitch_246 || v466 > v466 + 1;
                        v504 = !v503 && v466 >= inter6_236;
                        v505 = !v504;
                        v851 = v505;
                        v506 = v466 + 6;
                        v507 = v466 + 7 > qua_gain_pitch_246 || v506 > v466 + 7;
                        v829 = v466 + 6;
                        v508 = !v507 && v506 >= inter6_236;
                        v509 = !v508;
                        v849 = v509;
                        v510 = v466 + 12;
                        v511 = v466 + 13 > qua_gain_pitch_246 || v510 > v466 + 13;
                        v828 = v466 + 12;
                        v512 = !v511 && v510 >= inter6_236;
                        v513 = !v512;
                        v848 = v513;
                        v514 = v466 + 18;
                        v515 = v466 + 19 > qua_gain_pitch_246 || v514 > v466 + 19;
                        v827 = v466 + 18;
                        v516 = !v515 && v514 >= inter6_236;
                        v517 = !v516;
                        v847 = v517;
                        v518 = v466 + 24;
                        v519 = v466 + 25 > qua_gain_pitch_246 || v518 > v466 + 25;
                        v826 = v466 + 24;
                        v520 = !v519 && v518 >= inter6_236;
                        v521 = !v520;
                        v846 = v521;
                        v522 = v466 + 30;
                        v523 = v466 + 31 > qua_gain_pitch_246 || v522 > v466 + 31;
                        v825 = (v466 + 30);
                        v524 = !v523 && v522 >= inter6_236;
                        v525 = !v524;
                        v845 = v525;
                        v526 = v466 + 36;
                        v527 = v466 + 37 > qua_gain_pitch_246 || v526 > v466 + 37;
                        v824 = v466 + 36;
                        v528 = !v527 && v526 >= inter6_236;
                        v529 = !v528;
                        v844 = v529;
                        v530 = v466 + 42;
                        v531 = v466 + 43 > qua_gain_pitch_246 || v530 > v466 + 43;
                        v823 = v466 + 42;
                        v532 = !v531 && v530 >= inter6_236;
                        v533 = !v532;
                        v843 = v533;
                        v534 = v466 + 48;
                        v535 = v466 + 49 > qua_gain_pitch_246 || v534 > v466 + 49;
                        v536 = !v535 && v534 >= inter6_236;
                        v537 = !v536;
                        v842 = v537;
                        v538 = v466 + 55;
                        v22 = v466 + 55 > qua_gain_pitch_246;
                        v839 = v466;
                        v539 = v466 + 54;
                        v540 = v22 || v539 > v538;
                        v821 = v539;
                        v822 = v534;
                        v541 = !v540 && v539 >= inter6_236;
                        nn = (v465 + 1);
                        v9 = !v541;
                        v841 = v9;
                        v542 = v465 > nn || nn > qua_gain_pitch_246;
                        v840 = v465;
                        if (v542 || v465 < inter6_236)
                        {
                          goto LABEL_1457;
                        }

                        v544 = 0;
                        v545 = -4;
                        if (v816 <= 0)
                        {
                          v545 = 0;
                        }

                        v546 = v545 - 4 * v810;
                        do
                        {
                          mm = __b;
                          i = &__b[v546];
                          v547 = &__b[v546 + 616];
                          v548 = &__b[v546 + 620];
                          nn = &v1038;
                          if (v547 < __b || v548 > &v1038 || v547 > v548)
                          {
                            goto LABEL_1457;
                          }

                          v551 = (i + 612);
                          v552 = i + 612 <= v547 && v551 >= __b;
                          v553 = !v552;
                          LOWORD(nn) = v553 | v882;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v546];
                          v554 = &__b[v546 + 608];
                          v555 = v554 <= v551 && v554 >= __b;
                          v556 = !v555;
                          v9 = v877;
                          if (v556 || v877)
                          {
                            goto LABEL_1457;
                          }

                          v557 = (nn + 604);
                          v558 = nn + 604 <= v554 && v557 >= __b;
                          v559 = !v558;
                          LOWORD(nn) = v559 | v873;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v546];
                          v1 = &__b[v546 + 600];
                          v560 = v1 <= v557 && v1 >= __b;
                          v561 = !v560;
                          v9 = v868;
                          if (v561 || v868)
                          {
                            goto LABEL_1457;
                          }

                          v562 = (nn + 596);
                          v563 = nn + 596 <= v1 && v562 >= __b;
                          v564 = !v563;
                          LOWORD(nn) = v564 | v865;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v546];
                          v565 = &__b[v546 + 592];
                          v566 = v565 <= v562 && v565 >= __b;
                          v567 = !v566;
                          v9 = v862;
                          if (v567 || v862)
                          {
                            goto LABEL_1457;
                          }

                          v568 = (nn + 588);
                          v569 = nn + 588 <= v565 && v568 >= __b;
                          v570 = !v569;
                          v9 = v859;
                          LOWORD(nn) = v570 | v859;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          v571 = &__b[v546 + 584];
                          v572 = v571 <= v568 && v571 >= __b;
                          v573 = !v572;
                          v9 = v856;
                          LOWORD(nn) = v573 | v856;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          v574 = (i + 580);
                          v575 = i + 580 <= v571 && v574 >= __b;
                          v576 = !v575;
                          i = v853;
                          LOWORD(nn) = v576 | v853;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v546];
                          v577 = &__b[v546 + 624];
                          v578 = v577 > &v1038 || v548 > v577;
                          v579 = v578;
                          v9 = v851;
                          i = v579 | v851;
                          if (i)
                          {
                            goto LABEL_1457;
                          }

                          i = nn + 628;
                          v580 = nn + 628 > &v1038 || v577 > i;
                          v581 = v580;
                          v9 = v849;
                          LOWORD(nn) = v581 | v849;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v546];
                          p_A = &__b[v546 + 632];
                          v582 = p_A > &v1038 || i > p_A;
                          v583 = v582;
                          v9 = v583 | v848;
                          if (v9)
                          {
                            goto LABEL_1457;
                          }

                          v887 = (nn + 636);
                          v584 = nn + 636 > &v1038 || p_A > nn + 636;
                          v585 = v584;
                          v9 = v847;
                          LOWORD(nn) = v585 | v847;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v546];
                          v586 = &__b[v546 + 640];
                          v587 = v586 > &v1038 || v887 > v586;
                          v588 = v587;
                          v9 = v588 | v846;
                          if (v9)
                          {
                            goto LABEL_1457;
                          }

                          v589 = nn + 644;
                          v590 = nn + 644 > &v1038 || v586 > v589;
                          v591 = v590;
                          v9 = v845;
                          LOWORD(nn) = v591 | v845;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v546];
                          v9 = &__b[v546 + 648];
                          v592 = v9 > &v1038 || v589 > v9;
                          v593 = v592;
                          if (v593 || v844)
                          {
                            goto LABEL_1457;
                          }

                          v594 = (nn + 652);
                          v595 = nn + 652 > &v1038 || v9 > v594;
                          v596 = v595;
                          LOWORD(nn) = v596 | v843;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v546];
                          v597 = &__b[v546 + 656];
                          v598 = v597 > &v1038 || v594 > v597;
                          v599 = v598;
                          v9 = v589;
                          v600 = i;
                          i = &__b[v546 + 624];
                          v1 = v557;
                          v601 = v544;
                          if (v599 || v842)
                          {
                            goto LABEL_1457;
                          }

                          v602 = nn + 660;
                          v603 = v602 > &v1038 || v597 > v602;
                          v604 = v603;
                          LOWORD(nn) = v604 | v841;
                          if (nn)
                          {
                            goto LABEL_1457;
                          }

                          nn = &__b[v544];
                          v605 = &__b[v544 + 616];
                          if (v605 < __b)
                          {
                            goto LABEL_1457;
                          }

                          nn += 620;
                          mm = &v1038;
                          if (nn > &v1038 || v605 > nn)
                          {
                            goto LABEL_1457;
                          }

                          v606 = v600;
                          v607 = v9;
                          p_A = v594;
                          v1 = *v825;
                          v9 = (*v823 * *&__b[v546 + 648]);
                          *v605 = (*v840 * *&__b[v546 + 616] + *v838 * *v551 + *v837 * *&__b[v546 + 608] + *v836 * *v557 + *v835 * *&__b[v546 + 600] + *v834 * *v562 + *v833 * *&__b[v546 + 592] + *v832 * *v568 + *v831 * *&__b[v546 + 584] + *v830 * *v574 + *v839 * *&__b[v546 + 620] + *v829 * *&__b[v546 + 624] + *v828 * *v606 + *v827 * *&__b[v546 + 632] + *v826 * *v887 + v1 * *v586 + *v824 * *v607 + v9 + *v822 * *v594 + *v821 * *v597 + 0x4000) >> 15;
                          v544 += 4;
                          v546 += 4;
                        }

                        while (v601 != 156);
                        nn = 0;
                        v608 = v812;
                        mm = v820 + v812;
                        v9 = __b;
                        v1 = __B;
                        p_A = v991;
                        do
                        {
                          i = mm + nn - 616;
                          v609 = mm + nn - 612;
                          if (v609 > v411 || i > v609 || i < v3)
                          {
                            goto LABEL_1457;
                          }

                          *&v15 = *&__b[nn];
                          *i = v15;
                          nn += 4;
                        }

                        while (nn != 776);
                        nn = 0;
                        mm = 0;
                        i = v820 + v812;
                        do
                        {
                          LODWORD(v15) = 0;
                          v612 = (v820 + v812);
                          v9 = nn;
                          do
                          {
                            v614 = (v612 + 1) <= v411 && v612 <= v612 + 1 && v612 >= v3;
                            v615 = (v395 + v9);
                            v616 = v395 + v9 + 4;
                            if (!v614 || v615 < v395 || v616 > v16 || v615 > v616)
                            {
                              goto LABEL_1457;
                            }

                            v620 = *v612++;
                            *&v15 = *&v15 + (v620 * *v615);
                            v9 -= 4;
                          }

                          while (v9 != -4);
                          *(__B + mm++) = v15;
                          nn += 4;
                        }

                        while (mm != 40);
                        LODWORD(v1039[0]) = -1;
                        vDSP_dotpr(__B, 1, __B, 1, v1039, 0x28uLL);
                        *&v4 = *v1039 + 0.01;
                        *&v968 = *v1039 + 0.01;
                        LODWORD(v1039[0]) = -1;
                        vDSP_dotpr(&__A, 1, __B, 1, v1039, 0x28uLL);
                        HIDWORD(v968) = v1039[0];
                        v621 = *v1039 / *&v4;
                        if ((*v1039 / *&v4) < 0.0)
                        {
                          v621 = 0.0;
                        }

                        if (v621 <= 1.2)
                        {
                          v622 = v621;
                        }

                        else
                        {
                          v622 = 1.2;
                        }

                        *&v890 = v622;
                        v623 = v792;
                        if (v622 <= 0.95)
                        {
                          v623 = 0;
                        }

                        if (v623)
                        {
                          v624 = 0;
                          v625 = v622;
                          do
                          {
                            v625 = v625 + *(v797 + v624);
                            v624 += 4;
                          }

                          while (v624 != 28);
                          v626 = v625 <= 7.6;
                          if (v814 >= 2)
                          {
                            v627 = 2.0;
                            if (v625 > 7.6)
                            {
                              *&v890 = 0.95;
                              v622 = 0.95;
                              v627 = 0.95;
                            }

                            goto LABEL_1121;
                          }

LABEL_1116:
                          if (v622 > 0.85)
                          {
                            *&v890 = 0.85;
                            v622 = 0.85;
                          }

                          if (v626)
                          {
                            v627 = 2.0;
                          }

                          else
                          {
                            v627 = 0.95;
                          }
                        }

                        else
                        {
                          v627 = 2.0;
                          if (v814 <= 1)
                          {
                            v626 = 1;
                            goto LABEL_1116;
                          }

LABEL_1121:
                          if (v814 == 7)
                          {
                            memset(v1039, 0, 24);
                            memset(v1040, 0, 24);
                            v628 = q_gain_pitch(7uLL, &v890, v1039, v1040, v627);
                            v9 = v813;
                            nn = *v813;
                            v629 = *(v813 + 8);
                            mm = *(v813 + 16);
                            i = *v813 + 2;
                            *v813 = i;
                            if (i > v629 || nn > i || nn < mm)
                            {
                              goto LABEL_1457;
                            }

                            *nn = v628;
                            v622 = *&v890;
                          }
                        }

                        nn = 0;
                        mm = v820 + v812;
                        do
                        {
                          *&v15 = *(&__A + nn) - (*(__B + nn) * v622);
                          *(v991 + nn) = v15;
                          i = mm + nn;
                          v630 = mm + nn + 4;
                          if (v630 > v411 || i > v630 || i < v3)
                          {
                            goto LABEL_1457;
                          }

                          *(&v948 + nn) = *(&v948 + nn) - (*i * v622);
                          nn += 4;
                        }

                        while (nn != 160);
                        if (v815 == 3)
                        {
                          v631 = __dst;
                          v632 = v810;
                          if (*(__dst + 656) > 0.0)
                          {
                            *v796 = v810;
                          }
                        }

                        else
                        {
                          v631 = __dst;
                          v632 = v810;
                          if (!v815 && *v805 > 0.0)
                          {
                            *(__dst + 651) = v810;
                          }
                        }

                        v633 = *v819;
                        *__b = *(__dst + 258);
                        *&__b[16] = *(__dst + 518);
                        cbsearch(v633, v815, v991, __b, v632, &v981, &v970, &v948, v813);
                        v634 = v631[562];
                        LOWORD(nn) = v634 + 40;
                        v635 = *(v634 + 40);
                        mm = v634 + 32;
                        if (v634 + 32 <= v634 + 40)
                        {
                          v636 = (v634 + 28);
                          if (v634 + 28 <= mm)
                          {
                            v16 = v634 + 4;
                            if (v634 < v634 + 4 && v634 + 24 <= v636)
                            {
                              v9 = *(v634 + 56);
                              v637 = (v9 + 4);
                              i = v9 + 8;
                              if (v9 + 4 <= v9 + 8)
                              {
                                LOWORD(nn) = v9 + 30;
                                if (v9 + 28 <= v9 + 30 && v9 <= v637)
                                {
                                  v638 = *v819;
                                  v3 = *(v634 + 48);
                                  v639 = v631[486];
                                  v1 = v631[487];
                                  p_A = v631[488];
                                  memset(v1040, 255, 20);
                                  *v1030 = -1;
                                  LODWORD(v1027) = 0;
                                  LODWORD(v1024) = -1431655766;
                                  LODWORD(v1022[0]) = -1431655766;
                                  if (v638)
                                  {
                                    v640 = v639;
                                    v878 = v9;
                                    v883 = (v9 + 28);
                                    v888 = (v9 + 8);
                                    gc_pred_237(v635, v638, &v981, &v1024, v1022, &v1027);
                                    if (v638 == 7)
                                    {
                                      v641 = Pow2_238(v1024, v1022[0]);
                                      if (v641 <= 2047)
                                      {
                                        *&v4 = v641;
                                      }

                                      else
                                      {
                                        *&v4 = 2047.9;
                                      }

                                      v16 = 0xFFFFFFFFLL;
                                      *__b = -1;
                                      v642 = 1;
                                      vDSP_dotpr(v991, 1, &v970, 1, __b, 0x28uLL);
                                      v643 = *__b;
                                      *__b = -1;
                                      vDSP_dotpr(&v970, 1, &v970, 1, __b, 0x28uLL);
                                      LODWORD(v3) = 0;
                                      *&v15 = v643 / (*__b + 0.00999999978);
                                      if (*&v15 < 0.0)
                                      {
                                        *&v15 = 0.0;
                                      }

                                      v644 = fabsf(*&v15 + (*&v4 * -0.077637));
                                      nn = &unk_19B334E5C;
                                      p_A = &__A;
                                      i = &table_highrates;
                                      v645 = v799;
                                      do
                                      {
                                        if (nn > &table_highrates)
                                        {
                                          goto LABEL_1457;
                                        }

                                        v646 = fabsf(*&v15 + (-*&v4 * *(nn - 4)));
                                        if (v644 > v646)
                                        {
                                          LODWORD(v3) = v642;
                                          v644 = v646;
                                        }

                                        ++v642;
                                        nn += 4;
                                      }

                                      while (v642 != 32);
                                      nn = &gain_factor[v3];
                                      mm = nn + 4;
                                      if (nn >= gain_factor && mm <= &table_highrates && nn <= mm)
                                      {
                                        LODWORD(v15) = *nn;
                                        v9 = v813;
                                        nn = *v813;
                                        v649 = *(v813 + 8);
                                        mm = *(v813 + 16);
                                        i = *v813 + 2;
                                        *v813 = i;
                                        if (i <= v649 && nn <= i && nn >= mm)
                                        {
                                          *&v15 = *&v4 * *&v15;
                                          v650 = floorf(*&v15);
                                          *nn = v3;
                                          goto LABEL_1386;
                                        }
                                      }

                                      goto LABEL_1457;
                                    }

                                    calc_filt_energies(v638, &__A, v991, __B, &v970, &v968, v1040, v1030);
                                    if (v638 == 5)
                                    {
                                      v673 = *&v1027;
                                      v16 = v1024;
                                      v674 = (v640 + 4 * v801);
                                      v675 = v1022[0];
                                      LODWORD(v4) = *v1030;
                                      *__C = -1;
                                      *&__C[8] = -1;
                                      *&v1032 = 0xAAAAAAAAAAAAAAAALL;
                                      DWORD2(v1032) = -1431655766;
                                      *__b = __C;
                                      *&__b[8] = &__C[12];
                                      *&__b[16] = __C;
                                      *&v1039[0] = &v1032;
                                      *(&v1039[0] + 1) = &v1032 + 12;
                                      *&v1039[1] = &v1032;
                                      q_gain_pitch(5uLL, &v890, __b, v1039, v627);
                                      v874 = v16;
                                      v869 = v675;
                                      v676 = Pow2_238(v16, v675);
                                      nn = 0;
                                      LODWORD(v3) = 0;
                                      v677 = 0;
                                      *&v15 = v676;
                                      v678 = 3.4028e38;
                                      v9 = &table_highrates;
                                      do
                                      {
                                        LODWORD(mm) = 0;
                                        i = &unk_19B334E58;
                                        do
                                        {
                                          if (i > &table_highrates)
                                          {
                                            goto LABEL_1457;
                                          }

                                          v679 = *&__C[4 * nn];
                                          if ((((((*v1040 * (v679 * v679)) + (*&v1040[4] * v679)) + (*&v1040[8] * ((*(i - 4) * *&v15) * (*(i - 4) * *&v15)))) + (*&v1040[12] * (*(i - 4) * *&v15))) + (*&v1040[16] * (v679 * (*(i - 4) * *&v15)))) < v678)
                                          {
                                            v677 = nn;
                                            LODWORD(v3) = mm;
                                            v678 = ((((*v1040 * (v679 * v679)) + (*&v1040[4] * v679)) + (*&v1040[8] * ((*(i - 4) * *&v15) * (*(i - 4) * *&v15)))) + (*&v1040[12] * (*(i - 4) * *&v15))) + (*&v1040[16] * (v679 * (*(i - 4) * *&v15)));
                                          }

                                          i += 4;
                                          LODWORD(mm) = mm + 1;
                                        }

                                        while (mm != 32);
                                        ++nn;
                                      }

                                      while (nn != 3);
                                      i = gain_factor;
                                      nn = &gain_factor[v3];
                                      mm = nn + 4;
                                      if (nn >= gain_factor && mm <= &table_highrates && nn <= mm)
                                      {
                                        v682 = vcvts_n_s32_f32(*nn, 0xBuLL);
                                        v683 = Pow2_238(14, v675);
                                        i = __C;
                                        v684 = 2 * v682 * v683;
                                        v685 = v684 >> (9 - v874);
                                        v16 = (v874 - 9);
                                        v686 = v684 << (v874 - 9);
                                        v687 = v874 >= 9 ? v686 : v685;
                                        nn = &__C[4 * v677];
                                        mm = nn + 4;
                                        v688 = nn < __C || mm > &__C[12];
                                        if (!v688 && nn <= mm)
                                        {
                                          v622 = *&__C[4 * v677];
                                          *&v890 = v622;
                                          nn = &v1032 + 4 * v677;
                                          mm = nn + 4;
                                          i = &v1032 + 12;
                                          v690 = nn < &v1032 || mm > &v1032 + 12;
                                          if (!v690 && nn <= mm)
                                          {
                                            v866 = *nn;
                                            *__b = -1;
                                            vDSP_dotpr(&v958, 1, &v958, 1, __b, 0x28uLL);
                                            LODWORD(v15) = *__b;
                                            LOWORD(nn) = 0;
                                            v692 = *__b >= 200.0 ? *__b : 0.0;
                                            if (v674 <= v1 && p_A <= v674)
                                            {
                                              LOWORD(nn) = v1 - v674;
                                              if ((v1 - v674) >= 157)
                                              {
                                                v650 = vcvts_n_f32_s32(v687 >> 16, 1uLL);
                                                *__b = -1;
                                                vDSP_dotpr(v674, 1, v674, 1, __b, 0x28uLL);
                                                v693 = *__b;
                                                *__b = -1;
                                                vDSP_dotpr(v674, 1, &v981, 1, __b, 0x28uLL);
                                                v5 = *__b;
                                                nn = v640 + v812;
                                                v694 = 0.0;
                                                mm = &v958;
                                                i = 40;
                                                do
                                                {
                                                  if (nn + 4 > v1 || nn > nn + 4 || nn < p_A)
                                                  {
                                                    goto LABEL_1457;
                                                  }

                                                  v697 = *nn;
                                                  nn += 4;
                                                  v698 = v697;
                                                  v699 = *mm;
                                                  mm += 4;
                                                  *&v15 = v699 - (v698 * v622);
                                                  v694 = v694 + (*&v15 * *&v15);
                                                  --i;
                                                }

                                                while (i);
                                                LODWORD(v15) = 0;
                                                v645 = v799;
                                                v700 = v888;
                                                v701 = v883;
                                                if (v694 <= 0.0)
                                                {
                                                  p_A = &__A;
                                                }

                                                else
                                                {
                                                  p_A = &__A;
                                                  if (v692 != 0.0)
                                                  {
                                                    *&v15 = log10((v692 / v694));
                                                    v701 = v883;
                                                    v700 = v888;
                                                    *&v15 = *&v15 / 0.301029996;
                                                  }
                                                }

                                                v731 = v650 > 100.0 && (*v637 + *v637) < v650;
                                                v608 = v812;
                                                if (v731)
                                                {
                                                  *v701 = 8;
                                                  LOWORD(nn) = 1;
                                                }

                                                else
                                                {
                                                  LOWORD(nn) = *v701;
                                                  if (*v701)
                                                  {
                                                    v732 = nn - 1;
                                                    *v701 = v732;
                                                    LOWORD(nn) = v732 != 0;
                                                  }
                                                }

                                                mm = 0;
                                                LODWORD(i) = 0;
                                                *v700 = v15;
                                                *&__b[32] = -1431655766;
                                                *&v733 = 0xAAAAAAAAAAAAAAAALL;
                                                *(&v733 + 1) = 0xAAAAAAAAAAAAAAAALL;
                                                *__b = v733;
                                                *&__b[16] = v733;
                                                *(&v1039[1] + 12) = -1;
                                                *(&v1039[1] + 4) = -1;
                                                v734 = *v700;
                                                LODWORD(v1039[1]) = v700[4];
                                                v1039[0] = v734;
                                                do
                                                {
                                                  v735 = 0;
                                                  v736 = -3.4028e38;
                                                  do
                                                  {
                                                    if (*(v1039 + v735) < v736)
                                                    {
                                                      i = i;
                                                    }

                                                    else
                                                    {
                                                      v736 = *(v1039 + v735);
                                                      i = v735;
                                                    }

                                                    ++v735;
                                                  }

                                                  while (v735 != 5);
                                                  v737 = (v1039 + 4 * i);
                                                  v9 = v737 + 4;
                                                  if (v737 < v1039 || v9 > &v1039[2] + 4 || v737 > v9)
                                                  {
                                                    goto LABEL_1457;
                                                  }

                                                  *v737 = -8388609;
                                                  *&__b[4 * mm++] = i;
                                                }

                                                while (mm != 5);
                                                mm = &v700[*&__b[8]];
                                                if (mm >= v700)
                                                {
                                                  i = mm + 4;
                                                  if (mm + 4 <= v701 && mm <= i)
                                                  {
                                                    v740 = v693;
                                                    i = &qword_19B0B0000;
                                                    if (*&v15 > 0.33219)
                                                    {
                                                      LOBYTE(nn) = 1;
                                                    }

                                                    LODWORD(v15) = 0;
                                                    v741 = v673;
                                                    if (nn)
                                                    {
                                                      v742 = v878;
                                                    }

                                                    else
                                                    {
                                                      v743 = *mm;
                                                      v744 = *mm;
                                                      v742 = v878;
                                                      if (v744 <= 0.66443)
                                                      {
                                                        LODWORD(v15) = 0.5;
                                                        if (v743 >= 0.0)
                                                        {
                                                          *&v15 = v744 * -0.75257499 + 0.5;
                                                        }
                                                      }
                                                    }

                                                    if (*v742 == 0.0)
                                                    {
                                                      v745 = *&v15 * 0.5;
                                                    }

                                                    else
                                                    {
                                                      v745 = *&v15;
                                                    }

                                                    *v742 = v745;
                                                    v742[1] = v650;
                                                    nn = (v742 + 5);
                                                    for (mm = 5; mm > 1; --mm)
                                                    {
                                                      if (nn < v700)
                                                      {
                                                        goto LABEL_1457;
                                                      }

                                                      i = nn + 4;
                                                      if (nn + 4 > v701 || nn > i || i > nn + 8)
                                                      {
                                                        goto LABEL_1457;
                                                      }

                                                      LODWORD(v15) = *nn;
                                                      *(nn + 4) = *nn;
                                                      nn -= 4;
                                                    }

                                                    if (v692 == 0.0 || v745 <= 0.0)
                                                    {
                                                      v5 = 1.2;
                                                    }

                                                    else
                                                    {
                                                      v746 = Pow2_238(v874, v869);
                                                      LODWORD(nn) = 0;
                                                      LODWORD(v3) = 0;
                                                      *&v15 = v746;
                                                      v747 = sqrtf(v692 * v745);
                                                      v748 = v622 * (v5 * (v745 + v745));
                                                      v749 = 3.4028e38;
                                                      mm = &unk_19B334E58;
                                                      v5 = 1.2;
                                                      i = &table_highrates;
                                                      do
                                                      {
                                                        if (mm > &table_highrates)
                                                        {
                                                          goto LABEL_1457;
                                                        }

                                                        v750 = *(mm - 4) * *&v15;
                                                        if (v750 >= (v650 + v650))
                                                        {
                                                          break;
                                                        }

                                                        v751 = (v750 - *&v4) * (v750 - *&v4);
                                                        v752 = sqrtf((((v622 * v622) * (v740 * v745)) + (v748 * v750)) + ((v741 * v745) * (v750 * v750)));
                                                        v753 = ((v752 - v747) * (v752 - v747)) + ((v741 * (1.0 - v745)) * v751);
                                                        if (v753 < v749)
                                                        {
                                                          LODWORD(v3) = nn;
                                                          v749 = v753;
                                                        }

                                                        mm += 4;
                                                        LODWORD(nn) = nn + 1;
                                                      }

                                                      while (nn != 32);
                                                      nn = &gain_factor[v3];
                                                      mm = nn + 4;
                                                      if (nn < gain_factor || mm > &table_highrates || nn > mm)
                                                      {
                                                        goto LABEL_1457;
                                                      }

                                                      v756 = vcvts_n_s32_f32(*nn, 0xBuLL);
                                                      v757 = 2 * v756 * Pow2_238(14, v869);
                                                      v758 = v757 >> (9 - v874);
                                                      v759 = v757 << (v874 - 9);
                                                      if (v874 < 9)
                                                      {
                                                        v759 = v758;
                                                      }

                                                      v650 = vcvts_n_f32_s32(v759 >> 16, 1uLL);
                                                    }

                                                    v9 = v813;
                                                    mm = *v813;
                                                    v760 = *(v813 + 8);
                                                    nn = *(v813 + 16);
                                                    i = *v813 + 2;
                                                    *v813 = i;
                                                    if (i <= v760 && mm <= i && mm >= nn)
                                                    {
                                                      *mm = LOWORD(v866);
                                                      v9 = v813;
                                                      mm = *v813;
                                                      v761 = *(v813 + 8);
                                                      i = *v813 + 2;
                                                      *v813 = i;
                                                      *(v813 + 16) = nn;
                                                      if (i <= v761 && mm <= i && mm >= nn)
                                                      {
                                                        *mm = v3;
LABEL_1386:
                                                        nn = (v635 + 4);
                                                        mm = (v635 + 2);
                                                        for (i = 4; i > 1; --i)
                                                        {
                                                          if (mm < v635)
                                                          {
                                                            goto LABEL_1457;
                                                          }

                                                          v762 = mm + 4;
                                                          if (mm + 4 > nn)
                                                          {
                                                            goto LABEL_1457;
                                                          }

                                                          if (mm > v762)
                                                          {
                                                            goto LABEL_1457;
                                                          }

                                                          v9 = mm + 8;
                                                          if (v762 > mm + 8)
                                                          {
                                                            goto LABEL_1457;
                                                          }

                                                          *(mm + 4) = *mm;
                                                          mm -= 4;
                                                        }

                                                        *v635 = v3;
                                                        v3 = __dst;
                                                        v706 = v801;
                                                        goto LABEL_1416;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      goto LABEL_1457;
                                    }

                                    v16 = v1024;
                                    LODWORD(v3) = v1022[0];
                                    v707 = Pow2_238(v1024, v1022[0]);
                                    v708 = v638 - 3;
                                    if ((v638 - 3) > 3)
                                    {
                                      i = &table_lowrates;
                                      nn = b60;
                                      LODWORD(mm) = 64;
                                      v709 = 160;
                                    }

                                    else
                                    {
                                      v709 = dword_19B0B3980[v708];
                                      LODWORD(mm) = dword_19B0B3990[v708];
                                      i = *(&off_1E752EE00 + v708);
                                      nn = *(&off_1E752EE20 + v708);
                                    }

                                    p_A = &__A;
                                    v645 = v799;
                                    v712 = 0;
                                    v1 = 0;
                                    *&v15 = v707;
                                    v9 = i + 4;
                                    v713 = 3.4028e38;
                                    do
                                    {
                                      v715 = v9 - 4 < i || v9 > nn || v9 - 4 > v9;
                                      if (v715 || v9 + 4 > nn || v9 > v9 + 4)
                                      {
                                        goto LABEL_1457;
                                      }

                                      v716 = *(v9 - 4);
                                      if (v716 <= v627)
                                      {
                                        v717 = ((((*v1040 * (v716 * v716)) + (*&v1040[4] * v716)) + (*&v1040[8] * ((*v9 * *&v15) * (*v9 * *&v15)))) + (*&v1040[12] * (*v9 * *&v15))) + (*&v1040[16] * (v716 * (*v9 * *&v15)));
                                        if (v717 < v713)
                                        {
                                          v1 = v712;
                                          v713 = v717;
                                        }
                                      }

                                      v712 = (v712 + 1);
                                      v9 += 8;
                                    }

                                    while (mm != v712);
                                    LOWORD(mm) = 2 * v1;
                                    v718 = (i + 8 * v1);
                                    if (v718 < i)
                                    {
                                      goto LABEL_1457;
                                    }

                                    mm = (v718 + 1);
                                    if ((v718 + 1) > nn)
                                    {
                                      goto LABEL_1457;
                                    }

                                    if (v718 > mm)
                                    {
                                      goto LABEL_1457;
                                    }

                                    v720 = *v718;
                                    v719 = v718 + 2;
                                    v622 = v720;
                                    *&v890 = v720;
                                    if (v719 > nn || mm > v719)
                                    {
                                      goto LABEL_1457;
                                    }

                                    v721 = vcvts_n_s32_f32(*mm, 0xCuLL);
                                    v722 = Pow2_238(14, v3) * v721;
                                    if (v16 > 10)
                                    {
                                      v724 = v722 << (v16 - 9);
                                      if (v724 >> (v16 - 9) != v722)
                                      {
                                        LODWORD(v15) = 1191181824;
                                        goto LABEL_1315;
                                      }

                                      v723 = v724 >> 16;
                                    }

                                    else
                                    {
                                      v723 = v722 >> (25 - v16);
                                    }

                                    *&v15 = v723;
LABEL_1315:
                                    v9 = v813;
                                    nn = *v813;
                                    v730 = *(v813 + 8);
                                    mm = *(v813 + 16);
                                    i = *v813 + 2;
                                    *v813 = i;
                                    if (i <= v730 && nn <= i && nn >= mm)
                                    {
                                      v650 = *&v15 * 0.5;
                                      LODWORD(v3) = v1 + v709;
                                      *nn = v1;
                                      goto LABEL_1386;
                                    }

                                    goto LABEL_1457;
                                  }

                                  if (v808 == 1)
                                  {
                                    p_A = v634 + 12;
                                    v1 = v634 + 16;
                                    gc_pred_237(v3, 0, &v981, &v1024, v1022, &v1027);
                                    calc_filt_energies(0, &__A, v991, __B, &v970, &v968, v1040, v1030);
                                    *__b = -1;
                                    vDSP_dotpr(&__A, 1, &__A, 1, __b, 0x28uLL);
                                    LODWORD(v4) = *__b;
                                    v652 = *(v634 + 24);
                                    v651 = *(v634 + 28);
                                    v653 = *v634;
                                    v654 = v1024;
                                    v655 = v1022[0];
                                    *__b = v1024;
                                    LODWORD(v1039[0]) = v1022[0];
                                    v879 = v651;
                                    v884 = Pow2_238(v652, v651);
                                    v656 = Pow2_238(v654, v655);
                                    v657 = (v634 + 8);
                                    v658 = (v634 + 12);
                                    v659 = (v634 + 16);
                                    v660 = (v634 + 20);
                                    v9 = v634 + 4;
                                    v3 = __dst;
                                    if ((v653 + v653) < *&v4)
                                    {
                                      goto LABEL_1171;
                                    }

                                    if ((*&v4 * 4.0) < v653)
                                    {
                                      v9 = v1040;
                                      v658 = &v1040[8];
                                      v657 = &v1040[4];
                                      v660 = &v1040[16];
                                      v659 = &v1040[12];
LABEL_1171:
                                      *v9 = *v9 + *v9;
                                      *v657 = *v657 + *v657;
                                      *v658 = *v658 + *v658;
                                      *v659 = *v659 + *v659;
                                      *v660 = *v660 + *v660;
                                    }

                                    LODWORD(nn) = 0;
                                    v661 = 0;
                                    *&v15 = v884;
                                    v662 = 3.4028e38;
                                    mm = &dword_19B333E5C;
                                    do
                                    {
                                      i = mm - 4;
                                      if (mm - 4 > gain_factor || mm > gain_factor)
                                      {
                                        goto LABEL_1457;
                                      }

                                      i = mm + 4;
                                      if (mm + 4 > gain_factor)
                                      {
                                        goto LABEL_1457;
                                      }

                                      v664 = *mm;
                                      if (mm + 8 > gain_factor)
                                      {
                                        goto LABEL_1457;
                                      }

                                      v665 = *(mm - 8);
                                      if ((v665 - v627) <= 0.0 && v664 <= v627)
                                      {
                                        v667 = *i * v656;
                                        v668 = ((((((((((v665 * v665) * *v16) + (*(v634 + 8) * v665)) + (*p_A * ((*(mm - 4) * *&v15) * (*(mm - 4) * *&v15)))) + (*v1 * (*(mm - 4) * *&v15))) + (*(v634 + 20) * (v665 * (*(mm - 4) * *&v15)))) + (*v1040 * (v664 * v664))) + (*&v1040[4] * v664)) + (*&v1040[8] * (v667 * v667))) + (*&v1040[12] * v667)) + (*&v1040[16] * (v664 * v667));
                                        if (v668 < v662)
                                        {
                                          v661 = nn;
                                          v662 = v668;
                                        }
                                      }

                                      LODWORD(nn) = nn + 1;
                                      mm += 16;
                                    }

                                    while (nn != 256);
                                    nn = table_gain_MR475_240;
                                    mm = &table_gain_MR475_240[4 * v661];
                                    if (mm < table_gain_MR475_240)
                                    {
                                      goto LABEL_1457;
                                    }

                                    nn = mm + 4;
                                    if (mm + 4 > gain_factor)
                                    {
                                      goto LABEL_1457;
                                    }

                                    if (mm > nn)
                                    {
                                      goto LABEL_1457;
                                    }

                                    v669 = *mm;
                                    mm += 8;
                                    *&v15 = v669;
                                    v789 = v669;
                                    if (mm > gain_factor || nn > mm)
                                    {
                                      goto LABEL_1457;
                                    }

                                    v670 = ((*nn * 4096.0) + 0.5);
                                    v671 = Pow2_238(14, v879) * v670;
                                    if (v652 <= 10)
                                    {
                                      v672 = v671 >> (25 - v652);
                                      goto LABEL_1259;
                                    }

                                    v710 = v671 << (v652 - 9);
                                    i = (v710 >> (v652 - 9));
                                    if (i == v671)
                                    {
                                      v672 = v710 >> 16;
LABEL_1259:
                                      v711 = v672;
                                    }

                                    else
                                    {
                                      v711 = 32767.0;
                                    }

                                    *&v15 = v711 * 0.5;
                                    v788 = *&v15;
                                    v725 = (v635 + 4);
                                    v16 = (v635 + 2);
                                    nn = (v635 + 2);
                                    for (mm = 4; mm > 1; --mm)
                                    {
                                      if (nn < v635)
                                      {
                                        goto LABEL_1457;
                                      }

                                      i = nn + 4;
                                      if (nn + 4 > v725 || nn > i || i > nn + 8)
                                      {
                                        goto LABEL_1457;
                                      }

                                      i = *nn;
                                      *(nn + 4) = i;
                                      nn -= 4;
                                    }

                                    *v635 = 2 * v661 + 224;
                                    gc_pred_237(v635, 0, &v981, __b, v1039, __C);
                                    i = table_gain_MR475_240;
                                    nn = &table_gain_MR475_240[4 * v661];
                                    mm = nn + 8;
                                    if (nn + 8 >= table_gain_MR475_240)
                                    {
                                      nn += 12;
                                      if (nn <= gain_factor && mm <= nn)
                                      {
                                        v726 = *mm;
                                        mm += 8;
                                        v622 = v726;
                                        *&v890 = v726;
                                        if (mm <= gain_factor && nn <= mm)
                                        {
                                          v727 = ((*nn * 4096.0) + 0.5);
                                          v728 = Pow2_238(14, v1039[0]) * v727;
                                          if (*__b > 10)
                                          {
                                            LODWORD(mm) = v728 << (__b[0] - 9);
                                            i = (mm >> (__b[0] - 9));
                                            if (i != v728)
                                            {
                                              LODWORD(v15) = 1191181824;
LABEL_1307:
                                              v650 = *&v15 * 0.5;
                                              for (nn = 4; nn > 1; --nn)
                                              {
                                                if (v16 < v635)
                                                {
                                                  goto LABEL_1457;
                                                }

                                                mm = v16 + 4;
                                                if (v16 + 4 > v725)
                                                {
                                                  goto LABEL_1457;
                                                }

                                                if (v16 > mm)
                                                {
                                                  goto LABEL_1457;
                                                }

                                                i = v16 + 8;
                                                if (mm > v16 + 8)
                                                {
                                                  goto LABEL_1457;
                                                }

                                                LODWORD(mm) = *v16;
                                                *(v16 + 4) = *v16;
                                                v16 -= 4;
                                              }

                                              *v635 = 2 * v661 + 225;
                                              **(v634 + 32) = v661;
                                              v608 = v812;
                                              v706 = v801;
                                              p_A = &__A;
                                              v645 = v799;
                                              goto LABEL_1416;
                                            }

                                            v729 = mm >> 16;
                                          }

                                          else
                                          {
                                            i = 25;
                                            LOWORD(mm) = 25 - *__b;
                                            v729 = v728 >> (25 - __b[0]);
                                          }

                                          *&v15 = v729;
                                          goto LABEL_1307;
                                        }
                                      }
                                    }

                                    goto LABEL_1457;
                                  }

                                  v9 = v813;
                                  nn = *v813;
                                  v702 = *(v813 + 8);
                                  mm = *(v813 + 16);
                                  i = *v813 + 2;
                                  *v813 = i;
                                  p_A = &__A;
                                  if (!nn || i <= v702 && nn <= i && nn >= mm)
                                  {
                                    *(v634 + 32) = nn;
                                    *v3 = *v635;
                                    *(v3 + 4) = v635[1];
                                    *(v3 + 8) = v635[2];
                                    *(v3 + 12) = v635[3];
                                    gc_pred_237(v635, 0, &v981, (v634 + 24), v636, &v1027);
                                    v703 = Pow2_238(*(v634 + 24), *(v634 + 28));
                                    calc_filt_energies(0, &__A, v991, __B, &v970, &v968, v634 + 4, v1030);
                                    v650 = *v1030;
                                    *__b = -1;
                                    vDSP_dotpr(&__A, 1, &__A, 1, __b, 0x28uLL);
                                    *v634 = *__b;
                                    if (v650 <= 0.0)
                                    {
                                      v705 = -32.0;
                                      v706 = v801;
LABEL_1256:
                                      v645 = v799;
                                    }

                                    else
                                    {
                                      v704 = v650 / v703;
                                      if (!v703)
                                      {
                                        v704 = 10.0;
                                      }

                                      if (v704 < 0.025119)
                                      {
                                        v705 = -32.0;
                                        v706 = v801;
                                        goto LABEL_1256;
                                      }

                                      v645 = v799;
                                      if (v704 <= 7.8125)
                                      {
                                        v705 = log10(v704) * 20.0;
                                      }

                                      else
                                      {
                                        v705 = 17.856;
                                      }

                                      v706 = v801;
                                    }

                                    LODWORD(mm) = 0;
                                    nn = v3 + 16;
                                    *&v15 = (v705 * 1024.0) + 0.5;
                                    v763 = *&v15;
                                    LODWORD(v9) = -22731 - *&v15;
                                    if (*&v15 + 22731 < 0)
                                    {
                                      v9 = v9;
                                    }

                                    else
                                    {
                                      v9 = (*&v15 + 22731);
                                    }

                                    v764 = 1;
                                    while (1)
                                    {
                                      v765 = *&qua_gain_code_239[4 * v764];
                                      LODWORD(v766) = v763 - v765;
                                      if (v763 - v765 >= 0)
                                      {
                                        v766 = v766;
                                      }

                                      else
                                      {
                                        v766 = (v765 - v763);
                                      }

                                      if (v766 < v9)
                                      {
                                        if (v763 == v765)
                                        {
                                          LODWORD(mm) = v764;
LABEL_1409:
                                          i = v3 + 8;
                                          for (i1 = 4; i1 > 1; --i1)
                                          {
                                            if (i < v3)
                                            {
                                              goto LABEL_1457;
                                            }

                                            v9 = i + 4;
                                            if (i + 4 > nn || i > v9 || v9 > i + 8)
                                            {
                                              goto LABEL_1457;
                                            }

                                            v9 = *i;
                                            *(i + 4) = v9;
                                            i -= 4;
                                          }

                                          *v3 = mm;
                                          v3 = __dst;
LABEL_1416:
                                          mm = 0;
                                          nn = *(v3 + 4512);
                                          i = nn + 28;
                                          do
                                          {
                                            v768 = (nn + mm);
                                            v9 = nn + mm + 4;
                                            v769 = nn + mm + 8;
                                            if (v9 < nn || v769 > i || v9 > v769 || v9 > i || v768 > v9)
                                            {
                                              goto LABEL_1457;
                                            }

                                            LODWORD(v15) = *v9;
                                            *v768 = *v9;
                                            mm += 4;
                                          }

                                          while (mm != 24);
                                          mm = nn + 24;
                                          if (nn + 24 > i || mm < nn)
                                          {
                                            goto LABEL_1457;
                                          }

                                          *mm = v622;
                                          if (*v819)
                                          {
LABEL_1450:
                                            i = v1030;
                                            *__b = *v793;
                                            *&__b[16] = *(v793 + 2);
                                            v15 = *v795;
                                            v1027 = *v795;
                                            *&v1028 = *(__dst + 488);
                                            *&v1039[0] = v645;
                                            *(&v1039[0] + 1) = v1010;
                                            *&v1039[1] = v1006;
                                            *v1040 = v794;
                                            *&v1040[8] = v794 + 640;
                                            *&v1040[16] = v794;
                                            *__C = __dst + 4544;
                                            *&__C[8] = __dst + 4584;
                                            *&__C[16] = __dst + 4544;
                                            *&v1032 = __dst + 4664;
                                            *(&v1032 + 1) = __dst + 4864;
                                            *&v1033 = __dst + 4664;
                                            *v1030 = __dst + 4584;
                                            *&v1030[8] = v870;
                                            *&v1030[16] = __dst + 4584;
                                            LOWORD(nn) = __dst + 4888;
                                            LOWORD(mm) = __dst + 4892;
                                            if (v802 > v791)
                                            {
                                              goto LABEL_1457;
                                            }

                                            subframePostProc(__b, v798, v1039, v1040, &__A, &v981, __B, &v970, v622, v650, __C, &v1032, v1030, &v1027, v802);
                                          }

                                          else
                                          {
                                            if (v808 == 1)
                                            {
                                              LODWORD(v15) = v897;
                                              v774 = v898;
                                              LOWORD(mm) = __dst + 4664;
                                              *v804 = v897;
                                              *(__dst + 4680) = v774;
                                              *(__dst + 587) = v899;
                                              LOWORD(nn) = __dst + 4704;
                                              if (v804 > __dst + 294)
                                              {
                                                goto LABEL_1457;
                                              }

                                              v16 = (__dst + 3888);
                                              v1 = v790;
                                              *__b = *v795 + 4 * v790;
                                              *&__b[8] = v818[163];
                                              Pred_lt_3or6(__b, SHIDWORD(v787), v787);
                                              mm = *v795;
                                              nn = *(v818 + 326);
                                              v775 = *v795 + 4 * v790;
                                              if (v775 > nn)
                                              {
                                                goto LABEL_1457;
                                              }

                                              nn -= v775;
                                              if (nn < 157)
                                              {
                                                goto LABEL_1457;
                                              }

                                              nn = *(v3 + 3904);
                                              if (nn > v775)
                                              {
                                                goto LABEL_1457;
                                              }

                                              Convolve(v775, &v908, __B);
                                              *__b = *v793;
                                              *&__b[16] = *(v793 + 2);
                                              v1027 = *v795;
                                              *&v1028 = *(__dst + 488);
                                              *&v1039[0] = v645 - 44;
                                              *(&v1039[0] + 1) = v1010;
                                              *&v1039[1] = v1006;
                                              *v1040 = v794;
                                              *&v1040[8] = v794 + 640;
                                              *&v1040[16] = v794;
                                              *__C = __dst + 4544;
                                              *&__C[8] = __dst + 4584;
                                              *&__C[16] = __dst + 4544;
                                              *&v1032 = __dst + 4664;
                                              *(&v1032 + 1) = __dst + 4864;
                                              *&v1033 = __dst + 4664;
                                              *v1030 = __dst + 4584;
                                              *&v1030[8] = v870;
                                              *&v1030[16] = __dst + 4584;
                                              subframePostProc(__b, v790, v1039, v1040, &v938, &v918, __B, &v928, v789, v788, __C, &v1032, v1030, &v1027, &v891);
                                              nn = *(v3 + 4128);
                                              v776 = *(v3 + 4136);
                                              _CF = v776 >= nn;
                                              mm = v776 - nn;
                                              if (!_CF)
                                              {
                                                goto LABEL_1457;
                                              }

                                              i = *(v3 + 4144);
                                              if (i > nn)
                                              {
                                                goto LABEL_1457;
                                              }

                                              if (mm < 157)
                                              {
                                                goto LABEL_1457;
                                              }

                                              v777 = *(v3 + 4120);
                                              v778 = *v819;
                                              v779 = *(v3 + 3888) + 4 * v706;
                                              v780 = *(v3 + 1280) + 4 * v706;
                                              *__b = v809;
                                              *&__b[8] = v1014;
                                              *&__b[16] = v1010;
                                              *&v1039[0] = v645;
                                              *(&v1039[0] + 1) = v1010;
                                              *&v1039[1] = v1006;
                                              *v1040 = v780;
                                              v16 = v818;
                                              *&v1040[8] = *v818;
                                              *__C = __dst + 4664;
                                              *&__C[8] = __dst + 4864;
                                              *&__C[16] = __dst + 4664;
                                              *&v1032 = __dst + 3912;
                                              *(&v1032 + 1) = __dst + 4116;
                                              *&v1033 = __dst + 3912;
                                              *v1030 = v779;
                                              *&v1030[8] = v818[163];
                                              v1027 = *v803;
                                              *&v1028 = *(__dst + 610);
                                              subframePreProc(v778, __b, v1039, v1040, __C, v800, v777, &v1032, v1030, nn, &__A, &v958, &v1027);
                                              *__b = *(v3 + 3888) + 4 * v706;
                                              *&__b[8] = v818[163];
                                              Pred_lt_3or6(__b, v810, v816);
                                              v781 = *(v3 + 4128);
                                              nn = *(v3 + 4136);
                                              if (v781 > nn)
                                              {
                                                goto LABEL_1457;
                                              }

                                              nn -= v781;
                                              if (nn < 157)
                                              {
                                                goto LABEL_1457;
                                              }

                                              nn = *(v3 + 4144);
                                              if (nn > v781)
                                              {
                                                goto LABEL_1457;
                                              }

                                              v782 = *(v3 + 3888) + 4 * v706;
                                              nn = *(v3 + 3896);
                                              if (v782 > nn)
                                              {
                                                goto LABEL_1457;
                                              }

                                              mm = *(v3 + 3904);
                                              if (mm > v782)
                                              {
                                                goto LABEL_1457;
                                              }

                                              nn -= v782;
                                              if (nn < 157)
                                              {
                                                goto LABEL_1457;
                                              }

                                              Convolve(v782, v781, __B);
                                              goto LABEL_1450;
                                            }

                                            v944 = v998;
                                            v945 = v999;
                                            v946 = v1000;
                                            v947 = v1001;
                                            v940 = v994;
                                            v941 = v995;
                                            v942 = v996;
                                            v943 = v997;
                                            v938 = __A;
                                            v939 = v993;
                                            v934 = v976;
                                            v935 = v977;
                                            v936 = v978;
                                            v937 = v979;
                                            v930 = v972;
                                            v931 = v973;
                                            v932 = v974;
                                            v933 = v975;
                                            v928 = v970;
                                            v929 = v971;
                                            v924 = v987;
                                            v925 = v988;
                                            v926 = v989;
                                            v927 = v990;
                                            v920 = v983;
                                            v921 = v984;
                                            v922 = v985;
                                            v923 = v986;
                                            v918 = v981;
                                            v919 = v982;
                                            i = v1030;
                                            *__b = *v793;
                                            *&__b[16] = *(v793 + 2);
                                            v15 = *v795;
                                            v1027 = *v795;
                                            *&v1028 = *(__dst + 488);
                                            *&v1039[0] = v645;
                                            *(&v1039[0] + 1) = v1010;
                                            *&v1039[1] = v1006;
                                            *v1040 = v794;
                                            *&v1040[8] = v794 + 640;
                                            *&v1040[16] = v794;
                                            *__C = &v904;
                                            *&__C[8] = &v907;
                                            *&__C[16] = &v904;
                                            *&v1032 = __dst + 4664;
                                            *(&v1032 + 1) = __dst + 4864;
                                            *&v1033 = __dst + 4664;
                                            *v1030 = &v900;
                                            *&v1030[8] = &v903;
                                            *&v1030[16] = &v900;
                                            LOWORD(nn) = __dst + 4888;
                                            LOWORD(mm) = __dst + 4892;
                                            if (v802 > v791)
                                            {
                                              goto LABEL_1457;
                                            }

                                            v16 = v798;
                                            subframePostProc(__b, v798, v1039, v1040, &__A, &v981, __B, &v970, v622, v650, __C, &v1032, v1030, &v1027, v802);
                                            LODWORD(v15) = v891;
                                            *v802 = v891;
                                            v787 = __PAIR64__(v810, v816);
                                            v790 = v798;
                                          }

                                          v809 = (v809 + 44);
                                          v388 = (v645 + 44);
                                          v806 += 160;
                                          v807 += 160;
                                          v386 = v608 + 160;
                                          _CF = v706 >= 0x78;
                                          v387 = v706 + 40;
                                          v9 = (1 - v808);
                                          if (_CF)
                                          {
                                            goto LABEL_551;
                                          }

                                          goto LABEL_583;
                                        }

                                        v9 = v766;
                                        LODWORD(mm) = v764;
                                      }

                                      if (++v764 == 739)
                                      {
                                        goto LABEL_1409;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_1457;
                      }

                      if (v814 > 3)
                      {
                        v449 = 1;
                      }

                      else
                      {
                        v449 = v867;
                      }

                      v448 = v864;
                      if (v449)
                      {
                        goto LABEL_707;
                      }

                      v450 = *v872;
                      if (*v872 - v881 > 5)
                      {
                        v450 = v881 + 5;
                      }

                      if (v876 - v450 > 4)
                      {
                        v450 = v876 - 4;
                      }

                      if (nn == v450 || nn == v450 - 1)
                      {
LABEL_707:
                        *v1040 = v1039;
                        *&v1040[8] = v1040;
                        *&v1040[16] = v1039;
                        v452 = v855;
                      }

                      else
                      {
                        if (nn == v450 - 2)
                        {
                          LODWORD(v1032) = 0;
                          goto LABEL_707;
                        }

                        if (nn != v450 + 1)
                        {
                          LODWORD(v1032) = 0;
                          goto LABEL_709;
                        }

                        *v1040 = v1039;
                        *&v1040[8] = v1040;
                        *&v1040[16] = v1039;
                        v452 = 0;
                      }

                      searchFrac(__C, &v1032, v452, v1040, v864);
                      v441 = v876;
                      v440 = v881;
                      goto LABEL_709;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_1457;
  }

LABEL_551:
  nn = 0;
  mm = v3 + 1360;
  i = v3 + 2572;
  do
  {
    v372 = (v3 + nn + 1360);
    v9 = v3 + nn + 2000;
    v373 = v3 + nn + 2004;
    v375 = v9 < mm || v373 > i || v9 > v373;
    v376 = v3 + nn + 1364;
    if (v375 || v376 > i || v372 > v376)
    {
      goto LABEL_1457;
    }

    LODWORD(v15) = *v9;
    *v372 = *v9;
    nn += 4;
  }

  while (nn != 572);
  nn = 0;
  mm = v3 + 3884;
  do
  {
    i = v3 + nn + 2628;
    v379 = (v3 + nn + 3268);
    v380 = v3 + nn + 3272;
    v382 = v379 < v811 || v380 > mm || v379 > v380;
    v9 = v3 + nn + 2632;
    if (v382 || v9 > mm || i > v9)
    {
      goto LABEL_1457;
    }

    LODWORD(v15) = *v379;
    *i = *v379;
    nn += 4;
  }

  while (nn != 616);
  return memcpy(v3, (v3 + 640), 0x280uLL);
}

void *level_calculation(void *result, float *a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  if (a3 >= a4)
  {
    v6 = result[2];
    v8 = a5;
    v9 = a6;
    v12 = 0.0;
    v7 = a3;
LABEL_14:
    v15 = *a2;
    *a2 = v12;
    v16 = v12 + v15;
    v17 = (*result + 4 * v9);
    v18 = 4 * v8;
    while (1)
    {
      v19 = (v17 + 1) > result[1] || v17 >= v17 + 1;
      if (v19 || v17 < v6)
      {
        break;
      }

      v16 = v16 + fabsf(*v17);
      v17 = (v17 + v18);
      if (!--v7)
      {
        return result;
      }
    }
  }

  else
  {
    v6 = result[2];
    v7 = a3;
    v8 = a5;
    v9 = a6;
    v10 = a4 - a3;
    v11 = (*result + 4 * a3 * a5 + 4 * a6);
    v12 = 0.0;
    while (1)
    {
      v13 = (v11 + 1) > result[1] || v11 >= v11 + 1;
      if (v13 || v11 < v6)
      {
        break;
      }

      v12 = v12 + fabsf(*v11);
      v11 += a5;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }
  }

  __break(0x5519u);
  return result;
}

void Autocorr(uint64_t a1, float *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  MEMORY[0x19EAE5FA0](a1, 1, a3, 1, __b, 1, 240);
  memset(&__b[240], 0, 44);
  vDSP_conv(__b, 1, __b, 1, a2, 1, 0xBuLL, 0xF0uLL);
}

__n128 Levinson(unint64_t a1, float *a2, unint64_t a3, _OWORD *a4)
{
  v4 = 0;
  v37 = *MEMORY[0x1E69E9840];
  v36 = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v35 = v5;
  *&v34[1] = v5;
  v34[0] = -a2[1] / *a2;
  *&v5 = v34[0];
  v6 = a3 + 44;
  *a3 = 1065353216;
  *(a3 + 4) = v5;
  v7 = *a2 + (a2[1] * *&v5);
  if (v7 <= 0.0)
  {
    v7 = 0.01;
  }

  for (i = 2; i != 11; ++i)
  {
    v9 = 0.0;
    v10 = a3;
    v11 = v4;
    do
    {
      v12 = (a2 + v11 + 8);
      v13 = a2 + v11 + 12;
      if (v12 < a2 || v13 > (a2 + 11) || v12 > v13)
      {
        goto LABEL_38;
      }

      v16 = *v10++;
      v9 = v9 + (*v12 * v16);
      v11 -= 4;
    }

    while (v11 != -8);
    v17 = &v34[i];
    v18 = v17 - 1;
    if (v17 - 1 < v34 || v18 > v17)
    {
      goto LABEL_38;
    }

    v19 = 0;
    v20 = -v9 / v7;
    *v18 = v20;
    v21 = v4;
    do
    {
      v22 = (a3 + v19 + 4);
      v23 = a3 + v19 + 8;
      v25 = v22 < a3 || v23 > v6 || v22 > v23;
      v26 = (a3 + v21 + 4);
      v27 = a3 + v21 + 8;
      if (v25 || v26 < a3 || v27 > v6 || v26 > v27)
      {
        goto LABEL_38;
      }

      v31 = *v22 + (v20 * *v26);
      *v26 = *v26 + (v20 * *v22);
      *v22 = v31;
      v19 += 4;
      v21 -= 4;
    }

    while (((2 * i) & 0x1FFFFFFFCLL) != v19);
    *(a3 + 4 * i) = v20;
    v7 = v7 + (v20 * v9);
    if (v7 <= 0.0)
    {
      v7 = 0.01;
    }

    v4 += 4;
  }

  *a4 = *v34;
  if (a4 + 1 < a4 || (result = *a3, v33 = *(a3 + 16), *(a1 + 28) = *(a3 + 28), *a1 = result, *(a1 + 16) = v33, a1 + 44 < a1))
  {
LABEL_38:
    __break(0x5519u);
  }

  return result;
}

__n128 Az_lsp(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v60 = NAN;
  v59 = -1;
  v58 = -1;
  v56 = NAN;
  v55 = -1;
  v54 = -1;
  v57 = 1065353216;
  v53 = 1065353216;
  v3 = 1.0;
  v4 = 40;
  v5 = 4;
  v6 = 1.0;
  do
  {
    v7 = *(a1 + v5);
    v8 = *(a1 + v4);
    v6 = (v7 + v8) - v6;
    *(&v57 + v5) = v6;
    v3 = (v7 - v8) + v3;
    *(&v53 + v5) = v3;
    v4 -= 4;
    v5 += 4;
  }

  while (v4 != 20);
  result.n128_u32[0] = v58;
  v10 = v60 * 0.5;
  v60 = v60 * 0.5;
  v11 = v56 * 0.5;
  v56 = v56 * 0.5;
  v12 = *&v58 + 2.0;
  v13 = 1.0;
  for (i = 8; i != 20; i += 4)
  {
    v15 = v13;
    v13 = v12;
    v12 = *(&v57 + i) - (v15 - (v12 * 2.0));
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v10 + (v12 - v13);
  v20 = a2 + 40;
  v21 = 1.0;
  v22 = *&v54;
  v23 = &v57;
  v24 = &v61;
  do
  {
    if (v24 < v23 || v24 - v23 < 21)
    {
      goto LABEL_48;
    }

    v25 = grid[v16 + 1];
    v26 = *(v23 + 1);
    v27 = (v25 + v25) + v26;
    v28 = 1.0;
    for (j = 2; j != 5; ++j)
    {
      v30 = v28;
      v28 = v27;
      v27 = *&v23[j] - (v30 - ((v25 + v25) * v27));
    }

    v31 = -(v28 - (v25 * v27));
    v32 = *(v23 + 5);
    v33 = v31 + v32;
    if ((v19 * v33) <= 0.0)
    {
      v34 = 0;
      v35 = v23 + 2;
      do
      {
        v36 = 0;
        v37 = (v21 + v25) * 0.5;
        v38 = v26 + (v37 + v37);
        v39 = 1.0;
        do
        {
          v40 = v39;
          v39 = v38;
          v38 = *&v35[v36++] - (v40 - ((v37 + v37) * v38));
        }

        while (v36 != 3);
        if ((v33 * (v32 - (v39 - (v37 * v38)))) <= 0.0)
        {
          v19 = v32 - (v39 - (v37 * v38));
          v21 = (v21 + v25) * 0.5;
        }

        else
        {
          v33 = v32 - (v39 - (v37 * v38));
          v25 = (v21 + v25) * 0.5;
        }

        ++v34;
      }

      while (v34 != 4);
      v41 = v19 - v33;
      if (v41 == 0.0)
      {
        v21 = v25;
      }

      else
      {
        v21 = v25 - (v33 * ((v21 - v25) / v41));
      }

      v42 = (a2 + 4 * v17);
      if (v42 < a2 || (v42 + 1) > v20 || v42 > v42 + 1)
      {
        goto LABEL_48;
      }

      *v42 = v21;
      v24 = v18 ? &v61 : &v57;
      v23 = v18 ? &v57 : &v53;
      if (v24 < v23 || v24 - v23 < 21)
      {
        goto LABEL_48;
      }

      ++v17;
      v43 = v21 + v21;
      if (v18)
      {
        v44 = result.n128_f32[0];
      }

      else
      {
        v44 = v22;
      }

      v45 = v43 + v44;
      v46 = 1.0;
      for (k = 2; k != 5; ++k)
      {
        v48 = v46;
        v46 = v45;
        v45 = *&v23[k] - (v48 - (v43 * v45));
      }

      v49 = -(v46 - (v21 * v45));
      if (v18)
      {
        v50 = v10;
      }

      else
      {
        v50 = v11;
      }

      v19 = v49 + v50;
      v18 = !v18;
    }

    else
    {
      v19 = v33;
      v21 = grid[v16 + 1];
    }

    if (v17 > 9)
    {
      break;
    }
  }

  while (v16++ < 0x3B);
  if (v17 <= 9)
  {
    result = *a3;
    v52 = *(a3 + 16);
    *(a2 + 32) = *(a3 + 32);
    *a2 = result;
    *(a2 + 16) = v52;
    if (v20 < a2)
    {
LABEL_48:
      __break(0x5519u);
    }
  }

  return result;
}

float *Lsp_Az_228(float *a1, float *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(v25, 255, sizeof(v25));
  v4 = (a1 + 10);
  memset(v24, 255, sizeof(v24));
  Get_lsp_pol_255(a1, v25);
  v5 = a1 + 1;
  if ((a1 + 1) > v4 || v5 < a1)
  {
LABEL_26:
    __break(0x5519u);
  }

  result = Get_lsp_pol_255(v5, v24);
  v7 = 6;
  do
  {
    v8 = (v7 - 1);
    v9 = (v7 - 2);
    v10 = v25 + 4 * v9;
    v11 = v10 + 4;
    v13 = v10 < v25 || v11 > &v26 || v10 > v11;
    v14 = v25 + v8;
    if (v13 || v14 < v25)
    {
      goto LABEL_26;
    }

    *v14 = *(v25 + v9) + *v14;
    v16 = v24 + v9;
    if (v16 < v24)
    {
      goto LABEL_26;
    }

    if (v16 + 1 > v25)
    {
      goto LABEL_26;
    }

    if (v16 > v16 + 1)
    {
      goto LABEL_26;
    }

    v17 = v24 + v8;
    if (v17 < v24)
    {
      goto LABEL_26;
    }

    *v17 = *v17 - *v16;
    v7 = v8;
  }

  while (v8 > 1);
  v18 = 0;
  *a2 = 1.0;
  v19 = 1;
  do
  {
    v20 = *(v25 + v19 * 4);
    v21 = *(v24 + v19 * 4);
    a2[v19] = (v20 + v21) * 0.5;
    v22 = &a2[v18 + 10];
    if (v22 < a2)
    {
      goto LABEL_26;
    }

    v23 = &a2[v18 + 11];
    if (v23 > (a2 + 11) || v22 > v23)
    {
      goto LABEL_26;
    }

    *v22 = (v20 - v21) * 0.5;
    --v18;
    ++v19;
  }

  while (v18 != -5);
  return result;
}

unint64_t Lsf_wt(unint64_t result, uint64_t a2)
{
  v2 = 0;
  *a2 = *(result + 4);
  v3 = result;
  do
  {
    if (v3 < result || v3 >= v3 + 1)
    {
      __break(0x5519u);
      return result;
    }

    v4 = v3[2];
    v5 = *v3++;
    *(a2 + 4 + 4 * v2++) = v4 - v5;
  }

  while (v2 != 8);
  v6 = 0;
  *(a2 + 36) = 4000.0 - *(result + 32);
  do
  {
    v7 = *(a2 + v6);
    if (v7 >= 450.0)
    {
      v8 = ((v7 + -450.0) * -0.0007619) + 1.8;
    }

    else
    {
      v8 = (v7 * -0.0034378) + 3.347;
    }

    *(a2 + v6) = v8 * v8;
    v6 += 4;
  }

  while (v6 != 40);
  return result;
}

float *Vq_subvec(float *result, float *a2, void *a3, unsigned __int16 a4, float a5, float a6, float a7, float a8)
{
  v8 = 0;
  v9 = 0;
  v10 = a3[1];
  v11 = a3[2];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = 1.79769313e308;
  v17 = (*a3 + 8);
  while (1)
  {
    v18 = v17 - 2;
    v19 = v17 - 1;
    v20 = (v17 - 1) > v10 || v18 > v19;
    v21 = !v20 && v18 >= v11;
    v22 = !v21 || v17 > v10;
    if (v22 || v19 >= v17)
    {
      break;
    }

    v24 = (v17 + 1);
    if ((v17 + 1) > v10 || v17 > v24 || (v17 + 2) > v10 || v24 > (v17 + 2))
    {
      break;
    }

    v25 = (*result - *(v17 - 2));
    v26 = (result[1] - *(v17 - 1));
    v27 = *v17;
    v28 = v17[1];
    v17 += 4;
    v29 = v25 * v25 * v12 + v26 * v26 * v13 + (*a2 - v27) * (*a2 - v27) * v14 + (a2[1] - v28) * (a2[1] - v28) * v15;
    if (v29 < v16)
    {
      v9 = v8;
      v16 = v29;
    }

    if (a4 == ++v8)
    {
      v30 = (*a3 + 16 * v9);
      v31 = v30 + 1;
      if ((v30 + 1) <= v10 && v30 < v31 && v30 >= v11)
      {
        v34 = v30 + 2;
        *result = *v30;
        if ((v30 + 2) <= v10 && v31 <= v34)
        {
          result[1] = v30[1];
          v36 = v30 + 3;
          if ((v30 + 3) <= v10 && v34 <= v36)
          {
            *a2 = v30[2];
            v38 = v30 + 4;
            if (v38 <= v10 && v36 <= v38)
            {
              a2[1] = *v36;
              return v9;
            }
          }
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

void Q_plsf_3(unsigned int a1, unint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _DWORD *a6)
{
  v12 = 0;
  v56 = *MEMORY[0x1E69E9840];
  v55 = -1;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v54[0] = v13;
  v54[1] = v13;
  v42 = -1;
  v40 = v13;
  v41 = v13;
  v39 = -1;
  v37 = v13;
  v38 = v13;
  do
  {
    v14 = acos(*(a3 + v12)) * 1273.2395;
    *(v54 + v12) = v14;
    v12 += 4;
  }

  while (v12 != 40);
  v53 = -1;
  *&v15 = -1;
  *(&v15 + 1) = -1;
  *v52 = v15;
  *&v52[16] = v15;
  v49 = v15;
  v50 = v15;
  v51 = -1;
  v46 = v15;
  v47 = v15;
  v48 = -1;
  Lsf_wt(v54, v52);
  if (a1 == 8)
  {
    v16 = 0;
    *a6 = 0;
    v17 = 3.4028e38;
    v18 = &past_rq_init_249;
    do
    {
      v19 = 0;
      v20 = &past_rq_init_249 + 40 * v16;
      v21 = 0.0;
      do
      {
        v22 = *&mean_lsf_3_247[v19 / 4] + *&v18[v19];
        *(&v37 + v19) = v22;
        v23 = *(v54 + v19) - v22;
        *(&v40 + v19) = v23;
        v21 = v21 + (v23 * v23);
        v19 += 4;
      }

      while (v19 != 40);
      if (v21 < v17)
      {
        v46 = v40;
        v47 = v41;
        v48 = v42;
        v49 = v37;
        v50 = v38;
        v51 = v39;
        *(a2 + 32) = *(v20 + 4);
        *(a2 + 16) = *(v20 + 1);
        *a2 = *v20;
        if (a2 + 40 < a2)
        {
          __break(0x5519u);
        }

        *a6 = v16;
        v17 = v21;
      }

      ++v16;
      v18 += 40;
    }

    while (v16 != 8);
  }

  else
  {
    for (i = 0; i != 10; ++i)
    {
      v25 = *&mean_lsf_3_247[i] + (*(a2 + i * 4) * *&pred_fac_248[i]);
      *(&v49 + i * 4) = v25;
      *(&v46 + i * 4) = *(v54 + i * 4) - v25;
    }
  }

  if (a1 > 1)
  {
    if (a1 == 5)
    {
      v27 = 0x1800u;
      *&v43 = &mr795_1_lsf_253;
      *(&v43 + 1) = &mr795_1_lsf_253 + v27;
      *&v44 = &mr795_1_lsf_253;
      *a5 = Vq_subvec3(&v46, &v43, 0x200u, 0, *v52, *&v52[8]);
      v28 = &dico2_lsf_3_251 + v27;
    }

    else
    {
      *&v43 = &dico1_lsf_3_250;
      *(&v43 + 1) = &dico2_lsf_3_251;
      *&v44 = &dico1_lsf_3_250;
      *a5 = Vq_subvec3(&v46, &v43, 0x100u, 0, *v52, *&v52[8]);
      v28 = &dico2_lsf_3_251 + 6144;
    }

    *&v43 = &dico2_lsf_3_251;
    *(&v43 + 1) = v28;
    *&v44 = &dico2_lsf_3_251;
    a5[1] = Vq_subvec3((&v46 | 0xC), &v43, 0x200u, 0, *&v52[12], *&v52[20]);
    *&v43 = &dico3_lsf_3_254;
    *(&v43 + 1) = &corrweight;
    *&v44 = &dico3_lsf_3_254;
    v26 = 512;
  }

  else
  {
    *&v43 = &dico1_lsf_3_250;
    *(&v43 + 1) = &dico2_lsf_3_251;
    *&v44 = &dico1_lsf_3_250;
    *a5 = Vq_subvec3(&v46, &v43, 0x100u, 0, *v52, *&v52[8]);
    *&v43 = &dico2_lsf_3_251;
    *(&v43 + 1) = &dico2_lsf_3_251 + 6144;
    *&v44 = &dico2_lsf_3_251;
    a5[1] = Vq_subvec3((&v46 | 0xC), &v43, 0x100u, 1, *&v52[12], *&v52[20]);
    *&v43 = &mr515_3_lsf_252;
    *(&v43 + 1) = &mr795_1_lsf_253;
    *&v44 = &mr515_3_lsf_252;
    v26 = 128;
  }

  a5[2] = Vq_subvec4(&v47 + 1, &v43, &v52[24], v26);
  v29 = 0;
  v45 = -1;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v43 = v30;
  v44 = v30;
  v31 = v47;
  *a2 = v46;
  *(a2 + 16) = v31;
  *(a2 + 32) = v48;
  do
  {
    *(&v43 + v29) = *(&v46 + v29) + *(&v49 + v29);
    v29 += 4;
  }

  while (v29 != 40);
  v32 = 0;
  v33 = 50.0;
  do
  {
    v34 = *(&v43 + v32);
    if (v34 < v33)
    {
      *(&v43 + v32) = v33;
      v34 = v33;
    }

    v33 = v34 + 50.0;
    v32 += 4;
  }

  while (v32 != 40);
  for (j = 0; j != 40; j += 4)
  {
    v36 = cos((*(&v43 + j) * 0.0007854));
    *(a4 + j) = v36;
  }
}

void *Residu(void *result, void *a2, void *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a2[2];
  v6 = 4;
  v7 = 8;
  v8 = 12;
LABEL_2:
  v9 = 0;
  v10 = (*a2 + v3);
  v11 = 0.0;
  while (1)
  {
    v12 = (v10 + 1) > a2[1] || v10 >= v10 + 1;
    if (v12 || v10 < v5)
    {
      break;
    }

    v14 = result[2];
    v15 = (*result + v9);
    v16 = (v15 + 1) > result[1] || v15 >= v15 + 1;
    if (v16 || v15 < v14)
    {
      break;
    }

    v18 = *v10--;
    v11 = v11 + (v18 * *v15);
    v9 += 4;
    if (v9 == 44)
    {
      v19 = a3[2];
      v20 = (*a3 + 4 * v4);
      if ((v20 + 1) <= a3[1] && v20 < v20 + 1 && v20 >= v19)
      {
        v23 = 0;
        *v20 = v11;
        v24 = (*a2 + v6);
        v25 = 0.0;
        while (1)
        {
          v26 = (v24 + 1) > a2[1] || v24 >= v24 + 1;
          if (v26 || v24 < v5)
          {
            break;
          }

          v28 = (*result + v23);
          v29 = (v28 + 1) > result[1] || v28 >= v28 + 1;
          if (v29 || v28 < v14)
          {
            break;
          }

          v31 = *v24--;
          v25 = v25 + (v31 * *v28);
          v23 += 4;
          if (v23 == 44)
          {
            v32 = (*a3 + 4 * (v4 | 1));
            if ((v32 + 1) <= a3[1] && v32 < v32 + 1 && v32 >= v19)
            {
              v35 = 0;
              *v32 = v25;
              v36 = (*a2 + v7);
              v37 = 0.0;
              while (1)
              {
                v38 = (v36 + 1) > a2[1] || v36 >= v36 + 1;
                if (v38 || v36 < v5)
                {
                  break;
                }

                v40 = (*result + v35);
                v41 = (v40 + 1) > result[1] || v40 >= v40 + 1;
                if (v41 || v40 < v14)
                {
                  break;
                }

                v43 = *v36--;
                v37 = v37 + (v43 * *v40);
                v35 += 4;
                if (v35 == 44)
                {
                  v44 = (*a3 + 4 * (v4 | 2));
                  if ((v44 + 1) <= a3[1] && v44 < v44 + 1 && v44 >= v19)
                  {
                    v47 = 0;
                    *v44 = v37;
                    v48 = (*a2 + v8);
                    v49 = 0.0;
                    while (1)
                    {
                      v50 = (v48 + 1) > a2[1] || v48 >= v48 + 1;
                      if (v50 || v48 < v5)
                      {
                        break;
                      }

                      v52 = (*result + v47);
                      v53 = (v52 + 1) > result[1] || v52 >= v52 + 1;
                      if (v53 || v52 < v14)
                      {
                        break;
                      }

                      v55 = *v48--;
                      v49 = v49 + (v55 * *v52);
                      v47 += 4;
                      if (v47 == 44)
                      {
                        v56 = (*a3 + 4 * (v4 | 3));
                        if ((v56 + 1) > a3[1] || v56 >= v56 + 1 || v56 < v19)
                        {
                          goto LABEL_109;
                        }

                        *v56 = v49;
                        v3 += 16;
                        v6 += 16;
                        v7 += 16;
                        v8 += 16;
                        v12 = v4 >= 0x24;
                        v4 += 4;
                        if (v12)
                        {
                          return result;
                        }

                        goto LABEL_2;
                      }
                    }
                  }

                  goto LABEL_109;
                }
              }
            }

            goto LABEL_109;
          }
        }
      }

      break;
    }
  }

LABEL_109:
  __break(0x5519u);
  return result;
}