BOOL sub_1001A4D78(void *a1, void *a2, char a3)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_10000CA14(a1, v6);
  if (a3)
  {
    v44 = *(v7 + 48);
    v46 = v44(v6, v7);
    v8 = a2[3];
    v9 = a2[4];
    sub_10000CA14(a2, v8);
    v42 = *(v9 + 48);
    if (v46 == v42(v8, v9))
    {
      v10 = a1[3];
      v11 = a1[4];
      sub_10000CA14(a1, v10);
      v12 = (*(v11 + 24))(v10, v11);
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      v15 = a2[3];
      v16 = a2[4];
      sub_10000CA14(a2, v15);
      v17 = (*(v16 + 24))(v15, v16);
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17;
      }

      return v19 < v14;
    }

    else
    {
      v28 = v44(v6, v7);
      return v28 < v42(v8, v9);
    }
  }

  v45 = *(v7 + 24);
  v41 = v45(v6, v7);
  v47 = v21;
  v23 = a2[3];
  v22 = a2[4];
  sub_10000CA14(a2, v23);
  v43 = v22;
  v24 = v22;
  v25 = *(v22 + 24);
  v26 = v25(v23, v24);
  if (v47)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v29 = a1[3];
    v30 = a1[4];
    sub_10000CA14(a1, v29);
    v31 = (*(v30 + 48))(v29, v30);
    v32 = a2[3];
    v33 = a2[4];
    sub_10000CA14(a2, v32);
    return v31 < (*(v33 + 48))(v32, v33);
  }

  if ((v27 & 1) == 0 && v41 == v26)
  {
    goto LABEL_16;
  }

LABEL_17:
  v34 = v45(v6, v7);
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  v37 = v25(v23, v43);
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  return v39 < v36;
}

uint64_t sub_1001A5038()
{
  v1 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1001A973C(v0 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_entryListType, type metadata accessor for EntryListType);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_1001A512C(void **a1, char a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100205048(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  result = sub_1001A51A0(v7, a2 & 1);
  *a1 = v4;
  return result;
}

Swift::Int sub_1001A51A0(unint64_t *a1, char a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F24EC(&unk_100AD68B0);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 2) = v4 / 2;
      }

      v9[0] = v7 + 4;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1001A5630(v9, v10, a1, v6, a2 & 1);
      v8[2] = 0.0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1001A52B4(0, v4, 1, a1, a2 & 1);
  }

  return result;
}

uint64_t sub_1001A52B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a3 != a2)
  {
    v57 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v50 = v5;
    v51 = a3;
    v49 = v6;
    v7 = v6;
    while (1)
    {
      v66 = v7;
      sub_100086C04(v5, &v63);
      v59 = (v5 - 40);
      sub_100086C04(v5 - 40, v60);
      v9 = v64;
      v8 = v65;
      sub_10000CA14(&v63, v64);
      if (a5)
      {
        v55 = *(v8 + 48);
        v10 = v55(v9, v8);
        v11 = v61;
        v12 = v62;
        v13 = (v62 + 48);
        sub_10000CA14(v60, v61);
        v53 = *v13;
        if (v10 != (*v13)(v11, v12))
        {
          v32 = v55(v9, v8);
          v33 = v53(v11, v12);
LABEL_22:
          v24 = v32 < v33;
          goto LABEL_30;
        }

        v14 = v64;
        v15 = v65;
        sub_10000CA14(&v63, v64);
        v16 = (*(v15 + 24))(v14, v15);
        if (v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = v16;
        }

        v19 = v61;
        v20 = v62;
        sub_10000CA14(v60, v61);
        v21 = (*(v20 + 24))(v19, v20);
        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v21;
        }

        v24 = v23 < v18;
      }

      else
      {
        v56 = *(v8 + 24);
        v52 = v56(v9, v8);
        v26 = v25;
        v28 = v61;
        v27 = v62;
        v29 = (v62 + 24);
        sub_10000CA14(v60, v61);
        v54 = *v29;
        v30 = (*v29)(v28, v27);
        if (v26)
        {
          if (v31)
          {
            goto LABEL_21;
          }
        }

        else if ((v31 & 1) == 0 && v52 == v30)
        {
LABEL_21:
          v34 = v64;
          v35 = v65;
          sub_10000CA14(&v63, v64);
          v32 = (*(v35 + 48))(v34, v35);
          v36 = v61;
          v37 = v62;
          sub_10000CA14(v60, v61);
          v33 = (*(v37 + 48))(v36, v37);
          goto LABEL_22;
        }

        v38 = v56(v9, v8);
        if (v39)
        {
          v40 = 0;
        }

        else
        {
          v40 = v38;
        }

        v41 = v54(v28, v27);
        if (v42)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        v24 = v43 < v40;
      }

LABEL_30:
      v44 = v24;
      sub_10000BA7C(v60);
      result = sub_10000BA7C(&v63);
      v45 = v66;
      if ((v44 & 1) == 0)
      {
LABEL_4:
        a3 = v51 + 1;
        v5 = v50 + 40;
        v6 = v49 - 1;
        if (v51 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v57)
      {
        __break(1u);
        return result;
      }

      sub_100018480(v5, &v63);
      v46 = *(v5 - 24);
      *v5 = *v59;
      *(v5 + 16) = v46;
      *(v5 + 32) = *(v5 - 8);
      result = sub_100018480(&v63, v59);
      v5 -= 40;
      v47 = __CFADD__(v45, 1);
      v7 = v45 + 1;
      if (v47)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1001A5630(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4, char a5)
{
  v7 = v6;
  v144 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_137:
    v11 = v7;
    v7 = *v144;
    if (!*v144)
    {
      goto LABEL_178;
    }

    v5 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v5;
    }

    else
    {
LABEL_172:
      result = sub_100204C44(v5);
    }

    v176 = result;
    v137 = *(result + 16);
    if (v137 >= 2)
    {
      v5 = 40;
      while (*a3)
      {
        v138 = *(result + 16 * v137);
        v139 = result;
        v140 = *(result + 16 * (v137 - 1) + 40);
        sub_1001A61FC((*a3 + 40 * v138), (*a3 + 40 * *(result + 16 * (v137 - 1) + 32)), *a3 + 40 * v140, v7, a5 & 1);
        if (v11)
        {
        }

        if (v140 < v138)
        {
          goto LABEL_165;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_100204C44(v139);
        }

        if (v137 - 2 >= *(v139 + 2))
        {
          goto LABEL_166;
        }

        v141 = &v139[16 * v137];
        *v141 = v138;
        *(v141 + 1) = v140;
        v176 = v139;
        sub_100204BB8(v137 - 1);
        result = v176;
        v137 = *(v176 + 16);
        if (v137 <= 1)
        {
        }
      }

      goto LABEL_176;
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v146 = v10;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
      goto LABEL_43;
    }

    v5 = *a3;
    sub_100086C04(*a3 + 40 * (v9 + 1), &v173);
    sub_100086C04(v5 + 40 * v9, v170);
    v166 = sub_1001A4D78(&v173, v170, a5 & 1);
    if (v7)
    {
      sub_10000BA7C(v170);
      sub_10000BA7C(&v173);
    }

    sub_10000BA7C(v170);
    result = sub_10000BA7C(&v173);
    v12 = v9 + 2;
    v143 = v9;
    v151 = v8;
    v153 = 40 * v9;
    v13 = v5 + 40 * v9 + 80;
    while (v8 != v12)
    {
      v168 = v12;
      sub_100086C04(v13, &v173);
      sub_100086C04(v13 - 40, v170);
      v17 = v174;
      v16 = v175;
      sub_10000CA14(&v173, v174);
      if (a5)
      {
        v162 = *(v16 + 48);
        v18 = v162(v17, v16);
        v19 = v171;
        v20 = v172;
        v21 = (v172 + 48);
        sub_10000CA14(v170, v171);
        v158 = *v21;
        if (v18 == (*v21)(v19, v20))
        {
          v22 = v174;
          v23 = v175;
          sub_10000CA14(&v173, v174);
          v24 = (*(v23 + 24))(v22, v23);
          if (v25)
          {
            v26 = 0;
          }

          else
          {
            v26 = v24;
          }

          v27 = v171;
          v28 = v172;
          sub_10000CA14(v170, v171);
          v29 = (*(v28 + 24))(v27, v28);
LABEL_29:
          if (v30)
          {
            v45 = 0;
          }

          else
          {
            v45 = v29;
          }

          v15 = v45 < v26;
          goto LABEL_8;
        }

        v14 = v162(v17, v16);
        v15 = v14 < v158(v19, v20);
      }

      else
      {
        v163 = *(v16 + 24);
        v155 = v163(v17, v16);
        v32 = v31;
        v34 = v171;
        v33 = v172;
        v35 = (v172 + 24);
        sub_10000CA14(v170, v171);
        v159 = *v35;
        v36 = (*v35)(v34, v33);
        if (v32)
        {
          if ((v37 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if ((v37 & 1) != 0 || v155 != v36)
        {
LABEL_25:
          v43 = v163(v17, v16);
          if (v44)
          {
            v26 = 0;
          }

          else
          {
            v26 = v43;
          }

          v29 = v159(v34, v33);
          goto LABEL_29;
        }

        v38 = v174;
        v39 = v175;
        sub_10000CA14(&v173, v174);
        v40 = (*(v39 + 48))(v38, v39);
        v41 = v171;
        v42 = v172;
        sub_10000CA14(v170, v171);
        v15 = v40 < (*(v42 + 48))(v41, v42);
      }

LABEL_8:
      v5 = v15;
      v7 = 0;
      v8 = v151;
      sub_10000BA7C(v170);
      result = sub_10000BA7C(&v173);
      ++v12;
      v13 += 40;
      if ((v166 ^ v5))
      {
        v8 = v168;
        break;
      }
    }

    v11 = v143;
    v46 = v153;
    if (!v166)
    {
      goto LABEL_43;
    }

    if (v8 < v143)
    {
      goto LABEL_171;
    }

    if (v143 < v8)
    {
      v47 = 40 * v8 - 40;
      v48 = v8;
      v49 = v143;
      do
      {
        if (v49 != --v48)
        {
          v50 = *a3;
          if (!*a3)
          {
            goto LABEL_175;
          }

          v5 = v50 + v46;
          v51 = v50 + v47;
          sub_100018480((v50 + v46), &v173);
          v52 = *(v51 + 32);
          v53 = *(v51 + 16);
          *v5 = *v51;
          *(v5 + 16) = v53;
          *(v5 + 32) = v52;
          result = sub_100018480(&v173, v51);
        }

        ++v49;
        v47 -= 40;
        v46 += 40;
      }

      while (v49 < v48);
    }

LABEL_43:
    v54 = a3[1];
    if (v8 >= v54)
    {
      goto LABEL_51;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_168;
    }

    if (v8 - v11 >= a4)
    {
LABEL_51:
      v9 = v8;
      if (v8 < v11)
      {
        goto LABEL_167;
      }

      goto LABEL_52;
    }

    if (__OFADD__(v11, a4))
    {
      goto LABEL_169;
    }

    if (&v11[a4] < v54)
    {
      v54 = &v11[a4];
    }

    if (v54 < v11)
    {
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    if (v8 == v54)
    {
      goto LABEL_51;
    }

    v145 = v54;
    v149 = v7;
    v164 = *a3;
    v101 = *a3 + 40 * v8;
    v102 = &v11[-v8];
LABEL_103:
    v152 = v8;
    v147 = v102;
    v148 = v101;
    v5 = v102;
    v103 = v101;
LABEL_104:
    v169 = v5;
    sub_100086C04(v103, &v173);
    v167 = (v103 - 40);
    sub_100086C04(v103 - 40, v170);
    v104 = v174;
    v105 = v175;
    sub_10000CA14(&v173, v174);
    if ((a5 & 1) == 0)
    {
      v161 = *(v105 + 24);
      v154 = v161(v104, v105);
      v120 = v119;
      v121 = v171;
      v122 = v172;
      v123 = (v172 + 24);
      sub_10000CA14(v170, v171);
      v157 = *v123;
      v124 = (*v123)(v121, v122);
      if (v120)
      {
        if ((v125 & 1) == 0)
        {
LABEL_117:
          v133 = v161(v104, v105);
          if (v134)
          {
            v114 = 0;
          }

          else
          {
            v114 = v133;
          }

          v117 = v157(v121, v122);
LABEL_121:
          if (v118)
          {
            v135 = 0;
          }

          else
          {
            v135 = v117;
          }

          v127 = v135 < v114;
          goto LABEL_125;
        }
      }

      else if ((v125 & 1) != 0 || v154 != v124)
      {
        goto LABEL_117;
      }

      v128 = v174;
      v129 = v175;
      sub_10000CA14(&v173, v174);
      v130 = (*(v129 + 48))(v128, v129);
      v131 = v171;
      v132 = v172;
      sub_10000CA14(v170, v171);
      v127 = v130 < (*(v132 + 48))(v131, v132);
      goto LABEL_125;
    }

    v160 = *(v105 + 48);
    v106 = v160(v104, v105);
    v107 = v171;
    v108 = v172;
    v109 = (v172 + 48);
    sub_10000CA14(v170, v171);
    v156 = *v109;
    if (v106 == (*v109)(v107, v108))
    {
      v110 = v174;
      v111 = v175;
      sub_10000CA14(&v173, v174);
      v112 = (*(v111 + 24))(v110, v111);
      if (v113)
      {
        v114 = 0;
      }

      else
      {
        v114 = v112;
      }

      v115 = v171;
      v116 = v172;
      sub_10000CA14(v170, v171);
      v117 = (*(v116 + 24))(v115, v116);
      goto LABEL_121;
    }

    v126 = v160(v104, v105);
    v127 = v126 < v156(v107, v108);
LABEL_125:
    v5 = v127;
    sub_10000BA7C(v170);
    result = sub_10000BA7C(&v173);
    if (v5)
    {
      break;
    }

LABEL_102:
    v8 = v152 + 1;
    v101 = v148 + 40;
    v102 = v147 - 1;
    if (v152 + 1 != v145)
    {
      goto LABEL_103;
    }

    v7 = v149;
    v9 = v145;
    if (v145 < v11)
    {
      goto LABEL_167;
    }

LABEL_52:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v10 = v146;
    }

    else
    {
      result = sub_1003E4B80(0, *(v146 + 2) + 1, 1, v146);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v55 = *(v10 + 3);
    v56 = v5 + 1;
    if (v5 >= v55 >> 1)
    {
      result = sub_1003E4B80((v55 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v56;
    v57 = &v10[2 * v5];
    *(v57 + 4) = v11;
    *(v57 + 5) = v9;
    v58 = *v144;
    if (!*v144)
    {
      goto LABEL_177;
    }

    if (v5)
    {
      while (2)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          v64 = &v10[2 * v56 + 4];
          v65 = *(v64 - 64);
          v66 = *(v64 - 56);
          v70 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          if (v70)
          {
            goto LABEL_154;
          }

          v69 = *(v64 - 48);
          v68 = *(v64 - 40);
          v70 = __OFSUB__(v68, v69);
          v62 = v68 - v69;
          v63 = v70;
          if (v70)
          {
            goto LABEL_155;
          }

          v71 = &v10[2 * v56];
          v73 = *v71;
          v72 = *(v71 + 1);
          v70 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v70)
          {
            goto LABEL_157;
          }

          v70 = __OFADD__(v62, v74);
          v75 = v62 + v74;
          if (v70)
          {
            goto LABEL_160;
          }

          if (v75 >= v67)
          {
            v93 = &v10[2 * v59 + 4];
            v95 = *v93;
            v94 = *(v93 + 1);
            v70 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v70)
            {
              goto LABEL_164;
            }

            if (v62 < v96)
            {
              v59 = v56 - 2;
            }
          }

          else
          {
LABEL_71:
            if (v63)
            {
              goto LABEL_156;
            }

            v76 = &v10[2 * v56];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_159;
            }

            v82 = &v10[2 * v59 + 4];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_163;
            }

            if (v80 + v85 < v62)
            {
              goto LABEL_85;
            }

            if (v62 < v85)
            {
              v59 = v56 - 2;
            }
          }
        }

        else
        {
          if (v56 == 3)
          {
            v60 = *(v10 + 4);
            v61 = *(v10 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
            goto LABEL_71;
          }

          v86 = &v10[2 * v56];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_85:
          if (v81)
          {
            goto LABEL_158;
          }

          v89 = &v10[2 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_161;
          }

          if (v92 < v80)
          {
            break;
          }
        }

        v5 = v59 - 1;
        if (v59 - 1 >= v56)
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
          goto LABEL_170;
        }

        if (!*a3)
        {
          goto LABEL_174;
        }

        v97 = v10;
        v98 = v10[2 * v5 + 4];
        v99 = v10[2 * v59 + 5];
        sub_1001A61FC((*a3 + 40 * *&v98), (*a3 + 40 * *&v10[2 * v59 + 4]), *a3 + 40 * *&v99, v58, a5 & 1);
        if (v7)
        {
        }

        if (*&v99 < *&v98)
        {
          goto LABEL_152;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100204C44(v97);
        }

        if (v5 >= *(v97 + 2))
        {
          goto LABEL_153;
        }

        v100 = &v97[16 * v5];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v176 = v97;
        result = sub_100204BB8(v59);
        v10 = v176;
        v56 = *(v176 + 16);
        if (v56 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_137;
    }
  }

  if (v164)
  {
    sub_100018480(v103, &v173);
    v136 = *(v103 - 24);
    *v103 = *v167;
    *(v103 + 16) = v136;
    *(v103 + 32) = *(v103 - 8);
    sub_100018480(&v173, v167);
    v103 -= 40;
    v5 = v169 + 1;
    if (v169 == -1)
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

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
  return result;
}

uint64_t sub_1001A61FC(char *__src, char *a2, unint64_t a3, char *a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v8 = a2;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 >= v12)
  {
    if (a4 != a2 || &a2[40 * v12] <= a4)
    {
      memmove(a4, a2, 40 * v12);
      v8 = a2;
    }

    v114 = &v5[40 * v12];
    if (v11 < 40 || v8 <= __src)
    {
      goto LABEL_86;
    }

    v116 = __src;
    v55 = v8;
    v128 = v5;
LABEL_48:
    __dsta = v55;
    v56 = (v55 - 40);
    v57 = (v114 - 40);
    v58 = v6 - 40;
    v113 = v55 - 40;
    while (1)
    {
      v121 = v58;
      sub_100086C04(v57, v125);
      sub_100086C04(v56, v122);
      v60 = v126;
      v61 = v127;
      sub_10000CA14(v125, v126);
      if (a5)
      {
        v109 = *(v61 + 48);
        v62 = v109(v60, v61);
        v63 = v123;
        v64 = v124;
        v65 = (v124 + 48);
        sub_10000CA14(v122, v123);
        v105 = *v65;
        if (v62 != (*v65)(v63, v64))
        {
          v84 = v109(v60, v61);
          v85 = v105(v63, v64);
LABEL_67:
          v76 = v84 < v85;
          goto LABEL_75;
        }

        v66 = v126;
        v67 = v127;
        sub_10000CA14(v125, v126);
        v68 = (*(v67 + 24))(v66, v67);
        if (v69)
        {
          v70 = 0;
        }

        else
        {
          v70 = v68;
        }

        v71 = v123;
        v72 = v124;
        sub_10000CA14(v122, v123);
        v73 = (*(v72 + 24))(v71, v72);
        if (v74)
        {
          v75 = 0;
        }

        else
        {
          v75 = v73;
        }

        v76 = v75 < v70;
      }

      else
      {
        v110 = *(v61 + 24);
        v103 = v110(v60, v61);
        v78 = v77;
        v80 = v123;
        v79 = v124;
        v81 = (v124 + 24);
        sub_10000CA14(v122, v123);
        v106 = *v81;
        v82 = (*v81)(v80, v79);
        if (v78)
        {
          if (v83)
          {
            goto LABEL_66;
          }
        }

        else if ((v83 & 1) == 0 && v103 == v82)
        {
LABEL_66:
          v86 = v126;
          v87 = v127;
          sub_10000CA14(v125, v126);
          v84 = (*(v87 + 48))(v86, v87);
          v88 = v123;
          v89 = v124;
          sub_10000CA14(v122, v123);
          v85 = (*(v89 + 48))(v88, v89);
          goto LABEL_67;
        }

        v90 = v110(v60, v61);
        if (v91)
        {
          v92 = 0;
        }

        else
        {
          v92 = v90;
        }

        v93 = v106(v80, v79);
        if (v94)
        {
          v95 = 0;
        }

        else
        {
          v95 = v93;
        }

        v76 = v95 < v92;
      }

LABEL_75:
      v96 = v76;
      v5 = v128;
      v6 = v121;
      sub_10000BA7C(v122);
      sub_10000BA7C(v125);
      if (v96)
      {
        v8 = v113;
        if ((v121 + 40) != __dsta)
        {
          v99 = *v113;
          v100 = *(v113 + 1);
          *(v121 + 32) = *(v113 + 4);
          *v121 = v99;
          *(v121 + 16) = v100;
        }

        v114 = (v57 + 40);
        if (v57 + 40 <= v5 || (v55 = v113, v113 <= v116))
        {
          v114 = (v57 + 40);
          goto LABEL_86;
        }

        goto LABEL_48;
      }

      if (v121 + 40 != v57 + 40)
      {
        v97 = *v57;
        v98 = *(v57 + 16);
        *(v121 + 32) = *(v57 + 32);
        *v121 = v97;
        *(v121 + 16) = v98;
      }

      v59 = v57 - 40;
      v58 = v121 - 40;
      v29 = v57 > v5;
      v57 -= 40;
      v56 = v113;
      if (!v29)
      {
        v114 = (v59 + 40);
        v8 = __dsta;
        goto LABEL_86;
      }
    }
  }

  if (a4 != __src || &__src[40 * v10] <= a4)
  {
    memmove(a4, __src, 40 * v10);
    v8 = a2;
  }

  v114 = &v5[40 * v10];
  if (v9 >= 40 && v8 < v6)
  {
    v120 = v6;
    do
    {
      v115 = __src;
      __dst = v8;
      sub_100086C04(v8, v125);
      v128 = v5;
      sub_100086C04(v5, v122);
      v15 = v126;
      v14 = v127;
      sub_10000CA14(v125, v126);
      if (a5)
      {
        v111 = *(v14 + 48);
        v16 = v111(v15, v14);
        v18 = v123;
        v17 = v124;
        sub_10000CA14(v122, v123);
        v107 = *(v17 + 48);
        if (v16 == v107(v18, v17))
        {
          v19 = v126;
          v20 = v127;
          sub_10000CA14(v125, v126);
          v21 = (*(v20 + 24))(v19, v20);
          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = v21;
          }

          v24 = v123;
          v25 = v124;
          sub_10000CA14(v122, v123);
          v26 = (*(v25 + 24))(v24, v25);
          if (v27)
          {
            v28 = 0;
          }

          else
          {
            v28 = v26;
          }

          v29 = v28 < v23;
        }

        else
        {
          v37 = v111(v15, v14);
          v29 = v37 < v107(v18, v17);
        }
      }

      else
      {
        v112 = *(v14 + 24);
        v104 = v112(v15, v14);
        v31 = v30;
        v32 = v123;
        v33 = v124;
        v34 = (v124 + 24);
        sub_10000CA14(v122, v123);
        v108 = *v34;
        v35 = (*v34)(v32, v33);
        if (v31)
        {
          if (v36)
          {
            goto LABEL_23;
          }
        }

        else if ((v36 & 1) == 0 && v104 == v35)
        {
LABEL_23:
          v38 = v126;
          v39 = v127;
          sub_10000CA14(v125, v126);
          v40 = (*(v39 + 48))(v38, v39);
          v41 = v123;
          v42 = v124;
          sub_10000CA14(v122, v123);
          v29 = v40 < (*(v42 + 48))(v41, v42);
          goto LABEL_31;
        }

        v43 = v112(v15, v14);
        if (v44)
        {
          v45 = 0;
        }

        else
        {
          v45 = v43;
        }

        v46 = v108(v32, v33);
        if (v47)
        {
          v48 = 0;
        }

        else
        {
          v48 = v46;
        }

        v29 = v48 < v45;
      }

LABEL_31:
      v49 = v29;
      v5 = v128;
      sub_10000BA7C(v122);
      sub_10000BA7C(v125);
      v8 = __dst;
      if ((v49 & 1) == 0)
      {
        v50 = v5;
        v51 = v115 == v5;
        v5 += 40;
        if (v51)
        {
          goto LABEL_39;
        }

LABEL_38:
        v52 = *v50;
        v53 = *(v50 + 1);
        *(v115 + 4) = *(v50 + 4);
        *v115 = v52;
        *(v115 + 1) = v53;
        goto LABEL_39;
      }

      v50 = __dst;
      v8 = __dst + 40;
      if (v115 != __dst)
      {
        goto LABEL_38;
      }

LABEL_39:
      __src = v115 + 40;
    }

    while (v5 < v114 && v8 < v120);
  }

  v8 = __src;
LABEL_86:
  v101 = (v114 - v5) / 40;
  if (v8 != v5 || v8 >= &v5[40 * v101])
  {
    memmove(v8, v5, 40 * v101);
  }

  return 1;
}

uint64_t sub_1001A69E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10001A770(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100018480(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1001A6A80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *&v76 = a2;
  *(&v76 + 1) = a3;
  v65 = type metadata accessor for CustomPlaceSearchSuggestionItem(0);
  __chkstk_darwin(v65);
  v64 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD6890);
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = __chkstk_darwin(v9);
  v67 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v64 - v12;
  v13 = sub_1000F24EC(&qword_100AD6880);
  __chkstk_darwin(v13 - 8);
  v72 = &v64 - v14;
  v15 = type metadata accessor for CharacterSet();
  v74 = *(v15 - 8);
  v75 = v15;
  __chkstk_darwin(v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CustomActivityTypeSearchSuggestionItem(0);
  __chkstk_darwin(v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v71 = *(v21 - 1);
  v22 = __chkstk_darwin(v21);
  v66 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v64 - v24;
  v73 = type metadata accessor for CustomTokenSearchSuggestionItem(0);
  v84[3] = v73;
  v84[4] = &off_100A717B0;
  v26 = sub_10001A770(v84);
  sub_1001A9218(a1, v26, type metadata accessor for CustomTokenSearchSuggestionItem);
  if (a4)
  {
    sub_100086C04(v84, v85);
    sub_1000F24EC(&unk_100AD68B0);
    if (swift_dynamicCast())
    {
      v27 = type metadata accessor for CustomJournalSearchSuggestionItem;
      v28 = v25;
    }

    else
    {
      sub_100086C04(v84, v85);
      if (swift_dynamicCast())
      {
        v27 = type metadata accessor for CustomActivityTypeSearchSuggestionItem;
        v28 = v20;
      }

      else
      {
        sub_100086C04(v84, v85);
        v42 = v64;
        if (!swift_dynamicCast())
        {
          LOBYTE(v32) = 1;
          goto LABEL_22;
        }

        v27 = type metadata accessor for CustomPlaceSearchSuggestionItem;
        v28 = v42;
      }
    }

    sub_1001A973C(v28, v27);
    v85[0] = v76;
    static CharacterSet.whitespaces.getter();
    sub_1000777B4();
    StringProtocol.trimmingCharacters(in:)();
    (*(v74 + 8))(v17, v75);
    v32 = String.count.getter();

    if (v32 || (v43 = (v26 + *(v73 + 24)), (v43[1] & 1) == 0) && *v43 > 1)
    {
      sub_100086C04(v84, &v83);
      v44 = v72;
      if (swift_dynamicCast())
      {
        (*(v71 + 56))(v44, 0, 1, v21);
        v45 = v66;
        sub_100018228(v44, v66, type metadata accessor for CustomJournalSearchSuggestionItem);
        v46 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
        swift_beginAccess();
        v47 = *(a5 + v46);

        v48 = UUID.uuidString.getter();
        *&v76 = v49;
        *(&v76 + 1) = v48;
        v50 = (v45 + v21[6]);
        v52 = *v50;
        v51 = v50[1];
        *&v85[0] = 0xD000000000000021;
        *(&v85[0] + 1) = 0x80000001008E39F0;
        type metadata accessor for UUID();
        sub_10004B8B8(&qword_100AE19B0, &type metadata accessor for UUID);

        v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v53);

        v54._countAndFlagsBits = 39;
        v54._object = 0xE100000000000000;
        String.append(_:)(v54);
        v55 = (v45 + v21[8]);
        v56 = *v55;
        v32 = v55[1];
        v57 = *(v45 + v21[7]);
        v58 = (v45 + v21[9]);
        v60 = *v58;
        v59 = v58[1];
        *&v77 = *(&v76 + 1);
        *(&v77 + 1) = v76;
        *&v78 = v52;
        *(&v78 + 1) = v51;
        v79 = v85[0];
        *&v80 = v56;
        *(&v80 + 1) = v32;
        *&v81 = v57;
        *(&v81 + 1) = v60;
        v82 = v59;
        v85[0] = v77;
        v85[1] = v78;
        v86 = v59;
        v85[3] = v80;
        v85[4] = v81;
        v85[2] = v79;

        v61 = v57;
        LOBYTE(v32) = sub_10004067C(v85, v47);

        sub_1001A911C(&v77);
        sub_1001A973C(v45, type metadata accessor for CustomJournalSearchSuggestionItem);
        LOBYTE(v32) = v32 ^ 1;
      }

      else
      {
        LOBYTE(v32) = 1;
        (*(v71 + 56))(v44, 1, 1, v21);
        sub_100004F84(v44, &qword_100AD6880);
      }
    }
  }

  else
  {
    sub_100518E34(v85);
    v29 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
    swift_beginAccess();
    v30 = *(a5 + v29);

    v31 = sub_10004067C(v85, v30);

    if (v31 & 1) != 0 || (v33 = v76, v83 = v76, static CharacterSet.whitespaces.getter(), sub_1000777B4(), StringProtocol.trimmingCharacters(in:)(), (*(v74 + 8))(v17, v75), v34 = String.count.getter(), , !v34) && ((v62 = (v26 + *(v73 + 24)), (v62[1]) || *v62 < 2))
    {
      sub_1001A911C(v85);
      LOBYTE(v32) = 0;
    }

    else
    {
      v35 = sub_10043A324();
      v37 = v36;
      __chkstk_darwin(v35);
      *(&v64 - 1) = v33;
      sub_1001A9064();
      v38 = v67;
      v39 = v70;
      Regex.init<A>(_:)();
      v40 = v68;
      Regex.ignoresCase(_:)();
      v41 = *(v69 + 8);
      v41(v38, v39);
      *&v83 = v35;
      *(&v83 + 1) = v37;
      sub_1001A90C8();
      LOBYTE(v32) = BidirectionalCollection<>.contains<A>(_:)();
      sub_1001A911C(v85);
      v41(v40, v39);
    }
  }

LABEL_22:
  sub_10000BA7C(v84);
  return v32 & 1;
}

uint64_t sub_1001A73A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(&v89 + 1) = a3;
  v90 = a5;
  *&v89 = a2;
  v80 = type metadata accessor for CustomPlaceSearchSuggestionItem(0);
  __chkstk_darwin(v80);
  v79 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD6890);
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = __chkstk_darwin(v8);
  v82 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v78 - v11;
  v12 = sub_1000F24EC(&qword_100AD6880);
  __chkstk_darwin(v12 - 8);
  v14 = &v78 - v13;
  v15 = type metadata accessor for CharacterSet();
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CustomActivityTypeSearchSuggestionItem(0);
  __chkstk_darwin(v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v86 = *(v21 - 1);
  v22 = __chkstk_darwin(v21);
  v81 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v78 - v25;
  v99[3] = v24;
  v99[4] = &off_100A717E8;
  v27 = sub_10001A770(v99);
  sub_1001A9218(a1, v27, type metadata accessor for CustomJournalSearchSuggestionItem);
  if (a4)
  {
    sub_100086C04(v99, &v100);
    sub_1000F24EC(&unk_100AD68B0);
    if (swift_dynamicCast())
    {
      v28 = type metadata accessor for CustomJournalSearchSuggestionItem;
      v29 = v26;
    }

    else
    {
      sub_100086C04(v99, &v100);
      if (swift_dynamicCast())
      {
        v28 = type metadata accessor for CustomActivityTypeSearchSuggestionItem;
        v29 = v20;
      }

      else
      {
        sub_100086C04(v99, &v100);
        v56 = v79;
        if (!swift_dynamicCast())
        {
          LOBYTE(v48) = 1;
          goto LABEL_22;
        }

        v28 = type metadata accessor for CustomPlaceSearchSuggestionItem;
        v29 = v56;
      }
    }

    sub_1001A973C(v29, v28);
    v100 = v89;
    static CharacterSet.whitespaces.getter();
    sub_1000777B4();
    StringProtocol.trimmingCharacters(in:)();
    (*(v87 + 8))(v17, v88);
    v48 = String.count.getter();

    v57 = v90;
    if (v48 || (v58 = (v27 + v21[10]), (v58[1] & 1) == 0) && *v58 > 1)
    {
      sub_100086C04(v99, &v92);
      if (swift_dynamicCast())
      {
        (*(v86 + 56))(v14, 0, 1, v21);
        v59 = v81;
        sub_100018228(v14, v81, type metadata accessor for CustomJournalSearchSuggestionItem);
        v60 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
        swift_beginAccess();
        v61 = *(v57 + v60);

        v62 = UUID.uuidString.getter();
        *(&v89 + 1) = v63;
        v90 = v62;
        v64 = (v59 + v21[6]);
        v66 = *v64;
        v65 = v64[1];
        *&v100 = 0xD000000000000021;
        *(&v100 + 1) = 0x80000001008E39F0;
        type metadata accessor for UUID();
        sub_10004B8B8(&qword_100AE19B0, &type metadata accessor for UUID);

        v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v67);

        v68._countAndFlagsBits = 39;
        v68._object = 0xE100000000000000;
        String.append(_:)(v68);
        v69 = (v59 + v21[8]);
        v70 = *v69;
        v48 = v69[1];
        v71 = *(v59 + v21[7]);
        v72 = (v59 + v21[9]);
        v74 = *v72;
        v73 = v72[1];
        *&v93 = v90;
        *(&v93 + 1) = *(&v89 + 1);
        *&v94 = v66;
        *(&v94 + 1) = v65;
        v95 = v100;
        *&v96 = v70;
        *(&v96 + 1) = v48;
        *&v97 = v71;
        *(&v97 + 1) = v74;
        v98 = v73;
        v100 = v93;
        v101 = v94;
        v105 = v73;
        v103 = v96;
        v104 = v97;
        v102 = v95;

        v75 = v71;
        LOBYTE(v48) = sub_10004067C(&v100, v61);

        sub_1001A911C(&v93);
        sub_1001A973C(v59, type metadata accessor for CustomJournalSearchSuggestionItem);
        LOBYTE(v48) = v48 ^ 1;
      }

      else
      {
        LOBYTE(v48) = 1;
        (*(v86 + 56))(v14, 1, 1, v21);
        sub_100004F84(v14, &qword_100AD6880);
      }
    }
  }

  else
  {
    v86 = UUID.uuidString.getter();
    v81 = v30;
    v31 = (v27 + v21[6]);
    v32 = *v31;
    v33 = v31[1];
    *&v100 = 0xD000000000000021;
    *(&v100 + 1) = 0x80000001008E39F0;
    type metadata accessor for UUID();
    sub_10004B8B8(&qword_100AE19B0, &type metadata accessor for UUID);

    v34 = v32;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 39;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = (v27 + v21[8]);
    v38 = *v37;
    v39 = v37[1];
    v40 = *(v27 + v21[7]);
    v41 = (v27 + v21[9]);
    v42 = *v41;
    v43 = v41[1];
    *&v93 = v86;
    *(&v93 + 1) = v81;
    *&v94 = v32;
    v86 = v33;
    *(&v94 + 1) = v33;
    v95 = v100;
    *&v96 = v38;
    *(&v96 + 1) = v39;
    *&v97 = v40;
    *(&v97 + 1) = v42;
    v98 = v43;
    v100 = v93;
    v101 = v94;
    v105 = v43;
    v103 = v96;
    v104 = v97;
    v102 = v95;
    v44 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
    v45 = v90;
    swift_beginAccess();
    v46 = *(v45 + v44);

    v47 = v40;
    LOBYTE(v39) = sub_10004067C(&v100, v46);

    if (v39 & 1) != 0 || (v49 = v89, v91 = v89, static CharacterSet.whitespaces.getter(), sub_1000777B4(), StringProtocol.trimmingCharacters(in:)(), (*(v87 + 8))(v17, v88), v50 = String.count.getter(), v51 = , !v50) && ((v76 = (v27 + v21[10]), (v76[1]) || *v76 < 2))
    {
      sub_1001A911C(&v93);
      LOBYTE(v48) = 0;
    }

    else
    {
      __chkstk_darwin(v51);
      *(&v78 - 1) = v49;
      sub_1001A9064();
      v52 = v82;
      v53 = v85;
      Regex.init<A>(_:)();
      v54 = v83;
      Regex.ignoresCase(_:)();
      v55 = *(v84 + 8);
      v55(v52, v53);
      *&v91 = v34;
      *(&v91 + 1) = v86;
      sub_1001A90C8();
      LOBYTE(v48) = BidirectionalCollection<>.contains<A>(_:)();
      sub_1001A911C(&v93);
      v55(v54, v53);
    }
  }

LABEL_22:
  sub_10000BA7C(v99);
  return v48 & 1;
}

uint64_t sub_1001A7D90(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v83 = a2;
  v84 = a5;
  v82 = a3;
  v7 = type metadata accessor for CustomPlaceSearchSuggestionItem(0);
  __chkstk_darwin(v7);
  v72 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD6890);
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = __chkstk_darwin(v9);
  v74 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v71 - v12;
  v13 = sub_1000F24EC(&qword_100AD6880);
  __chkstk_darwin(v13 - 8);
  v79 = &v71 - v14;
  v15 = type metadata accessor for CharacterSet();
  v80 = *(v15 - 8);
  v81 = v15;
  __chkstk_darwin(v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CustomActivityTypeSearchSuggestionItem(0);
  __chkstk_darwin(v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v78 = *(v21 - 1);
  v22 = __chkstk_darwin(v21);
  v73 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v71 - v24;
  v94[3] = v7;
  v94[4] = &off_100A71820;
  v26 = sub_10001A770(v94);
  sub_1001A9218(a1, v26, type metadata accessor for CustomPlaceSearchSuggestionItem);
  if (a4)
  {
    v77 = v26;
    v27 = v84;
    sub_100086C04(v94, &v95);
    sub_1000F24EC(&unk_100AD68B0);
    if (swift_dynamicCast())
    {
      v28 = type metadata accessor for CustomJournalSearchSuggestionItem;
      v29 = v25;
    }

    else
    {
      sub_100086C04(v94, &v95);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_100086C04(v94, &v95);
        v67 = v72;
        v68 = swift_dynamicCast();
        v39 = v83;
        if (!v68)
        {
          LOBYTE(v38) = 1;
          goto LABEL_23;
        }

        sub_1001A973C(v67, type metadata accessor for CustomPlaceSearchSuggestionItem);
        goto LABEL_9;
      }

      v28 = type metadata accessor for CustomActivityTypeSearchSuggestionItem;
      v29 = v20;
    }

    sub_1001A973C(v29, v28);
    v39 = v83;
LABEL_9:
    *&v95 = v39;
    *(&v95 + 1) = v82;
    static CharacterSet.whitespaces.getter();
    sub_1000777B4();
    StringProtocol.trimmingCharacters(in:)();
    (*(v80 + 8))(v17, v81);
    v38 = String.count.getter();

    if (v38 || (v40 = v77 + *(v7 + 24), (*(v40 + 8) & 1) == 0) && *v40 > 1)
    {
      sub_100086C04(v94, &v87);
      v41 = v79;
      if (swift_dynamicCast())
      {
        (*(v78 + 56))(v41, 0, 1, v21);
        v42 = v73;
        sub_100018228(v41, v73, type metadata accessor for CustomJournalSearchSuggestionItem);
        v43 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
        swift_beginAccess();
        v44 = *(v27 + v43);

        v45 = UUID.uuidString.getter();
        v83 = v46;
        v84 = v45;
        v47 = (v42 + v21[6]);
        v49 = *v47;
        v48 = v47[1];
        *&v95 = 0xD000000000000021;
        *(&v95 + 1) = 0x80000001008E39F0;
        type metadata accessor for UUID();
        sub_10004B8B8(&qword_100AE19B0, &type metadata accessor for UUID);

        v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v50);

        v51._countAndFlagsBits = 39;
        v51._object = 0xE100000000000000;
        String.append(_:)(v51);
        v52 = (v42 + v21[8]);
        v53 = *v52;
        v38 = v52[1];
        v54 = *(v42 + v21[7]);
        v55 = (v42 + v21[9]);
        v57 = *v55;
        v56 = v55[1];
        *&v88 = v84;
        *(&v88 + 1) = v83;
        *&v89 = v49;
        *(&v89 + 1) = v48;
        v90 = v95;
        *&v91 = v53;
        *(&v91 + 1) = v38;
        *&v92 = v54;
        *(&v92 + 1) = v57;
        v93 = v56;
        v95 = v88;
        v96 = v89;
        v100 = v56;
        v98 = v91;
        v99 = v92;
        v97 = v90;

        v58 = v54;
        LOBYTE(v38) = sub_10004067C(&v95, v44);

        sub_1001A911C(&v88);
        sub_1001A973C(v42, type metadata accessor for CustomJournalSearchSuggestionItem);
        LOBYTE(v38) = v38 ^ 1;
      }

      else
      {
        LOBYTE(v38) = 1;
        (*(v78 + 56))(v41, 1, 1, v21);
        sub_100004F84(v41, &qword_100AD6880);
      }
    }

    goto LABEL_23;
  }

  v30 = (v26 + *(v7 + 20));
  v31 = *v30;
  v32 = v30[1];
  *&v95 = 0xD000000000000022;
  *(&v95 + 1) = 0x80000001008E3A20;
  swift_bridgeObjectRetain_n();
  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 39;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  *&v88 = v31;
  *(&v88 + 1) = v32;
  *&v89 = v31;
  *(&v89 + 1) = v32;
  v90 = v95;
  *&v91 = 0xD000000000000017;
  *(&v91 + 1) = 0x80000001008E3A50;
  v92 = 0uLL;
  v93 = 0;
  v100 = 0;
  v95 = v88;
  v96 = v89;
  v98 = v91;
  v99 = 0u;
  v97 = v90;
  v35 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
  v36 = v84;
  swift_beginAccess();
  v37 = *(v36 + v35);

  LOBYTE(v36) = sub_10004067C(&v95, v37);

  if (v36 & 1) != 0 || (v59 = v82, v60 = v83, v85 = v83, v86 = v82, static CharacterSet.whitespaces.getter(), sub_1000777B4(), StringProtocol.trimmingCharacters(in:)(), (*(v80 + 8))(v17, v81), v61 = String.count.getter(), v62 = , !v61) && ((v69 = (v26 + *(v7 + 24)), (v69[1]) || *v69 < 2))
  {
    sub_1001A911C(&v88);
    LOBYTE(v38) = 0;
  }

  else
  {
    __chkstk_darwin(v62);
    *(&v71 - 2) = v60;
    *(&v71 - 1) = v59;
    sub_1001A9064();
    v63 = v74;
    v64 = v77;
    Regex.init<A>(_:)();
    v65 = v75;
    Regex.ignoresCase(_:)();
    v66 = *(v76 + 8);
    v66(v63, v64);
    v85 = v31;
    v86 = v32;
    sub_1001A90C8();
    LOBYTE(v38) = BidirectionalCollection<>.contains<A>(_:)();
    sub_1001A911C(&v88);
    v66(v65, v64);
  }

LABEL_23:
  sub_10000BA7C(v94);
  return v38 & 1;
}

uint64_t sub_1001A870C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(&v78 + 1) = a3;
  v79 = a5;
  *&v78 = a2;
  v69 = type metadata accessor for CustomPlaceSearchSuggestionItem(0);
  __chkstk_darwin(v69);
  v68 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD6890);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = __chkstk_darwin(v8);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v67 - v11;
  v12 = sub_1000F24EC(&qword_100AD6880);
  __chkstk_darwin(v12 - 8);
  v14 = &v67 - v13;
  v15 = type metadata accessor for CharacterSet();
  v76 = *(v15 - 8);
  v77 = v15;
  __chkstk_darwin(v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CustomActivityTypeSearchSuggestionItem(0);
  __chkstk_darwin(v18);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v75 = *(v21 - 1);
  v22 = __chkstk_darwin(v21);
  v70 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v67 - v24;
  v88[3] = v18;
  v88[4] = &off_100A71858;
  v26 = sub_10001A770(v88);
  sub_1001A9218(a1, v26, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
  if (a4)
  {
    v74 = v26;
    v27 = v79;
    sub_100086C04(v88, &v89);
    sub_1000F24EC(&unk_100AD68B0);
    if (swift_dynamicCast())
    {
      v28 = type metadata accessor for CustomJournalSearchSuggestionItem;
      v29 = v25;
    }

    else
    {
      sub_100086C04(v88, &v89);
      if (swift_dynamicCast())
      {
        v39 = type metadata accessor for CustomActivityTypeSearchSuggestionItem;
      }

      else
      {
        sub_100086C04(v88, &v89);
        v20 = v68;
        if (!swift_dynamicCast())
        {
          LOBYTE(v38) = 1;
          goto LABEL_23;
        }

        v39 = type metadata accessor for CustomPlaceSearchSuggestionItem;
      }

      v28 = v39;
      v29 = v20;
    }

    sub_1001A973C(v29, v28);
    v89 = v78;
    static CharacterSet.whitespaces.getter();
    sub_1000777B4();
    StringProtocol.trimmingCharacters(in:)();
    (*(v76 + 8))(v17, v77);
    v38 = String.count.getter();

    if (v38 || (v47 = v74 + *(v18 + 24), (*(v47 + 8) & 1) == 0) && *v47 > 1)
    {
      sub_100086C04(v88, &v81);
      if (swift_dynamicCast())
      {
        (*(v75 + 56))(v14, 0, 1, v21);
        v48 = v70;
        sub_100018228(v14, v70, type metadata accessor for CustomJournalSearchSuggestionItem);
        v49 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
        swift_beginAccess();
        v50 = *(v27 + v49);

        v51 = UUID.uuidString.getter();
        *(&v78 + 1) = v52;
        v79 = v51;
        v53 = (v48 + v21[6]);
        v55 = *v53;
        v54 = v53[1];
        *&v89 = 0xD000000000000021;
        *(&v89 + 1) = 0x80000001008E39F0;
        type metadata accessor for UUID();
        sub_10004B8B8(&qword_100AE19B0, &type metadata accessor for UUID);

        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v56);

        v57._countAndFlagsBits = 39;
        v57._object = 0xE100000000000000;
        String.append(_:)(v57);
        v58 = (v48 + v21[8]);
        v59 = *v58;
        v38 = v58[1];
        v60 = *(v48 + v21[7]);
        v61 = (v48 + v21[9]);
        v63 = *v61;
        v62 = v61[1];
        *&v82 = v79;
        *(&v82 + 1) = *(&v78 + 1);
        *&v83 = v55;
        *(&v83 + 1) = v54;
        v84 = v89;
        *&v85 = v59;
        *(&v85 + 1) = v38;
        *&v86 = v60;
        *(&v86 + 1) = v63;
        v87 = v62;
        v89 = v82;
        v90 = v83;
        v94 = v62;
        v92 = v85;
        v93 = v86;
        v91 = v84;

        v64 = v60;
        LOBYTE(v38) = sub_10004067C(&v89, v50);

        sub_1001A911C(&v82);
        sub_1001A973C(v48, type metadata accessor for CustomJournalSearchSuggestionItem);
        LOBYTE(v38) = v38 ^ 1;
      }

      else
      {
        LOBYTE(v38) = 1;
        (*(v75 + 56))(v14, 1, 1, v21);
        sub_100004F84(v14, &qword_100AD6880);
      }
    }
  }

  else
  {
    v30 = (v26 + *(v18 + 20));
    v31 = *v30;
    v32 = v30[1];
    *&v89 = 0xD000000000000026;
    *(&v89 + 1) = 0x80000001008E39C0;
    swift_bridgeObjectRetain_n();
    v33._countAndFlagsBits = v31;
    v33._object = v32;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 39;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    *&v82 = v31;
    *(&v82 + 1) = v32;
    *&v83 = v31;
    *(&v83 + 1) = v32;
    v84 = v89;
    v85 = xmmword_1009453B0;
    v86 = 0uLL;
    v87 = 0;
    v94 = 0;
    v89 = v82;
    v90 = v83;
    v92 = xmmword_1009453B0;
    v93 = 0u;
    v91 = v84;
    v35 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
    v36 = v79;
    swift_beginAccess();
    v37 = *(v36 + v35);

    LOBYTE(v36) = sub_10004067C(&v89, v37);

    if (v36 & 1) != 0 || (v40 = v78, v80 = v78, static CharacterSet.whitespaces.getter(), sub_1000777B4(), StringProtocol.trimmingCharacters(in:)(), (*(v76 + 8))(v17, v77), v41 = String.count.getter(), v42 = , !v41) && ((v65 = (v26 + *(v18 + 24)), (v65[1]) || *v65 < 2))
    {
      sub_1001A911C(&v82);
      LOBYTE(v38) = 0;
    }

    else
    {
      __chkstk_darwin(v42);
      *(&v67 - 1) = v40;
      sub_1001A9064();
      v43 = v71;
      v44 = v74;
      Regex.init<A>(_:)();
      v45 = v72;
      Regex.ignoresCase(_:)();
      v46 = *(v73 + 8);
      v46(v43, v44);
      *&v80 = v31;
      *(&v80 + 1) = v32;
      sub_1001A90C8();
      LOBYTE(v38) = BidirectionalCollection<>.contains<A>(_:)();
      sub_1001A911C(&v82);
      v46(v45, v44);
    }
  }

LABEL_23:
  sub_10000BA7C(v88);
  return v38 & 1;
}

unint64_t sub_1001A9064()
{
  result = qword_100AD68A0;
  if (!qword_100AD68A0)
  {
    sub_1000F2A18(&unk_100AD6890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD68A0);
  }

  return result;
}

unint64_t sub_1001A90C8()
{
  result = qword_100AE5B90;
  if (!qword_100AE5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5B90);
  }

  return result;
}

unint64_t sub_1001A91CC()
{
  result = qword_100AD68D8;
  if (!qword_100AD68D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD68D8);
  }

  return result;
}

uint64_t sub_1001A9218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A9280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10019F5DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1001A9340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10019F8C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001A9408(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001A9450(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {
    if (a3)
    {
    }

    v4 = *(result + 16);
    v5 = result;

    if (v4)
    {
      v6 = v5 + 32;
      v7 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_100086C04(v6, &v26);
        v8 = v27;
        v9 = v28;
        sub_10000CA14(&v26, v27);
        v10 = (*(v9 + 24))(v8, v9);
        if (v11)
        {
          if (a2 > 0)
          {
            goto LABEL_12;
          }
        }

        else if (v10 < a2)
        {
LABEL_12:
          sub_100018480(&v26, v23);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100199C14(0, *(v7 + 2) + 1, 1);
            v7 = v29;
          }

          v14 = *(v7 + 2);
          v13 = *(v7 + 3);
          if (v14 >= v13 >> 1)
          {
            sub_100199C14((v13 > 1), v14 + 1, 1);
          }

          v15 = v24;
          v16 = v25;
          v17 = sub_100186174(v23, v24);
          v18 = __chkstk_darwin(v17);
          v20 = &v23[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          (*(v21 + 16))(v20, v18);
          sub_1001A69E8(v14, v20, &v29, v15, v16);
          sub_10000BA7C(v23);
          v7 = v29;
          goto LABEL_7;
        }

        sub_10000BA7C(&v26);
LABEL_7:
        v6 += 40;
        if (!--v4)
        {
          goto LABEL_18;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
LABEL_18:

    return v7;
  }

  return result;
}

double *sub_1001A9670(double *a1, double *a2, char a3)
{
  if (a2)
  {
    v10 = a2;

    sub_1001A512C(&v10, a3 & 1);
    v5 = v10;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = sub_100604CF8(v5);

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = sub_100604ED0(v7);

  v10 = v6;
  sub_1006AD990(v8);
  return v10;
}

uint64_t sub_1001A973C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A979C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001A97F8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

id sub_1001A99B4()
{
  v1 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v1);
  v2 = sub_1000F24EC(&qword_100ADD520);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for JurassicNavigationController();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    Width = CGRectGetWidth(v17);
    [v7 safeAreaInsets];
    v10 = Width - v9;
    [v7 safeAreaInsets];
    *&v12 = v10 - v11;
    v13 = [v7 traitCollection];
    [v13 horizontalSizeClass];

    UserInterfaceSizeClass.init(_:)();
    v14 = sub_10002DDD4(v12, 0, v4);

    UIViewController.traitOverrides.getter();
    v15[15] = v14;
    sub_10002E2A0();
    dispatch thunk of UIMutableTraits.subscript.setter();
    return UIViewController.traitOverrides.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001A9E38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JurassicNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A9E90()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD6970);
  sub_10000617C(v0, qword_100AD6970);
  return Logger.init(subsystem:category:)();
}

void sub_1001A9F04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  swift_unknownObjectWeakAssign();
  if (*(a1 + 16))
  {
    v14 = OBJC_IVAR____TtC7Journal13ExportManager_currentExportTask;
    if (*&v5[OBJC_IVAR____TtC7Journal13ExportManager_currentExportTask])
    {
      if (qword_100ACFA40 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000617C(v15, qword_100AD6970);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "ExportManager.printEntries previous currentExportTask is not nil. This is unexpected.", v18, 2u);
      }

      if (*&v6[v14])
      {

        Task.cancel()();
      }

      *&v6[v14] = 0;
    }

    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    type metadata accessor for MainActor();

    v24 = v6;
    sub_100021E80(a4);
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = &protocol witness table for MainActor;
    *(v26 + 32) = a2;
    *(v26 + 40) = a1;
    *(v26 + 48) = v24;
    *(v26 + 56) = a4;
    *(v26 + 64) = a5;
    *&v6[v14] = sub_1003E9628(0, 0, v13, &unk_100945580, v26);
  }

  else
  {
    if (qword_100ACFA40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000617C(v19, qword_100AD6970);
    v28 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v28, v20, "ExportManager.printEntries requested entries array is empty.", v21, 2u);
    }

    v22 = v28;
  }
}

uint64_t sub_1001AA298(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 216) = a4;
  v9 = type metadata accessor for CancellationError();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 136) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 144) = v12;
  *(v8 + 152) = v11;

  return _swift_task_switch(sub_1001AA3F0, v12, v11);
}

uint64_t sub_1001AA3F0()
{
  v1 = *(v0 + 56);
  v2 = qword_100ACFE28;

  if (v2 != -1)
  {
    swift_once();
    v1 = *(v0 + 56);
  }

  v3 = *(v0 + 64);
  v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  v5 = *(v0 + 216);
  v6 = objc_allocWithZone(type metadata accessor for ExportOptions());
  v7 = sub_100696F58(v5, v1, v4, 0);
  *(v0 + 160) = v7;
  v8 = *(v3 + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions);
  *(v3 + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions) = v7;
  v9 = v7;

  static Task<>.checkCancellation()();
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_1001AA854;

  return sub_1001AB4E4(v9);
}

uint64_t sub_1001AA854(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_1001AB1AC;
  }

  else
  {
    v7 = sub_1001AA998;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1001AA998()
{
  v22 = v0;
  if (qword_100ACFA40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD6970);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_100008458(v6, v7, &v21);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Print content created: %s", v4, 0xCu);
    sub_10000BA7C(v5);
  }

  v9 = *(v0[8] + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
  v0[24] = v9;
  if (v9)
  {
    v9;
    v10 = swift_task_alloc();
    v0[25] = v10;
    *v10 = v0;
    v10[1] = sub_1001AAD1C;

    return UIViewController.dismissAsync(animated:)(1);
  }

  if (*(v0[20] + OBJC_IVAR____TtC7Journal13ExportOptions_format) - 2 < 2)
  {
    v11 = v0[22];

    sub_1001AC1DC(v11);
LABEL_17:

    v17 = v0[9];
    v18 = v0[20];
    if (v17)
    {
      v17(v16);
    }

    v19 = v0[1];

    return v19();
  }

  if (!*(v0[20] + OBJC_IVAR____TtC7Journal13ExportOptions_format) || (v12 = v0[22], !*(v12 + 16)))
  {

    goto LABEL_17;
  }

  (*(v0[15] + 16))(v0[16], v12 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)), v0[14]);

  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = sub_1001AAFD8;
  v14 = v0[20];
  v15 = v0[16];

  return sub_1001ABBA0(v15, v14);
}

uint64_t sub_1001AAD1C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1001AAE3C, v3, v2);
}

uint64_t sub_1001AAE3C()
{
  if (*(*(v0 + 160) + OBJC_IVAR____TtC7Journal13ExportOptions_format) - 2 < 2)
  {
    v1 = *(v0 + 176);

    sub_1001AC1DC(v1);
LABEL_9:

    v8 = *(v0 + 72);
    v9 = *(v0 + 160);
    if (v8)
    {
      v8(v7);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  if (!*(*(v0 + 160) + OBJC_IVAR____TtC7Journal13ExportOptions_format) || (v2 = *(v0 + 176), !*(v2 + 16)))
  {

    goto LABEL_9;
  }

  (*(*(v0 + 120) + 16))(*(v0 + 128), v2 + ((*(*(v0 + 120) + 80) + 32) & ~*(*(v0 + 120) + 80)), *(v0 + 112));

  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_1001AAFD8;
  v4 = *(v0 + 160);
  v5 = *(v0 + 128);

  return sub_1001ABBA0(v5, v4);
}

uint64_t sub_1001AAFD8()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1001AB0F8, v3, v2);
}

uint64_t sub_1001AB0F8()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  v4 = (*(v3 + 8))(v1, v2);
  v5 = v0[9];
  v6 = v0[20];
  if (v5)
  {
    v5(v4);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001AB1AC()
{

  v0[5] = v0[23];
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0);
  if (swift_dynamicCast())
  {

    if (qword_100ACFA40 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000617C(v1, qword_100AD6970);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "ExportManager.printEntries print was canceled", v4, 2u);
    }

    v5 = v0[20];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];

    sub_10072B094(1);
    (*(v7 + 8))(v6, v8);
  }

  else
  {

    if (qword_100ACFA40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AD6970);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "ExportManager.printEntries print failed: %@", v12, 0xCu);
      sub_10012B714(v13);
    }

    v15 = v0[20];

    sub_10072B094(1);
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    sub_1001AC368(v16, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001AB4E4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v4;
  v2[14] = v3;

  return _swift_task_switch(sub_1001AB57C, v4, v3);
}

uint64_t sub_1001AB57C()
{
  type metadata accessor for JurassicAlertController();
  v1 = [objc_opt_self() mainBundle];
  v24._object = 0x80000001008E3B30;
  v2._countAndFlagsBits = 0x6E69726170657250;
  v2._object = 0xAC000000A680E267;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v24);

  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v4 message:0 preferredStyle:1];
  v0[7].super_class = v5;

  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  receiver = v0[5].receiver;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = String._bridgeToObjectiveC()();
  v0[3].receiver = sub_1001ACBBC;
  v0[3].super_class = v7;
  v0[1].receiver = _NSConcreteStackBlock;
  v0[1].super_class = 1107296256;
  v0[2].receiver = sub_10016B4D8;
  v0[2].super_class = &unk_100A60020;
  v9 = _Block_copy(&v0[1]);

  v10 = [objc_opt_self() actionWithTitle:v8 style:1 handler:v9];
  _Block_release(v9);

  [(objc_class *)v5 addAction:v10];

  v11 = *&receiver[OBJC_IVAR____TtC7Journal13ExportOptions_progress];
  v12 = type metadata accessor for AlertProgressContentViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC7JournalP33_C0870F0871EA99EA9E6D05F47CB4490834AlertProgressContentViewController_progress] = v11;
  v0[4].receiver = v13;
  v0[4].super_class = v12;
  v14 = v11;
  v15 = objc_msgSendSuper2(v0 + 4, "initWithNibName:bundle:", 0, 0);
  [v15 preferredContentSize];
  [v15 setPreferredContentSize:?];
  [(objc_class *)v5 setContentViewController:v15];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }

  super_class = v0[5].super_class;
  v19 = *(super_class + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
  *(super_class + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController) = v5;
  v5;

  static Task<>.checkCancellation()();
  v20 = swift_task_alloc();
  v0[8].receiver = v20;
  *v20 = v0;
  v20[1] = sub_1001AB998;
  v21 = v0[5].receiver;

  return sub_100763810(v21);
}

uint64_t sub_1001AB998(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_1001ABB34;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_1001ABAC0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001ABAC0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_1001ABB34()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001ABBA0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v7;
  v3[15] = v6;

  return _swift_task_switch(sub_1001ABCF4, v7, v6);
}

uint64_t sub_1001ABCF4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v0[16] = [objc_allocWithZone(type metadata accessor for PrintableHTMLContentController()) init];
  v5 = *(v4 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath + 8);
  v0[2] = *(v4 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath);
  v0[3] = v5;
  (*(v2 + 104))(v1, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_1000777B4();

  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v1, v3);

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1001ABE88;
  v7 = v0[12];
  v8 = v0[4];

  return sub_1003C0474(v8, v7);
}

uint64_t sub_1001ABE88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 144) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);

  return _swift_task_switch(sub_1001AC014, v7, v6);
}

uint64_t sub_1001AC014()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[6];

  v4 = [objc_allocWithZone(UIPrintInteractionController) init];
  v5 = [objc_opt_self() printInfo];
  [v5 setOutputType:0];
  [v4 setDelegate:v3];
  [v4 setPrintInfo:v5];
  v6 = objc_allocWithZone(type metadata accessor for JournalPrintPageRenderer());
  v7 = v1;
  v8 = [v6 init];
  v9 = [v7 viewPrintFormatter];
  [v8 addPrintFormatter:v9 startingAtPageAtIndex:0];

  [v4 setPrintPageRenderer:v8];
  [v4 presentAnimated:1 completionHandler:0];

  v10 = v0[1];

  return v10();
}

void sub_1001AC1DC(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UIPrintInteractionController) init];
  v8 = [objc_opt_self() printInfo];
  [v8 setOutputType:0];
  [v4 setDelegate:v2];
  [v4 setPrintInfo:v8];
  if (*(a1 + 16) == 1)
  {
    v5 = *(type metadata accessor for URL() - 8);
    URL._bridgeToObjectiveC()(((*(v5 + 80) + 32) & ~*(v5 + 80)));
    [v4 setPrintingItem:v6];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1006057B8(a1);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setPrintingItems:isa];
  }

  [v4 presentAnimated:1 completionHandler:0];
}

uint64_t sub_1001AC368(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v13 = v17;
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  aBlock[4] = sub_1001ACBC4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A60070;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v18);
}

void sub_1001AC634()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7Journal13ExportManager_currentExportTask);
    v2 = Strong;

    if (v1)
    {
      Task.cancel()();
    }
  }
}

void sub_1001AC6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = swift_allocObject();
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v11 = swift_allocObject();
      v11[2] = a2;
      v11[3] = a3;
      v11[4] = v9;
      v13[4] = sub_1001ACBD0;
      v13[5] = v11;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100006C7C;
      v13[3] = &unk_100A600C0;
      v12 = _Block_copy(v13);

      [v8 dismissViewControllerAnimated:1 completion:v12];
      _Block_release(v12);
    }
  }
}

void sub_1001AC850(uint64_t a1, NSString a2)
{
  v3 = [objc_opt_self() mainBundle];
  v4._object = 0xEC00000064656C69;
  v13._object = 0xEC00000064656C69;
  v4._countAndFlagsBits = 0x616620746E697250;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0x616620746E697250;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v6 = String._bridgeToObjectiveC()();

  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for JurassicAlertController();
  v7 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v6 message:a2 preferredStyle:1];

  if (qword_100AD0428 != -1)
  {
    swift_once();
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() actionWithTitle:v8 style:0 handler:0];

  [v7 addAction:v9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      [v12 presentViewController:v7 animated:1 completion:0];
    }
  }
}

uint64_t sub_1001ACAE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032ECC;

  return sub_1001AA298(a1, v4, v5, v10, v6, v7, v8, v9);
}

id sub_1001ACBE4(void *a1, void *a2)
{
  v38 = a1;
  v5 = sub_1000F24EC(&qword_100AD6A10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CanvasDropIndicatorView();
  v39.receiver = v2;
  v39.super_class = v12;
  v13 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setUserInteractionEnabled:0];
  [a1 addSubview:v13];
  sub_1001AD0DC();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v35 = v11;
  UIHostingConfiguration.margins(_:_:)();
  v14 = *(v6 + 8);
  v36 = v6 + 8;
  v37 = v14;
  v14(v8, v5);
  v15 = UIHostingConfiguration.makeContentView()();
  [v13 addSubview:v15];
  v16 = v15;
  sub_100013178(0.0);

  v34 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100941D70;
  v18 = [v13 topAnchor];
  v19 = a2;
  v20 = [a2 safeAreaLayoutGuide];
  v21 = [v20 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v17 + 32) = v22;
  v23 = [v13 leadingAnchor];
  v24 = [v19 safeAreaLayoutGuide];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v17 + 40) = v26;
  v27 = [v13 trailingAnchor];

  v28 = [v19 safeAreaLayoutGuide];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v17 + 48) = v30;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];

  v37(v35, v5);
  return v13;
}

double sub_1001AD008@<D0>(_OWORD *a1@<X8>)
{
  result = 6.0;
  *a1 = xmmword_1009455A0;
  return result;
}

id sub_1001AD084()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasDropIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001AD0DC()
{
  result = qword_100AD6A18;
  if (!qword_100AD6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6A18);
  }

  return result;
}

unint64_t sub_1001AD130()
{
  result = qword_100AD8000;
  if (!qword_100AD8000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD8000);
  }

  return result;
}

uint64_t sub_1001AD1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v37 = 0;
  sub_1001AD3F0(&v22);
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v51 = v35;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v38 = v22;
  v39 = v23;
  v52[10] = v32;
  v52[11] = v33;
  v52[12] = v34;
  v52[13] = v35;
  v52[6] = v28;
  v52[7] = v29;
  v52[8] = v30;
  v52[9] = v31;
  v52[2] = v24;
  v52[3] = v25;
  v52[4] = v26;
  v52[5] = v27;
  v52[0] = v22;
  v52[1] = v23;
  sub_1000082B4(&v38, &v21, &qword_100AD6A20);
  sub_100004F84(v52, &qword_100AD6A20);
  *&v36[167] = v48;
  *&v36[183] = v49;
  *&v36[199] = v50;
  *&v36[215] = v51;
  *&v36[103] = v44;
  *&v36[119] = v45;
  *&v36[135] = v46;
  *&v36[151] = v47;
  *&v36[39] = v40;
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[7] = v38;
  *&v36[23] = v39;
  v3 = v37;
  sub_1000F24EC(&qword_100AD6A28);
  TintShapeStyle.init()();
  v4 = *&v36[160];
  *(a1 + 193) = *&v36[176];
  v5 = *&v36[208];
  *(a1 + 209) = *&v36[192];
  *(a1 + 225) = v5;
  v6 = *&v36[96];
  *(a1 + 129) = *&v36[112];
  v7 = *&v36[144];
  *(a1 + 145) = *&v36[128];
  *(a1 + 161) = v7;
  *(a1 + 177) = v4;
  v8 = *&v36[32];
  *(a1 + 65) = *&v36[48];
  v9 = *&v36[80];
  *(a1 + 81) = *&v36[64];
  *(a1 + 97) = v9;
  *(a1 + 113) = v6;
  v10 = *&v36[16];
  *(a1 + 17) = *v36;
  *(a1 + 33) = v10;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 240) = *&v36[223];
  *(a1 + 49) = v8;
  LOBYTE(v2) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_1000F24EC(&qword_100AD6A30);
  v20 = a1 + *(result + 36);
  *v20 = v2;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_1001AD3F0@<X0>(uint64_t a1@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = v11;
  v24 = v12;
  *v25 = v13;
  *&v25[8] = v8;
  *&v25[24] = v9;
  *&v25[40] = v10;
  v26 = v20;
  v27 = v21;
  *v28 = v22;
  *&v28[8] = v5;
  *&v28[24] = v6;
  *&v28[40] = v7;
  v2 = *&v25[16];
  *(a1 + 32) = *v25;
  *(a1 + 48) = v2;
  *(a1 + 64) = *&v25[32];
  v3 = v24;
  *a1 = v23;
  *(a1 + 16) = v3;
  *(a1 + 152) = v27;
  *(a1 + 136) = v26;
  *(a1 + 200) = *&v28[32];
  *(a1 + 184) = *&v28[16];
  *(a1 + 168) = *v28;
  v29 = v20;
  v32 = v21;
  *(a1 + 80) = *&v25[48];
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = v18;
  *(a1 + 128) = v19;
  *(a1 + 216) = *&v28[48];
  v30 = DWORD2(v20);
  v31 = HIDWORD(v20);
  v33 = *(&v21 + 1);
  v34 = v22;
  v37 = v7;
  v36 = v6;
  v35 = v5;
  sub_1000082B4(&v23, v38, &qword_100AD6A38);
  sub_1000082B4(&v26, v38, &qword_100AD6A38);
  sub_100004F84(&v29, &qword_100AD6A38);
  v38[0] = v11;
  v38[1] = v12;
  v39 = v13;
  v40 = v8;
  v41 = v9;
  v42 = v10;
  return sub_100004F84(v38, &qword_100AD6A38);
}

unint64_t sub_1001AD710()
{
  result = qword_100AD6A40;
  if (!qword_100AD6A40)
  {
    sub_1000F2A18(&qword_100AD6A30);
    sub_1001AD79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6A40);
  }

  return result;
}

unint64_t sub_1001AD79C()
{
  result = qword_100AD6A48;
  if (!qword_100AD6A48)
  {
    sub_1000F2A18(&qword_100AD6A28);
    sub_10000B58C(&qword_100AD6A50, &qword_100AD6A58);
    sub_10000B58C(&qword_100AD6A60, &qword_100AD6A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6A48);
  }

  return result;
}

uint64_t sub_1001AD880(uint64_t a1)
{
  result = sub_1001B1D10(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001AD8D8(uint64_t a1)
{
  result = sub_1001B1D10(&unk_100AD6A90, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001AD930()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD6A70);
  sub_10000617C(v0, qword_100AD6A70);
  return Logger.init(subsystem:category:)();
}

void sub_1001AD9B4(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v120 = type metadata accessor for UUID();
  v4 = *(v120 - 8);
  v5 = __chkstk_darwin(v120);
  v122 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *(a1 + 16);
  if (!v105)
  {
    return;
  }

  v7 = 0;
  v106 = a1 + 32;
  v121 = v4 + 16;
  v117 = (v4 + 8);
  v5.n128_u64[0] = 136315138;
  v104 = v5;
  v5.n128_u64[0] = 134218754;
  v102 = v5;
  v5.n128_u64[0] = 134218498;
  v103 = v5;
  v118 = v4;
LABEL_5:
  v8 = (v106 + 16 * v7);
  v9 = v8[1];
  v110 = *v8;
  v10 = sub_1001AE548(v108, v110, v9);
  if (v2)
  {
    return;
  }

  v11 = v10;
  v12 = *(v10 + 2);
  if (!v12)
  {

    if (qword_100ACFA48 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000617C(v49, qword_100AD6A70);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v123 = v53;
      *v52 = v104.n128_u32[0];
      v54 = _typeName(_:qualified:)();
      v56 = sub_100008458(v54, v55, &v123);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "No %s objects with duplicate ids", v52, 0xCu);
      sub_10000BA7C(v53);
    }

    v4 = v118;
    goto LABEL_4;
  }

  v107 = v7;
  v109 = 0;
  v13 = 0;
  v14 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v15 = &_swiftEmptyDictionarySingleton;
  v16 = v120;
  v119 = v10;
  while (v13 < *(v11 + 2))
  {
    v17 = *(v4 + 72);
    v18 = *(v4 + 16);
    v19 = v122;
    v18(v122, &v14[v17 * v13], v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v15;
    v21 = sub_100361E08(v19);
    v23 = v15[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_71;
    }

    v27 = v22;
    if (v15[3] >= v26)
    {
      v16 = v120;
      if (isUniquelyReferenced_nonNull_native)
      {
        v11 = v119;
        if ((v22 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = v21;
        sub_100821358();
        v16 = v120;
        v21 = v35;
        v15 = v123;
        v11 = v119;
        if ((v27 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_10081BC14(v26, isUniquelyReferenced_nonNull_native);
      v15 = v123;
      v21 = sub_100361E08(v122);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_80;
      }

      v16 = v120;
      v11 = v119;
      if ((v27 & 1) == 0)
      {
LABEL_16:
        v15[(v21 >> 6) + 8] |= 1 << v21;
        v29 = v21;
        v18(v15[6] + v21 * v17, v122, v16);
        *(v15[7] + 8 * v29) = 0;
        v30 = v15[2];
        v25 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v25)
        {
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
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_81:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v21 = v29;
        v15[2] = v31;
      }
    }

    v32 = v15[7];
    v33 = *(v32 + 8 * v21);
    v25 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v25)
    {
      goto LABEL_72;
    }

    ++v13;
    *(v32 + 8 * v21) = v34;
    (*v117)(v122, v16);
    v4 = v118;
    if (v12 == v13)
    {
      if (v110 != type metadata accessor for JournalEntryAssetMO())
      {
        if (qword_100ACFA48 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_10000617C(v36, qword_100AD6A70);

        v37 = Logger.logObject.getter();
        v38 = v11;
        v39 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v37, v39))
        {
          v40 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          *v40 = v103.n128_u32[0];
          v41 = *(v38 + 2);

          *(v40 + 4) = v41;

          *(v40 + 12) = 2080;
          v42 = _typeName(_:qualified:)();
          v44 = sub_100008458(v42, v43, &v123);

          *(v40 + 14) = v44;
          *(v40 + 22) = 2080;
          sub_1001B1D10(&qword_100AD4B40, &type metadata accessor for UUID);
          v45 = Dictionary.description.getter();
          v47 = v46;

          v48 = sub_100008458(v45, v47, &v123);

          *(v40 + 24) = v48;
          _os_log_impl(&_mh_execute_header, v37, v39, "Found %ld %s objects with overlapping ids.\nIDs: %s", v40, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v2 = v109;
        goto LABEL_66;
      }

      sub_1001B1D10(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO);
      v57 = v109;
      v58 = static Identifiable<>.fetch(ids:context:)();
      v109 = v57;
      if (v57)
      {
        goto LABEL_73;
      }

      v59 = v58;
      v60 = sub_10023B3A8(&_swiftEmptyDictionarySingleton);
      if (v59 >> 62)
      {
        v61 = _CocoaArrayWrapper.endIndex.getter();
        if (!v61)
        {
          goto LABEL_58;
        }

LABEL_35:
        v62 = 0;
        v113 = v59 & 0xFFFFFFFFFFFFFF8;
        v114 = v59 & 0xC000000000000001;
        v111 = v61;
        v112 = v59;
        while (2)
        {
          if (v114)
          {
            v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v64 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v62 >= *(v113 + 16))
            {
              goto LABEL_76;
            }

            v63 = *(v59 + 8 * v62 + 32);
            v64 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_75;
            }
          }

          v115 = v64;
          v116 = v63;
          v65 = [v63 assetType];
          if (v65)
          {
            v66 = v65;
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;
          }

          else
          {
            v67 = 0;
            v69 = 0;
          }

          v70 = swift_isUniquelyReferenced_nonNull_native();
          v123 = v60;
          v72 = sub_1003621EC(v67, v69);
          v73 = v60[2];
          v74 = (v71 & 1) == 0;
          v75 = v73 + v74;
          if (__OFADD__(v73, v74))
          {
            goto LABEL_77;
          }

          v76 = v71;
          if (v60[3] >= v75)
          {
            if (v70)
            {
              if ((v71 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else
            {
              sub_1008225D4();
              v60 = v123;
              if ((v76 & 1) == 0)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            sub_10081DE28(v75, v70);
            sub_1000F24EC(&unk_100AE4870);
            v60 = v123;
            v77 = sub_1003621EC(v67, v69);
            if ((v76 & 1) != (v78 & 1))
            {
              goto LABEL_81;
            }

            v72 = v77;
            if ((v76 & 1) == 0)
            {
LABEL_54:
              v60[(v72 >> 6) + 8] |= 1 << v72;
              v79 = (v60[6] + 16 * v72);
              *v79 = v67;
              v79[1] = v69;
              *(v60[7] + 8 * v72) = 0;
              v80 = v60[2];
              v25 = __OFADD__(v80, 1);
              v81 = v80 + 1;
              if (v25)
              {
                goto LABEL_79;
              }

              v60[2] = v81;
LABEL_56:
              v82 = v60[7];
              v83 = *(v82 + 8 * v72);
              v25 = __OFADD__(v83, 1);
              v84 = v83 + 1;
              if (v25)
              {
                goto LABEL_78;
              }

              *(v82 + 8 * v72) = v84;

              ++v62;
              v59 = v112;
              if (v115 == v111)
              {
                goto LABEL_58;
              }

              continue;
            }
          }

          break;
        }

        goto LABEL_56;
      }

      v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
        goto LABEL_35;
      }

LABEL_58:

      if (qword_100ACFA48 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_10000617C(v85, qword_100AD6A70);
      v86 = v119;

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v123 = v116;
        *v89 = v102.n128_u32[0];
        v90 = *(v86 + 2);

        *(v89 + 4) = v90;

        *(v89 + 12) = 2080;
        v91 = _typeName(_:qualified:)();
        v93 = sub_100008458(v91, v92, &v123);

        *(v89 + 14) = v93;
        *(v89 + 22) = 2080;
        sub_1001B1D10(&qword_100AD4B40, &type metadata accessor for UUID);
        v94 = Dictionary.description.getter();
        v96 = v95;

        v97 = sub_100008458(v94, v96, &v123);

        *(v89 + 24) = v97;
        *(v89 + 32) = 2080;
        sub_1000F24EC(&unk_100AE4870);
        sub_1001B1D58();
        v98 = Dictionary.description.getter();
        v100 = v99;

        v101 = sub_100008458(v98, v100, &v123);

        *(v89 + 34) = v101;
        _os_log_impl(&_mh_execute_header, v87, v88, "Found %ld %s objects with overlapping ids.\nIDs: %s\nAsset types: %s", v89, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v2 = v109;
      v4 = v118;
LABEL_66:
      v7 = v107;
LABEL_4:
      if (++v7 == v105)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
}

double *sub_1001AE548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_1000F24EC(&unk_100AE88B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100940080;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = 25705;
  *(v8 + 40) = 0xE200000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setPropertiesToFetch:isa];

  sub_1000F24EC(&qword_100AD6B20);
  NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v10 = _arrayConditionalCast<A, B>(_:)();

    if (v10)
    {
      v20 = v10;
      type metadata accessor for UUID();
      type metadata accessor for Array();
      sub_1001B1D10(&qword_100AD4B40, &type metadata accessor for UUID);
      v18 = &v15;
      v19 = Dictionary.init()();
      __chkstk_darwin(v19);
      v17 = a2;
      v14[2] = a2;
      v14[3] = a3;
      type metadata accessor for Dictionary();
      v16 = a3;
      swift_getWitnessTable();
      Sequence.reduce<A>(into:_:)();

      __chkstk_darwin(v11);
      v12 = v16;
      v14[-2] = v17;
      v14[-1] = v12;
      v21 = Dictionary.filter(_:)();
      type metadata accessor for Dictionary.Keys();
      swift_getWitnessTable();
      a1 = Array.init<A>(_:)();
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return a1;
}

uint64_t sub_1001AE880(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v8 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v8 - 8);
  v10 = v33 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v34 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  v17 = *a2;
  v37 = *a2;
  dispatch thunk of Identifiable.id.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100004F84(v10, &qword_100AD1420);
  }

  v33[4] = v4;
  (*(v12 + 32))(v16, v10, v11);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v37 = v17;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = sub_1001B1E10;
  v20[5] = v19;
  v33[3] = v19;
  v21 = v17;
  v22 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v22;
  v24 = v36;
  v33[2] = sub_100361E08(v16);
  v26 = *(v24 + 16);
  v27 = (v25 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
  }

  else
  {
    v29 = v25;
    type metadata accessor for Array();
    v33[1] = sub_1001B1D10(&qword_100AD4B40, &type metadata accessor for UUID);
    type metadata accessor for _NativeDictionary();
    v30 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28);
    v31 = v36;
    if (!v30)
    {
      *v35 = v36;
      if (v29)
      {
LABEL_10:
        Array.append(_:)();
        (*(v12 + 8))(v16, v11);
      }

LABEL_9:
      v36 = (v20[4])();
      (*(v12 + 16))(v34, v16, v11);
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_10;
    }

    sub_100361E08(v16);
    if ((v29 & 1) == (v32 & 1))
    {
      *v35 = v31;
      if (v29)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BOOL sub_1001AEC40(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  type metadata accessor for Array();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = *a2;
  v14 = *(v4 - 8);
  (*(v14 + 16))(&v17 - v11, a1, v4, v10);
  *&v12[*(TupleTypeMetadata2 + 48)] = v13;
  (*(v6 + 16))(v8, v12, TupleTypeMetadata2);

  v15 = Array.count.getter();

  (*(v6 + 8))(v12, TupleTypeMetadata2);
  (*(v14 + 8))(v8, v4);
  return v15 > 1;
}

void sub_1001AEE30()
{
  v0 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v0 - 8);
  v47 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = v36 - v3;
  v5 = type metadata accessor for UUID();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  v11 = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v12 = [swift_getObjCClassFromMetadata() fetchRequest];
  v13 = sub_1001B1E18();
  [v12 setPredicate:v13];

  sub_1000F24EC(&unk_100AE88B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940080;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = 25705;
  *(v14 + 40) = 0xE200000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16 = v12;

  [v12 setPropertiesToFetch:isa];

  sub_1000F24EC(&qword_100AD6B20);
  v17 = v48;
  v18 = NSManagedObjectContext.fetch<A>(_:)();
  v19 = v17;
  if (v17 || (v45 = v11, v46 = v7, v38 = v10, v20 = sub_100584934(v18), , !v20))
  {
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v36[1] = v19;
      v37 = v16;
      if (!i)
      {
        break;
      }

      v23 = 0;
      v44 = v20 & 0xC000000000000001;
      v40 = (v39 + 32);
      v41 = (v39 + 48);
      v48 = _swiftEmptyArrayStorage;
      v42 = i;
      v43 = v21;
      while (1)
      {
        if (v44)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_26;
          }

          v24 = *&v20[v23 + 4];
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v16 = v20;
        v49 = v24;
        sub_1001B1D10(&unk_100AD6A90, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
        v27 = v25;
        v19 = v5;
        v28 = v4;
        v29 = v47;
        dispatch thunk of Identifiable.id.getter();
        v30 = v29;
        v4 = v28;
        v5 = v19;
        sub_100024EC0(v30, v4);

        if ((*v41)(v4, 1, v19) == 1)
        {
          sub_100004F84(v4, &qword_100AD1420);
        }

        else
        {
          v31 = *v40;
          v19 = v38;
          (*v40)(v38, v4, v5);
          v31(v46, v19, v5);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v32 = v48;
          }

          else
          {
            v32 = sub_100055CEC(0, *(v48 + 2) + 1, 1, v48);
          }

          v34 = *(v32 + 2);
          v33 = *(v32 + 3);
          if (v34 >= v33 >> 1)
          {
            v32 = sub_100055CEC(v33 > 1, v34 + 1, 1, v32);
          }

          *(v32 + 2) = v34 + 1;
          v35 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v48 = v32;
          (v31)(v32 + v35 + *(v39 + 72) * v34);
        }

        v20 = v16;
        v21 = v43;
        ++v23;
        if (v26 == v42)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v48 = _swiftEmptyArrayStorage;
LABEL_24:
  }
}

void sub_1001AF328()
{
  v0 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v0 - 8);
  v47 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = v36 - v3;
  v5 = type metadata accessor for UUID();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  v11 = type metadata accessor for JournalEntryAssetMO();
  v12 = [swift_getObjCClassFromMetadata() fetchRequest];
  v13 = sub_1001B202C();
  [v12 setPredicate:v13];

  sub_1000F24EC(&unk_100AE88B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940080;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = 25705;
  *(v14 + 40) = 0xE200000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16 = v12;

  [v12 setPropertiesToFetch:isa];

  sub_1000F24EC(&qword_100AD6B20);
  v17 = v48;
  v18 = NSManagedObjectContext.fetch<A>(_:)();
  v19 = v17;
  if (v17 || (v45 = v11, v46 = v7, v38 = v10, v20 = sub_10058494C(v18), , !v20))
  {
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v36[1] = v19;
      v37 = v16;
      if (!i)
      {
        break;
      }

      v23 = 0;
      v44 = v20 & 0xC000000000000001;
      v40 = (v39 + 32);
      v41 = (v39 + 48);
      v48 = _swiftEmptyArrayStorage;
      v42 = i;
      v43 = v21;
      while (1)
      {
        if (v44)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_26;
          }

          v24 = *&v20[v23 + 4];
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v16 = v20;
        v49 = v24;
        sub_1001B1D10(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO);
        v27 = v25;
        v19 = v5;
        v28 = v4;
        v29 = v47;
        dispatch thunk of Identifiable.id.getter();
        v30 = v29;
        v4 = v28;
        v5 = v19;
        sub_100024EC0(v30, v4);

        if ((*v41)(v4, 1, v19) == 1)
        {
          sub_100004F84(v4, &qword_100AD1420);
        }

        else
        {
          v31 = *v40;
          v19 = v38;
          (*v40)(v38, v4, v5);
          v31(v46, v19, v5);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v32 = v48;
          }

          else
          {
            v32 = sub_100055CEC(0, *(v48 + 2) + 1, 1, v48);
          }

          v34 = *(v32 + 2);
          v33 = *(v32 + 3);
          if (v34 >= v33 >> 1)
          {
            v32 = sub_100055CEC(v33 > 1, v34 + 1, 1, v32);
          }

          *(v32 + 2) = v34 + 1;
          v35 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v48 = v32;
          (v31)(v32 + v35 + *(v39 + 72) * v34);
        }

        v20 = v16;
        v21 = v43;
        ++v23;
        if (v26 == v42)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v48 = _swiftEmptyArrayStorage;
LABEL_24:
  }
}

void sub_1001AF820()
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  sub_1001AEE30();
  if (!v0)
  {
    if (*(v1 + 16))
    {
      sub_1001B1D10(&unk_100AD6A90, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
      v2 = static Identifiable<>.fetch(ids:context:)();
    }

    else
    {

      v2 = _swiftEmptyArrayStorage;
    }

    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_7;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      sub_1001B229C(v2);

      return;
    }

    if (qword_100ACFA48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AD6A70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100008458(0xD000000000000021, 0x80000001008E3BB0, &v8);
      _os_log_impl(&_mh_execute_header, v4, v5, "No %{public}s objects queued for upload with missing content", v6, 0xCu);
      sub_10000BA7C(v7);
    }
  }
}

void sub_1001AFA54()
{
  type metadata accessor for JournalEntryAssetMO();
  sub_1001AF328();
  if (!v0)
  {
    if (*(v1 + 16))
    {
      sub_1001B1D10(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO);
      v2 = static Identifiable<>.fetch(ids:context:)();
    }

    else
    {

      v2 = _swiftEmptyArrayStorage;
    }

    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_7;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      sub_1001B25E4(v2);

      return;
    }

    if (qword_100ACFA48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AD6A70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100008458(0xD000000000000013, 0x80000001008E3C80, &v8);
      _os_log_impl(&_mh_execute_header, v4, v5, "No %{public}s objects queued for upload with missing content", v6, 0xCu);
      sub_10000BA7C(v7);
    }
  }
}

uint64_t sub_1001AFC88()
{
  v87 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v87);
  v86 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v85 = &v82 - v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v83 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v7 - 8);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v82 - v11;
  __chkstk_darwin(v13);
  v15 = &v82 - v14;
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  v88 = 0;
  v89 = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  v19._countAndFlagsBits = 540689481;
  v19._object = 0xE400000000000000;
  String.append(_:)(v19);
  v20 = v0;
  v21 = [v0 id];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v5 + 56);
    v24 = v15;
    v25 = 0;
  }

  else
  {
    v23 = *(v5 + 56);
    v24 = v15;
    v25 = 1;
  }

  v84 = v23;
  v23(v24, v25, 1, v4);
  sub_100024EC0(v15, v18);
  v26 = *(v5 + 48);
  if (v26(v18, 1, v4))
  {
    sub_100004F84(v18, &qword_100AD1420);
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v29 = v83;
    (*(v5 + 16))(v83, v18, v4);
    sub_100004F84(v18, &qword_100AD1420);
    v30 = UUID.uuidString.getter();
    v28 = v31;
    (*(v5 + 8))(v29, v4);
    v27 = v30;
  }

  v32 = v28;
  String.append(_:)(*&v27);

  v33._countAndFlagsBits = 0x203A657079540ALL;
  v33._object = 0xE700000000000000;
  String.append(_:)(v33);
  v34 = [v20 assetType];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0x49746E657261500ALL;
  v40._object = 0xEB00000000203A44;
  String.append(_:)(v40);
  v41 = v20;
  v42 = [v20 parentID];
  if (v42)
  {
    v43 = v42;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = v85;
  v84(v9, v44, 1, v4);
  sub_100024EC0(v9, v12);
  if (v26(v12, 1, v4))
  {
    sub_100004F84(v12, &qword_100AD1420);
    v46 = 0;
    v47 = 0xE000000000000000;
  }

  else
  {
    v48 = v83;
    (*(v5 + 16))(v83, v12, v4);
    sub_100004F84(v12, &qword_100AD1420);
    v49 = UUID.uuidString.getter();
    v47 = v50;
    (*(v5 + 8))(v48, v4);
    v46 = v49;
  }

  v51 = v47;
  String.append(_:)(*&v46);

  v52._countAndFlagsBits = 0x3A656372756F530ALL;
  v52._object = 0xE900000000000020;
  String.append(_:)(v52);
  v53 = [v41 source];
  if (v53)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0xE000000000000000;
  }

  v58._countAndFlagsBits = v55;
  v58._object = v57;
  String.append(_:)(v58);

  v59._countAndFlagsBits = 0x646574616572430ALL;
  v59._object = 0xEF203A6574614420;
  String.append(_:)(v59);
  v60 = [v41 createdDate];
  if (v60)
  {
    v61 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = type metadata accessor for Date();
  v64 = *(*(v63 - 8) + 56);
  v65 = 1;
  v64(v45, v62, 1, v63);
  v66._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v66);

  v67._object = 0x80000001008E3CA0;
  v67._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v67);
  v68 = [v41 suggestionDate];
  v69 = v86;
  if (v68)
  {
    v70 = v68;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = 0;
  }

  v64(v69, v65, 1, v63);
  v71._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v71);

  v72._countAndFlagsBits = 0xD000000000000014;
  v72._object = 0x80000001008E3CC0;
  String.append(_:)(v72);
  v73 = [v41 recordSystemFields];
  if (v73)
  {
    v74 = v73;
    v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    sub_1000340DC(v75, v77);
    v78 = 0xE400000000000000;
    v79 = 1702195828;
  }

  else
  {
    v78 = 0xE500000000000000;
    v79 = 0x65736C6166;
  }

  v80 = v78;
  String.append(_:)(*&v79);

  return v88;
}

uint64_t sub_1001B03F4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v5 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v63 - v9;
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  v17._countAndFlagsBits = 540689481;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);
  v18 = [v0 id];
  if (v18)
  {
    v19 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v3 + 56);
    v20(v13, 0, 1, v2);
  }

  else
  {
    v20 = *(v3 + 56);
    v20(v13, 1, 1, v2);
  }

  sub_100024EC0(v13, v16);
  v21 = *(v3 + 48);
  if (v21(v16, 1, v2))
  {
    sub_100004F84(v16, &qword_100AD1420);
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = v65;
    (*(v3 + 16))(v65, v16, v2);
    sub_100004F84(v16, &qword_100AD1420);
    v25 = UUID.uuidString.getter();
    v64 = v10;
    v26 = v7;
    v27 = v21;
    v28 = v20;
    v29 = v1;
    v30 = v25;
    v23 = v31;
    (*(v3 + 8))(v24, v2);
    v22 = v30;
    v1 = v29;
    v20 = v28;
    v21 = v27;
    v7 = v26;
    v10 = v64;
  }

  v32 = v23;
  String.append(_:)(*&v22);

  v33._countAndFlagsBits = 0x203A7865646E490ALL;
  v33._object = 0xE800000000000000;
  String.append(_:)(v33);
  v66 = [v1 index];
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0x49746E657261500ALL;
  v35._object = 0xEB00000000203A44;
  String.append(_:)(v35);
  v36 = [v1 parentID];
  if (v36)
  {
    v37 = v36;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v20(v7, v38, 1, v2);
  sub_100024EC0(v7, v10);
  if (v21(v10, 1, v2))
  {
    sub_100004F84(v10, &qword_100AD1420);
    v39 = 0;
    v40 = 0xE000000000000000;
  }

  else
  {
    v41 = v1;
    v42 = v65;
    (*(v3 + 16))(v65, v10, v2);
    sub_100004F84(v10, &qword_100AD1420);
    v43 = UUID.uuidString.getter();
    v40 = v44;
    v45 = v42;
    v1 = v41;
    (*(v3 + 8))(v45, v2);
    v39 = v43;
  }

  v46 = 1702195828;
  v47 = v40;
  String.append(_:)(*&v39);

  v48._object = 0x80000001008E3BE0;
  v48._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v48);
  v49 = [v1 needsProcessing];
  v50 = v49 == 0;
  if (v49)
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  v52 = 0xE500000000000000;
  if (v50)
  {
    v53 = 0xE500000000000000;
  }

  else
  {
    v53 = 0xE400000000000000;
  }

  v54 = v53;
  String.append(_:)(*&v51);

  v55._countAndFlagsBits = 0xD00000000000001CLL;
  v55._object = 0x80000001008E3C00;
  String.append(_:)(v55);
  v56 = [v1 recordSystemFields];
  if (v56)
  {
    v57 = v56;
    v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    sub_1000340DC(v58, v60);
    v52 = 0xE400000000000000;
  }

  else
  {
    v46 = 0x65736C6166;
  }

  v61._countAndFlagsBits = v46;
  v61._object = v52;
  String.append(_:)(v61);

  return v67;
}

uint64_t sub_1001B0974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[6] = v6;
  v3[7] = v8;

  return _swift_task_switch(sub_1001B0A64, v6, v8);
}

uint64_t sub_1001B0A64()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1000F24EC(&unk_100AD6AA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100942000;
  v6 = type metadata accessor for JournalEntryMO();
  v7 = sub_1001B1D10(&unk_100AE9050, &type metadata accessor for JournalEntryMO);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = type metadata accessor for JournalEntryAssetMO();
  v9 = sub_1001B1D10(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO);
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  v10 = type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v11 = sub_1001B1D10(&unk_100AD6A90, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
  *(v5 + 64) = v10;
  *(v5 + 72) = v11;
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v13 = v4;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_1001B0C80;
  v15 = v0[5];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v15, sub_1001B1CF4, v12, &type metadata for () + 8);
}

uint64_t sub_1001B0C80()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 56);
  v7 = *(v2 + 48);
  if (v0)
  {
    v8 = sub_1001B0EA0;
  }

  else
  {
    v8 = sub_1001B0E3C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001B0E3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B0EA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B0F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[9] = v6;
  v3[10] = v8;

  return _swift_task_switch(sub_1001B100C, v6, v8);
}

uint64_t sub_1001B100C()
{
  if (qword_100ACFA48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 88) = sub_10000617C(v1, qword_100AD6A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running data consistency checks", v4, 2u);
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);

  v8 = swift_allocObject();
  *(v0 + 96) = v8;
  *(v8 + 16) = v7;
  *(v0 + 192) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v6 + 104);
  *(v0 + 104) = v9;
  *(v0 + 112) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);
  v10 = v7;
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1001B11F8;
  v12 = *(v0 + 64);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, sub_1001B1CBC, v8, &type metadata for () + 8);
}

uint64_t sub_1001B11F8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v2[16] = v0;

  v6 = *(v4 + 8);
  v2[17] = v6;
  v2[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  v7 = v2[10];
  v8 = v2[9];
  if (v0)
  {
    v9 = sub_1001B16A0;
  }

  else
  {
    v9 = sub_1001B13C0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1001B13C0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 192);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_allocObject();
  *(v0 + 152) = v6;
  *(v6 + 16) = v5;
  v1(v3, v2, v4);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_1001B14DC;
  v9 = *(v0 + 56);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_1001B1CD8, v6, &type metadata for () + 8);
}

uint64_t sub_1001B14DC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  *(*v1 + 168) = v0;

  v3(v4, v5);

  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_1001B1B50;
  }

  else
  {
    v8 = sub_1001B180C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001B16A0()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error checking CoreData for data errors: %@", v3, 0xCu);
    sub_100004F84(v4, &unk_100AD4BB0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001B180C()
{
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1001B18A4;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1001B0974(v4, v2, v3);
}

uint64_t sub_1001B18A4()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[9];
    v4 = v2[10];

    return _swift_task_switch(sub_1001B19E4, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_1001B19E4()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error checking CoreData for data errors: %@", v3, 0xCu);
    sub_100004F84(v4, &unk_100AD4BB0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001B1B50()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error checking CoreData for data errors: %@", v3, 0xCu);
    sub_100004F84(v4, &unk_100AD4BB0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001B1D10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001B1D58()
{
  result = qword_100AD6AB0;
  if (!qword_100AD6AB0)
  {
    sub_1000F2A18(&unk_100AE4870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6AB0);
  }

  return result;
}

id sub_1001B1E18()
{
  sub_1000F24EC(&unk_100AD4780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100941830;
  sub_1000321B0();
  sub_1000F24EC(&unk_100AD5B10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 56) = &type metadata for String;
  v2 = sub_100031B20();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000001008DC3B0;
  *(v0 + 32) = NSPredicate.init(format:_:)();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940080;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = v2;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001008E3C20;
  *(v0 + 40) = NSPredicate.init(format:_:)();
  *(v0 + 48) = NSPredicate.init(format:_:)();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100940080;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = v2;
  *(v4 + 32) = 0x68746150656C6966;
  *(v4 + 40) = 0xE800000000000000;
  *(v0 + 56) = NSPredicate.init(format:_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  return v6;
}

id sub_1001B202C()
{
  sub_1000F24EC(&unk_100AD4780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100941830;
  sub_1000321B0();
  sub_1000F24EC(&unk_100AD5B10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 56) = &type metadata for String;
  v2 = sub_100031B20();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000001008DC3B0;
  *(v0 + 32) = NSPredicate.init(format:_:)();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940080;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = v2;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001008E3C20;
  *(v0 + 40) = NSPredicate.init(format:_:)();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100940050;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = v2;
  strcpy((v4 + 32), "entry.isDraft");
  *(v4 + 46) = -4864;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v2;
  strcpy((v4 + 72), "entry.isDraft");
  *(v4 + 86) = -4864;
  *(v0 + 48) = NSPredicate.init(format:_:)();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = v2;
  strcpy((v5 + 32), "assetMetaData");
  *(v5 + 46) = -4864;
  *(v0 + 56) = NSPredicate.init(format:_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  return v7;
}

void sub_1001B229C(unint64_t a1)
{
  if (qword_100ACFA48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD6A70);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 134218242;
    if (a1 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 4) = v6;

    *(v4 + 12) = 2080;
    if (a1 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      sub_1001999C0(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return;
      }

      v27 = v5;
      v28 = v3;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = sub_1001B03F4();
          v11 = v10;
          swift_unknownObjectRelease();
          v13 = _swiftEmptyArrayStorage[2];
          v12 = _swiftEmptyArrayStorage[3];
          if (*&v13 >= *&v12 >> 1)
          {
            sub_1001999C0((*&v12 > 1uLL), *&v13 + 1, 1);
          }

          ++v8;
          *&_swiftEmptyArrayStorage[2] = *&v13 + 1;
          v14 = &_swiftEmptyArrayStorage[2 * *&v13];
          *(v14 + 4) = v9;
          *(v14 + 5) = v11;
        }

        while (v7 != v8);
      }

      else
      {
        v15 = (a1 + 32);
        do
        {
          v16 = *v15;
          v17 = sub_1001B03F4();
          v19 = v18;

          v21 = _swiftEmptyArrayStorage[2];
          v20 = _swiftEmptyArrayStorage[3];
          if (*&v21 >= *&v20 >> 1)
          {
            sub_1001999C0((*&v20 > 1uLL), *&v21 + 1, 1);
          }

          *&_swiftEmptyArrayStorage[2] = *&v21 + 1;
          v22 = &_swiftEmptyArrayStorage[2 * *&v21];
          *(v22 + 4) = v17;
          *(v22 + 5) = v19;
          ++v15;
          --v7;
        }

        while (v7);
      }

      v3 = v28;
      v5 = v27;
    }

    v23 = Array.description.getter();
    v25 = v24;

    v26 = sub_100008458(v23, v25, &v30);

    *(v4 + 14) = v26;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Found %ld attachments with pending changes but no filePath\nDetails: %s", v4, 0x16u);
    sub_10000BA7C(v5);
  }

  else
  {
  }
}

void sub_1001B25E4(unint64_t a1)
{
  v2 = sub_10023B3A8(&_swiftEmptyDictionarySingleton);
  v56 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v3; i = a1)
  {
    v4 = 0;
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    oslog = (a1 & 0xC000000000000001);
    v57 = v3;
    while (1)
    {
      if (oslog)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v58 + 16))
        {
          goto LABEL_53;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 assetType];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v2;
      a1 = sub_1003621EC(v10, v12);
      v15 = v2[2];
      v16 = (v14 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_54;
      }

      v18 = v14;
      if (v2[3] >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1008225D4();
          v2 = v62;
          if (v18)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_10081DE28(v17, isUniquelyReferenced_nonNull_native);
        sub_1000F24EC(&unk_100AE4870);
        v2 = v62;
        v19 = sub_1003621EC(v10, v12);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_60;
        }

        a1 = v19;
        if (v18)
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      v2[(a1 >> 6) + 8] |= 1 << a1;
      v21 = (v2[6] + 16 * a1);
      *v21 = v10;
      v21[1] = v12;
      *(v2[7] + 8 * a1) = 0;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_56;
      }

      v2[2] = v24;
LABEL_23:
      v25 = v2[7];
      v26 = *(v25 + 8 * a1);
      v23 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v23)
      {
        goto LABEL_55;
      }

      *(v25 + 8 * a1) = v27;

      ++v4;
      a1 = i;
      if (v7 == v57)
      {
        goto LABEL_25;
      }
    }

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
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_25:
  if (qword_100ACFA48 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000617C(v28, qword_100AD6A70);

  osloga = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(osloga, v29))
  {
    v30 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v30 = 134218498;
    if (v56)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 4) = v31;

    *(v30 + 12) = 2082;
    sub_1000F24EC(&unk_100AE4870);
    sub_1001B1D58();
    v32 = Dictionary.description.getter();
    v34 = v33;

    v35 = sub_100008458(v32, v34, &v62);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    if (v56)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
LABEL_49:
      v52 = Array.description.getter();
      v54 = v53;

      v55 = sub_100008458(v52, v54, &v62);

      *(v30 + 24) = v55;
      _os_log_impl(&_mh_execute_header, osloga, v29, "Found %ld assets with pending changes but no metadata\nTypes: %{public}s\nDetails: %s", v30, 0x20u);
      swift_arrayDestroy();

      return;
    }

    sub_1001999C0(0, v36 & ~(v36 >> 63), 0);
    if ((v36 & 0x8000000000000000) == 0)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v37 = 0;
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v38 = sub_1001AFC88();
          v40 = v39;
          swift_unknownObjectRelease();
          v42 = _swiftEmptyArrayStorage[2];
          v41 = _swiftEmptyArrayStorage[3];
          if (*&v42 >= *&v41 >> 1)
          {
            sub_1001999C0((*&v41 > 1uLL), *&v42 + 1, 1);
          }

          ++v37;
          *&_swiftEmptyArrayStorage[2] = *&v42 + 1;
          v43 = &_swiftEmptyArrayStorage[2 * *&v42];
          *(v43 + 4) = v38;
          *(v43 + 5) = v40;
        }

        while (v36 != v37);
      }

      else
      {
        v44 = (a1 + 32);
        do
        {
          v45 = *v44;
          v46 = sub_1001AFC88();
          v48 = v47;

          v50 = _swiftEmptyArrayStorage[2];
          v49 = _swiftEmptyArrayStorage[3];
          if (*&v50 >= *&v49 >> 1)
          {
            sub_1001999C0((*&v49 > 1uLL), *&v50 + 1, 1);
          }

          *&_swiftEmptyArrayStorage[2] = *&v50 + 1;
          v51 = &_swiftEmptyArrayStorage[2 * *&v50];
          *(v51 + 4) = v46;
          *(v51 + 5) = v48;
          ++v44;
          --v36;
        }

        while (v36);
      }

      goto LABEL_49;
    }

    __break(1u);
LABEL_60:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1001B2BEC(uint64_t a1)
{
  sub_1000F24EC(&qword_100AD38D8);
  v2 = swift_allocObject();
  v3 = *(*v2 + 104);
  v4 = sub_1000F24EC(&unk_100AD5B30);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + *(*v2 + 112)) = xmmword_100941EE0;
  sub_100021CEC(a1, v2 + *(*v2 + 120), &qword_100AD38D0);
  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1001B2CEC()
{

  sub_1006ADB18(v0);
}

uint64_t sub_1001B2D30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1000F24EC(&unk_100AD5B30);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = sub_1000F24EC(&qword_100AD38D0);
  v2[13] = swift_task_alloc();
  if (qword_100ACFA50 != -1)
  {
    swift_once();
  }

  v5 = qword_100B2F500;

  return _swift_task_switch(sub_1001B2EE0, v5, 0);
}

uint64_t sub_1001B2EE0()
{
  v1 = MultiPinMapAssetMetadata.visitsData.getter();
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = v0[3];
  v4 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  if (*(v3 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    v5 = v0[11];
    v6 = v0[4];
    v7 = v0[5];

    sub_1000768B4(v5);

    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = v0[11];
    if (v8)
    {
      sub_100004F84(v0[11], &unk_100AD5B30);
    }

    else
    {
      v16 = v0[5];
      v15 = v0[6];
      v17 = v0[4];
      (*(v16 + 16))(v15, v0[11], v17);
      sub_100004F84(v9, &unk_100AD5B30);
      v18 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v16 + 8))(v15, v17);
      if (v18)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  result = sub_1006ADB18(v2);
  if (!*(v3 + v4))
  {
    goto LABEL_17;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = v0[5];

  sub_1000768B4(v11);

  v14 = *(v13 + 48);
  if (!v14(v11, 1, v12))
  {
    MultiPinMapAssetMetadata.isSlim.getter();
  }

  result = sub_100004F84(v0[10], &unk_100AD5B30);
  if (!*(v3 + v4))
  {
    goto LABEL_17;
  }

  v19 = v0[9];
  v20 = v0[4];

  sub_1000768B4(v19);

  if (v14(v19, 1, v20))
  {
    result = sub_100004F84(v0[9], &unk_100AD5B30);
LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  v21 = v0[9];
  v22 = MultiPinMapAssetMetadata.revision.getter();
  v24 = v23;
  result = sub_100004F84(v21, &unk_100AD5B30);
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    return result;
  }

  v25 = v0[13];
  v26 = v0[7];
  v27 = v0[8];
  MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8);
  v28 = swift_allocObject();
  (*(v27 + 56))(v28 + *(*v28 + 104), 1, 1, v26);
  *(v28 + *(*v28 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v25, v28 + *(*v28 + 120), &qword_100AD38D0);
  *(v3 + v4) = v28;

LABEL_20:

  v29 = v0[1];

  return v29();
}

uint64_t sub_1001B32A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1000F24EC(&unk_100AD5B30);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = sub_1000F24EC(&qword_100AD38D0);
  v2[13] = swift_task_alloc();
  if (qword_100ACFA50 != -1)
  {
    swift_once();
  }

  v5 = qword_100B2F500;

  return _swift_task_switch(sub_1001B3458, v5, 0);
}

uint64_t sub_1001B3458()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    v3 = v0[11];
    v4 = v0[4];
    v5 = v0[5];

    sub_1000768B4(v3);

    v6 = (*(v5 + 48))(v3, 1, v4);
    v7 = v0[11];
    if (v6)
    {
      sub_100004F84(v0[11], &unk_100AD5B30);
    }

    else
    {
      v19 = v0[5];
      v18 = v0[6];
      v20 = v0[4];
      (*(v19 + 16))(v18, v0[11], v20);
      sub_100004F84(v7, &unk_100AD5B30);
      v8 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v19 + 8))(v18, v20);
      if (v8)
      {
        goto LABEL_5;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_5:
  v9 = v0[2];
  sub_1000F24EC(&qword_100AD64A8);
  v10 = type metadata accessor for VisitAssetMetadata();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100940080;
  (*(v11 + 16))(v13 + v12, v9, v10);
  v33 = v8;
  sub_1006ADB18(v13);
  if (*(v1 + v2))
  {
    v14 = v0[10];
    v15 = v0[4];
    v16 = v0[5];

    sub_1000768B4(v14);

    v17 = *(v16 + 48);
    if (!v17(v14, 1, v15))
    {
      MultiPinMapAssetMetadata.isSlim.getter();
    }

    sub_100004F84(v0[10], &unk_100AD5B30);
    if (*(v1 + v2))
    {
      v21 = v0[9];
      v22 = v0[4];

      sub_1000768B4(v21);

      if (v17(v21, 1, v22))
      {
        sub_100004F84(v0[9], &unk_100AD5B30);
      }

      else
      {
        v23 = v0[9];
        v24 = MultiPinMapAssetMetadata.revision.getter();
        v26 = v25;
        sub_100004F84(v23, &unk_100AD5B30);
        if ((v26 & 1) == 0)
        {
          result = v33;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            return result;
          }
        }
      }
    }
  }

  v27 = v0[13];
  v28 = v0[8];
  v29 = v0[7];
  MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8);
  v30 = swift_allocObject();
  (*(v28 + 56))(v30 + *(*v30 + 104), 1, 1, v29);
  *(v30 + *(*v30 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v27, v30 + *(*v30 + 120), &qword_100AD38D0);
  *(v1 + v2) = v30;

  v31 = v0[1];

  return v31();
}

uint64_t sub_1001B38D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_1000F24EC(&qword_100AD38D0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for VisitAssetMetadata();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_1000F24EC(&unk_100AD5B30);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for MultiPinMapAssetMetadata();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  if (qword_100ACFA50 != -1)
  {
    swift_once();
  }

  v7 = qword_100B2F500;

  return _swift_task_switch(sub_1001B3ADC, v7, 0);
}

uint64_t sub_1001B3ADC()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  if (!*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v4 + 56))(v0[13], 1, 1, v0[14]);
    goto LABEL_23;
  }

  sub_1000768B4(v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
LABEL_23:
    sub_100004F84(v0[13], &unk_100AD5B30);
    goto LABEL_24;
  }

  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  result = MultiPinMapAssetMetadata.visitsData.getter();
  if (result)
  {
    v32 = v2;
    v33 = v1;
    v7 = (result + 16);
    v35 = *(result + 16);
    v36 = result;
    if (v35)
    {
      v8 = v0[8];
      v34 = (v8 + 8);
      while (2)
      {
        v9 = 0;
        while (1)
        {
          if (v9 >= *v7)
          {
            __break(1u);
            goto LABEL_29;
          }

          v11 = v0[2];
          v10 = v0[3];
          v12 = result;
          (*(v8 + 16))(v0[10], result + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v9, v0[7]);
          v13 = VisitAssetMetadata.id.getter();
          v15 = v0[10];
          v16 = v0[7];
          if (v13 == v11 && v14 == v10)
          {
            break;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v19 = *v34;
          (*v34)(v15, v16);
          if (v18)
          {
            goto LABEL_16;
          }

          ++v9;
          result = v12;
          if (v35 == v9)
          {
            goto LABEL_17;
          }
        }

        v19 = *v34;
        (*v34)(v15, v16);
LABEL_16:
        v20 = v0[9];
        v21 = v0[7];
        sub_100691750(v9, v20);
        v19(v20, v21);
        result = v36;
        v7 = (v36 + 16);
        v35 = *(v36 + 16);
        if (v35)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
    MultiPinMapAssetMetadata.isSlim.getter();
    result = MultiPinMapAssetMetadata.revision.getter();
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = result;
    }

    if (__OFADD__(v23, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v24 = v0[15];
    v25 = v0[16];
    v26 = v0[14];
    v27 = v0[11];
    v28 = v0[12];
    v29 = v0[6];
    MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
    (*(v24 + 8))(v25, v26);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD38D8);
    v30 = swift_allocObject();
    (*(v28 + 56))(v30 + *(*v30 + 104), 1, 1, v27);
    *(v30 + *(*v30 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v29, v30 + *(*v30 + 120), &qword_100AD38D0);
    *(v33 + v32) = v30;
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

LABEL_24:

  v31 = v0[1];

  return v31();
}

uint64_t sub_1001B3EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1000F24EC(&unk_100AEED20);
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for VisitAssetMetadata();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v6[12] = v9;
  v6[13] = v11;

  return _swift_task_switch(sub_1001B4020, v9, v11);
}

uint64_t sub_1001B4020()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if (*(v0[6] + OBJC_IVAR____TtC7Journal10VisitAsset_metadata))
  {

    sub_10025D478(v3);

    if ((*(v2 + 48))(v3, 1, v1) != 1)
    {
      (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
      v4 = swift_task_alloc();
      v0[14] = v4;
      *v4 = v0;
      v4[1] = sub_1001B41E0;
      v5 = v0[11];

      return sub_1001B32A8(v5);
    }
  }

  else
  {
    (*(v2 + 56))(v0[8], 1, 1, v0[9]);
  }

  sub_100004F84(v0[8], &unk_100AEED20);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1001B43B0;
  v9 = v0[4];
  v8 = v0[5];

  return sub_1001B38D8(v9, v8);
}

uint64_t sub_1001B41E0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001B4300, v3, v2);
}

uint64_t sub_1001B4300()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1001B43B0;
  v3 = v0[4];
  v2 = v0[5];

  return sub_1001B38D8(v3, v2);
}

uint64_t sub_1001B43B0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001B44D0, v3, v2);
}

uint64_t sub_1001B44D0()
{
  v1 = v0[7];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = v1;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_1001B45BC;
    v8 = v0[2];
    v7 = v0[3];

    return sub_10078BBDC(v8, v7, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B45BC()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001B46DC, v3, v2);
}

uint64_t sub_1001B46DC()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1001B4790;
  v2 = *(v0 + 16);

  return sub_1001DA5A8(v2);
}

uint64_t sub_1001B4790()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001B48B0, v3, v2);
}

uint64_t sub_1001B48B0()
{
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_10044BE48(*(v0 + 56) + OBJC_IVAR____TtC7Journal5Asset_id);
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v2 object:isa];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001B4A00()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v40 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v34 - v5;
  __chkstk_darwin(v4);
  v46 = &v34 - v7;
  v8 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for MultiPinMapAssetMetadata();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = _swiftEmptyArrayStorage;
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_22;
  }

  sub_1000768B4(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_22:
    sub_100004F84(v10, &unk_100AD5B30);
    goto LABEL_24;
  }

  (*(v12 + 32))(v14, v10, v11);
  v15 = MultiPinMapAssetMetadata.visitsData.getter();
  result = (*(v12 + 8))(v14, v11);
  if (!v15)
  {
LABEL_24:
    sub_1001B4F54();
    return v47;
  }

  v39 = *(v15 + 16);
  if (!v39)
  {
LABEL_23:

    goto LABEL_24;
  }

  v17 = 0;
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v38 = v15 + v41;
  v44 = v40 + 16;
  v18 = (v40 + 8);
  v34 = (v40 + 32);
  v45 = _swiftEmptyArrayStorage;
  v36 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = v15;
  while (v17 < *(v15 + 16))
  {
    v19 = *(v40 + 72);
    v42 = v17 + 1;
    v43 = v19;
    v20 = *(v40 + 16);
    result = v20(v46, v38 + v19 * v17, v1);
    v21 = &v45[v41];
    v22 = -*(v45 + 2);
    v23 = -1;
    while (v22 + v23 != -1)
    {
      if (++v23 >= *(v45 + 2))
      {
        __break(1u);
        goto LABEL_26;
      }

      v26 = v1;
      v20(v6, v21, v1);
      v27 = VisitAssetMetadata.id.getter();
      v29 = v28;
      if (v27 == VisitAssetMetadata.id.getter() && v29 == v30)
      {

        v25 = *v18;
        v1 = v26;
        (*v18)(v6, v26);
LABEL_6:
        v15 = v37;
        v17 = v42;
        result = v25(v46, v1);
        goto LABEL_7;
      }

      v21 += v43;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = *v18;
      v1 = v26;
      result = (*v18)(v6, v26);
      if (v24)
      {
        goto LABEL_6;
      }
    }

    v20(v35, v46, v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1003E5074(0, *(v45 + 2) + 1, 1, v45);
    }

    v15 = v37;
    v32 = *(v45 + 2);
    v31 = *(v45 + 3);
    v17 = v42;
    if (v32 >= v31 >> 1)
    {
      v45 = sub_1003E5074(v31 > 1, v32 + 1, 1, v45);
    }

    v33 = v45;
    *(v45 + 2) = v32 + 1;
    (*v34)(&v33[v41 + v32 * v43], v35, v1);
    v47 = v33;
    result = (*v18)(v46, v1);
LABEL_7:
    if (v17 == v39)
    {
      goto LABEL_23;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001B4F54()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return result;
  }

  v7 = v6 - 1;
  if (v6 == 1)
  {
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v15 = v0;
  if ((result & 1) == 0)
  {
LABEL_17:
    result = sub_1006929A8(v5);
    v5 = result;
  }

  v16 = (v2 + 24);
  v17 = v2 + 16;
  v8 = 1;
  while (1)
  {
    v10 = v8 - 1;
    if (v8 - 1 == v7)
    {
      goto LABEL_6;
    }

    v11 = v5[2];
    if (v10 >= v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    v14 = &v12[v13 * v10];
    (*(v2 + 16))(v18, v14, v1);
    if (v7 >= v11)
    {
      goto LABEL_16;
    }

    result = (*v16)(v14, &v12[v13 * v7], v1);
    if (v7 >= v5[2])
    {
      break;
    }

    result = (*(v2 + 40))(&v12[v13 * v7], v18, v1);
LABEL_6:
    if (v8++ >= --v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v15 = v5;
  return result;
}

uint64_t sub_1001B5128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v7 + 56) = a4;
  *(v7 + 64) = v6;
  *(v7 + 48) = a3;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 72) = sub_1000F24EC(&qword_100AD38D0);
  *(v7 + 80) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v9 = type metadata accessor for AssetSource();
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = sub_1000F24EC(&qword_100AD6BD8);
  *(v7 + 144) = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED30);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v10 = type metadata accessor for VisitAssetMetadata();
  *(v7 + 200) = v10;
  *(v7 + 208) = *(v10 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  v11 = sub_1000F24EC(&qword_100AD6BE0);
  *(v7 + 240) = v11;
  *(v7 + 248) = *(v11 - 8);
  *(v7 + 256) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD6BE8);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  v12 = sub_1000F24EC(&unk_100AD5B30);
  *(v7 + 280) = v12;
  *(v7 + 288) = *(v12 - 8);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  v13 = type metadata accessor for MultiPinMapAssetMetadata();
  *(v7 + 312) = v13;
  *(v7 + 320) = *(v13 - 8);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED20);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v7 + 376) = v14;
  *(v7 + 384) = v16;

  return _swift_task_switch(sub_1001B55C4, v14, v16);
}

uint64_t sub_1001B55C4()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 208) + 56);
  v2(*(v0 + 368), 1, 1, *(v0 + 200));
  v3 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  if (!*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v5 + 56))(*(v0 + 304), 1, 1, *(v0 + 312));
    goto LABEL_22;
  }

  sub_1000768B4(v6);

  v7 = *(v5 + 48);
  if (v7(v6, 1, v4) == 1)
  {
LABEL_22:
    sub_100004F84(*(v0 + 304), &unk_100AD5B30);
    goto LABEL_23;
  }

  (*(*(v0 + 320) + 32))(*(v0 + 336), *(v0 + 304), *(v0 + 312));
  v8 = MultiPinMapAssetMetadata.visitsData.getter();
  if (!v8)
  {
    (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
LABEL_23:
    v47 = *(v0 + 344);
    v48 = *(v0 + 200);
    v49 = *(v0 + 208);
    sub_1000082B4(*(v0 + 368), v47, &unk_100AEED20);
    if ((*(v49 + 48))(v47, 1, v48) == 1)
    {
      sub_100004F84(*(v0 + 368), &unk_100AEED20);
      sub_100004F84(*(v0 + 344), &unk_100AEED20);

      v50 = *(v0 + 8);

      return v50();
    }

    else
    {
      (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 344), *(v0 + 200));
      v51 = swift_task_alloc();
      *(v0 + 392) = v51;
      *v51 = v0;
      v51[1] = sub_1001B6498;
      v52 = *(v0 + 216);

      return sub_1001B32A8(v52);
    }
  }

  v108 = v7;
  v113 = v2;
  v111 = v3;
  v112 = v1;
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v11 = *(v0 + 208);
  v115 = v11;
  v12 = *(v8 + 16);
  v13 = (v9 + 56);
  v14 = (v9 + 48);
  v15 = (v11 + 32);
  v118 = (v11 + 8);
  v116 = v8;

  v17 = 0;
  while (1)
  {
    if (v17 == v12)
    {
      v18 = 1;
      v17 = v12;
    }

    else
    {
      if (v17 >= *(v116 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      v19 = *(v0 + 256);
      v20 = *(v0 + 264);
      v21 = *(v0 + 200);
      v22 = v116 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v17;
      v23 = *(v10 + 48);
      *v19 = v17;
      (*(v115 + 16))(&v19[v23], v22, v21);
      sub_100021CEC(v19, v20, &qword_100AD6BE0);
      v18 = 0;
      ++v17;
    }

    v24 = *(v0 + 264);
    v25 = *(v0 + 272);
    v26 = *(v0 + 240);
    (*v13)(v24, v18, 1, v26);
    sub_100021CEC(v24, v25, &qword_100AD6BE8);
    if ((*v14)(v25, 1, v26) == 1)
    {
      v53 = *(v0 + 336);
      v54 = *(v0 + 312);
      v55 = *(v0 + 320);
      swift_bridgeObjectRelease_n();
      (*(v55 + 8))(v53, v54);
      goto LABEL_23;
    }

    v27 = *(v0 + 272);
    v28 = *v27;
    (*v15)(*(v0 + 232), v27 + *(v10 + 48), *(v0 + 200));
    v29 = VisitAssetMetadata.latitude.getter();
    if ((v30 & 1) == 0)
    {
      v31 = *&v29;
      v32 = COERCE_DOUBLE(VisitAssetMetadata.longitude.getter());
      if ((v33 & 1) == 0 && *(v0 + 32) == v31 && *(v0 + 40) == v32)
      {
        break;
      }
    }

    result = (*v118)(*(v0 + 232), *(v0 + 200));
  }

  v35 = *(v0 + 176);
  v36 = *(v0 + 184);
  v37 = *(v0 + 136);
  v38 = *(v0 + 144);
  v39 = *(v0 + 112);
  v40 = *(v0 + 120);

  VisitAssetMetadata.assetSource.getter();
  v98 = v40[13];
  v98(v35, enum case for AssetSource.automatic(_:), v39);
  v107 = v40[7];
  v107(v35, 0, 1, v39);
  v41 = *(v37 + 48);
  sub_1000082B4(v36, v38, &unk_100AEED30);
  sub_1000082B4(v35, v38 + v41, &unk_100AEED30);
  v42 = v40[6];
  if (v42(v38, 1, v39) == 1)
  {
    v43 = *(v0 + 184);
    v44 = *(v0 + 112);
    sub_100004F84(*(v0 + 176), &unk_100AEED30);
    sub_100004F84(v43, &unk_100AEED30);
    if (v42(v38 + v41, 1, v44) == 1)
    {
      sub_100004F84(*(v0 + 144), &unk_100AEED30);
      v46 = v111;
      v45 = v112;
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v56 = *(v0 + 112);
  sub_1000082B4(*(v0 + 144), *(v0 + 168), &unk_100AEED30);
  v57 = v42(v38 + v41, 1, v56);
  v59 = *(v0 + 176);
  v58 = *(v0 + 184);
  v60 = *(v0 + 168);
  if (v57 == 1)
  {
    v61 = *(v0 + 112);
    v62 = *(v0 + 120);
    sub_100004F84(*(v0 + 176), &unk_100AEED30);
    sub_100004F84(v58, &unk_100AEED30);
    (*(v62 + 8))(v60, v61);
LABEL_34:
    sub_100004F84(*(v0 + 144), &qword_100AD6BD8);
    v46 = v111;
    v45 = v112;
    goto LABEL_35;
  }

  v105 = *(v0 + 144);
  v106 = v42;
  v64 = *(v0 + 120);
  v63 = *(v0 + 128);
  v65 = *(v0 + 112);
  (*(v64 + 32))(v63, v38 + v41, v65);
  sub_1001B7754();
  v104 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v64 + 8);
  v66(v63, v65);
  sub_100004F84(v59, &unk_100AEED30);
  sub_100004F84(v58, &unk_100AEED30);
  v66(v60, v65);
  v42 = v106;
  sub_100004F84(v105, &unk_100AEED30);
  v46 = v111;
  v45 = v112;
  if ((v104 & 1) == 0)
  {
LABEL_35:
    VisitAssetMetadata.assetSource.getter();
    if (!*(v45 + v46))
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_38:
  v67 = *(v0 + 192);
  v68 = *(v0 + 112);
  v98(v67, enum case for AssetSource.locationPicker(_:), v68);
  v107(v67, 0, 1, v68);
  if (!*(v45 + v46))
  {
    goto LABEL_45;
  }

LABEL_39:
  v69 = *(v0 + 312);
  v70 = *(v0 + 296);

  sub_1000768B4(v70);

  if (v108(v70, 1, v69))
  {
    v71 = *(v0 + 296);
    sub_100004F84(*(v0 + 368), &unk_100AEED20);
    v72 = &unk_100AD5B30;
    v73 = v71;
LABEL_46:
    sub_100004F84(v73, v72);
    v80 = 1;
    goto LABEL_47;
  }

  v75 = *(v0 + 320);
  v74 = *(v0 + 328);
  v76 = *(v0 + 312);
  v77 = *(v0 + 296);
  (*(v75 + 16))(v74, v77, v76);
  sub_100004F84(v77, &unk_100AD5B30);
  v78 = MultiPinMapAssetMetadata.visitsData.getter();
  result = (*(v75 + 8))(v74, v76);
  if (!v78)
  {
LABEL_45:
    v73 = *(v0 + 368);
    v72 = &unk_100AEED20;
    goto LABEL_46;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  if (v28 >= *(v78 + 16))
  {
    goto LABEL_59;
  }

  v79 = *(v0 + 368);
  (*(v115 + 16))(*(v0 + 360), v78 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v28, *(v0 + 200));

  sub_100004F84(v79, &unk_100AEED20);
  v80 = 0;
LABEL_47:
  v82 = *(v0 + 360);
  v81 = *(v0 + 368);
  v100 = *(v0 + 192);
  v83 = *(v0 + 152);
  v102 = *(v0 + 112);
  v113(v82, v80, 1, *(v0 + 200));
  sub_100021CEC(v82, v81, &unk_100AEED20);
  VisitAssetMetadata.city.getter();
  VisitAssetMetadata.typeOfPlace.getter();
  VisitAssetMetadata.visitStartTime.getter();
  VisitAssetMetadata.visitEndTime.getter();
  VisitAssetMetadata.createdDate.getter();
  VisitAssetMetadata.latitude.getter();
  VisitAssetMetadata.longitude.getter();
  VisitAssetMetadata.styleData.getter();
  VisitAssetMetadata.mapItemData.getter();
  VisitAssetMetadata.isWork.getter();
  VisitAssetMetadata.confidenceLevel.getter();
  VisitAssetMetadata.horizontalAccuracy.getter();
  sub_1000082B4(v100, v83, &unk_100AEED30);
  v84 = v42(v83, 1, v102);
  v86 = *(v0 + 152);
  v85 = *(v0 + 160);
  if (v84 == 1)
  {
    v87 = *(v0 + 112);
    v98(v85, enum case for AssetSource.locationPicker(_:), v87);
    if (v42(v86, 1, v87) != 1)
    {
      sub_100004F84(*(v0 + 152), &unk_100AEED30);
    }
  }

  else
  {
    (*(*(v0 + 120) + 32))(v85, *(v0 + 152), *(v0 + 112));
  }

  v99 = *(v0 + 368);
  v88 = *(v0 + 352);
  v103 = *(v0 + 224);
  v101 = *(v0 + 200);
  v107(*(v0 + 160), 0, 1, *(v0 + 112));

  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  sub_100004F84(v99, &unk_100AEED20);
  v113(v88, 0, 1, v101);
  sub_100021CEC(v88, v99, &unk_100AEED20);
  sub_100691750(v28, v103);
  v117 = *v118;
  (*v118)(v103, v101);
  MultiPinMapAssetMetadata.mapCameraData.getter();
  MultiPinMapAssetMetadata.isSlim.getter();
  result = MultiPinMapAssetMetadata.revision.getter();
  if (v89)
  {
    v90 = 0;
  }

  else
  {
    v90 = result;
  }

  if (!__OFADD__(v90, 1))
  {
    v91 = *(v0 + 320);
    v109 = *(v0 + 312);
    v110 = *(v0 + 336);
    v92 = *(v0 + 288);
    v114 = *(v0 + 280);
    v93 = *(v0 + 232);
    v95 = *(v0 + 192);
    v94 = *(v0 + 200);
    v96 = *(v0 + 80);
    MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
    sub_100004F84(v95, &unk_100AEED30);
    v117(v93, v94);
    (*(v91 + 8))(v110, v109);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD38D8);
    v97 = swift_allocObject();
    (*(v92 + 56))(v97 + *(*v97 + 104), 1, 1, v114);
    *(v97 + *(*v97 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v96, v97 + *(*v97 + 120), &qword_100AD38D0);
    *(v112 + v111) = v97;

    goto LABEL_23;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1001B6498()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return _swift_task_switch(sub_1001B65B8, v3, v2);
}

uint64_t sub_1001B65B8()
{
  v1 = v0[8];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = v1;
    v6 = swift_task_alloc();
    v0[50] = v6;
    *v6 = v0;
    v6[1] = sub_1001B66A4;
    v8 = v0[2];
    v7 = v0[3];

    return sub_10078BBDC(v8, v7, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B66A4()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return _swift_task_switch(sub_1001B67C4, v3, v2);
}

uint64_t sub_1001B67C4()
{
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_1001B6878;
  v2 = *(v0 + 16);

  return sub_1001DA5A8(v2);
}

uint64_t sub_1001B6878()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return _swift_task_switch(sub_1001B6998, v3, v2);
}

uint64_t sub_1001B6998()
{
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_10044BE48(v0[8] + OBJC_IVAR____TtC7Journal5Asset_id);
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v5 object:isa];

  (*(v3 + 8))(v2, v4);
  sub_100004F84(v0[46], &unk_100AEED20);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001B6C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_1000F24EC(&qword_100AD38D0);
  v4[7] = swift_task_alloc();
  v6 = sub_1000F24EC(&unk_100AD5B30);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[14] = v7;
  v4[15] = v9;

  return _swift_task_switch(sub_1001B6DB4, v7, v9);
}

uint64_t sub_1001B6DB4()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  v3 = v0[13];
  if (*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {

    sub_1000768B4(v3);
  }

  else
  {
    v4 = type metadata accessor for MultiPinMapAssetMetadata();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  v5 = v0[12];
  sub_1000082B4(v0[13], v5, &unk_100AD5B30);
  v6 = type metadata accessor for MultiPinMapAssetMetadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(v5, 1, v6);
  v10 = v0[12];
  if (v9 == 1)
  {
    sub_100004F84(v0[12], &unk_100AD5B30);
    if (!v0[4])
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  MultiPinMapAssetMetadata.visitsData.getter();
  (*(v7 + 8))(v10, v6);
  if (v0[4])
  {
LABEL_6:
    sub_1000065A8(0, &qword_100AD91B0);
    NSCoding<>.toData.getter();
  }

LABEL_8:
  v11 = v0[11];
  sub_1000082B4(v0[13], v11, &unk_100AD5B30);
  v12 = v8(v11, 1, v6);
  v13 = v0[11];
  if (v12 == 1)
  {
    sub_100004F84(v0[11], &unk_100AD5B30);
  }

  else
  {
    MultiPinMapAssetMetadata.isSlim.getter();
    (*(v7 + 8))(v13, v6);
  }

  v14 = v0[10];
  sub_1000082B4(v0[13], v14, &unk_100AD5B30);
  v15 = v8(v14, 1, v6);
  v16 = v0[10];
  if (v15 == 1)
  {
    result = sub_100004F84(v0[10], &unk_100AD5B30);
  }

  else
  {
    v18 = MultiPinMapAssetMetadata.revision.getter();
    v20 = v19;
    result = (*(v7 + 8))(v16, v6);
    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v18 = 0;
LABEL_15:
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v21 = v2;
  v22 = v1;
  v23 = v0[8];
  v24 = v0[9];
  v25 = v0[7];
  MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8);
  v26 = swift_allocObject();
  (*(v24 + 56))(v26 + *(*v26 + 104), 1, 1, v23);
  *(v26 + *(*v26 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v25, v26 + *(*v26 + 120), &qword_100AD38D0);
  *(v22 + v21) = v26;

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = v0[5];
  ObjectType = swift_getObjectType();
  v30 = v28;
  v31 = swift_task_alloc();
  v0[16] = v31;
  *v31 = v0;
  v31[1] = sub_1001B723C;
  v33 = v0[2];
  v32 = v0[3];

  return sub_10078BBDC(v33, v32, ObjectType, v27);
}

uint64_t sub_1001B723C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1001B735C, v3, v2);
}

uint64_t sub_1001B735C()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1001B7410;
  v2 = *(v0 + 16);

  return sub_1001DA5A8(v2);
}

uint64_t sub_1001B7410()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1001B7530, v3, v2);
}

uint64_t sub_1001B7530()
{
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_10044BE48(v0[5] + OBJC_IVAR____TtC7Journal5Asset_id);
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v3 object:isa];

  sub_100004F84(v2, &unk_100AD5B30);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001B76C4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001B7718()
{
  type metadata accessor for MapAssetCRUDActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100B2F500 = v0;
  return result;
}

unint64_t sub_1001B7754()
{
  result = qword_100AD6BF0;
  if (!qword_100AD6BF0)
  {
    type metadata accessor for AssetSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6BF0);
  }

  return result;
}

uint64_t sub_1001B77AC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD6BF8);
  sub_10000617C(v0, qword_100AD6BF8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001B782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001B784C, 0, 0);
}

uint64_t sub_1001B784C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1001B78E8;
  v2 = *(v0 + 16);

  return sub_1001B79DC(0, 0, v2, 0);
}

uint64_t sub_1001B78E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001B79DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 176) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = sub_1000F24EC(&qword_100AD6C98);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for DrawingAssetMetadata();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v5 + 88) = v7;
  *v7 = v5;
  v7[1] = sub_1001B7B18;

  return PaperMarkup.dataRepresentation()();
}

uint64_t sub_1001B7B18(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    if (v4[2])
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return _swift_task_switch(sub_1001B82A4, v5, v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[15] = v8;
    *v8 = v4;
    v8[1] = sub_1001B7CC8;

    return PaperMarkup.indexableContent.getter();
  }
}

uint64_t sub_1001B7CC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v3[16] = a1;
  v3[17] = a2;

  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[18] = v5;
  v3[19] = v7;

  return _swift_task_switch(sub_1001B7E18, v5, v7);
}

uint64_t sub_1001B7E18()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 176);
  sub_100049ED8(*(v0 + 96), *(v0 + 104));
  DrawingAssetMetadata.init(drawingData:indexableContent:)();
  (*(v2 + 16))(v3, v1, v4);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD6CA0);
  v5 = swift_allocObject();
  *(v0 + 160) = v5;
  v6 = *(*v5 + 104);
  v7 = sub_1000F24EC(&qword_100AD6C90);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + *(*v5 + 112)) = xmmword_100941EE0;
  sub_1001BA66C(v3, v5 + *(*v5 + 120));
  *(v14 + OBJC_IVAR____TtC7Journal12DrawingAsset_metadata) = v5;

  if (v15 == 1)
  {
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_1001B80D0;
    v9 = *(v0 + 16);

    return sub_1004F0EB8(v9);
  }

  else
  {
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    sub_1000340DC(v12, v11);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1001B80D0()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1001B81F0, v3, v2);
}

uint64_t sub_1001B81F0()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  sub_1000340DC(v1, v2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001B82A4()
{
  if (qword_100ACFA58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD6BF8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to generate markup data: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001B845C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PaperMarkup();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6C90);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DrawingAssetMetadata();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AB814(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100004F84(v8, &qword_100AD6C90);
    v13 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    DrawingAssetMetadata.drawingData.getter();
    PaperMarkup.init(dataRepresentation:)();
    (*(v10 + 8))(v12, v9);
    (*(v3 + 32))(a1, v5, v2);
    v13 = 0;
  }

  return (*(v3 + 56))(a1, v13, 1, v2);
}

id sub_1001B8828()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrawingAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001B88A0()
{
  v0 = sub_1000F24EC(&qword_100AD6C90);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1006AB814(&v7 - v1);
  v3 = type metadata accessor for DrawingAssetMetadata();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100004F84(v2, &qword_100AD6C90);
    return 0;
  }

  else
  {
    v6 = DrawingAssetMetadata.indexableContent.getter();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

id sub_1001B89D8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD6C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v36[-v3];
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v9 = &v36[-v8];
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UTType.item.getter();
  v14 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithContentType:isa];

  (*(v11 + 8))(v13, v10);
  sub_10012B77C(0x676E6977617264, 0xE700000000000000, 0, 0);
  v17 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v17 && (v18 = [v17 entry]) != 0)
  {
    v19 = v18;
    JournalEntryMO.displayDate.getter();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v9, v20, 1, v21);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  sub_1000F24EC(&unk_100AD9A60);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100940080;
  v26 = sub_10012C00C(v22, v24, v9);
  v28 = v27;

  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setAlternateNames:v29];

  sub_100004F84(v9, &unk_100AD4790);
  sub_1006AB814(v4);
  v30 = type metadata accessor for DrawingAssetMetadata();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v4, 1, v30) == 1)
  {
    sub_100004F84(v4, &qword_100AD6C90);
LABEL_9:
    v34 = 0;
    goto LABEL_10;
  }

  DrawingAssetMetadata.indexableContent.getter();
  v33 = v32;
  (*(v31 + 8))(v4, v30);
  if (!v33)
  {
    goto LABEL_9;
  }

  v34 = String._bridgeToObjectiveC()();

LABEL_10:
  [v16 setTextContent:v34];

  return v16;
}

uint64_t sub_1001B8F1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DrawingAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B8F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v5[5] = sub_1000F24EC(&qword_100AD6C98);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v10 = type metadata accessor for PaperMarkup();
  v5[19] = v10;
  v5[20] = *(v10 - 8);
  v5[21] = swift_task_alloc();
  v11 = type metadata accessor for PKDrawing();
  v5[22] = v11;
  v5[23] = *(v11 - 8);
  v5[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v5[25] = v12;
  v5[26] = v14;

  return _swift_task_switch(sub_1001B922C, v12, v14);
}

uint64_t sub_1001B922C()
{
  sub_100049ED8(v0[2], v0[3]);
  PKDrawing.init(data:)();
  PKDrawing.bounds.getter();
  PaperMarkup.init(bounds:)();
  PaperMarkup.append(contentsOf:)();
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_1001B93F4;

  return PaperMarkup.dataRepresentation()();
}

uint64_t sub_1001B93F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    v7 = v6[25];
    v8 = v6[26];
    v9 = sub_1001B990C;
  }

  else
  {
    v6[29] = a2;
    v6[30] = a1;
    v7 = v6[25];
    v8 = v6[26];
    v9 = sub_1001B9528;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1001B9528()
{
  v31 = v0[24];
  v29 = v0[23];
  v30 = v0[22];
  v26 = v0[20];
  v27 = v0[19];
  v28 = v0[21];
  v22 = v0[18];
  v32 = v0[15];
  v1 = v0[14];
  v33 = v0[17];
  v2 = v0[12];
  v34 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v35 = v0[9];
  v6 = v0[7];
  v19 = v5;
  v7 = v0[4];
  v23 = v0[6];
  v24 = v0[2];
  v25 = v0[3];
  v20 = v0[16];
  (*(v20 + 104))();
  v21 = *(v2 + 16);
  v21(v1, v7, v4);
  UUID.init()();
  v8 = objc_allocWithZone(type metadata accessor for DrawingAsset());
  *&v8[OBJC_IVAR____TtC7Journal12DrawingAsset_metadata] = 0;
  v9 = *(v5 + 16);
  v10 = v3;
  v9(v35, v3, v6);
  (*(v20 + 16))(v33, v22, v32);
  v21(v34, v1, v4);
  v11 = sub_100285908(v35, v33, v34);
  (*(v19 + 8))(v10, v6);
  v12 = *(v2 + 8);
  v12(v1, v4);
  (*(v20 + 8))(v22, v32);
  v13 = v11;
  DrawingAssetMetadata.init(drawingData:indexableContent:)();
  sub_1000340DC(v24, v25);
  v12(v7, v4);
  (*(v26 + 8))(v28, v27);
  (*(v29 + 8))(v31, v30);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD6CA0);
  v14 = swift_allocObject();
  v15 = *(*v14 + 104);
  v16 = sub_1000F24EC(&qword_100AD6C90);
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
  sub_1001BA66C(v23, v14 + *(*v14 + 120));
  *&v13[OBJC_IVAR____TtC7Journal12DrawingAsset_metadata] = v14;

  v17 = v0[1];

  return v17(v13);
}

uint64_t sub_1001B990C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[4];
  sub_1000340DC(v0[2], v0[3]);
  (*(v8 + 8))(v9, v7);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

id sub_1001B9A48(uint64_t a1)
{
  v34 = a1;
  v38 = type metadata accessor for UUID();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v39 = &v31 - v4;
  v5 = type metadata accessor for AssetSource();
  v35 = *(v5 - 8);
  v6 = v35;
  __chkstk_darwin(v5);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AssetType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v31 - v17;
  v19 = *(v12 + 104);
  v33 = v11;
  v19(&v31 - v17, enum case for AssetType.drawing(_:), v11, v16);
  v32 = *(v6 + 16);
  v20 = a1;
  v21 = v5;
  v32(v10, v20, v5);
  v22 = v39;
  UUID.init()();
  v23 = objc_allocWithZone(type metadata accessor for DrawingAsset());
  *&v23[OBJC_IVAR____TtC7Journal12DrawingAsset_metadata] = 0;
  v24 = v36;
  v25 = v22;
  v26 = v38;
  (*(v40 + 16))(v36, v25, v38);
  (*(v12 + 16))(v14, v18, v11);
  v27 = v37;
  v32(v37, v10, v21);
  v28 = sub_100285908(v24, v14, v27);
  v29 = *(v35 + 8);
  v29(v34, v21);
  (*(v40 + 8))(v39, v26);
  v29(v10, v21);
  (*(v12 + 8))(v18, v33);
  return v28;
}

uint64_t sub_1001B9DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  sub_1000F24EC(&qword_100AD5170);
  v4[4] = swift_task_alloc();
  sub_1000F24EC(&unk_100ADC5E0);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for PaperMarkup();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v4[8] = *(v7 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[11] = v8;
  v4[12] = *(v8 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for AssetSource();
  v4[15] = v9;
  v4[16] = *(v9 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v10 = type metadata accessor for AssetType();
  v4[19] = v10;
  v4[20] = *(v10 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return _swift_task_switch(sub_1001BA070, v11, v13);
}

uint64_t sub_1001BA070()
{
  v41 = v0[22];
  v31 = v0[21];
  v1 = v0[19];
  v2 = v0[18];
  v40 = v0[17];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v28 = v0[13];
  v43 = v0[12];
  v29 = v0[11];
  v36 = v0[7];
  v38 = v0[6];
  v6 = v0[2];
  v33 = v0[3];
  v35 = v0[5];
  v26 = v0[20];
  (*(v26 + 104))();
  v27 = *(v3 + 16);
  v27(v2, v6, v4);
  UUID.init()();
  v7 = objc_allocWithZone(type metadata accessor for DrawingAsset());
  *&v7[OBJC_IVAR____TtC7Journal12DrawingAsset_metadata] = 0;
  (*(v43 + 16))(v28, v5, v29);
  (*(v26 + 16))(v31, v41, v1);
  v27(v40, v2, v4);
  v8 = sub_100285908(v28, v31, v40);
  (*(v43 + 8))(v5, v29);
  v9 = *(v3 + 8);
  v9(v2, v4);
  (*(v26 + 8))(v41, v1);
  sub_1001BA4DC(v33, v35);
  v10 = (*(v36 + 48))(v35, 1, v38);
  v11 = v0[15];
  if (v10 == 1)
  {
    v12 = v0[5];
    v13 = v0[2];
    sub_100004F84(v0[3], &unk_100ADC5E0);
    v9(v13, v11);
    sub_100004F84(v12, &unk_100ADC5E0);
  }

  else
  {
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[7];
    v17 = v0[6];
    v18 = v0[4];
    v30 = v0[8];
    v32 = v18;
    v37 = v0[3];
    v39 = v0[2];
    v42 = v9;
    v19 = *(v16 + 32);
    v19(v14, v0[5], v17);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    (*(v16 + 16))(v15, v14, v17);
    v34 = v11;
    v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v19(v22 + v21, v15, v17);
    *(v22 + ((v30 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v23 = v8;
    sub_1003E9628(0, 0, v32, &unk_1009458D8, v22);

    sub_100004F84(v37, &unk_100ADC5E0);
    v42(v39, v34);
    (*(v16 + 8))(v14, v17);
  }

  v24 = v0[1];

  return v24(v8);
}

uint64_t sub_1001BA4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100ADC5E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BA54C(uint64_t a1)
{
  v4 = *(type metadata accessor for PaperMarkup() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_1001B782C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1001BA66C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BA6DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

uint64_t sub_1001BA750()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

void sub_1001BA7C4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for EmojiLabelView();
  objc_msgSendSuper2(&v5, "updateProperties");
  v1 = *&v0[OBJC_IVAR____TtC7Journal14EmojiLabelView_label];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (v4)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  [v1 setText:v2];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  [v1 setFont:v3];
}

void sub_1001BA990()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal14EmojiLabelView_label];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (v13)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  [v1 setText:v2];

  [v1 setTextAlignment:1];
  [v0 addSubview:v1];
  v3 = [v1 superview];
  if (v3)
  {
    v4 = v3;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v4 centerXAnchor];
    v6 = [v1 centerXAnchor];
    v7 = [v6 constraintEqualToAnchor:v5];

    [v7 setConstant:0.0];
    if (v7)
    {
      [v7 setActive:1];
    }
  }

  v8 = [v1 superview];
  if (v8)
  {
    v9 = v8;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v1 centerYAnchor];
    v11 = [v9 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:0.0];
    if (v12)
    {
      [v12 setActive:1];
    }
  }
}

id sub_1001BAC00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiLabelView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmojiLabelView()
{
  result = qword_100AD6CE8;
  if (!qword_100AD6CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BAD60()
{
  sub_1001BAF0C(319, &qword_100AD6CF8, &unk_100AE4870, &unk_100945360, sub_1001BAE90);
  if (v0 <= 0x3F)
  {
    sub_1001BAF0C(319, &qword_100AD6D08, &qword_100AE9F70, &unk_10095EAA0, sub_1001BAFA4);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1001BAE90()
{
  result = qword_100AD6D00;
  if (!qword_100AD6D00)
  {
    sub_1000F2A18(&unk_100AE4870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D00);
  }

  return result;
}

void sub_1001BAF0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1000F2A18(a3);
    type metadata accessor for UIView.Invalidations.Properties();
    a5();
    v7 = type metadata accessor for UIView.Invalidating();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1001BAFA4()
{
  result = qword_100AD6D10;
  if (!qword_100AD6D10)
  {
    sub_1000F2A18(&qword_100AE9F70);
    sub_1001BB028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D10);
  }

  return result;
}

unint64_t sub_1001BB028()
{
  result = qword_100AD6D18;
  if (!qword_100AD6D18)
  {
    sub_1001BB080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D18);
  }

  return result;
}

unint64_t sub_1001BB080()
{
  result = qword_100AD2A78;
  if (!qword_100AD2A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD2A78);
  }

  return result;
}

double sub_1001BB0CC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1001BB14C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t sub_1001BB1CC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1001BB24C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static UIView.Invalidating.subscript.setter();
}

id sub_1001BB2C0()
{
  v16 = sub_1000F24EC(&qword_100AD6D20);
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - v2;
  v4 = type metadata accessor for UIView.Invalidations.Properties();
  __chkstk_darwin(v4);
  v5 = sub_1000F24EC(&qword_100AD6D28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC7Journal14EmojiLabelView_label;
  *&v0[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal14EmojiLabelView__emoji;
  v18 = 0;
  v19 = 0;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&unk_100AE4870);
  sub_1001BAE90();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v6 + 32))(&v0[v10], v8, v5);
  v11 = OBJC_IVAR____TtC7Journal14EmojiLabelView__font;
  v18 = 0;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&qword_100AE9F70);
  sub_1001BAFA4();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v1 + 32))(&v0[v11], v3, v16);
  v12 = type metadata accessor for EmojiLabelView();
  v17.receiver = v0;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001BA990();

  return v13;
}

void sub_1001BB598()
{
  v13 = sub_1000F24EC(&qword_100AD6D20);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = &v12 - v2;
  v4 = type metadata accessor for UIView.Invalidations.Properties();
  __chkstk_darwin(v4);
  v5 = sub_1000F24EC(&qword_100AD6D28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC7Journal14EmojiLabelView_label;
  *(v0 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal14EmojiLabelView__emoji;
  v14 = 0;
  v15 = 0;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&unk_100AE4870);
  sub_1001BAE90();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v6 + 32))(v0 + v10, v8, v5);
  v11 = OBJC_IVAR____TtC7Journal14EmojiLabelView__font;
  v14 = 0;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&qword_100AE9F70);
  sub_1001BAFA4();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v1 + 32))(v0 + v11, v3, v13);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001BB860()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD6D30);
  v1 = sub_10000617C(v0, qword_100AD6D30);
  if (qword_100AD0198 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1001BB928(void *a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v53._countAndFlagsBits = a2;
  v53._object = a3;
  v57 = a4;
  v6 = type metadata accessor for Date();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &unk_100AD43A0);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v9 = qword_100B2F9E0;
  v10 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v11 = static NSObject.== infix(_:_:)();

  if (v11)
  {
    v12 = 0x4365746176697270;
  }

  else
  {
    v12 = 0x746E6F436E69616DLL;
  }

  if (v11)
  {
    v13 = 0xEE00747865746E6FLL;
  }

  else
  {
    v13 = 0xEB00000000747865;
  }

  v14 = *(v9 + 16);
  v56 = a1;
  v15 = sub_1007733F4();

  if (v15 && (v16 = v15, v17 = [v16 text], v16, v17))
  {
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_100ACFA60 != -1)
    {
      swift_once();
    }

    v52 = v4;
    v21 = type metadata accessor for Logger();
    sub_10000617C(v21, qword_100AD6D30);

    sub_100049ED8(v18, v20);
    v22 = Logger.logObject.getter();
    v23 = v20;
    v24 = static os_log_type_t.default.getter();

    sub_1000340DC(v18, v23);
    v25 = os_log_type_enabled(v22, v24);
    v50 = v23;
    v51 = v18;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v49 = v8;
      v27 = v26;
      v48 = swift_slowAlloc();
      v58[0] = v48;
      *v27 = 136315394;
      v28 = sub_100008458(v12, v13, v58);

      *(v27 + 4) = v28;
      *(v27 + 12) = 2080;
      v8 = v49;
      v58[3] = Data.getAttributedString()();
      sub_1000F24EC(&qword_100AD6D48);
      v29 = String.init<A>(describing:)();
      v31 = sub_100008458(v29, v30, v58);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v24, "%s text: %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v36 = v56;
    v58[0] = 2960685;
    v58[1] = 0xE300000000000000;
    String.append(_:)(v53);
    v37 = objc_allocWithZone(NSAttributedString);
    v38 = String._bridgeToObjectiveC()();

    v39 = [v37 initWithString:v38];

    v40 = NSAttributedString.getAttributedStringAsData()();
    v42 = v41;

    if (v42 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10003A5C8(v40, v42);
    }

    [v16 setText:isa];

    Date.init()();
    v44 = Date._bridgeToObjectiveC()().super.isa;
    (*(v54 + 8))(v8, v55);
    [v16 setUpdatedDate:v44];

    [v16 setIsUploadedToCloud:0];
    v45 = *(v9 + 16);
    sub_100488D28(v36);

    sub_1000340DC(v51, v50);
  }

  else
  {

    if (qword_100ACFA60 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000617C(v32, qword_100AD6D30);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Unable to find journal entry from to simulate", v35, 2u);
    }
  }

  v46 = v57;
  *v57 = 0;
  v46[1] = 0;
}

uint64_t sub_1001BBEFC(uint64_t a1)
{
  v2 = UUID.uuidString.getter();
  if (qword_100ACFE28 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  __chkstk_darwin(v2);
  v4 = v3;
  sub_1000F24EC(&unk_100AE4870);
  NSManagedObjectContext.performAndWait<A>(_:)();

  swift_beginAccess();
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
}

unint64_t sub_1001BC04C(void *a1)
{
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v57 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v9;
  __chkstk_darwin(v11);
  v65 = &v54 - v12;
  if (qword_100ACFA60 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000617C(v13, qword_100AD6D30);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v17 = 136315138;
    v18 = [v14 debugDescription];
    v55 = v5;
    v19 = v18;
    v20 = v7;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v4;
    v23 = v10;
    v25 = v24;

    v26 = v21;
    v7 = v20;
    v27 = sub_100008458(v26, v25, aBlock);
    v10 = v23;
    v4 = v22;

    *(v17 + 4) = v27;
    v5 = v55;
    _os_log_impl(&_mh_execute_header, v15, v16, "Simulation Merge Conflict with entry: %s", v17, 0xCu);
    sub_10000BA7C(v54);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v29 = [v14 id];
  if (v29)
  {
    v30 = v57;
    v31 = v65;
    v32 = v29;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000065A8(0, &qword_100AD6210);
    (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.background(_:), v4);
    v33 = static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v7, v4);
    v34 = v63;
    v35 = v64;
    (*(v63 + 16))(v10, v31, v64);
    v36 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v37 = (v56 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v28;
    (*(v34 + 32))(v38 + v36, v10, v35);
    v39 = v38 + v37;
    strcpy((v38 + v37), "priv22222222");
    *(v39 + 13) = 0;
    *(v39 + 14) = -5120;
    aBlock[4] = sub_1001BC838;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A602F8;
    v40 = _Block_copy(aBlock);

    v41 = v58;
    static DispatchQoS.unspecified.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_1000826D8();
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    v42 = v59;
    v43 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v62 + 8))(v43, v42);
    (*(v30 + 8))(v41, v61);

    swift_beginAccess();
    if (*(v28 + 24))
    {
      (*(v63 + 8))(v65, v64);
      v44 = *(v28 + 16);
    }

    else
    {
      v45 = UUID.uuidString.getter();
      v47 = v46;
      if (qword_100ACFE28 != -1)
      {
        v53 = v45;
        swift_once();
        v45 = v53;
      }

      __chkstk_darwin(v45);
      *(&v54 - 6) = v49;
      *(&v54 - 5) = v48;
      *(&v54 - 4) = v47;
      *(&v54 - 3) = 0x313131316E69616DLL;
      *(&v54 - 2) = 0xEA00000000003131;
      v50 = v49;
      sub_1000F24EC(&unk_100AE4870);
      NSManagedObjectContext.performAndWait<A>(_:)();

      (*(v63 + 8))(v65, v64);
      v44 = v66;
      v51 = v67;
      *(v28 + 16) = v66;
      *(v28 + 24) = v51;
    }
  }

  else
  {

    return 0xD00000000000002FLL;
  }

  return v44;
}

uint64_t sub_1001BC838()
{
  type metadata accessor for UUID();
  v1 = *(v0 + 16);

  return sub_1001BBEFC(v1);
}

id sub_1001BC9DC(void *a1)
{
  v1[OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing] = 0;
  v3 = OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_activityIndicator;
  *&v1[v3] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CloudSyncLoadingViewButton();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1001BCAA4();
  }

  return v5;
}

void sub_1001BCAA4()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  static UIButton.Configuration.borderless()();
  v7 = type metadata accessor for UIButton.Configuration();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  UIButton.configuration.setter();
  [v1 setPreferredBehavioralStyle:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v8) = 1144750080;
  [v1 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v1 setContentHuggingPriority:1 forAxis:v9];
  [v1 _setMonochromaticTreatment:1];
  [v1 _setEnableMonochromaticTreatment:1];
  [v1 addSubview:*&v1[OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_activityIndicator]];
  sub_100013178(0.0);

  [v1 setAccessibilityElementsHidden:1];
  [v1 setIsAccessibilityElement:0];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v10];

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  if (qword_100ACFF90 != -1)
  {
    swift_once();
  }

  [v12 addObserver:v1 selector:? name:? object:?];

  v13 = [v11 defaultCenter];
  if (qword_100ACFF98 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v1 selector:? name:? object:?];

  v14 = [v11 defaultCenter];
  type metadata accessor for AppleAccountManager();
  v15 = static AppleAccountManager.statusChangedNotification.getter();
  [v14 addObserver:v1 selector:"updateDisplay" name:v15 object:0];

  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v16 forControlEvents:64];
  sub_1001BD358();
}

void sub_1001BCF74()
{
  v0 = sub_1000F24EC(&qword_100AD6DE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  v3 = type metadata accessor for AppleAccountManager.AccountStatus();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  type metadata accessor for AppleAccountManager();
  static AppleAccountManager.shared.getter();
  dispatch thunk of AppleAccountManager.accountStatus.getter();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    sub_100004F84(v2, &qword_100AD6DE0);
    return;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 104))(v7, enum case for AppleAccountManager.AccountStatus.signedInDataclassDisabled(_:), v3);
  v12 = static AppleAccountManager.AccountStatus.== infix(_:_:)();
  v13 = *(v4 + 8);
  v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    v13(v9, v3);
LABEL_13:

    return;
  }

  type metadata accessor for NotSyncingPopOverViewController();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setModalPresentationStyle:7];
  v15 = [v14 popoverPresentationController];
  if (v15)
  {
    v16 = v15;
    [v15 setSourceItem:v11];
    [v16 setPermittedArrowDirections:1];
    [v16 setDelegate:v11];
  }

  v17 = [v14 view];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v20 = v19;
  v22 = v21;

  [v14 setPreferredContentSize:{v20, v22}];
  v23 = [v11 window];
  if (!v23)
  {
    v13(v9, v3);

    goto LABEL_13;
  }

  v24 = v23;
  v25 = [v23 rootViewController];

  if (v25)
  {
    [v25 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
  }

  v13(v9, v3);
}

uint64_t sub_1001BD358()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v35[2] = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v35[1] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE4250);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v35 - v11;
  __chkstk_darwin(v10);
  v14 = v35 - v13;
  v15 = sub_1000F24EC(&qword_100AD6DE0);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - v16;
  v18 = type metadata accessor for AppleAccountManager.AccountStatus();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v35 - v23;
  type metadata accessor for AppleAccountManager();
  static AppleAccountManager.shared.getter();
  dispatch thunk of AppleAccountManager.accountStatus.getter();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_100004F84(v17, &qword_100AD6DE0);
  }

  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v22, v24, v18);
  v26 = (*(v19 + 88))(v22, v18);
  if (v26 != enum case for AppleAccountManager.AccountStatus.signedOut(_:))
  {
    if (v26 == enum case for AppleAccountManager.AccountStatus.signedInDataclassDisabled(_:))
    {
      v9 = OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing;
      *(v0 + OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing) = 0;
      UIButton.configuration.getter();
      v28 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v28 - 8) + 48))(v14, 1, v28))
      {
        sub_1001BF174(v14, v12);
        UIButton.configuration.setter();
        sub_100004F84(v14, &qword_100AE4250);
LABEL_20:
        if (v9[v1])
        {
          v33 = &selRef_startAnimating;
        }

        else
        {
          v33 = &selRef_stopAnimating;
        }

        [*(v1 + OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_activityIndicator) *v33];
        [v1 setAccessibilityElementsHidden:0];
        [v1 setIsAccessibilityElement:1];
        goto LABEL_24;
      }
    }

    else
    {
      if (v26 == enum case for AppleAccountManager.AccountStatus.signedInDataclassEnabled(_:) || v26 == enum case for AppleAccountManager.AccountStatus.signedInDataclassUnavailable(_:))
      {
        goto LABEL_4;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    v31 = String._bridgeToObjectiveC()();
    v32 = [objc_opt_self() systemImageNamed:v31];

    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
    goto LABEL_20;
  }

LABEL_4:
  UIButton.configuration.getter();
  v27 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v27 - 8) + 48))(v9, 1, v27))
  {
    sub_1001BF174(v9, v12);
    UIButton.configuration.setter();
    sub_100004F84(v9, &qword_100AE4250);
  }

  else
  {
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  v29 = OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing;
  if (*(v1 + OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing))
  {
    v30 = &selRef_startAnimating;
  }

  else
  {
    v30 = &selRef_stopAnimating;
  }

  [*(v1 + OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_activityIndicator) *v30];
  if (*(v1 + v29) == 1)
  {
    [v1 setAccessibilityElementsHidden:0];
    [v1 setIsAccessibilityElement:1];
LABEL_24:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v34 = String._bridgeToObjectiveC()();

    [v1 setAccessibilityValue:v34];

    return (*(v19 + 8))(v24, v18);
  }

  [v1 setAccessibilityElementsHidden:1];
  [v1 setIsAccessibilityElement:0];
  return (*(v19 + 8))(v24, v18);
}

uint64_t sub_1001BDA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001BDAD8, v6, v5);
}

uint64_t sub_1001BDAD8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing) = 1;
    sub_1001BD358();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001BDB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001BDC2C, v6, v5);
}

uint64_t sub_1001BDC2C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing) = 0;
    sub_1001BD358();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001BDCE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Notification();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v16 = a1;

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v15;

  sub_1003E9628(0, 0, v9, a5, v18);

  return (*(v11 + 8))(v13, v10);
}

id sub_1001BDFA8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(UILabel) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];

  [v2 setNumberOfLines:0];
  v4 = sub_100047788(UIFontTextStyleTitle3, &off_100A574E0, 0);
  sub_100047D60(&unk_100A57500);
  [v2 setFont:v4];

  v5 = [objc_opt_self() labelColor];
  [v2 setTextColor:v5];

  return v2;
}

id sub_1001BE18C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(UILabel) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];

  [v2 setNumberOfLines:0];
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  [v2 setFont:v4];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v5];

  return v2;
}

uint64_t sub_1001BE374(void *a1)
{
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v8 = a1;
  sub_1008B4384(v4);
  sub_1008B4EFC(v4, 0, a1, 0);

  sub_100004F84(v4, &unk_100AD6DD0);
  return sub_1001295EC(v7);
}

void sub_1001BE494()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_stackView];
  [v2 addSubview:v4];

  [v4 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_titleLabel]];
  [v4 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_messageLabel]];
  [v4 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_actionButton]];
  sub_1000F24EC(&unk_100AD4780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100941040;
  v6 = [v4 topAnchor];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  v11 = [v6 constraintEqualToAnchor:v10 constant:15.0];

  *(v5 + 32) = v11;
  v12 = [v4 leadingAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 leadingAnchor];
  v17 = [v12 constraintEqualToAnchor:v16 constant:15.0];

  *(v5 + 40) = v17;
  v18 = [v4 trailingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 trailingAnchor];
  v23 = [v18 constraintEqualToAnchor:v22 constant:-15.0];

  *(v5 + 48) = v23;
  v24 = [v4 bottomAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v24 constraintEqualToAnchor:v29 constant:-15.0];

  *(v5 + 56) = v30;
  v31 = [v4 widthAnchor];
  v32 = [v31 constraintLessThanOrEqualToConstant:250.0];

  *(v5 + 64) = v32;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
}

id sub_1001BE8C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_titleLabel;
  *&v4[v9] = sub_1001BDFA8();
  v10 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_messageLabel;
  *&v4[v10] = sub_1001BE18C();
  sub_1000065A8(0, &qword_100AD4420);
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000065A8(0, &qword_100ADFC10);
  v12 = v11;
  v25.value.super.super.isa = v11;
  v13.super.super.super.super.isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v25).super.super.super.super.isa;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  [(objc_class *)v13.super.super.super.super.isa setTitle:v14 forState:0];

  v15 = [objc_opt_self() labelColor];
  [(objc_class *)v13.super.super.super.super.isa setTitleColor:v15 forState:0];

  v16 = [(objc_class *)v13.super.super.super.super.isa titleLabel];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v17 setFont:v18];
  }

  *&v4[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_actionButton] = v13;
  v19 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_stackView;
  v20 = [objc_allocWithZone(UIStackView) init];
  [v20 setAxis:1];
  [v20 setSpacing:10.0];
  [v20 setAlignment:1];
  [v20 setDistribution:0];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v19] = v20;
  if (a2)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v24.receiver = v4;
  v24.super_class = type metadata accessor for NotSyncingPopOverViewController();
  v22 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", v21, a3);

  return v22;
}