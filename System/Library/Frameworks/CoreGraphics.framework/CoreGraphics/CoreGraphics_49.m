uint64_t WF_image_mark_RGB32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v121 = *(a2 + 5) - a5;
  }

  else
  {
    v121 = 0;
  }

  v9 = *(a2 + 2);
  v10 = a2[1];
  v120 = *a2;
  v119 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 9);
  v14 = *(a2 + 11);
  v15 = *(a2 + 7) + v14 * a4;
  v16 = *(a1 + 32);
  v17 = (v16 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3));
  v18 = *(a1 + 176);
  result = 4 * (v8 != 0);
  if (v18)
  {
    v117 = *(a2 + 15);
    v118 = *(a2 + 13);
    v20 = 32 - v10;
    v21 = v9 * 0.3;
    v22 = v9 * 0.59;
    v23 = v9 * 0.11;
    v116 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v117 - v15) | (v15 - v118)) < 0)
      {
        v26 = 0;
        v25 = 0;
      }

      else
      {
        v24 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        v25 = v24 - 7 >= 9 ? -v11 : v11;
        v26 = weights_21890[v24] & 0xF;
      }

      v27 = v16 + (v15 >> v13) * v11;
      if (v120 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v116;
        v29 = a5;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = &v27[v30];
          if (v17 >= &v27[v30])
          {
            v33 = &v27[v30];
          }

          else
          {
            v33 = v17;
          }

          if (v16 > v33)
          {
            v33 = v16;
          }

          v34 = bswap32(*v33);
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v26)
          {
            v46 = &v32[v25];
            if (v17 < &v32[v25])
            {
              v46 = v17;
            }

            if (v16 > v46)
            {
              v46 = v16;
            }

            v47 = BLEND8_21892[v26];
            v44 = v34 - ((v47 & v34) >> v26);
            v45 = (bswap32(*v46) & v47) >> v26;
            goto LABEL_46;
          }

LABEL_47:
          v48 = __ROL4__(v34, v10);
          v49 = *&_blt_float[HIBYTE(v48)];
          v50 = *&_blt_float[BYTE2(v48)];
          v51 = *&_blt_float[BYTE1(v48)];
          v52 = *&_blt_float[((v34 << v10) | (v34 >> v20)) | v6];
          if (v9 >= 1.0)
          {
            v53 = v49 * 0.3;
            v54 = v50 * 0.59;
            v55 = v51 * 0.11;
          }

          else
          {
            v53 = v21 * v49;
            v54 = v22 * v50;
            v55 = v23 * v51;
            v52 = v9 * v52;
          }

          *v7 = bswap32(COERCE_UNSIGNED_INT((v53 + v54) + v55));
          if (v8)
          {
            *v8 = bswap32(LODWORD(v52));
          }

          v28 += 2;
          ++v7;
          v8 = (v8 + result);
          if (!--v29)
          {
            goto LABEL_99;
          }
        }

        v36 = &v32[v31 >> 4];
        if (v17 < v36)
        {
          v36 = v17;
        }

        if (v16 > v36)
        {
          v36 = v16;
        }

        v37 = bswap32(*v36);
        if (v26)
        {
          v38 = &v32[v25];
          if (v17 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v17;
          }

          if (v16 > v39)
          {
            v39 = v16;
          }

          v40 = bswap32(*v39);
          v41 = (v38 + (v31 >> 4));
          if (v17 < v41)
          {
            v41 = v17;
          }

          if (v16 > v41)
          {
            v41 = v16;
          }

          v42 = BLEND8_21892[v26];
          v34 = v34 - ((v42 & v34) >> v26) + ((v42 & v40) >> v26);
          v37 = v37 - ((v42 & v37) >> v26) + ((bswap32(*v41) & v42) >> v26);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_46:
        v34 = v44 + v45;
        goto LABEL_47;
      }

LABEL_99:
      v7 += v119;
      v15 += v14;
      v8 += v121;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_99;
    }

    v57 = v116;
    v56 = a5;
    while (1)
    {
      v58 = *(v57 - 1);
      v59 = *v57;
      v60 = &v27[v58];
      if (v17 >= &v27[v58])
      {
        v61 = &v27[v58];
      }

      else
      {
        v61 = v17;
      }

      if (v16 > v61)
      {
        v61 = v16;
      }

      v62 = bswap32(*v61);
      v63 = v59 & 0xF;
      if ((v59 & 0xF) != 0)
      {
        v64 = &v60[v59 >> 4];
        if (v17 < v64)
        {
          v64 = v17;
        }

        if (v16 > v64)
        {
          v64 = v16;
        }

        v65 = bswap32(*v64);
        if (v26)
        {
          v66 = &v60[v25];
          if (v17 >= v66)
          {
            v67 = v66;
          }

          else
          {
            v67 = v17;
          }

          if (v16 > v67)
          {
            v67 = v16;
          }

          v68 = bswap32(*v67);
          v69 = (v66 + (v59 >> 4));
          if (v17 < v69)
          {
            v69 = v17;
          }

          if (v16 > v69)
          {
            v69 = v16;
          }

          v70 = BLEND8_21892[v26];
          v62 = v62 - ((v70 & v62) >> v26) + ((v70 & v68) >> v26);
          v65 = v65 - ((v70 & v65) >> v26) + ((bswap32(*v69) & v70) >> v26);
        }

        v71 = BLEND8_21892[*v57 & 0xF];
        v72 = v62 - ((v71 & v62) >> v63);
        v73 = (v71 & v65) >> v63;
      }

      else
      {
        if (!v26)
        {
          goto LABEL_85;
        }

        v74 = &v60[v25];
        if (v17 < &v60[v25])
        {
          v74 = v17;
        }

        if (v16 > v74)
        {
          v74 = v16;
        }

        v75 = BLEND8_21892[v26];
        v72 = v62 - ((v75 & v62) >> v26);
        v73 = (bswap32(*v74) & v75) >> v26;
      }

      v62 = v72 + v73;
LABEL_85:
      v76 = __ROL4__(v62, v10);
      v77 = *&_blt_float[HIBYTE(v76)];
      v78 = *&_blt_float[BYTE2(v76)];
      v79 = *&_blt_float[BYTE1(v76)];
      v80 = *&_blt_float[((v62 << v10) | (v62 >> v20)) | v6];
      if (v9 >= 1.0)
      {
        v81 = v77 * 0.3;
        v82 = v78 * 0.59;
        v83 = v79 * 0.11;
      }

      else
      {
        v81 = v21 * v77;
        v82 = v22 * v78;
        v83 = v23 * v79;
        v80 = v9 * v80;
      }

      v84 = (v81 + v82) + v83;
      if (v8)
      {
        if (v80 >= 1.0)
        {
          goto LABEL_92;
        }

        if (v80 > 0.0)
        {
          v84 = v84 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v80));
          v80 = v80 + (COERCE_FLOAT(bswap32(*v8)) * (1.0 - v80));
LABEL_92:
          *v7 = bswap32(LODWORD(v84));
          *v8 = bswap32(LODWORD(v80));
        }
      }

      else
      {
        if (v80 >= 1.0)
        {
          v85 = v84;
LABEL_97:
          *v7 = bswap32(LODWORD(v85));
          goto LABEL_98;
        }

        if (v80 > 0.0)
        {
          v85 = v84 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v80));
          goto LABEL_97;
        }
      }

LABEL_98:
      v57 += 2;
      ++v7;
      v8 = (v8 + result);
      if (!--v56)
      {
        goto LABEL_99;
      }
    }
  }

  v86 = v9 * 0.3;
  v87 = v9 * 0.59;
  v88 = v9 * 0.11;
  do
  {
    v89 = v16 + (v15 >> v13) * v11;
    if (v120 != 1)
    {
      v102 = (v12 + 16 * a3);
      v103 = a5;
      if (a5 < 1)
      {
        goto LABEL_135;
      }

      while (1)
      {
        v104 = *v102;
        v102 += 2;
        v105 = &v89[v104];
        if (v17 < &v89[v104])
        {
          v105 = v17;
        }

        if (v16 > v105)
        {
          v105 = v16;
        }

        v106 = __ROL4__(bswap32(*v105), v10);
        v107 = *&_blt_float[HIBYTE(v106)];
        v108 = *&_blt_float[BYTE2(v106)];
        v109 = *&_blt_float[BYTE1(v106)];
        v110 = *&_blt_float[v106 | v6];
        if (v9 >= 1.0)
        {
          v111 = v107 * 0.3;
          v112 = v108 * 0.59;
          v113 = v109 * 0.11;
        }

        else
        {
          v111 = v86 * v107;
          v112 = v87 * v108;
          v113 = v88 * v109;
          v110 = v9 * v110;
        }

        v114 = (v111 + v112) + v113;
        if (v8)
        {
          if (v110 >= 1.0)
          {
            goto LABEL_128;
          }

          if (v110 > 0.0)
          {
            v114 = v114 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v110));
            v110 = v110 + (COERCE_FLOAT(bswap32(*v8)) * (1.0 - v110));
LABEL_128:
            *v7 = bswap32(LODWORD(v114));
            *v8 = bswap32(LODWORD(v110));
          }
        }

        else
        {
          if (v110 >= 1.0)
          {
            v115 = v114;
LABEL_133:
            *v7 = bswap32(LODWORD(v115));
            goto LABEL_134;
          }

          if (v110 > 0.0)
          {
            v115 = v114 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v110));
            goto LABEL_133;
          }
        }

LABEL_134:
        ++v7;
        v8 = (v8 + result);
        if (!--v103)
        {
          goto LABEL_135;
        }
      }
    }

    if (a5 >= 1)
    {
      v90 = (v12 + 16 * a3);
      v91 = a5;
      do
      {
        v92 = *v90;
        v90 += 2;
        v93 = &v89[v92];
        if (v17 < &v89[v92])
        {
          v93 = v17;
        }

        if (v16 > v93)
        {
          v93 = v16;
        }

        v94 = __ROL4__(bswap32(*v93), v10);
        v95 = *&_blt_float[HIBYTE(v94)];
        v96 = *&_blt_float[BYTE2(v94)];
        v97 = *&_blt_float[BYTE1(v94)];
        v98 = *&_blt_float[v94 | v6];
        if (v9 >= 1.0)
        {
          v99 = v95 * 0.3;
          v100 = v96 * 0.59;
          v101 = v97 * 0.11;
        }

        else
        {
          v99 = v86 * v95;
          v100 = v87 * v96;
          v101 = v88 * v97;
          v98 = v9 * v98;
        }

        *v7 = bswap32(COERCE_UNSIGNED_INT((v99 + v100) + v101));
        if (v8)
        {
          *v8 = bswap32(LODWORD(v98));
        }

        ++v7;
        v8 = (v8 + result);
        --v91;
      }

      while (v91);
    }

LABEL_135:
    v7 += v119;
    v15 += v14;
    v8 += v121;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t WF_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v90 = *(a2 + 5) - a5;
  }

  else
  {
    v90 = 0;
  }

  v8 = *(a2 + 2);
  v89 = *a2;
  v9 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v10 = *(a2 + 18);
  v12 = *(a2 + 9);
  v13 = *(a2 + 11);
  v14 = *(a2 + 7) + v13 * a4;
  v15 = *(a1 + 32);
  v16 = &v15[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v17 = *(a1 + 176);
  result = 4 * (v7 != 0);
  if (v17)
  {
    v87 = *(a2 + 15);
    v88 = *(a2 + 13);
    v19 = v8 * 0.3;
    v20 = v8 * 0.59;
    v21 = v8 * 0.11;
    v86 = v10 + 16 * a3 + 8;
    while (1)
    {
      if (((v87 - v14) | (v14 - v88)) < 0)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v22 = ((v14 & ~(-1 << v12)) >> (v12 - 4)) & 0xF;
        if (v22 - 7 >= 9)
        {
          v23 = -v11;
        }

        else
        {
          v23 = v11;
        }

        v24 = weights_21890[v22] & 0xF;
      }

      v25 = &v15[(v14 >> v12) * v11];
      if (v89 == 1)
      {
        if (a5 >= 1)
        {
          v26 = v86;
          v27 = a5;
          do
          {
            v28 = *(v26 - 1);
            v29 = *v26;
            v30 = &v25[v28];
            if (v16 >= &v25[v28])
            {
              v31 = &v25[v28];
            }

            else
            {
              v31 = v16;
            }

            if (v15 > v31)
            {
              v31 = v15;
            }

            v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
            if ((v29 & 0xF) != 0)
            {
              v33 = &v30[v29 >> 4];
              if (v16 < v33)
              {
                v33 = v16;
              }

              if (v15 > v33)
              {
                v33 = v15;
              }

              v34 = (*v33 << 24) | (v33[1] << 16) | (v33[2] << 8);
              if (v24)
              {
                if (v16 >= &v30[v23])
                {
                  v35 = &v30[v23];
                }

                else
                {
                  v35 = v16;
                }

                if (v15 > v35)
                {
                  v35 = v15;
                }

                v36 = (*v35 << 24) | (v35[1] << 16) | (v35[2] << 8);
                v37 = &v30[v23 + (v29 >> 4)];
                if (v16 < v37)
                {
                  v37 = v16;
                }

                if (v15 > v37)
                {
                  v37 = v15;
                }

                v38 = BLEND8_21892[v24];
                v32 = v32 - ((v38 & v32) >> v24) + ((v38 & v36) >> v24);
                v34 = v34 - ((v38 & v34) >> v24) + ((((*v37 << 24) | (v37[1] << 16) | (v37[2] << 8)) & v38) >> v24);
              }

              v32 = v32 - ((BLEND8_21892[*v26 & 0xF] & v32) >> (*v26 & 0xF)) + ((BLEND8_21892[*v26 & 0xF] & v34) >> (*v26 & 0xF));
            }

            else if (v24)
            {
              v39 = &v30[v23];
              if (v16 < &v30[v23])
              {
                v39 = v16;
              }

              if (v15 > v39)
              {
                v39 = v15;
              }

              v32 = v32 - ((BLEND8_21892[v24] & v32) >> v24) + ((((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8)) & BLEND8_21892[v24]) >> v24);
            }

            v40 = *&_blt_float[HIBYTE(v32)];
            v41 = *&_blt_float[BYTE2(v32)];
            v42 = *&_blt_float[BYTE1(v32)];
            if (v8 >= 1.0)
            {
              v43 = ((v40 * 0.3) + (v41 * 0.59)) + (v42 * 0.11);
              v44 = 1065353216;
            }

            else
            {
              v43 = ((v19 * v40) + (v20 * v41)) + (v21 * v42);
              v44 = LODWORD(v8);
            }

            *v6 = bswap32(LODWORD(v43));
            if (v7)
            {
              *v7 = bswap32(v44);
            }

            v26 += 2;
            ++v6;
            v7 = (v7 + result);
            --v27;
          }

          while (v27);
        }

        goto LABEL_93;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_93:
      v6 += v9;
      v14 += v13;
      v7 += v90;
      if (!--a6)
      {
        return result;
      }
    }

    v46 = v86;
    v45 = a5;
    while (1)
    {
      v47 = *(v46 - 1);
      v48 = *v46;
      v49 = &v25[v47];
      if (v16 >= &v25[v47])
      {
        v50 = &v25[v47];
      }

      else
      {
        v50 = v16;
      }

      if (v15 > v50)
      {
        v50 = v15;
      }

      v51 = (*v50 << 24) | (v50[1] << 16) | (v50[2] << 8);
      if ((v48 & 0xF) != 0)
      {
        v52 = &v49[v48 >> 4];
        if (v16 < v52)
        {
          v52 = v16;
        }

        if (v15 > v52)
        {
          v52 = v15;
        }

        v53 = (*v52 << 24) | (v52[1] << 16) | (v52[2] << 8);
        if (v24)
        {
          if (v16 >= &v49[v23])
          {
            v54 = &v49[v23];
          }

          else
          {
            v54 = v16;
          }

          if (v15 > v54)
          {
            v54 = v15;
          }

          v55 = (*v54 << 24) | (v54[1] << 16) | (v54[2] << 8);
          v56 = &v49[v23 + (v48 >> 4)];
          if (v16 < v56)
          {
            v56 = v16;
          }

          if (v15 > v56)
          {
            v56 = v15;
          }

          v57 = BLEND8_21892[v24];
          v51 = v51 - ((v57 & v51) >> v24) + ((v57 & v55) >> v24);
          v53 = v53 - ((v57 & v53) >> v24) + ((((*v56 << 24) | (v56[1] << 16) | (v56[2] << 8)) & v57) >> v24);
        }

        v51 = v51 - ((BLEND8_21892[*v46 & 0xF] & v51) >> (*v46 & 0xF)) + ((BLEND8_21892[*v46 & 0xF] & v53) >> (*v46 & 0xF));
      }

      else if (v24)
      {
        v58 = &v49[v23];
        if (v16 < &v49[v23])
        {
          v58 = v16;
        }

        if (v15 > v58)
        {
          v58 = v15;
        }

        v51 = v51 - ((BLEND8_21892[v24] & v51) >> v24) + ((((*v58 << 24) | (v58[1] << 16) | (v58[2] << 8)) & BLEND8_21892[v24]) >> v24);
      }

      v59 = *&_blt_float[HIBYTE(v51)];
      v60 = *&_blt_float[BYTE2(v51)];
      v61 = *&_blt_float[BYTE1(v51)];
      if (v8 >= 1.0)
      {
        v62 = ((v59 * 0.3) + (v60 * 0.59)) + (v61 * 0.11);
        v63 = 1.0;
      }

      else
      {
        v62 = ((v19 * v59) + (v20 * v60)) + (v21 * v61);
        v63 = v8;
      }

      if (v7)
      {
        if (v63 >= 1.0)
        {
          goto LABEL_87;
        }

        if (v63 > 0.0)
        {
          v62 = v62 + (COERCE_FLOAT(bswap32(*v6)) * (1.0 - v63));
          v63 = v63 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v63));
LABEL_87:
          *v6 = bswap32(LODWORD(v62));
          *v7 = bswap32(LODWORD(v63));
        }
      }

      else
      {
        if (v63 >= 1.0)
        {
          goto LABEL_91;
        }

        if (v63 > 0.0)
        {
          v62 = v62 + (COERCE_FLOAT(bswap32(*v6)) * (1.0 - v63));
LABEL_91:
          *v6 = bswap32(LODWORD(v62));
        }
      }

      v46 += 2;
      ++v6;
      v7 = (v7 + result);
      if (!--v45)
      {
        goto LABEL_93;
      }
    }
  }

  v64 = v8 * 0.3;
  v65 = v8 * 0.59;
  v66 = v8 * 0.11;
  do
  {
    v67 = &v15[(v14 >> v12) * v11];
    if (v89 != 1)
    {
      v77 = (v10 + 16 * a3);
      v78 = a5;
      if (a5 < 1)
      {
        goto LABEL_128;
      }

      while (1)
      {
        v79 = *v77;
        v77 += 2;
        v80 = &v67[v79];
        if (v16 < &v67[v79])
        {
          v80 = v16;
        }

        if (v15 > v80)
        {
          v80 = v15;
        }

        v81 = *&_blt_float[*v80];
        v82 = *&_blt_float[v80[1]];
        v83 = *&_blt_float[v80[2]];
        if (v8 >= 1.0)
        {
          v84 = ((v81 * 0.3) + (v82 * 0.59)) + (v83 * 0.11);
          v85 = 1.0;
        }

        else
        {
          v84 = ((v64 * v81) + (v65 * v82)) + (v66 * v83);
          v85 = v8;
        }

        if (v7)
        {
          if (v85 >= 1.0)
          {
            goto LABEL_122;
          }

          if (v85 > 0.0)
          {
            v84 = v84 + (COERCE_FLOAT(bswap32(*v6)) * (1.0 - v85));
            v85 = v85 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v85));
LABEL_122:
            *v6 = bswap32(LODWORD(v84));
            *v7 = bswap32(LODWORD(v85));
          }
        }

        else
        {
          if (v85 >= 1.0)
          {
            goto LABEL_126;
          }

          if (v85 > 0.0)
          {
            v84 = v84 + (COERCE_FLOAT(bswap32(*v6)) * (1.0 - v85));
LABEL_126:
            *v6 = bswap32(LODWORD(v84));
          }
        }

        ++v6;
        v7 = (v7 + result);
        if (!--v78)
        {
          goto LABEL_128;
        }
      }
    }

    if (a5 >= 1)
    {
      v68 = (v10 + 16 * a3);
      v69 = a5;
      do
      {
        v70 = *v68;
        v68 += 2;
        v71 = &v67[v70];
        if (v16 < &v67[v70])
        {
          v71 = v16;
        }

        if (v15 > v71)
        {
          v71 = v15;
        }

        v72 = *&_blt_float[*v71];
        v73 = *&_blt_float[v71[1]];
        v74 = *&_blt_float[v71[2]];
        if (v8 >= 1.0)
        {
          v75 = ((v72 * 0.3) + (v73 * 0.59)) + (v74 * 0.11);
          v76 = 1065353216;
        }

        else
        {
          v75 = ((v64 * v72) + (v65 * v73)) + (v66 * v74);
          v76 = LODWORD(v8);
        }

        *v6 = bswap32(LODWORD(v75));
        if (v7)
        {
          *v7 = bswap32(v76);
        }

        ++v6;
        v7 = (v7 + result);
        --v69;
      }

      while (v69);
    }

LABEL_128:
    v6 += v9;
    v14 += v13;
    v7 += v90;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t WF_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v79 = *(a2 + 5) - a5;
  }

  else
  {
    v79 = 0;
  }

  v8 = *(a2 + 2);
  v78 = *a2;
  v9 = *(a2 + 3) - a5;
  v10 = *(a2 + 17);
  v11 = *(a2 + 18);
  v12 = *(a2 + 9);
  v13 = *(a2 + 11);
  v14 = *(a2 + 7) + v13 * a4;
  v15 = *(a1 + 32);
  v16 = &v15[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v17 = 4 * (v7 != 0);
  if (*(a1 + 176))
  {
    v76 = *(a2 + 15);
    v77 = *(a2 + 13);
    v18 = a2[2];
    v19 = fminf(v8, 1.0);
    v20 = bswap32(LODWORD(v19));
    v21 = 1.0 - v19;
    if (v8 >= 1.0)
    {
      v18 = 1065353216;
    }

    v22 = bswap32(v18);
    v75 = v11 + 16 * a3 + 8;
    while (1)
    {
      if (((v76 - v14) | (v14 - v77)) < 0)
      {
        v25 = 0;
        v24 = 0;
      }

      else
      {
        v23 = ((v14 & ~(-1 << v12)) >> (v12 - 4)) & 0xF;
        if (v23 - 7 >= 9)
        {
          v24 = -v10;
        }

        else
        {
          v24 = v10;
        }

        v25 = weights_21890[v23] & 0xF;
      }

      result = v14 >> v12;
      v27 = &v15[(v14 >> v12) * v10];
      if (v78 == 1)
      {
        if (a5 >= 1)
        {
          result = v75;
          v28 = a5;
          do
          {
            v29 = *(result - 8);
            v30 = *result;
            v31 = &v27[v29];
            if (v16 >= &v27[v29])
            {
              v32 = &v27[v29];
            }

            else
            {
              v32 = v16;
            }

            if (v15 > v32)
            {
              v32 = v15;
            }

            v33 = *v32;
            if ((v30 & 0xF) != 0)
            {
              v34 = &v31[v30 >> 4];
              if (v16 < v34)
              {
                v34 = v16;
              }

              if (v15 > v34)
              {
                v34 = v15;
              }

              v35 = *v34;
              if (v25)
              {
                v36 = &v31[v24];
                if (v16 >= v36)
                {
                  v37 = v36;
                }

                else
                {
                  v37 = v16;
                }

                if (v15 > v37)
                {
                  v37 = v15;
                }

                v38 = *v37;
                v39 = &v36[v30 >> 4];
                if (v16 < v39)
                {
                  v39 = v16;
                }

                if (v15 > v39)
                {
                  v39 = v15;
                }

                v40 = BLEND8_21892[v25];
                v33 = v33 - ((v40 & v33) >> v25) + ((v40 & v38) >> v25);
                v35 = v35 - ((v40 & v35) >> v25) + ((v40 & *v39) >> v25);
              }

              v33 = v33 - ((BLEND8_21892[*result & 0xFLL] & v33) >> (*result & 0xF)) + ((BLEND8_21892[*result & 0xFLL] & v35) >> (*result & 0xF));
            }

            else if (v25)
            {
              v41 = &v31[v24];
              if (v16 < &v31[v24])
              {
                v41 = v16;
              }

              if (v15 > v41)
              {
                v41 = v15;
              }

              v33 = v33 - ((BLEND8_21892[v25] & v33) >> v25) + ((BLEND8_21892[v25] & *v41) >> v25);
            }

            v42 = *&_blt_float[v33];
            if (v8 < 1.0)
            {
              v42 = v8 * v42;
            }

            *v6 = bswap32(LODWORD(v42));
            if (v7)
            {
              *v7 = v22;
            }

            result += 16;
            ++v6;
            v7 = (v7 + v17);
            --v28;
          }

          while (v28);
        }

        goto LABEL_93;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_93:
      v6 += v9;
      v14 += v13;
      v7 += v79;
      if (!--a6)
      {
        return result;
      }
    }

    v43 = v75;
    result = a5;
    while (1)
    {
      v44 = *(v43 - 1);
      v45 = *v43;
      v46 = &v27[v44];
      if (v16 >= &v27[v44])
      {
        v47 = &v27[v44];
      }

      else
      {
        v47 = v16;
      }

      if (v15 > v47)
      {
        v47 = v15;
      }

      v48 = *v47;
      if ((v45 & 0xF) != 0)
      {
        v49 = &v46[v45 >> 4];
        if (v16 < v49)
        {
          v49 = v16;
        }

        if (v15 > v49)
        {
          v49 = v15;
        }

        v50 = *v49;
        if (v25)
        {
          if (v16 >= &v46[v24])
          {
            v51 = &v46[v24];
          }

          else
          {
            v51 = v16;
          }

          if (v15 > v51)
          {
            v51 = v15;
          }

          v52 = *v51;
          v53 = &v46[v24 + (v45 >> 4)];
          if (v16 < v53)
          {
            v53 = v16;
          }

          if (v15 > v53)
          {
            v53 = v15;
          }

          v54 = BLEND8_21892[v25];
          v48 = v48 - ((v54 & v48) >> v25) + ((v54 & v52) >> v25);
          v50 = v50 - ((v54 & v50) >> v25) + ((v54 & *v53) >> v25);
        }

        v48 = v48 - ((BLEND8_21892[*v43 & 0xF] & v48) >> (*v43 & 0xF)) + ((BLEND8_21892[*v43 & 0xF] & v50) >> (*v43 & 0xF));
      }

      else if (v25)
      {
        v55 = &v46[v24];
        if (v16 < &v46[v24])
        {
          v55 = v16;
        }

        if (v15 > v55)
        {
          v55 = v15;
        }

        v48 = v48 - ((BLEND8_21892[v25] & v48) >> v25) + ((BLEND8_21892[v25] & *v55) >> v25);
      }

      v56 = *&_blt_float[v48];
      if (v8 < 1.0)
      {
        v56 = v8 * v56;
      }

      if (v7)
      {
        if (v19 < 1.0)
        {
          if (v19 > 0.0)
          {
            v57 = bswap32(COERCE_UNSIGNED_INT(v19 + (COERCE_FLOAT(bswap32(*v7)) * v21)));
            *v6 = bswap32(COERCE_UNSIGNED_INT(v56 + (COERCE_FLOAT(bswap32(*v6)) * v21)));
            *v7 = v57;
          }
        }

        else
        {
          *v6 = bswap32(LODWORD(v56));
          *v7 = v20;
        }

        goto LABEL_92;
      }

      if (v19 >= 1.0)
      {
        goto LABEL_91;
      }

      if (v19 > 0.0)
      {
        break;
      }

LABEL_92:
      v43 += 2;
      ++v6;
      v7 = (v7 + v17);
      if (!--result)
      {
        goto LABEL_93;
      }
    }

    v56 = v56 + (COERCE_FLOAT(bswap32(*v6)) * v21);
LABEL_91:
    *v6 = bswap32(LODWORD(v56));
    goto LABEL_92;
  }

  v58 = (v11 + 16 * a3);
  v59 = LODWORD(v8);
  v60 = fminf(v8, 1.0);
  v61 = bswap32(LODWORD(v60));
  v62 = 1.0 - v60;
  if (v8 >= 1.0)
  {
    v59 = 1065353216;
  }

  v63 = bswap32(v59);
  do
  {
    result = &v15[(v14 >> v12) * v10];
    if (v78 != 1)
    {
      v69 = v58;
      v70 = a5;
      if (a5 < 1)
      {
        goto LABEL_128;
      }

      while (1)
      {
        v71 = *v69;
        v69 += 2;
        v72 = (result + v71);
        if (v16 < result + v71)
        {
          v72 = v16;
        }

        if (v15 > v72)
        {
          v72 = v15;
        }

        v73 = *&_blt_float[*v72];
        if (v8 < 1.0)
        {
          v73 = v8 * v73;
        }

        if (v7)
        {
          if (v60 < 1.0)
          {
            if (v60 > 0.0)
            {
              v74 = bswap32(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(bswap32(*v7)) * v62)));
              *v6 = bswap32(COERCE_UNSIGNED_INT(v73 + (COERCE_FLOAT(bswap32(*v6)) * v62)));
              *v7 = v74;
            }
          }

          else
          {
            *v6 = bswap32(LODWORD(v73));
            *v7 = v61;
          }

          goto LABEL_127;
        }

        if (v60 >= 1.0)
        {
          goto LABEL_126;
        }

        if (v60 > 0.0)
        {
          break;
        }

LABEL_127:
        ++v6;
        v7 = (v7 + v17);
        if (!--v70)
        {
          goto LABEL_128;
        }
      }

      v73 = v73 + (COERCE_FLOAT(bswap32(*v6)) * v62);
LABEL_126:
      *v6 = bswap32(LODWORD(v73));
      goto LABEL_127;
    }

    if (a5 >= 1)
    {
      v64 = v58;
      v65 = a5;
      do
      {
        v66 = *v64;
        v64 += 2;
        v67 = (result + v66);
        if (v16 < result + v66)
        {
          v67 = v16;
        }

        if (v15 > v67)
        {
          v67 = v15;
        }

        v68 = *&_blt_float[*v67];
        if (v8 < 1.0)
        {
          v68 = v8 * v68;
        }

        *v6 = bswap32(LODWORD(v68));
        if (v7)
        {
          *v7 = v63;
        }

        ++v6;
        v7 = (v7 + v17);
        --v65;
      }

      while (v65);
    }

LABEL_128:
    v6 += v9;
    v14 += v13;
    v7 += v79;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t WF_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v20[482] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v9 = *(*(*v2 + 56) + 16 * *v3 + 8 * v8 + 4 * (*(v3 + 6) == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, &v13, v18) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) != 0x1000000)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 16))
  {
    v12 = Wf_shade_radial_W;
  }

  else if (*(v5 + 24))
  {
    v12 = Wf_shade_conic_W;
  }

  else if (v16 < 2)
  {
    v12 = Wf_shade_axial_W;
  }

  else
  {
    v12 = Wf_shade_custom_W;
  }

  v13 = v12;
LABEL_22:
  v14 = *v7;
  v15 = v14;
  WF_image_mark(v6, &v13, v9, v11);
  if (v17 && (v17 < &v19 || v20 < v17))
  {
    free(v17);
  }

  return 1;
}

uint64_t color_space_state_create_with_profile_sets(unint64_t a1, unint64_t theArray)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!(a1 | theArray))
  {
    return 0;
  }

  profile_from_set_f = a1;
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFArrayGetCount(theArray) - 1;
    a1 = theArray;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
  if (!ValueAtIndex)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(ValueAtIndex, @"ColorSyncProfile");
  if (profile_sets_get_number_of_components_cglibrarypredicate != -1)
  {
    dispatch_once(&profile_sets_get_number_of_components_cglibrarypredicate, &__block_literal_global_14_5495);
  }

  number_of_components_f = profile_sets_get_number_of_components_f(Value);
  v8 = number_of_components_f;
  if (number_of_components_f)
  {
    v9 = *(CFDataGetBytePtr(number_of_components_f) + 4);
    if (v9 > 1213421087)
    {
      if (v9 <= 1296255030)
      {
        if (v9 > 1282766367)
        {
          if (v9 != 1282766368)
          {
            if (v9 == 1296255029)
            {
              goto LABEL_59;
            }

            if (v9 == 1296255030)
            {
              goto LABEL_21;
            }

            goto LABEL_100;
          }

LABEL_38:
          v10 = 3;
          goto LABEL_39;
        }

        if (v9 == 1213421088)
        {
          goto LABEL_38;
        }

        v11 = 1281450528;
LABEL_37:
        if (v9 != v11)
        {
          goto LABEL_100;
        }

        goto LABEL_38;
      }

      if (v9 > 1380401695)
      {
        if (v9 == 1380401696 || v9 == 1501067552)
        {
          goto LABEL_38;
        }

        v11 = 1482250784;
        goto LABEL_37;
      }

      if (v9 == 1296255031)
      {
LABEL_60:
        v10 = 7;
        goto LABEL_39;
      }

      if (v9 != 1296255032)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v9 <= 943934545)
      {
        if (v9 > 893602897)
        {
          if (v9 != 893602898)
          {
            if (v9 != 910380114)
            {
              if (v9 != 927157330)
              {
                goto LABEL_100;
              }

              goto LABEL_60;
            }

LABEL_21:
            v10 = 6;
            goto LABEL_39;
          }

LABEL_59:
          v10 = 5;
          goto LABEL_39;
        }

        if (v9 != 860048466)
        {
          if (v9 == 876825682)
          {
            goto LABEL_32;
          }

LABEL_100:
          CFRelease(v8);
          return 0;
        }

        goto LABEL_38;
      }

      if (v9 > 1129142602)
      {
        if (v9 == 1129142603)
        {
LABEL_32:
          v10 = 4;
          goto LABEL_39;
        }

        if (v9 == 1196573017)
        {
          v10 = 1;
LABEL_39:
          CFRelease(v8);
          v12 = malloc_type_calloc(0x78uLL, 1uLL, 0x734B9F35uLL);
          v8 = v12;
          if (!v12)
          {
            return v8;
          }

          *v12 = 1;
          *(v12 + 4) = 0;
          v12[10] = theArray != 0;
          *(v12 + 3) = -4294967286;
          v12[11] = 0;
          *(v12 + 6) = v10;
          v20 = (v12 + 48);
          *(v12 + 7) = 0;
          *(v12 + 14) = profile_sets_vtable;
          *(v12 + 8) = -1;
          *(v12 + 10) = 0;
          *(v12 + 11) = 0;
          *(v12 + 5) = icc_get_default_color_components(v10, v13, v14, v15, v16, v17, v18, v19);
          v21 = malloc_type_calloc(0x90uLL, 1uLL, 0x31AFD1BEuLL);
          *(v8 + 96) = v21;
          if (!v21)
          {
            free(v8);
            return 0;
          }

          v22 = v21;
          if (profile_from_set_f)
          {
            v23 = CFRetain(profile_from_set_f);
          }

          else
          {
            v23 = 0;
          }

          *(v22 + 1) = v23;
          if (theArray)
          {
            v24 = CFRetain(theArray);
          }

          else
          {
            v24 = 0;
          }

          *(v22 + 2) = v24;
          if (profile_from_set_f)
          {
            v25 = CFGetTypeID(profile_from_set_f);
            if (v25 == CFArrayGetTypeID())
            {
              if (CFArrayGetCount(profile_from_set_f) < 2)
              {
                v27 = CFArrayGetValueAtIndex(profile_from_set_f, 0);
                v28 = CFDictionaryGetValue(v27, @"ColorSyncProfile");
                profile_from_set_f = v28;
                if (v28)
                {
                  CFRetain(v28);
                }
              }

              else
              {
                *keys = xmmword_1E6E18DC0;
                *&keys[2] = *off_1E6E18DD0;
                values[0] = @"concatenate";
                values[1] = profile_from_set_f;
                v53 = @"scnr";
                v54 = @"CG Platform Set Input Profile";
                v26 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (create_profile_from_set_cglibrarypredicate != -1)
                {
                  dispatch_once(&create_profile_from_set_cglibrarypredicate, &__block_literal_global_64);
                }

                profile_from_set_f = create_profile_from_set_f(v26);
                if (v26)
                {
                  CFRelease(v26);
                }
              }
            }

            else
            {
              profile_from_set_f = 0;
            }
          }

          if (color_space_state_create_with_profile_sets_cglibrarypredicate != -1)
          {
            dispatch_once(&color_space_state_create_with_profile_sets_cglibrarypredicate, &__block_literal_global_5499);
          }

          v29 = color_space_state_create_with_profile_sets_f(profile_from_set_f, 0);
          v30 = CGDataProviderCreateWithCFData(v29);
          *v22 = v30;
          if (v29)
          {
            CFRelease(v29);
            v30 = *v22;
          }

          if (v30)
          {
            if (color_space_state_create_with_profile_sets_cglibrarypredicate_3 != -1)
            {
              dispatch_once(&color_space_state_create_with_profile_sets_cglibrarypredicate_3, &__block_literal_global_6_5500);
            }

            *(v22 + 7) = color_space_state_create_with_profile_sets_f_2(profile_from_set_f);
            memcpy(keys, &CGICCProfileInfoInitializer, 0x128uLL);
            CGCMSUtilsGetICCProfileInfo(profile_from_set_f, keys, 0, v31, v32, v33, v34, v35);
            if (profile_from_set_f)
            {
              CFRelease(profile_from_set_f);
            }

            v36 = keys[0];
            *(v8 + 28) = keys[0];
            *(v8 + 32) = v36;
            *(v8 + 12) = 0;
            *(v22 + 24) = *(keys + 4);
            switch(v10)
            {
              case 4:
                DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
                break;
              case 3:
                DeviceCMYK = CGColorSpaceCreateDeviceRGB();
                break;
              case 1:
                DeviceCMYK = CGColorSpaceCreateDeviceGray();
                break;
              default:
                DeviceCMYK = 0;
                break;
            }

            *(v22 + 6) = DeviceCMYK;
            v38 = malloc_type_malloc(16 * v10, 0x100004000313F17uLL);
            *(v22 + 8) = v38;
            if (v38)
            {
              v39 = v38 + 8;
              v40 = &keys[4];
              do
              {
                *(v39 - 1) = *(v40 - 1);
                v41 = *v40;
                v40 += 2;
                *v39 = v41;
                v39 += 2;
                --v10;
              }

              while (v10);
              values[0] = 0;
              values[1] = 0;
              MD5 = CGDigesterCreateMD5();
              v43 = MD5;
              if (MD5)
              {
                CC_MD5_Update(MD5, (v8 + 24), 4u);
                CC_MD5_Update(v43, (v8 + 48), 8u);
                v44 = *(v8 + 96);
                CC_MD5_Update(v43, (v44 + 24), 0x10u);
              }

              else
              {
                v44 = *(v8 + 96);
              }

              if (*(v44 + 64))
              {
                v45 = *v20;
                if ((*v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v46 = 0;
                  v47 = 0;
                  do
                  {
                    if (v43)
                    {
                      CC_MD5_Update(v43, (*(v44 + 64) + v46), 8u);
                      v45 = *v20;
                    }

                    ++v47;
                    v46 += 8;
                  }

                  while (v47 < 2 * v45);
                }
              }

              if (v43)
              {
                CC_MD5_Final(values, v43);
                v48 = *values;
              }

              else
              {
                v48 = 0uLL;
              }

              v50 = v48;
              free(v43);
              *(v8 + 64) = v50;
              return v8;
            }
          }

          else if (profile_from_set_f)
          {
            CFRelease(profile_from_set_f);
          }

          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFF, memory_order_relaxed) == 1)
          {
            color_space_state_dealloc(v8);
          }

          return 0;
        }

        v11 = 1212961568;
        goto LABEL_37;
      }

      if (v9 != 943934546)
      {
        v11 = 1129142560;
        goto LABEL_37;
      }
    }

    v10 = 8;
    goto LABEL_39;
  }

  return v8;
}

uint64_t (*__color_space_state_create_with_profile_sets_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_5506;
  }

  color_space_state_create_with_profile_sets_f_2 = v1;
  return result;
}

uint64_t (*__color_space_state_create_with_profile_sets_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyData");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_5506;
  }

  color_space_state_create_with_profile_sets_f = v1;
  return result;
}

uint64_t (*__create_profile_from_set_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncMakeProfile");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_5506;
  }

  create_profile_from_set_f = v1;
  return result;
}

__CFString *copy_debug_description(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = *(a1 + 24);
    if (*(v8 + 24) != 10)
    {
      _CGHandleAssert("copy_debug_description", 70, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ProfileSets.c", "space->state->type == kCGColorSpaceProfileSets", "type %d", a6, a7, a8, *(v8 + 24));
    }

    v9 = *(v8 + 96);
    if (v9)
    {
      v11 = *(v9 + 8);
      v10 = v9 + 8;
      if (v11)
      {
        if (os_variant_has_internal_content())
        {
          Mutable = CFStringCreateMutable(0, 0);
          v13 = 0;
          v14 = 0;
          for (i = 1; ; i = 0)
          {
            v16 = i;
            v17 = *(v10 + 8 * v14);
            if (v17)
            {
              v18 = off_1E6E18D90[v14];
              v19 = CFGetTypeID(*(v10 + 8 * v14));
              if (v19 == CFArrayGetTypeID())
              {
                Count = CFArrayGetCount(v17);
                v21 = Count;
                v22 = "profiles";
                if (Count == 1)
                {
                  v22 = "profile";
                }

                CFStringAppendFormat(Mutable, 0, @"\n\t\t%ld %s in %s set:\n\t\t\t", Count, v22, v18);
                v13 = Mutable;
                if (v21 >= 1)
                {
                  break;
                }
              }
            }

LABEL_28:
            v14 = 1;
            if ((v16 & 1) == 0)
            {
              return v13;
            }
          }

          v23 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v17, v23);
            if (ValueAtIndex && (v25 = ValueAtIndex, v26 = CFGetTypeID(ValueAtIndex), v26 == CFDictionaryGetTypeID()))
            {
              Value = CFDictionaryGetValue(v25, @"ColorSyncProfile");
              if (copy_debug_description_cglibrarypredicate != -1)
              {
                dispatch_once(&copy_debug_description_cglibrarypredicate, &__block_literal_global_31);
              }

              v28 = copy_debug_description_f(Value);
              v29 = v28;
              if (v28)
              {
                v30 = v28;
              }

              else
              {
                v30 = @"no profile description";
              }

              CFStringAppend(Mutable, v30);
              if (v29)
              {
                CFRelease(v29);
              }

              v31 = @"; ";
              if (v23 >= v21 - 1)
              {
                goto LABEL_26;
              }
            }

            else
            {
              v31 = @";?;";
            }

            CFStringAppend(Mutable, v31);
LABEL_26:
            if (v21 == ++v23)
            {
              v13 = Mutable;
              goto LABEL_28;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t (*__copy_debug_description_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_5506;
  }

  copy_debug_description_f = v1;
  return result;
}

CFTypeRef profile_sets_create_icc_profile_description(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  if (*(v8 + 24) != 10)
  {
    _CGHandleAssert("profile_sets_create_icc_profile_description", 122, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ProfileSets.c", "space->state->type == kCGColorSpaceProfileSets", "type %d", a6, a7, a8, *(v8 + 24));
  }

  v9 = *(v8 + 96);
  v10 = *(v9 + 40);
  if (!v10)
  {
    if (*(v9 + 56))
    {
      v11 = *(v9 + 56);
    }

    else
    {
      v11 = @"<no description>";
    }

    v12 = CFRetain(v11);
    v13 = 0;
    atomic_compare_exchange_strong_explicit((v9 + 40), &v13, v12, memory_order_relaxed, memory_order_relaxed);
    if (v13 && v12)
    {
      CFRelease(v12);
    }

    v10 = *(v9 + 40);
    if (!v10)
    {
      return 0;
    }
  }

  return CFRetain(v10);
}

void profile_sets_finalize(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    CGDataProviderRelease(*v1);
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v1 + 48);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(v1 + 64);

    free(v7);
  }
}

uint64_t (*__profile_sets_get_number_of_components_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyHeader");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_5506;
  }

  profile_sets_get_number_of_components_f = v1;
  return result;
}

CGColorSpaceRef CGColorSpaceConcatenate(CGColorSpace *a1, uint64_t a2, CGColorSpace *a3)
{
  Pattern = 0;
  if (!a3)
  {
    return Pattern;
  }

  AlternateColorSpace = a1;
  if (!a1)
  {
    return Pattern;
  }

  while (1)
  {
    Type = CGColorSpaceGetType(a3);
    if (Type < 0xA && ((0x387u >> Type) & 1) != 0)
    {
      return 0;
    }

    v8 = CGColorSpaceGetType(AlternateColorSpace);
    if (v8 != 8)
    {
      break;
    }

    AlternateColorSpace = CGColorSpaceGetAlternateColorSpace(AlternateColorSpace);
    if (!AlternateColorSpace)
    {
      return 0;
    }
  }

  Pattern = 0;
  if (v8 > 0xB)
  {
    return Pattern;
  }

  if (((1 << v8) & 0xC78) != 0)
  {
    v9 = CGColorSpaceUsesExtendedRange(AlternateColorSpace);
    ProfileSetForColorSpace = CGCMSUtilsCreateProfileSetForColorSpace(AlternateColorSpace, @"ColorSyncTransformDeviceToPCS", 0, 0, v9, 0);
    v11 = CGColorSpaceUsesExtendedRange(a3);
    v12 = CGCMSUtilsCreateProfileSetForColorSpace(a3, @"ColorSyncTransformPCSToPCS", 0, 0, v11, 0);
    v13 = concatenate_sets(ProfileSetForColorSpace, v12);
    if (ProfileSetForColorSpace)
    {
      CFRelease(ProfileSetForColorSpace);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v14 = CGColorSpaceUsesExtendedRange(a3);
    v15 = CGCMSUtilsCreateProfileSetForColorSpace(a3, @"ColorSyncTransformPCSToPCS", 0, 0, v14, 1);
    v16 = CGColorSpaceUsesExtendedRange(AlternateColorSpace);
    v17 = CGCMSUtilsCreateProfileSetForColorSpace(AlternateColorSpace, @"ColorSyncTransformPCSToDevice", 0, 0, v16, 1);
    v18 = concatenate_sets(v15, v17);
    if (v15)
    {
      CFRelease(v15);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v26 = color_space_state_create_with_profile_sets(v13, v18);
    if (v13)
    {
      CFRelease(v13);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    Pattern = CGColorSpaceCreateWithState(v26, v19, v20, v21, v22, v23, v24, v25);
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        color_space_state_dealloc(v26);
      }
    }

    return Pattern;
  }

  if (v8 != 7)
  {
    if (v8 != 9)
    {
      return Pattern;
    }

    BaseColorSpace = CGColorSpaceGetBaseColorSpace(AlternateColorSpace);
    if (BaseColorSpace)
    {
      v28 = CGColorSpaceConcatenate(BaseColorSpace, a2, a3);
      Pattern = CGColorSpaceCreatePattern(v28);
      if (v28)
      {
        CFRelease(v28);
      }

      return Pattern;
    }

    return 0;
  }

  v29 = CGColorSpaceGetBaseColorSpace(AlternateColorSpace);
  v30 = CGColorSpaceConcatenate(v29, a2, a3);
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  v32 = CGColorSpaceCopyColorTable(AlternateColorSpace);
  v33 = v32;
  v34 = *(AlternateColorSpace + 3);
  if (*(v34 + 28) == 5)
  {
    v35 = *(*(v34 + 96) + 8);
  }

  else
  {
    v35 = -1;
  }

  BytePtr = CFDataGetBytePtr(v32);
  Indexed = CGColorSpaceCreateIndexed(v31, v35, BytePtr);
  CFRelease(v33);
  CFRelease(v31);
  return Indexed;
}

__CFArray *concatenate_sets(const __CFArray *a1, const __CFArray *a2)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a1)
    {
      v6.length = CFArrayGetCount(a1);
      v6.location = 0;
      CFArrayAppendArray(Mutable, a1, v6);
    }

    if (a2)
    {
      v7.length = CFArrayGetCount(a2);
      v7.location = 0;
      CFArrayAppendArray(Mutable, a2, v7);
    }
  }

  return Mutable;
}

const void *CGColorSpaceProfileSetsGetDestinationProfile(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 24) != 10)
  {
    return 0;
  }

  v2 = *(v1 + 96);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = CFGetTypeID(*(v2 + 16));
  if (v4 != CFArrayGetTypeID())
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
  if (!ValueAtIndex)
  {
    return 0;
  }

  v6 = ValueAtIndex;
  v7 = CFGetTypeID(ValueAtIndex);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFDictionaryGetValue(v6, @"ColorSyncProfile");
}

uint64_t CGSCombineDeepMaskToDeepMask(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  if (a8 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    if (a7 >= 1)
    {
      v10 = 0;
      v11 = a7 + 1;
      do
      {
        v12 = *(a1 + 2 * v10);
        v13 = *(a3 + v10);
        v8 |= v13;
        v14 = ((((v12 >> 5) & 0x1F) * v13 + ((((v12 >> 5) & 0x1F) * v13) >> 8) + 1) >> 3) & 0x3E0 | (((v12 & 0x1F) * v13 + (((v12 & 0x1F) * v13) >> 8) + 1) >> 8) | (4 * (((*(a1 + 2 * v10) >> 10) & 0x1F) * v13 + ((((v12 >> 10) & 0x1F) * v13) >> 8)) + 4) & 0x7C00;
        v9 |= v14 ^ v12;
        *(a5 + 2 * v10) = v14;
        --v11;
        ++v10;
      }

      while (v11 > 1);
    }

    a5 += a6;
    a1 += a2;
    a3 += a4;
  }

  while (a8-- > 1);
  if (v8)
  {
    return v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CGSCombineMaskToMask(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  if (a8 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = 0;
  v10 = a5 - 1;
  v11 = a3 - 1;
  v12 = a1 - 1;
  do
  {
    if (a7 >= 1)
    {
      v13 = a7 + 1;
      do
      {
        v15 = *++v11;
        v14 = v15;
        v16 = *++v12;
        v9 |= v14;
        v17 = v16 * v14 + ((v16 * v14) >> 8) + 1;
        v8 |= v16 ^ (v17 >> 8);
        *++v10 = BYTE1(v17);
        --v13;
      }

      while (v13 > 1);
    }

    v12 += a2 - a7;
    v11 += a4 - a7;
    v10 += a6 - a7;
  }

  while (a8-- > 1);
  if (v9)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CGSCombineDeepMask(char *a1, int a2, char *a3, int a4, int a5, int a6, unsigned int a7)
{
  v9 = a2;
  v10 = a1;
  v11 = HIBYTE(a7);
  if (a5 == 1)
  {
    v12 = BYTE1(a7) + v11;
    v13 = 255;
    if (v12 <= 0xFE)
    {
      v14 = 255 - v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 == 255;
  }

  else
  {
    if (a5 < 2)
    {
      return 0;
    }

    v14 = v11 ^ 0xFF;
    v13 = BYTE1(a7) ^ 0xFF;
    if (v11)
    {
      v16 = -2;
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 + a5;
    if (BYTE1(a7))
    {
      v15 = v17;
    }

    else
    {
      v15 = v17 + 1;
    }
  }

  if (a6 != 1)
  {
    if (a6 >= 2)
    {
      v20 = BYTE2(a7) ^ 0xFF;
      v19 = a7 ^ 0xFF;
      if (a7)
      {
        v22 = -2;
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 + a6;
      if (BYTE2(a7))
      {
        v21 = v23;
      }

      else
      {
        v21 = v23 + 1;
      }

      goto LABEL_25;
    }

    return 0;
  }

  v18 = BYTE2(a7) + a7;
  v19 = 255;
  if (v18 <= 0xFE)
  {
    v20 = 255 - v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 == 255;
LABEL_25:
  if (a1 != a3 || a2 != a4)
  {
    CGBlt_copyBytes(2 * a5, a6, a1, a3, a2, a4);
    v9 = a4;
    v10 = a3;
  }

  if (v20 <= 0xFE)
  {
    v24 = a3;
    v25 = v10;
    if (v14 <= 0xFE)
    {
      v25 = v10 + 2;
      v26 = *v10;
      v27 = (v20 * v14 + ((v20 * v14) >> 8) + 1) >> 8;
      *a3 = ((((v26 >> 5) & 0x1F) * v27 + ((((v26 >> 5) & 0x1F) * v27) >> 8) + 1) >> 3) & 0x3E0 | (((v26 & 0x1F) * v27 + (((v26 & 0x1F) * v27) >> 8) + 1) >> 8) | (4 * (((v26 >> 10) & 0x1F) * v27 + ((((v26 >> 10) & 0x1F) * v27) >> 8)) + 4) & 0x7C00;
      v24 = a3 + 2;
    }

    if (v15)
    {
      v28 = v15 + 1;
      do
      {
        v29 = *v25;
        v25 += 2;
        *v24 = ((((v29 >> 5) & 0x1F) * v20 + ((((v29 >> 5) & 0x1F) * v20) >> 8) + 1) >> 3) & 0x3E0 | (((v29 & 0x1F) * v20 + (((v29 & 0x1F) * v20) >> 8) + 1) >> 8) & 0x1F | (4 * (((v29 >> 10) & 0x1F) * v20 + ((((v29 >> 10) & 0x1F) * v20) >> 8)) + 4) & 0x7C00;
        v24 += 2;
        --v28;
      }

      while (v28 > 1);
    }

    if (v13 <= 0xFE)
    {
      v30 = *v25;
      v31 = (v20 * v13 + ((v20 * v13) >> 8) + 1) >> 8;
      *v24 = ((((v30 >> 5) & 0x1F) * v31 + ((((v30 >> 5) & 0x1F) * v31) >> 8) + 1) >> 3) & 0x3E0 | (((v30 & 0x1F) * v31 + (((v30 & 0x1F) * v31) >> 8) + 1) >> 8) & 0x1F | (4 * (((v30 >> 10) & 0x1F) * v31 + ((((v30 >> 10) & 0x1F) * v31) >> 8)) + 4) & 0x7C00;
    }

    v10 += v9;
    a3 += a4;
  }

  if (v21 >= 1)
  {
    v32 = v10;
    v33 = a3;
    if (v14 <= 0xFE)
    {
      v34 = v21 + 1;
      v35 = v10;
      v36 = a3;
      do
      {
        v37 = *v35;
        v35 = (v35 + v9);
        *v36 = ((((v37 >> 5) & 0x1F) * v14 + ((((v37 >> 5) & 0x1F) * v14) >> 8) + 1) >> 3) & 0x3E0 | (((v37 & 0x1F) * v14 + (((v37 & 0x1F) * v14) >> 8) + 1) >> 8) & 0x1F | (4 * (((v37 >> 10) & 0x1F) * v14 + ((((v37 >> 10) & 0x1F) * v14) >> 8)) + 4) & 0x7C00;
        v36 = (v36 + a4);
        --v34;
      }

      while (v34 > 1);
      v32 = (v10 + 2);
      v33 = a3 + 2;
    }

    if (v13 <= 0xFE)
    {
      v38 = v15 & ~(v15 >> 31);
      v39 = &v33[2 * v38];
      v40 = v21 + 1;
      v41 = &v32[v38];
      do
      {
        v42 = *v41;
        v41 = (v41 + v9);
        *v39 = ((((v42 >> 5) & 0x1F) * v13 + ((((v42 >> 5) & 0x1F) * v13) >> 8) + 1) >> 3) & 0x3E0 | (((v42 & 0x1F) * v13 + (((v42 & 0x1F) * v13) >> 8) + 1) >> 8) & 0x1F | (4 * (((v42 >> 10) & 0x1F) * v13 + ((((v42 >> 10) & 0x1F) * v13) >> 8)) + 4) & 0x7C00;
        v39 += a4;
        --v40;
      }

      while (v40 > 1);
    }

    v10 += v9 * v21;
    a3 += v21 * a4;
  }

  if (v19 <= 0xFE)
  {
    if (v14 <= 0xFE)
    {
      v43 = *v10;
      v10 += 2;
      v44 = (v19 * v14 + ((v19 * v14) >> 8) + 1) >> 8;
      *a3 = ((((v43 >> 5) & 0x1F) * v44 + ((((v43 >> 5) & 0x1F) * v44) >> 8) + 1) >> 3) & 0x3E0 | (((v43 & 0x1F) * v44 + (((v43 & 0x1F) * v44) >> 8) + 1) >> 8) | (4 * (((v43 >> 10) & 0x1F) * v44 + ((((v43 >> 10) & 0x1F) * v44) >> 8)) + 4) & 0x7C00;
      a3 += 2;
    }

    if (v15 >= 1)
    {
      v45 = v15 + 1;
      do
      {
        v46 = *v10;
        v10 += 2;
        *a3 = ((((v46 >> 5) & 0x1F) * v19 + ((((v46 >> 5) & 0x1F) * v19) >> 8) + 1) >> 3) & 0x3E0 | (((v46 & 0x1F) * v19 + (((v46 & 0x1F) * v19) >> 8) + 1) >> 8) & 0x1F | (4 * (((v46 >> 10) & 0x1F) * v19 + ((((v46 >> 10) & 0x1F) * v19) >> 8)) + 4) & 0x7C00;
        a3 += 2;
        --v45;
      }

      while (v45 > 1);
    }

    if (v13 <= 0xFE)
    {
      v47 = *v10;
      v48 = (v19 * v13 + ((v19 * v13) >> 8) + 1) >> 8;
      *a3 = ((((v47 >> 5) & 0x1F) * v48 + ((((v47 >> 5) & 0x1F) * v48) >> 8) + 1) >> 3) & 0x3E0 | (((v47 & 0x1F) * v48 + (((v47 & 0x1F) * v48) >> 8) + 1) >> 8) & 0x1F | (4 * (((v47 >> 10) & 0x1F) * v48 + ((((v47 >> 10) & 0x1F) * v48) >> 8)) + 4) & 0x7C00;
    }
  }

  return 1;
}

char *CGClipMaskCreate(const CGAffineTransform *a1, const void *a2, double a3, double a4, double a5, double a6)
{
  if (!a2)
  {
    return 0;
  }

  v12 = malloc_type_malloc(0x60uLL, 0x10200403191E22BuLL);
  v13 = v12;
  *v12 = 1;
  v14 = &CGAffineTransformIdentity;
  if (a1)
  {
    v14 = a1;
  }

  v16 = *&v14->c;
  v15 = *&v14->tx;
  *(v12 + 8) = *&v14->a;
  *(v12 + 24) = v16;
  *(v12 + 40) = v15;
  CFRetain(a2);
  *(v13 + 7) = a2;
  *(v13 + 8) = a3;
  *(v13 + 9) = a4;
  *(v13 + 10) = a5;
  *(v13 + 11) = a6;
  return v13;
}

atomic_uint *CGClipMaskCreateCopy(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *CGClipMaskRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

char *CGClipMaskCreateCopyByApplyingTransform(char *result, float64x2_t *a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = *(result + 5);
      v3 = *(result + 6);
      v4 = *a2;
      v5 = a2[1];
      v6 = a2[2];
      v7 = vmlaq_n_f64(vmulq_n_f64(v5, *(result + 4)), *a2, *(result + 3));
      *&v8.a = vmlaq_n_f64(vmulq_n_f64(v5, *(result + 2)), *a2, *(result + 1));
      *&v8.c = v7;
      *&v8.tx = vaddq_f64(v6, vmlaq_n_f64(vmulq_n_f64(v5, v3), v4, v2));
      return CGClipMaskCreate(&v8, *(result + 7), *(result + 8), *(result + 9), *(result + 10), *(result + 11));
    }

    else
    {
      atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
    }
  }

  return result;
}

BOOL CGClipMaskEqualToClipMask(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

    result = CGRectEqualToRect(*(a1 + 64), *(a2 + 64));
    if (result)
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        return 0;
      }

      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & (*(a1 + 48) == *(a2 + 48));
    }
  }

  return result;
}

__n128 CGClipMaskGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a1 + 8);
  if (!a1)
  {
    v2 = &CGAffineTransformIdentity;
  }

  v3 = *&v2->c;
  *a2 = *&v2->a;
  *(a2 + 16) = v3;
  result = *&v2->tx;
  *(a2 + 32) = result;
  return result;
}

uint64_t CGClipMaskGetImage(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

CGFloat CGClipMaskGetRect(const CGRect *a1)
{
  v1 = &CGRectNull;
  if (a1)
  {
    v1 = a1 + 2;
  }

  return v1->origin.x;
}

double CGClipMaskGetBounds(uint64_t a1)
{
  if (!a1)
  {
    return INFINITY;
  }

  v4 = *(a1 + 64);
  v1 = *(a1 + 24);
  *&v3.a = *(a1 + 8);
  *&v3.c = v1;
  *&v3.tx = *(a1 + 40);
  *&result = CGRectApplyAffineTransform(v4, &v3);
  return result;
}

uint64_t __CGSRegionEnumeratorGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGSRegionEnumeratorGetTypeID_region_enumerator_class);
  CGSRegionEnumeratorGetTypeID_region_enumerator_type_id = result;
  return result;
}

void region_enumerator_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    free(v4);
  }
}

void *CGSRegionEnumeratorWithDirection(_DWORD **a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v13 = CFGetTypeID(a1);
  if (CGRegionGetTypeID_initOnce != -1)
  {
    dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
  }

  if (v13 != __kCGRegionTypeID)
  {
    v17 = CFGetTypeID(a1);
    v18 = CFCopyTypeIDDescription(v17);
    CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
    _CGHandleAssert("CGSRegionEnumeratorWithDirection", 108, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGSRegionEnumerator.c", "CFGetTypeID(region) == CGRegionGetTypeID()", "CFType %s %p is not a CGRegion", v20, v21, v22, CStringPtr);
  }

  v14 = CGSRegionEnumeratorCreate(a1, v6, v7, v8, v9, v10, v11, v12);
  shape_enum_alloc(v14, a1[2], a3, a2);
  v14[3] = v15;
  if (!v15)
  {
    CGSReleaseRegionEnumerator(v14);
    return 0;
  }

  return v14;
}

uint64_t CGSRegionEnumeratorCreate(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_block_invoke_once_5580 != -1)
  {
    dispatch_once(&_block_invoke_once_5580, &__block_literal_global_5_5581);
  }

  Instance = CGTypeCreateInstance(CGSRegionEnumeratorGetTypeID_region_enumerator_type_id, 56, a3, a4, a5, a6, a7, a8);
  if (a1)
  {
    CFRetain(a1);
  }

  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 16) = a1;
  *(Instance + 40) = CGRectNull;
  return Instance;
}

uint64_t CGSReleaseRegionEnumerator(const void *a1)
{
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    if (_block_invoke_once_5580 != -1)
    {
      dispatch_once(&_block_invoke_once_5580, &__block_literal_global_5_5581);
    }

    if (v5 != CGSRegionEnumeratorGetTypeID_region_enumerator_type_id)
    {
      _CGHandleAssert("CGSReleaseRegionEnumerator", 165, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGSRegionEnumerator.c", "REGION_IS_REGION_ENUM(e)", "enumerator: %p", v2, v3, v4, a1);
    }

    CFRelease(a1);
  }

  return 0;
}

uint64_t CGSRegionPathEnumerator(void *a1)
{
  v9 = CFGetTypeID(a1);
  if (CGRegionGetTypeID_initOnce != -1)
  {
    dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
  }

  if (v9 != __kCGRegionTypeID)
  {
    v27 = CFGetTypeID(a1);
    v28 = CFCopyTypeIDDescription(v27);
    CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
    _CGHandleAssert("CGSRegionPathEnumerator", 124, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGSRegionEnumerator.c", "CFGetTypeID(region) == CGRegionGetTypeID()", "CFType %s %p is not a CGRegion", v30, v31, v32, CStringPtr);
  }

  v10 = CGSRegionEnumeratorCreate(a1, v2, v3, v4, v5, v6, v7, v8);
  v11 = a1[2];
  if (v11 && *v11 == 0x80000000 && (v12 = v11[1], v12 >= 1))
  {
    if (v11 == &the_empty_shape || v11[v12] == 0x7FFFFFFF)
    {
      v13 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
      if (v13)
      {
        v13[8] = 0;
        *v13 = 0;
        *(v13 + 1) = 0;
      }
    }

    else
    {
      v15 = 0;
      v16 = v11;
      do
      {
        v17 = v16[1];
        v15 = v15 + v17 - 2;
        v16 += v17;
      }

      while (*v16 != 0x7FFFFFFF);
      v13 = malloc_type_malloc((32 * v15 + 551) & 0xFFFFFFFFFFFFFE00, 0x4C113E60uLL);
      if (v13)
      {
        v18 = (v13 + 10);
        *v13 = v13 + 10;
        *(v13 + 1) = v13 + 10;
        v13[8] = 0;
        *(v13 + 2) = 0x8000000080000000;
        v19 = &v11[v11[1]];
        v20 = *v19;
        if (*v19 != 0x7FFFFFFF)
        {
          v21 = 0;
          do
          {
            v22 = v20;
            v23 = v19[1];
            v24 = &v19[v23];
            v20 = *v24;
            if (v23 >= 3)
            {
              v25 = v19 + 2;
              do
              {
                v26 = v25[1];
                *(v18 + 4) = *v25;
                *(v18 + 5) = v20;
                *v18 = v21;
                *(v18 + 6) = v22;
                *(v18 + 7) = 0;
                if (v21)
                {
                  *(v21 + 1) = v18;
                }

                v21 = v18 + 32;
                *(v18 + 12) = v26;
                *(v18 + 13) = v22;
                *(v18 + 4) = v18;
                *(v18 + 5) = 0;
                *(v18 + 14) = v20;
                *(v18 + 15) = 0;
                *(v18 + 1) = v18 + 32;
                v18 += 64;
                v25 += 2;
              }

              while (v25 < v24);
              v21 = v18 - 32;
            }

            v19 = v24;
          }

          while (v20 != 0x7FFFFFFF);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  *(v10 + 32) = v13;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  return v10;
}

double *CGSNextRect(double *cf)
{
  v1 = cf;
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (_block_invoke_once_5580 != -1)
    {
      dispatch_once(&_block_invoke_once_5580, &__block_literal_global_5_5581);
    }

    if (v5 != CGSRegionEnumeratorGetTypeID_region_enumerator_type_id || (v6 = *(v1 + 3)) == 0)
    {
      _CGHandleAssert("CGSNextRect", 138, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGSRegionEnumerator.c", "REGION_IS_REGION_ENUM(e) && e->shape_enumerator != NULL", "enumerator: %p", v2, v3, v4, v1);
    }

    v13 = 0;
    v12 = 0;
    v11 = 0;
    if (shape_enum_next(v6, &v13, &v12, &v11 + 1, &v11))
    {
      v7 = v12;
      v8 = (HIDWORD(v11) - v13);
      v9 = (v11 - v12);
      v1[5] = v13;
      v1[6] = v7;
      v1 += 5;
      v1[2] = v8;
      v1[3] = v9;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t CGSNextPoint(uint64_t result, double *a2)
{
  if (result)
  {
    v3 = result;
    v7 = CFGetTypeID(result);
    if (_block_invoke_once_5580 != -1)
    {
      dispatch_once(&_block_invoke_once_5580, &__block_literal_global_5_5581);
    }

    if (v7 != CGSRegionEnumeratorGetTypeID_region_enumerator_type_id || (v8 = *(v3 + 32)) == 0)
    {
      _CGHandleAssert("CGSNextPoint", 152, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGSRegionEnumerator.c", "REGION_IS_REGION_ENUM(e) && e->path_enumerator != NULL", "enumerator: %p", v4, v5, v6, v3);
    }

    if (*(v8 + 8))
    {
      v9 = *(v8 + 6);
      v10 = *(v8 + 7);
      *(v8 + 4) = v9;
      *(v8 + 5) = v10;
      *(v8 + 8) = 0;
      result = 1;
LABEL_8:
      *a2 = v9;
      a2[1] = v10;
      *(v3 + 40) = v9;
      *(v3 + 48) = v10;
      return result;
    }

    v11 = *v8;
    if (!*v8)
    {
      return 0;
    }

    v12 = v8[1];
    v9 = *(v11 + 16);
    if (v11 == v12)
    {
      v13 = *(v11 + 20);
      v15 = *(v11 + 24);
      *(v8 + 4) = v9;
      *(v8 + 5) = v13;
      *(v8 + 6) = v9;
      *(v8 + 7) = v15;
      *(v8 + 9) = v15 < v13;
      result = 0xFFFFFFFFLL;
      v14 = 1;
    }

    else
    {
      v13 = *(v11 + 20);
      if (v9 == *(v8 + 4) && v13 == *(v8 + 5))
      {
        v14 = 0;
        v15 = *(v11 + 24);
        *(v8 + 4) = v9;
        *(v8 + 5) = v15;
        result = 1;
        v10 = v15;
        goto LABEL_19;
      }

      *(v8 + 4) = v9;
      *(v8 + 5) = v13;
      v15 = *(v11 + 24);
      *(v8 + 6) = v9;
      *(v8 + 7) = v15;
      v14 = 1;
      result = 1;
    }

    v10 = v13;
LABEL_19:
    *(v8 + 8) = v14;
    v16 = *(v11 + 8);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0x80000000;
      v23 = 0x7FFFFFFF;
      v24 = 0x7FFFFFFF;
      v25 = 0x80000000;
      do
      {
        v26 = *(v16 + 20);
        if (v26 != v15 && *(v16 + 24) != v15)
        {
          break;
        }

        v27 = *(v16 + 16);
        v28 = v27 - v9;
        if (v26 == v13 || *(v16 + 24) == v13)
        {
          if (v28 >= 1 && v28 <= v24)
          {
            v19 = v16;
            v24 = v28;
          }

          if (v28 < 0 && v28 >= v25)
          {
            v21 = v16;
            v25 = v28;
          }
        }

        else
        {
          if (v28 >= 1 && v28 <= v23)
          {
            v18 = v16;
            v23 = v27 - v9;
          }

          if (v28 < 0 && v28 >= v22)
          {
            v20 = v16;
            v22 = v27 - v9;
          }

          if (v27 == v9)
          {
            v17 = v16;
          }
        }

        v16 = *(v16 + 8);
      }

      while (v16);
    }

    else
    {
      v21 = 0;
      v20 = 0;
      v19 = 0;
      v18 = 0;
      v17 = 0;
      v24 = 0x7FFFFFFF;
      v25 = 0x80000000;
      v22 = 0x80000000;
      v23 = 0x7FFFFFFF;
    }

    v37 = *v11;
    if (*v11)
    {
      do
      {
        v38 = v37[5];
        if (v38 != v15 && v37[6] != v15)
        {
          break;
        }

        v39 = v37[4];
        v40 = v39 - v9;
        if (v38 == v13 || v37[6] == v13)
        {
          if (v40 >= 1 && v40 <= v24)
          {
            v19 = v37;
            v24 = v40;
          }

          if (v40 < 0 && v40 >= v25)
          {
            v21 = v37;
            v25 = v40;
          }
        }

        else
        {
          if (v40 >= 1 && v40 <= v23)
          {
            v18 = v37;
            v23 = v39 - v9;
          }

          if (v40 < 0 && v40 >= v22)
          {
            v20 = v37;
            v22 = v39 - v9;
          }

          if (v39 == v9)
          {
            v17 = v37;
          }
        }

        v37 = *v37;
      }

      while (v37);
    }

    if (v17 && v15 <= v13)
    {
      v22 = 0;
    }

    else
    {
      if (v17)
      {
        v23 = 0;
        v18 = v17;
      }

      if (!v20)
      {
        v17 = 0;
        v49 = 1;
        goto LABEL_123;
      }

      v17 = v20;
    }

    v49 = 0;
    if (v17[5] == v15 && v22 >= v25)
    {
      v49 = 0;
      v50 = v22 > v25 || v15 <= v13;
      v51 = !v50;
      if (!v17[7])
      {
        v52 = v17;
        if (!v51)
        {
LABEL_140:
          *v8 = v52;
          if (v11 != v12)
          {
            *(v11 + 28) = 1;
          }

          if (v52 == v12)
          {
            v12[7] = 1;
            for (i = v8[1]; i; i = *(i + 8))
            {
              if (!*(i + 28))
              {
                break;
              }
            }

            *v8 = i;
            v8[1] = i;
          }

          goto LABEL_8;
        }
      }
    }

LABEL_123:
    if (!v18 || (v18[5] == v15 ? (v53 = v23 <= v24) : (v53 = 0), !v53 || (v23 >= v24 ? (v58 = v15 <= v13) : (v58 = 0), v58 ? (v59 = 0) : (v59 = 1), v18[7] || (v52 = v18, (v59 & 1) == 0))))
    {
      v54 = (v49 & 1) == 0 && v17[6] < v17[5];
      v55 = !v54;
      if (v54)
      {
        v56 = v21;
      }

      else
      {
        v56 = v19;
      }

      if (v55)
      {
        v19 = v21;
      }

      if (v15 > v13)
      {
        v52 = v19;
      }

      else
      {
        v52 = v56;
      }
    }

    goto LABEL_140;
  }

  return result;
}

void CGFloatPostError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  CGPostError("Error: this application, or a library it uses, has passed an invalid numeric value (NaN, or not-a-number) to CoreGraphics API and this value is being ignored. Please fix this problem.", a2, a3, a4, a5, a6, a7, a8, v24);
  if (handle_invalid_numerics_predicate != -1)
  {
    dispatch_once(&handle_invalid_numerics_predicate, &__block_literal_global_6_20157);
  }

  if (handle_invalid_numerics_show_log)
  {
    v16 = CGBacktraceCreate(0);
    CGPostError("Backtrace:\n%s\n", v17, v18, v19, v20, v21, v22, v23, v16);

    free(v16);
  }

  else
  {

    CGPostError("If you want to see the backtrace, please set CG_NUMERICS_SHOW_BACKTRACE environmental variable.\n", v9, v10, v11, v12, v13, v14, v15, a9);
  }
}

CFStringRef CGPDFArrayCreateDebugDescription(const __CFString *a1)
{
  v1 = a1;
  if (a1)
  {
    v6 = 0;
    __bufp = 0;
    v2 = open_memstream(&__bufp, &v6);
    if (v2 && (v3 = v2, CGPDFArrayPrintWithIndent(v1, v2, 0), fclose(v3), (v4 = __bufp) != 0))
    {
      if (v6)
      {
        v1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], __bufp, 0x600u);
        v4 = __bufp;
      }

      else
      {
        v1 = 0;
      }

      free(v4);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t CGPDFArrayPrintWithIndent(uint64_t result, FILE *a2, int a3)
{
  if (result)
  {
    v4 = result;
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = *MEMORY[0x1E69E9848];
    }

    fwrite("[\n", 2uLL, 1uLL, v5);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    while (v6 != v7)
    {
      v8 = *v6++;
      fprintf(v5, "%*s", a3 + 2, "");
      CGPDFObjectPrintWithIndent(v8, v5, (a3 + 2));
      fputc(10, v5);
    }

    return fprintf(v5, "%*s]", a3, "");
  }

  return result;
}

CFTypeRef CGPDFArrayRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGPDFArrayRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t CGPDFArrayGetCount(size_t array)
{
  if (array)
  {
    return (*(array + 24) - *(array + 16)) >> 3;
  }

  return array;
}

BOOL CGPDFArrayGetNull(CGPDFArrayRef array, size_t index)
{
  value = 0;
  Object = CGPDFArrayGetObject(array, index, &value);
  if (Object)
  {
    if (value)
    {
      LOBYTE(Object) = *(value + 2) == 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

BOOL CGPDFArrayGetBoolean(CGPDFArrayRef array, size_t index, CGPDFBoolean *value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea && *(valuea + 2) == 2)
    {
      if (value)
      {
        *value = *(valuea + 32);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

BOOL CGPDFArrayGetInteger(CGPDFArrayRef array, size_t index, CGPDFInteger *value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea && ((v5 = *(valuea + 2), v5 != 12) ? (v6 = v5 == 3) : (v6 = 1), v6))
    {
      if (value)
      {
        *value = *(valuea + 4);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

BOOL CGPDFArrayGetString(CGPDFArrayRef array, size_t index, CGPDFStringRef *value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea && *(valuea + 2) == 6)
    {
      if (value)
      {
        *value = *(valuea + 4);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

BOOL CGPDFArrayGetArray(CGPDFArrayRef array, size_t index, CGPDFArrayRef *value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea && *(valuea + 2) == 7)
    {
      if (value)
      {
        *value = *(valuea + 4);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

void CGPDFArrayApplyBlock(CGPDFArrayRef array, CGPDFArrayApplierBlock block, void *info)
{
  if (array)
  {
    if (block)
    {
      v5 = *(array + 2);
      if (*(array + 3) != v5)
      {
        v7 = 0;
        do
        {
          v8 = *(v5 + 8 * v7);
          if (v8 && *(v8 + 2) == 10)
          {
            v8 = pdf_xref_resolve(*(array + 5), *(v8 + 2), *(v8 + 3));
          }

          if (((*(block + 2))(block, v7, v8, info) & 1) == 0)
          {
            break;
          }

          ++v7;
          v5 = *(array + 2);
        }

        while (v7 < (*(array + 3) - v5) >> 3);
      }
    }
  }
}

uint64_t CGPDFArrayEnumerateObjects(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 16);
    if (*(result + 24) != v3)
    {
      v5 = 0;
      do
      {
        v6 = *(v3 + 8 * v5);
        if (v6 && *(v6 + 2) == 10)
        {
          v6 = pdf_xref_resolve(v2[5], *(v6 + 2), *(v6 + 3));
        }

        result = (*(a2 + 16))(a2, v5, v6);
        if ((result & 1) == 0)
        {
          break;
        }

        ++v5;
        v3 = v2[2];
      }

      while (v5 < (v2[3] - v3) >> 3);
    }
  }

  return result;
}

BOOL CGPDFArrayGetOffset(CGPDFArray *a1, size_t a2, void *a3)
{
  value = 0;
  result = CGPDFArrayGetObject(a1, a2, &value);
  if (result)
  {
    if (value && ((v5 = *(value + 2), v5 != 12) ? (v6 = v5 == 3) : (v6 = 1), v6))
    {
      if (a3)
      {
        *a3 = *(value + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFArrayGetIntegers(uint64_t array, uint64_t a2, uint64_t a3)
{
  if (array)
  {
    v4 = array;
    if (a3 == (*(array + 24) - *(array + 16)) >> 3)
    {
      if (a3)
      {
        v6 = 0;
        value = 0;
        do
        {
          array = CGPDFArrayGetInteger(v4, v6, &value);
          if (!array)
          {
            break;
          }

          *(a2 + 8 * v6++) = value;
        }

        while (a3 != v6);
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

  return array;
}

uint64_t CGPDFArrayGetNumbers(uint64_t array, uint64_t a2, uint64_t a3)
{
  if (array)
  {
    v4 = array;
    if (a3 == (*(array + 24) - *(array + 16)) >> 3)
    {
      if (a3)
      {
        v6 = 0;
        value = 0.0;
        do
        {
          array = CGPDFArrayGetNumber(v4, v6, &value);
          if (!array)
          {
            break;
          }

          *(a2 + 8 * v6++) = value;
        }

        while (a3 != v6);
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

  return array;
}

uint64_t CGPDFArrayGetObjectReference(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void CGPDFArrayAppendObject(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    copy = pdf_object_create_copy(a2);
    std::vector<CGPDFObject *>::push_back[abi:fe200100](a1 + 16, &copy);
  }
}

void std::vector<CGPDFObject *>::push_back[abi:fe200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void CGPDFArrayInsertObjectAtIndex(void *a1, unint64_t a2, __int128 *a3)
{
  if (a1)
  {
    if (a3)
    {
      v4 = a1[2];
      if ((a1[3] - v4) >> 3 >= a2)
      {
        v5 = (v4 + 8 * a2);
        copy = pdf_object_create_copy(a3);
        v7 = copy;
        v8 = a1[3];
        v9 = a1[4];
        if (v8 >= v9)
        {
          v12 = a1[2];
          v13 = ((v8 - v12) >> 3) + 1;
          if (v13 >> 61)
          {
            std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
          }

          v14 = v5 - v12;
          v15 = v9 - v12;
          if (v15 >> 2 > v13)
          {
            v13 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v13;
          }

          v17 = v14 >> 3;
          if (v16)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v16);
          }

          v18 = (8 * v17);
          v19 = 8 * v17;
          if (!v17)
          {
            if (v14 < 1)
            {
              if (v5 == v12)
              {
                v20 = 1;
              }

              else
              {
                v20 = v14 >> 2;
              }

              std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v20);
            }

            v18 = (v18 - (((v14 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
            v19 = v18;
          }

          *v18 = v7;
          v21 = v19 + 8;
          memcpy((v19 + 8), v5, a1[3] - v5);
          v22 = a1[2];
          v26 = (v21 + a1[3] - v5);
          a1[3] = v5;
          v23 = v5 - v22;
          v24 = v18 - (v5 - v22);
          memcpy(v24, v22, v23);
          v25 = a1[2];
          a1[2] = v24;
          *(a1 + 3) = v26;
          if (v25)
          {

            operator delete(v25);
          }
        }

        else if (v5 == v8)
        {
          *v8 = copy;
          a1[3] = v8 + 8;
        }

        else
        {
          v10 = v5 + 8;
          if (v8 < 8)
          {
            v11 = a1[3];
          }

          else
          {
            *v8 = *(v8 - 1);
            v11 = v8 + 8;
          }

          a1[3] = v11;
          if (v8 != v10)
          {
            memmove(v5 + 8, v5, v8 - v10);
          }

          *v5 = v7;
        }
      }

      else
      {
        pdf_error("CGPDFArrayInsertValueAtIndex: index (%ld) is beyond length of array (%ld)");
      }
    }

    else
    {
      pdf_error("%s: Attempt to insert NULL at index (%ld)");
    }
  }
}

void sub_1840EAF9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void CGPDFArraySetObjectAtIndex(uint64_t a1, unint64_t a2, __int128 *a3)
{
  if (a1)
  {
    if (a3)
    {
      v6 = *(a1 + 16);
      v7 = a1 + 16;
      v8 = (*(a1 + 24) - v6) >> 3;
      if (v8 >= a2)
      {
        if (v8 == a2)
        {
          copy = pdf_object_create_copy(a3);
          std::vector<CGPDFObject *>::push_back[abi:fe200100](v7, &copy);
        }

        else
        {
          if (v8 <= a2)
          {
            goto LABEL_14;
          }

          v9 = *(v6 + 8 * a2);
          if ((v9[2] - 5) <= 4)
          {
            pdf_object_release_compound_value(v9);
          }

          free(v9);
          v10 = pdf_object_create_copy(a3);
          v11 = *(a1 + 16);
          if (a2 >= (*(a1 + 24) - v11) >> 3)
          {
LABEL_14:
            __break(1u);
          }

          else
          {
            *(v11 + 8 * a2) = v10;
          }
        }
      }

      else
      {
        pdf_error("CGPDFArrayInsertValueAtIndex: index (%ld) is beyond length of array (%ld)");
      }
    }

    else
    {
      pdf_error("%s: Attempt to set NULL at index (%ld)");
    }
  }
}

void CGPDFArrayRemoveObjectAtIndex(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = (*(a1 + 24) - v3) >> 3;
    if (v4 <= a2)
    {
      pdf_error("CGPDFArrayInsertValueAtIndex: index (%ld) is beyond length of array (%ld)", a2, v4);
    }

    else
    {
      v5 = v3 + 8 * a2;
      v6 = *v5;
      if ((*(*v5 + 8) - 5) > 4 || (pdf_object_release_compound_value(v6), (v6 = *v5) != 0))
      {
        free(v6);
      }

      v7 = *(a1 + 24);
      if (v7 == v5)
      {
        __break(1u);
      }

      else
      {
        v8 = v7 - (v5 + 8);
        if (v7 != v5 + 8)
        {
          memmove(v5, (v5 + 8), v7 - (v5 + 8));
        }

        *(a1 + 24) = v5 + v8;
      }
    }
  }
}

void CGPDFArrayRemoveAllObjects(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    if (v2 != v3)
    {
      do
      {
        v4 = *v2;
        if ((*(*v2 + 8) - 5) <= 4)
        {
          pdf_object_release_compound_value(*v2);
        }

        free(v4);
        ++v2;
      }

      while (v2 != v3);
      v2 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
  }
}

uint64_t compareLayoutReadingOrder(void *a1, void *a2)
{
  v4 = keyPointOfLayoutArea(a1);
  v6 = v5;
  [objc_msgSend(a1 "firstChild")];
  width = v9;
  if (v9 < 0.0 || v10 < 0.0)
  {
    v20 = CGRectStandardize(*&v7);
    width = v20.size.width;
  }

  v12 = keyPointOfLayoutArea(a2);
  v14 = v13;
  [objc_msgSend(a2 "firstChild")];
  if (v4 + width * 0.5 < v12)
  {
    return -1;
  }

  if (v17 < 0.0 || v18 < 0.0)
  {
    *(&v17 - 2) = CGRectStandardize(*&v15);
  }

  if (v12 + v17 * 0.5 < v4)
  {
    return 1;
  }

  if (v6 <= v14)
  {
    return v6 < v14;
  }

  return -1;
}

double keyPointOfLayoutArea(void *a1)
{
  [objc_msgSend(a1 "firstChild")];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if (v3 >= 0.0 && v4 >= 0.0)
  {
    return v1;
  }

  *&v9 = CGRectStandardize(*&v1);
  v11.origin.x = v5;
  v11.origin.y = v6;
  v11.size.width = v7;
  v11.size.height = v8;
  CGRectStandardize(v11);
  return v9;
}

uint64_t compareZoneReadingOrder(void *a1, void *a2)
{
  v4 = [a1 count];
  v5 = [a2 count];
  if (v4 | v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    result = 1;
  }

  else
  {
    result = v6;
  }

  if (v4 && v5)
  {
    v8 = keyPointOfZone(a1);
    v10 = v9;
    v11 = keyPointOfZone(a2);
    v13 = 1;
    v14 = -1;
    if (v8 >= v11)
    {
      v14 = v8 > v11;
    }

    if (v10 >= v12)
    {
      v13 = v14;
    }

    if (v10 <= v12)
    {
      return v13;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

double keyPointOfZone(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [a1 vertexCount];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 outerVertices];
    v6 = *v4;
    v5 = v4[1];
    if (v3 == 1)
    {
      return *v4;
    }

    else
    {
      v33 = v3 - 1;
      v34 = v4 + 3;
      do
      {
        v7 = *(v34 - 1);
        v35 = *v34;
        if (v7 >= v6 && (v7 != v6 || v35 <= v5))
        {
          v7 = v6;
          v35 = v5;
        }

        v34 += 2;
        v5 = v35;
        v6 = v7;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a1 descendantsOfClass:objc_opt_class() to:v8];
    v9 = [v8 count];
    if (v9)
    {
      [objc_msgSend(v8 objectAtIndex:{0), "normalizedBounds"}];
      x = v10;
      y = v12;
      width = v14;
      height = v16;
      if (v9 != 1)
      {
        v18 = v9;
        for (i = 1; i != v18; ++i)
        {
          [objc_msgSend(v8 objectAtIndex:{i), "normalizedBounds"}];
          v62.origin.x = v20;
          v62.origin.y = v21;
          v62.size.width = v22;
          v62.size.height = v23;
          v53.origin.x = x;
          v53.origin.y = y;
          v53.size.width = width;
          v53.size.height = height;
          v54 = CGRectUnion(v53, v62);
          x = v54.origin.x;
          y = v54.origin.y;
          width = v54.size.width;
          height = v54.size.height;
        }
      }

      v24 = fmin(width, height);
      v25 = v24 < 0.0;
      v7 = x;
      v26 = y;
      v27 = height;
      if (v24 < 0.0)
      {
        v55.origin.x = x;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        *&v7 = CGRectStandardize(v55);
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        *&v24 = CGRectStandardize(v56);
      }

      v28 = v26 + v27;
      [a1 rotationAngle];
      if (v29 != 0.0)
      {
        v30 = __sincos_stret(v29);
        __base = x;
        v43 = y;
        v44 = v7;
        v45 = v28;
        if (v25)
        {
          v57.origin.x = x;
          v57.origin.y = y;
          v57.size.width = width;
          v57.size.height = height;
          v58 = CGRectStandardize(v57);
          v31 = v58.origin.x + v58.size.width;
          v58.origin.x = x;
          v58.origin.y = y;
          v58.size.width = width;
          v58.size.height = height;
          v59 = CGRectStandardize(v58);
          v46 = v31;
          v47 = v59.origin.y;
          v59.origin.x = x;
          v59.origin.y = y;
          v59.size.width = width;
          v59.size.height = height;
          v60 = CGRectStandardize(v59);
          v32 = v60.origin.x + v60.size.width;
          v60.origin.x = x;
          v60.origin.y = y;
          v60.size.width = width;
          v60.size.height = height;
          v61 = CGRectStandardize(v60);
          y = v61.origin.y;
          height = v61.size.height;
        }

        else
        {
          v32 = x + width;
          v46 = x + width;
          v47 = y;
        }

        v36 = 0;
        v48 = v32;
        v49 = y + height;
        v37 = vdupq_lane_s64(*&v30.__cosval, 0);
        v38 = vdupq_lane_s64(*&v30.__sinval, 0);
        do
        {
          v39 = (&__base + v36);
          v51 = vld2q_f64(v39);
          v52.val[0] = vaddq_f64(vmlaq_f64(vmulq_n_f64(v51.val[1], -v30.__sinval), v51.val[0], v37), 0);
          v52.val[1] = vaddq_f64(vmlaq_f64(vmulq_n_f64(v51.val[1], v30.__cosval), v51.val[0], v38), 0);
          vst2q_f64(v39, v52);
          v36 += 32;
        }

        while (v36 != 64);
        qsort(&__base, 4uLL, 0x10uLL, left);
        v7 = __base;
        v40 = v43;
        if (__base == v44)
        {
          if (v43 < v45)
          {
            v40 = v45;
            v7 = v44;
          }

          if (v7 == v46 && v40 < v47)
          {
            v7 = v46;
          }
        }
      }
    }

    else
    {

      return 0.0;
    }
  }

  return v7;
}

std::ios_base *__cdecl left(std::ios_base *__str)
{
  if (*&__str->__vftable < *v1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*v1 < *&__str->__vftable);
  }
}

uint64_t compareKeyOrder(void *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    return compareLayoutReadingOrder(a1, a2);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {

      return compareZoneReadingOrder(a1, a2);
    }

    else
    {
      v5 = keyPoint(a1);
      v7 = v6;
      v8 = keyPoint(a2);
      if (v7 <= v9)
      {
        if (v7 >= v9)
        {
          if (v5 >= v8)
          {
            return v5 > v8;
          }

          else
          {
            return -1;
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return -1;
      }
    }
  }
}

CGFloat keyPoint(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return keyPointOfZone(a1);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1;
    return keyPointOfLayoutArea(v3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a1 firstChild];
    return keyPointOfLayoutArea(v3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 tableBounds];
  }

  else
  {
    [a1 renderedBounds];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (v8 >= 0.0 && v9 >= 0.0)
  {
    return v6;
  }

  *&v4 = CGRectStandardize(*&v6);
  v14.origin.x = v10;
  v14.origin.y = v11;
  v14.size.width = v12;
  v14.size.height = v13;
  CGRectStandardize(v14);
  return v4;
}

uint64_t cmyk32_sample_CMYKf(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 40);
  v15 = *(result + 176);
  v87 = *(result + 80);
  v88 = *(result + 88);
  v100 = *(result + 120);
  v101 = *(result + 112);
  v16 = (*(result + 152) - 8);
  v91 = *(result + 144) - 1;
  v17 = *(result + 260) - 1;
  v98 = *(result + 24);
  v96 = *(result + 32);
  v18 = *(result + 256);
  v93 = *(result + 28);
  v94 = v14 + (v17 * v93) + 4 * (v18 - 1);
  v86 = *(result + 188);
  v99 = v96 + (v17 * v98) + 4 * (4 * v18) - 16;
  v89 = *(result + 72);
  v90 = *(result + 64);
  v95 = v14;
  v97 = result;
  while (1)
  {
    if (a3 >= v89)
    {
      if (a3 <= v88)
      {
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
        v22 = a4;
        v23 = v90;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v88;
        v27 = v26 - a3 + (v25 >> 1);
        v22 = a4;
        v23 = v90;
        if (v27 < 1)
        {
          goto LABEL_37;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v30 = v86 | v28;
        v31 = v26 - 0x1000000;
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v89 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      v23 = v90;
      if (v21 < 1)
      {
        goto LABEL_37;
      }

      if (v21 >= v19)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v21) >> 32;
      }

      v30 = v86 | v24;
      v31 = v20 + 0x1000000;
      v29 = 512;
    }

    if (a2 >= v23)
    {
      if (a2 <= v87)
      {
        v36 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v37 = *(result + 192);
        v38 = *(result + 200) + v87;
        v39 = v38 - a2 + (v37 >> 1);
        if (v39 < 1)
        {
          goto LABEL_37;
        }

        if (v39 < v37)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v86;
        }

        v35 = v38 - 0x1000000;
        v36 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v23 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_37;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v86;
      }

      v35 = v33 + 0x1000000;
      v36 = 32;
    }

    if (v30 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v49 = v22 - 1;
    a2 += v101;
    a3 += v100;
    ++v16;
    *++v91 = 0;
LABEL_38:
    a4 = v49;
    if (!v49)
    {
      return result;
    }
  }

  v40 = v31 >> 32;
  v41 = (v35 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = v96 + SHIDWORD(v31) * v98 + 4 * v41;
  v43 = *(result + 32);
  v44 = v99;
  if (v99 >= v42)
  {
    v44 = v42;
  }

  if (v44 < v43)
  {
    v44 = *(result + 32);
  }

  if (v14)
  {
    v45 = v14 + v40 * v93 + v41;
    v46 = *(result + 40);
    v47 = v94;
    v92 = v45;
    if (v94 >= v45)
    {
      v47 = v45;
    }

    if (v47 >= v46)
    {
      v46 = v47;
    }

    v48 = *v46;
  }

  else
  {
    v92 = 0;
    v48 = 1.0;
  }

  v50 = *v44;
  if (v15)
  {
    v51 = *(v15 + (v36 | v29));
LABEL_62:
    v62 = v51 & 0xF;
    v63 = HIBYTE(v51) & 3;
    if (v62 == 1)
    {
      v83 = (v42 + SBYTE1(v51) * v98);
      if (v99 < v83)
      {
        v83 = v99;
      }

      if (v83 >= v43)
      {
        v43 = v83;
      }

      v79 = *v43;
      v80 = 1.0;
      if (v14)
      {
        v84 = (v92 + SBYTE1(v51) * v93);
        if (v94 < v84)
        {
          v84 = v94;
        }

        if (v84 < *(result + 40))
        {
          v84 = *(result + 40);
        }

        v80 = *v84;
      }

      v82 = &interpolate_cmykaf[5 * v63];
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v64 = HIWORD(v51) << 56;
          v65 = (v42 + (v64 >> 52));
          if (v99 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v99;
          }

          if (v66 < v43)
          {
            v66 = v43;
          }

          v67 = (v65 + SBYTE1(v51) * v98);
          if (v99 < v67)
          {
            v67 = v99;
          }

          if (v67 >= v43)
          {
            v43 = v67;
          }

          v68 = *v66;
          v69 = *v43;
          v70 = 1.0;
          v71 = 1.0;
          if (v14)
          {
            v72 = v92 + (v64 >> 54);
            v73 = *(result + 40);
            if (v94 >= v72)
            {
              v74 = (v92 + (v64 >> 54));
            }

            else
            {
              v74 = v94;
            }

            if (v74 < v73)
            {
              v74 = *(result + 40);
            }

            v71 = *v74;
            v75 = (v72 + SBYTE1(v51) * v93);
            if (v94 < v75)
            {
              v75 = v94;
            }

            if (v75 < v73)
            {
              v75 = *(result + 40);
            }

            v70 = *v75;
          }

          LODWORD(a11) = interpolate_cmykaf[5 * v63 + 4];
          LODWORD(a12) = interpolate_cmykaf[5 * ((v51 >> 28) & 3) + 4];
          v76 = vmlaq_n_f32(vmlsq_lane_f32(v50, v50, *&a11, 0), v68, *&a11);
          v50 = vmlaq_n_f32(vmlsq_lane_f32(v76, v76, *&a12, 0), vmlaq_n_f32(vmlsq_lane_f32(v68, v68, *&a11, 0), v69, *&a11), *&a12);
          v48 = (((v48 - (v48 * *&a11)) + (v71 * *&a11)) - (((v48 - (v48 * *&a11)) + (v71 * *&a11)) * *&a12)) + (((v71 - (v71 * *&a11)) + (v70 * *&a11)) * *&a12);
        }

        goto LABEL_43;
      }

      v77 = HIWORD(v51) << 56;
      v78 = (v42 + (v77 >> 52));
      if (v99 < v78)
      {
        v78 = v99;
      }

      if (v78 >= v43)
      {
        v43 = v78;
      }

      v79 = *v43;
      v80 = 1.0;
      if (v14)
      {
        v81 = (v92 + (v77 >> 54));
        if (v94 < v81)
        {
          v81 = v94;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v80 = *v81;
      }

      v82 = &interpolate_cmykaf[5 * ((v51 >> 28) & 3)];
    }

    LODWORD(a9) = v82[4];
    v50 = vmlaq_n_f32(vmlsq_lane_f32(v50, v50, *&a9, 0), v79, *&a9);
    v48 = (v48 - (v48 * *&a9)) + (v80 * *&a9);
  }

LABEL_43:
  v52 = 0;
  v53 = v30 >> 22;
  ++v16;
  v85 = v22;
  v54 = v22 - 1;
  a3 += v100;
  v55 = v88 - a3;
  a2 += v101;
  v56 = v87 - a2;
  while (1)
  {
    v102 = v50;
    v103 = v48;
    CMYKF(v16, v102.f32);
    *(v91 + 1 + v52) = v53;
    result = v97;
    v14 = v95;
    if (v54 == v52)
    {
      return result;
    }

    if ((v55 | v56 | (a3 - v89) | (a2 - v90)) < 0)
    {
      v91 += v52 + 1;
      v49 = ~v52 + v85;
      goto LABEL_38;
    }

    v57 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = v96 + SHIDWORD(a3) * v98 + 4 * v57;
    v43 = *(v97 + 32);
    v58 = v99;
    if (v99 >= v42)
    {
      v58 = (v96 + SHIDWORD(a3) * v98 + 4 * v57);
    }

    if (v58 < v43)
    {
      v58 = *(v97 + 32);
    }

    if (v95)
    {
      v59 = v95 + SHIDWORD(a3) * v93 + v57;
      v60 = *(v97 + 40);
      v61 = v94;
      v92 = v59;
      if (v94 >= v59)
      {
        v61 = v59;
      }

      if (v61 >= v60)
      {
        v60 = v61;
      }

      v48 = *v60;
    }

    else
    {
      v48 = 1.0;
    }

    v50 = *v58;
    if (v15)
    {
      v51 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v51 & 0xF) != 0)
      {
        v91 += v52 + 1;
        v22 = ~v52 + v85;
        v30 = -1;
        goto LABEL_62;
      }
    }

    ++v52;
    ++v16;
    a3 += v100;
    v55 -= v100;
    a2 += v101;
    v56 -= v101;
    LOBYTE(v53) = -1;
  }
}

unint64_t *CMYKF(unint64_t *result, float *a2)
{
  v2 = a2[4];
  if (v2 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v3 = *a2;
    v4 = a2[1];
    LODWORD(v5) = ((v2 * 255.0) + 0.5);
    v6 = a2[2];
    v7 = a2[3];
    if (v2 <= 1.0)
    {
      v5 = v5;
    }

    else
    {
      v5 = 255;
    }

    if (v2 > 1.0)
    {
      v2 = 1.0;
    }

    v8 = ((v3 * 255.0) + 0.5);
    if (v3 < 0.0)
    {
      v8 = 0;
    }

    if (v3 > v2)
    {
      v8 = v5;
    }

    v9 = ((v4 * 255.0) + 0.5);
    if (v4 < 0.0)
    {
      v9 = 0;
    }

    if (v4 > v2)
    {
      v9 = v5;
    }

    v10 = ((v6 * 255.0) + 0.5);
    if (v6 < 0.0)
    {
      v10 = 0;
    }

    if (v6 > v2)
    {
      v10 = v5;
    }

    v11 = ((v7 * 255.0) + 0.5);
    if (v7 < 0.0)
    {
      v11 = 0;
    }

    if (v7 > v2)
    {
      v11 = v5;
    }

    v12 = (v9 << 16) | (v8 << 24) | (v10 << 8) | v11 | (v5 << 32);
  }

  *result = v12;
  return result;
}

uint64_t cmyk32_sample_CMYKF(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 40);
  v15 = *(result + 176);
  v87 = *(result + 80);
  v88 = *(result + 88);
  v100 = *(result + 120);
  v101 = *(result + 112);
  v16 = (*(result + 152) - 8);
  v91 = *(result + 144) - 1;
  v17 = *(result + 260) - 1;
  v98 = *(result + 24);
  v96 = *(result + 32);
  v18 = *(result + 256);
  v93 = *(result + 28);
  v94 = v14 + (v17 * v93) + 4 * (v18 - 1);
  v86 = *(result + 188);
  v99 = v96 + (v17 * v98) + 4 * (4 * v18) - 16;
  v89 = *(result + 72);
  v90 = *(result + 64);
  v95 = v14;
  v97 = result;
  while (1)
  {
    if (a3 >= v89)
    {
      if (a3 <= v88)
      {
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
        v22 = a4;
        v23 = v90;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v88;
        v27 = v26 - a3 + (v25 >> 1);
        v22 = a4;
        v23 = v90;
        if (v27 < 1)
        {
          goto LABEL_37;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v30 = v86 | v28;
        v31 = v26 - 0x1000000;
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v89 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      v23 = v90;
      if (v21 < 1)
      {
        goto LABEL_37;
      }

      if (v21 >= v19)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v21) >> 32;
      }

      v30 = v86 | v24;
      v31 = v20 + 0x1000000;
      v29 = 512;
    }

    if (a2 >= v23)
    {
      if (a2 <= v87)
      {
        v36 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v37 = *(result + 192);
        v38 = *(result + 200) + v87;
        v39 = v38 - a2 + (v37 >> 1);
        if (v39 < 1)
        {
          goto LABEL_37;
        }

        if (v39 < v37)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v86;
        }

        v35 = v38 - 0x1000000;
        v36 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v23 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_37;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v86;
      }

      v35 = v33 + 0x1000000;
      v36 = 32;
    }

    if (v30 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v49 = v22 - 1;
    a2 += v101;
    a3 += v100;
    ++v16;
    *++v91 = 0;
LABEL_38:
    a4 = v49;
    if (!v49)
    {
      return result;
    }
  }

  v40 = v31 >> 32;
  v41 = (v35 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = v96 + SHIDWORD(v31) * v98 + 4 * v41;
  v43 = *(result + 32);
  v44 = v99;
  if (v99 >= v42)
  {
    v44 = v42;
  }

  if (v44 < v43)
  {
    v44 = *(result + 32);
  }

  if (v14)
  {
    v45 = v14 + v40 * v93 + v41;
    v46 = *(result + 40);
    v47 = v94;
    v92 = v45;
    if (v94 >= v45)
    {
      v47 = v45;
    }

    if (v47 >= v46)
    {
      v46 = v47;
    }

    v48 = COERCE_FLOAT(bswap32(*v46));
  }

  else
  {
    v92 = 0;
    v48 = 1.0;
  }

  v50 = vrev32q_s8(*v44);
  if (v15)
  {
    v51 = *(v15 + (v36 | v29));
LABEL_62:
    v62 = v51 & 0xF;
    v63 = HIBYTE(v51) & 3;
    if (v62 == 1)
    {
      v83 = (v42 + SBYTE1(v51) * v98);
      if (v99 < v83)
      {
        v83 = v99;
      }

      if (v83 >= v43)
      {
        v43 = v83;
      }

      v79 = vrev32q_s8(*v43);
      v80 = 1.0;
      if (v14)
      {
        v84 = (v92 + SBYTE1(v51) * v93);
        if (v94 < v84)
        {
          v84 = v94;
        }

        if (v84 < *(result + 40))
        {
          v84 = *(result + 40);
        }

        v80 = COERCE_FLOAT(bswap32(*v84));
      }

      v82 = &interpolate_cmykaf[5 * v63];
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v64 = HIWORD(v51) << 56;
          v65 = (v42 + (v64 >> 52));
          if (v99 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v99;
          }

          if (v66 < v43)
          {
            v66 = v43;
          }

          v67 = (v65 + SBYTE1(v51) * v98);
          if (v99 < v67)
          {
            v67 = v99;
          }

          if (v67 >= v43)
          {
            v43 = v67;
          }

          v68 = vrev32q_s8(*v66);
          v69 = vrev32q_s8(*v43);
          v70 = 1.0;
          v71 = 1.0;
          if (v14)
          {
            v72 = v92 + (v64 >> 54);
            v73 = *(result + 40);
            if (v94 >= v72)
            {
              v74 = (v92 + (v64 >> 54));
            }

            else
            {
              v74 = v94;
            }

            if (v74 < v73)
            {
              v74 = *(result + 40);
            }

            v70 = COERCE_FLOAT(bswap32(*v74));
            v75 = (v72 + SBYTE1(v51) * v93);
            if (v94 < v75)
            {
              v75 = v94;
            }

            if (v75 < v73)
            {
              v75 = *(result + 40);
            }

            v71 = COERCE_FLOAT(bswap32(*v75));
          }

          LODWORD(a11) = interpolate_cmykaf[5 * v63 + 4];
          LODWORD(a12) = interpolate_cmykaf[5 * ((v51 >> 28) & 3) + 4];
          v76 = vmlaq_n_f32(vmlsq_lane_f32(v50, v50, *&a11, 0), v68, *&a11);
          v50 = vmlaq_n_f32(vmlsq_lane_f32(v76, v76, *&a12, 0), vmlaq_n_f32(vmlsq_lane_f32(v68, v68, *&a11, 0), v69, *&a11), *&a12);
          v48 = (((v48 - (v48 * *&a11)) + (v70 * *&a11)) - (((v48 - (v48 * *&a11)) + (v70 * *&a11)) * *&a12)) + (((v70 - (v70 * *&a11)) + (v71 * *&a11)) * *&a12);
        }

        goto LABEL_43;
      }

      v77 = HIWORD(v51) << 56;
      v78 = (v42 + (v77 >> 52));
      if (v99 < v78)
      {
        v78 = v99;
      }

      if (v78 >= v43)
      {
        v43 = v78;
      }

      v79 = vrev32q_s8(*v43);
      v80 = 1.0;
      if (v14)
      {
        v81 = (v92 + (v77 >> 54));
        if (v94 < v81)
        {
          v81 = v94;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v80 = COERCE_FLOAT(bswap32(*v81));
      }

      v82 = &interpolate_cmykaf[5 * ((v51 >> 28) & 3)];
    }

    LODWORD(a9) = v82[4];
    v50 = vmlaq_n_f32(vmlsq_lane_f32(v50, v50, *&a9, 0), v79, *&a9);
    v48 = (v48 - (v48 * *&a9)) + (v80 * *&a9);
  }

LABEL_43:
  v52 = 0;
  v53 = v30 >> 22;
  ++v16;
  v85 = v22;
  v54 = v22 - 1;
  a3 += v100;
  v55 = v88 - a3;
  a2 += v101;
  v56 = v87 - a2;
  while (1)
  {
    v102 = v50;
    v103 = v48;
    CMYKF(v16, v102.f32);
    *(v91 + 1 + v52) = v53;
    result = v97;
    v14 = v95;
    if (v54 == v52)
    {
      return result;
    }

    if ((v55 | v56 | (a3 - v89) | (a2 - v90)) < 0)
    {
      v91 += v52 + 1;
      v49 = ~v52 + v85;
      goto LABEL_38;
    }

    v57 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = v96 + SHIDWORD(a3) * v98 + 4 * v57;
    v43 = *(v97 + 32);
    v58 = v99;
    if (v99 >= v42)
    {
      v58 = (v96 + SHIDWORD(a3) * v98 + 4 * v57);
    }

    if (v58 < v43)
    {
      v58 = *(v97 + 32);
    }

    if (v95)
    {
      v59 = v95 + SHIDWORD(a3) * v93 + v57;
      v60 = *(v97 + 40);
      v61 = v94;
      v92 = v59;
      if (v94 >= v59)
      {
        v61 = v59;
      }

      if (v61 >= v60)
      {
        v60 = v61;
      }

      v48 = COERCE_FLOAT(bswap32(*v60));
    }

    else
    {
      v48 = 1.0;
    }

    v50 = vrev32q_s8(*v58);
    if (v15)
    {
      v51 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v51 & 0xF) != 0)
      {
        v91 += v52 + 1;
        v22 = ~v52 + v85;
        v30 = -1;
        goto LABEL_62;
      }
    }

    ++v52;
    ++v16;
    a3 += v100;
    v55 -= v100;
    a2 += v101;
    v56 -= v101;
    LOBYTE(v53) = -1;
  }
}

uint64_t cmyk32_sample_cmyk64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v105 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v109 = *(result + 152) - 8;
  v107 = *(result + 88);
  v108 = *(result + 144) - 1;
  v11 = *(result + 260) - 1;
  v12 = *(result + 256);
  v103 = *(result + 188);
  v13 = v5 + (v11 * v7) + 2 * (v12 - 1);
  v14 = v4 + (v11 * v6) + 8 * v12 - 16;
  v106 = *(result + 72);
  v104 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v106)
    {
      if (a3 <= v107)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        v25 = a3;
        v26 = v104;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v107;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_39;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v26 = v104;
        v24 = v103 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v106 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_39;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v26 = v104;
      v24 = v103 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v26)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v26 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v103;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    *++v108 = 0;
    v109 += 8;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v105)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_26;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v105;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_39;
  }

  if (v34 < v32)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v103;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_39;
  }

  v35 = v25 >> 32;
  v36 = v30 >> 32;
  v37 = v4 + SHIDWORD(v25) * v6;
  v38 = v37 + 8 * v36;
  v39 = *(result + 32);
  if (v14 >= v38)
  {
    v40 = (v37 + 8 * v36);
  }

  else
  {
    v40 = v14;
  }

  if (v40 < v39)
  {
    v40 = *(result + 32);
  }

  if (v5)
  {
    v41 = v5 + v35 * v7 + 2 * v36;
    v42 = *(result + 40);
    if (v13 >= v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v13;
    }

    if (v43 >= v42)
    {
      v42 = v43;
    }

    v44 = *v42;
  }

  else
  {
    v41 = 0;
    v44 = 0xFFFF;
  }

  v45 = *v40;
  if (v8)
  {
    v46 = *(v8 + (v31 | v23));
LABEL_67:
    v56 = v46 & 0xF;
    v57 = HIBYTE(v46) & 3;
    switch(v56)
    {
      case 1:
        v94 = (v38 + SBYTE1(v46) * v6);
        if (v14 < v94)
        {
          v94 = v14;
        }

        if (v94 < v39)
        {
          v94 = v39;
        }

        v95 = *v94;
        v96 = 0xFFFF;
        if (v5)
        {
          v97 = (v41 + SBYTE1(v46) * v7);
          if (v13 < v97)
          {
            v97 = v13;
          }

          if (v97 < *(result + 40))
          {
            v97 = *(result + 40);
          }

          v96 = *v97;
        }

        v98 = &interpolate_cmyk64 + 16 * v57;
        v99 = *v98;
        v100 = v57 + 1;
        v83 = v45 - ((*v98 & v45) >> v100);
        LODWORD(v98) = *(v98 + 4);
        v84 = v44 - ((v98 & v44) >> v100);
        v85 = (v99 & v95) >> v100;
        v86 = (v96 & v98) >> v100;
LABEL_121:
        v45 = v83 + v85;
        LOWORD(v44) = v84 + v86;
        break;
      case 2:
        v87 = HIWORD(v46) << 56;
        v88 = (v38 + (v87 >> 53));
        if (v14 < v88)
        {
          v88 = v14;
        }

        if (v88 < v39)
        {
          v88 = v39;
        }

        v89 = *v88;
        v90 = -1;
        if (v5)
        {
          v91 = (v41 + (v87 >> 55));
          if (v13 < v91)
          {
            v91 = v13;
          }

          if (v91 < *(result + 40))
          {
            v91 = *(result + 40);
          }

          v90 = *v91;
        }

        v92 = (v46 >> 28) & 3;
        v93 = &interpolate_cmyk64 + 16 * v92;
        LOBYTE(v92) = v92 + 1;
        v45 = v45 - ((*v93 & v45) >> v92) + ((*v93 & v89) >> v92);
        v44 = v44 - ((*(v93 + 4) & v44) >> v92) + ((v90 & *(v93 + 4)) >> v92);
        break;
      case 3:
        v58 = HIWORD(v46) << 56;
        v59 = (v38 + (v58 >> 53));
        if (v14 < v59)
        {
          v59 = v14;
        }

        if (v59 < v39)
        {
          v59 = v39;
        }

        v60 = *v59;
        v61 = v38 + SBYTE1(v46) * v6;
        if (v14 >= v61)
        {
          v62 = (v38 + SBYTE1(v46) * v6);
        }

        else
        {
          v62 = v14;
        }

        if (v62 < v39)
        {
          v62 = v39;
        }

        v63 = *v62;
        v64 = (v61 + (v58 >> 53));
        if (v14 < v64)
        {
          v64 = v14;
        }

        if (v64 < v39)
        {
          v64 = v39;
        }

        v101 = *v64;
        v102 = v63;
        v65 = 0xFFFF;
        v66 = 0xFFFF;
        v67 = 0xFFFF;
        if (v5)
        {
          v68 = (v41 + (v58 >> 55));
          v69 = *(result + 40);
          if (v13 < v68)
          {
            v68 = v13;
          }

          if (v68 < v69)
          {
            v68 = *(result + 40);
          }

          v65 = *v68;
          v70 = v41 + SBYTE1(v46) * v7;
          if (v13 >= v70)
          {
            v71 = (v41 + SBYTE1(v46) * v7);
          }

          else
          {
            v71 = v13;
          }

          if (v71 < v69)
          {
            v71 = *(result + 40);
          }

          v66 = *v71;
          v72 = (v70 + (v58 >> 55));
          if (v13 < v72)
          {
            v72 = v13;
          }

          if (v72 < v69)
          {
            v72 = *(result + 40);
          }

          v67 = *v72;
        }

        v73 = &interpolate_cmyk64 + 16 * v57;
        v74 = *v73;
        v75 = v57 + 1;
        v76 = v45 - ((*v73 & v45) >> v75);
        LODWORD(v73) = *(v73 + 4);
        v77 = (v74 & v102) >> v75;
        v78 = v44 - ((v73 & v44) >> v75) + ((v66 & v73) >> v75);
        v79 = v60 - ((v74 & v60) >> v75) + ((v74 & v101) >> v75);
        v80 = v65 - ((v65 & v73) >> v75) + ((v67 & v73) >> v75);
        LODWORD(v73) = (v46 >> 28) & 3;
        v81 = &interpolate_cmyk64 + 16 * v73;
        v82 = *v81;
        LOBYTE(v73) = v73 + 1;
        v83 = v76 + v77 - (((v76 + v77) & *v81) >> v73);
        LODWORD(v81) = *(v81 + 4);
        v84 = v78 - ((v78 & v81) >> v73);
        v85 = (v79 & v82) >> v73;
        v86 = (v80 & v81) >> v73;
        goto LABEL_121;
    }
  }

  v47 = 0;
  v48 = 0;
  v49 = v24 >> 22;
  a3 += v9;
  v50 = v107 - a3;
  a2 += v10;
  v51 = v105 - a2;
  while (1)
  {
    *(v109 + 8 + 8 * v48) = (v45 >> 8) & 0xFF0000 | HIBYTE(v45) | (BYTE1(v45) << 24) | HIDWORD(v45) & 0xFF00 | (BYTE1(v44) << 32);
    *(v108 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v50 | v51 | (a3 - v106) | (a2 - v104)) < 0)
    {
      v108 += v48 + 1;
      v109 = v109 - v47 + 8;
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v38 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    v39 = *(result + 32);
    if (v14 >= v38)
    {
      v52 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    }

    else
    {
      v52 = v14;
    }

    if (v52 >= v39)
    {
      v53 = v52;
    }

    else
    {
      v53 = *(result + 32);
    }

    if (v5)
    {
      v41 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      v54 = *(result + 40);
      if (v13 >= v41)
      {
        v55 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      }

      else
      {
        v55 = v13;
      }

      if (v55 >= v54)
      {
        v54 = v55;
      }

      v44 = *v54;
    }

    else
    {
      v44 = 0xFFFF;
    }

    v45 = *v53;
    if (v8)
    {
      v46 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v46 & 0xF) != 0)
      {
        v108 += v48 + 1;
        v109 = v109 - v47 + 8;
        a4 += ~v48;
        v24 = -1;
        goto LABEL_67;
      }
    }

    ++v48;
    v47 -= 8;
    a3 += v9;
    v50 -= v9;
    a2 += v10;
    v51 -= v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t cmyk32_sample_CMYK64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 176);
  v97 = *(result + 88);
  v98 = *(result + 80);
  v9 = *(result + 112);
  v8 = *(result + 120);
  v99 = *(result + 144) - 1;
  v100 = *(result + 152) - 8;
  v10 = *(result + 260) - 1;
  v11 = *(result + 256);
  v101 = *(result + 28);
  v94 = *(result + 188);
  v12 = v5 + (v10 * v101) + 2 * (v11 - 1);
  v13 = v4 + (v10 * v6) + 8 * v11 - 16;
  v95 = *(result + 64);
  v96 = *(result + 72);
  while (1)
  {
LABEL_2:
    if (a3 >= v96)
    {
      v17 = v98;
      if (a3 <= v97)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        v25 = a3;
        v26 = v95;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v97;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_39;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v26 = v95;
        v24 = v94 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v96 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      v17 = v98;
      if (v16 < 1)
      {
        goto LABEL_39;
      }

      if (v16 >= v14)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v16) >> 32;
      }

      v26 = v95;
      v24 = v94 | v18;
      v25 = v15 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v26)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v26 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v94;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v9;
    a3 += v8;
    v100 += 8;
    *++v99 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_26;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v17;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_39;
  }

  if (v34 < v32)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v94;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_39;
  }

  v35 = v25 >> 32;
  v36 = v30 >> 32;
  v37 = v4 + SHIDWORD(v25) * v6;
  v38 = v37 + 8 * v36;
  v39 = *(result + 32);
  if (v13 >= v38)
  {
    v40 = (v37 + 8 * v36);
  }

  else
  {
    v40 = v13;
  }

  if (v40 < v39)
  {
    v40 = *(result + 32);
  }

  if (v5)
  {
    v41 = v5 + v35 * v101 + 2 * v36;
    v42 = *(result + 40);
    if (v12 >= v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v12;
    }

    if (v43 >= v42)
    {
      v42 = v43;
    }

    v44 = bswap32(*v42) >> 16;
  }

  else
  {
    v41 = 0;
    v44 = 0xFFFF;
  }

  v45 = ((bswap32(v40[2]) >> 16) << 32) | ((bswap32(v40[3]) >> 16) << 48) | bswap32(v40[1]) & 0xFFFF0000 | (bswap32(*v40) >> 16);
  if (v7)
  {
    v46 = *(v7 + (v31 | v23));
LABEL_67:
    v56 = v46 & 0xF;
    v57 = HIBYTE(v46) & 3;
    switch(v56)
    {
      case 1:
        v84 = (v38 + SBYTE1(v46) * v6);
        if (v13 < v84)
        {
          v84 = v13;
        }

        if (v84 < v39)
        {
          v84 = v39;
        }

        v85 = ((bswap32(v84[2]) >> 16) << 32) | ((bswap32(v84[3]) >> 16) << 48) | bswap32(v84[1]) & 0xFFFF0000 | (bswap32(*v84) >> 16);
        LOWORD(v86) = -1;
        if (v5)
        {
          v87 = (v41 + SBYTE1(v46) * v101);
          if (v12 < v87)
          {
            v87 = v12;
          }

          if (v87 < *(result + 40))
          {
            v87 = *(result + 40);
          }

          v86 = bswap32(*v87) >> 16;
        }

        v88 = &interpolate_cmyk64 + 16 * v57;
        v89 = v57 + 1;
        v45 = v45 - ((*v88 & v45) >> v89) + ((*v88 & v85) >> v89);
        v44 = v44 - ((*(v88 + 4) & v44) >> v89) + ((v86 & *(v88 + 4)) >> v89);
        break;
      case 2:
        v77 = HIWORD(v46) << 56;
        v78 = (v38 + (v77 >> 53));
        if (v13 < v78)
        {
          v78 = v13;
        }

        if (v78 < v39)
        {
          v78 = v39;
        }

        v79 = ((bswap32(v78[2]) >> 16) << 32) | ((bswap32(v78[3]) >> 16) << 48) | bswap32(v78[1]) & 0xFFFF0000 | (bswap32(*v78) >> 16);
        LOWORD(v80) = -1;
        if (v5)
        {
          v81 = (v41 + (v77 >> 55));
          if (v12 < v81)
          {
            v81 = v12;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 = bswap32(*v81) >> 16;
        }

        v82 = (v46 >> 28) & 3;
        v83 = &interpolate_cmyk64 + 16 * v82;
        LOBYTE(v82) = v82 + 1;
        v45 = v45 - ((*v83 & v45) >> v82) + ((*v83 & v79) >> v82);
        v44 = v44 - ((*(v83 + 4) & v44) >> v82) + ((v80 & *(v83 + 4)) >> v82);
        break;
      case 3:
        v92 = HIBYTE(v46) & 3;
        v58 = HIWORD(v46) << 56;
        v59 = (v38 + (v58 >> 53));
        if (v13 < v59)
        {
          v59 = v13;
        }

        if (v59 < v39)
        {
          v59 = v39;
        }

        v93 = ((bswap32(v59[2]) >> 16) << 32) | ((bswap32(v59[3]) >> 16) << 48) | bswap32(v59[1]) & 0xFFFF0000 | (bswap32(*v59) >> 16);
        v60 = v38 + SBYTE1(v46) * v6;
        if (v13 >= v60)
        {
          v61 = (v38 + SBYTE1(v46) * v6);
        }

        else
        {
          v61 = v13;
        }

        if (v61 < v39)
        {
          v61 = v39;
        }

        v91 = ((bswap32(v61[2]) >> 16) << 32) | ((bswap32(v61[3]) >> 16) << 48) | bswap32(v61[1]) & 0xFFFF0000 | (bswap32(*v61) >> 16);
        v62 = (v60 + (v58 >> 53));
        if (v13 < v62)
        {
          v62 = v13;
        }

        if (v62 < v39)
        {
          v62 = v39;
        }

        v90 = ((bswap32(v62[2]) >> 16) << 32) | ((bswap32(v62[3]) >> 16) << 48) | bswap32(v62[1]) & 0xFFFF0000 | (bswap32(*v62) >> 16);
        v63 = 0xFFFF;
        v64 = 0xFFFF;
        v65 = 0xFFFF;
        if (v5)
        {
          v66 = (v41 + (v58 >> 55));
          v67 = *(result + 40);
          if (v12 < v66)
          {
            v66 = v12;
          }

          if (v66 < v67)
          {
            v66 = *(result + 40);
          }

          v65 = bswap32(*v66) >> 16;
          v68 = v41 + SBYTE1(v46) * v101;
          if (v12 >= v68)
          {
            v69 = (v41 + SBYTE1(v46) * v101);
          }

          else
          {
            v69 = v12;
          }

          if (v69 < v67)
          {
            v69 = *(result + 40);
          }

          v64 = bswap32(*v69) >> 16;
          v70 = (v68 + (v58 >> 55));
          if (v12 < v70)
          {
            v70 = v12;
          }

          if (v70 < v67)
          {
            v70 = *(result + 40);
          }

          v63 = bswap32(*v70) >> 16;
        }

        v71 = &interpolate_cmyk64 + 16 * v92;
        v72 = *v71;
        v73 = v45 - ((*v71 & v45) >> (v92 + 1));
        LODWORD(v71) = *(v71 + 4);
        v74 = v44 - ((v71 & v44) >> (v92 + 1)) + ((v64 & v71) >> (v92 + 1));
        v75 = (v46 >> 28) & 3;
        v76 = &interpolate_cmyk64 + 16 * v75;
        LOBYTE(v75) = v75 + 1;
        v45 = v73 + ((v72 & v91) >> (v92 + 1)) - (((v73 + ((v72 & v91) >> (v92 + 1))) & *v76) >> v75) + (((v93 - ((v72 & v93) >> (v92 + 1)) + ((v72 & v90) >> (v92 + 1))) & *v76) >> v75);
        v44 = v74 - ((v74 & *(v76 + 4)) >> v75) + (((v65 - ((v65 & v71) >> (v92 + 1)) + ((v63 & v71) >> (v92 + 1))) & *(v76 + 4)) >> v75);
        break;
    }
  }

  v47 = 0;
  v48 = 0;
  v49 = v24 >> 22;
  a3 += v8;
  v50 = v97 - a3;
  a2 += v9;
  v51 = v17 - a2;
  while (1)
  {
    *(v100 + 8 + 8 * v48) = HIBYTE(v45) & 0xFFFFFF0000FFFFFFLL | (BYTE1(v44) << 32) | (v45 >> 8) & 0xFF0000 | (BYTE1(v45) << 24) | HIDWORD(v45) & 0xFF00;
    *(v99 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v50 | v51 | (a3 - v96) | (a2 - v95)) < 0)
    {
      v99 += v48 + 1;
      v100 = v100 - v47 + 8;
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v38 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    v39 = *(result + 32);
    if (v13 >= v38)
    {
      v52 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    }

    else
    {
      v52 = v13;
    }

    if (v52 >= v39)
    {
      v53 = v52;
    }

    else
    {
      v53 = *(result + 32);
    }

    if (v5)
    {
      v41 = v5 + SHIDWORD(a3) * v101 + 2 * (a2 >> 32);
      v54 = *(result + 40);
      if (v12 >= v41)
      {
        v55 = v5 + SHIDWORD(a3) * v101 + 2 * (a2 >> 32);
      }

      else
      {
        v55 = v12;
      }

      if (v55 >= v54)
      {
        v54 = v55;
      }

      v44 = bswap32(*v54) >> 16;
    }

    else
    {
      v44 = 0xFFFF;
    }

    v45 = ((bswap32(v53[2]) >> 16) << 32) | ((bswap32(v53[3]) >> 16) << 48) | bswap32(v53[1]) & 0xFFFF0000 | (bswap32(*v53) >> 16);
    if (v7)
    {
      v46 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v46 & 0xF) != 0)
      {
        v17 = v98;
        v99 += v48 + 1;
        v100 = v100 - v47 + 8;
        a4 += ~v48;
        v24 = -1;
        goto LABEL_67;
      }
    }

    ++v48;
    v47 -= 8;
    a3 += v8;
    v50 -= v8;
    a2 += v9;
    v51 -= v9;
    LOBYTE(v49) = -1;
  }
}

uint64_t cmyk32_sample_cmyk32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v132 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v131 = *(result + 112);
    if (v5 > v6)
    {
      v131 = v5 % v6;
    }
  }

  else
  {
    v131 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v133 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v130 = v11;
  }

  else
  {
    v130 = 0;
  }

  v126 = *(result + 80);
  v128 = *(result + 88);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xFF00000000;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v125 = *(result + 188);
  v17 = (v9 + (v16 - 1) + (v15 * v132));
  v18 = v133 + (v15 * v4) + 4 * v16 - 8;
  v127 = *(result + 64);
  v129 = *(result + 72);
  do
  {
    if (a3 >= v129)
    {
      v22 = a4;
      if (a3 <= v128)
      {
        v28 = 0;
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v128;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_60;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v30 = v125 | v27;
        v31 = v25 - 0x1000000;
        v28 = a3 - (v25 - 0x1000000);
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v129 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_60;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v30 = v125 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - (v20 + 0x1000000);
      v29 = 512;
    }

    if (a2 >= v127)
    {
      if (a2 <= v126)
      {
        v36 = 0;
        v37 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v126;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_60;
        }

        if (v40 < v38)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v125;
        }

        v35 = v39 - 0x1000000;
        v36 = a2 - (v39 - 0x1000000);
        v37 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v127 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_60;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v125;
      }

      v35 = v33 + 0x1000000;
      v36 = a2 - (v33 + 0x1000000);
      v37 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v41 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v42 = (v6 & ((v35 % v6) >> 63)) + v35 % v6;
        if (v41 >= v7)
        {
          v43 = v7;
        }

        else
        {
          v43 = 0;
        }

        v31 = v41 - v43;
        if (v42 >= v6)
        {
          v44 = v6;
        }

        else
        {
          v44 = 0;
        }

        v35 = v42 - v44;
        v28 += v31;
        v36 += v35;
      }

      v45 = v31 >> 32;
      v46 = v35 >> 32;
      v47 = v133 + SHIDWORD(v31) * v4;
      v48 = v47 + 4 * v46;
      v49 = *(result + 32);
      if (v18 >= v48)
      {
        v50 = (v47 + 4 * v46);
      }

      else
      {
        v50 = v18;
      }

      if (v50 < v49)
      {
        v50 = *(result + 32);
      }

      v51 = *v50;
      if (v9)
      {
        v52 = v9 + v45 * v132 + v46;
        v53 = *(result + 40);
        if (v17 >= v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = v17;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v51 |= *v53 << 32;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_65:
              *(v12 + 8) = v51 | v14;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v57 = v22;
              v58 = 0;
              a2 += v5;
              v59 = v126 - a2;
              a3 += v10;
              v60 = v128 - a3;
              v61 = -8;
              while (1)
              {
                if ((v60 | v59 | (a3 - v129) | (a2 - v127)) < 0)
                {
                  v13 += v58 + 1;
                  v12 -= v61;
                  v55 = ~v58 + v57;
                  goto LABEL_61;
                }

                if (v6)
                {
                  v62 = (v7 & ((v28 + v130) >> 63)) + v28 + v130;
                  v63 = (v6 & ((v36 + v131) >> 63)) + v36 + v131;
                  if (v62 >= v7)
                  {
                    v64 = v7;
                  }

                  else
                  {
                    v64 = 0;
                  }

                  v28 = v62 - v64;
                  if (v63 >= v6)
                  {
                    v65 = v6;
                  }

                  else
                  {
                    v65 = 0;
                  }

                  v36 = v63 - v65;
                  v66 = v28;
                  v67 = v36;
                }

                else
                {
                  v66 = a3;
                  v67 = a2;
                }

                v68 = v67 >> 32;
                v69 = v66 >> 32;
                v48 = v133 + SHIDWORD(v66) * v4 + 4 * (v67 >> 32);
                v49 = *(result + 32);
                if (v18 >= v48)
                {
                  v70 = v48;
                }

                else
                {
                  v70 = v18;
                }

                if (v70 < v49)
                {
                  v70 = *(result + 32);
                }

                v51 = *v70;
                if (v9)
                {
                  v52 = v9 + v69 * v132 + v68;
                  v71 = *(result + 40);
                  if (v17 >= v52)
                  {
                    v72 = v52;
                  }

                  else
                  {
                    v72 = v17;
                  }

                  if (v72 >= v71)
                  {
                    v71 = v72;
                  }

                  v51 |= *v71 << 32;
                }

                if (v8)
                {
                  v56 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v56 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 8 * v58 + 16) = v51 | v14;
                *(v13 + v58++ + 2) = -1;
                v61 -= 8;
                a2 += v5;
                v59 -= v5;
                a3 += v10;
                v60 -= v10;
                if (v57 - 1 == v58)
                {
                  return result;
                }
              }

              v13 += v58 + 1;
              v12 -= v61;
              v22 = ~v58 + v57;
              v30 = -1;
LABEL_95:
              v73 = v56 & 0xF;
              v74 = v56 >> 8;
              v75 = HIBYTE(v56) & 3;
              if (v73 != 1)
              {
                break;
              }

              LODWORD(v114) = SBYTE1(v56);
              if (v6)
              {
                v115 = v74 << 56;
                v116 = v28 + (v115 >> 24);
                v117 = v7 & (v116 >> 63);
                if (v117 + v116 >= v7)
                {
                  v118 = v7;
                }

                else
                {
                  v118 = 0;
                }

                v114 = (v117 + (v115 >> 24) - v118) >> 32;
              }

              v119 = (v48 + v114 * v4);
              if (v18 < v119)
              {
                v119 = v18;
              }

              if (v119 < v49)
              {
                v119 = v49;
              }

              v120 = *v119;
              if (v9)
              {
                v121 = (v52 + v114 * v132);
                if (v17 < v121)
                {
                  v121 = v17;
                }

                if (v121 < *(result + 40))
                {
                  v121 = *(result + 40);
                }

                v120 |= *v121 << 32;
              }

              v122 = interpolate_cif10a[v75];
              v112 = v51 - ((v122 & v51) >> (v75 + 1));
              v113 = (v122 & v120) >> (v75 + 1);
LABEL_167:
              v51 = v112 + v113;
            }

            if (v73 == 2)
            {
              v102 = SBYTE2(v56);
              if (v6)
              {
                v103 = HIWORD(v56) << 56;
                v104 = v36 + (v103 >> 24);
                v105 = v6 & (v104 >> 63);
                if (v105 + v104 >= v6)
                {
                  v106 = v6;
                }

                else
                {
                  v106 = 0;
                }

                v102 = (v105 + (v103 >> 24) - v106) >> 32;
              }

              v107 = (v48 + 4 * v102);
              if (v18 < v107)
              {
                v107 = v18;
              }

              if (v107 < v49)
              {
                v107 = v49;
              }

              v108 = *v107;
              if (v9)
              {
                v109 = (v52 + v102);
                if (v17 < v109)
                {
                  v109 = v17;
                }

                if (v109 < *(result + 40))
                {
                  v109 = *(result + 40);
                }

                v108 |= *v109 << 32;
              }

              v110 = (v56 >> 28) & 3;
              v111 = interpolate_cif10a[v110];
              LOBYTE(v110) = v110 + 1;
              v112 = v51 - ((v111 & v51) >> v110);
              v113 = (v111 & v108) >> v110;
              goto LABEL_167;
            }

            if (v73 == 3)
            {
              v76 = HIBYTE(v56) & 3;
              v124 = v30;
              v123 = v22;
              LODWORD(v77) = SBYTE1(v56);
              v78 = SBYTE2(v56);
              if (v6)
              {
                v79 = v74 << 56;
                v80 = HIWORD(v56) << 56;
                v81 = v28 + (v79 >> 24);
                v82 = v36 + (v80 >> 24);
                v83 = v7 & (v81 >> 63);
                v84 = v6 & (v82 >> 63);
                v85 = v84 + v82;
                if (v83 + v81 >= v7)
                {
                  v86 = v7;
                }

                else
                {
                  v86 = 0;
                }

                if (v85 >= v6)
                {
                  v87 = v6;
                }

                else
                {
                  v87 = 0;
                }

                v77 = (v83 + (v79 >> 24) - v86) >> 32;
                v78 = (v84 + (v80 >> 24) - v87) >> 32;
              }

              v88 = (v48 + 4 * v78);
              if (v18 < v88)
              {
                v88 = v18;
              }

              if (v88 < v49)
              {
                v88 = v49;
              }

              v89 = *v88;
              v90 = v48 + v77 * v4;
              if (v18 >= v90)
              {
                v91 = (v48 + v77 * v4);
              }

              else
              {
                v91 = v18;
              }

              if (v91 < v49)
              {
                v91 = v49;
              }

              v92 = *v91;
              v93 = (v90 + 4 * v78);
              if (v18 < v93)
              {
                v93 = v18;
              }

              if (v93 >= v49)
              {
                v49 = v93;
              }

              v94 = *v49;
              if (v9)
              {
                v95 = (v52 + v78);
                v96 = *(result + 40);
                if (v17 < v52 + v78)
                {
                  v95 = v17;
                }

                if (v95 < v96)
                {
                  v95 = *(result + 40);
                }

                v89 |= *v95 << 32;
                v97 = v52 + v77 * v132;
                if (v17 >= v97)
                {
                  v98 = (v52 + v77 * v132);
                }

                else
                {
                  v98 = v17;
                }

                if (v98 < v96)
                {
                  v98 = *(result + 40);
                }

                v92 |= *v98 << 32;
                v99 = (v97 + v78);
                if (v17 < v99)
                {
                  v99 = v17;
                }

                if (v99 < v96)
                {
                  v99 = *(result + 40);
                }

                v94 |= *v99 << 32;
              }

              v100 = interpolate_cif10a[v76];
              v101 = v51 - ((v100 & v51) >> (v76 + 1)) + ((v100 & v92) >> (v76 + 1));
              v51 = v101 - ((v101 & interpolate_cif10a[(v56 >> 28) & 3]) >> (((v56 >> 28) & 3) + 1)) + (((v89 - ((v100 & v89) >> (v76 + 1)) + ((v100 & v94) >> (v76 + 1))) & interpolate_cif10a[(v56 >> 28) & 3]) >> (((v56 >> 28) & 3) + 1));
              v22 = v123;
              v30 = v124;
            }
          }
        }
      }

      else
      {
        v52 = 0;
        if (!v8)
        {
          goto LABEL_65;
        }
      }

      v56 = *(v8 + (v37 | v29));
      goto LABEL_95;
    }

LABEL_60:
    v55 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 8;
    *++v13 = 0;
LABEL_61:
    a4 = v55;
  }

  while (v55);
  return result;
}

uint64_t cmyk32_sample_CMYK32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v134 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v133 = *(result + 112);
    if (v5 > v6)
    {
      v133 = v5 % v6;
    }
  }

  else
  {
    v133 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v135 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v132 = v11;
  }

  else
  {
    v132 = 0;
  }

  v131 = *(result + 80);
  v129 = *(result + 88);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xFF00000000;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v127 = *(result + 188);
  v17 = (v9 + (v16 - 1) + (v15 * v134));
  v18 = v135 + (v15 * v4) + 4 * v16 - 8;
  v128 = *(result + 64);
  v130 = *(result + 72);
  do
  {
    if (a3 < v130)
    {
      v19 = *(result + 216);
      v20 = v130 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_61;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v33 = v131;
      v30 = v127 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - v31;
      v29 = 512;
      goto LABEL_27;
    }

    v22 = a4;
    if (a3 > v129)
    {
      v24 = *(result + 216);
      v25 = *(result + 224) + v129;
      v26 = v25 - a3 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_61;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v131;
      v30 = v127 | v27;
      v31 = v25 - 0x1000000;
      v28 = a3 - v31;
      v29 = 448;
LABEL_27:
      v32 = v128;
      goto LABEL_28;
    }

    v28 = 0;
    v29 = (a3 >> 22) & 0x3C0;
    v30 = 0x3FFFFFFF;
    v31 = a3;
    v32 = v128;
    v33 = v131;
LABEL_28:
    if (a2 >= v32)
    {
      if (a2 <= v33)
      {
        v38 = 0;
        v39 = (a2 >> 26) & 0x3C;
        v37 = a2;
      }

      else
      {
        v40 = *(result + 192);
        v41 = *(result + 200) + v33;
        v42 = v41 - a2 + (v40 >> 1);
        if (v42 < 1)
        {
          goto LABEL_61;
        }

        if (v42 < v40)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v127;
        }

        v37 = v41 - 0x1000000;
        v38 = a2 - (v41 - 0x1000000);
        v39 = 28;
      }
    }

    else
    {
      v34 = *(result + 192);
      v35 = v32 - *(result + 200);
      v36 = a2 - v35 + (v34 >> 1);
      if (v36 < 1)
      {
        goto LABEL_61;
      }

      if (v36 < v34)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v127;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v43 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v44 = (v6 & ((v37 % v6) >> 63)) + v37 % v6;
        if (v43 >= v7)
        {
          v45 = v7;
        }

        else
        {
          v45 = 0;
        }

        v31 = v43 - v45;
        if (v44 >= v6)
        {
          v46 = v6;
        }

        else
        {
          v46 = 0;
        }

        v37 = v44 - v46;
        v28 += v31;
        v38 += v37;
      }

      v47 = v31 >> 32;
      v48 = v37 >> 32;
      v49 = v135 + v47 * v4;
      v50 = v49 + 4 * v48;
      v51 = *(result + 32);
      if (v18 >= v50)
      {
        v52 = (v49 + 4 * v48);
      }

      else
      {
        v52 = v18;
      }

      if (v52 < v51)
      {
        v52 = *(result + 32);
      }

      v53 = bswap32(*v52);
      if (v9)
      {
        v54 = v9 + v47 * v134 + v48;
        v55 = *(result + 40);
        if (v17 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v17;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v53 |= *v55 << 32;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_66:
              *(v12 + 8) = v53 | v14;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v59 = v22;
              v60 = 0;
              a2 += v5;
              v61 = v131 - a2;
              a3 += v10;
              v62 = v129 - a3;
              v63 = -8;
              while (1)
              {
                if ((v62 | v61 | (a3 - v130) | (a2 - v128)) < 0)
                {
                  v13 += v60 + 1;
                  v12 -= v63;
                  v57 = ~v60 + v59;
                  goto LABEL_62;
                }

                if (v6)
                {
                  v64 = (v7 & ((v28 + v132) >> 63)) + v28 + v132;
                  v65 = (v6 & ((v38 + v133) >> 63)) + v38 + v133;
                  if (v64 >= v7)
                  {
                    v66 = v7;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v28 = v64 - v66;
                  if (v65 >= v6)
                  {
                    v67 = v6;
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v38 = v65 - v67;
                  v68 = v28;
                  v69 = v38;
                }

                else
                {
                  v68 = a3;
                  v69 = a2;
                }

                v70 = v69 >> 32;
                v71 = v68 >> 32;
                v50 = v135 + SHIDWORD(v68) * v4 + 4 * (v69 >> 32);
                v51 = *(result + 32);
                if (v18 >= v50)
                {
                  v72 = v50;
                }

                else
                {
                  v72 = v18;
                }

                if (v72 < v51)
                {
                  v72 = *(result + 32);
                }

                v53 = bswap32(*v72);
                if (v9)
                {
                  v54 = v9 + v71 * v134 + v70;
                  v73 = *(result + 40);
                  if (v17 >= v54)
                  {
                    v74 = v54;
                  }

                  else
                  {
                    v74 = v17;
                  }

                  if (v74 >= v73)
                  {
                    v73 = v74;
                  }

                  v53 |= *v73 << 32;
                }

                if (v8)
                {
                  v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v58 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 8 * v60 + 16) = v53 | v14;
                *(v13 + v60++ + 2) = -1;
                v63 -= 8;
                a2 += v5;
                v61 -= v5;
                a3 += v10;
                v62 -= v10;
                if (v59 - 1 == v60)
                {
                  return result;
                }
              }

              v13 += v60 + 1;
              v12 -= v63;
              v22 = ~v60 + v59;
              v30 = -1;
LABEL_96:
              v75 = v58 & 0xF;
              v76 = v58 >> 8;
              v77 = HIBYTE(v58) & 3;
              if (v75 != 1)
              {
                break;
              }

              LODWORD(v116) = SBYTE1(v58);
              if (v6)
              {
                v117 = v76 << 56;
                v118 = v28 + (v117 >> 24);
                v119 = v7 & (v118 >> 63);
                if (v119 + v118 >= v7)
                {
                  v120 = v7;
                }

                else
                {
                  v120 = 0;
                }

                v116 = (v119 + (v117 >> 24) - v120) >> 32;
              }

              v121 = (v50 + v116 * v4);
              if (v18 < v121)
              {
                v121 = v18;
              }

              if (v121 < v51)
              {
                v121 = v51;
              }

              v122 = bswap32(*v121);
              if (v9)
              {
                v123 = (v54 + v116 * v134);
                if (v17 < v123)
                {
                  v123 = v17;
                }

                if (v123 < *(result + 40))
                {
                  v123 = *(result + 40);
                }

                v122 |= *v123 << 32;
              }

              v124 = interpolate_cif10a[v77];
              v114 = v53 - ((v124 & v53) >> (v77 + 1));
              v115 = (v124 & v122) >> (v77 + 1);
LABEL_168:
              v53 = v114 + v115;
            }

            if (v75 == 2)
            {
              v104 = SBYTE2(v58);
              if (v6)
              {
                v105 = HIWORD(v58) << 56;
                v106 = v38 + (v105 >> 24);
                v107 = v6 & (v106 >> 63);
                if (v107 + v106 >= v6)
                {
                  v108 = v6;
                }

                else
                {
                  v108 = 0;
                }

                v104 = (v107 + (v105 >> 24) - v108) >> 32;
              }

              v109 = (v50 + 4 * v104);
              if (v18 < v109)
              {
                v109 = v18;
              }

              if (v109 < v51)
              {
                v109 = v51;
              }

              v110 = bswap32(*v109);
              if (v9)
              {
                v111 = (v54 + v104);
                if (v17 < v111)
                {
                  v111 = v17;
                }

                if (v111 < *(result + 40))
                {
                  v111 = *(result + 40);
                }

                v110 |= *v111 << 32;
              }

              v112 = (v58 >> 28) & 3;
              v113 = interpolate_cif10a[v112];
              LOBYTE(v112) = v112 + 1;
              v114 = v53 - ((v113 & v53) >> v112);
              v115 = (v113 & v110) >> v112;
              goto LABEL_168;
            }

            if (v75 == 3)
            {
              v78 = HIBYTE(v58) & 3;
              v126 = v30;
              v125 = v22;
              LODWORD(v79) = SBYTE1(v58);
              v80 = SBYTE2(v58);
              if (v6)
              {
                v81 = v76 << 56;
                v82 = HIWORD(v58) << 56;
                v83 = v28 + (v81 >> 24);
                v84 = v38 + (v82 >> 24);
                v85 = v7 & (v83 >> 63);
                v86 = v6 & (v84 >> 63);
                v87 = v86 + v84;
                if (v85 + v83 >= v7)
                {
                  v88 = v7;
                }

                else
                {
                  v88 = 0;
                }

                if (v87 >= v6)
                {
                  v89 = v6;
                }

                else
                {
                  v89 = 0;
                }

                v79 = (v85 + (v81 >> 24) - v88) >> 32;
                v80 = (v86 + (v82 >> 24) - v89) >> 32;
              }

              v90 = (v50 + 4 * v80);
              if (v18 < v90)
              {
                v90 = v18;
              }

              if (v90 < v51)
              {
                v90 = v51;
              }

              v91 = bswap32(*v90);
              v92 = v50 + v79 * v4;
              if (v18 >= v92)
              {
                v93 = (v50 + v79 * v4);
              }

              else
              {
                v93 = v18;
              }

              if (v93 < v51)
              {
                v93 = v51;
              }

              v94 = bswap32(*v93);
              v95 = (v92 + 4 * v80);
              if (v18 < v95)
              {
                v95 = v18;
              }

              if (v95 >= v51)
              {
                v51 = v95;
              }

              v96 = bswap32(*v51);
              if (v9)
              {
                v97 = (v54 + v80);
                v98 = *(result + 40);
                if (v17 < v54 + v80)
                {
                  v97 = v17;
                }

                if (v97 < v98)
                {
                  v97 = *(result + 40);
                }

                v91 |= *v97 << 32;
                v99 = v54 + v79 * v134;
                if (v17 >= v99)
                {
                  v100 = (v54 + v79 * v134);
                }

                else
                {
                  v100 = v17;
                }

                if (v100 < v98)
                {
                  v100 = *(result + 40);
                }

                v94 |= *v100 << 32;
                v101 = (v99 + v80);
                if (v17 < v101)
                {
                  v101 = v17;
                }

                if (v101 < v98)
                {
                  v101 = *(result + 40);
                }

                v96 |= *v101 << 32;
              }

              v102 = interpolate_cif10a[v78];
              v103 = v53 - ((v102 & v53) >> (v78 + 1)) + ((v102 & v94) >> (v78 + 1));
              v53 = v103 - ((v103 & interpolate_cif10a[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1)) + (((v91 - ((v102 & v91) >> (v78 + 1)) + ((v102 & v96) >> (v78 + 1))) & interpolate_cif10a[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1));
              v22 = v125;
              v30 = v126;
            }
          }
        }
      }

      else
      {
        v54 = 0;
        if (!v8)
        {
          goto LABEL_66;
        }
      }

      v58 = *(v8 + (v39 | v29));
      goto LABEL_96;
    }

LABEL_61:
    v57 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 8;
    *++v13 = 0;
LABEL_62:
    a4 = v57;
  }

  while (v57);
  return result;
}

unint64_t *cmyk32_sample_argb32(unint64_t *result, uint64_t a2, int64_t a3, int a4)
{
  v6 = result[22];
  v69 = result[10];
  v70 = result[11];
  v79 = result[14];
  v78 = result[15];
  v68 = *(result + 47);
  v7 = (result[19] - 8);
  v73 = result[18] - 1;
  if (result[5])
  {
    v8 = 0;
  }

  else
  {
    v8 = -16777216;
  }

  v74 = v8;
  v75 = result[4];
  v76 = *(result + 6);
  v80 = result;
  v77 = v75 + ((*(result + 65) - 1) * v76) + 4 * *(result + 64) - 4;
  v71 = result[9];
  v72 = result[8];
  while (1)
  {
    if (a3 >= v71)
    {
      if (a3 <= v70)
      {
        v19 = (a3 >> 22) & 0x3C0;
        v20 = 0x3FFFFFFF;
        HIDWORD(v21) = HIDWORD(a3);
        v12 = a4;
        v13 = v72;
      }

      else
      {
        v15 = v80[27];
        v16 = v80[28] + v70;
        v17 = v16 - a3 + (v15 >> 1);
        v12 = a4;
        v13 = v72;
        if (v17 < 1)
        {
          goto LABEL_36;
        }

        if (v17 >= v15)
        {
          LODWORD(v18) = 0x3FFFFFFF;
        }

        else
        {
          v18 = (v80[29] * v17) >> 32;
        }

        v20 = v68 | v18;
        v21 = v16 - 0x1000000;
        v19 = 448;
      }
    }

    else
    {
      v9 = v80[27];
      v10 = v71 - v80[28];
      v11 = a3 - v10 + (v9 >> 1);
      v12 = a4;
      v13 = v72;
      if (v11 < 1)
      {
        goto LABEL_36;
      }

      if (v11 >= v9)
      {
        LODWORD(v14) = 0x3FFFFFFF;
      }

      else
      {
        v14 = (v80[29] * v11) >> 32;
      }

      v20 = v68 | v14;
      v21 = v10 + 0x1000000;
      v19 = 512;
    }

    if (a2 >= v13)
    {
      if (a2 <= v69)
      {
        v26 = (a2 >> 26) & 0x3C;
        v25 = a2;
      }

      else
      {
        v27 = v80[24];
        v28 = v80[25] + v69;
        v29 = v28 - a2 + (v27 >> 1);
        if (v29 < 1)
        {
          goto LABEL_36;
        }

        if (v29 < v27)
        {
          v20 = ((v20 >> 15) * (((v80[26] * v29) >> 32) >> 15)) | v68;
        }

        v25 = v28 - 0x1000000;
        v26 = 28;
      }
    }

    else
    {
      v22 = v80[24];
      v23 = v13 - v80[25];
      v24 = a2 - v23 + (v22 >> 1);
      if (v24 < 1)
      {
        goto LABEL_36;
      }

      if (v24 < v22)
      {
        v20 = ((v20 >> 15) * (((v80[26] * v24) >> 32) >> 15)) | v68;
      }

      v25 = v23 + 0x1000000;
      v26 = 32;
    }

    if (v20 >= 0x400000)
    {
      break;
    }

LABEL_36:
    v35 = v12 - 1;
    a2 += v79;
    a3 += v78;
    ++v7;
    *++v73 = 0;
LABEL_37:
    a4 = v35;
    if (!v35)
    {
      return result;
    }
  }

  v30 = v75 + SHIDWORD(v21) * v76 + 4 * (v25 >> 32);
  v31 = v80[4];
  v32 = v77;
  if (v77 >= v30)
  {
    v32 = v30;
  }

  if (v32 < v31)
  {
    v32 = v80[4];
  }

  v33 = *v32;
  if (!v6)
  {
    goto LABEL_39;
  }

  v34 = *(v6 + (v26 | v19));
LABEL_51:
  v42 = v34 & 0xF;
  v43 = HIBYTE(v34) & 3;
  switch(v42)
  {
    case 1:
      v64 = (v30 + SBYTE1(v34) * v76);
      if (v77 < v64)
      {
        v64 = v77;
      }

      if (v64 >= v31)
      {
        v31 = v64;
      }

      v65 = interpolate_8888_21865[v43];
      v66 = v43 + 1;
      v58 = v33 - ((v65 & v33) >> v66);
      v63 = (v65 & *v31) >> v66;
LABEL_79:
      v33 = v58 + v63;
      break;
    case 2:
      v60 = (v30 + ((HIWORD(v34) << 56) >> 54));
      if (v77 < v60)
      {
        v60 = v77;
      }

      if (v60 >= v31)
      {
        v31 = v60;
      }

      v61 = (v34 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v57 = v61 + 1;
      v58 = v33 - ((v62 & v33) >> v57);
      v59 = v62 & *v31;
LABEL_73:
      v63 = v59 >> v57;
      goto LABEL_79;
    case 3:
      v44 = HIWORD(v34) << 56;
      v45 = (v30 + (v44 >> 54));
      if (v77 < v45)
      {
        v45 = v77;
      }

      if (v45 < v31)
      {
        v45 = v31;
      }

      v46 = *v45;
      v47 = (v30 + SBYTE1(v34) * v76);
      if (v77 >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v77;
      }

      if (v48 < v31)
      {
        v48 = v31;
      }

      v49 = *v48;
      v50 = (v47 + (v44 >> 54));
      if (v77 < v50)
      {
        v50 = v77;
      }

      if (v50 >= v31)
      {
        v31 = v50;
      }

      v51 = interpolate_8888_21865[v43];
      v52 = v43 + 1;
      v53 = v33 - ((v51 & v33) >> v52) + ((v51 & v49) >> v52);
      v54 = v46 - ((v51 & v46) >> v52) + ((v51 & *v31) >> v52);
      v55 = (v34 >> 28) & 3;
      v56 = interpolate_8888_21865[v55];
      v57 = v55 + 1;
      v58 = v53 - ((v53 & v56) >> v57);
      v59 = v54 & v56;
      goto LABEL_73;
  }

LABEL_39:
  v36 = 0;
  v37 = v20 >> 22;
  ++v7;
  v67 = v12;
  v38 = v12 - 1;
  a3 += v78;
  v39 = v70 - a3;
  a2 += v79;
  v40 = v69 - a2;
  while (1)
  {
    result = ARGB32(v7, v33 | v74);
    *(v73 + 1 + v36) = v37;
    if (v38 == v36)
    {
      return result;
    }

    if (((v39 | v40 | (a3 - v71) | (a2 - v72)) & 0x8000000000000000) != 0)
    {
      v73 += v36 + 1;
      v35 = ~v36 + v67;
      goto LABEL_37;
    }

    v30 = v75 + SHIDWORD(a3) * v76 + 4 * (a2 >> 32);
    v31 = v80[4];
    v41 = v77;
    if (v77 >= v30)
    {
      v41 = (v75 + SHIDWORD(a3) * v76 + 4 * (a2 >> 32));
    }

    if (v41 < v31)
    {
      v41 = v80[4];
    }

    v33 = *v41;
    if (v6)
    {
      v34 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v34 & 0xF) != 0)
      {
        v73 += v36 + 1;
        v12 = ~v36 + v67;
        v20 = -1;
        goto LABEL_51;
      }
    }

    ++v36;
    ++v7;
    a3 += v78;
    v39 -= v78;
    a2 += v79;
    v40 -= v79;
    LOBYTE(v37) = -1;
  }
}

unint64_t *ARGB32(unint64_t *result, int a2)
{
  HIDWORD(v3) = a2;
  LODWORD(v3) = a2;
  v2 = v3 >> 24;
  v4 = HIBYTE(v2);
  if (HIBYTE(v2) <= BYTE2(v2))
  {
    v4 = BYTE2(v2);
  }

  if (v4 <= BYTE1(v2))
  {
    v4 = BYTE1(v2);
  }

  *result = ((v2 - v4) | ((v4 - BYTE2(v2)) << 16) | ((v4 - HIBYTE(v2)) << 24) | ((v4 - BYTE1(v2)) << 8)) | (v2 << 32);
  return result;
}

unint64_t *cmyk32_sample_ARGB32(unint64_t *result, uint64_t a2, int64_t a3, int a4)
{
  v6 = result[22];
  v66 = result[10];
  v67 = result[11];
  v76 = result[14];
  v75 = result[15];
  v65 = *(result + 47);
  v7 = (result[19] - 8);
  v70 = result[18] - 1;
  if (result[5])
  {
    v8 = 0;
  }

  else
  {
    v8 = -16777216;
  }

  v71 = v8;
  v72 = result[4];
  v73 = *(result + 6);
  v77 = result;
  v74 = v72 + ((*(result + 65) - 1) * v73) + 4 * *(result + 64) - 4;
  v68 = result[9];
  v69 = result[8];
  while (1)
  {
    if (a3 >= v68)
    {
      if (a3 <= v67)
      {
        v19 = (a3 >> 22) & 0x3C0;
        v20 = 0x3FFFFFFF;
        HIDWORD(v21) = HIDWORD(a3);
        v12 = a4;
        v13 = v69;
      }

      else
      {
        v15 = v77[27];
        v16 = v77[28] + v67;
        v17 = v16 - a3 + (v15 >> 1);
        v12 = a4;
        v13 = v69;
        if (v17 < 1)
        {
          goto LABEL_36;
        }

        if (v17 >= v15)
        {
          LODWORD(v18) = 0x3FFFFFFF;
        }

        else
        {
          v18 = (v77[29] * v17) >> 32;
        }

        v20 = v65 | v18;
        v21 = v16 - 0x1000000;
        v19 = 448;
      }
    }

    else
    {
      v9 = v77[27];
      v10 = v68 - v77[28];
      v11 = a3 - v10 + (v9 >> 1);
      v12 = a4;
      v13 = v69;
      if (v11 < 1)
      {
        goto LABEL_36;
      }

      if (v11 >= v9)
      {
        LODWORD(v14) = 0x3FFFFFFF;
      }

      else
      {
        v14 = (v77[29] * v11) >> 32;
      }

      v20 = v65 | v14;
      v21 = v10 + 0x1000000;
      v19 = 512;
    }

    if (a2 >= v13)
    {
      if (a2 <= v66)
      {
        v26 = (a2 >> 26) & 0x3C;
        v25 = a2;
      }

      else
      {
        v27 = v77[24];
        v28 = v77[25] + v66;
        v29 = v28 - a2 + (v27 >> 1);
        if (v29 < 1)
        {
          goto LABEL_36;
        }

        if (v29 < v27)
        {
          v20 = ((v20 >> 15) * (((v77[26] * v29) >> 32) >> 15)) | v65;
        }

        v25 = v28 - 0x1000000;
        v26 = 28;
      }
    }

    else
    {
      v22 = v77[24];
      v23 = v13 - v77[25];
      v24 = a2 - v23 + (v22 >> 1);
      if (v24 < 1)
      {
        goto LABEL_36;
      }

      if (v24 < v22)
      {
        v20 = ((v20 >> 15) * (((v77[26] * v24) >> 32) >> 15)) | v65;
      }

      v25 = v23 + 0x1000000;
      v26 = 32;
    }

    if (v20 >= 0x400000)
    {
      break;
    }

LABEL_36:
    v35 = v12 - 1;
    a2 += v76;
    a3 += v75;
    ++v7;
    *++v70 = 0;
LABEL_37:
    a4 = v35;
    if (!v35)
    {
      return result;
    }
  }

  v30 = v72 + SHIDWORD(v21) * v73 + 4 * (v25 >> 32);
  v31 = v77[4];
  v32 = v74;
  if (v74 >= v30)
  {
    v32 = v30;
  }

  if (v32 < v31)
  {
    v32 = v77[4];
  }

  v33 = bswap32(*v32);
  if (!v6)
  {
    goto LABEL_39;
  }

  v34 = *(v6 + (v26 | v19));
LABEL_51:
  v42 = v34 & 0xF;
  v43 = HIBYTE(v34) & 3;
  switch(v42)
  {
    case 1:
      v61 = (v30 + SBYTE1(v34) * v73);
      if (v74 < v61)
      {
        v61 = v74;
      }

      if (v61 >= v31)
      {
        v31 = v61;
      }

      v62 = interpolate_8888_21865[v43];
      v63 = v43 + 1;
      v59 = v33 - ((v62 & v33) >> v63);
      v60 = (bswap32(*v31) & v62) >> v63;
LABEL_79:
      v33 = v59 + v60;
      break;
    case 2:
      v57 = (v30 + ((HIWORD(v34) << 56) >> 54));
      if (v74 < v57)
      {
        v57 = v74;
      }

      if (v57 >= v31)
      {
        v31 = v57;
      }

      v53 = bswap32(*v31);
      v54 = (v34 >> 28) & 3;
      v55 = interpolate_8888_21865[v54];
      v56 = v55 & v33;
LABEL_73:
      v58 = v54 + 1;
      v59 = v33 - (v56 >> v58);
      v60 = (v53 & v55) >> v58;
      goto LABEL_79;
    case 3:
      v44 = HIWORD(v34) << 56;
      v45 = (v30 + (v44 >> 54));
      if (v74 < v45)
      {
        v45 = v74;
      }

      if (v45 < v31)
      {
        v45 = v31;
      }

      v46 = bswap32(*v45);
      v47 = (v30 + SBYTE1(v34) * v73);
      if (v74 >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v74;
      }

      if (v48 < v31)
      {
        v48 = v31;
      }

      v49 = bswap32(*v48);
      v50 = (v47 + (v44 >> 54));
      if (v74 < v50)
      {
        v50 = v74;
      }

      if (v50 >= v31)
      {
        v31 = v50;
      }

      v51 = interpolate_8888_21865[v43];
      v52 = v43 + 1;
      v33 = v33 - ((v51 & v33) >> v52) + ((v51 & v49) >> v52);
      v53 = v46 - ((v51 & v46) >> v52) + ((bswap32(*v31) & v51) >> v52);
      v54 = (v34 >> 28) & 3;
      v55 = interpolate_8888_21865[v54];
      v56 = v33 & v55;
      goto LABEL_73;
  }

LABEL_39:
  v36 = 0;
  v37 = v20 >> 22;
  ++v7;
  v64 = v12;
  v38 = v12 - 1;
  a3 += v75;
  v39 = v67 - a3;
  a2 += v76;
  v40 = v66 - a2;
  while (1)
  {
    result = ARGB32(v7, v33 | v71);
    *(v70 + 1 + v36) = v37;
    if (v38 == v36)
    {
      return result;
    }

    if (((v39 | v40 | (a3 - v68) | (a2 - v69)) & 0x8000000000000000) != 0)
    {
      v70 += v36 + 1;
      v35 = ~v36 + v64;
      goto LABEL_37;
    }

    v30 = v72 + SHIDWORD(a3) * v73 + 4 * (a2 >> 32);
    v31 = v77[4];
    v41 = v74;
    if (v74 >= v30)
    {
      v41 = (v72 + SHIDWORD(a3) * v73 + 4 * (a2 >> 32));
    }

    if (v41 < v31)
    {
      v41 = v77[4];
    }

    v33 = bswap32(*v41);
    if (v6)
    {
      v34 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v34 & 0xF) != 0)
      {
        v70 += v36 + 1;
        v12 = ~v36 + v64;
        v20 = -1;
        goto LABEL_51;
      }
    }

    ++v36;
    ++v7;
    a3 += v75;
    v39 -= v75;
    a2 += v76;
    v40 -= v76;
    LOBYTE(v37) = -1;
  }
}

uint64_t cmyk32_sample_rgba32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v76 = *(result + 80);
  v78 = *(result + 88);
  v79 = *(result + 72);
  v6 = *(result + 112);
  v7 = *(result + 120);
  v8 = *(result + 152) - 8;
  v9 = *(result + 144) - 1;
  v11 = *(result + 32);
  v10 = *(result + 40);
  v75 = *(result + 188);
  v12 = v11 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v77 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v79)
    {
      if (a3 <= v78)
      {
        v21 = (a3 >> 22) & 0x3C0;
        v22 = 0x3FFFFFFF;
        HIDWORD(v23) = HIDWORD(a3);
        v24 = v77;
      }

      else
      {
        v17 = *(result + 216);
        v18 = *(result + 224) + v78;
        v19 = v18 - a3 + (v17 >> 1);
        if (v19 < 1)
        {
          goto LABEL_34;
        }

        if (v19 >= v17)
        {
          LODWORD(v20) = 0x3FFFFFFF;
        }

        else
        {
          v20 = (*(result + 232) * v19) >> 32;
        }

        v24 = v77;
        v22 = v75 | v20;
        v23 = v18 - 0x1000000;
        v21 = 448;
      }
    }

    else
    {
      v13 = *(result + 216);
      v14 = v79 - *(result + 224);
      v15 = a3 - v14 + (v13 >> 1);
      if (v15 < 1)
      {
        goto LABEL_34;
      }

      if (v15 >= v13)
      {
        LODWORD(v16) = 0x3FFFFFFF;
      }

      else
      {
        v16 = (*(result + 232) * v15) >> 32;
      }

      v24 = v77;
      v22 = v75 | v16;
      v23 = v14 + 0x1000000;
      v21 = 512;
    }

    if (a2 >= v24)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v24 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v22 = ((v22 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v75;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v6;
    a3 += v7;
    v8 += 8;
    *++v9 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v76)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v76;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v22 = ((v22 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v75;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v22 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v11 + SHIDWORD(v23) * v4;
  v34 = v28 >> 32;
  v35 = v33 + 4 * v34;
  v36 = *(result + 32);
  if (v12 >= v35)
  {
    v37 = (v33 + 4 * v34);
  }

  else
  {
    v37 = v12;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (!v5)
  {
    v40 = v76;
    goto LABEL_37;
  }

  v39 = *(v5 + (v29 | v21));
LABEL_58:
  v40 = v76;
  v50 = v39 & 0xF;
  v51 = HIBYTE(v39) & 3;
  switch(v50)
  {
    case 1:
      v72 = (v35 + SBYTE1(v39) * v4);
      if (v12 < v72)
      {
        v72 = v12;
      }

      if (v72 < v36)
      {
        v72 = v36;
      }

      v73 = interpolate_8888_21865[v51];
      v74 = v51 + 1;
      v66 = v38 - ((v73 & v38) >> v74);
      v71 = (v73 & *v72) >> v74;
LABEL_86:
      v38 = v66 + v71;
      break;
    case 2:
      v68 = (v35 + ((HIWORD(v39) << 56) >> 54));
      if (v12 < v68)
      {
        v68 = v12;
      }

      if (v68 < v36)
      {
        v68 = v36;
      }

      v69 = (v39 >> 28) & 3;
      v70 = interpolate_8888_21865[v69];
      v65 = v69 + 1;
      v66 = v38 - ((v70 & v38) >> v65);
      v67 = v70 & *v68;
LABEL_80:
      v71 = v67 >> v65;
      goto LABEL_86;
    case 3:
      v52 = HIWORD(v39) << 56;
      v53 = (v35 + (v52 >> 54));
      if (v12 < v53)
      {
        v53 = v12;
      }

      if (v53 < v36)
      {
        v53 = v36;
      }

      v54 = *v53;
      v55 = v35 + SBYTE1(v39) * v4;
      if (v12 >= v55)
      {
        v56 = (v35 + SBYTE1(v39) * v4);
      }

      else
      {
        v56 = v12;
      }

      if (v56 < v36)
      {
        v56 = v36;
      }

      v57 = *v56;
      v58 = (v55 + (v52 >> 54));
      if (v12 < v58)
      {
        v58 = v12;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v61 = v38 - ((v59 & v38) >> v60) + ((v59 & v57) >> v60);
      v62 = v54 - ((v59 & v54) >> v60) + ((v59 & *v58) >> v60);
      v63 = (v39 >> 28) & 3;
      v64 = interpolate_8888_21865[v63];
      v65 = v63 + 1;
      v66 = v61 - ((v61 & v64) >> v65);
      v67 = v62 & v64;
      goto LABEL_80;
  }

LABEL_37:
  v41 = 0;
  v42 = 0;
  v43 = v22 >> 22;
  a3 += v7;
  v44 = v78 - a3;
  a2 += v6;
  v45 = v40 - a2;
  while (1)
  {
    v46 = BYTE2(v38);
    if (HIBYTE(v38) > BYTE2(v38))
    {
      v46 = HIBYTE(v38);
    }

    if (v46 <= BYTE1(v38))
    {
      v46 = BYTE1(v38);
    }

    v47 = v10 ? v38 : 255;
    *(v8 + 8 + 8 * v42) = ((v47 - v46) | ((v46 - BYTE2(v38)) << 16) | ((v46 - HIBYTE(v38)) << 24) | ((v46 - BYTE1(v38)) << 8)) | (v47 << 32);
    *(v9 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v79) | (a2 - v77)) & 0x8000000000000000) != 0)
    {
      v9 += v42 + 1;
      v8 = v8 - v41 + 8;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v48 = v11 + SHIDWORD(a3) * v4;
    v35 = v48 + 4 * (a2 >> 32);
    v36 = *(result + 32);
    if (v12 >= v35)
    {
      v49 = (v48 + 4 * (a2 >> 32));
    }

    else
    {
      v49 = v12;
    }

    if (v49 < v36)
    {
      v49 = *(result + 32);
    }

    v38 = *v49;
    if (v5)
    {
      v39 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v9 += v42 + 1;
        v8 = v8 - v41 + 8;
        a4 += ~v42;
        v22 = -1;
        goto LABEL_58;
      }
    }

    ++v42;
    v41 -= 8;
    a3 += v7;
    v44 -= v7;
    a2 += v6;
    v45 -= v6;
    LOBYTE(v43) = -1;
  }
}

uint64_t cmyk32_sample_RGBA32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v74 = *(result + 80);
  v76 = *(result + 88);
  v77 = *(result + 72);
  v6 = *(result + 112);
  v7 = *(result + 120);
  v8 = *(result + 152) - 8;
  v9 = *(result + 144) - 1;
  v11 = *(result + 32);
  v10 = *(result + 40);
  v73 = *(result + 188);
  v12 = v11 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v75 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v77)
    {
      if (a3 <= v76)
      {
        v21 = (a3 >> 22) & 0x3C0;
        v22 = 0x3FFFFFFF;
        HIDWORD(v23) = HIDWORD(a3);
        v24 = v75;
      }

      else
      {
        v17 = *(result + 216);
        v18 = *(result + 224) + v76;
        v19 = v18 - a3 + (v17 >> 1);
        if (v19 < 1)
        {
          goto LABEL_34;
        }

        if (v19 >= v17)
        {
          LODWORD(v20) = 0x3FFFFFFF;
        }

        else
        {
          v20 = (*(result + 232) * v19) >> 32;
        }

        v24 = v75;
        v22 = v73 | v20;
        v23 = v18 - 0x1000000;
        v21 = 448;
      }
    }

    else
    {
      v13 = *(result + 216);
      v14 = v77 - *(result + 224);
      v15 = a3 - v14 + (v13 >> 1);
      if (v15 < 1)
      {
        goto LABEL_34;
      }

      if (v15 >= v13)
      {
        LODWORD(v16) = 0x3FFFFFFF;
      }

      else
      {
        v16 = (*(result + 232) * v15) >> 32;
      }

      v24 = v75;
      v22 = v73 | v16;
      v23 = v14 + 0x1000000;
      v21 = 512;
    }

    if (a2 >= v24)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v24 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v22 = ((v22 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v73;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v6;
    a3 += v7;
    v8 += 8;
    *++v9 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v74)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v74;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v22 = ((v22 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v73;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v22 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v11 + SHIDWORD(v23) * v4;
  v34 = v28 >> 32;
  v35 = v33 + 4 * v34;
  v36 = *(result + 32);
  if (v12 >= v35)
  {
    v37 = (v33 + 4 * v34);
  }

  else
  {
    v37 = v12;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37);
  if (!v5)
  {
    v40 = v74;
    goto LABEL_37;
  }

  v39 = *(v5 + (v29 | v21));
LABEL_58:
  v40 = v74;
  v50 = v39 & 0xF;
  v51 = HIBYTE(v39) & 3;
  switch(v50)
  {
    case 1:
      v70 = (v35 + SBYTE1(v39) * v4);
      if (v12 < v70)
      {
        v70 = v12;
      }

      if (v70 < v36)
      {
        v70 = v36;
      }

      v71 = interpolate_8888_21865[v51];
      v72 = v51 + 1;
      v66 = v38 - ((v71 & v38) >> v72);
      v69 = (bswap32(*v70) & v71) >> v72;
LABEL_86:
      v38 = v66 + v69;
      break;
    case 2:
      v67 = (v35 + ((HIWORD(v39) << 56) >> 54));
      if (v12 < v67)
      {
        v67 = v12;
      }

      if (v67 < v36)
      {
        v67 = v36;
      }

      v62 = bswap32(*v67);
      v68 = (v39 >> 28) & 3;
      v64 = interpolate_8888_21865[v68];
      v65 = v68 + 1;
      v66 = v38 - ((v64 & v38) >> v65);
LABEL_80:
      v69 = (v62 & v64) >> v65;
      goto LABEL_86;
    case 3:
      v52 = HIWORD(v39) << 56;
      v53 = (v35 + (v52 >> 54));
      if (v12 < v53)
      {
        v53 = v12;
      }

      if (v53 < v36)
      {
        v53 = v36;
      }

      v54 = bswap32(*v53);
      v55 = v35 + SBYTE1(v39) * v4;
      if (v12 >= v55)
      {
        v56 = (v35 + SBYTE1(v39) * v4);
      }

      else
      {
        v56 = v12;
      }

      if (v56 < v36)
      {
        v56 = v36;
      }

      v57 = bswap32(*v56);
      v58 = (v55 + (v52 >> 54));
      if (v12 < v58)
      {
        v58 = v12;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v61 = v38 - ((v59 & v38) >> v60) + ((v59 & v57) >> v60);
      v62 = v54 - ((v59 & v54) >> v60) + ((bswap32(*v58) & v59) >> v60);
      v63 = (v39 >> 28) & 3;
      v64 = interpolate_8888_21865[v63];
      v65 = v63 + 1;
      v66 = v61 - ((v61 & v64) >> v65);
      goto LABEL_80;
  }

LABEL_37:
  v41 = 0;
  v42 = 0;
  v43 = v22 >> 22;
  a3 += v7;
  v44 = v76 - a3;
  a2 += v6;
  v45 = v40 - a2;
  while (1)
  {
    v46 = BYTE2(v38);
    if (HIBYTE(v38) > BYTE2(v38))
    {
      v46 = HIBYTE(v38);
    }

    if (v46 <= BYTE1(v38))
    {
      v46 = BYTE1(v38);
    }

    v47 = v10 ? v38 : 255;
    *(v8 + 8 + 8 * v42) = ((v47 - v46) | ((v46 - BYTE2(v38)) << 16) | ((v46 - HIBYTE(v38)) << 24) | ((v46 - BYTE1(v38)) << 8)) | (v47 << 32);
    *(v9 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v77) | (a2 - v75)) & 0x8000000000000000) != 0)
    {
      v9 += v42 + 1;
      v8 = v8 - v41 + 8;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v48 = v11 + SHIDWORD(a3) * v4;
    v35 = v48 + 4 * (a2 >> 32);
    v36 = *(result + 32);
    if (v12 >= v35)
    {
      v49 = (v48 + 4 * (a2 >> 32));
    }

    else
    {
      v49 = v12;
    }

    if (v49 < v36)
    {
      v49 = *(result + 32);
    }

    v38 = bswap32(*v49);
    if (v5)
    {
      v39 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v9 += v42 + 1;
        v8 = v8 - v41 + 8;
        a4 += ~v42;
        v22 = -1;
        goto LABEL_58;
      }
    }

    ++v42;
    v41 -= 8;
    a3 += v7;
    v44 -= v7;
    a2 += v6;
    v45 -= v6;
    LOBYTE(v43) = -1;
  }
}

uint64_t cmyk32_sample_RGB24(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v74 = *(result + 88);
  v75 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v10 = *(result + 152) - 8;
  v11 = *(result + 144) - 1;
  v72 = *(result + 188);
  v12 = v4 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 3;
  v73 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      v16 = v75;
      if (a3 <= v74)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v73;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v74;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v25 = v73;
        v23 = v72 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v13 = *(result + 216);
      v14 = v7 - *(result + 224);
      v15 = a3 - v14 + (v13 >> 1);
      v16 = v75;
      if (v15 < 1)
      {
        goto LABEL_34;
      }

      if (v15 >= v13)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v15) >> 32;
      }

      v25 = v73;
      v23 = v72 | v17;
      v24 = v14 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v25 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v72;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 8;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v16)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v16;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v72;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v4 + SHIDWORD(v24) * v5;
  v35 = 3 * (v29 >> 32);
  v36 = v34 + v35;
  v37 = *(result + 32);
  if (v12 >= v34 + v35)
  {
    v38 = (v34 + v35);
  }

  else
  {
    v38 = v12;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = (v38[1] << 16) | (*v38 << 24) | (v38[2] << 8) | 0xFF;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v22));
LABEL_54:
  v50 = v40 & 0xF;
  v51 = HIBYTE(v40) & 3;
  switch(v50)
  {
    case 1:
      v69 = (v36 + SBYTE1(v40) * v5);
      if (v12 < v69)
      {
        v69 = v12;
      }

      if (v69 < v37)
      {
        v69 = v37;
      }

      v70 = interpolate_8888_21865[v51];
      v71 = v51 + 1;
      v67 = v39 - ((v70 & v39) >> v71);
      v68 = (((v69[1] << 16) | (*v69 << 24) | (v69[2] << 8) | 0xFF) & v70) >> v71;
LABEL_82:
      v39 = v67 + v68;
      break;
    case 2:
      v65 = (v36 + 3 * SBYTE2(v40));
      if (v12 < v65)
      {
        v65 = v12;
      }

      if (v65 < v37)
      {
        v65 = v37;
      }

      v61 = (v65[1] << 16) | (*v65 << 24) | (v65[2] << 8) | 0xFF;
      v62 = (v40 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v63 & v39;
LABEL_76:
      v66 = v62 + 1;
      v67 = v39 - (v64 >> v66);
      v68 = (v61 & v63) >> v66;
      goto LABEL_82;
    case 3:
      v52 = 3 * SBYTE2(v40);
      v53 = (v36 + v52);
      if (v12 < v36 + v52)
      {
        v53 = v12;
      }

      if (v53 < v37)
      {
        v53 = v37;
      }

      v54 = (v53[1] << 16) | (*v53 << 24) | (v53[2] << 8) | 0xFF;
      v55 = v36 + SBYTE1(v40) * v5;
      if (v12 >= v55)
      {
        v56 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v56 = v12;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = (v56[1] << 16) | (*v56 << 24) | (v56[2] << 8) | 0xFF;
      v58 = (v55 + v52);
      if (v12 < v58)
      {
        v58 = v12;
      }

      if (v58 < v37)
      {
        v58 = v37;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v39 = v39 - ((v59 & v39) >> v60) + ((v57 & v59) >> v60);
      v61 = v54 - ((v59 & v54) >> v60) + ((((v58[1] << 16) | (*v58 << 24) | (v58[2] << 8) | 0xFF) & v59) >> v60);
      v62 = (v40 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v39 & v63;
      goto LABEL_76;
  }

LABEL_36:
  v41 = 0;
  v42 = 0;
  v43 = v23 >> 22;
  a3 += v9;
  v44 = v74 - a3;
  a2 += v8;
  v45 = v16 - a2;
  while (1)
  {
    v46 = BYTE2(v39);
    if (HIBYTE(v39) > BYTE2(v39))
    {
      v46 = HIBYTE(v39);
    }

    if (v46 <= BYTE1(v39))
    {
      v46 = BYTE1(v39);
    }

    *(v10 + 8 + 8 * v42) = ((v39 - v46) | ((v46 - BYTE2(v39)) << 16) | ((v46 - HIBYTE(v39)) << 24) | ((v46 - BYTE1(v39)) << 8)) | (v39 << 32);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v7) | (a2 - v73)) & 0x8000000000000000) != 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 8;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v48 = 3 * (a2 >> 32);
    v36 = v47 + v48;
    v37 = *(result + 32);
    if (v12 >= v47 + v48)
    {
      v49 = (v47 + v48);
    }

    else
    {
      v49 = v12;
    }

    if (v49 < v37)
    {
      v49 = *(result + 32);
    }

    v39 = (v49[1] << 16) | (*v49 << 24) | (v49[2] << 8) | 0xFF;
    if (v6)
    {
      v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 8;
        a4 += ~v42;
        v23 = -1;
        v16 = v75;
        goto LABEL_54;
      }
    }

    ++v42;
    v41 -= 8;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}