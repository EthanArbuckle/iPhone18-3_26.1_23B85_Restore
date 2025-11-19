uint64_t sub_21B2BB88C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v148 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v139 = a6;
    v132 = a1;
    v142 = a7;
    while (1)
    {
      v16 = v14;
      v17 = v14 + 1;
      if (v14 + 1 < v13)
      {
        v18 = *a3;
        v19 = sub_21B2B6DB4(*(*a3 + 8 * v17), *(*a3 + 8 * v14), a5, a6, a7, a8 & 1);
        if (v9)
        {
          goto LABEL_144;
        }

        v20 = v19;
        v17 = v16 + 2;
        if (v16 + 2 < v13)
        {
          v134 = v16;
          v21 = (v18 + 8 * v16 + 16);
          while (1)
          {
            v22 = *v21;
            if ((*v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }

            v23 = *(v21 - 1);
            swift_beginAccess();
            v24 = *(a7 + 16);
            if (!v24)
            {
              goto LABEL_175;
            }

            v25 = v24[1];
            if (v22 >= v25)
            {
              goto LABEL_179;
            }

            v26 = v24 + 8;
            v27 = *(v24 + (v22 >> 3) + 64) & (1 << (v22 & 7));
            if (v27)
            {
              v28 = *v24 + 7;
              if (__OFADD__(*v24, 7))
              {
                goto LABEL_164;
              }

              if (v28 < 0)
              {
                v28 = *v24 + 14;
              }

              v29 = v28 >> 3;
              v31 = v29 - 1;
              v30 = v29 < 1;
              v32 = v29 + 62;
              if (!v30)
              {
                v32 = v31;
              }

              v33 = *(&v26[v22 + 8] + (v32 & 0xFFFFFFFFFFFFFFC0));
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              v33 = 0;
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            if (v23 >= v25)
            {
              goto LABEL_179;
            }

            if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
            {
              v34 = *v24;
              v92 = __OFADD__(v34, 7);
              v35 = v34 + 7;
              if (v92)
              {
                goto LABEL_165;
              }

              if (!v27)
              {
LABEL_9:
                if (v20)
                {
                  v16 = v134;
                  a1 = v132;
                  if (v17 < v134)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_40;
                }

                goto LABEL_10;
              }

              v36 = v35 / 8;
              v37 = v36 - 1;
              v30 = v36 < 1;
              v38 = v36 + 62;
              if (!v30)
              {
                v38 = v37;
              }

              v39 = *(&v26[v23 + 8] + (v38 & 0xFFFFFFFFFFFFFFC0));
              v40 = v39 < v33;
              v41 = v33 < v39;
              if (a8)
              {
                v41 = v40;
              }

              if ((v20 & 1) != v41)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (!v27)
              {
                goto LABEL_9;
              }

              if ((v20 & 1) == 0)
              {
                v16 = v134;
                a1 = v132;
                goto LABEL_47;
              }
            }

LABEL_10:
            ++v21;
            if (v13 == ++v17)
            {
              v17 = v13;
LABEL_37:
              v16 = v134;
              a1 = v132;
              break;
            }
          }
        }

        if (v20)
        {
          if (v17 < v16)
          {
            goto LABEL_169;
          }

LABEL_40:
          if (v16 < v17)
          {
            v42 = v17 - 1;
            v43 = v16;
            do
            {
              if (v43 != v42)
              {
                v44 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v45 = *(v44 + 8 * v43);
                *(v44 + 8 * v43) = *(v44 + 8 * v42);
                *(v44 + 8 * v42) = v45;
              }

              v30 = ++v43 < v42--;
            }

            while (v30);
          }
        }
      }

LABEL_47:
      v46 = a3[1];
      if (v17 < v46)
      {
        if (__OFSUB__(v17, v16))
        {
          goto LABEL_168;
        }

        if (v17 - v16 < a4)
        {
          if (__OFADD__(v16, a4))
          {
            goto LABEL_170;
          }

          if (v16 + a4 >= v46)
          {
            v47 = a3[1];
          }

          else
          {
            v47 = (v16 + a4);
          }

          if (v47 < v16)
          {
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_174:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_177:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_178:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_179:
            result = sub_21B34B824();
            __break(1u);
            return result;
          }

          if (v17 != v47)
          {
            v143 = v15;
            v145 = v9;
            v48 = *a3;
            v49 = v16;
            v50 = *a3 + 8 * v17 - 8;
            v135 = v49;
            v137 = v47;
            v51 = v49 - v17;
            do
            {
              v52 = v17;
              v53 = *(v48 + 8 * v17);
              v54 = v51;
              v55 = v50;
              do
              {
                if ((v53 & 0x8000000000000000) != 0)
                {
                  goto LABEL_179;
                }

                v56 = *v55;
                swift_beginAccess();
                v57 = *(a7 + 16);
                if (!v57)
                {
                  goto LABEL_172;
                }

                v58 = v57[1];
                if (v53 >= v58)
                {
                  goto LABEL_179;
                }

                v59 = v57 + 8;
                v60 = *(v57 + (v53 >> 3) + 64) & (1 << (v53 & 7));
                if (v60)
                {
                  v61 = *v57 + 7;
                  if (__OFADD__(*v57, 7))
                  {
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
LABEL_170:
                    __break(1u);
                    goto LABEL_171;
                  }

                  if (v61 < 0)
                  {
                    v61 = *v57 + 14;
                  }

                  v62 = v61 >> 3;
                  v63 = v62 - 1;
                  v30 = v62 < 1;
                  v64 = v62 + 62;
                  if (!v30)
                  {
                    v64 = v63;
                  }

                  v65 = *(&v59[v53 + 8] + (v64 & 0xFFFFFFFFFFFFFFC0));
                  if ((v56 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                else
                {
                  v65 = 0;
                  if ((v56 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                if (v56 >= v58)
                {
                  goto LABEL_179;
                }

                if ((*(v59 + (v56 >> 3)) >> (v56 & 7)))
                {
                  v66 = *v57;
                  v92 = __OFADD__(v66, 7);
                  v67 = v66 + 7;
                  if (v92)
                  {
                    goto LABEL_149;
                  }

                  if (!v60)
                  {
                    break;
                  }

                  v68 = v67 / 8;
                  v69 = v68 - 1;
                  v30 = v68 < 1;
                  v70 = v68 + 62;
                  if (!v30)
                  {
                    v70 = v69;
                  }

                  v71 = *(&v59[v56 + 8] + (v70 & 0xFFFFFFFFFFFFFFC0));
                  v72 = v71 < v65;
                  v73 = v65 < v71;
                  if (a8)
                  {
                    v73 = v72;
                  }

                  if (!v73)
                  {
                    break;
                  }
                }

                else if (!v60)
                {
                  break;
                }

                if (!v48)
                {
                  goto LABEL_173;
                }

                v74 = *v55;
                v53 = v55[1];
                *v55 = v53;
                v55[1] = v74;
                --v55;
              }

              while (!__CFADD__(v54++, 1));
              v17 = v52 + 1;
              v50 += 8;
              --v51;
            }

            while ((v52 + 1) != v137);
            v17 = v137;
            v15 = v143;
            v9 = v145;
            a1 = v132;
            v16 = v135;
          }
        }
      }

      if (v17 < v16)
      {
        goto LABEL_167;
      }

      v133 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21B2356AC(0, *(v15 + 2) + 1, 1, v15);
      }

      v77 = *(v15 + 2);
      v76 = *(v15 + 3);
      v78 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        v15 = sub_21B2356AC((v76 > 1), v77 + 1, 1, v15);
      }

      *(v15 + 2) = v78;
      v79 = v15 + 32;
      v80 = &v15[16 * v77 + 32];
      *v80 = v16;
      *(v80 + 1) = v17;
      v148 = v15;
      v138 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      if (v77)
      {
        v144 = v15;
        v146 = v9;
        v136 = v15 + 32;
        while (1)
        {
          v81 = v78 - 1;
          if (v78 >= 4)
          {
            break;
          }

          if (v78 == 3)
          {
            v82 = *(v15 + 4);
            v83 = *(v15 + 5);
            v92 = __OFSUB__(v83, v82);
            v84 = v83 - v82;
            v85 = v92;
LABEL_108:
            if (v85)
            {
              goto LABEL_156;
            }

            v98 = &v15[16 * v78];
            v100 = *v98;
            v99 = *(v98 + 1);
            v101 = __OFSUB__(v99, v100);
            v102 = v99 - v100;
            v103 = v101;
            if (v101)
            {
              goto LABEL_159;
            }

            v104 = &v79[16 * v81];
            v106 = *v104;
            v105 = *(v104 + 1);
            v92 = __OFSUB__(v105, v106);
            v107 = v105 - v106;
            if (v92)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v102, v107))
            {
              goto LABEL_163;
            }

            if (v102 + v107 >= v84)
            {
              if (v84 < v107)
              {
                v81 = v78 - 2;
              }

              goto LABEL_129;
            }

            goto LABEL_122;
          }

          v108 = &v15[16 * v78];
          v110 = *v108;
          v109 = *(v108 + 1);
          v92 = __OFSUB__(v109, v110);
          v102 = v109 - v110;
          v103 = v92;
LABEL_122:
          if (v103)
          {
            goto LABEL_158;
          }

          v111 = &v79[16 * v81];
          v113 = *v111;
          v112 = *(v111 + 1);
          v92 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v92)
          {
            goto LABEL_161;
          }

          if (v114 < v102)
          {
            goto LABEL_3;
          }

LABEL_129:
          if (v81 - 1 >= v78)
          {
            goto LABEL_150;
          }

          v119 = *a3;
          if (!*a3)
          {
            goto LABEL_174;
          }

          v120 = &v79[16 * v81 - 16];
          v121 = *v120;
          v122 = v81;
          v123 = &v79[16 * v81];
          v124 = *(v123 + 1);
          v125 = (v119 + 8 * *v120);
          v126 = (v119 + 8 * *v123);
          v127 = (v119 + 8 * v124);

          sub_21B2BB3C8(v125, v126, v127, v138, a5, v139, v142, a8 & 1);
          if (v146)
          {

            v148 = v144;
            goto LABEL_144;
          }

          if (v124 < v121)
          {
            goto LABEL_151;
          }

          v128 = *(v144 + 2);
          if (v122 > v128)
          {
            goto LABEL_152;
          }

          *v120 = v121;
          *(v120 + 1) = v124;
          if (v122 >= v128)
          {
            goto LABEL_153;
          }

          v78 = v128 - 1;
          memmove(v123, v123 + 16, 16 * (v128 - 1 - v122));
          a7 = v142;
          v15 = v144;
          *(v144 + 2) = v128 - 1;
          v79 = v136;
          if (v128 <= 2)
          {
LABEL_3:
            v148 = v15;
            v9 = v146;
            a1 = v132;
            goto LABEL_4;
          }
        }

        v86 = &v79[16 * v78];
        v87 = *(v86 - 8);
        v88 = *(v86 - 7);
        v92 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        if (v92)
        {
          goto LABEL_154;
        }

        v91 = *(v86 - 6);
        v90 = *(v86 - 5);
        v92 = __OFSUB__(v90, v91);
        v84 = v90 - v91;
        v85 = v92;
        if (v92)
        {
          goto LABEL_155;
        }

        v93 = &v15[16 * v78];
        v95 = *v93;
        v94 = *(v93 + 1);
        v92 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v92)
        {
          goto LABEL_157;
        }

        v92 = __OFADD__(v84, v96);
        v97 = v84 + v96;
        if (v92)
        {
          goto LABEL_160;
        }

        if (v97 >= v89)
        {
          v115 = &v79[16 * v81];
          v117 = *v115;
          v116 = *(v115 + 1);
          v92 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v92)
          {
            goto LABEL_166;
          }

          if (v84 < v118)
          {
            v81 = v78 - 2;
          }

          goto LABEL_129;
        }

        goto LABEL_108;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v133;
      a6 = v139;
      if (v133 >= v13)
      {
        goto LABEL_141;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_141:
  v129 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B2BEAF4(&v148, v129, a3, a5, a6, a7, a8 & 1, sub_21B2BB3C8);
  if (v9)
  {

LABEL_144:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B2BC214(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v15 = v13;
    v39 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v16 = *v12;
      result = swift_beginAccess();
      v17 = *(a7 + 16);
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17[1];
      if (v14 >= v18)
      {
        break;
      }

      v19 = v17 + 8;
      v20 = *(v17 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v20)
      {
        v21 = *v17 + 7;
        if (__OFADD__(*v17, 7))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }

        if (v21 < 0)
        {
          v21 = *v17 + 14;
        }

        v22 = v21 >> 3;
        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = *(&v19[v14 + 8] + (v25 & 0xFFFFFFFFFFFFFFC0));
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v26 = 0;
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v16 >= v18)
      {
        break;
      }

      if ((*(v19 + (v16 >> 3)) >> (v16 & 7)))
      {
        v27 = *v17;
        v28 = __OFADD__(v27, 7);
        v29 = v27 + 7;
        if (v28)
        {
          goto LABEL_34;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v30 = v29 / 8;
        v31 = v30 - 1;
        v23 = v30 < 1;
        v32 = v30 + 62;
        if (!v23)
        {
          v32 = v31;
        }

        v33 = *(&v19[v16 + 8] + (v32 & 0xFFFFFFFFFFFFFFC0));
        v34 = v33 < v26;
        v35 = v26 < v33;
        if (a8)
        {
          v35 = v34;
        }

        if (!v35)
        {
          goto LABEL_4;
        }
      }

      else if (!v20)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      v36 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v36;
      --v12;
      if (__CFADD__(v15++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v39 + 1;
        --v13;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BC43C(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4;
  v9 = a3;
  v10 = __dst;
  v11 = __src;
  v12 = __dst - __src;
  v13 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v13 = __dst - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - __dst;
  v16 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v16 = a3 - __dst;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 >= 8 && v10 < v9)
    {
      do
      {
        v19 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v20 = *v8;
        swift_beginAccess();
        v21 = *(a7 + 16);
        if (!v21)
        {
          goto LABEL_88;
        }

        v22 = v21[1];
        if (v19 >= v22)
        {
          goto LABEL_90;
        }

        v23 = v21 + 8;
        v24 = *(v21 + (v19 >> 3) + 64) & (1 << (v19 & 7));
        if (v24)
        {
          v25 = *v21 + 7;
          if (__OFADD__(*v21, 7))
          {
            __break(1u);
            goto LABEL_85;
          }

          if (v25 < 0)
          {
            v25 = *v21 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(v23 + 2 * v19 + (v29 & 0xFFFFFFFFFFFFFFC0) + 64);
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          LOWORD(v30) = 0;
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        if (v20 >= v22)
        {
          goto LABEL_90;
        }

        if ((*(v23 + (v20 >> 3)) >> (v20 & 7)))
        {
          v31 = *v21;
          v32 = __OFADD__(v31, 7);
          v33 = v31 + 7;
          if (v32)
          {
            goto LABEL_86;
          }

          if (!v24)
          {
            goto LABEL_32;
          }

          v34 = v33 / 8;
          v35 = v34 - 1;
          v27 = v34 < 1;
          v36 = v34 + 62;
          if (!v27)
          {
            v36 = v35;
          }

          v37 = *(v23 + 2 * v20 + (v36 & 0xFFFFFFFFFFFFFFC0) + 64);
          v38 = v37 < v30;
          if ((a8 & 1) == 0)
          {
            v38 = v30 < v37;
          }

          if (!v38)
          {
LABEL_32:
            v39 = v8;
            v40 = v11 == v8;
            v8 += 8;
            if (v40)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v11 = *v39;
            goto LABEL_34;
          }
        }

        else if (!v24)
        {
          goto LABEL_32;
        }

        v39 = v10;
        v40 = v11 == v10;
        v10 += 8;
        if (!v40)
        {
          goto LABEL_33;
        }

LABEL_34:
        v11 += 8;
      }

      while (v8 < v18 && v10 < v9);
    }

    v10 = v11;
    goto LABEL_80;
  }

  if (a4 != __dst || &__dst[8 * v17] <= a4)
  {
    memmove(a4, __dst, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
LABEL_80:
    if (v10 != v8 || v10 >= &v8[(v18 - v8 + (v18 - v8 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v10, v8, 8 * ((v18 - v8) / 8));
    }

    return 1;
  }

LABEL_46:
  v41 = v10 - 8;
  v42 = v18;
  while (1)
  {
    v66 = v9;
    v44 = *(v42 - 1);
    v42 -= 8;
    v43 = v44;
    if ((v44 & 0x8000000000000000) != 0)
    {
      break;
    }

    v45 = v41;
    v46 = *v41;
    swift_beginAccess();
    v47 = *(a7 + 16);
    if (!v47)
    {
      goto LABEL_89;
    }

    v48 = v47[1];
    if (v43 >= v48)
    {
      break;
    }

    v41 = v45;
    v49 = v47 + 8;
    v50 = *(v47 + (v43 >> 3) + 64) & (1 << (v43 & 7));
    if (v50)
    {
      v51 = *v47 + 7;
      if (__OFADD__(*v47, 7))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

      if (v51 < 0)
      {
        v51 = *v47 + 14;
      }

      v52 = v51 >> 3;
      v53 = v52 - 1;
      v27 = v52 < 1;
      v54 = v52 + 62;
      if (!v27)
      {
        v54 = v53;
      }

      v55 = *(v49 + 2 * v43 + (v54 & 0xFFFFFFFFFFFFFFC0) + 64);
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    else
    {
      LOWORD(v55) = 0;
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    if (v46 >= v48)
    {
      break;
    }

    if ((*(v49 + (v46 >> 3)) >> (v46 & 7)))
    {
      v56 = *v47;
      v32 = __OFADD__(v56, 7);
      v57 = v56 + 7;
      if (v32)
      {
        goto LABEL_87;
      }

      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        v59 = v57 / 8;
        v60 = v59 - 1;
        v27 = v59 < 1;
        v61 = v59 + 62;
        if (!v27)
        {
          v61 = v60;
        }

        v62 = *(v49 + 2 * v46 + (v61 & 0xFFFFFFFFFFFFFFC0) + 64);
        v63 = v62 < v55;
        if ((a8 & 1) == 0)
        {
          v63 = v55 < v62;
        }

        if (v63)
        {
LABEL_73:
          if (v58 != v10)
          {
            *v9 = *v45;
          }

          if (v18 <= v8 || (v10 = v45, v45 <= v11))
          {
            v10 = v45;
            goto LABEL_80;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        goto LABEL_73;
      }
    }

    if (v18 != v58)
    {
      *v9 = *v42;
    }

    v18 = v42;
    if (v42 <= v8)
    {
      v18 = v42;
      goto LABEL_80;
    }
  }

LABEL_90:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2BC900(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v146 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v137 = a6;
    v130 = a1;
    v140 = a7;
    while (1)
    {
      v16 = v14;
      v17 = v14 + 1;
      if (v14 + 1 < v13)
      {
        v18 = *a3;
        v19 = sub_21B2B6C88(*(*a3 + 8 * v17), *(*a3 + 8 * v14), a5, a6, a7, a8 & 1);
        if (v9)
        {
          goto LABEL_144;
        }

        v20 = v19;
        v17 = v16 + 2;
        if (v16 + 2 < v13)
        {
          v132 = v16;
          v21 = (v18 + 8 * v16 + 16);
          while (1)
          {
            v22 = *v21;
            if ((*v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }

            v23 = *(v21 - 1);
            swift_beginAccess();
            v24 = *(a7 + 16);
            if (!v24)
            {
              goto LABEL_175;
            }

            v25 = v24[1];
            if (v22 >= v25)
            {
              goto LABEL_179;
            }

            v26 = v24 + 8;
            v27 = *(v24 + (v22 >> 3) + 64) & (1 << (v22 & 7));
            if (v27)
            {
              v28 = *v24 + 7;
              if (__OFADD__(*v24, 7))
              {
                goto LABEL_164;
              }

              if (v28 < 0)
              {
                v28 = *v24 + 14;
              }

              v29 = v28 >> 3;
              v31 = v29 - 1;
              v30 = v29 < 1;
              v32 = v29 + 62;
              if (!v30)
              {
                v32 = v31;
              }

              v33 = *(v26 + 2 * v22 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              LOWORD(v33) = 0;
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            if (v23 >= v25)
            {
              goto LABEL_179;
            }

            if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
            {
              v34 = *v24;
              v90 = __OFADD__(v34, 7);
              v35 = v34 + 7;
              if (v90)
              {
                goto LABEL_165;
              }

              if (!v27)
              {
LABEL_9:
                if (v20)
                {
                  v16 = v132;
                  a1 = v130;
                  if (v17 < v132)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_40;
                }

                goto LABEL_10;
              }

              v36 = v35 / 8;
              v37 = v36 - 1;
              v30 = v36 < 1;
              v38 = v36 + 62;
              if (!v30)
              {
                v38 = v37;
              }

              v39 = *(v26 + 2 * v23 + (v38 & 0xFFFFFFFFFFFFFFC0) + 64);
              v40 = v39 < v33;
              if ((a8 & 1) == 0)
              {
                v40 = v33 < v39;
              }

              if ((v20 & 1) != v40)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (!v27)
              {
                goto LABEL_9;
              }

              if ((v20 & 1) == 0)
              {
                v16 = v132;
                a1 = v130;
                goto LABEL_47;
              }
            }

LABEL_10:
            ++v21;
            if (v13 == ++v17)
            {
              v17 = v13;
LABEL_37:
              v16 = v132;
              a1 = v130;
              break;
            }
          }
        }

        if (v20)
        {
          if (v17 < v16)
          {
            goto LABEL_169;
          }

LABEL_40:
          if (v16 < v17)
          {
            v41 = v17 - 1;
            v42 = v16;
            do
            {
              if (v42 != v41)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v44 = *(v43 + 8 * v42);
                *(v43 + 8 * v42) = *(v43 + 8 * v41);
                *(v43 + 8 * v41) = v44;
              }

              v30 = ++v42 < v41--;
            }

            while (v30);
          }
        }
      }

LABEL_47:
      v45 = a3[1];
      if (v17 < v45)
      {
        if (__OFSUB__(v17, v16))
        {
          goto LABEL_168;
        }

        if (v17 - v16 < a4)
        {
          if (__OFADD__(v16, a4))
          {
            goto LABEL_170;
          }

          if (v16 + a4 >= v45)
          {
            v46 = a3[1];
          }

          else
          {
            v46 = (v16 + a4);
          }

          if (v46 < v16)
          {
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_174:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_177:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_178:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_179:
            result = sub_21B34B824();
            __break(1u);
            return result;
          }

          if (v17 != v46)
          {
            v141 = v15;
            v143 = v9;
            v47 = *a3;
            v48 = v16;
            v49 = *a3 + 8 * v17 - 8;
            v133 = v48;
            v135 = v46;
            v50 = v48 - v17;
            do
            {
              v51 = v17;
              v52 = *(v47 + 8 * v17);
              v53 = v50;
              v54 = v49;
              do
              {
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_179;
                }

                v55 = *v54;
                swift_beginAccess();
                v56 = *(a7 + 16);
                if (!v56)
                {
                  goto LABEL_172;
                }

                v57 = v56[1];
                if (v52 >= v57)
                {
                  goto LABEL_179;
                }

                v58 = v56 + 8;
                v59 = *(v56 + (v52 >> 3) + 64) & (1 << (v52 & 7));
                if (v59)
                {
                  v60 = *v56 + 7;
                  if (__OFADD__(*v56, 7))
                  {
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
LABEL_170:
                    __break(1u);
                    goto LABEL_171;
                  }

                  if (v60 < 0)
                  {
                    v60 = *v56 + 14;
                  }

                  v61 = v60 >> 3;
                  v62 = v61 - 1;
                  v30 = v61 < 1;
                  v63 = v61 + 62;
                  if (!v30)
                  {
                    v63 = v62;
                  }

                  v64 = *(v58 + 2 * v52 + (v63 & 0xFFFFFFFFFFFFFFC0) + 64);
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                else
                {
                  LOWORD(v64) = 0;
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                if (v55 >= v57)
                {
                  goto LABEL_179;
                }

                if ((*(v58 + (v55 >> 3)) >> (v55 & 7)))
                {
                  v65 = *v56;
                  v90 = __OFADD__(v65, 7);
                  v66 = v65 + 7;
                  if (v90)
                  {
                    goto LABEL_149;
                  }

                  if (!v59)
                  {
                    break;
                  }

                  v67 = v66 / 8;
                  v68 = v67 - 1;
                  v30 = v67 < 1;
                  v69 = v67 + 62;
                  if (!v30)
                  {
                    v69 = v68;
                  }

                  v70 = *(v58 + 2 * v55 + (v69 & 0xFFFFFFFFFFFFFFC0) + 64);
                  v71 = v70 < v64;
                  if ((a8 & 1) == 0)
                  {
                    v71 = v64 < v70;
                  }

                  if (!v71)
                  {
                    break;
                  }
                }

                else if (!v59)
                {
                  break;
                }

                if (!v47)
                {
                  goto LABEL_173;
                }

                v72 = *v54;
                v52 = v54[1];
                *v54 = v52;
                v54[1] = v72;
                --v54;
              }

              while (!__CFADD__(v53++, 1));
              v17 = v51 + 1;
              v49 += 8;
              --v50;
            }

            while ((v51 + 1) != v135);
            v17 = v135;
            v15 = v141;
            v9 = v143;
            a1 = v130;
            v16 = v133;
          }
        }
      }

      if (v17 < v16)
      {
        goto LABEL_167;
      }

      v131 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21B2356AC(0, *(v15 + 2) + 1, 1, v15);
      }

      v75 = *(v15 + 2);
      v74 = *(v15 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v15 = sub_21B2356AC((v74 > 1), v75 + 1, 1, v15);
      }

      *(v15 + 2) = v76;
      v77 = v15 + 32;
      v78 = &v15[16 * v75 + 32];
      *v78 = v16;
      *(v78 + 1) = v17;
      v146 = v15;
      v136 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      if (v75)
      {
        v142 = v15;
        v144 = v9;
        v134 = v15 + 32;
        while (1)
        {
          v79 = v76 - 1;
          if (v76 >= 4)
          {
            break;
          }

          if (v76 == 3)
          {
            v80 = *(v15 + 4);
            v81 = *(v15 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_108:
            if (v83)
            {
              goto LABEL_156;
            }

            v96 = &v15[16 * v76];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_159;
            }

            v102 = &v77[16 * v79];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_163;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v79 = v76 - 2;
              }

              goto LABEL_129;
            }

            goto LABEL_122;
          }

          v106 = &v15[16 * v76];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_122:
          if (v101)
          {
            goto LABEL_158;
          }

          v109 = &v77[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_161;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_129:
          if (v79 - 1 >= v76)
          {
            goto LABEL_150;
          }

          v117 = *a3;
          if (!*a3)
          {
            goto LABEL_174;
          }

          v118 = &v77[16 * v79 - 16];
          v119 = *v118;
          v120 = v79;
          v121 = &v77[16 * v79];
          v122 = *(v121 + 1);
          v123 = (v117 + 8 * *v118);
          v124 = (v117 + 8 * *v121);
          v125 = (v117 + 8 * v122);

          sub_21B2BC43C(v123, v124, v125, v136, a5, v137, v140, a8 & 1);
          if (v144)
          {

            v146 = v142;
            goto LABEL_144;
          }

          if (v122 < v119)
          {
            goto LABEL_151;
          }

          v126 = *(v142 + 2);
          if (v120 > v126)
          {
            goto LABEL_152;
          }

          *v118 = v119;
          *(v118 + 1) = v122;
          if (v120 >= v126)
          {
            goto LABEL_153;
          }

          v76 = v126 - 1;
          memmove(v121, v121 + 16, 16 * (v126 - 1 - v120));
          a7 = v140;
          v15 = v142;
          *(v142 + 2) = v126 - 1;
          v77 = v134;
          if (v126 <= 2)
          {
LABEL_3:
            v146 = v15;
            v9 = v144;
            a1 = v130;
            goto LABEL_4;
          }
        }

        v84 = &v77[16 * v76];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_154;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_155;
        }

        v91 = &v15[16 * v76];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_157;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_160;
        }

        if (v95 >= v87)
        {
          v113 = &v77[16 * v79];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_166;
          }

          if (v82 < v116)
          {
            v79 = v76 - 2;
          }

          goto LABEL_129;
        }

        goto LABEL_108;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v131;
      a6 = v137;
      if (v131 >= v13)
      {
        goto LABEL_141;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_141:
  v127 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B2BEAF4(&v146, v127, a3, a5, a6, a7, a8 & 1, sub_21B2BC43C);
  if (v9)
  {

LABEL_144:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B2BD288(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v15 = v13;
    v38 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v16 = *v12;
      result = swift_beginAccess();
      v17 = *(a7 + 16);
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17[1];
      if (v14 >= v18)
      {
        break;
      }

      v19 = v17 + 8;
      v20 = *(v17 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v20)
      {
        v21 = *v17 + 7;
        if (__OFADD__(*v17, 7))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }

        if (v21 < 0)
        {
          v21 = *v17 + 14;
        }

        v22 = v21 >> 3;
        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = *(v19 + 2 * v14 + (v25 & 0xFFFFFFFFFFFFFFC0) + 64);
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v16 >= v18)
      {
        break;
      }

      if ((*(v19 + (v16 >> 3)) >> (v16 & 7)))
      {
        v27 = *v17;
        v28 = __OFADD__(v27, 7);
        v29 = v27 + 7;
        if (v28)
        {
          goto LABEL_34;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v30 = v29 / 8;
        v31 = v30 - 1;
        v23 = v30 < 1;
        v32 = v30 + 62;
        if (!v23)
        {
          v32 = v31;
        }

        v33 = *(v19 + 2 * v16 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
        v34 = v33 < v26;
        if ((a8 & 1) == 0)
        {
          v34 = v26 < v33;
        }

        if (!v34)
        {
          goto LABEL_4;
        }
      }

      else if (!v20)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      v35 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v35;
      --v12;
      if (__CFADD__(v15++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v38 + 1;
        --v13;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BD4B0(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), void (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v14 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_21B33EA0C(v14);
  }

  v15 = *(v14 + 2);
  v17[0] = v14 + 32;
  v17[1] = v15;

  sub_21B2C15A4(v17, a2, a3, a4, a5 & 1, a6, a7);

  *a1 = v14;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21B2BD5BC(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4;
  v9 = a3;
  v10 = __dst;
  v11 = __src;
  v12 = __dst - __src;
  v13 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v13 = __dst - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - __dst;
  v16 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v16 = a3 - __dst;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 >= 8 && v10 < v9)
    {
      do
      {
        v19 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v20 = *v8;
        swift_beginAccess();
        v21 = *(a7 + 16);
        if (!v21)
        {
          goto LABEL_88;
        }

        v22 = v21[1];
        if (v19 >= v22)
        {
          goto LABEL_90;
        }

        v23 = v21 + 8;
        v24 = *(v21 + (v19 >> 3) + 64) & (1 << (v19 & 7));
        if (v24)
        {
          v25 = *v21 + 7;
          if (__OFADD__(*v21, 7))
          {
            __break(1u);
            goto LABEL_85;
          }

          if (v25 < 0)
          {
            v25 = *v21 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(v23 + 4 * v19 + (v29 & 0xFFFFFFFFFFFFFFC0) + 64);
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v30 = 0.0;
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        if (v20 >= v22)
        {
          goto LABEL_90;
        }

        if ((*(v23 + (v20 >> 3)) >> (v20 & 7)))
        {
          v31 = *v21;
          v32 = __OFADD__(v31, 7);
          v33 = v31 + 7;
          if (v32)
          {
            goto LABEL_86;
          }

          if (!v24)
          {
            goto LABEL_32;
          }

          v34 = v33 / 8;
          v35 = v34 - 1;
          v27 = v34 < 1;
          v36 = v34 + 62;
          if (!v27)
          {
            v36 = v35;
          }

          v37 = *(v23 + 4 * v20 + (v36 & 0xFFFFFFFFFFFFFFC0) + 64);
          v38 = v37 < v30;
          if ((a8 & 1) == 0)
          {
            v38 = v30 < v37;
          }

          if (!v38)
          {
LABEL_32:
            v39 = v8;
            v40 = v11 == v8;
            v8 += 8;
            if (v40)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v11 = *v39;
            goto LABEL_34;
          }
        }

        else if (!v24)
        {
          goto LABEL_32;
        }

        v39 = v10;
        v40 = v11 == v10;
        v10 += 8;
        if (!v40)
        {
          goto LABEL_33;
        }

LABEL_34:
        v11 += 8;
      }

      while (v8 < v18 && v10 < v9);
    }

    v10 = v11;
    goto LABEL_80;
  }

  if (a4 != __dst || &__dst[8 * v17] <= a4)
  {
    memmove(a4, __dst, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
LABEL_80:
    if (v10 != v8 || v10 >= &v8[(v18 - v8 + (v18 - v8 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v10, v8, 8 * ((v18 - v8) / 8));
    }

    return 1;
  }

LABEL_46:
  v41 = v10 - 8;
  v42 = v18;
  while (1)
  {
    v66 = v9;
    v44 = *(v42 - 1);
    v42 -= 8;
    v43 = v44;
    if ((v44 & 0x8000000000000000) != 0)
    {
      break;
    }

    v45 = v41;
    v46 = *v41;
    swift_beginAccess();
    v47 = *(a7 + 16);
    if (!v47)
    {
      goto LABEL_89;
    }

    v48 = v47[1];
    if (v43 >= v48)
    {
      break;
    }

    v41 = v45;
    v49 = v47 + 8;
    v50 = *(v47 + (v43 >> 3) + 64) & (1 << (v43 & 7));
    if (v50)
    {
      v51 = *v47 + 7;
      if (__OFADD__(*v47, 7))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

      if (v51 < 0)
      {
        v51 = *v47 + 14;
      }

      v52 = v51 >> 3;
      v53 = v52 - 1;
      v27 = v52 < 1;
      v54 = v52 + 62;
      if (!v27)
      {
        v54 = v53;
      }

      v55 = *(v49 + 4 * v43 + (v54 & 0xFFFFFFFFFFFFFFC0) + 64);
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    else
    {
      v55 = 0.0;
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    if (v46 >= v48)
    {
      break;
    }

    if ((*(v49 + (v46 >> 3)) >> (v46 & 7)))
    {
      v56 = *v47;
      v32 = __OFADD__(v56, 7);
      v57 = v56 + 7;
      if (v32)
      {
        goto LABEL_87;
      }

      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        v59 = v57 / 8;
        v60 = v59 - 1;
        v27 = v59 < 1;
        v61 = v59 + 62;
        if (!v27)
        {
          v61 = v60;
        }

        v62 = *(v49 + 4 * v46 + (v61 & 0xFFFFFFFFFFFFFFC0) + 64);
        v63 = v62 < v55;
        if ((a8 & 1) == 0)
        {
          v63 = v55 < v62;
        }

        if (v63)
        {
LABEL_73:
          if (v58 != v10)
          {
            *v9 = *v45;
          }

          if (v18 <= v8 || (v10 = v45, v45 <= v11))
          {
            v10 = v45;
            goto LABEL_80;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        goto LABEL_73;
      }
    }

    if (v18 != v58)
    {
      *v9 = *v42;
    }

    v18 = v42;
    if (v42 <= v8)
    {
      v18 = v42;
      goto LABEL_80;
    }
  }

LABEL_90:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2BDA80(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v146 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v137 = a6;
    v130 = a1;
    v140 = a7;
    while (1)
    {
      v16 = v14;
      v17 = v14 + 1;
      if (v14 + 1 < v13)
      {
        v18 = *a3;
        v19 = sub_21B2B6B5C(*(*a3 + 8 * v17), *(*a3 + 8 * v14), a5, a6, a7, a8 & 1);
        if (v9)
        {
          goto LABEL_144;
        }

        v20 = v19;
        v17 = v16 + 2;
        if (v16 + 2 < v13)
        {
          v132 = v16;
          v21 = (v18 + 8 * v16 + 16);
          while (1)
          {
            v22 = *v21;
            if ((*v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }

            v23 = *(v21 - 1);
            swift_beginAccess();
            v24 = *(a7 + 16);
            if (!v24)
            {
              goto LABEL_175;
            }

            v25 = v24[1];
            if (v22 >= v25)
            {
              goto LABEL_179;
            }

            v26 = v24 + 8;
            v27 = *(v24 + (v22 >> 3) + 64) & (1 << (v22 & 7));
            if (v27)
            {
              v28 = *v24 + 7;
              if (__OFADD__(*v24, 7))
              {
                goto LABEL_164;
              }

              if (v28 < 0)
              {
                v28 = *v24 + 14;
              }

              v29 = v28 >> 3;
              v31 = v29 - 1;
              v30 = v29 < 1;
              v32 = v29 + 62;
              if (!v30)
              {
                v32 = v31;
              }

              v33 = *(v26 + 4 * v22 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              v33 = 0.0;
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            if (v23 >= v25)
            {
              goto LABEL_179;
            }

            if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
            {
              v34 = *v24;
              v90 = __OFADD__(v34, 7);
              v35 = v34 + 7;
              if (v90)
              {
                goto LABEL_165;
              }

              if (!v27)
              {
LABEL_9:
                if (v20)
                {
                  v16 = v132;
                  a1 = v130;
                  if (v17 < v132)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_40;
                }

                goto LABEL_10;
              }

              v36 = v35 / 8;
              v37 = v36 - 1;
              v30 = v36 < 1;
              v38 = v36 + 62;
              if (!v30)
              {
                v38 = v37;
              }

              v39 = *(v26 + 4 * v23 + (v38 & 0xFFFFFFFFFFFFFFC0) + 64);
              v40 = v39 < v33;
              if ((a8 & 1) == 0)
              {
                v40 = v33 < v39;
              }

              if ((v20 & 1) != v40)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (!v27)
              {
                goto LABEL_9;
              }

              if ((v20 & 1) == 0)
              {
                v16 = v132;
                a1 = v130;
                goto LABEL_47;
              }
            }

LABEL_10:
            ++v21;
            if (v13 == ++v17)
            {
              v17 = v13;
LABEL_37:
              v16 = v132;
              a1 = v130;
              break;
            }
          }
        }

        if (v20)
        {
          if (v17 < v16)
          {
            goto LABEL_169;
          }

LABEL_40:
          if (v16 < v17)
          {
            v41 = v17 - 1;
            v42 = v16;
            do
            {
              if (v42 != v41)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v44 = *(v43 + 8 * v42);
                *(v43 + 8 * v42) = *(v43 + 8 * v41);
                *(v43 + 8 * v41) = v44;
              }

              v30 = ++v42 < v41--;
            }

            while (v30);
          }
        }
      }

LABEL_47:
      v45 = a3[1];
      if (v17 < v45)
      {
        if (__OFSUB__(v17, v16))
        {
          goto LABEL_168;
        }

        if (v17 - v16 < a4)
        {
          if (__OFADD__(v16, a4))
          {
            goto LABEL_170;
          }

          if (v16 + a4 >= v45)
          {
            v46 = a3[1];
          }

          else
          {
            v46 = (v16 + a4);
          }

          if (v46 < v16)
          {
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_174:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_177:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_178:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_179:
            result = sub_21B34B824();
            __break(1u);
            return result;
          }

          if (v17 != v46)
          {
            v141 = v15;
            v143 = v9;
            v47 = *a3;
            v48 = v16;
            v49 = *a3 + 8 * v17 - 8;
            v133 = v48;
            v135 = v46;
            v50 = v48 - v17;
            do
            {
              v51 = v17;
              v52 = *(v47 + 8 * v17);
              v53 = v50;
              v54 = v49;
              do
              {
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_179;
                }

                v55 = *v54;
                swift_beginAccess();
                v56 = *(a7 + 16);
                if (!v56)
                {
                  goto LABEL_172;
                }

                v57 = v56[1];
                if (v52 >= v57)
                {
                  goto LABEL_179;
                }

                v58 = v56 + 8;
                v59 = *(v56 + (v52 >> 3) + 64) & (1 << (v52 & 7));
                if (v59)
                {
                  v60 = *v56 + 7;
                  if (__OFADD__(*v56, 7))
                  {
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
LABEL_170:
                    __break(1u);
                    goto LABEL_171;
                  }

                  if (v60 < 0)
                  {
                    v60 = *v56 + 14;
                  }

                  v61 = v60 >> 3;
                  v62 = v61 - 1;
                  v30 = v61 < 1;
                  v63 = v61 + 62;
                  if (!v30)
                  {
                    v63 = v62;
                  }

                  v64 = *(v58 + 4 * v52 + (v63 & 0xFFFFFFFFFFFFFFC0) + 64);
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                else
                {
                  v64 = 0.0;
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                if (v55 >= v57)
                {
                  goto LABEL_179;
                }

                if ((*(v58 + (v55 >> 3)) >> (v55 & 7)))
                {
                  v65 = *v56;
                  v90 = __OFADD__(v65, 7);
                  v66 = v65 + 7;
                  if (v90)
                  {
                    goto LABEL_149;
                  }

                  if (!v59)
                  {
                    break;
                  }

                  v67 = v66 / 8;
                  v68 = v67 - 1;
                  v30 = v67 < 1;
                  v69 = v67 + 62;
                  if (!v30)
                  {
                    v69 = v68;
                  }

                  v70 = *(v58 + 4 * v55 + (v69 & 0xFFFFFFFFFFFFFFC0) + 64);
                  v71 = v70 < v64;
                  if ((a8 & 1) == 0)
                  {
                    v71 = v64 < v70;
                  }

                  if (!v71)
                  {
                    break;
                  }
                }

                else if (!v59)
                {
                  break;
                }

                if (!v47)
                {
                  goto LABEL_173;
                }

                v72 = *v54;
                v52 = v54[1];
                *v54 = v52;
                v54[1] = v72;
                --v54;
              }

              while (!__CFADD__(v53++, 1));
              v17 = v51 + 1;
              v49 += 8;
              --v50;
            }

            while ((v51 + 1) != v135);
            v17 = v135;
            v15 = v141;
            v9 = v143;
            a1 = v130;
            v16 = v133;
          }
        }
      }

      if (v17 < v16)
      {
        goto LABEL_167;
      }

      v131 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21B2356AC(0, *(v15 + 2) + 1, 1, v15);
      }

      v75 = *(v15 + 2);
      v74 = *(v15 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v15 = sub_21B2356AC((v74 > 1), v75 + 1, 1, v15);
      }

      *(v15 + 2) = v76;
      v77 = v15 + 32;
      v78 = &v15[16 * v75 + 32];
      *v78 = v16;
      *(v78 + 1) = v17;
      v146 = v15;
      v136 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      if (v75)
      {
        v142 = v15;
        v144 = v9;
        v134 = v15 + 32;
        while (1)
        {
          v79 = v76 - 1;
          if (v76 >= 4)
          {
            break;
          }

          if (v76 == 3)
          {
            v80 = *(v15 + 4);
            v81 = *(v15 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_108:
            if (v83)
            {
              goto LABEL_156;
            }

            v96 = &v15[16 * v76];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_159;
            }

            v102 = &v77[16 * v79];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_163;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v79 = v76 - 2;
              }

              goto LABEL_129;
            }

            goto LABEL_122;
          }

          v106 = &v15[16 * v76];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_122:
          if (v101)
          {
            goto LABEL_158;
          }

          v109 = &v77[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_161;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_129:
          if (v79 - 1 >= v76)
          {
            goto LABEL_150;
          }

          v117 = *a3;
          if (!*a3)
          {
            goto LABEL_174;
          }

          v118 = &v77[16 * v79 - 16];
          v119 = *v118;
          v120 = v79;
          v121 = &v77[16 * v79];
          v122 = *(v121 + 1);
          v123 = (v117 + 8 * *v118);
          v124 = (v117 + 8 * *v121);
          v125 = (v117 + 8 * v122);

          sub_21B2BD5BC(v123, v124, v125, v136, a5, v137, v140, a8 & 1);
          if (v144)
          {

            v146 = v142;
            goto LABEL_144;
          }

          if (v122 < v119)
          {
            goto LABEL_151;
          }

          v126 = *(v142 + 2);
          if (v120 > v126)
          {
            goto LABEL_152;
          }

          *v118 = v119;
          *(v118 + 1) = v122;
          if (v120 >= v126)
          {
            goto LABEL_153;
          }

          v76 = v126 - 1;
          memmove(v121, v121 + 16, 16 * (v126 - 1 - v120));
          a7 = v140;
          v15 = v142;
          *(v142 + 2) = v126 - 1;
          v77 = v134;
          if (v126 <= 2)
          {
LABEL_3:
            v146 = v15;
            v9 = v144;
            a1 = v130;
            goto LABEL_4;
          }
        }

        v84 = &v77[16 * v76];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_154;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_155;
        }

        v91 = &v15[16 * v76];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_157;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_160;
        }

        if (v95 >= v87)
        {
          v113 = &v77[16 * v79];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_166;
          }

          if (v82 < v116)
          {
            v79 = v76 - 2;
          }

          goto LABEL_129;
        }

        goto LABEL_108;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v131;
      a6 = v137;
      if (v131 >= v13)
      {
        goto LABEL_141;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_141:
  v127 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B2BEAF4(&v146, v127, a3, a5, a6, a7, a8 & 1, sub_21B2BD5BC);
  if (v9)
  {

LABEL_144:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B2BE408(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v15 = v13;
    v38 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v16 = *v12;
      result = swift_beginAccess();
      v17 = *(a7 + 16);
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17[1];
      if (v14 >= v18)
      {
        break;
      }

      v19 = v17 + 8;
      v20 = *(v17 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v20)
      {
        v21 = *v17 + 7;
        if (__OFADD__(*v17, 7))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }

        if (v21 < 0)
        {
          v21 = *v17 + 14;
        }

        v22 = v21 >> 3;
        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = *(v19 + 4 * v14 + (v25 & 0xFFFFFFFFFFFFFFC0) + 64);
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v26 = 0.0;
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v16 >= v18)
      {
        break;
      }

      if ((*(v19 + (v16 >> 3)) >> (v16 & 7)))
      {
        v27 = *v17;
        v28 = __OFADD__(v27, 7);
        v29 = v27 + 7;
        if (v28)
        {
          goto LABEL_34;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v30 = v29 / 8;
        v31 = v30 - 1;
        v23 = v30 < 1;
        v32 = v30 + 62;
        if (!v23)
        {
          v32 = v31;
        }

        v33 = *(v19 + 4 * v16 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
        v34 = v33 < v26;
        if ((a8 & 1) == 0)
        {
          v34 = v26 < v33;
        }

        if (!v34)
        {
          goto LABEL_4;
        }
      }

      else if (!v20)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      v35 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v35;
      --v12;
      if (__CFADD__(v15++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v38 + 1;
        --v13;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BE630(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4;
  v9 = a3;
  v10 = __dst;
  v11 = __src;
  v12 = __dst - __src;
  v13 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v13 = __dst - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - __dst;
  v16 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v16 = a3 - __dst;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 >= 8 && v10 < v9)
    {
      do
      {
        v19 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v20 = *v8;
        swift_beginAccess();
        v21 = *(a7 + 16);
        if (!v21)
        {
          goto LABEL_88;
        }

        v22 = v21[1];
        if (v19 >= v22)
        {
          goto LABEL_90;
        }

        v23 = v21 + 8;
        v24 = *(v21 + (v19 >> 3) + 64) & (1 << (v19 & 7));
        if (v24)
        {
          v25 = *v21 + 7;
          if (__OFADD__(*v21, 7))
          {
            __break(1u);
            goto LABEL_85;
          }

          if (v25 < 0)
          {
            v25 = *v21 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(&v23[v19 + 8] + (v29 & 0xFFFFFFFFFFFFFFC0));
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v30 = 0.0;
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        if (v20 >= v22)
        {
          goto LABEL_90;
        }

        if ((*(v23 + (v20 >> 3)) >> (v20 & 7)))
        {
          v31 = *v21;
          v32 = __OFADD__(v31, 7);
          v33 = v31 + 7;
          if (v32)
          {
            goto LABEL_86;
          }

          if (!v24)
          {
            goto LABEL_32;
          }

          v34 = v33 / 8;
          v35 = v34 - 1;
          v27 = v34 < 1;
          v36 = v34 + 62;
          if (!v27)
          {
            v36 = v35;
          }

          v37 = *(&v23[v20 + 8] + (v36 & 0xFFFFFFFFFFFFFFC0));
          v38 = v37 < v30;
          if ((a8 & 1) == 0)
          {
            v38 = v30 < v37;
          }

          if (!v38)
          {
LABEL_32:
            v39 = v8;
            v40 = v11 == v8;
            v8 += 8;
            if (v40)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v11 = *v39;
            goto LABEL_34;
          }
        }

        else if (!v24)
        {
          goto LABEL_32;
        }

        v39 = v10;
        v40 = v11 == v10;
        v10 += 8;
        if (!v40)
        {
          goto LABEL_33;
        }

LABEL_34:
        v11 += 8;
      }

      while (v8 < v18 && v10 < v9);
    }

    v10 = v11;
    goto LABEL_80;
  }

  if (a4 != __dst || &__dst[8 * v17] <= a4)
  {
    memmove(a4, __dst, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
LABEL_80:
    if (v10 != v8 || v10 >= &v8[(v18 - v8 + (v18 - v8 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v10, v8, 8 * ((v18 - v8) / 8));
    }

    return 1;
  }

LABEL_46:
  v41 = v10 - 8;
  v42 = v18;
  while (1)
  {
    v66 = v9;
    v44 = *(v42 - 1);
    v42 -= 8;
    v43 = v44;
    if ((v44 & 0x8000000000000000) != 0)
    {
      break;
    }

    v45 = v41;
    v46 = *v41;
    swift_beginAccess();
    v47 = *(a7 + 16);
    if (!v47)
    {
      goto LABEL_89;
    }

    v48 = v47[1];
    if (v43 >= v48)
    {
      break;
    }

    v41 = v45;
    v49 = v47 + 8;
    v50 = *(v47 + (v43 >> 3) + 64) & (1 << (v43 & 7));
    if (v50)
    {
      v51 = *v47 + 7;
      if (__OFADD__(*v47, 7))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

      if (v51 < 0)
      {
        v51 = *v47 + 14;
      }

      v52 = v51 >> 3;
      v53 = v52 - 1;
      v27 = v52 < 1;
      v54 = v52 + 62;
      if (!v27)
      {
        v54 = v53;
      }

      v55 = *(&v49[v43 + 8] + (v54 & 0xFFFFFFFFFFFFFFC0));
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    else
    {
      v55 = 0.0;
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    if (v46 >= v48)
    {
      break;
    }

    if ((*(v49 + (v46 >> 3)) >> (v46 & 7)))
    {
      v56 = *v47;
      v32 = __OFADD__(v56, 7);
      v57 = v56 + 7;
      if (v32)
      {
        goto LABEL_87;
      }

      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        v59 = v57 / 8;
        v60 = v59 - 1;
        v27 = v59 < 1;
        v61 = v59 + 62;
        if (!v27)
        {
          v61 = v60;
        }

        v62 = *(&v49[v46 + 8] + (v61 & 0xFFFFFFFFFFFFFFC0));
        v63 = v62 < v55;
        if ((a8 & 1) == 0)
        {
          v63 = v55 < v62;
        }

        if (v63)
        {
LABEL_73:
          if (v58 != v10)
          {
            *v9 = *v45;
          }

          if (v18 <= v8 || (v10 = v45, v45 <= v11))
          {
            v10 = v45;
            goto LABEL_80;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        goto LABEL_73;
      }
    }

    if (v18 != v58)
    {
      *v9 = *v42;
    }

    v18 = v42;
    if (v42 <= v8)
    {
      v18 = v42;
      goto LABEL_80;
    }
  }

LABEL_90:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2BEAF4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v9 = v8;
  v11 = a1;
  v12 = *a1;

  v30 = a6;

  v32 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v32 = sub_21B23A330(v32);
  }

  v24 = v11;
  *v11 = v32;
  v13 = (v32 + 16);
  v14 = *(v32 + 2);
  if (v14 < 2)
  {
LABEL_9:

    *v24 = v32;
    return 1;
  }

  else
  {
    while (1)
    {
      v15 = *a3;
      if (!*a3)
      {
        break;
      }

      v16 = v9;
      v17 = &v32[16 * v14];
      v11 = *v17;
      v18 = &v13[2 * v14];
      v19 = v18[1];
      v34 = v15 + 8 * *v17;
      v33 = v15 + 8 * *v18;
      v20 = v15 + 8 * v19;

      a8(v34, v33, v20, a2, a4, a5, v30, a7 & 1);
      v9 = v16;

      if (v16)
      {
        *v24 = v32;

        return 1;
      }

      if (v19 < v11)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v21 = *v13;
      if (v14 - 2 >= *v13)
      {
        goto LABEL_13;
      }

      *v17 = v11;
      *(v17 + 1) = v19;
      v22 = v21 - v14;
      if (v21 < v14)
      {
        goto LABEL_14;
      }

      v14 = v21 - 1;
      memmove(v18, v18 + 2, 16 * v22);
      *v13 = v14;
      if (v14 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v24 = v32;
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BECFC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v146 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v137 = a6;
    v130 = a1;
    v140 = a7;
    while (1)
    {
      v16 = v14;
      v17 = v14 + 1;
      if (v14 + 1 < v13)
      {
        v18 = *a3;
        v19 = sub_21B2B6A20(*(*a3 + 8 * v17), *(*a3 + 8 * v14), a5, a6, a7, a8 & 1);
        if (v9)
        {
          goto LABEL_144;
        }

        v20 = v19;
        v17 = v16 + 2;
        if (v16 + 2 < v13)
        {
          v132 = v16;
          v21 = (v18 + 8 * v16 + 16);
          while (1)
          {
            v22 = *v21;
            if ((*v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }

            v23 = *(v21 - 1);
            swift_beginAccess();
            v24 = *(a7 + 16);
            if (!v24)
            {
              goto LABEL_175;
            }

            v25 = v24[1];
            if (v22 >= v25)
            {
              goto LABEL_179;
            }

            v26 = v24 + 8;
            v27 = *(v24 + (v22 >> 3) + 64) & (1 << (v22 & 7));
            if (v27)
            {
              v28 = *v24 + 7;
              if (__OFADD__(*v24, 7))
              {
                goto LABEL_164;
              }

              if (v28 < 0)
              {
                v28 = *v24 + 14;
              }

              v29 = v28 >> 3;
              v31 = v29 - 1;
              v30 = v29 < 1;
              v32 = v29 + 62;
              if (!v30)
              {
                v32 = v31;
              }

              v33 = *(&v26[v22 + 8] + (v32 & 0xFFFFFFFFFFFFFFC0));
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              v33 = 0.0;
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            if (v23 >= v25)
            {
              goto LABEL_179;
            }

            if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
            {
              v34 = *v24;
              v90 = __OFADD__(v34, 7);
              v35 = v34 + 7;
              if (v90)
              {
                goto LABEL_165;
              }

              if (!v27)
              {
LABEL_9:
                if (v20)
                {
                  v16 = v132;
                  a1 = v130;
                  if (v17 < v132)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_40;
                }

                goto LABEL_10;
              }

              v36 = v35 / 8;
              v37 = v36 - 1;
              v30 = v36 < 1;
              v38 = v36 + 62;
              if (!v30)
              {
                v38 = v37;
              }

              v39 = *(&v26[v23 + 8] + (v38 & 0xFFFFFFFFFFFFFFC0));
              v40 = v39 < v33;
              if ((a8 & 1) == 0)
              {
                v40 = v33 < v39;
              }

              if ((v20 & 1) != v40)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (!v27)
              {
                goto LABEL_9;
              }

              if ((v20 & 1) == 0)
              {
                v16 = v132;
                a1 = v130;
                goto LABEL_47;
              }
            }

LABEL_10:
            ++v21;
            if (v13 == ++v17)
            {
              v17 = v13;
LABEL_37:
              v16 = v132;
              a1 = v130;
              break;
            }
          }
        }

        if (v20)
        {
          if (v17 < v16)
          {
            goto LABEL_169;
          }

LABEL_40:
          if (v16 < v17)
          {
            v41 = v17 - 1;
            v42 = v16;
            do
            {
              if (v42 != v41)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v44 = *(v43 + 8 * v42);
                *(v43 + 8 * v42) = *(v43 + 8 * v41);
                *(v43 + 8 * v41) = v44;
              }

              v30 = ++v42 < v41--;
            }

            while (v30);
          }
        }
      }

LABEL_47:
      v45 = a3[1];
      if (v17 < v45)
      {
        if (__OFSUB__(v17, v16))
        {
          goto LABEL_168;
        }

        if (v17 - v16 < a4)
        {
          if (__OFADD__(v16, a4))
          {
            goto LABEL_170;
          }

          if (v16 + a4 >= v45)
          {
            v46 = a3[1];
          }

          else
          {
            v46 = (v16 + a4);
          }

          if (v46 < v16)
          {
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_174:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_177:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_178:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_179:
            result = sub_21B34B824();
            __break(1u);
            return result;
          }

          if (v17 != v46)
          {
            v141 = v15;
            v143 = v9;
            v47 = *a3;
            v48 = v16;
            v49 = *a3 + 8 * v17 - 8;
            v133 = v48;
            v135 = v46;
            v50 = v48 - v17;
            do
            {
              v51 = v17;
              v52 = *(v47 + 8 * v17);
              v53 = v50;
              v54 = v49;
              do
              {
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_179;
                }

                v55 = *v54;
                swift_beginAccess();
                v56 = *(a7 + 16);
                if (!v56)
                {
                  goto LABEL_172;
                }

                v57 = v56[1];
                if (v52 >= v57)
                {
                  goto LABEL_179;
                }

                v58 = v56 + 8;
                v59 = *(v56 + (v52 >> 3) + 64) & (1 << (v52 & 7));
                if (v59)
                {
                  v60 = *v56 + 7;
                  if (__OFADD__(*v56, 7))
                  {
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
LABEL_170:
                    __break(1u);
                    goto LABEL_171;
                  }

                  if (v60 < 0)
                  {
                    v60 = *v56 + 14;
                  }

                  v61 = v60 >> 3;
                  v62 = v61 - 1;
                  v30 = v61 < 1;
                  v63 = v61 + 62;
                  if (!v30)
                  {
                    v63 = v62;
                  }

                  v64 = *(&v58[v52 + 8] + (v63 & 0xFFFFFFFFFFFFFFC0));
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                else
                {
                  v64 = 0.0;
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                if (v55 >= v57)
                {
                  goto LABEL_179;
                }

                if ((*(v58 + (v55 >> 3)) >> (v55 & 7)))
                {
                  v65 = *v56;
                  v90 = __OFADD__(v65, 7);
                  v66 = v65 + 7;
                  if (v90)
                  {
                    goto LABEL_149;
                  }

                  if (!v59)
                  {
                    break;
                  }

                  v67 = v66 / 8;
                  v68 = v67 - 1;
                  v30 = v67 < 1;
                  v69 = v67 + 62;
                  if (!v30)
                  {
                    v69 = v68;
                  }

                  v70 = *(&v58[v55 + 8] + (v69 & 0xFFFFFFFFFFFFFFC0));
                  v71 = v70 < v64;
                  if ((a8 & 1) == 0)
                  {
                    v71 = v64 < v70;
                  }

                  if (!v71)
                  {
                    break;
                  }
                }

                else if (!v59)
                {
                  break;
                }

                if (!v47)
                {
                  goto LABEL_173;
                }

                v72 = *v54;
                v52 = v54[1];
                *v54 = v52;
                v54[1] = v72;
                --v54;
              }

              while (!__CFADD__(v53++, 1));
              v17 = v51 + 1;
              v49 += 8;
              --v50;
            }

            while ((v51 + 1) != v135);
            v17 = v135;
            v15 = v141;
            v9 = v143;
            a1 = v130;
            v16 = v133;
          }
        }
      }

      if (v17 < v16)
      {
        goto LABEL_167;
      }

      v131 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21B2356AC(0, *(v15 + 2) + 1, 1, v15);
      }

      v75 = *(v15 + 2);
      v74 = *(v15 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v15 = sub_21B2356AC((v74 > 1), v75 + 1, 1, v15);
      }

      *(v15 + 2) = v76;
      v77 = v15 + 32;
      v78 = &v15[16 * v75 + 32];
      *v78 = v16;
      *(v78 + 1) = v17;
      v146 = v15;
      v136 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      if (v75)
      {
        v142 = v15;
        v144 = v9;
        v134 = v15 + 32;
        while (1)
        {
          v79 = v76 - 1;
          if (v76 >= 4)
          {
            break;
          }

          if (v76 == 3)
          {
            v80 = *(v15 + 4);
            v81 = *(v15 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_108:
            if (v83)
            {
              goto LABEL_156;
            }

            v96 = &v15[16 * v76];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_159;
            }

            v102 = &v77[16 * v79];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_163;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v79 = v76 - 2;
              }

              goto LABEL_129;
            }

            goto LABEL_122;
          }

          v106 = &v15[16 * v76];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_122:
          if (v101)
          {
            goto LABEL_158;
          }

          v109 = &v77[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_161;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_129:
          if (v79 - 1 >= v76)
          {
            goto LABEL_150;
          }

          v117 = *a3;
          if (!*a3)
          {
            goto LABEL_174;
          }

          v118 = &v77[16 * v79 - 16];
          v119 = *v118;
          v120 = v79;
          v121 = &v77[16 * v79];
          v122 = *(v121 + 1);
          v123 = (v117 + 8 * *v118);
          v124 = (v117 + 8 * *v121);
          v125 = (v117 + 8 * v122);

          sub_21B2BE630(v123, v124, v125, v136, a5, v137, v140, a8 & 1);
          if (v144)
          {

            v146 = v142;
            goto LABEL_144;
          }

          if (v122 < v119)
          {
            goto LABEL_151;
          }

          v126 = *(v142 + 2);
          if (v120 > v126)
          {
            goto LABEL_152;
          }

          *v118 = v119;
          *(v118 + 1) = v122;
          if (v120 >= v126)
          {
            goto LABEL_153;
          }

          v76 = v126 - 1;
          memmove(v121, v121 + 16, 16 * (v126 - 1 - v120));
          a7 = v140;
          v15 = v142;
          *(v142 + 2) = v126 - 1;
          v77 = v134;
          if (v126 <= 2)
          {
LABEL_3:
            v146 = v15;
            v9 = v144;
            a1 = v130;
            goto LABEL_4;
          }
        }

        v84 = &v77[16 * v76];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_154;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_155;
        }

        v91 = &v15[16 * v76];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_157;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_160;
        }

        if (v95 >= v87)
        {
          v113 = &v77[16 * v79];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_166;
          }

          if (v82 < v116)
          {
            v79 = v76 - 2;
          }

          goto LABEL_129;
        }

        goto LABEL_108;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v131;
      a6 = v137;
      if (v131 >= v13)
      {
        goto LABEL_141;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_141:
  v127 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B2BEAF4(&v146, v127, a3, a5, a6, a7, a8 & 1, sub_21B2BE630);
  if (v9)
  {

LABEL_144:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B2BF684(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v15 = v13;
    v38 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v16 = *v12;
      result = swift_beginAccess();
      v17 = *(a7 + 16);
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17[1];
      if (v14 >= v18)
      {
        break;
      }

      v19 = v17 + 8;
      v20 = *(v17 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v20)
      {
        v21 = *v17 + 7;
        if (__OFADD__(*v17, 7))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }

        if (v21 < 0)
        {
          v21 = *v17 + 14;
        }

        v22 = v21 >> 3;
        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = *(&v19[v14 + 8] + (v25 & 0xFFFFFFFFFFFFFFC0));
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v26 = 0.0;
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v16 >= v18)
      {
        break;
      }

      if ((*(v19 + (v16 >> 3)) >> (v16 & 7)))
      {
        v27 = *v17;
        v28 = __OFADD__(v27, 7);
        v29 = v27 + 7;
        if (v28)
        {
          goto LABEL_34;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v30 = v29 / 8;
        v31 = v30 - 1;
        v23 = v30 < 1;
        v32 = v30 + 62;
        if (!v23)
        {
          v32 = v31;
        }

        v33 = *(&v19[v16 + 8] + (v32 & 0xFFFFFFFFFFFFFFC0));
        v34 = v33 < v26;
        if ((a8 & 1) == 0)
        {
          v34 = v26 < v33;
        }

        if (!v34)
        {
          goto LABEL_4;
        }
      }

      else if (!v20)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      v35 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v35;
      --v12;
      if (__CFADD__(v15++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v38 + 1;
        --v13;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BF8AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v9 = *a4;
    v10 = (*a4 + 8 * a3 - 8);
    v11 = result - a3;
LABEL_7:
    v39 = v10;
    v40 = a3;
    v12 = *(v9 + 8 * a3);
    v38 = v11;
    while (1)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
LABEL_52:
        result = sub_21B34B824();
        __break(1u);
        return result;
      }

      v13 = *v10;
      result = swift_beginAccess();
      v14 = *(a7 + 16);
      if (!v14)
      {
        goto LABEL_50;
      }

      v15 = v14[1];
      if (v12 >= v15)
      {
        goto LABEL_52;
      }

      v16 = v14 + 8;
      if ((*(v14 + (v12 >> 3) + 64) >> (v12 & 7)))
      {
        v17 = *v14 + 7;
        if (__OFADD__(*v14, 7))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v17 < 0)
        {
          v17 = *v14 + 14;
        }

        v18 = v17 >> 3;
        v20 = v18 - 1;
        v19 = v18 < 1;
        v21 = v18 + 62;
        if (!v19)
        {
          v21 = v20;
        }

        v22 = &v16[2 * v12] + (v21 & 0xFFFFFFFFFFFFFFC0);
        v23 = *(v22 + 64);
        v24 = *(v22 + 72);

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v23 = 0;
        v24 = 0;
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }
      }

      if (v13 >= v15)
      {
        goto LABEL_52;
      }

      if (((*(v16 + (v13 >> 3)) >> (v13 & 7)) & 1) == 0)
      {
        break;
      }

      v25 = *v14 + 7;
      if (__OFADD__(*v14, 7))
      {
        goto LABEL_49;
      }

      if (v25 < 0)
      {
        v25 = *v14 + 14;
      }

      v26 = v25 >> 3;
      v27 = v26 - 1;
      v19 = v26 < 1;
      v28 = v26 + 62;
      if (!v19)
      {
        v28 = v27;
      }

      v29 = &v16[2 * v13] + (v28 & 0xFFFFFFFFFFFFFFC0);
      v31 = *(v29 + 64);
      v30 = *(v29 + 72);

      if (!v24)
      {
        if (!v30)
        {
LABEL_6:
          a3 = v40 + 1;
          v10 = v39 + 1;
          v11 = v38 - 1;
          if (v40 + 1 == a2)
          {
            return result;
          }

          goto LABEL_7;
        }

LABEL_5:

        goto LABEL_6;
      }

      if (!v30)
      {
        goto LABEL_36;
      }

      if (a8)
      {
        if (v31 == v23 && v24 == v30)
        {
          goto LABEL_4;
        }
      }

      else if (v23 == v31 && v24 == v30)
      {
LABEL_4:

        goto LABEL_5;
      }

      v34 = sub_21B34B9F4();

      if ((v34 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_42:
      if (!v9)
      {
        goto LABEL_51;
      }

      v35 = *v10;
      v12 = v10[1];
      *v10 = v12;
      v10[1] = v35;
      --v10;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_6;
      }
    }

    if (!v24)
    {
      goto LABEL_6;
    }

LABEL_36:

    goto LABEL_42;
  }

  return result;
}

uint64_t sub_21B2BFB48(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v203 = a8;
  v195 = a5;
  v187 = a1;
  v211 = sub_21B34A834();
  v12 = *(v211 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v211);
  v205 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v204 = &v184 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v186 = &v184 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v184 - v20;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  v22 = *(*(v209 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v209);
  v206 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v189 = &v184 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v184 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v216 = &v184 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v192 = &v184 - v34;
  MEMORY[0x28223BE20](v33);
  v197 = a3;
  v36 = a3[1];
  v196 = a6;
  v212 = a7;
  if (v36 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v38 = MEMORY[0x277D84F90];
LABEL_158:
    v216 = *v187;
    if (!v216)
    {
      goto LABEL_203;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v199;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_160;
  }

  v194 = &v184 - v35;
  v213 = v12 + 16;
  v215 = (v12 + 56);
  v208 = (v12 + 48);
  v201 = (v12 + 32);
  v200 = (v12 + 8);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v193 = a4;
  v214 = v12;
  v185 = v21;
  v210 = v30;
  while (1)
  {
    v39 = v37;
    if (v37 + 1 >= v36)
    {
      v198 = v37 + 1;
      goto LABEL_57;
    }

    v202 = v38;
    v40 = *v197;
    v41 = v199;
    LODWORD(v191) = sub_21B2B65D4(*&(*v197)[8 * v37 + 8], *&(*v197)[8 * v37], v195, v196, a7, v203 & 1);
    if (v41)
    {
LABEL_156:

      swift_bridgeObjectRelease_n();
    }

    v199 = 0;
    v42 = v37 + 2;
    if (v37 + 2 >= v36)
    {
      v38 = v202;
    }

    else
    {
      v198 = v37 + 2;
      v184 = v37;
      v43 = &v40[8 * v37 + 16];
      v190 = v36;
      do
      {
        v44 = *v43;
        if ((*v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_204;
        }

        v38 = *(v43 - 1);
        swift_beginAccess();
        v45 = *(a7 + 16);
        if (!v45)
        {
          goto LABEL_199;
        }

        if (v44 >= v45[1])
        {
          goto LABEL_204;
        }

        v46 = v45 + 8;
        if ((*(v45 + (v44 >> 3) + 64) >> (v44 & 7)))
        {
          v47 = *v45 + 7;
          if (__OFADD__(*v45, 7))
          {
            goto LABEL_185;
          }

          if (v47 < 0)
          {
            v47 = *v45 + 14;
          }

          v48 = v47 >> 3;
          v50 = v48 - 1;
          v49 = v48 < 1;
          v51 = v48 + 62;
          if (!v49)
          {
            v51 = v50;
          }

          v36 = v194;
          v52 = v211;
          (*(v214 + 16))(v194, v46 + (v51 & 0xFFFFFFFFFFFFFFC0) + *(v214 + 72) * v44 + 64, v211);
          v53 = 0;
        }

        else
        {
          v53 = 1;
          v36 = v194;
          v52 = v211;
        }

        v54 = *v215;
        (*v215)(v36, v53, 1, v52);
        if (v38 < 0 || v38 >= v45[1])
        {
          goto LABEL_204;
        }

        v55 = *(v46 + (v38 >> 3)) >> (v38 & 7);
        v207 = v43;
        if (v55)
        {
          v56 = *v45 + 7;
          if (__OFADD__(*v45, 7))
          {
            goto LABEL_186;
          }

          if (v56 < 0)
          {
            v56 = *v45 + 14;
          }

          v57 = v56 >> 3;
          v58 = v57 - 1;
          v49 = v57 < 1;
          v59 = v57 + 62;
          if (!v49)
          {
            v59 = v58;
          }

          v60 = v46 + (v59 & 0xFFFFFFFFFFFFFFC0) + *(v214 + 72) * v38 + 64;
          v61 = v192;
          v62 = v211;
          (*(v214 + 16))(v192, v60, v211);
          v63 = 0;
        }

        else
        {
          v63 = 1;
          v61 = v192;
          v62 = v211;
        }

        v54(v61, v63, 1, v62);
        v64 = *(v209 + 48);
        v65 = v194;
        v66 = v61;
        v67 = v189;
        sub_21B2C1778(v194, v189);
        sub_21B2C1778(v61, v67 + v64);
        v68 = *v208;
        if ((*v208)(v67, 1, v62) == 1)
        {
          sub_21B261664(v66, &qword_27CD7E100, &unk_21B352A30);
          sub_21B261664(v65, &qword_27CD7E100, &unk_21B352A30);
          if (v68(v67 + v64, 1, v62) != 1)
          {
            sub_21B261664(v67 + v64, &qword_27CD7E100, &unk_21B352A30);
          }

          v36 = v190;
          if (v191)
          {
            v38 = v202;
            a4 = v193;
            v42 = v198;
            v39 = v184;
LABEL_49:
            if (v42 >= v39)
            {
              v198 = v42;
              if (v39 < v42)
              {
                v79 = v42 - 1;
                v80 = v39;
                do
                {
                  if (v80 != v79)
                  {
                    v81 = *v197;
                    if (!*v197)
                    {
                      goto LABEL_200;
                    }

                    v82 = *&v81[8 * v80];
                    *&v81[8 * v80] = *&v81[8 * v79];
                    *&v81[8 * v79] = v82;
                  }

                  v49 = ++v80 < v79--;
                }

                while (v49);
              }

              goto LABEL_57;
            }

LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            v38 = sub_21B23A330(v38);
LABEL_160:
            v199 = v36;
            v217 = v38;
            v173 = *(v38 + 16);
            if (v173 >= 2)
            {
              v36 = v196;
              do
              {
                v174 = *v197;
                if (!*v197)
                {
                  goto LABEL_201;
                }

                v175 = *(v38 + 16 * v173);
                v176 = v38;
                v177 = *(v38 + 16 * (v173 - 1) + 40);
                v178 = &v174[8 * v175];
                v179 = &v174[8 * *(v38 + 16 * (v173 - 1) + 32)];
                v180 = &v174[8 * v177];

                v38 = v212;

                v181 = v178;
                v182 = v199;
                sub_21B2324A8(v181, v179, v180, v216, v195, v36, v38, v203 & 1, sub_21B2B65D4);
                v199 = v182;
                if (v182)
                {
                  break;
                }

                if (v177 < v175)
                {
                  goto LABEL_188;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v176 = sub_21B23A330(v176);
                }

                if (v173 - 2 >= *(v176 + 2))
                {
                  goto LABEL_189;
                }

                v183 = &v176[16 * v173];
                *v183 = v175;
                *(v183 + 1) = v177;
                v217 = v176;
                sub_21B2327F4(v173 - 1);
                v38 = v217;
                v173 = *(v217 + 2);
              }

              while (v173 > 1);
            }

            return swift_bridgeObjectRelease_n();
          }
        }

        else
        {
          v69 = v68(v67 + v64, 1, v62);
          v36 = v190;
          if (v69 == 1)
          {
            sub_21B261664(v192, &qword_27CD7E100, &unk_21B352A30);
            sub_21B261664(v194, &qword_27CD7E100, &unk_21B352A30);
            sub_21B261664(v67, &qword_27CD7E100, &unk_21B352A30);
            if ((v191 & 1) == 0)
            {
              v38 = v202;
              a4 = v193;
              v39 = v184;
              goto LABEL_57;
            }
          }

          else
          {
            v70 = *v201;
            v71 = v185;
            (*v201)(v185, v67, v62);
            v72 = v67 + v64;
            v73 = v186;
            v70(v186, v72, v62);
            sub_21B2B5BB8();
            if (v203)
            {
              v74 = sub_21B34AB84();
            }

            else
            {
              v74 = sub_21B34AB94();
            }

            v75 = v73;
            v76 = v74;
            v77 = v192;
            v78 = *v200;
            (*v200)(v75, v62);
            v78(v71, v62);
            sub_21B261664(v77, &qword_27CD7E100, &unk_21B352A30);
            sub_21B261664(v194, &qword_27CD7E100, &unk_21B352A30);
            if ((v191 ^ v76))
            {
              v38 = v202;
              v42 = v198;
              goto LABEL_45;
            }
          }
        }

        v43 = v207 + 8;
        ++v198;
      }

      while (v36 != v198);
      v42 = v36;
      v38 = v202;
LABEL_45:
      v39 = v184;
    }

    a4 = v193;
    if (v191)
    {
      goto LABEL_49;
    }

    v198 = v42;
LABEL_57:
    v83 = v197[1];
    v84 = v198;
    if (v198 < v83)
    {
      if (__OFSUB__(v198, v39))
      {
        goto LABEL_191;
      }

      if (v198 - v39 >= a4)
      {
        v84 = v198;
        goto LABEL_104;
      }

      v85 = (v39 + a4);
      if (__OFADD__(v39, a4))
      {
        goto LABEL_193;
      }

      if (v85 >= v83)
      {
        v85 = v197[1];
      }

      if (v85 < v39)
      {
        goto LABEL_194;
      }

      v84 = v198;
      if (v198 != v85)
      {
        break;
      }
    }

LABEL_104:
    if (v84 < v39)
    {
      goto LABEL_190;
    }

LABEL_105:
    v198 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_21B2356AC(0, *(v38 + 16) + 1, 1, v38);
    }

    v117 = v38;
    v38 = *(v38 + 16);
    v202 = v117;
    v118 = *(v117 + 24);
    v119 = v38 + 1;
    if (v38 >= v118 >> 1)
    {
      v202 = sub_21B2356AC((v118 > 1), v38 + 1, 1, v202);
    }

    v120 = v202;
    *(v202 + 2) = v119;
    v121 = &v120[16 * v38];
    v122 = v198;
    *(v121 + 4) = v39;
    *(v121 + 5) = v122;
    v207 = *v187;
    if (!v207)
    {
      goto LABEL_202;
    }

    if (v38)
    {
      while (1)
      {
        v123 = v119 - 1;
        if (v119 >= 4)
        {
          break;
        }

        v124 = v202;
        if (v119 == 3)
        {
          v125 = *(v202 + 4);
          v126 = *(v202 + 5);
          v135 = __OFSUB__(v126, v125);
          v127 = v126 - v125;
          v128 = v135;
LABEL_124:
          if (v128)
          {
            goto LABEL_177;
          }

          v141 = &v124[16 * v119];
          v143 = *v141;
          v142 = *(v141 + 1);
          v144 = __OFSUB__(v142, v143);
          v145 = v142 - v143;
          v146 = v144;
          if (v144)
          {
            goto LABEL_180;
          }

          v147 = &v124[16 * v123 + 32];
          v149 = *v147;
          v148 = *(v147 + 1);
          v135 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v135)
          {
            goto LABEL_183;
          }

          if (__OFADD__(v145, v150))
          {
            goto LABEL_184;
          }

          if (v145 + v150 >= v127)
          {
            if (v127 < v150)
            {
              v123 = v119 - 2;
            }

            goto LABEL_145;
          }

          goto LABEL_138;
        }

        v151 = &v202[16 * v119];
        v153 = *v151;
        v152 = *(v151 + 1);
        v135 = __OFSUB__(v152, v153);
        v145 = v152 - v153;
        v146 = v135;
LABEL_138:
        if (v146)
        {
          goto LABEL_179;
        }

        v154 = &v124[16 * v123];
        v156 = *(v154 + 4);
        v155 = *(v154 + 5);
        v135 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v135)
        {
          goto LABEL_182;
        }

        if (v157 < v145)
        {
          goto LABEL_3;
        }

LABEL_145:
        v162 = v123 - 1;
        if (v123 - 1 >= v119)
        {
          goto LABEL_172;
        }

        v163 = v199;
        v164 = *v197;
        if (!*v197)
        {
          goto LABEL_198;
        }

        v36 = *&v124[16 * v162 + 32];
        v165 = v123;
        v166 = *&v124[16 * v123 + 40];
        v38 = &v164[8 * v36];
        v167 = &v164[8 * *&v124[16 * v123 + 32]];
        v168 = &v164[8 * v166];
        v169 = v196;

        a7 = v212;

        sub_21B2324A8(v38, v167, v168, v207, v195, v169, a7, v203 & 1, sub_21B2B65D4);
        if (v163)
        {
          goto LABEL_156;
        }

        if (v166 < v36)
        {
          goto LABEL_173;
        }

        v38 = v202;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_21B23A330(v38);
        }

        v30 = v210;
        if (v162 >= *(v38 + 16))
        {
          goto LABEL_174;
        }

        v199 = 0;
        v170 = (v38 + 16 * v162);
        *(v170 + 4) = v36;
        *(v170 + 5) = v166;
        v217 = v38;
        sub_21B2327F4(v165);
        v202 = v217;
        v119 = *(v217 + 2);
        a4 = v193;
        if (v119 <= 1)
        {
          goto LABEL_3;
        }
      }

      v124 = v202;
      v129 = &v202[16 * v119 + 32];
      v130 = *(v129 - 8);
      v131 = *(v129 - 7);
      v135 = __OFSUB__(v131, v130);
      v132 = v131 - v130;
      if (v135)
      {
        goto LABEL_175;
      }

      v134 = *(v129 - 6);
      v133 = *(v129 - 5);
      v135 = __OFSUB__(v133, v134);
      v127 = v133 - v134;
      v128 = v135;
      if (v135)
      {
        goto LABEL_176;
      }

      v136 = &v202[16 * v119];
      v138 = *v136;
      v137 = *(v136 + 1);
      v135 = __OFSUB__(v137, v138);
      v139 = v137 - v138;
      if (v135)
      {
        goto LABEL_178;
      }

      v135 = __OFADD__(v127, v139);
      v140 = v127 + v139;
      if (v135)
      {
        goto LABEL_181;
      }

      if (v140 >= v132)
      {
        v158 = &v202[16 * v123 + 32];
        v160 = *v158;
        v159 = *(v158 + 1);
        v135 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v135)
        {
          goto LABEL_187;
        }

        if (v127 < v161)
        {
          v123 = v119 - 2;
        }

        goto LABEL_145;
      }

      goto LABEL_124;
    }

LABEL_3:
    v36 = v197[1];
    v37 = v198;
    v38 = v202;
    if (v198 >= v36)
    {
      goto LABEL_158;
    }
  }

  v202 = v38;
  v207 = *v197;
  v86 = &v207[8 * v198 - 8];
  v87 = v198;
  v184 = v39;
  v36 = v39 - v198;
  v188 = v85;
LABEL_68:
  v198 = v87;
  v88 = *&v207[8 * v87];
  v190 = v36;
  v191 = v86;
  while (1)
  {
    if ((v88 & 0x8000000000000000) != 0)
    {
      goto LABEL_204;
    }

    v38 = *v86;
    swift_beginAccess();
    v89 = *(a7 + 16);
    if (!v89)
    {
      break;
    }

    if (v88 >= v89[1])
    {
      goto LABEL_204;
    }

    v90 = v89 + 8;
    if ((*(v89 + (v88 >> 3) + 64) >> (v88 & 7)))
    {
      v91 = *v89 + 7;
      if (__OFADD__(*v89, 7))
      {
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      if (v91 < 0)
      {
        v91 = *v89 + 14;
      }

      v92 = v91 >> 3;
      v93 = v92 - 1;
      v49 = v92 < 1;
      v94 = v92 + 62;
      if (!v49)
      {
        v94 = v93;
      }

      v95 = v216;
      v96 = v211;
      (*(v214 + 16))(v216, v90 + (v94 & 0xFFFFFFFFFFFFFFC0) + *(v214 + 72) * v88 + 64, v211);
      v97 = 0;
    }

    else
    {
      v97 = 1;
      v95 = v216;
      v96 = v211;
    }

    v98 = *v215;
    (*v215)(v95, v97, 1, v96);
    if (v38 < 0 || v38 >= v89[1])
    {
      goto LABEL_204;
    }

    if ((*(v90 + (v38 >> 3)) >> (v38 & 7)))
    {
      v99 = *v89 + 7;
      if (__OFADD__(*v89, 7))
      {
        goto LABEL_171;
      }

      if (v99 < 0)
      {
        v99 = *v89 + 14;
      }

      v100 = v99 >> 3;
      v101 = v100 - 1;
      v49 = v100 < 1;
      v102 = v100 + 62;
      if (!v49)
      {
        v102 = v101;
      }

      (*(v214 + 16))(v30, v90 + (v102 & 0xFFFFFFFFFFFFFFC0) + *(v214 + 72) * v38 + 64, v96);
      v103 = 0;
    }

    else
    {
      v103 = 1;
    }

    v98(v30, v103, 1, v96);
    v104 = *(v209 + 48);
    v105 = v216;
    v106 = v206;
    sub_21B2C1778(v216, v206);
    sub_21B2C1778(v30, v106 + v104);
    v107 = *v208;
    if ((*v208)(v106, 1, v96) == 1)
    {
      sub_21B261664(v30, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v105, &qword_27CD7E100, &unk_21B352A30);
      if (v107(v106 + v104, 1, v96) != 1)
      {
        sub_21B261664(v106 + v104, &qword_27CD7E100, &unk_21B352A30);
      }

      a7 = v212;
LABEL_67:
      v87 = v198 + 1;
      v86 = v191 + 8;
      v36 = v190 - 1;
      if ((v198 + 1) != v188)
      {
        goto LABEL_68;
      }

      v84 = v188;
      v38 = v202;
      a4 = v193;
      v39 = v184;
      if (v188 < v184)
      {
        goto LABEL_190;
      }

      goto LABEL_105;
    }

    v108 = v107(v106 + v104, 1, v96);
    v110 = v204;
    v109 = v205;
    if (v108 == 1)
    {
      v30 = v210;
      sub_21B261664(v210, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v216, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v106, &qword_27CD7E100, &unk_21B352A30);
      a7 = v212;
    }

    else
    {
      v111 = *v201;
      (*v201)(v204, v106, v96);
      v111(v109, v106 + v104, v96);
      sub_21B2B5BB8();
      if (v203)
      {
        v112 = sub_21B34AB84();
      }

      else
      {
        v112 = sub_21B34AB94();
      }

      v113 = v112;
      a7 = v212;
      v114 = *v200;
      (*v200)(v109, v96);
      v114(v110, v96);
      v30 = v210;
      sub_21B261664(v210, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v216, &qword_27CD7E100, &unk_21B352A30);
      if ((v113 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (!v207)
    {
      goto LABEL_197;
    }

    v115 = *v86;
    v88 = *(v86 + 1);
    *v86 = v88;
    *(v86 + 1) = v115;
    v86 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_197:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_198:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_201:

  __break(1u);
LABEL_202:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_203:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_204:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2C0F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v69 = a8;
  v72 = a7;
  v12 = sub_21B34A834();
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = &v60 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  v17 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v76 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v22);
  v26 = &v60 - v25;
  v61 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v77 = (v75 + 56);
    v70 = (v75 + 48);
    v65 = (v75 + 8);
    v66 = (v75 + 32);
    v73 = v27;
    v74 = v75 + 16;
    v28 = (v27 + 8 * a3 - 8);
    v29 = a1 - a3;
LABEL_5:
    v63 = v28;
    v64 = a3;
    v30 = *(v73 + 8 * a3);
    v62 = v29;
    while ((v30 & 0x8000000000000000) == 0)
    {
      v31 = *v28;
      v32 = v72;
      swift_beginAccess();
      v33 = *(v32 + 16);
      if (!v33)
      {
        goto LABEL_42;
      }

      if (v30 >= v33[1])
      {
        break;
      }

      v34 = v33 + 8;
      if ((*(v33 + (v30 >> 3) + 64) >> (v30 & 7)))
      {
        v35 = *v33 + 7;
        if (__OFADD__(*v33, 7))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        if (v35 < 0)
        {
          v35 = *v33 + 14;
        }

        v36 = v35 >> 3;
        v38 = v36 - 1;
        v37 = v36 < 1;
        v39 = v36 + 62;
        if (!v37)
        {
          v39 = v38;
        }

        (*(v75 + 16))(v26, v34 + (v39 & 0xFFFFFFFFFFFFFFC0) + *(v75 + 72) * v30 + 64, v12);
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = *v77;
      (*v77)(v26, v40, 1, v12);
      if ((v31 & 0x8000000000000000) != 0 || v31 >= v33[1])
      {
        break;
      }

      if ((*(v34 + (v31 >> 3)) >> (v31 & 7)))
      {
        v42 = *v33 + 7;
        if (__OFADD__(*v33, 7))
        {
          goto LABEL_41;
        }

        if (v42 < 0)
        {
          v42 = *v33 + 14;
        }

        v43 = v42 >> 3;
        v44 = v43 - 1;
        v37 = v43 < 1;
        v45 = v43 + 62;
        if (!v37)
        {
          v45 = v44;
        }

        v46 = v76;
        (*(v75 + 16))(v76, v34 + (v45 & 0xFFFFFFFFFFFFFFC0) + *(v75 + 72) * v31 + 64, v12);
        v47 = 0;
      }

      else
      {
        v47 = 1;
        v46 = v76;
      }

      v41(v46, v47, 1, v12);
      v48 = *(v71 + 48);
      sub_21B2C1778(v26, v19);
      sub_21B2C1778(v46, &v19[v48]);
      v49 = *v70;
      if ((*v70)(v19, 1, v12) == 1)
      {
        sub_21B261664(v46, &qword_27CD7E100, &unk_21B352A30);
        sub_21B261664(v26, &qword_27CD7E100, &unk_21B352A30);
        result = (v49)(&v19[v48], 1, v12);
        if (result != 1)
        {
          result = sub_21B261664(&v19[v48], &qword_27CD7E100, &unk_21B352A30);
        }

LABEL_4:
        a3 = v64 + 1;
        v28 = v63 + 1;
        v29 = v62 - 1;
        if (v64 + 1 == v61)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (v49(&v19[v48], 1, v12) == 1)
      {
        sub_21B261664(v46, &qword_27CD7E100, &unk_21B352A30);
        sub_21B261664(v26, &qword_27CD7E100, &unk_21B352A30);
        result = sub_21B261664(v19, &qword_27CD7E100, &unk_21B352A30);
      }

      else
      {
        v50 = v67;
        v51 = *v66;
        (*v66)(v67, v19, v12);
        v52 = &v19[v48];
        v53 = v68;
        v51(v68, v52, v12);
        sub_21B2B5BB8();
        if (v69)
        {
          v54 = sub_21B34AB84();
        }

        else
        {
          v54 = sub_21B34AB94();
        }

        v55 = v54;
        v56 = v53;
        v57 = *v65;
        (*v65)(v56, v12);
        v57(v50, v12);
        sub_21B261664(v76, &qword_27CD7E100, &unk_21B352A30);
        result = sub_21B261664(v26, &qword_27CD7E100, &unk_21B352A30);
        if ((v55 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v73)
      {
        goto LABEL_43;
      }

      v58 = *v28;
      v30 = v28[1];
      *v28 = v30;
      v28[1] = v58;
      --v28;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2C15A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), void (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v13 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_21B34B914();
  if (result < v13)
  {
    if (v13 >= -1)
    {
      v15 = result;
      if (v13 <= 1)
      {
        v16 = MEMORY[0x277D84F90];
      }

      else
      {
        v16 = sub_21B34AFE4();
        *(v16 + 16) = v13 / 2;
      }

      v19[0] = v16 + 32;
      v19[1] = v13 / 2;
      v17 = v16;

      a6(v19, v20, a1, v15, a2, a3, a4, a5 & 1);

      *(v17 + 16) = 0;

      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v13 < 0)
  {
    goto LABEL_12;
  }

  if (v13)
  {

    a7(0, v13, 1, a1, a2, a3, a4, a5 & 1);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21B2C1778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B2C17EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);
  v4 = *(v0 + 80);
  return Order.areOrdered<A>(_:_:)() & 1;
}

uint64_t sub_21B2C182C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v4 = *(v0 + 80);
  return Order.areOrdered<A>(_:_:)() & 1;
}

uint64_t sub_21B2C186C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  return Order.areOrdered<A>(_:_:)() & 1;
}

uint64_t sub_21B2C18AC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v4 = *(v0 + 64);
  return Order.areOrdered<A>(_:_:)() & 1;
}

uint64_t sub_21B2C18EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  return Order.areOrdered<A>(_:_:)() & 1;
}

unint64_t JSONReadingError.description.getter()
{
  sub_21B2C1DE8(v0, &v22);
  if (v26 <= 1u)
  {
    if (!v26)
    {
      v1 = v23;
      v2 = v24;
      sub_21B261720(&v25, &v20);
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34CF40);
      __swift_project_boxed_opaque_existential_1(&v20, v21);
      sub_21B34B9C4();
      MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
      v3 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v3);

      MEMORY[0x21CEED5E0](0x6E6D756C6F63202CLL, 0xEA00000000002720);
      MEMORY[0x21CEED5E0](v1, v2);

      MEMORY[0x21CEED5E0](2108967, 0xE300000000000000);
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34CF60);
      sub_21B34B7C4();
      MEMORY[0x21CEED5E0](46, 0xE100000000000000);

      MEMORY[0x21CEED5E0](0, 0xE000000000000000);

      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      return 0;
    }

    v18 = v22;
    v19 = v23;
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001FLL, 0x800000021B34CEE0);
    MEMORY[0x21CEED5E0](v18, v19);

    MEMORY[0x21CEED5E0](0xD000000000000038, 0x800000021B34CF00);
    return v20;
  }

  if (v26 == 2)
  {
    v5 = v23;
    v6 = v24;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001DLL, 0x800000021B34CEA0);
    v7 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v7);

    MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE900000000000027);
    MEMORY[0x21CEED5E0](v5, v6);

    MEMORY[0x21CEED5E0](0x2073612027, 0xE500000000000000);
    sub_21B34B7C4();
    MEMORY[0x21CEED5E0](8238, 0xE200000000000000);
    sub_21B34B634();

    v8 = sub_21B2CFC1C(1024);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = MEMORY[0x21CEED540](v8, v10, v12, v14);
    v17 = v16;

    MEMORY[0x21CEED5E0](v15, v17);

    MEMORY[0x21CEED5E0](11815, 0xE200000000000000);
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;

    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34CEC0);

    return v20;
  }

  return 0xD00000000000003FLL;
}

uint64_t get_enum_tag_for_layout_string_11TabularData16JSONReadingErrorO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21B2C1E6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B2C1EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B2C1EF8(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_21B2C1F54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B2C1F9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2C200C(uint64_t a1)
{
  result = sub_21B2C20D8(a1);
  if ((result & 1) == 0)
  {
    result = sub_21B2C24CC(a1);
    if ((result & 1) == 0)
    {
      result = sub_21B2C2B40(a1);
      if ((result & 1) == 0)
      {
        result = sub_21B2C31B0(a1);
        if ((result & 1) == 0)
        {
          result = sub_21B2C3A10(a1);
          if ((result & 1) == 0)
          {
            result = sub_21B2C4A44(a1);
            if ((result & 1) == 0)
            {
              result = sub_21B2C5074(a1);
              if ((result & 1) == 0)
              {
                result = sub_21B2C57D8(a1);
                if ((result & 1) == 0)
                {
                  sub_21B2735F8();
                  swift_allocError();
                  v4 = *(v1 + 72);
                  v5 = *(v1 + 80);
                  *v6 = v4;
                  *(v6 + 8) = v5;
                  *(v6 + 64) = 1;
                  swift_willThrow();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B2C20D8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v43 = v3;
  *&v44 = v4;

  *(&v44 + 1) = sub_21B2613A4(MEMORY[0x277D84F90]);
  sub_21B2FDDB8(0);
  v37 = v1;
  sub_21B2348E0(v37 + 32, v37 + 88);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    while (1)
    {
      v7 = *v6;
      if (*(*v6 + 16))
      {
        v8 = *v6;

        v9 = sub_21B24B534(v3, v4);
        if (v10)
        {
          sub_21B2616C4(*(v7 + 56) + 32 * v9, v38);

          sub_21B261664(v38, &qword_27CD7E500, &qword_21B352660);

          return 0;
        }
      }

      memset(v38, 0, sizeof(v38));
      sub_21B261664(v38, &qword_27CD7E500, &qword_21B352660);
      memset(v38, 0, sizeof(v38));
      v11 = *(&v44 + 1);
      result = swift_beginAccess();
      v13 = *(v11 + 16);
      if (!v13)
      {
        break;
      }

      v14 = *(v13 + 8);
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        break;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        result = *(v11 + 16);
        if (!result)
        {
          goto LABEL_49;
        }

        if (*result < v15)
        {
          if (*result + 0x4000000000000000 < 0)
          {
            goto LABEL_44;
          }

          sub_21B2B4368(v42, result, *(v11 + 24));
          sub_21B2B436C(*(v11 + 16), *(v11 + 24));
          *(v11 + 16) = *v42;
        }
      }

      else
      {
        result = swift_beginAccess();
        v16 = *(v11 + 16);
        if (!v16)
        {
          goto LABEL_48;
        }

        v17 = *v16;
        if (*v16 < v15)
        {
          if (v17 + 0x4000000000000000 < 0)
          {
            goto LABEL_45;
          }

          if (2 * v17 <= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 *= 2;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4F8, &qword_21B354CA0);
        v18 = swift_allocObject();
        v19 = *(v11 + 24);
        sub_21B2AFB80(v16, v17, v42);
        *(v18 + 16) = *v42;

        *(&v44 + 1) = v18;
        v11 = v18;
      }

      swift_beginAccess();
      v20 = *(v11 + 16);
      sub_21B2615FC(v38, &v40, &qword_27CD7E500, &qword_21B352660);
      if (v41)
      {
        result = sub_21B261720(&v40, v42);
        if (!v20)
        {
          goto LABEL_47;
        }

        v21 = *v20 + 7;
        if (__OFADD__(*v20, 7))
        {
          goto LABEL_42;
        }

        v22 = v20 + 8;
        if (v21 < 0)
        {
          v21 = *v20 + 14;
        }

        v23 = v21 >> 3;
        v25 = v23 - 1;
        v24 = v23 < 1;
        v26 = v23 + 62;
        if (!v24)
        {
          v26 = v25;
        }

        sub_21B2616C4(v42, &v22[4 * v20[1] + 8] + (v26 & 0xFFFFFFFFFFFFFFC0));
        v27 = v20[1];
        v28 = v27 + 7;
        if (v27 >= 0)
        {
          v28 = v20[1];
        }

        v29 = v27 - (v28 & 0xFFFFFFFFFFFFFFF8);
        if (v29 >= 0)
        {
          v30 = 1 << v29;
        }

        else
        {
          v30 = 0;
        }

        *(v22 + (v28 >> 3)) |= v30;
        result = __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }

      else
      {
        result = sub_21B261664(&v40, &qword_27CD7E500, &qword_21B352660);
        if (!v20)
        {
          goto LABEL_50;
        }

        v31 = v20[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_43;
        }

        v20[2] = v33;
      }

      v34 = v20[1];
      v32 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      v20[1] = v35;
      sub_21B261664(v38, &qword_27CD7E500, &qword_21B352660);
      ++v6;
      if (!--v5)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  else
  {
LABEL_38:
    v36 = v43;
    *(&v38[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7ED20, &qword_21B354CA8);
    v39 = &off_282CAA128;
    *&v38[0] = v36;
    *(v38 + 8) = v44;
    sub_21B2339B4(v38, v37 + 88);
    return 1;
  }

  return result;
}

uint64_t sub_21B2C24CC(uint64_t a1)
{
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v68 = v4;
  *&v69 = v3;

  sub_21B234EF8(MEMORY[0x277D84F90]);
  *(&v69 + 1) = v5;
  sub_21B2351E8(0);
  v60 = v1;
  sub_21B2348E0(v60 + 32, v60 + 88);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_68:
    v59 = v68;
    *(&v61[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    v62 = &off_282CAA128;
    *&v61[0] = v59;
    *(v61 + 8) = v69;
    sub_21B2339B4(v61, v60 + 88);
    return 1;
  }

  v7 = (a1 + 32);
  while (1)
  {
    v8 = *v7;
    if (*(*v7 + 16))
    {
      v9 = *v7;

      v10 = sub_21B24B534(v4, v3);
      if (v11)
      {
        sub_21B2616C4(*(v8 + 56) + 32 * v10, v61);

        goto LABEL_9;
      }
    }

    memset(v61, 0, sizeof(v61));
LABEL_9:
    sub_21B2615FC(v61, &v66, &qword_27CD7E500, &qword_21B352660);
    if (v67)
    {
      sub_21B2615FC(&v66, v65, &qword_27CD7E500, &qword_21B352660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
      sub_21B2735AC();
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast())
        {
          sub_21B261664(v61, &qword_27CD7E500, &qword_21B352660);

          __swift_destroy_boxed_opaque_existential_1Tm(v65);
          sub_21B261664(&v66, &qword_27CD7E500, &qword_21B352660);
          return 0;
        }

        v31 = v3;
        v32 = v4;
        v33 = v64;
        v34 = *(&v69 + 1);
        result = swift_beginAccess();
        v35 = *(v34 + 16);
        if (!v35)
        {
          goto LABEL_87;
        }

        v36 = *(v35 + 8);
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_74;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          result = *(v34 + 16);
          if (!result)
          {
            goto LABEL_90;
          }

          v38 = *result;
          if (*result < v37)
          {
            if (v38 + 0x4000000000000000 < 0)
            {
              goto LABEL_81;
            }

            v39 = 2 * v38;
            if (v39 <= v37)
            {
              v40 = v37;
            }

            else
            {
              v40 = v39;
            }

            v41 = *(v34 + 24);
            sub_21B235334(result, v40, &v63);
            result = *(v34 + 16);
            if (!result)
            {
              goto LABEL_92;
            }

            if ((*(result + 8) & 0x8000000000000000) != 0)
            {
              goto LABEL_82;
            }

            MEMORY[0x21CEEEA30]();
            *(v34 + 16) = v63;
          }
        }

        else
        {
          result = swift_beginAccess();
          v42 = *(v34 + 16);
          if (!v42)
          {
            goto LABEL_91;
          }

          v43 = *v42;
          if (*v42 < v37)
          {
            if (v43 + 0x4000000000000000 < 0)
            {
              goto LABEL_80;
            }

            if (2 * v43 <= v37)
            {
              v43 = v37;
            }

            else
            {
              v43 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
          v44 = swift_allocObject();
          v45 = *(v34 + 24);
          sub_21B2AECDC(v42, v43, &v63);
          *(v44 + 16) = v63;

          *(&v69 + 1) = v44;
          v34 = v44;
        }

        result = swift_beginAccess();
        v46 = *(v34 + 16);
        if (!v46)
        {
          goto LABEL_88;
        }

        v47 = *v46 + 7;
        if (__OFADD__(*v46, 7))
        {
          goto LABEL_75;
        }

        v48 = v46 + 8;
        if (v47 < 0)
        {
          v47 = *v46 + 14;
        }

        v49 = v47 >> 3;
        v51 = v49 - 1;
        v50 = v49 < 1;
        v52 = v49 + 62;
        if (!v50)
        {
          v52 = v51;
        }

        *(&v48[v46[1] + 8] + (v52 & 0xFFFFFFFFFFFFFFC0)) = v33;
        v53 = v46[1];
        v54 = v53 + 7;
        if (v53 >= 0)
        {
          v54 = v46[1];
        }

        v55 = v54 >> 3;
        v56 = v53 - (v54 & 0xFFFFFFFFFFFFFFF8);
        if (v56 >= 0)
        {
          v57 = 1 << v56;
        }

        else
        {
          v57 = 0;
        }

        *(v48 + v55) |= v57;
        v27 = __OFADD__(v53, 1);
        v58 = v53 + 1;
        if (v27)
        {
          goto LABEL_76;
        }

        v46[1] = v58;
        sub_21B261664(v61, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        sub_21B261664(&v66, &qword_27CD7E500, &qword_21B352660);
        v4 = v32;
        v3 = v31;
        goto LABEL_3;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v65);
    }

    sub_21B261664(&v66, &qword_27CD7E500, &qword_21B352660);
    v12 = *(&v69 + 1);
    result = swift_beginAccess();
    v14 = *(v12 + 16);
    if (!v14)
    {
      goto LABEL_83;
    }

    v15 = *(v14 + 8);
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v12 + 16);
      if (!result)
      {
        goto LABEL_86;
      }

      v17 = *result;
      if (*result < v16)
      {
        if (v17 + 0x4000000000000000 < 0)
        {
          goto LABEL_78;
        }

        v18 = 2 * v17;
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = *(v12 + 24);
        sub_21B235334(result, v19, &v66);
        result = *(v12 + 16);
        if (!result)
        {
          goto LABEL_89;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        MEMORY[0x21CEEEA30]();
        *(v12 + 16) = v66;
      }
    }

    else
    {
      result = swift_beginAccess();
      v21 = *(v12 + 16);
      if (!v21)
      {
        goto LABEL_85;
      }

      v22 = *v21;
      if (*v21 < v16)
      {
        if (v22 + 0x4000000000000000 < 0)
        {
          goto LABEL_77;
        }

        if (2 * v22 <= v16)
        {
          v22 = v16;
        }

        else
        {
          v22 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
      v23 = swift_allocObject();
      v24 = *(v12 + 24);
      sub_21B2AECDC(v21, v22, &v66);
      *(v23 + 16) = v66;

      *(&v69 + 1) = v23;
      v12 = v23;
    }

    result = swift_beginAccess();
    v25 = *(v12 + 16);
    if (!v25)
    {
      goto LABEL_84;
    }

    v26 = *(v25 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_72;
    }

    *(v25 + 16) = v28;
    v29 = *(v25 + 8);
    v27 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v27)
    {
      goto LABEL_73;
    }

    *(v25 + 8) = v30;
    sub_21B261664(v61, &qword_27CD7E500, &qword_21B352660);
LABEL_3:
    ++v7;
    if (!--v6)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_21B2C2B40(uint64_t a1)
{
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v65 = v4;
  *&v66 = v3;

  sub_21B260114(MEMORY[0x277D84F90]);
  *(&v66 + 1) = v5;
  sub_21B2FD6A0(0);
  v57 = v1;
  sub_21B2348E0(v57 + 32, v57 + 88);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_66:
    v56 = v65;
    *(&v58[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
    v59 = &off_282CAA128;
    *&v58[0] = v56;
    *(v58 + 8) = v66;
    sub_21B2339B4(v58, v57 + 88);
    return 1;
  }

  v7 = (a1 + 32);
  while (1)
  {
    v8 = *v7;
    if (*(*v7 + 16))
    {
      v9 = *v7;

      v10 = sub_21B24B534(v4, v3);
      if (v11)
      {
        sub_21B2616C4(*(v8 + 56) + 32 * v10, v58);

        goto LABEL_9;
      }
    }

    memset(v58, 0, sizeof(v58));
LABEL_9:
    sub_21B2615FC(v58, &v63, &qword_27CD7E500, &qword_21B352660);
    if (v64)
    {
      sub_21B2615FC(&v63, v62, &qword_27CD7E500, &qword_21B352660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
      sub_21B2735AC();
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast())
        {
          sub_21B261664(v58, &qword_27CD7E500, &qword_21B352660);

          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          sub_21B261664(&v63, &qword_27CD7E500, &qword_21B352660);
          return 0;
        }

        v31 = v3;
        v32 = v4;
        v33 = v61;
        v34 = *(&v66 + 1);
        result = swift_beginAccess();
        v35 = *(v34 + 16);
        if (!v35)
        {
          goto LABEL_84;
        }

        v36 = *(v35 + 8);
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_71;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          result = *(v34 + 16);
          if (!result)
          {
            goto LABEL_87;
          }

          v38 = *result;
          if (*result < v37)
          {
            if (v38 + 0x4000000000000000 < 0)
            {
              goto LABEL_78;
            }

            v39 = 2 * v38;
            if (v39 <= v37)
            {
              v40 = v37;
            }

            else
            {
              v40 = v39;
            }

            v41 = *(v34 + 24);
            sub_21B2B0190(result, v40, &v60);
            result = *(v34 + 16);
            if (!result)
            {
              goto LABEL_89;
            }

            if ((*(result + 8) & 0x8000000000000000) != 0)
            {
              goto LABEL_79;
            }

            MEMORY[0x21CEEEA30]();
            *(v34 + 16) = v60;
          }
        }

        else
        {
          result = swift_beginAccess();
          v42 = *(v34 + 16);
          if (!v42)
          {
            goto LABEL_88;
          }

          v43 = *v42;
          if (*v42 < v37)
          {
            if (v43 + 0x4000000000000000 < 0)
            {
              goto LABEL_77;
            }

            if (2 * v43 <= v37)
            {
              v43 = v37;
            }

            else
            {
              v43 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
          v44 = swift_allocObject();
          v45 = *(v34 + 24);
          sub_21B2AF39C(v42, v43, &v60);
          *(v44 + 16) = v60;

          *(&v66 + 1) = v44;
          v34 = v44;
        }

        result = swift_beginAccess();
        v46 = *(v34 + 16);
        if (!v46)
        {
          goto LABEL_85;
        }

        v47 = *v46 + 7;
        if (__OFADD__(*v46, 7))
        {
          goto LABEL_72;
        }

        v48 = v46 + 8;
        if (v47 < 0)
        {
          v47 = *v46 + 14;
        }

        v49 = v47 >> 3;
        v51 = v49 - 1;
        v50 = v49 < 1;
        v52 = v49 + 62;
        if (!v50)
        {
          v52 = v51;
        }

        v53 = v46[1];
        *(v48 + v53 + (v52 & 0xFFFFFFFFFFFFFFC0) + 64) = v33;
        v54 = v53 - (v52 & 0xFFFFFFFFFFFFFFF8);
        if (v54 >= 0)
        {
          v55 = 1 << v54;
        }

        else
        {
          v55 = 0;
        }

        *(v48 + v53 / 8) |= v55;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_73;
        }

        v46[1] = v53 + 1;
        sub_21B261664(v58, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        sub_21B261664(&v63, &qword_27CD7E500, &qword_21B352660);
        v4 = v32;
        v3 = v31;
        goto LABEL_3;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v62);
    }

    sub_21B261664(&v63, &qword_27CD7E500, &qword_21B352660);
    v12 = *(&v66 + 1);
    result = swift_beginAccess();
    v14 = *(v12 + 16);
    if (!v14)
    {
      goto LABEL_80;
    }

    v15 = *(v14 + 8);
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v12 + 16);
      if (!result)
      {
        goto LABEL_83;
      }

      v17 = *result;
      if (*result < v16)
      {
        if (v17 + 0x4000000000000000 < 0)
        {
          goto LABEL_75;
        }

        v18 = 2 * v17;
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = *(v12 + 24);
        sub_21B2B0190(result, v19, &v63);
        result = *(v12 + 16);
        if (!result)
        {
          goto LABEL_86;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        MEMORY[0x21CEEEA30]();
        *(v12 + 16) = v63;
      }
    }

    else
    {
      result = swift_beginAccess();
      v21 = *(v12 + 16);
      if (!v21)
      {
        goto LABEL_82;
      }

      v22 = *v21;
      if (*v21 < v16)
      {
        if (v22 + 0x4000000000000000 < 0)
        {
          goto LABEL_74;
        }

        if (2 * v22 <= v16)
        {
          v22 = v16;
        }

        else
        {
          v22 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
      v23 = swift_allocObject();
      v24 = *(v12 + 24);
      sub_21B2AF39C(v21, v22, &v63);
      *(v23 + 16) = v63;

      *(&v66 + 1) = v23;
      v12 = v23;
    }

    result = swift_beginAccess();
    v25 = *(v12 + 16);
    if (!v25)
    {
      goto LABEL_81;
    }

    v26 = *(v25 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_69;
    }

    *(v25 + 16) = v28;
    v29 = *(v25 + 8);
    v27 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v27)
    {
      goto LABEL_70;
    }

    *(v25 + 8) = v30;
    sub_21B261664(v58, &qword_27CD7E500, &qword_21B352660);
LABEL_3:
    ++v7;
    if (!--v6)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_21B2C31B0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v78 = *(v1 + 72);
  v85 = v78;
  *&v86 = v3;

  sub_21B25E224(MEMORY[0x277D84F90]);
  *(&v86 + 1) = v4;
  sub_21B2FD590(0);
  v77 = v1;
  sub_21B2348E0(v77 + 32, v77 + 88);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_100:
    v76 = v85;
    v79[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v79[4] = &off_282CAA128;
    v79[0] = v76;
    *&v79[1] = v86;
    sub_21B2339B4(v79, v77 + 88);
    return 1;
  }

  v6 = (a1 + 32);
  while (1)
  {
    v8 = *v6;
    if (*(*v6 + 16))
    {
      v9 = *v6;

      v10 = sub_21B24B534(v78, v3);
      if (v11)
      {
        sub_21B2616C4(*(v8 + 56) + 32 * v10, v79);

        goto LABEL_10;
      }
    }

    memset(v79, 0, 32);
LABEL_10:
    sub_21B2615FC(v79, &v83, &qword_27CD7E500, &qword_21B352660);
    if (v84)
    {
      sub_21B2615FC(&v83, v82, &qword_27CD7E500, &qword_21B352660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
      sub_21B2735AC();
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v31 = v81;
          v32 = *(&v86 + 1);
          result = swift_beginAccess();
          v33 = *(v32 + 16);
          if (!v33)
          {
            goto LABEL_124;
          }

          v34 = *(v33 + 8);
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_108;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            swift_beginAccess();
            result = *(v32 + 16);
            if (!result)
            {
              goto LABEL_129;
            }

            v36 = *result;
            if (*result < v35)
            {
              if (v36 + 0x4000000000000000 < 0)
              {
                goto LABEL_113;
              }

              v37 = 2 * v36;
              if (v37 <= v35)
              {
                v38 = v35;
              }

              else
              {
                v38 = v37;
              }

              v39 = *(v32 + 24);
              sub_21B235334(result, v38, &v80);
              result = *(v32 + 16);
              if (!result)
              {
                goto LABEL_132;
              }

              if ((*(result + 8) & 0x8000000000000000) != 0)
              {
                goto LABEL_115;
              }

              MEMORY[0x21CEEEA30]();
              *(v32 + 16) = v80;
            }
          }

          else
          {
            result = swift_beginAccess();
            v49 = *(v32 + 16);
            if (!v49)
            {
              goto LABEL_128;
            }

            v50 = *v49;
            if (*v49 < v35)
            {
              if (v50 + 0x4000000000000000 < 0)
              {
                goto LABEL_114;
              }

              if (2 * v50 <= v35)
              {
                v50 = v35;
              }

              else
              {
                v50 *= 2;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
            v51 = swift_allocObject();
            v52 = *(v32 + 24);
            sub_21B2AEE64(v49, v50, &v80);
            *(v51 + 16) = v80;

            *(&v86 + 1) = v51;
            v32 = v51;
          }

          result = swift_beginAccess();
          v53 = *(v32 + 16);
          if (!v53)
          {
            goto LABEL_125;
          }

          v54 = *v53 + 7;
          if (__OFADD__(*v53, 7))
          {
            goto LABEL_109;
          }

          v55 = v53 + 8;
          if (v54 < 0)
          {
            v54 = *v53 + 14;
          }

          v56 = v54 >> 3;
          v58 = v56 - 1;
          v57 = v56 < 1;
          v59 = v56 + 62;
          if (!v57)
          {
            v59 = v58;
          }

          v60 = v53[1];
          *(&v55[v60 + 8] + (v59 & 0xFFFFFFFFFFFFFFC0)) = v31;
          v61 = v60 - (v59 & 0xFFFFFFFFFFFFFFF8);
          if (v61 >= 0)
          {
            v62 = 1 << v61;
          }

          else
          {
            v62 = 0;
          }

          *(v55 + v60 / 8) |= v62;
          v63 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_110;
          }
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_21B261664(v79, &qword_27CD7E500, &qword_21B352660);

            __swift_destroy_boxed_opaque_existential_1Tm(v82);
            sub_21B261664(&v83, &qword_27CD7E500, &qword_21B352660);
            return 0;
          }

          v40 = v81;
          v41 = *(&v86 + 1);
          result = swift_beginAccess();
          v42 = *(v41 + 16);
          if (!v42)
          {
            goto LABEL_126;
          }

          v43 = *(v42 + 8);
          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_111;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            swift_beginAccess();
            result = *(v41 + 16);
            if (!result)
            {
              goto LABEL_131;
            }

            v45 = *result;
            if (*result < v44)
            {
              if (v45 + 0x4000000000000000 < 0)
              {
                goto LABEL_116;
              }

              v46 = 2 * v45;
              if (v46 <= v44)
              {
                v47 = v44;
              }

              else
              {
                v47 = v46;
              }

              v48 = *(v41 + 24);
              sub_21B235334(result, v47, &v80);
              result = *(v41 + 16);
              if (!result)
              {
                goto LABEL_133;
              }

              if ((*(result + 8) & 0x8000000000000000) != 0)
              {
                goto LABEL_118;
              }

              MEMORY[0x21CEEEA30]();
              *(v41 + 16) = v80;
            }
          }

          else
          {
            result = swift_beginAccess();
            v64 = *(v41 + 16);
            if (!v64)
            {
              goto LABEL_130;
            }

            v65 = *v64;
            if (*v64 < v44)
            {
              if (v65 + 0x4000000000000000 < 0)
              {
                goto LABEL_117;
              }

              if (2 * v65 <= v44)
              {
                v65 = v44;
              }

              else
              {
                v65 *= 2;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
            v66 = swift_allocObject();
            v67 = *(v41 + 24);
            sub_21B2AEE64(v64, v65, &v80);
            *(v66 + 16) = v80;

            *(&v86 + 1) = v66;
            v41 = v66;
          }

          result = swift_beginAccess();
          v53 = *(v41 + 16);
          if (!v53)
          {
            goto LABEL_127;
          }

          v68 = *v53 + 7;
          if (__OFADD__(*v53, 7))
          {
            goto LABEL_112;
          }

          v69 = v53 + 8;
          if (v68 < 0)
          {
            v68 = *v53 + 14;
          }

          v70 = v68 >> 3;
          v71 = v70 - 1;
          v57 = v70 < 1;
          v72 = v70 + 62;
          if (!v57)
          {
            v72 = v71;
          }

          v73 = v53[1];
          *(&v69[v73 + 8] + (v72 & 0xFFFFFFFFFFFFFFC0)) = v40;
          v74 = v73 - (v72 & 0xFFFFFFFFFFFFFFF8);
          if (v74 >= 0)
          {
            v75 = 1 << v74;
          }

          else
          {
            v75 = 0;
          }

          *(v69 + v73 / 8) |= v75;
          v63 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            __break(1u);
            goto LABEL_100;
          }
        }

        v53[1] = v63;
        sub_21B261664(v79, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        v7 = &v83;
        goto LABEL_4;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v82);
    }

    sub_21B261664(&v83, &qword_27CD7E500, &qword_21B352660);
    v12 = *(&v86 + 1);
    result = swift_beginAccess();
    v14 = *(v12 + 16);
    if (!v14)
    {
      goto LABEL_119;
    }

    v15 = *(v14 + 8);
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v12 + 16);
      if (!result)
      {
        goto LABEL_122;
      }

      v17 = *result;
      if (*result < v16)
      {
        if (v17 + 0x4000000000000000 < 0)
        {
          goto LABEL_105;
        }

        v18 = 2 * v17;
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = *(v12 + 24);
        sub_21B235334(result, v19, &v83);
        result = *(v12 + 16);
        if (!result)
        {
          goto LABEL_123;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        MEMORY[0x21CEEEA30]();
        *(v12 + 16) = v83;
      }
    }

    else
    {
      result = swift_beginAccess();
      v21 = *(v12 + 16);
      if (!v21)
      {
        goto LABEL_121;
      }

      v22 = *v21;
      if (*v21 < v16)
      {
        if (v22 + 0x4000000000000000 < 0)
        {
          goto LABEL_106;
        }

        if (2 * v22 <= v16)
        {
          v22 = v16;
        }

        else
        {
          v22 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
      v23 = swift_allocObject();
      v24 = *(v12 + 24);
      sub_21B2AEE64(v21, v22, &v83);
      *(v23 + 16) = v83;

      *(&v86 + 1) = v23;
      v12 = v23;
    }

    result = swift_beginAccess();
    v25 = *(v12 + 16);
    if (!v25)
    {
      goto LABEL_120;
    }

    v26 = *(v25 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_103;
    }

    *(v25 + 16) = v28;
    v29 = *(v25 + 8);
    v27 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v27)
    {
      goto LABEL_104;
    }

    *(v25 + 8) = v30;
    v7 = v79;
LABEL_4:
    sub_21B261664(v7, &qword_27CD7E500, &qword_21B352660);
    ++v6;
    if (!--v5)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_21B2C3A10(uint64_t a1)
{
  v3 = sub_21B34A834();
  v160 = *(v3 - 8);
  v4 = *(v160 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v147 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v155 = &v146 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v151 = &v146 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v156 = &v146 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v157 = &v146 - v14;
  MEMORY[0x28223BE20](v13);
  v163 = &v146 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v148 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v146 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v149 = &v146 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v152 = &v146 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v159 = &v146 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v164 = &v146 - v29;
  MEMORY[0x28223BE20](v28);
  v170 = &v146 - v30;
  v31 = *(v1 + 72);
  v161 = *(v1 + 80);
  v162 = v31;
  v177 = v31;
  *&v178 = v161;

  *(&v178 + 1) = sub_21B260568(MEMORY[0x277D84F90]);
  sub_21B2FD6DC(0);
  v154 = v1;
  sub_21B2348E0(v154 + 32, v154 + 88);
  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_121:
    v145 = v177;
    v171[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
    v171[4] = &off_282CAA128;
    v171[0] = v145;
    *&v171[1] = v178;
    sub_21B2339B4(v171, v154 + 88);
    return 1;
  }

  v33 = (a1 + 32);
  v166 = (v160 + 16);
  v167 = (v160 + 32);
  v168 = (v160 + 56);
  v169 = (v160 + 48);
  v165 = (v160 + 8);
  while (1)
  {
    v35 = *v33;
    if (*(*v33 + 16))
    {
      v36 = *v33;

      v37 = sub_21B24B534(v162, v161);
      if (v38)
      {
        sub_21B2616C4(*(v35 + 56) + 32 * v37, v171);

        goto LABEL_10;
      }
    }

    memset(v171, 0, 32);
LABEL_10:
    sub_21B2615FC(v171, &v175, &qword_27CD7E500, &qword_21B352660);
    if (!v176)
    {
      goto LABEL_13;
    }

    sub_21B2615FC(&v175, v174, &qword_27CD7E500, &qword_21B352660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
    sub_21B2735AC();
    if (!swift_dynamicCast())
    {
      v72 = v157;
      if (swift_dynamicCast())
      {
        v73 = *v167;
        v74 = v156;
        (*v167)(v156, v72, v3);
        v75 = *v166;
        v76 = v159;
        (*v166)(v159, v74, v3);
        (*v168)(v76, 0, 1, v3);
        v77 = *(&v178 + 1);
        result = swift_beginAccess();
        v78 = *(v77 + 16);
        if (!v78)
        {
          goto LABEL_149;
        }

        v79 = *(v78 + 8);
        v80 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_132;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153 = v75;
        if (isUniquelyReferenced_nonNull_native)
        {
          swift_beginAccess();
          result = *(v77 + 16);
          if (!result)
          {
            goto LABEL_151;
          }

          v82 = *result;
          if (*result < v80)
          {
            if (v82 + 0x4000000000000000 < 0)
            {
              goto LABEL_141;
            }

            v83 = 2 * v82;
            if (v83 <= v80)
            {
              v84 = v80;
            }

            else
            {
              v84 = v83;
            }

            v85 = *(v77 + 24);
            sub_21B2AFF0C(result, v84, &v173);
            v86 = *(v77 + 24);
            sub_21B2B0A2C(*(v77 + 16));
            *(v77 + 16) = v173;
          }
        }

        else
        {
          result = swift_beginAccess();
          v102 = *(v77 + 16);
          if (!v102)
          {
            goto LABEL_152;
          }

          v103 = *v102;
          if (*v102 < v80)
          {
            if (v103 + 0x4000000000000000 < 0)
            {
              goto LABEL_140;
            }

            if (2 * v103 <= v80)
            {
              v103 = v80;
            }

            else
            {
              v103 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
          v104 = swift_allocObject();
          v105 = *(v77 + 24);
          sub_21B2AF188(v102, v103, &v173);
          *(v104 + 16) = v173;

          *(&v178 + 1) = v104;
          v77 = v104;
        }

        swift_beginAccess();
        v106 = *(v77 + 16);
        v107 = v152;
        sub_21B2615FC(v159, v152, &qword_27CD7E100, &unk_21B352A30);
        if ((*v169)(v107, 1, v3) == 1)
        {
          result = sub_21B261664(v107, &qword_27CD7E100, &unk_21B352A30);
          if (!v106)
          {
            goto LABEL_153;
          }

          v108 = v106[2];
          v56 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          if (v56)
          {
            goto LABEL_136;
          }

          v106[2] = v109;
        }

        else
        {
          result = v73(v151, v107, v3);
          if (!v106)
          {
            goto LABEL_154;
          }

          v110 = *v106 + 7;
          if (__OFADD__(*v106, 7))
          {
            goto LABEL_137;
          }

          v111 = (v106 + 8);
          if (v110 < 0)
          {
            v110 = *v106 + 14;
          }

          v112 = v110 >> 3;
          v113 = v112 - 1;
          v61 = v112 < 1;
          v114 = v112 + 62;
          if (!v61)
          {
            v114 = v113;
          }

          v115 = v160;
          v116 = v151;
          v153(&v111[(v114 & 0xFFFFFFFFFFFFFFC0) + 64 + *(v160 + 72) * v106[1]], v151, v3);
          v117 = v106[1];
          v118 = v117 + 7;
          if (v117 >= 0)
          {
            v118 = v106[1];
          }

          v119 = v117 - (v118 & 0xFFFFFFFFFFFFFFF8);
          if (v119 >= 0)
          {
            v120 = 1 << v119;
          }

          else
          {
            v120 = 0;
          }

          v111[v118 >> 3] |= v120;
          result = (*(v115 + 8))(v116, v3);
        }

        v121 = v106[1];
        v56 = __OFADD__(v121, 1);
        v122 = v121 + 1;
        if (v56)
        {
          goto LABEL_133;
        }

        v106[1] = v122;
        sub_21B261664(v159, &qword_27CD7E100, &unk_21B352A30);
        v123 = *v165;
LABEL_3:
        v123();
        sub_21B261664(v171, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v174);
        v34 = &v175;
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        v87 = v149;
        sub_21B2D12C4(v173, *(&v173 + 1), v149);

        v88 = *v169;
        if ((*v169)(v87, 1, v3) != 1)
        {
          v89 = v155;
          v153 = *v167;
          v153(v155, v87, v3);
          v90 = *v166;
          v91 = v158;
          (*v166)(v158, v89, v3);
          (*v168)(v91, 0, 1, v3);
          v92 = *(&v178 + 1);
          result = swift_beginAccess();
          v93 = *(v92 + 16);
          if (!v93)
          {
            goto LABEL_150;
          }

          v94 = *(v93 + 8);
          v95 = v94 + 1;
          if (__OFADD__(v94, 1))
          {
            goto LABEL_134;
          }

          v96 = swift_isUniquelyReferenced_nonNull_native();
          v150 = v90;
          if (v96)
          {
            swift_beginAccess();
            result = *(v92 + 16);
            if (!result)
            {
              goto LABEL_158;
            }

            v97 = *result;
            if (*result < v95)
            {
              if (v97 + 0x4000000000000000 < 0)
              {
                goto LABEL_143;
              }

              v98 = 2 * v97;
              if (v98 <= v95)
              {
                v99 = v95;
              }

              else
              {
                v99 = v98;
              }

              v100 = *(v92 + 24);
              sub_21B2AFF0C(result, v99, &v172);
              v101 = *(v92 + 24);
              sub_21B2B0A2C(*(v92 + 16));
              *(v92 + 16) = v172;
            }
          }

          else
          {
            result = swift_beginAccess();
            v124 = *(v92 + 16);
            if (!v124)
            {
              goto LABEL_157;
            }

            v125 = *v124;
            if (*v124 < v95)
            {
              if (v125 + 0x4000000000000000 < 0)
              {
                goto LABEL_142;
              }

              if (2 * v125 <= v95)
              {
                v125 = v95;
              }

              else
              {
                v125 *= 2;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
            v126 = swift_allocObject();
            v127 = *(v92 + 24);
            sub_21B2AF188(v124, v125, &v172);
            *(v126 + 16) = v172;

            *(&v178 + 1) = v126;
            v92 = v126;
          }

          swift_beginAccess();
          v128 = *(v92 + 16);
          v129 = v148;
          sub_21B2615FC(v158, v148, &qword_27CD7E100, &unk_21B352A30);
          if (v88(v129, 1, v3) == 1)
          {
            result = sub_21B261664(v129, &qword_27CD7E100, &unk_21B352A30);
            if (!v128)
            {
              goto LABEL_155;
            }

            v130 = v128[2];
            v56 = __OFADD__(v130, 1);
            v131 = v130 + 1;
            if (v56)
            {
              goto LABEL_138;
            }

            v128[2] = v131;
          }

          else
          {
            result = v153(v147, v129, v3);
            if (!v128)
            {
              goto LABEL_156;
            }

            v132 = *v128 + 7;
            if (__OFADD__(*v128, 7))
            {
              goto LABEL_139;
            }

            v133 = (v128 + 8);
            if (v132 < 0)
            {
              v132 = *v128 + 14;
            }

            v134 = v132 >> 3;
            v135 = v134 - 1;
            v61 = v134 < 1;
            v136 = v134 + 62;
            if (!v61)
            {
              v136 = v135;
            }

            v137 = v160;
            v138 = v147;
            v150(&v133[(v136 & 0xFFFFFFFFFFFFFFC0) + 64 + *(v160 + 72) * v128[1]], v147, v3);
            v139 = v128[1];
            v140 = v139 + 7;
            if (v139 >= 0)
            {
              v140 = v128[1];
            }

            v141 = v139 - (v140 & 0xFFFFFFFFFFFFFFF8);
            if (v141 >= 0)
            {
              v142 = 1 << v141;
            }

            else
            {
              v142 = 0;
            }

            v133[v140 >> 3] |= v142;
            result = (*(v137 + 8))(v138, v3);
          }

          v143 = v128[1];
          v56 = __OFADD__(v143, 1);
          v144 = v143 + 1;
          if (v56)
          {
            goto LABEL_135;
          }

          v128[1] = v144;
          sub_21B261664(v158, &qword_27CD7E100, &unk_21B352A30);
          v123 = *v165;
          goto LABEL_3;
        }

        sub_21B261664(v171, &qword_27CD7E500, &qword_21B352660);

        sub_21B261664(v87, &qword_27CD7E100, &unk_21B352A30);
      }

      else
      {
        sub_21B261664(v171, &qword_27CD7E500, &qword_21B352660);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      sub_21B261664(&v175, &qword_27CD7E500, &qword_21B352660);
      return 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v174);
LABEL_13:
    sub_21B261664(&v175, &qword_27CD7E500, &qword_21B352660);
    (*v168)(v170, 1, 1, v3);
    v39 = *(&v178 + 1);
    result = swift_beginAccess();
    v41 = *(v39 + 16);
    if (!v41)
    {
      goto LABEL_144;
    }

    v42 = *(v41 + 8);
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v39 + 16);
      if (!result)
      {
        goto LABEL_146;
      }

      v44 = *result;
      if (*result < v43)
      {
        if (v44 + 0x4000000000000000 < 0)
        {
          goto LABEL_131;
        }

        v45 = 2 * v44;
        if (v45 <= v43)
        {
          v46 = v43;
        }

        else
        {
          v46 = v45;
        }

        v47 = *(v39 + 24);
        sub_21B2AFF0C(result, v46, &v175);
        v48 = *(v39 + 24);
        sub_21B2B0A2C(*(v39 + 16));
        *(v39 + 16) = v175;
      }
    }

    else
    {
      result = swift_beginAccess();
      v49 = *(v39 + 16);
      if (!v49)
      {
        goto LABEL_145;
      }

      v50 = *v49;
      if (*v49 < v43)
      {
        if (v50 + 0x4000000000000000 < 0)
        {
          goto LABEL_130;
        }

        if (2 * v50 <= v43)
        {
          v50 = v43;
        }

        else
        {
          v50 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
      v51 = swift_allocObject();
      v52 = *(v39 + 24);
      sub_21B2AF188(v49, v50, &v175);
      *(v51 + 16) = v175;

      *(&v178 + 1) = v51;
      v39 = v51;
    }

    swift_beginAccess();
    v53 = *(v39 + 16);
    v54 = v164;
    sub_21B2615FC(v170, v164, &qword_27CD7E100, &unk_21B352A30);
    if ((*v169)(v54, 1, v3) == 1)
    {
      result = sub_21B261664(v54, &qword_27CD7E100, &unk_21B352A30);
      if (!v53)
      {
        goto LABEL_148;
      }

      v55 = v53[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_128;
      }

      v53[2] = v57;
    }

    else
    {
      result = (*v167)(v163, v54, v3);
      if (!v53)
      {
        goto LABEL_147;
      }

      v58 = *v53 + 7;
      if (__OFADD__(*v53, 7))
      {
        goto LABEL_129;
      }

      v59 = v53 + 8;
      if (v58 < 0)
      {
        v58 = *v53 + 14;
      }

      v60 = v58 >> 3;
      v62 = v60 - 1;
      v61 = v60 < 1;
      v63 = v60 + 62;
      if (!v61)
      {
        v63 = v62;
      }

      v64 = v160;
      v65 = v163;
      (*(v160 + 16))(v59 + (v63 & 0xFFFFFFFFFFFFFFC0) + *(v160 + 72) * v53[1] + 64, v163, v3);
      v66 = v53[1];
      v67 = v66 + 7;
      if (v66 >= 0)
      {
        v67 = v53[1];
      }

      v68 = v66 - (v67 & 0xFFFFFFFFFFFFFFF8);
      if (v68 >= 0)
      {
        v69 = 1 << v68;
      }

      else
      {
        v69 = 0;
      }

      *(v59 + (v67 >> 3)) |= v69;
      result = (*(v64 + 8))(v65, v3);
    }

    v70 = v53[1];
    v56 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (v56)
    {
      goto LABEL_127;
    }

    v53[1] = v71;
    sub_21B261664(v170, &qword_27CD7E100, &unk_21B352A30);
    v34 = v171;
LABEL_4:
    sub_21B261664(v34, &qword_27CD7E500, &qword_21B352660);
    ++v33;
    if (!--v32)
    {
      goto LABEL_121;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
  return result;
}

uint64_t sub_21B2C4A44(uint64_t a1)
{
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v72 = v4;
  *&v73 = v3;
  v63 = v3;

  *(&v73 + 1) = sub_21B25DFE0(MEMORY[0x277D84F90]);
  sub_21B2FD5CC(0);
  v62 = v1;
  sub_21B2348E0(v62 + 32, v62 + 88);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_65:
    v61 = v72;
    *(&v64[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v65 = &off_282CAA128;
    *&v64[0] = v61;
    *(v64 + 8) = v73;
    sub_21B2339B4(v64, v62 + 88);
    return 1;
  }

  v6 = (a1 + 32);
  while (1)
  {
    v7 = *v6;
    if (*(*v6 + 16))
    {
      v8 = *v6;

      v9 = sub_21B24B534(v4, v63);
      if (v10)
      {
        sub_21B2616C4(*(v7 + 56) + 32 * v9, v64);

        goto LABEL_9;
      }
    }

    memset(v64, 0, sizeof(v64));
LABEL_9:
    sub_21B2615FC(v64, &v70, &qword_27CD7E500, &qword_21B352660);
    if (v71)
    {
      sub_21B2615FC(&v70, v69, &qword_27CD7E500, &qword_21B352660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
      sub_21B2735AC();
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast())
        {
          sub_21B261664(v64, &qword_27CD7E500, &qword_21B352660);

          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          sub_21B261664(&v70, &qword_27CD7E500, &qword_21B352660);
          return 0;
        }

        v31 = v4;
        v33 = v67;
        v32 = v68;
        v34 = *(&v73 + 1);
        result = swift_beginAccess();
        v35 = *(v34 + 16);
        if (!v35)
        {
          goto LABEL_81;
        }

        v36 = *(v35 + 8);
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_71;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          result = *(v34 + 16);
          if (!result)
          {
            goto LABEL_83;
          }

          v38 = *result;
          if (*result < v37)
          {
            if (v38 + 0x4000000000000000 < 0)
            {
              goto LABEL_75;
            }

            v39 = 2 * v38;
            if (v39 <= v37)
            {
              v40 = v37;
            }

            else
            {
              v40 = v39;
            }

            v41 = *(v34 + 24);
            sub_21B2AFD1C(result, v40, &v66);
            v42 = *(v34 + 24);
            sub_21B2B0954(*(v34 + 16));
            *(v34 + 16) = v66;
          }
        }

        else
        {
          result = swift_beginAccess();
          v43 = *(v34 + 16);
          if (!v43)
          {
            goto LABEL_84;
          }

          v44 = *v43;
          if (*v43 < v37)
          {
            if (v44 + 0x4000000000000000 < 0)
            {
              goto LABEL_76;
            }

            if (2 * v44 <= v37)
            {
              v44 = v37;
            }

            else
            {
              v44 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
          v45 = swift_allocObject();
          v46 = *(v34 + 24);
          sub_21B2AEFEC(v43, v44, &v66);
          *(v45 + 16) = v66;

          *(&v73 + 1) = v45;
          v34 = v45;
        }

        result = swift_beginAccess();
        v47 = *(v34 + 16);
        if (!v47)
        {
          goto LABEL_82;
        }

        v48 = *v47 + 7;
        if (__OFADD__(*v47, 7))
        {
          goto LABEL_72;
        }

        v49 = v47 + 8;
        if (v48 < 0)
        {
          v48 = *v47 + 14;
        }

        v50 = v48 >> 3;
        v52 = v50 - 1;
        v51 = v50 < 1;
        v53 = v50 + 62;
        if (!v51)
        {
          v53 = v52;
        }

        v54 = &v49[2 * v47[1]] + (v53 & 0xFFFFFFFFFFFFFFC0);
        *(v54 + 64) = v33;
        *(v54 + 72) = v32;
        v55 = v47[1];
        v56 = v55 + 7;
        if (v55 >= 0)
        {
          v56 = v47[1];
        }

        v57 = v56 >> 3;
        v58 = v55 - (v56 & 0xFFFFFFFFFFFFFFF8);
        if (v58 >= 0)
        {
          v59 = 1 << v58;
        }

        else
        {
          v59 = 0;
        }

        *(v49 + v57) |= v59;
        v27 = __OFADD__(v55, 1);
        v60 = v55 + 1;
        if (v27)
        {
          __break(1u);
          goto LABEL_65;
        }

        v47[1] = v60;
        sub_21B261664(v64, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        sub_21B261664(&v70, &qword_27CD7E500, &qword_21B352660);
        v4 = v31;
        goto LABEL_3;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v69);
    }

    sub_21B261664(&v70, &qword_27CD7E500, &qword_21B352660);
    v11 = *(&v73 + 1);
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
      goto LABEL_77;
    }

    v14 = *(v13 + 8);
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v11 + 16);
      if (!result)
      {
        goto LABEL_79;
      }

      v16 = *result;
      if (*result < v15)
      {
        if (v16 + 0x4000000000000000 < 0)
        {
          goto LABEL_73;
        }

        v17 = 2 * v16;
        if (v17 <= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        v19 = *(v11 + 24);
        sub_21B2AFD1C(result, v18, &v70);
        v20 = *(v11 + 24);
        sub_21B2B0954(*(v11 + 16));
        *(v11 + 16) = v70;
      }
    }

    else
    {
      result = swift_beginAccess();
      v21 = *(v11 + 16);
      if (!v21)
      {
        goto LABEL_80;
      }

      v22 = *v21;
      if (*v21 < v15)
      {
        if (v22 + 0x4000000000000000 < 0)
        {
          goto LABEL_74;
        }

        if (2 * v22 <= v15)
        {
          v22 = v15;
        }

        else
        {
          v22 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
      v23 = swift_allocObject();
      v24 = *(v11 + 24);
      sub_21B2AEFEC(v21, v22, &v70);
      *(v23 + 16) = v70;

      *(&v73 + 1) = v23;
      v11 = v23;
    }

    result = swift_beginAccess();
    v25 = *(v11 + 16);
    if (!v25)
    {
      goto LABEL_78;
    }

    v26 = *(v25 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_69;
    }

    *(v25 + 16) = v28;
    v29 = *(v25 + 8);
    v27 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v27)
    {
      goto LABEL_70;
    }

    *(v25 + 8) = v30;
    sub_21B261664(v64, &qword_27CD7E500, &qword_21B352660);
LABEL_3:
    ++v6;
    if (!--v5)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_21B2C5074(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v75 = v3;
  *&v76 = v4;

  *(&v76 + 1) = sub_21B260F5C(MEMORY[0x277D84F90]);
  sub_21B2FD7B0(0);
  v59 = v1;
  sub_21B2348E0(v59 + 32, v59 + 88);
  v63 = *(a1 + 16);
  if (!v63)
  {
LABEL_75:
    v56 = v75;
    *(&v65[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7A8, &unk_21B352690);
    v66 = &off_282CAA128;
    *&v65[0] = v56;
    *(v65 + 8) = v76;
    sub_21B2339B4(v65, v59 + 88);
    return 1;
  }

  v5 = 0;
  v62 = a1 + 32;
  v60 = v4;
  v61 = v3;
  while (1)
  {
    v6 = *(v62 + 8 * v5);
    if (*(v6 + 16))
    {
      v7 = *(v62 + 8 * v5);

      v8 = sub_21B24B534(v3, v4);
      if (v9)
      {
        sub_21B2616C4(*(v6 + 56) + 32 * v8, v65);

        goto LABEL_9;
      }
    }

    memset(v65, 0, sizeof(v65));
LABEL_9:
    sub_21B2615FC(v65, &v73, &qword_27CD7E500, &qword_21B352660);
    if (!v74)
    {
      goto LABEL_12;
    }

    sub_21B2615FC(&v73, v72, &qword_27CD7E500, &qword_21B352660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
    sub_21B2735AC();
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7A0, &unk_21B354C60);
      if (!swift_dynamicCast())
      {
        sub_21B261664(v65, &qword_27CD7E500, &qword_21B352660);

        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        sub_21B261664(&v73, &qword_27CD7E500, &qword_21B352660);
        return 0;
      }

      v27 = v71;
      v28 = *(v71 + 16);
      if (!v28)
      {

        v29 = MEMORY[0x277D84F90];
LABEL_47:
        v36 = *(&v76 + 1);
        result = swift_beginAccess();
        v37 = *(v36 + 16);
        if (!v37)
        {
          goto LABEL_91;
        }

        v38 = *(v37 + 8);
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_80;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          result = *(v36 + 16);
          if (!result)
          {
            goto LABEL_93;
          }

          v40 = *result;
          if (*result < v39)
          {
            if (v40 + 0x4000000000000000 < 0)
            {
              goto LABEL_85;
            }

            v41 = 2 * v40;
            if (v41 <= v39)
            {
              v42 = v39;
            }

            else
            {
              v42 = v41;
            }

            sub_21B2B4364(v69, result, *(v36 + 24), v42);
            sub_21B2B0C0C(*(v36 + 16), *(v36 + 24));
            *(v36 + 16) = v69[0];
          }
        }

        else
        {
          result = swift_beginAccess();
          v43 = *(v36 + 16);
          if (!v43)
          {
            goto LABEL_94;
          }

          v44 = *v43;
          if (*v43 < v39)
          {
            if (v44 + 0x4000000000000000 < 0)
            {
              goto LABEL_86;
            }

            if (2 * v44 <= v39)
            {
              v44 = v39;
            }

            else
            {
              v44 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
          v45 = swift_allocObject();
          sub_21B2B4360(v69, v43, *(v36 + 24), v44);
          *(v45 + 16) = v69[0];

          *(&v76 + 1) = v45;
          v36 = v45;
        }

        result = swift_beginAccess();
        v46 = *(v36 + 16);
        if (!v46)
        {
          goto LABEL_92;
        }

        v47 = *v46 + 7;
        if (__OFADD__(*v46, 7))
        {
          goto LABEL_81;
        }

        v48 = v46 + 8;
        if (v47 < 0)
        {
          v47 = *v46 + 14;
        }

        v49 = v47 >> 3;
        v51 = v49 - 1;
        v50 = v49 < 1;
        v52 = v49 + 62;
        if (!v50)
        {
          v52 = v51;
        }

        v53 = v46[1];
        *(&v48[v53 + 8] + (v52 & 0xFFFFFFFFFFFFFFC0)) = v29;
        v54 = v53 - (v52 & 0xFFFFFFFFFFFFFFF8);
        if (v54 >= 0)
        {
          v55 = 1 << v54;
        }

        else
        {
          v55 = 0;
        }

        *(v48 + v53 / 8) |= v55;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_82;
        }

        v46[1] = v53 + 1;
        sub_21B261664(v65, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        sub_21B261664(&v73, &qword_27CD7E500, &qword_21B352660);
        v4 = v60;
        v3 = v61;
        goto LABEL_3;
      }

      v70 = MEMORY[0x277D84F90];
      sub_21B254308(0, v28, 0);
      v29 = v70;
      v30 = v27 + 32;
      while (2)
      {
        sub_21B2615FC(v30, v69, &qword_27CD7E500, &qword_21B352660);
        sub_21B2615FC(v69, v67, &qword_27CD7E500, &qword_21B352660);
        if (v68)
        {
          if (swift_dynamicCast())
          {
            sub_21B261664(v69, &qword_27CD7E500, &qword_21B352660);

            v31 = 0uLL;
            v32 = 0uLL;
            goto LABEL_42;
          }
        }

        else
        {
          sub_21B261664(v67, &qword_27CD7E500, &qword_21B352660);
        }

        v31 = v69[0];
        v32 = v69[1];
LABEL_42:
        v70 = v29;
        v34 = *(v29 + 16);
        v33 = *(v29 + 24);
        if (v34 >= v33 >> 1)
        {
          v57 = v32;
          v58 = v31;
          sub_21B254308((v33 > 1), v34 + 1, 1);
          v32 = v57;
          v31 = v58;
          v29 = v70;
        }

        *(v29 + 16) = v34 + 1;
        v35 = v29 + 32 * v34;
        *(v35 + 32) = v31;
        *(v35 + 48) = v32;
        v30 += 32;
        if (!--v28)
        {

          goto LABEL_47;
        }

        continue;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v72);
LABEL_12:
    sub_21B261664(&v73, &qword_27CD7E500, &qword_21B352660);
    v10 = *(&v76 + 1);
    result = swift_beginAccess();
    v12 = *(v10 + 16);
    if (!v12)
    {
      goto LABEL_87;
    }

    v13 = *(v12 + 8);
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v10 + 16);
      if (!result)
      {
        goto LABEL_89;
      }

      v15 = *result;
      if (*result < v14)
      {
        if (v15 + 0x4000000000000000 < 0)
        {
          goto LABEL_83;
        }

        v16 = 2 * v15;
        if (v16 <= v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v16;
        }

        sub_21B2B4364(&v73, result, *(v10 + 24), v17);
        sub_21B2B0C0C(*(v10 + 16), *(v10 + 24));
        *(v10 + 16) = v73;
      }
    }

    else
    {
      result = swift_beginAccess();
      v18 = *(v10 + 16);
      if (!v18)
      {
        goto LABEL_90;
      }

      v19 = *v18;
      if (*v18 < v14)
      {
        if (v19 + 0x4000000000000000 < 0)
        {
          goto LABEL_84;
        }

        if (2 * v19 <= v14)
        {
          v19 = v14;
        }

        else
        {
          v19 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
      v20 = swift_allocObject();
      sub_21B2B4360(&v73, v18, *(v10 + 24), v19);
      *(v20 + 16) = v73;

      *(&v76 + 1) = v20;
      v10 = v20;
    }

    result = swift_beginAccess();
    v21 = *(v10 + 16);
    if (!v21)
    {
      goto LABEL_88;
    }

    v22 = *(v21 + 16);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_78;
    }

    *(v21 + 16) = v24;
    v25 = *(v21 + 8);
    v23 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v23)
    {
      goto LABEL_79;
    }

    *(v21 + 8) = v26;
    sub_21B261664(v65, &qword_27CD7E500, &qword_21B352660);
LABEL_3:
    if (++v5 == v63)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}