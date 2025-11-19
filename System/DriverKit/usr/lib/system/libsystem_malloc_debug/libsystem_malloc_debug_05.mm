void xzm_malloc_zone_free_definite_size_slow(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v180 = a1;
  v179 = a2;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v189 = a1;
  v187 = 0;
  v186 = &v177;
  v185 = &v176;
  v184 = a2;
  v192 = a2;
  v191 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v188 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v193 = a1;
  if (*(a1 + 240))
  {
    v31 = *(a1 + 240);
  }

  else
  {
    v31 = v193;
  }

  v183 = v31;
  v197 = v188;
  v196 = v31;
  v195 = 0;
  v202 = v188;
  v201 = &v195;
  v200 = v188;
  if (v188 >> 36)
  {
    *v201 = 0;
    v203 = 0x4000;
  }

  else
  {
    v199 = v200 >> 22;
    *v201 = 0;
    if (v199 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x83EC0);
    }

    v203 = v199;
  }

  v194 = v203;
  if (v203 < 0x4000)
  {
    v198 = *(v196 + 488) + 4 * v194;
  }

  else
  {
    v198 = 0;
  }

  v182 = v198;
  if (!v198)
  {
    v190 = 0;
    goto LABEL_117;
  }

  v221 = *v182;
  v220 = v189;
  v219 = v184;
  v218 = v188;
  v217 = v187;
  v216 = v186;
  v215 = v185;
  v245 = v221;
  v214 = (v221 & 0x7FFFFFFF) << 14;
  if (v214)
  {
    v253 = v214;
    v252 = v218;
    v257 = v214;
    v256 = v218;
    v267 = v214;
    v266 = v218;
    v271 = v214;
    v270 = v218;
    v274 = v214;
    v276 = v214;
    v275 = 0;
    v269 = v218 - *(v214 + 72);
    v284 = v214;
    v285 = v214;
    v283 = *(v214 + 12);
    if (v283 << 14)
    {
      v282 = v271;
      v286 = v271;
      v281 = *(v271 + 12);
      v280 = v271;
      v287 = v271;
      v279 = *(v271 + 12);
      v30 = (v281 << 14) - (v279 << 14) + 0x400000;
    }

    else
    {
      v278 = v271;
      v288 = v271;
      v277 = *(v271 + 12);
      v30 = v277 << 14;
    }

    v268 = v30;
    v29 = 0;
    if ((v269 & 0x8000000000000000) == 0)
    {
      v29 = v269 < v268;
    }

    if (!v29)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x84120);
    }

    v265 = v269;
    v273 = v267;
    v272 = v269;
    v255 = v269 >> 14;
    if (v255 >= *(v257 + 16))
    {
      v258 = 0;
    }

    else
    {
      v258 = v257 + 48 * v255 + 2136;
    }

    v251 = v258;
    if (!v258)
    {
      v254 = 0;
LABEL_55:
      v213 = v254;
      if (!v254)
      {
        v222 = 0;
        goto LABEL_116;
      }

      if (*(v213 + 34) != *(v220 + 208))
      {
        v222 = 0;
        goto LABEL_116;
      }

      v212 = v218;
      v229 = v220;
      v228 = v213;
      v227 = 0;
      v231 = v220;
      v230 = v213;
      v234 = v220;
      v233 = v213;
      v232 = v213 & 0xFFFFFFFFFFFFC000;
      v26 = 1;
      if ((v213 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v25 = 0;
        if (v233 >= v232 + 2136)
        {
          v25 = v233 < v232 + 48 * *(v232 + 16) + 2136;
        }

        v26 = v25;
      }

      if ((v26 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x84648);
      }

      v236 = v232;
      v235 = v230;
      v241 = v232;
      v240 = v230;
      if (v230 < v232 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x846ACLL);
      }

      v239 = 0xAAAAAAAAAAAAAAABLL * ((v240 - v241 - 2136) >> 4);
      if (v239 >= *(v241 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x8470CLL);
      }

      v238 = v232;
      v237 = v239;
      v211 = *(v232 + 72) + (v239 << 14);
      v210 = v212 - v211;
      v209 = *(v213 + 32) & 0xF;
      v208 = 0;
      v207 = 0;
      v225 = v209;
      if (v209 == 2 || v209 == 6 || v209 == 5)
      {
        v208 = *(v220 + 216) + 96 * *(v213 + 33);
        v207 = *(v208 + 48);
        if (!XZM_FAST_ALIGNED(v210, v207, *(v208 + 64)))
        {
          v222 = 0;
          goto LABEL_116;
        }
      }

      else
      {
        v207 = *(v213 + 40) << 14;
        v206 = v210 % v207;
        if (v210 % v207)
        {
          v222 = 0;
          goto LABEL_116;
        }
      }

      v205 = v210 / v207;
      v223 = *(v213 + 32) & 0xF;
      v224 = v223 == 2 || v223 == 6 || v223 == 5;
      v24 = 1;
      if (v224)
      {
        v24 = v205 < *(v208 + 68);
      }

      if (!v24)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x84928);
      }

      v242 = v220;
      v204 = *(v220 + 368) & 1;
      if (v204)
      {
        v243 = v212;
        v244 = v212;
        _X8 = v212;
        __asm { LDG             X8, [X8] }

        v212 = _X8;
        v249 = v219;
        v248 = _X8;
        v247 = v219;
        v246 = _X8;
        if ((HIBYTE(v219) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v222 = 0;
          goto LABEL_116;
        }
      }

      v304 = v220;
      v303 = v213;
      v302 = v209;
      v301 = v210;
      v300 = v207;
      v299 = v212;
      if ((*(v213 + 32) & 0xF) != v209)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x84A30);
      }

      switch(v302)
      {
        case 2:
          goto LABEL_95;
        case 5:
          v289 = v301 / v300;
          v312 = v303;
          v311 = v301 / v300;
          if ((*(v303 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x84BCCLL);
          }

          v305 = (*v312 >> v311) & 1;
          break;
        case 6:
LABEL_95:
          v298 = 0;
          if (*(v303 + 12))
          {
            __asm { MSR             TCO, #1 }

            v296 = *v299;
            v297 = v296;
            v295 = v296;
            v298 = v296;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v293 = *v299;
            v294 = v293;
            v292 = v293;
            v298 = v293;
          }

          v291 = *(v304 + 320) ^ v299;
          if (v302 == 6)
          {
            v307 = v291;
            v306 = v291 & 0xF0FFFFFFFFFFFFFFLL;
            v291 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v298 == v291)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v304, v303, v299);
            v305 = is_free_slow & 1;
          }

          else
          {
            v305 = 0;
          }

          break;
        default:
          v305 = 0;
          break;
      }

      if (v305 == 1)
      {
        v222 = 0;
      }

      else
      {
        if (v217)
        {
          *v217 = v208;
        }

        if (v216)
        {
          *v216 = v212;
        }

        if (v215)
        {
          *v215 = v207;
        }

        v222 = v213;
      }

      goto LABEL_116;
    }

    v260 = v251;
    if ((*(v251 + 32) & 0xF) == 4)
    {
      v259 = v260 - *(v260 + 36);
      if (v259 < (v260 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x84230);
      }

      v263 = v259;
      v262 = v260;
      v28 = *(v259 + 32) & 0xF;
      if ((v28 - 1) < 2)
      {
        v264 = v263 == v262;
      }

      else if (v28 == 3 || (v28 - 5) < 5)
      {
        if (v262 < v263)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x842D4);
        }

        v264 = v262 < v263 + 48 * *(v263 + 40);
      }

      else
      {
        v264 = 0;
      }

      if (v264)
      {
        v261 = v259;
      }

      else
      {
        v261 = v260;
      }
    }

    else
    {
      v261 = v260;
    }

    v250 = v261;
    v309 = *(v261 + 32) & 0xF;
    if (v309 >= 2u)
    {
      if (v309 == 2)
      {
LABEL_50:
        v310 = 1;
        goto LABEL_51;
      }

      if (v309 - 3 >= 2)
      {
        if (v309 - 5 >= 4)
        {
          v308 = v309;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v309;
          __break(1u);
          JUMPOUT(0x843F0);
        }

        goto LABEL_50;
      }
    }

    v310 = 0;
LABEL_51:
    if (v310 == 1)
    {
      v27 = v250;
    }

    else
    {
      v27 = 0;
    }

    v254 = v27;
    goto LABEL_55;
  }

  v222 = 0;
LABEL_116:
  v190 = v222;
LABEL_117:
  v175 = v190;
  if (v178)
  {
    *v178 = v175;
  }

  if (v175)
  {
    if (v177 == v179)
    {
      v181 = v176;
    }

    else
    {
      v174 = v179 - v177;
      v181 = v176 - (v179 - v177);
    }
  }

  else
  {
    v181 = _xzm_ptr_size_outlined(v180, v179);
  }

  v32 = 0;
  if (v181 || (*(a1 + 360) & 0x80) == 0)
  {
    goto LABEL_253;
  }

  if (*(a1 + 240))
  {
    v23 = *(a1 + 240);
  }

  else
  {
    v23 = a1;
  }

  v32 = v23;
  v41 = v23;
  v40 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v50 = v23;
  v48 = 0;
  v47 = &v38;
  v46 = &v37;
  v45 = a2;
  v53 = a2;
  v52 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v49 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v54 = v23;
  if (*(v23 + 240))
  {
    v22 = *(v23 + 240);
  }

  else
  {
    v22 = v54;
  }

  v44 = v22;
  v58 = v49;
  v57 = v22;
  v56 = 0;
  v63 = v49;
  v62 = &v56;
  v61 = v49;
  if (v49 >> 36)
  {
    *v62 = 0;
    v64 = 0x4000;
  }

  else
  {
    v60 = v61 >> 22;
    *v62 = 0;
    if (v60 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x84ED0);
    }

    v64 = v60;
  }

  v55 = v64;
  if (v64 < 0x4000)
  {
    v59 = *(v57 + 488) + 4 * v55;
  }

  else
  {
    v59 = 0;
  }

  v43 = v59;
  if (v59)
  {
    v82 = *v43;
    v81 = v50;
    v80 = v45;
    v79 = v49;
    v78 = v48;
    v77 = v47;
    v76 = v46;
    v106 = v82;
    v75 = (v82 & 0x7FFFFFFF) << 14;
    if (!v75)
    {
      v83 = 0;
LABEL_243:
      v51 = v83;
      goto LABEL_244;
    }

    v114 = v75;
    v113 = v79;
    v118 = v75;
    v117 = v79;
    v128 = v75;
    v127 = v79;
    v132 = v75;
    v131 = v79;
    v135 = v75;
    v137 = v75;
    v136 = 0;
    v130 = v79 - *(v75 + 72);
    v145 = v75;
    v146 = v75;
    v144 = *(v75 + 12);
    if (v144 << 14)
    {
      v143 = v132;
      v147 = v132;
      v142 = *(v132 + 12);
      v141 = v132;
      v148 = v132;
      v140 = *(v132 + 12);
      v21 = (v142 << 14) - (v140 << 14) + 0x400000;
    }

    else
    {
      v139 = v132;
      v149 = v132;
      v138 = *(v132 + 12);
      v21 = v138 << 14;
    }

    v129 = v21;
    v20 = 0;
    if ((v130 & 0x8000000000000000) == 0)
    {
      v20 = v130 < v129;
    }

    if (!v20)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x85130);
    }

    v126 = v130;
    v134 = v128;
    v133 = v130;
    v116 = v130 >> 14;
    if (v116 >= *(v118 + 16))
    {
      v119 = 0;
    }

    else
    {
      v119 = v118 + 48 * v116 + 2136;
    }

    v112 = v119;
    if (!v119)
    {
      v115 = 0;
LABEL_182:
      v74 = v115;
      if (!v115)
      {
        v83 = 0;
        goto LABEL_243;
      }

      if (*(v74 + 34) != *(v81 + 208))
      {
        v83 = 0;
        goto LABEL_243;
      }

      v73 = v79;
      v90 = v81;
      v89 = v74;
      v88 = 0;
      v92 = v81;
      v91 = v74;
      v95 = v81;
      v94 = v74;
      v93 = v74 & 0xFFFFFFFFFFFFC000;
      v17 = 1;
      if ((v74 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v16 = 0;
        if (v94 >= v93 + 2136)
        {
          v16 = v94 < v93 + 48 * *(v93 + 16) + 2136;
        }

        v17 = v16;
      }

      if ((v17 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x85658);
      }

      v97 = v93;
      v96 = v91;
      v102 = v93;
      v101 = v91;
      if (v91 < v93 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x856BCLL);
      }

      v100 = 0xAAAAAAAAAAAAAAABLL * ((v101 - v102 - 2136) >> 4);
      if (v100 >= *(v102 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x8571CLL);
      }

      v99 = v93;
      v98 = v100;
      v72 = *(v93 + 72) + (v100 << 14);
      v71 = v73 - v72;
      v70 = *(v74 + 32) & 0xF;
      v69 = 0;
      v68 = 0;
      v86 = v70;
      if (v70 == 2 || v70 == 6 || v70 == 5)
      {
        v69 = *(v81 + 216) + 96 * *(v74 + 33);
        v68 = *(v69 + 48);
        if (!XZM_FAST_ALIGNED(v71, v68, *(v69 + 64)))
        {
          v83 = 0;
          goto LABEL_243;
        }
      }

      else
      {
        v68 = *(v74 + 40) << 14;
        v67 = v71 % v68;
        if (v71 % v68)
        {
          v83 = 0;
          goto LABEL_243;
        }
      }

      v66 = v71 / v68;
      v84 = *(v74 + 32) & 0xF;
      v85 = v84 == 2 || v84 == 6 || v84 == 5;
      v15 = 1;
      if (v85)
      {
        v15 = v66 < *(v69 + 68);
      }

      if (!v15)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x85938);
      }

      v103 = v81;
      v65 = *(v81 + 368) & 1;
      if (v65)
      {
        v104 = v73;
        v105 = v73;
        _X8 = v73;
        __asm { LDG             X8, [X8] }

        v73 = _X8;
        v110 = v80;
        v109 = _X8;
        v108 = v80;
        v107 = _X8;
        if ((HIBYTE(v80) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v83 = 0;
          goto LABEL_243;
        }
      }

      v165 = v81;
      v164 = v74;
      v163 = v70;
      v162 = v71;
      v161 = v68;
      v160 = v73;
      if ((*(v74 + 32) & 0xF) != v70)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x85A40);
      }

      switch(v163)
      {
        case 2:
          goto LABEL_222;
        case 5:
          v150 = v162 / v161;
          v173 = v164;
          v172 = v162 / v161;
          if ((*(v164 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x85BDCLL);
          }

          v166 = (*v173 >> v172) & 1;
          break;
        case 6:
LABEL_222:
          v159 = 0;
          if (*(v164 + 12))
          {
            __asm { MSR             TCO, #1 }

            v157 = *v160;
            v158 = v157;
            v156 = v157;
            v159 = v157;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v154 = *v160;
            v155 = v154;
            v153 = v154;
            v159 = v154;
          }

          v152 = *(v165 + 320) ^ v160;
          if (v163 == 6)
          {
            v168 = v152;
            v167 = v152 & 0xF0FFFFFFFFFFFFFFLL;
            v152 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v159 == v152)
          {
            v151 = _xzm_xzone_freelist_chunk_block_is_free_slow(v165, v164, v160);
            v166 = v151 & 1;
          }

          else
          {
            v166 = 0;
          }

          break;
        default:
          v166 = 0;
          break;
      }

      if (v166 == 1)
      {
        v83 = 0;
      }

      else
      {
        if (v78)
        {
          *v78 = v69;
        }

        if (v77)
        {
          *v77 = v73;
        }

        if (v76)
        {
          *v76 = v68;
        }

        v83 = v74;
      }

      goto LABEL_243;
    }

    v121 = v112;
    if ((*(v112 + 32) & 0xF) == 4)
    {
      v120 = v121 - *(v121 + 36);
      if (v120 < (v121 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x85240);
      }

      v124 = v120;
      v123 = v121;
      v19 = *(v120 + 32) & 0xF;
      if ((v19 - 1) < 2)
      {
        v125 = v124 == v123;
      }

      else if (v19 == 3 || (v19 - 5) < 5)
      {
        if (v123 < v124)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x852E4);
        }

        v125 = v123 < v124 + 48 * *(v124 + 40);
      }

      else
      {
        v125 = 0;
      }

      if (v125)
      {
        v122 = v120;
      }

      else
      {
        v122 = v121;
      }
    }

    else
    {
      v122 = v121;
    }

    v111 = v122;
    v170 = *(v122 + 32) & 0xF;
    if (v170 >= 2u)
    {
      if (v170 == 2)
      {
LABEL_177:
        v171 = 1;
        goto LABEL_178;
      }

      if (v170 - 3 >= 2)
      {
        if (v170 - 5 >= 4)
        {
          v169 = v170;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v170;
          __break(1u);
          JUMPOUT(0x85400);
        }

        goto LABEL_177;
      }
    }

    v171 = 0;
LABEL_178:
    if (v171 == 1)
    {
      v18 = v111;
    }

    else
    {
      v18 = 0;
    }

    v115 = v18;
    goto LABEL_182;
  }

  v51 = 0;
LABEL_244:
  v36 = v51;
  if (v39)
  {
    *v39 = v51;
  }

  if (v36)
  {
    if (v38 == v40)
    {
      v42 = v37;
    }

    else
    {
      v42 = v37 - (v40 - v38);
    }
  }

  else
  {
    v42 = _xzm_ptr_size_outlined(v41, v40);
  }

  if (!v42)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion our_size != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5228)";
    __break(1u);
    JUMPOUT(0x85D54);
  }

LABEL_253:
  if ((*(a1 + 360) & 0x20) != 0 && a3 >= 0x401)
  {
    _platform_memset();
  }

  if (v32)
  {
    xzm_malloc_zone_free_definite_size(v32, a2);
  }

  else
  {
    xzm_malloc_zone_free_definite_size(a1, a2);
  }
}

void xzm_malloc_zone_try_free_default_slow(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v179 = a1;
  v178 = a2;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v188 = a1;
  v186 = 0;
  v185 = &v176;
  v184 = &v175;
  v183 = a2;
  v191 = a2;
  v190 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v187 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v192 = a1;
  if (*(a1 + 240))
  {
    v30 = *(a1 + 240);
  }

  else
  {
    v30 = v192;
  }

  v182 = v30;
  v196 = v187;
  v195 = v30;
  v194 = 0;
  v201 = v187;
  v200 = &v194;
  v199 = v187;
  if (v187 >> 36)
  {
    *v200 = 0;
    v202 = 0x4000;
  }

  else
  {
    v198 = v199 >> 22;
    *v200 = 0;
    if (v198 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x85F54);
    }

    v202 = v198;
  }

  v193 = v202;
  if (v202 < 0x4000)
  {
    v197 = *(v195 + 488) + 4 * v193;
  }

  else
  {
    v197 = 0;
  }

  v181 = v197;
  if (!v197)
  {
    v189 = 0;
    goto LABEL_117;
  }

  v220 = *v181;
  v219 = v188;
  v218 = v183;
  v217 = v187;
  v216 = v186;
  v215 = v185;
  v214 = v184;
  v244 = v220;
  v213 = (v220 & 0x7FFFFFFF) << 14;
  if (v213)
  {
    v252 = v213;
    v251 = v217;
    v256 = v213;
    v255 = v217;
    v266 = v213;
    v265 = v217;
    v270 = v213;
    v269 = v217;
    v273 = v213;
    v275 = v213;
    v274 = 0;
    v268 = v217 - *(v213 + 72);
    v283 = v213;
    v284 = v213;
    v282 = *(v213 + 12);
    if (v282 << 14)
    {
      v281 = v270;
      v285 = v270;
      v280 = *(v270 + 12);
      v279 = v270;
      v286 = v270;
      v278 = *(v270 + 12);
      v29 = (v280 << 14) - (v278 << 14) + 0x400000;
    }

    else
    {
      v277 = v270;
      v287 = v270;
      v276 = *(v270 + 12);
      v29 = v276 << 14;
    }

    v267 = v29;
    v28 = 0;
    if ((v268 & 0x8000000000000000) == 0)
    {
      v28 = v268 < v267;
    }

    if (!v28)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x861B4);
    }

    v264 = v268;
    v272 = v266;
    v271 = v268;
    v254 = v268 >> 14;
    if (v254 >= *(v256 + 16))
    {
      v257 = 0;
    }

    else
    {
      v257 = v256 + 48 * v254 + 2136;
    }

    v250 = v257;
    if (!v257)
    {
      v253 = 0;
LABEL_55:
      v212 = v253;
      if (!v253)
      {
        v221 = 0;
        goto LABEL_116;
      }

      if (*(v212 + 34) != *(v219 + 208))
      {
        v221 = 0;
        goto LABEL_116;
      }

      v211 = v217;
      v228 = v219;
      v227 = v212;
      v226 = 0;
      v230 = v219;
      v229 = v212;
      v233 = v219;
      v232 = v212;
      v231 = v212 & 0xFFFFFFFFFFFFC000;
      v25 = 1;
      if ((v212 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v24 = 0;
        if (v232 >= v231 + 2136)
        {
          v24 = v232 < v231 + 48 * *(v231 + 16) + 2136;
        }

        v25 = v24;
      }

      if ((v25 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x866DCLL);
      }

      v235 = v231;
      v234 = v229;
      v240 = v231;
      v239 = v229;
      if (v229 < v231 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x86740);
      }

      v238 = 0xAAAAAAAAAAAAAAABLL * ((v239 - v240 - 2136) >> 4);
      if (v238 >= *(v240 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x867A0);
      }

      v237 = v231;
      v236 = v238;
      v210 = *(v231 + 72) + (v238 << 14);
      v209 = v211 - v210;
      v208 = *(v212 + 32) & 0xF;
      v207 = 0;
      v206 = 0;
      v224 = v208;
      if (v208 == 2 || v208 == 6 || v208 == 5)
      {
        v207 = *(v219 + 216) + 96 * *(v212 + 33);
        v206 = *(v207 + 48);
        if (!XZM_FAST_ALIGNED(v209, v206, *(v207 + 64)))
        {
          v221 = 0;
          goto LABEL_116;
        }
      }

      else
      {
        v206 = *(v212 + 40) << 14;
        v205 = v209 % v206;
        if (v209 % v206)
        {
          v221 = 0;
          goto LABEL_116;
        }
      }

      v204 = v209 / v206;
      v222 = *(v212 + 32) & 0xF;
      v223 = v222 == 2 || v222 == 6 || v222 == 5;
      v23 = 1;
      if (v223)
      {
        v23 = v204 < *(v207 + 68);
      }

      if (!v23)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x869BCLL);
      }

      v241 = v219;
      v203 = *(v219 + 368) & 1;
      if (v203)
      {
        v242 = v211;
        v243 = v211;
        _X8 = v211;
        __asm { LDG             X8, [X8] }

        v211 = _X8;
        v248 = v218;
        v247 = _X8;
        v246 = v218;
        v245 = _X8;
        if ((HIBYTE(v218) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v221 = 0;
          goto LABEL_116;
        }
      }

      v303 = v219;
      v302 = v212;
      v301 = v208;
      v300 = v209;
      v299 = v206;
      v298 = v211;
      if ((*(v212 + 32) & 0xF) != v208)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x86AC4);
      }

      switch(v301)
      {
        case 2:
          goto LABEL_95;
        case 5:
          v288 = v300 / v299;
          v311 = v302;
          v310 = v300 / v299;
          if ((*(v302 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x86C60);
          }

          v304 = (*v311 >> v310) & 1;
          break;
        case 6:
LABEL_95:
          v297 = 0;
          if (*(v302 + 12))
          {
            __asm { MSR             TCO, #1 }

            v295 = *v298;
            v296 = v295;
            v294 = v295;
            v297 = v295;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v292 = *v298;
            v293 = v292;
            v291 = v292;
            v297 = v292;
          }

          v290 = *(v303 + 320) ^ v298;
          if (v301 == 6)
          {
            v306 = v290;
            v305 = v290 & 0xF0FFFFFFFFFFFFFFLL;
            v290 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v297 == v290)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v303, v302, v298);
            v304 = is_free_slow & 1;
          }

          else
          {
            v304 = 0;
          }

          break;
        default:
          v304 = 0;
          break;
      }

      if (v304 == 1)
      {
        v221 = 0;
      }

      else
      {
        if (v216)
        {
          *v216 = v207;
        }

        if (v215)
        {
          *v215 = v211;
        }

        if (v214)
        {
          *v214 = v206;
        }

        v221 = v212;
      }

      goto LABEL_116;
    }

    v259 = v250;
    if ((*(v250 + 32) & 0xF) == 4)
    {
      v258 = v259 - *(v259 + 36);
      if (v258 < (v259 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x862C4);
      }

      v262 = v258;
      v261 = v259;
      v27 = *(v258 + 32) & 0xF;
      if ((v27 - 1) < 2)
      {
        v263 = v262 == v261;
      }

      else if (v27 == 3 || (v27 - 5) < 5)
      {
        if (v261 < v262)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x86368);
        }

        v263 = v261 < v262 + 48 * *(v262 + 40);
      }

      else
      {
        v263 = 0;
      }

      if (v263)
      {
        v260 = v258;
      }

      else
      {
        v260 = v259;
      }
    }

    else
    {
      v260 = v259;
    }

    v249 = v260;
    v308 = *(v260 + 32) & 0xF;
    if (v308 >= 2u)
    {
      if (v308 == 2)
      {
LABEL_50:
        v309 = 1;
        goto LABEL_51;
      }

      if (v308 - 3 >= 2)
      {
        if (v308 - 5 >= 4)
        {
          v307 = v308;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v308;
          __break(1u);
          JUMPOUT(0x86484);
        }

        goto LABEL_50;
      }
    }

    v309 = 0;
LABEL_51:
    if (v309 == 1)
    {
      v26 = v249;
    }

    else
    {
      v26 = 0;
    }

    v253 = v26;
    goto LABEL_55;
  }

  v221 = 0;
LABEL_116:
  v189 = v221;
LABEL_117:
  v174 = v189;
  if (v177)
  {
    *v177 = v174;
  }

  if (v174)
  {
    if (v176 == v178)
    {
      v180 = v175;
    }

    else
    {
      v173 = v178 - v176;
      v180 = v175 - (v178 - v176);
    }
  }

  else
  {
    v180 = _xzm_ptr_size_outlined(v179, v178);
  }

  v32 = v180;
  v31 = 0;
  if (v180 || (*(a1 + 360) & 0x80) == 0)
  {
    goto LABEL_252;
  }

  if (*(a1 + 240))
  {
    v22 = *(a1 + 240);
  }

  else
  {
    v22 = a1;
  }

  v31 = v22;
  v40 = v22;
  v39 = a2;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v49 = v22;
  v47 = 0;
  v46 = &v37;
  v45 = &v36;
  v44 = a2;
  v52 = a2;
  v51 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v48 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v53 = v22;
  if (*(v22 + 240))
  {
    v21 = *(v22 + 240);
  }

  else
  {
    v21 = v53;
  }

  v43 = v21;
  v57 = v48;
  v56 = v21;
  v55 = 0;
  v62 = v48;
  v61 = &v55;
  v60 = v48;
  if (v48 >> 36)
  {
    *v61 = 0;
    v63 = 0x4000;
  }

  else
  {
    v59 = v60 >> 22;
    *v61 = 0;
    if (v59 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x86F64);
    }

    v63 = v59;
  }

  v54 = v63;
  if (v63 < 0x4000)
  {
    v58 = *(v56 + 488) + 4 * v54;
  }

  else
  {
    v58 = 0;
  }

  v42 = v58;
  if (v58)
  {
    v81 = *v42;
    v80 = v49;
    v79 = v44;
    v78 = v48;
    v77 = v47;
    v76 = v46;
    v75 = v45;
    v105 = v81;
    v74 = (v81 & 0x7FFFFFFF) << 14;
    if (!v74)
    {
      v82 = 0;
LABEL_243:
      v50 = v82;
      goto LABEL_244;
    }

    v113 = v74;
    v112 = v78;
    v117 = v74;
    v116 = v78;
    v127 = v74;
    v126 = v78;
    v131 = v74;
    v130 = v78;
    v134 = v74;
    v136 = v74;
    v135 = 0;
    v129 = v78 - *(v74 + 72);
    v144 = v74;
    v145 = v74;
    v143 = *(v74 + 12);
    if (v143 << 14)
    {
      v142 = v131;
      v146 = v131;
      v141 = *(v131 + 12);
      v140 = v131;
      v147 = v131;
      v139 = *(v131 + 12);
      v20 = (v141 << 14) - (v139 << 14) + 0x400000;
    }

    else
    {
      v138 = v131;
      v148 = v131;
      v137 = *(v131 + 12);
      v20 = v137 << 14;
    }

    v128 = v20;
    v19 = 0;
    if ((v129 & 0x8000000000000000) == 0)
    {
      v19 = v129 < v128;
    }

    if (!v19)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x871C4);
    }

    v125 = v129;
    v133 = v127;
    v132 = v129;
    v115 = v129 >> 14;
    if (v115 >= *(v117 + 16))
    {
      v118 = 0;
    }

    else
    {
      v118 = v117 + 48 * v115 + 2136;
    }

    v111 = v118;
    if (!v118)
    {
      v114 = 0;
LABEL_182:
      v73 = v114;
      if (!v114)
      {
        v82 = 0;
        goto LABEL_243;
      }

      if (*(v73 + 34) != *(v80 + 208))
      {
        v82 = 0;
        goto LABEL_243;
      }

      v72 = v78;
      v89 = v80;
      v88 = v73;
      v87 = 0;
      v91 = v80;
      v90 = v73;
      v94 = v80;
      v93 = v73;
      v92 = v73 & 0xFFFFFFFFFFFFC000;
      v16 = 1;
      if ((v73 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v15 = 0;
        if (v93 >= v92 + 2136)
        {
          v15 = v93 < v92 + 48 * *(v92 + 16) + 2136;
        }

        v16 = v15;
      }

      if ((v16 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x876ECLL);
      }

      v96 = v92;
      v95 = v90;
      v101 = v92;
      v100 = v90;
      if (v90 < v92 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x87750);
      }

      v99 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v101 - 2136) >> 4);
      if (v99 >= *(v101 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x877B0);
      }

      v98 = v92;
      v97 = v99;
      v71 = *(v92 + 72) + (v99 << 14);
      v70 = v72 - v71;
      v69 = *(v73 + 32) & 0xF;
      v68 = 0;
      v67 = 0;
      v85 = v69;
      if (v69 == 2 || v69 == 6 || v69 == 5)
      {
        v68 = *(v80 + 216) + 96 * *(v73 + 33);
        v67 = *(v68 + 48);
        if (!XZM_FAST_ALIGNED(v70, v67, *(v68 + 64)))
        {
          v82 = 0;
          goto LABEL_243;
        }
      }

      else
      {
        v67 = *(v73 + 40) << 14;
        v66 = v70 % v67;
        if (v70 % v67)
        {
          v82 = 0;
          goto LABEL_243;
        }
      }

      v65 = v70 / v67;
      v83 = *(v73 + 32) & 0xF;
      v84 = v83 == 2 || v83 == 6 || v83 == 5;
      v14 = 1;
      if (v84)
      {
        v14 = v65 < *(v68 + 68);
      }

      if (!v14)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x879CCLL);
      }

      v102 = v80;
      v64 = *(v80 + 368) & 1;
      if (v64)
      {
        v103 = v72;
        v104 = v72;
        _X8 = v72;
        __asm { LDG             X8, [X8] }

        v72 = _X8;
        v109 = v79;
        v108 = _X8;
        v107 = v79;
        v106 = _X8;
        if ((HIBYTE(v79) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v82 = 0;
          goto LABEL_243;
        }
      }

      v164 = v80;
      v163 = v73;
      v162 = v69;
      v161 = v70;
      v160 = v67;
      v159 = v72;
      if ((*(v73 + 32) & 0xF) != v69)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x87AD4);
      }

      switch(v162)
      {
        case 2:
          goto LABEL_222;
        case 5:
          v149 = v161 / v160;
          v172 = v163;
          v171 = v161 / v160;
          if ((*(v163 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x87C70);
          }

          v165 = (*v172 >> v171) & 1;
          break;
        case 6:
LABEL_222:
          v158 = 0;
          if (*(v163 + 12))
          {
            __asm { MSR             TCO, #1 }

            v156 = *v159;
            v157 = v156;
            v155 = v156;
            v158 = v156;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v153 = *v159;
            v154 = v153;
            v152 = v153;
            v158 = v153;
          }

          v151 = *(v164 + 320) ^ v159;
          if (v162 == 6)
          {
            v167 = v151;
            v166 = v151 & 0xF0FFFFFFFFFFFFFFLL;
            v151 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v158 == v151)
          {
            v150 = _xzm_xzone_freelist_chunk_block_is_free_slow(v164, v163, v159);
            v165 = v150 & 1;
          }

          else
          {
            v165 = 0;
          }

          break;
        default:
          v165 = 0;
          break;
      }

      if (v165 == 1)
      {
        v82 = 0;
      }

      else
      {
        if (v77)
        {
          *v77 = v68;
        }

        if (v76)
        {
          *v76 = v72;
        }

        if (v75)
        {
          *v75 = v67;
        }

        v82 = v73;
      }

      goto LABEL_243;
    }

    v120 = v111;
    if ((*(v111 + 32) & 0xF) == 4)
    {
      v119 = v120 - *(v120 + 36);
      if (v119 < (v120 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x872D4);
      }

      v123 = v119;
      v122 = v120;
      v18 = *(v119 + 32) & 0xF;
      if ((v18 - 1) < 2)
      {
        v124 = v123 == v122;
      }

      else if (v18 == 3 || (v18 - 5) < 5)
      {
        if (v122 < v123)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x87378);
        }

        v124 = v122 < v123 + 48 * *(v123 + 40);
      }

      else
      {
        v124 = 0;
      }

      if (v124)
      {
        v121 = v119;
      }

      else
      {
        v121 = v120;
      }
    }

    else
    {
      v121 = v120;
    }

    v110 = v121;
    v169 = *(v121 + 32) & 0xF;
    if (v169 >= 2u)
    {
      if (v169 == 2)
      {
LABEL_177:
        v170 = 1;
        goto LABEL_178;
      }

      if (v169 - 3 >= 2)
      {
        if (v169 - 5 >= 4)
        {
          v168 = v169;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v169;
          __break(1u);
          JUMPOUT(0x87494);
        }

        goto LABEL_177;
      }
    }

    v170 = 0;
LABEL_178:
    if (v170 == 1)
    {
      v17 = v110;
    }

    else
    {
      v17 = 0;
    }

    v114 = v17;
    goto LABEL_182;
  }

  v50 = 0;
LABEL_244:
  v35 = v50;
  if (v38)
  {
    *v38 = v50;
  }

  if (v35)
  {
    if (v37 == v39)
    {
      v41 = v36;
    }

    else
    {
      v41 = v36 - (v39 - v37);
    }
  }

  else
  {
    v41 = _xzm_ptr_size_outlined(v40, v39);
  }

  v32 = v41;
LABEL_252:
  if (v32)
  {
    if (v32 >= 0x401 && (*(a1 + 360) & 0x20) != 0)
    {
      _platform_memset();
    }

    if (v31)
    {
      xzm_malloc_zone_try_free_default(v31, a2);
    }

    else
    {
      xzm_malloc_zone_try_free_default(a1, a2);
    }
  }

  else
  {
    find_zone_and_free(a2, 1);
  }
}

uint64_t xzm_malloc_zone_malloc_type_malloc_slow(uint64_t a1, unint64_t a2, uint64_t a3)
{
  malloc_thread_options = _xzm_xzone_get_malloc_thread_options();
  if ((*(a1 + 360) & 0x80) != 0 && a2 <= 0x8000)
  {
    if (*(a1 + 240))
    {
      v12 = *(a1 + 240);
    }

    else
    {
      v12 = a1;
    }

    if ((*(v12 + 360) & 0x80) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
      __break(1u);
      JUMPOUT(0x87FF4);
    }

    v24 = a3;
    if (*(v12 + 240))
    {
      v11 = *(v12 + 240);
    }

    else
    {
      v11 = v12;
    }

    if (a2)
    {
      if (a2 > 0x80)
      {
        v36 = 63 - __clz(a2 - 1);
        v37 = (((a2 - 1) >> (v36 - 2)) & 3 | (4 * v36)) - 20;
      }

      else
      {
        if ((a2 & 0xF) != 0)
        {
          v10 = (a2 >> 4) + 1;
        }

        else
        {
          v10 = a2 >> 4;
        }

        v37 = v10 - 1;
      }
    }

    else
    {
      v37 = 0;
    }

    v23 = *(v11[55] + v37);
    if (HIWORD(a3) == 256)
    {
      v22 = 0;
    }

    else if (((WORD2(a3) >> 10) & 3) == 1)
    {
      v22 = 1;
    }

    else
    {
      if (!a3)
      {
        v24 = HIDWORD(malloc_entropy[0]);
      }

      v27 = v23 - 2;
      if ((v23 - 2) >= 5u)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
        __break(1u);
        JUMPOUT(0x8826CLL);
      }

      v26 = 0;
      if (v27 >= 2u)
      {
        v25 = (v11[49] * v24 + v11[50]) >> 32;
        if (v27 == 2)
        {
          v26 = v25 & 1;
        }

        else if (v27 == 3)
        {
          v26 = v25 % 3;
        }

        else
        {
          v26 = v25 & 3;
        }
      }

      v22 = v26 + 2;
    }

    if (v22 >= v23)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
      __break(1u);
      JUMPOUT(0x8839CLL);
    }

    v21 = _xzm_xzone_malloc(v12, a2, *(v11[56] + v37) + v22, malloc_thread_options);
    if (!v21)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
      __break(1u);
      JUMPOUT(0x883F8);
    }

    if ((malloc_thread_options & 1) != 0 && !_xzm_mem_is_zero())
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
      __break(1u);
      JUMPOUT(0x8843CLL);
    }

    v20 = xzm_malloc_zone_size(v12, v21);
    v9 = 0;
    if (*(v12 + 368))
    {
      v9 = 0;
      if (v20 <= *(v12 + 376))
      {
        v8 = 1;
        if (HIWORD(a3) == 256)
        {
          v8 = *(v12 + 369);
        }

        v9 = v8;
      }
    }

    if (!mfm_claimed_address(v21))
    {
      if ((v9 & 1) == 0 || (malloc_thread_options & 0x40000000) != 0)
      {
        if ((v21 & 0xF0FFFFFFFFFFFFFFLL) != v21)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
          __break(1u);
          JUMPOUT(0x88600);
        }
      }

      else if ((v21 & 0xF0FFFFFFFFFFFFFFLL) == v21)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
        __break(1u);
        JUMPOUT(0x885A0);
      }
    }

    v15 = v21;
  }

  else
  {
    if (a2 <= 0x8000)
    {
      if ((*(a1 + 360) & 0x80) != 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
        __break(1u);
        JUMPOUT(0x886A0);
      }

      v30 = a3;
      if (*(a1 + 240))
      {
        v7 = *(a1 + 240);
      }

      else
      {
        v7 = a1;
      }

      if (a2)
      {
        if (a2 > 0x80)
        {
          v34 = 63 - __clz(a2 - 1);
          v35 = (((a2 - 1) >> (v34 - 2)) & 3 | (4 * v34)) - 20;
        }

        else
        {
          if ((a2 & 0xF) != 0)
          {
            v6 = (a2 >> 4) + 1;
          }

          else
          {
            v6 = a2 >> 4;
          }

          v35 = v6 - 1;
        }
      }

      else
      {
        v35 = 0;
      }

      v29 = *(v7[55] + v35);
      if (HIWORD(a3) == 256)
      {
        v28 = 0;
      }

      else if (((WORD2(a3) >> 10) & 3) == 1)
      {
        v28 = 1;
      }

      else
      {
        if (!a3)
        {
          v30 = HIDWORD(malloc_entropy[0]);
        }

        v33 = v29 - 2;
        if ((v29 - 2) >= 5u)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
          __break(1u);
          JUMPOUT(0x88918);
        }

        v32 = 0;
        if (v33 >= 2u)
        {
          v31 = (v7[49] * v30 + v7[50]) >> 32;
          if (v33 == 2)
          {
            v32 = v31 & 1;
          }

          else if (v33 == 3)
          {
            v32 = v31 % 3;
          }

          else
          {
            v32 = v31 & 3;
          }
        }

        v28 = v32 + 2;
      }

      if (v28 >= v29)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
        __break(1u);
        JUMPOUT(0x88A48);
      }

      v19 = _xzm_xzone_malloc(a1, a2, *(v7[56] + v35) + v28, malloc_thread_options);
    }

    else
    {
      v19 = _xzm_malloc_large_huge(a1, a2, 0, a3, malloc_thread_options);
    }

    if (!v19)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
      __break(1u);
      JUMPOUT(0x88AA4);
    }

    if ((malloc_thread_options & 1) != 0 && !_xzm_mem_is_zero())
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
      __break(1u);
      JUMPOUT(0x88AE8);
    }

    v18 = xzm_malloc_zone_size(a1, v19);
    v5 = 0;
    if (*(a1 + 368))
    {
      v5 = 0;
      if (v18 <= *(a1 + 376))
      {
        v4 = 1;
        if (HIWORD(a3) == 256)
        {
          v4 = *(a1 + 369);
        }

        v5 = v4;
      }
    }

    if (!mfm_claimed_address(v19))
    {
      if ((v5 & 1) == 0 || (malloc_thread_options & 0x40000000) != 0)
      {
        if ((v19 & 0xF0FFFFFFFFFFFFFFLL) != v19)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
          __break(1u);
          JUMPOUT(0x88CACLL);
        }
      }

      else if ((v19 & 0xF0FFFFFFFFFFFFFFLL) == v19)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
        __break(1u);
        JUMPOUT(0x88C4CLL);
      }
    }

    v15 = v19;
  }

  if ((*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  return v15;
}

uint64_t xzm_malloc_zone_malloc_type_calloc_slow(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 0;
  v117 = a2;
  v116 = a3;
  v115 = 0;
  v114 = &v16;
  v113 = a3;
  if (a2 == 1 || (v113 = v117 * v116, !(v119 = !is_mul_ok(v117, v116))) && v113 <= malloc_absolute_max_size)
  {
    *v114 = v113;
    v118 = 0;
  }

  else
  {
    malloc_set_errno_fast(1, 12);
    v118 = -1;
  }

  if (v118)
  {
    return 0;
  }

  v15 = v17;
  v14 = _xzm_xzone_get_malloc_thread_options() | 1;
  if ((*(v20 + 360) & 0x80) != 0 && v16 <= 0x8000)
  {
    v106 = v20;
    if (*(v20 + 240))
    {
      v9 = *(v20 + 240);
    }

    else
    {
      v9 = v106;
    }

    v31 = v15;
    v30 = v9;
    v29 = v16;
    v28 = v14;
    v27 = 0;
    if ((*(v9 + 360) & 0x80) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
      __break(1u);
      JUMPOUT(0x89610);
    }

    v71 = v31;
    v70 = v30;
    v69 = v29;
    v104 = v30;
    if (*(v30 + 240))
    {
      v8 = *(v30 + 240);
    }

    else
    {
      v8 = v104;
    }

    v68 = v8;
    v108 = v69;
    if (v69)
    {
      if (v108 > 0x80)
      {
        v107 = 63 - __clz(--v108);
        v109 = ((v108 >> (v107 - 2)) & 3 | (4 * v107)) - 20;
      }

      else
      {
        if ((v108 & 0xF) != 0)
        {
          v7 = (v108 >> 4) + 1;
        }

        else
        {
          v7 = v108 >> 4;
        }

        v109 = v7 - 1;
      }
    }

    else
    {
      v109 = 0;
    }

    v67 = v109;
    v66 = *(v68[55] + v109);
    v65 = *(v68[56] + v109);
    v64 = 0;
    v81 = v71;
    v80 = HIWORD(v71);
    v63 = HIWORD(v71) == 256;
    if (HIWORD(v71) == 256)
    {
      v64 = 0;
    }

    else if (((WORD2(v71) >> 10) & 3) == 1)
    {
      v64 = 1;
    }

    else
    {
      v62 = v71 == 0;
      if (!v71)
      {
        LODWORD(v71) = HIDWORD(malloc_entropy[0]);
      }

      v79 = v71;
      v78 = v68 + 49;
      v77 = v66 - 2;
      if ((v66 - 2) >= 5u)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
        __break(1u);
        JUMPOUT(0x89888);
      }

      v76 = 0;
      if (v77 >= 2u)
      {
        v75 = v79;
        v74 = *v78;
        v73 = v78[1];
        v72 = (v74 * v79 + v73) >> 32;
        if (v77 == 2)
        {
          v76 = v72 & 1;
        }

        else if (v77 == 3)
        {
          v76 = v72 % 3;
        }

        else
        {
          v76 = v72 & 3;
        }
      }

      v61 = v76;
      v64 = v76 + 2;
    }

    if (v64 >= v66)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
      __break(1u);
      JUMPOUT(0x899B8);
    }

    v26 = v65 + v64;
    v27 = _xzm_xzone_malloc(v30, v29, v65 + v64, v28);
    if (!v27)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
      __break(1u);
      JUMPOUT(0x89A14);
    }

    if ((v28 & 1) != 0 && !_xzm_mem_is_zero())
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
      __break(1u);
      JUMPOUT(0x89A58);
    }

    v25 = xzm_malloc_zone_size(v30, v27);
    v87 = v31;
    v86 = HIWORD(v31);
    v24 = HIWORD(v31) == 256;
    v95 = v30;
    v94 = v25;
    v93 = v24;
    v92 = v30 + 368;
    v6 = 0;
    if (*(v30 + 368))
    {
      v6 = 0;
      if (v94 <= *(v92 + 8))
      {
        v5 = 1;
        if (v93)
        {
          v5 = *(v92 + 1);
        }

        v6 = v5;
      }
    }

    v23 = v6 & 1;
    v22 = (v28 & 0x40000000) != 0;
    if (!mfm_claimed_address(v27))
    {
      if ((v23 & 1) == 0 || v22)
      {
        v103 = v27;
        v102 = v27 & 0xF0FFFFFFFFFFFFFFLL;
        if ((v27 & 0xF0FFFFFFFFFFFFFFLL) != v27)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
          __break(1u);
          JUMPOUT(0x89C1CLL);
        }
      }

      else
      {
        v101 = v27;
        v100 = v27 & 0xF0FFFFFFFFFFFFFFLL;
        if ((v27 & 0xF0FFFFFFFFFFFFFFLL) == v27)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
          __break(1u);
          JUMPOUT(0x89BBCLL);
        }
      }
    }

    return v27;
  }

  else
  {
    v41 = v15;
    v40 = v20;
    v39 = v16;
    v38 = v14;
    v37 = 0;
    if (v16 <= 0x8000)
    {
      if ((*(v40 + 360) & 0x80) != 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
        __break(1u);
        JUMPOUT(0x88F24);
      }

      v52 = v41;
      v51 = v40;
      v50 = v39;
      v105 = v40;
      if (*(v40 + 240))
      {
        v13 = *(v40 + 240);
      }

      else
      {
        v13 = v105;
      }

      v49 = v13;
      v111 = v50;
      if (v50)
      {
        if (v111 > 0x80)
        {
          if (v111 > 0x8000)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion size <= XZM_SMALL_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:36)";
            __break(1u);
            JUMPOUT(0x89030);
          }

          v110 = 63 - __clz(--v111);
          v112 = ((v111 >> (v110 - 2)) & 3 | (4 * v110)) - 20;
        }

        else
        {
          if ((v111 & 0xF) != 0)
          {
            v12 = (v111 >> 4) + 1;
          }

          else
          {
            v12 = v111 >> 4;
          }

          v112 = v12 - 1;
        }
      }

      else
      {
        v112 = 0;
      }

      v48 = v112;
      v47 = *(v49[55] + v112);
      v46 = *(v49[56] + v112);
      v45 = 0;
      v83 = v52;
      v82 = HIWORD(v52);
      v44 = HIWORD(v52) == 256;
      if (HIWORD(v52) == 256)
      {
        v45 = 0;
      }

      else if (((WORD2(v52) >> 10) & 3) == 1)
      {
        v45 = 1;
      }

      else
      {
        v43 = v52 == 0;
        if (!v52)
        {
          LODWORD(v52) = HIDWORD(malloc_entropy[0]);
        }

        v60 = v52;
        v59 = v49 + 49;
        v58 = v47 - 2;
        if ((v47 - 2) >= 5u)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
          __break(1u);
          JUMPOUT(0x8919CLL);
        }

        v57 = 0;
        if (v58 >= 2u)
        {
          v56 = v60;
          v55 = *v59;
          v54 = v59[1];
          v53 = (v55 * v60 + v54) >> 32;
          if (v58 == 2)
          {
            v57 = v53 & 1;
          }

          else if (v58 == 3)
          {
            v57 = v53 % 3;
          }

          else
          {
            v57 = v53 & 3;
          }
        }

        v42 = v57;
        v45 = v57 + 2;
      }

      if (v45 >= v47)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
        __break(1u);
        JUMPOUT(0x892CCLL);
      }

      v36 = v46 + v45;
      v37 = _xzm_xzone_malloc(v40, v39, v46 + v45, v38);
    }

    else
    {
      v37 = _xzm_malloc_large_huge(v40, v39, 0, v41, v38);
    }

    if (!v37)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
      __break(1u);
      JUMPOUT(0x89328);
    }

    if ((v38 & 1) != 0 && !_xzm_mem_is_zero())
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
      __break(1u);
      JUMPOUT(0x8936CLL);
    }

    v35 = xzm_malloc_zone_size(v40, v37);
    v85 = v41;
    v84 = HIWORD(v41);
    v34 = HIWORD(v41) == 256;
    v91 = v40;
    v90 = v35;
    v89 = v34;
    v88 = v40 + 368;
    v11 = 0;
    if (*(v40 + 368))
    {
      v11 = 0;
      if (v90 <= *(v88 + 8))
      {
        v10 = 1;
        if (v89)
        {
          v10 = *(v88 + 1);
        }

        v11 = v10;
      }
    }

    v33 = v11 & 1;
    v32 = (v38 & 0x40000000) != 0;
    if (!mfm_claimed_address(v37))
    {
      if ((v33 & 1) == 0 || v32)
      {
        v99 = v37;
        v98 = v37 & 0xF0FFFFFFFFFFFFFFLL;
        if ((v37 & 0xF0FFFFFFFFFFFFFFLL) != v37)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
          __break(1u);
          JUMPOUT(0x89530);
        }
      }

      else
      {
        v97 = v37;
        v96 = v37 & 0xF0FFFFFFFFFFFFFFLL;
        if ((v37 & 0xF0FFFFFFFFFFFFFFLL) == v37)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
          __break(1u);
          JUMPOUT(0x894D0);
        }
      }
    }

    return v37;
  }
}

uint64_t xzm_malloc_zone_malloc_type_realloc_slow(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v62 = (*(a1 + 360) & 0x80) != 0;
  v61 = (*(a1 + 360) & 0x20) != 0;
  if ((*(a1 + 360) & 0x80) == 0 && (*(a1 + 360) & 0x20) == 0)
  {
    return xzm_malloc_zone_malloc_type_realloc(a1, a2, a3, a4);
  }

  if (!a2)
  {
    return xzm_malloc_zone_malloc_type_malloc_slow(a1, a3, a4);
  }

  if (!a3)
  {
    xzm_malloc_zone_free_slow(a1, a2);
    return xzm_malloc_zone_malloc_type_malloc_slow(a1, 0, a4);
  }

  v382 = a1;
  v381 = a2;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v391 = a1;
  v389 = 0;
  v388 = &v379;
  v387 = &v378;
  v386 = a2;
  v394 = a2;
  v393 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v390 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v395 = a1;
  if (*(a1 + 240))
  {
    v56 = *(a1 + 240);
  }

  else
  {
    v56 = v395;
  }

  v385 = v56;
  v399 = v390;
  v398 = v56;
  v397 = 0;
  v404 = v390;
  v403 = &v397;
  v402 = v390;
  if (v390 >> 36)
  {
    *v403 = 0;
    v405 = 0x4000;
  }

  else
  {
    v401 = v402 >> 22;
    *v403 = 0;
    if (v401 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x89E84);
    }

    v405 = v401;
  }

  v396 = v405;
  if (v405 < 0x4000)
  {
    v400 = *(v398 + 488) + 4 * v396;
  }

  else
  {
    v400 = 0;
  }

  v384 = v400;
  if (!v400)
  {
    v392 = 0;
    goto LABEL_123;
  }

  v423 = *v384;
  v422 = v391;
  v421 = v386;
  v420 = v390;
  v419 = v389;
  v418 = v388;
  v417 = v387;
  v447 = v423;
  v416 = (v423 & 0x7FFFFFFF) << 14;
  if (v416)
  {
    v455 = v416;
    v454 = v420;
    v459 = v416;
    v458 = v420;
    v469 = v416;
    v468 = v420;
    v473 = v416;
    v472 = v420;
    v476 = v416;
    v478 = v416;
    v477 = 0;
    v471 = v420 - *(v416 + 72);
    v486 = v416;
    v487 = v416;
    v485 = *(v416 + 12);
    if (v485 << 14)
    {
      v484 = v473;
      v488 = v473;
      v483 = *(v473 + 12);
      v482 = v473;
      v489 = v473;
      v481 = *(v473 + 12);
      v55 = (v483 << 14) - (v481 << 14) + 0x400000;
    }

    else
    {
      v480 = v473;
      v490 = v473;
      v479 = *(v473 + 12);
      v55 = v479 << 14;
    }

    v470 = v55;
    v54 = 0;
    if ((v471 & 0x8000000000000000) == 0)
    {
      v54 = v471 < v470;
    }

    if (!v54)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x8A0E4);
    }

    v467 = v471;
    v475 = v469;
    v474 = v471;
    v457 = v471 >> 14;
    if (v457 >= *(v459 + 16))
    {
      v460 = 0;
    }

    else
    {
      v460 = v459 + 48 * v457 + 2136;
    }

    v453 = v460;
    if (!v460)
    {
      v456 = 0;
LABEL_61:
      v415 = v456;
      if (!v456)
      {
        v424 = 0;
        goto LABEL_122;
      }

      if (*(v415 + 34) != *(v422 + 208))
      {
        v424 = 0;
        goto LABEL_122;
      }

      v414 = v420;
      v431 = v422;
      v430 = v415;
      v429 = 0;
      v433 = v422;
      v432 = v415;
      v436 = v422;
      v435 = v415;
      v434 = v415 & 0xFFFFFFFFFFFFC000;
      v51 = 1;
      if ((v415 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v50 = 0;
        if (v435 >= v434 + 2136)
        {
          v50 = v435 < v434 + 48 * *(v434 + 16) + 2136;
        }

        v51 = v50;
      }

      if ((v51 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x8A620);
      }

      v438 = v434;
      v437 = v432;
      v443 = v434;
      v442 = v432;
      if (v432 < v434 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x8A684);
      }

      v441 = 0xAAAAAAAAAAAAAAABLL * ((v442 - v443 - 2136) >> 4);
      if (v441 >= *(v443 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x8A6E4);
      }

      v440 = v434;
      v439 = v441;
      v413 = *(v434 + 72) + (v441 << 14);
      v412 = v414 - v413;
      v411 = *(v415 + 32) & 0xF;
      v410 = 0;
      v409 = 0;
      v427 = v411;
      if (v411 == 2 || v411 == 6 || v411 == 5)
      {
        v410 = *(v422 + 216) + 96 * *(v415 + 33);
        v409 = *(v410 + 48);
        if (!XZM_FAST_ALIGNED(v412, v409, *(v410 + 64)))
        {
          v424 = 0;
          goto LABEL_122;
        }
      }

      else
      {
        v409 = *(v415 + 40) << 14;
        v408 = v412 % v409;
        if (v412 % v409)
        {
          v424 = 0;
          goto LABEL_122;
        }
      }

      v407 = v412 / v409;
      v425 = *(v415 + 32) & 0xF;
      v426 = v425 == 2 || v425 == 6 || v425 == 5;
      v49 = 1;
      if (v426)
      {
        v49 = v407 < *(v410 + 68);
      }

      if (!v49)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x8A900);
      }

      v444 = v422;
      v406 = *(v422 + 368) & 1;
      if (v406)
      {
        v445 = v414;
        v446 = v414;
        _X8 = v414;
        __asm { LDG             X8, [X8] }

        v414 = _X8;
        v451 = v421;
        v450 = _X8;
        v449 = v421;
        v448 = _X8;
        if ((HIBYTE(v421) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v424 = 0;
          goto LABEL_122;
        }
      }

      v506 = v422;
      v505 = v415;
      v504 = v411;
      v503 = v412;
      v502 = v409;
      v501 = v414;
      if ((*(v415 + 32) & 0xF) != v411)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x8AA08);
      }

      switch(v504)
      {
        case 2:
          goto LABEL_101;
        case 5:
          v491 = v503 / v502;
          v514 = v505;
          v513 = v503 / v502;
          if ((*(v505 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x8ABACLL);
          }

          v507 = (*v514 >> v513) & 1;
          break;
        case 6:
LABEL_101:
          v500 = 0;
          if (*(v505 + 12))
          {
            __asm { MSR             TCO, #1 }

            v498 = *v501;
            v499 = v498;
            v497 = v498;
            v500 = v498;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v495 = *v501;
            v496 = v495;
            v494 = v495;
            v500 = v495;
          }

          v493 = *(v506 + 320) ^ v501;
          if (v504 == 6)
          {
            v509 = v493;
            v508 = v493 & 0xF0FFFFFFFFFFFFFFLL;
            v493 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v500 == v493)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v506, v505, v501);
            v507 = is_free_slow & 1;
          }

          else
          {
            v507 = 0;
          }

          break;
        default:
          v507 = 0;
          break;
      }

      if (v507 == 1)
      {
        v424 = 0;
      }

      else
      {
        if (v419)
        {
          *v419 = v410;
        }

        if (v418)
        {
          *v418 = v414;
        }

        if (v417)
        {
          *v417 = v409;
        }

        v424 = v415;
      }

      goto LABEL_122;
    }

    v462 = v453;
    if ((*(v453 + 32) & 0xF) == 4)
    {
      v461 = v462 - *(v462 + 36);
      if (v461 < (v462 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x8A1F4);
      }

      v465 = v461;
      v464 = v462;
      v53 = *(v461 + 32) & 0xF;
      if ((v53 - 1) < 2)
      {
        v466 = v465 == v464;
      }

      else if (v53 == 3 || (v53 - 5) < 5)
      {
        if (v464 < v465)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x8A298);
        }

        v466 = v464 < v465 + 48 * *(v465 + 40);
      }

      else
      {
        v466 = 0;
      }

      if (v466)
      {
        v463 = v461;
      }

      else
      {
        v463 = v462;
      }
    }

    else
    {
      v463 = v462;
    }

    v452 = v463;
    v511 = *(v463 + 32) & 0xF;
    if (v511 >= 2u)
    {
      if (v511 == 2)
      {
LABEL_56:
        v512 = 1;
        goto LABEL_57;
      }

      if (v511 - 3 >= 2)
      {
        if (v511 - 5 >= 4)
        {
          v510 = v511;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v511;
          __break(1u);
          JUMPOUT(0x8A3C4);
        }

        goto LABEL_56;
      }
    }

    v512 = 0;
LABEL_57:
    if (v512 == 1)
    {
      v52 = v452;
    }

    else
    {
      v52 = 0;
    }

    v456 = v52;
    goto LABEL_61;
  }

  v424 = 0;
LABEL_122:
  v392 = v424;
LABEL_123:
  v377 = v392;
  if (v380)
  {
    *v380 = v377;
  }

  if (v377)
  {
    if (v379 == v381)
    {
      v383 = v378;
    }

    else
    {
      v376 = v381 - v379;
      v383 = v378 - (v381 - v379);
    }
  }

  else
  {
    v383 = _xzm_ptr_size_outlined(v382, v381);
  }

  v59 = v383;
  v58 = 0;
  if (!v383 && v62)
  {
    v91 = a1;
    if (*(a1 + 240))
    {
      v48 = *(a1 + 240);
    }

    else
    {
      v48 = v91;
    }

    v58 = v48;
    v243 = v48;
    v242 = a2;
    v241 = 0;
    v240 = 0;
    v239 = 0;
    v252 = v48;
    v250 = 0;
    v249 = &v240;
    v248 = &v239;
    v247 = a2;
    v255 = a2;
    v254 = a2 & 0xF0FFFFFFFFFFFFFFLL;
    v251 = a2 & 0xF0FFFFFFFFFFFFFFLL;
    v256 = v48;
    if (*(v48 + 240))
    {
      v47 = *(v48 + 240);
    }

    else
    {
      v47 = v256;
    }

    v246 = v47;
    v260 = v251;
    v259 = v47;
    v258 = 0;
    v265 = v251;
    v264 = &v258;
    v263 = v251;
    if (v251 >> 36)
    {
      *v264 = 0;
      v266 = 0x4000;
    }

    else
    {
      v262 = v263 >> 22;
      *v264 = 0;
      if (v262 >= 0x4000)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
        __break(1u);
        JUMPOUT(0x8AEB8);
      }

      v266 = v262;
    }

    v257 = v266;
    if (v266 < 0x4000)
    {
      v261 = *(v259 + 488) + 4 * v257;
    }

    else
    {
      v261 = 0;
    }

    v245 = v261;
    if (!v261)
    {
      v253 = 0;
LABEL_250:
      v238 = v253;
      if (v241)
      {
        *v241 = v238;
      }

      if (v238)
      {
        if (v240 == v242)
        {
          v244 = v239;
        }

        else
        {
          v237 = v242 - v240;
          v244 = v239 - (v242 - v240);
        }
      }

      else
      {
        v244 = _xzm_ptr_size_outlined(v243, v242);
      }

      v59 = v244;
      goto LABEL_258;
    }

    v284 = *v245;
    v283 = v252;
    v282 = v247;
    v281 = v251;
    v280 = v250;
    v279 = v249;
    v278 = v248;
    v308 = v284;
    v277 = (v284 & 0x7FFFFFFF) << 14;
    if (!v277)
    {
      v285 = 0;
LABEL_249:
      v253 = v285;
      goto LABEL_250;
    }

    v316 = v277;
    v315 = v281;
    v320 = v277;
    v319 = v281;
    v330 = v277;
    v329 = v281;
    v334 = v277;
    v333 = v281;
    v337 = v277;
    v339 = v277;
    v338 = 0;
    v332 = v281 - *(v277 + 72);
    v347 = v277;
    v348 = v277;
    v346 = *(v277 + 12);
    if (v346 << 14)
    {
      v345 = v334;
      v349 = v334;
      v344 = *(v334 + 12);
      v343 = v334;
      v350 = v334;
      v342 = *(v334 + 12);
      v46 = (v344 << 14) - (v342 << 14) + 0x400000;
    }

    else
    {
      v341 = v334;
      v351 = v334;
      v340 = *(v334 + 12);
      v46 = v340 << 14;
    }

    v331 = v46;
    v45 = 0;
    if ((v332 & 0x8000000000000000) == 0)
    {
      v45 = v332 < v331;
    }

    if (!v45)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x8B118);
    }

    v328 = v332;
    v336 = v330;
    v335 = v332;
    v318 = v332 >> 14;
    if (v318 >= *(v320 + 16))
    {
      v321 = 0;
    }

    else
    {
      v321 = v320 + 48 * v318 + 2136;
    }

    v314 = v321;
    if (!v321)
    {
      v317 = 0;
LABEL_188:
      v276 = v317;
      if (!v317)
      {
        v285 = 0;
        goto LABEL_249;
      }

      if (*(v276 + 34) != *(v283 + 208))
      {
        v285 = 0;
        goto LABEL_249;
      }

      v275 = v281;
      v292 = v283;
      v291 = v276;
      v290 = 0;
      v294 = v283;
      v293 = v276;
      v297 = v283;
      v296 = v276;
      v295 = v276 & 0xFFFFFFFFFFFFC000;
      v42 = 1;
      if ((v276 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v41 = 0;
        if (v296 >= v295 + 2136)
        {
          v41 = v296 < v295 + 48 * *(v295 + 16) + 2136;
        }

        v42 = v41;
      }

      if ((v42 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x8B640);
      }

      v299 = v295;
      v298 = v293;
      v304 = v295;
      v303 = v293;
      if (v293 < v295 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x8B6A4);
      }

      v302 = 0xAAAAAAAAAAAAAAABLL * ((v303 - v304 - 2136) >> 4);
      if (v302 >= *(v304 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x8B704);
      }

      v301 = v295;
      v300 = v302;
      v274 = *(v295 + 72) + (v302 << 14);
      v273 = v275 - v274;
      v272 = *(v276 + 32) & 0xF;
      v271 = 0;
      v270 = 0;
      v288 = v272;
      if (v272 == 2 || v272 == 6 || v272 == 5)
      {
        v271 = *(v283 + 216) + 96 * *(v276 + 33);
        v270 = *(v271 + 48);
        if (!XZM_FAST_ALIGNED(v273, v270, *(v271 + 64)))
        {
          v285 = 0;
          goto LABEL_249;
        }
      }

      else
      {
        v270 = *(v276 + 40) << 14;
        v269 = v273 % v270;
        if (v273 % v270)
        {
          v285 = 0;
          goto LABEL_249;
        }
      }

      v268 = v273 / v270;
      v286 = *(v276 + 32) & 0xF;
      v287 = v286 == 2 || v286 == 6 || v286 == 5;
      v40 = 1;
      if (v287)
      {
        v40 = v268 < *(v271 + 68);
      }

      if (!v40)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x8B920);
      }

      v305 = v283;
      v267 = *(v283 + 368) & 1;
      if (v267)
      {
        v306 = v275;
        v307 = v275;
        _X8 = v275;
        __asm { LDG             X8, [X8] }

        v275 = _X8;
        v312 = v282;
        v311 = _X8;
        v310 = v282;
        v309 = _X8;
        if ((HIBYTE(v282) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v285 = 0;
          goto LABEL_249;
        }
      }

      v367 = v283;
      v366 = v276;
      v365 = v272;
      v364 = v273;
      v363 = v270;
      v362 = v275;
      if ((*(v276 + 32) & 0xF) != v272)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x8BA28);
      }

      switch(v365)
      {
        case 2:
          goto LABEL_228;
        case 5:
          v352 = v364 / v363;
          v375 = v366;
          v374 = v364 / v363;
          if ((*(v366 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x8BBC4);
          }

          v368 = (*v375 >> v374) & 1;
          break;
        case 6:
LABEL_228:
          v361 = 0;
          if (*(v366 + 12))
          {
            __asm { MSR             TCO, #1 }

            v359 = *v362;
            v360 = v359;
            v358 = v359;
            v361 = v359;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v356 = *v362;
            v357 = v356;
            v355 = v356;
            v361 = v356;
          }

          v354 = *(v367 + 320) ^ v362;
          if (v365 == 6)
          {
            v370 = v354;
            v369 = v354 & 0xF0FFFFFFFFFFFFFFLL;
            v354 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v361 == v354)
          {
            v353 = _xzm_xzone_freelist_chunk_block_is_free_slow(v367, v366, v362);
            v368 = v353 & 1;
          }

          else
          {
            v368 = 0;
          }

          break;
        default:
          v368 = 0;
          break;
      }

      if (v368 == 1)
      {
        v285 = 0;
      }

      else
      {
        if (v280)
        {
          *v280 = v271;
        }

        if (v279)
        {
          *v279 = v275;
        }

        if (v278)
        {
          *v278 = v270;
        }

        v285 = v276;
      }

      goto LABEL_249;
    }

    v323 = v314;
    if ((*(v314 + 32) & 0xF) == 4)
    {
      v322 = v323 - *(v323 + 36);
      if (v322 < (v323 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x8B228);
      }

      v326 = v322;
      v325 = v323;
      v44 = *(v322 + 32) & 0xF;
      if ((v44 - 1) < 2)
      {
        v327 = v326 == v325;
      }

      else if (v44 == 3 || (v44 - 5) < 5)
      {
        if (v325 < v326)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x8B2CCLL);
        }

        v327 = v325 < v326 + 48 * *(v326 + 40);
      }

      else
      {
        v327 = 0;
      }

      if (v327)
      {
        v324 = v322;
      }

      else
      {
        v324 = v323;
      }
    }

    else
    {
      v324 = v323;
    }

    v313 = v324;
    v372 = *(v324 + 32) & 0xF;
    if (v372 >= 2u)
    {
      if (v372 == 2)
      {
LABEL_183:
        v373 = 1;
        goto LABEL_184;
      }

      if (v372 - 3 >= 2)
      {
        if (v372 - 5 >= 4)
        {
          v371 = v372;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v372;
          __break(1u);
          JUMPOUT(0x8B3E8);
        }

        goto LABEL_183;
      }
    }

    v373 = 0;
LABEL_184:
    if (v373 == 1)
    {
      v43 = v313;
    }

    else
    {
      v43 = 0;
    }

    v317 = v43;
    goto LABEL_188;
  }

LABEL_258:
  if (!v59)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5267)";
    __break(1u);
    JUMPOUT(0x8BD40);
  }

  if (v59 > a3 && v61)
  {
    _platform_memset();
  }

  if (v62 && (v58 || a3 <= 0x8000) && (!v58 || a3 > 0x8000))
  {
    if (a3 > 0x8000)
    {
      v69 = _xzm_malloc_large_huge(a1, a3, 0, a4, 0);
      if (!v69)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
        __break(1u);
        JUMPOUT(0x8DCFCLL);
      }

      v68 = xzm_malloc_zone_size(a1, v69);
      v23 = 0;
      if (*(a1 + 368))
      {
        v23 = 0;
        if (v68 <= *(a1 + 376))
        {
          v22 = 1;
          if (HIWORD(a4) == 256)
          {
            v22 = *(a1 + 369);
          }

          v23 = v22;
        }
      }

      if (!mfm_claimed_address(v69))
      {
        if (v23)
        {
          if ((v69 & 0xF0FFFFFFFFFFFFFFLL) == v69)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
            __break(1u);
            JUMPOUT(0x8DEA4);
          }
        }

        else if ((v69 & 0xF0FFFFFFFFFFFFFFLL) != v69)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
          __break(1u);
          JUMPOUT(0x8DF04);
        }
      }

      v57 = v69;
    }

    else
    {
      v90 = a1;
      if (*(a1 + 240))
      {
        v28 = *(a1 + 240);
      }

      else
      {
        v28 = v90;
      }

      if ((*(v28 + 360) & 0x80) != 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
        __break(1u);
        JUMPOUT(0x8D24CLL);
      }

      v74 = a4;
      v89 = v28;
      if (*(v28 + 240))
      {
        v27 = *(v28 + 240);
      }

      else
      {
        v27 = v89;
      }

      v93 = a3;
      if (a3 > 0x80)
      {
        v20 = __clz(--v93);
        v92 = 63 - v20;
        v94 = ((v93 >> (61 - v20)) & 3 | (4 * (63 - v20))) - 20;
      }

      else
      {
        if ((v93 & 0xF) != 0)
        {
          v26 = (v93 >> 4) + 1;
        }

        else
        {
          v26 = v93 >> 4;
        }

        v94 = v26 - 1;
      }

      v73 = *(v27[55] + v94);
      if (HIWORD(a4) == 256)
      {
        v72 = 0;
      }

      else if (((WORD2(a4) >> 10) & 3) == 1)
      {
        v72 = 1;
      }

      else
      {
        if (!a4)
        {
          v74 = HIDWORD(malloc_entropy[0]);
        }

        v77 = v73 - 2;
        if ((v73 - 2) >= 5u)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
          __break(1u);
          JUMPOUT(0x8D4C4);
        }

        v76 = 0;
        if (v77 >= 2u)
        {
          v75 = (v27[49] * v74 + v27[50]) >> 32;
          if (v77 == 2)
          {
            v76 = v75 & 1;
          }

          else if (v77 == 3)
          {
            v76 = v75 % 3;
          }

          else
          {
            v76 = v75 & 3;
          }
        }

        v72 = v76 + 2;
      }

      if (v72 >= v73)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
        __break(1u);
        JUMPOUT(0x8D5F4);
      }

      v71 = _xzm_xzone_malloc(v28, a3, *(v27[56] + v94) + v72, 0);
      if (!v71)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
        __break(1u);
        JUMPOUT(0x8D650);
      }

      v70 = xzm_malloc_zone_size(v28, v71);
      v25 = 0;
      if (*(v28 + 368))
      {
        v25 = 0;
        if (v70 <= *(v28 + 376))
        {
          v24 = 1;
          if (HIWORD(a4) == 256)
          {
            v24 = *(v28 + 369);
          }

          v25 = v24;
        }
      }

      if (!mfm_claimed_address(v71))
      {
        if (v25)
        {
          if ((v71 & 0xF0FFFFFFFFFFFFFFLL) == v71)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
            __break(1u);
            JUMPOUT(0x8D7F8);
          }
        }

        else if ((v71 & 0xF0FFFFFFFFFFFFFFLL) != v71)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
          __break(1u);
          JUMPOUT(0x8D858);
        }
      }

      v57 = v71;
    }

    _platform_memmove();
    goto LABEL_490;
  }

  v87 = a4;
  v86 = a1;
  v85 = a2;
  v84 = a3;
  v83 = 0;
  v104 = a1;
  v103 = a2;
  v102 = &v83;
  v101 = 0;
  v100 = 0;
  v113 = a1;
  v111 = 0;
  v110 = &v101;
  v109 = &v100;
  v108 = a2;
  v116 = a2;
  v115 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v112 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v117 = a1;
  if (*(a1 + 240))
  {
    v39 = *(v86 + 240);
  }

  else
  {
    v39 = v117;
  }

  v107 = v39;
  v121 = v112;
  v120 = v39;
  v119 = 0;
  v126 = v112;
  v125 = &v119;
  v124 = v112;
  if (v112 >> 36)
  {
    *v125 = 0;
    v127 = 0x4000;
  }

  else
  {
    v123 = v124 >> 22;
    *v125 = 0;
    if (v123 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x8BFACLL);
    }

    v127 = v123;
  }

  v118 = v127;
  if (v127 < 0x4000)
  {
    v122 = *(v120 + 488) + 4 * v118;
  }

  else
  {
    v122 = 0;
  }

  v106 = v122;
  if (v122)
  {
    v145 = *v106;
    v144 = v113;
    v143 = v108;
    v142 = v112;
    v141 = v111;
    v140 = v110;
    v139 = v109;
    v169 = v145;
    v138 = (v145 & 0x7FFFFFFF) << 14;
    if (!v138)
    {
      v146 = 0;
LABEL_382:
      v114 = v146;
      goto LABEL_383;
    }

    v177 = v138;
    v176 = v142;
    v181 = v138;
    v180 = v142;
    v191 = v138;
    v190 = v142;
    v195 = v138;
    v194 = v142;
    v198 = v138;
    v200 = v138;
    v199 = 0;
    v193 = v142 - *(v138 + 72);
    v208 = v138;
    v209 = v138;
    v207 = *(v138 + 12);
    if (v207 << 14)
    {
      v206 = v195;
      v210 = v195;
      v205 = *(v195 + 12);
      v204 = v195;
      v211 = v195;
      v203 = *(v195 + 12);
      v38 = (v205 << 14) - (v203 << 14) + 0x400000;
    }

    else
    {
      v202 = v195;
      v212 = v195;
      v201 = *(v195 + 12);
      v38 = v201 << 14;
    }

    v192 = v38;
    v37 = 0;
    if ((v193 & 0x8000000000000000) == 0)
    {
      v37 = v193 < v192;
    }

    if (!v37)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x8C20CLL);
    }

    v189 = v193;
    v197 = v191;
    v196 = v193;
    v179 = v193 >> 14;
    if (v179 >= *(v181 + 16))
    {
      v182 = 0;
    }

    else
    {
      v182 = v181 + 48 * v179 + 2136;
    }

    v175 = v182;
    if (!v182)
    {
      v178 = 0;
LABEL_321:
      v137 = v178;
      if (!v178)
      {
        v146 = 0;
        goto LABEL_382;
      }

      if (*(v137 + 34) != *(v144 + 208))
      {
        v146 = 0;
        goto LABEL_382;
      }

      v136 = v142;
      v153 = v144;
      v152 = v137;
      v151 = 0;
      v155 = v144;
      v154 = v137;
      v158 = v144;
      v157 = v137;
      v156 = v137 & 0xFFFFFFFFFFFFC000;
      v34 = 1;
      if ((v137 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v33 = 0;
        if (v157 >= v156 + 2136)
        {
          v33 = v157 < v156 + 48 * *(v156 + 16) + 2136;
        }

        v34 = v33;
      }

      if ((v34 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x8C734);
      }

      v160 = v156;
      v159 = v154;
      v165 = v156;
      v164 = v154;
      if (v154 < v156 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x8C798);
      }

      v163 = 0xAAAAAAAAAAAAAAABLL * ((v164 - v165 - 2136) >> 4);
      if (v163 >= *(v165 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x8C7F8);
      }

      v162 = v156;
      v161 = v163;
      v135 = *(v156 + 72) + (v163 << 14);
      v134 = v136 - v135;
      v133 = *(v137 + 32) & 0xF;
      v132 = 0;
      v131 = 0;
      v149 = v133;
      if (v133 == 2 || v133 == 6 || v133 == 5)
      {
        v132 = *(v144 + 216) + 96 * *(v137 + 33);
        v131 = *(v132 + 48);
        if (!XZM_FAST_ALIGNED(v134, v131, *(v132 + 64)))
        {
          v146 = 0;
          goto LABEL_382;
        }
      }

      else
      {
        v131 = *(v137 + 40) << 14;
        v130 = v134 % v131;
        if (v134 % v131)
        {
          v146 = 0;
          goto LABEL_382;
        }
      }

      v129 = v134 / v131;
      v147 = *(v137 + 32) & 0xF;
      v148 = v147 == 2 || v147 == 6 || v147 == 5;
      v32 = 1;
      if (v148)
      {
        v32 = v129 < *(v132 + 68);
      }

      if (!v32)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x8CA14);
      }

      v166 = v144;
      v128 = *(v144 + 368) & 1;
      if (v128)
      {
        v167 = v136;
        v168 = v136;
        _X8 = v136;
        __asm { LDG             X8, [X8] }

        v136 = _X8;
        v173 = v143;
        v172 = _X8;
        v171 = v143;
        v170 = _X8;
        if ((HIBYTE(v143) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v146 = 0;
          goto LABEL_382;
        }
      }

      v228 = v144;
      v227 = v137;
      v226 = v133;
      v225 = v134;
      v224 = v131;
      v223 = v136;
      if ((*(v137 + 32) & 0xF) != v133)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x8CB1CLL);
      }

      switch(v226)
      {
        case 2:
          goto LABEL_361;
        case 5:
          v213 = v225 / v224;
          v236 = v227;
          v235 = v225 / v224;
          if ((*(v227 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x8CCB8);
          }

          v229 = (*v236 >> v235) & 1;
          break;
        case 6:
LABEL_361:
          v222 = 0;
          if (*(v227 + 12))
          {
            __asm { MSR             TCO, #1 }

            v220 = *v223;
            v221 = v220;
            v219 = v220;
            v222 = v220;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v217 = *v223;
            v218 = v217;
            v216 = v217;
            v222 = v217;
          }

          v215 = *(v228 + 320) ^ v223;
          if (v226 == 6)
          {
            v231 = v215;
            v230 = v215 & 0xF0FFFFFFFFFFFFFFLL;
            v215 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v222 == v215)
          {
            v214 = _xzm_xzone_freelist_chunk_block_is_free_slow(v228, v227, v223);
            v229 = v214 & 1;
          }

          else
          {
            v229 = 0;
          }

          break;
        default:
          v229 = 0;
          break;
      }

      if (v229 == 1)
      {
        v146 = 0;
      }

      else
      {
        if (v141)
        {
          *v141 = v132;
        }

        if (v140)
        {
          *v140 = v136;
        }

        if (v139)
        {
          *v139 = v131;
        }

        v146 = v137;
      }

      goto LABEL_382;
    }

    v184 = v175;
    if ((*(v175 + 32) & 0xF) == 4)
    {
      v183 = v184 - *(v184 + 36);
      if (v183 < (v184 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x8C31CLL);
      }

      v187 = v183;
      v186 = v184;
      v36 = *(v183 + 32) & 0xF;
      if ((v36 - 1) < 2)
      {
        v188 = v187 == v186;
      }

      else if (v36 == 3 || (v36 - 5) < 5)
      {
        if (v186 < v187)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x8C3C0);
        }

        v188 = v186 < v187 + 48 * *(v187 + 40);
      }

      else
      {
        v188 = 0;
      }

      if (v188)
      {
        v185 = v183;
      }

      else
      {
        v185 = v184;
      }
    }

    else
    {
      v185 = v184;
    }

    v174 = v185;
    v233 = *(v185 + 32) & 0xF;
    if (v233 >= 2u)
    {
      if (v233 == 2)
      {
LABEL_316:
        v234 = 1;
        goto LABEL_317;
      }

      if (v233 - 3 >= 2)
      {
        if (v233 - 5 >= 4)
        {
          v232 = v233;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v233;
          __break(1u);
          JUMPOUT(0x8C4DCLL);
        }

        goto LABEL_316;
      }
    }

    v234 = 0;
LABEL_317:
    if (v234 == 1)
    {
      v35 = v174;
    }

    else
    {
      v35 = 0;
    }

    v178 = v35;
    goto LABEL_321;
  }

  v114 = 0;
LABEL_383:
  v99 = v114;
  if (v102)
  {
    *v102 = v99;
  }

  if (v99)
  {
    if (v101 == v103)
    {
      v105 = v100;
    }

    else
    {
      v98 = v103 - v101;
      v105 = v100 - (v103 - v101);
    }
  }

  else
  {
    v105 = _xzm_ptr_size_outlined(v104, v103);
  }

  v82 = v105;
  v81 = v85;
  if (!v105)
  {
    malloc_report_pointer_was_not_allocated(80, v85);
  }

  if (v83 && *(v83 + 34) != *(v86 + 208))
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: pointer zone mismatch, client may be passing the wrong malloc zone";
    qword_D8158 = v85;
    __break(1u);
    JUMPOUT(0x8CE80);
  }

  if (!v83 || v82 <= 0x8000 || v84 <= 0x8000)
  {
    goto LABEL_421;
  }

  if ((v84 & 0x3FFF) != 0)
  {
    v31 = (v84 & 0xFFFFFFFFFFFFC000) + 0x4000;
  }

  else
  {
    v31 = v84;
  }

  v80 = v31 >> 14;
  v97 = v86;
  v96 = v83;
  v95 = v83 & 0xFFFFFFFFFFFFC000;
  v30 = 1;
  if ((v83 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v29 = 0;
    if (v96 >= v95 + 2136)
    {
      v29 = v96 < v95 + 48 * *(v95 + 16) + 2136;
    }

    v30 = v29;
  }

  if ((v30 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x8CFACLL);
  }

  if (!v95)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4826)";
    __break(1u);
    JUMPOUT(0x8CFE4);
  }

  v79 = 0;
  if (v82 <= 0x200000 || v84 <= 0x200000 || (*(v86 + 360) & 0x80) != 0)
  {
    if (v82 <= 0x200000 && !*(v95 + 20) && v84 <= 0x200000 && (*(v86 + 360) & 0x80) == 0)
    {
      v79 = xzm_segment_group_try_realloc_large_chunk(*v95, v95, v83, v80);
    }
  }

  else
  {
    v79 = xzm_segment_group_try_realloc_huge_chunk(*v95, v86, v95, v83, v80);
  }

  if (v79)
  {
    v88 = v81;
  }

  else
  {
LABEL_421:
    if (v84 > v82 || v84 < v82 >> 1)
    {
      v78 = xzm_malloc(v86, v84, v87, 0);
      if (v78)
      {
        _platform_memmove();
        v88 = v78;
      }

      else
      {
        v88 = 0;
      }
    }

    else
    {
      v88 = v81;
    }
  }

  v57 = v88;
LABEL_490:
  if (v57)
  {
    if (a3 > v59 && v61)
    {
      _platform_memset();
    }

    if (v57 != a2)
    {
      if (v59 > a3 && v61 || v61)
      {
        _platform_memset();
      }

      if (v58)
      {
        _xzm_free(v58, a2, 0);
      }

      else
      {
        _xzm_free(a1, a2, 0);
      }
    }
  }

  return v57;
}

unint64_t xzm_malloc_zone_malloc_type_memalign_slow(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  malloc_thread_options = _xzm_xzone_get_malloc_thread_options();
  if ((*(a1 + 360) & 0x80) != 0 && a3 <= 0x8000)
  {
    if (*(a1 + 240))
    {
      v5 = *(a1 + 240);
    }

    else
    {
      v5 = a1;
    }

    v7 = _xzm_malloc_zone_malloc_type_memalign_entry(v5, a2, a3, a4, malloc_thread_options);
  }

  else
  {
    v7 = _xzm_malloc_zone_malloc_type_memalign_entry(a1, a2, a3, a4, malloc_thread_options);
  }

  if (v7 && (*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  return v7;
}

unint64_t xzm_malloc_zone_malloc_type_malloc_with_options_slow(uint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  if ((*(a1 + 360) & 0x80) != 0 && a3 <= 0x8000)
  {
    if (*(a1 + 240))
    {
      v6 = *(a1 + 240);
    }

    else
    {
      v6 = a1;
    }

    v7 = xzm_malloc_zone_malloc_type_malloc_with_options(v6, a2, a3, a4, a5);
  }

  else
  {
    v7 = xzm_malloc_zone_malloc_type_malloc_with_options(a1, a2, a3, a4, a5);
  }

  if (v7 && (a4 & 1) == 0 && (*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  return v7;
}

uint64_t _xzm_malloc_zone_malloc_entry(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v13 = HIWORD(a3);
  if (a2 <= 0x8000)
  {
    if ((*(a1 + 360) & 0x80) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
      __break(1u);
      JUMPOUT(0x8E360);
    }

    v16 = a3;
    if (*(a1 + 240))
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = a1;
    }

    if (a2)
    {
      if (a2 > 0x80)
      {
        v20 = 63 - __clz(a2 - 1);
        v21 = (((a2 - 1) >> (v20 - 2)) & 3 | (4 * v20)) - 20;
      }

      else
      {
        if ((a2 & 0xF) != 0)
        {
          v7 = (a2 >> 4) + 1;
        }

        else
        {
          v7 = a2 >> 4;
        }

        v21 = v7 - 1;
      }
    }

    else
    {
      v21 = 0;
    }

    v15 = *(v8[55] + v21);
    if (HIWORD(a3) == 256)
    {
      v14 = 0;
    }

    else if (((WORD2(a3) >> 10) & 3) == 1)
    {
      v14 = 1;
    }

    else
    {
      if (!a3)
      {
        v16 = HIDWORD(malloc_entropy[0]);
      }

      v19 = v15 - 2;
      if ((v15 - 2) >= 5u)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
        __break(1u);
        JUMPOUT(0x8E5D8);
      }

      v18 = 0;
      if (v19 >= 2u)
      {
        v17 = (v8[49] * v16 + v8[50]) >> 32;
        if (v19 == 2)
        {
          v18 = v17 & 1;
        }

        else if (v19 == 3)
        {
          v18 = v17 % 3;
        }

        else
        {
          v18 = v17 & 3;
        }
      }

      v14 = v18 + 2;
    }

    if (v14 >= v15)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
      __break(1u);
      JUMPOUT(0x8E708);
    }

    v10 = _xzm_xzone_malloc(a1, a2, *(v8[56] + v21) + v14, a4);
  }

  else
  {
    v10 = _xzm_malloc_large_huge(a1, a2, 0, a3, a4);
  }

  if (!v10)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
    __break(1u);
    JUMPOUT(0x8E764);
  }

  if ((a4 & 1) != 0 && !_xzm_mem_is_zero())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
    __break(1u);
    JUMPOUT(0x8E7A8);
  }

  v9 = xzm_malloc_zone_size(a1, v10);
  v6 = 0;
  if (*(a1 + 368))
  {
    v6 = 0;
    if (v9 <= *(a1 + 376))
    {
      v5 = 1;
      if (v13 == 256)
      {
        v5 = *(a1 + 369);
      }

      v6 = v5;
    }
  }

  if (!mfm_claimed_address(v10))
  {
    if ((v6 & 1) == 0 || (a4 & 0x40000000) != 0)
    {
      if ((v10 & 0xF0FFFFFFFFFFFFFFLL) != v10)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
        __break(1u);
        JUMPOUT(0x8E96CLL);
      }
    }

    else if ((v10 & 0xF0FFFFFFFFFFFFFFLL) == v10)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
      __break(1u);
      JUMPOUT(0x8E90CLL);
    }
  }

  return v10;
}

uint64_t _xzm_xzone_get_malloc_thread_options()
{
  if ((malloc_get_thread_options() & 8) != 0)
  {
    return 0x40000000;
  }

  else
  {
    return 0;
  }
}

uint64_t _xzm_malloc_zone_malloc_type_calloc_entry(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = 0;
  v66 = a2;
  v65 = a3;
  v64 = 0;
  v63 = &v10;
  v62 = a3;
  if (a2 == 1 || (v62 = v66 * v65, !(v68 = !is_mul_ok(v66, v65))) && v62 <= malloc_absolute_max_size)
  {
    *v63 = v62;
    v67 = 0;
  }

  else
  {
    malloc_set_errno_fast(1, 12);
    v67 = -1;
  }

  if (v67)
  {
    malloc_set_errno_fast(1, 12);
    return 0;
  }

  else
  {
    v26 = v12;
    v25 = v15;
    v24 = v10;
    v23 = v11 | 1;
    v22 = 0;
    if (v10 <= 0x8000)
    {
      if ((*(v25 + 360) & 0x80) != 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
        __break(1u);
        JUMPOUT(0x8EBE4);
      }

      v37 = v26;
      v36 = v25;
      v35 = v24;
      v58 = v25;
      if (*(v25 + 240))
      {
        v9 = *(v25 + 240);
      }

      else
      {
        v9 = v58;
      }

      v34 = v9;
      v60 = v35;
      if (v35)
      {
        if (v60 > 0x80)
        {
          if (v60 > 0x8000)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion size <= XZM_SMALL_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:36)";
            __break(1u);
            JUMPOUT(0x8ECF0);
          }

          v59 = 63 - __clz(--v60);
          v61 = ((v60 >> (v59 - 2)) & 3 | (4 * v59)) - 20;
        }

        else
        {
          if ((v60 & 0xF) != 0)
          {
            v8 = (v60 >> 4) + 1;
          }

          else
          {
            v8 = v60 >> 4;
          }

          v61 = v8 - 1;
        }
      }

      else
      {
        v61 = 0;
      }

      v33 = v61;
      v32 = *(v34[55] + v61);
      v31 = *(v34[56] + v61);
      v30 = 0;
      v47 = v37;
      v46 = HIWORD(v37);
      v29 = HIWORD(v37) == 256;
      if (HIWORD(v37) == 256)
      {
        v30 = 0;
      }

      else if (((WORD2(v37) >> 10) & 3) == 1)
      {
        v30 = 1;
      }

      else
      {
        v28 = v37 == 0;
        if (!v37)
        {
          LODWORD(v37) = HIDWORD(malloc_entropy[0]);
        }

        v45 = v37;
        v44 = v34 + 49;
        v43 = v32 - 2;
        if ((v32 - 2) >= 5u)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
          __break(1u);
          JUMPOUT(0x8EE5CLL);
        }

        v42 = 0;
        if (v43 >= 2u)
        {
          v41 = v45;
          v40 = *v44;
          v39 = v44[1];
          v38 = (v40 * v45 + v39) >> 32;
          if (v43 == 2)
          {
            v42 = v38 & 1;
          }

          else if (v43 == 3)
          {
            v42 = v38 % 3;
          }

          else
          {
            v42 = v38 & 3;
          }
        }

        v27 = v42;
        v30 = v42 + 2;
      }

      if (v30 >= v32)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
        __break(1u);
        JUMPOUT(0x8EF8CLL);
      }

      v21 = v31 + v30;
      v22 = _xzm_xzone_malloc(v25, v24, v31 + v30, v23);
    }

    else
    {
      v22 = _xzm_malloc_large_huge(v25, v24, 0, v26, v23);
    }

    if (!v22)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
      __break(1u);
      JUMPOUT(0x8EFE8);
    }

    if ((v23 & 1) != 0 && !_xzm_mem_is_zero())
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
      __break(1u);
      JUMPOUT(0x8F02CLL);
    }

    v20 = xzm_malloc_zone_size(v25, v22);
    v49 = v26;
    v48 = HIWORD(v26);
    v19 = HIWORD(v26) == 256;
    v53 = v25;
    v52 = v20;
    v51 = v19;
    v50 = v25 + 368;
    v7 = 0;
    if (*(v25 + 368))
    {
      v7 = 0;
      if (v52 <= *(v50 + 8))
      {
        v6 = 1;
        if (v51)
        {
          v6 = *(v50 + 1);
        }

        v7 = v6;
      }
    }

    v18 = v7 & 1;
    v17 = (v23 & 0x40000000) != 0;
    if (!mfm_claimed_address(v22))
    {
      if ((v18 & 1) == 0 || v17)
      {
        v57 = v22;
        v56 = v22 & 0xF0FFFFFFFFFFFFFFLL;
        if ((v22 & 0xF0FFFFFFFFFFFFFFLL) != v22)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
          __break(1u);
          JUMPOUT(0x8F1F0);
        }
      }

      else
      {
        v55 = v22;
        v54 = v22 & 0xF0FFFFFFFFFFFFFFLL;
        if ((v22 & 0xF0FFFFFFFFFFFFFFLL) == v22)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
          __break(1u);
          JUMPOUT(0x8F190);
        }
      }
    }

    return v22;
  }
}

void _xzm_xzone_thread_cache_detach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *a3;
  v14 = *(a2 + 68);
  v13 = *(a3 + 18);
  v12 = **a3;
  v10 = *(a3 + 16) < 0x400u;
  for (i = 0; ; i = 0)
  {
    while ((v12 & 0x40000000) != 0)
    {
      _xzm_walk_lock_wait(a1);
      v12 = *v15;
    }

    v11 = v12 & 0xFFFFFFFFF03FFFFFLL;
    v8 = ((v12 >> 11) & 0x7FF) + v13;
    if (v8 == v14)
    {
      v11 = v12 & 0xFFFFFFFFF0000000 | 0x7FF;
    }

    else if (v8)
    {
      v6 = 0;
      if ((v12 & 0x10000000) == 0)
      {
        v6 = ((v12 >> 29) & 1) == 0;
      }

      if (!v6)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list && !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2726)";
        __break(1u);
        JUMPOUT(0x8F42CLL);
      }

      v11 = v12 & 0xFFFFFFFFF00007FFLL | ((v8 & 0x7FF) << 11) | 0x10000000;
      i = 1;
      if ((v12 & 0x7FF) == 0x400)
      {
        v11 = v12 & 0xFFFFF00070000000 | ((v8 & 0x7FF) << 11) & 0xFFFFF0007FFFF800 | 0x10000000 | *(a3 + 16) & 0x7FF | ((*(a3 + 20) & 0x1FFF) << 31);
      }

      else
      {
        if ((v12 & 0x7FF) >= 0x400)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head < XZM_FREE_LIMIT failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2735)";
          __break(1u);
          JUMPOUT(0x8F4D4);
        }

        if (v10)
        {
          _xzm_xzone_thread_cache_detach_link_to_remote(a1, a3, v12);
          v10 = 0;
        }
      }
    }

    v7 = v12;
    v3 = v12;
    v4 = v12;
    atomic_compare_exchange_strong_explicit(v15, &v4, v11, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      v7 = v4;
    }

    v12 = v7;
    if (v4 == v3)
    {
      break;
    }
  }

  if (malloc_tracing_enabled)
  {
    v5 = *(a3 + 16);
    kdebug_trace();
  }

  if ((~v11 & 0x7FF) != 0)
  {
    if (i)
    {
      _xzm_chunk_list_slot_push(a1, a2, *(a1 + 232), v15);
    }
  }

  else
  {
    _xzm_xzone_madvise_freelist_chunk(a1, a2, v15);
  }
}

uint64_t _xzm_xzone_thread_cache_detach_link_to_remote(uint64_t result, uint64_t a2, unint64_t a3)
{
  v15 = *(*a2 + 8) >> 4;
  if ((a3 & 0x7FF) >= 0x400)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head < XZM_FREE_LIMIT failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2592)";
    __break(1u);
    JUMPOUT(0x8F6ECLL);
  }

  if (((a3 >> 11) & 0x7FF) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2593)";
    __break(1u);
    JUMPOUT(0x8F720);
  }

  v13 = a3 & 0x7FF;
  for (i = 1; ; ++i)
  {
    v16 = *(a2 + 8);
    v14 = v16 + 16 * v13;
    if (*(*a2 + 12))
    {
      _X8 = v16 + 16 * v13;
      __asm { LDG             X8, [X8] }

      v14 = _X8;
    }

    v11 = *v14;
    if (*v14 != (*(result + 320) ^ v14))
    {
      qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist - cookie, client likely has a buffer overflow or use-after-free bug";
      qword_D8158 = v11;
      __break(1u);
      JUMPOUT(0x8F7FCLL);
    }

    if (*(v14 + 8) != (*(v14 + 8) & 0x7FFLL | (((*(v14 + 16) >> 11) & 0x1FFFLL) << 11) & 0xFFFFFF))
    {
      qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist - linkage, client likely has a buffer overflow or use-after-free bug";
      qword_D8158 = *(&v11 + 1);
      __break(1u);
      JUMPOUT(0x8F8ACLL);
    }

    v10 = (*(v14 + 8) >> 64) & 0x7FFLL;
    if (v10 == 1024)
    {
      break;
    }

    v9 = 1;
    if (!(v10 % v15))
    {
      v9 = 1;
      if (v10 <= (*(*a2 + 10) - 1) * v15)
      {
        v9 = i >= ((a3 >> 11) & 0x7FF);
      }
    }

    if (v9)
    {
      qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist - inconsistent walk, client likely has a buffer overflow or use-after-free bug";
      qword_D8158 = i;
      __break(1u);
      JUMPOUT(0x8F9C0);
    }

    v13 = (*(v14 + 8) >> 64) & 0x7FFLL;
  }

  if (i != ((a3 >> 11) & 0x7FF))
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist - free count, client likely has a buffer overflow or use-after-free bug";
    qword_D8158 = i;
    __break(1u);
    JUMPOUT(0x8F920);
  }

  *(v14 + 8) = *(a2 + 16) & 0x7FF | ((*(a2 + 20) & 0x1FFF) << 11) & 0xFFFFFF;
  return result;
}

void malloc_slowpath_update()
{
  v0 = 1;
  if ((has_injected_zone0 & 1) == 0)
  {
    v0 = 1;
    if (malloc_num_zones)
    {
      v0 = 1;
      if (!malloc_check_start)
      {
        v0 = 1;
        if (!lite_zone)
        {
          v0 = 1;
          if ((malloc_tracing_enabled & 1) == 0)
          {
            v0 = 1;
            if ((malloc_simple_stack_logging & 1) == 0)
            {
              v0 = 1;
              if ((malloc_debug_flags & 0x20) == 0)
              {
                v0 = malloc_interposition_compat;
              }
            }
          }
        }
      }
    }
  }

  if ((malloc_slowpath & 1) != (v0 & 1))
  {
    malloc_slowpath = v0 & 1;
  }
}

void __malloc_init(uint64_t a1)
{
  v15 = a1;
  bzero(v16, 0x400uLL);
  v14 = MEMORY[0xFFFFF4084] != 0;
  v13 = 1023;
  if (MEMORY[0xFFFFF4084] && !sysctlbyname("kern.bootargs", v16, &v13, 0, 0) && v13)
  {
    v16[v13 + 1] = 0;
  }

  if (vm_kernel_page_size <= vm_page_size)
  {
    v7 = vm_page_size;
  }

  else
  {
    v7 = vm_kernel_page_size;
  }

  malloc_absolute_max_size = -1 - 2 * v7;
  v12 = *_NSGetEnviron();
  v11 = _malloc_allow_internal_security_policy(v12);
  if (v11 != (malloc_internal_security_policy & 1))
  {
    malloc_internal_security_policy = v11;
  }

  _malloc_init_featureflags();
  v9 = 0;
  for (i = v15; ; ++i)
  {
    v6 = 0;
    if (i)
    {
      v6 = *i != 0;
    }

    if (!v6)
    {
      break;
    }

    v1 = *i;
    if (_platform_strstr() == *i)
    {
      v2 = *i;
      v8 = __entropy_from_kernel();
      v5 = *i;
      v3 = *i;
      _platform_strlen();
      _platform_bzero();
      if (v8 == 2)
      {
        _malloc_entropy_initialized = 1;
      }
    }

    v4 = *i;
    if (_platform_strstr() == *i)
    {
      v9 = *i;
    }
  }

  if ((_malloc_entropy_initialized & 1) == 0)
  {
    getentropy(malloc_entropy, 0x10uLL);
    _malloc_entropy_initialized = 1;
  }

  if (v9)
  {
    __malloc_init_experiments();
  }

  __malloc_init_from_bootargs(v16);
  mvm_aslr_init();
  j__malloc_default_zone();
  _malloc_initialize(v15, v16);
}

uint64_t __entropy_from_kernel()
{
  v2 = 0;
  v4 = _platform_strchr();
  if (v4)
  {
    v5 = v4 + 1;
    while (1)
    {
      v1 = 0;
      if (v5)
      {
        v1 = v2 < 2;
      }

      if (!v1)
      {
        break;
      }

      _platform_strlcpy();
      v3 = _platform_strchr();
      if (v3)
      {
        *v3 = 0;
      }

      malloc_entropy[v2++] = strtoull_l(v7, 0, 0, 0);
      v5 = _platform_strchr();
      if (v5)
      {
        ++v5;
      }
    }

    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t __malloc_init_experiments()
{
  v1 = 0;
  result = _platform_strchr();
  if (result)
  {
    result = strtoull_l((result + 1), 0, 16, 0);
    v1 = result;
  }

  if (v1 == 1)
  {
    magazine_medium_enabled = 0;
  }

  return result;
}

void __malloc_init_from_bootargs(_BYTE *a1)
{
  v12 = a1;
  v11 = malloc_common_value_for_key_copy(a1, "malloc_max_magazines", v13, 0x100uLL);
  if (v11)
  {
    v10 = 0;
    v9 = malloc_common_convert_to_long(v11, &v10);
    if (*v10 || v9 < 0)
    {
      malloc_report(3, "malloc_max_magazines must be positive - ignored.\n");
    }

    else
    {
      max_magazines = v9;
    }
  }

  v11 = malloc_common_value_for_key_copy(v12, "malloc_large_expanded_cache_threshold", v13, 0x100uLL);
  if (v11)
  {
    v8 = 0;
    v7 = malloc_common_convert_to_long(v11, &v8);
    if (*v8 || v7 < 0)
    {
      malloc_report(3, "malloc_large_expanded_cache_threshold must be positive - ignored.\n");
    }

    else
    {
      magazine_large_expanded_cache_threshold = v7;
    }
  }

  v11 = malloc_common_value_for_key_copy(v12, "malloc_zero_on_free_enabled", v13, 0x100uLL);
  if (v11)
  {
    v6 = 0;
    v5 = malloc_common_convert_to_long(v11, &v6);
    if (*v6 || v5 > 1)
    {
      malloc_report(3, "malloc_zero_on_free_enabled must be 0 or 1 - ignored.\n");
    }

    else
    {
      malloc_zero_policy = v5 == 0;
    }
  }

  v11 = malloc_common_value_for_key_copy(v12, "malloc_zero_on_free_sample_period", v13, 0x100uLL);
  if (v11)
  {
    v4 = 0;
    v3 = malloc_common_convert_to_long(v11, &v4);
    if (*v4 || v3 < 0)
    {
      malloc_report(3, "malloc_zero_on_free_sample_period must be positive - ignored.\n");
    }

    else
    {
      malloc_zero_on_free_sample_period = v3;
    }
  }

  v11 = malloc_common_value_for_key_copy(v12, "malloc_secure_allocator", v13, 0x100uLL);
  if (v11)
  {
    v2 = 0;
    v1 = malloc_common_convert_to_long(v11, &v2);
    if (*v2 || v1 > 1)
    {
      malloc_report(3, "malloc_secure_allocator must be 0 or 1 - ignored.\n");
    }

    else
    {
      malloc_xzone_enabled = v1 != 0;
    }
  }
}

void _malloc_initialize(uint64_t a1, _BYTE *a2)
{
  phys_ncpus = MEMORY[0xFFFFFC035];
  logical_ncpus = MEMORY[0xFFFFFC036];
  ncpuclusters = MEMORY[0xFFFFFC02F];
  if (MEMORY[0xFFFFFC036] % MEMORY[0xFFFFFC035])
  {
    malloc_report(3, "*** FATAL ERROR - logical_ncpus %% phys_ncpus != 0\n.\n");
    qword_D8128 = "FATAL ERROR - logical_ncpus %% phys_ncpus != 0\n";
    qword_D8158 = logical_ncpus % phys_ncpus;
    __break(1u);
    JUMPOUT(0x904A4);
  }

  v5 = logical_ncpus / phys_ncpus;
  if (logical_ncpus / phys_ncpus == 1)
  {
    hyper_shift = 0;
  }

  else if (v5 == 2)
  {
    hyper_shift = 1;
  }

  else
  {
    if (v5 != 4)
    {
      malloc_report(3, "*** FATAL ERROR - logical_ncpus / phys_ncpus not 1, 2, or 4.\n");
      qword_D8128 = "FATAL ERROR - logical_ncpus / phys_ncpus not 1, 2, or 4";
      qword_D8158 = logical_ncpus / phys_ncpus;
      __break(1u);
      JUMPOUT(0x90574);
    }

    hyper_shift = 2;
  }

  if (max_magazines)
  {
    if (max_magazines >= logical_ncpus)
    {
      v4 = logical_ncpus;
    }

    else
    {
      v4 = max_magazines;
    }

    max_magazines = v4;
  }

  else
  {
    max_magazines = logical_ncpus;
  }

  if (max_medium_magazines)
  {
    if (max_medium_magazines >= logical_ncpus)
    {
      v3 = logical_ncpus;
    }

    else
    {
      v3 = max_medium_magazines;
    }

    max_medium_magazines = v3;
  }

  else
  {
    max_medium_magazines = max_magazines;
  }

  _malloc_detect_interposition();
  malloc_has_sec_transition = _malloc_check_has_sec_transition(a1);
  if (malloc_has_sec_transition)
  {
    malloc_xzone_enabled = 1;
    malloc_xzone_nano_override = 2;
    malloc_sec_transition_early_malloc_support = 1;
    malloc_sec_transition_policy = _malloc_get_sec_transition_policy(a1);
  }

  set_flags_from_environment();
  malloc_memorypressure_mask_default_4libdispatch |= malloc_memorystatus_mask_resource_exception_handling;
  malloc_memorypressure_mask_msl_4libdispatch |= malloc_memorystatus_mask_resource_exception_handling;
  if (malloc_report_config)
  {
    malloc_report(5, "Internal Security Policy: %d\n");
  }

  malloc_sanitizer_enabled = sanitizer_should_enable();
  v9 = *_NSGetEnviron();
  if ((malloc_sanitizer_enabled & 1) == 0 && (malloc_debug_flags & 0x20) == 0 && !malloc_zero_on_free_sample_period)
  {
    nano_common_init(v9, a1, a2);
  }

  v8 = 0;
  v7 = 0;
  if (malloc_xzone_nano_override == 1)
  {
    v7 = 0;
  }

  else if (malloc_xzone_nano_override == 2)
  {
    v7 = 1;
  }

  if (malloc_nano_on_xzone_override == 2)
  {
    v7 = 0;
  }

  if ((malloc_xzone_enabled & 1) != 0 && _malloc_engaged_nano == 2 && (v7 & 1) == 0)
  {
    if (malloc_nano_on_xzone_override == 1)
    {
      v8 = 0;
    }

    else if (malloc_nano_on_xzone_override == 2)
    {
      v8 = 1;
    }

    if ((malloc_nano_on_xzone & 1) != (v8 & 1))
    {
      malloc_nano_on_xzone = v8;
    }

    if ((v8 & 1) == 0)
    {
      malloc_xzone_enabled = 0;
    }
  }

  if (malloc_xzone_enabled)
  {
    mvm_guarded_range_init();
    if (malloc_report_config & 1) != 0 && (malloc_internal_security_policy)
    {
      malloc_report(5, "Guarded Range Config (base/size/carveout): 0x%lx / 0x%lx / 0x%lx\n");
    }

    initial_xzone_zone = xzm_main_malloc_zone_create(malloc_debug_flags, v9, a1, a2);
    malloc_set_zone_name(initial_xzone_zone, "DefaultMallocZone");
    malloc_zone_register_while_locked(initial_xzone_zone, 1);
  }

  if (!initial_xzone_zone || (v8 & 1) != 0)
  {
    if (!initial_xzone_zone)
    {
      initial_scalable_zone = create_scalable_zone(0, malloc_debug_flags);
      malloc_set_zone_name(initial_scalable_zone, "DefaultMallocZone");
      malloc_zone_register_while_locked(initial_scalable_zone, 1);
    }

    nano_common_configure();
    if (initial_xzone_zone)
    {
      v2 = initial_xzone_zone;
    }

    else
    {
      v2 = initial_scalable_zone;
    }

    if (_malloc_engaged_nano == 2)
    {
      if (malloc_report_config)
      {
        malloc_report(5, "NanoV2 Config:\n\tNano On Xzone: %d\n");
      }

      initial_nano_zone = nanov2_create_zone(v2, malloc_debug_flags);
    }

    if (initial_nano_zone)
    {
      malloc_set_zone_name(initial_nano_zone, "DefaultMallocZone");
      malloc_set_zone_name(v2, "MallocHelperZone");
      malloc_zone_register_while_locked(initial_nano_zone, 1);
    }
  }

  if (malloc_sanitizer_enabled)
  {
    zone = sanitizer_create_zone(*malloc_zones);
    malloc_zone_register_while_locked(zone, 1);
  }

  malloc_slowpath_update();
  initial_num_zones = malloc_num_zones;
  if ((malloc_report_config & 1) != 0 && initial_scalable_zone)
  {
    malloc_report(5, "Magazine Config:\n\tMax Magazines: %d\n\tMedium Enabled: %d\n\tAggressive Madvise: %d\n\tScribble: %d\n");
  }
}

uint64_t **__malloc_late_init(uint64_t a1)
{
  register_pgm_zone(*(a1 + 24) & 1);
  result = stack_logging_early_finished(a1);
  initial_num_zones = malloc_num_zones;
  if (malloc_sanitizer_enabled)
  {
    return sanitizer_reset_environment();
  }

  return result;
}

void register_pgm_zone(char a1)
{
  pgm_init_config(a1 & 1);
  if (enable_pgm(0))
  {
    zone = pgm_create_zone(*malloc_zones);
    malloc_zone_register_while_locked(zone, 1);
  }
}

uint64_t **stack_logging_early_finished(uint64_t a1)
{
  if (*a1 >= 2uLL && *(a1 + 32))
  {
    memcpy(&msl, *(a1 + 32), 0x68uLL);
  }

  result = _NSGetEnviron();
  for (i = *result; *i; ++i)
  {
    v2 = *i;
    result = _platform_strncmp();
    if (!result)
    {
      result = _malloc_register_stack_logger(1);
      if (off_DA350)
      {
        v4 = off_DA350;
        v3 = _NSGetEnviron();
        result = v4(*v3);
      }

      break;
    }
  }

  if (off_DA358)
  {
    return off_DA358();
  }

  return result;
}

void *find_registered_zone(uint64_t a1, uint64_t *a2, char a3)
{
  v13 = a3 & 1;
  if (malloc_num_zones)
  {
    if (lite_zone && (v12 = (*(lite_zone + 16))(lite_zone, a1)) != 0)
    {
      if (a2)
      {
        *a2 = v12;
      }

      return default_zone;
    }

    else
    {
      LODWORD(v7) = (v13 & 1) != 0;
      while (v7 < initial_num_zones)
      {
        v10 = *(malloc_zones + v7);
        v8 = (*(v10 + 16))(v10, a1);
        if (v8)
        {
          if (a2)
          {
            *a2 = v8;
          }

          if (v7 || !has_default_zone0())
          {
            return v10;
          }

          else
          {
            return default_zone;
          }
        }

        v7 = (v7 + 1);
      }

      v6 = pFRZCounterLive;
      atomic_fetch_add(pFRZCounterLive, 1u);
      v5 = malloc_num_zones;
      for (i = initial_num_zones; i < v5; ++i)
      {
        v11 = *(malloc_zones + i);
        v9 = (*(v11 + 16))(v11, a1);
        if (v9)
        {
          goto LABEL_25;
        }
      }

      v11 = 0;
      v9 = 0;
LABEL_25:
      if (a2)
      {
        *a2 = v9;
      }

      atomic_fetch_add(v6, 0xFFFFFFFF);
      return v11;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 0;
  }
}

uint64_t malloc_gdb_po_unsafe()
{
  if (off_DA330 && off_DA330())
  {
    return 1;
  }

  else
  {
    v6 = malloc_zones;
    for (i = malloc_num_zones; HIDWORD(i) != i; ++HIDWORD(i))
    {
      v4 = v6[HIDWORD(i)];
      if (*(v4 + 104) >= 5u)
      {
        v3 = 0;
        if (*(v4 + 96))
        {
          v3 = *(v4 + 96);
        }

        v2 = 0;
        if (*(v3 + 64))
        {
          v2 = *(v3 + 64);
        }

        if (v2)
        {
          v1 = 0;
          if (*(v4 + 96))
          {
            v1 = *(v4 + 96);
          }

          if ((*(v1 + 64))(v4))
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }
}

void malloc_zone_register_while_locked(uint64_t a1, char a2)
{
  for (i = 0; i != malloc_num_zones; ++i)
  {
    if (a1 == *(malloc_zones + i))
    {
      malloc_report(3, "Attempted to register zone more than once: %p\n");
      return;
    }
  }

  if (malloc_num_zones == malloc_num_zones_allocated)
  {
    if (malloc_num_zones_allocated)
    {
      if (malloc_num_zones_allocated >= 0x20000)
      {
        v2 = malloc_num_zones_allocated >> 63;
        if (malloc_num_zones_allocated >= 0xFFFFFFFFFFFE0000)
        {
          LOBYTE(v2) = v2 + 1;
        }

        v5 = malloc_num_zones_allocated + 0x20000;
        if (v2)
        {
          __break(1u);
          JUMPOUT(0x91434);
        }
      }

      else
      {
        v5 = 2 * malloc_num_zones_allocated;
      }
    }

    else
    {
      v5 = vm_page_size >> 3;
    }

    if (v5 >> 61)
    {
      __break(1u);
      JUMPOUT(0x91470);
    }

    v4 = (vm_page_size + 8 * v5 - 1) & -vm_page_size;
    plat = mvm_allocate_plat(0, v4, 0, 1, 0x2000, 1, 0);
    if (!plat)
    {
      malloc_report(3, "malloc_zone_register allocation failed\n");
      return;
    }

    if (malloc_zones)
    {
      _platform_memmove();
    }

    v7 = v4;
    malloc_zones = plat;
    malloc_num_zones_allocated = v5;
    if (v5 ^ v5 | (v5 >> 63))
    {
      __break(1u);
      JUMPOUT(0x91554);
    }
  }

  else
  {
    v7 = 8 * malloc_num_zones_allocated;
    mprotect(malloc_zones, v7, 3);
  }

  if (a2)
  {
    _platform_memmove();
    *malloc_zones = a1;
  }

  else
  {
    *(malloc_zones + malloc_num_zones) = a1;
  }

  atomic_fetch_add(&malloc_num_zones, 1u);
  mprotect(malloc_zones, v7, 1);
  if ((a2 & 1) != 0 && *malloc_zones != a1)
  {
    has_injected_zone0 = 1;
    malloc_slowpath_update();
  }
}

uint64_t zeroify_scalable_zone(uint64_t result)
{
  if (result == default_zone)
  {
    v4 = 0;
    if (legacy_zeroing_large_malloc)
    {
      v4 = legacy_zeroing_large_malloc;
    }

    v3 = 0;
    if (v4)
    {
      v3 = v4;
    }

    *(result + 24) = v3;
    v2 = 0;
    if (legacy_zeroing_large_valloc)
    {
      v2 = legacy_zeroing_large_valloc;
    }

    v1 = 0;
    if (v2)
    {
      v1 = v2;
    }

    *(result + 40) = v1;
  }

  return result;
}

uint64_t legacy_zeroing_large_malloc(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x1FC00)
  {
    return default_zone_malloc(a1, a2);
  }

  else
  {
    return default_zone_calloc(a1, 1, a2);
  }
}

uint64_t legacy_zeroing_large_valloc(uint64_t a1, uint64_t a2)
{
  v3 = default_zone_valloc(a1, a2);
  _platform_memset();
  return v3;
}

uint64_t malloc_engaged_nano()
{
  if (initial_nano_zone || initial_xzone_zone)
  {
    return _malloc_engaged_nano;
  }

  else
  {
    return 0;
  }
}

malloc_zone_t *__cdecl malloc_create_zone(vm_size_t start_size, unsigned int flags)
{
  zone = 0;
  if (start_size > malloc_absolute_max_size)
  {
    return 0;
  }

  if (initial_xzone_zone && (xzm_create_mzones & 1) != 0)
  {
    zone = xzm_malloc_zone_create(flags | malloc_debug_flags, initial_xzone_zone);
  }

  if (!zone)
  {
    zone = create_scalable_zone(start_size, flags | malloc_debug_flags);
  }

  if (enable_pgm(flags))
  {
    v6 = pgm_create_zone(zone);
    v2 = 0;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    malloc_zone_register_while_locked(v6, 0);
    malloc_zone_register_while_locked(zone, 0);
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(&_malloc_lock);
    }

    return v6;
  }

  else
  {
    malloc_zone_register(zone);
    return zone;
  }
}

BOOL enable_pgm(__int16 a1)
{
  v3 = 1;
  if ((has_injected_zone0 & 1) == 0)
  {
    v3 = malloc_sanitizer_enabled;
  }

  v2 = 0;
  if ((v3 & 1) == 0)
  {
    v2 = 0;
    if ((a1 & 0x400) == 0)
    {
      return pgm_should_enable();
    }
  }

  return v2;
}

void malloc_zone_register(malloc_zone_t *zone)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  malloc_zone_register_while_locked(zone, 0);
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock(&_malloc_lock);
  }
}

void malloc_create_legacy_default_zone()
{
  legacy_scalable_zone = create_legacy_scalable_zone(0, malloc_debug_flags);
  v0 = 0;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v0, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v0)
  {
    os_unfair_lock_lock_with_options();
  }

  zone = *malloc_zones;
  if (*(*malloc_zones + 72))
  {
    zone_name = zone->zone_name;
    if (!_platform_strcmp())
    {
      malloc_set_zone_name(zone, 0);
    }
  }

  malloc_set_zone_name(legacy_scalable_zone, "DefaultMallocZone");
  malloc_zone_register_while_locked(legacy_scalable_zone, 1);
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock(&_malloc_lock);
  }
}

void malloc_set_zone_name(malloc_zone_t *zone, const char *name)
{
  v12 = 1;
  v6 = 0;
  if (zone->version >= 0xE)
  {
    introspect = 0;
    if (zone->introspect)
    {
      introspect = zone->introspect;
    }

    v6 = LODWORD(introspect[1].enumerator) == 1;
  }

  if (v6)
  {
    v12 = 0;
  }

  if (v12)
  {
    mprotect(zone, 0xC8uLL, 3);
  }

  if (zone->zone_name)
  {
    zone_name = zone->zone_name;
    if (malloc_num_zones)
    {
      if (lite_zone && (*(lite_zone + 16))(lite_zone, zone_name))
      {
        v22 = default_zone;
      }

      else
      {
        LODWORD(v18) = 0;
        while (v18 < initial_num_zones)
        {
          v19 = *(malloc_zones + v18);
          if ((*(v19 + 16))(v19, zone_name))
          {
            if (v18 || !has_default_zone0())
            {
              v22 = v19;
            }

            else
            {
              v22 = default_zone;
            }

            goto LABEL_29;
          }

          v18 = (v18 + 1);
        }

        v17 = pFRZCounterLive;
        atomic_fetch_add(pFRZCounterLive, 1u);
        v16 = malloc_num_zones;
        for (i = initial_num_zones; i < v16; ++i)
        {
          v20 = *(malloc_zones + i);
          if ((*(v20 + 16))(v20, zone_name))
          {
            goto LABEL_28;
          }
        }

        v20 = 0;
LABEL_28:
        atomic_fetch_add(v17, 0xFFFFFFFF);
        v22 = v20;
      }
    }

    else
    {
      v22 = 0;
    }

LABEL_29:
    if (v22)
    {
      malloc_zone_free(v22, zone->zone_name);
    }

    zone->zone_name = 0;
  }

  if (name)
  {
    v11 = _platform_strlen() + 1;
    if (_dyld_is_memory_immutable())
    {
      zone->zone_name = name;
    }

    else
    {
      v10 = _malloc_zone_malloc(zone, v11, 0);
      if (v10)
      {
        _platform_strcpy();
        zone->zone_name = v10;
      }
    }

    wrapped_zone = get_wrapped_zone(zone);
    if (wrapped_zone)
    {
      __s2 = get_wrapper_zone_label(zone);
      v3 = _platform_strlen();
      v4 = v3 + _platform_strlen();
      v2 = _platform_strlen();
      __s1 = _malloc_zone_malloc(wrapped_zone, v4 + v2 + 3, 0);
      if (__s1)
      {
        _platform_strcpy();
        strcat(__s1, "-");
        strcat(__s1, __s2);
        strcat(__s1, "-");
        strcat(__s1, "Wrapped");
        malloc_set_zone_name(wrapped_zone, __s1);
        malloc_zone_free(wrapped_zone, __s1);
      }
    }
  }

  if (v12)
  {
    mprotect(zone, 0xC8uLL, 1);
  }
}

void malloc_destroy_zone(malloc_zone_t *zone)
{
  malloc_set_zone_name(zone, 0);
  malloc_zone_unregister(zone);
  (zone->destroy)(zone);
}

void malloc_zone_unregister(malloc_zone_t *zone)
{
  if (malloc_num_zones)
  {
    v1 = 0;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      os_unfair_lock_lock_with_options();
    }

    for (i = 0; i < malloc_num_zones; ++i)
    {
      if (zone == *(malloc_zones + i))
      {
        v10 = 8 * malloc_num_zones_allocated;
        mprotect(malloc_zones, v10, 3);
        *(malloc_zones + i) = *(malloc_zones + --malloc_num_zones);
        mprotect(malloc_zones, v10, 1);
        if (malloc_num_zones >= initial_num_zones)
        {
          v8 = initial_num_zones;
        }

        else
        {
          v8 = malloc_num_zones;
        }

        if (v8 <= 1)
        {
          v6 = 1;
        }

        else
        {
          if (malloc_num_zones >= initial_num_zones)
          {
            v7 = initial_num_zones;
          }

          else
          {
            v7 = malloc_num_zones;
          }

          v6 = v7;
        }

        initial_num_zones = v6;
        v9 = pFRZCounterLive;
        pFRZCounterLive = pFRZCounterDrain;
        pFRZCounterDrain = v9;
        __dmb(0xBu);
        while (*pFRZCounterDrain)
        {
          yield();
        }

        v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v3 = v2;
        atomic_compare_exchange_strong_explicit(&_malloc_lock, &v3, 0, memory_order_release, memory_order_relaxed);
        if (v3 != v2)
        {
          os_unfair_lock_unlock(&_malloc_lock);
        }

        return;
      }
    }

    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(&_malloc_lock);
    }

    malloc_report(3, "*** malloc_zone_unregister() failed for %p\n");
  }
}

void malloc_zone_check_fail(uint64_t a1, uint64_t a2)
{
  v8 = _simple_salloc();
  if (v8)
  {
    _simple_sprintf();
  }

  else
  {
    malloc_report(16, "*** MallocCheckHeap: FAILED check at operation #%d\n");
  }

  if (frames)
  {
    v7 = 1;
    if (v8)
    {
      _simple_sappend();
      while (v7 < num_frames)
      {
        v2 = v7++;
        v4 = *(frames + 8 * v2);
        _simple_sprintf();
      }

      _simple_string();
      malloc_report(16, "%s\n(Use 'atos' for a symbolic stack)\n");
    }

    else
    {
      malloc_report(16, "Stack for last operation where the malloc check succeeded: ");
      while (v7 < num_frames)
      {
        v3 = v7++;
        v5 = *(frames + 8 * v3);
        malloc_report(16, "%p ");
      }

      malloc_report(16, "\n(Use 'atos' for a symbolic stack)\n");
    }
  }

  if (malloc_check_each > 1)
  {
    malloc_report(16, "*** Recommend using 'setenv MallocCheckHeapStart %d; setenv MallocCheckHeapEach %d' to narrow down failure\n");
  }

  if (v8)
  {
    _simple_sfree();
  }

  v6 = 0;
  if (malloc_check_abort)
  {
    malloc_vreport(211, 0, a1, 0, a2);
  }

  else if (malloc_check_sleep <= 0)
  {
    if (malloc_check_sleep < 0)
    {
      malloc_report(5, "*** Will sleep once for %d seconds to leave time to attach\n");
      v6 = -malloc_check_sleep;
      malloc_check_sleep = 0;
    }

    malloc_vreport(147, v6, a1, 0, a2);
  }

  else
  {
    malloc_report(5, "*** Will sleep for %d seconds to leave time to attach\n");
    malloc_vreport(147, malloc_check_sleep, a1, 0, a2);
  }
}

uint64_t _malloc_zone_malloc(void *a1, unint64_t a2, unsigned int a3)
{
  v6 = a1;
  if (a1 == default_zone && !lite_zone)
  {
    v6 = *malloc_zones;
  }

  v4 = 1;
  if ((malloc_slowpath & 1) == 0)
  {
    v4 = 1;
    if (!malloc_logger)
    {
      v4 = *(v6 + 104) < 0xDu;
    }
  }

  if (v4)
  {
    return _malloc_zone_malloc_instrumented_or_legacy(v6, a2, a3);
  }

  if (a2 <= malloc_absolute_max_size)
  {
    if (*(v6 + 104) >= 0x10u)
    {
      return (*(v6 + 160))(v6, a2, (v5 >> 2));
    }

    else
    {
      return (*(v6 + 24))(v6, a2);
    }
  }

  else
  {
    malloc_set_errno_fast(a3, 12);
    return 0;
  }
}

uint64_t _malloc_zone_malloc_instrumented_or_legacy(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v6 = 0;
  if (!*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = (v4 >> 2);
    v6 = 1;
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v5 = 0;
  if (malloc_check_start)
  {
    internal_check();
  }

  if (a2 <= malloc_absolute_max_size)
  {
    v5 = (*(a1 + 24))(a1, a2);
    if (malloc_logger)
    {
      malloc_logger(10, a1, a2, 0, v5, 0);
    }

    if (malloc_simple_stack_logging)
    {
      malloc_report(805, "malloc (%p/%llu): ");
    }

    if (malloc_tracing_enabled)
    {
      kdebug_trace();
    }
  }

  if (v6)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = 0;
  }

  if (!v5)
  {
    malloc_set_errno_fast(a3, 12);
  }

  return v5;
}

uint64_t _malloc_zone_calloc(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a1;
  if (a1 == default_zone && !lite_zone)
  {
    v7 = *malloc_zones;
  }

  v5 = 1;
  if ((malloc_slowpath & 1) == 0)
  {
    v5 = 1;
    if (!malloc_logger)
    {
      v5 = *(v7 + 104) < 0xDu;
    }
  }

  if (v5)
  {
    return _malloc_zone_calloc_instrumented_or_legacy(v7, a2, a3, a4);
  }

  if (*(v7 + 104) >= 0x10u)
  {
    return (*(v7 + 168))(v7, a2, a3, (v6 >> 2));
  }

  return (*(v7 + 32))(v7, a2, a3);
}

uint64_t _malloc_zone_calloc_instrumented_or_legacy(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = 0;
  if (!*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = (v5 >> 2);
    v7 = 1;
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  v6 = (*(a1 + 32))(a1, a2, a3);
  if (malloc_logger)
  {
    malloc_logger(74, a1, a2 * a3, 0, v6, 0);
  }

  if (malloc_simple_stack_logging)
  {
    malloc_report(805, "calloc (%p/%llu*%llu): ");
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  if (v7)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = 0;
  }

  if (!v6)
  {
    malloc_set_errno_fast(a4, 12);
  }

  return v6;
}

uint64_t _malloc_zone_valloc(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v6 = 0;
  if (!*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = (v4 >> 2);
    v6 = 1;
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v5 = 0;
  if (malloc_check_start)
  {
    internal_check();
  }

  if (a2 <= malloc_absolute_max_size)
  {
    v5 = (*(a1 + 40))(a1, a2);
    if (malloc_logger)
    {
      malloc_logger(10, a1, a2, 0, v5, 0);
    }

    if (malloc_simple_stack_logging)
    {
      malloc_report(805, "valloc (%p/%llu): ");
    }

    if (malloc_tracing_enabled)
    {
      kdebug_trace();
    }
  }

  if (v6)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = 0;
  }

  if (!v5)
  {
    malloc_set_errno_fast(a3, 12);
  }

  return v5;
}

uint64_t _malloc_zone_realloc(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = 0;
  if (!*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = a4;
    v6 = 1;
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v5 = 0;
  if (malloc_check_start)
  {
    internal_check();
  }

  if (a3 <= malloc_absolute_max_size)
  {
    v5 = (*(a1 + 56))(a1, a2, a3);
    if (malloc_logger)
    {
      malloc_logger(14, a1, a2, a3, v5, 0);
    }

    if (malloc_simple_stack_logging)
    {
      malloc_report(805, "realloc (%p->%p/%llu): ");
    }

    if (malloc_tracing_enabled)
    {
      kdebug_trace();
    }
  }

  if (v6)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = 0;
  }

  return v5;
}

void malloc_zone_free(malloc_zone_t *zone, void *ptr)
{
  if (malloc_tracing_enabled)
  {
    if (ptr)
    {
      v2 = *ptr;
    }

    kdebug_trace();
  }

  if (malloc_logger)
  {
    malloc_logger(12, zone, ptr, 0, 0, 0);
  }

  if (malloc_simple_stack_logging)
  {
    malloc_report(805, "malloc_zone_free (%p): ");
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  (zone->free)(zone, ptr);
}

malloc_zone_t *__cdecl malloc_zone_from_ptr(const void *ptr)
{
  if (!ptr)
  {
    return 0;
  }

  if (!malloc_num_zones)
  {
    return 0;
  }

  if (lite_zone && (*(lite_zone + 16))(lite_zone, ptr))
  {
    return default_zone;
  }

  LODWORD(v7) = 0;
  while (v7 < initial_num_zones)
  {
    v8 = *(malloc_zones + v7);
    if ((*(v8 + 16))(v8, ptr))
    {
      if (v7 || !has_default_zone0())
      {
        return v8;
      }

      else
      {
        return default_zone;
      }
    }

    v7 = (v7 + 1);
  }

  v6 = pFRZCounterLive;
  atomic_fetch_add(pFRZCounterLive, 1u);
  v5 = malloc_num_zones;
  for (i = initial_num_zones; i < v5; ++i)
  {
    v9 = *(malloc_zones + i);
    if ((*(v9 + 16))(v9, ptr))
    {
      goto LABEL_21;
    }
  }

  v9 = 0;
LABEL_21:
  atomic_fetch_add(v6, 0xFFFFFFFF);
  return v9;
}

uint64_t _malloc_zone_memalign(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v9 = 0;
  if (!*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = a5;
    v9 = 1;
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v8 = 0;
  v7 = 12;
  if (*(a1 + 104) >= 5u)
  {
    if (malloc_check_start)
    {
      internal_check();
    }

    if (a3 <= malloc_absolute_max_size)
    {
      if (a2 < 8 || (a2 & (a2 - 1)) != 0)
      {
        v7 = 22;
      }

      else if ((a4 & 2) != 0 && (a3 & (a2 - 1)) != 0)
      {
        v7 = 22;
      }

      else
      {
        v6 = 0;
        if (*(a1 + 112))
        {
          v6 = *(a1 + 112);
        }

        if (v6)
        {
          v8 = (*(a1 + 112))(a1, a2, a3);
          if (malloc_logger)
          {
            malloc_logger(10, a1, a3, 0, v8, 0);
          }

          if (malloc_simple_stack_logging)
          {
            malloc_report(805, "memalign (%p/%llu,%llu): ");
          }

          if (malloc_tracing_enabled)
          {
            kdebug_trace();
          }
        }
      }
    }
  }

  if (v9)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = 0;
  }

  if (!v8 && (a4 & 1) != 0)
  {
    malloc_set_errno_fast(a4, v7);
  }

  return v8;
}

uint64_t malloc_zone_claimed_address(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (malloc_check_start)
    {
      internal_check();
    }

    if (*(a1 + 104) < 0xAu)
    {
      return 1;
    }

    v3 = 0;
    if (*(a1 + 136))
    {
      v3 = *(a1 + 136);
    }

    if (v3)
    {
      return (*(a1 + 136))(a1, a2);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

const char *get_wrapper_zone_label(uint64_t a1)
{
  if (*(a1 + 104) < 0xEu)
  {
    __break(1u);
    JUMPOUT(0x94610);
  }

  v2 = 0;
  if (*(a1 + 96))
  {
    v2 = *(a1 + 96);
  }

  if (*(v2 + 128) == 2)
  {
    return "PGM";
  }

  else
  {
    return "Sanitizer";
  }
}

void find_zone_and_free(void *a1, char a2)
{
  ptr = a1;
  v6 = a2;
  zone = 0;
  v4 = 0;
  if (a1)
  {
    v17 = ptr;
    v16 = &v4;
    v15 = v6 & 1;
    if (malloc_num_zones)
    {
      if (lite_zone && (v14 = lite_zone, (v13 = (*(lite_zone + 16))(lite_zone, v17)) != 0))
      {
        if (v16)
        {
          *v16 = v13;
        }

        v18 = default_zone;
      }

      else
      {
        v12 = 0;
        *&v11[8] = 0;
        *v11 = (v15 & 1) != 0;
        while (*v11 < initial_num_zones)
        {
          v12 = *(malloc_zones + *v11);
          *&v11[4] = (*(v12 + 16))(v12, v17);
          if (*&v11[4])
          {
            if (v16)
            {
              *v16 = *&v11[4];
            }

            if (*v11 || !has_default_zone0())
            {
              v18 = v12;
            }

            else
            {
              v18 = default_zone;
            }

            goto LABEL_29;
          }

          *v11 = (*v11 + 1);
        }

        v10 = pFRZCounterLive;
        v19 = pFRZCounterLive;
        v28 = 1;
        v27 = pFRZCounterLive;
        v26 = 1;
        add = atomic_fetch_add(pFRZCounterLive, 1u);
        v9 = malloc_num_zones;
        for (i = initial_num_zones; i < v9; ++i)
        {
          v12 = *(malloc_zones + i);
          *&v11[4] = (*(v12 + 16))(v12, v17);
          if (*&v11[4])
          {
            goto LABEL_26;
          }
        }

        v12 = 0;
        *&v11[4] = 0;
LABEL_26:
        if (v16)
        {
          *v16 = *&v11[4];
        }

        v20 = v10;
        v24 = -1;
        v23 = v10;
        v22 = -1;
        v21 = atomic_fetch_add(v10, 0xFFFFFFFF);
        v18 = v12;
      }
    }

    else
    {
      if (v16)
      {
        *v16 = 0;
      }

      v18 = 0;
    }

LABEL_29:
    zone = v18;
    if (v18)
    {
      if (zone->version < 6)
      {
        goto LABEL_38;
      }

      free_definite_size = 0;
      if (zone->free_definite_size)
      {
        free_definite_size = zone->free_definite_size;
      }

      if (free_definite_size)
      {
        malloc_zone_free_definite_size(zone, ptr, v4);
      }

      else
      {
LABEL_38:
        malloc_zone_free(zone, ptr);
      }
    }

    else
    {
      v3 = 144;
      if ((malloc_debug_flags & 0x140) != 0)
      {
        v3 = 80;
      }

      malloc_report_pointer_was_not_allocated(v3, ptr);
    }
  }
}

uint64_t malloc_zone_free_definite_size(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (malloc_tracing_enabled)
  {
    if (a2 && a3)
    {
      v4 = *a2;
    }

    kdebug_trace();
  }

  if (malloc_logger)
  {
    malloc_logger(12, a1, a2, 0, 0, 0);
  }

  if (malloc_simple_stack_logging)
  {
    malloc_report(805, "free (%p/%llu): ");
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  return (*(a1 + 120))(a1, a2, a3);
}

void _free(void *a1)
{
  if (a1)
  {
    v3 = *malloc_zones;
    v2 = 1;
    if ((malloc_slowpath & 1) == 0)
    {
      v2 = 1;
      if (!malloc_logger)
      {
        v2 = *(v3 + 104) < 0xDu;
      }
    }

    if (v2)
    {
      goto LABEL_10;
    }

    v1 = 0;
    if (*(v3 + 144))
    {
      v1 = *(v3 + 144);
    }

    if (!v1)
    {
LABEL_10:
      find_zone_and_free(a1, 0);
    }

    else
    {
      (*(v3 + 144))(v3, a1);
    }
  }
}

void *__cdecl reallocf(void *__ptr, size_t __size)
{
  v4 = j__realloc(__ptr, __size);
  if (!v4 && __ptr && __size)
  {
    v3 = *__error();
    j__free(__ptr);
    *__error() = v3;
  }

  return v4;
}

size_t malloc_size(const void *ptr)
{
  v3 = ptr;
  v2 = 0;
  if (!ptr)
  {
    return v2;
  }

  v14 = v3;
  v13 = &v2;
  v12 = 0;
  if (malloc_num_zones)
  {
    if (lite_zone && (v11 = lite_zone, (v10 = (*(lite_zone + 16))(lite_zone, v14)) != 0))
    {
      if (v13)
      {
        *v13 = v10;
      }

      v15 = default_zone;
    }

    else
    {
      v9 = 0;
      *&v8[8] = 0;
      *v8 = (v12 & 1) != 0;
      while (*v8 < initial_num_zones)
      {
        v9 = *(malloc_zones + *v8);
        *&v8[4] = (v9)[2](v9, v14);
        if (*&v8[4])
        {
          if (v13)
          {
            *v13 = *&v8[4];
          }

          if (*v8 || !has_default_zone0())
          {
            v15 = v9;
          }

          else
          {
            v15 = default_zone;
          }

          return v2;
        }

        *v8 = (*v8 + 1);
      }

      v7 = pFRZCounterLive;
      v16 = pFRZCounterLive;
      v25 = 1;
      v24 = pFRZCounterLive;
      v23 = 1;
      add = atomic_fetch_add(pFRZCounterLive, 1u);
      v6 = malloc_num_zones;
      for (i = initial_num_zones; i < v6; ++i)
      {
        v9 = *(malloc_zones + i);
        *&v8[4] = (v9)[2](v9, v14);
        if (*&v8[4])
        {
          goto LABEL_27;
        }
      }

      v9 = 0;
      *&v8[4] = 0;
LABEL_27:
      if (v13)
      {
        *v13 = *&v8[4];
      }

      v17 = v7;
      v21 = -1;
      v20 = v7;
      v19 = -1;
      v18 = atomic_fetch_add(v7, 0xFFFFFFFF);
      v15 = v9;
    }
  }

  else
  {
    if (v13)
    {
      *v13 = 0;
    }

    v15 = 0;
  }

  return v2;
}

size_t malloc_good_size(size_t size)
{
  v2 = 0;
  if (*(default_zone + 12))
  {
    v2 = *(default_zone + 12);
  }

  return (*(v2 + 8))(default_zone, size);
}

uint64_t _posix_memalign(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v5 = _malloc_zone_memalign(default_zone, a2, a3, 0, (v3 >> 2));
  if (v5)
  {
    *a1 = v5;
    return 0;
  }

  else if (a2 < 8 || (a2 & (a2 - 1)) != 0)
  {
    return 22;
  }

  else
  {
    return 12;
  }
}

uint64_t malloc_claimed_address(uint64_t a1)
{
  if (malloc_num_zones)
  {
    if (lite_zone && malloc_zone_claimed_address(lite_zone, a1))
    {
      return 1;
    }

    else
    {
      for (i = 0; i < initial_num_zones; ++i)
      {
        if (malloc_zone_claimed_address(*(malloc_zones + i), a1))
        {
          return 1;
        }
      }

      v5 = pFRZCounterLive;
      atomic_fetch_add(pFRZCounterLive, 1u);
      v4 = malloc_num_zones;
      v3 = 0;
      for (j = initial_num_zones; j < v4; ++j)
      {
        if (malloc_zone_claimed_address(*(malloc_zones + j), a1))
        {
          v3 = 1;
          break;
        }
      }

      atomic_fetch_add(v5, 0xFFFFFFFF);
      return v3;
    }
  }

  else
  {
    return 0;
  }
}

void *reallocarray_DARWIN_EXTSN(void *a1, unint64_t a2, unint64_t a3)
{
  if (is_mul_ok(a2, a3))
  {
    return j__realloc(a1, a2 * a3);
  }

  malloc_set_errno_fast(1, 12);
  return 0;
}

void *reallocarrayf_DARWIN_EXTSN(void *a1, unint64_t a2, unint64_t a3)
{
  if (is_mul_ok(a2, a3))
  {
    return reallocf(a1, a2 * a3);
  }

  malloc_set_errno_fast(1, 12);
  return 0;
}

void *_malloc_zone_malloc_with_options_outlined(malloc_zone_t *a1, size_t a2, size_t a3, uint64_t a4)
{
  zone = a1;
  if (!a1 || a1 == default_zone)
  {
    if (lite_zone)
    {
      v6 = lite_zone;
    }

    else
    {
      v6 = *malloc_zones;
    }

    zone = v6;
  }

  v11 = 0;
  if (!*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = (v7 >> 2);
    v11 = 1;
  }

  if ((malloc_interposition_compat & 1) != 0 || zone->version < 0xF)
  {
    goto LABEL_14;
  }

  reserved2 = 0;
  if (zone[1].reserved2)
  {
    reserved2 = zone[1].reserved2;
  }

  if (reserved2)
  {
    if (malloc_tracing_enabled)
    {
      kdebug_trace();
    }

    v12 = (zone[1].reserved2)(zone, a2, a3, a4);
    if (malloc_logger)
    {
      v8 = 10;
      if (a4)
      {
        v8 = 74;
      }

      malloc_logger(v8, zone, a3, 0, v12, 0);
    }

    if (malloc_simple_stack_logging)
    {
      malloc_report(805, "malloc_with_options (%p/%llu,%llu): ");
    }

    if (malloc_tracing_enabled)
    {
      kdebug_trace();
    }
  }

  else
  {
LABEL_14:
    if ((a4 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      malloc_zone_error(64, 1, "malloc_zone_malloc_with_options: unsupported options 0x%llx\n");
      __break(1u);
      JUMPOUT(0x95CCCLL);
    }

    thread_options = 0;
    if (a4 & 2) != 0 && (malloc_has_sec_transition)
    {
      thread_options = malloc_get_thread_options();
      v9 = thread_options;
      LOBYTE(v9) = thread_options & 0xF7 | 8;
      _malloc_set_thread_options(v9);
    }

    if (a2 <= 8)
    {
      if (a4)
      {
        v12 = j__malloc_zone_calloc(zone, 1uLL, a3);
      }

      else
      {
        v12 = j__malloc_zone_malloc(zone, a3);
      }
    }

    else
    {
      v12 = j__malloc_zone_memalign(zone, a2, a3);
      if (v12 && (a4 & 1) != 0)
      {
        _platform_memset();
      }
    }

    if (a4 & 2) != 0 && (malloc_has_sec_transition)
    {
      _malloc_set_thread_options(thread_options);
    }
  }

  if (v11)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904) = 0;
  }

  return v12;
}

void *malloc_zone_malloc_with_options(malloc_zone_t *a1, size_t a2, size_t a3, uint64_t a4)
{
  v10 = a1;
  if (a2 == 8)
  {
    goto LABEL_8;
  }

  v8 = 0;
  if (a2)
  {
    v7 = 1;
    if (((a2 - 1) & a2) == 0)
    {
      v7 = (a3 & (a2 - 1)) != 0;
    }

    v8 = v7;
  }

  if (v8)
  {
    return 0;
  }

LABEL_8:
  v6 = 1;
  if (!malloc_logger)
  {
    v6 = malloc_slowpath;
  }

  if (v6)
  {
    return _malloc_zone_malloc_with_options_outlined(v10, a2, a3, a4);
  }

  if (!a1 || a1 == default_zone)
  {
    v10 = *malloc_zones;
  }

  if (v10->version < 0x10)
  {
    return _malloc_zone_malloc_with_options_outlined(v10, a2, a3, a4);
  }

  free = 0;
  if (v10[1].free)
  {
    free = v10[1].free;
  }

  if (!free)
  {
    return _malloc_zone_malloc_with_options_outlined(v10, a2, a3, a4);
  }

  else
  {
    return (v10[1].free)(v10, a2, a3, a4, (v9 >> 2));
  }
}

malloc_zone_t *malloc_default_purgeable_zone(void)
{
  if (malloc_default_purgeable_zone_pred != -1)
  {
    _os_once();
  }

  return default_purgeable_zone;
}

void _malloc_create_purgeable_zone()
{
  if (initial_xzone_zone && (purgeable_zone_use_xzm & 1) != 0)
  {
    default_purgeable_zone = xzm_malloc_zone_create(malloc_debug_flags | 0x80u, initial_xzone_zone);
    malloc_zone_register(default_purgeable_zone);
    malloc_set_zone_name(default_purgeable_zone, "DefaultPurgeableMallocZone");
  }

  else
  {
    if (!initial_scalable_zone)
    {
      initial_scalable_zone = create_scalable_zone(0, malloc_debug_flags);
      malloc_set_zone_name(initial_scalable_zone, "DefaultScalableMallocZone");
      malloc_zone_register(initial_scalable_zone);
    }

    default_purgeable_zone = create_purgeable_zone(0, initial_scalable_zone, malloc_debug_flags);
    malloc_zone_register(default_purgeable_zone);
    malloc_set_zone_name(default_purgeable_zone, "DefaultPurgeableMallocZone");
  }
}

void malloc_make_purgeable(void *ptr)
{
  v3 = ptr;
  if (find_registered_purgeable_zone(ptr))
  {
    state = 1;
    vm_purgable_control(mach_task_self_, v3, 0, &state);
  }
}

void *find_registered_purgeable_zone(uint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v14 = v3;
  v13 = &v2;
  v12 = 0;
  if (malloc_num_zones)
  {
    if (lite_zone && (v11 = lite_zone, (v10 = (*(lite_zone + 16))(lite_zone, v14)) != 0))
    {
      if (v13)
      {
        *v13 = v10;
      }

      v15 = default_zone;
    }

    else
    {
      v9 = 0;
      *&v8[8] = 0;
      *v8 = (v12 & 1) != 0;
      while (*v8 < initial_num_zones)
      {
        v9 = *(malloc_zones + *v8);
        *&v8[4] = v9[2](v9, v14);
        if (*&v8[4])
        {
          if (v13)
          {
            *v13 = *&v8[4];
          }

          if (*v8 || !has_default_zone0())
          {
            v15 = v9;
          }

          else
          {
            v15 = default_zone;
          }

          goto LABEL_30;
        }

        *v8 = (*v8 + 1);
      }

      v7 = pFRZCounterLive;
      v16 = pFRZCounterLive;
      v25 = 1;
      v24 = pFRZCounterLive;
      v23 = 1;
      add = atomic_fetch_add(pFRZCounterLive, 1u);
      v6 = malloc_num_zones;
      for (i = initial_num_zones; i < v6; ++i)
      {
        v9 = *(malloc_zones + i);
        *&v8[4] = v9[2](v9, v14);
        if (*&v8[4])
        {
          goto LABEL_27;
        }
      }

      v9 = 0;
      *&v8[4] = 0;
LABEL_27:
      if (v13)
      {
        *v13 = *&v8[4];
      }

      v17 = v7;
      v21 = -1;
      v20 = v7;
      v19 = -1;
      v18 = atomic_fetch_add(v7, 0xFFFFFFFF);
      v15 = v9;
    }
  }

  else
  {
    if (v13)
    {
      *v13 = 0;
    }

    v15 = 0;
  }

LABEL_30:
  if (!v15)
  {
    return 0;
  }

  if (v2 < vm_page_size || v2 % vm_page_size)
  {
    return 0;
  }

  return v15;
}

int malloc_make_nonpurgeable(void *ptr)
{
  address = ptr;
  if (!find_registered_purgeable_zone(ptr))
  {
    return 0;
  }

  state = 0;
  vm_purgable_control(mach_task_self_, address, 0, &state);
  if (state == 2)
  {
    return 14;
  }

  else
  {
    return 0;
  }
}

uint64_t malloc_memory_event_handler(uint64_t result)
{
  v1 = result;
  if ((result & 0xF0000000) != 0 && (result & 0xFFFFFFF) == 0)
  {
    result = malloc_register_stack_logger();
  }

  if ((v1 & malloc_memorystatus_mask_resource_exception_handling) != 0)
  {
    result = malloc_register_stack_logger();
  }

  if (off_DA328)
  {
    return off_DA328(v1);
  }

  return result;
}

size_t malloc_zone_pressure_relief(malloc_zone_t *zone, size_t goal)
{
  if (zone)
  {
    if (zone->version >= 8)
    {
      pressure_relief = 0;
      if (zone->pressure_relief)
      {
        pressure_relief = zone->pressure_relief;
      }

      if (pressure_relief)
      {
        return (zone->pressure_relief)(zone, goal);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    *&v9[8] = 0;
    v2 = 0;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    *v9 = v2 == 0;
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    while (v10 < malloc_num_zones)
    {
      v3 = v10++;
      v12 = *(malloc_zones + v3);
      if (*(v12 + 104) >= 8u)
      {
        v8 = 0;
        if (*(v12 + 128))
        {
          v8 = *(v12 + 128);
        }

        if (v8)
        {
          if (goal)
          {
            if (goal <= *&v9[4])
            {
              break;
            }

            *&v9[4] += (*(v12 + 128))(v12, goal - *&v9[4]);
          }

          else
          {
            *&v9[4] += (*(v12 + 128))(v12, 0);
          }
        }
      }
    }

    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(&_malloc_lock);
    }

    return *&v9[4];
  }
}

unsigned int malloc_zone_batch_malloc(malloc_zone_t *zone, size_t size, void **results, unsigned int num_requested)
{
  batch_malloc = 0;
  if (zone->batch_malloc)
  {
    batch_malloc = zone->batch_malloc;
  }

  if (!batch_malloc)
  {
    return 0;
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  v7 = (zone->batch_malloc)(zone, size, results, num_requested);
  if (malloc_logger)
  {
    for (i = 0; i < v7; ++i)
    {
      malloc_logger(10, zone, size, 0, results[i], 0);
    }
  }

  return v7;
}

void malloc_zone_batch_free(malloc_zone_t *zone, void **to_be_freed, unsigned int num)
{
  if (malloc_check_start)
  {
    internal_check();
  }

  if (malloc_logger)
  {
    for (i = 0; i < num; ++i)
    {
      malloc_logger(12, zone, to_be_freed[i], 0, 0, 0);
    }
  }

  batch_free = 0;
  if (zone->batch_free)
  {
    batch_free = zone->batch_free;
  }

  if (batch_free)
  {
    (zone->batch_free)(zone, to_be_freed, num);
  }

  else
  {
    free = 0;
    if (zone->free)
    {
      free = zone->free;
    }

    while (num--)
    {
      v4 = to_be_freed++;
      (free)(zone, *v4);
    }
  }
}

uint64_t malloc_get_all_zones(int a1, uint64_t a2, uint64_t **a3, unsigned int *a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = &malloc_zones;
  v10 = &malloc_num_zones;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v14 = reader_or_in_memory_fallback_6(a2, a1);
  v9 = v14(v15, v11, 8, &v7);
  if (v9)
  {
    malloc_report(3, "*** malloc_get_all_zones: error reading zones_address at %p\n");
    return v9;
  }

  else
  {
    v8 = *v7;
    v9 = v14(v15, v10, 4, &v5);
    if (v9)
    {
      malloc_report(3, "*** malloc_get_all_zones: error reading num_zones at %p\n");
      return v9;
    }

    else
    {
      v6 = *v5;
      *v12 = v6;
      v9 = v14(v15, v8, 8 * v6, v13);
      if (v9)
      {
        malloc_report(3, "*** malloc_get_all_zones: error reading zones at %p\n");
        return v9;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t (*reader_or_in_memory_fallback_6(uint64_t a1, int a2))(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    return a1;
  }

  v3 = 1;
  if (a2)
  {
    v3 = mach_task_is_self() != 0;
  }

  if (!v3)
  {
    __break(1u);
    JUMPOUT(0x971D0);
  }

  return _malloc_default_reader_6;
}

void malloc_zone_print_ptr_info(void *ptr)
{
  if (ptr)
  {
    v1 = malloc_zone_from_ptr(ptr);
    if (v1)
    {
      printf("ptr %p in registered zone %p\n", ptr, v1);
    }

    else
    {
      printf("ptr %p not in heap\n", ptr);
    }
  }
}

BOOLean_t malloc_zone_check(malloc_zone_t *zone)
{
  v6 = 1;
  if (zone)
  {
    introspect = 0;
    if (zone->introspect)
    {
      introspect = zone->introspect;
    }

    return (introspect->check)(zone);
  }

  else
  {
    v5 = 0;
    while (v5 < malloc_num_zones)
    {
      v1 = v5++;
      v7 = *(malloc_zones + v1);
      v4 = 0;
      if (*(v7 + 96))
      {
        v4 = *(v7 + 96);
      }

      if (!(*(v4 + 16))(v7))
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

void malloc_zone_print(malloc_zone_t *zone, BOOLean_t verbose)
{
  if (zone)
  {
    introspect = 0;
    if (zone->introspect)
    {
      introspect = zone->introspect;
    }

    (introspect->print)(zone, verbose);
  }

  else
  {
    v5 = 0;
    while (v5 < malloc_num_zones)
    {
      v2 = v5++;
      v7 = *(malloc_zones + v2);
      v4 = 0;
      if (*(v7 + 96))
      {
        v4 = *(v7 + 96);
      }

      (*(v4 + 24))(v7, verbose);
    }
  }
}

void malloc_zone_statistics(malloc_zone_t *zone, malloc_statistics_t *stats)
{
  v9 = zone;
  v8 = stats;
  if (zone)
  {
    introspect = 0;
    if (v9->introspect)
    {
      introspect = v9->introspect;
    }

    (introspect->statistics)(v9, v8);
  }

  else
  {
    _platform_memset();
    v7 = 0;
    while (v7 < malloc_num_zones)
    {
      v2 = v7++;
      v9 = *(malloc_zones + v2);
      v5 = 0u;
      v6 = 0u;
      v4 = 0;
      if (v9->introspect)
      {
        v4 = v9->introspect;
      }

      (v4->statistics)(v9, &v5);
      v8->blocks_in_use += v5;
      v8->size_in_use += *(&v5 + 1);
      v8->max_size_in_use += v6;
      v8->size_allocated += *(&v6 + 1);
    }
  }
}

void malloc_zone_log(malloc_zone_t *zone, void *address)
{
  if (zone)
  {
    introspect = 0;
    if (zone->introspect)
    {
      introspect = zone->introspect;
    }

    (introspect->log)(zone, address);
  }

  else
  {
    v5 = 0;
    while (v5 < malloc_num_zones)
    {
      v2 = v5++;
      v7 = *(malloc_zones + v2);
      v4 = 0;
      if (*(v7 + 96))
      {
        v4 = *(v7 + 96);
      }

      (*(v4 + 32))(v7, address);
    }
  }
}

void DefaultMallocError()
{
  if (_simple_salloc())
  {
    _simple_sprintf();
    _simple_string();
    malloc_report(16, "%s\n");
    qword_D8128 = _simple_string();
  }

  else
  {
    malloc_report(16, "*** error %d\n");
    qword_D8128 = "*** DefaultMallocError called";
  }

  abort();
}

void _malloc_lock_all(void (*a1)(atomic_uint *))
{
  v6 = 0;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v2 = mfm_lock();
  while (v6 < malloc_num_zones)
  {
    v3 = v6++;
    v5 = *(malloc_zones + v3);
    v4 = 0;
    if (*(v5 + 96))
    {
      v4 = *(v5 + 96);
    }

    v2 = (*(v4 + 40))(v5);
  }

  if (initial_xzone_zone)
  {
    xzm_force_lock_global_state(initial_xzone_zone);
  }

  if (a1)
  {
    a1(v2);
  }
}

void _malloc_unlock_all(void (*a1)(void))
{
  if (initial_xzone_zone)
  {
    xzm_force_unlock_global_state(initial_xzone_zone);
  }

  v6 = 0;
  if (a1)
  {
    a1();
  }

  while (v6 < malloc_num_zones)
  {
    v1 = v6++;
    v5 = *(malloc_zones + v1);
    v4 = 0;
    if (*(v5 + 96))
    {
      v4 = *(v5 + 96);
    }

    (*(v4 + 48))(v5);
  }

  mfm_unlock();
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock(&_malloc_lock);
  }
}

void _malloc_fork_child()
{
  if ((_malloc_entropy_initialized & 1) != 0 && initial_nano_zone)
  {
    nanov2_forked_zone(initial_nano_zone);
  }

  _malloc_reinit_lock_all(qword_DA348);
}

void _malloc_reinit_lock_all(void (*a1)(void))
{
  if (initial_xzone_zone)
  {
    xzm_force_reinit_lock_global_state(initial_xzone_zone);
  }

  v5 = 0;
  if (a1)
  {
    a1();
  }

  while (v5 < malloc_num_zones)
  {
    v1 = v5++;
    v4 = *(malloc_zones + v1);
    if (*(v4 + 104) >= 9u)
    {
      v2 = 0;
      if (*(v4 + 96))
      {
        v2 = *(v4 + 96);
      }

      (*(v2 + 104))(v4);
    }

    else
    {
      v3 = 0;
      if (*(v4 + 96))
      {
        v3 = *(v4 + 96);
      }

      (*(v3 + 48))(v4);
    }
  }

  mfm_reinit_lock();
  _malloc_lock = 0;
}

mstats *mstats(mstats *__return_ptr retstr)
{
  memset(&v3, 0, sizeof(v3));
  memset(retstr, 0, sizeof(mstats));
  malloc_zone_statistics(0, &v3);
  retstr->bytes_total = v3.size_allocated;
  retstr->chunks_used = v3.blocks_in_use;
  retstr->bytes_used = v3.size_in_use;
  retstr->chunks_free = 0;
  retstr->bytes_free = retstr->bytes_total - retstr->bytes_used;
  return result;
}

BOOLean_t malloc_zone_enable_discharge_checking(malloc_zone_t *zone)
{
  if (zone->version < 7)
  {
    return 0;
  }

  introspect = 0;
  if (zone->introspect)
  {
    introspect = zone->introspect;
  }

  enable_discharge_checking = 0;
  if (introspect->enable_discharge_checking)
  {
    enable_discharge_checking = introspect->enable_discharge_checking;
  }

  if (!enable_discharge_checking)
  {
    return 0;
  }

  v2 = 0;
  if (zone->introspect)
  {
    v2 = zone->introspect;
  }

  return (v2->enable_discharge_checking)(zone);
}

void malloc_zone_disable_discharge_checking(malloc_zone_t *zone)
{
  if (zone->version >= 7)
  {
    introspect = 0;
    if (zone->introspect)
    {
      introspect = zone->introspect;
    }

    disable_discharge_checking = 0;
    if (introspect->disable_discharge_checking)
    {
      disable_discharge_checking = introspect->disable_discharge_checking;
    }

    if (disable_discharge_checking)
    {
      v1 = 0;
      if (zone->introspect)
      {
        v1 = zone->introspect;
      }

      (v1->disable_discharge_checking)(zone);
    }
  }
}

void malloc_zone_discharge(malloc_zone_t *zone, void *memory)
{
  v6 = zone;
  if (!zone)
  {
    v6 = malloc_zone_from_ptr(memory);
  }

  if (v6 && v6->version >= 7)
  {
    introspect = 0;
    if (v6->introspect)
    {
      introspect = v6->introspect;
    }

    discharge = 0;
    if (introspect->discharge)
    {
      discharge = introspect->discharge;
    }

    if (discharge)
    {
      v2 = 0;
      if (v6->introspect)
      {
        v2 = v6->introspect;
      }

      (v2->discharge)(v6, memory);
    }
  }
}

void malloc_zone_enumerate_discharged_pointers(malloc_zone_t *zone, void *report_discharged)
{
  if (zone)
  {
    if (zone->version >= 7)
    {
      introspect = 0;
      if (zone->introspect)
      {
        introspect = zone->introspect;
      }

      enumerate_discharged_pointers = 0;
      if (introspect->enumerate_discharged_pointers)
      {
        enumerate_discharged_pointers = introspect->enumerate_discharged_pointers;
      }

      if (enumerate_discharged_pointers)
      {
        v3 = 0;
        if (zone->introspect)
        {
          v3 = zone->introspect;
        }

        (v3->enumerate_discharged_pointers)(zone, report_discharged);
      }
    }
  }

  else
  {
    for (i = 0; i < malloc_num_zones; ++i)
    {
      v2 = i;
      v11 = *(malloc_zones + v2);
      if (*(v11 + 104) >= 7u)
      {
        v8 = 0;
        if (*(v11 + 96))
        {
          v8 = *(v11 + 96);
        }

        v7 = 0;
        if (*(v8 + 96))
        {
          v7 = *(v8 + 96);
        }

        if (v7)
        {
          v6 = 0;
          if (*(v11 + 96))
          {
            v6 = *(v11 + 96);
          }

          (*(v6 + 96))(v11, report_discharged);
        }
      }
    }
  }
}

void set_malloc_singlethreaded()
{
  if (!set_malloc_singlethreaded_warned)
  {
    set_malloc_singlethreaded_warned = 1;
  }
}

void malloc_singlethreaded()
{
  if (!malloc_singlethreaded_warned)
  {
    malloc_report(3, "*** OBSOLETE: malloc_singlethreaded()\n");
    malloc_singlethreaded_warned = 1;
  }
}

uint64_t malloc_set_thread_options(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 8) != 0)
  {
    malloc_zone_error(64, 1, "malloc_zone_malloc_with_options: reserved TSD bit set\n");
    __break(1u);
    JUMPOUT(0x98788);
  }

  if (a1)
  {
    LOBYTE(v2) = a1 & 0xF9 | 6;
  }

  pgm_thread_set_disabled((v2 & 2) != 0);
  return _malloc_set_thread_options(v2);
}

uint64_t _malloc_register_stack_logger(char a1)
{
  if (malloc_sanitizer_enabled & 1) == 0 || (a1)
  {
    if (_register_msl_dylib_pred != -1)
    {
      _os_once();
    }

    if (off_DA328)
    {
      v2 = 1;
    }

    else
    {
      malloc_report(4, "failed to load MallocStackLogging.framework\n");
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t turn_on_stack_logging(unsigned int a1)
{
  malloc_register_stack_logger();
  if (off_DA360)
  {
    return off_DA360(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t turn_off_stack_logging()
{
  result = malloc_register_stack_logger();
  if (off_DA368)
  {
    return off_DA368(result);
  }

  return result;
}

uint64_t default_zone_size(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v3 = lite_zone;
  }

  else
  {
    v3 = *malloc_zones;
  }

  return (*(v3 + 16))(v3, a2);
}

uint64_t default_zone_malloc(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v3 = lite_zone;
  }

  else
  {
    v3 = *malloc_zones;
  }

  return (*(v3 + 24))(v3, a2);
}

uint64_t default_zone_calloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  return (*(v4 + 32))(v4, a2, a3);
}

uint64_t default_zone_valloc(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v3 = lite_zone;
  }

  else
  {
    v3 = *malloc_zones;
  }

  return (*(v3 + 40))(v3, a2);
}

uint64_t default_zone_free(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v3 = lite_zone;
  }

  else
  {
    v3 = *malloc_zones;
  }

  return (*(v3 + 48))(v3, a2);
}

uint64_t default_zone_realloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  return (*(v4 + 56))(v4, a2, a3);
}

uint64_t default_zone_destroy()
{
  if (lite_zone)
  {
    v1 = lite_zone;
  }

  else
  {
    v1 = *malloc_zones;
  }

  return (*(v1 + 64))(v1);
}

uint64_t default_zone_batch_malloc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (lite_zone)
  {
    v5 = lite_zone;
  }

  else
  {
    v5 = *malloc_zones;
  }

  return (*(v5 + 80))(v5, a2, a3, a4);
}

uint64_t default_zone_batch_free(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  return (*(v4 + 88))(v4, a2, a3);
}

uint64_t default_zone_memalign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  return (*(v4 + 112))(v4, a2, a3);
}

uint64_t default_zone_free_definite_size(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  return (*(v4 + 120))(v4, a2, a3);
}

uint64_t default_zone_pressure_relief(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v3 = lite_zone;
  }

  else
  {
    v3 = *malloc_zones;
  }

  return (*(v3 + 128))(v3, a2);
}

uint64_t default_zone_malloc_claimed_address(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v3 = lite_zone;
  }

  else
  {
    v3 = *malloc_zones;
  }

  return malloc_zone_claimed_address(v3, a2);
}

uint64_t default_zone_ptr_in_use_enumerator(unsigned int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (lite_zone)
  {
    v8 = lite_zone;
  }

  else
  {
    v8 = *malloc_zones;
  }

  v7 = 0;
  if (*(v8 + 96))
  {
    v7 = *(v8 + 96);
  }

  return (*v7)(a1, a2, a3, v8, a5, a6);
}

uint64_t default_zone_good_size(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  v3 = 0;
  if (*(v4 + 96))
  {
    v3 = *(v4 + 96);
  }

  return (*(v3 + 8))(v4, a2);
}

uint64_t default_zone_check()
{
  if (lite_zone)
  {
    v2 = lite_zone;
  }

  else
  {
    v2 = *malloc_zones;
  }

  v1 = 0;
  if (*(v2 + 96))
  {
    v1 = *(v2 + 96);
  }

  return (*(v1 + 16))(v2);
}

uint64_t default_zone_print(uint64_t a1, unsigned int a2)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  v3 = 0;
  if (*(v4 + 96))
  {
    v3 = *(v4 + 96);
  }

  return (*(v3 + 24))(v4, a2);
}

uint64_t default_zone_log(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  v3 = 0;
  if (*(v4 + 96))
  {
    v3 = *(v4 + 96);
  }

  return (*(v3 + 32))(v4, a2);
}

uint64_t default_zone_force_lock()
{
  if (lite_zone)
  {
    v2 = lite_zone;
  }

  else
  {
    v2 = *malloc_zones;
  }

  v1 = 0;
  if (*(v2 + 96))
  {
    v1 = *(v2 + 96);
  }

  return (*(v1 + 40))(v2);
}

uint64_t default_zone_force_unlock()
{
  if (lite_zone)
  {
    v2 = lite_zone;
  }

  else
  {
    v2 = *malloc_zones;
  }

  v1 = 0;
  if (*(v2 + 96))
  {
    v1 = *(v2 + 96);
  }

  return (*(v1 + 48))(v2);
}

uint64_t default_zone_statistics(uint64_t a1, uint64_t a2)
{
  if (lite_zone)
  {
    v4 = lite_zone;
  }

  else
  {
    v4 = *malloc_zones;
  }

  v3 = 0;
  if (*(v4 + 96))
  {
    v3 = *(v4 + 96);
  }

  return (*(v3 + 56))(v4, a2);
}

uint64_t default_zone_locked()
{
  if (lite_zone)
  {
    v2 = lite_zone;
  }

  else
  {
    v2 = *malloc_zones;
  }

  v1 = 0;
  if (*(v2 + 96))
  {
    v1 = *(v2 + 96);
  }

  return (*(v1 + 64))(v2);
}

uint64_t default_zone_reinit_lock()
{
  if (lite_zone)
  {
    v2 = lite_zone;
  }

  else
  {
    v2 = *malloc_zones;
  }

  v1 = 0;
  if (*(v2 + 96))
  {
    v1 = *(v2 + 96);
  }

  return (*(v1 + 104))(v2);
}

BOOL _malloc_check_has_sec_transition(uint64_t a1)
{
  v5 = a1;
  v4 = _simple_getenv();
  v6 = v4 && (v3 = 0, v2 = malloc_common_convert_to_long(v4, &v3), !*v3) && v3 != v4 && v2 <= 1 && v2 != 0;
  return v6;
}

uint64_t _malloc_get_sec_transition_policy(uint64_t a1)
{
  v6 = a1;
  v5 = _simple_getenv();
  v4 = 0;
  if (v5)
  {
    __endptr = 0;
    v2 = strtoul(v5, &__endptr, 0);
    if (!*__endptr && __endptr != v5)
    {
      return v2;
    }
  }

  return v4;
}

void set_flags_from_environment()
{
  v34 = 0;
  v33 = *_NSGetEnviron();
  v31 = 0;
  malloc_debug_flags = 256;
  for (i = v33; ; ++i)
  {
    v31 = *i;
    if (!v31)
    {
      break;
    }

    if (!_platform_strncmp() || !_platform_strncmp())
    {
      if (issetugid())
      {
        return;
      }

      break;
    }
  }

  is_restricted = dyld_process_is_restricted();
  malloc_print_configure();
  if (v31)
  {
    if (getenv("MallocGuardEdges"))
    {
      if (_platform_strcmp())
      {
        malloc_debug_flags |= 3u;
        malloc_debug_flags &= ~4u;
        malloc_report(5, "adding guard pages for large allocator blocks\n");
        if (getenv("MallocDoNotProtectPrelude"))
        {
          malloc_debug_flags |= 8u;
          malloc_report(5, "... but not protecting prelude guard page\n");
        }

        if (getenv("MallocDoNotProtectPostlude"))
        {
          malloc_debug_flags |= 0x10u;
          malloc_report(5, "... but not protecting postlude guard page\n");
        }
      }

      else
      {
        malloc_debug_flags |= 7u;
        malloc_debug_flags &= 0xFFFFFFE7;
        malloc_report(5, "adding guard pages to all regions\n");
      }
    }

    if (getenv("MallocScribble"))
    {
      malloc_debug_flags |= 0x20u;
      malloc_report(5, "enabling scribbling to detect mods to free blocks\n");
    }

    if (getenv("MallocErrorAbort"))
    {
      malloc_debug_flags |= 0x40u;
      malloc_report(5, "enabling abort() on bad malloc or free\n");
    }

    if (getenv("MallocTracing"))
    {
      malloc_tracing_enabled = 1;
    }

    if (getenv("MallocSimpleStackLogging"))
    {
      malloc_simple_stack_logging = 1;
    }

    if (getenv("MallocReportConfig"))
    {
      malloc_report_config = 1;
    }

    v34 = getenv("MallocCheckHeapStart");
    if (v34)
    {
      malloc_check_start = strtoul(v34, 0, 0);
      if (!malloc_check_start)
      {
        malloc_check_start = 1;
      }

      if (malloc_check_start == -1)
      {
        malloc_check_start = 1;
      }

      v34 = getenv("MallocCheckHeapEach");
      if (v34)
      {
        malloc_check_each = strtoul(v34, 0, 0);
        if (!malloc_check_each)
        {
          malloc_check_each = 1;
        }

        if (malloc_check_each == -1)
        {
          malloc_check_each = 1;
        }
      }

      malloc_report(5, "checks heap after operation #%d and each %d operations\n");
      v34 = getenv("MallocCheckHeapAbort");
      if (v34)
      {
        malloc_check_abort = strtol(v34, 0, 0);
      }

      if (malloc_check_abort)
      {
        malloc_report(5, "will abort on heap corruption\n");
      }

      else
      {
        v34 = getenv("MallocCheckHeapSleep");
        if (v34)
        {
          malloc_check_sleep = strtol(v34, 0, 0);
        }

        if (malloc_check_sleep <= 0)
        {
          if (malloc_check_sleep < 0)
          {
            malloc_report(5, "will sleep once for %d seconds on heap corruption\n");
          }

          else
          {
            malloc_report(5, "no sleep on heap corruption\n");
          }
        }

        else
        {
          malloc_report(5, "will sleep for %d seconds on heap corruption\n");
        }
      }
    }

    v34 = getenv("MallocMaxMagazines");
    if (!v34)
    {
      v34 = getenv("_MallocMaxMagazines");
    }

    if (v34)
    {
      v29 = strtol(v34, 0, 0);
      if (v29)
      {
        if (v29 == 0xFFFF)
        {
          max_magazines = ncpuclusters;
          malloc_report(5, "Maximum magazines limited to ncpuclusters (%d)\n");
        }

        else if ((v29 & 0x80000000) != 0)
        {
          malloc_report(3, "Maximum magazines must be positive - ignored.\n");
        }

        else if (v29 > logical_ncpus)
        {
          max_magazines = logical_ncpus;
          malloc_report(5, "Maximum magazines limited to number of logical CPUs (%d)\n");
        }

        else
        {
          max_magazines = v29;
          malloc_report(5, "Maximum magazines set to %d\n");
        }
      }

      else
      {
        malloc_report(5, "Maximum magazines defaulted to %d\n");
      }
    }

    v34 = getenv("MallocLargeExpandedCacheThreshold");
    if (v34)
    {
      v28 = strtoull(v34, 0, 0);
      if (v28)
      {
        magazine_large_expanded_cache_threshold = v28;
        malloc_report(5, "Large expanded cache threshold set to %lly\n");
      }

      else
      {
        malloc_report(5, "Large expanded cache threshold defaulted to %lly\n");
      }
    }

    v34 = getenv("MallocLargeDisableASLR");
    if (v34)
    {
      if (strtoull(v34, 0, 0))
      {
        malloc_report(5, "Disabling ASLR slide on large allocations\n");
        malloc_debug_flags |= 0x20000000u;
      }

      else
      {
        malloc_report(5, "Enabling ASLR slide on large allocations\n");
        malloc_debug_flags &= ~0x20000000u;
      }
    }

    v34 = getenv("MallocSpaceEfficient");
    if (v34)
    {
      v26 = 0;
      v25 = malloc_common_convert_to_long(v34, &v26);
      if (*v26 || v26 == v34 || v25 > 1)
      {
        malloc_report(3, "MallocSpaceEfficient must be 0 or 1.\n");
      }

      else
      {
        aggressive_madvise_enabled = v25 == 1;
        malloc_space_efficient_enabled = v25 == 1;
      }
    }

    v34 = getenv("MallocAggressiveMadvise");
    if (v34)
    {
      v24 = 0;
      v23 = malloc_common_convert_to_long(v34, &v24);
      if (*v24 || v24 == v34 || v23 > 1)
      {
        malloc_report(3, "MallocAggressiveMadvise must be 0 or 1.\n");
      }

      else
      {
        aggressive_madvise_enabled = v23 == 1;
      }
    }

    v34 = getenv("MallocRecircRetainedRegions");
    if (v34)
    {
      v22 = strtol(v34, 0, 0);
      if (v22 <= 0)
      {
        malloc_report(3, "MallocRecircRetainedRegions must be positive - ignored.\n");
      }

      else
      {
        recirc_retained_regions = v22;
      }
    }

    v34 = getenv("MallocZeroOnFree");
    if (v34)
    {
      v21 = 0;
      v20 = malloc_common_convert_to_long(v34, &v21);
      if (*v21 || v21 == v34 || v20 > 1)
      {
        malloc_report(3, "MallocZeroOnFree must be 0 or 1.\n");
      }

      else
      {
        malloc_zero_policy = v20 == 0;
      }
    }

    v34 = getenv("MallocZeroOnAlloc");
    if (v34)
    {
      v19 = 0;
      v18 = malloc_common_convert_to_long(v34, &v19);
      if (*v19 || v19 == v34 || v18 > 1)
      {
        malloc_report(3, "MallocZeroOnAlloc must be 0 or 1.\n");
      }

      else
      {
        if (v18)
        {
          v0 = 2;
        }

        else
        {
          v0 = 1;
        }

        malloc_zero_policy = v0;
      }
    }

    v34 = getenv("MallocCheckZeroOnFreeCorruption");
    if (v34)
    {
      v17 = strtol(v34, 0, 0);
      if (v17 <= 0)
      {
        malloc_report(3, "malloc_zero_on_free_sample_period must be positive - ignored.\n");
      }

      else
      {
        malloc_zero_on_free_sample_period = v17;
      }
    }

    v34 = getenv("MallocSecureAllocator");
    if (v34 && (malloc_internal_security_policy & 1) != 0)
    {
      v16 = 0;
      v15 = malloc_common_convert_to_long(v34, &v16);
      if (*v16 || v16 == v34 || v15 > 1)
      {
        malloc_report(3, "MallocSecureAllocator must be 0 or 1.\n");
      }

      else
      {
        malloc_xzone_enabled = v15 != 0;
      }
    }

    v34 = getenv("MallocSecureAllocatorNano");
    if (v34)
    {
      v14 = 0;
      v13 = malloc_common_convert_to_long(v34, &v14);
      if (*v14 || v14 == v34 || v13 > 1)
      {
        malloc_report(3, "MallocSecureAllocatorNano must be 0 or 1.\n");
      }

      else
      {
        if (v13)
        {
          v1 = 2;
        }

        else
        {
          v1 = 1;
        }

        malloc_xzone_nano_override = v1;
      }
    }

    v34 = getenv("MallocNanoOnXzone");
    if (v34)
    {
      v12 = 0;
      v11 = malloc_common_convert_to_long(v34, &v12);
      if (*v12 || v12 == v34 || v11 > 1)
      {
        malloc_report(3, "MallocNanoOnXzone must be 0 or 1.\n");
      }

      else
      {
        if (v11)
        {
          v2 = 2;
        }

        else
        {
          v2 = 1;
        }

        malloc_nano_on_xzone_override = v2;
      }
    }

    v34 = getenv("MallocSecureAllocatorCreateMzones");
    if (v34 && (malloc_internal_security_policy & 1) != 0)
    {
      v10 = 0;
      v9 = malloc_common_convert_to_long(v34, &v10);
      if (*v10 || v10 == v34 || v9 > 1)
      {
        malloc_report(3, "MallocSecureAllocatorCreateMzones must be 0 or 1.\n");
      }

      else
      {
        xzm_create_mzones = v9 != 0;
      }
    }

    v34 = getenv("MallocSecureAllocatorPurgeableZone");
    if (v34 && (malloc_internal_security_policy & 1) != 0)
    {
      v8 = 0;
      v7 = malloc_common_convert_to_long(v34, &v8);
      if (*v8 || v8 == v34 || v7 > 1)
      {
        malloc_report(3, "MallocSecureAllocatorPurgeableZone must be 0 or 1.\n");
      }

      else
      {
        purgeable_zone_use_xzm = v7 != 0;
      }
    }

    v34 = getenv("MallocEarlyMallocSecTransitionSupport");
    if (v34)
    {
      v6 = 0;
      v5 = malloc_common_convert_to_long(v34, &v6);
      if (*v6 || v6 == v34 || v5 > 1)
      {
        malloc_report(3, "MallocEarlyMallocSecTransitionSupport must be 0 or 1.\n");
      }

      else
      {
        malloc_sec_transition_early_malloc_support = v5 != 0;
      }
    }

    v34 = getenv("MallocEnableMSLAtLimitWarning");
    if (v34)
    {
      v4 = 0;
      v3 = malloc_common_convert_to_long(v34, &v4);
      if (!*v4 && v4 != v34 && v3 == 1)
      {
        malloc_memorystatus_mask_resource_exception_handling |= 0x34uLL;
      }
    }

    if (getenv("MallocHelp"))
    {
      malloc_report(5, "environment variables that can be set for debug:\n- MallocLogFile <f> to create/append messages to file <f> instead of stderr\n- MallocGuardEdges to add 2 guard pages for each large block\n- MallocDoNotProtectPrelude to disable protection (when previous flag set)\n- MallocDoNotProtectPostlude to disable protection (when previous flag set)\n- MallocStackLogging to record all stacks.  Tools like leaks can then be applied\n- MallocStackLoggingNoCompact to record all stacks.  Needed for malloc_history\n- MallocStackLoggingDirectory to set location of stack logs, which can grow large; default is /tmp\n- MallocScribble to detect writing on free blocks and missing initializers:\n  0x55 is written upon free and 0xaa is written on allocation\n- MallocCheckHeapStart <n> to start checking the heap after <n> operations\n- MallocCheckHeapEach <s> to repeat the checking of the heap after <s> operations\n- MallocCheckHeapSleep <t> to sleep <t> seconds on heap corruption\n- MallocCheckHeapAbort <b> to abort on heap corruption if <b> is non-zero\n- MallocCorruptionAbort to abort on malloc errors, but not on out of memory for 32-bit processes\n  MallocCorruptionAbort is always set on 64-bit processes\n- MallocErrorAbort to abort on any malloc error, including out of memory\n- MallocTracing to emit kdebug trace points on malloc entry points\n- MallocZeroOnFree to enable or disable zero-on-free behavior (for debugging only)\n- MallocCheckZeroOnFreeCorruption to enable zero-on-free corruption detection\n- MallocHelp - this help!\n");
    }
  }
}