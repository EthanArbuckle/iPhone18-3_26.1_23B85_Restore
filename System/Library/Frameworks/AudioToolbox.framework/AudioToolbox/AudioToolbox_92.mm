unint64_t bit_allocation_second_fx(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, _WORD *a9, unint64_t a10, unint64_t a11, unint64_t a12, __int16 a13, unint64_t a14, unint64_t a15, __int16 a16)
{
  v130 = *MEMORY[0x1E69E9840];
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v129[2] = v17;
  v129[3] = v17;
  v129[0] = v17;
  v129[1] = v17;
  v128[2] = v17;
  v128[3] = v17;
  v128[0] = v17;
  v128[1] = v17;
  v127 = 0;
  v117 = a4 - 1;
  if (a4 < 1)
  {
    v121 = 0;
    goto LABEL_102;
  }

  v18 = 0;
  v121 = 0;
  v19 = 0;
  v20 = a4;
  v21 = a4 - a13;
  v22 = (a4 - a13);
  v126 = (a4 - 2);
  v124 = 0x7FFF;
  do
  {
    v23 = v22;
    if (v21 >= 0x8000)
    {
      v127 = 1;
      v23 = 0x7FFF;
    }

    v24 = *(a7 + 2 * v18);
    v25 = v24 - v23;
    if (v25 >= 0x8000)
    {
      v127 = 1;
LABEL_9:
      v26 = v24;
      v27 = (a11 + 2 * v24);
      v28 = v27 + 1;
      if (v27 < a11 || v28 > a12 || v27 >= v28)
      {
        goto LABEL_215;
      }

      v31 = *v27;
      if (v31 == 1)
      {
        goto LABEL_31;
      }

      if (v31 == 0x8000)
      {
LABEL_18:
        v127 = 1;
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (v25 <= -32769)
    {
      goto LABEL_18;
    }

    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    LODWORD(v32) = v24 - v126;
    if (v24 - v126 < 0x8000)
    {
      if (v32 <= -32769)
      {
        goto LABEL_29;
      }

      if ((v32 & 0x80000000) != 0)
      {
        goto LABEL_59;
      }

      v32 = v32;
    }

    else
    {
      v127 = 1;
      v32 = 0x7FFFLL;
    }

    v33 = (a14 + 2 * v32);
    if (v33 < a14 || (v33 + 1) > a15 || v33 > v33 + 1)
    {
      goto LABEL_215;
    }

    v34 = *v33;
    if (v34 != 1)
    {
      if (v34 != 0x8000)
      {
        goto LABEL_59;
      }

LABEL_29:
      v127 = 1;
      goto LABEL_59;
    }

    v26 = v24;
LABEL_31:
    v35 = (a5 + 2 * v26);
    v36 = v35 + 1;
    if (v35 < a5 || v36 > a6 || v35 >= v36)
    {
      goto LABEL_215;
    }

    v39 = *v35;
    v40 = v39;
    v41 = v39;
    if (v39)
    {
      if (v39 == 0xFFFF)
      {
        v41 = 15;
      }

      else
      {
        v42 = v40 ^ (v40 >> 15);
        if (v42 >= 0x4000)
        {
          v41 = 0;
        }

        else
        {
          v41 = 0;
          do
          {
            v42 = (2 * v42);
            ++v41;
          }

          while (v42 < 0x4000);
        }
      }
    }

    v43 = shl(v40, v41, &v127);
    v44 = div_s(0x4000, v43);
    if (v41 > -32750)
    {
      v45 = 18 - v41;
    }

    else
    {
      v127 = 1;
      v45 = 0x7FFF;
    }

    v46 = v129 + v18;
    if (v46 < v129 || v46 + 1 > &v130 || v46 > v46 + 1)
    {
      goto LABEL_215;
    }

    v47 = Mpy_32_16_1(*(a3 + 4 * v18), v44);
    v48 = L_shr(v47, v45);
    *v46 = v48;
    v49 = v48 - v124;
    if (v49 >= 0x8000)
    {
      v19 = 1;
      v127 = 1;
      goto LABEL_59;
    }

    if (v49 > -32769)
    {
      if ((v49 & 0x80000000) == 0)
      {
        v19 = 1;
        goto LABEL_59;
      }
    }

    else
    {
      v127 = 1;
    }

    v19 = 1;
    v124 = v48;
    v121 = v18;
LABEL_59:
    ++v18;
  }

  while (v18 != v20);
  if (!v19)
  {
LABEL_65:
    v50 = 0;
    v51 = 0x7FFF;
    while (1)
    {
      v52 = v22;
      if (v21 >= 0x8000)
      {
        v127 = 1;
        v52 = 0x7FFF;
      }

      v53 = *(a7 + 2 * v50);
      v54 = v53 - v52;
      if (v54 < 0x8000)
      {
        if (v54 > -32769)
        {
          if ((v54 & 0x80000000) == 0)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v127 = 1;
        }

        v55 = *(a3 + 4 * v50);
        if (v55 >= 1)
        {
          v56 = (a5 + 2 * v53);
          v57 = v56 + 1;
          if (v56 < a5 || v57 > a6 || v56 >= v57)
          {
            goto LABEL_215;
          }

          v60 = *v56;
          v61 = v60;
          v62 = v60;
          if (v60)
          {
            if (v60 == 0xFFFF)
            {
              v62 = 15;
            }

            else
            {
              v63 = v61 ^ (v61 >> 15);
              if (v63 >= 0x4000)
              {
                v62 = 0;
              }

              else
              {
                v62 = 0;
                do
                {
                  v63 = (2 * v63);
                  ++v62;
                }

                while (v63 < 0x4000);
              }
            }
          }

          v64 = shl(v61, v62, &v127);
          v65 = div_s(0x4000, v64);
          if (v62 > -32750)
          {
            v66 = 18 - v62;
          }

          else
          {
            v127 = 1;
            v66 = 0x7FFF;
          }

          v67 = v128 + v50;
          if (v67 < v128 || v67 + 1 > v129 || v67 > v67 + 1)
          {
            goto LABEL_215;
          }

          v68 = Mpy_32_16_1(v55, v65);
          v69 = L_shr(v68, v66);
          *v67 = v69;
          v70 = v69 - v51;
          if (v70 < 0x8000)
          {
            if (v70 <= -32769)
            {
              v127 = 1;
LABEL_100:
              v51 = v69;
              v121 = v50;
              goto LABEL_101;
            }

            if (v70 < 0)
            {
              goto LABEL_100;
            }
          }

          else
          {
            v127 = 1;
          }
        }
      }

      else
      {
        v127 = 1;
      }

LABEL_101:
      if (++v50 == v20)
      {
        goto LABEL_102;
      }
    }
  }

  if (a16 > -32609)
  {
    if (a16 != 160)
    {
      goto LABEL_102;
    }

    goto LABEL_65;
  }

  v127 = 1;
LABEL_102:
  v71 = a9 + 1;
  if ((a9 + 1) > a10 || v71 < a9 || (*a9 = v121, v72 = (a7 + 2 * v121), v72 < a7) || (v73 = a7 + 2 * a4, (v72 + 1) > v73) || v72 > v72 + 1)
  {
LABEL_215:
    __break(0x5519u);
  }

  v74 = *v72;
  result = a4;
  if (a4 == -32768)
  {
    v127 = 1;
    v76 = -32768;
  }

  else
  {
    v76 = v117;
  }

  if (v74 - v76 >= 0x8000 || v74 - v76 <= -32769)
  {
    v127 = 1;
    goto LABEL_113;
  }

  if (v74 != v76)
  {
LABEL_113:
    if (v74 == -32768)
    {
      v85 = a4;
      v127 = 1;
      v86 = -32768;
    }

    else
    {
      if (!v74)
      {
        if (a4 >= 1)
        {
          v77 = 0;
          v78 = 0;
          v80 = (a9 + 2) <= a10 && v71 <= a9 + 2;
          while (1)
          {
            v81 = a7 + v77 + 2;
            if (v81 > v73 || a7 + v77 > v81)
            {
              goto LABEL_215;
            }

            v83 = *v72;
            if (v83 == 0x7FFF)
            {
              v84 = 0x7FFF;
            }

            else
            {
              v84 = v83 + 1;
            }

            result = (*(a7 + 2 * v78) - v84);
            if (result < 0x8000 && result >= -32768 && *(a7 + 2 * v78) == v84)
            {
              if (!v80)
              {
                goto LABEL_215;
              }

              *v71 = v78;
            }

            ++v78;
            v77 += 2;
            if (a4 == v78)
            {
              return result;
            }
          }
        }

        return result;
      }

      v85 = a4;
      v86 = (v74 - 1);
    }

    v87 = (a1 + 4 * v86);
    if (v87 < a1 || (v87 + 1) > a2 || v87 > v87 + 1)
    {
      goto LABEL_215;
    }

    if (v74 == 0x7FFF)
    {
      v127 = 1;
      v88 = 0x7FFFLL;
    }

    else
    {
      v88 = (v74 + 1);
    }

    v89 = (a1 + 4 * v88);
    if (v89 < a1)
    {
      goto LABEL_215;
    }

    result = a2;
    if ((v89 + 1) > a2 || v89 > v89 + 1)
    {
      goto LABEL_215;
    }

    v90 = *v87;
    v91 = *v89;
    v92 = v90 - *v89;
    if ((v91 ^ v90) < 0 && (v92 ^ v90) < 0)
    {
      v127 = 1;
      if (v90 < 0)
      {
        goto LABEL_150;
      }
    }

    else if (v92 < 0)
    {
LABEL_150:
      if (v85 >= 1)
      {
        v93 = 0;
        v94 = 0;
        v96 = (a9 + 2) <= a10 && v71 <= a9 + 2;
        while (1)
        {
          v97 = a7 + v93 + 2;
          if (v97 > v73 || a7 + v93 > v97)
          {
            goto LABEL_215;
          }

          v99 = *v72;
          if (v99 == 0x8000)
          {
            v100 = 0x8000;
          }

          else
          {
            v100 = v99 - 1;
          }

          result = (*(a7 + 2 * v94) - v100);
          if (result < 0x8000 && result >= -32768 && *(a7 + 2 * v94) == v100)
          {
            if (!v96)
            {
              goto LABEL_215;
            }

            *v71 = v94;
          }

          ++v94;
          v93 += 2;
          if (a4 == v94)
          {
            return result;
          }
        }
      }

      return result;
    }

    if (v85 >= 1)
    {
      v101 = 0;
      v102 = 0;
      v104 = (a9 + 2) <= a10 && v71 <= a9 + 2;
      while (1)
      {
        v105 = a7 + v101 + 2;
        if (v105 > v73 || a7 + v101 > v105)
        {
          goto LABEL_215;
        }

        v107 = *v72;
        if (v107 == 0x7FFF)
        {
          v108 = 0x7FFF;
        }

        else
        {
          v108 = v107 + 1;
        }

        result = (*(a7 + 2 * v102) - v108);
        if (result < 0x8000 && result >= -32768 && *(a7 + 2 * v102) == v108)
        {
          if (!v104)
          {
            goto LABEL_215;
          }

          *v71 = v102;
        }

        ++v102;
        v101 += 2;
        if (a4 == v102)
        {
          return result;
        }
      }
    }

    return result;
  }

  if (a4 >= 1)
  {
    v109 = 0;
    v110 = 0;
    v112 = (a9 + 2) <= a10 && v71 <= a9 + 2;
    while (1)
    {
      v113 = a7 + v109 + 2;
      if (v113 > v73 || a7 + v109 > v113)
      {
        goto LABEL_215;
      }

      v115 = *v72;
      if (v115 == 0x8000)
      {
        v116 = 0x8000;
      }

      else
      {
        v116 = v115 - 1;
      }

      result = (*(a7 + 2 * v110) - v116);
      if (result < 0x8000 && result >= -32768 && *(a7 + 2 * v110) == v116)
      {
        if (!v112)
        {
          goto LABEL_215;
        }

        *v71 = v110;
      }

      ++v110;
      v109 += 2;
      if (a4 == v110)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t GetISCScale(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, int a11, int *a12, __int16 *a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19)
{
  v19 = MEMORY[0x1EEE9AC00](a1);
  v21 = v20;
  v23 = v22;
  v274 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v278 = v19;
  v300 = *MEMORY[0x1E69E9840];
  *&v31 = -1;
  *(&v31 + 1) = -1;
  __C[28] = v31;
  __C[29] = v31;
  __C[26] = v31;
  __C[27] = v31;
  __C[24] = v31;
  __C[25] = v31;
  __C[22] = v31;
  __C[23] = v31;
  __C[20] = v31;
  __C[21] = v31;
  __C[18] = v31;
  __C[19] = v31;
  __C[16] = v31;
  __C[17] = v31;
  __C[14] = v31;
  __C[15] = v31;
  __C[12] = v31;
  __C[13] = v31;
  __C[10] = v31;
  __C[11] = v31;
  __C[8] = v31;
  __C[9] = v31;
  __C[6] = v31;
  __C[7] = v31;
  __C[4] = v31;
  __C[5] = v31;
  __C[2] = v31;
  __C[3] = v31;
  __C[0] = v31;
  __C[1] = v31;
  v293[28] = v31;
  v293[29] = v31;
  v293[26] = v31;
  v293[27] = v31;
  v293[24] = v31;
  v293[25] = v31;
  v293[22] = v31;
  v293[23] = v31;
  v293[20] = v31;
  v293[21] = v31;
  v293[18] = v31;
  v293[19] = v31;
  v293[16] = v31;
  v293[17] = v31;
  v293[14] = v31;
  v293[15] = v31;
  v293[12] = v31;
  v293[13] = v31;
  v293[10] = v31;
  v293[11] = v31;
  v293[8] = v31;
  v293[9] = v31;
  v293[6] = v31;
  v293[7] = v31;
  v293[4] = v31;
  v293[5] = v31;
  v293[2] = v31;
  v293[3] = v31;
  v293[0] = v31;
  v293[1] = v31;
  v299[0] = 0.0;
  vDSP_vfill(v299, __C, 1, 0x78uLL);
  v299[0] = 0.0;
  vDSP_vfill(v299, v293, 1, 0x78uLL);
  v279 = v30;
  if (v28 < 0)
  {
    result = 0;
    if (v23)
    {
      v33 = ((*v23 + v28) ^ *v23) > -1 || (*v23 ^ v28) < 0;
      v34 = (*v23 >> 31) ^ 0x7FFFFFFF;
      if (v33)
      {
        v34 = *v23 + v28;
      }

      *v23 = v34;
    }
  }

  else
  {
    result = GetScale_fx(v30, v28, v23);
  }

  *a12 = 0;
  if (v21)
  {
    *v21 = result;
  }

  if (result < 1)
  {
    return result;
  }

  v35 = v30;
  v280 = v30;
  v277 = result;
  if (v30 <= 0)
  {
    v44 = result;
    v46 = 0.0;
  }

  else
  {
    v36 = 0.0;
    v37 = v293;
    v38 = v278;
    do
    {
      v39 = v37 + 1;
      if (v37 < v293 || v39 > __C || v37 > v39)
      {
        goto LABEL_373;
      }

      v42 = *v38++;
      v43 = fabsf(v42);
      *v37++ = v43;
      v36 = v36 + v43;
      --v35;
    }

    while (v35);
    v44 = result;
    v45 = (result + 1.0e-15) / (v36 + 1.0e-15);
    v46 = 0.0;
    v47 = v293;
    v48 = v26;
    v49 = v30;
    do
    {
      v50 = v47 + 1;
      if (v47 < v293 || v50 > __C || v47 > v50)
      {
        goto LABEL_373;
      }

      v53 = *v47++;
      v54 = ((v53 * v45) + 0.5);
      v46 = v46 + v54;
      *v48++ = v54;
      --v49;
    }

    while (v49);
  }

  if (v46 != v44)
  {
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    do
    {
      if (v30 < 1)
      {
        v79 = 0;
        if (v46 < v44)
        {
          v63 = 1;
        }

        else
        {
          v63 = -1;
        }
      }

      else
      {
        v58 = 0;
        v59 = 0.0;
        v60 = v293;
        v61 = v26;
        v62 = v30;
        do
        {
          if (*v61 > 0.0)
          {
            if (v60 < v293 || v60 + 1 > __C || v60 > v60 + 1)
            {
              goto LABEL_373;
            }

            v58 += *v61;
            v59 = v59 + *v60;
          }

          ++v60;
          ++v61;
          --v62;
        }

        while (v62);
        if (v46 < v44)
        {
          v63 = 1;
        }

        else
        {
          v63 = -1;
        }

        v64 = v293;
        v65 = v26;
        v66 = v30;
        do
        {
          v67 = v64 + 1;
          if (v64 < v293 || v67 > __C || v64 > v67)
          {
            goto LABEL_373;
          }

          v70 = *v64++;
          v71 = v70;
          v72 = *v65++;
          v57 = v57 + (v71 * v72);
          v55 = v55 + (v71 * v71);
          v56 = v56 + (v72 * v72);
          --v66;
        }

        while (v66);
        v73 = (v58 + v63) + 1.0e-15;
        v74 = __C;
        v75 = v293;
        result = v26;
        v76 = v30;
        do
        {
          v77 = v59;
          if (*result <= 0.0)
          {
            if (v75 < v293 || v75 + 1 > __C || v75 > v75 + 1)
            {
              goto LABEL_373;
            }

            v77 = v59 + *v75;
          }

          if (v75 < v293 || v75 + 1 > __C || v75 > v75 + 1 || v74 < __C || v74 + 1 > &v295 || v74 > v74 + 1)
          {
            goto LABEL_373;
          }

          v78 = *v75++;
          *v74++ = (v55 + (((v57 + (v63 * v78)) * -2.0) * (v77 / v73))) + (((v77 / v73) * (v77 / v73)) * ((v56 + ((*result + *result) * v63)) + 1.0));
          result += 4;
          --v76;
        }

        while (v76);
        if (v30 < 2)
        {
          v79 = 0;
        }

        else
        {
          LODWORD(v79) = 0;
          v80 = 1;
          v81 = *__C;
          result = __C + 4;
          v82 = v30 - 1;
          do
          {
            v83 = result + 4;
            if (result < __C || v83 > &v295 || result > v83)
            {
              goto LABEL_373;
            }

            v86 = *result;
            result += 4;
            v87 = v86;
            if (v81 > v86)
            {
              v81 = v87;
              LODWORD(v79) = v80;
            }

            ++v80;
            --v82;
          }

          while (v82);
          v79 = v79;
        }
      }

      v88 = &v26[v79];
      if (v88 < v26 || v88 + 1 > &v26[v30] || v88 > v88 + 1)
      {
        goto LABEL_373;
      }

      *v88 = *v88 + v63;
      v46 = v46 + v63;
    }

    while (v46 != v44);
  }

  if (v30 < 1)
  {
    v89 = 0;
    v90 = 0.0;
  }

  else
  {
    v89 = 0;
    v90 = 0.0;
    v91 = v26;
    v92 = v278;
    v93 = v293;
    v94 = v30;
    do
    {
      if (*v91 > 0.0)
      {
        if (*v92 < 0.0)
        {
          *v91 = -*v91;
        }

        if (v93 < v293 || v93 + 1 > __C || v93 > v93 + 1)
        {
          goto LABEL_373;
        }

        v90 = v90 + *v93;
        ++v89;
      }

      ++v93;
      ++v92;
      ++v91;
      --v94;
    }

    while (v94);
  }

  if (v90 <= 0.0)
  {
    v95 = 3.4028e38;
  }

  else
  {
    v95 = v44 / v90;
  }

  *v274 = v95;
  *a12 = v89;
  if (a11 || v89 == v277)
  {
    v96 = v95;
    goto LABEL_348;
  }

  v96 = v95;
  if (v89 < 2)
  {
    goto LABEL_348;
  }

  if (a10 < a9 || v30 < 0 || (a10 - a9) >> 2 < v30)
  {
    goto LABEL_373;
  }

  memset(v299, 255, sizeof(v299));
  memset(v298, 170, sizeof(v298));
  memset(__b, 170, sizeof(__b));
  memset(v296, 170, sizeof(v296));
  __A = 0.0;
  vDSP_vfill(&__A, v299, 1, 0x3C0uLL);
  for (i = 0; i != 1920; i += 2)
  {
    v98 = &v298[i + 2];
    if (&v298[i] < v298 || v98 > v299 || &v298[i] > v98)
    {
      goto LABEL_373;
    }

    *&v298[i] = 0;
  }

  for (j = 0; j != 1920; j += 2)
  {
    v102 = &__b[j + 2];
    if (&__b[j] < __b || v102 > v298 || &__b[j] > v102)
    {
      goto LABEL_373;
    }

    *&__b[j] = 0;
  }

  for (k = 0; k != 1920; k += 2)
  {
    v106 = &v296[k + 2];
    if (&v296[k] < v296 || v106 > __b || &v296[k] > v106)
    {
      goto LABEL_373;
    }

    *&v296[k] = 0;
  }

  v275 = v26;
  v109 = 0;
  v110 = v299;
  v111 = vdupq_n_s64(7uLL);
  do
  {
    v112 = vdupq_n_s64(v109);
    v113 = vorrq_s8(v112, xmmword_19B0A5850);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v111, v113)), 2).u8[0])
    {
      v110[120] = 1000.0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v113)), 2).i8[2])
    {
      v110[240] = 1000.0;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), vorrq_s8(v112, xmmword_19B0A5840)))).i32[1])
    {
      v110[360] = 1000.0;
      v110[480] = 1000.0;
    }

    v109 += 4;
    v110 += 480;
  }

  while (v109 != 8);
  v273 = &v26[v30];
  v299[241] = 1000.0;
  v299[361] = 1000.0;
  *&v299[481] = 0x447A0000447A0000;
  *&v299[601] = 0x447A0000447A0000;
  *&v299[721] = 0x447A0000447A0000;
  *&v299[841] = 0x447A0000447A0000;
  v276 = &v278[v30];
  if (v30 >= 1)
  {
    v114 = 0;
    v115 = 0;
    v116 = v95;
    do
    {
      v117 = 0;
      v118 = 0;
      v290 = v115;
      v282 = &v296[2 * v115];
      v283 = &__b[2 * v115];
      v284 = v115;
      v285 = &v298[2 * v115];
      v119 = &v278[v284];
      v122 = &v278[v284 + 1] <= v276 && v119 <= v119 + 4 && v119 >= v278;
      v286 = v122;
      v281 = v114 + 1;
      v123 = v299;
      v288 = &v278[v284];
      v289 = &unk_19B376FE2;
      v124 = &word_19B376F62;
      do
      {
        v287 = v118;
        v125 = *(v124 - 1);
        v126 = &v299[120 * *(v124 - 1)];
        v127 = &v126[v290];
        v128 = (v127 + 1);
        if (v127 < v126 || v128 > (v126 + 120) || v127 > v128)
        {
          goto LABEL_373;
        }

        v131 = *v124;
        v132 = &v299[120 * *v124];
        v133 = &v132[v290];
        v134 = (v133 + 1);
        v135 = v133 < v132 || v134 > (v132 + 120);
        v136 = v135 || v133 > v134;
        if (v136 || !v286)
        {
          goto LABEL_373;
        }

        v137 = *v127;
        v138 = *v133;
        v139 = *(v289 - 1);
        quantize(v139);
        v141 = &v296[240 * v125];
        v142 = &v141[v290];
        v143 = (v142 + 1);
        v144 = v142 < v141 || v143 > (v141 + 120);
        if (v144 || v142 > v143)
        {
          goto LABEL_373;
        }

        v146 = v140;
        v147 = *v288;
        v148 = *v142;
        v149 = *v289;
        quantize(v149);
        v151 = &v296[240 * v131];
        v152 = &v151[v290];
        if (v152 < v151 || v152 + 1 > v151 + 120 || v152 > v152 + 1)
        {
          goto LABEL_373;
        }

        v153 = v146 - fabsf(v147) * v116;
        v154 = v153 * v153;
        if ((v146 + v148) <= v44)
        {
          v155 = v154;
        }

        else
        {
          v155 = 10000.0;
        }

        v156 = v150 - fabsf(*v288) * v116;
        v157 = v156 * v156;
        if ((v150 + *v152) > v44)
        {
          v157 = 10000.0;
        }

        v158 = v137 + v155;
        v159 = v138 + v157;
        v160 = &v285[v117 + 2];
        v161 = &v285[v117 + 4];
        v164 = v161 <= &v298[v117 + 240] && v160 <= v161 && v160 >= &v298[v117];
        if (v158 >= v159)
        {
          if (!v164)
          {
            goto LABEL_373;
          }

          *v160 = v131;
          v175 = &v123[v284 + 1];
          if (v175 < v123)
          {
            goto LABEL_373;
          }

          v176 = &v123[v284 + 2];
          if (v176 > (v123 + 120))
          {
            goto LABEL_373;
          }

          if (v175 > v176)
          {
            goto LABEL_373;
          }

          *v175 = v159;
          quantize(v149);
          v178 = &v283[v117];
          v179 = &v283[v117 + 2];
          if (v179 < &__b[v117])
          {
            goto LABEL_373;
          }

          if (v178 + 4 > &__b[v117 + 240])
          {
            goto LABEL_373;
          }

          if (v179 > v178 + 2)
          {
            goto LABEL_373;
          }

          v170 = v177;
          *v179 = v177;
          v180 = &v282[v117];
          v174 = &v282[v117 + 2];
          if (v174 < &v296[v117] || v180 + 4 > &v296[v117 + 240] || v174 > v180 + 2)
          {
            goto LABEL_373;
          }

          v142 = v152;
          v173 = v287;
        }

        else
        {
          if (!v164)
          {
            goto LABEL_373;
          }

          *v160 = v125;
          v165 = &v123[v284 + 1];
          if (v165 < v123)
          {
            goto LABEL_373;
          }

          v166 = &v123[v284 + 2];
          if (v166 > (v123 + 120))
          {
            goto LABEL_373;
          }

          if (v165 > v166)
          {
            goto LABEL_373;
          }

          *v165 = v158;
          quantize(v139);
          v168 = &v283[v117];
          v169 = &v283[v117 + 2];
          if (v169 < &__b[v117])
          {
            goto LABEL_373;
          }

          if (v168 + 4 > &__b[v117 + 240])
          {
            goto LABEL_373;
          }

          if (v169 > v168 + 2)
          {
            goto LABEL_373;
          }

          v170 = v167;
          *v169 = v167;
          v171 = &v282[v117];
          v172 = &v282[v117 + 2];
          if (v172 < &v296[v117] || v171 + 4 > &v296[v117 + 240] || v172 > v171 + 4)
          {
            goto LABEL_373;
          }

          v173 = v287;
          v174 = &v296[240 * v287 + 2 * v281];
        }

        if ((v170 & 0x8000u) != 0)
        {
          v170 = -v170;
        }

        *v174 = *v142 + v170;
        v118 = v173 + 1;
        v117 += 240;
        v123 += 120;
        v124 += 8;
        v289 += 8;
      }

      while (v117 != 1920);
      v115 = v290 + 1;
      v114 = (v290 + 1);
    }

    while (v114 < v279);
  }

  v181 = &v299[v279];
  if (v181 < v299 || v181 + 1 > &v299[120] || v181 > v181 + 1)
  {
    goto LABEL_373;
  }

  v182 = 0;
  v183 = 0;
  v184 = 0;
  v185 = v299[v279];
  v186 = 2 * v279;
  v187 = v279;
  v188 = 1;
  v189 = v186;
  do
  {
    v190 = &v299[v187 + 120];
    v191 = &v299[v187 + 121];
    if (v190 < &v299[v182 + 120] || v191 > &v299[v182 + 240] || v190 > v191)
    {
      goto LABEL_373;
    }

    v194 = *v190;
    if (v185 > *v190)
    {
      v195 = &v296[v189];
      v196 = &v296[v189 + 240];
      if (v196 < &v296[v183 + 240] || v195 + 121 > &v296[v183 + 480] || v196 > v195 + 121)
      {
        goto LABEL_373;
      }

      result = *v196;
      if (v277 == result)
      {
        goto LABEL_252;
      }
    }

    v197 = &v296[240 * v184];
    v198 = &v197[v279];
    v199 = (v198 + 1);
    if (v198 < v197 || v199 > (v197 + 120) || v198 > v199)
    {
      goto LABEL_373;
    }

    result = *v198;
    if (v277 != result)
    {
      v202 = &v296[v189];
      v203 = &v296[v189 + 240];
      if (v203 < &v296[v183 + 240] || v202 + 121 > &v296[v183 + 480] || v203 > v202 + 121)
      {
        goto LABEL_373;
      }

      result = *v203;
      if (v277 == result)
      {
LABEL_252:
        v185 = v194;
        v184 = v188;
      }
    }

    ++v188;
    v183 += 240;
    v189 += 240;
    v182 += 120;
    v187 += 120;
  }

  while (v183 != 1680);
  if (v279 < 1)
  {
    v233 = 0;
    v232 = 0;
  }

  else
  {
    v204 = 0;
    v205 = 0;
    v206 = v279 - 1;
    v207 = v279 + 1;
    v208 = __b;
    v209 = v298;
    v210 = v184;
    result = a9 + 4 * v279;
    do
    {
      v211 = &v278[v206];
      v212 = v211 + 1;
      if (v211 < v278 || v212 > v276 || v211 > v212)
      {
        goto LABEL_373;
      }

      v215 = 240 * v210;
      v216 = &__b[v215];
      v217 = v186 + v215;
      v218 = &v208[v217];
      if (&v208[v217] < v216)
      {
        goto LABEL_373;
      }

      v219 = v218 + 2 > (v216 + 240) || v218 > v218 + 2;
      v220 = &v275[v206];
      v221 = v220 + 1;
      v222 = !v219 && v220 >= v275;
      v223 = !v222 || v221 > &v275[v279];
      if (v223 || v220 > v221)
      {
        goto LABEL_373;
      }

      v225 = *&v208[v217];
      v226 = *v211 <= 0.0 ? -v225 : v225;
      *v220 = v226;
      v227 = 240 * v210;
      v228 = &v298[v227];
      v229 = v186 + v227;
      v230 = &v209[v229];
      if (&v209[v229] < v228)
      {
        goto LABEL_373;
      }

      if (v230 + 2 > (v228 + 240))
      {
        goto LABEL_373;
      }

      if (v230 > v230 + 2)
      {
        goto LABEL_373;
      }

      v231 = (a9 + 4 * v206);
      if (v231 < a9 || (v231 + 1) > result || v231 > v231 + 1)
      {
        goto LABEL_373;
      }

      v210 = *&v209[v229];
      *v231 = v210;
      v204 += fabsf(v225);
      if (v225)
      {
        ++v205;
      }

      --v206;
      --v207;
      v209 -= 2;
      v208 -= 2;
    }

    while (v207 > 1);
    v232 = v204;
    v233 = v205;
  }

  v26 = v275;
  v234 = v95 * 1.1;
  v235 = v277 - v232;
  if (v277 <= v232)
  {
    v234 = v95;
  }

  if (v277 >= v232)
  {
    v96 = v234;
  }

  else
  {
    v96 = v234 * 0.9;
  }

  v291 = v233;
  if (v277 >= v232)
  {
    v236 = &v275[v279 - 1];
    v237 = v279;
    while (1)
    {
      v238 = __OFSUB__(v237--, 1);
      if (v237 < 0 != v238)
      {
        goto LABEL_320;
      }

      v239 = v236;
      if (v236 < v275)
      {
        goto LABEL_373;
      }

      v240 = v236 + 4;
      if ((v239 + 1) > v273 || v239 > v240)
      {
        goto LABEL_373;
      }

      v236 = (v239 - 1);
      v241 = *v239;
      if (*v239 != 0.0)
      {
        v242 = v235 + fabsf(v241);
        goto LABEL_305;
      }
    }
  }

  if (v279 < 1)
  {
    goto LABEL_320;
  }

  v245 = v232 - v277;
  if (v232 - v277 < 1)
  {
    goto LABEL_320;
  }

  v246 = v279;
  v239 = &v275[v279 - 1];
  while (1)
  {
    if (v239 < v275 || (v239 + 1) > v273 || v239 > v239 + 1)
    {
      goto LABEL_373;
    }

    v241 = *v239;
    v247 = v291;
    if (*v239 == 0.0)
    {
      goto LABEL_318;
    }

    v248 = fabsf(v241);
    if (v245 < v248)
    {
      break;
    }

    *v239 = 0.0;
    v247 = v291 - 1;
    v245 -= v248;
LABEL_318:
    v291 = v247;
    if (v246 >= 2)
    {
      --v239;
      --v246;
      if (v245 > 0)
      {
        continue;
      }
    }

    goto LABEL_320;
  }

  v242 = v248 - v245;
LABEL_305:
  if (v241 <= 0.0)
  {
    v243 = -v242;
  }

  else
  {
    v243 = v242;
  }

  v244 = v243;
  *v239 = v244;
LABEL_320:
  v249 = v277;
  if (v279 >= 1 && v291 >= 2)
  {
    v250 = 0;
    v251 = v291;
    do
    {
      v252 = v275[v250];
      if (v252 != 0.0)
      {
        if (v249 > 0)
        {
          v253 = (a9 + 4 * v250);
          if (v253 >= a9)
          {
            v254 = v249;
            if ((v253 + 1) <= a10 && v253 <= v253 + 1)
            {
              v255 = 1;
              while (1)
              {
                v256 = &ddec[4 * *v253];
                v257 = v256 + 4;
                v258 = (v256 + 2);
                if ((v256 + 2) > v256 + 4 || v256 > v258)
                {
                  break;
                }

                v261 = *v256;
                v260 = v256 + 1;
                quantize(v261);
                if (v260 > v257 || v258 > v260)
                {
                  break;
                }

                result = quantize(*v258);
                v263 = fabsf(v275[v250]);
                v249 = v254;
                v264 = v263 + -1.0 <= (v255 - 1) || v254 == v255;
                ++v255;
                if (v264)
                {
                  goto LABEL_344;
                }
              }
            }
          }

LABEL_373:
          __break(0x5519u);
        }

        v263 = fabsf(v252);
LABEL_344:
        --v251;
        v249 -= v263;
      }

      ++v250;
    }

    while (v250 < v279 && v251 > 1);
  }

  v89 = v291;
  *a12 = v291;
LABEL_348:
  if (a13 && v89 >= 2 && v279 >= 1)
  {
    v265 = 0;
    v266 = v26;
    v267 = v279;
    do
    {
      v268 = *v266++;
      if (fabsf(v268) > 1.0)
      {
        v265 = 1;
      }

      --v267;
    }

    while (v267);
    if (v265)
    {
      v269 = *a13;
      while (v269 <= 19)
      {
        if (*v26 != 0.0)
        {
          v270 = (a14 + 4 * v269);
          if (v270 < a14)
          {
            goto LABEL_373;
          }

          if ((v270 + 1) > a15)
          {
            goto LABEL_373;
          }

          if (v270 > v270 + 1)
          {
            goto LABEL_373;
          }

          *v270 = *v278;
          v271 = (a16 + 4 * v269);
          if (v271 < a16)
          {
            goto LABEL_373;
          }

          result = (v271 + 1);
          if ((v271 + 1) > a17)
          {
            goto LABEL_373;
          }

          if (v271 > result)
          {
            goto LABEL_373;
          }

          *v271 = *v26;
          v272 = (a18 + 4 * v269);
          if (v272 < a18 || (v272 + 1) > a19 || v272 > v272 + 1)
          {
            goto LABEL_373;
          }

          *v272 = v96;
          *a13 = ++v269;
        }

        ++v278;
        ++v26;
        if (!--v280)
        {
          break;
        }
      }
    }
  }

  *v274 = v95;
  return result;
}

unint64_t encode_position_ari_fx(unint64_t a1, float *a2, unint64_t a3, int a4, int *a5)
{
  v135[1] = *MEMORY[0x1E69E9840];
  memset(v133, 0, sizeof(v133));
  v6 = a4;
  memset(v134, 0, sizeof(v134));
  v130 = a2;
  if (a4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = a2;
    v10 = a4;
    while (v9 >= a2 && (v9 + 1) <= a3 && v9 <= v9 + 1)
    {
      v11 = *v9++;
      v12 = v11;
      v13 = v11;
      if (v11 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -v13;
      }

      if (v13 == -32768)
      {
        v15 = 0x7FFF;
      }

      else
      {
        v15 = v14;
      }

      v16 = v15 + v8;
      if (v16 >= 0x7FFF)
      {
        v8 = 0x7FFF;
      }

      else
      {
        v8 = v16;
      }

      if (v12 != 0.0)
      {
        ++v7;
      }

      --v10;
      a2 = v130;
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_196;
  }

  v8 = 0;
  v7 = 0;
LABEL_20:
  v128 = v8;
  BitsFromPulses_fx = GetBitsFromPulses_fx(v8, a4);
  v126 = v6;
  v18 = &table_logcum_fx[v6];
  v19 = v18 + 1;
  if (v18 + 1 < table_logcum_fx)
  {
    goto LABEL_196;
  }

  v20 = v18 + 2;
  if (v20 > ddec)
  {
    goto LABEL_196;
  }

  if (v19 > v20)
  {
    goto LABEL_196;
  }

  v21 = &table_logcum_fx[v7];
  v22 = v21 + 1;
  if (v21 + 1 < table_logcum_fx)
  {
    goto LABEL_196;
  }

  if (v21 + 2 > ddec)
  {
    goto LABEL_196;
  }

  if (v22 > v21 + 2)
  {
    goto LABEL_196;
  }

  v23 = &table_logcum_fx[a4 - v7];
  v24 = v23 + 1;
  if (v23 + 1 < table_logcum_fx)
  {
    goto LABEL_196;
  }

  v25 = v23 + 2;
  if (v25 > ddec || v24 > v25)
  {
    goto LABEL_196;
  }

  v26 = BitsFromPulses_fx;
  v27 = *v19;
  v28 = *v24;
  v29 = v28 + *v22;
  v30 = v28 ^ *v22;
  v31 = (v29 ^ *v22) > -1 || v30 < 0;
  v32 = (*v22 >> 31) ^ 0x7FFFFFFF;
  if (v31)
  {
    v32 = v29;
  }

  if (((v32 ^ v27) & ((v27 - v32) ^ v27)) < 0)
  {
    v33 = (v27 >> 31) ^ 0x7FFFFFFF;
  }

  else
  {
    v33 = v27 - v32;
  }

  v34 = BitsFromPulses_fx - v33;
  if (((v33 ^ BitsFromPulses_fx) & ((BitsFromPulses_fx - v33) ^ BitsFromPulses_fx)) < 0)
  {
    v34 = (BitsFromPulses_fx >> 31) ^ 0x7FFFFFFF;
  }

  v35 = v34 + v33;
  v36 = v34 ^ v33;
  v37 = (v35 ^ v33) > -1 || v36 < 0;
  v38 = (v33 >> 31) ^ 0x7FFFFFFF;
  if (v37)
  {
    v38 = v35;
  }

  v39 = &table_logcum_fx[v8];
  if (v39 < table_logcum_fx || v39 + 1 > ddec || v39 > v39 + 1 || v21 < table_logcum_fx || v21 > v22 || (v40 = &table_logcum_fx[v8 - (v7 - 1)], v40 < table_logcum_fx) || v40 + 1 > ddec || v40 > v40 + 1)
  {
LABEL_196:
    __break(0x5519u);
  }

  v41 = *v39;
  v42 = *v21;
  v43 = *v40;
  v44 = v43 + v42;
  v45 = v43 ^ v42;
  v46 = (v44 ^ v42) > -1 || v45 < 0;
  v47 = (v42 >> 31) ^ 0x7FFFFFFF;
  if (v46)
  {
    v47 = v44;
  }

  if (((v47 ^ v41) & ((v41 - v47) ^ v41)) < 0)
  {
    v48 = (v41 >> 31) ^ 0x7FFFFFFF;
  }

  else
  {
    v48 = v41 - v47;
  }

  v49 = v38 - v48;
  v50 = v48 ^ v38;
  v51 = v49 ^ v38;
  v52 = (v38 >> 31) ^ 0x7FFFFFFF;
  if ((v50 & v51) < 0)
  {
    v53 = v52;
  }

  else
  {
    v53 = v49;
  }

  v54 = v53 - v7;
  v55 = v53 ^ v7;
  v56 = v54 ^ v53;
  v57 = (v53 >> 31) ^ 0x7FFFFFFF;
  if ((v55 & v56) >= 0)
  {
    v57 = v54;
  }

  v58 = v57 + *a5;
  v59 = v57 ^ *a5;
  v60 = (v58 ^ *a5) > -1 || v59 < 0;
  v61 = (*a5 >> 31) ^ 0x7FFFFFFF;
  if (v60)
  {
    v61 = v58;
  }

  *a5 = v61;
  if (v8 >= a4)
  {
    v62 = a4;
  }

  else
  {
    v62 = v8;
  }

  if (v62 >= 1)
  {
    v63 = 0;
    v64 = 0;
    while (1)
    {
      v65 = v64 + 1;
      v66 = (v64 + 1) << 16;
      if (v64 == 0x7FFF)
      {
        v66 = 2147418112;
      }

      v67 = v66 - v26;
      v68 = v26 ^ v66;
      v69 = (v66 - v26) ^ v66;
      v70 = (v66 >> 31) ^ 0x7FFFFFFF;
      if ((v68 & v69) < 0 == __OFSUB__(0x7FFF, v64))
      {
        v70 = v67;
      }

      v71 = &table_logcum_fx[v64];
      v72 = (v71 + 2);
      if (v71 + 2 < table_logcum_fx)
      {
        goto LABEL_196;
      }

      if (v71 + 3 > ddec)
      {
        goto LABEL_196;
      }

      if (v72 > (v71 + 3))
      {
        goto LABEL_196;
      }

      v73 = &table_logcum_fx[a4 - v63];
      if (v73 < table_logcum_fx || v73 + 1 > ddec || v73 > v73 + 1)
      {
        goto LABEL_196;
      }

      v74 = v71[2];
      v75 = *v73;
      v76 = v75 + v74;
      v77 = v75 ^ v74;
      v78 = (v76 ^ v74) > -1 || v77 < 0;
      v79 = (v74 >> 31) ^ 0x7FFFFFFF;
      if (v78)
      {
        v79 = v76;
      }

      v80 = v27 - v79;
      v31 = ((v79 ^ v27) & ((v27 - v79) ^ v27)) < 0;
      v81 = (v27 >> 31) ^ 0x7FFFFFFF;
      if (!v31)
      {
        v81 = v80;
      }

      v82 = v71 + 1;
      if (v82 < table_logcum_fx)
      {
        goto LABEL_196;
      }

      if (v82 > v72)
      {
        goto LABEL_196;
      }

      v83 = &table_logcum_fx[v128 - v63];
      if (v83 < table_logcum_fx || v83 + 1 > ddec || v83 > v83 + 1)
      {
        goto LABEL_196;
      }

      v84 = v64;
      v85 = *v82;
      v86 = *v83;
      v87 = v86 + *v82;
      v88 = v86 ^ v85;
      v89 = (v87 ^ v85) > -1 || v88 < 0;
      v90 = (v85 >> 31) ^ 0x7FFFFFFF;
      if (v89)
      {
        v90 = v87;
      }

      v91 = v41 - v90;
      v31 = ((v90 ^ v41) & ((v41 - v90) ^ v41)) < 0;
      v92 = (v41 >> 31) ^ 0x7FFFFFFF;
      if (!v31)
      {
        v92 = v91;
      }

      v93 = v92 + v81;
      v94 = v92 ^ v81;
      v95 = (v93 ^ v81) > -1 || v94 < 0;
      v96 = (v81 >> 31) ^ 0x7FFFFFFF;
      if (v95)
      {
        v96 = v93;
      }

      v97 = v96 + v70;
      v98 = v96 ^ v70;
      v99 = (v97 ^ v70) > -1 || v98 < 0;
      v100 = v99 ? v97 : (v70 >> 31) ^ 0x7FFFFFFF;
      v101 = v100 + 917498;
      v102 = &v134[2 * v84];
      if ((v100 & 0x80000000) == 0 && (v101 ^ v100) < 0)
      {
        break;
      }

      if (v100 >= -917497)
      {
        goto LABEL_119;
      }

      if (v102 < v134 || v102 + 2 > v135 || v102 > v102 + 2)
      {
        goto LABEL_196;
      }

      LOWORD(v104) = 1;
LABEL_133:
      *v102 = v104;
      v63 = v65;
      v64 = v65;
      if (v62 <= v65)
      {
        goto LABEL_134;
      }
    }

    v101 = 0x7FFFFFFF;
LABEL_119:
    v103 = Pow2_11469(v101 >> 16, v101 >> 1, &v132);
    if (v102 < v134 || v102 + 2 > v135 || v102 > v102 + 2)
    {
      goto LABEL_196;
    }

    if (v103 <= -32768)
    {
      v104 = -32768;
    }

    else
    {
      v104 = v103;
    }

    if (v104 >= 0x7FFF)
    {
      v104 = 0x7FFF;
    }

    if (v104 <= 1)
    {
      LOWORD(v104) = 1;
    }

    goto LABEL_133;
  }

LABEL_134:
  if (v62 > 0x78)
  {
    goto LABEL_196;
  }

  result = ar_make_model(v134, v133, v134, v62);
  if (v7 != 0x8000)
  {
    if ((v7 - 1) < 1)
    {
      if (v7 == 1)
      {
        if (v128 > 1)
        {
          ar_encode(a1, v133, v134, 0);
        }

        if (a4 < 1)
        {
          v125 = 0;
        }

        else
        {
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v119 = v133 + 4;
          do
          {
            v120 = div_l((~v117 + a4) << 16, a4, &v132);
            if (v119 - 2 < v133 || v119 > v134 || v119 - 2 > v119)
            {
              goto LABEL_196;
            }

            v121 = (v120 << 15) + 0x8000;
            v122 = (v121 ^ (v120 << 15)) > -1 || v120 < 0;
            v123 = HIWORD(v121);
            if (!v122)
            {
              LOWORD(v123) = 0x7FFF;
            }

            *(v133 + v117 + 1) = v123;
            v124 = v130 + v116;
            if (v130 + v116 < v130 || v124 + 4 > a3 || v124 > v124 + 4)
            {
              goto LABEL_196;
            }

            if (*(v130 + 4 * v117) != 0.0)
            {
              v118 = v117;
            }

            ++v117;
            v116 += 4;
            v119 += 2;
          }

          while (v126 != v117);
          v125 = v118;
        }

        return ar_encode(a1, v133, v134, v125);
      }

      return result;
    }

    result = ar_encode(a1, v133, v134, v7 - 1);
    if (a4 < 1 || v7 < 1)
    {
      return result;
    }

    LOWORD(v106) = 0;
    v107 = 0;
    LODWORD(v108) = 0x1000000;
    while (a4 - v106 != v7)
    {
      result = div_l(v7 << 16, (a4 - v106), &v132);
      v109 = 0x8000 - result;
      if (v108 != 0x80000000 || result)
      {
        goto LABEL_143;
      }

      v110 = 0x7FFFFFFF;
      LODWORD(v108) = 0x7FFFFFFF;
LABEL_149:
      if (((v110 + 0x8000) ^ v110) > -1 || v110 < 0)
      {
        v112 = (v110 + 0x8000) >> 16;
      }

      else
      {
        v112 = 0x7FFF;
      }

      v113 = v133 + v107;
      v114 = v113 + 1;
      if (v113 + 1 < v133 || v113 + 2 > v134 || v114 > v113 + 2)
      {
        goto LABEL_196;
      }

      *v114 = v112;
      if (v108 >= 1 && !v112)
      {
        goto LABEL_163;
      }

      if (v113 < v133 || v113 > v114)
      {
        goto LABEL_196;
      }

      if (*v113 == v112)
      {
LABEL_163:
        *v114 = 0;
        result = ar_encode(a1, v133, v134, v107);
        v107 = 0;
        LOWORD(v106) = v106 - 1;
LABEL_164:
        LODWORD(v108) = 0x1000000;
        goto LABEL_165;
      }

      v115 = (v130 + 4 * v106);
      if (v115 < v130 || (v115 + 1) > a3 || v115 > v115 + 1)
      {
        goto LABEL_196;
      }

      if (*v115 != 0.0)
      {
        result = ar_encode(a1, v133, v134, v107);
        v107 = 0;
        --v7;
        goto LABEL_164;
      }

      ++v107;
LABEL_165:
      v106 = (v106 + 1);
      if (v106 >= a4 || v7 <= 0)
      {
        return result;
      }
    }

    v109 = 0;
LABEL_143:
    v108 = 2 * v109 * SWORD1(v108) + ((v108 * v109) >> 15);
    if ((v108 - 0x2000000) >> 26 == 63)
    {
      v110 = v108 << 6;
    }

    else
    {
      v110 = (v108 >> 31) ^ 0x7FFFFFFF;
    }

    goto LABEL_149;
  }

  return result;
}

unint64_t encode_magnitude_tcq_fx(unint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int *a7)
{
  v79 = result;
  v85 = 0x3FFF;
  v86 = 0;
  v7 = &table_logcum_fx[a4];
  v8 = v7 + 1;
  v10 = v7 < table_logcum_fx || v8 > ddec || v7 >= v8;
  if (v10 || (v11 = &table_logcum_fx[a5], v11 < table_logcum_fx) || v11 + 1 > ddec || v11 > v11 + 1 || (v12 = &table_logcum_fx[a4 - a5], v13 = v12 + 1, v12 + 1 < table_logcum_fx) || v12 + 2 > ddec || v13 > v12 + 2)
  {
LABEL_130:
    __break(0x5519u);
    return result;
  }

  v14 = *v7;
  v15 = *v11;
  v16 = *v13 + v15;
  v17 = (v16 ^ v15) > -1 || (*v13 ^ v15) < 0;
  v18 = (v15 >> 31) ^ 0x7FFFFFFF;
  if (v17)
  {
    v18 = v16;
  }

  v19 = v14 - v18;
  v20 = v18 ^ v14;
  v21 = v19 ^ v14;
  v22 = (v14 >> 31) ^ 0x7FFFFFFF;
  if ((v20 & v21) >= 0)
  {
    v22 = v19;
  }

  v23 = v22 + *a7;
  v24 = v22 ^ *a7;
  v25 = (v23 ^ *a7) > -1 || v24 < 0;
  v26 = (*a7 >> 31) ^ 0x7FFFFFFF;
  if (v25)
  {
    v26 = v23;
  }

  *a7 = v26;
  if ((a5 - a4 >= 0x8000 || a5 - a4 < -32768 || a5 != a4) && a5 != -32768 && a5 != 1 && a3 >= 1 && a5 >= 2)
  {
    v27 = 0;
    v28 = a3;
    v73 = a3;
    do
    {
      if (*(a2 + 4 * v27) == 0.0)
      {
        goto LABEL_119;
      }

      v29 = a4;
      if (a4 <= 0)
      {
        v66 = a5 - 1;
        goto LABEL_109;
      }

      v77 = a4;
      v30 = 0;
      v80 = v27;
      v31 = &ddec[4 * *(a6 + 4 * v27)];
      v32 = (v31 + 2);
      v34 = (v31 + 2) <= v31 + 4 && v31 < v32;
      v36 = v31 + 1 <= v31 + 4 && v32 <= v31 + 1;
      v82 = v36;
      v83 = v34;
      v74 = a5;
      v37 = a4;
      v76 = a5 - 1;
      if (a5 == 0x8000)
      {
        v38 = 0x8000;
      }

      else
      {
        v38 = a5 - 1;
      }

      v39 = v38;
      v78 = (v38 ^ (v39 >> 15));
      while (1)
      {
        v40 = 0;
        v41 = v30 + 1;
        v42 = 0x7FFF;
        if (v37 - (v30 + 1) >= 0x7FFF)
        {
          v43 = 0x7FFF;
        }

        else
        {
          v43 = v37 - (v30 + 1);
        }

        v44 = v39 - v43;
        if (v44 >= 0x8000 || (v44 & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        if (!v39)
        {
          goto LABEL_64;
        }

        if (v39 != 0xFFFF)
        {
          LOWORD(v46) = v78;
          if (v78 < 0x4000)
          {
            v47 = 0;
            do
            {
              v48 = v47;
              v46 = (2 * v46);
              ++v47;
            }

            while (v46 < 0x4000);
            if (v47 == 0x8000)
            {
              v45 = 0x8000;
            }

            else
            {
              v45 = v48;
            }

            goto LABEL_65;
          }

LABEL_64:
          v45 = -1;
          goto LABEL_65;
        }

        v45 = 14;
LABEL_65:
        v49 = v43;
        if (v43)
        {
          if (v43 == 0xFFFF)
          {
            v43 = 15;
          }

          else
          {
            v50 = (v43 ^ (v49 >> 15));
            if (v50 >= 0x4000)
            {
              v43 = 0;
            }

            else
            {
              v43 = 0;
              do
              {
                v50 = (2 * v50);
                ++v43;
              }

              while (v50 < 0x4000);
            }
          }
        }

        v51 = shl(v39, v45, &v84);
        v52 = shl(v49, v43, &v84);
        v53 = div_s(v51, v52);
        v54 = (v45 - v43 + 15) >= -32752 ? v43 - v45 : 0x7FFF;
        result = shl(v53, v54, &v84);
        v42 = result;
        v40 = result < 1;
LABEL_77:
        if (!v83)
        {
          goto LABEL_130;
        }

        v55 = v41 << 10;
        if ((v41 << 10) >= 0x8000)
        {
          v55 = 0x7FFF;
        }

        v56 = v55;
        result = quantize_fx(v56, *v31);
        if (!v82)
        {
          goto LABEL_130;
        }

        v57 = result;
        result = quantize_fx(v56, *v32);
        if (v57 - v41 < 0x8000 && v57 == v41)
        {
          v59 = v42 == 0x7FFF || v40;
          if (v59)
          {
            goto LABEL_106;
          }
        }

        else if (result - v41 != (result - v41) || result != v41 || v40 || v42 == 0x7FFF)
        {
          goto LABEL_106;
        }

        v60 = (0x3FFF * v42) >> 15;
        if ((v60 & 0x10000) != 0)
        {
          v61 = v60 | 0xFFFF0000;
        }

        else
        {
          v61 = (0x3FFF * v42) >> 15;
        }

        if (v61 <= -32768)
        {
          LOWORD(v61) = 0x8000;
        }

        HIWORD(v85) = v61;
        v27 = v80;
        v62 = *(a2 + 4 * v80);
        v63 = v62 >= 0 ? *(a2 + 4 * v80) : -v62;
        v64 = v63 - 1;
        v65 = v62 == -32768 ? 32766 : v64;
        if (v30 >= v65)
        {
          break;
        }

        result = ar_encode(v79, &v85, &v87, 0);
LABEL_106:
        ++v30;
        if (v37 == v41)
        {
          v27 = v80;
          v28 = v73;
          v66 = v76;
          v29 = v77;
          goto LABEL_109;
        }
      }

      v71 = v37 - v30;
      if (v37 - v30 < 0x8000)
      {
        v28 = v73;
        v72 = v74;
        v66 = v76;
        v29 = v77;
        if (v71 >= -32768)
        {
          goto LABEL_125;
        }
      }

      else
      {
        LOWORD(v71) = 0x7FFF;
        v28 = v73;
        v72 = v74;
        v66 = v76;
        v29 = v77;
LABEL_125:
        if (v71 > v72)
        {
          result = ar_encode(v79, &v85, &v87, 1);
        }
      }

LABEL_109:
      v67 = *(a2 + 4 * v27);
      if (v67 >= 0)
      {
        v68 = *(a2 + 4 * v27);
      }

      else
      {
        v68 = -v67;
      }

      if (v67 == -32768)
      {
        v69 = 0x7FFF;
      }

      else
      {
        v69 = v68;
      }

      v70 = v29 - v69;
      if (v70 <= -32768)
      {
        LOWORD(a4) = 0x8000;
      }

      else
      {
        LOWORD(a4) = v70;
      }

      a5 = v66;
LABEL_119:
      ++v27;
    }

    while (v27 < v28 && a5 > 1);
  }

  return result;
}

unint64_t encode_signs_fx(unint64_t result, float *a2, int a3, int a4, int *a5)
{
  v5 = ((*a5 + (a4 << 16)) ^ *a5) > -1 || (*a5 ^ (a4 << 16)) < 0;
  v6 = (*a5 >> 31) ^ 0x7FFFFFFF;
  if (v5)
  {
    v6 = *a5 + (a4 << 16);
  }

  *a5 = v6;
  if (a3 >= 1)
  {
    v8 = result;
    v9 = a3;
    do
    {
      if (*a2 != 0.0)
      {
        result = ar_encode(v8, uniform_model, &step_LSB, *a2 > 0.0);
      }

      ++a2;
      --v9;
    }

    while (v9);
  }

  return result;
}

void encode_magnitude_usq_fx(unint64_t a1, uint64_t a2, int a3, int a4, int a5, int *a6)
{
  v63[0] = *MEMORY[0x1E69E9840];
  bzero(v62, 0x460uLL);
  memset(__b, 170, sizeof(__b));
  v12 = &table_logcum_fx[a4];
  v13 = v12 + 1;
  v15 = v12 < table_logcum_fx || v13 > ddec || v12 >= v13;
  if (v15 || (v16 = &table_logcum_fx[a5], v16 < table_logcum_fx) || v16 + 1 > ddec || v16 > v16 + 1 || (v17 = a4 - a5, v18 = &table_logcum_fx[a4 - a5], v19 = v18 + 1, v18 + 1 < table_logcum_fx) || v18 + 2 > ddec || v19 > v18 + 2)
  {
LABEL_100:
    __break(0x5519u);
  }

  v20 = *v12;
  v21 = *v16;
  v22 = *v19 + v21;
  v23 = (v22 ^ v21) > -1 || (*v19 ^ v21) < 0;
  v24 = (v21 >> 31) ^ 0x7FFFFFFF;
  if (v23)
  {
    v24 = v22;
  }

  v25 = v20 - v24;
  v26 = v24 ^ v20;
  v27 = v25 ^ v20;
  v28 = (v20 >> 31) ^ 0x7FFFFFFF;
  if ((v26 & v27) >= 0)
  {
    v28 = v25;
  }

  v29 = v28 + *a6;
  v30 = v28 ^ *a6;
  v31 = (v29 ^ *a6) > -1 || v30 < 0;
  v32 = (*a6 >> 31) ^ 0x7FFFFFFF;
  if (v31)
  {
    v32 = v29;
  }

  *a6 = v32;
  if (v17 >= 0x8000 || (a4 == a5 ? (v33 = v17 <= -32769) : (v33 = 1), v33))
  {
    if (a5 != 1)
    {
      if (a4 == -32768)
      {
        v34 = 0x8000;
      }

      else
      {
        v34 = a4 - 1;
      }

      if (a5 == -32768)
      {
        v35 = 0x8000;
      }

      else
      {
        v35 = a5 - 1;
      }

      if (a3 >= 1)
      {
        v36 = 0;
        v37 = 0;
        do
        {
          v38 = *(a2 + 4 * v36);
          if (v38 != 0.0)
          {
            v39 = 0;
            v40 = v38;
            if (v38 >= 0)
            {
              v41 = v38;
            }

            else
            {
              v41 = -v40;
            }

            if (v40 == -32768)
            {
              v42 = 0x7FFF;
            }

            else
            {
              v42 = v41;
            }

            v43 = v42 - 1;
            while (1)
            {
              v44 = &v62[v37];
              v45 = v44 + 1 > v63 || v44 >= v44 + 1;
              v46 = !v45 && v44 >= v62;
              v47 = v46;
              if (v43 <= v39)
              {
                break;
              }

              if (!v47)
              {
                goto LABEL_100;
              }

              ++v37;
              *v44 = 0;
              ++v39;
            }

            if (!v47)
            {
              goto LABEL_100;
            }

            ++v37;
            *v44 = 1;
          }

          ++v36;
        }

        while (v36 != a3);
      }

      bzero(&__b[1], 0x462uLL);
      __b[0] = 0x3FFF;
      if (a4 > 1)
      {
        v48 = v35;
        if (v35 > 0)
        {
          v49 = 0;
          v50 = 0;
          LODWORD(v51) = 0x1000000;
          while (v48 != v34)
          {
            v54 = div_l(v48 << 16, v34, &v60);
            v52 = 0x8000 - v54;
            if (v51 != 0x80000000 || v54)
            {
              goto LABEL_69;
            }

            v53 = 0x7FFFFFFF;
            LODWORD(v51) = 0x7FFFFFFF;
LABEL_75:
            if (((v53 + 0x8000) ^ v53) > -1 || v53 < 0)
            {
              v56 = (v53 + 0x8000) >> 16;
            }

            else
            {
              v56 = 0x7FFF;
            }

            v57 = &__b[v50];
            v58 = v57 + 1;
            if (v57 + 1 < __b || v57 + 2 > v62 || v58 > v57 + 2)
            {
              goto LABEL_100;
            }

            *v58 = v56;
            if (v51 >= 1 && !v56)
            {
              goto LABEL_89;
            }

            if (v57 < __b || v57 > v58)
            {
              goto LABEL_100;
            }

            if (*v57 != v56)
            {
              v59 = &v62[v49];
              if (v59 < v62 || v59 + 1 > v63 || v59 > v59 + 1)
              {
                goto LABEL_100;
              }

              if (*v59)
              {
                ar_encode(a1, __b, v62, v50);
                v50 = 0;
                --v48;
                LODWORD(v51) = 0x1000000;
              }

              else
              {
                ++v50;
              }

              --v34;
              ++v49;
            }

            else
            {
LABEL_89:
              *v58 = 0;
              ar_encode(a1, __b, v62, v50);
              v50 = 0;
              LODWORD(v51) = 0x1000000;
            }

            if (a4 - 1 <= v49 || v48 <= 0)
            {
              return;
            }
          }

          v52 = 0;
LABEL_69:
          v51 = 2 * v52 * SWORD1(v51) + ((v51 * v52) >> 15);
          if ((v51 - 0x2000000) >> 26 == 63)
          {
            v53 = v51 << 6;
          }

          else
          {
            v53 = (v51 >> 31) ^ 0x7FFFFFFF;
          }

          goto LABEL_75;
        }
      }
    }
  }
}

unint64_t transmission_bits(uint64_t a1, int a2)
{
  result = bitstream_save_bit(*a1, a2);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24) + 1;
  *(a1 + 24) = v6;
  v7 = a2 == 0;
  if (v5 >= 1)
  {
    do
    {
      if (v6 >= *(a1 + 28))
      {
        break;
      }

      result = bitstream_save_bit(*a1, v7);
      v8 = *(a1 + 20);
      v9 = vadd_s32(v8, 0x1FFFFFFFFLL);
      *(a1 + 20) = v9;
      v6 = v9.i32[1];
    }

    while (v8.i32[0] > 1);
  }

  return result;
}

unint64_t bitstream_save_bit(unint64_t result, char a2)
{
  v2 = (result + *(result + 1028));
  if (v2 < result + 1024 && v2 >= result)
  {
    v4 = *v2;
    v5 = *(result + 1024);
    *(result + 1024) = v5 - 1;
    *v2 = v4 | (a2 << v5);
    ++*(result + 1032);
    if (*(result + 1024) < 0)
    {
      *(result + 1024) = 7;
      ++*(result + 1028);
    }
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t ar_encode(unint64_t result, __int16 *a2, unint64_t a3, int a4)
{
  v4 = &a2[a4];
  v5 = v4 + 1;
  v7 = v4 < a2 || v5 > a3 || v4 >= v5;
  v8 = a2 + 1;
  v10 = !v7 && v8 <= a3 && v8 >= a2;
  v11 = v4 + 2;
  if (v10 && v11 <= a3 && v5 <= v11)
  {
    v14 = result;
    v15 = *(result + 8);
    v16 = *(result + 12) - v15 + 1;
    v17 = *a2;
    v18 = v15 + v16 * *v4 / v17 - 1;
    for (i = v16 * v4[1] / v17 + v15; ; i *= 2)
    {
      if (v18 >> 15)
      {
        if (i < 0x8000)
        {
          if (i < 0x4000 || v18 >> 14 > 2)
          {
            v14[2] = i;
            v14[3] = v18;
            return result;
          }

          ++v14[5];
          v18 -= 0x4000;
          i -= 0x4000;
        }

        else
        {
          result = transmission_bits(v14, 1);
          v18 -= 0x8000;
          i -= 0x8000;
        }
      }

      else
      {
        result = transmission_bits(v14, 0);
      }

      v18 = (2 * v18) | 1;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t quantize_fx(uint64_t result, int a2)
{
  v2 = &DDP_fx[a2];
  v3 = v2 + 1;
  if (v2 < DDP_fx || v3 > &step_tcq || v2 >= v3)
  {
    __break(0x5519u);
  }

  else
  {
    LOWORD(v6) = result + 512;
    if (result > 32255)
    {
      LOWORD(v6) = 0x7FFF;
    }

    v6 = v6;
    if ((v6 & 0x8000u) != 0)
    {
      v6 = -v6;
    }

    v7 = ((v6 >> 10) & 0x1C) + *v2;
    if (v7 >= 0x7FFF)
    {
      LOWORD(v7) = 0x7FFF;
    }

    if (!a2)
    {
      v8 = v7;
      if ((v7 & 0x8000u) != 0)
      {
        v8 = -v7;
      }

      if (v7 == 0x8000)
      {
        v9 = 0x7FFF;
      }

      else
      {
        v9 = v8;
      }

      if (v9 >= 0x20)
      {
        v10 = 0x7FFF;
      }

      else
      {
        v10 = v9 << 10;
      }

      if (result >= 0)
      {
        v11 = result;
      }

      else
      {
        v11 = -result;
      }

      if (result == -32768)
      {
        v11 = 0x7FFF;
      }

      v12 = v10 - v11;
      if (v12 >= 0x7FFF)
      {
        LOWORD(v13) = 0x7FFF;
      }

      else
      {
        LOWORD(v13) = v12;
      }

      v13 = v13;
      if ((v13 & 0x8000u) != 0)
      {
        v13 = -v13;
      }

      if (v13 > v11)
      {
        LOWORD(v7) = 0;
      }
    }

    return v7;
  }

  return result;
}

uint64_t GetBitsFromPulses_fx(uint64_t result, int a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (result >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = result;
  }

  v101 = v3;
  if (v3 < 1)
  {
    v6 = 0;
    v77 = 0;
    v78 = 0;
LABEL_120:
    v83 = -1;
    goto LABEL_121;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = &table_logcum_fx[a2];
  v9 = v8 + 1;
  v10 = v8 + 2;
  v11 = v10 > ddec || v9 > v10;
  v99 = v9;
  v13 = !v11 && v9 >= table_logcum_fx;
  v100 = v13;
  v14 = &table_logcum_fx[result];
  v15 = v14 + 1 > ddec || v14 >= v14 + 1;
  v97 = &table_logcum_fx[result];
  v17 = !v15 && v14 >= table_logcum_fx;
  v98 = v17;
  v96 = a2;
  do
  {
    if ((v100 & 1) == 0)
    {
      goto LABEL_138;
    }

    v18 = &table_logcum_fx[v5];
    v19 = v18 + 2;
    v20 = v18 + 3;
    v21 = v19 < table_logcum_fx || v20 > ddec;
    if (v21 || v19 > v20)
    {
      goto LABEL_138;
    }

    v23 = &table_logcum_fx[a2 - v4];
    if (v23 < table_logcum_fx || v23 + 1 > ddec || v23 > v23 + 1)
    {
      goto LABEL_138;
    }

    v24 = (v4 + 1) << 16;
    v25 = *v99;
    v26 = *v19;
    v27 = *v23;
    v28 = v27 + v26;
    v29 = v27 ^ v26;
    v30 = (v28 ^ v26) > -1 || v29 < 0;
    v31 = (v26 >> 31) ^ 0x7FFFFFFF;
    if (v30)
    {
      v31 = v28;
    }

    v32 = v25 - v31;
    v33 = v31 ^ v25;
    v34 = v32 ^ v25;
    v35 = (v25 >> 31) ^ 0x7FFFFFFF;
    v36 = (v33 & v34) < 0 ? v35 : v32;
    v37 = v36 + v24;
    v38 = v36 ^ v24;
    v39 = v37 ^ v24;
    v40 = v4 < -1 ? 0x80000000 : 0x7FFFFFFF;
    v41 = v39 > -1 || v38 < 0;
    v42 = v41 ? v37 : v40;
    if (!v98)
    {
      goto LABEL_138;
    }

    v43 = &table_logcum_fx[v4 + 1];
    if (v43 < table_logcum_fx)
    {
      goto LABEL_138;
    }

    if (v43 + 1 > ddec)
    {
      goto LABEL_138;
    }

    if (v43 > v43 + 1)
    {
      goto LABEL_138;
    }

    v44 = &table_logcum_fx[v2 - v4];
    if (v44 < table_logcum_fx || v44 + 1 > ddec || v44 > v44 + 1)
    {
      goto LABEL_138;
    }

    v45 = *v97;
    v46 = *v43;
    v47 = *v44;
    v48 = v47 + v46;
    v49 = v47 ^ v46;
    v50 = (v48 ^ v46) > -1 || v49 < 0;
    v51 = (v46 >> 31) ^ 0x7FFFFFFF;
    if (v50)
    {
      v51 = v48;
    }

    v52 = v45 - v51;
    v53 = v51 ^ v45;
    v54 = v52 ^ v45;
    v55 = (v45 >> 31) ^ 0x7FFFFFFF;
    v56 = (v53 & v54) < 0 ? v55 : v52;
    v57 = v56 + v42;
    v58 = v56 ^ v42;
    v59 = (v57 ^ v42) > -1 || v58 < 0;
    v60 = v59 ? v57 : (v42 >> 31) ^ 0x7FFFFFFF;
    v61 = &pow_getbitsfrompulses_fx[v60 >> 12];
    if (v61 < pow_getbitsfrompulses_fx || v61 + 1 > DDP_fx || v61 > v61 + 1)
    {
LABEL_138:
      __break(0x5519u);
      return result;
    }

    v62 = *v61;
    if (!*v61)
    {
      goto LABEL_84;
    }

    if (v62 == -1)
    {
      v63 = 31;
      goto LABEL_85;
    }

    v64 = v62 ^ (v62 >> 31);
    if (v64 <= 0x3FFFFFFF)
    {
      v63 = 0;
      do
      {
        v65 = v64 >> 29;
        v64 *= 2;
        ++v63;
      }

      while (!v65);
    }

    else
    {
LABEL_84:
      v63 = 0;
    }

LABEL_85:
    v66 = v63;
    v67 = L_shl(v62, v63);
    v68 = L_shl(((15728 * (((v60 & 0xFFF) * (v60 & 0xFFFu)) >> 16) + ((7864 * ((v60 & 0xFFF) * (v60 & 0xFFF))) >> 15) + 45416 * (v60 & 0xFFF)) >> 2) | 0x40000000, 0);
    v103 = -1431655766;
    v104 = -1431655766;
    Mpy_32_32_ss(v67, v68, &v104, &v103, &v102);
    v69 = L_shr(v104, v66);
    v70 = v69 + 1;
    v71 = v6 - (v60 >> 16);
    if (v71 >= 0x8000)
    {
      LOWORD(v71) = 0x7FFF;
LABEL_88:
      result = L_shr(v69 + 1, v71);
      v72 = result + v7;
      if (((result + v7) ^ v7) < 0)
      {
        v73 = (v7 >> 31) ^ 0x7FFFFFFF;
      }

      else
      {
        v73 = result + v7;
      }

      if ((result ^ v7) >= 0)
      {
        v72 = v73;
      }

      goto LABEL_93;
    }

    if ((v71 & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    v74 = (v60 >> 16) - v6;
    if (v74 >= 0x7FFF)
    {
      v74 = 0x7FFF;
    }

    if (v74 <= -32768)
    {
      v75 = -32768;
    }

    else
    {
      v75 = v74;
    }

    result = L_shr(v7, v75);
    v72 = v70 + result;
    if (((v70 + result) ^ result) < 0)
    {
      v76 = (result >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v76 = v70 + result;
    }

    if ((v70 ^ result) >= 0)
    {
      v72 = v76;
    }

    v6 = HIWORD(v60);
LABEL_93:
    v7 = v72 >> (v72 >= 0x200000);
    if (v72 >= 0x200000)
    {
      ++v6;
    }

    v4 = ++v5;
    a2 = v96;
  }

  while (v101 > v5);
  if ((v7 - 0x20000000) >> 30 == 3)
  {
    v77 = 4 * v7;
  }

  else
  {
    v77 = (v7 >> 31) ^ 0x7FFFFFFF;
  }

  v78 = v77 << 15;
  if (!v78 || v78 >> 30)
  {
    goto LABEL_120;
  }

  v79 = 0;
  v80 = v77 << 15;
  do
  {
    v81 = v79;
    v82 = v80 >> 29;
    v80 *= 2;
    ++v79;
  }

  while (!v82);
  if (v79 == 0x8000)
  {
    v83 = 0x8000;
  }

  else
  {
    v83 = v81;
  }

LABEL_121:
  v84 = L_shl(v78, v83);
  v85 = v77 >> 16;
  v86 = ar_div(v84, v77 >> 16);
  v87 = L_shr(v86, (v83 + 1));
  v103 = -1431655766;
  v104 = -1431655766;
  Mpy_32_32_ss((0x40000000 - (v87 >> 1)), v87, &v104, &v103, &v102);
  v88 = (v104 >> 13);
  if (v77 >> 16)
  {
    if (v85 == -1)
    {
      v89 = 31;
      goto LABEL_129;
    }

    v90 = v85 ^ (v77 >> 31);
    if (v90 <= 0x3FFFFFFF)
    {
      v89 = 0;
      do
      {
        v91 = v90 >> 29;
        v90 *= 2;
        ++v89;
      }

      while (!v91);
      goto LABEL_129;
    }
  }

  v89 = 0;
LABEL_129:
  v92 = L_shl(v77 >> 16, v89);
  v93 = Log2_norm_lc(v92, &v102);
  v103 = -1431655766;
  v104 = -1431655766;
  Mpy_32_32_ss(v88, 950680361, &v104, &v103, &v102);
  v94 = ((v104 + v88 + 2 * v93) ^ (2 * v93)) > -1 || ((v104 + v88) ^ (2 * v93)) < 0;
  v95 = (v93 >> 15) ^ 0x7FFFFFFF;
  if (v94)
  {
    v95 = v104 + v88 + 2 * v93;
  }

  result = v95 + (v6 << 16);
  if (((v95 ^ (v6 << 16)) & 0x80000000) == 0 && ((result ^ (v6 << 16)) & 0x80000000) != 0)
  {
    return (v6 >> 15) ^ 0x7FFFFFFFu;
  }

  return result;
}

unint64_t ar_make_model(unint64_t result, unint64_t a2, unint64_t a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = a4;
    do
    {
      v5 += *(result + v4);
      v4 += 2;
    }

    while (2 * a4 != v4);
    if (v5)
    {
      v7 = (a2 + 2 * a4);
      if (v7 >= a2 && (v7 + 1) <= a3 && v7 <= v7 + 1)
      {
        v8 = 0;
        v9 = 2 * a4;
        v10 = (result + v9 - 2);
        do
        {
          v11 = a2 + v9;
          *(a2 + v9) = 0x3FFF * v8 / v5;
          if (!v9)
          {
            goto LABEL_16;
          }

          if (v10 < result)
          {
            break;
          }

          if (v10 >= v10 + 1)
          {
            break;
          }

          if (v11 - 2 < a2)
          {
            break;
          }

          if (v11 > a3)
          {
            break;
          }

          v12 = *v10--;
          v8 += v12;
          v9 -= 2;
        }

        while (v11 - 2 <= v11);
      }

      while (1)
      {
LABEL_15:
        while (1)
        {
          __break(0x5519u);
LABEL_16:
          v13 = a4 - 1;
          if (a4 == 1)
          {
            break;
          }

          v14 = (a2 + 2);
          while (v14 <= a3 && v14 >= 2 && v14 >= a2 && (v14 + 1) <= a3 && v14 <= v14 + 1)
          {
            v15 = *(v14 - 1);
            if ((v15 - *v14) <= 0)
            {
              *v14 = v15 - 1;
            }

            ++v14;
            if (!--v13)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_26:
        --v7;
        do
        {
          if (v7 < a2)
          {
            goto LABEL_15;
          }

          v16 = v7 + 1;
          if ((v7 + 1) > a3)
          {
            goto LABEL_15;
          }

          if (v7 > v16)
          {
            goto LABEL_15;
          }

          v17 = *v7;
          if ((v7 + 2) > a3 || v16 > v7 + 2)
          {
            goto LABEL_15;
          }

          v18 = (v17 - *v16);
          if (v18 <= 0)
          {
            *v7 = v17 - v18 + 1;
          }

          --v7;
          --v6;
        }

        while (v6);
        v6 = a2 + 2;
        if (a2 + 2 <= a3)
        {
          v7 = (a2 + 4);
          if (a2 + 4 <= a3 && v6 <= v7)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Log2_norm_lc(uint64_t result, _DWORD *a2)
{
  if ((result & 0x80000000) != 0)
  {
    v2 = result >> 9;
    v4 = (result >> 9) - 2129920;
    if (result >> 9 < 0 && (v4 ^ (result >> 9)) < 0)
    {
      *a2 = 1;
      v4 = 0x80000000;
    }

    v3 = v4 + 0x8000;
  }

  else
  {
    v2 = result >> 9;
    v3 = (result >> 9) - 0x200000;
    if (BYTE3(result) >= 0x41u && ((v3 ^ ((result >> 9) - 2129920)) & 0x80000000) != 0)
    {
      *a2 = 1;
      v3 = 0x7FFFFFFF;
    }
  }

  v5 = HIWORD(v3);
  v6 = &L_table[2 * SHIWORD(v3)];
  if (v6 >= L_table && v6 + 1 <= table_diff && v6 <= v6 + 1)
  {
    v7 = table_diff + v5;
    if (v7 >= table_diff && v7 + 1 <= shift && v7 <= v7 + 1)
    {
      return mac_r(*v6, *v7, v2 >> 1, a2);
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t GetScale_fx(int a1, int a2, int *a3)
{
  v40 = 0;
  if (a1 >= 0)
  {
    v6 = (49546 * a1) >> 2;
  }

  else
  {
    v6 = (49546 * a1) >> 2;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  if (v6 == -1)
  {
    v7 = 31;
    goto LABEL_12;
  }

  v8 = v6 ^ (v6 >> 31);
  if (v8 <= 0x3FFFFFFF)
  {
    v7 = 0;
    do
    {
      v9 = v8 >> 29;
      v8 *= 2;
      ++v7;
    }

    while (!v9);
  }

  else
  {
LABEL_11:
    v7 = 0;
  }

LABEL_12:
  v10 = v7;
  v11 = L_shl(v6, v7);
  v12 = Log2_norm_lc(v11, &v40) - (v10 << 15);
  if (!a2)
  {
LABEL_20:
    v13 = -1;
    goto LABEL_21;
  }

  if (a2 != -1)
  {
    v14 = a2 ^ (a2 >> 31);
    if (v14 <= 0x3FFFFFFF)
    {
      v15 = 0;
      do
      {
        v13 = v15;
        v16 = v14 >> 29;
        v14 *= 2;
        ++v15;
      }

      while (!v16);
      if (v15 == 0x8000)
      {
        v40 = 1;
        v13 = 0x8000;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = 30;
LABEL_21:
  v17 = v12 + 458752;
  if (a1 == 1)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    v18 = 15;
    goto LABEL_29;
  }

  v19 = (a1 - 1) ^ ((a1 - 1) >> 15);
  if (v19 >= 0x4000)
  {
LABEL_28:
    v18 = 0;
    goto LABEL_29;
  }

  v18 = 0;
  do
  {
    v19 = (2 * v19);
    ++v18;
  }

  while (v19 < 0x4000);
LABEL_29:
  v20 = L_shl(a2, v13);
  v21 = shl((a1 - 1), v18, &v40);
  v22 = div_l(v20, v21, &v40);
  v23 = L_shr(v22, (v13 - v18));
  v24 = v23 + v17;
  if ((v23 ^ v17) < 0 || ((v24 ^ v17) & 0x80000000) == 0)
  {
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v40 = 1;
    if ((v17 & 0x80000000) == 0)
    {
      v24 = 0x7FFFFFFF;
LABEL_34:
      v25 = v24 >> 15;
      goto LABEL_37;
    }

    v24 = 0x80000000;
  }

  v25 = v24 >> 15;
LABEL_37:
  v26 = Pow2_11469(v25, v24 & 0x7FFF, &v40);
  if (v26 <= -32768)
  {
    v27 = -32768;
  }

  else
  {
    v27 = v26;
  }

  v28 = __OFSUB__(v27, 560);
  if (v27 >= 560)
  {
    v29 = 560;
  }

  else
  {
    v29 = v27;
  }

  if (v26 < 0)
  {
    BitsFromPulses_fx = 0;
    if (!a3)
    {
      return v29;
    }

    goto LABEL_51;
  }

  do
  {
    v30 = v29;
    BitsFromPulses_fx = GetBitsFromPulses_fx(v29, a1);
    v32 = a2 - BitsFromPulses_fx;
    if ((BitsFromPulses_fx ^ a2) < 0 && (v32 ^ a2) < 0)
    {
      if ((a2 & 0x80000000) == 0)
      {
        break;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      break;
    }

    --v29;
    v28 = 0;
  }

  while (v30 > 0);
  if (a3)
  {
LABEL_51:
    v33 = *a3;
    v34 = a2 - BitsFromPulses_fx;
    if (((BitsFromPulses_fx ^ a2) & ((a2 - BitsFromPulses_fx) ^ a2)) < 0 != v28)
    {
      v34 = (a2 >> 31) ^ 0x7FFFFFFF;
    }

    v35 = v34 + v33;
    v36 = v34 ^ v33;
    v37 = (v35 ^ v33) > -1 || v36 < 0;
    v38 = (v33 >> 31) ^ 0x7FFFFFFF;
    if (v37)
    {
      v38 = v35;
    }

    *a3 = v38;
  }

  return v29;
}

uint64_t quantize(uint64_t result)
{
  v1 = &DDP[4 * result];
  v2 = v1 + 4;
  if (v1 < DDP || v2 > TRWB2_Ave || v1 >= v2)
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t set_val_Word16(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v2 = (a2 + 7) & 0xFFF8;
    v3 = vdupq_n_s64(a2 - 1);
    v4 = xmmword_19B0B2390;
    v5 = xmmword_19B0B23A0;
    v6 = xmmword_19B0A5840;
    v7 = xmmword_19B0A5850;
    v8 = (result + 8);
    v9 = vdupq_n_s64(8uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v3, v7));
      if (vuzp1_s8(vuzp1_s16(v10, *v3.i8), *v3.i8).u8[0])
      {
        *(v8 - 4) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v10, *&v3), *&v3).i8[1])
      {
        *(v8 - 3) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v6))), *&v3).i8[2])
      {
        *(v8 - 2) = 0;
        *(v8 - 1) = 0;
      }

      v11 = vmovn_s64(vcgeq_u64(v3, v5));
      if (vuzp1_s8(*&v3, vuzp1_s16(v11, *&v3)).i32[1])
      {
        *v8 = 0;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(v11, *&v3)).i8[5])
      {
        v8[1] = 0;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4)))).i8[6])
      {
        v8[2] = 0;
        v8[3] = 0;
      }

      v5 = vaddq_s64(v5, v9);
      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 8;
      v4 = vaddq_s64(v4, v9);
      v2 -= 8;
    }

    while (v2);
  }

  return result;
}

uint64_t set_val_Word32(uint64_t result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = (a3 + 3) & 0xFFFC;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_19B0A5840;
    v6 = xmmword_19B0A5850;
    v7 = (result + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 2) = a2;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 1) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2;
        v7[1] = a2;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void CNG_enc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, unint64_t a10, __int16 *a11, __int16 a12, unint64_t a13, unint64_t a14, _WORD *a15, uint64_t a16, uint64_t a17)
{
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v18;
  v441 = v20;
  v22 = v21;
  v24 = v23;
  v437 = v25;
  v429 = v17;
  __x = v26;
  v494 = *MEMORY[0x1E69E9840];
  memset(v493, 255, sizeof(v493));
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v492 = v27;
  v491 = v27;
  v490 = v27;
  v489 = v27;
  v488 = v27;
  v487 = v27;
  v486 = v27;
  v485 = v27;
  v484 = v27;
  v483 = v27;
  v482 = v27;
  v481 = v27;
  v480 = v27;
  v479 = v27;
  v478 = v27;
  v477 = v27;
  v476 = v27;
  v475 = v27;
  v474 = v27;
  v473 = v27;
  v472 = v27;
  v471 = v27;
  v470 = v27;
  v469 = v27;
  v468 = v27;
  v467 = v27;
  v466 = v27;
  v465 = v27;
  v464 = v27;
  v463 = v27;
  v462 = v27;
  v461 = v27;
  v460 = v27;
  v459[2] = v27;
  v459[1] = v27;
  v459[0] = v27;
  v458[3] = v27;
  v458[2] = v27;
  v458[1] = v27;
  v458[0] = v27;
  *&v28 = -1;
  *(&v28 + 1) = -1;
  __C = -1;
  v444 = -1431655766;
  v456 = v28;
  v455 = v28;
  v454 = v28;
  v453 = v28;
  memset(__b, 255, sizeof(__b));
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v451 = v29;
  v450 = v29;
  v449 = v29;
  v448 = v29;
  v447 = v29;
  memset(__dst, 255, sizeof(__dst));
  memset(v445, 255, sizeof(v445));
  v413 = v24;
  if (v22 < v24 || __x < 0 || (v22 - v24) >> 2 < __x)
  {
    goto LABEL_605;
  }

  v427 = v19;
  v30 = 0.0;
  v31 = 0.0;
  if (__x >= 1)
  {
    v32 = __x;
    v33 = v24;
    do
    {
      v34 = *v33++;
      v31 = v31 + (v34 * v34);
      --v32;
    }

    while (v32);
  }

  v35 = __x;
  v36 = *(v429 + 25604);
  v38 = log10(((v31 / __x) + 0.1));
  v39 = v38 / 0.30103;
  if (v39 >= 0.0)
  {
    v30 = v39;
  }

  v432 = (v429 + 24988);
  v40 = &qword_19B0B0000;
  if (*(v429 + 24988))
  {
    v41 = v19;
    if (*(v429 + 25002) < 0)
    {
      v124 = 0;
      goto LABEL_25;
    }

    if (*(v429 + 104) >= 2401)
    {
      v42 = *(v429 + 52108) != 3 && a12 < 1;
      if (!v42 && v36 < 6.0 && v30 > 6.0 && (v30 - v36) > 4.0)
      {
        v124 = 1;
LABEL_25:
        v44 = v30;
        goto LABEL_26;
      }
    }

    v124 = 0;
    v44 = (v36 * 0.9) + (v30 * 0.1);
  }

  else
  {
    v124 = 0;
    v44 = v30;
    v41 = v19;
  }

LABEL_26:
  *(v429 + 25604) = v44;
  v45 = (*(v429 + 25030) + 1) & 7;
  *(v429 + 25030) = v45;
  v436 = (v429 + 24916);
  v46 = v429 + 25032;
  v47 = (v429 + 25032 + 4 * (16 * v45));
  if (v47 < v429 + 25032)
  {
    goto LABEL_605;
  }

  v48 = v429;
  v49 = v429 + 25544;
  if (v429 + 25544 < v47)
  {
    goto LABEL_605;
  }

  if (v41 < v441)
  {
    goto LABEL_605;
  }

  if (v41 - v441 < 0x40)
  {
    goto LABEL_605;
  }

  if ((v429 + 25544 - v47) <= 0x3F)
  {
    goto LABEL_605;
  }

  v50 = *v441;
  v51 = v441[1];
  v52 = v441[3];
  v47[2] = v441[2];
  v47[3] = v52;
  *v47 = v50;
  v47[1] = v51;
  v53 = v429 + 24916;
  if (v47 + 4 < v47)
  {
    goto LABEL_605;
  }

  v54 = *(v429 + 96);
  if ((v54 == 2400 || v54 == 1750) && *(v429 + 25028) - 1 <= *(v429 + 25576))
  {
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, &__C, 1, 2uLL);
    v444 = 0;
    v57 = *(v429 + 25028);
    if (v57 < 1)
    {
      v80 = 0;
      v41 = v19;
    }

    else
    {
      v424 = 0;
      v58 = 0;
      v423.i32[0] = *(v429 + 140);
      v59 = *(&__C + 1);
      v60 = *&__C;
      v419 = HIWORD(v444);
      v422.i64[0] = v459 + 4;
      v61 = v429 + 25032;
      v416 = v444;
      do
      {
        v62 = v46 + (v58 << 6);
        v65 = v49 >= v62 && v46 <= v62 && (v49 - v62) > 60;
        v66 = v458 + v58;
        if (v423.i32[0] == 256)
        {
          if (!v65)
          {
            goto LABEL_603;
          }

          for (i = 0; i != 64; i += 4)
          {
            *(v459 + i) = acosf(*(v61 + i)) * 2037.2;
          }

          v41 = v427;
          if (v66 < v458 || v66 + 1 > v459 || v66 > v66 + 1)
          {
            goto LABEL_603;
          }

          v68 = 6400.0;
          v69 = -376.47;
          v70 = 376.47;
        }

        else
        {
          if (!v65)
          {
            goto LABEL_603;
          }

          for (j = 0; j != 64; j += 4)
          {
            *(v459 + j) = acosf(*(v61 + j)) * 2546.5;
          }

          v41 = v427;
          if (v66 < v458 || v66 + 1 > v459 || v66 > v66 + 1)
          {
            goto LABEL_603;
          }

          v68 = 8000.0;
          v69 = -470.59;
          v70 = 470.59;
        }

        v72 = ((v68 - *(&v460 + 3)) + v69) * ((v68 - *(&v460 + 3)) + v69);
        *v66 = v72;
        v73 = v66 + 1;
        if (v66 < v458 || (v73 <= v459 ? (v74 = v66 > v73) : (v74 = 1), v74))
        {
LABEL_603:
          HIWORD(v444) = v419;
          v408 = v416;
          goto LABEL_604;
        }

        v75 = v72 + ((*v459 - v70) * (*v459 - v70));
        v76 = v459 + 1;
        v77 = 15;
        do
        {
          v78 = (*v76 - *(v76 - 1)) - v70;
          v75 = v75 + (v78 * v78);
          ++v76;
          --v77;
        }

        while (v77);
        v79 = v75 * 0.058823;
        *v66 = v75 * 0.058823;
        if ((v75 * 0.058823) <= v60)
        {
          if (v79 > v59)
          {
            *(&__C + 1) = v75 * 0.058823;
            v419 = v58;
            v59 = v75 * 0.058823;
          }

          v79 = v60;
        }

        else
        {
          *(&__C + 1) = v60;
          *&__C = v75 * 0.058823;
          v416 = v58;
          v419 = v424;
          v424 = v58;
          v59 = v60;
        }

        ++v58;
        v61 += 64;
        v60 = v79;
      }

      while (v58 != v57);
      HIWORD(v444) = v419;
      LOWORD(v444) = v416;
      v40 = &qword_19B0B0000;
      v80 = v424;
    }

    v81 = 0;
    v82 = v80;
    v83 = 16 * v80;
    v84 = SHIWORD(v444);
    v85 = v46 + 4 * v83;
    v86 = v46 + (SHIWORD(v444) << 6);
    v87 = (v429 + 25032);
    do
    {
      v88 = v441 + v81;
      v89 = v88 + 1;
      if (v88 < v441 || v89 > v41 || v88 > v89)
      {
        goto LABEL_605;
      }

      *v88 = 0.0;
      v92 = 0.0;
      if (v57 >= 1)
      {
        v93 = v87;
        v94 = v57;
        do
        {
          if (v93 < v46 || (v93 + 1) > v49 || v93 > v93 + 1)
          {
            goto LABEL_605;
          }

          v95 = *v93;
          v93 += 16;
          v92 = v95 + v92;
          *v88 = v92;
          --v94;
        }

        while (v94);
      }

      v96 = (v85 + 4 * v81);
      if (v96 < v46)
      {
        goto LABEL_605;
      }

      if ((v96 + 1) > v49)
      {
        goto LABEL_605;
      }

      if (v96 > v96 + 1)
      {
        goto LABEL_605;
      }

      v97 = (v86 + 4 * v81);
      if (v97 < v46 || (v97 + 1) > v49 || v97 > v97 + 1)
      {
        goto LABEL_605;
      }

      *v88 = (v92 - (*v96 + *v97)) / (v57 - 2);
      ++v81;
      ++v87;
    }

    while (v81 != 16);
    v55 = 20 * v84;
    v56 = 20 * v82;
    v48 = v429;
    v53 = v429 + 24916;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v98 = (v48 + 36264);
  if (!*(v53 + 660) && *(v53 + 688) > 6.0 && (v36 + 4.0) < v30 && *v432 && (*(v53 + 86) & 0x80000000) == 0 && *(v48 + 104) > 2400)
  {
    v124 = 1;
  }

  *a11 = v124;
  v99 = *(v48 + 96);
  if (v99 != 2400 && v99 != 1750)
  {
    v100 = *(v48 + 5204);
    v101 = *(v48 + 5220);
    v102 = *(v48 + 5252);
    v441[2] = *(v48 + 5236);
    v441[3] = v102;
    *v441 = v100;
    v441[1] = v101;
    if (v441 + 4 < v441)
    {
      goto LABEL_605;
    }

    if (a10 < a9)
    {
      goto LABEL_605;
    }

    if (a10 - a9 <= 0x3F)
    {
      goto LABEL_605;
    }

    v103 = *(v48 + 5268);
    v104 = *(v48 + 5284);
    v105 = *(v48 + 5316);
    a9[2] = *(v48 + 5300);
    a9[3] = v105;
    *a9 = v103;
    a9[1] = v104;
    if (a9 + 4 < a9)
    {
      goto LABEL_605;
    }

    if (*v432)
    {
      goto LABEL_122;
    }

    goto LABEL_123;
  }

  if (*(v48 + 142))
  {
    __A = 0uLL;
    v443 = 0;
    isf_enc_amr_wb(v48, a9, a10, v441, v41, &__A, 0);
  }

  else
  {
    __A = 0uLL;
    v443 = 0;
    lsf_enc(v48, __x, 0, a9, a10, v441, v41, v37, 0, 0, &__A, 0, 100);
  }

  if (*(v48 + 130) != 1)
  {
    v41 = v427;
    if (*v432)
    {
      goto LABEL_122;
    }

LABEL_123:
    v107 = *(v48 + 5220);
    *(v48 + 24924) = *(v48 + 5204);
    *(v48 + 24940) = v107;
    v108 = *(v48 + 5252);
    *(v48 + 24956) = *(v48 + 5236);
    *(v48 + 24972) = v108;
    v106 = 1;
    goto LABEL_124;
  }

  v41 = v427;
  if (!*v432)
  {
    goto LABEL_123;
  }

  if (*(v48 + 140) == *(v48 + 36296))
  {
LABEL_122:
    v106 = 0;
    goto LABEL_124;
  }

  v106 = 0;
  *(v53 + 694) = 0;
LABEL_124:
  v109 = *(v48 + 104);
  v415 = (v48 + 36264);
  v417 = v55;
  v411 = v56;
  if (v109 && v109 != 2400 && v109 != 1750)
  {
    v121 = a12;
    if ((*(v48 + 142) || *(v48 + 130) == 1) && ((v106 & 1) != 0 || *(v48 + 36298) >= 20))
    {
      v122 = *(v48 + 36272);
      if (v122 >= 16401)
      {
        v123 = -1;
LABEL_163:
        *v98 = v123;
        goto LABEL_164;
      }

      if (v122 >= 13201)
      {
        v123 = 4;
        goto LABEL_163;
      }

      if (v122 >= 9601)
      {
        v123 = 3;
        goto LABEL_163;
      }

      if (v122 >= 8001)
      {
        v123 = 2;
        goto LABEL_163;
      }

      if (v122 >= 7201)
      {
        v123 = 1;
        goto LABEL_163;
      }

      *v98 = 0;
    }

LABEL_164:
    *(v53 + 1892) = 0;
    v125 = *(v53 + 1896) - a12 + 1;
    if (((*(v53 + 1896) - a12 + 1) & 0x8000) != 0)
    {
      v125 += *(v53 + 1894);
    }

    v425 = v53 + 1892;
    if (a12 < 1)
    {
      v153 = *a11;
    }

    else
    {
      v422.i64[0] = v48 + 36280;
      v420 = v48 + 36296;
      v410 = v48 + 36300;
      v409 = v48 + 36812;
      v126 = v48 + 26816;
      v127 = v48 + 27328;
      v423.i64[0] = v48 + 25624;
      v128 = v48;
      v129 = v48 + 26136;
      v130 = v48 + 27360;
      v131 = v48 + 26168;
      v132 = v128 + 28000;
      do
      {
        *(v53 + 696) = (*(v53 + 696) + 1) & 7;
        if (__x == 320)
        {
          v135 = (v422.i64[0] + 2 * v125);
          if (v135 < v422.i64[0])
          {
            goto LABEL_605;
          }

          if ((v135 + 1) > v420)
          {
            goto LABEL_605;
          }

          if (v135 > v135 + 1)
          {
            goto LABEL_605;
          }

          if (!*v135)
          {
            v136 = (v410 + (v125 << 6));
            if (v136 < v410)
            {
              goto LABEL_605;
            }

            v137 = (v126 + (v125 << 6));
            if (v137 < v126)
            {
              goto LABEL_605;
            }

            if (v127 < v137)
            {
              goto LABEL_605;
            }

            if (v136 > v409)
            {
              goto LABEL_605;
            }

            if (v409 - v136 < 0x40)
            {
              goto LABEL_605;
            }

            if (v127 - v137 <= 0x3F)
            {
              goto LABEL_605;
            }

            v138 = v136[1];
            *v137 = *v136;
            v137[1] = v138;
            v139 = v136[3];
            v137[2] = v136[2];
            v137[3] = v139;
            if (v137 + 4 < v137)
            {
              goto LABEL_605;
            }
          }
        }

        else if (__x == 256)
        {
          v133 = (v422.i64[0] + 2 * v125);
          if (v133 < v422.i64[0] || (v133 + 1) > v420 || v133 > v133 + 1)
          {
            goto LABEL_605;
          }

          if (*v133 == 1)
          {
            v134 = (v126 + (v125 << 6));
            if (v127 < v134 || v126 > v134 || (v127 - v134) < 61)
            {
              goto LABEL_605;
            }

            lsp_convert_poly(v134, 256, 0);
          }
        }

        v140 = (v126 + (v125 << 6));
        if (v140 < v126)
        {
          goto LABEL_605;
        }

        v141 = (v423.i64[0] + (*(v429 + 25612) << 6));
        if (v141 < v423.i64[0])
        {
          goto LABEL_605;
        }

        if (v129 < v141 || v140 > v127)
        {
          goto LABEL_605;
        }

        if (v127 - v140 < 0x40)
        {
          goto LABEL_605;
        }

        if (v129 - v141 <= 0x3F)
        {
          goto LABEL_605;
        }

        v144 = v140[2];
        v143 = v140[3];
        v145 = v140[1];
        *v141 = *v140;
        v141[1] = v145;
        v141[2] = v144;
        v141[3] = v143;
        if (v141 + 4 < v141)
        {
          goto LABEL_605;
        }

        v146 = (v127 + 4 * v125);
        if (v146 < v127)
        {
          goto LABEL_605;
        }

        v147 = (v129 + 4 * *(v429 + 25612));
        if (v147 < v129)
        {
          goto LABEL_605;
        }

        if (v131 < v147)
        {
          goto LABEL_605;
        }

        if (v146 > v130)
        {
          goto LABEL_605;
        }

        if (v130 - v146 < 4)
        {
          goto LABEL_605;
        }

        if (v131 - v147 <= 3)
        {
          goto LABEL_605;
        }

        *v147 = *v146;
        if (v147 + 1 < v147)
        {
          goto LABEL_605;
        }

        *(v429 + 25616) = 2 * (*(v429 + 25616) & 0x3FFFFFFFLL);
        v148 = (v130 + 80 * v125);
        if (v148 < v130)
        {
          goto LABEL_605;
        }

        v149 = v131 + 80 * *(v429 + 25612);
        if (v149 < v131)
        {
          goto LABEL_605;
        }

        if (v425 < v149)
        {
          goto LABEL_605;
        }

        if (v148 > v132)
        {
          goto LABEL_605;
        }

        if (v132 - v148 < 0x50)
        {
          goto LABEL_605;
        }

        if (v425 - v149 <= 0x4F)
        {
          goto LABEL_605;
        }

        memmove((v131 + 80 * *(v429 + 25612)), v148, 0x50uLL);
        if (v149 + 80 < v149)
        {
          goto LABEL_605;
        }

        v53 = v429 + 24916;
        v150 = (*(v429 + 25610) + 1);
        if (v150 >= 8)
        {
          LOWORD(v150) = 8;
        }

        *(v429 + 25610) = v150;
        if (*(v429 + 26810) == (v125 + 1))
        {
          v125 = 0;
        }

        else
        {
          ++v125;
        }

        v151 = v121--;
      }

      while (v151 > 1);
      v152 = (v129 + 4 * *(v429 + 25612));
      if (v152 < v129 || (v152 + 1) > v131 || v152 > v152 + 1)
      {
        goto LABEL_605;
      }

      v53 = v429 + 24916;
      v153 = *a11 | (*v152 > (*v436 * 4.0));
      *a11 = v153;
      v48 = v429;
    }

    if (v153 || (v232 = *(v53 + 694), v232 < 1))
    {
      v120 = 0;
      v154 = *v441;
      v155 = v441[1];
      v156 = v441[3];
      *(v48 + 24956) = v441[2];
      *(v48 + 24972) = v156;
      *(v48 + 24924) = v154;
      *(v48 + 24940) = v155;
      goto LABEL_225;
    }

    v233 = *(v53 + 696) & 7;
    *(v53 + 696) &= 7u;
    v234 = v48 + 25624;
    v235 = (v48 + 25624 + (v233 << 6));
    if (v235 < v48 + 25624)
    {
      goto LABEL_605;
    }

    v236 = v429 + 26136;
    if (v429 + 26136 < v235 || (v429 + 26136 - v235) <= 0x3F)
    {
      goto LABEL_605;
    }

    v237 = v235[1];
    v461 = *v235;
    v462 = v237;
    v238 = v235[3];
    v463 = v235[2];
    v464 = v238;
    v239 = *(v429 + 25616);
    if (v239)
    {
      v243 = 0;
    }

    else
    {
      v240 = (v429 + 26168 + 4 * (20 * v233));
      if (v240 < v429 + 26168 || v425 < v240 || v425 - v240 <= 0x4F)
      {
        goto LABEL_605;
      }

      v241 = v240[3];
      v445[2] = v240[2];
      v445[3] = v241;
      v445[4] = v240[4];
      v242 = v240[1];
      v445[0] = *v240;
      v445[1] = v242;
      v243 = 1;
    }

    v304 = (v236 + 4 * v233);
    if (v304 < v236)
    {
      goto LABEL_605;
    }

    v305 = v429 + 26168;
    if ((v304 + 1) > v429 + 26168 || v304 > v304 + 1)
    {
      goto LABEL_605;
    }

    v306 = *v304;
    v307 = 0.2;
    v308 = *v304 * 0.2;
    if (v232 == 1)
    {
      v120 = 1;
      v309 = v429;
    }

    else
    {
      v310 = 0;
      v311 = v306 * 1.03;
      v312 = v306 * 0.7;
      v313 = 1;
      v307 = 0.2;
      v120 = 1;
      do
      {
        LOWORD(v233) = v233 - 1;
        if ((v233 & 0x8000u) != 0)
        {
          LOWORD(v233) = 7;
        }

        v314 = (v236 + 4 * v233);
        v315 = v314 + 1;
        if (v314 < v236 || v315 > v305 || v314 > v315)
        {
          goto LABEL_605;
        }

        v318 = *v314;
        if (*v314 >= v311 || v318 <= v312)
        {
          v309 = v429;
        }

        else
        {
          v320 = &W_DTX_HO[v310 + 1];
          if (v320 < W_DTX_HO)
          {
            goto LABEL_605;
          }

          v321 = &W_DTX_HO[v310 + 2];
          if (v321 > HO_ATT)
          {
            goto LABEL_605;
          }

          if (v320 > v321)
          {
            goto LABEL_605;
          }

          v322 = (v234 + (v233 << 6));
          if (v322 < v234)
          {
            goto LABEL_605;
          }

          v323 = (&v461 + 4 * v120);
          if (v323 < &v461)
          {
            goto LABEL_605;
          }

          if (v323 > v493)
          {
            goto LABEL_605;
          }

          if (v322 > v236)
          {
            goto LABEL_605;
          }

          if (v236 - v322 < 0x40)
          {
            goto LABEL_605;
          }

          if (v120 == 8)
          {
            goto LABEL_605;
          }

          v324 = W_DTX_HO[v313];
          v325 = v322[1];
          *v323 = *v322;
          *(v323 + 1) = v325;
          v326 = v322[3];
          *(v323 + 2) = v322[2];
          *(v323 + 3) = v326;
          v309 = v429;
          if (v323 + 16 < v323)
          {
            goto LABEL_605;
          }

          if (((v239 >> v313) & 1) == 0)
          {
            v327 = (v305 + 80 * v233);
            if (v327 < v305)
            {
              goto LABEL_605;
            }

            v328 = &v445[5 * v243];
            if (v328 < v445)
            {
              goto LABEL_605;
            }

            if (v328 > __dst)
            {
              goto LABEL_605;
            }

            if (v327 > v425)
            {
              goto LABEL_605;
            }

            if (v425 - v327 < 0x50)
            {
              goto LABEL_605;
            }

            if ((80 * v243 - 561) <= 0x4F)
            {
              goto LABEL_605;
            }

            v329 = v327[3];
            *(v328 + 2) = v327[2];
            *(v328 + 3) = v329;
            *(v328 + 4) = v327[4];
            v330 = v327[1];
            *v328 = *v327;
            *(v328 + 1) = v330;
            v309 = v429;
            if (v328 + 20 < v328)
            {
              goto LABEL_605;
            }

            ++v243;
          }

          v308 = v308 + (v324 * v318);
          v307 = v307 + v324;
          ++v120;
        }

        ++v313;
        ++v310;
      }

      while (v313 < v232);
    }

    *v436 = v308 / v307;
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, &__C, 1, 2uLL);
    v444 = 0;
    v331 = v120;
    if (v120 <= 0)
    {
      v339 = v444;
      v352 = v120;
      v351 = v427;
    }

    else
    {
      v412 = v243;
      v332 = 0;
      v333 = flt_19B0B0020[*(v309 + 140) == 256];
      v334 = flt_19B0B0028[*(v309 + 140) == 256];
      if (*(v309 + 140) == 256)
      {
        v335 = 6400.0;
      }

      else
      {
        v335 = 8000.0;
      }

      v336 = flt_19B0B0030[*(v309 + 140) == 256];
      v337 = *(&__C + 1);
      LODWORD(v338) = __C;
      v339 = v444;
      v423.i16[0] = HIWORD(v444);
      v340 = &v461;
      v422.i16[0] = v444;
      do
      {
        v341 = (&v461 + 4 * v332);
        if (v332 > 7)
        {
          goto LABEL_606;
        }

        if (v341 > v493 || &v461 > v341)
        {
          goto LABEL_606;
        }

        for (k = 0; k != 64; k += 4)
        {
          *(v459 + k) = v336 * acosf(*(v340 + k));
        }

        v344 = *v459;
        v345 = ((v335 - *(&v460 + 3)) + v334) * ((v335 - *(&v460 + 3)) + v334);
        *(v458 + v332) = v345;
        v346 = v345 + ((v344 - v333) * (v344 - v333));
        v347 = v459 + 1;
        v348 = 15;
        do
        {
          v349 = (*v347 - *(v347 - 1)) - v333;
          v346 = v346 + (v349 * v349);
          ++v347;
          --v348;
        }

        while (v348);
        v350 = v346 * 0.058823;
        *(v458 + v332) = v350;
        v351 = v427;
        if (v350 <= v338)
        {
          if (v350 > v337)
          {
            *(&__C + 1) = v350;
            v423.i16[0] = v332;
            v337 = v350;
          }

          v350 = v338;
        }

        else
        {
          __C = __PAIR64__(LODWORD(v338), LODWORD(v350));
          v422.i16[0] = v332;
          v423.i16[0] = v339;
          v339 = v332;
          v337 = v338;
        }

        ++v332;
        v340 += 4;
        v338 = v350;
      }

      while (v332 != v120);
      HIWORD(v444) = v423.i16[0];
      LOWORD(v444) = v422.i16[0];
      v352 = v120;
      v243 = v412;
      if (v120 == 1)
      {
        v453 = v461;
        v454 = v462;
        v455 = v463;
        v456 = v464;
LABEL_553:
        v375 = 0;
        v376 = 0.0;
        v377 = 0.0;
        do
        {
          v378 = (v441 + v375);
          v379 = v441 + v375 + 4;
          if ((v441 + v375) < v441 || v379 > v351 || v378 > v379)
          {
            goto LABEL_605;
          }

          v382 = vabds_f32(*(&v453 + v375), *v378);
          v377 = v377 + v382;
          if (v382 > v376)
          {
            v376 = v382;
          }

          v375 += 4;
        }

        while (v375 != 64);
        v383 = (v429 + 24924);
        if (v377 > 0.4 || v376 > 0.1)
        {
          v393 = &v453;
          v394 = 16;
          do
          {
            if (v383 + 1 > v432 || v383 > v383 + 1)
            {
              goto LABEL_605;
            }

            v396 = *v393++;
            *v383++ = v396;
            --v394;
          }

          while (v394);
        }

        else
        {
          for (m = 0; m != 64; m += 4)
          {
            v385 = (v441 + m);
            v386 = v441 + m + 4;
            v388 = (v441 + m) < v441 || v386 > v351 || v385 > v386;
            v389 = &v383[m / 4];
            v390 = v429 + 24928 + m;
            if (v388 || v390 > v432 || v389 > v390)
            {
              goto LABEL_605;
            }

            *v389 = (*v385 * 0.2) + (*(&v453 + m) * 0.8);
          }
        }

        if (v243 < 1)
        {
          goto LABEL_147;
        }

        v397 = 0;
        v398 = v445;
        do
        {
          v399 = 0.0;
          v400 = v398;
          v401 = v243;
          do
          {
            v402 = v400 + 1;
            if (v400 < v445 || v402 > __dst || v400 > v402)
            {
              goto LABEL_605;
            }

            v405 = *v400;
            v400 += 20;
            v399 = v405 + v399;
            *(&v447 + v397) = v399;
            --v401;
          }

          while (v401);
          *(&v447 + v397++) = (v399 / v243) + (*v436 * -2.0);
          v398 = (v398 + 4);
        }

        while (v397 != 20);
        v406 = v447;
        v48 = v429;
        *(v429 + 36912) = v448;
        v407 = v450;
        *(v429 + 36928) = v449;
        *(v429 + 36944) = v407;
        *(v429 + 36960) = v451;
        *(v429 + 36896) = v406;
        if (v48 + 36976 < v48 + 36896)
        {
          goto LABEL_605;
        }

        goto LABEL_225;
      }

      v331 = v120;
      if (v120 >= 4)
      {
        v363 = 0;
        v364 = &v461 + 4 * SHIWORD(v444);
        v365 = &v461;
        while (1)
        {
          v366 = 0.0;
          v367 = v365;
          v368 = v120;
          do
          {
            v369 = v367 + 1;
            if (v367 < &v461 || v369 > v493 || v367 > v369)
            {
              goto LABEL_605;
            }

            v372 = *v367;
            v367 += 16;
            v366 = v372 + v366;
            *(&v453 + v363) = v366;
            --v368;
          }

          while (v368);
          v373 = &v461 + 16 * v339 + v363;
          if (v373 < &v461)
          {
            break;
          }

          if (v373 + 1 > v493)
          {
            break;
          }

          if (v373 > v373 + 1)
          {
            break;
          }

          v374 = v364 + v363;
          if (v374 < &v461 || v374 + 1 > v493 || v374 > v374 + 1)
          {
            break;
          }

          *(&v453 + v363++) = (v366 - (*v373 + *v374)) / (v120 - 2);
          v365 = (v365 + 4);
          if (v363 == 16)
          {
            goto LABEL_553;
          }
        }

        while (1)
        {
LABEL_605:
          __break(0x5519u);
LABEL_606:
          HIWORD(v444) = v423.i16[0];
          v408 = v422.i16[0];
LABEL_604:
          LOWORD(v444) = v408;
        }
      }
    }

    v353 = 0;
    v354 = &v461;
    while (1)
    {
      v355 = 0.0;
      if (v331 >= 1)
      {
        v356 = v354;
        v357 = v120;
        do
        {
          v358 = v356 + 1;
          if (v356 < &v461 || v358 > v493 || v356 > v358)
          {
            goto LABEL_605;
          }

          v361 = *v356;
          v356 += 16;
          v355 = v361 + v355;
          *(&v453 + v353) = v355;
          --v357;
        }

        while (v357);
      }

      v362 = &v461 + 16 * v339 + v353;
      if (v362 < &v461 || v362 + 1 > v493 || v362 > v362 + 1)
      {
        goto LABEL_605;
      }

      *(&v453 + v353++) = (v355 - *v362) / (v352 - 1);
      v354 = (v354 + 4);
      if (v353 == 16)
      {
        goto LABEL_553;
      }
    }
  }

  if (*(v48 + 96) >= 1)
  {
    *(v48 + 36812) = 0;
    goto LABEL_131;
  }

  if (*(v48 + 36812) < 3 || *(v53 + 88) < (*v53 * 1.5))
  {
LABEL_131:
    v110 = 0;
    v111 = v48 + 24928;
    v112 = *(v40 + 377);
    do
    {
      v113 = (v48 + 24924 + v110);
      v114 = v111 + v110 > v432 || v113 > v111 + v110;
      v115 = (v441 + v110);
      v116 = v441 + v110 + 4;
      if (v114 || v115 < v441 || v116 > v41 || v115 > v116)
      {
        goto LABEL_605;
      }

      *v113 = (*v115 * 0.1) + (*v113 * v112);
      v110 += 4;
    }

    while (v110 != 64);
    v120 = 0;
LABEL_147:
    v48 = v429;
    goto LABEL_225;
  }

  v120 = 0;
LABEL_225:
  if (*(v48 + 142))
  {
    if (*v437 < v437[2])
    {
      goto LABEL_605;
    }

    isp2a((v429 + 24924), *v437, v437[1]);
  }

  else
  {
    __A = *v437;
    v443 = v437[2];
    lsp2a_stab(v48 + 24924, &__A);
  }

  if (__x > 0x7F)
  {
    v157 = 1;
    v158 = 1;
    do
    {
      v159 = *v437;
      v160 = v437[2];
      v161 = (*v437 + 68 * v157);
      if (*v437 < v160 || v161 < v160)
      {
        goto LABEL_605;
      }

      v163 = v437[1];
      if (v163 < v161 || v159 > v163)
      {
        goto LABEL_605;
      }

      if (v163 - v159 < 0x44)
      {
        goto LABEL_605;
      }

      if (v163 - v161 <= 0x43)
      {
        goto LABEL_605;
      }

      memmove(v161, v159, 0x44uLL);
      if (v161 + 68 < v161)
      {
        goto LABEL_605;
      }

      v157 = ++v158;
    }

    while ((__x >> 6) > v158);
    if (__x > 320)
    {
      goto LABEL_605;
    }
  }

  if (*v437 < v437[2])
  {
    goto LABEL_605;
  }

  vDSP_conv(v413 - 16, 1, (*v437 + 64), -1, v493, 1, __x, 0x11uLL);
  v166 = v429;
  v167 = v429 + 24916;
  if (__x >= 1)
  {
    if (4 * __x > (&v494 - v493))
    {
      goto LABEL_605;
    }

    memcpy(__dst, v493, 4 * __x);
    if (&__dst[__x] < __dst)
    {
      goto LABEL_605;
    }
  }

  v168 = 0.6;
  if (*(v429 + 130) == 1)
  {
    v170 = *v415;
    if ((v170 & 0x8000000000000000) == 0)
    {
      v171 = &HO_ATT[v170];
      if (v171 < HO_ATT || v171 + 1 > &W_HIST || v171 > v171 + 1)
      {
        goto LABEL_605;
      }

      v168 = *v171;
      v166 = v429;
      v167 = v429 + 24916;
    }
  }

  else if (!*(v429 + 130))
  {
    v169 = *(v429 + 140);
    v165.i32[0] = 1.0;
    goto LABEL_270;
  }

  *v165.i32 = 1.0 / (((v168 / 6.0) * 8.0) + 1.0);
  if (*v165.i32 < v168)
  {
    *v165.i32 = v168;
  }

  if (*(v166 + 140) <= 0)
  {
    v438 = v165;
    goto LABEL_276;
  }

  v172 = *(v166 + 140);
  v169 = *(v166 + 140);
  v173 = __dst;
  do
  {
    v174 = v173 + 1;
    if (v173 < __dst || v174 > &v447 || v173 > v174)
    {
      goto LABEL_605;
    }

    *v173 = *v165.i32 * *v173;
    ++v173;
    --v172;
  }

  while (v172);
  v166 = v429;
  v167 = v429 + 24916;
LABEL_270:
  v438 = v165;
  if (v169 >= 1)
  {
    if (v169 >= 0x141)
    {
      goto LABEL_605;
    }

    v177 = v169;
    memcpy(__b, __dst, v177 * 4);
    if (&__b[v177] < __b)
    {
      goto LABEL_605;
    }
  }

  if (*(v166 + 140) == 320)
  {
    *&__A = __b;
    *(&__A + 1) = &v453;
    v443 = __b;
    modify_Fs(&__A, 320, 16000, __b, &v453, 12800, a16, a17, 0);
  }

LABEL_276:
  v178 = (v167 + 660);
  fft_rel(__b, 256, 8);
  v179 = 0;
  for (n = 0; n != -20; --n)
  {
    v181 = &__b[n + 255];
    v182 = &__b[n + 256];
    if (&__b[v179 + 2] > &v453 || v181 < __b || v182 > &v453 || v181 > v182)
    {
      goto LABEL_605;
    }

    v186 = (*v181 * *v181) + (__b[v179 + 1] * __b[v179 + 1]);
    *(&v447 + v179 * 4) = (v186 + v186) * 0.0039062;
    ++v179;
  }

  v187 = v415 + 356;
  v188 = &v415[40 * *(v429 + 25030) + 356];
  if (v188 < v415 + 356)
  {
    goto LABEL_605;
  }

  v189 = v429 + 37616;
  if (v429 + 37616 < v188)
  {
    goto LABEL_605;
  }

  if ((v429 + 37616 - v188) <= 0x4F)
  {
    goto LABEL_605;
  }

  v190 = v450;
  *(v188 + 2) = v449;
  *(v188 + 3) = v190;
  *(v188 + 4) = v451;
  v191 = v448;
  *v188 = v447;
  *(v188 + 1) = v191;
  if (v188 + 40 < v188)
  {
    goto LABEL_605;
  }

  LODWORD(__A) = -1;
  vDSP_dotpr(v493, 1, v493, 1, &__A, __x);
  v192 = log10(((*&__A / v35) + 0.1));
  v193 = *(v429 + 25030);
  v194 = (v49 + 4 * v193);
  v195 = v438;
  if (v194 < v49 || v194 + 1 > v178 || v194 > v194 + 1)
  {
    goto LABEL_605;
  }

  v196 = v192;
  v197 = v196 / 0.30103;
  *v194 = v197;
  v198 = v429;
  v199 = *(v429 + 96);
  if (v199 == 2400 || v199 == 1750)
  {
    v200 = *(v429 + 25028);
    if (v200 - 1 > *(v429 + 25576))
    {
      goto LABEL_345;
    }

    v201 = 0;
    v202 = v193;
    v203 = *(v429 + 25028);
    v204 = (v415 + 356);
    do
    {
      v205 = v204;
      v206 = v200;
      if (v200 >= 1)
      {
        while (v205 >= v187 && (v205 + 1) <= v189 && v205 <= v205 + 1)
        {
          v207 = *v205;
          v205 += 20;
          *(&v447 + v201) = v207 + *(&v447 + v201);
          if (!--v206)
          {
            goto LABEL_304;
          }
        }

        goto LABEL_605;
      }

LABEL_304:
      v208 = &v187[2 * v411 + 2 * v201];
      v209 = v208 + 1;
      v211 = v208 < v187 || v209 > v189 || v208 > v209;
      v212 = &v187[2 * v417 + 2 * v201];
      v213 = v212 + 1;
      if (v211 || v212 < v187 || v213 > v189 || v212 > v213)
      {
        goto LABEL_605;
      }

      *(&v447 + v201) = (*(&v447 + v201) - (*v208 + *v212)) / (v200 - 2);
      ++v201;
      ++v204;
    }

    while (v201 != 20);
    if (v200 < 1)
    {
      v197 = NAN;
    }

    else
    {
      v217 = 0.0;
      v218 = &W_HIST;
      v219 = 0.0;
      do
      {
        v220 = v218 + 1;
        v222 = v218 < &W_HIST || v220 > CNG_details_codebook || v218 > v220;
        v223 = (v49 + 4 * v202);
        v224 = v223 + 1;
        if (v222 || v223 < v49 || v224 > v178 || v223 > v224)
        {
          goto LABEL_605;
        }

        v228 = *v218++;
        v229 = v228;
        if (--v202 < 0)
        {
          v202 = 7;
        }

        v217 = v217 + (v229 * *v223);
        v219 = v219 + v229;
        --v203;
      }

      while (v203);
      v197 = v217 / v219;
    }

    v198 = v429;
LABEL_345:
    if (*(v198 + 130))
    {
      v195.i32[0] = 1.5;
      if (*(v198 + 130) == 1)
      {
        v230 = *v415;
        if (v230 < 0)
        {
          v231 = &dword_19B3A0FE4;
        }

        else
        {
          v231 = &ENR_ATT[2 * v230];
          if (v231 < ENR_ATT || v231 + 2 > &subband_search_offsets_13p2kbps_Har || v231 > v231 + 2)
          {
            goto LABEL_605;
          }
        }

        v195.i32[0] = *v231;
        v198 = v429;
      }

      v197 = v197 - *v195.i32;
    }

    if (*(v198 + 142))
    {
      v244 = 6;
    }

    else
    {
      v244 = 7;
    }

    if (*(v198 + 142))
    {
      v245 = 63;
    }

    else
    {
      v245 = 127;
    }

    if (*(v198 + 142))
    {
      v246 = 2.625;
    }

    else
    {
      v246 = 5.25;
    }

    if (v245 >= ((v197 + 2.0) * v246))
    {
      v245 = ((v197 + 2.0) * v246);
    }

    v247 = v245 & ~(v245 >> 31);
    if (*v432)
    {
      v248 = *(v429 + 25002);
      if (v248 + 1 < v247)
      {
        if (*a11 == 1)
        {
          v247 = v248 + ((v247 - v248) * 0.85);
        }

        else
        {
          LOWORD(v247) = v248 + 1;
        }
      }
    }

    v439 = v195;
    *(v429 + 25002) = v247;
    if (v247)
    {
      v249 = v247;
    }

    else
    {
      v249 = -5;
    }

    push_indice(v198, 1387, v247, v244);
    *v250.i32 = exp2(((v249 / v246) + -2.0));
    *(v429 + 25004) = v250.i32[0];
    v414 = 0.0;
    if (*(v198 + 96) == 2400)
    {
      v433 = v250;
      v251 = 0;
      v252 = log10(((*v250.i32 * v35) + 0.1));
      *v253.i32 = v252 / 0.30103;
      v426 = vdupq_lane_s32(v439, 0);
      v428 = vdupq_lane_s32(v433, 0);
      v414 = v252 / 0.30103;
      v422 = vdupq_n_s32(0x3DCCCCCDu);
      v423 = vdupq_lane_s32(v253, 0);
      v418 = vdupq_n_s32(0x3E9A209Bu);
      v421 = vdupq_n_s32(0x3E4CCCCDu);
      do
      {
        v254.i64[0] = 0xC0000000C0000000;
        v254.i64[1] = 0xC0000000C0000000;
        v255 = vmlaq_f32(*(&v447 + v251), v254, v428);
        v256 = vbslq_s8(vcltzq_f32(v255), v421, vaddq_f32(v255, v422));
        v440 = vcvtq_f64_f32(*v256.f32);
        __xa = vcvt_hight_f64_f32(v256);
        v434 = log10(__xa.f64[1]);
        v257.f64[0] = log10(__xa.f64[0]);
        v257.f64[1] = v434;
        v435 = v257;
        __xa.f64[0] = log10(v440.f64[1]);
        v258.f64[0] = log10(v440.f64[0]);
        v258.f64[1] = __xa.f64[0];
        v259 = vsubq_f32(vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v258), v435), v418), v426);
        *(&v447 + v251) = vsubq_f32(v423, vbicq_s8(v259, vcltzq_f32(v259)));
        v251 += 16;
      }

      while (v251 != 80);
      v260 = 0;
      v261 = 0;
      v262 = 9999.0;
      v263 = CNG_details_codebook;
      do
      {
        v264 = &CNG_details_codebook[20 * v260];
        v265 = 0.0;
        v266 = &v447;
        v267 = v263;
        v268 = 20;
        do
        {
          if (v267 < v264 || v267 + 1 > v264 + 20 || v267 > v267 + 1)
          {
            goto LABEL_605;
          }

          v269 = *v266++;
          v270 = v269;
          v271 = *v267++;
          v265 = v265 + ((v270 - v271) * (v270 - v271));
          --v268;
        }

        while (v268);
        if (v265 < v262)
        {
          v261 = v260;
          v262 = v265;
        }

        ++v260;
        v263 += 20;
      }

      while (v260 != 64);
      push_indice(v429, 1390, v261, 6);
      v272 = 0;
      v273 = &CNG_details_codebook[20 * v261];
      do
      {
        v274 = &v273[v272];
        v275 = &v273[v272 + 1];
        v277 = &v273[v272] < v273 || v275 > (v273 + 20) || v274 > v275;
        v278 = (a13 + v272 * 4);
        v279 = a13 + v272 * 4 + 4;
        if (v277 || v278 < a13 || v279 > a14 || v278 > v279)
        {
          goto LABEL_605;
        }

        *v278 = *v274;
        ++v272;
      }

      while (v272 != 20);
      v198 = v429;
    }

    if (!*a11)
    {
      v283 = *(v429 + 25004);
      if (v283 < (*v436 * 1.5))
      {
        v284 = (*(v429 + 25612) + 1) & 7;
        *(v429 + 25612) = v284;
        v285 = (v198 + 25624 + 64 * v284);
        if (v285 >= v198 + 25624)
        {
          v286 = v429 + 26136;
          if (v429 + 26136 >= v285 && (v429 + 26136 - v285) > 0x3F)
          {
            v287 = *v441;
            v288 = v441[1];
            v289 = v441[3];
            v285[2] = v441[2];
            v285[3] = v289;
            *v285 = v287;
            v285[1] = v288;
            if (v285 + 4 >= v285)
            {
              v290 = (v286 + 4 * v284);
              if (v290 >= v286)
              {
                v291 = v429 + 26168;
                if ((v290 + 1) <= v429 + 26168 && v290 <= v290 + 1)
                {
                  *v290 = v283;
                  v198 = v429;
                  if (*(v429 + 96) != 2400)
                  {
                    goto LABEL_437;
                  }

                  v292 = 0;
                  v293 = (v283 + v283);
                  do
                  {
                    v294 = (a13 + v292);
                    v295 = a13 + v292 + 4;
                    if (a13 + v292 < a13 || v295 > a14 || v294 > v295)
                    {
                      goto LABEL_605;
                    }

                    v298 = exp2((v414 - *v294)) + v293;
                    *(&v447 + v292) = v298;
                    v292 += 4;
                  }

                  while (v292 != 80);
                  v299 = (v291 + 80 * v284);
                  if (v299 >= v291)
                  {
                    v198 = v429;
                    if (v429 + 26808 >= v299 && (v429 + 26808 - v299) > 0x4F)
                    {
                      v300 = v450;
                      v299[2] = v449;
                      v299[3] = v300;
                      v299[4] = v451;
                      v301 = v448;
                      *v299 = v447;
                      v299[1] = v301;
                      if (v299 + 5 >= v299)
                      {
LABEL_437:
                        v302 = (*(v429 + 25610) + 1);
                        if (v302 >= 8)
                        {
                          LOWORD(v302) = 8;
                        }

                        *(v429 + 25610) = v302;
                        goto LABEL_440;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_605;
      }
    }

LABEL_440:
    v199 = *(v198 + 96);
    if (v199 == 1750)
    {
      push_indice(v198, 1472, 0, 1);
      v199 = *(v198 + 96);
    }
  }

  if (v199 == 2400)
  {
    push_indice(v198, 3, *(v198 + 140) == 320, 1);
    v199 = *(v198 + 96);
    if (v199 == 2400)
    {
      v303 = *(v429 + 28000);
      if (v303 >= 7)
      {
        LOWORD(v303) = 7;
      }

      push_indice(v198, 1388, v303, 3);
      v415[274] = v120;
      push_indice(v198, 2, 0, 1);
      if (*(v198 + 56) <= 31999)
      {
        push_indice(v198, 1389, 0, 1);
        *a15 = 0;
      }

      v199 = *(v198 + 96);
    }
  }

  if (v199 == 2400 || v199 == 1750)
  {
    *(v429 + 25576) = 0;
    *(v429 + 25030) = -1;
    v415[16] = *(v198 + 140);
  }

  else
  {
    ++*v178;
  }
}

float *CNG_exc(uint64_t a1, int a2, float *a3, __int16 *a4, void **a5, float **a6, float *a7, uint64_t a8, _WORD *a9, _WORD *a10, float *a11, unint64_t a12, __int16 a13, _WORD *a14, __int16 a15, uint64_t a16, unint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _WORD *a23, _WORD *a24, char **a25, __int16 a26, const vDSP_DFT_SetupStruct *a27, const vDSP_DFT_SetupStruct *a28)
{
  v164[0] = *MEMORY[0x1E69E9840];
  v153 = NAN;
  v154 = NAN;
  memset(__b, 255, sizeof(__b));
  memset(v162, 255, sizeof(v162));
  *&v34 = -1;
  *(&v34 + 1) = -1;
  v161 = v34;
  v160 = v34;
  v159 = v34;
  v158 = v34;
  v157 = v34;
  v156[4] = v34;
  v156[3] = v34;
  v156[2] = v34;
  v156[1] = v34;
  v156[0] = v34;
  if (a2 == 256)
  {
    v35 = 231;
  }

  else
  {
    v35 = 289;
  }

  v148 = a2;
  if (!*a9)
  {
    if (a1)
    {
      v36 = *a3;
    }

    else
    {
      v37 = a5[1];
      v38 = (*a5 - 4 * v35);
      if (v38 > v37 || a5[2] > v38 || v35 > (v37 - v38) >> 2)
      {
        goto LABEL_166;
      }

      LODWORD(__C[0]) = -1;
      vDSP_dotpr(v38, 1, v38, 1, __C, v35);
      v36 = *__C / v35;
      *a3 = v36;
    }

    *a7 = v36;
  }

  if (!a8 || a8 == 1750 || a8 == 2400)
  {
    if (*a14)
    {
      if (a1 == 2400 || a1 == 1750)
      {
        *a14 = 0;
      }

      *a7 = *a3;
    }

    else
    {
      *a7 = (*a7 * 0.8) + (*a3 * 0.2);
    }
  }

  else
  {
    if (!a13 && !*a14)
    {
      v70 = *a7;
      v71 = *a3;
      if (a15 < 3 || v71 < (v70 * 1.5))
      {
        v72 = v71 * 0.2;
        v73 = 0.8;
      }

      else
      {
        v72 = v71 * 0.05;
        v73 = 0.95;
      }

      *a7 = v72 + (v70 * v73);
      goto LABEL_26;
    }

    *a7 = *a3;
    *a14 = 0;
  }

  if (a13 == 1)
  {
    *a14 = 1;
  }

LABEL_26:
  if (a2 >= 1)
  {
    v39 = 0;
    v40 = a6[2];
    v41 = *a4;
    do
    {
      v41 = 31821 * v41 + 13849;
      *a4 = v41;
      v42 = &(*a6)[v39];
      v44 = v42 + 1 <= a6[1] && v42 <= v42 + 1 && v42 >= v40;
      if (!v44)
      {
        goto LABEL_166;
      }

      *v42 = v41;
      ++v39;
    }

    while (a2 != v39);
    LOWORD(v45) = 0;
    do
    {
      v46 = 31821 * *a10 + 13849;
      *a10 = v46;
      v47 = a6[1];
      v48 = &(*a6)[v45];
      if (v48 > v47)
      {
        goto LABEL_166;
      }

      if ((v47 - v48) < 253 || a6[2] > v48)
      {
        goto LABEL_166;
      }

      v50 = *a7 + ((*a7 * v46) * 0.000011);
      v51 = v45;
      LODWORD(__C[0]) = -1;
      vDSP_dotpr(v48, 1, v48, 1, __C, 0x40uLL);
      if (v50 >= 0.0)
      {
        v52 = v50 * 64.0;
      }

      else
      {
        v52 = 0.64;
      }

      v154 = sqrtf(v52 / (*__C + 0.01));
      MEMORY[0x19EAE6090](&(*a6)[v51], 1, &v154, &(*a6)[v51], 1, 64);
      v45 = (v51 + 64);
    }

    while (v45 < v148);
  }

  if (a26 == 1)
  {
    v53 = *a6;
    v54 = a6[1];
    if (*a6 > v54)
    {
      goto LABEL_166;
    }

    if (a6[2] > v53)
    {
      goto LABEL_166;
    }

    v55 = 4 * v148;
    if (v55 > v54 - v53)
    {
      goto LABEL_166;
    }

    v57 = *a5;
    v56 = a5[1];
    if (*a5 > v56)
    {
      goto LABEL_166;
    }

    if (a5[2] > v57)
    {
      goto LABEL_166;
    }

    if (v55 > &v56[-v57])
    {
      goto LABEL_166;
    }

    memcpy(*a5, v53, 4 * v148);
    if (v57 > v57 + v55)
    {
      goto LABEL_166;
    }
  }

  else
  {
    v58 = *a6;
    v59 = a6[1];
    if (*a6 > v59)
    {
      goto LABEL_166;
    }

    if ((v59 - v58) < 0x500)
    {
      goto LABEL_166;
    }

    if (a6[2] > v58)
    {
      goto LABEL_166;
    }

    v61 = *a25;
    v60 = a25[1];
    if (*a25 > v60)
    {
      goto LABEL_166;
    }

    if (a25[2] > v61)
    {
      goto LABEL_166;
    }

    if ((v60 - v61) < 0x500)
    {
      goto LABEL_166;
    }

    memcpy(*a25, v58, 0x500uLL);
    if (v61 >= v61 + 1280)
    {
      goto LABEL_166;
    }

    v62 = v148;
    v63 = log10(((*a3 * v148) + 0.1));
    if (a1 == 2400 && !*a23)
    {
      v64 = 0;
      *&v63 = v63;
      *&v63 = *&v63 / 0.30103;
      v140 = vdupq_lane_s32(*&v63, 0);
      do
      {
        v65 = vsubq_f32(v140, *(a16 + v64));
        v146 = vcvtq_f64_f32(*v65.f32);
        __xa = vcvt_hight_f64_f32(v65);
        __N = exp2(__xa.f64[1]);
        *&v66 = exp2(__xa.f64[0]);
        *(&v66 + 1) = __N;
        *__Na = v66;
        __xa.f64[0] = exp2(v146.f64[1]);
        v67.f64[0] = exp2(v146.f64[0]);
        v67.f64[1] = __xa.f64[0];
        *(&v157 + v64) = vcvt_hight_f32_f64(vcvt_f32_f64(v67), *__Na);
        v64 += 16;
      }

      while (v64 != 80);
      if (*a9)
      {
        goto LABEL_68;
      }

      v74 = v160;
      *(a17 + 32) = v159;
      *(a17 + 48) = v74;
      *(a17 + 64) = v161;
      v75 = v158;
      *a17 = v157;
      *(a17 + 16) = v75;
      if (a17 + 80 < a17)
      {
        goto LABEL_166;
      }

      if (!*a23)
      {
LABEL_68:
        v68 = v160;
        *(a18 + 32) = v159;
        *(a18 + 48) = v68;
        *(a18 + 64) = v161;
        v69 = v158;
        *a18 = v157;
        *(a18 + 16) = v69;
        if (a18 + 80 < a18)
        {
          goto LABEL_166;
        }
      }
    }

    v152 = 0.9;
    vDSP_vintb(a18, 1, a17, 1, &v152, a17, 1, 0x14uLL);
    v76 = *a6;
    v77 = a6[1];
    if (*a6 > v77)
    {
      goto LABEL_166;
    }

    if (a6[2] > v76)
    {
      goto LABEL_166;
    }

    __x = 4 * v148;
    if (__x > v77 - v76)
    {
      goto LABEL_166;
    }

    if (__x > 0x500)
    {
      goto LABEL_166;
    }

    v78 = __memcpy_chk();
    if (v78 > v78 + __x)
    {
      goto LABEL_166;
    }

    if (v148 == 320)
    {
      __C[0] = __b;
      __C[1] = v164;
      __C[2] = __b;
      modify_Fs(__C, 320, 16000, __b, v164, 12800, a21, a22, 0);
    }

    memset(__C, 255, sizeof(__C));
    __Z.realp = __C;
    __Z.imagp = &__C[64];
    vDSP_ctoz(__b, 2, &__Z, 1, 0x80uLL);
    vDSP_DFT_Execute(a27, __C, &__C[64], __b, &__b[64]);
    v79 = 0;
    v80 = 0;
    *__C = __b[0].real;
    *&__C[64] = __b[64].real;
    do
    {
      *(__C + v79 + 4) = *(&__b[0].imag + v79);
      v81 = (&__C[127] + v80 + 4);
      v82 = (&__C[128] + v80);
      if (v82 > v156 || v81 > v82)
      {
        goto LABEL_166;
      }

      *v81 = *(&__b[64].imag + v79);
      v80 -= 4;
      v79 += 4;
    }

    while (v80 != -508);
    v150 = 1056964608;
    MEMORY[0x19EAE6090](__C, 1, &v150, __b, 1, 256);
    v84 = 0;
    for (i = 0; i != -80; i -= 4)
    {
      v86 = (&__b[127].imag + i);
      v87 = (&__b[128] + i);
      if (&__b[1] + v84 > v164 || v86 < __b || v87 > v164 || v86 > v87)
      {
        goto LABEL_166;
      }

      v91 = (*v86 * *v86) + (*(&__b[0].imag + v84) * *(&__b[0].imag + v84));
      *(&v157 + v84) = (v91 + v91) * 0.0039062;
      v84 += 4;
    }

    v92 = 0;
    v93 = a7;
    v94 = vld1q_dup_f32(v93);
    v95.i64[0] = 0x4000000040000000;
    v95.i64[1] = 0x4000000040000000;
    do
    {
      v96 = vsubq_f32(vmlaq_f32(*(a17 + v92 * 16), v95, v94), *(&v157 + v92 * 16));
      v156[v92++] = vbicq_s8(v96, vcltzq_f32(v96));
    }

    while (v92 != 5);
    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, v162, 1, 0x14uLL);
    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, __b, 1, 0x100uLL);
    v97 = 0;
    v98 = 0;
    v99 = *a24;
    do
    {
      v100 = (__b + v97);
      v99 = 31821 * v99 + 13849;
      if (&__b[1] + v97 > v164 || (v101 = (&__b[127].imag + v98), v100[1] = v99, v99 = 31821 * v99 + 13849, v101 < __b) || (v102 = (&__b[128] + v98), v102 > v164) || v101 > v102)
      {
        *a24 = v99;
        goto LABEL_166;
      }

      *v101 = v99;
      v103 = (v99 * v99) + (v100[1] * v100[1]);
      *(&v157 + v97) = (v103 + v103) * 0.0039062;
      v98 -= 4;
      v97 += 4;
    }

    while (v98 != -80);
    for (j = 0; j != 20; ++j)
    {
      LOWORD(v99) = 31821 * v99 + 13849;
      v105 = v162[j] + (*(v156 + j * 4) + ((*(v156 + j * 4) * v99) * 0.000011));
      if (v105 < 0.0)
      {
        v105 = 0.0;
      }

      v162[j] = v105;
    }

    v106 = 0;
    v107 = 0;
    *a24 = v99;
    do
    {
      v108 = (__b + v107 * 4);
      if (&__b[1] + v107 * 4 > v164)
      {
        goto LABEL_166;
      }

      v109 = (__b + v106);
      v110 = (&__b[127].imag + v106);
      v111 = sqrt((v162[v107] / *(&v157 + v107 * 4)));
      v112 = v111 * v108[1];
      v108[1] = v112;
      if (v110 < __b || v109 + 256 > v164 || v110 > v109 + 256)
      {
        goto LABEL_166;
      }

      v113 = v111 * *v110;
      *v110 = v113;
      ++v107;
      v106 -= 4;
    }

    while (v107 != 20);
    memcpy(__C, __b, 0x200uLL);
    *&__C[64] = __b[64].real;
    v114 = 1020;
    v115 = 516;
    do
    {
      *(__C + v115) = *(&__b[0].real + v114);
      v114 -= 4;
      v115 += 4;
    }

    while (v114 != 512);
    v116 = __b;
    vDSP_DFT_Execute(a28, __C, &__C[64], __b, &__b[64]);
    for (k = 0; k != 128; k += 4)
    {
      v165.val[0] = *&v116->real;
      v165.val[1] = *&v116[64].real;
      v118 = &__C[k];
      vst2q_f32(v118, v165);
      v116 += 2;
    }

    v150 = 998244352;
    MEMORY[0x19EAE6090](__C, 1, &v150, __b, 1, 256);
    if (v148 == 320)
    {
      __A[0] = __b;
      __A[1] = v164;
      __A[2] = __b;
      modify_Fs(__A, 256, 12800, __b, v164, 16000, a19, a20, 0);
      LODWORD(__A[0]) = -1;
      vDSP_dotpr(__b, 1, __b, 1, __A, 0x140uLL);
LABEL_125:
      v119 = 0;
      v123 = a8 != 2400 && a8 != 1750 && a8 != 0 && a1 == 2400;
      v124 = __b;
      v125 = *__A / v62;
      while (v119 <= 0x100 && v124 <= v164 && __b <= v124)
      {
        LODWORD(__A[0]) = -1;
        vDSP_dotpr(v124, 1, v124, 1, __A, 0x40uLL);
        v126 = *__A + 0.01;
        v127 = (31821 * *a24 + 13849);
        *a24 = 31821 * *a24 + 13849;
        v128 = sqrtf(((v125 + ((v125 * v127) * 0.000011)) * 64.0) / v126);
        if (v123 && v128 > 1.0)
        {
          v128 = 1.0;
        }

        v154 = v128;
        MEMORY[0x19EAE6090](v124, 1, &v154, v124, 1, 64);
        v119 += 64;
        v124 += 32;
        if (v119 >= v148)
        {
          goto LABEL_144;
        }
      }

      goto LABEL_166;
    }

    LODWORD(__A[0]) = -1;
    vDSP_dotpr(__b, 1, __b, 1, __A, v148);
    if (v148 >= 1)
    {
      goto LABEL_125;
    }

LABEL_144:
    v152 = 0.75;
    MEMORY[0x19EAE6050](__b, 1, &v152, *a6, 1, __b, 1, v148);
    LODWORD(__A[0]) = -1;
    vDSP_dotpr(__b, 1, __b, 1, __A, v148);
    v129 = *a7 / ((*__A / v62) + 0.01);
    if (v129 > 1.0)
    {
      v129 = 1.0;
    }

    v154 = v129;
    v153 = sqrtf(v129);
    MEMORY[0x19EAE6090](__b, 1, &v153, __b, 1, v148);
    v131 = *a6;
    v130 = a6[1];
    v44 = v130 >= *a6;
    v132 = v130 - *a6;
    if (!v44 || a6[2] > v131 || __x > v132 || (memcpy(*a6, __b, __x), v131 > &v131[__x / 4]) || (v133 = *a25, v134 = a25[1], *a25 > v134) || a25[2] > v133 || __x > v134 - v133 || (v136 = *a5, v135 = a5[1], *a5 > v135) || a5[2] > v136 || __x > v135 - v136 || (memcpy(*a5, v133, __x), v136 > &v136[__x]))
    {
LABEL_166:
      __break(0x5519u);
    }
  }

  v137 = *a6;
  v138 = a6[2];
  if (v148 == 256)
  {
    if (v137 < v138)
    {
      goto LABEL_166;
    }

    return interp_code_5over2(v137, a6[1], a11, a12, 256);
  }

  else
  {
    if (v137 < v138)
    {
      goto LABEL_166;
    }

    return interp_code_4over2(v137, a6[1], a11, a12, v148);
  }
}

void FdCng_exc(uint64_t a1, _WORD *a2, int a3, __int128 *a4, int a5, _OWORD *a6, unint64_t __dst, unint64_t a8, unint64_t a9, uint64_t a10, char *a11, char *a12, unint64_t a13, float *a14, unint64_t a15)
{
  *a2 = -1;
  if (a3 >= 64)
  {
    v18 = a3 >> 6;
    v19 = a8 - __dst;
    v20 = __dst;
    v21 = __dst;
    while (v21 >= __dst)
    {
      if (a8 < v20)
      {
        break;
      }

      if (v19 <= 0x43)
      {
        break;
      }

      memmove(v21, (a1 + 14960), 0x44uLL);
      if (v21 + 68 < v21)
      {
        break;
      }

      v20 += 68;
      v19 -= 68;
      v21 += 68;
      if (!--v18)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_27;
  }

LABEL_8:
  v33[0] = __dst;
  v33[1] = a8;
  v33[2] = __dst;
  a2lsp_stab(v33, a9, a4);
  if (!a5)
  {
    v22 = *a4;
    v23 = a4[1];
    v24 = a4[3];
    a6[2] = a4[2];
    a6[3] = v24;
    *a6 = v22;
    a6[1] = v23;
    if (a6 + 4 < a6)
    {
      goto LABEL_27;
    }
  }

  for (i = 0; i != 64; i += 4)
  {
    *(a6 + i) = (*(a9 + i) * 0.1) + (*(a6 + i) * 0.9);
  }

  v26 = 0;
  v27 = flt_19B0AFCB0[a3 == 320];
  do
  {
    *(a10 + v26) = v27 * acosf(*(a9 + v26));
    v26 += 4;
  }

  while (v26 != 64);
  if (a3 < 1)
  {
    goto LABEL_24;
  }

  if (a3 >= 0x141 || (v28 = 4 * (a3 & 0x3FFF), memmove(a11, (a1 + 15028), v28), &a11[v28] < a11) || a13 < a12 || a13 - a12 < v28 || (memmove(a12, (a1 + 15028), 4 * (a3 & 0x3FFF)), &a12[v28] < a12))
  {
LABEL_27:
    __break(0x5519u);
    return;
  }

  if (a3 == 256)
  {

    interp_code_5over2(a12, a13, a14, a15, 256);
    return;
  }

LABEL_24:

  interp_code_4over2(a12, a13, a14, a15, a3);
}

unint64_t syn_12k8(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (result >= 1)
  {
    v8 = result;
    LOWORD(v9) = 0;
    v10 = a4 + 4 * result;
    v11 = 4 * result - 252;
    v12 = a2;
    v13 = a2;
    v14 = a5 + 4 * result;
    while (1)
    {
      v15 = a4 + 4 * v9;
      v16 = a5 + 4 * v9;
      v17 = v16 >= a5 && v15 >= a4;
      v18 = v17 && v13 >= a2;
      v19 = v18 && 4 * v9 < v11;
      v20 = !v19 || v16 > v14;
      if (v20 || v15 > v10)
      {
        break;
      }

      result = syn_filt(v12);
      v13 += 68;
      v9 = (v9 + 64);
      v12 += 68;
      if (v9 >= v8)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

void CNG_reset_enc(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, float *a5, uint64_t a6, int a7)
{
  *(a1 + 18436) = xmmword_19B0B1500;
  *(a1 + 18452) = 0x3F4CCCCD00000000;
  *(a1 + 18476) = UVWB_Ave;
  *(a1 + 18492) = unk_19B3A1508;
  *(a1 + 18508) = xmmword_19B3A1518;
  *(a1 + 18524) = unk_19B3A1528;
  if (a1 + 18540 < (a1 + 18476))
  {
    __break(0x5519u);
  }

  else
  {
    v12 = (a1 + 36298);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 18540), 1, 0x10uLL);
    *(a2 + 1348) = 0;
    *(a2 + 1784) = 0;
    if (a7)
    {
      __A = 0.0;
      vDSP_vfill(&__A, (a2 + 1352), 1, 0x10uLL);
    }

    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 37952), 1, 8uLL);
    *(a1 + 3536) = 0;
    if (*(a1 + 140) == 256)
    {
      __A = 64.0;
      v13 = a3;
      v14 = 4;
    }

    else
    {
      __A = 80.0;
      v13 = a3;
      v14 = 5;
    }

    vDSP_vfill(&__A, v13, 1, v14);
    __A = 1.0;
    vDSP_vfill(&__A, a5, 1, 5uLL);
    *v12 = 0;
    v12[1555] = 1;
  }
}

float *save_old_syn(float *result, char *a2, unint64_t a3, float *__dst, unint64_t a5, char *__src, unint64_t a7, float *a8, float a9)
{
  if (result == 256)
  {
    v9 = 28;
  }

  else
  {
    v9 = 34;
  }

  if (result == 256)
  {
    v10 = 112;
  }

  else
  {
    v10 = 136;
  }

  v11 = a5 - __dst;
  if (a5 < __dst || a7 < __src || a7 - __src < v10 || v11 < v10 || (v18 = result, result = memmove(__dst, __src, v10), &__dst[v10 / 4] < __dst) || (v19 = &__dst[v9], v19 < __dst) || (v18 - v9) >= 1 && ((v20 = a5 - v19, a5 < v19) || a3 < a2 || (v21 = 4 * (v18 - v9), v21 > a3 - a2) || v21 > v20 || (result = memmove(&__dst[v9], a2, v21), &v19[v21] < v19)) || (v22 = &a2[4 * v18 + -4 * v9], v22 < a2) || a3 < v22 || a3 - v22 < v10 || (result = memmove(__src, v22, v10), &__src[v10] < __src) || v18 < 0 || v11 >> 2 < v18)
  {
    __break(0x5519u);
  }

  else
  {

    return deemph(__dst, v18, a8, a9);
  }

  return result;
}

void lsf_enc(unint64_t a1, unsigned int a2, int a3, unint64_t a4, unint64_t a5, __int128 *a6, unint64_t a7, uint64_t a8, __int128 *a9, unint64_t a10, unint64_t *a11, _DWORD *a12, __int16 a13)
{
  v129[1] = *MEMORY[0x1E69E9840];
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v117[2] = v13;
  v117[3] = v13;
  v117[0] = v13;
  v117[1] = v13;
  if (a2 == 256)
  {
    v14 = 12800.0;
  }

  else
  {
    v14 = 16000.0;
  }

  v110 = a7 - a6;
  if ((a7 - a6) < 61)
  {
    goto LABEL_229;
  }

  if (a7 < a6)
  {
    goto LABEL_229;
  }

  if (a5 < a4)
  {
    goto LABEL_229;
  }

  v113 = a5 - a4;
  if ((a5 - a4) <= 60)
  {
    goto LABEL_229;
  }

  v19 = 0;
  v20 = (a1 + 38068);
  v21 = (a1 + 23324);
  v22 = v14 * 0.5;
  v23 = (v14 * 0.5) / 3.1416;
  do
  {
    *(a4 + v19) = v23 * acosf(*(a6 + v19));
    v19 += 4;
  }

  while (v19 != 64);
  gp_clip_test_lsf(*(a1 + 96), a4, a5, (a1 + 18436), a1 + 18460, 0);
  v25 = *(a1 + 96);
  if (v25 == 2400)
  {
    v26 = 29;
    v27 = a3;
    goto LABEL_32;
  }

  if (v20[1269])
  {
    v27 = a3;
    if (v20[1269] == 1)
    {
      if (*(a1 + 130) == 1)
      {
        v28 = 30;
      }

      else
      {
        v28 = 0;
      }

      if (*(a1 + 130))
      {
        v26 = v28;
      }

      else
      {
        v26 = 32;
      }

      goto LABEL_32;
    }

    v29 = v20[1274];
    goto LABEL_29;
  }

  v29 = v20[1274];
  v27 = a3;
  if (v20[1274])
  {
LABEL_29:
    if (v29 == 1)
    {
      v26 = 26;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_32;
  }

  if (v25 > 24399)
  {
    if (v25 <= 30399)
    {
      if (v25 > 29199)
      {
        if (v25 == 29200)
        {
          v30 = 66;
        }

        else
        {
          if (v25 != 30200)
          {
            goto LABEL_223;
          }

          v30 = 72;
        }
      }

      else if (v25 == 24400)
      {
        v30 = 54;
      }

      else
      {
        if (v25 != 29000)
        {
          goto LABEL_223;
        }

        v30 = 60;
      }
    }

    else if (v25 <= 47999)
    {
      if (v25 == 30400)
      {
        v30 = 78;
      }

      else
      {
        if (v25 != 32000)
        {
          goto LABEL_223;
        }

        v30 = 84;
      }
    }

    else
    {
      switch(v25)
      {
        case 48000:
          v30 = 90;
          break;
        case 64000:
          v30 = 96;
          break;
        case 96000:
          v30 = 102;
          break;
        default:
          goto LABEL_223;
      }
    }
  }

  else if (v25 <= 12849)
  {
    if (v25 > 11599)
    {
      if (v25 == 11600)
      {
        v30 = 12;
      }

      else
      {
        if (v25 != 12150)
        {
          goto LABEL_223;
        }

        v30 = 18;
      }
    }

    else if (v25 == 7200)
    {
      v30 = 0;
    }

    else
    {
      if (v25 != 8000)
      {
        goto LABEL_223;
      }

      v30 = 6;
    }
  }

  else if (v25 <= 14799)
  {
    if (v25 == 12850)
    {
      v30 = 24;
    }

    else
    {
      if (v25 != 13200)
      {
        goto LABEL_223;
      }

      v30 = 30;
    }
  }

  else
  {
    switch(v25)
    {
      case 14800:
        v30 = 36;
        break;
      case 16400:
        v30 = 42;
        break;
      case 22600:
        v30 = 48;
        break;
      default:
LABEL_223:
        v30 = 108;
        if (v25 != 128000)
        {
          v30 = -6;
        }

        break;
    }
  }

  v108 = &LSF_bits_tbl[v30 + a3];
  if (v108 < LSF_bits_tbl || v108 + 1 > BC_TCVQ_BIT_ALLOC_40B || v108 > v108 + 1)
  {
    goto LABEL_229;
  }

  v26 = *v108;
LABEL_32:
  v31 = a13 < 3;
  if (*v21 == 1)
  {
    *v21 = 0;
    v31 = 1;
  }

  lsf_end_enc(a1, a4, a5, a4, a5, (a1 + 18476), a1 + 18540, vaddq_s64(vdupq_n_s64(a1), xmmword_19B0B31F0), v14, v24, (a1 + 18540), a1 + 18604, v26, v27, *(a1 + 130), a1 + 3540, v25, (a1 + 5464), (a1 + 5460), v31, 0, 0, 0, 0, 0, 0, *(a1 + 18606));
  for (i = 0; i != 64; i += 4)
  {
    *(a6 + i) = cosf((*(a4 + i) * 3.1416) / v22);
  }

  if (*(a1 + 52108) == 3 && !*(a1 + 88))
  {
    if (v113 <= 0x3F)
    {
      goto LABEL_229;
    }

    v33 = *a4;
    v34 = *(a4 + 16);
    v35 = *(a4 + 48);
    *(a1 + 5300) = *(a4 + 32);
    *(a1 + 5316) = v35;
    *(a1 + 5268) = v33;
    *(a1 + 5284) = v34;
  }

  if (*(a1 + 96) == 2400)
  {
    return;
  }

  v36 = *v20;
  v37 = *(a1 + 140);
  if (v36 != v37)
  {
    v38 = *(a1 + 5268);
    v39 = *(a1 + 5284);
    *(a1 + 23196) = v38;
    *(a1 + 23212) = v39;
    v40 = *(a1 + 5300);
    v41 = *(a1 + 5316);
    *(a1 + 23228) = v40;
    *(a1 + 23244) = v41;
    *(a1 + 23132) = v38;
    *(a1 + 23148) = v39;
    *(a1 + 23164) = v40;
    *(a1 + 23180) = v41;
    *(a1 + 23260) = v38;
    *(a1 + 23276) = v39;
    LOWORD(v36) = v37;
    *(a1 + 23292) = v40;
    *(a1 + 23308) = v41;
  }

  FEC_lsf_estim_enc(a1, v36, v117, v118);
  *&v125 = a4;
  *(&v125 + 1) = a5;
  *&v126 = a4;
  *&v121 = v117;
  *(&v121 + 1) = v118;
  *&v122 = v117;
  lsf_stab(&v125, &v121, 0);
  if (a3 == 3 && *(a1 + 140) == 320 && v42 < 0.25 || v42 < 0.25 && ((v43 = *(a1 + 3536), v43 == 3) || a3 == 5 && v43 <= 2))
  {
    *v21 = 1;
  }

  v44 = 0;
  v45 = (a1 + 23196);
  v46 = a1 + 23260;
  v47 = (a1 + 23132);
  v48 = a1 + 23264;
  v49 = a1 + 23136;
  v50 = a1 + 23200;
  do
  {
    if (v50 + v44 > v46)
    {
      goto LABEL_229;
    }

    if (v45 + v44 > v50 + v44)
    {
      goto LABEL_229;
    }

    if (v49 + v44 > v45)
    {
      goto LABEL_229;
    }

    if (v47 + v44 > v49 + v44)
    {
      goto LABEL_229;
    }

    v51 = (a4 + v44);
    if (a4 + v44 < a4 || (v51 + 1) > a5 || v51 > v51 + 1 || v48 + v44 > v21 || v46 + v44 > v48 + v44)
    {
      goto LABEL_229;
    }

    *(v47 + v44 + 128) = ((*(v47 + v44 + 64) + *(v47 + v44)) + *v51) / 3.0;
    v44 += 4;
  }

  while (v44 != 64);
  v52 = *(a1 + 23148);
  *v45 = *v47;
  *(a1 + 23212) = v52;
  v53 = *(a1 + 23180);
  *(a1 + 23228) = *(a1 + 23164);
  *(a1 + 23244) = v53;
  if (v113 <= 0x3F)
  {
    goto LABEL_229;
  }

  v54 = *a4;
  v55 = *(a4 + 16);
  v56 = *(a4 + 48);
  *(a1 + 23164) = *(a4 + 32);
  *(a1 + 23180) = v56;
  *v47 = v54;
  *(a1 + 23148) = v55;
  if (*(a1 + 122148))
  {
    if (v110 <= 0x3F)
    {
      goto LABEL_229;
    }

    v57 = *a6;
    v58 = a6[1];
    v59 = a6[3];
    *(a1 + 5236) = a6[2];
    *(a1 + 5252) = v59;
    *(a1 + 5204) = v57;
    *(a1 + 5220) = v58;
    v60 = *a4;
    v61 = *(a4 + 16);
    v62 = *(a4 + 48);
    *(a1 + 5300) = *(a4 + 32);
    *(a1 + 5316) = v62;
    *(a1 + 5268) = v60;
    *(a1 + 5284) = v61;
  }

  v109 = *(a1 + 96);
  v63 = *(a1 + 130);
  v64 = v20[1274];
  v114 = v20[1269];
  *&v65 = -1;
  *(&v65 + 1) = -1;
  v127 = v65;
  v128 = v65;
  v125 = v65;
  v126 = v65;
  v123 = v65;
  v124 = v65;
  v121 = v65;
  v122 = v65;
  v120[2] = v65;
  v120[3] = v65;
  v120[0] = v65;
  v120[1] = v65;
  v119[2] = v65;
  v119[3] = v65;
  v119[0] = v65;
  v119[1] = v65;
  v118[3] = v65;
  v118[1] = v65;
  v118[2] = v65;
  v118[0] = v65;
  if (a10 < a9 || (a10 - a9) < 61)
  {
    goto LABEL_229;
  }

  v66 = 0;
  v111 = (a1 + 5204);
  do
  {
    *(&v125 + v66) = v23 * acosf(*(a9 + v66));
    v66 += 4;
  }

  while (v66 != 64);
  for (j = 0; j != 64; j += 4)
  {
    *(v119 + j) = v23 * acosf(*(a1 + j + 5204));
  }

  for (k = 0; k != 64; k += 4)
  {
    *(v120 + k) = v23 * acosf(*(a6 + k));
  }

  v116[0] = a1 + 4564;
  v116[1] = a1 + 5076;
  v116[2] = a1 + 4564;
  Unified_weighting(v116, &v125, v129, v118, v119, v63 == 0, a3 == 1, v14);
  if (!(v114 | v64))
  {
    v69 = a10 - a9;
    if (v109 > 24399)
    {
      if (v109 <= 30399)
      {
        if (v109 > 29199)
        {
          if (v109 == 29200)
          {
            v74 = 66;
            goto LABEL_139;
          }

          if (v109 == 30200)
          {
            v74 = 72;
            goto LABEL_139;
          }
        }

        else
        {
          if (v109 == 24400)
          {
            v74 = 54;
            goto LABEL_139;
          }

          if (v109 == 29000)
          {
            v74 = 60;
            goto LABEL_139;
          }
        }
      }

      else if (v109 <= 47999)
      {
        if (v109 == 30400)
        {
          v74 = 78;
          goto LABEL_139;
        }

        if (v109 == 32000)
        {
          v74 = 84;
          goto LABEL_139;
        }
      }

      else
      {
        switch(v109)
        {
          case 48000:
            v74 = 90;
            goto LABEL_139;
          case 64000:
            v74 = 96;
            goto LABEL_139;
          case 96000:
            v74 = 102;
            goto LABEL_139;
        }
      }
    }

    else if (v109 <= 12849)
    {
      if (v109 > 11599)
      {
        if (v109 == 11600)
        {
          v74 = 12;
          goto LABEL_139;
        }

        if (v109 == 12150)
        {
          v74 = 18;
          goto LABEL_139;
        }
      }

      else
      {
        if (v109 == 7200)
        {
          v74 = 0;
          goto LABEL_139;
        }

        if (v109 == 8000)
        {
          v74 = 6;
          goto LABEL_139;
        }
      }
    }

    else if (v109 <= 14799)
    {
      if (v109 == 12850)
      {
        v74 = 24;
        goto LABEL_139;
      }

      if (v109 == 13200)
      {
        v74 = 30;
        goto LABEL_139;
      }
    }

    else
    {
      switch(v109)
      {
        case 14800:
          v74 = 36;
          goto LABEL_139;
        case 16400:
          v74 = 42;
          goto LABEL_139;
        case 22600:
          v74 = 48;
          goto LABEL_139;
      }
    }

    v74 = 108;
    if (v109 != 128000)
    {
      v74 = -6;
    }

LABEL_139:
    v76 = &mid_LSF_bits_tbl[v74 + a3];
    if (v76 < mid_LSF_bits_tbl || v76 + 1 > tbl_mid_voi_wb_4b || v76 > v76 + 1)
    {
      goto LABEL_229;
    }

    v77 = *v76;
    v73 = *v76;
    if (a3 == 2)
    {
      v70 = &tbl_mid_voi_wb_5b;
      v71 = mid_LSF_bits_tbl;
      if (v73 == 4)
      {
        v71 = &tbl_mid_gen_wb_2b;
        v70 = tbl_mid_voi_wb_4b;
      }

LABEL_154:
      v78 = &pow2[2 * v77];
      if (v78 < pow2 || v78 + 2 > tbl_mid_voi_wb_1b || v78 > v78 + 2)
      {
        goto LABEL_229;
      }

      v72 = *v78;
      if (v72 < 1)
      {
        v75 = 0;
        goto LABEL_176;
      }

      goto LABEL_158;
    }

    if (a3 == 1)
    {
      v70 = &tbl_mid_unv_wb_5b;
    }

    else
    {
      if (v73 == 2)
      {
        v70 = &tbl_mid_gen_wb_2b;
        v71 = pow2;
        goto LABEL_154;
      }

      if (v73 == 5)
      {
        v70 = &tbl_mid_gen_wb_5b;
      }

      else
      {
        v70 = &tbl_mid_voi_wb_5b;
      }
    }

    v71 = v70 + 1024;
    goto LABEL_154;
  }

  v69 = a10 - a9;
  if (v64 == 1)
  {
    v70 = tbl_mid_voi_wb_1b;
    v71 = &tbl_mid_unv_wb_4b;
    v72 = 2;
    LOWORD(v73) = 1;
  }

  else
  {
    if (v114 != 1)
    {
      LOWORD(v73) = 0;
      v75 = 0;
      v70 = &tbl_mid_voi_wb_5b;
      v71 = mid_LSF_bits_tbl;
      goto LABEL_176;
    }

    v70 = &tbl_mid_unv_wb_4b;
    v71 = FCB_bits_tbl;
    v72 = 16;
    LOWORD(v73) = 4;
  }

LABEL_158:
  v79 = 0;
  v75 = 0;
  v80 = 1.0e30;
  do
  {
    v81 = 0;
    v82 = &v70[32 * v79];
    v83 = 0.0;
    do
    {
      v84 = &v82[v81 / 2];
      v85 = &v82[v81 / 2 + 2];
      if (&v82[v81 / 2] < v70 || v85 > v71 || v84 > v85)
      {
        goto LABEL_229;
      }

      v88 = (*v84 * *(v120 + v81)) + ((1.0 - *v84) * *(v119 + v81));
      v89 = (&v121 + v81);
      *(&v121 + v81) = v88;
      if (v81)
      {
        v90 = v89 - 1;
        if (v89 - 1 < &v121 || v90 > v89)
        {
          goto LABEL_229;
        }

        v91 = *v90 + 80.0;
        if (v88 < v91)
        {
          *v89 = v91;
          v88 = v91;
        }
      }

      v83 = v83 + ((*(v118 + v81) * (*(&v125 + v81) - v88)) * (*(&v125 + v81) - v88));
      v81 += 4;
    }

    while (v81 != 64);
    if (v83 < v80)
    {
      v75 = v79;
      v80 = v83;
    }

    ++v79;
  }

  while (v72 > v79);
LABEL_176:
  v92 = 0;
  v93 = 16 * v75;
  do
  {
    v94 = &v70[2 * v93];
    v95 = v94 + 1;
    if (v94 < v70 || v95 > v71 || v94 > v95)
    {
      goto LABEL_229;
    }

    v98 = (*v94 * *(v120 + v92)) + ((1.0 - *v94) * *(v119 + v92));
    v99 = (&v121 + v92);
    *(&v121 + v92) = v98;
    if (v92)
    {
      v100 = v99 - 1;
      if (v99 - 1 < &v121 || v100 > v99)
      {
        goto LABEL_229;
      }

      v101 = *v100 + 80.0;
      if (v98 < v101)
      {
        *v99 = v101;
      }
    }

    v92 += 4;
    ++v93;
  }

  while (v92 != 64);
  reorder_lsf(&v121, 80.0, v14);
  for (m = 0; m != 64; m += 4)
  {
    *(a9 + m) = cosf((*(&v121 + m) * 3.1416) / v22);
  }

  push_indice(a1, 33, v75, v73);
  if (*(a1 + 52108) == 3 && !*(a1 + 88))
  {
    if (v69 <= 0x3F)
    {
      goto LABEL_229;
    }

    v103 = 0;
    v104 = *a9;
    v105 = a9[1];
    v106 = a9[3];
    *(a1 + 5236) = a9[2];
    *(a1 + 5252) = v106;
    *v111 = v104;
    *(a1 + 5220) = v105;
    do
    {
      *(a1 + 5268 + v103) = v23 * acosf(*(a9 + v103));
      v103 += 4;
    }

    while (v103 != 64);
  }

  if (*a11 < a11[2])
  {
LABEL_229:
    __break(0x5519u);
  }

  int_lsp4(a2, v111, a9, a6, *a11, a11[1], 0);
  *&v125 = a4;
  *(&v125 + 1) = a5;
  *&v126 = a4;
  *&v121 = a1 + 5268;
  *(&v121 + 1) = a1 + 5332;
  *&v122 = a1 + 5268;
  lsf_stab(&v125, &v121, 0);
  *a12 = v107;
}

void encod_ppp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, float *a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t *a17, char **a18, _OWORD *a19, unint64_t a20, float *a21, uint64_t a22, float *a23, unint64_t a24)
{
  v24 = MEMORY[0x1EEE9AC00](a1);
  v592 = v25;
  v611 = v26;
  v636 = v27;
  v630 = v28;
  v632 = v29;
  v629 = v30;
  v32 = v31;
  v33 = v24;
  v689[1] = *MEMORY[0x1E69E9840];
  v628 = v24 + 37952;
  v34 = v24 + 39440;
  *&v35 = -1;
  *(&v35 + 1) = -1;
  v661 = v35;
  v660[14] = v35;
  v660[13] = v35;
  v660[12] = v35;
  v660[11] = v35;
  v660[10] = v35;
  v660[9] = v35;
  v660[8] = v35;
  v660[7] = v35;
  v660[6] = v35;
  v660[5] = v35;
  v660[4] = v35;
  v660[3] = v35;
  v660[2] = v35;
  v660[1] = v35;
  v660[0] = v35;
  v658 = -1;
  v657[19] = v35;
  v657[18] = v35;
  v657[17] = v35;
  v657[16] = v35;
  v657[15] = v35;
  v657[14] = v35;
  v657[13] = v35;
  v657[12] = v35;
  v657[11] = v35;
  v657[10] = v35;
  v657[9] = v35;
  v657[8] = v35;
  v657[7] = v35;
  v657[6] = v35;
  v657[5] = v35;
  v657[4] = v35;
  v657[3] = v35;
  v657[2] = v35;
  v657[1] = v35;
  v657[0] = v35;
  v655 = -1;
  v654[3] = v35;
  v654[2] = v35;
  v654[1] = v35;
  v654[0] = v35;
  memset(__b, 255, sizeof(__b));
  v36 = a13;
  v37 = 0;
  v633 = v32;
  v631 = (v32 + 1348);
  *&v38 = -1;
  *(&v38 + 1) = -1;
  v652[2] = v38;
  v652[3] = v38;
  v652[0] = v38;
  v652[1] = v38;
  *(&v651 + 1) = -1;
  *&v651 = -1;
  v650 = -1;
  v39 = a9 + 2;
  v40 = a9 + 4 > a10 || v39 > a9 + 4;
  v649[2] = v38;
  v649[3] = v38;
  v41 = !v40 && v39 >= a9;
  v42 = v41;
  v610 = v42;
  v649[0] = v38;
  v649[1] = v38;
  v647 = -1;
  v646[2] = v38;
  v646[3] = v38;
  v43 = (a14 - a13) > 1020 && a14 >= a13;
  v646[0] = v38;
  v646[1] = v38;
  v44 = v43;
  v598 = v44;
  v591 = (v33 + 41484);
  v45 = v636[1];
  v635 = *v636;
  v46 = 0.68;
  v47 = v636[2];
  v48 = 0.5;
  v49 = 3.0;
  v50 = 4.0;
  v601 = a13 + 1024;
  v595 = *(v34 + 2142);
  v634 = v632;
  v609 = v34;
  do
  {
    v51 = (v36 + 4 * v37);
    if (v51 < v36)
    {
      goto LABEL_870;
    }

    v52 = *a17 + 4 * v37;
    if (v52 < a17[2])
    {
      goto LABEL_870;
    }

    v53 = a17[1];
    v41 = v53 >= v52;
    v54 = v53 - v52;
    if (!v41 || a14 < v51)
    {
      goto LABEL_870;
    }

    if (a14 - v51 < 0x100)
    {
      goto LABEL_870;
    }

    if (v54 <= 0xFF)
    {
      goto LABEL_870;
    }

    memmove((*a17 + 4 * v37), v51, 0x100uLL);
    if (v52 + 256 < v52 || v635 < v47 || v634 < v632)
    {
      goto LABEL_870;
    }

    v673[0] = *v629;
    *&v673[1] = *(v629 + 16);
    find_targets(v673, v633 + 1352, v633 + 1416, v37, v631, v633 + 1352, v635, v46, v45, a13, a14, 0x40u, v634, v630, v660, v662, 0, 0, v657, &v659, (v33 + 110872), v33 + 110896);
    if (v37)
    {
      v56 = *(v34 + 1170);
      goto LABEL_122;
    }

    v57 = (v635 + 208);
    for (i = 53; i != 69; ++i)
    {
      if ((v57 + 1) > v45 || v57 > v57 + 1 || v57 < v47)
      {
        goto LABEL_870;
      }

      v61 = *v57++;
      __dst[i + 209] = v61;
    }

    *&v673[0] = v654;
    *(&v673[0] + 1) = &v656;
    *&v673[1] = v654;
    lsp2a_stab(v33 + 5204, v673);
    deemph_lpc(v652, v654, v646, v649, 1);
    if (!v610)
    {
      goto LABEL_870;
    }

    v62 = *(a9 + 2);
    v63 = *(v34 + 436);
    v64 = *a17;
    v620 = *(a17 + 1);
    __src = DTFS_new();
    v627 = DTFS_new();
    v625 = DTFS_new();
    v624 = DTFS_new();
    v65 = DTFS_new();
    v66 = DTFS_new();
    v615 = v64;
    if (*(v33 + 130) == 1)
    {
      *&v67 = 4000.0;
      *&v68 = 6400.0;
      goto LABEL_46;
    }

    if (!*(v33 + 130))
    {
      *&v67 = 3300.0;
      *&v68 = 4000.0;
LABEL_46:
      v69 = *&v68;
      goto LABEL_48;
    }

    v69 = 0.0;
    *&v67 = 0.0;
LABEL_48:
    if (*(v34 + 1188))
    {
      *(v34 + 1188) = 0;
      *(v34 + 2008) = 0;
      *(v34 + 2016) = 0;
      *(v33 + 41460) = 0x457A0000454E4000;
      LODWORD(v673[0]) = 0;
      vDSP_vfill(v673, (v33 + 40632), 1, 0x66uLL);
      LODWORD(v673[0]) = 0;
      vDSP_vfill(v673, (v33 + 41040), 1, 0x66uLL);
    }

    v70 = *(v34 + 1172);
    if (v70 == 1)
    {
      if (!*(v33 + 41580))
      {
        *(v34 + 1170) = 1;
        free(__src);
        free(v627);
        free(v625);
        free(v624);
        v84 = v65;
        goto LABEL_119;
      }

      *(v34 + 2142) = 0;
    }

    v71 = *v34;
    v72 = floor(v71 + v48);
    v619 = v65;
    if (ceil(v71 + v48) == v72)
    {
      v72 = ceil(v71);
      v73 = vcvtpd_s64_f64(v71);
      v74 = floor(v71);
      if (v73)
      {
        v75 = v74;
      }

      else
      {
        v75 = v72;
      }

      if (v75 > 201)
      {
LABEL_62:
        v76 = 201;
        goto LABEL_64;
      }

      if (v73)
      {
        v72 = v74;
      }
    }

    else if (v72 > 201)
    {
      goto LABEL_62;
    }

    v76 = v72;
LABEL_64:
    v77 = v62;
    v78 = floor(v77 + v48);
    if (ceil(v77 + v48) != v78)
    {
      v77 = v78;
    }

    v79 = v77;
    if (v77 >= 201)
    {
      v80 = 201;
    }

    else
    {
      v80 = v79;
    }

    if (v80 - v76 > 13 || v79 < 19 || v80 - v76 < -11 || v76 <= 18)
    {
      v34 = v609;
      *(v609 + 1170) = 1;
      free(__src);
      free(v627);
      free(v625);
      free(v624);
      v84 = v619;
LABEL_119:
      free(v84);
      v110 = v66;
      goto LABEL_120;
    }

    v597 = *&v67;
    v608 = v66;
    v602 = v66 + 840;
    v669 = -1;
    v670 = -1;
    v645 = NAN;
    v644 = -1;
    v643 = NAN;
    v642 = NAN;
    v641 = NAN;
    v640 = NAN;
    memset(v668, 255, sizeof(v668));
    memset(v667, 255, sizeof(v667));
    *&v85 = -1;
    *(&v85 + 1) = -1;
    v663 = v85;
    v664 = v85;
    v665 = -1;
    v639 = NAN;
    v638 = NAN;
    if (v70 != 1)
    {
      *&v673[0] = v615 - 4 * v76;
      *(v673 + 8) = v620;
      if (v66 > v602)
      {
        goto LABEL_870;
      }

      if (*(v33 + 130) == 1)
      {
        v86 = 16000;
      }

      else
      {
        v86 = 8000;
      }

      DTFS_to_fs(v673, v76, v66, v86, 0);
    }

    if (*(v33 + 18608) == 1)
    {
      v87 = v80;
    }

    else
    {
      v87 = v76;
    }

    v599 = v87;
    if (!v598)
    {
      goto LABEL_870;
    }

    v88 = 0;
    v89 = 0;
    v90 = (v601 - 4 * v80);
    v91 = 0.0;
    v92 = v90;
    v93 = v80;
    v94 = 0.0;
    do
    {
      if (v92 < a13 || (v92 + 1) > v601 || v92 > v92 + 1)
      {
        goto LABEL_870;
      }

      v95 = *v92++;
      v96 = v95;
      v97 = fabsf(v95);
      if (v97 > v91)
      {
        v91 = v97;
        v89 = v88;
      }

      v94 = v94 + (v96 * v96);
      ++v88;
      --v93;
    }

    while (v93);
    v98 = &v90[v89];
    v99 = v98 + 1;
    v100 = v98 < a13 || v99 > v601;
    if (v100 || v98 > v99)
    {
      goto LABEL_870;
    }

    if (*v98 <= 0.0)
    {
      if (*v98 < 0.0)
      {
        v109 = 0;
        v114 = v89 - 11;
        v115 = -INFINITY;
        do
        {
          v116 = &v90[(v80 + v114 + 1) % v80];
          v117 = v116 + 1;
          if (v116 < a13 || v117 > v601 || v116 > v117)
          {
            goto LABEL_870;
          }

          if (*v116 > v115)
          {
            v109 = (v80 + v114 + 1) % v80;
            v115 = *v116;
          }

          ++v114;
        }

        while (v114 < v89 + 9);
        v102 = v89;
      }

      else
      {
        v102 = 0;
        v109 = 0;
      }
    }

    else
    {
      v102 = 0;
      v103 = v89 - 11;
      v104 = 0.0;
      do
      {
        v105 = &v90[(v80 + v103 + 1) % v80];
        v106 = v105 + 1;
        if (v105 < a13 || v106 > v601 || v105 > v106)
        {
          goto LABEL_870;
        }

        if (*v105 < v104)
        {
          v102 = (v80 + v103 + 1) % v80;
          v104 = *v105;
        }

        ++v103;
      }

      while (v103 < v89 + 9);
      v109 = v89;
    }

    if (v109 <= v102)
    {
      v120 = v102;
    }

    else
    {
      v120 = v109;
    }

    if (v109 < v102)
    {
      v102 = v109;
    }

    if (v102 < 3 || v120 - v80 > -4)
    {
LABEL_155:
      v34 = v609;
      *(v609 + 1170) = 1;
      free(__src);
      free(v627);
      free(v625);
      free(v624);
      free(v619);
      free(v66);
      goto LABEL_121;
    }

    v122 = (fmax(vcvtd_n_f64_u32(v80, 2uLL), 6.0) + v48);
    v123 = v89 + v122;
    v124 = (v89 - v122);
    if (v89 - v122 < 0 || v123 >= v80)
    {
      if (v79 > 128)
      {
        goto LABEL_155;
      }

      if ((v124 & 0x80000000) != 0)
      {
        v176 = v124 + v80;
        if (v124 + v80 < 1)
        {
          v176 = 0;
        }

        else
        {
          v177 = 0;
          v178 = a13 - 4 * v80;
          do
          {
            v179 = (v178 + v177 * 4 + 1024);
            v180 = v178 + v177 * 4 + 1028;
            v182 = v179 < a13 || v180 > v601 || v179 > v180;
            v183 = &__b[v177];
            v184 = &__b[v177 + 1];
            if (v182 || v183 < __b || v184 > v654 || v183 > v184)
            {
              goto LABEL_870;
            }

            __b[v177++] = *v179;
          }

          while ((v124 + v80) != v177);
        }

        if (v176 < v80)
        {
          v188 = v80 - v176;
          v189 = v176;
          v190 = __b;
          v191 = a13 - 8 * v80;
          do
          {
            v192 = (v191 + v189 * 4 + 1024);
            v193 = v191 + v189 * 4 + 1028;
            v195 = v192 < a13 || v193 > v601 || v192 > v193;
            v196 = &v190[v189];
            v197 = &v190[v189 + 1];
            if (v195 || v196 < __b || v197 > v654 || v196 > v197)
            {
              goto LABEL_870;
            }

            *v196 = *v192;
            ++v190;
            v191 += 4;
            --v188;
          }

          while (v188);
        }

        v125 = 1;
        goto LABEL_283;
      }

      v125 = 1;
    }

    else
    {
      v125 = 0;
    }

    if (v123 >= v80)
    {
      if (v89 != v122)
      {
        v138 = 0;
        v139 = a13 - 4 * v80;
        v140 = v124;
        do
        {
          v141 = (v139 + v138 * 4 + 1024);
          v142 = v139 + v138 * 4 + 1028;
          v144 = v141 < a13 || v142 > v601 || v141 > v142;
          v145 = &__b[v138];
          v146 = &__b[v138 + 1];
          if (v144 || v145 < __b || v146 > v654 || v145 > v146)
          {
            goto LABEL_870;
          }

          __b[v138++] = *v141;
          --v140;
        }

        while (v140);
      }

      if (&v90[v124 - v80] >= a13)
      {
        if (v124 < v80)
        {
          v163 = v80 - v124;
          v164 = v124;
          v165 = __b;
          v166 = a13 - 8 * v80;
          do
          {
            v167 = (v166 + v164 * 4 + 1024);
            v168 = v166 + v164 * 4 + 1028;
            v170 = v167 < a13 || v168 > v601 || v167 > v168;
            v171 = &v165[v164];
            v172 = &v165[v164 + 1];
            if (v170 || v171 < __b || v172 > v654 || v171 > v172)
            {
              goto LABEL_870;
            }

            *v171 = *v167;
            ++v165;
            v166 += 4;
            --v163;
          }

          while (v163);
        }
      }

      else if (v124 < v80)
      {
        v150 = v80 - v124;
        v151 = v124;
        v152 = __b;
        v153 = a13 - 4 * v80;
        do
        {
          v154 = (v153 + v151 * 4 + 1024);
          v155 = v153 + v151 * 4 + 1028;
          v157 = v154 < a13 || v155 > v601 || v154 > v155;
          v158 = &v152[v151];
          v159 = &v152[v151 + 1];
          if (v157 || v158 < __b || v159 > v654 || v158 > v159)
          {
            goto LABEL_870;
          }

          *v158 = *v154;
          ++v152;
          v153 += 4;
          --v150;
        }

        while (v150);
      }
    }

    else
    {
      v126 = 0;
      v127 = a13 - 4 * v80;
      v128 = v80;
      do
      {
        v129 = (v127 + v126 * 4 + 1024);
        v130 = v127 + v126 * 4 + 1028;
        v132 = v129 < a13 || v130 > v601 || v129 > v130;
        v133 = &__b[v126];
        v134 = &__b[v126 + 1];
        if (v132 || v133 < __b || v134 > v654 || v133 > v134)
        {
          goto LABEL_870;
        }

        __b[v126++] = *v129;
        --v128;
      }

      while (v128);
    }

LABEL_283:
    v201 = 0.0;
    v202 = __b;
    v203 = v80;
    do
    {
      v204 = v202 + 1;
      if (v202 < __b || v204 > v654 || v202 > v204)
      {
        goto LABEL_870;
      }

      v207 = *v202++;
      v201 = v201 + (v207 * v207);
      --v203;
    }

    while (v203);
    if (v94 < v201)
    {
      v208 = sqrtf(v94 / v201);
      v209 = __b;
      v210 = v80;
      do
      {
        v211 = v209 + 1;
        if (v209 < __b || v211 > v654 || v209 > v211)
        {
          goto LABEL_870;
        }

        *v209 = v208 * *v209;
        ++v209;
        --v210;
      }

      while (v210);
    }

    v596 = v627 + 840;
    *&v673[0] = __b;
    *(&v673[0] + 1) = v654;
    *&v673[1] = __b;
    if (__src > __src + 840)
    {
      goto LABEL_870;
    }

    if (*(v33 + 130) == 1)
    {
      v214 = 16000;
    }

    else
    {
      v214 = 8000;
    }

    DTFS_to_fs(v673, v80, __src, v214, 0);
    v594 = v46;
    if (v125)
    {
      *&v673[0] = v601 - 4 * v80;
      *(&v673[0] + 1) = a14;
      *&v673[1] = a13;
      if (v627 > v596)
      {
        goto LABEL_870;
      }

      if (*(v33 + 130) == 1)
      {
        v215 = 16000;
      }

      else
      {
        v215 = 8000;
      }

      DTFS_to_fs(v673, v80, v627, v215, 0);
      memcpy(__dst, v627, 0x330uLL);
      v216 = *(v627 + 204);
      v683 = *(v627 + 820);
      LODWORD(v684) = *(v627 + 209);
      memcpy(v671, __src, sizeof(v671));
      LODWORD(v662[4]) = -1;
      *&v217 = -1;
      *(&v217 + 1) = -1;
      v662[3] = v217;
      v662[2] = v217;
      v662[1] = v217;
      v662[0] = v217;
      memcpy(v673, __dst, 0x330uLL);
      LODWORD(v673[51]) = v216;
      *(&v673[51] + 4) = v683;
      DWORD1(v673[52]) = v684;
      DTFS_adjustLag(v673, *&v671[816]);
      DTFS_poleFilter(v673, v646);
      DTFS_poleFilter(v671, v646);
      v218 = 0;
      v219 = 1.0;
      do
      {
        v219 = v219 * 0.7;
        *(v662 + v218) = v219 * *(v646 + v218);
        v218 += 4;
      }

      while (v218 != 68);
      DTFS_zeroFilter(v673, v662);
      DTFS_zeroFilter(v671, v662);
      if (v216 >= 32)
      {
        v220 = (v216 >> 3);
      }

      else
      {
        v220 = v50;
      }

      v221 = 0.0;
      v606 = v220;
      v621 = 0.0 - v220;
      if ((0.0 - v220) <= v220)
      {
        v587 = v69;
        v589 = v63;
        v604 = *&v671[816];
        if (*&v671[816] >> 1 >= *&v671[824])
        {
          v222 = *&v671[824];
        }

        else
        {
          v222 = *&v671[816] >> 1;
        }

        v223 = 0.0;
        v224 = -INFINITY;
        do
        {
          v612 = v224;
          v616 = v223;
          v225 = 0.0;
          if ((v222 & 0x80000000) == 0)
          {
            v226 = 0;
            v227 = 0.0;
            do
            {
              v228 = v673 + 4 * v226;
              v229 = v228 + 4;
              if (v228 < v673 || v229 > &v673[25] + 8 || v228 > v229)
              {
                goto LABEL_870;
              }

              v232 = v226;
              v233 = &v671[4 * v226];
              if (v233 < v671)
              {
                goto LABEL_870;
              }

              if (v233 + 4 > &v671[408])
              {
                goto LABEL_870;
              }

              if (v233 > v233 + 4)
              {
                goto LABEL_870;
              }

              v234 = &v673[25] + v232 + 2;
              if (v234 < &v673[25] + 2)
              {
                goto LABEL_870;
              }

              if (v234 + 1 > &v673[51])
              {
                goto LABEL_870;
              }

              if (v234 > v234 + 1)
              {
                goto LABEL_870;
              }

              v235 = &v671[4 * v232 + 408];
              if (v235 < &v671[408] || v235 + 1 > &v671[816] || v235 > v235 + 1)
              {
                goto LABEL_870;
              }

              v236 = *(v673 + v232);
              v237 = *&v671[4 * v232];
              v238 = *v234;
              v239 = *v235;
              v240 = ((*v234 * *v235) + (v236 * v237));
              v241 = __sincos_stret(v227);
              v242 = v241.__cosval * v240;
              v243 = v241.__sinval * ((v238 * v237) - (v236 * v239));
              v225 = (v225 + v242) + v243;
              v226 = v232 + 1;
              v227 = ((v621 * 6.2832) / v604) + v227;
            }

            while (v222 >= (v232 + 1));
          }

          v224 = v612;
          v223 = v616;
          if ((fabsf(v621) * -0.00999999978 + 1.0) * v225 > v612)
          {
            v223 = v621;
            v224 = v225;
          }

          v621 = v621 + 1.0;
        }

        while (v621 <= v606);
        v221 = v223 * 6.2832;
        v49 = 3.0;
        v50 = 4.0;
        v63 = v589;
        v69 = v587;
      }

      v244 = v80;
      DTFS_phaseShift(__src, v221 / v80);
    }

    else
    {
      v244 = v80;
    }

    v645 = v599;
    v644 = LODWORD(v244);
    v245 = -4;
    v246 = &v651;
    v48 = 0.5;
    do
    {
      Interpol_delay(&v669, &v645, &v644, (v245 + 4));
      if (v246 < &v651 || (v246 + 4) > v652 || v246 > (v246 + 4))
      {
        goto LABEL_870;
      }

      *v246 = v669;
      v246 = (v246 + 4);
      v41 = __CFADD__(v245++, 1);
    }

    while (!v41);
    if (*(v609 + 1172) == 1)
    {
      v247 = v608;
      *(v608 + 102) = *(v609 + 2008);
      *(v608 + 206) = *(v609 + 2016);
      *(v608 + 828) = *(v33 + 41460);
      memmove(v608, (v33 + 40632), 0x198uLL);
      memmove(v608 + 408, (v33 + 41040), 0x198uLL);
    }

    else
    {
      *(v33 + 41472) = 0;
      if (v608 > v602)
      {
        goto LABEL_870;
      }

      memcpy(v673, v608, 0x348uLL);
      DTFS_getEngy(v673);
      *(v628 + 3516) = v248;
      if (v627 > v596)
      {
        goto LABEL_870;
      }

      v247 = v608;
      memcpy(v673, v608, 0x348uLL);
      DTFS_copy(v627, v673);
      DTFS_car2pol(v627);
      v249 = *(v627 + 204);
      DTFS_setEngyHarm(v627, 92.0, 1104.5, 0.0, 1104.5, 1.0);
      v251 = log10((v250 * v249));
      *(v628 + 3524) = v251;
      v252 = *(v627 + 204);
      DTFS_setEngyHarm(v627, 1104.5, v597, 1104.5, v69, 1.0);
      v254 = v253 * v252;
      v48 = 0.5;
      v255 = log10(v254);
      *(v628 + 3528) = v255;
      memcpy(v673, v627, 0x348uLL);
      DTFS_to_erb(v673, v591, v33 + 41580);
    }

    memcpy(v673, __src, 0x348uLL);
    DTFS_getEngy(v673);
    if (v247 > v602)
    {
      goto LABEL_870;
    }

    v257 = v256;
    memcpy(v673, v608, 0x348uLL);
    DTFS_getEngy(v673);
    if (v627 > v596)
    {
      goto LABEL_870;
    }

    v259 = v258;
    memcpy(v673, __src, 0x348uLL);
    DTFS_copy(v627, v673);
    if (v625 > v625 + 840)
    {
      goto LABEL_870;
    }

    memcpy(v673, v608, 0x348uLL);
    DTFS_copy(v625, v673);
    v260 = 2 * *(v627 + 204);
    memcpy(v673, v625, 0x348uLL);
    memcpy(v671, v627, sizeof(v671));
    DTFS_alignment_full(v673, v671, v260);
    DTFS_phaseShift(v627, ((*(v627 + 204) - v261) * -6.2832) / *(v627 + 204));
    memcpy(v673, v627, 0x348uLL);
    memcpy(v671, v625, sizeof(v671));
    DTFS_freq_corr(v673, v671);
    v263 = v262;
    DTFS_poleFilter(v627, v646);
    DTFS_adjustLag(v625, *(v627 + 204));
    DTFS_poleFilter(v625, v649);
    memcpy(v673, v627, 0x348uLL);
    memcpy(v671, v625, sizeof(v671));
    DTFS_freq_corr(v673, v671);
    v265 = v264;
    memcpy(v673, v625, 0x348uLL);
    DTFS_getEngy(v673);
    v266 = 0.0;
    if (v267 > 0.0)
    {
      memcpy(v673, v627, 0x348uLL);
      DTFS_getEngy(v673);
      v268 = v63;
      v270 = v269;
      memcpy(v673, v625, 0x348uLL);
      DTFS_getEngy(v673);
      v266 = v270 / v271;
      v63 = v268;
      v50 = 4.0;
    }

    v272 = v265;
    v273 = v80 - v599 - 14;
    if (v273 >= 0xFFFFFFE7)
    {
      v274 = 81;
    }

    else
    {
      v274 = 66;
    }

    if (v273 >= 0xFFFFFFE7)
    {
      v275 = v80 - v599 + 11;
    }

    else
    {
      v275 = 11;
    }

    v276 = *(v628 + 3632);
    v277 = v272;
    v278 = v257 / v259;
    if (v276 <= v63)
    {
      if (v277 >= 1.2 || v278 <= v49)
      {
        v280 = v274;
      }

      else
      {
        v280 = 66;
      }

      v34 = v609;
      v281 = v619 + 840;
      if (v278 < 0.092)
      {
        *(v609 + 1170) = 1;
      }
    }

    else
    {
      if (v277 >= 0.65 || v278 <= 5.0)
      {
        v280 = v274;
      }

      else
      {
        v280 = 66;
      }

      v34 = v609;
      v281 = v619 + 840;
      if (v278 < 0.025)
      {
        *(v609 + 1170) = 1;
        free(__src);
        free(v627);
        free(v625);
        free(v624);
        free(v619);
        free(v608);
        v46 = v594;
        goto LABEL_121;
      }
    }

    v46 = v594;
    if (v278 >= v266)
    {
      v283 = v266;
    }

    else
    {
      v283 = v257 / v259;
    }

    if (v283 < 0.075 && v272 < -0.5)
    {
      *(v34 + 1170) = 1;
    }

    if (v276 <= v63)
    {
      v284 = 7.0;
    }

    else
    {
      v284 = 14.5;
    }

    if (v278 > v284)
    {
      goto LABEL_395;
    }

    if (*(v34 + 1170) == 1)
    {
      goto LABEL_397;
    }

    if (*(v33 + 18608) == 1)
    {
LABEL_395:
      *(v34 + 1170) = 1;
LABEL_397:
      free(__src);
      free(v627);
      free(v625);
      free(v624);
      free(v619);
      free(v608);
      goto LABEL_121;
    }

    v586 = v257 / v259;
    if (v280 != 81)
    {
      goto LABEL_815;
    }

    v582 = v266;
    v583 = v275;
    if (v619 > v281)
    {
      goto LABEL_870;
    }

    v285 = *(v608 + 204);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v662, v608, 0x348uLL);
    v672 = 0xAAAAAAAAAAAAAAAALL;
    v286 = DTFS_new();
    memcpy(v673, __dst, 0x348uLL);
    DTFS_copy(v619, v673);
    if (v286 > v286 + 840)
    {
      goto LABEL_870;
    }

    v590 = v63;
    memcpy(v673, v662, 0x348uLL);
    DTFS_copy(v286, v673);
    v287 = *(v619 + 204);
    v288 = v287;
    v600 = v285;
    DTFS_adjustLag(v286, v287);
    v289 = (((256.0 - v288) * (v285 + v288)) / ((v288 + v288) * v285));
    v290 = (v289 - floor(v289)) * v288;
    v291 = floor(v290 + 0.5);
    if (ceil(v290 + 0.5) == v291)
    {
      v291 = ceil(v290);
      v292 = vcvtpd_s64_f64(v290);
      v293 = floor(v290);
      if (v292)
      {
        v291 = v293;
      }
    }

    v294 = v288 - v291;
    DTFS_phaseShift(v286, (v294 * 6.2832) / *(v619 + 204));
    DTFS_car2pol(v286);
    DTFS_car2pol(v619);
    v295 = *(v619 + 208);
    if (v295 == 4000.0)
    {
      v613 = 0;
      v593 = 0;
      v603 = 22;
      v617 = 1;
LABEL_407:
      v588 = &PowerCB_NB;
      goto LABEL_410;
    }

    if (v295 != 6400.0)
    {
      v613 = 0;
      v617 = 0;
      v603 = 0;
      v593 = 1;
      goto LABEL_407;
    }

    v593 = 0;
    v603 = 24;
    v613 = 1;
    v588 = &PowerCB_WB;
    v617 = 1;
LABEL_410:
    *&v296 = -1;
    *(&v296 + 1) = -1;
    v678[5] = v296;
    v678[4] = v296;
    v678[3] = v296;
    v678[2] = v296;
    v678[1] = v296;
    v678[0] = v296;
    v677[0] = v296;
    v677[1] = v296;
    v677[2] = v296;
    v677[3] = v296;
    v677[4] = v296;
    v677[5] = v296;
    v676[0] = v296;
    v676[1] = v296;
    v676[2] = v296;
    v676[3] = v296;
    v676[4] = v296;
    v676[5] = v296;
    v675[4] = v296;
    v675[5] = v296;
    v675[2] = v296;
    v675[3] = v296;
    v675[0] = v296;
    v675[1] = v296;
    *&v296 = 0xAAAAAAAAAAAAAAAALL;
    *(&v296 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v674[4] = v296;
    v674[5] = v296;
    v674[2] = v296;
    v674[3] = v296;
    v674[0] = v296;
    v674[1] = v296;
    memcpy(v673, v619, 0x348uLL);
    DTFS_getSpEngyFromResAmp(v673, v646, 0.0, 1104.5);
    v298 = 1.0e-10;
    v299 = 1.0e-10;
    if (log10(v297) >= 1.0e-10)
    {
      memcpy(v673, v619, 0x348uLL);
      DTFS_getSpEngyFromResAmp(v673, v646, 0.0, 1104.5);
      v299 = log10(v300);
    }

    v585 = v286;
    v301 = *(v619 + 208);
    memcpy(v673, v619, 0x348uLL);
    DTFS_getSpEngyFromResAmp(v673, v646, 1104.5, v301);
    if (log10(v302) >= 1.0e-10)
    {
      v303 = *(v619 + 208);
      memcpy(v673, v619, 0x348uLL);
      DTFS_getSpEngyFromResAmp(v673, v646, 1104.5, v303);
      v298 = log10(v304);
    }

    v305 = v263;
    v581 = v305;
    v306 = v299 + v298;
    v307 = v299 / (v299 + v298);
    v308 = *(v619 + 204);
    v309 = v298 / v306;
    DTFS_setEngyHarm(v619, 92.0, 1104.5, 0.0, 1104.5, 1.0);
    v311 = log10((v310 * v308));
    v312 = *(v619 + 204);
    DTFS_setEngyHarm(v619, 1104.5, *(v619 + 207), 1104.5, *(v619 + 208), 1.0);
    v314 = log10((v313 * v312));
    v315 = 0;
    *&v314 = v314;
    v316 = v311 - *(v628 + 3524);
    v317 = *&v314 - *(v628 + 3528);
    v318 = (v588 + 4);
    v319 = -1;
    v320 = INFINITY;
    do
    {
      v321 = *(v318 - 1);
      v322 = v309 * vabds_f32(v317, *v318) + v307 * vabds_f32(v316, v321);
      v323 = v317 < *v318 || v316 < v321;
      v324 = v322 * 0.8;
      if (v323)
      {
        v324 = v322;
      }

      if (v324 < v320)
      {
        v319 = v315;
        v320 = v324;
      }

      ++v315;
      v318 += 2;
    }

    while (v315 != 64);
    memcpy(v673, v619, 0x348uLL);
    DTFS_to_erb(v673, v675, v676);
    if ((v593 & 1) == 0)
    {
      if (v603 <= 1)
      {
        v325 = 1;
      }

      else
      {
        v325 = v603;
      }

      v326 = v678;
      v327 = v675;
      do
      {
        v328 = v327 + 1;
        v330 = v327 < v675 || v328 > v676 || v327 > v328;
        v331 = v326 + 1;
        if (v330 || v326 < v678 || v331 > v679 || v326 > v331)
        {
          goto LABEL_870;
        }

        v335 = *v327++;
        *v326++ = v335;
        --v325;
      }

      while (v325);
    }

    erb_slot(*(v619 + 204), v674, v675, v677, v678, v603);
    v336 = *(v619 + 204);
    *&v337 = 0xAAAAAAAAAAAAAAAALL;
    *(&v337 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v673[4] = v337;
    v673[5] = v337;
    v673[2] = v337;
    v673[3] = v337;
    v673[0] = v337;
    v673[1] = v337;
    *&v671[80] = v337;
    *&v671[64] = v337;
    *&v671[48] = v337;
    *&v671[32] = v337;
    *&v671[16] = v337;
    *v671 = v337;
    *&v337 = -1;
    *(&v337 + 1) = -1;
    v688 = v337;
    v687 = v337;
    v686 = v337;
    v685 = v337;
    v684 = v337;
    v683 = v337;
    v682 = -1;
    v681[3] = v337;
    v681[2] = v337;
    v681[1] = v337;
    v681[0] = v337;
    v680[5] = v337;
    v680[4] = v337;
    v680[3] = v337;
    v680[2] = v337;
    v680[1] = v337;
    v680[0] = v337;
    v679[5] = v337;
    v679[4] = v337;
    v679[3] = v337;
    v679[2] = v337;
    v679[1] = v337;
    v679[0] = v337;
    v584 = v336;
    erb_slot(v336, v671, &v671[96], v680, v681, v603);
    erb_slot(v285, v673, &v673[6], &v683, v689, v603);
    v338 = 0;
    v339 = 1.0;
    do
    {
      v339 = v339 * 0.78;
      *(v681 + v338) = v339 * *(v646 + v338);
      v338 += 4;
    }

    while (v338 != 68);
    v340 = v613;
    v341 = &AmpCB1_WB;
    if (!v613)
    {
      v341 = 0;
    }

    if (v295 == 4000.0)
    {
      v341 = &AmpCB1_NB;
    }

    v622 = v341;
    if (v593)
    {
      v342 = v584;
      if (v584 < v285)
      {
        goto LABEL_541;
      }

      goto LABEL_503;
    }

    v343 = 0;
    if (v603 <= 1)
    {
      v344 = 1;
    }

    else
    {
      v344 = v603;
    }

    do
    {
      v345 = v680 + v343;
      v346 = v345 + 1;
      if (v345 < v680 || v346 > v680 + v603 || v345 > v346)
      {
        goto LABEL_870;
      }

      v349 = 0;
      v350 = (*v345 / 12800.0) * 6.2832;
      v351 = 0.0;
      v352 = 1.0;
      v353 = v350;
      do
      {
        v354 = __sincos_stret(v353);
        v355 = *(v681 + v349);
        v356 = v354.__cosval * v355;
        v352 = v352 + v356;
        v357 = v354.__sinval * v355;
        v351 = v351 - v357;
        v353 = v350 + v353;
        v349 += 4;
      }

      while (v349 != 68);
      v358 = v679 + 4 * v343;
      if (v358 < v679)
      {
        goto LABEL_870;
      }

      if (v358 + 4 > v679 + 4 * v603 || v358 > v358 + 4)
      {
        goto LABEL_870;
      }

      *(v679 + v343++) = 1.0 / ((v351 * v351) + (v352 * v352));
      v340 = v613;
    }

    while (v343 != v344);
    v360 = &v683;
    v361 = (v33 + 41484);
    v362 = v603;
    do
    {
      v363 = (v360 + 4);
      if (v360 < &v683 || v363 > v689 || v360 > v363)
      {
        goto LABEL_870;
      }

      v366 = *v361++;
      *v360 = v366;
      v360 = (v360 + 4);
      --v362;
    }

    while (v362);
    v342 = v584;
    if (v584 < v600)
    {
      v367 = &v683;
      v368 = v673;
      v369 = v683;
      v370 = v603;
      while (1)
      {
        v371 = v368 + 1;
        if (v368 < v673 || v371 > &v673[6] || v368 > v371)
        {
          goto LABEL_870;
        }

        if ((*v368 & 0x80000000) != 0)
        {
          break;
        }

        if (!*v368)
        {
          goto LABEL_497;
        }

        if (v367 < &v683 || v367 + 1 > v689 || v367 > v367 + 1)
        {
          goto LABEL_870;
        }

        v369 = *v367;
LABEL_501:
        ++v367;
        ++v368;
        if (!--v370)
        {
          goto LABEL_532;
        }
      }

      *v368 = 0;
LABEL_497:
      if (v367 < &v683 || v367 + 1 > v689 || v367 > v367 + 1)
      {
        goto LABEL_870;
      }

      *v367 = v369;
      goto LABEL_501;
    }

LABEL_503:
    if (v342 <= v600)
    {
      goto LABEL_531;
    }

    v374 = v603 - 1;
    v375 = &v683 + (v603 - 1);
    if (v375 < &v683 || v375 + 1 > v689 || v375 > v375 + 1)
    {
      goto LABEL_870;
    }

    if ((v593 & 1) == 0)
    {
      v376 = *v375;
      do
      {
        v377 = v673 + 4 * v374;
        v378 = v377 + 4;
        if (v377 < v673 || v378 > &v673[6] || v377 > v378)
        {
          goto LABEL_870;
        }

        v381 = &v683 + v374;
        v384 = v381 + 1 <= v689 && v381 <= v381 + 1 && v381 >= &v683;
        if (*(v673 + v374))
        {
          if (!v384)
          {
            goto LABEL_870;
          }

          v376 = *v381;
        }

        else
        {
          if (!v384)
          {
            goto LABEL_870;
          }

          *v381 = v376;
        }

        v385 = v374--;
      }

      while (v385 > 0);
LABEL_531:
      if ((v593 & 1) == 0)
      {
LABEL_532:
        v386 = v676;
        v387 = v675;
        v388 = &v683;
        v389 = v603;
        do
        {
          v390 = v388 + 1;
          if (v388 < &v683 || v390 > v689 || v388 > v390)
          {
            goto LABEL_870;
          }

          v393 = *v387++;
          v394 = v393;
          v395 = *v388++;
          *v386++ = v394 - v395;
          --v389;
        }

        while (v389);
      }
    }

LABEL_541:
    v396 = 0;
    v397 = v676 + v603;
    v398 = -1;
    v399 = INFINITY;
    v400 = v622;
    v401 = v675 + 4 * v603;
    do
    {
      v402 = 0;
      v403 = &v622[40 * v396];
      v404 = 0.0;
      do
      {
        if (*&v671[v402 + 4])
        {
          v405 = &v400[v402];
          if (&v400[v402] < v403 || v405 + 1 > v403 + 10 || v405 > v405 + 1)
          {
            goto LABEL_870;
          }

          v406 = *v405;
          if (*v405 >= -*(&v683 + v402 + 4))
          {
            v411 = (v676 + v402 + 4);
            if (v411 < v676)
            {
              goto LABEL_870;
            }

            v412 = (v676 + v402 + 8);
            if (v412 > v397 || v411 > v412)
            {
              goto LABEL_870;
            }

            v409 = *(v679 + v402 + 4);
            v410 = *v411 - v406;
          }

          else
          {
            v407 = (v675 + v402 + 4);
            if (v407 < v675)
            {
              goto LABEL_870;
            }

            v408 = (v675 + v402 + 8);
            if (v408 > v401 || v407 > v408)
            {
              goto LABEL_870;
            }

            v409 = *(v679 + v402 + 4);
            v410 = *v407;
          }

          v413 = v409 * (v410 * v410);
          v414 = (v676 + v402 + 4);
          if (v414 < v676)
          {
            goto LABEL_870;
          }

          v415 = (v676 + v402 + 8);
          if (v415 > v397 || v414 > v415)
          {
            goto LABEL_870;
          }

          if (v406 >= *v414)
          {
            v416 = v413;
          }

          else
          {
            v416 = v413 * 0.9;
          }

          v404 = v404 + v416;
        }

        v402 += 4;
      }

      while (v402 != 40);
      if (v404 < v399)
      {
        v399 = v404;
        v398 = v396;
      }

      ++v396;
      v400 += 40;
    }

    while (v396 != 64);
    v417 = 0;
    if (v398 >= 0x40)
    {
      v398 = 0;
    }

    LODWORD(v672) = v398;
    v418 = -1;
    v419 = INFINITY;
    v420 = &AmpCB2_WB;
    v421 = &AmpCB2_NB;
    do
    {
      v422 = 0.0;
      if (v617)
      {
        v423 = (&AmpCB2_WB + 52 * v417);
        v424 = (&AmpCB2_NB + 44 * v417);
        v425 = v603 - 11;
        v426 = 44;
        do
        {
          if (v295 == 4000.0)
          {
            if (*&v671[v426])
            {
              v427 = &v421[v426 - 44];
              if (v427 < v424)
              {
                goto LABEL_870;
              }

              v428 = &v421[v426 - 40];
              if (v428 > (v424 + 11))
              {
                goto LABEL_870;
              }

LABEL_581:
              if (v427 > v428)
              {
                goto LABEL_870;
              }

              v429 = *v427;
              if (*v427 >= -*(&v683 + v426))
              {
                v431 = *(v676 + v426);
                v430 = (v431 - v429) * (v431 - v429);
              }

              else
              {
                v430 = *(v675 + v426) * *(v675 + v426);
                v431 = *(v676 + v426);
              }

              v432 = *(v679 + v426) * v430;
              if (v429 >= v431)
              {
                v433 = v432;
              }

              else
              {
                v433 = v432 * 0.9;
              }

              v422 = v422 + v433;
            }
          }

          else if (v340 && *&v671[v426])
          {
            v427 = &v420[v426 - 44];
            if (v427 < v423)
            {
              goto LABEL_870;
            }

            v428 = &v420[v426 - 40];
            if (v428 > (v423 + 13))
            {
              goto LABEL_870;
            }

            goto LABEL_581;
          }

          v426 += 4;
          --v425;
        }

        while (v425);
      }

      if (v422 < v419)
      {
        v419 = v422;
        v418 = v417;
      }

      ++v417;
      v421 += 44;
      v420 += 52;
    }

    while (v417 != 64);
    if (v418 >= 0x40)
    {
      v434 = 0;
    }

    else
    {
      v434 = v418;
    }

    HIDWORD(v672) = v434;
    erb_add(v675, *(v619 + 204), v591, v600, &v672, v603);
    *v675 = *(v675 + 1) * 0.3;
    if (v401 - 12 < v675)
    {
      goto LABEL_870;
    }

    v435 = (v401 - 8);
    if (v401 - 8 > v676)
    {
      goto LABEL_870;
    }

    if ((v401 - 12) > v435)
    {
      goto LABEL_870;
    }

    v436 = v401 - 4;
    if (v401 - 4 > v676)
    {
      goto LABEL_870;
    }

    if (v435 > v436)
    {
      goto LABEL_870;
    }

    *(v401 - 2) = *(v401 - 3) * 0.3;
    if (v401 > v676 || v436 > v401)
    {
      goto LABEL_870;
    }

    v437 = 0;
    *v436 = 0;
    v438 = 0.0;
    for (j = 4; j != 40; j += 4)
    {
      if (*(v674 + j))
      {
        v438 = v438 + vabds_f32(*(v678 + j), *(v675 + j));
        ++v437;
      }
    }

    DTFS_erb_inv(v675, v674, v677, v619, v603);
    DTFS_setEngyHarm(v619, 92.0, 1104.5, 0.0, 1104.5, 1.0);
    DTFS_setEngyHarm(v619, 1104.5, *(v619 + 207), 1104.5, *(v619 + 208), 1.0);
    memcpy(v673, v619, 0x348uLL);
    DTFS_to_erb(v673, v591, v33 + 41580);
    v440 = &v588[8 * v319];
    if (v440 + 1 > v440 + 2 || v440 > v440 + 1)
    {
      goto LABEL_870;
    }

    v441 = v316 > -0.4 && (v438 / v437) > 0.47;
    v442 = *v440 + *(v628 + 3524);
    *(v628 + 3524) = v442;
    *(v628 + 3528) = v440[1] + *(v628 + 3528);
    v443 = __exp10(v442);
    v444 = v443 / *(v619 + 204);
    if (v444 < 0.0)
    {
      v445 = 0.0;
    }

    else
    {
      v445 = v444;
    }

    DTFS_setEngyHarm(v619, 92.0, 1104.5, 0.0, 1104.5, v445);
    v446 = __exp10(*(v628 + 3528));
    v447 = v446 / *(v619 + 204);
    if (v447 < 0.0)
    {
      v448 = 0.0;
    }

    else
    {
      v448 = v447;
    }

    DTFS_setEngyHarm(v619, 1104.5, *(v619 + 207), 1104.5, *(v619 + 208), v448);
    push_indice(v33, 1399, v672, 6);
    push_indice(v33, 1400, SWORD2(v672), 6);
    push_indice(v33, 1398, v319, 6);
    memcpy(v673, v619, 0x348uLL);
    DTFS_copy(v627, v673);
    v449 = (*(v619 + 204) >> 1);
    v34 = v609;
    if (v449 <= 0x7FFE)
    {
      if (v449 >= 0x66)
      {
        goto LABEL_870;
      }

      memmove(v619 + 408, v585 + 408, 4 * v449 + 4);
    }

    DTFS_pol2car(v619);
    DTFS_pol2car(v627);
    memcpy(v673, v627, 0x348uLL);
    memcpy(v671, v619, sizeof(v671));
    v450 = *&v671[816];
    v605 = v441;
    if (SLODWORD(v673[51]) < *&v671[816])
    {
      DTFS_zeroPadd(*&v671[816], v673);
      v450 = *&v671[816];
    }

    v607 = v450;
    if (v450 >> 1 >= *&v671[820])
    {
      v451 = *&v671[820];
    }

    else
    {
      v451 = v450 >> 1;
    }

    v452 = 0.0;
    v453 = -19;
    v454 = -INFINITY;
    while (2)
    {
      v614 = v454;
      v618 = v452;
      v623 = v453;
      v455 = 0.0;
      if ((v451 & 0x80000000) == 0)
      {
        v456 = 0;
        v457 = 0.0;
        do
        {
          v458 = v673 + 4 * v456;
          v459 = v458 + 4;
          v460 = v458 < v673 || v459 > &v673[25] + 8;
          if (v460 || v458 > v459)
          {
            goto LABEL_870;
          }

          v462 = v456;
          v463 = &v671[4 * v456];
          if (v463 < v671)
          {
            goto LABEL_870;
          }

          if (v463 + 4 > &v671[408])
          {
            goto LABEL_870;
          }

          if (v463 > v463 + 4)
          {
            goto LABEL_870;
          }

          v464 = &v673[25] + v462 + 2;
          if (v464 < &v673[25] + 2)
          {
            goto LABEL_870;
          }

          if (v464 + 1 > &v673[51])
          {
            goto LABEL_870;
          }

          if (v464 > v464 + 1)
          {
            goto LABEL_870;
          }

          v465 = &v671[4 * v462 + 408];
          if (v465 < &v671[408] || v465 + 1 > &v671[816] || v465 > v465 + 1)
          {
            goto LABEL_870;
          }

          v466 = *(v673 + v462);
          v467 = *&v671[4 * v462];
          v468 = *v464;
          v469 = *v465;
          v470 = ((*v464 * *v465) + (v466 * v467));
          v471 = __sincos_stret(v457);
          v472 = v471.__cosval * v470;
          v473 = v471.__sinval * ((v468 * v467) - (v466 * v469));
          v455 = (v455 + v472) + v473;
          v456 = v462 + 1;
          v457 = ((v623 * 6.2832) / v607) + v457;
        }

        while (v451 >= (v462 + 1));
      }

      v454 = v614;
      v452 = v618;
      if ((fabsf(v623) * -0.00999999978 + 1.0) * v455 > v614)
      {
        v452 = v453;
        v454 = v455;
      }

      if (++v453 != 21)
      {
        continue;
      }

      break;
    }

    v49 = 3.0;
    v474 = (v452 + 3.0) > 7.0;
    if ((v452 + 3.0) < 0.0)
    {
      v474 = 1;
    }

    v475 = v474 || v605;
    if (v474)
    {
      v476 = 0.0;
    }

    else
    {
      v476 = v452;
    }

    DTFS_phaseShift(v619, (v476 * 6.2832) / *(v619 + 204));
    push_indice(v33, 1401, (v476 + 3.0), 3);
    free(v585);
    v46 = v594;
    v48 = 0.5;
    v50 = 4.0;
    if (v475)
    {
      goto LABEL_819;
    }

    memcpy(v673, v627, 0x348uLL);
    DTFS_peaktoaverage(v673, &v643, &v642);
    memcpy(v673, v619, 0x348uLL);
    DTFS_peaktoaverage(v673, &v641, &v640);
    if (*(v619 + 208) <= 4000.0)
    {
      v280 = 81;
    }

    else
    {
      memcpy(v673, v619, 0x348uLL);
      DTFS_getEngy_band_wb(v673, 0.0, 2000.0);
      if (v477 <= 0.0)
      {
        v481 = 1;
      }

      else
      {
        memcpy(v673, v619, 0x348uLL);
        DTFS_getEngy_band_wb(v673, 2000.0, 6400.0);
        v479 = v478;
        memcpy(v673, v619, 0x348uLL);
        DTFS_getEngy_band_wb(v673, 0.0, 2000.0);
        v481 = (v479 / v480) < 1.6;
      }

      memcpy(v673, v619, 0x348uLL);
      DTFS_getEngy_band_wb(v673, 0.0, 2000.0);
      if (v482 < 25.0 && v481)
      {
        v280 = 66;
      }

      else
      {
        v280 = 81;
      }
    }

    if (*(v628 + 3632) > v590)
    {
      memcpy(v673, __src, 0x348uLL);
      DTFS_getEngy(v673);
      if (v483 > (*(v628 + 3516) * 0.8))
      {
        v484 = v643 <= v642 ? v642 : v643;
        if (v484 > 3.0 && *(v609 + 2142))
        {
          if (v643 > v642 && v643 > (v641 + v641))
          {
            v280 = 66;
          }

          if (v643 < v642 && v642 > (v640 + v640))
          {
            goto LABEL_829;
          }
        }
      }

      goto LABEL_728;
    }

    memcpy(v673, __src, 0x348uLL);
    DTFS_getEngy(v673);
    if (v485 > *(v628 + 3516))
    {
      v486 = v643;
      v487 = v642;
      v488 = v643 <= v642 ? v642 : v643;
      if (v488 > 3.5)
      {
        v489 = *(v609 + 2142);
        if (*(v609 + 2142))
        {
          v490 = 1;
          goto LABEL_691;
        }
      }
    }

    memcpy(v673, __src, 0x348uLL);
    DTFS_getEngy(v673);
    if (*(v628 + 3516) * 0.8 >= v491)
    {
      v489 = *(v609 + 2142);
      goto LABEL_714;
    }

    v486 = v643;
    v487 = v642;
    if (v643 <= v642)
    {
      v492 = v642;
    }

    else
    {
      v492 = v643;
    }

    v489 = *(v609 + 2142);
    if (v492 > 3.0 && !*(v609 + 2142))
    {
      v490 = 0;
LABEL_691:
      if (v486 > v487)
      {
        v493 = v486;
        v494 = v641 + v641;
        if (v641 * 2.5 < v486)
        {
          if (v494 < v493)
          {
            v495 = 1;
          }

          else
          {
            v495 = v490;
          }

          if ((v495 & 1) == 0)
          {
            goto LABEL_704;
          }

LABEL_703:
          v280 = 66;
          goto LABEL_704;
        }

        if (v494 >= v493)
        {
          v496 = 1;
        }

        else
        {
          v496 = v490;
        }

        if ((v496 & 1) == 0)
        {
          goto LABEL_703;
        }
      }

LABEL_704:
      if (v486 < v487)
      {
        v497 = v487;
        v498 = v640 + v640;
        if (v640 * 2.5 < v497)
        {
          if (v498 < v497)
          {
            v490 = 1;
          }

          if ((v490 & 1) == 0)
          {
            goto LABEL_714;
          }

LABEL_713:
          v280 = 66;
          goto LABEL_714;
        }

        if (v498 >= v497)
        {
          v490 = 1;
        }

        if ((v490 & 1) == 0)
        {
          goto LABEL_713;
        }
      }
    }

LABEL_714:
    if (v489)
    {
      memcpy(v673, __src, 0x348uLL);
      DTFS_peaktoaverage(v673, &v639, &v638);
      v668[0] = 1.0;
      bzero(&v668[1], 0x27CuLL);
      bzero(v667, 0x280uLL);
      v665 = 0;
      v664 = 0u;
      v663 = 0u;
      SynthesisFilter(v667, v668, v668, &v669, v646, &v648, &v663, &v666);
      v499 = 0;
      v500 = 0.0;
      do
      {
        v501 = vmulq_f32(*&v667[v499], *&v667[v499]);
        v500 = (((v500 + v501.f32[0]) + v501.f32[1]) + v501.f32[2]) + v501.f32[3];
        v499 += 4;
      }

      while (v499 != 160);
      memcpy(v673, v619, 0x348uLL);
      DTFS_getEngy(v673);
      if (v502 <= *(v628 + 3516) || ((v503 = log10(v500), v641 <= v640) ? (v504 = v640) : (v504 = v641), v504 <= 3.5))
      {
        v48 = 0.5;
      }

      else
      {
        v505 = v503 * 10.0;
        v48 = 0.5;
        if (v505 > 15.0 && v581 > 0.7)
        {
          if (v641 > v640)
          {
            if (v639 * 3.0 < v641 || (v639 * 1.5 < v641 ? (v562 = v640 * 1.5 <= v640) : (v562 = 1), !v562))
            {
              v280 = 66;
            }
          }

          if (v641 <= v640)
          {
            if (v638 * 3.0 < v640 || (v638 * 1.5 < v640 ? (v563 = v641 * 1.5 <= v641) : (v563 = 1), !v563))
            {
LABEL_829:
              v280 = 66;
            }
          }
        }
      }
    }

LABEL_728:
    memcpy(v673, v619, 0x348uLL);
    DTFS_copy(v625, v673);
    DTFS_poleFilter(v627, v646);
    DTFS_poleFilter(v625, v646);
    if (v624 > v624 + 840)
    {
LABEL_870:
      __break(0x5519u);
    }

    memcpy(v671, v627, sizeof(v671));
    memcpy(__dst, v625, sizeof(__dst));
    bzero(v673, 0x348uLL);
    v506 = *&v671[816];
    if (*&v671[816] >= -1)
    {
      v507 = 0;
      v508 = *&v671[816] / 2;
      do
      {
        v509 = v507;
        v510 = &v671[4 * v507];
        v511 = v510 + 4;
        v512 = v510 < v671 || v511 > &v671[408];
        v513 = v512 || v510 > v511;
        v514 = v673 + 4 * v509;
        v515 = v514 + 4;
        v516 = !v513 && v514 >= v673;
        v517 = !v516 || v515 > &v673[25] + 8;
        if (v517 || v514 > v515)
        {
          goto LABEL_870;
        }

        *(v673 + v509) = *&v671[4 * v509];
        v519 = &v671[4 * v509 + 408];
        if (v519 < &v671[408])
        {
          goto LABEL_870;
        }

        if (v519 + 1 > &v671[816])
        {
          goto LABEL_870;
        }

        if (v519 > v519 + 1)
        {
          goto LABEL_870;
        }

        v520 = &v673[25] + v509 + 2;
        if (v520 < &v673[25] + 2 || v520 + 1 > &v673[51] || v520 > v520 + 1)
        {
          goto LABEL_870;
        }

        *v520 = *v519;
        v507 = v509 + 1;
      }

      while (v508 >= (v509 + 1));
    }

    v521 = __dst[204];
    if (__dst[204] >= -1)
    {
      v522 = 0;
      v523 = __dst[204] / 2;
      do
      {
        v524 = v522;
        v525 = &__dst[v522];
        v526 = v525 + 1;
        v527 = v525 < __dst || v526 > &__dst[102];
        v528 = v527 || v525 > v526;
        v529 = v673 + 4 * v524;
        v530 = v529 + 4;
        v531 = !v528 && v529 >= v673;
        v532 = !v531 || v530 > &v673[25] + 8;
        if (v532 || v529 > v530)
        {
          goto LABEL_870;
        }

        *(v673 + v524) = *(v673 + v524) - *&__dst[v524];
        v534 = &__dst[v524 + 102];
        if (v534 < &__dst[102])
        {
          goto LABEL_870;
        }

        if (v534 + 1 > &__dst[204])
        {
          goto LABEL_870;
        }

        if (v534 > v534 + 1)
        {
          goto LABEL_870;
        }

        v535 = &v673[25] + v524 + 2;
        if (v535 < &v673[25] + 2 || v535 + 1 > &v673[51] || v535 > v535 + 1)
        {
          goto LABEL_870;
        }

        *v535 = *v535 - *v534;
        v522 = v524 + 1;
      }

      while (v523 >= (v524 + 1));
    }

    if (v506 <= v521)
    {
      v506 = v521;
    }

    LODWORD(v673[51]) = v506;
    *(&v673[51] + 4) = vmax_s32(*&v671[820], *&__dst[205]);
    HIDWORD(v673[51]) = *&v671[828];
    LODWORD(v673[52]) = *&v671[832];
    memcpy(v624, v673, 0x348uLL);
    memcpy(v673, v627, 0x348uLL);
    DTFS_getEngy_band(v673, 1500.0, v597);
    v537 = v536;
    memcpy(v673, v627, 0x348uLL);
    DTFS_getEngy(v673);
    v539 = v537 / v538;
    v34 = v609;
    if (v539 != 0.0 && v539 > 0.05 && !*(v609 + 2142))
    {
      memcpy(v673, v627, 0x348uLL);
      DTFS_getEngy_band(v673, 1500.0, v597);
      v541 = v540;
      memcpy(v673, v624, 0x348uLL);
      DTFS_getEngy_band(v673, 1500.0, v597);
      v543 = v541 / v542;
      v544 = v543;
      v545 = v543 == 0.0;
      v546 = 0.001;
      if (!v545)
      {
        v546 = v544;
      }

      v547 = log10(v546) * 10.0;
      if (v586 > 0.8 && v547 < 0.1)
      {
        v280 = 66;
      }
    }

    memcpy(v673, v627, 0x348uLL);
    DTFS_getEngy(v673);
    v550 = v549;
    memcpy(v673, v624, 0x348uLL);
    DTFS_getEngy(v673);
    v552 = log10((v550 / v551)) * 10.0;
    if (v552 <= 0.0 && !*(v609 + 2142))
    {
      v280 = 66;
    }

    v49 = 3.0;
    v275 = v583;
    v553 = v552;
    if (*(v628 + 3632) <= v590)
    {
      if (v553 < 2.4)
      {
        v556 = v586;
        if (v586 <= v582)
        {
          v556 = v582;
        }

        if (v556 > 0.94 && *(v609 + 2142))
        {
          goto LABEL_819;
        }
      }

      if (v552 < 4.5)
      {
        v557 = v586;
        if (v586 <= v582)
        {
          v557 = v582;
        }

        if (v557 > 0.5)
        {
          goto LABEL_814;
        }
      }

LABEL_815:
      if (v280 == 66)
      {
        goto LABEL_819;
      }

      if (*(v628 + 3636))
      {
        v558 = *(v628 + 3640) + *(v628 + 3638);
        v559 = v558;
        *(v628 + 3640) = v558;
        v560 = v558 - 1000;
        if (v559 >= 1000)
        {
          *(v628 + 3640) = v560;
          goto LABEL_819;
        }
      }

      push_indice(v33, 1397, v275, 5);
      memcpy(v673, v608, 0x348uLL);
      if (v619 > v619 + 840)
      {
        goto LABEL_870;
      }

      WIsyn(v673, v619, v646, (v33 + 41472), __b, v654, 256, 0);
      memcpy(v673, v619, 0x348uLL);
      v66 = v608;
      DTFS_copy(v608, v673);
      memcpy(v673, __src, 0x348uLL);
      DTFS_getEngy(v673);
      *(v628 + 3516) = v561;
      v34 = v609;
      *(v609 + 2008) = *(v608 + 102);
      *(v609 + 2016) = *(v608 + 206);
      *(v33 + 41460) = *(v608 + 828);
      memmove((v33 + 40632), v608, 0x198uLL);
      memmove((v33 + 41040), v608 + 408, 0x198uLL);
      free(__src);
      free(v627);
      free(v625);
      free(v624);
      v84 = v619;
      goto LABEL_119;
    }

    if (v553 >= 3.05)
    {
      goto LABEL_803;
    }

    v554 = v586;
    if (v586 <= v582)
    {
      v554 = v582;
    }

    if (v554 <= 0.8 || !*(v609 + 2142))
    {
LABEL_803:
      if (v553 >= 2.8)
      {
        goto LABEL_815;
      }

      v555 = v586;
      if (v586 <= v582)
      {
        v555 = v582;
      }

      if (v555 <= 0.65)
      {
        goto LABEL_815;
      }

LABEL_814:
      if (*(v609 + 2142))
      {
        goto LABEL_815;
      }
    }

LABEL_819:
    *(v34 + 1170) = 1;
    free(__src);
    free(v627);
    free(v625);
    free(v624);
    free(v619);
    v110 = v608;
LABEL_120:
    free(v110);
LABEL_121:
    v56 = *(v34 + 1170);
    v37 = (*(v34 + 1170) != 0) << 8;
LABEL_122:
    v111 = v37;
    if (v56 != 1)
    {
      gp_clip(*(v33 + 96), a11, a12, v37, *v611, v660, (v33 + 18436));
      gp_clip_test_gain_pit(*(v33 + 96), v33 + 18436, v33 + 18460, *(v628 + 2668));
      v112 = &__b[v37];
      if (v37 > 192)
      {
        goto LABEL_870;
      }

      v113 = a15 + 4 * v37;
      if (v113 > a16 || v113 < a15 || (a16 - v113) < 253 || v112 > v654 || __b > v112)
      {
        goto LABEL_870;
      }

      syn_filt(v635);
      v634 += 17;
      v635 += 68;
    }

    v37 += 64;
    v36 = a13;
  }

  while (v111 < 192);
  if (*(v34 + 1170))
  {
    *(v628 + 2664) = 0;
    *(v33 + 96) = 7200;
    *(v628 + 2656) = 0;
    if (*(v628 + 3660))
    {
      v564 = 3;
    }

    else
    {
      v564 = 2;
    }

    *v611 = v564;
    reset_indices_enc(v33);
    signalling_enc(v33, *v611, v592, v565);
  }

  else
  {
    v566 = *a17;
    if (*a17 < a17[2])
    {
      goto LABEL_870;
    }

    v567 = a17[1];
    v41 = v567 >= v566;
    v568 = v567 - v566;
    if (!v41)
    {
      goto LABEL_870;
    }

    if (v568 <= 0x3FF)
    {
      goto LABEL_870;
    }

    memmove(*a17, __b, 0x400uLL);
    if (v566 + 1024 < v566)
    {
      goto LABEL_870;
    }

    v569 = *a17 + 1024;
    if (v569 > a17[1])
    {
      goto LABEL_870;
    }

    v570 = (*a17 + 1020);
    if (v570 > v569)
    {
      goto LABEL_870;
    }

    v571 = a17[2];
    if (v570 < v571)
    {
      goto LABEL_870;
    }

    *v631 = *(&v661 + 3) - *v570;
    v572 = *a17;
    if (*a17 < v571)
    {
      goto LABEL_870;
    }

    v573 = *a18;
    if (*a18 < a18[2])
    {
      goto LABEL_870;
    }

    v574 = a18[1];
    v41 = v574 >= v573;
    v575 = v574 - v573;
    if (!v41)
    {
      goto LABEL_870;
    }

    v576 = a17[1];
    if (v572 > v576)
    {
      goto LABEL_870;
    }

    if (v576 - v572 < 0x400)
    {
      goto LABEL_870;
    }

    if (v575 <= 0x3FF)
    {
      goto LABEL_870;
    }

    memmove(*a18, v572, 0x400uLL);
    v577 = v628;
    if (v573 + 1024 < v573)
    {
      goto LABEL_870;
    }

    *v628 = 0x40000000;
    *(v628 + 8) = *(v628 + 2668);
    v578 = (v628 + 8);
    v579 = 4;
    do
    {
      if (v578 < v577 || v578 >= v578 + 1 || (v578 + 2) > v33 + 37984 || v578 + 1 > v578 + 2)
      {
        goto LABEL_870;
      }

      v578[1] = *v578;
      ++v578;
      --v579;
      v577 = v628;
    }

    while (v579);
    *(v633 + 1784) = *(v628 + 2672);
    if (a20 < a19)
    {
      goto LABEL_870;
    }

    if (a20 - a19 <= 0xF)
    {
      goto LABEL_870;
    }

    *a19 = v651;
    v580 = a19 + 1;
    if (a19 + 1 < a19)
    {
      goto LABEL_870;
    }

    if (a19 + 20 > a20)
    {
      goto LABEL_870;
    }

    if (v580 > a19 + 5)
    {
      goto LABEL_870;
    }

    *v580 = HIDWORD(v651);
    if (*a18 < a18[2])
    {
      goto LABEL_870;
    }

    interp_code_5over2(*a18, a18[1], a23, a24, 256);
    LODWORD(v673[0]) = 0;
    vDSP_vfill(v673, a21, 1, 5uLL);
  }

  *(v34 + 2142) = v595;
}