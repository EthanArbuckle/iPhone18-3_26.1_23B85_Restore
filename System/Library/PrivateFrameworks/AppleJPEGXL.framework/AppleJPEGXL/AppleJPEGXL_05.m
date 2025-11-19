unint64_t sub_240AEFDD8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v12 = a2;
  v13 = *a9;
  v162 = a2 + result;
  v14 = a2 + result - 7;
  if (result <= 7)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2 + result - 7;
  }

  v148 = v15;
  if (*(a6 + 4) >= 9)
  {
    v16 = 512;
  }

  else
  {
    v16 = 64;
  }

  if (result < 9)
  {
    v153 = a10;
    v99 = a2;
    goto LABEL_235;
  }

  v17 = a8;
  v18 = (1 << *(a6 + 8)) - 16;
  v161 = *(a6 + 16);
  result = 0xBD1E35A7BD000000;
  v19 = v16 + a2;
  v158 = a6 + 637;
  v157 = a5 + 256;
  v160 = a6 + 704;
  v154 = a7;
  v20 = *(a7 + 88);
  v145 = *(a6 + 104);
  v142 = v145 + 1;
  v146 = v16;
  v152 = 4 * v16;
  v153 = a10;
  v155 = a5;
  v150 = v14;
  do
  {
    if (v12 >= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v12;
    }

    if (v12 + v161 >= v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = v12 + v161;
    }

    if (!*(a6 + 632))
    {
      v25 = 0;
      v23 = 0;
      goto LABEL_23;
    }

    if (!v12)
    {
      v23 = 0;
LABEL_21:
      v24 = 0;
      goto LABEL_22;
    }

    v23 = *(a3 + ((v12 - 1) & a4));
    if (v12 == 1)
    {
      goto LABEL_21;
    }

    v24 = *(a3 + ((v12 - 2) & a4));
LABEL_22:
    v25 = *(v158 + (*(v157 + v24) | *(a5 + v23)));
LABEL_23:
    v26 = v162 - v12;
    v27 = *(v160 + 8 * v25);
    v28 = *(a6 + 80);
    v29 = (a3 + (v12 & a4));
    v30 = *v29;
    v31 = (0xBD1E35A7BD000000 * *v29) >> 48;
    v32 = *v17;
    if (v12 < v32)
    {
      goto LABEL_34;
    }

    v33 = (a3 + (a4 & (v12 - v32)));
    if (v30 != *v33)
    {
      goto LABEL_34;
    }

    if (v26 < 8)
    {
      v36 = 0;
      v37 = (a3 + (v12 & a4));
LABEL_222:
      v137 = v26 & 7;
      if ((v26 & 7) != 0)
      {
        v138 = v14;
        v139 = v36 | v137;
        while (v33[v36] == *v37)
        {
          ++v37;
          ++v36;
          if (!--v137)
          {
            v36 = v139;
            break;
          }
        }

        result = 0xBD1E35A7BD000000;
        v14 = v138;
      }
    }

    else
    {
      v34 = 0;
      v35 = v26 >> 3;
      v36 = v26 & 0xFFFFFFFFFFFFFFF8;
      v37 = v29 + (v26 & 0xFFFFFFFFFFFFFFF8);
      while (1)
      {
        v38 = v29[v34];
        v39 = *&v33[v34 * 8];
        if (v38 != v39)
        {
          break;
        }

        ++v34;
        if (!--v35)
        {
          result = 0xBD1E35A7BD000000;
          goto LABEL_222;
        }
      }

      v36 = v34 * 8 + (__clz(__rbit64(v39 ^ v38)) >> 3);
      result = 0xBD1E35A7BD000000;
    }

    if (v36 < 4 || (v40 = 135 * v36 + 1935, v40 < 0x7E5))
    {
LABEL_34:
      v43 = *(v20 + 4 * v31);
      *(v20 + 4 * v31) = v12;
      v32 = v12 - v43;
      v44 = (a3 + (v43 & a4));
      if (v30 != *v44 || v12 == v43 || v32 > v21)
      {
        goto LABEL_131;
      }

      if (v26 < 8)
      {
        v36 = 0;
        v49 = (a3 + (v12 & a4));
LABEL_214:
        v135 = v26 & 7;
        if ((v26 & 7) == 0)
        {
LABEL_48:
          if (v36 < 4 || (v40 = 135 * v36 - 30 * (__clz(v32) ^ 0x1F) + 1920, v40 <= 0x7E4))
          {
            v93 = *(a7 + 80);
            v94 = *(v93 + 40);
            v95 = *(v93 + 48);
            if (v95 < v94 >> 7)
            {
              goto LABEL_131;
            }

            v96 = ((506832829 * *v29) >> 17) & 0x7FFELL;
            v97 = *(v27 + 32);
            *(v93 + 40) = v94 + 1;
            v98 = *(v97 + v96);
            if (!*(v97 + v96) || v26 < v98)
            {
              goto LABEL_131;
            }

            v113 = *(*(v27 + 24) + 2 * v96);
            v114 = *(*v27 + 4 * v98 + 32);
            v115 = *(*v27 + 168) + v113 * *(v97 + v96);
            v116 = (v115 + v114);
            if (v98 < 8)
            {
              v36 = 0;
LABEL_229:
              v140 = v98 & 7;
              if ((v98 & 7) != 0)
              {
                v141 = v36 | v140;
                while (*(v29 + v36) == *v116)
                {
                  ++v116;
                  ++v36;
                  if (!--v140)
                  {
                    v36 = v141;
                    break;
                  }
                }
              }
            }

            else
            {
              v117 = v23;
              v118 = 0;
              v36 = v98 & 0xF8;
              v119 = (v115 + v36 + v114);
              while (1)
              {
                v120 = *&v116[v118];
                v121 = v29[v118 / 8];
                if (v120 != v121)
                {
                  break;
                }

                v118 += 8;
                if (v36 == v118)
                {
                  v116 = v119;
                  v23 = v117;
                  goto LABEL_229;
                }
              }

              v36 = v118 + (__clz(__rbit64(v121 ^ v120)) >> 3);
              v23 = v117;
            }

            result = 0xBD1E35A7BD000000;
            v14 = v150;
            if (!v36 || v36 + *(v27 + 12) <= v98 || (v32 = v142 + v22 + v113 + ((((*(v27 + 16) >> (6 * (v98 - v36))) & 0x3FLL) + 4 * (v98 - v36)) << *(*v27 + v98)), v32 > v28) || (v40 = 135 * v36 - 30 * (__clz(v32) ^ 0x1F) + 1920, v40 < 0x7E4) || (*(v93 + 48) = v95 + 1, v40 == 2020))
            {
LABEL_131:
              ++v13;
              v99 = v12 + 1;
              if (v12 + 1 > v19)
              {
                if (v99 <= v19 + v152)
                {
                  v101 = v12 + 9;
                  if (v12 + 9 >= v14)
                  {
                    v101 = v14;
                  }

                  while (v99 < v101)
                  {
                    *(v20 + (((0xBD1E35A7BD000000 * *(a3 + (v99 & a4))) >> 46) & 0x3FFFC)) = v99;
                    v13 += 2;
                    v99 += 2;
                  }
                }

                else
                {
                  v100 = v12 + 17;
                  if (v12 + 17 >= v14)
                  {
                    v100 = v14;
                  }

                  while (v99 < v100)
                  {
                    *(v20 + (((0xBD1E35A7BD000000 * *(a3 + (v99 & a4))) >> 46) & 0x3FFFC)) = v99;
                    v13 += 4;
                    v99 += 4;
                  }
                }
              }

              goto LABEL_209;
            }

            v149 = v28;
            v41 = v23;
            v42 = v98 - v36;
          }

          else
          {
            v149 = v28;
            v41 = v23;
            v42 = 0;
          }

          goto LABEL_51;
        }

        v136 = v36 | v135;
        while (v44[v36] == *v49)
        {
          ++v49;
          ++v36;
          if (!--v135)
          {
            v36 = v136;
            break;
          }
        }
      }

      else
      {
        v47 = 0;
        v48 = v26 >> 3;
        v36 = v26 & 0xFFFFFFFFFFFFFFF8;
        v49 = v29 + (v26 & 0xFFFFFFFFFFFFFFF8);
        while (1)
        {
          v50 = v29[v47];
          v51 = *&v44[v47 * 8];
          if (v50 != v51)
          {
            break;
          }

          ++v47;
          if (!--v48)
          {
            result = 0xBD1E35A7BD000000;
            goto LABEL_214;
          }
        }

        v36 = v47 * 8 + (__clz(__rbit64(v51 ^ v50)) >> 3);
      }

      result = 0xBD1E35A7BD000000;
      goto LABEL_48;
    }

    v149 = *(a6 + 80);
    v41 = v23;
    v42 = 0;
    *(v20 + 4 * v31) = v12;
LABEL_51:
    v52 = 0;
    v159 = *v17;
    while (1)
    {
      --v26;
      v53 = v36 - 1;
      if (v36 - 1 >= v26)
      {
        v53 = v26;
      }

      if (*(a6 + 4) >= 5)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      v55 = v12 + 1;
      if (v12 + 1 < v18)
      {
        v56 = v12 + 1;
      }

      else
      {
        v56 = v18;
      }

      if (v55 + v161 >= v18)
      {
        v57 = v18;
      }

      else
      {
        v57 = v55 + v161;
      }

      if (*(a6 + 632))
      {
        v58 = *(v157 + v41);
        v41 = *(a3 + (v12 & a4));
        v25 = *(v158 + (v58 | *(v155 + v41)));
      }

      v59 = *(v160 + 8 * v25);
      v60 = (a3 + (v55 & a4));
      v61 = *(v60 + v54);
      v62 = (0xBD1E35A7BD000000 * *v60) >> 48;
      if (v55 >= v159)
      {
        v63 = a3 + (a4 & (v55 - v159));
        if (v61 == *(v63 + v54))
        {
          if (v26 < 8)
          {
            v64 = 0;
            v66 = (a3 + (v55 & a4));
LABEL_118:
            v91 = v26 & 7;
            if ((v26 & 7) != 0)
            {
              do
              {
                if (*(v63 + v64) != *v66)
                {
                  break;
                }

                v66 = (v66 + 1);
                ++v64;
                --v91;
              }

              while (v91);
            }
          }

          else
          {
            v64 = 0;
            v65 = v26 >> 3;
            v66 = (a3 + (v55 & a4));
            while (1)
            {
              v67 = *(v63 + v64);
              if (*v66 != v67)
              {
                break;
              }

              ++v66;
              v64 += 8;
              if (!--v65)
              {
                goto LABEL_118;
              }
            }

            v64 += __clz(__rbit64(v67 ^ *v66)) >> 3;
          }

          result = 0xBD1E35A7BD000000;
          if (v64 >= 4)
          {
            v68 = 135 * v64 + 1935;
            if (v68 >= 0x7E5)
            {
              v69 = 0;
              *(v20 + 4 * v62) = v55;
              v70 = v159;
              goto LABEL_97;
            }
          }
        }
      }

      v71 = *(v20 + 4 * v62);
      *(v20 + 4 * v62) = v55;
      v72 = a3 + (v71 & a4);
      if (v61 != *(v72 + v54))
      {
        goto LABEL_95;
      }

      v70 = v55 - v71;
      if (v55 == v71 || v70 > v56)
      {
        goto LABEL_95;
      }

      if (v26 < 8)
      {
        v64 = 0;
        v75 = (a3 + (v55 & a4));
LABEL_113:
        v90 = v26 & 7;
        if ((v26 & 7) != 0)
        {
          do
          {
            if (*(v72 + v64) != *v75)
            {
              break;
            }

            v75 = (v75 + 1);
            ++v64;
            --v90;
          }

          while (v90);
        }
      }

      else
      {
        v64 = 0;
        v74 = v26 >> 3;
        v75 = (a3 + (v55 & a4));
        while (1)
        {
          v76 = *(v72 + v64);
          if (*v75 != v76)
          {
            break;
          }

          ++v75;
          v64 += 8;
          if (!--v74)
          {
            goto LABEL_113;
          }
        }

        v64 += __clz(__rbit64(v76 ^ *v75)) >> 3;
      }

      if (v64 >= 4)
      {
        v68 = 135 * v64 - 30 * (__clz(v70) ^ 0x1F) + 1920;
        if (v68 > 0x7E4)
        {
          v69 = 0;
          goto LABEL_92;
        }
      }

      v77 = *(v154 + 80);
      v78 = *(v77 + 40);
      v79 = *(v77 + 48);
      if (v79 < v78 >> 7)
      {
        goto LABEL_91;
      }

      v80 = ((506832829 * *v60) >> 17) & 0x7FFELL;
      v81 = *(v59 + 32);
      *(v77 + 40) = v78 + 1;
      v82 = *(v81 + v80);
      result = 0xBD1E35A7BD000000;
      if (*(v81 + v80) && v26 >= v82)
      {
        v84 = *(*v59 + 4 * v82 + 32);
        v147 = *(*(v59 + 24) + 2 * v80);
        v85 = *(*v59 + 168) + v147 * *(v81 + v80);
        v86 = (v85 + v84);
        if (v82 < 8)
        {
          v64 = 0;
LABEL_123:
          v92 = v82 & 7;
          result = 0xBD1E35A7BD000000;
          if ((v82 & 7) != 0)
          {
            v144 = v64 | v92;
            while (*(v60 + v64) == *v86)
            {
              ++v86;
              ++v64;
              if (!--v92)
              {
                v64 = v144;
                break;
              }
            }
          }
        }

        else
        {
          v87 = 0;
          v64 = v82 & 0xF8;
          v143 = (v85 + v64 + v84);
          result = 0xBD1E35A7BD000000;
          while (1)
          {
            v88 = *&v86[v87];
            v89 = v60[v87 / 8];
            if (v88 != v89)
            {
              break;
            }

            v87 += 8;
            if (v64 == v87)
            {
              v86 = v143;
              goto LABEL_123;
            }
          }

          v64 = v87 + (__clz(__rbit64(v89 ^ v88)) >> 3);
        }

        v69 = 0;
        v70 = 0;
        if (v64 && v64 + *(v59 + 12) > v82)
        {
          v70 = v142 + v57 + v147 + ((((*(v59 + 16) >> (6 * (v82 - v64))) & 0x3FLL) + 4 * (v82 - v64)) << *(*v59 + v82));
          if (v70 > v149 || (v68 = 135 * v64 - 30 * (__clz(v70) ^ 0x1F) + 1920, v68 < 0x7E4))
          {
LABEL_91:
            v70 = 0;
            v69 = 0;
            v64 = v54;
            v68 = 2020;
          }

          else
          {
            v69 = v82 - v64;
            *(v77 + 48) = v79 + 1;
          }

LABEL_92:
          result = 0xBD1E35A7BD000000;
          goto LABEL_97;
        }
      }

      else
      {
LABEL_95:
        v70 = 0;
        v69 = 0;
      }

      v64 = v54;
      v68 = 2020;
LABEL_97:
      if (v68 < v40 + 175)
      {
        break;
      }

      ++v13;
      if (v52 <= 2)
      {
        v83 = v12 + 9;
        ++v52;
        v32 = v70;
        v40 = v68;
        v42 = v69;
        v36 = v64;
        ++v12;
        if (v83 < v162)
        {
          continue;
        }
      }

      goto LABEL_145;
    }

    if (v12 + v161 >= v18)
    {
      v57 = v18;
    }

    else
    {
      v57 = v12 + v161;
    }

    v70 = v32;
    v69 = v42;
    v64 = v36;
    v55 = v12;
LABEL_145:
    if (v70 > v57 + v145)
    {
LABEL_146:
      v102 = v70 + 15;
      goto LABEL_147;
    }

    v103 = *a8;
    if (v70 == v103)
    {
      v102 = 0;
      goto LABEL_152;
    }

    v122 = a8[1];
    if (v70 == v122)
    {
      v102 = 1;
    }

    else
    {
      v123 = v70 + 3 - v103;
      if (v123 > 6)
      {
        v126 = v70 + 3 - v122;
        if (v126 > 6)
        {
          if (v70 == a8[2])
          {
            v102 = 2;
          }

          else
          {
            if (v70 != a8[3])
            {
              goto LABEL_146;
            }

            v102 = 3;
          }

          goto LABEL_147;
        }

        v124 = 4 * v126;
        v125 = 266017486;
      }

      else
      {
        v124 = 4 * v123;
        v125 = 158663784;
      }

      v102 = (v125 >> v124) & 0xF;
    }

LABEL_147:
    if (v70 <= v57 + v145 && v102)
    {
      a8[3] = a8[2];
      *(a8 + 1) = *a8;
      *a8 = v70;
    }

LABEL_152:
    *v153 = v13;
    *(v153 + 4) = v64 | (v69 << 25);
    v104 = *(a6 + 68);
    v105 = v104 + 16;
    if (v104 + 16 <= v102)
    {
      v107 = *(a6 + 64);
      v108 = v102 - v104 + (4 << v107) - 16;
      v109 = (__clz(v108) ^ 0x1F) - 1;
      v110 = ((v108 >> v109) & 1 | 2) << v109;
      v102 = ((v108 & ~(-1 << v107)) + v105 + ((((v108 >> v109) & 1 | (2 * (v109 - v107))) + 65534) << v107)) | ((v109 - v107) << 10);
      v106 = (v108 - v110) >> v107;
    }

    else
    {
      LODWORD(v106) = 0;
    }

    a5 = v155;
    *(v153 + 14) = v102;
    *(v153 + 8) = v106;
    if (v13 > 5)
    {
      if (v13 > 0x81)
      {
        if (v13 > 0x841)
        {
          if (v13 >> 1 >= 0xC21)
          {
            if (v13 < 0x5842)
            {
              LOWORD(v111) = 22;
            }

            else
            {
              LOWORD(v111) = 23;
            }
          }

          else
          {
            LOWORD(v111) = 21;
          }
        }

        else
        {
          v111 = (__clz(v13 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v112 = (__clz(v13 - 2) ^ 0x1F) - 1;
        v111 = ((v13 - 2) >> v112) + 2 * v112 + 2;
      }
    }

    else
    {
      LOWORD(v111) = v13;
    }

    v127 = v69 + v64;
    if ((v69 + v64) > 9)
    {
      v14 = v150;
      v17 = a8;
      a7 = v154;
      if (v127 > 0x85)
      {
        if (v127 > 0x845)
        {
          LOWORD(v127) = 23;
        }

        else
        {
          v127 = (__clz(v127 - 70) ^ 0x1F) + 12;
        }
      }

      else
      {
        v128 = v127 - 6;
        v129 = (__clz(v128) ^ 0x1F) - 1;
        v127 = (v128 >> v129) + 2 * v129 + 4;
      }
    }

    else
    {
      LOWORD(v127) = v127 - 2;
      v14 = v150;
      v17 = a8;
      a7 = v154;
    }

    v130 = v127 & 7 | (8 * (v111 & 7));
    if ((v102 & 0x3FF) != 0 || v111 > 7u || v127 > 0xFu)
    {
      v132 = 3 * (v111 >> 3) + ((v127 & 0xFFF8) >> 3);
      v131 = ((((0x520D40u >> (2 * v132)) & 0xC0) + (v132 << 6)) | v130) + 64;
    }

    else
    {
      LOWORD(v131) = v130 | 0x40;
      if ((v127 & 0xFFF8) == 0)
      {
        LOWORD(v131) = v127 & 7 | (8 * (v111 & 7));
      }
    }

    *(v153 + 12) = v131;
    *a12 += v13;
    v133 = v55 + 2;
    v99 = v55 + v64;
    v134 = v148;
    if (v55 + v64 < v148)
    {
      v134 = v55 + v64;
    }

    if (v70 < v64 >> 2)
    {
      if (v133 <= v99 - 4 * v70)
      {
        v133 = v99 - 4 * v70;
      }

      if (v134 < v133)
      {
        v133 = v134;
      }
    }

    v19 = v146 + 2 * v64 + v55;
    v153 += 16;
    if (v133 < v134)
    {
      do
      {
        *(v20 + (((0xBD1E35A7BD000000 * *(a3 + (v133 & a4))) >> 46) & 0x3FFFC)) = v133;
        ++v133;
      }

      while (v134 != v133);
    }

    v13 = 0;
LABEL_209:
    v12 = v99;
  }

  while (v99 + 8 < v162);
LABEL_235:
  *a9 = v13 + v162 - v99;
  *a11 += (v153 - a10) >> 4;
  return result;
}

void *sub_240AF0BEC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *i, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a2;
  v124[1] = *MEMORY[0x277D85DE8];
  v12 = *a8;
  v13 = result + a2;
  v14 = result + a2 - 7;
  v112 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v116 = v14;
  if (*(a5 + 4) >= 9)
  {
    v15 = 512;
  }

  else
  {
    v15 = 64;
  }

  if (result >= 9)
  {
    v122 = (1 << *(a5 + 8)) - 16;
    v114 = *(a5 + 16);
    v113 = *(a5 + 104);
    result = v124;
    v16 = v15 + a2;
    v119 = a5;
    v115 = v15;
    v111 = 4 * v15;
    v17 = *(a6 + 88);
    v117 = a9;
    v118 = i;
    v120 = v13;
    while (1)
    {
      v18 = v13 - v11;
      if (v11 >= v122)
      {
        v19 = v122;
      }

      else
      {
        v19 = v11;
      }

      v20 = (a3 + (v11 & a4));
      v21 = *v20;
      v22 = *i;
      if (v11 < v22)
      {
        goto LABEL_22;
      }

      v23 = (a3 + (a4 & (v11 - v22)));
      if (v21 != *v23)
      {
        goto LABEL_22;
      }

      if (v18 < 8)
      {
        v25 = 0;
        v26 = (a3 + (v11 & a4));
LABEL_180:
        v107 = v18 & 7;
        if ((v18 & 7) != 0)
        {
          v108 = v25 | v107;
          while (v23[v25] == *v26)
          {
            ++v26;
            ++v25;
            if (!--v107)
            {
              v25 = v108;
              break;
            }
          }
        }
      }

      else
      {
        v24 = 0;
        v25 = v18 & 0xFFFFFFFFFFFFFFF8;
        v26 = v20 + (v18 & 0xFFFFFFFFFFFFFFF8);
        v27 = v18 >> 3;
        while (1)
        {
          v28 = v20[v24];
          v29 = *&v23[v24 * 8];
          if (v28 != v29)
          {
            break;
          }

          ++v24;
          if (!--v27)
          {
            goto LABEL_180;
          }
        }

        v25 = v24 * 8 + (__clz(__rbit64(v29 ^ v28)) >> 3);
      }

      if (v25 >= 4 && (v30 = 135 * v25 + 1935, v30 >= 0x7E5))
      {
        v21 = *(v20 + v25);
      }

      else
      {
LABEL_22:
        v22 = 0;
        v25 = 0;
        v30 = 2020;
      }

      v123 = (0xBD1E35A7BD000000 * *v20) >> 48;
      v124[0] = (v123 + 8);
      v31 = &v123;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *(v17 + 4 * *v31);
        v35 = v11 - v34;
        v36 = a3 + (v34 & a4);
        if (v21 == *(v36 + v25) && v11 != v34 && v35 <= v19)
        {
          if (v18 < 8)
          {
            v43 = 0;
            v44 = (a3 + (v11 & a4));
LABEL_43:
            if ((v18 & 7) != 0)
            {
              v46 = v18 & 7 | v43;
              v47 = v18 & 7;
              while (*(v36 + v43) == *v44)
              {
                ++v44;
                ++v43;
                if (!--v47)
                {
                  v43 = v46;
                  break;
                }
              }

              v13 = v120;
            }
          }

          else
          {
            v39 = 0;
            v40 = v18 >> 3;
            while (1)
            {
              v41 = v20[v39];
              v42 = *(v36 + v39 * 8);
              if (v41 != v42)
              {
                break;
              }

              ++v39;
              if (!--v40)
              {
                v43 = v18 & 0xFFFFFFFFFFFFFFF8;
                v44 = v20 + (v18 & 0xFFFFFFFFFFFFFFF8);
                goto LABEL_43;
              }
            }

            v43 = v39 * 8 + (__clz(__rbit64(v42 ^ v41)) >> 3);
          }

          if (v43 >= 4)
          {
            v45 = __clz(v35);
            if (v30 < 135 * v43 - 30 * (v45 ^ 0x1F) + 1920)
            {
              v21 = *(v20 + v43);
              v22 = v35;
              v30 = 135 * v43 - 30 * (v45 ^ 0x1F) + 1920;
              v25 = v43;
            }
          }
        }

        v32 = 0;
        v31 = v124;
      }

      while ((v33 & 1) != 0);
      *(v17 + 4 * *(&v124[-1] + (v11 & 8))) = v11;
      if (v30 < 0x7E5)
      {
        ++v12;
        v78 = v11 + 1;
        if (v11 + 1 <= v16)
        {
          i = v118;
        }

        else if (v78 <= v16 + v111)
        {
          v93 = v11 + 9;
          if (v11 + 9 >= v112)
          {
            v93 = v112;
          }

          for (i = v118; v78 < v93; v78 += 2)
          {
            *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v78 & a4))) >> 48) + (v78 & 8))) = v78;
            v12 += 2;
          }
        }

        else
        {
          v79 = v11 + 17;
          if (v11 + 17 >= v112)
          {
            v79 = v112;
          }

          for (i = v118; v78 < v79; v78 += 4)
          {
            *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v78 & a4))) >> 48) + (v78 & 8))) = v78;
            v12 += 4;
          }
        }

        goto LABEL_173;
      }

      v48 = 0;
      v121 = *v118;
      while (1)
      {
        --v18;
        v49 = v25 - 1;
        if (v25 - 1 >= v18)
        {
          v49 = v18;
        }

        v50 = *(a5 + 4) >= 5 ? 0 : v49;
        v51 = v11 + 1;
        v52 = v11 + 1 < v122 ? v11 + 1 : v122;
        v53 = (a3 + (v51 & a4));
        v54 = *(v53 + v50);
        if (v51 < v121)
        {
          goto LABEL_70;
        }

        v55 = a3 + (a4 & (v51 - v121));
        if (v54 != *(v55 + v50))
        {
          goto LABEL_70;
        }

        if (v18 < 8)
        {
          v56 = 0;
          v58 = (a3 + (v51 & a4));
LABEL_101:
          v77 = v18 & 7;
          if ((v18 & 7) != 0)
          {
            do
            {
              if (*(v55 + v56) != *v58)
              {
                break;
              }

              v58 = (v58 + 1);
              ++v56;
              --v77;
            }

            while (v77);
          }
        }

        else
        {
          v56 = 0;
          v57 = v18 >> 3;
          v58 = (a3 + (v51 & a4));
          while (1)
          {
            v59 = *(v55 + v56);
            if (*v58 != v59)
            {
              break;
            }

            ++v58;
            v56 += 8;
            if (!--v57)
            {
              goto LABEL_101;
            }
          }

          v56 += __clz(__rbit64(v59 ^ *v58)) >> 3;
        }

        if (v56 >= 4 && (v60 = 135 * v56 + 1935, v60 >= 0x7E5))
        {
          v54 = *(v53 + v56);
          v50 = v56;
          v61 = v121;
        }

        else
        {
LABEL_70:
          v61 = 0;
          v60 = 2020;
        }

        v123 = (0xBD1E35A7BD000000 * *v53) >> 48;
        v124[0] = (v123 + 8);
        v62 = &v123;
        v63 = 1;
        do
        {
          v64 = v63;
          v65 = *(v17 + 4 * *v62);
          v66 = v51 - v65;
          v67 = a3 + (v65 & a4);
          if (v54 == *(v67 + v50) && v51 != v65 && v66 <= v52)
          {
            if (v18 < 8)
            {
              v70 = 0;
              v72 = (a3 + (v51 & a4));
LABEL_91:
              if ((v18 & 7) != 0)
              {
                v75 = v18 & 7;
                do
                {
                  if (*(v67 + v70) != *v72)
                  {
                    break;
                  }

                  v72 = (v72 + 1);
                  ++v70;
                  --v75;
                }

                while (v75);
              }
            }

            else
            {
              v70 = 0;
              v71 = v18 >> 3;
              v72 = (a3 + (v51 & a4));
              while (1)
              {
                v73 = *(v67 + v70);
                if (*v72 != v73)
                {
                  break;
                }

                ++v72;
                v70 += 8;
                if (!--v71)
                {
                  goto LABEL_91;
                }
              }

              v70 += __clz(__rbit64(v73 ^ *v72)) >> 3;
            }

            if (v70 >= 4)
            {
              v74 = __clz(v66) ^ 0x1F;
              if (v60 < 135 * v70 - 30 * v74 + 1920)
              {
                v54 = *(v53 + v70);
                v50 = v70;
                v61 = v66;
                v60 = 135 * v70 - 30 * v74 + 1920;
              }
            }
          }

          v63 = 0;
          v62 = v124;
        }

        while ((v64 & 1) != 0);
        *(v17 + 4 * *(&v124[-1] + (v51 & 8))) = v51;
        if (v60 < v30 + 175)
        {
          break;
        }

        ++v12;
        a5 = v119;
        v13 = v120;
        if (v48 <= 2)
        {
          v76 = v11 + 9;
          ++v48;
          v22 = v61;
          v30 = v60;
          v25 = v50;
          ++v11;
          if (v76 < v120)
          {
            continue;
          }
        }

        goto LABEL_113;
      }

      v61 = v22;
      v50 = v25;
      v51 = v11;
      a5 = v119;
      v13 = v120;
LABEL_113:
      v80 = v51 + v114;
      if (v51 + v114 >= v122)
      {
        v80 = v122;
      }

      v81 = v80 + v113;
      i = v118;
      if (v61 > v80 + v113)
      {
        goto LABEL_116;
      }

      v86 = *v118;
      if (v61 != v86)
      {
        break;
      }

      LOWORD(v82) = 0;
      LODWORD(v85) = 0;
      *v117 = v12;
      *(v117 + 4) = v50;
LABEL_126:
      *(v117 + 14) = v82;
      *(v117 + 8) = v85;
      if (v12 > 5)
      {
        if (v12 > 0x81)
        {
          if (v12 > 0x841)
          {
            if (v12 >> 1 >= 0xC21)
            {
              if (v12 < 0x5842)
              {
                LOWORD(v91) = 22;
              }

              else
              {
                LOWORD(v91) = 23;
              }
            }

            else
            {
              LOWORD(v91) = 21;
            }
          }

          else
          {
            v91 = (__clz(v12 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v92 = (__clz(v12 - 2) ^ 0x1F) - 1;
          v91 = ((v12 - 2) >> v92) + 2 * v92 + 2;
        }
      }

      else
      {
        LOWORD(v91) = v12;
      }

      if (v50 > 9)
      {
        if (v50 > 0x85)
        {
          if (v50 > 0x845)
          {
            LOWORD(v99) = 23;
          }

          else
          {
            v99 = (__clz(v50 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v100 = v50 - 6;
          v101 = __clz(v100);
          v99 = (v100 >> ((v101 ^ 0x1F) - 1)) + 2 * ((v101 ^ 0x1F) - 1) + 4;
        }
      }

      else
      {
        LOWORD(v99) = v50 - 2;
      }

      v102 = v99 & 7 | (8 * (v91 & 7));
      if ((v82 & 0x3FF) != 0 || v91 > 7u || v99 > 0xFu)
      {
        v104 = 3 * (v91 >> 3) + ((v99 & 0xFFF8) >> 3);
        v103 = ((((0x520D40u >> (2 * v104)) & 0xC0) + (v104 << 6)) | v102) + 64;
      }

      else
      {
        LOWORD(v103) = v102 | 0x40;
        if ((v99 & 0xFFF8) == 0)
        {
          LOWORD(v103) = v99 & 7 | (8 * (v91 & 7));
        }
      }

      *(v117 + 12) = v103;
      *a11 += v12;
      v105 = v51 + 2;
      v78 = v51 + v50;
      v106 = v116;
      if (v51 + v50 < v116)
      {
        v106 = v51 + v50;
      }

      if (v61 < v50 >> 2)
      {
        if (v105 <= v78 - 4 * v61)
        {
          v105 = v78 - 4 * v61;
        }

        if (v106 < v105)
        {
          v105 = v106;
        }
      }

      v16 = v115 + 2 * v50 + v51;
      v117 += 16;
      if (v105 < v106)
      {
        do
        {
          *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v105 & a4))) >> 48) + (v105 & 8))) = v105;
          ++v105;
        }

        while (v106 != v105);
      }

      v12 = 0;
LABEL_173:
      v11 = v78;
      if (v78 + 8 >= v13)
      {
        goto LABEL_186;
      }
    }

    v94 = v118[1];
    if (v61 == v94)
    {
      v82 = 1;
      goto LABEL_117;
    }

    v95 = v61 + 3;
    v96 = v61 + 3 - v86;
    if (v96 > 6)
    {
      if (v95 - v94 > 6)
      {
        if (v61 == v118[2])
        {
          v82 = 2;
        }

        else if (v61 == v118[3])
        {
          v82 = 3;
        }

        else
        {
LABEL_116:
          v82 = v61 + 15;
        }

LABEL_117:
        if (v61 <= v81 && v82)
        {
          v118[3] = v118[2];
          *(v118 + 1) = *v118;
          *v118 = v61;
        }

        *v117 = v12;
        *(v117 + 4) = v50;
        v83 = *(a5 + 68);
        v84 = v83 + 16;
        if (v83 + 16 <= v82)
        {
          v87 = *(a5 + 64);
          v88 = v82 - v83 + (4 << v87) - 16;
          v89 = (__clz(v88) ^ 0x1F) - 1;
          v90 = ((v88 >> v89) & 1 | 2) << v89;
          v82 = ((v88 & ~(-1 << v87)) + v84 + ((((v88 >> v89) & 1 | (2 * (v89 - v87))) + 65534) << v87)) | ((v89 - v87) << 10);
          v85 = (v88 - v90) >> v87;
        }

        else
        {
          LODWORD(v85) = 0;
        }

        goto LABEL_126;
      }

      v97 = 4 * (v95 - v94);
      v98 = 266017486;
    }

    else
    {
      v97 = 4 * v96;
      v98 = 158663784;
    }

    v82 = (v98 >> v97) & 0xF;
    goto LABEL_117;
  }

  v117 = a9;
  v78 = a2;
LABEL_186:
  *a8 = v12 + v13 - v78;
  *a10 += (v117 - a9) >> 4;
  v109 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_240AF1664(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *i, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v12 = a2;
  v176 = *MEMORY[0x277D85DE8];
  v13 = *a9;
  v170 = a2 + result;
  v14 = a2 + result - 7;
  v155 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v153 = v14;
  if (*(a6 + 4) >= 9)
  {
    v15 = 512;
  }

  else
  {
    v15 = 64;
  }

  if (result < 9)
  {
    v156 = a10;
    v110 = a2;
    goto LABEL_247;
  }

  v168 = *(a6 + 16);
  v169 = (1 << *(a6 + 8)) - 16;
  v16 = v15 + a2;
  v161 = a6 + 637;
  v160 = a5 + 256;
  v167 = a6 + 704;
  v17 = *(a7 + 88);
  v151 = *(a6 + 104);
  v150 = v151 + 1;
  v152 = v15;
  v154 = 4 * v15;
  v18 = vdupq_n_s64(0x1FFFFuLL);
  v156 = a10;
  v158 = i;
  v163 = a6;
  do
  {
    if (v12 >= v169)
    {
      v19 = v169;
    }

    else
    {
      v19 = v12;
    }

    v20 = v12 + v168;
    if (v12 + v168 >= v169)
    {
      v20 = v169;
    }

    if (*(a6 + 632))
    {
      if (v12)
      {
        v21 = *(a3 + ((v12 - 1) & a4));
        if (v12 != 1)
        {
          v22 = *(a3 + ((v12 - 2) & a4));
LABEL_20:
          v173 = *(v161 + (*(v160 + v22) | *(a5 + v21)));
          goto LABEL_21;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = 0;
      goto LABEL_20;
    }

    v173 = 0;
    v21 = 0;
LABEL_21:
    result = v170 - v12;
    v23 = (a3 + (v12 & a4));
    v24 = *v23;
    v25 = *i;
    v171 = v21;
    if (v12 < v25)
    {
      goto LABEL_32;
    }

    v26 = (a3 + (a4 & (v12 - v25)));
    if (v24 != *v26)
    {
      goto LABEL_32;
    }

    if (result < 8)
    {
      v28 = 0;
      v29 = (a3 + (v12 & a4));
LABEL_235:
      v145 = result & 7;
      if ((result & 7) != 0)
      {
        v146 = v28 | v145;
        while (v26[v28] == *v29)
        {
          ++v29;
          ++v28;
          if (!--v145)
          {
            v28 = v146;
            break;
          }
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = result & 0xFFFFFFFFFFFFFFF8;
      v29 = v23 + (result & 0xFFFFFFFFFFFFFFF8);
      v30 = result >> 3;
      while (1)
      {
        v31 = v23[v27];
        v32 = *&v26[v27 * 8];
        if (v31 != v32)
        {
          break;
        }

        ++v27;
        if (!--v30)
        {
          goto LABEL_235;
        }
      }

      v28 = v27 * 8 + (__clz(__rbit64(v32 ^ v31)) >> 3);
    }

    if (v28 >= 4 && (v33 = 135 * v28 + 1935, v33 >= 0x7E5))
    {
      v24 = *(v23 + v28);
    }

    else
    {
LABEL_32:
      v25 = 0;
      v28 = 0;
      v33 = 2020;
    }

    v34 = 0;
    v35 = *(v167 + 8 * v173);
    v157 = *(a6 + 80);
    v36 = vdupq_n_s64((0xBD1E35A7BD000000 * *v23) >> 47);
    v174 = vandq_s8(vaddq_s64(v36, xmmword_240C112A0), v18);
    v175 = vandq_s8(vaddq_s64(v36, xmmword_240C112B0), v18);
    v37 = *(v174.i64 + (v12 & 0x18));
    do
    {
      v38 = *(v17 + 4 * v174.i64[v34]);
      v39 = v12 - v38;
      v40 = a3 + (v38 & a4);
      if (v24 == *(v40 + v28) && v12 != v38 && v39 <= v19)
      {
        if (result < 8)
        {
          v47 = 0;
          v48 = (a3 + (v12 & a4));
LABEL_53:
          if ((result & 7) != 0)
          {
            v50 = result & 7 | v47;
            v51 = result & 7;
            while (*(v40 + v47) == *v48)
            {
              ++v48;
              ++v47;
              if (!--v51)
              {
                v47 = v50;
                break;
              }
            }

            a6 = v163;
          }
        }

        else
        {
          v43 = 0;
          v44 = result >> 3;
          while (1)
          {
            v45 = v23[v43];
            v46 = *(v40 + v43 * 8);
            if (v45 != v46)
            {
              break;
            }

            ++v43;
            if (!--v44)
            {
              v47 = result & 0xFFFFFFFFFFFFFFF8;
              v48 = v23 + (result & 0xFFFFFFFFFFFFFFF8);
              goto LABEL_53;
            }
          }

          v47 = v43 * 8 + (__clz(__rbit64(v46 ^ v45)) >> 3);
        }

        if (v47 >= 4)
        {
          v49 = __clz(v39) ^ 0x1F;
          if (v33 < 135 * v47 - 30 * v49 + 1920)
          {
            v24 = *(v23 + v47);
            v25 = v39;
            v33 = 135 * v47 - 30 * v49 + 1920;
            v28 = v47;
          }
        }
      }

      ++v34;
    }

    while (v34 != 4);
    if (v33 == 2020)
    {
      v52 = *(a7 + 80);
      v54 = *(v52 + 40);
      v53 = *(v52 + 48);
      if (v53 < v54 >> 7)
      {
        goto LABEL_63;
      }

      v55 = ((506832829 * *v23) >> 17) & 0x7FFELL;
      v56 = *(v35 + 32);
      *(v52 + 40) = v54 + 1;
      v57 = *(v56 + v55);
      if (!*(v56 + v55) || result < v57)
      {
        goto LABEL_63;
      }

      v124 = *(*(v35 + 24) + 2 * v55);
      v125 = *(*v35 + 4 * v57 + 32);
      v126 = *(*v35 + 168) + v124 * *(v56 + v55);
      v127 = (v126 + v125);
      if (v57 < 8)
      {
        v28 = 0;
LABEL_241:
        v147 = v57 & 7;
        if ((v57 & 7) != 0)
        {
          v148 = v28 | v147;
          while (*(v23 + v28) == *v127)
          {
            ++v127;
            ++v28;
            if (!--v147)
            {
              v28 = v148;
              break;
            }
          }
        }
      }

      else
      {
        v128 = 0;
        v28 = v57 & 0xF8;
        v129 = (v126 + v28 + v125);
        while (1)
        {
          v130 = *&v127[v128];
          v131 = v23[v128 / 8];
          if (v130 != v131)
          {
            break;
          }

          v128 += 8;
          if (v28 == v128)
          {
            v127 = v129;
            goto LABEL_241;
          }
        }

        v28 = v128 + (__clz(__rbit64(v131 ^ v130)) >> 3);
      }

      if (!v28 || v28 + *(v35 + 12) <= v57 || (v25 = v150 + v20 + v124 + ((((*(v35 + 16) >> (6 * (v57 - v28))) & 0x3FLL) + 4 * (v57 - v28)) << *(*v35 + v57)), v25 > v157) || (v33 = 135 * v28 - 30 * (__clz(v25) ^ 0x1F) + 1920, v33 < 0x7E4))
      {
LABEL_63:
        *(v17 + 4 * v37) = v12;
LABEL_149:
        ++v13;
        v110 = v12 + 1;
        if (v12 + 1 <= v16)
        {
          i = v158;
        }

        else if (v110 <= v16 + v154)
        {
          v112 = v12 + 9;
          if (v12 + 9 >= v155)
          {
            v112 = v155;
          }

          for (i = v158; v110 < v112; v110 += 2)
          {
            *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v110 & a4))) >> 32) >> 15) + (v110 & 0x18)) & 0x1FFFF)) = v110;
            v13 += 2;
          }
        }

        else
        {
          v111 = v12 + 17;
          if (v12 + 17 >= v155)
          {
            v111 = v155;
          }

          for (i = v158; v110 < v111; v110 += 4)
          {
            *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v110 & a4))) >> 32) >> 15) + (v110 & 0x18)) & 0x1FFFF)) = v110;
            v13 += 4;
          }
        }

        goto LABEL_228;
      }

      v58 = v57 - v28;
      *(v52 + 48) = v53 + 1;
    }

    else
    {
      v58 = 0;
    }

    *(v17 + 4 * v37) = v12;
    if (v33 < 0x7E5)
    {
      goto LABEL_149;
    }

    v59 = 0;
    v165 = *v158;
    while (1)
    {
      v164 = v58;
      --result;
      v60 = v28 - 1;
      if (v28 - 1 >= result)
      {
        v60 = result;
      }

      if (*(a6 + 4) >= 5)
      {
        v61 = 0;
      }

      else
      {
        v61 = v60;
      }

      v62 = v12 + 1;
      if (v12 + 1 < v169)
      {
        v63 = v12 + 1;
      }

      else
      {
        v63 = v169;
      }

      v64 = v62 + v168;
      if (v62 + v168 >= v169)
      {
        v64 = v169;
      }

      v166 = v64;
      if (*(a6 + 632))
      {
        v173 = *(v161 + (*(v160 + v171) | *(a5 + *(a3 + (v12 & a4)))));
        v171 = *(a3 + (v12 & a4));
      }

      v65 = (a3 + (v62 & a4));
      v66 = *(v65 + v61);
      if (v62 < v165)
      {
        goto LABEL_90;
      }

      v67 = a3 + (a4 & (v62 - v165));
      if (v66 != *(v67 + v61))
      {
        goto LABEL_90;
      }

      if (result < 8)
      {
        v68 = 0;
        v70 = (a3 + (v62 & a4));
LABEL_139:
        v107 = result & 7;
        if ((result & 7) != 0)
        {
          do
          {
            if (*(v67 + v68) != *v70)
            {
              break;
            }

            v70 = (v70 + 1);
            ++v68;
            --v107;
          }

          while (v107);
        }
      }

      else
      {
        v68 = 0;
        v69 = result >> 3;
        v70 = (a3 + (v62 & a4));
        while (1)
        {
          v71 = *(v67 + v68);
          if (*v70 != v71)
          {
            break;
          }

          ++v70;
          v68 += 8;
          if (!--v69)
          {
            goto LABEL_139;
          }
        }

        v68 += __clz(__rbit64(v71 ^ *v70)) >> 3;
      }

      if (v68 >= 4 && (v72 = 135 * v68 + 1935, v72 >= 0x7E5))
      {
        v66 = *(v65 + v68);
        v61 = v68;
        v73 = v165;
      }

      else
      {
LABEL_90:
        v73 = 0;
        v72 = 2020;
      }

      v74 = 0;
      v75 = *(v167 + 8 * v173);
      v76 = vdupq_n_s64((0xBD1E35A7BD000000 * *v65) >> 47);
      v77 = vdupq_n_s64(0x1FFFFuLL);
      v174 = vandq_s8(vaddq_s64(v76, xmmword_240C112A0), v77);
      v175 = vandq_s8(vaddq_s64(v76, xmmword_240C112B0), v77);
      v172 = *(v174.i64 + (v62 & 0x18));
      do
      {
        v78 = *(v17 + 4 * v174.i64[v74]);
        v79 = v62 - v78;
        v80 = a3 + (v78 & a4);
        if (v66 == *(v80 + v61) && v62 != v78 && v79 <= v63)
        {
          if (result < 8)
          {
            v83 = 0;
            v85 = (a3 + (v62 & a4));
LABEL_111:
            if ((result & 7) != 0)
            {
              v88 = result & 7;
              do
              {
                if (*(v80 + v83) != *v85)
                {
                  break;
                }

                v85 = (v85 + 1);
                ++v83;
                --v88;
              }

              while (v88);
            }
          }

          else
          {
            v83 = 0;
            v84 = result >> 3;
            v85 = (a3 + (v62 & a4));
            while (1)
            {
              v86 = *(v80 + v83);
              if (*v85 != v86)
              {
                break;
              }

              ++v85;
              v83 += 8;
              if (!--v84)
              {
                goto LABEL_111;
              }
            }

            v83 += __clz(__rbit64(v86 ^ *v85)) >> 3;
          }

          if (v83 >= 4)
          {
            v87 = __clz(v79) ^ 0x1F;
            if (v72 < 135 * v83 - 30 * v87 + 1920)
            {
              v66 = *(v65 + v83);
              v61 = v83;
              v73 = v79;
              v72 = 135 * v83 - 30 * v87 + 1920;
            }
          }
        }

        ++v74;
      }

      while (v74 != 4);
      if (v72 == 2020)
      {
        v89 = *(a7 + 80);
        v90 = *(v89 + 40);
        v91 = *(v89 + 48);
        a6 = v163;
        if (v91 < v90 >> 7 || (v92 = ((506832829 * *v65) >> 17) & 0x7FFELL, v93 = *(v75 + 32), *(v89 + 40) = v90 + 1, v94 = *(v93 + v92), !*(v93 + v92)) || result < v94)
        {
LABEL_120:
          v95 = 0;
LABEL_121:
          v72 = 2020;
          goto LABEL_123;
        }

        v97 = *(*(v75 + 24) + 2 * v92);
        v98 = *(*v75 + 4 * v94 + 32);
        v99 = *(*v75 + 168) + v97 * v94;
        v100 = (v99 + v98);
        if (v94 < 8)
        {
          v102 = 0;
LABEL_144:
          v108 = v94 & 7;
          if ((v94 & 7) != 0)
          {
            v109 = v102 | v108;
            while (*(v65 + v102) == *v100)
            {
              ++v100;
              ++v102;
              if (!--v108)
              {
                v102 = v109;
                break;
              }
            }
          }
        }

        else
        {
          v101 = 0;
          v102 = v94 & 0xF8;
          v103 = (v99 + v102 + v98);
          while (1)
          {
            v104 = *&v100[v101];
            v105 = v65[v101 / 8];
            if (v104 != v105)
            {
              break;
            }

            v101 += 8;
            if (v102 == v101)
            {
              v100 = v103;
              goto LABEL_144;
            }
          }

          v102 = v101 + (__clz(__rbit64(v105 ^ v104)) >> 3);
        }

        v95 = 0;
        if (!v102 || v102 + *(v75 + 12) <= v94)
        {
          goto LABEL_121;
        }

        v106 = v150 + v166 + v97 + ((((*(v75 + 16) >> (6 * (v94 - v102))) & 0x3FLL) + 4 * (v94 - v102)) << *(*v75 + v94));
        if (v106 > v157)
        {
          goto LABEL_120;
        }

        v72 = 135 * v102 - 30 * (__clz(v106) ^ 0x1F) + 1920;
        if (v72 < 0x7E4)
        {
          goto LABEL_120;
        }

        v95 = v94 - v102;
        *(v89 + 48) = v91 + 1;
        v61 = v102;
        v73 = v106;
      }

      else
      {
        v95 = 0;
        a6 = v163;
      }

LABEL_123:
      *(v17 + 4 * v172) = v62;
      if (v72 < v33 + 175)
      {
        break;
      }

      ++v13;
      if (v59 <= 2)
      {
        v96 = v12 + 9;
        ++v59;
        v25 = v73;
        v33 = v72;
        v58 = v95;
        v28 = v61;
        ++v12;
        if (v96 < v170)
        {
          continue;
        }
      }

      goto LABEL_165;
    }

    v113 = v12 + v168;
    if (v12 + v168 >= v169)
    {
      v113 = v169;
    }

    v166 = v113;
    v73 = v25;
    v95 = v164;
    v61 = v28;
    v62 = v12;
LABEL_165:
    i = v158;
    if (v73 > v166 + v151)
    {
LABEL_166:
      v114 = v73 + 15;
      goto LABEL_167;
    }

    v115 = *v158;
    if (v73 == v115)
    {
      v114 = 0;
      goto LABEL_172;
    }

    v132 = v158[1];
    if (v73 == v132)
    {
      v114 = 1;
    }

    else
    {
      v133 = v73 + 3 - v115;
      if (v133 > 6)
      {
        v136 = v73 + 3 - v132;
        if (v136 > 6)
        {
          if (v73 == v158[2])
          {
            v114 = 2;
          }

          else
          {
            if (v73 != v158[3])
            {
              goto LABEL_166;
            }

            v114 = 3;
          }

          goto LABEL_167;
        }

        v134 = 4 * v136;
        v135 = 266017486;
      }

      else
      {
        v134 = 4 * v133;
        v135 = 158663784;
      }

      v114 = (v135 >> v134) & 0xF;
    }

LABEL_167:
    if (v73 <= v166 + v151 && v114)
    {
      v158[3] = v158[2];
      *(v158 + 1) = *v158;
      *v158 = v73;
    }

LABEL_172:
    *v156 = v13;
    *(v156 + 4) = v61 | (v95 << 25);
    v116 = *(a6 + 68);
    v117 = v116 + 16;
    if (v116 + 16 <= v114)
    {
      v119 = *(a6 + 64);
      v120 = v114 - v116 + (4 << v119) - 16;
      v121 = (__clz(v120) ^ 0x1F) - 1;
      result = ((v120 >> v121) & 1 | 2) << v121;
      v114 = ((v120 & ~(-1 << v119)) + v117 + ((((v120 >> v121) & 1 | (2 * (v121 - v119))) + 65534) << v119)) | ((v121 - v119) << 10);
      v118 = (v120 - result) >> v119;
    }

    else
    {
      LODWORD(v118) = 0;
    }

    *(v156 + 14) = v114;
    *(v156 + 8) = v118;
    if (v13 > 5)
    {
      if (v13 > 0x81)
      {
        if (v13 > 0x841)
        {
          if (v13 >> 1 >= 0xC21)
          {
            if (v13 < 0x5842)
            {
              LOWORD(v122) = 22;
            }

            else
            {
              LOWORD(v122) = 23;
            }
          }

          else
          {
            LOWORD(v122) = 21;
          }
        }

        else
        {
          v122 = (__clz(v13 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v123 = (__clz(v13 - 2) ^ 0x1F) - 1;
        v122 = ((v13 - 2) >> v123) + 2 * v123 + 2;
      }
    }

    else
    {
      LOWORD(v122) = v13;
    }

    v137 = v95 + v61;
    if ((v95 + v61) > 9)
    {
      if (v137 > 0x85)
      {
        if (v137 > 0x845)
        {
          LOWORD(v137) = 23;
        }

        else
        {
          v137 = (__clz(v137 - 70) ^ 0x1F) + 12;
        }
      }

      else
      {
        v138 = v137 - 6;
        v139 = (__clz(v138) ^ 0x1F) - 1;
        v137 = (v138 >> v139) + 2 * v139 + 4;
      }
    }

    else
    {
      LOWORD(v137) = v137 - 2;
    }

    v140 = v137 & 7 | (8 * (v122 & 7));
    if ((v114 & 0x3FF) != 0 || v122 > 7u || v137 > 0xFu)
    {
      v142 = 3 * (v122 >> 3) + ((v137 & 0xFFF8) >> 3);
      v141 = ((((0x520D40u >> (2 * v142)) & 0xC0) + (v142 << 6)) | v140) + 64;
    }

    else
    {
      LOWORD(v141) = v140 | 0x40;
      if ((v137 & 0xFFF8) == 0)
      {
        LOWORD(v141) = v137 & 7 | (8 * (v122 & 7));
      }
    }

    *(v156 + 12) = v141;
    *a12 += v13;
    v143 = v62 + 2;
    v110 = v62 + v61;
    v144 = v153;
    if (v62 + v61 < v153)
    {
      v144 = v62 + v61;
    }

    if (v73 < v61 >> 2)
    {
      if (v143 <= v110 - 4 * v73)
      {
        v143 = v110 - 4 * v73;
      }

      if (v144 < v143)
      {
        v143 = v144;
      }
    }

    v16 = v152 + 2 * v61 + v62;
    v156 += 16;
    if (v143 < v144)
    {
      do
      {
        *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v143 & a4))) >> 32) >> 15) + (v143 & 0x18)) & 0x1FFFF)) = v143;
        ++v143;
      }

      while (v144 != v143);
    }

    v13 = 0;
LABEL_228:
    v12 = v110;
  }

  while (v110 + 8 < v170);
LABEL_247:
  *a9 = v13 + v170 - v110;
  *a11 += (v156 - a10) >> 4;
  v149 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_240AF257C(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v245 = *(a6 + 16);
  v12 = *a9;
  v247 = a2 + result;
  v226 = a2 + result - 3;
  if (result <= 3)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 + result - 3;
  }

  v14 = *(a6 + 8);
  v15 = 512;
  if (*(a6 + 4) < 9)
  {
    v15 = 64;
  }

  v230 = v15;
  v228 = v13;
  v229 = *(a6 + 104);
  v16 = *(a7 + 108);
  if (v16 >= 5)
  {
    v17 = vld1q_dup_f32(a8);
    *(a8 + 1) = vaddq_s32(v17, xmmword_240C11260);
    *(a8 + 4) = vadd_s32(*v17.i8, 0x3FFFFFFFDLL);
    if (v16 >= 0xB)
    {
      v18 = (a8 + 1);
      v19 = vld1q_dup_f32(v18);
      *(a8 + 10) = vaddq_s32(v19, xmmword_240C11260);
      *(a8 + 7) = vadd_s32(*v19.i8, 0x3FFFFFFFDLL);
    }
  }

  if (result < 5)
  {
    v231 = a10;
    v179 = a2;
    goto LABEL_315;
  }

  result = v15 + a2;
  v244 = (1 << v14) - 16;
  v234 = a6 + 637;
  v233 = a5 + 256;
  v243 = a6 + 704;
  v21 = *(a7 + 120);
  v20 = *(a7 + 128);
  v232 = v229 + 1;
  v227 = 4 * v15;
  v231 = a10;
  v259 = v21;
  v246 = v20;
  v264 = a3;
  v242 = a6;
  do
  {
    v22 = v244;
    if (a2 >= v244)
    {
      v23 = v244;
    }

    else
    {
      v23 = a2;
    }

    if (a2 + v245 < v244)
    {
      v22 = a2 + v245;
    }

    v260 = v12;
    v261 = result;
    v255 = v22;
    if (*(a6 + 632))
    {
      if (a2)
      {
        v24 = *(a3 + ((a2 - 1) & a4));
        if (a2 != 1)
        {
          v25 = *(a3 + ((a2 - 2) & a4));
LABEL_23:
          v249 = v24;
          v26 = *(v234 + (*(v233 + v25) | *(a5 + v24)));
          goto LABEL_24;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = 0;
      goto LABEL_23;
    }

    v26 = 0;
    v249 = 0;
LABEL_24:
    v250 = v26;
    v27 = *(v243 + 8 * v26);
    v28 = v247 - a2;
    v253 = *(a6 + 80);
    v29 = a2 & a4;
    v30 = *(a7 + 108);
    if (v30)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v251 = 0;
      v34 = (a3 + v29);
      v35 = a3 + v29 + (v28 & 0xFFFFFFFFFFFFFFF8);
      v36 = 2020;
      v37 = 2020;
      while (1)
      {
        v38 = a8[v32];
        v39 = a2 - v38;
        v40 = v23 < v38 || v39 >= a2;
        v41 = v39 & a4;
        v42 = v31 + v29;
        v43 = v40 || v42 > a4;
        v44 = v41 + v31;
        v45 = v43 || v44 > a4;
        if (!v45 && *(a3 + v42) == *(a3 + v44))
        {
          break;
        }

LABEL_37:
        if (++v32 == v30)
        {
          goto LABEL_65;
        }
      }

      v46 = a3 + v41;
      if (v28 < 8)
      {
        v51 = 0;
        v52 = v34;
LABEL_58:
        if ((v28 & 7) == 0)
        {
          goto LABEL_47;
        }

        v55 = v28 & 7 | v51;
        v56 = v28 & 7;
        while (*(v46 + v51) == *v52)
        {
          ++v52;
          ++v51;
          if (!--v56)
          {
            v51 = v55;
            break;
          }
        }

        v21 = v259;
        v20 = v246;
      }

      else
      {
        v47 = 0;
        v48 = (v247 - a2) >> 3;
        while (1)
        {
          v49 = *&v34[v47];
          v50 = *(v46 + v47);
          if (v49 != v50)
          {
            break;
          }

          v47 += 8;
          if (!--v48)
          {
            v51 = v28 & 0xFFFFFFFFFFFFFFF8;
            v52 = v35;
            a3 = v264;
            goto LABEL_58;
          }
        }

        v51 = v47 + (__clz(__rbit64(v50 ^ v49)) >> 3);
      }

      a3 = v264;
LABEL_47:
      if (v51 > 2 || v32 <= 1 && v51 == 2)
      {
        v53 = 135 * v51 + 1935;
        if (v36 < v53)
        {
          if (v32)
          {
            v53 -= ((0x1CA10u >> (v32 & 0xE)) & 0xE) + 39;
          }

          v54 = v251;
          if (v36 < v53)
          {
            v54 = a8[v32];
          }

          v251 = v54;
          if (v36 < v53)
          {
            v37 = v53;
            v33 = v51;
            v31 = v51;
            v36 = v53;
          }
        }
      }

      goto LABEL_37;
    }

    v251 = 0;
    v33 = 0;
    v31 = 0;
    v37 = 2020;
    v36 = 2020;
LABEL_65:
    v57 = (a3 + v29);
    v58 = *(a7 + 100);
    v59 = (506832829 * *(a3 + v29)) >> *(a7 + 96);
    v60 = v20 + 4 * (v59 << *(a7 + 104));
    v61 = *(v21 + 2 * v59);
    v241 = *(a7 + 88);
    if (v61 >= v241)
    {
      v62 = v61 - v241;
    }

    else
    {
      v62 = 0;
    }

    if (v62 < v61)
    {
      v63 = *(v21 + 2 * v59);
      do
      {
        v64 = *(v60 + 4 * (--v63 & v58));
        v65 = a2 - v64;
        if (a2 - v64 > v23)
        {
          break;
        }

        if (v31 + v29 <= a4)
        {
          v66 = v64 & a4;
          if (v66 + v31 <= a4 && *(v264 + v31 + v29) == *(v264 + v66 + v31))
          {
            v67 = v264 + v66;
            if (v28 < 8)
            {
              v73 = 0;
              v74 = v57;
LABEL_86:
              if ((v28 & 7) != 0)
              {
                v257 = v37;
                v76 = v28 & 7 | v73;
                v77 = v28 & 7;
                while (*(v67 + v73) == *v74)
                {
                  ++v74;
                  ++v73;
                  if (!--v77)
                  {
                    v73 = v76;
                    break;
                  }
                }

                v37 = v257;
              }
            }

            else
            {
              v68 = v37;
              v69 = 0;
              v70 = (v247 - a2) >> 3;
              while (1)
              {
                v71 = *&v57[v69];
                v72 = *(v67 + v69);
                if (v71 != v72)
                {
                  break;
                }

                v69 += 8;
                if (!--v70)
                {
                  v73 = v28 & 0xFFFFFFFFFFFFFFF8;
                  v74 = &v57[v28 & 0xFFFFFFFFFFFFFFF8];
                  v37 = v68;
                  goto LABEL_86;
                }
              }

              v73 = v69 + (__clz(__rbit64(v72 ^ v71)) >> 3);
              v37 = v68;
            }

            if (v73 >= 4)
            {
              v75 = __clz(v65) ^ 0x1F;
              if (v36 < 135 * v73 - 30 * v75 + 1920)
              {
                v251 = v65;
                v37 = 135 * v73 - 30 * v75 + 1920;
                v33 = v73;
                v31 = v73;
                v36 = v37;
              }
            }
          }
        }
      }

      while (v63 > v62);
    }

    *(v60 + 4 * (v58 & v61)) = a2;
    v21 = v259;
    *(v259 + 2 * v59) = v61 + 1;
    if (v37 == 2020)
    {
      v78 = *(a7 + 112);
      v80 = *(v78 + 40);
      v79 = *(v78 + 48);
      v20 = v246;
      v81 = v251;
      a3 = v264;
      if (v79 < v80 >> 7)
      {
        goto LABEL_234;
      }

      v240 = 0;
      v82 = ((506832829 * *v57) >> 17) & 0x7FFE;
      v83 = *(v27 + 32);
      v84 = 1;
      v85 = v33;
      v37 = 2020;
      do
      {
        v86 = v84;
        *(v78 + 40) = ++v80;
        v87 = *(v83 + v82);
        if (*(v83 + v82) && v28 >= v87)
        {
          v90 = *(*v27 + 4 * v87 + 32);
          v91 = *(*v27 + 168) + *(*(v27 + 24) + 2 * v82) * *(v83 + v82);
          v92 = (v91 + v90);
          if (v87 < 8)
          {
            v94 = 0;
LABEL_114:
            v99 = v87 & 7;
            if ((v87 & 7) != 0)
            {
              v100 = v94 | v99;
              while (v57[v94] == *v92)
              {
                ++v92;
                ++v94;
                if (!--v99)
                {
                  v94 = v100;
                  break;
                }
              }
            }
          }

          else
          {
            v93 = 0;
            v94 = v87 & 0xF8;
            v95 = (v91 + v94 + v90);
            while (1)
            {
              v96 = *&v92[v93];
              v97 = *&v57[v93];
              if (v96 != v97)
              {
                break;
              }

              v93 += 8;
              if (v94 == v93)
              {
                v92 = v95;
                goto LABEL_114;
              }
            }

            v94 = v93 + (__clz(__rbit64(v97 ^ v96)) >> 3);
          }

          if (v94 && v94 + *(v27 + 12) > v87 && (v88 = v232 + v255 + *(*(v27 + 24) + 2 * v82) + ((((*(v27 + 16) >> (6 * (v87 - v94))) & 0x3FLL) + 4 * (v87 - v94)) << *(*v27 + v87)), v88 <= v253) && (v98 = 135 * v94 - 30 * (__clz(v88) ^ 0x1F) + 1920, v98 >= v37))
          {
            v89 = v94;
            v240 = v87 - v94;
            *(v78 + 48) = ++v79;
            v37 = v98;
          }

          else
          {
            v88 = v81;
            v89 = v85;
          }

          a3 = v264;
        }

        else
        {
          v88 = v81;
          v89 = v85;
        }

        v84 = 0;
        ++v82;
        v85 = v89;
        v81 = v88;
      }

      while ((v86 & 1) != 0);
    }

    else
    {
      v240 = 0;
      v20 = v246;
      v89 = v33;
      v88 = v251;
      a3 = v264;
    }

    if (v37 < 0x7E5)
    {
LABEL_234:
      result = v261;
      v12 = v260 + 1;
      v179 = a2 + 1;
      if (a2 + 1 <= v261)
      {
        a6 = v242;
      }

      else
      {
        a6 = v242;
        if (v179 <= v261 + v227)
        {
          v202 = a2 + 9;
          if (a2 + 9 >= v226)
          {
            v202 = v226;
          }

          if (v179 < v202)
          {
            v203 = *(a7 + 96);
            v204 = *(a7 + 100);
            v205 = *(a7 + 104);
            do
            {
              v206 = (506832829 * *(a3 + (v179 & a4))) >> v203;
              v207 = *(v259 + 2 * v206);
              *(v20 + 4 * (v204 & v207) + 4 * (v206 << v205)) = v179;
              *(v259 + 2 * v206) = v207 + 1;
              v12 += 2;
              v179 += 2;
            }

            while (v179 < v202);
          }
        }

        else
        {
          v180 = a2 + 17;
          if (a2 + 17 >= v247 - 4)
          {
            v180 = v247 - 4;
          }

          if (v179 < v180)
          {
            v181 = *(a7 + 96);
            v182 = *(a7 + 100);
            v183 = *(a7 + 104);
            do
            {
              v184 = (506832829 * *(a3 + (v179 & a4))) >> v181;
              v185 = *(v259 + 2 * v184);
              *(v20 + 4 * (v182 & v185) + 4 * (v184 << v183)) = v179;
              *(v259 + 2 * v184) = v185 + 1;
              v12 += 4;
              v179 += 4;
            }

            while (v179 < v180);
          }
        }
      }

      goto LABEL_308;
    }

    v101 = 0;
    v102 = *(a7 + 108);
    v104 = *(a7 + 96);
    v103 = *(a7 + 100);
    v237 = *(a7 + 96);
    v238 = *(a7 + 104);
    a6 = v242;
    v105 = v247 - a2;
    v106 = a8;
    while (1)
    {
      v254 = v101;
      v107 = v105 - 1;
      v108 = v89 - 1;
      if (v89 - 1 >= v107)
      {
        v108 = v107;
      }

      if (*(a6 + 4) >= 5)
      {
        v109 = 0;
      }

      else
      {
        v109 = v108;
      }

      v110 = a2 + 1;
      if (a2 + 1 < v244)
      {
        v111 = a2 + 1;
      }

      else
      {
        v111 = v244;
      }

      v112 = v110 + v245;
      if (v110 + v245 >= v244)
      {
        v112 = v244;
      }

      v248 = v112;
      v258 = v37;
      if (*(a6 + 632))
      {
        v113 = *(v234 + (*(v233 + v249) | *(a5 + *(a3 + (a2 & a4)))));
        v249 = *(a3 + (a2 & a4));
      }

      else
      {
        v113 = v250;
      }

      v256 = a2;
      v250 = v113;
      v252 = v88;
      v236 = v89;
      v114 = *(v243 + 8 * v113);
      v115 = v110 & a4;
      v262 = v107 >> 3;
      if (v102)
      {
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v119 = (a3 + v115);
        v120 = v107;
        v121 = v107 & 7;
        v122 = 2020;
        v123 = 2020;
        do
        {
          v124 = v106[v116];
          v125 = v110 - v124;
          v126 = v111 < v124 || v125 >= v110;
          v127 = v125 & a4;
          v128 = v109 + v115;
          v129 = v126 || v128 > a4;
          v130 = v127 + v109;
          v131 = v129 || v130 > a4;
          if (!v131 && *(a3 + v128) == *(a3 + v130))
          {
            v132 = a3 + v127;
            if (v120 < 8)
            {
              v133 = 0;
              v135 = v119;
LABEL_167:
              if (v121)
              {
                v138 = v121;
                do
                {
                  if (*(v132 + v133) != *v135)
                  {
                    break;
                  }

                  v135 = (v135 + 1);
                  ++v133;
                  --v138;
                }

                while (v138);
              }
            }

            else
            {
              v133 = 0;
              v134 = v262;
              v135 = v119;
              while (1)
              {
                v136 = *(v132 + v133);
                if (*v135 != v136)
                {
                  break;
                }

                ++v135;
                v133 += 8;
                --v134;
                a3 = v264;
                if (!v134)
                {
                  goto LABEL_167;
                }
              }

              v133 += __clz(__rbit64(v136 ^ *v135)) >> 3;
              a3 = v264;
            }

            if (v133 > 2 || v116 <= 1 && v133 == 2)
            {
              v137 = 135 * v133 + 1935;
              if (v122 < v137)
              {
                if (v116)
                {
                  v137 -= ((0x1CA10u >> (v116 & 0xE)) & 0xE) + 39;
                }

                if (v122 < v137)
                {
                  v118 = v133;
                  v117 = v106[v116];
                  v123 = v137;
                  v109 = v133;
                  v122 = v137;
                }
              }
            }
          }

          ++v116;
        }

        while (v116 != v102);
      }

      else
      {
        v120 = v107;
        v118 = 0;
        v117 = 0;
        v123 = 2020;
        v122 = 2020;
      }

      v139 = (a3 + v115);
      v140 = (506832829 * *(a3 + v115)) >> v237;
      v141 = v246 + 4 * (v140 << v238);
      v142 = *(v21 + 2 * v140);
      if (v142 >= v241)
      {
        v143 = v142 - v241;
      }

      else
      {
        v143 = 0;
      }

      if (v143 < v142)
      {
        v144 = v120 & 7;
        v145 = v142;
        do
        {
          v146 = *(v141 + 4 * (--v145 & v103));
          v147 = v110 - v146;
          if (v110 - v146 > v111)
          {
            break;
          }

          if (v109 + v115 <= a4)
          {
            v148 = v146 & a4;
            if (v148 + v109 <= a4 && *(a3 + v109 + v115) == *(a3 + v148 + v109))
            {
              v149 = a3 + v148;
              if (v120 < 8)
              {
                v150 = 0;
                v152 = v139;
LABEL_196:
                if (v144)
                {
                  v155 = v144;
                  do
                  {
                    if (*(v149 + v150) != *v152)
                    {
                      break;
                    }

                    v152 = (v152 + 1);
                    ++v150;
                    --v155;
                  }

                  while (v155);
                }
              }

              else
              {
                v150 = 0;
                v151 = v262;
                v152 = v139;
                while (1)
                {
                  v153 = *(v149 + v150);
                  if (*v152 != v153)
                  {
                    break;
                  }

                  ++v152;
                  v150 += 8;
                  --v151;
                  v144 = v120 & 7;
                  if (!v151)
                  {
                    goto LABEL_196;
                  }
                }

                v150 += __clz(__rbit64(v153 ^ *v152)) >> 3;
              }

              if (v150 < 4)
              {
                v144 = v120 & 7;
                a3 = v264;
              }

              else
              {
                v154 = __clz(v147) ^ 0x1F;
                v144 = v120 & 7;
                a3 = v264;
                if (v122 < 135 * v150 - 30 * v154 + 1920)
                {
                  v118 = v150;
                  v117 = v147;
                  v123 = 135 * v150 - 30 * v154 + 1920;
                  v109 = v150;
                  v122 = v123;
                }
              }
            }
          }
        }

        while (v145 > v143);
      }

      *(v141 + 4 * (v103 & v142)) = v110;
      *(v259 + 2 * v140) = v142 + 1;
      if (v123 == 2020)
      {
        v156 = *(a7 + 112);
        v157 = *(v156 + 40);
        v158 = *(v156 + 48);
        v159 = v256;
        v105 = v120;
        v160 = 0;
        if (v158 < v157 >> 7)
        {
          v161 = 2020;
          goto LABEL_205;
        }

        v162 = ((506832829 * *v139) >> 17) & 0x7FFE;
        v163 = *(v114 + 32);
        v164 = 1;
        v161 = 2020;
        v165 = v117;
        v166 = v118;
        while (1)
        {
          v167 = v164;
          *(v156 + 40) = ++v157;
          v168 = *(v163 + v162);
          if (!*(v163 + v162) || v120 < v168)
          {
            goto LABEL_213;
          }

          v169 = *(*v114 + 4 * v168 + 32);
          v170 = *(*v114 + 168) + *(*(v114 + 24) + 2 * v162) * *(v163 + v162);
          v171 = (v170 + v169);
          if (v168 >= 8)
          {
            break;
          }

          v118 = 0;
LABEL_229:
          v177 = v168 & 7;
          if ((v168 & 7) != 0)
          {
            v178 = v118 | v177;
            while (*(v139 + v118) == *v171)
            {
              ++v171;
              ++v118;
              if (!--v177)
              {
                v118 = v178;
                break;
              }
            }

LABEL_222:
            a3 = v264;
          }

          if (v118)
          {
            if (v118 + *(v114 + 12) > v168)
            {
              v117 = v232 + v248 + *(*(v114 + 24) + 2 * v162) + ((((*(v114 + 16) >> (6 * (v168 - v118))) & 0x3FLL) + 4 * (v168 - v118)) << *(*v114 + v168));
              if (v117 <= v253)
              {
                v176 = 135 * v118 - 30 * (__clz(v117) ^ 0x1F) + 1920;
                if (v176 >= v161)
                {
                  v160 = v168 - v118;
                  *(v156 + 48) = ++v158;
                  v161 = v176;
                  goto LABEL_214;
                }
              }
            }
          }

LABEL_213:
          v118 = v166;
          v117 = v165;
LABEL_214:
          v164 = 0;
          ++v162;
          v165 = v117;
          v166 = v118;
          if ((v167 & 1) == 0)
          {
            goto LABEL_205;
          }
        }

        v172 = 0;
        v118 = v168 & 0xF8;
        v173 = (v170 + v118 + v169);
        while (1)
        {
          v174 = *&v171[v172];
          v175 = *&v139[v172 / 4];
          if (v174 != v175)
          {
            break;
          }

          v172 += 8;
          if (v118 == v172)
          {
            v171 = v173;
            a3 = v264;
            goto LABEL_229;
          }
        }

        v118 = v172 + (__clz(__rbit64(v175 ^ v174)) >> 3);
        goto LABEL_222;
      }

      v161 = v123;
      v160 = 0;
      v159 = v256;
      v105 = v120;
LABEL_205:
      if (v161 < v258 + 175)
      {
        break;
      }

      ++v260;
      a6 = v242;
      if (v254 > 2)
      {
        goto LABEL_246;
      }

      v101 = v254 + 1;
      v88 = v117;
      v37 = v161;
      v240 = v160;
      v89 = v118;
      a2 = v110;
      v40 = v159 + 5 >= v247;
      v21 = v259;
      v106 = a8;
      if (v40)
      {
        goto LABEL_247;
      }
    }

    v186 = v159 + v245;
    if (v159 + v245 >= v244)
    {
      v186 = v244;
    }

    v248 = v186;
    v117 = v252;
    v160 = v240;
    v118 = v236;
    v110 = v159;
    a6 = v242;
LABEL_246:
    v21 = v259;
    v106 = a8;
LABEL_247:
    v20 = v246;
    if (v117 > v248 + v229)
    {
LABEL_248:
      v187 = v117 + 15;
      goto LABEL_249;
    }

    v192 = *v106;
    if (v117 == v192)
    {
      v187 = 0;
      goto LABEL_256;
    }

    v208 = v106[1];
    if (v117 == v208)
    {
      v187 = 1;
    }

    else
    {
      v209 = v117 + 3 - v192;
      if (v209 > 6)
      {
        v212 = v117 + 3 - v208;
        if (v212 > 6)
        {
          if (v117 == v106[2])
          {
            v187 = 2;
          }

          else
          {
            if (v117 != v106[3])
            {
              goto LABEL_248;
            }

            v187 = 3;
          }

          goto LABEL_249;
        }

        v210 = 4 * v212;
        v211 = 266017486;
      }

      else
      {
        v210 = 4 * v209;
        v211 = 158663784;
      }

      v187 = (v211 >> v210) & 0xF;
    }

LABEL_249:
    if (v117 <= v248 + v229)
    {
      if (v187)
      {
        v106[3] = v106[2];
        v188 = *v106;
        *(v106 + 1) = *v106;
        *v106 = v117;
        v189 = *(a7 + 108);
        if (v189 >= 5)
        {
          v190 = vdupq_n_s32(v117);
          *(v106 + 1) = vaddq_s32(v190, xmmword_240C11260);
          *(v106 + 4) = vadd_s32(*v190.i8, 0x3FFFFFFFDLL);
          if (v189 >= 0xB)
          {
            v191 = vdupq_lane_s32(v188, 0);
            *(v106 + 10) = vaddq_s32(v191, xmmword_240C11260);
            *(v106 + 7) = vadd_s32(*v191.i8, 0x3FFFFFFFDLL);
          }
        }
      }
    }

LABEL_256:
    *v231 = v260;
    *(v231 + 4) = v118 | (v160 << 25);
    v193 = *(a6 + 68);
    v194 = v193 + 16;
    if (v193 + 16 <= v187)
    {
      v196 = *(a6 + 64);
      v197 = v187 - v193 + (4 << v196) - 16;
      v198 = (__clz(v197) ^ 0x1F) - 1;
      v199 = ((v197 >> v198) & 1 | 2) << v198;
      v187 = ((v197 & ~(-1 << v196)) + v194 + ((((v197 >> v198) & 1 | (2 * (v198 - v196))) + 65534) << v196)) | ((v198 - v196) << 10);
      v195 = (v197 - v199) >> v196;
    }

    else
    {
      LODWORD(v195) = 0;
    }

    *(v231 + 14) = v187;
    *(v231 + 8) = v195;
    if (v260 > 5)
    {
      if (v260 > 0x81)
      {
        if (v260 > 0x841)
        {
          if (v260 >> 1 >= 0xC21)
          {
            if (v260 < 0x5842)
            {
              LOWORD(v200) = 22;
            }

            else
            {
              LOWORD(v200) = 23;
            }
          }

          else
          {
            LOWORD(v200) = 21;
          }
        }

        else
        {
          v200 = (__clz(v260 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v201 = __clz(v260 - 2);
        v200 = ((v260 - 2) >> ((v201 ^ 0x1F) - 1)) + 2 * ((v201 ^ 0x1F) - 1) + 2;
      }
    }

    else
    {
      LOWORD(v200) = v260;
    }

    v213 = v160 + v118;
    if ((v160 + v118) > 9)
    {
      if (v213 > 0x85)
      {
        if (v213 > 0x845)
        {
          LOWORD(v213) = 23;
        }

        else
        {
          v213 = (__clz(v213 - 70) ^ 0x1F) + 12;
        }
      }

      else
      {
        v214 = v213 - 6;
        v215 = (__clz(v214) ^ 0x1F) - 1;
        v213 = (v214 >> v215) + 2 * v215 + 4;
      }
    }

    else
    {
      LOWORD(v213) = v213 - 2;
    }

    v216 = v213 & 7 | (8 * (v200 & 7));
    if ((v187 & 0x3FF) != 0 || v200 > 7u || v213 > 0xFu)
    {
      v218 = 3 * (v200 >> 3) + ((v213 & 0xFFF8) >> 3);
      v217 = ((((0x520D40u >> (2 * v218)) & 0xC0) + (v218 << 6)) | v216) + 64;
    }

    else
    {
      LOWORD(v217) = v216 | 0x40;
      if ((v213 & 0xFFF8) == 0)
      {
        LOWORD(v217) = v213 & 7 | (8 * (v200 & 7));
      }
    }

    *(v231 + 12) = v217;
    v219 = v228;
    *a12 += v260;
    v220 = v110 + 2;
    v179 = v110 + v118;
    if (v110 + v118 < v228)
    {
      v219 = v110 + v118;
    }

    if (v117 < v118 >> 2)
    {
      if (v220 <= v179 - 4 * v117)
      {
        v220 = v179 - 4 * v117;
      }

      if (v219 < v220)
      {
        v220 = v219;
      }
    }

    result = v230 + 2 * v118 + v110;
    v231 += 16;
    if (v220 < v219)
    {
      v221 = *(a7 + 96);
      v222 = *(a7 + 100);
      v223 = *(a7 + 104);
      do
      {
        v224 = (506832829 * *(a3 + (v220 & a4))) >> v221;
        v225 = *(v21 + 2 * v224);
        *(v246 + 4 * (v222 & v225) + 4 * (v224 << v223)) = v220;
        *(v21 + 2 * v224) = v225 + 1;
        ++v220;
      }

      while (v219 != v220);
    }

    v12 = 0;
LABEL_308:
    a2 = v179;
  }

  while (v179 + 4 < v247);
LABEL_315:
  *a9 = v12 + v247 - v179;
  *a11 += (v231 - a10) >> 4;
  return result;
}

unint64_t sub_240AF3840(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v12 = a2;
  v230 = *(a6 + 16);
  v13 = *a9;
  v233 = a2 + result;
  v14 = a2 + result - 7;
  v212 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v213 = v14;
  v15 = *(a6 + 8);
  v16 = 512;
  if (*(a6 + 4) < 9)
  {
    v16 = 64;
  }

  v215 = v16;
  v214 = *(a6 + 104);
  v17 = *(a7 + 120);
  if (v17 >= 5)
  {
    v18 = vld1q_dup_f32(a8);
    *(a8 + 1) = vaddq_s32(v18, xmmword_240C11260);
    *(a8 + 4) = vadd_s32(*v18.i8, 0x3FFFFFFFDLL);
    if (v17 >= 0xB)
    {
      v19 = (a8 + 1);
      v20 = vld1q_dup_f32(v19);
      *(a8 + 10) = vaddq_s32(v20, xmmword_240C11260);
      *(a8 + 7) = vadd_s32(*v20.i8, 0x3FFFFFFFDLL);
    }
  }

  if (result >= 9)
  {
    v21 = v16 + a2;
    v229 = (1 << v15) - 16;
    v219 = a6 + 637;
    v218 = a5 + 256;
    v228 = a6 + 704;
    v22 = *(a7 + 136);
    v216 = v214 + 1;
    v211 = 4 * v16;
    v217 = a10;
    v244 = v22;
    v227 = a6;
    v231 = *(a7 + 104);
    v232 = *(a7 + 144);
    while (1)
    {
      if (v12 >= v229)
      {
        v23 = v229;
      }

      else
      {
        v23 = v12;
      }

      v24 = v12 + v230;
      if (v12 + v230 >= v229)
      {
        v24 = v229;
      }

      v242 = v24;
      if (!*(a6 + 632))
      {
        v27 = 0;
        v236 = 0;
        goto LABEL_23;
      }

      if (!v12)
      {
        break;
      }

      v25 = *(a3 + ((v12 - 1) & a4));
      if (v12 == 1)
      {
        goto LABEL_21;
      }

      v26 = *(a3 + ((v12 - 2) & a4));
LABEL_22:
      v236 = v25;
      v27 = *(v219 + (*(v218 + v26) | *(a5 + v25)));
LABEL_23:
      v245 = v13;
      v247 = v21;
      v237 = v27;
      v28 = *(v228 + 8 * v27);
      v29 = v233 - v12;
      v240 = *(a6 + 80);
      v30 = v12 & a4;
      v31 = *(a7 + 120);
      if (v31)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v238 = 0;
        v35 = 2020;
        v36 = 2020;
        do
        {
          v37 = a8[v33];
          v38 = v12 - v37;
          v39 = v23 < v37 || v38 >= v12;
          v40 = v38 & a4;
          v41 = v32 + v30;
          v42 = v39 || v41 > a4;
          v43 = v40 + v32;
          v44 = v42 || v43 > a4;
          if (!v44 && *(a3 + v41) == *(a3 + v43))
          {
            v45 = a3 + v40;
            if (v29 < 8)
            {
              v50 = 0;
              v51 = (a3 + v30);
LABEL_56:
              if ((v29 & 7) != 0)
              {
                v54 = v29 & 7 | v50;
                v55 = v29 & 7;
                while (*(v45 + v50) == *v51)
                {
                  ++v51;
                  ++v50;
                  if (!--v55)
                  {
                    v50 = v54;
                    break;
                  }
                }
              }
            }

            else
            {
              v46 = 0;
              v47 = (v233 - v12) >> 3;
              while (1)
              {
                v48 = *(a3 + v30 + v46);
                v49 = *(v45 + v46);
                if (v48 != v49)
                {
                  break;
                }

                v46 += 8;
                if (!--v47)
                {
                  v50 = v29 & 0xFFFFFFFFFFFFFFF8;
                  v51 = (a3 + v30 + (v29 & 0xFFFFFFFFFFFFFFF8));
                  goto LABEL_56;
                }
              }

              v50 = v46 + (__clz(__rbit64(v49 ^ v48)) >> 3);
            }

            if (v50 > 2 || v33 <= 1 && v50 == 2)
            {
              v52 = 135 * v50 + 1935;
              if (v35 < v52)
              {
                if (v33)
                {
                  v52 -= ((0x1CA10u >> (v33 & 0xE)) & 0xE) + 39;
                }

                v53 = v238;
                if (v35 < v52)
                {
                  v53 = a8[v33];
                }

                v238 = v53;
                if (v35 < v52)
                {
                  v36 = v52;
                  v34 = v50;
                  v32 = v50;
                  v35 = v52;
                }
              }
            }
          }

          ++v33;
        }

        while (v33 != v31);
      }

      else
      {
        v238 = 0;
        v34 = 0;
        v32 = 0;
        v36 = 2020;
        v35 = 2020;
      }

      v56 = (a3 + v30);
      v57 = (0x1FE35A7BD3579BD3 * (*(a3 + v30) & v231)) >> *(a7 + 96);
      v58 = *(a7 + 112);
      v59 = v232 + 4 * (v57 << *(a7 + 116));
      v60 = *(v22 + 2 * v57);
      v226 = *(a7 + 88);
      result = v60 - v226;
      if (v60 >= v226)
      {
        v61 = v60 - v226;
      }

      else
      {
        v61 = 0;
      }

      if (v61 < v60)
      {
        result = v29 & 7;
        v62 = *(v22 + 2 * v57);
        while (1)
        {
          v63 = *(v59 + 4 * (--v62 & v58));
          v64 = v12 - v63;
          if (v12 - v63 > v23)
          {
            goto LABEL_90;
          }

          if (v32 + v30 <= a4)
          {
            v65 = v63 & a4;
            if (v65 + v32 <= a4 && *(a3 + v32 + v30) == *(a3 + v65 + v32))
            {
              break;
            }
          }

LABEL_82:
          if (v62 <= v61)
          {
            goto LABEL_90;
          }
        }

        v66 = a3 + v65;
        if (v29 < 8)
        {
          v71 = 0;
          v72 = (a3 + v30);
LABEL_85:
          if ((v29 & 7) != 0)
          {
            v234 = result | v71;
            v74 = v29 & 7;
            while (*(v66 + v71) == *v72)
            {
              ++v72;
              ++v71;
              if (!--v74)
              {
                v71 = v234;
                goto LABEL_78;
              }
            }

            goto LABEL_78;
          }
        }

        else
        {
          v67 = 0;
          v68 = (v233 - v12) >> 3;
          while (1)
          {
            v69 = *&v56[v67];
            v70 = *(v66 + v67 * 4);
            if (v69 != v70)
            {
              break;
            }

            v67 += 2;
            if (!--v68)
            {
              v71 = v29 & 0xFFFFFFFFFFFFFFF8;
              v72 = v56 + (v29 & 0xFFFFFFFFFFFFFFF8);
              v22 = v244;
              goto LABEL_85;
            }
          }

          v71 = v67 * 4 + (__clz(__rbit64(v70 ^ v69)) >> 3);
LABEL_78:
          v22 = v244;
        }

        if (v71 >= 4)
        {
          v73 = 135 * v71 - 30 * (__clz(v64) ^ 0x1F) + 1920;
          if (v35 < v73)
          {
            v238 = v64;
            v36 = v73;
            v34 = v71;
            v32 = v71;
            v35 = v73;
          }
        }

        goto LABEL_82;
      }

LABEL_90:
      *(v59 + 4 * (v58 & v60)) = v12;
      *(v22 + 2 * v57) = v60 + 1;
      if (v36 == 2020)
      {
        v75 = *(a7 + 128);
        v77 = *(v75 + 40);
        v76 = *(v75 + 48);
        v78 = v238;
        if (v76 < v77 >> 7)
        {
          goto LABEL_225;
        }

        v225 = 0;
        v79 = ((506832829 * *v56) >> 17) & 0x7FFE;
        v80 = *(v28 + 32);
        v81 = 1;
        result = v34;
        v82 = 2020;
        do
        {
          v83 = v81;
          *(v75 + 40) = ++v77;
          v84 = *(v80 + v79);
          if (!*(v80 + v79) || v29 < v84)
          {
            goto LABEL_95;
          }

          v86 = *(*v28 + 4 * v84 + 32);
          v87 = *(*v28 + 168) + *(*(v28 + 24) + 2 * v79) * *(v80 + v79);
          v88 = (v87 + v86);
          if (v84 < 8)
          {
            v34 = 0;
LABEL_110:
            v94 = v84 & 7;
            if ((v84 & 7) != 0)
            {
              v95 = v34 | v94;
              while (*(v56 + v34) == *v88)
              {
                ++v88;
                ++v34;
                if (!--v94)
                {
                  v34 = v95;
                  break;
                }
              }
            }
          }

          else
          {
            v89 = 0;
            v34 = v84 & 0xF8;
            v90 = (v87 + v34 + v86);
            while (1)
            {
              v91 = *&v88[v89];
              v92 = *&v56[v89 / 4];
              if (v91 != v92)
              {
                break;
              }

              v89 += 8;
              if (v34 == v89)
              {
                v88 = v90;
                goto LABEL_110;
              }
            }

            v34 = v89 + (__clz(__rbit64(v92 ^ v91)) >> 3);
          }

          if (v34 && v34 + *(v28 + 12) > v84 && (v85 = v216 + v242 + *(*(v28 + 24) + 2 * v79) + ((((*(v28 + 16) >> (6 * (v84 - v34))) & 0x3FLL) + 4 * (v84 - v34)) << *(*v28 + v84)), v85 <= v240) && (v93 = 135 * v34 - 30 * (__clz(v85) ^ 0x1F) + 1920, v93 >= v82))
          {
            v225 = v84 - v34;
            *(v75 + 48) = ++v76;
            v82 = v93;
          }

          else
          {
LABEL_95:
            v85 = v78;
            v34 = result;
          }

          v81 = 0;
          ++v79;
          result = v34;
          v78 = v85;
        }

        while ((v83 & 1) != 0);
      }

      else
      {
        v82 = v36;
        v225 = 0;
        v85 = v238;
      }

      if (v82 < 0x7E5)
      {
LABEL_225:
        v21 = v247;
        v13 = v245 + 1;
        v164 = v12 + 1;
        if (v12 + 1 <= v247)
        {
          a6 = v227;
        }

        else
        {
          result = v232;
          if (v164 <= v247 + v211)
          {
            v187 = v12 + 9;
            if (v187 >= v212)
            {
              v187 = v212;
            }

            a6 = v227;
            if (v164 < v187)
            {
              v188 = *(a7 + 96);
              v189 = *(a7 + 112);
              v190 = *(a7 + 116);
              do
              {
                v191 = (0x1FE35A7BD3579BD3 * (*(a3 + (v164 & a4)) & v231)) >> v188;
                v192 = *(v22 + 2 * v191);
                *(v22 + 2 * v191) = v192 + 1;
                *(v232 + 4 * (v189 & v192) + 4 * (v191 << v190)) = v164;
                v13 += 2;
                v164 += 2;
              }

              while (v164 < v187);
            }
          }

          else
          {
            v165 = v12 + 17;
            if (v165 >= v212)
            {
              v165 = v212;
            }

            a6 = v227;
            if (v164 < v165)
            {
              v166 = *(a7 + 96);
              v167 = *(a7 + 112);
              v168 = *(a7 + 116);
              do
              {
                v169 = (0x1FE35A7BD3579BD3 * (*(a3 + (v164 & a4)) & v231)) >> v166;
                v170 = *(v22 + 2 * v169);
                *(v22 + 2 * v169) = v170 + 1;
                *(v232 + 4 * (v167 & v170) + 4 * (v169 << v168)) = v164;
                v13 += 4;
                v164 += 4;
              }

              while (v164 < v165);
            }
          }
        }

        goto LABEL_298;
      }

      v239 = v85;
      v96 = 0;
      v223 = *(a7 + 96);
      v97 = *(a7 + 120);
      v222 = *(a7 + 116);
      v98 = *(a7 + 112);
      a6 = v227;
      v99 = v245;
      while (1)
      {
        v241 = v96;
        --v29;
        v100 = v34 - 1;
        if (v34 - 1 >= v29)
        {
          v100 = v29;
        }

        if (*(a6 + 4) >= 5)
        {
          v101 = 0;
        }

        else
        {
          v101 = v100;
        }

        v102 = v12 + 1;
        if (v12 + 1 < v229)
        {
          v103 = v12 + 1;
        }

        else
        {
          v103 = v229;
        }

        v104 = v102 + v230;
        if (v102 + v230 >= v229)
        {
          v104 = v229;
        }

        v235 = v104;
        if (*(a6 + 632))
        {
          v105 = *(v219 + (*(v218 + v236) | *(a5 + *(a3 + (v12 & a4)))));
          v236 = *(a3 + (v12 & a4));
        }

        else
        {
          v105 = v237;
        }

        v221 = v34;
        v243 = v82;
        v237 = v105;
        v106 = *(v228 + 8 * v105);
        v107 = v102 & a4;
        v246 = v99;
        if (v97)
        {
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 2020;
          v112 = 2020;
          do
          {
            v113 = a8[v108];
            v114 = v102 - v113;
            v115 = v103 < v113 || v114 >= v102;
            v116 = v114 & a4;
            v117 = v101 + v107;
            v118 = v115 || v117 > a4;
            v119 = v116 + v101;
            v120 = v118 || v119 > a4;
            if (!v120 && *(a3 + v117) == *(a3 + v119))
            {
              v121 = a3 + v116;
              if (v29 < 8)
              {
                v122 = 0;
                v124 = (a3 + v107);
LABEL_163:
                if ((v29 & 7) != 0)
                {
                  v127 = v29 & 7;
                  do
                  {
                    if (*(v121 + v122) != *v124)
                    {
                      break;
                    }

                    v124 = (v124 + 1);
                    ++v122;
                    --v127;
                  }

                  while (v127);
                }
              }

              else
              {
                v122 = 0;
                v123 = v29 >> 3;
                v124 = (a3 + v107);
                while (1)
                {
                  v125 = *(v121 + v122);
                  if (*v124 != v125)
                  {
                    break;
                  }

                  ++v124;
                  v122 += 8;
                  if (!--v123)
                  {
                    goto LABEL_163;
                  }
                }

                v122 += __clz(__rbit64(v125 ^ *v124)) >> 3;
              }

              if (v122 > 2 || v108 <= 1 && v122 == 2)
              {
                v126 = 135 * v122 + 1935;
                if (v111 < v126)
                {
                  if (v108)
                  {
                    v126 -= ((0x1CA10u >> (v108 & 0xE)) & 0xE) + 39;
                  }

                  if (v111 < v126)
                  {
                    v110 = v122;
                    v109 = a8[v108];
                    v112 = v126;
                    v101 = v122;
                    v111 = v126;
                  }
                }
              }
            }

            ++v108;
          }

          while (v108 != v97);
        }

        else
        {
          v110 = 0;
          v109 = 0;
          v112 = 2020;
          v111 = 2020;
        }

        v128 = (a3 + v107);
        v129 = (0x1FE35A7BD3579BD3 * (*(a3 + v107) & v231)) >> v223;
        v130 = v232 + 4 * (v129 << v222);
        v131 = *(v22 + 2 * v129);
        if (v131 >= v226)
        {
          result = v131 - v226;
        }

        else
        {
          result = 0;
        }

        if (result < v131)
        {
          v132 = *(v22 + 2 * v129);
          do
          {
            v133 = *(v130 + 4 * (--v132 & v98));
            v134 = v102 - v133;
            if (v102 - v133 > v103)
            {
              break;
            }

            if (v101 + v107 <= a4)
            {
              v135 = v133 & a4;
              if (v135 + v101 <= a4 && *(a3 + v101 + v107) == *(a3 + v135 + v101))
              {
                v136 = a3 + v135;
                if (v29 < 8)
                {
                  v137 = 0;
                  v139 = (a3 + v107);
LABEL_190:
                  v142 = v29 & 7;
                  if ((v29 & 7) != 0)
                  {
                    do
                    {
                      if (*(v136 + v137) != *v139)
                      {
                        break;
                      }

                      v139 = (v139 + 1);
                      ++v137;
                      --v142;
                    }

                    while (v142);
                  }
                }

                else
                {
                  v137 = 0;
                  v138 = v29 >> 3;
                  v139 = (a3 + v107);
                  while (1)
                  {
                    v140 = *(v136 + v137);
                    if (*v139 != v140)
                    {
                      break;
                    }

                    ++v139;
                    v137 += 8;
                    if (!--v138)
                    {
                      goto LABEL_190;
                    }
                  }

                  v137 += __clz(__rbit64(v140 ^ *v139)) >> 3;
                }

                if (v137 >= 4)
                {
                  v141 = __clz(v134) ^ 0x1F;
                  if (v111 < 135 * v137 - 30 * v141 + 1920)
                  {
                    v110 = v137;
                    v109 = v134;
                    v112 = 135 * v137 - 30 * v141 + 1920;
                    v101 = v137;
                    v111 = v112;
                  }
                }
              }
            }
          }

          while (v132 > result);
        }

        *(v130 + 4 * (v98 & v131)) = v102;
        *(v244 + 2 * v129) = v131 + 1;
        if (v112 == 2020)
        {
          v143 = *(a7 + 128);
          v144 = *(v143 + 40);
          v145 = *(v143 + 48);
          if (v145 >= v144 >> 7)
          {
            v146 = 0;
            v148 = ((506832829 * *v128) >> 17) & 0x7FFE;
            v149 = *(v106 + 32);
            v150 = 1;
            v112 = 2020;
            result = v109;
            v151 = v110;
            do
            {
              v152 = v150;
              *(v143 + 40) = ++v144;
              v153 = *(v149 + v148);
              if (!*(v149 + v148) || v29 < v153)
              {
                goto LABEL_205;
              }

              v154 = *(*v106 + 4 * v153 + 32);
              v155 = *(*v106 + 168) + *(*(v106 + 24) + 2 * v148) * *(v149 + v148);
              v156 = (v155 + v154);
              if (v153 < 8)
              {
                v110 = 0;
LABEL_220:
                v162 = v153 & 7;
                if ((v153 & 7) != 0)
                {
                  v163 = v110 | v162;
                  while (*(v128 + v110) == *v156)
                  {
                    ++v156;
                    ++v110;
                    if (!--v162)
                    {
                      v110 = v163;
                      break;
                    }
                  }
                }
              }

              else
              {
                v157 = 0;
                v110 = v153 & 0xF8;
                v158 = (v155 + v110 + v154);
                while (1)
                {
                  v159 = *&v156[v157];
                  v160 = *&v128[v157 / 4];
                  if (v159 != v160)
                  {
                    break;
                  }

                  v157 += 8;
                  if (v110 == v157)
                  {
                    v156 = v158;
                    goto LABEL_220;
                  }
                }

                v110 = v157 + (__clz(__rbit64(v160 ^ v159)) >> 3);
              }

              if (v110 && v110 + *(v106 + 12) > v153 && (v109 = v216 + v235 + *(*(v106 + 24) + 2 * v148) + ((((*(v106 + 16) >> (6 * (v153 - v110))) & 0x3FLL) + 4 * (v153 - v110)) << *(*v106 + v153)), v109 <= v240) && (v161 = __clz(v109) ^ 0x1F, 135 * v110 - 30 * v161 + 1920 >= v112))
              {
                v146 = v153 - v110;
                *(v143 + 48) = ++v145;
                v112 = 135 * v110 - 30 * v161 + 1920;
              }

              else
              {
LABEL_205:
                v110 = v151;
                v109 = result;
              }

              v150 = 0;
              ++v148;
              result = v109;
              v151 = v110;
            }

            while ((v152 & 1) != 0);
          }

          else
          {
            v146 = 0;
            v112 = 2020;
          }
        }

        else
        {
          v146 = 0;
        }

        if (v112 < v243 + 175)
        {
          break;
        }

        v22 = v244;
        v99 = v246 + 1;
        a6 = v227;
        if (v241 <= 2)
        {
          v147 = v12 + 9;
          v96 = v241 + 1;
          v239 = v109;
          v82 = v112;
          v225 = v146;
          v34 = v110;
          ++v12;
          if (v147 < v233)
          {
            continue;
          }
        }

        goto LABEL_237;
      }

      v171 = v12 + v230;
      if (v12 + v230 >= v229)
      {
        v171 = v229;
      }

      v235 = v171;
      v109 = v239;
      v146 = v225;
      v110 = v221;
      v102 = v12;
      a6 = v227;
      v22 = v244;
      v99 = v246;
LABEL_237:
      if (v109 > v235 + v214)
      {
        goto LABEL_238;
      }

      v177 = *a8;
      if (v109 != v177)
      {
        v193 = a8[1];
        if (v109 == v193)
        {
          v172 = 1;
          goto LABEL_239;
        }

        v194 = v109 + 3 - v177;
        if (v194 > 6)
        {
          v197 = v109 + 3 - v193;
          if (v197 > 6)
          {
            if (v109 == a8[2])
            {
              v172 = 2;
            }

            else if (v109 == a8[3])
            {
              v172 = 3;
            }

            else
            {
LABEL_238:
              v172 = v109 + 15;
            }

LABEL_239:
            if (v109 <= v235 + v214)
            {
              if (v172)
              {
                a8[3] = a8[2];
                v173 = *a8;
                *(a8 + 1) = *a8;
                *a8 = v109;
                v174 = *(a7 + 120);
                if (v174 >= 5)
                {
                  v175 = vdupq_n_s32(v109);
                  *(a8 + 1) = vaddq_s32(v175, xmmword_240C11260);
                  *(a8 + 4) = vadd_s32(*v175.i8, 0x3FFFFFFFDLL);
                  if (v174 >= 0xB)
                  {
                    v176 = vdupq_lane_s32(v173, 0);
                    *(a8 + 10) = vaddq_s32(v176, xmmword_240C11260);
                    *(a8 + 7) = vadd_s32(*v176.i8, 0x3FFFFFFFDLL);
                  }
                }
              }
            }

            goto LABEL_246;
          }

          v195 = 4 * v197;
          v196 = 266017486;
        }

        else
        {
          v195 = 4 * v194;
          v196 = 158663784;
        }

        v172 = (v196 >> v195) & 0xF;
        goto LABEL_239;
      }

      v172 = 0;
LABEL_246:
      *v217 = v99;
      *(v217 + 4) = v110 | (v146 << 25);
      v178 = *(a6 + 68);
      v179 = v178 + 16;
      if (v178 + 16 <= v172)
      {
        v181 = *(a6 + 64);
        v182 = v172 - v178 + (4 << v181) - 16;
        v183 = (__clz(v182) ^ 0x1F) - 1;
        v184 = ((v182 >> v183) & 1 | 2) << v183;
        v172 = ((v182 & ~(-1 << v181)) + v179 + ((((v182 >> v183) & 1 | (2 * (v183 - v181))) + 65534) << v181)) | ((v183 - v181) << 10);
        v180 = (v182 - v184) >> v181;
      }

      else
      {
        LODWORD(v180) = 0;
      }

      *(v217 + 14) = v172;
      *(v217 + 8) = v180;
      if (v99 > 5)
      {
        if (v99 > 0x81)
        {
          if (v99 > 0x841)
          {
            if (v99 >> 1 >= 0xC21)
            {
              if (v99 < 0x5842)
              {
                LOWORD(v185) = 22;
              }

              else
              {
                LOWORD(v185) = 23;
              }
            }

            else
            {
              LOWORD(v185) = 21;
            }
          }

          else
          {
            v185 = (__clz(v99 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v186 = (__clz(v99 - 2) ^ 0x1F) - 1;
          v185 = ((v99 - 2) >> v186) + 2 * v186 + 2;
        }
      }

      else
      {
        LOWORD(v185) = v99;
      }

      v198 = v146 + v110;
      if ((v146 + v110) > 9)
      {
        if (v198 > 0x85)
        {
          if (v198 > 0x845)
          {
            LOWORD(v198) = 23;
          }

          else
          {
            v198 = (__clz(v198 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v199 = v198 - 6;
          v200 = (__clz(v199) ^ 0x1F) - 1;
          v198 = (v199 >> v200) + 2 * v200 + 4;
        }
      }

      else
      {
        LOWORD(v198) = v198 - 2;
      }

      v201 = v198 & 7 | (8 * (v185 & 7));
      if ((v172 & 0x3FF) != 0 || v185 > 7u || v198 > 0xFu)
      {
        v203 = 3 * (v185 >> 3) + ((v198 & 0xFFF8) >> 3);
        v202 = ((((0x520D40u >> (2 * v203)) & 0xC0) + (v203 << 6)) | v201) + 64;
      }

      else
      {
        LOWORD(v202) = v201 | 0x40;
        if ((v198 & 0xFFF8) == 0)
        {
          LOWORD(v202) = v198 & 7 | (8 * (v185 & 7));
        }
      }

      *(v217 + 12) = v202;
      v204 = v213;
      *a12 += v99;
      v205 = v102 + 2;
      v164 = v102 + v110;
      if (v102 + v110 < v213)
      {
        v204 = v102 + v110;
      }

      if (v109 < v110 >> 2)
      {
        if (v205 <= v164 - 4 * v109)
        {
          v205 = v164 - 4 * v109;
        }

        if (v204 < v205)
        {
          v205 = v204;
        }
      }

      v21 = v215 + 2 * v110 + v102;
      v217 += 16;
      if (v205 < v204)
      {
        v206 = *(a7 + 96);
        v207 = *(a7 + 112);
        v208 = *(a7 + 116);
        result = v232;
        do
        {
          v209 = (0x1FE35A7BD3579BD3 * (*(a3 + (v205 & a4)) & v231)) >> v206;
          v210 = *(v244 + 2 * v209);
          *(v244 + 2 * v209) = v210 + 1;
          *(v232 + 4 * (v207 & v210) + 4 * (v209 << v208)) = v205++;
        }

        while (v204 != v205);
      }

      v13 = 0;
LABEL_298:
      v12 = v164;
      if (v164 + 8 >= v233)
      {
        goto LABEL_305;
      }
    }

    v25 = 0;
LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  v217 = a10;
  v164 = a2;
LABEL_305:
  *a9 = v13 + v233 - v164;
  *a11 += (v217 - a10) >> 4;
  return result;
}

unint64_t sub_240AF4AB0(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v13 = a10;
  v14 = *a9;
  v15 = a2 + result;
  v16 = a2 + result - 3;
  v222 = v16;
  if (result <= 3)
  {
    v16 = a2;
  }

  v226 = v16;
  v17 = 512;
  if (*(a6 + 4) < 9)
  {
    v17 = 64;
  }

  if (result >= 5)
  {
    v225 = v17;
    v237 = *(a6 + 16);
    v238 = (1 << *(a6 + 8)) - 16;
    v18 = v17 + a2;
    v230 = a6 + 637;
    v229 = a5 + 256;
    v236 = a6 + 704;
    v224 = *(a6 + 104);
    v227 = v224 + 1;
    v223 = 4 * v17;
    v221 = v15 - 4;
    v19 = a10;
    v254 = a7;
    v255 = a3;
    v243 = a6;
    v234 = a2 + result;
    while (1)
    {
      if (a2 >= v238)
      {
        v20 = v238;
      }

      else
      {
        v20 = a2;
      }

      if (a2 + v237 >= v238)
      {
        v21 = v238;
      }

      else
      {
        v21 = a2 + v237;
      }

      v228 = v19;
      v252 = v14;
      v248 = v18;
      v244 = v21;
      if (*(a6 + 632))
      {
        if (a2)
        {
          v22 = *(a3 + ((a2 - 1) & a4));
          v23 = a5;
          if (a2 == 1)
          {
            v24 = 0;
          }

          else
          {
            v24 = *(a3 + ((a2 - 2) & a4));
          }
        }

        else
        {
          v22 = 0;
          v24 = 0;
          v23 = a5;
        }

        v241 = v22;
        v25 = *(v230 + (*(v229 + v24) | *(v23 + v22)));
      }

      else
      {
        v25 = 0;
        v241 = 0;
      }

      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = v15 - a2;
      v242 = v25;
      v246 = *(v236 + 8 * v25);
      v250 = *(a6 + 80);
      v32 = *(a7 + 96);
      v31 = *(a7 + 104);
      v33 = v32 + 196608;
      v34 = a2 & a4;
      v35 = (a3 + (a2 & a4));
      result = (506832829 * *v35) >> 17;
      v36 = (v15 - a2) >> 3;
      v239 = (v15 - a2) & 7;
      v37 = (v15 - a2) & 0xFFFFFFFFFFFFFFF8;
      v38 = 2020;
      v39 = 2020;
      do
      {
        v40 = a8[v27];
        v41 = a2 - v40;
        if ((!v27 || *(v33 + (a2 - v40)) == result) && v20 >= v40 && v41 < a2)
        {
          v43 = a3 + (v41 & a4);
          if (v30 < 8)
          {
            v48 = 0;
            v49 = (a3 + (a2 & a4));
LABEL_43:
            v51 = v239;
            if (v239)
            {
              v52 = v239 | v48;
              while (*(v43 + v48) == *v49)
              {
                ++v49;
                ++v48;
                if (!--v51)
                {
                  v48 = v52;
                  break;
                }
              }
            }
          }

          else
          {
            v44 = 0;
            v45 = v36;
            while (1)
            {
              v46 = *&v35[v44];
              v47 = *(v43 + v44);
              if (v46 != v47)
              {
                break;
              }

              v44 += 8;
              if (!--v45)
              {
                v48 = v37;
                v49 = &v35[v37];
                goto LABEL_43;
              }
            }

            v48 = v44 + (__clz(__rbit64(v47 ^ v46)) >> 3);
          }

          if (v48 >= 2)
          {
            v50 = 135 * v48 + 1935;
            if (v38 < v50)
            {
              if (v27)
              {
                v50 -= ((0x1CA10u >> (v27 & 2)) & 4) + 39;
              }

              if (v38 < v50)
              {
                v29 = a8[v27];
                v39 = v50;
                v28 = v48;
                v26 = v48;
                v38 = v50;
              }
            }
          }
        }

        ++v27;
      }

      while (v27 != 4);
      v253 = v39;
      v53 = v32 + 0x20000;
      v54 = *(v254 + 88);
      v55 = a2;
      v56 = a2 - *(v32 + 4 * result);
      if (v54)
      {
        v57 = 0;
        v58 = *(v53 + 2 * result);
        v59 = a2 - *(v32 + 4 * result);
        do
        {
          v57 += v59;
          if (v57 > v20)
          {
            break;
          }

          if (v26 + v34 <= a4)
          {
            v60 = (v55 - v57) & a4;
            if (v60 + v26 <= a4 && *(a3 + v26 + v34) == *(a3 + v60 + v26))
            {
              v61 = a3 + v60;
              if (v30 < 8)
              {
                v66 = 0;
                v67 = v35;
LABEL_82:
                v75 = v239;
                if (v239)
                {
                  v76 = v239 | v66;
                  while (*(v61 + v66) == *v67)
                  {
                    ++v67;
                    ++v66;
                    if (!--v75)
                    {
                      v66 = v76;
                      break;
                    }
                  }
                }
              }

              else
              {
                v62 = 0;
                v63 = v36;
                while (1)
                {
                  v64 = *&v35[v62];
                  v65 = *(v61 + v62);
                  if (v64 != v65)
                  {
                    break;
                  }

                  v62 += 8;
                  if (!--v63)
                  {
                    v66 = v37;
                    v67 = &v35[v37];
                    goto LABEL_82;
                  }
                }

                v66 = v62 + (__clz(__rbit64(v65 ^ v64)) >> 3);
              }

              v68 = 135 * v66 - 30 * (__clz(v57) ^ 0x1F) + 1920;
              if (v38 < v68)
              {
                v69 = v57;
              }

              else
              {
                v69 = v29;
              }

              v70 = v253;
              if (v38 < v68)
              {
                v71 = v68;
              }

              else
              {
                v71 = v253;
              }

              if (v38 < v68)
              {
                v72 = v66;
              }

              else
              {
                v72 = v28;
              }

              if (v38 < v68)
              {
                v73 = v66;
              }

              else
              {
                v73 = v26;
              }

              if (v38 >= v68)
              {
                v68 = v38;
              }

              if (v66 >= 4)
              {
                v29 = v69;
                v70 = v71;
              }

              v253 = v70;
              if (v66 >= 4)
              {
                v28 = v72;
                v26 = v73;
                v38 = v68;
              }

              a3 = v255;
            }
          }

          v74 = (v31 + 4 * v58);
          v58 = v74[1];
          v59 = *v74;
          --v54;
        }

        while (v54);
      }

      a7 = v254;
      v77 = *(v254 + 80);
      *(v254 + 80) = v77 + 1;
      *(v33 + v55) = result;
      v78 = -1;
      if (v56 < 0xFFFF)
      {
        v78 = v56;
      }

      v79 = (v31 + 4 * v77);
      *v79 = v78;
      v79[1] = *(v53 + 2 * result);
      *(v32 + 4 * result) = v55;
      *(v53 + 2 * result) = v77;
      if (v253 == 2020)
      {
        v80 = *(v254 + 112);
        v82 = *(v80 + 40);
        v81 = *(v80 + 48);
        a6 = v243;
        if (v81 < v82 >> 7)
        {
          goto LABEL_227;
        }

        v235 = 0;
        v83 = ((506832829 * *v35) >> 17) & 0x7FFE;
        v84 = *(v246 + 32);
        v85 = 1;
        v86 = v28;
        v253 = 2020;
        v87 = v29;
        do
        {
          result = v85;
          *(v80 + 40) = ++v82;
          v88 = *(v84 + v83);
          if (!*(v84 + v83) || v30 < v88)
          {
            goto LABEL_94;
          }

          v91 = *(*v246 + 4 * v88 + 32);
          v92 = *(*v246 + 168) + *(*(v246 + 24) + 2 * v83) * *(v84 + v83);
          v93 = (v92 + v91);
          if (v88 < 8)
          {
            v95 = 0;
LABEL_109:
            v100 = v88 & 7;
            if ((v88 & 7) != 0)
            {
              v101 = v95 | v100;
              while (v35[v95] == *v93)
              {
                ++v93;
                ++v95;
                if (!--v100)
                {
                  v90 = v101;
                  goto LABEL_103;
                }
              }
            }

            v90 = v95;
          }

          else
          {
            v94 = 0;
            v95 = v88 & 0xF8;
            v96 = (v92 + v95 + v91);
            while (1)
            {
              v97 = *&v93[v94];
              v98 = *&v35[v94];
              if (v97 != v98)
              {
                break;
              }

              v94 += 8;
              if (v95 == v94)
              {
                v93 = v96;
                goto LABEL_109;
              }
            }

            v90 = v94 + (__clz(__rbit64(v98 ^ v97)) >> 3);
          }

LABEL_103:
          a6 = v243;
          if (v90 && v90 + *(v246 + 12) > v88 && (v89 = v227 + v244 + *(*(v246 + 24) + 2 * v83) + ((((*(v246 + 16) >> (6 * (v88 - v90))) & 0x3FLL) + 4 * (v88 - v90)) << *(*v246 + v88)), v89 <= v250) && (v99 = __clz(v89) ^ 0x1F, 135 * v90 - 30 * v99 + 1920 >= v253))
          {
            v235 = v88 - v90;
            *(v80 + 48) = ++v81;
            v253 = 135 * v90 - 30 * v99 + 1920;
          }

          else
          {
LABEL_94:
            v89 = v87;
            v90 = v86;
          }

          v85 = 0;
          ++v83;
          v86 = v90;
          v87 = v89;
        }

        while ((result & 1) != 0);
      }

      else
      {
        v235 = 0;
        a6 = v243;
        v90 = v28;
        v89 = v29;
      }

      a3 = v255;
      if (v253 >= 0x7E5)
      {
        v233 = v89;
        v102 = 0;
        v103 = *(v254 + 80);
        v104 = v55;
        while (1)
        {
          --v30;
          v105 = v90 - 1;
          if (v90 - 1 >= v30)
          {
            v105 = v30;
          }

          if (*(a6 + 4) >= 5)
          {
            v106 = 0;
          }

          else
          {
            v106 = v105;
          }

          v107 = v104 + 1;
          if (v104 + 1 < v238)
          {
            v108 = v104 + 1;
          }

          else
          {
            v108 = v238;
          }

          v109 = v107 + v237;
          if (v107 + v237 >= v238)
          {
            v109 = v238;
          }

          v240 = v109;
          v247 = v104;
          v249 = v103;
          v232 = v90;
          v245 = v102;
          if (*(a6 + 632))
          {
            v110 = *(v230 + (*(v229 + v241) | *(a5 + *(a3 + (v104 & a4)))));
            v241 = *(a3 + (v104 & a4));
          }

          else
          {
            v110 = v242;
          }

          v111 = 0;
          v112 = 0;
          v113 = 0;
          v242 = v110;
          v114 = *(v236 + 8 * v110);
          v115 = *(a7 + 104);
          v116 = *(a7 + 96);
          v117 = v116 + 196608;
          v118 = v107 & a4;
          v119 = (a3 + (v107 & a4));
          v120 = (506832829 * *v119) >> 17;
          v251 = *(a6 + 80);
          v121 = 2020;
          v122 = 2020;
          do
          {
            v123 = a8[v111];
            v124 = v107 - v123;
            if ((!v111 || *(v117 + (v107 - v123)) == v120) && v108 >= v123 && v124 < v107)
            {
              v126 = a3 + (v124 & a4);
              if (v30 < 8)
              {
                v127 = 0;
                v129 = (a3 + (v107 & a4));
LABEL_153:
                v132 = v30 & 7;
                if ((v30 & 7) != 0)
                {
                  do
                  {
                    if (*(v126 + v127) != *v129)
                    {
                      break;
                    }

                    v129 = (v129 + 1);
                    ++v127;
                    --v132;
                  }

                  while (v132);
                }
              }

              else
              {
                v127 = 0;
                v128 = v30 >> 3;
                v129 = (a3 + (v107 & a4));
                while (1)
                {
                  v130 = *(v126 + v127);
                  if (*v129 != v130)
                  {
                    break;
                  }

                  ++v129;
                  v127 += 8;
                  if (!--v128)
                  {
                    goto LABEL_153;
                  }
                }

                v127 += __clz(__rbit64(v130 ^ *v129)) >> 3;
              }

              if (v127 >= 2)
              {
                v131 = 135 * v127 + 1935;
                if (v121 < v131)
                {
                  if (v111)
                  {
                    v131 -= ((0x1CA10u >> (v111 & 2)) & 4) + 39;
                  }

                  if (v121 < v131)
                  {
                    v113 = v127;
                    v112 = a8[v111];
                    v122 = v131;
                    v106 = v127;
                    v121 = v131;
                  }
                }
              }
            }

            ++v111;
          }

          while (v111 != 4);
          v133 = v116;
          result = v116 + 0x20000;
          v134 = *(v254 + 88);
          v135 = v107 - *(v116 + 4 * v120);
          if (v134)
          {
            v136 = 0;
            v137 = *(result + 2 * v120);
            v138 = v107 - *(v116 + 4 * v120);
            do
            {
              v136 += v138;
              if (v136 > v108)
              {
                break;
              }

              if (v106 + v118 <= a4)
              {
                v139 = (v107 - v136) & a4;
                if (v139 + v106 <= a4 && *(a3 + v106 + v118) == *(a3 + v139 + v106))
                {
                  v140 = a3 + v139;
                  if (v30 < 8)
                  {
                    v141 = 0;
                    v143 = v119;
LABEL_189:
                    v151 = v30 & 7;
                    if ((v30 & 7) != 0)
                    {
                      do
                      {
                        if (*(v140 + v141) != *v143)
                        {
                          break;
                        }

                        v143 = (v143 + 1);
                        ++v141;
                        --v151;
                      }

                      while (v151);
                    }
                  }

                  else
                  {
                    v141 = 0;
                    v142 = v30 >> 3;
                    v143 = v119;
                    while (1)
                    {
                      v144 = *(v140 + v141);
                      if (*v143 != v144)
                      {
                        break;
                      }

                      ++v143;
                      v141 += 8;
                      if (!--v142)
                      {
                        goto LABEL_189;
                      }
                    }

                    v141 += __clz(__rbit64(v144 ^ *v143)) >> 3;
                  }

                  v145 = 135 * v141 - 30 * (__clz(v136) ^ 0x1F) + 1920;
                  if (v121 < v145)
                  {
                    v146 = v141;
                  }

                  else
                  {
                    v146 = v113;
                  }

                  if (v121 < v145)
                  {
                    v147 = v136;
                  }

                  else
                  {
                    v147 = v112;
                  }

                  if (v121 < v145)
                  {
                    v148 = v145;
                  }

                  else
                  {
                    v148 = v122;
                  }

                  if (v121 < v145)
                  {
                    v149 = v141;
                  }

                  else
                  {
                    v149 = v106;
                  }

                  if (v121 >= v145)
                  {
                    v145 = v121;
                  }

                  if (v141 >= 4)
                  {
                    v113 = v146;
                    v112 = v147;
                    v122 = v148;
                    v106 = v149;
                    v121 = v145;
                  }

                  a3 = v255;
                }
              }

              v150 = (v115 + 4 * v137);
              v137 = v150[1];
              v138 = *v150;
              --v134;
            }

            while (v134);
          }

          *(v254 + 80) = v249 + 1;
          *(v117 + v107) = v120;
          v152 = v135 >= 0xFFFF ? -1 : v135;
          v153 = (v115 + 4 * v249);
          *v153 = v152;
          v153[1] = *(result + 2 * v120);
          *(v133 + 4 * v120) = v107;
          *(result + 2 * v120) = v249;
          if (v122 == 2020)
          {
            v154 = *(v254 + 112);
            v156 = *(v154 + 40);
            v155 = *(v154 + 48);
            v157 = 0;
            if (v155 >= v156 >> 7)
            {
              v158 = ((506832829 * *v119) >> 17) & 0x7FFE;
              v159 = *(v114 + 32);
              v160 = 1;
              v122 = 2020;
              result = v112;
              v161 = v113;
              do
              {
                v162 = v160;
                *(v154 + 40) = ++v156;
                v163 = *(v159 + v158);
                if (!*(v159 + v158) || v30 < v163)
                {
                  goto LABEL_207;
                }

                v164 = *(*v114 + 4 * v163 + 32);
                v165 = *(*v114 + 168) + *(*(v114 + 24) + 2 * v158) * *(v159 + v158);
                v166 = (v165 + v164);
                if (v163 < 8)
                {
                  v113 = 0;
LABEL_222:
                  v172 = v163 & 7;
                  if ((v163 & 7) != 0)
                  {
                    v173 = v113 | v172;
                    while (*(v119 + v113) == *v166)
                    {
                      ++v166;
                      ++v113;
                      if (!--v172)
                      {
                        v113 = v173;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v167 = 0;
                  v113 = v163 & 0xF8;
                  v168 = (v165 + v113 + v164);
                  while (1)
                  {
                    v169 = *&v166[v167];
                    v170 = *&v119[v167 / 4];
                    if (v169 != v170)
                    {
                      break;
                    }

                    v167 += 8;
                    if (v113 == v167)
                    {
                      v166 = v168;
                      goto LABEL_222;
                    }
                  }

                  v113 = v167 + (__clz(__rbit64(v170 ^ v169)) >> 3);
                }

                a3 = v255;
                if (v113 && v113 + *(v114 + 12) > v163 && (v112 = v227 + v240 + *(*(v114 + 24) + 2 * v158) + ((((*(v114 + 16) >> (6 * (v163 - v113))) & 0x3FLL) + 4 * (v163 - v113)) << *(*v114 + v163)), v112 <= v251) && (v171 = __clz(v112) ^ 0x1F, 135 * v113 - 30 * v171 + 1920 >= v122))
                {
                  v157 = v163 - v113;
                  *(v154 + 48) = ++v155;
                  v122 = 135 * v113 - 30 * v171 + 1920;
                }

                else
                {
LABEL_207:
                  v113 = v161;
                  v112 = result;
                }

                v160 = 0;
                ++v158;
                result = v112;
                v161 = v113;
              }

              while ((v162 & 1) != 0);
            }

            else
            {
              v122 = 2020;
            }
          }

          else
          {
            v157 = 0;
          }

          if (v122 < v253 + 175)
          {
            break;
          }

          ++v252;
          a7 = v254;
          if (v245 > 2)
          {
            goto LABEL_241;
          }

          v102 = v245 + 1;
          v103 = v249 + 1;
          v233 = v112;
          v253 = v122;
          v235 = v157;
          v90 = v113;
          v104 = v107;
          a6 = v243;
          if (v247 + 5 >= v234)
          {
            goto LABEL_242;
          }
        }

        v107 = v247;
        v183 = v247 + v237;
        if (v247 + v237 >= v238)
        {
          v183 = v238;
        }

        v240 = v183;
        v113 = v232;
        v112 = v233;
        v157 = v235;
        a7 = v254;
LABEL_241:
        a6 = v243;
LABEL_242:
        v15 = v234;
        if (v112 > v240 + v224)
        {
LABEL_243:
          v184 = v112 + 15;
          goto LABEL_244;
        }

        v185 = *a8;
        if (v112 == v185)
        {
          v184 = 0;
LABEL_249:
          *v228 = v252;
          *(v228 + 4) = v113 | (v157 << 25);
          v186 = *(a6 + 68);
          v187 = v186 + 16;
          if (v186 + 16 <= v184)
          {
            v189 = *(a6 + 64);
            v190 = v184 - v186 + (4 << v189) - 16;
            v191 = (__clz(v190) ^ 0x1F) - 1;
            v192 = ((v190 >> v191) & 1 | 2) << v191;
            result = 65534;
            v184 = ((v190 & ~(-1 << v189)) + v187 + ((((v190 >> v191) & 1 | (2 * (v191 - v189))) + 65534) << v189)) | ((v191 - v189) << 10);
            v188 = (v190 - v192) >> v189;
          }

          else
          {
            LODWORD(v188) = 0;
          }

          *(v228 + 14) = v184;
          *(v228 + 8) = v188;
          if (v252 > 5)
          {
            if (v252 > 0x81)
            {
              if (v252 > 0x841)
              {
                if (v252 >> 1 >= 0xC21)
                {
                  if (v252 < 0x5842)
                  {
                    LOWORD(v193) = 22;
                  }

                  else
                  {
                    LOWORD(v193) = 23;
                  }
                }

                else
                {
                  LOWORD(v193) = 21;
                }
              }

              else
              {
                v193 = (__clz(v252 - 66) ^ 0x1F) + 10;
              }
            }

            else
            {
              v194 = (__clz(v252 - 2) ^ 0x1F) - 1;
              v193 = ((v252 - 2) >> v194) + 2 * v194 + 2;
            }
          }

          else
          {
            LOWORD(v193) = v252;
          }

          v207 = v157 + v113;
          if ((v157 + v113) > 9)
          {
            if (v207 > 0x85)
            {
              if (v207 > 0x845)
              {
                LOWORD(v207) = 23;
              }

              else
              {
                v207 = (__clz(v207 - 70) ^ 0x1F) + 12;
              }
            }

            else
            {
              v208 = v207 - 6;
              v209 = (__clz(v208) ^ 0x1F) - 1;
              v207 = (v208 >> v209) + 2 * v209 + 4;
            }
          }

          else
          {
            LOWORD(v207) = v207 - 2;
          }

          v210 = v207 & 7 | (8 * (v193 & 7));
          if ((v184 & 0x3FF) != 0 || v193 > 7u || v207 > 0xFu)
          {
            v212 = 3 * (v193 >> 3) + ((v207 & 0xFFF8) >> 3);
            v211 = ((((0x520D40u >> (2 * v212)) & 0xC0) + (v212 << 6)) | v210) + 64;
          }

          else
          {
            LOWORD(v211) = v210 | 0x40;
            if ((v207 & 0xFFF8) == 0)
            {
              LOWORD(v211) = v207 & 7 | (8 * (v193 & 7));
            }
          }

          *(v228 + 12) = v211;
          *a12 += v252;
          v213 = v107 + 2;
          v174 = v107 + v113;
          if (v107 + v113 >= v226)
          {
            v214 = v226;
          }

          else
          {
            v214 = v107 + v113;
          }

          if (v112 < v113 >> 2)
          {
            v215 = v174 - 4 * v112;
            if (v213 > v215)
            {
              v215 = v107 + 2;
            }

            if (v214 >= v215)
            {
              v213 = v215;
            }

            else
            {
              v213 = v214;
            }
          }

          v18 = v225 + 2 * v113 + v107;
          v19 = v228 + 16;
          if (v213 >= v214)
          {
            v14 = 0;
LABEL_309:
            v13 = a10;
            goto LABEL_310;
          }

          v216 = *(a7 + 96);
          v217 = *(a7 + 104);
          v218 = v216 + 0x20000;
          v179 = *(a7 + 80);
          do
          {
            v219 = (506832829 * *(a3 + (v213 & a4))) >> 17;
            v220 = v213 - *(v216 + 4 * v219);
            *(v216 + 196608 + v213) = v219;
            if (v220 >= 0xFFFF)
            {
              LOWORD(v220) = -1;
            }

            result = v217 + 4 * v179;
            *result = v220;
            *(result + 2) = *(v218 + 2 * v219);
            *(v218 + 2 * v219) = v179++;
            *(v216 + 4 * v219) = v213++;
          }

          while (v214 != v213);
          v14 = 0;
          goto LABEL_307;
        }

        v202 = a8[1];
        if (v112 == v202)
        {
          v184 = 1;
        }

        else
        {
          v203 = v112 + 3 - v185;
          if (v203 > 6)
          {
            v206 = v112 + 3 - v202;
            if (v206 > 6)
            {
              if (v112 == a8[2])
              {
                v184 = 2;
              }

              else
              {
                if (v112 != a8[3])
                {
                  goto LABEL_243;
                }

                v184 = 3;
              }

              goto LABEL_244;
            }

            v204 = 4 * v206;
            v205 = 266017486;
          }

          else
          {
            v204 = 4 * v203;
            v205 = 158663784;
          }

          v184 = (v205 >> v204) & 0xF;
        }

LABEL_244:
        if (v112 <= v240 + v224 && v184)
        {
          a8[3] = a8[2];
          *(a8 + 1) = *a8;
          *a8 = v112;
        }

        goto LABEL_249;
      }

LABEL_227:
      v14 = v252 + 1;
      v174 = v55 + 1;
      v18 = v248;
      if (v55 + 1 > v248)
      {
        v15 = v234;
        v19 = v228;
        if (v174 <= v248 + v223)
        {
          v195 = v222;
          if (v55 + 9 < v222)
          {
            v195 = v55 + 9;
          }

          if (v174 >= v195)
          {
            goto LABEL_309;
          }

          v196 = *(v254 + 96);
          v197 = *(v254 + 104);
          v198 = v196 + 0x20000;
          v179 = *(v254 + 80);
          do
          {
            v199 = (506832829 * *(a3 + (v174 & a4))) >> 17;
            v200 = v174 - *(v196 + 4 * v199);
            *(v196 + 196608 + v174) = v199;
            if (v200 >= 0xFFFF)
            {
              LOWORD(v200) = -1;
            }

            v201 = (v197 + 4 * v179);
            *v201 = v200;
            v201[1] = *(v198 + 2 * v199);
            *(v198 + 2 * v199) = v179++;
            *(v196 + 4 * v199) = v174;
            v14 += 2;
            v174 += 2;
          }

          while (v174 < v195);
        }

        else
        {
          v175 = v221;
          if (v55 + 17 < v221)
          {
            v175 = v55 + 17;
          }

          if (v174 >= v175)
          {
            goto LABEL_309;
          }

          v176 = *(v254 + 96);
          v177 = *(v254 + 104);
          v178 = v176 + 0x20000;
          v179 = *(v254 + 80);
          do
          {
            v180 = (506832829 * *(a3 + (v174 & a4))) >> 17;
            v181 = v174 - *(v176 + 4 * v180);
            *(v176 + 196608 + v174) = v180;
            if (v181 >= 0xFFFF)
            {
              LOWORD(v181) = -1;
            }

            v182 = (v177 + 4 * v179);
            *v182 = v181;
            v182[1] = *(v178 + 2 * v180);
            *(v178 + 2 * v180) = v179++;
            *(v176 + 4 * v180) = v174;
            v14 += 4;
            v174 += 4;
          }

          while (v174 < v175);
        }

LABEL_307:
        v13 = a10;
        *(a7 + 80) = v179;
        goto LABEL_310;
      }

      v13 = a10;
      v15 = v234;
      v19 = v228;
LABEL_310:
      a2 = v174;
      if (v174 + 4 >= v15)
      {
        goto LABEL_317;
      }
    }
  }

  v19 = a10;
  v174 = a2;
LABEL_317:
  *a9 = v14 + v15 - v174;
  *a11 += (v19 - v13) >> 4;
  return result;
}

unint64_t sub_240AF5C74(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9, uint64_t a10, void *a11, void *a12)
{
  v13 = a10;
  v240 = *(a6 + 16);
  v14 = *a9;
  v15 = a2 + result;
  v16 = a2 + result - 3;
  v223 = v16;
  if (result <= 3)
  {
    v16 = a2;
  }

  v227 = v16;
  v17 = *(a6 + 8);
  v18 = 64;
  if (*(a6 + 4) >= 9)
  {
    v18 = 512;
  }

  v19 = *(a6 + 104);
  v20 = vld1q_dup_f32(a8);
  *(a8 + 1) = vaddq_s32(v20, xmmword_240C11260);
  *(a8 + 4) = vadd_s32(*v20.i8, 0x3FFFFFFFDLL);
  if (result >= 5)
  {
    v225 = v19;
    v21 = v18 + a2;
    v231 = a6 + 637;
    v230 = a5 + 256;
    v238 = a6 + 704;
    v239 = (1 << v17) - 16;
    v228 = v19 + 1;
    v224 = 4 * v18;
    v222 = v15 - 4;
    v22 = a10;
    v256 = a3;
    v226 = v18;
    v254 = a7;
    v241 = a6;
    v235 = a2 + result;
    while (1)
    {
      if (a2 >= v239)
      {
        v23 = v239;
      }

      else
      {
        v23 = a2;
      }

      if (a2 + v240 >= v239)
      {
        v24 = v239;
      }

      else
      {
        v24 = a2 + v240;
      }

      v229 = v22;
      v251 = v14;
      v246 = v24;
      v248 = v21;
      if (*(a6 + 632))
      {
        if (a2)
        {
          v25 = *(a3 + ((a2 - 1) & a4));
          v26 = a5;
          if (a2 == 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = *(a3 + ((a2 - 2) & a4));
          }
        }

        else
        {
          v25 = 0;
          v27 = 0;
          v26 = a5;
        }

        v243 = v25;
        v28 = *(v231 + (*(v230 + v27) | *(v26 + v25)));
      }

      else
      {
        v28 = 0;
        v243 = 0;
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = v15 - a2;
      v34 = *(v238 + 8 * v28);
      v252 = *(a6 + 80);
      v36 = *(a7 + 96);
      v35 = *(a7 + 104);
      v37 = v36 + 196608;
      v38 = a2 & a4;
      v39 = (a3 + (a2 & a4));
      v40 = (506832829 * *v39) >> 17;
      v41 = v33 & 7;
      v244 = v28;
      v42 = 2020;
      v255 = 2020;
      do
      {
        v43 = a8[v30];
        v44 = a2 - v43;
        if ((!v30 || *(v37 + (a2 - v43)) == v40) && v23 >= v43 && v44 < a2)
        {
          v46 = a3 + (v44 & a4);
          if (v33 < 8)
          {
            v50 = 0;
            v51 = (a3 + (a2 & a4));
LABEL_47:
            if ((v33 & 7) != 0)
            {
              v54 = v41 | v50;
              v55 = v33 & 7;
              while (1)
              {
                result = *v51;
                if (*(v46 + v50) != result)
                {
                  break;
                }

                ++v51;
                ++v50;
                if (!--v55)
                {
                  v50 = v54;
                  break;
                }
              }
            }
          }

          else
          {
            v47 = 0;
            result = v33 >> 3;
            while (1)
            {
              v48 = *&v39[v47];
              v49 = *(v46 + v47);
              if (v48 != v49)
              {
                break;
              }

              v47 += 8;
              if (!--result)
              {
                v50 = v33 & 0xFFFFFFFFFFFFFFF8;
                v51 = &v39[v33 & 0xFFFFFFFFFFFFFFF8];
                goto LABEL_47;
              }
            }

            v50 = v47 + (__clz(__rbit64(v49 ^ v48)) >> 3);
          }

          if (v50 >= 2)
          {
            v52 = 135 * v50 + 1935;
            if (v42 < v52)
            {
              result = 117264;
              if (v30)
              {
                v52 -= ((0x1CA10u >> (v30 & 0xE)) & 0xE) + 39;
              }

              if (v42 < v52)
              {
                v32 = a8[v30];
              }

              v53 = v255;
              if (v42 < v52)
              {
                v53 = v52;
              }

              v255 = v53;
              if (v42 < v52)
              {
                v31 = v50;
                v29 = v50;
                v42 = v52;
              }
            }
          }
        }

        ++v30;
      }

      while (v30 != 10);
      v56 = v36 + 0x20000;
      v57 = *(v254 + 88);
      v58 = a2;
      v59 = a2 - *(v36 + 4 * v40);
      if (v57)
      {
        v60 = 0;
        v61 = *(v56 + 2 * v40);
        v62 = v59;
        do
        {
          v60 += v62;
          if (v60 > v23)
          {
            break;
          }

          if (v29 + v38 <= a4)
          {
            result = (v58 - v60) & a4;
            if (result + v29 <= a4 && *(a3 + v29 + v38) == *(a3 + result + v29))
            {
              v63 = a3 + result;
              if (v33 < 8)
              {
                v68 = 0;
                v69 = v39;
LABEL_86:
                if (v41)
                {
                  v236 = v41 | v68;
                  v77 = v41;
                  while (*(v63 + v68) == *v69)
                  {
                    ++v69;
                    ++v68;
                    if (!--v77)
                    {
                      v68 = v236;
                      break;
                    }
                  }
                }
              }

              else
              {
                v64 = 0;
                v65 = v33 >> 3;
                while (1)
                {
                  v66 = *&v39[v64];
                  v67 = *(v63 + v64);
                  if (v66 != v67)
                  {
                    break;
                  }

                  v64 += 8;
                  if (!--v65)
                  {
                    v68 = v33 & 0xFFFFFFFFFFFFFFF8;
                    v69 = &v39[v33 & 0xFFFFFFFFFFFFFFF8];
                    goto LABEL_86;
                  }
                }

                v68 = v64 + (__clz(__rbit64(v67 ^ v66)) >> 3);
              }

              v70 = 135 * v68 - 30 * (__clz(v60) ^ 0x1F) + 1920;
              if (v42 < v70)
              {
                result = v60;
              }

              else
              {
                result = v32;
              }

              v71 = v32;
              v72 = v255;
              if (v42 < v70)
              {
                v73 = v70;
              }

              else
              {
                v73 = v255;
              }

              if (v42 < v70)
              {
                v74 = v68;
              }

              else
              {
                v74 = v31;
              }

              if (v42 < v70)
              {
                v75 = v68;
              }

              else
              {
                v75 = v29;
              }

              if (v42 >= v70)
              {
                v70 = v42;
              }

              if (v68 >= 4)
              {
                v71 = result;
                v72 = v73;
              }

              v255 = v72;
              v32 = v71;
              if (v68 >= 4)
              {
                v31 = v74;
                v29 = v75;
                v42 = v70;
              }

              a3 = v256;
              v41 = v33 & 7;
            }
          }

          v76 = (v35 + 4 * v61);
          v61 = v76[1];
          v62 = *v76;
          --v57;
        }

        while (v57);
      }

      a7 = v254;
      v78 = *(v254 + 80);
      *(v254 + 80) = v78 + 1;
      *(v37 + v58) = v40;
      v79 = -1;
      if (v59 < 0xFFFF)
      {
        v79 = v59;
      }

      v80 = v58;
      v81 = (v35 + 4 * v78);
      *v81 = v79;
      v81[1] = *(v56 + 2 * v40);
      *(v36 + 4 * v40) = v58;
      *(v56 + 2 * v40) = v78;
      if (v255 == 2020)
      {
        v82 = *(v254 + 112);
        v84 = *(v82 + 40);
        v83 = *(v82 + 48);
        if (v83 < v84 >> 7)
        {
          goto LABEL_231;
        }

        v237 = 0;
        result = ((506832829 * *v39) >> 17) & 0x7FFE;
        v85 = *(v34 + 32);
        v86 = 1;
        v87 = v31;
        v255 = 2020;
        v88 = v32;
        do
        {
          v89 = v86;
          *(v82 + 40) = ++v84;
          v90 = *(v85 + result);
          if (!*(v85 + result) || v33 < v90)
          {
            goto LABEL_98;
          }

          v91 = *(*v34 + 4 * v90 + 32);
          v92 = *(*v34 + 168) + *(*(v34 + 24) + 2 * result) * *(v85 + result);
          v93 = (v92 + v91);
          if (v90 < 8)
          {
            v31 = 0;
LABEL_113:
            v99 = v90 & 7;
            if ((v90 & 7) != 0)
            {
              v100 = v31 | v99;
              while (v39[v31] == *v93)
              {
                ++v93;
                ++v31;
                if (!--v99)
                {
                  v31 = v100;
                  break;
                }
              }
            }
          }

          else
          {
            v94 = 0;
            v31 = v90 & 0xF8;
            v95 = (v92 + v31 + v91);
            while (1)
            {
              v96 = *&v93[v94];
              v97 = *&v39[v94];
              if (v96 != v97)
              {
                break;
              }

              v94 += 8;
              if (v31 == v94)
              {
                v93 = v95;
                goto LABEL_113;
              }
            }

            v31 = v94 + (__clz(__rbit64(v97 ^ v96)) >> 3);
          }

          if (v31 && v31 + *(v34 + 12) > v90 && (v32 = v228 + v246 + *(*(v34 + 24) + 2 * result) + ((((*(v34 + 16) >> (6 * (v90 - v31))) & 0x3FLL) + 4 * (v90 - v31)) << *(*v34 + v90)), v32 <= v252) && (v98 = 135 * v31 - 30 * (__clz(v32) ^ 0x1F) + 1920, v98 >= v255))
          {
            v237 = v90 - v31;
            *(v82 + 48) = ++v83;
            v255 = v98;
          }

          else
          {
LABEL_98:
            v32 = v88;
            v31 = v87;
          }

          v86 = 0;
          ++result;
          v87 = v31;
          v88 = v32;
        }

        while ((v89 & 1) != 0);
      }

      else
      {
        v237 = 0;
      }

      if (v255 >= 0x7E5)
      {
        v234 = v32;
        v101 = 0;
        v102 = *(v254 + 80);
        while (1)
        {
          v245 = v101;
          --v33;
          v103 = v31 - 1;
          if (v31 - 1 >= v33)
          {
            v103 = v33;
          }

          if (*(v241 + 4) >= 5)
          {
            v104 = 0;
          }

          else
          {
            v104 = v103;
          }

          v105 = v80 + 1;
          if (v80 + 1 < v239)
          {
            v106 = v80 + 1;
          }

          else
          {
            v106 = v239;
          }

          v107 = v105 + v240;
          if (v105 + v240 >= v239)
          {
            v107 = v239;
          }

          v242 = v107;
          v247 = v102;
          v249 = v80;
          v233 = v31;
          if (*(v241 + 632))
          {
            v108 = *(v231 + (*(v230 + v243) | *(a5 + *(a3 + (v80 & a4)))));
            v243 = *(a3 + (v80 & a4));
          }

          else
          {
            v108 = v244;
          }

          v109 = 0;
          v110 = 0;
          v111 = 0;
          v244 = v108;
          v112 = *(v238 + 8 * v108);
          v113 = *(a7 + 104);
          v253 = *(a7 + 96);
          v114 = v253 + 196608;
          v115 = v105 & a4;
          v116 = (a3 + (v105 & a4));
          v117 = (506832829 * *v116) >> 17;
          v250 = *(v241 + 80);
          v118 = 2020;
          v119 = 2020;
          do
          {
            v120 = a8[v109];
            v121 = v105 - v120;
            if ((!v109 || *(v114 + (v105 - v120)) == v117) && v106 >= v120 && v121 < v105)
            {
              v123 = a3 + (v121 & a4);
              if (v33 < 8)
              {
                v124 = 0;
                v126 = (a3 + (v105 & a4));
LABEL_156:
                if ((v33 & 7) != 0)
                {
                  v129 = v33 & 7;
                  do
                  {
                    if (*(v123 + v124) != *v126)
                    {
                      break;
                    }

                    v126 = (v126 + 1);
                    ++v124;
                    --v129;
                  }

                  while (v129);
                }
              }

              else
              {
                v124 = 0;
                v125 = v33 >> 3;
                v126 = (a3 + (v105 & a4));
                while (1)
                {
                  v127 = *(v123 + v124);
                  if (*v126 != v127)
                  {
                    break;
                  }

                  ++v126;
                  v124 += 8;
                  if (!--v125)
                  {
                    goto LABEL_156;
                  }
                }

                v124 += __clz(__rbit64(v127 ^ *v126)) >> 3;
              }

              if (v124 >= 2)
              {
                v128 = 135 * v124 + 1935;
                if (v118 < v128)
                {
                  if (v109)
                  {
                    v128 -= ((0x1CA10u >> (v109 & 0xE)) & 0xE) + 39;
                  }

                  if (v118 < v128)
                  {
                    v111 = v124;
                    v110 = a8[v109];
                    v119 = v128;
                    v104 = v124;
                    v118 = v128;
                  }
                }
              }
            }

            ++v109;
          }

          while (v109 != 10);
          v130 = v253 + 0x20000;
          v131 = *(v254 + 88);
          v132 = v105 - *(v253 + 4 * v117);
          if (v131)
          {
            v133 = 0;
            v134 = *(v130 + 2 * v117);
            v135 = v105 - *(v253 + 4 * v117);
            do
            {
              v133 += v135;
              if (v133 > v106)
              {
                break;
              }

              if (v104 + v115 <= a4)
              {
                v136 = (v105 - v133) & a4;
                if (v136 + v104 <= a4 && *(a3 + v104 + v115) == *(a3 + v136 + v104))
                {
                  v137 = a3 + v136;
                  if (v33 < 8)
                  {
                    v138 = 0;
                    v140 = v116;
LABEL_193:
                    if ((v33 & 7) != 0)
                    {
                      v148 = v33 & 7;
                      do
                      {
                        if (*(v137 + v138) != *v140)
                        {
                          break;
                        }

                        v140 = (v140 + 1);
                        ++v138;
                        --v148;
                      }

                      while (v148);
                    }
                  }

                  else
                  {
                    v138 = 0;
                    v139 = v33 >> 3;
                    v140 = v116;
                    while (1)
                    {
                      v141 = *(v137 + v138);
                      if (*v140 != v141)
                      {
                        break;
                      }

                      ++v140;
                      v138 += 8;
                      if (!--v139)
                      {
                        goto LABEL_193;
                      }
                    }

                    v138 += __clz(__rbit64(v141 ^ *v140)) >> 3;
                  }

                  v142 = 135 * v138 - 30 * (__clz(v133) ^ 0x1F) + 1920;
                  if (v118 < v142)
                  {
                    v143 = v138;
                  }

                  else
                  {
                    v143 = v111;
                  }

                  if (v118 < v142)
                  {
                    v144 = v133;
                  }

                  else
                  {
                    v144 = v110;
                  }

                  if (v118 < v142)
                  {
                    v145 = v142;
                  }

                  else
                  {
                    v145 = v119;
                  }

                  if (v118 < v142)
                  {
                    v146 = v138;
                  }

                  else
                  {
                    v146 = v104;
                  }

                  if (v118 >= v142)
                  {
                    v142 = v118;
                  }

                  if (v138 >= 4)
                  {
                    v111 = v143;
                    v110 = v144;
                    v119 = v145;
                    v104 = v146;
                    v118 = v142;
                  }

                  a3 = v256;
                }
              }

              v147 = (v113 + 4 * v134);
              v134 = v147[1];
              v135 = *v147;
              --v131;
            }

            while (v131);
          }

          *(v254 + 80) = v247 + 1;
          *(v114 + v105) = v117;
          v149 = -1;
          if (v132 < 0xFFFF)
          {
            v149 = v132;
          }

          v150 = (v113 + 4 * v247);
          *v150 = v149;
          v150[1] = *(v130 + 2 * v117);
          *(v253 + 4 * v117) = v105;
          *(v130 + 2 * v117) = v247;
          if (v119 == 2020)
          {
            v151 = *(v254 + 112);
            v153 = *(v151 + 40);
            v152 = *(v151 + 48);
            v154 = v249;
            v155 = 0;
            if (v152 >= v153 >> 7)
            {
              v157 = ((506832829 * *v116) >> 17) & 0x7FFE;
              v158 = *(v112 + 32);
              v159 = 1;
              v119 = 2020;
              v160 = v110;
              v161 = v111;
              do
              {
                v162 = v159;
                *(v151 + 40) = ++v153;
                v163 = *(v158 + v157);
                if (!*(v158 + v157) || v33 < v163)
                {
                  goto LABEL_211;
                }

                v164 = *(*v112 + 4 * v163 + 32);
                v165 = *(*v112 + 168) + *(*(v112 + 24) + 2 * v157) * *(v158 + v157);
                v166 = (v165 + v164);
                if (v163 < 8)
                {
                  v111 = 0;
LABEL_226:
                  v172 = v163 & 7;
                  if ((v163 & 7) != 0)
                  {
                    v173 = v111 | v172;
                    while (*(v116 + v111) == *v166)
                    {
                      ++v166;
                      ++v111;
                      if (!--v172)
                      {
                        v111 = v173;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v167 = 0;
                  v111 = v163 & 0xF8;
                  v168 = (v165 + v111 + v164);
                  while (1)
                  {
                    v169 = *&v166[v167];
                    v170 = *&v116[v167 / 4];
                    if (v169 != v170)
                    {
                      break;
                    }

                    v167 += 8;
                    if (v111 == v167)
                    {
                      v166 = v168;
                      goto LABEL_226;
                    }
                  }

                  v111 = v167 + (__clz(__rbit64(v170 ^ v169)) >> 3);
                }

                a3 = v256;
                if (v111 && v111 + *(v112 + 12) > v163 && (v110 = v228 + v242 + *(*(v112 + 24) + 2 * v157) + ((((*(v112 + 16) >> (6 * (v163 - v111))) & 0x3FLL) + 4 * (v163 - v111)) << *(*v112 + v163)), v110 <= v250) && (v171 = 135 * v111 - 30 * (__clz(v110) ^ 0x1F) + 1920, v171 >= v119))
                {
                  v155 = v163 - v111;
                  *(v151 + 48) = ++v152;
                  v119 = v171;
                }

                else
                {
LABEL_211:
                  v111 = v161;
                  v110 = v160;
                }

                v159 = 0;
                ++v157;
                v160 = v110;
                v161 = v111;
              }

              while ((v162 & 1) != 0);
            }

            else
            {
              v119 = 2020;
            }
          }

          else
          {
            v155 = 0;
            v154 = v249;
          }

          if (v119 < v255 + 175)
          {
            break;
          }

          ++v251;
          a7 = v254;
          if (v245 <= 2)
          {
            v156 = v154 + 5;
            v101 = v245 + 1;
            v102 = v247 + 1;
            v234 = v110;
            v255 = v119;
            v237 = v155;
            v31 = v111;
            v80 = v105;
            if (v156 < v235)
            {
              continue;
            }
          }

          goto LABEL_245;
        }

        v183 = v154 + v240;
        if (v154 + v240 >= v239)
        {
          v183 = v239;
        }

        v242 = v183;
        v111 = v233;
        v110 = v234;
        v155 = v237;
        v105 = v154;
        a7 = v254;
LABEL_245:
        result = v226;
        a6 = v241;
        v13 = a10;
        v15 = v235;
        if (v110 > v242 + v225)
        {
LABEL_246:
          v184 = v110 + 15;
          goto LABEL_247;
        }

        v186 = *a8;
        if (v110 == v186)
        {
          v184 = 0;
LABEL_252:
          *v229 = v251;
          *(v229 + 4) = v111 | (v155 << 25);
          v187 = *(v241 + 68);
          v188 = v187 + 16;
          if (v187 + 16 <= v184)
          {
            v190 = *(v241 + 64);
            v191 = v184 - v187 + (4 << v190) - 16;
            v192 = (__clz(v191) ^ 0x1F) - 1;
            v193 = ((v191 >> v192) & 1 | 2) << v192;
            a6 = v241;
            v184 = ((v191 & ~(-1 << v190)) + v188 + ((((v191 >> v192) & 1 | (2 * (v192 - v190))) + 65534) << v190)) | ((v192 - v190) << 10);
            v189 = (v191 - v193) >> v190;
          }

          else
          {
            LODWORD(v189) = 0;
          }

          *(v229 + 14) = v184;
          *(v229 + 8) = v189;
          if (v251 > 5)
          {
            if (v251 > 0x81)
            {
              if (v251 > 0x841)
              {
                if (v251 >> 1 >= 0xC21)
                {
                  if (v251 < 0x5842)
                  {
                    LOWORD(v194) = 22;
                  }

                  else
                  {
                    LOWORD(v194) = 23;
                  }
                }

                else
                {
                  LOWORD(v194) = 21;
                }
              }

              else
              {
                v194 = (__clz(v251 - 66) ^ 0x1F) + 10;
              }
            }

            else
            {
              v195 = (__clz(v251 - 2) ^ 0x1F) - 1;
              v194 = ((v251 - 2) >> v195) + 2 * v195 + 2;
            }
          }

          else
          {
            LOWORD(v194) = v251;
          }

          v208 = v155 + v111;
          if ((v155 + v111) > 9)
          {
            if (v208 > 0x85)
            {
              if (v208 > 0x845)
              {
                LOWORD(v208) = 23;
              }

              else
              {
                v208 = (__clz(v208 - 70) ^ 0x1F) + 12;
              }
            }

            else
            {
              v209 = v208 - 6;
              v210 = (__clz(v209) ^ 0x1F) - 1;
              v208 = (v209 >> v210) + 2 * v210 + 4;
            }
          }

          else
          {
            LOWORD(v208) = v208 - 2;
          }

          v211 = v208 & 7 | (8 * (v194 & 7));
          if ((v184 & 0x3FF) != 0 || v194 > 7u || v208 > 0xFu)
          {
            v213 = 3 * (v194 >> 3) + ((v208 & 0xFFF8) >> 3);
            v212 = ((((0x520D40u >> (2 * v213)) & 0xC0) + (v213 << 6)) | v211) + 64;
          }

          else
          {
            LOWORD(v212) = v211 | 0x40;
            if ((v208 & 0xFFF8) == 0)
            {
              LOWORD(v212) = v208 & 7 | (8 * (v194 & 7));
            }
          }

          *(v229 + 12) = v212;
          *a12 += v251;
          v214 = v105 + 2;
          v174 = v105 + v111;
          if (v105 + v111 >= v227)
          {
            v215 = v227;
          }

          else
          {
            v215 = v105 + v111;
          }

          if (v110 < v111 >> 2)
          {
            v216 = v174 - 4 * v110;
            if (v214 > v216)
            {
              v216 = v105 + 2;
            }

            if (v215 >= v216)
            {
              v214 = v216;
            }

            else
            {
              v214 = v215;
            }
          }

          v21 = v226 + 2 * v111 + v105;
          v22 = v229 + 16;
          if (v214 >= v215)
          {
            v14 = 0;
            goto LABEL_313;
          }

          v217 = *(a7 + 96);
          v218 = *(a7 + 104);
          v219 = v217 + 0x20000;
          v179 = *(a7 + 80);
          do
          {
            v220 = (506832829 * *(a3 + (v214 & a4))) >> 17;
            v221 = v214 - *(v217 + 4 * v220);
            *(v217 + 196608 + v214) = v220;
            if (v221 >= 0xFFFF)
            {
              LOWORD(v221) = -1;
            }

            result = v218 + 4 * v179;
            *result = v221;
            *(result + 2) = *(v219 + 2 * v220);
            *(v219 + 2 * v220) = v179++;
            *(v217 + 4 * v220) = v214++;
          }

          while (v215 != v214);
          v14 = 0;
          goto LABEL_310;
        }

        v203 = a8[1];
        if (v110 == v203)
        {
          v184 = 1;
        }

        else
        {
          v204 = v110 + 3 - v186;
          if (v204 > 6)
          {
            v207 = v110 + 3 - v203;
            if (v207 > 6)
            {
              if (v110 == a8[2])
              {
                v184 = 2;
              }

              else
              {
                if (v110 != a8[3])
                {
                  goto LABEL_246;
                }

                v184 = 3;
              }

              goto LABEL_247;
            }

            v205 = 4 * v207;
            v206 = 266017486;
          }

          else
          {
            v205 = 4 * v204;
            v206 = 158663784;
          }

          v184 = (v206 >> v205) & 0xF;
        }

LABEL_247:
        if (v110 <= v242 + v225 && v184)
        {
          a8[3] = a8[2];
          *(a8 + 1) = *a8;
          *a8 = v110;
          v185 = vdupq_n_s32(v110);
          *(a8 + 1) = vaddq_s32(v185, xmmword_240C11260);
          *(a8 + 4) = vadd_s32(*v185.i8, 0x3FFFFFFFDLL);
        }

        goto LABEL_252;
      }

LABEL_231:
      v14 = v251 + 1;
      v174 = v58 + 1;
      v21 = v248;
      if (v58 + 1 > v248)
      {
        v13 = a10;
        v15 = v235;
        result = 0xFFFFLL;
        v22 = v229;
        if (v174 > v248 + v224)
        {
          v175 = v222;
          if (v58 + 17 < v222)
          {
            v175 = v58 + 17;
          }

          if (v174 < v175)
          {
            v176 = *(v254 + 96);
            v177 = *(v254 + 104);
            v178 = v176 + 0x20000;
            v179 = *(v254 + 80);
            do
            {
              v180 = (506832829 * *(a3 + (v174 & a4))) >> 17;
              v181 = v174 - *(v176 + 4 * v180);
              *(v176 + 196608 + v174) = v180;
              if (v181 >= 0xFFFF)
              {
                LOWORD(v181) = -1;
              }

              v182 = (v177 + 4 * v179);
              *v182 = v181;
              v182[1] = *(v178 + 2 * v180);
              *(v178 + 2 * v180) = v179++;
              *(v176 + 4 * v180) = v174;
              v14 += 4;
              v174 += 4;
            }

            while (v174 < v175);
            goto LABEL_310;
          }

LABEL_311:
          a6 = v241;
          goto LABEL_313;
        }

        v196 = v223;
        if (v58 + 9 < v223)
        {
          v196 = v58 + 9;
        }

        if (v174 >= v196)
        {
          goto LABEL_311;
        }

        v197 = *(v254 + 96);
        v198 = *(v254 + 104);
        v199 = v197 + 0x20000;
        v179 = *(v254 + 80);
        do
        {
          v200 = (506832829 * *(a3 + (v174 & a4))) >> 17;
          v201 = v174 - *(v197 + 4 * v200);
          *(v197 + 196608 + v174) = v200;
          if (v201 >= 0xFFFF)
          {
            LOWORD(v201) = -1;
          }

          v202 = (v198 + 4 * v179);
          *v202 = v201;
          v202[1] = *(v199 + 2 * v200);
          *(v199 + 2 * v200) = v179++;
          *(v197 + 4 * v200) = v174;
          v14 += 2;
          v174 += 2;
        }

        while (v174 < v196);
LABEL_310:
        *(a7 + 80) = v179;
        goto LABEL_311;
      }

      v13 = a10;
      a6 = v241;
      v15 = v235;
      v22 = v229;
LABEL_313:
      a2 = v174;
      if (v174 + 4 >= v15)
      {
        goto LABEL_320;
      }
    }
  }

  v22 = a10;
  v174 = a2;
LABEL_320:
  *a9 = v14 + v15 - v174;
  *a11 += (v22 - v13) >> 4;
  return result;
}

unint64_t sub_240AF6E54(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, int *a8, double a9, int32x4_t a10, double a11, double a12, double a13, int32x4_t a14, unint64_t *a15, uint64_t a16, void *a17, void *a18)
{
  v19 = a2;
  v20 = a16;
  v268 = *(a6 + 16);
  v21 = *a15;
  v22 = a2 + result;
  v23 = a2 + result - 3;
  v249 = v23;
  if (result <= 3)
  {
    v23 = a2;
  }

  v253 = v23;
  v24 = *(a6 + 8);
  v25 = 64;
  if (*(a6 + 4) >= 9)
  {
    v25 = 512;
  }

  v26 = *(a6 + 104);
  a10.i64[0] = *a8;
  v27 = vaddq_s32(vzip1q_s32(a10, a10), xmmword_240C11270);
  v28 = vdupq_lane_s32(*a8, 1);
  *(a8 + 1) = vaddq_s32(vdupq_lane_s32(*a8, 0), xmmword_240C11260);
  *(a8 + 2) = v27;
  *(a8 + 3) = vaddq_s32(v28, xmmword_240C11280);
  if (result < 5)
  {
    v30 = a16;
    v192 = a2;
    goto LABEL_314;
  }

  v269 = a7 + 10;
  v251 = v26;
  v29 = v25 + a2;
  v257 = a6 + 637;
  v256 = a5 + 256;
  v266 = a6 + 704;
  v267 = (1 << v24) - 16;
  v254 = v26 + 1;
  v250 = 4 * v25;
  v248 = v22 - 4;
  v30 = a16;
  v273 = a7;
  v281 = a3;
  v252 = v25;
  v265 = a6;
  v262 = a2 + result;
  do
  {
    if (v19 >= v267)
    {
      result = v267;
    }

    else
    {
      result = v19;
    }

    v31 = v19 + v268;
    if (v19 + v268 >= v267)
    {
      v31 = v267;
    }

    v270 = v31;
    v255 = v30;
    v278 = v29;
    v280 = v21;
    if (*(a6 + 632))
    {
      if (v19)
      {
        v32 = *(a3 + ((v19 - 1) & a4));
        v33 = a5;
        if (v19 == 1)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a3 + ((v19 - 2) & a4));
        }
      }

      else
      {
        v32 = 0;
        v34 = 0;
        v33 = a5;
      }

      v272 = v32;
      v35 = *(v257 + (*(v256 + v34) | *(v33 + v32)));
    }

    else
    {
      v35 = 0;
      v272 = 0;
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = v22 - v19;
    v274 = v35;
    v275 = *(v266 + 8 * v35);
    v283 = *(a6 + 80);
    v41 = a7[139];
    v42 = v41 + 196608;
    v43 = v19 & a4;
    v44 = (a3 + (v19 & a4));
    v45 = (506832829 * *v44) >> 17;
    v46 = (v22 - v19) >> 3;
    v47 = (v22 - v19) & 7;
    v261 = (v22 - v19) & 0xFFFFFFFFFFFFFFF8;
    v48 = 2020;
    v49 = 2020;
    v263 = v47;
    do
    {
      v50 = a8[v37];
      v51 = v19 - v50;
      if ((!v37 || *(v42 + (v19 - v50)) == v45) && result >= v50 && v51 < v19)
      {
        v53 = a3 + (v51 & a4);
        if (v40 < 8)
        {
          v59 = 0;
          v58 = (a3 + (v19 & a4));
LABEL_42:
          if (v47)
          {
            v61 = v47;
            v62 = v47 | v59;
            while (*(v53 + v59) == *v58)
            {
              ++v58;
              ++v59;
              if (!--v61)
              {
                v59 = v62;
                break;
              }
            }

            v47 = v263;
          }
        }

        else
        {
          v54 = 0;
          v55 = v46;
          while (1)
          {
            v56 = *&v44[v54];
            v57 = *(v53 + v54);
            if (v56 != v57)
            {
              break;
            }

            v54 += 8;
            if (!--v55)
            {
              v58 = &v44[v261];
              v59 = v261;
              goto LABEL_42;
            }
          }

          v59 = v54 + (__clz(__rbit64(v57 ^ v56)) >> 3);
        }

        if (v59 >= 2)
        {
          v60 = 135 * v59 + 1935;
          if (v48 < v60)
          {
            if (v37)
            {
              v60 -= ((0x1CA10u >> (v37 & 0xE)) & 0xE) + 39;
            }

            if (v48 < v60)
            {
              v39 = a8[v37];
              v49 = v60;
              v38 = v59;
              v36 = v59;
              v48 = v60;
            }
          }
        }
      }

      ++v37;
    }

    while (v37 != 16);
    v282 = v49;
    v63 = v41 + 0x20000;
    v64 = (((506832829 * *v44) >> 16) >> 1) & 0x1FF;
    v65 = a7[138];
    v66 = v19 - *(v41 + 4 * v45);
    v67 = a7[140] + (v64 << 11);
    if (v65)
    {
      v68 = 0;
      v69 = *(v63 + 2 * v45);
      v70 = v19 - *(v41 + 4 * v45);
      do
      {
        v68 += v70;
        if (v68 > result)
        {
          break;
        }

        if (v36 + v43 <= a4)
        {
          v71 = v19;
          v72 = (v19 - v68) & a4;
          if (v72 + v36 <= a4 && *(a3 + v36 + v43) == *(a3 + v72 + v36))
          {
            v73 = a3 + v72;
            if (v40 < 8)
            {
              v78 = 0;
              v79 = v44;
LABEL_83:
              v87 = v263;
              if (v263)
              {
                v88 = v263 | v78;
                while (*(v73 + v78) == *v79)
                {
                  ++v79;
                  ++v78;
                  if (!--v87)
                  {
                    v78 = v88;
                    break;
                  }
                }
              }
            }

            else
            {
              v74 = 0;
              v75 = v46;
              while (1)
              {
                v76 = *&v44[v74];
                v77 = *(v73 + v74);
                if (v76 != v77)
                {
                  break;
                }

                v74 += 8;
                if (!--v75)
                {
                  v79 = &v44[v261];
                  v78 = v261;
                  goto LABEL_83;
                }
              }

              v78 = v74 + (__clz(__rbit64(v77 ^ v76)) >> 3);
            }

            v80 = 135 * v78 - 30 * (__clz(v68) ^ 0x1F) + 1920;
            if (v48 < v80)
            {
              v81 = v68;
            }

            else
            {
              v81 = v39;
            }

            v82 = v282;
            if (v48 < v80)
            {
              v83 = v80;
            }

            else
            {
              v83 = v282;
            }

            if (v48 < v80)
            {
              v84 = v78;
            }

            else
            {
              v84 = v38;
            }

            if (v48 < v80)
            {
              v85 = v78;
            }

            else
            {
              v85 = v36;
            }

            if (v48 >= v80)
            {
              v80 = v48;
            }

            if (v78 >= 4)
            {
              v39 = v81;
              v82 = v83;
            }

            v282 = v82;
            if (v78 >= 4)
            {
              v38 = v84;
              v36 = v85;
              v48 = v80;
            }

            a7 = v273;
            a3 = v281;
          }

          v19 = v71;
        }

        v86 = (v67 + 4 * v69);
        v69 = v86[1];
        v70 = *v86;
        --v65;
      }

      while (v65);
    }

    v89 = *(v269 + v64);
    *(v269 + v64) = v89 + 1;
    v90 = v89 & 0x1FF;
    *(v42 + v19) = v45;
    v91 = -1;
    if (v66 < 0xFFFF)
    {
      v91 = v66;
    }

    v92 = (v67 + 4 * v90);
    *v92 = v91;
    v92[1] = *(v63 + 2 * v45);
    *(v41 + 4 * v45) = v19;
    *(v63 + 2 * v45) = v90;
    if (v282 == 2020)
    {
      v93 = a7[141];
      v94 = *(v93 + 40);
      result = *(v93 + 48);
      a6 = v265;
      if (result < v94 >> 7)
      {
        goto LABEL_229;
      }

      v264 = 0;
      v95 = ((506832829 * *v44) >> 17) & 0x7FFE;
      v96 = *(v275 + 32);
      v97 = 1;
      v98 = v38;
      v282 = 2020;
      v99 = v39;
      do
      {
        v100 = v97;
        *(v93 + 40) = ++v94;
        v101 = *(v96 + v95);
        if (!*(v96 + v95) || v40 < v101)
        {
          goto LABEL_95;
        }

        v104 = *(*v275 + 4 * v101 + 32);
        v105 = *(*v275 + 168) + *(*(v275 + 24) + 2 * v95) * *(v96 + v95);
        v106 = (v105 + v104);
        if (v101 < 8)
        {
          v103 = 0;
LABEL_110:
          v112 = v101 & 7;
          if ((v101 & 7) != 0)
          {
            v113 = v103 | v112;
            while (v44[v103] == *v106)
            {
              ++v106;
              ++v103;
              if (!--v112)
              {
                v103 = v113;
                break;
              }
            }
          }
        }

        else
        {
          v107 = 0;
          v108 = (v105 + (v101 & 0xF8) + v104);
          while (1)
          {
            v109 = *&v106[v107];
            v110 = *&v44[v107];
            if (v109 != v110)
            {
              break;
            }

            v107 += 8;
            if ((v101 & 0xF8) == v107)
            {
              v106 = v108;
              v103 = v101 & 0xF8;
              goto LABEL_110;
            }
          }

          v103 = v107 + (__clz(__rbit64(v110 ^ v109)) >> 3);
        }

        if (v103 && v103 + *(v275 + 12) > v101 && (v102 = v254 + v270 + *(*(v275 + 24) + 2 * v95) + ((((*(v275 + 16) >> (6 * (v101 - v103))) & 0x3FLL) + 4 * (v101 - v103)) << *(*v275 + v101)), v102 <= v283) && (v111 = 135 * v103 - 30 * (__clz(v102) ^ 0x1F) + 1920, v111 >= v282))
        {
          v264 = v101 - v103;
          *(v93 + 48) = ++result;
          v282 = v111;
        }

        else
        {
LABEL_95:
          v102 = v99;
          v103 = v98;
        }

        v97 = 0;
        ++v95;
        v98 = v103;
        v99 = v102;
      }

      while ((v100 & 1) != 0);
    }

    else
    {
      v264 = 0;
      a6 = v265;
      v103 = v38;
      v102 = v39;
    }

    if (v282 < 0x7E5)
    {
LABEL_229:
      v29 = v278;
      v21 = v280 + 1;
      v192 = v19 + 1;
      if (v19 + 1 <= v278)
      {
        v20 = a16;
        v22 = v262;
        v30 = v255;
      }

      else
      {
        v20 = a16;
        v22 = v262;
        v30 = v255;
        if (v192 <= v278 + v250)
        {
          v217 = v19 + 9;
          if (v19 + 9 >= v249)
          {
            v217 = v249;
          }

          if (v192 < v217)
          {
            v218 = a7[139];
            v219 = v218 + 0x20000;
            v220 = a7[140];
            do
            {
              v221 = (506832829 * *(a3 + (v192 & a4))) >> 17;
              v222 = *(v269 + (v221 & 0x1FF));
              *(v269 + (v221 & 0x1FF)) = v222 + 1;
              v223 = v222 & 0x1FF;
              v224 = v192 - *(v218 + 4 * v221);
              result = v192;
              *(v218 + 196608 + v192) = v221;
              if (v224 >= 0xFFFF)
              {
                LOWORD(v224) = -1;
              }

              v225 = (v220 + ((v221 & 0x1FF) << 11) + 4 * v223);
              *v225 = v224;
              v226 = *(v219 + 2 * v221);
              *(v218 + 4 * v221) = v192;
              v225[1] = v226;
              *(v219 + 2 * v221) = v223;
              v21 += 2;
              v192 += 2;
            }

            while (v192 < v217);
          }
        }

        else
        {
          v193 = v19 + 17;
          if (v19 + 17 >= v248)
          {
            v193 = v248;
          }

          if (v192 < v193)
          {
            v194 = a7[139];
            v195 = v194 + 0x20000;
            v196 = a7[140];
            do
            {
              v197 = (506832829 * *(a3 + (v192 & a4))) >> 17;
              v198 = *(v269 + (v197 & 0x1FF));
              *(v269 + (v197 & 0x1FF)) = v198 + 1;
              v199 = v198 & 0x1FF;
              v200 = v192 - *(v194 + 4 * v197);
              result = v192;
              *(v194 + 196608 + v192) = v197;
              if (v200 >= 0xFFFF)
              {
                LOWORD(v200) = -1;
              }

              v201 = (v196 + ((v197 & 0x1FF) << 11) + 4 * v199);
              *v201 = v200;
              v202 = *(v195 + 2 * v197);
              *(v194 + 4 * v197) = v192;
              v201[1] = v202;
              *(v195 + 2 * v197) = v199;
              v21 += 4;
              v192 += 4;
            }

            while (v192 < v193);
          }
        }
      }

      goto LABEL_307;
    }

    v260 = v102;
    v114 = 0;
    v115 = v19;
    while (1)
    {
      v276 = v114;
      --v40;
      v116 = v103 - 1;
      if (v103 - 1 >= v40)
      {
        v116 = v40;
      }

      if (*(a6 + 4) >= 5)
      {
        v117 = 0;
      }

      else
      {
        v117 = v116;
      }

      v118 = v115 + 1;
      if (v115 + 1 < v267)
      {
        v119 = v115 + 1;
      }

      else
      {
        v119 = v267;
      }

      v120 = v118 + v268;
      if (v118 + v268 >= v267)
      {
        v120 = v267;
      }

      v271 = v120;
      v277 = v115;
      if (*(a6 + 632))
      {
        v121 = *(v257 + (*(v256 + v272) | *(a5 + *(a3 + (v115 & a4)))));
        v272 = *(a3 + (v115 & a4));
      }

      else
      {
        v121 = v274;
      }

      v122 = 0;
      result = 0;
      v123 = 0;
      v274 = v121;
      v284 = *(v266 + 8 * v121);
      v279 = *(a6 + 80);
      v124 = a7[139];
      v125 = v124 + 196608;
      v126 = v118 & a4;
      v127 = (a3 + (v118 & a4));
      v128 = (506832829 * *v127) >> 17;
      v129 = 2020;
      v130 = 2020;
      do
      {
        v131 = a8[v122];
        v132 = v118 - v131;
        if ((!v122 || *(v125 + (v118 - v131)) == v128) && v119 >= v131 && v132 < v118)
        {
          v134 = a3 + (v132 & a4);
          if (v40 < 8)
          {
            v135 = 0;
            v137 = (a3 + (v118 & a4));
LABEL_154:
            v140 = v40 & 7;
            if ((v40 & 7) != 0)
            {
              do
              {
                if (*(v134 + v135) != *v137)
                {
                  break;
                }

                v137 = (v137 + 1);
                ++v135;
                --v140;
              }

              while (v140);
            }
          }

          else
          {
            v135 = 0;
            v136 = v40 >> 3;
            v137 = (a3 + (v118 & a4));
            while (1)
            {
              v138 = *(v134 + v135);
              if (*v137 != v138)
              {
                break;
              }

              ++v137;
              v135 += 8;
              if (!--v136)
              {
                goto LABEL_154;
              }
            }

            v135 += __clz(__rbit64(v138 ^ *v137)) >> 3;
          }

          if (v135 >= 2)
          {
            v139 = 135 * v135 + 1935;
            if (v129 < v139)
            {
              if (v122)
              {
                v139 -= ((0x1CA10u >> (v122 & 0xE)) & 0xE) + 39;
              }

              if (v129 < v139)
              {
                v123 = v135;
                result = a8[v122];
                v130 = v139;
                v117 = v135;
                v129 = v139;
              }
            }
          }
        }

        ++v122;
      }

      while (v122 != 16);
      v259 = v103;
      v141 = v124 + 0x20000;
      v142 = (((506832829 * *v127) >> 16) >> 1) & 0x1FF;
      v143 = a7[138];
      v144 = *(v124 + 4 * v128);
      v145 = v118 - v144;
      v146 = a7[140] + (v142 << 11);
      if (v143)
      {
        v147 = 0;
        v148 = *(v141 + 2 * v128);
        v149 = v118 - v144;
        do
        {
          v147 += v149;
          if (v147 > v119)
          {
            break;
          }

          if (v117 + v126 <= a4)
          {
            v150 = (v118 - v147) & a4;
            if (v150 + v117 <= a4 && *(a3 + v117 + v126) == *(a3 + v150 + v117))
            {
              v151 = a3 + v150;
              if (v40 < 8)
              {
                v152 = 0;
                v154 = v127;
LABEL_190:
                v162 = v40 & 7;
                if ((v40 & 7) != 0)
                {
                  do
                  {
                    if (*(v151 + v152) != *v154)
                    {
                      break;
                    }

                    v154 = (v154 + 1);
                    ++v152;
                    --v162;
                  }

                  while (v162);
                }
              }

              else
              {
                v152 = 0;
                v153 = v40 >> 3;
                v154 = v127;
                while (1)
                {
                  v155 = *(v151 + v152);
                  if (*v154 != v155)
                  {
                    break;
                  }

                  ++v154;
                  v152 += 8;
                  if (!--v153)
                  {
                    goto LABEL_190;
                  }
                }

                v152 += __clz(__rbit64(v155 ^ *v154)) >> 3;
              }

              v156 = 135 * v152 - 30 * (__clz(v147) ^ 0x1F) + 1920;
              if (v129 < v156)
              {
                v157 = v152;
              }

              else
              {
                v157 = v123;
              }

              if (v129 < v156)
              {
                v158 = v147;
              }

              else
              {
                v158 = result;
              }

              if (v129 < v156)
              {
                v159 = v156;
              }

              else
              {
                v159 = v130;
              }

              if (v129 < v156)
              {
                v160 = v152;
              }

              else
              {
                v160 = v117;
              }

              if (v129 >= v156)
              {
                v156 = v129;
              }

              if (v152 >= 4)
              {
                v123 = v157;
                result = v158;
                v130 = v159;
                v117 = v160;
                v129 = v156;
              }

              a7 = v273;
              a3 = v281;
            }
          }

          v161 = (v146 + 4 * v148);
          v148 = v161[1];
          v149 = *v161;
          --v143;
        }

        while (v143);
      }

      v163 = *(v269 + v142);
      *(v269 + v142) = v163 + 1;
      v164 = v163 & 0x1FF;
      *(v125 + v118) = v128;
      v165 = -1;
      if (v145 < 0xFFFF)
      {
        v165 = v145;
      }

      v166 = (v146 + 4 * v164);
      *v166 = v165;
      v166[1] = *(v141 + 2 * v128);
      *(v124 + 4 * v128) = v118;
      *(v141 + 2 * v128) = v164;
      if (v130 == 2020)
      {
        v167 = a7;
        v168 = a7[141];
        v169 = *(v168 + 40);
        v170 = *(v168 + 48);
        a6 = v265;
        v171 = 0;
        if (v170 < v169 >> 7)
        {
          v130 = 2020;
          goto LABEL_200;
        }

        v172 = ((506832829 * *v127) >> 17) & 0x7FFE;
        v173 = v284;
        v174 = v284[4];
        v175 = 1;
        v130 = 2020;
        v176 = result;
        v177 = v123;
        while (1)
        {
          v178 = v175;
          *(v168 + 40) = ++v169;
          v179 = *(v174 + v172);
          if (!*(v174 + v172) || v40 < v179)
          {
            goto LABEL_207;
          }

          v180 = *(v173[3] + 2 * v172);
          v181 = *v173;
          v182 = *(*v173 + 4 * v179 + 32);
          v183 = *(*v173 + 168) + v180 * *(v174 + v172);
          v184 = (v183 + v182);
          if (v179 < 8)
          {
            v123 = 0;
LABEL_224:
            v190 = v179 & 7;
            if ((v179 & 7) == 0)
            {
              goto LABEL_215;
            }

            v191 = v123 | v190;
            while (*(v127 + v123) == *v184)
            {
              ++v184;
              ++v123;
              if (!--v190)
              {
                v123 = v191;
                break;
              }
            }
          }

          else
          {
            v185 = 0;
            v123 = v179 & 0xF8;
            v186 = (v183 + v123 + v182);
            while (1)
            {
              v187 = *&v184[v185];
              v188 = *&v127[v185 / 4];
              if (v187 != v188)
              {
                break;
              }

              v185 += 8;
              if (v123 == v185)
              {
                v184 = v186;
                v173 = v284;
                goto LABEL_224;
              }
            }

            v123 = v185 + (__clz(__rbit64(v188 ^ v187)) >> 3);
          }

          v173 = v284;
LABEL_215:
          if (!v123 || v123 + *(v173 + 3) <= v179 || (result = v254 + v271 + v180 + ((((v173[2] >> (6 * (v179 - v123))) & 0x3F) + 4 * (v179 - v123)) << *(v181 + v179)), result > v279))
          {
            v123 = v177;
            result = v176;
            goto LABEL_219;
          }

          v189 = __clz(result) ^ 0x1F;
          if (135 * v123 - 30 * v189 + 1920 >= v130)
          {
            v171 = v179 - v123;
            *(v168 + 48) = ++v170;
            v130 = 135 * v123 - 30 * v189 + 1920;
            goto LABEL_219;
          }

LABEL_207:
          v123 = v177;
          result = v176;
LABEL_219:
          v175 = 0;
          ++v172;
          v176 = result;
          v177 = v123;
          if ((v178 & 1) == 0)
          {
            goto LABEL_200;
          }
        }
      }

      v167 = a7;
      v171 = 0;
      a6 = v265;
LABEL_200:
      if (v130 < v282 + 175)
      {
        break;
      }

      a3 = v281;
      ++v280;
      if (v276 > 2)
      {
        goto LABEL_243;
      }

      v114 = v276 + 1;
      v260 = result;
      v282 = v130;
      v264 = v171;
      v103 = v123;
      v115 = v118;
      a7 = v167;
      if (v277 + 5 >= v262)
      {
        goto LABEL_244;
      }
    }

    v118 = v277;
    v203 = v277 + v268;
    if (v277 + v268 >= v267)
    {
      v203 = v267;
    }

    v271 = v203;
    v123 = v259;
    result = v260;
    v171 = v264;
    a3 = v281;
LABEL_243:
    a7 = v167;
LABEL_244:
    v20 = a16;
    v22 = v262;
    if (result > v271 + v251)
    {
LABEL_245:
      v204 = result + 15;
      goto LABEL_246;
    }

    v207 = *a8;
    if (result == v207)
    {
      v204 = 0;
      goto LABEL_251;
    }

    v227 = a8[1];
    if (result == v227)
    {
      v204 = 1;
    }

    else
    {
      v228 = result + 3 - v207;
      if (v228 > 6)
      {
        v231 = result + 3 - v227;
        if (v231 > 6)
        {
          if (result == a8[2])
          {
            v204 = 2;
          }

          else
          {
            if (result != a8[3])
            {
              goto LABEL_245;
            }

            v204 = 3;
          }

          goto LABEL_246;
        }

        v229 = 4 * v231;
        v230 = 266017486;
      }

      else
      {
        v229 = 4 * v228;
        v230 = 158663784;
      }

      v204 = (v230 >> v229) & 0xF;
    }

LABEL_246:
    if (result <= v271 + v251 && v204)
    {
      a8[3] = a8[2];
      v27.i64[0] = *a8;
      *(a8 + 1) = *a8;
      *a8 = result;
      a14.i32[0] = result;
      *(a8 + 1) = vaddq_s32(vdupq_n_s32(result), xmmword_240C11260);
      a8[8] = result - 3;
      v205 = vzip1q_s32(a14, v27);
      a14 = vdupq_lane_s32(*v205.i8, 1);
      v206 = vaddq_s32(vzip1q_s32(v205, a14), xmmword_240C11290);
      *a14.i8 = vdup_lane_s32(*v27.i8, 0);
      *(a8 + 9) = v206;
      *(a8 + 13) = vadd_s32(*a14.i8, 0xFFFFFFFD00000002);
      a8[15] = v27.i32[0] + 3;
    }

LABEL_251:
    *v255 = v280;
    *(v255 + 4) = v123 | (v171 << 25);
    v208 = *(a6 + 68);
    v209 = v208 + 16;
    if (v208 + 16 <= v204)
    {
      v211 = *(a6 + 64);
      v212 = v204 - v208 + (4 << v211) - 16;
      v213 = (__clz(v212) ^ 0x1F) - 1;
      v214 = ((v212 >> v213) & 1 | 2) << v213;
      v204 = ((v212 & ~(-1 << v211)) + v209 + ((((v212 >> v213) & 1 | (2 * (v213 - v211))) + 65534) << v211)) | ((v213 - v211) << 10);
      v210 = (v212 - v214) >> v211;
    }

    else
    {
      LODWORD(v210) = 0;
    }

    *(v255 + 14) = v204;
    *(v255 + 8) = v210;
    if (v280 > 5)
    {
      if (v280 > 0x81)
      {
        if (v280 > 0x841)
        {
          if (v280 >> 1 >= 0xC21)
          {
            if (v280 < 0x5842)
            {
              LOWORD(v215) = 22;
            }

            else
            {
              LOWORD(v215) = 23;
            }
          }

          else
          {
            LOWORD(v215) = 21;
          }
        }

        else
        {
          v215 = (__clz(v280 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v216 = (__clz(v280 - 2) ^ 0x1F) - 1;
        v215 = ((v280 - 2) >> v216) + 2 * v216 + 2;
      }
    }

    else
    {
      LOWORD(v215) = v280;
    }

    v232 = v171 + v123;
    if ((v171 + v123) > 9)
    {
      if (v232 > 0x85)
      {
        if (v232 > 0x845)
        {
          LOWORD(v232) = 23;
        }

        else
        {
          v232 = (__clz(v232 - 70) ^ 0x1F) + 12;
        }
      }

      else
      {
        v233 = v232 - 6;
        v234 = (__clz(v233) ^ 0x1F) - 1;
        v232 = (v233 >> v234) + 2 * v234 + 4;
      }
    }

    else
    {
      LOWORD(v232) = v232 - 2;
    }

    v235 = v232 & 7 | (8 * (v215 & 7));
    if ((v204 & 0x3FF) != 0 || v215 > 7u || v232 > 0xFu)
    {
      v237 = 3 * (v215 >> 3) + ((v232 & 0xFFF8) >> 3);
      v236 = ((((0x520D40u >> (2 * v237)) & 0xC0) + (v237 << 6)) | v235) + 64;
    }

    else
    {
      LOWORD(v236) = v235 | 0x40;
      if ((v232 & 0xFFF8) == 0)
      {
        LOWORD(v236) = v232 & 7 | (8 * (v215 & 7));
      }
    }

    *(v255 + 12) = v236;
    *a18 += v280;
    v238 = v118 + 2;
    v192 = v118 + v123;
    v239 = v253;
    if (v118 + v123 < v253)
    {
      v239 = v118 + v123;
    }

    if (result < v123 >> 2)
    {
      if (v238 <= v192 - 4 * result)
      {
        v238 = v192 - 4 * result;
      }

      if (v239 < v238)
      {
        v238 = v239;
      }
    }

    v29 = v252 + 2 * v123 + v118;
    v30 = v255 + 16;
    if (v238 < v239)
    {
      v240 = a7[139];
      v241 = v240 + 0x20000;
      v242 = a7[140];
      do
      {
        v243 = (506832829 * *(a3 + (v238 & a4))) >> 17;
        v244 = *(v269 + (v243 & 0x1FF));
        *(v269 + (v243 & 0x1FF)) = v244 + 1;
        v245 = v244 & 0x1FF;
        v246 = v238 - *(v240 + 4 * v243);
        *(v240 + 196608 + v238) = v243;
        if (v246 >= 0xFFFF)
        {
          LOWORD(v246) = -1;
        }

        v247 = (v242 + ((v243 & 0x1FF) << 11) + 4 * v245);
        *v247 = v246;
        result = *(v241 + 2 * v243);
        v247[1] = result;
        *(v240 + 4 * v243) = v238;
        *(v241 + 2 * v243) = v245;
        ++v238;
      }

      while (v239 != v238);
    }

    v21 = 0;
LABEL_307:
    v19 = v192;
  }

  while (v192 + 4 < v22);
LABEL_314:
  *a15 = v21 + v22 - v192;
  *a17 += (v30 - v20) >> 4;
  return result;
}

unint64_t sub_240AF812C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *i, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a2;
  v120 = *MEMORY[0x277D85DE8];
  v12 = *a8;
  v13 = a2 + result;
  v14 = a2 + result - 7;
  v107 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v111 = v14;
  if (*(a5 + 4) >= 9)
  {
    v15 = 512;
  }

  else
  {
    v15 = 64;
  }

  if (result >= 9)
  {
    v110 = v15;
    v117 = (1 << *(a5 + 8)) - 16;
    v108 = *(a5 + 104);
    v109 = *(a5 + 16);
    v16 = v15 + a2;
    v17 = *(a6 + 88);
    v106 = 4 * v15;
    v18 = vdupq_n_s64(0xFFFFFuLL);
    v112 = a9;
    v113 = i;
    v114 = a5;
    v115 = a2 + result;
    while (1)
    {
      v19 = v13 - v11;
      if (v11 >= v117)
      {
        v20 = v117;
      }

      else
      {
        v20 = v11;
      }

      v21 = (a3 + (v11 & a4));
      v22 = *v21;
      v23 = *i;
      if (v11 < v23)
      {
        goto LABEL_22;
      }

      v24 = (a3 + (a4 & (v11 - v23)));
      if (v22 != *v24)
      {
        goto LABEL_22;
      }

      if (v19 < 8)
      {
        v26 = 0;
        v27 = (a3 + (v11 & a4));
LABEL_181:
        v102 = v19 & 7;
        if ((v19 & 7) != 0)
        {
          v103 = v26 | v102;
          while (1)
          {
            result = *v27;
            if (v24[v26] != result)
            {
              break;
            }

            ++v27;
            ++v26;
            if (!--v102)
            {
              v26 = v103;
              break;
            }
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = v19 & 0xFFFFFFFFFFFFFFF8;
        v27 = v21 + (v19 & 0xFFFFFFFFFFFFFFF8);
        v28 = v19 >> 3;
        while (1)
        {
          v29 = v21[v25];
          result = *&v24[v25 * 8];
          if (v29 != result)
          {
            break;
          }

          ++v25;
          if (!--v28)
          {
            goto LABEL_181;
          }
        }

        v26 = v25 * 8 + (__clz(__rbit64(result ^ v29)) >> 3);
      }

      if (v26 >= 4 && (v30 = 135 * v26 + 1935, v30 >= 0x7E5))
      {
        v22 = *(v21 + v26);
      }

      else
      {
LABEL_22:
        v23 = 0;
        v26 = 0;
        v30 = 2020;
      }

      v31 = 0;
      v32 = vdupq_n_s64((0x35A7BD1E35A7BD00 * *v21) >> 44);
      v118 = vandq_s8(vaddq_s64(v32, xmmword_240C112A0), v18);
      v119 = vandq_s8(vaddq_s64(v32, xmmword_240C112B0), v18);
      do
      {
        v33 = *(v17 + 4 * v118.i64[v31]);
        v34 = v11 - v33;
        v35 = a3 + (v33 & a4);
        if (v22 == *(v35 + v26) && v11 != v33 && v34 <= v20)
        {
          if (v19 < 8)
          {
            v41 = 0;
            result = a3 + (v11 & a4);
LABEL_43:
            if ((v19 & 7) != 0)
            {
              v42 = v19 & 7 | v41;
              v43 = v19 & 7;
              while (*(v35 + v41) == *result)
              {
                ++result;
                ++v41;
                if (!--v43)
                {
                  v41 = v42;
                  break;
                }
              }

              v13 = v115;
            }
          }

          else
          {
            v38 = 0;
            v39 = v19 >> 3;
            while (1)
            {
              result = v21[v38];
              v40 = *(v35 + v38 * 8);
              if (result != v40)
              {
                break;
              }

              ++v38;
              if (!--v39)
              {
                v41 = v19 & 0xFFFFFFFFFFFFFFF8;
                result = v21 + (v19 & 0xFFFFFFFFFFFFFFF8);
                goto LABEL_43;
              }
            }

            v41 = v38 * 8 + (__clz(__rbit64(v40 ^ result)) >> 3);
          }

          if (v41 >= 4)
          {
            result = 30 * (__clz(v34) ^ 0x1F);
            if (v30 < 135 * v41 - result + 1920)
            {
              v22 = *(v21 + v41);
              v23 = v34;
              v30 = 135 * v41 - result + 1920;
              v26 = v41;
            }
          }
        }

        ++v31;
      }

      while (v31 != 4);
      *(v17 + 4 * *(v118.i64 + (v11 & 0x18))) = v11;
      if (v30 < 0x7E5)
      {
        ++v12;
        v72 = v11 + 1;
        if (v11 + 1 <= v16)
        {
          i = v113;
        }

        else if (v72 <= v16 + v106)
        {
          v87 = v11 + 9;
          if (v11 + 9 >= v107)
          {
            v87 = v107;
          }

          for (i = v113; v72 < v87; v72 += 2)
          {
            *(v17 + 4 * (((((0x35A7BD1E35A7BD00 * *(a3 + (v72 & a4))) >> 32) >> 12) + (v72 & 0x18)) & 0xFFFFF)) = v72;
            v12 += 2;
          }
        }

        else
        {
          v73 = v11 + 17;
          if (v11 + 17 >= v107)
          {
            v73 = v107;
          }

          for (i = v113; v72 < v73; v72 += 4)
          {
            *(v17 + 4 * (((((0x35A7BD1E35A7BD00 * *(a3 + (v72 & a4))) >> 32) >> 12) + (v72 & 0x18)) & 0xFFFFF)) = v72;
            v12 += 4;
          }
        }

        goto LABEL_174;
      }

      v44 = 0;
      v116 = *v113;
      while (1)
      {
        --v19;
        v45 = v26 - 1;
        if (v26 - 1 >= v19)
        {
          v45 = v19;
        }

        if (*(a5 + 4) >= 5)
        {
          v45 = 0;
        }

        v46 = v11 + 1;
        v47 = v11 + 1 < v117 ? v11 + 1 : v117;
        result = a3 + (v46 & a4);
        v48 = *(result + v45);
        if (v46 < v116)
        {
          goto LABEL_69;
        }

        v49 = a3 + (a4 & (v46 - v116));
        if (v48 != *(v49 + v45))
        {
          goto LABEL_69;
        }

        if (v19 < 8)
        {
          v50 = 0;
          v52 = (a3 + (v46 & a4));
LABEL_100:
          v71 = v19 & 7;
          if ((v19 & 7) != 0)
          {
            do
            {
              if (*(v49 + v50) != *v52)
              {
                break;
              }

              v52 = (v52 + 1);
              ++v50;
              --v71;
            }

            while (v71);
          }
        }

        else
        {
          v50 = 0;
          v51 = v19 >> 3;
          v52 = (a3 + (v46 & a4));
          while (1)
          {
            v53 = *(v49 + v50);
            if (*v52 != v53)
            {
              break;
            }

            ++v52;
            v50 += 8;
            if (!--v51)
            {
              goto LABEL_100;
            }
          }

          v50 += __clz(__rbit64(v53 ^ *v52)) >> 3;
        }

        if (v50 >= 4 && (v54 = 135 * v50 + 1935, v54 >= 0x7E5))
        {
          v48 = *(result + v50);
          v45 = v50;
          v55 = v116;
        }

        else
        {
LABEL_69:
          v55 = 0;
          v54 = 2020;
        }

        v56 = 0;
        v57 = vdupq_n_s64((0x35A7BD1E35A7BD00 * *result) >> 44);
        v58 = vdupq_n_s64(0xFFFFFuLL);
        v118 = vandq_s8(vaddq_s64(v57, xmmword_240C112A0), v58);
        v119 = vandq_s8(vaddq_s64(v57, xmmword_240C112B0), v58);
        do
        {
          v59 = *(v17 + 4 * v118.i64[v56]);
          v60 = v46 - v59;
          v61 = a3 + (v59 & a4);
          if (v48 == *(v61 + v45) && v46 != v59 && v60 <= v47)
          {
            if (v19 < 8)
            {
              v64 = 0;
              v66 = (a3 + (v46 & a4));
LABEL_90:
              if ((v19 & 7) != 0)
              {
                v69 = v19 & 7;
                do
                {
                  if (*(v61 + v64) != *v66)
                  {
                    break;
                  }

                  v66 = (v66 + 1);
                  ++v64;
                  --v69;
                }

                while (v69);
              }
            }

            else
            {
              v64 = 0;
              v65 = v19 >> 3;
              v66 = (a3 + (v46 & a4));
              while (1)
              {
                v67 = *(v61 + v64);
                if (*v66 != v67)
                {
                  break;
                }

                ++v66;
                v64 += 8;
                if (!--v65)
                {
                  goto LABEL_90;
                }
              }

              v64 += __clz(__rbit64(v67 ^ *v66)) >> 3;
            }

            if (v64 >= 4)
            {
              v68 = __clz(v60) ^ 0x1F;
              if (v54 < 135 * v64 - 30 * v68 + 1920)
              {
                v48 = *(result + v64);
                v45 = v64;
                v55 = v60;
                v54 = 135 * v64 - 30 * v68 + 1920;
              }
            }
          }

          ++v56;
        }

        while (v56 != 4);
        *(v17 + 4 * *(v118.i64 + (v46 & 0x18))) = v46;
        if (v54 < v30 + 175)
        {
          break;
        }

        ++v12;
        a5 = v114;
        v13 = v115;
        if (v44 <= 2)
        {
          v70 = v11 + 9;
          ++v44;
          v23 = v55;
          v30 = v54;
          v26 = v45;
          ++v11;
          if (v70 < v115)
          {
            continue;
          }
        }

        goto LABEL_112;
      }

      v55 = v23;
      v45 = v26;
      v46 = v11;
      a5 = v114;
      v13 = v115;
LABEL_112:
      v74 = v46 + v109;
      if (v46 + v109 >= v117)
      {
        v74 = v117;
      }

      v75 = v74 + v108;
      i = v113;
      if (v55 > v74 + v108)
      {
        goto LABEL_115;
      }

      v80 = *v113;
      if (v55 != v80)
      {
        break;
      }

      LOWORD(v76) = 0;
      LODWORD(v79) = 0;
      *v112 = v12;
      *(v112 + 4) = v45;
LABEL_125:
      *(v112 + 14) = v76;
      *(v112 + 8) = v79;
      if (v12 > 5)
      {
        if (v12 > 0x81)
        {
          if (v12 > 0x841)
          {
            if (v12 >> 1 >= 0xC21)
            {
              if (v12 < 0x5842)
              {
                LOWORD(v85) = 22;
              }

              else
              {
                LOWORD(v85) = 23;
              }
            }

            else
            {
              LOWORD(v85) = 21;
            }
          }

          else
          {
            v85 = (__clz(v12 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v86 = (__clz(v12 - 2) ^ 0x1F) - 1;
          v85 = ((v12 - 2) >> v86) + 2 * v86 + 2;
        }
      }

      else
      {
        LOWORD(v85) = v12;
      }

      if (v45 > 9)
      {
        if (v45 > 0x85)
        {
          if (v45 > 0x845)
          {
            LOWORD(v93) = 23;
          }

          else
          {
            v93 = (__clz(v45 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v94 = v45 - 6;
          v95 = __clz(v94);
          v93 = (v94 >> ((v95 ^ 0x1F) - 1)) + 2 * ((v95 ^ 0x1F) - 1) + 4;
        }
      }

      else
      {
        LOWORD(v93) = v45 - 2;
      }

      v96 = v93 & 7 | (8 * (v85 & 7));
      if ((v76 & 0x3FF) != 0 || v85 > 7u || v93 > 0xFu)
      {
        v98 = 3 * (v85 >> 3) + ((v93 & 0xFFF8) >> 3);
        v97 = ((((0x520D40u >> (2 * v98)) & 0xC0) + (v98 << 6)) | v96) + 64;
      }

      else
      {
        LOWORD(v97) = v96 | 0x40;
        if ((v93 & 0xFFF8) == 0)
        {
          LOWORD(v97) = v93 & 7 | (8 * (v85 & 7));
        }
      }

      *(v112 + 12) = v97;
      *a11 += v12;
      v99 = v46 + 2;
      v72 = v46 + v45;
      if (v46 + v45 >= v111)
      {
        v100 = v111;
      }

      else
      {
        v100 = v46 + v45;
      }

      if (v55 < v45 >> 2)
      {
        v101 = v72 - 4 * v55;
        if (v99 > v101)
        {
          v101 = v46 + 2;
        }

        if (v100 >= v101)
        {
          v99 = v101;
        }

        else
        {
          v99 = v100;
        }
      }

      v16 = v110 + 2 * v45 + v46;
      v112 += 16;
      if (v99 < v100)
      {
        do
        {
          *(v17 + 4 * (((((0x35A7BD1E35A7BD00 * *(a3 + (v99 & a4))) >> 32) >> 12) + (v99 & 0x18)) & 0xFFFFF)) = v99;
          ++v99;
        }

        while (v100 != v99);
      }

      v12 = 0;
LABEL_174:
      v11 = v72;
      if (v72 + 8 >= v13)
      {
        goto LABEL_187;
      }
    }

    v88 = v113[1];
    if (v55 == v88)
    {
      v76 = 1;
      goto LABEL_116;
    }

    v89 = v55 + 3;
    v90 = v55 + 3 - v80;
    if (v90 > 6)
    {
      if (v89 - v88 > 6)
      {
        if (v55 == v113[2])
        {
          v76 = 2;
        }

        else if (v55 == v113[3])
        {
          v76 = 3;
        }

        else
        {
LABEL_115:
          v76 = v55 + 15;
        }

LABEL_116:
        if (v55 <= v75 && v76)
        {
          v113[3] = v113[2];
          *(v113 + 1) = *v113;
          *v113 = v55;
        }

        *v112 = v12;
        *(v112 + 4) = v45;
        v77 = *(a5 + 68);
        v78 = v77 + 16;
        if (v77 + 16 <= v76)
        {
          v81 = *(a5 + 64);
          v82 = v76 - v77 + (4 << v81) - 16;
          v83 = (__clz(v82) ^ 0x1F) - 1;
          v84 = ((v82 >> v83) & 1 | 2) << v83;
          v76 = ((v82 & ~(-1 << v81)) + v78 + ((((v82 >> v83) & 1 | (2 * (v83 - v81))) + 65534) << v81)) | ((v83 - v81) << 10);
          v79 = (v82 - v84) >> v81;
        }

        else
        {
          LODWORD(v79) = 0;
        }

        goto LABEL_125;
      }

      v91 = 4 * (v89 - v88);
      v92 = 266017486;
    }

    else
    {
      v91 = 4 * v90;
      v92 = 158663784;
    }

    v76 = (v92 >> v91) & 0xF;
    goto LABEL_116;
  }

  v112 = a9;
  v72 = a2;
LABEL_187:
  *a8 = v12 + v13 - v72;
  *a10 += (v112 - a9) >> 4;
  v104 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_240AF8BD4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *i, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v12 = a2;
  v173[1] = *MEMORY[0x277D85DE8];
  v13 = *a8;
  v14 = result + a2;
  v15 = result + a2 - 7;
  v156 = v15;
  if (result <= 7)
  {
    v15 = a2;
  }

  v161 = v15;
  if (*(a5 + 4) >= 9)
  {
    v16 = 512;
  }

  else
  {
    v16 = 64;
  }

  if (result >= 9)
  {
    v17 = a5;
    v169 = (1 << *(a5 + 8)) - 16;
    v160 = v16;
    v159 = *(a5 + 16);
    v158 = *(a5 + 104);
    result = v173;
    v18 = v16 + a2;
    v164 = a6;
    v155 = 4 * v16;
    v157 = v14 - 1;
    v19 = *(a6 + 88);
    v20 = a9;
    v162 = i;
    v167 = v14;
    while (1)
    {
      v21 = v14 - v12;
      if (v12 >= v169)
      {
        v22 = v169;
      }

      else
      {
        v22 = v12;
      }

      v23 = (a3 + (v12 & a4));
      v24 = *v23;
      v25 = *i;
      v171 = v13;
      v163 = v20;
      if (v12 < v25)
      {
        goto LABEL_22;
      }

      v26 = (a3 + (a4 & (v12 - v25)));
      if (v24 != *v26)
      {
        goto LABEL_22;
      }

      if (v21 < 8)
      {
        v28 = 0;
        v29 = (a3 + (v12 & a4));
LABEL_253:
        v151 = v21 & 7;
        if ((v21 & 7) != 0)
        {
          v152 = v28 | v151;
          while (v26[v28] == *v29)
          {
            ++v29;
            ++v28;
            if (!--v151)
            {
              v28 = v152;
              break;
            }
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = v21 & 0xFFFFFFFFFFFFFFF8;
        v29 = v23 + (v21 & 0xFFFFFFFFFFFFFFF8);
        v30 = v21 >> 3;
        while (1)
        {
          v31 = v23[v27];
          v32 = *&v26[v27 * 8];
          if (v31 != v32)
          {
            break;
          }

          ++v27;
          if (!--v30)
          {
            goto LABEL_253;
          }
        }

        v28 = v27 * 8 + (__clz(__rbit64(v32 ^ v31)) >> 3);
      }

      if (v28 >= 4 && (v33 = 135 * v28 + 1935, v33 >= 0x7E5))
      {
        v24 = *(v23 + v28);
      }

      else
      {
LABEL_22:
        v25 = 0;
        v28 = 0;
        v33 = 2020;
      }

      v172 = (0xBD1E35A7BD000000 * *v23) >> 48;
      v173[0] = (v172 + 8);
      v34 = &v172;
      v35 = 1;
      do
      {
        v36 = v35;
        v37 = *(v19 + 4 * *v34);
        v38 = v12 - v37;
        v39 = a3 + (v37 & a4);
        if (v24 == *(v39 + v28) && v12 != v37 && v38 <= v22)
        {
          if (v21 < 8)
          {
            v46 = 0;
            v47 = (a3 + (v12 & a4));
LABEL_43:
            if ((v21 & 7) != 0)
            {
              v49 = v21 & 7 | v46;
              v50 = v21 & 7;
              while (*(v39 + v46) == *v47)
              {
                ++v47;
                ++v46;
                if (!--v50)
                {
                  v46 = v49;
                  break;
                }
              }

              v17 = a5;
            }
          }

          else
          {
            v42 = 0;
            v43 = v21 >> 3;
            while (1)
            {
              v44 = v23[v42];
              v45 = *(v39 + v42 * 8);
              if (v44 != v45)
              {
                break;
              }

              ++v42;
              if (!--v43)
              {
                v46 = v21 & 0xFFFFFFFFFFFFFFF8;
                v47 = v23 + (v21 & 0xFFFFFFFFFFFFFFF8);
                goto LABEL_43;
              }
            }

            v46 = v42 * 8 + (__clz(__rbit64(v45 ^ v44)) >> 3);
          }

          if (v46 >= 4)
          {
            v48 = __clz(v38) ^ 0x1F;
            if (v33 < 135 * v46 - 30 * v48 + 1920)
            {
              v24 = *(v23 + v46);
              v25 = v38;
              v33 = 135 * v46 - 30 * v48 + 1920;
              v28 = v46;
            }
          }
        }

        v35 = 0;
        v34 = v173;
      }

      while ((v36 & 1) != 0);
      *(v19 + 4 * *(&v173[-1] + (v12 & 8))) = v12;
      if ((v12 & 3) == 0 && v21 >= 0x20)
      {
        v51 = *(a6 + 112);
        if (v51 <= v12)
        {
          v52 = *(a6 + 124);
          v53 = *(a6 + 128);
          v54 = *(a6 + 96);
          do
          {
            v55 = *(a3 + (v51 & a4));
            v56 = *(a3 + ((v51 + 32) & a4));
            if ((v54 & 0x3F000000) == 0)
            {
              v57 = *(a6 + 104);
              v58 = *(v57 + 4 * (v54 & 0x3FFFFFFF));
              *(v57 + 4 * (v54 & 0x3FFFFFFF)) = v51;
              if (v51 == v12 && v58 != -1)
              {
                v59 = (v12 - v58);
                if (v22 >= v59)
                {
                  v60 = 0;
                  v61 = a3 + (v58 & a4);
                  v62 = v21 >> 3;
                  do
                  {
                    v63 = v23[v60];
                    v64 = *(v61 + v60 * 8);
                    if (v63 != v64)
                    {
                      v65 = v60 * 8 + (__clz(__rbit64(v64 ^ v63)) >> 3);
                      goto LABEL_67;
                    }

                    ++v60;
                    --v62;
                  }

                  while (v62);
                  v65 = v21 & 0xFFFFFFFFFFFFFFF8;
                  if ((v21 & 7) != 0)
                  {
                    v66 = v21 & 7;
                    v65 = v21 & 0xFFFFFFFFFFFFFFF8;
                    while (*(v61 + v65) == *(v23 + v65))
                    {
                      ++v65;
                      if (!--v66)
                      {
                        v65 = v21;
                        break;
                      }
                    }

                    a6 = v164;
                    v17 = a5;
                  }

LABEL_67:
                  v67 = 135 * v65 - 30 * (__clz(v59) ^ 0x1F) + 1920;
                  if (v67 > v33)
                  {
                    v68 = v59;
                  }

                  else
                  {
                    v68 = v25;
                  }

                  if (v67 > v33)
                  {
                    v69 = v65;
                  }

                  else
                  {
                    v67 = v33;
                    v69 = v28;
                  }

                  if (v65 <= v28)
                  {
                    v68 = v25;
                    v67 = v33;
                    v69 = v28;
                  }

                  if (v65 >= 4)
                  {
                    v25 = v68;
                    v33 = v67;
                    v28 = v69;
                  }
                }
              }
            }

            v54 = v56 + v52 * v54 + v53 * ~v55 + 1;
            v51 += 4;
          }

          while (v51 <= v12);
          *(a6 + 96) = v54;
        }

        *(a6 + 112) = v12 + 4;
      }

      if (v33 < 0x7E5)
      {
        v13 = v171 + 1;
        v121 = v12 + 1;
        v14 = v167;
        v20 = v163;
        if (v12 + 1 <= v18)
        {
          i = v162;
        }

        else if (v121 <= v18 + v155)
        {
          v137 = v12 + 9;
          if (v12 + 9 >= v156)
          {
            v137 = v156;
          }

          for (i = v162; v121 < v137; v121 += 2)
          {
            *(v19 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v121 & a4))) >> 48) + (v121 & 8))) = v121;
            v13 += 2;
          }
        }

        else
        {
          v122 = v12 + 17;
          if (v12 + 17 >= v156)
          {
            v122 = v156;
          }

          for (i = v162; v121 < v122; v121 += 4)
          {
            *(v19 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v121 & a4))) >> 48) + (v121 & 8))) = v121;
            v13 += 4;
          }
        }

        goto LABEL_246;
      }

      v166 = v25;
      v70 = 0;
      v168 = *v162;
      v71 = v157 - v12;
      while (1)
      {
        --v21;
        v72 = v28 - 1;
        if (v28 - 1 >= v21)
        {
          v72 = v21;
        }

        v73 = *(v17 + 4) >= 5 ? 0 : v72;
        v74 = v12 + 1;
        v75 = v12 + 1 < v169 ? v12 + 1 : v169;
        v76 = (a3 + (v74 & a4));
        v77 = *(v76 + v73);
        if (v74 < v168)
        {
          goto LABEL_101;
        }

        v78 = a3 + (a4 & (v74 - v168));
        if (v77 != *(v78 + v73))
        {
          goto LABEL_101;
        }

        if (v21 < 8)
        {
          v79 = 0;
          v81 = (a3 + (v74 & a4));
LABEL_172:
          v120 = v21 & 7;
          if ((v21 & 7) != 0)
          {
            do
            {
              if (*(v78 + v79) != *v81)
              {
                break;
              }

              v81 = (v81 + 1);
              ++v79;
              --v120;
            }

            while (v120);
          }
        }

        else
        {
          v79 = 0;
          v80 = v21 >> 3;
          v81 = (a3 + (v74 & a4));
          while (1)
          {
            v82 = *(v78 + v79);
            if (*v81 != v82)
            {
              break;
            }

            ++v81;
            v79 += 8;
            if (!--v80)
            {
              goto LABEL_172;
            }
          }

          v79 += __clz(__rbit64(v82 ^ *v81)) >> 3;
        }

        if (v79 >= 4 && (v83 = 135 * v79 + 1935, v83 >= 0x7E5))
        {
          v77 = *(v76 + v79);
          v73 = v79;
          v84 = v168;
        }

        else
        {
LABEL_101:
          v84 = 0;
          v83 = 2020;
        }

        v170 = v71 & 7;
        v172 = (0xBD1E35A7BD000000 * *v76) >> 48;
        v173[0] = (v172 + 8);
        v85 = &v172;
        v86 = 1;
        do
        {
          v87 = v86;
          v88 = *(v19 + 4 * *v85);
          v89 = v74 - v88;
          v90 = a3 + (v88 & a4);
          if (v77 == *(v90 + v73) && v74 != v88 && v89 <= v75)
          {
            if (v21 < 8)
            {
              v93 = 0;
              v95 = (a3 + (v74 & a4));
LABEL_122:
              v98 = v21 & 7;
              if ((v21 & 7) != 0)
              {
                do
                {
                  if (*(v90 + v93) != *v95)
                  {
                    break;
                  }

                  v95 = (v95 + 1);
                  ++v93;
                  --v98;
                }

                while (v98);
              }
            }

            else
            {
              v93 = 0;
              v94 = v21 >> 3;
              v95 = (a3 + (v74 & a4));
              while (1)
              {
                v96 = *(v90 + v93);
                if (*v95 != v96)
                {
                  break;
                }

                ++v95;
                v93 += 8;
                if (!--v94)
                {
                  goto LABEL_122;
                }
              }

              v93 += __clz(__rbit64(v96 ^ *v95)) >> 3;
            }

            if (v93 >= 4)
            {
              v97 = __clz(v89) ^ 0x1F;
              if (v83 < 135 * v93 - 30 * v97 + 1920)
              {
                v77 = *(v76 + v93);
                v73 = v93;
                v84 = v89;
                v83 = 135 * v93 - 30 * v97 + 1920;
              }
            }
          }

          v86 = 0;
          v85 = v173;
        }

        while ((v87 & 1) != 0);
        *(v19 + 4 * *(&v173[-1] + (v74 & 8))) = v74;
        if (v21 >= 0x20 && (v74 & 3) == 0)
        {
          v99 = *(a6 + 112);
          if (v99 <= v74)
          {
            v101 = *(a6 + 124);
            v100 = *(a6 + 128);
            v102 = *(a6 + 96);
            do
            {
              v103 = *(a3 + (v99 & a4));
              v104 = *(a3 + ((v99 + 32) & a4));
              if ((v102 & 0x3F000000) == 0)
              {
                v105 = *(a6 + 104);
                v106 = *(v105 + 4 * (v102 & 0x3FFFFFFF));
                *(v105 + 4 * (v102 & 0x3FFFFFFF)) = v99;
                if (v99 == v74 && v106 != -1)
                {
                  v107 = (v74 - v106);
                  if (v75 >= v107)
                  {
                    v108 = 0;
                    v109 = a3 + (v106 & a4);
                    v110 = v21 >> 3;
                    v111 = (a3 + (v74 & a4));
                    do
                    {
                      v112 = *(v109 + v108);
                      if (*v111 != v112)
                      {
                        v108 += __clz(__rbit64(v112 ^ *v111)) >> 3;
                        goto LABEL_143;
                      }

                      ++v111;
                      v108 += 8;
                      --v110;
                    }

                    while (v110);
                    if ((v21 & 7) != 0)
                    {
                      v113 = 0;
                      v114 = v109 + v108;
                      do
                      {
                        if (*(v114 + v113) != *(v111 + v113))
                        {
                          break;
                        }

                        ++v113;
                      }

                      while (v170 != v113);
                      v108 += v113;
                    }

LABEL_143:
                    v115 = 135 * v108 - 30 * (__clz(v107) ^ 0x1F) + 1920;
                    if (v115 > v83)
                    {
                      v116 = v108;
                    }

                    else
                    {
                      v116 = v73;
                    }

                    if (v115 > v83)
                    {
                      v117 = v107;
                    }

                    else
                    {
                      v117 = v84;
                    }

                    if (v115 <= v83)
                    {
                      v115 = v83;
                    }

                    v118 = v108 >= 4 && v108 > v73;
                    if (v118)
                    {
                      v73 = v116;
                    }

                    if (v118)
                    {
                      v84 = v117;
                    }

                    if (v118)
                    {
                      v83 = v115;
                    }

                    a6 = v164;
                    v17 = a5;
                  }
                }
              }

              v102 = v104 + v101 * v102 + v100 * ~v103 + 1;
              v99 += 4;
            }

            while (v99 <= v74);
            *(a6 + 96) = v102;
          }

          *(a6 + 112) = v12 + 5;
        }

        if (v83 < v33 + 175)
        {
          break;
        }

        ++v171;
        if (v70 <= 2)
        {
          v119 = v12 + 9;
          ++v70;
          v71 = v170 + 7;
          v166 = v84;
          v33 = v83;
          v28 = v73;
          ++v12;
          if (v119 < v167)
          {
            continue;
          }
        }

        goto LABEL_184;
      }

      v84 = v166;
      v73 = v28;
      v74 = v12;
LABEL_184:
      v123 = v74 + v159;
      if (v74 + v159 >= v169)
      {
        v123 = v169;
      }

      v124 = v123 + v158;
      i = v162;
      if (v84 > v123 + v158)
      {
        goto LABEL_187;
      }

      v130 = *v162;
      if (v84 != v130)
      {
        break;
      }

      LOWORD(v125) = 0;
      LODWORD(v129) = 0;
      *v163 = v171;
      *(v163 + 4) = v73;
      v128 = v160;
LABEL_197:
      *(v163 + 14) = v125;
      *(v163 + 8) = v129;
      if (v171 > 5)
      {
        if (v171 > 0x81)
        {
          if (v171 > 0x841)
          {
            if (v171 >> 1 >= 0xC21)
            {
              if (v171 < 0x5842)
              {
                LOWORD(v135) = 22;
              }

              else
              {
                LOWORD(v135) = 23;
              }
            }

            else
            {
              LOWORD(v135) = 21;
            }
          }

          else
          {
            v135 = (__clz(v171 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v136 = (__clz(v171 - 2) ^ 0x1F) - 1;
          v135 = ((v171 - 2) >> v136) + 2 * v136 + 2;
        }
      }

      else
      {
        LOWORD(v135) = v171;
      }

      if (v73 > 9)
      {
        if (v73 > 0x85)
        {
          if (v73 > 0x845)
          {
            LOWORD(v143) = 23;
          }

          else
          {
            v143 = (__clz(v73 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v144 = v73 - 6;
          v145 = __clz(v144);
          v143 = (v144 >> ((v145 ^ 0x1F) - 1)) + 2 * ((v145 ^ 0x1F) - 1) + 4;
        }
      }

      else
      {
        LOWORD(v143) = v73 - 2;
      }

      v146 = v143 & 7 | (8 * (v135 & 7));
      if ((v125 & 0x3FF) != 0 || v135 > 7u || v143 > 0xFu)
      {
        v148 = 3 * (v135 >> 3) + ((v143 & 0xFFF8) >> 3);
        v147 = ((((0x520D40u >> (2 * v148)) & 0xC0) + (v148 << 6)) | v146) + 64;
      }

      else
      {
        LOWORD(v147) = v146 | 0x40;
        if ((v143 & 0xFFF8) == 0)
        {
          LOWORD(v147) = v143 & 7 | (8 * (v135 & 7));
        }
      }

      *(v163 + 12) = v147;
      *a11 += v171;
      v149 = v74 + 2;
      v121 = v74 + v73;
      v150 = v161;
      if (v74 + v73 < v161)
      {
        v150 = v74 + v73;
      }

      if (v84 < v73 >> 2)
      {
        if (v149 <= v121 - 4 * v84)
        {
          v149 = v121 - 4 * v84;
        }

        if (v150 < v149)
        {
          v149 = v150;
        }
      }

      v18 = v128 + 2 * v73 + v74;
      v20 = v163 + 16;
      if (v149 >= v150)
      {
        v13 = 0;
        v14 = v167;
      }

      else
      {
        v14 = v167;
        do
        {
          *(v19 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v149 & a4))) >> 48) + (v149 & 8))) = v149;
          ++v149;
        }

        while (v150 != v149);
        v13 = 0;
      }

LABEL_246:
      v12 = v121;
      if (v121 + 8 >= v14)
      {
        goto LABEL_259;
      }
    }

    v138 = v162[1];
    if (v84 == v138)
    {
      v125 = 1;
      goto LABEL_188;
    }

    v139 = v84 + 3;
    v140 = v84 + 3 - v130;
    if (v140 > 6)
    {
      if (v139 - v138 > 6)
      {
        if (v84 == v162[2])
        {
          v125 = 2;
        }

        else if (v84 == v162[3])
        {
          v125 = 3;
        }

        else
        {
LABEL_187:
          v125 = v84 + 15;
        }

LABEL_188:
        if (v84 <= v124 && v125)
        {
          v162[3] = v162[2];
          *(v162 + 1) = *v162;
          *v162 = v84;
        }

        *v163 = v171;
        *(v163 + 4) = v73;
        v126 = *(v17 + 68);
        v127 = v126 + 16;
        v128 = v160;
        if (v126 + 16 <= v125)
        {
          v131 = *(v17 + 64);
          v132 = v125 - v126 + (4 << v131) - 16;
          v133 = (__clz(v132) ^ 0x1F) - 1;
          v134 = ((v132 >> v133) & 1 | 2) << v133;
          v125 = ((v132 & ~(-1 << v131)) + v127 + ((((v132 >> v133) & 1 | (2 * (v133 - v131))) + 65534) << v131)) | ((v133 - v131) << 10);
          v129 = (v132 - v134) >> v131;
        }

        else
        {
          LODWORD(v129) = 0;
        }

        goto LABEL_197;
      }

      v141 = 4 * (v139 - v138);
      v142 = 266017486;
    }

    else
    {
      v141 = 4 * v140;
      v142 = 158663784;
    }

    v125 = (v142 >> v141) & 0xF;
    goto LABEL_188;
  }

  v20 = a9;
  v121 = a2;
LABEL_259:
  *a8 = v13 + v14 - v121;
  *a10 += (v20 - a9) >> 4;
  v153 = *MEMORY[0x277D85DE8];
  return result;
}