void *sub_2367DB600(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
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
  v17 = 8 * (v16 * v16) * *(*(v11 + 384) + 8 * a2);
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
      result = sub_2367DBA90(v13, v32, *(v10 + 1), *v10, *(v10 + 2), *(v10 + 6), *(v10 + 4), a8, v23, v20, &v76, v33, v77, &v75, v18, v19, *(v10 + 13), v8, v10);
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

uint64_t sub_2367DBA08(uint64_t result)
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

uint64_t sub_2367DBA90(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9, int a10, unint64_t *a11, unint64_t a12, int *a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a6;
  v239 = *MEMORY[0x277D85DE8];
  v205 = *(&off_28499C2F0 + a4 - 81);
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
  v40 = v34 + 8 + 8 * v37 * v33;
  *(&v224 + 1) = v37;
  *&v225 = v40;
  *(&v225 + 1) = v38;
  v215 = a7;
  if (a4 == 81 || (*&v226 = v40 + 8 * v38 * v33, *(&v226 + 1) = v226 + 4 * v33, a4 != 83))
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
    sub_2367DCA50(a1, 1, 83, a5, a6, a7, a9, v229, v25, v41, v27, v41);
    v42 = *&v229[8];
    v200 = *&v229[16];
    __src = *v229;
    v199 = *&v229[24];
    sub_2367DCA50(a1, 2, 83, a5, v19, v215, a9, v229, v24, v41, v26, v41);
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
  v57 = 8 * ((v39 - v33 + v42) * v56 + ((v37 + v43 + v45) * v56));
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
  v89 = &v213[8 * v87 * v82];
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
    v91 = &v89[8 * v90 * v82];
  }

  if (a4 == 81)
  {
    v92 = 0;
  }

  else
  {
    v92 = &v89[8 * (v88 + v78) * v82 + 4 * v82 + 4 * v77];
  }

  *&v224 = v213;
  *(&v224 + 1) = v87;
  v93 = &v91[4 * v82];
  if (v77 <= 0)
  {
    v93 = 0;
  }

  v201 = &v213[8 * v87 * v82];
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
            v109 = *(v79 + 8 * v103) + 8 + 8 * (v107 + v105 + (*(v84 + 8 * (v103 + 1)) - *(v84 + 8 * v103)) * v19) * v107 + 8 * (v106 + (*(v85 + 8 * (v103 + 1)) - *(v85 + 8 * v103)) * v19) * v107;
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

  v132 = 8 * SDWORD1(v223);
  bzero(v213, v132 * v87);
  bzero(v201, v132 * v202);
  sub_2367DCF58(a2, a1, SDWORD1(v223), a3, a5, v213, v87, v201, v202, a15, v212, v215[12], v215[13]);
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
    v136 = (*(*v134 + 24))(8 * v135);
    *(v134 + 96) = v136;
    *(v134 + 104) = v135;
    bzero(v136, 8 * v135);
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
      v149 = v145 + 8 * *v229 * *&v229[12];
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
        v150 = v149 + 8 * (v148 + v144) * *&v229[12];
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
          v177 = sub_2367DDE0C(&v221, v141, v229, v156, a5, v214, v157, v158, a15, v212);
          v19 = v214;
          sub_2367D673C(v177, &v221, v134, v141, v229, v156, a5, v214, v157, v158, a15, v212);
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
          sub_2367DD7D0(a1, &v221, v141, v229, v156, a5, v214, v157, v158, v171, a15, v212);
          v19 = v214;
          v134 = v208;
          sub_2367D5E48(a1, &v221, v208, v141, v229, v156, a5, v214, v157, v158, v171, a15, v212);
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
          sub_2367DD33C(a1, &v221, v141, v229, v156, a5, v214, v157, v158, v161, a15, v212);
          v19 = v214;
          v134 = v208;
          sub_2367D56F8(a1, &v221, v208, v141, v229, v156, a5, v214, v157, v158, v161, a15, v212);
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

void sub_2367DCA34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2367DCA50(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, _DWORD *a9, unint64_t a10, _DWORD *a11, uint64_t a12)
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

    v33 = *(a6[14] + 8 * v22) + 8 + 8 * v31 * (v29 + v24 + (*(a4[23] + 8 * (v22 + 1)) - *(a4[23] + 8 * v22)) * a5) + 8 * v31 * (v25 + (*(a4[25] + 8 * (v22 + 1)) - *(a4[25] + 8 * v22)) * a5);
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

void sub_2367DCF38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367DCF58(uint64_t result, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *(a4 + 28);
  v14 = (v13 * v13);
  v15 = *(a5[14] + 4 * result + 4);
  v16 = (a5[22] + 4 * a2);
  v17 = *v16;
  v18 = v16[1];
  if (a12)
  {
    if (v17 < v18)
    {
      v103 = a5[20];
      v102 = *(a4 + 8);
      v19 = 8 * v14;
      v20 = 8 * v13;
      v101 = 8 * a7 * v13;
      v21 = 8 * a7;
      v22 = *v16;
      do
      {
        v23 = v18;
        v24 = (v102 + 8 * *(v103 + 4 * v22));
        v25 = *v24;
        v26 = v24[1];
        if (*v24 < v26)
        {
          v27 = *(a4 + 16);
          v28 = v19 * v25;
          do
          {
            v29 = *(v27 + 4 * v25);
            if ((v29 & 0x80000000) == 0 && v29 < *a4)
            {
              v30 = *(a5[17] + 4 * v29);
              v31 = v30 >= v17 && v30 < v15;
              if (v31 && v13)
              {
                v32 = 0;
                v33 = v30 * v13;
                v34 = (a12 + 8 * v33);
                v35 = (*(a4 + 32) + v28);
                v36 = (a6 + 8 * *(a10 + 4 * v33));
                do
                {
                  v37 = v13;
                  v38 = v36;
                  v39 = v34;
                  v40 = v35;
                  do
                  {
                    v41 = *v39++;
                    v42 = v41;
                    v43 = *v40++;
                    *v38++ = v42 * v43 * *(a13 + 8 * v22 * v13 + 8 * v32);
                    --v37;
                  }

                  while (v37);
                  ++v32;
                  v35 = (v35 + v20);
                  v36 = (v36 + v21);
                }

                while (v32 != v13);
              }
            }

            ++v25;
            v28 += v19;
          }

          while (v25 != v26);
        }

        ++v22;
        a6 += v101;
        v18 = v23;
      }

      while (v22 != v23);
      v44 = a5[39];
      v45 = *(v44 + 8 * v17);
      v46 = a8 - 8 * a3;
      result = 8 * a9 * v13;
      v47 = (a12 + 8 * v17 * v13);
      do
      {
        ++v17;
        v48 = *(v44 + 8 * v17);
        if (v45 < v48)
        {
          v49 = *(a4 + 32);
          v50 = a5[40];
          v51 = a5[41];
          do
          {
            if (v13)
            {
              v52 = 0;
              v53 = (v49 + 8 * *(v51 + 8 * v45) * v14);
              v54 = *(v50 + 4 * v45) * v13;
              v55 = a13 + 8 * v54;
              v56 = (v46 + 8 * *(a11 + 4 * v54));
              do
              {
                v57 = v13;
                v58 = v47;
                v59 = v56;
                v60 = v53;
                do
                {
                  v61 = *v58++;
                  v62 = v61;
                  v63 = *v60++;
                  *v59 = v62 * v63 * *(v55 + 8 * v52);
                  v59 += a9;
                  --v57;
                }

                while (v57);
                ++v52;
                v53 = (v53 + v20);
                ++v56;
              }

              while (v52 != v13);
            }

            ++v45;
          }

          while (v45 != v48);
        }

        v46 += result;
        v47 = (v47 + v20);
        v45 = v48;
      }

      while (v17 != v18);
    }
  }

  else if (v17 < v18)
  {
    v64 = a5[20];
    v65 = *(a4 + 8);
    v66 = 8 * v14;
    v67 = 8 * v13;
    v68 = 8 * a7 * v13;
    v69 = 8 * a7;
    v70 = *v16;
    do
    {
      v71 = (v65 + 8 * *(v64 + 4 * v70));
      v72 = *v71;
      v73 = v71[1];
      if (*v71 < v73)
      {
        v74 = *(a4 + 16);
        v75 = v66 * v72;
        do
        {
          v76 = *(v74 + 4 * v72);
          if ((v76 & 0x80000000) == 0 && v76 < *a4)
          {
            v77 = *(a5[17] + 4 * v76);
            v78 = v77 >= v17 && v77 < v15;
            if (v78 && v13)
            {
              v79 = 0;
              v80 = (*(a4 + 32) + v75);
              v81 = (a6 + 8 * *(a10 + 4 * v77 * v13));
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
                v80 = (v80 + v67);
                v81 = (v81 + v69);
              }

              while (v79 != v13);
            }
          }

          ++v72;
          v75 += v66;
        }

        while (v72 != v73);
      }

      ++v70;
      a6 += v68;
    }

    while (v70 != v18);
    v86 = a5[39];
    result = *(v86 + 8 * v17);
    v87 = a8 - 8 * a3;
    do
    {
      ++v17;
      v88 = *(v86 + 8 * v17);
      if (result < v88)
      {
        v89 = *(a4 + 32);
        v90 = a5[40];
        v91 = a5[41];
        do
        {
          if (v13)
          {
            v92 = 0;
            v93 = (v89 + 8 * *(v91 + 8 * result) * v14);
            v94 = (v87 + 8 * *(a11 + 4 * *(v90 + 4 * result) * v13));
            do
            {
              v95 = v13;
              v96 = v94;
              v97 = v93;
              do
              {
                v98 = *v97++;
                *v96 = v98;
                v96 += a9;
                --v95;
              }

              while (v95);
              ++v92;
              v93 = (v93 + v67);
              ++v94;
            }

            while (v92 != v13);
          }

          ++result;
        }

        while (result != v88);
      }

      v87 += 8 * a9 * v13;
      result = v88;
    }

    while (v17 != v18);
  }

  return result;
}

uint64_t sub_2367DD33C(uint64_t result, uint64_t a2, int a3, int *a4, void *a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
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
    for (i = 8 * a9; ; i += 8)
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
              v23 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
              v24 = 8 * v55 - 8 * v12;
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
                    v33 = (*(a4 + 5) + 8 * *(a4 + 6) * v25 + 8 * v17);
                  }

                  goto LABEL_40;
                }

LABEL_34:
                v33 = (*(a4 + 3) + 8 * *(a4 + 4) * v15 + 8 * v25);
LABEL_40:
                v34 = *(a11 + 4 * v28);
                *(v23 + 8 * v34) = *v33 + *(v23 + 8 * v34);
                ++v25;
                ++v26;
                v24 += 8;
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
    v41 = -8 * v12 + 8 * (v37 - v35);
    v42 = v37 - v35;
    while ((*(v39 + v36) & 1) != 0)
    {
LABEL_72:
      ++v42;
      ++v36;
      ++v40;
      v41 += 8;
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
          v53 = (*(a4 + 3) + 8 * *(a4 + 4) * v15 + 8 * v42);
        }

        else if (v43 >= v12)
        {
          v53 = (a5[12] + i * a5[2] + v41);
        }

        else
        {
          v53 = (*(a4 + 5) + 8 * *(a4 + 6) * v43 + 8 * v17);
        }

        v54 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
        *(v54 + 8 * v50) = *v53 + *(v54 + 8 * v50);
      }

      goto LABEL_72;
    }

    v52 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_2367DD7D0(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v84 = result;
  v12 = a4[3];
  if (a10 >= 1)
  {
    v13 = v12 + a8;
    v14 = v12 + a9;
    v15 = *(a2 + 12);
    v16 = 8 * v14 - 8 * v12;
    while (1)
    {
      v17 = v14 - v12;
      if (v14 < v12)
      {
        break;
      }

      v18 = a4[1];
      v19 = v18 - a4[19];
      v20 = __OFSUB__(v14, v19);
      v21 = v14 - v19;
      if (v21 < 0 != v20)
      {
        result = ((v14 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v14 - v12) / a7)) * a7);
      }

      else
      {
        if (v14 >= v18)
        {
          goto LABEL_12;
        }

        result = *(*(a4 + 11) + 4 * v21);
      }

LABEL_14:
      v22 = *(a12 + 4 * result);
      if (v22 < v15)
      {
        result = a4[4];
        if (result < v12)
        {
          v23 = *(a2 + 24) + 8 * *(a2 + 32) * v22;
          if (v17 >= 0)
          {
            v24 = (a4 + 10);
          }

          else
          {
            v24 = (a4 + 6);
          }

          if (v17 >= 0)
          {
            v25 = (a4 + 12);
          }

          else
          {
            v25 = (a4 + 8);
          }

          v26 = *v24;
          v27 = *v25;
          do
          {
            if (result < 0)
            {
              v29 = 0x7FFFFFFF;
            }

            else
            {
              v28 = *(a4 + 7);
              if (v28)
              {
                v29 = *(v28 + 4 * result);
              }

              else
              {
                v29 = result + *(a6[22] + 4 * a3) * a7;
              }
            }

            v30 = *(a11 + 4 * v29);
            if (v17 >= 0)
            {
              v31 = result;
            }

            else
            {
              v31 = v14;
            }

            if (v17 >= 0)
            {
              v32 = v14 - v12;
            }

            else
            {
              v32 = result;
            }

            *(v23 + 8 * v30) = *(v26 + 8 * v27 * v31 + 8 * v32) + *(v23 + 8 * v30);
            ++result;
          }

          while (v12 != result);
        }

        v33 = *a4;
        if (v13 < v33)
        {
          v34 = a4[18];
          v35 = v33 - v34;
          v36 = v12 + v34 - v33;
          result = 4 * v34 - 4 * v33;
          v37 = 8 * v13 - 8 * v12;
          v38 = a8;
          v39 = v13;
          while (2)
          {
            if (v36 + v38 >= 0 && (*(*(a5 + 32) + (v36 + v38)) & 1) != 0)
            {
              goto LABEL_52;
            }

            if (v39 >= v12)
            {
              if (v39 >= v35)
              {
                v41 = *(*(a4 + 10) + result + 4 * v39);
                if (v17 < 0)
                {
                  break;
                }
              }

              else
              {
                v41 = v38 % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v38 / a7)) * a7;
                if (v17 < 0)
                {
                  break;
                }
              }

              goto LABEL_46;
            }

            if (v39 < 0)
            {
              v41 = 0x7FFFFFFF;
              if ((v17 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v40 = *(a4 + 7);
              if (v40)
              {
                v41 = *(v40 + 4 * v39);
                if (v17 < 0)
                {
                  break;
                }

LABEL_46:
                if (v39 >= v12)
                {
                  v42 = (*(a5 + 96) + v16 * *(a5 + 16) + v37);
                }

                else
                {
                  v42 = (*(a4 + 5) + 8 * *(a4 + 6) * v39 + 8 * v17);
                }

LABEL_51:
                v43 = *(a11 + 4 * v41);
                v44 = *v42;
                v45 = *(a2 + 24) + 8 * *(a2 + 32) * v22;
                *(v45 + 8 * v43) = v44 + *(v45 + 8 * v43);
LABEL_52:
                ++v39;
                ++v38;
                v37 += 8;
                if (v39 >= v33)
                {
                  goto LABEL_58;
                }

                continue;
              }

              v41 = v12 + v38 + *(a6[22] + 4 * a3) * a7;
              if ((v17 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            break;
          }

          v42 = (*(a4 + 3) + 8 * *(a4 + 4) * v14 + 8 * v39);
          goto LABEL_51;
        }
      }

LABEL_58:
      ++v14;
      v16 += 8;
      if (v14 >= v12 + a9 + a10)
      {
        goto LABEL_59;
      }
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 7))
      {
        result = *(*(a4 + 8) + 4 * v14);
      }

      else
      {
        result = (v14 + *(a6[22] + 4 * a3) * a7);
      }

      goto LABEL_14;
    }

LABEL_12:
    result = 0x7FFFFFFFLL;
    goto LABEL_14;
  }

LABEL_59:
  v46 = a4[19];
  if (v46 >= 1)
  {
    v47 = 0;
    result = 0;
    v48 = a4[1];
    v49 = *(a5 + 48);
    v86 = v12 + a8;
    v50 = v48 - v46;
    v51 = 8 * v50 - 8 * v12;
    v52 = v50;
    v85 = v50;
    do
    {
      if ((*(v49 + v47) & 1) == 0)
      {
        v53 = v52 - v12;
        if (v52 >= v12)
        {
          v54 = v52 >= v50 ? *(*(a4 + 11) + 4 * (v52 - v50)) : (v52 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v52 - v12) / a7)) * a7;
        }

        else if (v52 < 0)
        {
          v54 = 0x7FFFFFFF;
        }

        else
        {
          v54 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v52) : v52 + *(a6[22] + 4 * a3) * a7;
        }

        v55 = *(a12 + 4 * v54);
        if (*(a2 + 12) > v55)
        {
          v56 = v55;
          if ((v55 & 0x80000000) != 0)
          {
            v57 = 0x7FFFFFFF;
          }

          else
          {
            v57 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v55) : v55 + *(a6[22] + 4 * v84) * a7;
          }

          if (v57 == v54)
          {
            v87 = result;
            v58 = a4[4];
            if (v58 < v12)
            {
              v59 = *(a2 + 24) + 8 * *(a2 + 32) * v56;
              if (v53 >= 0)
              {
                v60 = (a4 + 10);
              }

              else
              {
                v60 = (a4 + 6);
              }

              if (v53 >= 0)
              {
                v61 = (a4 + 12);
              }

              else
              {
                v61 = (a4 + 8);
              }

              v62 = *v60;
              v63 = *v61;
              do
              {
                if (v58 < 0)
                {
                  v65 = 0x7FFFFFFF;
                }

                else
                {
                  v64 = *(a4 + 7);
                  if (v64)
                  {
                    v65 = *(v64 + 4 * v58);
                  }

                  else
                  {
                    v65 = v58 + *(a6[22] + 4 * a3) * a7;
                  }
                }

                v66 = *(a11 + 4 * v65);
                if (v53 >= 0)
                {
                  v67 = v58;
                }

                else
                {
                  v67 = v52;
                }

                if (v53 >= 0)
                {
                  v68 = v52 - v12;
                }

                else
                {
                  v68 = v58;
                }

                *(v59 + 8 * v66) = *(v62 + 8 * v63 * v67 + 8 * v68) + *(v59 + 8 * v66);
                ++v58;
              }

              while (v12 != v58);
            }

            v69 = *a4;
            if (v86 < v69)
            {
              v70 = a4[18];
              v71 = v69 - v70;
              v72 = v12 + v70 - v69;
              v73 = 4 * v70 - 4 * v69;
              v74 = 8 * v86 - 8 * v12;
              v75 = a8;
              v76 = v12 + a8;
              while (2)
              {
                if (v72 + v75 >= 0 && (*(*(a5 + 32) + (v72 + v75)) & 1) != 0)
                {
                  goto LABEL_119;
                }

                if (v76 >= v12)
                {
                  if (v76 >= v71)
                  {
                    v78 = *(*(a4 + 10) + v73 + 4 * v76);
                    if (v53 < 0)
                    {
                      goto LABEL_110;
                    }

                    goto LABEL_115;
                  }

                  v79 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v75 / a7));
                  v80 = v75 % a7;
                }

                else
                {
                  if (v76 < 0)
                  {
                    v78 = 0x7FFFFFFF;
                    if ((v53 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_115;
                    }

LABEL_110:
                    v81 = (*(a4 + 3) + 8 * *(a4 + 4) * v52 + 8 * v76);
                    goto LABEL_118;
                  }

                  v77 = *(a4 + 7);
                  if (v77)
                  {
                    v78 = *(v77 + 4 * v76);
                    if (v53 < 0)
                    {
                      goto LABEL_110;
                    }

LABEL_115:
                    if (v76 >= v12)
                    {
                      v81 = (*(a5 + 96) + v51 * *(a5 + 16) + v74);
                    }

                    else
                    {
                      v81 = (*(a4 + 5) + 8 * *(a4 + 6) * v76 + 8 * v53);
                    }

LABEL_118:
                    v82 = *(a11 + 4 * v78);
                    v83 = *(a2 + 24) + 8 * *(a2 + 32) * v56;
                    *(v83 + 8 * v82) = *v81 + *(v83 + 8 * v82);
LABEL_119:
                    ++v76;
                    ++v75;
                    v74 += 8;
                    if (v76 >= v69)
                    {
                      goto LABEL_120;
                    }

                    continue;
                  }

                  v79 = *(a6[22] + 4 * a3);
                  v80 = v12 + v75;
                }

                break;
              }

              v78 = v80 + v79 * a7;
              if (v53 < 0)
              {
                goto LABEL_110;
              }

              goto LABEL_115;
            }

LABEL_120:
            *(v49 + v47) = 1;
            result = (v87 + 1);
            v50 = v85;
          }
        }
      }

      ++v52;
      ++v47;
      v51 += 8;
    }

    while (v52 < v48);
    if (result > 0)
    {
      atomic_fetch_add_explicit((a5 + 24), -result, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_2367DDE0C(uint64_t result, int a2, int *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = a3[3];
  v93 = a3[4];
  if (v93 < v10)
  {
    v11 = v10 + a7;
    v12 = *a3;
    v13 = *(a3 + 7);
    v92 = *(a3 + 8);
    v14 = *(result + 32);
    v91 = *(result + 24);
    v15 = a3[4];
    v16 = 8 * v93 - 8 * v10;
    while (1)
    {
      v17 = v93;
      v18 = *(a10 + 4 * *(v92 + 4 * v15));
      v19 = v15 - v10;
      v20 = v15 >= v10 ? a3 + 10 : a3 + 6;
      v21 = v15 >= v10 ? a3 + 12 : a3 + 8;
      v22 = *v20;
      v23 = *v21;
      do
      {
        if (v19 >= 0)
        {
          v25 = v17;
        }

        else
        {
          v25 = v15;
        }

        if (v19 >= 0)
        {
          v26 = v15 - v10;
        }

        else
        {
          v26 = v17;
        }

        v24 = *(a9 + 4 * *(v13 + 4 * v17));
        *(v91 + 8 * v14 * v18 + 8 * v24) = *(v22 + 8 * v23 * v25 + 8 * v26) + *(v91 + 8 * v14 * v18 + 8 * v24);
        ++v17;
      }

      while (v10 != v17);
      if (v11 < v12)
      {
        break;
      }

LABEL_39:
      ++v15;
      v16 += 8;
      if (v15 == v10)
      {
        goto LABEL_40;
      }
    }

    v27 = a3[18];
    v28 = v12 - v27;
    v29 = v10 - v12 + v27;
    v30 = -4 * v12 + 4 * v27;
    v31 = 8 * v11 - 8 * v10;
    v32 = a7;
    v33 = v10 + a7;
    while (1)
    {
      if (v29 + v32 >= 0 && (*(a4[4] + (v29 + v32)) & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v33 >= v10)
      {
        break;
      }

      if ((v33 & 0x8000000000000000) == 0)
      {
        v34 = *(a3 + 7);
        if (!v34)
        {
          v35 = *(a5[22] + 4 * a2);
          v36 = v10 + v32;
          goto LABEL_27;
        }

LABEL_30:
        v37 = *(v34 + 4 * v33);
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v37 = 0x7FFFFFFF;
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_31:
        if (v33 >= v10)
        {
          v38 = (a4[12] + v16 * a4[2] + v31);
        }

        else
        {
          v38 = (*(a3 + 5) + 8 * *(a3 + 6) * v33 + 8 * v19);
        }

        goto LABEL_34;
      }

LABEL_28:
      v38 = (*(a3 + 3) + 8 * *(a3 + 4) * v15 + 8 * v33);
LABEL_34:
      v39 = *(a9 + 4 * v37);
      v40 = *v38;
      v41 = *(result + 24) + 8 * *(result + 32) * v18;
      *(v41 + 8 * v39) = v40 + *(v41 + 8 * v39);
LABEL_35:
      ++v33;
      ++v32;
      v31 += 8;
      if (v33 >= v12)
      {
        goto LABEL_39;
      }
    }

    if (v33 < v28)
    {
      v35 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v32 / a6));
      v36 = v32 % a6;
LABEL_27:
      v37 = v36 + v35 * a6;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v34 = *(a3 + 10) + v30;
    goto LABEL_30;
  }

LABEL_40:
  v42 = v10 + a8;
  v43 = a3[1];
  if (v10 + a8 < v43)
  {
    v44 = a3[19];
    v45 = v44 - v43;
    v46 = v42;
    v47 = v43 - v44;
    for (i = 8 * v42 - 8 * v10; ; i += 8)
    {
      if (v45 + v46 < 0 || (*(a4[6] + (v45 + v46)) & 1) == 0)
      {
        v49 = v46 - v10;
        if (v46 >= v10)
        {
          v50 = v46 >= v47 ? *(*(a3 + 11) + 4 * (v46 - v47)) : (v46 - v10) % a6 + *(a5[26] + 4 * *(a5[25] + 8 * a2) + 4 * ((v46 - v10) / a6)) * a6;
        }

        else if (v46 < 0)
        {
          v50 = 0x7FFFFFFF;
        }

        else
        {
          v50 = *(a3 + 7) ? *(*(a3 + 8) + 4 * v46) : v46 + *(a5[22] + 4 * a2) * a6;
        }

        v51 = *(a10 + 4 * v50);
        if (v51 < *(result + 12))
        {
          if (v93 < v10)
          {
            v52 = *(a3 + 7);
            v53 = *(result + 24) + 8 * *(result + 32) * v51;
            v54 = 10;
            if (v49 < 0)
            {
              v54 = 6;
            }

            v55 = 12;
            if (v49 < 0)
            {
              v55 = 8;
            }

            v56 = *&a3[v54];
            v57 = *&a3[v55];
            v58 = v93;
            do
            {
              if (v49 >= 0)
              {
                v60 = v58;
              }

              else
              {
                v60 = v46;
              }

              if (v49 >= 0)
              {
                v61 = v46 - v10;
              }

              else
              {
                v61 = v58;
              }

              v59 = *(a9 + 4 * *(v52 + 4 * v58));
              *(v53 + 8 * v59) = *(v56 + 8 * v57 * v60 + 8 * v61) + *(v53 + 8 * v59);
              ++v58;
            }

            while (v10 != v58);
          }

          v62 = *a3;
          v63 = a3[18];
          v64 = v62 - v63;
          if (v10 + a7 < v62 - v63)
          {
            v65 = a5[24] + 4 * *(a5[23] + 8 * a2);
            v66 = *(result + 24) + 8 * *(result + 32) * v51;
            v67 = a4[12] - 8 * v10 + a4[2] * i;
            v68 = a7;
            v69 = v10 + a7;
            do
            {
              v70 = *(a9 + 4 * (v68 % a6 + *(v65 + 4 * (v68 / a6)) * a6));
              *(v66 + 8 * v70) = *(v67 + 8 * v69++) + *(v66 + 8 * v70);
              ++v68;
            }

            while (v69 < v64);
          }

          if (v63 >= 1)
          {
            break;
          }
        }
      }

LABEL_91:
      if (++v46 >= v43)
      {
        return result;
      }
    }

    v71 = 0;
    v72 = v64;
    v73 = a4[4];
    v74 = v62 - v10 - v63;
    v75 = 4 * v62 - 4 * v63;
    v76 = 8 * (v62 - v10 - v63);
    v77 = v64;
    v78 = v62 - v63;
    while ((*(v73 + v71) & 1) != 0)
    {
LABEL_90:
      ++v77;
      ++v71;
      ++v74;
      v76 += 8;
      if (v72 + v71 >= v62)
      {
        goto LABEL_91;
      }
    }

    v79 = v72 + v71;
    if (v72 + v71 >= v10)
    {
      if (v79 >= v72)
      {
        v81 = *(a3 + 10);
LABEL_80:
        v84 = *(v81 + 4 * v71);
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_88:
        v85 = (*(a3 + 3) + 8 * *(a3 + 4) * v46 + 8 * v77);
LABEL_89:
        v86 = *(a9 + 4 * v84);
        v87 = *v85;
        v88 = *(result + 24) + 8 * *(result + 32) * v51;
        *(v88 + 8 * v86) = v87 + *(v88 + 8 * v86);
        goto LABEL_90;
      }

      v82 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v74 / a6));
      v83 = v74 % a6;
    }

    else
    {
      if (v79 < 0)
      {
        v84 = 0x7FFFFFFF;
        if (v49 < 0)
        {
          goto LABEL_88;
        }

        goto LABEL_81;
      }

      v80 = *(a3 + 7);
      if (v80)
      {
        v81 = v80 + v75;
        goto LABEL_80;
      }

      v82 = *(a5[22] + 4 * a2);
      v83 = v78 + v71;
    }

    v84 = v83 + v82 * a6;
    if (v49 < 0)
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v79 >= v10)
    {
      v85 = (a4[12] + i * a4[2] + v76);
    }

    else
    {
      v85 = (*(a3 + 5) + 8 * *(a3 + 6) * v79 + 8 * v49);
    }

    goto LABEL_89;
  }

  return result;
}

void sub_2367DE38C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7, void *a8, uint64_t *a9, void **a10, uint64_t *a11, uint64_t *a12, double **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v517 = *(a4 + 56);
  v569 = 0;
  v568 = 0u;
  v20 = (4 * v517 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = a17 + v20;
  v22 = a1;
  v567 = 0u;
  v566 = 0u;
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
  v27 = *(*(a6 + 112) + 8 * a1) + 8;
  *(&v566 + 1) = v27;
  v570 = v24;
  v571 = v25;
  v540 = a1 + 1;
  v28 = v23 + (*(*(a4 + 176) + 4 * v540) - *(*(a4 + 176) + 4 * a1)) * a5;
  v564 = v23;
  v565 = v28;
  v29 = v28;
  if (a3 == 83)
  {
    v29 = *(*(a6 + 64) + 4 * v22);
  }

  v510 = (4 * v517 + 7) & 0xFFFFFFFFFFFFFFF8;
  v556 = v26 + v20;
  LODWORD(v566) = v29;
  v525 = 8 * v22;
  v30 = (*(*(a4 + 200) + 8 * v540) - *(*(a4 + 200) + 8 * v22)) * a5;
  v562 = v28 + v24 + (*(*(a4 + 184) + 8 * v540) - *(*(a4 + 184) + 8 * v22)) * a5;
  v563 = v28 + v25 + v30;
  v31 = v563;
  v553 = v562;
  *&v567 = v562;
  *(&v567 + 1) = v27 + 8 * v562 * v28;
  v32 = v30 + v25;
  *&v568 = v32;
  if (a3 == 81)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = v27 + 8 * v562 * v28 + 8 * v32 * v28;
    v33 = v34 + 4 * v28 + 4 * v24;
    *(&v568 + 1) = v34;
    v569 = v33;
  }

  if (v24 <= 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34 + 4 * v28;
  }

  v535 = v33;
  v521 = v28;
  v36 = v33 + 4 * v28;
  if (v25 <= 0)
  {
    v36 = 0;
  }

  v527 = v35;
  v572 = v35;
  v573 = v36;
  v529 = v36;
  v532 = v29;
  v37 = *(a4 + 240);
  v38 = *(v37 + 8 * v22);
  v557 = a4;
  v558 = a5;
  v543 = v21 + v20;
  v552 = v22;
  v544 = v28;
  v549 = v34;
  v505 = v25;
  if (v38 >= *(v37 + 8 * v540))
  {
    v526 = 0;
  }

  else
  {
    v526 = 0;
    v539 = v562 - v24;
    v39 = v563 - v25;
    do
    {
      v40 = *(*(a4 + 248) + 4 * v38);
      if ((*(*(a4 + 256) + v38) & 2) != 0)
      {
        v41 = *a7 + 32 * v40;
        v42 = *v41;
        v43 = *(v41 + 8);
        if (v43 != *v41)
        {
          if ((v526 & 1) == 0)
          {
            sub_23672A9A0(a1, &v562, a4, a5, v26);
            v28 = v544;
            v34 = v549;
            v22 = v552;
            v26 = v543;
            a5 = v558;
            a4 = v557;
            v44 = *a7 + 32 * v40;
            v42 = *v44;
            v43 = *(v44 + 8);
          }

          while (v42 != v43)
          {
            v561 = *v42;
            v45 = *(v26 + 4 * v561);
            if (v45 < v553)
            {
              if (v45 >= v28)
              {
                if (v45 >= v539)
                {
                  v46 = *(v527 + 4 * (v45 - v539));
                }

                else
                {
                  v46 = (v45 - v28) % a5 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v22) + 4 * ((v45 - v28) / a5)) * a5;
                }
              }

              else if ((v45 & 0x80000000) != 0)
              {
                v46 = 0x7FFFFFFF;
              }

              else if (v34)
              {
                v46 = *(v34 + 4 * v45);
              }

              else
              {
                v46 = v45 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v46 < 0)
              {
                v46 = -v46;
              }

              if (v561 == v46)
              {
                sub_236725158((*a7 + 32 * v22), &v561);
                v28 = v544;
                v34 = v549;
                v22 = v552;
                v26 = v543;
                a5 = v558;
                a4 = v557;
              }
            }

            ++v42;
          }

          LOBYTE(v526) = 1;
        }
      }

      if (*(*(a4 + 256) + v38))
      {
        v47 = *a8 + 32 * v40;
        v48 = *v47;
        v49 = *(v47 + 8);
        if (v49 != *v47)
        {
          if ((v526 & 0x100000000) == 0)
          {
            sub_23672AA5C(a1, &v562, a4, a5, v556);
            v28 = v544;
            v34 = v549;
            v22 = v552;
            v26 = v543;
            a5 = v558;
            a4 = v557;
            v50 = *a8 + 32 * v40;
            v48 = *v50;
            v49 = *(v50 + 8);
          }

          while (v48 != v49)
          {
            v561 = *v48;
            v51 = *(v556 + 4 * v561);
            if (v51 < v31)
            {
              if (v51 >= v28)
              {
                if (v51 >= v39)
                {
                  v52 = *(v529 + 4 * (v51 - v39));
                }

                else
                {
                  v52 = (v51 - v28) % a5 + *(*(a4 + 208) + 4 * *(*(a4 + 200) + 8 * v22) + 4 * ((v51 - v28) / a5)) * a5;
                }
              }

              else if ((v51 & 0x80000000) != 0)
              {
                v52 = 0x7FFFFFFF;
              }

              else if (v34)
              {
                v52 = v535[v51];
              }

              else
              {
                v52 = v51 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v52 < 0)
              {
                v52 = -v52;
              }

              if (v561 == v52)
              {
                sub_236725158((*a8 + 32 * v22), &v561);
                v28 = v544;
                v34 = v549;
                v22 = v552;
                v26 = v543;
                a5 = v558;
                a4 = v557;
              }
            }

            ++v48;
          }

          BYTE4(v526) = 1;
        }
      }

      ++v38;
    }

    while (v38 < *(*(a4 + 240) + 8 * v540));
  }

  v53 = v532;
  if (!v532)
  {
    return;
  }

  v54 = (*a7 + 32 * v22);
  v524 = (*a8 + 32 * v22);
  if (v54[1] == *v54 && v524[1] == *v524)
  {
    return;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v55 = sub_23672AB6C(*v54, v54[1]);
  v504 = v54;
  if (v55 != v54[1])
  {
    v56 = v54[1];
    v54[1] = v55;
  }

  v57 = *v524;
  v58 = v524[1];
  std::__sort<std::__less<int,int> &,int *>();
  v59 = sub_23672AB6C(*v524, v524[1]);
  v61 = v524[1];
  v62 = v557;
  v63 = v549;
  if (v59 != v61)
  {
    v60 = v524[1];
    v61 = v59;
    v524[1] = v59;
  }

  if (v549)
  {
    if (v532 >= 1)
    {
      v64 = 0;
      v65 = v535;
      do
      {
        v66 = *v63++;
        *(a17 + 4 * v66) = v64;
        v67 = *v65++;
        *(v21 + 4 * v67) = v64--;
      }

      while (-v532 != v64);
    }
  }

  else if (v532 >= 1)
  {
    v68 = 0;
    v69 = 0;
    v70 = *(v557 + 176);
    do
    {
      *(a17 + 4 * (v69 + *(v70 + 4 * v552) * v558)) = v68;
      *(v21 + 4 * (v69 + *(v70 + 4 * v552) * v558)) = v68;
      ++v69;
      --v68;
    }

    while (v532 != v69);
  }

  v71 = *v54;
  v503 = v54[1] - *v54;
  if (v503)
  {
    v72 = 0;
    v73 = v503 >> 2;
    if ((v503 >> 2) <= 1)
    {
      v73 = 1;
    }

    do
    {
      *(a17 + 4 * v71[v72]) = v72;
      ++v72;
    }

    while (v73 != v72);
  }

  v74 = *v524;
  v75 = v61 - *v524;
  if (v61 != *v524)
  {
    v76 = 0;
    v77 = v75 >> 2;
    if ((v75 >> 2) <= 1)
    {
      v77 = 1;
    }

    do
    {
      *(v21 + 4 * v74[v76]) = v76;
      ++v76;
    }

    while (v77 != v76);
  }

  v560 = (v556 + v510);
  v78 = v75 >> 2;
  v79 = a9;
  v501 = v75;
  v80 = (v532 * (v503 >> 2));
  v81 = 8 * v80;
  if (a9[1] < v80)
  {
    if (*a9)
    {
      (*(v557 + 32))(*a9, v60);
      v62 = v557;
    }

    v82 = (*(v62 + 24))(8 * v80, v60);
    v62 = v557;
    v79 = a9;
    *a9 = v82;
    a9[1] = v80;
  }

  v83 = &v560[v517];
  v84 = v532 * v78;
  v85 = a10;
  v542 = v83;
  if (a10[1] >= v84)
  {
    v86 = 8 * v84;
  }

  else
  {
    if (*a10)
    {
      (*(v62 + 32))();
      v62 = v557;
    }

    v86 = 8 * v84;
    v85 = a10;
    *a10 = (*(v62 + 24))(8 * v84);
    a10[1] = v84;
    v79 = a9;
    v83 = &v560[v517];
  }

  v528 = &v83[v517];
  v87 = v79;
  bzero(*v79, v81);
  bzero(*v85, v86);
  v88 = *v504;
  v502 = v504[1];
  v89 = v502 - *v504;
  v90 = *v524;
  v500 = v524[1];
  v91 = v500 - *v524;
  v513 = *v87;
  v518 = *v85;
  v92 = *(a6 + 96);
  v93 = *(a2 + 28);
  v94 = (v93 * v93);
  if (v92)
  {
    v95 = *(a6 + 104);
    v96 = v557;
    v97 = v549;
    if (v532 >= 1 && v89 >= 1)
    {
      v98 = 0;
      v545 = *(v557 + 160);
      v530 = *(a2 + 8);
      v99 = 8 * v94;
      do
      {
        if (v535)
        {
          v100 = v535[v98];
        }

        else
        {
          v100 = v98 + *(*(v96 + 176) + 4 * v552) * v93;
        }

        v101 = (v530 + 8 * *(v545 + 4 * (v100 / v93)));
        v102 = *v101;
        v103 = v101[1];
        if (*v101 < v103)
        {
          v104 = *(a2 + 16);
          v105 = v99 * v102 + 8 * v100 % v93 * v93;
          do
          {
            v106 = *(v104 + 4 * v102);
            if ((v106 & 0x80000000) == 0 && v106 < *a2 && v93 != 0)
            {
              v108 = *(*(v557 + 136) + 4 * v106) * v93;
              v109 = (v92 + 8 * v108);
              v110 = (a17 + 4 * v108);
              v111 = v93;
              v112 = v105;
              do
              {
                v114 = *v110++;
                v113 = v114;
                if (v114 < v89 && v108 == v88[v113])
                {
                  v513[v98 * v89 + v113] = *v109 * *(*(a2 + 32) + v112) * *(v95 + 8 * v100);
                }

                v112 += 8;
                ++v109;
                ++v108;
                --v111;
              }

              while (v111);
            }

            ++v102;
            v105 += v99;
          }

          while (v102 != v103);
        }

        ++v98;
        v96 = v557;
        v53 = v532;
        v97 = v549;
      }

      while (v98 != v532);
    }

    if (v53 >= 1 && v91 >= 1)
    {
      v115 = 0;
      v546 = *(v96 + 312);
      v536 = v53;
      do
      {
        if (v97)
        {
          v116 = v97[v115];
        }

        else
        {
          v116 = v115 + *(*(v96 + 176) + 4 * v552) * v93;
        }

        v117 = (v546 + 8 * (v116 / v93));
        v118 = *v117;
        v119 = v117[1];
        if (*v117 < v119)
        {
          v120 = *(v557 + 320);
          do
          {
            v121 = *(v120 + 4 * v118) * v93;
            v122 = (v95 + 8 * v121);
            v123 = (a17 + v510 + 4 * v121);
            v124 = v93;
            v125 = 8 * (v116 % v93);
            do
            {
              v127 = *v123++;
              v126 = v127;
              if (v127 < v91 && v121 == v90[v126])
              {
                v518[v115 * v91 + v126] = *(v92 + 8 * v116) * *(*(a2 + 32) + 8 * *(*(v557 + 328) + 8 * v118) * v94 + v125) * *v122;
              }

              v125 += 8 * v93;
              ++v122;
              ++v121;
              --v124;
            }

            while (v124);
            ++v118;
          }

          while (v118 != v119);
        }

        ++v115;
        v96 = v557;
        v53 = v532;
        v97 = v549;
      }

      while (v115 != v536);
    }
  }

  else
  {
    v96 = v557;
    if (v89 >= 1 && v532 >= 1)
    {
      v128 = 0;
      v129 = *(v557 + 160);
      v130 = *(a2 + 8);
      v131 = 8 * v94;
      do
      {
        if (v535)
        {
          v132 = v535[v128];
        }

        else
        {
          v132 = v128 + *(*(v557 + 176) + 4 * v552) * v93;
        }

        v133 = (v130 + 8 * *(v129 + 4 * (v132 / v93)));
        v134 = *v133;
        v135 = v133[1];
        if (*v133 < v135)
        {
          v136 = *(a2 + 16);
          v137 = v131 * v134 + 8 * v132 % v93 * v93;
          do
          {
            v138 = *(v136 + 4 * v134);
            if ((v138 & 0x80000000) == 0 && v138 < *a2 && v93 != 0)
            {
              v140 = *(*(v557 + 136) + 4 * v138) * v93;
              v141 = (a17 + 4 * v140);
              v142 = v93;
              v143 = v137;
              do
              {
                v145 = *v141++;
                v144 = v145;
                if (v145 < v89 && v140 == v88[v144])
                {
                  v513[v128 * v89 + v144] = *(*(a2 + 32) + v143);
                }

                v143 += 8;
                ++v140;
                --v142;
              }

              while (v142);
            }

            ++v134;
            v137 += v131;
          }

          while (v134 != v135);
        }

        ++v128;
      }

      while (v128 != v532);
    }

    v53 = v532;
    if (v91 >= 1)
    {
      if (v532 >= 1)
      {
        v146 = 0;
        v514 = *(v557 + 312);
        do
        {
          if (v549)
          {
            v147 = v549[v146];
          }

          else
          {
            v147 = v146 + *(*(v557 + 176) + 4 * v552) * v93;
          }

          v148 = (v514 + 8 * (v147 / v93));
          v149 = *v148;
          v150 = v148[1];
          if (*v148 < v150)
          {
            v151 = *(v557 + 320);
            v152 = 8 * (v147 % v93);
            do
            {
              v153 = *(v151 + 4 * v149) * v93;
              v154 = (a17 + v510 + 4 * v153);
              v155 = v93;
              v156 = v152;
              do
              {
                v158 = *v154++;
                v157 = v158;
                if (v158 < v91 && v153 == v90[v157])
                {
                  v518[v146 * v91 + v157] = *(*(a2 + 32) + 8 * *(*(v557 + 328) + 8 * v149) * v94 + v156);
                }

                v156 += 8 * v93;
                ++v153;
                --v155;
              }

              while (v155);
              ++v149;
            }

            while (v149 != v150);
          }

          ++v146;
        }

        while (v146 != v532);
      }

      if (v505 >= 1 && v532 < v31)
      {
        v159 = v532;
        v160 = v31 - v505;
        v161 = v31;
        do
        {
          if (v159 >= v521)
          {
            if (v159 >= v160)
            {
              v162 = *(v529 + 4 * (v159 - v160));
            }

            else
            {
              v162 = (v159 - v544) % v93 + *(*(v557 + 208) + 4 * *(*(v557 + 200) + 8 * v552) + 4 * ((v159 - v544) / v93)) * v93;
            }
          }

          else if (v159 < 0)
          {
            v162 = 0x7FFFFFFF;
          }

          else if (v549)
          {
            v162 = v535[v159];
          }

          else
          {
            v162 = v159 + *(*(v557 + 176) + 4 * v552) * v93;
          }

          if (v162 >= 0)
          {
            v163 = v162;
          }

          else
          {
            v163 = -v162;
          }

          v164 = *(v21 + 4 * v163);
          if (v164 < v91 && v90[v164] == v163 && (v159 < v521 || v163 < *(*(v557 + 176) + 4 * v552) * v93))
          {
            v165 = (*(a2 + 8) + 8 * *(*(v557 + 160) + 4 * (v163 / v93)));
            v166 = *v165;
            v167 = v165[1];
            if (*v165 < v167)
            {
              v168 = *(a2 + 16);
              v169 = &v518[v164];
              v170 = v163 % v93 * v93;
              do
              {
                v171 = *(v168 + 4 * v166);
                if ((v171 & 0x80000000) == 0 && v171 < *a2 && v93 != 0)
                {
                  v173 = 0;
                  v174 = *(*(v557 + 136) + 4 * v171) * v93;
                  v175 = (a17 + 4 * v174);
                  v176 = v93;
                  do
                  {
                    v178 = *v175++;
                    v177 = v178;
                    v179 = -v178;
                    v180 = v178 > 0 || v532 <= v179;
                    if (!v180)
                    {
                      v181 = v549 ? v549[v179] : *(*(v557 + 176) + 4 * v552) * v93 - v177;
                      if (v174 == v181)
                      {
                        v169[v179 * v91] = *(*(a2 + 32) + 8 * v166 * v94 + 8 * v173 + 8 * v170);
                      }
                    }

                    ++v173;
                    ++v174;
                    --v176;
                  }

                  while (v176);
                }

                ++v166;
              }

              while (v166 != v167);
            }
          }

          ++v159;
        }

        while (v159 != v161);
      }
    }
  }

  if (v502 == v88)
  {
    v187 = 0;
    v313 = a14;
    v308 = v528;
    v314 = v500;
  }

  else
  {
    sub_23672AB18(a14);
    v182 = v557;
    v183 = *(v557 + 240);
    v184 = *(v183 + 8 * v552);
    v185 = *(v183 + 8 * v540);
    v186 = v528;
    v187 = 0;
    if (v184 < v185)
    {
      v188 = *(v557 + 256);
      v189 = *a14;
      v190 = v558;
      do
      {
        if ((*(v188 + v184) & 2) != 0)
        {
          v191 = *(*(v557 + 248) + 4 * v184);
          v528[v187++] = v191;
          *(v189 + 4 * v191) = *(a14 + 16);
        }

        ++v184;
      }

      while (v185 != v184);
      while (v187 >= 1)
      {
        v192 = v187 - 1;
        v193 = v186[v192];
        v550 = v192;
        if (a3 == 83)
        {
          v194 = *(*(a6 + 72) + 4 * v193);
          LODWORD(v195) = *(*(a6 + 80) + 4 * v193);
          v196 = *(*(a6 + 88) + 4 * v193);
        }

        else
        {
          v194 = 0;
          LODWORD(v195) = 0;
          v196 = 0;
        }

        v197 = *(v182 + 176);
        v198 = v193 + 1;
        v199 = v194 + (*(v197 + 4 * (v193 + 1)) - *(v197 + 4 * v193)) * v190;
        v554 = v199;
        if (a3 == 83)
        {
          v554 = *(*(a6 + 64) + 4 * v193);
        }

        v200 = *(a6 + 112);
        v201 = *(v182 + 184);
        v202 = *(v201 + 8 * v198);
        v203 = *(v201 + 8 * v193);
        v204 = *(v182 + 200);
        v205 = *(v204 + 8 * v198);
        v206 = *(v204 + 8 * v193);
        v531 = *(v200 + 8 * v193) + 8;
        v207 = (v197 + 4 * v552);
        v547 = v193;
        v519 = v196 + (v205 - v206) * v190;
        v522 = v531 + 8 * (v199 + v195 + (v202 - v203) * v190) * v199;
        v511 = v199 + v195 + (v202 - v203) * v190;
        v537 = v196;
        if (a3 == 81)
        {
          v208 = 0;
          v508 = 0;
          if (v195 <= 0)
          {
            v209 = 0;
          }

          else
          {
            v209 = v199;
          }

          v210 = (4 * v209);
          if (v196 <= 0)
          {
            v211 = 0;
          }

          else
          {
            v211 = v199;
          }

          v212 = (4 * v211);
        }

        else
        {
          v208 = v531 + 8 * (v199 + v195 + (v202 - v203) * v190) * v199 + 8 * (v196 + (v205 - v206) * v190) * v199;
          if (v195 <= 0)
          {
            v210 = 0;
          }

          else
          {
            v210 = (v208 + 4 * v199);
          }

          v508 = v208 + 4 * v199 + 4 * v195;
          v212 = (v508 + 4 * v199);
          if (v196 <= 0)
          {
            v212 = 0;
          }

          if (a3 == 83)
          {
            v213 = *(*(a6 + 80) + 4 * v552);
            v214 = *(*(a6 + 88) + 4 * v552);
            v215 = v558;
            v216 = *(*(a6 + 72) + 4 * v552) + (*(v197 + 4 * v540) - *v207) * v558;
            v217 = *(*(a6 + 64) + 4 * v552);
            goto LABEL_232;
          }
        }

        v214 = 0;
        v213 = 0;
        v215 = v558;
        v216 = (*(v197 + 4 * v540) - *v207) * v558;
        v217 = v216;
LABEL_232:
        v218 = *v504;
        v219 = (v504[1] - *v504) >> 2;
        v515 = *a9;
        v220 = *(v200 + 8 * v552) + 8 * (v213 + v216 + (*(v201 + 8 * v540) - *(v201 + v525)) * v215) * v216 + 8 * (v214 + (*(v204 + 8 * v540) - *(v204 + v525)) * v215) * v216 + 4 * v216 + 4 * v213;
        v221 = v220 + 8;
        if (a3 == 81)
        {
          v222 = 0;
        }

        else
        {
          v222 = v220 + 8;
        }

        v223 = v554;
        if (v554 >= v199)
        {
          v224 = 0;
          v234 = v554;
        }

        else
        {
          v224 = 0;
          v225 = v554 - v199;
          v226 = (v208 + 4 * v554);
          v227 = v554;
          do
          {
            v229 = *v226++;
            v228 = v229;
            if (v229 >= 0)
            {
              v230 = v228;
            }

            else
            {
              v230 = -v228;
            }

            v231 = *(a17 + 4 * v230);
            if ((v231 & 0x80000000) == 0 && v231 < v219 && v218[v231] == v230)
            {
              v232 = &v560[v224];
              *v232 = v227;
              v232[1] = v231;
              ++v224;
            }

            ++v227;
            v233 = __CFADD__(v225++, 1);
          }

          while (!v233);
          v234 = v199;
        }

        if (v202 > v203)
        {
          v235 = *(v182 + 192);
          do
          {
            if (v558 >= 1)
            {
              v236 = *(v235 + 4 * v203) * v558;
              v237 = v236 + v558;
              do
              {
                v238 = *(a17 + 4 * v236);
                if ((v238 & 0x80000000) == 0 && v238 < v219 && v236 == v218[v238])
                {
                  v239 = &v560[v224++];
                  *v239 = v234;
                  v239[1] = v238;
                }

                ++v236;
                ++v234;
              }

              while (v236 < v237);
            }

            ++v203;
          }

          while (v203 != v202);
        }

        if (v195 < 1)
        {
          v240 = &v560[v517];
          v186 = v528;
        }

        else
        {
          v195 = v195;
          v240 = &v560[v517];
          v186 = v528;
          do
          {
            v241 = *v210++;
            v203 = v241;
            v242 = *(a17 + 4 * v241);
            if ((v242 & 0x80000000) == 0 && v242 < v219)
            {
              if (v218[v242] == v203)
              {
                v203 = &v560[v224];
                *v203 = v234;
                *(v203 + 4) = v242;
                ++v224;
              }

              v240 = &v560[v517];
            }

            ++v234;
            --v195;
          }

          while (v195);
        }

        v190 = v558;
        if (!v224)
        {
          goto LABEL_347;
        }

        if (v554 >= v199)
        {
          v243 = 0;
          v252 = v554;
        }

        else
        {
          v243 = 0;
          v244 = v554 - v199;
          v245 = (v508 + 4 * v554);
          do
          {
            v247 = *v245++;
            v246 = v247;
            if (v247 >= 0)
            {
              v248 = v246;
            }

            else
            {
              v248 = -v246;
            }

            v203 = *(v21 + 4 * v248);
            v249 = -v203;
            if (v203 <= 0 && v217 > v249)
            {
              v203 = a3 == 81 ? (*v207 * v558 - v203) : *(v221 + 4 * v249);
              if (v203 == v248)
              {
                v251 = &v240[v243];
                v203 = (v243 + 1);
                *v251 = v223;
                v251[1] = v249;
                ++v243;
              }
            }

            ++v223;
            v233 = __CFADD__(v244++, 1);
          }

          while (!v233);
          v252 = v199;
        }

        if (v205 > v206)
        {
          v253 = *(v182 + 208);
          do
          {
            if (v558 >= 1)
            {
              v254 = *(v253 + 4 * v206) * v558;
              v255 = v254 + v558;
              do
              {
                v203 = *(v21 + 4 * v254);
                v256 = -v203;
                if (v203 <= 0 && v217 > v256)
                {
                  v203 = a3 == 81 ? (*v207 * v558 - v203) : *(v221 + 4 * v256);
                  if (v254 == v203)
                  {
                    v203 = &v240[v243];
                    *v203 = v252;
                    *(v203 + 4) = v256;
                    ++v243;
                  }
                }

                ++v254;
                ++v252;
              }

              while (v254 < v255);
            }

            ++v206;
          }

          while (v206 != v205);
        }

        if (v537 >= 1)
        {
          v258 = v537;
          v259 = v554;
          do
          {
            v261 = *v212++;
            v260 = v261;
            v262 = *(v21 + 4 * v261);
            v263 = -v262;
            v264 = v262 > 0 || v217 <= v263;
            if (!v264 && *(v222 + 4 * v263) == v260)
            {
              v265 = &v240[v243];
              *v265 = v252;
              v265[1] = v263;
              ++v243;
            }

            ++v252;
            --v258;
          }

          while (v258);
          if (!v243)
          {
            goto LABEL_347;
          }

LABEL_314:
          v266 = v224 * v259;
          v267 = a12;
          if (a11[1] < (v224 * v259))
          {
            if (*a11)
            {
              (*(v182 + 32))(*a11, a12);
              v182 = v557;
            }

            v268 = (*(v182 + 24))(8 * v266, v267);
            v182 = v557;
            *a11 = v268;
            a11[1] = v266;
            v240 = &v560[v517];
            v267 = a12;
            v259 = v554;
          }

          v269 = v531;
          if (v259 >= 1)
          {
            v270 = 0;
            v271 = *a11;
            do
            {
              if (v224 >= 1)
              {
                v272 = v560;
                v273 = v271;
                v274 = v224;
                do
                {
                  v275 = *v272++;
                  *v273++ = *(v531 + 8 * v270 * v511 + 8 * v275);
                  --v274;
                }

                while (v274);
              }

              ++v270;
              v271 += v224;
            }

            while (v270 != v259);
          }

          v276 = v243 * v259;
          if (v267[1] < (v243 * v259))
          {
            if (*v267)
            {
              (*(v182 + 32))(*v267, v267, v531, v203);
              v182 = v557;
            }

            v277 = (*(v182 + 24))(8 * v276);
            v182 = v557;
            v267 = a12;
            *a12 = v277;
            a12[1] = v276;
            v240 = &v560[v517];
            v259 = v554;
            v269 = v531;
          }

          if (v259 >= 1)
          {
            v278 = 0;
            v279 = 0;
            do
            {
              if (v243 >= 1)
              {
                v280 = (*v267 + v278);
                v281 = v240;
                v282 = v243;
                do
                {
                  v283 = *v281++;
                  v284 = v522 + 8 * v279 * v519 + 8 * (v283 - v199);
                  v285 = (v269 + 8 * v279 + 8 * v283 * v511);
                  if (v283 >= v199)
                  {
                    v285 = v284;
                  }

                  *v280++ = *v285;
                  --v282;
                }

                while (v282);
              }

              ++v279;
              v278 += 8 * v243;
            }

            while (v279 != v554);
          }

          v286 = v243 * v224;
          v287 = *a13;
          if (a13[1] >= v243 * v224)
          {
            v186 = v528;
          }

          else
          {
            v186 = v528;
            if (v287)
            {
              (*(v182 + 32))(v287, v267, v269, v522);
              v182 = v557;
            }

            *a13 = (*(v182 + 24))(8 * v286);
            a13[1] = v286;
          }

          v288 = *a11;
          v496 = *a12;
          cblas_dgemm_NEWLAPACK();
          v182 = v557;
          v190 = v558;
          if (v243 >= 1)
          {
            v289 = 0;
            v290 = *a13;
            do
            {
              if (v224 >= 1)
              {
                v291 = &v515[8 * SHIDWORD(v542[v289]) * (v503 >> 2)];
                v292 = v560;
                v293 = v290;
                v294 = v224;
                do
                {
                  v295 = *v293++;
                  *&v291[8 * *(v292 + 1)] = v295 + *&v291[8 * *(v292 + 1)];
                  ++v292;
                  --v294;
                }

                while (v294);
              }

              ++v289;
              v290 += v224;
            }

            while (v289 != v243);
          }

          goto LABEL_347;
        }

        v259 = v554;
        if (v243)
        {
          goto LABEL_314;
        }

LABEL_347:
        v296 = (*(v182 + 240) + 8 * v547);
        v297 = *v296;
        v298 = v296[1];
        if (v297 >= v298)
        {
          v53 = v532;
          v187 = v550;
        }

        else
        {
          v299 = *(v182 + 256);
          v300 = *a14;
          v53 = v532;
          v187 = v550;
          do
          {
            if ((*(v299 + v297) & 2) != 0)
            {
              v301 = *(*(v182 + 248) + 4 * v297);
              if (*(v300 + 4 * v301) < *(a14 + 16))
              {
                v186[v187++] = v301;
                *(v300 + 4 * v301) = *(a14 + 16);
              }
            }

            ++v297;
          }

          while (v298 != v297);
        }
      }
    }

    v302 = (v504[1] - *v504) >> 2;
    v498 = *a9;
    cblas_dtrsm_NEWLAPACK();
    if (v53 < 1)
    {
      v307 = 0.0;
      v96 = v557;
      v308 = v528;
    }

    else
    {
      v303 = 0;
      v304 = v504[1];
      v305 = v304 - *v504;
      v306 = *a9;
      if (v305 <= 1)
      {
        v305 = 1;
      }

      v307 = 0.0;
      v96 = v557;
      v308 = v528;
      do
      {
        v309 = v305;
        v310 = v306;
        if (v304 != *v504)
        {
          do
          {
            v311 = *v310++;
            v312 = fabs(v311);
            if (v312 >= v307)
            {
              v307 = v312;
            }

            --v309;
          }

          while (v309);
        }

        ++v303;
        v306 += (v503 >> 2);
      }

      while (v303 != v53);
    }

    if (v307 > 1.0 / *(a6 + 16))
    {
      *(a15 + v552) = 1;
      v324 = *(v96 + 168);
      if (v540 >= v324)
      {
        return;
      }

      while (1)
      {
        if ((*(a15 + v540) & 1) == 0)
        {
          v325 = (*(v96 + 240) + 8 * v540);
          v327 = *v325;
          v326 = v325[1];
          v180 = v326 <= v327;
          v328 = v326 - v327;
          if (!v180)
          {
            v329 = (*(v96 + 248) + 4 * v327);
            while (1)
            {
              v330 = *v329++;
              if (*(a15 + v330) == 1)
              {
                break;
              }

              if (!--v328)
              {
                goto LABEL_385;
              }
            }

            *(a15 + v540) = 1;
          }
        }

LABEL_385:
        if (v324 == ++v540)
        {
          return;
        }
      }
    }

    v313 = a14;
    v90 = *v524;
    v314 = v524[1];
  }

  v315 = (v501 >> 2);
  if (v314 == v90)
  {
    goto LABEL_527;
  }

  v316 = v313;
  sub_23672AB18(v313);
  v96 = v557;
  v317 = *(v557 + 240);
  v318 = *(v317 + 8 * v552);
  v516 = v317;
  v319 = *(v317 + 8 * v540);
  if (v318 >= v319)
  {
    v322 = v558;
  }

  else
  {
    v320 = *(v557 + 256);
    v321 = *v316;
    v322 = v558;
    do
    {
      if (*(v320 + v318))
      {
        v323 = *(*(v557 + 248) + 4 * v318);
        v308[v187++] = v323;
        *(v321 + 4 * v323) = *(v316 + 16);
      }

      ++v318;
    }

    while (v319 != v318);
  }

  while (v187 >= 1)
  {
    v331 = v187 - 1;
    v332 = v308[v331];
    if (a3 == 83)
    {
      v333 = *(*(a6 + 72) + 4 * v332);
      LODWORD(v334) = *(*(a6 + 80) + 4 * v332);
      v335 = *(*(a6 + 88) + 4 * v332);
    }

    else
    {
      v333 = 0;
      LODWORD(v334) = 0;
      v335 = 0;
    }

    v336 = *(v96 + 176);
    v337 = v332 + 1;
    v338 = v333 + (*(v336 + 4 * (v332 + 1)) - *(v336 + 4 * v332)) * v322;
    v339 = v338;
    if (a3 == 83)
    {
      v339 = *(*(a6 + 64) + 4 * v332);
    }

    v555 = v339;
    v340 = *(a6 + 112);
    v341 = *(v96 + 184);
    v342 = *(v341 + 8 * v337);
    v343 = *(v341 + 8 * v332);
    v344 = v338 + v334 + (v342 - v343) * v322;
    v345 = v322;
    v346 = *(v96 + 200);
    v347 = *(v346 + 8 * v337);
    v538 = v332;
    v348 = *(v346 + 8 * v332);
    v509 = v344;
    v520 = *(v340 + 8 * v332) + 8;
    v349 = v335 + (v347 - v348) * v345;
    v350 = (v336 + 4 * v552);
    v551 = v331;
    v533 = v520 + 8 * v344 * v338;
    v548 = v349;
    if (a3 == 81)
    {
      v351 = 0;
      v506 = 0;
      if (v334 <= 0)
      {
        v352 = 0;
      }

      else
      {
        v352 = v338;
      }

      v353 = (4 * v352);
      if (v335 <= 0)
      {
        v354 = 0;
      }

      else
      {
        v354 = v338;
      }

      v355 = (4 * v354);
    }

    else
    {
      v351 = v520 + 8 * v344 * v338 + 8 * v349 * v338;
      v356 = v351 + 4 * v338;
      if (v334 <= 0)
      {
        v353 = 0;
      }

      else
      {
        v353 = (v351 + 4 * v338);
      }

      v506 = v356 + 4 * v334;
      if (v335 <= 0)
      {
        v355 = 0;
      }

      else
      {
        v355 = (v356 + 4 * v334 + 4 * v338);
      }

      if (a3 == 83)
      {
        v357 = *(*(a6 + 80) + 4 * v552);
        v358 = *(*(a6 + 88) + 4 * v552);
        v359 = v558;
        v360 = *(*(a6 + 72) + 4 * v552) + (*(v336 + 4 * v540) - *v350) * v558;
        v361 = *(*(a6 + 64) + 4 * v552);
        goto LABEL_410;
      }
    }

    v358 = 0;
    v357 = 0;
    v359 = v558;
    v360 = (*(v336 + 4 * v540) - *v350) * v558;
    v361 = v360;
LABEL_410:
    v362 = 0;
    v363 = *(v340 + 8 * v552);
    v523 = v524[1];
    v364 = *v524;
    v512 = *a10;
    v365 = v363 + 8 * (v357 + v360 + (*(v341 + 8 * v540) - *(v341 + v525)) * v359) * v360 + 8 * (v358 + (*(v346 + 8 * v540) - *(v346 + v525)) * v359) * v360;
    v366 = v365 + 8;
    if (a3 == 81)
    {
      v367 = 0;
    }

    else
    {
      v367 = v365 + 8;
    }

    v368 = v555;
    if (v555 < v338)
    {
      v362 = 0;
      v369 = v555 - v338;
      v370 = (v351 + 4 * v555);
      v371 = v555;
      do
      {
        v373 = *v370++;
        v372 = v373;
        if (v373 >= 0)
        {
          v374 = v372;
        }

        else
        {
          v374 = -v372;
        }

        v375 = *(a17 + 4 * v374);
        v376 = -v375;
        if (v375 <= 0 && v361 > v376)
        {
          v378 = a3 == 81 ? *v350 * v558 - v375 : *(v366 + 4 * v376);
          if (v378 == v374)
          {
            v379 = &v560[v362++];
            *v379 = v371;
            v379[1] = v376;
          }
        }

        ++v371;
        v233 = __CFADD__(v369++, 1);
      }

      while (!v233);
      v368 = v338;
    }

    if (v342 > v343)
    {
      v380 = *(v557 + 192);
      do
      {
        if (v558 >= 1)
        {
          v381 = *(v380 + 4 * v343) * v558;
          v382 = v381 + v558;
          v383 = v381;
          do
          {
            v384 = *(a17 + 4 * v383);
            v385 = -v384;
            if (v384 <= 0 && v361 > v385)
            {
              v387 = a3 == 81 ? *v350 * v558 - v384 : *(v366 + 4 * v385);
              if (v383 == v387)
              {
                v388 = &v560[v362++];
                *v388 = v368;
                v388[1] = v385;
              }
            }

            ++v383;
            ++v368;
          }

          while (v383 < v382);
        }

        ++v343;
      }

      while (v343 != v342);
    }

    if (v334 < 1)
    {
      v96 = v557;
      v322 = v558;
      if (!v362)
      {
        goto LABEL_516;
      }

LABEL_457:
      v395 = (v523 - v364) >> 2;
      v396 = &v560[v517];
      v397 = 0;
      if (v555 >= v338)
      {
        v408 = v555;
        LODWORD(v402) = v335;
        v401 = v533;
        v403 = v548;
      }

      else
      {
        v398 = v555 - v338;
        v399 = (v506 + 4 * v555);
        v400 = v555;
        LODWORD(v402) = v335;
        v401 = v533;
        v403 = v548;
        do
        {
          v405 = *v399++;
          v404 = v405;
          if (v405 < 0)
          {
            v404 = -v404;
          }

          v406 = *(v21 + 4 * v404);
          if ((v406 & 0x80000000) == 0 && v406 < v395)
          {
            v343 = v364[v406];
            if (v343 == v404)
            {
              v407 = &v542[v397++];
              *v407 = v400;
              v407[1] = v406;
            }
          }

          ++v400;
          v233 = __CFADD__(v398++, 1);
        }

        while (!v233);
        v408 = v338;
      }

      if (v347 > v348)
      {
        v409 = *(v96 + 208);
        do
        {
          if (v322 >= 1)
          {
            v410 = *(v409 + 4 * v348) * v322;
            v411 = v410;
            v412 = v410 + v322;
            do
            {
              v343 = *(v21 + 4 * v411);
              if ((v343 & 0x80000000) == 0 && v343 < v395 && v411 == v364[v343])
              {
                v413 = &v542[v397++];
                *v413 = v408;
                v413[1] = v343;
              }

              ++v411;
              ++v408;
            }

            while (v411 < v412);
          }

          ++v348;
        }

        while (v348 != v347);
      }

      if (v402 >= 1)
      {
        v402 = v402;
        do
        {
          v415 = *v355++;
          v414 = v415;
          v416 = *(v21 + 4 * v415);
          if ((v416 & 0x80000000) == 0 && v416 < v395 && v364[v416] == v414)
          {
            v417 = &v542[v397++];
            *v417 = v408;
            v417[1] = v416;
          }

          ++v408;
          --v402;
        }

        while (v402);
      }

      if (v397)
      {
        v418 = v555;
        v419 = v555 * v362;
        if (a11[1] < (v555 * v362))
        {
          v420 = v401;
          if (*a11)
          {
            (*(v96 + 32))(*a11, v343, v96, v542);
            v96 = v557;
          }

          v421 = (*(v96 + 24))(8 * v419);
          v96 = v557;
          *a11 = v421;
          a11[1] = v419;
          v396 = &v560[v517];
          v418 = v555;
          v401 = v420;
          v403 = v548;
        }

        v422 = v418;
        v423 = a12;
        v424 = v520;
        if (v418 >= 1)
        {
          v425 = 0;
          v426 = *a11;
          do
          {
            v427 = v560;
            v428 = v426;
            v429 = v362;
            do
            {
              v430 = *v427++;
              *v428++ = *(v520 + 8 * v425 * v509 + 8 * v430);
              --v429;
            }

            while (v429);
            ++v425;
            v426 += v362;
          }

          while (v425 != v422);
        }

        v431 = v555;
        v432 = v555 * v397;
        if (a12[1] < (v555 * v397))
        {
          if (*a12)
          {
            (*(v96 + 32))(*a12, a12, v96, v396);
            v432 = v555 * v397;
            v96 = v557;
          }

          v433 = v432;
          v434 = (*(v96 + 24))(8 * v432);
          v96 = v557;
          v423 = a12;
          *a12 = v434;
          a12[1] = v433;
          v396 = &v560[v517];
          v431 = v555;
          v424 = v520;
          v401 = v533;
          v403 = v548;
        }

        if (v431 >= 1)
        {
          v435 = 0;
          v436 = 0;
          do
          {
            v437 = (*v423 + v435);
            v438 = v396;
            v439 = v397;
            do
            {
              v440 = *v438++;
              v441 = v401 + 8 * v436 * v403 + 8 * (v440 - v338);
              v442 = (v424 + 8 * v436 + 8 * v440 * v509);
              if (v440 >= v338)
              {
                v442 = v441;
              }

              *v437++ = *v442;
              --v439;
            }

            while (v439);
            ++v436;
            v435 += 8 * v397;
          }

          while (v436 != v422);
        }

        v443 = v397 * v362;
        v444 = a13;
        v445 = *a13;
        if (a13[1] < v443)
        {
          if (v445)
          {
            (*(v96 + 32))(v445, v423, v96, v396);
            v96 = v557;
          }

          v444 = a13;
          *a13 = (*(v96 + 24))(8 * v443);
          a13[1] = v443;
        }

        v446 = *a11;
        v497 = *a12;
        cblas_dgemm_NEWLAPACK();
        v447 = 0;
        v448 = *v444;
        v96 = v557;
        v322 = v558;
        do
        {
          v449 = &v512[8 * SHIDWORD(v542[v447])];
          v450 = v560;
          v451 = v448;
          v452 = v362;
          do
          {
            v453 = *v451++;
            v454 = *(v450 + 1) * v315;
            *&v449[8 * v454] = v453 + *&v449[8 * v454];
            ++v450;
            --v452;
          }

          while (v452);
          ++v447;
          v448 += v362;
        }

        while (v447 != v397);
        v516 = *(v557 + 240);
      }

      goto LABEL_516;
    }

    v334 = v334;
    v96 = v557;
    v322 = v558;
    do
    {
      v390 = *v353++;
      v389 = v390;
      v391 = *(a17 + 4 * v390);
      v392 = -v391;
      v393 = v391 > 0 || v361 <= v392;
      if (!v393 && *(v367 + 4 * v392) == v389)
      {
        v394 = &v560[v362++];
        *v394 = v368;
        v394[1] = v392;
      }

      ++v368;
      --v334;
    }

    while (v334);
    if (v362)
    {
      goto LABEL_457;
    }

LABEL_516:
    v455 = (v516 + 8 * v538);
    v456 = *v455;
    v457 = v455[1];
    if (*v455 >= v457)
    {
      v308 = v528;
      v187 = v551;
    }

    else
    {
      v458 = *(v96 + 256);
      v459 = *a14;
      v308 = v528;
      v187 = v551;
      do
      {
        if (*(v458 + v456))
        {
          v460 = *(*(v96 + 248) + 4 * v456);
          if (*(v459 + 4 * v460) < *(a14 + 16))
          {
            v528[v187++] = v460;
            *(v459 + 4 * v460) = *(a14 + 16);
          }
        }

        ++v456;
      }

      while (v457 != v456);
    }
  }

  if (v566 > 1)
  {
    v461 = (v524[1] - *v524) >> 2;
    v499 = *a10;
    cblas_dtrsm_NEWLAPACK();
    v96 = v557;
  }

LABEL_527:
  v462 = v558;
  if ((v526 & 1) == 0 && v504[1] != *v504)
  {
    sub_23672A9A0(a1, &v562, v96, v558, v543);
    v462 = v558;
    v96 = v557;
  }

  v463 = v566;
  if (v566 >= 1)
  {
    v464 = 0;
    v466 = *v504;
    v465 = v504[1];
    v467 = v465 - *v504;
    v468 = *a9;
    v469 = *(&v566 + 1);
    v470 = v567;
    if (v467 <= 1)
    {
      v467 = 1;
    }

    do
    {
      if (v465 != v466)
      {
        v471 = v467;
        v472 = v466;
        v473 = v468;
        do
        {
          v474 = *v473++;
          v475 = v474;
          v476 = *v472++;
          *(v469 + 8 * v470 * v464 + 8 * *(v543 + 4 * v476)) = v475;
          --v471;
        }

        while (v471);
      }

      ++v464;
      v468 += (v503 >> 2);
    }

    while (v464 != v463);
  }

  if ((v526 & 0x100000000) == 0 && v524[1] != *v524)
  {
    sub_23672AA5C(a1, &v562, v96, v462, v556);
  }

  if (v463 >= 1)
  {
    v477 = 0;
    v478 = 0;
    v480 = *v524;
    v479 = v524[1];
    v481 = v479 - *v524;
    v482 = v565;
    v483 = *(&v567 + 1);
    v484 = v568;
    v485 = *(&v566 + 1);
    v486 = v567;
    if (v481 <= 1)
    {
      v481 = 1;
    }

    do
    {
      if (v479 != v480)
      {
        v487 = (*a10 + v477);
        v488 = v481;
        v489 = v480;
        do
        {
          v490 = *v489++;
          v491 = *(v556 + 4 * v490);
          v180 = v491 < v482;
          v492 = *v487++;
          v493 = v492;
          v494 = v483 + 8 * v484 * v478 + 8 * (v491 - v482);
          v495 = (v485 + 8 * v478 + 8 * v486 * v491);
          if (!v180)
          {
            v495 = v494;
          }

          *v495 = v493;
          --v488;
        }

        while (v488);
      }

      ++v478;
      v477 += 8 * v315;
    }

    while (v478 != v463);
  }
}

uint64_t sub_2367E064C(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int *a8, int *a9, uint64_t a10, int a11, void *a12, uint64_t *a13, double **a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = a5;
  v670 = *MEMORY[0x277D85DE8];
  v615 = *(&off_28499C2F0 + a4 - 81);
  v29 = *(a5 + 56);
  v30 = 4 * v29;
  v616 = 4 * v29 + 7;
  v649 = a23 + (v616 & 0xFFFFFFFFFFFFFFF8);
  v636 = v649 + (v616 & 0xFFFFFFFFFFFFFFF8);
  v618 = (v636 + 8 * v29);
  v619 = v29;
  v31 = &v618[v29];
  v32 = (v31 + (v616 & 0xFFFFFFFFFFFFFFF8) + (v616 & 0xFFFFFFFFFFFFFFF8));
  v33 = v32 + (v616 & 0xFFFFFFFFFFFFFFF8);
  v667 = 0u;
  v668 = 0u;
  v665 = 0u;
  v666 = 0u;
  v663 = 0u;
  v664 = 0u;
  v34 = a1;
  v35 = a1 + 1;
  v36 = *(a5 + 184);
  v37 = *(*(a5 + 176) + 4 * v35) - *(*(a5 + 176) + 4 * a1);
  v38 = v37 * a6;
  HIDWORD(v663) = v37 * a6;
  v39 = 8 * a1;
  *(&v664 + 1) = *(a7[14] + v39) + 8;
  v627 = v35;
  v40 = 8 * v35;
  LODWORD(v36) = *(v36 + 8 * v35) - *(v36 + v39);
  v41 = *(a5 + 168);
  LODWORD(v663) = (v37 + v36) * a6;
  v42 = (*(*(a5 + 200) + v40) - *(*(a5 + 200) + v39)) * a6;
  DWORD1(v663) = v42 + v37 * a6;
  v617 = v41;
  *&v665 = v663;
  *(&v665 + 1) = *(&v664 + 1) + 8 * v663 * (v37 * a6);
  v639 = &v33[8 * v41 + (v616 & 0xFFFFFFFFFFFFFFF8)];
  v624 = &v33[v616 & 0xFFFFFFFFFFFFFFF8];
  v625 = v639 + (v616 & 0xFFFFFFFFFFFFFFF8);
  if (a4 != 82)
  {
    v30 = 0;
  }

  v614 = v30;
  if (a4 == 82)
  {
    v43 = v625 + (v616 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v43 = 0;
  }

  v613 = v43;
  *&v666 = v42;
  v658 = a1;
  v635 = a6;
  if (a4 != 81)
  {
    v44 = *(&v664 + 1) + 8 * v663 * v38 + 8 * v42 * v38;
    *(&v666 + 1) = v44;
    *&v667 = v44 + 4 * v38;
    if (a4 == 83)
    {
      sub_2367DCA50(a1, 1, 83, a5, a6, a7, a10, v669, (v31 + (v616 & 0xFFFFFFFFFFFFFFF8)), v619 & 0x3FFFFFFFFFFFFFFFLL, (v32 + (v616 & 0xFFFFFFFFFFFFFFF8)), v619 & 0x3FFFFFFFFFFFFFFFLL);
      v46 = v669[0];
      v608 = v669[1];
      sub_2367DCA50(a1, 2, 83, a5, v635, a7, a10, v669, v31, v619 & 0x3FFFFFFFFFFFFFFFLL, v32, v619 & 0x3FFFFFFFFFFFFFFFLL);
      v47 = 0;
      v48 = v669[0];
      v607 = v669[1];
      *(a7[10] + 4 * v658) = DWORD2(v669[0]);
      *(a7[11] + 4 * v658) = DWORD2(v46);
      v49 = a7[9];
      *(v49 + 4 * v658) = 0;
      v27 = a5;
      v50 = *(a5 + 240);
      v51 = *(v50 + 8 * v658);
      v52 = *(v50 + 8 * v627);
      a6 = v635;
      if (v51 < v52)
      {
        v47 = 0;
        v53 = *(a5 + 256);
        do
        {
          if (*(v53 + v51) == 3)
          {
            v54 = *(*(a5 + 248) + 4 * v51);
            v47 += *(v49 + 4 * v54) + (*(*(a5 + 176) + 4 * v54 + 4) - *(*(a5 + 176) + 4 * v54)) * v635 - *(a7[8] + 4 * v54);
            *(v49 + 4 * v658) = v47;
          }

          ++v51;
        }

        while (v52 != v51);
      }

      if (v47 > 0 || *(&v46 + 1) || *(&v48 + 1))
      {
        v55 = SHIDWORD(v663);
        v56 = HIDWORD(v663) + v47;
        v57 = v47 + DWORD2(v48) + v663;
        v58 = v47 + DWORD2(v46) + DWORD1(v663);
        v59 = 4 * (*(&v46 + 1) + *(&v48 + 1) + 2 * v56) + 8 * (v58 * v56 + (v57 * v56)) + 8;
        v60 = a7[14];
        v61 = *(v60 + 8 * v658);
        if (v59 > *v61)
        {
          v644 = SHIDWORD(v663);
          if (*v61)
          {
            (*(a5 + 32))();
          }

          *(a7[14] + 8 * v658) = (*(a5 + 24))(4 * (*(&v46 + 1) + *(&v48 + 1) + 2 * v56) + 8 * (v58 * v56 + (v57 * v56)) + 8);
          v60 = a7[14];
          v61 = *(v60 + 8 * v658);
          if (!v61)
          {
            v589 = *(a5 + 40);
            if (!v589)
            {
              v590 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v590)
              {
                sub_23672B14C(v590, v591, v592, v593, v594, v595, v596, v597);
              }

              _SparseTrap();
            }

            memset(&v669[14] + 10, 0, 22);
            *(&v669[13] + 10) = 0u;
            *(&v669[12] + 10) = 0u;
            *(&v669[11] + 10) = 0u;
            *(&v669[10] + 10) = 0u;
            *(&v669[9] + 10) = 0u;
            *(&v669[8] + 10) = 0u;
            *(&v669[7] + 10) = 0u;
            *(&v669[6] + 10) = 0u;
            memset(&v669[3] + 10, 0, 48);
            strcpy(v669, "Failed to allocate additional storage for delayed pivots\n");
            v589(v669);
            result = 4294967293;
            goto LABEL_551;
          }

          *v61 = v59;
          v49 = a7[9];
          v47 = *(v49 + 4 * v658);
          a6 = v635;
          v55 = v644;
        }

        v62 = &v61[(v57 - v56 + v58) * v56 + 1];
        v63 = (v62 + 4 * v56);
        v64 = &v63[4 * *(&v48 + 1)];
        if (v47 >= 1)
        {
          v65 = *(a5 + 240);
          v66 = *(v65 + 8 * v658);
          v67 = *(v65 + 8 * v627);
          if (v66 < v67)
          {
            v68 = &v64[4 * v55];
            v69 = *(a5 + 256);
            v70 = v62 + 4 * v55;
            do
            {
              if (*(v69 + v66) == 3)
              {
                v71 = *(*(a5 + 248) + 4 * v66);
                v72 = *(v49 + 4 * v71) + (*(*(a5 + 176) + 4 * (v71 + 1)) - *(*(a5 + 176) + 4 * v71)) * a6;
                v73 = *(a7[8] + 4 * v71);
                if (v73 < v72)
                {
                  v74 = 0;
                  v75 = 8 * (v71 + 1);
                  v76 = *(a7[10] + 4 * v71);
                  v77 = *(a7[11] + 4 * v71) + (*(*(a5 + 200) + v75) - *(*(a5 + 200) + 8 * v71)) * a6;
                  v78 = v76 + v72 + (*(*(a5 + 184) + v75) - *(*(a5 + 184) + 8 * v71)) * a6;
                  v79 = v72;
                  v80 = *(v60 + 8 * v71) + 8;
                  v81 = 8 * v78 + 8 * v77;
                  v82 = v80 + v81 * v72 + 4 * v73;
                  v83 = v80 + (v81 | 4) * v79 + 4 * v73 + 4 * v76;
                  v84 = v73 - v79;
                  do
                  {
                    v85 = *(v82 + v74);
                    if (v85 < 0)
                    {
                      v85 = -v85;
                    }

                    *(v70 + v74) = v85;
                    v86 = *(v83 + v74);
                    if (v86 < 0)
                    {
                      v86 = -v86;
                    }

                    *&v68[v74] = v86;
                    v74 += 4;
                    v87 = __CFADD__(v84++, 1);
                  }

                  while (!v87);
                  v70 += v74;
                  v68 += v74;
                }
              }

              ++v66;
            }

            while (v66 != v67);
          }
        }

        if (*(&v48 + 1))
        {
          memcpy(v63, v48, 4 * *(&v48 + 1));
          a6 = v635;
        }

        if (*(&v46 + 1))
        {
          memcpy(&v64[4 * v56], v46, 4 * *(&v46 + 1));
          a6 = v635;
        }

        v34 = v658;
        v88 = *(a7[9] + 4 * v658);
        v89 = *(a7[10] + 4 * v658);
        v90 = *(a7[11] + 4 * v658);
        v91 = *(a7[14] + 8 * v658) + 8;
        v92 = v88 + (*(*(a5 + 176) + 4 * v627) - *(*(a5 + 176) + 4 * v658)) * a6;
        v93 = *(a7[8] + 4 * v658);
        v94 = (*(*(a5 + 200) + v40) - *(*(a5 + 200) + 8 * v658)) * a6;
        v95 = v92 + v90 + v94;
        v96 = (v92 + v89 + (*(*(a5 + 184) + v40) - *(*(a5 + 184) + 8 * v658)) * a6);
        v97 = v91 + 8 * v96 * v92;
        v98 = v94 + v90;
        v44 = v97 + 8 * v98 * v92;
        v99 = v44 + 4 * v92;
        LODWORD(v663) = v92 + v89 + (*(*(a5 + 184) + v40) - *(*(a5 + 184) + 8 * v658)) * a6;
        DWORD1(v663) = v95;
        if (v89 <= 0)
        {
          v100 = 0;
        }

        else
        {
          v100 = v44 + 4 * v92;
        }

        *(&v663 + 1) = __PAIR64__(v92, v88);
        v101 = v99 + 4 * v89 + 4 * v92;
        if (v90 <= 0)
        {
          v101 = 0;
        }

        *&v664 = v93;
        *(&v664 + 1) = v91;
        *&v665 = v96;
        *(&v665 + 1) = v91 + 8 * v96 * v92;
        *&v666 = v98;
        *(&v666 + 1) = v97 + 8 * v98 * v92;
        *&v667 = v99 + 4 * v89;
        *(&v667 + 1) = __PAIR64__(v90, v89);
        *&v668 = v100;
        *(&v668 + 1) = v101;
      }

      else
      {
        v44 = *(&v666 + 1);
        if (!*(&v666 + 1))
        {
          v45 = 1;
          v34 = v658;
          goto LABEL_53;
        }

        v34 = v658;
      }
    }

    else
    {
      v608 = 0uLL;
      v607 = 0uLL;
    }

    if (SHIDWORD(v663) > SDWORD2(v663))
    {
      v102 = 0;
      v103 = v27[22];
      v104 = v667;
      do
      {
        *(v44 + 4 * v102) = v102 + *(v103 + 4 * v34) * a6;
        *(v104 + 4 * v102) = v102 + *(v103 + 4 * v34) * a6;
        ++v102;
      }

      while (v102 < SHIDWORD(v663) - SDWORD2(v663));
    }

    v45 = 0;
    goto LABEL_53;
  }

  *&v608 = 0;
  DWORD2(v608) = 0;
  *&v607 = 0;
  DWORD2(v607) = 0;
  v44 = 0;
  v45 = 1;
LABEL_53:
  v105 = v663;
  if (v663 >= 1)
  {
    v106 = 0;
    v107 = v668;
    do
    {
      if (v106 >= SHIDWORD(v663))
      {
        v109 = v105 - SDWORD2(v667);
        if (v106 >= v109)
        {
          v108 = *(v107 - 4 * v109 + 4 * v106);
        }

        else
        {
          v108 = (v106 - HIDWORD(v663)) % a6 + *(v27[24] + 4 * *(v27[23] + 8 * v34) + 4 * ((v106 - HIDWORD(v663)) / a6)) * a6;
        }
      }

      else if (v45)
      {
        v108 = v106 + *(v27[22] + 4 * v34) * a6;
      }

      else
      {
        v108 = *(v44 + 4 * v106);
      }

      if (v108 < 0)
      {
        v108 = -v108;
      }

      *(a23 + 4 * v108) = v106++;
      v105 = v663;
    }

    while (v106 < v663);
  }

  v110 = DWORD1(v663);
  if (SDWORD1(v663) >= 1)
  {
    v111 = 0;
    v112 = *(&v668 + 1);
    v113 = v667;
    do
    {
      if (v111 >= SHIDWORD(v663))
      {
        v115 = v110 - SHIDWORD(v667);
        if (v111 >= v115)
        {
          v114 = *(v112 - 4 * v115 + 4 * v111);
        }

        else
        {
          v114 = (v111 - HIDWORD(v663)) % a6 + *(v27[26] + 4 * *(v27[25] + 8 * v34) + 4 * ((v111 - HIDWORD(v663)) / a6)) * a6;
        }
      }

      else if (v45)
      {
        v114 = v111 + *(v27[22] + 4 * v34) * a6;
      }

      else
      {
        v114 = *(v113 + 4 * v111);
      }

      if (v114 < 0)
      {
        v114 = -v114;
      }

      *(v649 + 4 * v114) = v111++;
      v110 = SDWORD1(v663);
    }

    while (v111 < SDWORD1(v663));
  }

  v116 = 8 * SHIDWORD(v663);
  bzero(*(&v664 + 1), v116 * v665);
  bzero(*(&v665 + 1), v116 * v666);
  v117 = a7;
  sub_2367DCF58(a2, a1, SHIDWORD(v663), a3, v27, *(&v664 + 1), v665, *(&v665 + 1), v666, a23, v649, a7[12], a7[13]);
  if (*(&v663 + 4) > 0)
  {
    v118 = (v27[30] + 8 * v34);
    v119 = *v118;
    v120 = a4;
    if (*v118 < v118[1])
    {
      v121 = v110;
      v122 = v635;
      v123 = a21;
      while (1)
      {
        if (*(v27[32] + v119) != 3)
        {
          goto LABEL_230;
        }

        v124 = *(v27[31] + 4 * v119);
        if (*(a17 + v124))
        {
          goto LABEL_230;
        }

        if (v120 == 83)
        {
          v125 = *(v117[9] + 4 * v124);
          v126 = *(v117[10] + 4 * v124);
          v127 = *(v117[11] + 4 * v124);
        }

        else
        {
          v125 = 0;
          v126 = 0;
          v127 = 0;
        }

        v651 = v27[22];
        v128 = v125 + (*(v651 + 4 * (v124 + 1)) - *(v651 + 4 * v124)) * v122;
        v129 = v128;
        if (v120 == 83)
        {
          v129 = *(v117[8] + 4 * v124);
        }

        v130 = v27[23];
        v131 = *(v117[14] + 8 * v124) + 8 + 8 * (v128 + v126 + (*(v130 + 8 * (v124 + 1)) - *(v130 + 8 * v124)) * v122) * v128 + 8 * (v127 + (*(v27[25] + 8 * (v124 + 1)) - *(v27[25] + 8 * v124)) * v122) * v128;
        v132 = v131 + 4 * v128 + 4 * v126;
        v133 = v120 == 81 ? 0 : v131;
        v134 = v120 == 81 ? 0 : v132;
        v631 = v134;
        if (v129 == v128)
        {
          goto LABEL_230;
        }

        v628 = v128;
        v135 = *(a3 + 28);
        v642 = v117[12];
        v645 = (v135 * v135);
        v621 = v119;
        if (v642)
        {
          v623 = v117[13];
          if (v129 >= v128)
          {
            sub_23672AB18(a15);
            v122 = v635;
          }

          else
          {
            v609 = v133;
            v136 = v129;
            v605 = v129;
            do
            {
              LODWORD(v137) = *(v631 + 4 * v136);
              if (v137 >= 0)
              {
                v137 = v137;
              }

              else
              {
                v137 = -v137;
              }

              if (*(v123 + 4 * v137) >= a1)
              {
                v138 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v137 / v135)));
                v139 = *v138;
                v140 = v138[1];
                if (v139 < v140)
                {
                  v640 = *(v649 + 4 * v137);
                  v141 = v137 % v135;
                  v142 = *(a3 + 16);
                  v143 = v623 + 8 * (v137 * v135);
                  v144 = v663;
                  do
                  {
                    v145 = *(v142 + 4 * v139);
                    if ((v145 & 0x80000000) == 0 && v145 < *a3 && v135 != 0)
                    {
                      v147 = 0;
                      v148 = *(v27[17] + 4 * v145) * v135;
                      v149 = HIDWORD(v663);
                      v150 = v144 - DWORD2(v667);
                      v151 = v668;
                      v152 = *(&v666 + 1);
                      v153 = *(&v664 + 1) + 8 * v665 * v640;
                      v154 = (v642 + 8 * v135 * v148);
                      v155 = (a19 + 4 * v148);
                      v156 = (a23 + 4 * v148);
                      v157 = v135;
                      do
                      {
                        v159 = *v156++;
                        v158 = v159;
                        if (v159 < v144)
                        {
                          v160 = v158;
                          if (v158 >= v149)
                          {
                            if (v158 >= v150)
                            {
                              v161 = *(v151 + 4 * (v158 - v150));
                            }

                            else
                            {
                              v162 = v158 - v149;
                              v163 = *(v27[24] + 4 * *(v130 + 8 * v658) + 4 * (v162 / v135));
                              v27 = a5;
                              v161 = v162 % v135 + v163 * v135;
                            }
                          }

                          else if ((v158 & 0x80000000) != 0)
                          {
                            v161 = 0x7FFFFFFF;
                          }

                          else
                          {
                            v161 = v152 ? *(v152 + 4 * v158) : v158 + *(v651 + 4 * v658) * v135;
                          }

                          if (v148 == v161 && *v155 >= a1)
                          {
                            *(v153 + 8 * v160) = *v154 * *(*(a3 + 32) + 8 * v139 * v645 + 8 * v147 + 8 * v141 * v135) * *(v143 + 8 * v141);
                          }
                        }

                        ++v147;
                        v154 += v135 + 1;
                        ++v155;
                        LODWORD(v148) = v148 + 1;
                        --v157;
                      }

                      while (v157);
                    }

                    ++v139;
                  }

                  while (v139 != v140);
                }
              }

              ++v136;
              v123 = a21;
            }

            while (v136 != v628);
            sub_23672AB18(a15);
            v164 = *a15;
            v165 = *(a15 + 4);
            v166 = v605 - v628;
            v167 = (v609 + 4 * v605);
            do
            {
              v169 = *v167++;
              v168 = v169;
              if (v169 < 0)
              {
                v168 = -v168;
              }

              *(v164 + 4 * v168) = v165;
              v87 = __CFADD__(v166++, 1);
            }

            while (!v87);
            v121 = DWORD1(v663);
            v117 = a7;
            v34 = v658;
            v120 = a4;
            v122 = v635;
          }

          if (v121 < 1)
          {
            goto LABEL_230;
          }

          v203 = 0;
          v204 = SHIDWORD(v663);
          v652 = SHIDWORD(v663) - SDWORD2(v663);
          v205 = v121;
          v611 = v121;
          v641 = v121 - SHIDWORD(v667);
          v629 = *(&v668 + 1);
          v637 = *(&v666 + 1);
          v632 = v667;
          v206 = 8 * v645;
          do
          {
            if (v203 >= v204 || v203 < v652)
            {
              if (v203 >= v204)
              {
                v207 = a21;
                v208 = v203 >= v641 ? *(v629 + 4 * (v203 - v641)) : (v203 - v204) % v135 + *(v27[26] + 4 * *(v27[25] + 8 * v658) + 4 * ((v203 - v204) / v135)) * v135;
              }

              else
              {
                v207 = a21;
                v208 = v637 ? *(v632 + 4 * v203) : v203 + *(v27[22] + 4 * v658) * v135;
              }

              if (*(v207 + 4 * v208) >= a1)
              {
                v209 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v208 / v135)));
                v210 = *v209;
                v211 = v209[1];
                if (*v209 < v211)
                {
                  v212 = v208 % v135;
                  v213 = *(a3 + 16);
                  v214 = v623 + 8 * v208 * v135;
                  v215 = v206 * v210 + 8 * v208 % v135 * v135;
                  do
                  {
                    v216 = *(v213 + 4 * v210);
                    if ((v216 & 0x80000000) == 0 && v216 < *a3 && v135 != 0)
                    {
                      v218 = 0;
                      v219 = *(v27[17] + 4 * v216) * v135;
                      v220 = *(a15 + 4);
                      v221 = v666;
                      v222 = *(&v665 + 1) + 8 * (v203 - v204);
                      v223 = *(&v664 + 1) + 8 * v665 * v203;
                      v224 = *a15 + 4 * v219;
                      v225 = (v642 + 8 * v135 * v219);
                      do
                      {
                        if (*(a19 + 4 * v219 + 4 * v218) >= a1 && v219 + v218 < *(v27[22] + 4 * v658) * v135 && *(v224 + 4 * v218) >= v220)
                        {
                          v226 = *(a23 + 4 * v219 + 4 * v218);
                          v227 = (v223 + 8 * v226);
                          v228 = (v222 + 8 * v221 * v226);
                          if (v203 < v204)
                          {
                            v228 = v227;
                          }

                          *v228 = *v225 * *(*(a3 + 32) + v215 + 8 * v218) * *(v214 + 8 * v212);
                        }

                        ++v218;
                        v225 += v135 + 1;
                      }

                      while (v135 != v218);
                    }

                    ++v210;
                    v215 += v206;
                  }

                  while (v210 != v211);
                }
              }
            }

            ++v203;
          }

          while (v203 != v205);
          v117 = a7;
          v34 = v658;
          v120 = a4;
          v122 = v635;
        }

        else
        {
          if (v129 >= v128)
          {
            sub_23672AB18(a15);
            v122 = v635;
          }

          else
          {
            v610 = v133;
            v170 = v129;
            v171 = v129;
            do
            {
              v172 = *(v631 + 4 * v171);
              if (v172 >= 0)
              {
                v173 = v172;
              }

              else
              {
                v173 = -v172;
              }

              if (*(v123 + 4 * v173) >= a1)
              {
                v174 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v173 / v135)));
                v175 = *v174;
                v176 = v174[1];
                if (*v174 < v176)
                {
                  v177 = v173 % v135;
                  v178 = *(v649 + 4 * v173);
                  v179 = *(a3 + 16);
                  v180 = v663;
                  do
                  {
                    v181 = *(v179 + 4 * v175);
                    if ((v181 & 0x80000000) == 0 && v181 < *a3 && v135 != 0)
                    {
                      v183 = 0;
                      v184 = *(v27[17] + 4 * v181) * v135;
                      v185 = HIDWORD(v663);
                      v186 = v180 - DWORD2(v667);
                      v187 = v668;
                      v188 = *(&v664 + 1) + 8 * v665 * v178;
                      v189 = *(&v666 + 1);
                      v190 = (a19 + 4 * v184);
                      v191 = (a23 + 4 * v184);
                      v192 = v135;
                      do
                      {
                        v194 = *v191++;
                        v193 = v194;
                        if (v194 < v180)
                        {
                          v195 = v193;
                          if (v193 >= v185)
                          {
                            v196 = v193 >= v186 ? *(v187 + 4 * (v193 - v186)) : (v193 - v185) % v135 + *(v27[24] + 4 * *(v130 + 8 * v658) + 4 * ((v193 - v185) / v135)) * v135;
                          }

                          else if ((v193 & 0x80000000) != 0)
                          {
                            v196 = 0x7FFFFFFF;
                          }

                          else
                          {
                            v196 = v189 ? *(v189 + 4 * v193) : v193 + *(v651 + 4 * v658) * v135;
                          }

                          if (v184 == v196 && *v190 >= a1)
                          {
                            *(v188 + 8 * v195) = *(*(a3 + 32) + 8 * v175 * v645 + 8 * v183 + 8 * v177 * v135);
                          }
                        }

                        ++v183;
                        ++v190;
                        ++v184;
                        --v192;
                      }

                      while (v192);
                    }

                    ++v175;
                  }

                  while (v175 != v176);
                }
              }

              ++v171;
              v123 = a21;
            }

            while (v171 != v628);
            sub_23672AB18(a15);
            v197 = *a15;
            v198 = *(a15 + 4);
            v199 = v170 - v628;
            v200 = (v610 + 4 * v170);
            do
            {
              v202 = *v200++;
              v201 = v202;
              if (v202 < 0)
              {
                v201 = -v201;
              }

              *(v197 + 4 * v201) = v198;
              v87 = __CFADD__(v199++, 1);
            }

            while (!v87);
            v121 = DWORD1(v663);
            v117 = a7;
            v34 = v658;
            v120 = a4;
            v122 = v635;
          }

          if (v121 < 1)
          {
            goto LABEL_230;
          }

          v229 = 0;
          v230 = SHIDWORD(v663);
          v231 = SHIDWORD(v663) - SDWORD2(v663);
          v232 = v121;
          v611 = v121;
          v233 = v121 - SHIDWORD(v667);
          v234 = *(&v668 + 1);
          v235 = *(&v666 + 1);
          v236 = v667;
          v237 = 8 * v645;
          do
          {
            if (v229 >= v230 || v229 < v231)
            {
              if (v229 >= v230)
              {
                v238 = a21;
                v239 = v229 >= v233 ? *(v234 + 4 * (v229 - v233)) : (v229 - v230) % v135 + *(v27[26] + 4 * *(v27[25] + 8 * v34) + 4 * ((v229 - v230) / v135)) * v135;
              }

              else
              {
                v238 = a21;
                v239 = v235 ? *(v236 + 4 * v229) : v229 + *(v27[22] + 4 * v34) * v135;
              }

              if (*(v238 + 4 * v239) >= a1)
              {
                v240 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v239 / v135)));
                v241 = *v240;
                v242 = v240[1];
                if (v241 < v242)
                {
                  v243 = v239 % v135;
                  v244 = *(a3 + 16);
                  v245 = v237 * v241 + 8 * v243 * v135;
                  do
                  {
                    v246 = *(v244 + 4 * v241);
                    if ((v246 & 0x80000000) == 0 && v246 < *a3 && v135 != 0)
                    {
                      v248 = *(v27[17] + 4 * v246) * v135;
                      v249 = *a15;
                      v250 = *(a15 + 4);
                      v251 = v666;
                      v252 = *(&v665 + 1) + 8 * (v229 - v230);
                      v253 = *(&v664 + 1) + 8 * v665 * v229;
                      v254 = v135;
                      v255 = v245;
                      do
                      {
                        if (*(a19 + 4 * v248) >= a1 && v248 < *(v27[22] + 4 * v34) * v135 && *(v249 + 4 * v248) >= v250)
                        {
                          v256 = *(a23 + 4 * v248);
                          v257 = (v253 + 8 * v256);
                          v258 = (v252 + 8 * v251 * v256);
                          if (v229 < v230)
                          {
                            v258 = v257;
                          }

                          *v258 = *(*(a3 + 32) + v255);
                        }

                        v255 += 8;
                        ++v248;
                        --v254;
                      }

                      while (v254);
                    }

                    ++v241;
                    v245 += v237;
                  }

                  while (v241 != v242);
                }
              }
            }

            ++v229;
          }

          while (v229 != v232);
          v117 = a7;
          v120 = a4;
        }

        v123 = a21;
        v119 = v621;
        v121 = v611;
LABEL_230:
        if (++v119 >= *(v27[30] + 8 * v34 + 8))
        {
          goto LABEL_233;
        }
      }
    }
  }

  LODWORD(v121) = v110;
  v123 = a21;
LABEL_233:
  if (SHIDWORD(v667) >= 1)
  {
    v259 = a7[12];
    v260 = *(a3 + 28);
    v261 = (v260 * v260);
    v262 = v121 - HIDWORD(v667);
    v653 = *(&v668 + 1);
    if (v259)
    {
      v646 = a7[13];
      if (v260 <= 1)
      {
        v263 = 1;
      }

      else
      {
        v263 = *(a3 + 28);
      }

      v264 = v262;
      v265 = v121;
      v266 = 8 * v261;
      v267 = 8 * *(a3 + 28);
      v268 = v262;
      do
      {
        v269 = *(v653 + 4 * (v268 - v264));
        if (*(v123 + 4 * v269) >= a1)
        {
          v270 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v269 / v260)));
          v271 = *v270;
          v272 = v270[1];
          if (v271 < v272)
          {
            v273 = v269 % v260;
            v274 = *(a3 + 16);
            v275 = v646 + 8 * v269 * v260;
            v276 = v266 * v271 + 8 * v269 % v260 * v260;
            do
            {
              v277 = *(v274 + 4 * v271);
              if ((v277 & 0x80000000) == 0 && v277 < *a3)
              {
                v278 = *(v27[17] + 4 * v277) * v260;
                v279 = HIDWORD(v663);
                v280 = v666;
                v281 = *(&v665 + 1) + 8 * (v268 - HIDWORD(v663));
                v282 = (v259 + v267 * v278);
                v283 = (a23 + 4 * v278);
                v284 = (a19 + 4 * v278);
                v285 = v263;
                v286 = v276;
                do
                {
                  v287 = *v284++;
                  if (v287 >= a1)
                  {
                    v288 = *v283;
                    if ((v288 & 0x80000000) == 0 && v288 < v279 && v278 == *(*(&v280 + 1) + 4 * v288))
                    {
                      *(v281 + 8 * v280 * v288) = *v282 * *(*(a3 + 32) + v286) * *(v275 + 8 * v273);
                    }
                  }

                  v286 += 8;
                  v282 = (v282 + v267 + 8);
                  LODWORD(v278) = v278 + 1;
                  ++v283;
                  --v285;
                }

                while (v285);
              }

              ++v271;
              v276 += v266;
            }

            while (v271 != v272);
          }
        }

        ++v268;
        v123 = a21;
      }

      while (v268 < v265);
    }

    else
    {
      if (v260 <= 1)
      {
        v289 = 1;
      }

      else
      {
        v289 = *(a3 + 28);
      }

      v290 = 8 * v261;
      v291 = v262;
      do
      {
        v292 = *(v653 + 4 * (v291 - v262));
        if (*(v123 + 4 * v292) >= a1)
        {
          v293 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v292 / v260)));
          v294 = *v293;
          v295 = v293[1];
          if (v294 < v295)
          {
            v296 = *(a3 + 16);
            v297 = v290 * v294 + 8 * v292 % v260 * v260;
            do
            {
              v298 = *(v296 + 4 * v294);
              if ((v298 & 0x80000000) == 0 && v298 < *a3)
              {
                v299 = *(v27[17] + 4 * v298) * v260;
                v300 = HIDWORD(v663);
                v301 = v666;
                v302 = *(&v665 + 1) + 8 * (v291 - HIDWORD(v663));
                v303 = *(&v666 + 1);
                v304 = (a23 + 4 * v299);
                v305 = (a19 + 4 * v299);
                v306 = v289;
                v307 = v297;
                do
                {
                  v308 = *v305++;
                  if (v308 >= a1)
                  {
                    v309 = *v304;
                    if ((v309 & 0x80000000) == 0 && v309 < v300 && v299 == *(v303 + 4 * v309))
                    {
                      *(v302 + 8 * v301 * v309) = *(*(a3 + 32) + v307);
                    }
                  }

                  v307 += 8;
                  ++v299;
                  ++v304;
                  --v306;
                }

                while (v306);
              }

              ++v294;
              v297 += v290;
            }

            while (v294 != v295);
          }
        }

        ++v291;
      }

      while (v291 < v121);
    }
  }

  v654 = DWORD2(v667);
  if (SDWORD2(v667) >= 1)
  {
    v310 = a7[12];
    v311 = *(a3 + 28);
    v312 = (v311 * v311);
    v313 = (v27[22] + 4 * v658);
    v314 = v313[1];
    v315 = *v313;
    v316 = *v313 * v311;
    v317 = v314 * v311;
    if (v310)
    {
      if (v316 < v317)
      {
        v318 = 0;
        v647 = a7[13];
        if (v311 <= 1)
        {
          v319 = 1;
        }

        else
        {
          v319 = v311;
        }

        v320 = ((v314 - v315) * v311);
        v321 = 8 * v312;
        v322 = 8 * v311;
        do
        {
          if (*(v123 + 4 * v316) >= a1)
          {
            v323 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v316 / v311)));
            v324 = *v323;
            v325 = v323[1];
            if (*v323 < v325)
            {
              v326 = *(a3 + 16);
              v327 = v663;
              v328 = v663 - v654;
              v329 = v321 * v324 + 8 * v316 % v311 * v311;
              do
              {
                v330 = *(v326 + 4 * v324);
                if ((v330 & 0x80000000) == 0 && v330 < *a3)
                {
                  v331 = *(v27[17] + 4 * v330) * v311;
                  v332 = v668;
                  v333 = *(&v664 + 1) + 8 * v665 * v318;
                  v334 = (v310 + v322 * v331);
                  v335 = (a19 + 4 * v331);
                  v336 = (a23 + 4 * v331);
                  v337 = v319;
                  v338 = v329;
                  do
                  {
                    v340 = *v336++;
                    v339 = v340;
                    v341 = v340 >= v327 || v339 < v328;
                    if (!v341 && v331 == *(v332 + 4 * (v339 - v328)) && *v335 >= a1)
                    {
                      *(v333 + 8 * v339) = *v334 * *(*(a3 + 32) + v338) * *(v647 + 8 * v316 * v311 + 8 * (v316 % v311));
                    }

                    v338 += 8;
                    v334 = (v334 + v322 + 8);
                    ++v335;
                    LODWORD(v331) = v331 + 1;
                    --v337;
                  }

                  while (v337);
                }

                ++v324;
                v329 += v321;
              }

              while (v324 != v325);
            }
          }

          ++v316;
          ++v318;
          v123 = a21;
        }

        while (v318 != v320);
      }
    }

    else if (v316 < v317)
    {
      v342 = 0;
      if (v311 <= 1)
      {
        v343 = 1;
      }

      else
      {
        v343 = v311;
      }

      v316 = v316;
      v344 = ((v314 - v315) * v311);
      v345 = 8 * v312;
      do
      {
        if (*(v123 + 4 * v316) >= a1)
        {
          v346 = (*(a3 + 8) + 8 * *(v27[20] + 4 * (v316 / v311)));
          v347 = *v346;
          v348 = v346[1];
          if (v347 < v348)
          {
            v349 = *(a3 + 16);
            v350 = v663;
            v351 = v663 - v654;
            v352 = v345 * v347 + 8 * v316 % v311 * v311;
            do
            {
              v353 = *(v349 + 4 * v347);
              if ((v353 & 0x80000000) == 0 && v353 < *a3)
              {
                v354 = *(v27[17] + 4 * v353) * v311;
                v355 = *(&v664 + 1) + 8 * v665 * v342;
                v356 = v668;
                v357 = (a19 + 4 * v354);
                v358 = (a23 + 4 * v354);
                v359 = v343;
                v360 = v352;
                do
                {
                  v362 = *v358++;
                  v361 = v362;
                  v363 = v362 >= v350 || v361 < v351;
                  if (!v363 && v354 == *(v356 + 4 * (v361 - v351)) && *v357 >= a1)
                  {
                    *(v355 + 8 * v361) = *(*(a3 + 32) + v360);
                  }

                  v360 += 8;
                  ++v357;
                  ++v354;
                  --v359;
                }

                while (v359);
              }

              ++v347;
              v352 += v345;
            }

            while (v347 != v348);
          }
        }

        ++v316;
        ++v342;
      }

      while (v342 != v344);
    }
  }

  sub_23672AB18(a15);
  v364 = v27[30];
  v365 = *(v364 + 8 * v658);
  v366 = *(v364 + 8 * v627);
  v367 = v616 >> 3;
  v368 = v366 - v365;
  if (v366 <= v365)
  {
    v368 = 0;
    v376 = a7;
    v377 = v635;
    v378 = v624;
    v371 = v619;
    v379 = v617;
  }

  else
  {
    v369 = *a15;
    v370 = *(a15 + 4);
    v371 = v619;
    v372 = (48 * v367 + 16 * v619 + a23 + 4);
    v373 = (v27[32] + v365);
    v374 = (v27[31] + 4 * v365);
    v375 = v368;
    v376 = a7;
    v377 = v635;
    v378 = v624;
    v379 = v617;
    do
    {
      v381 = *v374++;
      v380 = v381;
      LOBYTE(v381) = *v373++;
      *(v372 - 1) = v380;
      *v372 = v381;
      v372 += 8;
      *(v369 + 4 * v380) = v370;
      --v375;
    }

    while (v375);
  }

  v382 = a16;
  v383 = 8 * v379;
  v384 = v663;
  if (v663 < 1)
  {
    LODWORD(v385) = 0;
  }

  else
  {
    v385 = 0;
    v386 = v668;
    v387 = *(&v666 + 1);
    do
    {
      v388 = v385;
      if (v385 >= SHIDWORD(v663))
      {
        v390 = v384 - SDWORD2(v667);
        if (v385 >= v390)
        {
          v389 = *(v386 - 4 * v390 + 4 * v385);
        }

        else
        {
          v389 = (v385 - HIDWORD(v663)) % v377 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v658) + 4 * ((v385 - HIDWORD(v663)) / v377)) * v377;
        }
      }

      else if (v387)
      {
        v389 = *(v387 + 4 * v385);
      }

      else
      {
        v389 = v385 + *(*(a5 + 176) + 4 * v658) * v377;
      }

      ++v385;
      *(a23 + v383 + 48 * v367 + 16 * v371 + 4 * v388) = v389;
      v384 = v663;
    }

    while (v388 + 1 < v663);
  }

  v391 = DWORD1(v663);
  if (SDWORD1(v663) < 1)
  {
    LODWORD(v392) = 0;
  }

  else
  {
    v392 = 0;
    v393 = *(&v668 + 1);
    v394 = *(&v666 + 1);
    v395 = v667;
    v396 = a23 + v383 + 56 * v367 + 16 * v371;
    do
    {
      v397 = v392;
      if (v392 >= SHIDWORD(v663))
      {
        v399 = v391 - SHIDWORD(v667);
        if (v392 >= v399)
        {
          v398 = *(v393 - 4 * v399 + 4 * v392);
        }

        else
        {
          v398 = (v392 - HIDWORD(v663)) % v377 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v658) + 4 * ((v392 - HIDWORD(v663)) / v377)) * v377;
        }
      }

      else if (v394)
      {
        v398 = *(v395 + 4 * v392);
      }

      else
      {
        v398 = v392 + *(*(a5 + 176) + 4 * v658) * v377;
      }

      ++v392;
      *(v396 + 4 * v397) = v398;
      v391 = DWORD1(v663);
    }

    while (v397 + 1 < SDWORD1(v663));
  }

  sub_23672AB18(a16);
  v400 = v635;
  v401 = a19;
  if (!v368)
  {
    goto LABEL_488;
  }

  v604 = v665;
  v606 = *(&v664 + 1);
  v620 = v666;
  v622 = *(&v665 + 1);
  do
  {
LABEL_350:
    --v368;
    v402 = *&v378[8 * v368];
    v403 = *(v382 + 16);
    if (*(*v382 + 4 * v402) >= v403)
    {
      continue;
    }

    *(*v382 + 4 * v402) = v403;
    v660 = v402;
    if (*(a17 + v402))
    {
      goto LABEL_480;
    }

    v404 = v376[8];
    if (v404)
    {
      if (*(v404 + 4 * v402) < 1)
      {
        goto LABEL_480;
      }
    }

    if (a4 == 83)
    {
      v405 = v402;
      v406 = *(v376[9] + 4 * v402);
      v407 = *(v376[10] + 4 * v402);
      v408 = *(v376[11] + 4 * v402);
    }

    else
    {
      v406 = 0;
      v407 = 0;
      v408 = 0;
      v405 = v402;
    }

    v409 = v402 << 32;
    v410 = *(a5 + 176);
    v411 = v409 + 0x100000000;
    v412 = (*(v410 + (v411 >> 30)) - *(v410 + 4 * v405)) * v400;
    v413 = v412 + v406;
    v414 = v412 + v406;
    if (a4 == 83)
    {
      v414 = *(v404 + 4 * v405);
    }

    v415 = v411 >> 32;
    v416 = *(a5 + 184);
    v415 *= 8;
    v417 = *(v416 + 8 * v405);
    v418 = v413 + v407 + (*(v416 + v415) - v417) * v400;
    v419 = *(a5 + 200);
    v420 = *(v419 + v415);
    v421 = *(v419 + 8 * v405);
    v422 = (v420 - v421) * v400;
    v638 = *(v376[14] + 8 * v405) + 8;
    v630 = v422 + v408;
    v633 = v638 + 8 * v418 * v413;
    if (a4 == 81)
    {
      v423 = 0;
      v424 = 0;
      v425 = 0;
      v426 = v407 <= 0 ? 0 : v413;
      v427 = 4 * v426;
      v428 = v408 <= 0 ? 0 : v413;
      v429 = 4 * v428;
    }

    else
    {
      v423 = v638 + 8 * v418 * v413 + 8 * (v422 + v408) * v413;
      v424 = v423 + 4 * v413 + 4 * v407;
      if (v407 <= 0)
      {
        v427 = 0;
      }

      else
      {
        v427 = v423 + 4 * v413;
      }

      v429 = v424 + 4 * v413;
      if (v408 <= 0)
      {
        v429 = 0;
      }

      v425 = a4 == 83 ? *(v376[9] + 4 * v658) : 0;
    }

    v430 = v418;
    if (v414 >= v418)
    {
      goto LABEL_480;
    }

    v431 = 0;
    v643 = 0;
    v648 = v414;
    v655 = 0;
    v432 = v413 + v408 + v422;
    v433 = v425 + (*(v410 + 4 * v658 + 4) - *(v410 + 4 * v658)) * v400;
    v434 = v430 - v407;
    v435 = v414 - v412 - v406;
    v436 = v427 + 4 * (v414 + v407 - v430);
    do
    {
      v437 = v414 + v431;
      if (v437 >= v413)
      {
        if (v437 >= v434)
        {
          v438 = *(v436 + 4 * v431);
          goto LABEL_387;
        }

        v439 = *(*(a5 + 192) + 4 * v417 + 4 * ((v435 + v431) / v400));
        v440 = (v435 + v431) % v400;
      }

      else
      {
        if (v437 < 0)
        {
          v438 = 0x7FFFFFFF;
          goto LABEL_387;
        }

        if (v423)
        {
          v438 = *(v423 + 4 * v414 + 4 * v431);
          goto LABEL_387;
        }

        v439 = *(v410 + 4 * v660);
        v440 = v414 + v431;
      }

      v438 = v440 + v439 * v400;
LABEL_387:
      if (v438 >= 0)
      {
        v441 = v438;
      }

      else
      {
        v441 = -v438;
      }

      v442 = *(a23 + 4 * v441);
      if (v442 < v385 && *(v639 + 4 * v442) == v441 && *(v401 + 4 * v441) >= a1)
      {
        v443 = (v636 + 8 * v655);
        *v443 = v414 + v431;
        v443[1] = v442;
        v401 = a19;
        v400 = v635;
        if (v442 >= v433)
        {
          v444 = v643;
        }

        else
        {
          v444 = v643 + 1;
        }

        v643 = v444;
        v655 = (v655 + 1);
      }

      ++v431;
    }

    while (v414 - v430 + v431);
    v376 = a7;
    v445 = v618;
    v446 = v414;
    if (!v655 || v414 >= v432)
    {
      goto LABEL_480;
    }

    v447 = 0;
    v448 = 0;
    v449 = 0;
    v450 = v432 - v408;
    v451 = v424 + 4 * v414;
    v452 = v414 - v412 - v406;
    v453 = v414 - v432;
    v454 = v429 + 4 * (v414 + v408 - v432);
    while (2)
    {
      v455 = v414 + v447;
      if (v455 >= v413)
      {
        if (v455 < v450)
        {
          v457 = *(*(a5 + 208) + 4 * v421 + 4 * ((v452 + v447) / v400));
          v458 = (v452 + v447) % v400;
          goto LABEL_410;
        }

        v456 = *(v454 + 4 * v447);
      }

      else if (v455 < 0)
      {
        v456 = 0x7FFFFFFF;
      }

      else
      {
        if (v423)
        {
          v456 = *(v451 + 4 * v447);
          goto LABEL_411;
        }

        v457 = *(v410 + 4 * v660);
        v458 = v414 + v447;
LABEL_410:
        v456 = v458 + v457 * v400;
      }

LABEL_411:
      if (v456 >= 0)
      {
        v459 = v456;
      }

      else
      {
        v459 = -v456;
      }

      v460 = *(v649 + 4 * v459);
      if (v460 < v392 && *(v625 + 4 * v460) == v459)
      {
        v459 = *(a21 + 4 * v459);
        if (v459 >= a1)
        {
          v459 = &v618[v449];
          *v459 = v414 + v447;
          *(v459 + 4) = v460;
          if (v460 < v433)
          {
            ++v448;
          }

          ++v449;
        }
      }

      ++v447;
      if (v453 + v447)
      {
        continue;
      }

      break;
    }

    v461 = v655;
    if (v449 && v643 | v448)
    {
      v462 = v638;
      if (v643 >= 1)
      {
        v463 = 0;
        v464 = v649 + (v616 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v465 = (v636 + 8 * v463);
          v466 = v465[1];
          if (v466 >= v433)
          {
            v467 = v464;
            v468 = v463;
            while (++v468 < v655)
            {
              v469 = (v467 + 8);
              v470 = *(v467 + 12);
              v467 += 8;
              if (v470 < v433)
              {
                v471 = *v469;
                *v469 = *v465;
                *v465 = v471;
                v469[1] = v466;
                v465[1] = v470;
                break;
              }
            }
          }

          ++v463;
          v464 += 8;
        }

        while (v463 != v643);
      }

      if (v448 >= 1)
      {
        v472 = 0;
        v473 = v618;
        do
        {
          v474 = &v618[v472];
          v475 = v474[1];
          if (v475 >= v433)
          {
            v476 = v473;
            v477 = v472;
            while (++v477 < v449)
            {
              v478 = (v476 + 1);
              v479 = *(v476++ + 3);
              if (v479 < v433)
              {
                v480 = *v478;
                *v478 = *v474;
                *v474 = v480;
                v478[1] = v475;
                v474[1] = v479;
                break;
              }
            }
          }

          ++v472;
          ++v473;
        }

        while (v472 != v448);
      }

      v481 = v655 * v648;
      if (a12[1] < (v655 * v648))
      {
        if (*a12)
        {
          (*(a5 + 32))(*a12, v459, v655, v638);
        }

        *a12 = (*(a5 + 24))(8 * v481);
        a12[1] = v481;
        v400 = v635;
        v445 = v618;
        v401 = a19;
        v446 = v648;
        v461 = v655;
        v462 = v638;
      }

      if (v446 >= 1)
      {
        v482 = 0;
        v483 = *a12;
        do
        {
          if (v461 >= 1)
          {
            v484 = (v649 + (v616 & 0xFFFFFFFFFFFFFFF8));
            v485 = v483;
            v486 = v461;
            do
            {
              v487 = *v484++;
              *v485++ = *(v462 + 8 * v482 * v430 + 8 * v487);
              --v486;
            }

            while (v486);
          }

          ++v482;
          v483 += v461;
        }

        while (v482 != v446);
      }

      v603 = v461;
      v488 = v449 * v446;
      if (a13[1] < (v449 * v446))
      {
        if (*a13)
        {
          (*(a5 + 32))(*a13, v459, v461, v462);
        }

        v489 = (*(a5 + 24))(8 * v488);
        v445 = v618;
        *a13 = v489;
        a13[1] = v488;
        v400 = v635;
        v401 = a19;
        v446 = v648;
        LODWORD(v461) = v655;
        v462 = v638;
      }

      v490 = a13;
      if (v446 >= 1)
      {
        v491 = 0;
        for (i = 0; i != v446; ++i)
        {
          if (v449 >= 1)
          {
            v493 = (*a13 + v491);
            v494 = v445;
            v495 = v449;
            do
            {
              v496 = *v494++;
              v497 = v633 + 8 * i * v630 + 8 * (v496 - v413);
              v498 = (v462 + 8 * i + 8 * v496 * v430);
              if (v496 >= v413)
              {
                v498 = v497;
              }

              *v493++ = *v498;
              --v495;
            }

            while (v495);
          }

          v491 += 8 * v449;
        }
      }

      if (v448 * v461 <= (v449 - v448) * v643)
      {
        v499 = (v449 - v448) * v643;
      }

      else
      {
        v499 = v448 * v461;
      }

      if (a14[1] < v499)
      {
        if (*a14)
        {
          (*(a5 + 32))(*a14, a13);
        }

        *a14 = (*(a5 + 24))(8 * v499, v490);
        a14[1] = v499;
        v400 = v635;
        v401 = a19;
      }

      v376 = a7;
      if (v448 >= 1)
      {
        v500 = *a12;
        *v601 = *a14;
        v598 = *a13;
        cblas_dgemm_NEWLAPACK();
        v401 = a19;
        v400 = v635;
        v501 = 0;
        v502 = *a14;
        do
        {
          if (v655 >= 1)
          {
            v503 = v606 + 8 * SHIDWORD(v618[v501]) * v604;
            v504 = v649 + (v616 & 0xFFFFFFFFFFFFFFF8);
            v505 = v502;
            v506 = v603;
            do
            {
              v507 = *v505++;
              *(v503 + 8 * *(v504 + 4)) = v507 + *(v503 + 8 * *(v504 + 4));
              v504 += 8;
              --v506;
            }

            while (v506);
          }

          ++v501;
          v502 += v655;
        }

        while (v501 != v448);
      }

      if (v643 >= 1)
      {
        v508 = *a12;
        *v602 = *a14;
        v599 = *a13 + 8 * v448;
        cblas_dgemm_NEWLAPACK();
        v401 = a19;
        v400 = v635;
        if (v449 > v448)
        {
          v509 = v448;
          v510 = *a14;
          do
          {
            v511 = v622 + 8 * (HIDWORD(v618[v509]) - v433);
            v512 = v649 + (v616 & 0xFFFFFFFFFFFFFFF8);
            v513 = v510;
            v514 = v643;
            do
            {
              v515 = *v513++;
              *(v511 + 8 * *(v512 + 4) * v620) = v515 + *(v511 + 8 * *(v512 + 4) * v620);
              v512 += 8;
              --v514;
            }

            while (v514);
            ++v509;
            v510 += v643;
          }

          while (v509 != v449);
        }
      }
    }

LABEL_480:
    v516 = (*(a5 + 240) + 8 * v660);
    v517 = *v516;
    v518 = v516[1];
    if (v517 >= v518)
    {
      v378 = v624;
      v382 = a16;
      if (!v368)
      {
        break;
      }

      goto LABEL_350;
    }

    v519 = *(a5 + 248);
    v382 = a16;
    v520 = *a15;
    v378 = v624;
    do
    {
      v521 = *(v519 + 4 * v517);
      v522 = *(a15 + 4);
      if (*(v520 + 4 * v521) < v522)
      {
        v523 = *(*(a5 + 256) + v517);
        v524 = &v624[8 * v368];
        *v524 = v521;
        ++v368;
        v524[4] = v523;
        *(v520 + 4 * v521) = v522;
      }

      ++v517;
    }

    while (v518 != v517);
  }

  while (v368);
LABEL_488:
  v525 = HIDWORD(v663);
  v526 = a4;
  if (a4 == 83)
  {
    v527 = a5;
    v528 = v658;
    v529 = a10;
    if (SHIDWORD(v663) >= 1)
    {
      v530 = 0;
      v531 = *(&v666 + 1);
      v532 = v667;
      do
      {
        *(v401 + 4 * *(v531 + 4 * v530)) = -1;
        *(a21 + 4 * *(v532 + 4 * v530++)) = -1;
        v525 = HIDWORD(v663);
      }

      while (v530 < SHIDWORD(v663));
    }
  }

  else
  {
    v527 = a5;
    v528 = v658;
    v529 = a10;
  }

  if ((DWORD1(v663) - v525) * (v663 - v525) < 1)
  {
    v537 = 0;
  }

  else
  {
    v533 = 5 * (SHIDWORD(v667) + SDWORD2(v667));
    v600 = v527;
    v534 = (*(v527 + 24))(v533 + 152);
    sub_236724DE4(v534, &v663, v607, SDWORD2(v607), v608, SDWORD2(v608), (v534 + 120), v533 + 32, v600);
    v535 = *(v534 + 16) * *(v534 + 8);
    v536 = (*(*v534 + 24))(8 * v535);
    v537 = v534;
    *(v534 + 96) = v536;
    *(v534 + 104) = v535;
    bzero(v536, 8 * v535);
    v376 = a7;
    v527 = a5;
    v528 = v658;
    v526 = a4;
    v400 = v635;
  }

  v661 = v537;
  *(v529 + 8 * v528) = v537;
  v538 = *(v527 + 240);
  v539 = *(v538 + 8 * v528);
  if (v539 < *(v538 + 8 * v627))
  {
    while (1)
    {
      v540 = *(*(a5 + 248) + 4 * v539);
      if (*(a17 + v540) == 1)
      {
        break;
      }

LABEL_535:
      if (++v539 >= *(v538 + 8 * v627))
      {
        goto LABEL_536;
      }
    }

    memset(&v669[1], 0, 56);
    if (v526 == 83)
    {
      v541 = *(v376[9] + 4 * v540);
      v542 = *(v376[10] + 4 * v540);
      v543 = *(v376[11] + 4 * v540);
    }

    else
    {
      v541 = 0;
      v542 = 0;
      v543 = 0;
    }

    v544 = *(v376[14] + 8 * v540) + 8;
    DWORD2(v669[0]) = v541;
    *(&v669[1] + 1) = v544;
    *(&v669[4] + 1) = __PAIR64__(v543, v542);
    HIDWORD(v669[0]) = v541 + (*(*(a5 + 176) + 4 * (v540 + 1)) - *(*(a5 + 176) + 4 * v540)) * v400;
    v545 = HIDWORD(v669[0]);
    if (v526 == 83)
    {
      v545 = *(v376[8] + 4 * v540);
    }

    LODWORD(v669[1]) = v545;
    v546 = 8 * (v540 + 1);
    LODWORD(v669[0]) = HIDWORD(v669[0]) + v542 + (*(*(a5 + 184) + v546) - *(*(a5 + 184) + 8 * v540)) * v400;
    v547 = (*(*(a5 + 200) + v546) - *(*(a5 + 200) + 8 * v540)) * v400;
    DWORD1(v669[0]) = HIDWORD(v669[0]) + v543 + v547;
    v548 = v544 + 8 * SLODWORD(v669[0]) * SHIDWORD(v669[0]);
    *&v669[2] = SLODWORD(v669[0]);
    *(&v669[2] + 1) = v548;
    *&v669[3] = v547 + v543;
    if (v526 == 81)
    {
      v549 = 0;
      v550 = 0;
    }

    else
    {
      v550 = v548 + 8 * (v547 + v543) * SHIDWORD(v669[0]);
      v549 = v550 + 4 * SHIDWORD(v669[0]) + 4 * v542;
      *(&v669[3] + 1) = v550;
      *&v669[4] = v549;
    }

    v551 = v550 + 4 * SHIDWORD(v669[0]);
    if (v542 <= 0)
    {
      v552 = 0;
    }

    else
    {
      v552 = v551;
    }

    v553 = v549 + 4 * SHIDWORD(v669[0]);
    if (v543 <= 0)
    {
      v554 = 0;
    }

    else
    {
      v554 = v553;
    }

    *&v669[5] = v552;
    *(&v669[5] + 1) = v554;
    v555 = *(v529 + 8 * v540);
    if (v555)
    {
      v556 = *(*(a5 + 264) + 4 * v539) * v400;
      v557 = *(*(a5 + 272) + 4 * v539) * v400;
      v558 = *(*(a5 + 256) + v539);
      switch(v558)
      {
        case 3:
          v577 = v400;
          v578 = sub_2367DDE0C(&v663, v540, v669, v555, a5, v400, v556, v557, a23, v649);
          v529 = a10;
          sub_2367D673C(v578, &v663, v661, v540, v669, v555, a5, v577, v556, v557, a23, v649);
          v567 = *(a10 + 8 * v540);
          v569 = v567 + 12;
          v568 = v567[12];
          if (v568)
          {
            goto LABEL_532;
          }

          goto LABEL_533;
        case 2:
          v570 = *(*(a5 + 280) + 4 * v539);
          sub_236724F10(&v662, *(v529 + 8 * v540));
          v571 = v570 * v635;
          sub_2367DD7D0(a1, &v663, v540, v669, v555, a5, v635, v556, v557, v570 * v635, a23, v649);
          sub_2367D5E48(a1, &v663, v661, v540, v669, v555, a5, v635, v556, v557, v570 * v635, a23, v649);
          add_explicit = atomic_fetch_add_explicit((v555 + 24), -(v570 * v635), memory_order_release);
          if (*(v662 + 112) == 1)
          {
            v573 = (v662 + 113);
            atomic_store(0, (v662 + 113));
            std::__cxx_atomic_notify_one(v573);
          }

          v400 = v635;
          v529 = a10;
          if (add_explicit == v571)
          {
            v574 = *(*v555 + 32);
            v576 = *(v555 + 96);
            v575 = (v555 + 96);
            v574(v576);
            *v575 = 0;
            v575[1] = 0;
            v400 = v635;
            if (HIDWORD(v669[0]) == LODWORD(v669[1]) && !*(&v669[4] + 1))
            {
              v567 = *(a10 + 8 * v540);
              v569 = v567 + 12;
              v568 = v567[12];
              if (v568)
              {
LABEL_532:
                (*(*v567 + 32))(v568);
                *v569 = 0;
                v569[1] = 0;
                v579 = *(v529 + 8 * v540);
              }

LABEL_533:
              (*(a5 + 32))();
              *(v529 + 8 * v540) = 0;
              v400 = v635;
            }
          }

          break;
        case 1:
          v559 = *(*(a5 + 280) + 4 * v539);
          sub_236724F10(&v662, *(v529 + 8 * v540));
          v560 = v556;
          v657 = v556;
          v561 = v559 * v635;
          sub_2367DD33C(a1, &v663, v540, v669, v555, a5, v635, v560, v557, v559 * v635, a23, v649);
          sub_2367D56F8(a1, &v663, v661, v540, v669, v555, a5, v635, v657, v557, v559 * v635, a23, v649);
          v562 = atomic_fetch_add_explicit((v555 + 28), -(v559 * v635), memory_order_release);
          if (*(v662 + 112) == 1)
          {
            v563 = (v662 + 113);
            atomic_store(0, (v662 + 113));
            std::__cxx_atomic_notify_one(v563);
          }

          v400 = v635;
          v529 = a10;
          if (v562 == v561)
          {
            v564 = *(*v555 + 32);
            v566 = *(v555 + 96);
            v565 = (v555 + 96);
            v564(v566);
            *v565 = 0;
            v565[1] = 0;
            v400 = v635;
            if (HIDWORD(v669[0]) == LODWORD(v669[1]) && !*(&v669[4] + 1))
            {
              v567 = *(a10 + 8 * v540);
              v569 = v567 + 12;
              v568 = v567[12];
              if (v568)
              {
                goto LABEL_532;
              }

              goto LABEL_533;
            }
          }

          break;
      }
    }

    v538 = *(a5 + 240);
    v376 = a7;
    v526 = a4;
    goto LABEL_535;
  }

LABEL_536:
  v580 = v661;
  if (v661)
  {
    v581 = *(v661 + 96);
    v580 = *(v661 + 16);
  }

  else
  {
    v581 = 0;
  }

  v582 = v526 == 83;
  if (a27)
  {
    v583 = a27 + 64;
  }

  else
  {
    v583 = 0;
  }

  v584 = v615(v663, DWORD1(v663), HIDWORD(v663), *(&v664 + 1), v665, *(&v665 + 1), v666, v581, v580, *(&v666 + 1), v667, a5, v376, v613, v614, a25, a26, v583);
  v585 = *a8;
  if (*a8 <= v584)
  {
    v585 = v584;
  }

  *a8 = v585;
  v586 = *a9;
  if (*a9 <= SDWORD1(v663))
  {
    v586 = DWORD1(v663);
  }

  *a9 = v586;
  if (v582)
  {
    *(a7[8] + 4 * v658) = v584;
    goto LABEL_549;
  }

  if (v584 == HIDWORD(v663))
  {
LABEL_549:
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_551:
  v588 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2367E31D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2367E31EC(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(v3 + 64);
  v5 = *(v4 + 2);
  v6 = *(v5 + 344);
  v7 = *(v6 + 4 * a2);
  v54 = (a2 << 32) + 0x100000000;
  v8 = *(v6 + (v54 >> 30));
  v9 = a1[5];
  v10 = *(v3 + 48);
  v56 = *(v5 + 168);
  v57 = *(v4 + 5);
  v67[0] = 0;
  v67[1] = 0;
  v66[0] = 0;
  v66[1] = 0;
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  v11 = *(v5 + 56);
  v12 = (4 * v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = &v9[v12];
  v61[0] = v9;
  v61[1] = v11 & 0x3FFFFFFFFFFFFFFFLL;
  v62 = 1;
  bzero(v9, 4 * v11);
  v14 = *(*(v4 + 2) + 168);
  v59[0] = v13;
  v59[1] = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v60 = 1;
  v15 = 4 * v14;
  bzero(v13, 4 * v14);
  v16 = 0;
  v58 = 0;
  if (v7 < v8)
  {
    v17 = v10;
    v18 = v7;
    v19 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = &v13[v19];
    v21 = v17 - (v12 + v19);
    v16 = 1;
    v22 = (32 * v7) | 8;
    while (1)
    {
      v23 = *(v4 + 14);
      if (*(v23 + v18) & 1) != 0 || (sub_2367DE38C(v7, *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), *(v4 + 20), *(v4 + 21), v67, v66, v65, v64, v63, v61, v23, *(v4 + 15), v20), (*(*(v4 + 14) + v18)))
      {
        *(**(v4 + 21) + v22) = *(**(v4 + 21) + v22 - 8);
        v24 = *(v4 + 19);
        *(**(v4 + 20) + v22) = *(**(v4 + 20) + v22 - 8);
        v25 = sub_2367E064C(v7, HIDWORD(a2), *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), &v58 + 1, &v58, v57, v56, v65, v64, v63, v61, v59, *(v4 + 14), *(v4 + 15), *(v4 + 16), *(v4 + 17), *(v4 + 18), v24, v20, v21, *(v4 + 13), a1, v4);
        if (v25)
        {
          break;
        }
      }

      v16 = ++v18 < v8;
      v7 = (v7 + 1);
      v22 += 32;
      if (v8 == v7)
      {
        goto LABEL_10;
      }
    }

    _X2 = 0;
    v27 = a1[1];
    atomic_store(v25, (v27 + 16));
    atomic_store(1u, (v27 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      __ulock_wake();
    }
  }

LABEL_10:
  (*(*(v4 + 2) + 32))(v67[0]);
  (*(*(v4 + 2) + 32))(v66[0]);
  (*(*(v4 + 2) + 32))(v65[0]);
  (*(*(v4 + 2) + 32))(v64[0]);
  result = (*(*(v4 + 2) + 32))(v63[0]);
  if (!v16)
  {
    v35 = v54 >> 32;
    v36 = *(*(v4 + 4) + 136);
    v37 = HIDWORD(v58);
    while (1)
    {
      v38 = *(v4 + 4);
      if (v37 <= v36)
      {
        break;
      }

      v39 = v36;
      atomic_compare_exchange_strong_explicit((v38 + 136), &v39, v37, memory_order_relaxed, memory_order_relaxed);
      _ZF = v39 == v36;
      v36 = v39;
      if (_ZF)
      {
        v38 = *(v4 + 4);
        break;
      }
    }

    v40 = *(v38 + 140);
    v41 = v58;
    do
    {
      if (v41 <= v40)
      {
        break;
      }

      v42 = v40;
      atomic_compare_exchange_strong_explicit((*(v4 + 4) + 140), &v42, v41, memory_order_relaxed, memory_order_relaxed);
      _ZF = v42 == v40;
      v40 = v42;
    }

    while (!_ZF);
    v43 = *(v4 + 2);
    v44 = *(v43 + 352);
    v45 = *(v44 + 8 * a2);
    if (v45 < *(v44 + 8 * v35))
    {
      do
      {
        v46 = (*(v4 + 7) + 40 * *(*(v43 + 360) + 4 * v45));
        if (atomic_fetch_add_explicit(v46, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v47 = a1[2];
          if (v47)
          {
            v48 = a1[1] + 32;
            v49 = a1[3];
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v47 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v47 + 32) = 0;
              _X2 = _X4 & 1 | v47;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          a1[2] = v46;
          a1[3] = 0;
        }

        ++v45;
        v43 = *(v4 + 2);
      }

      while (v45 < *(*(v43 + 352) + 8 * v35));
    }
  }

  return result;
}

uint64_t sub_2367E3678(uint64_t result, int a2, double *a3, int a4, double *a5, uint64_t a6, int a7, float64x2_t *a8, double a9, double a10, double a11, double a12, double a13, double a14, float64x2_t a15, float64x2_t a16)
{
  if (*a5 != 0.0)
  {
    if (result <= 0)
    {
      v18 = -(-result & 7);
    }

    else
    {
      v18 = result & 7;
    }

    if (result <= 0)
    {
      v19 = -(-result & 3);
    }

    else
    {
      v19 = result & 3;
    }

    if (result >= 0)
    {
      v20 = result & 1;
    }

    else
    {
      v20 = -(result & 1);
    }

    v21 = a2 & 3;
    if (a2 <= 0)
    {
      v21 = -(-a2 & 3);
    }

    v22 = result - v18;
    v23 = result - v19;
    v24 = a2 - v21;
    if (v22 < 1)
    {
      LODWORD(v25) = 0;
    }

    else
    {
      v25 = 0;
      v26 = 8 * a4;
      v27 = 8 * a7;
      v28 = v27 - 48;
      v29 = a6;
      do
      {
        v30 = (a6 + 8 * v25);
        v32 = *v30;
        v33 = v30[1];
        v34 = v30[2];
        v35 = v30[3];
        v31 = (v30 + v27);
        v37 = *v31;
        v38 = v31[1];
        v39 = v31[2];
        v40 = v31[3];
        v36 = (v31 + v27);
        v42.f64[0] = *a3;
        v42.f64[1] = a3[a4];
        v41 = &a3[v26 / 8 + v26 / 8];
        *&a15.f64[0] = veor_s8(*&a15.f64[0], *&a15.f64[0]);
        *&a16.f64[0] = veor_s8(*&a16.f64[0], *&a16.f64[0]);
        *&v16.f64[0] = veor_s8(*&v16.f64[0], *&v16.f64[0]);
        *&v17.f64[0] = veor_s8(*&v17.f64[0], *&v17.f64[0]);
        if (v24 < 1)
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v24; i += 4)
          {
            v45.f64[0] = *v41;
            v44 = &v41[v26 / 8];
            v45.f64[1] = *v44;
            v46 = &v44[v26 / 8];
            v47 = vmlaq_n_f64(a15, v32, v42.f64[0]);
            v49 = *v36;
            v48 = v36 + 1;
            v50 = vmlaq_n_f64(a16, v33, v42.f64[0]);
            v51 = *v48++;
            v52 = vmlaq_n_f64(v16, v34, v42.f64[0]);
            v53 = *v48++;
            v54 = vmlaq_n_f64(v17, v35, v42.f64[0]);
            v56 = *v48;
            v55 = (v48 + v28);
            v57 = vmlaq_laneq_f64(v47, v37, v42, 1);
            v58 = *v55++;
            v59 = vmlaq_laneq_f64(v50, v38, v42, 1);
            v60 = *v55++;
            v61 = vmlaq_laneq_f64(v52, v39, v42, 1);
            v62 = *v55++;
            v63 = vmlaq_laneq_f64(v54, v40, v42, 1);
            v65 = *v55;
            v64 = (v55 + v28);
            v42.f64[0] = *v46;
            v66 = &v46[v26 / 8];
            v42.f64[1] = *v66;
            v41 = &v66[v26 / 8];
            v67 = vmlaq_n_f64(v57, v49, v45.f64[0]);
            v32 = *v64++;
            v68 = vmlaq_n_f64(v59, v51, v45.f64[0]);
            v33 = *v64++;
            v69 = vmlaq_n_f64(v61, v53, v45.f64[0]);
            v34 = *v64++;
            v70 = vmlaq_n_f64(v63, v56, v45.f64[0]);
            v35 = *v64;
            v71 = (v64 + v28);
            a15 = vmlaq_laneq_f64(v67, v58, v45, 1);
            v37 = *v71++;
            a16 = vmlaq_laneq_f64(v68, v60, v45, 1);
            v38 = *v71++;
            v16 = vmlaq_laneq_f64(v69, v62, v45, 1);
            v39 = *v71++;
            v17 = vmlaq_laneq_f64(v70, v65, v45, 1);
            v40 = *v71;
            v36 = (v71 + v28);
          }
        }

        v72 = a2 - i;
        if (a2 > i)
        {
          v73 = (a3 + v26 * i);
          v74 = (v29 + v27 * i);
          do
          {
            a15 = vmlaq_n_f64(a15, *v74, *v73);
            a16 = vmlaq_n_f64(a16, v74[1], *v73);
            v16 = vmlaq_n_f64(v16, v74[2], *v73);
            v17 = vmlaq_n_f64(v17, v74[3], *v73);
            v73 = (v73 + v26);
            v74 = (v74 + v27);
            --v72;
          }

          while (v72);
        }

        v75 = &a8[v25 / 2];
        *v75 = a15;
        v75[1] = a16;
        v75[2] = v16;
        v75[3] = v17;
        v25 += 8;
        v29 += 64;
      }

      while (v22 > v25);
    }

    v76 = result - v20;
    if (v25 >= v23)
    {
      LODWORD(v80) = v25;
    }

    else
    {
      v77 = 8 * a4;
      v78 = 8 * a7;
      v79 = v78 - 16;
      v80 = v25;
      v81 = a6 + 8 * v25;
      do
      {
        v82 = (a6 + 8 * v80);
        v84 = *v82;
        v85 = v82[1];
        v83 = (v82 + v78);
        v87 = *v83;
        v88 = v83[1];
        v86 = (v83 + v78);
        v90.f64[0] = *a3;
        v90.f64[1] = a3[a4];
        v89 = &a3[v77 / 8 + v77 / 8];
        *&a15.f64[0] = veor_s8(*&a15.f64[0], *&a15.f64[0]);
        *&a16.f64[0] = veor_s8(*&a16.f64[0], *&a16.f64[0]);
        if (v24 < 1)
        {
          j = 0;
        }

        else
        {
          for (j = 0; j < v24; j += 4)
          {
            v93.f64[0] = *v89;
            v92 = &v89[v77 / 8];
            v93.f64[1] = *v92;
            v94 = &v92[v77 / 8];
            v95 = vmlaq_n_f64(a15, v84, v90.f64[0]);
            v97 = *v86;
            v96 = v86 + 1;
            v98 = vmlaq_n_f64(a16, v85, v90.f64[0]);
            v100 = *v96;
            v99 = (v96 + v79);
            v101 = vmlaq_laneq_f64(v95, v87, v90, 1);
            v102 = *v99++;
            v103 = vmlaq_laneq_f64(v98, v88, v90, 1);
            v105 = *v99;
            v104 = (v99 + v79);
            v90.f64[0] = *v94;
            v106 = &v94[v77 / 8];
            v90.f64[1] = *v106;
            v89 = &v106[v77 / 8];
            v107 = vmlaq_n_f64(v101, v97, v93.f64[0]);
            v84 = *v104++;
            v108 = vmlaq_n_f64(v103, v100, v93.f64[0]);
            v85 = *v104;
            v109 = (v104 + v79);
            a15 = vmlaq_laneq_f64(v107, v102, v93, 1);
            v87 = *v109++;
            a16 = vmlaq_laneq_f64(v108, v105, v93, 1);
            v88 = *v109;
            v86 = (v109 + v79);
          }
        }

        v110 = a2 - j;
        if (a2 > j)
        {
          v111 = (a3 + v77 * j);
          v112 = (v81 + v78 * j);
          do
          {
            a15 = vmlaq_n_f64(a15, *v112, *v111);
            a16 = vmlaq_n_f64(a16, v112[1], *v111);
            v111 = (v111 + v77);
            v112 = (v112 + v78);
            --v110;
          }

          while (v110);
        }

        v113 = &a8->f64[v80];
        *v113 = a15;
        v113[1] = a16;
        v80 += 4;
        v81 += 32;
      }

      while (v23 > v80);
    }

    if (v80 >= v76)
    {
      LODWORD(v116) = v80;
    }

    else
    {
      v114 = 8 * a4;
      v115 = 8 * a7;
      v116 = v80;
      v117 = a6 + 8 * v80;
      do
      {
        v118 = (a6 + 8 * v116);
        v120 = *v118;
        v119 = (v118 + v115);
        v122 = *v119;
        v121 = (v119 + v115);
        v124.f64[0] = *a3;
        v124.f64[1] = a3[a4];
        v123 = &a3[v114 / 8 + v114 / 8];
        *&a15.f64[0] = veor_s8(*&a15.f64[0], *&a15.f64[0]);
        if (v24 < 1)
        {
          k = 0;
        }

        else
        {
          for (k = 0; k < v24; k += 4)
          {
            v127.f64[0] = *v123;
            v126 = &v123[v114 / 8];
            v127.f64[1] = *v126;
            v128 = &v126[v114 / 8];
            v129 = vmlaq_n_f64(a15, v120, v124.f64[0]);
            v131 = *v121;
            v130 = (v121 + v115);
            v132 = vmlaq_laneq_f64(v129, v122, v124, 1);
            v134 = *v130;
            v133 = (v130 + v115);
            v124.f64[0] = *v128;
            v135 = &v128[v114 / 8];
            v124.f64[1] = *v135;
            v123 = &v135[v114 / 8];
            v136 = vmlaq_n_f64(v132, v131, v127.f64[0]);
            v120 = *v133;
            v137 = (v133 + v115);
            a15 = vmlaq_laneq_f64(v136, v134, v127, 1);
            v122 = *v137;
            v121 = (v137 + v115);
          }
        }

        v138 = a2 - k;
        if (a2 > k)
        {
          v139 = (a3 + v114 * k);
          v140 = (v117 + v115 * k);
          do
          {
            a15 = vmlaq_n_f64(a15, *v140, *v139);
            v139 = (v139 + v114);
            v140 = (v140 + v115);
            --v138;
          }

          while (v138);
        }

        *(a8 + 8 * v116) = a15;
        v116 += 2;
        v117 += 16;
      }

      while (v76 > v116);
    }

    if (v116 < result)
    {
      v141 = v116;
      v142 = (a6 + 8 * v116);
      do
      {
        v143 = 0.0;
        if (a2 >= 1)
        {
          v144 = a2;
          v145 = v142;
          v146 = a3;
          do
          {
            v143 = v143 + *v145 * *v146;
            v146 += a4;
            v145 += a7;
            --v144;
          }

          while (v144);
        }

        a8->f64[v141++] = v143;
        ++v142;
      }

      while (v141 != result);
    }

    v147 = a2 & 1;
    if (a2 < 0)
    {
      v147 = -v147;
    }

    v148 = (a2 - v147);
    v197 = -*a5;
    if (v148 < 1)
    {
      LODWORD(v149) = 0;
    }

    else
    {
      v149 = 0;
      v150 = a4;
      v151 = 16 * a7;
      v152 = a6;
      v153 = a3;
      v154 = a6 + 8 * a7;
      do
      {
        v155 = (a6 + 8 * v149 * a7);
        v156 = (a6 + 8 * (v149 | 1) * a7);
        v158.f64[0] = *v153;
        v157 = &v153[v150];
        v158.f64[1] = *v157;
        v153 = &v157[v150];
        v159 = vmulq_n_f64(v158, v197);
        if (v23 < 1)
        {
          v160 = 0;
          v161 = a8;
        }

        else
        {
          v160 = 0;
          v161 = a8;
          do
          {
            v162 = *v161;
            v163 = v161[1];
            v161 += 2;
            v164 = vmlaq_n_f64(v155[1], v163, v159.f64[0]);
            v165 = vmlaq_laneq_f64(*v156, v162, v159, 1);
            v166 = vmlaq_laneq_f64(v156[1], v163, v159, 1);
            *v155 = vmlaq_n_f64(*v155, v162, v159.f64[0]);
            v155[1] = v164;
            v155 += 2;
            *v156 = v165;
            v156[1] = v166;
            v156 += 2;
            v160 += 4;
          }

          while (v160 < v23);
        }

        while (v160 < v76)
        {
          v167 = *v161++;
          v168 = vmlaq_laneq_f64(*v156, v167, v159, 1);
          *v155 = vmlaq_n_f64(*v155, v167, v159.f64[0]);
          ++v155;
          *v156++ = v168;
          v160 += 2;
        }

        if (v160 < result)
        {
          v169 = (v154 + 8 * v160);
          v170 = (v152 + 8 * v160);
          f64 = a8[v160 / 2u].f64;
          v172 = result - v160;
          do
          {
            *v170 = *v170 + *f64 * a3[v149 * a4] * v197;
            ++v170;
            v173 = *f64++;
            *v169 = *v169 + v173 * a3[(v149 | 1) * a4] * v197;
            ++v169;
            --v172;
          }

          while (v172);
        }

        v149 += 2;
        v154 += v151;
        v152 += v151;
      }

      while (v149 < v148);
    }

    if (v149 < a2)
    {
      v174 = v149;
      v175 = a7;
      v176 = a6 + 8 * v149 * a7;
      v177 = 8 * a7;
      do
      {
        v178 = (a6 + 8 * v174 * v175);
        v179 = v197 * a3[v174 * a4];
        if (v22 < 1)
        {
          v180 = 0;
          v181 = a8;
        }

        else
        {
          v180 = 0;
          v181 = a8;
          do
          {
            v182 = *v181;
            v183 = v181[1];
            v184 = v181[2];
            v185 = v181[3];
            v181 += 4;
            v186 = vmlaq_n_f64(v178[1], v183, v179);
            v187 = vmlaq_n_f64(v178[2], v184, v179);
            v188 = vmlaq_n_f64(v178[3], v185, v179);
            *v178 = vmlaq_n_f64(*v178, v182, v179);
            v178[1] = v186;
            v178[2] = v187;
            v178[3] = v188;
            v178 += 4;
            v180 += 8;
          }

          while (v180 < v22);
        }

        while (v180 < v23)
        {
          v189 = *v181;
          v190 = v181[1];
          v181 += 2;
          v191 = vmlaq_n_f64(v178[1], v190, v179);
          *v178 = vmlaq_n_f64(*v178, v189, v179);
          v178[1] = v191;
          v178 += 2;
          v180 += 4;
        }

        while (v180 < v76)
        {
          v192 = *v181++;
          *v178 = vmlaq_n_f64(*v178, v192, v179);
          ++v178;
          v180 += 2;
        }

        if (v180 < result)
        {
          v193 = (v176 + 8 * v180);
          v194 = a8[v180 / 2u].f64;
          v195 = result - v180;
          do
          {
            v196 = *v194++;
            *v193 = *v193 + v196 * a3[v174 * a4] * v197;
            ++v193;
            --v195;
          }

          while (v195);
        }

        ++v174;
        v176 += v177;
      }

      while (v174 != a2);
    }
  }

  return result;
}

uint64_t sub_2367E3E64(int a1, uint64_t a2, char *a3, int *a4, int *a5, uint64_t a6)
{
  v47 = *MEMORY[0x277D85DE8];
  v11 = *(a6 + 4);
  if ((a1 & 0xFC) == 0x50)
  {
    v12 = 5;
  }

  else
  {
    v12 = 2;
  }

  if (*(a6 + 4))
  {
    v12 = *(a6 + 4);
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      LODWORD(v45) = *(a2 + 4);
      v28 = v45;
      v29 = (*(a6 + 24))(4 * v45 + 4);
      if (v29)
      {
        v30 = v29;
        if ((v45 & 0x80000000) == 0)
        {
          v31 = 0;
          v32 = *(a2 + 8);
          do
          {
            v29[v31] = *(v32 + 8 * v31);
          }

          while (v31++ < v28);
        }

        sub_236815220(&v45, v29, *(a2 + 16), a3, 0, a5, a4);
        (*(a6 + 32))(v30);
        goto LABEL_33;
      }

      if (*(a6 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", 4 * v45 + 4);
        goto LABEL_66;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v12 != 5)
      {
        if (!*(a6 + 40))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367E4508();
          }

          _SparseTrap();
        }

        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "The specified options.orderMethod (%d) is not supported for thisfactorization type (%d).\n", v11, a1);
        (*(a6 + 40))(__str);
        goto LABEL_33;
      }

      v18 = *(a2 + 4);
      LODWORD(v45) = v18;
      v19 = (*(a6 + 24))(4 * (v18 + 1));
      if (v19)
      {
        v20 = v19;
        if (v18 != -1)
        {
          v21 = 0;
          v22 = *(a2 + 8);
          do
          {
            *(v19 + 4 * v21) = *(v22 + 8 * v21);
            ++v21;
          }

          while (v21 < (v18 + 1));
        }

        v23 = sub_2366E59A8();
        sub_2366E6428(&v45, v20, *(a2 + 16), a3, v23, a5, a4);
        free(v23);
        (*(a6 + 32))(v20);
        goto LABEL_33;
      }

      if (*(a6 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", 4 * (v18 + 1));
        goto LABEL_66;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    sub_2367E43C8();
    goto LABEL_74;
  }

  if (v12 != 1)
  {
    v13 = *(a2 + 4);
    v14 = v13;
    if (a3)
    {
      if (v13 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = *(a2 + 4);
        v16 = a3;
        do
        {
          v17 = *v16;
          v16 += 4;
          v14 += v17;
          --v15;
        }

        while (v15);
      }
    }

    v45 = 0;
    if (_SparseAMDWorkspaceSizeWithOverflowCheck(v13, *(*(a2 + 8) + 8 * v13), v14, &v45))
    {
      v39 = *(a6 + 40);
      if (v39)
      {
        memset(&__str[44], 0, 212);
        strcpy(__str, "AMD workspace size calculation overflowed.\n");
LABEL_67:
        v39(__str);
        result = 0xFFFFFFFFLL;
        goto LABEL_75;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367E44C4();
      }

LABEL_74:
      _SparseTrap();
    }

    v40 = (*(a6 + 24))(v45);
    if (v40)
    {
      v41 = v40;
      v42 = *(a2 + 16);
      *__str = *a2;
      *&__str[16] = v42;
      _SparseAMD(__str, a3, 0, a5, v40);
      (*(a6 + 32))(v41);
      if (*(a2 + 4) >= 1)
      {
        v43 = 0;
        do
        {
          a4[a5[v43]] = v43;
          ++v43;
        }

        while (v43 < *(a2 + 4));
      }

      goto LABEL_33;
    }

    if (!*(a6 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367E4444(&v45);
      }

      goto LABEL_74;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v45);
LABEL_66:
    v39 = *(a6 + 40);
    goto LABEL_67;
  }

  v24 = *(a6 + 8);
  v25 = *(a2 + 4);
  if (v24)
  {
    if (v25 >= 1)
    {
      v26 = 0;
      do
      {
        a4[v26] = *(v24 + 4 * v26);
        ++v26;
        v27 = *(a2 + 4);
      }

      while (v26 < v27);
      goto LABEL_47;
    }
  }

  else if (v25 >= 1)
  {
    v37 = 0;
    do
    {
      a4[v37] = v37;
      ++v37;
      v27 = *(a2 + 4);
    }

    while (v37 < v27);
LABEL_47:
    if (v27 >= 1)
    {
      v38 = 0;
      do
      {
        a5[a4[v38]] = v38;
        ++v38;
      }

      while (v38 < *(a2 + 4));
    }
  }

LABEL_33:
  v34 = *(a6 + 8);
  if (v34 && *(a6 + 4) != 1 && *(a2 + 4) >= 1)
  {
    v35 = 0;
    do
    {
      *(v34 + 4 * v35) = a4[v35];
      ++v35;
    }

    while (v35 < *(a2 + 4));
  }

  result = 0;
LABEL_75:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2367E43C8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367E4444(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  sub_2366F7110();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2367E4508()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367E4598(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v8 = *a1;
  v7 = a1[1];
  *a3 = v7;
  *(a3 + 4) = v8;
  v9 = a1[6];
  v10 = (&a2[v8 + 1] + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a3 + 24) = 0;
  *(a3 + 32) = v10;
  *(a3 + 24) = v9;
  *(a3 + 28) = v5;
  v11 = *(a1 + 1);
  v12 = v10 + 8 * v6 * v11[v7];
  *(a3 + 8) = a2;
  *(a3 + 16) = v12;
  *(a3 + 24) = v9 ^ 2;
  v13 = a2 + 2;
  if (v8 >= 1)
  {
    bzero(v13, 8 * v8);
  }

  if (v7 >= 1)
  {
    v14 = 0;
    v15 = *v11;
    do
    {
      v16 = v11[++v14];
      if (v15 < v16)
      {
        v17 = *(a1 + 2);
        do
        {
          v18 = *(v17 + 4 * v15);
          if ((v18 & 0x80000000) == 0 && v18 < v8)
          {
            ++*(v13 + v18);
            v16 = v11[v14];
          }

          ++v15;
        }

        while (v15 < v16);
      }

      v15 = v16;
    }

    while (v14 != v7);
  }

  a2[1] = 0;
  v19 = a2 + 1;
  *a2 = 0;
  if (v8 > 1)
  {
    v20 = 0;
    v21 = v8 - 1;
    v22 = a2 + 2;
    do
    {
      v20 += *v22;
      *v22++ = v20;
      --v21;
    }

    while (v21);
  }

  if (v7 >= 1)
  {
    v23 = 0;
    v24 = 8 * v5;
    LODWORD(v25) = v5;
    v26 = v5;
    do
    {
      v27 = v23;
      v28 = v11[v23++];
      if (v28 < v11[v23])
      {
        do
        {
          v29 = *(*(a1 + 2) + 4 * v28);
          if ((v29 & 0x80000000) == 0 && v29 < *a1)
          {
            v30 = v19[v29];
            v19[v29] = v30 + 1;
            *(v12 + 4 * v30) = v27;
            if (v26)
            {
              v31 = 0;
              v32 = *(a1 + 4) + 8 * v28 * v6;
              v33 = v10 + 4 + 8 * v6 * v30;
              do
              {
                if (v25)
                {
                  v34 = 0;
                  v35 = v33;
                  do
                  {
                    v36 = v32 + 8 * v31 + 8 * (v34 * v25);
                    v37 = -*(v36 + 4);
                    *(v35 - 1) = *v36;
                    *v35 = v37;
                    ++v34;
                    v25 = *(a1 + 28);
                    v35 += 2;
                    LODWORD(v5) = *(a1 + 28);
                  }

                  while (v34 < v25);
                }

                else
                {
                  v25 = v5;
                }

                ++v31;
                v33 += v24;
                v38 = v31 >= v25;
                LODWORD(v25) = v5;
              }

              while (!v38);
              v11 = *(a1 + 1);
              LODWORD(v25) = v5;
              v26 = v5;
            }
          }

          ++v28;
        }

        while (v28 < v11[v23]);
        LODWORD(v7) = a1[1];
      }
    }

    while (v23 < v7);
  }
}

uint64_t _SparseNumericFactorQR_Complex_Float@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v12 = a1[2];
  *(a6 + 56) = a1[3];
  *(a6 + 40) = v12;
  v13 = *a1;
  *(a6 + 24) = a1[1];
  v14 = *(a1 + 17);
  v16 = *a2;
  v15 = *(a2 + 4);
  v17 = *(a2 + 28);
  *a6 = -3;
  *(a6 + 8) = v13;
  *(a6 + 72) = 1;
  *(a6 + 88) = 0;
  v18 = (a6 + 88);
  *(a6 + 96) = 0;
  v19 = (a6 + 96);
  *(a6 + 80) = 0;
  v20 = *(a1 + 3);
  atomic_fetch_add((v20 + 48), 1u);
  if (*(a1 + 17) == 40)
  {
    if (*(a2 + 4) <= *a2)
    {
      v21 = *a2;
    }

    else
    {
      v21 = *(a2 + 4);
    }

    v27 = v15;
    v28 = v14;
    sub_23678B078(v21 * *(a2 + 28), *(a1 + 3), v18, v19);
    v15 = v27;
    v14 = v28;
    v22 = 2 * v21;
    v6 = a5;
    v23 = *v19 + 8 * *(a2 + 28) * v22;
  }

  else
  {
    *v18 = 0;
    v23 = 16 * *(a2 + 4) * *(a2 + 28);
  }

  if (v16 >= v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = v16;
  }

  *(a6 + 96) = v23;
  *(a6 + 80) = sub_236796F24(v14, v24 * v17, v20, 2 * *(a1 + 6), v20, a3, a4);

  return _SparseRefactorQR_Complex_Float(a2, a6, v25, v6);
}

uint64_t _SparseRefactorQR_Complex_Float(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  *a2 = -3;
  v7 = *(a2 + 32);
  v8 = (*(a1 + 24) >> 2) & 7;
  if (v8 <= 1)
  {
    if (v8)
    {
      result = sub_2367E6A60(a1, *(a2 + 32));
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (*(v7 + 53) != 1)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v11 = *(a1 + 16);
      v16 = *a1;
      v17 = v11;
      v18 = *(a1 + 32);
      result = sub_2367E674C(&v16, v7);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    v9 = *(a2 + 32);
    if (v8 == 2)
    {
      result = sub_2367E6DC4(a1, v9);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_2367E71B8(a1, v9);
      if (!result)
      {
        return result;
      }
    }
  }

  v6 = result;
  v12 = 1;
LABEL_13:
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  if (*(v7 + 52))
  {
    v13 = *(v6 + 1);
    v16 = *v6;
    v17 = v13;
    v18 = *(v6 + 4);
    v14 = a4;
  }

  else
  {
    sub_2367E4598(v6, a4, &v16);
    v15 = *(*(v6 + 1) + 8 * v6[1]);
    v14 = (&a4[*v6 + 3 + v15 * BYTE12(v17) * BYTE12(v17)] + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  result = sub_2367E785C(*(a2 + 25), &v16, v7, *(a2 + 80), v14, a4 + 2 * *(a2 + 40) - v14);
  *a2 = result;
  if (v12)
  {
    return (*(v7 + 32))(v6);
  }

  return result;
}

uint64_t _SparseFactorQR_Complex_Float@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v414 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24);
  if (v10 & 0x20) == 0 && (v10)
  {
    v11 = *(a3 + 40);
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EBF0();
      }

      _SparseTrap();
    }

    memset(&__str[68], 0, 188);
    strcpy(__str, "QR factorization can only factor matrix or its conjugate transpose\n");
    v11(__str);
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = -3;
  v12 = *a2;
  v13 = *(a2 + 4);
  *(a5 + 8) = -3;
  *(a5 + 12) = v12;
  *(a5 + 16) = v13;
  v14 = *(a2 + 24);
  *(a5 + 20) = *(a2 + 24) & 1;
  *(a5 + 24) = *(a2 + 28);
  v15 = (v14 >> 2) & 7;
  *(a5 + 25) = a1;
  if (v15 <= 1)
  {
    if (v15)
    {
      result = sub_2367E6A60(a2, v6);
      if (!result)
      {
        goto LABEL_235;
      }
    }

    else
    {
      v17 = *(a2 + 16);
      *__str = *a2;
      *&__str[16] = v17;
      *&__str[32] = *(a2 + 32);
      result = sub_2367E674C(__str, v6);
      if (!result)
      {
        goto LABEL_235;
      }
    }
  }

  else if (v15 == 2)
  {
    result = sub_2367E6DC4(a2, v6);
    if (!result)
    {
      goto LABEL_235;
    }
  }

  else
  {
    result = sub_2367E71B8(a2, v6);
    if (!result)
    {
      goto LABEL_235;
    }
  }

  v18 = result;
  v19 = 8 * v12 + 16;
  v20 = v19 + 4 * *(*(result + 8) + 8 * v13);
  v21 = (*(v6 + 24))(v20);
  if (v21)
  {
    v22 = v21;
    v384 = v13;
    v385 = a4;
    v386 = a1;
    v397 = a5;
    v410 = 0u;
    v411 = 0u;
    v23 = v18[1];
    *__str = *v18;
    *&__str[16] = v23;
    _SparseFromStructureComplex(__str, &v410);
    v24 = DWORD1(v410);
    v25 = v410;
    v404 = DWORD1(v410);
    v405 = v410;
    v26 = &v22[v410 + 1];
    v406 = v22;
    v407 = v26;
    v408 = DWORD2(v411);
    v409 = BYTE12(v411);
    if (v410 >= 1)
    {
      bzero(v22 + 2, 8 * v410);
    }

    if (v24 >= 1)
    {
      v27 = 0;
      v28 = *(&v410 + 1);
      v29 = v411;
      v30 = **(&v410 + 1);
      do
      {
        ++v27;
        v31 = *(v28 + 8 * v27);
        while (v30 < v31)
        {
          v32 = *(v29 + 4 * v30);
          if ((v32 & 0x80000000) == 0 && v32 < v25)
          {
            ++v22[v32 + 2];
            v31 = *(v28 + 8 * v27);
          }

          ++v30;
        }

        v30 = v31;
      }

      while (v27 != v24);
    }

    v22[1] = 0;
    v33 = v22 + 1;
    *v22 = 0;
    if (v25 > 1)
    {
      v34 = 0;
      v35 = v25 - 1;
      v36 = v22 + 2;
      do
      {
        v34 += *v36;
        *v36++ = v34;
        --v35;
      }

      while (v35);
    }

    if (v24 >= 1)
    {
      v37 = 0;
      v38 = *(&v410 + 1);
      v39 = v411;
      v40 = **(&v410 + 1);
      do
      {
        v41 = v37++;
        v42 = *(v38 + 8 * v37);
        if (v40 < v42)
        {
          do
          {
            v43 = *(v39 + 4 * v40);
            if ((v43 & 0x80000000) == 0 && v43 < v410)
            {
              v44 = v33[v43];
              v33[v43] = v44 + 1;
              *(v26 + 4 * v44) = v41;
              v42 = *(v38 + 8 * v37);
            }

            ++v40;
          }

          while (v40 < v42);
          LODWORD(v24) = DWORD1(v410);
        }

        v40 = v42;
      }

      while (v37 < v24);
    }

    v399 = v22;
    v400 = v6;
    v383 = v19;
    v45 = BYTE12(v411);
    v46 = DWORD2(v411);
    if (BYTE8(v411))
    {
      v47 = DWORD1(v410);
    }

    else
    {
      v47 = v410;
    }

    if (BYTE8(v411))
    {
      v48 = v410;
    }

    else
    {
      v48 = DWORD1(v410);
    }

    v49 = BYTE12(v411) * v47;
    v50 = BYTE12(v411) * v48;
    if (*(v6 + 16))
    {
      v51 = v50 + v49 + 4 * (v50 + v49 + v410 + DWORD1(v410) + 2) + 48;
      v52 = (*(v6 + 24))(v51);
      if (!v52)
      {
        if (!*(v6 + 40))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672EC38();
          }

          _SparseTrap();
        }

        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v51);
        (*(v6 + 40))(__str);
        v84 = v22;
        *v397 = -3;
        goto LABEL_233;
      }

      v53 = v52;
      v54 = &v52[v51];
      v55 = (&v52[v49 + 7] & 0xFFFFFFFFFFFFFFF8);
      if (v54 < v55)
      {
        goto LABEL_466;
      }

      v393 = v18;
      v56 = (v55 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v56)
      {
        goto LABEL_466;
      }

      v377 = a2;
      v57 = (v56 + 4 * v49 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v57)
      {
        goto LABEL_466;
      }

      v58 = (v57 + 4 * v50 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v58)
      {
        goto LABEL_466;
      }

      v59 = (v58 + 4 * v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v59 || v54 < ((v59 + 4 * v48 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }

      v60 = BYTE12(v411);
      v46 = DWORD2(v411);
      if (BYTE8(v411))
      {
        v61 = DWORD1(v410);
      }

      else
      {
        v61 = v410;
      }

      if (BYTE8(v411))
      {
        v62 = v410;
      }

      else
      {
        v62 = DWORD1(v410);
      }

      v50 = BYTE12(v411) * v62;
      if (*(v400 + 16))
      {
        v389 = v62;
        v391 = *(v400 + 16);
        v394 = BYTE12(v411) * v61;
        bzero(v52, BYTE12(v411) * v61);
        bzero(v55, v50);
        if (v61 >= 1)
        {
          v63 = (v61 + 3) & 0xFFFFFFFC;
          v64 = vdupq_n_s64(v61 - 1);
          v65 = xmmword_23681F910;
          v66 = xmmword_23681F920;
          v67 = (v58 + 8);
          v68 = vdupq_n_s64(4uLL);
          do
          {
            v69 = vmovn_s64(vcgeq_u64(v64, v66));
            if (vuzp1_s16(v69, *v64.i8).u8[0])
            {
              *(v67 - 2) = v60;
            }

            if (vuzp1_s16(v69, *&v64).i8[2])
            {
              *(v67 - 1) = v60;
            }

            if (vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, *&v65))).i32[1])
            {
              *v67 = v60;
              v67[1] = v60;
            }

            v65 = vaddq_s64(v65, v68);
            v66 = vaddq_s64(v66, v68);
            v67 += 4;
            v63 -= 4;
          }

          while (v63);
        }

        if (v389 >= 1)
        {
          v70 = (v389 + 3) & 0xFFFFFFFC;
          v71 = vdupq_n_s64(v389 - 1);
          v72 = xmmword_23681F910;
          v73 = xmmword_23681F920;
          v74 = (v59 + 8);
          v75 = vdupq_n_s64(4uLL);
          do
          {
            v76 = vmovn_s64(vcgeq_u64(v71, v73));
            if (vuzp1_s16(v76, *v71.i8).u8[0])
            {
              *(v74 - 2) = v60;
            }

            if (vuzp1_s16(v76, *&v71).i8[2])
            {
              *(v74 - 1) = v60;
            }

            if (vuzp1_s16(*&v71, vmovn_s64(vcgeq_u64(v71, *&v72))).i32[1])
            {
              *v74 = v60;
              v74[1] = v60;
            }

            v72 = vaddq_s64(v72, v75);
            v73 = vaddq_s64(v73, v75);
            v74 += 4;
            v70 -= 4;
          }

          while (v70);
        }

        v77 = *v391;
        if (*v391 < 0)
        {
          v79 = 0;
          v78 = 0;
        }

        else
        {
          v78 = 0;
          v79 = 0;
          v80 = v391 + 1;
          do
          {
            v81 = v77 - v394;
            if (v77 >= v394)
            {
              *(v57 + 4 * v79++) = v81;
              *(v55 + v81) = 1;
              v82 = (v59 + 4 * (v81 / v60));
            }

            else
            {
              *(v56 + 4 * v78++) = v77;
              v53[v77] = 1;
              v82 = (v58 + 4 * (v77 / v60));
            }

            --*v82;
            v83 = *v80++;
            v77 = v83;
          }

          while ((v83 & 0x80000000) == 0);
        }

        if (BYTE8(v411))
        {
          if (v405 >= 1)
          {
            v85 = 0;
            v86 = 0;
            v87 = v406;
            v88 = v407;
            do
            {
              if (*(v59 + 4 * v86))
              {
                v89 = &v87[v86];
                v91 = *v89;
                v90 = v89[1];
                v162 = v90 <= v91;
                v92 = v90 - v91;
                if (v162)
                {
LABEL_108:
                  *(v59 + 4 * v86) = 0;
                  if (v60)
                  {
                    v96 = v85;
                    v97 = v60;
                    do
                    {
                      if ((*(v55 + v96) & 1) == 0)
                      {
                        *(v57 + 4 * v79++) = v96;
                      }

                      *(v55 + v96++) = 1;
                      --v97;
                    }

                    while (v97);
                  }
                }

                else
                {
                  v93 = (v88 + 4 * v91);
                  while (1)
                  {
                    v95 = *v93++;
                    v94 = v95;
                    if ((v95 & 0x80000000) == 0 && v94 < v404 && *(v58 + 4 * v94))
                    {
                      break;
                    }

                    if (!--v92)
                    {
                      goto LABEL_108;
                    }
                  }
                }
              }

              ++v86;
              v85 += v60;
            }

            while (v86 < v405);
          }

          if (SDWORD1(v410) >= 1)
          {
            v98 = 0;
            v99 = 0;
            v100 = *(&v410 + 1);
            v101 = v411;
            do
            {
              if (*(v58 + 4 * v99))
              {
                v102 = (v100 + 8 * v99);
                v104 = *v102;
                v103 = v102[1];
                v162 = v103 <= v104;
                v105 = v103 - v104;
                if (v162)
                {
LABEL_123:
                  *(v58 + 4 * v99) = 0;
                  if (v60)
                  {
                    v109 = v98;
                    v110 = v60;
                    do
                    {
                      if ((v53[v109] & 1) == 0)
                      {
                        *(v56 + 4 * v78++) = v109;
                      }

                      v53[v109++] = 1;
                      --v110;
                    }

                    while (v110);
                  }
                }

                else
                {
                  v106 = (v101 + 4 * v104);
                  while (1)
                  {
                    v108 = *v106++;
                    v107 = v108;
                    if ((v108 & 0x80000000) == 0 && v107 < v410 && *(v59 + 4 * v107))
                    {
                      break;
                    }

                    if (!--v105)
                    {
                      goto LABEL_123;
                    }
                  }
                }
              }

              ++v99;
              v98 += v60;
            }

            while (v99 < SDWORD1(v410));
          }
        }

        else
        {
          if (SDWORD1(v410) >= 1)
          {
            v111 = 0;
            v112 = 0;
            v113 = *(&v410 + 1);
            v114 = v411;
            do
            {
              if (*(v59 + 4 * v112))
              {
                v115 = (v113 + 8 * v112);
                v117 = *v115;
                v116 = v115[1];
                v162 = v116 <= v117;
                v118 = v116 - v117;
                if (v162)
                {
LABEL_139:
                  *(v59 + 4 * v112) = 0;
                  if (v60)
                  {
                    v122 = v111;
                    v123 = v60;
                    do
                    {
                      if ((*(v55 + v122) & 1) == 0)
                      {
                        *(v57 + 4 * v79++) = v122;
                      }

                      *(v55 + v122++) = 1;
                      --v123;
                    }

                    while (v123);
                  }
                }

                else
                {
                  v119 = (v114 + 4 * v117);
                  while (1)
                  {
                    v121 = *v119++;
                    v120 = v121;
                    if ((v121 & 0x80000000) == 0 && v120 < v410 && *(v58 + 4 * v120))
                    {
                      break;
                    }

                    if (!--v118)
                    {
                      goto LABEL_139;
                    }
                  }
                }
              }

              ++v112;
              v111 += v60;
            }

            while (v112 < SDWORD1(v410));
          }

          if (v405 >= 1)
          {
            v124 = 0;
            v125 = 0;
            v126 = v406;
            v127 = v407;
            do
            {
              if (*(v58 + 4 * v125))
              {
                v128 = &v126[v125];
                v130 = *v128;
                v129 = v128[1];
                v162 = v129 <= v130;
                v131 = v129 - v130;
                if (v162)
                {
LABEL_154:
                  *(v58 + 4 * v125) = 0;
                  if (v60)
                  {
                    v135 = v124;
                    v136 = v60;
                    do
                    {
                      if ((v53[v135] & 1) == 0)
                      {
                        *(v56 + 4 * v78++) = v135;
                      }

                      v53[v135++] = 1;
                      --v136;
                    }

                    while (v136);
                  }
                }

                else
                {
                  v132 = (v127 + 4 * v130);
                  while (1)
                  {
                    v134 = *v132++;
                    v133 = v134;
                    if ((v134 & 0x80000000) == 0 && v133 < v404 && *(v59 + 4 * v133))
                    {
                      break;
                    }

                    if (!--v131)
                    {
                      goto LABEL_154;
                    }
                  }
                }
              }

              ++v125;
              v124 += v60;
            }

            while (v125 < v405);
          }
        }

        LODWORD(v49) = v394 - v78;
        LODWORD(v50) = v50 - v79;
        *(v56 + 4 * v78) = -1;
        *(v57 + 4 * v79) = -1;
        v46 = DWORD2(v411);
      }

      else
      {
        LODWORD(v49) = BYTE12(v411) * v61;
      }
    }

    else
    {
      v377 = a2;
      v393 = v18;
      v56 = 0;
      v57 = 0;
      v59 = 0;
      v58 = 0;
      v55 = 0;
      v53 = 0;
    }

    v137 = (v46 ^ (v49 < v50)) & 1;
    if (v49 < v50)
    {
      v138 = v50;
    }

    else
    {
      v138 = v49;
    }

    if (v49 < v50)
    {
      v139 = v49;
    }

    else
    {
      v139 = v50;
    }

    if (v49 < v50)
    {
      v140 = v53;
    }

    else
    {
      v140 = v55;
    }

    if (v49 < v50)
    {
      v141 = v59;
    }

    else
    {
      v141 = v58;
    }

    v380 = v141;
    __src = v140;
    if (v49 < v50)
    {
      v142 = v58;
    }

    else
    {
      v142 = v59;
    }

    if (v49 < v50)
    {
      v143 = v56;
    }

    else
    {
      v143 = v57;
    }

    if (v49 < v50)
    {
      v56 = v57;
    }

    v144 = &v404;
    if (v137)
    {
      v145 = &v410;
    }

    else
    {
      v145 = &v404;
    }

    if (v137)
    {
      v146 = &v404;
    }

    else
    {
      v146 = &v410;
    }

    v390 = v138;
    v392 = v139;
    if (v138 < v139)
    {
      goto LABEL_466;
    }

    v387 = v146;
    v388 = *v146;
    v395 = v137;
    if (!v137)
    {
      v144 = &v410;
    }

    *v398 = *(v144 + 1);
    v147 = v398[0] * v45;
    v148 = v147 + 8;
    v149 = v400;
    if (!*(v400 + 16))
    {
      v148 = 0;
    }

    v150 = v148 + 4 * v147 + 224;
    v151 = (*(v400 + 24))(v150);
    if (!v151)
    {
      if (!*(v400 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672EC38();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v150);
      (*(v400 + 40))(__str);
      v152 = 0;
      *v397 = -3;
LABEL_351:
      if (*(v149 + 16))
      {
        (*(v149 + 32))(v53);
      }

      v303 = *(v149 + 32);
      v182 = (v149 + 32);
      v303(v399);
      if (v152)
      {
        v304 = *(v393 + 28);
        if (*v393 >= *(v393 + 1))
        {
          v305 = *(v393 + 1);
        }

        else
        {
          v305 = *v393;
        }

        v306 = v410;
        v307 = BYTE12(v411);
        if (*(v152 + 52))
        {
          v308 = 0;
          v309 = 0;
        }

        else
        {
          v311 = 8 * (v410 + 2);
          v312 = v311 + 8;
          v313 = v311 >= 0xFFFFFFFFFFFFFFF8;
          if ((v410 + 2) >> 61 || v313)
          {
            goto LABEL_374;
          }

          v306 = DWORD1(v410);
          v314 = *(*(&v410 + 1) + 8 * SDWORD1(v410));
          v309 = v312 + 4 * v314;
          v315 = __CFADD__(v312, 4 * v314);
          if (v314 >> 62 || v315 || !is_mul_ok(v314, 8 * BYTE12(v411) * BYTE12(v411)))
          {
            goto LABEL_374;
          }

          v308 = v314 * 8 * BYTE12(v411) * BYTE12(v411);
        }

        if (v386 == 40)
        {
          v310 = 0;
        }

        else
        {
          v310 = *(v152 + 168);
        }

        v316 = *(v152 + 184);
        v317 = v316 + v310;
        if (!__CFADD__(v316, v310))
        {
          *__str = 1;
          LODWORD(v401) = -1;
          v412 = 10000;
          v319 = ilaenv_NEWLAPACK();
          v320 = v386 == 40 ? v319 : v319 + 1;
          v321 = *(v152 + 176);
          v322 = !is_mul_ok(v320, v321);
          v323 = v320 * v321;
          v324 = __CFADD__(v317, v323);
          v325 = v317 + v323;
          v326 = v324;
          if (!v322 && !v326)
          {
            v324 = __CFADD__(v325, v308);
            v327 = v325 + v308;
            if (!v324)
            {
              v328 = v306 * v307;
              v329 = v309 + 4 * v328;
              v330 = __CFADD__(v309, 4 * v328);
              if (!(v328 >> 62) && !v330)
              {
                v331 = *(v152 + 88);
                v324 = __CFADD__(v329, 8 * v331);
                v332 = v329 + 8 * v331;
                v333 = v324;
                if ((v331 & 0x80000000) == 0 && !v333)
                {
                  v324 = __CFADD__(v332, 40);
                  v334 = v332 + 40;
                  if (!v324)
                  {
                    if ((v321 & 0x80000000) == 0)
                    {
                      v335 = *(v152 + 176);
                    }

                    else
                    {
                      v335 = -v321;
                    }

                    v336 = 2 * v335;
                    if ((v321 & 0x80000000) != 0)
                    {
                      v336 = -v336;
                    }

                    v324 = __CFADD__(v334, v336);
                    v337 = v334 + v336;
                    v338 = v324;
                    if ((v321 & 0x80000000) == 0 && !v338)
                    {
                      v339 = v337 + 4 * v327;
                      v340 = __CFADD__(v337, 4 * v327);
                      *(v397 + 40) = v339;
                      if (!(v327 >> 62) && !v340)
                      {
                        v341 = v337 + 8 * v327;
                        v342 = __CFADD__(v337, 8 * v327);
                        *(v397 + 48) = v341;
                        if (!(v327 >> 61) && !v342)
                        {
                          if (v386 == 40)
                          {
                            v343 = (v152 + 72);
                            v344 = *(v152 + 88);
                            v345 = *(*(v152 + 104) + 8 * v344);
                          }

                          else
                          {
                            v345 = 0;
                            v343 = (v152 + 80);
                            LODWORD(v344) = *(v152 + 88);
                          }

                          v346 = v344 + 1;
                          if (v344 >= -1)
                          {
                            v347 = v344 + 1;
                          }

                          else
                          {
                            v347 = -v346;
                          }

                          v348 = 8 * v347;
                          if (v344 < -1)
                          {
                            v348 = -8 * v347;
                          }

                          v324 = __CFADD__(v348, 96);
                          v349 = v348 + 96;
                          v350 = v324;
                          if (v344 >= -1 && !(v347 >> 61) && !v350)
                          {
                            v351 = 8 * v346 + 96;
                            if ((8 * v346) < 0xFFFFFFFFFFFFFFA0)
                            {
                              v352 = v304 * v305;
                              v353 = *v343;
                              v324 = __CFADD__(v353, v345);
                              v354 = v353 + v345;
                              v355 = v324;
                              v324 = __CFADD__(v352, v354);
                              v356 = v352 + v354;
                              v357 = v324;
                              if (!v355 && !v357)
                              {
                                v358 = *(v152 + 176);
                                if (v358 >= 0)
                                {
                                  v359 = *(v152 + 176);
                                }

                                else
                                {
                                  v359 = -v358;
                                }

                                v360 = 2 * v359;
                                if (v358 < 0)
                                {
                                  v360 = -v360;
                                }

                                v324 = __CFADD__(v356, v360);
                                v361 = v356 + v360;
                                v362 = v324;
                                if ((v358 & 0x80000000) == 0 && !v362)
                                {
                                  v363 = v349 + 4 * v361;
                                  v364 = __CFADD__(v349, 4 * v361);
                                  *(v397 + 56) = v363;
                                  if (!(v361 >> 62) && !v364)
                                  {
                                    v365 = __CFADD__(v351, 8 * v361);
                                    *(v397 + 64) = v351 + 8 * v361;
                                    if (!(v361 >> 61) && !v365)
                                    {
                                      *(v397 + 32) = v152;
                                      *(v397 + 8) = 0;
                                      v366 = 2 * v339;
                                      v367 = (*(v400 + 24))(2 * v339);
                                      if (v367)
                                      {
                                        v368 = v367;
                                        v403 = 0;
                                        v401 = 0u;
                                        v402 = 0u;
                                        if (*(v152 + 52))
                                        {
                                          v401 = *v393;
                                          v402 = v393[1];
                                          v403 = *(v393 + 4);
                                          v369 = v367;
                                        }

                                        else
                                        {
                                          sub_2367E4598(v393, v367, &v401);
                                          v370 = *(*(v393 + 1) + 8 * v384);
                                          v369 = (&v368[v370 * BYTE12(v402) * BYTE12(v402) + 1] + 4 * v370 + v383 + 7) & 0xFFFFFFFFFFFFFFF8;
                                        }

                                        v371 = sub_236796F24(v386, v352, v152, 2 * v363, v152, v385, 0);
                                        *(v397 + 80) = v371;
                                        if (v371)
                                        {
                                          *v397 = sub_2367E785C(v386, &v401, v152, v371, v369, v368 + v366 - v369);
                                          if (v386 == 40)
                                          {
                                            if (*(v393 + 1) <= *v393)
                                            {
                                              v372 = *v393;
                                            }

                                            else
                                            {
                                              v372 = *(v393 + 1);
                                            }

                                            sub_23678B078(v372 * *(v393 + 28), v152, (v397 + 88), (v397 + 96));
                                            *(v397 + 96) += 8 * *(v377 + 28) * (2 * v372);
                                          }

                                          else
                                          {
                                            *(v397 + 88) = 0;
                                            *(v397 + 96) = 8 * *(v393 + 1) * *(v393 + 28);
                                          }
                                        }

                                        else
                                        {
                                          if (!*(v400 + 40))
                                          {
                                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                            {
                                              sub_23672ECA8();
                                            }

                                            _SparseTrap();
                                          }

                                          memset(__str, 0, 256);
                                          snprintf(__str, 0x100uLL, "Failed to allocate space for QR factors of size %ld.", 2 * v363);
                                          (*(v400 + 40))(__str);
                                        }

                                        (*v182)(v368);
                                      }

                                      else
                                      {
                                        if (!*(v400 + 40))
                                        {
                                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                          {
                                            sub_23672ED18();
                                          }

                                          _SparseTrap();
                                        }

                                        memset(__str, 0, 256);
                                        snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld for QR Numeric factorization.", v366);
                                        (*(v400 + 40))(__str);
                                      }

LABEL_379:
                                      result = (*v182)(v393);
                                      goto LABEL_235;
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

LABEL_374:
        v318 = *(v400 + 40);
        if (!v318)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672ED88();
          }

          _SparseTrap();
        }

        memset(&__str[70], 0, 186);
        strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
        v318(__str);
        (*v182)(v152);
        goto LABEL_379;
      }

      v18 = v393;
      goto LABEL_234;
    }

    v152 = v151;
    v153 = v151 + v150;
    v154 = (v151 + 215) & 0xFFFFFFFFFFFFFFF8;
    if (v151 + v150 < v154)
    {
      goto LABEL_466;
    }

    v155 = (v154 + 4 * v147 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v153 < v155)
    {
      goto LABEL_466;
    }

    v378 = v145;
    if (*(v400 + 16))
    {
      if (v153 < ((v155 + v147 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }
    }

    else
    {
      v155 = 0;
    }

    v156 = *v400;
    v157 = *(v400 + 32);
    *(v151 + 16) = *(v400 + 16);
    *(v151 + 32) = v157;
    *v151 = v156;
    *(v151 + 48) = 1;
    *(v151 + 52) = v395;
    *(v151 + 56) = v390;
    *(v151 + 60) = v392;
    *(v151 + 96) = 0u;
    v376 = (v151 + 96);
    *(v151 + 72) = 0;
    *(v151 + 80) = 0;
    *(v151 + 64) = v154;
    *(v151 + 88) = 0;
    v158 = 5 * v398[0] + 2 * v388;
    *(v151 + 112) = 0u;
    v159 = v388 - v398[0] + 8 * v398[0];
    v160 = v159 + 5;
    v161 = v159 + 2;
    *(v151 + 128) = 0;
    *(v151 + 136) = v388 * v45;
    v162 = v158 <= v160;
    if (v158 > v160)
    {
      v163 = v158 + 1;
    }

    else
    {
      v163 = v161;
    }

    v164 = 56;
    if (!v162)
    {
      v164 = 40;
    }

    *(v151 + 144) = 0uLL;
    v375 = (v151 + 144);
    *(v151 + 160) = 0uLL;
    *(v151 + 176) = 0;
    *(v151 + 184) = 0;
    *(v151 + 192) = 0;
    *(v151 + 200) = v155;
    v379 = v164 + 4 * v163;
    v165 = v379 + 12 * v398[0] + 24;
    v166 = (*(v400 + 24))(v165);
    if (v166)
    {
      v167 = v166;
      v373 = v56;
      v168 = v166 + v165;
      v169 = (v166 + 4 * v398[0] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v166 + v165 < v169)
      {
        goto LABEL_466;
      }

      v170 = 4 * v398[0];
      v171 = (v169 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v168 < v171)
      {
        goto LABEL_466;
      }

      v374 = ((v169 + v170 + 7) & 0xFFFFFFFFFFFFFFF8);
      v172 = ((v171 + v170 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v168 < v172 || v168 < (&v172[v379 + 7] & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_466;
      }

      if (*(v400 + 16))
      {
        memcpy(*(v152 + 200), __src, v147);
      }

      v173 = 1 << *(v400 + 4);
      if ((v173 & 0x2C) != 0)
      {
        memset(__str, 0, 32);
        v149 = v400;
        sub_236752DB4(0, v387, v400, __str);
        v174 = *(v152 + 64);
        v401 = *__str;
        v402 = *&__str[16];
        v175 = sub_2367E3E64(v386, &v401, 0, v167, v174, v400);
        (*(v400 + 32))(*&__str[8]);
        if (!v175)
        {
          v176 = *(v152 + 64);
          goto LABEL_252;
        }
      }

      else
      {
        if ((v173 & 0x11) == 0)
        {
          v184 = *(v400 + 8);
          v176 = *(v152 + 64);
          if (v184)
          {
            if (v398[0] < 1)
            {
              goto LABEL_252;
            }

            v185 = 0;
            do
            {
              *(v176 + 4 * *(v184 + 4 * v185)) = v185;
              ++v185;
            }

            while (v398[0] != v185);
          }

          else
          {
            if (v398[0] < 1)
            {
              goto LABEL_252;
            }

            v186 = 0;
            v187 = vdupq_n_s64(v398[0] - 1);
            v188 = xmmword_23681F910;
            v189 = xmmword_23681F920;
            v190 = (v176 + 8);
            v191 = vdupq_n_s64(4uLL);
            do
            {
              v192 = vmovn_s64(vcgeq_u64(v187, v189));
              if (vuzp1_s16(v192, *v187.i8).u8[0])
              {
                *(v190 - 2) = v186;
              }

              if (vuzp1_s16(v192, *&v187).i8[2])
              {
                *(v190 - 1) = v186 + 1;
              }

              if (vuzp1_s16(*&v187, vmovn_s64(vcgeq_u64(v187, *&v188))).i32[1])
              {
                *v190 = v186 + 2;
                v190[1] = v186 + 3;
              }

              v186 += 4;
              v188 = vaddq_s64(v188, v191);
              v189 = vaddq_s64(v189, v191);
              v190 += 4;
            }

            while (((v398[0] + 3) & 0xFFFFFFFC) != v186);
          }

          v193 = 0;
          do
          {
            v167[*(v176 + 4 * v193)] = v193;
            ++v193;
          }

          while (v398[0] != v193);
LABEL_252:
          v194 = *(v387 + 16);
          *__str = *v387;
          *&__str[16] = v194;
          sub_236768978(__str, v380, v142, v167, v176, v374, v172, &v172[4 * v398[0]]);
          sub_236750DDC(*v398, v374, v167, *(v152 + 64), v172);
          v195 = *(v152 + 64);
          v196 = v378[1];
          *__str = *v378;
          *&__str[16] = v196;
          sub_2366EE0E8(__str, v380, v142, v167, v195, v374, v169, v172, &v172[16 * v398[0]]);
          v197 = sub_236768200(v387, v380, v142, v167, *(v152 + 64), v374, v169, v172, v400, &v172[4 * v398[0] + 4]);
          *(v152 + 88) = v197;
          *(v152 + 80) = 0;
          if (v398[0] < 1)
          {
            v198 = 0;
            v201 = v390;
          }

          else
          {
            v198 = 0;
            v199 = v398[0];
            v200 = v169;
            v201 = v390;
            do
            {
              v202 = *v200++;
              v198 += v202;
              --v199;
            }

            while (v199);
            *(v152 + 80) = v198;
          }

          if (v197 < 1)
          {
            v203 = 0;
          }

          else
          {
            v203 = 0;
            v204 = v197;
            v205 = (v172 + 4);
            v206 = *v172;
            v207 = v169;
            do
            {
              v209 = *v207++;
              v208 = v209;
              v210 = *v205++;
              v203 += v208 * v45;
              v198 += v208 * (v210 - v206);
              v206 = v210;
              --v204;
            }

            while (v204);
            *(v152 + 80) = v198;
          }

          __srca = v201;
          v396 = 8 * (v201 - v392 + v203);
          v211 = v396 + 12 * v197 + 8 * (v203 + 2 * v197 + 2) + 44;
          v212 = (*(v400 + 24))(v211);
          if (v212)
          {
            v213 = v212 + v211;
            v214 = *(v152 + 88);
            v215 = v214 + 1;
            v216 = (v212 + 4 * (v214 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v212 + v211 >= v216)
            {
              *v376 = v212;
              v217 = v216 + 8 * v215;
              if (v217 <= v213)
              {
                *(v152 + 104) = v216;
                v218 = (v217 + 4 * v203 + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v213 >= v218)
                {
                  *(v152 + 112) = v217;
                  v219 = (v218 + 4 * v203 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v213 >= v219)
                  {
                    *v375 = v218;
                    v220 = v219 + 8 * v215;
                    if (v220 <= v213)
                    {
                      *(v152 + 120) = v219;
                      v221 = v220 + v396;
                      if (v220 + v396 <= v213)
                      {
                        *(v152 + 128) = v220;
                        v222 = (v221 + 4 * v214 + 15) & 0xFFFFFFFFFFFFFFF8;
                        if (v213 >= v222)
                        {
                          *(v152 + 152) = v221;
                          if (v213 >= ((v222 + 4 * v214 + 7) & 0xFFFFFFFFFFFFFFF8))
                          {
                            *(v152 + 160) = v222;
                            if ((v214 & 0x80000000) == 0)
                            {
                              v223 = 0;
                              do
                              {
                                *(v212 + 4 * v223) = *&v172[4 * v223];
                                v162 = v223++ < *(v152 + 88);
                              }

                              while (v162);
                              v214 = *(v152 + 88);
                            }

                            sub_236812888(v214, v374, v221, v222);
                            v224 = *(v152 + 88);
                            if (v224 < 1)
                            {
                              v226 = 0;
                              v229 = v388 * v45;
                            }

                            else
                            {
                              v225 = 0;
                              v226 = 0;
                              v227 = *(v152 + 152);
                              v228 = *v227;
                              v229 = v388 * v45;
                              do
                              {
                                v230 = v227[++v225];
                                v231 = __srca;
                                if (v228 < v230)
                                {
                                  v232 = v230 - v228;
                                  v233 = (*(v152 + 160) + 4 * v228);
                                  v234 = v390;
                                  do
                                  {
                                    v235 = *v233++;
                                    v234 += (*(v169 + 4 * v235) - *(*(v152 + 96) + 4 * v235 + 4) + *(*(v152 + 96) + 4 * v235)) * v45;
                                    --v232;
                                  }

                                  while (v232);
                                  v231 = v234;
                                }

                                if (v226 <= v231)
                                {
                                  v226 = v231;
                                }

                                v228 = v227[v225];
                              }

                              while (v225 != v224);
                            }

                            v236 = *(v400 + 16);
                            if (v236)
                            {
                              v237 = (v152 + 184);
                              if ((v224 & 0x80000000) == 0)
                              {
                                v238 = 0;
                                v239 = *v376;
                                do
                                {
                                  *&v172[4 * v238] = v239[v238];
                                  v240 = *(v152 + 88);
                                  v162 = v238++ < v240;
                                }

                                while (v162);
                                if ((v240 & 0x80000000) == 0)
                                {
                                  v241 = 0;
                                  v242 = 0;
                                  do
                                  {
                                    v239[v241] = v242;
                                    v243 = *&v172[4 * v241];
                                    v244 = *&v172[4 * v241 + 4];
                                    if (v243 < v244)
                                    {
                                      v245 = v244 - v243;
                                      v246 = (*(v152 + 64) + 4 * v243);
                                      do
                                      {
                                        v247 = *v246++;
                                        v242 += v142[v247];
                                        --v245;
                                      }

                                      while (v245);
                                    }

                                    v162 = v241++ < *(v152 + 88);
                                  }

                                  while (v162);
                                }
                              }

                              if (v398[0] >= 1)
                              {
                                v248 = *(v152 + 64);
                                v249 = v248;
                                v250 = v172;
                                v251 = v398[0];
                                do
                                {
                                  v252 = *v249++;
                                  *v250 = v252;
                                  v250 += 4;
                                  --v251;
                                }

                                while (v251);
                                v253 = 0;
                                v254 = 0;
                                v255 = v398[0] * v45 - 1;
                                do
                                {
                                  if (v45)
                                  {
                                    v256 = 0;
                                    v257 = *(v152 + 200);
                                    do
                                    {
                                      v258 = *&v172[4 * v253] * v45;
                                      v259 = v256 + v258;
                                      v260 = *(v257 + v258);
                                      if (v260)
                                      {
                                        v261 = v255;
                                      }

                                      else
                                      {
                                        v261 = v254;
                                      }

                                      v255 -= v260;
                                      v254 += v260 ^ 1;
                                      v248[v261] = v259;
                                      ++v256;
                                      ++v257;
                                    }

                                    while (v45 != v256);
                                  }

                                  ++v253;
                                }

                                while (v253 != v398[0]);
                              }
                            }

                            else
                            {
                              v237 = (v152 + 184);
                              if (v45 < 2)
                              {
LABEL_322:
                                if (v236)
                                {
                                  v272 = v229 + 8;
                                }

                                else
                                {
                                  v272 = 0;
                                }

                                __b = v172;
                                if (v379 < 8 * v226 + 4 * (v226 + v388 + 2 * v45 * v398[0]) + v272 + 32)
                                {
                                  __b = (*(v400 + 24))();
                                }

                                sub_23679A9A8(v387, v378, v152, *(v152 + 152), *(v152 + 160), v226, v373, v143, __b);
                                if (__b != v172)
                                {
                                  (*(v400 + 32))(__b);
                                }

                                *(v152 + 168) = 0;
                                *(v152 + 176) = 0;
                                *(v152 + 72) = 0;
                                *v237 = 0;
                                v237[1] = 0;
                                v274 = *(v152 + 88);
                                if (v274 >= 1)
                                {
                                  v275 = 0;
                                  v276 = 0;
                                  v277 = 0;
                                  v278 = 0;
                                  v279 = 0;
                                  v280 = 0;
                                  v281 = 0;
                                  v282 = 0;
                                  v283 = *(v152 + 96);
                                  v284 = *(v152 + 104);
                                  v285 = *(v152 + 120);
                                  while (1)
                                  {
                                    v286 = v280 + 1;
                                    v287 = *(v283 + 4 * (v280 + 1)) - *(v283 + 4 * v280);
                                    v288 = *(v285 + 8 * (v280 + 1)) - *(v285 + 8 * v280);
                                    if (v288 < v287)
                                    {
                                      break;
                                    }

                                    v289 = *(v284 + 8 * v286) - *(v284 + 8 * v280);
                                    v290 = v289;
                                    v291 = v288 * v289;
                                    if (v291 > v279)
                                    {
                                      *(v152 + 168) = v291;
                                      v279 = v288 * v289;
                                    }

                                    if (v278 < v289)
                                    {
                                      *(v152 + 176) = v289;
                                      v278 = v289;
                                    }

                                    v277 += v291;
                                    *(v152 + 72) = v277;
                                    v292 = *(v152 + 152);
                                    v293 = *(v292 + 4 * v280);
                                    v294 = *(v292 + 4 * v286);
                                    if (v293 < v294)
                                    {
                                      v295 = v294 - v293;
                                      v296 = (*(v152 + 160) + 4 * v293);
                                      do
                                      {
                                        v297 = *v296++;
                                        v298 = *(v283 + 4 * (v297 + 1)) - *(v283 + 4 * v297);
                                        v299 = *(v284 + 8 * (v297 + 1)) - *(v284 + 8 * v297);
                                        v300 = *(v285 + 8 * (v297 + 1)) - *(v285 + 8 * v297);
                                        if (v300 >= v299)
                                        {
                                          v300 = v299;
                                        }

                                        v301 = v300 - v298;
                                        v282 += v301 * (v298 - v299);
                                        v281 -= v301;
                                        --v295;
                                      }

                                      while (v295);
                                    }

                                    if (v288 >= v290)
                                    {
                                      v288 = v290;
                                    }

                                    v302 = v288 - v287;
                                    v282 += v302 * (v290 - v287);
                                    if (v282 > v276)
                                    {
                                      *v237 = v282;
                                      v276 = v282;
                                    }

                                    v281 += v302;
                                    if (v281 > v275)
                                    {
                                      *(v152 + 192) = v281;
                                      v275 = v281;
                                    }

                                    v280 = v286;
                                    if (v286 == v274)
                                    {
                                      goto LABEL_350;
                                    }
                                  }

                                  *v397 = -2;
                                  (*(v400 + 32))();
                                  (*(v400 + 32))(v152);
                                  v152 = 0;
                                }

LABEL_350:
                                v149 = v400;
                                (*(v400 + 32))(v167);
                                goto LABEL_351;
                              }

                              if (v398[0] >= 1)
                              {
                                v262 = *(v152 + 64);
                                v263 = v262;
                                v264 = v167;
                                v265 = v398[0];
                                do
                                {
                                  v266 = *v263++;
                                  *v264++ = v266;
                                  --v265;
                                }

                                while (v265);
                                v267 = 0;
                                LODWORD(v268) = 0;
                                do
                                {
                                  v269 = 0;
                                  v268 = v268;
                                  do
                                  {
                                    v262[v268++] = v269++ + v167[v267] * v45;
                                  }

                                  while (v45 != v269);
                                  ++v267;
                                }

                                while (v267 != v398[0]);
                                LODWORD(v224) = *(v152 + 88);
                              }

                              if ((v224 & 0x80000000) == 0)
                              {
                                v270 = *v376;
                                v271 = -1;
                                do
                                {
                                  *v270++ *= v45;
                                  ++v271;
                                }

                                while (v271 < *(v152 + 88));
                              }
                            }

                            *(v152 + 80) *= (v45 * v45);
                            goto LABEL_322;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_466:
            __break(1u);
          }

          (*(v400 + 32))(v167);
          (*(v400 + 32))(v152);
          v18 = v393;
          v6 = v400;
          goto LABEL_226;
        }

        v177 = &v410;
        if (v395)
        {
          v177 = &v404;
        }

        v178 = _SparseCOLAMDWorkspaceSize(v388, v398[0], *(*(v177 + 1) + 8 * v398[0]), v392);
        v149 = v400;
        v179 = (*(v400 + 24))(v178);
        if (v179)
        {
          v180 = v179;
          _SparseCOLAMD(v387, v378, v142, 0, *(v152 + 64), v179);
          (*(v400 + 32))(v180);
          v176 = *(v152 + 64);
          if (v398[0] >= 1)
          {
            v181 = 0;
            do
            {
              v167[*(v176 + 4 * v181)] = v181;
              ++v181;
            }

            while (v398[0] != v181);
          }

          goto LABEL_252;
        }
      }

      (*(v149 + 32))(v167);
    }

    (*(v149 + 32))(v152);
    v18 = v393;
    v6 = v149;
LABEL_226:
    v84 = v399;
LABEL_233:
    (*(v6 + 32))(v84);
    v182 = (v6 + 32);
LABEL_234:
    result = (*v182)(v18);
    goto LABEL_235;
  }

  if (!*(v6 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EDD0();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.", v20);
  (*(v6 + 40))(__str);
  result = (*(v6 + 32))(v18);
LABEL_235:
  v183 = *MEMORY[0x277D85DE8];
  return result;
}