BOOL CopyDateTimeFromParams(IIODictionary *a1, char *a2)
{
  if (!IIODictionary::containsKey(a1, @"kCGImageCopyFileSetDateTime"))
  {
    return 1;
  }

  ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImageCopyFileSetDateTime");
  IIOString::IIOString(v9, ObjectForKey);
  v5 = IIOString::utf8String(v9);
  strncpy(a2, v5, 0x14uLL);
  IIOString::~IIOString(v9);
  if (strlen(a2) == 19)
  {
    for (i = 0; i != 20; ++i)
    {
      v7 = a2[i];
      if (v7 < a10000000000000[i] || v7 > a29991939295959[i])
      {
        *a2 = 0;
      }
    }

    return *a2 != 0;
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

void sub_186014988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t copyIPTCDictFromParams(IIODictionary *a1)
{
  if (a1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImageCopyFileSetIPTC");
    if (ObjectForKey | IIODictionary::getObjectForKey(a1, @"kCGImageCopyFileSetKeywords"))
    {
      operator new();
    }
  }

  return 0;
}

IIODictionary *CopyXMPFromIPTCParams(IIODictionary *result)
{
  if (result)
  {
    result = copyIPTCDictFromParams(result);
    if (result)
    {
      operator new();
    }
  }

  return result;
}

uint64_t CopyTiffFile(uint64_t a1, __sFILE *a2, __sFILE *a3, unsigned __int8 *a4, const __CFData *a5, BOOL *a6, const __CFData *a7, const __CFDictionary *a8, BOOL *a9, const __CFData *a10, BOOL *a11, unsigned __int16 a12, BOOL *a13, char *a14)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = v15;
  v17 = v14;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v221 = v28;
  v233 = *MEMORY[0x1E69E9840];
  v29 = *v22;
  v227 = v29 == 77;
  if (v14)
  {
    Length = CFDataGetLength(v14);
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v225 = 0;
    if (v21)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Length = 0;
  if (!a10)
  {
    goto LABEL_6;
  }

LABEL_3:
  v225 = CFDataGetLength(a10);
  if (v21)
  {
LABEL_4:
    v30 = CFDataGetLength(v21);
    goto LABEL_8;
  }

LABEL_7:
  v30 = 0;
LABEL_8:
  if (Length)
  {
    BytePtr = CFDataGetBytePtr(v17);
  }

  else
  {
    BytePtr = 0;
  }

  if (!v225)
  {
    v31 = 0;
    if (v30)
    {
      goto LABEL_13;
    }

LABEL_15:
    v32 = 0;
    goto LABEL_16;
  }

  v31 = CFDataGetBytePtr(a10);
  if (!v30)
  {
    goto LABEL_15;
  }

LABEL_13:
  v32 = CFDataGetBytePtr(v21);
LABEL_16:
  v230 = 0;
  v228 = 0u;
  v229 = 0u;
  if (fwrite(v23, 1uLL, 4uLL, v25) != 4)
  {
    return 4294967276;
  }

  LODWORD(__ptr) = 0;
  if (fread(&__ptr, 1uLL, 4uLL, v27) != 4)
  {
    goto LABEL_95;
  }

  v217 = v31;
  v33 = 0;
  v34 = bswap32(__ptr);
  if (v29 == 77)
  {
    v35 = v34;
  }

  else
  {
    v35 = __ptr;
  }

  if (v35 < 8 || v35 >= v221)
  {
    return v33;
  }

  v216 = v35;
  if (fseek(v27, v35, 0))
  {
    return 4294967257;
  }

  LOWORD(__ptr) = 0;
  if (fread(&__ptr, 1uLL, 2uLL, v27) != 2)
  {
LABEL_95:
    if ((v27->_flags & 0x20) != 0)
    {
      return 4294967257;
    }

    else
    {
      return 4294967277;
    }
  }

  v36 = bswap32(__ptr) >> 16;
  if (v227)
  {
    v37 = v36;
  }

  else
  {
    v37 = __ptr;
  }

  if ((v37 - 512) < 0xFE03u)
  {
    return 0;
  }

  v210 = v30;
  __base = malloc_type_malloc(4 * ((3 * v37) & 0x3FFF), 0x100004077774924uLL);
  if (!__base)
  {
    return 0;
  }

  if (fread(__base, 1uLL, 4 * ((3 * v37) & 0x3FFF), v27) == 4 * ((3 * v37) & 0x3FFF))
  {
    v214 = v16;
    v38 = __base;
    LODWORD(__ptr) = 0;
    if (fread(&__ptr, 1uLL, 4uLL, v27) == 4)
    {
      v200 = 4 * ((3 * v37) & 0x3FFF);
      v209 = v32;
      v203 = v19;
      v205 = v25;
      LODWORD(v39) = 0;
      v40 = v37;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = __ptr;
      v48 = bswap32(__ptr);
      if (v227)
      {
        v47 = v48;
      }

      v196 = v47;
      v207 = v40;
      do
      {
        LOWORD(v40) = v40 - 1;
        v49 = *v38;
        v50 = bswap32(v49) >> 16;
        if (v227)
        {
          LOWORD(v49) = v50;
        }

        v51 = *(v38 + 1);
        v52 = bswap32(v51) >> 16;
        if (v227)
        {
          LOWORD(v51) = v52;
        }

        v53 = *(v38 + 1);
        v54 = *(v38 + 2);
        v55 = bswap32(v53);
        if (v227)
        {
          LOWORD(v53) = v55;
        }

        v56 = bswap32(v54);
        if (v227)
        {
          v54 = v56;
        }

        v44 |= v49 == 274;
        v43 |= v49 == 33723;
        v42 |= v49 == 34675;
        v41 |= v49 == 700;
        if (v30)
        {
          v57 = 0;
        }

        else
        {
          v57 = v49 == 34675;
        }

        if (v57 && v21 != 0)
        {
          v45 = v38;
        }

        if (v53)
        {
          v58 = v51 == 4;
        }

        else
        {
          v58 = 0;
        }

        if (v58 && v49 == 34665)
        {
          v39 = v54;
        }

        else
        {
          v39 = v39;
        }

        if (v53 == 20 && v51 == 2 && v49 == 306)
        {
          v46 = v54;
        }

        v38 += 12;
      }

      while (v40);
      if (v39)
      {
        if (fseek(v27, v39, 0))
        {
          v206 = 0;
          v208 = 0;
          v204 = 0;
          v33 = 4294967257;
          goto LABEL_372;
        }

        LOWORD(__ptr) = 0;
        if (fread(&__ptr, 1uLL, 2uLL, v27) != 2)
        {
          v206 = 0;
          v208 = 0;
          v204 = 0;
          if ((v27->_flags & 0x20) != 0)
          {
            v33 = 4294967257;
          }

          else
          {
            v33 = 4294967277;
          }

          goto LABEL_372;
        }

        v62 = bswap32(__ptr) >> 16;
        if (v227)
        {
          v63 = v62;
        }

        else
        {
          v63 = __ptr;
        }

        if ((v63 - 512) < 0xFE03u || (v64 = 4 * ((3 * v63) & 0x3FFF), (v65 = malloc_type_malloc(v64, 0x100004077774924uLL)) == 0))
        {
          v33 = 0;
          v206 = 0;
          v208 = 0;
          v204 = 0;
          goto LABEL_372;
        }

        v66 = v65;
        if (fread(v65, 1uLL, v64, v27) != v64)
        {
          v206 = 0;
          v208 = 0;
          v204 = 0;
          if ((v27->_flags & 0x20) != 0)
          {
            v33 = 4294967257;
          }

          else
          {
            v33 = 4294967277;
          }

          v106 = v66;
          goto LABEL_371;
        }

        v67 = 0;
        v68 = 0;
        v213 = v66;
        do
        {
          --v63;
          v69 = *v66;
          v70 = bswap32(v69) >> 16;
          if (v227)
          {
            LOWORD(v69) = v70;
          }

          v71 = *(v66 + 1);
          v72 = bswap32(v71) >> 16;
          if (v227)
          {
            LOWORD(v71) = v72;
          }

          v73 = v66[1];
          v74 = v66[2];
          v75 = bswap32(v73);
          if (v227)
          {
            LOWORD(v73) = v75;
          }

          v76 = bswap32(v74);
          if (v227)
          {
            v74 = v76;
          }

          v77 = v69 == 36867;
          v78 = v73 == 20;
          v79 = v69 == 36868;
          v80 = v71 == 2;
          v81 = v71 == 2 && v77;
          if (!v80)
          {
            v79 = 0;
          }

          if (v81 && v78)
          {
            v67 = v74;
          }

          if (v79 && v78)
          {
            v68 = v74;
          }

          v66 += 3;
        }

        while (v63);
      }

      else
      {
        v68 = 0;
        v67 = 0;
        v213 = 0;
      }

      v185 = v68;
      v186 = v67;
      v86 = v46 | v67 | v68;
      v211 = v86 != 0;
      if (v86)
      {
        v87 = 0;
      }

      else
      {
        v87 = a14 != 0;
      }

      v88 = ((a12 != 0) & (v44 ^ 1)) - (v45 != 0) + ((BytePtr != 0) & (v43 ^ 1)) + ((v209 != 0) & (v42 ^ 1)) + ((v217 != 0) & (v41 ^ 1)) + v87;
      v201 = v207 + v88;
      v89 = 12 * (v207 + v88);
      v191 = v88;
      __nitems = v89;
      if (v88 < 1)
      {
        v192 = v216;
      }

      else
      {
        __base = reallocf(__base, 12 * (v207 + v88));
        v192 = v221;
        v221 += v89 + 6;
      }

      v90 = v214;
      v91 = &__base[v200];
      v92 = &__base[v200 + 12];
      v93 = &__base[v200 + 24];
      if (v45)
      {
        *v45 = -1;
      }

      else
      {
        v94 = v91 + 36;
        v45 = &__base[v200];
        v91 = &__base[v200 + 12];
        v92 = &__base[v200 + 24];
        v93 = v94;
      }

      *&v228 = v45;
      *(&v228 + 1) = v91;
      *&v229 = v92;
      *(&v229 + 1) = v93;
      if ((a12 == 0) | v44 & 1)
      {
        v95 = 0;
      }

      else
      {
        if (v227)
        {
          v96 = 4609;
        }

        else
        {
          v96 = 274;
        }

        *v45 = v96;
        v95 = 1;
      }

      if (!((BytePtr == 0) | v43 & 1))
      {
        v97 = v95++;
        v98 = *(&v228 | (8 * v97));
        if (v227)
        {
          v99 = -17533;
        }

        else
        {
          v99 = -31813;
        }

        *v98 = v99;
      }

      v100 = v205;
      if (!((v217 == 0) | v41 & 1))
      {
        v101 = *(&v228 + v95++);
        if (v227)
        {
          v102 = -17406;
        }

        else
        {
          v102 = 700;
        }

        *v101 = v102;
      }

      v103 = v221;
      if (!((v209 == 0) | v42 & 1))
      {
        v104 = *(&v228 + v95++);
        if (v227)
        {
          v105 = 29575;
        }

        else
        {
          v105 = -30861;
        }

        *v104 = v105;
      }

      v106 = v213;
      if (a14 != 0 && !v211)
      {
        v107 = *(&v228 + v95);
        if (v227)
        {
          v108 = 12801;
        }

        else
        {
          v108 = 306;
        }

        *v107 = v108;
      }

      if (v207 <= v201)
      {
        v109 = v201;
      }

      else
      {
        v109 = v207;
      }

      qsort_r(__base, v109, 0xCuLL, &v227, sortifd);
      v110 = v201;
      if (v201)
      {
        v202 = 0;
        v195 = 0;
        v189 = 0;
        v193 = 0;
        v197 = 0;
        v188 = 0;
        v206 = 0;
        v208 = 0;
        v204 = 0;
        v183 = 0;
        v184 = 0;
        v187 = 0;
        v182 = bswap32(v210);
        v190 = bswap32(v225);
        v199 = (Length + 3) >> 2;
        v198 = bswap32(v199);
        v222 = __rev16(a12);
        v111 = __base + 8;
        while (1)
        {
          v112 = v227;
          v113 = *(v111 - 4);
          v114 = bswap32(v113) >> 16;
          if (v227)
          {
            LOWORD(v113) = v114;
          }

          if (a12 && v113 == 274)
          {
            v115 = !v227;
            if (v227)
            {
              v116 = 768;
            }

            else
            {
              v116 = 3;
            }

            *(v111 - 3) = v116;
            if (v112)
            {
              v117 = 0x1000000;
            }

            else
            {
              v117 = 1;
            }

            *(v111 - 1) = v117;
            v118 = a12;
            if (!v115)
            {
              v118 = v222;
            }

            *v111 = v118;
            v119 = a11;
            if (!a11)
            {
              goto LABEL_197;
            }

LABEL_196:
            *v119 = 1;
            goto LABEL_197;
          }

          if (a14)
          {
            v120 = v113 == 306;
          }

          else
          {
            v120 = 0;
          }

          v121 = !v120;
          if ((v121 | v211))
          {
            if (!BytePtr || v113 != 33723)
            {
              if (v217 && v113 == 700)
              {
                v131 = !v227;
                if (v227)
                {
                  v132 = 256;
                }

                else
                {
                  v132 = 1;
                }

                *(v111 - 3) = v132;
                v133 = v225;
                v134 = v190;
                if (v131)
                {
                  v134 = v225;
                }

                v135 = bswap32(v103);
                if (v131)
                {
                  v135 = v103;
                }

                *(v111 - 1) = v134;
                *v111 = v135;
                if (a9)
                {
                  *a9 = 1;
                }

                v195 = v103;
                goto LABEL_225;
              }

              if (v209 && v113 == 34675)
              {
                v136 = !v227;
                if (v227)
                {
                  v137 = 1792;
                }

                else
                {
                  v137 = 7;
                }

                *(v111 - 3) = v137;
                v133 = v210;
                v138 = v182;
                if (v136)
                {
                  v138 = v210;
                }

                v139 = bswap32(v103);
                if (v136)
                {
                  v139 = v103;
                }

                *(v111 - 1) = v138;
                *v111 = v139;
                v189 = v103;
LABEL_225:
                v103 += v133;
                value = 0;
LABEL_226:
                if (v113 != 315 || v90 == 0)
                {
                  if (v113 != 33432 || !v90 || !CFDictionaryGetValueIfPresent(v90, @"CopyrightNotice", &value))
                  {
                    goto LABEL_197;
                  }

                  if (v206)
                  {
                    free(v206);
                  }

                  IIOString::IIOString(&__ptr, value);
                  UTF8String = IIOString::createUTF8String(&__ptr);
                  IIOString::~IIOString(&__ptr);
                  if (!UTF8String)
                  {
                    v206 = 0;
                    goto LABEL_197;
                  }

                  v142 = strlen(UTF8String);
                  v143 = v142 + 1;
                  v144 = v227;
                  v145 = bswap32(v142 + 1);
                  if (!v227)
                  {
                    v145 = v142 + 1;
                  }

                  *(v111 - 1) = v145;
                  v206 = UTF8String;
                  v197 = v142 + 1;
                  if (v143 > 4)
                  {
                    v155 = bswap32(v103);
                    if (v144)
                    {
                      v156 = v155;
                    }

                    else
                    {
                      v156 = v103;
                    }

                    *v111 = v156;
                    v184 = v103;
                    goto LABEL_274;
                  }
                }

                else
                {
                  if (!CFDictionaryGetValueIfPresent(v90, @"Byline", &value))
                  {
                    goto LABEL_197;
                  }

                  if (v208)
                  {
                    free(v208);
                  }

                  IIOString::IIOString(&__ptr, value);
                  UTF8String = IIOString::createUTF8String(&__ptr);
                  IIOString::~IIOString(&__ptr);
                  if (!UTF8String)
                  {
                    v208 = 0;
                    goto LABEL_197;
                  }

                  v147 = strlen(UTF8String);
                  v143 = v147 + 1;
                  v148 = v227;
                  v149 = bswap32(v147 + 1);
                  if (!v227)
                  {
                    v149 = v147 + 1;
                  }

                  *(v111 - 1) = v149;
                  v208 = UTF8String;
                  v193 = v147 + 1;
                  if (v143 > 4)
                  {
                    v153 = bswap32(v103);
                    if (v148)
                    {
                      v154 = v153;
                    }

                    else
                    {
                      v154 = v103;
                    }

                    *v111 = v154;
                    v187 = v103;
LABEL_274:
                    v103 += v143;
                    v90 = v214;
                    goto LABEL_197;
                  }
                }

LABEL_258:
                strlcpy(v111, UTF8String, 4uLL);
                goto LABEL_197;
              }

              value = 0;
              if (!v90 || v113 != 270)
              {
                goto LABEL_226;
              }

              if (CFDictionaryGetValueIfPresent(v90, @"Caption/Abstract", &value))
              {
                if (v204)
                {
                  free(v204);
                }

                IIOString::IIOString(&__ptr, value);
                UTF8String = IIOString::createUTF8String(&__ptr);
                IIOString::~IIOString(&__ptr);
                if (!UTF8String)
                {
                  v204 = 0;
                  goto LABEL_197;
                }

                v150 = strlen(UTF8String);
                v143 = v150 + 1;
                v151 = v227;
                v152 = bswap32(v150 + 1);
                if (!v227)
                {
                  v152 = v150 + 1;
                }

                *(v111 - 1) = v152;
                v204 = UTF8String;
                v188 = v150 + 1;
                if (v143 > 4)
                {
                  v157 = bswap32(v103);
                  if (v151)
                  {
                    v158 = v157;
                  }

                  else
                  {
                    v158 = v103;
                  }

                  *v111 = v158;
                  v183 = v103;
                  goto LABEL_274;
                }

                goto LABEL_258;
              }

              goto LABEL_197;
            }

            v122 = !v227;
            if (v227)
            {
              v123 = 1024;
            }

            else
            {
              v123 = 4;
            }

            *(v111 - 3) = v123;
            v124 = v198;
            if (!v112)
            {
              v124 = (Length + 3) >> 2;
            }

            v125 = bswap32(v103);
            if (v122)
            {
              v125 = v103;
            }

            *(v111 - 1) = v124;
            *v111 = v125;
            v202 = v103;
            v103 += v199;
            v126 = v203;
          }

          else
          {
            v127 = !v227;
            if (v227)
            {
              v128 = 512;
            }

            else
            {
              v128 = 2;
            }

            *(v111 - 3) = v128;
            if (v112)
            {
              v129 = 335544320;
            }

            else
            {
              v129 = 20;
            }

            v130 = bswap32(v103);
            if (v127)
            {
              v130 = v103;
            }

            *(v111 - 1) = v129;
            *v111 = v130;
            v46 = v103;
            v103 += 20;
            v126 = a13;
          }

          v119 = v126;
          v90 = v214;
          if (v126)
          {
            goto LABEL_196;
          }

LABEL_197:
          --v110;
          v111 += 12;
          if (!v110)
          {
            v159 = v202;
            v160 = v195;
            v223 = v189;
            v219 = v183;
            v161 = v187;
            v215 = v184;
            goto LABEL_276;
          }
        }
      }

      v219 = 0;
      v161 = 0;
      v215 = 0;
      v204 = 0;
      v206 = 0;
      v208 = 0;
      v188 = 0;
      v197 = 0;
      v193 = 0;
      v223 = 0;
      v160 = 0;
      v159 = 0;
LABEL_276:
      if (fseek(v27, 8, 0))
      {
        goto LABEL_377;
      }

      v212 = v161;
      v162 = bswap32(v192);
      if (v227)
      {
        v163 = v162;
      }

      else
      {
        v163 = v192;
      }

      LODWORD(__ptr) = v163;
      if (fwrite(&__ptr, 1uLL, 4uLL, v100) != 4)
      {
        goto LABEL_369;
      }

      v164 = v216 - 8;
      if (v216 != 8)
      {
        bzero(&__ptr, 0x4000uLL);
        while (1)
        {
          v165 = v164 >= 2048 ? 2048 : v164;
          v166 = v165;
          if (fread(&__ptr, 1uLL, v165, v27) != v165)
          {
            break;
          }

          v167 = fwrite(&__ptr, 1uLL, v165, v100);
          v106 = v213;
          if (v167 != v166)
          {
            goto LABEL_369;
          }

          v164 -= v166;
          if (!v164)
          {
            goto LABEL_289;
          }
        }

        if ((v27->_flags & 0x20) != 0)
        {
          v33 = 4294967257;
        }

        else
        {
          v33 = 4294967277;
        }

        v106 = v213;
        if (!v213)
        {
LABEL_372:
          v85 = v206;
          v84 = v208;
          v83 = v204;
          if (!__base)
          {
            goto LABEL_103;
          }

          goto LABEL_102;
        }

LABEL_371:
        free(v106);
        goto LABEL_372;
      }

LABEL_289:
      if (v191 <= 0)
      {
        if (fseek(v27, (v200 + 6), 1))
        {
          goto LABEL_377;
        }

        v172 = bswap32(v201) >> 16;
        if (v227)
        {
          v173 = v172;
        }

        else
        {
          v173 = v201;
        }

        LOWORD(__ptr) = v173;
        if (fwrite(&__ptr, 1uLL, 2uLL, v100) != 2 || fwrite(__base, 1uLL, __nitems, v100) != __nitems)
        {
          goto LABEL_369;
        }

        v174 = bswap32(v196);
        v175 = v227 ? v174 : v196;
        LODWORD(__ptr) = v175;
        if (fwrite(&__ptr, 1uLL, 4uLL, v100) != 4)
        {
          goto LABEL_369;
        }

        if (v191 < 0)
        {
          v232 = 0;
          __ptr = 0;
          if (fwrite(&__ptr, 1uLL, 0xCuLL, v100) != 12)
          {
            goto LABEL_369;
          }
        }

        v33 = copyRemainder(v27, v100);
        if (v33)
        {
          goto LABEL_370;
        }
      }

      else
      {
        v33 = copyRemainder(v27, v100);
        if (v33)
        {
          goto LABEL_370;
        }

        v168 = bswap32(v201) >> 16;
        if (v227)
        {
          v169 = v168;
        }

        else
        {
          v169 = v201;
        }

        LOWORD(__ptr) = v169;
        if (fwrite(&__ptr, 1uLL, 2uLL, v100) != 2 || fwrite(__base, 1uLL, __nitems, v100) != __nitems)
        {
          goto LABEL_369;
        }

        v170 = bswap32(v196);
        v171 = v227 ? v170 : v196;
        LODWORD(__ptr) = v171;
        if (fwrite(&__ptr, 1uLL, 4uLL, v100) != 4)
        {
          goto LABEL_369;
        }
      }

      if (BytePtr)
      {
        if (fseek(v100, v159, 0))
        {
          goto LABEL_377;
        }

        if (fwrite(BytePtr, 1uLL, Length, v100) != Length)
        {
          goto LABEL_369;
        }

        BYTE2(__ptr) = 0;
        LOWORD(__ptr) = 0;
        if ((-Length & 3) != 0 && fwrite(&__ptr, 1uLL, -Length & 3, v100) != (-Length & 3))
        {
          goto LABEL_369;
        }

        if (v203)
        {
          *v203 = 1;
        }
      }

      if (v217)
      {
        if (fseek(v100, v160, 0))
        {
          goto LABEL_377;
        }

        if (fwrite(v217, 1uLL, v225, v100) != v225)
        {
          goto LABEL_369;
        }

        if (a9)
        {
          *a9 = 1;
        }
      }

      if (!v209)
      {
        goto LABEL_338;
      }

      if (fseek(v100, v223, 0))
      {
        goto LABEL_377;
      }

      if (fwrite(v209, 1uLL, v210, v100) == v210)
      {
LABEL_338:
        v176 = v197;
        if (a14 && (v46 || v186 || v185))
        {
          if (v46)
          {
            if (fseek(v100, v46, 0))
            {
              goto LABEL_377;
            }

            v177 = fwrite(a14, 1uLL, 0x14uLL, v100);
            v176 = v197;
            if (v177 != 20)
            {
              goto LABEL_369;
            }
          }

          if (v186)
          {
            if (fseek(v100, v186, 0))
            {
              goto LABEL_377;
            }

            v178 = fwrite(a14, 1uLL, 0x14uLL, v100);
            v176 = v197;
            if (v178 != 20)
            {
              goto LABEL_369;
            }
          }

          if (v185)
          {
            if (fseek(v100, v185, 0))
            {
              goto LABEL_377;
            }

            v179 = fwrite(a14, 1uLL, 0x14uLL, v100);
            v176 = v197;
            if (v179 != 20)
            {
              goto LABEL_369;
            }
          }

          if (a13)
          {
            *a13 = 1;
          }
        }

        if (!v204 || v188 < 5)
        {
          goto LABEL_383;
        }

        if (fseek(v100, v219, 0))
        {
          goto LABEL_377;
        }

        v180 = fwrite(v204, 1uLL, v188, v100);
        v176 = v197;
        if (v180 == v188)
        {
LABEL_383:
          if (!v208 || v193 < 5)
          {
            goto LABEL_361;
          }

          if (fseek(v100, v212, 0))
          {
            goto LABEL_377;
          }

          v181 = fwrite(v208, 1uLL, v193, v100);
          v176 = v197;
          if (v181 == v193)
          {
LABEL_361:
            v33 = 0;
            if (!v206 || v176 < 5)
            {
LABEL_370:
              if (!v106)
              {
                goto LABEL_372;
              }

              goto LABEL_371;
            }

            if (!fseek(v100, v215, 0))
            {
              if (fwrite(v206, 1uLL, v197, v100) == v197)
              {
                v33 = 0;
              }

              else
              {
                v33 = 4294967276;
              }

              if (!v106)
              {
                goto LABEL_372;
              }

              goto LABEL_371;
            }

LABEL_377:
            v33 = 4294967257;
            if (!v106)
            {
              goto LABEL_372;
            }

            goto LABEL_371;
          }
        }
      }

LABEL_369:
      v33 = 4294967276;
      goto LABEL_370;
    }
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  if ((v27->_flags & 0x20) != 0)
  {
    v33 = 4294967257;
  }

  else
  {
    v33 = 4294967277;
  }

LABEL_102:
  free(__base);
LABEL_103:
  if (v83)
  {
    free(v83);
  }

  if (v84)
  {
    free(v84);
  }

  if (v85)
  {
    free(v85);
  }

  return v33;
}

uint64_t sortifd(_BYTE *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = bswap32(*a2) >> 16;
  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *a3;
  v6 = bswap32(v5) >> 16;
  if (*a1)
  {
    LOWORD(v5) = v6;
  }

  return v4 - v5;
}

uint64_t copyRemainder(__sFILE *a1, __sFILE *a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v9 = *MEMORY[0x1E69E9840];
  bzero(__ptr, 0x1000uLL);
  while (1)
  {
    v6 = fread(__ptr, 1uLL, 0x1000uLL, v5);
    if (v6 <= 0xFFFuLL)
    {
      break;
    }

    if (fwrite(__ptr, 1uLL, v6, v3) != v6)
    {
      return 4294967276;
    }
  }

  if (!feof(v5))
  {
    return 4294967277;
  }

  if (fwrite(__ptr, 1uLL, v6, v3) == v6)
  {
    return 0;
  }

  return 4294967276;
}

uint64_t IIO_BytesPerPixelForPixelFormatPlane0(int a1)
{
  v1 = a1;
  if (a1 > 1380411456)
  {
    if (a1 > 1932996148)
    {
      if (a1 > 2019963439)
      {
        if (a1 <= 2019963955)
        {
          if (a1 == 2019963440)
          {
            return 2;
          }

          v5 = 2019963442;
        }

        else
        {
          if (a1 == 2019963956 || a1 == 2037741158)
          {
            return 2;
          }

          v5 = 2037741171;
        }
      }

      else
      {
        if (a1 <= 2016686639)
        {
          if (a1 == 1932996149)
          {
            return 2;
          }

          v3 = 1999843442;
          goto LABEL_52;
        }

        if (a1 == 2016686640 || a1 == 2016686642)
        {
          return 2;
        }

        v5 = 2016687156;
      }
    }

    else
    {
      result = 8;
      if (v1 <= 1751410031)
      {
        if (v1 > 1650943795)
        {
          if (v1 != 1650943796)
          {
            if (v1 != 1717855600)
            {
              v3 = 1717856627;
              goto LABEL_52;
            }

            return 4;
          }

          return 2;
        }

        if (v1 == 1380411457)
        {
          return result;
        }

        v3 = 1647534392;
LABEL_52:
        if (v1 == v3)
        {
          return 4;
        }

        goto LABEL_62;
      }

      if (v1 <= 1815162993)
      {
        if (v1 == 1751410032)
        {
          return 2;
        }

        v5 = 1751411059;
      }

      else
      {
        if (v1 == 1815162994)
        {
          return 4;
        }

        if (v1 == 1815491698)
        {
          return result;
        }

        v5 = 1919379252;
      }
    }

    goto LABEL_60;
  }

  if (a1 > 875704949)
  {
    if (a1 <= 1278226735)
    {
      if (a1 <= 875836533)
      {
        if (a1 == 875704950)
        {
          return 1;
        }

        v4 = 875836518;
      }

      else
      {
        if (a1 == 875836534)
        {
          return 1;
        }

        if (a1 == 1111970369)
        {
          return 4;
        }

        v4 = 1278226488;
      }

      goto LABEL_56;
    }

    if (a1 > 1278555700)
    {
      if (a1 == 1278555701 || a1 == 1279340600)
      {
        return 2;
      }

      v3 = 1380401729;
      goto LABEL_52;
    }

    if (a1 == 1278226736)
    {
      return 2;
    }

    v5 = 1278226742;
LABEL_60:
    if (v1 == v5)
    {
      return 2;
    }

    goto LABEL_62;
  }

  if (a1 <= 843264103)
  {
    if (a1 <= 825306676)
    {
      if (a1 == 16)
      {
        return 2;
      }

      if (a1 == 32)
      {
        return 4;
      }

LABEL_62:
      v6 = v1 >> 24;
      v7 = MEMORY[0x1E69E9830];
      if ((v1 >> 24) <= 0x7F)
      {
        v8 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000;
      }

      else
      {
        v8 = __maskrune(v1 >> 24, 0x40000uLL);
      }

      if (v8)
      {
        v9 = v6;
      }

      else
      {
        v9 = 46;
      }

      v10 = v1 << 8 >> 24;
      if (v10 <= 0x7F)
      {
        v11 = *(v7 + 4 * v10 + 60) & 0x40000;
      }

      else
      {
        v11 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
      }

      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 46;
      }

      LODWORD(v13) = v1 >> 8;
      if (v13 <= 0x7F)
      {
        v14 = *(v7 + 4 * v13 + 60) & 0x40000;
      }

      else
      {
        v14 = __maskrune(v1 >> 8, 0x40000uLL);
      }

      if (v14)
      {
        v13 = v13;
      }

      else
      {
        v13 = 46;
      }

      v1 = v1;
      if (v1 <= 0x7F)
      {
        v15 = *(v7 + 4 * v1 + 60) & 0x40000;
      }

      else
      {
        v15 = __maskrune(v1, 0x40000uLL);
      }

      if (v15)
      {
        v16 = v1;
      }

      else
      {
        v16 = 46;
      }

      LogError("IIO_BytesPerPixelForPixelFormatPlane0", 141, "*** IIO_BytesPerPixelForPixelFormatPlane0 - '%c%c%c%c' not handled\n", v9, v12, v13, v16);
      return 1;
    }

    if (a1 == 825306677)
    {
      return 2;
    }

    v5 = 825437747;
    goto LABEL_60;
  }

  if (a1 <= 875704421)
  {
    if (a1 == 843264104)
    {
      return 4;
    }

    v3 = 843264310;
    goto LABEL_52;
  }

  if (a1 == 875704422 || a1 == 875704438)
  {
    return 1;
  }

  v4 = 875704934;
LABEL_56:
  if (a1 != v4)
  {
    goto LABEL_62;
  }

  return 1;
}

uint64_t IIO_IOSurfaceFormatIsFloat(int a1)
{
  result = 1;
  if (a1 <= 1380410944)
  {
    if (a1 > 1279340645)
    {
      if (a1 == 1279340646)
      {
        return result;
      }

      v3 = 1279340648;
    }

    else
    {
      if (a1 == 1278226534)
      {
        return result;
      }

      v3 = 1278226536;
    }

    goto LABEL_13;
  }

  if (a1 <= 1751527983)
  {
    if (a1 == 1380410945)
    {
      return result;
    }

    v3 = 1380411457;
    goto LABEL_13;
  }

  if (a1 != 1751527984 && a1 != 1751527986)
  {
    v3 = 1751528500;
LABEL_13:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t IIO_FillGeometry420(int a1, unsigned int a2, uint64_t a3, float64_t a4, double a5, double a6, double a7)
{
  v9 = a1;
  v10 = a6;
  v11 = a7;
  v12 = (a7 + a5 + ~((a5 - 1) % a7));
  *a3 = (a6 + a4 + ~((a4 - 1) % a6));
  *(a3 + 8) = v12;
  v13 = IIO_BytesPerPixelForPixelFormatPlane0(a1);
  v21.f64[0] = a4;
  v22 = v13;
  v23 = (*a3 * v13);
  if (v23 % a2)
  {
    v24 = a2 - v23 % a2;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 + v23;
  *(a3 + 16) = v13;
  *(a3 + 20) = v25;
  if (a4 <= 0.0 || a5 <= 0.0)
  {
    IIO_FillGeometry420(v13, v14, v15, v16, v17, v18, v19, v20, v49, SHIDWORD(v49), v50);
    return 4294967246;
  }

  if (v25 < 0)
  {
    IIO_FillGeometry420();
    return 4294967246;
  }

  if (v9 > 2016686639)
  {
    if (v9 > 2019963439)
    {
      if (v9 == 2019963956)
      {
        goto LABEL_27;
      }

      if (v9 != 2019963442)
      {
        if (v9 != 2019963440)
        {
LABEL_32:
          v39 = v9 >> 24;
          if ((v9 >> 24) <= 0x7F)
          {
            v40 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
          }

          else
          {
            v40 = __maskrune(v9 >> 24, 0x40000uLL);
          }

          if (v40)
          {
            v41 = v39;
          }

          else
          {
            v41 = 46;
          }

          v42 = v9 << 8 >> 24;
          if (v42 <= 0x7F)
          {
            v43 = *(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000;
          }

          else
          {
            v43 = __maskrune(v9 << 8 >> 24, 0x40000uLL);
          }

          if (v43)
          {
            v44 = v42;
          }

          else
          {
            v44 = 46;
          }

          LODWORD(v45) = v9 >> 8;
          if (v45 <= 0x7F)
          {
            v46 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
          }

          else
          {
            v46 = __maskrune(v9 >> 8, 0x40000uLL);
          }

          if (v46)
          {
            v45 = v45;
          }

          else
          {
            v45 = 46;
          }

          v9 = v9;
          if (v9 <= 0x7F)
          {
            v47 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
          }

          else
          {
            v47 = __maskrune(v9, 0x40000uLL);
          }

          if (v47)
          {
            v48 = v9;
          }

          else
          {
            v48 = 46;
          }

          _cg_jpeg_mem_term("IIO_FillGeometry420", 254, "*** unhandled pixel format '%c%c%c%c'\n", v41, v44, v45, v48);
          return 4294967246;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v9 == 2016686640)
      {
        goto LABEL_25;
      }

      if (v9 != 2016686642)
      {
        v26 = 2016687156;
        goto LABEL_20;
      }
    }

    goto LABEL_26;
  }

  if (v9 > 875704949)
  {
    if (v9 != 875704950)
    {
      if (v9 != 875836518)
      {
        v26 = 875836534;
LABEL_20:
        if (v9 != v26)
        {
          goto LABEL_32;
        }
      }

LABEL_27:
      *(a3 + 24) = v21.f64[0];
      *(a3 + 32) = a5;
      goto LABEL_28;
    }

LABEL_26:
    v21.f64[0] = ((a4 + 1.0) * 0.5);
    goto LABEL_27;
  }

  if (v9 != 875704422 && v9 != 875704438)
  {
    if (v9 != 875704934)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_25:
  v21.f64[1] = a5;
  __asm { FMOV            V1.2D, #1.0 }

  v32 = vaddq_f64(v21, _Q1);
  __asm { FMOV            V2.2D, #0.5 }

  v34 = vcvtq_u64_f64(vmulq_f64(v32, _Q2));
  v21 = vcvtq_f64_u64(v34);
  *(a3 + 24) = v21;
  v12 = (v34.i64[1] + v11 + ~((v34.i64[1] - 1) % v11));
LABEL_28:
  result = 0;
  v36 = ((v21.f64[0] + v21.f64[0]) + v10 + ~(((v21.f64[0] + v21.f64[0]) - 1) % v10));
  *(a3 + 40) = v36;
  *(a3 + 48) = v12;
  v37 = (v22 * v36);
  if (v37 % a2)
  {
    v38 = a2 - v37 % a2;
  }

  else
  {
    v38 = 0;
  }

  *(a3 + 56) = v38 + v37;
  return result;
}

uint64_t IIOAlignRowBytes(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 1;
  if (!a2)
  {
    v2 = 15;
  }

  return (v2 + a1) & ~v2;
}

void IIO_UpdateAttachmentsDictionaryFromIOSurfaceStruct(IIODictionary *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 52);
  if (v4)
  {
    IIONumber::IIONumber(&v23, *(a2 + 48) / v4);
    IIODictionary::setObjectForKey(a1, value, *gIIO_kCVImageBufferGammaLevelKey);
    IIONumber::~IIONumber(&v23);
  }

  StringForIntegerCodePoint = gFunc_CVYCbCrMatrixGetStringForIntegerCodePoint(*(a2 + 58));
  if (StringForIntegerCodePoint)
  {
    IIODictionary::setObjectForKey(a1, StringForIntegerCodePoint, *gIIO_kCVImageBufferYCbCrMatrixKey);
  }

  v6 = gFunc_CVColorPrimariesGetStringForIntegerCodePoint(*(a2 + 59));
  if (v6)
  {
    IIODictionary::setObjectForKey(a1, v6, *gIIO_kCVImageBufferColorPrimariesKey);
  }

  v7 = gFunc_CVTransferFunctionGetStringForIntegerCodePoint(*(a2 + 60));
  if (v7)
  {
    IIODictionary::setObjectForKey(a1, v7, *gIIO_kCVImageBufferTransferFunctionKey);
  }

  else if (*(a2 + 60) == 2 && *(a2 + 52))
  {
    IIODictionary::setObjectForKey(a1, *gIIO_kCVImageBufferTransferFunction_UseGamma, *gIIO_kCVImageBufferTransferFunctionKey);
  }

  if (*(a2 + 61) - 1 <= 6)
  {
    IIODictionary::setObjectForKey(a1, **off_1E6F095B8[(*(a2 + 61) - 1)], *gIIO_kCVImageBufferChromaLocationTopFieldKey);
  }

  if (*(a2 + 62) - 1 <= 6)
  {
    IIODictionary::setObjectForKey(a1, **off_1E6F095B8[(*(a2 + 62) - 1)], *gIIO_kCVImageBufferChromaLocationBottomFieldKey);
  }

  if (*(a2 + 63) - 1 <= 2)
  {
    IIODictionary::setObjectForKey(a1, **off_1E6F095F0[(*(a2 + 63) - 1)], *gIIO_kCVImageBufferChromaSubsamplingKey);
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a2 + 66);
    if (v9)
    {
      v10 = *(a2 + 68);
      if (v10)
      {
        v11 = *(a2 + 70);
        if (v11)
        {
          v12 = *(a2 + 72);
          if (v12)
          {
            v13 = *(a2 + 74);
            if (v13)
            {
              v14 = *(a2 + 76);
              if (v14)
              {
                v15 = *(a2 + 78);
                if (v15)
                {
                  v16 = *(a2 + 80);
                  if (v16)
                  {
                    v23 = HIBYTE(v8);
                    v24 = v8;
                    v25 = HIBYTE(v9);
                    v26 = v9;
                    v27 = HIBYTE(v10);
                    v28 = v10;
                    v29 = HIBYTE(v11);
                    v30 = v11;
                    v31 = HIBYTE(v12);
                    v32 = v12;
                    v33 = HIBYTE(v13);
                    v34 = v13;
                    v35 = HIBYTE(v14);
                    v36 = v14;
                    v37 = HIBYTE(v15);
                    v38 = v15;
                    LOBYTE(value) = HIBYTE(v16);
                    BYTE1(value) = BYTE2(v16);
                    BYTE2(value) = BYTE1(v16);
                    BYTE3(value) = v16;
                    HIDWORD(value) = bswap32(*(a2 + 84));
                    v17 = CFDataCreate(*MEMORY[0x1E695E480], &v23, 24);
                    IIODictionary::setObjectForKey(a1, v17, *gIIO_kCVImageBufferMasteringDisplayColorVolumeKey);
                    CFRelease(v17);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v18 = *(a2 + 88);
  if (v18)
  {
    v19 = *(a2 + 90);
    if (v19)
    {
      v23 = HIBYTE(v18);
      v24 = v18;
      v25 = HIBYTE(v19);
      v26 = v19;
      v20 = CFDataCreate(*MEMORY[0x1E695E480], &v23, 4);
      IIODictionary::setObjectForKey(a1, v20, *gIIO_kCVImageBufferContentLightLevelInfoKey);
      CFRelease(v20);
    }
  }

  v21 = *(a2 + 100);
  if (v21 == 1)
  {
    v22 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
  }

  else
  {
    if (v21 != 2)
    {
      return;
    }

    v22 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
  }

  IIODictionary::setObjectForKey(a1, *gIIO_kCVImageBufferAlphaChannelModeKey, **v22);
}

void sub_186017490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

__IOSurface *IIO_CreateSurfaceWithFormat(int a1, unint64_t a2, unint64_t a3, CGColorSpace *a4)
{
  v4 = 0;
  if (!a2 || !a3)
  {
    return v4;
  }

  v40 = 0;
  properties = 0;
  v42 = 0;
  IIODictionary::IIODictionary(&v40);
  if (a1 > 1647534391)
  {
    if (a1 > 1999843441)
    {
      if (a1 > 2019963441)
      {
        if (a1 > 2021077553)
        {
          if (a1 == 2021077554)
          {
            goto LABEL_75;
          }

          if (a1 == 2037741158)
          {
            goto LABEL_87;
          }

          v12 = 13364;
        }

        else
        {
          if (a1 == 2019963442 || a1 == 2019963956)
          {
            goto LABEL_75;
          }

          v12 = 12848;
        }

        v9 = v12 | 0x78770000;
        goto LABEL_74;
      }

      if (a1 > 2016686641)
      {
        if (a1 != 2016686642 && a1 != 2016687156)
        {
          v9 = 2019963440;
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (a1 == 1999843442)
      {
        goto LABEL_71;
      }

      if (a1 != 1999908961)
      {
        v9 = 2016686640;
        goto LABEL_74;
      }
    }

    else
    {
      if (a1 > 1885745713)
      {
        if (a1 <= 1886859825)
        {
          if (a1 != 1885745714 && a1 != 1885746228)
          {
            v9 = 1886859824;
            goto LABEL_74;
          }

          goto LABEL_75;
        }

        if (a1 == 1886859826 || a1 == 1886860340)
        {
          goto LABEL_75;
        }

        v10 = 1915826283;
        goto LABEL_57;
      }

      if (a1 > 1882468913)
      {
        if (a1 != 1882468914 && a1 != 1882469428)
        {
          v9 = 1885745712;
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (a1 == 1647534392)
      {
        goto LABEL_75;
      }

      if (a1 != 1815491698)
      {
        v9 = 1882468912;
        goto LABEL_74;
      }
    }

LABEL_62:
    v13 = 8;
LABEL_118:
    v37 = *MEMORY[0x1E696CE30];
    v38 = MEMORY[0x186602010](*MEMORY[0x1E696CE30], ((v13 * a2 + 15) & 0xFFFFFFFFFFFFFFF0) * a3);
    IIONumber::IIONumber(&v52, a2);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696D130]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, a3);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CF58]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, a1);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CFC0]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, v13);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CE50]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, (v13 * a2 + 15) & 0xFFFFFFF0);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CE58]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, v38);
    IIODictionary::setObjectForKey(&v40, v54, v37);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, 0);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CE60]);
    IIONumber::~IIONumber(&v52);
    IIODictionary::setObjectForKey(&v40, *MEMORY[0x1E695E4C0], *MEMORY[0x1E696CFB8]);
    goto LABEL_119;
  }

  if (a1 > 875836533)
  {
    if (a1 <= 1278226741)
    {
      if (a1 > 1278226487)
      {
        if (a1 != 1278226488)
        {
          if (a1 != 1278226534)
          {
            v11 = 1278226536;
            goto LABEL_69;
          }

          goto LABEL_71;
        }
      }

      else
      {
        if (a1 == 875836534)
        {
          goto LABEL_75;
        }

        if (a1 != 1093677112)
        {
          v10 = 1111970369;
LABEL_57:
          if (a1 != v10)
          {
            goto LABEL_119;
          }

          goto LABEL_71;
        }
      }

      v13 = 1;
      goto LABEL_118;
    }

    if (a1 <= 1380401728)
    {
      if (a1 == 1278226742 || a1 == 1278555445)
      {
LABEL_87:
        v13 = 2;
        goto LABEL_118;
      }

      v11 = 1278555701;
LABEL_69:
      if (a1 != v11)
      {
        goto LABEL_119;
      }

      goto LABEL_87;
    }

    if (a1 == 1380401729)
    {
LABEL_71:
      v13 = 4;
      goto LABEL_118;
    }

    if (a1 == 1380410945)
    {
      v13 = 16;
      goto LABEL_118;
    }

    if (a1 != 1380411457)
    {
      goto LABEL_119;
    }

    goto LABEL_62;
  }

  if (a1 <= 875704420)
  {
    if (a1 > 843264309)
    {
      if (a1 != 843264310)
      {
        if (a1 == 875639142)
        {
          goto LABEL_75;
        }

        v9 = 875639158;
LABEL_74:
        if (a1 == v9)
        {
          goto LABEL_75;
        }

LABEL_119:
        v4 = IOSurfaceCreate(properties);
        goto LABEL_120;
      }

      goto LABEL_71;
    }

    if (a1 != 32)
    {
      v11 = 843264056;
      goto LABEL_69;
    }

    goto LABEL_71;
  }

  if (a1 > 875704933)
  {
    if (a1 <= 875836467)
    {
      if (a1 == 875704934)
      {
        goto LABEL_75;
      }

      v9 = 875704950;
      goto LABEL_74;
    }

    if (a1 != 875836468)
    {
      v9 = 875836518;
      goto LABEL_74;
    }

    goto LABEL_87;
  }

  if ((a1 - 875704421) > 0x11 || ((1 << (a1 - 101)) & 0x20003) == 0)
  {
    goto LABEL_119;
  }

LABEL_75:
  v52 = 0;
  value = 0;
  v54 = 0;
  IIOArray::IIOArray(&v52);
  if (a1 <= 1882468911)
  {
    if (a1 <= 875836517)
    {
      if (a1 > 875704933)
      {
        if (a1 != 875704934 && a1 != 875704950)
        {
          goto LABEL_116;
        }

        v49 = 0;
        v50 = 0;
        v51 = 0;
        IIODictionary::IIODictionary(&v49);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        IIODictionary::IIODictionary(&v46);
        v23 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], a2);
        v24 = v23 * a3;
        IIO_UpdatePlaneDict(a2, a3, v23, 0, v23 * a3, 0, &v49);
        IIO_UpdatePlaneDict((a2 + 1) >> 1, a3, v23, v24, v24, 0, &v46);
        IIOArray::addObject(&v52, v50);
        IIOArray::addObject(&v52, v47);
        IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
        goto LABEL_111;
      }

      if (a1 != 875704422 && a1 != 875704438)
      {
        goto LABEL_116;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      v14 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], a2);
      v15 = v14 * a3;
      IIO_UpdatePlaneDict(a2, a3, v14, 0, v14 * a3, 0, &v49);
      v16 = v14 * (a3 >> 1);
      IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v14, v14 * a3, v16, 0, &v46);
      IIOArray::addObject(&v52, v50);
      IIOArray::addObject(&v52, v47);
      IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
      goto LABEL_109;
    }

    if (a1 > 1647534391)
    {
      if (a1 != 1647534392)
      {
        if (a1 == 1714696752)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          IIODictionary::IIODictionary(&v49);
          v46 = 0;
          v47 = 0;
          v48 = 0;
          IIODictionary::IIODictionary(&v46);
          v43 = 0;
          v44 = 0;
          v45 = 0;
          IIODictionary::IIODictionary(&v43);
          v25 = *MEMORY[0x1E696CE58];
          v26 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], a2);
          v27 = MEMORY[0x186602010](v25, a2 >> 1);
          v28 = v26 * a3;
          IIO_UpdatePlaneDict(a2, a3, v26, 0, v26 * a3, 0, &v49);
          v29 = v27 * (a3 >> 1);
          IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v27, v28, v29, 0, &v46);
          v30 = v29 + v28;
          IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v27, v30, v29, 0, &v43);
          IIOArray::addObject(&v52, v50);
          IIOArray::addObject(&v52, v47);
          IIOArray::addObject(&v52, v44);
          IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
          v31 = v30 + v29;
          IIODictionary::~IIODictionary(&v43);
LABEL_115:
          IIODictionary::~IIODictionary(&v46);
          IIODictionary::~IIODictionary(&v49);
          IIONumber::IIONumber(&v49, a2);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696D130]);
          IIONumber::~IIONumber(&v49);
          IIONumber::IIONumber(&v49, a3);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696CF58]);
          IIONumber::~IIONumber(&v49);
          IIONumber::IIONumber(&v49, a1);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696CFC0]);
          IIONumber::~IIONumber(&v49);
          IIONumber::IIONumber(&v49, v31);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696CE30]);
          IIONumber::~IIONumber(&v49);
          IIONumber::IIONumber(&v49, 1024);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696CE60]);
          IIONumber::~IIONumber(&v49);
          IIOArray::~IIOArray(&v52);
          goto LABEL_119;
        }

        goto LABEL_116;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      v34 = *MEMORY[0x1E696CE58];
      v35 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], 4 * a2);
      v18 = (v35 * a3 + 4095) & 0xFFFFFFFFFFFFF000;
      IIO_UpdatePlaneDict(a2, a3, v35, 0, v18, 4, &v49);
      v36 = MEMORY[0x186602010](v34, a2);
      v20 = (v36 * a3 + 4095) & 0xFFFFFFFFFFFFF000;
      IIO_UpdatePlaneDict(a2, a3, v36, v18, v20, 1, &v46);
      IIOArray::addObject(&v52, v50);
      IIOArray::addObject(&v52, v47);
      IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
    }

    else
    {
      if (a1 != 875836518 && a1 != 875836534)
      {
        goto LABEL_116;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      v17 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], a2);
      v18 = v17 * a3;
      IIO_UpdatePlaneDict(a2, a3, v17, 0, v17 * a3, 0, &v49);
      v19 = 2 * v17;
      v20 = 2 * v17 * a3;
      IIO_UpdatePlaneDict(a2, a3, v19, v18, v20, 0, &v46);
      IIOArray::addObject(&v52, v50);
      IIOArray::addObject(&v52, v47);
      IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
    }

    v31 = v20 + v18;
    goto LABEL_115;
  }

  if (a1 > 2016686641)
  {
    if (a1 > 2019963441)
    {
      if (a1 != 2019963442)
      {
        if (a1 != 2021077552)
        {
          if (a1 != 2021077554)
          {
            goto LABEL_116;
          }

          goto LABEL_110;
        }

        goto LABEL_108;
      }

LABEL_110:
      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      v33 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], 2 * a2);
      v24 = v33 * a3;
      IIO_UpdatePlaneDict(a2, a3, v33, 0, v33 * a3, 0, &v49);
      IIO_UpdatePlaneDict((a2 + 1) >> 1, a3, v33, v24, v24, 0, &v46);
      IIOArray::addObject(&v52, v50);
      IIOArray::addObject(&v52, v47);
      IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
LABEL_111:
      v31 = 2 * v24;
      goto LABEL_115;
    }

    if (a1 == 2016686642)
    {
      goto LABEL_110;
    }

    v21 = 2019963440;
    goto LABEL_107;
  }

  if (a1 <= 1886859823)
  {
    if (a1 != 1882468912 && a1 != 1885745712)
    {
      goto LABEL_116;
    }

    goto LABEL_98;
  }

  if (a1 == 1886859824)
  {
LABEL_98:
    v49 = 0;
    v50 = 0;
    v51 = 0;
    IIODictionary::IIODictionary(&v49);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    IIODictionary::IIODictionary(&v46);
    v22 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], (2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = v22 * a3;
    IIO_UpdatePlaneDict(a2, a3, v22, 0, v22 * a3, 0, &v49);
    v16 = v22 * (a3 >> 1);
    IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v22, v22 * a3, v16, 0, &v46);
    IIOArray::addObject(&v52, v50);
    IIOArray::addObject(&v52, v47);
    IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
LABEL_109:
    v31 = v15 + v16;
    goto LABEL_115;
  }

  v21 = 2016686640;
LABEL_107:
  if (a1 == v21)
  {
LABEL_108:
    v49 = 0;
    v50 = 0;
    v51 = 0;
    IIODictionary::IIODictionary(&v49);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    IIODictionary::IIODictionary(&v46);
    v32 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], 2 * a2);
    v15 = v32 * a3;
    IIO_UpdatePlaneDict(a2, a3, v32, 0, v32 * a3, 0, &v49);
    v16 = v32 * (a3 >> 1);
    IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v32, v32 * a3, v16, 0, &v46);
    IIOArray::addObject(&v52, v50);
    IIOArray::addObject(&v52, v47);
    IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
    goto LABEL_109;
  }

LABEL_116:
  IIOArray::~IIOArray(&v52);
  v4 = 0;
LABEL_120:
  IIODictionary::~IIODictionary(&v40);
  if (a4 && v4)
  {
    IIO_IOSurfaceAddColorSpace(v4, a4);
  }

  return v4;
}

void sub_1860184CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  IIOArray::~IIOArray(va3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIO_IOSurfaceAddColorSpace(__IOSurface *a1, CGColorSpace *a2)
{
  if (a1 && a2)
  {
    ID = CGColorSpaceGetID();
    if (ID)
    {
      IIONumber::IIONumber(&v9, ID);
      IOSurfaceSetValue(a1, @"IOSurfaceColorSpaceID", value[0]);
      IIONumber::~IIONumber(&v9);
    }

    v5 = CGColorSpaceCopyPropertyList(a2);
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x1E696CEE0];
    }

    else
    {
      v8 = CGColorSpaceCopyICCData(a2);
      if (!v8)
      {
LABEL_10:
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        *value = 0u;
        BYTE10(v12) = 6;
        IOSurfaceSetBulkAttachments2();
        IOSurfaceSetValue(a1, *MEMORY[0x1E696D138], *MEMORY[0x1E696D148]);
        return;
      }

      v6 = v8;
      v7 = MEMORY[0x1E696CF60];
    }

    IOSurfaceSetValue(a1, *v7, v6);
    CFRelease(v6);
    goto LABEL_10;
  }
}

__IOSurface *IIO_CreateBiPlanarIOSurfaceWithFormat(int a1, CGSize a2, CGSize a3, unsigned int a4, unsigned __int8 *a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, BOOL a11, int *a12)
{
  height = a3.height;
  width = a3.width;
  v20 = a2.height;
  v21 = a2.width;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  IIODictionary::IIODictionary(&v63);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  IIODictionary::IIODictionary(&v60);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  IIODictionary::IIODictionary(&v57);
  v45 = a6;
  v46 = a5;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  IIOArray::IIOArray(&v54);
  v53 = 0;
  v51 = 0u;
  *v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  if (IIO_FillGeometry420(a1, a4, &v49, v21, v20, width, height))
  {
    goto LABEL_32;
  }

  IIONumber::IIONumber(v47, v21);
  IIODictionary::setObjectForKey(&v63, value, *MEMORY[0x1E696D130]);
  IIONumber::~IIONumber(v47);
  IIONumber::IIONumber(v47, v20);
  IIODictionary::setObjectForKey(&v63, value, *MEMORY[0x1E696CF58]);
  IIONumber::~IIONumber(v47);
  IIONumber::IIONumber(v47, a1);
  IIODictionary::setObjectForKey(&v63, value, *MEMORY[0x1E696CFC0]);
  IIONumber::~IIONumber(v47);
  IIONumber::IIONumber(v47, v21);
  v23 = *MEMORY[0x1E696D0C8];
  IIODictionary::setObjectForKey(&v60, v47, *MEMORY[0x1E696D0C8]);
  IIONumber::~IIONumber(v47);
  IIONumber::IIONumber(v47, v20);
  v24 = *MEMORY[0x1E696D090];
  IIODictionary::setObjectForKey(&v60, v47, *MEMORY[0x1E696D090]);
  IIONumber::~IIONumber(v47);
  v25 = v50;
  IIONumber::IIONumber(v47, v50);
  v26 = *MEMORY[0x1E696CFE0];
  IIODictionary::setObjectForKey(&v60, v47, *MEMORY[0x1E696CFE0]);
  IIONumber::~IIONumber(v47);
  IIONumber::IIONumber(v47, a7);
  v27 = *MEMORY[0x1E696D0B0];
  IIODictionary::setObjectForKey(&v60, v47, *MEMORY[0x1E696D0B0]);
  IIONumber::~IIONumber(v47);
  v28 = DWORD1(v50);
  IIONumber::IIONumber(v47, SDWORD1(v50));
  v29 = *MEMORY[0x1E696CFE8];
  IIODictionary::setObjectForKey(&v60, v47, *MEMORY[0x1E696CFE8]);
  IIONumber::~IIONumber(v47);
  v30 = a8;
  if (!a8)
  {
    v30 = *(&v49 + 1) * v28;
  }

  v31 = v30;
  if ((v31 & 0x80000000) != 0)
  {
    _cg_jpeg_mem_term("IIO_CreateBiPlanarIOSurfaceWithFormat", 1026, "*** IOSurface does not support luma planeSize larger than INT32_MAX");
LABEL_32:
    v42 = 0;
LABEL_20:
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = -50;
    }

    goto LABEL_26;
  }

  IIONumber::IIONumber(v47, v30);
  v32 = *MEMORY[0x1E696D0B8];
  IIODictionary::setObjectForKey(&v60, v47, *MEMORY[0x1E696D0B8]);
  IIONumber::~IIONumber(v47);
  IIOArray::addObject(&v54, v61);
  IIONumber::IIONumber(v47, *(&v50 + 1));
  IIODictionary::setObjectForKey(&v57, v47, v23);
  IIONumber::~IIONumber(v47);
  IIONumber::IIONumber(v47, *&v51);
  IIODictionary::setObjectForKey(&v57, v47, v24);
  IIONumber::~IIONumber(v47);
  IIONumber::IIONumber(v47, 2 * v25);
  IIODictionary::setObjectForKey(&v57, v47, v26);
  IIONumber::~IIONumber(v47);
  if (a9)
  {
    v33 = a9;
  }

  else
  {
    v33 = v31;
  }

  IIONumber::IIONumber(v47, v33);
  IIODictionary::setObjectForKey(&v57, v47, v27);
  IIONumber::~IIONumber(v47);
  v34 = v52[2];
  IIONumber::IIONumber(v47, v52[2]);
  IIODictionary::setObjectForKey(&v57, v47, v29);
  IIONumber::~IIONumber(v47);
  v35 = *v52 * v34;
  v36 = v35;
  if ((v35 & 0x80000000) != 0)
  {
    _cg_jpeg_mem_term("IIO_CreateBiPlanarIOSurfaceWithFormat", 1041, "IOSurface does not support chroma planeSize larger than INT32_MAX");
    goto LABEL_32;
  }

  IIONumber::IIONumber(v47, v35);
  IIODictionary::setObjectForKey(&v57, v47, v32);
  IIONumber::~IIONumber(v47);
  v37 = v36 + v31;
  if ((v37 & 0x80000000) != 0)
  {
    _cg_jpeg_mem_term("IIO_CreateBiPlanarIOSurfaceWithFormat", 1044, "IOSurface does not support allocSize larger than INT32_MAX");
    goto LABEL_32;
  }

  IIOArray::addObject(&v54, v58);
  IIODictionary::setObjectForKey(&v63, v55, *MEMORY[0x1E696D0A8]);
  v38 = v46;
  if (v46)
  {
    v39 = 0;
    v40 = v45;
  }

  else
  {
    if (!a11)
    {
      v39 = 0;
      goto LABEL_17;
    }

    v39 = _ImageIO_Malloc(v37, 4, &v53, kImageMalloc_IOSurface_Data, 0, 0);
    v40 = v53;
    v38 = v39;
    if (!v39)
    {
      goto LABEL_17;
    }
  }

  if (v40)
  {
    IIONumber::IIONumber(v47, v28);
    IIODictionary::setObjectForKey(&v63, value, *MEMORY[0x1E696CE58]);
    IIONumber::~IIONumber(v47);
    IIONumber::IIONumber(v47, v40);
    IIODictionary::setObjectForKey(&v63, value, *MEMORY[0x1E696CE30]);
    IIONumber::~IIONumber(v47);
    IIONumber::IIONumber(v47, v38);
    IIODictionary::setObjectForKey(&v63, value, *MEMORY[0x1E696CEB8]);
    IIONumber::~IIONumber(v47);
  }

LABEL_17:
  v41 = IOSurfaceCreate(v64);
  v42 = v41;
  if (v41)
  {
    IOSurfaceSetValue(v41, *MEMORY[0x1E696CF98], @"ImageIO");
    if (v39)
    {
      IIONumber::IIONumber(v47, v53);
      IOSurfaceSetValue(v42, @"iosurface_plane_datasize", value);
      IIONumber::~IIONumber(v47);
      IOSurfaceSetValue(v42, @"com.apple.ImageIO.ImageIO_Malloced", *MEMORY[0x1E695E4D0]);
    }

    goto LABEL_20;
  }

  LogError("IIO_CreateBiPlanarIOSurfaceWithFormat", 1088, "*** ERROR: IOSurfaceCreate failed (kIOSurfaceClientAddress)\n");
  if (v39)
  {
    _ImageIO_Free(v39, v53);
  }

  v42 = 0;
  v43 = -50;
LABEL_26:
  if (a12)
  {
    *a12 = v43;
  }

  IIOArray::~IIOArray(&v54);
  IIODictionary::~IIODictionary(&v57);
  IIODictionary::~IIODictionary(&v60);
  IIODictionary::~IIODictionary(&v63);
  return v42;
}

void sub_186018D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  IIONumber::~IIONumber(&a12);
  IIOArray::~IIOArray(&a24);
  IIODictionary::~IIODictionary(&a27);
  IIODictionary::~IIODictionary(&a30);
  IIODictionary::~IIODictionary((v30 - 144));
  _Unwind_Resume(a1);
}

__IOSurface *IIO_CreateIOSurfaceWithFormatAndBuffer(unint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned __int8 *a5, uint64_t a6, _BOOL4 a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v11 = a4;
  v12 = a3;
  v65[0] = 0;
  v15 = a3 + 15;
  if (((a3 + 15) & 0xFFFFFFF0) != a3)
  {
    v16 = a4 >> 24;
    v17 = MEMORY[0x1E69E9830];
    if ((a4 >> 24) <= 0x7F)
    {
      v18 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(a4 >> 24, 0x40000uLL);
    }

    v54 = a5;
    if (v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = 46;
    }

    v20 = v11 << 8 >> 24;
    v21 = a1;
    if (v20 <= 0x7F)
    {
      v22 = *(v17 + 4 * v20 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(v11 << 8 >> 24, 0x40000uLL);
    }

    v23 = v17;
    if (v22)
    {
      v24 = v20;
    }

    else
    {
      v24 = 46;
    }

    v25 = v11 >> 8;
    v26 = a2;
    if (v25 <= 0x7F)
    {
      v27 = *(v23 + 4 * v25 + 60) & 0x40000;
    }

    else
    {
      v27 = __maskrune(v11 >> 8, 0x40000uLL);
    }

    v28 = v15 & 0xFFFFFFF0;
    if (v27)
    {
      v29 = v25;
    }

    else
    {
      v29 = 46;
    }

    if (v11 <= 0x7F)
    {
      v30 = *(v23 + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v30 = __maskrune(v11, 0x40000uLL);
    }

    if (v30)
    {
      v31 = v11;
    }

    else
    {
      v31 = 46;
    }

    _cg_jpeg_mem_term("IIO_CreateIOSurfaceWithFormatAndBuffer", 1122, "*** IIO_CreateIOSurfaceWithFormatAndBuffer: '%c%c%c%c':  rowBytes: %d   alignedRowBytes: %d\n", v19, v24, v29, v31, v12, v28);
    a1 = v21;
    a5 = v54;
    a2 = v26;
    v9 = a6;
    v8 = a7;
  }

  if (v11 <= 1380410944)
  {
    if (v11 <= 1111970368)
    {
      if (v11 == 875704422 || v11 == 875704934)
      {
        goto LABEL_48;
      }

      v33 = 875836518;
LABEL_47:
      if (v11 == v33)
      {
        goto LABEL_48;
      }

LABEL_96:
      IIO_CreateIOSurfaceWithFormatAndBuffer(v11);
      BiPlanarIOSurfaceWithFormat = 0;
LABEL_49:
      v37 = a5;
      if (a5)
      {
        return BiPlanarIOSurfaceWithFormat;
      }

LABEL_92:
      if (v37 && !BiPlanarIOSurfaceWithFormat)
      {
        _ImageIO_Free(v37, v65[0]);
      }

      return BiPlanarIOSurfaceWithFormat;
    }

    if (v11 == 1111970369)
    {
      goto LABEL_43;
    }

    if (v11 == 1278226488)
    {
      v35 = 1;
      goto LABEL_54;
    }

    v34 = 1380401729;
  }

  else
  {
    if (v11 > 1815491697)
    {
      if (v11 > 2019963441)
      {
        if (v11 == 2019963442)
        {
LABEL_48:
          v66.width = a1;
          v66.height = a2;
          v67.width = 16.0;
          v67.height = 16.0;
          BiPlanarIOSurfaceWithFormat = IIO_CreateBiPlanarIOSurfaceWithFormat(v11, v66, v67, 0x10u, 0, 0, 0, 0, 0, a8, v8, v62);
          goto LABEL_49;
        }

        v32 = 13364;
        goto LABEL_46;
      }

      if (v11 != 1815491698)
      {
        v32 = 12848;
LABEL_46:
        v33 = v32 | 0x78660000;
        goto LABEL_47;
      }

LABEL_51:
      v35 = 8;
      goto LABEL_54;
    }

    if (v11 == 1380410945)
    {
      v35 = 16;
      goto LABEL_54;
    }

    if (v11 == 1380411457)
    {
      goto LABEL_51;
    }

    v34 = 1815162994;
  }

  if (v11 != v34)
  {
    goto LABEL_96;
  }

LABEL_43:
  v35 = 4;
LABEL_54:
  if (a5 || !v8)
  {
    v65[0] = v9;
    v37 = a5;
  }

  else
  {
    if (!v12)
    {
      v12 = (v35 * a1 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (!is_mul_ok(a2, v12))
    {
      return 0;
    }

    v9 = a2 * v12;
    v38 = _ImageIO_Malloc(a2 * v12, 0, v65, kImageMalloc_IOSurface_Data, 0, 0);
    if (!v38)
    {
      return 0;
    }

    v37 = v38;
  }

  *v62 = 0;
  v63 = 0;
  v64 = 0;
  IIODictionary::IIODictionary(v62);
  IIONumber::IIONumber(v60, a1);
  IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696D130]);
  IIONumber::~IIONumber(v60);
  IIONumber::IIONumber(v60, a2);
  IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696CF58]);
  IIONumber::~IIONumber(v60);
  IIONumber::IIONumber(v60, v11);
  IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696CFC0]);
  IIONumber::~IIONumber(v60);
  IIONumber::IIONumber(v60, v35);
  IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696CE50]);
  IIONumber::~IIONumber(v60);
  IIONumber::IIONumber(v60, 2);
  IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696CF70]);
  IIONumber::~IIONumber(v60);
  v39 = a5 != 0 || v8;
  v55 = v35;
  if (v39 == 1)
  {
    v65[0] = v9;
    IIONumber::IIONumber(v60, v12);
    IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696CE58]);
    IIONumber::~IIONumber(v60);
    IIONumber::IIONumber(v60, v9);
    IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696CE30]);
    IIONumber::~IIONumber(v60);
    IIONumber::IIONumber(v60, v37);
    IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696CEB8]);
    IIONumber::~IIONumber(v60);
    IIONumber::IIONumber(v60, 0);
    v59 = v9;
    IIODictionary::setObjectForKey(v62, value, *MEMORY[0x1E696D0B0]);
    IIONumber::~IIONumber(v60);
    v40 = v12;
  }

  else
  {
    v59 = 0;
    v40 = 0;
  }

  v41 = IOSurfaceCreate(v63);
  BiPlanarIOSurfaceWithFormat = v41;
  if (v41)
  {
    IOSurfaceSetValue(v41, *MEMORY[0x1E696CF98], @"ImageIO");
    if (v39)
    {
      IOSurfaceSetValue(BiPlanarIOSurfaceWithFormat, @"com.apple.ImageIO.ImageIO_Malloced", *MEMORY[0x1E695E4D0]);
    }
  }

  else
  {
    LODWORD(v42) = HIBYTE(v11);
    if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(v11) + 60) & 0x40000) != 0)
    {
      v42 = v42;
    }

    else
    {
      v42 = 46;
    }

    v57 = v42;
    v43 = v11 << 8 >> 24;
    v44 = MEMORY[0x1E69E9830];
    if (v43 <= 0x7F)
    {
      v45 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
    }

    else
    {
      v45 = __maskrune(v11 << 8 >> 24, 0x40000uLL);
    }

    if (v45)
    {
      v46 = v43;
    }

    else
    {
      v46 = 46;
    }

    v53 = v46;
    v47 = v11 >> 8;
    if (v47 <= 0x7F)
    {
      v48 = *(v44 + 4 * v47 + 60) & 0x40000;
    }

    else
    {
      v48 = __maskrune(v11 >> 8, 0x40000uLL);
    }

    v11 = v11;
    if (v11 <= 0x7F)
    {
      v49 = *(v44 + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v49 = __maskrune(v11, 0x40000uLL);
    }

    if (v48)
    {
      v50 = v47;
    }

    else
    {
      v50 = 46;
    }

    if (v49)
    {
      v51 = v11;
    }

    else
    {
      v51 = 46;
    }

    LogError("IIO_CreateIOSurfaceWithFormatAndBuffer", 1220, "*** ERROR: IOSurfaceCreate '%c%c%c%c' failed - clientAddress: %p allocSize: 0x%08lx  size: %d x %d  rb: %d [0x%08x]  bpp: %d\n", v57, v53, v50, v51, v37, v59, a1, a2, v40, v40, v55);
  }

  IIODictionary::~IIODictionary(v62);
  if (!a5)
  {
    goto LABEL_92;
  }

  return BiPlanarIOSurfaceWithFormat;
}

void sub_1860194DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary((v17 - 120));
  _Unwind_Resume(a1);
}

void sub_1860195F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void IIO_CreateIOSurfaceWithPixelBufferAttributes(const __CFDictionary *a1)
{
  memset(v1, 0, sizeof(v1));
  IIODictionary::IIODictionary(v1, a1);
  IIODictionary::getUint32ForKey(v1, *gIIO_kCVPixelBufferWidthKey);
  IIODictionary::getUint32ForKey(v1, *gIIO_kCVPixelBufferHeightKey);
  IIODictionary::getUint32ForKey(v1, *gIIO_kCVPixelBufferPixelFormatTypeKey);
  IIO_CreateIOSurfaceProperties();
}

void sub_1860197F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IIOString::~IIOString(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

__IOSurface *IIO_CreateIOSurfaceFromImage(CGImage *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!IIO_CGImageWrapsIOSurface(a1, 1))
  {
    BitsPerComponent = CGImageGetBitsPerComponent(a1);
    AlphaInfo = CGImageGetAlphaInfo(a1);
    v7 = CGImageGetBitmapInfo(a1) & 0xF00;
    if (BitsPerComponent > 15)
    {
      if (BitsPerComponent == 16)
      {
        if (v7 != 256)
        {
LABEL_30:
          v22 = a1;
          v23 = 1815491698;
LABEL_31:
          RGhA_IOSurfaceFromImage = IIO_create_RGhA_IOSurfaceFromImage(v22, v23);
          if (!RGhA_IOSurfaceFromImage)
          {
            return RGhA_IOSurfaceFromImage;
          }

          goto LABEL_85;
        }

LABEL_29:
        v22 = a1;
        v23 = 1380411457;
        goto LABEL_31;
      }

      if (BitsPerComponent == 32)
      {
LABEL_22:
        Width = CGImageGetWidth(a1);
        Height = CGImageGetHeight(a1);
        BytesPerRow = CGImageGetBytesPerRow(a1);
        RGhA_IOSurfaceFromImage = IIO_CreateIOSurfaceWithFormatAndBuffer(Width, Height, BytesPerRow, 1380410945, 0, 0, 0, v12);
        if (!RGhA_IOSurfaceFromImage)
        {
          _cg_jpeg_mem_term("IIO_create_RGfA_IOSurfaceFromImage", 1559, "*** ERROR: failed to create IOSurface from image data provider(%p)\n", a1);
          return RGhA_IOSurfaceFromImage;
        }

        DataProvider = CGImageGetDataProvider(a1);
        v14 = IOSurfaceGetHeight(RGhA_IOSurfaceFromImage);
        v15 = IOSurfaceGetBytesPerRow(RGhA_IOSurfaceFromImage);
        if (IOSurfaceLock(RGhA_IOSurfaceFromImage, 0, 0))
        {
          goto LABEL_84;
        }

        BaseAddress = IOSurfaceGetBaseAddress(RGhA_IOSurfaceFromImage);
        if (CGDataProviderGetSizeOfData() == -1)
        {
          v42 = v14;
          Length = BytesPerRow * Height;
          v21 = malloc_type_malloc(BytesPerRow * Height, 0x100004077774924uLL);
          CGDataProviderRewind();
          CGDataProviderGetBytes();
          v18 = 0;
          BytePtr = v21;
        }

        else
        {
          v17 = CGDataProviderCopyData(DataProvider);
          if (!v17)
          {
LABEL_83:
            IOSurfaceUnlock(RGhA_IOSurfaceFromImage, 0, 0);
LABEL_84:
            ColorSpace = CGImageGetColorSpace(a1);
            IIO_IOSurfaceAddColorSpace(RGhA_IOSurfaceFromImage, ColorSpace);
LABEL_85:
            CGImageGetContentHeadroom();
            IIONumber::IIONumber(&v44, v40);
            IOSurfaceSetValue(RGhA_IOSurfaceFromImage, @"IOSurfaceContentHeadroom", *&v44.bitmapInfo);
            IIONumber::~IIONumber(&v44);
            return RGhA_IOSurfaceFromImage;
          }

          v18 = v17;
          v42 = v14;
          BytePtr = CFDataGetBytePtr(v17);
          Length = CFDataGetLength(v18);
          v21 = 0;
        }

        if (BytePtr && Length)
        {
          if (v15 * v42 == BytesPerRow * Height)
          {
            memcpy(BaseAddress, BytePtr, Length);
          }

          else
          {
            if (BytesPerRow >= v15)
            {
              v38 = v15;
            }

            else
            {
              v38 = BytesPerRow;
            }

            for (; Height; --Height)
            {
              memcpy(BaseAddress, BytePtr, v38);
              BytePtr += BytesPerRow;
              BaseAddress += v15;
            }
          }
        }

        if (v21)
        {
          free(v21);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_83;
      }
    }

    else
    {
      if (BitsPerComponent == 8)
      {
        goto LABEL_35;
      }

      if (BitsPerComponent == 10)
      {
        if (v7 == 256)
        {
          a2 = 1380411457;
        }

        else
        {
          a2 = 1815491698;
        }

        if (AlphaInfo == kCGImageAlphaNone)
        {
          a2 = 1815162994;
          v8 = 108;
          goto LABEL_45;
        }

        goto LABEL_17;
      }
    }

    _cg_jpeg_mem_term("IIO_CreateIOSurfaceFromImage", 1679, "*** ERROR: unhandled bitDepth '%d'\n", BitsPerComponent);
LABEL_17:
    if (a2 > 1380410944)
    {
      if (a2 != 1380410945)
      {
        if (a2 != 1380411457)
        {
          if (a2 != 1815491698)
          {
            goto LABEL_43;
          }

          goto LABEL_30;
        }

        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (a2 != 1111970369 && a2 != 1380401729)
    {
LABEL_43:
      v8 = a2 >> 24;
      if ((a2 >> 24) > 0x7F)
      {
        v28 = __maskrune(a2 >> 24, 0x40000uLL);
LABEL_46:
        if (v28)
        {
          v29 = v8;
        }

        else
        {
          v29 = 46;
        }

        v30 = a2 << 8 >> 24;
        if (v30 <= 0x7F)
        {
          v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
        }

        else
        {
          v31 = __maskrune(a2 << 8 >> 24, 0x40000uLL);
        }

        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = 46;
        }

        v33 = a2 >> 8;
        if (v33 <= 0x7F)
        {
          v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
        }

        else
        {
          v34 = __maskrune(a2 >> 8, 0x40000uLL);
        }

        if (v34)
        {
          v35 = v33;
        }

        else
        {
          v35 = 46;
        }

        if (a2 <= 0x7F)
        {
          v36 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60) & 0x40000;
        }

        else
        {
          v36 = __maskrune(a2, 0x40000uLL);
        }

        if (v36)
        {
          v37 = a2;
        }

        else
        {
          v37 = 46;
        }

        _cg_jpeg_mem_term("IIO_CreateIOSurfaceFromImage", 1703, "*** ERROR: unhandled pixelFormat: '%c%c%c%c'\n", v29, v32, v35, v37);
        return 0;
      }

LABEL_45:
      v28 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
      goto LABEL_46;
    }

LABEL_35:
    v24 = CGImageGetColorSpace(a1);
    v25 = CFRetain(v24);
    CGImageGetBitmapInfo(a1);
    v26 = CGImageGetAlphaInfo(a1);
    if (v26 == kCGImageAlphaNoneSkipFirst)
    {
      v27 = 5;
    }

    else
    {
      v27 = v26;
      if (v26 == kCGImageAlphaFirst)
      {
        v27 = 3;
      }

      else if (v26 == kCGImageAlphaPremultipliedFirst)
      {
        v27 = 1;
      }
    }

    *&v44.bitsPerComponent = 0x2000000008;
    v44.colorSpace = v25;
    v44.bitmapInfo = v27 | 0x2000;
    memset(&v44.version, 0, 20);
    operator new();
  }

  CGImageGetImageProvider();
  memset(&v44, 0, 24);
  IIODictionary::IIODictionary(&v44);
  if (a2)
  {
    IIONumber::IIONumber(&dest, a2);
    IIODictionary::setObjectForKey(&v44, &dest.data, @"kCGImageSurfaceFormatRequest");
    IIONumber::~IIONumber(&dest);
  }

  RGhA_IOSurfaceFromImage = CGImageProviderCopyIOSurface();
  IIODictionary::~IIODictionary(&v44);
  return RGhA_IOSurfaceFromImage;
}

__IOSurface *IIO_create_RGhA_IOSurfaceFromImage(CGImage *a1, int a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  AlphaInfo = CGImageGetAlphaInfo(a1);
  v10 = AlphaInfo;
  v13 = BitsPerPixel == 48 && AlphaInfo == kCGImageAlphaNone && BytesPerRow < 8 * Width;
  v32 = v13;
  IOSurfaceWithFormatAndBuffer = IIO_CreateIOSurfaceWithFormatAndBuffer(Width, Height, BytesPerRow, a2, 0, 0, 0, v9);
  if (IOSurfaceWithFormatAndBuffer)
  {
    DataProvider = CGImageGetDataProvider(a1);
    v16 = IOSurfaceGetHeight(IOSurfaceWithFormatAndBuffer);
    v17 = IOSurfaceGetBytesPerRow(IOSurfaceWithFormatAndBuffer);
    if (IOSurfaceLock(IOSurfaceWithFormatAndBuffer, 0, 0))
    {
      if (v10)
      {
LABEL_13:
        v18 = CGImageGetAlphaInfo(a1);
LABEL_41:
        IIO_IOSurfaceSetAlpha(IOSurfaceWithFormatAndBuffer, v18);
        ColorSpace = CGImageGetColorSpace(a1);
        IIO_IOSurfaceAddColorSpace(IOSurfaceWithFormatAndBuffer, ColorSpace);
        return IOSurfaceWithFormatAndBuffer;
      }

LABEL_40:
      v18 = kCGImageAlphaNoneSkipLast;
      goto LABEL_41;
    }

    v28 = v16;
    v31 = v17;
    BaseAddress = IOSurfaceGetBaseAddress(IOSurfaceWithFormatAndBuffer);
    if (CGDataProviderGetSizeOfData() == -1)
    {
      Length = BytesPerRow * Height;
      v30 = malloc_type_malloc(BytesPerRow * Height, 0x100004077774924uLL);
      CGDataProviderRewind();
      BytePtr = v30;
      CGDataProviderGetBytes();
      cf = 0;
      if (!v30)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = CGDataProviderCopyData(DataProvider);
      if (!v20)
      {
        goto LABEL_39;
      }

      v21 = v20;
      BytePtr = CFDataGetBytePtr(v20);
      cf = v21;
      Length = CFDataGetLength(v21);
      v30 = 0;
      if (!BytePtr)
      {
LABEL_35:
        if (v30)
        {
          free(v30);
        }

        if (cf)
        {
          CFRelease(cf);
        }

LABEL_39:
        IOSurfaceUnlock(IOSurfaceWithFormatAndBuffer, 0, 0);
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_40;
      }
    }

    if (Length)
    {
      if (v32)
      {
        rgbSrc.data = BytePtr;
        rgbSrc.height = Height;
        rgbSrc.width = Width;
        rgbSrc.rowBytes = BytesPerRow;
        rgbaDest.data = BaseAddress;
        rgbaDest.height = Height;
        if (a2 == 1380411457)
        {
          v24 = 15360;
        }

        else
        {
          v24 = -1;
        }

        rgbaDest.width = Width;
        rgbaDest.rowBytes = v31;
        vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, v24, &rgbaDest, 0, 0x10u);
      }

      else if (v28 == Height && v31 == BytesPerRow && Length == v31 * v28)
      {
        memcpy(BaseAddress, BytePtr, Length);
      }

      else
      {
        if (BytesPerRow >= v31)
        {
          v25 = v31;
        }

        else
        {
          v25 = BytesPerRow;
        }

        for (; Height; --Height)
        {
          memcpy(BaseAddress, BytePtr, v25);
          BytePtr += BytesPerRow;
          BaseAddress += v31;
        }
      }
    }

    goto LABEL_35;
  }

  _cg_jpeg_mem_term("IIO_create_RGhA_IOSurfaceFromImage", 1451, "*** ERROR: failed to create IOSurface from image data provider(%p)\n", a1);
  return IOSurfaceWithFormatAndBuffer;
}

__IOSurface *IIO_CreateIOSurfaceFromBlockSet(uint64_t a1, const __CFDictionary *a2)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  IIODictionary::IIODictionary(&v35);
  memset(v34, 0, sizeof(v34));
  IIODictionary::IIODictionary(v34, a2);
  if (CGImageBlockSetGetCount() != 1)
  {
    LogError("IIO_CreateIOSurfaceFromBlockSet", 1738, "   _createIOSurfaceFromBlockSet != 1");
    goto LABEL_44;
  }

  Property = CGImageBlockSetGetProperty();
  if (Property)
  {
    v4 = Property == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  ComponentType = CGImageBlockSetGetComponentType();
  PixelSize = CGImageBlockSetGetPixelSize();
  v8 = 1380411457;
  v9 = PixelSize;
  if (ComponentType != 5)
  {
    if (ComponentType == 2)
    {
      BoolForKey = IIODictionary::getBoolForKey(v34, @"kCGImageSourceShouldAllowFloat");
      if (BoolForKey)
      {
        v8 = 1380411457;
      }

      else
      {
        v8 = 1815491698;
      }

      goto LABEL_18;
    }

    if (ComponentType == 1)
    {
      if (PixelSize == 4)
      {
        BoolForKey = 0;
        v8 = 1111970369;
        goto LABEL_18;
      }

      _cg_jpeg_mem_term("IIO_CreateIOSurfaceFromBlockSet", 1759, "*** ERROR can't handle RGB-888 input (pixelSize=%d) (componentType=%d)\n");
    }

    else
    {
      _cg_jpeg_mem_term("IIO_CreateIOSurfaceFromBlockSet", 1792, "*** ERROR can't handle non-RGBA input (pixelSize=%d) (componentType=%d)\n");
    }

LABEL_44:
    v20 = 0;
    goto LABEL_45;
  }

  BoolForKey = 0;
LABEL_18:
  CGImageBlockSetGetImageBlock();
  CGImageBlockGetRect();
  v12 = v11;
  v14 = v13;
  IIONumber::IIONumber(&src, v8);
  IIODictionary::setObjectForKey(&v35, src.width, *MEMORY[0x1E696CFC0]);
  IIONumber::~IIONumber(&src);
  v15 = v12;
  IIONumber::IIONumber(&src, v12);
  IIODictionary::setObjectForKey(&v35, src.width, *MEMORY[0x1E696D130]);
  IIONumber::~IIONumber(&src);
  IIONumber::IIONumber(&src, v14);
  IIODictionary::setObjectForKey(&v35, src.width, *MEMORY[0x1E696CF58]);
  IIONumber::~IIONumber(&src);
  BytesPerRow = CGImageBlockGetBytesPerRow();
  v17 = BytesPerRow;
  if (v9 == 6)
  {
    v18 = 8 * v12;
  }

  else
  {
    v18 = BytesPerRow;
  }

  IIONumber::IIONumber(&src, v18);
  IIODictionary::setObjectForKey(&v35, src.width, *MEMORY[0x1E696CE58]);
  IIONumber::~IIONumber(&src);
  if (v9 == 6)
  {
    v19 = 8;
  }

  else
  {
    v19 = v9;
  }

  IIONumber::IIONumber(&src, v19);
  IIODictionary::setObjectForKey(&v35, src.width, *MEMORY[0x1E696CE50]);
  IIONumber::~IIONumber(&src);
  v20 = IOSurfaceCreate(v36);
  if (!v20)
  {
    LODWORD(v23) = HIBYTE(v8);
    v24 = MEMORY[0x1E69E9830] + 60;
    if ((*(MEMORY[0x1E69E9830] + 60 + 4 * HIBYTE(v8)) & 0x40000) != 0)
    {
      v23 = v23;
    }

    else
    {
      v23 = 46;
    }

    LODWORD(v25) = HIWORD(v8) & 0x77;
    v4 = (*(v24 + 4 * v25) & 0x40000) == 0;
    LODWORD(v26) = (v8 >> 8) & 0x7E;
    v27 = *(v24 + 4 * v26);
    v28 = *(v24 + 4 * (v8 & 0x73));
    if (v4)
    {
      v25 = 46;
    }

    else
    {
      v25 = v25;
    }

    if ((v27 & 0x40000) != 0)
    {
      v26 = v26;
    }

    else
    {
      v26 = 46;
    }

    if ((v28 & 0x40000) != 0)
    {
      v29 = v8 & 0x73;
    }

    else
    {
      v29 = 46;
    }

    LogError("IIO_CreateIOSurfaceFromBlockSet", 1876, "*** IOSurfaceCreate failed for '%c%c%c%c' (%d x %d   rb:%d)\n", v23, v25, v26, v29, v12, v14, v17);
    goto LABEL_44;
  }

  Data = CGImageBlockGetData();
  if (!IOSurfaceLock(v20, 0, 0))
  {
    BaseAddress = IOSurfaceGetBaseAddress(v20);
    if (BaseAddress)
    {
      if (BoolForKey)
      {
        src.data = Data;
        src.height = v14;
        src.width = 4 * v15;
        src.rowBytes = v17;
        dest.data = BaseAddress;
        dest.height = src.height;
        dest.width = src.width;
        dest.rowBytes = v17;
        vImageConvert_16Uto16F(&src, &dest, 0);
      }

      else if (v9 == 6)
      {
        src.data = Data;
        src.height = v14;
        src.width = v12;
        src.rowBytes = v17;
        dest.data = BaseAddress;
        dest.height = src.height;
        dest.width = src.width;
        dest.rowBytes = 8 * v15;
        vImageConvert_RGB16UtoRGBA16U(&src, 0, 0xFFFFu, &dest, 0, 0x10u);
      }

      else if (v9 == 4 && !v5)
      {
        *permuteMap = 50331906;
        src.data = Data;
        src.height = v14;
        src.width = v12;
        src.rowBytes = v17;
        dest.data = BaseAddress;
        dest.height = src.height;
        dest.width = src.width;
        dest.rowBytes = v17;
        vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0x10u);
      }

      else
      {
        memcpy(BaseAddress, Data, v17 * v14);
      }
    }

    IOSurfaceUnlock(v20, 0, 0);
  }

LABEL_45:
  IIODictionary::~IIODictionary(v34);
  IIODictionary::~IIODictionary(&v35);
  return v20;
}

void sub_18601A770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  IIODictionary::~IIODictionary(&a26);
  IIODictionary::~IIODictionary((v26 - 128));
  _Unwind_Resume(a1);
}

uint64_t IIO_IOSurfaceLogAlphaInfo(__IOSurface *a1, const char *a2)
{
  if (a1)
  {
    if ((gIIODebugFlags & 0x40000000000) != 0)
    {
      PixelFormat = IOSurfaceGetPixelFormat(a1);
      v5 = IOSurfaceCopyAllValues(a1);
      if (v5)
      {
        v6 = v5;
        memset(&v24, 0, sizeof(v24));
        memset(v23, 0, sizeof(v23));
        IIODictionary::IIODictionary(v23, v5);
        if (!IOSurfaceGetBulkAttachments())
        {
          std::string::append(&v24, "bulk: alphaUnknown  ");
        }

        IIO_LoadHEIFSymbols();
        if (IIODictionary::containsKey(v23, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
        {
          if (IIODictionary::getBoolForKey(v23, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
          {
            v7 = "alphaOpaque  ";
          }

          else
          {
            v7 = "alphaNotOpaque  ";
          }

          std::string::append(&v24, v7);
        }

        if (IIODictionary::containsKey(v23, *gIIO_kCVImageBufferAlphaChannelModeKey))
        {
          ObjectForKey = IIODictionary::getObjectForKey(v23, *gIIO_kCVImageBufferAlphaChannelModeKey);
          if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha, 0))
          {
            if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha, 0))
            {
              v9 = "unknown  ";
            }

            else
            {
              v9 = "alphaStraight  ";
            }
          }

          else
          {
            v9 = "alphaPremul  ";
          }

          std::string::append(&v24, v9);
        }

        if ((gIIODebugFlags & 0x40000000000) != 0)
        {
          v10 = PixelFormat >> 24;
          if ((PixelFormat >> 24) <= 0x7F)
          {
            v11 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
          }

          else
          {
            v11 = __maskrune(PixelFormat >> 24, 0x40000uLL);
          }

          if (v11)
          {
            v12 = v10;
          }

          else
          {
            v12 = 46;
          }

          v13 = PixelFormat << 8 >> 24;
          if (v13 <= 0x7F)
          {
            v14 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000;
          }

          else
          {
            v14 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
          }

          if (v14)
          {
            v15 = v13;
          }

          else
          {
            v15 = 46;
          }

          v16 = PixelFormat >> 8;
          if (v16 <= 0x7F)
          {
            v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
          }

          else
          {
            v17 = __maskrune(PixelFormat >> 8, 0x40000uLL);
          }

          PixelFormat = PixelFormat;
          if (PixelFormat <= 0x7F)
          {
            v18 = *(MEMORY[0x1E69E9830] + 4 * PixelFormat + 60) & 0x40000;
          }

          else
          {
            v18 = __maskrune(PixelFormat, 0x40000uLL);
          }

          if (v17)
          {
            v19 = v16;
          }

          else
          {
            v19 = 46;
          }

          if (v18)
          {
            v20 = PixelFormat;
          }

          else
          {
            v20 = 46;
          }

          v21 = &v24;
          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = v24.__r_.__value_.__r.__words[0];
          }

          ImageIOLog("☢️  %s <IOSurface:  %p> '%c%c%c%c' - %s\n", a2, a1, v12, v15, v19, v20, v21);
        }

        CFRelease(v6);
        IIODictionary::~IIODictionary(v23);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  return 0;
}

void sub_18601AB08(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t IIO_IOSurfaceGetAlpha(__IOSurface *a1)
{
  IIO_LoadJPEGSymbols();
  if (!a1)
  {
    v4 = 0;
    LODWORD(v3) = 0;
    goto LABEL_47;
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  LODWORD(v3) = PixelFormat;
  v4 = 0;
  if (PixelFormat > 1815162993)
  {
    if (PixelFormat <= 2016687155)
    {
      if (PixelFormat <= 1999843441)
      {
        if (PixelFormat != 1815162994)
        {
          v5 = 1983066168;
          goto LABEL_32;
        }
      }

      else if (PixelFormat != 1999843442)
      {
        if (PixelFormat == 2016686640)
        {
          goto LABEL_47;
        }

        v5 = 2016686642;
        goto LABEL_32;
      }

      v4 = 5;
      goto LABEL_47;
    }

    if (PixelFormat > 2019963955)
    {
      if (PixelFormat == 2019963956 || PixelFormat == 2037741158)
      {
        goto LABEL_47;
      }

      v5 = 2037741171;
    }

    else
    {
      if (PixelFormat == 2016687156 || PixelFormat == 2019963440)
      {
        goto LABEL_47;
      }

      v5 = 2019963442;
    }

LABEL_32:
    if (PixelFormat == v5)
    {
      goto LABEL_47;
    }

LABEL_33:
    v6 = IOSurfaceCopyAllValues(a1);
    if (!v6)
    {
      v4 = 0;
      goto LABEL_47;
    }

    v7 = v6;
    memset(v21, 0, sizeof(v21));
    IIODictionary::IIODictionary(v21, v6);
    v4 = 0;
    if (IOSurfaceGetBulkAttachments())
    {
      goto LABEL_46;
    }

    if (IIODictionary::containsKey(v21, *gIIO_kCVImageBufferAlphaChannelIsOpaque) && IIODictionary::getBoolForKey(v21, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
    {
      v4 = 5;
    }

    else
    {
      if (IIODictionary::containsKey(v21, *gIIO_kCVImageBufferAlphaChannelModeKey))
      {
        ObjectForKey = IIODictionary::getObjectForKey(v21, *gIIO_kCVImageBufferAlphaChannelModeKey);
        if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha, 0) == kCFCompareEqualTo)
        {
          LogError("IIO_IOSurfaceGetAlpha", 2413, "*** ERROR: IOSurface kCVImageBufferAlphaChannelMode_PremultipliedAlpha, but keys.premultipliedAlpha = %d\n", 0);
          v4 = 1;
          goto LABEL_46;
        }

        if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha, 0) == kCFCompareEqualTo)
        {
          LogError("IIO_IOSurfaceGetAlpha", 2419, "*** ERROR: IOSurface kCVImageBufferAlphaChannelMode_StraightAlpha, but keys.premultipliedAlpha = %d\n", 0);
          v4 = 3;
          goto LABEL_46;
        }
      }

      v4 = 0;
    }

LABEL_46:
    IIODictionary::~IIODictionary(v21);
    CFRelease(v7);
    goto LABEL_47;
  }

  if (PixelFormat <= 1278226487)
  {
    if (PixelFormat <= 846624120)
    {
      if (PixelFormat == 24)
      {
        goto LABEL_47;
      }

      v5 = 846624102;
    }

    else
    {
      if (PixelFormat == 846624121 || PixelFormat == 875704422)
      {
        goto LABEL_47;
      }

      v5 = 875704438;
    }

    goto LABEL_32;
  }

  if (PixelFormat > 1278226735)
  {
    if (PixelFormat == 1278226736 || PixelFormat == 1278226742)
    {
      goto LABEL_47;
    }

    v5 = 1714630712;
    goto LABEL_32;
  }

  if ((PixelFormat - 1278226488) > 0x30 || ((1 << (PixelFormat - 56)) & 0x1400000000001) == 0)
  {
    goto LABEL_33;
  }

LABEL_47:
  if ((gIIODebugFlags & 0x40000000000) != 0)
  {
    v9 = v3 >> 24;
    v10 = MEMORY[0x1E69E9830];
    if ((v3 >> 24) <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v3 >> 24, 0x40000uLL);
    }

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 46;
    }

    v13 = (v3 << 8) >> 24;
    if (v13 <= 0x7F)
    {
      v14 = *(v10 + 4 * v13 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune((v3 << 8) >> 24, 0x40000uLL);
    }

    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 46;
    }

    LODWORD(v16) = v3 >> 8;
    if (v16 <= 0x7F)
    {
      v17 = *(v10 + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v3 >> 8, 0x40000uLL);
    }

    if (v17)
    {
      v16 = v16;
    }

    else
    {
      v16 = 46;
    }

    LODWORD(v3) = v3;
    if (v3 <= 0x7F)
    {
      v18 = *(v10 + 4 * v3 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v3, 0x40000uLL);
    }

    if (v18)
    {
      v3 = v3;
    }

    else
    {
      v3 = 46;
    }

    v19 = IIO_AlphaInfoString(v4);
    ImageIOLog("☢️  IIO_IOSurfaceGetAlpha <IOSurface:  %p> '%c%c%c%c' -  alpha:%s\n", a1, v12, v15, v16, v3, v19);
  }

  return v4;
}

uint64_t IIO_IOSurfaceSetAlpha(__IOSurface *a1, CGImageAlphaInfo a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  IIO_LoadHEIFSymbols();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 132;
  if (IOSurfaceGetBulkAttachments())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  if (a2 - 1 <= 1)
  {
    BYTE4(v18) = 2;
    v4 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
LABEL_9:
    v6 = *v4;
    v7 = &gIIO_kCVImageBufferAlphaChannelModeKey;
    goto LABEL_10;
  }

  if (a2 - 3 <= 1)
  {
    BYTE4(v18) = 1;
    v4 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
    goto LABEL_9;
  }

  BYTE4(v18) = 0;
  if (a2 == kCGImageAlphaNone)
  {
    goto LABEL_11;
  }

  v7 = &gIIO_kCVImageBufferAlphaChannelIsOpaque;
  v6 = MEMORY[0x1E695E4D0];
LABEL_10:
  IOSurfaceSetValue(a1, **v7, *v6);
LABEL_11:
  IOSurfaceSetBulkAttachments2();
  if ((gIIODebugFlags & 0x40000000000) != 0)
  {
    strcpy(&__p, "IIO_IOSurfaceSetAlpha ");
    *(&__p.__r_.__value_.__s + 23) = 22;
    v8 = IIO_AlphaInfoString(a2);
    std::string::append(&__p, v8);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    IIO_IOSurfaceLogAlphaInfo(a1, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_18601B1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

vImage_Error IIO_IOSurfacePremultiply(__IOSurface *a1)
{
  Alpha = IIO_IOSurfaceGetAlpha(a1);
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (Alpha != 3)
  {
    return 4294967246;
  }

  v4 = PixelFormat;
  if (IOSurfaceLock(a1, 0, 0))
  {
    return 4294967246;
  }

  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  v11.data = IOSurfaceGetBaseAddress(a1);
  v11.height = Height;
  v11.width = Width;
  v11.rowBytes = BytesPerRow;
  if (v4 <= 1380411456)
  {
    if (v4 == 1111970369 || v4 == 1380401729)
    {
      v10 = vImagePremultiplyData_RGBA8888(&v11, &v11, 0x10u);
      goto LABEL_14;
    }

LABEL_12:
    IOSurfaceUnlock(a1, 0, 0);
    return -50;
  }

  if (v4 == 1380411457)
  {
    v10 = vImagePremultiplyData_RGBA16F(&v11, &v11, 0x10u);
  }

  else
  {
    if (v4 != 1815491698)
    {
      goto LABEL_12;
    }

    v10 = vImagePremultiplyData_RGBA16U(&v11, &v11, 0x10u);
  }

LABEL_14:
  v5 = v10;
  IOSurfaceUnlock(a1, 0, 0);
  if (!v5)
  {
    IIO_IOSurfaceSetAlpha(a1, kCGImageAlphaPremultipliedLast);
  }

  return v5;
}

vImage_Error IIOSurfaceCopyAlphaValuesFromSource(__IOSurface *a1, __IOSurface *a2)
{
  Alpha = IIO_IOSurfaceGetAlpha(a1);
  v5 = 0;
  if (Alpha == kCGImageAlphaNone)
  {
    return v5;
  }

  v6 = Alpha;
  if (Alpha == kCGImageAlphaNoneSkipLast)
  {
    return v5;
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v8 = IOSurfaceGetPixelFormat(a2);
  v9 = v8;
  if (PixelFormat > 1380411456)
  {
    if (PixelFormat != 1815491698)
    {
      v10 = 26689;
LABEL_8:
      if (PixelFormat != (v10 | 0x52470000))
      {
        goto LABEL_17;
      }
    }
  }

  else if (PixelFormat != 1111970369)
  {
    v10 = 16961;
    goto LABEL_8;
  }

  if (v8 > 1380411456)
  {
    if (v8 == 1815491698)
    {
      goto LABEL_15;
    }

    v11 = 26689;
  }

  else
  {
    if (v8 == 1111970369)
    {
      goto LABEL_15;
    }

    v11 = 16961;
  }

  if (v8 == (v11 | 0x52470000))
  {
LABEL_15:
    Width = IOSurfaceGetWidth(a1);
    v57 = IOSurfaceGetWidth(a2);
    Height = IOSurfaceGetHeight(a1);
    IOSurfaceGetHeight(a2);
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    v14 = IOSurfaceGetBytesPerRow(a2);
    v60 = PixelFormat;
    v15 = IIO_BitsPerComponentForPixelFormat(PixelFormat);
    v16 = IIO_BitsPerComponentForPixelFormat(v9);
    v64 = malloc_type_malloc(BytesPerRow, 0x100004077774924uLL);
    v65 = malloc_type_malloc(v14, 0x100004077774924uLL);
    if (IOSurfaceLock(a1, 1u, 0))
    {
      v5 = 0;
      goto LABEL_114;
    }

    v63 = v14;
    v5 = 0;
    if (!IOSurfaceLock(a2, 0, 0))
    {
      v19 = v16;
      v20 = v15 >> 3;
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      v61 = IOSurfaceGetBaseAddress(a2);
      *&src.data = xmmword_186205EC0;
      v22 = v63;
      v21 = BytesPerRow;
      src.width = Width;
      src.rowBytes = BytesPerRow;
      *&origSrc.data = xmmword_186205EC0;
      origSrc.width = v57;
      origSrc.rowBytes = v63;
      dest.data = v64;
      dest.height = 1;
      dest.width = Width;
      dest.rowBytes = v20 * Width;
      newSrc.data = v65;
      newSrc.height = 1;
      newSrc.width = v57;
      newSrc.rowBytes = (v19 >> 3) * v57;
      if (Height)
      {
        v23 = v19 >> 3;
        v55 = v9;
        v24 = 0;
        v5 = 0;
        v26 = v20 == 1 && v23 == 2;
        v58 = v26;
        v28 = v20 == 2 && v23 == 1;
        v54 = v28;
        if (BytesPerRow >= v63)
        {
          v29 = v63;
        }

        else
        {
          v29 = BytesPerRow;
        }

        __n = v29;
        while (1)
        {
          src.data = &BaseAddress[v24 * v21];
          origSrc.data = &v61[v24 * v22];
          if (v15 == 16)
          {
            vImageExtractChannel_ARGB16U(&src, &dest, 3, 0x10u);
          }

          else if (v15 == 8)
          {
            vImageExtractChannel_ARGB8888(&src, &dest, 3, 0x10u);
          }

          else
          {
            _cg_jpeg_mem_term("IIOSurfaceCopyAlphaValuesFromSource", 2192, "*** ERROR: bpcSrc '%d' not handled\n", v15);
          }

          if (v15 == v19)
          {
            memcpy(v65, v64, __n);
          }

          else
          {
            if (v58)
            {
              if (v55 == 1380411457)
              {
                v30 = vImageConvert_Planar8toPlanar16F(&dest, &newSrc, 0x10u);
              }

              else
              {
                v30 = vImageConvert_Planar8To16U(&dest, &newSrc, 0x10u);
              }

LABEL_53:
              v5 = v30;
              goto LABEL_54;
            }

            if (v54)
            {
              if (v60 == 1380411457)
              {
                v30 = vImageConvert_Planar16FtoPlanar8(&dest, &newSrc, 0x10u);
              }

              else
              {
                v30 = vImageConvert_16UToPlanar8(&dest, &newSrc, 0x10u);
              }

              goto LABEL_53;
            }

            _cg_jpeg_mem_term("IIOSurfaceCopyAlphaValuesFromSource", 2216, "*** ERROR: combination of bpcSrc '%d' and bpcDst '%d' not handled\n", v15, v19);
          }

LABEL_54:
          if (v19 == 16)
          {
            v31 = Width;
            if (Width)
            {
              v32 = origSrc.data + 6;
              v33 = v65;
              do
              {
                v34 = *v33++;
                *v32 = v34;
                v32 += 4;
                --v31;
              }

              while (v31);
            }
          }

          else if (v19 == 8)
          {
            v5 = vImageOverwriteChannels_ARGB8888(&newSrc, &origSrc, &origSrc, 1u, 0x10u);
          }

          else
          {
            _cg_jpeg_mem_term("IIOSurfaceCopyAlphaValuesFromSource", 2235, "*** ERROR: bpcDst '%d' not handled\n", v19);
          }

          ++v24;
          v22 = v63;
          v21 = BytesPerRow;
          if (v24 == Height)
          {
            v9 = v55;
            goto LABEL_112;
          }
        }
      }

      v5 = 0;
LABEL_112:
      IOSurfaceUnlock(a2, 0, 0);
    }

    IOSurfaceUnlock(a1, 1u, 0);
LABEL_114:
    free(v64);
    free(v65);
    if (v60 == v9)
    {
      IIO_IOSurfaceSetAlpha(a2, v6);
    }

    return v5;
  }

LABEL_17:
  v17 = PixelFormat >> 24;
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
  }

  else
  {
    v18 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  if (v18)
  {
    v35 = v17;
  }

  else
  {
    v35 = 46;
  }

  v36 = PixelFormat << 8 >> 24;
  if (v36 <= 0x7F)
  {
    v37 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
  }

  else
  {
    v37 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
  }

  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 46;
  }

  LODWORD(v39) = PixelFormat >> 8;
  if (v39 <= 0x7F)
  {
    v40 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
  }

  else
  {
    v40 = __maskrune(PixelFormat >> 8, 0x40000uLL);
  }

  if (v40)
  {
    v39 = v39;
  }

  else
  {
    v39 = 46;
  }

  PixelFormat = PixelFormat;
  if (PixelFormat <= 0x7F)
  {
    v41 = *(MEMORY[0x1E69E9830] + 4 * PixelFormat + 60) & 0x40000;
  }

  else
  {
    v41 = __maskrune(PixelFormat, 0x40000uLL);
  }

  if (v41)
  {
    v42 = PixelFormat;
  }

  else
  {
    v42 = 46;
  }

  v43 = v9 >> 24;
  if ((v9 >> 24) <= 0x7F)
  {
    v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
  }

  else
  {
    v44 = __maskrune(v9 >> 24, 0x40000uLL);
  }

  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 46;
  }

  v46 = v9 << 8 >> 24;
  if (v46 <= 0x7F)
  {
    v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
  }

  else
  {
    v47 = __maskrune(v9 << 8 >> 24, 0x40000uLL);
  }

  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = 46;
  }

  LODWORD(v49) = v9 >> 8;
  if (v49 <= 0x7F)
  {
    v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
  }

  else
  {
    v50 = __maskrune(v9 >> 8, 0x40000uLL);
  }

  if (v50)
  {
    v49 = v49;
  }

  else
  {
    v49 = 46;
  }

  v9 = v9;
  if (v9 <= 0x7F)
  {
    v51 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v51 = __maskrune(v9, 0x40000uLL);
  }

  if (v51)
  {
    v52 = v9;
  }

  else
  {
    v52 = 46;
  }

  LogError("IIOSurfaceCopyAlphaValuesFromSource", 2256, "*** ERROR: 'IIOSurfaceCopyAlphaValuesFromSource' - cannot copy values from '%c%c%c%c' surface to '%c%c%c%c' surface\n", v35, v38, v39, v42, v45, v48, v49, v52);
  return 4294967246;
}

uint64_t IIO_BitsPerComponentForPixelFormat(__darwin_ct_rune_t a1)
{
  result = 16;
  if (a1 > 1647534391)
  {
    if (a1 > 1815491697)
    {
      if (a1 == 1815491698)
      {
        return result;
      }

      v3 = 1999843442;
    }

    else
    {
      if (a1 == 1647534392)
      {
        return 10;
      }

      v3 = 1815162994;
    }

    if (a1 != v3)
    {
      goto LABEL_17;
    }

    return 10;
  }

  if (a1 > 1380401728)
  {
    if (a1 != 1380401729)
    {
      if (a1 == 1380411457)
      {
        return result;
      }

      goto LABEL_17;
    }

    return 8;
  }

  if (a1 == 32 || a1 == 1111970369)
  {
    return 8;
  }

LABEL_17:
  v4 = a1 >> 24;
  if ((a1 >> 24) <= 0x7F)
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000;
  }

  else
  {
    v5 = __maskrune(a1 >> 24, 0x40000uLL);
  }

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 46;
  }

  v7 = a1 << 8 >> 24;
  if (v7 <= 0x7F)
  {
    v8 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(a1 << 8 >> 24, 0x40000uLL);
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 46;
  }

  LODWORD(v10) = a1 >> 8;
  if (v10 <= 0x7F)
  {
    v11 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
  }

  else
  {
    v11 = __maskrune(a1 >> 8, 0x40000uLL);
  }

  if (v11)
  {
    v10 = v10;
  }

  else
  {
    v10 = 46;
  }

  a1 = a1;
  if (a1 <= 0x7F)
  {
    v12 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x40000;
  }

  else
  {
    v12 = __maskrune(a1, 0x40000uLL);
  }

  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v13 = 46;
  }

  LogError("IIO_BitsPerComponentForPixelFormat", 72, "*** IIO_BitsPerComponentForPixelFormat - '%c%c%c%c' not handled\n", v6, v9, v10, v13);
  return 0;
}

CGColorSpace *IIO_IOSurfaceCopyColorSpace(__IOSurface *a1)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  IIO_LoadJPEGSymbols();
  v3 = CGColorSpaceCopyFromIOSurface();
  if (v3)
  {
    return v3;
  }

  v6 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CF60]);
  if (v6)
  {
    v7 = v6;
    v8 = CGColorSpaceCreateWithICCData(v6);
    if (v8)
    {
      ColorSpaceFromAttachments = v8;
      if (PixelFormat > 1647534391)
      {
        if (PixelFormat == 1999843442)
        {
          goto LABEL_23;
        }

        v9 = 1647534392;
      }

      else
      {
        if (PixelFormat == 1380410945)
        {
          goto LABEL_23;
        }

        v9 = 1380411457;
      }

      if (PixelFormat != v9)
      {
LABEL_25:
        IIO_IOSurfaceAddColorSpace(a1, ColorSpaceFromAttachments);
        CFRelease(v7);
        return ColorSpaceFromAttachments;
      }

LABEL_23:
      Extended = CGColorSpaceCreateExtended(v8);
      if (Extended)
      {
        v13 = Extended;
        CGColorSpaceRelease(ColorSpaceFromAttachments);
        ColorSpaceFromAttachments = v13;
      }

      goto LABEL_25;
    }

    CFRelease(v7);
  }

  if (PixelFormat != 1999843442 && PixelFormat != 1647534392 || (ColorSpaceFromAttachments = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]), IIO_IOSurfaceAddColorSpace(a1, ColorSpaceFromAttachments), !ColorSpaceFromAttachments))
  {
    v10 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CF98]);
    memset(v50, 0, sizeof(v50));
    IIOString::IIOString(v50, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    if (PixelFormat > 1279340599)
    {
      if ((PixelFormat - 1279340600) <= 0x30 && ((1 << (PixelFormat - 56)) & 0x1400000000001) != 0 || PixelFormat == 1279342648)
      {
        goto LABEL_31;
      }

      v11 = 1279340854;
    }

    else
    {
      if ((PixelFormat - 1278226488) <= 0x30 && ((1 << (PixelFormat - 56)) & 0x1400000000001) != 0 || PixelFormat == 1278226736)
      {
        goto LABEL_31;
      }

      v11 = 1278226742;
    }

    if (PixelFormat != v11)
    {
      IsFloat = IIO_IOSurfaceFormatIsFloat(PixelFormat);
      v49 = 0;
      memset(v48, 0, sizeof(v48));
      v47 = 132;
      if (!IOSurfaceGetBulkAttachments())
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        IIODictionary::IIODictionary(&v44);
        IIO_UpdateAttachmentsDictionaryFromIOSurfaceStruct(&v44, v48);
        ColorSpaceFromAttachments = gFunc_CVImageBufferCreateColorSpaceFromAttachments(v45);
        IIODictionary::~IIODictionary(&v44);
        if (ColorSpaceFromAttachments)
        {
          goto LABEL_57;
        }
      }

      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        v29 = IIOString::utf8String(v50);
        v30 = PixelFormat >> 24;
        if ((PixelFormat >> 24) <= 0x7F)
        {
          v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
        }

        else
        {
          v31 = __maskrune(PixelFormat >> 24, 0x40000uLL);
        }

        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = 46;
        }

        v33 = PixelFormat << 8 >> 24;
        if (v33 <= 0x7F)
        {
          v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
        }

        else
        {
          v34 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
        }

        if (v34)
        {
          v35 = v33;
        }

        else
        {
          v35 = 46;
        }

        LODWORD(v36) = PixelFormat >> 8;
        if (v36 <= 0x7F)
        {
          v37 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
        }

        else
        {
          v37 = __maskrune(PixelFormat >> 8, 0x40000uLL);
        }

        if (v37)
        {
          v36 = v36;
        }

        else
        {
          v36 = 46;
        }

        PixelFormat = PixelFormat;
        if (PixelFormat <= 0x7F)
        {
          v38 = *(MEMORY[0x1E69E9830] + 4 * PixelFormat + 60) & 0x40000;
        }

        else
        {
          v38 = __maskrune(PixelFormat, 0x40000uLL);
        }

        if (v38)
        {
          v39 = PixelFormat;
        }

        else
        {
          v39 = 46;
        }

        Width = IOSurfaceGetWidth(a1);
        Height = IOSurfaceGetHeight(a1);
        v42 = "SRGB";
        if (IsFloat)
        {
          v42 = "ExtendedLinearSRGB";
        }

        ImageIOLog("*** NOTE: IOSurface '%s' [%c%c%c%c] %ldx%ld has no kIOSurfaceColorSpace/kIOSurfaceICCProfile - using %s\n", v29, v32, v35, v36, v39, Width, Height, v42);
      }

      v43 = MEMORY[0x1E695F108];
      if (!IsFloat)
      {
        v43 = MEMORY[0x1E695F1C0];
      }

      v27 = CGColorSpaceCreateWithName(*v43);
LABEL_56:
      ColorSpaceFromAttachments = v27;
LABEL_57:
      IIOString::~IIOString(v50);
      return ColorSpaceFromAttachments;
    }

LABEL_31:
    v14 = IIO_IOSurfaceFormatIsFloat(PixelFormat);
    if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
    {
      v15 = IIOString::utf8String(v50);
      v16 = MEMORY[0x1E69E9830];
      if ((*(MEMORY[0x1E69E9830] + 60 + 4 * HIBYTE(PixelFormat)) & 0x40000) != 0)
      {
        v17 = HIBYTE(PixelFormat);
      }

      else
      {
        v17 = 46;
      }

      if ((*(MEMORY[0x1E69E9830] + 60 + 4 * BYTE2(PixelFormat)) & 0x40000) != 0)
      {
        v18 = BYTE2(PixelFormat);
      }

      else
      {
        v18 = 46;
      }

      LODWORD(v19) = PixelFormat >> 8;
      if (v19 <= 0x7F)
      {
        v20 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
      }

      else
      {
        v20 = __maskrune(PixelFormat >> 8, 0x40000uLL);
      }

      if (v20)
      {
        v19 = v19;
      }

      else
      {
        v19 = 46;
      }

      PixelFormat = PixelFormat;
      if (PixelFormat <= 0x7F)
      {
        v21 = *(v16 + 4 * PixelFormat + 60) & 0x40000;
      }

      else
      {
        v21 = __maskrune(PixelFormat, 0x40000uLL);
      }

      if (v21)
      {
        v22 = PixelFormat;
      }

      else
      {
        v22 = 46;
      }

      v23 = IOSurfaceGetWidth(a1);
      v24 = IOSurfaceGetHeight(a1);
      v25 = "GenericGrayGamma2_2";
      if (v14)
      {
        v25 = "ExtendedLinearGray";
      }

      ImageIOLog("*** NOTE: IOSurface '%s' [%c%c%c%c] %ldx%ld has no kIOSurfaceColorSpace/kIOSurfaceICCProfile - using %s\n", v15, v17, v18, v19, v22, v23, v24, v25);
    }

    v26 = MEMORY[0x1E695F0F8];
    if (!v14)
    {
      v26 = MEMORY[0x1E695F128];
    }

    v27 = CGColorSpaceCreateWithName(*v26);
    goto LABEL_56;
  }

  return ColorSpaceFromAttachments;
}

uint64_t IIO_CreateIOSurfaceContext(__IOSurface *a1, CGColorSpace *a2)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (PixelFormat == 1111970369)
  {
    v6 = 8194;
    v7 = 8;
    v8 = 32;
    goto LABEL_8;
  }

  v5 = PixelFormat;
  if (PixelFormat == 1815491698)
  {
    v6 = 4097;
    goto LABEL_6;
  }

  if (PixelFormat == 1380411457)
  {
    v6 = 4353;
LABEL_6:
    v7 = 16;
    v8 = 64;
LABEL_8:
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);

    return MEMORY[0x1EEDB9F30](a1, Width, Height, v7, v8, a2, v6);
  }

  v11 = PixelFormat >> 24;
  v12 = MEMORY[0x1E69E9830];
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v13 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 46;
  }

  v15 = (v5 << 8) >> 24;
  if (v15 <= 0x7F)
  {
    v16 = *(v12 + 4 * v15 + 60) & 0x40000;
  }

  else
  {
    v16 = __maskrune((v5 << 8) >> 24, 0x40000uLL);
  }

  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 46;
  }

  LODWORD(v18) = v5 >> 8;
  if (v18 <= 0x7F)
  {
    v19 = *(v12 + 4 * v18 + 60) & 0x40000;
  }

  else
  {
    v19 = __maskrune(v5 >> 8, 0x40000uLL);
  }

  if (v19)
  {
    v18 = v18;
  }

  else
  {
    v18 = 46;
  }

  v5 = v5;
  if (v5 <= 0x7F)
  {
    v20 = *(v12 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v20 = __maskrune(v5, 0x40000uLL);
  }

  if (v20)
  {
    v21 = v5;
  }

  else
  {
    v21 = 46;
  }

  _cg_jpeg_mem_term("IIO_CreateIOSurfaceContext", 2562, "*** Unsupported pixel format %c%c%c%c\n", v14, v17, v18, v21);
  return 0;
}

__IOSurface *IIO_CreateIOSurfaceWithAlphaFlattened(__IOSurface *a1, CGImageAlphaInfo a2)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v5 = PixelFormat;
  if (PixelFormat != 1380401729 && PixelFormat != 1111970369)
  {
    return 0;
  }

  v6 = CGColorSpaceCopyFromIOSurface();
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  SurfaceWithFormat = IIO_CreateSurfaceWithFormat(v5, Width, Height, v6);
  CGColorSpaceRelease(v6);
  if (SurfaceWithFormat)
  {
    v11 = IOSurfaceGetBytesPerRow(SurfaceWithFormat);
    IOSurfaceIncrementUseCount(SurfaceWithFormat);
    if (!IOSurfaceLock(a1, 1u, 0))
    {
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      if (!IOSurfaceLock(SurfaceWithFormat, 0, 0))
      {
        v14 = IOSurfaceGetBaseAddress(SurfaceWithFormat);
        if (BaseAddress)
        {
          if (v14)
          {
            rgbaSrc.data = BaseAddress;
            rgbaSrc.height = Height;
            rgbaSrc.width = Width;
            rgbaSrc.rowBytes = BytesPerRow;
            rgbaDst.data = v14;
            rgbaDst.height = Height;
            rgbaDst.width = Width;
            rgbaDst.rowBytes = v11;
            *rgbaBackgroundColorPtr = -16777216;
            vImageFlatten_RGBA8888(&rgbaSrc, &rgbaDst, rgbaBackgroundColorPtr, a2 - 1 < 2, 0);
            IOSurfaceUnlock(SurfaceWithFormat, 0, 0);
            IOSurfaceUnlock(a1, 1u, 0);
            return SurfaceWithFormat;
          }
        }
      }

      IOSurfaceUnlock(a1, 1u, 0);
    }

    CFRelease(SurfaceWithFormat);
    return 0;
  }

  return SurfaceWithFormat;
}

void IIO_UpdatePlaneDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, IIODictionary *a7)
{
  IIONumber::IIONumber(v13, a1);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696D0C8]);
  IIONumber::~IIONumber(v13);
  IIONumber::IIONumber(v13, a2);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696D090]);
  IIONumber::~IIONumber(v13);
  IIONumber::IIONumber(v13, a3);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696CFE8]);
  IIONumber::~IIONumber(v13);
  IIONumber::IIONumber(v13, a4);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696D0B0]);
  IIONumber::~IIONumber(v13);
  IIONumber::IIONumber(v13, a5);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696D0B8]);
  IIONumber::~IIONumber(v13);
  if (a6)
  {
    IIONumber::IIONumber(v13, a6);
    IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696CFE0]);
    IIONumber::~IIONumber(v13);
  }
}

void sub_18601C64C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void png_write_rows_sized(uint64_t a1, void **a2, int a3, size_t a4)
{
  if (a1)
  {
    v4 = a3;
    if (a3)
    {
      v8 = &a2[a3];
      v9 = a2;
      while (v9 >= a2)
      {
        v10 = v9 + 1;
        if ((v9 + 1) > v8 || v9 > v10 || *v9 > *v9 + a4)
        {
          break;
        }

        _cg_png_write_row_sized(a1, *v9, a4);
        v9 = v10;
        if (!--v4)
        {
          return;
        }
      }

      __break(0x5519u);
    }
  }
}

void png_write_rows(uint64_t a1, void **a2, int a3)
{
  if (a1)
  {
    v3 = *(a1 + 292);
    if ((*(a1 + 436) * *(a1 + 433)) >= 8u)
    {
      v4 = v3 * ((*(a1 + 436) * *(a1 + 433)) >> 3);
    }

    else
    {
      v4 = (v3 * (*(a1 + 436) * *(a1 + 433)) + 7) >> 3;
    }

    png_write_rows_sized(a1, a2, a3, v4);
  }
}

void png_write_image_sized(uint64_t a1, void **a2, int a3)
{
  if (a1)
  {
    v6 = *(a1 + 292);
    v7 = ((*(a1 + 433) * *(a1 + 436)) * v6 + 7) >> 3;
    v8 = v6 * ((*(a1 + 433) * *(a1 + 436)) >> 3);
    v9 = (*(a1 + 433) * *(a1 + 436)) >= 8u ? v8 : v7;
    v10 = _cg_png_set_interlace_handling(a1);
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = 0;
      v13 = &a2[a3];
      v14 = *(a1 + 284);
      while (!v14)
      {
LABEL_14:
        if (++v12 == v11)
        {
          return;
        }
      }

      v15 = 0;
      v16 = a2;
      while (v16 >= a2)
      {
        v17 = v16 + 1;
        if ((v16 + 1) > v13 || v16 > v17 || *v16 > *v16 + v9)
        {
          break;
        }

        _cg_png_write_row_sized(a1, *v16, v9);
        ++v15;
        v14 = *(a1 + 284);
        v16 = v17;
        if (v15 >= v14)
        {
          goto LABEL_14;
        }
      }

      __break(0x5519u);
    }
  }
}

void png_write_image(uint64_t a1, void **a2)
{
  if (a1)
  {
    if (*(a1 + 284))
    {
      __break(0x5519u);
    }

    else
    {
      png_write_image_sized(a1, a2, 0);
    }
  }
}

void _cg_png_write_row(uint64_t a1, char *a2)
{
  v2 = *(a1 + 292);
  if ((*(a1 + 436) * *(a1 + 432)) >= 8u)
  {
    v3 = v2 * ((*(a1 + 436) * *(a1 + 432)) >> 3);
  }

  else
  {
    v3 = (v2 * (*(a1 + 436) * *(a1 + 432)) + 7) >> 3;
  }

  if (&a2[v3] < a2)
  {
    __break(0x5519u);
  }

  else
  {
    _cg_png_write_row_sized(a1, a2, v3);
  }
}

uint64_t _cg_png_write_flush(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 308) < *(result + 288))
    {
      png_compress_IDAT(result, 0, 0, 2);
      *(v1 + 484) = 0;

      return png_flush(v1);
    }
  }

  return result;
}

void (**_cg_png_write_frame_head(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, unsigned __int16 a9, Bytef a10, unsigned __int8 a11))(void)
{
  if ((a2[10] & 2) == 0)
  {
    _cg_png_error(a1, "png_write_frame_head(): acTL not set");
  }

  png_write_reset(a1);
  result = png_write_reinit(a1, a2, a4, a5);
  if (*(a1 + 964) || (*(a1 + 920) & 1) == 0)
  {

    return png_write_fcTL(a1, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

size_t (*_cg_TIFFSetWarningHandler(size_t (*a1)(const char *a1, const char *a2, va_list a3)))(const char *a1, const char *a2, va_list a3)
{
  v1 = _TIFFwarningHandler;
  _TIFFwarningHandler = a1;
  return v1;
}

const char *TIFFWarning(const char *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = result;
  if (_TIFFwarningHandler)
  {
    result = _TIFFwarningHandler(result, a2, &a9);
  }

  if (_TIFFwarningHandlerExt)
  {
    return _TIFFwarningHandlerExt(0, v10, a2, &a9);
  }

  return result;
}

uint64_t TIFFWarningExtR(uint64_t result, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = result;
  if (!result || !*(result + 1344) || (result = (*(result + 1344))(result, *(result + 1352), a2, a3, &a9), !result))
  {
    if (_TIFFwarningHandler)
    {
      result = _TIFFwarningHandler(a2, a3, &a9);
    }

    if (_TIFFwarningHandlerExt)
    {
      if (v11)
      {
        v12 = *(v11 + 1200);
      }

      else
      {
        v12 = 0;
      }

      return (_TIFFwarningHandlerExt)(v12, a2, a3, &a9);
    }
  }

  return result;
}

void CGImagePluginReadRawXMPProps(const __CFDictionary *a1, const char *a2, uint64_t a3)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImagePluginReadRawXMPProps", 0, 0, -1, 0);
  }

  v6 = 0;
  if (a1 && *MEMORY[0x1E695E738] != a1)
  {
    v6 = CFDictionaryGetValue(a1, @"XMP_FROM_SIDECAR") != 0;
  }

  CGImagePluginReadRawXMPPropsInternal(a1, a2, a3, 0, 0, v6);
}

void CGImagePluginReadRawXMPPropsInternal(__CFDictionary *a1, const char *a2, uint64_t a3, const char *a4, unint64_t a5, int a6)
{
  if (a6)
  {
    MetadataFromXMPSidecarData = CreateMetadataFromXMPSidecarData(a2, a3);
    v8 = MetadataFromXMPSidecarData;
    v9 = 16;
  }

  else
  {
    MetadataFromXMPSidecarData = CreateMetadataFromExtendedXMPData(a2, a3, a4);
    v8 = MetadataFromXMPSidecarData;
    v9 = 8;
  }

  metadataSetSource(MetadataFromXMPSidecarData, v9);
  if (v8)
  {
    CFDictionaryAddValue(a1, @"{XMP}", v8);
    CFDictionaryAddValue(a1, @"needsPostProcessing", *MEMORY[0x1E695E4D0]);

    CFRelease(v8);
  }

  else
  {
    v10 = *MEMORY[0x1E695E4D0];

    CFDictionaryAddValue(a1, @"needsPostProcessing", v10);
  }
}

void CGImagePluginReadRawXMPSidecarProps(__CFDictionary *a1, const char *a2, uint64_t a3)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImagePluginReadRawXMPSidecarProps", 0, 0, -1, 0);
  }

  CGImagePluginReadRawXMPPropsInternal(a1, a2, a3, 0, 0, 1);
}

uint64_t IIOGetOrientationFromXMPData(const char *a1, size_t __len)
{
  v3 = __len;
  v4 = strnstr(a1, "tiff:Orientation", __len);
  if (!v4)
  {
    return 1;
  }

  v5 = (v4 + 16);
  if (v4 + 16 >= &a1[v3])
  {
LABEL_6:
    v8 = 1;
  }

  else
  {
    v6 = &a1[v3] - v4 - 16;
    while (1)
    {
      v7 = *v5;
      if ((v7 - 58) >= 0xFFFFFFF6)
      {
        break;
      }

      ++v5;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v8 = v7 - 48;
  }

  if (v8 - 9 < 0xFFFFFFF8)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void HEIFGroup::~HEIFGroup(HEIFGroup *this)
{
  *this = &unk_1EF4D8C70;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1EF4D8C70;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x186602850);
}

uint64_t HEIFGroup::setLeftImage(HEIFGroup *this, int a2)
{
  if (*(this + 4) != 1937007986)
  {
    v4 = "*** ERROR cannot add left image to non 'ster' group";
LABEL_7:
    puts(v4);
    return 4294967246;
  }

  if (*(this + 5) != -1)
  {
    v4 = "*** ERROR left image was already set";
    goto LABEL_7;
  }

  result = 0;
  *(this + 5) = a2;
  return result;
}

uint64_t HEIFGroup::setRightImage(HEIFGroup *this, int a2)
{
  if (*(this + 4) != 1937007986)
  {
    v4 = "*** ERROR cannot add right image to non 'ster' group";
LABEL_7:
    puts(v4);
    return 4294967246;
  }

  if (*(this + 6) != -1)
  {
    v4 = "*** ERROR right image was already set";
    goto LABEL_7;
  }

  result = 0;
  *(this + 6) = a2;
  return result;
}

uint64_t HEIFGroup::setMonoImage(HEIFGroup *this, int a2)
{
  if (*(this + 4) != 1937007986)
  {
    v4 = "*** ERROR cannot add mono image to non 'ster' group";
LABEL_7:
    puts(v4);
    return 4294967246;
  }

  if (*(this + 7) != -1)
  {
    v4 = "*** ERROR mono image was already set";
    goto LABEL_7;
  }

  result = 0;
  *(this + 7) = a2;
  return result;
}

uint64_t HEIFGroup::setOtherImage(HEIFGroup *this, int a2)
{
  if (*(this + 4) == 1634497650)
  {
    v5 = *(this + 7);
    v4 = *(this + 8);
    if (v5 >= v4)
    {
      v7 = *(this + 6);
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 2;
      v10 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(this + 48, v13);
      }

      v14 = (v5 - v7) >> 2;
      v15 = (4 * v9);
      v16 = (4 * v9 - 4 * v14);
      *v15 = a2;
      v6 = v15 + 1;
      memcpy(v16, v7, v8);
      v17 = *(this + 6);
      *(this + 6) = v16;
      *(this + 7) = v6;
      *(this + 8) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v6 = v5 + 4;
    }

    result = 0;
    *(this + 7) = v6;
  }

  else
  {
    puts("*** ERROR cannot add other-image to non 'altr' group");
    return 4294967246;
  }

  return result;
}

void HEIFWritePlugin::HEIFWritePlugin(HEIFWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, int a4)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1212500294);
  *v7 = &unk_1EF4D8C90;
  v7[12] = 0;
  v7[13] = 0;
  v7[14] = 0;
  IIO_LoadHEIFSymbols();
  *(this + 10) = a4;
  *(this + 6) = IIOImagePlus::sourceImageProvider(a3);
  *(this + 7) = 0;
  v8 = IIOImageDestination::utType(a3);
  v9 = CFStringCompare(v8, @"public.heics", 0);
  *(this + 125) = v9 == kCFCompareEqualTo;
  if (v9 == kCFCompareEqualTo && (gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("seq  _creatingHEIFSequence: YES\n");
  }

  *(this + 124) = 0;
  *(this + 16) = -1;
  *(this + 30) = 0;
}

void sub_18601D224(_Unwind_Exception *a1, uint64_t a2, const char *a3)
{
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 104) = v6;
    operator delete(v6);
  }

  _cg_jpeg_mem_term(v3, a2, a3);
  _Unwind_Resume(a1);
}

void HEIFWritePlugin::~HEIFWritePlugin(HEIFWritePlugin *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4D8C90;
  v4 = *(this + 12);
  v5 = *(this + 13);
  if (v4 != v5)
  {
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = *(this + 12);
  }

  *(this + 13) = v4;
  if (*(this + 7))
  {
    gFunc_CMPhotoCompressionSessionReleaseHardwareResources();
    CFRelease(*(this + 7));
    *(this + 7) = 0;
    v4 = *(this + 12);
  }

  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  HEIFWritePlugin::~HEIFWritePlugin(this, a2, a3);

  JUMPOUT(0x186602850);
}

CFDataRef HEIFWritePlugin::createExifData(HEIFWritePlugin *this, IIODictionary *a2)
{
  length = 0;
  ExifBufferFromPropertiesJPEG = CreateExifBufferFromPropertiesJPEG(a2, 0, 0, 0, 0, @"public.jpeg", &length);
  if (ExifBufferFromPropertiesJPEG)
  {
    v3 = ExifBufferFromPropertiesJPEG;
    v4 = CFDataCreate(*MEMORY[0x1E695E480], ExifBufferFromPropertiesJPEG, length);
    free(v3);
  }

  else
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("*** HEIFWritePlugin::createExifData - no Exif data???\n");
    }

    return 0;
  }

  return v4;
}

uint64_t HEIFWritePlugin::createXMPData(HEIFWritePlugin *this, IIODictionary *a2, const __CFData **a3, const __CFData **a4, const __CFData **a5)
{
  ObjectForKey = IIODictionary::getObjectForKey(a2, @"{MetaData}");
  if (ObjectForKey)
  {
    v11 = ObjectForKey;
    CFRetain(ObjectForKey);
    goto LABEL_4;
  }

  v11 = CGImageMetadataCreateFromLegacyProps(a2);
  if (v11)
  {
LABEL_4:
    if ((CGImageMetadataCreateExtendedXMPWithEXIFFiltered(v11, a3, a4, a5, *(this + 10), 1) & 1) == 0 && *(this + 36) == 1)
    {
      _cg_jpeg_mem_term("createXMPData", 422, "*** HEIFWritePlugin::createXMPData - CGImageMetadataCreateExtendedXMPWithEXIFFiltered failed\n");
    }

    CFRelease(v11);
    return 0;
  }

  if (*(this + 36))
  {
    _cg_jpeg_mem_term("createXMPData", 422, "*** HEIFWritePlugin::createXMPData - CGImageMetadataCreateExtendedXMPWithEXIFFiltered failed\n");
  }

  return 0;
}

void HEIFWritePlugin::updateHEIFProperties(HEIFWritePlugin *this, IIODictionary *a2, IIODictionary *a3)
{
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(a3, @"CameraExtrinsics", @"{HEIF}");
  memset(v18, 0, sizeof(v18));
  IIODictionary::IIODictionary(v18, ObjectForKeyGroup);
  if (IIODictionary::containsKey(v18, @"Position"))
  {
    v15 = 0;
    value = 0;
    v17 = 0;
    ObjectForKey = IIODictionary::getObjectForKey(v18, @"Position");
    IIOArray::IIOArray(&v15, ObjectForKey);
    if (IIOArray::getCount(&v15) == 3)
    {
      IIODictionary::setObjectForKey(a2, value, @"ExtrinsicsPosition");
    }

    else
    {
      _cg_jpeg_mem_term("updateHEIFProperties", 463, "*** ERROR: CameraExtrinsics/Position should be a CFArray with 3 entries of type 'double'\n");
    }

    IIOArray::~IIOArray(&v15);
  }

  if (IIODictionary::containsKey(v18, @"Rotation"))
  {
    v15 = 0;
    value = 0;
    v17 = 0;
    v7 = IIODictionary::getObjectForKey(v18, @"Rotation");
    IIOArray::IIOArray(&v15, v7);
    if (IIOArray::getCount(&v15) == 9)
    {
      IIODictionary::setObjectForKey(a2, value, @"ExtrinsicsRotation");
    }

    else
    {
      _cg_jpeg_mem_term("updateHEIFProperties", 472, "*** ERROR: CameraExtrinsics/Rotation should be a CFArray with 9 entries of type 'double'\n");
    }

    IIOArray::~IIOArray(&v15);
  }

  if (IIODictionary::containsKey(v18, @"CoordinateSystemID"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v18, @"CoordinateSystemID");
    IIONumber::IIONumber(&v15, Uint32ForKey);
    IIODictionary::setObjectForKey(a2, v17, @"CoordinateSystemID");
    IIONumber::~IIONumber(&v15);
  }

  v9 = IIODictionary::getObjectForKeyGroup(a3, @"CameraModel", @"{HEIF}");
  v15 = 0;
  value = 0;
  v17 = 0;
  IIODictionary::IIODictionary(&v15, v9);
  if (IIODictionary::containsKey(&v15, @"Intrinsics"))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v10 = IIODictionary::getObjectForKey(&v15, @"Intrinsics");
    IIOArray::IIOArray(&v12, v10);
    if (IIOArray::getCount(&v12) == 9)
    {
      IIODictionary::setObjectForKey(a2, v13, @"IntrinsicsMatrix");
    }

    else
    {
      _cg_jpeg_mem_term("updateHEIFProperties", 491, "*** ERROR: CameraModel/Intrinsics should be a CFArray with 9 entries of type 'double'\n");
    }

    IIOArray::~IIOArray(&v12);
  }

  if (IIODictionary::containsKey(&v15, @"ModelType"))
  {
    v11 = IIODictionary::getObjectForKey(&v15, @"ModelType");
    IIODictionary::setObjectForKey(a2, v11, @"ModelType");
  }

  IIODictionary::~IIODictionary(&v15);
  IIODictionary::~IIODictionary(v18);
}

void sub_18601D7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

__n128 HEIFWritePlugin::updateHardwareEncodeOptions(HEIFWritePlugin *this, IIODictionary *a2, IIODictionary *a3)
{
  v6 = IIO_HardwareEncoderDefaultValue();
  if (!IIODictionary::containsKey(a3, @"kCGImageDestinationEnableRestrictedEncoding") || !IIODictionary::getBoolForKey(a3, @"kCGImageDestinationEnableRestrictedEncoding"))
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    if (v6 == 1)
    {
LABEL_8:
      _cg_jpeg_mem_term("updateHardwareEncodeOptions", 560, "    setting kCMPhotoCompressionOption_ForceHighSpeed to true\n");
      v8 = &gIIO_kCMPhotoCompressionOption_ForceHighSpeed;
LABEL_10:
      IIODictionary::setObjectForKey(a2, *MEMORY[0x1E695E4D0], **v8);
      goto LABEL_11;
    }

    if (v6 == 255 && IIODictionary::containsKey(a3, @"kCGImageDestinationUseHardwareAcceleration"))
    {
      if (IIODictionary::getBoolForKey(a3, @"kCGImageDestinationUseHardwareAcceleration"))
      {
        goto LABEL_8;
      }

LABEL_9:
      _cg_jpeg_mem_term("updateHardwareEncodeOptions", 564, "    setting kCMPhotoCompressionOption_PreferSoftwareCodec to true\n");
      v8 = &gIIO_kCMPhotoCompressionOption_PreferSoftwareCodec;
      goto LABEL_10;
    }
  }

LABEL_11:
  if (*(this + 36) == 1)
  {

    return _cg_jpeg_mem_term("updateHardwareEncodeOptions", 570, "    done setting HW options\n");
  }

  return result;
}

void HEIFWritePlugin::updateCompressionOptionsSubsampling(HEIFWritePlugin *this, IIODictionary *a2, int a3, float a4)
{
  v5 = 5;
  if (a3 > 1278226487)
  {
    if (a3 <= 2019963439)
    {
      if (a3 == 1278226488 || a3 == 1278226736)
      {
        goto LABEL_18;
      }

      v6 = 1278226742;
LABEL_17:
      if (a3 == v6)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (a3 == 2019963440)
    {
      goto LABEL_23;
    }

    if (a3 != 2019963956)
    {
      if (a3 == 2019963442)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_19:
    v5 = 1;
    goto LABEL_23;
  }

  if (a3 <= 875704421)
  {
    if (a3 == 843264056)
    {
LABEL_18:
      v5 = 6;
      goto LABEL_23;
    }

    v6 = 843264310;
    goto LABEL_17;
  }

  switch(a3)
  {
    case 875704422:
      goto LABEL_23;
    case 875704934:
LABEL_14:
      v5 = 3;
      goto LABEL_23;
    case 875836518:
      goto LABEL_19;
  }

LABEL_20:
  if (a4 == 1.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

LABEL_23:
  IIONumber::IIONumber(v7, v5);
  IIODictionary::setObjectForKey(a2, value, *gIIO_kCMPhotoCompressionOption_Subsampling);
  IIONumber::~IIONumber(v7);
}

void sub_18601DAE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

CFDataRef HEIFWritePlugin::createISO5_ContentLightLevelInfoData(HEIFWritePlugin *this, CFDataRef a2, IIODictionary *a3)
{
  *bytes = 0;
  if (IIODictionary::containsKey(a3, @"ContentLightLevelInfo"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"ContentLightLevelInfo");
    memset(v8, 0, sizeof(v8));
    IIODictionary::IIODictionary(v8, ObjectForKey);
    *bytes = bswap32(IIODictionary::getUint32ForKey(v8, @"MaxContentLightLevel")) >> 16;
    *&bytes[2] = bswap32(IIODictionary::getUint32ForKey(v8, @"MaxPicAverageLightLevel")) >> 16;
    a2 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
    IIODictionary::~IIODictionary(v8);
  }

  else if (a2)
  {
    CGImageGetContentHeadroom();
    if (v6 <= 0.0)
    {
      return 0;
    }

    else
    {
      *bytes = __rev16((v6 * 203.0));
      *&bytes[2] = 0x4000;
      return CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
    }
  }

  return a2;
}

CFDataRef HEIFWritePlugin::createISO5_MasteringDisplayColorVolumeData(HEIFWritePlugin *this, CGImage *a2, IIODictionary *a3)
{
  *bytes = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0;
  if (IIODictionary::containsKey(a3, @"MasteringDisplayColorVolume"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"MasteringDisplayColorVolume");
    memset(v7, 0, sizeof(v7));
    IIODictionary::IIODictionary(v7, ObjectForKey);
    *bytes = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesXG")) >> 16;
    *&bytes[2] = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesYG")) >> 16;
    *&bytes[4] = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesXB")) >> 16;
    *&bytes[6] = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesYB")) >> 16;
    LOWORD(v9) = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesXR")) >> 16;
    WORD1(v9) = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesYR")) >> 16;
    WORD2(v9) = bswap32(IIODictionary::getUint32ForKey(v7, @"WhitePointX")) >> 16;
    HIWORD(v9) = bswap32(IIODictionary::getUint32ForKey(v7, @"WhitePointY")) >> 16;
    LODWORD(v10) = bswap32(IIODictionary::getUint32ForKey(v7, @"MaxDisplayMasteringLuminance"));
    HIDWORD(v10) = bswap32(IIODictionary::getUint32ForKey(v7, @"MinDisplayMasteringLuminance"));
    v4 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    IIODictionary::~IIODictionary(v7);
  }

  return v4;
}

CFDataRef HEIFWritePlugin::createISO5_AmbientViewingEnvironmentData(HEIFWritePlugin *this, CGImage *a2, IIODictionary *a3)
{
  *bytes = 0;
  v4 = 0;
  if (IIODictionary::containsKey(a3, @"AmbientViewingEnvironment"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"AmbientViewingEnvironment");
    memset(v7, 0, sizeof(v7));
    IIODictionary::IIODictionary(v7, ObjectForKey);
    *bytes = bswap32(IIODictionary::getUint32ForKey(v7, @"AmbientIlluminance"));
    *&bytes[4] = bswap32(IIODictionary::getUint32ForKey(v7, @"AmbientLightX")) >> 16;
    *&bytes[6] = bswap32(IIODictionary::getUint32ForKey(v7, @"AmbientLightY")) >> 16;
    v4 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 8);
    IIODictionary::~IIODictionary(v7);
  }

  return v4;
}

uint64_t HEIFWritePlugin::writeImageAtIndex(HEIFWritePlugin *this, IIOImagePixelDataProvider *a2, CGImage *a3, const __CFDictionary **a4, IIODictionary *a5, int a6, uint64_t *a7)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "HEIFWritePlugin::writeImageAtIndex", 0, 0, -1, 0);
  }

  v175 = 0;
  v176[0] = 0;
  v173 = 0;
  v174 = 0;
  IIODictionary::IIODictionary(&v173);
  v172 = 0;
  if (a2)
  {
    BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
    Width = IIOImageSource::count(a2);
    Height = IIO_Reader::testHeaderSize(a2);
    BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a2);
    Ref = IIOImageSource::imageReadRef(a2);
    space = IIOImagePlus::getSourceGeomColorSpace(a2);
  }

  else
  {
    if (!a3)
    {
      _cg_jpeg_mem_term("writeImageAtIndex", 789, "*** ERROR: no 'iPixelDataProvider' and no 'sourceImage'?\n");
LABEL_86:
      v162 = 0;
      v23 = 4294967246;
      goto LABEL_301;
    }

    BytesPerRow = CGImageGetBytesPerRow(a3);
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    BitmapInfo = CGImageGetBitmapInfo(a3);
    space = CGImageGetColorSpace(a3);
    Ref = a3;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(Ref);
  if (BitsPerComponent > 0xF)
  {
    v14 = (BitmapInfo >> 8) & 1;
  }

  else
  {
    v14 = 0;
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(a4, @"Depth");
  if (Uint32ForKey)
  {
    v16 = Uint32ForKey;
  }

  else
  {
    v16 = BitsPerComponent;
  }

  v160 = v16;
  if (BitsPerComponent < v16)
  {
    _cg_jpeg_mem_term("writeImageAtIndex", 803, "*** imageProperties-bitDepth: %d    bpc: %d  -- using: %d bit/component\n", v16, BitsPerComponent, BitsPerComponent);
    v160 = BitsPerComponent;
  }

  Model = CGColorSpaceGetModel(space);
  if (IIODictionary::getBoolForKey(a4, @"PrimaryImage") && (*(this + 124) & 1) == 0)
  {
    v152 = 1;
    *(this + 124) = 1;
  }

  else
  {
    v152 = 0;
  }

  if (IIODictionary::containsKey(a4, @"kCGImageSourceEnableRestrictedDecoding"))
  {
    BoolForKey = IIODictionary::getBoolForKey(a4, @"kCGImageSourceEnableRestrictedDecoding");
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      v18 = "❌";
      if (BoolForKey)
      {
        v18 = "✅";
      }

      ImageIOLog("••• EnableRestrictedDecoding: %s  | %s:%d\n", v18, "writeImageAtIndex", 827);
    }
  }

  else
  {
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      ImageIOLog("••• EnableRestrictedDecoding: not set  | %s:%d\n", "writeImageAtIndex", 830);
    }

    LOBYTE(BoolForKey) = 0;
  }

  v19 = -1.0;
  if (IIODictionary::containsKey(a4, @"kCGImageDestinationLossyCompressionQuality"))
  {
    FloatForKey = IIODictionary::getFloatForKey(a4, @"kCGImageDestinationLossyCompressionQuality");
    if (FloatForKey > 1.0 || FloatForKey < 0.0)
    {
      v19 = -1.0;
    }

    else
    {
      v19 = FloatForKey;
    }
  }

  v164 = BitmapInfo & 0x1F;
  if (BoolForKey || !IIO_CGImageWrapsIOSurface(Ref, 1))
  {
    v151 = 0;
    v23 = 4294967246;
    goto LABEL_41;
  }

  if (IIODictionary::containsKeyGroup(a4, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions"))
  {
    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(a4, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  }

  else
  {
    Uint32ForKeyGroup = 0;
  }

  CGImageGetImageProvider();
  if (*MEMORY[0x1E695E4D0] == CGImageProviderGetProperty())
  {
    LogError("writeImageAtIndex", 854, "*** ERROR: HEIF saving failed - input image cannot be decoded ('kCMPhotoError_XPCError'\n");
    goto LABEL_86;
  }

  if (!Uint32ForKeyGroup && Model == kCGColorSpaceModelRGB)
  {
    if ((v164 - 1) < 4 || v164 == 7 || v19 == 1.0)
    {
      if (v14)
      {
        v30 = 1380411457;
      }

      else
      {
        v30 = 1815491698;
      }

      if (BitsPerComponent <= 8)
      {
        Uint32ForKeyGroup = 1111970369;
      }

      else
      {
        Uint32ForKeyGroup = v30;
      }
    }

    else if (BitsPerComponent < 9 || *(this + 10) == 1785750887)
    {
      Uint32ForKeyGroup = 875704422;
    }

    else
    {
      Uint32ForKeyGroup = 2019963440;
    }
  }

  memset(&dest, 0, 24);
  IIODictionary::IIODictionary(&dest);
  v31 = IIODictionary::getUint32ForKey(a4, @"kCGImageSurfaceFormatRequest");
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = Uint32ForKeyGroup;
  }

  v151 = v32;
  IIONumber::IIONumber(permuteMap, v32);
  IIODictionary::setObjectForKey(&dest, v171, @"kCGImageSurfaceFormatRequest");
  IIONumber::~IIONumber(permuteMap);
  v33 = CGImageProviderCopyIOSurface();
  IIO_IOSurfaceLogAlphaInfo(v33, "writeImageAtIndex surface:");
  Alpha = IIO_IOSurfaceGetAlpha(v33);
  if (v164 != Alpha)
  {
    v35 = IIO_AlphaInfoString(v164);
    v36 = IIO_AlphaInfoString(Alpha);
    _cg_jpeg_mem_term("writeImageAtIndex", 901, "*** NOTE: image-alpha: %s   surface-alpha: %s\n", v35, v36);
  }

  if (v33)
  {
    if ((Alpha - 1 < 4 || Alpha == kCGImageAlphaOnly) && *(this + 10) == 1785750887 && (IOSurfaceWithAlphaFlattened = IIO_CreateIOSurfaceWithAlphaFlattened(v33, Alpha)) != 0)
    {
      CFRelease(v33);
    }

    else
    {
      IOSurfaceWithAlphaFlattened = v33;
    }

    v23 = gFunc_CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], IOSurfaceWithAlphaFlattened, 0, v176);
    if (v23)
    {
      _cg_jpeg_mem_term("writeImageAtIndex", 921, "*** CVPixelBufferCreateWithIOSurface - err=%d\n", v23);
    }

    else
    {
      v150 = IOSurfaceWithAlphaFlattened;
      PixelFormat = IOSurfaceGetPixelFormat(IOSurfaceWithAlphaFlattened);
      v40 = PixelFormat;
      v41 = PixelFormat >> 24;
      if ((PixelFormat >> 24) <= 0x7F)
      {
        v42 = *(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000;
      }

      else
      {
        v42 = __maskrune(PixelFormat >> 24, 0x40000uLL);
      }

      if (v42)
      {
        v44 = v41;
      }

      else
      {
        v44 = 46;
      }

      v163 = v44;
      v45 = (v40 << 8) >> 24;
      if (v45 <= 0x7F)
      {
        v46 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
      }

      else
      {
        v46 = __maskrune((v40 << 8) >> 24, 0x40000uLL);
      }

      if (v46)
      {
        v47 = v45;
      }

      else
      {
        v47 = 46;
      }

      v48 = v40 >> 8;
      if (v48 <= 0x7F)
      {
        v156 = *(MEMORY[0x1E69E9830] + 4 * v48 + 60) & 0x40000;
      }

      else
      {
        v156 = __maskrune(v40 >> 8, 0x40000uLL);
      }

      v40 = v40;
      if (v40 <= 0x7F)
      {
        v49 = *(MEMORY[0x1E69E9830] + 4 * v40 + 60) & 0x40000;
      }

      else
      {
        v49 = __maskrune(v40, 0x40000uLL);
      }

      if (v156)
      {
        v50 = v48;
      }

      else
      {
        v50 = 46;
      }

      if (v49)
      {
        v51 = v40;
      }

      else
      {
        v51 = 46;
      }

      _cg_jpeg_mem_term("writeImageAtIndex", 927, "*** CVPixelBufferCreateWithIOSurface: '%c%c%c%c'\n", v163, v47, v50, v51);
      BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v176[0]);
      IOSurfaceWithAlphaFlattened = v150;
    }

    CFRelease(IOSurfaceWithAlphaFlattened);
  }

  else
  {
    v23 = 4294967246;
  }

  IIODictionary::~IIODictionary(&dest);
LABEL_41:
  if (v176[0])
  {
    v162 = 0;
    if (!v23)
    {
      goto LABEL_147;
    }

    goto LABEL_299;
  }

  v24 = Height * BytesPerRow;
  if ((v24 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_316:
    v162 = 0;
    goto LABEL_301;
  }

  v162 = malloc_type_malloc(v24, 0x100004077774924uLL);
  if (!v162)
  {
    _cg_jpeg_mem_term("writeImageAtIndex", 948, "*** could not allocate outputBuffer [%d x %d]\n", Height, Width);
    goto LABEL_316;
  }

  if (a2)
  {
    IIOImagePixelDataProvider::getBytes(a2, v162);
    appleflags = _cg_png_get_appleflags(a2);
    Error = _cg_GifLastError(a2);
    BitsPerPixel = appleflags;
    v28 = Error;
  }

  else
  {
    BitsPerPixel = CGImageGetBitsPerPixel(a3);
    v28 = CGImageGetBitsPerComponent(a3);
    if (CGImageGetData() != Height)
    {
      _cg_jpeg_mem_term("writeImageAtIndex", 961, "*** could not get image data [%d x %d]  rb: %d\n", Height, Width, BytesPerRow);
      goto LABEL_301;
    }
  }

  if (Model == kCGColorSpaceModelRGB)
  {
    if ((v164 - 1) < 4 || v164 == 7)
    {
      if (v28 == 8)
      {
        v38 = 0;
        v29 = 1111970369;
        goto LABEL_133;
      }

      if (BitsPerPixel == 64)
      {
        if ((BitmapInfo & 0x100) != 0)
        {
          v29 = 1380411457;
        }

        else
        {
          v29 = 1815491698;
        }

        goto LABEL_141;
      }

      v43 = 998;
    }

    else
    {
      if (v28 == 8)
      {
        v38 = 0;
        v29 = 24;
        goto LABEL_133;
      }

      if (v28 == 16)
      {
        v38 = 0;
        v29 = 1815491698;
        goto LABEL_133;
      }

      v43 = 1008;
    }

    LogError("writeImageAtIndex", v43, "*** ERROR: unexpected bitDepth for RGB+alpha  bpc:%d  bpp:%d\n", v28, BitsPerPixel);
    v29 = 0;
    v38 = 1;
LABEL_133:
    if (BitsPerPixel == 32)
    {
      if (*(this + 10) == 1785750887)
      {
        if (_AlphaPosition(v164) == 1)
        {
          goto LABEL_138;
        }
      }

      else if (_AlphaPosition(v164) == 1)
      {
LABEL_138:
        dest.data = v162;
        dest.height = Height;
        dest.width = Width;
        dest.rowBytes = BytesPerRow;
        *permuteMap = 50331906;
        vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0);
        v29 = 1111970369;
        goto LABEL_141;
      }
    }

    if (v38)
    {
      goto LABEL_140;
    }

    goto LABEL_141;
  }

  if (Model)
  {
    LogError("writeImageAtIndex", 1012, "*** ERROR: unsupported colorSpaceModel (%d)\n", Model);
    goto LABEL_140;
  }

  if ((BitmapInfo & 0x1F) != 0)
  {
    v29 = 843264056;
    if (v28 != 8)
    {
      if (v28 != 16)
      {
        LogError("writeImageAtIndex", 974, "*** ERROR: unexpected bitDepth for grayscale+alpha  bpc:%d  bpp:%d\n");
LABEL_140:
        LogError("writeImageAtIndex", 1043, "*** ERROR: pixelFormat was not set for:  bpc:%d   bpp:%d\n", v28, BitsPerPixel);
        v29 = 0;
        goto LABEL_141;
      }

      goto LABEL_97;
    }
  }

  else
  {
    v29 = 1278226488;
    if (v28 != 8)
    {
      if (v28 != 16)
      {
        LogError("writeImageAtIndex", 982, "*** ERROR: unexpected bitDepth for grayscale  bpc:%d  bpp:%d\n");
        goto LABEL_140;
      }

LABEL_97:
      v29 = (v29 + 254);
    }
  }

LABEL_141:
  v52 = gFunc_CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], Width, Height, v29, v162, BytesPerRow, CVPixelBufferReleaseImageBlock, v162, v174, v176);
  v23 = v52;
  if (!v52)
  {
LABEL_147:
    Name = CGColorSpaceGetName(space);
    if (Name && CFStringCompare(Name, @"kCGColorSpaceDeviceRGB", 0) == kCFCompareEqualTo)
    {
      dest.data = 0;
      dest.height = 0;
      IIOColorSpace::IIOColorSpace(&dest, *MEMORY[0x1E695F1C0]);
      gFunc_CVBufferSetAttachment(v176[0], *gIIO_kCVImageBufferCGColorSpaceKey, dest.height, 1);
      IIOColorSpace::~IIOColorSpace(&dest);
    }

    else
    {
      HasOpaqueAlphaFromPixelData = gFunc_CVBufferSetAttachment(v176[0], *gIIO_kCVImageBufferCGColorSpaceKey, space, 1);
    }

    if (!a6)
    {
      HasOpaqueAlphaFromPixelData = HEIFWritePlugin::prepareHEIFWriting(this, v60, v61);
    }

    if ((v164 - 1) < 4 || v164 == 7)
    {
      LOBYTE(dest.data) = 0;
      if (gFunc_CMPhotoImageHasOpaqueAlphaFromPixelData)
      {
        HasOpaqueAlphaFromPixelData = gFunc_CMPhotoImageHasOpaqueAlphaFromPixelData(v176[0], &dest);
        if (!HasOpaqueAlphaFromPixelData)
        {
          if (LOBYTE(dest.data))
          {
            v68 = getprogname();
            v69 = IIO_AlphaInfoString(v164);
            HasOpaqueAlphaFromPixelData = LogError("writeImageAtIndex", 1094, "⭕️ ERROR: '%s' is trying to save an opaque image (%dx%d) with '%s'. This would unnecessarily increase the file size and will double (!!!) the required memory when decoding the image --> ignoring alpha.\n ", v68, Width, Height, v69);
            v164 = 5;
          }
        }
      }
    }

    if (v164 == 3)
    {
      v70 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
    }

    else
    {
      if (v164 != 1)
      {
        goto LABEL_181;
      }

      v70 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
    }

    HasOpaqueAlphaFromPixelData = gFunc_CVBufferSetAttachment(v176[0], *gIIO_kCVImageBufferAlphaChannelModeKey, **v70, 1);
LABEL_181:
    ISO5_ContentLightLevelInfoData = HEIFWritePlugin::createISO5_ContentLightLevelInfoData(HasOpaqueAlphaFromPixelData, Ref, a4);
    v73 = ISO5_ContentLightLevelInfoData;
    if (ISO5_ContentLightLevelInfoData)
    {
      gFunc_CVBufferSetAttachment(v176[0], *gIIO_kCVImageBufferContentLightLevelInfoKey, ISO5_ContentLightLevelInfoData, 1);
      CFRelease(v73);
    }

    ISO5_MasteringDisplayColorVolumeData = HEIFWritePlugin::createISO5_MasteringDisplayColorVolumeData(ISO5_ContentLightLevelInfoData, v72, a4);
    if (ISO5_MasteringDisplayColorVolumeData)
    {
      gFunc_CVBufferSetAttachment(v176[0], *gIIO_kCVImageBufferMasteringDisplayColorVolumeKey, ISO5_MasteringDisplayColorVolumeData, 1);
      CFRelease(ISO5_MasteringDisplayColorVolumeData);
    }

    v75 = IIODictionary::containsKey(a4, @"ContentColorVolume");
    ISO5_AmbientViewingEnvironmentData = HEIFWritePlugin::createISO5_AmbientViewingEnvironmentData(v75, v76, a4);
    if (ISO5_AmbientViewingEnvironmentData)
    {
      gFunc_CVBufferSetAttachment(v176[0], *gIIO_kCVImageBufferAmbientViewingEnvironmentKey, ISO5_AmbientViewingEnvironmentData, 1);
      CFRelease(ISO5_AmbientViewingEnvironmentData);
    }

    memset(&dest, 0, 24);
    IIODictionary::IIODictionary(&dest);
    if (v160 == 8 || *(this + 10) == 1785750887)
    {
      v79 = 8;
    }

    else
    {
      v79 = 10;
    }

    IIONumber::IIONumber(permuteMap, v79);
    IIODictionary::setObjectForKey(&dest, v171, *gIIO_kCMPhotoCompressionOption_BitDepth);
    IIONumber::~IIONumber(permuteMap);
    IIONumber::IIONumber(v80, *(this + 10));
    IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_CodecType);
    IIONumber::~IIONumber(permuteMap);
    if (*(this + 10) == 1752589105)
    {
      DictionaryRepresentation = IIODictionary::containsKeyGroup(a4, @"TileWidth", @"{TIFF}");
      if (DictionaryRepresentation)
      {
        DictionaryRepresentation = IIODictionary::containsKeyGroup(a4, @"TileLength", @"{TIFF}");
        if (DictionaryRepresentation)
        {
          v82 = IIODictionary::getUint32ForKeyGroup(a4, @"TileWidth", @"{TIFF}");
          DictionaryRepresentation = IIODictionary::getUint32ForKeyGroup(a4, @"TileLength", @"{TIFF}");
          v83 = (v82 & 0x7F) != 0 || v82 == 0;
          v84 = (v82 + 127) & 0xFFFFFF80;
          if (!v83)
          {
            v84 = v82;
          }

          v85 = (DictionaryRepresentation & 0x3F) != 0 || DictionaryRepresentation == 0;
          v86 = (DictionaryRepresentation + 63) & 0xFFFFFFC0;
          if (!v85)
          {
            v86 = DictionaryRepresentation;
          }

          if (v84)
          {
            if (v86)
            {
              v177.width = v84;
              v177.height = v86;
              DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v177);
              v87 = DictionaryRepresentation;
              if (DictionaryRepresentation)
              {
                IIODictionary::setObjectForKey(&dest, DictionaryRepresentation, *gIIO_kCMPhotoCompressionOption_Tiling);
                CFRelease(v87);
              }
            }
          }
        }
      }
    }

    if (v19 == -1.0)
    {
      HEIFWritePlugin::updateCompressionOptionsSubsampling(DictionaryRepresentation, &dest, v151, -1.0);
    }

    else
    {
      v88 = v151;
      if (*(this + 10) == 1785750887)
      {
        IIONumber::IIONumber(permuteMap, 3);
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
        IIONumber::~IIONumber(permuteMap);
        memset(permuteMap, 0, sizeof(permuteMap));
        v171 = 0;
        IIODictionary::IIODictionary(v89);
        IIONumber::IIONumber(v167, v19);
        IIODictionary::setObjectForKey(permuteMap, v167, *gIIO_kCMPhotoQualityControllerParameter_QualityValue);
        IIONumber::~IIONumber(v167);
        IIODictionary::setObjectForKey(&dest, *&permuteMap[8], *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
        if (v19 == 1.0)
        {
          IIONumber::IIONumber(v167, 1);
          IIODictionary::setObjectForKey(&dest, value, *gIIO_kCMPhotoCompressionOption_Subsampling);
          IIONumber::~IIONumber(v167);
        }
      }

      else
      {
        if (v19 >= 1.0)
        {
          IIONumber::IIONumber(permuteMap, 1);
          IIODictionary::setObjectForKey(&dest, v171, *gIIO_kCMPhotoCompressionOption_Subsampling);
          IIONumber::~IIONumber(permuteMap);
          IIONumber::IIONumber(v91, 6);
          IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
          IIONumber::~IIONumber(permuteMap);
          goto LABEL_221;
        }

        if (!v151)
        {
          DictionaryRepresentation = IIODictionary::getUint32ForKey(a4, @"kCGImageSurfaceFormatRequest");
          v88 = DictionaryRepresentation;
        }

        HEIFWritePlugin::updateCompressionOptionsSubsampling(DictionaryRepresentation, &dest, v88, v19);
        IIONumber::IIONumber(permuteMap, 3);
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
        IIONumber::~IIONumber(permuteMap);
        memset(permuteMap, 0, sizeof(permuteMap));
        v171 = 0;
        IIODictionary::IIODictionary(v90);
        IIONumber::IIONumber(v167, v19);
        IIODictionary::setObjectForKey(permuteMap, v167, *gIIO_kCMPhotoQualityControllerParameter_QualityValue);
        IIONumber::~IIONumber(v167);
        IIODictionary::setObjectForKey(&dest, *&permuteMap[8], *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
      }

      IIODictionary::~IIODictionary(permuteMap);
    }

LABEL_221:
    ObjectForKey = IIODictionary::getObjectForKey(a4, @"kCGImageDestinationEnableRGBToYUVDithering");
    v93 = ObjectForKey;
    if (ObjectForKey)
    {
      v94 = CFGetTypeID(ObjectForKey);
      if (v94 == CFBooleanGetTypeID())
      {
        IIODictionary::setObjectForKey(&dest, v93, *gIIO_kCMPhotoCompressionOption_RGBToYUVDithering);
      }
    }

    if (v152)
    {
      IIODictionary::setObjectForKey(&dest, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoCompressionOption_PrimaryImage);
    }

    if (*(this + 10) == 1752589105)
    {
      if (a4 && IIODictionary::containsKey(a4, @"Orientation"))
      {
        v95 = IIODictionary::getUint32ForKey(a4, @"Orientation");
      }

      else
      {
        v95 = 1;
      }

      IIONumber::IIONumber(permuteMap, v95);
      IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_ImageOrientation);
      IIONumber::~IIONumber(permuteMap);
    }

    v96 = IIODictionary::containsKey(a4, @"{HEIF}");
    if (v96)
    {
      HEIFWritePlugin::updateHEIFProperties(v96, &dest, a4);
    }

    updated = HEIFWritePlugin::updateHardwareEncodeOptions(this, &dest, a4);
    v98 = *(this + 7);
    if (*(this + 125) == 1)
    {
      v99 = *(this + 16);
      *permuteMap = *(this + 68);
      v171 = *(this + 84);
      v100 = gFunc_CMPhotoCompressionSessionAddImageToSequence(v98, v99, permuteMap, dest.height, v176[0], &v172);
      v23 = v100;
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("seq CMPhotoCompressionSessionAddImageToSequence: [session:%p]  seq:%d  img:%d  err=%d\n", *(this + 7), *(this + 16), v172, v100);
      }

      goto LABEL_259;
    }

    v23 = gFunc_CMPhotoCompressionSessionAddImage(v98, dest.height, v176[0], &v172, updated);
    if ((gIIODebugFlags & 0x30000) == 0)
    {
LABEL_259:
      if (v23 == -15474)
      {
        IIONumber::IIONumber(permuteMap, 5);
        IIODictionary::setObjectForKey(&dest, v171, *gIIO_kCMPhotoCompressionOption_Subsampling);
        IIONumber::~IIONumber(permuteMap);
        IIODictionary::removeObjectForKey(&dest, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
        IIONumber::IIONumber(permuteMap, 3);
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
        IIONumber::~IIONumber(permuteMap);
        memset(permuteMap, 0, sizeof(permuteMap));
        v171 = 0;
        IIODictionary::IIODictionary(v110);
        IIONumber::IIONumber(v167, v19);
        IIODictionary::setObjectForKey(permuteMap, v167, *gIIO_kCMPhotoQualityControllerParameter_QualityValue);
        IIONumber::~IIONumber(v167);
        IIODictionary::setObjectForKey(&dest, *&permuteMap[8], *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
        v112 = *(this + 7);
        if (*(this + 125) == 1)
        {
          v113 = *(this + 16);
          *v167 = *(this + 68);
          value = *(this + 84);
          v114 = gFunc_CMPhotoCompressionSessionAddImageToSequence(v112, v113, v167, dest.height, v176[0], &v172);
          v23 = v114;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("seq CMPhotoCompressionSessionAddImageToSequence: [session:%p]  seq:%d  img:%d  err=%d\n", *(this + 7), *(this + 16), v172, v114);
          }
        }

        else
        {
          v115 = gFunc_CMPhotoCompressionSessionAddImage(v112, dest.height, v176[0], &v172, v111);
          v23 = v115;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("    CMPhotoCompressionSessionAddImage (420f): [session:%p]  err=%d\n", *(this + 7), v115);
          }
        }

        IIODictionary::~IIODictionary(permuteMap);
      }

      if (v23)
      {
        if (*(this + 125))
        {
          v135 = "CMPhotoCompressionSessionAddImageToSequence";
        }

        else
        {
          v135 = "CMPhotoCompressionSessionAddImage";
        }

        v136 = IIOCMErrorString(v23);
        v137 = *(this + 10);
        v138 = v137 >> 24;
        if ((v137 >> 24) <= 0x7F)
        {
          v139 = *(MEMORY[0x1E69E9830] + 4 * v138 + 60) & 0x40000;
        }

        else
        {
          v139 = __maskrune(v138, 0x40000uLL);
          v137 = *(this + 10);
        }

        if (v139)
        {
          v141 = (v137 >> 24);
        }

        else
        {
          v141 = 46;
        }

        v142 = v137 << 8 >> 24;
        if (v142 <= 0x7F)
        {
          v143 = *(MEMORY[0x1E69E9830] + 4 * v142 + 60) & 0x40000;
        }

        else
        {
          v143 = __maskrune(v142, 0x40000uLL);
          v137 = *(this + 10);
        }

        if (v143)
        {
          v144 = (v137 << 8 >> 24);
        }

        else
        {
          v144 = 46;
        }

        v145 = v137 >> 8;
        if (v145 <= 0x7F)
        {
          v146 = *(MEMORY[0x1E69E9830] + 4 * v145 + 60) & 0x40000;
        }

        else
        {
          v146 = __maskrune(v145, 0x40000uLL);
          v137 = *(this + 10);
        }

        if (v146)
        {
          v147 = (v137 >> 8);
        }

        else
        {
          v147 = 46;
        }

        if (v137 <= 0x7F)
        {
          v148 = *(MEMORY[0x1E69E9830] + 4 * v137 + 60) & 0x40000;
        }

        else
        {
          v148 = __maskrune(v137, 0x40000uLL);
        }

        if (v148)
        {
          v149 = *(this + 40);
        }

        else
        {
          v149 = 46;
        }

        LogError("writeImageAtIndex", 1311, "*** %s: err = %s [%d]    (codec: '%c%c%c%c')\n", v135, v136, v23, v141, v144, v147, v149);
        IIODictionary::~IIODictionary(&dest);
        goto LABEL_301;
      }

      if ((v164 | 2) == 3)
      {
        memset(permuteMap, 0, sizeof(permuteMap));
        v171 = 0;
        IIODictionary::IIODictionary(permuteMap);
        v116 = gFunc_CMPhotoCompressionSessionAddAuxiliaryImage(*(this + 7), v172, 3, 0, *&permuteMap[8], v176[0], 0);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    CMPhotoCompressionSessionAddAuxiliaryImage: [session:%p]  err=%d\n", *(this + 7), v116);
        }

        IIODictionary::~IIODictionary(permuteMap);
      }

      IIODictionary::~IIODictionary(&dest);
      v117 = IIODictionary::getBoolForKey(a4, @"kCGImageDestinationEmbedThumbnail");
      if (v117)
      {
        *v167 = 320;
        v119 = gFunc_CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize(v167, Width, Height);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize: [session:%p] size:%u err:%d\n", *(this + 7), v167[0], v119);
        }

        memset(&dest, 0, 24);
        IIODictionary::IIODictionary(&dest);
        IIONumber::IIONumber(permuteMap, v167[0]);
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_MaxPixelSize);
        IIONumber::~IIONumber(permuteMap);
        IIONumber::IIONumber(v120, *(this + 10));
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_CodecType);
        IIONumber::~IIONumber(permuteMap);
        IIODictionary::setObjectForKey(&dest, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoCompressionOption_ForceHighSpeed);
        v121 = gFunc_CMPhotoCompressionSessionAddThumbnail(*(this + 7), v172, dest.height, v176[0]);
        v122 = v121;
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    CMPhotoCompressionSessionAddThumbnail: [session:%p]  img:%d  err=%d\n", *(this + 7), v172, v121);
        }

        if (v122)
        {
          v123 = IIOCMErrorString(v122);
          _cg_jpeg_mem_term("writeImageAtIndex", 1346, "*** CMPhotoCompressionSessionAddThumbnail  err = %s [%d]\n", v123, v122);
        }

        IIODictionary::~IIODictionary(&dest);
      }

      if (a4)
      {
        ExifData = HEIFWritePlugin::createExifData(v117, a4);
        if (ExifData)
        {
          v125 = gFunc_CMPhotoCompressionSessionAddExif (*(this + 7), v172, 0, ExifData);
          v126 = v125;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("    CMPhotoCompressionSessionAddExif: [session:%p]  img:%d  err=%d\n", *(this + 7), v172, v125);
          }

          if (v126)
          {
            v127 = IIOCMErrorString(v126);
            _cg_jpeg_mem_term("writeImageAtIndex", 1365, "*** CMPhotoCompressionSessionAddExif  err = %s [%d]\n", v127, v126);
            IIO_CFShow(a4[1], 2, "imageProperties");
          }

          CFRelease(ExifData);
        }

        dest.data = 0;
        HEIFWritePlugin::createXMPData(this, a4, &dest, 0, 0);
        if (dest.data)
        {
          v128 = gFunc_CMPhotoCompressionSessionAddXMP(*(this + 7), v172, 0);
          v129 = v128;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("    CMPhotoCompressionSessionAddXMP: [session:%p]  img:%d  err=%d\n", *(this + 7), v172, v128);
          }

          if (v129)
          {
            v130 = IIOCMErrorString(v129);
            _cg_jpeg_mem_term("writeImageAtIndex", 1387, "*** CMPhotoCompressionSessionAddXMP  err = %s [%d]\n", v130, v129);
            IIO_CFShow(a4[1], 2, "imageProperties");
          }

          CFRelease(dest.data);
        }
      }

      v23 = HEIFWritePlugin::writeAuxImages(this, v118, a6, v172);
      if (v23)
      {
        _cg_jpeg_mem_term("writeImageAtIndex", 1398, "*** ERROR: failed to write aux images...");
        goto LABEL_301;
      }

      v131 = HEIFWritePlugin::writeAlternateImage(this, v176[0], a4, a6, v172);
      v23 = v131;
      if (v131)
      {
        v140 = IIOCMErrorString(v131);
        _cg_jpeg_mem_term("writeImageAtIndex", 1404, "*** ERROR: failed to write alternate image - %s [%d]", v140, v23);
        goto LABEL_301;
      }

      v132 = @"UnclampedDelayTime";
      if ((IIODictionary::containsKeyGroup(a4, @"UnclampedDelayTime", @"{HEICS}") & 1) != 0 || (v132 = @"DelayTime", IIODictionary::containsKeyGroup(a4, @"DelayTime", @"{HEICS}")))
      {
        DoubleForKeyGroup = IIODictionary::getDoubleForKeyGroup(a4, v132, @"{HEICS}");
      }

      else
      {
        DoubleForKeyGroup = 0.1;
      }

      memset(&dest, 0, 24);
      gFunc_CMTimeMake(&dest, (DoubleForKeyGroup * 1000.0), 1000);
      *v167 = *(this + 68);
      value = *(this + 84);
      v165 = *&dest.data;
      v166 = dest.width;
      gFunc_CMTimeAdd(permuteMap, v167, &v165);
      v23 = 0;
      *(this + 68) = *permuteMap;
      *(this + 84) = v171;
      goto LABEL_299;
    }

    v101 = *(this + 7);
    v102 = gFunc_CVPixelBufferGetPixelFormatType(v176[0]) >> 24;
    if (v102 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v102 + 60) & 0x40000) != 0)
      {
        goto LABEL_240;
      }
    }

    else if (__maskrune(v102, 0x40000uLL))
    {
LABEL_240:
      v103 = (gFunc_CVPixelBufferGetPixelFormatType(v176[0]) >> 24);
      goto LABEL_243;
    }

    v103 = 46;
LABEL_243:
    v104 = (gFunc_CVPixelBufferGetPixelFormatType(v176[0]) << 8) >> 24;
    if (v104 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v104 + 60) & 0x40000) != 0)
      {
        goto LABEL_245;
      }
    }

    else if (__maskrune(v104, 0x40000uLL))
    {
LABEL_245:
      v105 = ((gFunc_CVPixelBufferGetPixelFormatType(v176[0]) << 8) >> 24);
      goto LABEL_248;
    }

    v105 = 46;
LABEL_248:
    v106 = gFunc_CVPixelBufferGetPixelFormatType(v176[0]) >> 8;
    if (v106 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v106 + 60) & 0x40000) != 0)
      {
        goto LABEL_250;
      }
    }

    else if (__maskrune(v106, 0x40000uLL))
    {
LABEL_250:
      v107 = (gFunc_CVPixelBufferGetPixelFormatType(v176[0]) >> 8);
      goto LABEL_253;
    }

    v107 = 46;
LABEL_253:
    PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v176[0]);
    if (PixelFormatType <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * PixelFormatType + 60) & 0x40000) != 0)
      {
        goto LABEL_255;
      }
    }

    else if (__maskrune(PixelFormatType, 0x40000uLL))
    {
LABEL_255:
      v109 = gFunc_CVPixelBufferGetPixelFormatType(v176[0]);
LABEL_258:
      ImageIOLog("    CMPhotoCompressionSessionAddImage: [session:%p] '%c%c%c%c' err=%d\n", v101, v103, v105, v107, v109, v23);
      goto LABEL_259;
    }

    v109 = 46;
    goto LABEL_258;
  }

  v53 = IIOCMErrorString(v52);
  v54 = MEMORY[0x1E69E9830];
  if ((*(MEMORY[0x1E69E9830] + 4 * BYTE3(v29) + 60) & 0x40000) != 0)
  {
    v55 = BYTE3(v29);
  }

  else
  {
    v55 = 46;
  }

  v56 = (v29 << 8) >> 24;
  if (v56 <= 0x7F)
  {
    v57 = *(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000;
  }

  else
  {
    v57 = __maskrune((v29 << 8) >> 24, 0x40000uLL);
  }

  if (v57)
  {
    v62 = v56;
  }

  else
  {
    v62 = 46;
  }

  v63 = v29 >> 8;
  if (v63 <= 0x7F)
  {
    v64 = *(v54 + 4 * v63 + 60) & 0x40000;
  }

  else
  {
    v64 = __maskrune(v29 >> 8, 0x40000uLL);
  }

  if (v29 <= 0x7F)
  {
    v65 = *(v54 + 4 * v29 + 60) & 0x40000;
  }

  else
  {
    v65 = __maskrune(v29, 0x40000uLL);
  }

  if (v64)
  {
    v66 = v63;
  }

  else
  {
    v66 = 46;
  }

  if (v65)
  {
    v67 = v29;
  }

  else
  {
    v67 = 46;
  }

  _cg_jpeg_mem_term("writeImageAtIndex", 1051, "*** ERROR: CVPixelBufferCreateWithBytes err = %s [%d]  '%c%c%c%c'\n", v53, v23, v55, v62, v66, v67);
LABEL_299:
  if (a7)
  {
    *a7 = v172;
  }

LABEL_301:
  if (v176[0])
  {
    gFunc_CVPixelBufferRelease(v176[0]);
  }

  else if (v162)
  {
    free(v162);
  }

  IIODictionary::~IIODictionary(&v173);
  return v23;
}

void CVPixelBufferReleaseImageBlock(void *a1, const void *a2)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t HEIFWritePlugin::prepareHEIFWriting(HEIFWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  IIODictionary::IIODictionary(&v18);
  if (IIOWritePlugin::getImageCount(this) >= 2)
  {
    IIODictionary::setObjectForKey(&v18, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoCompressionSessionOption_UseCodecSessionPool);
  }

  v4 = gFunc_CMPhotoCompressionSessionCreate(*MEMORY[0x1E695E480], v19, this + 56);
  v5 = v4;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    CMPhotoCompressionSessionCreate: [session:%p]  err=%d\n", *(this + 7), v4);
  }

  if (v5 || !*(this + 7))
  {
    v9 = IIOCMErrorString(v5);
    _cg_jpeg_mem_term("prepareHEIFWriting", 1806, "*** CMPhotoCompressionSessionCreate: err = %s [%d]\n", v9, v5);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    IIODictionary::IIODictionary(&v15);
    IIONumber::IIONumber(&v13, 1);
    IIODictionary::setObjectForKey(&v15, &v13, *gIIO_kCMPhotoCompressionContainerOption_BackingType);
    IIONumber::~IIONumber(&v13);
    if (*(this + 10) == 1785750887)
    {
      IIONumber::IIONumber(&v13, 1);
    }

    else
    {
      IIONumber::IIONumber(&v13, 0);
    }

    IIODictionary::setObjectForKey(&v15, &v13, *gIIO_kCMPhotoCompressionContainerOption_Format);
    IIONumber::~IIONumber(&v13);
    v6 = gFunc_CMPhotoCompressionSessionOpenEmptyContainer(*(this + 7), v16);
    v5 = v6;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    CMPhotoCompressionSessionOpenEmptyContainer: [session:%p]  err=%d\n", *(this + 7), v6);
    }

    if (v5)
    {
      v10 = IIOCMErrorString(v5);
      _cg_jpeg_mem_term("prepareHEIFWriting", 1832, "*** CMPhotoCompressionSessionOpenEmptyContainer: err = %s [%d]\n", v10, v5);
    }

    else if (*(this + 125) == 1)
    {
      v12 = 0;
      started = gFunc_CMPhotoCompressionSessionStartImageSequence(*(this + 7), 0, &v12);
      v5 = started;
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("seq CMPhotoCompressionSessionStartImageSequence: [session:%p]  seq:%d  err=%d\n", *(this + 7), v12, started);
      }

      if (v5)
      {
        v11 = IIOCMErrorString(v5);
        _cg_jpeg_mem_term("prepareHEIFWriting", 1839, "*** CMPhotoCompressionSessionStartImageSequence: err = %s [%d]\n", v11, v5);
      }

      else
      {
        *(this + 16) = v12;
        gFunc_CMTimeMake(&v13, 0, 1000);
        *(this + 68) = v13;
        *(this + 84) = v14;
      }
    }

    else
    {
      v5 = 0;
    }

    IIODictionary::~IIODictionary(&v15);
  }

  IIODictionary::~IIODictionary(&v18);
  return v5;
}

void sub_186020088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::writeAuxImages(HEIFWritePlugin *this, IIODictionary *a2, int a3, uint64_t a4)
{
  v4 = *(this + 6);
  if (!v4)
  {
    return 0;
  }

  memset(v53, 0, 24);
  v8 = IIOArray::IIOArray(v53, v4);
  Count = IIOArray::getCount(v8);
  if (!Count)
  {
    v11 = 0;
    goto LABEL_52;
  }

  v10 = 0;
  v11 = 0;
  v12 = Count;
  while (1)
  {
    ObjectAtIndex = IIOArray::getObjectAtIndex(v53, v10);
    memset(v52, 0, sizeof(v52));
    v14 = IIODictionary::IIODictionary(v52, ObjectAtIndex);
    Uint32ForKey = IIODictionary::getUint32ForKey(v14, "AuxiliaryImageType");
    ObjectForKey = IIODictionary::getObjectForKey(v52, "AuxiliaryImageURN");
    BoolForKey = IIODictionary::getBoolForKey(v52, "customMetadata");
    v49 = 0;
    v50 = 0;
    v51 = 0;
    IIODictionary::IIODictionary(&v49);
    v48 = 0;
    if (IIODictionary::getUint32ForKey(v52, @"ImageIndex") != a3 || ObjectForKey && CFStringCompare(@"kCGImageAuxiliaryDataTypeISOGainMap", ObjectForKey, 0) == kCFCompareEqualTo)
    {
      goto LABEL_41;
    }

    v18 = @"kCGImageAuxiliaryDataTypeDisparity";
    if (Uint32ForKey == 1)
    {
      goto LABEL_22;
    }

    if (Uint32ForKey == 5)
    {
      v18 = @"kCGImageAuxiliaryDataTypePortraitEffectsMatte";
LABEL_22:
      v29 = IIODictionary::getObjectForKey(v52, v18);
      goto LABEL_23;
    }

    v18 = @"kCGImageAuxiliaryDataTypeDepth";
    if (Uint32ForKey == 2)
    {
      goto LABEL_22;
    }

    if (ObjectForKey)
    {
      v19 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_Alpha, ObjectForKey, 0);
      v20 = @"kCGImageAuxiliaryDataTypeAlpha";
      if (v19 && (v21 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_Depth, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeDepth", v21) && (v22 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_PortraitEffectsMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypePortraitEffectsMatte", v22) && (v23 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkinMatte", v23) && (v24 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationHairMatte", v24) && (v25 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationTeethMatte", v25) && (v26 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte", v26) && (v27 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte", v27) && (v28 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeHDRGainMap", v28))
      {
        v29 = 0;
      }

      else
      {
        v29 = IIODictionary::getObjectForKey(v52, v20);
      }

      if (BoolForKey)
      {
        v29 = IIODictionary::getObjectForKey(v52, ObjectForKey);
      }

      IIODictionary::setObjectForKey(&v49, ObjectForKey, *gIIO_kCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN);
    }

    else
    {
      v29 = 0;
    }

LABEL_23:
    if (!BoolForKey)
    {
      break;
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    IIODictionary::IIODictionary(&v45);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    IIODictionary::IIODictionary(&v42);
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v52, @"kCGImageAuxiliaryDataInfoData", ObjectForKey);
    IIODictionary::setObjectForKey(&v45, ObjectForKeyGroup, *gIIO_kCMPhotoCustomMetadata_Data);
    IIODictionary::setObjectForKey(&v45, ObjectForKey, *gIIO_kCMPhotoCustomMetadata_URI);
    v31 = gFunc_CMPhotoCompressionSessionAddCustomMetadata(*(this + 7), a4, v43, v46);
    v11 = v31;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    CMPhotoCompressionSessionAddCustomMetadata: [session:%p]  img:%d  err=%d\n", *(this + 7), a4, v31);
    }

    if (v11)
    {
      v32 = IIOCMErrorString(v11);
      _cg_jpeg_mem_term("writeAuxImages", 1545, "*** CMPhotoCompressionSessionAddCustomMetadata  err = %s [%d]\n", v32, v11);
      v33 = 5;
    }

    else
    {
      v33 = 0;
    }

    IIODictionary::~IIODictionary(&v42);
    IIODictionary::~IIODictionary(&v45);
    if (v11)
    {
      IIODictionary::~IIODictionary(&v49);
      IIODictionary::~IIODictionary(v52);
      if ((v33 | 4) != 4)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    }

LABEL_41:
    IIODictionary::~IIODictionary(&v49);
    IIODictionary::~IIODictionary(v52);
LABEL_42:
    if (v12 == ++v10)
    {
      goto LABEL_52;
    }
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v34 = IIODictionary::IIODictionary(&v45, v29);
  PixelBufferFromAuxiliaryDataInfo = HEIFWritePlugin::createPixelBufferFromAuxiliaryDataInfo(v34, &v45, v35);
  v37 = IIODictionary::getObjectForKey(&v45, @"kCGImageAuxiliaryDataInfoMetadata");
  v38 = v37;
  if (v37)
  {
    if (CFDictionaryGetCount(*(v37 + 3)))
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v11 = gFunc_CMPhotoCompressionSessionAddAuxiliaryImage(*(this + 7), a4, Uint32ForKey, v39, v50, PixelBufferFromAuxiliaryDataInfo, &v48);
  gFunc_CVPixelBufferRelease(PixelBufferFromAuxiliaryDataInfo);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    CMPhotoCompressionSessionAddAuxiliaryImage: [session:%p]  img:%d  err=%d\n", *(this + 7), a4, v11);
  }

  if (!v11)
  {
    IIODictionary::~IIODictionary(&v45);
    goto LABEL_41;
  }

  v40 = IIOCMErrorString(v11);
  _cg_jpeg_mem_term("writeAuxImages", 1562, "*** Error: CMPhotoCompressionSessionAddAuxiliaryImage  err = %s [%d]\n", v40, v11);
  IIODictionary::~IIODictionary(&v45);
  IIODictionary::~IIODictionary(&v49);
  IIODictionary::~IIODictionary(v52);
LABEL_52:
  IIOArray::~IIOArray(v53);
  return v11;
}

void sub_186020704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  IIODictionary::~IIODictionary(&a29);
  IIODictionary::~IIODictionary((v29 - 160));
  IIODictionary::~IIODictionary((v29 - 136));
  IIOArray::~IIOArray((v29 - 112));
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::writeAlternateImage(HEIFWritePlugin *this, __CVBuffer *a2, IIODictionary *a3, int a4, uint64_t a5)
{
  v6 = *(this + 6);
  if (!v6)
  {
    return 0;
  }

  memset(v57, 0, 24);
  v9 = IIOArray::IIOArray(v57, v6);
  Count = IIOArray::getCount(v9);
  if (Count)
  {
    v36 = a2;
    v11 = 0;
    value = *MEMORY[0x1E695E4C0];
    name = *MEMORY[0x1E695F178];
    v12 = Count;
    v13 = a3;
    while (1)
    {
      ObjectAtIndex = IIOArray::getObjectAtIndex(v57, v11);
      memset(v56, 0, sizeof(v56));
      v15 = IIODictionary::IIODictionary(v56, ObjectAtIndex);
      ObjectForKey = IIODictionary::getObjectForKey(v15, "AuxiliaryImageURN");
      if (IIODictionary::getUint32ForKey(v56, @"ImageIndex") != a4 || !ObjectForKey || CFStringCompare(@"kCGImageAuxiliaryDataTypeISOGainMap", ObjectForKey, 0))
      {
        IIODictionary::~IIODictionary(v56);
        goto LABEL_8;
      }

      v17 = IIODictionary::getObjectForKey(v56, @"kCGImageAuxiliaryDataTypeISOGainMap");
      memset(v55, 0, sizeof(v55));
      v18 = IIODictionary::IIODictionary(v55, v17);
      v19 = IIODictionary::getObjectForKey(v18, @"kCGImageAuxiliaryDataInfoMetadata");
      v20 = IIODictionary::getObjectForKey(v55, @"kCGImageAuxiliaryDataInfoColorSpace");
      PixelBufferFromAuxiliaryDataInfo = HEIFWritePlugin::createPixelBufferFromAuxiliaryDataInfo(v20, v55, v21);
      if (v19)
      {
        cf = 0;
        if (!CGImageCreateFlexRangeDictionary(v19, &cf))
        {
          operator new();
        }
      }

      v23 = *(this + 10);
      cf = 0;
      v53 = 0;
      v54 = 0;
      IIODictionary::IIODictionary(&cf);
      IIODictionary::setObjectForKey(&cf, value, *gIIO_kCMPhotoCompressionOption_ApplyTransform);
      IIONumber::IIONumber(&v49, v23);
      IIODictionary::setObjectForKey(&cf, &v49, *gIIO_kCMPhotoCompressionOption_CodecType);
      IIONumber::~IIONumber(&v49);
      IIONumber::IIONumber(&v49, 3);
      IIODictionary::setObjectForKey(&cf, &v49, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
      IIONumber::~IIONumber(&v49);
      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      IIONumber::IIONumber(&v46, 0.9);
      IIODictionary::setObjectForKey(&v49, &v46, *gIIO_kCMPhotoQualityControllerParameter_QualityValue);
      IIONumber::~IIONumber(&v46);
      IIODictionary::setObjectForKey(&cf, v50, *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      BoolForKeyGroup = IIODictionary::getBoolForKeyGroup(v13, @"kCGGenerateAdaptiveSoftClipCurve", @"kCGImageDestinationEncodeRequestOptions");
      v25 = IIODictionary::getBoolForKeyGroup(v13, @"kCGGenerateFlexGTC", @"kCGImageDestinationEncodeRequestOptions");
      if (((v20 != 0) & BoolForKeyGroup) == 1)
      {
        break;
      }

      if (!v25)
      {
        if (v20)
        {
          IIOColorSpace::IIOColorSpace(&v43, v20);
          v30 = v44;
          IIOColorSpace::~IIOColorSpace(&v43);
          CopyWithFlexGTCInfo = CGColorSpaceRetain(v30);
LABEL_28:
          if (CopyWithFlexGTCInfo)
          {
            goto LABEL_37;
          }
        }

LABEL_36:
        CopyWithFlexGTCInfo = CGColorSpaceCreateWithName(name);
        goto LABEL_37;
      }

      kdebug_trace();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      IIODictionary::IIODictionary(&v43);
      if (v19)
      {
        IIODictionary::setObjectForKey(&v43, v19, @"kCGImageAuxiliaryDataInfoMetadata");
      }

      v42 = 0;
      if (IIOCallCreateFlexGTCInfo(0, v36, PixelBufferFromAuxiliaryDataInfo, &v42, v44))
      {
        CopyWithFlexGTCInfo = 0;
      }

      else
      {
        if (v20)
        {
          IIOColorSpace::IIOColorSpace(v41, v20);
          v31 = v41[1];
          IIOColorSpace::~IIOColorSpace(v41);
          CopyWithFlexGTCInfo = IIO_ColorSpaceCreateCopyWithFlexGTCInfo(v31, v42);
          if (!CopyWithFlexGTCInfo)
          {
            CopyWithFlexGTCInfo = CGColorSpaceRetain(v31);
          }
        }

        else
        {
          CopyWithFlexGTCInfo = 0;
        }

        CFRelease(v42);
      }

      kdebug_trace();
      IIODictionary::~IIODictionary(&v43);
      if (!CopyWithFlexGTCInfo)
      {
        goto LABEL_36;
      }

LABEL_37:
      IIODictionary::setObjectForKey(&v46, CopyWithFlexGTCInfo, *gIIO_kCMPhotoCompressionOption_ColorSpace);
      v32 = IIODictionary::getObjectForKey(v55, @"kCGImageAuxiliaryDataInfoMeteorPlusMetadata");
      v43 = 0;
      v33 = gFunc_CMPhotoCompressionSessionAddTmapImageOneShot(*(this + 7), a5, v53, v47, PixelBufferFromAuxiliaryDataInfo, 0, v32 != 0, v32, &v43);
      CGColorSpaceRelease(CopyWithFlexGTCInfo);
      if (PixelBufferFromAuxiliaryDataInfo)
      {
        CFRelease(PixelBufferFromAuxiliaryDataInfo);
      }

      if (v33)
      {
        v34 = IIOCMErrorString(v33);
        _cg_jpeg_mem_term("writeAlternateImage", 1723, "*** Error: CMPhotoCompressionSessionAddTmapImageOneShot  err = %s [%d]\n", v34, v33);
      }

      IIODictionary::~IIODictionary(&v46);
      IIODictionary::~IIODictionary(&v49);
      IIODictionary::~IIODictionary(&cf);
      IIODictionary::~IIODictionary(v55);
      IIODictionary::~IIODictionary(v56);
      if (v33)
      {
        goto LABEL_44;
      }

LABEL_8:
      if (v12 == ++v11)
      {
        goto LABEL_43;
      }
    }

    kdebug_trace();
    IIOColorSpace::IIOColorSpace(&v43, v20);
    v26 = v44;
    IIOColorSpace::~IIOColorSpace(&v43);
    FloatFromRationalForKey = IIODictionary::getFloatFromRationalForKey(0, *gIIO_kCMPhotoMetadata_TonemapAlternateHDRHeadroom);
    v28 = FloatFromRationalForKey;
    if (FloatFromRationalForKey > 0.0)
    {
      v28 = exp2(FloatFromRationalForKey);
    }

    if (v28 == 0.0 || (CopyWithFlexGTCInfo = IIO_ColorSpaceCreateCopyWithAdaptiveSoftClip()) == 0)
    {
      CopyWithFlexGTCInfo = CGColorSpaceRetain(v26);
    }

    kdebug_trace();
    goto LABEL_28;
  }

LABEL_43:
  v33 = 0;
LABEL_44:
  IIOArray::~IIOArray(v57);
  return v33;
}

void sub_186020DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  IIODictionary::~IIODictionary(&a27);
  IIODictionary::~IIODictionary(&a30);
  IIODictionary::~IIODictionary(&a33);
  IIODictionary::~IIODictionary(&a36);
  IIODictionary::~IIODictionary((v36 - 192));
  IIODictionary::~IIODictionary((v36 - 168));
  IIOArray::~IIOArray((v36 - 144));
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::createPixelBufferFromAuxiliaryDataInfo(HEIFWritePlugin *this, IIODictionary *a2, IIODictionary *a3)
{
  ObjectForKey = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoData");
  v5 = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoDataDescription");
  v6 = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoImage");
  v7 = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoPixelBuffer");
  v8 = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoIOSurface");
  v26 = 0;
  if (v7)
  {
    v26 = v7;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("*** using pixelBuffer [%p] from auxDataInfo\n", v7);
    }

    CFRetain(v7);
  }

  else
  {
    v11 = v8;
    if (v8)
    {
      v12 = gFunc_CVPixelBufferCreateWithIOSurface(0, v8, 0, &v26);
      v13 = v12;
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("*** using IOSurface [%p] from auxDataInfo  (err: %d)\n", v11, v12);
      }

      if (v13)
      {
        v14 = IIOCMErrorString(v13);
        LogError("createPixelBufferFromAuxiliaryDataInfo", 1756, "*** Error: CVPixelBufferCreateWithIOSurface  err = %s [%d]\n", v14, v13);
      }
    }
  }

  result = v26;
  if (v6)
  {
    v10 = v26 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("*** 'kCGImageAuxiliaryDataInfoImage' is not supported yet");
      result = v26;
    }

    else
    {
      result = 0;
    }
  }

  if (ObjectForKey)
  {
    v15 = v5 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && result == 0)
  {
    memset(v25, 0, sizeof(v25));
    IIODictionary::IIODictionary(v25, v5);
    Uint32ForKey = IIODictionary::getUint32ForKey(v25, @"Width");
    v18 = IIODictionary::getUint32ForKey(v25, @"Height");
    v19 = IIODictionary::getUint32ForKey(v25, @"BytesPerRow");
    v20 = IIODictionary::getUint32ForKey(v25, @"PixelFormat");
    BytePtr = CFDataGetBytePtr(ObjectForKey);
    v22 = gFunc_CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], Uint32ForKey, v18, v20, BytePtr, v19, 0, 0, 0, &v26);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      Length = CFDataGetLength(ObjectForKey);
      ImageIOLog("*** using data  [%p:%ld] from auxDataInfo  (err: %d)\n", BytePtr, Length, v22);
    }

    if (v22)
    {
      v24 = IIOCMErrorString(v22);
      LogError("createPixelBufferFromAuxiliaryDataInfo", 1780, "*** Error: CVPixelBufferCreateWithBytes  err = %s [%d]\n", v24, v22);
    }

    IIODictionary::~IIODictionary(v25);
    return v26;
  }

  return result;
}

void sub_1860211E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::completeHEIFWriting(HEIFWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  v33 = 0;
  if (*(this + 125) == 1)
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("seq CMPhotoCompressionSessionEndImageSequence:   [session:%p]  seq:%d\n", *(this + 7), *(this + 16));
    }

    gFunc_CMPhotoCompressionSessionEndImageSequence(*(this + 7), *(this + 16), 0);
  }

  v5 = *(this + 12);
  for (i = *(this + 13); v5 != i; ++v5)
  {
    v32 = -1;
    v6 = *(*v5 + 16);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    IIODictionary::IIODictionary(&v29);
    gFunc_CMPhotoCompressionSessionAddGroup(*(this + 7), 0, v6, &v32);
    if (v6 == 1937007986)
    {
      gFunc_CMPhotoCompressionSessionAddImageHandleToGroup(*(this + 7), 0, *(*v5 + 20), v32);
      gFunc_CMPhotoCompressionSessionAddImageHandleToGroup(*(this + 7), 0, *(*v5 + 24), v32);
      v7 = *v5;
      v8 = *(*v5 + 28);
      if ((v8 & 0x80000000) == 0)
      {
        gFunc_CMPhotoCompressionSessionAddImageHandleToGroup(*(this + 7), 0, v8, v32);
        IIONumber::IIONumber(v27, *(*v5 + 32));
        IIODictionary::setObjectForKey(&v29, value, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation);
        IIONumber::~IIONumber(v27);
        v7 = *v5;
      }

      IIONumber::IIONumber(v27, *(v7 + 40));
      IIODictionary::setObjectForKey(&v29, value, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment);
      IIONumber::~IIONumber(v27);
    }

    else
    {
      v9 = *v5;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 0x40000000;
      v23 = ___ZN15HEIFWritePlugin19completeHEIFWritingEP25IIOImagePixelDataProviderP13IIODictionary_block_invoke;
      v24 = &__block_descriptor_tmp_18;
      v25 = this;
      v26 = v32;
      for (j = *(v9 + 48); j != *(v9 + 56); ++j)
      {
        v23(v22, *j);
      }
    }

    if (gFunc_CMPhotoCompressionSessionAddGroupProperties)
    {
      (gFunc_CMPhotoCompressionSessionAddGroupProperties)(*(this + 7), 0, v32, v30);
    }

    IIODictionary::~IIODictionary(&v29);
  }

  v29 = 0;
  v27[0] = 0;
  v11 = gFunc_CMPhotoCompressionSessionCloseContainerAndCopyBacking(*(this + 7), v27, &v29, &v33);
  v13 = v11;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    CMPhotoCompressionSessionCloseContainerAndCopyBacking: [session:%p]  err=%d\n", *(this + 7), v11);
  }

  if (v13)
  {
    v14 = IIOCMErrorString(v13);
    v12 = _cg_jpeg_mem_term("completeHEIFWriting", 1912, "*** CMPhotoCompressionSessionCloseContainerAndCopyBacking  err = %s [%d]\n", v14, v13);
  }

  else if (v27[0] == 1)
  {
    BytePtr = CFDataGetBytePtr(v33);
    Length = CFDataGetLength(v33);
    IIOImageWriteSession::putBytes(*(this + 2), BytePtr, Length);
  }

  v17 = gFunc_CMPhotoCompressionSessionInvalidate(*(this + 7), v12);
  v19 = v17;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    CMPhotoCompressionSessionInvalidate: [session:%p]  err=%d\n", *(this + 7), v17);
  }

  if (v19)
  {
    v20 = IIOCMErrorString(v19);
    v18 = _cg_jpeg_mem_term("completeHEIFWriting", 1936, "*** CMPhotoCompressionSessionInvalidate  err = %s [%d]\n", v20, v19);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (*(this + 7))
  {
    gFunc_CMPhotoCompressionSessionReleaseHardwareResources(v18);
    gFunc_CMPhotoCompressionSessionDiscardCaches(*(this + 7));
    CFRelease(*(this + 7));
    *(this + 7) = 0;
  }

  return v19;
}

void sub_1860215F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::writeAll(IIOImageDestination **this)
{
  ImageCount = IIOWritePlugin::getImageCount(this);
  if (ImageCount)
  {
    v3 = 0;
    v4 = ImageCount;
    while (1)
    {
      PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, v3);
      PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, v3);
      ContainerProperties = IIOWritePlugin::getContainerProperties(this);
      v8 = ContainerProperties;
      if (ContainerProperties)
      {
        v9 = IIODictionary::getUint32ForKey(ContainerProperties, @"capacity") - 1;
        if (!PixelDataProviderAtIndex)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v9 = 0;
        if (!PixelDataProviderAtIndex)
        {
LABEL_7:
          SourceImageAtIndex = IIOWritePlugin::getSourceImageAtIndex(this, v3);
          goto LABEL_8;
        }
      }

      SourceImageAtIndex = 0;
LABEL_8:
      *v25 = 0;
      result = (*(*this + 5))(this, PixelDataProviderAtIndex, SourceImageAtIndex, PropertiesAtIndex, v8, v3, v25);
      if (result)
      {
        return result;
      }

      if (IIODictionary::containsKey(PropertiesAtIndex, @"{Groups}"))
      {
        Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(PropertiesAtIndex, @"GroupIndex", @"{Groups}");
        ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(PropertiesAtIndex, @"GroupType", @"{Groups}");
        if (ObjectForKeyGroup)
        {
          v16 = ObjectForKeyGroup;
          if (CFStringCompare(ObjectForKeyGroup, @"StereoPair", 0))
          {
            CFStringCompare(v16, @"Alternate", 0);
          }

          else
          {
            if (IIODictionary::getBoolForKeyGroup(PropertiesAtIndex, @"GroupImageIsLeftImage", @"{Groups}"))
            {
              v17 = 0;
            }

            else if (IIODictionary::getBoolForKeyGroup(PropertiesAtIndex, @"GroupImageIsRightImage", @"{Groups}"))
            {
              v17 = 1;
            }

            else if (IIODictionary::getBoolForKeyGroup(PropertiesAtIndex, @"GroupImageIsMonoscopicImage", @"{Groups}"))
            {
              v17 = 2;
            }

            else
            {
              v17 = v3;
            }

            v18 = HEIFWritePlugin::addGroupItem(this, Uint32ForKeyGroup, 1937007986, v25[0], v17);
            if (v18)
            {
              v19 = v18;
              v20 = IIODictionary::getUint32ForKeyGroup(PropertiesAtIndex, @"GroupImageBaseline", @"{Groups}");
              v21 = IIODictionary::getUint32ForKeyGroup(PropertiesAtIndex, @"GroupImageDisparityAdjustment", @"{Groups}");
              if (v20)
              {
                *(v19 + 9) = v20;
              }

              if (v21)
              {
                *(v19 + 10) = v21;
              }

              v22 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndex, @"GroupImageIndexMonoscopicImageLocation", @"{Groups}");
              if (v22)
              {
                v23 = v22;
                if (CFStringCompare(v22, @"Left", 0))
                {
                  if (CFStringCompare(v23, @"Right", 0))
                  {
                    if (CFStringCompare(v23, @"Center", 0))
                    {
                      v24 = 0;
                    }

                    else
                    {
                      v24 = 3;
                    }
                  }

                  else
                  {
                    v24 = 2;
                  }
                }

                else
                {
                  v24 = 1;
                }

                *(v19 + 8) = v24;
              }
            }
          }
        }
      }

      if (v3 == v9)
      {
        HEIFWritePlugin::completeHEIFWriting(this, v12, v13);
      }

      if (v4 == ++v3)
      {
        return 0;
      }
    }
  }

  return 4294967246;
}

HEIFGroup *HEIFWritePlugin::addGroupItem(uint64_t a1, int a2, int a3, int a4, int a5)
{
  for (i = *(a1 + 96); ; ++i)
  {
    if (i == *(a1 + 104))
    {
      operator new();
    }

    v6 = *i;
    if (*(*i + 2) == a2)
    {
      break;
    }
  }

  if (a3 == 1634497650)
  {
    v7 = HEIFGroup::setOtherImage(v6, a4);
  }

  else
  {
    if (a3 != 1937007986)
    {
      return v6;
    }

    if (a5 == 2)
    {
      v7 = HEIFGroup::setMonoImage(v6, a4);
    }

    else if (a5 == 1)
    {
      v7 = HEIFGroup::setRightImage(v6, a4);
    }

    else
    {
      if (a5)
      {
        return v6;
      }

      v7 = HEIFGroup::setLeftImage(v6, a4);
    }
  }

  if (v7)
  {
    *(v6 + 3) = -1;
  }

  return v6;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t TIFFInitPackBits(void *a1)
{
  a1[126] = PackBitsDecode;
  a1[128] = PackBitsDecode;
  a1[130] = PackBitsDecode;
  a1[124] = PackBitsPreEncode;
  a1[125] = PackBitsPostEncode;
  a1[127] = PackBitsEncode;
  a1[129] = PackBitsEncodeChunk;
  a1[131] = PackBitsEncodeChunk;
  return 1;
}

uint64_t PackBitsDecode(uint64_t a1, char *__b, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 1152);
  v12 = *(a1 + 1160);
LABEL_2:
  v13 = 0;
  v14 = v12;
  while (1)
  {
    v15 = v13;
    if (v14 < 1 || a3 < 1)
    {
      break;
    }

    v16 = v11[v13];
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (v16 >= a3)
      {
        TIFFWarningExtR(a1, "PackBitsDecode", "Discarding %lld bytes to avoid buffer overrun", a4, a5, a6, a7, a8, v16 - a3 + 1);
        v16 = a3 - 1;
      }

      v17 = v16 + 1;
      if (v14 > v16 + 1)
      {
        _TIFFmemcpy(__b, &v11[v13 + 1], v16 + 1);
        v11 += v16 + v13 + 2;
        v12 = v12 - v16 - v13 - 2;
        goto LABEL_15;
      }

      v26 = ~v13 + v12;
LABEL_21:
      TIFFWarningExtR(a1, "PackBitsDecode", "Terminating PackBitsDecode due to lack of data.", a4, a5, a6, a7, a8, v27);
      *(a1 + 1152) = &v11[v15 + 1];
      *(a1 + 1160) = v26;
LABEL_17:
      bzero(__b, a3);
      TIFFErrorExtR(a1, "PackBitsDecode", "Not enough data for scanline %u", v20, v21, v22, v23, v24, *(a1 + 876));
      return 0;
    }

    ++v13;
    --v14;
    if (v16 != -128)
    {
      v17 = 1 - v16;
      if (1 - v16 > a3)
      {
        TIFFWarningExtR(a1, "PackBitsDecode", "Discarding %lld bytes to avoid buffer overrun", a4, a5, a6, a7, a8, 1 - v16 - a3);
        v17 = a3;
      }

      if (v12 != v13)
      {
        v12 += ~v13;
        v18 = &v11[v13];
        v19 = *v18;
        v11 = v18 + 1;
        memset(__b, v19, v17);
LABEL_15:
        __b += v17;
        a3 -= v17;
        goto LABEL_2;
      }

      v26 = 0;
      goto LABEL_21;
    }
  }

  *(a1 + 1152) = &v11[v13];
  *(a1 + 1160) = v14;
  if (a3 >= 1)
  {
    goto LABEL_17;
  }

  return 1;
}

uint64_t PackBitsPreEncode(uint64_t a1)
{
  result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *(a1 + 1096) = result;
  if (result)
  {
    if ((*(a1 + 17) & 4) != 0)
    {
      v10 = _cg_TIFFTileRowSize(a1, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      v10 = _cg_TIFFScanlineSize(a1, v3, v4, v5, v6, v7, v8, v9);
    }

    **(a1 + 1096) = v10;
    return 1;
  }

  return result;
}

uint64_t PackBitsPostEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (v1)
  {
    free(v1);
  }

  return 1;
}

uint64_t PackBitsEncode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[144];
  if (a3 < 1)
  {
    v29 = a1[144];
    goto LABEL_44;
  }

  v10 = a3;
  v11 = a2;
  v12 = 0;
  v13 = 0;
  v14 = a1[140] + a1[141];
  do
  {
    v15 = v11 + 1;
    v16 = *v11;
    if (v10 < 2)
    {
      v10 = 0;
      v18 = 1;
      ++v11;
    }

    else
    {
      v11 += v10;
      v17 = v10 - 1;
      v18 = 1;
      while (v16 == *v15)
      {
        ++v18;
        ++v15;
        if (!--v17)
        {
          v18 = v10;
          v10 = 0;
          goto LABEL_10;
        }
      }

      v11 = v15;
      v10 = v17;
    }

    while (1)
    {
      while (1)
      {
LABEL_10:
        if ((v9 + 2) >= v14)
        {
          v19 = a1[145];
          if ((v12 & 0xFFFFFFFD) == 1)
          {
            a1[145] = &v13[v19 - a1[144]];
            result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
            if (!result)
            {
              return result;
            }

            v21 = v9 - v13;
            v9 = a1[144];
            if (v21 < 1)
            {
              v13 = a1[144];
            }

            else
            {
              v22 = v21 + 1;
              do
              {
                v23 = *v13++;
                *v9++ = v23;
                --v22;
              }

              while (v22 > 1);
              v13 = a1[144];
            }
          }

          else
          {
            a1[145] = &v9[v19 - a1[144]];
            result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
            if (!result)
            {
              return result;
            }

            v9 = a1[144];
          }
        }

        if (v12 != 3)
        {
          break;
        }

        v12 = 2;
        if (v18 == 1 && *(v9 - 2) == 255)
        {
          v24 = *v13;
          if (v24 <= 0x7D)
          {
            v25 = v24 + 2;
            *v13 = v25;
            v12 = v25 != 127;
            *(v9 - 2) = *(v9 - 1);
          }
        }
      }

      if (v12 != 2)
      {
        break;
      }

      if (v18 < 2)
      {
        goto LABEL_37;
      }

      if (v18 < 0x81)
      {
        goto LABEL_38;
      }

LABEL_35:
      v12 = 2;
LABEL_36:
      *v9 = -127;
      v9[1] = v16;
      v18 -= 128;
      v9 += 2;
    }

    if (v12 != 1)
    {
      if (v18 < 2)
      {
LABEL_37:
        *v9 = 0;
        v26 = v9 + 1;
        v12 = 1;
        v27 = 2;
        v13 = v9;
        goto LABEL_41;
      }

      if (v18 <= 0x80)
      {
LABEL_38:
        *v9 = 1 - v18;
        v26 = v9 + 1;
        v27 = 2;
        v12 = 2;
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    if (v18 < 2)
    {
      v28 = (*v13)++ + 1;
      v12 = v28 != 127;
      v27 = 1;
      v26 = v9;
      goto LABEL_41;
    }

    if (v18 > 0x80)
    {
      v12 = 3;
      goto LABEL_36;
    }

    *v9 = 1 - v18;
    v26 = v9 + 1;
    v12 = 3;
    v27 = 2;
LABEL_41:
    v9 += v27;
    *v26 = v16;
  }

  while (v10 > 0);
  v29 = a1[144];
LABEL_44:
  a1[145] += &v9[-v29];
  a1[144] = v9;
  return 1;
}

uint64_t PackBitsEncodeChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 1)
  {
    v8 = a3;
    v11 = **(a1 + 1096);
    do
    {
      if (v8 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v8;
      }

      PackBitsEncode(a1, a2, v12, 0, a5, a6, a7, a8);
      a2 += v12;
      v13 = v8 <= v12;
      v8 -= v12;
    }

    while (!v13);
  }

  return 1;
}

uint64_t LibJPEGReadPlugin::LibJPEGReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8, int a9)
{
  JPEGReadPlugin::JPEGReadPlugin(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  *v10 = &unk_1EF4D8D00;
  bzero(v10 + 66, 0x23C8uLL);
  return a1;
}

void LibJPEGReadPlugin::~LibJPEGReadPlugin(LibJPEGReadPlugin *this)
{
  *this = &unk_1EF4D8D00;
  _cg_jpeg_destroy_decompress(this + 528);
  if (*(this + 156))
  {
    *(this + 156) = 0;
  }

  JPEGReadPlugin::~JPEGReadPlugin(this);
}

{
  LibJPEGReadPlugin::~LibJPEGReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t LibJPEGReadPlugin::loadDataFromXPCObject(LibJPEGReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_libjpeg", &length);
    if (length == 9160)
    {
      memcpy(this + 528, data, 0x23C8uLL);
      v6 = _cg_jpeg_std_error(this + 9296);
      result = 0;
      *(this + 66) = v6;
      *(this + 71) = this + 1192;
      *(this + 67) = 0;
      *(this + 1162) = errorExit;
      *(this + 1164) = outputMessage;
      *(this + 150) = 0;
      *(this + 152) = fill_input_buffer;
      *(this + 151) = init_source;
      *(this + 149) = this + 1288;
      *(this + 154) = _cg_jpeg_resync_to_restart;
      *(this + 153) = skip_input_data;
      *(this + 155) = term_source;
      *(this + 156) = *(this + 3);
      *(this + 158) = *(this + 26);
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

void errorExit(uint64_t *a1)
{
  v1 = *a1;
  (*(*a1 + 16))(a1);
  siglongjmp((v1 + 176), 1);
}

const char *outputMessage(const char *result)
{
  v1 = result;
  v5 = *MEMORY[0x1E69E9840];
  v2 = *result;
  if (*(*result + 40) == 120)
  {
    if (outputMessage(jpeg_common_struct *)::didWarn_JWRN_HIT_MARKER)
    {
      return result;
    }

    outputMessage(jpeg_common_struct *)::didWarn_JWRN_HIT_MARKER = 1;
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  (*(v2 + 24))(result, v3);
  result = LogError(0, 0, "libJPEG", " %s\n", v3);
  if (*(*v1 + 40) == 116)
  {
    *(*v1 + 44) = 1;
  }

  return result;
}

uint64_t fill_input_buffer(uint64_t a1, uint64_t a2)
{
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v2;
  v18 = *MEMORY[0x1E69E9840];
  v5 = v2[5];
  if (!v5 || !*(v5 + 56))
  {
    v6 = *v2;
    *(v6 + 40) = 43;
    (*v6)(v2, v3);
    if (!*(v5 + 56))
    {
      v7 = *v4;
      *(v7 + 40) = 43;
      (*v7)(v4);
    }
  }

  v8 = *(v5 + 88);
  if (!v8)
  {
LABEL_11:
    bzero(__dst, 0x1F42uLL);
    v11 = *(v5 + 8);
    if (v11)
    {
      memcpy(__dst, *v5, *(v5 + 8));
    }

    v12 = (v5 + 96);
    Bytes = IIOImageReadSession::getBytes(*(v5 + 56), (v5 + 96), 4000);
    v14 = *(v5 + 96);
    if (!*(v5 + 96) || (v14 != 238 ? (v15 = v14 == 2) : (v15 = 1), v15))
    {
      if (*(v5 + 97) == 216 && *(v5 + 98) == 255 && *(v5 + 99) == 219 && IIOImageReadSession::seek(*(v5 + 56), 0, 1) == *(v5 + 72) + Bytes)
      {
        *v12 = -1;
      }
    }

    if (Bytes > 0xF9F)
    {
      if (Bytes == 4000)
      {
        result = 1;
        v16 = 4000;
        goto LABEL_32;
      }

      if ((Bytes & 0x8000000000000000) != 0)
      {
        return 0;
      }
    }

    else if (*(v5 + 64) & 1) != 0 || (IIOImageReadSession::isFinal(*(v5 + 56)))
    {
      *&v12[Bytes] = -9729;
      v16 = Bytes + 2;
      result = 1;
LABEL_32:
      *v5 = v12;
      *(v5 + 8) = v16;
      return result;
    }

    memcpy(&__dst[v11], (v5 + 96), Bytes);
    v16 = Bytes + v11;
    memcpy((v5 + 96), __dst, v16);
    result = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v9 = v8 >= 0xFA0 ? 4000 : v8;
    result = IIOImageReadSession::skipBytes(*(v5 + 56), v9);
    if (!result)
    {
      return result;
    }

    v8 = *(v5 + 88) - result;
    *(v5 + 88) = v8;
    if (!v8)
    {
      goto LABEL_11;
    }
  }
}

const char *init_source(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = v1[7]) != 0)
  {
    result = IIOImageReadSession::seek(v2, v1[9], 0);
    v1[11] = 0;
    *v1 = v1 + 12;
    v1[1] = 0;
  }

  else
  {

    return LogError("init_source", 259, "*** ImageIO - libJPEG nil-'source'cinfo->src'\n");
  }

  return result;
}

uint64_t skip_input_data(uint64_t result, unint64_t a2)
{
  v2 = *(result + 40);
  v3 = v2[1];
  v4 = v3 - a2;
  if (v3 <= a2)
  {
    v4 = 0;
    v5 = a2 - v3;
  }

  else
  {
    v5 = 0;
    *v2 += a2;
  }

  v2[1] = v4;
  v2[11] += v5;
  return result;
}

uint64_t LibJPEGReadPlugin::saveDataToXPCObject(LibJPEGReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_libjpeg", this + 528, 0x23C8uLL);
  }

  return v4;
}

CGMutableImageMetadataRef LibJPEGReadPlugin::readAPP13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 408);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = *(v2 + 4);
    if (*(v2 + 8) == 237 && v4 >= 0xF)
    {
      v6 = v2[3];
      if (*v6 == 0x6F68736F746F6850 && *(v6 + 4) == 8304)
      {
        break;
      }
    }

    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  Mutable = CGImageMetadataCreateMutable();
  ReadPhotoshopImageResource(Mutable, v6 + 14, v4 - 14);
  if (Mutable)
  {
    TagWithPath = CGImageMetadataGetTagWithPath(Mutable, 0, @"iio:PSIRClippingPath");
    if (TagWithPath)
    {
      v11 = TagWithPath;
      Value = CGImageMetadataTagGetValue(TagWithPath);
      if (Value)
      {
        v13 = *(a1 + 16);
        v14 = CGPathRetain(Value);
        IIOImagePlus::setClipPath(v13, v14);
      }

      CGImageMetadataRemoveTag(Mutable, v11);
    }
  }

  return Mutable;
}

const void *LibJPEGReadPlugin::readExifData(int a1, uint64_t a2, IIODictionary *a3)
{
  v4 = *(a2 + 408);
  if (v4)
  {
    MetadataFromDatabuffer = 0;
    do
    {
      if (*(v4 + 8) == 225 && *(v4 + 4) >= 0xBu)
      {
        v7 = v4[3];
        if (*v7 == 69 && v7[1] == 120 && v7[2] == 105 && v7[3] == 102 && !v7[4] && !v7[5])
        {
          IIOMetadataFlagsFromImageSourceOptions(a3);
          MetadataFromDatabuffer = CreateMetadataFromDatabuffer((v4[3] + 6), (*(v4 + 4) - 6));
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    MetadataFromDatabuffer = 0;
  }

  if (*(a2 + 376))
  {
    TopLevelTag = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormat");
    if (TopLevelTag)
    {
      v9 = TopLevelTag;
      Value = CGImageMetadataTagGetValue(TopLevelTag);
      IntValue = CFStringGetIntValue(Value);
      v12 = *(*(a2 + 40) + 56);
      v21 = 0;
      IIOImageReadSession::getBytesAtOffset(v12, &v21, IntValue, 2);
      if (v21 != 55551 && v21 != 65496)
      {
        v13 = (IntValue + 18);
        IIOImageReadSession::getBytesAtOffset(v12, &v21, v13, 2);
        if (v21 == 65496 || v21 == 55551)
        {
          v14 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", v13);
          if (v14)
          {
            v15 = v14;
            CGImageMetadataTagSetValue(v9, v14);
            CFRelease(v15);
          }
        }

        else
        {
          v16 = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormat");
          CGImageMetadataRemoveTag(MetadataFromDatabuffer, v16);
          v17 = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatLength");
          CGImageMetadataRemoveTag(MetadataFromDatabuffer, v17);
          v18 = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatWidth");
          CGImageMetadataRemoveTag(MetadataFromDatabuffer, v18);
          v19 = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatHeight");
          CGImageMetadataRemoveTag(MetadataFromDatabuffer, v19);
        }
      }
    }
  }

  return MetadataFromDatabuffer;
}

uint64_t LibJPEGReadPlugin::startDecompressing(uint64_t a1, int a2)
{
  _cg_jpeg_CreateDecompress((a1 + 528), 90, 664);
  *(a1 + 568) = a1 + 1192;
  result = _cg_jpeg_read_header(a1 + 528, 1);
  v5 = *(a1 + 332);
  if (*(a1 + 332))
  {
    *(a1 + 624) = 1;
    v6 = 8;
    *(a1 + 600) = 8;
    v7 = v5 - 2;
    if (v7 <= 6)
    {
      v6 = dword_18620A7F0[v7];
    }

    *(a1 + 596) = v6;
  }

  *(a1 + 592) = a2;
  if (*(a1 + 564) >= 202)
  {

    return _cg_jpeg_start_decompress(a1 + 528);
  }

  return result;
}

uint64_t LibJPEGReadPlugin::readXMPData(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  if (!theData)
  {
    v7 = *(a2 + 408);
    v34 = 0u;
    v35 = 0u;
    if (!v7)
    {
      return 0;
    }

    v8 = 0;
    v9 = 0;
    v31 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0x2E65626F64612E73;
    while (1)
    {
      if (*(v7 + 8) == 225)
      {
        v14 = *(v7 + 4);
        if (v14 >= 0x1E)
        {
          v15 = v7[3];
          if (*v15 == 0x6E2F2F3A70747468 && *(v15 + 8) == v13 && *(v15 + 16) == 0x2F7061782F6D6F63)
          {
            v21 = *(v15 + 29);
            v20 = (v15 + 29);
            v22 = v14 - 29;
            if (v21 == 60)
            {
              v9 = v22;
              v8 = v20;
            }

            goto LABEL_37;
          }

          v18 = v14 - 75;
          if (v14 >= 0x4B)
          {
            v19 = v13;
            if (!strcmp(v7[3], "http://ns.adobe.com/xmp/extension/"))
            {
              break;
            }
          }
        }
      }

LABEL_37:
      v7 = *v7;
      if (!v7)
      {
        if (v12 && v11 && v10 == v11 && v8 && v9)
        {
          MetadataFromExtendedXMPData = CreateMetadataFromExtendedXMPData(v8, v9, v12);
          goto LABEL_59;
        }

        if (v8 && v9)
        {
          result = CreateMetadataFromXMPBuffer(v8, v9);
          MetadataFromExtendedXMPData = result;
          if (!v12)
          {
            return result;
          }
        }

        else
        {
          MetadataFromExtendedXMPData = 0;
          result = 0;
          if (!v12)
          {
            return result;
          }
        }

LABEL_59:
        free(v12);
        return MetadataFromExtendedXMPData;
      }
    }

    v28 = v10;
    v29 = v12;
    v32 = *(v15 + 35);
    v33 = *(v15 + 51);
    v23 = bswap32(*(v15 + 67));
    v24 = *(v15 + 71);
    if (v31)
    {
      v25 = v11;
    }

    else
    {
      v34 = *(v15 + 35);
      v35 = *(v15 + 51);
      if (IIOImageReadSession::getSize(*(a1 + 24)) <= v23)
      {
        _cg_jpeg_mem_term("readXMPData", 1316, "*** ERROR bad extendedLength: %d\n", v23);
        v31 = 0;
        goto LABEL_44;
      }

      v25 = v23;
      v11 = v23;
      v29 = malloc_type_calloc(1uLL, v23, 0x100004077774924uLL);
      if (!v29)
      {
        v12 = 0;
        v31 = 0;
        goto LABEL_45;
      }
    }

    if (IIOImageReadSession::getSize(*(a1 + 24)) <= v25)
    {
      _cg_jpeg_mem_term("readXMPData", 1322, "*** ERROR bad extendedLength: %d\n");
    }

    else
    {
      v26 = bswap32(v24);
      if (v26 < v11)
      {
        v12 = v29;
        if (!__CFADD__(v18, v26))
        {
          v10 = v28;
          if (!(v34 ^ v32 | *(&v34 + 1) ^ *(&v32 + 1) | v35 ^ v33 | *(&v35 + 1) ^ *(&v33 + 1)))
          {
            v13 = v19;
            if (v23 == v11 && v18 + v26 <= v11)
            {
              memcpy(&v29[v26], (v7[3] + 75), v18);
              v13 = v19;
              v10 = v28 + v18;
              v31 = 1;
            }

            else
            {
              v31 = 1;
              v23 = v11;
            }

            goto LABEL_36;
          }

          v31 = 1;
          v23 = v11;
LABEL_34:
          v13 = v19;
LABEL_36:
          v11 = v23;
          goto LABEL_37;
        }

        v31 = 1;
        v23 = v11;
LABEL_45:
        v10 = v28;
        goto LABEL_34;
      }

      _cg_jpeg_mem_term("readXMPData", 1323, "*** ERROR bad chunkOffset: %d\n");
    }

    v31 = 1;
    v23 = v11;
LABEL_44:
    v12 = v29;
    goto LABEL_45;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return CreateMetadataFromXMPSidecarData(BytePtr, Length);
}