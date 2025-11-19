uint64_t ripl_Combine(uint64_t a1, uint64_t a2, int a3)
{
  v178 = 0uLL;
  *v177 = 0;
  v6 = CGSBoundsIntersection((a1 + 12), (a2 + 12), &v178);
  if ((v6 & 1) == 0)
  {
    if (a3 || !*(a1 + 20) && !*(a1 + 24))
    {
      return 0;
    }

    goto LABEL_155;
  }

  v10 = *(&v178 + 1);
  v11 = DWORD2(v178);
  v176 = DWORD2(v178);
  v12 = HIDWORD(v178);
  v175 = HIDWORD(v178);
  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = *(a2 + 72);
    if (v14)
    {
LABEL_4:
      v15 = *(a2 + 12) - *(a1 + 12);
      v17 = *(a1 + 20);
      v16 = *(a1 + 24);
      v18 = v16 + *(a1 + 16) - (*(a2 + 16) + *(a2 + 24));
      v177[0] = v18;
      v177[1] = v15;
      if (a3 >= 0)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

      shape_enum_clip_alloc(v6, v7, v14, 1, 1, v19, -v15, -v18, v17, v16);
      if (!v20)
      {
        goto LABEL_155;
      }

      v21 = v20;
      if (!shape_enum_clip_next(v20, &v177[1], v177, &v176, &v175))
      {
LABEL_13:
        free(v21);
        goto LABEL_14;
      }

      if (a3 < 0 || v176 != *(a1 + 20) || v175 != *(a1 + 24))
      {
        do
        {
          CGBlt_fillBytes(v176, v175, 0, (*(a1 + 56) + v177[1] + (*(a1 + 48) * v177[0])), *(a1 + 48));
        }

        while (shape_enum_clip_next(v21, &v177[1], v177, &v176, &v175));
        goto LABEL_13;
      }

LABEL_153:
      v134 = v21;
LABEL_154:
      free(v134);
      goto LABEL_155;
    }

    v42 = *(a2 + 64);
    if (v42)
    {
      goto LABEL_38;
    }

    v78 = *(a2 + 56);
    if (v78)
    {
      v79 = HIDWORD(v178);
      goto LABEL_87;
    }

    if (*(a1 + 20) != *(&v178 + 1))
    {
      v127 = v178 - *(a1 + 12);
      v88 = *(a1 + 16) + *(a1 + 24) - DWORD1(v178) - HIDWORD(v178);
      v177[0] = v88;
      v177[1] = v127;
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      v98 = *(a1 + 48);
      v99 = (v13 + v127 + (v98 * v88));
      v93 = DWORD2(v178);
      v95 = HIDWORD(v178);
      goto LABEL_111;
    }

LABEL_140:
    if ((a3 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_155;
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    v25 = *(a2 + 72);
    if (v25)
    {
      v174 = 0;
      goto LABEL_25;
    }

    v55 = *(a2 + 64);
    if (v55)
    {
LABEL_65:
      v66 = *(a2 + 12);
      v67 = *(a2 + 16);
      if (v178 == v66)
      {
        v68 = v55 & 0xFF000000;
      }

      else
      {
        v68 = 0;
      }

      v69 = v55;
      if (DWORD1(v178) != v67)
      {
        v69 = 0;
      }

      if (v178 + DWORD2(v178) == *(a2 + 20) + v66)
      {
        v70 = v55 & 0xFF00;
      }

      else
      {
        v70 = 0;
      }

      v71 = DWORD1(v178) + HIDWORD(v178);
      if (DWORD1(v178) + HIDWORD(v178) == *(a2 + 24) + v67)
      {
        v72 = v55 & 0xFF0000;
      }

      else
      {
        v72 = 0;
      }

      v73 = v69 | v68 | v70 | v72;
      if (!v73)
      {
        return 1;
      }

      if (a3 < 0)
      {
        v173 = 0;
        v128 = v178 - *(a1 + 12);
        v129 = *(a1 + 24);
        v130 = *(a1 + 16) - v71 + v129;
        v177[0] = v130;
        v177[1] = v128;
        if (v68)
        {
          v177[1] = ++v128;
          LODWORD(v11) = DWORD2(v178) - 1;
        }

        if (v72)
        {
          v177[0] = ++v130;
          v12 = HIDWORD(v178) - 1;
        }

        shape_combine(0xFFFFFFFFLL, 0, 0, *(a1 + 20), v129, v24, v128, v130, v11 - (v70 != 0) + v128, v12 - (v69 != 0) + v130, 0);
        if (!v131)
        {
          goto LABEL_155;
        }

        v21 = v131;
        v132 = shape_bounds(v131, &v177[1], v177, &v173 + 1, &v173);
        if (v132)
        {
          v34 = v132;
          v35 = v173;
          v133 = *(a1 + 24) - v173 + *(a1 + 16);
          v37 = v177[1];
          *(a1 + 12) += v177[1];
          *(a1 + 16) = v133;
          v38 = HIDWORD(v173);
LABEL_28:
          v39 = v177[0];
          v40 = v35 - v177[0];
          *(a1 + 20) = v38 - v37;
          *(a1 + 24) = v40;
          v41 = *(a1 + 72);
          if (v41 && v41 != &the_empty_shape)
          {
            free(v41);
          }

          if (v34 == 9)
          {
            if (v21 == &the_empty_shape)
            {
              goto LABEL_17;
            }

            v22 = v21;
LABEL_16:
            free(v22);
LABEL_17:
            *(a1 + 72) = 0;
LABEL_18:
            *(a1 + 64) = 0;
            return 1;
          }

          if (v37 | v39)
          {
            *(a1 + 72) = shape_offset(v41, v21, -v37, -v39);
            *(a1 + 64) = 4 * v34;
            if (v21 != &the_empty_shape)
            {
              free(v21);
            }

            return 1;
          }

          *(a1 + 72) = v21;
          v126 = 4 * v34;
LABEL_200:
          *(a1 + 64) = v126;
          return 1;
        }

LABEL_152:
        if (v21 == &the_empty_shape)
        {
          goto LABEL_155;
        }

        goto LABEL_153;
      }

      v173 = 0;
      v74 = v178 - *(a1 + 12);
      v177[0] = *(a1 + 16) - v71 + *(a1 + 24);
      v177[1] = v74;
      shape_enum_clip_alloc(v6, v7, v24, 1, 1, 1, v74, v177[0], SDWORD2(v178), SHIDWORD(v178));
      if (!v75)
      {
        goto LABEL_155;
      }

      v76 = v75;
      if (shape_enum_clip_next(v75, &v177[1], v177, &v173 + 1, &v173))
      {
        if (v173 == __PAIR64__(v11, v12))
        {
          free(v76);
          v77 = *(a1 + 72);
          if (v77 && v77 != &the_empty_shape)
          {
            free(v77);
          }

          *(a1 + 72) = 0;
          *(a1 + 12) = v178;
          *(a1 + 20) = v11;
          *(a1 + 24) = v12;
LABEL_234:
          *(a1 + 64) = v73;
          return 1;
        }

        v158 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if ((v158 * v12 + 4) >> 31)
        {
          v159 = 0xFFFFFFFFLL;
        }

        else
        {
          v159 = (v158 * v12 + 19) & 0xFFFFFFF0;
        }

        if ((v159 & 0x80000000) == 0)
        {
          v160 = malloc_type_calloc(1uLL, v159, 0x533C4728uLL);
          *(a1 + 56) = v160;
          if (v160)
          {
            *(a1 + 48) = v158;
            v161 = *(a1 + 28) & 0xFFFFFFFD;
            *(a1 + 24) = v12;
            *(a1 + 28) = v161;
            *(a1 + 12) = v178;
            *(a1 + 20) = v11;
            do
            {
              CGBlt_fillBytes(SHIDWORD(v173), v173, -1, (*(a1 + 56) + v177[0] * v158 + v177[1]), (v11 + 3) & 0xFFFFFFFC);
            }

            while (shape_enum_clip_next(v76, &v177[1], v177, &v173 + 1, &v173));
            CGSCombineMask(*(a1 + 56), (v11 + 3) & 0xFFFFFFFC, *(a1 + 56), (v11 + 3) & 0xFFFFFFFC, v11, v12, v73);
            free(v76);
            v162 = *(a1 + 72);
            if (v162 && v162 != &the_empty_shape)
            {
              free(v162);
            }

            v73 = 0;
            *(a1 + 72) = 0;
            goto LABEL_234;
          }
        }
      }

      v134 = v76;
      goto LABEL_154;
    }

    if (*(a2 + 56))
    {
      v104 = HIDWORD(v178);
      goto LABEL_126;
    }

    if (*(a1 + 20) == *(&v178 + 1))
    {
      goto LABEL_140;
    }

LABEL_244:
    v25 = 0;
LABEL_25:
    v26 = *(a2 + 16);
    v27 = *(a2 + 12) - *(a1 + 12);
    v28 = *(a1 + 20);
    v29 = *(a1 + 24);
    v30 = v29 + *(a1 + 16);
    v31 = *(a2 + 20);
    v177[0] = v30 - (v26 + *(a2 + 24));
    v177[1] = v27;
    shape_combine((a3 >> 31), 0, 0, v28, v29, v24, v27, v177[0], v31 + v27, v30 - v26, v25);
    if (!v32)
    {
      goto LABEL_155;
    }

    v21 = v32;
    v33 = shape_bounds(v32, &v177[1], v177, &v174 + 1, &v174);
    if (v33)
    {
      v34 = v33;
      v35 = v174;
      v36 = *(a1 + 24) - v174 + *(a1 + 16);
      v37 = v177[1];
      *(a1 + 12) += v177[1];
      *(a1 + 16) = v36;
      v38 = HIDWORD(v174);
      goto LABEL_28;
    }

    goto LABEL_152;
  }

  v55 = *(a1 + 64);
  v25 = *(a2 + 72);
  if (!v55)
  {
    if (v25)
    {
      goto LABEL_25;
    }

    v55 = *(a2 + 64);
    if (!v55)
    {
      if (*(a2 + 56))
      {
        shape_alloc_bounds(v6, 0, 0, *(a1 + 20), *(a1 + 24));
        v24 = v6;
        v104 = HIDWORD(v178);
LABEL_126:
        v105 = v178;
        v106 = v178 - *(a1 + 12);
        v107 = v104 + DWORD1(v178);
        v171 = *(a1 + 24) + *(a1 + 16) - (v104 + DWORD1(v178));
        v172 = v106;
        v108 = *(a2 + 12);
        v167 = *(a2 + 24);
        v169 = *(a2 + 16);
        shape_enum_clip_alloc(v6, v7, v24, 1, 1, 0, v106, v171, v11, v12);
        if (v109)
        {
          v110 = v109;
          v166 = v108;
          v111 = (v11 + 3) & 0xFFFFFFFC;
          if ((v111 * v12 + 4) >> 31)
          {
            v112 = 0xFFFFFFFFLL;
          }

          else
          {
            v112 = (v111 * v12 + 19) & 0xFFFFFFF0;
          }

          if ((v112 & 0x80000000) == 0)
          {
            v113 = malloc_type_malloc(v112, 0x7677FB6DuLL);
            *(a1 + 56) = v113;
            if (v113)
            {
              v114 = v105 - v166;
              v115 = v169 - v107 + v167;
              *(a1 + 48) = v111;
              v116 = *(a1 + 28) & 0xFFFFFFFD;
              *(a1 + 24) = v12;
              *(a1 + 28) = v116;
              *(a1 + 12) = v178;
              *(a1 + 20) = v11;
              while (1)
              {
                v117 = shape_enum_clip_next(v110, &v172, &v171, &v176, &v175);
                if (!v117)
                {
                  break;
                }

                v121 = *(a1 + 56) + v171 * v111;
                if (v117 < 0)
                {
                  CGBlt_fillBytes(v176, v175, 0, (v121 + v172), (v11 + 3) & 0xFFFFFFFC);
                }

                else
                {
                  v122 = *(a2 + 48);
                  v123 = (*(a2 + 56) + v172 + v114 + (v122 * (v171 + v115)));
                  v124 = (v121 + v172);
                  v125 = (v11 + 3) & 0xFFFFFFFC;
                  if (a3 < 0)
                  {
                    CGBlt_combineBytes(v176, v175, v123, v124, v122, v125, 1280, v118, v119, v120);
                  }

                  else
                  {
                    CGBlt_copyBytes(v176, v175, v123, v124, v122, v125);
                  }
                }
              }

              free(v110);
              v22 = *(a1 + 72);
              if (v22 != v24 && v24 != 0 && v24 != &the_empty_shape)
              {
                free(v24);
                v22 = *(a1 + 72);
              }

              if (!v22 || v22 == &the_empty_shape)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }
          }

          free(v110);
        }

        if (*(a1 + 72) == v24 || !v24 || v24 == &the_empty_shape)
        {
          goto LABEL_155;
        }

        v134 = v24;
        goto LABEL_154;
      }

      if ((a3 & 0x80000000) == 0)
      {
        *(a1 + 12) = v178;
        return 1;
      }

      goto LABEL_244;
    }

    if (a3 < 0)
    {
      goto LABEL_65;
    }

    v100 = (a2 + 12);
    goto LABEL_214;
  }

  if (v25)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v168 = *(&v178 + 1);
      v56 = ripl_Containment(&v178, (a1 + 12), v55);
      v57 = (v11 + 3) & 0xFFFFFFFC;
      if ((v12 * v57 + 4) >> 31)
      {
        v58 = 0xFFFFFFFFLL;
      }

      else
      {
        v58 = (v12 * v57 + 19) & 0xFFFFFFF0;
      }

      if ((v58 & 0x80000000) != 0)
      {
        goto LABEL_155;
      }

      v59 = v56;
      v60 = malloc_type_malloc(v58, 0x3D4C22A3uLL);
      *(a1 + 56) = v60;
      if (!v60)
      {
        goto LABEL_155;
      }

      *(a1 + 48) = v57;
      *(a1 + 28) &= ~2u;
      *(a1 + 12) = v178;
      *(a1 + 20) = v168;
      v6 = memset(v60, 255, v58);
      if (!v59)
      {
        goto LABEL_222;
      }

      v61 = *(a1 + 56);
      v62 = (v11 + 3) & 0xFFFFFFFC;
      v63 = v11;
      v64 = v12;
      v65 = v59;
LABEL_221:
      v6 = CGSCombineMask(0, 0, v61, v62, v63, v64, v65);
LABEL_222:
      *(a1 + 64) = 0;
      v14 = *(a2 + 72);
      goto LABEL_4;
    }

LABEL_215:
    v155 = (*(a1 + 20) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if ((v155 * *(a1 + 24) + 4) >> 31)
    {
      v156 = 0xFFFFFFFFLL;
    }

    else
    {
      v156 = (v155 * *(a1 + 24) + 19) & 0xFFFFFFF0;
    }

    if ((v156 & 0x80000000) != 0)
    {
      goto LABEL_155;
    }

    v157 = malloc_type_malloc(v156, 0xD837E9E9uLL);
    *(a1 + 56) = v157;
    if (!v157)
    {
      goto LABEL_155;
    }

    *(a1 + 48) = v155;
    *(a1 + 28) &= ~2u;
    memset(v157, 255, v156);
    v61 = *(a1 + 56);
    v63 = *(a1 + 20);
    v64 = *(a1 + 24);
    v65 = *(a1 + 64);
    v62 = v155;
    goto LABEL_221;
  }

  v101 = *(a2 + 64);
  if (v101)
  {
    if (a3 < 0)
    {
      v144 = (*(a1 + 20) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      if ((v144 * *(a1 + 24) + 4) >> 31)
      {
        v145 = 0xFFFFFFFFLL;
      }

      else
      {
        v145 = (v144 * *(a1 + 24) + 19) & 0xFFFFFFF0;
      }

      if ((v145 & 0x80000000) != 0)
      {
        goto LABEL_155;
      }

      v146 = malloc_type_malloc(v145, 0x584C6DC5uLL);
      *(a1 + 56) = v146;
      if (!v146)
      {
        goto LABEL_155;
      }

      *(a1 + 48) = v144;
      *(a1 + 28) &= ~2u;
      memset(v146, 255, v145);
      CGSCombineMask(0, 0, *(a1 + 56), v144, *(a1 + 20), *(a1 + 24), *(a1 + 64));
      *(a1 + 64) = 0;
      v42 = *(a2 + 64);
      v10 = *(&v178 + 1);
LABEL_38:
      v43 = v42 & 0xFF000000;
      v44 = *(a2 + 12);
      v45 = *(a2 + 16);
      if (v178 != v44)
      {
        v43 = 0;
      }

      v46 = v42;
      if (DWORD1(v178) != v45)
      {
        v46 = 0;
      }

      if (LODWORD(v10) + v178 == *(a2 + 20) + v44)
      {
        v47 = v42 & 0xFF00;
      }

      else
      {
        v47 = 0;
      }

      v48 = v42 & 0xFF0000;
      if (HIDWORD(v10) + DWORD1(v178) == *(a2 + 24) + v45)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = v178 - *(a1 + 12);
      v51 = *(a1 + 16) - (HIDWORD(v10) + DWORD1(v178)) + *(a1 + 24);
      v177[0] = v51;
      v177[1] = v50;
      if ((a3 & 0x80000000) == 0)
      {
        v52 = v46 | v43 | v47 | v49;
        if (v52)
        {
          v53 = *(a1 + 48);
          v54 = (*(a1 + 56) + v50 + (v53 * v51));
          CGSCombineMask(v54, v53, v54, v53, v11, v12, v52);
        }

        if (*(a1 + 20) == v11 && *(a1 + 24) == v12)
        {
LABEL_14:
          v22 = *(a1 + 72);
          if (!v22 || v22 == &the_empty_shape)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        goto LABEL_93;
      }

      v93 = v11 - (v43 != 0) - (v47 != 0);
      v94 = v46 != 0;
      if (v93 < 1)
      {
        goto LABEL_14;
      }

      v95 = v12 - (v49 != 0) - v94;
      if (v95 < 1)
      {
        goto LABEL_14;
      }

      if (v49)
      {
        v96 = v51 + 1;
      }

      else
      {
        v96 = v51;
      }

      if (v43)
      {
        v97 = v50 + 1;
      }

      else
      {
        v97 = v50;
      }

      v98 = *(a1 + 48);
      v99 = (*(a1 + 56) + (v98 * v96) + v97);
LABEL_111:
      CGBlt_fillBytes(v93, v95, 0, v99, v98);
      goto LABEL_14;
    }

    v102 = v178;
    if (v178 == *(a1 + 12))
    {
      v103 = HIBYTE(v55);
      if (v178 == *(a2 + 12))
      {
        v103 = 255 - (((HIBYTE(v101) ^ 0xFF) * (v103 ^ 0xFF) + (((HIBYTE(v101) ^ 0xFF) * (v103 ^ 0xFF)) >> 8) + 1) >> 8);
      }
    }

    else
    {
      *(a1 + 12) = v178;
      v103 = HIBYTE(v101);
    }

    v147 = DWORD1(v178);
    if (DWORD1(v178) == *(a1 + 16))
    {
      v148 = v55;
      if (DWORD1(v178) == *(a2 + 16))
      {
        v148 = 255 - (((v101 ^ 0xFF) * (v55 ^ 0xFF) + (((v101 ^ 0xFF) * (v55 ^ 0xFFu)) >> 8) + 1) >> 8);
      }
    }

    else
    {
      *(a1 + 16) = DWORD1(v178);
      v148 = v101;
    }

    if (v11 == *(a1 + 20))
    {
      v149 = BYTE1(v55);
      if (v102 + v11 == *(a2 + 20) + *(a2 + 12))
      {
        v149 = 255 - (((BYTE1(v101) ^ 0xFF) * (BYTE1(v55) ^ 0xFF) + (((BYTE1(v101) ^ 0xFF) * (BYTE1(v55) ^ 0xFFu)) >> 8) + 1) >> 8);
      }
    }

    else
    {
      *(a1 + 20) = v11;
      v149 = BYTE1(v101);
    }

    v150 = BYTE2(v101);
    if (v12 == *(a1 + 24))
    {
      v151 = BYTE2(v55);
      if (v147 + v12 == *(a2 + 24) + *(a2 + 16))
      {
        v151 = 255 - (((v150 ^ 0xFF) * (BYTE2(v55) ^ 0xFF) + (((v150 ^ 0xFF) * (BYTE2(v55) ^ 0xFF)) >> 8) + 1) >> 8);
      }
    }

    else
    {
      *(a1 + 24) = v12;
      v151 = v150;
    }

    v126 = (v103 << 24) | (v151 << 16) | (v149 << 8) | v148;
    goto LABEL_200;
  }

  if (!*(a2 + 56))
  {
    if (a3 < 0)
    {
      goto LABEL_215;
    }

    v100 = (a1 + 12);
LABEL_214:
    v154 = ripl_Containment(&v178, v100, v55);
    *(a1 + 12) = v178;
    *(a1 + 64) = v154;
    return 1;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v170 = *(&v178 + 1);
    v137 = ripl_Containment(&v178, (a1 + 12), v55);
    v138 = (v11 + 3) & 0xFFFFFFFC;
    if ((v12 * v138 + 4) >> 31)
    {
      v139 = 0xFFFFFFFFLL;
    }

    else
    {
      v139 = (v12 * v138 + 19) & 0xFFFFFFF0;
    }

    if ((v139 & 0x80000000) == 0)
    {
      v140 = malloc_type_malloc(v139, 0x6F591124uLL);
      *(a1 + 56) = v140;
      if (v140)
      {
        *(a1 + 48) = v138;
        *(a1 + 28) &= ~2u;
        *&v141 = v178;
        v142 = DWORD1(v178);
        v143 = v178;
        *(&v141 + 1) = v170;
        *(a1 + 12) = v141;
        CGBlt_copyBytes(v11, v12, (*(a2 + 56) + (*(a2 + 48) * (*(a2 + 16) + *(a2 + 24) - HIDWORD(v178) - v142)) - *(a2 + 12) + v143), v140, *(a2 + 48), (v11 + 3) & 0xFFFFFFFC);
        if (v137)
        {
          CGSCombineMask(*(a1 + 56), *(a1 + 48), *(a1 + 56), *(a1 + 48), v11, v12, v137);
        }

        goto LABEL_18;
      }
    }

    goto LABEL_155;
  }

  v163 = (*(a1 + 20) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if ((v163 * *(a1 + 24) + 4) >> 31)
  {
    v164 = 0xFFFFFFFFLL;
  }

  else
  {
    v164 = (v163 * *(a1 + 24) + 19) & 0xFFFFFFF0;
  }

  if ((v164 & 0x80000000) == 0)
  {
    v165 = malloc_type_malloc(v164, 0xBAD74AE6uLL);
    *(a1 + 56) = v165;
    if (v165)
    {
      *(a1 + 48) = v163;
      *(a1 + 28) &= ~2u;
      memset(v165, 255, v164);
      CGSCombineMask(0, 0, *(a1 + 56), v163, *(a1 + 20), *(a1 + 24), *(a1 + 64));
      *(a1 + 64) = 0;
      v79 = HIDWORD(v178);
      v78 = *(a2 + 56);
      v13 = *(a1 + 56);
LABEL_87:
      v80 = v178 - *(a2 + 12);
      v81 = v79 + DWORD1(v178);
      v82 = *(a2 + 48);
      v83 = v78 + (*(a2 + 24) + *(a2 + 16) - v81) * v82;
      v84 = v178 - *(a1 + 12);
      v177[0] = *(a1 + 16) - v81 + *(a1 + 24);
      v177[1] = v84;
      v85 = *(a1 + 48);
      v86 = v13 + v85 * v177[0];
      if (a3 >= 0)
      {
        v87 = 256;
      }

      else
      {
        v87 = 1024;
      }

      CGBlt_combineBytes(v11, v12, (v83 + v80), (v86 + v84), v82, v85, v87, v10, v8, v9);
      if (a3 < 0)
      {
        goto LABEL_14;
      }

      LODWORD(v11) = v176;
      if (*(a1 + 20) == v176)
      {
        LODWORD(v11) = *(a1 + 20);
        if (*(a1 + 24) == v175)
        {
          goto LABEL_14;
        }
      }

LABEL_93:
      v88 = v177[0];
LABEL_94:
      if (v177[1] >= 1)
      {
        CGBlt_fillBytes(v177[1], v175, 0, (*(a1 + 56) + (*(a1 + 48) * v88)), *(a1 + 48));
      }

      if (v88 >= 1)
      {
        bzero(*(a1 + 56), (*(a1 + 48) * v88));
      }

      v89 = *(a1 + 20);
      if (v89 > v11 + v177[1])
      {
        CGBlt_fillBytes(v89 - (v11 + v177[1]), v175, 0, (*(a1 + 56) + (*(a1 + 48) * v88) + v11 + v177[1]), *(a1 + 48));
      }

      v90 = *(a1 + 24);
      v91 = __OFSUB__(v90, v175 + v88);
      v92 = v90 - (v175 + v88);
      if (!((v92 < 0) ^ v91 | (v92 == 0)))
      {
        bzero((*(a1 + 56) + (*(a1 + 48) * (v175 + v88))), (*(a1 + 48) * v92));
      }

      goto LABEL_14;
    }
  }

LABEL_155:
  v135 = *(a1 + 56);
  if (v135 && (*(a1 + 28) & 2) == 0)
  {
    free(v135);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  v136 = *(a1 + 72);
  if (v136 && v136 != &the_empty_shape)
  {
    free(v136);
  }

  result = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  return result;
}

_DWORD *W8_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    v13 = v11;
    if (v11 >= a6)
    {
      v13 = a6;
      if (v10 > a6)
      {
        v13 = v10;
      }
    }

    v14 = v13 * v9[2];
    if (a5)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == 4)
    {
      v25 = a5[4];
      v26 = *a5;
      v27 = v11;
      if (v25 <= v11)
      {
        v27 = a5[4];
        if (v25 < v10)
        {
          v27 = v10;
        }
      }

      v29 = a5[1];
      v28 = a5[2];
      v30 = v11;
      if (v26 <= v11)
      {
        v30 = *a5;
        if (v26 < v10)
        {
          v30 = v10;
        }
      }

      if (v29 < v10)
      {
        v31 = v10;
      }

      else
      {
        v31 = a5[1];
      }

      if (v29 > v11)
      {
        v31 = v11;
      }

      if (v28 < v10)
      {
        v32 = v10;
      }

      else
      {
        v32 = a5[2];
      }

      v33 = v28 <= v11;
      v34 = v11 - (v9[4] * v30);
      if (v33)
      {
        v35 = v32;
      }

      else
      {
        v35 = v11;
      }

      v36 = ((v34 - (v9[5] * v31)) - (v9[6] * v35)) - v27;
      if (v36 >= v10)
      {
        v24 = v12 + (v36 * v14);
      }

      else
      {
        v24 = v10;
      }
    }

    else
    {
      if (v15 == 3)
      {
        v19 = a5[1];
        v20 = v11;
        if (*a5 <= v11)
        {
          v20 = *a5;
          if (*a5 < v10)
          {
            v20 = v10;
          }
        }

        v21 = a5[2];
        v22 = v11;
        if (v19 <= v11)
        {
          v22 = a5[1];
          if (v19 < v10)
          {
            v22 = v10;
          }
        }

        if (v21 < v10)
        {
          v23 = v10;
        }

        else
        {
          v23 = a5[2];
        }

        if (v21 > v11)
        {
          v23 = v11;
        }

        v18 = ((v22 * v9[5]) + (v9[4] * v20)) + (v9[6] * v23);
      }

      else
      {
        v16 = 0;
        if (v15 != 1)
        {
          goto LABEL_53;
        }

        if (*a5 < v10)
        {
          v17 = v10;
        }

        else
        {
          v17 = *a5;
        }

        if (*a5 <= v11)
        {
          v18 = v17;
        }

        else
        {
          v18 = v11;
        }
      }

      v24 = v12 + (v18 * v14);
    }

    v16 = v24;
LABEL_53:
    v37 = (v12 + v14);
    *a2 = xmmword_18439CE60;
    a2[6] = 0;
    *(a2 + 2) = 1;
    a2[12] = v16 | (v16 << 8) | ((v16 | (v16 << 8)) << 16);
    *(a2 + 4) = a2 + 12;
    if (v37 > 254)
    {
      *(a2 + 5) = 0;
    }

    else
    {
      a2[13] = v37 | (v37 << 8) | ((v37 | (v37 << 8)) << 16);
      *(a2 + 5) = a2 + 13;
    }
  }

  return a2;
}

uint64_t W8_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v599 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 96);
  v7 = *(v3 + 48);
  v8 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v6 == 0) + 4 * (v7 == 0));
  if (v8 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v3;
  v11 = *(v3 + 4);
  v12 = (v11 - 1);
  if (v11 < 1)
  {
    return 0;
  }

  v13 = *(v3 + 8);
  v14 = (v13 - 1);
  if (v13 < 1)
  {
    return 0;
  }

  v15 = *(v3 + 136);
  if ((*v3 & 0xFF0000) == 0x50000 || !v15)
  {
    v17 = *v3 & 0xFF00;
    v535 = v3;
    v536 = v8;
    if (v17 == 1024)
    {
      v598[0] = *(v3 + 4);
      v588[0] = v13;
      v18 = *(v3 + 28);
      if (v6)
      {
        v19 = *v6;
      }

      else
      {
        v19 = 255;
      }

      v31 = *(v3 + 40);
      v32 = **(v3 + 88);
      v34 = *(v3 + 12);
      v33 = *(v3 + 16);
      if (v7)
      {
        *v564 = *(v3 + 32);
        v562 = (v7 + v564[0] * v33 + v34);
        v35 = 1;
      }

      else
      {
        v562 = 0;
        *v564 = 0;
        v35 = 0;
      }

      v558 = v35;
      v554 = ~v19;
      v44 = v31 + v33 * v18 + v34;
      v556 = *(v3 + 28);
      v560 = v44;
      if (!v15)
      {
        if (v7)
        {
          v48 = v11;
        }

        else
        {
          v48 = 0;
        }

        v47 = v562;
        v583 = 0;
        v585 = *v564 - v48;
        v49 = (v31 + v33 * v18 + v34);
        v50 = v11;
        goto LABEL_908;
      }

      shape_enum_clip_alloc(v11, v3, v15, 1, 1, 1, *(v3 + 104), *(v3 + 108), v11, v13);
      v46 = v45;
      v47 = v562;
      v585 = *v564;
      if (v45)
      {
        while (shape_enum_clip_next(v46, &v587 + 1, &v587, v598, v588))
        {
          v583 = v46;
          v49 = (v44 + v587 * v18 + SHIDWORD(v587));
          v50 = v598[0];
          if (v7)
          {
            v47 = &v562[v564[0] * v587 + SHIDWORD(v587)];
          }

          v521 = v585;
          if (v7)
          {
            v521 = *v564 - v598[0];
          }

          v585 = v521;
          LODWORD(v11) = v598[0];
LABEL_908:
          v44 = v18 - v50;
          switch(v8)
          {
            case 0:
              v419 = v44 + v11;
              v420 = v588[0];
              v421 = v588[0] - 1;
              if (v419 >= 0)
              {
                LODWORD(v422) = v419;
              }

              else
              {
                v422 = -v419;
              }

              v423 = &v49[(v419 * v421) & (v419 >> 63)];
              v424 = v11;
              CGBlt_fillBytes(v11, v588[0], 0, v423, v422);
              if (!v7)
              {
                goto LABEL_1157;
              }

              v425 = v585 + v424;
              v47 += (v425 * v421) & (v425 >> 63);
              if (v425 >= 0)
              {
                v426 = v585 + v424;
              }

              else
              {
                v426 = -v425;
              }

              v427 = v424;
              v428 = v420;
              v429 = 0;
              goto LABEL_1040;
            case 1:
              v553 = v11;
              v479 = v44 + v11;
              if (v479 < 0)
              {
                v49 += v479 * (v588[0] - 1);
                v479 = -v479;
              }

              v480 = 0;
              v481 = *(v535 + 88);
              if (v481)
              {
                v480 = *v481;
              }

              v482 = v588[0];
              v483 = v11;
              CGBlt_fillBytes(v11, v588[0], v480, v49, v479);
              if (v7)
              {
                v428 = v482;
                v484 = *(v535 + 96);
                if (!v484)
                {
                  v484 = &PIXELALPHAPLANARCONSTANT_18034;
                }

                v47 += ((v585 + v553) * (v482 - 1)) & ((v585 + v553) >> 63);
                if (v585 + v553 >= 0)
                {
                  v426 = v585 + v553;
                }

                else
                {
                  v426 = -(v585 + v553);
                }

                v429 = *v484;
                v427 = v483;
LABEL_1040:
                v585 = v426;
                CGBlt_fillBytes(v427, v428, v429, v47, v426);
              }

              goto LABEL_1157;
            case 2:
              v454 = 4 * v558;
              if (v7)
              {
                v455 = v32 | (v19 << 24);
                do
                {
                  v456 = v598[0];
                  if (v598[0] >= 4)
                  {
                    v457 = (v598[0] >> 2) + 1;
                    do
                    {
                      v458 = (*v49 | (*v47 << 16)) * v554;
                      v459 = ((v458 + 65537 + ((v458 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v458 + 1 + BYTE1(v458)) >> 8)) + v455;
                      *v49 = v459;
                      *v47 = HIBYTE(v459);
                      v460 = (v49[1] | (v47[1] << 16)) * v554;
                      v461 = ((v460 + 65537 + ((v460 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v460 + 1 + BYTE1(v460)) >> 8)) + v455;
                      v49[1] = v461;
                      v47[1] = HIBYTE(v461);
                      v462 = (v49[2] | (v47[2] << 16)) * v554;
                      v463 = ((v462 + 65537 + ((v462 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v462 + 1 + BYTE1(v462)) >> 8)) + v455;
                      v49[2] = v463;
                      v47[2] = HIBYTE(v463);
                      v464 = (v49[3] | (v47[3] << 16)) * v554;
                      v49[3] = ((v464 + 1 + BYTE1(v464)) >> 8) + v32;
                      v47[3] = (((v464 + 65537 + ((v464 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v464 + 1 + BYTE1(v464)) >> 8)) + v455) >> 24;
                      v49 += 4;
                      v47 += v454;
                      --v457;
                    }

                    while (v457 > 1);
                    v456 = v598[0] & 3;
                  }

                  if (v456 >= 1)
                  {
                    v465 = v456 + 1;
                    do
                    {
                      v466 = (*v49 | (*v47 << 16)) * v554;
                      *v49++ = ((v466 + 1 + BYTE1(v466)) >> 8) + v32;
                      *v47 = (((v466 + 65537 + ((v466 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v466 + 1 + BYTE1(v466)) >> 8)) + v455) >> 24;
                      v47 += v558;
                      --v465;
                    }

                    while (v465 > 1);
                  }

                  v49 += v44;
                  v47 += v585;
                  --v588[0];
                }

                while (v588[0]);
              }

              else
              {
                v527 = vdup_n_s16(v32);
                v528 = vdup_n_s16(v554);
                do
                {
                  v529 = v598[0];
                  if (v598[0] >= 4)
                  {
                    v530 = (v598[0] >> 2) + 1;
                    do
                    {
                      v5.i32[0] = *v49;
                      v531 = vmull_u16(v528, *&vmovl_u8(v5));
                      v5 = vuzp1_s8(vsra_n_u16(v527, vadd_s16(vmovn_s32(vsraq_n_u32(v531, v531, 8uLL)), 0x1000100010001), 8uLL), v527);
                      *v49 = v5.i32[0];
                      v49 += 4;
                      v47 += v454;
                      --v530;
                    }

                    while (v530 > 1);
                    v529 = v598[0] & 3;
                  }

                  if (v529 >= 1)
                  {
                    v532 = v529 + 1;
                    do
                    {
                      *v49 = v32 + ((*v49 * v554 + ((*v49 * v554) >> 8) + 1) >> 8);
                      ++v49;
                      --v532;
                    }

                    while (v532 > 1);
                    v47 += v529 * v558;
                  }

                  v49 += v44;
                  v47 += v585;
                  --v588[0];
                }

                while (v588[0]);
              }

              goto LABEL_1158;
            case 3:
              do
              {
                v469 = v598[0];
                do
                {
                  v470 = *v47;
                  if (v470 == 255)
                  {
                    *v49 = v32;
                    LOBYTE(v470) = v19;
                  }

                  else if (*v47)
                  {
                    v471 = (v32 | (v19 << 16)) * (v470 ^ 0xFF) + 65537 + ((((v32 | (v19 << 16)) * (v470 ^ 0xFF)) >> 8) & 0xFF00FF);
                    *v49 = v32 - BYTE1(v471);
                    v470 = ((v32 | (v19 << 24)) - (v471 & 0xFF000000 | BYTE1(v471))) >> 24;
                  }

                  else
                  {
                    *v49 = 0;
                  }

                  *v47 = v470;
                  ++v49;
                  v47 += v558;
                  --v469;
                }

                while (v469);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              goto LABEL_1158;
            case 4:
              do
              {
                v440 = v598[0];
                do
                {
                  v441 = *v47;
                  if ((v441 ^ 0xFF) == 0xFF)
                  {
                    *v49 = v32;
                    LOBYTE(v442) = v19;
                  }

                  else if (v441 != 0xFF)
                  {
                    v443 = (v32 | (v19 << 16)) * v441 + 65537 + ((((v32 | (v19 << 16)) * v441) >> 8) & 0xFF00FF);
                    *v49 = v32 - BYTE1(v443);
                    v442 = ((v32 | (v19 << 24)) - (v443 & 0xFF000000 | BYTE1(v443))) >> 24;
                  }

                  else
                  {
                    LOBYTE(v442) = 0;
                    *v49 = 0;
                  }

                  *v47 = v442;
                  ++v49;
                  v47 += v558;
                  --v440;
                }

                while (v440);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              goto LABEL_1158;
            case 5:
              do
              {
                v489 = v598[0];
                do
                {
                  v490 = (v32 | (v19 << 16)) * *v47 + (*v49 | (*v47 << 16)) * v554;
                  v491 = v490 + 65537 + ((v490 >> 8) & 0xFF00FF);
                  *v49++ = BYTE1(v491);
                  *v47 = HIBYTE(v491);
                  v47 += v558;
                  --v489;
                }

                while (v489);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              goto LABEL_1158;
            case 6:
              do
              {
                v496 = v598[0];
                do
                {
                  v497 = *v47;
                  if (v497 != 0xFF)
                  {
                    if (~v497 == 255)
                    {
                      *v49 = v32;
                      LOBYTE(v498) = v19;
                    }

                    else
                    {
                      v499 = (v32 | (v19 << 16)) * ~v497 + 65537 + ((((v32 | (v19 << 16)) * ~v497) >> 8) & 0xFF00FF);
                      v500 = (*v49 | (v497 << 24)) + (v499 & 0xFF000000 | BYTE1(v499));
                      *v49 = v500;
                      v498 = HIBYTE(v500);
                    }

                    *v47 = v498;
                  }

                  ++v49;
                  v47 += v558;
                  --v496;
                }

                while (v496);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              goto LABEL_1158;
            case 7:
              if (v7)
              {
                do
                {
                  v472 = v598[0];
                  do
                  {
                    v473 = *v49;
                    v474 = *v47;
                    v475 = (v473 | (v474 << 16)) * v554 + 65537 + ((((v473 | (v474 << 16)) * v554) >> 8) & 0xFF00FF);
                    v476 = (v473 | (v474 << 24)) - (v475 & 0xFF000000 | BYTE1(v475));
                    *v49++ = v476;
                    *v47 = HIBYTE(v476);
                    v47 += v558;
                    --v472;
                  }

                  while (v472);
                  v49 += v44;
                  v47 += v585;
                  --v588[0];
                }

                while (v588[0]);
              }

              else
              {
                do
                {
                  v477 = v598[0];
                  v478 = v598[0] - 1;
                  do
                  {
                    *v49 -= (*v49 * v554 + ((*v49 * v554) >> 8) + 1) >> 8;
                    ++v49;
                    --v477;
                  }

                  while (v477);
                  v49 += v44;
                  v47 += v585 + v558 + v558 * v478;
                  --v588[0];
                }

                while (v588[0]);
              }

              goto LABEL_1158;
            case 8:
              if (v7)
              {
                do
                {
                  v506 = v598[0];
                  do
                  {
                    v507 = *v49;
                    v508 = *v47;
                    v509 = (v507 | (v508 << 16)) * v19 + 65537 + ((((v507 | (v508 << 16)) * v19) >> 8) & 0xFF00FF);
                    v510 = (v507 | (v508 << 24)) - (v509 & 0xFF000000 | BYTE1(v509));
                    *v49++ = v510;
                    *v47 = HIBYTE(v510);
                    v47 += v558;
                    --v506;
                  }

                  while (v506);
                  v49 += v44;
                  v47 += v585;
                  --v588[0];
                }

                while (v588[0]);
              }

              else
              {
                do
                {
                  v511 = v598[0];
                  v512 = v598[0] - 1;
                  do
                  {
                    *v49 -= (*v49 * v19 + ((*v49 * v19) >> 8) + 1) >> 8;
                    ++v49;
                    --v511;
                  }

                  while (v511);
                  v49 += v44;
                  v47 += v585 + v558 + v558 * v512;
                  --v588[0];
                }

                while (v588[0]);
              }

              goto LABEL_1158;
            case 9:
              do
              {
                v447 = v598[0];
                do
                {
                  v448 = (v32 | (v19 << 16)) * (*v47 ^ 0xFF) + (*v49 | (*v47 << 16)) * v19;
                  v449 = v448 + 65537 + ((v448 >> 8) & 0xFF00FF);
                  *v49++ = BYTE1(v449);
                  *v47 = HIBYTE(v449);
                  v47 += v558;
                  --v447;
                }

                while (v447);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              goto LABEL_1158;
            case 10:
              do
              {
                v503 = v598[0];
                do
                {
                  v504 = (v32 | (v19 << 16)) * (*v47 ^ 0xFF) + (*v49 | (*v47 << 16)) * v554;
                  v505 = v504 + 65537 + ((v504 >> 8) & 0xFF00FF);
                  *v49++ = BYTE1(v505);
                  *v47 = HIBYTE(v505);
                  v47 += v558;
                  --v503;
                }

                while (v503);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              goto LABEL_1158;
            case 11:
              v436 = v19 - v32;
              if (v7)
              {
                do
                {
                  v437 = v598[0];
                  do
                  {
                    v438 = ((v19 - v32) | (v19 << 16)) + (*v47 - *v49) + (*v47 << 16);
                    v439 = (255 * ((v438 >> 8) & 0x10001)) | v438;
                    *v49++ = BYTE2(v439) - v439;
                    *v47 = BYTE2(v439);
                    v47 += v558;
                    --v437;
                  }

                  while (v437);
                  v49 += v44;
                  v47 += v585;
                  --v588[0];
                }

                while (v588[0]);
              }

              else
              {
                do
                {
                  v522 = v598[0];
                  v523 = v598[0] - 1;
                  do
                  {
                    v524 = ((v436 + (*v49 ^ 0xFF)) >> 8) | (2 * ((v436 + (*v49 ^ 0xFF)) >> 8)) | (4 * (((v436 + (*v49 ^ 0xFF)) >> 8) | (2 * ((v436 + (*v49 ^ 0xFF)) >> 8))));
                    *v49 = ~((v436 + ~*v49) | (16 * v524) | v524);
                    ++v49;
                    --v522;
                  }

                  while (v522);
                  v49 += v44;
                  v47 += v585 + v558 + v558 * v523;
                  --v588[0];
                }

                while (v588[0]);
              }

              goto LABEL_1158;
            case 12:
              if (v7)
              {
                do
                {
                  v444 = v598[0];
                  do
                  {
                    v445 = (v32 | (v19 << 16)) + (*v49 | (*v47 << 16));
                    v446 = (255 * ((v445 >> 8) & 0x10001)) | v445;
                    *v49++ = v446;
                    *v47 = BYTE2(v446);
                    v47 += v558;
                    --v444;
                  }

                  while (v444);
                  v49 += v44;
                  v47 += v585;
                  --v588[0];
                }

                while (v588[0]);
              }

              else
              {
                do
                {
                  v525 = v598[0];
                  v526 = v598[0] - 1;
                  do
                  {
                    *v49 = -((*v49 + v32) >> 8) | (*v49 + v32);
                    ++v49;
                    --v525;
                  }

                  while (v525);
                  v49 += v44;
                  v47 += v585 + v558 + v558 * v526;
                  --v588[0];
                }

                while (v588[0]);
              }

              goto LABEL_1158;
            case 13:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v494 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v495 = PDAmultiplyPDA_18018(*v49, *v47, v32, v19);
                      *v49 = v495;
                      *v47 = HIBYTE(v495);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAmultiplyPDA_18018(*v49, 255, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v494;
                }

                while (v494);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 14:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v434 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v435 = PDAscreenPDA_18019(*v49, *v47, v32, v19);
                      *v49 = v435;
                      *v47 = HIBYTE(v435);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAscreenPDA_18019(*v49, 255, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v434;
                }

                while (v434);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 15:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v467 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v468 = PDAoverlayPDA_18020(*v49, *v47, v32, v19);
                      *v49 = v468;
                      *v47 = HIBYTE(v468);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAoverlayPDA_18020(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v467;
                }

                while (v467);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 16:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v432 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v433 = PDAdarkenPDA_18022(*v49, *v47, v32, v19);
                      *v49 = v433;
                      *v47 = HIBYTE(v433);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAdarkenPDA_18022(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v432;
                }

                while (v432);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 17:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v485 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v486 = PDAlightenPDA_18021(*v49, *v47, v32, v19);
                      *v49 = v486;
                      *v47 = HIBYTE(v486);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAlightenPDA_18021(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v485;
                }

                while (v485);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 18:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v501 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v502 = PDAcolordodgePDA_18023(*v49, *v47, v32, v19);
                      *v49 = v502;
                      *v47 = HIBYTE(v502);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAcolordodgePDA_18023(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v501;
                }

                while (v501);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 19:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v515 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v516 = PDAcolorburnPDA_18024(*v49, *v47, v32, v19);
                      *v49 = v516;
                      *v47 = HIBYTE(v516);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAcolorburnPDA_18024(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v515;
                }

                while (v515);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 20:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v487 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v488 = PDAsoftlightPDA_18026(*v49, *v47, v32, v19);
                      *v49 = v488;
                      *v47 = HIBYTE(v488);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAsoftlightPDA_18026(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v487;
                }

                while (v487);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 21:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v492 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v493 = PDAhardlightPDA_18025(*v49, *v47, v32, v19);
                      *v49 = v493;
                      *v47 = HIBYTE(v493);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAhardlightPDA_18025(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v492;
                }

                while (v492);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 22:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v513 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v514 = PDAdifferencePDA_18027(*v49, *v47, v32, v19);
                      *v49 = v514;
                      *v47 = HIBYTE(v514);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAdifferencePDA_18027(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v513;
                }

                while (v513);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 23:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v517 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v518 = PDAexclusionPDA_18028(*v49, *v47, v32, v19);
                      *v49 = v518;
                      *v47 = HIBYTE(v518);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAexclusionPDA_18028(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v517;
                }

                while (v517);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 24:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v452 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v453 = PDAhuePDA_18029(*v49, *v47, v32, v19);
                      *v49 = v453;
                      *v47 = HIBYTE(v453);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAhuePDA_18029(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v452;
                }

                while (v452);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 25:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v450 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v451 = PDAhuePDA_18029(*v49, *v47, v32, v19);
                      *v49 = v451;
                      *v47 = HIBYTE(v451);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAhuePDA_18029(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v450;
                }

                while (v450);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 26:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v519 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v520 = PDAluminosityPDA_18031(v32, v19, *v49, *v47);
                      *v49 = v520;
                      *v47 = HIBYTE(v520);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAluminosityPDA_18031(v32, v19, *v49, 0xFFu);
                  }

                  ++v49;
                  v47 += v558;
                  --v519;
                }

                while (v519);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            case 27:
              if (!v19)
              {
                goto LABEL_1158;
              }

              do
              {
                v430 = v598[0];
                do
                {
                  if (v7)
                  {
                    if (*v47)
                    {
                      v431 = PDAluminosityPDA_18031(*v49, *v47, v32, v19);
                      *v49 = v431;
                      *v47 = HIBYTE(v431);
                    }

                    else
                    {
                      *v49 = v32;
                      *v47 = v19;
                    }
                  }

                  else
                  {
                    *v49 = PDAluminosityPDA_18031(*v49, 0xFFu, v32, v19);
                  }

                  ++v49;
                  v47 += v558;
                  --v430;
                }

                while (v430);
                v49 += v44;
                v47 += v585;
                --v588[0];
              }

              while (v588[0]);
              break;
            default:
              goto LABEL_1159;
          }

          v8 = v536;
LABEL_1157:
          v18 = v556;
LABEL_1158:
          v44 = v560;
LABEL_1159:
          v46 = v583;
          if (!v583)
          {
            return 1;
          }

          v587 = 0;
        }

        v56 = v46;
LABEL_1168:
        free(v56);
      }

      return 1;
    }

    v598[0] = *(v3 + 4);
    v588[0] = v13;
    v20 = *(v3 + 28);
    v21 = *(v3 + 88);
    v23 = *(v3 + 12);
    v22 = *(v3 + 16);
    if (v7)
    {
      v542 = *(v3 + 32);
      v545 = (v7 + v542 * v22 + v23);
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v545 = 0;
      v542 = 0;
      v24 = 0;
    }

    v541 = *(v3 + 40) + v22 * v20 + v23;
    v36 = *(v3 + 104);
    v37 = *(v3 + 108);
    v38 = *(v3 + 56);
    v39 = *(v10 + 60);
    v40 = *(v10 + 76);
    if (v17 == 256)
    {
      if (v6)
      {
        v41 = *(v10 + 80);
        v6 += v41 * v39 + v38;
        v42 = -1;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      v21 += v39 * v40 + v38;
      if (v40 == v20 && (v541 - v21) >= 1)
      {
        if (v541 - v21 <= v11)
        {
          v541 += v12;
          v21 += v12;
          v545 += v24 & v12;
          v6 += v42 & v12;
          v58 = -1;
          goto LABEL_49;
        }

        v57 = &v21[v40 * v14];
        if (v541 <= &v57[v11 - 1])
        {
          v541 += v20 * v14;
          v20 = -v20;
          v40 = -v40;
          v545 += v542 * v14;
          v542 = -v542;
          v24 &= 1u;
          v6 += v41 * v14;
          v41 = -v41;
          v42 &= 1u;
          v58 = 1;
          v21 = v57;
          goto LABEL_49;
        }
      }

      v24 &= 1u;
      v42 &= 1u;
      v58 = 1;
LABEL_49:
      v533 = v38;
      v534 = *(v10 + 60);
      if (v15)
      {
        v59 = v6;
        v584 = v42;
        v586 = v24;
        v551 = 0;
        v552 = 0;
        v547 = -1;
        v559 = v40;
        v43 = v40;
        v563 = v41;
        v550 = v41;
        goto LABEL_54;
      }

      v546 = v58;
      v64 = v58 * v11;
      v561 = v542 - v24 * v11;
      v65 = -1;
      v550 = v41;
      v43 = v40;
LABEL_62:
      v551 = 0;
      v552 = 0;
      v548 = 0;
      v549 = v21;
      v559 = v40 - v64;
      v563 = v41 - v42 * v11;
      v69 = v6;
      v62 = v6;
      v63 = v545;
      v70 = v541;
      goto LABEL_66;
    }

    v43 = *(v10 + 64);
    v550 = *(v10 + 68);
    if (v6)
    {
      v41 = *(v10 + 80);
      v42 = 1;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    v551 = &v21[v550 * v40];
    v24 &= 1u;
    if (v15)
    {
      v59 = v6;
      v533 = v38;
      v534 = *(v10 + 60);
      v584 = v42;
      v586 = v24;
      v559 = *(v10 + 76);
      v563 = v41;
      v58 = 1;
      v552 = v21;
      v547 = v21;
LABEL_54:
      v546 = v58;
      shape_enum_clip_alloc(v11, v38, v15, v58, v20, 1, v36, v37, v11, v13);
      v61 = v60;
      v6 = v59;
      v555 = v59;
      v62 = v59;
      v63 = v545;
      v561 = v542;
      if (v60)
      {
        goto LABEL_875;
      }

      return 1;
    }

    v561 = v542 - (v24 * v11);
    if (!v21)
    {
      v533 = v38;
      v534 = *(v10 + 60);
      v65 = 0;
      v546 = 1;
      v64 = v11;
      goto LABEL_62;
    }

    v66 = v39 % v550;
    v67 = v38 % v43;
    v549 = v21;
    v559 = *(v10 + 76);
    v68 = &v21[v40 * v66];
    v21 = &v68[v67];
    v65 = &v68[v43];
    v563 = v41;
    v533 = v67;
    v534 = v66;
    v552 = v21;
    v548 = 0;
    if (v6)
    {
      v69 = &v6[v41 * v66 + v67];
      v546 = 1;
      v42 = 1;
      v62 = v69;
    }

    else
    {
      v69 = 0;
      v62 = 0;
      v546 = 1;
    }

    v63 = v545;
    v70 = v541;
    v64 = v11;
LABEL_66:
    v584 = v42;
    v586 = v24;
    v557 = v20 - v64;
    switch(v8)
    {
      case 0:
        v543 = v6;
        v555 = v69;
        v547 = v65;
        v538 = v20;
        v71 = v11;
        v72 = v557 - v11;
        v73 = v11 - 1;
        v74 = &v70[-v11 + 1];
        if (v546 >= 0)
        {
          v74 = v70;
          v72 = v557 + v11;
        }

        v75 = v588[0];
        v76 = v588[0] - 1;
        if (v72 >= 0)
        {
          LODWORD(v77) = v72;
        }

        else
        {
          v77 = -v72;
        }

        v565 = v11;
        v78 = v24;
        CGBlt_fillBytes(v11, v588[0], 0, &v74[(v72 * v76) & (v72 >> 63)], v77);
        if (v78)
        {
          v79 = v561 - v71;
          v80 = &v63[-v73];
          if (v546 >= 0)
          {
            v80 = v63;
            v79 = v561 + v71;
          }

          v81 = (v79 * v76) & (v79 >> 63);
          v63 = &v80[v81];
          if (v79 >= 0)
          {
            v82 = v79;
          }

          else
          {
            v82 = -v79;
          }

          v561 = v82;
          CGBlt_fillBytes(v565, v75, 0, &v80[v81], v82);
        }

        v20 = v538;
        goto LABEL_80;
      case 1:
        v211 = *(v10 + 1);
        if (v211 == 2)
        {
          if (v11 >= 32 && v43 <= 0x40)
          {
            v4.i32[0] = v43;
            v382 = vcnt_s8(v4);
            v382.i16[0] = vaddlv_u8(v382);
            if (v382.i32[0] <= 1u)
            {
              v543 = v6;
              v555 = v69;
              v547 = v65;
              v383 = v11;
              v581 = v588[0];
              v21 = v549;
              CGSFillDRAM64(v70, v11 + v557, v11, v588[0], v549, v559, v43, v550, v533, v534);
              if (v586)
              {
                v61 = v548;
                if (v584)
                {
                  CGSFillDRAM64(v63, v383 + v561, v383, v581, v6, v563, v43, v550, v533, v534);
                }

                else
                {
                  CGBlt_fillBytes(v383, v581, -1, v63, v383 + v561);
                }

                goto LABEL_82;
              }

LABEL_81:
              v61 = v548;
LABEL_82:
              v6 = v543;
              goto LABEL_873;
            }
          }
        }

        else if (v211 == 1)
        {
          v555 = v69;
          v212 = v11;
          v543 = v6;
          v540 = v20;
          v547 = v65;
          if (v546 < 0)
          {
            v213 = v559 - v11;
            v21 += -v11 + 1;
            v214 = v557 - v11;
            v70 += -v11 + 1;
          }

          else
          {
            v213 = v559 + v11;
            v214 = v557 + v11;
          }

          v393 = v588[0] - 1;
          if (v213 >= 0)
          {
            v394 = v213;
          }

          else
          {
            v394 = -v213;
          }

          if (v214 >= 0)
          {
            LODWORD(v395) = v214;
          }

          else
          {
            v395 = -v214;
          }

          v396 = v11;
          v582 = v588[0];
          v559 = v394;
          CGBlt_copyBytes(v11, v588[0], &v21[(v213 * v393) & (v213 >> 63)], &v70[(v214 * v393) & (v214 >> 63)], v394, v395);
          if (v586)
          {
            v61 = v548;
            v21 = v549;
            if (v584)
            {
              v397 = v563 - v212;
              v398 = &v62[-v396 + 1];
              v399 = v561 - v212;
              v400 = &v63[-v396 + 1];
              if (v546 >= 0)
              {
                v398 = v62;
                v400 = v63;
                v397 = v563 + v212;
                v399 = v561 + v212;
              }

              v401 = (v397 * v393) & (v397 >> 63);
              v62 = &v398[v401];
              if (v397 >= 0)
              {
                v402 = v397;
              }

              else
              {
                v402 = -v397;
              }

              v403 = (v399 * v393) & (v399 >> 63);
              v63 = &v400[v403];
              if (v399 >= 0)
              {
                v404 = v399;
              }

              else
              {
                v404 = -v399;
              }

              v561 = v404;
              v563 = v402;
              CGBlt_copyBytes(v396, v582, &v398[v401], &v400[v403], v402, v404);
            }

            else
            {
              v415 = v561 - v212;
              v416 = &v63[-v396 + 1];
              if (v546 >= 0)
              {
                v416 = v63;
                v415 = v561 + v212;
              }

              v417 = (v415 * v393) & (v415 >> 63);
              v63 = &v416[v417];
              if (v415 >= 0)
              {
                v418 = v415;
              }

              else
              {
                v418 = -v415;
              }

              v561 = v418;
              CGBlt_fillBytes(v396, v582, -1, &v416[v417], v418);
            }

            v20 = v540;
            goto LABEL_82;
          }

          v20 = v540;
LABEL_80:
          v21 = v549;
          goto LABEL_81;
        }

        if (v24)
        {
          v384 = v24;
          if (v42)
          {
            v375 = v552;
            do
            {
              v385 = v598[0];
              do
              {
                *v70 = *v21;
                *v63 = *v62;
                v70 += v546;
                v63 += v384;
                if (&v21[v546] >= v65)
                {
                  v386 = -v43;
                }

                else
                {
                  v386 = 0;
                }

                v62 += v42 + v386;
                v21 += v546 + v386;
                --v385;
              }

              while (v385);
              if (v551)
              {
                if (&v375[v559] >= v551)
                {
                  v387 = -(v563 * v550);
                }

                else
                {
                  v387 = 0;
                }

                v69 += v563 + v387;
                if (&v375[v559] >= v551)
                {
                  v388 = -(v559 * v550);
                }

                else
                {
                  v388 = 0;
                }

                v375 += v559 + v388;
                v65 += v559 + v388;
                v62 = v69;
                v21 = v375;
              }

              else
              {
                v21 += v559;
                v62 += v563;
              }

              v70 += v557;
              v63 += v561;
              --v588[0];
            }

            while (v588[0]);
          }

          else
          {
            v375 = v552;
            do
            {
              v405 = v598[0];
              do
              {
                *v70 = *v21;
                *v63 = -1;
                v70 += v546;
                v63 += v384;
                if (&v21[v546] >= v65)
                {
                  v406 = -v43;
                }

                else
                {
                  v406 = 0;
                }

                v62 += v406;
                v21 += v546 + v406;
                --v405;
              }

              while (v405);
              if (v551)
              {
                if (&v375[v559] >= v551)
                {
                  v407 = -(v563 * v550);
                }

                else
                {
                  v407 = 0;
                }

                v69 += v563 + v407;
                if (&v375[v559] >= v551)
                {
                  v408 = -(v559 * v550);
                }

                else
                {
                  v408 = 0;
                }

                v375 += v559 + v408;
                v65 += v559 + v408;
                v62 = v69;
                v21 = v375;
              }

              else
              {
                v21 += v559;
                v62 += v563;
              }

              v70 += v557;
              v63 += v561;
              --v588[0];
            }

            while (v588[0]);
          }

LABEL_870:
          v552 = v375;
        }

        else
        {
          v353 = v552;
          do
          {
            v389 = v598[0];
            do
            {
              *v70 = *v21;
              v70 += v546;
              if (&v21[v546] >= v65)
              {
                v390 = -v43;
              }

              else
              {
                v390 = 0;
              }

              v62 += v42 + v390;
              v21 += v546 + v390;
              --v389;
            }

            while (v389);
            if (v551)
            {
              if (&v353[v559] >= v551)
              {
                v391 = -(v563 * v550);
              }

              else
              {
                v391 = 0;
              }

              v69 += v563 + v391;
              if (&v353[v559] >= v551)
              {
                v392 = -(v559 * v550);
              }

              else
              {
                v392 = 0;
              }

              v353 += v559 + v392;
              v65 += v559 + v392;
              v62 = v69;
              v21 = v353;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            --v588[0];
          }

          while (v588[0]);
LABEL_834:
          v552 = v353;
        }

        goto LABEL_871;
      case 2:
        if (v24)
        {
          v172 = v24;
          v142 = v552;
          do
          {
            v173 = v598[0];
            do
            {
              v174 = *v62;
              if (*v62)
              {
                if (v174 == 255)
                {
                  *v70 = *v21;
                  LOBYTE(v175) = *v62;
                }

                else
                {
                  v176 = (*v70 | (*v63 << 16)) * (v174 ^ 0xFF);
                  v177 = ((v176 + 65537 + ((v176 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v176 + 1 + BYTE1(v176)) >> 8)) + (*v21 | (v174 << 24));
                  *v70 = v177;
                  v175 = HIBYTE(v177);
                }

                *v63 = v175;
              }

              v70 += v546;
              v63 += v172;
              if (&v21[v546] >= v65)
              {
                v178 = -v43;
              }

              else
              {
                v178 = 0;
              }

              v62 += v42 + v178;
              v21 += v546 + v178;
              --v173;
            }

            while (v173);
            if (v551)
            {
              if (&v142[v559] >= v551)
              {
                v179 = -(v563 * v550);
              }

              else
              {
                v179 = 0;
              }

              v69 += v563 + v179;
              if (&v142[v559] >= v551)
              {
                v180 = -(v559 * v550);
              }

              else
              {
                v180 = 0;
              }

              v142 += v559 + v180;
              v65 += v559 + v180;
              v62 = v69;
              v21 = v142;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            --v588[0];
          }

          while (v588[0]);
          goto LABEL_578;
        }

        v353 = v552;
        do
        {
          v359 = v598[0];
          do
          {
            v360 = *v62;
            if (*v62)
            {
              if (v360 == 255)
              {
                LOBYTE(v361) = *v21;
              }

              else
              {
                v361 = *v21 + ((*v70 * (v360 ^ 0xFF) + ((*v70 * (v360 ^ 0xFFu)) >> 8) + 1) >> 8);
              }

              *v70 = v361;
            }

            v70 += v546;
            if (&v21[v546] >= v65)
            {
              v362 = -v43;
            }

            else
            {
              v362 = 0;
            }

            v62 += v42 + v362;
            v21 += v546 + v362;
            --v359;
          }

          while (v359);
          if (v551)
          {
            if (&v353[v559] >= v551)
            {
              v363 = -(v563 * v550);
            }

            else
            {
              v363 = 0;
            }

            v69 += v563 + v363;
            if (&v353[v559] >= v551)
            {
              v364 = -(v559 * v550);
            }

            else
            {
              v364 = 0;
            }

            v353 += v559 + v364;
            v65 += v559 + v364;
            v62 = v69;
            v21 = v353;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          --v588[0];
        }

        while (v588[0]);
        goto LABEL_834;
      case 3:
        v191 = v24;
        if (v42)
        {
          v142 = v552;
          do
          {
            v192 = v598[0];
            do
            {
              v193 = *v63;
              if (v193 == 255)
              {
                *v70 = *v21;
                LOBYTE(v193) = *v62;
              }

              else if (*v63)
              {
                v194 = *v21;
                v195 = *v62;
                v196 = (v194 | (v195 << 16)) * (v193 ^ 0xFF) + 65537 + ((((v194 | (v195 << 16)) * (v193 ^ 0xFF)) >> 8) & 0xFF00FF);
                v197 = v194 | (v195 << 24);
                *v70 = v197 - BYTE1(v196);
                v193 = (v197 - (v196 & 0xFF000000 | BYTE1(v196))) >> 24;
              }

              else
              {
                *v70 = 0;
              }

              *v63 = v193;
              v70 += v546;
              v63 += v191;
              if (&v21[v546] >= v65)
              {
                v198 = -v43;
              }

              else
              {
                v198 = 0;
              }

              v62 += v42 + v198;
              v21 += v546 + v198;
              --v192;
            }

            while (v192);
            if (v551)
            {
              if (&v142[v559] >= v551)
              {
                v199 = -(v563 * v550);
              }

              else
              {
                v199 = 0;
              }

              v69 += v563 + v199;
              if (&v142[v559] >= v551)
              {
                v200 = -(v559 * v550);
              }

              else
              {
                v200 = 0;
              }

              v142 += v559 + v200;
              v65 += v559 + v200;
              v62 = v69;
              v21 = v142;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            --v588[0];
          }

          while (v588[0]);
          goto LABEL_578;
        }

        v353 = v552;
        do
        {
          v365 = v598[0];
          do
          {
            v366 = *v63;
            if (*v63)
            {
              if (v366 == 255)
              {
                LOBYTE(v366) = *v21;
              }

              else
              {
                v366 = *v21 - ((*v21 * (v366 ^ 0xFF) + ((*v21 * (v366 ^ 0xFF)) >> 8) + 1) >> 8);
              }
            }

            *v70 = v366;
            v70 += v546;
            v63 += v191;
            if (&v21[v546] >= v65)
            {
              v367 = -v43;
            }

            else
            {
              v367 = 0;
            }

            v62 += v367;
            v21 += v546 + v367;
            --v365;
          }

          while (v365);
          if (v551)
          {
            if (&v353[v559] >= v551)
            {
              v368 = -(v563 * v550);
            }

            else
            {
              v368 = 0;
            }

            v69 += v563 + v368;
            if (&v353[v559] >= v551)
            {
              v369 = -(v559 * v550);
            }

            else
            {
              v369 = 0;
            }

            v353 += v559 + v369;
            v65 += v559 + v369;
            v62 = v69;
            v21 = v353;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          --v588[0];
        }

        while (v588[0]);
        goto LABEL_834;
      case 4:
        v122 = v24;
        do
        {
          v123 = v598[0];
          do
          {
            v124 = *v63;
            if ((v124 ^ 0xFF) == 0xFF)
            {
              if (v42)
              {
                LOBYTE(v125) = *v62;
              }

              else
              {
                LOBYTE(v125) = -1;
              }
            }

            else if (v124 != 0xFF)
            {
              if (v42)
              {
                v126 = *v62;
              }

              else
              {
                v126 = 255;
              }

              v127 = *v21;
              v128 = (v127 | (v126 << 16)) * v124 + 65537 + ((((v127 | (v126 << 16)) * v124) >> 8) & 0xFF00FF);
              v129 = v127 | (v126 << 24);
              *v70 = v129 - BYTE1(v128);
              v125 = (v129 - (v128 & 0xFF000000 | BYTE1(v128))) >> 24;
            }

            else
            {
              LOBYTE(v125) = 0;
              *v70 = 0;
            }

            *v63 = v125;
            v70 += v546;
            v63 += v122;
            if (&v21[v546] >= v65)
            {
              v130 = -v43;
            }

            else
            {
              v130 = 0;
            }

            v62 += v42 + v130;
            v21 += v546 + v130;
            --v123;
          }

          while (v123);
          if (v551)
          {
            if (&v552[v559] >= v551)
            {
              v131 = -(v563 * v550);
            }

            else
            {
              v131 = 0;
            }

            v69 += v563 + v131;
            if (&v552[v559] >= v551)
            {
              v132 = -(v559 * v550);
            }

            else
            {
              v132 = 0;
            }

            v21 = &v552[v559 + v132];
            v65 += v559 + v132;
            v62 = v69;
            v552 = v21;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          --v588[0];
        }

        while (v588[0]);
        goto LABEL_871;
      case 5:
        v235 = v24;
        v236 = v42;
        v237 = v552;
        do
        {
          v238 = v598[0];
          do
          {
            v239 = (*v21 | (*v62 << 16)) * *v63 + (*v70 | (*v63 << 16)) * (*v62 ^ 0xFF);
            v240 = v239 + 65537 + ((v239 >> 8) & 0xFF00FF);
            *v70 = BYTE1(v240);
            *v63 = HIBYTE(v240);
            v70 += v546;
            v63 += v235;
            if (&v21[v546] >= v65)
            {
              v241 = -v43;
            }

            else
            {
              v241 = 0;
            }

            v62 += v236 + v241;
            v21 += v546 + v241;
            --v238;
          }

          while (v238);
          if (v551)
          {
            if (&v237[v559] >= v551)
            {
              v242 = -(v563 * v550);
            }

            else
            {
              v242 = 0;
            }

            v69 += v563 + v242;
            if (&v237[v559] >= v551)
            {
              v243 = -(v559 * v550);
            }

            else
            {
              v243 = 0;
            }

            v237 += v559 + v243;
            v65 += v559 + v243;
            v62 = v69;
            v21 = v237;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          --v588[0];
        }

        while (v588[0]);
        goto LABEL_555;
      case 6:
        do
        {
          v264 = v598[0];
          do
          {
            v265 = *v63;
            if (v265 != 0xFF)
            {
              if (~v265 == 255)
              {
                if (v42)
                {
                  LOBYTE(v266) = *v62;
                }

                else
                {
                  LOBYTE(v266) = -1;
                }

                *v70 = *v21;
              }

              else
              {
                if (v42)
                {
                  v267 = *v62 << 16;
                }

                else
                {
                  v267 = 16711680;
                }

                v268 = (v267 | *v21) * ~v265;
                v269 = ((v268 + 65537 + ((v268 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v268 + 1 + BYTE1(v268)) >> 8)) + (*v70 | (v265 << 24));
                *v70 = v269;
                v266 = HIBYTE(v269);
              }

              *v63 = v266;
            }

            v70 += v546;
            v63 += v24;
            if (&v21[v546] >= v65)
            {
              v270 = -v43;
            }

            else
            {
              v270 = 0;
            }

            v62 += v42 + v270;
            v21 += v546 + v270;
            --v264;
          }

          while (v264);
          if (v551)
          {
            if (&v552[v559] >= v551)
            {
              v271 = -(v563 * v550);
            }

            else
            {
              v271 = 0;
            }

            v69 += v563 + v271;
            if (&v552[v559] >= v551)
            {
              v272 = -(v559 * v550);
            }

            else
            {
              v272 = 0;
            }

            v21 = &v552[v559 + v272];
            v65 += v559 + v272;
            v62 = v69;
            v552 = v21;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          --v588[0];
        }

        while (v588[0]);
        goto LABEL_871;
      case 7:
        if (v24)
        {
          v201 = v24;
          v142 = v552;
          do
          {
            v202 = v598[0];
            do
            {
              v203 = *v62;
              if (v203 != 255)
              {
                if (*v62)
                {
                  v204 = *v70;
                  v205 = *v63;
                  v206 = (v204 | (v205 << 16)) * (v203 ^ 0xFF) + 65537 + ((((v204 | (v205 << 16)) * (v203 ^ 0xFF)) >> 8) & 0xFF00FF);
                  v207 = v204 | (v205 << 24);
                  *v70 = v207 - BYTE1(v206);
                  v203 = (v207 - (v206 & 0xFF000000 | BYTE1(v206))) >> 24;
                }

                else
                {
                  *v70 = 0;
                }

                *v63 = v203;
              }

              v70 += v546;
              v63 += v201;
              if (&v21[v546] >= v65)
              {
                v208 = -v43;
              }

              else
              {
                v208 = 0;
              }

              v62 += v42 + v208;
              v21 += v546 + v208;
              --v202;
            }

            while (v202);
            if (v551)
            {
              if (&v142[v559] >= v551)
              {
                v209 = -(v563 * v550);
              }

              else
              {
                v209 = 0;
              }

              v69 += v563 + v209;
              if (&v142[v559] >= v551)
              {
                v210 = -(v559 * v550);
              }

              else
              {
                v210 = 0;
              }

              v142 += v559 + v210;
              v65 += v559 + v210;
              v62 = v69;
              v21 = v142;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            --v588[0];
          }

          while (v588[0]);
LABEL_578:
          v552 = v142;
LABEL_871:
          v555 = v69;
          v547 = v65;
          v21 = v549;
          goto LABEL_872;
        }

        v353 = v552;
LABEL_751:
        v370 = v598[0];
        while (1)
        {
          v371 = *v62;
          if (!*v62)
          {
            goto LABEL_755;
          }

          if (v371 != 255)
          {
            break;
          }

LABEL_756:
          v70 += v546;
          if (&v21[v546] >= v65)
          {
            v372 = -v43;
          }

          else
          {
            v372 = 0;
          }

          v62 += v42 + v372;
          v21 += v546 + v372;
          if (!--v370)
          {
            if (v551)
            {
              if (&v353[v559] >= v551)
              {
                v373 = -(v563 * v550);
              }

              else
              {
                v373 = 0;
              }

              v69 += v563 + v373;
              if (&v353[v559] >= v551)
              {
                v374 = -(v559 * v550);
              }

              else
              {
                v374 = 0;
              }

              v353 += v559 + v374;
              v65 += v559 + v374;
              v62 = v69;
              v21 = v353;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            if (!--v588[0])
            {
              goto LABEL_834;
            }

            goto LABEL_751;
          }
        }

        v371 = *v70 - ((*v70 * (v371 ^ 0xFF) + ((*v70 * (v371 ^ 0xFF)) >> 8) + 1) >> 8);
LABEL_755:
        *v70 = v371;
        goto LABEL_756;
      case 8:
        if (v24)
        {
          v291 = v24;
          v142 = v552;
          do
          {
            v292 = v598[0];
            do
            {
              v293 = *v62;
              if ((v293 ^ 0xFF) != 0xFF)
              {
                if (v293 != 0xFF)
                {
                  v295 = *v70;
                  v296 = *v63;
                  v297 = (v295 | (v296 << 16)) * v293 + 65537 + ((((v295 | (v296 << 16)) * v293) >> 8) & 0xFF00FF);
                  v298 = v295 | (v296 << 24);
                  *v70 = v298 - BYTE1(v297);
                  v294 = (v298 - (v297 & 0xFF000000 | BYTE1(v297))) >> 24;
                }

                else
                {
                  LOBYTE(v294) = 0;
                  *v70 = 0;
                }

                *v63 = v294;
              }

              v70 += v546;
              v63 += v291;
              if (&v21[v546] >= v65)
              {
                v299 = -v43;
              }

              else
              {
                v299 = 0;
              }

              v62 += v42 + v299;
              v21 += v546 + v299;
              --v292;
            }

            while (v292);
            if (v551)
            {
              if (&v142[v559] >= v551)
              {
                v300 = -(v563 * v550);
              }

              else
              {
                v300 = 0;
              }

              v69 += v563 + v300;
              if (&v142[v559] >= v551)
              {
                v301 = -(v559 * v550);
              }

              else
              {
                v301 = 0;
              }

              v142 += v559 + v301;
              v65 += v559 + v301;
              v62 = v69;
              v21 = v142;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            --v588[0];
          }

          while (v588[0]);
          goto LABEL_578;
        }

        v375 = v552;
LABEL_772:
        v376 = v598[0];
        while (1)
        {
          v377 = *v62;
          if (v377 == 0xFF)
          {
            break;
          }

          if (~v377 != 255)
          {
            v378 = *v70 - ((*v70 * v377 + ((*v70 * v377) >> 8) + 1) >> 8);
LABEL_777:
            *v70 = v378;
          }

          v70 += v546;
          if (&v21[v546] >= v65)
          {
            v379 = -v43;
          }

          else
          {
            v379 = 0;
          }

          v62 += v42 + v379;
          v21 += v546 + v379;
          if (!--v376)
          {
            if (v551)
            {
              if (&v375[v559] >= v551)
              {
                v380 = -(v563 * v550);
              }

              else
              {
                v380 = 0;
              }

              v69 += v563 + v380;
              if (&v375[v559] >= v551)
              {
                v381 = -(v559 * v550);
              }

              else
              {
                v381 = 0;
              }

              v375 += v559 + v381;
              v65 += v559 + v381;
              v62 = v69;
              v21 = v375;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            if (!--v588[0])
            {
              goto LABEL_870;
            }

            goto LABEL_772;
          }
        }

        LOBYTE(v378) = 0;
        goto LABEL_777;
      case 9:
        v141 = v24;
        v142 = v552;
        do
        {
          v143 = v598[0];
          do
          {
            v144 = *v63;
            v145 = *v62;
            v146 = (*v21 | (v145 << 16)) * (v144 ^ 0xFF) + (*v70 | (v144 << 16)) * v145 + 65537 + ((((*v21 | (v145 << 16)) * (v144 ^ 0xFF) + (*v70 | (v144 << 16)) * v145) >> 8) & 0xFF00FF);
            *v70 = BYTE1(v146);
            *v63 = HIBYTE(v146);
            v70 += v546;
            v63 += v141;
            if (&v21[v546] >= v65)
            {
              v147 = -v43;
            }

            else
            {
              v147 = 0;
            }

            v62 += v42 + v147;
            v21 += v546 + v147;
            --v143;
          }

          while (v143);
          if (v551)
          {
            if (&v142[v559] >= v551)
            {
              v148 = -(v563 * v550);
            }

            else
            {
              v148 = 0;
            }

            v69 += v563 + v148;
            if (&v142[v559] >= v551)
            {
              v149 = -(v559 * v550);
            }

            else
            {
              v149 = 0;
            }

            v142 += v559 + v149;
            v65 += v559 + v149;
            v62 = v69;
            v21 = v142;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          --v588[0];
        }

        while (v588[0]);
        goto LABEL_578;
      case 10:
        v283 = v24;
        v284 = v42;
        v237 = v552;
        do
        {
          v285 = v598[0];
          do
          {
            v286 = (*v21 | (*v62 << 16)) * (*v63 ^ 0xFF) + (*v70 | (*v63 << 16)) * (*v62 ^ 0xFF);
            v287 = v286 + 65537 + ((v286 >> 8) & 0xFF00FF);
            *v70 = BYTE1(v287);
            *v63 = HIBYTE(v287);
            v70 += v546;
            v63 += v283;
            if (&v21[v546] >= v65)
            {
              v288 = -v43;
            }

            else
            {
              v288 = 0;
            }

            v62 += v284 + v288;
            v21 += v546 + v288;
            --v285;
          }

          while (v285);
          if (v551)
          {
            if (&v237[v559] >= v551)
            {
              v289 = -(v563 * v550);
            }

            else
            {
              v289 = 0;
            }

            v69 += v563 + v289;
            if (&v237[v559] >= v551)
            {
              v290 = -(v559 * v550);
            }

            else
            {
              v290 = 0;
            }

            v237 += v559 + v290;
            v65 += v559 + v290;
            v62 = v69;
            v21 = v237;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          --v588[0];
        }

        while (v588[0]);
LABEL_555:
        v552 = v237;
        goto LABEL_871;
      case 11:
        if (v24)
        {
          v114 = v24;
          do
          {
            v115 = v598[0];
            do
            {
              if (v42)
              {
                v116 = *v62;
              }

              else
              {
                v116 = 255;
              }

              v117 = ((*v63 - *v70) | (*v63 << 16)) + (v116 - *v21) + (v116 << 16);
              v118 = (255 * ((v117 >> 8) & 0x10001)) | v117;
              *v70 = BYTE2(v118) - v118;
              *v63 = BYTE2(v118);
              v70 += v546;
              v63 += v114;
              if (&v21[v546] >= v65)
              {
                v119 = -v43;
              }

              else
              {
                v119 = 0;
              }

              v62 += v42 + v119;
              v21 += v546 + v119;
              --v115;
            }

            while (v115);
            if (v551)
            {
              if (&v552[v559] >= v551)
              {
                v120 = -(v563 * v550);
              }

              else
              {
                v120 = 0;
              }

              v69 += v563 + v120;
              if (&v552[v559] >= v551)
              {
                v121 = -(v559 * v550);
              }

              else
              {
                v121 = 0;
              }

              v21 = &v552[v559 + v121];
              v65 += v559 + v121;
              v62 = v69;
              v552 = v21;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            --v588[0];
          }

          while (v588[0]);
        }

        else
        {
          do
          {
            v346 = v598[0];
            do
            {
              if (v42)
              {
                v347 = *v62;
              }

              else
              {
                v347 = 255;
              }

              v348 = v347 - *v21 + (*v70 ^ 0xFF);
              v349 = HIBYTE(v348) | (2 * HIBYTE(v348)) | (4 * (HIBYTE(v348) | (2 * HIBYTE(v348))));
              *v70 = ~(v348 | (16 * v349) | v349);
              v70 += v546;
              if (&v21[v546] >= v65)
              {
                v350 = -v43;
              }

              else
              {
                v350 = 0;
              }

              v62 += v42 + v350;
              v21 += v546 + v350;
              --v346;
            }

            while (v346);
            if (v551)
            {
              if (&v552[v559] >= v551)
              {
                v351 = -(v563 * v550);
              }

              else
              {
                v351 = 0;
              }

              v69 += v563 + v351;
              if (&v552[v559] >= v551)
              {
                v352 = -(v559 * v550);
              }

              else
              {
                v352 = 0;
              }

              v21 = &v552[v559 + v352];
              v65 += v559 + v352;
              v62 = v69;
              v552 = v21;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            --v588[0];
          }

          while (v588[0]);
        }

        goto LABEL_871;
      case 12:
        if (v24)
        {
          v133 = v24;
          do
          {
            v134 = v598[0];
            do
            {
              if (v42)
              {
                v135 = *v62 << 16;
              }

              else
              {
                v135 = 16711680;
              }

              v136 = (*v70 | (*v63 << 16)) + *v21 + v135;
              v137 = (255 * ((v136 >> 8) & 0x10001)) | v136;
              *v70 = v137;
              *v63 = BYTE2(v137);
              v70 += v546;
              v63 += v133;
              if (&v21[v546] >= v65)
              {
                v138 = -v43;
              }

              else
              {
                v138 = 0;
              }

              v62 += v42 + v138;
              v21 += v546 + v138;
              --v134;
            }

            while (v134);
            if (v551)
            {
              if (&v552[v559] >= v551)
              {
                v139 = -(v563 * v550);
              }

              else
              {
                v139 = 0;
              }

              v69 += v563 + v139;
              if (&v552[v559] >= v551)
              {
                v140 = -(v559 * v550);
              }

              else
              {
                v140 = 0;
              }

              v21 = &v552[v559 + v140];
              v65 += v559 + v140;
              v62 = v69;
              v552 = v21;
            }

            else
            {
              v21 += v559;
              v62 += v563;
            }

            v70 += v557;
            v63 += v561;
            --v588[0];
          }

          while (v588[0]);
          goto LABEL_871;
        }

        v353 = v552;
        do
        {
          v354 = v598[0];
          do
          {
            v355 = *v21 + *v70;
            *v70 = -(v355 >> 8) | v355;
            v70 += v546;
            if (&v21[v546] >= v65)
            {
              v356 = -v43;
            }

            else
            {
              v356 = 0;
            }

            v62 += v42 + v356;
            v21 += v546 + v356;
            --v354;
          }

          while (v354);
          if (v551)
          {
            if (&v353[v559] >= v551)
            {
              v357 = -(v563 * v550);
            }

            else
            {
              v357 = 0;
            }

            v69 += v563 + v357;
            if (&v353[v559] >= v551)
            {
              v358 = -(v559 * v550);
            }

            else
            {
              v358 = 0;
            }

            v353 += v559 + v358;
            v65 += v559 + v358;
            v62 = v69;
            v21 = v353;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          --v588[0];
        }

        while (v588[0]);
        goto LABEL_834;
      case 13:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v575 = v24;
        v254 = v42;
        v255 = -v43;
        while (1)
        {
          v256 = v598[0];
          v257 = v65;
          do
          {
            if (v42)
            {
              v258 = *v62;
              if (!*v62)
              {
                goto LABEL_476;
              }

              if (v24)
              {
                goto LABEL_471;
              }
            }

            else
            {
              v258 = 255;
              if (v24)
              {
LABEL_471:
                if (*v63)
                {
                  v259 = PDAmultiplyPDA_18018(*v70, *v63, *v21, v258);
                  v65 = v257;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v259;
                  *v63 = HIBYTE(v259);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v258;
                }

                goto LABEL_476;
              }
            }

            v260 = PDAmultiplyPDA_18018(*v70, 255, *v21, v258);
            v65 = v257;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v260;
LABEL_476:
            v70 += v546;
            v63 += *v575;
            if (&v21[v546] >= v65)
            {
              v261 = v255;
            }

            else
            {
              v261 = 0;
            }

            v62 += v254 + v261;
            v21 += v546 + v261;
            --v256;
          }

          while (v256);
          if (v551)
          {
            v262 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v262 = 0;
            }

            v62 = (v555 + v563 + v262);
            v263 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v263 = 0;
            }

            v21 = &v552[v559 + v263];
            v65 += v559 + v263;
            v552 = v21;
            v555 += v563 + v262;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 14:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v568 = v24;
        v104 = v42;
        v105 = -v43;
        while (1)
        {
          v106 = v598[0];
          v107 = v65;
          do
          {
            if (v42)
            {
              v108 = *v62;
              if (!*v62)
              {
                goto LABEL_139;
              }

              if (v24)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v108 = 255;
              if (v24)
              {
LABEL_134:
                if (*v63)
                {
                  v109 = PDAscreenPDA_18019(*v70, *v63, *v21, v108);
                  v65 = v107;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v109;
                  *v63 = HIBYTE(v109);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v108;
                }

                goto LABEL_139;
              }
            }

            v110 = PDAscreenPDA_18019(*v70, 255, *v21, v108);
            v65 = v107;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v110;
LABEL_139:
            v70 += v546;
            v63 += *v568;
            if (&v21[v546] >= v65)
            {
              v111 = v105;
            }

            else
            {
              v111 = 0;
            }

            v62 += v104 + v111;
            v21 += v546 + v111;
            --v106;
          }

          while (v106);
          if (v551)
          {
            v112 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v112 = 0;
            }

            v62 = (v555 + v563 + v112);
            v113 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v113 = 0;
            }

            v21 = &v552[v559 + v113];
            v65 += v559 + v113;
            v552 = v21;
            v555 += v563 + v112;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 15:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v571 = v24;
        v181 = v42;
        v182 = -v43;
        while (1)
        {
          v183 = v598[0];
          v184 = v65;
          do
          {
            if (v42)
            {
              v185 = *v62;
              if (!*v62)
              {
                goto LABEL_317;
              }

              if (v24)
              {
                goto LABEL_312;
              }
            }

            else
            {
              v185 = 255;
              if (v24)
              {
LABEL_312:
                if (*v63)
                {
                  v186 = PDAoverlayPDA_18020(*v70, *v63, *v21, v185);
                  v65 = v184;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v186;
                  *v63 = HIBYTE(v186);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v185;
                }

                goto LABEL_317;
              }
            }

            v187 = PDAoverlayPDA_18020(*v70, 0xFFu, *v21, v185);
            v65 = v184;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v187;
LABEL_317:
            v70 += v546;
            v63 += *v571;
            if (&v21[v546] >= v65)
            {
              v188 = v182;
            }

            else
            {
              v188 = 0;
            }

            v62 += v181 + v188;
            v21 += v546 + v188;
            --v183;
          }

          while (v183);
          if (v551)
          {
            v189 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v189 = 0;
            }

            v62 = (v555 + v563 + v189);
            v190 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v190 = 0;
            }

            v21 = &v552[v559 + v190];
            v65 += v559 + v190;
            v552 = v21;
            v555 += v563 + v189;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 16:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v567 = v24;
        v94 = v42;
        v95 = -v43;
        while (1)
        {
          v96 = v598[0];
          v97 = v65;
          do
          {
            if (v42)
            {
              v98 = *v62;
              if (!*v62)
              {
                goto LABEL_116;
              }

              if (v24)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v98 = 255;
              if (v24)
              {
LABEL_111:
                if (*v63)
                {
                  v99 = PDAdarkenPDA_18022(*v70, *v63, *v21, v98);
                  v65 = v97;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v99;
                  *v63 = HIBYTE(v99);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v98;
                }

                goto LABEL_116;
              }
            }

            v100 = PDAdarkenPDA_18022(*v70, 0xFFu, *v21, v98);
            v65 = v97;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v100;
LABEL_116:
            v70 += v546;
            v63 += *v567;
            if (&v21[v546] >= v65)
            {
              v101 = v95;
            }

            else
            {
              v101 = 0;
            }

            v62 += v94 + v101;
            v21 += v546 + v101;
            --v96;
          }

          while (v96);
          if (v551)
          {
            v102 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v102 = 0;
            }

            v62 = (v555 + v563 + v102);
            v103 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v103 = 0;
            }

            v21 = &v552[v559 + v103];
            v65 += v559 + v103;
            v552 = v21;
            v555 += v563 + v102;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 17:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v572 = v24;
        v215 = v42;
        v216 = -v43;
        while (1)
        {
          v217 = v598[0];
          v218 = v65;
          do
          {
            if (v42)
            {
              v219 = *v62;
              if (!*v62)
              {
                goto LABEL_390;
              }

              if (v24)
              {
                goto LABEL_385;
              }
            }

            else
            {
              v219 = 255;
              if (v24)
              {
LABEL_385:
                if (*v63)
                {
                  v220 = PDAlightenPDA_18021(*v70, *v63, *v21, v219);
                  v65 = v218;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v220;
                  *v63 = HIBYTE(v220);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v219;
                }

                goto LABEL_390;
              }
            }

            v221 = PDAlightenPDA_18021(*v70, 0xFFu, *v21, v219);
            v65 = v218;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v221;
LABEL_390:
            v70 += v546;
            v63 += *v572;
            if (&v21[v546] >= v65)
            {
              v222 = v216;
            }

            else
            {
              v222 = 0;
            }

            v62 += v215 + v222;
            v21 += v546 + v222;
            --v217;
          }

          while (v217);
          if (v551)
          {
            v223 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v223 = 0;
            }

            v62 = (v555 + v563 + v223);
            v224 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v224 = 0;
            }

            v21 = &v552[v559 + v224];
            v65 += v559 + v224;
            v552 = v21;
            v555 += v563 + v223;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 18:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v576 = v24;
        v273 = v42;
        v274 = -v43;
        while (1)
        {
          v275 = v598[0];
          v276 = v65;
          do
          {
            if (v42)
            {
              v277 = *v62;
              if (!*v62)
              {
                goto LABEL_526;
              }

              if (v24)
              {
                goto LABEL_521;
              }
            }

            else
            {
              v277 = 255;
              if (v24)
              {
LABEL_521:
                if (*v63)
                {
                  v278 = PDAcolordodgePDA_18023(*v70, *v63, *v21, v277);
                  v65 = v276;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v278;
                  *v63 = HIBYTE(v278);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v277;
                }

                goto LABEL_526;
              }
            }

            v279 = PDAcolordodgePDA_18023(*v70, 0xFFu, *v21, v277);
            v65 = v276;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v279;
LABEL_526:
            v70 += v546;
            v63 += *v576;
            if (&v21[v546] >= v65)
            {
              v280 = v274;
            }

            else
            {
              v280 = 0;
            }

            v62 += v273 + v280;
            v21 += v546 + v280;
            --v275;
          }

          while (v275);
          if (v551)
          {
            v281 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v281 = 0;
            }

            v62 = (v555 + v563 + v281);
            v282 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v282 = 0;
            }

            v21 = &v552[v559 + v282];
            v65 += v559 + v282;
            v552 = v21;
            v555 += v563 + v281;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 19:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v578 = v24;
        v313 = v42;
        v314 = -v43;
        while (1)
        {
          v315 = v598[0];
          v316 = v65;
          do
          {
            if (v42)
            {
              v317 = *v62;
              if (!*v62)
              {
                goto LABEL_612;
              }

              if (v24)
              {
                goto LABEL_607;
              }
            }

            else
            {
              v317 = 255;
              if (v24)
              {
LABEL_607:
                if (*v63)
                {
                  v318 = PDAcolorburnPDA_18024(*v70, *v63, *v21, v317);
                  v65 = v316;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v318;
                  *v63 = HIBYTE(v318);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v317;
                }

                goto LABEL_612;
              }
            }

            v319 = PDAcolorburnPDA_18024(*v70, 0xFFu, *v21, v317);
            v65 = v316;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v319;
LABEL_612:
            v70 += v546;
            v63 += *v578;
            if (&v21[v546] >= v65)
            {
              v320 = v314;
            }

            else
            {
              v320 = 0;
            }

            v62 += v313 + v320;
            v21 += v546 + v320;
            --v315;
          }

          while (v315);
          if (v551)
          {
            v321 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v321 = 0;
            }

            v62 = (v555 + v563 + v321);
            v322 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v322 = 0;
            }

            v21 = &v552[v559 + v322];
            v65 += v559 + v322;
            v552 = v21;
            v555 += v563 + v321;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 20:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v573 = v24;
        v225 = v42;
        v226 = -v43;
        while (1)
        {
          v227 = v598[0];
          v228 = v65;
          do
          {
            if (v42)
            {
              v229 = *v62;
              if (!*v62)
              {
                goto LABEL_413;
              }

              if (v24)
              {
                goto LABEL_408;
              }
            }

            else
            {
              v229 = 255;
              if (v24)
              {
LABEL_408:
                if (*v63)
                {
                  v230 = PDAsoftlightPDA_18026(*v70, *v63, *v21, v229);
                  v65 = v228;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v230;
                  *v63 = HIBYTE(v230);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v229;
                }

                goto LABEL_413;
              }
            }

            v231 = PDAsoftlightPDA_18026(*v70, 0xFFu, *v21, v229);
            v65 = v228;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v231;
LABEL_413:
            v70 += v546;
            v63 += *v573;
            if (&v21[v546] >= v65)
            {
              v232 = v226;
            }

            else
            {
              v232 = 0;
            }

            v62 += v225 + v232;
            v21 += v546 + v232;
            --v227;
          }

          while (v227);
          if (v551)
          {
            v233 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v233 = 0;
            }

            v62 = (v555 + v563 + v233);
            v234 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v234 = 0;
            }

            v21 = &v552[v559 + v234];
            v65 += v559 + v234;
            v552 = v21;
            v555 += v563 + v233;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 21:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v574 = v24;
        v244 = v42;
        v245 = -v43;
        while (1)
        {
          v246 = v598[0];
          v247 = v65;
          do
          {
            if (v42)
            {
              v248 = *v62;
              if (!*v62)
              {
                goto LABEL_453;
              }

              if (v24)
              {
                goto LABEL_448;
              }
            }

            else
            {
              v248 = 255;
              if (v24)
              {
LABEL_448:
                if (*v63)
                {
                  v249 = PDAhardlightPDA_18025(*v70, *v63, *v21, v248);
                  v65 = v247;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v249;
                  *v63 = HIBYTE(v249);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v248;
                }

                goto LABEL_453;
              }
            }

            v250 = PDAhardlightPDA_18025(*v70, 0xFFu, *v21, v248);
            v65 = v247;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v250;
LABEL_453:
            v70 += v546;
            v63 += *v574;
            if (&v21[v546] >= v65)
            {
              v251 = v245;
            }

            else
            {
              v251 = 0;
            }

            v62 += v244 + v251;
            v21 += v546 + v251;
            --v246;
          }

          while (v246);
          if (v551)
          {
            v252 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v252 = 0;
            }

            v62 = (v555 + v563 + v252);
            v253 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v253 = 0;
            }

            v21 = &v552[v559 + v253];
            v65 += v559 + v253;
            v552 = v21;
            v555 += v563 + v252;
          }

          else
          {
            v21 += v559;
            v62 += v563;
          }

          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 22:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v577 = v24;
        v302 = v42;
        v303 = -v43;
        while (1)
        {
          v304 = v598[0];
          v305 = v65;
          do
          {
            if (v42)
            {
              v306 = *v62;
              if (!*v62)
              {
                goto LABEL_589;
              }

              if (v24)
              {
                goto LABEL_584;
              }
            }

            else
            {
              v306 = 255;
              if (v24)
              {
LABEL_584:
                if (*v63)
                {
                  v307 = PDAdifferencePDA_18027(*v70, *v63, *v21, v306);
                  v65 = v305;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v307;
                  *v63 = HIBYTE(v307);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v306;
                }

                goto LABEL_589;
              }
            }

            v308 = PDAdifferencePDA_18027(*v70, 0xFFu, *v21, v306);
            v65 = v305;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v308;
LABEL_589:
            v70 += v546;
            v63 += *v577;
            if (&v21[v546] >= v65)
            {
              v309 = v303;
            }

            else
            {
              v309 = 0;
            }

            v62 += v302 + v309;
            v21 += v546 + v309;
            --v304;
          }

          while (v304);
          if (v551)
          {
            v310 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v310 = 0;
            }

            v311 = (v555 + v563 + v310);
            v312 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v312 = 0;
            }

            v21 = &v552[v559 + v312];
            v65 += v559 + v312;
            v62 = v311;
            v552 = v21;
          }

          else
          {
            v21 += v559;
            v62 += v563;
            v311 = v555;
          }

          v555 = v311;
          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 23:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v579 = v24;
        v323 = v42;
        v324 = -v43;
        while (1)
        {
          v325 = v598[0];
          v326 = v65;
          do
          {
            if (v42)
            {
              v327 = *v62;
              if (!*v62)
              {
                goto LABEL_635;
              }

              if (v24)
              {
                goto LABEL_630;
              }
            }

            else
            {
              v327 = 255;
              if (v24)
              {
LABEL_630:
                if (*v63)
                {
                  v328 = PDAexclusionPDA_18028(*v70, *v63, *v21, v327);
                  v65 = v326;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v328;
                  *v63 = HIBYTE(v328);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v327;
                }

                goto LABEL_635;
              }
            }

            v329 = PDAexclusionPDA_18028(*v70, 0xFFu, *v21, v327);
            v65 = v326;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v329;
LABEL_635:
            v70 += v546;
            v63 += *v579;
            if (&v21[v546] >= v65)
            {
              v330 = v324;
            }

            else
            {
              v330 = 0;
            }

            v62 += v323 + v330;
            v21 += v546 + v330;
            --v325;
          }

          while (v325);
          if (v551)
          {
            v331 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v331 = 0;
            }

            v332 = (v555 + v563 + v331);
            v333 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v333 = 0;
            }

            v21 = &v552[v559 + v333];
            v65 += v559 + v333;
            v62 = v332;
            v552 = v21;
          }

          else
          {
            v21 += v559;
            v62 += v563;
            v332 = v555;
          }

          v555 = v332;
          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 24:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v570 = v24;
        v161 = v42;
        v162 = -v43;
        while (1)
        {
          v163 = v598[0];
          v164 = v65;
          do
          {
            if (v42)
            {
              v165 = *v62;
              if (!*v62)
              {
                goto LABEL_271;
              }

              if (v24)
              {
                goto LABEL_266;
              }
            }

            else
            {
              v165 = 255;
              if (v24)
              {
LABEL_266:
                if (*v63)
                {
                  v166 = PDAhuePDA_18029(*v70, *v63, *v21, v165);
                  v65 = v164;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v166;
                  *v63 = HIBYTE(v166);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v165;
                }

                goto LABEL_271;
              }
            }

            v167 = PDAhuePDA_18029(*v70, 0xFFu, *v21, v165);
            v65 = v164;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v167;
LABEL_271:
            v70 += v546;
            v63 += *v570;
            if (&v21[v546] >= v65)
            {
              v168 = v162;
            }

            else
            {
              v168 = 0;
            }

            v62 += v161 + v168;
            v21 += v546 + v168;
            --v163;
          }

          while (v163);
          if (v551)
          {
            v169 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v169 = 0;
            }

            v170 = (v555 + v563 + v169);
            v171 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v171 = 0;
            }

            v21 = &v552[v559 + v171];
            v65 += v559 + v171;
            v62 = v170;
            v552 = v21;
          }

          else
          {
            v21 += v559;
            v62 += v563;
            v170 = v555;
          }

          v555 = v170;
          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 25:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v569 = v24;
        v150 = v42;
        v151 = -v43;
        while (1)
        {
          v152 = v598[0];
          v153 = v65;
          do
          {
            if (v42)
            {
              v154 = *v62;
              if (!*v62)
              {
                goto LABEL_248;
              }

              if (v24)
              {
                goto LABEL_243;
              }
            }

            else
            {
              v154 = 255;
              if (v24)
              {
LABEL_243:
                if (*v63)
                {
                  v155 = PDAhuePDA_18029(*v70, *v63, *v21, v154);
                  v65 = v153;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v155;
                  *v63 = HIBYTE(v155);
                }

                else
                {
                  *v70 = *v21;
                  *v63 = v154;
                }

                goto LABEL_248;
              }
            }

            v156 = PDAhuePDA_18029(*v70, 0xFFu, *v21, v154);
            v65 = v153;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v156;
LABEL_248:
            v70 += v546;
            v63 += *v569;
            if (&v21[v546] >= v65)
            {
              v157 = v151;
            }

            else
            {
              v157 = 0;
            }

            v62 += v150 + v157;
            v21 += v546 + v157;
            --v152;
          }

          while (v152);
          if (v551)
          {
            v158 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v158 = 0;
            }

            v159 = (v555 + v563 + v158);
            v160 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v160 = 0;
            }

            v21 = &v552[v559 + v160];
            v65 += v559 + v160;
            v62 = v159;
            v552 = v21;
          }

          else
          {
            v21 += v559;
            v62 += v563;
            v159 = v555;
          }

          v555 = v159;
          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 26:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v580 = v24;
        v334 = v42;
        v335 = -v43;
        while (1)
        {
          v336 = v598[0];
          v337 = v65;
          do
          {
            if (v42)
            {
              v338 = *v62;
              if (!*v62)
              {
                goto LABEL_658;
              }

              if (v24)
              {
                goto LABEL_653;
              }
            }

            else
            {
              v338 = 255;
              if (v24)
              {
LABEL_653:
                v339 = *v21;
                if (*v63)
                {
                  v340 = PDAluminosityPDA_18031(v339, v338, *v70, *v63);
                  v65 = v337;
                  v42 = v584;
                  LODWORD(v24) = v586;
                  *v70 = v340;
                  *v63 = HIBYTE(v340);
                }

                else
                {
                  *v70 = v339;
                  *v63 = v338;
                }

                goto LABEL_658;
              }
            }

            v341 = PDAluminosityPDA_18031(*v21, v338, *v70, 0xFFu);
            v65 = v337;
            v42 = v584;
            LODWORD(v24) = v586;
            *v70 = v341;
LABEL_658:
            v70 += v546;
            v63 += *v580;
            if (&v21[v546] >= v65)
            {
              v342 = v335;
            }

            else
            {
              v342 = 0;
            }

            v62 += v334 + v342;
            v21 += v546 + v342;
            --v336;
          }

          while (v336);
          if (v551)
          {
            v343 = -(v563 * v550);
            if (&v552[v559] < v551)
            {
              v343 = 0;
            }

            v344 = (v555 + v563 + v343);
            v345 = -(v559 * v550);
            if (&v552[v559] < v551)
            {
              v345 = 0;
            }

            v21 = &v552[v559 + v345];
            v65 += v559 + v345;
            v62 = v344;
            v552 = v21;
          }

          else
          {
            v21 += v559;
            v62 += v563;
            v344 = v555;
          }

          v555 = v344;
          v70 += v557;
          v63 += v561;
          if (!--v588[0])
          {
            goto LABEL_670;
          }
        }

      case 27:
        v555 = v69;
        v537 = v43;
        v539 = v20;
        v544 = v6;
        *v566 = v24;
        v83 = v42;
        v84 = -v43;
        break;
      default:
        goto LABEL_871;
    }

LABEL_84:
    v85 = v598[0];
    v86 = v65;
    while (1)
    {
      if (v42)
      {
        v87 = *v62;
        if (!*v62)
        {
          goto LABEL_93;
        }

        if (!v24)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v87 = 255;
        if (!v24)
        {
LABEL_91:
          v89 = PDAluminosityPDA_18031(*v70, 0xFFu, *v21, v87);
          v65 = v86;
          v42 = v584;
          LODWORD(v24) = v586;
          *v70 = v89;
          goto LABEL_93;
        }
      }

      if (*v63)
      {
        v88 = PDAluminosityPDA_18031(*v70, *v63, *v21, v87);
        v65 = v86;
        v42 = v584;
        LODWORD(v24) = v586;
        *v70 = v88;
        *v63 = HIBYTE(v88);
      }

      else
      {
        *v70 = *v21;
        *v63 = v87;
      }

LABEL_93:
      v70 += v546;
      v63 += *v566;
      if (&v21[v546] >= v65)
      {
        v90 = v84;
      }

      else
      {
        v90 = 0;
      }

      v62 += v83 + v90;
      v21 += v546 + v90;
      if (!--v85)
      {
        if (v551)
        {
          v91 = -(v563 * v550);
          if (&v552[v559] < v551)
          {
            v91 = 0;
          }

          v92 = (v555 + v563 + v91);
          v93 = -(v559 * v550);
          if (&v552[v559] < v551)
          {
            v93 = 0;
          }

          v21 = &v552[v559 + v93];
          v65 += v559 + v93;
          v62 = v92;
          v552 = v21;
        }

        else
        {
          v21 += v559;
          v62 += v563;
          v92 = v555;
        }

        v555 = v92;
        v70 += v557;
        v63 += v561;
        if (!--v588[0])
        {
LABEL_670:
          v547 = v65;
          v10 = v535;
          v8 = v536;
          v6 = v544;
          v20 = v539;
          v21 = v549;
          v43 = v537;
LABEL_872:
          v61 = v548;
LABEL_873:
          if (!v61)
          {
            return 1;
          }

          v587 = 0;
LABEL_875:
          if (!shape_enum_clip_next(v61, &v587 + 1, &v587, v598, v588))
          {
            v56 = v61;
            goto LABEL_1168;
          }

          v548 = v61;
          v549 = v21;
          if (v551)
          {
            v70 = (v541 + v20 * v587 + SHIDWORD(v587));
            v409 = (v587 + *(v10 + 60)) % v550;
            v64 = v598[0];
            v410 = (HIDWORD(v587) + *(v10 + 56)) % v43;
            v411 = &v21[v559 * v409];
            v21 = &v411[v410];
            v65 = &v411[v43];
            v24 = v586;
            if (v586)
            {
              v63 = &v545[v542 * v587 + SHIDWORD(v587)];
            }

            v412 = v561;
            if (v586)
            {
              v412 = v542 - v598[0];
            }

            v561 = v412;
            if (v584)
            {
              v42 = v584;
            }

            else
            {
              v42 = 0;
            }

            v69 = v555;
            if (v584)
            {
              v69 = &v6[v563 * v409 + v410];
              v62 = v69;
            }

            LODWORD(v11) = v598[0];
            v552 = v21;
            v533 = (HIDWORD(v587) + *(v10 + 56)) % v43;
            v534 = (v587 + *(v10 + 60)) % v550;
          }

          else
          {
            LODWORD(v11) = v598[0];
            v70 = (v541 + v20 * v587 + SHIDWORD(v587) * v546);
            v64 = v598[0] * v546;
            v21 += v587 * v43 + SHIDWORD(v587) * v546;
            v559 = v43 - v598[0] * v546;
            v24 = v586;
            if (v586)
            {
              v63 = &v545[v542 * v587 + SHIDWORD(v587) * v546];
            }

            v413 = v561;
            if (v586)
            {
              v413 = v542 - v598[0] * v546;
            }

            v561 = v413;
            if (v584)
            {
              v42 = v584;
            }

            else
            {
              v42 = 0;
            }

            v551 = 0;
            if (v584)
            {
              v62 = &v6[v587 * v550 + SHIDWORD(v587) * v546];
            }

            v414 = v563;
            if (v584)
            {
              v414 = v550 - v64;
            }

            v563 = v414;
            v65 = v547;
            v69 = v555;
          }

          goto LABEL_66;
        }

        goto LABEL_84;
      }
    }
  }

  v16 = *(v3 + 128);
  if ((v16 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      W8_mark_constmask(v3, v8);
    }

    else
    {
      W8_mark_pixelmask(v3, v8);
    }

    return 1;
  }

  v25 = *(v3 + 112);
  v26 = *(v3 + 116);
  v27 = (v25 + 15) & 0xFFFFFFF0;
  v28 = v27 * v26;
  if (v28 <= 4096)
  {
    v30 = v598;
LABEL_38:
    CGSConvertBitsToMask(v15, *(v10 + 124), v30, v27, v25, v26, v16);
    v51 = *(v10 + 112);
    v594 = *(v10 + 96);
    v595 = v51;
    v52 = *(v10 + 144);
    v596 = *(v10 + 128);
    v597 = v52;
    v53 = *(v10 + 48);
    v590 = *(v10 + 32);
    v591 = v53;
    v54 = *(v10 + 80);
    v592 = *(v10 + 64);
    v593 = v54;
    v55 = *(v10 + 16);
    *v588 = *v10;
    v589 = v55;
    HIDWORD(v595) = (v25 + 15) & 0xFFFFFFF0;
    *(&v596 + 1) = v30;
    if (BYTE1(v588[0]) << 8 == 1024)
    {
      W8_mark_constmask(v588, v8);
    }

    else
    {
      W8_mark_pixelmask(v588, v8);
    }

    if (v30 != v598)
    {
      v56 = v30;
      goto LABEL_1168;
    }

    return 1;
  }

  v29 = malloc_type_malloc(v28, 0x97CEE3C3uLL);
  if (v29)
  {
    v30 = v29;
    v15 = *(v10 + 136);
    v16 = *(v10 + 128);
    goto LABEL_38;
  }

  return 1;
}

uint64_t W8_mark_constmask(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = *v4 << 24;
  }

  else
  {
    v5 = -16777216;
  }

  v7 = *(a1 + 4);
  v6 = *(a1 + 8);
  v250 = *(a1 + 28);
  v8 = *(a1 + 136);
  v246 = *(a1 + 40);
  v9 = **(a1 + 88);
  v10 = v5 | v9;
  pthread_mutex_lock(&W8_cacheColorLock);
  v11 = W8_cacheColor;
  if (W8_cacheColor && *(W8_cacheColor + 16) == v10)
  {
    result = pthread_mutex_unlock(&W8_cacheColorLock);
    v13 = v11 + 8;
  }

  else
  {
    v248 = v7;
    v14 = 0;
    while (1)
    {
      if (!v11)
      {
        goto LABEL_12;
      }

      v15 = v14;
      v14 = v11;
      if (*(v11 + 16) == v10)
      {
        break;
      }

      v11 = *v11;
      if (!*v14)
      {
        if (W8_cacheColorCount > 6)
        {
          *v15 = 0;
          v18 = *(v14 + 8);
        }

        else
        {
LABEL_12:
          v16 = W8_cacheColorBase;
          if (W8_cacheColorBase)
          {
            v17 = W8_cacheColorCount;
          }

          else
          {
            v16 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x10200408056D5EBuLL);
            v17 = 0;
            W8_cacheColorBase = v16;
          }

          v14 = v16 + 24 * v17;
          v18 = v16 + 1024 * v17 + 168;
          *(v14 + 8) = v18;
          W8_cacheColorCount = v17 + 1;
        }

        v19 = 0;
        *v14 = W8_cacheColor;
        W8_cacheColor = v14;
        *(v14 + 16) = v10;
        v20 = vdupq_n_s32(v9 | (v5 >> 8));
        v21 = xmmword_18439CB90;
        v22 = vdupq_n_s32(v10);
        v23.i64[0] = 0xFF000000FFLL;
        v23.i64[1] = 0xFF000000FFLL;
        v24.i64[0] = 0x1000100010001;
        v24.i64[1] = 0x1000100010001;
        v25.i64[0] = 0xFF000000FF000000;
        v25.i64[1] = 0xFF000000FF000000;
        v26.i64[0] = 0x400000004;
        v26.i64[1] = 0x400000004;
        do
        {
          v27 = vmulq_s32(veorq_s8(v21, v23), v20);
          v28 = vaddq_s32(vaddq_s32(v27, v24), (*&vshrq_n_u32(v27, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
          *(v18 + v19) = vsubq_s32(v22, vorrq_s8(vandq_s8(v28, v25), vandq_s8(vshrq_n_u32(v28, 8uLL), v23)));
          v21 = vaddq_s32(v21, v26);
          v19 += 16;
        }

        while (v19 != 1024);
        v13 = v14 + 8;
        result = pthread_mutex_unlock(&W8_cacheColorLock);
        goto LABEL_23;
      }
    }

    if (v15)
    {
      *v15 = *v11;
      *v11 = W8_cacheColor;
      W8_cacheColor = v11;
    }

    result = pthread_mutex_unlock(&W8_cacheColorLock);
    v13 = v11 + 8;
LABEL_23:
    v7 = v248;
  }

  v29 = *v13;
  v30 = *(*v13 + 1020);
  v32 = *(a1 + 12);
  v31 = *(a1 + 16);
  if (v3)
  {
    v33 = *(a1 + 32);
    v34 = (v3 + v33 * v31 + v32);
    v35 = 1;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v35 = 0;
  }

  if (v8)
  {
    v36 = v33 - v7;
    if (v3)
    {
      v33 -= v7;
    }

    v249 = v33;
    v37 = HIBYTE(v30);
    v38 = (v246 + v31 * v250 + v32);
    v39 = *(a1 + 124);
    v40 = v8 + *(a1 + 108) * v39 + *(a1 + 104);
    v41 = v39 - v7;
    v251 = v250 - v7;
    switch(a2)
    {
      case 0:
        if (v3)
        {
          do
          {
            v42 = v7;
            do
            {
              v43 = *v40;
              if (*v40)
              {
                if (v43 == 255)
                {
                  LOBYTE(v44) = 0;
                  *v38 = 0;
                }

                else
                {
                  v45 = *v38;
                  v46 = *v34;
                  v47 = (v45 | (v46 << 16)) * v43 + 65537 + ((((v45 | (v46 << 16)) * v43) >> 8) & 0xFF00FF);
                  v48 = v45 | (v46 << 24);
                  *v38 = v48 - BYTE1(v47);
                  v44 = (v48 - (v47 & 0xFF000000 | BYTE1(v47))) >> 24;
                }

                *v34 = v44;
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v42;
            }

            while (v42);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v79 = v7;
            do
            {
              v80 = *v40;
              if (*v40)
              {
                if (v80 == 255)
                {
                  LOBYTE(v81) = 0;
                }

                else
                {
                  v81 = *v38 - ((*v38 * v80 + ((*v38 * v80) >> 8) + 1) >> 8);
                }

                *v38 = v81;
              }

              ++v40;
              ++v38;
              --v79;
            }

            while (v79);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 1:
        v131 = v40 & 3;
        if (!v3)
        {
          v172 = -1 << (8 * v131);
          if ((v40 & 3) != 0)
          {
            v173 = v40 & 0xFC;
          }

          else
          {
            v173 = v40;
          }

          if ((v40 & 3) != 0)
          {
            v174 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v172 = -1;
            v174 = v40;
          }

          if ((v40 & 3) != 0)
          {
            v175 = &v38[-(v40 & 3)];
          }

          else
          {
            v175 = v38;
          }

          if ((v40 & 3) != 0)
          {
            v176 = v131 + v7;
          }

          else
          {
            v176 = v7;
          }

          if (((v176 + v173) & 3) != 0)
          {
            v177 = 4 - ((v176 + v173) & 3);
            v131 += v177;
            v178 = 0xFFFFFFFF >> (8 * v177);
            if (v176 >= 4)
            {
              v179 = v178;
            }

            else
            {
              v179 = 0;
            }

            if (v176 >= 4)
            {
              v178 = -1;
            }

            v172 &= v178;
          }

          else
          {
            v179 = 0;
          }

          v236 = v41 - v131;
          v237 = v176 >> 2;
          v238 = v251 - v131;
          while (1)
          {
            v239 = *v174 & v172;
            v240 = v237;
            result = v179;
            if (!v239)
            {
              goto LABEL_481;
            }

LABEL_479:
            if (v239 == -1)
            {
              *v175 = 16843009 * v30;
              goto LABEL_481;
            }

            while (1)
            {
              if (v239)
              {
                LOBYTE(v242) = v30;
                if (v239 != 255)
                {
                  v242 = *(v29 + 4 * v239) + (((v239 ^ 0xFF) * *v175 + (((v239 ^ 0xFF) * *v175) >> 8) + 1) >> 8);
                }

                *v175 = v242;
              }

              if (BYTE1(v239))
              {
                LOBYTE(v243) = v30;
                if (BYTE1(v239) != 255)
                {
                  v243 = *(v29 + 4 * BYTE1(v239)) + (((BYTE1(v239) ^ 0xFF) * v175[1] + (((BYTE1(v239) ^ 0xFF) * v175[1]) >> 8) + 1) >> 8);
                }

                v175[1] = v243;
              }

              if (BYTE2(v239))
              {
                LOBYTE(v244) = v30;
                if (BYTE2(v239) != 255)
                {
                  v244 = *(v29 + 4 * BYTE2(v239)) + (((BYTE2(v239) ^ 0xFF) * v175[2] + (((BYTE2(v239) ^ 0xFF) * v175[2]) >> 8) + 1) >> 8);
                }

                v175[2] = v244;
              }

              v245 = HIBYTE(v239);
              if (v245 == 255)
              {
                v175[3] = v30;
              }

              else if (v245)
              {
                v175[3] = *(v29 + 4 * v245) + (((v245 ^ 0xFF) * v175[3] + (((v245 ^ 0xFF) * v175[3]) >> 8) + 1) >> 8);
              }

LABEL_481:
              while (1)
              {
                v241 = v240;
                v175 += 4;
                --v240;
                ++v174;
                if (v241 < 2)
                {
                  break;
                }

                v239 = *v174;
                if (*v174)
                {
                  goto LABEL_479;
                }
              }

              if (!result)
              {
                break;
              }

              result = 0;
              v239 = *v174 & v179;
            }

            v174 = (v174 + v236);
            v175 += v238;
            if (!--v6)
            {
              return result;
            }
          }
        }

        v132 = -1 << (8 * v131);
        v133 = &v38[-(v40 & 3)];
        if ((v40 & 3) != 0)
        {
          v134 = v40 & 0xFC;
        }

        else
        {
          v134 = v40;
        }

        if ((v40 & 3) != 0)
        {
          v135 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v132 = -1;
          v135 = v40;
        }

        if ((v40 & 3) != 0)
        {
          v136 = &v34[-(v40 & 3)];
        }

        else
        {
          v136 = v34;
        }

        if ((v40 & 3) != 0)
        {
          v137 = v131 + v7;
        }

        else
        {
          v133 = v38;
          v137 = v7;
        }

        if (((v137 + v134) & 3) != 0)
        {
          v138 = 4 - ((v137 + v134) & 3);
          v131 += v138;
          v139 = 0xFFFFFFFF >> (8 * v138);
          if (v137 >= 4)
          {
            v140 = v139;
          }

          else
          {
            v140 = 0;
          }

          if (v137 >= 4)
          {
            v139 = -1;
          }

          v132 &= v139;
        }

        else
        {
          v140 = 0;
        }

        v209 = v41 - v131;
        result = v251 - v131;
        v210 = v137 >> 2;
        v211 = v36 - v131;
        do
        {
          v212 = *v135 & v132;
          v213 = v210;
          v214 = v140;
          if (!v212)
          {
            goto LABEL_429;
          }

LABEL_427:
          if (v212 == -1)
          {
            *v133 = v30;
            *v136 = HIBYTE(v30);
            v133[1] = v30;
            v136[1] = HIBYTE(v30);
            v133[2] = v30;
            v136[2] = HIBYTE(v30);
LABEL_450:
            v133[3] = v30;
            v136[3] = HIBYTE(v30);
            goto LABEL_429;
          }

          while (1)
          {
            if (v212)
            {
              if (v212 == 255)
              {
                *v133 = v30;
                v216 = HIBYTE(v30);
              }

              else
              {
                v217 = *(v29 + 4 * v212);
                v218 = (*v133 | (*v136 << 16)) * (v212 ^ 0xFF);
                *v133 = ((v218 + 1 + BYTE1(v218)) >> 8) + v217;
                v216 = (((v218 + 65537 + ((v218 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v218 + 1 + BYTE1(v218)) >> 8)) + (v217 & 0xFF0000FF)) >> 24;
              }

              *v136 = v216;
            }

            if (BYTE1(v212))
            {
              if (BYTE1(v212) == 255)
              {
                v133[1] = v30;
                v219 = HIBYTE(v30);
              }

              else
              {
                v220 = *(v29 + 4 * BYTE1(v212));
                v221 = (v133[1] | (v136[1] << 16)) * (BYTE1(v212) ^ 0xFF);
                v133[1] = ((v221 + 1 + BYTE1(v221)) >> 8) + v220;
                v219 = (((v221 + 65537 + ((v221 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v221 + 1 + BYTE1(v221)) >> 8)) + (v220 & 0xFF0000FF)) >> 24;
              }

              v136[1] = v219;
            }

            if (BYTE2(v212))
            {
              if (BYTE2(v212) == 255)
              {
                v133[2] = v30;
                v222 = HIBYTE(v30);
              }

              else
              {
                v223 = *(v29 + 4 * BYTE2(v212));
                v224 = (v133[2] | (v136[2] << 16)) * (BYTE2(v212) ^ 0xFF);
                v133[2] = ((v224 + 1 + BYTE1(v224)) >> 8) + v223;
                v222 = (((v224 + 65537 + ((v224 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v224 + 1 + BYTE1(v224)) >> 8)) + (v223 & 0xFF0000FF)) >> 24;
              }

              v136[2] = v222;
            }

            v225 = HIBYTE(v212);
            if (v225 == 255)
            {
              goto LABEL_450;
            }

            if (v225)
            {
              v226 = *(v29 + 4 * v225);
              v227 = (v133[3] | (v136[3] << 16)) * (v225 ^ 0xFF);
              v133[3] = ((v227 + 1 + BYTE1(v227)) >> 8) + v226;
              v136[3] = (((v227 + 65537 + ((v227 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v227 + 1 + BYTE1(v227)) >> 8)) + (v226 & 0xFF0000FF)) >> 24;
            }

LABEL_429:
            while (1)
            {
              v215 = v213;
              v133 += 4;
              v136 += 4;
              --v213;
              ++v135;
              if (v215 < 2)
              {
                break;
              }

              v212 = *v135;
              if (*v135)
              {
                goto LABEL_427;
              }
            }

            if (!v214)
            {
              break;
            }

            v214 = 0;
            v212 = *v135 & v140;
          }

          v135 = (v135 + v209);
          v133 += result;
          v136 += v211;
          --v6;
        }

        while (v6);
        return result;
      case 2:
        v105 = v40 & 3;
        if (v3)
        {
          v106 = -1 << (8 * v105);
          v107 = &v38[-(v40 & 3)];
          if ((v40 & 3) != 0)
          {
            v108 = v40 & 0xFC;
          }

          else
          {
            v108 = v40;
          }

          if ((v40 & 3) != 0)
          {
            v109 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v106 = -1;
            v109 = v40;
          }

          if ((v40 & 3) != 0)
          {
            v110 = &v34[-(v40 & 3)];
          }

          else
          {
            v110 = v34;
          }

          if ((v40 & 3) != 0)
          {
            v111 = v105 + v7;
          }

          else
          {
            v107 = v38;
            v111 = v7;
          }

          if (((v111 + v108) & 3) != 0)
          {
            v112 = 4 - ((v111 + v108) & 3);
            v105 += v112;
            v113 = 0xFFFFFFFF >> (8 * v112);
            if (v111 >= 4)
            {
              v114 = v113;
            }

            else
            {
              v114 = 0;
            }

            if (v111 >= 4)
            {
              v113 = -1;
            }

            v106 &= v113;
          }

          else
          {
            v114 = 0;
          }

          v180 = v41 - v105;
          v181 = v251 - v105;
          result = (v111 >> 2);
          v182 = ~HIBYTE(v30);
          v183 = v30 & 0xFF0000FF;
          v184 = v36 - v105;
          while (1)
          {
            v185 = *v109 & v106;
            v186 = result;
            v187 = v114;
            if (!v185)
            {
              goto LABEL_408;
            }

LABEL_406:
            if (v185 == -1)
            {
              break;
            }

            while (1)
            {
              if (v185)
              {
                v197 = *(v29 + 4 * v185);
                v198 = (*v107 | (*v110 << 16)) * (~v197 >> 24);
                v199 = ((v198 + 65537 + ((v198 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v198 + 1 + BYTE1(v198)) >> 8)) + (v197 & 0xFF0000FF);
                *v107 = v199;
                *v110 = HIBYTE(v199);
              }

              if ((v185 & 0xFF00) != 0)
              {
                v200 = *(v29 + 4 * BYTE1(v185));
                v201 = (v107[1] | (v110[1] << 16)) * (~v200 >> 24);
                v202 = ((v201 + 65537 + ((v201 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v201 + 1 + BYTE1(v201)) >> 8)) + (v200 & 0xFF0000FF);
                v107[1] = v202;
                v110[1] = HIBYTE(v202);
              }

              if ((v185 & 0xFF0000) != 0)
              {
                v203 = *(v29 + 4 * BYTE2(v185));
                v204 = (v107[2] | (v110[2] << 16)) * (~v203 >> 24);
                v205 = ((v204 + 65537 + ((v204 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v204 + 1 + BYTE1(v204)) >> 8)) + (v203 & 0xFF0000FF);
                v107[2] = v205;
                v110[2] = HIBYTE(v205);
              }

              v206 = HIBYTE(v185);
              if (v206)
              {
                v207 = *(v29 + 4 * v206);
                v208 = (v107[3] | (v110[3] << 16)) * (~v207 >> 24);
                v195 = ((v208 + 65537 + ((v208 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v208 + 1 + BYTE1(v208)) >> 8)) + (v207 & 0xFF0000FF);
                goto LABEL_421;
              }

LABEL_408:
              while (1)
              {
                v196 = v186;
                v107 += 4;
                v110 += 4;
                --v186;
                ++v109;
                if (v196 < 2)
                {
                  break;
                }

                v185 = *v109;
                if (*v109)
                {
                  goto LABEL_406;
                }
              }

              if (!v187)
              {
                break;
              }

              v187 = 0;
              v185 = *v109 & v114;
            }

            v109 = (v109 + v180);
            v107 += v181;
            v110 += v184;
            if (!--v6)
            {
              return result;
            }
          }

          v188 = (*v107 | (*v110 << 16)) * v182;
          v189 = ((v188 + 65537 + ((v188 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v188 + 1 + BYTE1(v188)) >> 8)) + v183;
          *v107 = v189;
          *v110 = HIBYTE(v189);
          v190 = (v107[1] | (v110[1] << 16)) * v182;
          v191 = ((v190 + 65537 + ((v190 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v190 + 1 + BYTE1(v190)) >> 8)) + v183;
          v107[1] = v191;
          v110[1] = HIBYTE(v191);
          v192 = (v107[2] | (v110[2] << 16)) * v182;
          v193 = ((v192 + 65537 + ((v192 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v192 + 1 + BYTE1(v192)) >> 8)) + v183;
          v107[2] = v193;
          v110[2] = HIBYTE(v193);
          v194 = (v107[3] | (v110[3] << 16)) * v182;
          v195 = ((v194 + 65537 + ((v194 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v194 + 1 + BYTE1(v194)) >> 8)) + v183;
LABEL_421:
          v107[3] = v195;
          v110[3] = HIBYTE(v195);
          goto LABEL_408;
        }

        v164 = -1 << (8 * v105);
        if ((v40 & 3) != 0)
        {
          v165 = v40 & 0xFC;
        }

        else
        {
          v165 = v40;
        }

        if ((v40 & 3) != 0)
        {
          v166 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v164 = -1;
          v166 = v40;
        }

        if ((v40 & 3) != 0)
        {
          v167 = &v38[-(v40 & 3)];
        }

        else
        {
          v167 = v38;
        }

        if ((v40 & 3) != 0)
        {
          v168 = v105 + v7;
        }

        else
        {
          v168 = v7;
        }

        if (((v168 + v165) & 3) != 0)
        {
          v169 = 4 - ((v168 + v165) & 3);
          v105 += v169;
          v170 = 0xFFFFFFFF >> (8 * v169);
          if (v168 >= 4)
          {
            v171 = v170;
          }

          else
          {
            v171 = 0;
          }

          if (v168 >= 4)
          {
            v170 = -1;
          }

          v164 &= v170;
        }

        else
        {
          v171 = 0;
        }

        v228 = v168 >> 2;
        v229 = ~HIBYTE(v30);
        break;
      case 3:
        do
        {
          v115 = v7;
          do
          {
            v116 = *v40;
            if (*v40)
            {
              if (v116 == 255)
              {
                v117 = *(v29 + 4 * *v34);
              }

              else
              {
                v118 = *v34;
                v119 = *(v29 + 4 * ((v118 * v116 + ((v118 * v116) >> 8) + 1) >> 8));
                v120 = (*v38 | (v118 << 16)) * (v116 ^ 0xFF) + 65537 + ((((*v38 | (v118 << 16)) * (v116 ^ 0xFFu)) >> 8) & 0xFF00FF);
                v117 = (v120 & 0xFF000000 | BYTE1(v120)) + (v119 & 0xFF0000FF);
              }

              *v38 = v117;
              *v34 = HIBYTE(v117);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v115;
          }

          while (v115);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 4:
        do
        {
          v89 = v7;
          do
          {
            v90 = *v40;
            if (*v40)
            {
              if (v90 == 255)
              {
                v91 = *(v29 + 4 * ~*v34);
              }

              else
              {
                v92 = *v34;
                v93 = *(v29 + 4 * (((v92 ^ 0xFF) * v90 + (((v92 ^ 0xFFu) * v90) >> 8) + 1) >> 8));
                v94 = (*v38 | (v92 << 16)) * (v90 ^ 0xFF) + 65537 + ((((*v38 | (v92 << 16)) * (v90 ^ 0xFFu)) >> 8) & 0xFF00FF);
                v91 = (v94 & 0xFF000000 | BYTE1(v94)) + (v93 & 0xFF0000FF);
              }

              *v38 = v91;
              *v34 = HIBYTE(v91);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v89;
          }

          while (v89);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 5:
        do
        {
          v141 = v7;
          do
          {
            if (*v40)
            {
              v142 = *(v29 + 4 * *v40);
              v143 = (v142 | (HIBYTE(v142) << 16)) * *v34 + (*v38 | (*v34 << 16)) * (HIBYTE(v142) ^ 0xFF);
              v144 = v143 + 65537 + ((v143 >> 8) & 0xFF00FF);
              *v38 = BYTE1(v144);
              *v34 = HIBYTE(v144);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v141;
          }

          while (v141);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 6:
        do
        {
          v145 = v7;
          do
          {
            v146 = *v40;
            if (*v40)
            {
              v147 = *v34;
              if (v147 != 0xFF)
              {
                if (~v147 == 255)
                {
                  v148 = *(v29 + 4 * v146);
                }

                else
                {
                  v149 = (*(v29 + 4 * v146) | (HIBYTE(*(v29 + 4 * v146)) << 16)) * ~v147;
                  v148 = ((v149 + 65537 + ((v149 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v149 + 1 + BYTE1(v149)) >> 8)) + (*v38 | (v147 << 24));
                }

                *v38 = v148;
                *v34 = HIBYTE(v148);
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v145;
          }

          while (v145);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 7:
        if (v3)
        {
          do
          {
            v121 = v7;
            do
            {
              v122 = *v40;
              if (*v40)
              {
                v123 = *v38;
                v124 = *v34;
                if (v122 == 255)
                {
                  v125 = (v123 | (v124 << 16)) * (v37 ^ 0xFF);
                }

                else
                {
                  v125 = (v123 | (v124 << 16)) * (v122 - ((v37 * v122 + ((v37 * v122) >> 8) + 1) >> 8));
                }

                v126 = (v123 | (v124 << 24)) - ((v125 + 65537 + ((v125 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v125 + 1 + BYTE1(v125)) >> 8));
                *v38 = v126;
                *v34 = HIBYTE(v126);
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v121;
            }

            while (v121);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v127 = v7;
            do
            {
              v128 = *v40;
              if (*v40)
              {
                if (v128 == 255)
                {
                  LOBYTE(v129) = *v38;
                  v130 = v37 ^ 0xFF;
                }

                else
                {
                  v130 = *v38;
                  v129 = v128 - ((v37 * v128 + ((v37 * v128) >> 8) + 1) >> 8);
                }

                *v38 -= (v130 * v129 + ((v130 * v129) >> 8) + 1) >> 8;
              }

              ++v40;
              ++v38;
              --v127;
            }

            while (v127);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 8:
        if (v3)
        {
          do
          {
            v154 = v7;
            do
            {
              v155 = *v40;
              if (*v40)
              {
                v156 = *v38;
                v157 = *v34;
                if (v155 == 255)
                {
                  v158 = (v156 | (v157 << 16)) * v37;
                }

                else
                {
                  v158 = (v156 | (v157 << 16)) * ((v37 * v155 + ((v37 * v155) >> 8) + 1) >> 8);
                }

                v159 = (v156 | (v157 << 24)) - ((v158 + 65537 + ((v158 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v158 + 1 + BYTE1(v158)) >> 8));
                *v38 = v159;
                *v34 = HIBYTE(v159);
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v154;
            }

            while (v154);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v160 = v7;
            do
            {
              v161 = *v40;
              if (*v40)
              {
                v162 = *v38;
                if (v161 == 255)
                {
                  v163 = v37 * v162;
                }

                else
                {
                  v163 = ((v37 * v161 + ((v37 * v161) >> 8) + 1) >> 8) * v162;
                }

                *v38 = v162 - ((v163 + (v163 >> 8) + 1) >> 8);
              }

              ++v40;
              ++v38;
              --v160;
            }

            while (v160);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 9:
        do
        {
          v100 = v7;
          do
          {
            v101 = *v40;
            if (*v40)
            {
              v102 = *v34;
              v103 = *(v29 + 4 * v101);
              v104 = (v103 | (HIBYTE(v103) << 16)) * (v102 ^ 0xFF) + (*v38 | (v102 << 16)) * (~v101 + HIBYTE(v103)) + 65537 + ((((v103 | (HIBYTE(v103) << 16)) * (v102 ^ 0xFF) + (*v38 | (v102 << 16)) * (~v101 + HIBYTE(v103))) >> 8) & 0xFF00FF);
              *v38 = BYTE1(v104);
              *v34 = HIBYTE(v104);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v100;
          }

          while (v100);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 10:
        do
        {
          v150 = v7;
          do
          {
            if (*v40)
            {
              v151 = *(v29 + 4 * *v40);
              v152 = (v151 | (HIBYTE(v151) << 16)) * (*v34 ^ 0xFF) + (*v38 | (*v34 << 16)) * (HIBYTE(v151) ^ 0xFF);
              v153 = v152 + 65537 + ((v152 >> 8) & 0xFF00FF);
              *v38 = BYTE1(v153);
              *v34 = HIBYTE(v153);
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v150;
          }

          while (v150);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 11:
        if (v3)
        {
          do
          {
            v82 = v7;
            do
            {
              if (*v40)
              {
                v83 = *(v29 + 4 * *v40);
                v84 = ((HIBYTE(v83) - v83) | (HIBYTE(v83) << 16)) + (*v34 - *v38) + (*v34 << 16);
                v85 = (255 * ((v84 >> 8) & 0x10001)) | v84;
                *v38 = BYTE2(v85) - v85;
                *v34 = BYTE2(v85);
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v82;
            }

            while (v82);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v86 = v7;
            do
            {
              if (*v40)
              {
                v87 = (*v38 ^ 0xFF) - *(v29 + 4 * *v40) + HIBYTE(*(v29 + 4 * *v40));
                v88 = BYTE1(v87) | (2 * BYTE1(v87)) | (4 * (BYTE1(v87) | (2 * BYTE1(v87))));
                *v38 = ~((~*v38 - *(v29 + 4 * *v40) + HIBYTE(*(v29 + 4 * *v40))) | (16 * v88) | v88);
              }

              ++v40;
              ++v38;
              --v86;
            }

            while (v86);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 12:
        if (v3)
        {
          do
          {
            v95 = v7;
            do
            {
              if (*v40)
              {
                v96 = (*(v29 + 4 * *v40) | (HIBYTE(*(v29 + 4 * *v40)) << 16)) + (*v38 | (*v34 << 16));
                v97 = (255 * ((v96 >> 8) & 0x10001)) | v96;
                *v38 = v97;
                *v34 = BYTE2(v97);
              }

              ++v40;
              ++v38;
              v34 += v35;
              --v95;
            }

            while (v95);
            v40 += v41;
            v38 += v251;
            v34 += v249;
            --v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v98 = v7;
            do
            {
              if (*v40)
              {
                v99 = *(v29 + 4 * *v40) + *v38;
                *v38 = -(v99 >> 8) | v99;
              }

              ++v40;
              ++v38;
              --v98;
            }

            while (v98);
            v40 += v41;
            v38 += v251;
            --v6;
          }

          while (v6);
        }

        return result;
      case 13:
        do
        {
          v67 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v68 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAmultiplyPDA_18018(*v38, *v34, *(v29 + 4 * *v40), v68);
                    v68 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v68;
                }

                else
                {
                  result = PDAmultiplyPDA_18018(*v38, 255, *(v29 + 4 * *v40), v68);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v67;
          }

          while (v67);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 14:
        do
        {
          v53 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v54 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAscreenPDA_18019(*v38, *v34, *(v29 + 4 * *v40), v54);
                    v54 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v54;
                }

                else
                {
                  result = PDAscreenPDA_18019(*v38, 255, *(v29 + 4 * *v40), v54);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v53;
          }

          while (v53);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 15:
        do
        {
          v59 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v60 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAoverlayPDA_18020(*v38, *v34, *(v29 + 4 * *v40), v60);
                    v60 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v60;
                }

                else
                {
                  result = PDAoverlayPDA_18020(*v38, 0xFFu, *(v29 + 4 * *v40), v60);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v59;
          }

          while (v59);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 16:
        do
        {
          v51 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v52 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAdarkenPDA_18022(*v38, *v34, *(v29 + 4 * *v40), v52);
                    v52 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v52;
                }

                else
                {
                  result = PDAdarkenPDA_18022(*v38, 0xFFu, *(v29 + 4 * *v40), v52);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v51;
          }

          while (v51);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 17:
        do
        {
          v61 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v62 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAlightenPDA_18021(*v38, *v34, *(v29 + 4 * *v40), v62);
                    v62 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v62;
                }

                else
                {
                  result = PDAlightenPDA_18021(*v38, 0xFFu, *(v29 + 4 * *v40), v62);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v61;
          }

          while (v61);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 18:
        do
        {
          v69 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v70 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAcolordodgePDA_18023(*v38, *v34, *(v29 + 4 * *v40), v70);
                    v70 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v70;
                }

                else
                {
                  result = PDAcolordodgePDA_18023(*v38, 0xFFu, *(v29 + 4 * *v40), v70);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v69;
          }

          while (v69);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 19:
        do
        {
          v73 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v74 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAcolorburnPDA_18024(*v38, *v34, *(v29 + 4 * *v40), v74);
                    v74 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v74;
                }

                else
                {
                  result = PDAcolorburnPDA_18024(*v38, 0xFFu, *(v29 + 4 * *v40), v74);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v73;
          }

          while (v73);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 20:
        do
        {
          v63 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v64 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAsoftlightPDA_18026(*v38, *v34, *(v29 + 4 * *v40), v64);
                    v64 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v64;
                }

                else
                {
                  result = PDAsoftlightPDA_18026(*v38, 0xFFu, *(v29 + 4 * *v40), v64);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v63;
          }

          while (v63);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 21:
        do
        {
          v65 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v66 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAhardlightPDA_18025(*v38, *v34, *(v29 + 4 * *v40), v66);
                    v66 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v66;
                }

                else
                {
                  result = PDAhardlightPDA_18025(*v38, 0xFFu, *(v29 + 4 * *v40), v66);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v65;
          }

          while (v65);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 22:
        do
        {
          v71 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v72 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAdifferencePDA_18027(*v38, *v34, *(v29 + 4 * *v40), v72);
                    v72 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v72;
                }

                else
                {
                  result = PDAdifferencePDA_18027(*v38, 0xFFu, *(v29 + 4 * *v40), v72);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v71;
          }

          while (v71);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 23:
        do
        {
          v75 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v76 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAexclusionPDA_18028(*v38, *v34, *(v29 + 4 * *v40), v76);
                    v76 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v76;
                }

                else
                {
                  result = PDAexclusionPDA_18028(*v38, 0xFFu, *(v29 + 4 * *v40), v76);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v75;
          }

          while (v75);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 24:
        do
        {
          v57 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v58 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAhuePDA_18029(*v38, *v34, *(v29 + 4 * *v40), v58);
                    v58 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v58;
                }

                else
                {
                  result = PDAhuePDA_18029(*v38, 0xFFu, *(v29 + 4 * *v40), v58);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v57;
          }

          while (v57);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 25:
        do
        {
          v55 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v56 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAhuePDA_18029(*v38, *v34, *(v29 + 4 * *v40), v56);
                    v56 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v56;
                }

                else
                {
                  result = PDAhuePDA_18029(*v38, 0xFFu, *(v29 + 4 * *v40), v56);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v55;
          }

          while (v55);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 26:
        do
        {
          v77 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v78 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAluminosityPDA_18031(*(v29 + 4 * *v40), v78, *v38, *v34);
                    v78 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v78;
                }

                else
                {
                  result = PDAluminosityPDA_18031(*(v29 + 4 * *v40), v78, *v38, 0xFFu);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v77;
          }

          while (v77);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      case 27:
        do
        {
          v49 = v7;
          do
          {
            if (*v40)
            {
              result = *(v29 + 4 * *v40);
              v50 = BYTE3(result);
              if (BYTE3(result))
              {
                if (v3)
                {
                  if (*v34)
                  {
                    result = PDAluminosityPDA_18031(*v38, *v34, *(v29 + 4 * *v40), v50);
                    v50 = BYTE3(result);
                  }

                  *v38 = result;
                  *v34 = v50;
                }

                else
                {
                  result = PDAluminosityPDA_18031(*v38, 0xFFu, *(v29 + 4 * *v40), v50);
                  *v38 = result;
                }
              }
            }

            ++v40;
            ++v38;
            v34 += v35;
            --v49;
          }

          while (v49);
          v40 += v41;
          v38 += v251;
          v34 += v249;
          --v6;
        }

        while (v6);
        return result;
      default:
        return result;
    }

    while (1)
    {
      v230 = *v166 & v164;
      v231 = v228;
      result = v171;
      if (!v230)
      {
        goto LABEL_460;
      }

LABEL_458:
      if (v230 == -1)
      {
        break;
      }

      while (1)
      {
        if (v230)
        {
          *v167 = *(v29 + 4 * v230) + (((~*(v29 + 4 * v230) >> 24) * *v167 + (((~*(v29 + 4 * v230) >> 24) * *v167) >> 8) + 1) >> 8);
        }

        if ((v230 & 0xFF00) != 0)
        {
          v167[1] = *(v29 + 4 * BYTE1(v230)) + (((~*(v29 + 4 * BYTE1(v230)) >> 24) * v167[1] + (((~*(v29 + 4 * BYTE1(v230)) >> 24) * v167[1]) >> 8) + 1) >> 8);
        }

        if ((v230 & 0xFF0000) != 0)
        {
          v167[2] = *(v29 + 4 * BYTE2(v230)) + (((~*(v29 + 4 * BYTE2(v230)) >> 24) * v167[2] + (((~*(v29 + 4 * BYTE2(v230)) >> 24) * v167[2]) >> 8) + 1) >> 8);
        }

        v235 = HIBYTE(v230);
        if (v235)
        {
          v233 = *(v29 + 4 * v235);
          v232 = (~v233 >> 24) * v167[3];
          goto LABEL_473;
        }

LABEL_460:
        while (1)
        {
          v234 = v231;
          v167 += 4;
          --v231;
          ++v166;
          if (v234 < 2)
          {
            break;
          }

          v230 = *v166;
          if (*v166)
          {
            goto LABEL_458;
          }
        }

        if (!result)
        {
          break;
        }

        result = 0;
        v230 = *v166 & v171;
      }

      v166 = (v166 + v41 - v105);
      v167 += v251 - v105;
      if (!--v6)
      {
        return result;
      }
    }

    *v167 = v30 + ((*v167 * v229 + ((*v167 * v229) >> 8) + 1) >> 8);
    v167[1] = v30 + ((v167[1] * v229 + ((v167[1] * v229) >> 8) + 1) >> 8);
    v167[2] = v30 + ((v167[2] * v229 + ((v167[2] * v229) >> 8) + 1) >> 8);
    v232 = v167[3] * v229;
    LOBYTE(v233) = v30;
LABEL_473:
    v167[3] = v233 + ((v232 + (v232 >> 8) + 1) >> 8);
    goto LABEL_460;
  }

  return result;
}

uint64_t ripl_CreateMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 56))
  {
    return 1;
  }

  v31 = v8;
  v32 = v9;
  v11 = a2;
  v13 = *(a1 + 32);
  v14 = RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8);
  if (v13 != v14)
  {
    return 0;
  }

  v16 = *(a1 + 20);
  v30 = v16;
  if (v16 < 1)
  {
    return 0;
  }

  v17 = *(a1 + 24);
  v29 = v17;
  if (v17 < 1)
  {
    return 0;
  }

  v18 = (v16 + 3) & 0x7FFFFFFC;
  v19 = v17 * v18;
  v20 = v19 > 0x7FFFFFFB ? 0xFFFFFFFFLL : (v19 + 19) & 0xFFFFFFF0;
  if ((v20 & 0x80000000) != 0)
  {
    return 0;
  }

  v21 = *(a1 + 72);
  if (!v21)
  {
    result = malloc_type_malloc(v20, 0x605DDF51uLL);
    *(a1 + 56) = result;
    if (!result)
    {
      return result;
    }

    *(a1 + 48) = v18;
    *(a1 + 28) &= ~2u;
    memset(result, 255, v20);
    v26 = *(a1 + 64);
    if (v26)
    {
      CGSCombineMask(0, 0, *(a1 + 56), *(a1 + 48), *(a1 + 20), *(a1 + 24), v26);
    }

    goto LABEL_25;
  }

  if (v21 != &the_empty_shape)
  {
    v28 = 0;
    shape_enum_clip_alloc(v14, v15, v21, 1, 1, 0, 0, 0, v16, v17);
    if (v22)
    {
      v23 = v22;
      v24 = malloc_type_malloc(v20, 0xC94539B2uLL);
      *(a1 + 56) = v24;
      if (v24)
      {
        *(a1 + 48) = v18;
        *(a1 + 28) &= ~2u;
        while (1)
        {
          v25 = shape_enum_clip_next(v23, &v28 + 1, &v28, &v30, &v29);
          if (!v25)
          {
            break;
          }

          CGBlt_fillBytes(v30, v29, ~v25 >> 31, (*(a1 + 56) + v28 * v18 + SHIDWORD(v28)), v18);
        }

        free(v23);
        goto LABEL_25;
      }

      free(v23);
    }

    return 0;
  }

  result = malloc_type_calloc(1uLL, v20, 0xC5A7A816uLL);
  *(a1 + 56) = result;
  if (!result)
  {
    return result;
  }

  *(a1 + 48) = v18;
  *(a1 + 28) &= ~2u;
LABEL_25:
  if (v11)
  {
    v27 = *(a1 + 72);
    if (v27)
    {
      if (v27 != &the_empty_shape)
      {
        free(v27);
      }

      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    else if (*(a1 + 64))
    {
      *(a1 + 64) = 0;
    }
  }

  return 1;
}

uint64_t CGBlt_combineBytes(uint64_t result, int a2, _OWORD *a3, __n128 *a4, int a5, int a6, __int16 a7, double a8, int8x16_t a9, uint8x16_t a10)
{
  v10 = a7 & 0xF00;
  if (v10 != 1280)
  {
    if (v10 != 1024)
    {
      if (v10 == 256 && result >= 1 && a2 >= 1)
      {
        v11 = 0;
        v12 = vdupq_n_s16(0xFE01u);
        do
        {
          if (result >= 0x20)
          {
            v16 = 32;
            v15 = a3;
            v14 = a4;
            do
            {
              v18 = *v15;
              v17 = *(v15 + 1);
              v15 += 2;
              v19 = v14[1];
              v20 = vminq_u16(vmull_u8(*v18.i8, *v14->i8), v12);
              v21 = vminq_u16(vmull_high_u8(v18, *v14), v12);
              v22 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v20, v20, 8uLL), 8uLL), vrsraq_n_u16(v21, v21, 8uLL), 8uLL);
              v23 = vminq_u16(vmull_u8(*v17.i8, *v19.i8), v12);
              v24 = vminq_u16(vmull_high_u8(v17, v19), v12);
              a9 = vrsraq_n_u16(v24, v24, 8uLL);
              a10 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v23, v23, 8uLL), 8uLL), a9, 8uLL);
              *v14 = v22;
              v14[1] = a10;
              v14 += 2;
              v16 += 32;
            }

            while (v16 <= result);
            v13 = result & 0x7FFFFFE0;
          }

          else
          {
            v13 = 0;
            v14 = a4;
            v15 = a3;
          }

          v25 = v13 | 4;
          while (v25 <= result)
          {
            v26 = *v15;
            v15 = (v15 + 4);
            a9.i32[0] = v26;
            v27 = vmovl_u8(*a9.i8);
            a10.i32[0] = v14->i32[0];
            LOBYTE(v28) = v27.i8[0];
            BYTE1(v28) = v27.i8[2];
            BYTE2(v28) = v27.i8[4];
            v29 = v27.i8[6];
            v30 = vmovl_u8(*a10.i8);
            HIBYTE(v28) = v29;
            a10.i32[1] = 0;
            a10.i8[0] = v30.i8[0];
            a10.i8[1] = v30.i8[2];
            a10.i8[2] = v30.i8[4];
            a10.i8[3] = v30.i8[6];
            v31 = vminq_u16(vmull_u8(v28, a10.u32[0]), v12);
            a9 = vrsraq_n_u16(v31, v31, 8uLL);
            *a9.i8 = vqrshrn_n_u16(a9, 8uLL);
            *a9.i8 = vmovn_s16(vzip1q_s8(a9, v12));
            v14->i32[0] = a9.i32[0];
            v14 = (v14 + 4);
            v25 = v13 + 8;
            v13 += 4;
          }

          if (v13 + 1 <= result)
          {
            v32 = result - v13;
            v33 = v14;
            do
            {
              v34 = *v15;
              v15 = (v15 + 1);
              a10.i64[0] = v33->u8[0];
              v33 = (v33 + 1);
              a9 = vminq_u16(vmull_u8(v34, *a10.i8), v12);
              *a9.i8 = vqrshrn_n_u16(vrsraq_n_u16(a9, a9, 8uLL), 8uLL);
              v14->i8[0] = a9.i8[0];
              v14 = v33;
              --v32;
            }

            while (v32);
          }

          a3 = (a3 + a5);
          a4 = (a4 + a6);
          ++v11;
        }

        while (v11 != a2);
      }

      return result;
    }

    if (result < 1 || a2 < 1)
    {
      return result;
    }

    v35 = a3 & 3;
    if ((a3 & 3) != 0)
    {
      v36 = 8 - v35;
      v37 = 4 - v35;
      v38 = result - v37;
      if (v36 > result)
      {
        v37 = result;
        v38 = 0;
      }
    }

    else
    {
      if (result >= 4)
      {
        v37 = 0;
      }

      else
      {
        v37 = result;
      }

      if (result >= 4)
      {
        v38 = result;
      }

      else
      {
        v38 = 0;
      }
    }

    v50 = v38 >> 2;
    v51 = v38 & 3;
    while (1)
    {
      v52 = v37;
      v53 = v50;
      if (v37)
      {
        goto LABEL_56;
      }

      while (v53)
      {
        v54 = v53 - 1;
        v55 = a3;
        do
        {
          if (*v55 == -1)
          {
            a4->n128_u32[0] = 0;
          }

          ++v55;
          a4 = (a4 + 4);
          --v53;
        }

        while (v53);
        a3 = (a3 + 4 * v54 + 4);
        v52 = v51;
        if (!v51)
        {
          break;
        }

LABEL_56:
        v56 = (v52 - 1);
        a3 = (a3 + v56 + 1);
        a4 = (a4 + v56 + 1);
      }

      a3 = (a3 + a5 - result);
      a4 = (a4 + a6 - result);
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (result >= 1 && a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      if (result >= 0x20)
      {
        v43 = 32;
        v42 = a3;
        v41 = a4;
        do
        {
          v45 = *v42;
          v44 = v42[1];
          v42 += 2;
          a9 = vmvnq_s8(v44);
          *v41 = vmvnq_s8(v45);
          v41[1] = a9;
          v41 += 2;
          v43 += 32;
        }

        while (v43 <= result);
        v40 = result & 0x7FFFFFE0;
      }

      else
      {
        v40 = 0;
        v41 = a4;
        v42 = a3;
      }

      v46 = v40 | 4;
      while (v46 <= result)
      {
        v47 = v42->i32[0];
        v42 = (v42 + 4);
        a9.i32[0] = v47;
        *a9.i8 = vuzp1_s8(veor_s8(*&vmovl_u8(*a9.i8), 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL);
        v41->n128_u32[0] = a9.i32[0];
        v41 = (v41 + 4);
        v46 = v40 + 8;
        v40 += 4;
      }

      if (v40 + 1 <= result)
      {
        v48 = result - v40;
        do
        {
          v49 = v42->i8[0];
          v42 = (v42 + 1);
          v41->n128_u8[0] = ~v49;
          v41 = (v41 + 1);
          --v48;
        }

        while (v48);
      }

      a3 = (a3 + a5);
      a4 = (a4 + a6);
    }
  }

  return result;
}

uint64_t CG::DisplayListRecorder::DrawPath(CFArrayRef *a1, uint64_t a2, uint64_t a3, signed int a4, const CGPath *a5, int a6, uint64_t a7)
{
  v13 = CG::DisplayListRecorder::currentDisplayList(a1);
  if (!v13)
  {
    return 1000;
  }

  v14 = v13;
  if (v13[5] == INFINITY || v13[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v14[7] != 0.0 && v14[8] != 0.0)
  {
    if (*(v14 + 73) != 1)
    {
      goto LABEL_23;
    }

    if (a7)
    {
      v17 = *(a7 + 16);
      v35.origin = *a7;
      v35.size = v17;
    }

    else
    {
      PathBoundingBox = CGPathGetPathBoundingBox(a5);
      v35 = PathBoundingBox;
      if (a6)
      {
        v18 = *(a3 + 40);
        *&v34.a = *(a3 + 24);
        *&v34.c = v18;
        *&v34.tx = *(a3 + 56);
        v35 = CGRectApplyAffineTransform(PathBoundingBox, &v34);
      }

      if (a4 >= 2)
      {
        v35.origin.x = CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(&v35, a3);
        v35.origin.y = v19;
        v35.size.width = v20;
        v35.size.height = v21;
      }
    }

    v35.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v35.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16));
    v35.origin.y = v22;
    v35.size.width = v23;
    v35.size.height = v24;
    if (v35.origin.x == INFINITY || v22 == INFINITY)
    {
      return 0;
    }

    result = 0;
    if (v23 != 0.0 && v24 != 0.0)
    {
LABEL_23:
      EntryDrawingState = CG::DisplayList::getEntryDrawingState((v14 + 2), a3, a2);
      v27 = EntryDrawingState[1];
      if (v27)
      {
        v28 = *(v27 + 8);
        v29 = v28 & 0x1000;
        v36 = v29;
        v30 = EntryDrawingState[2];
        if (v30)
        {
          v29 = (*(v30 + 8) | v28) & 0x1000;
          v36 = v29;
        }

        v31 = EntryDrawingState[3];
        if (v31)
        {
          v36 = v29 | *(v31 + 8) & 0x3400;
        }

        v34.a = 0.0;
        v37 = 0;
        CG::DisplayListRecorder::getPathColorResourcesAndUpdateFlags((v14 + 2), a3, a4, &v34, &v37, &v36);
        v32 = *(a3 + 120);
        if (*(v32 + 8) >= 1.0)
        {
          v33 = v36;
        }

        else
        {
          v33 = v36 | 0x1000;
        }

        if ((v33 & 0x1000) == 0 && (((*(v32 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
        {
          v33 = v36 | 0x1000;
        }

        if ((v33 & 0x3000) != 0)
        {
          *(v14 + 20) |= v33 & 0x3000;
        }

        if (*(v14 + 74) == 1)
        {
          if ((v33 & 0x400) != 0)
          {
            CG::DisplayList::getEntryPatternState((v14 + 2), a3, a2);
          }

          if ((v33 & 0x100) != 0)
          {
            CG::DisplayList::getEntryFillState((v14 + 2), *&v34.a);
          }

          if ((v33 & 0x200) != 0)
          {
            CG::DisplayList::getEntryStrokeState((v14 + 2), a3);
          }

          operator new();
        }

        return 0;
      }

      return 1000;
    }
  }

  return result;
}

unsigned int *CG::DisplayListEntryPath::_hash(uint64_t a1, unsigned int *a2)
{
  __src = CGPathGetNumberOfElements(*(a1 + 88));
  XXH64_update(a2, &__src, 8uLL);
  XXH64_update(a2, (a1 + 96), 0x30uLL);
  XXH64_update(a2, (a1 + 80), 4uLL);

  return CG::DisplayListEntry::_hash(a1, a2);
}

void CG::DisplayListEntryPath::~DisplayListEntryPath(CG::DisplayListEntryPath *this)
{
  CG::DisplayListEntryPath::~DisplayListEntryPath(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23AC58;
  v1 = *(this + 11);
  if (v1)
  {
    CFRelease(v1);
  }
}

CGImageRef CGImageRetain(CGImageRef image)
{
  if (image)
  {
    CFRetain(image);
  }

  return image;
}

void CGPathRelease(CGPathRef path)
{
  if (path)
  {
    CFRelease(path);
  }
}

BOOL CGColorSpaceUsesITUR_2100TF(CGColorSpaceRef a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v2 == CGColorSpaceGetTypeID_type_id)
    {
      v3 = *(a1 + 3);
      if (*(v3 + 16))
      {
        v4 = 1;
      }

      else
      {
        v4 = *(v3 + 17);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void CGImageRelease(CGImageRef image)
{
  if (image)
  {
    CFRelease(image);
  }
}

uint64_t CGCFDictionaryGetBoolean(CFDictionaryRef theDict, const void *a2, BOOL *a3)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (result)
      {
        v6 = result;
        v7 = CFGetTypeID(result);
        if (v7 == CFBooleanGetTypeID())
        {
          if (a3)
          {
            *a3 = CFBooleanGetValue(v6) != 0;
          }

          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

double CGRenderingStateCreateCopy(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x58uLL, 0x1000040931E80BBuLL);
    *v2 = 1;
    if (v2 != a1)
    {
      *(v2 + 8) = *(a1 + 8);
      v4 = *(a1 + 24);
      v5 = *(a1 + 40);
      *(v2 + 56) = *(a1 + 56);
      *(v2 + 40) = v5;
      *(v2 + 24) = v4;
      result = *(a1 + 72);
      *(v2 + 9) = result;
      *(v2 + 1) = *(a1 + 4);
      *(v2 + 20) = *(a1 + 80);
      *(v2 + 42) = *(a1 + 84);
      v2[86] = *(a1 + 86);
    }
  }

  return result;
}

void CGDisplayListDelegateDrawDisplayList(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || *(a4 + 688) == *(a4 + 696))
  {
    return;
  }

  if (*(a4 + 88) == INFINITY || *(a4 + 96) == INFINITY)
  {
    return;
  }

  v9 = *(a4 + 32);
  v10 = *(*(a3 + 120) + 16);
  if (!v9)
  {
    v11 = 0;
    if (a1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (!CFDictionaryContainsKey(*(a4 + 32), @"kCGContextGroup"))
  {
    v11 = CFDictionaryContainsKey(v9, @"kCGContextColorSpace") != 0;
    if (a1)
    {
      goto LABEL_14;
    }

LABEL_17:
    v17 = 0.0;
    v13 = INFINITY;
    v15 = INFINITY;
    v19 = 0.0;
    goto LABEL_19;
  }

  v11 = 1;
  if (!a1)
  {
    goto LABEL_17;
  }

LABEL_14:
  v12 = a1[6];
  if (v12)
  {
    v13 = v12(a1, a2, a3);
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v17 = 1.79769313e308;
    v13 = -8.98846567e307;
    v15 = -8.98846567e307;
    v19 = 1.79769313e308;
  }

LABEL_19:
  v20 = *(a3 + 112);
  if (v20)
  {
    Bounds = CGClipStackGetBounds(v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v23 = 0xFFDFFFFFFFFFFFFFLL;
    v25 = 0x7FEFFFFFFFFFFFFFLL;
    Bounds = -8.98846567e307;
    v27 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v79.origin.x = v13;
  v79.origin.y = v15;
  v79.size.width = v17;
  v79.size.height = v19;
  v80 = CGRectIntersection(v79, *&Bounds);
  if (v80.origin.x != INFINITY && v80.origin.y != INFINITY && v80.size.width != 0.0 && v80.size.height != 0.0)
  {
    v28 = *(a3 + 40);
    v75 = *(a3 + 24);
    v76 = v28;
    v77 = *(a3 + 56);
    v29.n64_u64[0] = CGRectApplyInverseAffineTransform(&v75, *&v80.origin.x, v80.origin.y, v80.size.width, v80.size.height).n64_u64[0];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &CGRectNull;
    p_y = &CGRectNull.origin.y;
    p_size = (a4 + 104);
    p_height = (a4 + 112);
    if (*(a4 + 688) == *(a4 + 696))
    {
      p_size = &CGRectNull.size;
    }

    else
    {
      p_y = (a4 + 96);
    }

    if (*(a4 + 688) == *(a4 + 696))
    {
      p_height = &CGRectNull.size.height;
    }

    else
    {
      v36 = (a4 + 88);
    }

    v40 = *p_height;
    x = v36->origin.x;
    v42 = *p_y;
    width = p_size->width;
    if (v10)
    {
      v44 = *(a2 + 40);
      v75 = *(a2 + 24);
      v76 = v44;
      v77 = *(a2 + 56);
      x = CGStyleGetDrawBoundingBoxWithMatrix(v10, &v75, x, v42, width, v40);
      v42 = v45;
      width = v46;
      v40 = v47;
    }

    v81.origin.x = v29.n64_f64[0];
    v81.origin.y = v31;
    v81.size.width = v33;
    v81.size.height = v35;
    v82 = CGRectIntersection(v81, *&x);
    v50 = v82.origin.x;
    *&v75 = v82.origin.x;
    *(&v75 + 1) = *&v82.origin.y;
    *&v76 = v82.size.width;
    *(&v76 + 1) = *&v82.size.height;
    if (v82.origin.x != INFINITY)
    {
      y = v82.origin.y;
      if (v82.origin.y != INFINITY)
      {
        v52 = v82.size.width;
        height = v82.size.height;
        v54 = v82.size.width == 0.0;
        if (v82.size.height == 0.0)
        {
          v54 = 1;
        }

        if (v54 || v11)
        {
          if (v54)
          {
            return;
          }

          v55 = 0;
          if (!a1)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v56 = *(a3 + 120);
          if (*(v56 + 8) != 1.0 || *(v56 + 16) || *(v56 + 40))
          {
            v55 = 1;
            if (!a1)
            {
LABEL_47:
              v57 = a2;
              if (a2 || (v57 = CGRenderingStateCreate()) != 0)
              {
                if (v55)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (Mutable)
                  {
                    v64 = Mutable;
                    v65 = *MEMORY[0x1E695E4D0];
                    if (*MEMORY[0x1E695E4D0])
                    {
                      CFDictionarySetValue(Mutable, @"kCGContextGroup", v65);
                    }

                    CGDisplayList = CG::DisplayList::createCGDisplayList(a4, v64, v65, v59, v60, v61, v62, v63);
                    CFRelease(v64);
                    if (CGDisplayList)
                    {
                      if (a1)
                      {
                        v67 = a1[16];
                        if (v67)
                        {
                          v67(a1, v57, a3, a4);
                        }
                      }

                      if (CGDisplayList != a4)
                      {
                        CFRelease(CGDisplayList);
                      }
                    }
                  }
                }

                else if (a1)
                {
                  v68 = a1[16];
                  if (v68)
                  {
                    v68(a1, v57, a3, a4);
                  }
                }

                if (v57 != a2 && atomic_fetch_add_explicit(v57, 0xFFFFFFFF, memory_order_relaxed) == 1)
                {

                  free(v57);
                }
              }

              return;
            }
          }

          else
          {
            v55 = *(v56 + 5) << 8 != 512;
            if (!a1)
            {
              goto LABEL_47;
            }
          }
        }

        if (a1[16])
        {
          goto LABEL_47;
        }

        if (v11 || v55)
        {
          v69 = CGContextCreateWithDelegateAndInfo(a1, 15, a2, a3, 0, 0, v48, v49);
          if (!v69)
          {
            return;
          }

          v70 = v69;
          v83.origin.x = v50;
          v83.origin.y = y;
          v83.size.width = v52;
          v83.size.height = height;
          CGContextBeginTransparencyLayerWithRect(v69, v83, v9);
          v72 = *(v70 + 13);
          v71 = *(v70 + 14);
        }

        else
        {
          v71 = a2;
          if (!a2)
          {
            v71 = CGRenderingStateCreate();
            if (!v71)
            {
              return;
            }
          }

          v72 = CGGStackCreateWithGState(a3);
          v70 = 0;
        }

        v73 = 0;
        if (v50 == -8.98846567e307 && y == -8.98846567e307 && v52 == 1.79769313e308)
        {
          v73 = height == 1.79769313e308;
        }

        if (v10)
        {
          v73 = 1;
        }

        if (v73)
        {
          LODWORD(v74) = 0;
        }

        else
        {
          v74 = &v75;
        }

        CG::DisplayList::execute(a4 + 16, a1, v71, v72, v74, 0);
        if (v70)
        {
          CGContextEndTransparencyLayer(v70);
          CFRelease(v70);
        }

        else
        {
          if (v72)
          {
            CGGStackReset(v72);
            free(v72);
          }

          if (v71 != a2 && v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFF, memory_order_relaxed) == 1)
          {
            free(v71);
          }
        }
      }
    }
  }
}

BOOL CGCFDictionaryGetRect(const __CFDictionary *a1, const void *a2, UInt8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFDataGetTypeID())
  {
    return 0;
  }

  return get_value_from_data(v5, a3, 32);
}