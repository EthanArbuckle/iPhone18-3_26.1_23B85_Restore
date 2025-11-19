uint64_t CMYKf_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v132 = *(a2 + 5) - a5;
  }

  else
  {
    v132 = 0;
  }

  v9 = *(a2 + 2);
  v10 = a2[1];
  v131 = *a2;
  v130 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 9);
  v14 = *(a2 + 11);
  v15 = *(a2 + 7) + v14 * a4;
  v16 = *(result + 32);
  v17 = (v16 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3));
  v18 = 4 * (v8 != 0);
  if (*(result + 176))
  {
    v129 = *(a2 + 13);
    v128 = *(a2 + 15);
    v127 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v128 - v15) | (v15 - v129)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        v20 = v19 - 7 >= 9 ? -v11 : v11;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = v16 + (v15 >> v13) * v11;
      if (v131 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        result = v127;
        v23 = a5;
        while (1)
        {
          v24 = *(result - 8);
          v25 = *result;
          v26 = &v22[v24];
          if (v17 >= &v22[v24])
          {
            v27 = &v22[v24];
          }

          else
          {
            v27 = v17;
          }

          if (v16 > v27)
          {
            v27 = v16;
          }

          v28 = *v27;
          v29 = v25 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v40 = &v26[v20];
            if (v17 < &v26[v20])
            {
              v40 = v17;
            }

            if (v16 > v40)
            {
              v40 = v16;
            }

            v41 = BLEND8_21892[v21];
            v38 = v28 - ((v41 & v28) >> v21);
            v39 = (v41 & *v40) >> v21;
            goto LABEL_46;
          }

LABEL_47:
          v42 = __ROL4__(v28, v10);
          v43 = v42 | v6;
          v44 = *&_blt_float[HIBYTE(v42)];
          v45 = BYTE2(v42);
          v46 = BYTE1(v42);
          if (v9 >= 1.0)
          {
            v47 = *&_blt_float[v45];
            v48 = *&_blt_float[v46];
            v49 = *&_blt_float[v43];
          }

          else
          {
            v44 = v9 * v44;
            v47 = v9 * *&_blt_float[v45];
            v48 = v9 * *&_blt_float[v46];
            v49 = v9 * *&_blt_float[v43];
          }

          if (v44 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v44;
          }

          if (v48 > v50)
          {
            v50 = v48;
          }

          *v7 = v50 - v44;
          v7[1] = v50 - v47;
          v7[2] = v50 - v48;
          v7[3] = v49 - v50;
          if (v8)
          {
            *v8 = v49;
          }

          result += 16;
          v7 += 4;
          v8 = (v8 + v18);
          if (!--v23)
          {
            goto LABEL_110;
          }
        }

        v30 = &v26[v25 >> 4];
        if (v17 < v30)
        {
          v30 = v17;
        }

        if (v16 > v30)
        {
          v30 = v16;
        }

        v31 = *v30;
        if (v21)
        {
          v32 = &v26[v20];
          if (v17 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v17;
          }

          if (v16 > v33)
          {
            v33 = v16;
          }

          v34 = *v33;
          v35 = (v32 + (v25 >> 4));
          if (v17 < v35)
          {
            v35 = v17;
          }

          if (v16 > v35)
          {
            v35 = v16;
          }

          v36 = BLEND8_21892[v21];
          v28 = v28 - ((v36 & v28) >> v21) + ((v36 & v34) >> v21);
          v31 = v31 - ((v36 & v31) >> v21) + ((v36 & *v35) >> v21);
        }

        v37 = BLEND8_21892[*result & 0xFLL];
        v38 = v28 - ((v37 & v28) >> v29);
        v39 = (v37 & v31) >> v29;
LABEL_46:
        v28 = v38 + v39;
        goto LABEL_47;
      }

LABEL_110:
      v7 += 4 * v130;
      v15 += v14;
      v8 += v132;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_110;
    }

    v51 = v127;
    result = a5;
    while (1)
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      v54 = &v22[v52];
      if (v17 >= &v22[v52])
      {
        v55 = &v22[v52];
      }

      else
      {
        v55 = v17;
      }

      if (v16 > v55)
      {
        v55 = v16;
      }

      v56 = *v55;
      v57 = v53 & 0xF;
      if ((v53 & 0xF) != 0)
      {
        v58 = &v54[v53 >> 4];
        if (v17 < v58)
        {
          v58 = v17;
        }

        if (v16 > v58)
        {
          v58 = v16;
        }

        v59 = *v58;
        if (v21)
        {
          v60 = &v54[v20];
          if (v17 >= v60)
          {
            v61 = v60;
          }

          else
          {
            v61 = v17;
          }

          if (v16 > v61)
          {
            v61 = v16;
          }

          v62 = *v61;
          v63 = (v60 + (v53 >> 4));
          if (v17 < v63)
          {
            v63 = v17;
          }

          if (v16 > v63)
          {
            v63 = v16;
          }

          v64 = BLEND8_21892[v21];
          v56 = v56 - ((v64 & v56) >> v21) + ((v64 & v62) >> v21);
          v59 = v59 - ((v64 & v59) >> v21) + ((v64 & *v63) >> v21);
        }

        v65 = BLEND8_21892[*v51 & 0xF];
        v66 = v56 - ((v65 & v56) >> v57);
        v67 = (v65 & v59) >> v57;
      }

      else
      {
        if (!v21)
        {
          goto LABEL_90;
        }

        v68 = &v54[v20];
        if (v17 < &v54[v20])
        {
          v68 = v17;
        }

        if (v16 > v68)
        {
          v68 = v16;
        }

        v69 = BLEND8_21892[v21];
        v66 = v56 - ((v69 & v56) >> v21);
        v67 = (v69 & *v68) >> v21;
      }

      v56 = v66 + v67;
LABEL_90:
      v70 = __ROL4__(v56, v10);
      v71 = v70 | v6;
      v72 = *&_blt_float[HIBYTE(v70)];
      v73 = BYTE2(v70);
      v74 = BYTE1(v70);
      if (v9 >= 1.0)
      {
        v75 = *&_blt_float[v73];
        v76 = *&_blt_float[v74];
        v77 = *&_blt_float[v71];
      }

      else
      {
        v72 = v9 * v72;
        v75 = v9 * *&_blt_float[v73];
        v76 = v9 * *&_blt_float[v74];
        v77 = v9 * *&_blt_float[v71];
      }

      if (v72 <= v75)
      {
        v78 = v75;
      }

      else
      {
        v78 = v72;
      }

      if (v76 <= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = v76;
      }

      v80 = v79 - v72;
      v81 = v79 - v75;
      v82 = v79 - v76;
      v83 = v77 - v79;
      if (!v8)
      {
        if (v77 < 1.0)
        {
          if (v77 > 0.0)
          {
            v86 = 1.0 - v77;
            v87 = v7[1];
            *v7 = v80 + (*v7 * v86);
            v7[1] = v81 + (v87 * v86);
            v88 = v82 + (v7[2] * v86);
            v89 = v83 + (v7[3] * v86);
            v7[2] = v88;
            v7[3] = v89;
          }
        }

        else
        {
          *v7 = v80;
          v7[1] = v81;
          v7[2] = v82;
          v7[3] = v83;
        }

        goto LABEL_109;
      }

      if (v77 >= 1.0)
      {
        *v7 = v80;
        v7[1] = v81;
        v7[2] = v82;
        v7[3] = v83;
LABEL_108:
        *v8 = v77;
        goto LABEL_109;
      }

      if (v77 > 0.0)
      {
        v84 = v7[1];
        *v7 = v80 + (*v7 * (1.0 - v77));
        v7[1] = v81 + (v84 * (1.0 - v77));
        v85 = v7[3];
        v7[2] = v82 + (v7[2] * (1.0 - v77));
        v7[3] = v83 + (v85 * (1.0 - v77));
        v77 = v77 + (*v8 * (1.0 - v77));
        goto LABEL_108;
      }

LABEL_109:
      v51 += 2;
      v7 += 4;
      v8 = (v8 + v18);
      if (!--result)
      {
        goto LABEL_110;
      }
    }
  }

  v90 = v12 + 16 * a3;
  do
  {
    v91 = v16 + (v15 >> v13) * v11;
    if (v131 != 1)
    {
      result = v90;
      v104 = a5;
      if (a5 < 1)
      {
        goto LABEL_157;
      }

      while (1)
      {
        v105 = *result;
        result += 16;
        v106 = &v91[v105];
        if (v17 < &v91[v105])
        {
          v106 = v17;
        }

        if (v16 > v106)
        {
          v106 = v16;
        }

        v107 = __ROL4__(*v106, v10);
        v108 = v107 | v6;
        v109 = *&_blt_float[HIBYTE(v107)];
        v110 = BYTE2(v107);
        v111 = BYTE1(v107);
        if (v9 >= 1.0)
        {
          v112 = *&_blt_float[v110];
          v113 = *&_blt_float[v111];
          v114 = *&_blt_float[v108];
        }

        else
        {
          v109 = v9 * v109;
          v112 = v9 * *&_blt_float[v110];
          v113 = v9 * *&_blt_float[v111];
          v114 = v9 * *&_blt_float[v108];
        }

        if (v109 <= v112)
        {
          v115 = v112;
        }

        else
        {
          v115 = v109;
        }

        if (v113 <= v115)
        {
          v116 = v115;
        }

        else
        {
          v116 = v113;
        }

        v117 = v116 - v109;
        v118 = v116 - v112;
        v119 = v116 - v113;
        v120 = v114 - v116;
        if (!v8)
        {
          if (v114 < 1.0)
          {
            if (v114 > 0.0)
            {
              v123 = 1.0 - v114;
              v124 = v7[1];
              *v7 = v117 + (*v7 * v123);
              v7[1] = v118 + (v124 * v123);
              v125 = v119 + (v7[2] * v123);
              v126 = v120 + (v7[3] * v123);
              v7[2] = v125;
              v7[3] = v126;
            }
          }

          else
          {
            *v7 = v117;
            v7[1] = v118;
            v7[2] = v119;
            v7[3] = v120;
          }

          goto LABEL_156;
        }

        if (v114 >= 1.0)
        {
          break;
        }

        if (v114 > 0.0)
        {
          v121 = v7[1];
          *v7 = v117 + (*v7 * (1.0 - v114));
          v7[1] = v118 + (v121 * (1.0 - v114));
          v122 = v7[3];
          v7[2] = v119 + (v7[2] * (1.0 - v114));
          v7[3] = v120 + (v122 * (1.0 - v114));
          v114 = v114 + (*v8 * (1.0 - v114));
          goto LABEL_155;
        }

LABEL_156:
        v7 += 4;
        v8 = (v8 + v18);
        if (!--v104)
        {
          goto LABEL_157;
        }
      }

      *v7 = v117;
      v7[1] = v118;
      v7[2] = v119;
      v7[3] = v120;
LABEL_155:
      *v8 = v114;
      goto LABEL_156;
    }

    if (a5 >= 1)
    {
      result = v90;
      v92 = a5;
      do
      {
        v93 = *result;
        result += 16;
        v94 = &v91[v93];
        if (v17 < &v91[v93])
        {
          v94 = v17;
        }

        if (v16 > v94)
        {
          v94 = v16;
        }

        v95 = __ROL4__(*v94, v10);
        v96 = v95 | v6;
        v97 = *&_blt_float[HIBYTE(v95)];
        v98 = BYTE2(v95);
        v99 = BYTE1(v95);
        if (v9 >= 1.0)
        {
          v100 = *&_blt_float[v98];
          v101 = *&_blt_float[v99];
          v102 = *&_blt_float[v96];
        }

        else
        {
          v97 = v9 * v97;
          v100 = v9 * *&_blt_float[v98];
          v101 = v9 * *&_blt_float[v99];
          v102 = v9 * *&_blt_float[v96];
        }

        if (v97 <= v100)
        {
          v103 = v100;
        }

        else
        {
          v103 = v97;
        }

        if (v101 > v103)
        {
          v103 = v101;
        }

        *v7 = v103 - v97;
        v7[1] = v103 - v100;
        v7[2] = v103 - v101;
        v7[3] = v102 - v103;
        if (v8)
        {
          *v8 = v102;
        }

        v7 += 4;
        v8 = (v8 + v18);
        --v92;
      }

      while (v92);
    }

LABEL_157:
    v7 += 4 * v130;
    v15 += v14;
    v8 += v132;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKf_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v132 = *(a2 + 5) - a5;
  }

  else
  {
    v132 = 0;
  }

  v9 = *(a2 + 2);
  v10 = a2[1];
  v131 = *a2;
  v130 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 9);
  v14 = *(a2 + 11);
  v15 = *(a2 + 7) + v14 * a4;
  v16 = *(result + 32);
  v17 = (v16 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3));
  v18 = 4 * (v8 != 0);
  if (*(result + 176))
  {
    v129 = *(a2 + 13);
    v128 = *(a2 + 15);
    v127 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v128 - v15) | (v15 - v129)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        v20 = v19 - 7 >= 9 ? -v11 : v11;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = v16 + (v15 >> v13) * v11;
      if (v131 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        result = v127;
        v23 = a5;
        while (1)
        {
          v24 = *(result - 8);
          v25 = *result;
          v26 = &v22[v24];
          if (v17 >= &v22[v24])
          {
            v27 = &v22[v24];
          }

          else
          {
            v27 = v17;
          }

          if (v16 > v27)
          {
            v27 = v16;
          }

          v28 = bswap32(*v27);
          v29 = v25 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v40 = &v26[v20];
            if (v17 < &v26[v20])
            {
              v40 = v17;
            }

            if (v16 > v40)
            {
              v40 = v16;
            }

            v41 = BLEND8_21892[v21];
            v38 = v28 - ((v41 & v28) >> v21);
            v39 = (bswap32(*v40) & v41) >> v21;
            goto LABEL_46;
          }

LABEL_47:
          v42 = __ROL4__(v28, v10);
          v43 = v42 | v6;
          v44 = *&_blt_float[HIBYTE(v42)];
          v45 = BYTE2(v42);
          v46 = BYTE1(v42);
          if (v9 >= 1.0)
          {
            v47 = *&_blt_float[v45];
            v48 = *&_blt_float[v46];
            v49 = *&_blt_float[v43];
          }

          else
          {
            v44 = v9 * v44;
            v47 = v9 * *&_blt_float[v45];
            v48 = v9 * *&_blt_float[v46];
            v49 = v9 * *&_blt_float[v43];
          }

          if (v44 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v44;
          }

          if (v48 > v50)
          {
            v50 = v48;
          }

          *v7 = v50 - v44;
          v7[1] = v50 - v47;
          v7[2] = v50 - v48;
          v7[3] = v49 - v50;
          if (v8)
          {
            *v8 = v49;
          }

          result += 16;
          v7 += 4;
          v8 = (v8 + v18);
          if (!--v23)
          {
            goto LABEL_110;
          }
        }

        v30 = &v26[v25 >> 4];
        if (v17 < v30)
        {
          v30 = v17;
        }

        if (v16 > v30)
        {
          v30 = v16;
        }

        v31 = bswap32(*v30);
        if (v21)
        {
          v32 = &v26[v20];
          if (v17 >= v32)
          {
            v33 = v32;
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
          v35 = (v32 + (v25 >> 4));
          if (v17 < v35)
          {
            v35 = v17;
          }

          if (v16 > v35)
          {
            v35 = v16;
          }

          v36 = BLEND8_21892[v21];
          v28 = v28 - ((v36 & v28) >> v21) + ((v36 & v34) >> v21);
          v31 = v31 - ((v36 & v31) >> v21) + ((bswap32(*v35) & v36) >> v21);
        }

        v37 = BLEND8_21892[*result & 0xFLL];
        v38 = v28 - ((v37 & v28) >> v29);
        v39 = (v37 & v31) >> v29;
LABEL_46:
        v28 = v38 + v39;
        goto LABEL_47;
      }

LABEL_110:
      v7 += 4 * v130;
      v15 += v14;
      v8 += v132;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_110;
    }

    v51 = v127;
    result = a5;
    while (1)
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      v54 = &v22[v52];
      if (v17 >= &v22[v52])
      {
        v55 = &v22[v52];
      }

      else
      {
        v55 = v17;
      }

      if (v16 > v55)
      {
        v55 = v16;
      }

      v56 = bswap32(*v55);
      v57 = v53 & 0xF;
      if ((v53 & 0xF) != 0)
      {
        v58 = &v54[v53 >> 4];
        if (v17 < v58)
        {
          v58 = v17;
        }

        if (v16 > v58)
        {
          v58 = v16;
        }

        v59 = bswap32(*v58);
        if (v21)
        {
          v60 = &v54[v20];
          if (v17 >= v60)
          {
            v61 = v60;
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
          v63 = (v60 + (v53 >> 4));
          if (v17 < v63)
          {
            v63 = v17;
          }

          if (v16 > v63)
          {
            v63 = v16;
          }

          v64 = BLEND8_21892[v21];
          v56 = v56 - ((v64 & v56) >> v21) + ((v64 & v62) >> v21);
          v59 = v59 - ((v64 & v59) >> v21) + ((bswap32(*v63) & v64) >> v21);
        }

        v65 = BLEND8_21892[*v51 & 0xF];
        v66 = v56 - ((v65 & v56) >> v57);
        v67 = (v65 & v59) >> v57;
      }

      else
      {
        if (!v21)
        {
          goto LABEL_90;
        }

        v68 = &v54[v20];
        if (v17 < &v54[v20])
        {
          v68 = v17;
        }

        if (v16 > v68)
        {
          v68 = v16;
        }

        v69 = BLEND8_21892[v21];
        v66 = v56 - ((v69 & v56) >> v21);
        v67 = (bswap32(*v68) & v69) >> v21;
      }

      v56 = v66 + v67;
LABEL_90:
      v70 = __ROL4__(v56, v10);
      v71 = v70 | v6;
      v72 = *&_blt_float[HIBYTE(v70)];
      v73 = BYTE2(v70);
      v74 = BYTE1(v70);
      if (v9 >= 1.0)
      {
        v75 = *&_blt_float[v73];
        v76 = *&_blt_float[v74];
        v77 = *&_blt_float[v71];
      }

      else
      {
        v72 = v9 * v72;
        v75 = v9 * *&_blt_float[v73];
        v76 = v9 * *&_blt_float[v74];
        v77 = v9 * *&_blt_float[v71];
      }

      if (v72 <= v75)
      {
        v78 = v75;
      }

      else
      {
        v78 = v72;
      }

      if (v76 <= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = v76;
      }

      v80 = v79 - v72;
      v81 = v79 - v75;
      v82 = v79 - v76;
      v83 = v77 - v79;
      if (!v8)
      {
        if (v77 < 1.0)
        {
          if (v77 > 0.0)
          {
            v86 = 1.0 - v77;
            v87 = v7[1];
            *v7 = v80 + (*v7 * v86);
            v7[1] = v81 + (v87 * v86);
            v88 = v82 + (v7[2] * v86);
            v89 = v83 + (v7[3] * v86);
            v7[2] = v88;
            v7[3] = v89;
          }
        }

        else
        {
          *v7 = v80;
          v7[1] = v81;
          v7[2] = v82;
          v7[3] = v83;
        }

        goto LABEL_109;
      }

      if (v77 >= 1.0)
      {
        *v7 = v80;
        v7[1] = v81;
        v7[2] = v82;
        v7[3] = v83;
LABEL_108:
        *v8 = v77;
        goto LABEL_109;
      }

      if (v77 > 0.0)
      {
        v84 = v7[1];
        *v7 = v80 + (*v7 * (1.0 - v77));
        v7[1] = v81 + (v84 * (1.0 - v77));
        v85 = v7[3];
        v7[2] = v82 + (v7[2] * (1.0 - v77));
        v7[3] = v83 + (v85 * (1.0 - v77));
        v77 = v77 + (*v8 * (1.0 - v77));
        goto LABEL_108;
      }

LABEL_109:
      v51 += 2;
      v7 += 4;
      v8 = (v8 + v18);
      if (!--result)
      {
        goto LABEL_110;
      }
    }
  }

  v90 = v12 + 16 * a3;
  do
  {
    v91 = v16 + (v15 >> v13) * v11;
    if (v131 != 1)
    {
      result = v90;
      v104 = a5;
      if (a5 < 1)
      {
        goto LABEL_157;
      }

      while (1)
      {
        v105 = *result;
        result += 16;
        v106 = &v91[v105];
        if (v17 < &v91[v105])
        {
          v106 = v17;
        }

        if (v16 > v106)
        {
          v106 = v16;
        }

        v107 = __ROL4__(bswap32(*v106), v10);
        v108 = v107 | v6;
        v109 = *&_blt_float[HIBYTE(v107)];
        v110 = BYTE2(v107);
        v111 = BYTE1(v107);
        if (v9 >= 1.0)
        {
          v112 = *&_blt_float[v110];
          v113 = *&_blt_float[v111];
          v114 = *&_blt_float[v108];
        }

        else
        {
          v109 = v9 * v109;
          v112 = v9 * *&_blt_float[v110];
          v113 = v9 * *&_blt_float[v111];
          v114 = v9 * *&_blt_float[v108];
        }

        if (v109 <= v112)
        {
          v115 = v112;
        }

        else
        {
          v115 = v109;
        }

        if (v113 <= v115)
        {
          v116 = v115;
        }

        else
        {
          v116 = v113;
        }

        v117 = v116 - v109;
        v118 = v116 - v112;
        v119 = v116 - v113;
        v120 = v114 - v116;
        if (!v8)
        {
          if (v114 < 1.0)
          {
            if (v114 > 0.0)
            {
              v123 = 1.0 - v114;
              v124 = v7[1];
              *v7 = v117 + (*v7 * v123);
              v7[1] = v118 + (v124 * v123);
              v125 = v119 + (v7[2] * v123);
              v126 = v120 + (v7[3] * v123);
              v7[2] = v125;
              v7[3] = v126;
            }
          }

          else
          {
            *v7 = v117;
            v7[1] = v118;
            v7[2] = v119;
            v7[3] = v120;
          }

          goto LABEL_156;
        }

        if (v114 >= 1.0)
        {
          break;
        }

        if (v114 > 0.0)
        {
          v121 = v7[1];
          *v7 = v117 + (*v7 * (1.0 - v114));
          v7[1] = v118 + (v121 * (1.0 - v114));
          v122 = v7[3];
          v7[2] = v119 + (v7[2] * (1.0 - v114));
          v7[3] = v120 + (v122 * (1.0 - v114));
          v114 = v114 + (*v8 * (1.0 - v114));
          goto LABEL_155;
        }

LABEL_156:
        v7 += 4;
        v8 = (v8 + v18);
        if (!--v104)
        {
          goto LABEL_157;
        }
      }

      *v7 = v117;
      v7[1] = v118;
      v7[2] = v119;
      v7[3] = v120;
LABEL_155:
      *v8 = v114;
      goto LABEL_156;
    }

    if (a5 >= 1)
    {
      result = v90;
      v92 = a5;
      do
      {
        v93 = *result;
        result += 16;
        v94 = &v91[v93];
        if (v17 < &v91[v93])
        {
          v94 = v17;
        }

        if (v16 > v94)
        {
          v94 = v16;
        }

        v95 = __ROL4__(bswap32(*v94), v10);
        v96 = v95 | v6;
        v97 = *&_blt_float[HIBYTE(v95)];
        v98 = BYTE2(v95);
        v99 = BYTE1(v95);
        if (v9 >= 1.0)
        {
          v100 = *&_blt_float[v98];
          v101 = *&_blt_float[v99];
          v102 = *&_blt_float[v96];
        }

        else
        {
          v97 = v9 * v97;
          v100 = v9 * *&_blt_float[v98];
          v101 = v9 * *&_blt_float[v99];
          v102 = v9 * *&_blt_float[v96];
        }

        if (v97 <= v100)
        {
          v103 = v100;
        }

        else
        {
          v103 = v97;
        }

        if (v101 > v103)
        {
          v103 = v101;
        }

        *v7 = v103 - v97;
        v7[1] = v103 - v100;
        v7[2] = v103 - v101;
        v7[3] = v102 - v103;
        if (v8)
        {
          *v8 = v102;
        }

        v7 += 4;
        v8 = (v8 + v18);
        --v92;
      }

      while (v92);
    }

LABEL_157:
    v7 += 4 * v130;
    v15 += v14;
    v8 += v132;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKf_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v132 = *(a2 + 5) - a5;
  }

  else
  {
    v132 = 0;
  }

  v8 = *(a2 + 2);
  v9 = *a2;
  v10 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 9);
  v14 = *(a2 + 11);
  v15 = *(a2 + 7) + v14 * a4;
  v16 = *(a1 + 32);
  v17 = &v16[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  result = *(a1 + 176);
  v19 = 4 * (v7 != 0);
  if (result)
  {
    v131 = *(a2 + 13);
    v130 = *(a2 + 15);
    v129 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v130 - v15) | (v15 - v131)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        if (v20 - 7 >= 9)
        {
          v21 = -v11;
        }

        else
        {
          v21 = v11;
        }

        v22 = weights_21890[v20] & 0xF;
      }

      result = v15 >> v13;
      v23 = &v16[(v15 >> v13) * v11];
      if (v9 == 1)
      {
        if (a5 >= 1)
        {
          v24 = v129;
          v25 = a5;
          do
          {
            v26 = *(v24 - 1);
            v27 = *v24;
            v28 = &v23[v26];
            if (v17 >= &v23[v26])
            {
              v29 = &v23[v26];
            }

            else
            {
              v29 = v17;
            }

            if (v16 > v29)
            {
              v29 = v16;
            }

            v30 = (*v29 << 24) | (v29[1] << 16) | (v29[2] << 8);
            if ((v27 & 0xF) != 0)
            {
              v31 = &v28[v27 >> 4];
              if (v17 < v31)
              {
                v31 = v17;
              }

              if (v16 > v31)
              {
                v31 = v16;
              }

              v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
              if (v22)
              {
                if (v17 >= &v28[v21])
                {
                  v33 = &v28[v21];
                }

                else
                {
                  v33 = v17;
                }

                if (v16 > v33)
                {
                  v33 = v16;
                }

                v34 = &v28[v21 + (v27 >> 4)];
                if (v17 < v34)
                {
                  v34 = v17;
                }

                if (v16 > v34)
                {
                  v34 = v16;
                }

                v35 = BLEND8_21892[v22];
                v30 = v30 - ((v35 & v30) >> v22) + ((v35 & ((*v33 << 24) | (v33[1] << 16) | (v33[2] << 8))) >> v22);
                v32 = v32 - ((v35 & v32) >> v22) + ((((*v34 << 24) | (v34[1] << 16) | (v34[2] << 8)) & v35) >> v22);
              }

              v30 = v30 - ((BLEND8_21892[*v24 & 0xF] & v30) >> (*v24 & 0xF)) + ((BLEND8_21892[*v24 & 0xF] & v32) >> (*v24 & 0xF));
            }

            else if (v22)
            {
              v36 = &v28[v21];
              if (v17 < &v28[v21])
              {
                v36 = v17;
              }

              if (v16 > v36)
              {
                v36 = v16;
              }

              v30 = v30 - ((BLEND8_21892[v22] & v30) >> v22) + ((((*v36 << 24) | (v36[1] << 16) | (v36[2] << 8)) & BLEND8_21892[v22]) >> v22);
            }

            v37 = *&_blt_float[HIBYTE(v30)];
            result = BYTE1(v30);
            if (v8 >= 1.0)
            {
              v47 = *&_blt_float[BYTE2(v30)];
              v48 = *&_blt_float[BYTE1(v30)];
              if (v37 <= v47)
              {
                v49 = *&_blt_float[BYTE2(v30)];
              }

              else
              {
                v49 = *&_blt_float[HIBYTE(v30)];
              }

              if (v48 > v49)
              {
                v49 = *&_blt_float[BYTE1(v30)];
              }

              v42 = v49 - v37;
              v43 = v49 - v47;
              v44 = v49 - v48;
              v46 = 1.0;
              v45 = 1.0 - v49;
            }

            else
            {
              v38 = v8 * v37;
              v39 = v8 * *&_blt_float[BYTE2(v30)];
              v40 = v8 * *&_blt_float[BYTE1(v30)];
              if (v38 <= v39)
              {
                v41 = v8 * *&_blt_float[BYTE2(v30)];
              }

              else
              {
                v41 = v38;
              }

              if (v40 > v41)
              {
                v41 = v8 * *&_blt_float[BYTE1(v30)];
              }

              v42 = v41 - v38;
              v43 = v41 - v39;
              v44 = v41 - v40;
              v45 = v8 - v41;
              v46 = v8;
            }

            *v6 = v42;
            v6[1] = v43;
            v6[2] = v44;
            v6[3] = v45;
            if (v7)
            {
              *v7 = v46;
            }

            v24 += 2;
            v6 += 4;
            v7 = (v7 + v19);
            --v25;
          }

          while (v25);
        }

        goto LABEL_116;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_116:
      v6 += 4 * v10;
      v15 += v14;
      v7 += v132;
      if (!--a6)
      {
        return result;
      }
    }

    v50 = v129;
    v51 = a5;
    while (1)
    {
      v52 = *(v50 - 1);
      v53 = *v50;
      v54 = &v23[v52];
      if (v17 >= &v23[v52])
      {
        v55 = &v23[v52];
      }

      else
      {
        v55 = v17;
      }

      if (v16 > v55)
      {
        v55 = v16;
      }

      v56 = (*v55 << 24) | (v55[1] << 16) | (v55[2] << 8);
      if ((v53 & 0xF) != 0)
      {
        v57 = &v54[v53 >> 4];
        if (v17 < v57)
        {
          v57 = v17;
        }

        if (v16 > v57)
        {
          v57 = v16;
        }

        v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
        if (v22)
        {
          if (v17 >= &v54[v21])
          {
            v59 = &v54[v21];
          }

          else
          {
            v59 = v17;
          }

          if (v16 > v59)
          {
            v59 = v16;
          }

          v60 = (*v59 << 24) | (v59[1] << 16) | (v59[2] << 8);
          v61 = &v54[v21 + (v53 >> 4)];
          if (v17 < v61)
          {
            v61 = v17;
          }

          if (v16 > v61)
          {
            v61 = v16;
          }

          v62 = BLEND8_21892[v22];
          v56 = v56 - ((v62 & v56) >> v22) + ((v62 & v60) >> v22);
          v58 = v58 - ((v62 & v58) >> v22) + ((((*v61 << 24) | (v61[1] << 16) | (v61[2] << 8)) & v62) >> v22);
        }

        v56 = v56 - ((BLEND8_21892[*v50 & 0xF] & v56) >> (*v50 & 0xF)) + ((BLEND8_21892[*v50 & 0xF] & v58) >> (*v50 & 0xF));
      }

      else if (v22)
      {
        v63 = &v54[v21];
        if (v17 < &v54[v21])
        {
          v63 = v17;
        }

        if (v16 > v63)
        {
          v63 = v16;
        }

        v56 = v56 - ((BLEND8_21892[v22] & v56) >> v22) + ((((*v63 << 24) | (v63[1] << 16) | (v63[2] << 8)) & BLEND8_21892[v22]) >> v22);
      }

      v64 = *&_blt_float[HIBYTE(v56)];
      result = BYTE1(v56);
      if (v8 >= 1.0)
      {
        v75 = *&_blt_float[BYTE2(v56)];
        v76 = *&_blt_float[BYTE1(v56)];
        if (v64 <= v75)
        {
          v77 = *&_blt_float[BYTE2(v56)];
        }

        else
        {
          v77 = *&_blt_float[HIBYTE(v56)];
        }

        if (v76 <= v77)
        {
          v78 = v77;
        }

        else
        {
          v78 = *&_blt_float[BYTE1(v56)];
        }

        v70 = v78 - v64;
        v71 = v78 - v75;
        v72 = v78 - v76;
        v74 = 1.0;
        v73 = 1.0 - v78;
      }

      else
      {
        v65 = v8 * v64;
        v66 = v8 * *&_blt_float[BYTE2(v56)];
        v67 = v8 * *&_blt_float[BYTE1(v56)];
        if (v65 <= v66)
        {
          v68 = v8 * *&_blt_float[BYTE2(v56)];
        }

        else
        {
          v68 = v65;
        }

        if (v67 <= v68)
        {
          v69 = v68;
        }

        else
        {
          v69 = v8 * *&_blt_float[BYTE1(v56)];
        }

        v70 = v69 - v65;
        v71 = v69 - v66;
        v72 = v69 - v67;
        v73 = v8 - v69;
        v74 = v8;
      }

      if (v7)
      {
        if (v74 < 1.0)
        {
          if (v74 > 0.0)
          {
            v79 = v6[1];
            *v6 = v70 + (*v6 * (1.0 - v74));
            v6[1] = v71 + (v79 * (1.0 - v74));
            v80 = v6[3];
            v6[2] = v72 + (v6[2] * (1.0 - v74));
            v6[3] = v73 + (v80 * (1.0 - v74));
            *v7 = v74 + (*v7 * (1.0 - v74));
          }
        }

        else
        {
          *v6 = v70;
          v6[1] = v71;
          v6[2] = v72;
          v6[3] = v73;
          *v7 = v74;
        }

        goto LABEL_115;
      }

      if (v74 >= 1.0)
      {
        break;
      }

      if (v74 > 0.0)
      {
        v81 = 1.0 - v74;
        v82 = v6[1];
        *v6 = v70 + (*v6 * v81);
        v6[1] = v71 + (v82 * v81);
        v72 = v72 + (v6[2] * v81);
        v73 = v73 + (v6[3] * v81);
        goto LABEL_114;
      }

LABEL_115:
      v50 += 2;
      v6 += 4;
      v7 = (v7 + v19);
      if (!--v51)
      {
        goto LABEL_116;
      }
    }

    *v6 = v70;
    v6[1] = v71;
LABEL_114:
    v6[2] = v72;
    v6[3] = v73;
    goto LABEL_115;
  }

  v83 = (v12 + 16 * a3);
  do
  {
    v84 = &v16[(v15 >> v13) * v11];
    if (v9 != 1)
    {
      v105 = v83;
      v106 = a5;
      if (a5 < 1)
      {
        goto LABEL_176;
      }

      while (1)
      {
        v107 = *v105;
        v105 += 2;
        v108 = &v84[v107];
        if (v17 < &v84[v107])
        {
          v108 = v17;
        }

        if (v16 > v108)
        {
          v108 = v16;
        }

        v109 = v108[1];
        result = v108[2];
        v110 = *&_blt_float[*v108];
        if (v8 >= 1.0)
        {
          v121 = *&_blt_float[v109];
          v122 = *&_blt_float[result];
          if (v110 <= v121)
          {
            v123 = *&_blt_float[v109];
          }

          else
          {
            v123 = *&_blt_float[*v108];
          }

          if (v122 <= v123)
          {
            v124 = v123;
          }

          else
          {
            v124 = *&_blt_float[result];
          }

          v116 = v124 - v110;
          v117 = v124 - v121;
          v118 = v124 - v122;
          v120 = 1.0;
          v119 = 1.0 - v124;
        }

        else
        {
          v111 = v8 * v110;
          v112 = v8 * *&_blt_float[v109];
          v113 = v8 * *&_blt_float[result];
          if (v111 <= v112)
          {
            v114 = v8 * *&_blt_float[v109];
          }

          else
          {
            v114 = v111;
          }

          if (v113 <= v114)
          {
            v115 = v114;
          }

          else
          {
            v115 = v8 * *&_blt_float[result];
          }

          v116 = v115 - v111;
          v117 = v115 - v112;
          v118 = v115 - v113;
          v119 = v8 - v115;
          v120 = v8;
        }

        if (v7)
        {
          if (v120 < 1.0)
          {
            if (v120 > 0.0)
            {
              v125 = v6[1];
              *v6 = v116 + (*v6 * (1.0 - v120));
              v6[1] = v117 + (v125 * (1.0 - v120));
              v126 = v6[3];
              v6[2] = v118 + (v6[2] * (1.0 - v120));
              v6[3] = v119 + (v126 * (1.0 - v120));
              *v7 = v120 + (*v7 * (1.0 - v120));
            }
          }

          else
          {
            *v6 = v116;
            v6[1] = v117;
            v6[2] = v118;
            v6[3] = v119;
            *v7 = v120;
          }

          goto LABEL_175;
        }

        if (v120 >= 1.0)
        {
          break;
        }

        if (v120 > 0.0)
        {
          v127 = 1.0 - v120;
          v128 = v6[1];
          *v6 = v116 + (*v6 * v127);
          v6[1] = v117 + (v128 * v127);
          v118 = v118 + (v6[2] * v127);
          v119 = v119 + (v6[3] * v127);
          goto LABEL_174;
        }

LABEL_175:
        v6 += 4;
        v7 = (v7 + v19);
        if (!--v106)
        {
          goto LABEL_176;
        }
      }

      *v6 = v116;
      v6[1] = v117;
LABEL_174:
      v6[2] = v118;
      v6[3] = v119;
      goto LABEL_175;
    }

    if (a5 >= 1)
    {
      v85 = v83;
      v86 = a5;
      do
      {
        v87 = *v85;
        v85 += 2;
        v88 = &v84[v87];
        if (v17 < &v84[v87])
        {
          v88 = v17;
        }

        if (v16 > v88)
        {
          v88 = v16;
        }

        v89 = v88[1];
        result = v88[2];
        v90 = *&_blt_float[*v88];
        if (v8 >= 1.0)
        {
          v101 = *&_blt_float[v89];
          v102 = *&_blt_float[result];
          if (v90 <= v101)
          {
            v103 = *&_blt_float[v89];
          }

          else
          {
            v103 = *&_blt_float[*v88];
          }

          if (v102 <= v103)
          {
            v104 = v103;
          }

          else
          {
            v104 = *&_blt_float[result];
          }

          v96 = v104 - v90;
          v97 = v104 - v101;
          v98 = v104 - v102;
          v100 = 1.0;
          v99 = 1.0 - v104;
        }

        else
        {
          v91 = v8 * v90;
          v92 = v8 * *&_blt_float[v89];
          v93 = v8 * *&_blt_float[result];
          if (v91 <= v92)
          {
            v94 = v8 * *&_blt_float[v89];
          }

          else
          {
            v94 = v91;
          }

          if (v93 <= v94)
          {
            v95 = v94;
          }

          else
          {
            v95 = v8 * *&_blt_float[result];
          }

          v96 = v95 - v91;
          v97 = v95 - v92;
          v98 = v95 - v93;
          v99 = v8 - v95;
          v100 = v8;
        }

        *v6 = v96;
        v6[1] = v97;
        v6[2] = v98;
        v6[3] = v99;
        if (v7)
        {
          *v7 = v100;
        }

        v6 += 4;
        v7 = (v7 + v19);
        --v86;
      }

      while (v86);
    }

LABEL_176:
    v6 += 4 * v10;
    v15 += v14;
    v7 += v132;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKf_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, double a7, int32x4_t _Q1, float32x2_t a9, double a10, double a11)
{
  v12 = *(a2 + 2);
  v13 = *(a2 + 4);
  if (v13)
  {
    v14 = *(a2 + 5) - a5;
  }

  else
  {
    v14 = 0;
  }

  LODWORD(a7) = a2[2];
  v15 = *a2;
  v16 = *(a2 + 3) - a5;
  v17 = *(a2 + 17);
  v18 = *(a2 + 18);
  v19 = *(a2 + 9);
  v20 = *(a2 + 11);
  v21 = *(a2 + 7) + v20 * a4;
  v22 = *(a1 + 32);
  v23 = &v22[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v24 = 4 * (v13 != 0);
  __asm { FMOV            V1.2S, #1.0 }

  if (*(a1 + 176))
  {
    v88 = *(a2 + 15);
    v89 = *(a2 + 13);
    a9.i32[0] = 1.0;
    if (*&a7 >= 1.0)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = *(a2 + 2);
    }

    *&a11 = 1.0 - v29;
    v30 = vdupq_lane_s32(*&a11, 0);
    v87 = v18 + 16 * a3 + 8;
    v31 = vcltz_s32(vshl_n_s32(vdup_n_s32(*&a7 < 1.0), 0x1FuLL));
    v32 = vdup_lane_s32(vcgt_f32(a9, *&a7), 0);
    while (1)
    {
      if (((v88 - v21) | (v21 - v89)) < 0)
      {
        v35 = 0;
        v34 = 0;
      }

      else
      {
        v33 = ((v21 & ~(-1 << v19)) >> (v19 - 4)) & 0xF;
        if (v33 - 7 >= 9)
        {
          v34 = -v17;
        }

        else
        {
          v34 = v17;
        }

        v35 = weights_21890[v33] & 0xF;
      }

      result = v21 >> v19;
      v37 = &v22[(v21 >> v19) * v17];
      if (v15 == 1)
      {
        if (a5 >= 1)
        {
          v38 = v87;
          v39 = a5;
          do
          {
            v40 = *(v38 - 1);
            v41 = *v38;
            v42 = &v37[v40];
            if (v23 >= &v37[v40])
            {
              v43 = &v37[v40];
            }

            else
            {
              v43 = v23;
            }

            if (v22 > v43)
            {
              v43 = v22;
            }

            v44 = *v43;
            if ((v41 & 0xF) != 0)
            {
              v45 = &v42[v41 >> 4];
              if (v23 < v45)
              {
                v45 = v23;
              }

              if (v22 > v45)
              {
                v45 = v22;
              }

              v46 = *v45;
              if (v35)
              {
                v47 = &v42[v34];
                if (v23 >= v47)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v23;
                }

                if (v22 > v48)
                {
                  v48 = v22;
                }

                v49 = *v48;
                v50 = &v47[v41 >> 4];
                if (v23 < v50)
                {
                  v50 = v23;
                }

                if (v22 > v50)
                {
                  v50 = v22;
                }

                v51 = BLEND8_21892[v35];
                v44 = v44 - ((v51 & v44) >> v35) + ((v51 & v49) >> v35);
                v46 = v46 - ((v51 & v46) >> v35) + ((v51 & *v50) >> v35);
              }

              v44 = v44 - ((BLEND8_21892[*v38 & 0xF] & v44) >> (*v38 & 0xF)) + ((BLEND8_21892[*v38 & 0xF] & v46) >> (*v38 & 0xF));
            }

            else if (v35)
            {
              v52 = &v42[v34];
              if (v23 < &v42[v34])
              {
                v52 = v23;
              }

              if (v22 > v52)
              {
                v52 = v22;
              }

              v44 = v44 - ((BLEND8_21892[v35] & v44) >> v35) + ((BLEND8_21892[v35] & *v52) >> v35);
            }

            result = v44;
            v11.i32[0] = _blt_float[v44];
            *v11.f32 = vsub_f32(__PAIR64__(_Q1.u32[1], v11.u32[0]), vdup_lane_s32(*v11.f32, 0));
            *v11.f32 = vbsl_s8(v31, vmul_n_f32(*v11.f32, *&a7), *v11.f32);
            v53 = vzip1q_s32(v11, v11);
            v53.i32[2] = v11.i32[0];
            *v12 = v53;
            if (v13)
            {
              *v13 = v29;
            }

            v38 += 2;
            ++v12;
            v13 = (v13 + v24);
            --v39;
          }

          while (v39);
        }

        goto LABEL_90;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_90:
      v12 += v16;
      v21 += v20;
      v13 += v14;
      if (!--a6)
      {
        return result;
      }
    }

    v54 = v87;
    v55 = a5;
    while (1)
    {
      v56 = *(v54 - 1);
      v57 = *v54;
      v58 = &v37[v56];
      if (v23 >= &v37[v56])
      {
        v59 = &v37[v56];
      }

      else
      {
        v59 = v23;
      }

      if (v22 > v59)
      {
        v59 = v22;
      }

      v60 = *v59;
      if ((v57 & 0xF) != 0)
      {
        v61 = &v58[v57 >> 4];
        if (v23 < v61)
        {
          v61 = v23;
        }

        if (v22 > v61)
        {
          v61 = v22;
        }

        v62 = *v61;
        if (v35)
        {
          if (v23 >= &v58[v34])
          {
            v63 = &v58[v34];
          }

          else
          {
            v63 = v23;
          }

          if (v22 > v63)
          {
            v63 = v22;
          }

          v64 = *v63;
          v65 = &v58[v34 + (v57 >> 4)];
          if (v23 < v65)
          {
            v65 = v23;
          }

          if (v22 > v65)
          {
            v65 = v22;
          }

          v66 = BLEND8_21892[v35];
          v60 = v60 - ((v66 & v60) >> v35) + ((v66 & v64) >> v35);
          v62 = v62 - ((v66 & v62) >> v35) + ((v66 & *v65) >> v35);
        }

        v60 = v60 - ((BLEND8_21892[*v54 & 0xF] & v60) >> (*v54 & 0xF)) + ((BLEND8_21892[*v54 & 0xF] & v62) >> (*v54 & 0xF));
      }

      else if (v35)
      {
        v67 = &v58[v34];
        if (v23 < &v58[v34])
        {
          v67 = v23;
        }

        if (v22 > v67)
        {
          v67 = v22;
        }

        v60 = v60 - ((BLEND8_21892[v35] & v60) >> v35) + ((BLEND8_21892[v35] & *v67) >> v35);
      }

      result = v60;
      v11.i32[0] = _blt_float[v60];
      v68 = _Q1;
      v68.i32[0] = v11.i32[0];
      v69 = vsub_f32(*v68.i8, vdup_lane_s32(*v11.f32, 0));
      *v68.i8 = vbsl_s8(v32, vmul_n_f32(v69, *&a7), v69);
      v11 = vzip1q_s32(v68, v68);
      v11.i32[2] = v68.i32[0];
      if (v13)
      {
        if (v29 < 1.0)
        {
          if (v29 > 0.0)
          {
            v11 = vmlaq_f32(v11, v30, *v12);
            *v12 = v11;
            *v13 = v29 + (*v13 * *&a11);
          }
        }

        else
        {
          *v12 = v11;
          *v13 = v29;
        }

        goto LABEL_89;
      }

      if (v29 >= 1.0)
      {
        goto LABEL_88;
      }

      if (v29 > 0.0)
      {
        break;
      }

LABEL_89:
      v54 += 2;
      ++v12;
      v13 = (v13 + v24);
      if (!--v55)
      {
        goto LABEL_90;
      }
    }

    v11 = vmlaq_f32(v11, v30, *v12);
LABEL_88:
    *v12 = v11;
    goto LABEL_89;
  }

  a9.i32[0] = 1.0;
  if (*&a7 >= 1.0)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = *(a2 + 2);
  }

  *&a11 = 1.0 - v70;
  v71 = vdupq_lane_s32(*&a11, 0);
  v72 = (v18 + 16 * a3);
  v73 = vcltz_s32(vshl_n_s32(vdup_n_s32(*&a7 < 1.0), 0x1FuLL));
  v74 = vdup_lane_s32(vcgt_f32(a9, *&a7), 0);
  do
  {
    result = v21 >> v19;
    v75 = &v22[(v21 >> v19) * v17];
    if (v15 != 1)
    {
      v81 = v72;
      v82 = a5;
      if (a5 < 1)
      {
        goto LABEL_122;
      }

      while (1)
      {
        v83 = *v81;
        v81 += 2;
        v84 = &v75[v83];
        if (v23 < &v75[v83])
        {
          v84 = v23;
        }

        if (v22 > v84)
        {
          v84 = v22;
        }

        result = *v84;
        v11.i32[0] = _blt_float[result];
        v85 = _Q1;
        v85.i32[0] = v11.i32[0];
        v86 = vsub_f32(*v85.i8, vdup_lane_s32(*v11.f32, 0));
        *v85.i8 = vbsl_s8(v74, vmul_n_f32(v86, *&a7), v86);
        v11 = vzip1q_s32(v85, v85);
        v11.i32[2] = v85.i32[0];
        if (v13)
        {
          if (v70 < 1.0)
          {
            if (v70 > 0.0)
            {
              v11 = vmlaq_f32(v11, v71, *v12);
              *v12 = v11;
              *v13 = v70 + (*v13 * *&a11);
            }
          }

          else
          {
            *v12 = v11;
            *v13 = v70;
          }

          goto LABEL_121;
        }

        if (v70 >= 1.0)
        {
          goto LABEL_120;
        }

        if (v70 > 0.0)
        {
          break;
        }

LABEL_121:
        ++v12;
        v13 = (v13 + v24);
        if (!--v82)
        {
          goto LABEL_122;
        }
      }

      v11 = vmlaq_f32(v11, v71, *v12);
LABEL_120:
      *v12 = v11;
      goto LABEL_121;
    }

    if (a5 >= 1)
    {
      v76 = v72;
      v77 = a5;
      do
      {
        v78 = *v76;
        v76 += 2;
        v79 = &v75[v78];
        if (v23 < &v75[v78])
        {
          v79 = v23;
        }

        if (v22 > v79)
        {
          v79 = v22;
        }

        result = *v79;
        v11.i32[0] = _blt_float[result];
        *v11.f32 = vsub_f32(__PAIR64__(_Q1.u32[1], v11.u32[0]), vdup_lane_s32(*v11.f32, 0));
        *v11.f32 = vbsl_s8(v73, vmul_n_f32(*v11.f32, *&a7), *v11.f32);
        v80 = vzip1q_s32(v11, v11);
        v80.i32[2] = v11.i32[0];
        *v12 = v80;
        if (v13)
        {
          *v13 = v70;
        }

        ++v12;
        v13 = (v13 + v24);
        --v77;
      }

      while (v77);
    }

LABEL_122:
    v12 += v16;
    v21 += v20;
    v13 += v14;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKf_shade(uint64_t a1, __n128 a2)
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

  if ((*v5 & 0xF000000) != 0x4000000)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 16))
  {
    v12 = CMYKf_shade_radial_CMYK;
  }

  else if (*(v5 + 24))
  {
    v12 = CMYKf_shade_conic_CMYK;
  }

  else if (v16 < 2)
  {
    v12 = CMYKf_shade_axial_CMYK;
  }

  else
  {
    v12 = CMYKf_shade_custom_CMYK;
  }

  v13 = v12;
LABEL_22:
  v14 = *v7;
  v15 = v14;
  CMYKf_image_mark(v6, &v13, v9, v11);
  if (v17 && (v17 < &v19 || v20 < v17))
  {
    free(v17);
  }

  return 1;
}

void CMYKf_shade_axial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 272);
  v7 = *(a1 + 296) + ((*(a1 + 288) * (v6[1] * a3)) + (v5 * (v6[1] * a2)));
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  v10 = *(a1 + 304);
  v11 = *(a1 + 308);
  LODWORD(v12) = *(a1 + 320);
  v13 = *(a1 + 324);
  v16 = a1 + 144;
  v14 = *(a1 + 144);
  v15 = *(v16 + 8);
  v17 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v18 = *(a1 + 392);
  }

  else
  {
    v18 = v6;
  }

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  if (v19)
  {
    v6 = v19;
  }

  if (v5 != 0.0)
  {
    for (i = (v15 + 16); ; i = (i + 20))
    {
      LODWORD(v23) = v12;
      if (v7 >= v10)
      {
        LODWORD(v23) = v13;
        if (v7 <= v11)
        {
          LODWORD(v23) = (v9 * (v7 - v8));
        }
      }

      if ((v23 & 0x80000000) != 0)
      {
        if (!v17)
        {
          v27 = 0;
          goto LABEL_29;
        }

        v25 = *v18;
        v26 = *v17;
      }

      else
      {
        v24 = 4 * (4 * v23);
        v23 = v23;
        if (!v19)
        {
          v23 = 0;
        }

        v25 = v6[v23];
        v26 = *(v20 + v24);
        if (!v19)
        {
          goto LABEL_28;
        }
      }

      v26 = vmulq_n_f32(v26, v25);
LABEL_28:
      i[-1] = v26;
      i->f32[0] = v25;
      v27 = -1;
LABEL_29:
      v7 = v5 + v7;
      *v14 = v27;
      v14 = (v14 + 1);
      if (!--a4)
      {
        return;
      }
    }
  }

  if (v7 >= v10)
  {
    LODWORD(v12) = v13;
    if (v7 <= v11)
    {
      LODWORD(v12) = (v9 * (v7 - v8));
    }
  }

  if ((v12 & 0x80000000) == 0 || v17)
  {
    if ((v12 & 0x80000000) != 0)
    {
      v29 = *v18;
      v30 = *v17;
    }

    else
    {
      v28 = 4 * (4 * v12);
      v12 = v12;
      if (!v19)
      {
        v12 = 0;
      }

      v29 = v6[v12];
      v30 = *(v20 + v28);
      if (!v19)
      {
        goto LABEL_39;
      }
    }

    v30 = vmulq_n_f32(v30, v29);
LABEL_39:
    v31 = a4 + 4;
    do
    {
      *v15 = v30;
      *(v15 + 16) = v29;
      *(v15 + 20) = v30;
      *(v15 + 36) = v29;
      *(v15 + 40) = v30;
      *(v15 + 56) = v29;
      *(v15 + 60) = v30;
      *(v15 + 76) = v29;
      v15 += 80;
      v31 -= 4;
      *v14++ = -1;
    }

    while (v31 > 4);
    return;
  }

  if (a4 >= 4)
  {
    v21 = 4;
  }

  else
  {
    v21 = a4;
  }

  bzero(v14, ((a4 - v21 + 3) & 0xFFFFFFFC) + 4);
}

uint64_t CMYKf_shade_custom_CMYK(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(result + 272);
  v7 = *(result + 280);
  *a6.i8 = vadd_f32(*(result + 296), vmla_n_f32(vmul_n_f32(*(result + 288), *(v6 + 4) * a3), v7, *(v6 + 4) * a2));
  v8 = *(result + 304);
  v9 = *(result + 336);
  v10 = *(result + 348);
  v11 = *(result + 344);
  v12 = *(result + 356);
  v13 = *(result + 144);
  v14 = *(result + 384);
  v15 = *(result + 392);
  if (!v15)
  {
    v15 = *(result + 272);
  }

  v16 = *(result + 32);
  v17 = *(result + 40);
  if (v17)
  {
    v18 = *(result + 48);
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v6 = *(result + 40);
  }

  v19 = 4 * *(result + 48);
  v20 = (*(result + 152) + 16);
  do
  {
    v21 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v8, v21))), vmovn_s32(vcgtq_f32(v21, v8)))) & 1) == 0)
    {
      v24 = (v12 * (*&a6.i32[1] - v10));
      v25 = v11 * (*a6.i32 - v9);
      v26 = v16 + 4 * v19 * v24;
      v27 = 16 * v25;
      v28 = v6 + 4 * v18 * v24;
      result = v25;
      if (!v17)
      {
        result = 0;
      }

      v22 = *(v28 + 4 * result);
      v23 = *(v26 + v27);
      if (!v17)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v14)
    {
      v22 = *v15;
      v23 = *v14;
LABEL_15:
      v23 = vmulq_n_f32(v23, v22);
LABEL_16:
      v20[-1] = v23;
      v20->f32[0] = v22;
      v29 = -1;
      goto LABEL_18;
    }

    v29 = 0;
LABEL_18:
    *a6.i8 = vadd_f32(v7, *a6.i8);
    *v13++ = v29;
    v20 = (v20 + 20);
    --a4;
  }

  while (a4);
  return result;
}

void CMYKf_shade_conic_CMYK(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, int64x2_t a5, __n128 a6, int64x2_t a7)
{
  a5.i64[0] = 0;
  v8 = a1[35];
  a6.n128_u64[0] = vadd_f32(a1[37], vmla_n_f32(vmul_n_f32(a1[36], *(*&a1[34] + 4) * a3), v8, *(*&a1[34] + 4) * a2));
  v9 = a1[42].f32[0];
  v10 = a1[43].f32[0];
  v11 = a1[38].f32[0];
  v13 = a1[18];
  v12 = a1[19];
  v14 = a1[4];
  v15 = a1[5];
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = a1[34];
  }

  v17 = a1[38].f32[1] - v11;
  *a7.i8 = a1[5];
  v32 = vdupq_lane_s64(vceqq_s64(a7, a5).i64[0], 0);
  do
  {
    v33 = a6;
    v18 = v10 * ((v11 + (((atan2f(a6.n128_f32[1], a6.n128_f32[0]) * 0.15915) + 0.5) * v17)) - v9);
    v19 = ceilf(v18);
    LODWORD(v20) = vcvtms_s32_f32(v18);
    v21 = vcvtms_s32_f32(v10 + v18);
    if (v18 < 0.0)
    {
      LODWORD(v20) = v21;
    }

    v22 = ceilf(v18 - v10);
    if (v18 > v10)
    {
      v19 = v22;
    }

    v20 = v20;
    v23 = 16 * v20;
    if (!*&v15)
    {
      v20 = 0;
    }

    v24 = *(*&v14 + v23);
    v25 = *(*&v16 + 4 * v20);
    v26 = vmulq_n_f32(v24, v25);
    v27 = 16 * v19;
    v28 = v19;
    if (!*&v15)
    {
      v28 = 0;
    }

    v29 = *(*&v16 + 4 * v28);
    v30 = vbslq_s8(v32, v24, v26);
    v31 = v18 - floorf(v18);
    *v12 = vmlaq_n_f32(v30, vsubq_f32(vbslq_s8(v32, *(*&v14 + v27), vmulq_n_f32(*(*&v14 + v27), v29)), v30), v31);
    a6.n128_u64[1] = v33.n128_u64[1];
    v12[1].f32[0] = v25 + (v31 * (v29 - v25));
    a6.n128_u64[0] = vadd_f32(v8, v33.n128_u64[0]);
    v12 = (v12 + 20);
    *v13++ = -1;
    --a4;
  }

  while (a4);
}

void CMYKf_shade_radial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 400);
  v8 = *(a1 + 280);
  v9 = *(a1 + 284);
  v10 = *(a1 + 272);
  v11 = v10[1];
  v12 = v11 * a2;
  v13 = v11 * a3;
  v14 = *(a1 + 296) + ((*(a1 + 288) * v13) + (v8 * v12));
  v15 = *(a1 + 300) + ((v13 * *(a1 + 292)) + (v9 * v12));
  v16 = *(a1 + 336);
  v17 = *(a1 + 344);
  v18 = *(a1 + 304);
  v19 = *(a1 + 308);
  v20 = *(a1 + 324);
  v21 = v7[2];
  v22 = v7[4];
  v23 = v7[5];
  v24 = v7[7];
  v27 = a1 + 144;
  v25 = *(a1 + 144);
  v26 = *(v27 + 8);
  v28 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v29 = *(a1 + 392);
  }

  else
  {
    v29 = v10;
  }

  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  if (v31)
  {
    v32 = *(a1 + 40);
  }

  else
  {
    v32 = v10;
  }

  if (v21 != 0.0 || v24 != 0.0 || v9 != 0.0)
  {
    v36 = *(a1 + 320);
    v37 = v7[3];
    v38 = v7[8];
    v39 = -v7[6];
    v40 = v19 - v18;
    for (i = (v26 + 16); ; i = (i + 20))
    {
      v42 = v39 + ((v14 + v14) * v21);
      v43 = ((v15 * v15) + (v14 * v14)) - v24;
      if (v23 == 0.0)
      {
        v50 = v43 / v42;
      }

      else
      {
        v44 = ((v23 * -4.0) * v43) + (v42 * v42);
        if (v44 < 0.0)
        {
          goto LABEL_48;
        }

        v45 = sqrtf(v44);
        v46 = v38 * (v42 - v45);
        v47 = v42 + v45;
        v48 = v38 * v47;
        v49 = (v38 * v47) <= v46;
        if ((v38 * v47) <= v46)
        {
          v50 = v38 * v47;
        }

        else
        {
          v50 = v46;
        }

        if (v49)
        {
          v48 = v46;
        }

        if (v48 < 0.0)
        {
          v51 = v48 < v37;
LABEL_31:
          LODWORD(v52) = v36;
          if (v51)
          {
            goto LABEL_48;
          }

LABEL_32:
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }

        if (v48 <= 1.0)
        {
          v53 = v18 + (v48 * v40);
          goto LABEL_43;
        }

        if ((v20 & 0x80000000) == 0)
        {
          LODWORD(v52) = v20;
          if (v48 <= v22)
          {
LABEL_44:
            v54 = 4 * (4 * v52);
            v52 = v52;
            if (!v31)
            {
              v52 = 0;
            }

            v55 = v32[v52];
            v56 = *(v30 + v54);
            if (!v31)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }
        }
      }

      if (v50 < 0.0)
      {
        v51 = v50 < v37;
        goto LABEL_31;
      }

      if (v50 > 1.0)
      {
        LODWORD(v52) = v20;
        if (v50 > v22)
        {
          goto LABEL_48;
        }

        goto LABEL_32;
      }

      v53 = v18 + (v50 * v40);
LABEL_43:
      LODWORD(v52) = (v17 * (v53 - v16));
      if ((v52 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

LABEL_48:
      if (!v28)
      {
        v57 = 0;
        goto LABEL_53;
      }

      v55 = *v29;
      v56 = *v28;
LABEL_50:
      v56 = vmulq_n_f32(v56, v55);
LABEL_51:
      i[-1] = v56;
      i->f32[0] = v55;
      v57 = -1;
LABEL_53:
      v14 = v8 + v14;
      v15 = v9 + v15;
      *v25++ = v57;
      if (!--a4)
      {
        return;
      }
    }
  }

  v33 = v15 * v15;
  v34 = -v23;
  if (v33 <= -v23)
  {
    v58 = fabsf(v7[8]);
    v59 = v23 * -4.0;
    v60 = v19 - v18;
    if (v31)
    {
      v61 = v20;
    }

    else
    {
      v61 = 0;
    }

    v62 = a4 + 2;
    v4.i64[0] = *(a1 + 40);
    while (1)
    {
      v63 = v33 + (v14 * v14);
      v64 = v8 + v14;
      v65 = v33 + (v64 * v64);
      if (v63 > v34 && v65 > v34)
      {
        if ((v20 & 0x80000000) != 0)
        {
          if (!v28)
          {
            v83 = 0;
            v81 = 0;
            goto LABEL_106;
          }

          v5.i32[0] = *v29;
          v75 = vmulq_n_f32(*v28, *v29);
        }

        else
        {
          v5.i64[0] = 0;
          v5 = vceqq_s64(v4, v5);
          v74 = vdupq_lane_s64(v5.i64[0], 0);
          *v5.i32 = v32[v61];
          v75 = vbslq_s8(v74, *(v30 + 4 * (4 * v20)), vmulq_n_f32(*(v30 + 4 * (4 * v20)), *v5.i32));
        }

        *v26 = v75;
        *(v26 + 16) = v5.i32[0];
        goto LABEL_104;
      }

      v67 = sqrtf(v59 * v65);
      v68 = v58 * sqrtf(v59 * v63);
      v69 = v58 * v67;
      v70 = (v17 * ((v18 + (v68 * v60)) - v16));
      v71 = (v17 * ((v18 + ((v58 * v67) * v60)) - v16));
      if (v68 <= 1.0 && v69 <= 1.0)
      {
        v76 = 16 * v70;
        v70 = v70;
        if (!v31)
        {
          v70 = 0;
        }

        v77 = v32[v70];
        v78 = *(v30 + v76);
        if (v31)
        {
          v78 = vmulq_n_f32(v78, v77);
          v5.i32[0] = *(v31 + 4 * v71);
          v75 = vmulq_n_f32(*(v30 + 16 * v71), *v5.i32);
        }

        else
        {
          v5.i32[0] = *v10;
          v75 = *(v30 + 16 * v71);
        }

        *v26 = v78;
        *(v26 + 16) = v77;
LABEL_104:
        v81 = -1;
        goto LABEL_105;
      }

      if (v68 <= 1.0)
      {
        if ((v70 & 0x80000000) == 0)
        {
          v73 = (4 * v70);
          if (!v31)
          {
            v70 = 0;
          }

LABEL_84:
          v79 = v32[v70];
          v80 = *(v30 + 4 * v73);
          if (v31)
          {
LABEL_88:
            v80 = vmulq_n_f32(v80, v79);
          }

          *v26 = v80;
          *(v26 + 16) = v79;
          v81 = -1;
          goto LABEL_90;
        }
      }

      else if (v68 <= v22)
      {
        v70 = v61;
        v73 = (4 * v20);
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_84;
        }
      }

      if (v28)
      {
        v79 = *v29;
        v80 = *v28;
        goto LABEL_88;
      }

      v81 = 0;
LABEL_90:
      if (v69 <= 1.0)
      {
        if ((v71 & 0x80000000) == 0)
        {
          v82 = (4 * v71);
          if (!v31)
          {
            v71 = 0;
          }

LABEL_97:
          *v5.i32 = v32[v71];
          v75 = *(v30 + 4 * v82);
          if (!v31)
          {
            goto LABEL_105;
          }

          goto LABEL_101;
        }
      }

      else if (v69 <= v22)
      {
        v71 = v61;
        v82 = (4 * v20);
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_97;
        }
      }

      if (!v28)
      {
        v83 = 0;
        goto LABEL_106;
      }

      v5.i32[0] = *v29;
      v75 = *v28;
LABEL_101:
      v75 = vmulq_n_f32(v75, *v5.i32);
LABEL_105:
      *(v26 + 20) = v75;
      *(v26 + 36) = v5.i32[0];
      v83 = -1;
LABEL_106:
      v14 = v8 + v64;
      v26 += 40;
      *v25 = v81;
      v25[1] = v83;
      v25 += 2;
      v62 -= 2;
      if (v62 <= 2)
      {
        return;
      }
    }
  }

  if (v28 || (v20 & 0x80000000) == 0)
  {
    if ((v20 & 0x80000000) != 0)
    {
      v85 = *v29;
      v86 = *v28;
    }

    else
    {
      v84 = 4 * (4 * v20);
      if (!v31)
      {
        v20 = 0;
      }

      v85 = v32[v20];
      v86 = *(v30 + v84);
      if (!v31)
      {
        goto LABEL_118;
      }
    }

    v86 = vmulq_n_f32(v86, v85);
LABEL_118:
    v87 = a4 + 4;
    do
    {
      *v26 = v86;
      *(v26 + 16) = v85;
      *(v26 + 20) = v86;
      *(v26 + 36) = v85;
      *(v26 + 40) = v86;
      *(v26 + 56) = v85;
      *(v26 + 60) = v86;
      *(v26 + 76) = v85;
      v26 += 80;
      v87 -= 4;
      *v25 = -1;
      v25 += 4;
    }

    while (v87 > 4);
    return;
  }

  if (a4 >= 4)
  {
    v35 = 4;
  }

  else
  {
    v35 = a4;
  }

  bzero(v25, ((a4 - v35 + 3) & 0xFFFFFFFC) + 4);
}

int8x16_t *CMYKF_pattern(uint64_t a1, int8x16_t *a2, unsigned int a3, int a4, float32x4_t *a5, float a6, double a7, double a8, int32x4_t a9, double a10, double a11)
{
  v14 = *(*a1 + 64);
  a9.i32[0] = *v14;
  LODWORD(a11) = v14[1];
  if (a2 && a3 > 0x13 || (v25 = a9, v26 = a11, v15 = malloc_type_malloc(0x44uLL, 0x1080040E00A32E4uLL), a9 = v25, a11 = v26, (a2 = v15) != 0))
  {
    if (*a9.i32 <= a6)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a9.i32;
    }

    if (*&a11 < a6)
    {
      v16 = *&a11;
    }

    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v22 = a9;
        *&v22.i32[1] = v16 * (v16 * (*&a11 - a5->f32[0]));
        v21 = vzip1q_s32(v22, v22);
        v21.i32[2] = a9.i32[0];
        break;
      case 4:
        v21 = vmulq_n_f32(*a5, v16);
        break;
      case 3:
        v18 = v16 * (*&a11 - a5->f32[2]);
        v20 = vdup_lane_s32(*&a11, 0);
        v19 = vmul_n_f32(vsub_f32(v20, *a5->f32), v16);
        v20.i32[0] = v19.i32[1];
        if (v19.f32[0] < v19.f32[1])
        {
          v20.f32[0] = v19.f32[0];
        }

        if (v20.f32[0] < v18)
        {
          v20.f32[0] = v16 * (*&a11 - a5->f32[2]);
        }

        *v21.i8 = vsub_f32(v19, vdup_lane_s32(v20, 0));
        *&v21.i32[2] = v18 - v20.f32[0];
        v21.i32[3] = v20.i32[0];
        break;
      default:
        v21 = vdupq_lane_s32(*a9.i8, 0);
        break;
    }

    *a2 = xmmword_18439CB10;
    a2[1].i32[2] = 0;
    a2[1].i64[0] = 1;
    a2[4].i32[0] = bswap32(LODWORD(v16));
    v23 = a2 + 4;
    a2[3] = vrev32q_s8(v21);
    if (v16 >= *&a11)
    {
      v23 = 0;
    }

    a2[2].i64[0] = a2[3].i64;
    a2[2].i64[1] = v23;
  }

  return a2;
}

uint64_t CMYKF_mark_inner(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v766 = *MEMORY[0x1E69E9840];
  v18 = *(v3 + 96);
  v19 = *(v3 + 48);
  v20 = *(v2 + 16 * *v3 + 8 * (v18 == 0) + 4 * (v19 == 0));
  if (v20 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = v3;
  v23 = *(v3 + 4);
  v24 = v23 - 1;
  if (v23 < 1)
  {
    return 0;
  }

  v25 = *(v3 + 8);
  if (v25 < 1)
  {
    return 0;
  }

  v26 = *(v3 + 136);
  if ((*v3 & 0xFF0000) == 0x50000 || !v26)
  {
    v28 = *v3 & 0xFF00;
    v716 = *(v2 + 16 * *v3 + 8 * (v18 == 0) + 4 * (v19 == 0));
    v714 = v3;
    if (v28 == 1024)
    {
      LODWORD(v757[0]) = *(v3 + 4);
      v763 = v25;
      v17.i32[0] = 1.0;
      if (v18)
      {
        v17.i32[0] = bswap32(*v18);
      }

      v29 = **(v3 + 88);
      v30 = *(v3 + 28) >> 4;
      v31 = *(v3 + 12);
      v32 = *(v3 + 16);
      if (v19)
      {
        v33 = *(v3 + 32) >> 2;
        v34 = v19 + 4 * v33 * v32 + 4 * v31;
        v742 = 1;
      }

      else
      {
        v34 = 0;
        v33 = 0;
        v742 = 0;
      }

      v46 = vrev32q_s8(v29);
      v12.f32[0] = 1.0 - v17.f32[0];
      v47 = *(v3 + 40) + 16 * v32 * v30;
      v48 = v47 + 16 * v31;
      v753 = v46;
      v755 = v17;
      v751 = **(v3 + 88);
      v746 = v12.i64[0];
      v739 = *(v3 + 28) >> 4;
      v741 = v34;
      v744 = v48;
      if (v26)
      {
        shape_enum_clip_alloc(v2, v3, v26, 1, 1, 1, *(v3 + 104), *(v3 + 108), v23, v25);
        v50 = v49;
        v51 = v34;
        v52 = v33;
        if (v49)
        {
          goto LABEL_1260;
        }

        return 1;
      }

      v748 = 0;
      if (v19)
      {
        v58 = v23;
      }

      else
      {
        v58 = 0;
      }

      v52 = v33 - v58;
      v51 = v34;
      v59 = (v47 + 16 * v31);
      v60 = v23;
LABEL_929:
      v48 = v30 - v60;
      switch(v20)
      {
        case 0:
          v519 = v33;
          v520 = v34;
          v521 = v48 + v23;
          v522 = v763;
          v523 = v763 - 1;
          i8 = v59[(v521 * v523) & (v521 >> 63)].i8;
          if (v521 < 0)
          {
            v521 = -v521;
          }

          v525 = v23;
          CGBlt_fillBytes(16 * v23, v763, 0, i8, 16 * v521);
          if (v19)
          {
            v526 = v52 + v525;
            v51 += 4 * ((v526 * v523) & (v526 >> 63));
            if (v526 >= 0)
            {
              v52 += v525;
            }

            else
            {
              v52 = -v526;
            }

            CGBlt_fillBytes(4 * v525, v522, 0, v51, 4 * v52);
          }

          v34 = v520;
          v33 = v519;
          goto LABEL_1256;
        case 1:
          v601 = v23;
          v602 = v48 + v23;
          if (v602 < 0)
          {
            v59 += v602 * (v763 - 1);
            v602 = -v602;
          }

          v603 = *(v714 + 88);
          v604 = v23;
          v605 = v763;
          if (v603)
          {
            CGSFillDRAM64(v59, 16 * v602, 16 * v23, v763, v603, 16, 16, 1, 0, 0);
          }

          else
          {
            CGBlt_fillBytes(16 * v23, v763, 0, v59->i8, 16 * v602);
          }

          v50 = v748;
          if (v19)
          {
            v700 = *(v714 + 96);
            if (!v700)
            {
              v700 = &unk_1845638A4;
            }

            v51 += 4 * (((v52 + v601) * (v605 - 1)) & ((v52 + v601) >> 63));
            if ((v52 + v601) >= 0)
            {
              v52 += v601;
            }

            else
            {
              v52 = -(v52 + v601);
            }

            CGBlt_fillBytes(4 * v604, v605, *v700, v51, 4 * v52);
          }

          v34 = v741;
          v48 = v744;
          goto LABEL_1258;
        case 2:
          v578 = 4 * v742;
          v579 = 16 * v742;
          if (v19)
          {
            v580 = vdupq_lane_s32(*v12.f32, 0);
            do
            {
              v581 = v757[0];
              if (SLODWORD(v757[0]) >= 4)
              {
                v582 = (LODWORD(v757[0]) >> 2) + 1;
                do
                {
                  v583 = bswap32(COERCE_UNSIGNED_INT(v17.f32[0] + (COERCE_FLOAT(bswap32(*v51)) * v12.f32[0])));
                  *v59 = vrev32q_s8(vmlaq_f32(v46, v580, vrev32q_s8(*v59)));
                  *v51 = v583;
                  v584 = bswap32(COERCE_UNSIGNED_INT(v17.f32[0] + (COERCE_FLOAT(bswap32(*(v51 + 4))) * v12.f32[0])));
                  v59[1] = vrev32q_s8(vmlaq_f32(v46, v580, vrev32q_s8(v59[1])));
                  *(v51 + 4) = v584;
                  v585 = bswap32(COERCE_UNSIGNED_INT(v17.f32[0] + (COERCE_FLOAT(bswap32(*(v51 + 8))) * v12.f32[0])));
                  v59[2] = vrev32q_s8(vmlaq_f32(v46, v580, vrev32q_s8(v59[2])));
                  *(v51 + 8) = v585;
                  v586 = bswap32(COERCE_UNSIGNED_INT(v17.f32[0] + (COERCE_FLOAT(bswap32(*(v51 + 12))) * v12.f32[0])));
                  v59[3] = vrev32q_s8(vmlaq_f32(v46, v580, vrev32q_s8(v59[3])));
                  *(v51 + 12) = v586;
                  v59 += 4;
                  --v582;
                  v51 += v579;
                }

                while (v582 > 1);
                v581 = v757[0] & 3;
              }

              if (v581 >= 1)
              {
                v587 = v581 + 1;
                do
                {
                  v588 = bswap32(COERCE_UNSIGNED_INT(v17.f32[0] + (COERCE_FLOAT(bswap32(*v51)) * v12.f32[0])));
                  *v59 = vrev32q_s8(vmlaq_f32(v46, v580, vrev32q_s8(*v59)));
                  ++v59;
                  *v51 = v588;
                  v51 += v578;
                  --v587;
                }

                while (v587 > 1);
              }

              v59 += v48;
              v51 += 4 * v52;
              --v763;
            }

            while (v763);
            goto LABEL_1256;
          }

          v691 = vdupq_lane_s32(*v12.f32, 0);
          v692 = v763;
          do
          {
            if (v23 < 4)
            {
              v696 = v23;
            }

            else
            {
              v693 = (v23 >> 2) + 1;
              do
              {
                v694 = vrev32q_s8(vmlaq_f32(v46, v691, vrev32q_s8(v59[1])));
                *v59 = vrev32q_s8(vmlaq_f32(v46, v691, vrev32q_s8(*v59)));
                v59[1] = v694;
                v695 = vrev32q_s8(vmlaq_f32(v46, v691, vrev32q_s8(v59[3])));
                v59[2] = vrev32q_s8(vmlaq_f32(v46, v691, vrev32q_s8(v59[2])));
                v59[3] = v695;
                v59 += 4;
                --v693;
                v51 += v579;
              }

              while (v693 > 1);
              v696 = v23 & 3;
            }

            if (v696 >= 1)
            {
              v697 = v696 + 1;
              do
              {
                *v59 = vrev32q_s8(vmlaq_f32(v46, v691, vrev32q_s8(*v59)));
                ++v59;
                v51 += v578;
                --v697;
              }

              while (v697 > 1);
            }

            v59 += v48;
            v51 += 4 * v52;
            --v692;
          }

          while (v692);
          goto LABEL_1255;
        case 3:
          v596 = bswap32(v17.u32[0]);
          do
          {
            v597 = v757[0];
            do
            {
              v598 = COERCE_FLOAT(bswap32(*v51));
              if (v598 <= 0.0)
              {
                v59->i64[0] = 0;
                v59->i64[1] = 0;
                *v51 = 0;
              }

              else if (v598 >= 1.0)
              {
                *v59 = v29;
                *v51 = v596;
              }

              else
              {
                *v59 = vrev32q_s8(vmulq_n_f32(v46, v598));
                *v51 = bswap32(COERCE_UNSIGNED_INT(v17.f32[0] * v598));
              }

              ++v59;
              v51 += 4 * v742;
              --v597;
            }

            while (v597);
            v59 += v48;
            v51 += 4 * v52;
            --v763;
          }

          while (v763);
          goto LABEL_1256;
        case 4:
          v556 = bswap32(v17.u32[0]);
          do
          {
            v557 = v757[0];
            do
            {
              v558 = 1.0 - COERCE_FLOAT(bswap32(*v51));
              if (v558 <= 0.0)
              {
                v59->i64[0] = 0;
                v59->i64[1] = 0;
                *v51 = 0;
              }

              else if (v558 >= 1.0)
              {
                *v59 = v29;
                *v51 = v556;
              }

              else
              {
                *v59 = vrev32q_s8(vmulq_n_f32(v46, v558));
                *v51 = bswap32(COERCE_UNSIGNED_INT(v17.f32[0] * v558));
              }

              ++v59;
              v51 += 4 * v742;
              --v557;
            }

            while (v557);
            v59 += v48;
            v51 += 4 * v52;
            --v763;
          }

          while (v763);
          goto LABEL_1256;
        case 5:
          do
          {
            v623 = v757[0];
            do
            {
              v624 = COERCE_FLOAT(bswap32(*v51));
              *v59 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v59), v12.f32[0]), v46, v624));
              ++v59;
              *v51 = bswap32(COERCE_UNSIGNED_INT((v12.f32[0] * v624) + (v17.f32[0] * v624)));
              v51 += 4 * v742;
              --v623;
            }

            while (v623);
            v59 += v48;
            v51 += 4 * v52;
            --v763;
          }

          while (v763);
          goto LABEL_1256;
        case 6:
          v641 = bswap32(v17.u32[0]);
          while (1)
          {
            v642 = v757[0];
            do
            {
              v643 = COERCE_FLOAT(bswap32(*v51));
              v644 = 1.0 - v643;
              v645 = v29;
              v646 = v641;
              if ((1.0 - v643) < 1.0)
              {
                if (v644 <= 0.0)
                {
                  goto LABEL_1138;
                }

                v646 = bswap32(COERCE_UNSIGNED_INT(v643 + (v17.f32[0] * v644)));
                v645 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v59), v46, v644));
              }

              *v59 = v645;
              *v51 = v646;
LABEL_1138:
              ++v59;
              v51 += 4 * v742;
              --v642;
            }

            while (v642);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1256;
            }
          }

        case 7:
          if (v19)
          {
            do
            {
              v599 = v757[0];
              do
              {
                v600 = bswap32(COERCE_UNSIGNED_INT(v17.f32[0] * COERCE_FLOAT(bswap32(*v51))));
                *v59 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v59), v17.f32[0]));
                ++v59;
                *v51 = v600;
                v51 += 4 * v742;
                --v599;
              }

              while (v599);
              v59 += v48;
              v51 += 4 * v52;
              --v763;
            }

            while (v763);
            goto LABEL_1256;
          }

          v698 = v763;
          do
          {
            v699 = v23;
            do
            {
              *v59 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v59), v17.f32[0]));
              ++v59;
              v51 += 4 * v742;
              --v699;
            }

            while (v699);
            v59 += v48;
            v51 += 4 * v52;
            --v698;
          }

          while (v698);
          goto LABEL_1255;
        case 8:
          if (v19)
          {
            do
            {
              v656 = v757[0];
              do
              {
                v657 = bswap32(COERCE_UNSIGNED_INT(v12.f32[0] * COERCE_FLOAT(bswap32(*v51))));
                *v59 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v59), v12.f32[0]));
                ++v59;
                *v51 = v657;
                v51 += 4 * v742;
                --v656;
              }

              while (v656);
              v59 += v48;
              v51 += 4 * v52;
              --v763;
            }

            while (v763);
            goto LABEL_1256;
          }

          v701 = v763;
          do
          {
            v702 = v23;
            do
            {
              *v59 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v59), v12.f32[0]));
              ++v59;
              v51 += 4 * v742;
              --v702;
            }

            while (v702);
            v59 += v48;
            v51 += 4 * v52;
            --v701;
          }

          while (v701);
          goto LABEL_1255;
        case 9:
          do
          {
            v562 = v757[0];
            do
            {
              v563 = COERCE_FLOAT(bswap32(*v51));
              *v59 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v59), v17.f32[0]), v46, 1.0 - v563));
              ++v59;
              *v51 = bswap32(COERCE_UNSIGNED_INT((v17.f32[0] * v563) + (v17.f32[0] * (1.0 - v563))));
              v51 += 4 * v742;
              --v562;
            }

            while (v562);
            v59 += v48;
            v51 += 4 * v52;
            --v763;
          }

          while (v763);
          goto LABEL_1256;
        case 10:
          do
          {
            v654 = v757[0];
            do
            {
              v655 = COERCE_FLOAT(bswap32(*v51));
              *v59 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v59), v12.f32[0]), v46, 1.0 - v655));
              ++v59;
              *v51 = bswap32(COERCE_UNSIGNED_INT((v12.f32[0] * v655) + (v17.f32[0] * (1.0 - v655))));
              v51 += 4 * v742;
              --v654;
            }

            while (v654);
            v59 += v48;
            v51 += 4 * v52;
            --v763;
          }

          while (v763);
          goto LABEL_1256;
        case 11:
          v551 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v46);
          v552 = 4 * v742;
          if (!v19)
          {
            v687 = v763;
            do
            {
              v688 = v23;
              do
              {
                *v59 = vrev32q_s8(vaddq_f32(v551, vrev32q_s8(*v59)));
                ++v59;
                v51 += v552;
                --v688;
              }

              while (v688);
              v59 += v48;
              v51 += 4 * v52;
              --v687;
            }

            while (v687);
            goto LABEL_1255;
          }

          do
          {
            v553 = v757[0];
            do
            {
              v11.i32[0] = bswap32(*v51);
              v12.f32[0] = v17.f32[0] + v11.f32[0];
              if ((v17.f32[0] + v11.f32[0]) > 1.0)
              {
                v12.f32[0] = 1.0;
              }

              v554 = vdupq_lane_s32(*v12.f32, 0);
              v555 = bswap32(v12.u32[0]);
              v12 = vrev32q_s8(*v59);
              v11 = vrev32q_s8(vaddq_f32(v551, vsubq_f32(v554, vsubq_f32(vdupq_lane_s32(*v11.f32, 0), v12))));
              *v59++ = v11;
              *v51 = v555;
              v51 += v552;
              --v553;
            }

            while (v553);
            v59 += v48;
            v51 += 4 * v52;
            --v763;
          }

          while (v763);
          goto LABEL_1256;
        case 12:
          v559 = 4 * v742;
          if (v19)
          {
            do
            {
              v560 = v757[0];
              do
              {
                v561 = v17.f32[0] + COERCE_FLOAT(bswap32(*v51));
                if (v561 > 1.0)
                {
                  v561 = 1.0;
                }

                *v59 = vrev32q_s8(vaddq_f32(v46, vrev32q_s8(*v59)));
                ++v59;
                *v51 = bswap32(LODWORD(v561));
                v51 += v559;
                --v560;
              }

              while (v560);
              v59 += v48;
              v51 += 4 * v52;
              --v763;
            }

            while (v763);
          }

          else
          {
            v689 = v763;
            do
            {
              v690 = v23;
              do
              {
                *v59 = vrev32q_s8(vaddq_f32(v46, vrev32q_s8(*v59)));
                ++v59;
                v51 += v559;
                --v690;
              }

              while (v690);
              v59 += v48;
              v51 += 4 * v52;
              --v689;
            }

            while (v689);
LABEL_1255:
            v763 = 0;
          }

          goto LABEL_1256;
        case 13:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v632 = bswap32(v17.u32[0]);
          v633 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v46);
          v634 = vdupq_lane_s32(*v12.f32, 0);
          v11.i32[0] = 1.0;
          v635 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v17, v11)), 0);
          while (1)
          {
            v636 = v757[0];
            do
            {
              if (v19)
              {
                v13.i32[0] = bswap32(*v51);
                if (v13.f32[0] <= 0.0)
                {
                  *v59 = v29;
                  *v51 = v632;
                  goto LABEL_1129;
                }
              }

              else
              {
                v13.i32[0] = 1.0;
              }

              v637 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), vrev32q_s8(*v59));
              v638 = vmulq_f32(v637, v633);
              v640 = vbslq_s8(v635, vmlaq_f32(v638, v634, v637), v638);
              v639 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v13, v11)), 0), vmlaq_n_f32(v640, v633, 1.0 - v13.f32[0]), v640);
              v640.f32[0] = (v13.f32[0] + v17.f32[0]) - (v13.f32[0] * v17.f32[0]);
              v13 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v640.f32, 0), v639));
              *v59 = v13;
              if (v19)
              {
                *v51 = bswap32(v640.u32[0]);
              }

LABEL_1129:
              ++v59;
              v51 += 4 * v742;
              --v636;
            }

            while (v636);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1256;
            }
          }

        case 14:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v546 = bswap32(v17.u32[0]);
          v547 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v46);
          __asm { FMOV            V1.4S, #1.0 }

          while (1)
          {
            v549 = v757[0];
            do
            {
              if (v19)
              {
                v12.i32[0] = bswap32(*v51);
                if (v12.f32[0] <= 0.0)
                {
                  *v59 = v29;
                  *v51 = v546;
                  goto LABEL_973;
                }
              }

              else
              {
                v12.i32[0] = 1.0;
              }

              v11.f32[0] = (v17.f32[0] + v12.f32[0]) - (v12.f32[0] * v17.f32[0]);
              v550 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), vrev32q_s8(*v59));
              v12 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vmlaq_f32(v550, vsubq_f32(_Q1, v550), v547)));
              *v59 = v12;
              if (v19)
              {
                *v51 = bswap32(v11.u32[0]);
              }

LABEL_973:
              ++v59;
              v51 += 4 * v742;
              --v549;
            }

            while (v549);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1256;
            }
          }

        case 15:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v589 = bswap32(v17.u32[0]);
          v590 = v46.f32[1];
          v591 = v46.i64[1];
          while (1)
          {
            v592 = v757[0];
            do
            {
              if (v19)
              {
                v593 = COERCE_FLOAT(bswap32(*v51));
                if (v593 <= 0.0)
                {
                  *v59 = v751;
                  *v51 = v589;
                  goto LABEL_1054;
                }
              }

              else
              {
                v593 = 1.0;
              }

              v764 = 0uLL;
              v765 = 0;
              v594 = vrev32q_s8(*v59);
              PDAoverlayPDA(v764.i32, *v594.i32, *&v594.i32[1], *&v594.i32[2], *&v594.i32[3], v593, *v46.i64, v15, v16, v46.f32[0], v590, *&v591, *(&v591 + 1), v17.f32[0]);
              if (v19)
              {
                v595 = bswap32(v765);
                *v59 = vrev32q_s8(v764);
                *v51 = v595;
              }

              else
              {
                *v59 = vrev32q_s8(v764);
              }

              v46.i64[0] = v753.i64[0];
              v17.i32[0] = v755.i32[0];
LABEL_1054:
              ++v59;
              v51 += 4 * v742;
              --v592;
            }

            while (v592);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1215;
            }
          }

        case 16:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v535 = bswap32(v17.u32[0]);
          v536 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v46);
          v537 = vdupq_lane_s32(*v12.f32, 0);
          v11.i32[0] = 1.0;
          v538 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v17, v11)), 0);
          while (1)
          {
            v539 = v757[0];
            do
            {
              if (v19)
              {
                v13.i32[0] = bswap32(*v51);
                if (v13.f32[0] <= 0.0)
                {
                  *v59 = v29;
                  *v51 = v535;
                  goto LABEL_961;
                }
              }

              else
              {
                v13.i32[0] = 1.0;
              }

              v540 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), vrev32q_s8(*v59));
              v541 = vmulq_n_f32(v540, v17.f32[0]);
              v542 = vmulq_n_f32(v536, v13.f32[0]);
              v543 = vbslq_s8(vcgtq_f32(v541, v542), v542, v541);
              v544 = vbslq_s8(v538, vmlaq_f32(v543, v537, v540), v543);
              v545 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v13, v11)), 0), vmlaq_n_f32(v544, v536, 1.0 - v13.f32[0]), v544);
              v13.f32[0] = (v13.f32[0] + v17.f32[0]) - (v13.f32[0] * v17.f32[0]);
              *v59 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v13.f32, 0), v545));
              if (v19)
              {
                *v51 = bswap32(v13.u32[0]);
              }

LABEL_961:
              ++v59;
              v51 += 4 * v742;
              --v539;
            }

            while (v539);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1256;
            }
          }

        case 17:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v606 = bswap32(v17.u32[0]);
          v607 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v46);
          v608 = vdupq_lane_s32(*v12.f32, 0);
          v11.i32[0] = 1.0;
          v609 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v17, v11)), 0);
          while (1)
          {
            v610 = v757[0];
            do
            {
              if (v19)
              {
                v13.i32[0] = bswap32(*v51);
                if (v13.f32[0] <= 0.0)
                {
                  *v59 = v29;
                  *v51 = v606;
                  goto LABEL_1085;
                }
              }

              else
              {
                v13.i32[0] = 1.0;
              }

              v611 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), vrev32q_s8(*v59));
              v612 = vmulq_n_f32(v611, v17.f32[0]);
              v613 = vmulq_n_f32(v607, v13.f32[0]);
              v614 = vbslq_s8(vcgtq_f32(v613, v612), v613, v612);
              v615 = vbslq_s8(v609, vmlaq_f32(v614, v608, v611), v614);
              v616 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v13, v11)), 0), vmlaq_n_f32(v615, v607, 1.0 - v13.f32[0]), v615);
              v13.f32[0] = (v13.f32[0] + v17.f32[0]) - (v13.f32[0] * v17.f32[0]);
              *v59 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v13.f32, 0), v616));
              if (v19)
              {
                *v51 = bswap32(v13.u32[0]);
              }

LABEL_1085:
              ++v59;
              v51 += 4 * v742;
              --v610;
            }

            while (v610);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1256;
            }
          }

        case 18:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v647 = bswap32(v17.u32[0]);
          v648 = v46.f32[1];
          v649 = v46.i64[1];
          while (1)
          {
            v650 = v757[0];
            do
            {
              if (v19)
              {
                v651 = COERCE_FLOAT(bswap32(*v51));
                if (v651 <= 0.0)
                {
                  *v59 = v751;
                  *v51 = v647;
                  goto LABEL_1152;
                }
              }

              else
              {
                v651 = 1.0;
              }

              v764 = 0uLL;
              v765 = 0;
              v652 = vrev32q_s8(*v59);
              PDAcolordodgePDA(v764.i32, *v652.i32, *&v652.i32[1], *&v652.i32[2], *&v652.i32[3], v651, *v46.i64, v15, v16, v46.f32[0], v648, *&v649, *(&v649 + 1), v17.f32[0]);
              if (v19)
              {
                v653 = bswap32(v765);
                *v59 = vrev32q_s8(v764);
                *v51 = v653;
              }

              else
              {
                *v59 = vrev32q_s8(v764);
              }

              v46.i64[0] = v753.i64[0];
              v17.i32[0] = v755.i32[0];
LABEL_1152:
              ++v59;
              v51 += 4 * v742;
              --v650;
            }

            while (v650);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1215;
            }
          }

        case 19:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v668 = bswap32(v17.u32[0]);
          v669 = v46.f32[1];
          v670 = v46.i64[1];
          while (1)
          {
            v671 = v757[0];
            do
            {
              if (v19)
              {
                v672 = COERCE_FLOAT(bswap32(*v51));
                if (v672 <= 0.0)
                {
                  *v59 = v751;
                  *v51 = v668;
                  goto LABEL_1187;
                }
              }

              else
              {
                v672 = 1.0;
              }

              v764 = 0uLL;
              v765 = 0;
              v673 = vrev32q_s8(*v59);
              PDAcolorburnPDA(v764.i32, *v673.i32, *&v673.i32[1], *&v673.i32[2], *&v673.i32[3], v672, *v46.i64, v15, v16, v46.f32[0], v669, *&v670, *(&v670 + 1), v17.f32[0]);
              if (v19)
              {
                v674 = bswap32(v765);
                *v59 = vrev32q_s8(v764);
                *v51 = v674;
              }

              else
              {
                *v59 = vrev32q_s8(v764);
              }

              v46.i64[0] = v753.i64[0];
              v17.i32[0] = v755.i32[0];
LABEL_1187:
              ++v59;
              v51 += 4 * v742;
              --v671;
            }

            while (v671);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1215;
            }
          }

        case 20:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v617 = bswap32(v17.u32[0]);
          v618 = v46.i32[1];
          v619 = v46.i64[1];
          while (1)
          {
            v620 = v757[0];
            do
            {
              if (v19)
              {
                v13.i32[0] = bswap32(*v51);
                if (v13.f32[0] <= 0.0)
                {
                  *v59 = v751;
                  *v51 = v617;
                  goto LABEL_1099;
                }
              }

              else
              {
                v13.i32[0] = 1.0;
              }

              v764 = 0uLL;
              v765 = 0;
              v621 = vrev32q_s8(*v59);
              PDAsoftlightPDA(&v764, *v621.i8, *&v621.i32[1], *&v621.i32[2], *&v621.i32[3], *v13.i64, *v46.f32, v15, v16, v3, v26, v4, v5, v6, v7, v8, __PAIR64__(v618, v46.u32[0]), *&v619, *(&v619 + 1), v17.f32[0]);
              if (v19)
              {
                v622 = bswap32(v765);
                *v59 = vrev32q_s8(v764);
                *v51 = v622;
              }

              else
              {
                *v59 = vrev32q_s8(v764);
              }

              v46.i64[0] = v753.i64[0];
              v17.i32[0] = v755.i32[0];
LABEL_1099:
              ++v59;
              v51 += 4 * v742;
              --v620;
            }

            while (v620);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
LABEL_1215:
              LODWORD(v20) = v716;
              v30 = v739;
              v34 = v741;
LABEL_1256:
              v48 = v744;
LABEL_1257:
              v50 = v748;
LABEL_1258:
              if (!v50)
              {
                return 1;
              }

              v762 = 0;
              v761 = 0;
LABEL_1260:
              if (!shape_enum_clip_next(v50, &v762, &v761, v757, &v763))
              {
                goto LABEL_1264;
              }

              v748 = v50;
              v59 = (v48 + 16 * v30 * v761 + 16 * v762);
              v60 = SLODWORD(v757[0]);
              if (v19)
              {
                v51 = v34 + 4 * v33 * v761 + 4 * v762;
                v52 = v33 - SLODWORD(v757[0]);
              }

              LODWORD(v23) = v757[0];
              v46 = v753;
              v17 = v755;
              v29 = v751;
              v12.i64[0] = v746;
              goto LABEL_929;
            }
          }

        case 21:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v625 = bswap32(v17.u32[0]);
          v626 = v46.f32[1];
          v627 = v46.i64[1];
          while (1)
          {
            v628 = v757[0];
            do
            {
              if (v19)
              {
                v629 = COERCE_FLOAT(bswap32(*v51));
                if (v629 <= 0.0)
                {
                  *v59 = v751;
                  *v51 = v625;
                  goto LABEL_1117;
                }
              }

              else
              {
                v629 = 1.0;
              }

              v764 = 0uLL;
              v765 = 0;
              v630 = vrev32q_s8(*v59);
              PDAhardlightPDA(v764.i32, *v630.i32, *&v630.i32[1], *&v630.i32[2], *&v630.i32[3], v629, *v46.i64, v15, v16, v46.f32[0], v626, *&v627, *(&v627 + 1), v17.f32[0]);
              if (v19)
              {
                v631 = bswap32(v765);
                *v59 = vrev32q_s8(v764);
                *v51 = v631;
              }

              else
              {
                *v59 = vrev32q_s8(v764);
              }

              v46.i64[0] = v753.i64[0];
              v17.i32[0] = v755.i32[0];
LABEL_1117:
              ++v59;
              v51 += 4 * v742;
              --v628;
            }

            while (v628);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1215;
            }
          }

        case 22:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v658 = bswap32(v17.u32[0]);
          v659 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v46);
          while (1)
          {
            v660 = v757[0];
            do
            {
              if (v19)
              {
                v11.i32[0] = bswap32(*v51);
                if (v11.f32[0] <= 0.0)
                {
                  *v59 = v29;
                  *v51 = v658;
                  goto LABEL_1173;
                }
              }

              else
              {
                v11.i32[0] = 1.0;
              }

              v661 = *v59;
              *v661.i32 = (v11.f32[0] + v17.f32[0]) - (v11.f32[0] * v17.f32[0]);
              v662 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vrev32q_s8(*v59));
              v663 = vaddq_f32(v662, v659);
              v664 = vmulq_n_f32(v662, v17.f32[0]);
              v665 = vmulq_n_f32(v659, v11.f32[0]);
              v666 = vsubq_f32(v663, v664);
              v667 = vsubq_f32(v664, v665);
              v11 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v661.i8, 0), vaddq_f32(vsubq_f32(v666, v665), vbslq_s8(vcltzq_f32(v667), vnegq_f32(v667), v667))));
              *v59 = v11;
              if (v19)
              {
                *v51 = bswap32(v661.u32[0]);
              }

LABEL_1173:
              ++v59;
              v51 += 4 * v742;
              --v660;
            }

            while (v660);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1256;
            }
          }

        case 23:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v675 = bswap32(v17.u32[0]);
          v676 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v46);
          v677.i64[0] = 0xC0000000C0000000;
          v677.i64[1] = 0xC0000000C0000000;
          while (1)
          {
            v678 = v757[0];
            do
            {
              if (v19)
              {
                v11.i32[0] = bswap32(*v51);
                if (v11.f32[0] <= 0.0)
                {
                  *v59 = v29;
                  *v51 = v675;
                  goto LABEL_1199;
                }
              }

              else
              {
                v11.i32[0] = 1.0;
              }

              v679 = *v59;
              *v679.i32 = (v11.f32[0] + v17.f32[0]) - (v11.f32[0] * v17.f32[0]);
              v680 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vrev32q_s8(*v59));
              v11 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v679.i8, 0), vmlaq_f32(vaddq_f32(v680, v676), v677, vmulq_f32(v676, v680))));
              *v59 = v11;
              if (v19)
              {
                *v51 = bswap32(v679.u32[0]);
              }

LABEL_1199:
              ++v59;
              v51 += 4 * v742;
              --v678;
            }

            while (v678);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1256;
            }
          }

        case 24:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v571 = bswap32(v17.u32[0]);
          v572 = v46.f32[1];
          v573 = v46.i64[1];
          while (1)
          {
            v574 = v757[0];
            do
            {
              if (v19)
              {
                v575 = COERCE_FLOAT(bswap32(*v51));
                if (v575 <= 0.0)
                {
                  *v59 = v751;
                  *v51 = v571;
                  goto LABEL_1029;
                }
              }

              else
              {
                v575 = 1.0;
              }

              v764 = 0uLL;
              v765 = 0;
              v576 = vrev32q_s8(*v59);
              PDAhuePDA(v764.i32, *v576.i32, *&v576.i32[1], *&v576.i32[2], *&v576.i32[3], v575, *v46.i64, v15, v16, v46.f32[0], v572, *&v573, *(&v573 + 1), v17.f32[0]);
              if (v19)
              {
                v577 = bswap32(v765);
                *v59 = vrev32q_s8(v764);
                *v51 = v577;
              }

              else
              {
                *v59 = vrev32q_s8(v764);
              }

              v46.i64[0] = v753.i64[0];
              v17.i32[0] = v755.i32[0];
LABEL_1029:
              ++v59;
              v51 += 4 * v742;
              --v574;
            }

            while (v574);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1215;
            }
          }

        case 25:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v564 = bswap32(v17.u32[0]);
          v565 = v46.f32[1];
          v566 = v46.i64[1];
          while (1)
          {
            v567 = v757[0];
            do
            {
              if (v19)
              {
                v568 = COERCE_FLOAT(bswap32(*v51));
                if (v568 <= 0.0)
                {
                  *v59 = v751;
                  *v51 = v564;
                  goto LABEL_1015;
                }
              }

              else
              {
                v568 = 1.0;
              }

              v764 = 0uLL;
              v765 = 0;
              v569 = vrev32q_s8(*v59);
              PDAsaturationPDA(v764.i32, *v569.i32, *&v569.i32[1], *&v569.i32[2], *&v569.i32[3], v568, *v46.i64, v15, v16, v46.f32[0], v565, *&v566, *(&v566 + 1), v17.f32[0]);
              if (v19)
              {
                v570 = bswap32(v765);
                *v59 = vrev32q_s8(v764);
                *v51 = v570;
              }

              else
              {
                *v59 = vrev32q_s8(v764);
              }

              v46.i64[0] = v753.i64[0];
              v17.i32[0] = v755.i32[0];
LABEL_1015:
              ++v59;
              v51 += 4 * v742;
              --v567;
            }

            while (v567);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1215;
            }
          }

        case 26:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v681 = bswap32(v17.u32[0]);
          v682 = v46.f32[1];
          v683 = v46.i64[1];
          while (1)
          {
            v684 = v757[0];
            do
            {
              if (v19)
              {
                v685 = COERCE_FLOAT(bswap32(*v51));
                if (v685 <= 0.0)
                {
                  *v59 = v751;
                  *v51 = v681;
                  goto LABEL_1213;
                }
              }

              else
              {
                v685 = 1.0;
              }

              v764 = 0uLL;
              v765 = 0;
              v712 = vrev32q_s8(*v59);
              PDAluminosityPDA(v764.i32, v46.f32[0], v682, *&v683, *(&v683 + 1), v17.f32[0], *v46.i64, v15, v16, *v712.i32, *&v712.i32[1], *&v712.i32[2], *&v712.i32[3], v685);
              if (v19)
              {
                v686 = bswap32(v765);
                *v59 = vrev32q_s8(v764);
                *v51 = v686;
              }

              else
              {
                *v59 = vrev32q_s8(v764);
              }

              v46.i64[0] = v753.i64[0];
              v17.i32[0] = v755.i32[0];
LABEL_1213:
              ++v59;
              v51 += 4 * v742;
              --v684;
            }

            while (v684);
            v59 += v48;
            v51 += 4 * v52;
            if (!--v763)
            {
              goto LABEL_1215;
            }
          }

        case 27:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1256;
          }

          v527 = bswap32(v17.u32[0]);
          v528 = v46.f32[1];
          v529 = v46.i64[1];
          break;
        default:
          goto LABEL_1257;
      }

LABEL_940:
      v530 = v757[0];
      while (v19)
      {
        v531 = COERCE_FLOAT(bswap32(*v51));
        if (v531 > 0.0)
        {
          goto LABEL_945;
        }

        *v59 = v751;
        *v51 = v527;
LABEL_949:
        ++v59;
        v51 += 4 * v742;
        if (!--v530)
        {
          v59 += v48;
          v51 += 4 * v52;
          if (!--v763)
          {
            goto LABEL_1215;
          }

          goto LABEL_940;
        }
      }

      v531 = 1.0;
LABEL_945:
      v764 = 0uLL;
      v765 = 0;
      v532 = vrev32q_s8(*v59);
      PDAluminosityPDA(v764.i32, *v532.i32, *&v532.i32[1], *&v532.i32[2], *&v532.i32[3], v531, *v46.i64, v15, v16, v46.f32[0], v528, *&v529, *(&v529 + 1), v17.f32[0]);
      v533 = vrev32q_s8(v764);
      if (v19)
      {
        v534 = bswap32(v765);
        *v59 = v533;
        *v51 = v534;
      }

      else
      {
        *v59 = v533;
      }

      v46.i64[0] = v753.i64[0];
      v17.i32[0] = v755.i32[0];
      goto LABEL_949;
    }

    LODWORD(v757[0]) = *(v3 + 4);
    v763 = v25;
    v35 = *(v3 + 12);
    v36 = *(v3 + 16);
    v37 = *(v3 + 28) >> 4;
    v38 = v23;
    if (v19)
    {
      v729 = *(v3 + 32) >> 2;
      v730 = v19 + 4 * v729 * v36 + 4 * v35;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      v729 = 0;
      v730 = 0;
      v39 = 0;
    }

    v53 = *(v3 + 88);
    v728 = *(v3 + 40) + 16 * v37 * v36 + 16 * v35;
    v54 = *(v3 + 56);
    v55 = *(v3 + 60);
    v745 = *(v3 + 76) >> 4;
    if (v28 != 256)
    {
      v733 = *(v3 + 64);
      v732 = *(v3 + 68);
      if (v18)
      {
        v56 = *(v3 + 80) >> 2;
        v57 = 1;
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      v83 = &v53[v745 * v732];
      v39 &= 1u;
      if (v26)
      {
        v717 = *(v3 + 60);
        v718 = *(v3 + 56);
        v754 = v57;
        v756 = v39;
        LODWORD(v4) = 1;
        i64 = *(v3 + 88);
        v84 = i64;
        goto LABEL_53;
      }

      v88 = v38;
      v89 = v38;
      v752 = v729 - v39 * v38;
      if (v83)
      {
        v92 = v55 % v732;
        v717 = v55 % v732;
        v735 = *(v3 + 88);
        v93 = &v53[v745 * v92];
        v94 = v54 % v733;
        v53 = &v93[v94];
        v90 = &v93[v733];
        v718 = v94;
        i64 = v53;
        if (v57)
        {
          v734 = 0;
          v95 = &v18[v56 * v92 + v94];
          v731 = 1;
          v86 = v95;
          goto LABEL_63;
        }

        v734 = 0;
        v731 = 1;
LABEL_62:
        v95 = v18;
        v86 = v18;
LABEL_63:
        v87 = v730;
        v96 = v728;
        goto LABEL_66;
      }

      v717 = *(v3 + 60);
      v718 = *(v3 + 56);
      v731 = 1;
      v90 = *(v3 + 88);
      i64 = v90;
      v91 = *(v3 + 76) >> 4;
LABEL_61:
      v734 = 0;
      v735 = v53;
      v745 = v91 - v89;
      v56 -= v57 * v88;
      goto LABEL_62;
    }

    if (v18)
    {
      v56 = *(v3 + 80) >> 2;
      v18 += v56 * v55 + v54;
      v57 = 0xFFFFFFFFLL;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    v53 += v745 * v55 + v54;
    if (v745 == v37)
    {
      v80 = (v728 - v53) >> 4;
      if (v80 >= 1)
      {
        if (v80 <= v38)
        {
          v728 += 16 * v24;
          v53 += v24;
          v730 += 4 * (v39 & v24);
          v4 = 0xFFFFFFFFLL;
          v745 = *(v3 + 28) >> 4;
          v18 += (v57 & v24);
          goto LABEL_48;
        }

        v81 = v25 - 1;
        v82 = &v53[v37 * v81];
        if (v728 <= &v82[v38 - 1])
        {
          v728 += 16 * v37 * v81;
          v37 = -v37;
          v97 = v730 + 4 * v729 * v81;
          v729 = -v729;
          v730 = v97;
          v18 += v56 * v81;
          v39 &= 1u;
          v56 = -v56;
          v57 &= 1u;
          v4 = 1;
          v53 = v82;
          v745 = v37;
          goto LABEL_48;
        }
      }
    }

    v39 &= 1u;
    v57 &= 1u;
    v4 = 1;
LABEL_48:
    v717 = *(v3 + 60);
    v718 = *(v3 + 56);
    if (v26)
    {
      v754 = v57;
      v756 = v39;
      i64 = 0;
      v83 = 0;
      v84 = -1;
      v733 = v745;
      v732 = v56;
LABEL_53:
      v731 = v4;
      v736 = v37;
      shape_enum_clip_alloc(v2, v3, v26, v4, v37, 1, *(v3 + 104), *(v3 + 108), v38, v25);
      v50 = v85;
      v740 = v18;
      v86 = v18;
      v87 = v730;
      v752 = v729;
      if (!v85)
      {
        return 1;
      }

      while (2)
      {
        if (!shape_enum_clip_next(v50, &v762, &v761, v757, &v763))
        {
LABEL_1264:
          v79 = v50;
LABEL_1265:
          free(v79);
          return 1;
        }

        v734 = v50;
        v735 = v53;
        if (v83)
        {
          v37 = v736;
          v96 = (v728 + 16 * v736 * v761 + 16 * v762);
          v493 = (v761 + *(v22 + 60)) % v732;
          v89 = SLODWORD(v757[0]);
          v494 = (v762 + *(v22 + 56)) % v733;
          v495 = &v53[v745 * v493];
          v53 = &v495[v494];
          v90 = &v495[v733];
          v39 = v756;
          if (v756)
          {
            v87 = (v730 + 4 * v729 * v761 + 4 * v762);
          }

          v496 = v752;
          if (v756)
          {
            v496 = v729 - SLODWORD(v757[0]);
          }

          v752 = v496;
          v57 = v754;
          v95 = v740;
          if (v754)
          {
            v95 = &v18[v56 * v493 + v494];
            v86 = v95;
          }

          v88 = LODWORD(v757[0]);
          i64 = v495[v494].i64;
          v717 = (v761 + *(v22 + 60)) % v732;
          v718 = (v762 + *(v22 + 56)) % v733;
        }

        else
        {
          v497 = v762 * v731;
          v88 = LODWORD(v757[0]);
          v498 = LODWORD(v757[0]) * v731;
          v37 = v736;
          v96 = (v728 + 16 * v736 * v761 + 16 * v762 * v731);
          v89 = LODWORD(v757[0]) * v731;
          v53 += v761 * v733 + v762 * v731;
          v745 = v733 - LODWORD(v757[0]) * v731;
          v39 = v756;
          if (v756)
          {
            v87 = (v730 + 4 * v729 * v761 + 4 * v497);
          }

          v499 = v752;
          if (v756)
          {
            v499 = v729 - v498;
          }

          v752 = v499;
          v500 = &v18[v761 * v732 + v497];
          v501 = v732 - v498;
          v57 = v754;
          if (v754)
          {
            v86 = v500;
            v56 = v501;
          }

          v90 = v84;
          v95 = v740;
        }

LABEL_66:
        v756 = v39;
        v754 = v57;
        v736 = v37;
        v749 = v37 - v89;
        v737 = v56;
        v738 = v83;
        switch(v20)
        {
          case 0:
            v740 = v95;
            v713 = v90;
            v98 = v88;
            v99 = v749 - v88;
            v100 = v96[-v88 + 1].i64;
            if (v731 >= 0)
            {
              v100 = v96;
              v99 = v749 + v88;
            }

            v101 = v763;
            v102 = v763 - 1;
            v103 = (v100 + 16 * ((v99 * v102) & (v99 >> 63)));
            if (v99 < 0)
            {
              v99 = -v99;
            }

            v104 = v88;
            CGBlt_fillBytes(16 * v88, v763, 0, v103, 16 * v99);
            if (v39)
            {
              if (v731 < 0)
              {
                v105 = v752 - v98;
                v87 = &v87[-4 * v104 + 4];
              }

              else
              {
                v105 = v752 + v98;
              }

              v87 += 4 * ((v105 * v102) & (v105 >> 63));
              if (v105 < 0)
              {
                v105 = -v105;
              }

              v752 = v105;
              CGBlt_fillBytes(4 * v104, v101, 0, v87, 4 * v105);
            }

            goto LABEL_845;
          case 1:
            v259 = *(v22 + 1);
            v743 = v88;
            if (v259 == 2)
            {
              if (v88 >= 2 && (16 * v733) <= 0x40)
              {
                v9.i32[0] = 16 * v733;
                v470 = vcnt_s8(*v9.f32);
                v470.i16[0] = vaddlv_u8(v470);
                if (v470.i32[0] <= 1u)
                {
                  v740 = v95;
                  v713 = v90;
                  v471 = v763;
                  v53 = v735;
                  CGSFillDRAM64(v96, 16 * (v88 + v749), 16 * v88, v763, v735, 16 * v745, 16 * v733, v732, 16 * v718, v717);
                  if (v39)
                  {
                    v50 = v734;
                    if (v754)
                    {
                      CGSFillDRAM64(v87, 4 * (v743 + v752), 4 * v743, v471, v18, 4 * v56, 4 * v733, v732, 4 * v718, v717);
                    }

                    else
                    {
                      CGBlt_fillBytes(4 * v743, v471, 32831, v87, 4 * (v743 + v752));
                    }

                    goto LABEL_847;
                  }

LABEL_846:
                  v50 = v734;
LABEL_847:
                  v90 = v713;
                  goto LABEL_886;
                }
              }
            }

            else if (v259 == 1)
            {
              v740 = v95;
              v713 = v90;
              if (v731 < 0)
              {
                v260 = v745 - v88;
                v502 = 16 * v88 - 16;
                v53 = (v53 - v502);
                v261 = v749 - v88;
                v96 = (v96 - v502);
              }

              else
              {
                v260 = v745 + v88;
                v261 = v749 + v88;
              }

              v503 = v763 - 1;
              v504 = v53[(v260 * v503) & (v260 >> 63)].i8;
              if (v260 >= 0)
              {
                v505 = v260;
              }

              else
              {
                v505 = -v260;
              }

              if (v261 >= 0)
              {
                LODWORD(v506) = v261;
              }

              else
              {
                v506 = -v261;
              }

              v745 = v505;
              v750 = v763;
              CGBlt_copyBytes(16 * v88, v763, v504, v96[(v261 * v503) & (v261 >> 63)].i8, 16 * v505, 16 * v506);
              if (v39)
              {
                v507 = 4 * v743;
                v50 = v734;
                v53 = v735;
                if (v754)
                {
                  v508 = v56 - v743;
                  v509 = 4 * v743 - 4;
                  v510 = (v86 - v509);
                  v511 = v752 - v743;
                  v512 = &v87[-v509];
                  if (v731 >= 0)
                  {
                    v510 = v86;
                    v512 = v87;
                    v508 = v56 + v743;
                    v511 = v752 + v743;
                  }

                  v513 = (v508 * v503) & (v508 >> 63);
                  v86 = &v510[v513];
                  if (v508 >= 0)
                  {
                    v514 = v508;
                  }

                  else
                  {
                    v514 = -v508;
                  }

                  v87 = &v512[4 * ((v511 * v503) & (v511 >> 63))];
                  if (v511 >= 0)
                  {
                    v515 = v511;
                  }

                  else
                  {
                    v515 = -v511;
                  }

                  v752 = v515;
                  CGBlt_copyBytes(v507, v750, &v510[v513], v87, 4 * v514, 4 * v515);
                  v56 = v514;
                }

                else
                {
                  v516 = v752 - v743;
                  v517 = &v87[-4 * v743 + 4];
                  if (v731 >= 0)
                  {
                    v517 = v87;
                    v516 = v752 + v743;
                  }

                  v518 = (v516 * v503) & (v516 >> 63);
                  v87 = (v517 + 4 * v518);
                  if (v516 < 0)
                  {
                    v516 = -v516;
                  }

                  v752 = v516;
                  CGBlt_fillBytes(v507, v750, 32831, (v517 + 4 * v518), 4 * v516);
                }

                v83 = v738;
                goto LABEL_847;
              }

LABEL_845:
              v53 = v735;
              v56 = v737;
              v83 = v738;
              goto LABEL_846;
            }

            if (!v39)
            {
              v480 = v763;
              v428 = i64;
              do
              {
                v481 = v88;
                do
                {
                  *v96 = *v53;
                  v482 = &v53[v731];
                  if (v482 >= v90)
                  {
                    v483 = -v733;
                  }

                  else
                  {
                    v483 = 0;
                  }

                  v86 += v57 + v483;
                  v53 = &v482[v483];
                  v96 += v731;
                  --v481;
                }

                while (v481);
                if (v83)
                {
                  v484 = &v428[v745];
                  if (v484 >= v83)
                  {
                    v485 = -(v56 * v732);
                  }

                  else
                  {
                    v485 = 0;
                  }

                  v95 += 4 * v56 + 4 * v485;
                  if (v484 >= v83)
                  {
                    v486 = -(v745 * v732);
                  }

                  else
                  {
                    v486 = 0;
                  }

                  v428 = &v484[v486];
                  v90 += 16 * v486 + 16 * v745;
                  v86 = v95;
                  v53 = v428;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                --v480;
              }

              while (v480);
LABEL_864:
              i64 = v428;
              goto LABEL_865;
            }

            if (v57)
            {
              v472 = v763;
              v473 = i64;
              do
              {
                v474 = v88;
                do
                {
                  *v96 = *v53;
                  *v87 = *v86;
                  v475 = &v53[v731];
                  if (v475 >= v90)
                  {
                    v476 = -v733;
                  }

                  else
                  {
                    v476 = 0;
                  }

                  v86 += v57 + v476;
                  v53 = &v475[v476];
                  v87 += 4 * v39;
                  v96 += v731;
                  --v474;
                }

                while (v474);
                if (v83)
                {
                  v477 = &v473[v745];
                  if (v477 >= v83)
                  {
                    v478 = -(v56 * v732);
                  }

                  else
                  {
                    v478 = 0;
                  }

                  v95 += 4 * v56 + 4 * v478;
                  if (v477 >= v83)
                  {
                    v479 = -(v745 * v732);
                  }

                  else
                  {
                    v479 = 0;
                  }

                  v473 = &v477[v479];
                  v90 += 16 * v479 + 16 * v745;
                  v86 = v95;
                  v53 = v473;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                --v472;
              }

              while (v472);
              i64 = v473;
LABEL_865:
              v740 = v95;
              v763 = 0;
              goto LABEL_884;
            }

            v177 = i64;
            do
            {
              v487 = v757[0];
              do
              {
                *v96 = *v53;
                *v87 = 32831;
                v488 = &v53[v731];
                if (v488 >= v90)
                {
                  v489 = -v733;
                }

                else
                {
                  v489 = 0;
                }

                v86 += v489;
                v53 = &v488[v489];
                v87 += 4 * v39;
                v96 += v731;
                --v487;
              }

              while (v487);
              if (v83)
              {
                v490 = &v177[v745];
                if (v490 >= v83)
                {
                  v491 = -(v56 * v732);
                }

                else
                {
                  v491 = 0;
                }

                v95 += 4 * v56 + 4 * v491;
                if (v490 >= v83)
                {
                  v492 = -(v745 * v732);
                }

                else
                {
                  v492 = 0;
                }

                v177 = &v490[v492];
                v90 += 16 * v492 + 16 * v745;
                v86 = v95;
                v53 = v177;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
LABEL_882:
            i64 = v177;
            goto LABEL_883;
          case 2:
            v214 = 16 * v731;
            if (!v39)
            {
              v149 = i64;
              v436 = v763;
              while (1)
              {
                v437 = v88;
                do
                {
                  v438 = COERCE_FLOAT(bswap32(*v86));
                  if (v438 >= 1.0)
                  {
                    v439 = *v53;
                  }

                  else
                  {
                    if (v438 <= 0.0)
                    {
                      goto LABEL_736;
                    }

                    v439 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v53), vrev32q_s8(*v96), 1.0 - v438));
                  }

                  *v96 = v439;
LABEL_736:
                  v440 = &v53[v731];
                  if (v440 >= v90)
                  {
                    v441 = -v733;
                  }

                  else
                  {
                    v441 = 0;
                  }

                  v86 += v57 + v441;
                  v53 = &v440[v441];
                  v96 = (v96 + v214);
                  --v437;
                }

                while (v437);
                if (v83)
                {
                  v442 = &v149[v745];
                  if (v442 >= v83)
                  {
                    v443 = -(v56 * v732);
                  }

                  else
                  {
                    v443 = 0;
                  }

                  v95 += 4 * v56 + 4 * v443;
                  if (v442 >= v83)
                  {
                    v444 = -(v745 * v732);
                  }

                  else
                  {
                    v444 = 0;
                  }

                  v149 = &v442[v444];
                  v90 += 16 * v444 + 16 * v745;
                  v86 = v95;
                  v53 = v149;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                v763 = --v436;
                if (!v436)
                {
                  goto LABEL_815;
                }
              }
            }

            v149 = i64;
            do
            {
              v215 = v757[0];
              do
              {
                v216 = COERCE_FLOAT(bswap32(*v86));
                v217 = v216;
                if (v216 >= 1.0)
                {
                  *v96 = *v53;
                  *v87 = *v86;
                }

                else if (v216 > 0.0)
                {
                  v218 = bswap32(COERCE_UNSIGNED_INT(v216 + (COERCE_FLOAT(bswap32(*v87)) * (1.0 - v216))));
                  *v96 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v53), vrev32q_s8(*v96), 1.0 - v217));
                  *v87 = v218;
                }

                v219 = &v53[v731];
                if (v219 >= v90)
                {
                  v220 = -v733;
                }

                else
                {
                  v220 = 0;
                }

                v86 += v57 + v220;
                v53 = &v219[v220];
                v87 += 4 * v39;
                v96 = (v96 + v214);
                --v215;
              }

              while (v215);
              if (v83)
              {
                v221 = &v149[v745];
                if (v221 >= v83)
                {
                  v222 = -(v56 * v732);
                }

                else
                {
                  v222 = 0;
                }

                v95 += 4 * v56 + 4 * v222;
                if (v221 >= v83)
                {
                  v223 = -(v745 * v732);
                }

                else
                {
                  v223 = 0;
                }

                v149 = &v221[v223];
                v90 += 16 * v223 + 16 * v745;
                v86 = v95;
                v53 = v149;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
LABEL_815:
            i64 = v149;
LABEL_883:
            v740 = v95;
LABEL_884:
            v53 = v735;
LABEL_885:
            v50 = v734;
LABEL_886:
            if (!v50)
            {
              return 1;
            }

            v84 = v90;
            v762 = 0;
            v761 = 0;
            continue;
          case 3:
            v239 = 4 * v39;
            v240 = 16 * v731;
            if (v57)
            {
              v149 = i64;
              do
              {
                v241 = v757[0];
                do
                {
                  v242 = COERCE_FLOAT(bswap32(*v87));
                  v243 = v242;
                  if (v242 <= 0.0)
                  {
                    v96->i64[0] = 0;
                    v96->i64[1] = 0;
                    *v87 = 0;
                  }

                  else if (v242 >= 1.0)
                  {
                    *v96 = *v53;
                    *v87 = *v86;
                  }

                  else
                  {
                    v244 = bswap32(COERCE_UNSIGNED_INT(v242 * COERCE_FLOAT(bswap32(*v86))));
                    *v96 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v53), v243));
                    *v87 = v244;
                  }

                  v245 = &v53[v731];
                  if (v245 >= v90)
                  {
                    v246 = -v733;
                  }

                  else
                  {
                    v246 = 0;
                  }

                  v86 += v57 + v246;
                  v53 = &v245[v246];
                  v87 += v239;
                  v96 = (v96 + v240);
                  --v241;
                }

                while (v241);
                if (v83)
                {
                  v247 = &v149[v745];
                  if (v247 >= v83)
                  {
                    v248 = -(v56 * v732);
                  }

                  else
                  {
                    v248 = 0;
                  }

                  v95 += 4 * v56 + 4 * v248;
                  if (v247 >= v83)
                  {
                    v249 = -(v745 * v732);
                  }

                  else
                  {
                    v249 = 0;
                  }

                  v149 = &v247[v249];
                  v90 += 16 * v249 + 16 * v745;
                  v86 = v95;
                  v53 = v149;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                --v763;
              }

              while (v763);
              goto LABEL_815;
            }

            v177 = i64;
            v445 = v763;
            do
            {
              v446 = v88;
              do
              {
                v447 = COERCE_FLOAT(bswap32(*v87));
                if (v447 <= 0.0)
                {
                  v96->i64[0] = 0;
                  v96->i64[1] = 0;
                }

                else
                {
                  if (v447 >= 1.0)
                  {
                    v448 = *v53;
                  }

                  else
                  {
                    v448 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v53), v447));
                  }

                  *v96 = v448;
                }

                v449 = &v53[v731];
                if (v449 >= v90)
                {
                  v450 = -v733;
                }

                else
                {
                  v450 = 0;
                }

                v86 += v450;
                v53 = &v449[v450];
                v87 += v239;
                v96 = (v96 + v240);
                --v446;
              }

              while (v446);
              if (v83)
              {
                v451 = &v177[v745];
                if (v451 >= v83)
                {
                  v452 = -(v56 * v732);
                }

                else
                {
                  v452 = 0;
                }

                v95 += 4 * v56 + 4 * v452;
                if (v451 >= v83)
                {
                  v453 = -(v745 * v732);
                }

                else
                {
                  v453 = 0;
                }

                v177 = &v451[v453];
                v90 += 16 * v453 + 16 * v745;
                v86 = v95;
                v53 = v177;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              v763 = --v445;
            }

            while (v445);
            goto LABEL_882;
          case 4:
            v149 = i64;
            do
            {
              v158 = v757[0];
              do
              {
                v159 = 1.0 - COERCE_FLOAT(bswap32(*v87));
                if (v159 <= 0.0)
                {
                  v96->i64[0] = 0;
                  v96->i64[1] = 0;
                  *v87 = 0;
                }

                else
                {
                  if (v159 >= 1.0)
                  {
                    if (v57)
                    {
                      v161 = bswap32(*v86);
                    }

                    else
                    {
                      v161 = 1065353216;
                    }

                    v162 = bswap32(v161);
                  }

                  else
                  {
                    if (v57)
                    {
                      v160 = COERCE_FLOAT(bswap32(*v86));
                    }

                    else
                    {
                      v160 = 1.0;
                    }

                    v162 = bswap32(COERCE_UNSIGNED_INT(v159 * v160));
                    *v96 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v53), v159));
                  }

                  *v87 = v162;
                }

                v163 = &v53[v731];
                if (v163 >= v90)
                {
                  v164 = -v733;
                }

                else
                {
                  v164 = 0;
                }

                v86 += v57 + v164;
                v53 = &v163[v164];
                v87 += 4 * v39;
                v96 += v731;
                --v158;
              }

              while (v158);
              if (v83)
              {
                v165 = &v149[v745];
                if (v165 >= v83)
                {
                  v166 = -(v56 * v732);
                }

                else
                {
                  v166 = 0;
                }

                v95 += 4 * v56 + 4 * v166;
                if (v165 >= v83)
                {
                  v167 = -(v745 * v732);
                }

                else
                {
                  v167 = 0;
                }

                v149 = &v165[v167];
                v90 += 16 * v167 + 16 * v745;
                v86 = v95;
                v53 = v149;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_815;
          case 5:
            v177 = i64;
            do
            {
              v290 = v757[0];
              do
              {
                v291 = COERCE_FLOAT(bswap32(*v87));
                v292 = COERCE_FLOAT(bswap32(*v86));
                *v96 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v96), 1.0 - v292), vrev32q_s8(*v53), v291));
                *v87 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v292) * v291) + (v292 * v291)));
                v293 = &v53[v731];
                if (v293 >= v90)
                {
                  v294 = -v733;
                }

                else
                {
                  v294 = 0;
                }

                v86 += v57 + v294;
                v53 = &v293[v294];
                v87 += 4 * v39;
                v96 += v731;
                --v290;
              }

              while (v290);
              if (v83)
              {
                v295 = &v177[v745];
                if (v295 >= v83)
                {
                  v296 = -(v56 * v732);
                }

                else
                {
                  v296 = 0;
                }

                v95 += 4 * v56 + 4 * v296;
                if (v295 >= v83)
                {
                  v297 = -(v745 * v732);
                }

                else
                {
                  v297 = 0;
                }

                v177 = &v295[v297];
                v90 += 16 * v297 + 16 * v745;
                v86 = v95;
                v53 = v177;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_882;
          case 6:
            v149 = i64;
            while (1)
            {
              v324 = v757[0];
              do
              {
                v325 = COERCE_FLOAT(bswap32(*v87));
                v326 = 1.0 - v325;
                if ((1.0 - v325) >= 1.0)
                {
                  if (v57)
                  {
                    v328 = bswap32(*v86);
                  }

                  else
                  {
                    v328 = 1065353216;
                  }

                  v329 = *v53;
                  v330 = bswap32(v328);
                }

                else
                {
                  if (v326 <= 0.0)
                  {
                    goto LABEL_515;
                  }

                  if (v57)
                  {
                    v327 = COERCE_FLOAT(bswap32(*v86));
                  }

                  else
                  {
                    v327 = 1.0;
                  }

                  v330 = bswap32(COERCE_UNSIGNED_INT(v325 + (v327 * v326)));
                  v329 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v96), vrev32q_s8(*v53), v326));
                }

                *v96 = v329;
                *v87 = v330;
LABEL_515:
                v331 = &v53[v731];
                if (v331 >= v90)
                {
                  v332 = -v733;
                }

                else
                {
                  v332 = 0;
                }

                v86 += v57 + v332;
                v53 = &v331[v332];
                v87 += 4 * v39;
                v96 += v731;
                --v324;
              }

              while (v324);
              if (v83)
              {
                v333 = &v149[v745];
                if (v333 >= v83)
                {
                  v334 = -(v56 * v732);
                }

                else
                {
                  v334 = 0;
                }

                v95 += 4 * v56 + 4 * v334;
                if (v333 >= v83)
                {
                  v335 = -(v745 * v732);
                }

                else
                {
                  v335 = 0;
                }

                v149 = &v333[v335];
                v90 += 16 * v335 + 16 * v745;
                v86 = v95;
                v53 = v149;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              if (!--v763)
              {
                goto LABEL_815;
              }
            }

          case 7:
            if (v39)
            {
              v149 = i64;
              do
              {
                v250 = v757[0];
                do
                {
                  v251 = COERCE_FLOAT(bswap32(*v86));
                  v252 = v251;
                  if (v251 <= 0.0)
                  {
                    v96->i64[0] = 0;
                    v96->i64[1] = 0;
                    *v87 = 0;
                  }

                  else if (v251 < 1.0)
                  {
                    v253 = bswap32(COERCE_UNSIGNED_INT(v251 * COERCE_FLOAT(bswap32(*v87))));
                    *v96 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v96), v252));
                    *v87 = v253;
                  }

                  v254 = &v53[v731];
                  if (v254 >= v90)
                  {
                    v255 = -v733;
                  }

                  else
                  {
                    v255 = 0;
                  }

                  v86 += v57 + v255;
                  v53 = &v254[v255];
                  v87 += 4 * v39;
                  v96 += v731;
                  --v250;
                }

                while (v250);
                if (v83)
                {
                  v256 = &v149[v745];
                  if (v256 >= v83)
                  {
                    v257 = -(v56 * v732);
                  }

                  else
                  {
                    v257 = 0;
                  }

                  v95 += 4 * v56 + 4 * v257;
                  if (v256 >= v83)
                  {
                    v258 = -(v745 * v732);
                  }

                  else
                  {
                    v258 = 0;
                  }

                  v149 = &v256[v258];
                  v90 += 16 * v258 + 16 * v745;
                  v86 = v95;
                  v53 = v149;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                --v763;
              }

              while (v763);
            }

            else
            {
              v149 = i64;
              v454 = v763;
              do
              {
                v455 = v88;
                do
                {
                  v456 = COERCE_FLOAT(bswap32(*v86));
                  if (v456 <= 0.0)
                  {
                    v96->i64[0] = 0;
                    v96->i64[1] = 0;
                  }

                  else if (v456 < 1.0)
                  {
                    *v96 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v96), v456));
                  }

                  v457 = &v53[v731];
                  if (v457 >= v90)
                  {
                    v458 = -v733;
                  }

                  else
                  {
                    v458 = 0;
                  }

                  v86 += v57 + v458;
                  v53 = &v457[v458];
                  v96 += v731;
                  --v455;
                }

                while (v455);
                if (v83)
                {
                  v459 = &v149[v745];
                  if (v459 >= v83)
                  {
                    v460 = -(v56 * v732);
                  }

                  else
                  {
                    v460 = 0;
                  }

                  v95 += 4 * v56 + 4 * v460;
                  if (v459 >= v83)
                  {
                    v461 = -(v745 * v732);
                  }

                  else
                  {
                    v461 = 0;
                  }

                  v149 = &v459[v461];
                  v90 += 16 * v461 + 16 * v745;
                  v86 = v95;
                  v53 = v149;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                v763 = --v454;
              }

              while (v454);
            }

            goto LABEL_815;
          case 8:
            if (v39)
            {
              v149 = i64;
              do
              {
                v359 = v757[0];
                do
                {
                  v360 = 1.0 - COERCE_FLOAT(bswap32(*v86));
                  if (v360 <= 0.0)
                  {
                    v96->i64[0] = 0;
                    v96->i64[1] = 0;
                    *v87 = 0;
                  }

                  else if (v360 < 1.0)
                  {
                    v361 = bswap32(COERCE_UNSIGNED_INT(v360 * COERCE_FLOAT(bswap32(*v87))));
                    *v96 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v96), v360));
                    *v87 = v361;
                  }

                  v362 = &v53[v731];
                  if (v362 >= v90)
                  {
                    v363 = -v733;
                  }

                  else
                  {
                    v363 = 0;
                  }

                  v86 += v57 + v363;
                  v53 = &v362[v363];
                  v87 += 4 * v39;
                  v96 += v731;
                  --v359;
                }

                while (v359);
                if (v83)
                {
                  v364 = &v149[v745];
                  if (v364 >= v83)
                  {
                    v365 = -(v56 * v732);
                  }

                  else
                  {
                    v365 = 0;
                  }

                  v95 += 4 * v56 + 4 * v365;
                  if (v364 >= v83)
                  {
                    v366 = -(v745 * v732);
                  }

                  else
                  {
                    v366 = 0;
                  }

                  v149 = &v364[v366];
                  v90 += 16 * v366 + 16 * v745;
                  v86 = v95;
                  v53 = v149;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                --v763;
              }

              while (v763);
            }

            else
            {
              v149 = i64;
              v462 = v763;
              do
              {
                v463 = v88;
                do
                {
                  v464 = 1.0 - COERCE_FLOAT(bswap32(*v86));
                  if (v464 <= 0.0)
                  {
                    v96->i64[0] = 0;
                    v96->i64[1] = 0;
                  }

                  else if (v464 < 1.0)
                  {
                    *v96 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v96), v464));
                  }

                  v465 = &v53[v731];
                  if (v465 >= v90)
                  {
                    v466 = -v733;
                  }

                  else
                  {
                    v466 = 0;
                  }

                  v86 += v57 + v466;
                  v53 = &v465[v466];
                  v96 += v731;
                  --v463;
                }

                while (v463);
                if (v83)
                {
                  v467 = &v149[v745];
                  if (v467 >= v83)
                  {
                    v468 = -(v56 * v732);
                  }

                  else
                  {
                    v468 = 0;
                  }

                  v95 += 4 * v56 + 4 * v468;
                  if (v467 >= v83)
                  {
                    v469 = -(v745 * v732);
                  }

                  else
                  {
                    v469 = 0;
                  }

                  v149 = &v467[v469];
                  v90 += 16 * v469 + 16 * v745;
                  v86 = v95;
                  v53 = v149;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                v763 = --v462;
              }

              while (v462);
            }

            goto LABEL_815;
          case 9:
            v177 = i64;
            do
            {
              v178 = v757[0];
              do
              {
                v179 = COERCE_FLOAT(bswap32(*v87));
                v180 = COERCE_FLOAT(bswap32(*v86));
                *v96 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v96), v180), vrev32q_s8(*v53), 1.0 - v179));
                *v87 = bswap32(COERCE_UNSIGNED_INT((v179 * v180) + (v180 * (1.0 - v179))));
                v181 = &v53[v731];
                if (v181 >= v90)
                {
                  v182 = -v733;
                }

                else
                {
                  v182 = 0;
                }

                v86 += v57 + v182;
                v53 = &v181[v182];
                v87 += 4 * v39;
                v96 += v731;
                --v178;
              }

              while (v178);
              if (v83)
              {
                v183 = &v177[v745];
                if (v183 >= v83)
                {
                  v184 = -(v56 * v732);
                }

                else
                {
                  v184 = 0;
                }

                v95 += 4 * v56 + 4 * v184;
                if (v183 >= v83)
                {
                  v185 = -(v745 * v732);
                }

                else
                {
                  v185 = 0;
                }

                v177 = &v183[v185];
                v90 += 16 * v185 + 16 * v745;
                v86 = v95;
                v53 = v177;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_882;
          case 10:
            v177 = i64;
            do
            {
              v351 = v757[0];
              do
              {
                v352 = COERCE_FLOAT(bswap32(*v87));
                v353 = COERCE_FLOAT(bswap32(*v86));
                *v96 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v96), 1.0 - v353), vrev32q_s8(*v53), 1.0 - v352));
                *v87 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v353) * v352) + (v353 * (1.0 - v352))));
                v354 = &v53[v731];
                if (v354 >= v90)
                {
                  v355 = -v733;
                }

                else
                {
                  v355 = 0;
                }

                v86 += v57 + v355;
                v53 = &v354[v355];
                v87 += 4 * v39;
                v96 += v731;
                --v351;
              }

              while (v351);
              if (v83)
              {
                v356 = &v177[v745];
                if (v356 >= v83)
                {
                  v357 = -(v56 * v732);
                }

                else
                {
                  v357 = 0;
                }

                v95 += 4 * v56 + 4 * v357;
                if (v356 >= v83)
                {
                  v358 = -(v745 * v732);
                }

                else
                {
                  v358 = 0;
                }

                v177 = &v356[v358];
                v90 += 16 * v358 + 16 * v745;
                v86 = v95;
                v53 = v177;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_882;
          case 11:
            v148 = 16 * v731;
            if (v39)
            {
              v149 = i64;
              do
              {
                v150 = v757[0];
                do
                {
                  if (v57)
                  {
                    v10.i32[0] = bswap32(*v86);
                  }

                  else
                  {
                    v10.i32[0] = 1.0;
                  }

                  v151 = vrev32q_s8(*v96);
                  v152 = vrev32q_s8(*v53);
                  v13.i32[0] = bswap32(*v87);
                  v14.f32[0] = v10.f32[0] + v13.f32[0];
                  if ((v10.f32[0] + v13.f32[0]) > 1.0)
                  {
                    v14.f32[0] = 1.0;
                  }

                  v13 = vdupq_lane_s32(*v13.f32, 0);
                  v10 = vrev32q_s8(vaddq_f32(vsubq_f32(vdupq_lane_s32(*v10.f32, 0), v152), vsubq_f32(vdupq_lane_s32(*v14.f32, 0), vsubq_f32(v13, v151))));
                  *v96 = v10;
                  *v87 = bswap32(v14.u32[0]);
                  v153 = &v53[v731];
                  if (v153 >= v90)
                  {
                    v154 = -v733;
                  }

                  else
                  {
                    v154 = 0;
                  }

                  v86 += v57 + v154;
                  v53 = &v153[v154];
                  v87 += 4 * v39;
                  v96 = (v96 + v148);
                  --v150;
                }

                while (v150);
                if (v83)
                {
                  v155 = &v149[v745];
                  if (v155 >= v83)
                  {
                    v156 = -(v56 * v732);
                  }

                  else
                  {
                    v156 = 0;
                  }

                  v95 += 4 * v56 + 4 * v156;
                  if (v155 >= v83)
                  {
                    v157 = -(v745 * v732);
                  }

                  else
                  {
                    v157 = 0;
                  }

                  v149 = &v155[v157];
                  v90 += 16 * v157 + 16 * v745;
                  v86 = v95;
                  v53 = v149;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                --v763;
              }

              while (v763);
            }

            else
            {
              v149 = i64;
              v421 = v763;
              do
              {
                v422 = v88;
                do
                {
                  if (v57)
                  {
                    v9.i32[0] = bswap32(*v86);
                  }

                  else
                  {
                    v9.i32[0] = 1.0;
                  }

                  v9 = vrev32q_s8(vaddq_f32(vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vrev32q_s8(*v53)), vrev32q_s8(*v96)));
                  *v96 = v9;
                  v423 = &v53[v731];
                  if (v423 >= v90)
                  {
                    v424 = -v733;
                  }

                  else
                  {
                    v424 = 0;
                  }

                  v86 += v57 + v424;
                  v53 = &v423[v424];
                  v96 = (v96 + v148);
                  --v422;
                }

                while (v422);
                if (v83)
                {
                  v425 = &v149[v745];
                  if (v425 >= v83)
                  {
                    v426 = -(v56 * v732);
                  }

                  else
                  {
                    v426 = 0;
                  }

                  v95 += 4 * v56 + 4 * v426;
                  if (v425 >= v83)
                  {
                    v427 = -(v745 * v732);
                  }

                  else
                  {
                    v427 = 0;
                  }

                  v149 = &v425[v427];
                  v90 += 16 * v427 + 16 * v745;
                  v86 = v95;
                  v53 = v149;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                v763 = --v421;
              }

              while (v421);
            }

            goto LABEL_815;
          case 12:
            if (!v39)
            {
              v428 = i64;
              v429 = v763;
              do
              {
                v430 = v88;
                do
                {
                  *v96 = vrev32q_s8(vaddq_f32(vrev32q_s8(*v96), vrev32q_s8(*v53)));
                  v431 = &v53[v731];
                  if (v431 >= v90)
                  {
                    v432 = -v733;
                  }

                  else
                  {
                    v432 = 0;
                  }

                  v86 += v57 + v432;
                  v53 = &v431[v432];
                  v96 += v731;
                  --v430;
                }

                while (v430);
                if (v83)
                {
                  v433 = &v428[v745];
                  if (v433 >= v83)
                  {
                    v434 = -(v56 * v732);
                  }

                  else
                  {
                    v434 = 0;
                  }

                  v95 += 4 * v56 + 4 * v434;
                  if (v433 >= v83)
                  {
                    v435 = -(v745 * v732);
                  }

                  else
                  {
                    v435 = 0;
                  }

                  v428 = &v433[v435];
                  v90 += 16 * v435 + 16 * v745;
                  v86 = v95;
                  v53 = v428;
                }

                else
                {
                  v53 += v745;
                  v86 += v56;
                }

                v96 += v749;
                v87 += 4 * v752;
                --v429;
              }

              while (v429);
              goto LABEL_864;
            }

            v149 = i64;
            do
            {
              v168 = v757[0];
              do
              {
                if (v57)
                {
                  v169 = COERCE_FLOAT(bswap32(*v86));
                }

                else
                {
                  v169 = 1.0;
                }

                v170 = v169 + COERCE_FLOAT(bswap32(*v87));
                v171 = vaddq_f32(vrev32q_s8(*v96), vrev32q_s8(*v53));
                if (v170 > 1.0)
                {
                  v170 = 1.0;
                }

                *v96 = vrev32q_s8(v171);
                *v87 = bswap32(LODWORD(v170));
                v172 = &v53[v731];
                if (v172 >= v90)
                {
                  v173 = -v733;
                }

                else
                {
                  v173 = 0;
                }

                v86 += v57 + v173;
                v53 = &v172[v173];
                v87 += 4 * v39;
                v96 += v731;
                --v168;
              }

              while (v168);
              if (v83)
              {
                v174 = &v149[v745];
                if (v174 >= v83)
                {
                  v175 = -(v56 * v732);
                }

                else
                {
                  v175 = 0;
                }

                v95 += 4 * v56 + 4 * v175;
                if (v174 >= v83)
                {
                  v176 = -(v745 * v732);
                }

                else
                {
                  v176 = 0;
                }

                v149 = &v174[v176];
                v90 += 16 * v176 + 16 * v745;
                v86 = v95;
                v53 = v149;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_815;
          case 13:
            v9.i32[0] = 1.0;
            while (1)
            {
              v312 = v757[0];
              do
              {
                v11.i32[0] = 1.0;
                v10.i32[0] = 1.0;
                if (v57)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    goto LABEL_487;
                  }
                }

                if (v39)
                {
                  v11.i32[0] = bswap32(*v87);
                  if (v11.f32[0] <= 0.0)
                  {
                    v318 = v10.i32[0];
                    v10 = *v53;
                    v317 = bswap32(v318);
                    *v96 = *v53;
                    goto LABEL_485;
                  }
                }

                v313 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vrev32q_s8(*v96));
                v314 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v53));
                v315 = vmulq_f32(v313, v314);
                v316 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v9)), 0), vmlaq_n_f32(v315, v313, 1.0 - v10.f32[0]), v315);
                v10.f32[0] = (v11.f32[0] + v10.f32[0]) - (v11.f32[0] * v10.f32[0]);
                v11 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v11, v9)), 0), vmlaq_n_f32(v316, v314, 1.0 - v11.f32[0]), v316)));
                if (v39)
                {
                  v317 = bswap32(v10.u32[0]);
                  *v96 = v11;
LABEL_485:
                  *v87 = v317;
                  goto LABEL_487;
                }

                *v96 = v11;
LABEL_487:
                v319 = &v53[v731];
                if (v319 >= v90)
                {
                  v320 = -v733;
                }

                else
                {
                  v320 = 0;
                }

                v86 += v57 + v320;
                v53 = &v319[v320];
                v87 += 4 * v39;
                v96 += v731;
                --v312;
              }

              while (v312);
              if (v83)
              {
                v321 = i64 + 16 * v745;
                if (v321 >= v83)
                {
                  v322 = -(v56 * v732);
                }

                else
                {
                  v322 = 0;
                }

                v95 += 4 * v56 + 4 * v322;
                if (v321 >= v83)
                {
                  v323 = -(v745 * v732);
                }

                else
                {
                  v323 = 0;
                }

                v53 = (v321 + 16 * v323);
                v90 += 16 * v323 + 16 * v745;
                v86 = v95;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              if (!--v763)
              {
                goto LABEL_883;
              }
            }

          case 14:
            __asm { FMOV            V0.4S, #1.0 }

            while (1)
            {
              v140 = v757[0];
              do
              {
                v11.i32[0] = 1.0;
                v10.i32[0] = 1.0;
                if (v57)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    goto LABEL_135;
                  }
                }

                if (v39)
                {
                  v11.i32[0] = bswap32(*v87);
                  if (v11.f32[0] <= 0.0)
                  {
                    v142 = v10.i32[0];
                    v10 = *v53;
                    goto LABEL_133;
                  }
                }

                v12.f32[0] = (v10.f32[0] + v11.f32[0]) - (v11.f32[0] * v10.f32[0]);
                v141 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vrev32q_s8(*v96));
                v11 = vmlaq_f32(v141, vsubq_f32(_Q0, v141), vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v53)));
                v10 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v12.f32, 0), v11));
                if (v39)
                {
                  v142 = v12.i32[0];
LABEL_133:
                  *v96 = v10;
                  *v87 = bswap32(v142);
                  goto LABEL_135;
                }

                *v96 = v10;
LABEL_135:
                v143 = &v53[v731];
                if (v143 >= v90)
                {
                  v144 = -v733;
                }

                else
                {
                  v144 = 0;
                }

                v86 += v57 + v144;
                v53 = &v143[v144];
                v87 += 4 * v39;
                v96 += v731;
                --v140;
              }

              while (v140);
              if (v83)
              {
                v145 = i64 + 16 * v745;
                if (v145 >= v83)
                {
                  v146 = -(v56 * v732);
                }

                else
                {
                  v146 = 0;
                }

                v95 += 4 * v56 + 4 * v146;
                if (v145 >= v83)
                {
                  v147 = -(v745 * v732);
                }

                else
                {
                  v147 = 0;
                }

                v53 = (v145 + 16 * v147);
                v90 += 16 * v147 + 16 * v745;
                v86 = v95;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              if (!--v763)
              {
                goto LABEL_883;
              }
            }

          case 15:
            v740 = v95;
            v715 = v18;
            v224 = v57;
            v722 = -(v56 * v732);
            v225 = 4 * v39;
            v226 = 16 * v731;
            v227 = -v733;
            do
            {
              v228 = v757[0];
              do
              {
                v229 = 1.0;
                v14.i32[0] = 1.0;
                if (!v57 || (v14.i32[0] = bswap32(*v86), v14.f32[0] > 0.0))
                {
                  if (v39 && (v229 = COERCE_FLOAT(bswap32(*v87)), v229 <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(v14.u32[0]);
                  }

                  else
                  {
                    v230 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v231 = vrev32q_s8(*v96);
                    v706 = vrev32q_s8(*v53);
                    PDAoverlayPDA(v764.i32, *v231.i32, *&v231.i32[1], *&v231.i32[2], *&v231.i32[3], v229, *v14.i64, *v706.i64, v16, *v706.i32, *&v706.i32[1], *&v706.i32[2], *&v706.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    v232 = vrev32q_s8(v764);
                    if (v756)
                    {
                      v233 = bswap32(v765);
                      *v96 = v232;
                      *v87 = v233;
                    }

                    else
                    {
                      *v96 = v232;
                    }

                    LODWORD(v57) = v754;
                    v90 = v230;
                    v227 = -v733;
                    v226 = 16 * v731;
                  }
                }

                v234 = &v53[v731];
                if (v234 >= v90)
                {
                  v235 = v227;
                }

                else
                {
                  v235 = 0;
                }

                v86 += v224 + v235;
                v53 = &v234[v235];
                v87 += v225;
                v96 = (v96 + v226);
                --v228;
              }

              while (v228);
              if (v83)
              {
                v236 = i64 + 16 * v745;
                v56 = v737;
                v237 = v722;
                if (v236 < v83)
                {
                  v237 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v237);
                v238 = -(v745 * v732);
                if (v236 < v83)
                {
                  v238 = 0;
                }

                v53 = (v236 + 16 * v238);
                v90 += 16 * v238 + 16 * v745;
                v740 += 4 * v737 + 4 * v237;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_691;
          case 16:
            v9.i32[0] = 1.0;
            while (1)
            {
              v121 = v757[0];
              do
              {
                v11.i32[0] = 1.0;
                v10.i32[0] = 1.0;
                if (v57)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    goto LABEL_109;
                  }
                }

                if (v39)
                {
                  v11.i32[0] = bswap32(*v87);
                  if (v11.f32[0] <= 0.0)
                  {
                    v129 = v10.i32[0];
                    v10 = *v53;
                    v128 = bswap32(v129);
                    *v96 = *v53;
                    goto LABEL_107;
                  }
                }

                v122 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vrev32q_s8(*v96));
                v123 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v53));
                v124 = vmulq_n_f32(v122, v10.f32[0]);
                v125 = vmulq_n_f32(v123, v11.f32[0]);
                v126 = vbslq_s8(vcgtq_f32(v124, v125), v125, v124);
                v127 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v9)), 0), vmlaq_n_f32(v126, v122, 1.0 - v10.f32[0]), v126);
                v10.f32[0] = (v11.f32[0] + v10.f32[0]) - (v11.f32[0] * v10.f32[0]);
                v11 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v11, v9)), 0), vmlaq_n_f32(v127, v123, 1.0 - v11.f32[0]), v127)));
                if (v39)
                {
                  v128 = bswap32(v10.u32[0]);
                  *v96 = v11;
LABEL_107:
                  *v87 = v128;
                  goto LABEL_109;
                }

                *v96 = v11;
LABEL_109:
                v130 = &v53[v731];
                if (v130 >= v90)
                {
                  v131 = -v733;
                }

                else
                {
                  v131 = 0;
                }

                v86 += v57 + v131;
                v53 = &v130[v131];
                v87 += 4 * v39;
                v96 += v731;
                --v121;
              }

              while (v121);
              if (v83)
              {
                v132 = i64 + 16 * v745;
                if (v132 >= v83)
                {
                  v133 = -(v56 * v732);
                }

                else
                {
                  v133 = 0;
                }

                v95 += 4 * v56 + 4 * v133;
                if (v132 >= v83)
                {
                  v134 = -(v745 * v732);
                }

                else
                {
                  v134 = 0;
                }

                v53 = (v132 + 16 * v134);
                v90 += 16 * v134 + 16 * v745;
                v86 = v95;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              if (!--v763)
              {
                goto LABEL_883;
              }
            }

          case 17:
            v9.i32[0] = 1.0;
            while (1)
            {
              v262 = v757[0];
              do
              {
                v11.i32[0] = 1.0;
                v10.i32[0] = 1.0;
                if (v57)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    goto LABEL_396;
                  }
                }

                if (v39)
                {
                  v11.i32[0] = bswap32(*v87);
                  if (v11.f32[0] <= 0.0)
                  {
                    v270 = v10.i32[0];
                    v10 = *v53;
                    v269 = bswap32(v270);
                    *v96 = *v53;
                    goto LABEL_394;
                  }
                }

                v263 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vrev32q_s8(*v96));
                v264 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v53));
                v265 = vmulq_n_f32(v263, v10.f32[0]);
                v266 = vmulq_n_f32(v264, v11.f32[0]);
                v267 = vbslq_s8(vcgtq_f32(v266, v265), v266, v265);
                v268 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v9)), 0), vmlaq_n_f32(v267, v263, 1.0 - v10.f32[0]), v267);
                v10.f32[0] = (v11.f32[0] + v10.f32[0]) - (v11.f32[0] * v10.f32[0]);
                v11 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v11, v9)), 0), vmlaq_n_f32(v268, v264, 1.0 - v11.f32[0]), v268)));
                if (v39)
                {
                  v269 = bswap32(v10.u32[0]);
                  *v96 = v11;
LABEL_394:
                  *v87 = v269;
                  goto LABEL_396;
                }

                *v96 = v11;
LABEL_396:
                v271 = &v53[v731];
                if (v271 >= v90)
                {
                  v272 = -v733;
                }

                else
                {
                  v272 = 0;
                }

                v86 += v57 + v272;
                v53 = &v271[v272];
                v87 += 4 * v39;
                v96 += v731;
                --v262;
              }

              while (v262);
              if (v83)
              {
                v273 = i64 + 16 * v745;
                if (v273 >= v83)
                {
                  v274 = -(v56 * v732);
                }

                else
                {
                  v274 = 0;
                }

                v95 += 4 * v56 + 4 * v274;
                if (v273 >= v83)
                {
                  v275 = -(v745 * v732);
                }

                else
                {
                  v275 = 0;
                }

                v53 = (v273 + 16 * v275);
                v90 += 16 * v275 + 16 * v745;
                v86 = v95;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              if (!--v763)
              {
                goto LABEL_883;
              }
            }

          case 18:
            v740 = v95;
            v715 = v18;
            v336 = v57;
            v725 = -(v56 * v732);
            v337 = 4 * v39;
            v338 = 16 * v731;
            v339 = -v733;
            do
            {
              v340 = v757[0];
              do
              {
                v341 = 1.0;
                v14.i32[0] = 1.0;
                if (!v57 || (v14.i32[0] = bswap32(*v86), v14.f32[0] > 0.0))
                {
                  if (v39 && (v341 = COERCE_FLOAT(bswap32(*v87)), v341 <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(v14.u32[0]);
                  }

                  else
                  {
                    v342 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v343 = vrev32q_s8(*v96);
                    v709 = vrev32q_s8(*v53);
                    PDAcolordodgePDA(v764.i32, *v343.i32, *&v343.i32[1], *&v343.i32[2], *&v343.i32[3], v341, *v14.i64, *v709.i64, v16, *v709.i32, *&v709.i32[1], *&v709.i32[2], *&v709.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    v344 = vrev32q_s8(v764);
                    if (v756)
                    {
                      v345 = bswap32(v765);
                      *v96 = v344;
                      *v87 = v345;
                    }

                    else
                    {
                      *v96 = v344;
                    }

                    LODWORD(v57) = v754;
                    v90 = v342;
                    v339 = -v733;
                    v338 = 16 * v731;
                  }
                }

                v346 = &v53[v731];
                if (v346 >= v90)
                {
                  v347 = v339;
                }

                else
                {
                  v347 = 0;
                }

                v86 += v336 + v347;
                v53 = &v346[v347];
                v87 += v337;
                v96 = (v96 + v338);
                --v340;
              }

              while (v340);
              if (v83)
              {
                v348 = i64 + 16 * v745;
                v56 = v737;
                v349 = v725;
                if (v348 < v83)
                {
                  v349 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v349);
                v350 = -(v745 * v732);
                if (v348 < v83)
                {
                  v350 = 0;
                }

                v53 = (v348 + 16 * v350);
                v90 += 16 * v350 + 16 * v745;
                v740 += 4 * v737 + 4 * v349;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_691;
          case 19:
            v740 = v95;
            v715 = v18;
            v383 = v57;
            v726 = -(v56 * v732);
            v384 = 4 * v39;
            v385 = 16 * v731;
            v386 = -v733;
            do
            {
              v387 = v757[0];
              do
              {
                v388 = 1.0;
                v14.i32[0] = 1.0;
                if (!v57 || (v14.i32[0] = bswap32(*v86), v14.f32[0] > 0.0))
                {
                  if (v39 && (v388 = COERCE_FLOAT(bswap32(*v87)), v388 <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(v14.u32[0]);
                  }

                  else
                  {
                    v389 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v390 = vrev32q_s8(*v96);
                    v710 = vrev32q_s8(*v53);
                    PDAcolorburnPDA(v764.i32, *v390.i32, *&v390.i32[1], *&v390.i32[2], *&v390.i32[3], v388, *v14.i64, *v710.i64, v16, *v710.i32, *&v710.i32[1], *&v710.i32[2], *&v710.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    if (v756)
                    {
                      v391 = bswap32(v765);
                      *v96 = vrev32q_s8(v764);
                      *v87 = v391;
                    }

                    else
                    {
                      *v96 = vrev32q_s8(v764);
                    }

                    LODWORD(v57) = v754;
                    v90 = v389;
                    v386 = -v733;
                    v385 = 16 * v731;
                  }
                }

                v392 = &v53[v731];
                if (v392 >= v90)
                {
                  v393 = v386;
                }

                else
                {
                  v393 = 0;
                }

                v86 += v383 + v393;
                v53 = &v392[v393];
                v87 += v384;
                v96 = (v96 + v385);
                --v387;
              }

              while (v387);
              if (v83)
              {
                v394 = i64 + 16 * v745;
                v56 = v737;
                v395 = v726;
                if (v394 < v83)
                {
                  v395 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v395);
                v396 = -(v745 * v732);
                if (v394 < v83)
                {
                  v396 = 0;
                }

                v53 = (v394 + 16 * v396);
                v90 += 16 * v396 + 16 * v745;
                v740 += 4 * v737 + 4 * v395;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_691;
          case 20:
            v740 = v95;
            v715 = v18;
            v276 = v57;
            v723 = -(v56 * v732);
            v277 = 4 * v39;
            v278 = 16 * v731;
            v279 = -v733;
            do
            {
              v280 = v757[0];
              do
              {
                v13.i32[0] = 1.0;
                v14.i32[0] = 1.0;
                if (!v57 || (v14.i32[0] = bswap32(*v86), v14.f32[0] > 0.0))
                {
                  if (v39 && (v13.i32[0] = bswap32(*v87), v13.f32[0] <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(v14.u32[0]);
                  }

                  else
                  {
                    v281 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v282 = vrev32q_s8(*v96);
                    v707 = vrev32q_s8(*v53);
                    PDAsoftlightPDA(&v764, *v282.i8, *&v282.i32[1], *&v282.i32[2], *&v282.i32[3], *v13.i64, *v14.f32, *v707.i64, v16, v3, v26, v4, v37, v57, v88, v90, *v707.i8, *&v707.i32[2], *&v707.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    v283 = vrev32q_s8(v764);
                    if (v756)
                    {
                      v284 = bswap32(v765);
                      *v96 = v283;
                      *v87 = v284;
                    }

                    else
                    {
                      *v96 = v283;
                    }

                    v57 = v754;
                    v90 = v281;
                    v279 = -v733;
                    v278 = 16 * v731;
                  }
                }

                v285 = &v53[v731];
                if (v285 >= v90)
                {
                  v286 = v279;
                }

                else
                {
                  v286 = 0;
                }

                v86 += v276 + v286;
                v53 = &v285[v286];
                v87 += v277;
                v96 = (v96 + v278);
                --v280;
              }

              while (v280);
              if (v83)
              {
                v287 = i64 + 16 * v745;
                v56 = v737;
                v288 = v723;
                if (v287 < v83)
                {
                  v288 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v288);
                v289 = -(v745 * v732);
                if (v287 < v83)
                {
                  v289 = 0;
                }

                v53 = (v287 + 16 * v289);
                v90 += 16 * v289 + 16 * v745;
                v740 += 4 * v737 + 4 * v288;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_691;
          case 21:
            v740 = v95;
            v715 = v18;
            v298 = v57;
            v724 = -(v56 * v732);
            v299 = 4 * v39;
            v300 = 16 * v731;
            v301 = -v733;
            do
            {
              v302 = v757[0];
              do
              {
                v303 = 1.0;
                v14.i32[0] = 1.0;
                if (!v57 || (v14.i32[0] = bswap32(*v86), v14.f32[0] > 0.0))
                {
                  if (v39 && (v303 = COERCE_FLOAT(bswap32(*v87)), v303 <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(v14.u32[0]);
                  }

                  else
                  {
                    v304 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v305 = vrev32q_s8(*v96);
                    v708 = vrev32q_s8(*v53);
                    PDAhardlightPDA(v764.i32, *v305.i32, *&v305.i32[1], *&v305.i32[2], *&v305.i32[3], v303, *v14.i64, *v708.i64, v16, *v708.i32, *&v708.i32[1], *&v708.i32[2], *&v708.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    if (v756)
                    {
                      v306 = bswap32(v765);
                      *v96 = vrev32q_s8(v764);
                      *v87 = v306;
                    }

                    else
                    {
                      *v96 = vrev32q_s8(v764);
                    }

                    LODWORD(v57) = v754;
                    v90 = v304;
                    v301 = -v733;
                    v300 = 16 * v731;
                  }
                }

                v307 = &v53[v731];
                if (v307 >= v90)
                {
                  v308 = v301;
                }

                else
                {
                  v308 = 0;
                }

                v86 += v298 + v308;
                v53 = &v307[v308];
                v87 += v299;
                v96 = (v96 + v300);
                --v302;
              }

              while (v302);
              if (v83)
              {
                v309 = i64 + 16 * v745;
                v56 = v737;
                v310 = v724;
                if (v309 < v83)
                {
                  v310 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v310);
                v311 = -(v745 * v732);
                if (v309 < v83)
                {
                  v311 = 0;
                }

                v53 = (v309 + 16 * v311);
                v90 += 16 * v311 + 16 * v745;
                v740 += 4 * v737 + 4 * v310;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_691;
          case 22:
            while (1)
            {
              v367 = v757[0];
              do
              {
                v9.i32[0] = 1.0;
                v10.i32[0] = 1.0;
                if (v57)
                {
                  v10.i32[0] = bswap32(*v86);
                  if (v10.f32[0] <= 0.0)
                  {
                    goto LABEL_603;
                  }
                }

                if (v39)
                {
                  v9.i32[0] = bswap32(*v87);
                  if (v9.f32[0] <= 0.0)
                  {
                    v9 = *v53;
                    v377 = bswap32(v10.u32[0]);
                    goto LABEL_601;
                  }
                }

                v368 = *v53;
                *v368.i32 = (v9.f32[0] + v10.f32[0]) - (v9.f32[0] * v10.f32[0]);
                v369 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vrev32q_s8(*v96));
                v370 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v53));
                v371 = vmulq_n_f32(v369, v10.f32[0]);
                v372 = vmulq_n_f32(v370, v9.f32[0]);
                v373 = vsubq_f32(vaddq_f32(v369, v370), v371);
                v374 = vsubq_f32(v371, v372);
                v375 = vaddq_f32(vsubq_f32(v373, v372), vbslq_s8(vcltzq_f32(v374), vnegq_f32(v374), v374));
                v10 = vdupq_lane_s32(*v368.i8, 0);
                v376 = vsubq_f32(v10, v375);
                if (v39)
                {
                  v377 = bswap32(v368.u32[0]);
                  v9 = vrev32q_s8(v376);
LABEL_601:
                  *v96 = v9;
                  *v87 = v377;
                  goto LABEL_603;
                }

                v9 = vrev32q_s8(v376);
                *v96 = v9;
LABEL_603:
                v378 = &v53[v731];
                if (v378 >= v90)
                {
                  v379 = -v733;
                }

                else
                {
                  v379 = 0;
                }

                v86 += v57 + v379;
                v53 = &v378[v379];
                v87 += 4 * v39;
                v96 += v731;
                --v367;
              }

              while (v367);
              if (v83)
              {
                v380 = i64 + 16 * v745;
                if (v380 >= v83)
                {
                  v381 = -(v56 * v732);
                }

                else
                {
                  v381 = 0;
                }

                v95 += 4 * v56 + 4 * v381;
                if (v380 >= v83)
                {
                  v382 = -(v745 * v732);
                }

                else
                {
                  v382 = 0;
                }

                v53 = (v380 + 16 * v382);
                v90 += 16 * v382 + 16 * v745;
                v86 = v95;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v86 += v56;
              }

              v96 += v749;
              v87 += 4 * v752;
              if (!--v763)
              {
                goto LABEL_883;
              }
            }

          case 23:
            v397.i64[0] = 0xC0000000C0000000;
            v397.i64[1] = 0xC0000000C0000000;
            break;
          case 24:
            v740 = v95;
            v715 = v18;
            v200 = v57;
            v721 = -(v56 * v732);
            v201 = 4 * v39;
            v202 = 16 * v731;
            v203 = -v733;
            do
            {
              v204 = v757[0];
              do
              {
                v205 = 1.0;
                v14.i32[0] = 1.0;
                if (!v57 || (v14.i32[0] = bswap32(*v86), v14.f32[0] > 0.0))
                {
                  if (v39 && (v205 = COERCE_FLOAT(bswap32(*v87)), v205 <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(v14.u32[0]);
                  }

                  else
                  {
                    v206 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v207 = vrev32q_s8(*v96);
                    v705 = vrev32q_s8(*v53);
                    PDAhuePDA(v764.i32, *v207.i32, *&v207.i32[1], *&v207.i32[2], *&v207.i32[3], v205, *v14.i64, *v705.i64, v16, *v705.i32, *&v705.i32[1], *&v705.i32[2], *&v705.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    if (v756)
                    {
                      v208 = bswap32(v765);
                      *v96 = vrev32q_s8(v764);
                      *v87 = v208;
                    }

                    else
                    {
                      *v96 = vrev32q_s8(v764);
                    }

                    LODWORD(v57) = v754;
                    v90 = v206;
                    v203 = -v733;
                    v202 = 16 * v731;
                  }
                }

                v209 = &v53[v731];
                if (v209 >= v90)
                {
                  v210 = v203;
                }

                else
                {
                  v210 = 0;
                }

                v86 += v200 + v210;
                v53 = &v209[v210];
                v87 += v201;
                v96 = (v96 + v202);
                --v204;
              }

              while (v204);
              if (v83)
              {
                v211 = i64 + 16 * v745;
                v56 = v737;
                v212 = v721;
                if (v211 < v83)
                {
                  v212 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v212);
                v213 = -(v745 * v732);
                if (v211 < v83)
                {
                  v213 = 0;
                }

                v53 = (v211 + 16 * v213);
                v90 += 16 * v213 + 16 * v745;
                v740 += 4 * v737 + 4 * v212;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_691;
          case 25:
            v740 = v95;
            v715 = v18;
            v186 = v57;
            v720 = -(v56 * v732);
            v187 = 4 * v39;
            v188 = 16 * v731;
            v189 = -v733;
            do
            {
              v190 = v757[0];
              do
              {
                v191 = 1.0;
                v14.i32[0] = 1.0;
                if (!v57 || (v14.i32[0] = bswap32(*v86), v14.f32[0] > 0.0))
                {
                  if (v39 && (v191 = COERCE_FLOAT(bswap32(*v87)), v191 <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(v14.u32[0]);
                  }

                  else
                  {
                    v192 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v193 = vrev32q_s8(*v96);
                    v704 = vrev32q_s8(*v53);
                    PDAsaturationPDA(v764.i32, *v193.i32, *&v193.i32[1], *&v193.i32[2], *&v193.i32[3], v191, *v14.i64, *v704.i64, v16, *v704.i32, *&v704.i32[1], *&v704.i32[2], *&v704.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    if (v756)
                    {
                      v194 = bswap32(v765);
                      *v96 = vrev32q_s8(v764);
                      *v87 = v194;
                    }

                    else
                    {
                      *v96 = vrev32q_s8(v764);
                    }

                    LODWORD(v57) = v754;
                    v90 = v192;
                    v189 = -v733;
                    v188 = 16 * v731;
                  }
                }

                v195 = &v53[v731];
                if (v195 >= v90)
                {
                  v196 = v189;
                }

                else
                {
                  v196 = 0;
                }

                v86 += v186 + v196;
                v53 = &v195[v196];
                v87 += v187;
                v96 = (v96 + v188);
                --v190;
              }

              while (v190);
              if (v83)
              {
                v197 = i64 + 16 * v745;
                v56 = v737;
                v198 = v720;
                if (v197 < v83)
                {
                  v198 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v198);
                v199 = -(v745 * v732);
                if (v197 < v83)
                {
                  v199 = 0;
                }

                v53 = (v197 + 16 * v199);
                v90 += 16 * v199 + 16 * v745;
                v740 += 4 * v737 + 4 * v198;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_691;
          case 26:
            v740 = v95;
            v715 = v18;
            v407 = v57;
            v727 = -(v56 * v732);
            v408 = 4 * v39;
            v409 = 16 * v731;
            v410 = -v733;
            do
            {
              v411 = v757[0];
              do
              {
                v14.i32[0] = 1.0;
                v412 = 1.0;
                if (!v57 || (v412 = COERCE_FLOAT(bswap32(*v86)), v412 > 0.0))
                {
                  if (v39 && (v14.i32[0] = bswap32(*v87), v14.f32[0] <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(LODWORD(v412));
                  }

                  else
                  {
                    v413 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v414 = vrev32q_s8(*v53);
                    v711 = vrev32q_s8(*v96);
                    PDAluminosityPDA(v764.i32, *v414.i32, *&v414.i32[1], *&v414.i32[2], *&v414.i32[3], v412, *v14.i64, *v711.i64, v16, *v711.i32, *&v711.i32[1], *&v711.i32[2], *&v711.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    if (v756)
                    {
                      v415 = bswap32(v765);
                      *v96 = vrev32q_s8(v764);
                      *v87 = v415;
                    }

                    else
                    {
                      *v96 = vrev32q_s8(v764);
                    }

                    LODWORD(v57) = v754;
                    v90 = v413;
                    v410 = -v733;
                    v409 = 16 * v731;
                  }
                }

                v416 = &v53[v731];
                if (v416 >= v90)
                {
                  v417 = v410;
                }

                else
                {
                  v417 = 0;
                }

                v86 += v407 + v417;
                v53 = &v416[v417];
                v87 += v408;
                v96 = (v96 + v409);
                --v411;
              }

              while (v411);
              if (v83)
              {
                v418 = i64 + 16 * v745;
                v56 = v737;
                v419 = v727;
                if (v418 < v83)
                {
                  v419 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v419);
                v420 = -(v745 * v732);
                if (v418 < v83)
                {
                  v420 = 0;
                }

                v53 = (v418 + 16 * v420);
                v90 += 16 * v420 + 16 * v745;
                v740 += 4 * v737 + 4 * v419;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
            goto LABEL_691;
          case 27:
            v740 = v95;
            v715 = v18;
            v106 = v57;
            v719 = -(v56 * v732);
            v107 = 4 * v39;
            v108 = 16 * v731;
            v109 = -v733;
            do
            {
              v110 = v757[0];
              do
              {
                v111 = 1.0;
                v14.i32[0] = 1.0;
                if (!v57 || (v14.i32[0] = bswap32(*v86), v14.f32[0] > 0.0))
                {
                  if (v39 && (v111 = COERCE_FLOAT(bswap32(*v87)), v111 <= 0.0))
                  {
                    *v96 = *v53;
                    *v87 = bswap32(v14.u32[0]);
                  }

                  else
                  {
                    v112 = v90;
                    v764 = 0uLL;
                    v765 = 0;
                    v113 = vrev32q_s8(*v96);
                    v703 = vrev32q_s8(*v53);
                    PDAluminosityPDA(v764.i32, *v113.i32, *&v113.i32[1], *&v113.i32[2], *&v113.i32[3], v111, *v14.i64, *v703.i64, v16, *v703.i32, *&v703.i32[1], *&v703.i32[2], *&v703.i32[3], v14.f32[0]);
                    LODWORD(v39) = v756;
                    v114 = vrev32q_s8(v764);
                    if (v756)
                    {
                      v115 = bswap32(v765);
                      *v96 = v114;
                      *v87 = v115;
                    }

                    else
                    {
                      *v96 = v114;
                    }

                    LODWORD(v57) = v754;
                    v90 = v112;
                    v109 = -v733;
                    v108 = 16 * v731;
                  }
                }

                v116 = &v53[v731];
                if (v116 >= v90)
                {
                  v117 = v109;
                }

                else
                {
                  v117 = 0;
                }

                v86 += v106 + v117;
                v53 = &v116[v117];
                v87 += v107;
                v96 = (v96 + v108);
                --v110;
              }

              while (v110);
              if (v83)
              {
                v118 = i64 + 16 * v745;
                v56 = v737;
                v119 = v719;
                if (v118 < v83)
                {
                  v119 = 0;
                }

                v86 = (v740 + 4 * v737 + 4 * v119);
                v120 = -(v745 * v732);
                if (v118 < v83)
                {
                  v120 = 0;
                }

                v53 = (v118 + 16 * v120);
                v90 += 16 * v120 + 16 * v745;
                v740 += 4 * v737 + 4 * v119;
                i64 = v53;
              }

              else
              {
                v53 += v745;
                v56 = v737;
                v86 += v737;
              }

              v96 += v749;
              v87 += 4 * v752;
              --v763;
            }

            while (v763);
LABEL_691:
            v18 = v715;
            LODWORD(v20) = v716;
            v22 = v714;
            v53 = v735;
            goto LABEL_885;
          default:
            goto LABEL_883;
        }

        break;
      }

LABEL_643:
      v398 = v757[0];
      while (1)
      {
        v11.i32[0] = 1.0;
        v10.i32[0] = 1.0;
        if (!v57 || (v10.i32[0] = bswap32(*v86), v10.f32[0] > 0.0))
        {
          if (v39 && (v11.i32[0] = bswap32(*v87), v11.f32[0] <= 0.0))
          {
            v401 = v10.i32[0];
            v10 = *v53;
          }

          else
          {
            v399 = *v96;
            *v399.i32 = (v11.f32[0] + v10.f32[0]) - (v11.f32[0] * v10.f32[0]);
            v11 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vrev32q_s8(*v96));
            v400 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vrev32q_s8(*v53));
            v10 = vrev32q_s8(vsubq_f32(vdupq_lane_s32(*v399.i8, 0), vmlaq_f32(vaddq_f32(v11, v400), v397, vmulq_f32(v400, v11))));
            if (!v39)
            {
              *v96 = v10;
              goto LABEL_653;
            }

            v401 = v399.i32[0];
          }

          *v96 = v10;
          *v87 = bswap32(v401);
        }

LABEL_653:
        v402 = &v53[v731];
        if (v402 >= v90)
        {
          v403 = -v733;
        }

        else
        {
          v403 = 0;
        }

        v86 += v57 + v403;
        v53 = &v402[v403];
        v87 += 4 * v39;
        v96 += v731;
        if (!--v398)
        {
          if (v83)
          {
            v404 = i64 + 16 * v745;
            if (v404 >= v83)
            {
              v405 = -(v56 * v732);
            }

            else
            {
              v405 = 0;
            }

            v95 += 4 * v56 + 4 * v405;
            if (v404 >= v83)
            {
              v406 = -(v745 * v732);
            }

            else
            {
              v406 = 0;
            }

            v53 = (v404 + 16 * v406);
            v90 += 16 * v406 + 16 * v745;
            v86 = v95;
            i64 = v53;
          }

          else
          {
            v53 += v745;
            v86 += v56;
          }

          v96 += v749;
          v87 += 4 * v752;
          if (!--v763)
          {
            goto LABEL_883;
          }

          goto LABEL_643;
        }
      }
    }

    v83 = 0;
    i64 = 0;
    v88 = v38;
    v89 = v4 * v38;
    v752 = v729 - v39 * v38;
    v90 = -1;
    v731 = v4;
    v732 = v56;
    v91 = v745;
    v733 = v745;
    goto LABEL_61;
  }

  v27 = *(v3 + 128);
  if ((v27 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      CMYKF_mark_constmask(v3, v20, *v9.i64, v10, v11, v12, v13, v14, v15, v16, v26, v4, v5, v6, v27, v8);
    }

    else
    {
      CMYKF_mark_pixelmask(v3, v20, *v9.i64, v10, v11, v12, v13, v14, v15, v16);
    }

    return 1;
  }

  v40 = *(v3 + 112);
  v41 = *(v3 + 116);
  v42 = (v40 + 15) & 0xFFFFFFF0;
  v43 = v42 * v41;
  if (v43 <= 4096)
  {
    v45 = &v764;
    goto LABEL_37;
  }

  v44 = malloc_type_malloc(v43, 0x100004077774924uLL);
  if (v44)
  {
    v45 = v44;
    v26 = *(v22 + 136);
    LODWORD(v27) = *(v22 + 128);
LABEL_37:
    CGSConvertBitsToMask(v26, *(v22 + 124), v45, v42, v40, v41, v27);
    v73 = *(v22 + 112);
    v757[6] = *(v22 + 96);
    v758 = v73;
    v74 = *(v22 + 144);
    v759 = *(v22 + 128);
    v760 = v74;
    v75 = *(v22 + 48);
    v757[2] = *(v22 + 32);
    v757[3] = v75;
    v76 = *(v22 + 80);
    v757[4] = *(v22 + 64);
    v757[5] = v76;
    v77 = *v22;
    v78 = *(v22 + 16);
    v757[0] = *v22;
    v757[1] = v78;
    HIDWORD(v758) = (v40 + 15) & 0xFFFFFFF0;
    *(&v759 + 1) = v45;
    if (BYTE1(v757[0]) << 8 == 1024)
    {
      CMYKF_mark_constmask(v757, v20, *&v77, v78, v67, v68, v69, v70, v71, v72, v61, v62, v63, v64, v65, v66);
    }

    else
    {
      CMYKF_mark_pixelmask(v757, v20, *&v77, v78, v67, v68, v69, v70, v71, v72);
    }

    if (v45 == &v764)
    {
      return 1;
    }

    v79 = v45;
    goto LABEL_1265;
  }

  return 1;
}

void CMYKF_mark_constmask(uint64_t a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *(a1 + 48);
  v17 = *(a1 + 136);
  v18 = *(a1 + 96);
  if (v18)
  {
    v19 = COERCE_FLOAT(bswap32(*v18));
  }

  else
  {
    v19 = 1.0;
  }

  v20 = *(a1 + 4);
  v21 = *(a1 + 8);
  v22 = **(a1 + 88);
  v23 = *(a1 + 12);
  v24 = *(a1 + 16);
  if (v16)
  {
    v25 = *(a1 + 32) >> 2;
    v26 = (v16 + 4 * v25 * v24 + 4 * v23);
    v27 = 1;
    if (!v17)
    {
      return;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v27 = 0;
    if (!v17)
    {
      return;
    }
  }

  v28 = v25 - v20;
  if (v16)
  {
    v25 -= v20;
  }

  v29 = *(a1 + 28) >> 4;
  v30 = vrev32q_s8(v22);
  v31 = (*(a1 + 40) + 16 * v29 * v24 + 16 * v23);
  v32 = *(a1 + 124);
  v33 = v17 + *(a1 + 108) * v32 + *(a1 + 104);
  v34 = v32 - v20;
  v35 = v29 - v20;
  v346 = v30;
  v347 = v19;
  v36 = v35;
  v37 = v34;
  v345 = v20;
  v38 = v25;
  switch(a2)
  {
    case 0:
      if (v16)
      {
        v39 = 4 * v27;
        do
        {
          v40 = v20;
          do
          {
            v41 = *v33;
            if (*v33)
            {
              if (v41 == 255)
              {
                v31->i64[0] = 0;
                v31->i64[1] = 0;
                *v26 = 0;
              }

              else
              {
                v42 = (v41 ^ 0xFFu) * 0.0039216;
                v43 = bswap32(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(bswap32(*v26))));
                *v31 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v31), v42));
                *v26 = v43;
              }
            }

            ++v33;
            ++v31;
            v26 = (v26 + v39);
            --v40;
          }

          while (v40);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v261 = v20;
          do
          {
            v262 = *v33;
            if (*v33)
            {
              if (v262 == 255)
              {
                v31->i64[0] = 0;
                v31->i64[1] = 0;
              }

              else
              {
                *v31 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v31), (v262 ^ 0xFFu) * 0.0039216));
              }
            }

            ++v33;
            ++v31;
            --v261;
          }

          while (v261);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 1:
      v140 = v33 & 3;
      if (!v16)
      {
        v263 = -1 << (8 * v140);
        if ((v33 & 3) != 0)
        {
          v264 = v33 & 0xFC;
        }

        else
        {
          v264 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v265 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v263 = -1;
          v265 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v266 = &v31[-(v33 & 3)];
        }

        else
        {
          v266 = v31;
        }

        if ((v33 & 3) != 0)
        {
          v267 = v140 + v20;
        }

        else
        {
          v267 = v20;
        }

        if (((v267 + v264) & 3) != 0)
        {
          v268 = 4 - ((v267 + v264) & 3);
          v140 += v268;
          v269 = 0xFFFFFFFF >> (8 * v268);
          if (v267 >= 4)
          {
            v270 = v269;
          }

          else
          {
            v270 = 0;
          }

          if (v267 >= 4)
          {
            v269 = -1;
          }

          v263 &= v269;
        }

        else
        {
          v270 = 0;
        }

        v333 = v34 - v140;
        v334 = v267 >> 2;
        v335 = v35 - v140;
        while (1)
        {
          v336 = *v265 & v263;
          v337 = v334;
          v338 = v270;
          if (!v336)
          {
            goto LABEL_527;
          }

LABEL_525:
          if (v336 == -1)
          {
            break;
          }

          while (1)
          {
            if (v336)
            {
              v340 = v22;
              if (v336 != 255)
              {
                v340 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v336 * 0.0039216), vrev32q_s8(*v266), 1.0 - (v336 * 0.0039216)));
              }

              *v266 = v340;
            }

            if (BYTE1(v336))
            {
              v341 = v22;
              if (BYTE1(v336) != 255)
              {
                v341 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, BYTE1(v336) * 0.0039216), vrev32q_s8(v266[1]), 1.0 - (BYTE1(v336) * 0.0039216)));
              }

              v266[1] = v341;
            }

            if (BYTE2(v336))
            {
              v342 = v22;
              if (BYTE2(v336) != 255)
              {
                v342 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, BYTE2(v336) * 0.0039216), vrev32q_s8(v266[2]), 1.0 - (BYTE2(v336) * 0.0039216)));
              }

              v266[2] = v342;
            }

            v343 = HIBYTE(v336);
            if (v343 == 255)
            {
              goto LABEL_545;
            }

            if (v343)
            {
              v266[3] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v343 * 0.0039216), vrev32q_s8(v266[3]), 1.0 - (v343 * 0.0039216)));
            }

LABEL_527:
            while (1)
            {
              v339 = v337;
              v266 += 4;
              --v337;
              ++v265;
              if (v339 < 2)
              {
                break;
              }

              v336 = *v265;
              if (*v265)
              {
                goto LABEL_525;
              }
            }

            if (!v338)
            {
              break;
            }

            v338 = 0;
            v336 = *v265 & v270;
          }

          v265 = (v265 + v333);
          v266 += v335;
          if (!--v21)
          {
            return;
          }
        }

        *v266 = v22;
        v266[1] = v22;
        v266[2] = v22;
LABEL_545:
        v266[3] = v22;
        goto LABEL_527;
      }

      v141 = -1 << (8 * v140);
      v142 = &v31[-(v33 & 3)];
      if ((v33 & 3) != 0)
      {
        v143 = v33 & 0xFC;
      }

      else
      {
        v143 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v144 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v141 = -1;
        v144 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v145 = &v26[-(v33 & 3)];
      }

      else
      {
        v145 = v26;
      }

      if ((v33 & 3) != 0)
      {
        v146 = v140 + v20;
      }

      else
      {
        v142 = v31;
        v146 = v20;
      }

      if (((v146 + v143) & 3) != 0)
      {
        v147 = 4 - ((v146 + v143) & 3);
        v140 += v147;
        v148 = 0xFFFFFFFF >> (8 * v147);
        if (v146 >= 4)
        {
          v149 = v148;
        }

        else
        {
          v149 = 0;
        }

        if (v146 >= 4)
        {
          v148 = -1;
        }

        v141 &= v148;
      }

      else
      {
        v149 = 0;
      }

      v300 = v34 - v140;
      v301 = v146 >> 2;
      v302 = v35 - v140;
      v303 = bswap32(LODWORD(v19));
      v304 = v28 - v140;
      do
      {
        v305 = *v144 & v141;
        v306 = v301;
        v307 = v149;
        if (!v305)
        {
          goto LABEL_478;
        }

LABEL_476:
        if (v305 == -1)
        {
          *v142 = v22;
          *v145 = v303;
          v142[1] = v22;
          v145[1] = v303;
          v142[2] = v22;
          v145[2] = v303;
LABEL_496:
          v142[3] = v22;
          v145[3] = v303;
          goto LABEL_478;
        }

        while (1)
        {
          if (v305)
          {
            v309 = v22;
            v310 = v303;
            if (v305 != 255)
            {
              v311 = v305 * 0.0039216;
              v310 = bswap32(COERCE_UNSIGNED_INT((v19 * v311) + (COERCE_FLOAT(bswap32(*v145)) * (1.0 - v311))));
              v309 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v311), vrev32q_s8(*v142), 1.0 - v311));
            }

            *v142 = v309;
            *v145 = v310;
          }

          if (BYTE1(v305))
          {
            v312 = v22;
            v313 = v303;
            if (BYTE1(v305) != 255)
            {
              v314 = BYTE1(v305) * 0.0039216;
              v313 = bswap32(COERCE_UNSIGNED_INT((v19 * v314) + (COERCE_FLOAT(bswap32(v145[1])) * (1.0 - v314))));
              v312 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v314), vrev32q_s8(v142[1]), 1.0 - v314));
            }

            v142[1] = v312;
            v145[1] = v313;
          }

          if (BYTE2(v305))
          {
            v315 = v22;
            v316 = v303;
            if (BYTE2(v305) != 255)
            {
              v317 = BYTE2(v305) * 0.0039216;
              v316 = bswap32(COERCE_UNSIGNED_INT((v19 * v317) + (COERCE_FLOAT(bswap32(v145[2])) * (1.0 - v317))));
              v315 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v317), vrev32q_s8(v142[2]), 1.0 - v317));
            }

            v142[2] = v315;
            v145[2] = v316;
          }

          v318 = HIBYTE(v305);
          if (v318 == 255)
          {
            goto LABEL_496;
          }

          if (v318)
          {
            v319 = v318 * 0.0039216;
            v320 = bswap32(COERCE_UNSIGNED_INT((v19 * v319) + (COERCE_FLOAT(bswap32(v145[3])) * (1.0 - v319))));
            v142[3] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v319), vrev32q_s8(v142[3]), 1.0 - v319));
            v145[3] = v320;
          }

LABEL_478:
          while (1)
          {
            v308 = v306;
            v142 += 4;
            v145 += 4;
            --v306;
            ++v144;
            if (v308 < 2)
            {
              break;
            }

            v305 = *v144;
            if (*v144)
            {
              goto LABEL_476;
            }
          }

          if (!v307)
          {
            break;
          }

          v307 = 0;
          v305 = *v144 & v149;
        }

        v144 = (v144 + v300);
        v142 += v302;
        v145 += v304;
        --v21;
      }

      while (v21);
      return;
    case 2:
      *v22.i32 = 1.0 - v19;
      v109 = v33 & 3;
      if (v16)
      {
        v110 = -1 << (8 * v109);
        v111 = &v31[-(v33 & 3)];
        if ((v33 & 3) != 0)
        {
          v112 = v33 & 0xFC;
        }

        else
        {
          v112 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v113 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v110 = -1;
          v113 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v114 = &v26[-(v33 & 3)];
        }

        else
        {
          v114 = v26;
        }

        if ((v33 & 3) != 0)
        {
          v115 = v109 + v20;
        }

        else
        {
          v111 = v31;
          v115 = v20;
        }

        if (((v115 + v112) & 3) != 0)
        {
          v116 = 4 - ((v115 + v112) & 3);
          v109 += v116;
          v117 = 0xFFFFFFFF >> (8 * v116);
          if (v115 >= 4)
          {
            v118 = v117;
          }

          else
          {
            v118 = 0;
          }

          if (v115 >= 4)
          {
            v117 = -1;
          }

          v110 &= v117;
        }

        else
        {
          v118 = 0;
        }

        v274 = v34 - v109;
        v275 = v35 - v109;
        v276 = v115 >> 2;
        v277 = vdupq_lane_s32(*v22.i8, 0);
        v278 = v28 - v109;
        while (1)
        {
          v279 = *v113 & v110;
          v280 = v276;
          v281 = v118;
          if (!v279)
          {
            goto LABEL_457;
          }

LABEL_455:
          if (v279 == -1)
          {
            break;
          }

          while (1)
          {
            if (v279)
            {
              v288 = v279 * 0.0039216;
              v289 = 1.0 - (v19 * v288);
              v290 = bswap32(COERCE_UNSIGNED_INT((v19 * v288) + (COERCE_FLOAT(bswap32(*v114)) * v289)));
              *v111 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v288), vrev32q_s8(*v111), v289));
              *v114 = v290;
            }

            if ((v279 & 0xFF00) != 0)
            {
              v291 = BYTE1(v279) * 0.0039216;
              v292 = 1.0 - (v19 * v291);
              v293 = bswap32(COERCE_UNSIGNED_INT((v19 * v291) + (COERCE_FLOAT(bswap32(v114[1])) * v292)));
              v111[1] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v291), vrev32q_s8(v111[1]), v292));
              v114[1] = v293;
            }

            if ((v279 & 0xFF0000) != 0)
            {
              v294 = BYTE2(v279) * 0.0039216;
              v295 = 1.0 - (v19 * v294);
              v296 = bswap32(COERCE_UNSIGNED_INT((v19 * v294) + (COERCE_FLOAT(bswap32(v114[2])) * v295)));
              v111[2] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v294), vrev32q_s8(v111[2]), v295));
              v114[2] = v296;
            }

            v297 = HIBYTE(v279);
            if (v297)
            {
              v298 = v297 * 0.0039216;
              v299 = v19 * v298;
              v285 = vmlaq_n_f32(vmulq_n_f32(v30, v298), vrev32q_s8(v111[3]), 1.0 - (v19 * v298));
              v286 = v299 + (COERCE_FLOAT(bswap32(v114[3])) * (1.0 - v299));
              goto LABEL_470;
            }

LABEL_457:
            while (1)
            {
              v287 = v280;
              v111 += 4;
              v114 += 4;
              --v280;
              ++v113;
              if (v287 < 2)
              {
                break;
              }

              v279 = *v113;
              if (*v113)
              {
                goto LABEL_455;
              }
            }

            if (!v281)
            {
              break;
            }

            v281 = 0;
            v279 = *v113 & v118;
          }

          v113 = (v113 + v274);
          v111 += v275;
          v114 += v278;
          if (!--v21)
          {
            return;
          }
        }

        v282 = bswap32(COERCE_UNSIGNED_INT(v19 + (COERCE_FLOAT(bswap32(*v114)) * *v22.i32)));
        *v111 = vrev32q_s8(vmlaq_f32(v30, v277, vrev32q_s8(*v111)));
        *v114 = v282;
        v283 = bswap32(COERCE_UNSIGNED_INT(v19 + (COERCE_FLOAT(bswap32(v114[1])) * *v22.i32)));
        v111[1] = vrev32q_s8(vmlaq_f32(v30, v277, vrev32q_s8(v111[1])));
        v114[1] = v283;
        v284 = bswap32(COERCE_UNSIGNED_INT(v19 + (COERCE_FLOAT(bswap32(v114[2])) * *v22.i32)));
        v111[2] = vrev32q_s8(vmlaq_f32(v30, v277, vrev32q_s8(v111[2])));
        v114[2] = v284;
        v285 = vmlaq_f32(v30, v277, vrev32q_s8(v111[3]));
        v286 = v19 + (COERCE_FLOAT(bswap32(v114[3])) * *v22.i32);
LABEL_470:
        v111[3].i32[0] = bswap32(v285.u32[0]);
        *(v111[3].i64 + 4) = vrev32_s8(vext_s8(*v285.i8, *&vextq_s8(v285, v285, 8uLL), 4uLL));
        v111[3].i32[3] = bswap32(v285.u32[3]);
        v114[3] = bswap32(LODWORD(v286));
        goto LABEL_457;
      }

      v250 = -1 << (8 * v109);
      if ((v33 & 3) != 0)
      {
        v251 = v33 & 0xFC;
      }

      else
      {
        v251 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v252 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v250 = -1;
        v252 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v253 = &v31[-(v33 & 3)];
      }

      else
      {
        v253 = v31;
      }

      if ((v33 & 3) != 0)
      {
        v254 = v109 + v20;
      }

      else
      {
        v254 = v20;
      }

      if (((v254 + v251) & 3) != 0)
      {
        v255 = 4 - ((v254 + v251) & 3);
        v109 += v255;
        v256 = 0xFFFFFFFF >> (8 * v255);
        if (v254 >= 4)
        {
          v257 = v256;
        }

        else
        {
          v257 = 0;
        }

        if (v254 >= 4)
        {
          v256 = -1;
        }

        v250 &= v256;
      }

      else
      {
        v257 = 0;
      }

      v321 = v34 - v109;
      v322 = v254 >> 2;
      v323 = vdupq_lane_s32(*v22.i8, 0);
      v324 = v35 - v109;
      do
      {
        v325 = *v252 & v250;
        v326 = v322;
        v327 = v257;
        if (!v325)
        {
          goto LABEL_506;
        }

LABEL_504:
        if (v325 == -1)
        {
          v328 = vrev32q_s8(vmlaq_f32(v30, v323, vrev32q_s8(v253[1])));
          *v253 = vrev32q_s8(vmlaq_f32(v30, v323, vrev32q_s8(*v253)));
          v253[1] = v328;
          v329 = v253[3];
          v253[2] = vrev32q_s8(vmlaq_f32(v30, v323, vrev32q_s8(v253[2])));
          v330 = vmlaq_f32(v30, v323, vrev32q_s8(v329));
LABEL_519:
          v253[3].i32[0] = bswap32(v330.u32[0]);
          *(v253[3].i64 + 4) = vrev32_s8(vext_s8(*v330.i8, *&vextq_s8(v330, v330, 8uLL), 4uLL));
          v253[3].i32[3] = bswap32(v330.u32[3]);
          goto LABEL_506;
        }

        while (1)
        {
          if (v325)
          {
            *v253 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, v325 * 0.0039216), vrev32q_s8(*v253), 1.0 - (v19 * (v325 * 0.0039216))));
          }

          if ((v325 & 0xFF00) != 0)
          {
            v253[1] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, BYTE1(v325) * 0.0039216), vrev32q_s8(v253[1]), 1.0 - (v19 * (BYTE1(v325) * 0.0039216))));
          }

          if ((v325 & 0xFF0000) != 0)
          {
            v253[2] = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v30, BYTE2(v325) * 0.0039216), vrev32q_s8(v253[2]), 1.0 - (v19 * (BYTE2(v325) * 0.0039216))));
          }

          v332 = HIBYTE(v325);
          if (v332)
          {
            v330 = vmlaq_n_f32(vmulq_n_f32(v30, v332 * 0.0039216), vrev32q_s8(v253[3]), 1.0 - (v19 * (v332 * 0.0039216)));
            goto LABEL_519;
          }

LABEL_506:
          while (1)
          {
            v331 = v326;
            v253 += 4;
            --v326;
            ++v252;
            if (v331 < 2)
            {
              break;
            }

            v325 = *v252;
            if (*v252)
            {
              goto LABEL_504;
            }
          }

          if (!v327)
          {
            break;
          }

          v327 = 0;
          v325 = *v252 & v257;
        }

        v252 = (v252 + v321);
        v253 += v324;
        --v21;
      }

      while (v21);
      return;
    case 3:
      v125 = 4 * v27;
      do
      {
        v126 = v20;
        do
        {
          v127 = *v33;
          if (*v33)
          {
            if (v127 == 255)
            {
              v128 = COERCE_FLOAT(bswap32(*v26));
              v129 = bswap32(COERCE_UNSIGNED_INT(v19 * v128));
              v130 = vmulq_n_f32(v30, v128);
            }

            else
            {
              v131 = v127 * 0.0039216;
              v132 = COERCE_FLOAT(bswap32(*v26));
              v133 = v131 * v132;
              v129 = bswap32(COERCE_UNSIGNED_INT((v19 * (v131 * v132)) + (v132 * (1.0 - v131))));
              v130 = vmlaq_n_f32(vmulq_n_f32(v30, v133), vrev32q_s8(*v31), 1.0 - v131);
            }

            *v31 = vrev32q_s8(v130);
            *v26 = v129;
          }

          ++v33;
          ++v31;
          v26 = (v26 + v125);
          --v126;
        }

        while (v126);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 4:
      v79 = 4 * v27;
      do
      {
        v80 = v20;
        do
        {
          v81 = *v33;
          if (*v33)
          {
            if (v81 == 255)
            {
              v82 = 1.0 - COERCE_FLOAT(bswap32(*v26));
              v83 = bswap32(COERCE_UNSIGNED_INT(v19 * v82));
              v84 = vmulq_n_f32(v30, v82);
            }

            else
            {
              v85 = v81 * 0.0039216;
              v86 = COERCE_FLOAT(bswap32(*v26));
              v87 = v85 * (1.0 - v86);
              v83 = bswap32(COERCE_UNSIGNED_INT((v19 * v87) + (v86 * (1.0 - v85))));
              v84 = vmlaq_n_f32(vmulq_n_f32(v30, v87), vrev32q_s8(*v31), 1.0 - v85);
            }

            *v31 = vrev32q_s8(v84);
            *v26 = v83;
          }

          ++v33;
          ++v31;
          v26 = (v26 + v79);
          --v80;
        }

        while (v80);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 5:
      v167 = 4 * v27;
      do
      {
        v168 = v20;
        do
        {
          if (*v33)
          {
            v169 = COERCE_FLOAT(bswap32(*v26));
            v170 = *v33 * 0.0039216;
            v171 = 1.0 - (v19 * v170);
            *v31 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v31), v171), vmulq_n_f32(v30, v170), v169));
            *v26 = bswap32(COERCE_UNSIGNED_INT((v171 * v169) + ((v19 * v170) * v169)));
          }

          ++v33;
          ++v31;
          v26 = (v26 + v167);
          --v168;
        }

        while (v168);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 6:
      v188 = 4 * v27;
      while (1)
      {
        v189 = v20;
        do
        {
          v190 = *v33;
          if (!*v33)
          {
            goto LABEL_280;
          }

          v191 = COERCE_FLOAT(bswap32(*v26));
          v192 = 1.0 - v191;
          if ((1.0 - v191) >= 1.0)
          {
            v196 = v190 * 0.0039216;
            v194 = bswap32(COERCE_UNSIGNED_INT(v19 * v196));
            v195 = vmulq_n_f32(v30, v196);
          }

          else
          {
            if (v192 <= 0.0)
            {
              goto LABEL_280;
            }

            v193 = v190 * 0.0039216;
            v194 = bswap32(COERCE_UNSIGNED_INT(v191 + ((v19 * v193) * v192)));
            v195 = vmlaq_n_f32(vrev32q_s8(*v31), vmulq_n_f32(v30, v193), v192);
          }

          *v31 = vrev32q_s8(v195);
          *v26 = v194;
LABEL_280:
          ++v33;
          ++v31;
          v26 = (v26 + v188);
          --v189;
        }

        while (v189);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 7:
      if (v16)
      {
        v134 = 4 * v27;
        do
        {
          v135 = v20;
          do
          {
            v136 = *v33;
            if (*v33)
            {
              if (v136 == 255)
              {
                v137 = vmulq_n_f32(vrev32q_s8(*v31), v19);
                v138 = v19 * COERCE_FLOAT(bswap32(*v26));
              }

              else
              {
                v139 = (v19 * (v136 * 0.0039216)) + (1.0 - (v136 * 0.0039216));
                v137 = vmulq_n_f32(vrev32q_s8(*v31), v139);
                v138 = v139 * COERCE_FLOAT(bswap32(*v26));
              }

              *v31 = vrev32q_s8(v137);
              *v26 = bswap32(LODWORD(v138));
            }

            ++v33;
            ++v31;
            v26 = (v26 + v134);
            --v135;
          }

          while (v135);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v258 = v20;
          do
          {
            v259 = *v33;
            if (*v33)
            {
              if (v259 == 255)
              {
                v260 = vmulq_n_f32(vrev32q_s8(*v31), v19);
              }

              else
              {
                v260 = vmulq_n_f32(vrev32q_s8(*v31), (v19 * (v259 * 0.0039216)) + (1.0 - (v259 * 0.0039216)));
              }

              *v31 = vrev32q_s8(v260);
            }

            ++v33;
            ++v31;
            --v258;
          }

          while (v258);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 8:
      v208 = 1.0 - v19;
      if (v16)
      {
        v209 = 4 * v27;
        do
        {
          v210 = v20;
          do
          {
            v211 = *v33;
            if (*v33)
            {
              if (v211 == 255)
              {
                v212 = vmulq_n_f32(vrev32q_s8(*v31), v208);
                v213 = v208 * COERCE_FLOAT(bswap32(*v26));
              }

              else
              {
                v214 = (v19 * (v211 * -0.0039216)) + 1.0;
                v212 = vmulq_n_f32(vrev32q_s8(*v31), v214);
                v213 = v214 * COERCE_FLOAT(bswap32(*v26));
              }

              *v31 = vrev32q_s8(v212);
              *v26 = bswap32(LODWORD(v213));
            }

            ++v33;
            ++v31;
            v26 = (v26 + v209);
            --v210;
          }

          while (v210);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v271 = v20;
          do
          {
            v272 = *v33;
            if (*v33)
            {
              if (v272 == 255)
              {
                v273 = vmulq_n_f32(vrev32q_s8(*v31), v208);
              }

              else
              {
                v273 = vmulq_n_f32(vrev32q_s8(*v31), (v19 * (v272 * -0.0039216)) + 1.0);
              }

              *v31 = vrev32q_s8(v273);
            }

            ++v33;
            ++v31;
            --v271;
          }

          while (v271);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 9:
      v92 = 4 * v27;
      do
      {
        v93 = v20;
        do
        {
          if (*v33)
          {
            v94 = *v33 * 0.0039216;
            v95 = COERCE_FLOAT(bswap32(*v26));
            v96 = (1.0 - v94) + (v19 * v94);
            *v31 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v31), v96), vmulq_n_f32(v30, v94), 1.0 - v95));
            *v26 = bswap32(COERCE_UNSIGNED_INT((v96 * v95) + ((v19 * v94) * (1.0 - v95))));
          }

          ++v33;
          ++v31;
          v26 = (v26 + v92);
          --v93;
        }

        while (v93);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 10:
      v203 = 4 * v27;
      do
      {
        v204 = v20;
        do
        {
          if (*v33)
          {
            v205 = COERCE_FLOAT(bswap32(*v26));
            v206 = *v33 * 0.0039216;
            v207 = 1.0 - (v19 * v206);
            *v31 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v31), v207), vmulq_n_f32(v30, v206), 1.0 - v205));
            *v26 = bswap32(COERCE_UNSIGNED_INT((v207 * v205) + ((v19 * v206) * (1.0 - v205))));
          }

          ++v33;
          ++v31;
          v26 = (v26 + v203);
          --v204;
        }

        while (v204);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        --v21;
      }

      while (v21);
      return;
    case 11:
      if (v16)
      {
        v74 = 4 * v27;
        do
        {
          v75 = v20;
          do
          {
            if (*v33)
            {
              v76 = *v33 * 0.0039216;
              a7.i32[0] = bswap32(*v26);
              a8.f32[0] = (v19 * v76) + a7.f32[0];
              if (a8.f32[0] > 1.0)
              {
                a8.f32[0] = 1.0;
              }

              v77 = vdupq_lane_s32(*a8.f32, 0);
              v78 = bswap32(a8.u32[0]);
              a8 = vrev32q_s8(*v31);
              a6.f32[0] = v19 * v76;
              a6 = vdupq_lane_s32(*a6.f32, 0);
              a7 = vsubq_f32(v77, vsubq_f32(vdupq_lane_s32(*a7.f32, 0), a8));
              *v31 = vrev32q_s8(vaddq_f32(vsubq_f32(a6, vmulq_n_f32(v30, v76)), a7));
              *v26 = v78;
            }

            ++v33;
            ++v31;
            v26 = (v26 + v74);
            --v75;
          }

          while (v75);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v247 = v20;
          do
          {
            if (*v33)
            {
              v248 = *v33 * 0.0039216;
              a5.f32[0] = v19 * v248;
              a5 = vdupq_lane_s32(*a5.f32, 0);
              *v31 = vrev32q_s8(vaddq_f32(vsubq_f32(a5, vmulq_n_f32(v30, v248)), vrev32q_s8(*v31)));
            }

            ++v33;
            ++v31;
            --v247;
          }

          while (v247);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 12:
      if (v16)
      {
        v88 = 4 * v27;
        do
        {
          v89 = v20;
          do
          {
            if (*v33)
            {
              v90 = *v33 * 0.0039216;
              v91 = (v19 * v90) + COERCE_FLOAT(bswap32(*v26));
              if (v91 > 1.0)
              {
                v91 = 1.0;
              }

              *v31 = vrev32q_s8(vaddq_f32(vmulq_n_f32(v30, v90), vrev32q_s8(*v31)));
              *v26 = bswap32(LODWORD(v91));
            }

            ++v33;
            ++v31;
            v26 = (v26 + v88);
            --v89;
          }

          while (v89);
          v33 += v34;
          v31 += v35;
          v26 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v249 = v20;
          do
          {
            if (*v33)
            {
              *v31 = vrev32q_s8(vaddq_f32(vmulq_n_f32(v30, *v33 * 0.0039216), vrev32q_s8(*v31)));
            }

            ++v33;
            ++v31;
            --v249;
          }

          while (v249);
          v33 += v34;
          v31 += v35;
          --v21;
        }

        while (v21);
      }

      return;
    case 13:
      v178 = 4 * v27;
      a4.i32[0] = 1.0;
      while (1)
      {
        v179 = v20;
        do
        {
          if (*v33)
          {
            v180 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v180;
            if ((v19 * v180) > 0.0)
            {
              v181 = vmulq_n_f32(v30, v180);
              if (v16)
              {
                a6.i32[0] = bswap32(*v26);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_267;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v182 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v31));
              v183 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v181);
              v184 = vmulq_f32(v182, v183);
              v185 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v184, v182, 1.0 - a5.f32[0]), v184);
              v186 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v185, v183, 1.0 - a6.f32[0]), v185);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v181 = vsubq_f32(a6, v186);
              if (v16)
              {
LABEL_267:
                v187 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v181);
                *v31 = a5;
                *v26 = v187;
                goto LABEL_269;
              }

              a5 = vrev32q_s8(v181);
              *v31 = a5;
            }
          }

LABEL_269:
          ++v33;
          ++v31;
          v26 = (v26 + v178);
          --v179;
        }

        while (v179);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 14:
      v62 = 4 * v27;
      __asm { FMOV            V1.4S, #1.0 }

      while (1)
      {
        v68 = v20;
        do
        {
          if (*v33)
          {
            v69 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v69;
            if ((v19 * v69) > 0.0)
            {
              v70 = vmulq_n_f32(v30, v69);
              if (v16)
              {
                a7.i32[0] = bswap32(*v26);
                if (a7.f32[0] <= 0.0)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                a7.i32[0] = 1.0;
              }

              v71 = vsubq_f32(vdupq_lane_s32(*a7.f32, 0), vrev32q_s8(*v31));
              v72 = vmlaq_f32(v71, vsubq_f32(_Q1, v71), vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v70));
              a5.f32[0] = (a5.f32[0] + a7.f32[0]) - (a7.f32[0] * a5.f32[0]);
              v70 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v72);
              if (v16)
              {
LABEL_59:
                v73 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v70);
                *v31 = a5;
                *v26 = v73;
                goto LABEL_61;
              }

              a5 = vrev32q_s8(v70);
              *v31 = a5;
            }
          }

LABEL_61:
          ++v33;
          ++v31;
          v26 = (v26 + v62);
          --v68;
        }

        while (v68);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 15:
      v119 = 4 * v27;
      while (1)
      {
        v120 = v20;
        do
        {
          if (*v33)
          {
            v121 = *v33 * 0.0039216;
            *&a9 = v19 * v121;
            if ((v19 * v121) > 0.0)
            {
              v122 = vmulq_n_f32(v30, v121);
              if (v16)
              {
                v123 = COERCE_FLOAT(bswap32(*v26));
                if (v123 <= 0.0)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                v123 = 1.0;
              }

              v124 = vrev32q_s8(*v31);
              PDAoverlayPDA(v348.i32, *v124.i32, *&v124.i32[1], *&v124.i32[2], *&v124.i32[3], v123, *v122.i64, a9, a10, *v122.i32, *&v122.i32[1], *&v122.i32[2], *&v122.i32[3], *&a9);
              v122 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_161:
                *v31 = vrev32q_s8(v122);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_163;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_163:
          ++v33;
          ++v31;
          v26 = (v26 + v119);
          --v120;
        }

        while (v120);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 16:
      v50 = 4 * v27;
      a4.i32[0] = 1.0;
      while (1)
      {
        v51 = v20;
        do
        {
          if (*v33)
          {
            v52 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v52;
            if ((v19 * v52) > 0.0)
            {
              v53 = vmulq_n_f32(v30, v52);
              if (v16)
              {
                a6.i32[0] = bswap32(*v26);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v54 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v31));
              v55 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v53);
              v56 = vmulq_n_f32(v54, a5.f32[0]);
              v57 = vmulq_n_f32(v55, a6.f32[0]);
              v58 = vbslq_s8(vcgtq_f32(v56, v57), v57, v56);
              v59 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v58, v54, 1.0 - a5.f32[0]), v58);
              v60 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v59, v55, 1.0 - a6.f32[0]), v59);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v53 = vsubq_f32(a6, v60);
              if (v16)
              {
LABEL_45:
                v61 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v53);
                *v31 = a5;
                *v26 = v61;
                goto LABEL_47;
              }

              a5 = vrev32q_s8(v53);
              *v31 = a5;
            }
          }

LABEL_47:
          ++v33;
          ++v31;
          v26 = (v26 + v50);
          --v51;
        }

        while (v51);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 17:
      v150 = 4 * v27;
      a4.i32[0] = 1.0;
      while (1)
      {
        v151 = v20;
        do
        {
          if (*v33)
          {
            v152 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v152;
            if ((v19 * v152) > 0.0)
            {
              v153 = vmulq_n_f32(v30, v152);
              if (v16)
              {
                a6.i32[0] = bswap32(*v26);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v154 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v31));
              v155 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v153);
              v156 = vmulq_n_f32(v154, a5.f32[0]);
              v157 = vmulq_n_f32(v155, a6.f32[0]);
              v158 = vbslq_s8(vcgtq_f32(v157, v156), v157, v156);
              v159 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v158, v154, 1.0 - a5.f32[0]), v158);
              v160 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v159, v155, 1.0 - a6.f32[0]), v159);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v153 = vsubq_f32(a6, v160);
              if (v16)
              {
LABEL_216:
                v161 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v153);
                *v31 = a5;
                *v26 = v161;
                goto LABEL_218;
              }

              a5 = vrev32q_s8(v153);
              *v31 = a5;
            }
          }

LABEL_218:
          ++v33;
          ++v31;
          v26 = (v26 + v150);
          --v151;
        }

        while (v151);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 18:
      v197 = 4 * v27;
      while (1)
      {
        v198 = v20;
        do
        {
          if (*v33)
          {
            v199 = *v33 * 0.0039216;
            *&a9 = v19 * v199;
            if ((v19 * v199) > 0.0)
            {
              v200 = vmulq_n_f32(v30, v199);
              if (v16)
              {
                v201 = COERCE_FLOAT(bswap32(*v26));
                if (v201 <= 0.0)
                {
                  goto LABEL_293;
                }
              }

              else
              {
                v201 = 1.0;
              }

              v202 = vrev32q_s8(*v31);
              PDAcolordodgePDA(v348.i32, *v202.i32, *&v202.i32[1], *&v202.i32[2], *&v202.i32[3], v201, *v200.i64, a9, a10, *v200.i32, *&v200.i32[1], *&v200.i32[2], *&v200.i32[3], *&a9);
              v200 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_293:
                *v31 = vrev32q_s8(v200);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_295;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_295:
          ++v33;
          ++v31;
          v26 = (v26 + v197);
          --v198;
        }

        while (v198);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 19:
      v229 = 4 * v27;
      while (1)
      {
        v230 = v20;
        do
        {
          if (*v33)
          {
            v231 = *v33 * 0.0039216;
            *&a9 = v19 * v231;
            if ((v19 * v231) > 0.0)
            {
              v232 = vmulq_n_f32(v30, v231);
              if (v16)
              {
                v233 = COERCE_FLOAT(bswap32(*v26));
                if (v233 <= 0.0)
                {
                  goto LABEL_341;
                }
              }

              else
              {
                v233 = 1.0;
              }

              v234 = vrev32q_s8(*v31);
              PDAcolorburnPDA(v348.i32, *v234.i32, *&v234.i32[1], *&v234.i32[2], *&v234.i32[3], v233, *v232.i64, a9, a10, *v232.i32, *&v232.i32[1], *&v232.i32[2], *&v232.i32[3], *&a9);
              v232 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_341:
                *v31 = vrev32q_s8(v232);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_343;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_343:
          ++v33;
          ++v31;
          v26 = (v26 + v229);
          --v230;
        }

        while (v230);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 20:
      v162 = 4 * v27;
      while (1)
      {
        v163 = v20;
        do
        {
          if (*v33)
          {
            v164 = *v33 * 0.0039216;
            *&a9 = v19 * v164;
            if ((v19 * v164) > 0.0)
            {
              v165 = vmulq_n_f32(v30, v164);
              if (v16)
              {
                a7.i32[0] = bswap32(*v26);
                if (a7.f32[0] <= 0.0)
                {
                  goto LABEL_231;
                }
              }

              else
              {
                a7.i32[0] = 1.0;
              }

              v166 = vrev32q_s8(*v31);
              PDAsoftlightPDA(&v348, *v166.i8, *&v166.i32[1], *&v166.i32[2], *&v166.i32[3], *a7.i64, *v165.i8, a9, a10, a2, v28, v34, v20, a14, a15, a16, *v165.i8, *&v165.i32[2], *&v165.i32[3], *&a9);
              v165 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_231:
                *v31 = vrev32q_s8(v165);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_233;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_233:
          ++v33;
          ++v31;
          v26 = (v26 + v162);
          --v163;
        }

        while (v163);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        v20 = v345;
        if (!v21)
        {
          return;
        }
      }

    case 21:
      v172 = 4 * v27;
      while (1)
      {
        v173 = v20;
        do
        {
          if (*v33)
          {
            v174 = *v33 * 0.0039216;
            *&a9 = v19 * v174;
            if ((v19 * v174) > 0.0)
            {
              v175 = vmulq_n_f32(v30, v174);
              if (v16)
              {
                v176 = COERCE_FLOAT(bswap32(*v26));
                if (v176 <= 0.0)
                {
                  goto LABEL_253;
                }
              }

              else
              {
                v176 = 1.0;
              }

              v177 = vrev32q_s8(*v31);
              PDAhardlightPDA(v348.i32, *v177.i32, *&v177.i32[1], *&v177.i32[2], *&v177.i32[3], v176, *v175.i64, a9, a10, *v175.i32, *&v175.i32[1], *&v175.i32[2], *&v175.i32[3], *&a9);
              v175 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_253:
                *v31 = vrev32q_s8(v175);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_255;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_255:
          ++v33;
          ++v31;
          v26 = (v26 + v172);
          --v173;
        }

        while (v173);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 22:
      v215 = 4 * v27;
      while (1)
      {
        v216 = v20;
        do
        {
          if (*v33)
          {
            v217 = *v33 * 0.0039216;
            a4.f32[0] = v19 * v217;
            if ((v19 * v217) > 0.0)
            {
              v218 = vmulq_n_f32(v30, v217);
              if (v16)
              {
                a6.i32[0] = bswap32(*v26);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_326;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v219 = *v31;
              *v219.i32 = (a6.f32[0] + a4.f32[0]) - (a6.f32[0] * a4.f32[0]);
              v220 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v31));
              v221 = vsubq_f32(vdupq_lane_s32(*a4.f32, 0), v218);
              v222 = vaddq_f32(v220, v221);
              v223 = vmulq_n_f32(v220, a4.f32[0]);
              v224 = vmulq_n_f32(v221, a6.f32[0]);
              v225 = vsubq_f32(v222, v223);
              v226 = vsubq_f32(v223, v224);
              v227 = vsubq_f32(v225, v224);
              a6 = vcltzq_f32(v226);
              v218 = vsubq_f32(vdupq_lane_s32(*v219.i8, 0), vaddq_f32(v227, vbslq_s8(a6, vnegq_f32(v226), v226)));
              if (v16)
              {
                a4.i32[0] = v219.i32[0];
LABEL_326:
                v228 = bswap32(a4.u32[0]);
                a4 = vrev32q_s8(v218);
                *v31 = a4;
                *v26 = v228;
                goto LABEL_328;
              }

              a4 = vrev32q_s8(v218);
              *v31 = a4;
            }
          }

LABEL_328:
          ++v33;
          ++v31;
          v26 = (v26 + v215);
          --v216;
        }

        while (v216);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 23:
      v235 = 4 * v27;
      v236.i64[0] = 0xC0000000C0000000;
      v236.i64[1] = 0xC0000000C0000000;
      while (1)
      {
        v237 = v20;
        do
        {
          if (*v33)
          {
            v238 = *v33 * 0.0039216;
            a6.f32[0] = v19 * v238;
            if ((v19 * v238) > 0.0)
            {
              v239 = vmulq_n_f32(v30, v238);
              if (v16)
              {
                a8.i32[0] = bswap32(*v26);
                if (a8.f32[0] <= 0.0)
                {
                  goto LABEL_356;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              v240 = *v31;
              *v240.i32 = (a8.f32[0] + a6.f32[0]) - (a8.f32[0] * a6.f32[0]);
              a8 = vsubq_f32(vdupq_lane_s32(*a8.f32, 0), vrev32q_s8(*v31));
              v241 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), v239);
              a6 = vmlaq_f32(vaddq_f32(a8, v241), v236, vmulq_f32(v241, a8));
              v239 = vsubq_f32(vdupq_lane_s32(*v240.i8, 0), a6);
              if (v16)
              {
                a6.i32[0] = v240.i32[0];
LABEL_356:
                *v31 = vrev32q_s8(v239);
                *v26 = bswap32(a6.u32[0]);
                goto LABEL_358;
              }

              *v31 = vrev32q_s8(v239);
            }
          }

LABEL_358:
          ++v33;
          ++v31;
          v26 = (v26 + v235);
          --v237;
        }

        while (v237);
        v33 += v34;
        v31 += v35;
        v26 += v25;
        if (!--v21)
        {
          return;
        }
      }

    case 24:
      v103 = 4 * v27;
      while (1)
      {
        v104 = v20;
        do
        {
          if (*v33)
          {
            v105 = *v33 * 0.0039216;
            *&a9 = v19 * v105;
            if ((v19 * v105) > 0.0)
            {
              v106 = vmulq_n_f32(v30, v105);
              if (v16)
              {
                v107 = COERCE_FLOAT(bswap32(*v26));
                if (v107 <= 0.0)
                {
                  goto LABEL_126;
                }
              }

              else
              {
                v107 = 1.0;
              }

              v108 = vrev32q_s8(*v31);
              PDAhuePDA(v348.i32, *v108.i32, *&v108.i32[1], *&v108.i32[2], *&v108.i32[3], v107, *v106.i64, a9, a10, *v106.i32, *&v106.i32[1], *&v106.i32[2], *&v106.i32[3], *&a9);
              v106 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_126:
                *v31 = vrev32q_s8(v106);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_128;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_128:
          ++v33;
          ++v31;
          v26 = (v26 + v103);
          --v104;
        }

        while (v104);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 25:
      v97 = 4 * v27;
      while (1)
      {
        v98 = v20;
        do
        {
          if (*v33)
          {
            v99 = *v33 * 0.0039216;
            *&a9 = v19 * v99;
            if ((v19 * v99) > 0.0)
            {
              v100 = vmulq_n_f32(v30, v99);
              if (v16)
              {
                v101 = COERCE_FLOAT(bswap32(*v26));
                if (v101 <= 0.0)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v101 = 1.0;
              }

              v102 = vrev32q_s8(*v31);
              PDAsaturationPDA(v348.i32, *v102.i32, *&v102.i32[1], *&v102.i32[2], *&v102.i32[3], v101, *v100.i64, a9, a10, *v100.i32, *&v100.i32[1], *&v100.i32[2], *&v100.i32[3], *&a9);
              v100 = v348;
              if (v16)
              {
                *&a9 = v349;
                v30 = v346;
                v19 = v347;
LABEL_111:
                *v31 = vrev32q_s8(v100);
                *v26 = bswap32(LODWORD(a9));
                goto LABEL_113;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_113:
          ++v33;
          ++v31;
          v26 = (v26 + v97);
          --v98;
        }

        while (v98);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 26:
      v242 = 4 * v27;
      while (1)
      {
        v243 = v20;
        do
        {
          if (*v33)
          {
            v244 = *v33 * 0.0039216;
            v245 = v19 * v244;
            if ((v19 * v244) > 0.0)
            {
              v246 = vmulq_n_f32(v30, v244);
              if (v16)
              {
                a8.i32[0] = bswap32(*v26);
                if (a8.f32[0] <= 0.0)
                {
                  goto LABEL_371;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              v344 = vrev32q_s8(*v31);
              PDAluminosityPDA(v348.i32, *v246.i32, *&v246.i32[1], *&v246.i32[2], *&v246.i32[3], v245, *a8.i64, *v344.i64, a10, *v344.i32, *&v344.i32[1], *&v344.i32[2], *&v344.i32[3], a8.f32[0]);
              v246 = v348;
              if (v16)
              {
                v245 = v349;
                v30 = v346;
                v19 = v347;
LABEL_371:
                *v31 = vrev32q_s8(v246);
                *v26 = bswap32(LODWORD(v245));
                goto LABEL_373;
              }

              *v31 = vrev32q_s8(v348);
              v30 = v346;
              v19 = v347;
            }
          }

LABEL_373:
          ++v33;
          ++v31;
          v26 = (v26 + v242);
          --v243;
        }

        while (v243);
        v33 += v37;
        v31 += v36;
        v26 += v38;
        --v21;
        LODWORD(v20) = v345;
        if (!v21)
        {
          return;
        }
      }

    case 27:
      v44 = 4 * v27;
      break;
    default:
      return;
  }

LABEL_22:
  v45 = v20;
  while (1)
  {
    if (!*v33)
    {
      goto LABEL_33;
    }

    v46 = *v33 * 0.0039216;
    *&a9 = v19 * v46;
    if ((v19 * v46) <= 0.0)
    {
      goto LABEL_33;
    }

    v47 = vmulq_n_f32(v30, v46);
    if (v16)
    {
      v48 = COERCE_FLOAT(bswap32(*v26));
      if (v48 <= 0.0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v48 = 1.0;
    }

    v49 = vrev32q_s8(*v31);
    PDAluminosityPDA(v348.i32, *v49.i32, *&v49.i32[1], *&v49.i32[2], *&v49.i32[3], v48, *v47.i64, a9, a10, *v47.i32, *&v47.i32[1], *&v47.i32[2], *&v47.i32[3], *&a9);
    v47 = v348;
    if (!v16)
    {
      *v31 = vrev32q_s8(v348);
      v30 = v346;
      v19 = v347;
      goto LABEL_33;
    }

    *&a9 = v349;
    v30 = v346;
    v19 = v347;
LABEL_31:
    *v31 = vrev32q_s8(v47);
    *v26 = bswap32(LODWORD(a9));
LABEL_33:
    ++v33;
    ++v31;
    v26 = (v26 + v44);
    if (!--v45)
    {
      v33 += v37;
      v31 += v36;
      v26 += v38;
      --v21;
      LODWORD(v20) = v345;
      if (!v21)
      {
        return;
      }

      goto LABEL_22;
    }
  }
}