uint64_t sub_10000C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v139 = 0;
  memset(v138, 0, sizeof(v138));
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  v171 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  memset(v144, 0, sizeof(v144));
  v9 = 2 * *(a4 + 6);
  v137 = 0;
  sub_10001EAF0(a4 + 8, v9, __s2, &v139, 0xFFuLL);
  __s2[v139] = 0;
  v16 = *(a3 + 8);
  v17 = *(a3 + 2);
  v18 = *(a3 + 44);
  if (a5)
  {
    v135 = 0;
    v19 = *(a1 + 5732);
  }

  else
  {
    v19 = *(a1 + 5728);
    v135 = strtoul(v176, 0, 10);
    if (HIDWORD(v135))
    {
      if (sub_10002D444() >= 3)
      {
        v140 = xmmword_100043460;
        v141 = *&qword_100043470;
        v142 = xmmword_100043480;
        v143 = *&off_100043490;
        sub_10002D0E8(&v140, 2, "\tlink reference num=%lu is > UINT32_MAX for inode=%u\n", v20, v21, v22, v23, v24, v135);
      }

      return 1;
    }
  }

  if (v19)
  {
    v25 = *(a4 + 2);
    if (v25 != v19)
    {
      v134 = v18;
      v26 = (a1 + 872);
      if (a5)
      {
        v27 = 4294966712;
      }

      else
      {
        v27 = 4294966700;
      }

      v28 = *(a1 + 888);
      v140 = *v26;
      v141 = v28;
      v29 = *(a1 + 920);
      v142 = *(a1 + 904);
      v143 = v29;
      sub_10002D0A4(&v140, v27, v10, v11, v12, v13, v14, v15, v16);
      snprintf(__str, 0xCuLL, "%u", v19);
      snprintf(v178, 0xCuLL, "%u", v25);
      v30 = *(a1 + 888);
      v140 = *v26;
      v141 = v30;
      v31 = *(a1 + 920);
      v18 = v134;
      v142 = *(a1 + 904);
      v143 = v31;
      sub_10002D0A4(&v140, 559, v32, v33, v34, v35, v36, v37, __str);
      *(a1 + 28) |= 4u;
    }
  }

  if (a5)
  {
    snprintf(__str, 0x20uLL, "%s%u", "dir_", v16);
    v38 = strlen(__str);
    if (v139 != v38 || strncmp(__str, __s2, v38))
    {
      v39 = *(a1 + 888);
      v140 = *(a1 + 872);
      v141 = v39;
      v40 = *(a1 + 920);
      v142 = *(a1 + 904);
      v143 = v40;
      sub_10002D0A4(&v140, 4294966711, v10, v11, v12, v13, v14, v15, v16);
      v41 = *(a1 + 888);
      v140 = *(a1 + 872);
      v141 = v41;
      v42 = *(a1 + 920);
      v142 = *(a1 + 904);
      v143 = v42;
      sub_10002D0A4(&v140, 559, v43, v44, v45, v46, v47, v48, __str);
      *(a1 + 28) |= 4u;
    }
  }

  if (!v18)
  {
    sub_10000BC9C(a1, a5, v10, v11, v12, v13, v14, v15);
    if (sub_10002D444() >= 3)
    {
      v140 = xmmword_100043460;
      v141 = *&qword_100043470;
      v142 = xmmword_100043480;
      v143 = *&off_100043490;
      sub_10002D0E8(&v140, 2, "\tlinkCount=0 for dirinode=%u\n", v62, v63, v64, v65, v66, v16);
    }

    return 1;
  }

  if ((v17 & 0x20) == 0)
  {
    if (!a5 && !*(a3 + 4))
    {
      sub_10000DE8C(v135, v18);
      return 0;
    }

    sub_10000BB2C(a1, v16, a5, v17, v17 | 0x20, 0);
  }

  v178[0] = 0;
  v49 = sub_10000C14C(a1, a3, v16, a5, v178);
  if (v49)
  {
    v56 = v49;
    sub_10000BC9C(a1, a5, v50, v51, v52, v53, v54, v55);
    if (sub_10002D444() >= 3)
    {
      v140 = xmmword_100043460;
      v141 = *&qword_100043470;
      v142 = xmmword_100043480;
      v143 = *&off_100043490;
      sub_10002D0E8(&v140, 2, "\tError getting first link ID for inode=%u\n", v57, v58, v59, v60, v61, v16);
    }
  }

  else
  {
    v68 = v178[0];
    if (v178[0])
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      while (1)
      {
        v72 = v71;
        v73 = sub_10000B770(a1, v68, 1, v138, v144, &v137);
        if (v73)
        {
          break;
        }

        if (LOWORD(v144[0]) != 2)
        {
          sub_10000BC9C(a1, a5, v74, v75, v76, v77, v78, v79);
          if (sub_10002D444() >= 3)
          {
            v140 = xmmword_100043460;
            v141 = *&qword_100043470;
            v142 = xmmword_100043480;
            v143 = *&off_100043490;
            sub_10002D0E8(&v140, 2, "\tIncorrect record type for link=%u for inode=%u (expected=2, found=%u)\n", v108, v109, v110, v111, v112, v68);
          }

          goto LABEL_57;
        }

        if ((v144[0] & 0x200000) == 0)
        {
          sub_10000BC9C(a1, a5, v74, v75, v76, v77, v78, v79);
          if (sub_10002D444() >= 3)
          {
            v140 = xmmword_100043460;
            v141 = *&qword_100043470;
            v142 = xmmword_100043480;
            v143 = *&off_100043490;
            sub_10002D0E8(&v140, 2, "\tIncorrect flag for link=%u for inode=%u (found=0x%x)\n", v113, v114, v115, v116, v117, v68);
          }

          goto LABEL_57;
        }

        if (a5)
        {
          v80 = v72;
          if (v146 != 0x4D41435366647270 || (SWORD4(v146) & 0x80000000) == 0)
          {
            sub_10000BE6C(a1, v144[2], a5);
            if (sub_10002D444() >= 3)
            {
              v140 = xmmword_100043460;
              v141 = *&qword_100043470;
              v142 = xmmword_100043480;
              v143 = *&off_100043490;
              sub_10002D0E8(&v140, 2, "\tdirlink: fdType = 0x%08lx, fdCreator = 0x%08lx\n", v75, v76, v77, v78, v79, v146);
            }
          }

          v81 = v16;
          if (HIDWORD(v145) != v16)
          {
            sub_10000BC9C(a1, a5, v74, v75, v76, v77, v78, v79);
            v123 = sub_10002D444();
            if (v123 >= 3)
            {
              v140 = xmmword_100043460;
              v141 = *&qword_100043470;
              v142 = xmmword_100043480;
              v143 = *&off_100043490;
              sub_10002D0E8(&v140, 2, "\tIncorrect dirinode ID for dirlink=%u (expected=%u, found=%u)\n", v124, v125, v126, v127, v128, v68);
            }

LABEL_57:
            v56 = 1;
            goto LABEL_63;
          }
        }

        else
        {
          v80 = v72;
          if (v146 != 0x6866732B686C6E6BLL)
          {
            sub_10000BE6C(a1, v144[2], 0);
            if (sub_10002D444() >= 3)
            {
              v140 = xmmword_100043460;
              v141 = *&qword_100043470;
              v142 = xmmword_100043480;
              v143 = *&off_100043490;
              sub_10002D0E8(&v140, 2, "\tfilelink: fdType = 0x%08lx, fdCreator = 0x%08lx\n", v75, v76, v77, v78, v79, v146);
            }
          }

          v81 = v135;
          if (HIDWORD(v145) != v135)
          {
            sub_10000BC9C(a1, 0, v74, v75, v76, v77, v78, v79);
            if (sub_10002D444() >= 3)
            {
              v140 = xmmword_100043460;
              v141 = *&qword_100043470;
              v142 = xmmword_100043480;
              v143 = *&off_100043490;
              sub_10002D0E8(&v140, 2, "\tIncorrect link reference number for filelink=%u (expected=%u, found=%u)\n", v129, v130, v131, v132, v133, v68);
            }

            goto LABEL_57;
          }
        }

        sub_1000219E0(a2, v68 | (v81 << 32));
        if (v80 != v145)
        {
          sub_10000BC9C(a1, a5, v82, v83, v84, v85, v86, v87);
          if (sub_10002D444() >= 3)
          {
            v140 = xmmword_100043460;
            v141 = *&qword_100043470;
            v142 = xmmword_100043480;
            v143 = *&off_100043490;
            sub_10002D0E8(&v140, 2, "\tIncorrect prevLinkID for link=%u for inode=%u (expected=%u, found=%u)\n", v118, v119, v120, v121, v122, v68);
          }

          goto LABEL_57;
        }

        v88 = v69;
        if (v69)
        {
          while (*v88 != v68)
          {
            v88 = v88[1];
            if (!v88)
            {
              goto LABEL_48;
            }
          }

          if (sub_10002D444() >= 3)
          {
            v140 = xmmword_100043460;
            v141 = *&qword_100043470;
            v142 = xmmword_100043480;
            v143 = *&off_100043490;
            sub_10002D0E8(&v140, 2, "\tDuplicate link=%u found in list for inode=%u\n", v92, v93, v94, v95, v96, v68);
          }

          sub_10000BC9C(a1, a5, v91, v92, v93, v94, v95, v96);
          goto LABEL_57;
        }

LABEL_48:
        v89 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
        if (!v89)
        {
          v56 = 12;
          goto LABEL_63;
        }

        v90 = v89;
        *v89 = v68;
        v89[1] = v69;
        ++v70;
        v178[0] = DWORD1(v145);
        v69 = v89;
        v71 = v68;
        v68 = DWORD1(v145);
        if (!DWORD1(v145))
        {
          goto LABEL_52;
        }
      }

      v56 = v73;
      sub_10000BC9C(a1, a5, v74, v75, v76, v77, v78, v79);
      if (sub_10002D444() >= 3)
      {
        v140 = xmmword_100043460;
        v141 = *&qword_100043470;
        v142 = xmmword_100043480;
        v143 = *&off_100043490;
        sub_10002D0E8(&v140, 2, "\tError getting link=%u for inode=%u\n", v103, v104, v105, v106, v107, v68);
      }
    }

    else
    {
      v70 = 0;
      v90 = 0;
LABEL_52:
      if (v18 == v70)
      {
        v56 = 0;
      }

      else
      {
        sub_10000BC9C(a1, a5, v50, v51, v52, v53, v54, v55);
        if (sub_10002D444() >= 3)
        {
          v140 = xmmword_100043460;
          v141 = *&qword_100043470;
          v142 = xmmword_100043480;
          v143 = *&off_100043490;
          sub_10002D0E8(&v140, 2, "\tIncorrect linkCount for inode=%u (expected=%u, found=%u)\n", v97, v98, v99, v100, v101, v16);
        }

        v56 = 1;
      }

      v69 = v90;
    }

LABEL_63:
    if (v69)
    {
      do
      {
        v102 = v69[1];
        free(v69);
        v69 = v102;
      }

      while (v102);
    }
  }

  return v56;
}

uint64_t sub_10000CE28(uint64_t a1)
{
  sub_100020B5C();
  if (!v8 || !*(a1 + 5736) && !*(a1 + 5744) && !*(a1 + 5740))
  {
    return 0;
  }

  v152 = 0;
  memset(v158, 0, sizeof(v158));
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  memset(v151, 0, sizeof(v151));
  v150 = 0;
  v9 = (a1 + 872);
  v10 = *(a1 + 888);
  v224 = *(a1 + 872);
  v225 = v10;
  v11 = *(a1 + 920);
  v226 = *(a1 + 904);
  v227 = v11;
  sub_10002D0A4(&v224, 212, v2, v3, v4, v5, v6, v7, v140);
  if (sub_10002D444() >= 3)
  {
    v18 = *(a1 + 5736);
    v19 = *(a1 + 5744);
    v20 = *(a1 + 5740);
    v224 = xmmword_100043460;
    v225 = *&qword_100043470;
    v226 = xmmword_100043480;
    v227 = *&off_100043490;
    sub_10002D0E8(&v224, 2, "\tprivdir_valence=%u, calc_dirlinks=%u, calc_dirinode=%u\n", v13, v14, v15, v16, v17, v18);
  }

  if (!*(a1 + 5732))
  {
    v21 = *(a1 + 888);
    v224 = *v9;
    v225 = v21;
    v22 = *(a1 + 920);
    v226 = *(a1 + 904);
    v227 = v22;
    sub_10002D0A4(&v224, 4294966704, v12, v13, v14, v15, v16, v17, v141);
    *(a1 + 28) |= 4u;
  }

  v23 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x1000040B15B9DBAuLL);
  if (!v23)
  {
    return 12;
  }

  v24 = v23;
  v25 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x1000040B15B9DBAuLL);
  if (!v25)
  {
    v35 = 12;
    v36 = v24;
    goto LABEL_147;
  }

  v149 = v25;
  v28 = sub_100012A1C(*(a1 + 792), -32767, v151, v158, &v150, &v152, v26, v27);
  if (v28)
  {
    v35 = v28;
    goto LABEL_146;
  }

  v147 = v24;
  do
  {
    if (LOWORD(v158[0]) == 2)
    {
      if ((v158[0] & 0x200000) != 0)
      {
        v39 = v160 == 1717858928 && DWORD1(v160) == 1296122707;
        if (v39 && *(v151 + 2) != *(a1 + 5728))
        {
          sub_1000219E0(v149, v158[2] | (HIDWORD(v159) << 32));
          v43 = BYTE9(v159);
          if ((BYTE9(v159) & 2) == 0)
          {
            sub_10000BD14(a1, v158[2], BYTE9(v159), BYTE9(v159) | 2, 0);
          }

          if (v160 != 0x4D41435366647270 || (SWORD4(v160) & 0x80000000) == 0)
          {
            sub_10000BE6C(a1, v158[2], 1);
          }

          v44 = *(v151 + 2);
          if (*(v151 + 2) != 2)
          {
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            v250 = 0u;
            v251 = 0u;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
            v240 = 0u;
            v241 = 0u;
            v238 = 0u;
            v239 = 0u;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v232 = 0u;
            v233 = 0u;
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            v227 = 0u;
            v224 = 0u;
            v225 = 0u;
            v223 = 0u;
            v222 = 0u;
            v221 = 0u;
            v220 = 0u;
            v219 = 0u;
            v218 = 0u;
            v217 = 0u;
            v216 = 0u;
            v215 = 0u;
            v214 = 0u;
            v213 = 0u;
            v212 = 0u;
            v211 = 0u;
            v210 = 0u;
            v209 = 0u;
            v208 = 0u;
            v207 = 0u;
            v206 = 0u;
            v205 = 0u;
            v204 = 0u;
            v203 = 0u;
            v202 = 0u;
            v201 = 0u;
            v200 = 0u;
            v199 = 0u;
            v198 = 0u;
            v197 = 0u;
            v196 = 0u;
            v195 = 0u;
            v194 = 0u;
            v193 = 0u;
            v192 = 0u;
            v153 = 0;
            while (1)
            {
              if (v44 == *(a1 + 5732))
              {
                v64 = v44;
                goto LABEL_55;
              }

              if (sub_10000B770(a1, v44, 1, &v192, &v224, &v153) || v224 != 1)
              {
                break;
              }

              v45 = WORD1(v224);
              if ((BYTE2(v224) & 0x40) == 0)
              {
                v46 = sub_10001F024(a1, 0);
                if (v46)
                {
                  v47 = v46;
                  *(v46 + 4) = 589;
                  v46[2] = v45 | 0x40;
                  v46[3] = v45;
                  *(v46 + 10) = v44;
                  *(a1 + 28) |= 8u;
                  if (sub_10001EF18(a1, v46) == 1)
                  {
                    sub_10001EFB0(a1, v47);
                  }

                  else
                  {
                    v54 = *(a1 + 888);
                    v154 = *v9;
                    v155 = v54;
                    v55 = *(a1 + 920);
                    v156 = *(a1 + 904);
                    v157 = v55;
                    sub_10002D0A4(&v154, 589, v48, v49, v50, v51, v52, v53, v44);
                    snprintf(&__str, 0xCuLL, "0x%x", v45 | 0x40);
                    snprintf(v189, 0xCuLL, "0x%x", v45);
                    v56 = *(a1 + 888);
                    v154 = *v9;
                    v155 = v56;
                    v57 = *(a1 + 920);
                    v156 = *(a1 + 904);
                    v157 = v57;
                    sub_10002D0A4(&v154, 559, v58, v59, v60, v61, v62, v63, &__str);
                  }

                  v24 = v147;
                }
              }

              v44 = *(&v192 + 2);
              if (*(&v192 + 2) == 2)
              {
                goto LABEL_57;
              }
            }

            v64 = *(a1 + 5732);
LABEL_55:
            if (v44 != v64)
            {
              v65 = *(a1 + 888);
              v154 = *v9;
              v155 = v65;
              v66 = *(a1 + 920);
              v156 = *(a1 + 904);
              v157 = v66;
              sub_10002D0A4(&v154, 4294966706, v43, v40, v41, v42, v33, v34, v44);
              *(a1 + 24) |= 0x800u;
            }
          }
        }
      }
    }

    else if (LOWORD(v158[0]) == 1)
    {
      v37 = v158[2];
      if (v158[2] == *(a1 + 5732) && ((BYTE9(v159) & 2) == 0 || (WORD5(v159) & 0x200) == 0))
      {
        sub_10001ECB0(a1, 582, v29, v30, v31, v32, v33, v34);
        v38 = sub_10001F024(a1, 0);
        if (v38)
        {
          *(v38 + 4) = 582;
          *(v38 + 10) = v37;
          *(a1 + 28) |= 8u;
        }
      }

      if (((v158[0] & 0x200000) != 0 || *(v151 + 2) == *(a1 + 5732)) && sub_10000C570(a1, v24, v158, v151, 1))
      {
        goto LABEL_59;
      }
    }

LABEL_57:
    v67 = sub_100012A1C(*(a1 + 792), 1, v151, v158, &v150, &v152, v33, v34);
  }

  while (!v67);
  v35 = v67;
  if (v67 != 32)
  {
    goto LABEL_146;
  }

LABEL_59:
  if ((*(a1 + 28) & 1) == 0)
  {
    if (sub_100021BFC(v24, v149))
    {
      sub_10000BC9C(a1, 1, v68, v69, v70, v71, v72, v73);
      if (sub_10002D444() >= 3)
      {
        v224 = xmmword_100043460;
        v225 = *&qword_100043470;
        v226 = xmmword_100043480;
        v227 = *&off_100043490;
        sub_10002D0E8(&v224, 2, "\tdirlink prime buckets do not match\n", v74, v75, v76, v77, v78, v141);
      }
    }
  }

  v79 = malloc_type_malloc(0x1000uLL, 0x100004000313F17uLL);
  v191 = v79;
  if (!v79)
  {
    goto LABEL_145;
  }

  v80 = v79;
  if (*(a1 + 5740))
  {
    v81 = *(a1 + 5740);
  }

  else
  {
    v81 = 1024;
  }

  v82 = malloc_type_malloc(4 * v81, 0x100004052888210uLL);
  if (!v82)
  {
    if (sub_10002D444() >= 3)
    {
      v224 = xmmword_100043460;
      v225 = *&qword_100043470;
      v226 = xmmword_100043480;
      v227 = *&off_100043490;
      sub_10002D0E8(&v224, 2, "\tcheck_loops: Allocation failed for visited list\n", v83, v84, v85, v86, v87, v141);
    }

    v81 = 0;
  }

  v142 = v81;
  v143 = 0;
  v88 = 2;
  __str = 2;
  v89 = *(a1 + 5732);
  if (!v89)
  {
    v89 = 2;
  }

  *v80 = v89;
  v80[1] = v89;
  *(v80 + 1) = 0;
  v144 = v82;
  v145 = 512;
  while (2)
  {
    v148 = v80;
    v90 = &v80[2 * (v88 - 1)];
    v93 = v90[1];
    v91 = v90 + 1;
    v92 = v93;
    v94 = v80[2 * (v88 - 2)];
    *v189 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v95 = *(a1 + 792);
    v146 = v90;
    if (!v93)
    {
      v96 = 1;
      goto LABEL_80;
    }

    bzero(&v224, 0x220uLL);
    *&v154 = &v192;
    *(&v154 + 1) = 0x100000208;
    sub_10001F16C(v92, 0, 1, &v225 + 4);
    if (sub_1000052E0(v95, &v224, 0, &v154, v189, &v224) || v192 - 5 < 0xFFFFFFFE || (bzero(&v224, 0x220uLL), *&v154 = &v192, *(&v154 + 1) = 0x100000208, v96 = 1, sub_10001F16C(DWORD1(v192), &v192 + 8, 1, &v225 + 4), sub_1000052E0(v95, &v224, 0xFFFFFFFF, &v154, v189, &v224)))
    {
      v96 = 0;
LABEL_80:
      bzero(&v224, 0x220uLL);
      *&v154 = &v192;
      *(&v154 + 1) = 0x100000208;
      sub_10001F16C(v94, 0, 1, &v225 + 4);
      if ((sub_1000052E0(v95, &v224, 0, &v154, v189, &v224) & 0xFFFFFFDF) == 0)
      {
        goto LABEL_81;
      }

LABEL_133:
      v80 = v148;
      v108 = (v88 - 1);
      LODWORD(__str) = v88 - 1;
      v191 = v148;
      goto LABEL_139;
    }

    do
    {
      while (1)
      {
LABEL_81:
        v103 = sub_100005678(v95, 1u, &v224, &v154, v189, v97, v98, v99);
        if (v103)
        {
          if (v103 != 32)
          {
            goto LABEL_133;
          }

LABEL_97:
          v80 = v148;
          goto LABEL_98;
        }

        if (*(&v225 + 6) != v94)
        {
          goto LABEL_97;
        }

        if (v192 != 2)
        {
          break;
        }

        if ((BYTE2(v192) & 0x20) != 0)
        {
          v104 = v195 == 1717858928 && DWORD1(v195) == 1296122707;
          if (v104 && *(a1 + 5728) != v94)
          {
            if (v96)
            {
              v105 = 0;
              v106 = HIDWORD(v194);
              v107 = DWORD2(v192);
              goto LABEL_102;
            }

LABEL_86:
            v96 = DWORD2(v192) == v92;
          }
        }
      }
    }

    while (v192 != 1);
    if (!v96)
    {
      goto LABEL_86;
    }

    v106 = DWORD2(v192);
    v105 = (BYTE2(v192) & 0x20) == 0;
    v107 = DWORD2(v192);
LABEL_102:
    v80 = v148;
    v109 = (v88 - 1);
    v110 = v148;
    if (!v106)
    {
LABEL_98:
      v108 = (v88 - 1);
      goto LABEL_99;
    }

    do
    {
      v111 = *v110;
      v110 += 2;
      if (v111 == v106)
      {
        v108 = (v88 - 1);
        LODWORD(__str) = v88 - 1;
        v191 = v148;
        v121 = *(a1 + 888);
        v224 = *v9;
        v225 = v121;
        v122 = *(a1 + 920);
        v226 = *(a1 + 904);
        v227 = v122;
        sub_10002D0A4(&v224, 4294966758, v100, v101, v102, v97, v98, v99, v141);
        if (sub_10002D444() >= 3)
        {
          v224 = xmmword_100043460;
          v225 = *&qword_100043470;
          v226 = xmmword_100043480;
          v227 = *&off_100043490;
          sub_10002D0E8(&v224, 2, "\tDetected when adding (%u,%u) to following traversal stack -\n", v101, v102, v97, v98, v99, v106);
          sub_10000D9EC(&__str, v123, v124, v125, v126, v127, v128, v129);
        }

        *(a1 + 28) |= 4u;
        goto LABEL_139;
      }

      --v109;
    }

    while (v109);
    *v146 = v106;
    *v91 = v107;
    if (v145 == v88)
    {
      v112 = malloc_type_realloc(v148, 8 * (v145 + 512), 0x100004000313F17uLL);
      if (!v112)
      {
        LODWORD(v108) = v88;
        break;
      }

      v80 = v112;
      v145 += 512;
    }

    if (v144)
    {
      v113 = v105;
    }

    else
    {
      v113 = 1;
    }

    if (v113)
    {
      goto LABEL_129;
    }

    if (HIDWORD(v143) == 1)
    {
      v114 = v142;
    }

    else
    {
      v114 = v143;
    }

    if (!v114)
    {
LABEL_119:
      if (v143 >= v142)
      {
        v117 = 1;
      }

      else
      {
        v117 = HIDWORD(v143);
      }

      if (v143 >= v142)
      {
        v118 = 0;
      }

      else
      {
        v118 = v143;
      }

      v144[v118] = v106;
      if (v143 < v142)
      {
        v119 = v143 + 1;
      }

      else
      {
        v119 = 1;
      }

      v143 = __PAIR64__(v117, v119);
LABEL_129:
      *&v80[2 * v88] = 0;
      v108 = (v88 + 1);
      if (v145 != v108)
      {
        goto LABEL_99;
      }

      v120 = malloc_type_realloc(v80, 8 * (v145 + 512), 0x100004000313F17uLL);
      if (v120)
      {
        v80 = v120;
        v145 += 512;
        goto LABEL_99;
      }

      break;
    }

    v115 = v144;
    while (1)
    {
      v116 = *v115++;
      if (v116 == v106)
      {
        break;
      }

      if (!--v114)
      {
        goto LABEL_119;
      }
    }

    v108 = v88;
LABEL_99:
    v88 = v108;
    if (v108 >= 2)
    {
      continue;
    }

    break;
  }

  LODWORD(__str) = v108;
  v191 = v80;
  v108 = v108;
LABEL_139:
  v24 = v147;
  if (v145 <= v108)
  {
    v130 = *(a1 + 888);
    v224 = *v9;
    v225 = v130;
    v131 = *(a1 + 920);
    v226 = *(a1 + 904);
    v227 = v131;
    sub_10002D0A4(&v224, 4294966705, v100, v101, v102, v97, v98, v99, v141);
    if (sub_10002D444() >= 3)
    {
      sub_10000D9EC(&__str, v132, v133, v134, v135, v136, v137, v138);
    }

    *(a1 + 28) |= 4u;
  }

  free(v80);
  if (v144)
  {
    free(v144);
  }

LABEL_145:
  v35 = 0;
LABEL_146:
  free(v24);
  v36 = v149;
LABEL_147:
  free(v36);
  return v35;
}

uint64_t sub_10000D9EC(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = xmmword_100043460;
  v23 = *&qword_100043470;
  v24 = xmmword_100043480;
  v25 = *&off_100043490;
  sub_10002D0E8(&v22, 2, "\t", a4, a5, a6, a7, a8, v20);
  if (*a1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = (*(a1 + 1) + v14);
      v18 = *v16;
      v17 = v16[1];
      v22 = xmmword_100043460;
      v23 = *&qword_100043470;
      v24 = xmmword_100043480;
      v25 = *&off_100043490;
      sub_10002D0E8(&v22, 2, "(%u,%u) ", v9, v10, v11, v12, v13, v18);
      ++v15;
      v14 += 8;
    }

    while (v15 < *a1);
  }

  v22 = xmmword_100043460;
  v23 = *&qword_100043470;
  v24 = xmmword_100043480;
  v25 = *&off_100043490;
  return sub_10002D0E8(&v22, 2, "\n", v9, v10, v11, v12, v13, v21);
}

uint64_t sub_10000DAD0(uint64_t a1, void *a2)
{
  memset(v58, 0, 512);
  memset(v57, 0, 512);
  if (sub_10000DD80(a1, v58))
  {
    v4 = 0;
  }

  else
  {
    v4 = v58[2];
  }

  v5 = malloc_type_malloc(0x20uLL, 0x10200400A8B189CuLL);
  if (v5)
  {
    v6 = v5;
    *v5 = v4;
    v7 = v58[3];
    if (!v4)
    {
      v7 = 0;
    }

    v5[4] = v7;
    sub_100020B5C();
    if (v8)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0;
      v9 = sub_10000B770(a1, 2, v8, &v25, v57, &v24);
      v10 = 0;
      if (!v9)
      {
        v10 = v57[3];
      }
    }

    else
    {
      v10 = 0;
    }

    v6[5] = v10;
    *(v6 + 1) = a1;
    *(a1 + 5728) = v4;
    v17 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x1000040B15B9DBAuLL);
    *(v6 + 3) = v17;
    if (!v17 && sub_10002D444() >= 3)
    {
      v25 = xmmword_100043460;
      v26 = *&qword_100043470;
      v27 = xmmword_100043480;
      v28 = *&off_100043490;
      sub_10002D0E8(&v25, 2, "HardLinkCheckBegin: prime bucket allocation failed\n", v18, v19, v20, v21, v22, v23);
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    if (sub_10002D444() >= 3)
    {
      v25 = xmmword_100043460;
      v26 = *&qword_100043470;
      v27 = xmmword_100043480;
      v28 = *&off_100043490;
      sub_10002D0E8(&v25, 2, "hardLinkCheckBegin:  malloc(%zu) failed\n", v11, v12, v13, v14, v15, 32);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10000DD80(uint64_t a1, uint64_t a2)
{
  sub_100020B5C();
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7[0] = a2;
  v7[1] = 0x100000208;
  bzero(v8, 0x220uLL);
  memcpy(v9, &unk_10004004C, sizeof(v9));
  return sub_1000052E0(*(a1 + 792), v8, 0xFFFFFFFF, v7, &v6, v8);
}

void sub_10000DE44(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t sub_10000DE8C(unsigned int a1, int a2)
{
  v4 = qword_100043428;
  if (!qword_100043428)
  {
    v4 = malloc_type_calloc(0x101uLL, 8uLL, 0x2004093837F09uLL);
    qword_100043428 = v4;
    if (!v4)
    {
      return 12;
    }
  }

  v5 = v4[a1 % 0x101];
  if (v5)
  {
    while (*v5 != a1)
    {
      v5 = *(v5 + 2);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_7;
  }

LABEL_6:
  v5 = sub_10000DF3C(a1);
  if (!v5)
  {
    return 12;
  }

LABEL_7:
  v6 = 0;
  v5[1] = a2;
  return v6;
}

_DWORD *sub_10000DF3C(unsigned int a1)
{
  result = malloc_type_malloc(0x18uLL, 0x10200406E52F545uLL);
  if (result)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a1;
    v3 = qword_100043428;
    *(result + 2) = *(qword_100043428 + 8 * (a1 % 0x101));
    *(v3 + 8 * (a1 % 0x101)) = result;
    ++dword_100043430;
  }

  return result;
}

uint64_t sub_10000DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  if (v10 && ((*(a2 + 2) & 0x20) != 0 || *(a2 + 32) || *(a2 + 36)))
  {
    result = sub_10000C564(v10, *(a2 + 44), *(a2 + 8));
    if ((*(a2 + 2) & 0x20) == 0)
    {
      result = sub_10000BC9C(*(a1 + 8), 0, v12, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    v13 = *(a2 + 44);
    result = qword_100043428;
    if (qword_100043428 || (result = malloc_type_calloc(0x101uLL, 8uLL, 0x2004093837F09uLL), (qword_100043428 = result) != 0))
    {
      result = *(result + 8 * (v13 % 0x101));
      if (result)
      {
        while (*result != v13)
        {
          result = *(result + 16);
          if (!result)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        result = sub_10000DF3C(v13);
        if (!result)
        {
          goto LABEL_14;
        }
      }

      ++*(result + 8);
    }
  }

LABEL_14:
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(a2 + 12);
    if (v15 != v14)
    {
      v16 = *(a1 + 20);
      if (v16)
      {
        if (v15 != v16)
        {
          if (byte_10004350E)
          {
            v17 = *(a2 + 8);
            v38 = xmmword_100043460;
            v39 = *&qword_100043470;
            v40 = xmmword_100043480;
            v41 = *&off_100043490;
            sub_10002D0E8(&v38, 2, "Hard Link catalog entry %u has bad time %u (should be %u, or at least %u)\n", a4, a5, a6, a7, a8, v17);
            v14 = *(a1 + 16);
          }

          result = sub_10001F024(*(a1 + 8), 0);
          if (result)
          {
            v24 = result;
            v25 = (*(a1 + 8) + 872);
            v26 = *(*(a1 + 8) + 888);
            v38 = *v25;
            v39 = v26;
            v27 = v25[3];
            v40 = v25[2];
            v41 = v27;
            sub_10002D0A4(&v38, 610, v18, v19, v20, v21, v22, v23, v37);
            snprintf(__str, 0xCuLL, "%u", v14);
            snprintf(v42, 0xCuLL, "%u", *(a2 + 12));
            v28 = (*(a1 + 8) + 872);
            v29 = *(*(a1 + 8) + 888);
            v38 = *v28;
            v39 = v29;
            v30 = v28[3];
            v40 = v28[2];
            v41 = v30;
            result = sub_10002D0A4(&v38, 559, v31, v32, v33, v34, v35, v36, __str);
            *(v24 + 8) = 610;
            *(v24 + 40) = *(a2 + 8);
            *(v24 + 16) = *(a1 + 16);
            *(v24 + 24) = *(a2 + 12);
          }

          else if (byte_10004350E)
          {
            v38 = xmmword_100043460;
            v39 = *&qword_100043470;
            v40 = xmmword_100043480;
            v41 = *&off_100043490;
            return sub_10002D0E8(&v38, 2, "Unable to allocate hard link time repair order!", v19, v20, v21, v22, v23, v37);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000E250(uint64_t a1, uint64_t a2)
{
  v153 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123[1] = 0u;
  v124 = 0u;
  v3 = 5732;
  if (!a2)
  {
    v3 = 5728;
  }

  v123[0] = 0uLL;
  if (a2)
  {
    v4 = "dir_";
  }

  else
  {
    v4 = "iNode";
  }

  v116 = 0;
  v5 = *(a1 + v3);
  if (v5)
  {
    v7 = sub_10000DD80(a1, v123);
    if (DWORD1(v123[0]))
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = DWORD1(v123[0]) + 10;
    if (!v8)
    {
      v9 = 1000;
    }

    v10 = 1;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v11 <= v9);
    v12 = (v11 << (v11 < v9 / 3 + v9));
    v13 = malloc_type_calloc(v12, 0x18uLL, 0x10200406E52F545uLL);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 792);
      bzero(&v119, 0x220uLL);
      sub_10001F16C(2, 0, 1, &v120 + 4);
      v117 = v123;
      v118 = 0x100000208;
      v22 = sub_100005678(v15, 0, &v119, &v117, &v116, v16, v17, v18);
      v106 = 0;
      v23 = 0;
      v103 = v12 - 1;
      for (i = v15; !v22; v22 = sub_100005678(v15, 1u, &v119, &v117, &v116, v19, v20, v21))
      {
        if (LOWORD(v123[0]) == 2)
        {
          if (a2)
          {
            v24 = v125 == 1717858928 || DWORD1(v125) == 1296122707;
            if (!v24 && (SWORD4(v125) & 0x80000000) == 0)
            {
              continue;
            }

            if (*(&v120 + 6) == *(a1 + 5728))
            {
              continue;
            }

            v25 = HIDWORD(v124);
            v26 = WORD1(v123[0]);
            if (HIDWORD(v124) <= 0xF && (BYTE2(v123[0]) & 0x20) == 0)
            {
              continue;
            }
          }

          else
          {
            if (v125 != 1751936619 || DWORD1(v125) != 1751544619)
            {
              continue;
            }

            v26 = WORD1(v123[0]);
            v25 = HIDWORD(v124);
          }

          v28 = DWORD2(v123[0]);
          if ((v26 & 0x20) == 0)
          {
            sub_10000B9E8(a1, DWORD2(v123[0]), a2, v26, v26 | 0x20, v19, v20, v21);
          }

          if (a2)
          {
            if ((BYTE9(v124) & 2) == 0)
            {
              sub_10000BD14(a1, DWORD2(v123[0]), BYTE9(v124), BYTE9(v124) | 2, 1);
            }

            if (v125 != 0x4D41435366647270 || (SWORD4(v125) & 0x80000000) == 0)
            {
              sub_10000BE6C(a1, DWORD2(v123[0]), 1);
            }
          }

          __n = v28;
          v29 = sub_10000EC24(v25, v12, v106, v14);
          if (v29)
          {
            v32 = v29;
            v33 = *(v29 + 4) + 1;
            *(v29 + 4) = v33;
          }

          else
          {
            v34 = v25 & v103;
            v35 = ((v25 & v103) + v103) % v12;
            if ((v25 & v103) != v35)
            {
              while (1)
              {
                v36 = &v14[3 * v34];
                if ((v36[1] & 1) == 0 || *v36 == v25)
                {
                  break;
                }

                v34 = (v34 + 1) % v12;
                if (v34 == v35)
                {
                  v34 = ((v25 & v103) + v103) % v12;
                  break;
                }
              }
            }

            v37 = &v14[3 * v34];
            v38 = *(v37 + 2);
            if (v38)
            {
              if (*v37 != v25)
              {
                *__s1 = xmmword_100043460;
                v155 = *&qword_100043470;
                v156 = xmmword_100043480;
                v157 = *&off_100043490;
                sub_10002D0E8(__s1, 2, "hash table full (%d entries) \n", v30, v31, v19, v20, v21, v106);
                exit(14);
              }

              *__s1 = xmmword_100043460;
              v155 = *&qword_100043470;
              v156 = xmmword_100043480;
              v157 = *&off_100043490;
              sub_10002D0E8(__s1, 2, "hash: duplicate insert! (%d)\n", v30, v31, v19, v20, v21, v25);
LABEL_142:
              exit(13);
            }

            if (v37[2])
            {
              v100 = *v37;
              *__s1 = xmmword_100043460;
              v155 = *&qword_100043470;
              v156 = xmmword_100043480;
              v157 = *&off_100043490;
              sub_10002D0E8(__s1, 2, "hash: overwriting data! (old:%u, new:%u)\n", v30, v31, v19, v20, v21, v100);
              goto LABEL_142;
            }

            *v37 = v25;
            *(v37 + 1) = 1;
            *(v37 + 2) = v38 | 1;
            v106 = (v106 + 1);
            v39 = sub_10000EC24(v25, v12, v106, v14);
            if (!v39)
            {
              v22 = 2;
              goto LABEL_83;
            }

            v32 = v39;
            ++v23;
            v33 = *(v39 + 4);
          }

          v40 = v33 - 1;
          HIDWORD(v41) = -858993459 * (v33 - 1) + 429496728;
          LODWORD(v41) = HIDWORD(v41);
          if ((v41 >> 1) <= 0x19999998)
          {
            v107 = v14;
            v42 = v33 + 9;
            v43 = malloc_type_realloc(*(v32 + 16), 12 * (v33 + 9), 0x10000403E1C8BA9uLL);
            if (!v43)
            {
              free(*(v32 + 16));
              *(v32 + 16) = 0;
              v22 = 12;
              v14 = v107;
              goto LABEL_83;
            }

            *(v32 + 16) = v43;
            v44 = v40 < v42;
            v14 = v107;
            if (v44)
            {
              v45 = 12 * v40;
              v46 = 10;
              do
              {
                v47 = *(v32 + 16) + v45;
                *(v47 + 8) = 0;
                *v47 = 0;
                v45 += 12;
                --v46;
              }

              while (v46);
            }
          }

          v48 = *(v32 + 16);
          if (v48)
          {
            v49 = (v48 + 12 * v40);
            v49[1] = __n;
            *v49 = v124;
            v49[2] = DWORD1(v124);
          }

          v15 = i;
        }
      }

      if (v22 == 32)
      {
        bzero(&v119, 0x220uLL);
        sub_10001F16C(v5, 0, 1, &v120 + 4);
        v117 = v123;
        v118 = 0x100000208;
        v50 = sub_1000052E0(v15, &v119, 0xFFFFFFFF, &v117, &v116, &v119);
        if (!v50)
        {
          v80 = 4;
          if (!a2)
          {
            v80 = 5;
          }

          __na = v80;
          v102 = v5;
          do
          {
            v115 = 0;
            if (LOWORD(v123[0]) - 3 < 2)
            {
              goto LABEL_103;
            }

            if (*(&v120 + 6) != v5)
            {
              v57 = 0;
              goto LABEL_65;
            }

            v82 = a2 || LOWORD(v123[0]) == 2;
            v83 = !v82;
            if (LOWORD(v123[0]) == 1 || a2 == 0)
            {
              v81 = i;
              if (!v83)
              {
                sub_10001EAF0(&v120 + 12, 2 * WORD5(v120), __s1, &v115, 0x40uLL);
                __s1[v115] = 0;
                if (!strncmp(__s1, v4, __na))
                {
                  v5 = DWORD2(v123[0]);
                  LODWORD(v85) = DWORD2(v123[0]);
                  if (!a2)
                  {
                    v85 = atol(&__s1[5]);
                    if (HIDWORD(v85))
                    {
                      if (sub_10002D444() < 3)
                      {
                        v57 = 22;
                      }

                      else
                      {
                        v111 = xmmword_100043460;
                        v112 = *&qword_100043470;
                        v113 = xmmword_100043480;
                        v114 = *&off_100043490;
                        v57 = 22;
                        sub_10002D0E8(&v111, 2, "\tLink reference num=%ld is invalid for inode=%u result=%d\n", v52, v53, v54, v55, v56, v85);
                      }

                      goto LABEL_65;
                    }
                  }

                  v86 = WORD1(v123[0]);
                  v92 = sub_10000EC24(v85, v12, v106, v14);
                  if ((v86 & 0x20) == 0)
                  {
                    sub_10000BB2C(a1, v5, a2, v86, v86 | 0x20, 1);
                  }

                  if (v92)
                  {
                    v110 = 0;
                    if (sub_10000C14C(a1, v123, v5, a2, &v110) && sub_10002D444() >= 3)
                    {
                      v111 = xmmword_100043460;
                      v112 = *&qword_100043470;
                      v113 = xmmword_100043480;
                      v114 = *&off_100043490;
                      sub_10002D0E8(&v111, 2, "\tError getting first link ID for inode = %u (result=%d)\n", v96, v97, v93, v94, v95, v5);
                    }

                    sub_10000ECA0(a1, v5, *(v92 + 16), *(v92 + 4), v110, v93, v94, v95);
                    v99 = *(v92 + 4);
                    v81 = i;
                    if (HIDWORD(v124) != v99)
                    {
                      sub_10000EFCC(a1, v5, HIDWORD(v124), v99, v98, v54, v55, v56);
                    }

                    *(v92 + 8) |= 2u;
                    --v23;
                    LODWORD(v5) = v102;
                  }

                  else
                  {
                    sub_10000F0F8(a1, a2, v5, v87, v88, v89, v90, v91);
                    LODWORD(v5) = v102;
                    v81 = i;
                  }
                }
              }
            }

            else
            {
LABEL_103:
              v81 = i;
            }

            v50 = sub_100005678(v81, 1u, &v119, &v117, &v116, v54, v55, v56);
          }

          while (!v50);
        }

        v57 = v50;
LABEL_65:
        v22 = v57 == 32 ? 0 : v57;
        if (!v22 && v23)
        {
          if (v12 < 1)
          {
            v22 = 0;
LABEL_88:
            free(v14);
            return v22;
          }

          v58 = 0;
          if (a2)
          {
            v59 = 604;
          }

          else
          {
            v59 = 603;
          }

          v108 = v14;
          do
          {
            v60 = &v14[3 * v58];
            if ((v60[1] & 3) == 1 && *(v60 + 1))
            {
              v61 = 0;
              v62 = 4;
              do
              {
                v63 = *(v60[2] + v62);
                v64 = *(a1 + 888);
                *__s1 = *(a1 + 872);
                v155 = v64;
                v65 = *(a1 + 920);
                v156 = *(a1 + 904);
                v157 = v65;
                sub_10002D0A4(__s1, v59, v51, v52, v53, v54, v55, v56, v63);
                v66 = sub_10001F024(a1, 0);
                if (v66)
                {
                  *(v66 + 4) = v59;
                  *(v66 + 10) = v63;
                  *(a1 + 28) |= 8u;
                }

                ++v61;
                v62 += 12;
              }

              while (v61 < *(v60 + 1));
            }

            ++v58;
            v14 = v108;
          }

          while (v58 != v12);
          v22 = 0;
        }
      }

LABEL_83:
      if (v12 >= 1)
      {
        v67 = v14 + 2;
        do
        {
          if (*v67)
          {
            free(*v67);
          }

          v67 += 3;
          --v12;
        }

        while (v12);
      }

      goto LABEL_88;
    }

    if (sub_10002D444() >= 3)
    {
      v119 = xmmword_100043460;
      v120 = *&qword_100043470;
      v121 = xmmword_100043480;
      v122 = *&off_100043490;
      sub_10002D0E8(&v119, 2, "RepairHardLinkChains:  calloc(%d, %zu) failed\n", v74, v75, v76, v77, v78, v12);
    }

    return 12;
  }

  else if (sub_10002D444() < 3)
  {
    return 2;
  }

  else
  {
    v119 = xmmword_100043460;
    v120 = *&qword_100043470;
    v121 = xmmword_100043480;
    v122 = *&off_100043490;
    if (a2)
    {
      v73 = "\tPrivate directory for dirlinks not found.  Stopping repairs.\n";
    }

    else
    {
      v73 = "\tPrivate directory for filelinks not found.  Stopping repairs.\n";
    }

    v22 = 2;
    sub_10002D0E8(&v119, 2, v73, v68, v69, v70, v71, v72, v101);
  }

  return v22;
}

uint64_t sub_10000EC24(int a1, int a2, int a3, uint64_t a4)
{
  v4 = (a2 - 1) & a1;
  v5 = (a3 + v4 - 1) % a2;
  if (v4 != v5)
  {
    while (1)
    {
      v6 = a4 + 24 * v4;
      if ((*(v6 + 8) & 1) == 0 || *v6 == a1)
      {
        break;
      }

      v4 = (v4 + 1) % a2;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  v7 = a4 + 24 * v4;
  if ((*(v7 + 8) & 1) == 0 || *v7 != a1)
  {
    return 0;
  }

  return v7;
}

void sub_10000ECA0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t size, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v9 = a5;
    v10 = size;
    if (size >= 2)
    {
      v13 = malloc_type_calloc(0xCuLL, size, 0x78D0DFE2uLL);
      if (!v13)
      {
        return;
      }

      v14 = v13;
      qsort(a3, v10, 0xCuLL, sub_10000F880);
      v15 = 0;
      LODWORD(v16) = 0;
      do
      {
        v17 = &a3[3 * v15];
        if (v17[1])
        {
          LODWORD(v18) = v16 + 1;
          v19 = *v17;
          v20 = v17[2];
          v21 = &v14[12 * v16];
          *(v21 + 2) = v20;
          *v21 = v19;
          v17[1] = 0;
          if (v20)
          {
            v18 = v18;
            while (1)
            {
              v22 = 0;
              v23 = a3 + 1;
              while (*v23 != v20)
              {
                ++v22;
                v23 += 3;
                if (v10 == v22)
                {
                  goto LABEL_15;
                }
              }

              if (!v22)
              {
                break;
              }

              v16 = v18 + 1;
              v24 = *(v23 - 1);
              v20 = v23[1];
              v25 = &v14[12 * v18];
              *(v25 + 2) = v20;
              *v25 = v24;
              *v23 = 0;
              v18 = v16;
              if (!v20)
              {
                goto LABEL_16;
              }
            }

            LODWORD(v16) = v18;
          }

          else
          {
LABEL_15:
            LODWORD(v16) = v18;
          }
        }

LABEL_16:
        ++v15;
      }

      while (v15 != v10);
      memcpy(a3, v14, 12 * v10);
      free(v14);
    }

    v31 = *a3;
    if (v31)
    {
      sub_10000F610(a1, a3[1], v31, 0, a5, a6, a7, a8);
    }

    v32 = a3[1];
    if (v32 != v9)
    {
      v33 = *(a1 + 888);
      v52 = *(a1 + 872);
      v53 = v33;
      v34 = *(a1 + 920);
      v54 = *(a1 + 904);
      v55 = v34;
      sub_10002D0A4(&v52, 600, v31, size, a5, a6, a7, a8, a2);
      __sprintf_chk(v57, 0, 0x10uLL, "%u", v32);
      __sprintf_chk(v56, 0, 0x10uLL, "%u", v9);
      v35 = *(a1 + 888);
      v52 = *(a1 + 872);
      v53 = v35;
      v36 = *(a1 + 920);
      v54 = *(a1 + 904);
      v55 = v36;
      sub_10002D0A4(&v52, 559, v37, v38, v39, v40, v41, v42, v57);
      v43 = sub_10001F024(a1, 0);
      if (v43)
      {
        *(v43 + 4) = 600;
        v43[2] = v32;
        v43[3] = v9;
        *(v43 + 9) = 0;
        *(v43 + 10) = a2;
        *(a1 + 28) |= 8u;
      }
    }

    if (v10 >= 2)
    {
      v44 = a3 + 4;
      v45 = v10 - 1;
      do
      {
        v46 = *(v44 - 2);
        v47 = *v44;
        if (v46 != v47)
        {
          sub_10000F748(a1, *(v44 - 3), v46, v47, a5, a6, a7, a8);
        }

        v48 = *(v44 - 1);
        v49 = *(v44 - 3);
        if (v48 != v49)
        {
          sub_10000F610(a1, *v44, v48, v49, a5, a6, a7, a8);
        }

        v44 += 3;
        --v45;
      }

      while (v45);
    }

    v50 = &a3[3 * v10];
    v51 = *(v50 - 1);
    if (v51)
    {
      sub_10000F748(a1, *(v50 - 2), v51, 0, a5, a6, a7, a8);
    }
  }

  else if (sub_10002D444() >= 3)
  {
    v52 = xmmword_100043460;
    v53 = *&qword_100043470;
    v54 = xmmword_100043480;
    v55 = *&off_100043490;
    sub_10002D0E8(&v52, 2, "\tCheckHardLinkList: list=NULL for inodeID = %u\n", v26, v27, v28, v29, v30, a2);
  }
}

void *sub_10000EFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = (a1 + 872);
  v13 = *(a1 + 888);
  v24 = *(a1 + 872);
  v25 = v13;
  v14 = *(a1 + 920);
  v26 = *(a1 + 904);
  v27 = v14;
  sub_10002D0A4(&v24, 567, a3, a4, a5, a6, a7, a8, a2);
  __sprintf_chk(v29, 0, 0x10uLL, "%u", v8);
  __sprintf_chk(v28, 0, 0x10uLL, "%u", v9);
  v15 = v12[1];
  v24 = *v12;
  v25 = v15;
  v16 = v12[3];
  v26 = v12[2];
  v27 = v16;
  sub_10002D0A4(&v24, 559, v17, v18, v19, v20, v21, v22, v29);
  result = sub_10001F024(a1, 0);
  if (result)
  {
    *(result + 4) = 567;
    result[2] = v8;
    result[3] = v9;
    *(result + 9) = 0;
    *(result + 10) = v10;
  }

  return result;
}

void *sub_10000F0F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (a2)
  {
    v10 = 606;
  }

  else
  {
    v10 = 605;
  }

  v11 = *(a1 + 888);
  v14[0] = *(a1 + 872);
  v14[1] = v11;
  v12 = *(a1 + 920);
  v14[2] = *(a1 + 904);
  v14[3] = v12;
  sub_10002D0A4(v14, v10, a3, a4, a5, a6, a7, a8, a3);
  result = sub_10001F024(a1, 0);
  if (result)
  {
    *(result + 4) = v10;
    *(result + 10) = v8;
    *(a1 + 28) |= 8u;
  }

  return result;
}

uint64_t sub_10000F180(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  memset(v73, 0, 512);
  memset(v72, 0, 512);
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v62 = 0;
  v9 = *(a1 + 1);
  v10 = *(v9 + 888);
  v66 = *(v9 + 872);
  v67 = v10;
  v11 = *(v9 + 920);
  v68 = *(v9 + 904);
  v69 = v11;
  sub_10002D0A4(&v66, 207, a3, a4, a5, a6, a7, a8, v60);
  v12 = *a1;
  v13 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x1000040B15B9DBAuLL);
  v14 = &unk_100043000;
  if (!v13)
  {
    if (sub_10002D444() >= 3)
    {
      v66 = xmmword_100043460;
      v67 = *&qword_100043470;
      v68 = xmmword_100043480;
      v69 = *&off_100043490;
      sub_10002D0E8(&v66, 2, "CheckHardLinks:  calloc(1, %zu) failed\n", v42, v43, v44, v45, v46, 936);
    }

    v19 = 12;
    goto LABEL_40;
  }

  v15 = *(v9 + 792);
  v64 = v73;
  v65 = 0x100000208;
  bzero(v72, 0x220uLL);
  sub_10001F16C(v12, 0, 1, &v72[1] + 4);
  v19 = sub_1000052E0(v15, v72, 0xFFFFFFFF, &v64, &v63, v72);
  if ((v19 & 0xFFFFFFDF) != 0)
  {
LABEL_40:
    if (v14[268])
    {
      for (i = 0; i != 257; ++i)
      {
        while (1)
        {
          v57 = (qword_100043428 + 8 * i);
          v58 = *v57;
          if (!*v57)
          {
            break;
          }

          *v57 = v58[2];
          free(v58);
        }
      }

      free(qword_100043428);
      qword_100043428 = 0;
      v14[268] = 0;
    }

    goto LABEL_46;
  }

  v20 = sub_100005678(v15, 1u, v72, &v64, &v63, v16, v17, v18);
  if (v20)
  {
LABEL_18:
    v19 = v20;
    if (v20 != 32)
    {
      goto LABEL_29;
    }
  }

  else
  {
    while (*(&v72[1] + 6) == v12)
    {
      if (LOWORD(v73[0]) == 2)
      {
        sub_10001EAF0(&v72[1] + 12, 2 * WORD5(v72[1]), &v70, &v62, 0x40uLL);
        *(&v70 + v62) = 0;
        if (v70 == 1886217588 && sub_10002D444() == 3)
        {
          v27 = *(v9 + 888);
          v66 = *(v9 + 872);
          v67 = v27;
          v28 = *(v9 + 920);
          v68 = *(v9 + 904);
          v69 = v28;
          sub_10002D0A4(&v66, 568, v24, v25, v26, v21, v22, v23, &v70);
        }

        else if (v70 == 1685016169 && v71 == 101)
        {
          v20 = sub_10000C570(v9, v13, v73, &v72[1] + 4, 0);
          if (v20)
          {
            goto LABEL_18;
          }

          LOBYTE(v70) = 0;
        }
      }

      v20 = sub_100005678(v15, 1u, v72, &v64, &v63, v21, v22, v23);
      if (v20)
      {
        goto LABEL_18;
      }
    }
  }

  v30 = *(a1 + 3);
  if (v30)
  {
    v19 = sub_100021BFC(v13, v30);
    if (v19)
    {
      sub_10000BC9C(v9, 0, v31, v32, v33, v34, v35, v36);
      if (sub_10002D444() >= 3)
      {
        v66 = xmmword_100043460;
        v67 = *&qword_100043470;
        v68 = xmmword_100043480;
        v69 = *&off_100043490;
        sub_10002D0E8(&v66, 2, "\tfilelink prime buckets do not match\n", v37, v38, v39, v40, v41, v61);
      }

      v14 = &unk_100043000;
      goto LABEL_40;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_29:
  v14 = &unk_100043000;
  if (dword_100043430)
  {
    if (sub_10002D444() >= 3)
    {
      v66 = xmmword_100043460;
      v67 = *&qword_100043470;
      v68 = xmmword_100043480;
      v69 = *&off_100043490;
      sub_10002D0E8(&v66, 2, "\tCheckHardLinks: found %u pre-Leopard file inodes.\n", v48, v49, v50, v51, v52, dword_100043430);
    }

    v53 = 0;
    while (1)
    {
      v54 = *(qword_100043428 + 8 * v53);
      if (v54)
      {
        break;
      }

LABEL_37:
      if (++v53 == 257)
      {
        goto LABEL_40;
      }
    }

    while (1)
    {
      v55 = *(v54 + 4);
      if (!v55 || v55 != *(v54 + 8))
      {
        break;
      }

      v54 = *(v54 + 16);
      if (!v54)
      {
        goto LABEL_37;
      }
    }

    sub_10000BC9C(v9, 0, v47, v48, v49, v50, v51, v52);
    goto LABEL_40;
  }

LABEL_46:
  if (v13)
  {
    free(v13);
  }

  return v19;
}

void *sub_10000F610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = (a1 + 872);
  v13 = *(a1 + 888);
  v24 = *(a1 + 872);
  v25 = v13;
  v14 = *(a1 + 920);
  v26 = *(a1 + 904);
  v27 = v14;
  sub_10002D0A4(&v24, 593, a3, a4, a5, a6, a7, a8, a2);
  __sprintf_chk(v29, 0, 0x10uLL, "%u", v8);
  __sprintf_chk(v28, 0, 0x10uLL, "%u", v9);
  v15 = v12[1];
  v24 = *v12;
  v25 = v15;
  v16 = v12[3];
  v26 = v12[2];
  v27 = v16;
  sub_10002D0A4(&v24, 559, v17, v18, v19, v20, v21, v22, v29);
  result = sub_10001F024(a1, 0);
  if (result)
  {
    *(result + 4) = 593;
    result[2] = v8;
    result[3] = v9;
    *(result + 9) = 0;
    *(result + 10) = v10;
    *(a1 + 28) |= 0x80u;
  }

  return result;
}

void *sub_10000F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = (a1 + 872);
  v13 = *(a1 + 888);
  v24 = *(a1 + 872);
  v25 = v13;
  v14 = *(a1 + 920);
  v26 = *(a1 + 904);
  v27 = v14;
  sub_10002D0A4(&v24, 594, a3, a4, a5, a6, a7, a8, a2);
  __sprintf_chk(v29, 0, 0x10uLL, "%u", v8);
  __sprintf_chk(v28, 0, 0x10uLL, "%u", v9);
  v15 = v12[1];
  v24 = *v12;
  v25 = v15;
  v16 = v12[3];
  v26 = v12[2];
  v27 = v16;
  sub_10002D0A4(&v24, 559, v17, v18, v19, v20, v21, v22, v29);
  result = sub_10001F024(a1, 0);
  if (result)
  {
    *(result + 4) = 594;
    result[2] = v8;
    result[3] = v9;
    *(result + 9) = 0;
    *(result + 10) = v10;
    *(a1 + 28) |= 0x80u;
  }

  return result;
}

int8x8_t sub_10000F890(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  *(a1 + 1) = vrev32_s8(*(a1 + 1));
  *(a1 + 5) = vrev16_s8(*(a1 + 5));
  a1[9] = bswap32(a1[9]) >> 16;
  *(a1 + 10) = vrev32_s8(*(a1 + 10));
  a1[14] = bswap32(a1[14]) >> 16;
  *(a1 + 15) = bswap32(*(a1 + 15));
  a1[17] = bswap32(a1[17]) >> 16;
  *(a1 + 16) = bswap32(*(a1 + 16));
  a1[34] = bswap32(a1[34]) >> 16;
  *(a1 + 35) = vrev32_s8(*(a1 + 35));
  *(a1 + 39) = bswap32(*(a1 + 39));
  a1[41] = bswap32(a1[41]) >> 16;
  *(a1 + 42) = vrev32_s8(*(a1 + 42));
  *(a1 + 23) = bswap32(*(a1 + 23));
  a1[62] = bswap32(a1[62]) >> 16;
  a1[63] = bswap32(a1[63]) >> 16;
  a1[64] = bswap32(a1[64]) >> 16;
  *(a1 + 65) = bswap32(*(a1 + 65));
  *(a1 + 67) = vrev16_s8(*(a1 + 67));
  a1[71] = bswap32(a1[71]) >> 16;
  a1[72] = bswap32(a1[72]) >> 16;
  *(a1 + 73) = bswap32(*(a1 + 73));
  result = vrev16_s8(*(a1 + 75));
  *(a1 + 75) = result;
  a1[79] = bswap32(a1[79]) >> 16;
  a1[80] = bswap32(a1[80]) >> 16;
  return result;
}

double sub_10000FA00(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  *(a1 + 2) = vrev32_s8(*(a1 + 2));
  v2 = vrev32q_s8(*(a1 + 2));
  *(a1 + 1) = vrev32q_s8(*(a1 + 1));
  *(a1 + 2) = v2;
  *(a1 + 3) = vrev32q_s8(*(a1 + 3));
  *(a1 + 8) = vrev32_s8(*(a1 + 32));
  *(a1 + 9) = bswap64(*(a1 + 9));
  sub_10000FAB4((a1 + 56));
  sub_10000FAB4((a1 + 96));
  sub_10000FAB4((a1 + 136));
  sub_10000FAB4((a1 + 176));

  *&result = sub_10000FAB4((a1 + 216)).u64[0];
  return result;
}

int8x16_t sub_10000FAB4(uint64_t a1)
{
  v1 = 0;
  *a1 = bswap64(*a1);
  *(a1 + 8) = vrev32_s8(*(a1 + 8));
  v2 = a1 + 16;
  do
  {
    v3 = (v2 + v1);
    result = vrev32q_s8(*(v2 + v1 + 16));
    *v3 = vrev32q_s8(*(v2 + v1));
    v3[1] = result;
    v1 += 32;
  }

  while (v1 != 64);
  return result;
}

uint64_t sub_10000FAF8(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = *(a2 + 2);
  v13 = *a1;
  if (!a3)
  {
    v21 = vrev32_s8(*v11);
    *v11 = v21;
    v22 = *(v12 + 56);
    v23 = byte_10004350E;
    if (v21.i32[0] < v22 || byte_10004350E == 0)
    {
      v25 = v21.u32[1];
    }

    else
    {
      v185 = xmmword_100043460;
      v186 = *&qword_100043470;
      v187 = xmmword_100043480;
      v188 = *&off_100043490;
      sub_10002D0E8(&v185, 2, "hfs_swap_BTNode: invalid forward link (0x%08X)\n", a4, a5, a6, a7, a8, v21.u32[0]);
      v25 = v11->u32[1];
      v22 = *(v12 + 56);
      v23 = byte_10004350E;
    }

    if (v25 >= v22 && v23 != 0)
    {
      v185 = xmmword_100043460;
      v186 = *&qword_100043470;
      v187 = xmmword_100043480;
      v188 = *&off_100043490;
      sub_10002D0E8(&v185, 2, "hfs_swap_BTNode: invalid backward link (0x%08X)\n", a4, a5, a6, a7, a8, v25);
    }

    v27 = v11[1].i8[0];
    if (v27 >= -1)
    {
      v28 = byte_10004350E;
      if (v27 < 3 || byte_10004350E == 0)
      {
LABEL_28:
        v30 = v11[1].u8[1];
        if (*(v12 + 32) < v30 && v28 != 0)
        {
          v185 = xmmword_100043460;
          v186 = *&qword_100043470;
          v187 = xmmword_100043480;
          v188 = *&off_100043490;
          sub_10002D0E8(&v185, 2, "hfs_swap_BTNode: invalid node height (%d)\n", a4, a5, a6, a7, a8, v30);
        }

        goto LABEL_33;
      }
    }

    else if (!byte_10004350E)
    {
LABEL_33:
      v32 = bswap32(v11[1].u16[1]);
      v33 = HIWORD(v32);
      v11[1].i16[1] = HIWORD(v32);
      v34 = *(a1 + 24);
      if (v34 - 2 * v33 < 16)
      {
        if (byte_10004350E)
        {
          v185 = xmmword_100043460;
          v186 = *&qword_100043470;
          v187 = xmmword_100043480;
          v188 = *&off_100043490;
          sub_10002D0E8(&v185, 2, "hfs_swap_BTNode: invalid record count (0x%04X)\n", a4, a5, a6, a7, a8, v33);
        }

        goto LABEL_80;
      }

      v35 = 0;
      v13 = *a1;
      v36 = (v34 - 2 * v33 + *a1 - 4);
      while (1)
      {
        v37 = bswap32(v36[1]) >> 16;
        v36[1] = v37;
        if ((v37 & 1) != 0 || ((v37 - 14) <= 0xFFF2u ? (v38 = v34 > v37) : (v38 = 0), !v38))
        {
          if (byte_10004350E)
          {
            v50 = v11[1].u16[1];
            v185 = xmmword_100043460;
            v186 = *&qword_100043470;
            v187 = xmmword_100043480;
            v188 = *&off_100043490;
            sub_10002D0E8(&v185, 2, "hfs_swap_BTNode: offset #%d invalid  (0x%04X) (blockSize 0x%x numRecords %d)\n", a4, a5, a6, a7, a8, v35);
          }

          goto LABEL_342;
        }

        if (v35 && v37 >= *v36)
        {
          break;
        }

        ++v36;
        v69 = v35++ >= v11[1].u16[1];
        if (v69)
        {
          goto LABEL_2;
        }
      }

      if (byte_10004350E)
      {
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_swap_BTNode: offsets %d and %d out of order (0x%04X, 0x%04X)\n", a4, a5, a6, a7, a8, v35);
      }

LABEL_342:
      v47 = *(*(a2 + 1) + 216);
      v16 = *a2;
      v48 = *(a1 + 16);
      v46 = 4294966776;
      v49 = 4294966776;
      goto LABEL_343;
    }

    v185 = xmmword_100043460;
    v186 = *&qword_100043470;
    v187 = xmmword_100043480;
    v188 = *&off_100043490;
    sub_10002D0E8(&v185, 2, "hfs_swap_BTNode: invalid node kind (%d)\n", a4, a5, a6, a7, a8, v27);
    v28 = byte_10004350E;
    goto LABEL_28;
  }

LABEL_2:
  v14 = v11[1].u8[0];
  if (v14 != 255)
  {
    if (v14 == 1)
    {
      v13[1].i16[3] = bswap32(v13[1].u16[3]) >> 16;
      *v13[2].i8 = vrev32q_s8(*v13[2].i8);
      v13[4].i16[0] = bswap32(v13[4].u16[0]) >> 16;
      v13[4].i16[1] = bswap32(v13[4].u16[1]) >> 16;
      *(v13 + 36) = vrev32_s8(*(v13 + 36));
      *(&v13[5].i32[1] + 2) = bswap32(*(&v13[5].u32[1] + 2));
      v13[6].i32[1] = bswap32(v13[6].u32[1]);
      goto LABEL_49;
    }

    if (v11[1].i8[0])
    {
      goto LABEL_49;
    }
  }

  v15 = *(a2 + 1);
  v16 = *a2;
  v17 = *(a1 + 24) - 2 * v13[1].u16[1];
  v18 = v13[1].u16[1];
  v19 = v13 + v17;
  v20 = &v13[1] + 6;
  if (*v15 != 18475)
  {
    if (v17 <= 13)
    {
      if (byte_10004350E)
      {
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: invalid record count (0x%04X)\n", a4, a5, a6, a7, a8, v18);
        goto LABEL_67;
      }

LABEL_68:
      v47 = *(v15 + 216);
      v48 = *(a1 + 16);
      v46 = 4294966780;
      v49 = 4294966780;
      goto LABEL_343;
    }

    v115 = (v19 - 2);
    v60 = *(v19 - 1);
    if (v60 >= 0xE && v13 + v60 <= v115)
    {
      if (v13[1].i16[1])
      {
        v117 = 0;
        v118 = &unk_100043000;
        a4 = 12;
        a5 = 4;
        LODWORD(v119) = v13[1].u16[1];
        a6 = "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n";
        while (1)
        {
          v120 = *a1;
          v121 = &v19[2 * v117];
          v122 = *v121;
          v123 = (*a1 + v122);
          v124 = *(v121 - 1);
          if (v123 < v20 || v122 >= v124)
          {
            break;
          }

          v126 = v120 + v124;
          if (v16 == 14 || v16 == 4)
          {
            if ((v123 + 8) > v126)
            {
              if (v118[1294])
              {
                v185 = xmmword_100043460;
                v186 = *&qword_100043470;
                v187 = xmmword_100043480;
                v188 = *&off_100043490;
                sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: catalog key #%d offset too big (0x%04X)\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, (v119 + ~v117));
              }

              goto LABEL_342;
            }

            v132 = *v123;
            if ((v132 - 38) <= 0xFFFFFFDF)
            {
              if (v118[1294])
              {
                v185 = xmmword_100043460;
                v186 = *&qword_100043470;
                v187 = xmmword_100043480;
                v188 = *&off_100043490;
                sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: catalog key #%d invalid length (%d)\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, (v119 + ~v117));
              }

              goto LABEL_316;
            }

            *(v123 + 2) = bswap32(*(v123 + 2));
            if (v13[1].i8[0])
            {
              v133 = v123[6] + 6;
            }

            else
            {
              v133 = 37;
            }

            if (v133 > v132)
            {
              if (v118[1294])
              {
                v185 = xmmword_100043460;
                v186 = *&qword_100043470;
                v187 = xmmword_100043480;
                v188 = *&off_100043490;
                sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: catalog record #%d keyLength=%u expected=%u\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, (v119 - v117));
              }

              goto LABEL_342;
            }

            v134 = (v132 + 2) & 0x7E;
            v135 = &v123[v134];
            if (&v123[v134 + 4] > v126)
            {
              if (v118[1294])
              {
                v185 = xmmword_100043460;
                v186 = *&qword_100043470;
                v187 = xmmword_100043480;
                v188 = *&off_100043490;
                sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: catalog key #%d too big\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, (v119 + ~v117));
              }

              goto LABEL_342;
            }

            if (v13[1].i8[0])
            {
              v136 = *v135;
              if (!a3)
              {
                v136 = __rev16(v136);
                *v135 = v136;
              }

              v137 = bswap32(v136 - 256) >> 16;
              if (v137 - 2 < 2)
              {
                if ((v135 + 15) > v126)
                {
                  if (v118[1294])
                  {
                    v154 = v13[1].u16[1] + ~v117;
                    v185 = xmmword_100043460;
                    v186 = *&qword_100043470;
                    v187 = xmmword_100043480;
                    v188 = *&off_100043490;
                    sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: catalog thread record #%d too big\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, v154);
                  }

                  goto LABEL_342;
                }

                v138 = v135[14];
                *(v135 + 10) = bswap32(*(v135 + 10));
                if (&v135[v138 + 14] > v126)
                {
                  if (v118[1294])
                  {
                    v155 = v13[1].u16[1] + ~v117;
                    v185 = xmmword_100043460;
                    v186 = *&qword_100043470;
                    v187 = xmmword_100043480;
                    v188 = *&off_100043490;
                    sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: catalog thread record #%d name too big\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, v155);
                  }

                  goto LABEL_342;
                }
              }

              else if (v137 == 1)
              {
                if ((v135 + 102) > v126)
                {
                  if (v118[1294])
                  {
                    v159 = v13[1].u16[1] + ~v117;
                    v185 = xmmword_100043460;
                    v186 = *&qword_100043470;
                    v187 = xmmword_100043480;
                    v188 = *&off_100043490;
                    sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: catalog file record #%d too big\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, v159);
                  }

                  goto LABEL_342;
                }

                *(v135 + 5) = bswap32(*(v135 + 5));
                *(v135 + 12) = bswap32(*(v135 + 12)) >> 16;
                *(v135 + 26) = vrev32_s8(*(v135 + 26));
                *(v135 + 17) = bswap32(*(v135 + 17)) >> 16;
                *(v135 + 36) = vrev32q_s8(*(v135 + 36));
                *(v135 + 13) = bswap32(*(v135 + 13));
                *(v135 + 36) = bswap32(*(v135 + 36)) >> 16;
                v139 = (v120 + v134 + v122 + 76);
                v140 = 6;
                do
                {
                  v139[-1].i16[3] = bswap32(v139[-1].u16[3]) >> 16;
                  v139->i16[0] = bswap32(v139->u16[0]) >> 16;
                  v139 = (v139 + 4);
                  --v140;
                }

                while (v140);
              }

              else if (v137)
              {
                if (v118[1294])
                {
                  v141 = v13[1].u16[1] + ~v117;
                  v185 = xmmword_100043460;
                  v186 = *&qword_100043470;
                  v187 = xmmword_100043480;
                  v188 = *&off_100043490;
                  v184 = v16;
                  v142 = v19;
                  v177 = v20;
                  sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, v136);
                  a6 = "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n";
                  a5 = 4;
                  a4 = 12;
                  v118 = &unk_100043000;
                  v20 = v177;
                  v19 = v142;
                  v16 = v184;
                }
              }

              else
              {
                if ((v135 + 70) > v126)
                {
                  if (v118[1294])
                  {
                    v158 = v13[1].u16[1] + ~v117;
                    v185 = xmmword_100043460;
                    v186 = *&qword_100043470;
                    v187 = xmmword_100043480;
                    v188 = *&off_100043490;
                    sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: catalog folder record #%d too big\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, v158);
                  }

                  goto LABEL_342;
                }

                *(v135 + 1) = bswap32(*(v135 + 1)) >> 16;
                *(v135 + 2) = bswap32(*(v135 + 2)) >> 16;
                *(v135 + 6) = vrev32q_s8(*(v135 + 6));
                *(v135 + 15) = bswap32(*(v135 + 15)) >> 16;
              }

              if (a3 == 1)
              {
                *v135 = bswap32(*v135) >> 16;
              }
            }

            else
            {
              *v135 = bswap32(*v135);
            }
          }

          else
          {
            if (v16 != 3)
            {
              if (v118[1294])
              {
                v185 = xmmword_100043460;
                v186 = *&qword_100043470;
                v187 = xmmword_100043480;
                v188 = *&off_100043490;
                sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: fileID %u is not a system B-tree\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, v16);
              }

LABEL_351:
              exit(99);
            }

            v127 = v13[1].u8[0];
            if (v13[1].i8[0])
            {
              v128 = 12;
            }

            else
            {
              v128 = 4;
            }

            v129 = (v123 + 8);
            if (&v123[v128 + 8] > v126)
            {
              if (v118[1294])
              {
                v185 = xmmword_100043460;
                v186 = *&qword_100043470;
                v187 = xmmword_100043480;
                v188 = *&off_100043490;
                sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: extents key #%d offset too big (0x%04X)\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, (v119 + ~v117));
              }

              goto LABEL_342;
            }

            if (*v123 != 7)
            {
              if (v118[1294])
              {
                v185 = xmmword_100043460;
                v186 = *&qword_100043470;
                v187 = xmmword_100043480;
                v188 = *&off_100043490;
                sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: extents key #%d invalid length (%d)\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, (v119 + ~v117));
              }

              goto LABEL_316;
            }

            *(v123 + 2) = bswap32(*(v123 + 2));
            *(v123 + 3) = bswap32(*(v123 + 3)) >> 16;
            if (v129 >= v115)
            {
              if (v118[1294])
              {
                v185 = xmmword_100043460;
                v186 = *&qword_100043470;
                v187 = xmmword_100043480;
                v188 = *&off_100043490;
                sub_10002D0E8(&v185, 2, "hfs_swap_HFSBTInternalNode: invalid record offset (0x%04X)\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", a7, a8, v129 - v120);
              }

              goto LABEL_342;
            }

            if (v127)
            {
              v130 = (v120 + v122 + 10);
              v131 = 3;
              do
              {
                v130[-1].i16[3] = bswap32(v130[-1].u16[3]) >> 16;
                v130->i16[0] = bswap32(v130->u16[0]) >> 16;
                v130 = (v130 + 4);
                --v131;
              }

              while (v131);
            }

            else
            {
              *v129 = bswap32(*v129);
            }
          }

          ++v117;
          v119 = v13[1].u16[1];
          if (v117 >= v119)
          {
            goto LABEL_49;
          }
        }

        if (!v118[1294])
        {
          goto LABEL_342;
        }

        v143 = (v119 + ~v117);
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v144 = xmmword_100043480;
        v145 = *&off_100043490;
LABEL_281:
        v187 = v144;
        v188 = v145;
        sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: invalid record offset (record #%d)\n", a4, 4, a6, a7, a8, v143);
        goto LABEL_342;
      }

LABEL_49:
      if (a3 != 1)
      {
        return 0;
      }

      v39 = v11->u32[0];
      v40 = *(v12 + 56);
      v41 = byte_10004350E;
      if (v39 >= v40 && byte_10004350E != 0)
      {
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_UNswap_BTNode: invalid forward link (0x%08X)\n", a4, a5, a6, a7, a8, v39);
        v40 = *(v12 + 56);
        v41 = byte_10004350E;
      }

      v43 = v11->u32[1];
      if (v43 >= v40 && v41 != 0)
      {
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_UNswap_BTNode: invalid backward link (0x%08X)\n", a4, a5, a6, a7, a8, v43);
        LODWORD(v43) = v11->i32[1];
      }

      v11->i32[0] = bswap32(v11->i32[0]);
      v11->i32[1] = bswap32(v43);
      v45 = v11[1].i8[0];
      if (v45 >= -1)
      {
        v51 = byte_10004350E;
        if (v45 < 3 || !byte_10004350E)
        {
LABEL_74:
          v52 = v11[1].u8[1];
          if (*(v12 + 32) < v52 && v51)
          {
            v185 = xmmword_100043460;
            v186 = *&qword_100043470;
            v187 = xmmword_100043480;
            v188 = *&off_100043490;
            sub_10002D0E8(&v185, 2, "hfs_UNswap_BTNode: invalid node height (%d)\n", a4, a5, a6, a7, a8, v52);
          }

          goto LABEL_77;
        }
      }

      else if (!byte_10004350E)
      {
LABEL_77:
        v53 = *(a1 + 24);
        v54 = v11[1].u16[1];
        v55 = v53 - 2 * v54 - 2;
        if (v55 < 14)
        {
          if (byte_10004350E)
          {
            v185 = xmmword_100043460;
            v186 = *&qword_100043470;
            v187 = xmmword_100043480;
            v188 = *&off_100043490;
            sub_10002D0E8(&v185, 2, "hfs_UNswap_BTNode: invalid record count (0x%04X)\n", a4, a5, a6, a7, a8, v54);
          }

LABEL_80:
          v47 = *(*(a2 + 1) + 216);
          v16 = *a2;
          v48 = *(a1 + 16);
          v46 = 4294966780;
          v49 = 4294966780;
          goto LABEL_343;
        }

        v56 = 0;
        for (i = (*a1 + v55); ; ++i)
        {
          v58 = *i;
          if ((v58 & 1) != 0 || ((v58 - 14) <= 0xFFF2u ? (v59 = v53 > v58) : (v59 = 0), !v59))
          {
            if (byte_10004350E)
            {
              v185 = xmmword_100043460;
              v186 = *&qword_100043470;
              v187 = xmmword_100043480;
              v188 = *&off_100043490;
              sub_10002D0E8(&v185, 2, "hfs_UNswap_BTNode: offset #%d invalid  (0x%04X) (blockSize 0x%x numRecords %d)\n", a4, a5, a6, a7, a8, v56);
            }

            goto LABEL_342;
          }

          if (v56 < v54 && i[1] >= v58)
          {
            break;
          }

          ++v56;
          *i = __rev16(v58);
          v54 = v11[1].u16[1];
          if (v56 - 1 >= v54)
          {
            v46 = 0;
            v11[1].i16[1] = __rev16(v54);
            return v46;
          }
        }

        if (byte_10004350E)
        {
          v185 = xmmword_100043460;
          v186 = *&qword_100043470;
          v187 = xmmword_100043480;
          v188 = *&off_100043490;
          sub_10002D0E8(&v185, 2, "hfs_UNswap_BTNode: offsets %d and %d out of order (0x%04X, 0x%04X)\n", a4, a5, a6, a7, a8, v56 + 1);
        }

        goto LABEL_342;
      }

      v185 = xmmword_100043460;
      v186 = *&qword_100043470;
      v187 = xmmword_100043480;
      v188 = *&off_100043490;
      sub_10002D0E8(&v185, 2, "hfs_UNswap_BTNode: invalid node kind (%d)\n", a4, a5, a6, a7, a8, v45);
      v51 = byte_10004350E;
      goto LABEL_74;
    }

LABEL_219:
    if (byte_10004350E)
    {
      v185 = xmmword_100043460;
      v186 = *&qword_100043470;
      v187 = xmmword_100043480;
      v188 = *&off_100043490;
      sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: invalid free space offset (%X)\n", a4, a5, a6, a7, a8, v60);
      v16 = *a2;
      v15 = *(a2 + 1);
    }

    v47 = *(v15 + 216);
    v48 = *(a1 + 16);
    v46 = 4294966776;
    v49 = 4294966776;
    goto LABEL_343;
  }

  if (v17 <= 13)
  {
    if (byte_10004350E)
    {
      v185 = xmmword_100043460;
      v186 = *&qword_100043470;
      v187 = xmmword_100043480;
      v188 = *&off_100043490;
      sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: invalid record count (0x%04X)\n", a4, a5, a6, a7, a8, v18);
LABEL_67:
      v16 = *a2;
      v15 = *(a2 + 1);
      goto LABEL_68;
    }

    goto LABEL_68;
  }

  v60 = *(v19 - 1);
  if (v60 < 0xE || &v13->i8[v60] > v19 - 2)
  {
    goto LABEL_219;
  }

  if (!v13[1].i16[1])
  {
    goto LABEL_49;
  }

  v62 = 0;
  v63 = a3 != 0;
  a4 = 64;
  a5 = 4;
  a6 = 65024;
  v64 = &unk_100043000;
  while (1)
  {
    v65 = &v19[2 * v62];
    v66 = *v65;
    v67 = (*a1 + v66);
    v68 = *(v65 - 1);
    v69 = v67 < v20 || v66 >= v68;
    if (v69)
    {
      if (!v64[1294])
      {
        goto LABEL_342;
      }

      v143 = (v18 + ~v62);
      v185 = xmmword_100043460;
      v186 = *&qword_100043470;
      v144 = xmmword_100043480;
      v145 = *&off_100043490;
      goto LABEL_281;
    }

    v70 = *a1 + v68;
    if (v16 > 7)
    {
      if (v16 != 8)
      {
        if (v16 != 14)
        {
LABEL_349:
          if (v64[1294])
          {
            v185 = xmmword_100043460;
            v186 = *&qword_100043470;
            v187 = xmmword_100043480;
            v188 = *&off_100043490;
            sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: fileID %u is not a system B-tree\n", 64, 4, 65024, a7, a8, v16);
          }

          goto LABEL_351;
        }

        goto LABEL_108;
      }

      if ((v67 + 8) > v70)
      {
        if (v64[1294])
        {
          v185 = xmmword_100043460;
          v186 = *&qword_100043470;
          v187 = xmmword_100043480;
          v188 = *&off_100043490;
          sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: attr key #%d offset too big (0x%04X)\n", 64, 4, 65024, a7, a8, (v18 + ~v62));
        }

        goto LABEL_342;
      }

      v78 = *v67;
      if (a3)
      {
        if (a3 != 1)
        {
          v91 = 0;
LABEL_161:
          v80 = v67 + v78;
          if ((v80 + 6) > v70)
          {
            if (v64[1294])
            {
              v185 = xmmword_100043460;
              v186 = *&qword_100043470;
              v187 = xmmword_100043480;
              v188 = *&off_100043490;
              sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: attr key #%d too big (%d)\n", 64, 4, 65024, a7, a8, (v18 + ~v62));
            }

            goto LABEL_316;
          }

          *(v67 + 2) = vrev32_s8(*(v67 + 2));
          v92 = v67[6];
          if (!a3)
          {
            v92 = __rev16(v92);
            v67[6] = v92;
          }

          if (v92 > 0x7F || v78 < ((2 * v92 + 12) & 0xFFFEu))
          {
            if (v64[1294])
            {
              v185 = xmmword_100043460;
              v186 = *&qword_100043470;
              v187 = xmmword_100043480;
              v188 = *&off_100043490;
              sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: attr key #%d keyLength=%d attrNameLen=%d\n", 64, 4, 65024, a7, a8, (v18 + ~v62));
            }

            goto LABEL_342;
          }

          if (v92)
          {
            v94 = v67 + 7;
            v95 = v92;
            do
            {
              *v94 = bswap32(*v94) >> 16;
              ++v94;
              --v95;
            }

            while (v95);
            v96 = v92 << 8;
          }

          else
          {
            v96 = 0;
          }

          if (v91)
          {
            v67[6] = v96;
          }

          v97 = *(v80 + 2);
          if (!v13[1].i8[0])
          {
            v100 = bswap32(v97);
LABEL_211:
            *(v80 + 2) = v100;
            goto LABEL_212;
          }

          if (!a3)
          {
            v97 = bswap32(v97);
            *(v80 + 2) = v97;
          }

          if (v97 != 48)
          {
            if (v97 == 32)
            {
              if ((v80 + 90) > v70)
              {
                if (v64[1294])
                {
                  v163 = v13[1].u16[1] + ~v62;
                  v185 = xmmword_100043460;
                  v186 = *&qword_100043470;
                  v187 = xmmword_100043480;
                  v188 = *&off_100043490;
                  sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: attr fork data #%d too big\n", 64, 4, 65024, a7, a8, v163);
                }

                goto LABEL_342;
              }

              v183 = v16;
              v108 = v19;
              v175 = v20;
              v109 = v62;
              v180 = v63;
              sub_10000FAB4((v80 + 10));
              a6 = 65024;
              a5 = 4;
              a4 = 64;
              v63 = v180;
              v64 = &unk_100043000;
              v62 = v109;
              v20 = v175;
            }

            else
            {
              if (v97 == 16)
              {
                if ((v80 + 18) > v70)
                {
                  if (v64[1294])
                  {
                    v164 = v13[1].u16[1] + ~v62;
                    v185 = xmmword_100043460;
                    v186 = *&qword_100043470;
                    v187 = xmmword_100043480;
                    v188 = *&off_100043490;
                    sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: attr inline #%d too big\n", 64, 4, 65024, a7, a8, v164);
                  }

                  goto LABEL_342;
                }

                if (v91)
                {
                  v98 = *(v80 + 14);
                }

                else
                {
                  v98 = 0;
                }

                LODWORD(v99) = bswap32(*(v80 + 14));
                *(v80 + 14) = v99;
                if (a3)
                {
                  v99 = v98;
                }

                else
                {
                  v99 = v99;
                }

                if (&v80[v99 + 18] > v70)
                {
                  if (v64[1294])
                  {
                    v165 = v13[1].u16[1] + ~v62;
                    v185 = xmmword_100043460;
                    v186 = *&qword_100043470;
                    v187 = xmmword_100043480;
                    v188 = *&off_100043490;
                    sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: attr inline #%d too big (attrSize=%u)\n", 64, 4, 65024, a7, a8, v165);
                  }

                  goto LABEL_342;
                }

                goto LABEL_209;
              }

              if (!v64[1294])
              {
                goto LABEL_209;
              }

              v185 = xmmword_100043460;
              v186 = *&qword_100043470;
              v187 = xmmword_100043480;
              v188 = *&off_100043490;
              v181 = v63;
              v183 = v16;
              v108 = v19;
              v114 = v20;
              v176 = v62;
              sub_10002D0E8(&v185, 2, "hfs_swap_BTNode: unrecognized attribute record type (%d)\n", 64, 4, 65024, a7, a8, v97);
              a6 = 65024;
              a5 = 4;
              a4 = 64;
              v63 = v181;
              v64 = &unk_100043000;
              v62 = v176;
              v20 = v114;
            }

            v19 = v108;
            v16 = v183;
            goto LABEL_209;
          }

          if ((v80 + 74) > v70)
          {
            if (v64[1294])
            {
              v162 = v13[1].u16[1] + ~v62;
              v185 = xmmword_100043460;
              v186 = *&qword_100043470;
              v187 = xmmword_100043480;
              v188 = *&off_100043490;
              sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: attr extents #%d too big\n", 64, 4, 65024, a7, a8, v162);
            }

            goto LABEL_342;
          }

          v110 = 0;
          v111 = v80 + 10;
          do
          {
            v112 = &v111[v110];
            v113 = vrev32q_s8(*&v111[v110 + 16]);
            *v112 = vrev32q_s8(*&v111[v110]);
            v112[1] = v113;
            v110 += 32;
          }

          while (v110 != 64);
LABEL_209:
          if (v91)
          {
            goto LABEL_210;
          }

          goto LABEL_212;
        }

        LOWORD(v79) = __rev16(v78);
      }

      else
      {
        v79 = __rev16(v78);
        v78 = v79;
      }

      *v67 = v79;
      v91 = v63;
      goto LABEL_161;
    }

    if (v16 == 3)
    {
      v74 = v13[1].u8[0];
      if (v13[1].i8[0])
      {
        v75 = 32;
      }

      else
      {
        v75 = 2;
      }

      v76 = (v67 + 6);
      if (&v67[v75 + 6] > v70)
      {
        if (v64[1294])
        {
          v185 = xmmword_100043460;
          v186 = *&qword_100043470;
          v187 = xmmword_100043480;
          v188 = *&off_100043490;
          sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: extents key #%d offset too big (0x%04X)\n", 64, 4, 65024, a7, a8, (v18 + ~v62));
        }

        goto LABEL_342;
      }

      v77 = *v67;
      if (a3)
      {
        if (v77 != 10)
        {
          v153 = *v67;
LABEL_314:
          if (v64[1294])
          {
            v185 = xmmword_100043460;
            v186 = *&qword_100043470;
            v187 = xmmword_100043480;
            v188 = *&off_100043490;
            sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: extents key #%d invalid length (%d)\n", 64, 4, 65024, a7, a8, (v18 + ~v62));
          }

LABEL_316:
          v47 = *(*(a2 + 1) + 216);
          v16 = *a2;
          v48 = *(a1 + 16);
          v46 = 4294966773;
          v49 = 4294966773;
LABEL_343:
          sub_10001EA44(v47, v49, v16, v48, a5, a6, a7, a8);
          goto LABEL_344;
        }

        if (a3 == 1)
        {
          *v67 = 2560;
        }
      }

      else
      {
        *v67 = __rev16(v77);
        if (v77 != 2560)
        {
          goto LABEL_314;
        }
      }

      *(v67 + 2) = vrev32_s8(*(v67 + 2));
      if (v74)
      {
        for (j = 0; j != 16; j += 8)
        {
          v89 = &v76[j];
          v90 = vrev32q_s8(*&v76[j + 4]);
          *v89 = vrev32q_s8(*&v76[j]);
          v89[1] = v90;
        }
      }

      else
      {
        *v76 = bswap32(*v76);
      }

      goto LABEL_212;
    }

    if (v16 != 4)
    {
      goto LABEL_349;
    }

LABEL_108:
    v71 = v67 + 4;
    if ((v67 + 4) > v70)
    {
      if (v64[1294])
      {
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: catalog key #%d offset too big (0x%04X)\n", 64, 4, 65024, a7, a8, (v18 + ~v62));
      }

      goto LABEL_342;
    }

    v72 = *v67;
    if (!a3)
    {
      v73 = __rev16(v72);
      v72 = v73;
      goto LABEL_125;
    }

    if (a3 == 1)
    {
      LOWORD(v73) = __rev16(v72);
LABEL_125:
      *v67 = v73;
      a7 = v63;
      goto LABEL_127;
    }

    a7 = 0;
LABEL_127:
    if ((v72 - 517) <= 0xFE00u)
    {
      if (v64[1294])
      {
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: catalog key #%d invalid length (%d)\n", 64, 4, 65024, a7, a8, (v18 + ~v62));
      }

      goto LABEL_316;
    }

    v80 = v67 + v72;
    if ((v80 + 6) > v70)
    {
      if (v64[1294])
      {
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: catalog key #%d too big\n", 64, 4, 65024, a7, a8, (v18 + ~v62));
      }

      goto LABEL_316;
    }

    *(v67 + 1) = bswap32(*(v67 + 1));
    v81 = v67[3];
    if (!a3)
    {
      v81 = __rev16(v81);
      v67[3] = v81;
    }

    if (2 * v81 + 6 > v72)
    {
      if (v64[1294])
      {
        v146 = (v18 - v62);
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: catalog record #%d (0-based, offset 0x%lX) keyLength=%d expected=%lu\n", 64, 4, 65024, a7, a8, v146);
        if ((byte_100043529 & 4) != 0)
        {
          v185 = xmmword_100043460;
          v186 = *&qword_100043470;
          v187 = xmmword_100043480;
          v188 = *&off_100043490;
          sub_10002D0E8(&v185, 2, "Record %u (offset 0x%04X):\n", v147, a5, a6, a7, a8, v146);
          sub_10002E7B8(v67, v68 - v66, 0, v148, v149, v150, v151, v152);
        }
      }

      goto LABEL_316;
    }

    v82 = v81;
    if (v81)
    {
      do
      {
        *v71 = bswap32(*v71) >> 16;
        ++v71;
        --v82;
      }

      while (v82);
    }

    if (a7)
    {
      v67[3] = __rev16(v81);
    }

    if (!v13[1].i8[0])
    {
LABEL_210:
      v100 = bswap32(*(v80 + 2));
      goto LABEL_211;
    }

    v83 = *(v80 + 1);
    if (!a3)
    {
      v83 = __rev16(v83);
      *(v80 + 1) = v83;
    }

    if (v83 - 3 >= 2)
    {
      break;
    }

    v84 = v80 + 12;
    if ((v80 + 12) > v70)
    {
      if (v64[1294])
      {
        v156 = v13[1].u16[1] + ~v62;
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: catalog thread record #%d too big\n", 64, 4, 65024, a7, a8, v156);
      }

      goto LABEL_342;
    }

    *(v80 + 6) = bswap32(*(v80 + 6));
    v85 = *(v80 + 5);
    if (!a3)
    {
      v85 = __rev16(v85);
      *(v80 + 5) = v85;
    }

    if (&v84[v85] > v70)
    {
      if (v64[1294])
      {
        v157 = v13[1].u16[1] + ~v62;
        v185 = xmmword_100043460;
        v186 = *&qword_100043470;
        v187 = xmmword_100043480;
        v188 = *&off_100043490;
        sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: catalog thread record #%d name too big\n", 64, 4, 65024, a7, a8, v157);
      }

      goto LABEL_342;
    }

    v86 = v85;
    v87 = v86;
    if (v86)
    {
      do
      {
        *v84 = bswap32(*v84) >> 16;
        ++v84;
        --v87;
      }

      while (v87);
    }

    if (a7)
    {
      *(v80 + 5) = __rev16(v86);
LABEL_199:
      *(v80 + 1) = __rev16(v83);
    }

LABEL_212:
    ++v62;
    v18 = v13[1].u16[1];
    if (v62 >= v18)
    {
      goto LABEL_49;
    }
  }

  if (v83 != 2)
  {
    if (v83 == 1)
    {
      if ((v80 + 90) > v70)
      {
        if (v64[1294])
        {
          v160 = v13[1].u16[1] + ~v62;
          v185 = xmmword_100043460;
          v186 = *&qword_100043470;
          v187 = xmmword_100043480;
          v188 = *&off_100043490;
          sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: catalog folder record #%d too big\n", 64, 4, 65024, a7, a8, v160);
        }

        goto LABEL_342;
      }

      *(v80 + 2) = bswap32(*(v80 + 2)) >> 16;
      *(v80 + 6) = vrev32q_s8(*(v80 + 6));
      *(v80 + 22) = vrev32q_s8(*(v80 + 22));
      *(v80 + 38) = bswap32(*(v80 + 38));
      *(v80 + 22) = bswap32(*(v80 + 22)) >> 16;
      *(v80 + 46) = bswap32(*(v80 + 46));
      *(v80 + 82) = bswap32(*(v80 + 82));
      *(v80 + 29) = bswap32(*(v80 + 29)) >> 16;
      *(v80 + 86) = bswap32(*(v80 + 86));
LABEL_197:
      if (a7)
      {
        v83 = *(v80 + 1);
        goto LABEL_199;
      }

      goto LABEL_212;
    }

    if (!v64[1294])
    {
      goto LABEL_197;
    }

    v104 = v13[1].u16[1] + ~v62;
    v185 = xmmword_100043460;
    v186 = *&qword_100043470;
    v187 = xmmword_100043480;
    v188 = *&off_100043490;
    v179 = v63;
    v182 = v16;
    v105 = v19;
    v106 = v20;
    v107 = v62;
    v174 = a7;
    sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", 64, 4, 65024, a7, a8, v83);
    a7 = v174;
    a6 = 65024;
    a5 = 4;
    a4 = 64;
    v63 = v179;
    v64 = &unk_100043000;
    v62 = v107;
    v20 = v106;
    v19 = v105;
LABEL_196:
    v16 = v182;
    goto LABEL_197;
  }

  if ((v80 + 250) <= v70)
  {
    *(v80 + 2) = bswap32(*(v80 + 2)) >> 16;
    *(v80 + 10) = vrev32q_s8(*(v80 + 10));
    *(v80 + 26) = vrev32q_s8(*(v80 + 26));
    *(v80 + 22) = bswap32(*(v80 + 22)) >> 16;
    *(v80 + 82) = bswap32(*(v80 + 82));
    *(v80 + 6) = bswap32(*(v80 + 6));
    *(v80 + 46) = vrev32_s8(*(v80 + 46));
    *(v80 + 54) = bswap32(*(v80 + 54));
    *(v80 + 58) = vrev16_s8(*(v80 + 58));
    v178 = v19;
    v182 = v16;
    v101 = v20;
    v102 = v62;
    v103 = v63;
    v173 = a7;
    sub_10000FAB4((v80 + 90));
    sub_10000FAB4((v80 + 170));
    a7 = v173;
    a6 = 65024;
    a5 = 4;
    a4 = 64;
    v63 = v103;
    v64 = &unk_100043000;
    v62 = v102;
    v20 = v101;
    v19 = v178;
    goto LABEL_196;
  }

  if (v64[1294])
  {
    v161 = v13[1].u16[1] + ~v62;
    v185 = xmmword_100043460;
    v186 = *&qword_100043470;
    v187 = xmmword_100043480;
    v188 = *&off_100043490;
    sub_10002D0E8(&v185, 2, "hfs_swap_HFSPlusBTInternalNode: catalog file record #%d too big\n", 64, 4, 65024, a7, a8, v161);
  }

  v46 = 36;
LABEL_344:
  if ((byte_100043529 & 8) != 0)
  {
    v166 = *(a1 + 16);
    v185 = xmmword_100043460;
    v186 = *&qword_100043470;
    v187 = xmmword_100043480;
    v188 = *&off_100043490;
    sub_10002D0E8(&v185, 2, "Node %u:\n", a4, a5, a6, a7, a8, v166);
    sub_10002E7B8(*a1, *(a1 + 24), 1, v167, v168, v169, v170, v171);
  }

  return v46;
}

uint64_t sub_1000113B4(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, unsigned int *a6, unsigned int *a7)
{
  *a6 = 0;
  *a7 = 0;
  v7 = *(a1 + 48);
  if (v7)
  {
    if (a5 && v7 < a3)
    {
      LOWORD(v14) = -34;
    }

    else
    {
      v15 = a2;
      if (!a2)
      {
        v15 = *(a1 + 52);
      }

      v14 = sub_1000114D4(a1, v15, a3, a4, a6, a7);
      if (!a5 && v14 == -34)
      {
        v14 = sub_100011574(a1, v15, *(a1 + 44), a4, a6, a7);
        if (v14 == -34)
        {
          v14 = sub_100011574(a1, 0, v15, a4, a6, a7);
        }
      }

      if (!v14)
      {
        if (!a2)
        {
          *(a1 + 52) = *a6;
        }

        LOWORD(v14) = 0;
        *(a1 + 48) -= *a7;
        *(a1 + 196) |= 0xFF00u;
      }
    }
  }

  else
  {
    LOWORD(v14) = -34;
  }

  return v14;
}

uint64_t sub_1000114D4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, unsigned int *a6)
{
  result = sub_1000122A8(a1, a2, *(a1 + 44), a3, a4, a5, a6);
  if (result == -34)
  {
    result = sub_1000122A8(a1, 0, *(a1 + 44), a3, a4, a5, a6);
  }

  if (result || (result = sub_100012038(a1, *a5, *a6), result))
  {
    *a5 = 0;
    *a6 = 0;
  }

  return result;
}

uint64_t sub_100011574(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int *a5, unsigned int *a6)
{
  v8 = a3;
  v9 = a2;
  memset(v32, 0, sizeof(v32));
  if (a3 - a2 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3 - a2;
  }

  v12 = sub_100011F90(a1, a2, v32);
  if (v12)
  {
    v18 = v12;
    v19 = 0;
    goto LABEL_44;
  }

  if (*a1 == 16964)
  {
    v20 = (v9 >> 5) & 0x7F;
    v21 = 128;
  }

  else
  {
    v22 = *(*(a1 + 152) + 128);
    v20 = ((8 * v22 - 1) & v9) >> 5;
    v21 = v22 >> 2;
  }

  v23 = (*&v32[0] + 4 * v20);
  v24 = v21 - v20;
  v25 = bswap32(*v23);
  v26 = 0x80000000 >> v9;
  while (v9 < v8 && (v26 & v25) != 0)
  {
    ++v9;
    if (v26 > 1)
    {
      v26 >>= 1;
    }

    else
    {
      if (--v24)
      {
        ++v23;
      }

      else
      {
        v19 = 2;
        v27 = sub_100011FEC(a1, 2u, v32, v13, v14, v15, v16, v17);
        *&v32[0] = 0;
        if (v27 || (v27 = sub_100011F90(a1, v9, v32)) != 0)
        {
LABEL_43:
          v18 = v27;
LABEL_44:
          *a5 = 0;
          *a6 = 0;
          goto LABEL_45;
        }

        v23 = *&v32[0];
        if (*a1 == 16964)
        {
          v24 = 128;
        }

        else
        {
          v24 = *(*(a1 + 152) + 128) >> 2;
        }
      }

      v25 = bswap32(*v23);
      v26 = 0x80000000;
    }
  }

  if (v9 == v8)
  {
    v18 = -34;
    v19 = 2;
    goto LABEL_44;
  }

  *a5 = v9;
  v28 = v8 - v11;
  if (v9 < v8 - v11)
  {
    v8 = v9 + v11;
  }

  if ((v26 & v25) == 0)
  {
    if (v9 < v28)
    {
      v28 = v9;
    }

    v29 = v11 + v28 - 1;
    while (1)
    {
      v25 |= v26;
      if (v29 == v9)
      {
        break;
      }

      ++v9;
      if (v26 > 1)
      {
        v26 >>= 1;
      }

      else
      {
        *v23++ = bswap32(v25);
        if (!--v24)
        {
          v19 = 2;
          v27 = sub_100011FEC(a1, 2u, v32, v13, v14, v15, v16, v17);
          if (v27)
          {
            goto LABEL_43;
          }

          *&v32[0] = 0;
          v27 = sub_100011F90(a1, v9, v32);
          if (v27)
          {
            goto LABEL_43;
          }

          v23 = *&v32[0];
          if (*a1 == 16964)
          {
            v24 = 128;
          }

          else
          {
            v24 = *(*(a1 + 152) + 128) >> 2;
          }
        }

        v25 = bswap32(*v23);
        v26 = 0x80000000;
      }

      if ((v26 & v25) != 0)
      {
        goto LABEL_49;
      }
    }

    v9 = v8;
  }

LABEL_49:
  *v23 = bswap32(v25);
  v31 = v9 - *a5;
  *a6 = v31;
  sub_10002A950(*a5, v31);
  v18 = 0;
  v19 = 2;
LABEL_45:
  if (*&v32[0])
  {
    sub_100011FEC(a1, v19, v32, v13, v14, v15, v16, v17);
  }

  return v18;
}

uint64_t sub_100011828(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  memset(v31, 0, sizeof(v31));
  v6 = sub_100011F90(a1, a2, v31);
  if (!v6)
  {
    v14 = *a1;
    if (v14 == 16964)
    {
      v15 = (a2 >> 5) & 0x7F;
      v16 = 128;
    }

    else
    {
      v17 = *(*(a1 + 19) + 128);
      v15 = ((8 * v17 - 1) & a2) >> 5;
      v16 = v17 >> 2;
    }

    v18 = (*&v31[0] + 4 * v15);
    v19 = v16 - v15;
    v20 = a2 & 0x1F;
    if ((a2 & 0x1F) != 0)
    {
      v21 = 0xFFFFFFFF >> v20;
      v22 = 32 - v20;
      v23 = 0xFFFFFFFF >> (v20 + a3);
      if (v22 > a3)
      {
        v24 = ~v23;
      }

      else
      {
        v24 = 0x7FFFFFFF;
      }

      *v18++ &= bswap32(~(v24 & v21));
      if (a3 >= v22)
      {
        v25 = a3 - v22;
      }

      else
      {
        v25 = 0;
      }

      --v19;
    }

    else
    {
      v25 = a3;
    }

    if (v25 < 0x20)
    {
      v26 = a2;
      if (!v25)
      {
LABEL_34:
        sub_10002AECC(a2, a3);
        v12 = 0;
        v13 = 2;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = a2;
      do
      {
        if (!v19)
        {
          if (v14 == 16964)
          {
            v27 = 4096;
          }

          else
          {
            v27 = 8 * *(*(a1 + 19) + 128);
          }

          v13 = 2;
          v28 = sub_100011FEC(a1, 2u, v31, v7, v8, v9, v10, v11);
          if (v28)
          {
            goto LABEL_40;
          }

          v26 += v27;
          *&v31[0] = 0;
          v28 = sub_100011F90(a1, v26, v31);
          if (v28)
          {
            goto LABEL_40;
          }

          v18 = *&v31[0];
          v14 = 16964;
          if (*a1 == 16964)
          {
            v19 = 128;
          }

          else
          {
            v19 = *(*(a1 + 19) + 128) >> 2;
            v14 = *a1;
          }
        }

        *v18++ = 0;
        v25 -= 32;
        --v19;
      }

      while (v25 > 0x1F);
      if (!v25)
      {
        goto LABEL_34;
      }
    }

    if (!v19)
    {
      if (v14 == 16964)
      {
        v29 = 4096;
      }

      else
      {
        v29 = 8 * *(*(a1 + 19) + 128);
      }

      v13 = 2;
      v28 = sub_100011FEC(a1, 2u, v31, v7, v8, v9, v10, v11);
      if (v28 || (*&v31[0] = 0, v28 = sub_100011F90(a1, v29 + v26, v31), v28))
      {
LABEL_40:
        v12 = v28;
        goto LABEL_41;
      }

      v18 = *&v31[0];
    }

    *v18 &= bswap32(0xFFFFFFFF >> v25);
    goto LABEL_34;
  }

  v12 = v6;
  v13 = 0;
LABEL_41:
  if (*&v31[0])
  {
    sub_100011FEC(a1, v13, v31, v7, v8, v9, v10, v11);
  }

  if (!v12)
  {
    *(a1 + 12) += a3;
    a1[98] |= 0xFF00u;
  }

  return v12;
}

uint64_t sub_100011ABC(unsigned int a1, unsigned int a2)
{
  v2 = a1 / a2;
  if (a1 / a2 * a2 == a1)
  {
    return v2;
  }

  else
  {
    return v2 + 1;
  }
}

uint64_t sub_100011AD0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a1 + 36);
  v11 = 0uLL;
  memset(v65, 0, 32);
  v12 = *(a1 + 8);
  v13 = &unk_100043000;
  if (*(v12 + 48) < a2 && byte_10004350E != 0)
  {
    v61 = xmmword_100043460;
    v62 = *&qword_100043470;
    v63 = xmmword_100043480;
    v64 = *&off_100043490;
    sub_10002D0E8(&v61, 2, "%s:  %u blocks free, but need %u; ignoring for now\n", a4, a5, a6, a7, a8, "BlockFindAll");
    v11 = 0uLL;
  }

  v10[2] = v11;
  v10[3] = v11;
  *v10 = v11;
  v10[1] = v11;
  v15 = *(v12 + 40);
  v16 = *(a1 + 128);
  if (v15 >= v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16 / v15;
  }

  v18 = *(v12 + 44);
  v19 = sub_100011F90(v12, 0, v65);
  if (v19)
  {
    v25 = v19;
    LODWORD(v26) = 0;
    goto LABEL_64;
  }

  v27 = *&v65[0];
  v58 = v17;
  if (*v12 == 16964)
  {
    v28 = 127;
  }

  else
  {
    v28 = (*(*(v12 + 152) + 128) >> 2) - 1;
  }

  v29 = 0;
  v30 = 0;
  v31 = bswap32(**&v65[0]);
  if (a2 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = a2;
  }

  v57 = v32;
  v59 = v32 - 1;
  v33 = v18 - 1;
  v26 = 0;
  v34 = 0x80000000;
  do
  {
    v60 = v26;
    v35 = v30;
    while ((v31 & v34) != 0)
    {
      if (v33 == v35)
      {
        v25 = 0;
LABEL_63:
        LODWORD(v26) = v60;
        goto LABEL_64;
      }

      v35 = (v35 + 1);
      if (v34 > 1)
      {
        v34 >>= 1;
      }

      else
      {
        if (v28)
        {
          ++v27;
        }

        else
        {
          v36 = sub_100011FEC(v12, 0, v65, v20, v21, v22, v23, v24);
          if (v36 || (*&v65[0] = 0, (v36 = sub_100011F90(v12, v35, v65)) != 0))
          {
            v25 = v36;
            goto LABEL_63;
          }

          if (*v12 == 16964)
          {
            v27 = (*&v65[0] + 4 * ((v35 >> 5) & 0x7F));
            v28 = 127;
            goto LABEL_31;
          }

          v37 = *(*(v12 + 152) + 128);
          v27 = (*&v65[0] + 4 * (((8 * v37 - 1) & v35) >> 5));
          v28 = v37 >> 2;
        }

        --v28;
LABEL_31:
        v31 = bswap32(*v27);
        v34 = 0x80000000;
      }
    }

    v46 = 0;
    v30 = v35;
    v47 = v59;
    while (v47 != v46)
    {
      if (v33 == v30)
      {
        v25 = 0;
LABEL_62:
        v13 = &unk_100043000;
        goto LABEL_63;
      }

      v30 = (v30 + 1);
      if (v34 > 1)
      {
        v34 >>= 1;
      }

      else
      {
        if (v28)
        {
          ++v27;
          --v28;
        }

        else
        {
          v48 = sub_100011FEC(v12, 0, v65, v20, v21, v22, v23, v24);
          if (v48 || (*&v65[0] = 0, (v48 = sub_100011F90(v12, v30, v65)) != 0))
          {
            v25 = v48;
            goto LABEL_62;
          }

          if (*v12 == 16964)
          {
            v27 = (*&v65[0] + 4 * ((v30 >> 5) & 0x7F));
            v28 = 127;
          }

          else
          {
            v49 = *(*(v12 + 152) + 128);
            v27 = (*&v65[0] + 4 * (((8 * v49 - 1) & v30) >> 5));
            v28 = (v49 >> 2) - 1;
          }

          v47 = v59;
        }

        v31 = bswap32(*v27);
        v34 = 0x80000000;
      }

      ++v46;
      if ((v31 & v34) != 0)
      {
        goto LABEL_33;
      }
    }

    v46 = v57;
LABEL_33:
    v38 = v46 / v58 * v58;
    v39 = v10 + 2 * v29;
    v40 = v39[1];
    if (v38 <= v40)
    {
      v13 = &unk_100043000;
      v26 = v60;
    }

    else
    {
      v41 = 0;
      *v39 = v35;
      v39[1] = v38;
      v42 = -1;
      v43 = (a1 + 40);
      v29 = -1;
      v13 = &unk_100043000;
      do
      {
        v45 = *v43;
        v43 += 2;
        v44 = v45;
        if (v45 < v42)
        {
          v29 = v41;
          v42 = v44;
        }

        ++v41;
      }

      while (v41 != 8);
      v26 = v60 - v40 + v38;
    }

    v25 = 0;
  }

  while (v26 < a2);
LABEL_64:
  if (*&v65[0])
  {
    sub_100011FEC(v12, 0, v65, v20, v21, v22, v23, v24);
  }

  if (!v25)
  {
    if (v26 < a2)
    {
      if (v13[1294])
      {
        v61 = xmmword_100043460;
        v62 = *&qword_100043470;
        v63 = xmmword_100043480;
        v64 = *&off_100043490;
        sub_10002D0E8(&v61, 2, "%s:  found %u blocks but needed %u\n", v20, v21, v22, v23, v24, "BlockFindAll");
      }

      LOWORD(v25) = -34;
      return v25;
    }

    if (v26 > a2)
    {
      v50 = 0;
      v51 = 0;
      v52 = (a1 + 40);
      for (i = 8; i; --i)
      {
        if (v50)
        {
          *(v52 - 1) = 0;
          *v52 = 0;
        }

        else
        {
          v51 += *v52;
          if (v51 <= a2)
          {
            v50 = 0;
            goto LABEL_78;
          }

          *v52 = *v52 + a2 - v51;
        }

        v50 = 1;
LABEL_78:
        v52 += 2;
      }
    }

    v54 = (a1 + 40);
    v55 = 8;
    do
    {
      if (*v54)
      {
        sub_100012038(v12, *(v54 - 1), *v54);
        *(v12 + 48) -= *v54;
      }

      v54 += 2;
      --v55;
    }

    while (v55);
    LOWORD(v25) = 0;
    *(v12 + 196) |= 0xFF00u;
  }

  return v25;
}

uint64_t sub_100011F90(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*a1 == 16964)
  {
    return sub_100004C84(a1, *(a1 + 116) + (a2 >> 12), 16, a3);
  }

  else
  {
    return sub_100004E04(*(a1 + 152), a2 / (8 * *(*(a1 + 152) + 128)), 0, a3);
  }
}

uint64_t sub_100011FEC(uint64_t a1, unsigned int a2, unsigned __int16 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 16964)
  {
    sub_100004D50(a1, a3, a2 | 0x10);
  }

  else
  {
    sub_10000508C(*(a1 + 152), a3, a2, a4, a5, a6, a7, a8);
  }

  return v8;
}

uint64_t sub_100012038(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  memset(v31, 0, sizeof(v31));
  v6 = sub_100011F90(a1, a2, v31);
  if (v6)
  {
    v12 = v6;
    v13 = 0;
    goto LABEL_39;
  }

  v14 = *a1;
  if (v14 == 16964)
  {
    v15 = (a2 >> 5) & 0x7F;
    v16 = 128;
  }

  else
  {
    v17 = *(*(a1 + 19) + 128);
    v15 = ((8 * v17 - 1) & a2) >> 5;
    v16 = v17 >> 2;
  }

  v18 = (*&v31[0] + 4 * v15);
  v19 = v16 - v15;
  v20 = a2 & 0x1F;
  if ((a2 & 0x1F) != 0)
  {
    v21 = 0xFFFFFFFF >> v20;
    v22 = 32 - v20;
    v23 = 0xFFFFFFFF >> (v20 + a3);
    if (v22 > a3)
    {
      v24 = ~v23;
    }

    else
    {
      v24 = 0x7FFFFFFF;
    }

    *v18++ |= bswap32(v24 & v21);
    if (a3 >= v22)
    {
      v25 = a3 - v22;
    }

    else
    {
      v25 = 0;
    }

    --v19;
  }

  else
  {
    v25 = a3;
  }

  if (v25 < 0x20)
  {
    v26 = a2;
    if (!v25)
    {
LABEL_32:
      sub_10002A950(a2, a3);
      v12 = 0;
      v13 = 2;
      goto LABEL_39;
    }
  }

  else
  {
    v26 = a2;
    do
    {
      if (!v19)
      {
        if (v14 == 16964)
        {
          v27 = 4096;
        }

        else
        {
          v27 = 8 * *(*(a1 + 19) + 128);
        }

        v13 = 2;
        v28 = sub_100011FEC(a1, 2u, v31, v7, v8, v9, v10, v11);
        if (v28)
        {
          goto LABEL_38;
        }

        v26 += v27;
        *&v31[0] = 0;
        v28 = sub_100011F90(a1, v26, v31);
        if (v28)
        {
          goto LABEL_38;
        }

        v18 = *&v31[0];
        v14 = 16964;
        if (*a1 == 16964)
        {
          v19 = 128;
        }

        else
        {
          v19 = *(*(a1 + 19) + 128) >> 2;
          v14 = *a1;
        }
      }

      *v18++ = -1;
      v25 -= 32;
      --v19;
    }

    while (v25 > 0x1F);
    if (!v25)
    {
      goto LABEL_32;
    }
  }

  if (v19)
  {
LABEL_31:
    *v18 |= bswap32(~(0xFFFFFFFF >> v25));
    goto LABEL_32;
  }

  if (v14 == 16964)
  {
    v29 = 4096;
  }

  else
  {
    v29 = 8 * *(*(a1 + 19) + 128);
  }

  v13 = 2;
  v28 = sub_100011FEC(a1, 2u, v31, v7, v8, v9, v10, v11);
  if (!v28)
  {
    *&v31[0] = 0;
    v28 = sub_100011F90(a1, v29 + v26, v31);
    if (!v28)
    {
      v18 = *&v31[0];
      goto LABEL_31;
    }
  }

LABEL_38:
  v12 = v28;
LABEL_39:
  if (*&v31[0])
  {
    sub_100011FEC(a1, v13, v31, v7, v8, v9, v10, v11);
  }

  return v12;
}

uint64_t sub_1000122A8(unsigned __int16 *a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, _DWORD *a6, unsigned int *a7)
{
  memset(v56, 0, sizeof(v56));
  if (a3 - a2 < a4)
  {
    return -34;
  }

  v13 = a2;
  v15 = a2 + a4 - 1;
  v16 = sub_100011F90(a1, v15, v56);
  if (v16)
  {
    goto LABEL_4;
  }

  v23 = *&v56[0];
  v24 = *a1;
  if (v24 == 16964)
  {
    v25 = 4095;
  }

  else
  {
    v25 = 8 * *(*(a1 + 19) + 128) - 1;
  }

  if (v24 == 16964)
  {
    v26 = 4096;
  }

  else
  {
    v26 = 8 * *(*(a1 + 19) + 128);
  }

  v54 = a5;
  v55 = a7;
  v27 = v15 / v26;
  if (v15 < v13)
  {
    LODWORD(v28) = 0;
    LODWORD(v29) = 0;
    goto LABEL_16;
  }

  v28 = 0;
  v30 = 0;
  v31 = (v25 & v15) >> 5;
  v32 = (*&v56[0] + 4 * v31);
  v33 = bswap32(*v32);
  v34 = 0x80000000 >> v15;
  v35 = *a1;
  v36 = v35;
  while (1)
  {
    if ((v33 & v34) == 0)
    {
      v29 = (v30 + 1);
      --v15;
      v34 *= 2;
      if (!v34)
      {
        while (1)
        {
          if (v31)
          {
            --v31;
          }

          else
          {
            v16 = sub_100011FEC(a1, 0, v56, v17, v18, v19, v20, v21);
            if (v16)
            {
              goto LABEL_4;
            }

            *&v56[0] = 0;
            v16 = sub_100011F90(a1, v15, v56);
            if (v16)
            {
              goto LABEL_4;
            }

            v23 = *&v56[0];
            v24 = *a1;
            if (v24 == 16964)
            {
              v27 = v15 >> 12;
              v32 = (*&v56[0] + 512);
              v31 = 127;
              v24 = 16964;
              v35 = 16964;
              v36 = 16964;
            }

            else
            {
              v38 = *(*(a1 + 19) + 128);
              v27 = v15 / (8 * v38);
              v38 >>= 2;
              v32 = (*&v56[0] + 4 * v38);
              v31 = v38 - 1;
              v35 = *a1;
              v36 = v35;
            }
          }

          v40 = *--v32;
          v39 = v40;
          if (v40)
          {
            break;
          }

          v29 = (v29 + 32);
          v15 -= 32;
          if (v28 + v29 >= a4)
          {
            goto LABEL_16;
          }
        }

        v33 = bswap32(v39);
        v34 = 1;
      }

      v30 = v28;
      goto LABEL_48;
    }

    if (v28 + v30 >= a4)
    {
      break;
    }

    v13 = v30 + v15 + 1;
    v15 += a4;
    if (v15 >= a3)
    {
      break;
    }

    if (v36 == 16964)
    {
      v37 = 4096;
    }

    else
    {
      v37 = 8 * *(*(a1 + 19) + 128);
    }

    if (v27 != v15 / v37)
    {
      v16 = sub_100011FEC(a1, 0, v56, v17, v18, v19, v20, v21);
      if (v16)
      {
        goto LABEL_4;
      }

      *&v56[0] = 0;
      v16 = sub_100011F90(a1, v15, v56);
      if (v16)
      {
        goto LABEL_4;
      }

      v24 = *a1;
      if (v24 == 16964)
      {
        v41 = 4096;
      }

      else
      {
        v41 = 8 * *(*(a1 + 19) + 128);
      }

      v23 = *&v56[0];
      v35 = *a1;
      v27 = v15 / v41;
    }

    if (v35 == 16964)
    {
      v42 = 4095;
    }

    else
    {
      v42 = 8 * *(*(a1 + 19) + 128) - 1;
    }

    v29 = 0;
    v31 = (v42 & v15) >> 5;
    v32 = (v23 + 4 * v31);
    v33 = bswap32(*v32);
    v34 = 0x80000000 >> v15;
    v36 = v35;
LABEL_48:
    v28 = v30;
    v30 = v29;
    if (v15 < v13)
    {
      goto LABEL_16;
    }
  }

  LODWORD(v29) = v30;
LABEL_16:
  if (v29 + v28 < a4)
  {
    *a6 = 0;
    *v55 = 0;
    v7 = -34;
    goto LABEL_5;
  }

  *v55 = a4;
  *a6 = v13 - v28;
  v43 = v13 - v28 + a4;
  if (v24 == 16964)
  {
    v44 = 4096;
  }

  else
  {
    v44 = 8 * *(*(a1 + 19) + 128);
  }

  if (v27 == v43 / v44)
  {
LABEL_54:
    if (v24 == 16964)
    {
      v45 = (v43 >> 5) & 0x7F;
      v46 = (v23 + 4 * v45);
      v47 = bswap32(*v46);
      v48 = 128;
    }

    else
    {
      v49 = *(*(a1 + 19) + 128);
      v45 = ((8 * v49 - 1) & v43) >> 5;
      v46 = (v23 + 4 * v45);
      v47 = bswap32(*v46);
      v48 = v49 >> 2;
    }

    if (*v55 < v54)
    {
      v7 = 0;
      if (v43 >= a3)
      {
        goto LABEL_5;
      }

      v50 = 0x80000000 >> v43;
      if ((v47 & (0x80000000 >> v43)) != 0)
      {
        goto LABEL_5;
      }

      v51 = v48 - v45;
      v52 = v13 + a4 - v28 + 1;
      while (1)
      {
        v53 = *v55 + 1;
        *v55 = v53;
        if (v53 == v54)
        {
          break;
        }

        if (v50 > 1)
        {
          v50 >>= 1;
        }

        else
        {
          if (--v51)
          {
            ++v46;
          }

          else
          {
            v16 = sub_100011FEC(a1, 0, v56, v17, v18, v19, v20, v21);
            if (v16)
            {
              goto LABEL_4;
            }

            *&v56[0] = 0;
            v16 = sub_100011F90(a1, v52, v56);
            if (v16)
            {
              goto LABEL_4;
            }

            v46 = *&v56[0];
            if (*a1 == 16964)
            {
              v51 = 128;
            }

            else
            {
              v51 = *(*(a1 + 19) + 128) >> 2;
            }
          }

          v47 = bswap32(*v46);
          v50 = 0x80000000;
        }

        v7 = 0;
        if (v52 < a3)
        {
          ++v52;
          if ((v47 & v50) == 0)
          {
            continue;
          }
        }

        goto LABEL_5;
      }
    }

    goto LABEL_78;
  }

  v16 = sub_100011FEC(a1, 0, v56, v17, v18, v19, v20, v21);
  if (!v16)
  {
    *&v56[0] = 0;
    if (!sub_100011F90(a1, v13 - v28 + a4, v56))
    {
      v23 = *&v56[0];
      v24 = *a1;
      goto LABEL_54;
    }

LABEL_78:
    v7 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v7 = v16;
LABEL_5:
  if (*&v56[0])
  {
    sub_100011FEC(a1, 0, v56, v17, v18, v19, v20, v21);
  }

  return v7;
}

uint64_t sub_1000127A0(uint64_t a1, unsigned __int16 *a2, int a3, void *a4, uint64_t a5, unsigned __int16 *a6, _DWORD *a7)
{
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v11 = *(a1 + 16);
  v23 = a5;
  v24 = 0x100000000;
  v12 = *(v11 + 54);
  switch(v12)
  {
    case 7u:
      v13 = 12;
      break;
    case 0x10Au:
      v13 = 88;
      break;
    case 0xAu:
      v13 = 64;
      break;
    default:
      v13 = 520;
      break;
  }

  LODWORD(v24) = v13;
  v25[0] = 0;
  v25[1] = a3;
  v26 = 0;
  if ((*(v11 + 136) & 2) != 0)
  {
    v16 = *a2;
    LOWORD(v15) = 782;
    if (v16 < 6 || v16 > v12)
    {
      return v15;
    }
  }

  else
  {
    v14 = *a2;
    LOWORD(v15) = 782;
    if (v14 < 6 || v12 < v14)
    {
      return v15;
    }
  }

  __memmove_chk();
  v15 = sub_1000052E0(a1, v25, 0xFFFFFFFF, &v23, a6, v11 + 184);
  if (!v15)
  {
    if (a7)
    {
      *a7 = *(v11 + 188);
    }

    v17 = *(v11 + 136);
    if ((v17 & 2) != 0)
    {
      v19 = *(v11 + 204);
      v18 = *(v11 + 204);
    }

    else
    {
      v18 = *(v11 + 204);
      v19 = v18;
    }

    LOWORD(v15) = 782;
    if (v19 >= 6)
    {
      v20 = *(v11 + 54);
      LOWORD(v15) = v19 > v20 ? 782 : 0;
      if (a4 && v19 <= v20)
      {
        if ((v17 & 2) != 0)
        {
          v21 = *(v11 + 204) + 2;
        }

        else
        {
          v21 = v18 + 1;
        }

        memmove(a4, (v11 + 204), v21);
        LOWORD(v15) = 0;
      }
    }
  }

  return v15;
}

uint64_t sub_100012A1C(uint64_t a1, int a2, void *a3, uint64_t a4, unsigned __int16 *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 16);
  v25 = a4;
  v26 = 0x100000000;
  v14 = *(v13 + 54);
  switch(v14)
  {
    case 7:
      v15 = 12;
      break;
    case 266:
      v15 = 88;
      break;
    case 10:
      v15 = 64;
      break;
    default:
      v15 = 520;
      break;
  }

  LODWORD(v26) = v15;
  if ((a2 & 0x80000000) == 0)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 == 0x7FFF)
        {
          v16 = 3;
          goto LABEL_19;
        }

        goto LABEL_26;
      }

      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

LABEL_19:
    v17 = sub_100005678(a1, v16, v13 + 184, &v25, a5, a6, a7, a8);
    if (!v17)
    {
      *a6 = *(v13 + 188);
      v18 = *(v13 + 136);
      if ((v18 & 2) != 0)
      {
        v20 = *(v13 + 204);
        v19 = *(v13 + 204);
      }

      else
      {
        v19 = *(v13 + 204);
        v20 = v19;
      }

      if (v20 >= 6 && v20 <= *(v13 + 54))
      {
        if ((v18 & 2) != 0)
        {
          v22 = *(v13 + 204) + 2;
        }

        else
        {
          v22 = v19 + 1;
        }

        memmove(a3, (v13 + 204), v22);
        LOWORD(v17) = 0;
      }

      else
      {
        LOWORD(v17) = 782;
      }
    }

    return v17;
  }

  if (a2 == -32767)
  {
    v16 = 0;
    goto LABEL_19;
  }

  if (a2 == -1)
  {
LABEL_15:
    v16 = 2;
    goto LABEL_19;
  }

LABEL_26:
  if (a2 >= 2)
  {
    v21 = a2 - 1;
    while (1)
    {
      v17 = sub_100005678(a1, 1u, v13 + 184, &v25, a5, a6, a7, a8);
      if (v17)
      {
        return v17;
      }

      if (!--v21)
      {
        v16 = 1;
        goto LABEL_19;
      }
    }
  }

  if (a2 > -2)
  {
    goto LABEL_15;
  }

  v23 = -1;
  while (1)
  {
    v17 = sub_100005678(a1, 2u, v13 + 184, &v25, a5, a6, a7, a8);
    if (v17)
    {
      return v17;
    }

    --v23;
    v16 = 2;
    if (v23 <= a2)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_100012C04(uint64_t a1, unsigned __int16 *a2, const void *a3, unsigned int a4, _DWORD *a5)
{
  memset(v17, 0, 512);
  v8 = *(a1 + 16);
  v14 = a3;
  v15 = a4;
  v16 = 1;
  v9 = *(v8 + 136);
  if ((v9 & 2) != 0)
  {
    v10 = *a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v10 >= 6 && v10 <= *(v8 + 54))
  {
    if ((v9 & 2) != 0)
    {
      v12 = *a2 + 2;
    }

    __memmove_chk();
    v11 = sub_100005AB8(a1, v17, &v14, a4);
    *a5 = DWORD1(v17[0]);
    sub_1000055D4(*(a1 + 16) + 184);
  }

  else
  {
    return 782;
  }

  return v11;
}

uint64_t sub_100012D4C(uint64_t a1, unsigned __int16 *a2)
{
  memset(v15, 0, 512);
  v3 = *(a1 + 16);
  v4 = *(v3 + 136);
  if ((v4 & 2) != 0)
  {
    v5 = *a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v5 >= 6 && v5 <= *(v3 + 54))
  {
    if ((v4 & 2) != 0)
    {
      v7 = *a2 + 2;
    }

    __memmove_chk();
    v6 = sub_100005FD4(a1, v15, v8, v9, v10, v11, v12, v13);
    sub_1000055D4(*(a1 + 16) + 184);
  }

  else
  {
    return 782;
  }

  return v6;
}

uint64_t sub_100012E70(uint64_t a1, unsigned __int16 *a2, int a3, const void *a4, unsigned int a5, _DWORD *a6)
{
  memset(v18, 0, 512);
  v9 = *(a1 + 16);
  v15 = a4;
  v16 = a5;
  v17 = 1;
  DWORD1(v18[0]) = a3;
  v10 = *(v9 + 136);
  if ((v10 & 2) != 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v11 >= 6 && v11 <= *(v9 + 54))
  {
    if ((v10 & 2) != 0)
    {
      v13 = *a2 + 2;
    }

    __memmove_chk();
    v12 = sub_100005D70(a1, v18, &v15, a5);
    *a6 = DWORD1(v18[0]);
  }

  else
  {
    return 782;
  }

  return v12;
}

uint64_t sub_100012FAC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 == 0 || !v5)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v2;
  v18 = v3;
  v16 = 0;
  if (v6 <= *(a1 + 104))
  {
    v6 = *(a1 + 104);
  }

  v9 = *(a1 + 8);
  if (*a1 == 14)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  result = sub_1000143A4(*(a1 + 8), a1, (v6 + 511) >> 9, v10, &v16);
  if (result)
  {
    return result;
  }

  v11 = *(a1 + 120);
  *(a1 + 112) = v11;
  if (v11 < a2)
  {
    return 4294967262;
  }

  v13 = *v9;
  if (v13 == 16964)
  {
    v15 = *a1;
    if (*a1 == 14 || v15 == 4 || v15 == 3)
    {
      v9[98] |= 0xFF00u;
      v14 = v9;
LABEL_20:
      result = sub_100021540(v14);
      if (!result)
      {
        return sub_1000149D0(v9, a1, (v11 >> 9) - v16, v16);
      }

      return result;
    }

    return 0;
  }

  if (v13 != 18475)
  {
    return 0;
  }

  result = 0;
  if (*a1 <= 0xEu && ((1 << *a1) & 0x4198) != 0)
  {
    v9[98] |= 0xFF00u;
    v14 = v9;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100013104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000060FC(*(a1 + 168), a2, a3, a4, a5, a6, a7, a8);
  if (v9 || (*(*(a1 + 168) + 4) & 0x80) == 0)
  {
    return v9;
  }

  *(a1 + 196) |= 0xFF00u;

  return sub_1000210C4(a1);
}

uint64_t sub_100013170(uint64_t a1, uint64_t a2, unsigned __int16 **a3, unsigned __int16 *a4)
{
  v8 = sub_1000052E0(a1, a2, 0xFFFFFFFF, a3, a4, a2);
  if (v8 == 32)
  {
    v8 = 48;
  }

  if (!v8)
  {
    v9 = *a3;
    v10 = **a3;
    if ((v10 - 3) < 2)
    {
      v13 = 1;
      v11 = 8;
      v12 = 4;
    }

    else
    {
      v11 = 14;
      v12 = 10;
      if (v10 == 768)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (v10 != 1024)
        {
          return 0;
        }
      }
    }

    v14 = *(v9 + v12);
    if (!v14)
    {
      return 0;
    }

    sub_1000055D4(a2);
    sub_10001F16C(v14, (v9 + v11), v13, a2 + 20);
    return sub_1000052E0(a1, a2, 0xFFFFFFFF, a3, a4, a2);
  }

  return v8;
}

uint64_t sub_100013274(unsigned __int16 *a1, void *a2, _BYTE *a3, int a4, int a5, int a6)
{
  v24 = 0u;
  memset(v25, 0, 496);
  v20 = 0;
  v19[0] = &v24;
  v19[1] = (&stru_1000001F0 + 24);
  bzero(v21, 0x220uLL);
  v22 = a5;
  sub_10001F16C(a2, a3, *a1 == 18475, &v23);
  v12 = sub_100013170(*(a1 + 21), v21, v19, &v20);
  if (v12)
  {
    return v12;
  }

  else
  {
    if (*a1 == 18475)
    {
      v14 = v25;
      v15 = &v24 + 8;
      v16 = sub_10001E7C0((*(a1 + 1) >> 29) & 1);
      DWORD1(v24) += a6;
    }

    else
    {
      v15 = &v24 + 6;
      v14 = (&v24 | 0xE);
      WORD2(v24) += a6;
      v16 = sub_10001E814(1);
    }

    *v14 = v16;
    v17 = *v15;
    v13 = sub_100005D70(*(a1 + 21), v21, v19, v20);
    if (!v13)
    {
      if (v17 == 2)
      {
        if (a4 == 256 || a4 == 1)
        {
          a1[57] += a6;
        }

        else
        {
          a1[56] += a6;
        }
      }

      if (a4 == 256 || a4 == 1)
      {
        *(a1 + 9) += a6;
      }

      else
      {
        *(a1 + 8) += a6;
      }

      *(a1 + 5) = sub_10001E7C0((*(a1 + 1) >> 29) & 1);
      a1[98] |= 0xFF00u;
    }
  }

  return v13;
}

uint64_t sub_1000134A0(unsigned __int16 *a1, void *a2, _BYTE *a3, int a4, int a5)
{
  memset(v43, 0, 512);
  v38 = 0;
  v10 = *a1 == 18475;
  v39[0] = v43;
  v39[1] = (&stru_1000001F0 + 24);
  bzero(v40, 0x220uLL);
  v41 = a4;
  sub_10001F16C(a2, a3, v10, v42);
  v11 = sub_100013170(*(a1 + 21), v40, v39, &v38);
  if (v11)
  {
    return v11;
  }

  v19 = *&v42[2];
  v20 = v43[0];
  LOWORD(v11) = 48;
  if (LOWORD(v43[0]) <= 0xFFu)
  {
    v21 = &v43[2];
    if (LOWORD(v43[0]) != 1)
    {
      if (LOWORD(v43[0]) != 2)
      {
        return v11;
      }

LABEL_18:
      v22 = *v21;
      if (v22 == 2)
      {
        LOWORD(v11) = 51;
        return v11;
      }

      goto LABEL_20;
    }

    if (a5 || !v43[1])
    {
      goto LABEL_18;
    }

LABEL_14:
    LOWORD(v11) = 50;
    return v11;
  }

  if (LOWORD(v43[0]) != 512)
  {
    if (LOWORD(v43[0]) != 256)
    {
      return v11;
    }

    v21 = (&v43[1] + 2);
    if (a5 || !LOWORD(v43[1]))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((v43[0] & 0x20000) != 0)
  {
    v21 = &v43[5];
    goto LABEL_18;
  }

  v22 = 0;
LABEL_20:
  LOWORD(v11) = sub_100005FD4(*(a1 + 21), v40, v12, v13, v14, v15, v16, v17);
  if (!v11)
  {
    sub_1000055D4(v40);
    if (v22)
    {
      sub_10001F16C(v22, 0, v10, v42);
      sub_100005FD4(*(a1 + 21), v40, v23, v24, v25, v26, v27, v28);
    }

    v11 = sub_100013274(a1, v19, 0, v20, 0, -1);
    if (!v11)
    {
      sub_100013104(a1, v29, v30, v31, v32, v33, v34, v35);
      LOWORD(v11) = 0;
      v37 = v20 == 2 || v20 == 512;
      if (!a5 && v37)
      {
        LOWORD(v11) = sub_1000140EC(a1, v43);
      }
    }
  }

  return v11;
}

uint64_t sub_1000136F8(uint64_t a1, unint64_t *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(&xmmword_100043510 + 1);
  if (!*(&xmmword_100043510 + 1))
  {
    if (byte_10004350E)
    {
      v11 = xmmword_100043460;
      v12 = *&qword_100043470;
      v13 = xmmword_100043480;
      v14 = *&off_100043490;
      sub_10002D0E8(&v11, 2, "%s: Device block count was not initialized by user\n", a4, a5, a6, a7, a8, qword_1000434F8);
    }

    return -1;
  }

  if (dword_100043520 == 512)
  {
LABEL_10:
    v9 = 0;
    *a2 = v8;
    *a3 = 512;
    return v9;
  }

  if (dword_100043520 != -1)
  {
    v8 = (*(&xmmword_100043510 + 1) * dword_100043520) >> 9;
    goto LABEL_10;
  }

  if (byte_10004350E)
  {
    v11 = xmmword_100043460;
    v12 = *&qword_100043470;
    v13 = xmmword_100043480;
    v14 = *&off_100043490;
    sub_10002D0E8(&v11, 2, "%s: Device block size was not initialized by user\n", a4, a5, a6, a7, a8, qword_1000434F8);
  }

  return -1;
}

uint64_t sub_1000137E0(int a1, int a2, const void *a3, uint64_t a4, unsigned int a5, _DWORD *a6)
{
  *a6 = 0;
  if (lseek(a1, a4, 0) == -1)
  {
    if (byte_10004350E)
    {
      v18 = *__error();
      v25 = xmmword_100043460;
      v26 = *&qword_100043470;
      v27 = xmmword_100043480;
      v28 = *&off_100043490;
      sub_10002D0E8(&v25, 2, "# DeviceRead: lseek(%qd) failed with %d\n", v19, v20, v21, v22, v23, a4);
    }

    goto LABEL_7;
  }

  v11 = write(a1, a3, a5);
  if (v11)
  {
    if (v11 != -1)
    {
      LOWORD(v17) = 0;
      *a6 = v11;
      return v17;
    }

LABEL_7:
    v17 = *__error();
    return v17;
  }

  if (byte_10004350E)
  {
    v25 = xmmword_100043460;
    v26 = *&qword_100043470;
    v27 = xmmword_100043480;
    v28 = *&off_100043490;
    sub_10002D0E8(&v25, 2, "CANNOT WRITE: BLK %ld\n", v12, v13, v14, v15, v16, a4 / 512);
  }

  LOWORD(v17) = 5;
  return v17;
}

uint64_t sub_10001390C(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v12 = a3;
  v13 = a2;
  v30 = 0;
  if (*a1 == 16964)
  {
    LOBYTE(v27) = 7;
    v25 = 0;
    DWORD2(v31) = 0;
    *&v31 = 0;
    HIBYTE(v27) = a2;
    *v28 = a3;
    *&v28[4] = a4;
    v15 = sub_1000127A0(*(a1 + 160), &v27, 0, &v25, &v31, &v30, a8);
    if (a5 && v15 == 32)
    {
      v15 = sub_100012A1C(*(a1 + 160), -1, &v25, &v31, &v30, a8, v16, v17);
      if (v15 == 851)
      {
        v15 = 32;
      }

      if (v15)
      {
        return v15;
      }

      LOWORD(v15) = 32;
      if (*(&v25 + 2) != v12 || BYTE1(v25) != v13)
      {
        return v15;
      }
    }

    else
    {
      if (v15)
      {
        return v15;
      }

      LOBYTE(v13) = BYTE1(v25);
      v12 = *(&v25 + 2);
    }

    LOWORD(v15) = 0;
    *a6 = 10;
    *(a6 + 2) = v13;
    *(a6 + 3) = 0;
    v20 = HIWORD(v25);
    *(a6 + 4) = v12;
    *(a6 + 8) = v20;
    *a7 = vmovl_u16(*&v31);
    v21 = WORD5(v31);
    *(a7 + 16) = WORD4(v31);
    *(a7 + 20) = v21;
    *(a7 + 24) = 0u;
    *(a7 + 40) = 0u;
    *(a7 + 56) = 0;
    return v15;
  }

  v26 = 0;
  v25 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = 10;
  *v28 = a2;
  *&v28[2] = a3;
  v29 = a4;
  v15 = sub_1000127A0(*(a1 + 160), &v27, 0, &v25, &v31, &v30, a8);
  if (!a5 || v15 != 32)
  {
    if (v15)
    {
      return v15;
    }

LABEL_22:
    LOWORD(v15) = 0;
    *a6 = v25;
    *(a6 + 8) = v26;
    v22 = v32;
    *a7 = v31;
    *(a7 + 16) = v22;
    v23 = v34;
    *(a7 + 32) = v33;
    *(a7 + 48) = v23;
    return v15;
  }

  v15 = sub_100012A1C(*(a1 + 160), -1, &v25, &v31, &v30, a8, v18, v19);
  if (v15 == 851)
  {
    v15 = 32;
  }

  if (!v15)
  {
    LOWORD(v15) = 32;
    if (HIDWORD(v25) == v12 && BYTE2(v25) == v13)
    {
      goto LABEL_22;
    }
  }

  return v15;
}

uint64_t sub_100013B5C(uint64_t a1, unsigned __int8 a2, int a3, int a4)
{
  if (*a1 == 16964)
  {
    LOBYTE(v5) = 7;
    HIBYTE(v5) = a2;
    *v6 = a3;
    *&v6[4] = a4;
  }

  else
  {
    v5 = 10;
    *v6 = a2;
    *&v6[2] = a3;
    v7 = a4;
  }

  return sub_100012D4C(*(a1 + 160), &v5);
}

uint64_t sub_100013BC0(unsigned __int16 *a1, uint64_t a2, unsigned int a3, unint64_t a4, void *a5, _DWORD *a6)
{
  v12 = *(a1 + 10) >> 9;
  v13 = *a1;
  v14 = a4 / v12;
  if (v13 == 16964)
  {
    v15 = 0;
    v16 = (a2 + 26);
    for (i = 3; i; --i)
    {
      v18 = *v16;
      if (!*v16)
      {
        break;
      }

      v19 = v14 >= v18;
      LODWORD(v14) = v14 - v18;
      if (!v19)
      {
        v25 = *(v16 - 1);
        v26 = v15 + v18;
        goto LABEL_15;
      }

      v15 += v18;
      v16 += 2;
    }
  }

  else
  {
    v15 = 0;
    v20 = (a2 + 40);
    for (j = 8; j; --j)
    {
      v22 = *v20;
      if (!*v20)
      {
        break;
      }

      v26 = v22 + v15;
      v19 = v14 >= v22;
      LODWORD(v14) = v14 - v22;
      if (!v19)
      {
        v25 = *(v20 - 1);
        goto LABEL_15;
      }

      v20 += 2;
      v15 += v22;
    }
  }

  v34 = 0;
  v32 = 0;
  v33 = 0;
  memset(v35, 0, sizeof(v35));
  v31 = 0;
  result = sub_100013D98(a1, a2, a4, &v33, v35, &v32 + 1, &v32, &v31);
  if (!result)
  {
    v24 = v35 + 2 * HIDWORD(v32);
    v26 = v31;
    v25 = *v24;
    v15 = v31 - v24[1];
    v13 = *a1;
LABEL_15:
    v27 = v12 * v26;
    if (*(a2 + 120) >> 9 < v27)
    {
      v27 = *(a2 + 120) >> 9;
    }

    if (v13 == 18475)
    {
      v28 = *(a1 + 48) >> 9;
    }

    else
    {
      v28 = a1[59];
    }

    result = 0;
    *a5 = v28 + a4 + (v25 - v15) * v12;
    v29 = v27 - a4;
    if (v27 - a4 >= 0x3FFFFF)
    {
      v29 = 0x3FFFFFLL;
    }

    v30 = v29 << 9;
    if (v30 > a3)
    {
      LODWORD(v30) = a3;
    }

    *a6 = v30;
  }

  return result;
}

uint64_t sub_100013D98(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7, unsigned int *a8)
{
  v15 = a3 / (*(a1 + 40) >> 9);
  if (*a1 == 18475)
  {
    v16 = *(a2 + 36);
    v17 = *(a2 + 52);
    v18 = *(a2 + 84);
    *(a5 + 32) = *(a2 + 68);
    *(a5 + 48) = v18;
    *a5 = v16;
    *(a5 + 16) = v17;
    v19 = 3;
    if (*a1 == 18475)
    {
      v19 = 8;
    }
  }

  else
  {
    *a5 = vmovl_u16(*(a2 + 24));
    v20 = *(a2 + 34);
    *(a5 + 16) = *(a2 + 32);
    *(a5 + 20) = v20;
    *(a5 + 56) = 0;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    v19 = 3;
  }

  v21 = 0;
  v22 = 0;
  *a8 = 0;
  v23 = 4;
  do
  {
    v24 = *(a5 + v23);
    if (!v24)
    {
      v29 = v21 - 1;
      if (!v21)
      {
        v29 = 0;
      }

      *a6 = v29;
      *a7 = 0;
      *a4 = 0;
      return 16;
    }

    v22 += v24;
    *a8 = v22;
    if (v22 > v15)
    {
      result = 0;
      *a6 = v21;
      *a7 = 0;
      *a4 = 0;
      return result;
    }

    ++v21;
    v23 += 8;
    --v19;
  }

  while (v19);
  *a6 = v21 - 1;
  result = sub_10001390C(a1, ((*(a2 + 4) << 30) >> 31), *a2, v15, 1, a4, a5, a7);
  if (result)
  {
    if (result != 32)
    {
      return result;
    }

    *a7 = 0;
    *a4 = 0;
    if (*a1 == 18475)
    {
      v26 = *(a2 + 36);
      v27 = *(a2 + 52);
      v28 = *(a2 + 84);
      *(a5 + 32) = *(a2 + 68);
      *(a5 + 48) = v28;
      *a5 = v26;
      *(a5 + 16) = v27;
    }

    else
    {
      *a5 = vmovl_u16(*(a2 + 24));
      v37 = *(a2 + 34);
      *(a5 + 16) = *(a2 + 32);
      *(a5 + 20) = v37;
      *(a5 + 56) = 0;
      *(a5 + 40) = 0u;
      *(a5 + 24) = 0u;
    }

    return 16;
  }

  v30 = 0;
  v31 = *(a4 + 8);
  *a8 = v31;
  v32 = 3;
  if (*a1 == 18475)
  {
    v32 = 8;
  }

  v33 = (a5 + 4);
  while (1)
  {
    v35 = *v33;
    v33 += 2;
    v34 = v35;
    if (!v35)
    {
      v38 = v30 != 0;
      v36 = v30 - 1;
      if (!v38)
      {
        v36 = 0;
      }

      goto LABEL_30;
    }

    v31 += v34;
    *a8 = v31;
    if (v31 > v15)
    {
      break;
    }

    ++v30;
    if (!--v32)
    {
      v36 = v30 - 1;
LABEL_30:
      *a6 = v36;
      return 16;
    }
  }

  result = 0;
  *a6 = v30;
  return result;
}

uint64_t sub_100013FD4(_WORD *a1, unsigned int *a2, _DWORD *a3, _BYTE *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (*a1 == 18475)
  {
    v5 = 8;
  }

  else
  {
    v5 = 3;
  }

  v6 = a2[1];
  if (v6)
  {
    v8 = a2;
    v9 = a2;
    while (1)
    {
      v10 = *v9;
      v9 += 2;
      v11 = sub_10002AECC(v10, v6);
      if (v11)
      {
        break;
      }

      *a3 += v6;
      if (!--v5)
      {
        break;
      }

      v6 = v8[3];
      v8 = v9;
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v11 = 0;
LABEL_11:
    *a4 = 1;
  }

  return v11;
}

uint64_t sub_100014080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000060FC(*(a1 + 160), a2, a3, a4, a5, a6, a7, a8);
  if (v9 || (*(*(a1 + 160) + 4) & 0x80) == 0)
  {
    return v9;
  }

  *(a1 + 196) |= 0xFF00u;

  return sub_1000210C4(a1);
}

uint64_t sub_1000140EC(_WORD *a1, unsigned __int16 *a2)
{
  v24 = 0;
  v4 = *a2;
  if (v4 == 2)
  {
    v12 = sub_100014254(a1, *(a2 + 2), 0, a2 + 26, &v24);
    v13 = *(a2 + 2);
    v14 = (a2 + 92);
  }

  else
  {
    if (v4 != 512)
    {
      v22 = 0;
      a1[98] |= 0xFF00u;
      return v22;
    }

    v5 = 0;
    memset(v26, 0, sizeof(v26));
    memset(v25, 0, sizeof(v25));
    v6 = a2 + 44;
    do
    {
      v7 = (v26 + v5);
      v8 = *(v6 - 6);
      *v7 = *(v6 - 7);
      v7[1] = v8;
      v9 = *(v6 - 1);
      v10 = (v25 + v5);
      v11 = *v6;
      v6 += 2;
      *v10 = v9;
      v10[1] = v11;
      v5 += 8;
    }

    while (v5 != 24);
    v12 = sub_100014254(a1, *(a2 + 5), 0, v26, &v24);
    v13 = *(a2 + 5);
    v14 = v25;
  }

  v22 = sub_100014254(a1, v13, 255, v14, &v24);
  if (v24)
  {
    sub_100014080(a1, v15, v16, v17, v18, v19, v20, v21);
  }

  a1[98] |= 0xFF00u;
  if (!v12)
  {
    return v22;
  }

  return v12;
}

uint64_t sub_100014254(_WORD *a1, int a2, int a3, unsigned int *a4, _BYTE *a5)
{
  v13 = 0;
  v12 = 0;
  v9 = sub_100013FD4(a1, a4, &v13, &v12);
  if (!v9 && !v12)
  {
    v10 = v13;
    v14 = 0;
    v15 = 0;
    memset(v18, 0, sizeof(v18));
    v9 = sub_10001390C(a1, a3, a2, v13, 0, &v14, v18, &v15 + 1);
    if (v9)
    {
LABEL_4:
      if (v9 == 32)
      {
        LOWORD(v9) = 0;
      }
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v9 = sub_100013FD4(a1, v18, &v16, &v17);
        if (v9)
        {
          break;
        }

        v9 = sub_100013B5C(a1, a3, a2, v10);
        if (v9)
        {
          break;
        }

        *a5 = 1;
        v10 += v16;
        v9 = sub_10001390C(a1, a3, a2, v10, 0, &v14, v18, &v15 + 1);
        if (v9)
        {
          goto LABEL_4;
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1000143A4(uint64_t a1, uint64_t a2, unsigned int a3, char a4, _DWORD *a5)
{
  *a5 = 0;
  if (*a1 == 18475)
  {
    v9 = 8;
  }

  else
  {
    v9 = 3;
  }

  v10 = *(a1 + 40) >> 9;
  v11 = sub_100011ABC(a3, v10);
  v12 = v11;
  v13 = *(a2 + 120) / *(a1 + 40);
  if (*a1 != 18475)
  {
    v14 = -1309;
    if (v11 > 0x3FFFFF / v10 || v11 + v13 > 0x3FFFFF / v10)
    {
      goto LABEL_53;
    }
  }

  if ((a4 & 1) != 0 && v11 > *(a1 + 48))
  {
    v14 = -34;
LABEL_53:
    *a5 = 0;
    return v14;
  }

  v62 = 0;
  v60 = 0;
  v61 = 0;
  memset(v66, 0, sizeof(v66));
  v15 = v11 + v13;
  v59 = 0;
  v58 = 0;
  v16 = sub_100013D98(a1, a2, (v11 + v13) * v10 - 1, &v61, v66, &v60 + 1, &v60, &v59 + 1);
  v14 = v16;
  v24 = v16;
  if (!v16)
  {
    goto LABEL_63;
  }

  if (v16 != 16)
  {
    goto LABEL_53;
  }

  v53 = 0;
  v54 = v9;
  v52 = v10;
  v25 = HIDWORD(v59) - v13;
  if (HIDWORD(v59) < v13)
  {
    v25 = 0;
  }

  v56 = HIDWORD(v59);
  if (HIDWORD(v59) <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = HIDWORD(v59);
  }

  v26 = v12 - v25;
  v27 = *(a2 + 104);
  v28 = *(a1 + 40);
  if (v28 > v27)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27 / v28;
  }

  v55 = v29;
  v30 = HIDWORD(v60);
  v57 = 1;
  v12 = v25;
  while (1)
  {
    v31 = a2;
    v32 = v26;
    if ((a4 & 4) == 0)
    {
      v32 = sub_100011ABC(v26, v55) * v55;
    }

    v33 = *(v66 + 2 * v30 + 1) + *(v66 + 2 * v30);
    v34 = sub_1000113B4(a1, v33, v26, v32, v57, &v59, &v58);
    if (v34)
    {
      v14 = v34;
      if (v34 != 65502)
      {
        goto LABEL_55;
      }

      if ((a4 & 2) != 0)
      {
LABEL_54:
        v14 = -34;
LABEL_55:
        a2 = v31;
        goto LABEL_62;
      }

      if (v57)
      {
        v57 = 0;
        a2 = v31;
        goto LABEL_51;
      }

      if (!v58)
      {
        goto LABEL_54;
      }
    }

    v35 = v66 + 8 * v30;
    if (v59 == v33)
    {
      *(v35 + 1) += v58;
      v36 = v60;
      v37 = a1;
      a2 = v31;
      v38 = v31;
      goto LABEL_39;
    }

    if (*(v35 + 1))
    {
      ++v30;
    }

    a2 = v31;
    if (v30 != v54)
    {
      v45 = v66 + 2 * v30;
      v46 = v58;
      *v45 = v59;
      v45[1] = v46;
      v36 = v60;
      v37 = a1;
      v38 = v31;
LABEL_39:
      v47 = sub_10001481C(v37, v38, &v61, v66, v36);
      if (v47)
      {
        v14 = v47;
        goto LABEL_62;
      }

      goto LABEL_44;
    }

    if ((a4 & 8) != 0 || (v39 = *v31, *v31 == 3))
    {
      sub_100011828(a1, v59, v58);
      v14 = 17;
      goto LABEL_62;
    }

    LOWORD(v61) = 10;
    v40 = v31[1];
    WORD1(v61) = (v40 << 30 >> 31);
    HIDWORD(v61) = v39;
    v62 = v56;
    *&v66[0] = __PAIR64__(v58, v59);
    memset(v66 + 8, 0, 56);
    if (*a1 == 16964)
    {
      v63[0] = 7;
      v63[1] = v40 << 30 >> 31;
      v64 = v39;
      v65 = v56;
      v67[0] = v59;
      v67[1] = v58;
      v68 = 0;
      v41 = *(a1 + 160);
      v42 = v63;
      v43 = v67;
      v44 = 12;
    }

    else
    {
      v41 = *(a1 + 160);
      v42 = &v61;
      v43 = v66;
      v44 = 64;
    }

    v48 = sub_100012C04(v41, v42, v43, v44, &v60);
    v14 = v48;
    v30 = v48;
    if (v48)
    {
      break;
    }

    v53 = 1;
LABEL_44:
    v49 = v26 - v58;
    if (v26 < v58)
    {
      v49 = 0;
    }

    if (v58 >= v26)
    {
      v50 = v26;
    }

    else
    {
      v50 = v58;
    }

    v12 += v50;
    v15 += v50;
    if ((a4 & 2) != 0)
    {
      if (v26 <= v58)
      {
        v14 = 0;
      }

      else
      {
        v14 = -34;
      }

      goto LABEL_62;
    }

    v56 += v58;
    v26 = v49;
LABEL_51:
    if (!v26)
    {
      v14 = 0;
      goto LABEL_62;
    }
  }

  if (v48 == 17)
  {
    sub_100011828(a1, v59, v58);
    v14 = -34;
  }

LABEL_62:
  v10 = v52;
  v24 = v53;
LABEL_63:
  *a5 = v12 * v10;
  if (v12)
  {
    *(a2 + 120) = *(a1 + 40) * v15;
    *(a2 + 4) |= 0x80u;
  }

  if (v24)
  {
    sub_100014080(a1, v17, v18, v19, v20, v21, v22, v23);
  }

  return v14;
}

uint64_t sub_10001481C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*a3)
  {
    v23 = 0;
    v22 = 0;
    if (*a1 == 16964)
    {
      v19 = 7;
      v21 = 0;
      v24.i32[2] = 0;
      v24.i64[0] = 0;
      BYTE1(v19) = *(a3 + 2);
      v7 = *(a3 + 8);
      *(&v19 + 2) = *(a3 + 4);
      HIWORD(v19) = v7;
      result = sub_1000127A0(*(a1 + 160), &v19, a5, &v21, &v24, &v22, &v23);
      if (result)
      {
        return result;
      }

      *v24.i8 = vmovn_s32(*a4);
      v9 = *(a4 + 20);
      v24.i16[4] = *(a4 + 16);
      v24.i16[5] = v9;
      v10 = *(a1 + 160);
      v11 = v23;
      v12 = v22;
      v13 = &v21;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      result = sub_1000127A0(*(a1 + 160), a3, a5, &v19, &v24, &v22, &v23);
      if (result)
      {
        return result;
      }

      v17 = *(a4 + 16);
      v24 = *a4;
      v25 = v17;
      v18 = *(a4 + 48);
      v26 = *(a4 + 32);
      v27 = v18;
      v10 = *(a1 + 160);
      v11 = v23;
      v12 = v22;
      v13 = &v19;
    }

    return sub_100012E70(v10, v13, v11, &v24, v12, &v23);
  }

  else
  {
    if (*a1 == 18475)
    {
      v14 = *a4;
      v15 = *(a4 + 16);
      v16 = *(a4 + 32);
      *(a2 + 84) = *(a4 + 48);
      *(a2 + 68) = v16;
      *(a2 + 52) = v15;
      *(a2 + 36) = v14;
    }

    else
    {
      *(a2 + 24) = vmovn_s32(*a4);
      *(a2 + 32) = *(a4 + 16);
      *(a2 + 34) = *(a4 + 20);
    }

    result = 0;
    *(a2 + 4) |= 0x80u;
  }

  return result;
}

uint64_t sub_1000149D0(uint64_t a1, __int16 a2, int a3, unsigned int a4)
{
  v8 = malloc_type_malloc(0x8000uLL, 0xAD330913uLL);
  if (v8)
  {
    v9 = v8;
    v17 = 0;
    v10 = (a3 << 9);
    bzero(v8, 0x8000uLL);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    WORD1(v19) = sub_1000210A4(a2);
    *&v20 = v9;
    WORD4(v21) = 32;
    do
    {
      if (a4 <= 0x40)
      {
        v11 = a4 << 9;
      }

      else
      {
        v11 = 0x8000;
      }

      v12 = sub_1000216C8(a1, SWORD1(v19), v18, v10, v11, &v17);
      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = v17 == 0;
      }

      if (v13)
      {
        break;
      }

      v10 += v17;
      a4 -= v17 >> 9;
    }

    while (a4);
    free(v9);
    if (a4)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      return -39;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    return -1309;
  }
}

uint64_t sub_100014AD4(uint64_t result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v2 < v3)
  {
    v3 = *result;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (!v3)
  {
    return v6;
  }

  v7 = (result + 1);
  v8 = a2 + 1;
  while (1)
  {
    v10 = *v7++;
    v9 = v10;
    v12 = *v8++;
    v11 = v12;
    if (v9 != v12)
    {
      v13 = word_100041852[v9];
      v14 = word_100041852[v11];
      v15 = v13 == v14;
      v16 = v13 > v14;
      v17 = v13 < v14 ? -1 : result;
      result = v16 ? 1 : v17;
      if (!v15)
      {
        break;
      }
    }

    if (!--v3)
    {
      return v6;
    }
  }

  return result;
}

uint64_t sub_100014B40(unsigned __int16 *a1, int a2, unsigned __int16 *a3, int a4)
{
  while (1)
  {
    if (a2)
    {
      do
      {
        v4 = *a1++;
        v5 = v4;
        v6 = *(word_100040252 + ((v4 >> 7) & 0x1FE));
        if (*(word_100040252 + ((v4 >> 7) & 0x1FE)))
        {
          v5 = word_100040252[v6 + v5];
        }

        v7 = v5 == 0;
        --a2;
      }

      while (a2 && !v5);
      if (!a4)
      {
LABEL_13:
        v9 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v7 = 1;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v8 = *a3++;
      v9 = v8;
      v10 = *(word_100040252 + ((v8 >> 7) & 0x1FE));
      if (*(word_100040252 + ((v8 >> 7) & 0x1FE)))
      {
        v9 = word_100040252[v10 + v9];
      }

      --a4;
    }

    while (a4 && !v9);
LABEL_14:
    if (v5 != v9)
    {
      break;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (v5 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100014BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    return sub_100014AD4(a1 + 6, (a2 + 6));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100014C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 6);
  v7 = *(a2 + 6);
  if (*(a1 + 6) && *(a2 + 6))
  {
    return sub_100014B40((a1 + 8), v6, (a2 + 8), v7);
  }

  else
  {
    return (v6 - v7);
  }
}

uint64_t sub_100014C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (a1 + 8);
  v6 = (a2 + 8);
  v7 = *(a1 + 6);
  v8 = *(a2 + 6);
  v9 = v7 > v8;
  if (v7 < v8)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = *(a2 + 6);
    result = v9;
  }

  while (v7)
  {
    v10 = *v5;
    v11 = *v6;
    if (v10 > v11)
    {
      return 1;
    }

    ++v6;
    ++v5;
    --v7;
    if (v10 < v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100014CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v4 = v2 >= v3;
  v5 = v2 == v3;
  if (v2 == v3 && (v6 = *(a1 + 1), v7 = *(a2 + 1), v4 = v6 >= v7, v5 = v6 == v7))
  {
    v8 = *(a1 + 6);
    v9 = *(a2 + 6);
    v10 = v8 == v9;
    if (v8 > v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else if (!v5 && v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100014D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  v4 = v2 >= v3;
  v5 = v2 == v3;
  if (v2 == v3 && (v6 = *(a1 + 2), v7 = *(a2 + 2), v4 = v6 >= v7, v5 = v6 == v7))
  {
    v8 = *(a1 + 8);
    v9 = *(a2 + 8);
    v10 = v8 == v9;
    if (v8 > v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else if (!v5 && v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100014D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (a1 + 14);
  v7 = (a2 + 14);
  v8 = *(a1 + 12);
  v9 = *(a2 + 12);
  v10 = v8 > v9;
  if (v8 < v9)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = *(a2 + 12);
    result = v10;
  }

  while (v8)
  {
    v11 = *v6;
    v12 = *v7;
    if (v11 > v12)
    {
      return 1;
    }

    ++v7;
    ++v6;
    --v8;
    if (v11 < v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!result)
  {
    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
    v15 = v13 == v14;
    if (v13 < v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (v15)
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_100014DEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v68, 0, sizeof(v68));
  v66 = 0;
  v67 = 0;
  v65 = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  v10 = *(a1 + 776);
  if (a2 == 4)
  {
    v11 = 792;
LABEL_12:
    v12 = *(a1 + v11);
    goto LABEL_13;
  }

  if (a2 == 3)
  {
    v11 = 784;
    goto LABEL_12;
  }

  if (a2 != 8)
  {
    abort();
  }

  v12 = *(a1 + 808);
  if (!*(v12 + 112))
  {
    if (byte_10004350E)
    {
      v69 = xmmword_100043460;
      v70 = *&qword_100043470;
      v71 = xmmword_100043480;
      v72 = *&off_100043490;
      v13 = "Requested attributes btree rebuild, but attributes file size is 0\n";
      goto LABEL_8;
    }

LABEL_9:
    v14 = 0;
LABEL_10:
    v15 = 0;
    goto LABEL_16;
  }

LABEL_13:
  LOWORD(v16) = sub_1000077D8(v12, a1 + 976);
  if (v16)
  {
    goto LABEL_14;
  }

  if (*v10 != 18475)
  {
    v14 = 0;
    v15 = -57;
    goto LABEL_16;
  }

  v16 = sub_10001F220(v68);
  if (v16)
  {
LABEL_14:
    v15 = v16;
    goto LABEL_15;
  }

  v18 = *&v68[0];
  v19 = *(v10 + 168);
  *(v10 + 48) = *(*&v68[0] + 48);
  *(v10 + 32) = *(v18 + 32);
  *(v10 + 72) = *(v18 + 72);
  *(v10 + 56) = *(v18 + 56);
  *(v10 + 16) = *(v18 + 16);
  *(v19 + 104) = *(v18 + 280);
  v20 = *(v10 + 176);
  if (v20)
  {
    *(v20 + 104) = *(v18 + 360);
  }

  *(*(v10 + 160) + 104) = *(v18 + 200);
  *(v10 + 4) = *(v18 + 4);
  v21 = *(v18 + 96);
  *(v10 + 80) = *(v18 + 80);
  *(v10 + 96) = v21;
  sub_100004D50(v10, v68, 0);
  *&v68[0] = 0;
  v15 = 22;
  if (((1 << a2) & 0x118) == 0)
  {
    goto LABEL_21;
  }

  v22 = sub_1000154C8(a1, a2);
  if (v22)
  {
    v15 = v22;
    if (v22 == 65502)
    {
      v29 = *(a1 + 888);
      v69 = *(a1 + 872);
      v70 = v29;
      v30 = *(a1 + 920);
      v71 = *(a1 + 904);
      v72 = v30;
      sub_10002D0A4(&v69, 4294966734, v23, v24, v25, v26, v27, v28, v64);
      v14 = 0;
      v15 = -34;
      goto LABEL_16;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  v14 = *(a1 + 824);
  while (1)
  {
    v31 = sub_100007568(a1 + 976, &v67, &v66, &v65 + 1, v25, v26, v27, v28);
    v15 = v31;
    if (v31)
    {
      break;
    }

    *(a1 + 56) = *(a1 + 1000);
    if (a2 == 4)
    {
      v39 = WORD2(v65);
      v40 = *v66;
      if (**(a1 + 776) != 18475)
      {
        HIDWORD(v45) = v40 - 256;
        LODWORD(v45) = v40 - 256;
        v44 = v45 >> 8;
        if ((v44 - 2) < 2)
        {
          if (HIDWORD(v65) != 46)
          {
            goto LABEL_73;
          }

          v39 = 46;
        }

        else if (v44 == 1)
        {
          if (HIDWORD(v65) != 102)
          {
            goto LABEL_73;
          }

          v39 = 102;
        }

        else
        {
          if (v44 || HIDWORD(v65) != 70)
          {
            goto LABEL_73;
          }

          v39 = 70;
        }

        goto LABEL_70;
      }

      v41 = *v66;
      if ((v41 - 3) < 2)
      {
        if ((HIDWORD(v65) - 521) < 0xFFFFFE01)
        {
          goto LABEL_73;
        }

        goto LABEL_70;
      }

      if (v41 == 2)
      {
        if (HIDWORD(v65) != 248)
        {
          goto LABEL_73;
        }

        v39 = 248;
        goto LABEL_70;
      }

      if (v41 != 1 || HIDWORD(v65) != 88)
      {
        goto LABEL_73;
      }

      goto LABEL_61;
    }

    if (a2 != 8)
    {
      if (**(a1 + 776) == 18475)
      {
        if (HIDWORD(v65) != 64)
        {
          goto LABEL_73;
        }

        v39 = 64;
      }

      else
      {
        if (HIDWORD(v65) != 12)
        {
          goto LABEL_73;
        }

        v39 = 12;
      }

      goto LABEL_70;
    }

    v42 = dword_1000485D0;
    if (!dword_1000485D0)
    {
      v42 = (((*(*(a1 + 856) + 52) - 20) >> 1) & 0x7FFFFFFE) - 268;
      dword_1000485D0 = v42;
    }

    v39 = WORD2(v65);
    v43 = *v66;
    if (v43 == 48)
    {
      if (HIDWORD(v65) != 72)
      {
        if (byte_10004350E)
        {
          v69 = xmmword_100043460;
          v70 = *&qword_100043470;
          v71 = xmmword_100043480;
          v72 = *&off_100043490;
          sub_10002D0E8(&v69, 2, "Extents Data attribute size %u is larger than HFSPlusAttrExtents size %u\n", v34, v35, v36, v37, v38, HIDWORD(v65));
        }

        goto LABEL_73;
      }

      v39 = 72;
      goto LABEL_70;
    }

    if (v43 == 32)
    {
      if (HIDWORD(v65) != 88)
      {
        if (byte_10004350E)
        {
          v69 = xmmword_100043460;
          v70 = *&qword_100043470;
          v71 = xmmword_100043480;
          v72 = *&off_100043490;
          sub_10002D0E8(&v69, 2, "Fork Data attribute size %u is larger then HFSPlusAttrForkData size %u\n", v34, v35, v36, v37, v38, HIDWORD(v65));
        }

        goto LABEL_73;
      }

LABEL_61:
      v39 = 88;
      goto LABEL_70;
    }

    if (v43 != 16)
    {
      if (byte_10004350E)
      {
        v69 = xmmword_100043460;
        v70 = *&qword_100043470;
        v71 = xmmword_100043480;
        v72 = *&off_100043490;
        sub_10002D0E8(&v69, 2, "Unknown attribute type %u\n", v34, v35, v36, v37, v38, v43);
      }

      goto LABEL_73;
    }

    if (v42 < HIDWORD(v65))
    {
      if (byte_10004350E)
      {
        v69 = xmmword_100043460;
        v70 = *&qword_100043470;
        v71 = xmmword_100043480;
        v72 = *&off_100043490;
        sub_10002D0E8(&v69, 2, "Inline Attribute size %u is larger than maxsize %u\n", v34, v35, v36, v37, v38, HIDWORD(v65));
      }

      goto LABEL_73;
    }

LABEL_70:
    v46 = sub_100012C04(v14, v67, v66, v39, &v65);
    if (v46)
    {
      if (v46 == 65502)
      {
        v49 = *(a1 + 888);
        v69 = *(a1 + 872);
        v70 = v49;
        v50 = *(a1 + 920);
        v71 = *(a1 + 904);
        v72 = v50;
        sub_10002D0A4(&v69, 4294966734, v47, v48, v25, v26, v27, v28, v64);
      }

LABEL_73:
      v15 = 8;
      goto LABEL_16;
    }
  }

  if ((v31 & 0xFFDF) != 0)
  {
    goto LABEL_16;
  }

  v51 = sub_1000060FC(v14, v32, v33, v34, v35, v36, v37, v38);
  if (v51 || (v51 = sub_10000219C(*(v10 + 208))) != 0)
  {
    v15 = v51;
    goto LABEL_16;
  }

  if (a2 == 4)
  {
    *(a1 + 824) = *(a1 + 792);
    *(a1 + 792) = v14;
    *(v10 + 168) = v14;
    *v14 = 4;
    v52 = (a1 + 840);
    goto LABEL_92;
  }

  if (a2 == 8)
  {
    *(a1 + 824) = *(a1 + 808);
    *(a1 + 808) = v14;
    *(v10 + 176) = v14;
    if (v14)
    {
      *v14 = 8;
      v52 = (a1 + 856);
      goto LABEL_92;
    }

    if (byte_10004350E)
    {
      v69 = xmmword_100043460;
      v70 = *&qword_100043470;
      v71 = xmmword_100043480;
      v72 = *&off_100043490;
      v13 = "Can't rebuilt attributes btree when there is no attributes file\n";
LABEL_8:
      sub_10002D0E8(&v69, 2, v13, a4, a5, a6, a7, a8, v64);
    }

    goto LABEL_9;
  }

  *(a1 + 824) = *(a1 + 784);
  *(a1 + 784) = v14;
  *(v10 + 160) = v14;
  *v14 = 3;
  v52 = (a1 + 832);
LABEL_92:
  *(a1 + 848) = *v52;
  *(v10 + 196) |= 0xFF00u;
  v53 = sub_100021540(v10);
  if (!v53)
  {
    sub_100015878(a1, *(a1 + 824));
    if (a2 == 3)
    {
      sub_100014080(v10, v57, v58, v59, v60, v61, v62, v63);
    }

    goto LABEL_10;
  }

  v15 = v53;
  if (((1 << a2) & 0x118) != 0)
  {
    if (a2 == 8)
    {
      v54 = (v10 + 176);
    }

    else
    {
      v54 = (v10 + 160);
    }

    v55 = 784;
    if (a2 == 8)
    {
      v55 = 808;
    }

    if (a2 == 4)
    {
      v55 = 792;
    }

    v56 = *(a1 + 824);
    *(a1 + v55) = v56;
    if (a2 == 4)
    {
      v54 = (v10 + 168);
    }

    *(a1 + 824) = v14;
    *v54 = v56;
  }

  *(v10 + 196) |= 0xFF00u;
  sub_100021540(v10);
LABEL_16:
  if (*&v68[0])
  {
    sub_100004D50(v10, v68, 0);
  }

  if (v15 && v14)
  {
    sub_100015878(a1, v14);
  }

LABEL_21:
  sub_10000784C(a1 + 976);
  return v15;
}

uint64_t sub_1000154C8(uint64_t a1, int a2)
{
  memset(v54, 0, 106);
  v4 = *(a1 + 848);
  v5 = *(a1 + 824);
  *(v5 + 128) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  bzero(v4, 0x308uLL);
  if (a2 == 4)
  {
    v12 = 4;
    v13 = 840;
    v14 = 792;
  }

  else
  {
    if (a2 == 3)
    {
      v13 = 832;
      v14 = 784;
    }

    else
    {
      if (a2 != 8)
      {
        abort();
      }

      v13 = 856;
      v14 = 808;
    }

    v12 = a2;
  }

  v15 = *(a1 + v14);
  v16 = *(a1 + v13);
  v17 = *(v15 + 8);
  *v5 = v12;
  *(v5 + 8) = v17;
  *(v5 + 16) = v4;
  v18 = *(v16 + 52);
  *(v5 + 128) = v18;
  *(v4 + 96) = v5;
  v4[1] = 0;
  *v4 = *v16;
  *(v4 + 1) = *(v16 + 8);
  *(v4 + 26) = v18;
  *(v4 + 27) = *(v16 + 54);
  if (*v17 == 18475)
  {
    if (a2 == 3)
    {
      v19 = 2;
    }

    else
    {
      v19 = 6;
    }

    *(v4 + 34) = v19;
  }

  *(v4 + 20) = sub_100004E04;
  *(v4 + 21) = sub_10000508C;
  *(v4 + 22) = sub_100012FAC;
  v20 = *(v15 + 120);
  v21 = sub_100011AD0(v5, v20 / *(v17 + 40), v6, v7, v8, v9, v10, v11);
  if (!v21)
  {
    v22 = *(v4 + 96);
    *(v22 + 120) = v20;
    v21 = sub_1000149D0(v17, v22, 0, v20 >> 9);
    if (!v21)
    {
      v25 = *(v5 + 120);
      *(v5 + 112) = v25;
      if (a2 == 4)
      {
        v26 = 168;
      }

      else if (a2 == 8)
      {
        v26 = 176;
      }

      else
      {
        v26 = 160;
      }

      *(v5 + 104) = *(*(v17 + v26) + 104);
      v27 = v25 / *(v4 + 26);
      *(v4 + 14) = v27;
      *(v4 + 15) = v27;
      memset(v55, 0, sizeof(v55));
      v28 = sub_100006EE4(v4, 0, v55);
      if (v28)
      {
        v23 = v28;
        v35 = 0;
        v36 = 0;
      }

      else
      {
        v37 = *&v55[0];
        *(*&v55[0] + 8) = 1;
        *(v37 + 10) = 3;
        *(v37 + *(v4 + 26) - 2) = 14;
        *(v37 + 14) = 0;
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        v38 = *(v4 + 26);
        *(v37 + 32) = v38;
        v39 = *(v4 + 14);
        v40 = v39 - 1;
        *(v37 + 36) = v39;
        *(v37 + 40) = v39 - 1;
        *(v37 + 46) = *(*(v4 + 96) + 104);
        *(v37 + 52) = *(v4 + 34);
        *(v37 + 34) = *(v4 + 27);
        *(v37 + 51) = *v4;
        *(v37 + v38 - 4) = 120;
        *(v37 + *(v4 + 26) - 6) = 248;
        v41 = 8 * *(v4 + 26);
        v42 = v41 - 2048;
        if (v39 <= v41 - 2048)
        {
          v36 = 0;
        }

        else
        {
          *v37 = 1;
          v36 = (v39 + 1887) / (v41 - 160);
          v40 -= v36;
          *(v37 + 40) = v40;
        }

        v43 = (v37 + 248);
        v44 = v39 - v40;
        v45 = v39 - v40 - 8;
        if (v39 - v40 >= 8)
        {
          v46 = v45 >> 3;
          memset(v43, 255, v46 + 1);
          v44 = v45 & 7;
          v43 = (v37 + v46 + 249);
        }

        *v43 = -256 >> v44;
        *(v37 + *(v4 + 26) - 8) = (v42 >> 3) + 248;
        v35 = (v39 - v36 - v40) * *(v4 + 26);
        v47 = sub_100006FE4(v4, v55, v29, v30, v31, v32, v33, v34);
        if (!v47)
        {
LABEL_32:
          v21 = sub_10001EDB4(a1, v5, v54);
          if (!v21)
          {
            *(v4 + 16) = v54[0];
            *(v4 + 36) = *(v54 + 2);
            *(v4 + 7) = *(&v54[1] + 6);
            *(v4 + 27) = WORD2(v54[1]);
            if (!v36)
            {
              return 0;
            }

            LOWORD(v21) = sub_100015AC8(v4, v35 / *(v4 + 26), v36);
          }

          return v21;
        }

        v23 = v47;
        sub_100006F74(v4, v55, v48, v49, v50, v51, v52, v53);
      }

      if (v23)
      {
        return v23;
      }

      goto LABEL_32;
    }
  }

  return v21;
}

uint64_t sub_100015878(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == 18475)
  {
    v5 = (a2 + 36);
    v6 = 8;
    while (1)
    {
      v7 = v5[1];
      if (!v7)
      {
        break;
      }

      sub_100011828(v4, *v5, v7);
      *v5 = 0;
      v5 += 2;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = (a2 + 26);
    v9 = 3;
    while (*v8)
    {
      sub_100011828(v4, *(v8 - 1), *v8);
      *(v8 - 1) = 0;
      v8 += 2;
      if (!--v9)
      {
LABEL_9:
        memset(v35, 0, sizeof(v35));
        v33 = 0;
        v10 = *(a2 + 8);
        v11 = *v10;
        bzero(v36, 0x220uLL);
        v34[0] = v35;
        v34[1] = 0x100000040;
        sub_100026CB8(v11 == 18475, 0, *a2, 0, &v37);
        if (!sub_100005678(*(a1 + 784), 1u, v36, v34, &v33, v12, v13, v14))
        {
          do
          {
            v22 = *a2;
            if (v11 == 18475)
            {
              if (*&v38[2] != v22 || v38[0] != 0)
              {
                break;
              }

              v24 = v35 + 1;
              v25 = 8;
              do
              {
                if (!*v24)
                {
                  break;
                }

                sub_100011828(v10, *(v24 - 1), *v24);
                v24 += 2;
                --v25;
              }

              while (v25);
            }

            else
            {
              if (*v38 != v22 || HIBYTE(v37) != 0)
              {
                break;
              }

              v27 = v35 + 1;
              v28 = 3;
              do
              {
                if (!*v27)
                {
                  break;
                }

                sub_100011828(v10, *(v27 - 1), *v27);
                v27 += 2;
                --v28;
              }

              while (v28);
            }

            sub_100012D4C(*(a1 + 784), &v37);
          }

          while (!sub_100005678(*(a1 + 784), 1u, v36, v34, &v33, v29, v30, v31));
        }

        sub_100014080(v4, v15, v16, v17, v18, v19, v20, v21);
        break;
      }
    }
  }

  v4[98] |= 0xFF00u;
  return sub_100021540(v4);
}

uint64_t sub_100015AC8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  memset(v21, 0, sizeof(v21));
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = sub_100006EE4(a1, a2, v21);
      if (v8)
      {
        break;
      }

      v15 = *&v21[0];
      *(*&v21[0] + 8) = 2;
      *(v15 + 10) = 1;
      v16 = *(a1 + 52);
      *(v15 + v16 - 2) = 14;
      *(v15 + *(a1 + 52) - 4) = v16 - 6;
      v17 = v6 + 1;
      v18 = v17 < a3 ? a2 + 1 : 0;
      *v15 = v18;
      v8 = sub_100006FE4(a1, v21, v9, v10, v11, v12, v13, v14);
      if (v8)
      {
        break;
      }

      if (v17 >= a3)
      {
        a2 = a2;
      }

      else
      {
        a2 = (a2 + 1);
      }

      v6 = ++v7;
      if (v7 >= a3)
      {
        return 0;
      }
    }

    v19 = v8;
    sub_100006F74(a1, v21, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    return 0;
  }

  return v19;
}

uint64_t sub_100015BD4(uint64_t a1)
{
  sub_10001ECA4(3);
  v2 = sub_100004B1C(a1);
  if (v2)
  {
    return v2;
  }

  sub_10001ECA4(1);
  v3 = *(a1 + 776);
  sub_100020B5C();
  v10 = *(a1 + 22);
  if ((v10 & 0x100) != 0)
  {
    v11 = *(a1 + 888);
    v68 = *(a1 + 872);
    v69 = v11;
    v12 = *(a1 + 920);
    v70 = *(a1 + 904);
    v71 = v12;
    sub_10002D0A4(&v68, 208, v4, v5, v6, v7, v8, v9, v68);
    v2 = sub_100014DEC(a1, 3, v13, v14, v15, v16, v17, v18);
    if (v2)
    {
      return v2;
    }
  }

  if ((*(a1 + 24) & 0x100) != 0)
  {
    v22 = *(a1 + 888);
    v68 = *(a1 + 872);
    v69 = v22;
    v23 = *(a1 + 920);
    v70 = *(a1 + 904);
    v71 = v23;
    sub_10002D0A4(&v68, 209, v4, v5, v6, v7, v8, v9, v68);
    v2 = sub_100014DEC(a1, 4, v24, v25, v26, v27, v28, v29);
    if (v2)
    {
      return v2;
    }

    if ((*(a1 + 20) & 0x100) == 0)
    {
LABEL_23:
      LOWORD(v2) = 0;
      return v2;
    }

LABEL_24:
    v30 = *(a1 + 888);
    v68 = *(a1 + 872);
    v69 = v30;
    v31 = *(a1 + 920);
    v70 = *(a1 + 904);
    v71 = v31;
    sub_10002D0A4(&v68, 210, v4, v5, v6, v7, v8, v9, v68);
    LOWORD(v2) = sub_100014DEC(a1, 8, v32, v33, v34, v35, v36, v37);
    return v2;
  }

  v19 = *(a1 + 20);
  if ((v19 & 0x100) != 0)
  {
    goto LABEL_24;
  }

  if ((v10 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  if (((v19 & 4) == 0 || (v2 = sub_10001711C(408)) == 0) && ((*(a1 + 22) & 4) == 0 || (v2 = sub_10001711C(0)) == 0) && ((*(a1 + 24) & 4) == 0 || (v2 = sub_10001711C(136)) == 0))
  {
    v20 = *(v3 + 4);
    if ((v20 & 0x80000000) == 0)
    {
      *(v3 + 4) = v20 | 0x80000000;
      *(v3 + 196) |= 0xFF00u;
    }

    if ((*(a1 + 28) & 2) != 0)
    {
      v21 = sub_10000E250(a1, 0) << 16;
      if (v21)
      {
        goto LABEL_20;
      }
    }

    v2 = sub_100004B1C(a1);
    if (!v2)
    {
      if (*(a1 + 28))
      {
        v21 = sub_10000E250(a1, 1) << 16;
        if (v21)
        {
LABEL_20:
          v2 = v21 >> 16;
          return v2;
        }
      }

      v2 = sub_100004B1C(a1);
      if (!v2)
      {
        v2 = sub_100017240(a1);
        if (!v2)
        {
          v2 = sub_100004B1C(a1);
          if (!v2)
          {
            v46 = *(a1 + 28);
            *(a1 + 28) = v46 & 0xFFFF7E04;
            if ((v46 & 0x200) != 0)
            {
              v2 = sub_10001A2C0(a1, v39, v40, v41, v42, v43, v44, v45);
              if (v2)
              {
                return v2;
              }

              *(a1 + 28) &= ~0x200u;
              *(a1 + 24) |= 0x8000u;
            }

            if (*(a1 + 32) < 0)
            {
              sub_10001A8B0(a1, v39, v40, v41, v42, v43, v44, v45);
              *(a1 + 32) &= ~0x8000u;
            }

            v2 = sub_100004B1C(a1);
            if (!v2)
            {
              if ((*(a1 + 18) & 0x800) != 0)
              {
                if (BYTE1(xmmword_100043510) == 1 && !byte_10004350E)
                {
                  LOWORD(v2) = 8;
                  return v2;
                }

                v2 = sub_10001AA48(a1);
                if (v2)
                {
                  return v2;
                }

                *(a1 + 18) = *(a1 + 18) & 0xD7FF | 0x2000;
                nullsub_1(a1);
              }

              v2 = sub_100004B1C(a1);
              if (!v2)
              {
                if ((*(a1 + 24) & 0x800) != 0)
                {
                  v2 = sub_10001B564(a1);
                  if (v2)
                  {
                    return v2;
                  }

                  *(a1 + 24) |= 0x8000u;
                }

                if (!*(a1 + 624) || (v2 = sub_100017240(a1)) == 0)
                {
                  if ((*(a1 + 22) & 0x400) != 0)
                  {
                    *(a1 + 22) &= ~0x400u;
                  }

                  v2 = sub_100004B1C(a1);
                  if (!v2)
                  {
                    v2 = sub_100004B1C(a1);
                    if (!v2)
                    {
                      v54 = *(a1 + 22);
                      if ((v54 & 0x80808080) != 0)
                      {
                        v55 = *(a1 + 784);
                        *(*(v55 + 16) + 132) |= 1u;
                        LOWORD(v2) = sub_1000060FC(v55, v47, v48, v49, v50, v51, v52, v53);
                        if (v2)
                        {
                          return v2;
                        }

                        LOWORD(v54) = *(a1 + 22);
                        if ((v54 & 0x80) != 0)
                        {
                          v2 = sub_10001C220(a1, 0);
                          if (v2)
                          {
                            return v2;
                          }

                          LOWORD(v54) = *(a1 + 22);
                        }
                      }

                      if ((v54 & 0x4000) == 0 || (v2 = sub_10001C274(a1, 0)) == 0)
                      {
                        v2 = sub_100004B1C(a1);
                        if (!v2)
                        {
                          v63 = *(a1 + 24);
                          if ((v63 & 0x80808080) != 0)
                          {
                            v64 = *(a1 + 792);
                            *(*(v64 + 16) + 132) |= 1u;
                            LOWORD(v2) = sub_1000060FC(v64, v56, v57, v58, v59, v60, v61, v62);
                            if (v2)
                            {
                              return v2;
                            }

                            LOWORD(v63) = *(a1 + 24);
                            if ((v63 & 0x80) != 0)
                            {
                              v2 = sub_10001C220(a1, 136);
                              if (v2)
                              {
                                return v2;
                              }

                              LOWORD(v63) = *(a1 + 24);
                            }
                          }

                          if ((v63 & 0x4000) != 0)
                          {
                            v2 = sub_10001C274(a1, 136);
                            if (v2)
                            {
                              return v2;
                            }

                            LOWORD(v63) = *(a1 + 24);
                          }

                          if ((v63 & 0x200) == 0 || (v2 = sub_10001C3EC(a1, v56, v57, v58, v59, v60, v61, v62)) == 0)
                          {
                            v65 = *(a1 + 20);
                            if ((v65 & 0x10) != 0)
                            {
                              v2 = sub_10001C610(a1, v56, v57, v58, v59, v60, v61, v62);
                              if (v2)
                              {
                                return v2;
                              }

                              v65 = *(a1 + 20);
                            }

                            if ((v65 & 0x60) != 0)
                            {
                              v2 = sub_10001C714(a1);
                              if (v2)
                              {
                                return v2;
                              }

                              v65 = *(a1 + 20);
                            }

                            if (v65 < 0)
                            {
                              v66 = *(a1 + 808);
                              *(*(v66 + 16) + 132) |= 1u;
                              LOWORD(v2) = sub_1000060FC(v66, v56, v57, v58, v59, v60, v61, v62);
                              if (v2)
                              {
                                return v2;
                              }

                              if ((*(a1 + 20) & 0x4000) != 0)
                              {
LABEL_72:
                                v2 = sub_10001C274(a1, 408);
                                if (v2)
                                {
                                  return v2;
                                }
                              }
                            }

                            else if ((v65 & 0x4000) != 0)
                            {
                              goto LABEL_72;
                            }

                            if ((*(a1 + 24) & 0x800) == 0 || (v2 = sub_10001B564(a1)) == 0)
                            {
                              v2 = sub_100004B1C(a1);
                              if (!v2)
                              {
                                if ((*(a1 + 18) & 0x2000) != 0)
                                {
                                  *(a1 + 48) = 2;
                                  sub_10002B0E0(a1, 1);
                                  if (v2)
                                  {
                                    return v2;
                                  }

                                  nullsub_1(a1);
                                }

                                v2 = sub_100004B1C(a1);
                                if (!v2)
                                {
                                  if (*(a1 + 18) < 0)
                                  {
                                    LOBYTE(v68) = 0;
                                    v2 = sub_10001CDA4(&v68);
                                    if (v2)
                                    {
                                      return v2;
                                    }

                                    if (v68)
                                    {
                                      *(a1 + 18) &= ~0x8000u;
                                      *(v3 + 196) = *(v3 + 196);
                                    }
                                  }

                                  v2 = sub_100004B1C(a1);
                                  if (!v2 && ((*(a1 + 18) & 0x1000) == 0 || (v2 = sub_10001CF94()) == 0))
                                  {
                                    v2 = sub_100004B1C(a1);
                                    if (!v2)
                                    {
                                      if ((v67 = *(v3 + 196), (*(a1 + 18) & 0x80000000) == 0) && v67 < 0x100 || (*(v3 + 196) = v67 | 0xFF00, *(v3 + 4) |= 0x100u, (v2 = sub_100021540(v3)) == 0))
                                      {
                                        v2 = sub_100004B1C(a1);
                                        if (!v2)
                                        {
                                          LOWORD(v2) = 8 * (*(a1 + 956) != 0);
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

  return v2;
}

uint64_t sub_100016130(uint64_t a1, uint64_t a2)
{
  memset(v31, 0, sizeof(v31));
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  bzero(v25, 0x220uLL);
  v4 = sub_10000B770(a1, *(a2 + 40), 1, v26, v31, &v20);
  if (v4)
  {
    v5 = v4;
    if (v4 == 32)
    {
      v5 = 0;
      *(a1 + 957) = 1;
    }

    return v5;
  }

  if (LOWORD(v31[0]) == 2)
  {
    DWORD1(v31[0]) = *(a2 + 16);
    v18 = v31;
    LODWORD(v19) = v20;
    HIDWORD(v19) = 1;
    return sub_100005D70(*(a1 + 792), v25, &v18, v20);
  }

  if (LOWORD(v31[0]) != 1)
  {
    return sub_10001ECC0(a1, 2);
  }

  sub_10001EBC8("com.apple.system.hfs.firstlink", 30, v30, &v17, 254);
  v29 = v17 >> 1;
  v26[0] = v17 + 12;
  v26[1] = 0;
  v27 = *(a2 + 40);
  v28 = 0;
  v21 = 16;
  v22 = 0;
  snprintf(v24, 0xCuLL, "%lu", *(a2 + 16));
  v6 = strlen(v24);
  v23 = v6 + 1;
  v18 = &v21;
  v20 = v6 + 1 - (v6 & 1) + 17;
  LODWORD(v19) = v20;
  HIDWORD(v19) = 1;
  v5 = sub_100005AB8(*(a1 + 808), v25, &v18, v20);
  if (v5 == 33)
  {
    v5 = sub_100005D70(*(a1 + 808), v25, &v18, v20);
  }

  if (v5)
  {
    v7 = *(a1 + 808);
    if (!*(v7 + 120) && !*(v7 + 112) && !*(v7 + 104) && sub_10002D444() >= 3)
    {
      v16[0] = xmmword_100043460;
      v16[1] = *&qword_100043470;
      v16[2] = xmmword_100043480;
      v16[3] = *&off_100043490;
      sub_10002D0E8(v16, 2, "\tFixBadLinkChainFirst: Attribute btree does not exists.\n", v8, v9, v10, v11, v12, v15);
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1000163DC(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, 512);
  memset(v9, 0, 512);
  v7 = 0;
  v6 = 0;
  v4 = sub_10000B770(a1, *(a2 + 40), 1, v8, v9, &v7);
  if (!v4)
  {
    if (LOWORD(v9[0]) == 2)
    {
      v9[3] = *(a2 + 16);
      LOWORD(v4) = sub_100012E70(*(a1 + 792), v8, 0, v9, v7, &v6);
    }

    else
    {
      LOWORD(v4) = sub_10001ECC0(a1, 2);
    }
  }

  return v4;
}

uint64_t sub_10001652C(uint64_t a1, uint64_t a2)
{
  memset(v7, 0, 512);
  memset(v8, 0, 512);
  v6 = 0;
  v5 = 0;
  v3 = sub_10000B770(a1, *(a2 + 40), 1, v7, v8, &v6);
  if (!v3)
  {
    if (v8[0] == 2)
    {
      v8[1] &= ~0x20u;
      LOWORD(v3) = sub_100012E70(*(a1 + 792), v7, 0, v8, v6, &v5);
    }

    else
    {
      LOWORD(v3) = sub_10001ECC0(a1, 2);
    }
  }

  return v3;
}

uint64_t sub_100016674(uint64_t a1, uint64_t a2)
{
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  *v37 = 0u;
  memset(v36, 0, 512);
  memset(v35, 0, 512);
  v34 = 0;
  v33 = 0;
  sub_10001F16C(*(a2 + 40), 0, 1, v36);
  v4 = sub_1000127A0(*(a1 + 792), v36, 0, v35, v37, &v34, &v33);
  if (!v4)
  {
    if (LOWORD(v37[0]) != 3)
    {
      LOWORD(v5) = 0;
      *(a1 + 24) |= 0x800u;
      goto LABEL_12;
    }

    sub_10001F16C(v37[1], &v37[2], 1, v36);
    if (sub_1000127A0(*(a1 + 792), v36, 0, v35, v37, &v34, &v33))
    {
      if (sub_10002D444() >= 3)
      {
        v29 = xmmword_100043460;
        v30 = *&qword_100043470;
        v31 = xmmword_100043480;
        v32 = *&off_100043490;
        sub_10002D0E8(&v29, 2, "UpdFolderCount: second SearchBTreeRecord failed (thread.parentID = %u, result = %d), just returning without complaint\n", v6, v7, v8, v9, v10, v37[1]);
      }
    }

    else
    {
      if (LOWORD(v37[0]) != 1)
      {
        if (sub_10002D444() >= 3)
        {
          v29 = xmmword_100043460;
          v30 = *&qword_100043470;
          v31 = xmmword_100043480;
          v32 = *&off_100043490;
          sub_10002D0E8(&v29, 2, "UpdFolderCount:  actual record type (%d) != FolderRecord\n", v18, v19, v20, v21, v22, SLOWORD(v37[0]));
        }

        goto LABEL_10;
      }

      if (*(a2 + 16) != DWORD1(v42))
      {
        DWORD1(v42) = *(a2 + 16);
        v5 = sub_100012E70(*(a1 + 792), v35, v33, v37, v34, &v33);
        if (!v5)
        {
          return v5;
        }

        v23 = v5;
        if (sub_10002D444() >= 3)
        {
          v29 = xmmword_100043460;
          v30 = *&qword_100043470;
          v31 = xmmword_100043480;
          v32 = *&off_100043490;
          sub_10002D0E8(&v29, 2, "UpdFolderCount:  ReplaceBTreeRecord failed (%d)\n", v24, v25, v26, v27, v28, v23);
        }

        goto LABEL_10;
      }
    }

    LOWORD(v5) = 0;
    return v5;
  }

  if (v4 == 32)
  {
    LOWORD(v5) = 0;
LABEL_12:
    *(a1 + 957) = 1;
    return v5;
  }

  if (sub_10002D444() >= 3)
  {
    v16 = *(a2 + 40);
    v29 = xmmword_100043460;
    v30 = *&qword_100043470;
    v31 = xmmword_100043480;
    v32 = *&off_100043490;
    sub_10002D0E8(&v29, 2, "\tUpdFolderCount: first SearchBTreeRecord failed, parid = %u, result = %d\n", v11, v12, v13, v14, v15, v16);
  }

LABEL_10:
  LOWORD(v5) = sub_10001ECC0(a1, 2);
  return v5;
}

uint64_t sub_1000169F4(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, 512);
  memset(v9, 0, 512);
  memset(v8, 0, 512);
  v7 = 0;
  v6 = 0;
  sub_10001F16C(*(a2 + 40), 0, 1, v9);
  v3 = sub_1000127A0(*(a1 + 792), v9, 0, v8, v10, &v7, &v6);
  if (v3)
  {
    if (v3 == 32)
    {
      LOWORD(v4) = 0;
LABEL_11:
      *(a1 + 957) = 1;
      return v4;
    }

LABEL_9:
    LOWORD(v4) = sub_10001ECC0(a1, 2);
    return v4;
  }

  if (LOWORD(v10[0]) != 3)
  {
    LOWORD(v4) = 0;
    *(a1 + 24) |= 0x800u;
    goto LABEL_11;
  }

  sub_10001F16C(v10[1], &v10[2], 1, v9);
  if (sub_1000127A0(*(a1 + 792), v9, 0, v8, v10, &v7, &v6) || LOWORD(v10[0]) != 1)
  {
    goto LABEL_9;
  }

  if ((v10[0] & 0x100000) != 0)
  {
    LOWORD(v4) = 0;
    return v4;
  }

  HIWORD(v10[0]) |= 0x10u;
  v4 = sub_100012E70(*(a1 + 792), v8, v6, v10, v7, &v6);
  if (v4)
  {
    goto LABEL_9;
  }

  return v4;
}

uint64_t sub_100016C5C(int a1, char *__dst, _DWORD *a3)
{
  if (__dst)
  {
    v5 = (*a3 - 1);
    if ((a1 - 3) > 0xC)
    {
      v6 = "Unknown File";
    }

    else
    {
      v6 = off_10003C4B0[a1 - 3];
    }

    v7 = strncpy(__dst, v6, (*a3 - 1));
    __dst[v5] = 0;
    *a3 = strlen(v7);
  }

  return 0;
}

uint64_t sub_100016CD8(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4, unint64_t a5, _DWORD *a6, _WORD *a7)
{
  v49 = 0;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  memset(v50, 0, 512);
  size = 0;
  if (!(a3 | a5))
  {
    v12 = 0;
    LOWORD(v11) = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  v8 = a2;
  if (a2 < 0x10)
  {
    v9 = 0;
    v10 = 0;
    LOWORD(v11) = 256;
    v12 = -50;
    goto LABEL_5;
  }

  sub_100020B5C();
  v21 = v20;
  if (v20)
  {
    v22 = 766;
    v23 = 3542958816;
  }

  else
  {
    v22 = 32;
    v23 = 356857417;
  }

  v10 = malloc_type_malloc(v22, v23);
  if (!v10)
  {
    LOWORD(v11) = 0;
    v9 = 0;
    v12 = -108;
    goto LABEL_5;
  }

  v44 = a6;
  v45 = a7;
  v9 = 0;
  v24 = 0;
  do
  {
    sub_10001F16C(v8, 0, v21, v47);
    v25 = sub_1000127A0(*(a1 + 792), v47, 0, v47, v50, &v49, &v48);
    if (v25)
    {
      v12 = v25;
      LOWORD(v11) = 0;
LABEL_66:
      a7 = v45;
      goto LABEL_5;
    }

    if (v50[0] - 3 >= 2 && v50[0] != 1024 && v50[0] != 768)
    {
      LOWORD(v11) = 0;
      v12 = -50;
      goto LABEL_66;
    }

    if (v21)
    {
      sub_10001EAF0(v50 | 0xA, 2 * v50[4], v10, &size, 0x2FEuLL);
    }

    else
    {
      size = LOBYTE(v50[7]);
      __memcpy_chk();
    }

    v26 = malloc_type_malloc(0x18uLL, 0x1030040B20C17F8uLL);
    if (!v26)
    {
      LOWORD(v11) = 0;
      v12 = -108;
      goto LABEL_66;
    }

    v27 = v26;
    v28 = size;
    v27[2] = size;
    v29 = malloc_type_malloc(v28, 0x820BDE09uLL);
    *v27 = v29;
    memcpy(v29, v10, size);
    *(v27 + 2) = v9;
    if (!v24)
    {
      v24 = v27;
    }

    v30 = &v50[2];
    if (!v21)
    {
      v30 = (v50 | 0xA);
    }

    if (!a3)
    {
      break;
    }

    v8 = *v30;
    v9 = v27;
  }

  while (v8 != 2);
  if (a5)
  {
    v31 = *(v24 + 2);
    v32 = *v44 >= v31 + 1;
    v33 = *v44 < v31 + 1;
    if (*v44 >= v31 + 1)
    {
      v34 = v31;
    }

    else
    {
      v34 = (*v44 - 1);
    }

    *v44 = v34;
    if (v32)
    {
      v35 = 2;
    }

    else
    {
      v35 = 3;
    }

    if (v34 <= 0xFF)
    {
      v11 = v33;
    }

    else
    {
      v11 = v35;
    }

    memcpy(a5, *v24, v34);
    *(a5 + *v44) = 0;
  }

  else
  {
    v11 = 0;
  }

  a7 = v45;
  if (a3)
  {
    v36 = *a4;
    *a4 = 0;
    v37 = v36 - 1;
    if (v36 == 1)
    {
      v38 = 0;
    }

    else
    {
      while (1)
      {
        *(a3 + *a4) = 47;
        LODWORD(v38) = *a4 + 1;
        *a4 = v38;
        v39 = v37 - 1;
        if (v37 == 1)
        {
          break;
        }

        v40 = v27[2];
        if (v39 >= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = v39;
        }

        if (v39 >= v40)
        {
          v42 = v11;
        }

        else
        {
          v42 = v11 | 0x10;
        }

        size = v41;
        if (v41 <= 0xFF)
        {
          v11 = v42;
        }

        else
        {
          v11 = v42 | 0x20;
        }

        memcpy((a3 + v38), *v27, v41);
        *a4 += v41;
        v43 = *(v27 + 2);
        free(*v27);
        free(v27);
        if (v43)
        {
          v27 = v43;
          v37 = v39 - v41;
          if (v39 != v41)
          {
            continue;
          }
        }

        LODWORD(v38) = *a4;
        v27 = v43;
        break;
      }

      v38 = v38;
      a7 = v45;
    }

    v12 = 0;
    *(a3 + v38) = 0;
  }

  else
  {
    v12 = 0;
  }

  v9 = v27;
LABEL_5:
  if (a7)
  {
    *a7 = v11;
  }

  if (v9)
  {
    do
    {
      v13 = *(v9 + 2);
      if (*v9)
      {
        free(*v9);
      }

      free(v9);
      v9 = v13;
    }

    while (v13);
  }

  if (v10)
  {
    free(v10);
  }

  return v12;
}

uint64_t sub_10001711C(int a1)
{
  v1 = *(sub_10001EDA4(a1) + 16);
  v2 = **(v1 + 760);
  *v15 = 0u;
  *v16 = 0u;
  v3 = *(v1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0x80;
  while ((v5 & *v2) != 0)
  {
LABEL_6:
    if (v5 >> 1)
    {
      v5 >>= 1;
    }

    else
    {
      ++v2;
      v5 = 0x80;
    }

    v4 = (v4 + 1);
    if (v4 >= v3)
    {
      return 0;
    }
  }

  v6 = (*(v1 + 160))(*(v1 + 768), v4, 8, v15);
  if (!v6)
  {
    bzero(v15[0], LODWORD(v16[1]));
    (*(v1 + 168))(*(v1 + 768), v15, 2);
    v15[0] = 0;
    v3 = *(v1 + 56);
    goto LABEL_6;
  }

  v13 = v6;
  if (byte_10004350E)
  {
    v14[0] = xmmword_100043460;
    v14[1] = *&qword_100043470;
    v14[2] = xmmword_100043480;
    v14[3] = *&off_100043490;
    sub_10002D0E8(v14, 2, "Couldn't read node #%u\n", v7, v8, v9, v10, v11, v4);
  }

  return v13;
}

uint64_t sub_100017240(uint64_t a1)
{
  v1 = *(a1 + 624);
  *(a1 + 624) = 0;
  if (v1)
  {
    v261 = (a1 + 872);
    v3 = 0uLL;
    while (1)
    {
      v4 = *v1;
      *(a1 + 957) = 0;
      v5 = *(v1 + 8);
      if (v5 > 0x215)
      {
        switch(*(v1 + 8))
        {
          case 0x216:
            v85 = *(v1 + 40);
            v298 = 0;
            v297 = 0;
            v296 = 0;
            v294 = v3;
            v295 = v3;
            v292 = v3;
            v293 = v3;
            v290 = v3;
            v291 = v3;
            v288 = v3;
            v289 = v3;
            v286 = v3;
            v287 = v3;
            v284 = v3;
            v285 = v3;
            v282 = v3;
            v283 = v3;
            v280 = v3;
            v281 = v3;
            v278 = v3;
            v279 = v3;
            v276 = v3;
            v277 = v3;
            v274 = v3;
            v275 = v3;
            v272 = v3;
            v273 = v3;
            v270 = v3;
            v271 = v3;
            v268 = v3;
            v269 = v3;
            v266 = v3;
            v267 = v3;
            __dst = v3;
            v265 = v3;
            v394 = v3;
            v393 = v3;
            v392 = v3;
            v391 = v3;
            v390 = v3;
            v389 = v3;
            v388 = v3;
            v387 = v3;
            v386 = v3;
            v385 = v3;
            v384 = v3;
            v383 = v3;
            v382 = v3;
            v381 = v3;
            v380 = v3;
            v379 = v3;
            v378 = v3;
            v377 = v3;
            v376 = v3;
            v375 = v3;
            v374 = v3;
            v373 = v3;
            v372 = v3;
            v371 = v3;
            v370 = v3;
            v369 = v3;
            v368 = v3;
            v367 = v3;
            v366 = v3;
            v365 = v3;
            v364 = v3;
            *v363 = v3;
            v362 = v3;
            v361 = v3;
            v360 = v3;
            v359 = v3;
            v358 = v3;
            v357 = v3;
            v356 = v3;
            v355 = v3;
            v354 = v3;
            v353 = v3;
            v352 = v3;
            v351 = v3;
            v350 = v3;
            v349 = v3;
            v348 = v3;
            v347 = v3;
            v346 = v3;
            v345 = v3;
            v344 = v3;
            v343 = v3;
            v342 = v3;
            v341 = v3;
            v340 = v3;
            v339 = v3;
            v338 = v3;
            v337 = v3;
            v336 = v3;
            v335 = v3;
            v334 = v3;
            v333 = v3;
            v332 = v3;
            v331 = v3;
            v330 = v3;
            v329 = v3;
            v328 = v3;
            v327 = v3;
            v326 = v3;
            v325 = v3;
            v324 = v3;
            v322 = v3;
            v323 = v3;
            v320 = v3;
            v321 = v3;
            v318 = v3;
            v319 = v3;
            v316 = v3;
            v317 = v3;
            v314 = v3;
            v315 = v3;
            v312 = v3;
            v313 = v3;
            v310 = v3;
            v311 = v3;
            v308 = v3;
            v309 = v3;
            v306 = v3;
            v307 = v3;
            v304 = v3;
            v305 = v3;
            v302 = v3;
            v303 = v3;
            v300 = v3;
            v301 = v3;
            v299 = v3;
            v263 = 0;
            v262[0] = v3;
            v262[1] = v3;
            v86 = *(sub_10001EDA4(136) + 16);
            sub_100020B5C();
            v88 = v87;
            sub_10001F16C(v85, 0, v87, &v299);
            v89 = sub_1000127A0(*(a1 + 792), &v299, 0, &v331, v363, &v296, &v297);
            if (v89)
            {
              v95 = v89;
              goto LABEL_111;
            }

            if ((LOWORD(v363[0]) == 3 || LOWORD(v363[0]) == 768) && (v137 = *(v86 + 60)) != 0)
            {
              while (1)
              {
                v138 = sub_100006D88(v86, v137, v262, v90, v91, v92, v93, v94);
                if (v138)
                {
                  break;
                }

                v145 = *&v262[0];
                if (*(*&v262[0] + 10))
                {
                  v146 = 0;
                  while (1)
                  {
                    sub_100007494(v86, v145, v146, &v263, &v298, &v296);
                    v147 = *v298;
                    v148 = 4;
                    if (v147 != 1)
                    {
                      v148 = 3;
                    }

                    if (*&v298[v148] == v85 && (v147 == 1 || v147 == 256))
                    {
                      break;
                    }

                    if (*(v145 + 10) <= ++v146)
                    {
                      goto LABEL_176;
                    }
                  }

                  v149 = *(v263 + 2);
                  sub_10001F0E8((v263 + 6), &__dst, v88);
                  if (v149)
                  {
                    sub_100006F74(v86, v262, v139, v140, v141, v142, v143, v144);
                    sub_1000127A0(*(a1 + 792), &v299, 0, &v331, v363, &v296, &v297);
                    v253 = 4;
                    if (!v88)
                    {
                      v253 = 10;
                    }

                    *(v363 | v253) = v149;
                    v254 = 8;
                    if (!v88)
                    {
                      v254 = 14;
                    }

                    sub_10001F0E8(&__dst, (v363 | v254), v88);
                    sub_100012E70(*(a1 + 792), &v331, v297, v363, v296, &v297);
                    LOWORD(v19) = 0;
                    goto LABEL_278;
                  }
                }

LABEL_176:
                v137 = *v145;
                sub_100006F74(v86, v262, v139, v140, v141, v142, v143, v144);
                if (!v137)
                {
                  goto LABEL_177;
                }
              }

              v95 = v138;
LABEL_111:
              v96 = a1;
            }

            else
            {
LABEL_177:
              v96 = a1;
              v95 = 2;
            }

            LOWORD(v19) = sub_10001ECC0(v96, v95);
            goto LABEL_278;
          case 0x217:
          case 0x218:
          case 0x219:
          case 0x21A:
          case 0x21F:
          case 0x220:
          case 0x221:
          case 0x222:
          case 0x223:
          case 0x224:
          case 0x225:
          case 0x226:
          case 0x228:
          case 0x229:
          case 0x22A:
          case 0x22B:
          case 0x22C:
          case 0x22D:
          case 0x22E:
          case 0x22F:
          case 0x230:
          case 0x231:
          case 0x232:
          case 0x233:
          case 0x234:
          case 0x23A:
          case 0x23C:
          case 0x23D:
          case 0x23E:
          case 0x23F:
          case 0x240:
          case 0x243:
          case 0x248:
          case 0x249:
          case 0x24A:
          case 0x24E:
          case 0x24F:
          case 0x250:
          case 0x254:
          case 0x255:
          case 0x256:
          case 0x25F:
          case 0x260:
          case 0x261:
          case 0x263:
          case 0x265:
            goto LABEL_80;
          case 0x21B:
          case 0x21C:
          case 0x21D:
          case 0x21E:
            goto LABEL_20;
          case 0x227:
            v394 = v3;
            v393 = v3;
            v392 = v3;
            v391 = v3;
            v390 = v3;
            v389 = v3;
            v388 = v3;
            v387 = v3;
            v386 = v3;
            v385 = v3;
            v384 = v3;
            v383 = v3;
            v382 = v3;
            v381 = v3;
            v380 = v3;
            v379 = v3;
            v378 = v3;
            v377 = v3;
            v376 = v3;
            v375 = v3;
            v374 = v3;
            v373 = v3;
            v372 = v3;
            v371 = v3;
            v370 = v3;
            v369 = v3;
            v368 = v3;
            v367 = v3;
            v366 = v3;
            v365 = v3;
            v364 = v3;
            *v363 = v3;
            v362 = v3;
            v361 = v3;
            v360 = v3;
            v359 = v3;
            v358 = v3;
            v357 = v3;
            v356 = v3;
            v355 = v3;
            v354 = v3;
            v353 = v3;
            v352 = v3;
            v351 = v3;
            v350 = v3;
            v349 = v3;
            v348 = v3;
            v347 = v3;
            v346 = v3;
            v345 = v3;
            v344 = v3;
            v343 = v3;
            v342 = v3;
            v341 = v3;
            v340 = v3;
            v339 = v3;
            v338 = v3;
            v337 = v3;
            v336 = v3;
            v335 = v3;
            v334 = v3;
            v333 = v3;
            v332 = v3;
            v331 = v3;
            v330 = v3;
            v329 = v3;
            v328 = v3;
            v327 = v3;
            v326 = v3;
            v325 = v3;
            v324 = v3;
            v322 = v3;
            v323 = v3;
            v320 = v3;
            v321 = v3;
            v318 = v3;
            v319 = v3;
            v316 = v3;
            v317 = v3;
            v314 = v3;
            v315 = v3;
            v312 = v3;
            v313 = v3;
            v310 = v3;
            v311 = v3;
            v308 = v3;
            v309 = v3;
            v306 = v3;
            v307 = v3;
            v304 = v3;
            v305 = v3;
            v302 = v3;
            v303 = v3;
            v300 = v3;
            v301 = v3;
            v299 = v3;
            LODWORD(__dst) = 0;
            LOWORD(v262[0]) = 0;
            sub_100020B5C();
            sub_10001F16C(*(v1 + 40), (v1 + 44), v80, &v299);
            v18 = sub_1000127A0(*(a1 + 792), &v299, 0, &v331, v363, v262, &__dst);
            if (v18)
            {
              goto LABEL_313;
            }

            v81 = *(v1 + 16);
            v82 = *(v1 + 24);
            if (LOWORD(v363[0]) == 1)
            {
              if (WORD4(v366) == v82)
              {
                WORD4(v366) = *(v1 + 16);
              }

              else
              {
                v218 = *(v1 + 32);
                if (v81 >= v82)
                {
                  v219 = WORD4(v366) | v218;
                }

                else
                {
                  v219 = WORD4(v366) & ~v218;
                }

                WORD4(v366) = v219;
              }
            }

            else if (v82 == HIWORD(v364))
            {
              HIWORD(v364) = *(v1 + 16);
            }

            else
            {
              v220 = *(v1 + 32);
              if (v81 >= v82)
              {
                v221 = HIWORD(v364) | v220;
              }

              else
              {
                v221 = HIWORD(v364) & ~v220;
              }

              HIWORD(v364) = v221;
            }

            v131 = *(a1 + 792);
            v135 = __dst;
            v132 = LOWORD(v262[0]);
            v133 = &v331;
            goto LABEL_311;
          case 0x235:
            v101 = *(a1 + 776);
            v364 = v3;
            *v363 = v3;
            v102 = sub_10001F7EC(v363);
            if (v102)
            {
              goto LABEL_120;
            }

            v150 = *v363;
            *(*v363 + 28) = *(v1 + 44);
            *(v150 + 124) = *(v1 + 46);
            *(v150 + 126) = *(v1 + 48);
            sub_100004D50(v101, v363, 1u);
            LOWORD(v19) = v151;
            *v363 = 0;
            if (v151)
            {
              goto LABEL_326;
            }

            v102 = sub_10001F888(v363);
            if (v102)
            {
LABEL_120:
              LOWORD(v19) = v102;
              if (!*v363)
              {
                goto LABEL_326;
              }

              v103 = 0;
            }

            else
            {
              v152 = *v363;
              *(*v363 + 28) = *(v1 + 44);
              *(v152 + 124) = *(v1 + 46);
              *(v152 + 126) = *(v1 + 48);
              v103 = 1;
            }

            v104 = v101;
            goto LABEL_123;
          case 0x236:
            v83 = *(a1 + 776);
            v364 = v3;
            *v363 = v3;
            v84 = sub_10001F7EC(v363);
            if (v84)
            {
              goto LABEL_107;
            }

            *(*v363 + 150) = *(*v363 + 136) + *(*v363 + 134);
            sub_100004D50(v83, v363, 1u);
            LOWORD(v19) = v136;
            *v363 = 0;
            if (v136)
            {
              goto LABEL_326;
            }

            v84 = sub_10001F888(v363);
            if (v84)
            {
LABEL_107:
              LOWORD(v19) = v84;
              if (*v363)
              {
                sub_100004D50(v83, v363, 0);
              }

              goto LABEL_326;
            }

            *(*v363 + 150) = *(*v363 + 136) + *(*v363 + 134);
            v104 = v83;
            v103 = 1;
LABEL_123:
            sub_100004D50(v104, v363, v103);
            goto LABEL_316;
          case 0x237:
          case 0x266:
            sub_100020B5C();
            if (!v41)
            {
              goto LABEL_325;
            }

            v394 = 0u;
            v393 = 0u;
            v392 = 0u;
            v391 = 0u;
            v390 = 0u;
            v389 = 0u;
            v388 = 0u;
            v387 = 0u;
            v386 = 0u;
            v385 = 0u;
            v384 = 0u;
            v383 = 0u;
            v382 = 0u;
            v381 = 0u;
            v380 = 0u;
            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = 0u;
            v375 = 0u;
            v374 = 0u;
            v373 = 0u;
            v372 = 0u;
            v371 = 0u;
            v370 = 0u;
            v369 = 0u;
            v368 = 0u;
            v367 = 0u;
            v366 = 0u;
            v365 = 0u;
            v364 = 0u;
            *v363 = 0u;
            v362 = 0u;
            v361 = 0u;
            v360 = 0u;
            v359 = 0u;
            v358 = 0u;
            v357 = 0u;
            v356 = 0u;
            v355 = 0u;
            v354 = 0u;
            v353 = 0u;
            v352 = 0u;
            v351 = 0u;
            v350 = 0u;
            v349 = 0u;
            v348 = 0u;
            v347 = 0u;
            v346 = 0u;
            v345 = 0u;
            v344 = 0u;
            v343 = 0u;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v333 = 0u;
            v332 = 0u;
            v331 = 0u;
            LOWORD(__dst) = 0;
            LODWORD(v299) = 0;
            v42 = sub_10000B770(a1, *(v1 + 40), v41, &v331, v363, &__dst);
            if (v42)
            {
              LOWORD(v19) = v42;
              v3 = 0uLL;
              if (v42 == 32)
              {
                LOWORD(v19) = 0;
                *(a1 + 957) = 1;
              }

              goto LABEL_327;
            }

            v3 = 0uLL;
            if (LOWORD(v363[0]) - 3 >= 0xFFFFFFFE && HIDWORD(v365) != *(v1 + 16))
            {
              HIDWORD(v365) = *(v1 + 16);
              v131 = *(a1 + 792);
              v132 = __dst;
              v133 = &v331;
              v134 = &v299;
              v135 = 0;
              goto LABEL_312;
            }

            goto LABEL_338;
          case 0x238:
            sub_100020B5C();
            if (!v76)
            {
              goto LABEL_325;
            }

            v77 = *(v1 + 44);
            if (!*(v1 + 44))
            {
              LOWORD(v19) = -1;
              goto LABEL_326;
            }

            v330 = 0u;
            v329 = 0u;
            v328 = 0u;
            v327 = 0u;
            v326 = 0u;
            v325 = 0u;
            v324 = 0u;
            v322 = 0u;
            v323 = 0u;
            v320 = 0u;
            v321 = 0u;
            v318 = 0u;
            v319 = 0u;
            v316 = 0u;
            v317 = 0u;
            v314 = 0u;
            v315 = 0u;
            v312 = 0u;
            v313 = 0u;
            v310 = 0u;
            v311 = 0u;
            v308 = 0u;
            v309 = 0u;
            v306 = 0u;
            v307 = 0u;
            v304 = 0u;
            v305 = 0u;
            v302 = 0u;
            v303 = 0u;
            v300 = 0u;
            v301 = 0u;
            v299 = 0u;
            *&__dst = 0;
            v331 = 0u;
            v332 = 0u;
            v333 = 0u;
            v334 = 0u;
            v335 = 0u;
            v336 = 0u;
            v337 = 0u;
            v338 = 0u;
            v339 = 0u;
            v340 = 0u;
            v341 = 0u;
            v342 = 0u;
            v343 = 0u;
            v344 = 0u;
            v345 = 0u;
            v346 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v394 = 0u;
            v393 = 0u;
            v392 = 0u;
            v391 = 0u;
            v390 = 0u;
            v389 = 0u;
            v388 = 0u;
            v387 = 0u;
            v386 = 0u;
            v385 = 0u;
            v384 = 0u;
            v383 = 0u;
            v382 = 0u;
            v381 = 0u;
            v380 = 0u;
            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = 0u;
            v375 = 0u;
            v374 = 0u;
            v373 = 0u;
            v372 = 0u;
            v371 = 0u;
            v370 = 0u;
            v369 = 0u;
            v368 = 0u;
            v367 = 0u;
            v366 = 0u;
            v365 = 0u;
            v364 = 0u;
            *v363 = 0u;
            LOWORD(v298) = 0;
            LODWORD(v262[0]) = 0;
            sub_10001EBC8((v1 + 45), v77, &v299 + 2, &__dst, 510);
            LOWORD(v299) = __dst >> 1;
            sub_10001F16C(*(v1 + 40), &v299, 1, &v331);
            v78 = sub_1000127A0(*(a1 + 792), &v331, 0, 0, v363, &v298, v262);
            if (v78)
            {
              if (v78 == 32)
              {
                LOWORD(v19) = 0;
              }

              else
              {
                LOWORD(v19) = v78;
              }

              goto LABEL_326;
            }

            v195 = sub_1000134A0(*(a1 + 776), *(v1 + 40), &v299, *(v1 + 36), 0);
            LOWORD(v19) = v195;
            v3 = 0uLL;
            if (v195)
            {
              goto LABEL_327;
            }

            *(a1 + 18) |= 0xA000u;
            if (LOWORD(v363[0]) == 1 || LOWORD(v363[0]) == 2)
            {
              v196 = v363[2];
            }

            else
            {
              v196 = 0;
            }

            v105 = sub_10001D0E8(a1, v196);
            goto LABEL_316;
          case 0x239:
            sub_100020B5C();
            if (!v97)
            {
              goto LABEL_325;
            }

            v362 = 0u;
            v361 = 0u;
            v360 = 0u;
            v359 = 0u;
            v358 = 0u;
            v357 = 0u;
            v356 = 0u;
            v355 = 0u;
            v354 = 0u;
            v353 = 0u;
            v352 = 0u;
            v351 = 0u;
            v350 = 0u;
            v349 = 0u;
            v348 = 0u;
            v347 = 0u;
            v346 = 0u;
            v345 = 0u;
            v344 = 0u;
            v343 = 0u;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v333 = 0u;
            v332 = 0u;
            v331 = 0u;
            LOWORD(v263) = 0;
            v298 = 0;
            v63 = *(a1 + 792);
            bzero(v363, 0x220uLL);
            v98 = *(v1 + 40);
            v363[1] = *(v1 + 36);
            sub_10001F16C(v98, (v1 + 44), 1, &v364 + 4);
            *&v262[0] = &v331;
            *(&v262[0] + 1) = 0x100000208;
            v65 = sub_1000052E0(v63, v363, 0xFFFFFFFF, v262, &v263, v363);
            if (v65)
            {
              goto LABEL_114;
            }

            if (v331 - 3 < 0xFFFFFFFE)
            {
              goto LABEL_325;
            }

            sub_10001EAF0(v1 + 46, 2 * *(v1 + 44), &v299, &v298, 0x100uLL);
            *(&v299 + v298) = 0;
            if (*(v1 + 8) != 569 || WORD5(v333) != *(v1 + 24))
            {
              goto LABEL_325;
            }

            if (sub_10002D444() >= 3)
            {
              v191 = *(v1 + 16);
              v190 = *(v1 + 24);
              __dst = xmmword_100043460;
              v265 = *&qword_100043470;
              v266 = xmmword_100043480;
              v267 = *&off_100043490;
              sub_10002D0E8(&__dst, 2, "\t%s: fixing mode from %07o to %07o\n", v185, v186, v187, v188, v189, &v299);
            }

            WORD5(v333) = *(v1 + 16);
            v192 = v263;
            v193 = v262;
            goto LABEL_324;
          case 0x23B:
            sub_100020B5C();
            v107 = v106;
            v108 = (v1 + 44);
            if (v106)
            {
              v109 = &v108[*v108 + 1];
            }

            else
            {
              v109 = (v108 + *v108 + 1);
            }

            v153 = *(a1 + 792);
            LOWORD(v298) = 0;
            LODWORD(v262[0]) = 0;
            *v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
            v378 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
            v388 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v362 = 0u;
            v361 = 0u;
            v360 = 0u;
            v359 = 0u;
            v358 = 0u;
            v357 = 0u;
            v356 = 0u;
            v355 = 0u;
            v354 = 0u;
            v353 = 0u;
            v352 = 0u;
            v351 = 0u;
            v350 = 0u;
            v349 = 0u;
            v348 = 0u;
            v347 = 0u;
            v346 = 0u;
            v345 = 0u;
            v344 = 0u;
            v343 = 0u;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v333 = 0u;
            v332 = 0u;
            v331 = 0u;
            v330 = 0u;
            v329 = 0u;
            v328 = 0u;
            v327 = 0u;
            v326 = 0u;
            v325 = 0u;
            v324 = 0u;
            v322 = 0u;
            v323 = 0u;
            v320 = 0u;
            v321 = 0u;
            v318 = 0u;
            v319 = 0u;
            v316 = 0u;
            v317 = 0u;
            v314 = 0u;
            v315 = 0u;
            v312 = 0u;
            v313 = 0u;
            v310 = 0u;
            v311 = 0u;
            v308 = 0u;
            v309 = 0u;
            v306 = 0u;
            v307 = 0u;
            v304 = 0u;
            v305 = 0u;
            v302 = 0u;
            v303 = 0u;
            v300 = 0u;
            v301 = 0u;
            v299 = 0u;
            sub_10001F16C(*(v1 + 40), v109, v106, &v299);
            if (!sub_1000127A0(v153, &v299, 0, 0, v363, &v298, 0))
            {
              if (sub_10002D444() >= 3)
              {
                __dst = xmmword_100043460;
                v265 = *&qword_100043470;
                v266 = xmmword_100043480;
                v267 = *&off_100043490;
                sub_10002D0E8(&__dst, 2, "\treplacement name already exists \n", v158, v159, v160, v161, v162, v259);
                __dst = xmmword_100043460;
                v265 = *&qword_100043470;
                v266 = xmmword_100043480;
                v267 = *&off_100043490;
                sub_10002D0E8(&__dst, 2, "\tduplicate name is 0x", v163, v164, v165, v166, v167, v260);
                sub_100021758(*v109, v109 + 2, 1, v168, v169, v170, v171, v172);
              }

              goto LABEL_199;
            }

            sub_10001F16C(*(v1 + 40), (v1 + 44), v107, &v331);
            if (sub_1000127A0(v153, &v331, 0, 0, v363, &v298, v262) || sub_100012D4C(v153, &v331) || sub_100012C04(v153, &v299, v363, v298, v262))
            {
              goto LABEL_199;
            }

            v155 = LOWORD(v363[0]) == 256 || LOWORD(v363[0]) == 1;
            v156 = &v363[2];
            if (LOWORD(v363[0]) - 1 < 2)
            {
              goto LABEL_351;
            }

            if (LOWORD(v363[0]) == 512)
            {
              v156 = &v364 + 1;
            }

            else
            {
              v156 = (&v363[1] + 2);
              if (LOWORD(v363[0]) != 256)
              {
                v157 = 0;
                goto LABEL_352;
              }
            }

LABEL_351:
            v157 = *v156;
LABEL_352:
            sub_10001F16C(v157, 0, v107, &v331);
            if (!sub_1000127A0(v153, &v331, 0, 0, v363, &v298, v262) && !sub_100012D4C(v153, &v331))
            {
              LOWORD(v298) = sub_10001D288(&v299, v363, v107, v155);
              if (!sub_100012C04(v153, &v331, v363, v298, v262))
              {
                goto LABEL_201;
              }
            }

LABEL_199:
            *(a1 + 956) = 1;
            if (sub_10002D444() >= 3)
            {
              v178 = *(v1 + 8);
              __dst = xmmword_100043460;
              v265 = *&qword_100043470;
              v266 = xmmword_100043480;
              v267 = *&off_100043490;
              sub_10002D0E8(&__dst, 2, "\t%s - repair failed for type 0x%02X %d \n", v173, v174, v175, v176, v177, "FixIllegalNames");
            }

LABEL_201:
            LOWORD(v19) = 0;
            v3 = 0uLL;
            goto LABEL_332;
          case 0x241:
          case 0x242:
            *&v336 = 0;
            v335 = v3;
            v334 = v3;
            v333 = v3;
            v332 = v3;
            v331 = v3;
            LOWORD(v262[0]) = 0;
            bzero(v363, 0x220uLL);
            sub_10001D334(*(v1 + 40), (v1 + 45), *(v1 + 44), &v364 + 4);
            *&__dst = &v331;
            *(&__dst + 1) = 0x100000058;
            v35 = sub_1000052E0(*(a1 + 808), v363, 0xFFFFFFFF, &__dst, v262, v363);
            if (v35)
            {
              LOWORD(v19) = v35;
              v299 = xmmword_100043460;
              v300 = *&qword_100043470;
              v301 = xmmword_100043480;
              v302 = *&off_100043490;
              sub_10002D128(&v299, 18, "%s: Cannot find attribute record (err = %d)\n", v36, v37, v38, v39, v40, "FixAttrSize");
              goto LABEL_326;
            }

            if (v331 != 32)
            {
              v299 = xmmword_100043460;
              v300 = *&qword_100043470;
              v301 = xmmword_100043480;
              v302 = *&off_100043490;
              sub_10002D128(&v299, 18, "%s: Record found is not attribute fork data\n", v36, v37, v38, v39, v40, "FixAttrSize");
              LOWORD(v19) = 32;
              goto LABEL_326;
            }

            v111 = *(v1 + 8);
            if (v111 == 578)
            {
              v3 = 0uLL;
              if (*(v1 + 24) != *(&v331 + 1))
              {
                goto LABEL_338;
              }

              v113 = *(v1 + 16);
LABEL_253:
              *(&v331 + 1) = v113;
              goto LABEL_254;
            }

            v3 = 0uLL;
            if (v111 != 577 || DWORD1(v332) != *(v1 + 24))
            {
              goto LABEL_338;
            }

            v112 = *(v1 + 16);
            DWORD1(v332) = v112;
            v113 = v112 * *(*(a1 + 776) + 40);
            if (*(&v331 + 1) > v113)
            {
              goto LABEL_253;
            }

LABEL_254:
            v212 = sub_100005D70(*(a1 + 808), v363, &__dst, LOWORD(v262[0]));
            if (!v212)
            {
              goto LABEL_325;
            }

            LOWORD(v19) = v212;
            v299 = xmmword_100043460;
            v300 = *&qword_100043470;
            v301 = xmmword_100043480;
            v302 = *&off_100043490;
            sub_10002D128(&v299, 18, "%s: Cannot replace attribute record (err=%d)\n", v213, v214, v215, v216, v217, "FixAttrSize");
            goto LABEL_326;
          case 0x244:
            v79 = sub_100016674(a1, v1);
            goto LABEL_138;
          case 0x245:
            v79 = sub_1000169F4(a1, v1);
            goto LABEL_138;
          case 0x246:
            v362 = v3;
            v361 = v3;
            v360 = v3;
            v359 = v3;
            v358 = v3;
            v357 = v3;
            v356 = v3;
            v355 = v3;
            v354 = v3;
            v353 = v3;
            v352 = v3;
            v351 = v3;
            v350 = v3;
            v349 = v3;
            v348 = v3;
            v347 = v3;
            v346 = v3;
            v345 = v3;
            v344 = v3;
            v343 = v3;
            v342 = v3;
            v341 = v3;
            v340 = v3;
            v339 = v3;
            v338 = v3;
            v337 = v3;
            v336 = v3;
            v335 = v3;
            v334 = v3;
            v333 = v3;
            v332 = v3;
            v331 = v3;
            v394 = v3;
            v393 = v3;
            v392 = v3;
            v391 = v3;
            v390 = v3;
            v389 = v3;
            v388 = v3;
            v387 = v3;
            v386 = v3;
            v385 = v3;
            v384 = v3;
            v383 = v3;
            v382 = v3;
            v381 = v3;
            v380 = v3;
            v379 = v3;
            v378 = v3;
            v377 = v3;
            v376 = v3;
            v375 = v3;
            v374 = v3;
            v373 = v3;
            v372 = v3;
            v371 = v3;
            v370 = v3;
            v369 = v3;
            v368 = v3;
            v367 = v3;
            v366 = v3;
            v365 = v3;
            v364 = v3;
            *v363 = v3;
            LOWORD(__dst) = 0;
            LODWORD(v299) = 0;
            v6 = sub_10000B770(a1, *(v1 + 40), 1, &v331, v363, &__dst);
            if (v6)
            {
              goto LABEL_104;
            }

            if (LOWORD(v363[0]) != 1)
            {
              goto LABEL_227;
            }

            BYTE9(v365) |= 2u;
            WORD5(v365) |= 0x200u;
            goto LABEL_262;
          case 0x247:
          case 0x24D:
          case 0x253:
          case 0x259:
          case 0x25A:
            v362 = v3;
            v361 = v3;
            v360 = v3;
            v359 = v3;
            v358 = v3;
            v357 = v3;
            v356 = v3;
            v355 = v3;
            v354 = v3;
            v353 = v3;
            v352 = v3;
            v351 = v3;
            v350 = v3;
            v349 = v3;
            v348 = v3;
            v347 = v3;
            v346 = v3;
            v345 = v3;
            v344 = v3;
            v343 = v3;
            v342 = v3;
            v341 = v3;
            v340 = v3;
            v339 = v3;
            v338 = v3;
            v337 = v3;
            v336 = v3;
            v335 = v3;
            v334 = v3;
            v333 = v3;
            v332 = v3;
            v331 = v3;
            v394 = v3;
            v393 = v3;
            v392 = v3;
            v391 = v3;
            v390 = v3;
            v389 = v3;
            v388 = v3;
            v387 = v3;
            v386 = v3;
            v385 = v3;
            v384 = v3;
            v383 = v3;
            v382 = v3;
            v381 = v3;
            v380 = v3;
            v379 = v3;
            v378 = v3;
            v377 = v3;
            v376 = v3;
            v375 = v3;
            v374 = v3;
            v373 = v3;
            v372 = v3;
            v371 = v3;
            v370 = v3;
            v369 = v3;
            v368 = v3;
            v367 = v3;
            v366 = v3;
            v365 = v3;
            v364 = v3;
            *v363 = v3;
            LOWORD(v262[0]) = 0;
            LODWORD(__dst) = 0;
            v6 = sub_10000B770(a1, *(v1 + 40), 1, &v331, v363, v262);
            if (v6)
            {
              goto LABEL_104;
            }

            v7 = *(v1 + 8);
            v8 = *(v1 + 24);
            if (v7 == 589)
            {
              if (v8 != HIWORD(v363[0]) && sub_10002D444() >= 3)
              {
                v120 = *(v1 + 16);
                v119 = *(v1 + 24);
                v299 = xmmword_100043460;
                v300 = *&qword_100043470;
                v301 = xmmword_100043480;
                v302 = *&off_100043490;
                sub_10002D0E8(&v299, 6, "\tFixBadFlags (parent folder):  old = %#x, incorrect = %#x, correct = %#x\n", v114, v115, v116, v117, v118, HIWORD(v363[0]));
              }
            }

            else if (v7 == 583)
            {
              if (v8 != HIWORD(v363[0]) && sub_10002D444() >= 3)
              {
                v15 = *(v1 + 16);
                v14 = *(v1 + 24);
                v299 = xmmword_100043460;
                v300 = *&qword_100043470;
                v301 = xmmword_100043480;
                v302 = *&off_100043490;
                sub_10002D0E8(&v299, 6, "\tFixBadFlags (folder):  old = %#x, incorrect = %#x, correct = %#x\n", v9, v10, v11, v12, v13, HIWORD(v363[0]));
              }
            }

            else if (v8 != HIWORD(v363[0]) && sub_10002D444() >= 3)
            {
              v127 = *(v1 + 16);
              v126 = *(v1 + 24);
              v299 = xmmword_100043460;
              v300 = *&qword_100043470;
              v301 = xmmword_100043480;
              v302 = *&off_100043490;
              sub_10002D0E8(&v299, 6, "\tFixBadFlags (file):  old = %#x, incorrect = %#x, correct = %#x\n", v121, v122, v123, v124, v125, HIWORD(v363[0]));
            }

            HIWORD(v363[0]) = *(v1 + 16);
            v128 = *(a1 + 792);
            v129 = LOWORD(v262[0]);
            p_dst = &__dst;
            goto LABEL_263;
          case 0x24B:
            v362 = v3;
            v361 = v3;
            v360 = v3;
            v359 = v3;
            v358 = v3;
            v357 = v3;
            v356 = v3;
            v355 = v3;
            v354 = v3;
            v353 = v3;
            v352 = v3;
            v351 = v3;
            v350 = v3;
            v349 = v3;
            v348 = v3;
            v347 = v3;
            v346 = v3;
            v345 = v3;
            v344 = v3;
            v343 = v3;
            v342 = v3;
            v341 = v3;
            v340 = v3;
            v339 = v3;
            v338 = v3;
            v337 = v3;
            v336 = v3;
            v335 = v3;
            v334 = v3;
            v333 = v3;
            v332 = v3;
            v331 = v3;
            v394 = v3;
            v393 = v3;
            v392 = v3;
            v391 = v3;
            v390 = v3;
            v389 = v3;
            v388 = v3;
            v387 = v3;
            v386 = v3;
            v385 = v3;
            v384 = v3;
            v383 = v3;
            v382 = v3;
            v381 = v3;
            v380 = v3;
            v379 = v3;
            v378 = v3;
            v377 = v3;
            v376 = v3;
            v375 = v3;
            v374 = v3;
            v373 = v3;
            v372 = v3;
            v371 = v3;
            v370 = v3;
            v369 = v3;
            v368 = v3;
            v367 = v3;
            v366 = v3;
            v365 = v3;
            v364 = v3;
            *v363 = v3;
            LOWORD(__dst) = 0;
            LODWORD(v299) = 0;
            v6 = sub_10000B770(a1, *(v1 + 40), 1, &v331, v363, &__dst);
            if (v6)
            {
              goto LABEL_104;
            }

            BYTE9(v365) = *(v1 + 16);
            goto LABEL_262;
          case 0x24C:
          case 0x257:
            v394 = v3;
            v393 = v3;
            v392 = v3;
            v391 = v3;
            v390 = v3;
            v389 = v3;
            v388 = v3;
            v387 = v3;
            v386 = v3;
            v385 = v3;
            v384 = v3;
            v383 = v3;
            v382 = v3;
            v381 = v3;
            v380 = v3;
            v379 = v3;
            v378 = v3;
            v377 = v3;
            v376 = v3;
            v375 = v3;
            v374 = v3;
            v373 = v3;
            v372 = v3;
            v371 = v3;
            v370 = v3;
            v369 = v3;
            v368 = v3;
            v367 = v3;
            v366 = v3;
            v365 = v3;
            v364 = v3;
            *v363 = v3;
            v362 = v3;
            v361 = v3;
            v360 = v3;
            v359 = v3;
            v358 = v3;
            v357 = v3;
            v356 = v3;
            v355 = v3;
            v354 = v3;
            v353 = v3;
            v352 = v3;
            v351 = v3;
            v350 = v3;
            v349 = v3;
            v348 = v3;
            v347 = v3;
            v346 = v3;
            v345 = v3;
            v344 = v3;
            v343 = v3;
            v342 = v3;
            v341 = v3;
            v340 = v3;
            v339 = v3;
            v338 = v3;
            v337 = v3;
            v336 = v3;
            v335 = v3;
            v334 = v3;
            v333 = v3;
            v332 = v3;
            v331 = v3;
            LOWORD(__dst) = 0;
            LODWORD(v299) = 0;
            v6 = sub_10000B770(a1, *(v1 + 40), 1, &v331, v363, &__dst);
            if (!v6)
            {
              if (LOWORD(v363[0]) != 2)
              {
                goto LABEL_227;
              }

              v43 = *(v1 + 8);
              if (v43 == 599)
              {
                *&v366 = 0x6866732B686C6E6BLL;
              }

              else
              {
                if (v43 != 588)
                {
                  goto LABEL_227;
                }

                *&v366 = 0x4D41435366647270;
                WORD4(v366) |= 0x8000u;
              }

LABEL_262:
              v128 = *(a1 + 792);
              v129 = __dst;
              p_dst = &v299;
LABEL_263:
              v105 = sub_100012E70(v128, &v331, 0, v363, v129, p_dst);
              goto LABEL_316;
            }

LABEL_104:
            LOWORD(v19) = v6;
            if (v6 != 32)
            {
              goto LABEL_326;
            }

            goto LABEL_105;
          case 0x251:
            LODWORD(__dst) = 0;
            sub_100020B5C();
            if (!v73)
            {
              goto LABEL_325;
            }

            v394 = 0u;
            v393 = 0u;
            v392 = 0u;
            v391 = 0u;
            v390 = 0u;
            v389 = 0u;
            v388 = 0u;
            v387 = 0u;
            v386 = 0u;
            v385 = 0u;
            v384 = 0u;
            v383 = 0u;
            v382 = 0u;
            v381 = 0u;
            v380 = 0u;
            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = 0u;
            v375 = 0u;
            v374 = 0u;
            v373 = 0u;
            v372 = 0u;
            v371 = 0u;
            v370 = 0u;
            v369 = 0u;
            v368 = 0u;
            v367 = 0u;
            v366 = 0u;
            v365 = 0u;
            v364 = 0u;
            *v363 = 0u;
            v362 = 0u;
            v361 = 0u;
            v360 = 0u;
            v359 = 0u;
            v358 = 0u;
            v357 = 0u;
            v356 = 0u;
            v355 = 0u;
            v354 = 0u;
            v353 = 0u;
            v352 = 0u;
            v351 = 0u;
            v350 = 0u;
            v349 = 0u;
            v348 = 0u;
            v347 = 0u;
            v346 = 0u;
            v345 = 0u;
            v344 = 0u;
            v343 = 0u;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v333 = 0u;
            v332 = 0u;
            v331 = 0u;
            v330 = 0u;
            v329 = 0u;
            v328 = 0u;
            v327 = 0u;
            v326 = 0u;
            v325 = 0u;
            v324 = 0u;
            v322 = 0u;
            v323 = 0u;
            v320 = 0u;
            v321 = 0u;
            v318 = 0u;
            v319 = 0u;
            v316 = 0u;
            v317 = 0u;
            v314 = 0u;
            v315 = 0u;
            v312 = 0u;
            v313 = 0u;
            v310 = 0u;
            v311 = 0u;
            v308 = 0u;
            v309 = 0u;
            v306 = 0u;
            v307 = 0u;
            v304 = 0u;
            v305 = 0u;
            v302 = 0u;
            v303 = 0u;
            v300 = 0u;
            v301 = 0u;
            v299 = 0u;
            LOWORD(v262[0]) = 0;
            v74 = *(a1 + 792);
            sub_10001F16C(*(v1 + 40), 0, 1, &v331);
            v75 = sub_1000127A0(v74, &v331, 0, &v299, v363, v262, &__dst);
            if (v75)
            {
              goto LABEL_117;
            }

            if (LOWORD(v363[0]) != 4)
            {
              goto LABEL_227;
            }

            sub_10001F16C(v363[1], &v363[2], 1, &v331);
            if (sub_1000127A0(v74, &v331, 0, &v299, v363, v262, &__dst) || LOWORD(v363[0]) != 2 || v365 != *(v1 + 24))
            {
              goto LABEL_227;
            }

            LODWORD(v365) = *(v1 + 16);
            goto LABEL_220;
          case 0x252:
            LODWORD(__dst) = 0;
            sub_100020B5C();
            if (!v100)
            {
              goto LABEL_325;
            }

            v394 = 0u;
            v393 = 0u;
            v392 = 0u;
            v391 = 0u;
            v390 = 0u;
            v389 = 0u;
            v388 = 0u;
            v387 = 0u;
            v386 = 0u;
            v385 = 0u;
            v384 = 0u;
            v383 = 0u;
            v382 = 0u;
            v381 = 0u;
            v380 = 0u;
            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = 0u;
            v375 = 0u;
            v374 = 0u;
            v373 = 0u;
            v372 = 0u;
            v371 = 0u;
            v370 = 0u;
            v369 = 0u;
            v368 = 0u;
            v367 = 0u;
            v366 = 0u;
            v365 = 0u;
            v364 = 0u;
            *v363 = 0u;
            v362 = 0u;
            v361 = 0u;
            v360 = 0u;
            v359 = 0u;
            v358 = 0u;
            v357 = 0u;
            v356 = 0u;
            v355 = 0u;
            v354 = 0u;
            v353 = 0u;
            v352 = 0u;
            v351 = 0u;
            v350 = 0u;
            v349 = 0u;
            v348 = 0u;
            v347 = 0u;
            v346 = 0u;
            v345 = 0u;
            v344 = 0u;
            v343 = 0u;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v333 = 0u;
            v332 = 0u;
            v331 = 0u;
            v330 = 0u;
            v329 = 0u;
            v328 = 0u;
            v327 = 0u;
            v326 = 0u;
            v325 = 0u;
            v324 = 0u;
            v322 = 0u;
            v323 = 0u;
            v320 = 0u;
            v321 = 0u;
            v318 = 0u;
            v319 = 0u;
            v316 = 0u;
            v317 = 0u;
            v314 = 0u;
            v315 = 0u;
            v312 = 0u;
            v313 = 0u;
            v310 = 0u;
            v311 = 0u;
            v308 = 0u;
            v309 = 0u;
            v306 = 0u;
            v307 = 0u;
            v304 = 0u;
            v305 = 0u;
            v302 = 0u;
            v303 = 0u;
            v300 = 0u;
            v301 = 0u;
            v299 = 0u;
            LOWORD(v262[0]) = 0;
            v74 = *(a1 + 792);
            sub_10001F16C(*(v1 + 40), 0, 1, &v331);
            v75 = sub_1000127A0(v74, &v331, 0, &v299, v363, v262, &__dst);
            if (v75)
            {
LABEL_117:
              if (v75 == 32)
              {
LABEL_105:
                LOWORD(v19) = 0;
                *(a1 + 957) = 1;
                goto LABEL_326;
              }

              goto LABEL_227;
            }

            if (LOWORD(v363[0]) != 4)
            {
              goto LABEL_227;
            }

            sub_10001F16C(v363[1], &v363[2], 1, &v331);
            if (sub_1000127A0(v74, &v331, 0, &v299, v363, v262, &__dst) || LOWORD(v363[0]) != 2 || DWORD1(v365) != *(v1 + 24))
            {
              goto LABEL_227;
            }

            DWORD1(v365) = *(v1 + 16);
LABEL_220:
            if (sub_100012E70(v74, &v299, __dst, v363, LOWORD(v262[0]), &__dst))
            {
              goto LABEL_227;
            }

            goto LABEL_325;
          case 0x258:
            v79 = sub_100016130(a1, v1);
            goto LABEL_138;
          case 0x25B:
          case 0x25C:
            v44 = sub_10001E650(a1, *(v1 + 40), 0);
            LOWORD(v19) = v44;
            if (v44 != 32)
            {
              goto LABEL_326;
            }

            goto LABEL_105;
          case 0x25D:
          case 0x25E:
            if (BYTE1(xmmword_100043510) == 1 && byte_10004350E == 0)
            {
              LOWORD(v19) = 1;
              goto LABEL_327;
            }

            v46 = sub_10001DFE4(a1, "lost+found");
            if (!v46)
            {
              LOWORD(v19) = 2;
              goto LABEL_326;
            }

            v47 = v46;
            v48 = *(v1 + 40);
            sub_100020B5C();
            if (v49 != 1)
            {
              sub_100030818();
            }

            v394 = 0u;
            v393 = 0u;
            v392 = 0u;
            v391 = 0u;
            v390 = 0u;
            v389 = 0u;
            v388 = 0u;
            v387 = 0u;
            v386 = 0u;
            v385 = 0u;
            v384 = 0u;
            v383 = 0u;
            v382 = 0u;
            v381 = 0u;
            v380 = 0u;
            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = 0u;
            v375 = 0u;
            v374 = 0u;
            v373 = 0u;
            v372 = 0u;
            v371 = 0u;
            v370 = 0u;
            v369 = 0u;
            v368 = 0u;
            v367 = 0u;
            v366 = 0u;
            v365 = 0u;
            v364 = 0u;
            *v363 = 0u;
            v362 = 0u;
            v361 = 0u;
            v360 = 0u;
            v359 = 0u;
            v358 = 0u;
            v357 = 0u;
            v356 = 0u;
            v355 = 0u;
            v354 = 0u;
            v353 = 0u;
            v352 = 0u;
            v351 = 0u;
            v350 = 0u;
            v349 = 0u;
            v348 = 0u;
            v347 = 0u;
            v346 = 0u;
            v345 = 0u;
            v344 = 0u;
            v343 = 0u;
            v342 = 0u;
            v341 = 0u;
            v340 = 0u;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v333 = 0u;
            v332 = 0u;
            v331 = 0u;
            LODWORD(v299) = 0;
            LOWORD(__dst) = 0;
            v50 = sub_10000B770(a1, v48, 1, &v331, v363, &__dst);
            if (v50)
            {
              goto LABEL_66;
            }

            v50 = sub_10001E650(a1, v48, 1);
            if (v50)
            {
              goto LABEL_66;
            }

            *(&v331 + 2) = v47;
            v57 = LOWORD(v363[0]);
            if (LOWORD(v363[0]) - 1 <= 1)
            {
              HIWORD(v363[0]) &= ~0x20u;
            }

            v50 = sub_100012C04(*(a1 + 792), &v331, v363, __dst, &v299);
            if (v50 || (v57 == 1 ? (v58 = 3) : (v58 = 4), v363[0] = v58, v363[1] = *(&v331 + 2), __memmove_chk(), LOWORD(__dst) = 2 * LOWORD(v363[2]) + 10, sub_10001F16C(v48, 0, 1, &v331), (v50 = sub_100012C04(*(a1 + 792), &v331, v363, __dst, &v299)) != 0))
            {
LABEL_66:
              v19 = v50;
              v59 = &unk_100048000;
            }

            else
            {
              v255 = sub_10000B770(a1, v47, 1, &v331, v363, &__dst);
              v59 = &unk_100048000;
              if (v255)
              {
                v19 = v255;
                if (v255 == 32)
                {
                  v19 = ~(*(a1 + 24) >> 6) & 0x20;
                }
              }

              else
              {
                if (LOWORD(v363[0]) != 1)
                {
                  goto LABEL_366;
                }

                ++v363[1];
                if (v57 == 1 && (v363[0] & 0x100000) != 0)
                {
                  ++DWORD1(v368);
                }

                v256 = sub_100012E70(*(a1 + 792), &v331, 0, v363, __dst, &v299);
                if (!v256)
                {
                  v257 = *(a1 + 776);
                  if (v57 == 1)
                  {
                    ++*(v257 + 36);
                  }

                  else
                  {
                    ++*(v257 + 32);
                  }

                  *(a1 + 18) |= 0x8000u;
                  *(a1 + 24) |= 0x8000u;
LABEL_366:
                  LOWORD(v19) = 0;
                  goto LABEL_69;
                }

                v19 = v256;
              }
            }

            if (v19 == 32)
            {
              LOWORD(v19) = 0;
              *(a1 + 957) = 1;
            }

LABEL_69:
            if ((v59[1492] & 1) == 0)
            {
              v60 = v261[1];
              *v363 = *v261;
              v364 = v60;
              v61 = v261[3];
              v365 = v261[2];
              v366 = v61;
              sub_10002D0A4(v363, 116, v51, v52, v53, v54, v55, v56, "lost+found");
              v59[1492] = 1;
            }

            goto LABEL_326;
          case 0x262:
            v79 = sub_1000163DC(a1, v1);
            goto LABEL_138;
          case 0x264:
            v79 = sub_10001652C(a1, v1);
            goto LABEL_138;
          default:
            if (v5 == 64984)
            {
              LOWORD(v19) = 0;
              *(a1 + 22) |= 0x400u;
              goto LABEL_332;
            }

            if (v5 != 65026)
            {
              goto LABEL_80;
            }

            v23 = *(v1 + 16);
            v25 = *(v1 + 36);
            v24 = *(v1 + 40);
            v26 = *(v1 + 10);
            sub_100020B5C();
            if (v26 == 1)
            {
              sub_100030870();
            }

            v28 = v27;
            LOWORD(v263) = 0;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            *&v262[0] = 0;
            DWORD2(v262[0]) = 0;
            LODWORD(v298) = 0;
            if (v25)
            {
              if (v23)
              {
                sub_100026CB8(v27, v26, v24, v25, v262);
                v29 = sub_1000127A0(*(a1 + 784), v262, 0, v262, &v299, &v263, &v298);
                if (v29)
                {
                  LOWORD(v19) = v29;
                  if (byte_10004350E)
                  {
                    *v363 = xmmword_100043460;
                    v364 = *&qword_100043470;
                    v365 = xmmword_100043480;
                    v366 = *&off_100043490;
                    sub_10002D0E8(v363, 2, "%s: Could not get overflow extents record for fileID %u, fork %u, start block %u\n", v30, v31, v32, v33, v34, "FixBadExtent");
                  }

                  goto LABEL_278;
                }

                v197 = *(a1 + 690);
                if (v23 < v197)
                {
                  v198 = 4;
                  if (v28)
                  {
                    v198 = 8;
                  }

                  v199 = 2;
                  if (v28)
                  {
                    v199 = 3;
                  }

                  v200 = 29;
                  if (!v28)
                  {
                    v200 = 30;
                  }

                  bzero(&v299 + (v23 << 32 >> v200), ((v197 + ~v23) << v199) + v198);
                }

                v201 = sub_100012E70(*(a1 + 784), v262, v298, &v299, v263, &v298);
                if (v201)
                {
                  LOWORD(v19) = v201;
                  if (byte_10004350E)
                  {
                    *v363 = xmmword_100043460;
                    v364 = *&qword_100043470;
                    v365 = xmmword_100043480;
                    v366 = *&off_100043490;
                    sub_10002D0E8(v363, 2, "%s: Could not replace overflow extents record for fileID %u, fork %u, start block %u\n", v202, v203, v204, v205, v206, "FixBadExtent");
                  }

                  goto LABEL_278;
                }

                ++v25;
LABEL_280:
                LODWORD(v23) = 1;
              }

              sub_100026CB8(v28, v26, v24, v25, v262);
              v228 = sub_1000127A0(*(a1 + 784), v262, 0, v262, &v299, &v263, &v298);
              v19 = v228;
              if ((v228 & 0xFFFFFFDF) == 0)
              {
                if (v228 == 32)
                {
                  v19 = sub_100012A1C(*(a1 + 784), 1, v262, &v299, &v263, &v298, v234, v235);
                }

                if (!v19)
                {
                  while (1)
                  {
                    if (v28)
                    {
                      if (v24 != DWORD1(v262[0]) || BYTE2(v262[0]) != v26)
                      {
                        goto LABEL_346;
                      }
                    }

                    else if (v24 != *(v262 + 2) || BYTE1(v262[0]) != v26)
                    {
LABEL_346:
                      LOWORD(v19) = 0;
                      goto LABEL_288;
                    }

                    v19 = sub_100012D4C(*(a1 + 784), v262);
                    *v363 = xmmword_100043460;
                    v364 = *&qword_100043470;
                    v365 = xmmword_100043480;
                    v366 = *&off_100043490;
                    sub_10002D128(v363, 1, "%s: Deleting extent overflow for fileID=%u, forkType=%u, startBlock=%u\n", v239, v240, v241, v242, v243, "FixBadExtent");
                    if (v19)
                    {
                      goto LABEL_289;
                    }

                    LODWORD(v23) = 1;
                    v246 = sub_100012A1C(*(a1 + 784), 1, v262, &v299, &v263, &v298, v244, v245);
                    if (v246)
                    {
                      LOWORD(v19) = v246;
                      break;
                    }
                  }
                }

                if (v19 == 32)
                {
                  LOWORD(v19) = 0;
                }

LABEL_288:
                v236 = *(a1 + 784);
                *(*(v236 + 16) + 132) |= 1u;
                sub_1000060FC(v236, v229, v230, v231, v232, v233, v234, v235);
              }

LABEL_289:
              if (v23 == 1)
              {
                sub_10001D6BC(a1, v24);
              }

              goto LABEL_326;
            }

            v394 = 0uLL;
            v393 = 0uLL;
            v392 = 0uLL;
            v391 = 0uLL;
            v390 = 0uLL;
            v389 = 0uLL;
            v388 = 0uLL;
            v387 = 0uLL;
            v386 = 0uLL;
            v385 = 0uLL;
            v384 = 0uLL;
            v383 = 0uLL;
            v382 = 0uLL;
            v381 = 0uLL;
            v380 = 0uLL;
            v379 = 0uLL;
            v378 = 0uLL;
            v377 = 0uLL;
            v376 = 0uLL;
            v375 = 0uLL;
            v374 = 0uLL;
            v373 = 0uLL;
            v372 = 0uLL;
            v371 = 0uLL;
            v370 = 0uLL;
            v369 = 0uLL;
            v368 = 0uLL;
            v367 = 0uLL;
            v366 = 0uLL;
            v365 = 0uLL;
            v364 = 0uLL;
            *v363 = 0uLL;
            v362 = 0uLL;
            v361 = 0uLL;
            v360 = 0uLL;
            v359 = 0uLL;
            v358 = 0uLL;
            v357 = 0uLL;
            v356 = 0uLL;
            v355 = 0uLL;
            v354 = 0uLL;
            v353 = 0uLL;
            v352 = 0uLL;
            v351 = 0uLL;
            v350 = 0uLL;
            v349 = 0uLL;
            v348 = 0uLL;
            v347 = 0uLL;
            v346 = 0uLL;
            v345 = 0uLL;
            v344 = 0uLL;
            v343 = 0uLL;
            v342 = 0uLL;
            v341 = 0uLL;
            v340 = 0uLL;
            v339 = 0uLL;
            v338 = 0uLL;
            v337 = 0uLL;
            v336 = 0uLL;
            v335 = 0uLL;
            v334 = 0uLL;
            v333 = 0uLL;
            v332 = 0uLL;
            v331 = 0uLL;
            v179 = sub_10001D3B8(a1, v24, v27, &v331, v363, &v263);
            if (v179)
            {
              LOWORD(v19) = v179;
              if (byte_10004350E)
              {
                __dst = xmmword_100043460;
                v265 = *&qword_100043470;
                v266 = xmmword_100043480;
                v267 = *&off_100043490;
                sub_10002D0E8(&__dst, 2, "%s: Could not get catalog record for fileID %u\n", v180, v181, v182, v183, v184, "FixBadExtent");
              }

LABEL_278:
              v3 = 0uLL;
              goto LABEL_327;
            }

            if (LOWORD(v363[0]) != 2 && LOWORD(v363[0]) != 512)
            {
              sub_100030844();
            }

            v207 = *(a1 + 690);
            if (v28)
            {
              if (v23 < v207)
              {
                v208 = 184;
                if (!v26)
                {
                  v208 = 104;
                }

                v209 = 29;
                v210 = 3;
                v211 = 8;
LABEL_274:
                bzero(v363 + v208 + (v23 << 32 >> v209), ((v207 + ~v23) << v210) + v211);
              }
            }

            else if (v23 < v207)
            {
              v208 = 86;
              if (!v26)
              {
                v208 = 74;
              }

              v209 = 30;
              v210 = 2;
              v211 = 4;
              goto LABEL_274;
            }

            v222 = sub_100012E70(*(a1 + 792), &v331, 0, v363, v263, &v298);
            if (!v222)
            {
              v25 = 0;
              goto LABEL_280;
            }

            LOWORD(v19) = v222;
            if (byte_10004350E)
            {
              __dst = xmmword_100043460;
              v265 = *&qword_100043470;
              v266 = xmmword_100043480;
              v267 = *&off_100043490;
              sub_10002D0E8(&__dst, 2, "%s: Could not replace catalog record for fileID %u\n", v223, v224, v225, v226, v227, "FixBadExtent");
            }

            goto LABEL_278;
        }
      }

      if (v5 - 500 < 2)
      {
        sub_100020B5C();
        if (!v62)
        {
          goto LABEL_325;
        }

        v362 = 0u;
        v361 = 0u;
        v360 = 0u;
        v359 = 0u;
        v358 = 0u;
        v357 = 0u;
        v356 = 0u;
        v355 = 0u;
        v354 = 0u;
        v353 = 0u;
        v352 = 0u;
        v351 = 0u;
        v350 = 0u;
        v349 = 0u;
        v348 = 0u;
        v347 = 0u;
        v346 = 0u;
        v345 = 0u;
        v344 = 0u;
        v343 = 0u;
        v342 = 0u;
        v341 = 0u;
        v340 = 0u;
        v339 = 0u;
        v338 = 0u;
        v337 = 0u;
        v336 = 0u;
        v335 = 0u;
        v334 = 0u;
        v333 = 0u;
        v332 = 0u;
        v331 = 0u;
        *&__dst = 0;
        LOWORD(v262[0]) = 0;
        v63 = *(a1 + 792);
        bzero(v363, 0x220uLL);
        v64 = *(v1 + 40);
        v363[1] = *(v1 + 36);
        *(&v364 + 6) = v64;
        sub_10001EBC8((v1 + 45), *(v1 + 44), &v364 + 12, &__dst, 510);
        WORD5(v364) = __dst >> 1;
        WORD2(v364) = __dst + 6;
        *&v299 = &v331;
        *(&v299 + 1) = 0x100000208;
        v65 = sub_1000052E0(v63, v363, 0xFFFFFFFF, &v299, v262, v363);
        if (v65)
        {
          goto LABEL_114;
        }

        if (v331 != 2)
        {
          goto LABEL_325;
        }

        v3 = 0uLL;
        if (*(v1 + 8) == 500)
        {
          v66 = *(v1 + 16) * *(*(a1 + 776) + 40);
          if (*(v1 + 10))
          {
            if (*(v1 + 10) != 0xFFFF || DWORD1(v342) != *(v1 + 24))
            {
              goto LABEL_338;
            }

            DWORD1(v342) = *(v1 + 16);
            if (*(&v341 + 1) <= v66)
            {
              goto LABEL_323;
            }

LABEL_260:
            *(&v341 + 1) = v66;
LABEL_323:
            v192 = LOWORD(v262[0]);
            v193 = &v299;
LABEL_324:
            v65 = sub_100005D70(v63, v363, v193, v192);
            if (!v65)
            {
              goto LABEL_325;
            }

LABEL_114:
            v99 = v65;
LABEL_314:
            v194 = a1;
            goto LABEL_315;
          }

          if (DWORD1(v337) != *(v1 + 24))
          {
            goto LABEL_338;
          }

          DWORD1(v337) = *(v1 + 16);
          if (*(&v336 + 1) <= v66)
          {
            goto LABEL_323;
          }
        }

        else
        {
          if (*(v1 + 10))
          {
            if (*(v1 + 10) != 0xFFFF || *(v1 + 24) != *(&v341 + 1))
            {
LABEL_338:
              LOWORD(v19) = 0;
              goto LABEL_327;
            }

            v66 = *(v1 + 16);
            goto LABEL_260;
          }

          if (*(v1 + 24) != *(&v336 + 1))
          {
            goto LABEL_338;
          }

          v66 = *(v1 + 16);
        }

        *(&v336 + 1) = v66;
        goto LABEL_323;
      }

      if (v5 != 502)
      {
        if (v5 != 505)
        {
LABEL_80:
          if (sub_10002D444() >= 3)
          {
            v72 = *(v1 + 8);
            *v363 = xmmword_100043460;
            v364 = *&qword_100043470;
            v365 = xmmword_100043480;
            v366 = *&off_100043490;
            sub_10002D0E8(v363, 2, "\tUnknown repair order found (type = %d)\n", v67, v68, v69, v70, v71, v72);
          }

          goto LABEL_227;
        }

        v16 = *(v1 + 40);
        v394 = v3;
        v393 = v3;
        v392 = v3;
        v391 = v3;
        v390 = v3;
        v389 = v3;
        v388 = v3;
        v387 = v3;
        v386 = v3;
        v385 = v3;
        v384 = v3;
        v383 = v3;
        v382 = v3;
        v381 = v3;
        v380 = v3;
        v379 = v3;
        v378 = v3;
        v377 = v3;
        v376 = v3;
        v375 = v3;
        v374 = v3;
        v373 = v3;
        v372 = v3;
        v371 = v3;
        v370 = v3;
        v369 = v3;
        v368 = v3;
        v367 = v3;
        v366 = v3;
        v365 = v3;
        v364 = v3;
        *v363 = v3;
        v362 = v3;
        v361 = v3;
        v360 = v3;
        v359 = v3;
        v358 = v3;
        v357 = v3;
        v356 = v3;
        v355 = v3;
        v354 = v3;
        v353 = v3;
        v352 = v3;
        v351 = v3;
        v350 = v3;
        v349 = v3;
        v348 = v3;
        v347 = v3;
        v346 = v3;
        v345 = v3;
        v344 = v3;
        v343 = v3;
        v342 = v3;
        v341 = v3;
        v340 = v3;
        v339 = v3;
        v338 = v3;
        v337 = v3;
        v336 = v3;
        v335 = v3;
        v334 = v3;
        v333 = v3;
        v332 = v3;
        v331 = v3;
        v330 = v3;
        v329 = v3;
        v328 = v3;
        v327 = v3;
        v326 = v3;
        v325 = v3;
        v324 = v3;
        v322 = v3;
        v323 = v3;
        v320 = v3;
        v321 = v3;
        v318 = v3;
        v319 = v3;
        v316 = v3;
        v317 = v3;
        v314 = v3;
        v315 = v3;
        v312 = v3;
        v313 = v3;
        v310 = v3;
        v311 = v3;
        v308 = v3;
        v309 = v3;
        v306 = v3;
        v307 = v3;
        v304 = v3;
        v305 = v3;
        v302 = v3;
        v303 = v3;
        v300 = v3;
        v301 = v3;
        v299 = v3;
        LODWORD(v262[0]) = 0;
        LOWORD(v298) = 0;
        sub_100020B5C();
        sub_10001F16C(v16, 0, v17, &v299);
        v18 = sub_1000127A0(*(a1 + 792), &v299, 0, &v331, v363, &v298, v262);
        if (!v18)
        {
          if (LOWORD(v363[0]) != 4 && LOWORD(v363[0]) != 1024)
          {
            goto LABEL_227;
          }

          v266 = 0u;
          v267 = 0u;
          __dst = 0u;
          v265 = 0u;
          v18 = sub_100012E70(*(a1 + 792), &v299, v262[0], &__dst, v298, v262);
          if (!v18)
          {
            v18 = sub_100012D4C(*(a1 + 792), &v299);
            if (!v18)
            {
              LOWORD(v19) = 0;
              *(a1 + 24) |= 0xC000u;
              goto LABEL_326;
            }
          }
        }

        goto LABEL_313;
      }

LABEL_20:
      v394 = v3;
      v393 = v3;
      v392 = v3;
      v391 = v3;
      v390 = v3;
      v389 = v3;
      v388 = v3;
      v387 = v3;
      v386 = v3;
      v385 = v3;
      v384 = v3;
      v383 = v3;
      v382 = v3;
      v381 = v3;
      v380 = v3;
      v379 = v3;
      v378 = v3;
      v377 = v3;
      v376 = v3;
      v375 = v3;
      v374 = v3;
      v373 = v3;
      v372 = v3;
      v371 = v3;
      v370 = v3;
      v369 = v3;
      v368 = v3;
      v367 = v3;
      v366 = v3;
      v365 = v3;
      v364 = v3;
      *v363 = v3;
      v362 = v3;
      v361 = v3;
      v360 = v3;
      v359 = v3;
      v358 = v3;
      v357 = v3;
      v356 = v3;
      v355 = v3;
      v354 = v3;
      v353 = v3;
      v352 = v3;
      v351 = v3;
      v350 = v3;
      v349 = v3;
      v348 = v3;
      v347 = v3;
      v346 = v3;
      v345 = v3;
      v344 = v3;
      v343 = v3;
      v342 = v3;
      v341 = v3;
      v340 = v3;
      v339 = v3;
      v338 = v3;
      v337 = v3;
      v336 = v3;
      v335 = v3;
      v334 = v3;
      v333 = v3;
      v332 = v3;
      v331 = v3;
      v330 = v3;
      v329 = v3;
      v328 = v3;
      v327 = v3;
      v326 = v3;
      v325 = v3;
      v324 = v3;
      v322 = v3;
      v323 = v3;
      v320 = v3;
      v321 = v3;
      v318 = v3;
      v319 = v3;
      v316 = v3;
      v317 = v3;
      v314 = v3;
      v315 = v3;
      v312 = v3;
      v313 = v3;
      v310 = v3;
      v311 = v3;
      v308 = v3;
      v309 = v3;
      v306 = v3;
      v307 = v3;
      v304 = v3;
      v305 = v3;
      v302 = v3;
      v303 = v3;
      v300 = v3;
      v301 = v3;
      v299 = v3;
      v20 = *(a1 + 776);
      sub_100020B5C();
      LOWORD(v19) = 0;
      v22 = *(v1 + 8);
      if (v22 > 0x21B)
      {
        break;
      }

      if (v22 == 502)
      {
        LODWORD(__dst) = 0;
        LOWORD(v262[0]) = 0;
        sub_10001F16C(*(v1 + 40), (v1 + 44), v21, &v299);
        v18 = sub_1000127A0(*(a1 + 792), &v299, 0, &v331, v363, v262, &__dst);
        if (v18)
        {
          goto LABEL_313;
        }

        v110 = *(v1 + 24);
        if (LOWORD(v363[0]) == 1)
        {
          if (v363[1] == v110)
          {
            v363[1] = *(v1 + 16);
            goto LABEL_226;
          }

LABEL_227:
          v194 = a1;
          v99 = 2;
LABEL_315:
          v105 = sub_10001ECC0(v194, v99);
LABEL_316:
          LOWORD(v19) = v105;
LABEL_326:
          v3 = 0uLL;
          goto LABEL_327;
        }

        if (LOWORD(v363[1]) != v110)
        {
          goto LABEL_227;
        }

        LOWORD(v363[1]) = *(v1 + 16);
LABEL_226:
        v131 = *(a1 + 792);
        v135 = __dst;
        v132 = LOWORD(v262[0]);
        v133 = &v299;
LABEL_311:
        v134 = &__dst;
LABEL_312:
        v18 = sub_100012E70(v131, v133, v135, v363, v132, v134);
        if (v18)
        {
LABEL_313:
          v99 = v18;
          goto LABEL_314;
        }

LABEL_325:
        LOWORD(v19) = 0;
        goto LABEL_326;
      }

      v3 = 0uLL;
      if (v22 == 539)
      {
        if (*(v1 + 24) == *(v20 + 114))
        {
          LOWORD(v19) = 0;
          *(v20 + 114) = *(v1 + 16);
          goto LABEL_136;
        }

LABEL_137:
        v79 = sub_10001ECC0(a1, 2);
LABEL_138:
        v3 = 0uLL;
        LOWORD(v19) = v79;
      }

LABEL_327:
      if (v19)
      {
        if (sub_10002D444() >= 3)
        {
          v252 = *(v1 + 8);
          *v363 = xmmword_100043460;
          v364 = *&qword_100043470;
          v365 = xmmword_100043480;
          v366 = *&off_100043490;
          sub_10002D0E8(v363, 2, "\tDoMinorRepair: Repair for type=%d failed (err=%d).\n", v247, v248, v249, v250, v251, v252);
        }

        v3 = 0uLL;
      }

      else
      {
        LOWORD(v19) = 0;
      }

LABEL_332:
      if (*(a1 + 957) == 1)
      {
        *v1 = *(a1 + 624);
        *(a1 + 624) = v1;
        if (!v4)
        {
          return v19;
        }
      }

      else
      {
        free(v1);
        v3 = 0uLL;
        if (!v4)
        {
          return v19;
        }
      }

      v1 = v4;
      if (v19)
      {
        return v19;
      }
    }

    if (v22 == 540)
    {
      if (*(v1 + 24) != *(v20 + 112))
      {
        goto LABEL_227;
      }

      LOWORD(v19) = 0;
      *(v20 + 112) = *(v1 + 16);
      *(a1 + 18) |= 0x8000u;
      goto LABEL_326;
    }

    v3 = 0uLL;
    if (v22 == 541)
    {
      if (*(v20 + 36) == *(v1 + 24))
      {
        LOWORD(v19) = 0;
        *(v20 + 36) = *(v1 + 16);
        goto LABEL_136;
      }
    }

    else
    {
      if (v22 != 542)
      {
        goto LABEL_327;
      }

      if (*(v20 + 32) == *(v1 + 24))
      {
        LOWORD(v19) = 0;
        *(v20 + 32) = *(v1 + 16);
LABEL_136:
        *(a1 + 18) |= 0x8000u;
        goto LABEL_327;
      }
    }

    goto LABEL_137;
  }

  LOWORD(v19) = 0;
  return v19;
}