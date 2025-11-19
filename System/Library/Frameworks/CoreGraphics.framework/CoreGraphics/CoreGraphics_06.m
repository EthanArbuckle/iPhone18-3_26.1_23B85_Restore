void *RIPLayerBltShape(int *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a6;
  v11 = a4;
  v12 = a3;
  v67 = *MEMORY[0x1E69E9840];
  v47[0] = 0;
  v47[1] = 0;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  if (a2)
  {
    if (a4)
    {
      if (*(a4 + 64) || *(a4 + 56))
      {
        if ((ripl_Combine(a4, a2, 0) & 1) == 0)
        {
          return 0;
        }

LABEL_17:
        v15 = (v11 + 12);
        if (!v12)
        {
          v12 = (v11 + 12);
        }

        if (*(v11 + 64))
        {
          if (*(v11 + 72))
          {
            goto LABEL_31;
          }

          if (v12 == v15 || !ripl_IsContained(v12, v15))
          {
            if (ripl_CreateMask(v11, 0, a3, a4, a5, a6, a7, a8))
            {
              goto LABEL_31;
            }

            return 0;
          }
        }

        else
        {
          if (*(v11 + 56))
          {
            goto LABEL_31;
          }

          if (v12 != v15)
          {
            if (CGSBoundsIntersection((v11 + 12), v12, v47))
            {
              v11 = 0;
              v12 = v47;
              goto LABEL_31;
            }

            return 0;
          }
        }

        v11 = 0;
        goto LABEL_31;
      }

      v14 = (a4 + 12);
      if (a3)
      {
        if (v14 != a3)
        {
          v12 = v47;
          v11 = a2;
          if ((CGSBoundsIntersection(v14, a3, v47) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v12 = (a4 + 12);
      }
    }

    v11 = a2;
    goto LABEL_17;
  }

  if (a4)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    v12 = a1 + 3;
  }

LABEL_31:
  v17 = *(a1 + 5);
  if (!v17)
  {
    *&v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v17 = &v48;
    v48 = 0u;
    v49 = 0u;
  }

  result = (*(*a1 + 32))(a1, 32, v12);
  if (result)
  {
    v24 = result;
    v25 = *result;
    if (!*result || !v25[4] || !*(a1 + 7) && !ripl_CreateMask(a1, 1, v18, v19, v20, v21, v22, v23))
    {
      goto LABEL_64;
    }

    *v17 = *a7;
    v26.n128_f64[0] = ripl_BltOpDestination(v17, v12, a1);
    if (!a5)
    {
      v28 = 0;
      v29 = v25[3];
      if (!v29)
      {
LABEL_65:
        (*(*a1 + 48))(a1, v28);
        return (v28 != 0);
      }

      v45 = 0;
      v46 = v9;
      v30 = 0;
      v31 = *(a7 + 48);
      v32 = 0;
      goto LABEL_47;
    }

    v27 = *a5;
    if (*a5 != &ripc_class)
    {
      if (v27)
      {
        while (v27 != RIPLayer_ripl_class)
        {
          if (!*v27)
          {
            goto LABEL_64;
          }

          v27 = (*v27)(v26);
          v28 = 0;
          if (!v27)
          {
            goto LABEL_65;
          }
        }

        v37 = (*(*a5 + 32))(a5, 16, a5 + 12, v26);
        if (v37)
        {
          if (*(*v37 + 8) != v25[1] || !*(a5 + 56) && !ripl_CreateMask(a5, 0, v38, v39, v40, v41, v42, v43))
          {
            v28 = 0;
LABEL_78:
            (*(*a5 + 48))(a5, 0);
            goto LABEL_65;
          }

          ripl_BltOpSourceLayer(v17, v12, a1, v9, a5);
          v44 = 0;
          v34 = 0;
LABEL_69:
          ripl_BltOpMask(v17, v12, v11);
          if (CGBlt_initialize(v17))
          {
            if ((v25[4])(v24, v17))
            {
              v28 = v12;
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 0;
          }

          if (v34)
          {
            if (v34 != v17 + 184)
            {
              free(v34);
            }
          }

          if (v44)
          {
            goto LABEL_65;
          }

          goto LABEL_78;
        }
      }

      goto LABEL_64;
    }

    v29 = v25[3];
    if (!v29)
    {
      goto LABEL_64;
    }

    v35 = *(a7 + 48);
    v28 = *(a5 + 8);
    v31 = *(a5 + 156) * v35;
    if (v28 && *(a5 + 20) == *(v17 + 43) && v28 == *(v17 + 20) && *(a5 + 16) == *(v17 + 42) && v31 == *(v17 + 44))
    {
      v34 = v17 + 184;
LABEL_68:
      ripl_BltOpSourcePattern(v17, a1, v9, v34);
      v44 = 1;
      goto LABEL_69;
    }

    v32 = a5 + 28;
    v36 = *(a5 + 24);
    if (v36)
    {
      if (v36 != 2)
      {
        if (v36 == 1)
        {
          LODWORD(v45) = *(a5 + 20);
          HIDWORD(v45) = *(a5 + 16);
          v46 = v9;
          v30 = 3;
          goto LABEL_47;
        }

LABEL_64:
        v28 = 0;
        goto LABEL_65;
      }

      LODWORD(v45) = *(a5 + 20);
      HIDWORD(v45) = *(a5 + 16);
      v46 = v9;
      v30 = 4;
    }

    else
    {
      LODWORD(v45) = *(a5 + 20);
      HIDWORD(v45) = *(a5 + 16);
      v46 = v9;
      v30 = 1;
    }

LABEL_47:
    v33 = v29(v24, v17 + 184, 64, v30, v32, *(a7 + 4), v31);
    v34 = v33;
    if (v33 == v17 + 184)
    {
      v9 = v46;
      if ((*v33 & 0xFFF00000) == 0x400000)
      {
        *(v17 + 20) = v28;
        *(v17 + 42) = HIDWORD(v45);
        *(v17 + 43) = v45;
        *(v17 + 44) = v31;
      }

      else
      {
        *(v17 + 20) = 0;
        *(v17 + 21) = 0;
      }
    }

    else
    {
      v9 = v46;
    }

    goto LABEL_68;
  }

  return result;
}

void ripr_Finish(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 != a1 + 168)
    {
      v3 = *(v1 + 24);
      if (v3)
      {
        aa_free_edges(*(v1 + 24));
        free(v3);
      }

      v4 = *(v1 + 32);
      if (v4)
      {
        aal_free_edges(*(v1 + 32));
        while (1)
        {
          v5 = v4[28];
          if (!v5)
          {
            break;
          }

          v4[28] = *v5;
          free(v5);
        }

        free(v4);
      }

      (*(*(v1 + 120) + 24))(v1 + 120);
      if (*(v1 + 8))
      {
        free(*(v1 + 16));
      }

      free(v1);
    }

    *(a1 + 16) = 0;
  }
}

void CGContextRestoreGState(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(c + 12) = CGGStackRestore(*(c + 13), v1, v2, v3, v4, v5, v6, v7);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextRestoreGState", v8, v2, v3, v4, v5, v6, v7);
}

uint64_t aa_render(uint64_t result, unsigned int a2, char *a3, unint64_t a4, int a5, int a6, int a7, int a8, __n128 a9)
{
  v209 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  v9 = result;
  v11 = *result;
  v10 = *(result + 4);
  v13 = *(result + 8);
  v12 = *(result + 12);
  v14 = v13 - *result < 31 || v12 - v10 < 31;
  if (v14)
  {
    return 0;
  }

  v15 = *(result + 184);
  if (24 * v15 + 44 < 1)
  {
    return 0;
  }

  v17 = a3;
  v18 = a2;
  v19 = v11 >> 12;
  v20 = (v13 + 4095) >> 12;
  v21 = v10 >> 12;
  v22 = (v12 + 4095) >> 12;
  if ((a2 & 4) != 0)
  {
    result = 0;
    if (a7 <= a5)
    {
      return result;
    }

    v23 = a8 - a6 - 1;
    if (a8 - a6 < 1)
    {
      return result;
    }

    result = 0;
    v33 = v21 - a6;
    if (v21 >= a6)
    {
      v34 = -(v33 * a4);
    }

    else
    {
      v34 = 0;
    }

    if (v21 < a6)
    {
      v21 = a6;
    }

    v35 = v19 - a5;
    if (v19 < a5)
    {
      v36 = a5;
    }

    else
    {
      v36 = v19;
    }

    v37 = v22 - a8;
    if (v22 - a8 >= 1)
    {
      v22 = a8;
    }

    v38 = v20 - a7;
    v39 = v20 - a7 >= 1 ? a7 : v20;
    if (v22 <= v21)
    {
      return result;
    }

    v191 = v36;
    v190 = v39;
    if (v39 <= v36)
    {
      return result;
    }

    v40 = &a3[(v35 & ~(v35 >> 31)) + v34];
    if (v33 >= 0)
    {
      v41 = 3;
    }

    else
    {
      v41 = 4;
    }

    if (v41 + (~v35 >> 31) - (v37 < 1) == v38 < 1)
    {
      v18 = a2 & 0xFFFFFFFB;
    }

    else
    {
      v18 = a2;
    }

    if ((v37 | v38) < 0 || v40 != a3)
    {
      bzero(a3, (a8 - a6) * a4);
      v18 |= 0x40u;
      v15 = *(v9 + 184);
    }

    v17 = v40;
  }

  else
  {
    v23 = v22 + ~v21;
    v191 = (v11 >> 12);
    v190 = (v13 + 4095) >> 12;
  }

  v24 = (v23 * a4);
  v194 = &v17[v24];
  if (v15 == 2 && *(v9 + 188) == 2)
  {
    v25 = *v9;
    if (*v9 <= v191 << 12)
    {
      v25 = v191 << 12;
    }

    if (*(v9 + 8) >= v190 << 12)
    {
      v26 = v190 << 12;
    }

    else
    {
      v26 = *(v9 + 8);
    }

    v27 = v26 - 1;
    v28 = (v25 >> 12);
    v29 = (v27 >> 12);
    v207 = a4;
    if (v28 == v27 >> 12)
    {
      v30 = 0;
      v31 = ((v27 - v25) >> 4);
      v32 = v31;
    }

    else
    {
      v32 = (v27 >> 4);
      v31 = ~(v25 >> 4);
      v30 = v29 + ~v28;
    }

    if (*(v9 + 4) <= v21 << 12)
    {
      v143 = v21 << 12;
    }

    else
    {
      v143 = *(v9 + 4);
    }

    if (*(v9 + 12) >= v22 << 12)
    {
      v144 = v22 << 12;
    }

    else
    {
      v144 = *(v9 + 12);
    }

    v145 = v144 - 1;
    v146 = v143 >> 12;
    v147 = v145 >> 12;
    if (v143 >> 12 == v145 >> 12)
    {
      v148 = 0;
      v149 = 0;
      v145 -= v143;
      v150 = v143 >> 12;
    }

    else
    {
      v150 = v146 + 1;
      v148 = ~(v143 >> 4);
      v149 = v147 - (v146 + 1);
    }

    v151 = (v145 >> 4);
    if (v148 <= 0xFE)
    {
      v152 = v148;
    }

    else
    {
      v150 = v143 >> 12;
      v152 = 0;
    }

    if (v148 <= 0xFE)
    {
      v153 = v149;
    }

    else
    {
      v153 = v149 + 1;
    }

    if (v151 == 255)
    {
      v154 = 0;
    }

    else
    {
      v154 = v151;
    }

    if (v151 == 255)
    {
      v155 = v153 + 1;
    }

    else
    {
      v155 = v153;
    }

    v156 = v28;
    v157 = v191;
    v158 = v150 - v21;
    v208 = v28 - v191;
    v206 = v30;
    LODWORD(v203) = v147;
    v204 = v154;
    if ((v18 & 0x40) == 0 && v146 == v21 && v155 * v30 >= 0x21 && v28 == v191 && v147 == v22 - 1)
    {
      v159 = v30;
      if (v29 == v190 - 1)
      {
        v202 = v24;
        v160 = v28;
        v161 = v29;
        LODWORD(v205) = v150 - v21;
        memset(&v194[v207 - v207 * (v155 + v158)], 255, v155 * v207);
        v157 = v191;
        v24 = v202;
        v158 = v205;
        v29 = v161;
        v28 = v160;
        v30 = v206;
        v159 = 0;
        v162 = v32 == 255 && v31 == 255;
        if (v162)
        {
          v155 = 0;
        }
      }
    }

    else
    {
      v159 = v30;
    }

    v163 = v29;
    v205 = v29 - v157;
    if (v152)
    {
      v164 = &v194[-((v146 - v21) * v207)];
      v165 = ((v152 * v31) >> 8) + v152 * v31 + 1;
      v166 = ((v152 * v32) >> 8) + v152 * v32 + 1;
      if (v30 < 0x21)
      {
        if (v30)
        {
          v170 = v152;
          v200 = v28;
          v201 = v29;
          v202 = v24;
          v171 = v158;
          v198 = v166;
          v199 = v165;
          memset(&v164[v208 + 1], v170, v206);
          BYTE1(v166) = BYTE1(v198);
          BYTE1(v165) = BYTE1(v199);
          v158 = v171;
          LODWORD(v29) = v201;
          LODWORD(v24) = v202;
          LODWORD(v28) = v200;
          v169 = v208;
        }

        else
        {
          v169 = v208;
        }
      }

      else
      {
        v199 = ((v152 * v31) >> 8) + v152 * v31 + 1;
        v200 = v28;
        v198 = ((v152 * v32) >> 8) + v152 * v32 + 1;
        v167 = v152;
        v201 = v29;
        v202 = v24;
        v168 = v158;
        memset(&v164[v208 + 1], v167, v206);
        v169 = v208;
        BYTE1(v166) = BYTE1(v198);
        BYTE1(v165) = BYTE1(v199);
        LODWORD(v28) = v200;
        v158 = v168;
        LODWORD(v29) = v201;
        LODWORD(v24) = v202;
      }

      v164[v169] = BYTE1(v165);
      v164[v205] = BYTE1(v166);
    }

    if (v155)
    {
      v172 = v207;
      v173 = v158 * v207;
      if (v159)
      {
        if (v159 >= 0x20)
        {
          v179 = -v207;
          v180 = &v17[v24 + v29 - v191 - v173];
          v181 = &v17[v24 + v28 - v191 - v173 + 1];
          do
          {
            memset(v181, 255, v159);
            *(v181 - 1) = v31;
            *v180 = v32;
            v180 += v179;
            v181 += v179;
            --v155;
          }

          while (v155);
        }

        else
        {
          v174 = 0;
          v175 = v207;
          v176 = &v17[v24 + v29 - v191 - v173];
          v177 = &v17[v24 + v28 - v191 - v173];
          do
          {
            memset(&v177[v174 + 1], 255, v159);
            v177[v174] = v31;
            v176[v174] = v32;
            v174 -= v175;
            --v155;
          }

          while (v155);
        }
      }

      else
      {
        v178 = &v17[v24 - v191 - v173];
        do
        {
          v178[v156] = v31;
          v178[v163] = v32;
          v178 -= v172;
          --v155;
        }

        while (v155);
      }
    }

    if (v204)
    {
      v182 = &v194[-((v203 - v21) * v207)];
      v183 = ((v32 * v204) >> 8) + v32 * v204 + 1;
      if (v206)
      {
        memset(&v182[v208 + 1], v204, v206);
      }

      v182[v208] = (((v31 * v204) >> 8) + v31 * v204 + 1) >> 8;
      v182[v205] = BYTE1(v183);
    }

    return 0xFFFFFFFFLL;
  }

  v42 = (v21 << 12);
  v43 = (v22 << 12);
  if (v22 - v21 > 1015)
  {
    v44 = 8 * (v22 - v21 + 16);
    v46 = malloc_type_malloc(v44, 0x80040B8603338uLL);
    v186 = v46;
  }

  else
  {
    v44 = 8 * (v22 - v21 + 16);
    MEMORY[0x1EEE9AC00](result, a9);
    v46 = &v184 - v45;
    bzero(&v184 - v45, v44);
    v186 = 0;
  }

  bzero(v46, v44);
  v47 = (v46 + 32);
  v48 = &v47[-v21];
  *(v9 + 176) = ((v18 << 21) & 0x400000 | ((v18 & 1) << 25) | *(v9 + 176) & 0xFC0FFFFF) ^ 0x600000;
  if ((v18 & 4) != 0)
  {
    v49 = aa_distribute_clip_edges(v9, v48, (v21 << 12), v43);
    if (v49)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v49 = aa_distribute_edges(v9, v48);
    if (v49)
    {
LABEL_50:
      v207 = a4;
      v51 = v20 - v19;
      if (v20 - v19 > 1015)
      {
        v52 = 4 * (v51 + 16);
        v54 = malloc_type_malloc(v52, 0x100004052888210uLL);
        v185 = v54;
      }

      else
      {
        v52 = 4 * (v20 - v19 + 16);
        MEMORY[0x1EEE9AC00](v49, v50);
        v54 = (&v184 - v53);
        bzero(&v184 - v53, v52);
        v185 = 0;
      }

      bzero(v54, v52);
      *(v9 + 200) = 0;
      v202 = (v9 + 200);
      *(v9 + 208) = 0;
      if (v42 >= v43)
      {
LABEL_215:
        if (v185)
        {
          free(v185);
        }

        if (v186)
        {
          free(v186);
        }

        return 0xFFFFFFFFLL;
      }

      v55.i32[0] = 0;
      LODWORD(v198) = 0;
      LODWORD(v197) = 0;
      LODWORD(v206) = v191 << 12;
      LODWORD(v205) = v190 << 12;
      v208 = v54[1].i64 + (-(v54 - 4 * v19 + 16 + 4 * v191) & 0x1FLL) + -4 * v19;
      v57 = &v54[3].u64[1] + 4 * v51 + 4;
      v192 = ((v18 >> 6) & 1) - 1;
      v56.i32[0] = v18 & 0x20;
      v58 = *&vdupq_lane_s32(*&vceqq_s32(v56, v55), 0) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if ((v18 & 0x20) != 0)
      {
        v59 = &unk_1844EE660;
      }

      else
      {
        v59 = &unk_1844EF670;
      }

      v189 = v190 + 3;
      v188 = -v207;
      v60 = 0uLL;
      v204 = v54;
      v207 = v57;
      v196 = v58;
      v187 = v59;
      while (1)
      {
        v61 = *v47;
        if (*v47)
        {
          *v47 = *v61;
          *v61 = 0;
        }

        v203 = v47;
        LODWORD(v199) = 0;
        v62 = v42 + 4096;
        v193 = v42 + 4096;
        if (v42 + 4096 >= v43)
        {
          v62 = v43;
        }

        v195 = v62;
        if (!v61)
        {
LABEL_107:
          v77 = v195;
          if (v195 == v42)
          {
            goto LABEL_192;
          }

          goto LABEL_108;
        }

        while (1)
        {
          v77 = *(v61 + 20);
          if (v42 == v77)
          {
            v77 = v42;
            v63 = v203;
            do
            {
LABEL_70:
              v64 = *(v61 + 16);
              if (v64 > 1)
              {
                if (v64 != 2)
                {
                  if (v64 != 3)
                  {
LABEL_278:
                    abort();
                  }

                  v66 = *v202;
                  if (*v202)
                  {
                    v67 = *v202;
                    do
                    {
                      v68 = v66;
                      v70 = v66;
                      v66 = *v66;
                      v69 = *(v70 + 1);
                      if (v69)
                      {
                        v71 = v68[10];
                        v72 = v66;
                        v73 = v69;
                        do
                        {
                          v74 = v73[10];
                          if (v71 > v74 || v71 == v74 && v68[9] >= v73[9])
                          {
                            break;
                          }

                          v75 = *(v73 + 1);
                          *(v68 + 1) = v75;
                          if (v75)
                          {
                            *v75 = v68;
                            v72 = *v68;
                          }

                          *v73 = v72;
                          if (v72)
                          {
                            *(v72 + 1) = v73;
                          }

                          *(v73 + 1) = v68;
                          *v68 = v73;
                          if (v67 == v73)
                          {
                            v67 = v68;
                          }

                          v72 = v73;
                          v73 = *(v68 + 1);
                        }

                        while (v73);
                        if (v69 != v73 && (*(v9 + 178) & 0xC0) != 0)
                        {
                          v76 = v66;
                          do
                          {
                            if (v76)
                            {
                              aa_intersection_event(v9, v48, v69, v76, v77, v43);
                            }

                            v76 = v73;
                            v162 = v69 == v68;
                            v69 = v68;
                          }

                          while (!v162);
                        }
                      }
                    }

                    while (v66);
                  }

                  else
                  {
                    v67 = 0;
                  }

                  *(v9 + 200) = v67;
                  *v61 = *(v9 + 216);
                  *(v9 + 216) = v61;
                  v63 = v203;
                  v54 = v204;
                  v57 = v207;
                }
              }

              else if (v64)
              {
                if (v64 != 1)
                {
                  goto LABEL_278;
                }

                aa_ael_remove(v9, v48, v77, v43, *(v61 + 8));
                v65 = *(v61 + 8);
                *(v65 + 72) = *(v9 + 216);
                *(v65 + 48) = v65 + 72;
                *(v9 + 216) = v65 + 48;
              }

              else
              {
                aa_ael_insert(v9, v48, v77, v43, *(v61 + 8));
              }

              v61 = *v63;
              if (!*v63)
              {
                break;
              }

              *v63 = *v61;
              *v61 = 0;
            }

            while (*(v61 + 20) == v77);
            goto LABEL_104;
          }

LABEL_108:
          v78 = *v202;
          v79 = v205;
          v80 = v206;
          if (*v202)
          {
            v81 = -2 * v42;
            LODWORD(v201) = 16 * (v77 - v42);
            LODWORD(v200) = (v77 - v42) << 16;
            v82 = vdupq_n_s32(v200);
            v83 = v206;
            v80 = v206;
            v79 = v205;
            do
            {
              v84 = *(v78 + 46);
              v85 = v78[4];
              if (*(v78 + 47))
              {
                v86 = v78[6];
                v87 = v78[10];
                v88 = v78[8];
                v89 = v85 + ((v78[9] * (v77 - v86)) >> 12);
                v78[10] = v89;
                if (v84)
                {
                  v90 = v84 - 1;
                  v91 = 1 - v84;
                  v92 = v88;
                  v93 = (v208 + 4 * (v87 >> 12));
                  v94 = v84 - 2;
                  v95 = v87 & 0xFFFFF000;
                  if (v88 < 1)
                  {
                    v97 = v89 & v94 | v87 & v91;
                    if (v95 <= v89)
                    {
                      v95 = v87;
                      v99 = v42;
                    }

                    else
                    {
                      v102 = (v88 * (v95 - v85)) >> 12;
                      v99 = v86 + v102;
                      if (v93 >= v54 && v93 <= v57)
                      {
                        v57 = v207;
                        v93->i32[0] += (v91 ^ (8 * (v95 - v87) * (v99 - v42))) + v90;
                        v93 = (v93 - 4);
                      }

                      if (v95 - 4096 > v89)
                      {
                        v103 = (v81 + 2 * v86 + 2 * v102 - v88) << 15;
                        v104 = v88 << 16;
                        do
                        {
                          v105 = v95;
                          if (v93 >= v54 && v93 <= v57)
                          {
                            v93->i32[0] += v91 - (v103 ^ v91);
                            v93 = (v93 - 4);
                          }

                          v99 -= v92;
                          v95 -= 4096;
                          v103 -= v104;
                        }

                        while (v105 - 0x2000 > v89);
                      }
                    }

                    goto LABEL_141;
                  }

                  v96 = v95 + 4096;
                  v97 = v89 & v91 | v87 & v94;
                  if (v95 + 4096 >= v89)
                  {
                    v95 = v87;
                    v99 = v42;
                  }

                  else
                  {
                    v98 = ((v96 - v85) * v88) >> 12;
                    v99 = v86 + v98;
                    if (v93 >= v54 && v93 <= v207)
                    {
                      v54 = v204;
                      v93->i32[0] += (v91 ^ (8 * (v96 - v87) * (v99 - v42))) + v90;
                      v93 = (v93 + 4);
                    }

                    if (v95 + 0x2000 < v89)
                    {
                      v100 = (v81 + v88 + 2 * v86 + 2 * v98) << 15;
                      v57 = v207;
                      do
                      {
                        v101 = v96;
                        if (v93 >= v54 && v93 <= v57)
                        {
                          v93->i32[0] += (v100 ^ v91) + v90;
                          v93 = (v93 + 4);
                        }

                        v99 += v88;
                        v96 += 4096;
                        v100 += v88 << 16;
                      }

                      while (v101 + 0x2000 < v89);
                      v95 = v101 + 4096;
                      goto LABEL_141;
                    }

                    v95 += 4096;
                  }

                  v57 = v207;
LABEL_141:
                  if (v93 >= v54 && v93 <= v57)
                  {
                    v93->i32[0] += (v91 ^ (8 * (v89 - v95) * (v77 - 2 * v42 + v99))) + v90;
                  }

LABEL_144:
                  if (v84 < 2)
                  {
                    if (v80 >= v97)
                    {
                      v80 = v97;
                    }

                    if (v89 <= v206)
                    {
                      v83 = v206;
                    }

                    else
                    {
                      v83 = v89;
                    }
                  }

                  else
                  {
                    if (v79 <= v97)
                    {
                      v79 = v97;
                    }

                    if (v89 >= v205)
                    {
                      v106 = v205;
                    }

                    else
                    {
                      v106 = v89;
                    }

                    if (v89 > v83)
                    {
                      v107 = (v208 + 4 * (v83 >> 12));
                      v108 = ~(v83 >> 12) + (v106 >> 12);
                      if ((v108 & 0x80000000) != 0)
                      {
                        v109 = v83;
                      }

                      else
                      {
                        if (v107 >= v54 && v107 <= v57)
                        {
                          v107->i32[0] += (v77 - v42 - (((v83 & 0xFFFu) * (v77 - v42)) >> 12)) << 16;
                          v107 = (v107 + 4);
                        }

                        if (v108 >= 4)
                        {
                          do
                          {
                            v108 -= 4;
                            *v107 = vaddq_s32(*v107, v82);
                            ++v107;
                          }

                          while (v108 > 3);
                        }

                        if (v108 >= 2)
                        {
                          *v107->i8 = vadd_s32(*v107->i8, *v82.i8);
                          v107 = (v107 + 8);
                          v108 -= 2;
                        }

                        v109 = v106 & 0xFFFFF000;
                        if (v108)
                        {
                          v107->i32[0] += v200;
                          v107 = (v107 + 4);
                        }
                      }

                      if (v107 >= v54 && v107 <= v57)
                      {
                        v107->i32[0] += v201 * (v106 - v109);
                      }
                    }
                  }
                }
              }

              else
              {
                v97 = v78[4];
                v89 = v97;
                if (*(v78 + 46))
                {
                  goto LABEL_144;
                }
              }

              v78 = *v78;
            }

            while (v78);
          }

          v111 = v80 >> 12;
          v112 = (v79 + 4095) >> 12;
          v113 = v197;
          if (v80 >> 12 >= v197)
          {
            v114 = v197;
          }

          else
          {
            v114 = v80 >> 12;
          }

          v115 = v198;
          if (v112 <= v198)
          {
            v116 = v198;
          }

          else
          {
            v116 = (v79 + 4095) >> 12;
          }

          v117 = v199;
          if (v199)
          {
            v118 = v199;
          }

          else
          {
            v118 = 2;
          }

          if (v199)
          {
            v111 = v114;
            v112 = v116;
          }

          if (v80 <= v79)
          {
            v117 = v118;
          }

          LODWORD(v199) = v117;
          if (v80 <= v79)
          {
            v113 = v111;
          }

          LODWORD(v197) = v113;
          if (v80 <= v79)
          {
            v115 = v112;
          }

          LODWORD(v198) = v115;
          if (!v61)
          {
            break;
          }

          v63 = v203;
          if (*(v61 + 20) == v77)
          {
            goto LABEL_70;
          }

LABEL_104:
          aa_ael_mark(*(v9 + 176), *(v9 + 200));
          v42 = v77;
          v58 = v196;
          v60 = 0uLL;
          if (!v61)
          {
            goto LABEL_107;
          }
        }

LABEL_192:
        v119 = v203;
        v120 = v194;
        v121 = v194;
        v122 = v191;
        v123 = v191;
        if (v199)
        {
          v121 = v194;
          v123 = v191;
          if (v198 >= v191)
          {
            v121 = v194;
            v123 = v191;
            if (v197 <= v190)
            {
              v124 = v197;
              if (v197 <= v191)
              {
                v124 = v191;
              }

              if (v198 >= v190)
              {
                v125 = v190;
              }

              else
              {
                v125 = v198;
              }

              v126 = v124 - v191;
              v127 = v192 & ((v124 - v191) >> 2);
              v121 = v194;
              v128 = v127 - 1;
              if (v127 >= 1)
              {
                bzero(v194, 4 * (v192 & (v126 >> 2)));
                v60 = 0uLL;
                v58 = v196;
                v121 = &v120[4 * v128 + 4];
              }

              v129 = (v208 + 4 * ((v126 & 0xFFFFFFFC) + v122));
              v130 = (v125 - v122 + 3) & 0xFFFFFFFC;
              v131 = v130 - (v126 & 0xFFFFFFFC);
              if (v131 < 16)
              {
                v134 = v187;
              }

              else
              {
                v132 = 0;
                v133 = v131 + 16;
                v134 = v187;
                do
                {
                  v135 = vqmovun_high_s32(vqmovun_s32(vshrq_n_s32(*v129, 0x14uLL)), vshrq_n_s32(v129[1], 0x14uLL));
                  v136 = vqmovun_high_s32(vqmovun_s32(vshrq_n_s32(v129[2], 0x14uLL)), vshrq_n_s32(v129[3], 0x14uLL));
                  *&v121[v132] = vqmovn_high_u16(vqmovn_u16(vorrq_s8(v135, vcgtq_u16(v135, v58))), vorrq_s8(v136, vcgtq_u16(v136, v58)));
                  v129[2] = v60;
                  v129[3] = v60;
                  *v129 = v60;
                  v129[1] = v60;
                  v129 += 4;
                  v133 -= 16;
                  v132 += 16;
                }

                while (v133 > 0x1F);
                v131 -= v132;
                v121 += v132;
              }

              if (v131 >= 4)
              {
                do
                {
                  v137 = v134[v129->u32[0] >> 20];
                  v138 = v134[v129->u32[1] >> 20];
                  v129->i64[0] = 0;
                  *v121 = v137;
                  v121[1] = v138;
                  v139 = v134[v129->u32[2] >> 20];
                  v140 = v134[v129->u32[3] >> 20];
                  v129->i64[1] = 0;
                  v121[2] = v139;
                  v121[3] = v140;
                  v121 += 4;
                  ++v129;
                  v14 = v131 > 7;
                  v131 -= 4;
                }

                while (v14);
              }

              v123 = v130 + v122;
              if (v131 >= 1)
              {
                v141 = v131 + 1;
                do
                {
                  v142 = v134[v129->u32[0] >> 20];
                  v129->i32[0] = 0;
                  v129 = (v129 + 4);
                  *v121++ = v142;
                  --v141;
                }

                while (v141 > 1);
              }
            }
          }
        }

        if ((v192 & ((v189 - v123) >> 2)) >= 1)
        {
          bzero(v121, 4 * (v192 & ((v189 - v123) >> 2)));
          v60 = 0uLL;
          v58 = v196;
        }

        v194 = &v120[v188];
        v47 = v119 + 1;
        v42 = v193;
        v57 = v207;
        if (v193 >= v43)
        {
          goto LABEL_215;
        }
      }
    }
  }

  result = v186;
  if (v186)
  {
    free(v186);
    return 0;
  }

  return result;
}

uint64_t aa_distribute_edges(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v3 = *(a1 + 192);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (v2 >> 20) & 3;
  v10 = v9 - 1;
  do
  {
    v11 = *(v3 + 3);
    if (v11)
    {
      v12 = 0;
      v13 = v3 + 3;
      do
      {
        if (*(v13 + 22))
        {
          if (v9)
          {
            v15 = *(v13 + 6);
            v14 = *(v13 + 7);
            v16 = v13 + 2;
            v17 = v15;
            v18 = v14;
          }

          else
          {
            v14 = *(v13 + 6);
            v15 = *(v13 + 7);
            v16 = v13 + 5;
            v17 = (4095 - v15);
            v18 = (4095 - v14);
          }

          *(v13 + 10) = *v16;
          if (!v6 || v17 < v4 || (v19 = v6, (v17 ^ v4) >= 0x1000))
          {
            if (!v7 || v17 < v5 || (v19 = v7, (v17 ^ v5) >= 0x1000))
            {
              v19 = (a2 + 8 * (v15 >> 12));
            }
          }

          v20 = *v19;
          if (*v19)
          {
            do
            {
              v21 = v20;
              v22 = *(v20 + 5) - v15;
              if (v22)
              {
                if (v22 * v10 > 0)
                {
                  goto LABEL_25;
                }
              }

              else if (!*(v21 + 4))
              {
                goto LABEL_25;
              }

              v20 = *v21;
              v19 = v21;
            }

            while (*v21);
            v19 = v21;
          }

          v21 = 0;
LABEL_25:
          v13[6] = v21;
          v13[7] = v13;
          *(v13 + 16) = 0;
          *(v13 + 17) = v15;
          *v19 = v13 + 6;
          if (!v6 || v18 < v4 || (v18 ^ v4) >= 0x1000)
          {
            if (v18 < v17 || (v6 = v19, (v18 ^ v17) >= 0x1000))
            {
              v6 = (a2 + 8 * (v14 >> 12));
            }
          }

          v23 = *v6;
          if (*v6)
          {
            do
            {
              v24 = *(v23 + 5) - v14;
              if (!v24)
              {
                break;
              }

              if (v24 * v10 > 0)
              {
                break;
              }

              v6 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          v13[9] = v23;
          v13[10] = v13;
          *(v13 + 22) = 1;
          *(v13 + 23) = v14;
          v8 = (v8 + 1);
          v4 = v18;
          v5 = v17;
          v7 = v19;
          *v6 = v13 + 9;
        }

        else
        {
          *v13 = *(a1 + 224);
          *(a1 + 224) = v13;
          v19 = v7;
          v17 = v5;
          v18 = v4;
        }

        ++v12;
        v13 += 12;
      }

      while (v12 != v11);
    }

    else
    {
      v19 = v7;
      v17 = v5;
      v18 = v4;
    }

    v3 = *v3;
    v4 = v18;
    v5 = v17;
    v7 = v19;
  }

  while (v3);
  return v8;
}

char *aa_ael_insert(char *result, uint64_t a2, int a3, int a4, uint64_t **a5)
{
  v5 = a5;
  v9 = result;
  v10 = *(result + 25);
  if (!v10)
  {
    *a5 = 0;
    a5[1] = 0;
    *(result + 25) = a5;
    goto LABEL_67;
  }

  v11 = (*(result + 44) >> 20) & 3;
  v12 = v11 - 1;
  v13 = *(result + 26);
  v15 = *(a5 + 9);
  v14 = *(a5 + 10);
  v16 = *(v10 + 10) - v14;
  if (!v16)
  {
    v17 = *(v10 + 9);
    if (v17 == v15)
    {
LABEL_24:
      v13 = *(result + 25);
      goto LABEL_25;
    }

    if (v17 <= v15)
    {
      v16 = 1 - v11;
    }

    else
    {
      v16 = v11 - 1;
    }
  }

  if (v16 >= 1)
  {
    *a5 = v10;
    a5[1] = 0;
    *(result + 25) = a5;
    v10[1] = a5;
    goto LABEL_67;
  }

  if (!v16)
  {
    goto LABEL_24;
  }

  if (!v13 || v13 == v10)
  {
    goto LABEL_53;
  }

  v18 = *(v13 + 10) - v14;
  if (v18 || (v28 = *(v13 + 9), v28 != v15) && (v28 <= v15 ? (v18 = 1 - v11) : (v18 = v11 - 1), v18))
  {
    if ((v18 & 0x80000000) == 0)
    {
      if (v13[1] != v10)
      {
        v19 = 1 - v11;
        v10 = *(result + 26);
        do
        {
          v10 = v10[1];
          v20 = *(v10 + 10) - v14;
          if (!v20)
          {
            v21 = *(v10 + 9);
            if (v21 == v15)
            {
              break;
            }

            if (v21 <= v15)
            {
              v20 = v19;
            }

            else
            {
              v20 = v12;
            }
          }
        }

        while (v20 > 0);
      }

LABEL_64:
      *a5 = *v10;
      a5[1] = v10;
      *v10 = a5;
      if (*a5)
      {
        (*a5)[1] = a5;
      }

      *(result + 26) = a5;
      goto LABEL_67;
    }

    v10 = *(result + 26);
LABEL_53:
    v29 = 1 - v11;
    v13 = v10;
    while (1)
    {
      v10 = v13;
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_64;
      }

      v30 = *(v13 + 10) - v14;
      if (v30)
      {
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v31 = *(v13 + 9);
        if (v31 == v15)
        {
          break;
        }

        if (v31 <= v15)
        {
          v30 = v29;
        }

        else
        {
          v30 = v12;
        }

        if ((v30 & 0x80000000) == 0)
        {
LABEL_63:
          if (!v30)
          {
            break;
          }

          goto LABEL_64;
        }
      }
    }
  }

LABEL_25:
  if (*(v13 + 22) == 2)
  {
    v22 = v13[10];
    v23 = v22[1];
    *a5 = v22;
    a5[1] = v23;
    if (v23)
    {
      *v23 = a5;
      v24 = v13;
      v13 = *a5;
    }

    else
    {
      v24 = v13;
      v13 = v22;
    }
  }

  else
  {
    v24 = *(result + 28);
    if (v24)
    {
      *(result + 28) = *v24;
    }

    else
    {
      result = aa_new_edge(result);
      v24 = result;
      if (!result)
      {
        return result;
      }
    }

    result = memmove(v24, v13, 0x60uLL);
    v25 = v13[1];
    if (v25)
    {
      *v25 = v24;
    }

    if (*v13)
    {
      *(*v13 + 8) = v24;
    }

    if (v13 == *(v9 + 25))
    {
      *(v9 + 25) = v24;
    }

    *v13 = 0;
    v13[1] = 0;
    *(v24 + 16) = 0;
    v24[6] = 0;
    v24[7] = v24;
    *(v24 + 22) = 2;
    v24[9] = 0;
    v24[10] = v13;
    *(v13 + 16) = 2;
    v13[7] = v24;
    *v5 = v13;
    v5[1] = 0;
  }

  v13[1] = v5;
  v24[10] = v5;
  *(v5 + 16) = 2;
  v5[7] = v24;
  *(v24 + 22) += *(v5 + 22);
  v26 = *(v5 + 7);
  if (*(v24 + 7) >= v26)
  {
    v27 = *(v5 + 6);
    if (*(v24 + 6) <= v27)
    {
      *(v9 + 26) = v24;
      return result;
    }
  }

  else
  {
    *(v24 + 7) = v26;
    v27 = *(v5 + 6);
    *(v24 + 5) = *(v5 + 5);
    if (*(v24 + 6) <= v27)
    {
      goto LABEL_44;
    }
  }

  *(v24 + 6) = v27;
  *(v24 + 4) = *(v5 + 4);
LABEL_44:
  *(v9 + 26) = v24;
  v5 = v24;
LABEL_67:
  if ((v9[178] & 0xC0) != 0)
  {
    v33 = *v5;
    v32 = v5[1];
    do
    {
      if (v32)
      {
        result = aa_intersection_event(v9, a2, v32, v5, a3, a4);
      }

      v34 = v32 == v33;
      v32 = v33;
    }

    while (!v34);
  }

  return result;
}

char *aa_intersection_event(char *result, uint64_t a2, int *a3, int *a4, int a5, int a6)
{
  v6 = a3[9];
  v7 = a4[9];
  if (v6 == v7)
  {
    return result;
  }

  v8 = 4;
  if (v6 >= 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  v10 = a3[v9];
  if (v7 >= 0)
  {
    v8 = 5;
  }

  if (v10 >= a4[v8])
  {
    return result;
  }

  v11 = a3 + 5;
  v12 = a4 + 5;
  if (v7 >= 0)
  {
    v12 = a4 + 4;
  }

  if (v6 < 0)
  {
    v11 = a3 + 4;
  }

  if (*v12 >= *v11)
  {
    return result;
  }

  v14 = a3[6];
  v13 = a3[7];
  v15 = a4[6];
  if (v13 >= a4[7])
  {
    v13 = a4[7];
  }

  v16 = v14 <= v15 ? a4[6] : a3[6];
  if (v13 <= v16)
  {
    return result;
  }

  if (v13 >= a6)
  {
    v13 = a6;
  }

  if (v16 <= a5)
  {
    v16 = a5;
  }

  if (v13 <= v16)
  {
    return result;
  }

  v17 = result;
  v18 = *(result + 19);
  v19 = a3[4];
  v20 = v18 * v6;
  v21 = a4[4];
  v22 = v18 * v7;
  v23 = v19 + v20 * (v16 - v14);
  v24 = v19 + v20 * (v13 - v14);
  v25 = v18 - v18;
  v26 = v23 - (v21 + v22 * (v16 - v15));
  v27 = v24 - (v21 + v22 * (v13 - v15));
  v28 = v27 == v25 || v26 == v25;
  if (v28 || v26 > v25 != v27 <= v25)
  {
    return result;
  }

  v29 = fabs(v26);
  v30 = v16 + vcvtmd_s64_f64(v29 / (fabs(v27) + v29) * (v13 - v16));
  v31 = v30 + 1;
  if (v30 >= v13 || v31 < v16)
  {
    return result;
  }

  v33 = (a2 + 8 * (v31 >> 12));
  v34 = *v33;
  if (!*v33)
  {
LABEL_40:
    v35 = 0;
    goto LABEL_41;
  }

  while (1)
  {
    v35 = v34;
    v36 = *(v34 + 5) - v31;
    if (v36)
    {
      if (v36 * (((*(result + 44) >> 20) & 3) - 1) > 0)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v37 = *(v35 + 4);
    if (v37 != 1)
    {
      break;
    }

LABEL_38:
    v34 = *v35;
    v33 = v35;
    if (!*v35)
    {
      v33 = v35;
      goto LABEL_40;
    }
  }

  if (v37 == 3)
  {
    return result;
  }

LABEL_41:
  result = *(result + 27);
  if (result)
  {
    v38 = *result;
  }

  else
  {
    result = *(v17 + 224);
    if (result)
    {
      *(v17 + 224) = *result;
    }

    else
    {
      result = aa_new_edge(v17);
      if (!result)
      {
        return result;
      }
    }

    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 6) = v30;
    *(result + 7) = v31;
    *(result + 4) = 0;
    result[47] = 0;
    *(result + 22) = 0;
    *(result + 9) = 0;
    v38 = result + 72;
    *(result + 6) = result + 72;
    result += 48;
  }

  *(v17 + 216) = v38;
  *result = v35;
  *(result + 1) = 0;
  *(result + 4) = 3;
  *(result + 5) = v31;
  *v33 = result;
  return result;
}

char *aa_ael_remove(char *result, uint64_t a2, int a3, int a4, uint64_t *a5)
{
  v7 = *(result + 25);
  v6 = *(result + 26);
  v8 = *a5;
  if (v7 == a5)
  {
    *(result + 25) = v8;
    if (v8)
    {
      *(v8 + 8) = 0;
    }

    if (v6 == a5)
    {
      *(result + 26) = v8;
    }
  }

  else
  {
    v10 = a5[1];
    if (v10)
    {
      *v10 = v8;
    }

    if (v8)
    {
      *(v8 + 8) = v10;
    }

    if (*(a5 + 16) == 2)
    {
      v11 = a5[7];
      *(v11 + 22) -= *(a5 + 22);
      if (v8)
      {
        v11[10] = v8;
        return result;
      }

      if (v10)
      {
        v11[10] = v10;
        return result;
      }

      v11[10] = 0;
      v8 = *v11;
      v10 = v11[1];
      if (v10)
      {
        *v10 = v8;
      }

      if (v8)
      {
        *(v8 + 8) = v10;
      }

      *v11 = *(result + 28);
      *(result + 28) = v11;
      if (v6 == v11)
      {
        *(result + 26) = v8;
      }

      if (v7 == v11)
      {
        *(result + 25) = v8;
        return result;
      }
    }

    else if (v6 == a5)
    {
      *(result + 26) = v10;
    }

    if ((result[178] & 0xC0) != 0)
    {
      if (v8)
      {
        return aa_intersection_event(result, a2, v10, v8, a3, a4);
      }
    }
  }

  return result;
}

void *aal_free_edges(uint64_t a1)
{
  v2 = *(a1 + 176);
  result = *v2;
  if (*v2)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  *(a1 + 184) = v2;
  *v2 = 0;
  *(a1 + 168) = 0;
  *(v2 + 16) = 0;
  *(a1 + 48) = 0;
  return result;
}

void ripr_release(_DWORD *a1)
{
  v2 = a1[2] - 1;
  a1[2] = v2;
  if (!v2)
  {
    if (*(a1 + 2))
    {
      ripr_Finish(a1);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(v4 + 24))(a1 + 24);
    }

    free(a1);
  }
}

uint64_t (*__trc_get_input_range_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTRCGetInputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  trc_get_input_range_f = v1;
  return result;
}

uint64_t (*__trc_get_input_range_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTRCGetInputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  trc_get_input_range_f_68 = v1;
  return result;
}

const void *__RIPGetCacheState_block_invoke()
{
  v3 = 0;
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200400855E00DuLL);
  *v0 = 0;
  v0[1] = xmmword_18439CC60;
  v1 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  *v1 = v1;
  v1[1] = v1;
  *(v0 + 1) = v1;
  *(v0 + 32) = 1;
  if (get_BOOLean_property("RIP_ENABLE_FUNCTION_CACHE", copy_local_domain_value, &v3))
  {
    *(v0 + 32) = v3;
  }

  *(v0 + 33) = 1;
  if (get_BOOLean_property("RIP_ENABLE_PATTERN_CACHE", copy_local_domain_value, &v3))
  {
    *(v0 + 33) = v3;
  }

  *(v0 + 34) = 1;
  result = get_BOOLean_property("RIP_ENABLE_IMAGE_CACHE", copy_local_domain_value, &v3);
  if (result)
  {
    *(v0 + 34) = v3;
  }

  RIPGetCacheState_cache_state = v0;
  return result;
}

uint64_t aa_clip_edge(_DWORD *a1, int a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v19 = a12;
  v20 = a3 & 0xFFFFFFEF;
  v21 = a14 - a12;
  v22 = a13 - a11;
  v23 = 0;
  v24 = a2 & 0xFFFFFFEF;
  if ((a2 & 0xFFFFFFEF) == 0)
  {
    goto LABEL_13;
  }

  v25 = 16 * (v20 == 0);
  while ((v20 & v24) == 0)
  {
    if (v24)
    {
      if ((v24 & 4) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *a1 = (a10 + a8 * a11);
      a1[1] = (a10 + a9 * v19);
      a1 += 2;
      v23 = (v23 + 1);
LABEL_13:
      v25 = 0;
      v22 = -v22;
      v21 = -v21;
      v19 = a14;
      a11 = a13;
      v24 = v20;
      v20 = 0;
      if ((v24 & 4) == 0)
      {
LABEL_6:
        if (v24)
        {
          if ((v25 & 5) != 0)
          {
            v24 &= 0xFFFFFFFA;
          }

          else
          {
            v19 = v19 + (a6 - a11) * v21 / v22;
            v24 = (2 * (v19 > a7)) | (8 * (v19 < a5));
          }

          v25 |= 1u;
          a11 = a6;
        }

        else if ((v24 & 2) != 0)
        {
          if ((v25 & 0xA) != 0)
          {
            v24 &= 0xFFFFFFF8;
          }

          else
          {
            a11 = a11 + (a7 - v19) * v22 / v21;
            v24 = (a11 > a6) | (4 * (a11 < a4));
          }

          v25 |= 2u;
          v19 = a7;
        }

        else if ((v24 & 8) != 0)
        {
          v24 &= 0xFFFFFFF0;
          v26 = a11 + (a5 - v19) * v22 / v21;
          if ((v25 & 0xA) == 0)
          {
            a11 = v26;
            v24 = (v26 > a6) | (4 * (v26 < a4));
          }

          v25 |= 8u;
          v19 = a5;
        }

        goto LABEL_26;
      }
    }

    if ((v25 & 5) != 0)
    {
      v24 &= ~4u;
    }

    else
    {
      v19 = v19 + (a4 - a11) * v21 / v22;
      v24 = (2 * (v19 > a7)) | (8 * (v19 < a5));
    }

    v25 |= 4u;
    a11 = a4;
LABEL_26:
    if (!(v25 & 0x10 | v20 | v24))
    {
      goto LABEL_27;
    }
  }

  if (a2 == a3)
  {
    return v23;
  }

  if (((a3 | a2) & 0x10) == 0)
  {
    LOBYTE(a3) = a3 | a2 | 0x10;
    goto LABEL_28;
  }

  if ((v20 & v24 & 4) != 0)
  {
    if ((a2 & 4) == 0)
    {
      if ((a2 & 8) != 0)
      {
        v19 = a5;
      }

      else
      {
        v19 = a7;
      }

      a11 = a4;
      goto LABEL_27;
    }
  }

  else if (v20 & v24)
  {
    if ((a2 & 1) == 0)
    {
      if ((a2 & 8) != 0)
      {
        v19 = a5;
      }

      else
      {
        v19 = a7;
      }

      a11 = a6;
      goto LABEL_27;
    }
  }

  else if ((v20 & v24 & 2) != 0)
  {
    if ((a2 & 2) == 0)
    {
      if ((a2 & 4) != 0)
      {
        a11 = a4;
      }

      else
      {
        a11 = a6;
      }

      v19 = a7;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v20 & v24 & 8) == 0)
    {
LABEL_27:
      *a1 = (a10 + a8 * a11);
      a1[1] = (a10 + a9 * v19);
      a1 += 2;
      v23 = (v23 + 1);
      goto LABEL_28;
    }

    if ((a2 & 8) == 0)
    {
      if ((a2 & 4) != 0)
      {
        a11 = a4;
      }

      else
      {
        a11 = a6;
      }

      v19 = a5;
      goto LABEL_27;
    }
  }

LABEL_28:
  if ((a3 & 0x10) != 0)
  {
    if ((a3 & 4) == 0)
    {
      a4 = a6;
    }

    if ((a3 & 8) == 0)
    {
      a5 = a7;
    }

    *a1 = (a10 + a8 * a4);
    a1[1] = (a10 + a9 * a5);
    return (v23 + 1);
  }

  return v23;
}

uint64_t aa_ael_mark(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = (BYTE3(result) & 3) - 1;
    v4 = 1;
    do
    {
      v2 += *(a2 + 22);
      v5 = v4;
      if (v4)
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }

      v4 = (v2 & v3) == 0;
      if ((v2 & v3) == 0)
      {
        v5 = v6;
      }

      *(a2 + 46) = v5;
      a2 = *a2;
    }

    while (a2);
  }

  return result;
}

uint64_t rgba32_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v3;
  v564 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  if (*(v3 + 132))
  {
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
    }

    v7 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
  }

  else
  {
    v7 = 0;
  }

  v8 = *v5;
  v9 = *(v5 + 96);
  v10 = *(*(v6 + 56) + 16 * *v5 + 8 * (v9 == 0) + 4 * (*(v5 + 48) == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(v5 + 4);
  v13 = v12 - 1;
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v5 + 8);
  if (v14 < 1)
  {
    return 0;
  }

  if (v10 >= 24)
  {
    if (*v6 == 134755144)
    {
      v10 = (v10 + 4);
    }

    else
    {
      v10 = v10;
    }
  }

  v15 = *(v5 + 136);
  if ((v8 & 0xFF0000) != 0x50000 && v15)
  {
    v16 = *(v5 + 128);
    if ((v16 | 8) == 8)
    {
      if ((*v5 & 0xFF00) == 0x400)
      {
        rgba32_mark_constmask(v5, v10);
      }

      else if ((v7 & 1) != 0 && ((1 << v10) & 0xFFFFFE) != 0)
      {
        rgba32_mark_pixelmask_template(v5, v10);
      }

      else
      {
        rgba32_mark_pixelmask(v5, v10);
      }
    }

    else
    {
      v31 = *(v5 + 112);
      v32 = *(v5 + 116);
      v33 = (v31 + 15) & 0xFFFFFFF0;
      v34 = v33 * v32;
      if (v34 <= 4096)
      {
        v36 = v563;
      }

      else
      {
        v35 = malloc_type_malloc(v34, 0x97CEE3C3uLL);
        if (!v35)
        {
          return 1;
        }

        v36 = v35;
        v15 = *(v5 + 136);
        v16 = *(v5 + 128);
      }

      CGSConvertBitsToMask(v15, *(v5 + 124), v36, v33, v31, v32, v16);
      v39 = *(v5 + 112);
      v559 = *(v5 + 96);
      v560 = v39;
      v40 = *(v5 + 144);
      v561 = *(v5 + 128);
      v562 = v40;
      v41 = *(v5 + 48);
      v555 = *(v5 + 32);
      v556 = v41;
      v42 = *(v5 + 80);
      v557 = *(v5 + 64);
      v558 = v42;
      v43 = *(v5 + 16);
      *v553 = *v5;
      v554 = v43;
      HIDWORD(v560) = (v31 + 15) & 0xFFFFFFF0;
      *(&v561 + 1) = v36;
      if (BYTE1(v553[0]) << 8 == 1024)
      {
        rgba32_mark_constmask(v553, v10);
      }

      else
      {
        rgba32_mark_pixelmask(v553, v10);
      }

      if (v36 != v563)
      {
        v44 = v36;
        goto LABEL_1066;
      }
    }

    return 1;
  }

  v529 = v5;
  v541 = v10;
  v551 = *(v5 + 48);
  if (BYTE1(v8) == 1)
  {
    if ((v7 & 1) != 0 && ((1 << v10) & 0xFFFFFE) != 0)
    {
      rgba32_mark_pixelshape_template(v5, v10);
      return 1;
    }
  }

  else if (BYTE1(v8) == 4)
  {
    v563[0] = *(v5 + 4);
    v553[0] = v14;
    v17 = **(v5 + 88);
    v543 = *(v5 + 28);
    v549 = v543 >> 2;
    v18 = (*(v5 + 40) + 4 * (v543 >> 2) * *(v5 + 16) + 4 * *(v5 + 12));
    v545 = v18;
    if (v15)
    {
      shape_enum_clip_alloc(v2, v3, v15, 1, 1, 1, *(v5 + 104), *(v5 + 108), v12, v14);
      v20 = v19;
      if (v19)
      {
        goto LABEL_330;
      }

      return 1;
    }

    v548 = 0;
LABEL_62:
    v52 = v549 - v12;
    v53 = v12;
    switch(v10)
    {
      case 0:
        v54 = v553[0];
        v55 = 4 * v12;
        v56 = v543 & 0xFFFFFFFC;
        v57 = 0;
        goto LABEL_180;
      case 1:
        v57 = 0;
        v106 = *(v5 + 88);
        if (v106)
        {
          v57 = *v106;
        }

        v55 = 4 * v12;
        v54 = v553[0];
        v56 = v543 & 0xFFFFFFFC;
LABEL_180:
        CGBlt_fillBytes(v55, v54, v57, v18, v56);
        goto LABEL_328;
      case 2:
        v93 = v12 & 3;
        v94 = v553[0];
        v95 = (v12 >> 2) + 1;
        do
        {
          if (v12 < 4)
          {
            v99 = v12;
          }

          else
          {
            v96 = v95;
            do
            {
              DplusDM_21871(v18, v17, *v18, ~v17);
              DplusDM_21871(v18 + 1, v17, v18[1], ~v17);
              DplusDM_21871(v18 + 2, v17, v18[2], ~v17);
              v98 = v18[3];
              v97 = v18 + 3;
              DplusDM_21871(v97, v17, v98, ~v17);
              v18 = v97 + 1;
              --v96;
            }

            while (v96 > 1);
            v99 = v93;
          }

          if (v99 < 1)
          {
            v101 = v18;
          }

          else
          {
            v100 = v99 + 1;
            v101 = v18;
            do
            {
              v102 = *v101++;
              DplusDM_21871(v18, v17, v102, ~v17);
              --v100;
              v18 = v101;
            }

            while (v100 > 1);
          }

          v18 = &v101[v52];
          v553[0] = --v94;
          v5 = v529;
          LODWORD(v12) = v53;
        }

        while (v94);
        goto LABEL_328;
      case 3:
        do
        {
          v61 = v563[0];
          do
          {
            v62 = *v18;
            if (*v18)
            {
              v63 = v62 == 255;
              v62 = v17;
              if (!v63)
              {
                v62 = PDM_21869(v17, *v18);
              }
            }

            *v18++ = v62;
            --v61;
          }

          while (v61);
          v18 += v52;
          --v553[0];
        }

        while (v553[0]);
        goto LABEL_328;
      case 4:
        do
        {
          v58 = v563[0];
          do
          {
            v59 = *v18 ^ 0xFF;
            if (v59)
            {
              v60 = v17;
              if (v59 != 255)
              {
                v60 = PDM_21869(v17, v59);
              }
            }

            else
            {
              v60 = 0;
            }

            *v18++ = v60;
            --v58;
          }

          while (v58);
          v18 += v52;
          --v553[0];
        }

        while (v553[0]);
        goto LABEL_328;
      case 5:
        v116 = v553[0];
        do
        {
          v117 = v12;
          v118 = v18;
          do
          {
            v119 = *v118++;
            DMplusDM_21870(v18, v17, v119, v119, ~v17);
            v18 = v118;
            --v117;
          }

          while (v117);
          v18 = &v118[v52];
          v553[0] = --v116;
          LODWORD(v12) = v53;
        }

        while (v116);
        goto LABEL_328;
      case 6:
        do
        {
          v126 = v563[0];
          do
          {
            if (*v18 != 0xFF)
            {
              if (~*v18 == 255)
              {
                *v18 = v17;
              }

              else
              {
                DplusDM_21871(v18, *v18, v17, ~*v18);
              }
            }

            ++v18;
            --v126;
          }

          while (v126);
          v18 += v52;
          --v553[0];
        }

        while (v553[0]);
        goto LABEL_328;
      case 7:
        do
        {
          v64 = v563[0];
          do
          {
            *v18 = PDM_21869(*v18, v17);
            ++v18;
            --v64;
          }

          while (v64);
          v18 += v52;
          --v553[0];
        }

        while (v553[0]);
        goto LABEL_328;
      case 8:
        do
        {
          v65 = v563[0];
          do
          {
            *v18 = PDM_21869(*v18, ~v17);
            ++v18;
            --v65;
          }

          while (v65);
          v18 += v52;
          --v553[0];
        }

        while (v553[0]);
        goto LABEL_328;
      case 9:
        v83 = v553[0];
        do
        {
          v84 = v12;
          v85 = v18;
          do
          {
            v86 = *v85++;
            DMplusDM_21870(v18, v17, ~v86, v86, v17);
            v18 = v85;
            --v84;
          }

          while (v84);
          v18 = &v85[v52];
          v553[0] = --v83;
          LODWORD(v12) = v53;
        }

        while (v83);
        goto LABEL_328;
      case 10:
        v130 = v553[0];
        do
        {
          v131 = v12;
          v132 = v18;
          do
          {
            v133 = *v132++;
            DMplusDM_21870(v18, v17, ~v133, v133, ~v17);
            v18 = v132;
            --v131;
          }

          while (v131);
          v18 = &v132[v52];
          v553[0] = --v130;
          LODWORD(v12) = v53;
        }

        while (v130);
        goto LABEL_328;
      case 11:
        v75 = v553[0];
        do
        {
          v76 = v12;
          v77 = v18;
          do
          {
            v79 = *v77++;
            v78 = v79;
            if (v551)
            {
              v80 = v78;
            }

            else
            {
              v80 = -1;
            }

            *v4.i8 = DAplusdDA_21872(v18, v78, v80, v17, v17, v4);
            v18 = v77;
            --v76;
          }

          while (v76);
          v18 = &v77[v52];
          v553[0] = --v75;
          LODWORD(v12) = v53;
        }

        while (v75);
        goto LABEL_328;
      case 12:
        do
        {
          v82 = v563[0];
          do
          {
            v81 = (v17 >> 8) & 0xFF00FF;
            *v18 = ((((*v18 >> 8) & 0xFF00FF) + v81) << 8) & 0xFF00FF00 | ((*v18 & 0xFF00FF) + (v17 & 0xFF00FF)) & 0xFF00FF | (15 * ((((*v18 >> 8) & 0xFF00FF) + v81) & 0x1000100 | (((*v18 & 0xFF00FF) + (v17 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * ((((*v18 >> 8) & 0xFF00FF) + v81) & 0x1000100 | (((*v18 & 0xFF00FF) + (v17 & 0xFF00FF)) >> 8) & 0x10001));
            ++v18;
            --v82;
          }

          while (v82);
          v18 += v52;
          --v553[0];
        }

        while (v553[0]);
        goto LABEL_328;
      case 13:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v123 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v124) = -1;
LABEL_232:
              v125 = PDAmultiplyPDA_21873(*v18, v124, v17, v17);
              goto LABEL_233;
            }

            v124 = *v18;
            v125 = v17;
            if (*v18)
            {
              goto LABEL_232;
            }

LABEL_233:
            *v18++ = v125;
            --v123;
          }

          while (v123);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 14:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v72 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v73) = -1;
LABEL_113:
              v74 = PDAscreenPDA_21874(*v18, v73, v17, v17);
              goto LABEL_114;
            }

            v73 = *v18;
            v74 = v17;
            if (*v18)
            {
              goto LABEL_113;
            }

LABEL_114:
            *v18++ = v74;
            --v72;
          }

          while (v72);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 15:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v103 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v104) = -1;
LABEL_173:
              v105 = PDAoverlayPDA_21875(*v18, v104, v17, v17);
              goto LABEL_174;
            }

            v104 = *v18;
            v105 = v17;
            if (*v18)
            {
              goto LABEL_173;
            }

LABEL_174:
            *v18++ = v105;
            --v103;
          }

          while (v103);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 16:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v69 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v70) = -1;
LABEL_103:
              v71 = PDAdarkenPDA_21877(*v18, v70, v17, v17);
              goto LABEL_104;
            }

            v70 = *v18;
            v71 = v17;
            if (*v18)
            {
              goto LABEL_103;
            }

LABEL_104:
            *v18++ = v71;
            --v69;
          }

          while (v69);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 17:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v110 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v111) = -1;
LABEL_197:
              v112 = PDAlightenPDA_21876(*v18, v111, v17, v17);
              goto LABEL_198;
            }

            v111 = *v18;
            v112 = v17;
            if (*v18)
            {
              goto LABEL_197;
            }

LABEL_198:
            *v18++ = v112;
            --v110;
          }

          while (v110);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 18:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v127 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v128) = -1;
LABEL_250:
              v129 = PDAcolordodgePDA_21878(*v18, v128, v17, v17);
              goto LABEL_251;
            }

            v128 = *v18;
            v129 = v17;
            if (*v18)
            {
              goto LABEL_250;
            }

LABEL_251:
            *v18++ = v129;
            --v127;
          }

          while (v127);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 19:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v140 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v141) = -1;
LABEL_285:
              v142 = PDAcolorburnPDA_21879(*v18, v141, v17, v17);
              goto LABEL_286;
            }

            v141 = *v18;
            v142 = v17;
            if (*v18)
            {
              goto LABEL_285;
            }

LABEL_286:
            *v18++ = v142;
            --v140;
          }

          while (v140);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 20:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v113 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v114) = -1;
LABEL_207:
              v115 = PDAsoftlightPDA_21881(*v18, v114, v17, v17);
              goto LABEL_208;
            }

            v114 = *v18;
            v115 = v17;
            if (*v18)
            {
              goto LABEL_207;
            }

LABEL_208:
            *v18++ = v115;
            --v113;
          }

          while (v113);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 21:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v120 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v121) = -1;
LABEL_222:
              v122 = PDAhardlightPDA_21880(*v18, v121, v17, v17);
              goto LABEL_223;
            }

            v121 = *v18;
            v122 = v17;
            if (*v18)
            {
              goto LABEL_222;
            }

LABEL_223:
            *v18++ = v122;
            --v120;
          }

          while (v120);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 22:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v137 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v138) = -1;
LABEL_275:
              v139 = PDAdifferencePDA_21882(*v18, v138, v17, v17);
              goto LABEL_276;
            }

            v138 = *v18;
            v139 = v17;
            if (*v18)
            {
              goto LABEL_275;
            }

LABEL_276:
            *v18++ = v139;
            --v137;
          }

          while (v137);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 23:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v143 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v144) = -1;
LABEL_295:
              v145 = PDAexclusionPDA_21883(*v18, v144, v17, v17);
              goto LABEL_296;
            }

            v144 = *v18;
            v145 = v17;
            if (*v18)
            {
              goto LABEL_295;
            }

LABEL_296:
            *v18++ = v145;
            --v143;
          }

          while (v143);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 24:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v90 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v91) = -1;
LABEL_150:
              v92 = PDAhuePDA_21884(*v18, v91, v17, v17);
              goto LABEL_151;
            }

            v91 = *v18;
            v92 = v17;
            if (*v18)
            {
              goto LABEL_150;
            }

LABEL_151:
            *v18++ = v92;
            --v90;
          }

          while (v90);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 25:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v87 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v88) = -1;
LABEL_140:
              v89 = PDAsaturationPDA_21885(*v18, v88, v17, v17);
              goto LABEL_141;
            }

            v88 = *v18;
            v89 = v17;
            if (*v18)
            {
              goto LABEL_140;
            }

LABEL_141:
            *v18++ = v89;
            --v87;
          }

          while (v87);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 26:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v152 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v153) = -1;
LABEL_325:
              v154 = PDAluminosityPDA_21886(v17, v17, *v18, v153);
              goto LABEL_326;
            }

            v153 = *v18;
            v154 = v17;
            if (*v18)
            {
              goto LABEL_325;
            }

LABEL_326:
            *v18++ = v154;
            --v152;
          }

          while (v152);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 27:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v66 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v67) = -1;
LABEL_93:
              v68 = PDAluminosityPDA_21886(*v18, v67, v17, v17);
              goto LABEL_94;
            }

            v67 = *v18;
            v68 = v17;
            if (*v18)
            {
              goto LABEL_93;
            }

LABEL_94:
            *v18++ = v68;
            --v66;
          }

          while (v66);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 28:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v146 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v147) = -1;
LABEL_305:
              v148 = PDAtranspose_huePDA_21887(*v18, v147, v17, v17);
              goto LABEL_306;
            }

            v147 = *v18;
            v148 = v17;
            if (*v18)
            {
              goto LABEL_305;
            }

LABEL_306:
            *v18++ = v148;
            --v146;
          }

          while (v146);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 29:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v149 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v150) = -1;
LABEL_315:
              v151 = PDAtranspose_saturationPDA_21888(*v18, v150, v17, v17);
              goto LABEL_316;
            }

            v150 = *v18;
            v151 = v17;
            if (*v18)
            {
              goto LABEL_315;
            }

LABEL_316:
            *v18++ = v151;
            --v149;
          }

          while (v149);
          v18 += v52;
          if (!--v553[0])
          {
LABEL_328:
            v18 = v545;
            v20 = v548;
            if (!v548)
            {
              return 1;
            }

            v552 = 0;
LABEL_330:
            if (!shape_enum_clip_next(v20, &v552 + 1, &v552, v563, v553))
            {
              v44 = v20;
              goto LABEL_1066;
            }

            v548 = v20;
            v18 += v549 * v552 + SHIDWORD(v552);
            LODWORD(v12) = v563[0];
            LODWORD(v10) = v541;
            goto LABEL_62;
          }
        }

      case 30:
        if (!v17)
        {
          goto LABEL_328;
        }

        while (1)
        {
          v134 = v563[0];
          do
          {
            if (!v551)
            {
              LOBYTE(v135) = -1;
LABEL_265:
              v136 = PDAtranspose_luminosityPDA_21889(v17, v17, *v18, v135);
              goto LABEL_266;
            }

            v135 = *v18;
            v136 = v17;
            if (*v18)
            {
              goto LABEL_265;
            }

LABEL_266:
            *v18++ = v136;
            --v134;
          }

          while (v134);
          v18 += v52;
          if (!--v553[0])
          {
            goto LABEL_328;
          }
        }

      case 31:
        if (!v17)
        {
          goto LABEL_328;
        }

        break;
      default:
        goto LABEL_328;
    }

LABEL_182:
    v107 = v563[0];
    while (1)
    {
      if (v551)
      {
        v108 = *v18;
        v109 = v17;
        if (!*v18)
        {
          goto LABEL_188;
        }
      }

      else
      {
        LOBYTE(v108) = -1;
      }

      v109 = PDAtranspose_luminosityPDA_21889(*v18, v108, v17, v17);
LABEL_188:
      *v18++ = v109;
      if (!--v107)
      {
        v18 += v52;
        if (!--v553[0])
        {
          goto LABEL_328;
        }

        goto LABEL_182;
      }
    }
  }

  v563[0] = *(v5 + 4);
  v553[0] = v14;
  v21 = *(v5 + 88);
  v22 = *(v5 + 28) >> 2;
  v23 = *(v5 + 40) + 4 * v22 * *(v5 + 16) + 4 * *(v5 + 12);
  v24 = *(v5 + 56);
  v25 = *(v5 + 60);
  v26 = *(v5 + 76) >> 2;
  if ((v8 & 0xFF00) != 0x100)
  {
    v30 = *(v5 + 64);
    v531 = *(v5 + 68);
    v544 = v21 + 4 * v26 * v531;
    v37 = v9 != 0;
    if (v15)
    {
      v547 = *(v5 + 76) >> 2;
      v550 = *(v5 + 88);
      v527 = *(v5 + 60);
      v528 = *(v5 + 56);
      v29 = 1;
      v38 = v550;
      goto LABEL_58;
    }

    v546 = v22 - v12;
    if (v21)
    {
      v540 = 0;
      v45 = v24 % v30;
      v46 = v21 + 4 * v26 * (v25 % v531);
      v47 = (v46 + 4 * v45);
      v38 = v46 + 4 * v30;
      v530 = 1;
      v547 = *(v5 + 76) >> 2;
      v550 = v47;
      v48 = (*(v5 + 40) + 4 * v22 * *(v5 + 16) + 4 * *(v5 + 12));
      v527 = v25 % v531;
      v528 = v45;
      goto LABEL_333;
    }

    v527 = *(v5 + 60);
    v528 = *(v5 + 56);
    v38 = 0;
    v530 = 1;
    v49 = v12;
    goto LABEL_61;
  }

  v21 += 4 * v26 * v25 + 4 * v24;
  if (v26 == v22)
  {
    v27 = (v23 - v21) >> 2;
    if (v27 < 1)
    {
LABEL_33:
      v29 = 1;
      v30 = *(v5 + 28) >> 2;
      goto LABEL_56;
    }

    if (v27 <= v12)
    {
      v23 += 4 * v13;
      v29 = -1;
      v30 = *(v5 + 28) >> 2;
      v21 += 4 * v13;
    }

    else
    {
      v28 = v22 * (v14 - 1);
      if (v23 > v21 + 4 * v28 + 4 * v12 - 4)
      {
        goto LABEL_33;
      }

      v23 += 4 * v28;
      v30 = -v22;
      v29 = 1;
      v21 += 4 * v28;
      v22 = -v22;
    }
  }

  else
  {
    v29 = 1;
    v30 = *(v5 + 76) >> 2;
  }

LABEL_56:
  v527 = *(v5 + 60);
  v528 = *(v5 + 56);
  v37 = v9 != 0;
  if (!v15)
  {
    v530 = v29;
    v531 = 0;
    v49 = v29 * v12;
    v546 = v22 - v49;
    v38 = -1;
    v26 = v30;
LABEL_61:
    v540 = 0;
    v544 = 0;
    v547 = v26 - v49;
    v550 = 0;
    v47 = v21;
    v48 = v23;
LABEL_333:
    while (2)
    {
      v542 = v12;
      switch(v10)
      {
        case 0:
          v155 = v48 - 4 * v12 + 4;
          v156 = v546 + v12;
          if (v530 < 0)
          {
            v156 = v546 - v12;
          }

          else
          {
            v155 = v48;
          }

          v157 = (v155 + 4 * ((v156 * (v553[0] - 1)) & (v156 >> 63)));
          if (v156 < 0)
          {
            v156 = -v156;
          }

          CGBlt_fillBytes(4 * v12, v553[0], 0, v157, 4 * v156);
          goto LABEL_1058;
        case 1:
          if (BYTE1(*v5) == 2)
          {
            if (v12 >= 8 && (4 * v30) <= 0x40)
            {
              v4.i32[0] = 4 * v30;
              v497 = vcnt_s8(*v4.i8);
              v497.i16[0] = vaddlv_u8(v497);
              if (v497.i32[0] <= 1u)
              {
                CGSFillDRAM64(v48, 4 * (v12 + v546), 4 * v12, v553[0], v21, 4 * v547, 4 * v30, v531, 4 * v528, v527);
                goto LABEL_1058;
              }
            }
          }

          else if (BYTE1(*v5) == 1)
          {
            if (v551 == 0 || v37)
            {
              if (v530 < 0)
              {
                v289 = v547 - v12;
                v522 = 4 * v12 - 4;
                v47 = (v47 - v522);
                v290 = v546 - v12;
                v48 = (v48 - v522);
              }

              else
              {
                v289 = v547 + v12;
                v290 = v546 + v12;
              }

              v523 = v553[0] - 1;
              v524 = &v47[(v289 * v523) & (v289 >> 63)];
              if (v289 >= 0)
              {
                v525 = v289;
              }

              else
              {
                v525 = -v289;
              }

              if (v290 >= 0)
              {
                LODWORD(v526) = v290;
              }

              else
              {
                v526 = -v290;
              }

              v547 = v525;
              CGBlt_copyBytes(4 * v12, v553[0], v524, v48 + 4 * ((v290 * v523) & (v290 >> 63)), 4 * v525, 4 * v526);
            }

            else
            {
              do
              {
                v506 = v563[0];
                do
                {
                  v48->i32[0] = *v47 | 0xFF;
                  v507 = &v47[v530];
                  if (v507 >= v38)
                  {
                    v508 = -v30;
                  }

                  else
                  {
                    v508 = 0;
                  }

                  v47 = &v507[v508];
                  v48 = (v48 + 4 * v530);
                  --v506;
                }

                while (v506);
                v48 = (v48 + 4 * v546);
                v509 = v550;
                v510 = &v550[v547];
                if (v510 >= v544)
                {
                  v511 = -(v547 * v531);
                }

                else
                {
                  v511 = 0;
                }

                v512 = &v510[v511];
                v513 = v38 + 4 * v511 + 4 * v547;
                if (v544)
                {
                  v38 = v513;
                  v509 = v512;
                }

                v550 = v509;
                if (v544)
                {
                  v47 = v512;
                }

                else
                {
                  v47 += v547;
                }

                --v553[0];
              }

              while (v553[0]);
            }

            goto LABEL_1058;
          }

          if ((*v5 & 0xFF00) == 0x200)
          {
            blt_bitmap_copy_XXXX32(v12, v553[0], v48, v546 + v12, v30, v531, v21, v547, v528, v527);
          }

          else if (v551 == 0 || v37)
          {
            do
            {
              v498 = v563[0];
              do
              {
                v48->i32[0] = *v47;
                v499 = &v47[v530];
                if (v499 >= v38)
                {
                  v500 = -v30;
                }

                else
                {
                  v500 = 0;
                }

                v47 = &v499[v500];
                v48 = (v48 + 4 * v530);
                --v498;
              }

              while (v498);
              v48 = (v48 + 4 * v546);
              v501 = v550;
              v502 = &v550[v547];
              if (v502 >= v544)
              {
                v503 = -(v547 * v531);
              }

              else
              {
                v503 = 0;
              }

              v504 = &v502[v503];
              v505 = v38 + 4 * v503 + 4 * v547;
              if (v544)
              {
                v38 = v505;
                v501 = v504;
              }

              v550 = v501;
              if (v544)
              {
                v47 = v504;
              }

              else
              {
                v47 += v547;
              }

              --v553[0];
            }

            while (v553[0]);
          }

          else
          {
            do
            {
              v514 = v563[0];
              do
              {
                v48->i32[0] = *v47 | 0xFF;
                v515 = &v47[v530];
                if (v515 >= v38)
                {
                  v516 = -v30;
                }

                else
                {
                  v516 = 0;
                }

                v47 = &v515[v516];
                v48 = (v48 + 4 * v530);
                --v514;
              }

              while (v514);
              v48 = (v48 + 4 * v546);
              v517 = v550;
              v518 = &v550[v547];
              if (v518 >= v544)
              {
                v519 = -(v547 * v531);
              }

              else
              {
                v519 = 0;
              }

              v520 = &v518[v519];
              v521 = v38 + 4 * v519 + 4 * v547;
              if (v544)
              {
                v38 = v521;
                v517 = v520;
              }

              v550 = v517;
              if (v544)
              {
                v47 = v520;
              }

              else
              {
                v47 += v547;
              }

              --v553[0];
            }

            while (v553[0]);
          }

          goto LABEL_1058;
        case 2:
          if (*(v5 + 1) << 8 != 512)
          {
            v533 = v21;
            v534 = v22;
            v535 = v23;
            v532 = v30;
            do
            {
              v486 = v563[0];
              do
              {
                v487 = *v47;
                if (*v47)
                {
                  if (*v47 == 255)
                  {
                    v48->i32[0] = v487;
                  }

                  else
                  {
                    DplusDM_21871(v48, v487, v48->i32[0], ~*v47);
                  }
                }

                v488 = &v47[v530];
                if (v488 >= v38)
                {
                  v489 = -v30;
                }

                else
                {
                  v489 = 0;
                }

                v47 = &v488[v489];
                v48 = (v48 + 4 * v530);
                --v486;
              }

              while (v486);
              v48 = (v48 + 4 * v546);
              v490 = v550;
              v491 = &v550[v547];
              v492 = -(v547 * v531);
              if (v491 < v544)
              {
                v492 = 0;
              }

              v493 = &v491[v492];
              v494 = v38 + 4 * v492 + 4 * v547;
              if (v544)
              {
                v38 = v494;
                v490 = v493;
              }

              v550 = v490;
              if (v544)
              {
                v47 = v493;
              }

              else
              {
                v47 += v547;
              }

              --v553[0];
            }

            while (v553[0]);
            goto LABEL_1056;
          }

          blt_bitmap_blend_XXXA32(v12, v553[0], v48, v546 + v12, v30, v531, v21, v547, v528, v527);
          goto LABEL_1058;
        case 3:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          do
          {
            v270 = v563[0];
            do
            {
              if (v48->i32[0] == 255)
              {
                v271 = *v47;
                if (!v37)
                {
                  v271 = 255;
                }

                v48->i32[0] = v271 | *v47 & 0xFFFFFF00;
              }

              else if (v48->i32[0])
              {
                if (v37)
                {
                  v272 = *v47;
                }

                else
                {
                  v272 = -1;
                }

                DAM_21894(v48, *v47, v272, v48->i32[0]);
              }

              else
              {
                v48->i32[0] = 0;
              }

              v273 = &v47[v530];
              if (v273 >= v38)
              {
                v274 = -v30;
              }

              else
              {
                v274 = 0;
              }

              v47 = &v273[v274];
              v48 = (v48 + 4 * v530);
              --v270;
            }

            while (v270);
            v48 = (v48 + 4 * v546);
            v275 = v550;
            v276 = &v550[v547];
            v277 = -(v547 * v531);
            if (v276 < v544)
            {
              v277 = 0;
            }

            v278 = &v276[v277];
            v279 = v38 + 4 * v277 + 4 * v547;
            if (v544)
            {
              v38 = v279;
              v275 = v278;
            }

            v550 = v275;
            if (v544)
            {
              v47 = v278;
            }

            else
            {
              v47 += v547;
            }

            --v553[0];
          }

          while (v553[0]);
          goto LABEL_1056;
        case 4:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          do
          {
            v205 = v563[0];
            do
            {
              if (~v48->i8[0] == 255)
              {
                v206 = *v47;
                if (!v37)
                {
                  v206 = 255;
                }

                v48->i32[0] = v206 | *v47 & 0xFFFFFF00;
              }

              else if (v48->i8[0] == -1)
              {
                v48->i32[0] = 0;
              }

              else
              {
                if (v37)
                {
                  v207 = *v47;
                }

                else
                {
                  v207 = -1;
                }

                DAM_21894(v48, *v47, v207, ~v48->i8[0]);
              }

              v208 = &v47[v530];
              if (v208 >= v38)
              {
                v209 = -v30;
              }

              else
              {
                v209 = 0;
              }

              v47 = &v208[v209];
              v48 = (v48 + 4 * v530);
              --v205;
            }

            while (v205);
            v48 = (v48 + 4 * v546);
            v210 = v550;
            v211 = &v550[v547];
            v212 = -(v547 * v531);
            if (v211 < v544)
            {
              v212 = 0;
            }

            v213 = &v211[v212];
            v214 = v38 + 4 * v212 + 4 * v547;
            if (v544)
            {
              v38 = v214;
              v210 = v213;
            }

            v550 = v210;
            if (v544)
            {
              v47 = v213;
            }

            else
            {
              v47 += v547;
            }

            --v553[0];
          }

          while (v553[0]);
          goto LABEL_1056;
        case 5:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          v327 = v553[0];
          do
          {
            v538 = v327;
            v328 = v12;
            do
            {
              DMplusDM_21870(v48, *v47, v48->i32[0], v48->i32[0], ~*v47);
              v329 = &v47[v530];
              if (v329 >= v38)
              {
                v330 = -v30;
              }

              else
              {
                v330 = 0;
              }

              v47 = &v329[v330];
              v48 = (v48 + 4 * v530);
              --v328;
            }

            while (v328);
            v48 = (v48 + 4 * v546);
            v331 = v550;
            v332 = &v550[v547];
            LODWORD(v12) = v542;
            v333 = -(v547 * v531);
            if (v332 < v544)
            {
              v333 = 0;
            }

            v334 = &v332[v333];
            v335 = v38 + 4 * v333 + 4 * v547;
            if (v544)
            {
              v38 = v335;
              v331 = v334;
            }

            v550 = v331;
            if (v544)
            {
              v47 = v334;
            }

            else
            {
              v47 += v547;
            }

            v327 = v538 - 1;
            v553[0] = v538 - 1;
          }

          while (v538 != 1);
          goto LABEL_1056;
        case 6:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          do
          {
            v360 = v563[0];
            do
            {
              if (v48->i32[0] != 0xFF)
              {
                if (~v48->i8[0] == 255)
                {
                  v361 = *v47;
                  if (!v37)
                  {
                    v361 = 255;
                  }

                  v48->i32[0] = v361 | *v47 & 0xFFFFFF00;
                }

                else
                {
                  if (v37)
                  {
                    v362 = *v47;
                  }

                  else
                  {
                    v362 = -1;
                  }

                  DplusDAM_21893(v48, v48->i32[0], *v47, v362, ~v48->i8[0]);
                }
              }

              v363 = &v47[v530];
              if (v363 >= v38)
              {
                v364 = -v30;
              }

              else
              {
                v364 = 0;
              }

              v47 = &v363[v364];
              v48 = (v48 + 4 * v530);
              --v360;
            }

            while (v360);
            v48 = (v48 + 4 * v546);
            v365 = v550;
            v366 = &v550[v547];
            v367 = -(v547 * v531);
            if (v366 < v544)
            {
              v367 = 0;
            }

            v368 = &v366[v367];
            v369 = v38 + 4 * v367 + 4 * v547;
            if (v544)
            {
              v38 = v369;
              v365 = v368;
            }

            v550 = v365;
            if (v544)
            {
              v47 = v368;
            }

            else
            {
              v47 += v547;
            }

            --v553[0];
          }

          while (v553[0]);
          goto LABEL_1056;
        case 7:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v280 = v563[0];
            do
            {
              v281 = *v47;
              if (*v47)
              {
                if (v281 == 255)
                {
                  goto LABEL_607;
                }

                v281 = PDM_21869(v48->i32[0], *v47);
              }

              v48->i32[0] = v281;
LABEL_607:
              v282 = &v47[v530];
              if (v282 >= v38)
              {
                v283 = -v30;
              }

              else
              {
                v283 = 0;
              }

              v47 = &v282[v283];
              v48 = (v48 + 4 * v530);
              --v280;
            }

            while (v280);
            v48 = (v48 + 4 * v546);
            v284 = v550;
            v285 = &v550[v547];
            if (v285 >= v544)
            {
              v286 = -(v547 * v531);
            }

            else
            {
              v286 = 0;
            }

            v287 = &v285[v286];
            v288 = v38 + 4 * v286 + 4 * v547;
            if (v544)
            {
              v38 = v288;
              v284 = v287;
            }

            v550 = v284;
            if (v544)
            {
              v47 = v287;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1056;
            }
          }

        case 8:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          do
          {
            v391 = v563[0];
            do
            {
              v392 = *v47 ^ 0xFF;
              if (v392)
              {
                if (v392 == 255)
                {
                  goto LABEL_842;
                }

                v392 = PDM_21869(v48->i32[0], v392);
              }

              v48->i32[0] = v392;
LABEL_842:
              v393 = &v47[v530];
              if (v393 >= v38)
              {
                v394 = -v30;
              }

              else
              {
                v394 = 0;
              }

              v47 = &v393[v394];
              v48 = (v48 + 4 * v530);
              --v391;
            }

            while (v391);
            v48 = (v48 + 4 * v546);
            v395 = v550;
            v396 = &v550[v547];
            if (v396 >= v544)
            {
              v397 = -(v547 * v531);
            }

            else
            {
              v397 = 0;
            }

            v398 = &v396[v397];
            v399 = v38 + 4 * v397 + 4 * v547;
            if (v544)
            {
              v38 = v399;
              v395 = v398;
            }

            v550 = v395;
            if (v544)
            {
              v47 = v398;
            }

            else
            {
              v47 += v547;
            }

            --v553[0];
          }

          while (v553[0]);
LABEL_1056:
          v5 = v529;
LABEL_1057:
          LODWORD(v10) = v541;
          v22 = v534;
          v23 = v535;
          v30 = v532;
          v21 = v533;
LABEL_1058:
          v51 = v540;
          if (!v540)
          {
            return 1;
          }

          v552 = 0;
LABEL_1060:
          if (!shape_enum_clip_next(v51, &v552 + 1, &v552, v563, v553))
          {
            v44 = v51;
LABEL_1066:
            free(v44);
            return 1;
          }

          v540 = v51;
          if (v544)
          {
            v48 = (v23 + 4 * v22 * v552 + 4 * SHIDWORD(v552));
            LODWORD(v12) = v563[0];
            v495 = v21 + 4 * v547 * ((v552 + *(v5 + 60)) % v531);
            v47 = (v495 + 4 * ((HIDWORD(v552) + *(v5 + 56)) % v30));
            v38 = v495 + 4 * v30;
            v550 = v47;
            v496 = v563[0];
            v527 = (v552 + *(v5 + 60)) % v531;
            v528 = (HIDWORD(v552) + *(v5 + 56)) % v30;
          }

          else
          {
            LODWORD(v12) = v563[0];
            v496 = v563[0] * v530;
            v48 = (v23 + 4 * v22 * v552 + 4 * HIDWORD(v552) * v530);
            v47 = (v21 + 4 * v552 * v30 + 4 * HIDWORD(v552) * v530);
            v547 = v30 - v563[0] * v530;
          }

          v546 = v22 - v496;
          continue;
        case 9:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          v225 = v553[0];
          do
          {
            v537 = v225;
            v226 = v12;
            do
            {
              DMplusDM_21870(v48, *v47, ~v48->i8[0], v48->i32[0], *v47);
              v227 = &v47[v530];
              if (v227 >= v38)
              {
                v228 = -v30;
              }

              else
              {
                v228 = 0;
              }

              v47 = &v227[v228];
              v48 = (v48 + 4 * v530);
              --v226;
            }

            while (v226);
            v48 = (v48 + 4 * v546);
            v229 = v550;
            v230 = &v550[v547];
            LODWORD(v12) = v542;
            v231 = -(v547 * v531);
            if (v230 < v544)
            {
              v231 = 0;
            }

            v232 = &v230[v231];
            v233 = v38 + 4 * v231 + 4 * v547;
            if (v544)
            {
              v38 = v233;
              v229 = v232;
            }

            v550 = v229;
            if (v544)
            {
              v47 = v232;
            }

            else
            {
              v47 += v547;
            }

            v225 = v537 - 1;
            v553[0] = v537 - 1;
          }

          while (v537 != 1);
          goto LABEL_1056;
        case 10:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          v382 = v553[0];
          do
          {
            v539 = v382;
            v383 = v12;
            do
            {
              DMplusDM_21870(v48, *v47, ~v48->i8[0], v48->i32[0], ~*v47);
              v384 = &v47[v530];
              if (v384 >= v38)
              {
                v385 = -v30;
              }

              else
              {
                v385 = 0;
              }

              v47 = &v384[v385];
              v48 = (v48 + 4 * v530);
              --v383;
            }

            while (v383);
            v48 = (v48 + 4 * v546);
            v386 = v550;
            v387 = &v550[v547];
            LODWORD(v12) = v542;
            v388 = -(v547 * v531);
            if (v387 < v544)
            {
              v388 = 0;
            }

            v389 = &v387[v388];
            v390 = v38 + 4 * v388 + 4 * v547;
            if (v544)
            {
              v38 = v390;
              v386 = v389;
            }

            v550 = v386;
            if (v544)
            {
              v47 = v389;
            }

            else
            {
              v47 += v547;
            }

            v382 = v539 - 1;
            v553[0] = v539 - 1;
          }

          while (v539 != 1);
          goto LABEL_1056;
        case 11:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          v194 = v553[0];
          do
          {
            v536 = v194;
            v195 = v12;
            do
            {
              if (v551)
              {
                v196 = v48->i32[0];
              }

              else
              {
                v196 = -1;
              }

              if (v37)
              {
                v197 = *v47;
              }

              else
              {
                v197 = -1;
              }

              *v4.i8 = DAplusdDA_21872(v48, v48->i32[0], v196, *v47, v197, v4);
              v198 = &v47[v530];
              if (v198 >= v38)
              {
                v199 = -v30;
              }

              else
              {
                v199 = 0;
              }

              v47 = &v198[v199];
              v48 = (v48 + 4 * v530);
              --v195;
            }

            while (v195);
            v48 = (v48 + 4 * v546);
            v200 = v550;
            v201 = &v550[v547];
            LODWORD(v12) = v542;
            v202 = -(v547 * v531);
            if (v201 < v544)
            {
              v202 = 0;
            }

            v203 = &v201[v202];
            v204 = v38 + 4 * v202 + 4 * v547;
            if (v544)
            {
              v38 = v204;
              v200 = v203;
            }

            v550 = v200;
            if (v544)
            {
              v47 = v203;
            }

            else
            {
              v47 += v547;
            }

            v194 = v536 - 1;
            v553[0] = v536 - 1;
          }

          while (v536 != 1);
          goto LABEL_1056;
        case 12:
          do
          {
            v215 = v563[0];
            do
            {
              v216 = *v47;
              if (!v37)
              {
                v216 = 255;
              }

              v217 = ((*v47 >> 8) & 0xFF00FF) + ((v48->i32[0] >> 8) & 0xFF00FF);
              v48->i32[0] = (v217 << 8) & 0xFF00FF00 | ((v216 | *v47 & 0xFF0000) + (v48->i32[0] & 0xFF00FF)) & 0xFF00FF | (15 * ((((v216 | *v47 & 0xFF0000) + (v48->i32[0] & 0xFF00FF)) >> 8) & 0x10001 | v217 & 0x1000100)) | (240 * ((((v216 | *v47 & 0xFF0000) + (v48->i32[0] & 0xFF00FF)) >> 8) & 0x10001 | v217 & 0x1000100));
              v218 = &v47[v530];
              if (v218 >= v38)
              {
                v219 = -v30;
              }

              else
              {
                v219 = 0;
              }

              v47 = &v218[v219];
              v48 = (v48 + 4 * v530);
              --v215;
            }

            while (v215);
            v48 = (v48 + 4 * v546);
            v220 = v550;
            v221 = &v550[v547];
            if (v221 >= v544)
            {
              v222 = -(v547 * v531);
            }

            else
            {
              v222 = 0;
            }

            v223 = &v221[v222];
            v224 = v38 + 4 * v222 + 4 * v547;
            if (v544)
            {
              v38 = v224;
              v220 = v223;
            }

            v550 = v220;
            if (v544)
            {
              v47 = v223;
            }

            else
            {
              v47 += v547;
            }

            --v553[0];
          }

          while (v553[0]);
          goto LABEL_1058;
        case 13:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v348 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v349) = -1;
LABEL_751:
                if (v551)
                {
                  v350 = *v47;
                  if (v48->i32[0])
                  {
                    v351 = v48->i32[0];
                    goto LABEL_755;
                  }

                  v352 = v350 & 0xFFFFFF00 | v349;
                }

                else
                {
                  v350 = *v47;
                  LOBYTE(v351) = -1;
LABEL_755:
                  v352 = PDAmultiplyPDA_21873(v48->i32[0], v351, v350, v349);
                }

                v48->i32[0] = v352;
                goto LABEL_758;
              }

              v349 = *v47;
              if (*v47)
              {
                goto LABEL_751;
              }

LABEL_758:
              v353 = &v47[v530];
              if (v353 >= v38)
              {
                v354 = -v30;
              }

              else
              {
                v354 = 0;
              }

              v47 = &v353[v354];
              v48 = (v48 + 4 * v530);
              --v348;
            }

            while (v348);
            v48 = (v48 + 4 * v546);
            v355 = v550;
            v356 = &v550[v547];
            v357 = -(v547 * v531);
            if (v356 < v544)
            {
              v357 = 0;
            }

            v358 = &v356[v357];
            v359 = v38 + 4 * v357 + 4 * v547;
            if (v544)
            {
              v38 = v359;
              v355 = v358;
            }

            v550 = v355;
            if (v544)
            {
              v47 = v358;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 14:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v182 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v183) = -1;
LABEL_398:
                if (v551)
                {
                  v184 = *v47;
                  if (v48->i32[0])
                  {
                    v185 = v48->i32[0];
                    goto LABEL_402;
                  }

                  v186 = v184 & 0xFFFFFF00 | v183;
                }

                else
                {
                  v184 = *v47;
                  LOBYTE(v185) = -1;
LABEL_402:
                  v186 = PDAscreenPDA_21874(v48->i32[0], v185, v184, v183);
                }

                v48->i32[0] = v186;
                goto LABEL_405;
              }

              v183 = *v47;
              if (*v47)
              {
                goto LABEL_398;
              }

LABEL_405:
              v187 = &v47[v530];
              if (v187 >= v38)
              {
                v188 = -v30;
              }

              else
              {
                v188 = 0;
              }

              v47 = &v187[v188];
              v48 = (v48 + 4 * v530);
              --v182;
            }

            while (v182);
            v48 = (v48 + 4 * v546);
            v189 = v550;
            v190 = &v550[v547];
            v191 = -(v547 * v531);
            if (v190 < v544)
            {
              v191 = 0;
            }

            v192 = &v190[v191];
            v193 = v38 + 4 * v191 + 4 * v547;
            if (v544)
            {
              v38 = v193;
              v189 = v192;
            }

            v550 = v189;
            if (v544)
            {
              v47 = v192;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 15:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v258 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v259) = -1;
LABEL_556:
                if (v551)
                {
                  v260 = *v47;
                  if (v48->i32[0])
                  {
                    v261 = v48->i32[0];
                    goto LABEL_560;
                  }

                  v262 = v260 & 0xFFFFFF00 | v259;
                }

                else
                {
                  v260 = *v47;
                  LOBYTE(v261) = -1;
LABEL_560:
                  v262 = PDAoverlayPDA_21875(v48->i32[0], v261, v260, v259);
                }

                v48->i32[0] = v262;
                goto LABEL_563;
              }

              v259 = *v47;
              if (*v47)
              {
                goto LABEL_556;
              }

LABEL_563:
              v263 = &v47[v530];
              if (v263 >= v38)
              {
                v264 = -v30;
              }

              else
              {
                v264 = 0;
              }

              v47 = &v263[v264];
              v48 = (v48 + 4 * v530);
              --v258;
            }

            while (v258);
            v48 = (v48 + 4 * v546);
            v265 = v550;
            v266 = &v550[v547];
            v267 = -(v547 * v531);
            if (v266 < v544)
            {
              v267 = 0;
            }

            v268 = &v266[v267];
            v269 = v38 + 4 * v267 + 4 * v547;
            if (v544)
            {
              v38 = v269;
              v265 = v268;
            }

            v550 = v265;
            if (v544)
            {
              v47 = v268;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 16:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v170 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v171) = -1;
LABEL_372:
                if (v551)
                {
                  v172 = *v47;
                  if (v48->i32[0])
                  {
                    v173 = v48->i32[0];
                    goto LABEL_376;
                  }

                  v174 = v172 & 0xFFFFFF00 | v171;
                }

                else
                {
                  v172 = *v47;
                  LOBYTE(v173) = -1;
LABEL_376:
                  v174 = PDAdarkenPDA_21877(v48->i32[0], v173, v172, v171);
                }

                v48->i32[0] = v174;
                goto LABEL_379;
              }

              v171 = *v47;
              if (*v47)
              {
                goto LABEL_372;
              }

LABEL_379:
              v175 = &v47[v530];
              if (v175 >= v38)
              {
                v176 = -v30;
              }

              else
              {
                v176 = 0;
              }

              v47 = &v175[v176];
              v48 = (v48 + 4 * v530);
              --v170;
            }

            while (v170);
            v48 = (v48 + 4 * v546);
            v177 = v550;
            v178 = &v550[v547];
            v179 = -(v547 * v531);
            if (v178 < v544)
            {
              v179 = 0;
            }

            v180 = &v178[v179];
            v181 = v38 + 4 * v179 + 4 * v547;
            if (v544)
            {
              v38 = v181;
              v177 = v180;
            }

            v550 = v177;
            if (v544)
            {
              v47 = v180;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 17:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v303 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v304) = -1;
LABEL_658:
                if (v551)
                {
                  v305 = *v47;
                  if (v48->i32[0])
                  {
                    v306 = v48->i32[0];
                    goto LABEL_662;
                  }

                  v307 = v305 & 0xFFFFFF00 | v304;
                }

                else
                {
                  v305 = *v47;
                  LOBYTE(v306) = -1;
LABEL_662:
                  v307 = PDAlightenPDA_21876(v48->i32[0], v306, v305, v304);
                }

                v48->i32[0] = v307;
                goto LABEL_665;
              }

              v304 = *v47;
              if (*v47)
              {
                goto LABEL_658;
              }

LABEL_665:
              v308 = &v47[v530];
              if (v308 >= v38)
              {
                v309 = -v30;
              }

              else
              {
                v309 = 0;
              }

              v47 = &v308[v309];
              v48 = (v48 + 4 * v530);
              --v303;
            }

            while (v303);
            v48 = (v48 + 4 * v546);
            v310 = v550;
            v311 = &v550[v547];
            v312 = -(v547 * v531);
            if (v311 < v544)
            {
              v312 = 0;
            }

            v313 = &v311[v312];
            v314 = v38 + 4 * v312 + 4 * v547;
            if (v544)
            {
              v38 = v314;
              v310 = v313;
            }

            v550 = v310;
            if (v544)
            {
              v47 = v313;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 18:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v370 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v371) = -1;
LABEL_801:
                if (v551)
                {
                  v372 = *v47;
                  if (v48->i32[0])
                  {
                    v373 = v48->i32[0];
                    goto LABEL_805;
                  }

                  v374 = v372 & 0xFFFFFF00 | v371;
                }

                else
                {
                  v372 = *v47;
                  LOBYTE(v373) = -1;
LABEL_805:
                  v374 = PDAcolordodgePDA_21878(v48->i32[0], v373, v372, v371);
                }

                v48->i32[0] = v374;
                goto LABEL_808;
              }

              v371 = *v47;
              if (*v47)
              {
                goto LABEL_801;
              }

LABEL_808:
              v375 = &v47[v530];
              if (v375 >= v38)
              {
                v376 = -v30;
              }

              else
              {
                v376 = 0;
              }

              v47 = &v375[v376];
              v48 = (v48 + 4 * v530);
              --v370;
            }

            while (v370);
            v48 = (v48 + 4 * v546);
            v377 = v550;
            v378 = &v550[v547];
            v379 = -(v547 * v531);
            if (v378 < v544)
            {
              v379 = 0;
            }

            v380 = &v378[v379];
            v381 = v38 + 4 * v379 + 4 * v547;
            if (v544)
            {
              v38 = v381;
              v377 = v380;
            }

            v550 = v377;
            if (v544)
            {
              v47 = v380;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 19:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v425 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v426) = -1;
LABEL_914:
                if (v551)
                {
                  v427 = *v47;
                  if (v48->i32[0])
                  {
                    v428 = v48->i32[0];
                    goto LABEL_918;
                  }

                  v429 = v427 & 0xFFFFFF00 | v426;
                }

                else
                {
                  v427 = *v47;
                  LOBYTE(v428) = -1;
LABEL_918:
                  v429 = PDAcolorburnPDA_21879(v48->i32[0], v428, v427, v426);
                }

                v48->i32[0] = v429;
                goto LABEL_921;
              }

              v426 = *v47;
              if (*v47)
              {
                goto LABEL_914;
              }

LABEL_921:
              v430 = &v47[v530];
              if (v430 >= v38)
              {
                v431 = -v30;
              }

              else
              {
                v431 = 0;
              }

              v47 = &v430[v431];
              v48 = (v48 + 4 * v530);
              --v425;
            }

            while (v425);
            v48 = (v48 + 4 * v546);
            v432 = v550;
            v433 = &v550[v547];
            v434 = -(v547 * v531);
            if (v433 < v544)
            {
              v434 = 0;
            }

            v435 = &v433[v434];
            v436 = v38 + 4 * v434 + 4 * v547;
            if (v544)
            {
              v38 = v436;
              v432 = v435;
            }

            v550 = v432;
            if (v544)
            {
              v47 = v435;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 20:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v315 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v316) = -1;
LABEL_684:
                if (v551)
                {
                  v317 = *v47;
                  if (v48->i32[0])
                  {
                    v318 = v48->i32[0];
                    goto LABEL_688;
                  }

                  v319 = v317 & 0xFFFFFF00 | v316;
                }

                else
                {
                  v317 = *v47;
                  LOBYTE(v318) = -1;
LABEL_688:
                  v319 = PDAsoftlightPDA_21881(v48->i32[0], v318, v317, v316);
                }

                v48->i32[0] = v319;
                goto LABEL_691;
              }

              v316 = *v47;
              if (*v47)
              {
                goto LABEL_684;
              }

LABEL_691:
              v320 = &v47[v530];
              if (v320 >= v38)
              {
                v321 = -v30;
              }

              else
              {
                v321 = 0;
              }

              v47 = &v320[v321];
              v48 = (v48 + 4 * v530);
              --v315;
            }

            while (v315);
            v48 = (v48 + 4 * v546);
            v322 = v550;
            v323 = &v550[v547];
            v324 = -(v547 * v531);
            if (v323 < v544)
            {
              v324 = 0;
            }

            v325 = &v323[v324];
            v326 = v38 + 4 * v324 + 4 * v547;
            if (v544)
            {
              v38 = v326;
              v322 = v325;
            }

            v550 = v322;
            if (v544)
            {
              v47 = v325;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 21:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v336 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v337) = -1;
LABEL_725:
                if (v551)
                {
                  v338 = *v47;
                  if (v48->i32[0])
                  {
                    v339 = v48->i32[0];
                    goto LABEL_729;
                  }

                  v340 = v338 & 0xFFFFFF00 | v337;
                }

                else
                {
                  v338 = *v47;
                  LOBYTE(v339) = -1;
LABEL_729:
                  v340 = PDAhardlightPDA_21880(v48->i32[0], v339, v338, v337);
                }

                v48->i32[0] = v340;
                goto LABEL_732;
              }

              v337 = *v47;
              if (*v47)
              {
                goto LABEL_725;
              }

LABEL_732:
              v341 = &v47[v530];
              if (v341 >= v38)
              {
                v342 = -v30;
              }

              else
              {
                v342 = 0;
              }

              v47 = &v341[v342];
              v48 = (v48 + 4 * v530);
              --v336;
            }

            while (v336);
            v48 = (v48 + 4 * v546);
            v343 = v550;
            v344 = &v550[v547];
            v345 = -(v547 * v531);
            if (v344 < v544)
            {
              v345 = 0;
            }

            v346 = &v344[v345];
            v347 = v38 + 4 * v345 + 4 * v547;
            if (v544)
            {
              v38 = v347;
              v343 = v346;
            }

            v550 = v343;
            if (v544)
            {
              v47 = v346;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 22:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v413 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v414) = -1;
LABEL_888:
                if (v551)
                {
                  v415 = *v47;
                  if (v48->i32[0])
                  {
                    v416 = v48->i32[0];
                    goto LABEL_892;
                  }

                  v417 = v415 & 0xFFFFFF00 | v414;
                }

                else
                {
                  v415 = *v47;
                  LOBYTE(v416) = -1;
LABEL_892:
                  v417 = PDAdifferencePDA_21882(v48->i32[0], v416, v415, v414);
                }

                v48->i32[0] = v417;
                goto LABEL_895;
              }

              v414 = *v47;
              if (*v47)
              {
                goto LABEL_888;
              }

LABEL_895:
              v418 = &v47[v530];
              if (v418 >= v38)
              {
                v419 = -v30;
              }

              else
              {
                v419 = 0;
              }

              v47 = &v418[v419];
              v48 = (v48 + 4 * v530);
              --v413;
            }

            while (v413);
            v48 = (v48 + 4 * v546);
            v420 = v550;
            v421 = &v550[v547];
            v422 = -(v547 * v531);
            if (v421 < v544)
            {
              v422 = 0;
            }

            v423 = &v421[v422];
            v424 = v38 + 4 * v422 + 4 * v547;
            if (v544)
            {
              v38 = v424;
              v420 = v423;
            }

            v550 = v420;
            if (v544)
            {
              v47 = v423;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 23:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v437 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v438) = -1;
LABEL_940:
                if (v551)
                {
                  v439 = *v47;
                  if (v48->i32[0])
                  {
                    v440 = v48->i32[0];
                    goto LABEL_944;
                  }

                  v441 = v439 & 0xFFFFFF00 | v438;
                }

                else
                {
                  v439 = *v47;
                  LOBYTE(v440) = -1;
LABEL_944:
                  v441 = PDAexclusionPDA_21883(v48->i32[0], v440, v439, v438);
                }

                v48->i32[0] = v441;
                goto LABEL_947;
              }

              v438 = *v47;
              if (*v47)
              {
                goto LABEL_940;
              }

LABEL_947:
              v442 = &v47[v530];
              if (v442 >= v38)
              {
                v443 = -v30;
              }

              else
              {
                v443 = 0;
              }

              v47 = &v442[v443];
              v48 = (v48 + 4 * v530);
              --v437;
            }

            while (v437);
            v48 = (v48 + 4 * v546);
            v444 = v550;
            v445 = &v550[v547];
            v446 = -(v547 * v531);
            if (v445 < v544)
            {
              v446 = 0;
            }

            v447 = &v445[v446];
            v448 = v38 + 4 * v446 + 4 * v547;
            if (v544)
            {
              v38 = v448;
              v444 = v447;
            }

            v550 = v444;
            if (v544)
            {
              v47 = v447;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 24:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v246 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v247) = -1;
LABEL_528:
                if (v551)
                {
                  v248 = *v47;
                  if (v48->i32[0])
                  {
                    v249 = v48->i32[0];
                    goto LABEL_532;
                  }

                  v250 = v248 & 0xFFFFFF00 | v247;
                }

                else
                {
                  v248 = *v47;
                  LOBYTE(v249) = -1;
LABEL_532:
                  v250 = PDAhuePDA_21884(v48->i32[0], v249, v248, v247);
                }

                v48->i32[0] = v250;
                goto LABEL_535;
              }

              v247 = *v47;
              if (*v47)
              {
                goto LABEL_528;
              }

LABEL_535:
              v251 = &v47[v530];
              if (v251 >= v38)
              {
                v252 = -v30;
              }

              else
              {
                v252 = 0;
              }

              v47 = &v251[v252];
              v48 = (v48 + 4 * v530);
              --v246;
            }

            while (v246);
            v48 = (v48 + 4 * v546);
            v253 = v550;
            v254 = &v550[v547];
            v255 = -(v547 * v531);
            if (v254 < v544)
            {
              v255 = 0;
            }

            v256 = &v254[v255];
            v257 = v38 + 4 * v255 + 4 * v547;
            if (v544)
            {
              v38 = v257;
              v253 = v256;
            }

            v550 = v253;
            if (v544)
            {
              v47 = v256;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 25:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v234 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v235) = -1;
LABEL_502:
                if (v551)
                {
                  v236 = *v47;
                  if (v48->i32[0])
                  {
                    v237 = v48->i32[0];
                    goto LABEL_506;
                  }

                  v238 = v236 & 0xFFFFFF00 | v235;
                }

                else
                {
                  v236 = *v47;
                  LOBYTE(v237) = -1;
LABEL_506:
                  v238 = PDAsaturationPDA_21885(v48->i32[0], v237, v236, v235);
                }

                v48->i32[0] = v238;
                goto LABEL_509;
              }

              v235 = *v47;
              if (*v47)
              {
                goto LABEL_502;
              }

LABEL_509:
              v239 = &v47[v530];
              if (v239 >= v38)
              {
                v240 = -v30;
              }

              else
              {
                v240 = 0;
              }

              v47 = &v239[v240];
              v48 = (v48 + 4 * v530);
              --v234;
            }

            while (v234);
            v48 = (v48 + 4 * v546);
            v241 = v550;
            v242 = &v550[v547];
            v243 = -(v547 * v531);
            if (v242 < v544)
            {
              v243 = 0;
            }

            v244 = &v242[v243];
            v245 = v38 + 4 * v243 + 4 * v547;
            if (v544)
            {
              v38 = v245;
              v241 = v244;
            }

            v550 = v241;
            if (v544)
            {
              v47 = v244;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 26:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v473 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v474) = -1;
LABEL_1018:
                if (v551)
                {
                  v475 = v48->i32[0];
                  v476 = *v47;
                  if (v48->i32[0])
                  {
                    v477 = v48->i32[0];
                    goto LABEL_1022;
                  }

                  v478 = v476 & 0xFFFFFF00 | v474;
                }

                else
                {
                  v476 = *v47;
                  v475 = v48->i32[0];
                  LOBYTE(v477) = -1;
LABEL_1022:
                  v478 = PDAluminosityPDA_21886(v476, v474, v475, v477);
                }

                v48->i32[0] = v478;
                goto LABEL_1025;
              }

              v474 = *v47;
              if (*v47)
              {
                goto LABEL_1018;
              }

LABEL_1025:
              v479 = &v47[v530];
              if (v479 >= v38)
              {
                v480 = -v30;
              }

              else
              {
                v480 = 0;
              }

              v47 = &v479[v480];
              v48 = (v48 + 4 * v530);
              --v473;
            }

            while (v473);
            v48 = (v48 + 4 * v546);
            v481 = v550;
            v482 = &v550[v547];
            v483 = -(v547 * v531);
            if (v482 < v544)
            {
              v483 = 0;
            }

            v484 = &v482[v483];
            v485 = v38 + 4 * v483 + 4 * v547;
            if (v544)
            {
              v38 = v485;
              v481 = v484;
            }

            v550 = v481;
            if (v544)
            {
              v47 = v484;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 27:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v158 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v159) = -1;
LABEL_346:
                if (v551)
                {
                  v160 = *v47;
                  if (v48->i32[0])
                  {
                    v161 = v48->i32[0];
                    goto LABEL_350;
                  }

                  v162 = v160 & 0xFFFFFF00 | v159;
                }

                else
                {
                  v160 = *v47;
                  LOBYTE(v161) = -1;
LABEL_350:
                  v162 = PDAluminosityPDA_21886(v48->i32[0], v161, v160, v159);
                }

                v48->i32[0] = v162;
                goto LABEL_353;
              }

              v159 = *v47;
              if (*v47)
              {
                goto LABEL_346;
              }

LABEL_353:
              v163 = &v47[v530];
              if (v163 >= v38)
              {
                v164 = -v30;
              }

              else
              {
                v164 = 0;
              }

              v47 = &v163[v164];
              v48 = (v48 + 4 * v530);
              --v158;
            }

            while (v158);
            v48 = (v48 + 4 * v546);
            v165 = v550;
            v166 = &v550[v547];
            v167 = -(v547 * v531);
            if (v166 < v544)
            {
              v167 = 0;
            }

            v168 = &v166[v167];
            v169 = v38 + 4 * v167 + 4 * v547;
            if (v544)
            {
              v38 = v169;
              v165 = v168;
            }

            v550 = v165;
            if (v544)
            {
              v47 = v168;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 28:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v449 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v450) = -1;
LABEL_966:
                if (v551)
                {
                  v451 = *v47;
                  if (v48->i32[0])
                  {
                    v452 = v48->i32[0];
                    goto LABEL_970;
                  }

                  v453 = v451 & 0xFFFFFF00 | v450;
                }

                else
                {
                  v451 = *v47;
                  LOBYTE(v452) = -1;
LABEL_970:
                  v453 = PDAtranspose_huePDA_21887(v48->i32[0], v452, v451, v450);
                }

                v48->i32[0] = v453;
                goto LABEL_973;
              }

              v450 = *v47;
              if (*v47)
              {
                goto LABEL_966;
              }

LABEL_973:
              v454 = &v47[v530];
              if (v454 >= v38)
              {
                v455 = -v30;
              }

              else
              {
                v455 = 0;
              }

              v47 = &v454[v455];
              v48 = (v48 + 4 * v530);
              --v449;
            }

            while (v449);
            v48 = (v48 + 4 * v546);
            v456 = v550;
            v457 = &v550[v547];
            v458 = -(v547 * v531);
            if (v457 < v544)
            {
              v458 = 0;
            }

            v459 = &v457[v458];
            v460 = v38 + 4 * v458 + 4 * v547;
            if (v544)
            {
              v38 = v460;
              v456 = v459;
            }

            v550 = v456;
            if (v544)
            {
              v47 = v459;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 29:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v461 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v462) = -1;
LABEL_992:
                if (v551)
                {
                  v463 = *v47;
                  if (v48->i32[0])
                  {
                    v464 = v48->i32[0];
                    goto LABEL_996;
                  }

                  v465 = v463 & 0xFFFFFF00 | v462;
                }

                else
                {
                  v463 = *v47;
                  LOBYTE(v464) = -1;
LABEL_996:
                  v465 = PDAtranspose_saturationPDA_21888(v48->i32[0], v464, v463, v462);
                }

                v48->i32[0] = v465;
                goto LABEL_999;
              }

              v462 = *v47;
              if (*v47)
              {
                goto LABEL_992;
              }

LABEL_999:
              v466 = &v47[v530];
              if (v466 >= v38)
              {
                v467 = -v30;
              }

              else
              {
                v467 = 0;
              }

              v47 = &v466[v467];
              v48 = (v48 + 4 * v530);
              --v461;
            }

            while (v461);
            v48 = (v48 + 4 * v546);
            v468 = v550;
            v469 = &v550[v547];
            v470 = -(v547 * v531);
            if (v469 < v544)
            {
              v470 = 0;
            }

            v471 = &v469[v470];
            v472 = v38 + 4 * v470 + 4 * v547;
            if (v544)
            {
              v38 = v472;
              v468 = v471;
            }

            v550 = v468;
            if (v544)
            {
              v47 = v471;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 30:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          while (1)
          {
            v400 = v563[0];
            do
            {
              if (!v37)
              {
                LOBYTE(v401) = -1;
LABEL_862:
                if (v551)
                {
                  v402 = v48->i32[0];
                  v403 = *v47;
                  if (v48->i32[0])
                  {
                    v404 = v48->i32[0];
                    goto LABEL_866;
                  }

                  v405 = v403 & 0xFFFFFF00 | v401;
                }

                else
                {
                  v403 = *v47;
                  v402 = v48->i32[0];
                  LOBYTE(v404) = -1;
LABEL_866:
                  v405 = PDAtranspose_luminosityPDA_21889(v403, v401, v402, v404);
                }

                v48->i32[0] = v405;
                goto LABEL_869;
              }

              v401 = *v47;
              if (*v47)
              {
                goto LABEL_862;
              }

LABEL_869:
              v406 = &v47[v530];
              if (v406 >= v38)
              {
                v407 = -v30;
              }

              else
              {
                v407 = 0;
              }

              v47 = &v406[v407];
              v48 = (v48 + 4 * v530);
              --v400;
            }

            while (v400);
            v48 = (v48 + 4 * v546);
            v408 = v550;
            v409 = &v550[v547];
            v410 = -(v547 * v531);
            if (v409 < v544)
            {
              v410 = 0;
            }

            v411 = &v409[v410];
            v412 = v38 + 4 * v410 + 4 * v547;
            if (v544)
            {
              v38 = v412;
              v408 = v411;
            }

            v550 = v408;
            if (v544)
            {
              v47 = v411;
            }

            else
            {
              v47 += v547;
            }

            if (!--v553[0])
            {
              goto LABEL_1057;
            }
          }

        case 31:
          v533 = v21;
          v534 = v22;
          v535 = v23;
          v532 = v30;
          break;
        default:
          goto LABEL_1058;
      }

      break;
    }

LABEL_627:
    v291 = v563[0];
    while (1)
    {
      if (v37)
      {
        v292 = *v47;
        if (!*v47)
        {
          goto LABEL_639;
        }
      }

      else
      {
        LOBYTE(v292) = -1;
      }

      if (v551)
      {
        v293 = *v47;
        if (!v48->i32[0])
        {
          v295 = v293 & 0xFFFFFF00 | v292;
          goto LABEL_638;
        }

        v294 = v48->i32[0];
      }

      else
      {
        v293 = *v47;
        LOBYTE(v294) = -1;
      }

      v295 = PDAtranspose_luminosityPDA_21889(v48->i32[0], v294, v293, v292);
LABEL_638:
      v48->i32[0] = v295;
LABEL_639:
      v296 = &v47[v530];
      if (v296 >= v38)
      {
        v297 = -v30;
      }

      else
      {
        v297 = 0;
      }

      v47 = &v296[v297];
      v48 = (v48 + 4 * v530);
      if (!--v291)
      {
        v48 = (v48 + 4 * v546);
        v298 = v550;
        v299 = &v550[v547];
        v300 = -(v547 * v531);
        if (v299 < v544)
        {
          v300 = 0;
        }

        v301 = &v299[v300];
        v302 = v38 + 4 * v300 + 4 * v547;
        if (v544)
        {
          v38 = v302;
          v298 = v301;
        }

        v550 = v298;
        if (v544)
        {
          v47 = v301;
        }

        else
        {
          v47 += v547;
        }

        if (!--v553[0])
        {
          goto LABEL_1057;
        }

        goto LABEL_627;
      }
    }
  }

  v531 = 0;
  v547 = v30;
  v550 = 0;
  v544 = 0;
  v38 = -1;
LABEL_58:
  v530 = v29;
  shape_enum_clip_alloc(v2, v3, v15, v29, v22, 1, *(v5 + 104), *(v5 + 108), v12, v14);
  v51 = v50;
  if (v50)
  {
    goto LABEL_1060;
  }

  return 1;
}

_DWORD *rgba32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_21896(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD30;
    a2[6] = 0;
    a2[12] = v8;
    *(a2 + 2) = 1;
    if (v8 == 0xFF)
    {
      v9 = 0;
    }

    else
    {
      v9 = (a2 + 12);
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v9;
  }

  return a2;
}

void rgba32_mark_constmask(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v141 = *(a1 + 28);
  v144 = *(a1 + 4);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 136);
  v8 = **(a1 + 88);
  pthread_mutex_lock(&rgba32_cacheColorLock);
  v9 = rgba32_cacheColor;
  if (!rgba32_cacheColor || *(rgba32_cacheColor + 16) != v8)
  {
    v12 = 0;
    while (1)
    {
      if (!v9)
      {
        goto LABEL_9;
      }

      v13 = v12;
      v12 = v9;
      if (*(v9 + 16) == v8)
      {
        break;
      }

      v9 = *v9;
      if (!*v12)
      {
        if (rgba32_cacheColorCount > 6)
        {
          v138 = a2;
          v16 = v5;
          *v13 = 0;
          v17 = *(v12 + 8);
        }

        else
        {
LABEL_9:
          v14 = rgba32_cacheColorBase;
          v138 = a2;
          if (rgba32_cacheColorBase)
          {
            v15 = rgba32_cacheColorCount;
          }

          else
          {
            v14 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x10200408056D5EBuLL);
            v15 = 0;
            rgba32_cacheColorBase = v14;
          }

          v16 = v5;
          v12 = v14 + 24 * v15;
          v17 = v14 + 1024 * v15 + 168;
          *(v12 + 8) = v17;
          rgba32_cacheColorCount = v15 + 1;
        }

        v18 = 0;
        *v12 = rgba32_cacheColor;
        rgba32_cacheColor = v12;
        *(v12 + 16) = v8;
        do
        {
          *(v17 + 4 * v18) = PDM_21869(v8, v18);
          ++v18;
        }

        while (v18 != 256);
        v11 = v12 + 8;
        pthread_mutex_unlock(&rgba32_cacheColorLock);
        v5 = v16;
        a2 = v138;
        goto LABEL_20;
      }
    }

    if (v13)
    {
      *v13 = *v9;
      *v9 = rgba32_cacheColor;
      rgba32_cacheColor = v9;
    }
  }

  pthread_mutex_unlock(&rgba32_cacheColorLock);
  v11 = v9 + 8;
LABEL_20:
  if (!v7)
  {
    return;
  }

  v19 = v144;
  v20 = *v11;
  v21 = *(*v11 + 1020);
  v22 = (v5 + 4 * (v141 >> 2) * *(a1 + 16) + 4 * *(a1 + 12));
  v23 = *(a1 + 124);
  v24 = v7 + *(a1 + 108) * v23 + *(a1 + 104);
  v25 = v23 - v144;
  v26 = (v141 >> 2) - v144;
  switch(a2)
  {
    case 0:
      do
      {
        v27 = v144;
        do
        {
          v28 = *v24;
          if (*v24)
          {
            if (v28 == 255)
            {
              v29 = 0;
            }

            else
            {
              v29 = PDM_21869(*v22, v28 ^ 0xFFu);
            }

            *v22 = v29;
          }

          ++v24;
          ++v22;
          --v27;
        }

        while (v27);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 1:
      v107 = -1;
      v108 = v24 & 3;
      if ((v24 & 3) != 0)
      {
        v19 = v108 + v144;
        v107 = -1 << (8 * v108);
        v109 = v24 & 3;
        v24 &= 0xFFFFFFFFFFFFFFFCLL;
        v22 -= v109;
      }

      if (((v19 + v24) & 3) != 0)
      {
        v110 = 4 - ((v19 + v24) & 3);
        v108 += v110;
        v111 = 0xFFFFFFFF >> (8 * v110);
        if (v19 >= 4)
        {
          v112 = v111;
        }

        else
        {
          v112 = 0;
        }

        if (v19 >= 4)
        {
          v111 = -1;
        }

        v107 &= v111;
      }

      else
      {
        v112 = 0;
      }

      v140 = v25 - v108;
      v137 = v19 >> 2;
      v146 = vdupq_n_s32(v21);
      v135 = v26 - v108;
      v143 = v107;
      do
      {
        v129 = *v24 & v107;
        v130 = v137;
        v131 = v112;
        if (!v129)
        {
          goto LABEL_379;
        }

LABEL_377:
        if (v129 == -1)
        {
          *v22 = v146;
          goto LABEL_379;
        }

        while (1)
        {
          if (v129)
          {
            if (v129 == 255)
            {
              *v22 = v21;
            }

            else
            {
              DplusDM_21871(v22, *(v20 + 4 * v129), *v22, ~v129);
            }
          }

          if (BYTE1(v129))
          {
            if (BYTE1(v129) == 255)
            {
              v22[1] = v21;
            }

            else
            {
              DplusDM_21871(v22 + 1, *(v20 + 4 * BYTE1(v129)), v22[1], ~(v129 >> 8));
            }
          }

          if (BYTE2(v129))
          {
            if (BYTE2(v129) == 255)
            {
              v22[2] = v21;
            }

            else
            {
              DplusDM_21871(v22 + 2, *(v20 + 4 * BYTE2(v129)), v22[2], ~HIWORD(v129));
            }
          }

          v133 = HIBYTE(v129);
          if (HIBYTE(v129) == 255)
          {
            v22[3] = v21;
          }

          else if (v133)
          {
            DplusDM_21871(v22 + 3, *(v20 + 4 * v133), v22[3], ~v129 >> 24);
          }

LABEL_379:
          while (1)
          {
            v132 = v130;
            v22 += 4;
            --v130;
            v24 += 4;
            if (v132 < 2)
            {
              break;
            }

            v129 = *v24;
            if (*v24)
            {
              goto LABEL_377;
            }
          }

          if (!v131)
          {
            break;
          }

          v131 = 0;
          v129 = *v24 & v112;
        }

        v24 += v140;
        v22 += v135;
        --v4;
        v107 = v143;
      }

      while (v4);
      return;
    case 2:
      v95 = -1;
      v96 = v24 & 3;
      if ((v24 & 3) != 0)
      {
        v19 = v96 + v144;
        v95 = -1 << (8 * v96);
        v97 = v24 & 3;
        v24 &= 0xFFFFFFFFFFFFFFFCLL;
        v22 -= v97;
      }

      if (((v19 + v24) & 3) != 0)
      {
        v98 = 4 - ((v19 + v24) & 3);
        v96 += v98;
        v99 = 0xFFFFFFFF >> (8 * v98);
        if (v19 >= 4)
        {
          v100 = v99;
        }

        else
        {
          v100 = 0;
        }

        v145 = v100;
        if (v19 >= 4)
        {
          v99 = -1;
        }

        v95 &= v99;
      }

      else
      {
        v145 = 0;
      }

      v139 = v25 - v96;
      v136 = v19 >> 2;
      v134 = v26 - v96;
      v142 = v95;
      do
      {
        v120 = *v24 & v95;
        v121 = v136;
        v122 = v145;
        if (!v120)
        {
          goto LABEL_358;
        }

LABEL_356:
        if (v120 == -1)
        {
          DplusDM_21871(v22, v21, *v22, ~v21);
          DplusDM_21871(v22 + 1, v21, v22[1], ~v21);
          DplusDM_21871(v22 + 2, v21, v22[2], ~v21);
          v123 = v22 + 3;
          v124 = v22[3];
          v125 = ~v21;
          v126 = v21;
LABEL_371:
          DplusDM_21871(v123, v126, v124, v125);
          goto LABEL_358;
        }

        while (1)
        {
          if (v120)
          {
            DplusDM_21871(v22, *(v20 + 4 * v120), *v22, ~*(v20 + 4 * v120));
          }

          if ((v120 & 0xFF00) != 0)
          {
            DplusDM_21871(v22 + 1, *(v20 + 4 * BYTE1(v120)), v22[1], ~*(v20 + 4 * BYTE1(v120)));
          }

          if ((v120 & 0xFF0000) != 0)
          {
            DplusDM_21871(v22 + 2, *(v20 + 4 * BYTE2(v120)), v22[2], ~*(v20 + 4 * BYTE2(v120)));
          }

          v128 = HIBYTE(v120);
          if (HIBYTE(v120))
          {
            v126 = *(v20 + 4 * v128);
            v123 = v22 + 3;
            v124 = v22[3];
            v125 = ~*(v20 + 4 * v128);
            goto LABEL_371;
          }

LABEL_358:
          while (1)
          {
            v127 = v121;
            v22 += 4;
            --v121;
            v24 += 4;
            if (v127 < 2)
            {
              break;
            }

            v120 = *v24;
            if (*v24)
            {
              goto LABEL_356;
            }
          }

          if (!v122)
          {
            break;
          }

          v122 = 0;
          v120 = *v24 & v145;
        }

        v24 += v139;
        v22 += v134;
        --v4;
        v95 = v142;
      }

      while (v4);
      return;
    case 3:
      do
      {
        v101 = v144;
        do
        {
          v102 = *v24;
          if (*v24)
          {
            if (v102 == 255)
            {
              *v22 = *(v20 + 4 * *v22);
            }

            else
            {
              v103 = *v22 * v102 + 128;
              DplusDM_21871(v22, *(v20 + 4 * ((v103 + (v103 >> 8)) >> 8)), *v22, v102 ^ 0xFF);
            }
          }

          ++v24;
          ++v22;
          --v101;
        }

        while (v101);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 4:
      do
      {
        v89 = v144;
        do
        {
          v90 = *v24;
          if (*v24)
          {
            if (v90 == 255)
            {
              *v22 = *(v20 + 4 * ~*v22);
            }

            else
            {
              DplusDM_21871(v22, *(v20 + 4 * ((~*v22 * v90 + 128 + ((~*v22 * v90 + 128) >> 8)) >> 8)), *v22, v90 ^ 0xFF);
            }
          }

          ++v24;
          ++v22;
          --v89;
        }

        while (v89);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 5:
      do
      {
        v113 = v144;
        do
        {
          if (*v24)
          {
            DMplusDM_21870(v22, *(v20 + 4 * *v24), *v22, *v22, ~*(v20 + 4 * *v24));
          }

          ++v24;
          ++v22;
          --v113;
        }

        while (v113);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 6:
      do
      {
        v114 = v144;
        do
        {
          v115 = *v24;
          if (*v24 && *v22 != 0xFF)
          {
            if (~*v22 == 255)
            {
              *v22 = *(v20 + 4 * v115);
            }

            else
            {
              DplusDM_21871(v22, *v22, *(v20 + 4 * v115), ~*v22);
            }
          }

          ++v24;
          ++v22;
          --v114;
        }

        while (v114);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 7:
      do
      {
        v104 = v144;
        do
        {
          v105 = *v24;
          if (*v24)
          {
            if (v105 == 255)
            {
              v106 = v21;
            }

            else
            {
              v106 = (~v105 + ((v21 * v105 + 128 + ((v21 * v105 + 128) >> 8)) >> 8));
            }

            *v22 = PDM_21869(*v22, v106);
          }

          ++v24;
          ++v22;
          --v104;
        }

        while (v104);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 8:
      do
      {
        v117 = v144;
        do
        {
          v118 = *v24;
          if (*v24)
          {
            if (v118 == 255)
            {
              v119 = ~v21;
            }

            else
            {
              v119 = ~((v21 * v118 + 128 + ((v21 * v118 + 128) >> 8)) >> 8);
            }

            *v22 = PDM_21869(*v22, v119);
          }

          ++v24;
          ++v22;
          --v117;
        }

        while (v117);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 9:
      do
      {
        v94 = v144;
        do
        {
          if (*v24)
          {
            DMplusDM_21870(v22, *(v20 + 4 * *v24), ~*v22, *v22, (*(v20 + 4 * *v24) + ~*v24));
          }

          ++v24;
          ++v22;
          --v94;
        }

        while (v94);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 10:
      do
      {
        v116 = v144;
        do
        {
          if (*v24)
          {
            DMplusDM_21870(v22, *(v20 + 4 * *v24), ~*v22, *v22, ~*(v20 + 4 * *v24));
          }

          ++v24;
          ++v22;
          --v116;
        }

        while (v116);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 11:
      do
      {
        v39 = v144;
        do
        {
          if (*v24)
          {
            if (v6)
            {
              v40 = *v22;
            }

            else
            {
              v40 = -1;
            }

            *v10.i8 = DAplusdDA_21872(v22, *v22, v40, *(v20 + 4 * *v24), *(v20 + 4 * *v24), v10);
          }

          ++v24;
          ++v22;
          --v39;
        }

        while (v39);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 12:
      do
      {
        v91 = v144;
        do
        {
          if (*v24)
          {
            v92 = *(v20 + 4 * *v24);
            v93 = ((*v22 >> 8) & 0xFF00FF) + ((v92 >> 8) & 0xFF00FF);
            *v22 = (v93 << 8) & 0xFF00FF00 | ((*v22 & 0xFF00FF) + (v92 & 0xFF00FF)) & 0xFF00FF | (15 * (v93 & 0x1000100 | (((*v22 & 0xFF00FF) + (v92 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v93 & 0x1000100 | (((*v22 & 0xFF00FF) + (v92 & 0xFF00FF)) >> 8) & 0x10001));
          }

          ++v24;
          ++v22;
          --v91;
        }

        while (v91);
        v24 += v25;
        v22 += v26;
        --v4;
      }

      while (v4);
      return;
    case 13:
      while (1)
      {
        v62 = v144;
        do
        {
          if (*v24)
          {
            v63 = *(v20 + 4 * *v24);
            if (v63)
            {
              if (v6)
              {
                v64 = *v22;
                if (!*v22)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                LOBYTE(v64) = -1;
              }

              v63 = PDAmultiplyPDA_21873(*v22, v64, v63, v63);
LABEL_168:
              *v22 = v63;
            }
          }

          ++v24;
          ++v22;
          --v62;
        }

        while (v62);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 14:
      while (1)
      {
        v36 = v144;
        do
        {
          if (*v24)
          {
            v37 = *(v20 + 4 * *v24);
            if (v37)
            {
              if (v6)
              {
                v38 = *v22;
                if (!*v22)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                LOBYTE(v38) = -1;
              }

              v37 = PDAscreenPDA_21874(*v22, v38, v37, v37);
LABEL_63:
              *v22 = v37;
            }
          }

          ++v24;
          ++v22;
          --v36;
        }

        while (v36);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 15:
      while (1)
      {
        v47 = v144;
        do
        {
          if (*v24)
          {
            v48 = *(v20 + 4 * *v24);
            if (v48)
            {
              if (v6)
              {
                v49 = *v22;
                if (!*v22)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                LOBYTE(v49) = -1;
              }

              v48 = PDAoverlayPDA_21875(*v22, v49, v48, v48);
LABEL_108:
              *v22 = v48;
            }
          }

          ++v24;
          ++v22;
          --v47;
        }

        while (v47);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 16:
      while (1)
      {
        v33 = v144;
        do
        {
          if (*v24)
          {
            v34 = *(v20 + 4 * *v24);
            if (v34)
            {
              if (v6)
              {
                v35 = *v22;
                if (!*v22)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                LOBYTE(v35) = -1;
              }

              v34 = PDAdarkenPDA_21877(*v22, v35, v34, v34);
LABEL_51:
              *v22 = v34;
            }
          }

          ++v24;
          ++v22;
          --v33;
        }

        while (v33);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 17:
      while (1)
      {
        v53 = v144;
        do
        {
          if (*v24)
          {
            v54 = *(v20 + 4 * *v24);
            if (v54)
            {
              if (v6)
              {
                v55 = *v22;
                if (!*v22)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                LOBYTE(v55) = -1;
              }

              v54 = PDAlightenPDA_21876(*v22, v55, v54, v54);
LABEL_132:
              *v22 = v54;
            }
          }

          ++v24;
          ++v22;
          --v53;
        }

        while (v53);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 18:
      while (1)
      {
        v65 = v144;
        do
        {
          if (*v24)
          {
            v66 = *(v20 + 4 * *v24);
            if (v66)
            {
              if (v6)
              {
                v67 = *v22;
                if (!*v22)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                LOBYTE(v67) = -1;
              }

              v66 = PDAcolordodgePDA_21878(*v22, v67, v66, v66);
LABEL_180:
              *v22 = v66;
            }
          }

          ++v24;
          ++v22;
          --v65;
        }

        while (v65);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 19:
      while (1)
      {
        v74 = v144;
        do
        {
          if (*v24)
          {
            v75 = *(v20 + 4 * *v24);
            if (v75)
            {
              if (v6)
              {
                v76 = *v22;
                if (!*v22)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                LOBYTE(v76) = -1;
              }

              v75 = PDAcolorburnPDA_21879(*v22, v76, v75, v75);
LABEL_216:
              *v22 = v75;
            }
          }

          ++v24;
          ++v22;
          --v74;
        }

        while (v74);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 20:
      while (1)
      {
        v56 = v144;
        do
        {
          if (*v24)
          {
            v57 = *(v20 + 4 * *v24);
            if (v57)
            {
              if (v6)
              {
                v58 = *v22;
                if (!*v22)
                {
                  goto LABEL_144;
                }
              }

              else
              {
                LOBYTE(v58) = -1;
              }

              v57 = PDAsoftlightPDA_21881(*v22, v58, v57, v57);
LABEL_144:
              *v22 = v57;
            }
          }

          ++v24;
          ++v22;
          --v56;
        }

        while (v56);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 21:
      while (1)
      {
        v59 = v144;
        do
        {
          if (*v24)
          {
            v60 = *(v20 + 4 * *v24);
            if (v60)
            {
              if (v6)
              {
                v61 = *v22;
                if (!*v22)
                {
                  goto LABEL_156;
                }
              }

              else
              {
                LOBYTE(v61) = -1;
              }

              v60 = PDAhardlightPDA_21880(*v22, v61, v60, v60);
LABEL_156:
              *v22 = v60;
            }
          }

          ++v24;
          ++v22;
          --v59;
        }

        while (v59);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 22:
      while (1)
      {
        v71 = v144;
        do
        {
          if (*v24)
          {
            v72 = *(v20 + 4 * *v24);
            if (v72)
            {
              if (v6)
              {
                v73 = *v22;
                if (!*v22)
                {
                  goto LABEL_204;
                }
              }

              else
              {
                LOBYTE(v73) = -1;
              }

              v72 = PDAdifferencePDA_21882(*v22, v73, v72, v72);
LABEL_204:
              *v22 = v72;
            }
          }

          ++v24;
          ++v22;
          --v71;
        }

        while (v71);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 23:
      while (1)
      {
        v77 = v144;
        do
        {
          if (*v24)
          {
            v78 = *(v20 + 4 * *v24);
            if (v78)
            {
              if (v6)
              {
                v79 = *v22;
                if (!*v22)
                {
                  goto LABEL_228;
                }
              }

              else
              {
                LOBYTE(v79) = -1;
              }

              v78 = PDAexclusionPDA_21883(*v22, v79, v78, v78);
LABEL_228:
              *v22 = v78;
            }
          }

          ++v24;
          ++v22;
          --v77;
        }

        while (v77);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 24:
      while (1)
      {
        v44 = v144;
        do
        {
          if (*v24)
          {
            v45 = *(v20 + 4 * *v24);
            if (v45)
            {
              if (v6)
              {
                v46 = *v22;
                if (!*v22)
                {
                  goto LABEL_96;
                }
              }

              else
              {
                LOBYTE(v46) = -1;
              }

              v45 = PDAhuePDA_21884(*v22, v46, v45, v45);
LABEL_96:
              *v22 = v45;
            }
          }

          ++v24;
          ++v22;
          --v44;
        }

        while (v44);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 25:
      while (1)
      {
        v41 = v144;
        do
        {
          if (*v24)
          {
            v42 = *(v20 + 4 * *v24);
            if (v42)
            {
              if (v6)
              {
                v43 = *v22;
                if (!*v22)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                LOBYTE(v43) = -1;
              }

              v42 = PDAsaturationPDA_21885(*v22, v43, v42, v42);
LABEL_84:
              *v22 = v42;
            }
          }

          ++v24;
          ++v22;
          --v41;
        }

        while (v41);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 26:
      while (1)
      {
        v86 = v144;
        do
        {
          if (*v24)
          {
            v87 = *(v20 + 4 * *v24);
            if (v87)
            {
              if (v6)
              {
                v88 = *v22;
                if (!*v22)
                {
                  goto LABEL_264;
                }
              }

              else
              {
                LOBYTE(v88) = -1;
              }

              v87 = PDAluminosityPDA_21886(v87, v87, *v22, v88);
LABEL_264:
              *v22 = v87;
            }
          }

          ++v24;
          ++v22;
          --v86;
        }

        while (v86);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 27:
      while (1)
      {
        v30 = v144;
        do
        {
          if (*v24)
          {
            v31 = *(v20 + 4 * *v24);
            if (v31)
            {
              if (v6)
              {
                v32 = *v22;
                if (!*v22)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                LOBYTE(v32) = -1;
              }

              v31 = PDAluminosityPDA_21886(*v22, v32, v31, v31);
LABEL_39:
              *v22 = v31;
            }
          }

          ++v24;
          ++v22;
          --v30;
        }

        while (v30);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 28:
      while (1)
      {
        v80 = v144;
        do
        {
          if (*v24)
          {
            v81 = *(v20 + 4 * *v24);
            if (v81)
            {
              if (v6)
              {
                v82 = *v22;
                if (!*v22)
                {
                  goto LABEL_240;
                }
              }

              else
              {
                LOBYTE(v82) = -1;
              }

              v81 = PDAtranspose_huePDA_21887(*v22, v82, v81, v81);
LABEL_240:
              *v22 = v81;
            }
          }

          ++v24;
          ++v22;
          --v80;
        }

        while (v80);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 29:
      while (1)
      {
        v83 = v144;
        do
        {
          if (*v24)
          {
            v84 = *(v20 + 4 * *v24);
            if (v84)
            {
              if (v6)
              {
                v85 = *v22;
                if (!*v22)
                {
                  goto LABEL_252;
                }
              }

              else
              {
                LOBYTE(v85) = -1;
              }

              v84 = PDAtranspose_saturationPDA_21888(*v22, v85, v84, v84);
LABEL_252:
              *v22 = v84;
            }
          }

          ++v24;
          ++v22;
          --v83;
        }

        while (v83);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 30:
      while (1)
      {
        v68 = v144;
        do
        {
          if (*v24)
          {
            v69 = *(v20 + 4 * *v24);
            if (v69)
            {
              if (v6)
              {
                v70 = *v22;
                if (!*v22)
                {
                  goto LABEL_192;
                }
              }

              else
              {
                LOBYTE(v70) = -1;
              }

              v69 = PDAtranspose_luminosityPDA_21889(v69, v69, *v22, v70);
LABEL_192:
              *v22 = v69;
            }
          }

          ++v24;
          ++v22;
          --v68;
        }

        while (v68);
        v24 += v25;
        v22 += v26;
        if (!--v4)
        {
          return;
        }
      }

    case 31:
      break;
    default:
      return;
  }

LABEL_112:
  v50 = v144;
  while (1)
  {
    if (!*v24)
    {
      goto LABEL_121;
    }

    v51 = *(v20 + 4 * *v24);
    if (!v51)
    {
      goto LABEL_121;
    }

    if (v6)
    {
      v52 = *v22;
      if (!*v22)
      {
        goto LABEL_120;
      }
    }

    else
    {
      LOBYTE(v52) = -1;
    }

    v51 = PDAtranspose_luminosityPDA_21889(*v22, v52, v51, v51);
LABEL_120:
    *v22 = v51;
LABEL_121:
    ++v24;
    ++v22;
    if (!--v50)
    {
      v24 += v25;
      v22 += v26;
      if (!--v4)
      {
        return;
      }

      goto LABEL_112;
    }
  }
}

UInt8 *CGGlyphBitmapCreateWithPathAndDilation(UInt8 *cf, int a2, uint64_t a3, int a4, double *a5)
{
  v9 = cf;
  v42 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x982) != 0)
  {
    if (cf)
    {
      if ((CGPathDisableTypeValidation & 1) != 0 || (v11 = CFGetTypeID(cf), v11 == CGPathGetTypeID()))
      {
        v12 = malloc_type_malloc(0x60uLL, 0x1020040E03F46FBuLL);
        *(v12 + 8) = 0u;
        *(v12 + 24) = 0u;
        *(v12 + 40) = vdupq_n_s64(0x47EFFFFFE0000000uLL);
        *(v12 + 56) = vdupq_n_s64(0xC7EFFFFFE0000000);
        *(v12 + 18) = 1032805417;
        *(v12 + 5) = xmmword_18439CF70;
        *v12 = malloc_type_malloc(0x780uLL, 0x1000040504FFAC1uLL);
        operator new();
      }

      return 0;
    }
  }

  else if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) == 0)
    {
      v13 = CFGetTypeID(cf);
      if (v13 != CGPathGetTypeID())
      {
        return 0;
      }
    }

    font_info = get_font_info(a3);
    if (!font_info)
    {
      return 0;
    }

    v15 = font_info[2];
    if (!v15)
    {
      return 0;
    }

    v16 = vmul_s32(vdup_n_s32(v15), 0x64FFFFFF9CLL);
    v17.i64[0] = v16.i32[0];
    v17.i64[1] = v16.i32[1];
    info = vcvtq_f64_s64(v17);
    v38 = CGAffineTransformIdentity;
    AutohintTransform = 0;
    aa_create();
    v40 = v18;
    v19 = aa_free_edges(v18);
    if ((a4 & 0x400) != 0)
    {
      operator new();
    }

    if (a3)
    {
      v20 = *(a3 + 104);
      if (v20 < 0)
      {
        v20 = (*(*(a3 + 16) + 144))(*(a3 + 112), v19);
        *(a3 + 104) = v20;
      }

      if (v20 && (a2 & 0xFF000000) == 0)
      {
        Autohinter = CGFontGetAutohinter(a3);
        AutohintTransform = CGFontAutohinterCreateAutohintTransform(Autohinter, a5, 0, 0.0);
      }
    }

    CGPathApply(v9, &info, process_path_element_15304);
    v23 = v40;
    v24 = v40->i32[0];
    v25 = v40->i32[2];
    if (v25 - v40->i32[0] < 31 || (v26 = v40->i32[1], v27 = v40->i32[3], v27 - v26 <= 30))
    {
      v9 = CGGlyphBitmapCreate(a2, a4, 0, 0, 0, 0, 0, 0);
    }

    else
    {
      v28 = (v27 + 4095) >> 12;
      v29 = ((v25 + 4095) >> 12) - (v24 >> 12);
      v30 = v28 - (v26 >> 12);
      v31 = v29 + 15;
      v32 = CGGlyphBitmapCreate(a2, a4 | 1u, v24 >> 12, v28, v29, v30, (v29 + 15) & 0xFFFFFFFFFFFFFFF0, 0);
      v9 = v32;
      if (v32)
      {
        v34 = (a4 & 1) != 0 ? 2 : 34;
        aa_cache_render(v23, v34, (v32 + 40), v31 & 0xFFFFFFFFFFFFFFF0, v33);
        if (default_glyph_bitmap_debugging == 1)
        {
          bzero(v41, 0x400uLL);
          __sprintf_chk(v41, 0, 0x400uLL, "*/bitmap_image.%03d.tiff", ++create_bitmap_count);
          CGGlyph8BitBitmapSaveAsImage(v29, v30, v31 & 0xFFFFFFFFFFFFFFF0, v9 + 40, v41);
        }
      }
    }

    v35 = v40;
    if (v40)
    {
      aa_free_edges(v40);
      free(v35);
    }

    v36 = AutohintTransform;
    if (AutohintTransform && atomic_fetch_add_explicit(AutohintTransform, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v36);
    }
  }

  return v9;
}

_DWORD *CGGlyphBitmapCreate(int a1, int a2, int a3, int a4, uint64_t a5, unint64_t a6, unint64_t a7, const void *a8)
{
  v9 = a5;
  if (a7)
  {
    v14 = 0;
    if ((a6 | a5) >> 16)
    {
      return v14;
    }

    v15 = a7;
    if (0xFFFFFFFFFFFFFFD7 / a7 < a6)
    {
      return v14;
    }

    v16 = 2;
    v17 = 1;
    if ((a2 & 0x980) != 0)
    {
      v17 = 2;
    }

    if ((a2 & 2) == 0)
    {
      v16 = v17;
    }

    v18 = 1;
    if ((a2 & 0x401) != 0)
    {
      v18 = v16;
    }

    if (v18 * a5 > a7)
    {
      return 0;
    }
  }

  else
  {
    if ((a6 | a5) >> 16)
    {
      return 0;
    }

    v19 = 2;
    v20 = 1;
    if ((a2 & 0x980) != 0)
    {
      v20 = 2;
    }

    if ((a2 & 2) == 0)
    {
      v19 = v20;
    }

    v21 = 1;
    if ((a2 & 0x401) != 0)
    {
      v21 = v19;
    }

    v15 = (v21 * a5 + 15) & 0x7FFF0;
  }

  v22 = 1;
  v23 = malloc_type_calloc(1uLL, v15 * a6 + 40, 0x10000400A747E1EuLL);
  v14 = v23;
  if (v23)
  {
    *v23 = 1;
    v23[1] = a1;
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = a4;
    v23[5] = v9;
    v23[6] = a6;
    if ((a2 & 0x401) != 0)
    {
      v22 = 16;
      v24 = a8;
      if ((a2 & 2) == 0)
      {
        if ((a2 & 0x980) != 0)
        {
          v22 = 16;
        }

        else
        {
          v22 = 8;
        }
      }
    }

    else
    {
      v24 = a8;
    }

    v23[7] = v22;
    v23[8] = v15;
    v23[9] = atomic_fetch_add_explicit(CGGlyphBitmapCreate_generation, 1u, memory_order_relaxed) + 1;
    if (v24)
    {
      memcpy(v23 + 10, v24, v15 * a6);
    }
  }

  return v14;
}

void aa_cache_render(int32x4_t *a1, int a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v179 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v6 = a1->i32[0];
    v7 = a1->i32[1];
    v8 = a1->i32[2];
    v9 = a1->i32[3];
    v10 = v8 - a1->i32[0] < 31 || v9 - v7 < 31;
    if (!v10 && 24 * a1[11].i32[2] + 44 >= 1)
    {
      v168 = a4;
      v170 = v7;
      v13 = v7 >> 12;
      LODWORD(v169) = v9 + 4095;
      v14 = (v9 + 4095) >> 12;
      v15 = v14 - (v7 >> 12);
      v163 = (v6 >> 12);
      v16 = ((v8 + 4095) >> 12) - v163;
      if (v16 > 1015)
      {
        v20 = malloc_type_malloc(4 * (v16 + 16), 0x100004052888210uLL);
        v171 = v20;
      }

      else
      {
        MEMORY[0x1EEE9AC00](a1, a5);
        v171 = &v161[-v17];
        bzero(&v161[-v17], v18);
        v20 = 0;
      }

      v167 = v20;
      if (v15 > 1015)
      {
        v21 = 8 * (v15 + 16);
        v23 = malloc_type_malloc(v21, 0x80040B8603338uLL);
        v166 = v23;
      }

      else
      {
        v21 = 8 * (v15 + 16);
        MEMORY[0x1EEE9AC00](v20, v19);
        v23 = &v161[-v22];
        bzero(&v161[-v22], v21);
        v166 = 0;
      }

      v162 = v15;
      bzero(v171, 4 * (v16 + 16));
      bzero(v23, v21);
      v31 = (v23 + 32);
      v32 = &v31[-v13];
      v165 = a2;
      v164 = v16;
      if ((a2 & 0x10) != 0 && v16 <= 23 && a1[11].i16[6])
      {
        v172 = &v172;
        v173 = &v172;
        v33 = *a1;
        v34 = vaddq_s32(*a1, xmmword_18439CDB0);
        v174 = vuzp1q_s32(v34, vrev64q_s32(v34));
        v35 = a1[12].i64[0];
        if (v35)
        {
          v36 = v14 + 8;
          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          do
          {
            v37 = (96 * (*(v35 + 12) - 1)) | 0x18;
            do
            {
              v38 = v35 + v37;
              if (!*(v35 + v37 + 47))
              {
                v39 = *(v38 + 16);
                for (i = v173; ; i = i[1])
                {
                  v41 = *(i + 4);
                  if (v39 >= v41)
                  {
                    break;
                  }
                }

                v42 = *(v38 + 28) - *(v38 + 24);
                if (v39 <= v41)
                {
                  if (v42 <= *(i + 17))
                  {
                    *(v38 + 68) = v42;
                    *(v38 + 56) = i[7];
                    i[7] = v38;
                  }

                  else
                  {
                    v44 = *i;
                    v45 = i[1];
                    *i = 0;
                    i[1] = 0;
                    *v38 = v44;
                    *(v38 + 8) = v45;
                    *(v44 + 8) = v38;
                    *v45 = v38;
                    *(v38 + 68) = v42;
                    *(v38 + 56) = i;
                  }
                }

                else
                {
                  v43 = *i;
                  *v38 = *i;
                  *(v38 + 8) = i;
                  *(v43 + 8) = v38;
                  *i = v38;
                  *(v38 + 68) = v42;
                  *(v38 + 56) = 0;
                }
              }

              v10 = v37 < 120;
              v37 -= 96;
            }

            while (!v10);
            v35 = *v35;
          }

          while (v35);
          v46 = v172;
          v47 = v173;
          if (v172 == v173)
          {
            goto LABEL_67;
          }

          v48 = *(v172 + 4);
          v49 = *(v173 + 4);
          if (v48 < v49)
          {
            v50 = 4096;
            v51 = 4096;
            v52 = v173;
            v53 = v172;
            do
            {
              v54 = *(v47 + 4);
              if (v48 >= v54)
              {
                goto LABEL_41;
              }

              v55 = v53;
              while (1)
              {
                v56 = *(v55 + 17);
                if (v56 >= v51)
                {
                  break;
                }

                v55 = *v55;
                if (*(v55 + 4) >= v54)
                {
                  v53 = v55;
                  goto LABEL_41;
                }
              }

              v51 = v56 + 4095;
              v53 = *v55;
              v46 = v55;
              while (1)
              {
LABEL_41:
                if (v49 <= *(v46 + 4))
                {
                  v58 = v52;
                  goto LABEL_46;
                }

                v57 = *(v52 + 17);
                if (v57 >= v50)
                {
                  break;
                }

                v52 = v52[1];
                v49 = *(v52 + 4);
              }

              v50 = v57 + 4095;
              v58 = v52[1];
              v49 = *(v58 + 4);
              v47 = v52;
LABEL_46:
              v48 = *(v53 + 4);
              v52 = v58;
            }

            while (v48 < v49);
            v48 = *(v46 + 4);
          }

          if (*(v46 + 17) < 0x2000)
          {
LABEL_67:
            v63 = 0;
          }

          else
          {
            v59 = v33.i16[0] & 0xFFF;
            v60 = v48 & 0xFFF;
            v62 = v33.i32[0] > 0 || v48 > 4095;
            if (v60 <= v59 && v62)
            {
              v63 = -v60;
            }

            else
            {
              v159 = 2048 - (v33.i16[4] & 0xFFF);
              v63 = 4096 - v60;
              if ((4096 - v60) > v159)
              {
                v160 = !v62;
                if ((v60 - v59) >= (4096 - v60 - v159))
                {
                  v160 = 1;
                }

                if (v160)
                {
                  if (v60 <= 0x800)
                  {
                    v63 = 0;
                  }

                  else
                  {
                    v63 = 2048 - (v33.i16[4] & 0xFFF);
                  }
                }

                else
                {
                  v63 = -v59;
                }
              }
            }
          }

          v70 = a1[12].i64[0];
          if (v70)
          {
            v71 = vdup_n_s32(v63);
            do
            {
              v72 = 96 * (*(v70 + 12) - 1) + 120;
              do
              {
                v73 = v70 + v72;
                v74 = *(v70 + v72 - 72) >> 12;
                if (v74 >= v36)
                {
                  CGPostError("%s; index %d out of bounds; max_index = %d", v24, v25, v26, v27, v28, v29, v30, "aa_cache_adjust_edges");
                }

                else
                {
                  *(v73 - 96) = v32[v74];
                  v32[v74] = (v73 - 96);
                  *(v73 - 80) = vadd_s32(*(v73 - 80), v71);
                }

                v72 -= 96;
              }

              while (v72 >= 120);
              v70 = *v70;
            }

            while (v70);
          }
        }
      }

      else
      {
        v64 = a1[12].i64[0];
        if (v64)
        {
          v65 = v14 + 8;
          do
          {
            v66 = 96 * (*(v64 + 12) - 1);
            do
            {
              v67 = v64 + v66;
              v68 = *(v64 + v66 + 48) >> 12;
              if (v68 >= v65)
              {
                CGPostError("%s; index %d out of bounds; max_index = %d", v24, v25, v26, v27, v28, v29, v30, "aa_cache_edges");
              }

              else
              {
                *(v67 + 24) = v32[v68];
                v32[v68] = (v67 + 24);
              }

              v69 = v66 + 24;
              v66 -= 96;
            }

            while (v69 >= 120);
            v64 = *v64;
          }

          while (v64);
        }
      }

      a1[12].i64[1] = 0;
      a1[13].i64[0] = 0;
      v75 = &a1[12].i64[1];
      v76 = v170 & 0xFFFFF000;
      v170 = v169 & 0xFFFFF000;
      if (v76 < (v169 & 0xFFFFF000))
      {
        v77 = (a3 + (v162 - 1) * v168);
        v78 = &v171[(-(v171 - 2 * v163 + 8 + 2 * v163) & 0x1FLL) + 8 + -2 * v163];
        if ((v165 & 0x20) != 0)
        {
          v79 = 0;
        }

        else
        {
          v79 = 255;
        }

        v169 = -v168;
        v168 = &v78[2 * v163 - 2];
        v80 = v164 >> 2;
        v81 = vdupq_n_s32(v79);
        LODWORD(v171) = v164 & 3;
        do
        {
          v82 = 0;
          v83 = v76;
          v84 = *v31;
          v76 += 4096;
          for (j = *v75; ; j = 0)
          {
            v86 = j;
            if (v84)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    v87 = v84;
                    v84 = *v84;
                    v88 = *(v87 + 22);
                    v89 = v88 == 0xFFFF;
                    if (v88 == 0xFFFF)
                    {
                      v90 = 20;
                    }

                    else
                    {
                      v90 = 16;
                    }

                    v92 = *(v87 + 6);
                    v91 = *(v87 + 7);
                    if (v89)
                    {
                      v93 = *(v87 + 7);
                    }

                    else
                    {
                      v93 = *(v87 + 6);
                    }

                    if (v89)
                    {
                      v94 = 16;
                    }

                    else
                    {
                      v94 = 20;
                    }

                    if (v89)
                    {
                      v95 = *(v87 + 6);
                    }

                    else
                    {
                      v95 = *(v87 + 7);
                    }

                    if (v91 > v76)
                    {
                      *v87 = v82;
                      v82 = v87;
                    }

                    if (v92 == v91)
                    {
                      goto LABEL_146;
                    }

                    v96 = *(v87 + v94);
                    v97 = *(v87 + v90);
                    v98 = v93 - v83;
                    v99 = v95 - v83;
                    if (v96 != v97)
                    {
                      break;
                    }

                    if (v98 >= 0xFFF)
                    {
                      v100 = 4095;
                    }

                    else
                    {
                      v100 = v93 - v83;
                    }

                    if (v98 >= 0)
                    {
                      v101 = v100;
                    }

                    else
                    {
                      v101 = 0;
                    }

                    if (v99 >= 0xFFF)
                    {
                      v102 = 4095;
                    }

                    else
                    {
                      v102 = v95 - v83;
                    }

                    if (v99 >= 0)
                    {
                      v103 = v102;
                    }

                    else
                    {
                      v103 = 0;
                    }

                    v104 = v103 - v101;
                    v105 = &v78[2 * (v96 >> 12)];
                    v106 = v104 * (4096 - (v96 & 0xFFF));
                    v107 = *(v105 + 1) + v104 - (v106 >> 12);
                    *v105 += v106 >> 12;
                    *(v105 + 1) = v107;
                    if (!v84)
                    {
                      goto LABEL_169;
                    }
                  }

                  v109 = v87 + 4;
                  v108 = *(v87 + 8);
                  v110 = *(v109 + 1);
                  if (v95 <= v93)
                  {
                    break;
                  }

                  if ((v98 & 0x80000000) == 0)
                  {
                    if (v99 > 4096)
                    {
                      if (v98 > 0xFFF)
                      {
                        goto LABEL_146;
                      }

LABEL_127:
                      v96 += (v110 * (4096 - v99)) >> 12;
                      v99 = 4096;
                      goto LABEL_128;
                    }

                    goto LABEL_128;
                  }

                  if (v99 >= 1)
                  {
                    v98 = 0;
                    v97 += ((v83 - v93) * v110) >> 12;
                    if (v99 > 0x1000)
                    {
                      goto LABEL_127;
                    }

                    goto LABEL_128;
                  }

LABEL_146:
                  if (!v84)
                  {
                    goto LABEL_169;
                  }
                }

                if (v98 <= 4096)
                {
                  if ((v99 & 0x80000000) == 0)
                  {
                    goto LABEL_128;
                  }

                  if (v98 >= 1)
                  {
LABEL_124:
                    v99 = 0;
                    v96 += (v110 * (v83 - v95)) >> 12;
                    goto LABEL_128;
                  }

                  goto LABEL_146;
                }

                if (v99 > 4095)
                {
                  goto LABEL_146;
                }

                v97 += (v110 * (4096 - v98)) >> 12;
                v98 = 4096;
                if (v99 < 0)
                {
                  goto LABEL_124;
                }

LABEL_128:
                v111 = v97 >> 12;
                if (v97 >> 12 == v96 >> 12)
                {
                  v112 = v96 - v97;
                  if (v96 - v97 < 0)
                  {
                    v112 = v97 - v96;
                  }

                  if (v96 <= v97)
                  {
                    v113 = v97;
                  }

                  else
                  {
                    v113 = v96;
                  }

                  v114 = &v78[2 * ((v97 + v96) >> 13)];
                  v115 = v99 - v98;
                  v116 = ((v112 - 2 * (v113 & 0xFFFu) + 0x2000) * v115) >> 13;
                  LOWORD(v115) = *(v114 + 1) + v115 - v116;
                  *v114 += v116;
                  *(v114 + 1) = v115;
                  if (!v84)
                  {
                    break;
                  }
                }

                else
                {
                  v117 = v96 >> 12;
                  if ((v111 - v117) * (v111 - v117) == 1)
                  {
                    v118 = v96 < v97;
                    if (v96 >= v97)
                    {
                      v119 = v97;
                    }

                    else
                    {
                      v119 = v96;
                    }

                    if (v96 <= v97)
                    {
                      LOWORD(v96) = v97;
                    }

                    if (v118)
                    {
                      v120 = -v108;
                    }

                    else
                    {
                      v120 = v108;
                    }

                    v121 = v99 - v98;
                    v122 = 4096 - (v119 & 0xFFF);
                    v123 = v122 * v120;
                    v124 = &v78[2 * (v119 >> 12)];
                    v125 = (v123 >> 12) * v122;
                    v126 = (v121 - (v123 >> 12)) * (v96 & 0xFFF);
                    v127 = *(v124 + 2);
                    v128 = *(v124 + 1) + v121 - ((v125 >> 13) + (v126 >> 13));
                    *v124 += v125 >> 13;
                    *(v124 + 1) = v128;
                    *(v124 + 2) = v127 + (v126 >> 13);
                    goto LABEL_146;
                  }

                  v129 = v96 < v97;
                  if (v96 < v97)
                  {
                    v130 = v96;
                  }

                  else
                  {
                    v130 = v97;
                  }

                  if (v96 >= v97)
                  {
                    LOWORD(v97) = v96;
                  }

                  if (v129)
                  {
                    v131 = -v108;
                  }

                  else
                  {
                    v131 = v108;
                  }

                  if (v129)
                  {
                    v132 = v117;
                  }

                  else
                  {
                    v132 = v111;
                  }

                  if (v129)
                  {
                    v117 = v111;
                  }

                  v133 = 4096 - (v130 & 0xFFF);
                  v134 = (v133 * v131) >> 12;
                  v135 = &v78[2 * v132];
                  v136 = v134 * v133;
                  v137 = v134 + (v131 >> 1);
                  v139 = *(v135 + 1);
                  v138 = v135 + 2;
                  *v135 += v136 >> 13;
                  *(v135 + 1) = v139 + v137 - (v136 >> 13);
                  v140 = v117 + ~v132;
                  if (v140 < 1)
                  {
                    v143 = 0;
                    v138 = v135;
                  }

                  else
                  {
                    if (v140 != 1)
                    {
                      v141 = v117 - v132;
                      do
                      {
                        v142 = *(v138 + 1);
                        v138 += 2;
                        LOWORD(v137) = v137 + v131;
                        *v138 = v142 + v131;
                        --v141;
                      }

                      while (v141 > 2);
                    }

                    v143 = v131;
                  }

                  v144 = v143 - (((((4096 - (v97 & 0xFFF)) * v131) >> 12) * (4096 - (v97 & 0xFFF))) >> 13);
                  v145 = *(v138 + 2);
                  *(v138 + 1) += v144;
                  *(v138 + 2) = v145 + v99 - (v98 + v137) - v144;
                  if (!v84)
                  {
                    break;
                  }
                }
              }
            }

LABEL_169:
            if (!v86)
            {
              break;
            }

            *v75 = 0;
            v84 = v86;
          }

          *v75 = v82;
          v146 = 0uLL;
          if (v80 < 1)
          {
            v149 = v77;
            v148 = v168;
          }

          else
          {
            v147 = v80;
            v148 = v168;
            v149 = v77;
            do
            {
              v150 = *(v148 + 2);
              *(v148 + 2) = 0;
              v148 += 8;
              v151 = vaddw_s16(vshlq_n_s64(vmovl_s16(v150), 0x20uLL), v150);
              v151.u64[1] = vadd_s32(*&vextq_s8(v151, v151, 8uLL), vdup_lane_s32(*v151.i8, 1));
              v152 = vaddq_s32(v151, v146);
              v153 = vmaxq_s32(vshrq_n_s32(vabsq_s32(v152), 4uLL), 0);
              *v149++ = vuzp1_s8(vmovn_s32(vorrq_s8(v153, vcgtq_s32(v153, v81))), *v81.i8).u32[0];
              v146 = vdupq_laneq_s32(v152, 3);
              --v147;
            }

            while (v147);
          }

          if (v171)
          {
            v154 = v146.i32[0];
            v155 = (v148 + 2);
            v156 = v171;
            do
            {
              v154 += *v155;
              *v155++ = 0;
              if (v154 >= 0)
              {
                v157 = v154;
              }

              else
              {
                v157 = -v154;
              }

              v158 = v157 >> 4;
              if (v158 > v79)
              {
                LOBYTE(v158) = -1;
              }

              *v149 = v158;
              v149 = (v149 + 1);
              --v156;
            }

            while (v156);
          }

          v77 = (v77 + v169);
          ++v31;
        }

        while (v76 < v170);
      }

      if (v167)
      {
        free(v167);
      }

      if (v166)
      {
        free(v166);
      }
    }
  }
}