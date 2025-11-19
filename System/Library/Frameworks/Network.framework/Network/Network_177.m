uint64_t ZSTD_compressBlock_fast_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = *(a1 + 272);
  if ((v6 - 5) >= 3)
  {
    v6 = 4;
  }

  if (*(a1 + 276) <= 1u)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 276);
  }

  v8 = *(a1 + 8);
  v9 = a4 - v8 + a5;
  v10 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  v11 = *(a1 + 28);
  v13 = v9 - v11 > v10;
  v14 = v9 - v10;
  if (v13 && *(a1 + 40) == 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  if (v12 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (v16 < v12)
  {
    v18 = (v7 + 1);
    v19 = &a4[a5];
    v20 = &a4[a5 - 8];
    v22 = *a3;
    v21 = a3[1];
    v23 = a4 - v8 - v16;
    if (v21 >= v23)
    {
      v24 = a3[1];
    }

    else
    {
      v24 = 0;
    }

    if (v21 >= v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v21;
    }

    if (v22 >= v23)
    {
      v26 = v22;
    }

    else
    {
      v26 = 0;
    }

    v164 = v26;
    v165 = v24;
    if (v22 >= v23)
    {
      v27 = 0;
    }

    else
    {
      v27 = v22;
    }

    v28 = &a4[v18];
    v29 = &a4[v18 + 1];
    if (v29 >= v20)
    {
LABEL_278:
      LODWORD(v121) = v25;
      goto LABEL_279;
    }

    v159 = *(a1 + 24);
    v30 = *(a1 + 16);
    v168 = (v8 + v17);
    v31 = *(a1 + 112);
    v160 = v8 + 2;
    v161 = v18;
    v32 = *(a1 + 264);
    v33 = 64 - v32;
    v169 = 32 - v32;
    v34 = (v19 - 7);
    v163 = (v19 - 3);
    v162 = (v19 - 1);
    v167 = (v19 - 32);
    v170 = v17 + v8 + 8;
LABEL_30:
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        v35 = *a4;
        v36 = -1079680256;
        goto LABEL_40;
      }

      if (v6 == 8)
      {
        v35 = *a4;
        v36 = -1213897629;
        goto LABEL_40;
      }
    }

    else
    {
      if (v6 == 5)
      {
        v35 = *a4;
        v36 = -1157627904;
        goto LABEL_40;
      }

      if (v6 == 6)
      {
        v35 = *a4;
        v36 = -1080360960;
LABEL_40:
        v39 = v36 | 0xCF1BBCDC00000000;
        v37 = (v35 * v39) >> v33;
        v38 = (*(a4 + 1) * v39) >> v33;
        goto LABEL_41;
      }
    }

    v37 = (-1640531535 * *a4) >> v169;
    v38 = (-1640531535 * *(a4 + 1)) >> v169;
LABEL_41:
    v40 = a4 + 1;
    v41 = a4 + 128;
    v42 = *(v31 + 4 * v37);
    if (v42 >= v17)
    {
      v43 = v8;
    }

    else
    {
      v43 = v30;
    }

    v44 = a4;
    while (1)
    {
      v51 = v28;
      _X16 = v29;
      v53 = v28 - v8 - v27;
      if (v17 <= v53)
      {
        v54 = v8;
      }

      else
      {
        v54 = v30;
      }

      if (v27 && v17 - v53 >= 4)
      {
        v55 = *(v54 + v53);
      }

      else
      {
        v55 = *v28 ^ 1;
      }

      v56 = v44 - v8;
      *(v31 + 4 * v37) = v44 - v8;
      if (*v51 == v55)
      {
        v62 = v54 + v53;
        if (v17 <= v53)
        {
          v63 = v19;
        }

        else
        {
          v63 = (v30 + v17);
        }

        v64 = *(v51 - 1) == *(v62 - 1);
        if (*(v51 - 1) == *(v62 - 1))
        {
          v65 = 5;
        }

        else
        {
          v65 = 4;
        }

        v66 = &v51[-v64];
        v67 = (v62 - v64);
        v68 = 1;
        v51 = v40;
        v40 = v66;
        v69 = v27;
        goto LABEL_111;
      }

      if (v42 >= v16)
      {
        v57 = v42;
        if (*v44 == *(v43 + v42))
        {
          v51 = v40;
          v40 = v44;
          goto LABEL_98;
        }
      }

      v57 = *(v31 + 4 * v38);
      if (v57 >= v17)
      {
        v43 = v8;
      }

      else
      {
        v43 = v30;
      }

      if (v6 > 6)
      {
        if (v6 == 7)
        {
          v58 = *v51;
          v59 = -1079680256;
          goto LABEL_70;
        }

        if (v6 == 8)
        {
          v58 = *v51;
          v59 = -1213897629;
          goto LABEL_70;
        }
      }

      else
      {
        if (v6 == 5)
        {
          v58 = *v51;
          v59 = -1157627904;
          goto LABEL_70;
        }

        if (v6 == 6)
        {
          v58 = *v51;
          v59 = -1080360960;
LABEL_70:
          v37 = (v58 * (v59 | 0xCF1BBCDC00000000)) >> v33;
          goto LABEL_71;
        }
      }

      v37 = (-1640531535 * *v51) >> v169;
LABEL_71:
      v56 = v40 - v8;
      *(v31 + 4 * v38) = v40 - v8;
      if (v57 >= v16 && *v40 == *(v43 + v57))
      {
        v42 = v57;
        v38 = v37;
LABEL_98:
        v69 = v56 - v42;
        v70 = v8 + v17;
        if (v159 <= v42)
        {
          v63 = v19;
        }

        else
        {
          v70 = v30 + v16;
          v63 = (v30 + v17);
        }

        v67 = (v43 + v57);
        v68 = v69 + 3;
        if (v43 + v57 <= v70 || v40 <= a4)
        {
          v65 = 4;
        }

        else
        {
          v71 = v40 - 1;
          v72 = (v43 + v57 - 1);
          v65 = 4;
          while (*v71 == *v72)
          {
            ++v65;
            v73 = v71 - 1;
            v74 = v72 - 1;
            if (v72 > v70)
            {
              --v72;
              v13 = v71-- > a4;
              if (v13)
              {
                continue;
              }
            }

            v40 = v73 + 1;
            v67 = v74 + 1;
            goto LABEL_110;
          }

          v40 = v71 + 1;
          v67 = v72 + 1;
        }

LABEL_110:
        v25 = v27;
LABEL_111:
        v75 = &v40[v65];
        v76 = &v67[v65];
        if (&v40[v63 - v67] >= v19)
        {
          v77 = v19;
        }

        else
        {
          v77 = &v40[v63 - v67];
        }

        if (v77 - 7 <= v75)
        {
          v78 = &v67[v65];
          v80 = &v40[v65];
LABEL_122:
          if (v80 < v77 - 3 && *v78 == *v80)
          {
            v78 += 4;
            v80 += 4;
          }

          if (v80 < v77 - 1 && *v78 == *v80)
          {
            v78 += 2;
            v80 += 2;
          }

          if (v80 < v77 && *v78 == *v80)
          {
            ++v80;
          }

          v83 = v80 - v75;
        }

        else if (*v76 == *v75)
        {
          v78 = &v67[v65 + 8];
          v79 = &v40[v65 + 8];
          do
          {
            v80 = v79;
            if (v79 >= (v77 - 7))
            {
              goto LABEL_122;
            }

            v82 = *v78;
            v78 += 8;
            v81 = v82;
            v79 += 8;
          }

          while (v82 == *v80);
          v83 = &v80[__clz(__rbit64(*v80 ^ v81)) >> 3] - v75;
        }

        else
        {
          v83 = __clz(__rbit64(*v75 ^ *v76)) >> 3;
        }

        if (&v76[v83] == v63)
        {
          v84 = &v75[v83];
          if (v34 <= v84)
          {
            v90 = (v8 + v17);
            v86 = v84;
            goto LABEL_142;
          }

          if (*v168 == *v84)
          {
            v85 = 0;
            while (1)
            {
              v86 = &v84[v85 + 8];
              if (v86 >= v34)
              {
                break;
              }

              v87 = *(v170 + v85);
              v88 = *v86;
              v85 += 8;
              if (v87 != v88)
              {
                v89 = v85 + (__clz(__rbit64(v88 ^ v87)) >> 3);
                goto LABEL_152;
              }
            }

            v90 = (v170 + v85);
LABEL_142:
            if (v86 < v163 && *v90 == *v86)
            {
              ++v90;
              v86 += 2;
            }

            if (v86 < v162 && *v90 == *v86)
            {
              v90 = (v90 + 2);
              ++v86;
            }

            if (v86 < v19 && *v90 == *v86)
            {
              v86 = (v86 + 1);
            }

            v89 = v86 - v84;
          }

          else
          {
            v89 = __clz(__rbit64(*v84 ^ *v168)) >> 3;
          }

LABEL_152:
          v83 += v89;
        }

        v91 = v40 - a4;
        v92 = *(a2 + 24);
        if (v40 > v167)
        {
          if (a4 <= v167)
          {
            v93 = (v92 + v167 - a4);
            *v92 = *a4;
            if ((v167 - a4) >= 17)
            {
              v100 = v92 + 1;
              v101 = (a4 + 32);
              do
              {
                *v100 = *(v101 - 1);
                v102 = *v101;
                v101 += 2;
                v100[1] = v102;
                v100 += 2;
              }

              while (v100 < v93);
              a4 = v19 - 32;
            }

            else
            {
              a4 = v19 - 32;
            }

            v92 = v93;
          }

          if (a4 >= v40)
          {
            goto LABEL_184;
          }

          v103 = v40 - a4;
          if ((v40 - a4) < 8)
          {
            v105 = v92;
          }

          else if ((v92 - a4) < 0x20)
          {
            v105 = v92;
          }

          else
          {
            if (v103 < 0x20)
            {
              v104 = 0;
LABEL_178:
              v110 = v103 & 0xFFFFFFFFFFFFFFF8;
              v105 = v92 + (v103 & 0xFFFFFFFFFFFFFFF8);
              v111 = v104 - (v103 & 0xFFFFFFFFFFFFFFF8);
              v112 = &a4[v104];
              v113 = (v92 + v104);
              do
              {
                v114 = *v112;
                v112 += 8;
                *v113++ = v114;
                v111 += 8;
              }

              while (v111);
              if (v103 != v110)
              {
                a4 += v110;
                goto LABEL_183;
              }

LABEL_184:
              *(a2 + 24) += v91;
              v99 = *(a2 + 8);
              if (v91 >= 0x10000)
              {
                v116 = (v99 - *a2) >> 3;
                *(a2 + 72) = 1;
                *(a2 + 76) = v116;
              }

              goto LABEL_186;
            }

            v104 = v103 & 0xFFFFFFFFFFFFFFE0;
            v106 = (a4 + 16);
            v107 = v92 + 1;
            v108 = v103 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v109 = *v106;
              *(v107 - 1) = *(v106 - 1);
              *v107 = v109;
              v106 += 2;
              v107 += 2;
              v108 -= 32;
            }

            while (v108);
            if (v103 == v104)
            {
              goto LABEL_184;
            }

            if ((v103 & 0x18) != 0)
            {
              goto LABEL_178;
            }

            a4 += v104;
            v105 = v92 + v104;
          }

          do
          {
LABEL_183:
            v115 = *a4++;
            *v105++ = v115;
          }

          while (a4 != v40);
          goto LABEL_184;
        }

        *v92 = *a4;
        v94 = *(a2 + 24);
        if (v91 > 0x10)
        {
          *(v94 + 16) = *(a4 + 1);
          if (v91 >= 33)
          {
            v95 = v94 + v91;
            v96 = (v94 + 32);
            v97 = (a4 + 48);
            do
            {
              *v96 = *(v97 - 1);
              v98 = *v97;
              v97 += 2;
              v96[1] = v98;
              v96 += 2;
            }

            while (v96 < v95);
          }

          goto LABEL_184;
        }

        *(a2 + 24) = v94 + v91;
        v99 = *(a2 + 8);
LABEL_186:
        v117 = v83 + v65;
        *(v99 + 4) = v91;
        *v99 = v68;
        v118 = v83 + v65 - 3;
        if (v118 >= 0x10000)
        {
          v119 = (v99 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v119;
        }

        *(v99 + 6) = v118;
        v120 = v99 + 8;
        *(a2 + 8) = v99 + 8;
        a4 = &v40[v117];
        v18 = v161;
        if (v51 < &v40[v117])
        {
          *(v31 + 4 * v38) = v51 - v8;
        }

        if (a4 > v20)
        {
          v121 = v25;
          v27 = v69;
          goto LABEL_273;
        }

        v122 = v56 + 2;
        if (v6 > 6)
        {
          if (v6 == 7)
          {
            v123 = *(v160 + v56);
            v124 = -1079680256;
          }

          else
          {
            if (v6 != 8)
            {
              goto LABEL_199;
            }

            v123 = *(v160 + v56);
            v124 = -1213897629;
          }
        }

        else
        {
          if (v6 != 5)
          {
            if (v6 == 6)
            {
              v123 = *(v160 + v56);
              v124 = -1080360960;
              goto LABEL_202;
            }

LABEL_199:
            *(v31 + 4 * ((-1640531535 * *(v160 + v56)) >> v169)) = v122;
            v125 = a4 - 2;
            v126 = (-1640531535 * *(a4 - 2)) >> v169;
LABEL_203:
            *(v31 + 4 * v126) = v125 - v8;
            while (2)
            {
              v27 = v25;
              v25 = v69;
              v131 = (a4 - v8 - v27);
              if (v131 >= v17)
              {
                v132 = v8;
              }

              else
              {
                v132 = v30;
              }

              if (!v27 || (v131 - v17) > 0xFFFFFFFC || (v133 = v132 + v131, *(v132 + v131) != *a4))
              {
                v121 = v27;
                v27 = v69;
LABEL_273:
                v28 = &a4[v161];
                v29 = &a4[v161 + 1];
                v25 = v121;
                if (v29 >= v20)
                {
LABEL_279:
                  v156 = v165;
                  if (v27)
                  {
                    v157 = v27;
                  }

                  else
                  {
                    v157 = v164;
                  }

                  if (v27)
                  {
                    v158 = v164 == 0;
                  }

                  else
                  {
                    v158 = 1;
                  }

                  if (!v158)
                  {
                    v156 = v164;
                  }

                  if (v121)
                  {
                    v156 = v121;
                  }

                  *a3 = v157;
                  a3[1] = v156;
                  return v19 - a4;
                }

                goto LABEL_30;
              }

              if (v131 >= v17)
              {
                v134 = v19;
              }

              else
              {
                v134 = (v30 + v17);
              }

              v135 = (a4 + 4);
              v136 = (v133 + 4);
              v137 = &v134[a4 - v133];
              if (v137 >= v19)
              {
                v138 = v19;
              }

              else
              {
                v138 = v137;
              }

              if (v138 - 7 <= v135)
              {
                v139 = v136;
                v141 = a4 + 4;
                goto LABEL_226;
              }

              if (*v136 == *v135)
              {
                v139 = (v132 + v131 + 12);
                v140 = (a4 + 12);
                while (1)
                {
                  v141 = v140;
                  if (v140 >= v138 - 7)
                  {
                    break;
                  }

                  v143 = *v139;
                  v139 += 4;
                  v142 = v143;
                  v140 += 8;
                  if (v143 != *v141)
                  {
                    v144 = v141 + (__clz(__rbit64(*v141 ^ v142)) >> 3) - v135;
                    goto LABEL_237;
                  }
                }

LABEL_226:
                if (v141 < v138 - 3 && *v139 == *v141)
                {
                  v139 += 2;
                  v141 = (v141 + 4);
                }

                if (v141 < v138 - 1 && *v139 == *v141)
                {
                  ++v139;
                  v141 = (v141 + 2);
                }

                if (v141 < v138 && *v139 == *v141)
                {
                  v141 = (v141 + 1);
                }

                v144 = v141 - v135;
              }

              else
              {
                v144 = __clz(__rbit64(*v135 ^ *v136)) >> 3;
              }

LABEL_237:
              if ((v136 + v144) != v134)
              {
                if (a4 <= v167)
                {
                  goto LABEL_239;
                }

                goto LABEL_240;
              }

              v146 = &v135[v144];
              if (v34 <= v146)
              {
                v153 = (v8 + v17);
                v154 = v146;
                goto LABEL_260;
              }

              if (*v168 == *v146)
              {
                v147 = 0;
                v148 = &a4[v144];
                while (1)
                {
                  v149 = &v148[v147 + 12];
                  if (v149 >= v34)
                  {
                    break;
                  }

                  v150 = *(v170 + v147);
                  v151 = *v149;
                  v147 += 8;
                  if (v150 != v151)
                  {
                    v152 = &v148[v147 + 4 + (__clz(__rbit64(v151 ^ v150)) >> 3)] - v146;
                    goto LABEL_270;
                  }
                }

                v153 = (v170 + v147);
                v154 = &a4[v144 + 12 + v147];
LABEL_260:
                if (v154 < v163 && *v153 == *v154)
                {
                  ++v153;
                  v154 += 4;
                }

                if (v154 < v162 && *v153 == *v154)
                {
                  v153 = (v153 + 2);
                  v154 += 2;
                }

                if (v154 < v19 && *v153 == *v154)
                {
                  ++v154;
                }

                v152 = v154 - v146;
              }

              else
              {
                v152 = __clz(__rbit64(*v146 ^ *v168)) >> 3;
              }

LABEL_270:
              v144 += v152;
              if (a4 <= v167)
              {
LABEL_239:
                **(a2 + 24) = *a4;
                v120 = *(a2 + 8);
              }

LABEL_240:
              *(v120 + 4) = 0;
              *v120 = 1;
              if (v144 + 1 >= 0x10000)
              {
                v145 = (v120 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v145;
              }

              *(v120 + 6) = v144 + 1;
              v120 += 8;
              *(a2 + 8) = v120;
              if (v6 > 6)
              {
                if (v6 == 7)
                {
                  v128 = *a4;
                  v129 = -1079680256;
                  break;
                }

                if (v6 != 8)
                {
                  goto LABEL_255;
                }

                v128 = *a4;
                v129 = -1213897629;
              }

              else
              {
                if (v6 != 5)
                {
                  if (v6 == 6)
                  {
                    v128 = *a4;
                    v129 = -1080360960;
                    break;
                  }

LABEL_255:
                  v130 = (-1640531535 * *a4) >> v169;
LABEL_206:
                  *(v31 + 4 * v130) = a4 - v8;
                  a4 += v144 + 4;
                  v69 = v27;
                  v121 = v25;
                  if (a4 > v20)
                  {
                    goto LABEL_273;
                  }

                  continue;
                }

                v128 = *a4;
                v129 = -1157627904;
              }

              break;
            }

            v130 = (v128 * (v129 | 0xCF1BBCDC00000000)) >> v33;
            goto LABEL_206;
          }

          v123 = *(v160 + v56);
          v124 = -1157627904;
        }

LABEL_202:
        v127 = v124 | 0xCF1BBCDC00000000;
        *(v31 + 4 * ((v123 * v127) >> v33)) = v122;
        v125 = a4 - 2;
        v126 = (*(a4 - 2) * v127) >> v33;
        goto LABEL_203;
      }

      v42 = *(v31 + 4 * v37);
      if (v42 >= v17)
      {
        v43 = v8;
      }

      else
      {
        v43 = v30;
      }

      if (v6 > 6)
      {
        if (v6 == 7)
        {
          v60 = *_X16;
          v61 = -1079680256;
          goto LABEL_86;
        }

        if (v6 == 8)
        {
          v60 = *_X16;
          v61 = -1213897629;
          goto LABEL_86;
        }
      }

      else
      {
        if (v6 == 5)
        {
          v60 = *_X16;
          v61 = -1157627904;
          goto LABEL_86;
        }

        if (v6 == 6)
        {
          v60 = *_X16;
          v61 = -1080360960;
LABEL_86:
          v38 = (v60 * (v61 | 0xCF1BBCDC00000000)) >> v33;
          goto LABEL_87;
        }
      }

      v38 = (-1640531535 * *_X16) >> v169;
LABEL_87:
      v28 = &v51[v18];
      if (&v51[v18] >= v41)
      {
        v45 = v18 + 1;
        __asm
        {
          PRFM            #0, [X16,#0x40]
          PRFM            #0, [X16,#0x80]
        }

        v41 += 128;
      }

      else
      {
        v45 = v18;
      }

      v29 = &_X16[v18];
      v18 = v45;
      v40 = _X16;
      v44 = v51;
      if (v29 >= v20)
      {
        goto LABEL_278;
      }
    }
  }

  return ZSTD_compressBlock_fast(a1, a2, a3, a4, a5);
}

void nw_webtransport_connection_state_set_max_sessions(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 24) = a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_webtransport_connection_state_set_max_sessions";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "nw_webtransport_connection_state_set_max_sessions";
      v5 = "%{public}s called with null connection_state";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "nw_webtransport_connection_state_set_max_sessions";
      v5 = "%{public}s called with null connection_state, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "nw_webtransport_connection_state_set_max_sessions";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null connection_state, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "nw_webtransport_connection_state_set_max_sessions";
      v5 = "%{public}s called with null connection_state, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

uint64_t nw_webtransport_connection_state_get_max_sessions(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 24);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_webtransport_connection_state_get_max_sessions";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_webtransport_connection_state_get_max_sessions";
        v5 = "%{public}s called with null connection_state";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v7 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v7)
        {
          *buf = 136446466;
          v11 = "nw_webtransport_connection_state_get_max_sessions";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null connection_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "nw_webtransport_connection_state_get_max_sessions";
        v5 = "%{public}s called with null connection_state, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_webtransport_connection_state_get_max_sessions";
        v5 = "%{public}s called with null connection_state, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

double __nw_protocol_webtransport_identifier_block_invoke()
{
  dword_1EA841FDC = 0;
  unk_1EA841FCD = 0u;
  strcpy(nw_protocol_webtransport_identifier::protocol_identifier, "webtransport");
  *&result = 0x200000004;
  qword_1EA841FE0 = 0x200000004;
  return result;
}

uint64_t nw_protocol_webtransport_create(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = malloc_type_calloc(1uLL, 0x248uLL, 0xBB551947uLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, 0x248uLL);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_protocol_webtransport_create";
    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    v20 = 584;
    v9 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v9);
    if (result || (free(v9), bzero(0, 0x248uLL), MEMORY[0x170] = 0, MEMORY[0x178] &= ~1u, MEMORY[0x180] = 0, MEMORY[0x188] &= ~1u, MEMORY[0x190] = 0, MEMORY[0x198] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, *&buf[4] = "nw_protocol_webtransport_create", v11 = _os_log_send_and_compose_impl(), result = __nwlog_should_abort(v11), result))
    {
      __break(1u);
      return result;
    }

    free(v11);
  }

  v8[2] = a1;
  if (nw_protocol_webtransport_session_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_webtransport_session_callbacks(void)::onceToken, &__block_literal_global_18_36412);
  }

  v8[3] = &nw_protocol_webtransport_session_callbacks(void)::protocol_callbacks;
  v8[5] = v8;
  if (nw_protocol_webtransport_session_get_listen_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_webtransport_session_get_listen_callbacks(void)::onceToken, &__block_literal_global_67_36413);
  }

  v8[8] = &nw_protocol_webtransport_session_get_listen_callbacks(void)::listen_protocol_callbacks;
  v8[15] = 0;
  v8[16] = v8 + 15;
  v8[17] = 0;
  v8[18] = v8 + 17;
  v8[19] = 0;
  *(v8 + 160) = 0;
  v8[11] = v8;
  v8[12] = -1;
  v8[13] = -1;
  v8[14] = -1;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v12 = *(v8 + 392);
  if (v12)
  {
    v13 = v8[48];
    if (v13)
    {
      os_release(v13);
      v12 = *(v8 + 392);
    }
  }

  v8[48] = a3;
  *(v8 + 392) = v12 | 1;
  v8[59] = 0;
  *(v8 + 120) = 2;
  v8[21] = -1;
  v8[22] = -1;
  v8[23] = -1;
  *(v8 + 580) = *(v8 + 580) & 0xFE | nw_parameters_get_server_mode(a4);
  v8[24] = 0;
  v8[25] = 0;
  v8[42] = 0;
  v8[43] = v8 + 42;
  *(v8 + 122) = 0;
  if (nw_parameters_get_logging_disabled(a4))
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  *(v8 + 580) = *(v8 + 580) & 0xFD | v14;
  v8[52] = nw_parameters_copy_context(a4);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v20 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __nw_protocol_webtransport_create_block_invoke;
  aBlock[3] = &unk_1E6A31848;
  aBlock[4] = buf;
  v8[58] = _Block_copy(aBlock);
  _Block_object_dispose(buf, 8);
  if ((*(v8 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(v8 + 123);
      v17 = *(v8 + 580) & 1;
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_create";
      *&buf[12] = 2082;
      *&buf[14] = v8 + 62;
      *&buf[22] = 2080;
      v20 = " ";
      v21 = 1024;
      v22 = v16;
      v23 = 1024;
      v24 = v17;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Created webtransport, server mode: %d", buf, 0x2Cu);
    }
  }

  return v8;
}

uint64_t __nw_protocol_webtransport_create_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void nw_protocol_webtransport_session_listen_protocol_disconnected(nw_listen_protocol *a1, nw_protocol *a2, int a3)
{
  v213 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
    v5 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v199[0]) = 0;
    if (!__nwlog_fault(v5, type, v199))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null listener";
    }

    else if (LOBYTE(v199[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type[0];
      v97 = os_log_type_enabled(v6, type[0]);
      if (backtrace_string)
      {
        if (v97)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (!v97)
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null listener, backtrace limit exceeded";
    }

    goto LABEL_27;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
    v5 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v199[0]) = 0;
    if (!__nwlog_fault(v5, type, v199))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null webtransport_session";
      goto LABEL_27;
    }

    if (LOBYTE(v199[0]) != 1)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_27;
    }

    v98 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type[0];
    v99 = os_log_type_enabled(v6, type[0]);
    if (!v98)
    {
      if (!v99)
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s called with null webtransport_session, no backtrace";
      goto LABEL_27;
    }

    if (v99)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = v98;
      v100 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
LABEL_173:
      _os_log_impl(&dword_181A37000, v6, v7, v100, buf, 0x16u);
    }

LABEL_174:
    free(v98);
    if (!v5)
    {
      return;
    }

    goto LABEL_30;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v92 = a2;
    v93 = __nwlog_obj();
    v94 = os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG);
    a2 = v92;
    if (v94)
    {
      v95 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v207 = " ";
      *v208 = 1024;
      *&v208[2] = v95;
      _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> listen protocol is disconnected", buf, 0x26u);
      a2 = v92;
    }
  }

  if (*(handle + 54) != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
    v5 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v199[0]) = 0;
    if (!__nwlog_fault(v5, type, v199))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler";
      goto LABEL_27;
    }

    if (LOBYTE(v199[0]) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler, backtrace limit exceeded";
      goto LABEL_27;
    }

    v14 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v16 = type[0];
    v17 = os_log_type_enabled(gLogObj, type[0]);
    if (v14)
    {
      if (v17)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
        *&buf[12] = 2082;
        *&buf[14] = v14;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v14);
      if (!v5)
      {
        return;
      }

LABEL_30:
      free(v5);
      return;
    }

    if (v17)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_disconnected";
      v8 = "%{public}s Ignoring webtransport listen protocol disconnected, not sent by connected output handler, no backtrace";
      v23 = v15;
      v24 = v16;
      goto LABEL_28;
    }

LABEL_29:
    if (!v5)
    {
      return;
    }

    goto LABEL_30;
  }

  if (*(handle + 119) == 5)
  {
    if ((handle[580] & 2) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v10 = *(handle + 123);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = handle + 496;
    *&buf[22] = 2080;
    v207 = " ";
    *v208 = 1024;
    *&v208[2] = v10;
    v11 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  if (a3)
  {
    if ((handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v19 = *(handle + 123);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v207 = " ";
        *v208 = 1024;
        *&v208[2] = v19;
        *&v208[6] = 1024;
        *&v208[8] = a3;
        v20 = "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d";
        v21 = v18;
        v22 = 44;
LABEL_35:
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
      }
    }
  }

  else if ((handle[580] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v26 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v207 = " ";
      *v208 = 1024;
      *&v208[2] = v26;
      v20 = "%{public}s %{public}s%s<i%u> Closing webtransport session without error";
      v21 = v25;
      v22 = 38;
      goto LABEL_35;
    }
  }

  v27 = *(handle + 119);
  *(handle + 119) = 5;
  v28 = *(handle + 24);
  if (v28)
  {
    v184[0] = MEMORY[0x1E69E9820];
    v184[1] = 0x40000000;
    v184[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
    v184[3] = &__block_descriptor_tmp_24_36439;
    v185 = a3;
    nw_hash_table_apply(v28, v184);
  }

  v29 = *(handle + 56);
  if (v29)
  {
    v30 = *(v29 + 88);
    if (a3)
    {
      nw_protocol_error(*(v29 + 48), *(handle + 56));
    }

    nw_protocol_disconnect(v29, v30);
  }

  v31 = *(handle + 42);
  if (v31)
  {
    if (a3)
    {
      do
      {
        v32 = *(v31 + 112);
        v33 = *(v31 + 88);
        nw_protocol_error(*(v31 + 48), v31);
        nw_protocol_disconnect(v31, v33);
        v31 = v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v34 = *(v31 + 112);
        nw_protocol_disconnect(v31, *(v31 + 88));
        v31 = v34;
      }

      while (v34);
    }
  }

  v35 = *(handle + 55);
  if (v35)
  {
    v36 = *(v35 + 88);
    if (a3)
    {
      nw_protocol_error(*(v35 + 48), *(handle + 55));
    }

    nw_protocol_disconnect(v35, v36);
  }

  if (*(handle + 4))
  {
    nw_protocol_remove_instance(handle);
    nw_protocol_disconnect(*(handle + 4), handle);
  }

  v37 = *(handle + 50);
  if (!v37)
  {
    return;
  }

  webtransport_state = nw_http_connection_metadata_get_webtransport_state(v37);
  if (!webtransport_state)
  {
    return;
  }

  v39 = webtransport_state;
  if (v27 != 4 && v27 != 1)
  {
    return;
  }

  v40 = *(webtransport_state + 16);
  *(webtransport_state + 16) = v40 - 1;
  if (!v40)
  {
    __nwlog_obj();
    v41 = v39[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v207 = 1;
    *v208 = 2048;
    *&v208[2] = v41;
    v42 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v199[0]) = 0;
    if (__nwlog_fault(v42, type, v199))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type[0];
        if (os_log_type_enabled(v43, type[0]))
        {
          v45 = v39[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v207 = 1;
          *v208 = 2048;
          *&v208[2] = v45;
          v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_73:
          _os_log_impl(&dword_181A37000, v43, v44, v46, buf, 0x2Au);
        }
      }

      else if (LOBYTE(v199[0]) == 1)
      {
        v47 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = type[0];
        v48 = os_log_type_enabled(v43, type[0]);
        if (v47)
        {
          if (v48)
          {
            v49 = v39[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v207 = 1;
            *v208 = 2048;
            *&v208[2] = v49;
            *&v208[10] = 2082;
            *&v208[12] = v47;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v47);
          goto LABEL_74;
        }

        if (v48)
        {
          v51 = v39[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v207 = 1;
          *v208 = 2048;
          *&v208[2] = v51;
          v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v43 = __nwlog_obj();
        v44 = type[0];
        if (os_log_type_enabled(v43, type[0]))
        {
          v50 = v39[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v207 = 1;
          *v208 = 2048;
          *&v208[2] = v50;
          v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v42)
    {
      free(v42);
    }

    v39[2] = 0;
  }

  if (handle[580])
  {
    return;
  }

  v52 = *v39;
  if (!*v39)
  {
    return;
  }

  v53 = *(v52 + 352);
  v54 = *(v52 + 360);
  v55 = (v53 + 360);
  if (!v53)
  {
    v55 = v39 + 1;
  }

  *v55 = v54;
  *v54 = v53;
  *(v52 + 352) = 0;
  *(v52 + 360) = 0;
  v56 = *(v52 + 32);
  if (v56 && *(v52 + 480) == 2)
  {
    v57 = v56[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v154 = v56[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v57 = v154;
    }

    if (nw_protocols_are_equal(v57, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      goto LABEL_92;
    }

    v58 = v56[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v156 = v56[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v58 = v156;
    }

    if (nw_protocols_are_equal(v58, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_92;
    }

    v59 = v56[2];
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      v157 = v56[2];
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
      v59 = v157;
    }

    if (nw_protocols_are_equal(v59, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
LABEL_92:
      v60 = nw_protocol_copy_info(v56);
      v61 = v60;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_27_36446;
      aBlock[4] = v52;
      if (v60)
      {
        _nw_array_apply(v60, aBlock);
        v62 = *(v52 + 400);
        if (!v62)
        {
          os_release(v61);
          return;
        }
      }

      else
      {
        v62 = *(v52 + 400);
        if (!v62)
        {
          return;
        }
      }

      version = nw_http_connection_metadata_get_version(v62);
      v64 = version;
      if (version == 4)
      {
        v65 = 0;
      }

      else
      {
        if (version != 5)
        {
LABEL_101:
          v66 = v56[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v155 = v56[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v66 = v155;
          }

          v67 = nw_protocols_are_equal(v66, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v68 = *(v52 + 580);
          if (v67)
          {
            v68 |= 0x40u;
            *(v52 + 580) = v68;
          }

          if ((v68 & 2) == 0)
          {
            v69 = __nwlog_obj();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
            {
              v70 = *(v52 + 492);
              if (v64 == 4)
              {
                v71 = 2;
              }

              else
              {
                v71 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v52 + 496;
              *&buf[22] = 2080;
              v207 = " ";
              *v208 = 1024;
              *&v208[2] = v70;
              *&v208[6] = 1024;
              *&v208[8] = v71;
              _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v61)
          {
            os_release(v61);
          }

          goto LABEL_113;
        }

        v65 = 1;
      }

      *(v52 + 480) = v65;
      goto LABEL_101;
    }
  }

LABEL_113:
  v72 = *(v52 + 480);
  if (v72 > 1)
  {
    if ((*(v52 + 580) & 2) != 0)
    {
      return;
    }

    v73 = __nwlog_obj();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v74 = *(v52 + 492);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_establish";
    *&buf[12] = 2082;
    *&buf[14] = v52 + 496;
    *&buf[22] = 2080;
    v207 = " ";
    *v208 = 1024;
    *&v208[2] = v74;
    v11 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
    v12 = v73;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_14:
    _os_log_impl(&dword_181A37000, v12, v13, v11, buf, 0x26u);
    return;
  }

  if ((*(v52 + 580) & 1) == 0)
  {
    if (!*(v52 + 476))
    {
      nw_webtransport_http_send_connect(v52);
    }

    return;
  }

  v75 = *(v52 + 476);
  if (v72 != 1)
  {
    if (v75)
    {
      return;
    }

    *(v52 + 476) = 3;
    v84 = *(v52 + 48);
    if (v84)
    {
      v85 = *(v84 + 40);
      if (v85)
      {
        *(v52 + 440) = v85;
        return;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
      v5 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v199[0]) = 0;
      if (!__nwlog_fault(v5, type, v199))
      {
        goto LABEL_29;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type[0];
        if (!os_log_type_enabled(v6, type[0]))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null webtransport_stream";
      }

      else if (LOBYTE(v199[0]) == 1)
      {
        v98 = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type[0];
        v166 = os_log_type_enabled(v6, type[0]);
        if (v98)
        {
          if (v166)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v98;
            v100 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
            goto LABEL_173;
          }

          goto LABEL_174;
        }

        if (!v166)
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null webtransport_stream, no backtrace";
      }

      else
      {
        v6 = __nwlog_obj();
        v7 = type[0];
        if (!os_log_type_enabled(v6, type[0]))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
      v5 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v199[0]) = 0;
      if (!__nwlog_fault(v5, type, v199))
      {
        goto LABEL_29;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type[0];
        if (!os_log_type_enabled(v6, type[0]))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null input_protocol";
      }

      else if (LOBYTE(v199[0]) == 1)
      {
        v98 = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type[0];
        v165 = os_log_type_enabled(v6, type[0]);
        if (v98)
        {
          if (v165)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v98;
            v100 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
            goto LABEL_173;
          }

          goto LABEL_174;
        }

        if (!v165)
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null input_protocol, no backtrace";
      }

      else
      {
        v6 = __nwlog_obj();
        v7 = type[0];
        if (!os_log_type_enabled(v6, type[0]))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v8 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      }
    }

    goto LABEL_27;
  }

  if (v75 != 3)
  {
    if (v75)
    {
      return;
    }

    v76 = *(v52 + 48);
    if (v76)
    {
      v77 = *(v76 + 40);
      if (v77)
      {
        nw_protocol_replace_input_handler(*(v52 + 32), v52, *(v76 + 40));
        *(v52 + 440) = v77;
        nw_protocol_set_output_handler(v52, 0);
        nw_protocol_set_input_handler(v52, 0);
        if (*(v52 + 580))
        {
          v78 = *(*(v52 + 440) + 32);
          v79 = *(v78 + 16);
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v170 = *(v78 + 16);
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v79 = v170;
          }

          if (nw_protocols_are_equal(v79, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
            goto LABEL_132;
          }

          v80 = *(v78 + 16);
          if (nw_protocol_http3_identifier::onceToken != -1)
          {
            v173 = *(v78 + 16);
            dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
            v80 = v173;
          }

          if (nw_protocols_are_equal(v80, &nw_protocol_http3_identifier::http3_protocol_identifier))
          {
LABEL_132:
            v81 = *(v52 + 368);
            if (v81)
            {
              v82 = nw_parameters_copy_protocol_options_legacy(v81, v78);
              if (v82)
              {
                if ((*(v77 + 276) & 0x10) == 0 && gLogDatapath == 1)
                {
                  v174 = v82;
                  v175 = __nwlog_obj();
                  v176 = os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG);
                  v82 = v174;
                  if (v176)
                  {
                    v177 = *(v77 + 88);
                    if (v177)
                    {
                      v178 = *(v177 + 492);
                    }

                    else
                    {
                      v178 = -1;
                    }

                    v183 = *(v77 + 64);
                    *buf = 136447490;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v77 + 192;
                    *&buf[22] = 2080;
                    v207 = " ";
                    *v208 = 1024;
                    *&v208[2] = v178;
                    *&v208[6] = 2048;
                    *&v208[8] = v183;
                    *&v208[16] = 2048;
                    *&v208[18] = v174;
                    _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                    v82 = v174;
                  }
                }

                v83 = v82;
                nw_http3_set_stream_mode(v82, 0);
                os_release(v83);
              }

              else
              {
                if ((*(v52 + 580) & 2) == 0 && gLogDatapath == 1)
                {
                  v181 = __nwlog_obj();
                  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                  {
                    v182 = *(v52 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v52 + 496;
                    *&buf[22] = 2080;
                    v207 = " ";
                    *v208 = 1024;
                    *&v208[2] = v182;
                    _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                  }
                }

                v104 = *(v77 + 88);
                nw_protocol_error(*(v77 + 48), v77);
                nw_protocol_disconnect(v77, v104);
              }
            }
          }
        }

        goto LABEL_192;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
      v160 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v199[0]) = 0;
      if (__nwlog_fault(v160, type, v199))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v161 = __nwlog_obj();
          v162 = type[0];
          if (!os_log_type_enabled(v161, type[0]))
          {
            goto LABEL_387;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v163 = "%{public}s called with null webtransport_stream";
          goto LABEL_386;
        }

        if (LOBYTE(v199[0]) != 1)
        {
          v161 = __nwlog_obj();
          v162 = type[0];
          if (!os_log_type_enabled(v161, type[0]))
          {
            goto LABEL_387;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v163 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
          goto LABEL_386;
        }

        v171 = __nw_create_backtrace_string();
        v161 = __nwlog_obj();
        v162 = type[0];
        v172 = os_log_type_enabled(v161, type[0]);
        if (v171)
        {
          if (v172)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v171;
            _os_log_impl(&dword_181A37000, v161, v162, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v171);
          if (!v160)
          {
            goto LABEL_192;
          }

          goto LABEL_388;
        }

        if (v172)
        {
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v163 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_386:
          _os_log_impl(&dword_181A37000, v161, v162, v163, buf, 0xCu);
        }
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
      v160 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v199[0]) = 0;
      if (!__nwlog_fault(v160, type, v199))
      {
        goto LABEL_387;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v161 = __nwlog_obj();
        v162 = type[0];
        if (!os_log_type_enabled(v161, type[0]))
        {
          goto LABEL_387;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
        v163 = "%{public}s called with null input_protocol";
        goto LABEL_386;
      }

      if (LOBYTE(v199[0]) != 1)
      {
        v161 = __nwlog_obj();
        v162 = type[0];
        if (!os_log_type_enabled(v161, type[0]))
        {
          goto LABEL_387;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
        v163 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_386;
      }

      v167 = __nw_create_backtrace_string();
      v161 = __nwlog_obj();
      v162 = type[0];
      v168 = os_log_type_enabled(v161, type[0]);
      if (!v167)
      {
        if (!v168)
        {
          goto LABEL_387;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
        v163 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_386;
      }

      if (v168)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
        *&buf[12] = 2082;
        *&buf[14] = v167;
        _os_log_impl(&dword_181A37000, v161, v162, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v167);
    }

LABEL_387:
    if (!v160)
    {
LABEL_192:
      *(v52 + 476) = 2;
      return;
    }

LABEL_388:
    free(v160);
    goto LABEL_192;
  }

  v86 = *(v52 + 32);
  if (!v86)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_http_get_input";
    v5 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v199[0]) = 0;
    if (!__nwlog_fault(v5, type, v199))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s called with null output_handler";
    }

    else if (LOBYTE(v199[0]) == 1)
    {
      v98 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type[0];
      v169 = os_log_type_enabled(v6, type[0]);
      if (v98)
      {
        if (v169)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v98;
          v100 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
          goto LABEL_173;
        }

        goto LABEL_174;
      }

      if (!v169)
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s called with null output_handler, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s called with null output_handler, backtrace limit exceeded";
    }

    goto LABEL_27;
  }

  v87 = v86[3];
  if (!v87 || !*(v87 + 80))
  {
    if ((*(v52 + 580) & 2) == 0)
    {
      v158 = __nwlog_obj();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        v159 = *(v52 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        *&buf[12] = 2082;
        *&buf[14] = v52 + 496;
        *&buf[22] = 2080;
        v207 = " ";
        *v208 = 1024;
        *&v208[2] = v159;
        _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_http_get_input";
    v5 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v199[0]) = 0;
    if (!__nwlog_fault(v5, type, v199))
    {
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s output handler has no get_input_frames callback";
      goto LABEL_27;
    }

    if (LOBYTE(v199[0]) == 1)
    {
      v98 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type[0];
      v164 = os_log_type_enabled(v6, type[0]);
      if (v98)
      {
        if (v164)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v98;
          v100 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
          goto LABEL_173;
        }

        goto LABEL_174;
      }

      if (!v164)
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s output handler has no get_input_frames callback, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type[0];
      if (!os_log_type_enabled(v6, type[0]))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v8 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
    }

LABEL_27:
    v23 = v6;
    v24 = v7;
LABEL_28:
    _os_log_impl(&dword_181A37000, v23, v24, v8, buf, 0xCu);
    goto LABEL_29;
  }

  for (i = 3; (i | 2) == 3; i = *(v52 + 476))
  {
    if (!nw_protocol_get_input_frames(v86, v52, 0, 0, 0xFFFFFFFFLL, v52 + 120))
    {
      return;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v207 = __Block_byref_object_copy__36471;
    *v208 = __Block_byref_object_dispose__36472;
    *&v208[8] = nw_protocol_copy_http_definition();
    v208[16] |= 1u;
    *type = MEMORY[0x1E69E9820];
    v188 = 0x40000000;
    v189 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
    v190 = &unk_1E6A31940;
    v191 = buf;
    v192 = v52;
    v193 = v52 + 120;
    v89 = *(v52 + 120);
    do
    {
      if (!v89)
      {
        break;
      }

      v90 = *(v89 + 32);
      v91 = (v189)(type);
      v89 = v90;
    }

    while ((v91 & 1) != 0);
    _Block_object_dispose(buf, 8);
    if ((v208[16] & 1) != 0 && *&v208[8])
    {
      os_release(*&v208[8]);
    }
  }

  v101 = *(v52 + 480);
  if (v101 == 1)
  {
    nw_webtransport_http3_handle_input(v52);
    v103 = *(v52 + 448);
    if (v103 && *(v103 + 72))
    {
      nw_protocol_input_available(*(v103 + 48), v103);
    }
  }

  else if (!v101)
  {
    if ((*(v52 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v179 = __nwlog_obj();
      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
      {
        v180 = *(v52 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_http2_handle_capsules";
        *&buf[12] = 2082;
        *&buf[14] = v52 + 496;
        *&buf[22] = 2080;
        v207 = " ";
        *v208 = 1024;
        *&v208[2] = v180;
        _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (*(v52 + 476) == 4)
    {
      v102 = (v52 + 96);
      while (1)
      {
        capsule = nw_http_capsule_framer_read_capsule((v52 + 96), v52);
        if (!capsule && !*(v52 + 136))
        {
          return;
        }

        if (*(v52 + 456))
        {
          goto LABEL_204;
        }

        v110 = *v102;
        if (*v102 == -1)
        {
LABEL_261:
          v124 = __nwlog_obj();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2048;
            *&buf[14] = v110;
            _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
          }

          goto LABEL_204;
        }

        v111 = *(v52 + 104) != -1 && *(v52 + 112) == 0;
        if (v110 <= 16770303)
        {
          if ((v110 - 16770048) < 6 || (v110 + 1) <= 4 && v110)
          {
            goto LABEL_261;
          }
        }

        else if ((v110 - 420171065) <= 9 && ((1 << (v110 - 57)) & 0x2EF) != 0)
        {
          v205 = -1;
          if (nw_http_capsule_framer_parse_vle_value((v52 + 96), v52, &v205))
          {
            stream = nw_webtransport_session_get_stream(v52, v205);
            if (stream)
            {
              goto LABEL_255;
            }

            if ((v110 - 420171067) > 1)
            {
              goto LABEL_286;
            }

            v131 = v205;
            v132 = *(v52 + 580);
            if (v205 >> 60 || ((v205 ^ v132) & 1) == 0)
            {
              if ((v132 & 2) == 0)
              {
                v141 = __nwlog_obj();
                if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                {
                  v142 = *(v52 + 492);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v52 + 496;
                  *&buf[22] = 2080;
                  v207 = " ";
                  *v208 = 1024;
                  *&v208[2] = v142;
                  v143 = v141;
                  v144 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                  goto LABEL_285;
                }
              }

LABEL_286:
              if ((*(v52 + 580) & 2) == 0)
              {
                v145 = __nwlog_obj();
                if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                {
                  v146 = *(v52 + 492);
                  *buf = 136447490;
                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                  *&buf[12] = 2082;
                  *&buf[14] = v52 + 496;
                  *&buf[22] = 2080;
                  v207 = " ";
                  *v208 = 1024;
                  *&v208[2] = v146;
                  *&v208[6] = 2048;
                  *&v208[8] = v205;
                  *&v208[16] = 2048;
                  *&v208[18] = v110;
                  _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                }
              }

              goto LABEL_204;
            }

            v133 = *(v52 + 424);
            if (!v133 || (v134 = *v133) == 0 || !*v134)
            {
              if ((v132 & 2) == 0)
              {
                v147 = __nwlog_obj();
                if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                {
                  v148 = *(v52 + 492);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v52 + 496;
                  *&buf[22] = 2080;
                  v207 = " ";
                  *v208 = 1024;
                  *&v208[2] = v148;
                  v143 = v147;
                  v144 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_285:
                  _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_ERROR, v144, buf, 0x26u);
                }
              }

              goto LABEL_286;
            }

            v135 = _nw_parameters_copy(*(v52 + 368));
            *(v52 + 580) |= 0x20u;
            *(v52 + 176) = v131;
            v136 = (***(v52 + 424))(*(v52 + 424), *(v52 + 384), v135);
            *(v52 + 176) = -1;
            *(v52 + 580) &= ~0x20u;
            if (v136)
            {
              v137 = nw_webtransport_session_get_stream(v52, v131);
            }

            else
            {
              v137 = 0;
            }

            if (v135)
            {
              os_release(v135);
            }

            if (!v137)
            {
              goto LABEL_286;
            }

            stream = v137;
            if (*(v137 + 184) != 3)
            {
LABEL_255:
              *(v52 + 456) = stream;
              goto LABEL_204;
            }

            if ((*(v52 + 580) & 2) != 0)
            {
              goto LABEL_204;
            }

            v149 = __nwlog_obj();
            if (!os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_204;
            }

            v150 = *(v52 + 492);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2082;
            *&buf[14] = v52 + 496;
            *&buf[22] = 2080;
            v207 = " ";
            *v208 = 1024;
            *&v208[2] = v150;
            *&v208[6] = 2048;
            *&v208[8] = v205;
            v127 = v149;
            v128 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
          }

          else
          {
            if (!v111)
            {
              goto LABEL_204;
            }

            if ((*(v52 + 580) & 2) != 0)
            {
              goto LABEL_204;
            }

            v125 = __nwlog_obj();
            if (!os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_204;
            }

            v126 = *(v52 + 492);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2082;
            *&buf[14] = v52 + 496;
            *&buf[22] = 2080;
            v207 = " ";
            *v208 = 1024;
            *&v208[2] = v126;
            *&v208[6] = 2048;
            *&v208[8] = v110;
            v127 = v125;
            v128 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
          }

          _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_ERROR, v128, buf, 0x30u);
        }

        else if ((v110 - 16770304) < 4)
        {
          goto LABEL_261;
        }

LABEL_204:
        v109 = *(v52 + 96);
        if ((*(v52 + 580) & 2) == 0 && gLogDatapath == 1)
        {
          v151 = __nwlog_obj();
          if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
          {
            v152 = *(v52 + 492);
            v153 = *(v52 + 104);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_http2_handle_capsules";
            *&buf[12] = 2082;
            *&buf[14] = v52 + 496;
            *&buf[22] = 2080;
            v207 = " ";
            *v208 = 1024;
            *&v208[2] = v152;
            *&v208[6] = 2048;
            *&v208[8] = v109;
            *&v208[16] = 2048;
            *&v208[18] = v153;
            _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
          }
        }

        if (v109 > 16770303)
        {
          if (v109 <= 420171064)
          {
            if ((v109 - 16770304) < 4)
            {
              goto LABEL_223;
            }

            if (v109 == 420171064)
            {
              goto LABEL_222;
            }

            goto LABEL_225;
          }

          if ((v109 - 420171065) >= 2)
          {
            if ((v109 - 420171067) < 2)
            {
              v112 = *(v52 + 456);
              v114 = v109 == 420171068 && capsule;
              v199[0] = MEMORY[0x1E69E9820];
              v199[1] = 0x40000000;
              v200 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
              v201 = &__block_descriptor_tmp_34_36485;
              v204 = v114;
              v202 = v52 + 96;
              v203 = v112;
              v115 = *(v52 + 136);
              do
              {
                if (!v115)
                {
                  break;
                }

                v116 = *(v115 + 32);
                v117 = (v200)(v199);
                v115 = v116;
              }

              while ((v117 & 1) != 0);
              if (!v114)
              {
                goto LABEL_281;
              }

              nw_protocol_input_finished(v112, v52);
            }

            goto LABEL_225;
          }

          if (capsule)
          {
            v118 = *(v52 + 456);
            v205 = -1;
            if (nw_http_capsule_framer_parse_vle_value((v52 + 96), v52, &v205))
            {
              if (!v118 || (*(v118 + 276) & 0x10) == 0)
              {
                v119 = __nwlog_obj();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                {
                  if (v118)
                  {
                    v120 = (v118 + 192);
                  }

                  else
                  {
                    v120 = "";
                  }

                  v121 = " ";
                  if (!v118)
                  {
                    v121 = "";
                  }

                  v122 = *(v118 + 88);
                  if (v122)
                  {
                    v105 = *(v122 + 492);
                  }

                  else
                  {
                    v105 = -1;
                  }

                  v106 = *(v118 + 64);
                  *buf = 136448002;
                  *&buf[4] = "nw_webtransport_http2_handle_capsules";
                  *&buf[12] = 2082;
                  *&buf[14] = v120;
                  *&buf[22] = 2080;
                  v207 = v121;
                  *v208 = 1024;
                  *&v208[2] = v105;
                  *&v208[6] = 2048;
                  *&v208[8] = v106;
                  *&v208[16] = 2048;
                  *&v208[18] = v109;
                  v209 = 2048;
                  v210 = v106;
                  v211 = 2048;
                  v212 = v205;
                  _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                }
              }

              nw_protocol_webtransport_stream_error(v118, v52);
              nw_protocol_webtransport_stream_disconnect(v118, v107);
            }

            else if ((*(v52 + 580) & 2) == 0)
            {
              v129 = __nwlog_obj();
              if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
              {
                v130 = *(v52 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = v52 + 496;
                *&buf[22] = 2080;
                v207 = " ";
                *v208 = 1024;
                *&v208[2] = v130;
                *&v208[6] = 2048;
                *&v208[8] = v109;
                _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
              }
            }

LABEL_200:
            *(v52 + 456) = 0;
            nw_http_capsule_complete_capsule(v52 + 96);
          }
        }

        else
        {
          if (v109 <= 16770047)
          {
            if ((v109 - 1) < 3 || v109 == -1)
            {
LABEL_223:
              v113 = __nwlog_obj();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2048;
                *&buf[14] = v109;
                _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_225;
            }

            if (!v109)
            {
              v112 = *(v52 + 448);
              if (v112 && *(v112 + 184) != 3)
              {
                v194[0] = MEMORY[0x1E69E9820];
                v194[1] = 0x40000000;
                v195 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                v196 = &__block_descriptor_tmp_35_36486;
                v197 = v52 + 96;
                v198 = v112;
                v138 = *(v52 + 136);
                do
                {
                  if (!v138)
                  {
                    break;
                  }

                  v139 = *(v138 + 32);
                  v140 = (v195)(v194);
                  v138 = v139;
                }

                while ((v140 & 1) != 0);
LABEL_281:
                nw_protocol_input_available(v112, v52);
                goto LABEL_225;
              }

LABEL_222:
              nw_frame_array_finalize(v52 + 136, 1, 1);
            }
          }

          else if ((v109 - 16770048) < 6)
          {
            goto LABEL_223;
          }

LABEL_225:
          if (capsule)
          {
            goto LABEL_200;
          }
        }
      }
    }
  }
}

uint64_t ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v4 = object;
    v5 = *(a1 + 32);
    v6 = *(object + 88);
    if (v5)
    {
      nw_protocol_error(*(object + 48), object);
    }

    nw_protocol_disconnect(v4, v6);
    return 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_webtransport_stream_terminate";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v8, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v17 = "nw_webtransport_stream_terminate";
      v11 = "%{public}s called with null webtransport_stream";
      goto LABEL_19;
    }

    if (v14 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v17 = "nw_webtransport_stream_terminate";
      v11 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v13)
      {
        *buf = 136446466;
        v17 = "nw_webtransport_stream_terminate";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v13)
    {
      *buf = 136446210;
      v17 = "nw_webtransport_stream_terminate";
      v11 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  return 1;
}

uint64_t ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (nw_protocol_metadata_is_http_connection(a3))
  {
    if (v3)
    {
      v3 = os_retain(v3);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 408);
    if (v6)
    {
      v7 = *(v5 + 400);
      if (v7)
      {
        os_release(v7);
        v6 = *(v5 + 408);
      }
    }

    *(v5 + 400) = v3;
    *(v5 + 408) = v6 | 1;
  }

  return 1;
}

void nw_webtransport_http_send_connect(uint64_t a1)
{
  v529 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v161 = __nwlog_obj();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
    {
      v162 = *(a1 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_http_send_connect";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 496;
      *&buf[22] = 2080;
      v525 = " ";
      *v526 = 1024;
      *&v526[2] = v162;
      _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if (*(a1 + 580))
  {
    return;
  }

  webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(a1 + 400));
  if (nw_http_connection_metadata_get_settings_received(*(a1 + 400)))
  {
    if ((nw_http_connection_metadata_get_connect_enabled(*(a1 + 400)) & 1) == 0)
    {
      v3 = webtransport_state[3];
      goto LABEL_36;
    }

    if (webtransport_state)
    {
      v3 = webtransport_state[3];
      if (webtransport_state[2] < v3)
      {
        goto LABEL_8;
      }

LABEL_36:
      if (v3)
      {
        if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
        {
          v267 = __nwlog_obj();
          if (os_log_type_enabled(v267, OS_LOG_TYPE_DEBUG))
          {
            v268 = *(a1 + 492);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http_send_connect";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 496;
            *&buf[22] = 2080;
            v525 = " ";
            *v526 = 1024;
            *&v526[2] = v268;
            *&v526[6] = 2048;
            *&v526[8] = a1;
            _os_log_impl(&dword_181A37000, v267, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Queueing webtransport session %p as pending", buf, 0x30u);
          }
        }

        *(a1 + 352) = 0;
        v32 = webtransport_state[1];
        *(a1 + 360) = v32;
        *v32 = a1;
        webtransport_state[1] = a1 + 352;
        return;
      }

      v59 = *(a1 + 580);
      if (*(a1 + 476) != 5)
      {
        if ((*(a1 + 580) & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v61 = *(a1 + 492);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 496;
            *&buf[22] = 2080;
            v525 = " ";
            *v526 = 1024;
            *&v526[2] = v61;
            *&v526[6] = 1024;
            *&v526[8] = 100;
            _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
          }
        }

        v62 = *(a1 + 476);
        *(a1 + 476) = 5;
        v63 = *(a1 + 192);
        if (v63)
        {
          v495 = MEMORY[0x1E69E9820];
          v496 = 0x40000000;
          v497 = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
          v498 = &__block_descriptor_tmp_24_36439;
          v499 = 100;
          nw_hash_table_apply(v63, &v495);
        }

        v64 = *(a1 + 448);
        if (v64)
        {
          v65 = *(v64 + 88);
          nw_protocol_error(*(v64 + 48), *(a1 + 448));
          nw_protocol_disconnect(v64, v65);
        }

        v66 = *(a1 + 336);
        if (v66)
        {
          do
          {
            v67 = *(v66 + 112);
            v68 = *(v66 + 88);
            nw_protocol_error(*(v66 + 48), v66);
            nw_protocol_disconnect(v66, v68);
            v66 = v67;
          }

          while (v67);
        }

        v69 = *(a1 + 440);
        if (v69)
        {
          v70 = *(v69 + 88);
          nw_protocol_error(*(v69 + 48), *(a1 + 440));
          nw_protocol_disconnect(v69, v70);
        }

        if (*(a1 + 32))
        {
          nw_protocol_remove_instance(a1);
          nw_protocol_disconnect(*(a1 + 32), a1);
        }

        v71 = *(a1 + 400);
        if (!v71)
        {
          return;
        }

        v72 = nw_http_connection_metadata_get_webtransport_state(v71);
        if (!v72)
        {
          return;
        }

        v73 = v72;
        if (v62 != 4 && v62 != 1)
        {
          return;
        }

        v74 = *(v72 + 16);
        *(v72 + 16) = v74 - 1;
        if (v74)
        {
LABEL_251:
          if (*(a1 + 580))
          {
            return;
          }

          v170 = *v73;
          if (!*v73)
          {
            return;
          }

          v171 = *(v170 + 352);
          v172 = *(v170 + 360);
          v173 = (v171 + 360);
          if (!v171)
          {
            v173 = v73 + 1;
          }

          *v173 = v172;
          *v172 = v171;
          *(v170 + 352) = 0;
          *(v170 + 360) = 0;
          v174 = *(v170 + 32);
          if (!v174 || *(v170 + 480) != 2)
          {
            goto LABEL_311;
          }

          v175 = v174[2];
          if (nw_protocol_http2_identifier::onceToken != -1)
          {
            v426 = v174[2];
            dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
            v175 = v426;
          }

          if (!nw_protocols_are_equal(v175, &nw_protocol_http2_identifier::http2_protocol_identifier))
          {
            v176 = v174[2];
            if (nw_protocol_http3_identifier::onceToken != -1)
            {
              v436 = v174[2];
              dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
              v176 = v436;
            }

            if (!nw_protocols_are_equal(v176, &nw_protocol_http3_identifier::http3_protocol_identifier))
            {
              v177 = v174[2];
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v448 = v174[2];
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v177 = v448;
              }

              if (!nw_protocols_are_equal(v177, &nw_protocol_http_messaging_identifier::protocol_identifier))
              {
LABEL_311:
                v201 = *(v170 + 480);
                v202 = *(v170 + 580);
                if (v201 <= 1)
                {
                  if (*(v170 + 580))
                  {
                    v203 = *(v170 + 476);
                    if (v201 == 1)
                    {
                      if (v203 != 3)
                      {
                        if (v203)
                        {
                          return;
                        }

                        v204 = *(v170 + 48);
                        if (v204)
                        {
                          v205 = *(v204 + 40);
                          if (v205)
                          {
                            nw_protocol_replace_input_handler(*(v170 + 32), v170, *(v204 + 40));
                            *(v170 + 440) = v205;
                            nw_protocol_set_output_handler(v170, 0);
                            nw_protocol_set_input_handler(v170, 0);
                            if ((*(v170 + 580) & 1) == 0)
                            {
                              goto LABEL_480;
                            }

                            v206 = *(*(v170 + 440) + 32);
                            v207 = *(v206 + 16);
                            if (nw_protocol_http_messaging_identifier::onceToken != -1)
                            {
                              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                            }

                            if (nw_protocols_are_equal(v207, &nw_protocol_http_messaging_identifier::protocol_identifier))
                            {
                              goto LABEL_364;
                            }

                            v208 = *(v206 + 16);
                            if (nw_protocol_http3_identifier::onceToken == -1)
                            {
LABEL_363:
                              if (nw_protocols_are_equal(v208, &nw_protocol_http3_identifier::http3_protocol_identifier))
                              {
LABEL_364:
                                v226 = *(v170 + 368);
                                if (v226)
                                {
                                  v227 = nw_parameters_copy_protocol_options_legacy(v226, v206);
                                  if (v227)
                                  {
                                    v228 = v227;
                                    if ((*(v205 + 276) & 0x10) == 0 && gLogDatapath == 1)
                                    {
                                      v481 = __nwlog_obj();
                                      if (os_log_type_enabled(v481, OS_LOG_TYPE_DEBUG))
                                      {
                                        v482 = *(v205 + 88);
                                        if (v482)
                                        {
                                          v483 = *(v482 + 492);
                                        }

                                        else
                                        {
                                          v483 = -1;
                                        }

                                        v491 = *(v205 + 64);
                                        *buf = 136447490;
                                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v205 + 192;
                                        *&buf[22] = 2080;
                                        v525 = " ";
                                        *v526 = 1024;
                                        *&v526[2] = v483;
                                        *&v526[6] = 2048;
                                        *&v526[8] = v491;
                                        *&v526[16] = 2048;
                                        *&v526[18] = v228;
                                        _os_log_impl(&dword_181A37000, v481, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                                      }
                                    }

                                    nw_http3_set_stream_mode(v228, 0);
                                    os_release(v228);
                                  }

                                  else
                                  {
                                    if ((*(v170 + 580) & 2) == 0 && gLogDatapath == 1)
                                    {
                                      v484 = __nwlog_obj();
                                      if (os_log_type_enabled(v484, OS_LOG_TYPE_DEBUG))
                                      {
                                        v485 = *(v170 + 492);
                                        *buf = 136446978;
                                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v170 + 496;
                                        *&buf[22] = 2080;
                                        v525 = " ";
                                        *v526 = 1024;
                                        *&v526[2] = v485;
                                        _os_log_impl(&dword_181A37000, v484, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                                      }
                                    }

                                    v278 = *(v205 + 88);
                                    nw_protocol_error(*(v205 + 48), v205);
                                    nw_protocol_disconnect(v205, v278);
                                  }
                                }
                              }

LABEL_480:
                              *(v170 + 476) = 2;
                              return;
                            }

LABEL_947:
                            dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                            goto LABEL_363;
                          }

LABEL_861:
                          __nwlog_obj();
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          v451 = _os_log_send_and_compose_impl();
                          type[0] = 16;
                          LOBYTE(v511) = 0;
                          if (!__nwlog_fault(v451, type, &v511))
                          {
                            goto LABEL_1005;
                          }

                          if (type[0] == 17)
                          {
                            v452 = __nwlog_obj();
                            v453 = type[0];
                            if (!os_log_type_enabled(v452, type[0]))
                            {
                              goto LABEL_1005;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                            v454 = "%{public}s called with null webtransport_stream";
LABEL_1004:
                            _os_log_impl(&dword_181A37000, v452, v453, v454, buf, 0xCu);
                            goto LABEL_1005;
                          }

                          if (v511 != 1)
                          {
                            v452 = __nwlog_obj();
                            v453 = type[0];
                            if (!os_log_type_enabled(v452, type[0]))
                            {
                              goto LABEL_1005;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                            v454 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                            goto LABEL_1004;
                          }

                          backtrace_string = __nw_create_backtrace_string();
                          v452 = __nwlog_obj();
                          v453 = type[0];
                          v471 = os_log_type_enabled(v452, type[0]);
                          if (!backtrace_string)
                          {
                            if (!v471)
                            {
                              goto LABEL_1005;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                            v454 = "%{public}s called with null webtransport_stream, no backtrace";
                            goto LABEL_1004;
                          }

                          if (!v471)
                          {
LABEL_920:
                            free(backtrace_string);
                            if (!v451)
                            {
                              goto LABEL_480;
                            }

                            goto LABEL_1006;
                          }

                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = backtrace_string;
                          v467 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_919:
                          _os_log_impl(&dword_181A37000, v452, v453, v467, buf, 0x16u);
                          goto LABEL_920;
                        }

                        __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v451 = _os_log_send_and_compose_impl();
                        type[0] = 16;
                        LOBYTE(v511) = 0;
                        if (!__nwlog_fault(v451, type, &v511))
                        {
                          goto LABEL_1005;
                        }

                        if (type[0] != 17)
                        {
                          if (v511 == 1)
                          {
                            backtrace_string = __nw_create_backtrace_string();
                            v452 = __nwlog_obj();
                            v453 = type[0];
                            v466 = os_log_type_enabled(v452, type[0]);
                            if (backtrace_string)
                            {
                              if (!v466)
                              {
                                goto LABEL_920;
                              }

                              *buf = 136446466;
                              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = backtrace_string;
                              v467 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                              goto LABEL_919;
                            }

LABEL_995:
                            if (!v466)
                            {
                              goto LABEL_1005;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                            v454 = "%{public}s called with null input_protocol, no backtrace";
                            goto LABEL_1004;
                          }

                          goto LABEL_955;
                        }

                        goto LABEL_932;
                      }

                      v249 = *(v170 + 32);
                      if (v249)
                      {
                        v250 = v249[3];
                        if (v250 && *(v250 + 80))
                        {
                          for (i = 3; (i | 2) == 3; i = *(v170 + 476))
                          {
                            if (!nw_protocol_get_input_frames(v249, v170, 0, 0, 0xFFFFFFFFLL, v170 + 120))
                            {
                              return;
                            }

                            *buf = 0;
                            *&buf[8] = buf;
                            *&buf[16] = 0x3802000000;
                            v525 = __Block_byref_object_copy__36471;
                            *v526 = __Block_byref_object_dispose__36472;
                            *&v526[8] = nw_protocol_copy_http_definition();
                            v526[16] |= 1u;
                            *type = MEMORY[0x1E69E9820];
                            *&type[8] = 0x40000000;
                            *&type[16] = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                            v520 = &unk_1E6A31940;
                            v521 = buf;
                            v522 = v170;
                            v523 = v170 + 120;
                            v252 = *(v170 + 120);
                            do
                            {
                              if (!v252)
                              {
                                break;
                              }

                              v253 = *(v252 + 32);
                              v254 = (*&type[16])(type);
                              v252 = v253;
                            }

                            while ((v254 & 1) != 0);
                            _Block_object_dispose(buf, 8);
                            if ((v526[16] & 1) != 0 && *&v526[8])
                            {
                              os_release(*&v526[8]);
                            }
                          }

                          v272 = *(v170 + 480);
                          if (v272 != 1)
                          {
                            if (v272)
                            {
                              return;
                            }

                            if ((*(v170 + 580) & 2) == 0 && gLogDatapath == 1)
                            {
                              v486 = __nwlog_obj();
                              if (os_log_type_enabled(v486, OS_LOG_TYPE_DEBUG))
                              {
                                v487 = *(v170 + 492);
                                *buf = 136446978;
                                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                *&buf[12] = 2082;
                                *&buf[14] = v170 + 496;
                                *&buf[22] = 2080;
                                v525 = " ";
                                *v526 = 1024;
                                *&v526[2] = v487;
                                _os_log_impl(&dword_181A37000, v486, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                              }
                            }

                            if (*(v170 + 476) != 4)
                            {
                              return;
                            }

                            v273 = (v170 + 96);
                            while (1)
                            {
                              capsule = nw_http_capsule_framer_read_capsule((v170 + 96), v170);
                              if (!capsule && !*(v170 + 136))
                              {
                                return;
                              }

                              if (*(v170 + 456))
                              {
                                goto LABEL_606;
                              }

                              v332 = *v273;
                              if (*v273 == -1)
                              {
LABEL_663:
                                v346 = __nwlog_obj();
                                if (os_log_type_enabled(v346, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446466;
                                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v332;
                                  _os_log_impl(&dword_181A37000, v346, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                                }

                                goto LABEL_606;
                              }

                              v333 = *(v170 + 104) != -1 && *(v170 + 112) == 0;
                              if (v332 <= 16770303)
                              {
                                if ((v332 - 16770048) < 6 || (v332 + 1) <= 4 && v332)
                                {
                                  goto LABEL_663;
                                }
                              }

                              else if ((v332 - 420171065) <= 9 && ((1 << (v332 - 57)) & 0x2EF) != 0)
                              {
                                v518 = -1;
                                if (nw_http_capsule_framer_parse_vle_value((v170 + 96), v170, &v518))
                                {
                                  stream = nw_webtransport_session_get_stream(v170, v518);
                                  if (stream)
                                  {
                                    goto LABEL_657;
                                  }

                                  if ((v332 - 420171067) > 1)
                                  {
                                    goto LABEL_688;
                                  }

                                  v353 = v518;
                                  v354 = *(v170 + 580);
                                  if (v518 >> 60 || ((v518 ^ v354) & 1) == 0)
                                  {
                                    if ((v354 & 2) == 0)
                                    {
                                      v362 = __nwlog_obj();
                                      if (os_log_type_enabled(v362, OS_LOG_TYPE_ERROR))
                                      {
                                        v363 = *(v170 + 492);
                                        *buf = 136446978;
                                        *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v170 + 496;
                                        *&buf[22] = 2080;
                                        v525 = " ";
                                        *v526 = 1024;
                                        *&v526[2] = v363;
                                        v364 = v362;
                                        v365 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                                        goto LABEL_687;
                                      }
                                    }

LABEL_688:
                                    if ((*(v170 + 580) & 2) == 0)
                                    {
                                      v366 = __nwlog_obj();
                                      if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
                                      {
                                        v367 = *(v170 + 492);
                                        *buf = 136447490;
                                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v170 + 496;
                                        *&buf[22] = 2080;
                                        v525 = " ";
                                        *v526 = 1024;
                                        *&v526[2] = v367;
                                        *&v526[6] = 2048;
                                        *&v526[8] = v518;
                                        *&v526[16] = 2048;
                                        *&v526[18] = v332;
                                        _os_log_impl(&dword_181A37000, v366, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                                      }
                                    }

                                    goto LABEL_606;
                                  }

                                  v355 = *(v170 + 424);
                                  if (!v355 || (v356 = *v355) == 0 || !*v356)
                                  {
                                    if ((v354 & 2) == 0)
                                    {
                                      v368 = __nwlog_obj();
                                      if (os_log_type_enabled(v368, OS_LOG_TYPE_ERROR))
                                      {
                                        v369 = *(v170 + 492);
                                        *buf = 136446978;
                                        *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v170 + 496;
                                        *&buf[22] = 2080;
                                        v525 = " ";
                                        *v526 = 1024;
                                        *&v526[2] = v369;
                                        v364 = v368;
                                        v365 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_687:
                                        _os_log_impl(&dword_181A37000, v364, OS_LOG_TYPE_ERROR, v365, buf, 0x26u);
                                      }
                                    }

                                    goto LABEL_688;
                                  }

                                  v357 = _nw_parameters_copy(*(v170 + 368));
                                  *(v170 + 580) |= 0x20u;
                                  *(v170 + 176) = v353;
                                  v358 = (***(v170 + 424))(*(v170 + 424), *(v170 + 384), v357);
                                  *(v170 + 176) = -1;
                                  *(v170 + 580) &= ~0x20u;
                                  if (v358)
                                  {
                                    stream = nw_webtransport_session_get_stream(v170, v353);
                                  }

                                  else
                                  {
                                    stream = 0;
                                  }

                                  if (v357)
                                  {
                                    os_release(v357);
                                  }

                                  if (!stream)
                                  {
                                    goto LABEL_688;
                                  }

                                  if (*(stream + 184) != 3)
                                  {
LABEL_657:
                                    *(v170 + 456) = stream;
                                    goto LABEL_606;
                                  }

                                  if ((*(v170 + 580) & 2) != 0)
                                  {
                                    goto LABEL_606;
                                  }

                                  v370 = __nwlog_obj();
                                  if (!os_log_type_enabled(v370, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_606;
                                  }

                                  v371 = *(v170 + 492);
                                  *buf = 136447234;
                                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v170 + 496;
                                  *&buf[22] = 2080;
                                  v525 = " ";
                                  *v526 = 1024;
                                  *&v526[2] = v371;
                                  *&v526[6] = 2048;
                                  *&v526[8] = v518;
                                  v349 = v370;
                                  v350 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                                }

                                else
                                {
                                  if (!v333)
                                  {
                                    goto LABEL_606;
                                  }

                                  if ((*(v170 + 580) & 2) != 0)
                                  {
                                    goto LABEL_606;
                                  }

                                  v347 = __nwlog_obj();
                                  if (!os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_606;
                                  }

                                  v348 = *(v170 + 492);
                                  *buf = 136447234;
                                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v170 + 496;
                                  *&buf[22] = 2080;
                                  v525 = " ";
                                  *v526 = 1024;
                                  *&v526[2] = v348;
                                  *&v526[6] = 2048;
                                  *&v526[8] = v332;
                                  v349 = v347;
                                  v350 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
                                }

                                _os_log_impl(&dword_181A37000, v349, OS_LOG_TYPE_ERROR, v350, buf, 0x30u);
                              }

                              else if ((v332 - 16770304) < 4)
                              {
                                goto LABEL_663;
                              }

LABEL_606:
                              v331 = *(v170 + 96);
                              if ((*(v170 + 580) & 2) == 0 && gLogDatapath == 1)
                              {
                                v372 = __nwlog_obj();
                                if (os_log_type_enabled(v372, OS_LOG_TYPE_DEBUG))
                                {
                                  v373 = *(v170 + 492);
                                  v374 = *(v170 + 104);
                                  *buf = 136447490;
                                  *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v170 + 496;
                                  *&buf[22] = 2080;
                                  v525 = " ";
                                  *v526 = 1024;
                                  *&v526[2] = v373;
                                  *&v526[6] = 2048;
                                  *&v526[8] = v331;
                                  *&v526[16] = 2048;
                                  *&v526[18] = v374;
                                  _os_log_impl(&dword_181A37000, v372, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                                }
                              }

                              if (v331 > 16770303)
                              {
                                if (v331 <= 420171064)
                                {
                                  if ((v331 - 16770304) < 4)
                                  {
                                    goto LABEL_625;
                                  }

                                  if (v331 == 420171064)
                                  {
                                    goto LABEL_624;
                                  }

                                  goto LABEL_627;
                                }

                                if ((v331 - 420171065) >= 2)
                                {
                                  if ((v331 - 420171067) < 2)
                                  {
                                    v334 = *(v170 + 456);
                                    v336 = v331 == 420171068 && capsule;
                                    v511 = MEMORY[0x1E69E9820];
                                    v512 = 0x40000000;
                                    v513 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                                    v514 = &__block_descriptor_tmp_34_36485;
                                    v517 = v336;
                                    v515 = v170 + 96;
                                    v516 = v334;
                                    v337 = *(v170 + 136);
                                    do
                                    {
                                      if (!v337)
                                      {
                                        break;
                                      }

                                      v338 = *(v337 + 32);
                                      v339 = (v513)(&v511);
                                      v337 = v338;
                                    }

                                    while ((v339 & 1) != 0);
                                    if (!v336)
                                    {
                                      goto LABEL_683;
                                    }

                                    nw_protocol_input_finished(v334, v170);
                                  }

                                  goto LABEL_627;
                                }

                                if (capsule)
                                {
                                  v340 = *(v170 + 456);
                                  v518 = -1;
                                  if (nw_http_capsule_framer_parse_vle_value((v170 + 96), v170, &v518))
                                  {
                                    if (!v340 || (*(v340 + 276) & 0x10) == 0)
                                    {
                                      v341 = __nwlog_obj();
                                      if (os_log_type_enabled(v341, OS_LOG_TYPE_ERROR))
                                      {
                                        if (v340)
                                        {
                                          v342 = (v340 + 192);
                                        }

                                        else
                                        {
                                          v342 = "";
                                        }

                                        v343 = " ";
                                        if (!v340)
                                        {
                                          v343 = "";
                                        }

                                        v344 = *(v340 + 88);
                                        if (v344)
                                        {
                                          v327 = *(v344 + 492);
                                        }

                                        else
                                        {
                                          v327 = -1;
                                        }

                                        v328 = *(v340 + 64);
                                        *buf = 136448002;
                                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v342;
                                        *&buf[22] = 2080;
                                        v525 = v343;
                                        *v526 = 1024;
                                        *&v526[2] = v327;
                                        *&v526[6] = 2048;
                                        *&v526[8] = v328;
                                        *&v526[16] = 2048;
                                        *&v526[18] = v331;
                                        *&v526[26] = 2048;
                                        *&v526[28] = v328;
                                        v527 = 2048;
                                        v528 = v518;
                                        _os_log_impl(&dword_181A37000, v341, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                                      }
                                    }

                                    nw_protocol_webtransport_stream_error(v340, v170);
                                    nw_protocol_webtransport_stream_disconnect(v340, v329);
                                  }

                                  else if ((*(v170 + 580) & 2) == 0)
                                  {
                                    v351 = __nwlog_obj();
                                    if (os_log_type_enabled(v351, OS_LOG_TYPE_ERROR))
                                    {
                                      v352 = *(v170 + 492);
                                      *buf = 136447234;
                                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v170 + 496;
                                      *&buf[22] = 2080;
                                      v525 = " ";
                                      *v526 = 1024;
                                      *&v526[2] = v352;
                                      *&v526[6] = 2048;
                                      *&v526[8] = v331;
                                      _os_log_impl(&dword_181A37000, v351, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                                    }
                                  }

LABEL_602:
                                  *(v170 + 456) = 0;
                                  nw_http_capsule_complete_capsule(v170 + 96);
                                }
                              }

                              else
                              {
                                if (v331 <= 16770047)
                                {
                                  if ((v331 - 1) < 3 || v331 == -1)
                                  {
LABEL_625:
                                    v335 = __nwlog_obj();
                                    if (os_log_type_enabled(v335, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 136446466;
                                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v331;
                                      _os_log_impl(&dword_181A37000, v335, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                                    }

                                    goto LABEL_627;
                                  }

                                  if (!v331)
                                  {
                                    v334 = *(v170 + 448);
                                    if (v334 && *(v334 + 184) != 3)
                                    {
                                      v505 = MEMORY[0x1E69E9820];
                                      v506 = 0x40000000;
                                      v507 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                                      v508 = &__block_descriptor_tmp_35_36486;
                                      v509 = v170 + 96;
                                      v510 = v334;
                                      v359 = *(v170 + 136);
                                      do
                                      {
                                        if (!v359)
                                        {
                                          break;
                                        }

                                        v360 = *(v359 + 32);
                                        v361 = (v507)(&v505);
                                        v359 = v360;
                                      }

                                      while ((v361 & 1) != 0);
LABEL_683:
                                      nw_protocol_input_available(v334, v170);
                                      goto LABEL_627;
                                    }

LABEL_624:
                                    nw_frame_array_finalize(v170 + 136, 1, 1);
                                  }
                                }

                                else if ((v331 - 16770048) < 6)
                                {
                                  goto LABEL_625;
                                }

LABEL_627:
                                if (capsule)
                                {
                                  goto LABEL_602;
                                }
                              }
                            }
                          }

LABEL_474:
                          nw_webtransport_http3_handle_input(v170);
                          v277 = *(v170 + 448);
                          if (v277 && *(v277 + 72))
                          {
                            nw_protocol_input_available(*(v277 + 48), v277);
                          }

                          return;
                        }

LABEL_826:
                        if ((v202 & 2) == 0)
                        {
                          v437 = __nwlog_obj();
                          if (os_log_type_enabled(v437, OS_LOG_TYPE_ERROR))
                          {
                            v438 = *(v170 + 492);
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v170 + 496;
                            *&buf[22] = 2080;
                            v525 = " ";
                            *v526 = 1024;
                            *&v526[2] = v438;
                            _os_log_impl(&dword_181A37000, v437, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                          }
                        }

                        __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        v230 = _os_log_send_and_compose_impl();
                        type[0] = 16;
                        LOBYTE(v511) = 0;
                        if (__nwlog_fault(v230, type, &v511))
                        {
                          if (type[0] == 17)
                          {
                            v231 = __nwlog_obj();
                            v232 = type[0];
                            if (!os_log_type_enabled(v231, type[0]))
                            {
                              goto LABEL_1000;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            v233 = "%{public}s output handler has no get_input_frames callback";
                            goto LABEL_999;
                          }

                          if (v511 != 1)
                          {
                            v231 = __nwlog_obj();
                            v232 = type[0];
                            if (!os_log_type_enabled(v231, type[0]))
                            {
                              goto LABEL_1000;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            v233 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                            goto LABEL_999;
                          }

                          v455 = __nw_create_backtrace_string();
                          v231 = __nwlog_obj();
                          v232 = type[0];
                          v456 = os_log_type_enabled(v231, type[0]);
                          if (!v455)
                          {
                            if (!v456)
                            {
                              goto LABEL_1000;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            v233 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                            goto LABEL_999;
                          }

                          if (v456)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v455;
                            v457 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_908:
                            _os_log_impl(&dword_181A37000, v231, v232, v457, buf, 0x16u);
                            goto LABEL_909;
                          }

                          goto LABEL_909;
                        }

LABEL_1000:
                        if (!v230)
                        {
                          return;
                        }

                        goto LABEL_1001;
                      }

                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_session_http_get_input";
                      v230 = _os_log_send_and_compose_impl();
                      type[0] = 16;
                      LOBYTE(v511) = 0;
                      if (!__nwlog_fault(v230, type, &v511))
                      {
                        goto LABEL_1000;
                      }

                      if (type[0] != 17)
                      {
                        if (v511 == 1)
                        {
                          v455 = __nw_create_backtrace_string();
                          v231 = __nwlog_obj();
                          v232 = type[0];
                          v468 = os_log_type_enabled(v231, type[0]);
                          if (v455)
                          {
                            if (!v468)
                            {
                              goto LABEL_909;
                            }

                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_session_http_get_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v455;
                            v457 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                            goto LABEL_908;
                          }

                          goto LABEL_997;
                        }

                        goto LABEL_962;
                      }

                      goto LABEL_936;
                    }

                    if (v203)
                    {
                      return;
                    }

                    *(v170 + 476) = 3;
                    v209 = *(v170 + 48);
                    if (v209)
                    {
                      v210 = *(v209 + 40);
                      if (v210)
                      {
LABEL_327:
                        *(v170 + 440) = v210;
                        return;
                      }

LABEL_372:
                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                      v230 = _os_log_send_and_compose_impl();
                      type[0] = 16;
                      LOBYTE(v511) = 0;
                      if (!__nwlog_fault(v230, type, &v511))
                      {
                        goto LABEL_1000;
                      }

                      if (type[0] == 17)
                      {
                        v231 = __nwlog_obj();
                        v232 = type[0];
                        if (!os_log_type_enabled(v231, type[0]))
                        {
                          goto LABEL_1000;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        v233 = "%{public}s called with null webtransport_stream";
LABEL_999:
                        _os_log_impl(&dword_181A37000, v231, v232, v233, buf, 0xCu);
                        goto LABEL_1000;
                      }

                      if (v511 != 1)
                      {
                        v231 = __nwlog_obj();
                        v232 = type[0];
                        if (!os_log_type_enabled(v231, type[0]))
                        {
                          goto LABEL_1000;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        v233 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                        goto LABEL_999;
                      }

                      v455 = __nw_create_backtrace_string();
                      v231 = __nwlog_obj();
                      v232 = type[0];
                      v470 = os_log_type_enabled(v231, type[0]);
                      if (!v455)
                      {
                        if (!v470)
                        {
                          goto LABEL_1000;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        v233 = "%{public}s called with null webtransport_stream, no backtrace";
                        goto LABEL_999;
                      }

                      if (v470)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v455;
                        v457 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                        goto LABEL_908;
                      }

                      goto LABEL_909;
                    }

                    goto LABEL_849;
                  }

LABEL_348:
                  if (!*(v170 + 476))
                  {
                    nw_webtransport_http_send_connect(v170);
                  }

                  return;
                }

                goto LABEL_350;
              }
            }
          }

          v178 = nw_protocol_copy_info(v174);
          v179 = v178;
          aBlock = MEMORY[0x1E69E9820];
          v501 = 0x40000000;
          v502 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
          v503 = &__block_descriptor_tmp_27_36446;
          v504 = v170;
          if (v178)
          {
            _nw_array_apply(v178, &aBlock);
            v180 = *(v170 + 400);
            if (!v180)
            {
              goto LABEL_295;
            }
          }

          else
          {
            v180 = *(v170 + 400);
            if (!v180)
            {
              return;
            }
          }

          version = nw_http_connection_metadata_get_version(v180);
          v182 = version;
          if (version == 4)
          {
            v183 = 0;
          }

          else
          {
            if (version != 5)
            {
LABEL_299:
              v195 = v174[2];
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v435 = v174[2];
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v195 = v435;
              }

              v196 = nw_protocols_are_equal(v195, &nw_protocol_http_messaging_identifier::protocol_identifier);
              v197 = *(v170 + 580);
              if (v196)
              {
                v197 |= 0x40u;
                *(v170 + 580) = v197;
              }

              if ((v197 & 2) == 0)
              {
                v198 = __nwlog_obj();
                if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
                {
                  v199 = *(v170 + 492);
                  if (v182 == 4)
                  {
                    v200 = 2;
                  }

                  else
                  {
                    v200 = 3;
                  }

                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_session_establish";
                  *&buf[12] = 2082;
                  *&buf[14] = v170 + 496;
                  *&buf[22] = 2080;
                  v525 = " ";
                  *v526 = 1024;
                  *&v526[2] = v199;
                  *&v526[6] = 1024;
                  *&v526[8] = v200;
                  _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
                }
              }

              if (v179)
              {
                os_release(v179);
              }

              goto LABEL_311;
            }

            v183 = 1;
          }

          *(v170 + 480) = v183;
          goto LABEL_299;
        }

        __nwlog_obj();
        v75 = v73[2];
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = "connection_state->local_sessions";
        *&buf[22] = 2048;
        v525 = 1;
        *v526 = 2048;
        *&v526[2] = v75;
        v76 = _os_log_send_and_compose_impl();
        type[0] = 16;
        LOBYTE(v511) = 0;
        if (__nwlog_fault(v76, type, &v511))
        {
          if (type[0] == 17)
          {
            v77 = __nwlog_obj();
            v78 = type[0];
            if (os_log_type_enabled(v77, type[0]))
            {
              v79 = v73[2];
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v525 = 1;
              *v526 = 2048;
              *&v526[2] = v79;
              v80 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_247:
              _os_log_impl(&dword_181A37000, v77, v78, v80, buf, 0x2Au);
            }
          }

          else if (v511 == 1)
          {
            v129 = __nw_create_backtrace_string();
            v77 = __nwlog_obj();
            v78 = type[0];
            v130 = os_log_type_enabled(v77, type[0]);
            if (v129)
            {
              if (v130)
              {
                v131 = v73[2];
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_session_terminate";
                *&buf[12] = 2082;
                *&buf[14] = "connection_state->local_sessions";
                *&buf[22] = 2048;
                v525 = 1;
                *v526 = 2048;
                *&v526[2] = v131;
                *&v526[10] = 2082;
                *&v526[12] = v129;
                _os_log_impl(&dword_181A37000, v77, v78, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v129);
              goto LABEL_248;
            }

            if (v130)
            {
              v169 = v73[2];
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v525 = 1;
              *v526 = 2048;
              *&v526[2] = v169;
              v80 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_247;
            }
          }

          else
          {
            v77 = __nwlog_obj();
            v78 = type[0];
            if (os_log_type_enabled(v77, type[0]))
            {
              v139 = v73[2];
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v525 = 1;
              *v526 = 2048;
              *&v526[2] = v139;
              v80 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_247;
            }
          }
        }

LABEL_248:
        if (v76)
        {
          free(v76);
        }

        v73[2] = 0;
        goto LABEL_251;
      }

LABEL_95:
      if ((v59 & 2) != 0)
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v81 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v82 = *(a1 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 496;
      *&buf[22] = 2080;
      v525 = " ";
      *v526 = 1024;
      *&v526[2] = v82;
      v83 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
      v84 = v81;
      v85 = OS_LOG_TYPE_INFO;
LABEL_98:
      _os_log_impl(&dword_181A37000, v84, v85, v83, buf, 0x26u);
      return;
    }

    v59 = *(a1 + 580);
    if (*(a1 + 476) == 5)
    {
      goto LABEL_95;
    }

    if ((*(a1 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v86 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v87 = *(a1 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 496;
        *&buf[22] = 2080;
        v525 = " ";
        *v526 = 1024;
        *&v526[2] = v87;
        *&v526[6] = 1024;
        *&v526[8] = 12;
        _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
      }
    }

    v88 = *(a1 + 476);
    *(a1 + 476) = 5;
    v89 = *(a1 + 192);
    if (v89)
    {
      v495 = MEMORY[0x1E69E9820];
      v496 = 0x40000000;
      v497 = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
      v498 = &__block_descriptor_tmp_24_36439;
      v499 = 12;
      nw_hash_table_apply(v89, &v495);
    }

    v90 = *(a1 + 448);
    if (v90)
    {
      v91 = *(v90 + 88);
      nw_protocol_error(*(v90 + 48), *(a1 + 448));
      nw_protocol_disconnect(v90, v91);
    }

    v92 = *(a1 + 336);
    if (v92)
    {
      do
      {
        v93 = *(v92 + 112);
        v94 = *(v92 + 88);
        nw_protocol_error(*(v92 + 48), v92);
        nw_protocol_disconnect(v92, v94);
        v92 = v93;
      }

      while (v93);
    }

    v95 = *(a1 + 440);
    if (v95)
    {
      v96 = *(v95 + 88);
      nw_protocol_error(*(v95 + 48), *(a1 + 440));
      nw_protocol_disconnect(v95, v96);
    }

    if (*(a1 + 32))
    {
      nw_protocol_remove_instance(a1);
      nw_protocol_disconnect(*(a1 + 32), a1);
    }

    v97 = *(a1 + 400);
    if (!v97)
    {
      return;
    }

    v98 = nw_http_connection_metadata_get_webtransport_state(v97);
    if (!v98)
    {
      return;
    }

    v99 = v98;
    if (v88 != 4 && v88 != 1)
    {
      return;
    }

    v100 = *(v98 + 16);
    *(v98 + 16) = v100 - 1;
    if (v100)
    {
LABEL_278:
      if (*(a1 + 580))
      {
        return;
      }

      v170 = *v99;
      if (!*v99)
      {
        return;
      }

      v185 = *(v170 + 352);
      v186 = *(v170 + 360);
      v187 = (v185 + 360);
      if (!v185)
      {
        v187 = v99 + 1;
      }

      *v187 = v186;
      *v186 = v185;
      *(v170 + 352) = 0;
      *(v170 + 360) = 0;
      v188 = *(v170 + 32);
      if (!v188 || *(v170 + 480) != 2)
      {
        goto LABEL_346;
      }

      v189 = v188[2];
      if (nw_protocol_http2_identifier::onceToken != -1)
      {
        v434 = v188[2];
        dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
        v189 = v434;
      }

      if (!nw_protocols_are_equal(v189, &nw_protocol_http2_identifier::http2_protocol_identifier))
      {
        v190 = v188[2];
        if (nw_protocol_http3_identifier::onceToken != -1)
        {
          v447 = v188[2];
          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
          v190 = v447;
        }

        if (!nw_protocols_are_equal(v190, &nw_protocol_http3_identifier::http3_protocol_identifier))
        {
          v191 = v188[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v464 = v188[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v191 = v464;
          }

          if (!nw_protocols_are_equal(v191, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
            goto LABEL_346;
          }
        }
      }

      v192 = nw_protocol_copy_info(v188);
      v179 = v192;
      aBlock = MEMORY[0x1E69E9820];
      v501 = 0x40000000;
      v502 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      v503 = &__block_descriptor_tmp_27_36446;
      v504 = v170;
      if (v192)
      {
        _nw_array_apply(v192, &aBlock);
        v193 = *(v170 + 400);
        if (!v193)
        {
LABEL_295:
          v194 = v179;
LABEL_466:
          os_release(v194);
          return;
        }
      }

      else
      {
        v193 = *(v170 + 400);
        if (!v193)
        {
          return;
        }
      }

      v211 = nw_http_connection_metadata_get_version(v193);
      v212 = v211;
      if (v211 == 4)
      {
        v213 = 0;
      }

      else
      {
        if (v211 != 5)
        {
LABEL_334:
          v214 = v188[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v439 = v188[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v214 = v439;
          }

          v215 = nw_protocols_are_equal(v214, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v216 = *(v170 + 580);
          if (v215)
          {
            v216 |= 0x40u;
            *(v170 + 580) = v216;
          }

          if ((v216 & 2) == 0)
          {
            v217 = __nwlog_obj();
            if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
            {
              v218 = *(v170 + 492);
              if (v212 == 4)
              {
                v219 = 2;
              }

              else
              {
                v219 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v170 + 496;
              *&buf[22] = 2080;
              v525 = " ";
              *v526 = 1024;
              *&v526[2] = v218;
              *&v526[6] = 1024;
              *&v526[8] = v219;
              _os_log_impl(&dword_181A37000, v217, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v179)
          {
            os_release(v179);
          }

LABEL_346:
          v220 = *(v170 + 480);
          v202 = *(v170 + 580);
          if (v220 > 1)
          {
LABEL_350:
            if ((v202 & 2) != 0)
            {
              return;
            }

            v221 = __nwlog_obj();
            if (!os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            v222 = *(v170 + 492);
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_establish";
            *&buf[12] = 2082;
            *&buf[14] = v170 + 496;
            *&buf[22] = 2080;
            v525 = " ";
            *v526 = 1024;
            *&v526[2] = v222;
            v83 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
            v84 = v221;
            v85 = OS_LOG_TYPE_ERROR;
            goto LABEL_98;
          }

          if ((*(v170 + 580) & 1) == 0)
          {
            goto LABEL_348;
          }

          v223 = *(v170 + 476);
          if (v220 != 1)
          {
            if (v223)
            {
              return;
            }

            *(v170 + 476) = 3;
            v229 = *(v170 + 48);
            if (v229)
            {
              v210 = *(v229 + 40);
              if (v210)
              {
                goto LABEL_327;
              }

              goto LABEL_372;
            }

LABEL_849:
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v230 = _os_log_send_and_compose_impl();
            type[0] = 16;
            LOBYTE(v511) = 0;
            if (!__nwlog_fault(v230, type, &v511))
            {
              goto LABEL_1000;
            }

            if (type[0] == 17)
            {
              v231 = __nwlog_obj();
              v232 = type[0];
              if (!os_log_type_enabled(v231, type[0]))
              {
                goto LABEL_1000;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              v233 = "%{public}s called with null input_protocol";
              goto LABEL_999;
            }

            if (v511 != 1)
            {
              v231 = __nwlog_obj();
              v232 = type[0];
              if (!os_log_type_enabled(v231, type[0]))
              {
                goto LABEL_1000;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              v233 = "%{public}s called with null input_protocol, backtrace limit exceeded";
              goto LABEL_999;
            }

            v455 = __nw_create_backtrace_string();
            v231 = __nwlog_obj();
            v232 = type[0];
            v469 = os_log_type_enabled(v231, type[0]);
            if (!v455)
            {
              if (!v469)
              {
                goto LABEL_1000;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              v233 = "%{public}s called with null input_protocol, no backtrace";
              goto LABEL_999;
            }

            if (v469)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              *&buf[12] = 2082;
              *&buf[14] = v455;
              v457 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
              goto LABEL_908;
            }

LABEL_909:
            free(v455);
            if (!v230)
            {
              return;
            }

LABEL_1001:
            free(v230);
            return;
          }

          if (v223 != 3)
          {
            if (v223)
            {
              return;
            }

            v224 = *(v170 + 48);
            if (v224)
            {
              v205 = *(v224 + 40);
              if (v205)
              {
                nw_protocol_replace_input_handler(*(v170 + 32), v170, *(v224 + 40));
                *(v170 + 440) = v205;
                nw_protocol_set_output_handler(v170, 0);
                nw_protocol_set_input_handler(v170, 0);
                if ((*(v170 + 580) & 1) == 0)
                {
                  goto LABEL_480;
                }

                v206 = *(*(v170 + 440) + 32);
                v225 = *(v206 + 16);
                if (nw_protocol_http_messaging_identifier::onceToken != -1)
                {
                  dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                }

                if (nw_protocols_are_equal(v225, &nw_protocol_http_messaging_identifier::protocol_identifier))
                {
                  goto LABEL_364;
                }

                v208 = *(v206 + 16);
                if (nw_protocol_http3_identifier::onceToken == -1)
                {
                  goto LABEL_363;
                }

                goto LABEL_947;
              }

              goto LABEL_861;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v451 = _os_log_send_and_compose_impl();
            type[0] = 16;
            LOBYTE(v511) = 0;
            if (!__nwlog_fault(v451, type, &v511))
            {
              goto LABEL_1005;
            }

            if (type[0] != 17)
            {
              if (v511 == 1)
              {
                v475 = __nw_create_backtrace_string();
                v452 = __nwlog_obj();
                v453 = type[0];
                v466 = os_log_type_enabled(v452, type[0]);
                if (v475)
                {
                  if (v466)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v475;
                    _os_log_impl(&dword_181A37000, v452, v453, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v475);
LABEL_1005:
                  if (!v451)
                  {
                    goto LABEL_480;
                  }

LABEL_1006:
                  free(v451);
                  goto LABEL_480;
                }

                goto LABEL_995;
              }

LABEL_955:
              v452 = __nwlog_obj();
              v453 = type[0];
              if (!os_log_type_enabled(v452, type[0]))
              {
                goto LABEL_1005;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v454 = "%{public}s called with null input_protocol, backtrace limit exceeded";
              goto LABEL_1004;
            }

LABEL_932:
            v452 = __nwlog_obj();
            v453 = type[0];
            if (!os_log_type_enabled(v452, type[0]))
            {
              goto LABEL_1005;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v454 = "%{public}s called with null input_protocol";
            goto LABEL_1004;
          }

          v261 = *(v170 + 32);
          if (!v261)
          {
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v230 = _os_log_send_and_compose_impl();
            type[0] = 16;
            LOBYTE(v511) = 0;
            if (!__nwlog_fault(v230, type, &v511))
            {
              goto LABEL_1000;
            }

            if (type[0] != 17)
            {
              if (v511 == 1)
              {
                v476 = __nw_create_backtrace_string();
                v231 = __nwlog_obj();
                v232 = type[0];
                v468 = os_log_type_enabled(v231, type[0]);
                if (v476)
                {
                  if (v468)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v476;
                    _os_log_impl(&dword_181A37000, v231, v232, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v476);
                  goto LABEL_1000;
                }

LABEL_997:
                if (!v468)
                {
                  goto LABEL_1000;
                }

                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                v233 = "%{public}s called with null output_handler, no backtrace";
                goto LABEL_999;
              }

LABEL_962:
              v231 = __nwlog_obj();
              v232 = type[0];
              if (!os_log_type_enabled(v231, type[0]))
              {
                goto LABEL_1000;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_session_http_get_input";
              v233 = "%{public}s called with null output_handler, backtrace limit exceeded";
              goto LABEL_999;
            }

LABEL_936:
            v231 = __nwlog_obj();
            v232 = type[0];
            if (!os_log_type_enabled(v231, type[0]))
            {
              goto LABEL_1000;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v233 = "%{public}s called with null output_handler";
            goto LABEL_999;
          }

          v262 = v261[3];
          if (!v262 || !*(v262 + 80))
          {
            goto LABEL_826;
          }

          for (j = 3; (j | 2) == 3; j = *(v170 + 476))
          {
            if (!nw_protocol_get_input_frames(v261, v170, 0, 0, 0xFFFFFFFFLL, v170 + 120))
            {
              return;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v525 = __Block_byref_object_copy__36471;
            *v526 = __Block_byref_object_dispose__36472;
            *&v526[8] = nw_protocol_copy_http_definition();
            v526[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            *&type[8] = 0x40000000;
            *&type[16] = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
            v520 = &unk_1E6A31940;
            v521 = buf;
            v522 = v170;
            v523 = v170 + 120;
            v264 = *(v170 + 120);
            do
            {
              if (!v264)
              {
                break;
              }

              v265 = *(v264 + 32);
              v266 = (*&type[16])(type);
              v264 = v265;
            }

            while ((v266 & 1) != 0);
            _Block_object_dispose(buf, 8);
            if ((v526[16] & 1) != 0 && *&v526[8])
            {
              os_release(*&v526[8]);
            }
          }

          v275 = *(v170 + 480);
          if (v275 == 1)
          {
            goto LABEL_474;
          }

          if (v275)
          {
            return;
          }

          if ((*(v170 + 580) & 2) == 0 && gLogDatapath == 1)
          {
            v489 = __nwlog_obj();
            if (os_log_type_enabled(v489, OS_LOG_TYPE_DEBUG))
            {
              v490 = *(v170 + 492);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2082;
              *&buf[14] = v170 + 496;
              *&buf[22] = 2080;
              v525 = " ";
              *v526 = 1024;
              *&v526[2] = v490;
              _os_log_impl(&dword_181A37000, v489, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          if (*(v170 + 476) != 4)
          {
            return;
          }

          v276 = (v170 + 96);
          while (1)
          {
            v378 = nw_http_capsule_framer_read_capsule((v170 + 96), v170);
            if (!v378 && !*(v170 + 136))
            {
              return;
            }

            if (*(v170 + 456))
            {
              goto LABEL_712;
            }

            v380 = *v276;
            if (*v276 == -1)
            {
LABEL_769:
              v394 = __nwlog_obj();
              if (os_log_type_enabled(v394, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2048;
                *&buf[14] = v380;
                _os_log_impl(&dword_181A37000, v394, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_712;
            }

            v381 = *(v170 + 104) != -1 && *(v170 + 112) == 0;
            if (v380 <= 16770303)
            {
              if ((v380 - 16770048) < 6 || (v380 + 1) <= 4 && v380)
              {
                goto LABEL_769;
              }
            }

            else if ((v380 - 420171065) <= 9 && ((1 << (v380 - 57)) & 0x2EF) != 0)
            {
              v518 = -1;
              if (nw_http_capsule_framer_parse_vle_value((v170 + 96), v170, &v518))
              {
                v393 = nw_webtransport_session_get_stream(v170, v518);
                if (v393)
                {
                  goto LABEL_763;
                }

                if ((v380 - 420171067) > 1)
                {
                  goto LABEL_794;
                }

                v401 = v518;
                v402 = *(v170 + 580);
                if (v518 >> 60 || ((v518 ^ v402) & 1) == 0)
                {
                  if ((v402 & 2) == 0)
                  {
                    v410 = __nwlog_obj();
                    if (os_log_type_enabled(v410, OS_LOG_TYPE_ERROR))
                    {
                      v411 = *(v170 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v170 + 496;
                      *&buf[22] = 2080;
                      v525 = " ";
                      *v526 = 1024;
                      *&v526[2] = v411;
                      v412 = v410;
                      v413 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                      goto LABEL_793;
                    }
                  }

LABEL_794:
                  if ((*(v170 + 580) & 2) == 0)
                  {
                    v414 = __nwlog_obj();
                    if (os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
                    {
                      v415 = *(v170 + 492);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                      *&buf[12] = 2082;
                      *&buf[14] = v170 + 496;
                      *&buf[22] = 2080;
                      v525 = " ";
                      *v526 = 1024;
                      *&v526[2] = v415;
                      *&v526[6] = 2048;
                      *&v526[8] = v518;
                      *&v526[16] = 2048;
                      *&v526[18] = v380;
                      _os_log_impl(&dword_181A37000, v414, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                    }
                  }

                  goto LABEL_712;
                }

                v403 = *(v170 + 424);
                if (!v403 || (v404 = *v403) == 0 || !*v404)
                {
                  if ((v402 & 2) == 0)
                  {
                    v416 = __nwlog_obj();
                    if (os_log_type_enabled(v416, OS_LOG_TYPE_ERROR))
                    {
                      v417 = *(v170 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v170 + 496;
                      *&buf[22] = 2080;
                      v525 = " ";
                      *v526 = 1024;
                      *&v526[2] = v417;
                      v412 = v416;
                      v413 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_793:
                      _os_log_impl(&dword_181A37000, v412, OS_LOG_TYPE_ERROR, v413, buf, 0x26u);
                    }
                  }

                  goto LABEL_794;
                }

                v405 = _nw_parameters_copy(*(v170 + 368));
                *(v170 + 580) |= 0x20u;
                *(v170 + 176) = v401;
                v406 = (***(v170 + 424))(*(v170 + 424), *(v170 + 384), v405);
                *(v170 + 176) = -1;
                *(v170 + 580) &= ~0x20u;
                if (v406)
                {
                  v393 = nw_webtransport_session_get_stream(v170, v401);
                }

                else
                {
                  v393 = 0;
                }

                if (v405)
                {
                  os_release(v405);
                }

                if (!v393)
                {
                  goto LABEL_794;
                }

                if (*(v393 + 184) != 3)
                {
LABEL_763:
                  *(v170 + 456) = v393;
                  goto LABEL_712;
                }

                if ((*(v170 + 580) & 2) != 0)
                {
                  goto LABEL_712;
                }

                v418 = __nwlog_obj();
                if (!os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_712;
                }

                v419 = *(v170 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v170 + 496;
                *&buf[22] = 2080;
                v525 = " ";
                *v526 = 1024;
                *&v526[2] = v419;
                *&v526[6] = 2048;
                *&v526[8] = v518;
                v397 = v418;
                v398 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
              }

              else
              {
                if (!v381)
                {
                  goto LABEL_712;
                }

                if ((*(v170 + 580) & 2) != 0)
                {
                  goto LABEL_712;
                }

                v395 = __nwlog_obj();
                if (!os_log_type_enabled(v395, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_712;
                }

                v396 = *(v170 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v170 + 496;
                *&buf[22] = 2080;
                v525 = " ";
                *v526 = 1024;
                *&v526[2] = v396;
                *&v526[6] = 2048;
                *&v526[8] = v380;
                v397 = v395;
                v398 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
              }

              _os_log_impl(&dword_181A37000, v397, OS_LOG_TYPE_ERROR, v398, buf, 0x30u);
            }

            else if ((v380 - 16770304) < 4)
            {
              goto LABEL_769;
            }

LABEL_712:
            v379 = *(v170 + 96);
            if ((*(v170 + 580) & 2) == 0 && gLogDatapath == 1)
            {
              v420 = __nwlog_obj();
              if (os_log_type_enabled(v420, OS_LOG_TYPE_DEBUG))
              {
                v421 = *(v170 + 492);
                v422 = *(v170 + 104);
                *buf = 136447490;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = v170 + 496;
                *&buf[22] = 2080;
                v525 = " ";
                *v526 = 1024;
                *&v526[2] = v421;
                *&v526[6] = 2048;
                *&v526[8] = v379;
                *&v526[16] = 2048;
                *&v526[18] = v422;
                _os_log_impl(&dword_181A37000, v420, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
              }
            }

            if (v379 > 16770303)
            {
              if (v379 <= 420171064)
              {
                if ((v379 - 16770304) < 4)
                {
                  goto LABEL_731;
                }

                if (v379 == 420171064)
                {
                  goto LABEL_730;
                }

                goto LABEL_733;
              }

              if ((v379 - 420171065) >= 2)
              {
                if ((v379 - 420171067) < 2)
                {
                  v382 = *(v170 + 456);
                  v384 = v379 == 420171068 && v378;
                  v511 = MEMORY[0x1E69E9820];
                  v512 = 0x40000000;
                  v513 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                  v514 = &__block_descriptor_tmp_34_36485;
                  v517 = v384;
                  v515 = v170 + 96;
                  v516 = v382;
                  v385 = *(v170 + 136);
                  do
                  {
                    if (!v385)
                    {
                      break;
                    }

                    v386 = *(v385 + 32);
                    v387 = (v513)(&v511);
                    v385 = v386;
                  }

                  while ((v387 & 1) != 0);
                  if (!v384)
                  {
                    goto LABEL_789;
                  }

                  nw_protocol_input_finished(v382, v170);
                }

                goto LABEL_733;
              }

              if (v378)
              {
                v388 = *(v170 + 456);
                v518 = -1;
                if (nw_http_capsule_framer_parse_vle_value((v170 + 96), v170, &v518))
                {
                  if (!v388 || (*(v388 + 276) & 0x10) == 0)
                  {
                    v389 = __nwlog_obj();
                    if (os_log_type_enabled(v389, OS_LOG_TYPE_ERROR))
                    {
                      if (v388)
                      {
                        v390 = (v388 + 192);
                      }

                      else
                      {
                        v390 = "";
                      }

                      v391 = " ";
                      if (!v388)
                      {
                        v391 = "";
                      }

                      v392 = *(v388 + 88);
                      if (v392)
                      {
                        v375 = *(v392 + 492);
                      }

                      else
                      {
                        v375 = -1;
                      }

                      v376 = *(v388 + 64);
                      *buf = 136448002;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v390;
                      *&buf[22] = 2080;
                      v525 = v391;
                      *v526 = 1024;
                      *&v526[2] = v375;
                      *&v526[6] = 2048;
                      *&v526[8] = v376;
                      *&v526[16] = 2048;
                      *&v526[18] = v379;
                      *&v526[26] = 2048;
                      *&v526[28] = v376;
                      v527 = 2048;
                      v528 = v518;
                      _os_log_impl(&dword_181A37000, v389, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                    }
                  }

                  nw_protocol_webtransport_stream_error(v388, v170);
                  nw_protocol_webtransport_stream_disconnect(v388, v377);
                }

                else if ((*(v170 + 580) & 2) == 0)
                {
                  v399 = __nwlog_obj();
                  if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
                  {
                    v400 = *(v170 + 492);
                    *buf = 136447234;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2082;
                    *&buf[14] = v170 + 496;
                    *&buf[22] = 2080;
                    v525 = " ";
                    *v526 = 1024;
                    *&v526[2] = v400;
                    *&v526[6] = 2048;
                    *&v526[8] = v379;
                    _os_log_impl(&dword_181A37000, v399, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                  }
                }

LABEL_708:
                *(v170 + 456) = 0;
                nw_http_capsule_complete_capsule(v170 + 96);
              }
            }

            else
            {
              if (v379 <= 16770047)
              {
                if ((v379 - 1) < 3 || v379 == -1)
                {
LABEL_731:
                  v383 = __nwlog_obj();
                  if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2048;
                    *&buf[14] = v379;
                    _os_log_impl(&dword_181A37000, v383, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                  }

                  goto LABEL_733;
                }

                if (!v379)
                {
                  v382 = *(v170 + 448);
                  if (v382 && *(v382 + 184) != 3)
                  {
                    v505 = MEMORY[0x1E69E9820];
                    v506 = 0x40000000;
                    v507 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                    v508 = &__block_descriptor_tmp_35_36486;
                    v509 = v170 + 96;
                    v510 = v382;
                    v407 = *(v170 + 136);
                    do
                    {
                      if (!v407)
                      {
                        break;
                      }

                      v408 = *(v407 + 32);
                      v409 = (v507)(&v505);
                      v407 = v408;
                    }

                    while ((v409 & 1) != 0);
LABEL_789:
                    nw_protocol_input_available(v382, v170);
                    goto LABEL_733;
                  }

LABEL_730:
                  nw_frame_array_finalize(v170 + 136, 1, 1);
                }
              }

              else if ((v379 - 16770048) < 6)
              {
                goto LABEL_731;
              }

LABEL_733:
              if (v378)
              {
                goto LABEL_708;
              }
            }
          }
        }

        v213 = 1;
      }

      *(v170 + 480) = v213;
      goto LABEL_334;
    }

    __nwlog_obj();
    v101 = v99[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v525 = 1;
    *v526 = 2048;
    *&v526[2] = v101;
    v102 = _os_log_send_and_compose_impl();
    type[0] = 16;
    LOBYTE(v511) = 0;
    if (__nwlog_fault(v102, type, &v511))
    {
      if (type[0] == 17)
      {
        v103 = __nwlog_obj();
        v104 = type[0];
        if (os_log_type_enabled(v103, type[0]))
        {
          v105 = v99[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v525 = 1;
          *v526 = 2048;
          *&v526[2] = v105;
          v106 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_274:
          _os_log_impl(&dword_181A37000, v103, v104, v106, buf, 0x2Au);
        }
      }

      else if (v511 == 1)
      {
        v132 = __nw_create_backtrace_string();
        v103 = __nwlog_obj();
        v104 = type[0];
        v133 = os_log_type_enabled(v103, type[0]);
        if (v132)
        {
          if (v133)
          {
            v134 = v99[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v525 = 1;
            *v526 = 2048;
            *&v526[2] = v134;
            *&v526[10] = 2082;
            *&v526[12] = v132;
            _os_log_impl(&dword_181A37000, v103, v104, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v132);
          goto LABEL_275;
        }

        if (v133)
        {
          v184 = v99[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v525 = 1;
          *v526 = 2048;
          *&v526[2] = v184;
          v106 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_274;
        }
      }

      else
      {
        v103 = __nwlog_obj();
        v104 = type[0];
        if (os_log_type_enabled(v103, type[0]))
        {
          v160 = v99[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v525 = 1;
          *v526 = 2048;
          *&v526[2] = v160;
          v106 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_274;
        }
      }
    }

LABEL_275:
    if (v102)
    {
      free(v102);
    }

    v99[2] = 0;
    goto LABEL_278;
  }

LABEL_8:
  v4 = nw_parameters_copy_protocol_options_legacy(*(a1 + 368), a1);
  v5 = v4;
  if (!v4)
  {
    v234 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_options_copy_request_fields";
    v235 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(v511) = 0;
    if (!__nwlog_fault(v235, type, &v511))
    {
      goto LABEL_487;
    }

    if (type[0] == 17)
    {
      v236 = __nwlog_obj();
      v237 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v236, v237, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v511 == 1)
    {
      v255 = __nw_create_backtrace_string();
      v236 = __nwlog_obj();
      v256 = type[0];
      v257 = os_log_type_enabled(v236, type[0]);
      if (v255)
      {
        if (v257)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_options_copy_request_fields";
          *&buf[12] = 2082;
          *&buf[14] = v255;
          _os_log_impl(&dword_181A37000, v236, v256, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v255);
        if (!v235)
        {
          goto LABEL_489;
        }

        goto LABEL_488;
      }

      if (v257)
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v236, v256, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v236 = __nwlog_obj();
      v269 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v236, v269, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_486;
  }

  v6 = v4;
  if (nw_protocol_copy_webtransport_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
  }

  v7 = nw_protocol_options_matches_definition(v6, nw_protocol_copy_webtransport_definition::definition);

  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v525 = __Block_byref_object_copy__63087;
    *v526 = __Block_byref_object_dispose__63088;
    *&v526[8] = 0;
    *type = MEMORY[0x1E69E9820];
    *&type[8] = 3221225472;
    *&type[16] = __nw_webtransport_options_copy_request_fields_block_invoke;
    v520 = &unk_1E6A3A858;
    v521 = buf;
    nw_protocol_options_access_handle(v6, type);
    v8 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_13;
  }

  v238 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_webtransport_options_copy_request_fields";
  v235 = _os_log_send_and_compose_impl();

  type[0] = 16;
  LOBYTE(v511) = 0;
  if (__nwlog_fault(v235, type, &v511))
  {
    if (type[0] == 17)
    {
      v236 = __nwlog_obj();
      v239 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v236, v239, "%{public}s protocol options are not webtransport", buf, 0xCu);
      }

LABEL_486:

      goto LABEL_487;
    }

    if (v511 != 1)
    {
      v236 = __nwlog_obj();
      v270 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v236, v270, "%{public}s protocol options are not webtransport, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_486;
    }

    v258 = __nw_create_backtrace_string();
    v236 = __nwlog_obj();
    v259 = type[0];
    v260 = os_log_type_enabled(v236, type[0]);
    if (!v258)
    {
      if (v260)
      {
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_options_copy_request_fields";
        _os_log_impl(&dword_181A37000, v236, v259, "%{public}s protocol options are not webtransport, no backtrace", buf, 0xCu);
      }

      goto LABEL_486;
    }

    if (v260)
    {
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_options_copy_request_fields";
      *&buf[12] = 2082;
      *&buf[14] = v258;
      _os_log_impl(&dword_181A37000, v236, v259, "%{public}s protocol options are not webtransport, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v258);
  }

LABEL_487:
  if (v235)
  {
LABEL_488:
    free(v235);
  }

LABEL_489:
  v8 = 0;
LABEL_13:

  v494 = nw_parameters_copy_url_endpoint(*(a1 + 368));
  url = nw_endpoint_get_url(v494);
  v10 = nw_http_request_create_from_url("CONNECT", url);
  nw_http_request_set_extended_connect_protocol(v10, "webtransport");
  if (v8)
  {
    nw_http_request_set_header_fields(v10, v8);
  }

  v493 = v8;
  metadata_for_request = nw_http_create_metadata_for_request(v10);
  v12 = *(a1 + 32);
  if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v240 = __nwlog_obj();
    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
    {
      v241 = *(a1 + 492);
      *type = 136446978;
      *&type[4] = "nw_webtransport_session_send_metadata";
      *&type[12] = 2082;
      *&type[14] = a1 + 496;
      *&type[22] = 2080;
      v520 = " ";
      LOWORD(v521) = 1024;
      *(&v521 + 2) = v241;
      _os_log_impl(&dword_181A37000, v240, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", type, 0x26u);
    }
  }

  v511 = 0;
  v512 = &v511;
  output_frames = nw_protocol_get_output_frames(v12, a1, 0, 0, 1, &v511);
  if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v242 = output_frames;
    v243 = __nwlog_obj();
    v244 = os_log_type_enabled(v243, OS_LOG_TYPE_DEBUG);
    output_frames = v242;
    if (v244)
    {
      v245 = *(a1 + 492);
      *type = 136447234;
      *&type[4] = "nw_webtransport_session_send_metadata";
      *&type[12] = 2082;
      *&type[14] = a1 + 496;
      *&type[22] = 2080;
      v520 = " ";
      LOWORD(v521) = 1024;
      *(&v521 + 2) = v245;
      HIWORD(v521) = 1024;
      LODWORD(v522) = v242;
      _os_log_impl(&dword_181A37000, v243, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got %u output frames", type, 0x2Cu);
      output_frames = v242;
    }
  }

  if (!output_frames)
  {
    v19 = *(a1 + 580);
    goto LABEL_42;
  }

  *type = 0;
  *&type[8] = type;
  *&type[16] = 0x2000000000;
  LOBYTE(v520) = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL37nw_webtransport_session_send_metadataP23nw_webtransport_sessionP20nw_protocol_metadataP11nw_protocol_block_invoke;
  v525 = &unk_1E6A31918;
  *v526 = type;
  *&v526[8] = &v511;
  *&v526[16] = a1;
  *&v526[24] = metadata_for_request;
  v14 = metadata_for_request;
  v15 = v511;
  do
  {
    if (!v15)
    {
      break;
    }

    v16 = *(v15 + 32);
    v17 = (*&buf[16])(buf);
    v15 = v16;
  }

  while ((v17 & 1) != 0);
  v18 = nw_protocol_finalize_output_frames(v12, &v511);
  _Block_object_dispose(type, 8);
  v19 = *(a1 + 580);
  if ((v18 & 1) == 0)
  {
    metadata_for_request = v14;
LABEL_42:
    v33 = *(a1 + 476);
    if (v33 == 5)
    {
      if ((v19 & 2) != 0)
      {
        goto LABEL_456;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_456;
      }

      v35 = *(a1 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 496;
      *&buf[22] = 2080;
      v525 = " ";
      *v526 = 1024;
      *&v526[2] = v35;
      v36 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
      v37 = v34;
      v38 = OS_LOG_TYPE_INFO;
LABEL_46:
      _os_log_impl(&dword_181A37000, v37, v38, v36, buf, 0x26u);
      if (!metadata_for_request)
      {
        goto LABEL_458;
      }

      goto LABEL_457;
    }

    if ((v19 & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v39 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 496;
        *&buf[22] = 2080;
        v525 = " ";
        *v526 = 1024;
        *&v526[2] = v40;
        *&v526[6] = 1024;
        *&v526[8] = 12;
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
      }

      v33 = *(a1 + 476);
    }

    v492 = metadata_for_request;
    *(a1 + 476) = 5;
    v41 = *(a1 + 192);
    if (v41)
    {
      v495 = MEMORY[0x1E69E9820];
      v496 = 0x40000000;
      v497 = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
      v498 = &__block_descriptor_tmp_24_36439;
      v499 = 12;
      nw_hash_table_apply(v41, &v495);
    }

    v42 = *(a1 + 448);
    if (v42)
    {
      v43 = *(v42 + 88);
      nw_protocol_error(*(v42 + 48), *(a1 + 448));
      nw_protocol_disconnect(v42, v43);
    }

    v44 = *(a1 + 336);
    if (v44)
    {
      do
      {
        v45 = *(v44 + 112);
        v46 = *(v44 + 88);
        nw_protocol_error(*(v44 + 48), v44);
        nw_protocol_disconnect(v44, v46);
        v44 = v45;
      }

      while (v45);
    }

    v47 = *(a1 + 440);
    if (v47)
    {
      v48 = *(v47 + 88);
      nw_protocol_error(*(v47 + 48), *(a1 + 440));
      nw_protocol_disconnect(v47, v48);
    }

    metadata_for_request = v492;
    if (*(a1 + 32))
    {
      nw_protocol_remove_instance(a1);
      nw_protocol_disconnect(*(a1 + 32), a1);
    }

    v49 = *(a1 + 400);
    if (!v49 || (v50 = nw_http_connection_metadata_get_webtransport_state(v49)) == 0 || (v51 = v50, v33 != 4) && v33 != 1)
    {
LABEL_456:
      if (!metadata_for_request)
      {
        goto LABEL_458;
      }

      goto LABEL_457;
    }

    v52 = *(v50 + 16);
    *(v50 + 16) = v52 - 1;
    if (v52)
    {
LABEL_147:
      if (*(a1 + 580))
      {
        goto LABEL_456;
      }

      v118 = *v51;
      if (!*v51)
      {
        goto LABEL_456;
      }

      v119 = *(v118 + 352);
      v120 = *(v118 + 360);
      v121 = (v119 + 360);
      if (!v119)
      {
        v121 = v51 + 1;
      }

      *v121 = v120;
      *v120 = v119;
      *(v118 + 352) = 0;
      *(v118 + 360) = 0;
      v122 = *(v118 + 32);
      if (!v122 || *(v118 + 480) != 2)
      {
        goto LABEL_198;
      }

      v123 = v122[2];
      if (nw_protocol_http2_identifier::onceToken != -1)
      {
        v423 = v122[2];
        dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
        v123 = v423;
      }

      if (!nw_protocols_are_equal(v123, &nw_protocol_http2_identifier::http2_protocol_identifier))
      {
        v124 = v122[2];
        if (nw_protocol_http3_identifier::onceToken != -1)
        {
          v425 = v122[2];
          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
          v124 = v425;
        }

        if (!nw_protocols_are_equal(v124, &nw_protocol_http3_identifier::http3_protocol_identifier))
        {
          v125 = v122[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v427 = v122[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v125 = v427;
          }

          if (!nw_protocols_are_equal(v125, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
LABEL_198:
            v146 = *(v118 + 480);
            if (v146 > 1)
            {
              if ((*(v118 + 580) & 2) != 0)
              {
                goto LABEL_456;
              }

              v147 = __nwlog_obj();
              if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_456;
              }

              v148 = *(v118 + 492);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v118 + 496;
              *&buf[22] = 2080;
              v525 = " ";
              *v526 = 1024;
              *&v526[2] = v148;
              v36 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
              v37 = v147;
              v38 = OS_LOG_TYPE_ERROR;
              goto LABEL_46;
            }

            if ((*(v118 + 580) & 1) == 0)
            {
              if (*(v118 + 476))
              {
                goto LABEL_456;
              }

              nw_webtransport_http_send_connect(v118);
              if (!metadata_for_request)
              {
                goto LABEL_458;
              }

              goto LABEL_457;
            }

            v149 = *(v118 + 476);
            if (v146 == 1)
            {
              if (v149 != 3)
              {
                if (v149)
                {
                  goto LABEL_456;
                }

                v150 = *(v118 + 48);
                if (v150)
                {
                  v151 = *(v150 + 40);
                  if (v151)
                  {
                    nw_protocol_replace_input_handler(*(v118 + 32), v118, *(v150 + 40));
                    *(v118 + 440) = v151;
                    nw_protocol_set_output_handler(v118, 0);
                    nw_protocol_set_input_handler(v118, 0);
                    if ((*(v118 + 580) & 1) == 0)
                    {
                      goto LABEL_455;
                    }

                    v152 = *(*(v118 + 440) + 32);
                    v153 = *(v152 + 16);
                    if (nw_protocol_http_messaging_identifier::onceToken != -1)
                    {
                      v461 = *(v152 + 16);
                      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                      v153 = v461;
                    }

                    if (!nw_protocols_are_equal(v153, &nw_protocol_http_messaging_identifier::protocol_identifier))
                    {
                      v154 = *(v152 + 16);
                      if (nw_protocol_http3_identifier::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                      }

                      metadata_for_request = v492;
                      if (!nw_protocols_are_equal(v154, &nw_protocol_http3_identifier::http3_protocol_identifier))
                      {
                        goto LABEL_455;
                      }
                    }

                    v155 = *(v118 + 368);
                    if (!v155)
                    {
                      goto LABEL_455;
                    }

                    v156 = nw_parameters_copy_protocol_options_legacy(v155, v152);
                    if (v156)
                    {
                      v157 = v156;
                      if ((*(v151 + 276) & 0x10) == 0 && gLogDatapath == 1)
                      {
                        v472 = __nwlog_obj();
                        if (os_log_type_enabled(v472, OS_LOG_TYPE_DEBUG))
                        {
                          v473 = *(v151 + 88);
                          if (v473)
                          {
                            v474 = *(v473 + 492);
                          }

                          else
                          {
                            v474 = -1;
                          }

                          v488 = *(v151 + 64);
                          *buf = 136447490;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = v151 + 192;
                          *&buf[22] = 2080;
                          v525 = " ";
                          *v526 = 1024;
                          *&v526[2] = v474;
                          *&v526[6] = 2048;
                          *&v526[8] = v488;
                          *&v526[16] = 2048;
                          *&v526[18] = v157;
                          _os_log_impl(&dword_181A37000, v472, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                        }
                      }

                      nw_http3_set_stream_mode(v157, 0);
                      os_release(v157);
                    }

                    else
                    {
                      if ((*(v118 + 580) & 2) == 0 && gLogDatapath == 1)
                      {
                        v479 = __nwlog_obj();
                        if (os_log_type_enabled(v479, OS_LOG_TYPE_DEBUG))
                        {
                          v480 = *(v118 + 492);
                          *buf = 136446978;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = v118 + 496;
                          *&buf[22] = 2080;
                          v525 = " ";
                          *v526 = 1024;
                          *&v526[2] = v480;
                          _os_log_impl(&dword_181A37000, v479, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                        }
                      }

                      v274 = *(v151 + 88);
                      nw_protocol_error(*(v151 + 48), v151);
                      nw_protocol_disconnect(v151, v274);
                    }

LABEL_454:
                    metadata_for_request = v492;
LABEL_455:
                    *(v118 + 476) = 2;
                    goto LABEL_456;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                  v440 = _os_log_send_and_compose_impl();
                  type[0] = 16;
                  LOBYTE(v511) = 0;
                  if (!__nwlog_fault(v440, type, &v511))
                  {
                    goto LABEL_984;
                  }

                  if (type[0] == 17)
                  {
                    v441 = __nwlog_obj();
                    v442 = type[0];
                    if (!os_log_type_enabled(v441, type[0]))
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v443 = "%{public}s called with null webtransport_stream";
                    goto LABEL_983;
                  }

                  if (v511 != 1)
                  {
                    v441 = __nwlog_obj();
                    v442 = type[0];
                    if (!os_log_type_enabled(v441, type[0]))
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v443 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_983;
                  }

                  v462 = __nw_create_backtrace_string();
                  v441 = __nwlog_obj();
                  v442 = type[0];
                  v463 = os_log_type_enabled(v441, type[0]);
                  if (v462)
                  {
                    if (v463)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v462;
                      _os_log_impl(&dword_181A37000, v441, v442, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v462);
                    if (!v440)
                    {
                      goto LABEL_454;
                    }

                    goto LABEL_985;
                  }

                  if (v463)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v443 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_983:
                    _os_log_impl(&dword_181A37000, v441, v442, v443, buf, 0xCu);
                  }
                }

                else
                {
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                  v440 = _os_log_send_and_compose_impl();
                  type[0] = 16;
                  LOBYTE(v511) = 0;
                  if (!__nwlog_fault(v440, type, &v511))
                  {
                    goto LABEL_984;
                  }

                  if (type[0] == 17)
                  {
                    v441 = __nwlog_obj();
                    v442 = type[0];
                    if (!os_log_type_enabled(v441, type[0]))
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v443 = "%{public}s called with null input_protocol";
                    goto LABEL_983;
                  }

                  if (v511 != 1)
                  {
                    v441 = __nwlog_obj();
                    v442 = type[0];
                    if (!os_log_type_enabled(v441, type[0]))
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v443 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_983;
                  }

                  v458 = __nw_create_backtrace_string();
                  v441 = __nwlog_obj();
                  v442 = type[0];
                  v459 = os_log_type_enabled(v441, type[0]);
                  if (!v458)
                  {
                    if (!v459)
                    {
                      goto LABEL_984;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v443 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_983;
                  }

                  if (v459)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v458;
                    _os_log_impl(&dword_181A37000, v441, v442, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v458);
                }

LABEL_984:
                if (!v440)
                {
                  goto LABEL_454;
                }

LABEL_985:
                free(v440);
                goto LABEL_454;
              }

              v163 = *(v118 + 32);
              if (v163)
              {
                v164 = v163[3];
                if (v164 && *(v164 + 80))
                {
                  for (k = 3; ; k = *(v118 + 476))
                  {
                    metadata_for_request = v492;
                    if ((k | 2) != 3)
                    {
                      break;
                    }

                    if (!nw_protocol_get_input_frames(v163, v118, 0, 0, 0xFFFFFFFFLL, v118 + 120))
                    {
                      goto LABEL_456;
                    }

                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v525 = __Block_byref_object_copy__36471;
                    *v526 = __Block_byref_object_dispose__36472;
                    *&v526[8] = nw_protocol_copy_http_definition();
                    v526[16] |= 1u;
                    *type = MEMORY[0x1E69E9820];
                    *&type[8] = 0x40000000;
                    *&type[16] = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                    v520 = &unk_1E6A31940;
                    v521 = buf;
                    v522 = v118;
                    v523 = v118 + 120;
                    v166 = *(v118 + 120);
                    do
                    {
                      if (!v166)
                      {
                        break;
                      }

                      v167 = *(v166 + 32);
                      v168 = (*&type[16])(type);
                      v166 = v167;
                    }

                    while ((v168 & 1) != 0);
                    _Block_object_dispose(buf, 8);
                    if ((v526[16] & 1) != 0 && *&v526[8])
                    {
                      os_release(*&v526[8]);
                    }
                  }

                  v246 = *(v118 + 480);
                  if (v246 == 1)
                  {
                    nw_webtransport_http3_handle_input(v118);
                    v271 = *(v118 + 448);
                    if (!v271 || !*(v271 + 72))
                    {
                      goto LABEL_456;
                    }

                    nw_protocol_input_available(*(v271 + 48), v271);
                    if (!v492)
                    {
                      goto LABEL_458;
                    }

LABEL_457:
                    os_release(metadata_for_request);
                    goto LABEL_458;
                  }

                  if (v246)
                  {
                    goto LABEL_456;
                  }

                  if ((*(v118 + 580) & 2) == 0 && gLogDatapath == 1)
                  {
                    v477 = __nwlog_obj();
                    if (os_log_type_enabled(v477, OS_LOG_TYPE_DEBUG))
                    {
                      v478 = *(v118 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v118 + 496;
                      *&buf[22] = 2080;
                      v525 = " ";
                      *v526 = 1024;
                      *&v526[2] = v478;
                      _os_log_impl(&dword_181A37000, v477, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                    }
                  }

                  if (*(v118 + 476) == 4)
                  {
                    v247 = (v118 + 96);
                    v248 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    while (1)
                    {
                      v282 = nw_http_capsule_framer_read_capsule((v118 + 96), v118);
                      if (!v282 && !*(v118 + 136))
                      {
                        break;
                      }

                      if (!*(v118 + 456))
                      {
                        v284 = *v247;
                        if (*v247 == -1)
                        {
                          goto LABEL_553;
                        }

                        v285 = *(v118 + 104) != -1 && *(v118 + 112) == 0;
                        if (v284 <= 16770303)
                        {
                          v248 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          if ((v284 - 16770048) >= 6 && ((v284 + 1) > 4 || !v284))
                          {
                            goto LABEL_498;
                          }

LABEL_553:
                          v298 = __nwlog_obj();
                          if (os_log_type_enabled(v298, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                            *&buf[12] = 2048;
                            *&buf[14] = v284;
                            _os_log_impl(&dword_181A37000, v298, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                          }

                          goto LABEL_498;
                        }

                        if ((v284 - 420171065) <= 9 && ((1 << (v284 - 57)) & 0x2EF) != 0)
                        {
                          v518 = -1;
                          if ((nw_http_capsule_framer_parse_vle_value((v118 + 96), v118, &v518) & 1) == 0)
                          {
                            if (v285 && (*(v118 + 580) & 2) == 0)
                            {
                              v325 = __nwlog_obj();
                              if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
                              {
                                v326 = *(v118 + 492);
                                *buf = 136447234;
                                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                *&buf[12] = 2082;
                                *&buf[14] = v118 + 496;
                                *&buf[22] = 2080;
                                v525 = " ";
                                *v526 = 1024;
                                *&v526[2] = v326;
                                *&v526[6] = 2048;
                                *&v526[8] = v284;
                                v320 = v325;
                                v321 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
LABEL_593:
                                _os_log_impl(&dword_181A37000, v320, OS_LOG_TYPE_ERROR, v321, buf, 0x30u);
                              }
                            }

LABEL_556:
                            v248 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                            goto LABEL_498;
                          }

                          v297 = nw_webtransport_session_get_stream(v118, v518);
                          if (v297)
                          {
                            goto LABEL_547;
                          }

                          if ((v284 - 420171067) <= 1)
                          {
                            v301 = v518;
                            v302 = *(v118 + 580);
                            if (v518 >> 60 || ((v518 ^ v302) & 1) == 0)
                            {
                              if ((v302 & 2) != 0)
                              {
                                goto LABEL_579;
                              }

                              v310 = __nwlog_obj();
                              if (!os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_579;
                              }

                              v311 = *(v118 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v118 + 496;
                              *&buf[22] = 2080;
                              v525 = " ";
                              *v526 = 1024;
                              *&v526[2] = v311;
                              v312 = v310;
                              v313 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                            }

                            else
                            {
                              v303 = *(v118 + 424);
                              if (v303)
                              {
                                v304 = *v303;
                                if (v304)
                                {
                                  if (*v304)
                                  {
                                    v305 = _nw_parameters_copy(*(v118 + 368));
                                    *(v118 + 580) |= 0x20u;
                                    *(v118 + 176) = v301;
                                    v306 = (***(v118 + 424))(*(v118 + 424), *(v118 + 384), v305);
                                    *(v118 + 176) = -1;
                                    *(v118 + 580) &= ~0x20u;
                                    if (v306)
                                    {
                                      v297 = nw_webtransport_session_get_stream(v118, v301);
                                    }

                                    else
                                    {
                                      v297 = 0;
                                    }

                                    if (v305)
                                    {
                                      os_release(v305);
                                    }

                                    if (v297)
                                    {
                                      if (*(v297 + 184) == 3)
                                      {
                                        if ((*(v118 + 580) & 2) == 0)
                                        {
                                          v318 = __nwlog_obj();
                                          if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
                                          {
                                            v319 = *(v118 + 492);
                                            *buf = 136447234;
                                            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                            *&buf[12] = 2082;
                                            *&buf[14] = v118 + 496;
                                            *&buf[22] = 2080;
                                            v525 = " ";
                                            *v526 = 1024;
                                            *&v526[2] = v319;
                                            *&v526[6] = 2048;
                                            *&v526[8] = v518;
                                            v320 = v318;
                                            v321 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                                            goto LABEL_593;
                                          }
                                        }
                                      }

                                      else
                                      {
LABEL_547:
                                        *(v118 + 456) = v297;
                                      }

                                      goto LABEL_556;
                                    }

                                    goto LABEL_579;
                                  }
                                }
                              }

                              if ((v302 & 2) != 0)
                              {
                                goto LABEL_579;
                              }

                              v316 = __nwlog_obj();
                              if (!os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_579;
                              }

                              v317 = *(v118 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v118 + 496;
                              *&buf[22] = 2080;
                              v525 = " ";
                              *v526 = 1024;
                              *&v526[2] = v317;
                              v312 = v316;
                              v313 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
                            }

                            _os_log_impl(&dword_181A37000, v312, OS_LOG_TYPE_ERROR, v313, buf, 0x26u);
                          }

LABEL_579:
                          if ((*(v118 + 580) & 2) == 0)
                          {
                            v314 = __nwlog_obj();
                            if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
                            {
                              v315 = *(v118 + 492);
                              *buf = 136447490;
                              *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                              *&buf[12] = 2082;
                              *&buf[14] = v118 + 496;
                              *&buf[22] = 2080;
                              v525 = " ";
                              *v526 = 1024;
                              *&v526[2] = v315;
                              *&v526[6] = 2048;
                              *&v526[8] = v518;
                              *&v526[16] = 2048;
                              *&v526[18] = v284;
                              _os_log_impl(&dword_181A37000, v314, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                            }
                          }

                          goto LABEL_556;
                        }

                        v248 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        if ((v284 - 16770304) < 4)
                        {
                          goto LABEL_553;
                        }
                      }

LABEL_498:
                      v283 = *(v118 + 96);
                      if ((*(v118 + 580) & 2) == 0 && BYTE1(v248[82].isa) == 1)
                      {
                        v322 = __nwlog_obj();
                        if (os_log_type_enabled(v322, OS_LOG_TYPE_DEBUG))
                        {
                          v323 = *(v118 + 492);
                          v324 = *(v118 + 104);
                          *buf = 136447490;
                          *&buf[4] = "nw_webtransport_http2_handle_capsules";
                          *&buf[12] = 2082;
                          *&buf[14] = v118 + 496;
                          *&buf[22] = 2080;
                          v525 = " ";
                          *v526 = 1024;
                          *&v526[2] = v323;
                          *&v526[6] = 2048;
                          *&v526[8] = v283;
                          *&v526[16] = 2048;
                          *&v526[18] = v324;
                          _os_log_impl(&dword_181A37000, v322, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                        }
                      }

                      if (v283 <= 16770303)
                      {
                        if (v283 <= 16770047)
                        {
                          if ((v283 - 1) < 3 || v283 == -1)
                          {
                            goto LABEL_517;
                          }

                          if (!v283)
                          {
                            v286 = *(v118 + 448);
                            if (!v286 || *(v286 + 184) == 3)
                            {
                              nw_frame_array_finalize(v118 + 136, 1, 1);
LABEL_572:
                              v248 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                              goto LABEL_573;
                            }

                            v505 = MEMORY[0x1E69E9820];
                            v506 = 0x40000000;
                            v507 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                            v508 = &__block_descriptor_tmp_35_36486;
                            v509 = v118 + 96;
                            v510 = v286;
                            v307 = *(v118 + 136);
                            do
                            {
                              if (!v307)
                              {
                                break;
                              }

                              v308 = *(v307 + 32);
                              v309 = (v507)(&v505);
                              v307 = v308;
                            }

                            while ((v309 & 1) != 0);
                            goto LABEL_571;
                          }
                        }

                        else if ((v283 - 16770048) < 6)
                        {
                          goto LABEL_517;
                        }

                        goto LABEL_573;
                      }

                      if (v283 <= 420171064)
                      {
                        if ((v283 - 16770304) >= 4)
                        {
                          if (v283 == 420171064)
                          {
                            nw_frame_array_finalize(v118 + 136, 1, 1);
                          }

                          goto LABEL_573;
                        }

LABEL_517:
                        v287 = __nwlog_obj();
                        if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http2_handle_capsules";
                          *&buf[12] = 2048;
                          *&buf[14] = v283;
                          _os_log_impl(&dword_181A37000, v287, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                        }

                        goto LABEL_573;
                      }

                      if ((v283 - 420171065) < 2)
                      {
                        if (v282)
                        {
                          v292 = *(v118 + 456);
                          v518 = -1;
                          if (nw_http_capsule_framer_parse_vle_value((v118 + 96), v118, &v518))
                          {
                            if (!v292 || (*(v292 + 276) & 0x10) == 0)
                            {
                              v293 = __nwlog_obj();
                              if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
                              {
                                if (v292)
                                {
                                  v294 = (v292 + 192);
                                }

                                else
                                {
                                  v294 = "";
                                }

                                v295 = " ";
                                if (!v292)
                                {
                                  v295 = "";
                                }

                                v296 = *(v292 + 88);
                                if (v296)
                                {
                                  v279 = *(v296 + 492);
                                }

                                else
                                {
                                  v279 = -1;
                                }

                                v280 = *(v292 + 64);
                                *buf = 136448002;
                                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                *&buf[12] = 2082;
                                *&buf[14] = v294;
                                *&buf[22] = 2080;
                                v525 = v295;
                                *v526 = 1024;
                                *&v526[2] = v279;
                                *&v526[6] = 2048;
                                *&v526[8] = v280;
                                *&v526[16] = 2048;
                                *&v526[18] = v283;
                                *&v526[26] = 2048;
                                *&v526[28] = v280;
                                v527 = 2048;
                                v528 = v518;
                                _os_log_impl(&dword_181A37000, v293, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                              }
                            }

                            nw_protocol_webtransport_stream_error(v292, v118);
                            nw_protocol_webtransport_stream_disconnect(v292, v281);
                          }

                          else if ((*(v118 + 580) & 2) == 0)
                          {
                            v299 = __nwlog_obj();
                            if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
                            {
                              v300 = *(v118 + 492);
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = v118 + 496;
                              *&buf[22] = 2080;
                              v525 = " ";
                              *v526 = 1024;
                              *&v526[2] = v300;
                              *&v526[6] = 2048;
                              *&v526[8] = v283;
                              _os_log_impl(&dword_181A37000, v299, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                            }
                          }

                          v248 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_494:
                          *(v118 + 456) = 0;
                          nw_http_capsule_complete_capsule(v118 + 96);
                        }
                      }

                      else
                      {
                        if ((v283 - 420171067) < 2)
                        {
                          v286 = *(v118 + 456);
                          v288 = v283 == 420171068 && v282;
                          v511 = MEMORY[0x1E69E9820];
                          v512 = 0x40000000;
                          v513 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                          v514 = &__block_descriptor_tmp_34_36485;
                          v517 = v288;
                          v515 = v118 + 96;
                          v516 = v286;
                          v289 = *(v118 + 136);
                          do
                          {
                            if (!v289)
                            {
                              break;
                            }

                            v290 = *(v289 + 32);
                            v291 = (v513)(&v511);
                            v289 = v290;
                          }

                          while ((v291 & 1) != 0);
                          if (v288)
                          {
                            nw_protocol_input_finished(v286, v118);
                            goto LABEL_572;
                          }

LABEL_571:
                          nw_protocol_input_available(v286, v118);
                          goto LABEL_572;
                        }

LABEL_573:
                        if (v282)
                        {
                          goto LABEL_494;
                        }
                      }
                    }
                  }

LABEL_979:
                  metadata_for_request = v492;
                  if (!v492)
                  {
                    goto LABEL_458;
                  }

                  goto LABEL_457;
                }

                if ((*(v118 + 580) & 2) == 0)
                {
                  v428 = __nwlog_obj();
                  if (os_log_type_enabled(v428, OS_LOG_TYPE_ERROR))
                  {
                    v429 = *(v118 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v118 + 496;
                    *&buf[22] = 2080;
                    v525 = " ";
                    *v526 = 1024;
                    *&v526[2] = v429;
                    _os_log_impl(&dword_181A37000, v428, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                  }
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                v430 = _os_log_send_and_compose_impl();
                type[0] = 16;
                LOBYTE(v511) = 0;
                if (!__nwlog_fault(v430, type, &v511))
                {
LABEL_977:
                  if (v430)
                  {
                    free(v430);
                  }

                  goto LABEL_979;
                }

                if (type[0] == 17)
                {
                  v431 = __nwlog_obj();
                  v432 = type[0];
                  if (!os_log_type_enabled(v431, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v433 = "%{public}s output handler has no get_input_frames callback";
LABEL_976:
                  _os_log_impl(&dword_181A37000, v431, v432, v433, buf, 0xCu);
                  goto LABEL_977;
                }

                if (v511 != 1)
                {
                  v431 = __nwlog_obj();
                  v432 = type[0];
                  if (!os_log_type_enabled(v431, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v433 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                  goto LABEL_976;
                }

                v444 = __nw_create_backtrace_string();
                v431 = __nwlog_obj();
                v432 = type[0];
                v445 = os_log_type_enabled(v431, type[0]);
                if (!v444)
                {
                  if (!v445)
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v433 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                  goto LABEL_976;
                }

                if (v445)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v444;
                  v446 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_878:
                  _os_log_impl(&dword_181A37000, v431, v432, v446, buf, 0x16u);
                }
              }

              else
              {
                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                v430 = _os_log_send_and_compose_impl();
                type[0] = 16;
                LOBYTE(v511) = 0;
                if (!__nwlog_fault(v430, type, &v511))
                {
                  goto LABEL_977;
                }

                if (type[0] == 17)
                {
                  v431 = __nwlog_obj();
                  v432 = type[0];
                  if (!os_log_type_enabled(v431, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v433 = "%{public}s called with null output_handler";
                  goto LABEL_976;
                }

                if (v511 != 1)
                {
                  v431 = __nwlog_obj();
                  v432 = type[0];
                  if (!os_log_type_enabled(v431, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v433 = "%{public}s called with null output_handler, backtrace limit exceeded";
                  goto LABEL_976;
                }

                v444 = __nw_create_backtrace_string();
                v431 = __nwlog_obj();
                v432 = type[0];
                v460 = os_log_type_enabled(v431, type[0]);
                if (!v444)
                {
                  if (!v460)
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v433 = "%{public}s called with null output_handler, no backtrace";
                  goto LABEL_976;
                }

                if (v460)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v444;
                  v446 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                  goto LABEL_878;
                }
              }
            }

            else
            {
              if (v149)
              {
                goto LABEL_456;
              }

              *(v118 + 476) = 3;
              v158 = *(v118 + 48);
              if (v158)
              {
                v159 = *(v158 + 40);
                if (v159)
                {
                  *(v118 + 440) = v159;
                  if (!metadata_for_request)
                  {
                    goto LABEL_458;
                  }

                  goto LABEL_457;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v430 = _os_log_send_and_compose_impl();
                type[0] = 16;
                LOBYTE(v511) = 0;
                if (!__nwlog_fault(v430, type, &v511))
                {
                  goto LABEL_977;
                }

                if (type[0] == 17)
                {
                  v431 = __nwlog_obj();
                  v432 = type[0];
                  if (!os_log_type_enabled(v431, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v433 = "%{public}s called with null webtransport_stream";
                  goto LABEL_976;
                }

                if (v511 != 1)
                {
                  v431 = __nwlog_obj();
                  v432 = type[0];
                  if (!os_log_type_enabled(v431, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v433 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                  goto LABEL_976;
                }

                v444 = __nw_create_backtrace_string();
                v431 = __nwlog_obj();
                v432 = type[0];
                v450 = os_log_type_enabled(v431, type[0]);
                if (!v444)
                {
                  if (!v450)
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v433 = "%{public}s called with null webtransport_stream, no backtrace";
                  goto LABEL_976;
                }

                if (v450)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v444;
                  v446 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                  goto LABEL_878;
                }
              }

              else
              {
                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v430 = _os_log_send_and_compose_impl();
                type[0] = 16;
                LOBYTE(v511) = 0;
                if (!__nwlog_fault(v430, type, &v511))
                {
                  goto LABEL_977;
                }

                if (type[0] == 17)
                {
                  v431 = __nwlog_obj();
                  v432 = type[0];
                  if (!os_log_type_enabled(v431, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v433 = "%{public}s called with null input_protocol";
                  goto LABEL_976;
                }

                if (v511 != 1)
                {
                  v431 = __nwlog_obj();
                  v432 = type[0];
                  if (!os_log_type_enabled(v431, type[0]))
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v433 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                  goto LABEL_976;
                }

                v444 = __nw_create_backtrace_string();
                v431 = __nwlog_obj();
                v432 = type[0];
                v449 = os_log_type_enabled(v431, type[0]);
                if (!v444)
                {
                  if (!v449)
                  {
                    goto LABEL_977;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v433 = "%{public}s called with null input_protocol, no backtrace";
                  goto LABEL_976;
                }

                if (v449)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v444;
                  v446 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                  goto LABEL_878;
                }
              }
            }

            free(v444);
            goto LABEL_977;
          }
        }
      }

      v126 = nw_protocol_copy_info(v122);
      v127 = v126;
      aBlock = MEMORY[0x1E69E9820];
      v501 = 0x40000000;
      v502 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      v503 = &__block_descriptor_tmp_27_36446;
      v504 = v118;
      if (v126)
      {
        _nw_array_apply(v126, &aBlock);
        v128 = *(v118 + 400);
        if (!v128)
        {
          os_release(v127);
          if (!metadata_for_request)
          {
            goto LABEL_458;
          }

          goto LABEL_457;
        }
      }

      else
      {
        v128 = *(v118 + 400);
        if (!v128)
        {
          goto LABEL_456;
        }
      }

      v136 = nw_http_connection_metadata_get_version(v128);
      v137 = v136;
      if (v136 == 4)
      {
        v138 = 0;
      }

      else
      {
        if (v136 != 5)
        {
LABEL_186:
          v140 = v122[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v424 = v122[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v140 = v424;
          }

          v141 = nw_protocols_are_equal(v140, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v142 = *(v118 + 580);
          if (v141)
          {
            v142 |= 0x40u;
            *(v118 + 580) = v142;
          }

          if ((v142 & 2) == 0)
          {
            v143 = __nwlog_obj();
            if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
            {
              v144 = *(v118 + 492);
              if (v137 == 4)
              {
                v145 = 2;
              }

              else
              {
                v145 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v118 + 496;
              *&buf[22] = 2080;
              v525 = " ";
              *v526 = 1024;
              *&v526[2] = v144;
              *&v526[6] = 1024;
              *&v526[8] = v145;
              _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v127)
          {
            os_release(v127);
          }

          goto LABEL_198;
        }

        v138 = 1;
      }

      *(v118 + 480) = v138;
      goto LABEL_186;
    }

    __nwlog_obj();
    v53 = v51[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v525 = 1;
    *v526 = 2048;
    *&v526[2] = v53;
    v54 = _os_log_send_and_compose_impl();
    type[0] = 16;
    LOBYTE(v511) = 0;
    if (__nwlog_fault(v54, type, &v511))
    {
      if (type[0] == 17)
      {
        v55 = __nwlog_obj();
        v56 = type[0];
        if (os_log_type_enabled(v55, type[0]))
        {
          v57 = v51[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v525 = 1;
          *v526 = 2048;
          *&v526[2] = v57;
          v58 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_142:
          v117 = v55;
LABEL_143:
          _os_log_impl(&dword_181A37000, v117, v56, v58, buf, 0x2Au);
        }
      }

      else if (v511 == 1)
      {
        v111 = __nw_create_backtrace_string();
        v112 = __nwlog_obj();
        v56 = type[0];
        v113 = os_log_type_enabled(v112, type[0]);
        if (v111)
        {
          if (v113)
          {
            v114 = v51[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v525 = 1;
            *v526 = 2048;
            *&v526[2] = v114;
            *&v526[10] = 2082;
            *&v526[12] = v111;
            _os_log_impl(&dword_181A37000, v112, v56, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v111);
          goto LABEL_144;
        }

        if (v113)
        {
          v135 = v51[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v525 = 1;
          *v526 = 2048;
          *&v526[2] = v135;
          v58 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          v117 = v112;
          goto LABEL_143;
        }
      }

      else
      {
        v55 = __nwlog_obj();
        v56 = type[0];
        if (os_log_type_enabled(v55, type[0]))
        {
          v116 = v51[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v525 = 1;
          *v526 = 2048;
          *&v526[2] = v116;
          v58 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_142;
        }
      }
    }

LABEL_144:
    if (v54)
    {
      free(v54);
    }

    v51[2] = 0;
    metadata_for_request = v492;
    goto LABEL_147;
  }

  if ((*(a1 + 580) & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_http_send_connect";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 496;
      *&buf[22] = 2080;
      v525 = " ";
      *v526 = 1024;
      *&v526[2] = v21;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Sent CONNECT request to WebTransport server", buf, 0x26u);
    }
  }

  *(a1 + 476) = 1;
  v22 = webtransport_state[2];
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  v25 = v23;
  webtransport_state[2] = v24;
  metadata_for_request = v14;
  if (v25 << 63 >> 63 == v25)
  {
    goto LABEL_456;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = webtransport_state[2];
  *buf = 136446978;
  *&buf[4] = "nw_webtransport_http_send_connect";
  *&buf[12] = 2082;
  *&buf[14] = "connection_state->local_sessions";
  *&buf[22] = 2048;
  v525 = 1;
  *v526 = 2048;
  *&v526[2] = v26;
  v27 = _os_log_send_and_compose_impl();
  type[0] = 16;
  LOBYTE(v511) = 0;
  if (!__nwlog_fault(v27, type, &v511))
  {
    goto LABEL_136;
  }

  if (type[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    v29 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_136;
    }

    v30 = webtransport_state[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_http_send_connect";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v525 = 1;
    *v526 = 2048;
    *&v526[2] = v30;
    v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_135:
    _os_log_impl(&dword_181A37000, v28, v29, v31, buf, 0x2Au);
    goto LABEL_136;
  }

  if (v511 != 1)
  {
    v28 = __nwlog_obj();
    v29 = type[0];
    if (!os_log_type_enabled(v28, type[0]))
    {
      goto LABEL_136;
    }

    v110 = webtransport_state[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_http_send_connect";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v525 = 1;
    *v526 = 2048;
    *&v526[2] = v110;
    v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
    goto LABEL_135;
  }

  v107 = __nw_create_backtrace_string();
  v28 = __nwlog_obj();
  v29 = type[0];
  v108 = os_log_type_enabled(v28, type[0]);
  if (!v107)
  {
    if (!v108)
    {
      goto LABEL_136;
    }

    v115 = webtransport_state[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_http_send_connect";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v525 = 1;
    *v526 = 2048;
    *&v526[2] = v115;
    v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
    goto LABEL_135;
  }

  if (v108)
  {
    v109 = webtransport_state[2];
    *buf = 136447234;
    *&buf[4] = "nw_webtransport_http_send_connect";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v525 = 1;
    *v526 = 2048;
    *&v526[2] = v109;
    *&v526[10] = 2082;
    *&v526[12] = v107;
    _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
  }

  free(v107);
LABEL_136:
  if (v27)
  {
    free(v27);
  }

  webtransport_state[2] = 0xFFFFFFFFLL;
  metadata_for_request = v14;
  if (v14)
  {
    goto LABEL_457;
  }

LABEL_458:
  if (v10)
  {
    os_release(v10);
  }

  if (v494)
  {
    os_release(v494);
  }

  if (v493)
  {
    os_release(v493);
  }

  if (v5)
  {
    v194 = v5;
    goto LABEL_466;
  }
}

void sub_18262CC08(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 208), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36471(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__36472(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t nw_webtransport_session_get_stream(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (!(a2 >> 60))
  {
    result = *(a1 + 192);
    if (result)
    {
      result = nw_hash_table_get_node(result, &v11, 8);
      if (result)
      {
        return *(result + 16);
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_webtransport_session_get_stream";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v13 = "nw_webtransport_session_get_stream";
        v6 = "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v9 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v13 = "nw_webtransport_session_get_stream";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v8)
      {
        *buf = 136446210;
        v13 = "nw_webtransport_session_get_stream";
        v6 = "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT), no backtrace";
        goto LABEL_19;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v13 = "nw_webtransport_session_get_stream";
        v6 = "%{public}s called with null (stream_id < WEBTRANSPORT_MAX_STREAMS_LIMIT), backtrace limit exceeded";
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_protocol_webtransport_stream_error(nw_protocol *a1, nw_protocol *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_error";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v3, &type, &v21))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_error";
      v6 = "%{public}s called with null protocol";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v15 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "nw_protocol_webtransport_stream_error";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v3)
        {
          return;
        }

        goto LABEL_55;
      }

      if (!v15)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_error";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_error";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_53;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_error";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v3, &type, &v21))
    {
      goto LABEL_54;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v24 = "nw_protocol_webtransport_stream_error";
        v6 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_53;
      }

      v16 = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v17 = os_log_type_enabled(v4, type);
      if (!v16)
      {
        if (!v17)
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v24 = "nw_protocol_webtransport_stream_error";
        v6 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_53;
      }

      if (v17)
      {
        *buf = 136446466;
        v24 = "nw_protocol_webtransport_stream_error";
        v25 = 2082;
        v26 = v16;
        v18 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_36:
        _os_log_impl(&dword_181A37000, v4, v5, v18, buf, 0x16u);
      }

LABEL_37:
      free(v16);
      if (!v3)
      {
        return;
      }

LABEL_55:
      free(v3);
      return;
    }

    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_error";
    v6 = "%{public}s called with null webtransport_stream";
LABEL_53:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_54;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_error";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v3, &type, &v21))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_error";
      v6 = "%{public}s called with null other_protocol";
      goto LABEL_53;
    }

    if (v21 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_error";
      v6 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_53;
    }

    v16 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v19 = os_log_type_enabled(v4, type);
    if (!v16)
    {
      if (!v19)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_error";
      v6 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_53;
    }

    if (v19)
    {
      *buf = 136446466;
      v24 = "nw_protocol_webtransport_stream_error";
      v25 = 2082;
      v26 = v16;
      v18 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v7 = a2;
    v8 = a1;
    v9 = __nwlog_obj();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    a2 = v7;
    v11 = v10;
    a1 = v8;
    if (v11)
    {
      v12 = handle[11];
      if (v12)
      {
        v13 = *(v12 + 492);
      }

      else
      {
        v13 = -1;
      }

      v20 = handle[8];
      *buf = 136447234;
      v24 = "nw_protocol_webtransport_stream_error";
      v25 = 2082;
      v26 = (handle + 24);
      v27 = 2080;
      v28 = " ";
      v29 = 1024;
      v30 = v13;
      v31 = 2048;
      v32 = v20;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a2 = v7;
      a1 = v8;
    }
  }

  nw_protocol_error(a1->default_input_handler->flow_id, a2);
}

void nw_protocol_webtransport_stream_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v206 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v57 = __nwlog_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          v58 = handle[11];
          if (v58)
          {
            v59 = *(v58 + 492);
          }

          else
          {
            v59 = -1;
          }

          v90 = handle[8];
          *buf = 136447234;
          *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
          *&buf[12] = 2082;
          *&buf[14] = handle + 24;
          *&buf[22] = 2080;
          v200 = " ";
          *v201 = 1024;
          *&v201[2] = v59;
          *&v201[6] = 2048;
          *&v201[8] = v90;
          _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        }
      }

      if (*(handle + 46) != 3 || *(handle + 47) != 3)
      {
        handle[23] = 0x300000003;
      }

      v4 = handle[11];
      v5 = *(v4 + 480);
      if (v5 != 1)
      {
        if (v5)
        {
          return;
        }

        goto LABEL_10;
      }

      if (handle != *(v4 + 440))
      {
        output_handler = a1->output_handler;
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            if (callbacks->disconnect)
            {
              nw_protocol_disconnect(output_handler, a1);
              return;
            }
          }
        }

        goto LABEL_10;
      }

      if (*(v4 + 476) == 5)
      {
        if ((*(v4 + 580) & 2) != 0)
        {
          goto LABEL_10;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v9 = *(v4 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = v4 + 496;
        *&buf[22] = 2080;
        v200 = " ";
        *v201 = 1024;
        *&v201[2] = v9;
        v10 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
        v11 = v8;
        v12 = OS_LOG_TYPE_INFO;
        goto LABEL_21;
      }

      if ((*(v4 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v14 = *(v4 + 492);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 496;
          *&buf[22] = 2080;
          v200 = " ";
          *v201 = 1024;
          *&v201[2] = v14;
          *&v201[6] = 1024;
          *&v201[8] = 57;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
        }
      }

      v15 = *(v4 + 476);
      *(v4 + 476) = 5;
      v16 = *(v4 + 192);
      if (v16)
      {
        v177[0] = MEMORY[0x1E69E9820];
        v177[1] = 0x40000000;
        v177[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
        v177[3] = &__block_descriptor_tmp_24_36439;
        v178 = 57;
        nw_hash_table_apply(v16, v177);
      }

      v17 = *(v4 + 448);
      if (v17)
      {
        v18 = *(v17 + 88);
        nw_protocol_error(*(v17 + 48), *(v4 + 448));
        nw_protocol_disconnect(v17, v18);
      }

      v19 = *(v4 + 336);
      if (v19)
      {
        do
        {
          v20 = *(v19 + 112);
          v21 = *(v19 + 88);
          nw_protocol_error(*(v19 + 48), v19);
          nw_protocol_disconnect(v19, v21);
          v19 = v20;
        }

        while (v20);
      }

      v22 = *(v4 + 440);
      if (v22)
      {
        v23 = *(v22 + 88);
        nw_protocol_error(*(v22 + 48), *(v4 + 440));
        nw_protocol_disconnect(v22, v23);
      }

      if (*(v4 + 32))
      {
        nw_protocol_remove_instance(v4);
        nw_protocol_disconnect(*(v4 + 32), v4);
      }

      v24 = *(v4 + 400);
      if (!v24)
      {
        goto LABEL_10;
      }

      webtransport_state = nw_http_connection_metadata_get_webtransport_state(v24);
      if (!webtransport_state)
      {
        goto LABEL_10;
      }

      v26 = webtransport_state;
      if (v15 != 4 && v15 != 1)
      {
        goto LABEL_10;
      }

      v27 = *(webtransport_state + 16);
      *(webtransport_state + 16) = v27 - 1;
      if (v27)
      {
LABEL_57:
        if (*(v4 + 580))
        {
          goto LABEL_10;
        }

        v39 = *v26;
        if (!*v26)
        {
          goto LABEL_10;
        }

        v40 = *(v39 + 352);
        v41 = *(v39 + 360);
        v42 = (v40 + 360);
        if (!v40)
        {
          v42 = v26 + 1;
        }

        *v42 = v41;
        *v41 = v40;
        *(v39 + 352) = 0;
        *(v39 + 360) = 0;
        v43 = *(v39 + 32);
        if (!v43 || *(v39 + 480) != 2)
        {
          goto LABEL_104;
        }

        v44 = v43[2];
        if (nw_protocol_http2_identifier::onceToken != -1)
        {
          v144 = v43[2];
          dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
          v44 = v144;
        }

        if (!nw_protocols_are_equal(v44, &nw_protocol_http2_identifier::http2_protocol_identifier))
        {
          v45 = v43[2];
          if (nw_protocol_http3_identifier::onceToken != -1)
          {
            v146 = v43[2];
            dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
            v45 = v146;
          }

          if (!nw_protocols_are_equal(v45, &nw_protocol_http3_identifier::http3_protocol_identifier))
          {
            v46 = v43[2];
            if (nw_protocol_http_messaging_identifier::onceToken != -1)
            {
              v147 = v43[2];
              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
              v46 = v147;
            }

            if (!nw_protocols_are_equal(v46, &nw_protocol_http_messaging_identifier::protocol_identifier))
            {
LABEL_104:
              v66 = *(v39 + 480);
              if (v66 > 1)
              {
                if ((*(v39 + 580) & 2) != 0)
                {
                  goto LABEL_10;
                }

                v67 = __nwlog_obj();
                if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_10;
                }

                v68 = *(v39 + 492);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_establish";
                *&buf[12] = 2082;
                *&buf[14] = v39 + 496;
                *&buf[22] = 2080;
                v200 = " ";
                *v201 = 1024;
                *&v201[2] = v68;
                v10 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
                v11 = v67;
                v12 = OS_LOG_TYPE_ERROR;
LABEL_21:
                _os_log_impl(&dword_181A37000, v11, v12, v10, buf, 0x26u);
                goto LABEL_10;
              }

              if ((*(v39 + 580) & 1) == 0)
              {
                if (!*(v39 + 476))
                {
                  nw_webtransport_http_send_connect(v39);
                }

                goto LABEL_10;
              }

              v69 = *(v39 + 476);
              if (v66 == 1)
              {
                if (v69 != 3)
                {
                  if (v69)
                  {
                    goto LABEL_10;
                  }

                  v70 = *(v39 + 48);
                  if (v70)
                  {
                    v71 = *(v70 + 40);
                    if (v71)
                    {
                      nw_protocol_replace_input_handler(*(v39 + 32), v39, *(v70 + 40));
                      *(v39 + 440) = v71;
                      nw_protocol_set_output_handler(v39, 0);
                      nw_protocol_set_input_handler(v39, 0);
                      if (*(v39 + 580))
                      {
                        v72 = *(*(v39 + 440) + 32);
                        v73 = *(v72 + 16);
                        if (nw_protocol_http_messaging_identifier::onceToken != -1)
                        {
                          dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                        }

                        if (nw_protocols_are_equal(v73, &nw_protocol_http_messaging_identifier::protocol_identifier))
                        {
                          goto LABEL_123;
                        }

                        v74 = *(v72 + 16);
                        if (nw_protocol_http3_identifier::onceToken != -1)
                        {
                          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                        }

                        if (nw_protocols_are_equal(v74, &nw_protocol_http3_identifier::http3_protocol_identifier))
                        {
LABEL_123:
                          v75 = *(v39 + 368);
                          if (v75)
                          {
                            v76 = nw_parameters_copy_protocol_options_legacy(v75, v72);
                            if (v76)
                            {
                              v77 = v76;
                              if ((*(v71 + 276) & 0x10) == 0 && gLogDatapath == 1)
                              {
                                v169 = __nwlog_obj();
                                if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
                                {
                                  v170 = *(v71 + 88);
                                  if (v170)
                                  {
                                    v171 = *(v170 + 492);
                                  }

                                  else
                                  {
                                    v171 = -1;
                                  }

                                  v176 = *(v71 + 64);
                                  *buf = 136447490;
                                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v71 + 192;
                                  *&buf[22] = 2080;
                                  v200 = " ";
                                  *v201 = 1024;
                                  *&v201[2] = v171;
                                  *&v201[6] = 2048;
                                  *&v201[8] = v176;
                                  *&v201[16] = 2048;
                                  *&v201[18] = v77;
                                  _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                                }
                              }

                              nw_http3_set_stream_mode(v77, 0);
                              os_release(v77);
                            }

                            else
                            {
                              if ((*(v39 + 580) & 2) == 0 && gLogDatapath == 1)
                              {
                                v174 = __nwlog_obj();
                                if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                                {
                                  v175 = *(v39 + 492);
                                  *buf = 136446978;
                                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v39 + 496;
                                  *&buf[22] = 2080;
                                  v200 = " ";
                                  *v201 = 1024;
                                  *&v201[2] = v175;
                                  _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                                }
                              }

                              v95 = *(v71 + 88);
                              nw_protocol_error(*(v71 + 48), v71);
                              nw_protocol_disconnect(v71, v95);
                            }
                          }
                        }
                      }

                      goto LABEL_181;
                    }

                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v154 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v192[0]) = 0;
                    if (__nwlog_fault(v154, type, v192))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v155 = __nwlog_obj();
                        v156 = type[0];
                        if (!os_log_type_enabled(v155, type[0]))
                        {
                          goto LABEL_382;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v157 = "%{public}s called with null webtransport_stream";
                        goto LABEL_381;
                      }

                      if (LOBYTE(v192[0]) != 1)
                      {
                        v155 = __nwlog_obj();
                        v156 = type[0];
                        if (!os_log_type_enabled(v155, type[0]))
                        {
                          goto LABEL_382;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v157 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                        goto LABEL_381;
                      }

                      backtrace_string = __nw_create_backtrace_string();
                      v155 = __nwlog_obj();
                      v156 = type[0];
                      v168 = os_log_type_enabled(v155, type[0]);
                      if (backtrace_string)
                      {
                        if (v168)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = backtrace_string;
                          _os_log_impl(&dword_181A37000, v155, v156, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(backtrace_string);
                        if (!v154)
                        {
                          goto LABEL_181;
                        }

                        goto LABEL_383;
                      }

                      if (v168)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v157 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_381:
                        _os_log_impl(&dword_181A37000, v155, v156, v157, buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v154 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v192[0]) = 0;
                    if (!__nwlog_fault(v154, type, v192))
                    {
                      goto LABEL_382;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v155 = __nwlog_obj();
                      v156 = type[0];
                      if (!os_log_type_enabled(v155, type[0]))
                      {
                        goto LABEL_382;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v157 = "%{public}s called with null input_protocol";
                      goto LABEL_381;
                    }

                    if (LOBYTE(v192[0]) != 1)
                    {
                      v155 = __nwlog_obj();
                      v156 = type[0];
                      if (!os_log_type_enabled(v155, type[0]))
                      {
                        goto LABEL_382;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v157 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                      goto LABEL_381;
                    }

                    v163 = __nw_create_backtrace_string();
                    v155 = __nwlog_obj();
                    v156 = type[0];
                    v164 = os_log_type_enabled(v155, type[0]);
                    if (!v163)
                    {
                      if (!v164)
                      {
                        goto LABEL_382;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v157 = "%{public}s called with null input_protocol, no backtrace";
                      goto LABEL_381;
                    }

                    if (v164)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v163;
                      _os_log_impl(&dword_181A37000, v155, v156, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v163);
                  }

LABEL_382:
                  if (!v154)
                  {
LABEL_181:
                    *(v39 + 476) = 2;
                    goto LABEL_10;
                  }

LABEL_383:
                  free(v154);
                  goto LABEL_181;
                }

                v84 = *(v39 + 32);
                if (!v84)
                {
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v150 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v192[0]) = 0;
                  if (!__nwlog_fault(v150, type, v192))
                  {
                    goto LABEL_377;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v151 = __nwlog_obj();
                    v152 = type[0];
                    if (!os_log_type_enabled(v151, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v153 = "%{public}s called with null output_handler";
                  }

                  else if (LOBYTE(v192[0]) == 1)
                  {
                    v165 = __nw_create_backtrace_string();
                    v151 = __nwlog_obj();
                    v152 = type[0];
                    v166 = os_log_type_enabled(v151, type[0]);
                    if (v165)
                    {
                      if (v166)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        *&buf[12] = 2082;
                        *&buf[14] = v165;
                        _os_log_impl(&dword_181A37000, v151, v152, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v165);
LABEL_377:
                      if (!v150)
                      {
                        goto LABEL_10;
                      }

LABEL_378:
                      free(v150);
                      goto LABEL_10;
                    }

                    if (!v166)
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v153 = "%{public}s called with null output_handler, no backtrace";
                  }

                  else
                  {
                    v151 = __nwlog_obj();
                    v152 = type[0];
                    if (!os_log_type_enabled(v151, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v153 = "%{public}s called with null output_handler, backtrace limit exceeded";
                  }

LABEL_376:
                  _os_log_impl(&dword_181A37000, v151, v152, v153, buf, 0xCu);
                  goto LABEL_377;
                }

                v85 = v84[3];
                if (v85 && *(v85 + 80))
                {
                  for (i = 3; (i | 2) == 3; i = *(v39 + 476))
                  {
                    if (!nw_protocol_get_input_frames(v84, v39, 0, 0, 0xFFFFFFFFLL, v39 + 120))
                    {
                      goto LABEL_10;
                    }

                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v200 = __Block_byref_object_copy__36471;
                    *v201 = __Block_byref_object_dispose__36472;
                    *&v201[8] = nw_protocol_copy_http_definition();
                    v201[16] |= 1u;
                    *type = MEMORY[0x1E69E9820];
                    v181 = 0x40000000;
                    v182 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                    v183 = &unk_1E6A31940;
                    v184 = buf;
                    v185 = v39;
                    v186 = v39 + 120;
                    v87 = *(v39 + 120);
                    do
                    {
                      if (!v87)
                      {
                        break;
                      }

                      v88 = *(v87 + 32);
                      v89 = (v182)(type);
                      v87 = v88;
                    }

                    while ((v89 & 1) != 0);
                    _Block_object_dispose(buf, 8);
                    if ((v201[16] & 1) != 0 && *&v201[8])
                    {
                      os_release(*&v201[8]);
                    }
                  }

                  v91 = *(v39 + 480);
                  if (v91 == 1)
                  {
                    nw_webtransport_http3_handle_input(v39);
                    v94 = *(v39 + 448);
                    if (v94 && *(v94 + 72))
                    {
                      nw_protocol_input_available(*(v94 + 48), v94);
                    }

                    goto LABEL_10;
                  }

                  if (v91)
                  {
                    goto LABEL_10;
                  }

                  if ((*(v39 + 580) & 2) == 0 && gLogDatapath == 1)
                  {
                    v172 = __nwlog_obj();
                    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
                    {
                      v173 = *(v39 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v39 + 496;
                      *&buf[22] = 2080;
                      v200 = " ";
                      *v201 = 1024;
                      *&v201[2] = v173;
                      _os_log_impl(&dword_181A37000, v172, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                    }
                  }

                  if (*(v39 + 476) != 4)
                  {
LABEL_10:
                    nw_protocol_disconnected(a1->default_input_handler->flow_id, a1);
                    return;
                  }

                  v92 = (v39 + 96);
                  v93 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                  while (1)
                  {
                    capsule = nw_http_capsule_framer_read_capsule((v39 + 96), v39);
                    if (!capsule && !*(v39 + 136))
                    {
                      goto LABEL_10;
                    }

                    if (!*(v39 + 456))
                    {
                      v101 = *v92;
                      if (*v92 == -1)
                      {
                        goto LABEL_245;
                      }

                      v102 = *(v39 + 104) != -1 && *(v39 + 112) == 0;
                      if (v101 <= 16770303)
                      {
                        if ((v101 - 16770048) >= 6 && ((v101 + 1) > 4 || !v101))
                        {
                          goto LABEL_190;
                        }

LABEL_245:
                        v115 = __nwlog_obj();
                        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                          *&buf[12] = 2048;
                          *&buf[14] = v101;
                          _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                        }

                        goto LABEL_190;
                      }

                      if ((v101 - 420171065) <= 9 && ((1 << (v101 - 57)) & 0x2EF) != 0)
                      {
                        v198 = -1;
                        if ((nw_http_capsule_framer_parse_vle_value((v39 + 96), v39, &v198) & 1) == 0)
                        {
                          if (v102 && (*(v39 + 580) & 2) == 0)
                          {
                            v142 = __nwlog_obj();
                            if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                            {
                              v143 = *(v39 + 492);
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                              *&buf[12] = 2082;
                              *&buf[14] = v39 + 496;
                              *&buf[22] = 2080;
                              v200 = " ";
                              *v201 = 1024;
                              *&v201[2] = v143;
                              *&v201[6] = 2048;
                              *&v201[8] = v101;
                              v137 = v142;
                              v138 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
LABEL_285:
                              _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_ERROR, v138, buf, 0x30u);
                            }
                          }

LABEL_248:
                          v93 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          goto LABEL_190;
                        }

                        stream = nw_webtransport_session_get_stream(v39, v198);
                        if (stream)
                        {
                          goto LABEL_239;
                        }

                        if ((v101 - 420171067) <= 1)
                        {
                          v118 = v198;
                          v119 = *(v39 + 580);
                          if (v198 >> 60 || ((v198 ^ v119) & 1) == 0)
                          {
                            if ((v119 & 2) != 0)
                            {
                              goto LABEL_271;
                            }

                            v127 = __nwlog_obj();
                            if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_271;
                            }

                            v128 = *(v39 + 492);
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = v39 + 496;
                            *&buf[22] = 2080;
                            v200 = " ";
                            *v201 = 1024;
                            *&v201[2] = v128;
                            v129 = v127;
                            v130 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                          }

                          else
                          {
                            v120 = *(v39 + 424);
                            if (v120)
                            {
                              v121 = *v120;
                              if (v121)
                              {
                                if (*v121)
                                {
                                  v122 = _nw_parameters_copy(*(v39 + 368));
                                  *(v39 + 580) |= 0x20u;
                                  *(v39 + 176) = v118;
                                  v123 = (***(v39 + 424))(*(v39 + 424), *(v39 + 384), v122);
                                  *(v39 + 176) = -1;
                                  *(v39 + 580) &= ~0x20u;
                                  if (v123)
                                  {
                                    stream = nw_webtransport_session_get_stream(v39, v118);
                                  }

                                  else
                                  {
                                    stream = 0;
                                  }

                                  if (v122)
                                  {
                                    os_release(v122);
                                  }

                                  if (stream)
                                  {
                                    if (*(stream + 184) == 3)
                                    {
                                      if ((*(v39 + 580) & 2) == 0)
                                      {
                                        v135 = __nwlog_obj();
                                        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                                        {
                                          v136 = *(v39 + 492);
                                          *buf = 136447234;
                                          *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                          *&buf[12] = 2082;
                                          *&buf[14] = v39 + 496;
                                          *&buf[22] = 2080;
                                          v200 = " ";
                                          *v201 = 1024;
                                          *&v201[2] = v136;
                                          *&v201[6] = 2048;
                                          *&v201[8] = v198;
                                          v137 = v135;
                                          v138 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                                          goto LABEL_285;
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_239:
                                      *(v39 + 456) = stream;
                                    }

                                    goto LABEL_248;
                                  }

                                  goto LABEL_271;
                                }
                              }
                            }

                            if ((v119 & 2) != 0)
                            {
                              goto LABEL_271;
                            }

                            v133 = __nwlog_obj();
                            if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_271;
                            }

                            v134 = *(v39 + 492);
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = v39 + 496;
                            *&buf[22] = 2080;
                            v200 = " ";
                            *v201 = 1024;
                            *&v201[2] = v134;
                            v129 = v133;
                            v130 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
                          }

                          _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, v130, buf, 0x26u);
                        }

LABEL_271:
                        if ((*(v39 + 580) & 2) == 0)
                        {
                          v131 = __nwlog_obj();
                          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                          {
                            v132 = *(v39 + 492);
                            *buf = 136447490;
                            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                            *&buf[12] = 2082;
                            *&buf[14] = v39 + 496;
                            *&buf[22] = 2080;
                            v200 = " ";
                            *v201 = 1024;
                            *&v201[2] = v132;
                            *&v201[6] = 2048;
                            *&v201[8] = v198;
                            *&v201[16] = 2048;
                            *&v201[18] = v101;
                            _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                          }
                        }

                        goto LABEL_248;
                      }

                      v93 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                      if ((v101 - 16770304) < 4)
                      {
                        goto LABEL_245;
                      }
                    }

LABEL_190:
                    v100 = *(v39 + 96);
                    if ((*(v39 + 580) & 2) == 0 && BYTE1(v93[82].isa) == 1)
                    {
                      v139 = __nwlog_obj();
                      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
                      {
                        v140 = *(v39 + 492);
                        v141 = *(v39 + 104);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                        *&buf[12] = 2082;
                        *&buf[14] = v39 + 496;
                        *&buf[22] = 2080;
                        v200 = " ";
                        *v201 = 1024;
                        *&v201[2] = v140;
                        *&v201[6] = 2048;
                        *&v201[8] = v100;
                        *&v201[16] = 2048;
                        *&v201[18] = v141;
                        _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                      }
                    }

                    if (v100 <= 16770303)
                    {
                      if (v100 <= 16770047)
                      {
                        if ((v100 - 1) < 3 || v100 == -1)
                        {
                          goto LABEL_209;
                        }

                        if (!v100)
                        {
                          v103 = *(v39 + 448);
                          if (!v103 || *(v103 + 184) == 3)
                          {
                            nw_frame_array_finalize(v39 + 136, 1, 1);
LABEL_264:
                            v93 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                            goto LABEL_265;
                          }

                          v187[0] = MEMORY[0x1E69E9820];
                          v187[1] = 0x40000000;
                          v188 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                          v189 = &__block_descriptor_tmp_35_36486;
                          v190 = v39 + 96;
                          v191 = v103;
                          v124 = *(v39 + 136);
                          do
                          {
                            if (!v124)
                            {
                              break;
                            }

                            v125 = *(v124 + 32);
                            v126 = (v188)(v187);
                            v124 = v125;
                          }

                          while ((v126 & 1) != 0);
                          goto LABEL_263;
                        }
                      }

                      else if ((v100 - 16770048) < 6)
                      {
                        goto LABEL_209;
                      }

                      goto LABEL_265;
                    }

                    if (v100 <= 420171064)
                    {
                      if ((v100 - 16770304) >= 4)
                      {
                        if (v100 == 420171064)
                        {
                          nw_frame_array_finalize(v39 + 136, 1, 1);
                        }

                        goto LABEL_265;
                      }

LABEL_209:
                      v104 = __nwlog_obj();
                      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                        *&buf[12] = 2048;
                        *&buf[14] = v100;
                        _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                      }

                      goto LABEL_265;
                    }

                    if ((v100 - 420171065) < 2)
                    {
                      if (capsule)
                      {
                        v109 = *(v39 + 456);
                        v198 = -1;
                        if (nw_http_capsule_framer_parse_vle_value((v39 + 96), v39, &v198))
                        {
                          if (!v109 || (*(v109 + 276) & 0x10) == 0)
                          {
                            v110 = __nwlog_obj();
                            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                            {
                              if (v109)
                              {
                                v111 = (v109 + 192);
                              }

                              else
                              {
                                v111 = "";
                              }

                              v112 = " ";
                              if (!v109)
                              {
                                v112 = "";
                              }

                              v113 = *(v109 + 88);
                              if (v113)
                              {
                                v96 = *(v113 + 492);
                              }

                              else
                              {
                                v96 = -1;
                              }

                              v97 = *(v109 + 64);
                              *buf = 136448002;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = v111;
                              *&buf[22] = 2080;
                              v200 = v112;
                              *v201 = 1024;
                              *&v201[2] = v96;
                              *&v201[6] = 2048;
                              *&v201[8] = v97;
                              *&v201[16] = 2048;
                              *&v201[18] = v100;
                              v202 = 2048;
                              v203 = v97;
                              v204 = 2048;
                              v205 = v198;
                              _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                            }
                          }

                          nw_protocol_webtransport_stream_error(v109, v39);
                          nw_protocol_webtransport_stream_disconnect(v109, v98);
                        }

                        else if ((*(v39 + 580) & 2) == 0)
                        {
                          v116 = __nwlog_obj();
                          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                          {
                            v117 = *(v39 + 492);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2082;
                            *&buf[14] = v39 + 496;
                            *&buf[22] = 2080;
                            v200 = " ";
                            *v201 = 1024;
                            *&v201[2] = v117;
                            *&v201[6] = 2048;
                            *&v201[8] = v100;
                            _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                          }
                        }

                        v93 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_186:
                        *(v39 + 456) = 0;
                        nw_http_capsule_complete_capsule(v39 + 96);
                      }
                    }

                    else
                    {
                      if ((v100 - 420171067) < 2)
                      {
                        v103 = *(v39 + 456);
                        v105 = v100 == 420171068 && capsule;
                        v192[0] = MEMORY[0x1E69E9820];
                        v192[1] = 0x40000000;
                        v193 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                        v194 = &__block_descriptor_tmp_34_36485;
                        v197 = v105;
                        v195 = v39 + 96;
                        v196 = v103;
                        v106 = *(v39 + 136);
                        do
                        {
                          if (!v106)
                          {
                            break;
                          }

                          v107 = *(v106 + 32);
                          v108 = (v193)(v192);
                          v106 = v107;
                        }

                        while ((v108 & 1) != 0);
                        if (v105)
                        {
                          nw_protocol_input_finished(v103, v39);
                          goto LABEL_264;
                        }

LABEL_263:
                        nw_protocol_input_available(v103, v39);
                        goto LABEL_264;
                      }

LABEL_265:
                      if (capsule)
                      {
                        goto LABEL_186;
                      }
                    }
                  }
                }

                if ((*(v39 + 580) & 2) == 0)
                {
                  v148 = __nwlog_obj();
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                  {
                    v149 = *(v39 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v39 + 496;
                    *&buf[22] = 2080;
                    v200 = " ";
                    *v201 = 1024;
                    *&v201[2] = v149;
                    _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                  }
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                v150 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v192[0]) = 0;
                if (!__nwlog_fault(v150, type, v192))
                {
                  goto LABEL_377;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v151 = __nwlog_obj();
                  v152 = type[0];
                  if (!os_log_type_enabled(v151, type[0]))
                  {
                    goto LABEL_377;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v153 = "%{public}s output handler has no get_input_frames callback";
                  goto LABEL_376;
                }

                if (LOBYTE(v192[0]) != 1)
                {
                  v151 = __nwlog_obj();
                  v152 = type[0];
                  if (!os_log_type_enabled(v151, type[0]))
                  {
                    goto LABEL_377;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v153 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                  goto LABEL_376;
                }

                v158 = __nw_create_backtrace_string();
                v151 = __nwlog_obj();
                v152 = type[0];
                v159 = os_log_type_enabled(v151, type[0]);
                if (!v158)
                {
                  if (!v159)
                  {
                    goto LABEL_377;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v153 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                  goto LABEL_376;
                }

                if (v159)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v158;
                  v160 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_330:
                  _os_log_impl(&dword_181A37000, v151, v152, v160, buf, 0x16u);
                }
              }

              else
              {
                if (v69)
                {
                  goto LABEL_10;
                }

                *(v39 + 476) = 3;
                v78 = *(v39 + 48);
                if (v78)
                {
                  v79 = *(v78 + 40);
                  if (v79)
                  {
                    *(v39 + 440) = v79;
                    goto LABEL_10;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v150 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v192[0]) = 0;
                  if (!__nwlog_fault(v150, type, v192))
                  {
                    goto LABEL_377;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v151 = __nwlog_obj();
                    v152 = type[0];
                    if (!os_log_type_enabled(v151, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v153 = "%{public}s called with null webtransport_stream";
                    goto LABEL_376;
                  }

                  if (LOBYTE(v192[0]) != 1)
                  {
                    v151 = __nwlog_obj();
                    v152 = type[0];
                    if (!os_log_type_enabled(v151, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v153 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_376;
                  }

                  v158 = __nw_create_backtrace_string();
                  v151 = __nwlog_obj();
                  v152 = type[0];
                  v162 = os_log_type_enabled(v151, type[0]);
                  if (!v158)
                  {
                    if (!v162)
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v153 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_376;
                  }

                  if (v162)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v158;
                    v160 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                    goto LABEL_330;
                  }
                }

                else
                {
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  v150 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v192[0]) = 0;
                  if (!__nwlog_fault(v150, type, v192))
                  {
                    goto LABEL_377;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v151 = __nwlog_obj();
                    v152 = type[0];
                    if (!os_log_type_enabled(v151, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v153 = "%{public}s called with null input_protocol";
                    goto LABEL_376;
                  }

                  if (LOBYTE(v192[0]) != 1)
                  {
                    v151 = __nwlog_obj();
                    v152 = type[0];
                    if (!os_log_type_enabled(v151, type[0]))
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v153 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_376;
                  }

                  v158 = __nw_create_backtrace_string();
                  v151 = __nwlog_obj();
                  v152 = type[0];
                  v161 = os_log_type_enabled(v151, type[0]);
                  if (!v158)
                  {
                    if (!v161)
                    {
                      goto LABEL_377;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v153 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_376;
                  }

                  if (v161)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v158;
                    v160 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                    goto LABEL_330;
                  }
                }
              }

              free(v158);
              if (!v150)
              {
                goto LABEL_10;
              }

              goto LABEL_378;
            }
          }
        }

        v47 = nw_protocol_copy_info(v43);
        v48 = v47;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_27_36446;
        aBlock[4] = v39;
        if (v47)
        {
          _nw_array_apply(v47, aBlock);
          v49 = *(v39 + 400);
          if (!v49)
          {
            os_release(v48);
            goto LABEL_10;
          }
        }

        else
        {
          v49 = *(v39 + 400);
          if (!v49)
          {
            goto LABEL_10;
          }
        }

        version = nw_http_connection_metadata_get_version(v49);
        v51 = version;
        if (version == 4)
        {
          v52 = 0;
        }

        else
        {
          if (version != 5)
          {
LABEL_92:
            v60 = v43[2];
            if (nw_protocol_http_messaging_identifier::onceToken != -1)
            {
              v145 = v43[2];
              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
              v60 = v145;
            }

            v61 = nw_protocols_are_equal(v60, &nw_protocol_http_messaging_identifier::protocol_identifier);
            v62 = *(v39 + 580);
            if (v61)
            {
              v62 |= 0x40u;
              *(v39 + 580) = v62;
            }

            if ((v62 & 2) == 0)
            {
              v63 = __nwlog_obj();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                v64 = *(v39 + 492);
                if (v51 == 4)
                {
                  v65 = 2;
                }

                else
                {
                  v65 = 3;
                }

                *buf = 136447234;
                *&buf[4] = "nw_webtransport_session_establish";
                *&buf[12] = 2082;
                *&buf[14] = v39 + 496;
                *&buf[22] = 2080;
                v200 = " ";
                *v201 = 1024;
                *&v201[2] = v64;
                *&v201[6] = 1024;
                *&v201[8] = v65;
                _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
              }
            }

            if (v48)
            {
              os_release(v48);
            }

            goto LABEL_104;
          }

          v52 = 1;
        }

        *(v39 + 480) = v52;
        goto LABEL_92;
      }

      __nwlog_obj();
      v28 = v26[2];
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = "connection_state->local_sessions";
      *&buf[22] = 2048;
      v200 = 1;
      *v201 = 2048;
      *&v201[2] = v28;
      v29 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v192[0]) = 0;
      if (__nwlog_fault(v29, type, v192))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v30 = __nwlog_obj();
          v31 = type[0];
          if (os_log_type_enabled(v30, type[0]))
          {
            v32 = v26[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v200 = 1;
            *v201 = 2048;
            *&v201[2] = v32;
            v33 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_53:
            _os_log_impl(&dword_181A37000, v30, v31, v33, buf, 0x2Au);
          }
        }

        else if (LOBYTE(v192[0]) == 1)
        {
          v34 = __nw_create_backtrace_string();
          v30 = __nwlog_obj();
          v31 = type[0];
          v35 = os_log_type_enabled(v30, type[0]);
          if (v34)
          {
            if (v35)
            {
              v36 = v26[2];
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v200 = 1;
              *v201 = 2048;
              *&v201[2] = v36;
              *&v201[10] = 2082;
              *&v201[12] = v34;
              _os_log_impl(&dword_181A37000, v30, v31, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v34);
            goto LABEL_54;
          }

          if (v35)
          {
            v38 = v26[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v200 = 1;
            *v201 = 2048;
            *&v201[2] = v38;
            v33 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_53;
          }
        }

        else
        {
          v30 = __nwlog_obj();
          v31 = type[0];
          if (os_log_type_enabled(v30, type[0]))
          {
            v37 = v26[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v200 = 1;
            *v201 = 2048;
            *&v201[2] = v37;
            v33 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_53;
          }
        }
      }

LABEL_54:
      if (v29)
      {
        free(v29);
      }

      v26[2] = 0;
      goto LABEL_57;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
    v53 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v192[0]) = 0;
    if (__nwlog_fault(v53, type, v192))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v54 = __nwlog_obj();
        v55 = type[0];
        if (!os_log_type_enabled(v54, type[0]))
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
        v56 = "%{public}s called with null webtransport_stream";
        goto LABEL_172;
      }

      if (LOBYTE(v192[0]) != 1)
      {
        v54 = __nwlog_obj();
        v55 = type[0];
        if (!os_log_type_enabled(v54, type[0]))
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
        v56 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_172;
      }

      v82 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v55 = type[0];
      v83 = os_log_type_enabled(v54, type[0]);
      if (v82)
      {
        if (v83)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
          *&buf[12] = 2082;
          *&buf[14] = v82;
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v82);
        if (v53)
        {
          goto LABEL_174;
        }

        return;
      }

      if (v83)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
        v56 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_172:
        _os_log_impl(&dword_181A37000, v54, v55, v56, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
    v53 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v192[0]) = 0;
    if (!__nwlog_fault(v53, type, v192))
    {
      goto LABEL_173;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v55 = type[0];
      if (!os_log_type_enabled(v54, type[0]))
      {
        goto LABEL_173;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
      v56 = "%{public}s called with null protocol";
      goto LABEL_172;
    }

    if (LOBYTE(v192[0]) != 1)
    {
      v54 = __nwlog_obj();
      v55 = type[0];
      if (!os_log_type_enabled(v54, type[0]))
      {
        goto LABEL_173;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
      v56 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_172;
    }

    v80 = __nw_create_backtrace_string();
    v54 = __nwlog_obj();
    v55 = type[0];
    v81 = os_log_type_enabled(v54, type[0]);
    if (!v80)
    {
      if (!v81)
      {
        goto LABEL_173;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
      v56 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_172;
    }

    if (v81)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_stream_disconnect";
      *&buf[12] = 2082;
      *&buf[14] = v80;
      _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v80);
  }

LABEL_173:
  if (v53)
  {
LABEL_174:
    free(v53);
  }
}