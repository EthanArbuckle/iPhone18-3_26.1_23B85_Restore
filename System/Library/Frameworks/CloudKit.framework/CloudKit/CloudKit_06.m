uint64_t sub_188478880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

Swift::Int sub_1884788F8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v10[0] = (v9 + 32);
      v10[1] = v8;
      sub_188478B80(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1884789FC(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1884789FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v8 = a3;
    v9 = *v4;
    v10 = *v4 + 40 * a3 - 40;
    v11 = result - a3;
LABEL_4:
    v12 = (v9 + 40 * v8);
    v13 = *v12;
    v14 = *(v12 + 1);
    result = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = *(v12 + 4);
    v25 = v11;
    v36 = v10;
    while (1)
    {
      v31[0] = v13;
      v32 = v14;
      v33 = result;
      v34 = v15;
      v35 = v16;
      v17 = *(v10 + 8);
      v18 = *(v10 + 16);
      v19 = *(v10 + 24);
      v20 = *(v10 + 32);
      v26[0] = *v10;
      v27 = v17;
      v28 = v18;
      v29 = v19;
      v30 = v20;

      v21 = a4(v31, v26);

      if (v6)
      {
        break;
      }

      if (v21)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 40);
        v14 = *(v10 + 48);
        result = *(v10 + 56);
        v22 = *(v10 + 16);
        *(v10 + 40) = *v10;
        v15 = *(v10 + 64);
        v16 = *(v10 + 72);
        *(v10 + 56) = v22;
        *(v10 + 72) = *(v10 + 32);
        *v10 = v13;
        *(v10 + 8) = v14;
        *(v10 + 16) = result;
        *(v10 + 24) = v15;
        *(v10 + 32) = v16;
        v10 -= 40;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      ++v8;
      v10 = v36 + 40;
      v11 = v25 - 1;
      if (v8 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_188478B80(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v149 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v136 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_95;
    }

    goto LABEL_136;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_23;
    }

    v136 = v8;
    v130 = v10;
    v13 = *a3;
    v14 = *a3 + 40 * v12;
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v144[0] = *v14;
    v145 = v16;
    v146 = v15;
    v147 = v17;
    v148 = v18;
    v19 = (v13 + 40 * v11);
    v20 = *(v19 + 1);
    v21 = *(v19 + 2);
    v22 = *(v19 + 3);
    v23 = *(v19 + 4);
    v139[0] = *v19;
    v140 = v20;
    v141 = v21;
    v142 = v22;
    v143 = v23;

    v24 = a4(v144, v139);
    if (v7)
    {
LABEL_104:

      goto LABEL_105;
    }

    v25 = v24;

    v133 = 40 * v11;
    v26 = (v13 + 40 * v11 + 112);
    v128 = v11;
    v27 = v11 + 2;
    v28 = v136;
    do
    {
      v29 = v12;
      v30 = v27;
      if (v12 + 1 >= v28)
      {
        v12 = v28;
        if ((v25 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_9:
        if (v12 >= v128)
        {
          v39 = v128 <= v29;
          v10 = v130;
          v11 = v128;
          if (v39)
          {
            if (v28 >= v30)
            {
              v40 = v30;
            }

            else
            {
              v40 = v28;
            }

            v41 = 40 * v40 - 16;
            v42 = v133 + 32;
            v43 = v12;
            v44 = v128;
            do
            {
              if (v44 != --v43)
              {
                v45 = *a3;
                if (!*a3)
                {
                  goto LABEL_134;
                }

                v46 = (v45 + v42);
                v47 = *(v45 + v42 - 32);
                v48 = (v45 + v41);
                v49 = *(v46 - 3);
                v50 = *(v46 - 1);
                v51 = *v46;
                v52 = v48[1];
                v53 = *(v48 - 1);
                *(v46 - 2) = *(v48 - 3);
                *(v46 - 1) = v53;
                *v46 = v52;
                *(v48 - 24) = v47;
                *(v48 - 1) = v49;
                *v48 = v50;
                v48[1] = v51;
              }

              ++v44;
              v41 -= 40;
              v42 += 40;
            }

            while (v44 < v43);
          }

          goto LABEL_23;
        }

        goto LABEL_130;
      }

      v32 = *(v26 - 3);
      v31 = *(v26 - 2);
      v33 = *(v26 - 1);
      v34 = *v26;
      v144[0] = *(v26 - 32);
      v145 = v32;
      v146 = v31;
      v147 = v33;
      v148 = v34;
      v35 = *(v26 - 8);
      v36 = *(v26 - 7);
      v37 = *(v26 - 6);
      v38 = *(v26 - 5);
      v139[0] = *(v26 - 72);
      v140 = v35;
      v141 = v36;
      v142 = v37;
      v143 = v38;

      LODWORD(v36) = a4(v144, v139);

      v26 += 5;
      v12 = v29 + 1;
      v27 = v30 + 1;
      v28 = v136;
    }

    while (((v25 ^ v36) & 1) == 0);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_22:
    v11 = v128;
    v10 = v130;
LABEL_23:
    v54 = a3[1];
    if (v12 < v54)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_126;
      }

      if (v12 - v11 < a6)
      {
        if (__OFADD__(v11, a6))
        {
          __break(1u);
        }

        else
        {
          if (v11 + a6 >= v54)
          {
            v55 = a3[1];
          }

          else
          {
            v55 = v11 + a6;
          }

          if (v55 >= v11)
          {
            if (v12 != v55)
            {
              v129 = v11;
              v131 = v10;
              v97 = *a3;
              v98 = *a3 + 40 * v12 - 40;
              v99 = (v129 - v12);
              v126 = v55;
              do
              {
                v135 = v12;
                v136 = v99;
                v100 = (v97 + 40 * v12);
                v101 = *v100;
                v103 = *(v100 + 1);
                v102 = *(v100 + 2);
                v104 = *(v100 + 3);
                v105 = *(v100 + 4);
                v106 = v98;
                v107 = v98;
                do
                {
                  v144[0] = v101;
                  v145 = v103;
                  v146 = v102;
                  v147 = v104;
                  v148 = v105;
                  v108 = *(v107 + 8);
                  v109 = *(v107 + 16);
                  v110 = *(v107 + 24);
                  v111 = *(v107 + 32);
                  v139[0] = *v107;
                  v140 = v108;
                  v141 = v109;
                  v142 = v110;
                  v143 = v111;

                  v112 = a4(v144, v139);
                  if (v7)
                  {
                    goto LABEL_104;
                  }

                  v113 = v112;

                  if ((v113 & 1) == 0)
                  {
                    break;
                  }

                  if (!v97)
                  {
                    goto LABEL_133;
                  }

                  v101 = *(v107 + 40);
                  v103 = *(v107 + 48);
                  v102 = *(v107 + 56);
                  v114 = *(v107 + 16);
                  *(v107 + 40) = *v107;
                  v104 = *(v107 + 64);
                  v105 = *(v107 + 72);
                  *(v107 + 56) = v114;
                  *(v107 + 72) = *(v107 + 32);
                  *v107 = v101;
                  *(v107 + 8) = v103;
                  *(v107 + 16) = v102;
                  *(v107 + 24) = v104;
                  *(v107 + 32) = v105;
                  v107 -= 40;
                }

                while (!__CFADD__(v99++, 1));
                v12 = v135 + 1;
                v98 = v106 + 40;
                v99 = v136 - 1;
              }

              while (v135 + 1 != v126);
              v12 = v126;
              v11 = v129;
              v10 = v131;
            }

            goto LABEL_32;
          }
        }

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
        goto LABEL_135;
      }
    }

LABEL_32:
    if (v12 < v11)
    {
      goto LABEL_125;
    }

    v134 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = *(v10 + 2);
      sub_188476DA8();
      v10 = v117;
    }

    v56 = *(v10 + 2);
    v57 = v56 + 1;
    if (v56 >= *(v10 + 3) >> 1)
    {
      sub_188476DA8();
      v10 = v118;
    }

    *(v10 + 2) = v57;
    v58 = v10 + 32;
    v59 = &v10[16 * v56 + 32];
    *v59 = v11;
    *(v59 + 1) = v134;
    v136 = *a1;
    if (!*a1)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      return;
    }

    if (v56)
    {
      break;
    }

LABEL_81:
    v8 = a3[1];
    v9 = v134;
    if (v134 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v60 = v57 - 1;
    v61 = &v58[16 * v57 - 16];
    v62 = &v10[16 * v57];
    if (v57 >= 4)
    {
      v67 = &v58[16 * v57];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_113;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_114;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_116;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_119;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_124;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v57 == 3)
    {
      v63 = *(v10 + 4);
      v64 = *(v10 + 5);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_52:
      if (v66)
      {
        goto LABEL_115;
      }

      v78 = *v62;
      v77 = *(v62 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_118;
      }

      v82 = *(v61 + 1);
      v83 = v82 - *v61;
      if (__OFSUB__(v82, *v61))
      {
        goto LABEL_121;
      }

      if (__OFADD__(v80, v83))
      {
        goto LABEL_123;
      }

      if (v80 + v83 >= v65)
      {
        if (v65 < v83)
        {
          v60 = v57 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v57 < 2)
    {
      goto LABEL_117;
    }

    v85 = *v62;
    v84 = *(v62 + 1);
    v73 = __OFSUB__(v84, v85);
    v80 = v84 - v85;
    v81 = v73;
LABEL_67:
    if (v81)
    {
      goto LABEL_120;
    }

    v87 = *v61;
    v86 = *(v61 + 1);
    v73 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v73)
    {
      goto LABEL_122;
    }

    if (v88 < v80)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v60 - 1 >= v57)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_131;
    }

    v92 = &v58[16 * v60 - 16];
    v93 = *v92;
    v94 = &v58[16 * v60];
    v95 = *(v94 + 1);
    sub_188479388((*a3 + 40 * *v92), (*a3 + 40 * *v94), *a3 + 40 * v95, v136, a4);
    if (v7)
    {
      goto LABEL_105;
    }

    if (v95 < v93)
    {
      goto LABEL_107;
    }

    v96 = v10;
    v10 = *(v10 + 2);
    if (v60 > v10)
    {
      goto LABEL_108;
    }

    *v92 = v93;
    *(v92 + 1) = v95;
    if (v60 >= v10)
    {
      goto LABEL_109;
    }

    v57 = (v10 - 1);
    sub_18851423C(v94 + 16, &v10[-v60 - 1], &v58[16 * v60]);
    *(v96 + 2) = v10 - 1;
    v39 = v10 > 2;
    v10 = v96;
    if (!v39)
    {
      goto LABEL_81;
    }
  }

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
  v10 = sub_188514144(v10);
LABEL_95:
  v119 = v10 + 16;
  v120 = *(v10 + 2);
  while (v120 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_132;
    }

    v121 = v10;
    v10 += 16 * v120;
    v122 = *v10;
    v123 = &v119[2 * v120];
    v124 = *(v123 + 1);
    sub_188479388((*a3 + 40 * *v10), (*a3 + 40 * *v123), *a3 + 40 * v124, v136, a4);
    if (v7)
    {
      break;
    }

    if (v124 < v122)
    {
      goto LABEL_110;
    }

    if (v120 - 2 >= *v119)
    {
      goto LABEL_111;
    }

    *v10 = v122;
    *(v10 + 1) = v124;
    v125 = *v119 - v120;
    if (*v119 < v120)
    {
      goto LABEL_112;
    }

    v120 = *v119 - 1;
    sub_18851423C(v123 + 16, v125, v123);
    *v119 = v120;
    v10 = v121;
  }

LABEL_105:
}

uint64_t sub_188479388(char *__src, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(char *, char *))
{
  v6 = v5;
  v7 = a4;
  v8 = a2;
  v9 = (a2 - __src) / 40;
  v66 = a3;
  v10 = (a3 - a2) / 40;
  if (v9 < v10)
  {
    v11 = a4 == __src && &__src[40 * v9] > a4;
    v12 = __src;
    if (!v11)
    {
      memmove(a4, __src, 40 * v9);
    }

    v13 = &v7[40 * v9];
    while (1)
    {
      if (v7 >= v13 || v8 >= v66)
      {
        v8 = v12;
        goto LABEL_40;
      }

      v16 = *(v8 + 1);
      v15 = *(v8 + 2);
      v17 = *(v8 + 3);
      v18 = *(v8 + 4);
      v73[0] = *v8;
      v74 = v16;
      v75 = v15;
      v76 = v17;
      v77 = v18;
      v19 = *(v7 + 1);
      v20 = *(v7 + 2);
      v21 = *(v7 + 3);
      v22 = *(v7 + 4);
      v68[0] = *v7;
      v69 = v19;
      v70 = v20;
      v71 = v21;
      v72 = v22;

      v23 = a5(v73, v68);
      if (v6)
      {

        v56 = (v13 - v7) / 40;
        v57 = v12 < v7 || v12 >= &v7[40 * v56];
        if (v57 || v12 != v7)
        {
          v54 = 40 * v56;
          v55 = v12;
LABEL_52:
          v58 = v7;
LABEL_53:
          memmove(v55, v58, v54);
        }

        return 1;
      }

      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = v8;
      v26 = v12 == v8;
      v8 += 40;
      if (!v26)
      {
        goto LABEL_18;
      }

LABEL_19:
      v12 += 40;
    }

    v25 = v7;
    v26 = v12 == v7;
    v7 += 40;
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_18:
    v27 = *v25;
    v28 = *(v25 + 1);
    *(v12 + 4) = *(v25 + 4);
    *v12 = v27;
    *(v12 + 1) = v28;
    goto LABEL_19;
  }

  v78 = v5;
  if (a4 != a2 || &a2[40 * v10] <= a4)
  {
    memmove(a4, a2, 40 * v10);
  }

  v64 = v7;
  v65 = &v7[40 * v10];
LABEL_26:
  v30 = 0;
  v62 = v8 - 40;
  v31 = __src;
  while (1)
  {
    v13 = &v65[v30];
    v32 = &v65[v30] > v64 && v8 > v31;
    v33 = v66;
    if (!v32)
    {
      v7 = v64;
LABEL_40:
      v52 = (v13 - v7) / 40;
      v53 = v8 < v7 || v8 >= &v7[40 * v52];
      if (v53 || v8 != v7)
      {
        v54 = 40 * v52;
        v55 = v8;
        goto LABEL_52;
      }

      return 1;
    }

    v35 = *(v13 - 4);
    v34 = *(v13 - 3);
    v36 = *(v13 - 2);
    v37 = *(v13 - 1);
    v73[0] = *(v13 - 40);
    v74 = v35;
    v75 = v34;
    v76 = v36;
    v77 = v37;
    v38 = *(v8 - 4);
    v39 = *(v8 - 3);
    v40 = *(v8 - 2);
    v41 = *(v8 - 1);
    v68[0] = *(v8 - 40);
    v69 = v38;
    v70 = v39;
    v71 = v40;
    v72 = v41;

    v42 = v78;
    v43 = a5(v73, v68);
    v78 = v42;
    if (v42)
    {
      break;
    }

    v44 = v43;
    v45 = v8;
    v46 = (v66 + v30);
    v47 = (v66 + v30 - 40);

    if (v44)
    {
      v65 += v30;
      v66 = v66 + v30 - 40;
      v26 = v46 == v45;
      v8 = v62;
      if (!v26)
      {
        v50 = *v62;
        v51 = *(v62 + 1);
        *(v33 + v30 - 8) = *(v62 + 4);
        *v47 = v50;
        *(v33 + v30 - 24) = v51;
        v8 = v62;
        v66 = v33 + v30 - 40;
      }

      goto LABEL_26;
    }

    v31 = __src;
    if (v13 != (v66 + v30))
    {
      v48 = *(v13 - 40);
      v49 = *(v13 - 24);
      *(v66 + v30 - 8) = *(v13 - 1);
      *v47 = v48;
      *(v66 + v30 - 24) = v49;
    }

    v30 -= 40;
    v8 = v45;
  }

  v58 = v64;
  v60 = (v65 - v64 + v30) / 40;
  if (v8 < v64 || v8 >= &v64[40 * v60])
  {
    memmove(v8, v64, 40 * v60);
  }

  else if (v8 != v64)
  {
    v54 = 40 * v60;
    v55 = v8;
    goto LABEL_53;
  }

  return 1;
}

uint64_t sub_1884797C0(void *a1)
{
  v1 = [a1 supportedDeviceCapabilities];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CKDeviceCapability(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_188479820(void *a1)
{
  v1 = [a1 desiredCapabilitySets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_18844E6FC(&qword_1EA90D5E0, &qword_1886F8068);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_18847988C(void *a1)
{
  v1 = [a1 zoneIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884798FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x18CFD5EB0](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      MEMORY[0x18CFD5EB0](*(v5 - 32) + 1);

      String.hash(into:)();
      String.hash(into:)();

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1884799AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188479A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_188479A6C()
{
  result = qword_1EA90D5E8;
  if (!qword_1EA90D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D5E8);
  }

  return result;
}

unint64_t sub_188479AC4()
{
  result = qword_1EA90D5F0;
  if (!qword_1EA90D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D5F0);
  }

  return result;
}

unint64_t sub_188479B1C()
{
  result = qword_1EA90D5F8;
  if (!qword_1EA90D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D5F8);
  }

  return result;
}

unint64_t sub_188479B74()
{
  result = qword_1EA90D600;
  if (!qword_1EA90D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D600);
  }

  return result;
}

unint64_t sub_188479BFC()
{
  result = qword_1EA90D610;
  if (!qword_1EA90D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D610);
  }

  return result;
}

unint64_t sub_188479C98()
{
  result = qword_1EA90D628;
  if (!qword_1EA90D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D628);
  }

  return result;
}

unint64_t sub_188479CF0()
{
  result = qword_1EA90D630;
  if (!qword_1EA90D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D630);
  }

  return result;
}

uint64_t sub_188479DC0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D620, &qword_1886F81E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_188479E3C()
{
  result = qword_1EA90D648;
  if (!qword_1EA90D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D648);
  }

  return result;
}

uint64_t sub_188479ED0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D308, &unk_1886F75A0);
    sub_188479BFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188479FD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18847A01C()
{
  result = qword_1EA90D670;
  if (!qword_1EA90D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D670);
  }

  return result;
}

unint64_t sub_18847A074()
{
  result = qword_1EA90D678;
  if (!qword_1EA90D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D678);
  }

  return result;
}

uint64_t sub_18847A0C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18847A108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CKDeviceCapability.Level(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18847A24C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18847A2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKDeviceCapabilityCheckResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CKDeviceCapabilityCheckResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18847A488(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_18847A4C0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_18847A4EC()
{
  result = qword_1EA90CAE0;
  if (!qword_1EA90CAE0)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90CAE0);
  }

  return result;
}

uint64_t sub_18847A544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t CKDeviceCapability.wrapped.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped);
  v3 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 8);
  v4 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);
  v5 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 24);
  v6 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 32);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_18847A544(v2, v3, v4);
}

void __swiftcall CKDeviceCapabilityCheckOptions.init(_:)(CKDeviceCapabilityCheckOptions *__return_ptr retstr, CloudKit::CKDeviceCapabilityCheckOptions *a2)
{
  excludeDevicesWithoutCapabilityCheckingSupport = a2->excludeDevicesWithoutCapabilityCheckingSupport;
  v3 = *(&a2->_excludeZoneAccessBefore.value.super.isa + 7);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init] + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  swift_beginAccess();
  v5 = *(v4 + 1);
  *v4 = excludeDevicesWithoutCapabilityCheckingSupport;
  *(v4 + 1) = v3;
}

id CKDeviceCapabilityCheckOptions.wrapped.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped);
  sub_1883FE5A0();
  v4 = *(v3 + 1);
  *a1 = *v3;
  a1[1] = v4;

  return v4;
}

id CKDeviceCapability.init(level:name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1883F999C();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = MEMORY[0x18CFD5010](v7, v6);

  v12 = MEMORY[0x18CFD5010](v5, a5);

  v13 = [v10 initWithLevel:v8 name:v11 value:v12];

  return v13;
}

char *CKDeviceCapability.init(level:name:value:)()
{
  sub_1883F999C();
  v2 = [v1 init];
  v3 = (v0 - 1);
  if (v3 >= 3)
  {
  }

  else
  {
    sub_1883F99B0();
    sub_1883F99B0();
    sub_1883F8B50();
    sub_188440388();
    v5 = v4;
    v7 = v6;

    sub_188440388();
    v9 = v8;
    v11 = v10;

    v12 = &v2[OBJC_IVAR___CKDeviceCapability__wrapped];
    v13 = *&v2[OBJC_IVAR___CKDeviceCapability__wrapped];
    v14 = *&v2[OBJC_IVAR___CKDeviceCapability__wrapped + 8];
    v15 = *&v2[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
    v16 = *&v2[OBJC_IVAR___CKDeviceCapability__wrapped + 24];
    v17 = *&v2[OBJC_IVAR___CKDeviceCapability__wrapped + 32];
    *v12 = v3;
    *(v12 + 1) = v5;
    *(v12 + 2) = v7;
    *(v12 + 3) = v9;
    *(v12 + 4) = v11;
    sub_1884406C8(v13, v14, v15);
  }

  return v2;
}

uint64_t CKDeviceCapability.level.getter()
{
  if (*(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16))
  {
    return *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped) + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_18847AA78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6576656CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18847AB80(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&unk_1EA90D838, &qword_1886F8838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_1884401E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v17[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    v17[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18847AD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18847AA78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18847AD34(uint64_t a1)
{
  v2 = sub_1884401E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18847AD70(uint64_t a1)
{
  v2 = sub_1884401E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18847ADAC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_18847AB80(a1);
}

Swift::String __swiftcall CKDeviceCapability.sqliteRepresentation()()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = sub_1883F8AE4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = JSONEncoder.init()();
  v10 = (v0 + OBJC_IVAR___CKDeviceCapability__wrapped);
  if (*(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16))
  {
    v18 = *v10 + 1;
    v19 = v10[1];
    v20 = *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);
    v21 = v10[3];
    v22 = v10[4];
    sub_18847AFD0();

    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v13 = v12;

    static String.Encoding.utf8.getter();
    v14 = String.init(data:encoding:)();
    v16 = v15;
    sub_188423CCC(v11, v13);

    if (!v16)
    {
      v16 = 0x80000001886FFD10;
      v14 = 0xD000000000000034;
    }

    v8 = v14;
    v9 = v16;
  }

  else
  {
    __break(1u);
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_18847AFD0()
{
  result = qword_1EA90C148;
  if (!qword_1EA90C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C148);
  }

  return result;
}

char *static CKDeviceCapability.sqliteRepresentations(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v4 = sub_1883FE594();
  result = sub_18840489C(v4, v5, v6);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v3 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_1883F958C();
        v10 = MEMORY[0x18CFD59D0](v9);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 sqliteRepresentation];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = sub_1883F8DD4(v16);
        sub_18840489C(v19, v17 + 1, 1);
      }

      ++v8;
      *(v20 + 16) = v17 + 1;
      v18 = v20 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v2 != v8);
    return v3;
  }

  __break(1u);
  return result;
}

void static CKDeviceCapability.isCapabilitySet(_:equalTo:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1883F4C9C(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1883FE594();
    sub_188477824();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v5 = v37;
      sub_1883F7EA8();
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v32)
        {
          v8 = MEMORY[0x18CFD59D0](v7, a1);
        }

        else
        {
          sub_1883F83E8(v30);
          if (v9)
          {
            goto LABEL_28;
          }

          v8 = sub_18840AE2C(a1);
        }

        v10 = v8;
        sub_1883FB514(v8, OBJC_IVAR___CKDeviceCapability__wrapped);
        if (!v3)
        {
          goto LABEL_32;
        }

        v12 = *(v11 + 1);
        v13 = *(v11 + 4);
        v35 = *(v11 + 3);
        v14 = *v11;

        sub_1883FA084();
        if (v9)
        {
          sub_1883F8DD4(v15);
          sub_188405690();
        }

        sub_1883F91A8();
        *(v16 + 32) = v14;
        *(v16 + 40) = v12;
        *(v16 + 48) = v3;
        *(v16 + 56) = v35;
        *(v16 + 64) = v13;
        ++v7;
        if (v2 == v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v17 = sub_188471390(v5);

  v18 = sub_1883F4C9C(a2);
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
LABEL_26:
    sub_188471390(v19);
    sub_1883F793C();

    sub_18847299C(v17, v2);

    return;
  }

  v20 = v18;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1883FE594();
  sub_188477824();
  if (v20 < 0)
  {
    goto LABEL_31;
  }

  v19 = v38;
  v31 = v17;
  while (1)
  {
    v2 = 1;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x18CFD59D0](0, a2);
    }

    else
    {
      sub_1883F83E8(a2 & 0xFFFFFFFFFFFFFF8);
      if (v9)
      {
        goto LABEL_29;
      }

      v21 = sub_18840AE2C(a2);
    }

    v22 = v21;
    sub_1883FB514(v21, OBJC_IVAR___CKDeviceCapability__wrapped);
    if (!v3)
    {
      break;
    }

    v36 = *(v23 + 1);
    v25 = *(v23 + 3);
    v24 = *(v23 + 4);
    v26 = *v23;

    sub_1883FA084();
    if (v9)
    {
      sub_1883F8DD4(v27);
      sub_188405690();
    }

    sub_1883F91A8();
    *(v28 + 32) = v26;
    sub_1884007D8(v28);
    if (v29)
    {
      v17 = v31;
      goto LABEL_26;
    }
  }

LABEL_33:
  __break(1u);
}

void static CKDeviceCapability.isCapabilitySet(_:subsetOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1883F4C9C(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1883FE594();
    sub_188477824();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v5 = v36;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x18CFD59D0](v7, a1);
        }

        else
        {
          sub_1883F83E8(a1 & 0xFFFFFFFFFFFFFF8);
          if (v9)
          {
            goto LABEL_28;
          }

          v8 = sub_18840AE2C(a1);
        }

        v10 = v8;
        sub_1883FB514(v8, OBJC_IVAR___CKDeviceCapability__wrapped);
        if (!v3)
        {
          goto LABEL_32;
        }

        v12 = *(v11 + 1);
        v13 = *(v11 + 4);
        v33 = *(v11 + 3);
        v14 = *v11;

        v36 = v5;
        sub_1883FA084();
        if (v9)
        {
          sub_1883F8DD4(v15);
          sub_188405690();
          v5 = v36;
        }

        sub_1883F91A8();
        *(v16 + 32) = v14;
        *(v16 + 40) = v12;
        *(v16 + 48) = v3;
        *(v16 + 56) = v33;
        *(v16 + 64) = v13;
        ++v7;
        if (v2 == v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v17 = sub_188471390(v5);

  v18 = sub_1883F4C9C(a2);
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
LABEL_26:
    sub_188471390(v19);
    sub_1883F793C();

    v35 = v17;
    v36 = v2;
    CKDeviceCapabilitySet.contains(_:)(&v35);

    return;
  }

  v20 = v18;
  v36 = MEMORY[0x1E69E7CC0];
  sub_1883FE594();
  sub_188477824();
  if (v20 < 0)
  {
    goto LABEL_31;
  }

  v19 = v36;
  v30 = v17;
  while (1)
  {
    v2 = 1;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x18CFD59D0](0, a2);
    }

    else
    {
      sub_1883F83E8(a2 & 0xFFFFFFFFFFFFFF8);
      if (v9)
      {
        goto LABEL_29;
      }

      v21 = sub_18840AE2C(a2);
    }

    v22 = v21;
    sub_1883FB514(v21, OBJC_IVAR___CKDeviceCapability__wrapped);
    if (!v3)
    {
      break;
    }

    v34 = *(v23 + 1);
    v25 = *(v23 + 3);
    v24 = *(v23 + 4);
    v26 = *v23;

    v36 = v19;
    sub_1883FA084();
    if (v9)
    {
      sub_1883F8DD4(v27);
      sub_188405690();
      v19 = v36;
    }

    sub_1883F91A8();
    *(v28 + 32) = v26;
    sub_1884007D8(v28);
    if (v29)
    {
      v17 = v30;
      goto LABEL_26;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_18847B748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for CKDeviceCapability(a1);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_1883FD9FC();
  LOBYTE(a5) = a5(v7, a4);

  return a5 & 1;
}

void static CKDeviceCapability.pruneAndSort(_:)(uint64_t a1)
{
  v2 = sub_1883F4C9C(a1);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v1 = v2;
    *&v33.level = MEMORY[0x1E69E7CC0];
    sub_1883FE594();
    sub_188477824();
    if (v1 < 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v4 = 0;
    v5 = *&v33.level;
    sub_1883F7EA8();
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v30)
      {
        v7 = MEMORY[0x18CFD59D0](v4, a1);
      }

      else
      {
        if (v4 >= *(v29 + 16))
        {
          goto LABEL_26;
        }

        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = &v7[OBJC_IVAR___CKDeviceCapability__wrapped];
      v10 = *&v7[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
      if (!v10)
      {
        goto LABEL_29;
      }

      v11 = *(v9 + 1);
      v12 = *(v9 + 4);
      v32 = *(v9 + 3);
      v13 = *v9;

      *&v33.level = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1883F8DD4(v14);
        sub_188477824();
        v5 = *&v33.level;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 40 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v11;
      *(v16 + 48) = v10;
      *(v16 + 56) = v32;
      *(v16 + 64) = v12;
      ++v4;
      if (v6 == v1)
      {
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
  sub_188471390(v5);
  sub_1883F793C();

  v17 = sub_188473024(0, *(v1 + 16), v1);
  if (!v17)
  {

    return;
  }

  v18 = v17;
  v34 = v3;
  v19 = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v18 & 0x8000000000000000) == 0)
  {
    type metadata accessor for CKDeviceCapability(v19);
    v20 = 0;
    v21 = *(v1 + 16);
    v22 = (v1 + 64);
    while (v20 < *(v1 + 16))
    {
      v24 = *(v22 - 3);
      v23 = *(v22 - 2);
      v25 = *(v22 - 1);
      v26 = *v22;
      v33.level = *(v22 - 32);
      v33.name._countAndFlagsBits = v24;
      v33.name._object = v23;
      v33.value._countAndFlagsBits = v25;
      v33.value._object = v26;

      CKDeviceCapability.init(_:)(v27, &v33);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = *(v34 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v21 == v20)
      {
        goto LABEL_25;
      }

      ++v20;
      v22 += 5;
      if (v18 == v20)
      {

        return;
      }
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

Swift::Void __swiftcall CKDeviceCapability.encode(with:)(NSCoder with)
{
  v2 = (v1 + OBJC_IVAR___CKDeviceCapability__wrapped);
  if (!*(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v4 = *v2;
  v5 = NSStringFromSelector(sel_level);
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v6);
    sub_1883FD9FC();
  }

  [(objc_class *)with.super.isa encodeInteger:v4 + 1 forKey:v5];

  v7 = v2[2];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v2[1];
  v9 = v2[2];

  MEMORY[0x18CFD5010](v8, v7);
  sub_1883FD9FC();

  v10 = NSStringFromSelector(sel_name);
  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v11);
    sub_18840370C();
  }

  [(objc_class *)with.super.isa encodeObject:v8 forKey:v10];

  if (!v2[2])
  {
    goto LABEL_15;
  }

  v12 = v2[3];
  v13 = v2[4];

  MEMORY[0x18CFD5010](v12, v13);
  sub_1883FD9FC();

  v14 = NSStringFromSelector(sel_value);
  if (!v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = MEMORY[0x18CFD5010](v15);

    v14 = v16;
  }

  v17 = v14;
  [(objc_class *)with.super.isa encodeObject:v12 forKey:?];
}

id CKDeviceCapability.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___CKDeviceCapability__wrapped];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[4] = 0;
  v4 = NSStringFromSelector(sel_level);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v5);
    sub_18840370C();
  }

  v6 = [a1 decodeInt32ForKey_];

  v7 = v6 - 1;
  if (v7 >= 3)
  {
    goto LABEL_15;
  }

  v8 = NSStringFromSelector(sel_name);
  if (!v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v9);
    sub_18840370C();
  }

  v10 = [a1 decodeObjectForKey_];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {

LABEL_22:
    sub_18840E840(&v35, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_23;
  }

  if ((sub_188404F4C() & 1) == 0)
  {
LABEL_15:

LABEL_23:
    v28 = v3[3];
    v29 = v3[4];
    v30 = sub_1884406C8(*v3, v3[1], v3[2]);
    type metadata accessor for CKDeviceCapability(v30);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v11 = NSStringFromSelector(sel_value);
  if (!v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = MEMORY[0x18CFD5010](v12);
  }

  v13 = [a1 decodeObjectForKey_];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {

    goto LABEL_22;
  }

  if ((sub_188404F4C() & 1) == 0)
  {

    goto LABEL_23;
  }

  String.init<A>(_:)();
  v35 = v32[1];
  String.init<A>(_:)();
  sub_188440388();
  v15 = v14;
  v17 = v16;

  sub_188440388();
  v19 = v18;
  v21 = v20;

  v22 = *v3;
  v23 = v3[1];
  v24 = v3[2];
  v25 = v3[3];
  v26 = v3[4];
  *v3 = v7;
  v3[1] = v15;
  v3[2] = v17;
  v3[3] = v19;
  v3[4] = v21;
  sub_1884406C8(v22, v23, v24);
  v32[0].receiver = v1;
  v32[0].super_class = CKDeviceCapability;
  v27 = [(objc_super *)v32 init];

  return v27;
}

uint64_t CKDeviceCapability.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18847E0A0(a1, v72, &qword_1EA90DD10, &qword_1886F8770);
  if (!v73)
  {
    sub_18840E840(v72, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_13;
  }

  type metadata accessor for CKDeviceCapability(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v23 = 0;
    return v23 & 1;
  }

  v3 = v71;
  v4 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped);
  v5 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 8);
  v7 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);
  v6 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 24);
  v8 = *(v1 + OBJC_IVAR___CKDeviceCapability__wrapped + 32);
  v9 = *&v71[OBJC_IVAR___CKDeviceCapability__wrapped];
  v10 = *&v71[OBJC_IVAR___CKDeviceCapability__wrapped + 8];
  v11 = *&v71[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
  v12 = *&v71[OBJC_IVAR___CKDeviceCapability__wrapped + 24];
  v13 = *&v71[OBJC_IVAR___CKDeviceCapability__wrapped + 32];
  if (!v7)
  {
    v70 = 0;
    v27 = sub_1883F8788();
    sub_18847A544(v27, v28, 0);
    sub_1883F71E4();
    sub_18847A544(v29, v30, v31);

    if (!v11)
    {
      v32 = sub_1883F8788();
      sub_1884406C8(v32, v33, 0);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_12;
  }

  if (!v11)
  {
    v34 = sub_1883F9BD4();
    sub_18847A544(v34, v35, v36);
    sub_18847A544(v9, v10, 0);
    v37 = sub_1883F8788();
    sub_18847A544(v37, v38, v7);

    v70 = v7;

LABEL_12:
    v39 = sub_1883F8788();
    sub_1884406C8(v39, v40, v70);
    sub_1883F71E4();
    sub_1884406C8(v41, v42, v43);
    goto LABEL_13;
  }

  if (v9 != v4)
  {
    goto LABEL_6;
  }

  if (v5 == v10 && v7 == v11)
  {
    goto LABEL_20;
  }

  v46 = *&v71[OBJC_IVAR___CKDeviceCapability__wrapped + 8];
  v47 = *&v71[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
  v48 = *&v71[OBJC_IVAR___CKDeviceCapability__wrapped + 24];
  v49 = v6;
  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = v49;
  v12 = v48;
  v3 = v71;
  if (v50)
  {
LABEL_20:
    if (v6 == v12 && v8 == v13)
    {
      v58 = sub_1883F9BD4();
      sub_18847A544(v58, v59, v60);
      sub_1883FA338();
      sub_18847A544(v61, v62, v63);
      sub_1883F8788();
      sub_1883F7BD8();
      sub_18847A544(v64, v65, v66);

      sub_1883FA338();
      sub_1884406C8(v67, v68, v69);
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1883F7BD8();
      sub_18847A544(v52, v53, v54);
      sub_18847A544(v9, v10, v11);
      sub_1883F7BD8();
      sub_18847A544(v55, v56, v57);

      sub_1884406C8(v9, v10, v11);
    }
  }

  else
  {
LABEL_6:
    v14 = sub_1883F9BD4();
    sub_18847A544(v14, v15, v16);
    sub_1883F71E4();
    sub_18847A544(v17, v18, v19);
    sub_18847A544(v4, v5, v7);

    sub_1883F71E4();
    sub_1884406C8(v20, v21, v22);
    v23 = 0;
  }

  sub_1883F7BD8();
  sub_1884406C8(v24, v25, v26);
  return v23 & 1;
}

uint64_t CKDeviceCapability.hash.getter()
{
  v2 = *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped);
  v3 = *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);
  v4 = *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 32);
  sub_18844E6FC(&qword_1EA90D7A0, &qword_1886F8778);
  sub_18847E04C();
  return Optional<A>.hashValue.getter();
}

char *CKDeviceCapability.description.getter()
{
  v1 = &v0[OBJC_IVAR___CKDeviceCapability__wrapped];
  if (*&v0[OBJC_IVAR___CKDeviceCapability__wrapped + 16])
  {
    v3 = *(v1 + 3);
    v2 = *(v1 + 4);
    v5 = *v1;
    v4 = *(v1 + 1);
    v13.super_class = CKDeviceCapability;

    v6 = objc_msgSendSuper2(&v13, sel_description);
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v14 = v7;
    v15 = v9;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    v10 = String.init<A>(reflecting:)();
    MEMORY[0x18CFD5140](v10);

    return v14;
  }

  else
  {
    v16.receiver = v0;
    v16.super_class = CKDeviceCapability;
    v12 = objc_msgSendSuper2(&v16, sel_description);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8B50();

    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
    return v0;
  }
}

id sub_18847C5F4()
{
  v1 = v0;
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for Date();
  sub_1883F90F4(v11, 1, 1, v12);
  v19 = 0;
  sub_18847E0A0(v11, v8, &unk_1EA90D7B0, &dword_1886F8780);
  sub_18847E0A0(v8, v5, &unk_1EA90D7B0, &dword_1886F8780);
  if (sub_1883F971C(v5, 1, v12) == 1)
  {
    sub_18840E840(v8, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v11, &unk_1EA90D7B0, &dword_1886F8780);
    v13 = 0;
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18840E840(v8, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v11, &unk_1EA90D7B0, &dword_1886F8780);
    (*(*(v12 - 8) + 8))(v5, v12);
    v13 = v19;
  }

  v15 = &v1[OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped];
  *v15 = v13;
  *(v15 + 1) = isa;
  v18.receiver = v1;
  v18.super_class = CKDeviceCapabilityCheckOptions;
  return objc_msgSendSuper2(&v18, sel_init);
}

id CKDeviceCapabilityCheckOptions.init(excludeDevicesWithoutCapabilityCheckingSupport:excludeZoneAccessBefore:)(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  isa = 0;
  if (sub_1883F971C(a2, 1, v4) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_1883F7930(v4);
    (*(v6 + 8))(a2, v4);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithExcludeDevicesWithoutCapabilityCheckingSupport:a1 & 1 excludeZoneAccessBefore:isa];

  return v7;
}

void CKDeviceCapabilityCheckOptions.init(excludeDevicesWithoutCapabilityCheckingSupport:excludeZoneAccessBefore:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v7 = sub_1883F8AE4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28[-v13];
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v28[-v17];
  v19 = [v1 init];
  sub_18847E0A0(v3, v18, &unk_1EA90D7B0, &dword_1886F8780);
  v29 = v5;
  sub_18847E0A0(v18, v14, &unk_1EA90D7B0, &dword_1886F8780);
  sub_18847E0A0(v14, v11, &unk_1EA90D7B0, &dword_1886F8780);
  v20 = type metadata accessor for Date();
  v21 = sub_1883F971C(v11, 1, v20);
  v22 = v19;
  if (v21 == 1)
  {
    v23 = v5 & 1;
    sub_18840E840(v3, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v14, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v18, &unk_1EA90D7B0, &dword_1886F8780);
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18840E840(v3, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v14, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v18, &unk_1EA90D7B0, &dword_1886F8780);
    sub_1883F7930(v20);
    (*(v25 + 8))(v11, v20);
    v23 = v29;
  }

  v26 = &v22[OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped];
  swift_beginAccess();
  v27 = *(v26 + 1);
  *v26 = v23;
  *(v26 + 1) = isa;

  sub_1883F8178();
}

uint64_t CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.getter()
{
  v1 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v2 = sub_1883F8AE4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  v7 = v0 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  swift_beginAccess();
  if (*(v7 + 8))
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for Date();
  sub_1883F90F4(v6, v8, 1, v9);
  v10 = sub_1883F958C();
  sub_188412494(v10, v11);
  return swift_endAccess();
}

Swift::Void __swiftcall CKDeviceCapabilityCheckOptions.encode(with:)(NSCoder with)
{
  sub_1883F8AF0();
  v4 = v3;
  v5 = type metadata accessor for Date();
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8DE0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = (v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped);
  sub_1883FE5A0();
  v15 = *v14;
  v16 = NSStringFromSelector(sel_excludeDevicesWithoutCapabilityCheckingSupport);
  if (!v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = MEMORY[0x18CFD5010](v17);
  }

  [v4 encodeBool:v15 forKey:v16];

  swift_beginAccess();
  if (*(v14 + 1))
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v13, v2, v5);
    swift_endAccess();
    v18.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = NSStringFromSelector(sel_excludeZoneAccessBefore);
    if (!v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = MEMORY[0x18CFD5010](v20);
    }

    [v4 encodeObject:v18.super.isa forKey:v19];

    (*(v8 + 8))(v13, v5);
  }

  else
  {
    swift_endAccess();
  }

  sub_1883F8178();
}

void CKDeviceCapabilityCheckOptions.init(coder:)()
{
  sub_1883F8AF0();
  v2 = v0;
  v4 = v3;
  v5 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v6 = sub_1883F8AE4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8DE0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = NSStringFromSelector(sel_excludeDevicesWithoutCapabilityCheckingSupport);
  if (!v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v21);
    sub_1883FD9FC();
  }

  v37 = [v4 decodeBoolForKey_];

  v22 = type metadata accessor for Date();
  sub_1883F90F4(v19, 1, 1, v22);
  v23 = NSStringFromSelector(sel_excludeZoneAccessBefore);
  if (!v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = MEMORY[0x18CFD5010](v24);
  }

  v25 = [v4 containsValueForKey_];

  if (v25)
  {
    v35 = v2;
    sub_1883F4C5C(0, &qword_1EA90D5D0, 0x1E695DF00);
    v26 = sub_1883F793C();
    v27 = NSStringFromSelector(v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = NSCoder.decodeObject<A>(of:forKey:)();

    if (!v28)
    {
      sub_18840E840(v19, &unk_1EA90D7B0, &dword_1886F8780);

      type metadata accessor for CKDeviceCapabilityCheckOptions(v34);
      swift_deallocPartialClassInstance();
      goto LABEL_12;
    }

    v29 = v36;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_18840E840(v19, &unk_1EA90D7B0, &dword_1886F8780);
    sub_1883F90F4(v29, 0, 1, v22);
    sub_188412494(v29, v19);
    v2 = v35;
  }

  sub_18847E0A0(v19, v14, &unk_1EA90D7B0, &dword_1886F8780);
  v30 = v37;
  v39 = v37;
  sub_18847E0A0(v14, v11, &unk_1EA90D7B0, &dword_1886F8780);
  sub_18847E0A0(v11, v1, &unk_1EA90D7B0, &dword_1886F8780);
  if (sub_1883F971C(v1, 1, v22) == 1)
  {
    sub_18840E840(v11, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v14, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v19, &unk_1EA90D7B0, &dword_1886F8780);
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18840E840(v11, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v14, &unk_1EA90D7B0, &dword_1886F8780);
    sub_18840E840(v19, &unk_1EA90D7B0, &dword_1886F8780);
    sub_1883F7930(v22);
    (*(v32 + 8))(v1, v22);
    v30 = v39;
  }

  v33 = &v2[OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped];
  *v33 = v30;
  *(v33 + 1) = isa;
  v38.receiver = v2;
  v38.super_class = CKDeviceCapabilityCheckOptions;
  objc_msgSendSuper2(&v38, sel_init);

LABEL_12:
  sub_1883F8178();
}

void CKDeviceCapabilityCheckOptions.copy(with:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CKDeviceCapabilityCheckOptions(a1);
  v5 = (v2 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped);
  sub_1883FE5A0();
  v6 = *(v5 + 1);
  v10 = *v5;
  v11 = v6;
  v7 = v6;
  CKDeviceCapabilityCheckOptions.init(_:)(v8, &v10);
  a2[3] = v4;
  *a2 = v9;
}

uint64_t CKDeviceCapabilityCheckOptions.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18847E0A0(a1, v13, &qword_1EA90DD10, &qword_1886F8770);
  if (!v14)
  {
    sub_18840E840(v13, &qword_1EA90DD10, &qword_1886F8770);
    return 0;
  }

  type metadata accessor for CKDeviceCapabilityCheckOptions(v2);
  if (swift_dynamicCast())
  {
    v3 = (v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped);
    sub_1883F7BE8();
    v4 = *v3;
    v5 = *(v3 + 1);
    v6 = &v12[OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped];
    sub_1883F7BE8();
    if (v4 != *v6)
    {
LABEL_4:

      return 0;
    }

    v8 = *(v6 + 1);
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_4;
      }

      sub_1883F4C5C(0, &qword_1EA90D5D0, 0x1E695DF00);
      v9 = v5;
      v10 = v8;
      v11 = static NSObject.== infix(_:_:)();

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      if (v8)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_18847D714(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_18840E840(v10, &qword_1EA90DD10, &qword_1886F8770);
  return v8 & 1;
}

Swift::Int CKDeviceCapabilityCheckOptions.hash.getter()
{
  v1 = v0 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  sub_1883F7BE8();
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    v3 = v3;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return v4;
}

uint64_t CKDeviceCapabilityCheckOptions.description.getter()
{
  v1 = v0;
  v11.super_class = CKDeviceCapabilityCheckOptions;
  v2 = objc_msgSendSuper2(&v11, sel_description);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v12 = v3;
  v13 = v5;
  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  v6 = (v1 + OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped);
  sub_1883F7BE8();
  v10 = *v6;
  v7 = v6[1];
  v8 = String.init<A>(reflecting:)();
  MEMORY[0x18CFD5140](v8);

  return v12;
}

id sub_18847D978()
{
  *(v0 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped) = 2;
  v2.super_class = CKDeviceCapabilityCheckResult;
  return objc_msgSendSuper2(&v2, sel_init);
}

void __swiftcall CKDeviceCapabilityCheckResult.init(isSupported:)(CKDeviceCapabilityCheckResult *__return_ptr retstr, Swift::Bool isSupported)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithIsSupported_];
}

_BYTE *CKDeviceCapabilityCheckResult.init(isSupported:)(char a1)
{
  result = [v1 init];
  result[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped] = a1;
  return result;
}

Swift::Void __swiftcall CKDeviceCapabilityCheckResult.encode(with:)(NSCoder with)
{
  v3 = [v1 isSupported];
  v4 = NSStringFromSelector(sel_isSupported);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x18CFD5010](v5);

    v4 = v6;
  }

  v7 = v4;
  [(objc_class *)with.super.isa encodeBool:v3 forKey:?];
}

id _sSo18CKDeviceCapabilityC8CloudKitE5coderABSgSo7NSCoderC_tcfC_0()
{
  sub_1883F793C();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v1;
}

id CKDeviceCapabilityCheckResult.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped;
  v1[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped] = 2;
  v4 = NSStringFromSelector(sel_isSupported);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v5);
    sub_18840370C();
  }

  v6 = [a1 decodeBoolForKey_];

  v1[v3] = v6;
  v9.receiver = v1;
  v9.super_class = CKDeviceCapabilityCheckResult;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

uint64_t CKDeviceCapabilityCheckResult.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18847E0A0(a1, v9, &qword_1EA90DD10, &qword_1886F8770);
  if (!v10)
  {
    sub_18840E840(v9, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_12;
  }

  type metadata accessor for CKDeviceCapabilityCheckResult(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped);
  v4 = v8[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped];

  v5 = v4 == 2 && v3 == 2;
  if (v3 != 2 && v4 != 2)
  {
    v5 = v3 ^ v4 ^ 1;
  }

  return v5 & 1;
}

uint64_t CKDeviceCapabilityCheckResult.hash.getter()
{
  v2 = *(v0 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped);
  sub_18844E6FC(&qword_1EA90D7C0, &qword_1886F8788);
  sub_18847E12C();
  return Optional<A>.hashValue.getter();
}

id sub_18847DEB4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x18CFD5010](v5, v7);

  return v8;
}

void *CKDeviceCapabilityCheckResult.description.getter()
{
  if (*(v0 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped) == 2)
  {
    v7.receiver = v0;
    v7.super_class = CKDeviceCapabilityCheckResult;
    v2 = objc_msgSendSuper2(&v7, sel_description);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8B50();

    v8 = v0;
    v9 = v1;
    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = CKDeviceCapabilityCheckResult;
    v3 = objc_msgSendSuper2(&v6, sel_description);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8B50();

    v8 = v0;
    v9 = v1;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    v4 = String.init<A>(reflecting:)();
    MEMORY[0x18CFD5140](v4);
  }

  return v8;
}

unint64_t sub_18847E02C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_18847E04C()
{
  result = qword_1EA90D7A8;
  if (!qword_1EA90D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D7A8);
  }

  return result;
}

uint64_t sub_18847E0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18844E6FC(a3, a4);
  sub_1883F7930(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_18847E12C()
{
  result = qword_1EA90D7C8;
  if (!qword_1EA90D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D7C8);
  }

  return result;
}

unint64_t sub_18847E1A4()
{
  result = qword_1EA90D850;
  if (!qword_1EA90D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D850);
  }

  return result;
}

unint64_t sub_18847E1FC()
{
  result = qword_1EA90C158;
  if (!qword_1EA90C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C158);
  }

  return result;
}

unint64_t sub_18847E254()
{
  result = qword_1EA90C160;
  if (!qword_1EA90C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C160);
  }

  return result;
}

uint64_t sub_18847E2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_188420F2C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_18847E300(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_188486310();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *sub_18847E39C(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v11 = a3();
      if (v12)
      {
        v10 = *(*(a2 + 56) + 8 * v11);
        v13 = v10;
        return v10;
      }
    }

    return 0;
  }

  v8 = a1;
  v9 = __CocoaDictionary.lookup(_:)();

  if (!v9)
  {
    return 0;
  }

  sub_1883F4C5C(0, a4, a5);
  sub_1883F99D0();
  return v15;
}

double sub_18847E460@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_188420F2C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_188405DF8(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_18847E4F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1884863DC();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1883F8B5C(v3);
  sub_188449260(v5);
  return v2;
}

uint64_t sub_18847E594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v6 = a3();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = sub_1883F8B5C(v6);
  a4(v8);
  return v4;
}

void *sub_18847E5F4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for CloudCoreContainer();
      sub_1883F99D0();
      return v9;
    }
  }

  else if (*(a2 + 16) && (sub_188486518(), (v6 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v5);
    v7 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

void *sub_18847E698(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1884864E0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_18847E6E4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1884864E0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_188405DF8(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_18847E748(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1883FD800();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t related decl e for CKErrorCode.init(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F7400;
  v6 = *MEMORY[0x1E696A578];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v8 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for CKError(0);
  sub_18847E984(v8);

  sub_1883F71F8();
  sub_188400BAC(v9, v10);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v12;
}

uint64_t related decl e for CKErrorCode.partialErrorsByItemID.getter()
{
  v0 = sub_1883F7948();
  type metadata accessor for CKError(v0);
  sub_1883F71F8();
  sub_188400BAC(v1, v2);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_188403724(v3, v4, v5, v6, v7, v8, v9, v10, v20, v23, v24);

  if (!v25)
  {
    sub_18847EBC8(&v24);
    return 0;
  }

  v11 = sub_18844E6FC(&qword_1EA90D858, &qword_1886F8970);
  sub_1883F8794(v11, v12, v13, v11, v14, v15, v16, v17, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v18 = sub_18847EC30(v22);

  return v18;
}

unint64_t sub_18847E984(uint64_t a1)
{
  sub_1883FB520(a1);
  if (v2)
  {
    sub_18844E6FC(&qword_1EA90D888, &unk_1886F89D0);
    sub_1883F9598();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (v10 << 10) | (16 * v11);
    v13 = (*(v1 + 48) + v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v1 + 56) + v12);
    v26 = *v16;
    v27 = v16[1];

    swift_dynamicCast();
    sub_188419138(&v28, v30);
    sub_188419138(v30, v31);
    sub_188419138(v31, &v29);
    result = sub_188420F2C(v15, v14);
    v17 = result;
    if (v18)
    {
      v19 = (v3[6] + 16 * result);
      v20 = v19[1];
      *v19 = v15;
      v19[1] = v14;

      v21 = (v3[7] + 32 * v17);
      sub_1883FE944(v21);
      result = sub_188419138(&v29, v21);
      v9 = v10;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_19;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = (v3[6] + 16 * result);
      *v22 = v15;
      v22[1] = v14;
      result = sub_188419138(&v29, (v3[7] + 32 * result));
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v3[2] = v25;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v3;
    }

    v6 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18847EBC8(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90DD10, &qword_1886F8770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18847EC30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18844E6FC(&qword_1EA90D880, &qword_1886F89C8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1884802A8(*(a1 + 48) + 40 * v11, v26);
    v28 = *(*(a1 + 56) + 8 * v11);
    v23 = v26[0];
    v24 = v26[1];
    v25 = v27;
    v12 = *(v2 + 40);
    v13 = v28;
    result = AnyHashable._rawHashValue(seed:)(v12);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v22 = *(v2 + 48) + 40 * v17;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    *(*(v2 + 56) + 8 * v17) = v13;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_18847EE70(uint64_t a1)
{
  sub_1883FB520(a1);
  if (v2)
  {
    sub_18844E6FC(&qword_1EA90D860, &qword_1886F89A8);
    sub_1883F9598();
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883FF0E0();
  if (v10)
  {
    sub_188404F6C();

    v23 = 0;
    while (v6)
    {
      v24 = v23;
LABEL_26:
      sub_1883FDA08();
      sub_1883F71F8();
      sub_188400BAC(&qword_1EA90CAB8, v25);
      v26 = sub_18840549C();
      *v27 = v8;
      v4 = v4;
      v28 = v8;
      sub_188486310();
      v37 = v29;
      if (v30)
      {
        v38 = v9[6];
        v39 = *(v38 + 8 * v29);
        *(v38 + 8 * v29) = v4;

        v40 = v9[7];
        v41 = *(v40 + 8 * v37);
        *(v40 + 8 * v37) = v26;

        v23 = v24;
      }

      else
      {
        if (v9[2] >= v9[3])
        {
          goto LABEL_35;
        }

        sub_1883FEC58(v29, v30, v31, v32, v33, v34, v35, v36, v44, v46);
        if (v43)
        {
          goto LABEL_36;
        }

        v9[2] = v42;
        v23 = v24;
      }
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v7)
      {
LABEL_31:

        return;
      }

      v6 = *(v5 + 8 * v24);
      ++v23;
      if (v6)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    sub_1883FF5A4();

    v11 = 0;
    v45 = v1;
    if (v6)
    {
LABEL_9:
      while (1)
      {
        sub_1883FE9F0();
        sub_1883F71F8();
        sub_188400BAC(&qword_1EA90CAB8, v13);
        v47 = sub_18840549C();
        *v14 = v3;
        v15 = v9[5];
        v16 = v1;
        v17 = v3;
        v18 = NSObject._rawHashValue(seed:)(v15);
        sub_1883F9BEC(v18);
        if (v10)
        {
          break;
        }

        sub_1883F9020();
        v1 = v45;
LABEL_19:
        sub_1883FE5B8(v19, v45, v47);
      }

      sub_1883F7AC4();
      v1 = v45;
      while (1)
      {
        sub_1883FDD74();
        if (v10)
        {
          if (v21)
          {
            break;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        sub_1884007EC(v20);
        if (!v10)
        {
          sub_1883F7C04();
          goto LABEL_19;
        }
      }
    }

    else
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v8)
        {
          goto LABEL_31;
        }

        ++v11;
        if (*(v5 + 8 * v12))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_18847F0E8(uint64_t a1)
{
  sub_1883FB520(a1);
  if (v2)
  {
    sub_18844E6FC(&qword_1EA90D868, &qword_1886F89B0);
    sub_1883F9598();
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  sub_1883FF0E0();
  if (v10)
  {
    sub_188404F6C();

    v23 = 0;
    while (v6)
    {
      v24 = v23;
LABEL_26:
      sub_1883FDA08();
      sub_1883F71F8();
      sub_188400BAC(&qword_1EA90CAB8, v25);
      v26 = sub_18840549C();
      *v27 = v8;
      v4 = v4;
      v28 = v8;
      sub_188486398();
      v37 = v29;
      if (v30)
      {
        v38 = v9[6];
        v39 = *(v38 + 8 * v29);
        *(v38 + 8 * v29) = v4;

        v40 = v9[7];
        v41 = *(v40 + 8 * v37);
        *(v40 + 8 * v37) = v26;

        v23 = v24;
      }

      else
      {
        if (v9[2] >= v9[3])
        {
          goto LABEL_35;
        }

        sub_1883FEC58(v29, v30, v31, v32, v33, v34, v35, v36, v44, v46);
        if (v43)
        {
          goto LABEL_36;
        }

        v9[2] = v42;
        v23 = v24;
      }
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v7)
      {
LABEL_31:

        return;
      }

      v6 = *(v5 + 8 * v24);
      ++v23;
      if (v6)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    sub_1883FF5A4();

    v11 = 0;
    v45 = v1;
    if (v6)
    {
LABEL_9:
      while (1)
      {
        sub_1883FE9F0();
        sub_1883F71F8();
        sub_188400BAC(&qword_1EA90CAB8, v13);
        v47 = sub_18840549C();
        *v14 = v3;
        v15 = v9[5];
        v16 = v1;
        v17 = v3;
        v18 = NSObject._rawHashValue(seed:)(v15);
        sub_1883F9BEC(v18);
        if (v10)
        {
          break;
        }

        sub_1883F9020();
        v1 = v45;
LABEL_19:
        sub_1883FE5B8(v19, v45, v47);
      }

      sub_1883F7AC4();
      v1 = v45;
      while (1)
      {
        sub_1883FDD74();
        if (v10)
        {
          if (v21)
          {
            break;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        sub_1884007EC(v20);
        if (!v10)
        {
          sub_1883F7C04();
          goto LABEL_19;
        }
      }
    }

    else
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v8)
        {
          goto LABEL_31;
        }

        ++v11;
        if (*(v5 + 8 * v12))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_18847F388(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  sub_1883FB520(a1);
  if (v4)
  {
    sub_18844E6FC(&qword_1EA90D880, &qword_1886F89C8);
    sub_1883F9598();
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3[8];
  sub_18840AF7C();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v12 = v5 + 64;

  v13 = 0;
  if (!v9)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(v3[6] + v15);
    v17 = *(v3[7] + v15);
    sub_1883F4C5C(0, a2, a3);
    v18 = v16;
    v19 = v17;
    swift_dynamicCast();
    type metadata accessor for CKError(0);
    sub_1883F71F8();
    sub_188400BAC(&qword_1EA90CAB8, v20);
    v21 = sub_18840549C();
    *v22 = v19;
    v23 = AnyHashable._rawHashValue(seed:)(*(v5 + 40)) & ~(-1 << *(v5 + 32));
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      sub_1883F7AC4();
      while (1)
      {
        sub_1883FDD74();
        if (v28)
        {
          if (v26)
          {
            goto LABEL_23;
          }
        }

        if (v25 == v27)
        {
          v25 = 0;
        }

        if (*(v12 + 8 * v25) != -1)
        {
          sub_1883F7C04();
          goto LABEL_19;
        }
      }
    }

    sub_1883F9020();
LABEL_19:
    v9 &= v9 - 1;
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 40 * v24;
    *v29 = v32;
    *(v29 + 16) = v33;
    *(v29 + 32) = v34;
    *(*(v5 + 56) + 8 * v24) = v21;
    ++*(v5 + 16);
  }

  while (v9);
LABEL_5:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return;
    }

    v9 = v3[v14 + 8];
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_18847F5F4(void *a1)
{
  if (a1[2])
  {
    sub_18844E6FC(&qword_1EA90D880, &qword_1886F89C8);
    sub_1883F9598();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = a1[8];
  sub_18840AF7C();
  v7 = v6 & v5;
  sub_1883FF5A4();

  v8 = 0;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1884802A8(a1[6] + 40 * v10, v28);
    v30 = *(a1[7] + 8 * v10);
    v11 = v30;
    v25 = v28[0];
    v26 = v28[1];
    v27 = v29;
    type metadata accessor for CKError(0);
    sub_1883F71F8();
    sub_188400BAC(&qword_1EA90CAB8, v12);
    v13 = sub_18840549C();
    *v14 = v11;
    v15 = v3[5];
    v16 = v11;
    v17 = AnyHashable._rawHashValue(seed:)(v15);
    sub_1883F9BEC(v17);
    if (v18)
    {
      sub_1883F7AC4();
      while (1)
      {
        sub_1883FDD74();
        if (v18)
        {
          if (v21)
          {
            goto LABEL_23;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        sub_1884007EC(v20);
        if (!v18)
        {
          sub_1883F7C04();
          goto LABEL_19;
        }
      }
    }

    sub_1883F9020();
LABEL_19:
    v7 &= v7 - 1;
    *(v1 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v23 = v3[6] + 40 * v19;
    *v23 = v25;
    *(v23 + 16) = v26;
    *(v23 + 32) = v27;
    *(v3[7] + 8 * v19) = v13;
    ++v3[2];
  }

  while (v7);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v2)
    {

      return;
    }

    v7 = a1[v9 + 8];
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18847F84C(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = sub_1883F7948();
  type metadata accessor for CKError(v7);
  sub_1883F71F8();
  sub_188400BAC(v8, v9);
  sub_1883F9770();
  v10 = _BridgedStoredNSError.userInfo.getter();
  v11 = *a2;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_18847E460(v12, v13, v10, &v32);

  if (v33)
  {
    v14 = sub_1883F4C5C(0, a3, a4);
    sub_1883F8794(v14, v15, v16, v14, v17, v18, v19, v20, v30);
    v21 = swift_dynamicCast();
    return sub_188414738(v21, v22, v23, v24, v25, v26, v27, v28, v31);
  }

  else
  {
    sub_18847EBC8(&v32);
    return 0;
  }
}

uint64_t related decl e for CKErrorCode.retryAfterSeconds.getter()
{
  v0 = sub_1883F7948();
  type metadata accessor for CKError(v0);
  sub_1883F71F8();
  sub_188400BAC(v1, v2);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_188403724(v3, v4, v5, v6, v7, v8, v9, v10, v19, v22, v23);

  if (v24)
  {
    sub_1883F8794(v11, v12, v13, MEMORY[0x1E69E63B0], v14, v15, v16, v17, v20);
    if (swift_dynamicCast())
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_18847EBC8(&v23);
    return 0;
  }
}

uint64_t related decl e for CKErrorCode.underlyingError.getter()
{
  v0 = sub_1883F7948();
  type metadata accessor for CKError(v0);
  sub_1883F71F8();
  sub_188400BAC(v1, v2);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v3 = *MEMORY[0x1E696AA08];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_188403724(v4, v5, v6, v7, v8, v9, v10, v11, v28, v31, v32);

  if (v33)
  {
    type metadata accessor for CKUnderlyingError(0);
    sub_1883F8794(v12, v13, v14, v12, v15, v16, v17, v18, v29);
    v19 = swift_dynamicCast();
    return sub_188414738(v19, v20, v21, v22, v23, v24, v25, v26, v30);
  }

  else
  {
    sub_18847EBC8(&v32);
    return 0;
  }
}

uint64_t sub_18847FB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18844E6FC(&qword_1EA90D870, &qword_1886F89B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F8960;
  v7 = *MEMORY[0x1E696A578];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  *(inited + 120) = sub_18844E6FC(&qword_1EA90D878, &qword_1886F89C0);
  *(inited + 96) = a1;
  Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for CKError(0);
  sub_1883F71F8();
  sub_188400BAC(v10, v11);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v13;
}

uint64_t related decl e for CKErrorCode.description.getter()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_18847FD38(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = sub_1883F7948();
  v7(v6);
  sub_188400BAC(a3, a4);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_188403724(v8, v9, v10, v11, v12, v13, v14, v15, v32, v35, v36);

  if (v37)
  {
    v16 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    sub_1883F8794(v16, v17, v18, v16, v19, v20, v21, v22, v33);
    v23 = swift_dynamicCast();
    return sub_188414738(v23, v24, v25, v26, v27, v28, v29, v30, v34);
  }

  else
  {
    sub_18847EBC8(&v36);
    return 0;
  }
}

void related decl e for CKErrorCode.underlyingSessionReadinessError.getter()
{
  v0 = sub_1883F7948();
  type metadata accessor for CKError(v0);
  sub_1883F71F8();
  sub_188400BAC(v1, v2);
  v3 = sub_1883F81E8();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FA34C(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22);

  if (v23)
  {
    type metadata accessor for CKSessionReadinessErrorBox();
    if (sub_1883F8DFC())
    {
      sub_1883F7EBC();
      CKSessionReadinessErrorBox.sessionReadinessError.getter();

      type metadata accessor for SessionReadinessError();
      v12 = sub_1883F83F4();
      v14 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    sub_18847EBC8(&v22);
  }

  v15 = sub_1883F81E8();
  v16 = *MEMORY[0x1E696AA08];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_18847E460(v17, v18, v15, &v22);

  if (v23)
  {
    type metadata accessor for CKUnderlyingError(0);
    if (sub_1883F8DFC())
    {
      sub_1883F7EBC();
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionReadinessError.getter(v19);

      return;
    }
  }

  else
  {
    sub_18847EBC8(&v22);
  }

  type metadata accessor for SessionReadinessError();
  v12 = sub_1883F83F4();
  v14 = 1;
LABEL_10:
  sub_1883F90F4(v12, v14, 1, v13);
}

void related decl e for CKErrorCode.underlyingSessionInvalidationContext.getter()
{
  v0 = sub_1883F7948();
  type metadata accessor for CKError(v0);
  sub_1883F71F8();
  sub_188400BAC(v1, v2);
  v3 = sub_1883F81E8();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FA34C(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22);

  if (v23)
  {
    type metadata accessor for CKSessionInvalidationContext();
    if (sub_1883F8DFC())
    {
      sub_1883F7EBC();
      CKSessionInvalidationContext.sessionInvalidationContext.getter();

      type metadata accessor for SessionInvalidationContext();
      v12 = sub_1883F83F4();
      v14 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    sub_18847EBC8(&v22);
  }

  v15 = sub_1883F81E8();
  v16 = *MEMORY[0x1E696AA08];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_18847E460(v17, v18, v15, &v22);

  if (v23)
  {
    type metadata accessor for CKUnderlyingError(0);
    if (sub_1883F8DFC())
    {
      sub_1883F7EBC();
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionInvalidationContext.getter(v19);

      return;
    }
  }

  else
  {
    sub_18847EBC8(&v22);
  }

  type metadata accessor for SessionInvalidationContext();
  v12 = sub_1883F83F4();
  v14 = 1;
LABEL_10:
  sub_1883F90F4(v12, v14, 1, v13);
}

uint64_t sub_188480174@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1883F7948();
  type metadata accessor for CKUnderlyingError(v10);
  sub_188400BAC(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v11 = *a1;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FA34C(v12, v13, v14, v15, v16, v17, v18, v19, v30, v33, v34);

  if (!v35)
  {
    sub_18847EBC8(&v34);
    goto LABEL_5;
  }

  v20 = a2(0);
  sub_1883F8794(v20, v21, v22, v20, v23, v24, v25, v26, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v27 = 1;
    goto LABEL_6;
  }

  a3();

  v27 = 0;
LABEL_6:
  v28 = a4(0);
  return sub_1883F90F4(a5, v27, 1, v28);
}

uint64_t sub_188480308(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18848072C()
{
  sub_1883F7FF0();
  sub_18840FB10();
  v6 = v6 && v4 == v5;
  if (v6 || (sub_1883FDF08() & 1) != 0)
  {
    if (v3 == v1 && v2 == v0)
    {
      sub_1883FDCC0();
      return;
    }

    sub_188443338();
  }

  else
  {
    sub_1883FEB84();
  }

  sub_1883FDCC0();

  _stringCompareWithSmolCheck(_:_:expecting:)();
}

void static CKFeatureProtocol.< infix(_:_:)()
{
  sub_1883F8AF0();
  v1 = v0;
  sub_1883FF718();
  v3 = *(v2 + 16);
  v5 = v3(v4, v2);
  v7 = v6;
  v8 = sub_1883F7E8C();
  if (v5 == (v3)(v8) && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v12 = sub_1883F7E8C();
      v13 = (v3)(v12);
      v15 = v14;
      v16 = sub_1883F7E8C();
      v17 = (v3)(v16);
      goto LABEL_9;
    }
  }

  v19 = *(v1 + 24);
  v20 = sub_1883F7E8C();
  v13 = v19(v20);
  v15 = v21;
  v22 = sub_1883F7E8C();
  v17 = v19(v22);
LABEL_9:
  if (v13 != v17 || v15 != v18)
  {
    sub_1883FD9C4();
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1883F8178();
}

void CKFeatureProtocol<>.description.getter()
{
  sub_1883F7EEC();
  v1 = v0;
  v3 = v2;
  sub_1883FF4BC();
  swift_getDynamicType();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v4);

  MEMORY[0x18CFD5140](2629690, 0xE300000000000000);
  v5 = (*(v1 + 16))(v3, v1);
  MEMORY[0x18CFD5140](v5);

  MEMORY[0x18CFD5140](2112032, 0xE300000000000000);
  v6 = (*(v1 + 24))(v3, v1);
  MEMORY[0x18CFD5140](v6);

  MEMORY[0x18CFD5140](15913, 0xE200000000000000);
  sub_1883FAEB8();
}

uint64_t CKZoneFeature.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1883F7EE0();
}

uint64_t CKZoneFeature.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1883F7EE0();
}

uint64_t sub_188480AE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_188488D4C();
}

void sub_188480B1C()
{
  sub_1883F7FF0();
  sub_188413794();
  v6 = v6 && v5 == v4;
  if (!v6 && (sub_1884057E8() & 1) == 0)
  {
    sub_1883FB610();
    goto LABEL_13;
  }

  if (v2 != v3 || v0 != v1)
  {
    sub_1883F7E8C();
LABEL_13:
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1883FDCC0();
}

void sub_188480B94()
{
  sub_1883F7FF0();
  sub_18840FB10();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1883FDF08() & 1) == 0)
  {
    sub_1883FEB84();
    goto LABEL_13;
  }

  if (v3 != v1 || v2 != v0)
  {
    sub_188443338();
LABEL_13:
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1883FDCC0();
}

void sub_188480C0C()
{
  sub_1883F7FF0();
  sub_188413794();
  v6 = v6 && v5 == v4;
  if (v6 || (sub_1884057E8() & 1) != 0)
  {
    if (v2 == v3 && v0 == v1)
    {
      sub_1883FDCC0();
      return;
    }

    sub_1883F7E8C();
  }

  else
  {
    sub_1883FB610();
  }

  sub_1883FDCC0();

  _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_188480CE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_188488D64();
}

uint64_t _s8CloudKit13CKZoneFeatureV4nameSSvs_0(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  sub_188440388();
  v7 = v6;
  v9 = v8;

  *v2 = v7;
  v2[1] = v9;
  return result;
}

uint64_t **sub_188480D6C(uint64_t **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    v4 = **result;
    v5 = (*result)[1];
    sub_188440388();
    v6 = v3[1];
    *v3 = v7;
    v3[1] = v8;
  }

  return result;
}

uint64_t _s8CloudKit13CKZoneFeatureV5valueSSvs_0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_188440388();
  v7 = v6;
  v9 = v8;

  *(v2 + 16) = v7;
  *(v2 + 24) = v9;
  return result;
}

uint64_t sub_188480E34(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    v4 = *(*result + 16);
    v5 = *(*result + 24);
    sub_188440388();
    v6 = *(v3 + 24);
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
  }

  return result;
}

uint64_t _s8CloudKit13CKZoneFeatureV4name5valueACSS_SStcfC_0@<X0>(void *a1@<X8>)
{
  sub_188440388();
  v3 = v2;
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  sub_188440388();
  v7 = v6;
  v9 = v8;

  a1[2] = v7;
  a1[3] = v9;
  return result;
}

uint64_t sub_188480F08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_188488D58();
}

uint64_t _s8CloudKit13CKZoneFeatureV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_1883F7EE0();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t _s8CloudKit13CKZoneFeatureV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();
  sub_1883F7228();

  return String.hash(into:)();
}

Swift::Int _s8CloudKit13CKZoneFeatureV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_1883F7FE4();
  String.hash(into:)();
  sub_18840C144();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_188481060()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_1883F7FE4();
  String.hash(into:)();
  sub_18840C144();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CKFeatureSet.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Array();
  result = Dictionary.init()();
  *a1 = result;
  return result;
}

uint64_t CKFeatureSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1883F7EEC();
  a17 = v19;
  a18 = v20;
  sub_1883FF718();
  v22 = v21;
  CKFeatureSet.init()(&a10);
  *v22 = a10;
  sub_1883FDBC4();
  type metadata accessor for CKFeatureSet();
  CKFeatureSet.insert<A>(_:)();
  v23 = *(*(v18 - 8) + 8);
  sub_1883FAEB8();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

void CKFeatureSet.insert<A>(_:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v49 = v2;
  v50 = v4;
  v6 = v5;
  v51 = v7;
  v8 = *(v7 + 16);
  sub_1883F9C28();
  v47 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F7100();
  sub_1883FDBC4();
  v13 = *(*(type metadata accessor for Optional() - 8) + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  sub_1883F9C28();
  v45 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F7100();
  v43 = v22 - v21;
  v44 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1883F9C28();
  v46 = v24;
  v26 = *(v25 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - v28;
  v30 = *v1;
  sub_1883FDBC4();
  v31 = type metadata accessor for Array();
  v32 = MEMORY[0x18CFD4F70](v30, MEMORY[0x1E69E6158], v31, MEMORY[0x1E69E6168]);
  v48 = v6;
  if (__OFADD__(v32, dispatch thunk of Collection.count.getter()))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Dictionary();
    v33 = sub_1883FE2BC();
    Dictionary.reserveCapacity(_:)(v33);
    (*(v45 + 16))(v43, v50, v48);
    dispatch thunk of Sequence.makeIterator()();
    swift_getAssociatedConformanceWitness();
    v34 = (v47 + 32);
    v35 = (v47 + 8);
    while (1)
    {
      sub_1883FDCB4();
      dispatch thunk of IteratorProtocol.next()();
      if (sub_1883F971C(v16, 1, v8) == 1)
      {
        break;
      }

      v36 = *v34;
      v37 = sub_1883FF6E8();
      v38(v37);
      CKFeatureSet.insert(_:)();
      v39 = *v35;
      v40 = sub_188411050();
      v41(v40);
    }

    (*(v46 + 8))(v29, AssociatedTypeWitness);
    sub_1883F8178();
  }
}

uint64_t CKFeatureSet.features.getter(uint64_t a1)
{
  v8 = *v1;
  v3 = *(a1 + 16);
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  sub_1883F91B8();
  swift_getWitnessTable();
  v4 = sub_1883FAABC();
  MEMORY[0x18CFD5270](v4);
  v5 = sub_1883FDA5C();
  v6 = *(a1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  sub_1883F9C10();
  swift_getWitnessTable();
  LazySequenceProtocol.flatMap<A>(_:)();
}

uint64_t CKFeatureSet.valuesByName.getter(uint64_t a1)
{
  v2 = *v1;
  v4 = *(a1 + 16);
  type metadata accessor for Array();
  sub_1883F9C10();
  swift_getWitnessTable();
  type metadata accessor for LazyMapSequence();
  return Dictionary.mapValues<A>(_:)();
}

uint64_t sub_1884816EC(void *a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *a1;
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18CFD5270](v9, v5, WitnessTable);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();
}

void CKFeatureSet.isEmpty.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  type metadata accessor for Array();

  JUMPOUT(0x18CFD4F80);
}

uint64_t CKFeatureSet.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (*(v5 + 16) && (sub_1883F7210(), v9 = sub_188419148(v6, v7, v8), (v10 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 8 * v9);
  }

  else
  {
    v13 = *(a3 + 16);

    return Array.init()();
  }
}

uint64_t CKFeatureSet.subscript.setter()
{
  sub_18840BDFC();
  sub_1884056BC(v1, v2);
  CKFeatureSet.removeAll(for:)(v3, v4);

  v6 = *(v0 + 16);
  type metadata accessor for Array();
  swift_getWitnessTable();
  _ArrayProtocol.filter(_:)();

  sub_1883F87A4();
  swift_getWitnessTable();
  CKFeatureSet.insert<A>(_:)();
}

{
  sub_18840BDFC();
  sub_1884056BC(v4, v5);
  CKFeatureSet.removeAll(for:)(v6, v7);

  v18 = v3;
  v15 = *(v1 + 16);
  v16 = v0;
  v17 = v2;
  v8 = sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883FF5C0();
  v10 = sub_188488470(v9, &qword_1EA90D330);
  v12 = sub_188480308(sub_188488CF4, v14, v8, v15, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);

  v18 = v12;
  type metadata accessor for Array();
  swift_getWitnessTable();
  sub_18840C144();
  CKFeatureSet.insert<A>(_:)();
}

uint64_t CKFeatureSet.removeAll(for:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  result = v5;
  if (!v5)
  {
    result = static Array._allocateUninitialized(_:)();
  }

  *a2 = result;
  return result;
}

uint64_t sub_188481A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 16))(a4, a5) == a2 && v6 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void CKFeatureSet.subscript.modify()
{
  sub_1883F7EEC();
  sub_1883FF718();
  v1 = sub_188470D2C(0x28uLL);
  v2 = sub_1883F99F0(v1);
  *v0 = CKFeatureSet.subscript.getter(v2, v3, v4);
  sub_1883FAEB8();
}

{
  sub_1883F7EEC();
  sub_1883FF718();
  v1 = sub_188470D2C(0x28uLL);
  sub_1883F99F0(v1);
  CKFeatureSet.subscript.getter();
  *v0 = v2;
  sub_1883FAEB8();
}

void CKFeatureSet.subscript.getter()
{
  sub_1883F7FF0();
  v2 = v1;
  v3 = *v0;
  if (*(v3 + 16) && (sub_1883F7210(), v7 = sub_188419148(v4, v5, v6), (v8 & 1) != 0))
  {
    v9 = *(*(v3 + 56) + 8 * v7);
    v10 = *(v2 + 16);
  }

  else
  {
    v10 = *(v2 + 16);
    v9 = Array.init()();
  }

  v17[9] = v9;
  type metadata accessor for Array();
  sub_1883F9C10();
  swift_getWitnessTable();
  v11 = sub_1883FF6E8();
  MEMORY[0x18CFD5270](v11);

  v17[7] = v17[8];
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(v2 + 24);
  v17[2] = v10;
  v17[3] = v13;
  v14 = type metadata accessor for LazySequence();
  sub_1883F87A4();
  v17[5] = swift_getWitnessTable();
  sub_1884054BC();
  WitnessTable = swift_getWitnessTable();
  sub_188480308(sub_1884862A0, v17, v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  sub_1883FDCC0();
}

void sub_188481CE0()
{
  sub_1883F7EEC();
  v1 = v0;
  v3 = v2;
  v7 = *(v4 + v5 - 16);
  v6 = *(v4 + v5 - 8);
  v8 = *v4;
  v9 = v4[1];
  v12 = *v10;
  type metadata accessor for CKFeatureSet();
  v11 = sub_1884110D8();
  *v3 = v1(v11);
  sub_1883FAEB8();
}

uint64_t sub_188481D4C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a3;
  v9 = a3[1];
  v10 = *a1;
  v11 = type metadata accessor for CKFeatureSet();

  return a5(v12, v8, v9, v11);
}

void sub_188481F8C()
{
  sub_1883F7FF0();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = (*v4)[2];
  v7 = **v4;

  v9 = v5[3];
  v8 = v5[4];
  v10 = v5[1];
  if (v3)
  {

    v1(v11, v10, v6, v9);
    v12 = *v5;
  }

  else
  {
    v1(v7, v5[1], v6, v5[3]);
  }

  sub_1883FDCC0();

  free(v13);
}

Swift::Bool __swiftcall CKFeatureSet.contains(name:)(Swift::String name)
{
  v3 = *v2;
  v8 = name;
  v4 = *(v1 + 16);
  v5 = type metadata accessor for Array();

  MEMORY[0x18CFD4FC0](&v9, &v8, v3, MEMORY[0x1E69E6158], v5, MEMORY[0x1E69E6168]);

  v6 = v9;
  if (v9)
  {
  }

  return v6 != 0;
}

uint64_t CKFeatureSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 24);
  v10[0] = (*(v4 + 16))(*(a2 + 16), v4);
  v10[1] = v5;
  sub_1883FDBC4();
  v6 = type metadata accessor for Array();
  MEMORY[0x18CFD4FC0](&v11, v10, v3, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);

  if (v11)
  {
    v10[0] = v11;
    sub_1883F9C10();
    swift_getWitnessTable();
    v7 = *(*(v4 + 8) + 8);
    v8 = Sequence<>.contains(_:)();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

Swift::Bool __swiftcall CKFeatureSet.contains(name:value:)(Swift::String name, Swift::String value)
{
  sub_1883F8AF0();
  v4 = v3;
  v5 = *v2;
  v13[0] = v6;
  v13[1] = v7;
  v8 = *(v3 + 16);
  sub_188410C30();
  v9 = type metadata accessor for Array();

  MEMORY[0x18CFD4FC0](&v14, v13, v5, MEMORY[0x1E69E6158], v9, MEMORY[0x1E69E6168]);

  if (v14)
  {
    v13[0] = v14;
    MEMORY[0x1EEE9AC00](v10);
    v12 = *(v4 + 24);
    sub_1883F9C10();
    swift_getWitnessTable();
    Sequence.contains(where:)();
  }

  sub_1883F8178();
  return result;
}

uint64_t sub_1884822D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 24))(a4, a5) == a2 && v6 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

BOOL static CKFeatureSet.isValid(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = sub_1884056BC(a1, a2);
  v7 = v6(v5);
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = sub_1883F7E8C();
  v14 = v13(v12);
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  return v17 != 0;
}

void sub_188482420()
{
  sub_1883F8AF0();
  sub_1883F9034();
  if (!v1)
  {
    goto LABEL_15;
  }

  sub_1883FDA40();
  if (!v2)
  {
    goto LABEL_15;
  }

  sub_1883F8B78();
  if (v3)
  {
    sub_1883F7210();
    v4 = sub_1883FD9C4();
    v7 = sub_188419148(v4, v5, v6);
    if (v8)
    {
      sub_188442F3C(v7);
    }
  }

  sub_1884056A8();
  MEMORY[0x1EEE9AC00]();
  sub_1883F8204();
  v9 = sub_1883FE1D0();
  v12 = sub_188512698(v9, v10, v11);

  if (v12)
  {
    goto LABEL_15;
  }

  v13 = sub_1883FDA5C();
  sub_188403884(v13);

  v14 = *v0;
  swift_isUniquelyReferenced_nonNull_native();
  v32 = *v0;
  *v0 = 0x8000000000000000;
  sub_1883F7210();
  v15 = sub_1883FD9C4();
  sub_188419148(v15, v16, v17);
  sub_18840AE44();
  if (!__OFADD__(v20, v21))
  {
    v22 = v18;
    v23 = v19;
    sub_18844E6FC(&qword_1EA90DA70, &qword_1886F9128);
    if (sub_18842D494())
    {
      sub_1883F7210();
      v24 = sub_1883FD9C4();
      sub_188419148(v24, v25, v26);
      sub_18840AD34();
      if (!v28)
      {
        goto LABEL_17;
      }

      v22 = v27;
    }

    v29 = *v0;

    *v0 = v32;
    if ((v23 & 1) == 0)
    {
      sub_188482C24();
      v30 = sub_188403740();
      sub_1884AFB54(v30);
    }

    v31 = *(v32 + 56) + 8 * v22;
    sub_1884769EC();
    sub_1883F8594();
    sub_188476BF0();

    sub_1883FEA20();
LABEL_15:
    sub_1883F8178();
    return;
  }

  __break(1u);
LABEL_17:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1884825C4()
{
  sub_1883F8AF0();
  sub_1883F9034();
  if (!v1)
  {
    goto LABEL_15;
  }

  sub_1883FDA40();
  if (!v2)
  {
    goto LABEL_15;
  }

  sub_1883F8B78();
  if (v3)
  {
    sub_1883F7210();
    v4 = sub_1883FD9C4();
    v7 = sub_188419148(v4, v5, v6);
    if (v8)
    {
      sub_188442F3C(v7);
    }
  }

  sub_1884056A8();
  MEMORY[0x1EEE9AC00]();
  sub_1883F8204();
  v9 = sub_1883FE1D0();
  v12 = sub_188512698(v9, v10, v11);

  if (v12)
  {
    goto LABEL_15;
  }

  v13 = sub_1883FDA5C();
  sub_188403884(v13);

  v14 = *v0;
  swift_isUniquelyReferenced_nonNull_native();
  v32 = *v0;
  *v0 = 0x8000000000000000;
  sub_1883F7210();
  v15 = sub_1883FD9C4();
  sub_188419148(v15, v16, v17);
  sub_18840AE44();
  if (!__OFADD__(v20, v21))
  {
    v22 = v18;
    v23 = v19;
    sub_18844E6FC(&qword_1EA90DA68, &qword_1886F9120);
    if (sub_18842D494())
    {
      sub_1883F7210();
      v24 = sub_1883FD9C4();
      sub_188419148(v24, v25, v26);
      sub_18840AD34();
      if (!v28)
      {
        goto LABEL_17;
      }

      v22 = v27;
    }

    v29 = *v0;

    *v0 = v32;
    if ((v23 & 1) == 0)
    {
      sub_188482C24();
      v30 = sub_188403740();
      sub_1884AFB54(v30);
    }

    v31 = *(v32 + 56) + 8 * v22;
    sub_188476A1C();
    sub_1883F8594();
    sub_188476C20();

    sub_1883FEA20();
LABEL_15:
    sub_1883F8178();
    return;
  }

  __break(1u);
LABEL_17:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_188482768()
{
  sub_1883F8AF0();
  sub_1883F9034();
  if (!v1)
  {
    goto LABEL_15;
  }

  sub_1883FDA40();
  if (!v2)
  {
    goto LABEL_15;
  }

  sub_1883F8B78();
  if (v3)
  {
    sub_1883F7210();
    v4 = sub_1883FD9C4();
    v7 = sub_188419148(v4, v5, v6);
    if (v8)
    {
      sub_188442F3C(v7);
    }
  }

  sub_1884056A8();
  MEMORY[0x1EEE9AC00]();
  sub_1883F8204();
  v9 = sub_1883FE1D0();
  v12 = sub_188512698(v9, v10, v11);

  if (v12)
  {
    goto LABEL_15;
  }

  v13 = sub_1883FDA5C();
  sub_188403884(v13);

  v14 = *v0;
  swift_isUniquelyReferenced_nonNull_native();
  v32 = *v0;
  *v0 = 0x8000000000000000;
  sub_1883F7210();
  v15 = sub_1883FD9C4();
  sub_188419148(v15, v16, v17);
  sub_18840AE44();
  if (!__OFADD__(v20, v21))
  {
    v22 = v18;
    v23 = v19;
    sub_18844E6FC(&qword_1EA90DA60, &qword_1886F9118);
    if (sub_18842D494())
    {
      sub_1883F7210();
      v24 = sub_1883FD9C4();
      sub_188419148(v24, v25, v26);
      sub_18840AD34();
      if (!v28)
      {
        goto LABEL_17;
      }

      v22 = v27;
    }

    v29 = *v0;

    *v0 = v32;
    if ((v23 & 1) == 0)
    {
      sub_188482C24();
      v30 = sub_188403740();
      sub_1884AFB54(v30);
    }

    v31 = *(v32 + 56) + 8 * v22;
    sub_188476A4C();
    sub_1883F8594();
    sub_188476C50();

    sub_1883FEA20();
LABEL_15:
    sub_1883F8178();
    return;
  }

  __break(1u);
LABEL_17:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void CKFeatureSet.insert(_:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  sub_1883F9C28();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  v52 = v12 - v11;
  v14 = *(v13 + 24);
  if (!static CKFeatureSet.isValid(_:)(v15, v5, v14))
  {
    goto LABEL_15;
  }

  v16 = *(v14 + 16);
  v16(v5, v14);
  v18 = v17;
  v19 = *v0;
  if (*(*v1 + 16) && (sub_1883F7210(), v22 = sub_188419148(v20, v18, v21), (v23 & 1) != 0))
  {
    v24 = *(*(v19 + 56) + 8 * v22);
  }

  else
  {
    Array.init()();
  }

  sub_188410C30();
  type metadata accessor for Array();
  sub_1883F9C10();
  swift_getWitnessTable();
  v25 = *(*(v14 + 8) + 8);
  v26 = Sequence<>.contains(_:)();

  if (v26)
  {
    goto LABEL_15;
  }

  v27 = (v16)(v5, v14);
  v29 = v28;
  v30 = sub_1883FDA5C();
  *(v30 + 16) = v5;
  *(v30 + 24) = v14;
  (*(v7 + 16))(v52, v3, v5);
  sub_188405D30();
  v31 = swift_allocObject();
  v31[2] = v5;
  v31[3] = v14;
  v31[4] = sub_188486308;
  v31[5] = v30;
  v32 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v1;
  *v1 = 0x8000000000000000;
  sub_1883F7210();
  v51 = v27;
  v34 = v27;
  v35 = v29;
  sub_188419148(v34, v29, v36);
  sub_18840AE44();
  v41 = v39 + v40;
  if (!__OFADD__(v39, v40))
  {
    v42 = v37;
    v43 = v38;
    type metadata accessor for _NativeDictionary();
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v41))
    {
      sub_1883F7210();
      sub_188419148(v51, v35, v44);
      sub_18840AD34();
      if (!v46)
      {
        goto LABEL_17;
      }

      v42 = v45;
    }

    v47 = *v1;

    *v1 = v53;
    if ((v43 & 1) == 0)
    {
      v49 = v31[5];
      (v31[4])(v48);

      _NativeDictionary._insert(at:key:value:)();
    }

    v50 = *(v53 + 56) + 8 * v42;
    Array.append(_:)();

LABEL_15:
    sub_1883F8178();
    return;
  }

  __break(1u);
LABEL_17:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Void __swiftcall CKFeatureSet.insert(name:value:)(Swift::String name, Swift::String value)
{
  sub_1883F8AF0();
  v3 = *(v2 + 16);
  sub_1883F9C28();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v10 = *(*(v9 + 24) + 32);

  v11 = sub_1883FD9C4();
  v10(v11);
  CKFeatureSet.insert(_:)();
  v12 = *(v5 + 8);
  v13 = sub_1883FEB84();
  v14(v13);
  sub_1883F8178();
}

void CKFeatureSet.remove(name:value:)()
{
  sub_1883F8AF0();
  v1 = *(v0 + 16);
  sub_1883F9C28();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F7100();
  v8 = *(*(v7 + 24) + 32);

  v9 = sub_1883FD9C4();
  v8(v9);
  CKFeatureSet.remove(_:)();
  v10 = *(v3 + 8);
  v11 = sub_1883FDCB4();
  v12(v11);
  sub_1883F8178();
}

void CKFeatureSet.remove(_:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  sub_1883FDBC4();
  v7 = type metadata accessor for Optional();
  sub_1883F9C28();
  v42[3] = v8;
  v10 = *(v9 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  v42[4] = v5;
  sub_1883F90F4(v5, 1, 1, v6);
  v14 = *(v3 + 24);
  v15 = *(v14 + 16);
  v16 = sub_188405290();
  v43 = v17;
  v18 = v17(v16);
  v44 = v1;
  v45 = v18;
  v19 = *v1;
  v46 = v20;
  sub_1883FDBC4();
  v21 = type metadata accessor for Array();
  MEMORY[0x18CFD4FC0](&v49, &v45, v19, MEMORY[0x1E69E6158], v21, MEMORY[0x1E69E6168]);

  if (v49)
  {
    v45 = v49;
    sub_1883F87A4();
    WitnessTable = swift_getWitnessTable();
    v23 = *(*(v14 + 8) + 8);
    Collection<>.firstIndex(of:)();

    if ((v48 & 1) == 0)
    {
      v42[1] = v47;
      v42[2] = WitnessTable;
      v24 = sub_188405290();
      v47 = v43(v24);
      v48 = v25;
      v42[0] = type metadata accessor for Dictionary();
      v26 = v44;
      v28 = Dictionary.subscript.modify();
      if (*v27)
      {
        v26 = v27;
        Array.remove(at:)();
        v28(&v45, 0);

        v29 = sub_1883FA6C4();
        v30(v29);
        v31 = 0;
      }

      else
      {
        v28(&v45, 0);

        v32 = sub_1883FA6C4();
        v33(v32);
        v31 = 1;
      }

      sub_1883F90F4(v13, v31, 1, v6);
      (v26[4])(v28, v13, v7);
      v34 = sub_188405290();
      v35 = v43(v34);
      v37 = v36;
      v38 = *v44;
      v45 = v35;
      v46 = v37;
      MEMORY[0x18CFD4FC0](&v47, &v45, v38, MEMORY[0x1E69E6158], v21, MEMORY[0x1E69E6168]);

      if (v47)
      {
        v45 = v47;
        v39 = Collection.isEmpty.getter();

        if (v39)
        {
          v40 = sub_188405290();
          v45 = v43(v40);
          v46 = v41;
          Dictionary.removeValue(forKey:)();
        }
      }
    }
  }

  sub_1883F8178();
}

void sub_1884831FC()
{
  sub_1883F8AF0();
  v48 = v3;
  v49 = v4;
  if (*(v0 + 16) != *(v1 + 16))
  {
    goto LABEL_22;
  }

  v5 = v2;
  v6 = v1;
  v7 = v0;
  v9 = v0 + 64;
  v8 = *(v0 + 64);
  v10 = *(v0 + 32);
  sub_1883F8578();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;

  v16 = 0;
  v44 = v5;
  if (!v13)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v17 = v16;
LABEL_7:
    v18 = __clz(__rbit64(v13)) | (v17 << 6);
    v19 = (*(v7 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = *(*(v7 + 56) + 8 * v18);

    v45 = v21;
    v50 = v20;
    v23 = v44(v21, v20, v6);
    if (!v23 || (v24 = *(v23 + 16), , v24 != *(v22 + 16)))
    {

LABEL_22:
      sub_1883F8178();
      return;
    }

    v41 = v15;
    v42 = v9;
    v43 = v7;
    v39 = v17;
    v40 = (v13 - 1) & v13;
    v25 = (v22 + 56);
    v46 = v6;
    v47 = -v24;
    v26 = -1;
    while (v47 + v26 != -1)
    {
      ++v26;
      v27 = v46;
      if (v26 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v28 = v22;
      v29 = *(v25 - 3);
      v30 = *(v25 - 2);
      v31 = *(v25 - 1);
      v32 = *v25;
      v33 = *(v46 + 16);

      if (!v33)
      {
        goto LABEL_20;
      }

      sub_1883F7210();
      v35 = sub_188419148(v45, v50, v34);
      if ((v36 & 1) == 0)
      {

LABEL_20:

LABEL_21:

        goto LABEL_22;
      }

      v51 = &v39;
      v25 += 4;
      v37 = *(*(v27 + 56) + 8 * v35);
      v52[0] = v29;
      v52[1] = v30;
      v52[2] = v31;
      v52[3] = v32;
      MEMORY[0x1EEE9AC00](v35);
      *(&v39 - 2) = v52;

      v38 = v49(v48, &v39 - 4, v37);

      v22 = v28;
      if ((v38 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v16 = v39;
    v13 = v40;
    v9 = v42;
    v7 = v43;
    v15 = v41;
    v6 = v46;
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_4:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      goto LABEL_22;
    }

    v13 = *(v9 + 8 * v17);
    ++v16;
    if (v13)
    {
      goto LABEL_7;
    }
  }

LABEL_25:
  __break(1u);
}

void static CKFeatureSet.== infix(_:_:)()
{
  sub_1883F8AF0();
  v61 = v0;
  v2 = v1;
  sub_1883F9C28();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v52 - v10;
  v12 = *v11;
  v14 = *v13;
  v15 = type metadata accessor for Array();
  v16 = MEMORY[0x1E69E6158];
  v17 = MEMORY[0x1E69E6168];
  v18 = MEMORY[0x18CFD4F70](v12, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);
  v63 = v14;
  if (v18 != MEMORY[0x18CFD4F70](v14, v16, v15, v17))
  {
    goto LABEL_25;
  }

  v53 = v6;
  v20 = v12 + 64;
  v19 = *(v12 + 64);
  v21 = *(v12 + 32);
  sub_1883F8578();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v57 = (v4 + 32);
  v58 = (v4 + 16);
  v59 = v4 + 8;

  v27 = 0;
  v55 = v12 + 64;
  v56 = v12;
  v54 = v26;
  if (!v24)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v28 = v27;
LABEL_7:
    v29 = __clz(__rbit64(v24)) | (v28 << 6);
    v30 = *(v12 + 56);
    v31 = (*(v12 + 48) + 16 * v29);
    v32 = v31[1];
    v33 = *(v30 + 8 * v29);
    v60 = *v31;
    v65 = v60;
    v66 = v32;
    sub_1883FEEC8();

    MEMORY[0x18CFD4FC0](&v67, &v65, v63, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);

    v34 = v67;
    if (v67)
    {
      v35 = MEMORY[0x18CFD53A0](v67, v2);
    }

    else
    {
      v35 = 0;
    }

    v36 = sub_1883F7228();
    v37 = MEMORY[0x18CFD53A0](v36);
    if (!v34 || v35 != v37)
    {

LABEL_25:
      sub_1883F8178();
      return;
    }

    v24 &= v24 - 1;

    v38 = Array.startIndex.getter();

    v67 = v38;
    while (1)
    {
      v39 = sub_1883F7228();
      v40 = MEMORY[0x18CFD53E0](v39);
      v41 = v67;
      if (v67 == v40)
      {
        break;
      }

      sub_1883F7228();
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v43 = v62;
        (*(v4 + 16))(v62, v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v41, v2);
      }

      else
      {
        sub_1883F7FE4();
        v49 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v53 != 8)
        {
          goto LABEL_29;
        }

        v65 = v49;
        v43 = v62;
        (*v58)(v62, &v65, v2);
        swift_unknownObjectRelease();
      }

      sub_1883F7FE4();
      Array.formIndex(after:)(v44);
      (*v57)(v8, v43, v2);
      v65 = v60;
      v66 = v32;

      MEMORY[0x18CFD4FC0](&v64, &v65, v63, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);

      if (!v64)
      {
        v50 = sub_1883FF3AC();
        v51(v50);
LABEL_24:

        goto LABEL_25;
      }

      v65 = v64;
      sub_1883F9C10();
      swift_getWitnessTable();
      v45 = *(*(v61 + 8) + 8);
      v46 = Sequence<>.contains(_:)();

      v47 = sub_1883FF3AC();
      v48(v47);
      if ((v46 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v27 = v28;
    v20 = v55;
    v12 = v56;
    v26 = v54;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_4:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      goto LABEL_25;
    }

    v24 = *(v20 + 8 * v28);
    ++v27;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_188483914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  static CKFeatureSet.== infix(_:_:)();
}

uint64_t CKFeatureSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  CKFeatureSet.features.getter(a2);
  v4 = *(a2 + 16);
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  sub_1883F91B8();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for LazyMapSequence();
  sub_1883FEC94();
  swift_getWitnessTable();
  sub_1883F9C10();
  swift_getWitnessTable();
  type metadata accessor for FlattenSequence();
  sub_1883FE600();
  swift_getWitnessTable();
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  v5 = *(*(a2 + 24) + 8);
  Sequence<>.sorted()();

  sub_188488D38();
  Sequence.forEach(_:)();
}

uint64_t sub_188483E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_18844E6FC(&qword_1EA90DA78, &qword_1886F9130);
  if (swift_dynamicCast())
  {
    sub_18843E080(v8, v10);
    sub_188400B68(v10, v10[3]);
    dispatch thunk of Hashable.hash(into:)();
    return sub_1883FE944(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    return sub_18840E89C(v8, &unk_1EA90DA80);
  }
}

Swift::Int CKFeatureSet.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  Hasher.init(_seed:)();
  CKFeatureSet.hash(into:)(v4, a1);
  return Hasher._finalize()();
}

Swift::Int sub_18848401C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  CKFeatureSet.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t CKFeatureSet.description.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v4);

  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  CKFeatureSet.features.getter(a1);
  v16 = *(a1 + 16);
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  sub_1883F91B8();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for LazyMapSequence();
  sub_1883FEC94();
  swift_getWitnessTable();
  sub_1883F9C10();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for FlattenSequence();
  sub_1883FE600();
  swift_getWitnessTable();
  type metadata accessor for LazySequence();
  v5 = sub_18844E6FC(&qword_1EA90D730, &qword_1886F8728);
  sub_1883F7EC8();
  swift_getWitnessTable();
  sub_1883F8E20();
  swift_getWitnessTable();
  sub_1883F87A4();
  swift_getWitnessTable();
  sub_1883F8400();
  swift_getWitnessTable();
  sub_1884054BC();
  swift_getWitnessTable();
  v6 = sub_188488D38();
  sub_188480308(v6, v7, v8, v5, v9, v10, v11, v12);

  v13 = sub_1883FF4BC();
  MEMORY[0x18CFD5330](v13);

  v14 = sub_1883F7228();
  MEMORY[0x18CFD5140](v14);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1884842A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = (*(a2 + 16))(a1, a2);
  a3[1] = v6;
  result = (*(a2 + 24))(a1, a2);
  a3[2] = result;
  a3[3] = v8;
  return result;
}

uint64_t sub_188484328@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  a2[1] = a1;
  v4 = -v2;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  a2[2] = a1 + 64;
  a2[3] = v3;
  a2[4] = 0;
  a2[5] = v6;
}

Swift::tuple_String_OpaquePointer_optional __swiftcall CKFeatureSet.Iterator.next()()
{
  v1 = v0[1];
  v3 = v0[4];
  v2 = v0[5];
  if (v2)
  {
    v4 = v0[4];
LABEL_6:
    v5 = __clz(__rbit64(v2)) | (v4 << 6);
    v6 = (*(v1 + 48) + 16 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = *(*(v1 + 56) + 8 * v5);
    v0[4] = v4;
    v0[5] = (v2 - 1) & v2;

LABEL_7:
    v10 = sub_1883F7228();
    v12 = v9;
  }

  else
  {
    while (1)
    {
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v4 >= ((v0[3] + 64) >> 6))
      {
        v9 = 0;
        v0[4] = v3;
        v0[5] = 0;
        goto LABEL_7;
      }

      v2 = *(v0[2] + 8 * v4);
      ++v3;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  result.value._1._rawValue = v12;
  result.value._0._object = v11;
  result.value._0._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_18848441C@<X0>(Swift::tuple_String_OpaquePointer_optional *a1@<X8>)
{
  v3 = CKFeatureSet.Iterator.next()();
  *a1 = v3;
  return v3.value._0._countAndFlagsBits;
}

uint64_t CKFeatureSet.makeIterator()@<X0>(void *a1@<X8>)
{
  sub_188484328(*v1, a1);
}

uint64_t sub_188484484@<X0>(void *a1@<X8>)
{
  CKFeatureSet.makeIterator()(a1);
  v2 = *v1;
}

void CKFeatureSet.init(dictionaryLiteral:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = CKFeatureSet.init()(&v26);
  v9 = v26;
  v27 = v26;
  v10 = *(v5 + 16);
  if (v10)
  {
    v21 = v5;
    v22 = v7;
    v25 = v1;
    v11 = (v5 + 48);
    do
    {
      v24 = v10;
      v23 = &v21;
      v12 = *(v11 - 2);
      v13 = *(v11 - 1);
      v14 = *v11;
      v11 += 3;
      v26 = v14;
      MEMORY[0x1EEE9AC00](v8);
      v15 = v25;
      *(&v21 - 4) = v3;
      *(&v21 - 3) = v15;
      *(&v21 - 2) = v16;
      *(&v21 - 1) = v13;

      v17 = sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
      v18 = sub_188488470(&qword_1EA90D890, &qword_1EA90D330);
      v20 = sub_188480308(sub_1884874D0, (&v21 - 6), v17, v3, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

      v26 = v20;
      sub_188410C30();
      type metadata accessor for CKFeatureSet();
      sub_188410C30();
      type metadata accessor for Array();
      swift_getWitnessTable();
      CKFeatureSet.insert<A>(_:)();

      v10 = v24 - 1;
    }

    while (v24 != 1);

    v9 = v27;
    v7 = v22;
  }

  else
  {
  }

  *v7 = v9;
  sub_1883F8178();
}

uint64_t sub_18848469C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a5 + 32);

  v8 = sub_188411050();
  return v7(v8);
}

void sub_188484734(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  CKFeatureSet.init(dictionaryLiteral:)();
}

uint64_t CKFeatureSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  CKFeatureSet.init()(&v16);
  v15 = a1;
  v14[2] = a2;
  v14[3] = a3;
  v8 = sub_18844E6FC(&qword_1EA90D898, &qword_1886F89E0);
  sub_1883FF5C0();
  v10 = sub_188488470(v9, &qword_1EA90D898);
  v12 = sub_188480308(sub_1884874F4, v14, v8, a2, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);

  v15 = v12;
  sub_1883FDBC4();
  type metadata accessor for CKFeatureSet();
  sub_1883FDBC4();
  type metadata accessor for Array();
  swift_getWitnessTable();
  CKFeatureSet.insert<A>(_:)();

  *a4 = v16;
  return result;
}

uint64_t sub_18848487C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a3 + 32);

  return v9(v5, v6, v7, v8, a2, a3);
}

uint64_t CKRequiredFeatureSet.zone.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t CKRequiredFeatureSet.record.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t CKRequiredFeatureSet.field.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

void CKRequiredFeatureSet.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC8];
  a1[1] = v1;
  a1[2] = v1;
}

Swift::Void __swiftcall CKRequiredFeatureSet.insert(_:)(CloudKit::CKZoneFeature a1)
{
  v1 = *a1.name._countAndFlagsBits;
  a1.name._object = *(a1.name._countAndFlagsBits + 8);
  a1.value._countAndFlagsBits = *(a1.name._countAndFlagsBits + 16);
  v2 = *(a1.name._countAndFlagsBits + 24);
  sub_188482420();
}

void CKRequiredFeatureSet.insert<A>(_:)()
{
  sub_1883FE21C();
  sub_18844E6FC(&qword_1EA90D8C0, &qword_1886F89E8);
  sub_1883FC640();

  CKFeatureSet.insert<A>(_:)();
}

{
  sub_1883FE21C();
  sub_18844E6FC(&qword_1EA90D8C8, &qword_1886F89F0);
  sub_1883FC640();
  CKFeatureSet.insert<A>(_:)();
}

{
  sub_1883FE21C();
  sub_18844E6FC(&qword_1EA90D8D0, &qword_1886F89F8);
  sub_1883FC640();
  CKFeatureSet.insert<A>(_:)();
}

Swift::Void __swiftcall CKRequiredFeatureSet.insert(_:)(CloudKit::CKRecordFeature a1)
{
  v1 = *a1.name._countAndFlagsBits;
  a1.name._object = *(a1.name._countAndFlagsBits + 8);
  a1.value._countAndFlagsBits = *(a1.name._countAndFlagsBits + 16);
  v2 = *(a1.name._countAndFlagsBits + 24);
  sub_1884825C4();
}

Swift::Void __swiftcall CKRequiredFeatureSet.insert(_:)(CloudKit::CKFieldFeature a1)
{
  v1 = *a1.name._countAndFlagsBits;
  a1.name._object = *(a1.name._countAndFlagsBits + 8);
  a1.value._countAndFlagsBits = *(a1.name._countAndFlagsBits + 16);
  v2 = *(a1.name._countAndFlagsBits + 24);
  sub_188482768();
}

uint64_t static CKRequiredFeatureSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  sub_1884831FC();
  if (v8 & 1) != 0 && (sub_1883F7BC0(), sub_1884831FC(), (v9))
  {
    sub_1883F7EE0();
    sub_1884831FC();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void CKRequiredFeatureSet.description.getter()
{
  sub_1883F8AF0();
  v1 = *v0;
  v205 = v0[1];
  if (!*(*v0 + 16) && !*(v205 + 16) && !*(v0[2] + 16))
  {
LABEL_93:
    sub_1883F8178();
    return;
  }

  v185 = v0[2];
  v262 = 0;
  v263 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  sub_188487638(v2, sub_188488D0C, 0, v3, v4, v5, v6, v7, v169, v173, v177, v181, v185, v190, v196, v200, v205, v210, v215, v220, v225, v230, v231, v232, v233, v234, 0xD00000000000001DLL, 0x80000001886FFF60);
  v9 = *(v1 + 36);
  v262 = 1 << *(v1 + 32);
  v8 = v262;
  v263 = v9;
  v264 = 0;
  v265 = 0;
  v266 = 1;
  v10 = sub_18848785C(v237, &v262, v1, sub_188488D0C);
  sub_188487EB8(v8, v9, 0);
  sub_18840E89C(v237, &unk_1EA90DAF0);
  if (v10)
  {
    v254[0] = MEMORY[0x1E69E7CC0];
    sub_1884777AC(0, v10 & ~(v10 >> 63), 0);
    v11 = v254[0];
    sub_1883FA368();
    sub_188487638(v1, v12, 0, v13, v14, v15, v16, v17, v170, v174, v178, v182, v186, v191, v197, v201, v206, v211, v216, v221, v226, v230, v231, v232, v233, v234, v235, v236);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v19 = v242;
      v20 = v241;
      v21 = v1 + 64;
      HIDWORD(v182) = v240;
      v23 = v238;
      v22 = v239;
      v192 = v10;
      v197 = v1 + 64;
      v201 = v1;
      while (1)
      {
        v24 = __OFADD__(v18, 1);
        v25 = v18 + 1;
        if (v24)
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if ((v23 & 0x8000000000000000) != 0 || v23 >= 1 << *(v1 + 32))
        {
          goto LABEL_96;
        }

        v26 = v23 >> 6;
        v27 = 1 << v23;
        if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
        {
          goto LABEL_97;
        }

        if (*(v1 + 36) != v22)
        {
          goto LABEL_98;
        }

        if (v19)
        {
          goto LABEL_128;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

        v28 = *(*(v1 + 56) + 8 * v23);
        if (v20 >= *(v28 + 16))
        {
          goto LABEL_100;
        }

        v221 = v22;
        v226 = v23;
        v211 = v25;
        v216 = v20;
        v29 = (v28 + 32 * v20);
        v30 = v29[4];
        v31 = v29[5];
        v32 = v29[6];
        v33 = v29[7];
        v254[0] = v11;
        v35 = *(v11 + 16);
        v34 = *(v11 + 24);

        if (v35 >= v34 >> 1)
        {
          sub_1884777AC((v34 > 1), v35 + 1, 1);
          v11 = v254[0];
        }

        *(v11 + 16) = v35 + 1;
        v36 = (v11 + 32 * v35);
        v36[4] = v30;
        v36[5] = v31;
        v36[6] = v32;
        v36[7] = v33;
        v1 = v201;
        v23 = v226;
        if (v226 >= 1 << *(v201 + 32))
        {
          goto LABEL_101;
        }

        v21 = v197;
        if ((*(v197 + 8 * v26) & v27) == 0)
        {
          goto LABEL_102;
        }

        v22 = v221;
        if (*(v201 + 36) != v221)
        {
          goto LABEL_103;
        }

        v20 = v216 + 1;
        if (v216 + 1 == *(*(*(v201 + 56) + 8 * v226) + 16))
        {
          break;
        }

        v19 = 0;
LABEL_22:
        v37 = v192;
        v18 = v211;
LABEL_23:
        if (v18 == v37)
        {

          sub_1883FDC60();
          sub_188487EB8(v23, v22, v52);
          goto LABEL_34;
        }
      }

      sub_1883FDC60();
      v39 = sub_188488008(v226, v221, v38, v201);
      v41 = v40;
      if (v42)
      {
        goto LABEL_131;
      }

      while (1)
      {
        v22 = *(v201 + 36);
        if (v22 != v41)
        {
          goto LABEL_125;
        }

        if (v39 == 1 << *(v201 + 32))
        {
          sub_1883FDC60();
          sub_188487EB8(v226, v221, v50);
          sub_188404BD4();
          v19 = 1;
          v23 = v39;
          goto LABEL_22;
        }

        v43 = sub_18844E6FC(&qword_1EA90D900, &qword_1886F8A38);
        v170 = sub_1884883C0();
        v44 = sub_188487E40(v258, v39, v41, 0, v201, sub_188488D0C, 0, v43);
        v46 = *v45;

        (v44)(v258, 0);
        v47 = *(v46 + 16);

        if (v47)
        {
          sub_1883FDC60();
          sub_188487EB8(v226, v221, v51);
          sub_188404BD4();
          v19 = 0;
          v22 = v41;
          v23 = v39;
          v37 = v192;
          v18 = v211;
          goto LABEL_23;
        }

        v39 = sub_188488008(v39, v41, 0, v201);
        v41 = v48;
        if (v49)
        {
          goto LABEL_131;
        }
      }
    }

    goto LABEL_122;
  }

LABEL_34:
  sub_18844E6FC(&qword_1EA90D730, &qword_1886F8728);
  v53 = sub_1883F9598();
  v193 = v54;
  MEMORY[0x18CFD5330](v53);

  v55 = sub_1883FF6E8();
  MEMORY[0x18CFD5140](v55);

  MEMORY[0x18CFD5140](0x64726F636572202CLL, 0xEA0000000000203ALL);
  v56 = v206;

  sub_188487638(v57, sub_188488D0C, 0, v58, v59, v60, v61, v62, v170, v174, v178, v182, v186, v193, v197, v201, v206, v211, v216, v221, v226, v230, v231, v232, v233, v234, v235, v236);
  v64 = *(v56 + 36);
  v258[0] = 1 << *(v56 + 32);
  v63 = v258[0];
  v258[1] = v64;
  v259 = 0;
  v260 = 0;
  v261 = 1;
  v65 = sub_18848785C(v243, v258, v56, sub_188488D0C);
  sub_188487EB8(v63, v64, 0);
  sub_18840E89C(v243, &unk_1EA90D8D8);
  if (v65)
  {
    v250 = MEMORY[0x1E69E7CC0];
    sub_1884777AC(0, v65 & ~(v65 >> 63), 0);
    v66 = v250;
    sub_1883FA368();
    sub_188487638(v56, v67, 0, v68, v69, v70, v71, v72, v171, v175, v179, v183, v187, v194, v198, v202, v207, v212, v217, v222, v227, v230, v231, v232, v233, v234, v235, v236);
    if (v65 < 0)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v73 = v56;
    v74 = 0;
    v75 = v248;
    v76 = v247;
    v77 = v56 + 64;
    HIDWORD(v183) = v246;
    v79 = v244;
    v78 = v245;
    v198 = v65;
    v202 = v56 + 64;
    while (1)
    {
      v24 = __OFADD__(v74, 1);
      v80 = v74 + 1;
      if (v24)
      {
        break;
      }

      if ((v79 & 0x8000000000000000) != 0 || v79 >= 1 << *(v73 + 32))
      {
        goto LABEL_105;
      }

      v81 = v79 >> 6;
      v82 = 1 << v79;
      if ((*(v77 + 8 * (v79 >> 6)) & (1 << v79)) == 0)
      {
        goto LABEL_106;
      }

      if (*(v73 + 36) != v78)
      {
        goto LABEL_107;
      }

      if (v75)
      {
        goto LABEL_129;
      }

      if ((v76 & 0x8000000000000000) != 0)
      {
        goto LABEL_108;
      }

      v83 = *(*(v73 + 56) + 8 * v79);
      if (v76 >= *(v83 + 16))
      {
        goto LABEL_109;
      }

      v222 = v78;
      v227 = v79;
      v212 = v80;
      v217 = v76;
      v84 = (v83 + 32 * v76);
      v86 = v84[4];
      v85 = v84[5];
      v87 = v84[6];
      v88 = v84[7];
      v250 = v66;
      v90 = *(v66 + 16);
      v89 = *(v66 + 24);

      if (v90 >= v89 >> 1)
      {
        sub_1884777AC((v89 > 1), v90 + 1, 1);
        v66 = v250;
      }

      *(v66 + 16) = v90 + 1;
      v91 = (v66 + 32 * v90);
      v91[4] = v86;
      v91[5] = v85;
      v91[6] = v87;
      v91[7] = v88;
      v73 = v207;
      v79 = v227;
      if (v227 >= 1 << *(v207 + 32))
      {
        goto LABEL_110;
      }

      v77 = v202;
      if ((*(v202 + 8 * v81) & v82) == 0)
      {
        goto LABEL_111;
      }

      v78 = v222;
      if (*(v207 + 36) != v222)
      {
        goto LABEL_112;
      }

      v76 = v217 + 1;
      if (v217 + 1 == *(*(*(v207 + 56) + 8 * v227) + 16))
      {
        sub_1883FDC60();
        v79 = sub_188488008(v227, v222, v93, v207);
        v95 = v94;
        v92 = v198;
        v179 = v66;
        if (v96)
        {
          goto LABEL_132;
        }

        while (1)
        {
          v97 = *(v207 + 36);
          if (v97 != v95)
          {
            goto LABEL_126;
          }

          if (v79 == 1 << *(v207 + 32))
          {
            sub_1883FDC60();
            sub_188487EB8(v227, v222, v106);
            sub_188404BD4();
            v75 = 1;
            v78 = v97;
            goto LABEL_52;
          }

          v98 = sub_18844E6FC(&unk_1EA90DB20, &qword_1886F8A28);
          v171 = sub_188488310();
          v99 = sub_188487DD0(v254, v79, v95, 0, v207, sub_188488D0C, 0, v98);
          v100 = v79;
          v102 = *v101;

          (v99)(v254, 0);
          v103 = *(v102 + 16);

          if (v103)
          {
            sub_1883FDC60();
            sub_188487EB8(v227, v222, v107);
            sub_188404BD4();
            v75 = 0;
            v78 = v95;
            v79 = v100;
            v66 = v179;
            goto LABEL_52;
          }

          v79 = sub_188488008(v100, v95, 0, v207);
          v95 = v104;
          v66 = v179;
          if (v105)
          {
            goto LABEL_132;
          }
        }
      }

      v75 = 0;
      v92 = v198;
LABEL_52:
      v74 = v212;
      if (v212 == v92)
      {

        sub_1883FDC60();
        sub_188487EB8(v79, v78, v108);
        goto LABEL_63;
      }
    }

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
    goto LABEL_113;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_63:
  MEMORY[0x18CFD5330](v66, v194);

  v109 = sub_1884110D8();
  MEMORY[0x18CFD5140](v109);

  MEMORY[0x18CFD5140](0x3A646C656966202CLL, 0xE900000000000020);
  v110 = v187;

  sub_188487638(v111, sub_188488D0C, 0, v112, v113, v114, v115, v116, v171, v175, v179, v183, v187, v194, v198, v202, v207, v212, v217, v222, v227, v230, v231, v232, v233, v234, v235, v236);
  v117 = *(v110 + 36);
  v254[0] = 1 << *(v110 + 32);
  v254[1] = v117;
  v255 = 0;
  v256 = 0;
  v257 = 1;
  v118 = sub_18848785C(v249, v254, v110, sub_188488D0C);
  v119 = sub_1883FF6E8();
  sub_188487EB8(v119, v120, 0);
  sub_18840E89C(v249, &unk_1EA90DB40);
  if (!v118)
  {

    v121 = MEMORY[0x1E69E7CC0];
LABEL_92:
    MEMORY[0x18CFD5330](v121, v195);

    v168 = sub_1883F7228();
    MEMORY[0x18CFD5140](v168);

    MEMORY[0x18CFD5140](62, 0xE100000000000000);
    goto LABEL_93;
  }

  v234 = MEMORY[0x1E69E7CC0];
  sub_1884777AC(0, v118 & ~(v118 >> 63), 0);
  v121 = v234;
  sub_1883FA368();
  sub_188487638(v110, v122, 0, v123, v124, v125, v126, v127, v172, v176, v180, v184, v188, v195, v199, v203, v208, v213, v218, v223, v228, v230, v231, v232, v233, v234, v235, v236);
  if ((v118 & 0x8000000000000000) == 0)
  {
    v128 = v110;
    v129 = 0;
    v130 = v253;
    v131 = v252;
    v132 = v110 + 64;
    v134 = v250;
    v133 = v251;
    v204 = v118;
    v209 = v110 + 64;
    while (1)
    {
      v24 = __OFADD__(v129, 1);
      v135 = v129 + 1;
      if (v24)
      {
        break;
      }

      if ((v134 & 0x8000000000000000) != 0 || v134 >= 1 << *(v128 + 32))
      {
        goto LABEL_114;
      }

      v136 = v134 >> 6;
      v137 = 1 << v134;
      if ((*(v132 + 8 * (v134 >> 6)) & (1 << v134)) == 0)
      {
        goto LABEL_115;
      }

      if (*(v128 + 36) != v133)
      {
        goto LABEL_116;
      }

      if (v130)
      {
        goto LABEL_130;
      }

      if ((v131 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      v138 = *(*(v128 + 56) + 8 * v134);
      if (v131 >= *(v138 + 16))
      {
        goto LABEL_118;
      }

      v224 = v133;
      v229 = v134;
      v214 = v135;
      v219 = v131;
      v139 = (v138 + 32 * v131);
      v140 = v139[4];
      v141 = v139[5];
      v142 = v139[6];
      v143 = v139[7];
      v234 = v121;
      v145 = *(v121 + 16);
      v144 = *(v121 + 24);

      if (v145 >= v144 >> 1)
      {
        sub_1884777AC((v144 > 1), v145 + 1, 1);
        v121 = v234;
      }

      *(v121 + 16) = v145 + 1;
      v146 = (v121 + 32 * v145);
      v146[4] = v140;
      v146[5] = v141;
      v146[6] = v142;
      v146[7] = v143;
      v128 = v189;
      v134 = v229;
      if (v229 >= 1 << *(v189 + 32))
      {
        goto LABEL_119;
      }

      v132 = v209;
      if ((*(v209 + 8 * v136) & v137) == 0)
      {
        goto LABEL_120;
      }

      v133 = v224;
      if (*(v189 + 36) != v224)
      {
        goto LABEL_121;
      }

      v131 = v219 + 1;
      if (v219 + 1 == *(*(*(v189 + 56) + 8 * v229) + 16))
      {
        sub_188410B84();
        v147 = sub_1883FDCB4();
        v150 = sub_188488008(v147, v148, v149, v189);
        v152 = v151;
        if (v153)
        {
          goto LABEL_133;
        }

        while (1)
        {
          v154 = *(v189 + 36);
          if (v154 != v152)
          {
            goto LABEL_127;
          }

          if (v150 == 1 << *(v189 + 32))
          {
            sub_188410B84();
            sub_188487EB8(v229, v224, v163);
            v131 = 0;
            v130 = 1;
            v134 = v150;
            v133 = v154;
            goto LABEL_81;
          }

          v155 = v121;
          v156 = sub_18844E6FC(&qword_1EA90D8E0, &qword_1886F8A18);
          sub_188488260();
          v157 = sub_188487DD0(&v230, v150, v152, 0, v189, sub_188488D0C, 0, v156);
          v159 = *v158;

          (v157)(&v230, 0);
          v160 = *(v159 + 16);

          if (v160)
          {
            sub_188410B84();
            sub_188487EB8(v229, v224, v164);
            v131 = 0;
            v130 = 0;
            v134 = v150;
            v133 = v152;
            v121 = v155;
            goto LABEL_81;
          }

          v150 = sub_188488008(v150, v152, 0, v189);
          v152 = v161;
          v121 = v155;
          if (v162)
          {
            goto LABEL_133;
          }
        }
      }

      v130 = 0;
LABEL_81:
      v129 = v214;
      if (v214 == v204)
      {

        sub_188410B84();
        v165 = sub_1883FDCB4();
        sub_188487EB8(v165, v166, v167);
        goto LABEL_92;
      }
    }

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
    goto LABEL_123;
  }

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
}

uint64_t CKRequiredFeatureSet.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_188483B90();
  v4 = sub_1883F7228();
  sub_188483A58(v4);
  v5 = sub_1883F7EE0();

  return sub_188483920(v5);
}

Swift::Int CKRequiredFeatureSet.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_188483B90(v5, v1);
  sub_188483A58(v5);
  sub_188483920(v5);
  return Hasher._finalize()();
}

Swift::Int sub_188485D38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_188483B90(v5, v1);
  sub_188483A58(v5);
  sub_188483920(v5);
  return Hasher._finalize()();
}

void CKRecordZone.requiredFeatures.getter(uint64_t a1@<X8>)
{
  v3 = [v1 requiredFeatures];
  sub_188488E50(&v4);

  if (v4)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
  }

  else
  {
    __break(1u);
  }
}

double sub_188485E08@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  CKRecordZone.requiredFeatures.getter(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

void sub_188485E4C(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  *&v5 = *a1;
  *(&v5 + 1) = v2;
  v6 = v3;

  CKRecordZone.requiredFeatures.setter(&v5);
}

void CKRecordZone.requiredFeatures.setter(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 2);
  type metadata accessor for CKRequiredFeatureSet(0);
  v6 = *a1;
  v7 = v4;
  v5 = sub_188488EA8(&v6);
  [v2 setRequiredFeatures_];
}

void (*CKRecordZone.requiredFeatures.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  CKRecordZone.requiredFeatures.getter(a1);
  return sub_188485F7C;
}

void sub_188485F7C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    *&v6 = *a1;
    *(&v6 + 1) = v2;
    v7 = v4;

    CKRecordZone.requiredFeatures.setter(&v6);
  }

  else
  {
    *&v6 = *a1;
    *(&v6 + 1) = v2;
    v7 = v4;
    CKRecordZone.requiredFeatures.setter(&v6);
  }
}

void CKShareMetadata.requiredFeatures.getter(void *a1@<X8>)
{
  v3 = [v1 requiredFeatures];
  if (v3)
  {
    v4 = v3;
    sub_188488E50(a1);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double sub_1884860A4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  CKShareMetadata.requiredFeatures.getter(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

void sub_1884860E8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = v3;
  sub_188488A18(v5[0]);
  sub_188486134(v5);
}

void sub_188486134(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (*a1)
  {
    type metadata accessor for CKRequiredFeatureSet(0);
    v6 = v3;
    v7 = *(a1 + 1);
    v5 = sub_188488EA8(&v6);
    [v2 setRequiredFeatures_];
  }

  else
  {

    [v1 setRequiredFeatures_];
  }
}

Swift::Int sub_1884861F4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v9 = *(v4 + 16);
  sub_18840C144();
  result = sub_188486890(v5, v6, v7);
  *a1 = v4;
  return result;
}

uint64_t sub_1884862A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1883FEE54();
  result = v3(v2);
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_188486310()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_188486354()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_188486398()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_1884863DC()
{
  sub_188405F00();
  type metadata accessor for URL();
  sub_188488A64(&qword_1EA90D398, MEMORY[0x1E6968FB0]);
  sub_1883F7BC0();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1883FE2BC();
  sub_18848671C();
}

void sub_18848649C()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

unint64_t sub_1884864E0()
{
  v0 = sub_1883F95A4();
  AnyHashable._rawHashValue(seed:)(v0);
  v1 = sub_1883F9598();

  return sub_188486658(v1, v2);
}

void sub_188486518()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_18848655C()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_1884865A0()
{
  sub_1883F8AF0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v0 + 64;
  sub_1883F7AD8();
  v8 = ~v7;
  for (i = v9 & ~v7; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_1883F4C5C(0, v4, v2);
    v11 = *(*(v5 + 48) + 8 * i);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      break;
    }
  }

  sub_1883F8178();
}

unint64_t sub_188486658(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1884802A8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x18CFD58F0](v8, a1);
    sub_1884889C4(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_18848671C()
{
  sub_1883F8AF0();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  sub_1883F9C28();
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00]();
  v14 = &v19 - v13;
  v24 = v0 + 64;
  v20 = v0;
  sub_1883F7AD8();
  v16 = ~v15;
  for (i = v5 & ~v15; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v14, *(v20 + 48) + *(v10 + 72) * i, v8);
    sub_188488A64(v21, v22);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v14, v8);
    if (v18)
    {
      break;
    }
  }

  sub_1883F8178();
}

Swift::Int sub_188486890(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v10 = result;
      v11 = v5 / 2;
      if (v5 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1883FEB84();
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v12 + 16) = v11;
      }

      v15[0] = v12 + 32;
      v15[1] = v11;
      sub_188486AC8(v15, v16, a1, v10, a3, v7, v8, v9);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v13 = sub_188410C30();
    return sub_18848698C(v13, v14, 1, a1);
  }

  return result;
}

uint64_t sub_18848698C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 32 * a3 - 32);
    v5 = result - a3;
    while (2)
    {
      v19 = v4;
      v20 = a3;
      v6 = (v22 + 32 * a3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v18 = v5;
      do
      {
        v11 = v4[2];
        v12 = v4[3];
        v13 = v7 == *v4 && v8 == v4[1];
        if (v13 || (v21 = v4[2], result = _stringCompareWithSmolCheck(_:_:expecting:)(), v11 = v21, (result & 1) != 0))
        {
          if (v9 == v11 && v10 == v12)
          {
            break;
          }
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v22)
        {
          __break(1u);
          return result;
        }

        v7 = v4[4];
        v8 = v4[5];
        v9 = v4[6];
        v10 = v4[7];
        v15 = *(v4 + 1);
        *(v4 + 2) = *v4;
        *(v4 + 3) = v15;
        *v4 = v7;
        v4[1] = v8;
        v4[2] = v9;
        v4[3] = v10;
        v4 -= 4;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v20 + 1;
      v4 = v19 + 4;
      v5 = v18 - 1;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_188486AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v123 = a5;
  v124 = a3;
  v117 = a1;
  v9 = *(a3 + 8);
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v8 = *v117;
    if (!*v117)
    {
      goto LABEL_159;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_120:
      v108 = v11 + 2;
      for (i = v11[2]; i >= 2; *v108 = i)
      {
        sub_188404A78(isUniquelyReferenced_nonNull_native, v101, v102, v103, v104, v105, v106, v107, v116, v117, v118, v119, v120, v121, v122, v123, v124);
        if (!v110)
        {
          goto LABEL_156;
        }

        v111 = &v11[2 * i];
        v112 = *v111;
        v113 = &v108[2 * i];
        v114 = *(v113 + 1);
        sub_1884871D8((v110 + 32 * *v111), (v110 + 32 * *v113), (v110 + 32 * v114), v8, v123);
        if (v125)
        {
          break;
        }

        if (v114 < v112)
        {
          goto LABEL_144;
        }

        if (i - 2 >= *v108)
        {
          goto LABEL_145;
        }

        *v111 = v112;
        v111[1] = v114;
        v115 = *v108 - i;
        if (*v108 < i)
        {
          goto LABEL_146;
        }

        v125 = 0;
        i = *v108 - 1;
        isUniquelyReferenced_nonNull_native = sub_18851423C(v113 + 16, v115, v113);
      }

LABEL_128:

      return;
    }

LABEL_153:
    isUniquelyReferenced_nonNull_native = sub_188514144(v11);
    v11 = isUniquelyReferenced_nonNull_native;
    goto LABEL_120;
  }

  v116 = a4;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v12 = v10;
    v13 = v10 + 1;
    v122 = v11;
    if (v10 + 1 >= v9)
    {
      goto LABEL_41;
    }

    sub_188404A78(a1, a2, a3, a4, a5, a6, a7, a8, v116, v117, v118, v119, v120, v121, v11, v123, v124);
    v15 = (v14 + 32 * v13);
    v16 = v15[2];
    a2 = v15[3];
    v118 = v12;
    v17 = (v14 + 32 * v12);
    v8 = v17[2];
    v18 = v17[3];
    v19 = *v15 == *v17 && v15[1] == v17[1];
    if (v19 || (v130 = v15[3], a1 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v130, (a1)) && (v16 == v8 ? (v20 = a2 == v18) : (v20 = 0), v20))
    {
      v131 = 0;
    }

    else
    {
      a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v131 = a1;
    }

    v11 = v122;
    v13 = v12 + 2;
    v121 = 32 * v12;
    v21 = v17 + 6;
    v128 = v9;
    while (v13 < v9)
    {
      v22 = v21[4];
      v23 = v21[5];
      v24 = *v21;
      v8 = v21[1];
      v25 = v21[2] == *(v21 - 2) && v21[3] == *(v21 - 1);
      if (v25 || (sub_1883FF4BC(), a1 = _stringCompareWithSmolCheck(_:_:expecting:)(), (a1 & 1) != 0))
      {
        if (v22 == v24 && v23 == v8)
        {
          v11 = v122;
          v9 = v128;
          if (v131)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        sub_18840F69C();
      }

      else
      {
        sub_1883FF4BC();
      }

      a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v128;
      v11 = v122;
      if ((v131 ^ a1))
      {
        break;
      }

LABEL_32:
      ++v13;
      v21 += 4;
    }

    if ((v131 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (v13 < v12)
    {
      goto LABEL_150;
    }

    if (v12 < v13)
    {
      v27 = 32 * v13 - 16;
      v28 = v121 + 24;
      v29 = v13;
      v30 = v12;
      do
      {
        if (v30 != --v29)
        {
          v31 = *v124;
          if (!*v124)
          {
            goto LABEL_157;
          }

          v32 = (v31 + v28);
          v33 = v31 + v27;
          v34 = *(v32 - 3);
          v35 = *(v32 - 1);
          v36 = *v32;
          v37 = *v33;
          *(v32 - 3) = *(v33 - 16);
          *(v32 - 1) = v37;
          *(v33 - 16) = v34;
          *v33 = v35;
          *(v33 + 8) = v36;
        }

        ++v30;
        v27 -= 32;
        v28 += 32;
      }

      while (v30 < v29);
    }

LABEL_41:
    v38 = v124[1];
    if (v13 >= v38)
    {
      goto LABEL_66;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_149;
    }

    if (v13 - v12 >= v116)
    {
LABEL_66:
      if (v13 < v12)
      {
        goto LABEL_148;
      }

      a1 = swift_isUniquelyReferenced_nonNull_native();
      v127 = v13;
      if ((a1 & 1) == 0)
      {
        v99 = v11[2];
        sub_188476DA8();
        v11 = a1;
      }

      v56 = v11[2];
      v57 = v56 + 1;
      if (v56 >= v11[3] >> 1)
      {
        sub_188476DA8();
        v11 = a1;
      }

      v11[2] = v57;
      v58 = v11 + 4;
      v59 = &v11[2 * v56 + 4];
      *v59 = v12;
      v59[1] = v127;
      v133 = *v117;
      if (!*v117)
      {
        goto LABEL_158;
      }

      if (!v56)
      {
LABEL_115:
        v9 = v124[1];
        v10 = v127;
        if (v127 >= v9)
        {
          goto LABEL_118;
        }

        continue;
      }

      while (1)
      {
        v60 = v57 - 1;
        v61 = &v58[2 * v57 - 2];
        v62 = &v11[2 * v57];
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v63 = v11[4];
          v64 = v11[5];
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_86:
          if (v66)
          {
            goto LABEL_135;
          }

          v78 = *v62;
          v77 = v62[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_138;
          }

          v82 = v61[1];
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_143;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v57 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v57 < 2)
        {
          goto LABEL_137;
        }

        v85 = *v62;
        v84 = v62[1];
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_101:
        if (v81)
        {
          goto LABEL_140;
        }

        v87 = *v61;
        v86 = v61[1];
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_142;
        }

        if (v88 < v80)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v60 - 1 >= v57)
        {
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
          goto LABEL_152;
        }

        sub_188404A78(a1, a2, a3, a4, a5, a6, a7, a8, v116, v117, v118, v119, v120, v121, v122, v123, v124);
        if (!v92)
        {
          goto LABEL_155;
        }

        v94 = &v58[2 * v93];
        v95 = *v94;
        v96 = &v58[2 * v60];
        v8 = *(v96 + 1);
        sub_1884871D8((v92 + 32 * *v94), (v92 + 32 * *v96), (v92 + 32 * v8), v133, v123);
        if (v125)
        {
          goto LABEL_128;
        }

        if (v8 < v95)
        {
          goto LABEL_130;
        }

        v97 = v11;
        v11 = v11[2];
        if (v60 > v11)
        {
          goto LABEL_131;
        }

        *v94 = v95;
        v94[1] = v8;
        if (v60 >= v11)
        {
          goto LABEL_132;
        }

        v125 = 0;
        v57 = v11 - 1;
        a1 = sub_18851423C(v96 + 16, v11 - v60 - 1, &v58[2 * v60]);
        v97[2] = v11 - 1;
        v98 = v11 > 2;
        v11 = v97;
        if (!v98)
        {
          goto LABEL_115;
        }
      }

      v67 = &v58[2 * v57];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_133;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_134;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_136;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_139;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_147;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

    break;
  }

  v39 = v12 + v116;
  if (__OFADD__(v12, v116))
  {
    goto LABEL_151;
  }

  if (v39 >= v38)
  {
    v39 = v124[1];
  }

  if (v39 < v12)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v13 == v39)
  {
    goto LABEL_66;
  }

  sub_188404A78(a1, a2, a3, a4, a5, a6, a7, a8, v116, v117, v118, v119, v120, v121, v122, v123, v124);
  v132 = v40;
  v41 = v40 + 32 * v13 - 32;
  v118 = v12;
  v119 = v42;
  v8 = v12 - v13;
LABEL_50:
  v126 = v13;
  v43 = (v132 + 32 * v13);
  v44 = *v43;
  v45 = v43[1];
  v47 = v43[2];
  v46 = v43[3];
  v120 = v8;
  v121 = v41;
  v48 = v41;
  while (1)
  {
    v49 = v48[2];
    v50 = v48[3];
    v51 = v44 == *v48 && v45 == v48[1];
    if (v51 || (v129 = v48[2], v52 = _stringCompareWithSmolCheck(_:_:expecting:)(), v49 = v129, (v52)) && (v47 == v49 ? (v53 = v46 == v50) : (v53 = 0), v53) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_64:
      v13 = v126 + 1;
      v41 = v121 + 32;
      v8 = v120 - 1;
      if (v126 + 1 == v119)
      {
        v13 = v119;
        v11 = v122;
        v12 = v118;
        goto LABEL_66;
      }

      goto LABEL_50;
    }

    if (!v132)
    {
      break;
    }

    v44 = v48[4];
    v45 = v48[5];
    v47 = v48[6];
    v46 = v48[7];
    v54 = *(v48 + 1);
    *(v48 + 2) = *v48;
    *(v48 + 3) = v54;
    *v48 = v44;
    v48[1] = v45;
    v48[2] = v47;
    v48[3] = v46;
    v48 -= 4;
    if (__CFADD__(v8++, 1))
    {
      goto LABEL_64;
    }
  }

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
}

uint64_t sub_1884871D8(char *a1, char *a2, char *a3, char *a4, void (*a5)(char *, int64_t, char *))
{
  v5 = a4;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v45 = a3;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    a5(a1, (a2 - a1) / 32, a4);
    v10 = &v5[32 * v8];
    for (i = v10; ; v10 = i)
    {
      if (v5 >= v10 || v6 >= v45)
      {
        v21 = v7;
        goto LABEL_49;
      }

      v12 = *(v6 + 2);
      v13 = *(v6 + 3);
      v43 = v6;
      v14 = *(v5 + 2);
      v15 = *(v5 + 3);
      v16 = *v6 == *v5 && *(v6 + 1) == *(v5 + 1);
      if (v16 || (sub_1884110D8(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        if (v12 == v14 && v13 == v15)
        {
LABEL_21:
          v18 = v5;
          v16 = v7 == v5;
          v5 += 32;
          if (v16)
          {
            goto LABEL_23;
          }

LABEL_22:
          v19 = *(v18 + 1);
          *v7 = *v18;
          *(v7 + 1) = v19;
          goto LABEL_23;
        }

        sub_1883FAABC();
      }

      else
      {
        sub_1884110D8();
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_21;
      }

      v18 = v6;
      v6 += 32;
      if (v7 != v43)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 32;
    }
  }

  a5(a2, (a3 - a2) / 32, a4);
  v41 = &v5[32 * v9];
  v39 = v5;
  v48 = v7;
LABEL_25:
  v20 = 0;
  v21 = v6;
  v44 = v6 - 32;
  v40 = v6;
  while (1)
  {
    v10 = &v41[v20];
    if (&v41[v20] <= v5 || v21 <= v7)
    {
      break;
    }

    v42 = v20;
    v47 = &v41[v20];
    v24 = *(v10 - 4);
    v23 = *(v10 - 3);
    v25 = v10 - 32;
    v26 = *(v25 + 2);
    v27 = *(v25 + 3);
    v29 = *(v21 - 2);
    v28 = *(v21 - 1);
    v30 = v24 == *(v21 - 4) && v23 == *(v21 - 3);
    if (v30 || (sub_188411050(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      if (v26 == v29 && v27 == v28)
      {
        goto LABEL_43;
      }

      sub_18840F69C();
    }

    else
    {
      sub_188411050();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v6 -= 32;
      v34 = &v45[v42];
      v45 = &v45[v42 - 32];
      v41 += v42;
      v5 = v39;
      v7 = v48;
      if (v34 != v40)
      {
        v35 = *(v44 + 1);
        *v45 = *v44;
        *(v45 + 1) = v35;
      }

      goto LABEL_25;
    }

LABEL_43:
    v32 = &v45[v42];
    v7 = v48;
    if (v47 != &v45[v42])
    {
      v33 = *(v25 + 1);
      *(v32 - 2) = *v25;
      *(v32 - 1) = v33;
    }

    v20 = v42 - 32;
    v5 = v39;
    v21 = v6;
  }

LABEL_49:
  v36 = (v10 - v5) / 32;
  if (v21 != v5 || v21 >= &v5[32 * v36])
  {
    memmove(v21, v5, 32 * v36);
  }

  return 1;
}

unint64_t sub_188487514()
{
  result = qword_1EA90D8A8;
  if (!qword_1EA90D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D8A8);
  }

  return result;
}

unint64_t sub_188487568()
{
  result = qword_1EA90D8B0;
  if (!qword_1EA90D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D8B0);
  }

  return result;
}

unint64_t sub_1884875BC()
{
  result = qword_1EA90D8B8;
  if (!qword_1EA90D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D8B8);
  }

  return result;
}

void sub_188487638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_188403868();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v58 = v32;
  v59 = v33;
  v60 = 1 << *(v30 + 32);
  v34 = *(v30 + 36);
  v35 = sub_188487EC4(v30);
  v37 = v36;
  v38 = v31 + 64;
  if (v39)
  {
    __break(1u);
LABEL_21:
    v57 = 1 << *(v31 + 32);
    v37 = *(v31 + 36);
LABEL_23:
    *v58 = v57;
    *(v58 + 8) = v37;
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = v35 == v60;
    sub_1883FDD58();
  }

  else
  {
    while (v34 == v37)
    {
      if (v35 == v60)
      {
        goto LABEL_21;
      }

      if (v35 < 0 || v35 >= 1 << *(v31 + 32))
      {
        goto LABEL_25;
      }

      v40 = v35 >> 6;
      if ((*(v38 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_27;
      }

      v41 = (*(v31 + 48) + 16 * v35);
      v42 = v41[1];
      v43 = *(*(v31 + 56) + 8 * v35);
      a13 = *v41;
      a14 = v42;
      a15 = v43;

      v59(&a16, &a13);

      v44 = *(a16 + 16);

      if (v44)
      {
        v57 = v35;
        goto LABEL_23;
      }

      v45 = 1 << *(v31 + 32);
      if (v35 >= v45)
      {
        goto LABEL_28;
      }

      v46 = *(v38 + 8 * v40);
      if ((v46 & (1 << v35)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_30;
      }

      v47 = v46 & (-2 << (v35 & 0x3F));
      if (v47)
      {
        v45 = __clz(__rbit64(v47)) | v35 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v40 << 6;
        v49 = v40 + 1;
        v50 = (v31 + 72 + 8 * v40);
        while (v49 < (v45 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            v53 = sub_1883FF6E8();
            sub_188487EB8(v53, v54, 0);
            v45 = __clz(__rbit64(v51)) + v48;
            goto LABEL_19;
          }
        }

        v55 = sub_1883FF6E8();
        sub_188487EB8(v55, v56, 0);
      }

LABEL_19:
      v37 = *(v31 + 36);
      v35 = v45;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_18848785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v137 = a4;
  v128 = a3;
  result = sub_188487D60(a2, a1);
  v7 = result;
  if (result)
  {
    v8 = 1 << *(v128 + 32);
    v9 = *(v128 + 36);
    v10 = sub_188487EC4(v128);
    v12 = v11;
    v14 = v13;
    v15 = sub_1883FAABC();
    sub_188487F04(v15, v16, 0, v10, v12, v17, v128);
    sub_188487EB8(v10, v12, v14 & 1);
    v18 = sub_1883FAABC();
    result = sub_188487EB8(v18, v19, 0);
  }

  if (*(a1 + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_59;
  }

  v20 = *(a1 + 8);
  v21 = *(a2 + 8);
  v22 = v128;
  if (v20 != v21)
  {
    goto LABEL_54;
  }

  v23 = *a1;
  v24 = *a2;
  v25 = *(a1 + 24);
  v26 = *(a1 + 32);
  v27 = *(a2 + 24);
  v28 = *(a2 + 32);
  if (v23 == v24)
  {
    if ((v26 | v28))
    {
      return 0;
    }

    v41 = v25;
    v42 = sub_1884881D0(&v146, v23, v20, 0, v128);
    v50 = sub_188414748(v42, v43, v44, v45, v46, v47, v48, v49, v115, v117, v119, v124, v126, v128, v130, v132, v135, v137, v139, v42);
    v51(v50);

    result = v27 - v41;
    if (!__OFSUB__(v27, v41))
    {
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  HIDWORD(v124) = v26;
  v120 = v25;
  result = &v146;
  if ((v7 & 1) == 0)
  {
LABEL_16:
    v52 = sub_1884881D0(result, v23, v20, 0, v22);
    v60 = sub_188414748(v52, v53, v54, v55, v56, v57, v58, v59, v115, v117, v120, v124, v126, v128, v130, v132, v135, v137, v139, v52);
    v61(v60);

    if ((v125 & 0x100000000) != 0)
    {
LABEL_62:
      __break(1u);
      return result;
    }

    v62 = *(v147 + 16);

    if (__OFSUB__(v62, v122))
    {
      goto LABEL_57;
    }

    v140 = v62 - v122;
    v133 = 1;
    v136 = v24;
    v121 = v27;
    HIDWORD(v125) = v28;
    v40 = v21;
    goto LABEL_19;
  }

  v29 = sub_1884881D0(&v146, v24, v21, 0, v128);
  v37 = sub_188414748(v29, v30, v31, v32, v33, v34, v35, v36, v115, v117, v120, v124, v126, v128, v130, v132, v135, v137, v139, v29);
  v38(v37);

  if (v28)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v39 = *(v147 + 16);

  if (__OFSUB__(v27, v39))
  {
    goto LABEL_56;
  }

  v140 = v27 - v39;
  v133 = -1;
  v136 = v23;
  v40 = v20;
LABEL_19:
  sub_1883FF650();
  v66 = sub_188488008(v63, v64, v65, v129);
  v68 = v67;
  v70 = v69;
  sub_1883FF650();
  result = sub_188487EB8(v71, v72, v73);
  if (v70)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v68 != v40)
  {
    goto LABEL_55;
  }

  v118 = v40;
  if (v66 < v136)
  {
    v74 = v129;
    v75 = v129 + 64;
    v131 = v68;
    v127 = v129 + 72;
    v76 = v68;
    while ((v66 & 0x8000000000000000) == 0 && v66 < 1 << *(v74 + 32))
    {
      v77 = v66 >> 6;
      if ((*(v75 + 8 * (v66 >> 6)) & (1 << v66)) == 0)
      {
        goto LABEL_47;
      }

      if (*(v74 + 36) != v76)
      {
        goto LABEL_48;
      }

      v78 = (*(v74 + 48) + 16 * v66);
      v143 = *v78;
      v144 = v78[1];
      v145 = *(*(v74 + 56) + 8 * v66);

      v87 = sub_188414748(v79, v80, v81, v82, v83, v84, v85, v86, v116, v118, v121, v125, v127, v129, v131, v133, v136, v138, v140, v143);
      v88(v87);

      v89 = *(v147 + 16);

      v90 = v141 + v89 * v133;
      if (__OFADD__(v141, v89 * v133))
      {
        goto LABEL_49;
      }

      v91 = 1 << *(v74 + 32);
      if (v66 >= v91)
      {
        goto LABEL_50;
      }

      v92 = *(v75 + 8 * v77);
      if ((v92 & (1 << v66)) == 0)
      {
        goto LABEL_51;
      }

      v140 = v90;
      if (*(v74 + 36) != v76)
      {
        goto LABEL_52;
      }

      v93 = v92 & (-2 << (v66 & 0x3F));
      if (v93)
      {
        v66 = __clz(__rbit64(v93)) | v66 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v94 = v77 << 6;
        v95 = v77 + 1;
        v96 = (v127 + 8 * v77);
        while (v95 < (v91 + 63) >> 6)
        {
          v98 = *v96++;
          v97 = v98;
          v94 += 64;
          ++v95;
          if (v98)
          {
            sub_1883FF650();
            result = sub_188487EB8(v99, v100, v101);
            v74 = v129;
            v66 = __clz(__rbit64(v97)) + v94;
            goto LABEL_38;
          }
        }

        sub_1883FF650();
        result = sub_188487EB8(v102, v103, v104);
        v74 = v129;
        v66 = v91;
      }

LABEL_38:
      if (*(v74 + 36) != v68)
      {
        goto LABEL_53;
      }

      v76 = v131;
      if (v66 >= v136)
      {
        goto LABEL_42;
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
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v74 = v129;
LABEL_42:
  if ((v125 & 0x100000000) != 0)
  {
    return v140;
  }

  v105 = sub_1884881D0(&v146, v136, v118, 0, v74);
  v113 = sub_188414748(v105, v106, v107, v108, v109, v110, v111, v112, v116, v118, v121, v125, v127, v129, v131, v133, v136, v138, v140, v105);
  v114(v113);

  result = v142 + v123 * v134;
  if (__OFADD__(v142, v123 * v134))
  {
    goto LABEL_58;
  }

  return result;
}

BOOL sub_188487D60(_BOOL8 result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_15;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *result < *a2;
  if (*result == *a2)
  {
    v3 = *(a2 + 32);
    if (*(result + 32))
    {
      if (*(a2 + 32))
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (*(a2 + 32))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    return *(result + 24) < *(a2 + 24);
  }

  return v2;
}

uint64_t (*sub_188487DD0(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t *)
{
  sub_1883FE004(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1883F7954();
  v8();

  return sub_188488CAC;
}

uint64_t (*sub_188487E40(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t *a1)
{
  sub_1883FE004(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1883F7954();
  v8();

  return sub_188487EB0;
}

uint64_t sub_188487EB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_188487EC4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

int64_t sub_188487F04(int64_t result, int a2, char a3, int64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_28;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a5 == a2)
  {
    if (result == a4)
    {
      return 0;
    }

    if (*(a7 + 36) != a5)
    {
      goto LABEL_27;
    }

    result = 0;
    v8 = 1 << *(a7 + 32);
    while (!__OFADD__(result++, 1))
    {
      if ((v7 & 0x8000000000000000) != 0 || v7 >= v8)
      {
        goto LABEL_23;
      }

      v10 = v7 >> 6;
      v11 = *(a7 + 64 + 8 * (v7 >> 6));
      if (((v11 >> v7) & 1) == 0)
      {
        goto LABEL_24;
      }

      v12 = v11 & (-2 << (v7 & 0x3F));
      if (v12)
      {
        v7 = __clz(__rbit64(v12)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (a7 + 72 + 8 * v10);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            v7 = __clz(__rbit64(v16)) + v13;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_188488008(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = _HashTable.occupiedBucket(after:)();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_188488088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1883F7EEC();
  v12 = v11;
  v14 = v13;
  v15 = v10;
  if (v16)
  {
    sub_1883F7BC0();
    if (__CocoaDictionary.Index.age.getter() == *(v12 + 36))
    {
      sub_1883F7BC0();
      __CocoaDictionary.Index.key.getter();
      sub_1883F4C5C(0, &qword_1EA90C180, off_1E70BA0B8);
      swift_dynamicCast();
      sub_188486518();
      v18 = v17;

      if (v18)
      {
        sub_1883F7BC0();
        __CocoaDictionary.Index.dictionary.getter();
        sub_1883F7BC0();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
LABEL_10:
        sub_1883FAEB8();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v10 < 0 || (sub_1883F7AD8(), -v19 <= v15))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(v12 + 64 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v12 + 36) == v14)
  {
    _HashTable.occupiedBucket(after:)();
    v20 = *(v12 + 36);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
}