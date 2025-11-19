uint64_t rgb555_image_mark_RGB24(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v139 = result;
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v130 = *(a2 + 5) - a5;
  }

  else
  {
    v130 = 0;
  }

  v129 = *a2;
  v128 = *(a2 + 3) - a5;
  v140 = v8 != 0;
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  v11 = *(a2 + 11);
  v125 = *(a2 + 13);
  v12 = *(a2 + 9) + v125 * a4;
  v122 = *(a2 + 6);
  v133 = *(a2 + 7);
  v13 = *(result + 32);
  v14 = &v13[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v15 = *(result + 168);
  v123 = a5;
  v124 = v15;
  v126 = v11;
  v127 = v10;
  if (*(result + 176))
  {
    v136 = 0;
    v16 = 0;
    v121 = *(a2 + 15);
    v119 = ~(-1 << v11);
    v120 = *(a2 + 17);
    v118 = v11 - 4;
    v17 = v14 - 3;
    v116 = v9 + 16 * a3 + 8;
    v117 = -v10;
    while ((((v120 - v12) | (v12 - v121)) & 0x8000000000000000) == 0)
    {
      v18 = ((v12 & v119) >> v118) & 0xF;
      v19 = weights_21890[v18];
      v20 = (v18 - 7) >= 9;
      v21 = v117;
      if (!v20)
      {
        v21 = v10;
      }

      v137 = v21;
      v22 = v19 & 0xF;
      if (v15)
      {
        goto LABEL_10;
      }

LABEL_13:
      v25 = *(v139 + 32) + (v12 >> v11) * v10;
      v134 = a6;
      v132 = v12;
      if (v129 != 1)
      {
        if (a5 < 1)
        {
          goto LABEL_113;
        }

        v52 = v116;
        v53 = v123;
        while (2)
        {
          v54 = *(v52 - 1);
          v55 = *v52;
          v56 = v25 + v54;
          if (v17 >= v25 + v54)
          {
            v57 = (v25 + v54);
          }

          else
          {
            v57 = v17;
          }

          if (v57 < v13)
          {
            v57 = v13;
          }

          v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
          v59 = v55 & 0xF;
          if ((v55 & 0xF) != 0)
          {
            v60 = (v56 + (v55 >> 4));
            if (v17 < v60)
            {
              v60 = v17;
            }

            if (v60 < v13)
            {
              v60 = v13;
            }

            v61 = (*v60 << 24) | (v60[1] << 16) | (v60[2] << 8);
            if (v22)
            {
              v62 = (v56 + v137);
              if (v17 >= v62)
              {
                v63 = v62;
              }

              else
              {
                v63 = v17;
              }

              if (v63 < v13)
              {
                v63 = v13;
              }

              v64 = (*v63 << 24) | (v63[1] << 16) | (v63[2] << 8);
              v65 = &v62[v55 >> 4];
              if (v17 < v65)
              {
                v65 = v17;
              }

              if (v65 < v13)
              {
                v65 = v13;
              }

              v66 = BLEND8_21892[v22];
              v58 = v58 - ((v66 & v58) >> v22) + ((v66 & v64) >> v22);
              v61 = v61 - ((v66 & v61) >> v22) + ((((*v65 << 24) | (v65[1] << 16) | (v65[2] << 8)) & v66) >> v22);
            }

            v67 = BLEND8_21892[*v52 & 0xF];
            v68 = v58 - ((v67 & v58) >> v59);
            v69 = (v67 & v61) >> v59;
            goto LABEL_90;
          }

          if (v22)
          {
            v70 = (v56 + v137);
            if (v17 < v56 + v137)
            {
              v70 = v17;
            }

            if (v70 < v13)
            {
              v70 = v13;
            }

            v71 = BLEND8_21892[v22];
            v68 = v58 - ((v71 & v58) >> v22);
            v69 = (((*v70 << 24) | (v70[1] << 16) | (v70[2] << 8)) & v71) >> v22;
LABEL_90:
            v58 = v68 + v69;
          }

          v72 = v58 | 0xFF;
          if (v16)
          {
            v73 = *v16;
            if ((v16 + 1) < v136)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v72, v73);
            }

            else
            {
              result = DITHERRGBA32M(v72, v73, v6);
            }
          }

          else
          {
            v74 = (v58 >> 17) & 0x7C00 | (v58 >> 14) & 0x3E0 | (v58 >> 11) | 0xFF000000;
            v75 = ((v58 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v58 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v76 = (v72 & 0xFF00FF) * v6 + 65537 + ((((v72 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v77 = (v75 >> 17) & 0x7C00 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 11) << 27) | ((v72 * v6 + 1 + ((v72 * v6) >> 8)) >> 13 << 24) | (32 * (v76 >> 27));
            if (v6 == 255)
            {
              result = v74;
            }

            else
            {
              result = v77;
            }

            v16 = 0;
          }

          v78 = result >> 27;
          if (v8)
          {
            if (result >> 27 == 31)
            {
              v79 = BYTE3(result);
              *v7 = result;
              goto LABEL_111;
            }

            if (v78)
            {
              result = PDAplusDAM(result, SBYTE3(result), *v7, *v8, BYTE3(result) ^ 0xFF);
              *v7 = result;
              v79 = BYTE3(result);
LABEL_111:
              *v8 = v79;
            }
          }

          else
          {
            if (result >> 27 != 31)
            {
              if (!v78)
              {
                goto LABEL_112;
              }

              result = PDplusDM(result, *v7, ~result >> 24);
            }

            *v7 = result;
          }

LABEL_112:
          v52 += 2;
          ++v7;
          v8 += v140;
          if (!--v53)
          {
            goto LABEL_113;
          }

          continue;
        }
      }

      if (a5 >= 1)
      {
        v26 = v116;
        v27 = v123;
        while (1)
        {
          v28 = *(v26 - 1);
          v29 = *v26;
          v30 = v25 + v28;
          if (v17 >= v25 + v28)
          {
            v31 = (v25 + v28);
          }

          else
          {
            v31 = v17;
          }

          if (v31 < v13)
          {
            v31 = v13;
          }

          v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
          v33 = v29 & 0xF;
          if ((v29 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v44 = (v30 + v137);
            if (v17 < v30 + v137)
            {
              v44 = v17;
            }

            if (v44 < v13)
            {
              v44 = v13;
            }

            v45 = BLEND8_21892[v22];
            v42 = v32 - ((v45 & v32) >> v22);
            v43 = (((*v44 << 24) | (v44[1] << 16) | (v44[2] << 8)) & v45) >> v22;
            goto LABEL_44;
          }

LABEL_45:
          v46 = v32 | 0xFF;
          if (v16)
          {
            v47 = *v16;
            if ((v16 + 1) < v136)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v46, v47);
            }

            else
            {
              result = DITHERRGBA32M(v46, v47, v6);
            }
          }

          else
          {
            v48 = (v32 >> 17) & 0x7C00 | (v32 >> 14) & 0x3E0 | (v32 >> 11) | 0xFF000000;
            v49 = ((v32 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v32 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v50 = (v46 & 0xFF00FF) * v6 + 65537 + ((((v46 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v51 = (v49 >> 17) & 0x7C00 | (v49 >> 11) & 0xFFFFFF | ((v50 >> 11) << 27) | ((v46 * v6 + 1 + ((v46 * v6) >> 8)) >> 13 << 24) | (32 * (v50 >> 27));
            if (v6 == 255)
            {
              result = v48;
            }

            else
            {
              result = v51;
            }

            v16 = 0;
          }

          *v7 = result;
          if (v8)
          {
            *v8 = BYTE3(result);
          }

          v26 += 2;
          ++v7;
          v8 += v140;
          if (!--v27)
          {
            goto LABEL_113;
          }
        }

        v34 = (v30 + (v29 >> 4));
        if (v17 < v34)
        {
          v34 = v17;
        }

        if (v34 < v13)
        {
          v34 = v13;
        }

        v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
        if (v22)
        {
          v36 = (v30 + v137);
          if (v17 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v17;
          }

          if (v37 < v13)
          {
            v37 = v13;
          }

          v38 = (*v37 << 24) | (v37[1] << 16) | (v37[2] << 8);
          v39 = &v36[v29 >> 4];
          if (v17 < v39)
          {
            v39 = v17;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = BLEND8_21892[v22];
          v32 = v32 - ((v40 & v32) >> v22) + ((v40 & v38) >> v22);
          v35 = v35 - ((v40 & v35) >> v22) + ((((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8)) & v40) >> v22);
        }

        v41 = BLEND8_21892[*v26 & 0xF];
        v42 = v32 - ((v41 & v32) >> v33);
        v43 = (v41 & v35) >> v33;
LABEL_44:
        v32 = v42 + v43;
        goto LABEL_45;
      }

LABEL_113:
      v10 = v127;
      v7 += v128;
      v8 += v130;
      LOBYTE(v11) = v126;
      v12 = v132 + v125;
      a6 = v134 - 1;
      v15 = v124;
      if (v134 == 1)
      {
        return result;
      }
    }

    v22 = 0;
    v137 = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_10:
    v23 = v15 + 16 * v133;
    v136 = v23 + 16;
    v16 = (v23 + v122);
    v24 = (v133 + 1) & 0xF;
    if (v133 + 1 <= 0)
    {
      v24 = -(-(v133 + 1) & 0xF);
    }

    v133 = v24;
    goto LABEL_13;
  }

  v80 = 0;
  v81 = 0;
  v82 = v14 - 3;
  v138 = (v9 + 16 * a3);
  do
  {
    if (v15)
    {
      v83 = v15 + 16 * v133;
      v80 = v83 + 16;
      v81 = (v83 + v122);
      v84 = (v133 + 1) & 0xF;
      if (v133 + 1 <= 0)
      {
        v84 = -(-(v133 + 1) & 0xF);
      }

      v133 = v84;
    }

    v85 = *(v139 + 32) + (v12 >> v11) * v10;
    v135 = a6;
    if (v129 != 1)
    {
      v100 = v138;
      v101 = v123;
      if (a5 < 1)
      {
        goto LABEL_171;
      }

      while (1)
      {
        v102 = *v100;
        v100 += 2;
        v103 = (v85 + v102);
        if (v82 < v85 + v102)
        {
          v103 = v82;
        }

        if (v103 < *(v139 + 32))
        {
          v103 = *(v139 + 32);
        }

        v104 = *v103;
        v105 = v103[1];
        v106 = v103[2];
        v107 = (v104 << 24) | (v105 << 16) | (v106 << 8);
        v108 = v107 | 0xFF;
        if (v81)
        {
          v109 = *v81;
          if ((v81 + 1) < v80)
          {
            ++v81;
          }

          else
          {
            v81 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v108, v109);
          }

          else
          {
            result = DITHERRGBA32M(v108, v109, v6);
          }
        }

        else
        {
          v110 = (4 * v105) & 0x3E0 | (v104 >> 3 << 10) | (v106 >> 3) | 0xFF000000;
          v111 = ((v107 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v107 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v112 = (v108 & 0xFF00FF) * v6 + 65537 + ((((v108 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v113 = (v111 >> 17) & 0x7C00 | (v111 >> 11) & 0xFFFFFF | ((v112 >> 11) << 27) | ((v108 * v6 + 1 + ((v108 * v6) >> 8)) >> 13 << 24) | (32 * (v112 >> 27));
          if (v6 == 255)
          {
            result = v110;
          }

          else
          {
            result = v113;
          }

          v81 = 0;
        }

        v114 = result >> 27;
        if (v8)
        {
          if (result >> 27 == 31)
          {
            v115 = BYTE3(result);
            *v7 = result;
LABEL_169:
            *v8 = v115;
            goto LABEL_170;
          }

          if (v114)
          {
            result = PDAplusDAM(result, SBYTE3(result), *v7, *v8, BYTE3(result) ^ 0xFF);
            *v7 = result;
            v115 = BYTE3(result);
            goto LABEL_169;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            goto LABEL_166;
          }

          if (v114)
          {
            result = PDplusDM(result, *v7, ~result >> 24);
LABEL_166:
            *v7 = result;
          }
        }

LABEL_170:
        ++v7;
        v8 += v140;
        if (!--v101)
        {
          goto LABEL_171;
        }
      }
    }

    if (a5 >= 1)
    {
      v86 = v138;
      v87 = v123;
      do
      {
        v88 = *v86;
        v86 += 2;
        v89 = (v85 + v88);
        if (v82 < v85 + v88)
        {
          v89 = v82;
        }

        if (v89 < *(v139 + 32))
        {
          v89 = *(v139 + 32);
        }

        v90 = *v89;
        v91 = v89[1];
        v92 = v89[2];
        v93 = (v90 << 24) | (v91 << 16) | (v92 << 8);
        v94 = v93 | 0xFF;
        if (v81)
        {
          v95 = *v81;
          if ((v81 + 1) < v80)
          {
            ++v81;
          }

          else
          {
            v81 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v94, v95);
          }

          else
          {
            result = DITHERRGBA32M(v94, v95, v6);
          }
        }

        else
        {
          v96 = (4 * v91) & 0x3E0 | (v90 >> 3 << 10) | (v92 >> 3) | 0xFF000000;
          v97 = ((v93 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v93 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v98 = (v94 & 0xFF00FF) * v6 + 65537 + ((((v94 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v99 = (v97 >> 17) & 0x7C00 | (v97 >> 11) & 0xFFFFFF | ((v98 >> 11) << 27) | ((v94 * v6 + 1 + ((v94 * v6) >> 8)) >> 13 << 24) | (32 * (v98 >> 27));
          if (v6 == 255)
          {
            result = v96;
          }

          else
          {
            result = v99;
          }

          v81 = 0;
        }

        *v7 = result;
        if (v8)
        {
          *v8 = BYTE3(result);
        }

        ++v7;
        v8 += v140;
        --v87;
      }

      while (v87);
    }

LABEL_171:
    v10 = v127;
    v7 += v128;
    v8 += v130;
    LOBYTE(v11) = v126;
    v12 += v125;
    a6 = v135 - 1;
    v15 = v124;
  }

  while (v135 != 1);
  return result;
}

uint64_t rgb555_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v129 = *(a2 + 5) - a5;
  }

  else
  {
    v129 = 0;
  }

  v128 = *a2;
  v127 = *(a2 + 3) - a5;
  v139 = v8 != 0;
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  v11 = *(a2 + 11);
  v124 = *(a2 + 13);
  v12 = *(a2 + 9) + v124 * a4;
  v121 = *(a2 + 6);
  v132 = *(a2 + 7);
  v13 = *(a1 + 32);
  v14 = &v13[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  result = *(a1 + 168);
  v122 = a5;
  v123 = *(a1 + 168);
  v125 = v11;
  v126 = v10;
  if (*(a1 + 176))
  {
    v136 = 0;
    v16 = 0;
    v120 = *(a2 + 15);
    v119 = *(a2 + 17);
    v118 = ~(-1 << v11);
    v116 = -v10;
    v117 = v11 - 4;
    v17 = v14 - 4;
    v18 = vdup_n_s32(v6);
    v115 = v9 + 16 * a3 + 8;
    v19.i64[1] = 0x7000000F8000000;
    while ((((v119 - v12) | (v12 - v120)) & 0x8000000000000000) == 0)
    {
      v20 = ((v12 & v118) >> v117) & 0xF;
      v21 = weights_21890[v20];
      v22 = (v20 - 7) >= 9;
      v23 = v116;
      if (!v22)
      {
        v23 = v10;
      }

      v137 = v23;
      v24 = v21 & 0xF;
      if (result)
      {
        goto LABEL_10;
      }

LABEL_13:
      v27 = *(a1 + 32) + (v12 >> v11) * v10;
      v133 = a6;
      v131 = v12;
      if (v128 != 1)
      {
        if (a5 < 1)
        {
          goto LABEL_112;
        }

        v53 = v115;
        v54 = v122;
        while (2)
        {
          v55 = *(v53 - 1);
          v56 = *v53;
          v57 = v27 + v55;
          if (v17 >= v27 + v55)
          {
            v58 = (v27 + v55);
          }

          else
          {
            v58 = v17;
          }

          if (v58 < v13)
          {
            v58 = v13;
          }

          v59 = *v58;
          v60 = v56 & 0xF;
          if ((v56 & 0xF) != 0)
          {
            v61 = (v57 + (v56 >> 4));
            if (v17 < v61)
            {
              v61 = v17;
            }

            if (v61 < v13)
            {
              v61 = v13;
            }

            v62 = *v61;
            if (v24)
            {
              v63 = (v57 + v137);
              if (v17 >= v63)
              {
                v64 = v63;
              }

              else
              {
                v64 = v17;
              }

              if (v64 < v13)
              {
                v64 = v13;
              }

              v65 = *v64;
              v66 = &v63[v56 >> 4];
              if (v17 < v66)
              {
                v66 = v17;
              }

              if (v66 < v13)
              {
                v66 = v13;
              }

              v67 = BLEND8_21892[v24];
              v59 = v59 - ((v67 & v59) >> v24) + ((v67 & v65) >> v24);
              v62 = v62 - ((v67 & v62) >> v24) + ((v67 & *v66) >> v24);
            }

            v68 = BLEND8_21892[*v53 & 0xF];
            v59 -= (v68 & v59) >> v60;
            v69 = (v68 & v62) >> v60;
            goto LABEL_89;
          }

          if (v24)
          {
            v70 = (v57 + v137);
            if (v17 < v57 + v137)
            {
              v70 = v17;
            }

            if (v70 < v13)
            {
              v70 = v13;
            }

            v71 = BLEND8_21892[v24];
            v59 -= (v71 & v59) >> v24;
            v69 = (v71 & *v70) >> v24;
LABEL_89:
            LOBYTE(v59) = v59 + v69;
          }

          if (v16)
          {
            v72 = *v16;
            if ((v16 + 1) < v136)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            v73 = (16843008 * v59) | 0xFF;
            if (v6 == 255)
            {
              v74 = DITHERRGBA32(v73, v72);
            }

            else
            {
              v74 = DITHERRGBA32M(v73, v72, v6);
            }
          }

          else
          {
            v16 = 0;
            if (v6 == 255)
            {
              v74 = (v59 >> 3) & 0xFFFF801F | (32 * (v59 >> 3)) & 0x83FF | (v59 >> 3 << 10) | 0xFF000000;
            }

            else
            {
              *v19.i8 = vmul_s32(vorr_s8(vdup_n_s32(v59 << 16), (v59 | 0xFF00000000)), v18);
              *v19.i8 = vadd_s32(vadd_s32(*v19.i8, 0x1000100010001), (*&vshr_n_u32(*v19.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
              v75 = vzip1q_s32(v19, v19);
              v76.i64[0] = vshlq_u32(v75, xmmword_18439C930).u64[0];
              v76.i64[1] = vshlq_u32(v75, xmmword_18439C940).i64[1];
              v77 = vandq_s8(v76, xmmword_18439C950);
              *v77.i8 = vorr_s8(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
              v74 = v77.i32[0] | v77.i32[1] | (32 * (v19.i32[1] >> 27));
            }
          }

          v78 = v74 >> 27;
          if (v8)
          {
            if (v74 >> 27 == 31)
            {
              v79 = HIBYTE(v74);
              *v7 = v74;
              goto LABEL_108;
            }

            if (v78)
            {
              v80 = PDAplusDAM(v74, SHIBYTE(v74), *v7, *v8, HIBYTE(v74) ^ 0xFF);
              *v7 = v80;
              v79 = HIBYTE(v80);
LABEL_108:
              *v8 = v79;
            }
          }

          else
          {
            if (v74 >> 27 != 31)
            {
              if (!v78)
              {
                goto LABEL_109;
              }

              LOWORD(v74) = PDplusDM(v74, *v7, ~v74 >> 24);
            }

            *v7 = v74;
          }

LABEL_109:
          v53 += 2;
          ++v7;
          v8 += v139;
          if (!--v54)
          {
            goto LABEL_112;
          }

          continue;
        }
      }

      if (a5 >= 1)
      {
        v28 = v115;
        v29 = v122;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v17 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v17;
          }

          if (v33 < v13)
          {
            v33 = v13;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v45 = (v32 + v137);
            if (v17 < v32 + v137)
            {
              v45 = v17;
            }

            if (v45 < v13)
            {
              v45 = v13;
            }

            v46 = BLEND8_21892[v24];
            v34 -= (v46 & v34) >> v24;
            v44 = (v46 & *v45) >> v24;
            goto LABEL_44;
          }

LABEL_45:
          if (v16)
          {
            v47 = *v16;
            if ((v16 + 1) < v136)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            v48 = (16843008 * v34) | 0xFF;
            if (v6 == 255)
            {
              v49 = DITHERRGBA32(v48, v47);
            }

            else
            {
              v49 = DITHERRGBA32M(v48, v47, v6);
            }
          }

          else
          {
            v16 = 0;
            if (v6 == 255)
            {
              v49 = (v34 >> 3) & 0xFFFF801F | (32 * (v34 >> 3)) & 0x83FF | (v34 >> 3 << 10) | 0xFF000000;
            }

            else
            {
              *v19.i8 = vmul_s32(vorr_s8(vdup_n_s32(v34 << 16), (v34 | 0xFF00000000)), v18);
              *v19.i8 = vadd_s32(vadd_s32(*v19.i8, 0x1000100010001), (*&vshr_n_u32(*v19.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
              v50 = vzip1q_s32(v19, v19);
              v51.i64[0] = vshlq_u32(v50, xmmword_18439C930).u64[0];
              v51.i64[1] = vshlq_u32(v50, xmmword_18439C940).i64[1];
              v52 = vandq_s8(v51, xmmword_18439C950);
              *v52.i8 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
              v49 = v52.i32[0] | v52.i32[1] | (32 * (v19.i32[1] >> 27));
            }
          }

          *v7 = v49;
          if (v8)
          {
            *v8 = HIBYTE(v49);
          }

          v28 += 2;
          ++v7;
          v8 += v139;
          if (!--v29)
          {
            goto LABEL_112;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v17 < v36)
        {
          v36 = v17;
        }

        if (v36 < v13)
        {
          v36 = v13;
        }

        v37 = *v36;
        if (v24)
        {
          v38 = (v32 + v137);
          if (v17 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v17;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = *v39;
          v41 = &v38[v31 >> 4];
          if (v17 < v41)
          {
            v41 = v17;
          }

          if (v41 < v13)
          {
            v41 = v13;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((v42 & *v41) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v34 -= (v43 & v34) >> v35;
        v44 = (v43 & v37) >> v35;
LABEL_44:
        LOBYTE(v34) = v34 + v44;
        goto LABEL_45;
      }

LABEL_112:
      v10 = v126;
      v7 += v127;
      v8 += v129;
      LOBYTE(v11) = v125;
      v12 = v131 + v124;
      a6 = v133 - 1;
      result = v123;
      if (v133 == 1)
      {
        return result;
      }
    }

    v24 = 0;
    v137 = 0;
    if (!result)
    {
      goto LABEL_13;
    }

LABEL_10:
    v25 = result + 16 * v132;
    v136 = v25 + 16;
    v16 = (v25 + v121);
    v26 = (v132 + 1) & 0xF;
    if (v132 + 1 <= 0)
    {
      v26 = -(-(v132 + 1) & 0xF);
    }

    v132 = v26;
    goto LABEL_13;
  }

  v81 = 0;
  v82 = 0;
  v83 = vdup_n_s32(v6);
  v84 = v14 - 4;
  v135 = (v9 + 16 * a3);
  v85.i64[1] = 0x7000000F8000000;
  do
  {
    if (result)
    {
      v86 = result + 16 * v132;
      v81 = v86 + 16;
      v82 = (v86 + v121);
      v87 = (v132 + 1) & 0xF;
      if (v132 + 1 <= 0)
      {
        v87 = -(-(v132 + 1) & 0xF);
      }

      v132 = v87;
    }

    v88 = *(a1 + 32) + (v12 >> v11) * v10;
    v134 = a6;
    v89 = v12;
    if (v128 != 1)
    {
      v101 = v135;
      v102 = v122;
      if (a5 < 1)
      {
        goto LABEL_168;
      }

      while (1)
      {
        v103 = *v101;
        v101 += 2;
        v104 = (v88 + v103);
        if (v84 < v88 + v103)
        {
          v104 = v84;
        }

        if (v104 < *(a1 + 32))
        {
          v104 = *(a1 + 32);
        }

        v105 = *v104;
        if (v82)
        {
          v106 = *v82;
          if ((v82 + 1) < v81)
          {
            ++v82;
          }

          else
          {
            v82 -= 15;
          }

          v107 = (16843008 * v105) | 0xFF;
          if (v6 == 255)
          {
            v108 = DITHERRGBA32(v107, v106);
          }

          else
          {
            v108 = DITHERRGBA32M(v107, v106, v6);
          }
        }

        else
        {
          v82 = 0;
          if (v6 == 255)
          {
            v108 = (v105 >> 3) & 0xFFFF801F | (32 * (v105 >> 3)) & 0x83FF | (v105 >> 3 << 10) | 0xFF000000;
          }

          else
          {
            *v85.i8 = vmul_s32(vorr_s8(vdup_n_s32(v105 << 16), (v105 | 0xFF00000000)), v83);
            *v85.i8 = vadd_s32(vadd_s32(*v85.i8, 0x1000100010001), (*&vshr_n_u32(*v85.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v109 = vzip1q_s32(v85, v85);
            v110.i64[0] = vshlq_u32(v109, xmmword_18439C930).u64[0];
            v110.i64[1] = vshlq_u32(v109, xmmword_18439C940).i64[1];
            v111 = vandq_s8(v110, xmmword_18439C950);
            *v111.i8 = vorr_s8(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
            v108 = v111.i32[0] | v111.i32[1] | (32 * (v85.i32[1] >> 27));
          }
        }

        v112 = v108 >> 27;
        if (v8)
        {
          if (v108 >> 27 == 31)
          {
            v113 = HIBYTE(v108);
            *v7 = v108;
LABEL_166:
            *v8 = v113;
            goto LABEL_167;
          }

          if (v112)
          {
            v114 = PDAplusDAM(v108, SHIBYTE(v108), *v7, *v8, HIBYTE(v108) ^ 0xFF);
            *v7 = v114;
            v113 = HIBYTE(v114);
            goto LABEL_166;
          }
        }

        else
        {
          if (v108 >> 27 == 31)
          {
            goto LABEL_163;
          }

          if (v112)
          {
            LOWORD(v108) = PDplusDM(v108, *v7, ~v108 >> 24);
LABEL_163:
            *v7 = v108;
          }
        }

LABEL_167:
        ++v7;
        v8 += v139;
        if (!--v102)
        {
          goto LABEL_168;
        }
      }
    }

    if (a5 >= 1)
    {
      v90 = v135;
      v91 = v122;
      do
      {
        v92 = *v90;
        v90 += 2;
        v93 = (v88 + v92);
        if (v84 < v88 + v92)
        {
          v93 = v84;
        }

        if (v93 < *(a1 + 32))
        {
          v93 = *(a1 + 32);
        }

        v94 = *v93;
        if (v82)
        {
          v95 = *v82;
          if ((v82 + 1) < v81)
          {
            ++v82;
          }

          else
          {
            v82 -= 15;
          }

          v96 = (16843008 * v94) | 0xFF;
          if (v6 == 255)
          {
            v97 = DITHERRGBA32(v96, v95);
          }

          else
          {
            v97 = DITHERRGBA32M(v96, v95, v6);
          }
        }

        else
        {
          v82 = 0;
          if (v6 == 255)
          {
            v97 = (v94 >> 3) & 0xFFFF801F | (32 * (v94 >> 3)) & 0x83FF | (v94 >> 3 << 10) | 0xFF000000;
          }

          else
          {
            *v85.i8 = vmul_s32(vorr_s8(vdup_n_s32(v94 << 16), (v94 | 0xFF00000000)), v83);
            *v85.i8 = vadd_s32(vadd_s32(*v85.i8, 0x1000100010001), (*&vshr_n_u32(*v85.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v98 = vzip1q_s32(v85, v85);
            v99.i64[0] = vshlq_u32(v98, xmmword_18439C930).u64[0];
            v99.i64[1] = vshlq_u32(v98, xmmword_18439C940).i64[1];
            v100 = vandq_s8(v99, xmmword_18439C950);
            *v100.i8 = vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
            v97 = v100.i32[0] | v100.i32[1] | (32 * (v85.i32[1] >> 27));
          }
        }

        *v7 = v97;
        if (v8)
        {
          *v8 = HIBYTE(v97);
        }

        ++v7;
        v8 += v139;
        --v91;
      }

      while (v91);
    }

LABEL_168:
    v10 = v126;
    v7 += v127;
    v8 += v129;
    LOBYTE(v11) = v125;
    v12 = v89 + v124;
    a6 = v134 - 1;
    result = v123;
  }

  while (v134 != 1);
  return result;
}

uint64_t rgb555_colorlookup(int a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  if (a1 == 3)
  {
    v4 = *a2;
  }

  else
  {
    if (a3)
    {
      v5 = *a3 << 24;
    }

    else
    {
      v5 = 4278190080;
    }

    v4 = v5 | *a2;
  }

  pthread_mutex_lock(&rgb555_cacheColorLock);
  v6 = rgb555_cacheColor;
  if (rgb555_cacheColor && *(rgb555_cacheColor + 16) == v4)
  {
    v7 = rgb555_cacheColor;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v6;
      v9 = v8;
      if (*(v6 + 2) == v4)
      {
        break;
      }

      v6 = *v6;
      v8 = v7;
      if (!*v7)
      {
        if (rgb555_cacheColorCount > 6)
        {
          *v9 = 0;
          v12 = *(v7 + 1);
        }

        else
        {
LABEL_15:
          v10 = rgb555_cacheColorBase;
          if (rgb555_cacheColorBase)
          {
            v11 = rgb555_cacheColorCount;
          }

          else
          {
            v10 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x1020040A1C41DBCuLL);
            v11 = 0;
            rgb555_cacheColorBase = v10;
          }

          v7 = &v10[24 * v11];
          v12 = &v10[1024 * v11 + 168];
          *(v7 + 1) = v12;
          rgb555_cacheColorCount = v11 + 1;
        }

        *v7 = rgb555_cacheColor;
        rgb555_cacheColor = v7;
        *(v7 + 2) = v4;
        if (a1 == 3)
        {
          v13 = 0;
          v14 = 244;
          v15 = 188;
          do
          {
            v16 = pixel_dither_noise[v13 + 1];
            *(v12 + 4 * v13) = (4 * (v15 + HIDWORD(v4))) & 0x7C00 | ((v15 + WORD1(v4)) >> 3) & 0x3E0 | ((v15 + v4) >> 8) & 0x1F | ((((v14 + WORD1(v4)) >> 8) & 0x1F) << 21) & 0x83E0FFFF | ((((v14 + HIDWORD(v4)) >> 8) & 0x1F) << 26) | ((((v14 + v4) >> 8) & 0x1F) << 16);
            *(v12 + 2 * v13 + 512) = ((v15 + HIWORD(v4)) >> 5) & 0xF8 | ((v15 + HIWORD(v4)) >> 10) & 7 | ((v14 + HIWORD(v4)) >> 2) & 0x700 | ((((v14 + HIWORD(v4)) >> 8) & 0x1F) << 11);
            v14 = v16;
            v15 = v16 >> 8;
            ++v13;
          }

          while (v13 != 128);
        }

        else
        {
          v17 = 0;
          do
          {
            *(v12 + 4 * v17) = PDAM(v4, SBYTE3(v4), v17);
            ++v17;
          }

          while (v17 != 256);
        }

        goto LABEL_28;
      }
    }

    if (v8)
    {
      *v8 = *v6;
      *v6 = rgb555_cacheColor;
      rgb555_cacheColor = v6;
    }
  }

LABEL_28:
  pthread_mutex_unlock(&rgb555_cacheColorLock);
  return *(v7 + 1);
}

uint64_t rgb555_mark_constmask(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 28);
  v6 = *(a1 + 48);
  v217 = *(a1 + 40);
  v223 = *(a1 + 4);
  v7 = *(a1 + 136);
  result = rgb555_colorlookup(4, *(a1 + 88), *(a1 + 96));
  v9 = result;
  v10 = *(result + 1020);
  v11 = *(a1 + 12);
  v12 = *(a1 + 16);
  if (v6)
  {
    v13 = *(a1 + 32);
    v14 = (v6 + v13 * v12 + v11);
    v15 = 1;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 0;
    if (!v7)
    {
      return result;
    }
  }

  v16 = v13 - v223;
  if (v6)
  {
    v13 -= v223;
  }

  v214 = v13;
  v17 = a2;
  v18 = v5 >> 1;
  v19 = BYTE3(v10);
  v20 = (v217 + 2 * v18 * v12 + 2 * v11);
  v21 = *(a1 + 124);
  v22 = v7 + *(a1 + 108) * v21 + *(a1 + 104);
  v218 = v21 - v223;
  v23 = v18 - v223;
  switch(v17)
  {
    case 0:
      if (v6)
      {
        while (1)
        {
          v24 = v223;
          do
          {
            v25 = *v22;
            if (v25 < 0xF8)
            {
              if (v25 < 8)
              {
                goto LABEL_15;
              }

              result = PDAM(v20->u16[0], *v14, ~v25);
              v20->i16[0] = result;
              v26 = BYTE3(result);
            }

            else
            {
              LOBYTE(v26) = 0;
              v20->i16[0] = 0;
            }

            *v14 = v26;
LABEL_15:
            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v24;
          }

          while (v24);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          v14 += v214;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_229:
      v102 = v223;
      while (1)
      {
        v103 = *v22;
        if (v103 > 0xF7)
        {
          break;
        }

        if (v103 >= 8)
        {
          result = PDM(v20->u16[0], ~v103);
          goto LABEL_234;
        }

LABEL_235:
        ++v22;
        v20 = (v20 + 2);
        if (!--v102)
        {
          v22 += v218;
          v20 = (v20 + 2 * v23);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_229;
        }
      }

      result = 0;
LABEL_234:
      v20->i16[0] = result;
      goto LABEL_235;
    case 1:
      v127 = v22 & 3;
      if (v6)
      {
        v128 = v127 + v223;
        v129 = v20 - (v22 & 3);
        if ((v22 & 3) != 0)
        {
          v130 = v22 & 0xFC;
        }

        else
        {
          v130 = v22;
        }

        if ((v22 & 3) != 0)
        {
          result = (-1 << (8 * v127));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v22 & 3) != 0)
        {
          v131 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v131 = v22;
        }

        if ((v22 & 3) != 0)
        {
          v132 = &v14[-(v22 & 3)];
        }

        else
        {
          v132 = v14;
        }

        if (v127)
        {
          v20 = v129;
        }

        else
        {
          v128 = v223;
        }

        if (((v128 + v130) & 3) != 0)
        {
          v133 = 4 - ((v128 + v130) & 3);
          v127 += v133;
          v134 = 0xFFFFFFFF >> (8 * v133);
          if (v128 >= 4)
          {
            v135 = 0xFFFFFFFF >> (8 * v133);
          }

          else
          {
            v135 = 0;
          }

          v225 = v135;
          if (v128 >= 4)
          {
            v134 = -1;
          }

          result = v134 & result;
          v215 = result;
        }

        else
        {
          v215 = result;
          v225 = 0;
        }

        v220 = v218 - v127;
        v211 = v23 - v127;
        v209 = v128 >> 2;
        v207 = v16 - v127;
        while (1)
        {
          v183 = *v131 & v215;
          v184 = v209;
          v185 = v225;
          if (!v183)
          {
            goto LABEL_410;
          }

LABEL_408:
          if (v183 == -1)
          {
            v20->i16[0] = v10;
            *v132 = BYTE3(v10);
            v20->i16[1] = v10;
            v132[1] = BYTE3(v10);
            v20->i16[2] = v10;
            v132[2] = BYTE3(v10);
LABEL_431:
            v20->i16[3] = v10;
            v132[3] = BYTE3(v10);
            goto LABEL_410;
          }

          while (1)
          {
            if (v183 < 0xF8u)
            {
              if (v183 < 8u)
              {
                goto LABEL_420;
              }

              result = PDAplusDAM(*(v9 + 4 * v183), HIBYTE(*(v9 + 4 * v183)), v20->u16[0], *v132, ~v183);
              v20->i16[0] = result;
              v187 = BYTE3(result);
            }

            else
            {
              v20->i16[0] = v10;
              v187 = BYTE3(v10);
            }

            *v132 = v187;
LABEL_420:
            if (BYTE1(v183) < 0xF8u)
            {
              if (BYTE1(v183) < 8u)
              {
                goto LABEL_425;
              }

              result = PDAplusDAM(*(v9 + 4 * BYTE1(v183)), HIBYTE(*(v9 + 4 * BYTE1(v183))), v20->u16[1], v132[1], ~(v183 >> 8));
              v20->i16[1] = result;
              v188 = BYTE3(result);
            }

            else
            {
              v20->i16[1] = v10;
              v188 = BYTE3(v10);
            }

            v132[1] = v188;
LABEL_425:
            if (BYTE2(v183) < 0xF8u)
            {
              if (BYTE2(v183) < 8u)
              {
                goto LABEL_430;
              }

              result = PDAplusDAM(*(v9 + 4 * BYTE2(v183)), HIBYTE(*(v9 + 4 * BYTE2(v183))), v20->u16[2], v132[2], ~HIWORD(v183));
              v20->i16[2] = result;
              v189 = BYTE3(result);
            }

            else
            {
              v20->i16[2] = v10;
              v189 = BYTE3(v10);
            }

            v132[2] = v189;
LABEL_430:
            if (v183 >> 27 == 31)
            {
              goto LABEL_431;
            }

            if (v183 >> 27)
            {
              result = PDAplusDAM(*(v9 + 4 * HIBYTE(v183)), HIBYTE(*(v9 + 4 * HIBYTE(v183))), v20->u16[3], v132[3], ~v183 >> 24);
              v20->i16[3] = result;
              v132[3] = BYTE3(result);
            }

LABEL_410:
            while (1)
            {
              v186 = v184;
              ++v20;
              v132 += 4;
              --v184;
              ++v131;
              if (v186 < 2)
              {
                break;
              }

              v183 = *v131;
              if (*v131)
              {
                goto LABEL_408;
              }
            }

            if (!v185)
            {
              break;
            }

            v185 = 0;
            v183 = *v131 & v225;
          }

          v131 = (v131 + v220);
          v20 = (v20 + 2 * v211);
          v132 += v207;
          if (!--v4)
          {
            return result;
          }
        }
      }

      v159 = v18 - v223;
      v160 = v127 + v223;
      if ((v22 & 3) != 0)
      {
        v161 = v22 & 0xFC;
      }

      else
      {
        v161 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v162 = -1 << (8 * v127);
      }

      else
      {
        v162 = -1;
      }

      if ((v22 & 3) != 0)
      {
        v163 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v163 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v164 = (v20 - 2 * (v22 & 3));
      }

      else
      {
        v164 = v20;
      }

      if ((v22 & 3) == 0)
      {
        v160 = v223;
      }

      if (((v160 + v161) & 3) != 0)
      {
        v165 = 4 - ((v160 + v161) & 3);
        v127 += v165;
        v166 = 0xFFFFFFFF >> (8 * v165);
        if (v160 >= 4)
        {
          v167 = 0xFFFFFFFF >> (8 * v165);
        }

        else
        {
          v167 = 0;
        }

        if (v160 >= 4)
        {
          v166 = -1;
        }

        v227 = v166 & v162;
      }

      else
      {
        v227 = v162;
        v167 = 0;
      }

      v222 = v218 - v127;
      v216 = v160 >> 2;
      v198 = vdup_n_s16(v10);
      v213 = v159 - v127;
LABEL_459:
      v199 = *v163 & v227;
      v200 = v216;
      v201 = v167;
      if (!v199)
      {
        goto LABEL_462;
      }

LABEL_460:
      if (v199 == -1)
      {
        *v164 = v198;
        goto LABEL_462;
      }

      while (1)
      {
        v203 = v10;
        if (v199 <= 0xF7u)
        {
          if (v199 < 8u)
          {
            goto LABEL_471;
          }

          v203 = PDplusDM(*(v9 + 4 * v199), v164->u16[0], ~v199);
        }

        v164->i16[0] = v203;
LABEL_471:
        v204 = v10;
        if (BYTE1(v199) <= 0xF7u)
        {
          if (BYTE1(v199) < 8u)
          {
            goto LABEL_475;
          }

          v204 = PDplusDM(*(v9 + 4 * BYTE1(v199)), v164->u16[1], ~(v199 >> 8));
        }

        v164->i16[1] = v204;
LABEL_475:
        result = v10;
        if (BYTE2(v199) <= 0xF7u)
        {
          if (BYTE2(v199) < 8u)
          {
            goto LABEL_479;
          }

          result = PDplusDM(*(v9 + 4 * BYTE2(v199)), v164->u16[2], ~HIWORD(v199));
        }

        v164->i16[2] = result;
LABEL_479:
        if (v199 >> 27 == 31)
        {
          v164->i16[3] = v10;
        }

        else if (v199 >> 27)
        {
          result = PDplusDM(*(v9 + 4 * HIBYTE(v199)), v164->u16[3], ~v199 >> 24);
          v164->i16[3] = result;
        }

LABEL_462:
        while (1)
        {
          v202 = v200;
          ++v164;
          --v200;
          ++v163;
          if (v202 < 2)
          {
            break;
          }

          v199 = *v163;
          if (*v163)
          {
            goto LABEL_460;
          }
        }

        if (!v201)
        {
          v163 = (v163 + v222);
          v164 = (v164 + 2 * v213);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_459;
        }

        v201 = 0;
        v199 = *v163 & v167;
      }

    case 2:
      v110 = v22 & 3;
      if (v6)
      {
        v111 = v110 + v223;
        v112 = v20 - (v22 & 3);
        v113 = &v14[-(v22 & 3)];
        if ((v22 & 3) != 0)
        {
          v114 = v22 & 0xFC;
        }

        else
        {
          v114 = v22;
        }

        if ((v22 & 3) != 0)
        {
          result = (-1 << (8 * v110));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v22 & 3) != 0)
        {
          v22 &= 0xFFFFFFFFFFFFFFFCLL;
          v14 = v113;
          v20 = v112;
        }

        else
        {
          v111 = v223;
        }

        if (((v111 + v114) & 3) != 0)
        {
          v115 = 4 - ((v111 + v114) & 3);
          v110 += v115;
          v116 = 0xFFFFFFFF >> (8 * v115);
          if (v111 >= 4)
          {
            v117 = 0xFFFFFFFF >> (8 * v115);
          }

          else
          {
            v117 = 0;
          }

          v224 = v117;
          if (v111 >= 4)
          {
            v116 = -1;
          }

          result = v116 & result;
          v210 = result;
        }

        else
        {
          v210 = result;
          v224 = 0;
        }

        v219 = v218 - v110;
        v208 = v23 - v110;
        v206 = v111 >> 2;
        v205 = v16 - v110;
        while (1)
        {
          v168 = *v22 & v210;
          v169 = v206;
          v170 = v224;
          if (!v168)
          {
            goto LABEL_389;
          }

LABEL_387:
          if (v168 == -1)
          {
            break;
          }

          while (1)
          {
            if ((v168 & 0xF8) != 0)
            {
              v180 = HIBYTE(*(v9 + 4 * v168));
              result = PDAplusDAM(*(v9 + 4 * v168), v180, v20->u16[0], *v14, v180 ^ 0xFFu);
              v20->i16[0] = result;
              *v14 = BYTE3(result);
            }

            if ((v168 & 0xF800) != 0)
            {
              v181 = HIBYTE(*(v9 + 4 * BYTE1(v168)));
              result = PDAplusDAM(*(v9 + 4 * BYTE1(v168)), v181, v20->u16[1], v14[1], v181 ^ 0xFFu);
              v20->i16[1] = result;
              v14[1] = BYTE3(result);
            }

            if ((v168 & 0xF80000) != 0)
            {
              v182 = HIBYTE(*(v9 + 4 * BYTE2(v168)));
              result = PDAplusDAM(*(v9 + 4 * BYTE2(v168)), v182, v20->u16[2], v14[2], v182 ^ 0xFFu);
              v20->i16[2] = result;
              v14[2] = BYTE3(result);
            }

            if (v168 >> 27)
            {
              v178 = HIBYTE(*(v9 + 4 * HIBYTE(v168)));
              v174 = v20->u16[3];
              v175 = v14[3];
              v176 = *(v9 + 4 * HIBYTE(v168));
              v177 = v178 ^ 0xFF;
              goto LABEL_402;
            }

LABEL_389:
            while (1)
            {
              v179 = v169;
              ++v20;
              v14 += 4;
              --v169;
              v22 += 4;
              if (v179 < 2)
              {
                break;
              }

              v168 = *v22;
              if (*v22)
              {
                goto LABEL_387;
              }
            }

            if (!v170)
            {
              break;
            }

            v170 = 0;
            v168 = *v22 & v224;
          }

          v22 += v219;
          v20 = (v20 + 2 * v208);
          v14 += v205;
          if (!--v4)
          {
            return result;
          }
        }

        v171 = PDAplusDAM(v10, SBYTE3(v10), v20->u16[0], *v14, ~BYTE3(v10));
        v20->i16[0] = v171;
        *v14 = BYTE3(v171);
        v172 = PDAplusDAM(v10, SBYTE3(v10), v20->u16[1], v14[1], ~BYTE3(v10));
        v20->i16[1] = v172;
        v14[1] = BYTE3(v172);
        v173 = PDAplusDAM(v10, SBYTE3(v10), v20->u16[2], v14[2], ~BYTE3(v10));
        v20->i16[2] = v173;
        v14[2] = HIBYTE(v173);
        v174 = v20->u16[3];
        v175 = v14[3];
        v176 = v10;
        v177 = ~BYTE3(v10);
        v178 = BYTE3(v10);
LABEL_402:
        result = PDAplusDAM(v176, v178, v174, v175, v177);
        v20->i16[3] = result;
        v14[3] = BYTE3(result);
        goto LABEL_389;
      }

      v150 = v18 - v223;
      v151 = v110 + v223;
      if ((v22 & 3) != 0)
      {
        v152 = v22 & 0xFC;
      }

      else
      {
        v152 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v153 = -1 << (8 * v110);
      }

      else
      {
        v153 = -1;
      }

      if ((v22 & 3) != 0)
      {
        v154 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v154 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v155 = v20 - (v22 & 3);
      }

      else
      {
        v155 = v20;
      }

      if ((v22 & 3) == 0)
      {
        v151 = v223;
      }

      if (((v151 + v152) & 3) != 0)
      {
        v156 = 4 - ((v151 + v152) & 3);
        v110 += v156;
        v157 = 0xFFFFFFFF >> (8 * v156);
        if (v151 >= 4)
        {
          v158 = 0xFFFFFFFF >> (8 * v156);
        }

        else
        {
          v158 = 0;
        }

        if (v151 >= 4)
        {
          v157 = -1;
        }

        v226 = v157 & v153;
      }

      else
      {
        v226 = v153;
        v158 = 0;
      }

      v221 = v218 - v110;
      v190 = v151 >> 2;
      v212 = v150 - v110;
      do
      {
        v191 = *v154 & v226;
        v192 = v190;
        v193 = v158;
        if (!v191)
        {
          goto LABEL_441;
        }

LABEL_439:
        if (v191 == -1)
        {
          *v155 = PDplusDM(v10, *v155, ~BYTE3(v10));
          v155[1] = PDplusDM(v10, v155[1], ~BYTE3(v10));
          v155[2] = PDplusDM(v10, v155[2], ~BYTE3(v10));
          v194 = v155[3];
          v195 = v10;
          v196 = ~BYTE3(v10);
LABEL_454:
          result = PDplusDM(v195, v194, v196);
          v155[3] = result;
          goto LABEL_441;
        }

        while (1)
        {
          if ((v191 & 0xF8) != 0)
          {
            result = PDplusDM(*(v9 + 4 * v191), *v155, ~*(v9 + 4 * v191) >> 24);
            *v155 = result;
          }

          if ((v191 & 0xF800) != 0)
          {
            result = PDplusDM(*(v9 + 4 * BYTE1(v191)), v155[1], ~*(v9 + 4 * BYTE1(v191)) >> 24);
            v155[1] = result;
          }

          if ((v191 & 0xF80000) != 0)
          {
            result = PDplusDM(*(v9 + 4 * BYTE2(v191)), v155[2], ~*(v9 + 4 * BYTE2(v191)) >> 24);
            v155[2] = result;
          }

          if (v191 >> 27)
          {
            v194 = v155[3];
            v196 = ~*(v9 + 4 * HIBYTE(v191)) >> 24;
            v195 = *(v9 + 4 * HIBYTE(v191));
            goto LABEL_454;
          }

LABEL_441:
          while (1)
          {
            v197 = v192;
            v155 += 4;
            --v192;
            ++v154;
            if (v197 < 2)
            {
              break;
            }

            v191 = *v154;
            if (*v154)
            {
              goto LABEL_439;
            }
          }

          if (!v193)
          {
            break;
          }

          v193 = 0;
          v191 = *v154 & v158;
        }

        v154 = (v154 + v221);
        v155 += v212;
        --v4;
      }

      while (v4);
      return result;
    case 3:
      while (1)
      {
        v56 = v223;
        do
        {
          v57 = *v22;
          if (v57 < 0xF8)
          {
            if (v57 < 8)
            {
              goto LABEL_105;
            }

            v58 = *v14;
            result = PDAplusDAM(*(v9 + 4 * ((v58 * v57 + ((v58 * v57) >> 8) + 1) >> 8)), HIBYTE(*(v9 + 4 * ((v58 * v57 + ((v58 * v57) >> 8) + 1) >> 8))), v20->u16[0], v58, v57 ^ 0xFF);
          }

          else
          {
            result = *(v9 + 4 * *v14);
          }

          v20->i16[0] = result;
          *v14 = BYTE3(result);
LABEL_105:
          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v56;
        }

        while (v56);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        if (!--v4)
        {
          return result;
        }
      }

    case 4:
      while (1)
      {
        v39 = v223;
        do
        {
          v40 = *v22;
          if (v40 < 0xF8)
          {
            if (v40 < 8)
            {
              goto LABEL_57;
            }

            v41 = *v14;
            result = PDAplusDAM(*(v9 + 4 * (((v41 ^ 0xFF) * v40 + (((v41 ^ 0xFF) * v40) >> 8) + 1) >> 8)), HIBYTE(*(v9 + 4 * (((v41 ^ 0xFF) * v40 + (((v41 ^ 0xFF) * v40) >> 8) + 1) >> 8))), v20->u16[0], v41, v40 ^ 0xFF);
          }

          else
          {
            result = *(v9 + 4 * ~*v14);
          }

          v20->i16[0] = result;
          *v14 = BYTE3(result);
LABEL_57:
          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v39;
        }

        while (v39);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        if (!--v4)
        {
          return result;
        }
      }

    case 5:
      do
      {
        v67 = v223;
        do
        {
          v68 = *v22;
          if (v68 >= 8)
          {
            result = PDAMplusDAM(*(v9 + 4 * v68), HIBYTE(*(v9 + 4 * v68)), *v14, v20->u16[0], *v14, HIBYTE(*(v9 + 4 * v68)) ^ 0xFFu);
            v20->i16[0] = result;
            *v14 = BYTE3(result);
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v67;
        }

        while (v67);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 6:
      while (1)
      {
        v77 = v223;
        do
        {
          v78 = *v22;
          if (v78 < 8)
          {
            goto LABEL_165;
          }

          v79 = *v14;
          if (v79 > 7)
          {
            if (v79 > 0xF7)
            {
              goto LABEL_165;
            }

            result = PDAplusDAM(v20->u16[0], v79, *(v9 + 4 * v78), HIBYTE(*(v9 + 4 * v78)), ~v79);
          }

          else
          {
            result = *(v9 + 4 * v78);
          }

          v20->i16[0] = result;
          *v14 = BYTE3(result);
LABEL_165:
          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v77;
        }

        while (v77);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        if (!--v4)
        {
          return result;
        }
      }

    case 7:
      if (v6)
      {
        while (1)
        {
          v118 = v223;
          do
          {
            v119 = *v22;
            if (v119 < 0xF8)
            {
              if (v119 < 8)
              {
                goto LABEL_282;
              }

              v120 = v20->u16[0];
              v121 = *v14;
              LOBYTE(v122) = ~v119 + ((v19 * v119 + ((v19 * v119) >> 8) + 1) >> 8);
            }

            else
            {
              v120 = v20->u16[0];
              v121 = *v14;
              v122 = BYTE3(v10);
            }

            result = PDAM(v120, v121, v122);
            v20->i16[0] = result;
            *v14 = BYTE3(result);
LABEL_282:
            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v118;
          }

          while (v118);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          v14 += v214;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_285:
      v123 = v223;
      while (1)
      {
        v124 = *v22;
        if (v124 >= 0xF8)
        {
          break;
        }

        if (v124 >= 8)
        {
          v125 = v20->u16[0];
          LOBYTE(v126) = ~v124 + ((v19 * v124 + ((v19 * v124) >> 8) + 1) >> 8);
          goto LABEL_290;
        }

LABEL_291:
        ++v22;
        v20 = (v20 + 2);
        if (!--v123)
        {
          v22 += v218;
          v20 = (v20 + 2 * v23);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_285;
        }
      }

      v125 = v20->u16[0];
      v126 = BYTE3(v10);
LABEL_290:
      result = PDM(v125, v126);
      v20->i16[0] = result;
      goto LABEL_291;
    case 8:
      if (v6)
      {
        while (1)
        {
          v136 = v23;
          v137 = v223;
          do
          {
            v138 = *v22;
            if (v138 < 0xF8)
            {
              if (v138 < 8)
              {
                goto LABEL_324;
              }

              v139 = v20->u16[0];
              v140 = *v14;
              v141 = ~((v19 * v138 + ((v19 * v138) >> 8) + 1) >> 8);
            }

            else
            {
              v139 = v20->u16[0];
              v140 = *v14;
              v141 = ~BYTE3(v10);
            }

            result = PDAM(v139, v140, v141);
            v20->i16[0] = result;
            *v14 = BYTE3(result);
LABEL_324:
            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v137;
          }

          while (v137);
          v22 += v218;
          v23 = v136;
          v20 = (v20 + 2 * v136);
          v14 += v214;
          if (!--v4)
          {
            return result;
          }
        }
      }

      break;
    case 9:
      do
      {
        v42 = v223;
        do
        {
          v43 = *v22;
          if (v43 >= 8)
          {
            result = PDAMplusDAM(*(v9 + 4 * v43), HIBYTE(*(v9 + 4 * v43)), *v14 ^ 0xFFu, v20->u16[0], *v14, (~v43 + HIBYTE(*(v9 + 4 * v43))));
            v20->i16[0] = result;
            *v14 = BYTE3(result);
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v42;
        }

        while (v42);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 10:
      do
      {
        v84 = v223;
        do
        {
          v85 = *v22;
          if (v85 >= 8)
          {
            result = PDAMplusDAM(*(v9 + 4 * v85), HIBYTE(*(v9 + 4 * v85)), *v14 ^ 0xFFu, v20->u16[0], *v14, HIBYTE(*(v9 + 4 * v85)) ^ 0xFFu);
            v20->i16[0] = result;
            *v14 = BYTE3(result);
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v84;
        }

        while (v84);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 11:
      if (v6)
      {
        do
        {
          v104 = v223;
          do
          {
            v105 = *v22;
            if (v105 >= 8)
            {
              result = PDAplusdDA(v20->u16[0], *v14, *(v9 + 4 * v105), HIBYTE(*(v9 + 4 * v105)));
              v20->i16[0] = result;
              *v14 = BYTE3(result);
            }

            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v104;
          }

          while (v104);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          v14 += v214;
          --v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v106 = v223;
          do
          {
            v107 = *v22;
            if (v107 >= 8)
            {
              result = PDplusdDA(v20->u16[0], *(v9 + 4 * v107), HIBYTE(*(v9 + 4 * v107)));
              v20->i16[0] = result;
            }

            ++v22;
            v20 = (v20 + 2);
            --v106;
          }

          while (v106);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          --v4;
        }

        while (v4);
      }

      return result;
    case 12:
      if (v6)
      {
        do
        {
          v108 = v223;
          do
          {
            v109 = *v22;
            if (v109 >= 8)
            {
              result = PDApluslDA(v20->u16[0], *v14, *(v9 + 4 * v109), HIBYTE(*(v9 + 4 * v109)));
              v20->i16[0] = result;
              *v14 = BYTE3(result);
            }

            ++v22;
            v20 = (v20 + 2);
            v14 += v15;
            --v108;
          }

          while (v108);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          v14 += v214;
          --v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v147 = v223;
          do
          {
            v148 = *v22;
            if (v148 >= 8)
            {
              v149 = ((v20->u16[0] | (v20->u16[0] << 15)) & 0x1F07C1F) + (*(result + 4 * v148) & 0x7C1F | (((*(result + 4 * v148) >> 5) & 0x1F) << 20));
              v20->i16[0] = (((30 * ((v149 >> 5) & 0x100401)) | (15 * ((v149 >> 5) & 0x100401)) | v149) >> 15) & 0x3E0 | ((30 * ((v149 >> 5) & 0x401)) | (15 * ((v149 >> 5) & 0x401)) | v149) & 0x7C1F;
            }

            ++v22;
            v20 = (v20 + 2);
            --v147;
          }

          while (v147);
          v22 += v218;
          v20 = (v20 + 2 * v23);
          --v4;
        }

        while (v4);
      }

      return result;
    case 13:
      do
      {
        v73 = v223;
        do
        {
          v74 = *v22;
          if (v74 >= 8)
          {
            result = *(v9 + 4 * v74);
            if (result >> 27)
            {
              v75 = BYTE3(result);
              if (v6)
              {
                v76 = *v14;
                if (v76 >= 8)
                {
                  result = PDAmultiplyPDA(v20->u16[0], v76, *(v9 + 4 * v74), v75);
                  v75 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v75;
              }

              else
              {
                result = PDAmultiplyPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v74), v75);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v73;
        }

        while (v73);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 14:
      do
      {
        v35 = v223;
        do
        {
          v36 = *v22;
          if (v36 >= 8)
          {
            result = *(v9 + 4 * v36);
            if (result >> 27)
            {
              v37 = BYTE3(result);
              if (v6)
              {
                v38 = *v14;
                if (v38 >= 8)
                {
                  result = PDAscreenPDA(v20->u16[0], v38, *(v9 + 4 * v36), v37);
                  v37 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v37;
              }

              else
              {
                result = PDAscreenPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v36), v37);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v35;
        }

        while (v35);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 15:
      do
      {
        v52 = v223;
        do
        {
          v53 = *v22;
          if (v53 >= 8)
          {
            result = *(v9 + 4 * v53);
            if (result >> 27)
            {
              v54 = BYTE3(result);
              if (v6)
              {
                v55 = *v14;
                if (v55 >= 8)
                {
                  result = PDAoverlayPDA(v20->u16[0], v55, *(v9 + 4 * v53), v54);
                  v54 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v54;
              }

              else
              {
                result = PDAoverlayPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v53), v54);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v52;
        }

        while (v52);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 16:
      do
      {
        v31 = v223;
        do
        {
          v32 = *v22;
          if (v32 >= 8)
          {
            result = *(v9 + 4 * v32);
            if (result >> 27)
            {
              v33 = BYTE3(result);
              if (v6)
              {
                v34 = *v14;
                if (v34 >= 8)
                {
                  result = PDAdarkenPDA(v20->u16[0], v34, *(v9 + 4 * v32), v33);
                  v33 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v33;
              }

              else
              {
                result = PDAdarkenPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v32), v33);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v31;
        }

        while (v31);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 17:
      do
      {
        v59 = v223;
        do
        {
          v60 = *v22;
          if (v60 >= 8)
          {
            result = *(v9 + 4 * v60);
            if (result >> 27)
            {
              v61 = BYTE3(result);
              if (v6)
              {
                v62 = *v14;
                if (v62 >= 8)
                {
                  result = PDAlightenPDA(v20->u16[0], v62, *(v9 + 4 * v60), v61);
                  v61 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v61;
              }

              else
              {
                result = PDAlightenPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v60), v61);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v59;
        }

        while (v59);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 18:
      do
      {
        v80 = v223;
        do
        {
          v81 = *v22;
          if (v81 >= 8)
          {
            result = *(v9 + 4 * v81);
            if (result >> 27)
            {
              v82 = BYTE3(result);
              if (v6)
              {
                v83 = *v14;
                if (v83 >= 8)
                {
                  result = PDAcolordodgePDA(v20->u16[0], v83, *(v9 + 4 * v81), v82);
                  v82 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v82;
              }

              else
              {
                result = PDAcolordodgePDA(v20->u16[0], 0xFFu, *(v9 + 4 * v81), v82);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v80;
        }

        while (v80);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 19:
      do
      {
        v90 = v223;
        do
        {
          v91 = *v22;
          if (v91 >= 8)
          {
            result = *(v9 + 4 * v91);
            if (result >> 27)
            {
              v92 = BYTE3(result);
              if (v6)
              {
                v93 = *v14;
                if (v93 >= 8)
                {
                  result = PDAcolorburnPDA(v20->u16[0], v93, *(v9 + 4 * v91), v92);
                  v92 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v92;
              }

              else
              {
                result = PDAcolorburnPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v91), v92);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v90;
        }

        while (v90);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 20:
      do
      {
        v63 = v223;
        do
        {
          v64 = *v22;
          if (v64 >= 8)
          {
            result = *(v9 + 4 * v64);
            if (result >> 27)
            {
              v65 = BYTE3(result);
              if (v6)
              {
                v66 = *v14;
                if (v66 >= 8)
                {
                  result = PDAsoftlightPDA(v20->u16[0], v66, *(v9 + 4 * v64), v65);
                  v65 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v65;
              }

              else
              {
                result = PDAsoftlightPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v64), v65);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v63;
        }

        while (v63);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 21:
      do
      {
        v69 = v223;
        do
        {
          v70 = *v22;
          if (v70 >= 8)
          {
            result = *(v9 + 4 * v70);
            if (result >> 27)
            {
              v71 = BYTE3(result);
              if (v6)
              {
                v72 = *v14;
                if (v72 >= 8)
                {
                  result = PDAhardlightPDA(v20->u16[0], v72, *(v9 + 4 * v70), v71);
                  v71 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v71;
              }

              else
              {
                result = PDAhardlightPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v70), v71);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v69;
        }

        while (v69);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 22:
      do
      {
        v86 = v223;
        do
        {
          v87 = *v22;
          if (v87 >= 8)
          {
            result = *(v9 + 4 * v87);
            if (result >> 27)
            {
              v88 = BYTE3(result);
              if (v6)
              {
                v89 = *v14;
                if (v89 >= 8)
                {
                  result = PDAdifferencePDA(v20->u16[0], v89, *(v9 + 4 * v87), v88);
                  v88 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v88;
              }

              else
              {
                result = PDAdifferencePDA(v20->u16[0], 0xFFu, *(v9 + 4 * v87), v88);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v86;
        }

        while (v86);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 23:
      do
      {
        v94 = v223;
        do
        {
          v95 = *v22;
          if (v95 >= 8)
          {
            result = *(v9 + 4 * v95);
            if (result >> 27)
            {
              v96 = BYTE3(result);
              if (v6)
              {
                v97 = *v14;
                if (v97 >= 8)
                {
                  result = PDAexclusionPDA(v20->u16[0], v97, *(v9 + 4 * v95), v96);
                  v96 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v96;
              }

              else
              {
                result = PDAexclusionPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v95), v96);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v94;
        }

        while (v94);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 24:
      do
      {
        v48 = v223;
        do
        {
          v49 = *v22;
          if (v49 >= 8)
          {
            result = *(v9 + 4 * v49);
            if (result >> 27)
            {
              v50 = BYTE3(result);
              if (v6)
              {
                v51 = *v14;
                if (v51 >= 8)
                {
                  result = PDAhuePDA(v20->u16[0], v51, *(v9 + 4 * v49), v50);
                  v50 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v50;
              }

              else
              {
                result = PDAhuePDA(v20->u16[0], 0xFFu, *(v9 + 4 * v49), v50);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v48;
        }

        while (v48);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 25:
      do
      {
        v44 = v223;
        do
        {
          v45 = *v22;
          if (v45 >= 8)
          {
            result = *(v9 + 4 * v45);
            if (result >> 27)
            {
              v46 = BYTE3(result);
              if (v6)
              {
                v47 = *v14;
                if (v47 >= 8)
                {
                  result = PDAsaturationPDA(v20->u16[0], v47, *(v9 + 4 * v45), v46);
                  v46 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v46;
              }

              else
              {
                result = PDAsaturationPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v45), v46);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v44;
        }

        while (v44);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 26:
      do
      {
        v98 = v223;
        do
        {
          v99 = *v22;
          if (v99 >= 8)
          {
            result = *(v9 + 4 * v99);
            if (result >> 27)
            {
              v100 = BYTE3(result);
              if (v6)
              {
                v101 = *v14;
                if (v101 >= 8)
                {
                  result = PDAluminosityPDA(*(v9 + 4 * v99), v100, v20->u16[0], v101);
                  v100 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v100;
              }

              else
              {
                result = PDAluminosityPDA(*(v9 + 4 * v99), v100, v20->u16[0], 0xFFu);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v98;
        }

        while (v98);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    case 27:
      do
      {
        v27 = v223;
        do
        {
          v28 = *v22;
          if (v28 >= 8)
          {
            result = *(v9 + 4 * v28);
            if (result >> 27)
            {
              v29 = BYTE3(result);
              if (v6)
              {
                v30 = *v14;
                if (v30 >= 8)
                {
                  result = PDAluminosityPDA(v20->u16[0], v30, *(v9 + 4 * v28), v29);
                  v29 = BYTE3(result);
                }

                v20->i16[0] = result;
                *v14 = v29;
              }

              else
              {
                result = PDAluminosityPDA(v20->u16[0], 0xFFu, *(v9 + 4 * v28), v29);
                v20->i16[0] = result;
              }
            }
          }

          ++v22;
          v20 = (v20 + 2);
          v14 += v15;
          --v27;
        }

        while (v27);
        v22 += v218;
        v20 = (v20 + 2 * v23);
        v14 += v214;
        --v4;
      }

      while (v4);
      return result;
    default:
      return result;
  }

LABEL_327:
  v142 = v23;
  v143 = v223;
  while (1)
  {
    v144 = *v22;
    if (v144 >= 0xF8)
    {
      break;
    }

    if (v144 >= 8)
    {
      v145 = v20->u16[0];
      v146 = ~((v19 * v144 + ((v19 * v144) >> 8) + 1) >> 8);
      goto LABEL_332;
    }

LABEL_333:
    ++v22;
    v20 = (v20 + 2);
    if (!--v143)
    {
      v22 += v218;
      v23 = v142;
      v20 = (v20 + 2 * v142);
      if (!--v4)
      {
        return result;
      }

      goto LABEL_327;
    }
  }

  v145 = v20->u16[0];
  v146 = ~BYTE3(v10);
LABEL_332:
  result = PDM(v145, v146);
  v20->i16[0] = result;
  goto LABEL_333;
}

uint64_t rgb555_mark_pixelmask(uint64_t result, int a2)
{
  v3 = *(result + 48);
  v4 = *(result + 136);
  v5 = *(result + 12);
  v6 = *(result + 16);
  if (v3)
  {
    v7 = *(result + 32);
    v8 = (v3 + v7 * v6 + v5);
    v552 = -1;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v552 = 0;
    if (!v4)
    {
      return result;
    }
  }

  v9 = *(result + 4);
  v10 = *(result + 8);
  v12 = *(result + 88);
  v11 = *(result + 96);
  v13 = *(result + 28) >> 1;
  v14 = (*(result + 40) + 2 * v13 * v6 + 2 * v5);
  v15 = *(result + 124);
  v16 = (v4 + *(result + 108) * v15 + *(result + 104));
  v17 = *(result + 56);
  v18 = *(result + 60);
  v19 = BYTE1(*result);
  if (v19 == 3)
  {
    v572 = *(result + 124);
    v547 = *(result + 96);
    v22 = rgb555_colorlookup(3, v12, v11);
    v15 = v572;
    v12 = v22;
    v23 = (v22 + 512);
    result = v547;
    if (v547)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

    if (v547)
    {
      v24 = 16;
    }

    else
    {
      v24 = 0;
    }

    v526 = v24;
    v20 = 16;
    v21 = v547 != 0;
    v25 = 16;
    v26 = 16;
    goto LABEL_26;
  }

  if (v19 != 1)
  {
    v26 = *(result + 64);
    v25 = *(result + 68);
    v20 = *(result + 76) >> 1;
    if (v11)
    {
      v526 = *(result + 80);
      v21 = 1;
    }

    else
    {
      v526 = 0;
      v21 = 0;
    }

LABEL_26:
    v32 = v12 + 2 * v20 * v25;
    v552 &= 1u;
    v31 = 1;
    v549 = v12;
    v573 = v12;
    goto LABEL_27;
  }

  v20 = *(result + 76) >> 1;
  if (v11)
  {
    v526 = *(result + 80);
    v11 += v526 * v18 + v17;
    v21 = -1;
  }

  else
  {
    v526 = 0;
    v21 = 0;
  }

  v573 = (v12 + 2 * v20 * v18 + 2 * v17);
  if (v20 == v13)
  {
    v27 = v14 - v573;
    if (v27 >= 1)
    {
      if (v27 <= v9)
      {
        v14 += v9 - 1;
        v573 += v9 - 1;
        v16 += v9 - 1;
        v8 += v552 & (v9 - 1);
        v31 = -1;
        v20 = *(result + 28) >> 1;
        v11 += v21 & (v9 - 1);
        goto LABEL_24;
      }

      v28 = v10 - 1;
      v29 = v13 * v28;
      v30 = &v573[v13 * v28];
      if (v14 <= &v30[v9 - 1])
      {
        v20 = -v13;
        v16 += v15 * v28;
        v15 = -v15;
        v8 += v7 * v28;
        v7 = -v7;
        v552 &= 1u;
        v11 += v526 * v28;
        v526 = -v526;
        v21 &= 1u;
        v31 = 1;
        v573 = v30;
        v13 = -v13;
        v14 += v29;
        goto LABEL_24;
      }
    }
  }

  v552 &= 1u;
  v21 &= 1u;
  v31 = 1;
LABEL_24:
  v32 = 0;
  v549 = 0;
  v12 = -1;
  v25 = v526;
  v26 = v20;
LABEL_27:
  v33 = v31 * v9;
  v527 = v9;
  v550 = v32;
  v551 = v10;
  v561 = v21;
  if (v32)
  {
    v34 = v18 % v25;
    v523 = v20;
    v35 = &v573[v20 * v34];
    v36 = v17 % v26;
    v37 = v26;
    v12 = &v35[v26];
    if (v21)
    {
      v11 += v526 * v34 + v36;
    }

    v548 = v11;
    v549 = &v35[v36];
    v573 = v549;
  }

  else
  {
    v548 = v11;
    v523 = v20 - v33;
    v526 -= v21 * v9;
    v37 = v26;
  }

  v525 = v15 - v33;
  v524 = v13 - v33;
  v522 = v7 - v552 * v9;
  v571 = v31;
  switch(a2)
  {
    case 0:
      if (v552)
      {
        while (1)
        {
          v38 = v527;
          do
          {
            v39 = *v16;
            if (v39 < 0xF8)
            {
              if (v39 < 8)
              {
                goto LABEL_40;
              }

              result = PDAM(*v14, *v8, ~v39);
              *v14 = result;
              v40 = BYTE3(result);
            }

            else
            {
              LOBYTE(v40) = 0;
              *v14 = 0;
            }

            *v8 = v40;
LABEL_40:
            v16 += v571;
            v8 += v552;
            v14 += v571;
            --v38;
          }

          while (v38);
          v16 += v525;
          v14 += v524;
          v8 += v522;
          if (!--v551)
          {
            return result;
          }
        }
      }

LABEL_765:
      v445 = v9;
      while (1)
      {
        v446 = *v16;
        if (v446 > 0xF7)
        {
          break;
        }

        if (v446 >= 8)
        {
          result = PDM(*v14, ~v446);
          goto LABEL_770;
        }

LABEL_771:
        v16 += v571;
        v14 += v571;
        if (!--v445)
        {
          v16 += v525;
          v14 += v524;
          if (!--v551)
          {
            return result;
          }

          goto LABEL_765;
        }
      }

      result = 0;
LABEL_770:
      *v14 = result;
      goto LABEL_771;
    case 1:
      if (v552)
      {
        v207 = v552;
        if (v21)
        {
          v208 = v21;
          v209 = -v37;
          v535 = -(v526 * v25);
          v542 = -(v523 * v25);
          v210 = 2 * v31;
          v211 = v548;
          while (1)
          {
            v212 = v527;
            do
            {
              v213 = *v16;
              if (v213 < 0xF8)
              {
                if (v213 < 8)
                {
                  goto LABEL_361;
                }

                v215 = v12;
                result = PDAMplusDAM(*v573, *v211, v213, *v14, *v8, v213 ^ 0xFF);
                v210 = 2 * v571;
                v207 = v552;
                v12 = v215;
                *v14 = result;
                v214 = BYTE3(result);
              }

              else
              {
                *v14 = *v573;
                LOBYTE(v214) = *v211;
              }

              *v8 = v214;
LABEL_361:
              v16 += v571;
              v8 += v207;
              v216 = &v573[v571];
              if (v216 >= v12)
              {
                v217 = v209;
              }

              else
              {
                v217 = 0;
              }

              v211 += v208 + v217;
              v573 = &v216[v217];
              v14 = (v14 + v210);
              --v212;
            }

            while (v212);
            if (v550)
            {
              v218 = &v549[v523];
              v219 = v535;
              if (v218 < v550)
              {
                v219 = 0;
              }

              v211 = &v548[v526 + v219];
              v220 = v542;
              if (v218 < v550)
              {
                v220 = 0;
              }

              v12 += 2 * v220 + 2 * v523;
              v548 += v526 + v219;
              v549 = &v218[v220];
              v573 = v549;
            }

            else
            {
              v573 += v523;
              v211 += v526;
            }

            v16 += v525;
            v14 += v524;
            v8 += v522;
            if (!--v551)
            {
              return result;
            }
          }
        }

        v473 = -v37;
        v474 = -(v523 * v25);
LABEL_816:
        v475 = v527;
        v476 = v550;
        while (1)
        {
          v477 = *v16;
          if (v477 >= 0xF8)
          {
            break;
          }

          if (v477 >= 8)
          {
            v479 = v12;
            result = PDAMplusDAM(*v573, 255, v477, *v14, *v8, v477 ^ 0xFF);
            v207 = v552;
            v476 = v550;
            v12 = v479;
            *v14 = result;
            v478 = BYTE3(result);
            goto LABEL_821;
          }

LABEL_822:
          v16 += v571;
          v8 += v207;
          v480 = &v573[v571];
          if (v480 >= v12)
          {
            v481 = v473;
          }

          else
          {
            v481 = 0;
          }

          v573 = &v480[v481];
          v14 += v571;
          if (!--v475)
          {
            v16 += v525;
            v14 += v524;
            v8 += v522;
            v482 = v549;
            v483 = &v549[v523];
            if (v483 >= v476)
            {
              v484 = v474;
            }

            else
            {
              v484 = 0;
            }

            v485 = &v483[v484];
            v486 = v12 + 2 * v484 + 2 * v523;
            if (v476)
            {
              v12 = v486;
              v482 = v485;
            }

            v549 = v482;
            if (!v476)
            {
              v485 = &v573[v523];
            }

            v573 = v485;
            if (!--v551)
            {
              return result;
            }

            goto LABEL_816;
          }
        }

        *v14 = *v573;
        LOBYTE(v478) = -1;
LABEL_821:
        *v8 = v478;
        goto LABEL_822;
      }

      v447 = -v37;
      v448 = -(v523 * v25);
LABEL_775:
      v449 = v9;
      v450 = v550;
      while (1)
      {
        v451 = *v16;
        if (v451 >= 0xF8)
        {
          break;
        }

        if (v451 >= 8)
        {
          v452 = v12;
          result = PDMplusDM(*v573, v451, *v14, v451 ^ 0xFF);
          v450 = v550;
          v12 = v452;
          goto LABEL_780;
        }

LABEL_781:
        v16 += v571;
        v453 = &v573[v571];
        if (v453 >= v12)
        {
          v454 = v447;
        }

        else
        {
          v454 = 0;
        }

        v573 = &v453[v454];
        v14 += v571;
        if (!--v449)
        {
          v16 += v525;
          v14 += v524;
          v455 = v549;
          v456 = &v549[v523];
          if (v456 >= v450)
          {
            v457 = v448;
          }

          else
          {
            v457 = 0;
          }

          v458 = &v456[v457];
          v459 = v12 + 2 * v457 + 2 * v523;
          if (v450)
          {
            v12 = v459;
            v455 = v458;
          }

          v549 = v455;
          if (!v450)
          {
            v458 = &v573[v523];
          }

          v573 = v458;
          if (!--v551)
          {
            return result;
          }

          goto LABEL_775;
        }
      }

      result = *v573;
LABEL_780:
      *v14 = result;
      goto LABEL_781;
    case 2:
      if (v552)
      {
        v158 = v552;
        v159 = v21;
        v160 = -v37;
        v532 = -(v526 * v25);
        v540 = -(v523 * v25);
        v161 = v548;
        v563 = v552;
        while (1)
        {
          v162 = v527;
          v555 = v12;
          do
          {
            v163 = *v16;
            if (v163 < 0xF8)
            {
              if (v163 < 8)
              {
                goto LABEL_267;
              }

              result = PDAM(*v573, *v161, v163);
              v158 = v563;
              v12 = v555;
              if (!(result >> 27))
              {
                goto LABEL_267;
              }

              v164 = BYTE3(result);
              v165 = *v14;
              v166 = *v8;
              LODWORD(result) = result;
LABEL_265:
              result = PDAplusDAM(result, v164, v165, v166, v164 ^ 0xFF);
              v158 = v563;
              v12 = v555;
              *v14 = result;
              v164 = BYTE3(result);
              goto LABEL_266;
            }

            v164 = *v161;
            if (v164 < 0xF8)
            {
              if (v164 < 8)
              {
                goto LABEL_267;
              }

              LODWORD(result) = *v573;
              v165 = *v14;
              v166 = *v8;
              goto LABEL_265;
            }

            *v14 = *v573;
LABEL_266:
            *v8 = v164;
LABEL_267:
            v16 += v571;
            v8 += v158;
            v167 = &v573[v571];
            if (v167 >= v12)
            {
              v168 = v160;
            }

            else
            {
              v168 = 0;
            }

            v161 += v159 + v168;
            v573 = &v167[v168];
            v14 += v571;
            --v162;
          }

          while (v162);
          if (v550)
          {
            v169 = &v549[v523];
            v170 = v532;
            if (v169 < v550)
            {
              v170 = 0;
            }

            v161 = &v548[v526 + v170];
            v171 = v540;
            if (v169 < v550)
            {
              v171 = 0;
            }

            v12 += 2 * v171 + 2 * v523;
            v548 += v526 + v170;
            v549 = &v169[v171];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v161 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          if (!--v551)
          {
            return result;
          }
        }
      }

      v419 = v21;
      v420 = -v37;
      v568 = -(v523 * v25);
      v560 = -(v526 * v25);
      v421 = v548;
LABEL_720:
      v422 = v527;
      v423 = v12;
      while (1)
      {
        v424 = *v16;
        if (v424 < 0xF8)
        {
          if (v424 >= 8)
          {
            result = PDAM(*v573, *v421, v424);
            v12 = v423;
            if (result >> 27)
            {
              v426 = *v14;
              v427 = ~result >> 24;
              goto LABEL_729;
            }
          }
        }

        else
        {
          v425 = *v421;
          if (v425 >= 0xF8)
          {
            result = *v573;
            goto LABEL_730;
          }

          if (v425 >= 8)
          {
            LOWORD(result) = *v573;
            v426 = *v14;
            v427 = v425 ^ 0xFF;
LABEL_729:
            result = PDplusDM(result, v426, v427);
            v12 = v423;
LABEL_730:
            *v14 = result;
          }
        }

        v16 += v571;
        v428 = &v573[v571];
        if (v428 >= v12)
        {
          v429 = v420;
        }

        else
        {
          v429 = 0;
        }

        v421 += v419 + v429;
        v573 = &v428[v429];
        v14 += v571;
        if (!--v422)
        {
          if (v550)
          {
            v430 = &v549[v523];
            v431 = v560;
            if (v430 < v550)
            {
              v431 = 0;
            }

            v421 = &v548[v526 + v431];
            v432 = v568;
            if (v430 < v550)
            {
              v432 = 0;
            }

            v12 += 2 * v432 + 2 * v523;
            v548 += v526 + v431;
            v549 = &v430[v432];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v421 += v526;
          }

          v16 += v525;
          v14 += v524;
          if (!--v551)
          {
            return result;
          }

          goto LABEL_720;
        }
      }

    case 3:
      v185 = -v37;
      v533 = -(v523 * v25);
      v511 = -(v526 * v25);
      v186 = v548;
      while (1)
      {
        v187 = v527;
        v188 = v12;
        do
        {
          v189 = *v16;
          if (v189 < 0xF8)
          {
            if (v189 < 8)
            {
              goto LABEL_318;
            }

            if (v561)
            {
              v191 = *v186;
            }

            else
            {
              v191 = -1;
            }

            result = PDAMplusDAM(*v573, v191, ((*v8 * v189 + ((*v8 * v189) >> 8) + 1) >> 8), *v14, *v8, v189 ^ 0xFF);
          }

          else
          {
            if (v561)
            {
              v190 = *v186;
            }

            else
            {
              v190 = -1;
            }

            result = PDAM(*v573, v190, *v8);
          }

          *v14 = result;
          *v8 = BYTE3(result);
          v12 = v188;
LABEL_318:
          v16 += v571;
          v8 += v552;
          v192 = &v573[v571];
          if (v192 >= v12)
          {
            v193 = v185;
          }

          else
          {
            v193 = 0;
          }

          v186 += v561 + v193;
          v573 = &v192[v193];
          v14 += v571;
          --v187;
        }

        while (v187);
        if (v550)
        {
          v194 = &v549[v523];
          v195 = v511;
          if (v194 < v550)
          {
            v195 = 0;
          }

          v186 = &v548[v526 + v195];
          v196 = v533;
          if (v194 < v550)
          {
            v196 = 0;
          }

          v12 += 2 * v196 + 2 * v523;
          v548 += v526 + v195;
          v549 = &v194[v196];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v186 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        if (!--v551)
        {
          return result;
        }
      }

    case 4:
      v92 = -v37;
      v529 = -(v523 * v25);
      v506 = -(v526 * v25);
      v93 = v548;
      while (1)
      {
        v94 = v527;
        v95 = v12;
        do
        {
          v96 = *v16;
          if (v96 < 0xF8)
          {
            if (v96 < 8)
            {
              goto LABEL_153;
            }

            if (v561)
            {
              v98 = *v93;
            }

            else
            {
              v98 = -1;
            }

            result = PDAMplusDAM(*v573, v98, (((*v8 ^ 0xFF) * v96 + (((*v8 ^ 0xFF) * v96) >> 8) + 1) >> 8), *v14, *v8, v96 ^ 0xFF);
          }

          else
          {
            if (v561)
            {
              v97 = *v93;
            }

            else
            {
              v97 = -1;
            }

            result = PDAM(*v573, v97, ~*v8);
          }

          *v14 = result;
          *v8 = BYTE3(result);
          v12 = v95;
LABEL_153:
          v16 += v571;
          v8 += v552;
          v99 = &v573[v571];
          if (v99 >= v12)
          {
            v100 = v92;
          }

          else
          {
            v100 = 0;
          }

          v93 += v561 + v100;
          v573 = &v99[v100];
          v14 += v571;
          --v94;
        }

        while (v94);
        if (v550)
        {
          v101 = &v549[v523];
          v102 = v506;
          if (v101 < v550)
          {
            v102 = 0;
          }

          v93 = &v548[v526 + v102];
          v103 = v529;
          if (v101 < v550)
          {
            v103 = 0;
          }

          v12 += 2 * v103 + 2 * v523;
          v548 += v526 + v102;
          v549 = &v101[v103];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v93 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        if (!--v551)
        {
          return result;
        }
      }

    case 5:
      v247 = v552;
      v248 = v21;
      v249 = -v37;
      v565 = -(v523 * v25);
      v543 = -(v526 * v25);
      v250 = v548;
      do
      {
        v251 = v527;
        v556 = v12;
        do
        {
          v252 = *v16;
          if (v252 >= 8)
          {
            v253 = *v8;
            v254 = v249;
            v255 = PDAM(*v573, *v250, v252);
            result = PDAMplusDAM(v255, SHIBYTE(v255), v253, *v14, v253, HIBYTE(v255) ^ 0xFF);
            v249 = v254;
            v12 = v556;
            *v14 = result;
            *v8 = BYTE3(result);
          }

          v16 += v571;
          v8 += v247;
          v256 = &v573[v571];
          if (v256 >= v12)
          {
            v257 = v249;
          }

          else
          {
            v257 = 0;
          }

          v250 += v248 + v257;
          v573 = &v256[v257];
          v14 += v571;
          --v251;
        }

        while (v251);
        if (v550)
        {
          v258 = &v549[v523];
          v259 = v543;
          if (v258 < v550)
          {
            v259 = 0;
          }

          v250 = &v548[v526 + v259];
          v260 = v565;
          if (v258 < v550)
          {
            v260 = 0;
          }

          v12 += 2 * v260 + 2 * v523;
          v548 += v526 + v259;
          v549 = &v258[v260];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v250 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 6:
      v287 = v552;
      v288 = -v37;
      v536 = -(v523 * v25);
      v516 = -(v526 * v25);
      v289 = v548;
      v544 = v552;
      while (1)
      {
        v290 = v9;
        v557 = v12;
        do
        {
          v291 = *v16;
          if (v291 < 8)
          {
            goto LABEL_505;
          }

          v292 = *v8;
          if (v292 > 7)
          {
            if (v292 > 0xF7)
            {
              goto LABEL_505;
            }

            if (v561)
            {
              v294 = *v289;
            }

            else
            {
              v294 = -1;
            }

            result = PDAplusDAM(*v14, v292, *v573, v294, ((~v292 * v291 + ((~v292 * v291) >> 8) + 1) >> 8));
          }

          else
          {
            if (v561)
            {
              v293 = *v289;
            }

            else
            {
              v293 = -1;
            }

            result = PDAM(*v573, v293, v291);
          }

          *v14 = result;
          *v8 = BYTE3(result);
          v12 = v557;
          v287 = v544;
LABEL_505:
          v16 += v571;
          v8 += v287;
          v295 = &v573[v571];
          if (v295 >= v12)
          {
            v296 = v288;
          }

          else
          {
            v296 = 0;
          }

          v289 += v561 + v296;
          v573 = &v295[v296];
          v14 += v571;
          --v290;
        }

        while (v290);
        if (v550)
        {
          v297 = &v549[v523];
          v298 = v516;
          if (v297 < v550)
          {
            v298 = 0;
          }

          v289 = &v548[v526 + v298];
          v299 = v536;
          if (v297 < v550)
          {
            v299 = 0;
          }

          v12 += 2 * v299 + 2 * v523;
          v548 += v526 + v298;
          v549 = &v297[v299];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v289 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        if (!--v551)
        {
          return result;
        }
      }

    case 7:
      if (v552)
      {
        v564 = v21;
        v197 = -v37;
        v534 = -(v526 * v25);
        v541 = -(v523 * v25);
        v198 = v548;
        while (1)
        {
          v199 = v527;
          v200 = v12;
          do
          {
            v201 = *v16;
            if (v201 < 0xF8)
            {
              if (v201 < 8)
              {
                goto LABEL_339;
              }

              result = PDAMplusDAM(*v14, *v8, ((*v198 * v201 + ((*v198 * v201) >> 8) + 1) >> 8), *v14, *v8, v201 ^ 0xFF);
            }

            else
            {
              result = PDAM(*v14, *v8, *v198);
            }

            *v14 = result;
            *v8 = BYTE3(result);
            v12 = v200;
LABEL_339:
            v16 += v571;
            v8 += v552;
            v202 = &v573[v571];
            if (v202 >= v12)
            {
              v203 = v197;
            }

            else
            {
              v203 = 0;
            }

            v198 += v564 + v203;
            v573 = &v202[v203];
            v14 += v571;
            --v199;
          }

          while (v199);
          if (v550)
          {
            v204 = &v549[v523];
            v205 = v534;
            if (v204 < v550)
            {
              v205 = 0;
            }

            v198 = &v548[v526 + v205];
            v206 = v541;
            if (v204 < v550)
            {
              v206 = 0;
            }

            v12 += 2 * v206 + 2 * v523;
            v548 += v526 + v205;
            v549 = &v204[v206];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v198 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          if (!--v551)
          {
            return result;
          }
        }
      }

      v433 = v21;
      v434 = -v37;
      v435 = -(v523 * v25);
      v569 = -(v526 * v25);
      v436 = v548;
LABEL_745:
      v437 = v527;
      v438 = v12;
      while (1)
      {
        v439 = *v16;
        if (v439 == 248)
        {
          break;
        }

        if (v439 >= 8)
        {
          result = PDMplusDM(*v14, ((*v436 * v439 + ((*v436 * v439) >> 8) + 1) >> 8), *v14, v439 ^ 0xFF);
          goto LABEL_750;
        }

LABEL_751:
        v16 += v571;
        v440 = &v573[v571];
        if (v440 >= v12)
        {
          v441 = v434;
        }

        else
        {
          v441 = 0;
        }

        v436 += v433 + v441;
        v573 = &v440[v441];
        v14 += v571;
        if (!--v437)
        {
          if (v550)
          {
            v442 = &v549[v523];
            v443 = v569;
            if (v442 < v550)
            {
              v443 = 0;
            }

            v436 = &v548[v526 + v443];
            if (v442 >= v550)
            {
              v444 = v435;
            }

            else
            {
              v444 = 0;
            }

            v12 += 2 * v444 + 2 * v523;
            v548 += v526 + v443;
            v549 = &v442[v444];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v436 += v526;
          }

          v16 += v525;
          v14 += v524;
          if (!--v551)
          {
            return result;
          }

          goto LABEL_745;
        }
      }

      result = PDM(*v14, *v436);
LABEL_750:
      *v14 = result;
      v12 = v438;
      goto LABEL_751;
    case 8:
      if (v552)
      {
        v567 = v21;
        v327 = -v37;
        v537 = -(v526 * v25);
        v546 = -(v523 * v25);
        v328 = v548;
        while (1)
        {
          v329 = v527;
          v330 = v12;
          do
          {
            v331 = *v16;
            if (v331 < 0xF8)
            {
              if (v331 < 8)
              {
                goto LABEL_567;
              }

              v332 = *v14;
              v333 = *v8;
              v334 = ~((*v328 * v331 + ((*v328 * v331) >> 8) + 1) >> 8);
            }

            else
            {
              v332 = *v14;
              v333 = *v8;
              v334 = ~*v328;
            }

            result = PDAM(v332, v333, v334);
            *v14 = result;
            *v8 = BYTE3(result);
            v12 = v330;
LABEL_567:
            v16 += v571;
            v8 += v552;
            v335 = &v573[v571];
            if (v335 >= v12)
            {
              v336 = v327;
            }

            else
            {
              v336 = 0;
            }

            v328 += v567 + v336;
            v573 = &v335[v336];
            v14 += v571;
            --v329;
          }

          while (v329);
          if (v550)
          {
            v337 = &v549[v523];
            v338 = v537;
            if (v337 < v550)
            {
              v338 = 0;
            }

            v328 = &v548[v526 + v338];
            v339 = v546;
            if (v337 < v550)
            {
              v339 = 0;
            }

            v12 += 2 * v339 + 2 * v523;
            v548 += v526 + v338;
            v549 = &v337[v339];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v328 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          if (!--v551)
          {
            return result;
          }
        }
      }

      v460 = v21;
      v461 = -v37;
      v462 = -(v523 * v25);
      v570 = -(v526 * v25);
      v463 = v548;
      break;
    case 9:
      v118 = v552;
      v119 = v21;
      v120 = -v37;
      v562 = -(v523 * v25);
      v531 = -(v526 * v25);
      v121 = v548;
      v539 = v552;
      do
      {
        v122 = v527;
        v554 = v12;
        do
        {
          v123 = *v16;
          if (v123 >= 8)
          {
            v124 = *v8;
            v125 = v120;
            v126 = PDAM(*v573, *v121, *v16);
            result = PDAMplusDAM(v126, SBYTE3(v126), v124 ^ 0xFFu, *v14, v124, (~v123 + BYTE3(v126)));
            v120 = v125;
            v118 = v539;
            v12 = v554;
            *v14 = result;
            *v8 = BYTE3(result);
          }

          v16 += v571;
          v8 += v118;
          v127 = &v573[v571];
          if (v127 >= v12)
          {
            v128 = v120;
          }

          else
          {
            v128 = 0;
          }

          v121 += v119 + v128;
          v573 = &v127[v128];
          v14 += v571;
          --v122;
        }

        while (v122);
        if (v550)
        {
          v129 = &v549[v523];
          v130 = v531;
          if (v129 < v550)
          {
            v130 = 0;
          }

          v121 = &v548[v526 + v130];
          v131 = v562;
          if (v129 < v550)
          {
            v131 = 0;
          }

          v12 += 2 * v131 + 2 * v523;
          v548 += v526 + v130;
          v549 = &v129[v131];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v121 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 10:
      v313 = v552;
      v314 = v21;
      v566 = -v37;
      v558 = -(v523 * v25);
      v545 = -(v526 * v25);
      v315 = v548;
      do
      {
        v316 = v527;
        do
        {
          v317 = *v16;
          if (v317 >= 8)
          {
            v318 = *v8;
            v319 = v12;
            v320 = v314;
            v321 = PDAM(*v573, *v315, v317);
            result = PDAMplusDAM(v321, SHIBYTE(v321), v318 ^ 0xFFu, *v14, v318, HIBYTE(v321) ^ 0xFF);
            v314 = v320;
            v12 = v319;
            *v14 = result;
            *v8 = BYTE3(result);
          }

          v16 += v571;
          v8 += v313;
          v322 = &v573[v571];
          v323 = v566;
          if (v322 < v12)
          {
            v323 = 0;
          }

          v315 += v314 + v323;
          v573 = &v322[v323];
          v14 += v571;
          --v316;
        }

        while (v316);
        if (v550)
        {
          v324 = &v549[v523];
          v325 = v545;
          if (v324 < v550)
          {
            v325 = 0;
          }

          v315 = &v548[v526 + v325];
          v326 = v558;
          if (v324 < v550)
          {
            v326 = 0;
          }

          v12 += 2 * v326 + 2 * v523;
          v548 += v526 + v325;
          v549 = &v324[v326];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v315 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 11:
      if (v552)
      {
        v80 = v552;
        v81 = -v37;
        v528 = -(v523 * v25);
        v505 = -(v526 * v25);
        v82 = v548;
        v538 = v552;
        do
        {
          v83 = v9;
          v553 = v12;
          do
          {
            v84 = *v16;
            if (v84 >= 8)
            {
              if (v561)
              {
                v85 = *v82;
              }

              else
              {
                v85 = -1;
              }

              v86 = PDAM(*v573, v85, v84);
              result = PDAplusdDA(*v14, *v8, v86, HIBYTE(v86));
              *v14 = result;
              *v8 = BYTE3(result);
              v12 = v553;
              v80 = v538;
            }

            v16 += v571;
            v8 += v80;
            v87 = &v573[v571];
            if (v87 >= v12)
            {
              v88 = v81;
            }

            else
            {
              v88 = 0;
            }

            v82 += v561 + v88;
            v573 = &v87[v88];
            v14 += v571;
            --v83;
          }

          while (v83);
          if (v550)
          {
            v89 = &v549[v523];
            v90 = v505;
            if (v89 < v550)
            {
              v90 = 0;
            }

            v82 = &v548[v526 + v90];
            v91 = v528;
            if (v89 < v550)
            {
              v91 = 0;
            }

            v12 += 2 * v91 + 2 * v523;
            v548 += v526 + v90;
            v549 = &v89[v91];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v82 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          --v551;
        }

        while (v551);
      }

      else
      {
        v392 = -v37;
        v393 = -(v523 * v25);
        v559 = -(v526 * v25);
        v394 = v548;
        do
        {
          v395 = v527;
          v396 = v12;
          do
          {
            v397 = *v16;
            if (v397 >= 8)
            {
              if (v561)
              {
                v398 = *v394;
              }

              else
              {
                v398 = -1;
              }

              v399 = PDAM(*v573, v398, v397);
              result = PDplusdDA(*v14, v399, HIBYTE(v399));
              *v14 = result;
              v12 = v396;
            }

            v16 += v571;
            v400 = &v573[v571];
            if (v400 >= v12)
            {
              v401 = v392;
            }

            else
            {
              v401 = 0;
            }

            v394 += v561 + v401;
            v573 = &v400[v401];
            v14 += v571;
            --v395;
          }

          while (v395);
          if (v550)
          {
            v402 = &v549[v523];
            v403 = v559;
            if (v402 < v550)
            {
              v403 = 0;
            }

            v394 = &v548[v526 + v403];
            if (v402 >= v550)
            {
              v404 = v393;
            }

            else
            {
              v404 = 0;
            }

            v12 += 2 * v404 + 2 * v523;
            v548 += v526 + v403;
            v549 = &v402[v404];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v394 += v526;
          }

          v16 += v525;
          v14 += v524;
          --v551;
        }

        while (v551);
      }

      return result;
    case 12:
      if (v552)
      {
        v104 = v552;
        v105 = v21;
        v106 = -v37;
        v530 = -(v523 * v25);
        v507 = -(v526 * v25);
        v107 = v548;
        do
        {
          v108 = v527;
          v109 = v12;
          do
          {
            v110 = *v16;
            if (v110 >= 8)
            {
              if (v561)
              {
                v111 = *v107;
              }

              else
              {
                v111 = -1;
              }

              v112 = PDAM(*v573, v111, v110);
              result = PDApluslDA(*v14, *v8, v112, HIBYTE(v112));
              *v14 = result;
              *v8 = BYTE3(result);
              v12 = v109;
              v104 = v552;
              v105 = v561;
            }

            v16 += v571;
            v8 += v104;
            v113 = &v573[v571];
            if (v113 >= v12)
            {
              v114 = v106;
            }

            else
            {
              v114 = 0;
            }

            v107 += v105 + v114;
            v573 = &v113[v114];
            v14 += v571;
            --v108;
          }

          while (v108);
          if (v550)
          {
            v115 = &v549[v523];
            v116 = v507;
            if (v115 < v550)
            {
              v116 = 0;
            }

            v107 = &v548[v526 + v116];
            v117 = v530;
            if (v115 < v550)
            {
              v117 = 0;
            }

            v12 += 2 * v117 + 2 * v523;
            v548 += v526 + v116;
            v549 = &v115[v117];
            v573 = v549;
          }

          else
          {
            v573 += v523;
            v107 += v526;
          }

          v16 += v525;
          v14 += v524;
          v8 += v522;
          --v551;
        }

        while (v551);
      }

      else
      {
        v405 = -v37;
        v406 = -(v523 * v25);
        do
        {
          v407 = v9;
          v408 = v550;
          do
          {
            v409 = *v16;
            if (v409 >= 8)
            {
              v410 = v12;
              result = PDM(*v573, v409);
              v12 = v410;
              v411 = ((*v14 | (*v14 << 15)) & 0x1F07C1F) + ((result | (result << 15)) & 0x1F07C1F);
              v408 = v550;
              *v14 = (((30 * ((v411 >> 5) & 0x100401)) | (15 * ((v411 >> 5) & 0x100401)) | v411) >> 15) & 0x3E0 | ((30 * ((v411 >> 5) & 0x401)) | (15 * ((v411 >> 5) & 0x401)) | v411) & 0x7C1F;
            }

            v16 += v571;
            v412 = &v573[v571];
            if (v412 >= v12)
            {
              v413 = v405;
            }

            else
            {
              v413 = 0;
            }

            v573 = &v412[v413];
            v14 += v571;
            --v407;
          }

          while (v407);
          v16 += v525;
          v14 += v524;
          v414 = v549;
          v415 = &v549[v523];
          if (v415 >= v408)
          {
            v416 = v406;
          }

          else
          {
            v416 = 0;
          }

          v417 = &v415[v416];
          v418 = v12 + 2 * v416 + 2 * v523;
          if (v408)
          {
            v12 = v418;
            v414 = v417;
          }

          v549 = v414;
          if (!v408)
          {
            v417 = &v573[v523];
          }

          v573 = v417;
          --v551;
        }

        while (v551);
      }

      return result;
    case 13:
      v274 = -v37;
      v496 = -(v526 * v25);
      v515 = -(v523 * v25);
      v275 = v548;
      do
      {
        v276 = v527;
        v277 = v12;
        do
        {
          v278 = *v16;
          if (v278 >= 8)
          {
            v279 = v561 ? *v275 : -1;
            result = PDAM(*v573, v279, v278);
            v12 = v277;
            if (result >> 27)
            {
              if (v552)
              {
                v280 = BYTE3(result);
                v281 = *v8;
                if (v281 >= 8)
                {
                  result = PDAmultiplyPDA(*v14, v281, result, v280);
                  v12 = v277;
                  v280 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v280;
              }

              else
              {
                result = PDAmultiplyPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v277;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v282 = &v573[v571];
          if (v282 >= v12)
          {
            v283 = v274;
          }

          else
          {
            v283 = 0;
          }

          v275 += v561 + v283;
          v573 = &v282[v283];
          v14 += v571;
          --v276;
        }

        while (v276);
        if (v550)
        {
          v284 = &v549[v523];
          v285 = v496;
          if (v284 < v550)
          {
            v285 = 0;
          }

          v275 = &v548[v526 + v285];
          v286 = v515;
          if (v284 < v550)
          {
            v286 = 0;
          }

          v12 += 2 * v286 + 2 * v523;
          v548 += v526 + v285;
          v549 = &v284[v286];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v275 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 14:
      v67 = -v37;
      v489 = -(v526 * v25);
      v504 = -(v523 * v25);
      v68 = v548;
      do
      {
        v69 = v527;
        v70 = v12;
        do
        {
          v71 = *v16;
          if (v71 >= 8)
          {
            v72 = v561 ? *v68 : -1;
            result = PDAM(*v573, v72, v71);
            v12 = v70;
            if (result >> 27)
            {
              if (v552)
              {
                v73 = BYTE3(result);
                v74 = *v8;
                if (v74 >= 8)
                {
                  result = PDAscreenPDA(*v14, v74, result, v73);
                  v12 = v70;
                  v73 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v73;
              }

              else
              {
                result = PDAscreenPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v70;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v75 = &v573[v571];
          if (v75 >= v12)
          {
            v76 = v67;
          }

          else
          {
            v76 = 0;
          }

          v68 += v561 + v76;
          v573 = &v75[v76];
          v14 += v571;
          --v69;
        }

        while (v69);
        if (v550)
        {
          v77 = &v549[v523];
          v78 = v489;
          if (v77 < v550)
          {
            v78 = 0;
          }

          v68 = &v548[v526 + v78];
          v79 = v504;
          if (v77 < v550)
          {
            v79 = 0;
          }

          v12 += 2 * v79 + 2 * v523;
          v548 += v526 + v78;
          v549 = &v77[v79];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v68 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 15:
      v172 = -v37;
      v492 = -(v526 * v25);
      v510 = -(v523 * v25);
      v173 = v548;
      do
      {
        v174 = v527;
        v175 = v12;
        do
        {
          v176 = *v16;
          if (v176 >= 8)
          {
            v177 = v561 ? *v173 : -1;
            result = PDAM(*v573, v177, v176);
            v12 = v175;
            if (result >> 27)
            {
              if (v552)
              {
                v178 = BYTE3(result);
                v179 = *v8;
                if (v179 >= 8)
                {
                  result = PDAoverlayPDA(*v14, v179, result, v178);
                  v12 = v175;
                  v178 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v178;
              }

              else
              {
                result = PDAoverlayPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v175;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v180 = &v573[v571];
          if (v180 >= v12)
          {
            v181 = v172;
          }

          else
          {
            v181 = 0;
          }

          v173 += v561 + v181;
          v573 = &v180[v181];
          v14 += v571;
          --v174;
        }

        while (v174);
        if (v550)
        {
          v182 = &v549[v523];
          v183 = v492;
          if (v182 < v550)
          {
            v183 = 0;
          }

          v173 = &v548[v526 + v183];
          v184 = v510;
          if (v182 < v550)
          {
            v184 = 0;
          }

          v12 += 2 * v184 + 2 * v523;
          v548 += v526 + v183;
          v549 = &v182[v184];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v173 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 16:
      v54 = -v37;
      v488 = -(v526 * v25);
      v503 = -(v523 * v25);
      v55 = v548;
      do
      {
        v56 = v527;
        v57 = v12;
        do
        {
          v58 = *v16;
          if (v58 >= 8)
          {
            v59 = v561 ? *v55 : -1;
            result = PDAM(*v573, v59, v58);
            v12 = v57;
            if (result >> 27)
            {
              if (v552)
              {
                v60 = BYTE3(result);
                v61 = *v8;
                if (v61 >= 8)
                {
                  result = PDAdarkenPDA(*v14, v61, result, v60);
                  v12 = v57;
                  v60 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v60;
              }

              else
              {
                result = PDAdarkenPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v57;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v62 = &v573[v571];
          if (v62 >= v12)
          {
            v63 = v54;
          }

          else
          {
            v63 = 0;
          }

          v55 += v561 + v63;
          v573 = &v62[v63];
          v14 += v571;
          --v56;
        }

        while (v56);
        if (v550)
        {
          v64 = &v549[v523];
          v65 = v488;
          if (v64 < v550)
          {
            v65 = 0;
          }

          v55 = &v548[v526 + v65];
          v66 = v503;
          if (v64 < v550)
          {
            v66 = 0;
          }

          v12 += 2 * v66 + 2 * v523;
          v548 += v526 + v65;
          v549 = &v64[v66];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v55 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 17:
      v221 = -v37;
      v493 = -(v526 * v25);
      v512 = -(v523 * v25);
      v222 = v548;
      do
      {
        v223 = v527;
        v224 = v12;
        do
        {
          v225 = *v16;
          if (v225 >= 8)
          {
            v226 = v561 ? *v222 : -1;
            result = PDAM(*v573, v226, v225);
            v12 = v224;
            if (result >> 27)
            {
              v227 = BYTE3(result);
              if (v552)
              {
                v228 = *v8;
                if (v228 >= 8)
                {
                  result = PDAlightenPDA(*v14, v228, result, v227);
                  v12 = v224;
                  v227 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v227;
              }

              else
              {
                result = PDAlightenPDA(*v14, 0xFFu, result, v227);
                v12 = v224;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v229 = &v573[v571];
          if (v229 >= v12)
          {
            v230 = v221;
          }

          else
          {
            v230 = 0;
          }

          v222 += v561 + v230;
          v573 = &v229[v230];
          v14 += v571;
          --v223;
        }

        while (v223);
        if (v550)
        {
          v231 = &v549[v523];
          v232 = v493;
          if (v231 < v550)
          {
            v232 = 0;
          }

          v222 = &v548[v526 + v232];
          v233 = v512;
          if (v231 < v550)
          {
            v233 = 0;
          }

          v12 += 2 * v233 + 2 * v523;
          v548 += v526 + v232;
          v549 = &v231[v233];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v222 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 18:
      v300 = -v37;
      v497 = -(v526 * v25);
      v517 = -(v523 * v25);
      v301 = v548;
      do
      {
        v302 = v527;
        v303 = v12;
        do
        {
          v304 = *v16;
          if (v304 >= 8)
          {
            v305 = v561 ? *v301 : -1;
            result = PDAM(*v573, v305, v304);
            v12 = v303;
            if (result >> 27)
            {
              v306 = BYTE3(result);
              if (v552)
              {
                v307 = *v8;
                if (v307 >= 8)
                {
                  result = PDAcolordodgePDA(*v14, v307, result, v306);
                  v12 = v303;
                  v306 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v306;
              }

              else
              {
                result = PDAcolordodgePDA(*v14, 0xFFu, result, v306);
                v12 = v303;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v308 = &v573[v571];
          if (v308 >= v12)
          {
            v309 = v300;
          }

          else
          {
            v309 = 0;
          }

          v301 += v561 + v309;
          v573 = &v308[v309];
          v14 += v571;
          --v302;
        }

        while (v302);
        if (v550)
        {
          v310 = &v549[v523];
          v311 = v497;
          if (v310 < v550)
          {
            v311 = 0;
          }

          v301 = &v548[v526 + v311];
          v312 = v517;
          if (v310 < v550)
          {
            v312 = 0;
          }

          v12 += 2 * v312 + 2 * v523;
          v548 += v526 + v311;
          v549 = &v310[v312];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v301 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 19:
      v353 = -v37;
      v499 = -(v526 * v25);
      v519 = -(v523 * v25);
      v354 = v548;
      do
      {
        v355 = v527;
        v356 = v12;
        do
        {
          v357 = *v16;
          if (v357 >= 8)
          {
            v358 = v561 ? *v354 : -1;
            result = PDAM(*v573, v358, v357);
            v12 = v356;
            if (result >> 27)
            {
              if (v552)
              {
                v359 = BYTE3(result);
                v360 = *v8;
                if (v360 >= 8)
                {
                  result = PDAcolorburnPDA(*v14, v360, result, v359);
                  v12 = v356;
                  v359 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v359;
              }

              else
              {
                result = PDAcolorburnPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v356;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v361 = &v573[v571];
          if (v361 >= v12)
          {
            v362 = v353;
          }

          else
          {
            v362 = 0;
          }

          v354 += v561 + v362;
          v573 = &v361[v362];
          v14 += v571;
          --v355;
        }

        while (v355);
        if (v550)
        {
          v363 = &v549[v523];
          v364 = v499;
          if (v363 < v550)
          {
            v364 = 0;
          }

          v354 = &v548[v526 + v364];
          v365 = v519;
          if (v363 < v550)
          {
            v365 = 0;
          }

          v12 += 2 * v365 + 2 * v523;
          v548 += v526 + v364;
          v549 = &v363[v365];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v354 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 20:
      v234 = -v37;
      v494 = -(v526 * v25);
      v513 = -(v523 * v25);
      v235 = v548;
      do
      {
        v236 = v527;
        v237 = v12;
        do
        {
          v238 = *v16;
          if (v238 >= 8)
          {
            v239 = v561 ? *v235 : -1;
            result = PDAM(*v573, v239, v238);
            v12 = v237;
            if (result >> 27)
            {
              v240 = BYTE3(result);
              if (v552)
              {
                v241 = *v8;
                if (v241 >= 8)
                {
                  result = PDAsoftlightPDA(*v14, v241, result, v240);
                  v12 = v237;
                  v240 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v240;
              }

              else
              {
                result = PDAsoftlightPDA(*v14, 0xFFu, result, v240);
                v12 = v237;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v242 = &v573[v571];
          if (v242 >= v12)
          {
            v243 = v234;
          }

          else
          {
            v243 = 0;
          }

          v235 += v561 + v243;
          v573 = &v242[v243];
          v14 += v571;
          --v236;
        }

        while (v236);
        if (v550)
        {
          v244 = &v549[v523];
          v245 = v494;
          if (v244 < v550)
          {
            v245 = 0;
          }

          v235 = &v548[v526 + v245];
          v246 = v513;
          if (v244 < v550)
          {
            v246 = 0;
          }

          v12 += 2 * v246 + 2 * v523;
          v548 += v526 + v245;
          v549 = &v244[v246];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v235 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 21:
      v261 = -v37;
      v495 = -(v526 * v25);
      v514 = -(v523 * v25);
      v262 = v548;
      do
      {
        v263 = v527;
        v264 = v12;
        do
        {
          v265 = *v16;
          if (v265 >= 8)
          {
            v266 = v561 ? *v262 : -1;
            result = PDAM(*v573, v266, v265);
            v12 = v264;
            if (result >> 27)
            {
              if (v552)
              {
                v267 = BYTE3(result);
                v268 = *v8;
                if (v268 >= 8)
                {
                  result = PDAhardlightPDA(*v14, v268, result, v267);
                  v12 = v264;
                  v267 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v267;
              }

              else
              {
                result = PDAhardlightPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v264;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v269 = &v573[v571];
          if (v269 >= v12)
          {
            v270 = v261;
          }

          else
          {
            v270 = 0;
          }

          v262 += v561 + v270;
          v573 = &v269[v270];
          v14 += v571;
          --v263;
        }

        while (v263);
        if (v550)
        {
          v271 = &v549[v523];
          v272 = v495;
          if (v271 < v550)
          {
            v272 = 0;
          }

          v262 = &v548[v526 + v272];
          v273 = v514;
          if (v271 < v550)
          {
            v273 = 0;
          }

          v12 += 2 * v273 + 2 * v523;
          v548 += v526 + v272;
          v549 = &v271[v273];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v262 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 22:
      v340 = -v37;
      v498 = -(v526 * v25);
      v518 = -(v523 * v25);
      v341 = v548;
      do
      {
        v342 = v527;
        v343 = v12;
        do
        {
          v344 = *v16;
          if (v344 >= 8)
          {
            v345 = v561 ? *v341 : -1;
            result = PDAM(*v573, v345, v344);
            v12 = v343;
            if (result >> 27)
            {
              if (v552)
              {
                v346 = BYTE3(result);
                v347 = *v8;
                if (v347 >= 8)
                {
                  result = PDAdifferencePDA(*v14, v347, result, v346);
                  v12 = v343;
                  v346 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v346;
              }

              else
              {
                result = PDAdifferencePDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v343;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v348 = &v573[v571];
          if (v348 >= v12)
          {
            v349 = v340;
          }

          else
          {
            v349 = 0;
          }

          v341 += v561 + v349;
          v573 = &v348[v349];
          v14 += v571;
          --v342;
        }

        while (v342);
        if (v550)
        {
          v350 = &v549[v523];
          v351 = v498;
          if (v350 < v550)
          {
            v351 = 0;
          }

          v341 = &v548[v526 + v351];
          v352 = v518;
          if (v350 < v550)
          {
            v352 = 0;
          }

          v12 += 2 * v352 + 2 * v523;
          v548 += v526 + v351;
          v549 = &v350[v352];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v341 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 23:
      v366 = -v37;
      v500 = -(v526 * v25);
      v520 = -(v523 * v25);
      v367 = v548;
      do
      {
        v368 = v527;
        v369 = v12;
        do
        {
          v370 = *v16;
          if (v370 >= 8)
          {
            v371 = v561 ? *v367 : -1;
            result = PDAM(*v573, v371, v370);
            v12 = v369;
            if (result >> 27)
            {
              v372 = BYTE3(result);
              if (v552)
              {
                v373 = *v8;
                if (v373 >= 8)
                {
                  result = PDAexclusionPDA(*v14, v373, result, v372);
                  v12 = v369;
                  v372 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v372;
              }

              else
              {
                result = PDAexclusionPDA(*v14, 0xFFu, result, v372);
                v12 = v369;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v374 = &v573[v571];
          if (v374 >= v12)
          {
            v375 = v366;
          }

          else
          {
            v375 = 0;
          }

          v367 += v561 + v375;
          v573 = &v374[v375];
          v14 += v571;
          --v368;
        }

        while (v368);
        if (v550)
        {
          v376 = &v549[v523];
          v377 = v500;
          if (v376 < v550)
          {
            v377 = 0;
          }

          v367 = &v548[v526 + v377];
          v378 = v520;
          if (v376 < v550)
          {
            v378 = 0;
          }

          v12 += 2 * v378 + 2 * v523;
          v548 += v526 + v377;
          v549 = &v376[v378];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v367 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 24:
      v145 = -v37;
      v491 = -(v526 * v25);
      v509 = -(v523 * v25);
      v146 = v548;
      do
      {
        v147 = v527;
        v148 = v12;
        do
        {
          v149 = *v16;
          if (v149 >= 8)
          {
            v150 = v561 ? *v146 : -1;
            result = PDAM(*v573, v150, v149);
            v12 = v148;
            if (result >> 27)
            {
              if (v552)
              {
                v151 = BYTE3(result);
                v152 = *v8;
                if (v152 >= 8)
                {
                  result = PDAhuePDA(*v14, v152, result, v151);
                  v12 = v148;
                  v151 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v151;
              }

              else
              {
                result = PDAhuePDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v148;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v153 = &v573[v571];
          if (v153 >= v12)
          {
            v154 = v145;
          }

          else
          {
            v154 = 0;
          }

          v146 += v561 + v154;
          v573 = &v153[v154];
          v14 += v571;
          --v147;
        }

        while (v147);
        if (v550)
        {
          v155 = &v549[v523];
          v156 = v491;
          if (v155 < v550)
          {
            v156 = 0;
          }

          v146 = &v548[v526 + v156];
          v157 = v509;
          if (v155 < v550)
          {
            v157 = 0;
          }

          v12 += 2 * v157 + 2 * v523;
          v548 += v526 + v156;
          v549 = &v155[v157];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v146 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 25:
      v132 = -v37;
      v490 = -(v526 * v25);
      v508 = -(v523 * v25);
      v133 = v548;
      do
      {
        v134 = v527;
        v135 = v12;
        do
        {
          v136 = *v16;
          if (v136 >= 8)
          {
            v137 = v561 ? *v133 : -1;
            result = PDAM(*v573, v137, v136);
            v12 = v135;
            if (result >> 27)
            {
              if (v552)
              {
                v138 = BYTE3(result);
                v139 = *v8;
                if (v139 >= 8)
                {
                  result = PDAsaturationPDA(*v14, v139, result, v138);
                  v12 = v135;
                  v138 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v138;
              }

              else
              {
                result = PDAsaturationPDA(*v14, 0xFFu, result, BYTE3(result));
                v12 = v135;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v140 = &v573[v571];
          if (v140 >= v12)
          {
            v141 = v132;
          }

          else
          {
            v141 = 0;
          }

          v133 += v561 + v141;
          v573 = &v140[v141];
          v14 += v571;
          --v134;
        }

        while (v134);
        if (v550)
        {
          v142 = &v549[v523];
          v143 = v490;
          if (v142 < v550)
          {
            v143 = 0;
          }

          v133 = &v548[v526 + v143];
          v144 = v508;
          if (v142 < v550)
          {
            v144 = 0;
          }

          v12 += 2 * v144 + 2 * v523;
          v548 += v526 + v143;
          v549 = &v142[v144];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v133 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 26:
      v379 = -v37;
      v501 = -(v526 * v25);
      v521 = -(v523 * v25);
      v380 = v548;
      do
      {
        v381 = v527;
        v382 = v12;
        do
        {
          v383 = *v16;
          if (v383 >= 8)
          {
            v384 = v561 ? *v380 : -1;
            result = PDAM(*v573, v384, v383);
            v12 = v382;
            if (result >> 27)
            {
              if (v552)
              {
                v385 = BYTE3(result);
                v386 = *v8;
                if (v386 >= 8)
                {
                  result = PDAluminosityPDA(result, v385, *v14, v386);
                  v12 = v382;
                  v385 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v385;
              }

              else
              {
                result = PDAluminosityPDA(result, BYTE3(result), *v14, 0xFFu);
                v12 = v382;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v387 = &v573[v571];
          if (v387 >= v12)
          {
            v388 = v379;
          }

          else
          {
            v388 = 0;
          }

          v380 += v561 + v388;
          v573 = &v387[v388];
          v14 += v571;
          --v381;
        }

        while (v381);
        if (v550)
        {
          v389 = &v549[v523];
          v390 = v501;
          if (v389 < v550)
          {
            v390 = 0;
          }

          v380 = &v548[v526 + v390];
          v391 = v521;
          if (v389 < v550)
          {
            v391 = 0;
          }

          v12 += 2 * v391 + 2 * v523;
          v548 += v526 + v390;
          v549 = &v389[v391];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v380 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    case 27:
      v41 = -v37;
      v487 = -(v526 * v25);
      v502 = -(v523 * v25);
      v42 = v548;
      do
      {
        v43 = v527;
        v44 = v12;
        do
        {
          v45 = *v16;
          if (v45 >= 8)
          {
            v46 = v561 ? *v42 : -1;
            result = PDAM(*v573, v46, v45);
            v12 = v44;
            if (result >> 27)
            {
              v47 = BYTE3(result);
              if (v552)
              {
                v48 = *v8;
                if (v48 >= 8)
                {
                  result = PDAluminosityPDA(*v14, v48, result, v47);
                  v12 = v44;
                  v47 = BYTE3(result);
                }

                *v14 = result;
                *v8 = v47;
              }

              else
              {
                result = PDAluminosityPDA(*v14, 0xFFu, result, v47);
                v12 = v44;
                *v14 = result;
              }
            }
          }

          v16 += v571;
          v8 += v552;
          v49 = &v573[v571];
          if (v49 >= v12)
          {
            v50 = v41;
          }

          else
          {
            v50 = 0;
          }

          v42 += v561 + v50;
          v573 = &v49[v50];
          v14 += v571;
          --v43;
        }

        while (v43);
        if (v550)
        {
          v51 = &v549[v523];
          v52 = v487;
          if (v51 < v550)
          {
            v52 = 0;
          }

          v42 = &v548[v526 + v52];
          v53 = v502;
          if (v51 < v550)
          {
            v53 = 0;
          }

          v12 += 2 * v53 + 2 * v523;
          v548 += v526 + v52;
          v549 = &v51[v53];
          v573 = v549;
        }

        else
        {
          v573 += v523;
          v42 += v526;
        }

        v16 += v525;
        v14 += v524;
        v8 += v522;
        --v551;
      }

      while (v551);
      return result;
    default:
      return result;
  }

  do
  {
    v464 = v527;
    v465 = v12;
    do
    {
      v466 = *v16;
      if (v466 < 0xF8)
      {
        if (v466 < 8)
        {
          goto LABEL_801;
        }

        v467 = (*v463 * v466 + ((*v463 * v466) >> 8) + 1) >> 8;
      }

      else
      {
        LOBYTE(v467) = *v463;
      }

      result = PDM(*v14, ~v467);
      *v14 = result;
      v12 = v465;
LABEL_801:
      v16 += v571;
      v468 = &v573[v571];
      if (v468 >= v12)
      {
        v469 = v461;
      }

      else
      {
        v469 = 0;
      }

      v463 += v460 + v469;
      v573 = &v468[v469];
      v14 += v571;
      --v464;
    }

    while (v464);
    if (v550)
    {
      v470 = &v549[v523];
      v471 = v570;
      if (v470 < v550)
      {
        v471 = 0;
      }

      v463 = &v548[v526 + v471];
      if (v470 >= v550)
      {
        v472 = v462;
      }

      else
      {
        v472 = 0;
      }

      v12 += 2 * v472 + 2 * v523;
      v548 += v526 + v471;
      v549 = &v470[v472];
      v573 = v549;
    }

    else
    {
      v573 += v523;
      v463 += v526;
    }

    v16 += v525;
    v14 += v524;
    --v551;
  }

  while (v551);
  return result;
}

void *rgb555_pattern(uint64_t a1, void *a2, unsigned int a3, int a4, float *a5, int a6, float a7)
{
  v11 = *(*a1 + 64);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    v15 = v13;
    if (v13 >= a7)
    {
      v15 = a7;
      if (v12 > a7)
      {
        v15 = v12;
      }
    }

    v16 = v15 * v11[2];
    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1)
    {
      if (*a5 < v12)
      {
        v47 = v12;
      }

      else
      {
        v47 = *a5;
      }

      if (*a5 <= v13)
      {
        v48 = v47;
      }

      else
      {
        v48 = v13;
      }

      v18 = (v14 + (v48 * v16));
      v19 = (v14 + (v48 * v16));
      v20 = v19;
      goto LABEL_74;
    }

    if (v17 == 4)
    {
      v30 = a5[4];
      v31 = *a5;
      v32 = a5[1];
      v33 = a5[2];
      if (v30 < v12)
      {
        v34 = v12;
      }

      else
      {
        v34 = a5[4];
      }

      if (v30 <= v13)
      {
        v35 = v34;
      }

      else
      {
        v35 = v13;
      }

      if (v31 < v12)
      {
        v36 = v12;
      }

      else
      {
        v36 = *a5;
      }

      if (v31 <= v13)
      {
        v37 = v36;
      }

      else
      {
        v37 = v13;
      }

      if (v32 < v12)
      {
        v38 = v12;
      }

      else
      {
        v38 = a5[1];
      }

      if (v32 <= v13)
      {
        v39 = v38;
      }

      else
      {
        v39 = v13;
      }

      if (v33 < v12)
      {
        v40 = v12;
      }

      else
      {
        v40 = a5[2];
      }

      if (v33 <= v13)
      {
        v41 = v40;
      }

      else
      {
        v41 = v13;
      }

      v42 = (v13 - v37) - v35;
      v43 = (v13 - v39) - v35;
      v44 = (v13 - v41) - v35;
      if (v42 >= v12)
      {
        v45 = v14 + (v42 * v16);
      }

      else
      {
        v45 = v12;
      }

      if (v43 >= v12)
      {
        v46 = v14 + (v43 * v16);
      }

      else
      {
        v46 = v12;
      }

      if (v44 >= v12)
      {
        v29 = v14 + (v44 * v16);
      }

      else
      {
        v29 = v12;
      }

      v18 = v45;
      v19 = v46;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (v17 != 3)
      {
LABEL_74:
        v49 = (v14 + v16);
        if (a6 && (v18 | v49) | (v19 | v20))
        {
          *a2 = xmmword_18439C960;
          a2[2] = 0x2000000010;
          a2[6] = (v18 << 32) | (v49 << 48) | (v19 << 16) | v20;
          *(a2 + 6) = 16 * (v49 < 7936);
          if (v49 >= 7936)
          {
            v50 = 0;
          }

          else
          {
            v50 = (a2 + 6);
          }

          a2[4] = a2 + 6;
          a2[5] = v50;
        }

        else
        {
          v51 = (4 * v18 + 512) & 0x7C00 | ((v19 + 128) >> 3) & 0x3E0 | ((v20 + 128) >> 8) & 0x1F;
          *a2 = xmmword_18439C970;
          *(a2 + 6) = 0;
          a2[2] = 1;
          *(a2 + 12) = v51 | (v51 << 16);
          a2[4] = a2 + 6;
          if (v49 > 7807)
          {
            a2[5] = 0;
          }

          else
          {
            *(a2 + 13) = 16843009 * (((v49 + 128) >> 5) & 0xF8 | ((v49 + 128) >> 10) & 7);
            a2[5] = a2 + 52;
          }
        }

        return a2;
      }

      v21 = a5[1];
      v22 = a5[2];
      if (*a5 < v12)
      {
        v23 = v12;
      }

      else
      {
        v23 = *a5;
      }

      if (*a5 <= v13)
      {
        v24 = v23;
      }

      else
      {
        v24 = v13;
      }

      if (v21 < v12)
      {
        v25 = v12;
      }

      else
      {
        v25 = a5[1];
      }

      if (v21 <= v13)
      {
        v26 = v25;
      }

      else
      {
        v26 = v13;
      }

      if (v22 < v12)
      {
        v27 = v12;
      }

      else
      {
        v27 = a5[2];
      }

      if (v22 <= v13)
      {
        v28 = v27;
      }

      else
      {
        v28 = v13;
      }

      v18 = (v14 + (v24 * v16));
      v19 = (v14 + (v26 * v16));
      v29 = v14 + (v28 * v16);
    }

    v20 = v29;
    goto LABEL_74;
  }

  return a2;
}

uint64_t RGB555_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v47 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  *v38 = 0u;
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
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v8 = *(v7 + 56);
  v9 = *v3;
  v10 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v11 = *(v8 + 16 * v9 + 8 * v10 + 4 * (*(v3 + 6) == 0));
  if (v11 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, v17, v42) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) == 0x3000000)
  {
    if (*(v5 + 16))
    {
      v14 = rgb555_shade_radial_RGB;
    }

    else if (*(v5 + 24))
    {
      v14 = rgb555_shade_conic_RGB;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = rgb555_shade_axial_RGB;
    }

    else
    {
      v14 = rgb555_shade_custom_RGB;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 1, 3, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 480)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 1, 3, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v16 = malloc_type_malloc(8 * v15 + 32, 0x8C254358uLL);
    if (v16)
    {
      v38[1] = v16;
      v15 = *(&v19 + 1) * v19;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v17[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v17[0]) = *v7;
  HIDWORD(v17[0]) = DWORD2(v17[0]);
  RGB555_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void RGB555_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v363 = a3;
  v384 = *MEMORY[0x1E69E9840];
  v382 = *(a1 + 4);
  v362 = v382;
  v4 = (v382 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a2 + 184);
    v379 = *(a1 + 136);
    v380 = v6;
    v9 = *(a2 + 96);
    v376 = *(a2 + 104);
    v377 = v9;
    v11 = *(a1 + 24);
    v10 = *(a1 + 28);
    v12 = *(a1 + 16);
    v13 = *(a1 + 20);
    v14 = *(a1 + 12);
    v375 = *(a1 + 8);
    v374 = a2;
    v15 = *(a2 + 16);
    v16 = (v15 + 6) * v4;
    if (v16 > 65439)
    {
      v19 = malloc_type_calloc(1uLL, v16 + 96, 0xF5B4F9ABuLL);
      v18 = v19;
      v21 = v19;
      v22 = v374;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v18 = &v356 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v17);
      v21 = 0;
      v22 = v374;
    }

    v23 = v13;
    v358 = v21;
    v381 = ((v8 * 255.0) + 0.5);
    v24 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = v24 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22[20] = v25;
    if (v15)
    {
      v26 = 4 * v4;
    }

    else
    {
      v26 = 0;
    }

    v27 = v25 + v26;
    v28 = v7 + (v11 - 1) * v10;
    v29 = v10 >> 1;
    v22[18] = v24;
    v22[19] = v27;
    if (v380)
    {
      v30 = *(a1 + 32);
      v31 = a1;
      v32 = (v380 + v30 * v12 + v14);
      v373 = v30 - v362;
      v33 = v362;
      v383 = 1;
    }

    else
    {
      v31 = a1;
      v32 = 0;
      v373 = 0;
      v383 = 0;
      v33 = v362;
    }

    v34 = v28 + 2 * v23;
    v35 = (v7 + 2 * v29 * v12 + 2 * v14);
    v372 = v29 - v33;
    v36 = *(v31 + 104);
    v37 = *(v31 + 108);
    v370 = v31;
    v38 = *(v31 + 2);
    v39 = v363;
    if (v38 == 6 || v38 == 1)
    {
      v40 = v374;
      v42 = v376;
      v41 = v377;
      if (!v379)
      {
        goto LABEL_715;
      }

      v356 = v29;
      v43 = 0;
      v44 = 0;
      v45 = *(v370 + 124);
      v46 = v379 + v45 * v37 + v36;
      v33 = v362;
      v371 = v45 - v362;
      goto LABEL_21;
    }

    v42 = v376;
    v41 = v377;
    if (!v379)
    {
      v356 = v29;
      v46 = 0;
      v43 = 0;
      v371 = 0;
      v44 = 0;
      v40 = v374;
LABEL_21:
      v51 = v382;
LABEL_22:
      v52 = vdup_n_s32(v381);
      v360 = (v51 - 1);
      v359 = -v33;
      v357 = v34;
      v361 = v34 - 2;
      v369 = xmmword_18439C830;
      v368 = xmmword_18439C840;
      v367 = xmmword_18439C850;
      v366 = xmmword_18439C800;
      v365 = xmmword_18439C810;
      v364 = xmmword_18439C820;
      v53 = v43;
      while (2)
      {
        v43 = v53;
        v54 = *v40;
        v376 = v42;
        v377 = v41;
        v54(v40, v41, v42, v51);
        v56 = v40[20];
        v57 = v40[18];
        v58 = *(v40 + 2);
        v59 = *(v40 + 3);
        v378 = v43;
        LODWORD(v379) = v44;
        if (v58 == v59)
        {
          if (v381 > 0xF7)
          {
            goto LABEL_155;
          }

          v60 = v51;
          v61 = v57;
          do
          {
            if (*v61 >= 8u)
            {
              *v56 = PDAM(*v56, HIBYTE(*v56), v381);
            }

            ++v61;
            v56 += 2;
            --v60;
          }

          while (v60);
          v56 += 2 * v359;
          v57 += v360 + v359 + 1;
          goto LABEL_30;
        }

        v62 = v44;
        v63 = v40[19];
        v64 = *(v370 + 12);
        v65 = *(v370 + 16) + v62;
        v66 = HIWORD(v58) & 0x3F;
        v67 = v40[21];
        if (v66 == 16)
        {
          if (!v67)
          {
            if (v381 >= 0xF8)
            {
              v287 = 0;
              do
              {
                if (v57[v287] >= 8u)
                {
                  v288 = *(v63 + 8 * v287);
                  *&v56[2 * v287] = (v288 >> 1) & 0x7C00 | (32 * (v288 >> 27)) & 0xFFFFFF | (v288 >> 43) & 0x1F | (HIBYTE(v288) >> 3 << 27) | (((HIBYTE(v288) >> 5) & 7) << 24);
                }

                ++v287;
              }

              while (v51 != v287);
            }

            else
            {
              v105 = 0;
              do
              {
                if (v57[v105] >= 8u)
                {
                  *&v56[2 * v105] = PDAM((*(v63 + 8 * v105) >> 1) & 0x7C00 | (32 * (*(v63 + 8 * v105) >> 27)) | (*(v63 + 8 * v105) >> 43) & 0x1F, HIBYTE(*(v63 + 8 * v105)), v381);
                }

                ++v105;
              }

              while (v51 != v105);
              v40 = v374;
            }

            goto LABEL_154;
          }

          if (v64 <= 0)
          {
            v84 = -(-v64 & 0xF);
          }

          else
          {
            v84 = *(v370 + 12) & 0xF;
          }

          v69 = -v65 < 0;
          v85 = -v65 & 0xF;
          v86 = v65 & 0xF;
          if (!v69)
          {
            v86 = -v85;
          }

          v87 = v67 + 16 * v86;
          if (v381 >= 0xF8)
          {
            v121 = 0;
            do
            {
              if (v57[v121] >= 8u)
              {
                *&v56[2 * v121] = DITHERRGBA32((HIBYTE(*(v63 + 8 * v121)) | (BYTE3(*(v63 + 8 * v121)) << 16)) & 0xFFFFFF | (BYTE1(*(v63 + 8 * v121)) << 24) | HIDWORD(*(v63 + 8 * v121)) & 0xFF00, *(v87 + v84));
              }

              v84 = (v84 + 1) & 0xF;
              ++v121;
            }

            while (v382 != v121);
          }

          else
          {
            v88 = 0;
            do
            {
              if (v57[v88] >= 8u)
              {
                *&v56[2 * v88] = DITHERRGBA32M((HIBYTE(*(v63 + 8 * v88)) | (BYTE3(*(v63 + 8 * v88)) << 16)) & 0xFFFFFF | (BYTE1(*(v63 + 8 * v88)) << 24) | HIDWORD(*(v63 + 8 * v88)) & 0xFF00, *(v87 + v84), v381);
              }

              v84 = (v84 + 1) & 0xF;
              ++v88;
            }

            while (v382 != v88);
          }
        }

        else
        {
          if (v66 != 32)
          {
            if (!v67)
            {
              if (v381 >= 0xF8)
              {
                v289 = 0;
                do
                {
                  if (v57[v289] >= 8u)
                  {
                    v290 = *(v63 + 4 * v289);
                    v291 = vdupq_n_s32(v290);
                    v292 = vshlq_u32(v291, v366);
                    v292.i32[3] = vshlq_u32(v291, v365).i32[3];
                    v293 = vandq_s8(v292, v364);
                    *v293.i8 = vorr_s8(*v293.i8, *&vextq_s8(v293, v293, 8uLL));
                    *&v56[2 * v289] = v293.i32[0] | (v290 << 19) & 0x7000000 | v293.i32[1];
                  }

                  ++v289;
                }

                while (v51 != v289);
              }

              else
              {
                v106 = 0;
                do
                {
                  if (v57[v106] >= 8u)
                  {
                    v55.i16[0] = *(v63 + 4 * v106);
                    v55.i16[1] = BYTE2(*(v63 + 4 * v106));
                    v55.i16[2] = BYTE1(*(v63 + 4 * v106));
                    v55.i16[3] = (*(v63 + 4 * v106) >> 8 >> 16);
                    *v55.i8 = vmul_s32(*v55.i8, v52);
                    *v55.i8 = vadd_s32(vadd_s32(*v55.i8, 0x1000100010001), (*&vshr_n_u32(*v55.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
                    v107 = vshlq_u32(v55, v369).u32[0];
                    v108 = (v55.i32[0] << 11) & 0x7000000;
                    v109 = vshlq_u32(vzip1q_s32(v55, v55), v368);
                    v109.i32[0] = v107;
                    v55 = vandq_s8(v109, v367);
                    *v55.i8 = vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
                    *&v56[2 * v106] = v55.i32[0] | v108 | v55.i32[1];
                  }

                  ++v106;
                }

                while (v51 != v106);
              }

              goto LABEL_154;
            }

            if (v64 <= 0)
            {
              v89 = -(-v64 & 0xF);
            }

            else
            {
              v89 = *(v370 + 12) & 0xF;
            }

            v69 = -v65 < 0;
            v90 = -v65 & 0xF;
            v91 = v65 & 0xF;
            if (!v69)
            {
              v91 = -v90;
            }

            v92 = v67 + 16 * v91;
            if (v381 >= 0xF8)
            {
              v122 = 0;
              do
              {
                if (v57[v122] >= 8u)
                {
                  *&v56[2 * v122] = DITHERRGBA32(*(v63 + 4 * v122), *(v92 + v89));
                }

                v89 = (v89 + 1) & 0xF;
                ++v122;
              }

              while (v51 != v122);
            }

            else
            {
              v93 = 0;
              do
              {
                if (v57[v93] >= 8u)
                {
                  *&v56[2 * v93] = DITHERRGBA32M(*(v63 + 4 * v93), *(v92 + v89), v381);
                }

                v89 = (v89 + 1) & 0xF;
                ++v93;
              }

              while (v51 != v93);
            }

            v39 = v363;
            v40 = v374;
LABEL_153:
            v43 = v378;
LABEL_154:
            v44 = v379;
            goto LABEL_155;
          }

          if (!v67)
          {
            if (v381 < 0xF8)
            {
              v94 = 0;
              v95 = (v63 + 8);
              v44 = v379;
              do
              {
                if (v57[v94] >= 8u)
                {
                  v96 = v95[1];
                  if (v96 <= 0.0)
                  {
                    v104 = 0;
                  }

                  else
                  {
                    v97 = *(v95 - 2);
                    v98 = *(v95 - 1);
                    v99 = ((v96 * 255.0) + 0.5);
                    v100 = *v95;
                    if (v96 > 1.0)
                    {
                      v99 = 255;
                      v96 = 1.0;
                    }

                    v101 = ((v97 * 255.0) + 0.5);
                    if (v97 < 0.0)
                    {
                      v101 = 0;
                    }

                    if (v97 > v96)
                    {
                      v101 = v99;
                    }

                    v102 = ((v98 * 255.0) + 0.5);
                    if (v98 < 0.0)
                    {
                      LOWORD(v102) = 0;
                    }

                    if (v98 > v96)
                    {
                      LOWORD(v102) = v99;
                    }

                    v103 = ((v100 * 255.0) + 0.5);
                    if (v100 < 0.0)
                    {
                      LOBYTE(v103) = 0;
                    }

                    if (v100 > v96)
                    {
                      LOBYTE(v103) = v99;
                    }

                    v104 = PDAM((v101 << 7) & 0x7C00 | (4 * v102) & 0x3E0 | (v103 >> 3), v99, v381);
                  }

                  *&v56[2 * v94] = v104;
                }

                ++v94;
                v95 += 4;
              }

              while (v51 != v94);
LABEL_30:
              v40 = v374;
              v43 = v378;
              goto LABEL_155;
            }

            v276 = 0;
            v277 = (v63 + 8);
            v44 = v379;
            do
            {
              if (v57[v276] >= 8u)
              {
                v278 = v277[1];
                if (v278 <= 0.0)
                {
                  v286 = 0;
                }

                else
                {
                  v279 = *(v277 - 2);
                  v280 = *(v277 - 1);
                  v281 = *v277;
                  v282 = ((v278 * 255.0) + 0.5);
                  if (v278 > 1.0)
                  {
                    v282 = 255;
                    v278 = 1.0;
                  }

                  v283 = ((v279 * 255.0) + 0.5);
                  if (v279 < 0.0)
                  {
                    v283 = 0;
                  }

                  if (v279 > v278)
                  {
                    v283 = v282;
                  }

                  v284 = ((v280 * 255.0) + 0.5);
                  if (v280 < 0.0)
                  {
                    v284 = 0;
                  }

                  if (v280 > v278)
                  {
                    v284 = v282;
                  }

                  v285 = ((v281 * 255.0) + 0.5);
                  if (v281 < 0.0)
                  {
                    LOBYTE(v285) = 0;
                  }

                  if (v281 > v278)
                  {
                    LOBYTE(v285) = v282;
                  }

                  v286 = (v282 << 24) & 0xF8000000 | (v282 >> 5 << 24) | (v283 << 7) & 0x7C00 | (4 * v284) & 0x3E0 | (v285 >> 3);
                }

                *&v56[2 * v276] = v286;
              }

              ++v276;
              v277 += 4;
            }

            while (v51 != v276);
LABEL_155:
            switch(v39)
            {
              case 0:
                v123 = v46 != 0;
                if (v380)
                {
                  v124 = v51;
                  v125 = v46;
                  while (1)
                  {
                    v126 = *v57;
                    if (*v57)
                    {
                      if (v46)
                      {
                        v126 = (*v125 * v126 + ((*v125 * v126) >> 8) + 1) >> 8;
                      }

                      if (v126 >= 0xF8u)
                      {
                        LOBYTE(v127) = 0;
                        *v35 = 0;
LABEL_165:
                        *v32 = v127;
                        goto LABEL_166;
                      }

                      if (v126 >= 8u)
                      {
                        v128 = PDAM(bswap32(*v35) >> 16, *v32, ~v126);
                        *v35 = bswap32(v128) >> 16;
                        v127 = HIBYTE(v128);
                        goto LABEL_165;
                      }
                    }

LABEL_166:
                    ++v57;
                    v125 += v123;
                    ++v35;
                    ++v32;
                    if (!--v124)
                    {
                      goto LABEL_620;
                    }
                  }
                }

                v313 = v51;
                v125 = v46;
                while (1)
                {
                  v314 = *v57;
                  if (*v57)
                  {
                    if (v46)
                    {
                      v314 = (*v125 * v314 + ((*v125 * v314) >> 8) + 1) >> 8;
                    }

                    if (v314 > 0xF7u)
                    {
                      v315 = 0;
LABEL_618:
                      *v35 = v315;
                      goto LABEL_619;
                    }

                    if (v314 >= 8u)
                    {
                      v315 = __rev16(PDM(bswap32(*v35) >> 16, ~v314));
                      goto LABEL_618;
                    }
                  }

LABEL_619:
                  ++v57;
                  v125 += v123;
                  ++v35;
                  if (!--v313)
                  {
LABEL_620:
                    v46 = &v125[v371];
                    v35 += v372;
                    goto LABEL_698;
                  }
                }

              case 1:
                v203 = *v57;
                if (v380)
                {
                  if (v46)
                  {
                    v204 = 0;
                    v205 = v57 + 1;
                    v206 = v35 - 1;
                    while (1)
                    {
                      if (v203)
                      {
                        v207 = v203 * v46[v204] + ((v203 * v46[v204]) >> 8) + 1;
                        if (v207 >> 11 >= 0x1F)
                        {
                          v208 = *&v56[2 * v204];
LABEL_348:
                          v35[v204] = bswap32(v208) >> 16;
                          v32[v204] = HIBYTE(v208);
                          goto LABEL_349;
                        }

                        if (v207 >= 0x800)
                        {
                          v208 = PDAMplusDAM(*&v56[2 * v204], HIBYTE(*&v56[2 * v204]), BYTE1(v207), bswap32(v35[v204]) >> 16, v32[v204], ~(v207 >> 8));
                          goto LABEL_348;
                        }
                      }

LABEL_349:
                      v203 = v205[v204++];
                      ++v206;
                      if (v51 == v204)
                      {
                        v209 = &v32[v204 - 1];
                        v46 += v204 + v371;
LABEL_671:
                        v35 = &v206[v372 + 1];
                        v32 = (v209 + v373 + 1);
                        goto LABEL_699;
                      }
                    }
                  }

                  v338 = v57 + 1;
                  v209 = (v32 - 1);
                  v206 = v35 - 1;
                  v339 = v51;
                  while (v203 < 0xF8)
                  {
                    if (v203 >= 8)
                    {
                      v340 = PDAMplusDAM(*v56, HIBYTE(*v56), v203, bswap32(v206[1]) >> 16, *(v209 + 1), ~v203);
                      goto LABEL_668;
                    }

LABEL_669:
                    v341 = *v338++;
                    v203 = v341;
                    v56 += 2;
                    ++v209;
                    ++v206;
                    if (!--v339)
                    {
                      v46 = 0;
                      goto LABEL_671;
                    }
                  }

                  v340 = *v56;
LABEL_668:
                  v206[1] = bswap32(v340) >> 16;
                  *(v209 + 1) = HIBYTE(v340);
                  goto LABEL_669;
                }

                if (!v46)
                {
                  v346 = *(v370 + 40);
                  v347 = v57 + 1;
                  v348 = v51;
                  while (1)
                  {
                    v349 = v361;
                    if (v361 >= v35)
                    {
                      v349 = v35;
                    }

                    v320 = v349 >= v346 ? v349 : v346;
                    if (v203 >= 0xF8)
                    {
                      break;
                    }

                    if (v203 >= 8)
                    {
                      v350 = PDMplusDM(*v56, v203, bswap32(*v320) >> 16, ~v203);
                      goto LABEL_694;
                    }

LABEL_695:
                    v351 = *v347++;
                    v203 = v351;
                    v56 += 2;
                    v35 = v320 + 1;
                    if (!--v348)
                    {
                      v46 = 0;
                      goto LABEL_697;
                    }
                  }

                  v350 = *v56;
LABEL_694:
                  *v320 = bswap32(v350) >> 16;
                  goto LABEL_695;
                }

                v316 = v57 + 1;
                v317 = v51;
                do
                {
                  if (!v203)
                  {
                    v320 = v35;
                    goto LABEL_635;
                  }

                  v318 = v203 * *v46 + ((v203 * *v46) >> 8) + 1;
                  v319 = v361;
                  if (v361 >= v35)
                  {
                    v319 = v35;
                  }

                  if (v319 >= *(v370 + 40))
                  {
                    v320 = v319;
                  }

                  else
                  {
                    v320 = *(v370 + 40);
                  }

                  if (v318 >> 11 < 0x1F)
                  {
                    if (v318 < 0x800)
                    {
                      goto LABEL_635;
                    }

                    v321 = PDMplusDM(*v56, BYTE1(v318), bswap32(*v320) >> 16, ~(v318 >> 8));
                  }

                  else
                  {
                    v321 = *v56;
                  }

                  *v320 = bswap32(v321) >> 16;
LABEL_635:
                  v322 = *v316++;
                  v203 = v322;
                  v56 += 2;
                  ++v46;
                  v35 = v320 + 1;
                  --v317;
                }

                while (v317);
                v46 += v371;
LABEL_697:
                v35 = &v320[v372 + 1];
LABEL_698:
                v32 += v373;
LABEL_699:
                v40 = v374;
LABEL_700:
                v269 = v376;
                v268 = v377;
                v43 = v378;
LABEL_701:
                if (!--v375)
                {
                  if (v43)
                  {
LABEL_714:
                    free(v43);
                  }

                  goto LABEL_715;
                }

                v53 = 0;
                ++v44;
                v41 = v40[16] + v268;
                v42 = v40[17] + v269;
                if (!v43)
                {
                  continue;
                }

                v48 = v44;
                v50 = v362;
LABEL_704:
                v352 = v373 + v50;
                while (1)
                {
                  while (1)
                  {
                    v353 = *(v46 - 4);
                    v354 = v353 - v48;
                    if (v353 <= v48)
                    {
                      break;
                    }

                    v375 -= v354;
                    if (v375 < 1)
                    {
                      goto LABEL_714;
                    }

                    v41 += v374[16] * v354;
                    v42 += v374[17] * v354;
                    v35 += v356 * v354;
                    v355 = v352 * v354;
                    if (!v380)
                    {
                      v355 = 0;
                    }

                    v32 += v355;
                    v48 = v353;
                  }

                  if (v48 < *(v46 - 3) + v353)
                  {
                    break;
                  }

                  if (!shape_enum_clip_scan(v43, v46 - 4))
                  {
                    goto LABEL_714;
                  }
                }

                v40 = v374;
                v33 = v362;
                v34 = v357;
                v44 = v48;
                v39 = v363;
                goto LABEL_22;
              case 2:
                v178 = *v57;
                if (v380)
                {
                  if (v46)
                  {
                    v179 = 0;
                    v180 = v57 + 1;
                    v181 = v35 - 1;
                    while (1)
                    {
                      if (v178)
                      {
                        v182 = v178 * v46[v179] + ((v178 * v46[v179]) >> 8) + 1;
                        if (v182 >> 11 < 0x1F)
                        {
                          if (v182 < 0x800)
                          {
                            goto LABEL_299;
                          }

                          v185 = PDAM(*&v56[2 * v179], HIBYTE(*&v56[2 * v179]), SBYTE1(v182));
                          if (!(v185 >> 27))
                          {
                            goto LABEL_299;
                          }

                          v186 = HIBYTE(v185);
                          v187 = bswap32(v35[v179]) >> 16;
                          v188 = v32[v179];
                          v185 = v185;
LABEL_297:
                          v189 = PDAplusDAM(v185, v186, v187, v188, v186 ^ 0xFF);
                          v35[v179] = bswap32(v189) >> 16;
                          v184 = HIBYTE(v189);
LABEL_298:
                          v32[v179] = v184;
                          goto LABEL_299;
                        }

                        v183 = *&v56[2 * v179];
                        if (v183 >> 27 == 31)
                        {
                          v184 = HIBYTE(v183);
                          v35[v179] = bswap32(v183) >> 16;
                          goto LABEL_298;
                        }

                        if (v183 >> 27)
                        {
                          v186 = HIBYTE(v183);
                          v187 = bswap32(v35[v179]) >> 16;
                          v188 = v32[v179];
                          v185 = *&v56[2 * v179];
                          goto LABEL_297;
                        }
                      }

LABEL_299:
                      v178 = v180[v179++];
                      ++v181;
                      if (v382 == v179)
                      {
                        v190 = &v32[v179 - 1];
                        v46 += v179 + v371;
                        v51 = v382;
LABEL_662:
                        v35 = &v181[v372 + 1];
                        v32 = (v190 + v373 + 1);
                        goto LABEL_700;
                      }
                    }
                  }

                  v328 = v57 + 1;
                  v190 = (v32 - 1);
                  v181 = v35 - 1;
                  v329 = v51;
                  while (v178 >= 0xF8)
                  {
                    v330 = *v56;
                    if (*v56 >> 27 == 31)
                    {
                      v331 = HIBYTE(v330);
                      v181[1] = bswap32(v330) >> 16;
                      goto LABEL_659;
                    }

                    if (*v56 >> 27)
                    {
                      v333 = HIBYTE(v330);
                      v334 = bswap32(v181[1]) >> 16;
                      v335 = *(v190 + 1);
                      v332 = *v56;
                      goto LABEL_658;
                    }

LABEL_660:
                    v337 = *v328++;
                    v178 = v337;
                    v56 += 2;
                    ++v190;
                    ++v181;
                    if (!--v329)
                    {
                      v46 = 0;
                      v40 = v374;
                      goto LABEL_662;
                    }
                  }

                  if (v178 < 8)
                  {
                    goto LABEL_660;
                  }

                  v332 = PDAM(*v56, HIBYTE(*v56), v178);
                  if (!(v332 >> 27))
                  {
                    goto LABEL_660;
                  }

                  v333 = HIBYTE(v332);
                  v334 = bswap32(v181[1]) >> 16;
                  v335 = *(v190 + 1);
                  v332 = v332;
LABEL_658:
                  v336 = PDAplusDAM(v332, v333, v334, v335, v333 ^ 0xFF);
                  v181[1] = bswap32(v336) >> 16;
                  v331 = HIBYTE(v336);
LABEL_659:
                  *(v190 + 1) = v331;
                  goto LABEL_660;
                }

                if (v46)
                {
                  v302 = v57 + 1;
                  v303 = v35 - 1;
                  v304 = v51;
                  while (!v178)
                  {
LABEL_597:
                    v307 = *v302++;
                    v178 = v307;
                    v56 += 2;
                    ++v46;
                    ++v303;
                    if (!--v304)
                    {
                      v46 += v371;
                      v269 = v376;
LABEL_683:
                      v35 = &v303[v372 + 1];
                      v32 += v373;
                      v268 = v377;
                      v43 = v378;
                      goto LABEL_701;
                    }
                  }

                  v305 = v178 * *v46 + ((v178 * *v46) >> 8) + 1;
                  if (v305 >> 11 < 0x1F)
                  {
                    if (v305 < 0x800)
                    {
                      goto LABEL_597;
                    }

                    v306 = PDAM(*v56, HIBYTE(*v56), SBYTE1(v305));
                    if (!(v306 >> 27))
                    {
                      goto LABEL_597;
                    }
                  }

                  else
                  {
                    v306 = *v56;
                    if (*v56 >> 27 == 31)
                    {
LABEL_596:
                      v303[1] = bswap32(v306) >> 16;
                      goto LABEL_597;
                    }

                    if (!(*v56 >> 27))
                    {
                      goto LABEL_597;
                    }
                  }

                  v306 = PDplusDM(v306, bswap32(v303[1]) >> 16, ~v306 >> 24);
                  goto LABEL_596;
                }

                v342 = v57 + 1;
                v303 = v35 - 1;
                v343 = v51;
                v269 = v376;
                while (v178 >= 0xF8)
                {
                  v344 = *v56;
                  if (*v56 >> 27 != 31)
                  {
                    if (!(*v56 >> 27))
                    {
                      goto LABEL_681;
                    }

                    goto LABEL_679;
                  }

LABEL_680:
                  v303[1] = bswap32(v344) >> 16;
LABEL_681:
                  v345 = *v342++;
                  v178 = v345;
                  v56 += 2;
                  ++v303;
                  if (!--v343)
                  {
                    v46 = 0;
                    v40 = v374;
                    goto LABEL_683;
                  }
                }

                if (v178 < 8)
                {
                  goto LABEL_681;
                }

                v344 = PDAM(*v56, HIBYTE(*v56), v178);
                if (!(v344 >> 27))
                {
                  goto LABEL_681;
                }

LABEL_679:
                v344 = PDplusDM(v344, bswap32(v303[1]) >> 16, ~v344 >> 24);
                goto LABEL_680;
              case 3:
                v136 = v46;
                while (1)
                {
                  v195 = *v57;
                  if (*v57)
                  {
                    if (v46)
                    {
                      v195 = (*v136 * v195 + ((*v136 * v195) >> 8) + 1) >> 8;
                    }

                    if (v195 >= 0xF8u)
                    {
                      v196 = PDAM(*v56, HIBYTE(*v56), *v32);
LABEL_325:
                      *v35 = bswap32(v196) >> 16;
                      *v32 = HIBYTE(v196);
                      goto LABEL_326;
                    }

                    if (v195 >= 8u)
                    {
                      v196 = PDAMplusDAM(*v56, HIBYTE(*v56), ((*v32 * v195 + ((*v32 * v195) >> 8) + 1) >> 8), bswap32(*v35) >> 16, *v32, ~v195);
                      goto LABEL_325;
                    }
                  }

LABEL_326:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 4:
                v136 = v46;
                while (1)
                {
                  v151 = *v57;
                  if (*v57)
                  {
                    if (v46)
                    {
                      v151 = (*v136 * v151 + ((*v136 * v151) >> 8) + 1) >> 8;
                    }

                    if (v151 >= 0xF8u)
                    {
                      v152 = PDAM(*v56, HIBYTE(*v56), ~*v32);
LABEL_233:
                      *v35 = bswap32(v152) >> 16;
                      *v32 = HIBYTE(v152);
                      goto LABEL_234;
                    }

                    if (v151 >= 8u)
                    {
                      v152 = PDAMplusDAM(*v56, HIBYTE(*v56), (((*v32 ^ 0xFF) * v151 + (((*v32 ^ 0xFF) * v151) >> 8) + 1) >> 8), bswap32(*v35) >> 16, *v32, ~v151);
                      goto LABEL_233;
                    }
                  }

LABEL_234:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 5:
                v218 = v51;
                v147 = v46;
                do
                {
                  v219 = *v57;
                  if (*v57)
                  {
                    if (v46)
                    {
                      v219 = (*v147 * v219 + ((*v147 * v219) >> 8) + 1) >> 8;
                    }

                    if (v219 >= 8u)
                    {
                      v220 = *v32;
                      v221 = PDAM(*v56, HIBYTE(*v56), v219);
                      v222 = v220;
                      v223 = v220;
                      v44 = v379;
                      v224 = PDAMplusDAM(v221, SHIBYTE(v221), v222, bswap32(*v35) >> 16, v223, HIBYTE(v221) ^ 0xFF);
                      *v35 = bswap32(v224) >> 16;
                      *v32 = HIBYTE(v224);
                    }
                  }

                  ++v57;
                  v56 += 2;
                  v147 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  --v218;
                }

                while (v218);
                goto LABEL_575;
              case 6:
                v136 = v46;
                while (1)
                {
                  v233 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_433;
                  }

                  if (v46)
                  {
                    v233 = (*v136 * v233 + ((*v136 * v233) >> 8) + 1) >> 8;
                  }

                  if (v233 < 8u)
                  {
                    goto LABEL_433;
                  }

                  v234 = *v32;
                  if (v234 <= 7)
                  {
                    break;
                  }

                  if (v234 <= 0xF7)
                  {
                    v235 = PDAplusDAM(bswap32(*v35) >> 16, v234, *v56, HIBYTE(*v56), ((~v234 * v233 + ((~v234 * v233) >> 8) + 1) >> 8));
                    goto LABEL_432;
                  }

LABEL_433:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

                v235 = PDAM(*v56, HIBYTE(*v56), v233);
LABEL_432:
                *v35 = bswap32(v235) >> 16;
                *v32 = HIBYTE(v235);
                goto LABEL_433;
              case 7:
                v197 = v46 != 0;
                if (v380)
                {
                  v198 = v51;
                  v130 = v46;
                  while (1)
                  {
                    v199 = *v57;
                    if (*v57)
                    {
                      if (v46)
                      {
                        v199 = (*v130 * v199 + ((*v130 * v199) >> 8) + 1) >> 8;
                      }

                      if (v199 >= 0xF8u)
                      {
                        v200 = PDAM(bswap32(*v35) >> 16, *v32, *(v56 + 3));
LABEL_337:
                        *v35 = bswap32(v200) >> 16;
                        *v32 = HIBYTE(v200);
                        goto LABEL_338;
                      }

                      if (v199 >= 8u)
                      {
                        v201 = *(v56 + 3) * v199;
                        v202 = bswap32(*v35) >> 16;
                        v200 = PDAMplusDAM(v202, *v32, ((v201 + (v201 >> 8) + 1) >> 8), v202, *v32, ~v199);
                        goto LABEL_337;
                      }
                    }

LABEL_338:
                    ++v57;
                    v56 += 2;
                    v130 += v197;
                    ++v35;
                    ++v32;
                    if (!--v198)
                    {
                      goto LABEL_647;
                    }
                  }
                }

                v308 = v51;
                v130 = v46;
                while (1)
                {
                  v309 = *v57;
                  if (*v57)
                  {
                    if (v46)
                    {
                      v309 = (*v130 * v309 + ((*v130 * v309) >> 8) + 1) >> 8;
                    }

                    if (v309 >= 0xF8u)
                    {
                      v310 = PDM(bswap32(*v35) >> 16, *(v56 + 3));
LABEL_607:
                      *v35 = __rev16(v310);
                      goto LABEL_608;
                    }

                    if (v309 >= 8u)
                    {
                      v311 = *(v56 + 3) * v309;
                      v312 = bswap32(*v35) >> 16;
                      v310 = PDMplusDM(v312, ((v311 + (v311 >> 8) + 1) >> 8), v312, ~v309);
                      goto LABEL_607;
                    }
                  }

LABEL_608:
                  ++v57;
                  v56 += 2;
                  v130 += v197;
                  ++v35;
                  if (!--v308)
                  {
                    goto LABEL_647;
                  }
                }

              case 8:
                v247 = v46 != 0;
                if (v380)
                {
                  v248 = v51;
                  v130 = v46;
                  while (1)
                  {
                    v249 = *v57;
                    if (*v57)
                    {
                      if (v46)
                      {
                        v249 = (*v130 * v249 + ((*v130 * v249) >> 8) + 1) >> 8;
                      }

                      if (v249 >= 0xF8u)
                      {
                        v250 = PDAM(bswap32(*v35) >> 16, *v32, ~*(v56 + 3));
LABEL_468:
                        *v35 = bswap32(v250) >> 16;
                        *v32 = HIBYTE(v250);
                        goto LABEL_469;
                      }

                      if (v249 >= 8u)
                      {
                        v251 = (~*v56 >> 24) * v249;
                        v252 = bswap32(*v35) >> 16;
                        v250 = PDAMplusDAM(v252, *v32, ((v251 + (v251 >> 8) + 1) >> 8), v252, *v32, ~v249);
                        goto LABEL_468;
                      }
                    }

LABEL_469:
                    ++v57;
                    v56 += 2;
                    v130 += v247;
                    ++v35;
                    ++v32;
                    if (!--v248)
                    {
                      goto LABEL_647;
                    }
                  }
                }

                v323 = v51;
                v130 = v46;
                while (1)
                {
                  v324 = *v57;
                  if (*v57)
                  {
                    if (v46)
                    {
                      v324 = (*v130 * v324 + ((*v130 * v324) >> 8) + 1) >> 8;
                    }

                    if (v324 >= 0xF8u)
                    {
                      v325 = PDM(bswap32(*v35) >> 16, ~*(v56 + 3));
LABEL_645:
                      *v35 = __rev16(v325);
                      goto LABEL_646;
                    }

                    if (v324 >= 8u)
                    {
                      v326 = (~*v56 >> 24) * v324;
                      v327 = bswap32(*v35) >> 16;
                      v325 = PDMplusDM(v327, ((v326 + (v326 >> 8) + 1) >> 8), v327, ~v324);
                      goto LABEL_645;
                    }
                  }

LABEL_646:
                  ++v57;
                  v56 += 2;
                  v130 += v247;
                  ++v35;
                  if (!--v323)
                  {
                    goto LABEL_647;
                  }
                }

              case 9:
                v159 = v46;
                do
                {
                  v160 = *v57;
                  if (*v57)
                  {
                    if (v46)
                    {
                      v160 = (*v159 * v160 + ((*v159 * v160) >> 8) + 1) >> 8;
                    }

                    if (v160 >= 8u)
                    {
                      v161 = *v32;
                      v162 = PDAM(*v56, HIBYTE(*v56), v160);
                      v163 = v161 ^ 0xFF;
                      v164 = v161;
                      v44 = v379;
                      v165 = PDAMplusDAM(v162, SBYTE3(v162), v163, bswap32(*v35) >> 16, v164, (~v160 + BYTE3(v162)));
                      *v35 = bswap32(v165) >> 16;
                      *v32 = HIBYTE(v165);
                    }
                  }

                  ++v57;
                  v56 += 2;
                  v159 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                }

                while (v51);
                v46 = &v159[v371];
                v35 += v372;
                v32 += v373;
                v39 = v363;
                goto LABEL_585;
              case 10:
                v240 = v51;
                v147 = v46;
                do
                {
                  v241 = *v57;
                  if (*v57)
                  {
                    if (v46)
                    {
                      v241 = (*v147 * v241 + ((*v147 * v241) >> 8) + 1) >> 8;
                    }

                    if (v241 >= 8u)
                    {
                      v242 = *v32;
                      v243 = PDAM(*v56, HIBYTE(*v56), v241);
                      v244 = v242 ^ 0xFF;
                      v245 = v242;
                      v44 = v379;
                      v246 = PDAMplusDAM(v243, SHIBYTE(v243), v244, bswap32(*v35) >> 16, v245, HIBYTE(v243) ^ 0xFF);
                      *v35 = bswap32(v246) >> 16;
                      *v32 = HIBYTE(v246);
                    }
                  }

                  ++v57;
                  v56 += 2;
                  v147 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  --v240;
                }

                while (v240);
                goto LABEL_575;
              case 11:
                v145 = v46 != 0;
                if (v380)
                {
                  v146 = v51;
                  v147 = v46;
                  do
                  {
                    v148 = *v57;
                    if (*v57)
                    {
                      if (v46)
                      {
                        v148 = (*v147 * v148 + ((*v147 * v148) >> 8) + 1) >> 8;
                      }

                      if (v148 >= 8u)
                      {
                        v149 = PDAM(*v56, HIBYTE(*v56), v148);
                        v150 = PDAplusdDA(bswap32(*v35) >> 16, *v32, v149, HIBYTE(v149));
                        *v35 = bswap32(v150) >> 16;
                        *v32 = HIBYTE(v150);
                      }
                    }

                    ++v57;
                    v56 += 2;
                    v147 += v145;
                    ++v35;
                    ++v32;
                    --v146;
                  }

                  while (v146);
                }

                else
                {
                  v294 = v51;
                  v147 = v46;
                  do
                  {
                    v295 = *v57;
                    if (*v57)
                    {
                      if (v46)
                      {
                        v295 = (*v147 * v295 + ((*v147 * v295) >> 8) + 1) >> 8;
                      }

                      if (v295 >= 8u)
                      {
                        v296 = PDAM(*v56, HIBYTE(*v56), v295);
                        *v35 = __rev16(PDplusdDA(bswap32(*v35) >> 16, v296, HIBYTE(v296)));
                      }
                    }

                    ++v57;
                    v56 += 2;
                    v147 += v145;
                    ++v35;
                    --v294;
                  }

                  while (v294);
                }

LABEL_575:
                v46 = &v147[v371];
                goto LABEL_584;
              case 12:
                v153 = v46 != 0;
                if (v380)
                {
                  v154 = v382;
                  v155 = v46;
                  do
                  {
                    v156 = *v57;
                    if (*v57)
                    {
                      if (v46)
                      {
                        v156 = (*v155 * v156 + ((*v155 * v156) >> 8) + 1) >> 8;
                      }

                      if (v156 >= 8u)
                      {
                        v157 = PDAM(*v56, HIBYTE(*v56), v156);
                        v158 = PDApluslDA(bswap32(*v35) >> 16, *v32, v157, HIBYTE(v157));
                        *v35 = bswap32(v158) >> 16;
                        *v32 = HIBYTE(v158);
                      }
                    }

                    ++v57;
                    v56 += 2;
                    v155 += v153;
                    ++v35;
                    ++v32;
                    --v154;
                  }

                  while (v154);
                }

                else
                {
                  v297 = v382;
                  v155 = v46;
                  do
                  {
                    v298 = *v57;
                    if (*v57)
                    {
                      if (v46)
                      {
                        v298 = (*v155 * v298 + ((*v155 * v298) >> 8) + 1) >> 8;
                      }

                      if (v298 >= 8u)
                      {
                        v299 = PDM(*v56, v298);
                        v300 = bswap32(*v35);
                        v301 = (((HIWORD(v300) << 15) | HIWORD(v300)) & 0x1F07C1F) + ((v299 | (v299 << 15)) & 0x1F07C1F);
                        *v35 = __rev16((((30 * ((v301 >> 5) & 0x100401)) | (15 * ((v301 >> 5) & 0x100401)) | v301) >> 15) & 0x3E0 | ((30 * ((v301 >> 5) & 0x100401)) | (15 * ((v301 >> 5) & 0x100401)) | v301) & 0x7C1F);
                      }
                    }

                    ++v57;
                    v56 += 2;
                    v155 += v153;
                    ++v35;
                    --v297;
                  }

                  while (v297);
                }

                v46 = &v155[v371];
LABEL_584:
                v35 += v372;
                v32 += v373;
LABEL_585:
                v40 = v374;
                v51 = v382;
                goto LABEL_700;
              case 13:
                v136 = v46;
                while (1)
                {
                  v229 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_421;
                  }

                  if (v46)
                  {
                    v229 = (*v136 * v229 + ((*v136 * v229) >> 8) + 1) >> 8;
                  }

                  if (v229 < 8u)
                  {
                    goto LABEL_421;
                  }

                  v230 = PDAM(*v56, HIBYTE(*v56), v229);
                  if (!(v230 >> 27))
                  {
                    goto LABEL_421;
                  }

                  v231 = HIBYTE(v230);
                  if (v380)
                  {
                    v232 = *v32;
                    if (v232 < 8)
                    {
                      goto LABEL_419;
                    }
                  }

                  else
                  {
                    v232 = 255;
                  }

                  v230 = PDAmultiplyPDA(bswap32(*v35) >> 16, v232, v230, v231);
                  if (!v380)
                  {
                    *v35 = bswap32(v230) >> 16;
                    goto LABEL_421;
                  }

                  v231 = HIBYTE(v230);
LABEL_419:
                  *v35 = bswap32(v230) >> 16;
                  *v32 = v231;
LABEL_421:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 14:
                v136 = v46;
                while (1)
                {
                  v141 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_214;
                  }

                  if (v46)
                  {
                    v141 = (*v136 * v141 + ((*v136 * v141) >> 8) + 1) >> 8;
                  }

                  if (v141 < 8u)
                  {
                    goto LABEL_214;
                  }

                  v142 = PDAM(*v56, HIBYTE(*v56), v141);
                  if (!(v142 >> 27))
                  {
                    goto LABEL_214;
                  }

                  v143 = HIBYTE(v142);
                  if (v380)
                  {
                    v144 = *v32;
                    if (v144 < 8)
                    {
                      goto LABEL_212;
                    }
                  }

                  else
                  {
                    v144 = 255;
                  }

                  v142 = PDAscreenPDA(bswap32(*v35) >> 16, v144, v142, v143);
                  if (!v380)
                  {
                    *v35 = bswap32(v142) >> 16;
                    goto LABEL_214;
                  }

                  v143 = HIBYTE(v142);
LABEL_212:
                  *v35 = bswap32(v142) >> 16;
                  *v32 = v143;
LABEL_214:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 15:
                v136 = v46;
                while (1)
                {
                  v191 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_315;
                  }

                  if (v46)
                  {
                    v191 = (*v136 * v191 + ((*v136 * v191) >> 8) + 1) >> 8;
                  }

                  if (v191 < 8u)
                  {
                    goto LABEL_315;
                  }

                  v192 = PDAM(*v56, HIBYTE(*v56), v191);
                  if (!(v192 >> 27))
                  {
                    goto LABEL_315;
                  }

                  v193 = HIBYTE(v192);
                  if (v380)
                  {
                    v194 = *v32;
                    if (v194 < 8)
                    {
                      goto LABEL_313;
                    }
                  }

                  else
                  {
                    v194 = 255;
                  }

                  v192 = PDAoverlayPDA(bswap32(*v35) >> 16, v194, v192, v193);
                  if (!v380)
                  {
                    *v35 = bswap32(v192) >> 16;
                    goto LABEL_315;
                  }

                  v193 = HIBYTE(v192);
LABEL_313:
                  *v35 = bswap32(v192) >> 16;
                  *v32 = v193;
LABEL_315:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 16:
                v136 = v46;
                while (1)
                {
                  v137 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_198;
                  }

                  if (v46)
                  {
                    v137 = (*v136 * v137 + ((*v136 * v137) >> 8) + 1) >> 8;
                  }

                  if (v137 < 8u)
                  {
                    goto LABEL_198;
                  }

                  v138 = PDAM(*v56, HIBYTE(*v56), v137);
                  if (!(v138 >> 27))
                  {
                    goto LABEL_198;
                  }

                  v139 = HIBYTE(v138);
                  if (v380)
                  {
                    v140 = *v32;
                    if (v140 < 8)
                    {
                      goto LABEL_196;
                    }
                  }

                  else
                  {
                    v140 = 255;
                  }

                  v138 = PDAdarkenPDA(bswap32(*v35) >> 16, v140, v138, v139);
                  if (!v380)
                  {
                    *v35 = bswap32(v138) >> 16;
                    goto LABEL_198;
                  }

                  v139 = HIBYTE(v138);
LABEL_196:
                  *v35 = bswap32(v138) >> 16;
                  *v32 = v139;
LABEL_198:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 17:
                v136 = v46;
                while (1)
                {
                  v210 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_365;
                  }

                  if (v46)
                  {
                    v210 = (*v136 * v210 + ((*v136 * v210) >> 8) + 1) >> 8;
                  }

                  if (v210 < 8u)
                  {
                    goto LABEL_365;
                  }

                  v211 = PDAM(*v56, HIBYTE(*v56), v210);
                  if (!(v211 >> 27))
                  {
                    goto LABEL_365;
                  }

                  v212 = HIBYTE(v211);
                  if (v380)
                  {
                    v213 = *v32;
                    if (v213 < 8)
                    {
                      goto LABEL_363;
                    }
                  }

                  else
                  {
                    v213 = 255;
                  }

                  v211 = PDAlightenPDA(bswap32(*v35) >> 16, v213, v211, v212);
                  if (!v380)
                  {
                    *v35 = bswap32(v211) >> 16;
                    goto LABEL_365;
                  }

                  v212 = HIBYTE(v211);
LABEL_363:
                  *v35 = bswap32(v211) >> 16;
                  *v32 = v212;
LABEL_365:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 18:
                v136 = v46;
                while (1)
                {
                  v236 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_449;
                  }

                  if (v46)
                  {
                    v236 = (*v136 * v236 + ((*v136 * v236) >> 8) + 1) >> 8;
                  }

                  if (v236 < 8u)
                  {
                    goto LABEL_449;
                  }

                  v237 = PDAM(*v56, HIBYTE(*v56), v236);
                  if (!(v237 >> 27))
                  {
                    goto LABEL_449;
                  }

                  v238 = HIBYTE(v237);
                  if (v380)
                  {
                    v239 = *v32;
                    if (v239 < 8)
                    {
                      goto LABEL_447;
                    }
                  }

                  else
                  {
                    v239 = 255;
                  }

                  v237 = PDAcolordodgePDA(bswap32(*v35) >> 16, v239, v237, v238);
                  if (!v380)
                  {
                    *v35 = bswap32(v237) >> 16;
                    goto LABEL_449;
                  }

                  v238 = HIBYTE(v237);
LABEL_447:
                  *v35 = bswap32(v237) >> 16;
                  *v32 = v238;
LABEL_449:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 19:
                v136 = v46;
                while (1)
                {
                  v258 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_501;
                  }

                  if (v46)
                  {
                    v258 = (*v136 * v258 + ((*v136 * v258) >> 8) + 1) >> 8;
                  }

                  if (v258 < 8u)
                  {
                    goto LABEL_501;
                  }

                  v259 = PDAM(*v56, HIBYTE(*v56), v258);
                  if (!(v259 >> 27))
                  {
                    goto LABEL_501;
                  }

                  v260 = HIBYTE(v259);
                  if (v380)
                  {
                    v261 = *v32;
                    if (v261 < 8)
                    {
                      goto LABEL_499;
                    }
                  }

                  else
                  {
                    v261 = 255;
                  }

                  v259 = PDAcolorburnPDA(bswap32(*v35) >> 16, v261, v259, v260);
                  if (!v380)
                  {
                    *v35 = bswap32(v259) >> 16;
                    goto LABEL_501;
                  }

                  v260 = HIBYTE(v259);
LABEL_499:
                  *v35 = bswap32(v259) >> 16;
                  *v32 = v260;
LABEL_501:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 20:
                v136 = v46;
                while (1)
                {
                  v214 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_381;
                  }

                  if (v46)
                  {
                    v214 = (*v136 * v214 + ((*v136 * v214) >> 8) + 1) >> 8;
                  }

                  if (v214 < 8u)
                  {
                    goto LABEL_381;
                  }

                  v215 = PDAM(*v56, HIBYTE(*v56), v214);
                  if (!(v215 >> 27))
                  {
                    goto LABEL_381;
                  }

                  v216 = HIBYTE(v215);
                  if (v380)
                  {
                    v217 = *v32;
                    if (v217 < 8)
                    {
                      goto LABEL_379;
                    }
                  }

                  else
                  {
                    v217 = 255;
                  }

                  v215 = PDAsoftlightPDA(bswap32(*v35) >> 16, v217, v215, v216);
                  if (!v380)
                  {
                    *v35 = bswap32(v215) >> 16;
                    goto LABEL_381;
                  }

                  v216 = HIBYTE(v215);
LABEL_379:
                  *v35 = bswap32(v215) >> 16;
                  *v32 = v216;
LABEL_381:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
                    goto LABEL_502;
                  }
                }

              case 21:
                v136 = v46;
                while (1)
                {
                  v225 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_405;
                  }

                  if (v46)
                  {
                    v225 = (*v136 * v225 + ((*v136 * v225) >> 8) + 1) >> 8;
                  }

                  if (v225 < 8u)
                  {
                    goto LABEL_405;
                  }

                  v226 = PDAM(*v56, HIBYTE(*v56), v225);
                  if (!(v226 >> 27))
                  {
                    goto LABEL_405;
                  }

                  v227 = HIBYTE(v226);
                  if (v380)
                  {
                    v228 = *v32;
                    if (v228 < 8)
                    {
                      goto LABEL_403;
                    }
                  }

                  else
                  {
                    v228 = 255;
                  }

                  v226 = PDAhardlightPDA(bswap32(*v35) >> 16, v228, v226, v227);
                  if (!v380)
                  {
                    *v35 = bswap32(v226) >> 16;
                    goto LABEL_405;
                  }

                  v227 = HIBYTE(v226);
LABEL_403:
                  *v35 = bswap32(v226) >> 16;
                  *v32 = v227;
LABEL_405:
                  ++v57;
                  v56 += 2;
                  v136 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  LODWORD(v51) = v51 - 1;
                  if (!v51)
                  {
LABEL_502:
                    v46 = &v136[v371];
LABEL_648:
                    v35 += v372;
                    v32 += v373;
                    v51 = v382;
                    v269 = v376;
                    v268 = v377;
                    v43 = v378;
                    v44 = v379;
                    goto LABEL_701;
                  }
                }

              case 22:
                v253 = v51;
                v130 = v46;
                while (1)
                {
                  v254 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_485;
                  }

                  if (v46)
                  {
                    v254 = (*v130 * v254 + ((*v130 * v254) >> 8) + 1) >> 8;
                  }

                  if (v254 < 8u)
                  {
                    goto LABEL_485;
                  }

                  v255 = PDAM(*v56, HIBYTE(*v56), v254);
                  if (!(v255 >> 27))
                  {
                    goto LABEL_485;
                  }

                  v256 = HIBYTE(v255);
                  if (v380)
                  {
                    v257 = *v32;
                    if (v257 < 8)
                    {
                      goto LABEL_483;
                    }
                  }

                  else
                  {
                    v257 = 255;
                  }

                  v255 = PDAdifferencePDA(bswap32(*v35) >> 16, v257, v255, v256);
                  if (!v380)
                  {
                    *v35 = bswap32(v255) >> 16;
                    goto LABEL_485;
                  }

                  v256 = HIBYTE(v255);
LABEL_483:
                  *v35 = bswap32(v255) >> 16;
                  *v32 = v256;
LABEL_485:
                  ++v57;
                  v56 += 2;
                  v130 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  if (!--v253)
                  {
                    goto LABEL_647;
                  }
                }

              case 23:
                v262 = v51;
                v130 = v46;
                v263 = v262;
                while (1)
                {
                  v264 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_517;
                  }

                  if (v46)
                  {
                    v264 = (*v130 * v264 + ((*v130 * v264) >> 8) + 1) >> 8;
                  }

                  if (v264 < 8u)
                  {
                    goto LABEL_517;
                  }

                  v265 = PDAM(*v56, HIBYTE(*v56), v264);
                  if (!(v265 >> 27))
                  {
                    goto LABEL_517;
                  }

                  v266 = HIBYTE(v265);
                  if (v380)
                  {
                    v267 = *v32;
                    if (v267 < 8)
                    {
                      goto LABEL_515;
                    }
                  }

                  else
                  {
                    v267 = 255;
                  }

                  v265 = PDAexclusionPDA(bswap32(*v35) >> 16, v267, v265, v266);
                  if (!v380)
                  {
                    *v35 = bswap32(v265) >> 16;
                    goto LABEL_517;
                  }

                  v266 = HIBYTE(v265);
LABEL_515:
                  *v35 = bswap32(v265) >> 16;
                  *v32 = v266;
LABEL_517:
                  ++v57;
                  v56 += 2;
                  v130 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  if (!--v263)
                  {
                    goto LABEL_647;
                  }
                }

              case 24:
                v172 = v51;
                v130 = v46;
                v173 = v172;
                while (1)
                {
                  v174 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_283;
                  }

                  if (v46)
                  {
                    v174 = (*v130 * v174 + ((*v130 * v174) >> 8) + 1) >> 8;
                  }

                  if (v174 < 8u)
                  {
                    goto LABEL_283;
                  }

                  v175 = PDAM(*v56, HIBYTE(*v56), v174);
                  if (!(v175 >> 27))
                  {
                    goto LABEL_283;
                  }

                  v176 = HIBYTE(v175);
                  if (v380)
                  {
                    v177 = *v32;
                    if (v177 < 8)
                    {
                      goto LABEL_281;
                    }
                  }

                  else
                  {
                    v177 = 255;
                  }

                  v175 = PDAhuePDA(bswap32(*v35) >> 16, v177, v175, v176);
                  if (!v380)
                  {
                    *v35 = bswap32(v175) >> 16;
                    goto LABEL_283;
                  }

                  v176 = HIBYTE(v175);
LABEL_281:
                  *v35 = bswap32(v175) >> 16;
                  *v32 = v176;
LABEL_283:
                  ++v57;
                  v56 += 2;
                  v130 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  if (!--v173)
                  {
                    goto LABEL_647;
                  }
                }

              case 25:
                v166 = v51;
                v130 = v46;
                v167 = v166;
                while (1)
                {
                  v168 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_267;
                  }

                  if (v46)
                  {
                    v168 = (*v130 * v168 + ((*v130 * v168) >> 8) + 1) >> 8;
                  }

                  if (v168 < 8u)
                  {
                    goto LABEL_267;
                  }

                  v169 = PDAM(*v56, HIBYTE(*v56), v168);
                  if (!(v169 >> 27))
                  {
                    goto LABEL_267;
                  }

                  v170 = HIBYTE(v169);
                  if (v380)
                  {
                    v171 = *v32;
                    if (v171 < 8)
                    {
                      goto LABEL_265;
                    }
                  }

                  else
                  {
                    v171 = 255;
                  }

                  v169 = PDAsaturationPDA(bswap32(*v35) >> 16, v171, v169, v170);
                  if (!v380)
                  {
                    *v35 = bswap32(v169) >> 16;
                    goto LABEL_267;
                  }

                  v170 = HIBYTE(v169);
LABEL_265:
                  *v35 = bswap32(v169) >> 16;
                  *v32 = v170;
LABEL_267:
                  ++v57;
                  v56 += 2;
                  v130 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  if (!--v167)
                  {
                    goto LABEL_647;
                  }
                }

              case 26:
                v270 = v51;
                v130 = v46;
                v271 = v270;
                while (1)
                {
                  v272 = *v57;
                  if (!*v57)
                  {
                    goto LABEL_534;
                  }

                  if (v46)
                  {
                    v272 = (*v130 * v272 + ((*v130 * v272) >> 8) + 1) >> 8;
                  }

                  if (v272 < 8u)
                  {
                    goto LABEL_534;
                  }

                  v273 = PDAM(*v56, HIBYTE(*v56), v272);
                  if (!(v273 >> 27))
                  {
                    goto LABEL_534;
                  }

                  v274 = HIBYTE(v273);
                  if (v380)
                  {
                    v275 = *v32;
                    if (v275 < 8)
                    {
                      goto LABEL_532;
                    }
                  }

                  else
                  {
                    v275 = 255;
                  }

                  v273 = PDAluminosityPDA(v273, v274, bswap32(*v35) >> 16, v275);
                  if (!v380)
                  {
                    *v35 = bswap32(v273) >> 16;
                    goto LABEL_534;
                  }

                  v274 = HIBYTE(v273);
LABEL_532:
                  *v35 = bswap32(v273) >> 16;
                  *v32 = v274;
LABEL_534:
                  ++v57;
                  v56 += 2;
                  v130 += v46 != 0;
                  ++v35;
                  v32 += v383;
                  if (!--v271)
                  {
                    goto LABEL_647;
                  }
                }

              case 27:
                v129 = v51;
                v130 = v46;
                v131 = v129;
                break;
              default:
                v269 = v376;
                v268 = v377;
                goto LABEL_701;
            }

            while (1)
            {
              v132 = *v57;
              if (!*v57)
              {
                goto LABEL_182;
              }

              if (v46)
              {
                v132 = (*v130 * v132 + ((*v130 * v132) >> 8) + 1) >> 8;
              }

              if (v132 < 8u)
              {
                goto LABEL_182;
              }

              v133 = PDAM(*v56, HIBYTE(*v56), v132);
              if (!(v133 >> 27))
              {
                goto LABEL_182;
              }

              v134 = HIBYTE(v133);
              if (v380)
              {
                v135 = *v32;
                if (v135 < 8)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v135 = 255;
              }

              v133 = PDAluminosityPDA(bswap32(*v35) >> 16, v135, v133, v134);
              if (!v380)
              {
                *v35 = bswap32(v133) >> 16;
                goto LABEL_182;
              }

              v134 = HIBYTE(v133);
LABEL_180:
              *v35 = bswap32(v133) >> 16;
              *v32 = v134;
LABEL_182:
              ++v57;
              v56 += 2;
              v130 += v46 != 0;
              ++v35;
              v32 += v383;
              if (!--v131)
              {
LABEL_647:
                v46 = &v130[v371];
                goto LABEL_648;
              }
            }
          }

          if (v64 <= 0)
          {
            v68 = -(-v64 & 0xF);
          }

          else
          {
            v68 = *(v370 + 12) & 0xF;
          }

          v69 = -v65 < 0;
          v70 = -v65 & 0xF;
          v71 = v65 & 0xF;
          if (!v69)
          {
            v71 = -v70;
          }

          v72 = v67 + 16 * v71;
          if (v381 >= 0xF8)
          {
            v110 = 0;
            v111 = (v63 + 8);
            do
            {
              if (v57[v110] >= 8u)
              {
                v112 = v111[1];
                if (v112 <= 0.0)
                {
                  v120 = 0;
                }

                else
                {
                  v113 = *(v111 - 2);
                  v114 = *(v111 - 1);
                  v115 = *v111;
                  v116 = ((v112 * 255.0) + 0.5);
                  if (v112 > 1.0)
                  {
                    v116 = 255;
                    v112 = 1.0;
                  }

                  v117 = ((v113 * 255.0) + 0.5);
                  if (v113 < 0.0)
                  {
                    v117 = 0;
                  }

                  if (v113 > v112)
                  {
                    v117 = v116;
                  }

                  v118 = ((v114 * 255.0) + 0.5);
                  if (v114 < 0.0)
                  {
                    v118 = 0;
                  }

                  if (v114 > v112)
                  {
                    v118 = v116;
                  }

                  v119 = ((v115 * 255.0) + 0.5);
                  if (v115 < 0.0)
                  {
                    v119 = 0;
                  }

                  if (v115 > v112)
                  {
                    v119 = v116;
                  }

                  v120 = DITHERRGBA32((v117 << 24) | (v118 << 16) | (v119 << 8) | v116, *(v72 + v68));
                }

                *&v56[2 * v110] = v120;
              }

              v68 = (v68 + 1) & 0xF;
              ++v110;
              v111 += 4;
            }

            while (v382 != v110);
          }

          else
          {
            v73 = 0;
            v74 = (v63 + 8);
            do
            {
              if (v57[v73] >= 8u)
              {
                v75 = v74[1];
                if (v75 <= 0.0)
                {
                  v83 = 0;
                }

                else
                {
                  v76 = *(v74 - 2);
                  v77 = *(v74 - 1);
                  v78 = *v74;
                  v79 = ((v75 * 255.0) + 0.5);
                  if (v75 > 1.0)
                  {
                    v79 = 255;
                    v75 = 1.0;
                  }

                  v80 = ((v76 * 255.0) + 0.5);
                  if (v76 < 0.0)
                  {
                    v80 = 0;
                  }

                  if (v76 > v75)
                  {
                    v80 = v79;
                  }

                  v81 = ((v77 * 255.0) + 0.5);
                  if (v77 < 0.0)
                  {
                    v81 = 0;
                  }

                  if (v77 > v75)
                  {
                    v81 = v79;
                  }

                  v82 = ((v78 * 255.0) + 0.5);
                  if (v78 < 0.0)
                  {
                    v82 = 0;
                  }

                  if (v78 > v75)
                  {
                    v82 = v79;
                  }

                  v83 = DITHERRGBA32M((v80 << 24) | (v81 << 16) | (v82 << 8) | v79, *(v72 + v68), v381);
                }

                *&v56[2 * v73] = v83;
              }

              v68 = (v68 + 1) & 0xF;
              ++v73;
              v74 += 4;
            }

            while (v382 != v73);
          }
        }

        break;
      }

      v40 = v374;
      v51 = v382;
      goto LABEL_153;
    }

    v357 = v34;
    shape_enum_clip_alloc(v19, v20, v379, 1, 1, 1, v36, v37, v382, v375);
    if (v47)
    {
      v356 = v29;
      v48 = 0;
      v49 = ((v15 * v4 + 15) & 0xFFFFFFF0);
      if (!v15)
      {
        v49 = 4 * v4;
      }

      v50 = v362;
      v371 = -v362;
      v46 = (v27 + v49 + 16);
      v51 = v382;
      v43 = v47;
      goto LABEL_704;
    }

LABEL_715:
    if (v358)
    {
      free(v358);
    }
  }
}