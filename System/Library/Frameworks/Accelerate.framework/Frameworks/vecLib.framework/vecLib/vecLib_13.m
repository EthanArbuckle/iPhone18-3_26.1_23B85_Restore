void *sub_236758B7C(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
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
  v17 = *(*(v11 + 384) + 8 * a2) * (v16 * v16);
  if ((*v10 & 0xFE) == 0x52)
  {
    v17 += 2 * v16 * (*(*(v11 + 176) + 4 * v15) - *(*(v11 + 176) + 4 * v13));
  }

  v18 = result[5];
  v19 = *(v9 + 48);
  v20 = *(v11 + 168);
  v21 = (4 * v17 + 24 * (v15 - v13) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
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
      result = sub_23675900C(v13, v32, *(v10 + 1), *v10, *(v10 + 2), *(v10 + 6), *(v10 + 4), a8, v23, v20, &v76, v33, v77, &v75, v18, v19, *(v10 + 13), v8, v10);
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

uint64_t sub_236758F84(uint64_t result)
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

uint64_t sub_23675900C(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9, int a10, uint64_t *a11, unint64_t a12, int *a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a6;
  v239 = *MEMORY[0x277D85DE8];
  v205 = *(&off_28499C2B0 + a4 - 81);
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
  v40 = v34 + 8 + 4 * v37 * v33;
  *(&v224 + 1) = v37;
  *&v225 = v40;
  *(&v225 + 1) = v38;
  v215 = a7;
  if (a4 == 81 || (*&v226 = v40 + 4 * v38 * v33, *(&v226 + 1) = v226 + 4 * v33, a4 != 83))
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
    sub_236759FCC(a1, 1, 83, a5, a6, a7, a9, v229, v25, v41, v27, v41);
    v42 = *&v229[8];
    v200 = *&v229[16];
    __src = *v229;
    v199 = *&v229[24];
    sub_236759FCC(a1, 2, 83, a5, v19, v215, a9, v229, v24, v41, v26, v41);
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
  v57 = (v39 - v33 + v42) * v56 + ((v37 + v43 + v45) * v56);
  if ((a4 & 0xFE) == 0x52)
  {
    v57 += v45 + 2 * v56 + v42;
  }

  v58 = 4 * v57 + 8;
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
  v89 = &v213[4 * v87 * v82];
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
    v91 = &v89[4 * v90 * v82];
  }

  if (a4 == 81)
  {
    v92 = 0;
  }

  else
  {
    v92 = &v89[4 * (v88 + v78) * v82 + 4 * v82 + 4 * v77];
  }

  *&v224 = v213;
  *(&v224 + 1) = v87;
  v93 = &v91[4 * v82];
  if (v77 <= 0)
  {
    v93 = 0;
  }

  v201 = &v213[4 * v87 * v82];
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
            v109 = *(v79 + 8 * v103) + 8 + 4 * (v107 + v105 + (*(v84 + 8 * (v103 + 1)) - *(v84 + 8 * v103)) * v19) * v107 + 4 * (v106 + (*(v85 + 8 * (v103 + 1)) - *(v85 + 8 * v103)) * v19) * v107;
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

  v132 = 4 * SDWORD1(v223);
  bzero(v213, v132 * v87);
  bzero(v201, v132 * v202);
  sub_23675A4D4(a2, a1, SDWORD1(v223), a3, a5, v213, v87, v201, v202, a15, v212, v215[12], v215[13]);
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
    v136 = (*(*v134 + 24))(4 * v135);
    *(v134 + 96) = v136;
    *(v134 + 104) = v135;
    bzero(v136, 4 * v135);
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
      v149 = v145 + 4 * *v229 * *&v229[12];
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
        v150 = v149 + 4 * (v148 + v144) * *&v229[12];
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
          v177 = sub_23675B2FC(&v221, v141, v229, v156, a5, v214, v157, v158, a15, v212);
          v19 = v214;
          sub_2367541F8(v177, &v221, v134, v141, v229, v156, a5, v214, v157, v158, a15, v212);
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
          sub_23675AD4C(a1, &v221, v141, v229, v156, a5, v214, v157, v158, v171, a15, v212);
          v19 = v214;
          v134 = v208;
          sub_236753908(a1, &v221, v208, v141, v229, v156, a5, v214, v157, v158, v171, a15, v212);
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
          sub_23675A8B8(a1, &v221, v141, v229, v156, a5, v214, v157, v158, v161, a15, v212);
          v19 = v214;
          v134 = v208;
          sub_2367531BC(a1, &v221, v208, v141, v229, v156, a5, v214, v157, v158, v161, a15, v212);
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

void sub_236759FB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

void sub_236759FCC(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, _DWORD *a9, unint64_t a10, _DWORD *a11, uint64_t a12)
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

    v33 = *(a6[14] + 8 * v22) + 8 + 4 * v31 * (v29 + v24 + (*(a4[23] + 8 * (v22 + 1)) - *(a4[23] + 8 * v22)) * a5) + 4 * v31 * (v25 + (*(a4[25] + 8 * (v22 + 1)) - *(a4[25] + 8 * v22)) * a5);
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

void sub_23675A4B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23675A4D4(uint64_t result, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
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
      v19 = 4 * v14;
      v20 = 4 * v13;
      v101 = 4 * a7 * v13;
      v21 = 4 * a7;
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
                v34 = (a12 + 4 * v33);
                v35 = (*(a4 + 32) + v28);
                v36 = (a6 + 4 * *(a10 + 4 * v33));
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
                    *v38++ = (v42 * v43) * *(a13 + 4 * v22 * v13 + 4 * v32);
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
      v46 = a8 - 4 * a3;
      result = 4 * a9 * v13;
      v47 = (a12 + 4 * v17 * v13);
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
              v53 = (v49 + 4 * *(v51 + 8 * v45) * v14);
              v54 = *(v50 + 4 * v45) * v13;
              v55 = a13 + 4 * v54;
              v56 = (v46 + 4 * *(a11 + 4 * v54));
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
                  *v59 = (v62 * v63) * *(v55 + 4 * v52);
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
    v66 = 4 * v14;
    v67 = 4 * v13;
    v68 = 4 * a7 * v13;
    v69 = 4 * a7;
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
              v81 = (a6 + 4 * *(a10 + 4 * v77 * v13));
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
    v87 = a8 - 4 * a3;
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
            v93 = (v89 + 4 * *(v91 + 8 * result) * v14);
            v94 = (v87 + 4 * *(a11 + 4 * *(v90 + 4 * result) * v13));
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

      v87 += 4 * a9 * v13;
      result = v88;
    }

    while (v17 != v18);
  }

  return result;
}

uint64_t sub_23675A8B8(uint64_t result, uint64_t a2, int a3, int *a4, void *a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v58 = result;
  v12 = a4[3];
  v60 = a4[1];
  if (v12 + a9 < v60)
  {
    v13 = a4[19];
    v59 = v13 - v60;
    v14 = v12 + a9;
    v57 = v60 - v13;
    for (i = 4 * a9; ; i += 4)
    {
      if (v59 + v14 < 0 || (*(a5[6] + (v59 + v14)) & 1) == 0)
      {
        v16 = v14 - v12;
        if (v14 >= v12)
        {
          v17 = v14 >= v57 ? *(*(a4 + 11) + 4 * (v14 - v57)) : (v14 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v14 - v12) / a7)) * a7;
        }

        else if (v14 < 0)
        {
          v17 = 0x7FFFFFFF;
        }

        else
        {
          v17 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v14) : v14 + *(a6[22] + 4 * a3) * a7;
        }

        v18 = *(a12 + 4 * v17);
        v19 = *(a2 + 12);
        if (v19 > v18)
        {
          v20 = v18;
          if ((v18 & 0x80000000) != 0)
          {
            v21 = 0x7FFFFFFF;
          }

          else
          {
            v21 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v18) : v18 + *(a6[22] + 4 * v58) * a7;
          }

          if (v21 == v17)
          {
            if (a10 >= 1)
            {
              v22 = *(a2 + 24) + 4 * *(a2 + 32) * v20;
              v23 = 4 * (v12 + a8) - 4 * v12;
              v24 = v12 + a8;
              v25 = a8;
              do
              {
                if (v24 >= v12)
                {
                  v28 = *a4;
                  v29 = a4[18];
                  if (v24 >= v28 - v29)
                  {
                    if (v24 < v28)
                    {
                      v27 = *(*(a4 + 10) + 4 * (v24 + v29 - v28));
                      if ((v16 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_34;
                    }

LABEL_33:
                    v27 = 0x7FFFFFFF;
                    if ((v16 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v30 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v25 / a7));
                  v31 = v25 % a7;
                }

                else
                {
                  if (v24 < 0)
                  {
                    goto LABEL_33;
                  }

                  v26 = *(a4 + 7);
                  if (v26)
                  {
                    v27 = *(v26 + 4 * v24);
                    if ((v16 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v30 = *(a6[22] + 4 * a3);
                  v31 = v12 + v25;
                }

                v27 = v31 + v30 * a7;
                if ((v16 & 0x8000000000000000) == 0)
                {
LABEL_37:
                  if (v24 >= v12)
                  {
                    v32 = (a5[12] + i * a5[2] + v23);
                  }

                  else
                  {
                    v32 = (*(a4 + 5) + 4 * *(a4 + 6) * v24 + 4 * v16);
                  }

                  goto LABEL_40;
                }

LABEL_34:
                v32 = (*(a4 + 3) + 4 * *(a4 + 4) * v14 + 4 * v24);
LABEL_40:
                v33 = *(a11 + 4 * v27);
                *(v22 + 4 * v33) = *v32 + *(v22 + 4 * v33);
                ++v24;
                ++v25;
                v23 += 4;
              }

              while (v24 < v12 + a8 + a10);
            }

            v34 = a4[18];
            if (v34 >= 1)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (++v14 >= v60)
      {
        return result;
      }
    }

    v35 = 0;
    v36 = *a4;
    v37 = v36 - v34;
    v38 = a5[4];
    v39 = v36 - v12 - v34;
    v56 = v36 - v34;
    v40 = 4 * v37;
    v41 = -4 * v12;
    v42 = v37;
    while ((*(v38 + v35) & 1) != 0)
    {
LABEL_72:
      ++v42;
      ++v35;
      ++v39;
      v41 += 4;
      if (v37 + v35 >= v36)
      {
        goto LABEL_73;
      }
    }

    v43 = v37 + v35;
    if (v37 + v35 >= v12)
    {
      if (v43 >= v37)
      {
        v45 = *(a4 + 10);
        goto LABEL_51;
      }

      v46 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v39 / a7));
      v47 = v39 % a7;
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
        v45 = v44 + v40;
LABEL_51:
        v48 = *(v45 + 4 * v35);
        goto LABEL_55;
      }

      v46 = *(a6[22] + 4 * a3);
      v47 = v56 + v35;
    }

    v48 = v47 + v46 * a7;
LABEL_55:
    v49 = *(a11 + 4 * v48);
    v50 = v49;
    if (v49 >= v19)
    {
      result = (*a2 - *(a2 + 72));
      if (v49 < result)
      {
        v52 = v49 - v19;
        result = *(a6[24] + 4 * *(a6[23] + 8 * v58) + 4 * (v52 / a7));
        v51 = v52 % a7 + result * a7;
        goto LABEL_65;
      }

      if (*a2 > v49)
      {
        v51 = *(*(a2 + 80) + 4 * (v49 - result));
        goto LABEL_65;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      result = *(a2 + 56);
      if (result)
      {
        v51 = *(result + 4 * v49);
      }

      else
      {
        result = *(a6[22] + 4 * v58);
        v51 = v49 + result * a7;
      }

LABEL_65:
      if (v51 == v48)
      {
        if (v16 < 0)
        {
          v53 = (*(a4 + 3) + 4 * *(a4 + 4) * v14 + 4 * v42);
        }

        else if (v43 >= v12)
        {
          v53 = (a5[12] + i * a5[2] + v40 + v41);
        }

        else
        {
          v53 = (*(a4 + 5) + 4 * *(a4 + 6) * v43 + 4 * v16);
        }

        v54 = *(a2 + 24) + 4 * *(a2 + 32) * v20;
        *(v54 + 4 * v50) = *v53 + *(v54 + 4 * v50);
      }

      goto LABEL_72;
    }

    v51 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_23675AD4C(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v74 = result;
  v12 = a4[3];
  if (a10 >= 1)
  {
    result = (v12 + a9 + a10);
    v13 = *(a2 + 12);
    v14 = v12 + a9;
    v15 = result;
    while (1)
    {
      v16 = v14 - v12;
      if (v14 < v12)
      {
        break;
      }

      v18 = a4[1];
      v19 = v18 - a4[19];
      v20 = __OFSUB__(v14, v19);
      result = v14 - v19;
      if (result < 0 != v20)
      {
        result = *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v14 - v12) / a7));
        v17 = (v14 - v12) % a7 + result * a7;
      }

      else
      {
        if (v14 >= v18)
        {
          goto LABEL_12;
        }

        v17 = *(*(a4 + 11) + 4 * result);
      }

LABEL_14:
      v21 = *(a12 + 4 * v17);
      if (v21 < v13)
      {
        v22 = a4[4];
        if (v22 < v12)
        {
          v23 = *(a2 + 24) + 4 * *(a2 + 32) * v21;
          if (v16 >= 0)
          {
            v24 = (a4 + 10);
          }

          else
          {
            v24 = (a4 + 6);
          }

          if (v16 >= 0)
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
            if (v22 < 0)
            {
              v29 = 0x7FFFFFFF;
            }

            else
            {
              v28 = *(a4 + 7);
              if (v28)
              {
                v29 = *(v28 + 4 * v22);
              }

              else
              {
                v29 = v22 + *(a6[22] + 4 * a3) * a7;
              }
            }

            result = *(a11 + 4 * v29);
            if (v16 >= 0)
            {
              v30 = v22;
            }

            else
            {
              v30 = v14;
            }

            if (v16 >= 0)
            {
              v31 = v14 - v12;
            }

            else
            {
              v31 = v22;
            }

            *(v23 + 4 * result) = *(v26 + 4 * v27 * v30 + 4 * v31) + *(v23 + 4 * result);
            ++v22;
          }

          while (v12 != v22);
        }

        v32 = *a4;
        if (v12 + a8 < v32)
        {
          v33 = a4[18];
          v34 = v33 - v32;
          v35 = v32 - v33;
          v36 = v12 + a8;
          while (2)
          {
            if (v34 + v36 >= 0)
            {
              result = *(*(a5 + 32) + (v34 + v36));
              if (result)
              {
                goto LABEL_56;
              }
            }

            if (v36 >= v12)
            {
              if (v36 >= v35)
              {
                v38 = *(*(a4 + 10) + 4 * (v36 - v35));
                if ((v16 & 0x8000000000000000) == 0)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v38 = (v36 - v12) % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * ((v36 - v12) / a7)) * a7;
                if ((v16 & 0x8000000000000000) == 0)
                {
                  goto LABEL_50;
                }
              }

LABEL_54:
              v39 = (*(a4 + 3) + 4 * *(a4 + 4) * v14 + 4 * v36);
            }

            else
            {
              if (v36 < 0)
              {
                v38 = 0x7FFFFFFF;
                if (v16 < 0)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v37 = *(a4 + 7);
                if (v37)
                {
                  v38 = *(v37 + 4 * v36);
                  if (v16 < 0)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  v38 = v36 + *(a6[22] + 4 * a3) * a7;
                  if (v16 < 0)
                  {
                    goto LABEL_54;
                  }
                }
              }

LABEL_50:
              if (v36 >= v12)
              {
                v39 = (*(a5 + 96) + 4 * *(a5 + 16) * v16 + 4 * (v36 - v12));
              }

              else
              {
                v39 = (*(a4 + 5) + 4 * *(a4 + 6) * v36 + 4 * v16);
              }
            }

            result = *(a11 + 4 * v38);
            v40 = *(a2 + 24) + 4 * *(a2 + 32) * v21;
            *(v40 + 4 * result) = *v39 + *(v40 + 4 * result);
LABEL_56:
            if (++v36 >= v32)
            {
              break;
            }

            continue;
          }
        }
      }

      if (++v14 >= v15)
      {
        goto LABEL_58;
      }
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 7))
      {
        result = *(a4 + 8);
        v17 = *(result + 4 * v14);
      }

      else
      {
        result = *(a6[22] + 4 * a3);
        v17 = v14 + result * a7;
      }

      goto LABEL_14;
    }

LABEL_12:
    v17 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_58:
  v41 = a4[19];
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = 0;
    v44 = a4[1];
    result = (v44 - v41);
    v45 = *(a5 + 48);
    v75 = v12 + a8;
    v46 = result;
    v47 = result;
    do
    {
      if ((*(v45 + v42) & 1) == 0)
      {
        v48 = v47 - v12;
        if (v47 >= v12)
        {
          v49 = v47 >= v46 ? *(*(a4 + 11) + 4 * (v47 - v46)) : (v47 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v47 - v12) / a7)) * a7;
        }

        else if (v47 < 0)
        {
          v49 = 0x7FFFFFFF;
        }

        else
        {
          v49 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v47) : v47 + *(a6[22] + 4 * a3) * a7;
        }

        v50 = *(a12 + 4 * v49);
        if (*(a2 + 12) > v50)
        {
          v51 = v50;
          if ((v50 & 0x80000000) != 0)
          {
            v52 = 0x7FFFFFFF;
          }

          else if (*(a2 + 56))
          {
            v52 = *(*(a2 + 64) + 4 * v50);
          }

          else
          {
            result = v74;
            v52 = v50 + *(a6[22] + 4 * v74) * a7;
          }

          if (v52 == v49)
          {
            v53 = a4[4];
            if (v53 < v12)
            {
              v54 = *(a2 + 24) + 4 * *(a2 + 32) * v50;
              if (v48 >= 0)
              {
                v55 = (a4 + 10);
              }

              else
              {
                v55 = (a4 + 6);
              }

              if (v48 >= 0)
              {
                v56 = (a4 + 12);
              }

              else
              {
                v56 = (a4 + 8);
              }

              v57 = *v55;
              v58 = *v56;
              do
              {
                if (v53 < 0)
                {
                  v60 = 0x7FFFFFFF;
                }

                else
                {
                  v59 = *(a4 + 7);
                  if (v59)
                  {
                    v60 = *(v59 + 4 * v53);
                  }

                  else
                  {
                    v60 = v53 + *(a6[22] + 4 * a3) * a7;
                  }
                }

                v61 = *(a11 + 4 * v60);
                if (v48 >= 0)
                {
                  v62 = v53;
                }

                else
                {
                  v62 = v47;
                }

                if (v48 >= 0)
                {
                  v63 = v47 - v12;
                }

                else
                {
                  v63 = v53;
                }

                *(v54 + 4 * v61) = *(v57 + 4 * v58 * v62 + 4 * v63) + *(v54 + 4 * v61);
                ++v53;
              }

              while (v12 != v53);
            }

            v64 = *a4;
            if (v75 < v64)
            {
              v65 = a4[18];
              v66 = v65 - v64;
              v67 = v64 - v65;
              v68 = v75;
              while (2)
              {
                if (v66 + v68 >= 0 && (*(*(a5 + 32) + (v66 + v68)) & 1) != 0)
                {
                  goto LABEL_118;
                }

                if (v68 >= v12)
                {
                  if (v68 >= v67)
                  {
                    v70 = *(*(a4 + 10) + 4 * (v68 - v67));
                    if ((v48 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_112;
                    }
                  }

                  else
                  {
                    v70 = (v68 - v12) % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * ((v68 - v12) / a7)) * a7;
                    if ((v48 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_112;
                    }
                  }

LABEL_116:
                  v71 = (*(a4 + 3) + 4 * *(a4 + 4) * v47 + 4 * v68);
                }

                else
                {
                  if (v68 < 0)
                  {
                    v70 = 0x7FFFFFFF;
                    if (v48 < 0)
                    {
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v69 = *(a4 + 7);
                    if (v69)
                    {
                      v70 = *(v69 + 4 * v68);
                      if (v48 < 0)
                      {
                        goto LABEL_116;
                      }
                    }

                    else
                    {
                      v70 = v68 + *(a6[22] + 4 * a3) * a7;
                      if (v48 < 0)
                      {
                        goto LABEL_116;
                      }
                    }
                  }

LABEL_112:
                  if (v68 >= v12)
                  {
                    v71 = (*(a5 + 96) + 4 * *(a5 + 16) * v48 + 4 * (v68 - v12));
                  }

                  else
                  {
                    v71 = (*(a4 + 5) + 4 * *(a4 + 6) * v68 + 4 * v48);
                  }
                }

                v72 = *(a11 + 4 * v70);
                v73 = *(a2 + 24) + 4 * *(a2 + 32) * v51;
                *(v73 + 4 * v72) = *v71 + *(v73 + 4 * v72);
LABEL_118:
                if (++v68 >= v64)
                {
                  break;
                }

                continue;
              }
            }

            result = 1;
            *(v45 + v42) = 1;
            ++v43;
          }
        }
      }

      ++v47;
      ++v42;
    }

    while (v47 < v44);
    if (v43 > 0)
    {
      atomic_fetch_add_explicit((a5 + 24), -v43, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_23675B2FC(uint64_t result, int a2, int *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = a3[3];
  v83 = a3[4];
  if (v83 < v10)
  {
    v11 = *a3;
    v12 = v10 + a7;
    v14 = *(a3 + 7);
    v13 = *(a3 + 8);
    v15 = a3[4];
    v16 = *(result + 24);
    v17 = *(result + 32);
    while (1)
    {
      v18 = v83;
      v19 = *(a10 + 4 * *(v13 + 4 * v15));
      v20 = v15 - v10;
      v21 = v15 >= v10 ? a3 + 10 : a3 + 6;
      v22 = v15 >= v10 ? a3 + 12 : a3 + 8;
      v23 = *v21;
      v24 = *v22;
      do
      {
        if (v20 >= 0)
        {
          v26 = v18;
        }

        else
        {
          v26 = v15;
        }

        if (v20 >= 0)
        {
          v27 = v15 - v10;
        }

        else
        {
          v27 = v18;
        }

        v25 = *(a9 + 4 * *(v14 + 4 * v18));
        *(v16 + 4 * v17 * v19 + 4 * v25) = *(v23 + 4 * v24 * v26 + 4 * v27) + *(v16 + 4 * v17 * v19 + 4 * v25);
        ++v18;
      }

      while (v10 != v18);
      if (v12 < v11)
      {
        break;
      }

LABEL_40:
      if (++v15 == v10)
      {
        goto LABEL_41;
      }
    }

    v28 = a3[18];
    v29 = v28 - v11;
    v30 = v11 - v28;
    v31 = v12;
    while (1)
    {
      if (v29 + v31 >= 0 && (*(a4[4] + (v29 + v31)) & 1) != 0)
      {
        goto LABEL_34;
      }

      if (v31 >= v10)
      {
        if (v31 >= v30)
        {
          v33 = *(*(a3 + 10) + 4 * (v31 - v30));
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v33 = (v31 - v10) % a6 + *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * ((v31 - v10) / a6)) * a6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v31 < 0)
      {
        v33 = 0x7FFFFFFF;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v32 = *(a3 + 7);
        if (v32)
        {
          v33 = *(v32 + 4 * v31);
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v33 = v31 + *(a5[22] + 4 * a2) * a6;
          if ((v20 & 0x8000000000000000) == 0)
          {
LABEL_28:
            if (v31 >= v10)
            {
              v34 = (a4[12] + 4 * a4[2] * v20 + 4 * (v31 - v10));
            }

            else
            {
              v34 = (*(a3 + 5) + 4 * *(a3 + 6) * v31 + 4 * v20);
            }

            goto LABEL_33;
          }
        }
      }

      v34 = (*(a3 + 3) + 4 * *(a3 + 4) * v15 + 4 * v31);
LABEL_33:
      v35 = *(a9 + 4 * v33);
      v36 = *(result + 24) + 4 * *(result + 32) * v19;
      *(v36 + 4 * v35) = *v34 + *(v36 + 4 * v35);
LABEL_34:
      if (++v31 >= v11)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_41:
  v37 = v10 + a8;
  v38 = a3[1];
  if (v10 + a8 < v38)
  {
    v39 = a3[19];
    v40 = v39 - v38;
    v41 = v37;
    v42 = v38 - v39;
    v43 = 4 * v37 - 4 * v10;
    v82 = v42;
    while (1)
    {
      if (v40 + v41 < 0 || (*(a4[6] + (v40 + v41)) & 1) == 0)
      {
        v44 = v41 - v10;
        if (v41 >= v10)
        {
          v45 = v41 >= v82 ? *(*(a3 + 11) + 4 * (v41 - v82)) : (v41 - v10) % a6 + *(a5[26] + 4 * *(a5[25] + 8 * a2) + 4 * ((v41 - v10) / a6)) * a6;
        }

        else if (v41 < 0)
        {
          v45 = 0x7FFFFFFF;
        }

        else
        {
          v45 = *(a3 + 7) ? *(*(a3 + 8) + 4 * v41) : v41 + *(a5[22] + 4 * a2) * a6;
        }

        v46 = *(a10 + 4 * v45);
        if (v46 < *(result + 12))
        {
          if (v83 < v10)
          {
            v47 = *(a3 + 7);
            v48 = *(result + 24) + 4 * *(result + 32) * v46;
            v49 = 10;
            if (v44 < 0)
            {
              v49 = 6;
            }

            v50 = 12;
            if (v44 < 0)
            {
              v50 = 8;
            }

            v51 = *&a3[v49];
            v52 = *&a3[v50];
            v53 = v83;
            do
            {
              if (v44 >= 0)
              {
                v55 = v53;
              }

              else
              {
                v55 = v41;
              }

              if (v44 >= 0)
              {
                v56 = v41 - v10;
              }

              else
              {
                v56 = v53;
              }

              v54 = *(a9 + 4 * *(v47 + 4 * v53));
              *(v48 + 4 * v54) = *(v51 + 4 * v52 * v55 + 4 * v56) + *(v48 + 4 * v54);
              ++v53;
            }

            while (v10 != v53);
          }

          v57 = *a3;
          v58 = a3[18];
          v59 = v57 - v58;
          if (v10 + a7 < v57 - v58)
          {
            v60 = a5[24] + 4 * *(a5[23] + 8 * a2);
            v61 = *(result + 24) + 4 * *(result + 32) * v46;
            v62 = a4[12] - 4 * v10 + a4[2] * v43;
            v63 = a7;
            v64 = v10 + a7;
            do
            {
              v65 = *(a9 + 4 * (v63 % a6 + *(v60 + 4 * (v63 / a6)) * a6));
              *(v61 + 4 * v65) = *(v62 + 4 * v64++) + *(v61 + 4 * v65);
              ++v63;
            }

            while (v64 < v59);
          }

          if (v58 >= 1)
          {
            break;
          }
        }
      }

LABEL_92:
      ++v41;
      v43 += 4;
      if (v41 >= v38)
      {
        return result;
      }
    }

    v66 = 0;
    v67 = a4[4];
    v68 = v57 - v10 - v58;
    v69 = 4 * v57 - 4 * v58;
    v70 = -4 * v10;
    v71 = v59;
    while ((*(v67 + v66) & 1) != 0)
    {
LABEL_91:
      ++v71;
      ++v66;
      ++v68;
      v70 += 4;
      if (v59 + v66 >= v57)
      {
        goto LABEL_92;
      }
    }

    v72 = v59 + v66;
    if (v72 >= v10)
    {
      if (v72 >= v59)
      {
        v74 = *(a3 + 10);
LABEL_81:
        v77 = *(v74 + 4 * v66);
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_82;
        }

LABEL_89:
        v78 = (*(a3 + 3) + 4 * *(a3 + 4) * v41 + 4 * v71);
LABEL_90:
        v79 = *(a9 + 4 * v77);
        v80 = *(result + 24) + 4 * *(result + 32) * v46;
        *(v80 + 4 * v79) = *v78 + *(v80 + 4 * v79);
        goto LABEL_91;
      }

      v75 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v68 / a6));
      v76 = v68 % a6;
    }

    else
    {
      if (v72 < 0)
      {
        v77 = 0x7FFFFFFF;
        if (v44 < 0)
        {
          goto LABEL_89;
        }

        goto LABEL_82;
      }

      v73 = *(a3 + 7);
      if (v73)
      {
        v74 = v73 + v69;
        goto LABEL_81;
      }

      v75 = *(a5[22] + 4 * a2);
      v76 = v59 + v66;
    }

    v77 = v76 + v75 * a6;
    if (v44 < 0)
    {
      goto LABEL_89;
    }

LABEL_82:
    if (v72 >= v10)
    {
      v78 = (a4[12] + v43 * a4[2] + v69 + v70);
    }

    else
    {
      v78 = (*(a3 + 5) + 4 * *(a3 + 6) * v72 + 4 * v44);
    }

    goto LABEL_90;
  }

  return result;
}

void sub_23675B824(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7, void *a8, uint64_t *a9, void **a10, uint64_t *a11, uint64_t *a12, float **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v525 = *(a4 + 56);
  v577 = 0;
  v576 = 0u;
  v20 = (4 * v525 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = a17 + v20;
  v22 = a1;
  v575 = 0u;
  v574 = 0u;
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
  *(&v574 + 1) = v27;
  v578 = v24;
  v579 = v25;
  v552 = a1 + 1;
  v28 = v23 + (*(*(a4 + 176) + 4 * v552) - *(*(a4 + 176) + 4 * a1)) * a5;
  v572 = v23;
  v573 = v28;
  v29 = v28;
  if (a3 == 83)
  {
    v29 = *(*(a6 + 64) + 4 * v22);
  }

  v513 = (4 * v525 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = v26 + v20;
  LODWORD(v574) = v29;
  v530 = 8 * v22;
  v31 = (*(*(a4 + 200) + 8 * v552) - *(*(a4 + 200) + 8 * v22)) * a5;
  v570 = v28 + v24 + (*(*(a4 + 184) + 8 * v552) - *(*(a4 + 184) + 8 * v22)) * a5;
  v571 = v28 + v25 + v31;
  v542 = v571;
  v547 = v570;
  *&v575 = v570;
  *(&v575 + 1) = v27 + 4 * v570 * v28;
  v32 = v31 + v25;
  *&v576 = v32;
  if (a3 == 81)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = v27 + 4 * v570 * v28 + 4 * v32 * v28;
    v33 = v34 + 4 * v28 + 4 * v24;
    *(&v576 + 1) = v34;
    v577 = v33;
  }

  if (v24 <= 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34 + 4 * v28;
  }

  v538 = v33;
  v516 = v28;
  v36 = v33 + 4 * v28;
  if (v25 <= 0)
  {
    v36 = 0;
  }

  v532 = v35;
  v534 = v36;
  v580 = v35;
  v581 = v36;
  v37 = *(a4 + 240);
  v38 = *(v37 + 8 * v22);
  v564 = v22;
  v565 = a4;
  v566 = a5;
  v555 = v21 + v20;
  v550 = v29;
  v556 = v28;
  v561 = v34;
  v519 = v25;
  if (v38 >= *(v37 + 8 * v552))
  {
    v531 = 0;
    if (!v29)
    {
      return;
    }
  }

  else
  {
    v531 = 0;
    v541 = v570 - v24;
    v39 = v571 - v25;
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
          if ((v531 & 1) == 0)
          {
            sub_23672A9A0(a1, &v570, a4, a5, v26);
            v28 = v556;
            v34 = v561;
            v22 = v564;
            a4 = v565;
            v26 = v555;
            a5 = v566;
            v44 = *a7 + 32 * v40;
            v42 = *v44;
            v43 = *(v44 + 8);
          }

          v45 = v547;
          while (v42 != v43)
          {
            v569 = *v42;
            v46 = *(v26 + 4 * v569);
            if (v46 < v45)
            {
              if (v46 >= v28)
              {
                if (v46 >= v541)
                {
                  v47 = *(v532 + 4 * (v46 - v541));
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

              else if (v34)
              {
                v47 = *(v34 + 4 * v46);
              }

              else
              {
                v47 = v46 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v47 < 0)
              {
                v47 = -v47;
              }

              if (v569 == v47)
              {
                sub_236725158((*a7 + 32 * v22), &v569);
                v28 = v556;
                v34 = v561;
                v45 = v547;
                v22 = v564;
                a4 = v565;
                v26 = v555;
                a5 = v566;
              }
            }

            ++v42;
          }

          LOBYTE(v531) = 1;
        }

        v29 = v550;
      }

      if (*(*(a4 + 256) + v38))
      {
        v48 = *a8 + 32 * v40;
        v49 = *v48;
        v50 = *(v48 + 8);
        if (v50 != *v48)
        {
          if ((v531 & 0x100000000) == 0)
          {
            sub_23672AA5C(a1, &v570, a4, a5, v30);
            v28 = v556;
            v34 = v561;
            v22 = v564;
            a4 = v565;
            v26 = v555;
            a5 = v566;
            v51 = *a8 + 32 * v40;
            v49 = *v51;
            v50 = *(v51 + 8);
          }

          v52 = v542;
          while (v49 != v50)
          {
            v569 = *v49;
            v53 = *(v30 + 4 * v569);
            if (v53 < v52)
            {
              if (v53 >= v28)
              {
                if (v53 >= v39)
                {
                  v54 = *(v534 + 4 * (v53 - v39));
                }

                else
                {
                  v54 = (v53 - v28) % a5 + *(*(a4 + 208) + 4 * *(*(a4 + 200) + 8 * v22) + 4 * ((v53 - v28) / a5)) * a5;
                }
              }

              else if ((v53 & 0x80000000) != 0)
              {
                v54 = 0x7FFFFFFF;
              }

              else if (v34)
              {
                v54 = v538[v53];
              }

              else
              {
                v54 = v53 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v54 < 0)
              {
                v54 = -v54;
              }

              if (v569 == v54)
              {
                sub_236725158((*a8 + 32 * v22), &v569);
                v52 = v542;
                v28 = v556;
                v34 = v561;
                v22 = v564;
                a4 = v565;
                v26 = v555;
                a5 = v566;
              }
            }

            ++v49;
          }

          BYTE4(v531) = 1;
        }

        v29 = v550;
      }

      ++v38;
    }

    while (v38 < *(*(a4 + 240) + 8 * v552));
    if (!v29)
    {
      return;
    }
  }

  v55 = (*a7 + 32 * v22);
  v529 = (*a8 + 32 * v22);
  if (v55[1] == *v55 && v529[1] == *v529)
  {
    return;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v56 = sub_23672AB6C(*v55, v55[1]);
  v512 = v55;
  if (v56 != v55[1])
  {
    v57 = v55[1];
    v55[1] = v56;
  }

  v58 = *v529;
  v59 = v529[1];
  std::__sort<std::__less<int,int> &,int *>();
  v60 = sub_23672AB6C(*v529, v529[1]);
  v62 = v529[1];
  v63 = v565;
  v64 = v561;
  if (v60 != v62)
  {
    v61 = v529[1];
    v62 = v60;
    v529[1] = v60;
  }

  if (v561)
  {
    v65 = v550;
    if (v550 >= 1)
    {
      v66 = 0;
      v67 = v538;
      do
      {
        v68 = *v64++;
        *(a17 + 4 * v68) = v66;
        v69 = *v67++;
        *(v21 + 4 * v69) = v66--;
      }

      while (-v550 != v66);
    }
  }

  else
  {
    v65 = v550;
    if (v550 >= 1)
    {
      v70 = 0;
      v71 = 0;
      v72 = *(v565 + 176);
      do
      {
        *(a17 + 4 * (v71 + *(v72 + 4 * v564) * v566)) = v70;
        *(v21 + 4 * (v71 + *(v72 + 4 * v564) * v566)) = v70;
        ++v71;
        --v70;
      }

      while (v550 != v71);
    }
  }

  v73 = *v55;
  v511 = v55[1] - *v55;
  if (v511)
  {
    v74 = 0;
    v75 = v511 >> 2;
    if ((v511 >> 2) <= 1)
    {
      v75 = 1;
    }

    do
    {
      *(a17 + 4 * v73[v74]) = v74;
      ++v74;
    }

    while (v75 != v74);
  }

  v76 = *v529;
  v77 = v62 - *v529;
  if (v62 != *v529)
  {
    v78 = 0;
    v79 = v77 >> 2;
    if ((v77 >> 2) <= 1)
    {
      v79 = 1;
    }

    do
    {
      *(v21 + 4 * v76[v78]) = v78;
      ++v78;
    }

    while (v79 != v78);
  }

  v568 = (v30 + v513);
  v508 = v77;
  v80 = v77 >> 2;
  v81 = a9;
  v82 = (v65 * (v511 >> 2));
  v83 = 4 * v82;
  if (a9[1] < v82)
  {
    if (*a9)
    {
      (*(v565 + 32))(*a9, v61);
      v63 = v565;
    }

    v84 = (*(v63 + 24))(4 * v82, v61);
    v63 = v565;
    v81 = a9;
    *a9 = v84;
    a9[1] = v82;
  }

  v85 = &v568[v525];
  v86 = v65 * v80;
  v87 = a10;
  v554 = v85;
  v88 = v83;
  if (a10[1] >= v86)
  {
    v89 = 4 * v86;
  }

  else
  {
    if (*a10)
    {
      (*(v63 + 32))();
      v63 = v565;
    }

    v89 = 4 * v86;
    v87 = a10;
    *a10 = (*(v63 + 24))(4 * v86);
    a10[1] = v86;
    v81 = a9;
    v85 = &v568[v525];
  }

  v533 = &v85[v525];
  v90 = v81;
  bzero(*v81, v88);
  bzero(*v87, v89);
  v91 = *v512;
  v509 = v30;
  v510 = v512[1];
  v92 = v510 - *v512;
  v93 = *v529;
  v507 = v529[1];
  v94 = v507 - *v529;
  v526 = *v90;
  v522 = *v87;
  v95 = *(a6 + 96);
  v96 = *(a2 + 28);
  v97 = (v96 * v96);
  if (v95)
  {
    v98 = *(a6 + 104);
    v99 = v550;
    v100 = v565;
    v101 = v561;
    if (v550 >= 1 && v92 >= 1)
    {
      v102 = 0;
      v557 = *(v565 + 160);
      v543 = *(a2 + 8);
      v103 = 4 * v97;
      do
      {
        if (v538)
        {
          v104 = v538[v102];
        }

        else
        {
          v104 = v102 + *(*(v100 + 176) + 4 * v564) * v96;
        }

        v105 = (v543 + 8 * *(v557 + 4 * (v104 / v96)));
        v106 = *v105;
        v107 = v105[1];
        if (*v105 < v107)
        {
          v108 = *(a2 + 16);
          v109 = v104;
          v110 = v103 * v106 + 4 * v104 % v96 * v96;
          do
          {
            v111 = *(v108 + 4 * v106);
            if ((v111 & 0x80000000) == 0 && v111 < *a2 && v96 != 0)
            {
              v113 = *(*(v565 + 136) + 4 * v111) * v96;
              v114 = (v95 + 4 * v113);
              v115 = (a17 + 4 * v113);
              v116 = v96;
              v117 = v110;
              do
              {
                v119 = *v115++;
                v118 = v119;
                if (v119 < v92 && v113 == v91[v118])
                {
                  v526[v102 * v92 + v118] = (*v114 * *(*(a2 + 32) + v117)) * *(v98 + 4 * v109);
                }

                v117 += 4;
                ++v114;
                ++v113;
                --v116;
              }

              while (v116);
            }

            ++v106;
            v110 += v103;
          }

          while (v106 != v107);
        }

        ++v102;
        v100 = v565;
        v99 = v550;
        v101 = v561;
      }

      while (v102 != v550);
    }

    if (v99 >= 1 && v94 >= 1)
    {
      v120 = 0;
      v558 = *(v100 + 312);
      v544 = v99;
      do
      {
        if (v101)
        {
          v121 = v101[v120];
        }

        else
        {
          v121 = v120 + *(*(v100 + 176) + 4 * v564) * v96;
        }

        v122 = (v558 + 8 * (v121 / v96));
        v123 = *v122;
        v124 = v122[1];
        if (*v122 < v124)
        {
          v125 = *(v565 + 320);
          v126 = v121;
          v127 = 4 * (v121 % v96);
          do
          {
            v128 = *(v125 + 4 * v123) * v96;
            v129 = (v98 + 4 * v128);
            v130 = (a17 + v513 + 4 * v128);
            v131 = v96;
            v132 = v127;
            do
            {
              v134 = *v130++;
              v133 = v134;
              if (v134 < v94 && v128 == v93[v133])
              {
                v522[v120 * v94 + v133] = (*(v95 + 4 * v126) * *(*(a2 + 32) + 4 * *(*(v565 + 328) + 8 * v123) * v97 + v132)) * *v129;
              }

              v132 += 4 * v96;
              ++v129;
              ++v128;
              --v131;
            }

            while (v131);
            ++v123;
          }

          while (v123 != v124);
        }

        ++v120;
        v100 = v565;
        v99 = v550;
        v101 = v561;
      }

      while (v120 != v544);
    }
  }

  else
  {
    v100 = v565;
    if (v92 >= 1 && v550 >= 1)
    {
      v135 = 0;
      v136 = *(v565 + 160);
      v137 = *(a2 + 8);
      v138 = 4 * v97;
      do
      {
        if (v538)
        {
          v139 = v538[v135];
        }

        else
        {
          v139 = v135 + *(*(v565 + 176) + 4 * v564) * v96;
        }

        v140 = (v137 + 8 * *(v136 + 4 * (v139 / v96)));
        v141 = *v140;
        v142 = v140[1];
        if (*v140 < v142)
        {
          v143 = *(a2 + 16);
          v144 = v138 * v141 + 4 * v139 % v96 * v96;
          do
          {
            v145 = *(v143 + 4 * v141);
            if ((v145 & 0x80000000) == 0 && v145 < *a2 && v96 != 0)
            {
              v147 = *(*(v565 + 136) + 4 * v145) * v96;
              v148 = (a17 + 4 * v147);
              v149 = v96;
              v150 = v144;
              do
              {
                v152 = *v148++;
                v151 = v152;
                if (v152 < v92 && v147 == v91[v151])
                {
                  v526[v135 * v92 + v151] = *(*(a2 + 32) + v150);
                }

                v150 += 4;
                ++v147;
                --v149;
              }

              while (v149);
            }

            ++v141;
            v144 += v138;
          }

          while (v141 != v142);
        }

        ++v135;
      }

      while (v135 != v550);
    }

    v99 = v550;
    if (v94 >= 1)
    {
      if (v550 >= 1)
      {
        v153 = 0;
        v154 = *(v565 + 312);
        do
        {
          if (v561)
          {
            v155 = v561[v153];
          }

          else
          {
            v155 = v153 + *(*(v565 + 176) + 4 * v564) * v96;
          }

          v156 = (v154 + 8 * (v155 / v96));
          v157 = *v156;
          v158 = v156[1];
          if (*v156 < v158)
          {
            v159 = *(v565 + 320);
            v160 = 4 * (v155 % v96);
            do
            {
              v161 = *(v159 + 4 * v157) * v96;
              v162 = (a17 + v513 + 4 * v161);
              v163 = v96;
              v164 = v160;
              do
              {
                v166 = *v162++;
                v165 = v166;
                if (v166 < v94 && v161 == v93[v165])
                {
                  v522[v153 * v94 + v165] = *(*(a2 + 32) + 4 * *(*(v565 + 328) + 8 * v157) * v97 + v164);
                }

                v164 += 4 * v96;
                ++v161;
                --v163;
              }

              while (v163);
              ++v157;
            }

            while (v157 != v158);
          }

          ++v153;
        }

        while (v153 != v550);
      }

      if (v519 >= 1 && v550 < v542)
      {
        v167 = v550;
        v168 = v542 - v519;
        do
        {
          if (v167 >= v516)
          {
            if (v167 >= v168)
            {
              v169 = *(v534 + 4 * (v167 - v168));
            }

            else
            {
              v169 = (v167 - v556) % v96 + *(*(v565 + 208) + 4 * *(*(v565 + 200) + 8 * v564) + 4 * ((v167 - v556) / v96)) * v96;
            }
          }

          else if (v167 < 0)
          {
            v169 = 0x7FFFFFFF;
          }

          else if (v561)
          {
            v169 = v538[v167];
          }

          else
          {
            v169 = v167 + *(*(v565 + 176) + 4 * v564) * v96;
          }

          if (v169 >= 0)
          {
            v170 = v169;
          }

          else
          {
            v170 = -v169;
          }

          v171 = *(v21 + 4 * v170);
          if (v171 < v94 && v93[v171] == v170 && (v167 < v516 || v170 < *(*(v565 + 176) + 4 * v564) * v96))
          {
            v172 = (*(a2 + 8) + 8 * *(*(v565 + 160) + 4 * (v170 / v96)));
            v173 = *v172;
            v174 = v172[1];
            if (*v172 < v174)
            {
              v175 = *(a2 + 16);
              v176 = &v522[v171];
              v177 = v170 % v96 * v96;
              do
              {
                v178 = *(v175 + 4 * v173);
                if ((v178 & 0x80000000) == 0 && v178 < *a2 && v96 != 0)
                {
                  v180 = 0;
                  v181 = *(*(v565 + 136) + 4 * v178) * v96;
                  v182 = (a17 + 4 * v181);
                  v183 = v96;
                  do
                  {
                    v185 = *v182++;
                    v184 = v185;
                    v186 = -v185;
                    v187 = v185 > 0 || v550 <= v186;
                    if (!v187)
                    {
                      v188 = v561 ? v561[v186] : *(*(v565 + 176) + 4 * v564) * v96 - v184;
                      if (v181 == v188)
                      {
                        v176[v186 * v94] = *(*(a2 + 32) + 4 * v173 * v97 + 4 * v180 + 4 * v177);
                      }
                    }

                    ++v180;
                    ++v181;
                    --v183;
                  }

                  while (v183);
                }

                ++v173;
              }

              while (v173 != v174);
            }
          }

          ++v167;
        }

        while (v167 != v542);
      }
    }
  }

  if (v510 == v91)
  {
    v194 = 0;
    v309 = a14;
    v310 = v533;
    v311 = v507;
  }

  else
  {
    sub_23672AB18(a14);
    v189 = v565;
    v190 = *(v565 + 240);
    v191 = *(v190 + 8 * v564);
    v192 = *(v190 + 8 * v552);
    v193 = v533;
    v194 = 0;
    if (v191 < v192)
    {
      v195 = *(v565 + 256);
      v196 = *a14;
      v197 = v566;
      do
      {
        if ((*(v195 + v191) & 2) != 0)
        {
          v198 = *(*(v565 + 248) + 4 * v191);
          v533[v194++] = v198;
          *(v196 + 4 * v198) = *(a14 + 16);
        }

        ++v191;
      }

      while (v192 != v191);
      while (v194 >= 1)
      {
        v199 = v194 - 1;
        v200 = v193[v199];
        v559 = v199;
        if (a3 == 83)
        {
          v201 = *(*(a6 + 72) + 4 * v200);
          LODWORD(v202) = *(*(a6 + 80) + 4 * v200);
          v203 = *(*(a6 + 88) + 4 * v200);
        }

        else
        {
          v201 = 0;
          LODWORD(v202) = 0;
          v203 = 0;
        }

        v204 = *(v189 + 176);
        v205 = v200 + 1;
        v206 = v201 + (*(v204 + 4 * (v200 + 1)) - *(v204 + 4 * v200)) * v197;
        v562 = v206;
        if (a3 == 83)
        {
          v562 = *(*(a6 + 64) + 4 * v200);
        }

        v207 = *(a6 + 112);
        v208 = *(v189 + 184);
        v209 = *(v208 + 8 * v205);
        v210 = *(v208 + 8 * v200);
        v211 = *(v189 + 200);
        v212 = *(v211 + 8 * v205);
        v213 = *(v211 + 8 * v200);
        v539 = *(v207 + 8 * v200) + 8;
        v214 = (v204 + 4 * v564);
        v545 = v203;
        v548 = v200;
        v535 = v539 + 4 * (v206 + v202 + (v209 - v210) * v197) * v206;
        v527 = v203 + (v212 - v213) * v197;
        v520 = v206 + v202 + (v209 - v210) * v197;
        if (a3 == 81)
        {
          v215 = 0;
          v517 = 0;
          if (v202 <= 0)
          {
            v216 = 0;
          }

          else
          {
            v216 = v206;
          }

          v217 = (4 * v216);
          if (v203 <= 0)
          {
            v218 = 0;
          }

          else
          {
            v218 = v206;
          }

          v219 = (4 * v218);
        }

        else
        {
          v215 = v539 + 4 * (v206 + v202 + (v209 - v210) * v197) * v206 + 4 * (v203 + (v212 - v213) * v197) * v206;
          if (v202 <= 0)
          {
            v217 = 0;
          }

          else
          {
            v217 = (v215 + 4 * v206);
          }

          v517 = v215 + 4 * v206 + 4 * v202;
          v219 = (v517 + 4 * v206);
          if (v203 <= 0)
          {
            v219 = 0;
          }

          if (a3 == 83)
          {
            v220 = *(*(a6 + 80) + 4 * v564);
            v221 = *(*(a6 + 88) + 4 * v564);
            v222 = v566;
            v223 = *(*(a6 + 72) + 4 * v564) + (*(v204 + 4 * v552) - *v214) * v566;
            v224 = *(*(a6 + 64) + 4 * v564);
            goto LABEL_236;
          }
        }

        v221 = 0;
        v220 = 0;
        v222 = v566;
        v223 = (*(v204 + 4 * v552) - *v214) * v566;
        v224 = v223;
LABEL_236:
        v225 = *v512;
        v226 = (v512[1] - *v512) >> 2;
        v523 = *a9;
        v227 = *(v207 + 8 * v564) + 4 * (v220 + v223 + (*(v208 + 8 * v552) - *(v208 + v530)) * v222) * v223 + 4 * (v221 + (*(v211 + 8 * v552) - *(v211 + v530)) * v222) * v223 + 4 * v223 + 4 * v220;
        v228 = v227 + 8;
        if (a3 == 81)
        {
          v229 = 0;
        }

        else
        {
          v229 = v227 + 8;
        }

        v230 = v562;
        if (v562 >= v206)
        {
          v231 = 0;
          v241 = v562;
        }

        else
        {
          v231 = 0;
          v232 = v562 - v206;
          v233 = (v215 + 4 * v562);
          v234 = v562;
          do
          {
            v236 = *v233++;
            v235 = v236;
            if (v236 >= 0)
            {
              v237 = v235;
            }

            else
            {
              v237 = -v235;
            }

            v238 = *(a17 + 4 * v237);
            if ((v238 & 0x80000000) == 0 && v238 < v226 && v225[v238] == v237)
            {
              v239 = &v568[v231];
              *v239 = v234;
              v239[1] = v238;
              ++v231;
            }

            ++v234;
            v240 = __CFADD__(v232++, 1);
          }

          while (!v240);
          v241 = v206;
        }

        if (v209 > v210)
        {
          v242 = *(v189 + 192);
          do
          {
            if (v566 >= 1)
            {
              v243 = *(v242 + 4 * v210) * v566;
              v244 = v243 + v566;
              do
              {
                v245 = *(a17 + 4 * v243);
                if ((v245 & 0x80000000) == 0 && v245 < v226 && v243 == v225[v245])
                {
                  v246 = &v568[v231++];
                  *v246 = v241;
                  v246[1] = v245;
                }

                ++v243;
                ++v241;
              }

              while (v243 < v244);
            }

            ++v210;
          }

          while (v210 != v209);
        }

        if (v202 < 1)
        {
          v247 = &v568[v525];
          v193 = v533;
        }

        else
        {
          v202 = v202;
          v247 = &v568[v525];
          v193 = v533;
          do
          {
            v248 = *v217++;
            v210 = v248;
            v249 = *(a17 + 4 * v248);
            if ((v249 & 0x80000000) == 0 && v249 < v226)
            {
              if (v225[v249] == v210)
              {
                v210 = &v568[v231];
                *v210 = v241;
                *(v210 + 4) = v249;
                ++v231;
              }

              v247 = &v568[v525];
            }

            ++v241;
            --v202;
          }

          while (v202);
        }

        v197 = v566;
        if (!v231)
        {
          goto LABEL_351;
        }

        if (v562 >= v206)
        {
          v250 = 0;
          v259 = v562;
        }

        else
        {
          v250 = 0;
          v251 = v562 - v206;
          v252 = (v517 + 4 * v562);
          do
          {
            v254 = *v252++;
            v253 = v254;
            if (v254 >= 0)
            {
              v255 = v253;
            }

            else
            {
              v255 = -v253;
            }

            v210 = *(v21 + 4 * v255);
            v256 = -v210;
            if (v210 <= 0 && v224 > v256)
            {
              v210 = a3 == 81 ? (*v214 * v566 - v210) : *(v228 + 4 * v256);
              if (v210 == v255)
              {
                v258 = &v247[v250];
                v210 = (v250 + 1);
                *v258 = v230;
                v258[1] = v256;
                ++v250;
              }
            }

            ++v230;
            v240 = __CFADD__(v251++, 1);
          }

          while (!v240);
          v259 = v206;
        }

        if (v212 > v213)
        {
          v260 = *(v189 + 208);
          do
          {
            if (v566 >= 1)
            {
              v261 = *(v260 + 4 * v213) * v566;
              v262 = v261 + v566;
              do
              {
                v210 = *(v21 + 4 * v261);
                v263 = -v210;
                if (v210 <= 0 && v224 > v263)
                {
                  v210 = a3 == 81 ? (*v214 * v566 - v210) : *(v228 + 4 * v263);
                  if (v261 == v210)
                  {
                    v210 = &v247[v250];
                    *v210 = v259;
                    *(v210 + 4) = v263;
                    ++v250;
                  }
                }

                ++v261;
                ++v259;
              }

              while (v261 < v262);
            }

            ++v213;
          }

          while (v213 != v212);
        }

        if (v545 >= 1)
        {
          v265 = v545;
          v266 = v562;
          do
          {
            v268 = *v219++;
            v267 = v268;
            v269 = *(v21 + 4 * v268);
            v270 = -v269;
            v271 = v269 > 0 || v224 <= v270;
            if (!v271 && *(v229 + 4 * v270) == v267)
            {
              v272 = &v247[v250];
              *v272 = v259;
              v272[1] = v270;
              ++v250;
            }

            ++v259;
            --v265;
          }

          while (v265);
          if (!v250)
          {
            goto LABEL_351;
          }

LABEL_318:
          v273 = v231 * v266;
          v274 = a12;
          if (a11[1] < (v231 * v266))
          {
            if (*a11)
            {
              (*(v189 + 32))(*a11, a12);
              v189 = v565;
            }

            v275 = (*(v189 + 24))(4 * v273, v274);
            v189 = v565;
            *a11 = v275;
            a11[1] = v273;
            v247 = &v568[v525];
            v274 = a12;
            v266 = v562;
          }

          v276 = v539;
          if (v266 >= 1)
          {
            v277 = 0;
            v278 = *a11;
            do
            {
              if (v231 >= 1)
              {
                v279 = v568;
                v280 = v278;
                v281 = v231;
                do
                {
                  v282 = *v279++;
                  *v280++ = *(v539 + 4 * v277 * v520 + 4 * v282);
                  --v281;
                }

                while (v281);
              }

              ++v277;
              v278 += v231;
            }

            while (v277 != v266);
          }

          v283 = v250 * v266;
          if (v274[1] < (v250 * v266))
          {
            if (*v274)
            {
              (*(v189 + 32))(*v274, v274, v539, v210);
              v189 = v565;
            }

            v284 = (*(v189 + 24))(4 * v283);
            v189 = v565;
            v274 = a12;
            *a12 = v284;
            a12[1] = v283;
            v247 = &v568[v525];
            v266 = v562;
            v276 = v539;
          }

          if (v266 >= 1)
          {
            v285 = 0;
            v286 = 0;
            do
            {
              if (v250 >= 1)
              {
                v287 = (*v274 + v285);
                v288 = v247;
                v289 = v250;
                do
                {
                  v290 = *v288++;
                  v291 = v535 + 4 * v286 * v527 + 4 * (v290 - v206);
                  v292 = (v276 + 4 * v286 + 4 * v290 * v520);
                  if (v290 >= v206)
                  {
                    v292 = v291;
                  }

                  *v287++ = *v292;
                  --v289;
                }

                while (v289);
              }

              ++v286;
              v285 += 4 * v250;
            }

            while (v286 != v562);
          }

          v293 = v250 * v231;
          v294 = *a13;
          if (a13[1] >= v250 * v231)
          {
            v193 = v533;
          }

          else
          {
            v193 = v533;
            if (v294)
            {
              (*(v189 + 32))(v294, v274, v276, v535);
              v189 = v565;
            }

            *a13 = (*(v189 + 24))(4 * v293);
            a13[1] = v293;
          }

          v295 = *a11;
          v503 = *a12;
          cblas_sgemm_NEWLAPACK();
          v189 = v565;
          v197 = v566;
          if (v250 >= 1)
          {
            v296 = 0;
            v297 = *a13;
            do
            {
              if (v231 >= 1)
              {
                v298 = &v523[4 * SHIDWORD(v554[v296]) * (v511 >> 2)];
                v299 = v568;
                v300 = v297;
                v301 = v231;
                do
                {
                  v302 = *v300++;
                  *&v298[4 * *(v299 + 1)] = v302 + *&v298[4 * *(v299 + 1)];
                  ++v299;
                  --v301;
                }

                while (v301);
              }

              ++v296;
              v297 += v231;
            }

            while (v296 != v250);
          }

          goto LABEL_351;
        }

        v266 = v562;
        if (v250)
        {
          goto LABEL_318;
        }

LABEL_351:
        v303 = (*(v189 + 240) + 8 * v548);
        v304 = *v303;
        v305 = v303[1];
        if (v304 >= v305)
        {
          v99 = v550;
          v194 = v559;
        }

        else
        {
          v306 = *(v189 + 256);
          v307 = *a14;
          v99 = v550;
          v194 = v559;
          do
          {
            if ((*(v306 + v304) & 2) != 0)
            {
              v308 = *(*(v189 + 248) + 4 * v304);
              if (*(v307 + 4 * v308) < *(a14 + 16))
              {
                v193[v194++] = v308;
                *(v307 + 4 * v308) = *(a14 + 16);
              }
            }

            ++v304;
          }

          while (v305 != v304);
        }
      }
    }

    v312 = (v512[1] - *v512) >> 2;
    v505 = *a9;
    cblas_strsm_NEWLAPACK();
    if (v99 < 1)
    {
      v322 = 0.0;
      v100 = v565;
      v310 = v533;
    }

    else
    {
      v313 = 0;
      v314 = v512[1];
      v315 = v314 - *v512;
      v316 = *a9;
      if (v315 <= 1)
      {
        v315 = 1;
      }

      v317 = 0.0;
      v100 = v565;
      v310 = v533;
      do
      {
        v318 = v315;
        v319 = v316;
        if (v314 != *v512)
        {
          do
          {
            v320 = *v319++;
            v321 = fabsf(v320);
            if (v321 >= v317)
            {
              v317 = v321;
            }

            --v318;
          }

          while (v318);
        }

        ++v313;
        v316 += (v511 >> 2);
      }

      while (v313 != v99);
      v322 = v317;
    }

    v309 = a14;
    if (1.0 / *(a6 + 16) < v322)
    {
      *(a15 + v564) = 1;
      v332 = *(v100 + 168);
      if (v552 >= v332)
      {
        return;
      }

      while (1)
      {
        if ((*(a15 + v552) & 1) == 0)
        {
          v333 = (*(v100 + 240) + 8 * v552);
          v335 = *v333;
          v334 = v333[1];
          v187 = v334 <= v335;
          v336 = v334 - v335;
          if (!v187)
          {
            v337 = (*(v100 + 248) + 4 * v335);
            while (1)
            {
              v338 = *v337++;
              if (*(a15 + v338) == 1)
              {
                break;
              }

              if (!--v336)
              {
                goto LABEL_390;
              }
            }

            *(a15 + v552) = 1;
          }
        }

LABEL_390:
        if (v332 == ++v552)
        {
          return;
        }
      }
    }

    v93 = *v529;
    v311 = v529[1];
  }

  v323 = (v508 >> 2);
  if (v311 == v93)
  {
    goto LABEL_532;
  }

  v324 = v309;
  sub_23672AB18(v309);
  v100 = v565;
  v325 = *(v565 + 240);
  v326 = *(v325 + 8 * v564);
  v524 = v325;
  v327 = *(v325 + 8 * v552);
  if (v326 >= v327)
  {
    v330 = v566;
  }

  else
  {
    v328 = *(v565 + 256);
    v329 = *v324;
    v330 = v566;
    do
    {
      if (*(v328 + v326))
      {
        v331 = *(*(v565 + 248) + 4 * v326);
        v310[v194++] = v331;
        *(v329 + 4 * v331) = *(v324 + 16);
      }

      ++v326;
    }

    while (v327 != v326);
  }

  while (v194 >= 1)
  {
    v339 = v194 - 1;
    v340 = v310[v339];
    if (a3 == 83)
    {
      v341 = *(*(a6 + 72) + 4 * v340);
      LODWORD(v342) = *(*(a6 + 80) + 4 * v340);
      v343 = *(*(a6 + 88) + 4 * v340);
    }

    else
    {
      v341 = 0;
      LODWORD(v342) = 0;
      v343 = 0;
    }

    v344 = *(v100 + 176);
    v345 = v340 + 1;
    v346 = v341 + (*(v344 + 4 * (v340 + 1)) - *(v344 + 4 * v340)) * v330;
    v347 = v346;
    if (a3 == 83)
    {
      v347 = *(*(a6 + 64) + 4 * v340);
    }

    v563 = v347;
    v348 = *(a6 + 112);
    v349 = *(v100 + 184);
    v350 = *(v349 + 8 * v345);
    v351 = *(v349 + 8 * v340);
    v352 = v346 + v342 + (v350 - v351) * v330;
    v353 = v330;
    v354 = *(v100 + 200);
    v355 = *(v354 + 8 * v345);
    v549 = v340;
    v356 = *(v354 + 8 * v340);
    v518 = v352;
    v528 = *(v348 + 8 * v340) + 8;
    v357 = v343 + (v355 - v356) * v353;
    v358 = (v344 + 4 * v564);
    v560 = v339;
    v546 = v528 + 4 * v352 * v346;
    v551 = v357;
    v540 = v343;
    if (a3 == 81)
    {
      v359 = 0;
      v514 = 0;
      if (v342 <= 0)
      {
        v360 = 0;
      }

      else
      {
        v360 = v346;
      }

      v361 = (4 * v360);
      if (v343 <= 0)
      {
        v362 = 0;
      }

      else
      {
        v362 = v346;
      }

      v363 = (4 * v362);
    }

    else
    {
      v359 = v528 + 4 * v352 * v346 + 4 * v357 * v346;
      v364 = v359 + 4 * v346;
      if (v342 <= 0)
      {
        v361 = 0;
      }

      else
      {
        v361 = (v359 + 4 * v346);
      }

      v514 = v364 + 4 * v342;
      if (v343 <= 0)
      {
        v363 = 0;
      }

      else
      {
        v363 = (v364 + 4 * v342 + 4 * v346);
      }

      if (a3 == 83)
      {
        v365 = *(*(a6 + 80) + 4 * v564);
        v366 = *(*(a6 + 88) + 4 * v564);
        v367 = v566;
        v368 = *(*(a6 + 72) + 4 * v564) + (*(v344 + 4 * v552) - *v358) * v566;
        v369 = *(*(a6 + 64) + 4 * v564);
        goto LABEL_415;
      }
    }

    v366 = 0;
    v365 = 0;
    v367 = v566;
    v368 = (*(v344 + 4 * v552) - *v358) * v566;
    v369 = v368;
LABEL_415:
    v370 = 0;
    v371 = *(v348 + 8 * v564);
    v536 = v529[1];
    v372 = *v529;
    v521 = *a10;
    v373 = v371 + 4 * (v365 + v368 + (*(v349 + 8 * v552) - *(v349 + v530)) * v367) * v368 + 4 * (v366 + (*(v354 + 8 * v552) - *(v354 + v530)) * v367) * v368;
    v374 = v373 + 8;
    if (a3 == 81)
    {
      v375 = 0;
    }

    else
    {
      v375 = v373 + 8;
    }

    v376 = v563;
    if (v563 < v346)
    {
      v370 = 0;
      v377 = v563 - v346;
      v378 = (v359 + 4 * v563);
      v379 = v563;
      do
      {
        v381 = *v378++;
        v380 = v381;
        if (v381 >= 0)
        {
          v382 = v380;
        }

        else
        {
          v382 = -v380;
        }

        v383 = *(a17 + 4 * v382);
        v384 = -v383;
        if (v383 <= 0 && v369 > v384)
        {
          v386 = a3 == 81 ? *v358 * v566 - v383 : *(v374 + 4 * v384);
          if (v386 == v382)
          {
            v387 = &v568[v370++];
            *v387 = v379;
            v387[1] = v384;
          }
        }

        ++v379;
        v240 = __CFADD__(v377++, 1);
      }

      while (!v240);
      v376 = v346;
    }

    if (v350 > v351)
    {
      v388 = *(v565 + 192);
      do
      {
        if (v566 >= 1)
        {
          v389 = *(v388 + 4 * v351) * v566;
          v390 = v389 + v566;
          v391 = v389;
          do
          {
            v392 = *(a17 + 4 * v391);
            v393 = -v392;
            if (v392 <= 0 && v369 > v393)
            {
              v395 = a3 == 81 ? *v358 * v566 - v392 : *(v374 + 4 * v393);
              if (v391 == v395)
              {
                v396 = &v568[v370++];
                *v396 = v376;
                v396[1] = v393;
              }
            }

            ++v391;
            ++v376;
          }

          while (v391 < v390);
        }

        ++v351;
      }

      while (v351 != v350);
    }

    if (v342 < 1)
    {
      v100 = v565;
      v330 = v566;
      if (!v370)
      {
        goto LABEL_521;
      }

LABEL_462:
      v403 = (v536 - v372) >> 2;
      v404 = &v568[v525];
      v405 = 0;
      if (v563 >= v346)
      {
        v416 = v563;
        v409 = v546;
        v410 = v551;
        LODWORD(v411) = v540;
      }

      else
      {
        v406 = v563 - v346;
        v407 = (v514 + 4 * v563);
        v408 = v563;
        v409 = v546;
        v410 = v551;
        LODWORD(v411) = v540;
        do
        {
          v413 = *v407++;
          v412 = v413;
          if (v413 < 0)
          {
            v412 = -v412;
          }

          v414 = *(v21 + 4 * v412);
          if ((v414 & 0x80000000) == 0 && v414 < v403)
          {
            v351 = v372[v414];
            if (v351 == v412)
            {
              v415 = &v554[v405++];
              *v415 = v408;
              v415[1] = v414;
            }
          }

          ++v408;
          v240 = __CFADD__(v406++, 1);
        }

        while (!v240);
        v416 = v346;
      }

      if (v355 > v356)
      {
        v417 = *(v100 + 208);
        do
        {
          if (v330 >= 1)
          {
            v418 = *(v417 + 4 * v356) * v330;
            v419 = v418;
            v420 = v418 + v330;
            do
            {
              v351 = *(v21 + 4 * v419);
              if ((v351 & 0x80000000) == 0 && v351 < v403 && v419 == v372[v351])
              {
                v421 = &v554[v405++];
                *v421 = v416;
                v421[1] = v351;
              }

              ++v419;
              ++v416;
            }

            while (v419 < v420);
          }

          ++v356;
        }

        while (v356 != v355);
      }

      if (v411 >= 1)
      {
        v411 = v411;
        do
        {
          v423 = *v363++;
          v422 = v423;
          v424 = *(v21 + 4 * v423);
          if ((v424 & 0x80000000) == 0 && v424 < v403 && v372[v424] == v422)
          {
            v425 = &v554[v405++];
            *v425 = v416;
            v425[1] = v424;
          }

          ++v416;
          --v411;
        }

        while (v411);
      }

      if (v405)
      {
        v426 = v563;
        v427 = v563 * v370;
        if (a11[1] < (v563 * v370))
        {
          v428 = v409;
          if (*a11)
          {
            (*(v100 + 32))(*a11, v351, v100, v554);
            v100 = v565;
          }

          v429 = (*(v100 + 24))(4 * v427);
          v100 = v565;
          *a11 = v429;
          a11[1] = v427;
          v404 = &v568[v525];
          v426 = v563;
          v409 = v428;
          v410 = v551;
        }

        v430 = v426;
        v431 = a12;
        v432 = v528;
        if (v426 >= 1)
        {
          v433 = 0;
          v434 = *a11;
          do
          {
            v435 = v568;
            v436 = v434;
            v437 = v370;
            do
            {
              v438 = *v435++;
              *v436++ = *(v528 + 4 * v433 * v518 + 4 * v438);
              --v437;
            }

            while (v437);
            ++v433;
            v434 += v370;
          }

          while (v433 != v430);
        }

        v439 = v563;
        v440 = v563 * v405;
        if (a12[1] < (v563 * v405))
        {
          if (*a12)
          {
            (*(v100 + 32))(*a12, a12, v100, v404);
            v440 = v563 * v405;
            v100 = v565;
          }

          v441 = v440;
          v442 = (*(v100 + 24))(4 * v440);
          v100 = v565;
          v431 = a12;
          *a12 = v442;
          a12[1] = v441;
          v404 = &v568[v525];
          v439 = v563;
          v432 = v528;
          v409 = v546;
          v410 = v551;
        }

        if (v439 >= 1)
        {
          v443 = 0;
          v444 = 0;
          do
          {
            v445 = (*v431 + v443);
            v446 = v404;
            v447 = v405;
            do
            {
              v448 = *v446++;
              v449 = v409 + 4 * v444 * v410 + 4 * (v448 - v346);
              v450 = (v432 + 4 * v444 + 4 * v448 * v518);
              if (v448 >= v346)
              {
                v450 = v449;
              }

              *v445++ = *v450;
              --v447;
            }

            while (v447);
            ++v444;
            v443 += 4 * v405;
          }

          while (v444 != v430);
        }

        v451 = v405 * v370;
        v452 = a13;
        v453 = *a13;
        if (a13[1] < v451)
        {
          if (v453)
          {
            (*(v100 + 32))(v453, v431, v100, v404);
            v100 = v565;
          }

          v452 = a13;
          *a13 = (*(v100 + 24))(4 * v451);
          a13[1] = v451;
        }

        v454 = *a11;
        v504 = *a12;
        cblas_sgemm_NEWLAPACK();
        v455 = 0;
        v456 = *v452;
        v100 = v565;
        v330 = v566;
        do
        {
          v457 = &v521[4 * SHIDWORD(v554[v455])];
          v458 = v568;
          v459 = v456;
          v460 = v370;
          do
          {
            v461 = *v459++;
            v462 = *(v458 + 1) * v323;
            *&v457[4 * v462] = v461 + *&v457[4 * v462];
            ++v458;
            --v460;
          }

          while (v460);
          ++v455;
          v456 += v370;
        }

        while (v455 != v405);
        v524 = *(v565 + 240);
      }

      goto LABEL_521;
    }

    v342 = v342;
    v100 = v565;
    v330 = v566;
    do
    {
      v398 = *v361++;
      v397 = v398;
      v399 = *(a17 + 4 * v398);
      v400 = -v399;
      v401 = v399 > 0 || v369 <= v400;
      if (!v401 && *(v375 + 4 * v400) == v397)
      {
        v402 = &v568[v370++];
        *v402 = v376;
        v402[1] = v400;
      }

      ++v376;
      --v342;
    }

    while (v342);
    if (v370)
    {
      goto LABEL_462;
    }

LABEL_521:
    v463 = (v524 + 8 * v549);
    v464 = *v463;
    v465 = v463[1];
    if (*v463 >= v465)
    {
      v310 = v533;
      v194 = v560;
    }

    else
    {
      v466 = *(v100 + 256);
      v467 = *a14;
      v310 = v533;
      v194 = v560;
      do
      {
        if (*(v466 + v464))
        {
          v468 = *(*(v100 + 248) + 4 * v464);
          if (*(v467 + 4 * v468) < *(a14 + 16))
          {
            v533[v194++] = v468;
            *(v467 + 4 * v468) = *(a14 + 16);
          }
        }

        ++v464;
      }

      while (v465 != v464);
    }
  }

  if (v574 > 1)
  {
    v469 = (v529[1] - *v529) >> 2;
    v506 = *a10;
    cblas_strsm_NEWLAPACK();
    v100 = v565;
  }

LABEL_532:
  v470 = v566;
  if ((v531 & 1) == 0 && v512[1] != *v512)
  {
    sub_23672A9A0(a1, &v570, v100, v566, v555);
    v470 = v566;
    v100 = v565;
  }

  v471 = v574;
  if (v574 >= 1)
  {
    v472 = 0;
    v474 = *v512;
    v473 = v512[1];
    v475 = v473 - *v512;
    v476 = *a9;
    v477 = *(&v574 + 1);
    v478 = v575;
    if (v475 <= 1)
    {
      v475 = 1;
    }

    do
    {
      if (v473 != v474)
      {
        v479 = v475;
        v480 = v474;
        v481 = v476;
        do
        {
          v482 = *v481++;
          v483 = v482;
          v484 = *v480++;
          *(v477 + 4 * v478 * v472 + 4 * *(v555 + 4 * v484)) = v483;
          --v479;
        }

        while (v479);
      }

      ++v472;
      v476 += (v511 >> 2);
    }

    while (v472 != v471);
  }

  if ((v531 & 0x100000000) == 0 && v529[1] != *v529)
  {
    sub_23672AA5C(a1, &v570, v100, v470, v509);
  }

  if (v471 >= 1)
  {
    v485 = 0;
    v486 = 0;
    v488 = *v529;
    v487 = v529[1];
    v489 = v487 - *v529;
    v490 = v573;
    v491 = *(&v575 + 1);
    v492 = v576;
    v493 = *(&v574 + 1);
    v494 = v575;
    if (v489 <= 1)
    {
      v489 = 1;
    }

    do
    {
      if (v487 != v488)
      {
        v495 = *a10 + v485;
        v496 = v489;
        v497 = v488;
        do
        {
          v498 = *v497++;
          v499 = *(v509 + 4 * v498);
          v187 = v499 < v490;
          LODWORD(v498) = *v495++;
          v500 = v498;
          v501 = v491 + 4 * v492 * v486 + 4 * (v499 - v490);
          v502 = (v493 + 4 * v486 + 4 * v494 * v499);
          if (!v187)
          {
            v502 = v501;
          }

          *v502 = v500;
          --v496;
        }

        while (v496);
      }

      ++v486;
      v485 += 4 * v323;
    }

    while (v486 != v471);
  }
}

uint64_t sub_23675DB04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int *a8, int *a9, uint64_t a10, int a11, void *a12, uint64_t *a13, float **a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = a6;
  v28 = a5;
  v29 = a2;
  v667 = *MEMORY[0x277D85DE8];
  v612 = *(&off_28499C2B0 + a4 - 81);
  v31 = *(a5 + 56);
  v32 = 4 * v31;
  v613 = 4 * v31 + 7;
  v639 = a23 + (v613 & 0xFFFFFFFFFFFFFFF8);
  v621 = v639 + (v613 & 0xFFFFFFFFFFFFFFF8);
  v615 = v31;
  v616 = (v621 + 8 * v31);
  v33 = &v616[v31];
  v34 = (v33 + (v613 & 0xFFFFFFFFFFFFFFF8) + (v613 & 0xFFFFFFFFFFFFFFF8));
  v664 = 0u;
  v665 = 0u;
  v662 = 0u;
  v663 = 0u;
  v660 = 0u;
  v661 = 0u;
  v35 = a1;
  v36 = a1 + 1;
  v37 = *(v28 + 184);
  v38 = *(*(v28 + 176) + 4 * v36) - *(*(v28 + 176) + 4 * a1);
  v39 = v38 * a6;
  HIDWORD(v660) = v38 * a6;
  v40 = 8 * a1;
  *(&v661 + 1) = *(a7[14] + v40) + 8;
  v624 = v36;
  v41 = 8 * v36;
  LODWORD(v37) = *(v37 + 8 * v36) - *(v37 + v40);
  v42 = *(v28 + 168);
  LODWORD(v660) = (v38 + v37) * a6;
  v43 = (*(*(v28 + 200) + v41) - *(*(v28 + 200) + v40)) * a6;
  DWORD1(v660) = v43 + v38 * a6;
  v622 = v34 + (v613 & 0xFFFFFFFFFFFFFFF8) + (v613 & 0xFFFFFFFFFFFFFFF8);
  v614 = v42;
  *&v662 = v660;
  *(&v662 + 1) = *(&v661 + 1) + 4 * v660 * (v38 * a6);
  v632 = v622 + 8 * v42;
  v608 = v632 + (v613 & 0xFFFFFFFFFFFFFFF8);
  if (a4 != 82)
  {
    v32 = 0;
  }

  v611 = v32;
  if (a4 == 82)
  {
    v44 = v608 + (v613 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v44 = 0;
  }

  v610 = v44;
  *&v663 = v43;
  v652 = v28;
  v653 = a1;
  if (a4 != 81)
  {
    v46 = *(&v661 + 1) + 4 * v660 * v39 + 4 * v43 * v39;
    *(&v663 + 1) = v46;
    *&v664 = v46 + 4 * v39;
    if (a4 == 83)
    {
      v654 = a2;
      sub_236759FCC(a1, 1, 83, v28, a6, a7, a10, v666, (v33 + (v613 & 0xFFFFFFFFFFFFFFF8)), v31 & 0x3FFFFFFFFFFFFFFFLL, (v34 + (v613 & 0xFFFFFFFFFFFFFFF8)), v31 & 0x3FFFFFFFFFFFFFFFLL);
      v48 = v666[0];
      v607 = v666[1];
      sub_236759FCC(a1, 2, 83, v28, a6, a7, a10, v666, v33, v615 & 0x3FFFFFFFFFFFFFFFLL, v34, v615 & 0x3FFFFFFFFFFFFFFFLL);
      v49 = 0;
      v51 = *(&v666[0] + 1);
      v50 = *&v666[0];
      v45 = DWORD2(v666[1]);
      v606 = *&v666[1];
      *(a7[10] + 4 * v653) = DWORD2(v666[0]);
      *(a7[11] + 4 * v653) = DWORD2(v48);
      v52 = a7[9];
      *(v52 + 4 * v653) = 0;
      v53 = *(v28 + 240);
      v54 = *(v53 + 8 * v653);
      v55 = *(v53 + 8 * v624);
      v27 = a6;
      if (v54 < v55)
      {
        v49 = 0;
        v56 = *(v28 + 256);
        do
        {
          if (*(v56 + v54) == 3)
          {
            v57 = *(*(v28 + 248) + 4 * v54);
            v49 += *(v52 + 4 * v57) + (*(*(v28 + 176) + 4 * v57 + 4) - *(*(v28 + 176) + 4 * v57)) * a6 - *(a7[8] + 4 * v57);
            *(v52 + 4 * v653) = v49;
          }

          ++v54;
        }

        while (v55 != v54);
      }

      if (v49 > 0 || *(&v48 + 1) || v51)
      {
        v58 = SHIDWORD(v660);
        v59 = HIDWORD(v660) + v49;
        v60 = v49 + v51 + v660;
        v61 = v49 + DWORD2(v48) + DWORD1(v660);
        v62 = 4 * (*(&v48 + 1) + v51 + 2 * v59 + v60 * v59 + v61 * v59) + 8;
        v63 = a7[14];
        v64 = *(v63 + 8 * v653);
        if (v62 > *v64)
        {
          v640 = SHIDWORD(v660);
          v641 = v50;
          if (*v64)
          {
            (*(v28 + 32))();
          }

          *(a7[14] + 8 * v653) = (*(v28 + 24))(4 * (*(&v48 + 1) + v51 + 2 * v59 + v60 * v59 + v61 * v59) + 8);
          v63 = a7[14];
          v64 = *(v63 + 8 * v653);
          if (!v64)
          {
            v586 = *(v28 + 40);
            if (!v586)
            {
              v587 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v587)
              {
                sub_23672B14C(v587, v588, v589, v590, v591, v592, v593, v594);
              }

              _SparseTrap();
            }

            memset(&v666[14] + 10, 0, 22);
            *(&v666[13] + 10) = 0u;
            *(&v666[12] + 10) = 0u;
            *(&v666[11] + 10) = 0u;
            *(&v666[10] + 10) = 0u;
            *(&v666[9] + 10) = 0u;
            *(&v666[8] + 10) = 0u;
            *(&v666[7] + 10) = 0u;
            *(&v666[6] + 10) = 0u;
            memset(&v666[3] + 10, 0, 48);
            strcpy(v666, "Failed to allocate additional storage for delayed pivots\n");
            v586(v666);
            result = 4294967293;
            goto LABEL_553;
          }

          *v64 = v62;
          v52 = a7[9];
          v49 = *(v52 + 4 * v653);
          v27 = a6;
          v58 = v640;
          v50 = v641;
        }

        v65 = v64 + 4 * (v60 - v59 + v61) * v59 + 8;
        v66 = (v65 + 4 * v59);
        v67 = &v66[4 * v51];
        if (v49 >= 1)
        {
          v68 = *(v28 + 240);
          v69 = *(v68 + 8 * v653);
          v70 = *(v68 + 8 * v624);
          if (v69 < v70)
          {
            v71 = &v67[4 * v58];
            v72 = *(v28 + 256);
            v73 = v65 + 4 * v58;
            do
            {
              if (*(v72 + v69) == 3)
              {
                v74 = *(*(v28 + 248) + 4 * v69);
                v75 = *(v52 + 4 * v74) + (*(*(v28 + 176) + 4 * (v74 + 1)) - *(*(v28 + 176) + 4 * v74)) * v27;
                v76 = *(a7[8] + 4 * v74);
                if (v76 < v75)
                {
                  v77 = 0;
                  v78 = *(a7[10] + 4 * v74);
                  v79 = v75;
                  v80 = *(v63 + 8 * v74) + 8;
                  v81 = 4 * (v78 + v75 + (*(*(v28 + 184) + 8 * (v74 + 1)) - *(*(v28 + 184) + 8 * v74)) * v27) + 4 * (*(a7[11] + 4 * v74) + (*(*(v28 + 200) + 8 * (v74 + 1)) - *(*(v28 + 200) + 8 * v74)) * v27);
                  v82 = v80 + v81 * v75 + 4 * v76;
                  v83 = v80 + (v81 + 4) * v79 + 4 * v76 + 4 * v78;
                  v84 = v76 - v79;
                  do
                  {
                    v85 = *(v82 + v77);
                    if (v85 < 0)
                    {
                      v85 = -v85;
                    }

                    *(v73 + v77) = v85;
                    v86 = *(v83 + v77);
                    if (v86 < 0)
                    {
                      v86 = -v86;
                    }

                    *&v71[v77] = v86;
                    v77 += 4;
                    v87 = __CFADD__(v84++, 1);
                  }

                  while (!v87);
                  v73 += v77;
                  v71 += v77;
                }
              }

              ++v69;
            }

            while (v69 != v70);
          }
        }

        if (v51)
        {
          memcpy(v66, v50, 4 * v51);
          v27 = a6;
        }

        if (*(&v48 + 1))
        {
          memcpy(&v67[4 * v59], v48, 4 * *(&v48 + 1));
          v27 = a6;
        }

        v35 = v653;
        v88 = *(a7[9] + 4 * v653);
        v89 = *(a7[10] + 4 * v653);
        v90 = *(a7[11] + 4 * v653);
        v91 = *(a7[14] + 8 * v653) + 8;
        v92 = v88 + (*(*(v28 + 176) + 4 * v624) - *(*(v28 + 176) + 4 * v653)) * v27;
        v93 = *(a7[8] + 4 * v653);
        v94 = (*(*(v28 + 200) + v41) - *(*(v28 + 200) + 8 * v653)) * v27;
        v95 = v92 + v90 + v94;
        v96 = (v92 + v89 + (*(*(v28 + 184) + v41) - *(*(v28 + 184) + 8 * v653)) * v27);
        v97 = v91 + 4 * v96 * v92;
        v98 = v94 + v90;
        v46 = v97 + 4 * v98 * v92;
        v99 = v46 + 4 * v92;
        LODWORD(v660) = v92 + v89 + (*(*(v28 + 184) + v41) - *(*(v28 + 184) + 8 * v653)) * v27;
        DWORD1(v660) = v95;
        if (v89 <= 0)
        {
          v100 = 0;
        }

        else
        {
          v100 = v46 + 4 * v92;
        }

        *(&v660 + 1) = __PAIR64__(v92, v88);
        v101 = v99 + 4 * v89 + 4 * v92;
        if (v90 <= 0)
        {
          v101 = 0;
        }

        *&v661 = v93;
        *(&v661 + 1) = v91;
        *&v662 = v96;
        *(&v662 + 1) = v91 + 4 * v96 * v92;
        *&v663 = v98;
        *(&v663 + 1) = v97 + 4 * v98 * v92;
        *&v664 = v99 + 4 * v89;
        *(&v664 + 1) = __PAIR64__(v90, v89);
        *&v665 = v100;
        *(&v665 + 1) = v101;
      }

      else
      {
        v46 = *(&v663 + 1);
        if (!*(&v663 + 1))
        {
          v47 = 1;
          v35 = v653;
          v29 = v654;
          goto LABEL_54;
        }

        v35 = v653;
      }

      v29 = v654;
    }

    else
    {
      v607 = 0uLL;
      v45 = 0;
      v606 = 0;
    }

    if (SHIDWORD(v660) > SDWORD2(v660))
    {
      v102 = 0;
      v103 = *(v28 + 176);
      v104 = v664;
      do
      {
        *(v46 + 4 * v102) = v102 + *(v103 + 4 * v35) * v27;
        *(v104 + 4 * v102) = v102 + *(v103 + 4 * v35) * v27;
        ++v102;
      }

      while (v102 < SHIDWORD(v660) - SDWORD2(v660));
    }

    v47 = 0;
    goto LABEL_54;
  }

  *&v607 = 0;
  DWORD2(v607) = 0;
  v45 = 0;
  v606 = 0;
  v46 = 0;
  v47 = 1;
LABEL_54:
  v105 = v660;
  if (v660 >= 1)
  {
    v106 = 0;
    v107 = v665;
    do
    {
      if (v106 >= SHIDWORD(v660))
      {
        v109 = v105 - SDWORD2(v664);
        if (v106 >= v109)
        {
          v108 = *(v107 - 4 * v109 + 4 * v106);
        }

        else
        {
          v108 = (v106 - HIDWORD(v660)) % v27 + *(*(v28 + 192) + 4 * *(*(v28 + 184) + 8 * v35) + 4 * ((v106 - HIDWORD(v660)) / v27)) * v27;
        }
      }

      else if (v47)
      {
        v108 = v106 + *(*(v28 + 176) + 4 * v35) * v27;
      }

      else
      {
        v108 = *(v46 + 4 * v106);
      }

      if (v108 < 0)
      {
        v108 = -v108;
      }

      *(a23 + 4 * v108) = v106++;
      v105 = v660;
    }

    while (v106 < v660);
  }

  v110 = DWORD1(v660);
  if (SDWORD1(v660) >= 1)
  {
    v111 = 0;
    v112 = *(&v665 + 1);
    v113 = v664;
    do
    {
      if (v111 >= SHIDWORD(v660))
      {
        v115 = v110 - SHIDWORD(v664);
        if (v111 >= v115)
        {
          v114 = *(v112 - 4 * v115 + 4 * v111);
        }

        else
        {
          v114 = (v111 - HIDWORD(v660)) % v27 + *(*(v28 + 208) + 4 * *(*(v28 + 200) + 8 * v35) + 4 * ((v111 - HIDWORD(v660)) / v27)) * v27;
        }
      }

      else if (v47)
      {
        v114 = v111 + *(*(v28 + 176) + 4 * v35) * v27;
      }

      else
      {
        v114 = *(v113 + 4 * v111);
      }

      if (v114 < 0)
      {
        v114 = -v114;
      }

      *(v639 + 4 * v114) = v111++;
      v110 = SDWORD1(v660);
    }

    while (v111 < SDWORD1(v660));
  }

  v605 = v45;
  v116 = 4 * SHIDWORD(v660);
  bzero(*(&v661 + 1), v116 * v662);
  bzero(*(&v662 + 1), v116 * v663);
  sub_23675A4D4(v29, a1, SHIDWORD(v660), a3, v28, *(&v661 + 1), v662, *(&v662 + 1), v663, a23, v639, a7[12], a7[13]);
  if (*(&v660 + 4) > 0)
  {
    v117 = v653;
    v118 = (*(v28 + 240) + 8 * v653);
    v119 = *v118;
    if (*v118 < v118[1])
    {
      v120 = v110;
      v121 = a7;
      v122 = a6;
      v123 = a19;
      v124 = a15;
      while (1)
      {
        if (*(*(v28 + 256) + v119) != 3)
        {
          goto LABEL_232;
        }

        v125 = *(*(v28 + 248) + 4 * v119);
        if (*(a17 + v125))
        {
          goto LABEL_232;
        }

        if (a4 == 83)
        {
          v126 = *(v121[9] + 4 * v125);
          v127 = *(v121[10] + 4 * v125);
          v128 = *(v121[11] + 4 * v125);
        }

        else
        {
          v126 = 0;
          v127 = 0;
          v128 = 0;
        }

        v642 = *(v28 + 176);
        v129 = v126 + (*(v642 + 4 * (v125 + 1)) - *(v642 + 4 * v125)) * v122;
        v130 = v129;
        if (a4 == 83)
        {
          v130 = *(v121[8] + 4 * v125);
        }

        __src = *(v28 + 184);
        v131 = *(v121[14] + 8 * v125) + 8 + 4 * (v129 + v127 + (__src[2 * v125 + 2] - __src[2 * v125]) * v122) * v129 + 4 * (v128 + (*(*(v28 + 200) + 8 * (v125 + 1)) - *(*(v28 + 200) + 8 * v125)) * v122) * v129;
        v132 = v131 + 4 * v129 + 4 * v127;
        v133 = a4 == 81 ? 0 : v131;
        v134 = a4 == 81 ? 0 : v132;
        v627 = v134;
        if (v130 == v129)
        {
          goto LABEL_232;
        }

        v617 = v119;
        v625 = v129;
        v135 = *(a3 + 28);
        v636 = v121[12];
        v637 = (v135 * v135);
        if (v636)
        {
          v619 = v121[13];
          if (v130 >= v129)
          {
            sub_23672AB18(v124);
          }

          else
          {
            v602 = v133;
            v136 = v130;
            v137 = 4 * v135;
            v600 = v130;
            do
            {
              LODWORD(v138) = *(v134 + 4 * v136);
              if (v138 >= 0)
              {
                v138 = v138;
              }

              else
              {
                v138 = -v138;
              }

              if (*(a21 + 4 * v138) >= a1)
              {
                v139 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v138 / v135)));
                v140 = *v139;
                v141 = v139[1];
                if (v140 < v141)
                {
                  v633 = *(v639 + 4 * v138);
                  v142 = v138 % v135;
                  v143 = *(a3 + 16);
                  v144 = v619 + 4 * (v138 * v135);
                  v145 = v660;
                  do
                  {
                    v146 = *(v143 + 4 * v140);
                    if ((v146 & 0x80000000) == 0 && v146 < *a3 && v135 != 0)
                    {
                      v148 = 0;
                      v149 = 0;
                      v150 = *(*(v28 + 136) + 4 * v146) * v135;
                      v151 = HIDWORD(v660);
                      v152 = v145 - DWORD2(v664);
                      v153 = v665;
                      v154 = *(&v663 + 1);
                      v155 = *(&v661 + 1) + 4 * v662 * v633;
                      v156 = (v636 + v137 * v150);
                      v157 = a19 + 4 * v150;
                      v158 = a23 + 4 * v150;
                      do
                      {
                        v159 = *(v158 + v148);
                        if (v159 < v145)
                        {
                          v160 = v159;
                          if (v159 >= v151)
                          {
                            if (v159 >= v152)
                            {
                              v161 = *(v153 + 4 * (v159 - v152));
                            }

                            else
                            {
                              v28 = v652;
                              v161 = (v159 - v151) % v135 + *(*(v652 + 192) + 4 * *&__src[2 * v653] + 4 * ((v159 - v151) / v135)) * v135;
                            }
                          }

                          else if ((v159 & 0x80000000) != 0)
                          {
                            v161 = 0x7FFFFFFF;
                          }

                          else
                          {
                            v161 = v154 ? *(v154 + 4 * v159) : v159 + *(v642 + 4 * v653) * v135;
                          }

                          if (v150 == v161 && *(v157 + v148) >= a1)
                          {
                            *(v155 + 4 * v160) = (*v156 * *(*(a3 + 32) + 4 * v140 * v637 + 4 * v149 + 4 * (v142 * v135))) * *(v144 + 4 * v142);
                          }
                        }

                        ++v149;
                        v156 += v135 + 1;
                        v148 += 4;
                        LODWORD(v150) = v150 + 1;
                      }

                      while (v137 != v148);
                    }

                    ++v140;
                  }

                  while (v140 != v141);
                }
              }

              ++v136;
            }

            while (v136 != v625);
            v124 = a15;
            sub_23672AB18(a15);
            v162 = *a15;
            v163 = *(a15 + 4);
            v164 = v600 - v625;
            v165 = (v602 + 4 * v600);
            do
            {
              v167 = *v165++;
              v166 = v167;
              if (v167 < 0)
              {
                v166 = -v166;
              }

              *(v162 + 4 * v166) = v163;
              v87 = __CFADD__(v164++, 1);
            }

            while (!v87);
            v120 = DWORD1(v660);
            v121 = a7;
            v117 = v653;
          }

          v122 = a6;
          v123 = a19;
          if (v120 < 1)
          {
            goto LABEL_231;
          }

          v200 = 0;
          v201 = SHIDWORD(v660);
          v202 = SHIDWORD(v660) - SDWORD2(v660);
          v203 = v120;
          v628 = v120;
          __srca = (v120 - SHIDWORD(v664));
          v634 = *(&v665 + 1);
          v204 = *(&v663 + 1);
          v643 = v664;
          v205 = 4 * v637;
          do
          {
            if (v200 >= v201 || v200 < v202)
            {
              if (v200 >= v201)
              {
                v206 = a21;
                v207 = v200 >= __srca ? *(v634 + 4 * (v200 - __srca)) : (v200 - v201) % v135 + *(*(v28 + 208) + 4 * *(*(v28 + 200) + 8 * v653) + 4 * ((v200 - v201) / v135)) * v135;
              }

              else
              {
                v206 = a21;
                v207 = v204 ? *(v643 + 4 * v200) : v200 + *(*(v28 + 176) + 4 * v653) * v135;
              }

              if (*(v206 + 4 * v207) >= a1)
              {
                v208 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v207 / v135)));
                v209 = *v208;
                v210 = v208[1];
                if (v209 < v210)
                {
                  v211 = *(a3 + 16);
                  v212 = v619 + 4 * v207 * v135;
                  v213 = v207 % v135;
                  v214 = v205 * v209 + 4 * v207 % v135 * v135;
                  do
                  {
                    v215 = *(v211 + 4 * v209);
                    if ((v215 & 0x80000000) == 0 && v215 < *a3 && v135 != 0)
                    {
                      v217 = *(*(v28 + 136) + 4 * v215) * v135;
                      v218 = *a15;
                      v219 = *(a15 + 4);
                      v220 = v663;
                      v221 = *(&v662 + 1) + 4 * (v200 - v201);
                      v222 = *(&v661 + 1) + 4 * v662 * v200;
                      v223 = (v636 + 4 * v135 * v217);
                      v224 = v135;
                      v225 = v214;
                      do
                      {
                        if (*(a19 + 4 * v217) >= a1 && v217 < *(*(v28 + 176) + 4 * v653) * v135 && *(v218 + 4 * v217) >= v219)
                        {
                          v226 = *(a23 + 4 * v217);
                          v227 = (v222 + 4 * v226);
                          v228 = (v221 + 4 * v220 * v226);
                          if (v200 < v201)
                          {
                            v228 = v227;
                          }

                          v28 = v652;
                          *v228 = (*v223 * *(*(a3 + 32) + v225)) * *(v212 + 4 * v213);
                        }

                        v225 += 4;
                        v223 += v135 + 1;
                        ++v217;
                        --v224;
                      }

                      while (v224);
                    }

                    ++v209;
                    v214 += v205;
                  }

                  while (v209 != v210);
                }
              }
            }

            ++v200;
          }

          while (v200 != v203);
          v121 = a7;
          v117 = v653;
          v123 = a19;
          v122 = a6;
        }

        else
        {
          if (v130 >= v129)
          {
            sub_23672AB18(v124);
          }

          else
          {
            v603 = v133;
            v168 = v130;
            v169 = v130;
            do
            {
              LODWORD(v170) = *(v627 + 4 * v169);
              if (v170 >= 0)
              {
                v170 = v170;
              }

              else
              {
                v170 = -v170;
              }

              if (*(a21 + 4 * v170) >= a1)
              {
                v171 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v170 / v135)));
                v172 = *v171;
                v173 = v171[1];
                if (*v171 < v173)
                {
                  v174 = *(v639 + 4 * v170);
                  v175 = *(a3 + 16);
                  v176 = v170 % v135 * v135;
                  v177 = v660;
                  do
                  {
                    v178 = *(v175 + 4 * v172);
                    if ((v178 & 0x80000000) == 0 && v178 < *a3 && v135 != 0)
                    {
                      v180 = 0;
                      v181 = *(*(v28 + 136) + 4 * v178) * v135;
                      v182 = HIDWORD(v660);
                      v183 = v177 - DWORD2(v664);
                      v184 = v665;
                      v185 = *(&v661 + 1) + 4 * v662 * v174;
                      v186 = *(&v663 + 1);
                      v187 = (v123 + 4 * v181);
                      v188 = (a23 + 4 * v181);
                      v189 = v135;
                      do
                      {
                        v191 = *v188++;
                        v190 = v191;
                        if (v191 < v177)
                        {
                          v192 = v190;
                          if (v190 >= v182)
                          {
                            v193 = v190 >= v183 ? *(v184 + 4 * (v190 - v183)) : (v190 - v182) % v135 + *(*(v28 + 192) + 4 * *&__src[2 * v117] + 4 * ((v190 - v182) / v135)) * v135;
                          }

                          else if ((v190 & 0x80000000) != 0)
                          {
                            v193 = 0x7FFFFFFF;
                          }

                          else
                          {
                            v193 = v186 ? *(v186 + 4 * v190) : v190 + *(v642 + 4 * v117) * v135;
                          }

                          if (v181 == v193 && *v187 >= a1)
                          {
                            *(v185 + 4 * v192) = *(*(a3 + 32) + 4 * v172 * v637 + 4 * v180 + 4 * v176);
                          }
                        }

                        ++v180;
                        ++v187;
                        ++v181;
                        --v189;
                      }

                      while (v189);
                    }

                    ++v172;
                  }

                  while (v172 != v173);
                }
              }

              ++v169;
            }

            while (v169 != v625);
            v124 = a15;
            sub_23672AB18(a15);
            v194 = *a15;
            v195 = *(a15 + 4);
            v196 = v168 - v625;
            v197 = (v603 + 4 * v168);
            do
            {
              v199 = *v197++;
              v198 = v199;
              if (v199 < 0)
              {
                v198 = -v198;
              }

              *(v194 + 4 * v198) = v195;
              v87 = __CFADD__(v196++, 1);
            }

            while (!v87);
            v120 = DWORD1(v660);
            v121 = a7;
          }

          v122 = a6;
          v123 = a19;
          if (v120 < 1)
          {
LABEL_231:
            v119 = v617;
            goto LABEL_232;
          }

          v229 = 0;
          v230 = SHIDWORD(v660);
          v231 = SHIDWORD(v660) - SDWORD2(v660);
          v232 = v120;
          v628 = v120;
          v233 = v120 - SHIDWORD(v664);
          v234 = *(&v665 + 1);
          v235 = *(&v663 + 1);
          v236 = v664;
          v237 = 4 * v637;
          do
          {
            if (v229 >= v230 || v229 < v231)
            {
              if (v229 >= v230)
              {
                v238 = v229 >= v233 ? *(v234 + 4 * (v229 - v233)) : (v229 - v230) % v135 + *(*(v28 + 208) + 4 * *(*(v28 + 200) + 8 * v117) + 4 * ((v229 - v230) / v135)) * v135;
              }

              else
              {
                v238 = v235 ? *(v236 + 4 * v229) : v229 + *(*(v28 + 176) + 4 * v117) * v135;
              }

              if (*(a21 + 4 * v238) >= a1)
              {
                v239 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v238 / v135)));
                v240 = *v239;
                v241 = v239[1];
                if (v240 < v241)
                {
                  v242 = v238 % v135;
                  v243 = *(a3 + 16);
                  v244 = v237 * v240 + 4 * v242 * v135;
                  do
                  {
                    v245 = *(v243 + 4 * v240);
                    if ((v245 & 0x80000000) == 0 && v245 < *a3 && v135 != 0)
                    {
                      v247 = *(*(v28 + 136) + 4 * v245) * v135;
                      v248 = *a15;
                      v249 = *(a15 + 4);
                      v250 = v663;
                      v251 = *(&v662 + 1) + 4 * (v229 - v230);
                      v252 = *(&v661 + 1) + 4 * v662 * v229;
                      v253 = v135;
                      v254 = v244;
                      do
                      {
                        if (*(a19 + 4 * v247) >= a1 && v247 < *(*(v28 + 176) + 4 * v117) * v135 && *(v248 + 4 * v247) >= v249)
                        {
                          v255 = *(a23 + 4 * v247);
                          v256 = (v252 + 4 * v255);
                          v257 = (v251 + 4 * v250 * v255);
                          if (v229 < v230)
                          {
                            v257 = v256;
                          }

                          v117 = v653;
                          *v257 = *(*(a3 + 32) + v254);
                        }

                        v254 += 4;
                        ++v247;
                        --v253;
                      }

                      while (v253);
                    }

                    ++v240;
                    v244 += v237;
                  }

                  while (v240 != v241);
                }
              }
            }

            ++v229;
          }

          while (v229 != v232);
          v121 = a7;
        }

        v124 = a15;
        v119 = v617;
        v120 = v628;
LABEL_232:
        if (++v119 >= *(*(v28 + 240) + 8 * v117 + 8))
        {
          goto LABEL_235;
        }
      }
    }
  }

  LODWORD(v120) = v110;
LABEL_235:
  v258 = a21;
  if (SHIDWORD(v664) >= 1)
  {
    v259 = a7[12];
    v260 = *(a3 + 28);
    v261 = (v260 * v260);
    v262 = v120 - HIDWORD(v664);
    __srcb = *(&v665 + 1);
    if (v259)
    {
      v644 = a7[13];
      if (v260 <= 1)
      {
        v263 = 1;
      }

      else
      {
        v263 = *(a3 + 28);
      }

      v264 = v262;
      v265 = 4 * v261;
      v266 = 4 * *(a3 + 28);
      v267 = v262;
      do
      {
        v268 = __srcb[v267 - v264];
        if (*(v258 + 4 * v268) >= a1)
        {
          v269 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v268 / v260)));
          v270 = *v269;
          v271 = v269[1];
          if (v270 < v271)
          {
            v272 = *(a3 + 16);
            v273 = v644 + 4 * v268 * v260;
            v274 = v268 % v260;
            v275 = v265 * v270 + 4 * v268 % v260 * v260;
            do
            {
              v276 = *(v272 + 4 * v270);
              if ((v276 & 0x80000000) == 0 && v276 < *a3)
              {
                v277 = *(*(v28 + 136) + 4 * v276) * v260;
                v278 = HIDWORD(v660);
                v279 = v663;
                v280 = *(&v662 + 1) + 4 * (v267 - HIDWORD(v660));
                v281 = (v259 + v266 * v277);
                v282 = (a23 + 4 * v277);
                v283 = (a19 + 4 * v277);
                v284 = v263;
                v285 = v275;
                do
                {
                  v286 = *v283++;
                  if (v286 >= a1)
                  {
                    v287 = *v282;
                    if ((v287 & 0x80000000) == 0 && v287 < v278 && v277 == *(*(&v279 + 1) + 4 * v287))
                    {
                      *(v280 + 4 * v279 * v287) = (*v281 * *(*(a3 + 32) + v285)) * *(v273 + 4 * v274);
                    }
                  }

                  v285 += 4;
                  v281 = (v281 + v266 + 4);
                  LODWORD(v277) = v277 + 1;
                  ++v282;
                  --v284;
                }

                while (v284);
              }

              ++v270;
              v275 += v265;
            }

            while (v270 != v271);
          }
        }

        ++v267;
        v258 = a21;
      }

      while (v267 < v120);
    }

    else
    {
      if (v260 <= 1)
      {
        v288 = 1;
      }

      else
      {
        v288 = *(a3 + 28);
      }

      v289 = 4 * v261;
      v290 = v262;
      do
      {
        v291 = __srcb[v290 - v262];
        if (*(a21 + 4 * v291) >= a1)
        {
          v292 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v291 / v260)));
          v293 = *v292;
          v294 = v292[1];
          if (v293 < v294)
          {
            v295 = *(a3 + 16);
            v296 = v289 * v293 + 4 * v291 % v260 * v260;
            do
            {
              v297 = *(v295 + 4 * v293);
              if ((v297 & 0x80000000) == 0 && v297 < *a3)
              {
                v298 = *(*(v28 + 136) + 4 * v297) * v260;
                v299 = HIDWORD(v660);
                v300 = v663;
                v301 = *(&v662 + 1) + 4 * (v290 - HIDWORD(v660));
                v302 = *(&v663 + 1);
                v303 = (a23 + 4 * v298);
                v304 = (a19 + 4 * v298);
                v305 = v288;
                v306 = v296;
                do
                {
                  v307 = *v304++;
                  if (v307 >= a1)
                  {
                    v308 = *v303;
                    if ((v308 & 0x80000000) == 0 && v308 < v299 && v298 == *(v302 + 4 * v308))
                    {
                      *(v301 + 4 * v300 * v308) = *(*(a3 + 32) + v306);
                    }
                  }

                  v306 += 4;
                  ++v298;
                  ++v303;
                  --v305;
                }

                while (v305);
              }

              ++v293;
              v296 += v289;
            }

            while (v293 != v294);
          }
        }

        ++v290;
      }

      while (v290 < v120);
    }
  }

  __srcc = DWORD2(v664);
  if (SDWORD2(v664) >= 1)
  {
    v309 = a7[12];
    v310 = *(a3 + 28);
    v311 = (v310 * v310);
    v312 = (*(v28 + 176) + 4 * v653);
    v313 = v312[1];
    v314 = *v312;
    v315 = *v312 * v310;
    v316 = v313 * v310;
    if (v309)
    {
      if (v315 < v316)
      {
        v317 = 0;
        v645 = a7[13];
        if (v310 <= 1)
        {
          v318 = 1;
        }

        else
        {
          v318 = v310;
        }

        v319 = ((v313 - v314) * v310);
        v320 = 4 * v311;
        v321 = 4 * v310;
        do
        {
          if (*(v258 + 4 * v315) >= a1)
          {
            v322 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v315 / v310)));
            v323 = *v322;
            v324 = v322[1];
            if (*v322 < v324)
            {
              v325 = *(a3 + 16);
              v326 = v660;
              v327 = v660 - __srcc;
              v328 = v320 * v323 + 4 * v315 % v310 * v310;
              do
              {
                v329 = *(v325 + 4 * v323);
                if ((v329 & 0x80000000) == 0 && v329 < *a3)
                {
                  v330 = *(*(v28 + 136) + 4 * v329) * v310;
                  v331 = v665;
                  v332 = *(&v661 + 1) + 4 * v662 * v317;
                  v333 = (v309 + v321 * v330);
                  v334 = (a19 + 4 * v330);
                  v335 = (a23 + 4 * v330);
                  v336 = v318;
                  v337 = v328;
                  do
                  {
                    v339 = *v335++;
                    v338 = v339;
                    v340 = v339 >= v326 || v338 < v327;
                    if (!v340 && v330 == *(v331 + 4 * (v338 - v327)) && *v334 >= a1)
                    {
                      *(v332 + 4 * v338) = (*v333 * *(*(a3 + 32) + v337)) * *(v645 + 4 * v315 * v310 + 4 * (v315 % v310));
                    }

                    v337 += 4;
                    v333 = (v333 + v321 + 4);
                    ++v334;
                    LODWORD(v330) = v330 + 1;
                    --v336;
                  }

                  while (v336);
                }

                ++v323;
                v328 += v320;
              }

              while (v323 != v324);
            }
          }

          ++v315;
          ++v317;
          v258 = a21;
        }

        while (v317 != v319);
      }
    }

    else if (v315 < v316)
    {
      v341 = 0;
      if (v310 <= 1)
      {
        v342 = 1;
      }

      else
      {
        v342 = v310;
      }

      v315 = v315;
      v343 = ((v313 - v314) * v310);
      v344 = 4 * v311;
      do
      {
        if (*(v258 + 4 * v315) >= a1)
        {
          v345 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v315 / v310)));
          v346 = *v345;
          v347 = v345[1];
          if (v346 < v347)
          {
            v348 = *(a3 + 16);
            v349 = v660;
            v350 = v660 - __srcc;
            v351 = v344 * v346 + 4 * v315 % v310 * v310;
            do
            {
              v352 = *(v348 + 4 * v346);
              if ((v352 & 0x80000000) == 0 && v352 < *a3)
              {
                v353 = *(*(v28 + 136) + 4 * v352) * v310;
                v354 = *(&v661 + 1) + 4 * v662 * v341;
                v355 = v665;
                v356 = (a19 + 4 * v353);
                v357 = (a23 + 4 * v353);
                v358 = v342;
                v359 = v351;
                do
                {
                  v361 = *v357++;
                  v360 = v361;
                  v362 = v361 >= v349 || v360 < v350;
                  if (!v362 && v353 == *(v355 + 4 * (v360 - v350)) && *v356 >= a1)
                  {
                    *(v354 + 4 * v360) = *(*(a3 + 32) + v359);
                  }

                  v359 += 4;
                  ++v356;
                  ++v353;
                  --v358;
                }

                while (v358);
              }

              ++v346;
              v351 += v344;
            }

            while (v346 != v347);
          }
        }

        ++v315;
        ++v341;
      }

      while (v341 != v343);
    }
  }

  sub_23672AB18(a15);
  v363 = *(v28 + 240);
  v364 = *(v363 + 8 * v653);
  v365 = *(v363 + 8 * v624);
  v366 = v613 >> 3;
  v367 = v365 - v364;
  if (v365 <= v364)
  {
    v367 = 0;
    v376 = a7;
    v377 = a6;
    v371 = v614;
    v370 = v615;
  }

  else
  {
    v368 = *a15;
    v369 = *(a15 + 4);
    v371 = v614;
    v370 = v615;
    v372 = (48 * v366 + 16 * v615 + a23 + 4);
    v373 = (*(v28 + 256) + v364);
    v374 = (*(v28 + 248) + 4 * v364);
    v375 = v367;
    v376 = a7;
    v377 = a6;
    do
    {
      v379 = *v374++;
      v378 = v379;
      LOBYTE(v379) = *v373++;
      *(v372 - 1) = v378;
      *v372 = v379;
      v372 += 8;
      *(v368 + 4 * v378) = v369;
      --v375;
    }

    while (v375);
  }

  v380 = a16;
  v381 = 8 * v371;
  v382 = v660;
  if (v660 < 1)
  {
    LODWORD(v383) = 0;
  }

  else
  {
    v383 = 0;
    v384 = v665;
    v385 = *(&v663 + 1);
    do
    {
      v386 = v383;
      if (v383 >= SHIDWORD(v660))
      {
        v388 = v382 - SDWORD2(v664);
        if (v383 >= v388)
        {
          v387 = *(v384 - 4 * v388 + 4 * v383);
        }

        else
        {
          v387 = (v383 - HIDWORD(v660)) % v377 + *(*(v652 + 192) + 4 * *(*(v652 + 184) + 8 * v653) + 4 * ((v383 - HIDWORD(v660)) / v377)) * v377;
        }
      }

      else if (v385)
      {
        v387 = *(v385 + 4 * v383);
      }

      else
      {
        v387 = v383 + *(*(v652 + 176) + 4 * v653) * v377;
      }

      ++v383;
      *(a23 + v381 + 48 * v366 + 16 * v370 + 4 * v386) = v387;
      v382 = v660;
    }

    while (v386 + 1 < v660);
  }

  v389 = DWORD1(v660);
  if (SDWORD1(v660) < 1)
  {
    LODWORD(v390) = 0;
  }

  else
  {
    v390 = 0;
    v391 = *(&v665 + 1);
    v392 = *(&v663 + 1);
    v393 = v664;
    v394 = a23 + v381 + 56 * v366 + 16 * v370;
    do
    {
      v395 = v390;
      if (v390 >= SHIDWORD(v660))
      {
        v397 = v389 - SHIDWORD(v664);
        if (v390 >= v397)
        {
          v396 = *(v391 - 4 * v397 + 4 * v390);
        }

        else
        {
          v396 = (v390 - HIDWORD(v660)) % v377 + *(*(v652 + 208) + 4 * *(*(v652 + 200) + 8 * v653) + 4 * ((v390 - HIDWORD(v660)) / v377)) * v377;
        }
      }

      else if (v392)
      {
        v396 = *(v393 + 4 * v390);
      }

      else
      {
        v396 = v390 + *(*(v652 + 176) + 4 * v653) * v377;
      }

      ++v390;
      *(v394 + 4 * v395) = v396;
      v389 = DWORD1(v660);
    }

    while (v395 + 1 < SDWORD1(v660));
  }

  sub_23672AB18(a16);
  v398 = a6;
  v399 = v622;
  if (!v367)
  {
    goto LABEL_490;
  }

  v601 = v662;
  v604 = *(&v661 + 1);
  v618 = v663;
  v620 = *(&v662 + 1);
  do
  {
LABEL_352:
    --v367;
    v400 = *(v399 + 8 * v367);
    v401 = *(v380 + 16);
    if (*(*v380 + 4 * v400) >= v401)
    {
      continue;
    }

    *(*v380 + 4 * v400) = v401;
    v657 = v400;
    if (*(a17 + v400))
    {
      goto LABEL_482;
    }

    v402 = v376[8];
    if (v402)
    {
      if (*(v402 + 4 * v400) < 1)
      {
        goto LABEL_482;
      }
    }

    if (a4 == 83)
    {
      v403 = v400;
      v404 = *(v376[9] + 4 * v400);
      v405 = *(v376[10] + 4 * v400);
      v406 = *(v376[11] + 4 * v400);
    }

    else
    {
      v404 = 0;
      v405 = 0;
      v406 = 0;
      v403 = v400;
    }

    v407 = v400 << 32;
    v408 = *(v652 + 176);
    v409 = v407 + 0x100000000;
    v410 = (*(v408 + (v409 >> 30)) - *(v408 + 4 * v403)) * v398;
    v411 = v410 + v404;
    v412 = v410 + v404;
    if (a4 == 83)
    {
      v412 = *(v402 + 4 * v403);
    }

    v413 = v409 >> 32;
    v414 = *(v652 + 184);
    v413 *= 8;
    v415 = *(v414 + 8 * v403);
    v416 = v411 + v405 + (*(v414 + v413) - v415) * v398;
    v417 = *(v652 + 200);
    v418 = *(v417 + v413);
    v419 = *(v417 + 8 * v403);
    v420 = (v418 - v419) * v398;
    v635 = *(v376[14] + 8 * v403) + 8;
    v626 = v420 + v406;
    v629 = v635 + 4 * v416 * v411;
    if (a4 == 81)
    {
      v421 = 0;
      v422 = 0;
      v423 = 0;
      v424 = v405 <= 0 ? 0 : v411;
      v425 = 4 * v424;
      v426 = v406 <= 0 ? 0 : v411;
      v427 = 4 * v426;
    }

    else
    {
      v421 = v635 + 4 * v416 * v411 + 4 * (v420 + v406) * v411;
      v422 = v421 + 4 * v411 + 4 * v405;
      if (v405 <= 0)
      {
        v425 = 0;
      }

      else
      {
        v425 = v421 + 4 * v411;
      }

      v427 = v422 + 4 * v411;
      if (v406 <= 0)
      {
        v427 = 0;
      }

      v423 = a4 == 83 ? *(v376[9] + 4 * v653) : 0;
    }

    v428 = v416;
    if (v412 >= v416)
    {
      goto LABEL_482;
    }

    v429 = 0;
    v638 = 0;
    v646 = 0;
    __srcd = v412;
    v430 = v411 + v406 + v420;
    v431 = v423 + (*(v408 + 4 * v653 + 4) - *(v408 + 4 * v653)) * v398;
    v432 = v428 - v405;
    v433 = v412 - v410 - v404;
    v434 = v425 + 4 * (v412 + v405 - v428);
    do
    {
      v435 = v412 + v429;
      if (v435 >= v411)
      {
        if (v435 >= v432)
        {
          v436 = *(v434 + 4 * v429);
          goto LABEL_389;
        }

        v437 = *(*(v652 + 192) + 4 * v415 + 4 * ((v433 + v429) / v398));
        v438 = (v433 + v429) % v398;
      }

      else
      {
        if (v435 < 0)
        {
          v436 = 0x7FFFFFFF;
          goto LABEL_389;
        }

        if (v421)
        {
          v436 = *(v421 + 4 * v412 + 4 * v429);
          goto LABEL_389;
        }

        v437 = *(v408 + 4 * v657);
        v438 = v412 + v429;
      }

      v436 = v438 + v437 * v398;
LABEL_389:
      if (v436 >= 0)
      {
        v439 = v436;
      }

      else
      {
        v439 = -v436;
      }

      v440 = *(a23 + 4 * v439);
      if (v440 < v383 && *(v632 + 4 * v440) == v439 && *(a19 + 4 * v439) >= a1)
      {
        v441 = (v621 + 8 * v646);
        *v441 = v412 + v429;
        v441[1] = v440;
        v398 = a6;
        if (v440 >= v431)
        {
          v442 = v638;
        }

        else
        {
          v442 = v638 + 1;
        }

        v638 = v442;
        ++v646;
      }

      ++v429;
    }

    while (v412 - v428 + v429);
    v376 = a7;
    v443 = (v639 + (v613 & 0xFFFFFFFFFFFFFFF8));
    v444 = v616;
    v445 = v412;
    if (!v646 || v412 >= v430)
    {
      goto LABEL_482;
    }

    v446 = 0;
    v447 = 0;
    v448 = 0;
    v449 = v430 - v406;
    v450 = v422 + 4 * v412;
    v451 = v412 - v410 - v404;
    v452 = v412 - v430;
    v453 = v427 + 4 * (v412 + v406 - v430);
    while (2)
    {
      v454 = v412 + v446;
      if (v454 >= v411)
      {
        if (v454 < v449)
        {
          v456 = *(*(v652 + 208) + 4 * v419 + 4 * ((v451 + v446) / v398));
          v457 = (v451 + v446) % v398;
          goto LABEL_412;
        }

        v455 = *(v453 + 4 * v446);
      }

      else if (v454 < 0)
      {
        v455 = 0x7FFFFFFF;
      }

      else
      {
        if (v421)
        {
          v455 = *(v450 + 4 * v446);
          goto LABEL_413;
        }

        v456 = *(v408 + 4 * v657);
        v457 = v445 + v446;
LABEL_412:
        v455 = v457 + v456 * v398;
      }

LABEL_413:
      if (v455 >= 0)
      {
        v458 = v455;
      }

      else
      {
        v458 = -v455;
      }

      v459 = *(v639 + 4 * v458);
      if (v459 < v390 && *(v608 + 4 * v459) == v458)
      {
        v458 = *(a21 + 4 * v458);
        if (v458 >= a1)
        {
          v458 = &v616[v448];
          *v458 = v412 + v446;
          *(v458 + 4) = v459;
          v445 = v412;
          if (v459 < v431)
          {
            ++v447;
          }

          ++v448;
        }
      }

      ++v446;
      if (v452 + v446)
      {
        continue;
      }

      break;
    }

    v460 = v646;
    if (v448 && v638 | v447)
    {
      v461 = v445;
      v462 = v635;
      if (v638 >= 1)
      {
        v463 = 0;
        v464 = v639 + (v613 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v465 = (v621 + 8 * v463);
          v466 = v465[1];
          if (v466 >= v431)
          {
            v467 = v464;
            v468 = v463;
            while (++v468 < v646)
            {
              v469 = (v467 + 8);
              v470 = *(v467 + 12);
              v467 += 8;
              if (v470 < v431)
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

        while (v463 != v638);
      }

      if (v447 >= 1)
      {
        v472 = 0;
        v473 = v616;
        do
        {
          v474 = &v616[v472];
          v475 = v474[1];
          if (v475 >= v431)
          {
            v476 = v473;
            v477 = v472;
            while (++v477 < v448)
            {
              v478 = (v476 + 1);
              v479 = *(v476++ + 3);
              if (v479 < v431)
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

        while (v472 != v447);
      }

      v481 = v646 * v445;
      if (a12[1] < (v646 * v445))
      {
        if (*a12)
        {
          (*(v652 + 32))(*a12, v458, v445, v635);
        }

        *a12 = (*(v652 + 24))(4 * v481);
        a12[1] = v481;
        v398 = a6;
        v443 = (v639 + (v613 & 0xFFFFFFFFFFFFFFF8));
        v444 = v616;
        v460 = v646;
        v461 = __srcd;
        v462 = v635;
      }

      if (v461 >= 1)
      {
        v482 = 0;
        v483 = *a12;
        do
        {
          if (v460 >= 1)
          {
            v484 = v443;
            v485 = v483;
            v486 = v460;
            do
            {
              v487 = *v484++;
              *v485++ = *(v462 + 4 * v482 * v428 + 4 * v487);
              --v486;
            }

            while (v486);
          }

          v482 = v482 + 1;
          v483 += v460;
        }

        while (v482 != v461);
      }

      v599 = v460;
      v488 = v448 * v461;
      if (a13[1] < (v448 * v461))
      {
        if (*a13)
        {
          (*(v652 + 32))(*a13, v458, v461, v462);
        }

        v489 = (*(v652 + 24))(4 * v488);
        v444 = v616;
        *a13 = v489;
        a13[1] = v488;
        v398 = a6;
        v460 = v646;
        v461 = __srcd;
        v462 = v635;
      }

      v490 = a13;
      if (v461 >= 1)
      {
        v491 = 0;
        for (i = 0; i != v461; i = i + 1)
        {
          if (v448 >= 1)
          {
            v493 = (*a13 + v491);
            v494 = v444;
            v495 = v448;
            do
            {
              v496 = *v494++;
              v497 = v629 + 4 * i * v626 + 4 * (v496 - v411);
              v498 = (v462 + 4 * i + 4 * v496 * v428);
              if (v496 >= v411)
              {
                v498 = v497;
              }

              *v493++ = *v498;
              --v495;
            }

            while (v495);
          }

          v491 += 4 * v448;
        }
      }

      if ((v447 * v460) <= (v448 - v447) * v638)
      {
        v499 = (v448 - v447) * v638;
      }

      else
      {
        v499 = v447 * v460;
      }

      if (a14[1] < v499)
      {
        if (*a14)
        {
          (*(v652 + 32))(*a14, a13);
        }

        *a14 = (*(v652 + 24))(4 * v499, v490);
        a14[1] = v499;
        v398 = a6;
      }

      v376 = a7;
      if (v447 >= 1)
      {
        v500 = *a12;
        *v597 = *a14;
        v595 = *a13;
        cblas_sgemm_NEWLAPACK();
        v398 = a6;
        v501 = 0;
        v502 = *a14;
        do
        {
          if (v646 >= 1)
          {
            v503 = v604 + 4 * SHIDWORD(v616[v501]) * v601;
            v504 = v639 + (v613 & 0xFFFFFFFFFFFFFFF8);
            v505 = v502;
            v506 = v599;
            do
            {
              v507 = *v505++;
              *(v503 + 4 * *(v504 + 4)) = v507 + *(v503 + 4 * *(v504 + 4));
              v504 += 8;
              --v506;
            }

            while (v506);
          }

          ++v501;
          v502 += v646;
        }

        while (v501 != v447);
      }

      if (v638 >= 1)
      {
        v508 = *a12;
        *v598 = *a14;
        v596 = *a13 + 4 * v447;
        cblas_sgemm_NEWLAPACK();
        v398 = a6;
        if (v448 > v447)
        {
          v509 = v447;
          v510 = *a14;
          do
          {
            v511 = v620 + 4 * (HIDWORD(v616[v509]) - v431);
            v512 = v639 + (v613 & 0xFFFFFFFFFFFFFFF8);
            v513 = v510;
            v514 = v638;
            do
            {
              v515 = *v513++;
              *(v511 + 4 * *(v512 + 4) * v618) = v515 + *(v511 + 4 * *(v512 + 4) * v618);
              v512 += 8;
              --v514;
            }

            while (v514);
            ++v509;
            v510 += v638;
          }

          while (v509 != v448);
        }
      }
    }

LABEL_482:
    v516 = (*(v652 + 240) + 8 * v657);
    v517 = *v516;
    v518 = v516[1];
    if (v517 >= v518)
    {
      v399 = v622;
      v380 = a16;
      if (!v367)
      {
        break;
      }

      goto LABEL_352;
    }

    v519 = *(v652 + 248);
    v380 = a16;
    v520 = *a15;
    v399 = v622;
    do
    {
      v521 = *(v519 + 4 * v517);
      v522 = *(a15 + 4);
      if (*(v520 + 4 * v521) < v522)
      {
        v523 = *(*(v652 + 256) + v517);
        v524 = v622 + 8 * v367;
        *v524 = v521;
        ++v367;
        *(v524 + 4) = v523;
        *(v520 + 4 * v521) = v522;
      }

      ++v517;
    }

    while (v518 != v517);
  }

  while (v367);
LABEL_490:
  v525 = HIDWORD(v660);
  v526 = a4;
  if (a4 == 83)
  {
    v527 = v652;
    v528 = a10;
    if (SHIDWORD(v660) >= 1)
    {
      v529 = 0;
      v530 = *(&v663 + 1);
      v531 = v664;
      do
      {
        *(a19 + 4 * *(v530 + 4 * v529)) = -1;
        *(a21 + 4 * *(v531 + 4 * v529++)) = -1;
        v525 = HIDWORD(v660);
      }

      while (v529 < SHIDWORD(v660));
    }
  }

  else
  {
    v527 = v652;
    v528 = a10;
  }

  if ((DWORD1(v660) - v525) * (v660 - v525) < 1)
  {
    v533 = 0;
  }

  else
  {
    v532 = 5 * (SHIDWORD(v664) + SDWORD2(v664));
    v533 = (*(v527 + 24))(v532 + 152);
    sub_236724DE4(v533, &v660, v606, v605, v607, SDWORD2(v607), (v533 + 120), v532 + 32, v527);
    v534 = *(v533 + 16) * *(v533 + 8);
    v535 = (*(*v533 + 24))(4 * v534);
    *(v533 + 96) = v535;
    *(v533 + 104) = v534;
    bzero(v535, 4 * v534);
    v376 = a7;
    v527 = v652;
    v526 = a4;
    v398 = a6;
  }

  v658 = v533;
  *(v528 + 8 * v653) = v533;
  v536 = *(v527 + 240);
  v537 = *(v536 + 8 * v653);
  if (v537 < *(v536 + 8 * v624))
  {
    while (1)
    {
      v538 = *(*(v652 + 248) + 4 * v537);
      if (*(a17 + v538) == 1)
      {
        break;
      }

LABEL_537:
      if (++v537 >= *(v536 + 8 * v624))
      {
        goto LABEL_538;
      }
    }

    memset(&v666[1], 0, 56);
    if (v526 == 83)
    {
      v539 = *(v376[9] + 4 * v538);
      v540 = *(v376[10] + 4 * v538);
      v541 = *(v376[11] + 4 * v538);
    }

    else
    {
      v539 = 0;
      v540 = 0;
      v541 = 0;
    }

    v542 = *(v376[14] + 8 * v538) + 8;
    DWORD2(v666[0]) = v539;
    *(&v666[1] + 1) = v542;
    *(&v666[4] + 1) = __PAIR64__(v541, v540);
    HIDWORD(v666[0]) = v539 + (*(*(v652 + 176) + 4 * (v538 + 1)) - *(*(v652 + 176) + 4 * v538)) * v398;
    v543 = HIDWORD(v666[0]);
    if (v526 == 83)
    {
      v543 = *(v376[8] + 4 * v538);
    }

    LODWORD(v666[1]) = v543;
    v544 = 8 * (v538 + 1);
    LODWORD(v666[0]) = HIDWORD(v666[0]) + v540 + (*(*(v652 + 184) + v544) - *(*(v652 + 184) + 8 * v538)) * v398;
    v545 = (*(*(v652 + 200) + v544) - *(*(v652 + 200) + 8 * v538)) * v398;
    DWORD1(v666[0]) = HIDWORD(v666[0]) + v541 + v545;
    v546 = v542 + 4 * SLODWORD(v666[0]) * SHIDWORD(v666[0]);
    *&v666[2] = SLODWORD(v666[0]);
    *(&v666[2] + 1) = v546;
    *&v666[3] = v545 + v541;
    if (v526 == 81)
    {
      v547 = 0;
      v548 = 0;
    }

    else
    {
      v548 = v546 + 4 * (v545 + v541) * SHIDWORD(v666[0]);
      v547 = v548 + 4 * SHIDWORD(v666[0]) + 4 * v540;
      *(&v666[3] + 1) = v548;
      *&v666[4] = v547;
    }

    v549 = v548 + 4 * SHIDWORD(v666[0]);
    if (v540 <= 0)
    {
      v550 = 0;
    }

    else
    {
      v550 = v549;
    }

    v551 = v547 + 4 * SHIDWORD(v666[0]);
    if (v541 <= 0)
    {
      v552 = 0;
    }

    else
    {
      v552 = v551;
    }

    *&v666[5] = v550;
    *(&v666[5] + 1) = v552;
    v553 = *(v528 + 8 * v538);
    if (v553)
    {
      v554 = *(*(v652 + 264) + 4 * v537) * v398;
      v555 = *(*(v652 + 272) + 4 * v537) * v398;
      v556 = *(*(v652 + 256) + v537);
      switch(v556)
      {
        case 3:
          v575 = sub_23675B2FC(&v660, v538, v666, v553, v652, v398, v554, v555, a23, v639);
          v528 = a10;
          sub_2367541F8(v575, &v660, v658, v538, v666, v553, v652, v398, v554, v555, a23, v639);
          v565 = *(a10 + 8 * v538);
          v567 = v565 + 12;
          v566 = v565[12];
          if (v566)
          {
            goto LABEL_534;
          }

          goto LABEL_535;
        case 2:
          v568 = *(*(v652 + 280) + 4 * v537);
          sub_236724F10(&v659, *(v528 + 8 * v538));
          v569 = v568 * a6;
          sub_23675AD4C(a1, &v660, v538, v666, v553, v652, a6, v554, v555, v568 * a6, a23, v639);
          sub_236753908(a1, &v660, v658, v538, v666, v553, v652, a6, v554, v555, v568 * a6, a23, v639);
          add_explicit = atomic_fetch_add_explicit((v553 + 24), -(v568 * a6), memory_order_release);
          if (*(v659 + 112) == 1)
          {
            v571 = (v659 + 113);
            atomic_store(0, (v659 + 113));
            std::__cxx_atomic_notify_one(v571);
          }

          v376 = a7;
          v398 = a6;
          v528 = a10;
          if (add_explicit == v569)
          {
            v572 = *(*v553 + 32);
            v574 = *(v553 + 96);
            v573 = (v553 + 96);
            v572(v574);
            *v573 = 0;
            v573[1] = 0;
            v376 = a7;
            v398 = a6;
            if (HIDWORD(v666[0]) == LODWORD(v666[1]) && !*(&v666[4] + 1))
            {
              v565 = *(a10 + 8 * v538);
              v567 = v565 + 12;
              v566 = v565[12];
              if (v566)
              {
LABEL_534:
                (*(*v565 + 32))(v566);
                *v567 = 0;
                v567[1] = 0;
                v576 = *(v528 + 8 * v538);
              }

LABEL_535:
              (*(v652 + 32))();
              *(v528 + 8 * v538) = 0;
              v376 = a7;
              v398 = a6;
            }
          }

          break;
        case 1:
          v557 = *(*(v652 + 280) + 4 * v537);
          sub_236724F10(&v659, *(v528 + 8 * v538));
          v558 = v554;
          v655 = v554;
          v559 = v557 * a6;
          sub_23675A8B8(a1, &v660, v538, v666, v553, v652, a6, v558, v555, v557 * a6, a23, v639);
          sub_2367531BC(a1, &v660, v658, v538, v666, v553, v652, a6, v655, v555, v557 * a6, a23, v639);
          v560 = atomic_fetch_add_explicit((v553 + 28), -(v557 * a6), memory_order_release);
          if (*(v659 + 112) == 1)
          {
            v561 = (v659 + 113);
            atomic_store(0, (v659 + 113));
            std::__cxx_atomic_notify_one(v561);
          }

          v376 = a7;
          v398 = a6;
          v528 = a10;
          if (v560 == v559)
          {
            v562 = *(*v553 + 32);
            v564 = *(v553 + 96);
            v563 = (v553 + 96);
            v562(v564);
            *v563 = 0;
            v563[1] = 0;
            v376 = a7;
            v398 = a6;
            if (HIDWORD(v666[0]) == LODWORD(v666[1]) && !*(&v666[4] + 1))
            {
              v565 = *(a10 + 8 * v538);
              v567 = v565 + 12;
              v566 = v565[12];
              if (v566)
              {
                goto LABEL_534;
              }

              goto LABEL_535;
            }
          }

          break;
      }
    }

    v536 = *(v652 + 240);
    v526 = a4;
    goto LABEL_537;
  }

LABEL_538:
  v577 = v658;
  if (v658)
  {
    v578 = *(v658 + 96);
    v577 = *(v658 + 16);
  }

  else
  {
    v578 = 0;
  }

  v579 = v526 == 83;
  if (a27)
  {
    v580 = a27 + 64;
  }

  else
  {
    v580 = 0;
  }

  v581 = v612(v660, DWORD1(v660), HIDWORD(v660), *(&v661 + 1), v662, *(&v662 + 1), v663, v578, v577, *(&v663 + 1), v664, v652, a7, v610, v611, a25, a26, v580);
  v582 = *a8;
  if (*a8 <= v581)
  {
    v582 = v581;
  }

  *a8 = v582;
  v583 = *a9;
  if (*a9 <= SDWORD1(v660))
  {
    v583 = DWORD1(v660);
  }

  *a9 = v583;
  if (v579)
  {
    *(a7[8] + 4 * v653) = v581;
    goto LABEL_551;
  }

  if (v581 == HIDWORD(v660))
  {
LABEL_551:
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_553:
  v585 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_236760650(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23676066C(void *a1, unint64_t a2)
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
      if (*(v23 + v18) & 1) != 0 || (sub_23675B824(v7, *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), *(v4 + 20), *(v4 + 21), v67, v66, v65, v64, v63, v61, v23, *(v4 + 15), v20), (*(*(v4 + 14) + v18)))
      {
        *(**(v4 + 21) + v22) = *(**(v4 + 21) + v22 - 8);
        v24 = *(v4 + 19);
        *(**(v4 + 20) + v22) = *(**(v4 + 20) + v22 - 8);
        v25 = sub_23675DB04(v7, HIDWORD(a2), *(v4 + 1), *v4, *(v4 + 2), *(v4 + 6), *(v4 + 4), &v58 + 1, &v58, v57, v56, v65, v64, v63, v61, v59, *(v4 + 14), *(v4 + 15), *(v4 + 16), *(v4 + 17), *(v4 + 18), v24, v20, v21, *(v4 + 13), a1, v4);
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

uint64_t _SparseNumericFactorHermitian_Complex_Float@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v10 = a1[2];
  *(a6 + 56) = a1[3];
  *(a6 + 40) = v10;
  v11 = *a1;
  *(a6 + 24) = a1[1];
  v12 = *(a1 + 17);
  v13 = *(a1 + 3);
  *a6 = -3;
  *(a6 + 8) = v11;
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 8 * *(a2 + 4) * *(a2 + 28);
  atomic_fetch_add((v13 + 48), 1u);
  *(a6 + 80) = sub_236760B50(v12, v13, 2 * *(a1 + 6), a3, a4);

  return _SparseRefactorHermitian_Complex_Float(a2, a6, a3, a5);
}

uint64_t sub_236760B50(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    a5 = (*(a2 + 24))(a3);
    if (!a5)
    {
      if (*(a2 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorSymmetric.", a3);
        v10 = *(a2 + 40);
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F726C();
      }

LABEL_36:
      _SparseTrap();
    }
  }

  v9 = 4 * *(a2 + 60);
  if (*(a4 + 4) <= 1u)
  {
    if (*(a4 + 4))
    {
      v11 = *(a4 + 8) == 0;
    }

    else
    {
      v11 = a1 == 0;
    }

    if (v11)
    {
      v9 = 0;
    }
  }

  else if (*(a4 + 4) - 2 >= 2)
  {
    v10 = *(a2 + 40);
    if (v10)
    {
      memset(&__str[88], 0, 168);
      strcpy(__str, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
LABEL_31:
      v10(__str, a2, a3, a4, a5);
      a5 = 0;
      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7228();
    }

    goto LABEL_36;
  }

  v12 = a5 + a3;
  v13 = ((a5 + 103) & 0xFFFFFFFFFFFFFFF8);
  if (a5 + a3 < v13 || (v14 = &v13[*(a2 + 64)], v14 > v12))
  {
LABEL_38:
    __break(1u);
  }

  if (v9)
  {
    v15 = (v14 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v15 = &v13[*(a2 + 64)];
    v14 = 0;
  }

  v16 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v16;
  *(a5 + 32) = 1;
  *(a5 + 40) = v13;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = v14;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 85) = 0;
  v17 = *(a2 + 64);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v15;
    do
    {
      v20 = *(*(a2 + 88) + 4 * v18 + 4) - *(*(a2 + 88) + 4 * v18);
      v21 = (16 * v20) | 8;
      if ((a1 - 3) >= 2)
      {
        v21 = 8;
      }

      v15 = (v19 + v21 + ((8 * (*(*(a2 + 120) + 8 * v18 + 8) - *(*(a2 + 120) + 8 * v18))) | 4) * v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v15)
      {
        goto LABEL_38;
      }

      v13[v18] = v19;
      v13 = *(a5 + 40);
      *v13[v18++] = 0;
      v19 = v15;
    }

    while (v17 != v18);
  }

  if (a1 == 4)
  {
    v22 = (v15 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v22)
    {
      goto LABEL_38;
    }

    *(a5 + 48) = v15;
    v15 = (v22 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }

    *(a5 + 56) = v22;
  }

  *(a5 + 72) = v15 - *v13;
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t _SparseRefactorHermitian_Complex_Float(int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a2;
  v96 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  if ((~*(a1 + 12) & 0x1C) != 0)
  {
    v18 = *(v5 + 40);
    if (v18)
    {
      memset(&v90[66], 0, 190);
      strcpy(v90, "_SparseRefactorHermitian only applies to SparseHermitian matrices");
LABEL_11:
      v18(v90);
      result = 4294967292;
      goto LABEL_85;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236763D08();
    }

LABEL_23:
    _SparseTrap();
  }

  v9 = *a1;
  v10 = *(a1 + 28);
  v11 = *(a2 + 80);
  v12 = *(a2 + 25);
  v13 = *(a3 + 4);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        v88 = *(a2 + 25);
        v14 = sub_2366FE684(v9, *(*(a1 + 1) + 8 * v9), v10);
        v15 = a4;
        if (v14 + 4 * v9 > (2 * *(v4 + 40)))
        {
          v15 = (*(v5 + 24))();
        }

        v16 = *(v11 + 64);
        v17 = *(a1 + 1);
        *v90 = *a1;
        *&v90[16] = v17;
        *&v90[32] = *(a1 + 4);
        sub_236794CB4(v90, v15, v16, &v15[4 * v9], v14);
        v12 = v88;
        if (v15 != a4)
        {
          (*(v5 + 32))(v15);
        }

        goto LABEL_15;
      }

      v18 = *(v5 + 40);
      if (v18)
      {
        memset(&v90[88], 0, 168);
        strcpy(v90, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7228();
      }

      goto LABEL_23;
    }

LABEL_14:
    v19 = *(v11 + 64);
    v20 = *(a1 + 1);
    *v90 = *a1;
    *&v90[16] = v20;
    *&v90[32] = *(a1 + 4);
    sub_236806094(v90, v19, a4);
    goto LABEL_15;
  }

  if (!*(a3 + 4))
  {
    if (!*(a2 + 25))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = *(a3 + 8);
  if (v26)
  {
    v27 = (v9 * v10);
    if (v27 >= 1)
    {
      v28 = *(v11 + 64);
      do
      {
        v29 = *v26++;
        *v28++ = v29;
        --v27;
      }

      while (v27);
    }
  }

LABEL_15:
  v21 = *(a3 + 8);
  if (v21 && *(a3 + 4) != 1)
  {
    v22 = *(v11 + 64);
    v23 = (v9 * v10);
    if (v22)
    {
      if (v23 >= 1)
      {
        do
        {
          v24 = *v22++;
          *v21++ = v24;
          --v23;
        }

        while (v23);
      }
    }

    else if (v23 >= 1)
    {
      memset_pattern16(v21, &unk_23681FB80, 4 * (v9 * v10));
    }
  }

  v87 = a1;
  v30 = *(a1 + 28);
  if (0x100 / v30 * v30 <= v30)
  {
    v31 = *(a1 + 28);
  }

  else
  {
    v31 = 0x100 / v30 * v30;
  }

  v32 = &a4[2 * *(v4 + 40)];
  v33 = *(v5 + 60);
  v89 = &a4[4 * v33 + 7] & 0xFFFFFFFFFFFFFFF8;
  if (v32 < v89)
  {
    goto LABEL_88;
  }

  if (v33 >= 1)
  {
    v34 = 0;
    v35 = *(v5 + 80);
    do
    {
      *&a4[4 * *(v35 + 4 * v34)] = v34;
      ++v34;
    }

    while (v34 < *(v5 + 60));
  }

  bzero(**(v11 + 40), *(v11 + 72));
  v36 = *(v5 + 64);
  if (v36 < 1)
  {
    v41 = 0;
  }

  else
  {
    v37 = 0;
    v38 = *(v11 + 40);
    do
    {
      v39 = *(v38 + 8 * v37);
      v40 = *v39;
      if (*v39)
      {
        bzero(v39, *v39);
        v38 = *(v11 + 40);
        v36 = *(v5 + 64);
        v39 = *(v38 + 8 * v37);
      }

      *v39 = v40;
      ++v37;
    }

    while (v37 < v36);
    v41 = v36 > 0;
  }

  v42 = *(v5 + 60);
  if (*(v5 + 52) > 1)
  {
    v43 = 8 * v31 * v31 + 56 + 4 * (v42 + 2 * v31);
    v44 = v4;
    if ((v12 - 3) >= 2)
    {
      if (v12 == 2)
      {
        v50 = *(v5 + 176);
        v51 = 8 * v50;
        v52 = v50 <= 4160;
        v53 = 33280;
        if (!v52)
        {
          v53 = v51;
        }

        v43 += v53;
      }
    }

    else
    {
      v45 = 16 * v42;
      if (*(v5 + 60) <= 2080)
      {
        v45 = 33280;
      }

      v43 += v45;
    }

    v54 = sub_2366FCCD0(0);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v55 = (v89 + (v43 + 16) * v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v32 >= v55)
    {
      v56 = sub_2366FCCD0(0);
      _X2 = 0;
      LODWORD(v91) = v56;
      atomic_store(0, &v91 + 1);
      atomic_store(0, (&v91 | 0xC));
      atomic_store(0, &v92);
      v58 = v93;
      do
      {
        _X5 = *(&v93 + 1);
        __asm { CASPAL          X4, X5, X2, X3, [X26] }

        _ZF = _X4 == v58;
        v58 = _X4;
      }

      while (!_ZF);
      *&v94 = v43;
      *(&v94 + 1) = v89;
      *v90 = v12;
      *&v90[8] = v87;
      *&v90[16] = v5;
      *&v90[24] = v11;
      *&v90[32] = v31;
      *&v90[40] = a4;
      v65 = *(v5 + 64);
      v66 = v55 + 40 * v65;
      if (v66 <= v32)
      {
        *&v90[48] = v55;
        v67 = (v66 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v32 >= v67)
        {
          *&v90[56] = v66;
          v68 = v67 + 19200;
          if (v67 + 19200 <= v32)
          {
            *&v90[64] = sub_2367921D4(100, (v67 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v90[72] = v69;
            if (v68 + 48 * *(v5 + 168) <= v32)
            {
              *&v90[80] = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
              *&v90[88] = 0;
              *&v95 = v90;
              if (*(v5 + 64) >= 1)
              {
                _X22 = 0;
                v71 = 0;
                do
                {
                  v72 = v71 + 1;
                  v73 = *&v90[48] + 40 * v71;
                  _ZF = *(*(v5 + 96) + 4 * (v71 + 1)) == *(*(v5 + 96) + 4 * v71);
                  atomic_store(*(*(v5 + 96) + 4 * (v71 + 1)) - *(*(v5 + 96) + 4 * v71), v73);
                  *(v73 + 8) = v71;
                  *(v73 + 16) = sub_236762950;
                  *(*&v90[56] + v71) = 0;
                  if (_ZF)
                  {
                    v74 = *&v90[48] + 40 * v71;
                    _X0 = 0;
                    _X1 = 0;
                    __asm { CASP            X0, X1, X0, X1, [X24] }

                    *(v74 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                    *(v74 + 32) = 0;
                    v78 = _X0 & 1;
                    _X2 = v78 | v74;
                    _X5 = 0;
                    __asm { CASPL           X4, X5, X2, X3, [X24] }

                    while (_X4 != _X0)
                    {
                      _X1 = 0;
                      __asm { CASP            X0, X1, X22, X23, [X10] }

                      *(v74 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v74 + 32) = 0;
                      v78 = _X0 & 1;
                      _X2 = v78 | v74;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }
                    }

                    if (v78)
                    {
                      __ulock_wake();
                    }
                  }

                  v71 = v72;
                }

                while (v72 < *(v5 + 64));
              }

              result = sub_2366FCD2C(&v91, 0);
              v4 = v44;
              goto LABEL_85;
            }
          }
        }
      }
    }

LABEL_88:
    __break(1u);
  }

  v86 = v4;
  v46 = ((v89 + 4 * v42 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v32 < v46)
  {
    goto LABEL_88;
  }

  v47 = (&v46[v31 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v32 < v47)
  {
    goto LABEL_88;
  }

  v48 = (v47 + 4 * v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v32 < v48 || v48 + 8 * v31 * v31 > v32)
  {
    goto LABEL_88;
  }

  if (v41)
  {
    v49 = 0;
    while (1)
    {
      result = sub_236762BA8(0, v49, v12, v87, v5, v11, v31, a4, v89, v46, ((&v46[v31 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v47 + 4 * v31 + 7) & 0xFFFFFFFFFFFFFFF8, v48 + 8 * v31 * v31, 0);
      if (result)
      {
        break;
      }

      v49 = (v49 + 1);
      if (v49 >= *(v5 + 64))
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
LABEL_60:
    result = 0;
  }

  v4 = v86;
LABEL_85:
  *v4 = result;
  v85 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _SparseFactorHermitian_Complex_Float@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v228 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *(*(a2 + 1) + 8 * v9);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  *a5 = -3;
  *(a5 + 8) = -3;
  *(a5 + 12) = v9;
  *(a5 + 16) = v9;
  *(a5 + 20) = a2[6] & 1;
  v11 = *(a2 + 28);
  *(a5 + 24) = v11;
  *(a5 + 25) = v7;
  *(a5 + 57) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 8 * v11 * v8;
  v12 = 8;
  if (*(a3 + 16))
  {
    v12 = 9;
  }

  v13 = v12 + v11;
  v14 = !is_mul_ok(v13, v9);
  v15 = v13 * v9;
  v16 = __CFADD__(v15, 2);
  v17 = v15 + 2;
  v18 = v16;
  v19 = v18 << 63 >> 63 != v18;
  if (v14 || v19)
  {
    goto LABEL_17;
  }

  v16 = __CFADD__(v17, 2 * v10);
  v20 = v17 + 2 * v10;
  v21 = v16;
  if (v10 < 0 || v21 || v20 >> 62 || (v25 = 2 * v9 + 2, (v9 & 0x80000000) != 0) || 2 * v9 >= 0xFFFFFFFFFFFFFFFELL || (v26 = 2 * v10, v16 = __CFADD__(v25, v26), v27 = v25 + v26, v16) || ((v28 = 4 * v20 + 8 * v27, !__CFADD__(4 * v20, 8 * v27)) ? (v29 = 0) : (v29 = 1), v27 >> 61 || (v29 & 1) != 0 || (v30 = v28 + 88, v28 >= 0xFFFFFFFFFFFFFFA8)))
  {
LABEL_17:
    v22 = *(a3 + 40);
    if (!v22)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F71E4();
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v22(__str);
    goto LABEL_19;
  }

  v33 = (*(a3 + 24))(v30);
  if (!v33)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v30);
LABEL_48:
      result = (*(a3 + 40))(__str);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

LABEL_113:
    _SparseTrap();
  }

  __b = v33;
  v34 = *(a2 + 1);
  *__str = *a2;
  *&__str[16] = v34;
  v35 = _SparseFromStructureComplex(__str, &v219);
  v36 = BYTE12(v220);
  v216 = v219;
  v215 = v219 * BYTE12(v220);
  v37 = v215 + 224;
  if (!*(a3 + 16))
  {
    v37 = 224;
  }

  v38 = v37 + 4 * (BYTE12(v220) + 2) * v219;
  v39 = (*(a3 + 24))(v38, v35);
  if (!v39)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v38);
LABEL_51:
      (*(a3 + 40))(__str);
LABEL_117:
      result = (*(a3 + 32))(__b);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    goto LABEL_116;
  }

  v40 = v39;
  v208 = v30;
  v41 = v39 + v38;
  v42 = (v39 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (v41 < v42)
  {
    goto LABEL_307;
  }

  v43 = v216;
  v44 = *(a3 + 16);
  v45 = *(a3 + 32);
  v224 = *a3;
  v225 = v44;
  v226 = v45;
  v46 = 1;
  v217 = v40;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    v46 = sub_2366FCCD0(0);
    v43 = v216;
    v40 = v217;
  }

  v47 = v225;
  *v40 = v224;
  v40[1] = v47;
  v40[2] = v226;
  *(v40 + 12) = 1;
  *(v40 + 13) = v46;
  *(v40 + 14) = v43;
  *(v40 + 15) = v215;
  *(v40 + 16) = 0;
  *(v40 + 72) = 0u;
  v48 = (v42 + 4 * v216 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 120) = 0u;
  *(v40 + 136) = 0u;
  *(v40 + 152) = 0u;
  *(v40 + 164) = 0u;
  if (v41 < v48)
  {
    goto LABEL_307;
  }

  *(v40 + 9) = v42;
  v49 = (v48 + 4 * v215 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v41 < v49)
  {
    goto LABEL_307;
  }

  v50 = 4 * v216;
  *(v40 + 10) = v48;
  v51 = ((v49 + v50 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v41 < v51)
  {
    goto LABEL_307;
  }

  *(v40 + 14) = v49;
  v52 = *(a3 + 16);
  if (v52)
  {
    if (v41 < ((v51 + v215 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_307;
    }

    *(v40 + 17) = v51;
    v53 = 9;
  }

  else
  {
    v51 = 0;
    v53 = 8;
  }

  v54 = 0;
  v55 = v53 + BYTE12(v220);
  v56 = !is_mul_ok(v55, v216);
  v57 = v55 * v216;
  v16 = __CFADD__(v57, 2);
  v58 = v57 + 2;
  v59 = v16;
  v60 = v59 << 63 >> 63 != v59;
  if (v56 || v60)
  {
    goto LABEL_65;
  }

  v54 = 0;
  v61 = *(*(&v219 + 1) + 8 * v216);
  v16 = __CFADD__(v58, 2 * v61);
  v62 = v58 + 2 * v61;
  v63 = v16;
  if (v61 < 0 || v63)
  {
    goto LABEL_65;
  }

  v54 = v62 >> 62;
  if (v62 >> 62)
  {
    goto LABEL_64;
  }

  v119 = 2 * v216 + 2;
  if (v43 < 0 || (2 * v216) >= 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_65;
  }

  v16 = __CFADD__(v119, 2 * v61);
  v120 = v119 + 2 * v61;
  if (v16)
  {
LABEL_64:
    v54 = 0;
  }

  else
  {
    v54 = 0;
    v121 = 4 * v62;
    v16 = __CFADD__(v121, 8 * v120);
    v122 = v121 + 8 * v120;
    v123 = v16;
    if (!(v120 >> 61) && (v123 & 1) == 0)
    {
      v54 = v122 + 88;
    }
  }

LABEL_65:
  v64 = &__b[v54];
  v65 = (v36 + 3) * v43;
  if (v65 <= 6 * v43 + 12)
  {
    v66 = 24 * v43 + 48;
  }

  else
  {
    v66 = 4 * v65;
  }

  v67 = (&__b[v66 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v64 < v67)
  {
    goto LABEL_307;
  }

  v68 = (&v67[v50 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v64 < v68)
  {
    goto LABEL_307;
  }

  v41 = (v68 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v64 < v41)
  {
    goto LABEL_307;
  }

  v212 = v42;
  v69 = *(*(&v219 + 1) + 8 * SDWORD1(v219));
  v70 = v41 + 8 * (v216 + v69) + 16;
  if (v70 > v64)
  {
    goto LABEL_307;
  }

  v213 = v49;
  v71 = v70 + 16 * v69;
  if (v71 > v64)
  {
    goto LABEL_307;
  }

  v72 = ((v71 + 8 * v216) & 0xFFFFFFFFFFFFFFF8);
  if (v64 < v72)
  {
    goto LABEL_307;
  }

  v209 = v70 + 16 * v69;
  v210 = v41 + 8 * (v216 + v69) + 16;
  v211 = (&v67[v50 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (!v52)
  {
    v72 = 0;
    goto LABEL_90;
  }

  if (v64 < (&v72[v50 + 7] & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_307:
    __break(1u);
LABEL_308:
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v41);
      goto LABEL_48;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

    goto LABEL_113;
  }

  bzero(v51, v215);
  if (v216 >= 1)
  {
    v73 = BYTE12(v220);
    v74 = (v216 + 3) & 0xFFFFFFFC;
    v75 = vdupq_n_s64(v216 - 1);
    v76 = xmmword_23681F910;
    v77 = xmmword_23681F920;
    v78 = v72 + 8;
    v79 = vdupq_n_s64(4uLL);
    do
    {
      v80 = vmovn_s64(vcgeq_u64(v75, v77));
      if (vuzp1_s16(v80, *v75.i8).u8[0])
      {
        *(v78 - 2) = v73;
      }

      if (vuzp1_s16(v80, *&v75).i8[2])
      {
        *(v78 - 1) = v73;
      }

      if (vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, *&v76))).i32[1])
      {
        *v78 = v73;
        v78[1] = v73;
      }

      v76 = vaddq_s64(v76, v79);
      v77 = vaddq_s64(v77, v79);
      v78 += 4;
      v74 -= 4;
    }

    while (v74);
  }

  v81 = *(a3 + 16);
  v82 = *v81;
  v71 = v209;
  if ((*v81 & 0x80000000) == 0)
  {
    v83 = BYTE12(v220);
    v84 = *(v217 + 17);
    v85 = (v81 + 1);
    do
    {
      --*&v72[4 * (v82 / v83)];
      *(v84 + *(v85 - 1)) = 1;
      v86 = *v85++;
      v82 = v86;
    }

    while ((v86 & 0x80000000) == 0);
  }

  v70 = v210;
LABEL_90:
  v222 = 0u;
  v223 = 0u;
  if ((BYTE8(v220) & 2) != 0)
  {
    *__str = v219;
    *&__str[16] = v220;
    sub_2367861D0(__str, v72, v41, v70, v71, &v222);
  }

  else
  {
    v221[0] = v219;
    v221[1] = v220;
    sub_236785FB0(v221, v72, v41, v70, v71, __str);
    v222 = *__str;
    v223 = *&__str[16];
  }

  *__str = v222;
  *&__str[16] = v223;
  if (sub_2367E3E64(v7, __str, v72, v212, v67, a3))
  {
    free(v217);
    goto LABEL_117;
  }

  *__str = v222;
  *&__str[16] = v223;
  sub_236768978(__str, 0, v72, v212, v67, v213, __b, 0);
  sub_236750DDC(v216, v213, v212, v67, __b);
  *__str = v222;
  *&__str[16] = v223;
  sub_2366EE0E8(__str, 0, v72, v212, v67, v213, v211, __b, 0);
  v87 = sub_236767CA0(v216, BYTE12(v220), v72, v212, v67, *(v217 + 14), v211, __b, a3, &__b[4 * v216 + 4]);
  v217[16] = v87;
  *(v217 + 20) = 0;
  *(v217 + 21) = 0;
  v217[44] = 0;
  if (v87 < 1)
  {
    v41 = 0;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v41 = 0;
    v92 = BYTE12(v220);
    do
    {
      v93 = *(v211 + 4 * v89);
      v94 = &__b[4 * v89];
      if (v72)
      {
        v96 = *v94;
        v95 = *(v94 + 1);
        if (v96 >= v95)
        {
          v97 = 0;
        }

        else
        {
          v97 = 0;
          v98 = v95 - v96;
          v99 = &v67[v96];
          do
          {
            v100 = *v99++;
            v97 += *&v72[4 * v100];
            --v98;
          }

          while (v98);
        }
      }

      else
      {
        v93 = v92 * v93;
        v97 = (*(v94 + 1) - *v94) * v92;
      }

      if (v97 > v91)
      {
        v217[44] = v97;
        v91 = v97;
      }

      if (v93 > 192 || v97 >= 97)
      {
        v88 += ((v97 - 1) / 96 + 1) * ((v93 - 1) / 96) + (v97 - 1) / 96 + 1;
        *(v217 + 21) = v88;
      }

      v90 += v93 * v97;
      v41 += v93;
      ++v89;
    }

    while (v89 != v87);
    *(v217 + 20) = v90;
  }

  *v214 = 4 * (v41 + 3 * v87 + 3) + 16 * v87 + 16 * *(*(&v219 + 1) + 8 * v216) + 72;
  v101 = (*(a3 + 24))();
  if (!v101)
  {
    free(v217);
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", *v214);
      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_115:
      sub_2366F716C();
    }

LABEL_116:
    _SparseTrap();
  }

  v102 = v101 + *v214;
  v103 = v217;
  v104 = v217[16];
  v105 = v104 + 1;
  v106 = (v101 + 4 * (v104 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 + *v214 < v106)
  {
    goto LABEL_307;
  }

  *(v217 + 11) = v101;
  v107 = (v106 + 4 * v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v107)
  {
    goto LABEL_307;
  }

  *(v217 + 12) = v106;
  v108 = (v107 + 4 * v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v108)
  {
    goto LABEL_307;
  }

  *(v217 + 13) = v107;
  v109 = v108 + 8 * v105;
  if (v109 > v102)
  {
    goto LABEL_307;
  }

  *(v217 + 15) = v108;
  v110 = (v109 + 4 * v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v110)
  {
    goto LABEL_307;
  }

  *(v217 + 16) = v109;
  v111 = v110 + 8 * v105;
  if (v111 > v102)
  {
    goto LABEL_307;
  }

  *(v217 + 18) = v110;
  if (v111 + 16 * *(*(&v219 + 1) + 8 * v216) > v102)
  {
    goto LABEL_307;
  }

  *(v217 + 19) = v111;
  if (v72)
  {
    if (v104 < 1)
    {
      v113 = 0;
    }

    else
    {
      v112 = 0;
      v113 = 0;
      do
      {
        *(v101 + 4 * v112) = v113;
        v114 = *&__b[4 * v112++];
        v115 = *&__b[4 * v112];
        if (v114 < v115)
        {
          v116 = v115 - v114;
          v117 = &v67[v114];
          do
          {
            v118 = *v117++;
            v113 += *&v72[4 * v118];
            --v116;
          }

          while (v116);
        }

        v104 = v217[16];
      }

      while (v112 < v104);
    }

    *(v101 + 4 * v104) = v113;
  }

  else if ((v104 & 0x80000000) == 0)
  {
    v124 = 0;
    v125 = BYTE12(v220);
    do
    {
      *(v101 + 4 * v124) = *&__b[4 * v124] * v125;
      v182 = v124++ < v217[16];
    }

    while (v182);
  }

  if (*(a3 + 16))
  {
    bzero(*(v217 + 10), 4 * v215);
    v103 = v217;
    v126 = *(a3 + 16);
    v127 = *v126;
    if ((v127 & 0x80000000) == 0)
    {
      v128 = *(v217 + 10);
      v129 = v215 - 1;
      v130 = v126 + 1;
      do
      {
        *(v128 + 4 * v127) = v129;
        v131 = *v130++;
        v127 = v131;
        --v129;
      }

      while ((v131 & 0x80000000) == 0);
    }

    if (v216 >= 1)
    {
      v132 = 0;
      v133 = 0;
      v134 = BYTE12(v220);
      do
      {
        if (v134)
        {
          v135 = 0;
          v136 = *(v217 + 10);
          do
          {
            v137 = v135 + v67[v132] * v134;
            if (!*(v136 + 4 * v137))
            {
              *(v136 + 4 * v137) = v133++;
            }

            ++v135;
          }

          while (v134 != v135);
        }

        ++v132;
      }

      while (v132 != v216);
    }
  }

  else if (v216 >= 1)
  {
    v138 = 0;
    v139 = 0;
    v140 = BYTE12(v220);
    v141 = 4 * BYTE12(v220);
    do
    {
      if (v140)
      {
        v142 = 0;
        v143 = *(v217 + 9);
        v144 = *(v217 + 10) + v138;
        do
        {
          *(v144 + 4 * v142) = v142 + *(v143 + 4 * v139) * v140;
          ++v142;
        }

        while (v140 != v142);
      }

      ++v139;
      v138 += v141;
    }

    while (v139 != v216);
  }

  sub_236812888(v103[16], *(v103 + 14), *(v103 + 12), *(v103 + 13));
  sub_23679A71C(&v222, v217, __b, *(a3 + 16), v67, &__b[4 * v217[16] + 4]);
  sub_23678A440(&v222, v217, v210, v209, __b);
  v146 = v217[15];
  v145 = v217[16];
  v147 = 8 * v145;
  v148 = *(v217 + 20);
  v149 = v146 < 0;
  v150 = 16 * v145 + 4 * v146;
  if (__CFADD__(16 * v145, 4 * v146))
  {
    v149 = 1;
  }

  if (v145 >= 0)
  {
    v151 = v149;
  }

  else
  {
    v150 = 8 * v145;
    v151 = 1;
  }

  if (v7 == 4)
  {
    if (v151)
    {
      goto LABEL_200;
    }

    v16 = __CFADD__(v148, 2 * v146);
    v148 += 2 * v146;
    v153 = v16;
    v16 = __CFADD__(v150, v147);
    v150 += v147;
    v152 = v16;
    if ((v146 & 0x80000000) != 0 || v153 || (v145 & 0x80000000) != 0)
    {
      goto LABEL_200;
    }

    goto LABEL_195;
  }

  if (v7 == 3)
  {
    if (v151)
    {
      goto LABEL_200;
    }

    v16 = __CFADD__(v148, 2 * v146);
    v148 += 2 * v146;
    v152 = v16;
    if ((v146 & 0x80000000) != 0)
    {
      goto LABEL_200;
    }

LABEL_195:
    if (v152)
    {
      goto LABEL_200;
    }

LABEL_198:
    v16 = __CFADD__(v146, v148);
    v154 = v146 + v148;
    if (v16)
    {
      goto LABEL_200;
    }

    v156 = v145 + 5;
    if (v145 < -5)
    {
      v156 = -5 - v145;
    }

    v157 = 8 * v156;
    if (v145 < -5)
    {
      v157 = -8 * v156;
    }

    v16 = __CFADD__(v150, v157);
    v158 = v150 + v157;
    v159 = v16;
    if (v145 < -5)
    {
      goto LABEL_200;
    }

    if (v156 >> 61)
    {
      goto LABEL_200;
    }

    if (v159)
    {
      goto LABEL_200;
    }

    v160 = v158 + 96;
    if (v158 >= 0xFFFFFFFFFFFFFFA0)
    {
      goto LABEL_200;
    }

    v161 = v160 + 4 * v154;
    v162 = __CFADD__(v160, 4 * v154);
    *(a5 + 56) = v161;
    if (v154 >> 62 || v162)
    {
      goto LABEL_200;
    }

    v163 = v160 + 8 * v154;
    v164 = __CFADD__(v160, 8 * v154);
    *(a5 + 64) = v163;
    if (v154 >> 61 || v164)
    {
      goto LABEL_200;
    }

    if ((*(a3 + 3) & 0x40) != 0)
    {
      v165 = 1;
    }

    else
    {
      v165 = sub_2366FCCD0(0);
    }

    v166 = *(a2 + 28);
    if (0x100 / v166 * v166 <= v166)
    {
      v167 = *(a2 + 28);
    }

    else
    {
      v167 = 0x100 / v166 * v166;
    }

    v168 = *(a2 + 28) * v9;
    v169 = v168 + 2 * v167;
    v170 = v169 >> 62;
    if (v169 >> 62)
    {
      v171 = 0;
LABEL_236:
      v170 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 1;
      goto LABEL_262;
    }

    v171 = 4 * v169 + 72;
    v175 = v217[16];
    if (v175 >= 0)
    {
      v176 = v217[16];
    }

    else
    {
      v176 = -v175;
    }

    v177 = 41 * v176;
    if (v175 < 0)
    {
      v177 = -v177;
    }

    v178 = v177 + 32;
    v179 = v177 >= 0xFFFFFFFFFFFFFFE0;
    v174 = 1;
    if (v175 < 0 || v179)
    {
      goto LABEL_261;
    }

    v180 = v178 + 19200;
    if (v178 >= 0xFFFFFFFFFFFFB500)
    {
      goto LABEL_236;
    }

    v170 = 0;
    v181 = *(v217 + 21);
    v182 = v181 < 0;
    v183 = v181 < 0;
    if (v181 < 0)
    {
      v181 = -v181;
    }

    v184 = (v181 * 0x30uLL) >> 64;
    v185 = 48 * v181;
    if (v182)
    {
      v186 = -v185;
    }

    else
    {
      v186 = v185;
    }

    v187 = v184 != 0;
    if (!v185)
    {
      v183 = 0;
    }

    v188 = v180 + v186;
    v189 = __CFADD__(v180, v186);
    v174 = 1;
    if (v187 || v183 || v189)
    {
LABEL_261:
      v172 = 0;
      v173 = 0;
    }

    else
    {
      v16 = __CFADD__(v188, 4 * v168);
      v173 = v188 + 4 * v168;
      if (v16)
      {
        v170 = 0;
        v172 = 0;
      }

      else
      {
        v174 = 0;
        v172 = (v166 * v166) * v9;
        v170 = v167 * v167;
      }
    }

LABEL_262:
    if ((v7 - 3) >= 2)
    {
      if (v7 == 2)
      {
        if ((v174 & 1) == 0)
        {
          LODWORD(v193) = v217[44];
          if (v193 <= 4160)
          {
            v193 = 4160;
          }

          else
          {
            v193 = v193;
          }

          v192 = v170 + v193;
          goto LABEL_277;
        }
      }

      else if ((v174 & 1) == 0)
      {
        v16 = __CFADD__(v172, 2 * v170);
        v192 = v172 + 2 * v170;
        if (!v16)
        {
          goto LABEL_277;
        }
      }
    }

    else if ((v174 & 1) == 0)
    {
      v190 = 4160;
      if (2 * v9 > 0x1040)
      {
        v190 = 2 * v9;
      }

      v191 = v170 + v190;
      v16 = __CFADD__(v172, v191);
      v192 = v172 + v191;
      if (!v16)
      {
LABEL_277:
        v194 = !is_mul_ok(v171, v165);
        v195 = v171 * v165;
        v16 = __CFADD__(v173, v195);
        v196 = v173 + v195;
        v197 = v16;
        if (!v194 && (v197 & 1) == 0)
        {
          v198 = !is_mul_ok(v192, v165);
          v199 = v192 * v165;
          v16 = __CFADD__(v172, v199);
          v200 = v172 + v199;
          v201 = v16;
          if (!v198 && !v201)
          {
            v202 = v196 + 4 * v200;
            v203 = __CFADD__(v196, 4 * v200);
            *(a5 + 40) = v202;
            if (!(v200 >> 62) && !v203)
            {
              v204 = v196 + 8 * v200;
              v205 = __CFADD__(v196, 8 * v200);
              *(a5 + 48) = v204;
              if (!(v200 >> 61) && !v205)
              {
                v41 = 2 * v202;
                if (2 * v202 <= v208 || ((*(a3 + 32))(__b), (__b = (*(a3 + 24))(v41)) != 0))
                {
                  *(a5 + 8) = 0;
                  *(a5 + 32) = v217;
                  v206 = sub_236760B50(v7, v217, 2 * v161, a4, 0);
                  if (v206)
                  {
                    *(a5 + 80) = v206;
                    _SparseRefactorHermitian_Complex_Float(a2, a5, a4, __b);
                    result = (*(a3 + 32))(__b);
                    goto LABEL_23;
                  }

                  goto LABEL_117;
                }

                goto LABEL_308;
              }
            }
          }
        }
      }
    }

    v207 = *(a3 + 40);
    if (!v207)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7128();
      }

      _SparseTrap();
    }

    memset(&__str[73], 0, 183);
    strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
    v207(__str);
    result = (*(a3 + 32))(__b);
LABEL_19:
    *a5 = -4;
    goto LABEL_23;
  }

  if ((v151 & 1) == 0)
  {
    goto LABEL_198;
  }

LABEL_200:
  v155 = *(a3 + 40);
  if (!v155)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F72E4();
    }

    _SparseTrap();
  }

  memset(&__str[40], 0, 216);
  strcpy(__str, "Computation of factor size overflowed.\n");
  v155(__str);
  (*(a3 + 32))(__b);
  result = sub_23680EEA8(v217, a3);
LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseGetInertia(SparseOpaqueSymbolicFactorization *factor, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v16, &factor->columnCount);
  v11 = *&v16[40];
  if (!*p_columnCount)
  {
    if (factor->workspaceSize_Double)
    {
      if (factor->status == SparseStatusOK)
      {
        workspaceSize_Float = factor[1].workspaceSize_Float;
        if (workspaceSize_Float)
        {
          if (BYTE1(factor->workspaceSize_Float) == 4)
          {
            result = 0;
            v13 = atomic_load(workspaceSize_Float + 20);
            *a2 = v13;
            v14 = atomic_load(workspaceSize_Float + 21);
            *a3 = v14;
            v15 = atomic_load(workspaceSize_Float + 22);
            *a4 = v15;
            goto LABEL_5;
          }

          if (*&v16[40])
          {
            memset(&v16[89], 0, 167);
            strcpy(v16, "SparseGetInertia is only supported for factorizations of type SparseFactorizationLDLTTPP");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2366F7328();
          }

LABEL_4:
          _SparseTrap();
        }
      }
    }
  }

  if (!*&v16[40])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  memset(v16, 0, sizeof(v16));
  snprintf(v16, 0x100uLL, "%s does not hold a completed matrix factorization.\n", "Factored");
LABEL_10:
  v11(v16);
  result = 0xFFFFFFFFLL;
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v16, &factor->columnCount);
  v11 = *&v16[40];
  if (!*p_columnCount)
  {
    if (factor->workspaceSize_Double)
    {
      if (factor->status == SparseStatusOK)
      {
        workspaceSize_Float = factor[1].workspaceSize_Float;
        if (workspaceSize_Float)
        {
          if (BYTE1(factor->workspaceSize_Float) == 4)
          {
            result = 0;
            v13 = atomic_load(workspaceSize_Float + 20);
            *a2 = v13;
            v14 = atomic_load(workspaceSize_Float + 21);
            *a3 = v14;
            v15 = atomic_load(workspaceSize_Float + 22);
            *a4 = v15;
            goto LABEL_5;
          }

          if (*&v16[40])
          {
            memset(&v16[89], 0, 167);
            strcpy(v16, "SparseGetInertia is only supported for factorizations of type SparseFactorizationLDLTTPP");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2366F7328();
          }

LABEL_4:
          _SparseTrap();
        }
      }
    }
  }

  if (!*&v16[40])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  memset(v16, 0, sizeof(v16));
  snprintf(v16, 0x100uLL, "%s does not hold a completed matrix factorization.\n", "Factored");
LABEL_10:
  v11(v16);
  result = 0xFFFFFFFFLL;
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_236762950(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[1];
  v5 = *(v4 + 64);
  v6 = *v5;
  if ((v6 - 3) >= 2)
  {
    if (v6 != 2)
    {
      v9 = 0;
      v7 = *(v5 + 2);
      goto LABEL_9;
    }

    v7 = *(v5 + 2);
    v11 = *(v7 + 176);
    v9 = 8 * v11;
    v10 = v11 <= 4160;
  }

  else
  {
    v7 = *(v5 + 2);
    v8 = *(v7 + 60);
    v9 = 16 * v8;
    v10 = v8 <= 2080;
  }

  if (v10)
  {
    v9 = 33280;
  }

LABEL_9:
  v12 = result[5];
  v13 = v12 + *(v4 + 48);
  v14 = ((v12 + 4 * *(v7 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v14 || (v15 = *(v5 + 8), v16 = (&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v13 < v16) || (v17 = (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v17) || (v18 = v17 + 8 * v15 * v15, v18 > v13) || v13 < ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    result = sub_236762BA8(result, a2, v6, *(v5 + 1), v7, *(v5 + 3), v15, *(v5 + 5), v12, v14, ((&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v17 + 8 * v15 * v15, v5);
    if (result)
    {
      _X2 = 0;
      v20 = v3[1];
      atomic_store(result, (v20 + 16));
      atomic_store(1u, (v20 + 12));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X1] }

      if (_X2)
      {

        return __ulock_wake();
      }
    }

    else
    {
      v27 = *(*(*(v5 + 2) + 112) + 4 * v2);
      if (v27 != -1)
      {
        v28 = (*(v5 + 6) + 40 * v27);
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v29 = v3[2];
          if (v29)
          {
            _X4 = 0;
            _X5 = 0;
            v32 = v3[1] + 32;
            v33 = v3[3];
            __asm { CASP            X4, X5, X4, X5, [X1] }

            *(v29 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v29 + 32) = 0;
            v35 = _X4 & 1;
            _X2 = v35 | v29;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 != _X4)
            {
              _X4 = 0;
              do
              {
                _X7 = 0;
                __asm { CASP            X6, X7, X4, X5, [X1] }

                *(v29 + 24) = _X6 & 0xFFFFFFFFFFFFFFFELL;
                *(v29 + 32) = 0;
                v35 = _X6 & 1;
                _X2 = v35 | v29;
                _X11 = 0;
                __asm { CASPL           X10, X11, X2, X3, [X1] }
              }

              while (_X10 != _X6);
            }

            if (v35)
            {
              result = __ulock_wake();
            }
          }

          v3[2] = v28;
          v3[3] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_236762BA8(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, signed int a7, uint64_t a8, uint64_t a9, int *a10, int *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v203 = a1;
  v209 = a13;
  v210 = a2;
  v211[1] = *MEMORY[0x277D85DE8];
  v205 = a4;
  v16 = *(a4 + 28);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v17 = sub_236771188;
    }

    else
    {
      v17 = sub_236771D40;
    }
  }

  else
  {
    if (!a3)
    {
      v200 = sub_236771FF4;
      v209 = 0;
      goto LABEL_9;
    }

    v17 = sub_236772B6C;
  }

  v200 = v17;
LABEL_9:
  LODWORD(v208) = a3;
  v18 = a5[15];
  v19 = v210;
  v20 = *(v18 + 8 * v210);
  v21 = *(v18 + 8 * (v210 + 1)) - v20;
  v22 = a5[11];
  v199 = v210 + 1;
  v23 = *(v22 + 4 * (v19 + 1)) - *(v22 + 4 * v19);
  v24 = *(*(a6 + 40) + 8 * v210) + 8;
  v202 = v21;
  v25 = v21;
  if (((a3 - 3) & 0xFE) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = 2 * v23;
  }

  v206 = v24;
  v27 = v24 + 8 * v21 * v23 + 8 * v26;
  if (v23 >= 1)
  {
    v28 = 0;
    do
    {
      *(v27 + 4 * v28) = *(a8 + 4 * (v28 + *(v22 + 4 * v19)));
      ++v28;
    }

    while (v23 != v28);
  }

  v201 = v23;
  v30 = a5[18];
  v29 = a5[19];
  v32 = a5[16];
  v31 = a5[17];
  v207 = a5;
  v33 = v32 + 4 * v20;
  v35 = *(a6 + 64);
  v36 = (v30 + 8 * v19);
  v37 = *v36;
  v38 = v36[1];
  if (v35)
  {
    if (*v36 < v38)
    {
      v204 = 8 * (v16 * v16);
      if (v16 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v16;
      }

      v40 = 8 * v16;
      v41 = 8 * v25;
      do
      {
        v42 = (v29 + 8 * v37);
        v44 = *v42;
        v43 = v42[1];
        v45 = v43 % v25;
        v46 = v205[4];
        v47 = (v43 / v25);
        v48 = v206 + 8 * v47 * v25 + 8 * v45;
        v49 = *(v33 + 4 * v45);
        if (v31)
        {
          v50 = v49 / v16 * v16;
          v51 = (v35 + 4 * v50);
          v52 = *(v33 + 4 * v47) / v16 * v16;
          v53 = v35 + 4 * v52;
          v54 = (v31 + v50);
          v55 = v31 + v52;
          v56 = 0;
          if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
          {
            v57 = -v44;
          }

          else
          {
            v57 = v44;
          }

          v58 = v57 - 1;
          if (v44 < 0)
          {
            v78 = v46 + v204 * v58 + 4;
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v79 = 0;
                v80 = v51;
                v81 = v78;
                v82 = v54;
                v83 = v39;
                do
                {
                  v84 = *v82++;
                  if ((v84 & 1) == 0)
                  {
                    v85.f64[0] = *(v81 - 1);
                    v85.f64[1] = -*v81;
                    *(v48 + 8 * v79) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v85, *v80), *(v53 + 4 * v56)), vcvtq_f64_f32(*(v48 + 8 * v79))));
                    ++v79;
                  }

                  v81 = (v81 + v40);
                  ++v80;
                  --v83;
                }

                while (v83);
                v48 += 8 * v25;
              }

              ++v56;
              v78 += 8;
            }

            while (v56 != v39);
          }

          else
          {
            v59 = (v46 + v204 * v58);
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v60 = 0;
                v61 = v54;
                v62 = v51;
                v63 = v59;
                v64 = v39;
                do
                {
                  v65 = *v61++;
                  if ((v65 & 1) == 0)
                  {
                    *(v48 + 8 * v60) = vadd_f32(*(v48 + 8 * v60), vmul_n_f32(vmul_n_f32(*v63, *v62), *(v53 + 4 * v56)));
                    ++v60;
                  }

                  ++v63;
                  ++v62;
                  --v64;
                }

                while (v64);
                v48 += 8 * v25;
              }

              ++v56;
              v59 = (v59 + v40);
            }

            while (v56 != v39);
          }
        }

        else
        {
          v66 = (v35 + 4 * v49);
          v67 = v35 + 4 * *(v33 + 4 * v47);
          if (v44 < 0)
          {
            if (v16)
            {
              v86 = 0;
              if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
              {
                v87 = -v44;
              }

              else
              {
                v87 = v44;
              }

              v88 = v46 + v204 * (v87 - 1) + 4;
              do
              {
                v89 = 0;
                v90 = v66;
                v91 = v88;
                do
                {
                  v92 = *v90++;
                  v93.f64[0] = *(v91 - 1);
                  v93.f64[1] = -*v91;
                  *(v48 + v89) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v93, v92), *(v67 + 4 * v86)), vcvtq_f64_f32(*(v48 + v89))));
                  v89 += 8;
                  v91 = (v91 + v40);
                }

                while (v40 != v89);
                ++v86;
                v48 += v41;
                v88 += 8;
              }

              while (v86 != v16);
            }
          }

          else if (v16)
          {
            v68 = 0;
            if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
            {
              v69 = -v44;
            }

            else
            {
              v69 = v44;
            }

            v70 = (v46 + v204 * (v69 - 1));
            do
            {
              v71 = v66;
              v72 = v70;
              v73 = v48;
              v74 = v16;
              do
              {
                v75 = *v71++;
                v76 = v75;
                v77 = *v72++;
                *v73 = vadd_f32(*v73, vmul_n_f32(vmul_n_f32(v77, v76), *(v67 + 4 * v68)));
                ++v73;
                --v74;
              }

              while (v74);
              ++v68;
              v48 += v41;
              v70 = (v70 + v40);
            }

            while (v68 != v16);
          }
        }

        v37 += 2;
      }

      while (v37 < v36[1]);
    }
  }

  else if (*v36 < v38)
  {
    v94 = 8 * (v16 * v16);
    if (v16 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = v16;
    }

    v96 = 8 * v16;
    v97 = 8 * v21;
    do
    {
      v98 = (v29 + 8 * v37);
      v100 = *v98;
      v99 = v98[1];
      v101 = v99 % v25;
      v102 = v205[4];
      v103 = (v99 / v25);
      v104 = v206 + 8 * v103 * v25 + 8 * (v99 % v25);
      if (v31)
      {
        v105 = (v31 + *(v33 + 4 * v101) / v16 * v16);
        v106 = v31 + *(v33 + 4 * v103) / v16 * v16;
        v107 = 0;
        if (v100 < 0)
        {
          if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
          {
            v100 = -v100;
          }

          v121 = (v102 + v94 * (v100 - 1));
          do
          {
            if ((*(v106 + v107) & 1) == 0)
            {
              v122 = 0;
              v123 = v105;
              v124 = v121;
              v125 = v95;
              do
              {
                v126 = *v123++;
                if ((v126 & 1) == 0)
                {
                  v127 = *(v104 + 8 * v122);
                  LODWORD(v128) = vadd_f32(v127, *v124).u32[0];
                  HIDWORD(v128) = vsub_f32(v127, *v124).i32[1];
                  *(v104 + 8 * v122++) = v128;
                }

                v124 = (v124 + v96);
                --v125;
              }

              while (v125);
              v104 += 8 * v25;
            }

            ++v107;
            ++v121;
          }

          while (v107 != v95);
        }

        else
        {
          if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
          {
            v100 = -v100;
          }

          v108 = (v102 + v94 * (v100 - 1));
          do
          {
            if ((*(v106 + v107) & 1) == 0)
            {
              v109 = 0;
              v110 = v105;
              v111 = v108;
              v112 = v95;
              do
              {
                v113 = *v110++;
                if ((v113 & 1) == 0)
                {
                  *(v104 + 8 * v109) = vadd_f32(*v111, *(v104 + 8 * v109));
                  ++v109;
                }

                ++v111;
                --v112;
              }

              while (v112);
              v104 += 8 * v25;
            }

            ++v107;
            v108 = (v108 + v96);
          }

          while (v107 != v95);
        }
      }

      else if (v100 < 0)
      {
        if (v16)
        {
          v129 = 0;
          if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
          {
            v130 = -v100;
          }

          else
          {
            v130 = v100;
          }

          v131 = (v102 + v94 * (v130 - 1));
          do
          {
            v132 = 0;
            v133 = v131;
            do
            {
              v134 = *(v104 + v132);
              LODWORD(v135) = vadd_f32(v134, *v133).u32[0];
              HIDWORD(v135) = vsub_f32(v134, *v133).i32[1];
              *(v104 + v132) = v135;
              v132 += 8;
              v133 = (v133 + v96);
            }

            while (v96 != v132);
            ++v129;
            v104 += v97;
            ++v131;
          }

          while (v129 != v16);
        }
      }

      else if (v16)
      {
        v114 = 0;
        if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
        {
          v115 = -v100;
        }

        else
        {
          v115 = v100;
        }

        v116 = (v102 + v94 * (v115 - 1));
        do
        {
          v117 = v116;
          v118 = v104;
          v119 = v16;
          do
          {
            v120 = *v117++;
            *v118 = vadd_f32(v120, *v118);
            ++v118;
            --v119;
          }

          while (v119);
          ++v114;
          v104 += v97;
          v116 = (v116 + v96);
        }

        while (v114 != v16);
      }

      v37 += 2;
    }

    while (v37 < v36[1]);
  }

  if (v208 == 4)
  {
    v136 = atomic_load((*(a6 + 48) + 4 * v19));
    v137 = v207;
    if (v136 >= 1)
    {
      sub_236775B18(4, v207, a6, v210, a9);
      v138 = atomic_load((*(a6 + 48) + 4 * v19));
      v139 = v138 + *(*(v207 + 120) + 8 * v199) - *(*(v207 + 120) + 8 * v19);
      v140 = *(*(a6 + 40) + 8 * v19) + 8;
      v25 = v139;
      v201 = *(*(v207 + 88) + 4 * v199) - *(*(v207 + 88) + 4 * v19) + v138;
      v206 = v140;
      v27 = v140 + 8 * v201 * v139 + 16 * v201;
      v202 = v139;
    }

    v141 = v201;
    v142 = v200(v202, v201, v206, v25, v27, a6, v209, v203, a14);
    v143 = a6;
    v144 = v201;
    *(*(a6 + 56) + 4 * v19) = v142;
    v145 = *(*(v137 + 112) + 4 * v19);
    if (v145 != -1)
    {
      atomic_fetch_add((*(a6 + 48) + 4 * v145), v141 - v142);
    }

    if (v142 >= 1)
    {
      v146 = 0;
      v147 = 0;
      v211[0] = 0;
      v148 = v206 + 8 * v25 * v141;
      do
      {
        v149 = v147 + 1;
        v150 = 2 * v147;
        if (v147 + 1 < v142)
        {
          v151 = *(v148 + 8 * v150 + 16);
        }

        v152 = *(v148 + 8 * v150);
        if (v152 == INFINITY)
        {
          ++v146;
        }

        else if (v152 <= 0.0)
        {
          ++LODWORD(v211[0]);
        }

        else
        {
          ++HIDWORD(v211[0]);
        }

        ++v147;
      }

      while (v149 < v142);
      atomic_fetch_add((a6 + 80), HIDWORD(v211[0]));
      atomic_fetch_add((a6 + 84), v146);
      atomic_fetch_add((a6 + 88), v211[0]);
    }

    v153 = v202;
  }

  else
  {
    v153 = v202;
    v142 = v200(v202, v201, v206, v25, v27, a6, v209, v203, a14);
    v143 = a6;
    v144 = v201;
    if (v142 != v201)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_161;
    }
  }

  _VF = __OFSUB__(v153, v144);
  v156 = v153 - v144;
  if ((v156 < 0) ^ _VF | (v156 == 0))
  {
LABEL_160:
    result = 0;
    goto LABEL_161;
  }

  if (v156 < a7)
  {
    if (a14)
    {
      v157 = *(a14 + 56);
    }

    else
    {
      v157 = 0;
    }

    sub_236763820(v210, 0, 0, v208, v207, v143, a7, a12, a10, a11, a9, v157, v209);
    goto LABEL_160;
  }

  if (!v203)
  {
    if (v156 >= 1)
    {
      for (i = 0; i < v156; i += a7)
      {
        v193 = i;
        do
        {
          if (a14)
          {
            v194 = *(a14 + 56);
          }

          else
          {
            v194 = 0;
          }

          sub_236763820(v210, v193, i, v208, v207, a6, a7, a12, a10, a11, a9, v194, v209);
          v193 += a7;
        }

        while (v193 < v156);
      }
    }

    goto LABEL_160;
  }

  v158 = ((v156 - 1) / a7 + 2 + ((v156 - 1) / a7 + 2) * ((v156 - 1) / a7)) / 2;
  if (v158 >= 0x40)
  {
    v159 = 64;
  }

  else
  {
    v159 = v158;
  }

  v160 = MEMORY[0x28223BE20](v142);
  v209 = &v198 - v161;
  MEMORY[0x28223BE20](v160);
  v208 = &v198 - v162;
  HIDWORD(v211[0]) = 0;
  if (v156 < 1)
  {
    v190 = 0;
  }

  else
  {
    v205 = &v198;
    _X26 = 0;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v207 = 8 * v210;
    while (2)
    {
      v167 = v166;
      LODWORD(v206) = v166;
      do
      {
        v168 = &v208[24 * v164];
        v169 = v209;
        *v168 = v210;
        *(v168 + 1) = v167;
        *(v168 + 2) = v166;
        *(v168 + 2) = v211 + 4;
        v170 = v169 + 40 * v164;
        *v170 = 0;
        *(v170 + 24) = 0;
        *(v170 + 32) = 0;
        *(v170 + 8) = v168;
        *(v170 + 16) = sub_236763C1C;
        v171 = v203[2];
        if (v171)
        {
          v172 = v203[1] + 32;
          v173 = v203[3];
          _X4 = 0;
          _X5 = 0;
          __asm { CASP            X4, X5, X4, X5, [X1] }

          while (1)
          {
            *(v171 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v171 + 32) = 0;
            _X2 = _X4 & 1 | v171;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 == _X4)
            {
              break;
            }

            _X5 = 0;
            __asm { CASP            X4, X5, X26, X27, [X1] }
          }

          if (_X4)
          {
            __ulock_wake();
            v166 = v206;
          }
        }

        v184 = (v165 / v159 + v207);
        v185 = v203;
        v203[2] = v170;
        v185[3] = v184;
        if (++v164 >= v159)
        {
          v186 = v164 + v165;
          v187 = atomic_load(v211 + 1);
          if (v187 < v186)
          {
            v188 = v185;
            while (1)
            {
              LOBYTE(v211[0]) = 0;
              sub_2366FCDE4(v188, v211);
              if (v211[0])
              {
                break;
              }

              v189 = atomic_load(v211 + 1);
              if (v189 >= v186)
              {
                goto LABEL_153;
              }
            }

            sub_2366FCEC8(v188);
            result = atomic_load((v188[1] + 16));
            goto LABEL_161;
          }

LABEL_153:
          v164 = 0;
          v165 += v159;
          v166 = v206;
        }

        v167 += a7;
      }

      while (v167 < v156);
      v166 += a7;
      if (v166 < v156)
      {
        continue;
      }

      break;
    }

    v190 = v164 + v165;
  }

  v195 = atomic_load(v211 + 1);
  v196 = v203;
  if (v195 >= v190)
  {
    goto LABEL_160;
  }

  while (1)
  {
    LOBYTE(v211[0]) = 0;
    sub_2366FCDE4(v196, v211);
    if (LOBYTE(v211[0]) == 1)
    {
      break;
    }

    v197 = atomic_load(v211 + 1);
    if (v197 >= v190)
    {
      goto LABEL_160;
    }
  }

  sub_2366FCEC8(v196);
  result = atomic_load((v196[1] + 16));
LABEL_161:
  v191 = *MEMORY[0x277D85DE8];
  return result;
}