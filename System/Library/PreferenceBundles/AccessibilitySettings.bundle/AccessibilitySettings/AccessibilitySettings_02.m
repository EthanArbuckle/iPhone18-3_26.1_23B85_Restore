char *sub_1778C4(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_19C614(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1544A0(0, &qword_2B8278);
        v6 = sub_19C0C4();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_177B6C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1779D8(0, v2, 1, a1);
  }

  return result;
}

char *sub_1779D8(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = &result[-a3];
    v6 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v7 = *(v27 + 8 * a3);
    v24 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      result = [v9 v6[353]];
      if (!result)
      {
        break;
      }

      v11 = result;
      v12 = sub_19BFE4();
      v14 = v13;

      result = [v10 v6[353]];
      if (!result)
      {
        __break(1u);
        break;
      }

      v15 = result;
      v16 = sub_19BFE4();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

        v6 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 8;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = sub_19C644();

      v6 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
      if (v20)
      {
        if (!v27)
        {
          goto LABEL_20;
        }

        v21 = *v4;
        v7 = *(v4 + 8);
        *v4 = v7;
        *(v4 + 8) = v21;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

void sub_177B6C(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    v8 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
    while (1)
    {
      v9 = v6;
      v10 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_38;
      }

      v126 = v5;
      v119 = v7;
      v121 = v6;
      v4 = *a3;
      v11 = *(*a3 + 8 * v6);
      v12 = *(*a3 + 8 * v10);
      v13 = v11;
      v14 = [v12 v8[353]];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v6 = sub_19BFE4();
      v17 = v16;

      v18 = [v13 v8[353]];
      if (!v18)
      {
        goto LABEL_161;
      }

      v19 = v18;
      v20 = sub_19BFE4();
      v22 = v21;

      if (v6 == v20 && v17 == v22)
      {
        v132 = 0;
      }

      else
      {
        v132 = sub_19C644();
      }

      v9 = v121;
      v10 = v121 + 2;
      if (v121 + 2 >= v126)
      {
        v8 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
        goto LABEL_29;
      }

      v129 = v121 + 2;
      v4 += 8 * v121 + 16;
      v8 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
      while (1)
      {
        v25 = *(v4 - 8);
        v26 = *v4;
        v27 = v25;
        v28 = [v26 v8[353]];
        if (!v28)
        {
          goto LABEL_155;
        }

        v29 = v28;
        v6 = sub_19BFE4();
        v31 = v30;

        v32 = [v27 v8[353]];
        if (!v32)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        v33 = v32;
        v34 = sub_19BFE4();
        v36 = v35;

        if (v6 == v34 && v31 == v36)
        {
          break;
        }

        v24 = sub_19C644();

        if ((v132 ^ v24))
        {
          v8 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
          v10 = v129;
LABEL_28:
          v9 = v121;
LABEL_29:
          v7 = v119;
          if (v132)
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_16:
        v4 += 8;
        ++v129;
        v10 = v126;
        v8 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
        if (v126 == v129)
        {
          goto LABEL_28;
        }
      }

      if ((v132 & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = v119;
      v9 = v121;
      v8 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
      v10 = v129;
LABEL_30:
      if (v10 < v9)
      {
        goto LABEL_147;
      }

      if (v9 < v10)
      {
        v38 = 8 * v10 - 8;
        v39 = 8 * v9;
        v40 = v10;
        v41 = v9;
        do
        {
          if (v41 != --v10)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_157;
            }

            v43 = *(v42 + v39);
            *(v42 + v39) = *(v42 + v38);
            *(v42 + v38) = v43;
          }

          ++v41;
          v38 -= 8;
          v39 += 8;
        }

        while (v41 < v10);
        v10 = v40;
      }

LABEL_38:
      v44 = a3[1];
      if (v10 >= v44)
      {
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      if (__OFSUB__(v10, v9))
      {
        goto LABEL_146;
      }

      v45 = v10;
      if (v10 - v9 >= a4)
      {
LABEL_46:
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      v46 = v9 + a4;
      if (__OFADD__(v9, a4))
      {
        goto LABEL_148;
      }

      if (v46 >= v44)
      {
        v46 = a3[1];
      }

      if (v46 < v9)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v10 == v46)
      {
        goto LABEL_46;
      }

      v120 = v7;
      v122 = v9;
      v133 = *a3;
      v4 = *a3 + 8 * v10 - 8;
      v94 = v9 - v10;
      v124 = v46;
      do
      {
        v130 = v45;
        v95 = *(v133 + 8 * v45);
        v125 = v94;
        v127 = v4;
        while (1)
        {
          v96 = *v4;
          v97 = v95;
          v98 = v96;
          v99 = [v97 v8[353]];
          if (!v99)
          {
            goto LABEL_152;
          }

          v100 = v99;
          v101 = sub_19BFE4();
          v103 = v102;

          v104 = [v98 v8[353]];
          if (!v104)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          v105 = v104;
          v106 = sub_19BFE4();
          v108 = v107;

          if (v101 == v106 && v103 == v108)
          {
            break;
          }

          v110 = sub_19C644();

          v8 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
          if ((v110 & 1) == 0)
          {
            goto LABEL_100;
          }

          if (!v133)
          {
            goto LABEL_153;
          }

          v111 = *v4;
          v95 = *(v4 + 8);
          *v4 = v95;
          *(v4 + 8) = v111;
          v4 -= 8;
          if (__CFADD__(v94++, 1))
          {
            goto LABEL_100;
          }
        }

        v8 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
LABEL_100:
        v45 = v130 + 1;
        v4 = v127 + 8;
        v94 = v125 - 1;
      }

      while (v130 + 1 != v124);
      v6 = v124;
      v7 = v120;
      v9 = v122;
      if (v124 < v122)
      {
        goto LABEL_145;
      }

LABEL_49:
      v47 = v7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v47;
      }

      else
      {
        v7 = sub_176BA0(0, *(v47 + 2) + 1, 1, v47);
      }

      v4 = *(v7 + 2);
      v48 = *(v7 + 3);
      v49 = v4 + 1;
      if (v4 >= v48 >> 1)
      {
        v7 = sub_176BA0((v48 > 1), v4 + 1, 1, v7);
      }

      *(v7 + 2) = v49;
      v50 = &v7[16 * v4];
      *(v50 + 4) = v9;
      *(v50 + 5) = v6;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_159;
      }

      if (v4)
      {
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v7 + 4);
            v54 = *(v7 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_68:
            if (v56)
            {
              goto LABEL_134;
            }

            v69 = &v7[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_137;
            }

            v75 = &v7[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_141;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v79 = &v7[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_82:
          if (v74)
          {
            goto LABEL_136;
          }

          v82 = &v7[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_139;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_89:
          v4 = v52 - 1;
          if (v52 - 1 >= v49)
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
            goto LABEL_149;
          }

          if (!*a3)
          {
            goto LABEL_154;
          }

          v90 = v7;
          v91 = *&v7[16 * v4 + 32];
          v92 = *&v7[16 * v52 + 40];
          sub_1783DC((*a3 + 8 * v91), (*a3 + 8 * *&v7[16 * v52 + 32]), (*a3 + 8 * v92), v51);
          if (v131)
          {
            goto LABEL_128;
          }

          if (v92 < v91)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_178894(v90);
          }

          if (v4 >= *(v90 + 2))
          {
            goto LABEL_131;
          }

          v93 = &v90[16 * v4];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          sub_178808(v52);
          v7 = v90;
          v49 = *(v90 + 2);
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v7[16 * v49 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_132;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_133;
        }

        v64 = &v7[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_135;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_138;
        }

        if (v68 >= v60)
        {
          v86 = &v7[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_142;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_117;
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_117:
  v6 = *a1;
  if (*a1)
  {
    v4 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v4;
    }

    else
    {
LABEL_150:
      v113 = sub_178894(v4);
    }

    v4 = *(v113 + 2);
    if (v4 < 2)
    {
LABEL_128:

      return;
    }

    while (*a3)
    {
      v114 = *&v113[16 * v4];
      v115 = v113;
      v116 = *&v113[16 * v4 + 24];
      sub_1783DC((*a3 + 8 * v114), (*a3 + 8 * *&v113[16 * v4 + 16]), (*a3 + 8 * v116), v6);
      if (v131)
      {
        goto LABEL_128;
      }

      if (v116 < v114)
      {
        goto LABEL_143;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_178894(v115);
      }

      if (v4 - 2 >= *(v115 + 2))
      {
        goto LABEL_144;
      }

      v117 = &v115[16 * v4];
      *v117 = v114;
      *(v117 + 1) = v116;
      sub_178808(v4 - 1);
      v113 = v115;
      v4 = *(v115 + 2);
      if (v4 <= 1)
      {
        goto LABEL_128;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

LABEL_162:
  __break(1u);
}

id sub_1783DC(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    v13 = __dst;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v61 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v14 = v12;
      v15 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
      v55 = v5;
      while (1)
      {
        v57 = v14;
        v16 = *v4;
        v17 = *v14;
        v18 = v16;
        result = [v17 v15[353]];
        if (!result)
        {
          goto LABEL_58;
        }

        v20 = result;
        v59 = v4;
        v21 = sub_19BFE4();
        v23 = v22;

        v24 = v15;
        result = [v18 v15[353]];
        if (!result)
        {
          goto LABEL_59;
        }

        v25 = result;
        v26 = sub_19BFE4();
        v28 = v27;

        if (v21 == v26 && v23 == v28)
        {
          break;
        }

        v30 = sub_19C644();

        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }

        v31 = v55;
        v32 = v57;
        v14 = v57 + 1;
        v4 = v59;
        v15 = v24;
        if (v13 != v57)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v13;
        if (v4 >= v61 || v14 >= v31)
        {
          goto LABEL_26;
        }
      }

LABEL_22:
      v14 = v57;
      v32 = v59;
      v4 = v59 + 1;
      v31 = v55;
      v15 = v24;
      if (v13 == v59)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v13 = *v32;
      goto LABEL_24;
    }

LABEL_26:
    a2 = v13;
    goto LABEL_52;
  }

  if (__src != a2 || &a2[v11] <= __src)
  {
    v33 = a2;
    memmove(__src, a2, 8 * v11);
    a2 = v33;
  }

  v61 = &v4[v11];
  if (v9 < 8 || a2 <= __dst)
  {
LABEL_52:
    if (a2 != v4 || a2 >= (v4 + ((v61 - v4 + (v61 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v4, 8 * (v61 - v4));
    }

    return &dword_0 + 1;
  }

  v34 = &selRef_initWithTitle_detailText_nextButtonTitle_videoURL_completion_;
  v60 = v4;
LABEL_33:
  v58 = a2;
  v35 = a2 - 1;
  v36 = v61;
  v54 = a2 - 1;
  while (1)
  {
    v56 = v5;
    v37 = *--v36;
    v38 = *v35;
    v39 = v37;
    v40 = v38;
    result = [v39 v34[353]];
    if (!result)
    {
      break;
    }

    v41 = result;
    v42 = sub_19BFE4();
    v44 = v43;

    v45 = v34;
    result = [v40 v34[353]];
    if (!result)
    {
      goto LABEL_57;
    }

    v46 = result;
    v47 = sub_19BFE4();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
    }

    else
    {
      v51 = sub_19C644();

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
      if (v51)
      {
        if (v56 != v58)
        {
          *v5 = *v54;
        }

        v4 = v60;
        if (v61 <= v60 || (a2 = v54, v54 <= __dst))
        {
          a2 = v54;
          goto LABEL_52;
        }

        goto LABEL_33;
      }
    }

    v35 = v54;
    if (v61 != v52)
    {
      *v5 = *v36;
    }

    v61 = v36;
    if (v36 <= v60)
    {
      v61 = v36;
      a2 = v58;
      v4 = v60;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_178808(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_178894(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1788A8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_19C5A4();
LABEL_9:
  result = sub_19C574();
  *v1 = result;
  return result;
}

uint64_t (*sub_178984(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_19C564();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_17994C;
  }

  __break(1u);
  return result;
}

void (*sub_178A04(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_19C564();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_178A84;
  }

  __break(1u);
  return result;
}

void *sub_178A8C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_19C5A4();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_17711C(v3, 0);
  sub_178B20(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_178B20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19C5A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_19C5A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_179624();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9588);
            v9 = sub_178A04(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_1544A0(0, &qword_2B8278);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_178CB0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_19C644() & 1;
  }
}

char *sub_178D08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1544A0(0, &qword_2B8278);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_19C5A4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_19C5A4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_178E34(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_19C5A4();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_19C5A4();
  }

  else
  {
    v12 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1788A8(result);

  return sub_178D08(v6, v5, 1, v3);
}

unint64_t sub_178F20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_179004(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = a1;
  isa = sub_19AF04().super.isa;
  v20 = [v2 specifierForIndexPath:isa];

  if (v20)
  {
    v8 = *&v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier + 8];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier];
      v10 = v8;
    }

    else
    {
      v12 = &v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_defaultLocaleIdentifier];
      v9 = *&v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_defaultLocaleIdentifier];
      v10 = *(v12 + 1);
    }

    v13 = [v20 identifier];
    if (v13)
    {
      v14 = v13;
      v15 = sub_19BFE4();
      v17 = v16;

      if (v10)
      {
        if (v15 == v9 && v10 == v17)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_18;
        }

        v19 = sub_19C644();

        if (v19)
        {
          goto LABEL_17;
        }

LABEL_15:
        v18 = 0;
LABEL_18:
        [v5 setChecked:v18];

        v11 = v20;
        goto LABEL_19;
      }
    }

    else if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v11 = v6;
LABEL_19:
}

unint64_t sub_1791DC()
{
  result = qword_2B9560;
  if (!qword_2B9560)
  {
    sub_19AEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9560);
  }

  return result;
}

uint64_t sub_179234()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_17926C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1792C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_179948;

  return sub_173504(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_179398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_179408()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_179440(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_179948;

  return sub_1769B0(a1, v4);
}

uint64_t sub_1794F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1642FC;

  return sub_1769B0(a1, v4);
}

uint64_t sub_1795CC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_19C644() & 1;
  }
}

unint64_t sub_179624()
{
  result = qword_2B9590;
  if (!qword_2B9590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9590);
  }

  return result;
}

uint64_t sub_179688()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1796C0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1642FC;

  return sub_1728F0(v2);
}

uint64_t sub_179770()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_179948;

  return sub_1905E0(v2, v3, v4);
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_179870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_179948;

  return sub_1906CC(a1, v4, v5, v6);
}

uint64_t property wrapper backing initializer of SpokenContentDetectLanguagesView.voiceResolver()
{
  sub_19AFE4();
  sub_19BC84();
  return v1;
}

uint64_t property wrapper backing initializer of SpokenContentDetectLanguagesView.textToSpeechLanguages()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B95C8);
  sub_19BC84();
  return v1;
}

uint64_t property wrapper backing initializer of SpokenContentDetectLanguagesView.selectedId()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9520);
  sub_19BC84();
  return v1;
}

void sub_179A78()
{
  v0 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9760);
  sub_19BC94();
  if (v2)
  {
    v1 = sub_19BFB4();
  }

  else
  {
    v1 = 0;
  }

  [v0 setSpokenContentDefaultFallbackLanguage:v1];
}

uint64_t SpokenContentDetectLanguagesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_179BF4(v1, a1);
  v3 = swift_allocObject();
  v4 = *(v1 + 48);
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 64);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B95D0) + 36));
  sub_19B534();
  sub_17B564(v1, v8);
  result = sub_19C124();
  *v6 = &unk_1DCCC8;
  v6[1] = v3;
  return result;
}

uint64_t sub_179BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9640);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v22 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96F8);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9700);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9638);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  v28 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8648);
  v15 = sub_19BC94();
  if (v27 == 1)
  {
    sub_19B4C4();
    (*(v12 + 16))(v10, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_162D0C(&qword_2B9630, &qword_2B9638);
    v16 = sub_162D0C(&qword_2B9648, &qword_2B9640);
    *&v28 = v25;
    *(&v28 + 1) = v16;
    swift_getOpaqueTypeConformance2();
    sub_19B7A4();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v22 = a2;
    __chkstk_darwin(v15);
    *(&v22 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9708);
    sub_162D0C(&qword_2B9710, &qword_2B9708);
    sub_19B984();
    v18 = sub_162D0C(&qword_2B9648, &qword_2B9640);
    v19 = v25;
    sub_19B9E4();
    (*(v23 + 8))(v5, v19);
    v20 = v24;
    v21 = v26;
    (*(v24 + 16))(v10, v7, v26);
    swift_storeEnumTagMultiPayload();
    sub_162D0C(&qword_2B9630, &qword_2B9638);
    *&v28 = v19;
    *(&v28 + 1) = v18;
    swift_getOpaqueTypeConformance2();
    sub_19B7A4();
    return (*(v20 + 8))(v7, v21);
  }
}

uint64_t sub_17A110@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9718);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9720);
  v8 = __chkstk_darwin(v7 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9728);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9730);
  v18 = sub_17FE38();
  *&v39 = &type metadata for SpokenContentDetectLanguagesView.SelectionCell;
  *(&v39 + 1) = v18;
  v19 = 1;
  swift_getOpaqueTypeConformance2();
  v20 = v17;
  sub_19BDD4();
  v39 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96D8);
  v21 = sub_19BC94();
  v22 = v38;
  if (v38)
  {
    __chkstk_darwin(v21);
    *(&v33 - 2) = v22;
    *(&v33 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9748);
    sub_17FE94();
    sub_19BDD4();

    (*(v4 + 32))(v11, v6, v3);
    v19 = 0;
  }

  (*(v4 + 56))(v11, v19, 1, v3);
  v23 = v33;
  v24 = v34;
  v25 = *(v33 + 16);
  v25(v15, v17, v34);
  v26 = v11;
  v27 = v11;
  v28 = v35;
  sub_160C70(v26, v35, &qword_2B9720);
  v29 = v36;
  v25(v36, v15, v24);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9740);
  sub_160C70(v28, &v29[*(v30 + 48)], &qword_2B9720);
  sub_160CD8(v27, &qword_2B9720);
  v31 = *(v23 + 8);
  v31(v20, v24);
  sub_160CD8(v28, &qword_2B9720);
  return (v31)(v15, v24);
}

void sub_17A55C(uint64_t a1)
{
  v2 = sub_19BFB4();
  v3 = sub_19BFB4();
  v4 = settingsLocString(v2, v3);

  if (v4)
  {
    v5 = sub_19BFE4();
    v7 = v6;

    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9760);
    sub_19BC94();
    v8 = v15;
    if (v15)
    {
    }

    v14 = v5;
    v15 = v7;
    v16 = v8 == 0;
    v9 = swift_allocObject();
    v10 = *(a1 + 48);
    *(v9 + 48) = *(a1 + 32);
    *(v9 + 64) = v10;
    *(v9 + 80) = *(a1 + 64);
    v11 = *(a1 + 16);
    *(v9 + 16) = *a1;
    *(v9 + 32) = v11;
    sub_17B564(a1, &v12);
    sub_17FE38();
    sub_19BA54();
  }

  else
  {
    __break(1u);
  }
}

void sub_17A6F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9760);
  sub_19BCA4();
  sub_179A78();
}

uint64_t sub_17A758(uint64_t a1, uint64_t a2)
{
  v8[9] = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;

  sub_17B564(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9730);
  sub_162D0C(&qword_2B9758, &qword_2B96D0);
  sub_180210(&qword_2B96E0, &type metadata accessor for Locale.LanguageCode);
  v6 = sub_17FE38();
  v8[0] = &type metadata for SpokenContentDetectLanguagesView.SelectionCell;
  v8[1] = v6;
  swift_getOpaqueTypeConformance2();
  return sub_19BD84();
}

uint64_t sub_17A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = sub_19AE74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_19AE64();
  if (v9)
  {
    v10 = v9;
    v20[0] = v8;
  }

  else
  {
    v20[0] = sub_19AE54();
    v10 = v11;
  }

  v21 = *(a2 + 48);
  v22 = *(a2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9760);
  sub_19BC94();
  v12 = sub_19AE54();
  if (v24)
  {
    if (v23 == v12 && v24 == v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_19C644();
    }
  }

  else
  {
    v14 = 0;
  }

  v23 = v20[0];
  v24 = v10;
  v25 = v14 & 1;
  (*(v6 + 16))(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v15 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = *(a2 + 48);
  *(v16 + 48) = *(a2 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a2 + 64);
  v18 = *(a2 + 16);
  *(v16 + 16) = *a2;
  *(v16 + 32) = v18;
  (*(v6 + 32))(v16 + v15, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_17B564(a2, &v21);
  sub_17FE38();
  sub_19BA54();
}

void sub_17AB5C()
{
  sub_19AE54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9760);
  sub_19BCA4();
  sub_179A78();
}

uint64_t sub_17ABCC(uint64_t a1)
{
  v1[9] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96B0);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96B8);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96C0);
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = sub_19C114();
  v1[20] = sub_19C104();
  v6 = sub_19C0F4();
  v1[21] = v6;
  v1[22] = v5;

  return _swift_task_switch(sub_17ADA0, v6, v5);
}

uint64_t sub_17ADA0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  *(v0 + 16) = v4[2];
  *(v0 + 216) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8648);
  sub_19BCA4();
  *(v0 + 32) = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96C8);
  sub_19BC94();
  sub_19AFC4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96D0);
  sub_19B094();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_17AF34;
  v6 = *(v0 + 128);

  return AXFetchableStream.callAsFunction()(v0 + 56, v6);
}

uint64_t sub_17AF34()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_17B054, v3, v2);
}

uint64_t sub_17B054()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_19BEC4();
  sub_19B544();

  sub_19B084();
  v0[24] = 0;
  v4 = sub_19C104();
  v0[25] = v4;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_17B1A8;
  v6 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v0 + 8, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_17B1A8()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_17B2EC, v3, v2);
}

uint64_t sub_17B2EC()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[9];
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    sub_19BEC4();
    sub_19B544();

    v0[24] = v2;
    v5 = sub_19C104();
    v0[25] = v5;
    v6 = swift_task_alloc();
    v0[26] = v6;
    *v6 = v0;
    v6[1] = sub_17B1A8;
    v7 = v0[10];

    return AsyncStream.Iterator.next(isolation:)(v0 + 8, v5, &protocol witness table for MainActor, v7);
  }

  else
  {
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_17B4D0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_179948;

  return sub_17ABCC(v0 + 16);
}

uint64_t sub_17B59C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96D8);
  sub_19BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8648);
  return sub_19BCA4();
}

uint64_t sub_17B638()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96D8);
  return sub_19BCA4();
}

uint64_t sub_17B69C(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = sub_19AED4();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8310);
  v2[6] = swift_task_alloc();
  v5 = sub_19AE74();
  v2[7] = v5;
  v2[8] = *(v5 - 8);
  v2[9] = swift_task_alloc();
  v6 = sub_19AEF4();
  v2[10] = v6;
  v2[11] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[12] = v7;
  v2[13] = v8;
  sub_19C114();
  v2[14] = sub_19C104();
  v10 = sub_19C0F4();

  return _swift_task_switch(sub_17B888, v10, v9);
}

uint64_t sub_17B888()
{
  v40 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[4];

  v5 = v1 + 56;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 56);
  v9 = (63 - v7) >> 6;
  v36 = v2;
  v37 = v1;
  v33 = (v3 + 48);
  v30 = (v3 + 32);
  v31 = v3;

  v11 = 0;
  v32 = &_swiftEmptyArrayStorage;
  v34 = v9;
  v35 = v1 + 56;
LABEL_4:
  v12 = v11;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v11 = v12;
LABEL_9:
    v13 = v0[12];
    v14 = v0[10];
    v15 = v0[6];
    v38 = v0[7];
    v16 = v0[5];
    v17 = v0[3];
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v36 + 16))(v13, *(v37 + 48) + *(v36 + 72) * (v18 | (v11 << 6)), v14);
    sub_19AEE4();
    sub_19AEC4();
    (*(v4 + 8))(v16, v17);
    (*(v36 + 8))(v13, v14);
    if ((*v33)(v15, 1, v38) != 1)
    {
      v19 = *v30;
      (*v30)(v0[9], v0[6], v0[7]);
      v9 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_176DB0(0, *(v32 + 2) + 1, 1, v32);
      }

      v5 = v35;
      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_176DB0(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v0[9];
      v23 = v0[7];
      *(v32 + 2) = v21 + 1;
      result = v19(&v32[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21], v22, v23);
      goto LABEL_4;
    }

    result = sub_17FDC0(v0[6]);
    v12 = v11;
    v9 = v34;
    v5 = v35;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v24 = sub_17F8BC(v32);

  v25 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = sub_1771A4(*(v24 + 16), 0);
  v27 = sub_17F618(&v39, &v26[(*(v31 + 80) + 32) & ~*(v31 + 80)], v25, v24);

  sub_162138();
  if (v27 != v25)
  {
    __break(1u);
LABEL_20:
    v26 = &_swiftEmptyArrayStorage;
  }

  v39 = v26;
  sub_17CE3C(&v39);
  v28 = v0[2];

  *v28 = v39;

  v29 = v0[1];

  return v29();
}

BOOL sub_17BC90()
{
  sub_19AE64();
  if (!v0)
  {
    sub_19AE54();
  }

  sub_19AE64();
  if (!v1)
  {
    sub_19AE54();
  }

  sub_16082C();
  v2 = sub_19C4A4();

  return v2 == -1;
}

uint64_t sub_17BD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v29 = a4;
  v6 = sub_19B764();
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19B854();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9658);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9660);
  v17 = *(v28 - 8);
  __chkstk_darwin(v28);
  v19 = &v26 - v18;
  *v16 = sub_19B734();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9668);
  sub_17C16C(a1, v27, a3, &v16[*(v20 + 44)]);
  v16[*(v14 + 36)] = 0;
  sub_19B844();
  v21 = sub_17CCC4();
  sub_19BAB4();
  (*(v11 + 8))(v13, v10);
  sub_160CD8(v16, &qword_2B9658);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8760);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DAF90;
    sub_19B754();
    v32 = v22;
  }

  else
  {
    v32 = &_swiftEmptyArrayStorage;
  }

  sub_180210(&qword_2B8768, &type metadata accessor for AccessibilityTraits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8770);
  sub_162D0C(&qword_2B8778, &qword_2B8770);
  v23 = v30;
  sub_19C4E4();
  v32 = v14;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_19BAC4();
  (*(v31 + 8))(v9, v23);
  return (*(v17 + 8))(v19, v24);
}

uint64_t sub_17C16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9698);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96A0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v31 - v16;
  v36 = a1;
  v37 = a2;
  sub_16082C();

  v18 = sub_19B9D4();
  v20 = v19;
  v35 = v21;
  v23 = v22;
  v24 = 1;
  if (a3)
  {
    v25 = sub_19BC44();
    v31[1] = v25;
    v26 = [objc_opt_self() systemBlueColor];
    v27 = sub_19BC14();
    v33 = v23;
    v36 = v25;
    v37 = v27;
    sub_19B964();
    v34 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8B00);
    v32 = v20;
    sub_162D54();
    v8 = v34;
    sub_19BA44();
    v23 = v33;

    v20 = v32;
    (*(v9 + 32))(v17, v11, v8);
    v24 = 0;
  }

  (*(v9 + 56))(v17, v24, 1, v8);
  sub_160C70(v17, v15, &qword_2B96A0);
  *a4 = v18;
  *(a4 + 8) = v20;
  v28 = v35 & 1;
  *(a4 + 16) = v35 & 1;
  *(a4 + 24) = v23;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96A8);
  sub_160C70(v15, a4 + *(v29 + 64), &qword_2B96A0);
  sub_160E60(v18, v20, v28);

  sub_160CD8(v17, &qword_2B96A0);
  sub_160CD8(v15, &qword_2B96A0);
  sub_160E70(v18, v20, v28);
}

uint64_t sub_17C4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13 = v1[2];
  v14 = v3;
  v15 = *(v1 + 8);
  v4 = v1[1];
  v11 = *v1;
  v12 = v4;
  sub_179BF4(&v11, a1);
  v5 = swift_allocObject();
  v6 = v14;
  *(v5 + 48) = v13;
  *(v5 + 64) = v6;
  *(v5 + 80) = v15;
  v7 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B95D0) + 36));
  sub_19B534();
  sub_17B564(&v11, v10);
  result = sub_19C124();
  *v8 = &unk_1DCEB8;
  v8[1] = v5;
  return result;
}

UIViewController __swiftcall SpokenContentDetectLanguagesSwiftUI.make()()
{
  sub_19B334();
  sub_17C62C();
  return sub_19B344();
}

__n128 sub_17C5DC@<Q0>(__n128 *a1@<X8>)
{
  sub_17FA58(v4);
  v2 = v4[3];
  a1[2] = v4[2];
  a1[3] = v2;
  a1[4].n128_u64[0] = v5;
  result = v4[1];
  *a1 = v4[0];
  a1[1] = result;
  return result;
}

unint64_t sub_17C62C()
{
  result = qword_2B95D8;
  if (!qword_2B95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B95D8);
  }

  return result;
}

id SpokenContentDetectLanguagesSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19BFB4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SpokenContentDetectLanguagesSwiftUI();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id SpokenContentDetectLanguagesSwiftUI.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpokenContentDetectLanguagesSwiftUI();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id SpokenContentDetectLanguagesSwiftUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpokenContentDetectLanguagesSwiftUI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_17C97C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_17C9C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_17CA28()
{
  result = qword_2B9608;
  if (!qword_2B9608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B95D0);
    sub_17CAE4();
    sub_180210(&qword_2B9650, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9608);
  }

  return result;
}

unint64_t sub_17CAE4()
{
  result = qword_2B9610;
  if (!qword_2B9610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9618);
    sub_17CB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9610);
  }

  return result;
}

unint64_t sub_17CB68()
{
  result = qword_2B9620;
  if (!qword_2B9620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9628);
    sub_162D0C(&qword_2B9630, &qword_2B9638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9640);
    sub_162D0C(&qword_2B9648, &qword_2B9640);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9620);
  }

  return result;
}

unint64_t sub_17CCC4()
{
  result = qword_2B9670;
  if (!qword_2B9670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9658);
    sub_162D0C(&qword_2B9678, &qword_2B9680);
    sub_162D0C(&qword_2B9688, &qword_2B9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9670);
  }

  return result;
}

uint64_t sub_17CDA8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1642FC;

  return sub_17ABCC(v0 + 16);
}

Swift::Int sub_17CE3C(void **a1)
{
  v2 = *(sub_19AE74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_178970(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_17CEE4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_17CEE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19C614(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_19AE74();
        v6 = sub_19C0C4();
        v6[2] = v5;
      }

      v7 = *(sub_19AE74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_17D304(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_17D010(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_17D010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_19AE74();
  v9 = __chkstk_darwin(v8);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v37 - v15;
  v39 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v48 = (v19 - 8);
    v49 = v20;
    v55 = v19;
    v22 = v18 + v21 * (a3 - 1);
    v44 = -v21;
    v45 = (v19 + 16);
    v23 = a1 - a3;
    v46 = v18;
    v38 = v21;
    v24 = v18 + v21 * a3;
    v50 = &v37 - v15;
LABEL_5:
    v42 = v22;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    while (1)
    {
      v25 = v49;
      v49(v17, v24, v8);
      v25(v13, v22, v8);
      v26 = sub_19AE64();
      if (!v27)
      {
        v26 = sub_19AE54();
      }

      v28 = v26;
      v29 = v27;
      v30 = sub_19AE64();
      if (!v31)
      {
        v30 = sub_19AE54();
      }

      v53 = v28;
      v54 = v29;
      v51 = v30;
      v52 = v31;
      sub_16082C();
      v32 = sub_19C4A4();

      v33 = *v48;
      (*v48)(v13, v8);
      v17 = v50;
      result = (v33)(v50, v8);
      if (v32 != -1)
      {
LABEL_4:
        a3 = v43 + 1;
        v22 = v42 + v38;
        v23 = v41 - 1;
        v24 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v34)(v22, v35, v8);
      v22 += v44;
      v24 += v44;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_17D304(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v5;
  v136 = a1;
  v9 = sub_19AE74();
  v10 = __chkstk_darwin(v9);
  v140 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v151 = &v131 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v131 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v131 - v18;
  v20 = __chkstk_darwin(v17);
  v131 = &v131 - v21;
  v22 = __chkstk_darwin(v20);
  v146 = &v131 - v23;
  v24 = __chkstk_darwin(v22);
  v133 = &v131 - v25;
  result = __chkstk_darwin(v24);
  v132 = &v131 - v28;
  v29 = a3[1];
  v147 = v27;
  if (v29 < 1)
  {
    v31 = &_swiftEmptyArrayStorage;
LABEL_106:
    a4 = *v136;
    if (!*v136)
    {
      goto LABEL_148;
    }

    v4 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v147;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_142;
    }

    result = v4;
LABEL_109:
    v162 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v126 = *(result + 16 * v4);
        v127 = result;
        v128 = *(result + 16 * (v4 - 1) + 40);
        sub_17DEFC(*a3 + *(v19 + 9) * v126, *a3 + *(v19 + 9) * *(result + 16 * (v4 - 1) + 32), (*a3 + *(v19 + 9) * v128), a4);
        if (v6)
        {
        }

        if (v128 < v126)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_178894(v127);
        }

        if (v4 - 2 >= *(v127 + 2))
        {
          goto LABEL_136;
        }

        v129 = &v127[16 * v4];
        *v129 = v126;
        *(v129 + 1) = v128;
        v162 = v127;
        sub_178808(v4 - 1);
        result = v162;
        v4 = *(v162 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v30 = 0;
  v154 = v27 + 16;
  v155 = (v27 + 8);
  v153 = (v27 + 32);
  v31 = &_swiftEmptyArrayStorage;
  v138 = a3;
  v135 = a4;
  v156 = v19;
  v157 = v16;
  while (1)
  {
    v32 = v30 + 1;
    v141 = v31;
    if (v30 + 1 >= v29)
    {
      v46 = v30 + 1;
      goto LABEL_29;
    }

    v148 = v29;
    v137 = v30;
    v33 = *a3;
    v4 = *(v147 + 9);
    v34 = *a3 + v4 * v32;
    v35 = *(v147 + 2);
    v36 = v132;
    v35(v132, v34, v9);
    v152 = v33;
    v37 = &v33[v4 * v137];
    v38 = v133;
    v149 = v35;
    v35(v133, v37, v9);
    LODWORD(v150) = sub_17BC90();
    if (v6)
    {
      v130 = *v155;
      (*v155)(v38, v9);
      v130(v36, v9);
    }

    v134 = 0;
    v39 = *v155;
    (*v155)(v38, v9);
    v145 = v39;
    result = (v39)(v36, v9);
    v40 = v137 + 2;
    v41 = (v152 + v4 * (v137 + 2));
    v42 = v131;
    v43 = v146;
    v44 = v4;
    v152 = v4;
    while (1)
    {
      v46 = v148;
      if (v148 == v40)
      {
        break;
      }

      v47 = v149;
      (v149)(v43, v41, v9);
      v47(v42, v34, v9);
      v48 = sub_19AE64();
      if (!v49)
      {
        v48 = sub_19AE54();
      }

      v50 = v48;
      v51 = v49;
      v52 = sub_19AE64();
      if (!v53)
      {
        v52 = sub_19AE54();
      }

      v160 = v50;
      v161 = v51;
      v158 = v52;
      v159 = v53;
      sub_16082C();
      v4 = sub_19C4A4();

      v45 = v145;
      (v145)(v42, v9);
      v43 = v146;
      result = v45(v146, v9);
      ++v40;
      v44 = v152;
      v41 += v152;
      v34 += v152;
      v16 = v157;
      if (((v150 ^ (v4 != -1)) & 1) == 0)
      {
        v46 = v40 - 1;
        break;
      }
    }

    v6 = v134;
    a3 = v138;
    v54 = v141;
    a4 = v135;
    v19 = v156;
    v30 = v137;
    if (v150)
    {
      if (v46 < v137)
      {
        goto LABEL_141;
      }

      if (v137 < v46)
      {
        v4 = v44 * (v46 - 1);
        v55 = v46 * v44;
        v148 = v46;
        v56 = v137;
        v57 = v137 * v44;
        do
        {
          if (v56 != --v46)
          {
            v58 = *a3;
            if (!v58)
            {
              goto LABEL_145;
            }

            v59 = *v153;
            (*v153)(v140, &v58[v57], v9, v54);
            if (v57 < v4 || &v58[v57] >= &v58[v55])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = v59(&v58[v4], v140, v9);
            a3 = v138;
            v54 = v141;
            v19 = v156;
            v44 = v152;
          }

          ++v56;
          v4 -= v44;
          v55 -= v44;
          v57 += v44;
        }

        while (v56 < v46);
        v6 = v134;
        a4 = v135;
        v16 = v157;
        v30 = v137;
        v46 = v148;
      }
    }

LABEL_29:
    v60 = a3[1];
    if (v46 >= v60)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v46, v30))
    {
      goto LABEL_138;
    }

    if (v46 - v30 >= a4)
    {
      goto LABEL_38;
    }

    if (__OFADD__(v30, a4))
    {
      goto LABEL_139;
    }

    if (v30 + a4 >= v60)
    {
      a4 = a3[1];
    }

    else
    {
      a4 += v30;
    }

    if (a4 < v30)
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      result = sub_178894(v4);
      goto LABEL_109;
    }

    if (v46 == a4)
    {
LABEL_38:
      a4 = v46;
      if (v46 < v30)
      {
        goto LABEL_137;
      }

      goto LABEL_39;
    }

    v134 = v6;
    v107 = *a3;
    v108 = *(v147 + 9);
    v152 = *(v147 + 2);
    v109 = &v107[v108 * (v46 - 1)];
    v149 = -v108;
    v137 = v30;
    v110 = v30 - v46;
    v150 = v107;
    v139 = v108;
    v111 = &v107[v46 * v108];
    v142 = a4;
LABEL_91:
    v148 = v46;
    v143 = v111;
    v144 = v110;
    v112 = v111;
    v145 = v109;
    v113 = v109;
LABEL_92:
    v114 = v152;
    (v152)(v19, v112, v9);
    v115 = v9;
    v114(v16, v113, v9);
    v116 = sub_19AE64();
    if (!v117)
    {
      v116 = sub_19AE54();
    }

    v118 = v116;
    v119 = v117;
    v16 = v157;
    v120 = sub_19AE64();
    if (!v121)
    {
      v120 = sub_19AE54();
    }

    v160 = v118;
    v161 = v119;
    v158 = v120;
    v159 = v121;
    sub_16082C();
    v4 = sub_19C4A4();

    v122 = *v155;
    v9 = v115;
    (*v155)(v16, v115);
    v19 = v156;
    result = (v122)(v156, v9);
    if (v4 == -1)
    {
      break;
    }

LABEL_90:
    v46 = v148 + 1;
    v109 = &v145[v139];
    v110 = v144 - 1;
    a4 = v142;
    v111 = &v143[v139];
    if (v148 + 1 != v142)
    {
      goto LABEL_91;
    }

    v6 = v134;
    a3 = v138;
    v30 = v137;
    if (v142 < v137)
    {
      goto LABEL_137;
    }

LABEL_39:
    result = swift_isUniquelyReferenced_nonNull_native();
    v142 = a4;
    if (result)
    {
      v31 = v141;
    }

    else
    {
      result = sub_176BA0(0, *(v141 + 2) + 1, 1, v141);
      v31 = result;
    }

    v62 = *(v31 + 2);
    v61 = *(v31 + 3);
    v4 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_176BA0((v61 > 1), v62 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v4;
    v63 = &v31[16 * v62];
    v64 = v142;
    *(v63 + 4) = v30;
    *(v63 + 5) = v64;
    v65 = *v136;
    if (!*v136)
    {
      goto LABEL_147;
    }

    if (v62)
    {
      while (1)
      {
        a4 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v66 = *(v31 + 4);
          v67 = *(v31 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_58:
          if (v69)
          {
            goto LABEL_126;
          }

          v82 = &v31[16 * v4];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_129;
          }

          v88 = &v31[16 * a4 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_133;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              a4 = v4 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v92 = &v31[16 * v4];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_72:
        if (v87)
        {
          goto LABEL_128;
        }

        v95 = &v31[16 * a4];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_131;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_79:
        v103 = a4 - 1;
        if (a4 - 1 >= v4)
        {
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
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v19 = v31;
        v4 = *&v31[16 * v103 + 32];
        v104 = *&v31[16 * a4 + 40];
        sub_17DEFC(*a3 + *(v147 + 9) * v4, *a3 + *(v147 + 9) * *&v31[16 * a4 + 32], (*a3 + *(v147 + 9) * v104), v65);
        if (v6)
        {
        }

        if (v104 < v4)
        {
          goto LABEL_122;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v105 = v19;
        }

        else
        {
          v105 = sub_178894(v19);
        }

        v19 = v156;
        if (v103 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v105[16 * v103];
        *(v106 + 4) = v4;
        *(v106 + 5) = v104;
        v162 = v105;
        result = sub_178808(a4);
        v31 = v162;
        v4 = *(v162 + 16);
        v16 = v157;
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v31[16 * v4 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_124;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_125;
      }

      v77 = &v31[16 * v4];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_127;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_130;
      }

      if (v81 >= v73)
      {
        v99 = &v31[16 * a4 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_134;
        }

        if (v68 < v102)
        {
          a4 = v4 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v29 = a3[1];
    v30 = v142;
    a4 = v135;
    if (v142 >= v29)
    {
      goto LABEL_106;
    }
  }

  if (v150)
  {
    v4 = *v153;
    v123 = v151;
    (*v153)(v151, v112, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v4)(v113, v123, v9);
    v113 += v149;
    v112 += v149;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

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
  return result;
}

uint64_t sub_17DEFC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_19AE74();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v72 = &v63 - v14;
  result = __chkstk_darwin(v13);
  v73 = &v63 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_68;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_69;
  }

  v21 = (a2 - a1) / v19;
  v80 = a1;
  v79 = a4;
  if (v21 >= v20 / v19)
  {
    v69 = v16;
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v23;
    if (v23 >= 1)
    {
      v42 = -v19;
      v66 = (v9 + 8);
      v67 = (v9 + 16);
      v43 = a4 + v23;
      v44 = v69;
      v65 = a4;
      v72 = -v19;
      do
      {
        v63 = v41;
        v45 = a2;
        v46 = a2 + v42;
        v70 = v46;
        v68 = v45;
        while (1)
        {
          if (v45 <= a1)
          {
            v80 = v45;
            v78 = v63;
            goto LABEL_66;
          }

          v47 = a3;
          v64 = v41;
          v48 = *v67;
          v73 = (v43 + v42);
          v48(v44);
          v49 = v71;
          (v48)(v71, v46, v8);
          v50 = sub_19AE64();
          if (!v51)
          {
            v50 = sub_19AE54();
          }

          v52 = v50;
          v53 = v51;
          v54 = v8;
          v55 = sub_19AE64();
          if (!v56)
          {
            v55 = sub_19AE54();
          }

          v57 = v49;
          a3 = &v47[v72];
          v76 = v52;
          v77 = v53;
          v74 = v55;
          v75 = v56;
          sub_16082C();
          v58 = sub_19C4A4();

          v59 = *v66;
          v60 = v57;
          v8 = v54;
          (*v66)(v60, v54);
          v44 = v69;
          v59(v69, v8);
          if (v58 == -1)
          {
            break;
          }

          v41 = v73;
          v46 = v70;
          v61 = v65;
          if (v47 < v43 || a3 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v47 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v43 = v41;
          v42 = v72;
          v45 = v68;
          if (v73 <= v61)
          {
            a2 = v68;
            goto LABEL_65;
          }
        }

        a2 = v70;
        v62 = v65;
        if (v47 < v68 || a3 >= v68)
        {
          swift_arrayInitWithTakeFrontToBack();
          v41 = v64;
        }

        else
        {
          v41 = v64;
          if (v47 != v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v42 = v72;
      }

      while (v43 > v62);
    }

LABEL_65:
    v80 = a2;
    v78 = v41;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = (a4 + v22);
    v78 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v9 + 16);
      v68 = v19;
      v69 = (v9 + 16);
      v66 = (v9 + 8);
      v67 = v25;
      v70 = a3;
      do
      {
        v26 = a2;
        v27 = v67;
        (v67)(v73, a2, v8);
        v28 = v72;
        v29 = a4;
        v27(v72, a4, v8);
        v30 = sub_19AE64();
        if (!v31)
        {
          v30 = sub_19AE54();
        }

        v32 = v30;
        v33 = v31;
        v34 = sub_19AE64();
        if (!v35)
        {
          v34 = sub_19AE54();
        }

        v76 = v32;
        v77 = v33;
        v74 = v34;
        v75 = v35;
        sub_16082C();
        v36 = sub_19C4A4();

        v37 = *v66;
        (*v66)(v28, v8);
        v37(v73, v8);
        if (v36 == -1)
        {
          v39 = v68;
          a2 = v26 + v68;
          a4 = v29;
          if (a1 < v26 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v70;
          }

          else
          {
            v40 = v70;
            if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_37;
        }

        v38 = v29;
        v39 = v68;
        a4 = v29 + v68;
        a2 = v26;
        if (a1 < v29 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v40 = v70;
        }

        else
        {
          v40 = v70;
          if (a1 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
            v79 = a4;
            goto LABEL_37;
          }
        }

        v79 = a4;
LABEL_37:
        a1 += v39;
        v80 = a1;
      }

      while (a4 < v71 && a2 < v40);
    }
  }

LABEL_66:
  sub_17E580(&v80, &v79, &v78);
  return 1;
}

uint64_t sub_17E580(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_19AE74();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_17E664(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_19AE74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_180210(&qword_2B96E0, &type metadata accessor for Locale.LanguageCode);
  v33 = a2;
  v11 = sub_19BF84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_180210(&qword_2B96E8, &type metadata accessor for Locale.LanguageCode);
      v21 = sub_19BFA4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_17ECA0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_17E944()
{
  v1 = v0;
  v35 = sub_19AE74();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96F0);
  result = sub_19C534();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_180210(&qword_2B96E0, &type metadata accessor for Locale.LanguageCode);
      result = sub_19BF84();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_17ECA0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_19AE74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_17E944();
  }

  else
  {
    if (v11 > v10)
    {
      sub_17EF44();
      goto LABEL_12;
    }

    sub_17F17C();
  }

  v12 = *v3;
  sub_180210(&qword_2B96E0, &type metadata accessor for Locale.LanguageCode);
  v13 = sub_19BF84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_180210(&qword_2B96E8, &type metadata accessor for Locale.LanguageCode);
      v21 = sub_19BFA4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_19C664();
  __break(1u);
  return result;
}

void *sub_17EF44()
{
  v1 = v0;
  v2 = sub_19AE74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96F0);
  v6 = *v0;
  v7 = sub_19C524();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_17F17C()
{
  v1 = v0;
  v32 = sub_19AE74();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B96F0);
  v6 = sub_19C534();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_180210(&qword_2B96E0, &type metadata accessor for Locale.LanguageCode);
      result = sub_19BF84();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

void *sub_17F498(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_17F618(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_19AE74();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v31;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = (&dword_0 + 1);
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_17F8BC(uint64_t a1)
{
  v2 = sub_19AE74();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_180210(&qword_2B96E0, &type metadata accessor for Locale.LanguageCode);
  result = sub_19C184();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_17E664(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

__n128 sub_17FA58@<Q0>(__n128 *a1@<X8>)
{
  v20 = sub_19AFD4();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19B004();
  __chkstk_darwin(v5);
  sub_19AFE4();
  v23.n128_u64[0] = &_swiftEmptyArrayStorage;
  sub_180210(&qword_2B81E8, &type metadata accessor for CoreSynthesizer.Voice.Trait);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B81F0);
  sub_162D0C(&qword_2B81F8, &qword_2B81F0);
  sub_19C4E4();
  v6 = sub_19B034();
  v7 = sub_19B024();
  v25 = v6;
  v26 = &protocol witness table for VoiceDatabaseClient;
  v23.n128_u64[0] = v7;
  (*(v2 + 104))(v4, enum case for VoiceResolver.Mode.defaultPreferenceOrder(_:), v20);
  v21 = sub_19AFB4();
  sub_19BC84();
  v8 = v23;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B95C8);
  sub_19BC84();
  v9 = v23;
  LOBYTE(v21) = 1;
  sub_19BC84();
  v10 = v23.n128_u8[0];
  v11 = v23.n128_u64[1];
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 spokenContentDefaultFallbackLanguage];

  if (v13)
  {
    v14 = sub_19BFE4();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v21 = v14;
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9520);
  sub_19BC84();
  v17 = v24;
  result = v23;
  *a1 = v8;
  a1[1] = v9;
  a1[2].n128_u8[0] = v10;
  a1[2].n128_u64[1] = v11;
  a1[3] = result;
  a1[4].n128_u64[0] = v17;
  return result;
}

uint64_t sub_17FDC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_17FE38()
{
  result = qword_2B9738;
  if (!qword_2B9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9738);
  }

  return result;
}

unint64_t sub_17FE94()
{
  result = qword_2B9750;
  if (!qword_2B9750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9748);
    sub_17FE38();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9750);
  }

  return result;
}

uint64_t sub_17FF4C()
{
  v1 = sub_19AE74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_180040()
{
  sub_19AE74();

  sub_17AB5C();
}

uint64_t objectdestroyTm_0()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_180118()
{
  result = qword_2B9768;
  if (!qword_2B9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9658);
    sub_17CCC4();
    swift_getOpaqueTypeConformance2();
    sub_180210(&qword_2B8730, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9768);
  }

  return result;
}

uint64_t sub_180210(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void static SCATHeadGesturesSourceControllerHelper.specifiers()()
{
  v66 = sub_19B434();
  v0 = *(v66 - 8);
  __chkstk_darwin(v66 - 8);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = &_swiftEmptyArrayStorage;
  v75 = &_swiftEmptyArrayStorage;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 assistiveTouchSwitches];

  v6 = sub_1544A0(0, &qword_2B8678);
  v7 = sub_1810C0();
  v71 = v6;
  v62 = v7;
  v8 = sub_19C174();

  v10 = 0;
  v65 = v8 & 0xC000000000000001;
  v11 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 < 0)
  {
    v11 = v8;
  }

  v61 = v11;
  v70 = v8;
  v58 = v8 + 56;
  v63 = (v0 + 8);
  v64 = (v0 + 16);
  v56 = PSValueKey;
  v55 = PSEnabledKey;
  *&v9 = 136315650;
  v60 = v9;
  v67 = v2;
LABEL_4:
  v57 = v3;
LABEL_7:
  v12 = *(&off_2597A0 + v10 + 4);
  if (v65)
  {

    swift_unknownObjectRetain();
    sub_19C504();
    sub_19C194();
    v14 = v76;
    v13 = v77;
    v15 = v78;
    v16 = v79;
    v17 = v80;
  }

  else
  {
    v14 = v70;
    v18 = -1 << *(v70 + 32);
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v70 + 56);
    swift_bridgeObjectRetain_n();
    v16 = 0;
    v13 = v58;
  }

  v68 = v15;
  v69 = v10 + 1;
  v21 = (v15 + 64) >> 6;
  while (v14 < 0)
  {
    v25 = sub_19C514();
    if (!v25 || (v72 = v25, swift_dynamicCast(), (v24 = v73[0]) == 0))
    {
LABEL_26:
      sub_162138();

      v27 = AXHeadGesturesEventUsage.identifier.getter(v12);
      v29 = v28;
      v30 = v66;
      if (!v28)
      {
        goto LABEL_33;
      }

      AXHeadGesturesEventUsage.localizedName.getter(v12);
      if (!v31)
      {
        goto LABEL_32;
      }

      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9780);
      v73[0] = v59;
      v32 = sub_19BFB4();

      v33 = v74;
      if (v74)
      {
        v34 = __swift_project_boxed_opaque_existential_0(v73, v74);
        v35 = *(v33 - 8);
        __chkstk_darwin(v34);
        v37 = &v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v37);
        v38 = sub_19C634();
        (*(v35 + 8))(v37, v33);
        v30 = v66;
        __swift_destroy_boxed_opaque_existential_1(v73);
      }

      else
      {
        v38 = 0;
      }

      v39 = [objc_allocWithZone(PSSpecifier) initWithName:v32 target:v38 set:0 get:0 detail:0 cell:1 edit:0];

      swift_unknownObjectRelease();
      if (!v39)
      {
LABEL_32:

LABEL_33:
        if (qword_2B81D8 != -1)
        {
          swift_once();
        }

        v40 = __swift_project_value_buffer(v30, qword_2BC1C0);
        v41 = v67;
        (*v64)(v67, v40, v30);
        v42 = sub_19B424();
        v43 = sub_19C3E4();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v73[0] = swift_slowAlloc();
          *v44 = v60;
          if (v12 > 3)
          {
            if (v12 == &dword_4)
            {
              v45 = 0xE700000000000000;
              v46 = 0x646F4E6E776F64;
            }

            else if (v12 == (&dword_4 + 1))
            {
              v45 = 0xE900000000000065;
              v46 = 0x6B6168537466656CLL;
            }

            else
            {
              if (v12 != (&dword_4 + 2))
              {
                goto LABEL_47;
              }

              v45 = 0xEA0000000000656BLL;
              v46 = 0x6168537468676972;
            }
          }

          else if (v12 == (&dword_0 + 1))
          {
            v45 = 0xE300000000000000;
            v46 = 6582126;
          }

          else if (v12 == (&dword_0 + 2))
          {
            v45 = 0xE500000000000000;
            v46 = 0x656B616873;
          }

          else
          {
            if (v12 == (&dword_0 + 3))
            {
              v45 = 0xE500000000000000;
              v46 = 0x646F4E7075;
              goto LABEL_50;
            }

LABEL_47:
            v45 = 0xE700000000000000;
            v46 = 0x6E776F6E6B6E75;
          }

LABEL_50:
          v47 = sub_1772A0(v46, v45, v73);

          *(v44 + 4) = v47;
          *(v44 + 12) = 2080;
          if (v29)
          {
            v48 = v27;
          }

          else
          {
            v48 = 7104878;
          }

          if (!v29)
          {
            v29 = 0xE300000000000000;
          }

          v49 = sub_1772A0(v48, v29, v73);

          *(v44 + 14) = v49;
          *(v44 + 22) = 2048;
          *(v44 + 24) = v12;
          _os_log_impl(&dword_0, v42, v43, "HeadGestures: Unable to create specifier for event usage: %s - identifier: %s - raw value: %ld", v44, 0x20u);
          swift_arrayDestroy();

          (*v63)(v67, v30);
        }

        else
        {

          (*v63)(v41, v30);
        }

        v10 = v69;
        if (v69 != 2)
        {
          goto LABEL_7;
        }

LABEL_59:

        return;
      }

      isa = sub_19C1A4().super.super.isa;
      [v39 setProperty:isa forKey:v56];

      v51 = sub_19C0E4().super.super.isa;
      [v39 setProperty:v51 forKey:v55];

      v52 = sub_19BFB4();

      [v39 setIdentifier:v52];

      v53 = v39;
      sub_19C084();
      if (*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v75 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();

      v3 = v75;
      v10 = v69;
      if (v69 == 2)
      {
        goto LABEL_59;
      }

      goto LABEL_4;
    }

LABEL_24:
    if ([v24 accessibilityEventUsage] == v12)
    {
      v26 = [v24 accessibilityEventUsagePage];

      if (v26 == &dword_4 + 3)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  v22 = v16;
  v23 = v17;
  if (v17)
  {
LABEL_20:
    v17 = (v23 - 1) & v23;
    v24 = *(*(v14 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      goto LABEL_26;
    }

    v23 = *(v13 + 8 * v16);
    ++v22;
    if (v23)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t AXHeadGesturesEventUsage.identifier.getter(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return *&aNod[8 * a1 - 8];
  }
}

uint64_t AXHeadGesturesEventUsage.localizedName.getter(uint64_t a1)
{
  result = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v3 = 0xE800000000000000;
        v4 = 0x444F4E5F4E574F44;
        break;
      case 5:
        v3 = 0xEA0000000000454BLL;
        v4 = 0x4148535F5446454CLL;
        break;
      case 6:
        v3 = 0xEB00000000454B41;
        v4 = 0x48535F5448474952;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v3 = 0xE300000000000000;
        v4 = 4476750;
        break;
      case 2:
        v3 = 0xE500000000000000;
        v4 = 0x454B414853;
        break;
      case 3:
        v3 = 0xE600000000000000;
        v4 = 0x444F4E5F5055;
        break;
      default:
        return result;
    }
  }

  sub_19C554(16);

  v9._countAndFlagsBits = v4;
  v9._object = v3;
  sub_19C034(v9);

  v5 = sub_19BFB4();

  v6 = sub_19BFB4();
  v7 = settingsLocString(v5, v6);

  if (!v7)
  {
    return 0;
  }

  v8 = sub_19BFE4();

  return v8;
}

id SCATHeadGesturesSourceControllerHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCATHeadGesturesSourceControllerHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id SCATHeadGesturesSourceControllerHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCATHeadGesturesSourceControllerHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AXHeadGesturesEventUsage.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0x646F4E6E776F64;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0x6168537468676972;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6B6168537466656CLL;
  }

  else
  {
    if (a1 == 1)
    {
      return 6582126;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x646F4E7075;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x656B616873;
  }
}

uint64_t sub_180F80()
{
  v1 = *v0;
  if (*v0 > 3)
  {
    if (v1 == 4)
    {
      return 0x646F4E6E776F64;
    }

    if (v1 != 5)
    {
      if (v1 == 6)
      {
        return 0x6168537468676972;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6B6168537466656CLL;
  }

  else
  {
    if (v1 == 1)
    {
      return 6582126;
    }

    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x646F4E7075;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x656B616873;
  }
}

id sub_18105C()
{
  v0 = sub_19B434();
  __swift_allocate_value_buffer(v0, qword_2BC1C0);
  __swift_project_value_buffer(v0, qword_2BC1C0);
  result = AXLogSettings();
  if (result)
  {
    return sub_19B444();
  }

  __break(1u);
  return result;
}

unint64_t sub_1810C0()
{
  result = qword_2B9778;
  if (!qword_2B9778)
  {
    sub_1544A0(255, &qword_2B8678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9778);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

UIViewController __swiftcall AXReaderSettingsSwiftUI.make()()
{
  sub_19B334();
  sub_19B2C4();
  sub_1812C4();
  return sub_19B344();
}

uint64_t sub_181244()
{
  sub_19C3B4();
  v0 = sub_19C314();
  v1 = direct field offset for AXSettings.accessibilityReader;
  swift_beginAccess();
  v2 = *&v0[v1];

  return sub_19B2B4();
}

unint64_t sub_1812C4()
{
  result = qword_2B97B0;
  if (!qword_2B97B0)
  {
    sub_19B2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B97B0);
  }

  return result;
}

id AXReaderSettingsSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19BFB4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AXReaderSettingsSwiftUI();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id AXReaderSettingsSwiftUI.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXReaderSettingsSwiftUI();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id AXReaderSettingsSwiftUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXReaderSettingsSwiftUI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::OpaquePointer_optional __swiftcall VoiceOverCursorOutputController.specifiers()()
{
  v1 = v0;
  v2 = sub_19BFB4();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_19C4C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (!*(&v32 + 1))
  {
    sub_154438(v33);
LABEL_9:
    *&v33[0] = &_swiftEmptyArrayStorage;
    v6 = objc_opt_self();
    v7 = [v6 emptyGroupSpecifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_19BFB4();
      v10 = sub_19BFB4();
      v11 = settingsLocString(v9, v10);

      [v8 setProperty:v11 forKey:PSFooterTextGroupKey];
      v12 = v8;
      sub_19C084();
      if (*(&dword_10 + (*&v33[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v33[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();
      v13 = sub_19BFB4();
      v14 = sub_19BFB4();
      v15 = settingsLocString(v13, v14);

      v16 = [v6 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];
      if (v16)
      {
        type metadata accessor for AXVoiceOverCursorOutputStyle(0);
        v17 = sub_19C654();
        v18 = sub_19BFB4();
        [v16 setProperty:v17 forKey:v18];
        swift_unknownObjectRelease();

        v19 = v16;
        sub_19C084();
        if (*(&dword_10 + (*&v33[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v33[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_19C0B4();
        }

        sub_19C0D4();
        v20 = sub_19BFB4();
        v21 = sub_19BFB4();
        v22 = settingsLocString(v20, v21);

        v23 = [v6 preferenceSpecifierNamed:v22 target:0 set:0 get:0 detail:0 cell:3 edit:0];
        if (v23)
        {
          v24 = sub_19C654();
          v25 = sub_19BFB4();
          [v23 setProperty:v24 forKey:v25];
          swift_unknownObjectRelease();

          v26 = v23;
          sub_19C084();
          if (*(&dword_10 + (*&v33[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v33[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_19C0B4();
          }

          sub_19C0D4();
          v27 = *&v33[0];
          sub_181B18();
          isa = sub_19C094().super.isa;
          v29 = sub_19BFB4();
          [v1 setValue:isa forKey:v29];

          v5 = sub_171EE4(v27);

          goto LABEL_19;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2B8C90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v30;
  if (!*(v30 + 16))
  {

    goto LABEL_9;
  }

LABEL_19:
  v7 = v5;
LABEL_23:
  result.value._rawValue = v7;
  result.is_nil = v4;
  return result;
}

unint64_t sub_181B18()
{
  result = qword_2B8278;
  if (!qword_2B8278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2B8278);
  }

  return result;
}

id VoiceOverCursorOutputController.tableView(_:didSelectRowAt:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  isa = sub_19AF04().super.isa;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v6 = sub_19AF04().super.isa;
  v7 = [v2 specifierForIndexPath:v6];

  if (v7)
  {
    v8 = sub_19BFB4();
    v9 = [v7 propertyForKey:v8];

    if (v9)
    {
      sub_19C4C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (*(&v15 + 1))
    {
      type metadata accessor for AXVoiceOverCursorOutputStyle(0);
      if (swift_dynamicCast())
      {
        sub_19C3B4();
        v10 = sub_19C314();
        v11 = direct field offset for AXSettings.voiceover;
        swift_beginAccess();
        v12 = *&v10[v11];

        sub_19C334();
      }
    }

    else
    {

      sub_154438(v16);
    }
  }

  return [v2 reload];
}

void sub_1820D8(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v14 = a1;
    isa = sub_19AF04().super.isa;
    v7 = [v2 specifierForIndexPath:isa];

    if (v7)
    {
      v8 = sub_19BFB4();
      v9 = [v7 propertyForKey:v8];

      if (v9)
      {
        sub_19C4C4();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v19[0] = v17;
      v19[1] = v18;
      if (*(&v18 + 1))
      {
        type metadata accessor for AXVoiceOverCursorOutputStyle(0);
        if (swift_dynamicCast())
        {
          sub_19C3B4();
          v10 = sub_19C314();
          v11 = direct field offset for AXSettings.voiceover;
          swift_beginAccess();
          v12 = *&v10[v11];

          v13 = sub_19C324();
          [v5 setChecked:{v13 == v16, v14}];
        }

        else
        {
        }
      }

      else
      {

        sub_154438(v19);
      }
    }

    else
    {
    }
  }
}

Swift::OpaquePointer_optional __swiftcall AXVoiceOverNotificationVerbosity.specifiers()()
{
  v1 = v0;
  v2 = sub_19BFB4();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_19C4C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v99[0] = v97;
  v99[1] = v98;
  if (!*(&v98 + 1))
  {
    sub_154438(v99);
LABEL_9:
    *&v99[0] = &_swiftEmptyArrayStorage;
    v6 = objc_opt_self();
    v7 = sub_19BFB4();
    v8 = sub_19BFB4();
    v9 = settingsLocString(v7, v8);

    v10 = [v6 groupSpecifierWithName:v9];
    if (v10)
    {
      v12 = sub_19BFB4();
      v13 = AXLocStringKeyForModel();

      v14 = sub_19BFB4();
      v15 = settingsLocString(v13, v14);

      v95 = PSFooterTextGroupKey;
      [v10 setProperty:v15 forKey:?];

      v16 = v10;
      sub_19C084();
      if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();
      v17 = sub_19BFB4();
      v18 = sub_19BFB4();
      v19 = settingsLocString(v17, v18);

      v20 = [v6 preferenceSpecifierNamed:v19 target:0 set:0 get:0 detail:0 cell:3 edit:0];
      if (v20)
      {
        v94 = v1;
        type metadata accessor for AXSVoiceOverFeedbackOption(0);
        v21 = sub_19C654();
        v22 = sub_19BFB4();
        [v20 setProperty:v21 forKey:v22];
        swift_unknownObjectRelease();

        v23 = v20;
        sub_19C084();
        if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_19C0B4();
        }

        sub_19C0D4();
        v24 = sub_19BFB4();
        v25 = sub_19BFB4();
        v26 = settingsLocString(v24, v25);

        v27 = [v6 preferenceSpecifierNamed:v26 target:0 set:0 get:0 detail:0 cell:3 edit:0];
        if (v27)
        {
          v28 = sub_19C654();
          v29 = sub_19BFB4();
          [v27 setProperty:v28 forKey:v29];
          swift_unknownObjectRelease();

          v30 = v27;
          sub_19C084();
          if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_19C0B4();
          }

          sub_19C0D4();
          v31 = sub_19BFB4();
          v32 = sub_19BFB4();
          v33 = settingsLocString(v31, v32);

          v34 = [v6 preferenceSpecifierNamed:v33 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          if (v34)
          {
            v35 = sub_19C654();
            v36 = sub_19BFB4();
            [v34 setProperty:v35 forKey:v36];
            swift_unknownObjectRelease();

            v37 = v34;
            sub_19C084();
            if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_19C0B4();
            }

            sub_19C0D4();
            v38 = sub_19BFB4();
            v39 = sub_19BFB4();
            v40 = settingsLocString(v38, v39);

            v41 = [v6 preferenceSpecifierNamed:v40 target:0 set:0 get:0 detail:0 cell:3 edit:0];
            if (v41)
            {
              v42 = sub_19C654();
              v43 = sub_19BFB4();
              [v41 setProperty:v42 forKey:v43];
              swift_unknownObjectRelease();

              v44 = v41;
              sub_19C084();
              if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_19C0B4();
              }

              sub_19C0D4();
              v45 = sub_19BFB4();
              v46 = sub_19BFB4();
              v47 = settingsLocString(v45, v46);

              v48 = [v6 groupSpecifierWithName:v47];
              if (v48)
              {
                v49 = sub_19BFB4();
                v50 = sub_19BFB4();
                v51 = settingsLocString(v49, v50);

                [v48 setProperty:v51 forKey:v95];
                v52 = v48;
                sub_19C084();
                if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_19C0B4();
                }

                sub_19C0D4();
                v53 = sub_19BFB4();
                v54 = sub_19BFB4();
                v55 = settingsLocString(v53, v54);

                v56 = [v6 preferenceSpecifierNamed:v55 target:0 set:0 get:0 detail:0 cell:3 edit:0];
                if (v56)
                {
                  v57 = sub_19C654();
                  v58 = sub_19BFB4();
                  [v56 setProperty:v57 forKey:v58];
                  swift_unknownObjectRelease();

                  v59 = v56;
                  sub_19C084();
                  if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                  {
                    sub_19C0B4();
                  }

                  sub_19C0D4();
                  v60 = sub_19BFB4();
                  v61 = sub_19BFB4();
                  v62 = settingsLocString(v60, v61);

                  v63 = [v6 preferenceSpecifierNamed:v62 target:0 set:0 get:0 detail:0 cell:3 edit:0];
                  if (v63)
                  {
                    v64 = sub_19C654();
                    v65 = sub_19BFB4();
                    [v63 setProperty:v64 forKey:v65];
                    swift_unknownObjectRelease();

                    v66 = v63;
                    sub_19C084();
                    if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      sub_19C0B4();
                    }

                    sub_19C0D4();
                    v67 = sub_19BFB4();
                    v68 = sub_19BFB4();
                    v69 = settingsLocString(v67, v68);

                    v70 = [v6 preferenceSpecifierNamed:v69 target:0 set:0 get:0 detail:0 cell:3 edit:0];
                    if (v70)
                    {
                      v71 = sub_19C654();
                      v72 = sub_19BFB4();
                      [v70 setProperty:v71 forKey:v72];
                      swift_unknownObjectRelease();

                      v73 = v70;
                      sub_19C084();
                      if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                      {
                        sub_19C0B4();
                      }

                      sub_19C0D4();
                      v74 = sub_19BFB4();
                      v75 = sub_19BFB4();
                      v76 = settingsLocString(v74, v75);

                      v77 = [v6 preferenceSpecifierNamed:v76 target:0 set:0 get:0 detail:0 cell:3 edit:0];
                      if (v77)
                      {
                        v78 = sub_19C654();
                        v79 = sub_19BFB4();
                        [v77 setProperty:v78 forKey:v79];
                        swift_unknownObjectRelease();

                        v80 = v77;
                        sub_19C084();
                        if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                        {
                          sub_19C0B4();
                        }

                        sub_19C0D4();
                        v81 = [v6 emptyGroupSpecifier];

                        if (v81)
                        {
                          v82 = sub_19BFB4();
                          v83 = sub_19BFB4();
                          v84 = settingsLocString(v82, v83);

                          [v81 setProperty:v84 forKey:v95];
                          v85 = v81;
                          sub_19C084();
                          if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                          {
                            sub_19C0B4();
                          }

                          sub_19C0D4();
                          v86 = sub_19BFB4();
                          v87 = sub_19BFB4();
                          v88 = settingsLocString(v86, v87);

                          v89 = [v6 preferenceSpecifierNamed:v88 target:v94 set:"_setUseRingerSwitchWithValue:spec:" get:"_useRingerSwitchWithSpec:" detail:0 cell:6 edit:0];
                          v90 = v89;

                          if (v90)
                          {
                            sub_19C084();
                            if (*(&dword_10 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v99[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                            {
                              sub_19C0B4();
                            }

                            sub_19C0D4();
                            v91 = *&v99[0];
                            sub_1544A0(0, &qword_2B8278);
                            isa = sub_19C094().super.isa;
                            v93 = sub_19BFB4();
                            [v94 setValue:isa forKey:v93];

                            v5 = sub_171EE4(v91);

                            goto LABEL_46;
                          }

LABEL_58:
                          __break(1u);
                          goto LABEL_59;
                        }

LABEL_57:
                        __break(1u);
                        goto LABEL_58;
                      }

LABEL_56:
                      __break(1u);
                      goto LABEL_57;
                    }

LABEL_55:
                    __break(1u);
                    goto LABEL_56;
                  }

LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2B8C90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v96;
  if (!*(v96 + 16))
  {

    goto LABEL_9;
  }

LABEL_46:
  v11 = v5;
LABEL_59:
  result.value._rawValue = v11;
  result.is_nil = v4;
  return result;
}

id AXVoiceOverNotificationVerbosity.tableView(_:didSelectRowAt:)(uint64_t a1)
{
  v2 = v1;
  isa = sub_19AF04().super.isa;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for AXVoiceOverNotificationVerbosity();
  objc_msgSendSuper2(&v28, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v5 = sub_19AF04().super.isa;
  v6 = [v1 specifierForIndexPath:v5];

  if (v6)
  {
    v7 = sub_19BFB4();
    v8 = [v6 propertyForKey:v7];

    if (v8)
    {
      sub_19C4C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26 = v24;
    v27 = v25;
    if (*(&v25 + 1))
    {
      type metadata accessor for AXSVoiceOverFeedbackOption(0);
      if (swift_dynamicCast())
      {
        v9 = objc_opt_self();
        v10 = [v9 sharedInstance];
        v11 = [v10 voiceOverBannerNotificationOutput];

        if (v23 <= 15)
        {
          if (v23 == 1)
          {
            v11 = 1;
          }

          else if (v23 == 2)
          {
            v12 = v11 ^ 2;
            v13 = v11 == 1;
            v14 = 2;
            goto LABEL_33;
          }

LABEL_36:
          v21 = [v9 sharedInstance];
          [v21 setVoiceOverBannerNotificationOutput:v11];
LABEL_42:

          goto LABEL_43;
        }

        if (v23 == 16)
        {
          v12 = v11 ^ 0x10;
          v13 = v11 == 1;
          v14 = 16;
        }

        else
        {
          if (v23 != 64)
          {
            goto LABEL_36;
          }

          v12 = v11 ^ 0x40;
          v13 = v11 == 1;
          v14 = 64;
        }

LABEL_33:
        if (v13)
        {
          v11 = v14;
        }

        else
        {
          v11 = v12;
        }

        goto LABEL_36;
      }
    }

    else
    {
      sub_154438(&v26);
    }

    v15 = sub_19BFB4();
    v16 = [v6 propertyForKey:v15];

    if (v16)
    {
      sub_19C4C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26 = v24;
    v27 = v25;
    if (*(&v25 + 1))
    {
      type metadata accessor for AXSVoiceOverFeedbackOption(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_43:

        return [v2 reload];
      }

      v17 = objc_opt_self();
      v18 = [v17 sharedInstance];
      v19 = [v18 voiceOverLockedScreenNotificationOutput];

      if (v23 > 15)
      {
        if (v23 == 16)
        {
          if (v19 == 1)
          {
            v19 = 16;
          }

          else
          {
            v19 ^= 0x10uLL;
          }

          goto LABEL_41;
        }

        if (v23 == 32)
        {
          v20 = v19 ^ 0x20;
LABEL_28:
          if (v19 == 1)
          {
            v19 = 0;
          }

          else
          {
            v19 = v20;
          }
        }
      }

      else if (v23 == 1)
      {
        v19 = 1;
      }

      else if (v23 == 2)
      {
        v20 = v19 ^ 2;
        goto LABEL_28;
      }

LABEL_41:
      v21 = [v17 sharedInstance];
      [v21 setVoiceOverLockedScreenNotificationOutput:v19];
      goto LABEL_42;
    }

    sub_154438(&v26);
  }

  return [v2 reload];
}

id AXVoiceOverNotificationVerbosity.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19BFB4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AXVoiceOverNotificationVerbosity();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id AXVoiceOverNotificationVerbosity.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXVoiceOverNotificationVerbosity();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id AXVoiceOverNotificationVerbosity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXVoiceOverNotificationVerbosity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_183CD8(uint64_t a1)
{
  sub_171E6C(a1, v3);
  sub_1544A0(0, &qword_2B8C78);
  if (swift_dynamicCast())
  {
    v1 = [objc_opt_self() sharedInstance];
    [v1 setVoiceOverUseRingerSwitchToControlNotificationOutput:{objc_msgSend(v2, "BOOLValue")}];
  }
}

void sub_183D94(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v16 = a1;
    isa = sub_19AF04().super.isa;
    v7 = [v2 specifierForIndexPath:isa];

    if (v7)
    {
      v8 = sub_19BFB4();
      v9 = [v7 propertyForKey:v8];

      if (v9)
      {
        sub_19C4C4();
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      v21 = v19;
      v22 = v20;
      if (*(&v20 + 1))
      {
        type metadata accessor for AXSVoiceOverFeedbackOption(0);
        if (swift_dynamicCast())
        {
          v10 = v18;
          v11 = &selRef_voiceOverBannerNotificationOutput;
LABEL_19:
          v14 = [objc_opt_self() sharedInstance];
          v15 = [v14 *v11];

          [v5 setChecked:{(v10 & ~v15) == 0, v16}];
          return;
        }
      }

      else
      {
        sub_154438(&v21);
      }

      v12 = sub_19BFB4();
      v13 = [v7 propertyForKey:v12];

      if (v13)
      {
        sub_19C4C4();
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      v21 = v19;
      v22 = v20;
      if (*(&v20 + 1))
      {
        type metadata accessor for AXSVoiceOverFeedbackOption(0);
        if (swift_dynamicCast())
        {
          v10 = v18;
          v11 = &selRef_voiceOverLockedScreenNotificationOutput;
          goto LABEL_19;
        }
      }

      else
      {

        sub_154438(&v21);
      }
    }

    else
    {
    }
  }
}

uint64_t AXHapticMusicIntensityCell.makeContentConfigurationCell(_:setter:)()
{
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9830);
  v1[4] = sub_162D0C(&qword_2B9838, &qword_2B9830);
  __swift_allocate_boxed_opaque_existential_1(v1);
  type metadata accessor for IntensitySelection();
  sub_18F2F0(&qword_2B9840, type metadata accessor for IntensitySelection);
  sub_19B804();
  return sub_19C3F4();
}

double sub_1841A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v11 = type metadata accessor for IntensitySelection();
  *(a5 + v11[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8640);
  swift_storeEnumTagMultiPayload();
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8988);
  swift_storeEnumTagMultiPayload();
  v12 = (a5 + v11[6]);
  *v12 = a1;
  v12[1] = a2;
  v13 = (a5 + v11[7]);
  *v13 = a3;
  v13[1] = a4;
  v14 = v11[8];

  sub_19BC84();
  result = *&v16;
  *(a5 + v14) = v16;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for IntensitySelection()
{
  result = qword_2B98B0;
  if (!qword_2B98B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void AXHapticMusicIntensityCell.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_1845C4();
  sub_18F2F0(&qword_2B9850, sub_1845C4);
  isa = sub_19C164().super.isa;
  v5.receiver = v2;
  v5.super_class = AXHapticMusicIntensityCell;
  objc_msgSendSuper2(&v5, "touchesEnded:withEvent:", isa, a2);
}

unint64_t sub_1845C4()
{
  result = qword_2B9848;
  if (!qword_2B9848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2B9848);
  }

  return result;
}

uint64_t sub_184718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8998);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8518);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_184850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8998);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8518);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_184970()
{
  sub_184A5C(319, &qword_2B8A18, &type metadata accessor for DynamicTypeSize);
  if (v0 <= 0x3F)
  {
    sub_184A5C(319, &qword_2B8588, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_184AB0();
      if (v2 <= 0x3F)
      {
        sub_184B00();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_184A5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19B494();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_184AB0()
{
  result = qword_2B98C0;
  if (!qword_2B98C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2B98C0);
  }

  return result;
}

void sub_184B00()
{
  if (!qword_2B98C8)
  {
    v0 = sub_19BCC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2B98C8);
    }
  }
}

uint64_t sub_184B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19B6F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8640);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for IntensitySelection();
  sub_160C70(v1 + *(v10 + 20), v9, &qword_2B8640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19B484();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_19C3D4();
    v13 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_184D74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v54 = a2;
  v55 = a1;
  v52 = a5;
  v53 = sub_19B824();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19B854();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C88);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C90);
  v14 = __chkstk_darwin(v47);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v45 = &v44 - v18;
  __chkstk_darwin(v17);
  v46 = &v44 - v19;
  sub_19B834();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C98);
  v21 = sub_162D0C(&qword_2B9CA0, &qword_2B9C98);
  sub_19BAB4();
  (*(v7 + 8))(v9, v6);
  v22 = sub_19BFB4();
  v23 = sub_19BFB4();
  v24 = settingsLocString(v22, v23);

  if (!v24)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = sub_19BFE4();
  v27 = v26;

  v58 = v25;
  v59 = v27;
  v56 = v20;
  v57 = v21;
  swift_getOpaqueTypeConformance2();
  sub_16082C();
  sub_19BA94();

  (*(v11 + 8))(v13, v10);
  v28 = v54;
  if (v54 != 1)
  {
    if (v54 != 2)
    {
      goto LABEL_8;
    }

    v29 = sub_19BFB4();
    v30 = sub_19BFB4();
    v31 = settingsLocString(v29, v30);

    if (v31)
    {
LABEL_9:
      v36 = sub_19BFE4();
      v38 = v37;

      v58 = v36;
      v59 = v38;
      v39 = v45;
      sub_19B5E4();

      sub_160CD8(v16, &qword_2B9C90);
      v40 = swift_allocObject();
      v41 = v48;
      v40[2] = v28;
      v40[3] = v41;
      v40[4] = v49;

      v42 = v46;
      sub_19B604();

      sub_160CD8(v39, &qword_2B9C90);
      v43 = v50;
      sub_19B814();
      sub_19B5F4();
      (*(v51 + 8))(v43, v53);
      sub_160CD8(v42, &qword_2B9C90);
      return;
    }

    __break(1u);
  }

  v32 = sub_19BFB4();
  v33 = sub_19BFB4();
  v31 = settingsLocString(v32, v33);

  if (v31)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_8:
  v34 = sub_19BFB4();
  v35 = sub_19BFB4();
  v31 = settingsLocString(v34, v35);

  if (v31)
  {
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1853C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_19B904();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  result = (*(v7 + 88))(v9, v6);
  if (result != enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    if (result != enum case for AccessibilityAdjustmentDirection.decrement(_:))
    {
      a3(2);
      return (*(v7 + 8))(v9, v6);
    }

    if (a2 == 1)
    {
      v11 = 0;
      return (a3)(v11);
    }

    if (a2 != 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (a2 == 1)
  {
    v11 = 2;
    return (a3)(v11);
  }

  if (!a2)
  {
LABEL_8:
    v11 = 1;
    return (a3)(v11);
  }

  return result;
}

uint64_t sub_185578@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = type metadata accessor for IntensitySelection();
  v22[0] = *(v2 - 8);
  v3 = *(v22[0] + 64);
  __chkstk_darwin(v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9AB0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9AB8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9AC0);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  *v6 = sub_19B734();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9AC8);
  sub_1858DC(v1, &v6[*(v14 + 44)]);
  sub_19BEA4();
  sub_19B674();
  sub_1609D0(v6, v10, &qword_2B9AB0);
  v15 = &v10[*(v8 + 44)];
  v16 = v28;
  *(v15 + 4) = v27;
  *(v15 + 5) = v16;
  *(v15 + 6) = v29;
  v17 = v24;
  *v15 = v23;
  *(v15 + 1) = v17;
  v18 = v26;
  *(v15 + 2) = v25;
  *(v15 + 3) = v18;
  sub_1609D0(v10, v13, &qword_2B9AB8);
  v13[*(v11 + 36)] = 0;
  sub_18DC0C(v1, v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v22[0] + 80) + 16) & ~*(v22[0] + 80);
  v20 = swift_allocObject();
  sub_18E208(v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for IntensitySelection);
  sub_18E328(&qword_2B9AD0, &qword_2B9AC0, &unk_1DD300, sub_18E3D8);
  sub_19BA54();

  return sub_160CD8(v13, &qword_2B9AC0);
}

void sub_1858DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = sub_19BD74();
  __chkstk_darwin(v3 - 8);
  v151 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F0);
  __chkstk_darwin(v149);
  v150 = &v135 - v5;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F8);
  __chkstk_darwin(v148);
  v154 = &v135 - v6;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A00);
  v7 = __chkstk_darwin(v153);
  v156 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v152 = &v135 - v10;
  __chkstk_darwin(v9);
  v155 = &v135 - v11;
  v12 = sub_19B484();
  v164 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v135 - v16;
  v18 = sub_19B634();
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = (&v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A08);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v158 = &v135 - v24;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A10) - 8;
  __chkstk_darwin(v160);
  v159 = &v135 - v25;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9AE8) - 8;
  v26 = __chkstk_darwin(v162);
  v147 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v161 = &v135 - v29;
  __chkstk_darwin(v28);
  v163 = &v135 - v30;
  v31 = *(v19 + 28);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = sub_19B744();
  v34 = *(v33 - 8);
  v35 = *(v34 + 104);
  v146 = v32;
  v36 = v164;
  v144 = v35;
  v145 = v33;
  v143 = v34 + 104;
  (v35)(v21 + v31, v32);
  __asm { FMOV            V0.2D, #10.0 }

  *v21 = _Q0;
  sub_184B6C(v17);
  v42 = *(v36 + 104);
  v138 = enum case for ColorScheme.dark(_:);
  v139 = v36 + 104;
  v137 = v42;
  v42(v15);
  LOBYTE(v31) = sub_19B474();
  v43 = *(v36 + 8);
  v142 = v15;
  v43(v15, v12);
  v44 = v17;
  v140 = v12;
  v141 = v43;
  v164 = v36 + 8;
  v43(v17, v12);
  v45 = objc_opt_self();
  v46 = &selRef_systemGray5Color;
  if ((v31 & 1) == 0)
  {
    v46 = &selRef_systemGray6Color;
  }

  v47 = [v45 *v46];
  v48 = sub_19BC14();
  v49 = a1;
  v50 = v158;
  sub_18E208(v21, v158, &type metadata accessor for RoundedRectangle);
  *(v50 + *(v23 + 60)) = v48;
  *(v50 + *(v23 + 64)) = 256;
  sub_19BE94();
  sub_19B504();
  v51 = v159;
  sub_1609D0(v50, v159, &qword_2B9A08);
  v52 = (v51 + *(v160 + 44));
  v53 = v207;
  *v52 = v206;
  v52[1] = v53;
  v52[2] = v208;
  v54 = sub_19BE94();
  v56 = v55;
  sub_18988C(a1, &v195);
  v180 = v199;
  v181 = v200;
  v182 = v201;
  v183 = v202;
  v176 = v195;
  v177 = v196;
  v178 = v197;
  v179 = v198;
  v184[0] = v195;
  v184[1] = v196;
  v184[2] = v197;
  v184[3] = v198;
  v184[4] = v199;
  v184[5] = v200;
  v184[6] = v201;
  v184[7] = v202;
  sub_160C70(&v176, &v185, &qword_2B9A50);
  sub_160CD8(v184, &qword_2B9A50);
  v172 = v180;
  v173 = v181;
  v174 = v182;
  v175 = v183;
  v168 = v176;
  v169 = v177;
  v170 = v178;
  v171 = v179;
  v57 = sub_19BE94();
  v59 = v58;
  *&v185 = v54;
  *(&v185 + 1) = v56;
  v190 = v172;
  v191 = v173;
  v192 = v174;
  v193 = v175;
  v186 = v168;
  v187 = v169;
  v188 = v170;
  v189 = v171;
  *&v194 = v57;
  *(&v194 + 1) = v58;
  v60 = v51;
  v61 = v161;
  sub_1609D0(v60, v161, &qword_2B9A10);
  v62 = (v61 + *(v162 + 44));
  v63 = v192;
  v62[6] = v191;
  v62[7] = v63;
  v64 = v194;
  v62[8] = v193;
  v62[9] = v64;
  v65 = v188;
  v62[2] = v187;
  v62[3] = v65;
  v66 = v190;
  v62[4] = v189;
  v62[5] = v66;
  v67 = v186;
  *v62 = v185;
  v62[1] = v67;
  *&v195 = v54;
  *(&v195 + 1) = v56;
  v200 = v172;
  v201 = v173;
  v202 = v174;
  v203 = v175;
  v196 = v168;
  v197 = v169;
  v198 = v170;
  v199 = v171;
  v204 = v57;
  v205 = v59;
  sub_160C70(&v185, &v167, &qword_2B9AF0);
  sub_160CD8(&v195, &qword_2B9AF0);
  sub_1609D0(v61, v163, &qword_2B9AE8);
  v68 = sub_19BFB4();
  v69 = sub_19BFB4();
  v70 = settingsLocString(v68, v69);

  if (v70)
  {
    v71 = sub_19BFE4();
    v73 = v72;

    *&v167 = v71;
    *(&v167 + 1) = v73;
    sub_16082C();
    v74 = sub_19B9D4();
    v76 = v75;
    v78 = v77;
    v162 = v79;
    v80 = v44;
    sub_184B6C(v44);
    v81 = v142;
    v82 = v49;
    v83 = v140;
    v137(v142, v138, v140);
    v84 = sub_19B474();
    v85 = v141;
    v141(v81, v83);
    v85(v80, v83);
    v136 = v82;
    if ((v84 & 1) != 0 || (v167 = *(v82 + *(type metadata accessor for IntensitySelection() + 32)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918), sub_19BC94(), !v168))
    {
      sub_19BBC4();
    }

    else
    {
      sub_19BBA4();
    }

    v86 = sub_19B9A4();
    v88 = v87;
    v90 = v89;

    sub_160E70(v74, v76, v78 & 1);

    sub_19B974();
    v164 = sub_19B9C4();
    v92 = v91;
    v94 = v93;
    v96 = v95;

    sub_160E70(v86, v88, v90 & 1);

    v97 = sub_19B934();
    sub_19B464();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = v94 & 1;
    v166 = v94 & 1;
    v165 = 0;
    v107 = v151;
    v144(v151, v146, v145);
    v167 = *(v136 + *(type metadata accessor for IntensitySelection() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
    sub_19BC94();
    if (v168)
    {
      *&v167 = sub_19BBB4();
      sub_18E1B4();
      v108 = sub_19BC24();
    }

    else
    {
      v109 = [objc_opt_self() systemBlueColor];
      v108 = sub_19BC14();
    }

    v110 = v108;
    v111 = v150;
    sub_18E208(v107, v150, &type metadata accessor for Capsule);
    v112 = v149;
    *(v111 + *(v149 + 52)) = v110;
    *(v111 + *(v112 + 56)) = 256;
    v113 = sub_19BE94();
    v115 = v114;
    v116 = v154;
    v117 = &v154[*(v148 + 36)];
    sub_1609D0(v111, v117, &qword_2B99F0);
    v118 = (v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A38) + 36));
    *v118 = v113;
    v118[1] = v115;
    *v116 = v164;
    *(v116 + 8) = v92;
    *(v116 + 16) = v106;
    *(v116 + 24) = v96;
    *(v116 + 32) = v97;
    *(v116 + 40) = v99;
    *(v116 + 48) = v101;
    *(v116 + 56) = v103;
    *(v116 + 64) = v105;
    *(v116 + 72) = 0;
    LOBYTE(v113) = sub_19B934();
    sub_19B464();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v127 = v152;
    sub_1609D0(v116, v152, &qword_2B99F8);
    v128 = v127 + *(v153 + 36);
    *v128 = v113;
    *(v128 + 8) = v120;
    *(v128 + 16) = v122;
    *(v128 + 24) = v124;
    *(v128 + 32) = v126;
    *(v128 + 40) = 0;
    v129 = v155;
    sub_1609D0(v127, v155, &qword_2B9A00);
    v130 = v163;
    v131 = v147;
    sub_160C70(v163, v147, &qword_2B9AE8);
    v132 = v156;
    sub_160C70(v129, v156, &qword_2B9A00);
    v133 = v157;
    sub_160C70(v131, v157, &qword_2B9AE8);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9AF8);
    sub_160C70(v132, v133 + *(v134 + 48), &qword_2B9A00);
    sub_160CD8(v129, &qword_2B9A00);
    sub_160CD8(v130, &qword_2B9AE8);
    sub_160CD8(v132, &qword_2B9A00);
    sub_160CD8(v131, &qword_2B9AE8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18662C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = type metadata accessor for IntensitySelection();
  v22[0] = *(v2 - 8);
  v3 = *(v22[0] + 64);
  __chkstk_darwin(v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A58);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A60);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A68);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  *v6 = sub_19B734();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A70);
  sub_186990(v1, &v6[*(v14 + 44)]);
  sub_19BEA4();
  sub_19B674();
  sub_1609D0(v6, v10, &qword_2B9A58);
  v15 = &v10[*(v8 + 44)];
  v16 = v28;
  *(v15 + 4) = v27;
  *(v15 + 5) = v16;
  *(v15 + 6) = v29;
  v17 = v24;
  *v15 = v23;
  *(v15 + 1) = v17;
  v18 = v26;
  *(v15 + 2) = v25;
  *(v15 + 3) = v18;
  sub_1609D0(v10, v13, &qword_2B9A60);
  v13[*(v11 + 36)] = 0;
  sub_18DC0C(v1, v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v22[0] + 80) + 16) & ~*(v22[0] + 80);
  v20 = swift_allocObject();
  sub_18E208(v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for IntensitySelection);
  sub_18E328(&qword_2B9A78, &qword_2B9A68, &unk_1DD2C0, sub_18E270);
  sub_19BA54();

  return sub_160CD8(v13, &qword_2B9A68);
}

void sub_186990(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a1;
  v149 = a2;
  v2 = sub_19BD74();
  __chkstk_darwin(v2 - 8);
  v143 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F0);
  __chkstk_darwin(v141);
  v142 = &v129 - v4;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F8);
  __chkstk_darwin(v140);
  v146 = &v129 - v5;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A00);
  v6 = __chkstk_darwin(v145);
  v148 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v144 = &v129 - v9;
  __chkstk_darwin(v8);
  v147 = &v129 - v10;
  v11 = sub_19B484();
  v156 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v129 - v15;
  v17 = sub_19B634();
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = (&v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A08);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = &v129 - v23;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A10) - 8;
  __chkstk_darwin(v151);
  v150 = &v129 - v25;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A90) - 8;
  v26 = __chkstk_darwin(v153);
  v139 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v152 = &v129 - v29;
  __chkstk_darwin(v28);
  v154 = &v129 - v30;
  v31 = *(v18 + 28);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = sub_19B744();
  v34 = *(v33 - 8);
  v35 = *(v34 + 104);
  v138 = v32;
  v36 = v32;
  v37 = v11;
  v38 = v156;
  v136 = v35;
  v137 = v33;
  v135 = v34 + 104;
  (v35)(v20 + v31, v36);
  __asm { FMOV            V0.2D, #10.0 }

  *v20 = _Q0;
  sub_184B6C(v16);
  v44 = *(v38 + 104);
  v130 = enum case for ColorScheme.dark(_:);
  v131 = v38 + 104;
  v129 = v44;
  v44(v14);
  LOBYTE(v31) = sub_19B474();
  v45 = *(v38 + 8);
  v134 = v14;
  v45(v14, v37);
  v46 = v16;
  v132 = v45;
  v133 = v37;
  v156 = v38 + 8;
  v45(v16, v37);
  v47 = objc_opt_self();
  v48 = &selRef_systemGray5Color;
  if ((v31 & 1) == 0)
  {
    v48 = &selRef_systemGray6Color;
  }

  v49 = [v47 *v48];
  v50 = sub_19BC14();
  sub_18E208(v20, v24, &type metadata accessor for RoundedRectangle);
  *&v24[*(v22 + 60)] = v50;
  *&v24[*(v22 + 64)] = 256;
  sub_19BE94();
  sub_19B504();
  v51 = v150;
  sub_1609D0(v24, v150, &qword_2B9A08);
  v52 = (v51 + *(v151 + 44));
  v53 = v214;
  *v52 = v213;
  v52[1] = v53;
  v52[2] = v215;
  v54 = sub_19BE94();
  v56 = v55;
  sub_18ABC4(v155, &v194);
  v188 = v206;
  v189 = v207;
  v190 = v208;
  v191 = v209;
  v184 = v202;
  v185 = v203;
  v186 = v204;
  v187 = v205;
  v180 = v198;
  v181 = v199;
  v182 = v200;
  v183 = v201;
  v176 = v194;
  v177 = v195;
  v178 = v196;
  v179 = v197;
  v192[12] = v206;
  v192[13] = v207;
  v192[14] = v208;
  v192[15] = v209;
  v192[8] = v202;
  v192[9] = v203;
  v192[10] = v204;
  v192[11] = v205;
  v192[4] = v198;
  v192[5] = v199;
  v192[6] = v200;
  v192[7] = v201;
  v192[0] = v194;
  v192[1] = v195;
  v192[2] = v196;
  v192[3] = v197;
  sub_160C70(&v176, v193, &qword_2B9A98);
  sub_160CD8(v192, &qword_2B9A98);
  v172 = v188;
  v173 = v189;
  v174 = v190;
  v175 = v191;
  v168 = v184;
  v169 = v185;
  v170 = v186;
  v171 = v187;
  v164 = v180;
  v165 = v181;
  v166 = v182;
  v167 = v183;
  v160 = v176;
  v161 = v177;
  v162 = v178;
  v163 = v179;
  v57 = sub_19BE94();
  v59 = v58;
  *&v193[0] = v54;
  *(&v193[0] + 1) = v56;
  v193[13] = v172;
  v193[14] = v173;
  v193[15] = v174;
  v193[16] = v175;
  v193[9] = v168;
  v193[10] = v169;
  v193[11] = v170;
  v193[12] = v171;
  v193[5] = v164;
  v193[6] = v165;
  v193[7] = v166;
  v193[8] = v167;
  v193[1] = v160;
  v193[2] = v161;
  v193[3] = v162;
  v193[4] = v163;
  *&v193[17] = v57;
  *(&v193[17] + 1) = v58;
  v60 = v51;
  v61 = v152;
  sub_1609D0(v60, v152, &qword_2B9A10);
  memcpy((v61 + *(v153 + 44)), v193, 0x120uLL);
  *&v194 = v54;
  *(&v194 + 1) = v56;
  v207 = v172;
  v208 = v173;
  v209 = v174;
  v210 = v175;
  v203 = v168;
  v204 = v169;
  v205 = v170;
  v206 = v171;
  v199 = v164;
  v200 = v165;
  v201 = v166;
  v202 = v167;
  v195 = v160;
  v196 = v161;
  v197 = v162;
  v198 = v163;
  v211 = v57;
  v212 = v59;
  sub_160C70(v193, &v159, &qword_2B9AA0);
  sub_160CD8(&v194, &qword_2B9AA0);
  sub_1609D0(v61, v154, &qword_2B9A90);
  v62 = sub_19BFB4();
  v63 = sub_19BFB4();
  v64 = settingsLocString(v62, v63);

  if (v64)
  {
    v65 = sub_19BFE4();
    v67 = v66;

    *&v159 = v65;
    *(&v159 + 1) = v67;
    sub_16082C();
    v68 = sub_19B9D4();
    v70 = v69;
    v72 = v71;
    v153 = v73;
    v74 = v46;
    v75 = v155;
    sub_184B6C(v46);
    v76 = v133;
    v77 = v134;
    v129(v134, v130, v133);
    v78 = sub_19B474();
    v79 = v132;
    v132(v77, v76);
    v79(v74, v76);
    if ((v78 & 1) != 0 || (v159 = *(v75 + *(type metadata accessor for IntensitySelection() + 32)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918), sub_19BC94(), v160 == 1))
    {
      sub_19BBC4();
    }

    else
    {
      sub_19BBA4();
    }

    v80 = sub_19B9A4();
    v82 = v81;
    v84 = v83;

    sub_160E70(v68, v70, v72 & 1);

    sub_19B974();
    v156 = sub_19B9C4();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    sub_160E70(v80, v82, v84 & 1);

    v91 = sub_19B934();
    sub_19B464();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v100 = v88 & 1;
    v158 = v100;
    v157 = 0;
    v101 = v143;
    v136(v143, v138, v137);
    v159 = *(v155 + *(type metadata accessor for IntensitySelection() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
    sub_19BC94();
    if (v160 == 1)
    {
      v102 = [objc_opt_self() systemBlueColor];
      v103 = sub_19BC14();
    }

    else
    {
      *&v159 = sub_19BBB4();
      sub_18E1B4();
      v103 = sub_19BC24();
    }

    v104 = v103;
    v105 = v142;
    sub_18E208(v101, v142, &type metadata accessor for Capsule);
    v106 = v141;
    *(v105 + *(v141 + 52)) = v104;
    *(v105 + *(v106 + 56)) = 256;
    v107 = sub_19BE94();
    v109 = v108;
    v110 = v146;
    v111 = &v146[*(v140 + 36)];
    sub_1609D0(v105, v111, &qword_2B99F0);
    v112 = (v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A38) + 36));
    *v112 = v107;
    v112[1] = v109;
    *v110 = v156;
    *(v110 + 8) = v86;
    *(v110 + 16) = v100;
    *(v110 + 24) = v90;
    *(v110 + 32) = v91;
    *(v110 + 40) = v93;
    *(v110 + 48) = v95;
    *(v110 + 56) = v97;
    *(v110 + 64) = v99;
    *(v110 + 72) = 0;
    LOBYTE(v107) = sub_19B934();
    sub_19B464();
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v121 = v144;
    sub_1609D0(v110, v144, &qword_2B99F8);
    v122 = v121 + *(v145 + 36);
    *v122 = v107;
    *(v122 + 8) = v114;
    *(v122 + 16) = v116;
    *(v122 + 24) = v118;
    *(v122 + 32) = v120;
    *(v122 + 40) = 0;
    v123 = v147;
    sub_1609D0(v121, v147, &qword_2B9A00);
    v124 = v154;
    v125 = v139;
    sub_160C70(v154, v139, &qword_2B9A90);
    v126 = v148;
    sub_160C70(v123, v148, &qword_2B9A00);
    v127 = v149;
    sub_160C70(v125, v149, &qword_2B9A90);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9AA8);
    sub_160C70(v126, v127 + *(v128 + 48), &qword_2B9A00);
    sub_160CD8(v123, &qword_2B9A00);
    sub_160CD8(v124, &qword_2B9A90);
    sub_160CD8(v126, &qword_2B9A00);
    sub_160CD8(v125, &qword_2B9A90);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18784C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = type metadata accessor for IntensitySelection();
  v22[0] = *(v2 - 8);
  v3 = *(v22[0] + 64);
  __chkstk_darwin(v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99B8);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99C0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99C8);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  *v6 = sub_19B734();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99D0);
  sub_187BB0(v1, &v6[*(v14 + 44)]);
  sub_19BEA4();
  sub_19B674();
  sub_1609D0(v6, v10, &qword_2B99B8);
  v15 = &v10[*(v8 + 44)];
  v16 = v28;
  *(v15 + 4) = v27;
  *(v15 + 5) = v16;
  *(v15 + 6) = v29;
  v17 = v24;
  *v15 = v23;
  *(v15 + 1) = v17;
  v18 = v26;
  *(v15 + 2) = v25;
  *(v15 + 3) = v18;
  sub_1609D0(v10, v13, &qword_2B99C0);
  v13[*(v11 + 36)] = 0;
  sub_18DC0C(v1, v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v22[0] + 80) + 16) & ~*(v22[0] + 80);
  v20 = swift_allocObject();
  sub_18E208(v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for IntensitySelection);
  sub_18E328(&qword_2B99D8, &qword_2B99C8, &unk_1DD238, sub_18E0FC);
  sub_19BA54();

  return sub_160CD8(v13, &qword_2B99C8);
}

void sub_187BB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a1;
  v148 = a2;
  v2 = sub_19BD74();
  __chkstk_darwin(v2 - 8);
  v142 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F0);
  __chkstk_darwin(v140);
  v141 = &v127 - v4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F8);
  __chkstk_darwin(v139);
  v145 = &v127 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A00);
  v6 = __chkstk_darwin(v144);
  v147 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v143 = &v127 - v9;
  __chkstk_darwin(v8);
  v146 = &v127 - v10;
  v11 = sub_19B484();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v127 - v16;
  v18 = sub_19B634();
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = (&v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A08);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v127 - v24;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A10) - 8;
  __chkstk_darwin(v150);
  v149 = &v127 - v26;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A18) - 8;
  v27 = __chkstk_darwin(v152);
  v138 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v151 = &v127 - v30;
  __chkstk_darwin(v29);
  v153 = &v127 - v31;
  v32 = *(v19 + 28);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = sub_19B744();
  v35 = *(v34 - 8);
  v36 = *(v35 + 104);
  v137 = v33;
  v135 = v36;
  v136 = v34;
  v134 = v35 + 104;
  (v36)(v21 + v32, v33);
  __asm { FMOV            V0.2D, #10.0 }

  *v21 = _Q0;
  sub_184B6C(v17);
  v42 = *(v12 + 104);
  v128 = enum case for ColorScheme.dark(_:);
  v129 = v12 + 104;
  v127 = v42;
  v42(v15);
  LOBYTE(v32) = sub_19B474();
  v43 = *(v12 + 8);
  v133 = v15;
  v43(v15, v11);
  v44 = v17;
  v131 = v43;
  v132 = v11;
  v130 = v12 + 8;
  v43(v17, v11);
  v45 = objc_opt_self();
  v46 = &selRef_systemGray5Color;
  if ((v32 & 1) == 0)
  {
    v46 = &selRef_systemGray6Color;
  }

  v47 = [v45 *v46];
  v48 = sub_19BC14();
  sub_18E208(v21, v25, &type metadata accessor for RoundedRectangle);
  *&v25[*(v23 + 60)] = v48;
  *&v25[*(v23 + 64)] = 256;
  sub_19BE94();
  sub_19B504();
  v49 = v149;
  sub_1609D0(v25, v149, &qword_2B9A08);
  v50 = (v49 + *(v150 + 44));
  v51 = v164;
  *v50 = v163;
  v50[1] = v51;
  v50[2] = v165;
  v52 = sub_19BE94();
  v54 = v53;
  sub_18C054(v154, v162);
  memcpy(v159, v162, sizeof(v159));
  memcpy(v160, v162, sizeof(v160));
  sub_160C70(v159, v161, &qword_2B9A20);
  sub_160CD8(v160, &qword_2B9A20);
  memcpy(v158, v159, sizeof(v158));
  v55 = sub_19BE94();
  v57 = v56;
  v161[0] = v52;
  v161[1] = v54;
  memcpy(&v161[2], v158, 0x178uLL);
  v161[49] = v55;
  v161[50] = v57;
  v58 = v49;
  v59 = v151;
  sub_1609D0(v58, v151, &qword_2B9A10);
  memcpy((v59 + *(v152 + 44)), v161, 0x198uLL);
  v162[0] = v52;
  v162[1] = v54;
  memcpy(&v162[2], v158, 0x178uLL);
  v162[49] = v55;
  v162[50] = v57;
  sub_160C70(v161, &v157, &qword_2B9A28);
  sub_160CD8(v162, &qword_2B9A28);
  sub_1609D0(v59, v153, &qword_2B9A18);
  v60 = sub_19BFB4();
  v61 = sub_19BFB4();
  v62 = settingsLocString(v60, v61);

  if (v62)
  {
    v63 = sub_19BFE4();
    v65 = v64;

    *&v157 = v63;
    *(&v157 + 1) = v65;
    sub_16082C();
    v66 = sub_19B9D4();
    v68 = v67;
    v70 = v69;
    v152 = v71;
    v72 = v44;
    v73 = v154;
    sub_184B6C(v44);
    v74 = v132;
    v75 = v133;
    v127(v133, v128, v132);
    v76 = sub_19B474();
    v77 = v131;
    v131(v75, v74);
    v77(v72, v74);
    if ((v76 & 1) != 0 || (v157 = *(v73 + *(type metadata accessor for IntensitySelection() + 32)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918), sub_19BC94(), v158[0] == 2))
    {
      sub_19BBC4();
    }

    else
    {
      sub_19BBA4();
    }

    v78 = sub_19B9A4();
    v80 = v79;
    v82 = v81;

    sub_160E70(v66, v68, v70 & 1);

    sub_19B974();
    v152 = sub_19B9C4();
    v84 = v83;
    v86 = v85;
    v88 = v87;

    sub_160E70(v78, v80, v82 & 1);

    v89 = sub_19B934();
    sub_19B464();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v98 = v86 & 1;
    v156 = v86 & 1;
    v155 = 0;
    v99 = v142;
    v135(v142, v137, v136);
    v157 = *(v154 + *(type metadata accessor for IntensitySelection() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
    sub_19BC94();
    if (v158[0] == 2)
    {
      v100 = [objc_opt_self() systemBlueColor];
      v101 = sub_19BC14();
    }

    else
    {
      *&v157 = sub_19BBB4();
      sub_18E1B4();
      v101 = sub_19BC24();
    }

    v102 = v101;
    v103 = v141;
    sub_18E208(v99, v141, &type metadata accessor for Capsule);
    v104 = v140;
    *(v103 + *(v140 + 52)) = v102;
    *(v103 + *(v104 + 56)) = 256;
    v105 = sub_19BE94();
    v107 = v106;
    v108 = v145;
    v109 = &v145[*(v139 + 36)];
    sub_1609D0(v103, v109, &qword_2B99F0);
    v110 = (v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A38) + 36));
    *v110 = v105;
    v110[1] = v107;
    *v108 = v152;
    *(v108 + 8) = v84;
    *(v108 + 16) = v98;
    *(v108 + 24) = v88;
    *(v108 + 32) = v89;
    *(v108 + 40) = v91;
    *(v108 + 48) = v93;
    *(v108 + 56) = v95;
    *(v108 + 64) = v97;
    *(v108 + 72) = 0;
    LOBYTE(v105) = sub_19B934();
    sub_19B464();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v119 = v143;
    sub_1609D0(v108, v143, &qword_2B99F8);
    v120 = v119 + *(v144 + 36);
    *v120 = v105;
    *(v120 + 8) = v112;
    *(v120 + 16) = v114;
    *(v120 + 24) = v116;
    *(v120 + 32) = v118;
    *(v120 + 40) = 0;
    v121 = v146;
    sub_1609D0(v119, v146, &qword_2B9A00);
    v122 = v153;
    v123 = v138;
    sub_160C70(v153, v138, &qword_2B9A18);
    v124 = v147;
    sub_160C70(v121, v147, &qword_2B9A00);
    v125 = v148;
    sub_160C70(v123, v148, &qword_2B9A18);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A40);
    sub_160C70(v124, v125 + *(v126 + 48), &qword_2B9A00);
    sub_160CD8(v121, &qword_2B9A00);
    sub_160CD8(v122, &qword_2B9A18);
    sub_160CD8(v124, &qword_2B9A00);
    sub_160CD8(v123, &qword_2B9A18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1887D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v229 = a1;
  v195 = a2;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B88);
  __chkstk_darwin(v194);
  v217 = &v189 - v2;
  v3 = sub_19BD74();
  __chkstk_darwin(v3 - 8);
  v211 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F0);
  __chkstk_darwin(v209);
  v210 = &v189 - v5;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B90);
  __chkstk_darwin(v208);
  v213 = &v189 - v6;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B98);
  __chkstk_darwin(v212);
  v214 = &v189 - v7;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9BA0);
  __chkstk_darwin(v215);
  v216 = &v189 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9BA8);
  v192 = *(v9 - 8);
  v193 = v9;
  v10 = __chkstk_darwin(v9);
  v191 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v190 = &v189 - v12;
  v13 = sub_19B484();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v189 - v18;
  v20 = sub_19B634();
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = (&v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A08);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v219 = &v189 - v26;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A10) - 8;
  __chkstk_darwin(v221);
  v220 = &v189 - v27;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9AE8) - 8;
  __chkstk_darwin(v223);
  v222 = &v189 - v28;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C30) - 8;
  __chkstk_darwin(v226);
  v225 = &v189 - v29;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C38) - 8;
  v30 = __chkstk_darwin(v227);
  v189 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v224 = &v189 - v33;
  __chkstk_darwin(v32);
  v228 = &v189 - v34;
  v35 = *(v21 + 28);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = sub_19B744();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v218 = v23;
  v207 = v36;
  v205 = v39;
  v206 = v37;
  v204 = v38 + 104;
  (v39)(v23 + v35, v36);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  v45 = v19;
  v46 = v19;
  v47 = v229;
  sub_184B6C(v46);
  v48 = *(v14 + 104);
  v198 = enum case for ColorScheme.dark(_:);
  v199 = v14 + 104;
  v197 = v48;
  v48(v17);
  LOBYTE(v35) = sub_19B474();
  v49 = *(v14 + 8);
  v202 = v17;
  v49(v17, v13);
  v196 = v45;
  v200 = v13;
  v201 = v49;
  v203 = v14 + 8;
  v49(v45, v13);
  v50 = objc_opt_self();
  v51 = &selRef_systemGray5Color;
  if ((v35 & 1) == 0)
  {
    v51 = &selRef_systemGray6Color;
  }

  v52 = [v50 *v51];
  v53 = sub_19BC14();
  v54 = v219;
  sub_18E208(v218, v219, &type metadata accessor for RoundedRectangle);
  *(v54 + *(v25 + 60)) = v53;
  v55 = v47;
  *(v54 + *(v25 + 64)) = 256;
  sub_19BE94();
  sub_19B504();
  v56 = v54;
  v57 = v220;
  sub_1609D0(v56, v220, &qword_2B9A08);
  v58 = (v57 + *(v221 + 44));
  v59 = v273;
  *v58 = v272;
  v58[1] = v59;
  v58[2] = v274;
  v60 = sub_19BE94();
  v62 = v61;
  sub_18988C(v55, &v261);
  v246 = v265;
  v247 = v266;
  v248 = v267;
  v249 = v268;
  v242 = v261;
  v243 = v262;
  v244 = v263;
  v245 = v264;
  v250[0] = v261;
  v250[1] = v262;
  v250[2] = v263;
  v250[3] = v264;
  v250[4] = v265;
  v250[5] = v266;
  v250[6] = v267;
  v250[7] = v268;
  sub_160C70(&v242, &v251, &qword_2B9A50);
  sub_160CD8(v250, &qword_2B9A50);
  v238 = v246;
  v239 = v247;
  v240 = v248;
  v241 = v249;
  v234 = v242;
  v235 = v243;
  v236 = v244;
  v237 = v245;
  v63 = sub_19BE94();
  v65 = v64;
  *&v251 = v60;
  *(&v251 + 1) = v62;
  v256 = v238;
  v257 = v239;
  v258 = v240;
  v259 = v241;
  v252 = v234;
  v253 = v235;
  v254 = v236;
  v255 = v237;
  *&v260 = v63;
  *(&v260 + 1) = v64;
  v66 = v57;
  v67 = v222;
  sub_1609D0(v66, v222, &qword_2B9A10);
  v68 = (v67 + *(v223 + 44));
  v69 = v258;
  v68[6] = v257;
  v68[7] = v69;
  v70 = v260;
  v68[8] = v259;
  v68[9] = v70;
  v71 = v254;
  v68[2] = v253;
  v68[3] = v71;
  v72 = v256;
  v68[4] = v255;
  v68[5] = v72;
  v73 = v252;
  *v68 = v251;
  v68[1] = v73;
  *&v261 = v60;
  *(&v261 + 1) = v62;
  v266 = v238;
  v267 = v239;
  v268 = v240;
  v269 = v241;
  v262 = v234;
  v263 = v235;
  v264 = v236;
  v265 = v237;
  v270 = v63;
  v271 = v65;
  sub_160C70(&v251, &v233, &qword_2B9AF0);
  sub_160CD8(&v261, &qword_2B9AF0);
  LOBYTE(v60) = sub_19B924();
  sub_19B464();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v225;
  sub_1609D0(v67, v225, &qword_2B9AE8);
  v83 = v82 + *(v226 + 44);
  *v83 = v60;
  *(v83 + 8) = v75;
  *(v83 + 16) = v77;
  *(v83 + 24) = v79;
  *(v83 + 32) = v81;
  *(v83 + 40) = 0;
  LOBYTE(v60) = sub_19B944();
  sub_19B464();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v82;
  v93 = v224;
  sub_1609D0(v92, v224, &qword_2B9C30);
  v94 = v228;
  v95 = v93 + *(v227 + 44);
  *v95 = v60;
  *(v95 + 8) = v85;
  *(v95 + 16) = v87;
  *(v95 + 24) = v89;
  *(v95 + 32) = v91;
  *(v95 + 40) = 0;
  sub_1609D0(v93, v94, &qword_2B9C38);
  v96 = sub_19BFB4();
  v97 = sub_19BFB4();
  v98 = settingsLocString(v96, v97);

  if (v98)
  {
    v99 = sub_19BFE4();
    v101 = v100;

    *&v233 = v99;
    *(&v233 + 1) = v101;
    sub_16082C();
    v102 = sub_19B9D4();
    v104 = v103;
    v106 = v105;
    v227 = v107;
    v108 = v196;
    sub_184B6C(v196);
    v109 = v202;
    v110 = v200;
    v197(v202, v198, v200);
    v111 = sub_19B474();
    v112 = v201;
    v201(v109, v110);
    v112(v108, v110);
    if ((v111 & 1) != 0 || (v233 = *(v55 + *(type metadata accessor for IntensitySelection() + 32)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918), sub_19BC94(), !v234))
    {
      sub_19BBC4();
    }

    else
    {
      sub_19BBA4();
    }

    v113 = sub_19B9A4();
    v115 = v114;
    v117 = v116;

    sub_160E70(v102, v104, v106 & 1);

    sub_19B974();
    v118 = sub_19B9C4();
    v226 = v119;
    v227 = v118;
    v121 = v120;
    v123 = v122;

    sub_160E70(v113, v115, v117 & 1);

    v124 = sub_19B924();
    sub_19B464();
    v126 = v125;
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v133 = v121 & 1;
    v231 = v121 & 1;
    v230 = 0;
    v134 = sub_19B944();
    sub_19B464();
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v232 = 0;
    v143 = v211;
    v205(v211, v207, v206);
    v233 = *(v229 + *(type metadata accessor for IntensitySelection() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
    sub_19BC94();
    if (v234)
    {
      *&v233 = sub_19BBB4();
      sub_18E1B4();
      v144 = sub_19BC24();
    }

    else
    {
      v145 = [objc_opt_self() systemBlueColor];
      v144 = sub_19BC14();
    }

    v146 = v144;
    v147 = v210;
    sub_18E208(v143, v210, &type metadata accessor for Capsule);
    v148 = v209;
    *(v147 + *(v209 + 52)) = v146;
    *(v147 + *(v148 + 56)) = 256;
    v149 = sub_19BE94();
    v151 = v150;
    v152 = v213;
    v153 = &v213[*(v208 + 36)];
    sub_1609D0(v147, v153, &qword_2B99F0);
    v154 = (v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A38) + 36));
    *v154 = v149;
    v154[1] = v151;
    v155 = v226;
    *v152 = v227;
    *(v152 + 8) = v155;
    *(v152 + 16) = v133;
    *(v152 + 24) = v123;
    *(v152 + 32) = v124;
    *(v152 + 40) = v126;
    *(v152 + 48) = v128;
    *(v152 + 56) = v130;
    *(v152 + 64) = v132;
    *(v152 + 72) = 0;
    *(v152 + 80) = v134;
    *(v152 + 88) = v136;
    *(v152 + 96) = v138;
    *(v152 + 104) = v140;
    *(v152 + 112) = v142;
    *(v152 + 120) = 0;
    LOBYTE(v149) = sub_19B924();
    sub_19B464();
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v164 = v214;
    sub_1609D0(v152, v214, &qword_2B9B90);
    v165 = v164 + *(v212 + 36);
    *v165 = v149;
    *(v165 + 8) = v157;
    *(v165 + 16) = v159;
    *(v165 + 24) = v161;
    *(v165 + 32) = v163;
    *(v165 + 40) = 0;
    LOBYTE(v149) = sub_19B944();
    sub_19B464();
    v167 = v166;
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v174 = v216;
    sub_1609D0(v164, v216, &qword_2B9B98);
    v175 = v174 + *(v215 + 36);
    *v175 = v149;
    *(v175 + 8) = v167;
    *(v175 + 16) = v169;
    *(v175 + 24) = v171;
    *(v175 + 32) = v173;
    *(v175 + 40) = 0;
    v176 = enum case for DynamicTypeSize.accessibility3(_:);
    v177 = sub_19B5B4();
    v178 = v217;
    (*(*(v177 - 8) + 104))(v217, v176, v177);
    sub_18F2F0(&qword_2B9BC0, &type metadata accessor for DynamicTypeSize);
    if (sub_19BFA4())
    {
      sub_18E83C();
      sub_162D0C(&qword_2B9C08, &qword_2B9B88);
      v179 = v190;
      sub_19BA74();
      sub_160CD8(v178, &qword_2B9B88);
      sub_160CD8(v174, &qword_2B9BA0);
      v180 = v228;
      v181 = v189;
      sub_160C70(v228, v189, &qword_2B9C38);
      v183 = v191;
      v182 = v192;
      v184 = *(v192 + 16);
      v185 = v193;
      v184(v191, v179, v193);
      v186 = v195;
      sub_160C70(v181, v195, &qword_2B9C38);
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C40);
      v184((v186 + *(v187 + 48)), v183, v185);
      v188 = *(v182 + 8);
      v188(v179, v185);
      sub_160CD8(v180, &qword_2B9C38);
      v188(v183, v185);
      sub_160CD8(v181, &qword_2B9C38);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

double sub_18988C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + *(type metadata accessor for IntensitySelection() + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
  sub_19BC94();
  v3 = objc_opt_self();
  v4 = &selRef_systemBlueColor;
  if (v15)
  {
    v4 = &selRef_systemGray2Color;
  }

  v5 = [v3 *v4];
  v6 = sub_19BC14();
  sub_19B4A4();
  v7 = sub_19BE94();
  v9 = v8;
  sub_19BE94();
  sub_19B504();
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v6;
  *(a2 + 48) = 256;
  *(a2 + 56) = v7;
  *(a2 + 64) = v9;
  *(a2 + 72) = v12;
  *(a2 + 88) = v13;
  result = *&v14;
  *(a2 + 104) = v14;
  *(a2 + 120) = 0x3FF0000000000000;
  return result;
}

void sub_1899F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B88);
  __chkstk_darwin(v186);
  v209 = &v181 - v3;
  v4 = sub_19BD74();
  __chkstk_darwin(v4 - 8);
  v203 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F0);
  __chkstk_darwin(v201);
  v202 = &v181 - v6;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B90);
  __chkstk_darwin(v200);
  v205 = &v181 - v7;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B98);
  __chkstk_darwin(v204);
  v206 = &v181 - v8;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9BA0);
  __chkstk_darwin(v207);
  v208 = &v181 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9BA8);
  v184 = *(v10 - 8);
  v185 = v10;
  v11 = __chkstk_darwin(v10);
  v183 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v182 = &v181 - v13;
  v14 = sub_19B484();
  v221 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v181 - v18;
  v20 = sub_19B634();
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = (&v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A08);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v211 = &v181 - v26;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A10) - 8;
  __chkstk_darwin(v213);
  v212 = &v181 - v27;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A90) - 8;
  __chkstk_darwin(v215);
  v214 = &v181 - v28;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C18) - 8;
  __chkstk_darwin(v218);
  v217 = &v181 - v29;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C20) - 8;
  v30 = __chkstk_darwin(v219);
  v181 = &v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v216 = &v181 - v33;
  __chkstk_darwin(v32);
  v220 = &v181 - v34;
  v35 = *(v21 + 28);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = sub_19B744();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v210 = v23;
  v199 = v36;
  v40 = v36;
  v41 = v14;
  v42 = v221;
  v197 = v39;
  v198 = v37;
  v196 = v38 + 104;
  (v39)(v23 + v35, v40);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  sub_184B6C(v19);
  v48 = *(v42 + 104);
  v190 = enum case for ColorScheme.dark(_:);
  v191 = v42 + 104;
  v189 = v48;
  v48(v17);
  LOBYTE(v35) = sub_19B474();
  v49 = *(v42 + 8);
  v195 = v17;
  v49(v17, v41);
  v193 = v19;
  v194 = v41;
  v221 = v42 + 8;
  v192 = v49;
  v49(v19, v41);
  v50 = objc_opt_self();
  v51 = &selRef_systemGray5Color;
  if ((v35 & 1) == 0)
  {
    v51 = &selRef_systemGray6Color;
  }

  v52 = [v50 *v51];
  v53 = sub_19BC14();
  v54 = v211;
  sub_18E208(v210, v211, &type metadata accessor for RoundedRectangle);
  *(v54 + *(v25 + 60)) = v53;
  *(v54 + *(v25 + 64)) = 256;
  sub_19BE94();
  sub_19B504();
  v55 = v212;
  sub_1609D0(v54, v212, &qword_2B9A08);
  v56 = (v55 + *(v213 + 44));
  v57 = v280;
  *v56 = v279;
  v56[1] = v57;
  v56[2] = v281;
  v58 = sub_19BE94();
  v60 = v59;
  sub_18ABC4(a1, &v260);
  v254 = v272;
  v255 = v273;
  v256 = v274;
  v257 = v275;
  v250 = v268;
  v251 = v269;
  v252 = v270;
  v253 = v271;
  v246 = v264;
  v247 = v265;
  v248 = v266;
  v249 = v267;
  v242 = v260;
  v243 = v261;
  v244 = v262;
  v245 = v263;
  v258[12] = v272;
  v258[13] = v273;
  v258[14] = v274;
  v258[15] = v275;
  v258[8] = v268;
  v258[9] = v269;
  v258[10] = v270;
  v258[11] = v271;
  v258[4] = v264;
  v258[5] = v265;
  v258[6] = v266;
  v258[7] = v267;
  v258[0] = v260;
  v258[1] = v261;
  v258[2] = v262;
  v258[3] = v263;
  sub_160C70(&v242, v259, &qword_2B9A98);
  sub_160CD8(v258, &qword_2B9A98);
  v238 = v254;
  v239 = v255;
  v240 = v256;
  v241 = v257;
  v234 = v250;
  v235 = v251;
  v236 = v252;
  v237 = v253;
  v230 = v246;
  v231 = v247;
  v232 = v248;
  v233 = v249;
  v226 = v242;
  v227 = v243;
  v228 = v244;
  v229 = v245;
  v61 = sub_19BE94();
  v63 = v62;
  *&v259[0] = v58;
  *(&v259[0] + 1) = v60;
  v259[13] = v238;
  v259[14] = v239;
  v259[15] = v240;
  v259[16] = v241;
  v259[9] = v234;
  v259[10] = v235;
  v259[11] = v236;
  v259[12] = v237;
  v259[5] = v230;
  v259[6] = v231;
  v259[7] = v232;
  v259[8] = v233;
  v259[1] = v226;
  v259[2] = v227;
  v259[3] = v228;
  v259[4] = v229;
  *&v259[17] = v61;
  *(&v259[17] + 1) = v62;
  v64 = v55;
  v65 = v214;
  sub_1609D0(v64, v214, &qword_2B9A10);
  memcpy((v65 + *(v215 + 44)), v259, 0x120uLL);
  v273 = v238;
  v274 = v239;
  v275 = v240;
  v276 = v241;
  v269 = v234;
  v270 = v235;
  v271 = v236;
  v272 = v237;
  v265 = v230;
  v266 = v231;
  v267 = v232;
  v268 = v233;
  v261 = v226;
  v262 = v227;
  v263 = v228;
  *&v260 = v58;
  *(&v260 + 1) = v60;
  v264 = v229;
  v277 = v61;
  v278 = v63;
  sub_160C70(v259, &v225, &qword_2B9AA0);
  sub_160CD8(&v260, &qword_2B9AA0);
  LOBYTE(v58) = sub_19B924();
  sub_19B464();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v217;
  sub_1609D0(v65, v217, &qword_2B9A90);
  v75 = v74 + *(v218 + 44);
  *v75 = v58;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  LOBYTE(v58) = sub_19B944();
  sub_19B464();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v74;
  v85 = v216;
  sub_1609D0(v84, v216, &qword_2B9C18);
  v86 = v220;
  v87 = v85 + *(v219 + 44);
  *v87 = v58;
  *(v87 + 8) = v77;
  *(v87 + 16) = v79;
  *(v87 + 24) = v81;
  *(v87 + 32) = v83;
  *(v87 + 40) = 0;
  sub_1609D0(v85, v86, &qword_2B9C20);
  v88 = sub_19BFB4();
  v89 = sub_19BFB4();
  v90 = settingsLocString(v88, v89);

  if (v90)
  {
    v91 = sub_19BFE4();
    v93 = v92;

    *&v225 = v91;
    *(&v225 + 1) = v93;
    sub_16082C();
    v94 = sub_19B9D4();
    v96 = v95;
    v98 = v97;
    v219 = v99;
    v100 = v193;
    sub_184B6C(v193);
    v102 = v194;
    v101 = v195;
    v189(v195, v190, v194);
    v103 = sub_19B474();
    v104 = a1;
    v105 = v192;
    v192(v101, v102);
    v105(v100, v102);
    v188 = v104;
    if ((v103 & 1) != 0 || (v225 = *(v104 + *(type metadata accessor for IntensitySelection() + 32)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918), sub_19BC94(), v226 == 1))
    {
      sub_19BBC4();
    }

    else
    {
      sub_19BBA4();
    }

    v106 = sub_19B9A4();
    v108 = v107;
    v110 = v109;

    sub_160E70(v94, v96, v98 & 1);

    sub_19B974();
    v221 = sub_19B9C4();
    v219 = v111;
    v113 = v112;
    v115 = v114;

    sub_160E70(v106, v108, v110 & 1);

    v116 = sub_19B924();
    sub_19B464();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v125 = v113 & 1;
    v223 = v113 & 1;
    v222 = 0;
    v126 = sub_19B944();
    sub_19B464();
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v224 = 0;
    v135 = v203;
    v197(v203, v199, v198);
    v225 = *(v188 + *(type metadata accessor for IntensitySelection() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
    sub_19BC94();
    if (v226 == 1)
    {
      v136 = [objc_opt_self() systemBlueColor];
      v137 = sub_19BC14();
    }

    else
    {
      *&v225 = sub_19BBB4();
      sub_18E1B4();
      v137 = sub_19BC24();
    }

    v138 = v137;
    v139 = v202;
    sub_18E208(v135, v202, &type metadata accessor for Capsule);
    v140 = v201;
    *(v139 + *(v201 + 52)) = v138;
    *(v139 + *(v140 + 56)) = 256;
    v141 = sub_19BE94();
    v143 = v142;
    v144 = v205;
    v145 = &v205[*(v200 + 36)];
    sub_1609D0(v139, v145, &qword_2B99F0);
    v146 = (v145 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A38) + 36));
    *v146 = v141;
    v146[1] = v143;
    v147 = v219;
    *v144 = v221;
    *(v144 + 8) = v147;
    *(v144 + 16) = v125;
    *(v144 + 24) = v115;
    *(v144 + 32) = v116;
    *(v144 + 40) = v118;
    *(v144 + 48) = v120;
    *(v144 + 56) = v122;
    *(v144 + 64) = v124;
    *(v144 + 72) = 0;
    *(v144 + 80) = v126;
    *(v144 + 88) = v128;
    *(v144 + 96) = v130;
    *(v144 + 104) = v132;
    *(v144 + 112) = v134;
    *(v144 + 120) = 0;
    LOBYTE(v141) = sub_19B924();
    sub_19B464();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v156 = v206;
    sub_1609D0(v144, v206, &qword_2B9B90);
    v157 = v156 + *(v204 + 36);
    *v157 = v141;
    *(v157 + 8) = v149;
    *(v157 + 16) = v151;
    *(v157 + 24) = v153;
    *(v157 + 32) = v155;
    *(v157 + 40) = 0;
    LOBYTE(v141) = sub_19B944();
    sub_19B464();
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v165 = v164;
    v166 = v208;
    sub_1609D0(v156, v208, &qword_2B9B98);
    v167 = v166 + *(v207 + 36);
    *v167 = v141;
    *(v167 + 8) = v159;
    *(v167 + 16) = v161;
    *(v167 + 24) = v163;
    *(v167 + 32) = v165;
    *(v167 + 40) = 0;
    v168 = enum case for DynamicTypeSize.accessibility3(_:);
    v169 = sub_19B5B4();
    v170 = v209;
    (*(*(v169 - 8) + 104))(v209, v168, v169);
    sub_18F2F0(&qword_2B9BC0, &type metadata accessor for DynamicTypeSize);
    if (sub_19BFA4())
    {
      sub_18E83C();
      sub_162D0C(&qword_2B9C08, &qword_2B9B88);
      v171 = v182;
      sub_19BA74();
      sub_160CD8(v170, &qword_2B9B88);
      sub_160CD8(v166, &qword_2B9BA0);
      v172 = v220;
      v173 = v181;
      sub_160C70(v220, v181, &qword_2B9C20);
      v175 = v183;
      v174 = v184;
      v176 = *(v184 + 16);
      v177 = v185;
      v176(v183, v171, v185);
      v178 = v187;
      sub_160C70(v173, v187, &qword_2B9C20);
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C28);
      v176((v178 + *(v179 + 48)), v175, v177);
      v180 = *(v174 + 8);
      v180(v171, v177);
      sub_160CD8(v172, &qword_2B9C20);
      v180(v175, v177);
      sub_160CD8(v173, &qword_2B9C20);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_18ABC4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IntensitySelection() + 32));
  v4 = *v3;
  v5 = v3[1];
  v71 = *v3;
  v72 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
  sub_19BC94();
  v6 = objc_opt_self();
  v7 = &selRef_systemGray2Color;
  if (v58 == 1)
  {
    v7 = &selRef_systemBlueColor;
  }

  v8 = [v6 *v7];
  v32 = sub_19BC14();
  sub_19B4A4();
  v9 = v86;
  v30 = HIDWORD(v86);
  v31 = DWORD2(v86);
  v10 = v87;
  v11 = v88;
  v12 = sub_19BE94();
  v28 = v13;
  v29 = v12;
  sub_19BE94();
  sub_19B504();
  v71 = v4;
  v72 = v5;
  sub_19BC94();
  v14 = objc_opt_self();
  v15 = &selRef_systemGray2Color;
  if (v58 == 1)
  {
    v15 = &selRef_systemBlueColor;
  }

  v16 = [v14 *v15];
  v17 = sub_19BC14();
  sub_19B4A4();
  v18 = v89;
  v19 = DWORD2(v89);
  v20 = HIDWORD(v89);
  v21 = v90;
  v22 = v91;
  v23 = sub_19BE94();
  v25 = v24;
  sub_19BE94();
  sub_19B504();
  v50[0] = v86;
  v50[1] = v87;
  *&v51 = v88;
  *(&v51 + 1) = v32;
  LOWORD(v52) = 256;
  *(&v52 + 1) = v29;
  *v53 = v28;
  *&v53[8] = v83;
  *&v53[40] = v85;
  *&v53[24] = v84;
  *&v53[56] = 0x3FF0000000000000;
  v33 = v86;
  v34 = v87;
  v37 = *&v53[32];
  v38 = *&v53[48];
  v35 = *v53;
  v36 = *&v53[16];
  v54[0] = v89;
  v54[1] = v90;
  *&v55 = v91;
  *(&v55 + 1) = v17;
  LOWORD(v56) = 256;
  *(&v56 + 1) = v23;
  *v57 = v25;
  *&v57[40] = v49;
  *&v57[24] = v48;
  *&v57[8] = v47;
  *&v57[56] = 0x3FE6666666666666;
  v41 = v55;
  v42 = v56;
  v39 = v89;
  v40 = v90;
  v45 = *&v57[32];
  v46 = *&v57[48];
  v43 = *v57;
  v44 = *&v57[16];
  v26 = v52;
  a2[2] = v51;
  a2[3] = v26;
  *a2 = v33;
  a2[1] = v34;
  a2[6] = v37;
  a2[7] = v38;
  a2[4] = v35;
  a2[5] = v36;
  a2[10] = v41;
  a2[11] = v42;
  a2[8] = v39;
  a2[9] = v40;
  a2[14] = v45;
  a2[15] = v46;
  a2[12] = v43;
  a2[13] = v44;
  v58 = v18;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v62 = v22;
  v63 = v17;
  v64 = 256;
  v65 = v23;
  v66 = v25;
  v67 = v47;
  v68 = v48;
  v69 = v49;
  v70 = 0x3FE6666666666666;
  sub_160C70(v50, &v71, &qword_2B9A50);
  sub_160C70(v54, &v71, &qword_2B9A50);
  sub_160CD8(&v58, &qword_2B9A50);
  v71 = v9;
  v72 = __PAIR64__(v30, v31);
  v73 = v10;
  v74 = v11;
  v75 = v32;
  v76 = 256;
  v77 = v29;
  v78 = v28;
  v79 = v83;
  v80 = v84;
  v81 = v85;
  v82 = 0x3FF0000000000000;
  return sub_160CD8(&v71, &qword_2B9A50);
}

void sub_18AFDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v217 = a1;
  v186 = a2;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B88);
  __chkstk_darwin(v185);
  v206 = &v179 - v2;
  v3 = sub_19BD74();
  __chkstk_darwin(v3 - 8);
  v200 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99F0);
  __chkstk_darwin(v198);
  v199 = &v179 - v5;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B90);
  __chkstk_darwin(v197);
  v202 = &v179 - v6;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B98);
  __chkstk_darwin(v201);
  v203 = &v179 - v7;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9BA0);
  __chkstk_darwin(v204);
  v205 = &v179 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9BA8);
  v183 = *(v9 - 8);
  v184 = v9;
  v10 = __chkstk_darwin(v9);
  v182 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v181 = &v179 - v12;
  v216 = sub_19B484();
  v13 = *(v216 - 8);
  v14 = __chkstk_darwin(v216);
  v16 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v179 - v17;
  v19 = sub_19B634();
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A08);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v179 - v25;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A10) - 8;
  __chkstk_darwin(v208);
  v207 = &v179 - v27;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A18) - 8;
  __chkstk_darwin(v210);
  v209 = &v179 - v28;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9BB0) - 8;
  __chkstk_darwin(v213);
  v212 = &v179 - v29;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9BB8) - 8;
  v30 = __chkstk_darwin(v214);
  v180 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v211 = &v179 - v33;
  __chkstk_darwin(v32);
  v215 = &v179 - v34;
  v35 = *(v20 + 28);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = sub_19B744();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v40 = v22;
  v41 = &v22[v35];
  v196 = v36;
  v42 = v216;
  v194 = v39;
  v195 = v37;
  v193 = v38 + 104;
  (v39)(v41, v36);
  __asm { FMOV            V0.2D, #10.0 }

  *v40 = _Q0;
  sub_184B6C(v18);
  v48 = *(v13 + 104);
  v188 = enum case for ColorScheme.dark(_:);
  v189 = v13 + 104;
  v187 = v48;
  v48(v16);
  LOBYTE(v35) = sub_19B474();
  v49 = *(v13 + 8);
  v191 = v16;
  v49(v16, v42);
  v192 = v13 + 8;
  v190 = v49;
  v49(v18, v42);
  v50 = objc_opt_self();
  v51 = &selRef_systemGray5Color;
  if ((v35 & 1) == 0)
  {
    v51 = &selRef_systemGray6Color;
  }

  v52 = [v50 *v51];
  v53 = sub_19BC14();
  sub_18E208(v40, v26, &type metadata accessor for RoundedRectangle);
  *&v26[*(v24 + 60)] = v53;
  *&v26[*(v24 + 64)] = 256;
  sub_19BE94();
  sub_19B504();
  v54 = v207;
  sub_1609D0(v26, v207, &qword_2B9A08);
  v55 = (v54 + *(v208 + 44));
  v56 = v228;
  *v55 = v227;
  v55[1] = v56;
  v55[2] = v229;
  v57 = sub_19BE94();
  v59 = v58;
  sub_18C054(v217, v226);
  memcpy(v223, v226, sizeof(v223));
  memcpy(v224, v226, sizeof(v224));
  sub_160C70(v223, v225, &qword_2B9A20);
  sub_160CD8(v224, &qword_2B9A20);
  memcpy(v222, v223, sizeof(v222));
  v60 = sub_19BE94();
  v62 = v61;
  v225[0] = v57;
  v225[1] = v59;
  memcpy(&v225[2], v222, 0x178uLL);
  v225[49] = v60;
  v225[50] = v62;
  v63 = v209;
  sub_1609D0(v54, v209, &qword_2B9A10);
  memcpy((v63 + *(v210 + 44)), v225, 0x198uLL);
  v226[0] = v57;
  v226[1] = v59;
  memcpy(&v226[2], v222, 0x178uLL);
  v226[49] = v60;
  v226[50] = v62;
  sub_160C70(v225, &v221, &qword_2B9A28);
  sub_160CD8(v226, &qword_2B9A28);
  LOBYTE(v57) = sub_19B924();
  sub_19B464();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v212;
  sub_1609D0(v63, v212, &qword_2B9A18);
  v73 = v72 + *(v213 + 44);
  *v73 = v57;
  *(v73 + 8) = v65;
  *(v73 + 16) = v67;
  *(v73 + 24) = v69;
  *(v73 + 32) = v71;
  *(v73 + 40) = 0;
  LOBYTE(v57) = sub_19B944();
  sub_19B464();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v72;
  v83 = v211;
  sub_1609D0(v82, v211, &qword_2B9BB0);
  v84 = v215;
  v85 = v83 + *(v214 + 44);
  *v85 = v57;
  *(v85 + 8) = v75;
  *(v85 + 16) = v77;
  *(v85 + 24) = v79;
  *(v85 + 32) = v81;
  *(v85 + 40) = 0;
  sub_1609D0(v83, v84, &qword_2B9BB8);
  v86 = sub_19BFB4();
  v87 = sub_19BFB4();
  v88 = settingsLocString(v86, v87);

  if (v88)
  {
    v89 = sub_19BFE4();
    v91 = v90;

    *&v221 = v89;
    *(&v221 + 1) = v91;
    sub_16082C();
    v92 = sub_19B9D4();
    v94 = v93;
    v96 = v95;
    v214 = v97;
    v98 = v18;
    v99 = v217;
    sub_184B6C(v18);
    v100 = v191;
    v101 = v216;
    v187(v191, v188, v216);
    v102 = sub_19B474();
    v103 = v190;
    v190(v100, v101);
    v103(v98, v101);
    if ((v102 & 1) != 0 || (v221 = *(v99 + *(type metadata accessor for IntensitySelection() + 32)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918), sub_19BC94(), v222[0] == 2))
    {
      sub_19BBC4();
    }

    else
    {
      sub_19BBA4();
    }

    v104 = sub_19B9A4();
    v106 = v105;
    v108 = v107;

    sub_160E70(v92, v94, v96 & 1);

    sub_19B974();
    v216 = sub_19B9C4();
    v214 = v109;
    v111 = v110;
    v113 = v112;

    sub_160E70(v104, v106, v108 & 1);

    v114 = sub_19B924();
    sub_19B464();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = v111 & 1;
    v219 = v111 & 1;
    v218 = 0;
    v124 = sub_19B944();
    sub_19B464();
    v126 = v125;
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v220 = 0;
    v133 = v200;
    v194(v200, v196, v195);
    v221 = *(v217 + *(type metadata accessor for IntensitySelection() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
    sub_19BC94();
    if (v222[0] == 2)
    {
      v134 = [objc_opt_self() systemBlueColor];
      v135 = sub_19BC14();
    }

    else
    {
      *&v221 = sub_19BBB4();
      sub_18E1B4();
      v135 = sub_19BC24();
    }

    v136 = v135;
    v137 = v199;
    sub_18E208(v133, v199, &type metadata accessor for Capsule);
    v138 = v198;
    *(v137 + *(v198 + 52)) = v136;
    *(v137 + *(v138 + 56)) = 256;
    v139 = sub_19BE94();
    v141 = v140;
    v142 = v202;
    v143 = &v202[*(v197 + 36)];
    sub_1609D0(v137, v143, &qword_2B99F0);
    v144 = (v143 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9A38) + 36));
    *v144 = v139;
    v144[1] = v141;
    v145 = v214;
    *v142 = v216;
    *(v142 + 8) = v145;
    *(v142 + 16) = v123;
    *(v142 + 24) = v113;
    *(v142 + 32) = v114;
    *(v142 + 40) = v116;
    *(v142 + 48) = v118;
    *(v142 + 56) = v120;
    *(v142 + 64) = v122;
    *(v142 + 72) = 0;
    *(v142 + 80) = v124;
    *(v142 + 88) = v126;
    *(v142 + 96) = v128;
    *(v142 + 104) = v130;
    *(v142 + 112) = v132;
    *(v142 + 120) = 0;
    LOBYTE(v139) = sub_19B924();
    sub_19B464();
    v147 = v146;
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v154 = v203;
    sub_1609D0(v142, v203, &qword_2B9B90);
    v155 = v154 + *(v201 + 36);
    *v155 = v139;
    *(v155 + 8) = v147;
    *(v155 + 16) = v149;
    *(v155 + 24) = v151;
    *(v155 + 32) = v153;
    *(v155 + 40) = 0;
    LOBYTE(v139) = sub_19B944();
    sub_19B464();
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v164 = v205;
    sub_1609D0(v154, v205, &qword_2B9B98);
    v165 = v164 + *(v204 + 36);
    *v165 = v139;
    *(v165 + 8) = v157;
    *(v165 + 16) = v159;
    *(v165 + 24) = v161;
    *(v165 + 32) = v163;
    *(v165 + 40) = 0;
    v166 = enum case for DynamicTypeSize.accessibility3(_:);
    v167 = sub_19B5B4();
    v168 = v206;
    (*(*(v167 - 8) + 104))(v206, v166, v167);
    sub_18F2F0(&qword_2B9BC0, &type metadata accessor for DynamicTypeSize);
    if (sub_19BFA4())
    {
      sub_18E83C();
      sub_162D0C(&qword_2B9C08, &qword_2B9B88);
      v169 = v181;
      sub_19BA74();
      sub_160CD8(v168, &qword_2B9B88);
      sub_160CD8(v164, &qword_2B9BA0);
      v170 = v215;
      v171 = v180;
      sub_160C70(v215, v180, &qword_2B9BB8);
      v173 = v182;
      v172 = v183;
      v174 = *(v183 + 16);
      v175 = v184;
      v174(v182, v169, v184);
      v176 = v186;
      sub_160C70(v171, v186, &qword_2B9BB8);
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9C10);
      v174((v176 + *(v177 + 48)), v173, v175);
      v178 = *(v172 + 8);
      v178(v169, v175);
      sub_160CD8(v170, &qword_2B9BB8);
      v178(v173, v175);
      sub_160CD8(v171, &qword_2B9BB8);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_18C054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = (a1 + *(type metadata accessor for IntensitySelection() + 32));
  v3 = *v2;
  v4 = v2[1];
  v76 = *v2;
  v77 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
  sub_19BC94();
  v5 = objc_opt_self();
  if (v62 == 2)
  {
    v6 = &selRef_systemBlueColor;
  }

  else
  {
    v6 = &selRef_systemGray2Color;
  }

  v7 = [v5 *v6];
  v45 = sub_19BC14();
  sub_19B4A4();
  v8 = v110;
  v43 = HIDWORD(v110);
  v44 = DWORD2(v110);
  v9 = v111;
  v36 = v112;
  v41 = sub_19BE94();
  v42 = v10;
  sub_19BE94();
  sub_19B504();
  v76 = v3;
  v77 = v4;
  sub_19BC94();
  v11 = objc_opt_self();
  if (v62 == 2)
  {
    v12 = &selRef_systemBlueColor;
  }

  else
  {
    v12 = &selRef_systemGray2Color;
  }

  v13 = [v11 *v12];
  v40 = sub_19BC14();
  sub_19B4A4();
  v14 = v113;
  v34 = DWORD2(v113);
  v15 = v114;
  v35 = v115;
  v16 = sub_19BE94();
  v38 = v17;
  v39 = v16;
  sub_19BE94();
  sub_19B504();
  v76 = v3;
  v77 = v4;
  sub_19BC94();
  v18 = objc_opt_self();
  if (v62 == 2)
  {
    v19 = &selRef_systemBlueColor;
  }

  else
  {
    v19 = &selRef_systemGray2Color;
  }

  v20 = [v18 *v19];
  v21 = sub_19BC14();
  sub_19B4A4();
  v22 = v116;
  v23 = HIDWORD(v116);
  v24 = v117;
  v25 = v118;
  v26 = sub_19BE94();
  v32 = v27;
  v33 = v26;
  sub_19BE94();
  sub_19B504();
  v50[0] = v110;
  v50[1] = v111;
  *&v51 = v112;
  *(&v51 + 1) = v45;
  LOWORD(v52) = 256;
  *(&v52 + 2) = v108;
  WORD3(v52) = v109;
  *(&v52 + 1) = v41;
  *v53 = v42;
  *&v53[24] = v106;
  *&v53[8] = v105;
  *&v53[40] = v107;
  __src[2] = v51;
  __src[3] = v52;
  __src[0] = v110;
  __src[1] = v111;
  *&__src[7] = *(&v107 + 1);
  __src[5] = *&v53[16];
  __src[6] = *&v53[32];
  __src[4] = *v53;
  v54[0] = v113;
  v28 = HIDWORD(v113);
  v54[1] = v114;
  *&v55 = v115;
  *(&v55 + 1) = v40;
  LOWORD(v56) = 256;
  *(&v56 + 1) = v39;
  *v57 = v38;
  *&v57[24] = v103;
  *&v57[40] = v104;
  *&v57[8] = v102;
  *&v57[56] = 0x3FE6666666666666;
  *(&__src[10] + 8) = v56;
  *(&__src[9] + 8) = v55;
  *(&__src[8] + 8) = v114;
  *(&__src[7] + 8) = v113;
  *(&__src[14] + 8) = *&v57[48];
  *(&__src[13] + 8) = *&v57[32];
  *(&__src[12] + 8) = *&v57[16];
  *(&__src[11] + 8) = *v57;
  v58[0] = v116;
  v29 = DWORD2(v116);
  v58[1] = v117;
  v30 = *(&v117 + 1);
  *&v59 = v118;
  *(&v59 + 1) = v21;
  LOWORD(v60) = 256;
  *(&v60 + 1) = v33;
  *v61 = v32;
  *&v61[40] = v49;
  *&v61[24] = v48;
  *&v61[8] = v47;
  *&v61[56] = 0x3FD999999999999ALL;
  *(&__src[16] + 8) = v117;
  *(&__src[17] + 8) = v59;
  *(&__src[21] + 8) = *&v61[32];
  *(&__src[22] + 8) = *&v61[48];
  *(&__src[19] + 8) = *v61;
  *(&__src[20] + 8) = *&v61[16];
  *(&__src[18] + 8) = v60;
  *(&__src[15] + 8) = v116;
  memcpy(a2, __src, 0x178uLL);
  v62 = v22;
  v63 = v29;
  v64 = v23;
  v65 = v24;
  v66 = v30;
  v67 = v25;
  v68 = v21;
  v69 = 256;
  v70 = v33;
  v71 = v32;
  v72 = v47;
  v73 = v48;
  v74 = v49;
  v75 = 0x3FD999999999999ALL;
  sub_160C70(v50, &v76, &qword_2B9A48);
  sub_160C70(v54, &v76, &qword_2B9A50);
  sub_160C70(v58, &v76, &qword_2B9A50);
  sub_160CD8(&v62, &qword_2B9A50);
  v76 = v14;
  v77 = __PAIR64__(v28, v34);
  v78 = v15;
  v79 = v35;
  v80 = v40;
  v81 = 256;
  v82 = v39;
  v83 = v38;
  v84 = v102;
  v85 = v103;
  v86 = v104;
  v87 = 0x3FE6666666666666;
  sub_160CD8(&v76, &qword_2B9A50);
  v88 = v8;
  v89 = v44;
  v90 = v43;
  v91 = v9;
  v92 = v36;
  v93 = v45;
  v94 = 256;
  v95 = v108;
  v96 = v109;
  v97 = v41;
  v98 = v42;
  v101 = v107;
  v100 = v106;
  v99 = v105;
  return sub_160CD8(&v88, &qword_2B9A48);
}

uint64_t sub_18C68C(uint64_t a1, double a2)
{
  v4 = type metadata accessor for IntensitySelection();
  (*(a1 + *(v4 + 28)))(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
  return sub_19BCA4();
}

uint64_t sub_18C724@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for IntensitySelection();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v28 = v5;
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9908);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9910);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  sub_18CA58(v1, v10);
  v15 = *(v1 + *(v3 + 40));
  v29 = v1;
  v32 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
  sub_19BC94();
  v16 = v31;
  sub_18DC0C(v1, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_18E208(v6, v18 + v17, type metadata accessor for IntensitySelection);
  v19 = &v10[*(v8 + 44)];
  *v19 = v16;
  *(v19 + 1) = sub_18DC74;
  *(v19 + 2) = v18;
  sub_19BE94();
  sub_19B674();
  sub_1609D0(v10, v14, &qword_2B9908);
  v20 = &v14[*(v12 + 44)];
  v21 = v37;
  *(v20 + 4) = v36;
  *(v20 + 5) = v21;
  *(v20 + 6) = v38;
  v22 = v33;
  *v20 = v32;
  *(v20 + 1) = v22;
  v23 = v35;
  *(v20 + 2) = v34;
  *(v20 + 3) = v23;
  sub_18DC0C(v29, v6);
  v24 = swift_allocObject();
  sub_18E208(v6, v24 + v17, type metadata accessor for IntensitySelection);
  v25 = v30;
  sub_1609D0(v14, v30, &qword_2B9910);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9920);
  v27 = (v25 + *(result + 36));
  *v27 = sub_18DCE4;
  v27[1] = v24;
  v27[2] = 0;
  v27[3] = 0;
  return result;
}

uint64_t sub_18CA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9928);
  __chkstk_darwin(v47);
  v4 = &v45 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9930);
  __chkstk_darwin(v45);
  v6 = &v45 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9938);
  __chkstk_darwin(v46);
  v8 = &v45 - v7;
  v9 = sub_19B5B4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  sub_18EB7C(&qword_2B8988, &type metadata accessor for DynamicTypeSize, &v45 - v14);
  (*(v10 + 104))(v13, enum case for DynamicTypeSize.accessibility1(_:), v9);
  sub_18F2F0(&qword_2B9940, &type metadata accessor for DynamicTypeSize);
  v16 = sub_19BF94();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v16)
  {
    *v8 = sub_19B784();
    *(v8 + 1) = 0x4034000000000000;
    v8[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9990);
    sub_18CEF8(&v8[*(v18 + 44)]);
    v19 = sub_19B924();
    sub_19B464();
    v20 = &v8[*(v46 + 36)];
    *v20 = v19;
    *(v20 + 1) = v21;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20[40] = 0;
    v25 = &qword_2B9938;
    sub_160C70(v8, v6, &qword_2B9938);
    swift_storeEnumTagMultiPayload();
    sub_18DE8C();
    sub_18DF44();
    sub_19B7A4();
    v26 = v8;
  }

  else
  {
    *v4 = sub_19B734();
    *(v4 + 1) = 0x4024000000000000;
    v4[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9948);
    sub_18D2E0(a1, &v4[*(v27 + 44)]);
    v28 = sub_19B924();
    sub_19B464();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9950) + 36)];
    *v37 = v28;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    v38 = sub_19B944();
    sub_19B464();
    v39 = &v4[*(v47 + 36)];
    *v39 = v38;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    v25 = &qword_2B9928;
    sub_160C70(v4, v6, &qword_2B9928);
    swift_storeEnumTagMultiPayload();
    sub_18DE8C();
    sub_18DF44();
    sub_19B7A4();
    v26 = v4;
  }

  return sub_160CD8(v26, v25);
}

uint64_t sub_18CEF8@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9998);
  v43 = *(v45 - 8);
  v1 = __chkstk_darwin(v45);
  v44 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v32 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99A0);
  v37 = *(v41 - 8);
  v5 = v37;
  v6 = __chkstk_darwin(v41);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99A8);
  v40 = *(v11 - 8);
  v12 = v40;
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v39 = &v32 - v16;
  sub_185578(&v32 - v16);
  v36 = v10;
  sub_18662C(v10);
  v34 = v4;
  sub_18784C(v4);
  v18 = *(v12 + 16);
  v38 = v15;
  v35 = v11;
  v18(v15, v17, v11);
  v32 = *(v5 + 16);
  v19 = v41;
  v32(v8, v10, v41);
  v20 = v44;
  v21 = *(v43 + 16);
  v21(v44, v4, v45);
  v22 = v42;
  v18(v42, v15, v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B99B0);
  v24 = v33;
  v32(&v22[*(v23 + 48)], v33, v19);
  v25 = v45;
  v21(&v22[*(v23 + 64)], v20, v45);
  v26 = *(v43 + 8);
  v26(v34, v25);
  v27 = *(v37 + 8);
  v28 = v19;
  v27(v36, v19);
  v29 = *(v40 + 8);
  v30 = v35;
  v29(v39, v35);
  v26(v44, v25);
  v27(v24, v28);
  return (v29)(v38, v30);
}

uint64_t sub_18D2E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B00);
  __chkstk_darwin(v60);
  v58 = (v54 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B08);
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = __chkstk_darwin(v4);
  v61 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = v54 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B10);
  __chkstk_darwin(v59);
  v9 = v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B18);
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  v12 = __chkstk_darwin(v10);
  v68 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = v54 - v14;
  v15 = type metadata accessor for IntensitySelection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B20);
  __chkstk_darwin(v57);
  v20 = v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B28);
  v22 = *(v21 - 8);
  v66 = v21;
  v67 = v22;
  v23 = __chkstk_darwin(v21);
  v65 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v64 = v54 - v25;
  *v20 = sub_19B774();
  *(v20 + 1) = 0x4000000000000000;
  v20[16] = 0;
  v26 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B30) + 44)];
  v56 = a1;
  sub_1887D0(a1, v26);
  sub_18DC0C(a1, v18);
  v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v54[1] = v17;
  v28 = swift_allocObject();
  v55 = type metadata accessor for IntensitySelection;
  sub_18E208(v18, v28 + v27, type metadata accessor for IntensitySelection);
  sub_162D0C(&qword_2B9B38, &qword_2B9B20);
  sub_19BA54();

  sub_160CD8(v20, &qword_2B9B20);
  *v9 = sub_19B774();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B40);
  v30 = v56;
  sub_1899F0(v56, &v9[*(v29 + 44)]);
  v9[*(v59 + 36)] = 0;
  sub_18DC0C(v30, v18);
  v31 = swift_allocObject();
  v32 = v55;
  sub_18E208(v18, v31 + v27, v55);
  sub_18E4AC();
  v33 = v63;
  sub_19BA54();

  sub_160CD8(v9, &qword_2B9B10);
  v34 = sub_19B774();
  v35 = v58;
  *v58 = v34;
  *(v35 + 8) = 0x4000000000000000;
  *(v35 + 16) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B60);
  sub_18AFDC(v30, v35 + *(v36 + 44));
  *(v35 + *(v60 + 36)) = 0;
  sub_18DC0C(v30, v18);
  v37 = swift_allocObject();
  sub_18E208(v18, v37 + v27, v32);
  sub_18E758();
  v38 = v69;
  sub_19BA54();

  sub_160CD8(v35, &qword_2B9B00);
  v39 = v66;
  v40 = *(v67 + 16);
  v41 = v65;
  v40(v65, v64, v66);
  v60 = *(v71 + 16);
  v42 = v68;
  (v60)(v68, v33, v70);
  v43 = *(v72 + 16);
  v44 = v61;
  v43(v61, v38, v73);
  v45 = v62;
  v40(v62, v41, v39);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9B80);
  v47 = v70;
  (v60)(&v45[*(v46 + 48)], v42, v70);
  v48 = v73;
  v43(&v45[*(v46 + 64)], v44, v73);
  v49 = *(v72 + 8);
  v49(v69, v48);
  v50 = *(v71 + 8);
  v50(v63, v47);
  v51 = v66;
  v52 = *(v67 + 8);
  v52(v64, v66);
  v49(v44, v48);
  v50(v68, v47);
  return (v52)(v65, v51);
}

uint64_t sub_18DAB8(unint64_t a1, uint64_t a2)
{
  if (a1 <= 2)
  {
    v3 = dbl_1DD530[a1];
    v4 = type metadata accessor for IntensitySelection();
    (*(a2 + *(v4 + 28)))(v3);
  }

  type metadata accessor for IntensitySelection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
  return sub_19BCA4();
}

uint64_t sub_18DB64(uint64_t a1)
{
  v2 = type metadata accessor for IntensitySelection();
  (*(a1 + *(v2 + 24)))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9918);
  return sub_19BCA4();
}

uint64_t sub_18DC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntensitySelection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18DC74(unint64_t a1)
{
  v3 = *(type metadata accessor for IntensitySelection() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_18DAB8(a1, v4);
}

uint64_t sub_18DCE4()
{
  v1 = *(type metadata accessor for IntensitySelection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_18DB64(v2);
}

uint64_t sub_18DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_18DE8C()
{
  result = qword_2B9958;
  if (!qword_2B9958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9938);
    sub_162D0C(&qword_2B9960, &qword_2B9968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9958);
  }

  return result;
}

unint64_t sub_18DF44()
{
  result = qword_2B9970;
  if (!qword_2B9970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9928);
    sub_18DFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9970);
  }

  return result;
}