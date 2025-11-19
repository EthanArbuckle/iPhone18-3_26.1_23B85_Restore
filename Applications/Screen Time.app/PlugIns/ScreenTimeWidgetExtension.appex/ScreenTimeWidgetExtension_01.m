uint64_t sub_100018840(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100049FF8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100014784(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t *sub_1000188D8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void *sub_10001893C()
{

  v32 = sub_100016620(v0);
  sub_100015048(&v32);
  v1 = v32;
  LODWORD(v2) = v32 < 0 || (v32 & 0x4000000000000000) != 0;
  if (v2 == 1)
  {
    goto LABEL_33;
  }

  v3 = *(v32 + 16);
  if (v3 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(v32 + 16);
  }

  if (v3 < v4)
  {
LABEL_41:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0 && v4)
      {
        sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);

        sub_10004A1E8(0);
        if (v4 != 1)
        {
          sub_10004A1E8(1);
          if (v4 != 2)
          {
            sub_10004A1E8(2);
          }
        }
      }

      else
      {
      }

      if (v2)
      {
        v5 = sub_10004A318();
        v7 = v6;
        v9 = v8;
        v11 = v10;

        v4 = v11 >> 1;
        v1 = v5;
      }

      else
      {
        v9 = 0;
        v7 = v1 + 32;
      }

      v12 = v4 - v9;
      if (__OFSUB__(v4, v9))
      {
        break;
      }

      if (!v12)
      {
        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }

      v32 = _swiftEmptyArrayStorage;
      sub_1000238C4(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        goto LABEL_43;
      }

      if (v4 <= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v4;
      }

      v14 = v32;
      v15 = v13 - v9;
      v2 = (v7 + 8 * v9);
      while (v15)
      {
        v16 = *v2;
        v17 = [v16 localizedDisplayName];
        v18 = sub_100049E08();
        v20 = v19;

        [v16 quantity];
        v22 = v21;
        v23 = [v16 identifier];
        v1 = sub_100049E08();
        v25 = v24;

        v32 = v14;
        v27 = *(v14 + 16);
        v26 = *(v14 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1000238C4((v26 > 1), v27 + 1, 1);
          v14 = v32;
        }

        *(v14 + 16) = v27 + 1;
        v28 = v14 + 48 * v27;
        *(v28 + 32) = v18;
        *(v28 + 40) = v20;
        *(v28 + 48) = v22;
        *(v28 + 56) = v1;
        *(v28 + 64) = v25;
        *(v28 + 72) = 3;
        --v15;
        ++v2;
        if (!--v12)
        {
          swift_unknownObjectRelease();
          return v14;
        }
      }

      __break(1u);
LABEL_33:
      v30 = sub_10004A308();
      if (sub_10004A308() < 0)
      {
        goto LABEL_44;
      }

      if (v30 >= 3)
      {
        v31 = 3;
      }

      else
      {
        v31 = v30;
      }

      if (v30 >= 0)
      {
        v4 = v31;
      }

      else
      {
        v4 = 3;
      }

      if (sub_10004A308() < v4)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

void sub_100018C4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000AE58(a2);
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v7)
  {
LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  v8 = v3;
  v9 = v4;
  v32 = v2;
  sub_1000238E4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v9 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    v11 = v10 - v9;
    v12 = (v8 + 8 * v9);
    while (v11)
    {
      v13 = *v12;
      v14 = [v13 identifier];
      v15 = sub_100049E08();
      v33 = v16;
      v34 = v15;

      v17 = [v13 type];
      v18 = &selRef_darkColorsMonogram;
      if (v17 == 1)
      {
        v18 = &selRef_iconImage;
      }

      v19 = [v13 *v18];
      v20 = [v13 type];
      v21 = &selRef_lightColorsMonogram;
      if (v20 == 1)
      {
        v21 = &selRef_iconImage;
      }

      v22 = [v13 *v21];
      [v13 quantity];
      v24 = v23;
      v25 = [v13 localizedDisplayName];
      v26 = sub_100049E08();
      v28 = v27;

      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_1000238E4((v29 > 1), v30 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v30 + 1;
      v31 = &_swiftEmptyArrayStorage[7 * v30];
      *(v31 + 4) = v34;
      *(v31 + 5) = v33;
      *(v31 + 6) = v19;
      *(v31 + 7) = v22;
      v31[8] = v24;
      *(v31 + 9) = v26;
      *(v31 + 10) = v28;
      --v11;
      ++v12;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100018E78(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v10 = result;
    v4 = sub_10004A308();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_32;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    if (!v3)
    {
LABEL_8:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_10004A308();
LABEL_13:
  if (result < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3)
  {
    result = sub_10004A308();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
    goto LABEL_35;
  }

  if (v4 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v7 < v4)
  {
    sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      sub_10004A1E8(v8);
      v8 = v9;
    }

    while (v4 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_10004A318();
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_100019038(unint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = sub_100049F68();
      v4[2] = a2;
      bzero(v4 + 4, 8 * a2);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_100018E78(a2, a1);
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = v10 >> 1;
    v12 = (v10 >> 1) - v8;
    if (!v12)
    {
LABEL_12:
      swift_unknownObjectRelease();
      return;
    }

    v13 = 0;
    if (v8 > v11)
    {
      v11 = v8;
    }

    v14 = v11 - v8;
    v15 = v6 + 8 * v8;
    while (v14 != v13)
    {
      v16 = *(v15 + 8 * v13);
      [v16 quantity];
      v18 = v17;

      if (v13 >= v4[2])
      {
        goto LABEL_14;
      }

      *&v4[v13++ + 4] = v18;
      if (v12 == v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
}

size_t sub_100019170(char *a1, uint64_t a2, uint64_t a3)
{
  v142 = a2;
  v169 = a1;
  v175 = type metadata accessor for HourlyUsage();
  v172 = *(v175 - 8);
  v4 = *(v172 + 64);
  __chkstk_darwin(v175);
  v162 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  v157 = *(v153 - 8);
  v6 = *(v157 + 64);
  v7 = __chkstk_darwin(v153);
  v152 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v151 = &v141 - v9;
  v168 = sub_100048E98();
  v144 = *(v168 - 1);
  v10 = *(v144 + 64);
  v11 = __chkstk_darwin(v168);
  v174 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v154 = &v141 - v14;
  __chkstk_darwin(v13);
  v161 = &v141 - v15;
  *&v166 = sub_1000027D4(&qword_10005DE10, &qword_10004B8E0);
  v16 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v18 = &v141 - v17;
  v165 = sub_1000027D4(&qword_10005DE18, &qword_10004B8E8);
  v19 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v170 = &v141 - v20;
  v167 = sub_1000027D4(&qword_10005DE20, &qword_10004B8F0);
  v21 = *(*(v167 - 8) + 64);
  v22 = __chkstk_darwin(v167);
  v24 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v141 - v25;
  v27 = sub_100049058();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v32 = &v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v141 - v33;
  v160 = sub_1000027D4(&qword_10005DE28, &qword_10004B8F8);
  v35 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v164 = &v141 - v36;
  v37 = sub_100049498();
  v143 = *(v37 - 8);
  v38 = *(v143 + 64);
  __chkstk_darwin(v37);
  v163 = &v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = _swiftEmptyArrayStorage;
  sub_100048E88();
  v171 = a3;
  sub_100048E68();
  sub_10001B1D0(&qword_10005DBF0, &type metadata accessor for Date);
  v40 = v27;
  result = sub_100049DD8();
  if ((result & 1) == 0)
  {
    goto LABEL_78;
  }

  v42 = v28[4];
  v149 = v34;
  v42(v26, v34, v40);
  v173 = v37;
  v43 = v24;
  v44 = v167;
  v45 = &v26[*(v167 + 48)];
  v150 = v32;
  v42(v45, v32, v40);
  sub_1000055FC(v26, v43, &qword_10005DE20, &qword_10004B8F0);
  v159 = *(v44 + 48);
  v46 = v164;
  v42(v164, v43, v40);
  v47 = v28[1];
  v47(v43 + v159, v40);
  sub_10001A570(v26, v43);
  v42(&v46[*(v160 + 36)], (v43 + *(v44 + 48)), v40);
  v47(v43, v40);
  v48 = v163;
  sub_100049488();
  sub_10001B1D0(&qword_10005DE30, &type metadata accessor for DateBins);
  v49 = v173;
  sub_10004A018();
  sub_10004A038();
  v167 = sub_10004A028();
  sub_100019038(v169, v167);
  v164 = *(v50 + 16);
  if (v164)
  {
    v52 = 0;
    v141 = v50;
    v160 = v50 + 32;
    v158 = *(v143 + 16);
    v159 = v143 + 16;
    v148 = (v157 + 8);
    v157 = v144 + 16;
    v156 = (v144 + 8);
    *&v51 = 134218498;
    v145 = v51;
    v53 = _swiftEmptyArrayStorage;
    do
    {
      v62 = v52;
      v63 = *(v160 + 8 * v52);
      v169 = v52 + 1;
      v64 = v170;
      v158(v170, v48, v49);
      v65 = v165;
      v66 = *(v165 + 36);
      sub_10004A018();
      v67 = v64 + *(v65 + 40);
      sub_10004A038();
      sub_1000055FC(v64, v18, &qword_10005DE18, &qword_10004B8E8);
      v68 = *(v64 + v66);
      v69 = *(v166 + 36);
      *&v18[v69] = v68;
      v70 = *&v18[*(v65 + 40)];
      while (1)
      {
        v71 = *&v18[v69];
        if (v71 == v70)
        {
          break;
        }

        sub_10004A048();
        if (v71 == v62)
        {
          sub_100005664(v18, &qword_10005DE10, &qword_10004B8E0);
          sub_100005664(v170, &qword_10005DE18, &qword_10004B8E8);
          if (v63 > 3600.0)
          {
            v63 = 3600.0;
          }

          v72 = v151;
          sub_1000494A8();
          v73 = v153;
          sub_100049318();
          v155 = *v148;
          v155(v72, v73);
          v74 = v152;
          sub_1000494A8();
          sub_100049328();
          v155(v74, v73);
          v75 = v161;
          v48 = v163;
          sub_100048E78();
          v76 = v162;
          (*v157)(v162, v75, v168);
          v77 = v175;
          v78 = v76 + *(v175 + 24);
          sub_1000494A8();
          *(v76 + *(v77 + 20)) = v63;
          *(v76 + *(v77 + 28)) = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1000233FC(0, v53[2] + 1, 1, v53);
          }

          v80 = v53[2];
          v79 = v53[3];
          v61 = v168;
          v49 = v173;
          if (v80 >= v79 >> 1)
          {
            v53 = sub_1000233FC(v79 > 1, v80 + 1, 1, v53);
          }

          (*v156)(v161, v61);
          v53[2] = v80 + 1;
          sub_10001A5E0(v162, v53 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v80, type metadata accessor for HourlyUsage);
          v177 = v53;
          goto LABEL_6;
        }
      }

      sub_100005664(v18, &qword_10005DE10, &qword_10004B8E0);
      sub_100005664(v170, &qword_10005DE18, &qword_10004B8E8);
      if (qword_10005D698 != -1)
      {
        swift_once();
      }

      v81 = sub_1000492C8();
      sub_1000143C0(v81, qword_10005DC28);
      v82 = v154;
      v83 = v168;
      (*v157)(v154, v171, v168);
      v84 = sub_1000492A8();
      v85 = sub_10004A098();
      v86 = os_log_type_enabled(v84, v85);
      v48 = v163;
      if (v86)
      {
        v54 = swift_slowAlloc();
        v147 = v85;
        v55 = v54;
        v155 = swift_slowAlloc();
        v176 = v155;
        *v55 = v145;
        *(v55 + 4) = v62;
        *(v55 + 12) = 2048;
        *(v55 + 14) = v167;
        *(v55 + 22) = 2080;
        sub_10001B1D0(&qword_10005DE38, &type metadata accessor for DateInterval);
        v146 = v84;
        v56 = sub_10004A378();
        v58 = v57;
        (*v156)(v82, v83);
        v59 = sub_10003C4F8(v56, v58, &v176);

        *(v55 + 24) = v59;
        v60 = v146;
        _os_log_impl(&_mh_execute_header, v146, v147, "screenOnTime hourIndex %ld not in range. numberOfHours: %ld graphInterval %s", v55, 0x20u);
        sub_100002890(v155);
      }

      else
      {

        (*v156)(v82, v83);
      }

      v61 = v83;
LABEL_6:
      v52 = v169;
    }

    while (v169 != v164);
  }

  else
  {

    v53 = _swiftEmptyArrayStorage;
    v61 = v168;
  }

  v88 = v174;
  v162 = *(v142 + 16);
  if (!v162)
  {
LABEL_44:
    v114 = v173;
    v174 = v53[2];
    if (!v174)
    {
LABEL_73:
      (*(v143 + 8))(v163, v114);
      return v53;
    }

    v115 = 0;
    while (1)
    {
      if (v115 >= v53[2])
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v116 = v115 + 1;
      v117 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v118 = *(v172 + 72) * v115;
      while (1)
      {
        v119 = *(v53 + v117 + v118 + *(v175 + 28));
        v120 = *(v119 + 16);
        if (v120 > 2)
        {
          break;
        }

        swift_beginAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10001660C(v53);
          v53 = result;
        }

        if (v115 >= v53[2])
        {
          goto LABEL_75;
        }

        v121 = v53 + v117 + v118;
        v122 = *(v175 + 28);
        v123 = *&v121[v122];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v121[v122] = v123;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v123 = sub_1000232F8(0, *(v123 + 2) + 1, 1, v123);
          *&v121[v122] = v123;
        }

        v126 = *(v123 + 2);
        v125 = *(v123 + 3);
        if (v126 >= v125 >> 1)
        {
          v123 = sub_1000232F8((v125 > 1), v126 + 1, 1, v123);
          *&v121[v122] = v123;
        }

        v114 = v173;
        *(v123 + 2) = v126 + 1;
        *&v123[8 * v126 + 32] = 0;
        v177 = v53;
        result = swift_endAccess();
        if (v115 >= v53[2])
        {
          goto LABEL_74;
        }
      }

      if (v120 == 3)
      {
        break;
      }

      v127 = v120 & 0x7FFFFFFFFFFFFFFCLL;
      v129 = (v119 + 48);
      v128 = 0.0;
      v130 = v120 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v131 = *v129;
        v128 = v128 + *(v129 - 2) + *(v129 - 1) + *v129 + v129[1];
        v129 += 4;
        v130 -= 4;
      }

      while (v130);
      if (v120 != v127)
      {
        goto LABEL_63;
      }

LABEL_65:
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10001660C(v53);
        v53 = result;
      }

      if (v115 >= v53[2])
      {
        goto LABEL_77;
      }

      v135 = v53 + v117 + v118;
      v136 = *(v175 + 28);
      v137 = *&v135[v136];
      v138 = swift_isUniquelyReferenced_nonNull_native();
      *&v135[v136] = v137;
      if ((v138 & 1) == 0)
      {
        v137 = sub_1000232F8(0, *(v137 + 2) + 1, 1, v137);
        *&v135[v136] = v137;
      }

      v140 = *(v137 + 2);
      v139 = *(v137 + 3);
      if (v140 >= v139 >> 1)
      {
        v137 = sub_1000232F8((v139 > 1), v140 + 1, 1, v137);
        *&v135[v136] = v137;
      }

      *(v137 + 2) = v140 + 1;
      *&v137[8 * v140 + 32] = fmax(1.0 - v128, 0.0);
      v177 = v53;
      result = swift_endAccess();
      v115 = v116;
      if (v116 == v174)
      {
        goto LABEL_73;
      }
    }

    v127 = 0;
    v128 = 0.0;
LABEL_63:
    v132 = v120 - v127;
    v133 = (v119 + 8 * v127 + 32);
    do
    {
      v134 = *v133++;
      v128 = v128 + v134;
      --v132;
    }

    while (v132);
    goto LABEL_65;
  }

  v89 = 0;
  v161 = (v142 + 32);
  v168 = (v144 + 8);
  v169 = (v144 + 16);
  *&v87 = 134218754;
  v166 = v87;
  while (1)
  {
    v165 = v89;
    v90 = *&v161[8 * v89];

    sub_100019038(v91, v167);
    v93 = v92;

    v94 = v93;
    v95 = *(v93 + 2);
    v164 = v94;
    if (v95)
    {
      break;
    }

LABEL_25:
    v89 = v165 + 1;

    if (v89 == v162)
    {
      goto LABEL_44;
    }
  }

  v96 = 0;
  v170 = v94 + 32;
  while (1)
  {
    if (v96 >= v53[2])
    {
      if (qword_10005D698 != -1)
      {
        swift_once();
      }

      v110 = sub_1000492C8();
      sub_1000143C0(v110, qword_10005DC28);
      (*v169)(v88, v171, v61);
      v111 = sub_1000492A8();
      v112 = v61;
      v113 = sub_10004A098();
      if (os_log_type_enabled(v111, v113))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v176 = v98;
        *v97 = v166;
        *(v97 + 4) = v96;
        *(v97 + 12) = 2048;
        *(v97 + 14) = v167;
        *(v97 + 22) = 2048;
        *(v97 + 24) = v53[2];
        *(v97 + 32) = 2080;
        sub_10001B1D0(&qword_10005DE38, &type metadata accessor for DateInterval);
        v99 = sub_10004A378();
        v101 = v100;
        (*v168)(v174, v112);
        v102 = sub_10003C4F8(v99, v101, &v176);
        v88 = v174;

        *(v97 + 34) = v102;
        _os_log_impl(&_mh_execute_header, v111, v113, "categoryRatiosPerHour hourIndex %ld not in range. numberOfHours: %ld result.count: %ld graphInterval: %s", v97, 0x2Au);
        sub_100002890(v98);
      }

      else
      {

        (*v168)(v88, v112);
      }

      v61 = v112;
      goto LABEL_30;
    }

    v103 = *&v170[8 * v96];
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10001660C(v53);
      v53 = result;
    }

    if (v96 >= v53[2])
    {
      break;
    }

    v104 = v53 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v96;
    v105 = *(v175 + 28);
    v106 = *(v104 + v105);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    *(v104 + v105) = v106;
    if ((v107 & 1) == 0)
    {
      v106 = sub_1000232F8(0, *(v106 + 2) + 1, 1, v106);
      *(v104 + v105) = v106;
    }

    v109 = *(v106 + 2);
    v108 = *(v106 + 3);
    if (v109 >= v108 >> 1)
    {
      v106 = sub_1000232F8((v108 > 1), v109 + 1, 1, v106);
      *(v104 + v105) = v106;
    }

    v88 = v174;
    *(v106 + 2) = v109 + 1;
    *&v106[8 * v109 + 32] = v103;
    v177 = v53;
    swift_endAccess();
LABEL_30:
    if (v95 == ++v96)
    {
      goto LABEL_25;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_10001A570(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027D4(&qword_10005DE20, &qword_10004B8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A65C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100049058();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10001A71C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100049058();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001A7C0()
{
  sub_10001A86C();
  if (v0 <= 0x3F)
  {
    sub_10001A8D4();
    if (v1 <= 0x3F)
    {
      sub_100049058();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001A86C()
{
  if (!qword_10005DEA8)
  {
    sub_10001B134(255, &qword_10005DDB8, STUsageDetailItem_ptr);
    v0 = sub_100049F78();
    if (!v1)
    {
      atomic_store(v0, &qword_10005DEA8);
    }
  }
}

void sub_10001A8D4()
{
  if (!qword_10005DEB0)
  {
    sub_100003634(&qword_10005DDC0, &qword_10004B8B8);
    v0 = sub_100049F78();
    if (!v1)
    {
      atomic_store(v0, &qword_10005DEB0);
    }
  }
}

uint64_t sub_10001A938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001A99C()
{
  v1 = sub_1000027D4(&qword_10005DEF0, &unk_10004B910);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001AA30(uint64_t a1)
{
  v2 = *(*(sub_1000027D4(&qword_10005DEF0, &unk_10004B910) - 8) + 80);

  return sub_10000B78C(a1);
}

uint64_t sub_10001AAAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001AB1C()
{
  v1 = sub_100049CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10001ABF4()
{
  v1 = *(sub_100049CB8() - 8);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));
  v10 = *(v9 + *(v1 + 64));

  return sub_10000B840(v2, v3, v4, v7, v8, v9, v10, v5, v6);
}

uint64_t sub_10001AC84()
{
  v1 = sub_100049CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  v9 = *(v0 + 8);

  v10 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);
  v11 = *&v0[v5 + 8];

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10001AD88()
{
  v1 = *(sub_100049CB8() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10000C3B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + v3), *(v0 + v3 + 8), v0 + v2, *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10001AE40()
{
  v1 = sub_100049CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 2);

  v8 = *(v0 + 3);

  v9 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5 + 8];

  v11 = *&v0[v6 + 8];

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10001AF4C(uint64_t a1, void *a2, int a3, __int16 a4)
{
  v9 = *(sub_100049CB8() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_10000E290(a1, a2, a3, a4 & 0x101, v4[2], *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 16), v4[3], v4[4], v4 + v10, *(v4 + v11), *(v4 + v12), *(v4 + v12 + 8), *(v4 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10001B048()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001B0D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B134(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10001B17C()
{
  result = qword_10005DF18;
  if (!qword_10005DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DF18);
  }

  return result;
}

uint64_t sub_10001B1D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001B218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001B2B8()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005DF38);
  sub_1000143C0(v0, qword_10005DF38);
  return sub_1000492B8();
}

id sub_10001B42C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001B484(uint64_t a1)
{
  if (qword_10005D6A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000492C8();
  sub_1000143C0(v2, qword_10005DF38);
  v3 = sub_1000492A8();
  v4 = sub_10004A0A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "provide user options collection", v5, 2u);
  }

  if (qword_10005D6C0 != -1)
  {
    swift_once();
  }

  v6 = qword_100060290;
  v7 = type metadata accessor for XPCPersistentStoreManager();
  v41[3] = v7;
  v41[4] = &off_10005AA70;
  v41[0] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  v9 = *sub_1000028DC(v41, v7);
  swift_retain_n();

  sub_1000345C4();
  if (*(v9 + 24) == 1)
  {
    v10 = [*(v9 + 16) newBackgroundContext];
    [v10 setAutomaticallyMergesChangesFromParent:1];
    [v10 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v11 = swift_allocObject();
    v11[2] = sub_10001C210;
    v11[3] = v8;
    v11[4] = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10001C280;
    *(v12 + 24) = v11;
    aBlock[4] = sub_10001C278;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003BBCC;
    aBlock[3] = &unk_10005A520;
    v13 = _Block_copy(aBlock);

    v14 = v10;

    [v14 performBlockAndWait:v13];

    _Block_release(v13);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  sub_1000406C8(v8);

LABEL_11:
  swift_beginAccess();
  v15 = *(v8 + 16);

  sub_100002890(v41);
  v16 = *(v15 + 16);
  if (v16)
  {
    v41[0] = &_swiftEmptyArrayStorage;
    sub_10004A248();
    type metadata accessor for STUser();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38._object = v15;
    v17 = (v15 + 57);
    do
    {
      v29 = *(v17 - 25);
      v30 = *v17;
      v31 = *(v17 - 17) == 1701736270 && *(v17 - 9) == 0xE400000000000000;
      if (v31 || (v32 = *(v17 - 17), v33 = *(v17 - 9), (sub_10004A398() & 1) != 0))
      {
        v18 = objc_opt_self();

        v19 = v29;
        v20 = [v18 mainBundle];
        v38._countAndFlagsBits = 0xE000000000000000;
        v42._object = 0x80000001000539B0;
        v42._countAndFlagsBits = 0xD000000000000016;
        v43.value._countAndFlagsBits = 0;
        v43.value._object = 0;
        v21.super.isa = v20;
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        sub_100048EC8(v42, v43, v21, v44, v38);
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v34 = v29;
      }

      v22 = [v29 stringValue];
      sub_100049E08();

      v23 = objc_allocWithZone(ObjCClassFromMetadata);
      v24 = sub_100049DF8();

      v25 = sub_100049DF8();

      v26 = [v23 initWithIdentifier:v24 displayString:v25];

      v27 = [objc_allocWithZone(NSNumber) initWithBool:v30];
      [v26 setIsRemote:v27];

      sub_10004A218();
      v28 = *(v41[0] + 16);
      sub_10004A258();
      sub_10004A268();
      sub_10004A228();
      v17 += 32;
      --v16;
    }

    while (v16);
  }

  v35 = objc_allocWithZone(INObjectCollection);
  type metadata accessor for STUser();
  isa = sub_100049F48().super.isa;

  v37 = [v35 initWithItems:isa];

  (*(a1 + 16))(a1, v37, 0);
}

id sub_10001BAB8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2 == 1701736270 && a3 == 0xE400000000000000;
  if (v6 || (sub_10004A398() & 1) != 0)
  {
    v7 = [objc_opt_self() mainBundle];
    v16._countAndFlagsBits = 0xE000000000000000;
    v17._object = 0x80000001000539B0;
    v17._countAndFlagsBits = 0xD000000000000016;
    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v8.super.isa = v7;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_100048EC8(v17, v18, v8, v19, v16);
  }

  else
  {
  }

  type metadata accessor for STUser();
  v9 = [a1 stringValue];
  sub_100049E08();

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_100049DF8();

  v12 = sub_100049DF8();

  v13 = [v10 initWithIdentifier:v11 displayString:v12];

  v14 = [objc_allocWithZone(NSNumber) initWithBool:a4 & 1];
  [v13 setIsRemote:v14];

  return v13;
}

id sub_10001BC8C()
{
  if (qword_10005D6A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000492C8();
  sub_1000143C0(v0, qword_10005DF38);
  v1 = sub_1000492A8();
  v2 = sub_10004A0A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "get default user for widget. getting local user", v3, 2u);
  }

  if (qword_10005D6C0 != -1)
  {
    swift_once();
  }

  v4 = qword_100060290;
  v5 = type metadata accessor for XPCPersistentStoreManager();
  v34[3] = v5;
  v34[4] = &off_10005AA70;
  v34[0] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v7 = *sub_1000028DC(v34, v5);
  swift_retain_n();

  sub_1000345C4();
  if (*(v7 + 24) == 1)
  {
    v8 = [*(v7 + 16) newBackgroundContext];
    [v8 setAutomaticallyMergesChangesFromParent:1];
    [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v9 = swift_allocObject();
    v9[2] = sub_10001C138;
    v9[3] = v6;
    v9[4] = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10001B110;
    *(v10 + 24) = v9;
    v33[4] = sub_10001B12C;
    v33[5] = v10;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 1107296256;
    v33[2] = sub_10003BBCC;
    v33[3] = &unk_10005A480;
    v11 = _Block_copy(v33);

    v12 = v8;

    [v12 performBlockAndWait:v11];

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v13 = sub_100040000();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  swift_beginAccess();
  v20 = *(v6 + 16);
  v21 = *(v6 + 24);
  v22 = *(v6 + 32);
  *(v6 + 16) = v13;
  *(v6 + 24) = v15;
  *(v6 + 32) = v17;
  v23 = *(v6 + 40);
  *(v6 + 40) = v19;
  sub_10001C140(v20);

LABEL_11:
  swift_beginAccess();
  v24 = *(v6 + 16);
  v25 = *(v6 + 24);
  v26 = *(v6 + 32);
  v27 = *(v6 + 40);
  sub_10001C180(v24);

  sub_100002890(v34);
  if (v24)
  {
    v28 = sub_10001BAB8(v24, v25, v26, HIBYTE(v27) & 1);
  }

  else
  {
    v29 = sub_1000492A8();
    v30 = sub_10004A088();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "couldn't fetch local user to use as default user", v31, 2u);
    }

    return 0;
  }

  return v28;
}

uint64_t sub_10001C0F4()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    v2 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 42, 7);
}

void *sub_10001C140(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_10001C180(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_10001C1C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C1D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C21C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v2 = sub_1000490D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_100049058();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v30 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v29 = &v29 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v29 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v29 - v22;
  __chkstk_darwin(v21);
  v25 = &v29 - v24;
  sub_100049068();
  (*(v3 + 104))(v6, enum case for Calendar.Component.day(_:), v2);
  sub_1000490A8();
  (*(v3 + 8))(v6, v2);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v23, v10, v11);
    sub_100049068();
    v27 = *(v12 + 16);
    v27(v29, v25, v11);
    v27(v30, v20, v11);
    sub_100048E78();
    v28 = *(v12 + 8);
    v28(v20, v11);
    v28(v23, v11);
    return (v28)(v25, v11);
  }

  return result;
}

uint64_t sub_10001C5E0(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = __chkstk_darwin(AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = __chkstk_darwin(v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = &v49 - v21;
  v22 = sub_10004A148();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = __chkstk_darwin(v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = __chkstk_darwin(v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  __chkstk_darwin(v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  __chkstk_darwin(v69);
  v38 = &v49 - v37;
  v39 = sub_100049EF8();
  v70 = sub_10004A288();
  v65 = sub_10004A298();
  sub_10004A238(v39);
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_100049EE8();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_10004A168();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_10004A278();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_10004A168();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_10004A278();
      sub_10004A168();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_10001CCD4()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005DF78);
  sub_1000143C0(v0, qword_10005DF78);
  return sub_1000492B8();
}

BOOL sub_10001CD54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

LABEL_7:
    if (v3 == v7 && v4 == v8 || (sub_10004A398() & 1) != 0)
    {
      return v5 == v9;
    }

    return 0;
  }

  v10 = sub_10004A398();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6)
  {
    goto LABEL_7;
  }

  return result;
}

Swift::Int sub_10001CE30()
{
  sub_10004A418();
  sub_10004A428(0);
  return sub_10004A448();
}

Swift::Int sub_10001CE9C()
{
  sub_10004A418();
  sub_10004A428(0);
  return sub_10004A448();
}

uint64_t sub_10001CEEC(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *(v10 + 352) = a9;
  *(v10 + 360) = v9;
  *(v10 + 81) = a8;
  *(v10 + 336) = a6;
  *(v10 + 344) = a7;
  *(v10 + 320) = a2;
  *(v10 + 328) = a3;
  *(v10 + 312) = a1;
  v11 = sub_100049548();
  *(v10 + 368) = v11;
  v12 = *(v11 - 8);
  *(v10 + 376) = v12;
  v13 = *(v12 + 64) + 15;
  *(v10 + 384) = swift_task_alloc();
  v14 = type metadata accessor for UsageTimelineEntry();
  *(v10 + 392) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v10 + 400) = swift_task_alloc();
  *(v10 + 408) = swift_task_alloc();
  *(v10 + 416) = swift_task_alloc();
  *(v10 + 424) = swift_task_alloc();
  *(v10 + 432) = swift_task_alloc();
  v16 = *(*(sub_1000027D4(&qword_10005DE00, &qword_10004B8D8) - 8) + 64) + 15;
  *(v10 + 440) = swift_task_alloc();
  *(v10 + 448) = swift_task_alloc();
  *(v10 + 456) = swift_task_alloc();
  *(v10 + 464) = swift_task_alloc();
  *(v10 + 472) = swift_task_alloc();
  *(v10 + 480) = swift_task_alloc();
  *(v10 + 488) = swift_task_alloc();
  *(v10 + 496) = swift_task_alloc();
  *(v10 + 504) = swift_task_alloc();
  *(v10 + 512) = swift_task_alloc();
  v17 = *(*(sub_1000027D4(&qword_10005DC10, &qword_10004B7C0) - 8) + 64) + 15;
  *(v10 + 520) = swift_task_alloc();
  *(v10 + 528) = swift_task_alloc();
  *(v10 + 536) = swift_task_alloc();
  *(v10 + 544) = swift_task_alloc();
  *(v10 + 552) = swift_task_alloc();
  *(v10 + 560) = swift_task_alloc();
  *(v10 + 568) = swift_task_alloc();
  *(v10 + 576) = swift_task_alloc();
  *(v10 + 584) = swift_task_alloc();
  *(v10 + 592) = swift_task_alloc();
  v18 = sub_100049CB8();
  *(v10 + 600) = v18;
  v19 = *(v18 - 8);
  *(v10 + 608) = v19;
  v20 = *(v19 + 64) + 15;
  *(v10 + 616) = swift_task_alloc();
  v21 = sub_100048E98();
  *(v10 + 624) = v21;
  v22 = *(v21 - 8);
  *(v10 + 632) = v22;
  v23 = *(v22 + 64) + 15;
  *(v10 + 640) = swift_task_alloc();
  *(v10 + 648) = swift_task_alloc();
  *(v10 + 656) = swift_task_alloc();
  *(v10 + 664) = swift_task_alloc();
  *(v10 + 672) = swift_task_alloc();
  *(v10 + 680) = swift_task_alloc();
  *(v10 + 688) = swift_task_alloc();
  *(v10 + 696) = swift_task_alloc();
  *(v10 + 704) = swift_task_alloc();
  *(v10 + 712) = swift_task_alloc();
  *(v10 + 720) = swift_task_alloc();
  *(v10 + 728) = swift_task_alloc();
  v24 = sub_1000490F8();
  *(v10 + 736) = v24;
  v25 = *(v24 - 8);
  *(v10 + 744) = v25;
  v26 = *(v25 + 64) + 15;
  *(v10 + 752) = swift_task_alloc();
  *(v10 + 760) = swift_task_alloc();
  *(v10 + 768) = swift_task_alloc();
  *(v10 + 776) = swift_task_alloc();
  *(v10 + 784) = swift_task_alloc();
  *(v10 + 792) = swift_task_alloc();
  v27 = sub_100049058();
  *(v10 + 800) = v27;
  v28 = *(v27 - 8);
  *(v10 + 808) = v28;
  v29 = *(v28 + 64) + 15;
  *(v10 + 816) = swift_task_alloc();
  *(v10 + 824) = swift_task_alloc();
  *(v10 + 832) = swift_task_alloc();
  *(v10 + 840) = swift_task_alloc();
  *(v10 + 848) = swift_task_alloc();
  *(v10 + 856) = swift_task_alloc();
  *(v10 + 864) = swift_task_alloc();
  *(v10 + 872) = swift_task_alloc();
  *(v10 + 880) = swift_task_alloc();
  *(v10 + 888) = swift_task_alloc();
  *(v10 + 896) = swift_task_alloc();
  *(v10 + 904) = swift_task_alloc();
  *(v10 + 912) = swift_task_alloc();
  *(v10 + 920) = swift_task_alloc();

  return _swift_task_switch(sub_10001D430, 0, 0);
}

uint64_t sub_10001D430()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 792);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 352);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 65) = 0u;
  sub_100049038();
  sub_1000490B8();
  (*(v4 + 16))(v3, v6, v5);
  v7 = (*(v4 + 88))(v3, v5);
  if (v7 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v7 == enum case for WidgetFamily.systemMedium(_:))
  {
    v8 = *(v0 + 920);
    v9 = *(v0 + 792);
    v10 = *(v0 + 728);
    v11 = 15;
    goto LABEL_5;
  }

  if (v7 == enum case for WidgetFamily.systemLarge(_:) || v7 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v44 = *(v0 + 792);
    sub_10001C284(*(v0 + 920), *(v0 + 728));
  }

  else
  {
    if (v7 == enum case for WidgetFamily.accessoryCircular(_:) || v7 == enum case for WidgetFamily.accessoryRectangular(_:) || v7 == enum case for WidgetFamily.accessoryInline(_:))
    {
LABEL_2:
      v8 = *(v0 + 920);
      v9 = *(v0 + 792);
      v10 = *(v0 + 728);
      v11 = 9;
LABEL_5:
      sub_100022910(v11, v8, v9, v10);
      goto LABEL_6;
    }

    v107 = *(v0 + 792);
    v108 = *(v0 + 616);
    v109 = *(v0 + 608);
    v110 = *(v0 + 600);
    sub_10001C284(*(v0 + 920), *(v0 + 728));
    (*(v109 + 8))(v108, v110);
  }

LABEL_6:
  v12 = *(v0 + 360);
  if (*(*sub_1000028DC((v12 + 112), *(v12 + 136)) + 24))
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1000492C8();
    *(v0 + 928) = sub_1000143C0(v13, qword_10005DF78);
    v14 = sub_1000492A8();
    v15 = sub_10004A0A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully loaded persistent store.", v16, 2u);
    }

    v17 = *(v0 + 81);
    v19 = *(v0 + 336);
    v18 = *(v0 + 344);

    v20 = sub_1000028DC((v12 + 112), *(v12 + 136));
    sub_10002610C(v17, v19, v18, *v20, v0 + 88);
    sub_10002C508(v0 + 16);
    if (*(v0 + 152))
    {
      if (*(v0 + 88))
      {
        v22 = *(v0 + 112);
        v21 = *(v0 + 120);
        *(v0 + 936) = v21;
        v23 = *(v0 + 128);
        v24 = *(v0 + 136);
        *(v0 + 944) = v23;
        *(v0 + 952) = v24;
        v25 = *(v0 + 144);
        *(v0 + 960) = v25;
        v26 = *(v0 + 104);
        *(v0 + 968) = *(v0 + 96);
        *(v0 + 976) = v26;
        *(v0 + 984) = v22;

        if (v22)
        {
          v27 = [v22 integerValue] > 0;
        }

        else
        {
          v27 = 0;
        }

        *(v0 + 1000) = v25;
        *(v0 + 992) = v23;
        v154 = swift_task_alloc();
        *(v0 + 1008) = v154;
        *v154 = v0;
        v154[1] = sub_10001ECF0;

        return sub_10002625C((v25 != 0) & v27, v22, v21, v23, v24, v25);
      }

      v97 = sub_1000492A8();
      v98 = sub_10004A0A8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "ScreenTime is disabled.", v99, 2u);
      }

      v100 = *(v0 + 808);
      v101 = *(v0 + 800);
      v102 = *(v0 + 560);

      (*(v100 + 56))(v102, 1, 1, v101);
      v103 = *(v0 + 112);
      v302 = v103;
      if (v103)
      {
        v104 = [v103 stringValue];
        v105 = sub_100049E08();
        v288 = v106;
        v296 = v105;
      }

      else
      {
        v288 = 0;
        v296 = 0;
      }

      v156 = *(v0 + 880);
      v157 = *(v0 + 808);
      v158 = *(v0 + 768);
      v159 = *(v0 + 728);
      v160 = *(v0 + 688);
      v161 = *(v0 + 632);
      v162 = *(v0 + 624);
      v276 = *(v0 + 560);
      v283 = *(v0 + 800);
      v163 = *(v0 + 552);
      v164 = *(v0 + 416);
      (*(v161 + 56))(*(v0 + 480), 1, 1, v162);
      (*(v161 + 16))(v160, v159, v162);
      sub_100049038();
      sub_1000490B8();
      *v164 = 0;
      sub_1000055FC(v276, v163, &qword_10005DC10, &qword_10004B7C0);
      v165 = *(v157 + 48);
      if (v165(v163, 1, v283) == 1)
      {
        v166 = *(v0 + 800);
        v167 = *(v0 + 552);
        (*(*(v0 + 808) + 16))(*(v0 + 872), *(v0 + 880), v166);
        if (v165(v167, 1, v166) != 1)
        {
          sub_100005664(*(v0 + 552), &qword_10005DC10, &qword_10004B7C0);
        }
      }

      else
      {
        (*(*(v0 + 808) + 32))(*(v0 + 872), *(v0 + 552), *(v0 + 800));
      }

      v168 = *(v0 + 632);
      v169 = *(v0 + 624);
      v171 = *(v0 + 472);
      v170 = *(v0 + 480);
      v172 = *(v0 + 416);
      v173 = *(v0 + 392);
      v175 = *(v0 + 320);
      v174 = *(v0 + 328);
      v176 = (v172 + v173[6]);
      v177 = (v172 + v173[8]);
      (*(*(v0 + 808) + 32))(v172 + v173[5], *(v0 + 872), *(v0 + 800));
      *v176 = 0;
      v176[1] = 0;
      v178 = (v172 + v173[7]);
      *v178 = v175;
      v178[1] = v174;
      *v177 = v296;
      v177[1] = v288;
      sub_1000055FC(v170, v171, &qword_10005DE00, &qword_10004B8D8);
      v255 = *(v168 + 48);
      v179 = v255(v171, 1, v169);
      v180 = *(v0 + 880);
      v181 = *(v0 + 808);
      v277 = *(v0 + 920);
      v284 = *(v0 + 792);
      v182 = *(v0 + 768);
      v183 = *(v0 + 744);
      v184 = *(v0 + 736);
      v271 = *(v0 + 728);
      v185 = *(v0 + 632);
      v261 = *(v0 + 800);
      v266 = *(v0 + 560);
      v186 = *(v0 + 472);
      v187 = *(v0 + 480);
      v291 = v186;
      v297 = *(v0 + 624);
      if (v179 == 1)
      {
        sub_10001C284(v180, *(v0 + 680));
        v188 = *(v183 + 8);
        v188(v182, v184);
        v189 = *(v181 + 8);
        v189(v180, v261);
        sub_100005664(v187, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v266, &qword_10005DC10, &qword_10004B7C0);
        (*(v185 + 8))(v271, v297);
        v188(v284, v184);
        v189(v277, v261);
        if (v255(v291, 1, v297) != 1)
        {
          sub_100005664(*(v0 + 472), &qword_10005DE00, &qword_10004B8D8);
        }
      }

      else
      {
        v190 = *(v183 + 8);
        v256 = *(v0 + 680);
        v190(v182, v184);
        v191 = *(v181 + 8);
        v191(v180, v261);
        sub_100005664(v187, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v266, &qword_10005DC10, &qword_10004B7C0);
        (*(v185 + 8))(v271, v297);
        v190(v284, v184);
        v191(v277, v261);
        (*(v185 + 32))(v256, v291, v297);
      }

      v192 = *(v0 + 688);
      v193 = *(v0 + 624);
      v194 = *(v0 + 416);
      v195 = *(v0 + 392);
      v196 = *(v0 + 81);
      v197 = *(v0 + 312);
      v198 = v195[18];
      v199 = *(*(v0 + 632) + 32);
      v199(v194 + v195[9], *(v0 + 680), v193);
      v199(v194 + v195[10], v192, v193);
      *(v194 + v195[11]) = _swiftEmptyArrayStorage;
      *(v194 + v195[12]) = v196;
      *(v194 + v195[13]) = _swiftEmptyArrayStorage;
      *(v194 + v195[14]) = 0;
      *(v194 + v195[15]) = 0;
      *(v194 + v195[16]) = _swiftEmptyArrayStorage;
      *(v194 + v195[17]) = 0;
      *(v194 + v198) = 0;
      sub_10002C4A0(v194, v197, type metadata accessor for UsageTimelineEntry);
      v87 = 0;
      v94 = *(v0 + 136);
      v95 = *(v0 + 144);
      v92 = *(v0 + 120);
      v93 = *(v0 + 128);
      v89 = *(v0 + 96);
      v90 = *(v0 + 104);
      v96 = 1;
      v88 = *(v0 + 89);
      v91 = v302;
    }

    else
    {
      v294 = *(v0 + 88);
      v45 = sub_1000492A8();
      v46 = sub_10004A088();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Failed to fetch user. Returning placeholder timeline entry.", v47, 2u);
      }

      v48 = *(v0 + 808);
      v49 = *(v0 + 800);
      v50 = *(v0 + 576);

      (*(v48 + 56))(v50, 1, 1, v49);
      v51 = *(v0 + 112);
      v300 = v51;
      if (v51)
      {
        v52 = [v51 stringValue];
        v53 = sub_100049E08();
        v273 = v54;
        v280 = v53;
      }

      else
      {
        v273 = 0;
        v280 = 0;
      }

      v111 = *(v0 + 896);
      v112 = *(v0 + 808);
      v289 = *(v0 + 776);
      v113 = *(v0 + 728);
      v114 = *(v0 + 704);
      v115 = *(v0 + 632);
      v116 = *(v0 + 624);
      v264 = *(v0 + 576);
      v269 = *(v0 + 800);
      v117 = *(v0 + 568);
      v118 = *(v0 + 424);
      v119 = *(v0 + 81);
      (*(v115 + 56))(*(v0 + 496), 1, 1, v116);
      (*(v115 + 16))(v114, v113, v116);
      sub_100049038();
      sub_1000490B8();
      v290 = v119;
      *v118 = v119;
      sub_1000055FC(v264, v117, &qword_10005DC10, &qword_10004B7C0);
      v120 = *(v112 + 48);
      if (v120(v117, 1, v269) == 1)
      {
        v121 = *(v0 + 800);
        v122 = *(v0 + 568);
        (*(*(v0 + 808) + 16))(*(v0 + 888), *(v0 + 896), v121);
        if (v120(v122, 1, v121) != 1)
        {
          sub_100005664(*(v0 + 568), &qword_10005DC10, &qword_10004B7C0);
        }
      }

      else
      {
        (*(*(v0 + 808) + 32))(*(v0 + 888), *(v0 + 568), *(v0 + 800));
      }

      v123 = *(v0 + 632);
      v124 = *(v0 + 624);
      v126 = *(v0 + 488);
      v125 = *(v0 + 496);
      v127 = *(v0 + 424);
      v128 = *(v0 + 392);
      v130 = *(v0 + 320);
      v129 = *(v0 + 328);
      v131 = (v127 + v128[6]);
      v132 = (v127 + v128[8]);
      (*(*(v0 + 808) + 32))(v127 + v128[5], *(v0 + 888), *(v0 + 800));
      *v131 = 0;
      v131[1] = 0;
      v133 = (v127 + v128[7]);
      *v133 = v130;
      v133[1] = v129;
      *v132 = v280;
      v132[1] = v273;
      sub_1000055FC(v125, v126, &qword_10005DE00, &qword_10004B8D8);
      v249 = *(v123 + 48);
      v134 = v249(v126, 1, v124);
      v135 = *(v0 + 896);
      v136 = *(v0 + 808);
      v265 = *(v0 + 920);
      v270 = *(v0 + 792);
      v137 = *(v0 + 776);
      v138 = *(v0 + 744);
      v139 = *(v0 + 736);
      v260 = *(v0 + 728);
      v140 = *(v0 + 632);
      v252 = *(v0 + 800);
      v254 = *(v0 + 576);
      v141 = *(v0 + 488);
      v142 = *(v0 + 496);
      v275 = v141;
      v282 = *(v0 + 624);
      if (v134 == 1)
      {
        sub_10001C284(v135, *(v0 + 696));
        v143 = *(v138 + 8);
        v143(v137, v139);
        v144 = *(v136 + 8);
        v144(v135, v252);
        sub_100005664(v142, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v254, &qword_10005DC10, &qword_10004B7C0);
        (*(v140 + 8))(v260, v282);
        v143(v270, v139);
        v144(v265, v252);
        if (v249(v275, 1, v282) != 1)
        {
          sub_100005664(*(v0 + 488), &qword_10005DE00, &qword_10004B8D8);
        }
      }

      else
      {
        v145 = *(v138 + 8);
        v250 = *(v0 + 696);
        v145(v137, v139);
        v146 = *(v136 + 8);
        v146(v135, v252);
        sub_100005664(v142, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v254, &qword_10005DC10, &qword_10004B7C0);
        (*(v140 + 8))(v260, v282);
        v145(v270, v139);
        v146(v265, v252);
        (*(v140 + 32))(v250, v275, v282);
      }

      v147 = *(v0 + 704);
      v148 = *(v0 + 624);
      v149 = *(v0 + 424);
      v150 = *(v0 + 392);
      v151 = *(v0 + 312);
      v152 = v150[18];
      v153 = *(*(v0 + 632) + 32);
      v153(v149 + v150[9], *(v0 + 696), v148);
      v153(v149 + v150[10], v147, v148);
      *(v149 + v150[11]) = _swiftEmptyArrayStorage;
      *(v149 + v150[12]) = v290;
      *(v149 + v150[13]) = _swiftEmptyArrayStorage;
      *(v149 + v150[14]) = 0;
      *(v149 + v150[15]) = 0;
      *(v149 + v150[16]) = _swiftEmptyArrayStorage;
      *(v149 + v150[17]) = 0;
      *(v149 + v152) = 0;
      sub_10002C4A0(v149, v151, type metadata accessor for UsageTimelineEntry);
      v96 = 0;
      v94 = *(v0 + 136);
      v95 = *(v0 + 144);
      v92 = *(v0 + 120);
      v93 = *(v0 + 128);
      v89 = *(v0 + 96);
      v90 = *(v0 + 104);
      v88 = *(v0 + 89);
      v91 = v300;
      v87 = v294;
    }
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v28 = sub_1000492C8();
    sub_1000143C0(v28, qword_10005DF78);
    v29 = sub_1000492A8();
    v30 = sub_10004A088();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to initialize persistent store. This prevented fetching user. Returning placeholder timeline entry", v31, 2u);
    }

    v32 = *(v0 + 808);
    v33 = *(v0 + 800);
    v293 = *(v0 + 912);
    v299 = *(v0 + 784);
    v34 = *(v0 + 720);
    v35 = *(v0 + 632);
    v36 = *(v0 + 624);
    v37 = *(v0 + 592);
    v38 = *(v0 + 584);
    v39 = *(v0 + 512);
    v279 = *(v0 + 728);
    v286 = *(v0 + 432);

    (*(v32 + 56))(v37, 1, 1, v33);
    (*(v35 + 56))(v39, 1, 1, v36);
    (*(v35 + 16))(v34, v279, v36);
    sub_100049038();
    sub_1000490B8();
    *v286 = 0;
    sub_1000055FC(v37, v38, &qword_10005DC10, &qword_10004B7C0);
    v40 = *(v32 + 48);
    if (v40(v38, 1, v33) == 1)
    {
      v41 = *(v0 + 800);
      v42 = *(v0 + 584);
      (*(*(v0 + 808) + 16))(*(v0 + 904), *(v0 + 912), v41);
      if (v40(v42, 1, v41) != 1)
      {
        sub_100005664(*(v0 + 584), &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      (*(*(v0 + 808) + 32))(*(v0 + 904), *(v0 + 584), *(v0 + 800));
    }

    v55 = *(v0 + 632);
    v56 = *(v0 + 624);
    v58 = *(v0 + 504);
    v57 = *(v0 + 512);
    v59 = *(v0 + 432);
    v60 = *(v0 + 392);
    v62 = *(v0 + 320);
    v61 = *(v0 + 328);
    v63 = (v59 + v60[6]);
    v64 = (v59 + v60[8]);
    (*(*(v0 + 808) + 32))(v59 + v60[5], *(v0 + 904), *(v0 + 800));
    *v63 = 0;
    v63[1] = 0;
    v65 = (v59 + v60[7]);
    *v65 = v62;
    v65[1] = v61;
    *v64 = 0;
    v64[1] = 0;
    sub_1000055FC(v57, v58, &qword_10005DE00, &qword_10004B8D8);
    v258 = *(v55 + 48);
    v66 = v258(v58, 1, v56);
    v67 = *(v0 + 912);
    v68 = *(v0 + 808);
    v281 = *(v0 + 920);
    v287 = *(v0 + 792);
    v69 = *(v0 + 784);
    v70 = *(v0 + 744);
    v71 = *(v0 + 736);
    v274 = *(v0 + 728);
    v72 = *(v0 + 632);
    v263 = *(v0 + 800);
    v268 = *(v0 + 592);
    v73 = *(v0 + 504);
    v74 = *(v0 + 512);
    v295 = v73;
    v301 = *(v0 + 624);
    if (v66 == 1)
    {
      sub_10001C284(v67, *(v0 + 712));
      v75 = *(v70 + 8);
      v75(v69, v71);
      v76 = *(v68 + 8);
      v76(v67, v263);
      sub_100005664(v74, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v268, &qword_10005DC10, &qword_10004B7C0);
      (*(v72 + 8))(v274, v301);
      v75(v287, v71);
      v76(v281, v263);
      if (v258(v295, 1, v301) != 1)
      {
        sub_100005664(*(v0 + 504), &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      v77 = *(v70 + 8);
      v259 = *(v0 + 712);
      v77(v69, v71);
      v78 = *(v68 + 8);
      v78(v67, v263);
      sub_100005664(v74, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v268, &qword_10005DC10, &qword_10004B7C0);
      (*(v72 + 8))(v274, v301);
      v77(v287, v71);
      v78(v281, v263);
      (*(v72 + 32))(v259, v295, v301);
    }

    v79 = *(v0 + 720);
    v80 = *(v0 + 624);
    v81 = *(v0 + 432);
    v82 = *(v0 + 392);
    v83 = *(v0 + 81);
    v84 = *(v0 + 312);
    v85 = v82[18];
    v86 = *(*(v0 + 632) + 32);
    v86(v81 + v82[9], *(v0 + 712), v80);
    v86(v81 + v82[10], v79, v80);
    *(v81 + v82[11]) = _swiftEmptyArrayStorage;
    *(v81 + v82[12]) = v83;
    *(v81 + v82[13]) = _swiftEmptyArrayStorage;
    *(v81 + v82[14]) = 0;
    *(v81 + v82[15]) = 0;
    *(v81 + v82[16]) = _swiftEmptyArrayStorage;
    *(v81 + v82[17]) = 0;
    *(v81 + v85) = 0;
    sub_10002C4A0(v81, v84, type metadata accessor for UsageTimelineEntry);
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
  }

  v200 = *(v0 + 920);
  v201 = *(v0 + 912);
  v202 = *(v0 + 904);
  v203 = *(v0 + 896);
  v204 = *(v0 + 888);
  v205 = *(v0 + 880);
  v206 = *(v0 + 872);
  v211 = *(v0 + 864);
  v213 = *(v0 + 856);
  v215 = *(v0 + 848);
  v217 = *(v0 + 840);
  v220 = *(v0 + 832);
  v222 = *(v0 + 824);
  v224 = *(v0 + 816);
  v226 = *(v0 + 792);
  v228 = *(v0 + 784);
  v230 = *(v0 + 776);
  v232 = *(v0 + 768);
  v234 = *(v0 + 760);
  v236 = *(v0 + 752);
  *(v0 + 160) = v87;
  v207 = *(v0 + 728);
  *(v0 + 161) = v88;
  v208 = *(v0 + 720);
  *(v0 + 168) = v89;
  *(v0 + 176) = v90;
  v212 = *(v0 + 712);
  v209 = *(v0 + 704);
  *(v0 + 184) = v91;
  *(v0 + 192) = v92;
  v214 = *(v0 + 696);
  v216 = *(v0 + 688);
  *(v0 + 200) = v93;
  *(v0 + 208) = v94;
  v218 = *(v0 + 680);
  v219 = *(v0 + 672);
  *(v0 + 216) = v95;
  v221 = *(v0 + 664);
  *(v0 + 224) = v96;
  v223 = *(v0 + 656);
  v225 = *(v0 + 648);
  v227 = *(v0 + 640);
  v229 = *(v0 + 616);
  v231 = *(v0 + 592);
  v233 = *(v0 + 584);
  v235 = *(v0 + 576);
  v237 = *(v0 + 568);
  v238 = *(v0 + 560);
  v239 = *(v0 + 552);
  v240 = *(v0 + 544);
  v241 = *(v0 + 536);
  v242 = *(v0 + 528);
  v243 = *(v0 + 520);
  v244 = *(v0 + 512);
  v245 = *(v0 + 504);
  v246 = *(v0 + 496);
  v247 = *(v0 + 488);
  v248 = *(v0 + 480);
  v251 = *(v0 + 472);
  v253 = *(v0 + 464);
  v257 = *(v0 + 456);
  v262 = *(v0 + 448);
  v267 = *(v0 + 440);
  v272 = *(v0 + 432);
  v278 = *(v0 + 424);
  v285 = *(v0 + 416);
  v292 = *(v0 + 408);
  v298 = *(v0 + 400);
  v303 = *(v0 + 384);
  sub_10002C508(v0 + 160);

  v210 = *(v0 + 8);

  return v210();
}

uint64_t sub_10001ECF0(uint64_t a1)
{
  v2 = *(*v1 + 1008);
  v3 = *(*v1 + 1000);
  v4 = *(*v1 + 992);
  v6 = *v1;
  *(*v1 + 1016) = a1;

  return _swift_task_switch(sub_10001EE2C, 0, 0);
}

uint64_t sub_10001EE2C()
{
  v1 = *(v0 + 928);
  v2 = sub_1000492A8();
  v3 = sub_10004A078();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetch device activity started", v4, 2u);
  }

  v5 = *(v0 + 864);
  v23 = *(v0 + 920);
  v24 = *(v0 + 856);
  v6 = *(v0 + 808);
  v7 = *(v0 + 800);
  v8 = *(v0 + 792);
  v25 = *(v0 + 848);
  v26 = *(v0 + 672);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  v11 = *(v0 + 368);
  v27 = *(v0 + 360);
  v12 = *(v0 + 352);

  (*(v10 + 104))(v9, enum case for DynamicTypeSize.large(_:), v11);
  v13 = sub_10002053C(v12);
  (*(v10 + 8))(v9, v11);
  *(v0 + 82) = sub_100020884();
  sub_100049068();
  v14 = *(v6 + 16);
  *(v0 + 1024) = v14;
  *(v0 + 1032) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v24, v5, v7);
  v14(v25, v23, v7);
  sub_100048E78();
  v15 = *(v6 + 8);
  *(v0 + 1040) = v15;
  *(v0 + 1048) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v5, v7);
  sub_10001A938(v27 + 16, v0 + 232);
  sub_10001A938(v27 + 72, v0 + 272);
  v16 = swift_task_alloc();
  *(v0 + 1056) = v16;
  *v16 = v0;
  v16[1] = sub_10001F0B0;
  v17 = *(v0 + 976);
  v18 = *(v0 + 968);
  v19 = *(v0 + 728);
  v20 = *(v0 + 672);
  v21 = *(v0 + 360);

  return sub_1000218AC(v18, v17, v19, v20, v13);
}

uint64_t sub_10001F0B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *v5;
  v7 = *(*v5 + 1056);
  v8 = *(*v5 + 976);
  v9 = *(*v5 + 672);
  v10 = *(*v5 + 632);
  v11 = *(*v5 + 624);
  v12 = *v5;
  *(v6 + 1064) = a1;
  *(v6 + 1072) = a2;
  *(v6 + 1080) = a3;
  *(v6 + 1088) = a4;
  *(v6 + 1096) = v4;

  sub_100002890((v6 + 272));
  sub_100002890((v6 + 232));
  v13 = *(v10 + 8);
  *(v6 + 1104) = v13;
  *(v6 + 1112) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v11);
  if (v4)
  {
    v14 = sub_10001FBB0;
  }

  else
  {
    v14 = sub_10001F284;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10001F284()
{
  v1 = *(v0 + 984);
  (*(*(v0 + 808) + 56))(*(v0 + 544), 1, 1, *(v0 + 800));
  if (v1)
  {
    v2 = [*(v0 + 984) stringValue];
    v130 = sub_100049E08();
    v4 = v3;
  }

  else
  {
    v130 = 0;
    v4 = 0;
  }

  v5 = *(v0 + 82);
  v6 = *(v0 + 728);
  v7 = *(v0 + 664);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  (*(v8 + 56))(*(v0 + 464), 1, 1, v9);
  (*(v8 + 16))(v7, v6, v9);
  if (v5)
  {
    v135 = *(v0 + 1064);
  }

  else
  {

    v135 = &_swiftEmptyArrayStorage;
  }

  v10 = *(v0 + 840);
  v11 = *(v0 + 808);
  v12 = *(v0 + 800);
  v13 = *(v0 + 760);
  v14 = *(v0 + 544);
  v15 = *(v0 + 536);
  v16 = *(v0 + 408);
  sub_100049038();
  sub_1000490B8();
  *v16 = 0;
  sub_1000055FC(v14, v15, &qword_10005DC10, &qword_10004B7C0);
  v17 = *(v11 + 48);
  if (v17(v15, 1, v12) == 1)
  {
    v18 = *(v0 + 1032);
    v19 = *(v0 + 800);
    v20 = *(v0 + 536);
    (*(v0 + 1024))(*(v0 + 832), *(v0 + 840), v19);
    if (v17(v20, 1, v19) != 1)
    {
      sub_100005664(*(v0 + 536), &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(*(v0 + 808) + 32))(*(v0 + 832), *(v0 + 536), *(v0 + 800));
  }

  v21 = *(v0 + 632);
  v22 = *(v0 + 624);
  v24 = *(v0 + 456);
  v23 = *(v0 + 464);
  v25 = *(v0 + 408);
  v26 = *(v0 + 392);
  v28 = *(v0 + 320);
  v27 = *(v0 + 328);
  v29 = (v25 + v26[6]);
  v30 = (v25 + v26[8]);
  (*(*(v0 + 808) + 32))(v25 + v26[5], *(v0 + 832), *(v0 + 800));
  *v29 = 0;
  v29[1] = 0;
  v31 = (v25 + v26[7]);
  *v31 = v28;
  v31[1] = v27;
  *v30 = v130;
  v30[1] = v4;
  sub_1000055FC(v23, v24, &qword_10005DE00, &qword_10004B8D8);
  v32 = *(v21 + 48);
  v33 = v32(v24, 1, v22);
  v122 = *(v0 + 1104);
  v124 = *(v0 + 1112);
  v34 = *(v0 + 1048);
  v127 = *(v0 + 920);
  v131 = *(v0 + 1040);
  v35 = *(v0 + 840);
  v36 = *(v0 + 800);
  v37 = *(v0 + 760);
  v38 = *(v0 + 744);
  v39 = *(v0 + 736);
  v118 = *(v0 + 728);
  v120 = *(v0 + 792);
  if (v33 == 1)
  {
    v106 = *(v0 + 544);
    v109 = *(v0 + 624);
    v115 = v32;
    v40 = *(v0 + 464);
    v112 = *(v0 + 456);
    sub_10001C284(v35, *(v0 + 656));
    v41 = *(v38 + 8);
    v41(v37, v39);
    v131(v35, v36);
    sub_100005664(v40, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v106, &qword_10005DC10, &qword_10004B7C0);
    v122(v118, v109);
    v41(v120, v39);
    v131(v127, v36);
    if (v115(v112, 1, v109) != 1)
    {
      sub_100005664(*(v0 + 456), &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v42 = *(v0 + 632);
    v107 = *(v0 + 544);
    v110 = *(v0 + 624);
    v43 = *(v0 + 464);
    v113 = *(v0 + 656);
    v116 = *(v0 + 456);
    v44 = *(v38 + 8);
    v44(v37, v39);
    v131(v35, v36);
    sub_100005664(v43, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v107, &qword_10005DC10, &qword_10004B7C0);
    v122(v118, v110);
    v44(v120, v39);
    v131(v127, v36);
    (*(v42 + 32))(v113, v116, v110);
  }

  v45 = *(v0 + 1088);
  v46 = *(v0 + 1080);
  v47 = *(v0 + 1072);
  v48 = *(v0 + 664);
  v49 = *(v0 + 624);
  v50 = *(v0 + 408);
  v51 = *(v0 + 392);
  v52 = *(v0 + 81);
  v128 = *(v0 + 312);
  v132 = *(v0 + 1016);
  v125 = v51[18];
  v53 = *(*(v0 + 632) + 32);
  v53(v50 + v51[9], *(v0 + 656), v49);
  v53(v50 + v51[10], v48, v49);
  *(v50 + v51[11]) = v47;
  *(v50 + v51[12]) = v52;
  *(v50 + v51[13]) = v46;
  *(v50 + v51[14]) = 0;
  *(v50 + v51[15]) = 1;
  *(v50 + v51[16]) = v135;
  *(v50 + v51[17]) = v45;
  *(v50 + v125) = v132;
  sub_10002C4A0(v50, v128, type metadata accessor for UsageTimelineEntry);
  v54 = *(v0 + 984);
  v55 = *(v0 + 920);
  v56 = *(v0 + 912);
  v57 = *(v0 + 904);
  v58 = *(v0 + 896);
  v59 = *(v0 + 888);
  v60 = *(v0 + 880);
  v61 = *(v0 + 872);
  v62 = *(v0 + 864);
  v70 = *(v0 + 856);
  v71 = *(v0 + 848);
  v72 = *(v0 + 840);
  v73 = *(v0 + 832);
  v74 = *(v0 + 824);
  v75 = *(v0 + 816);
  v77 = *(v0 + 792);
  v79 = *(v0 + 784);
  v82 = *(v0 + 776);
  v84 = *(v0 + 768);
  v86 = *(v0 + 760);
  v88 = *(v0 + 752);
  v90 = *(v0 + 728);
  v92 = *(v0 + 720);
  v94 = *(v0 + 712);
  v96 = *(v0 + 704);
  v98 = *(v0 + 696);
  v100 = *(v0 + 688);
  v102 = *(v0 + 680);
  *(v0 + 161) = *(v0 + 89);
  v63 = *(v0 + 672);
  *(v0 + 184) = v54;
  v80 = *(v0 + 664);
  v64 = *(v0 + 952);
  *(v0 + 168) = *(v0 + 968);
  v65 = *(v0 + 936);
  *(v0 + 160) = 1;
  *(v0 + 224) = 1;
  v66 = *(v0 + 656);
  *(v0 + 192) = v65;
  *(v0 + 208) = v64;
  v76 = *(v0 + 648);
  v78 = *(v0 + 640);
  v81 = *(v0 + 616);
  v83 = *(v0 + 592);
  v85 = *(v0 + 584);
  v87 = *(v0 + 576);
  v89 = *(v0 + 568);
  v91 = *(v0 + 560);
  v93 = *(v0 + 552);
  v95 = *(v0 + 544);
  v97 = *(v0 + 536);
  v99 = *(v0 + 528);
  v101 = *(v0 + 520);
  v103 = *(v0 + 512);
  v104 = *(v0 + 504);
  v105 = *(v0 + 496);
  v108 = *(v0 + 488);
  v111 = *(v0 + 480);
  v114 = *(v0 + 472);
  v117 = *(v0 + 464);
  v119 = *(v0 + 456);
  v121 = *(v0 + 448);
  v123 = *(v0 + 440);
  v126 = *(v0 + 432);
  v129 = *(v0 + 424);
  v133 = *(v0 + 416);
  v134 = *(v0 + 408);
  v136 = *(v0 + 400);
  v67 = *(v0 + 384);
  sub_10002C508(v0 + 160);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_10001FBB0()
{
  v1 = *(v0 + 928);
  v2 = sub_1000492A8();
  v3 = sub_10004A088();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get hourly usage. Returning placeholder timeline entry.", v4, 2u);
  }

  v5 = *(v0 + 984);
  v6 = *(v0 + 808);
  v7 = *(v0 + 800);
  v8 = *(v0 + 528);

  (*(v6 + 56))(v8, 1, 1, v7);
  if (v5)
  {
    v9 = [*(v0 + 984) stringValue];
    v10 = sub_100049E08();
    v131 = v11;
    v134 = v10;
  }

  else
  {
    v131 = 0;
    v134 = 0;
  }

  v12 = *(v0 + 824);
  v13 = *(v0 + 808);
  v138 = *(v0 + 800);
  v14 = *(v0 + 752);
  v15 = *(v0 + 728);
  v16 = *(v0 + 648);
  v17 = *(v0 + 632);
  v18 = *(v0 + 624);
  v128 = *(v0 + 528);
  v19 = *(v0 + 520);
  v20 = *(v0 + 400);
  (*(v17 + 56))(*(v0 + 448), 1, 1, v18);
  (*(v17 + 16))(v16, v15, v18);
  sub_100049038();
  sub_1000490B8();
  *v20 = 0;
  sub_1000055FC(v128, v19, &qword_10005DC10, &qword_10004B7C0);
  v21 = *(v13 + 48);
  if (v21(v19, 1, v138) == 1)
  {
    v22 = *(v0 + 1032);
    v23 = *(v0 + 800);
    v24 = *(v0 + 520);
    (*(v0 + 1024))(*(v0 + 816), *(v0 + 824), v23);
    if (v21(v24, 1, v23) != 1)
    {
      sub_100005664(*(v0 + 520), &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(*(v0 + 808) + 32))(*(v0 + 816), *(v0 + 520), *(v0 + 800));
  }

  v25 = *(v0 + 632);
  v26 = *(v0 + 624);
  v28 = *(v0 + 440);
  v27 = *(v0 + 448);
  v30 = *(v0 + 392);
  v29 = *(v0 + 400);
  v32 = *(v0 + 320);
  v31 = *(v0 + 328);
  v33 = (v29 + v30[6]);
  v34 = (v29 + v30[8]);
  (*(*(v0 + 808) + 32))(v29 + v30[5], *(v0 + 816), *(v0 + 800));
  *v33 = 0;
  v33[1] = 0;
  v35 = (v29 + v30[7]);
  *v35 = v32;
  v35[1] = v31;
  *v34 = v134;
  v34[1] = v131;
  sub_1000055FC(v27, v28, &qword_10005DE00, &qword_10004B8D8);
  v36 = *(v25 + 48);
  v37 = v36(v28, 1, v26);
  v126 = *(v0 + 1104);
  v129 = *(v0 + 1112);
  v38 = *(v0 + 1096);
  v39 = *(v0 + 1048);
  v132 = *(v0 + 920);
  v135 = *(v0 + 1040);
  v40 = *(v0 + 824);
  v41 = *(v0 + 800);
  v42 = *(v0 + 752);
  v43 = *(v0 + 744);
  v44 = *(v0 + 736);
  v122 = *(v0 + 728);
  v124 = *(v0 + 792);
  if (v37 == 1)
  {
    v113 = *(v0 + 528);
    v116 = *(v0 + 624);
    v110 = *(v0 + 448);
    v119 = *(v0 + 440);
    sub_10001C284(v40, *(v0 + 640));

    v45 = *(v43 + 8);
    v45(v42, v44);
    v135(v40, v41);
    sub_100005664(v110, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v113, &qword_10005DC10, &qword_10004B7C0);
    v126(v122, v116);
    v45(v124, v44);
    v135(v132, v41);
    if (v36(v119, 1, v116) != 1)
    {
      sub_100005664(*(v0 + 440), &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v46 = *(v0 + 632);
    v111 = *(v0 + 528);
    v114 = *(v0 + 624);
    v47 = *(v0 + 448);
    v117 = *(v0 + 640);
    v120 = *(v0 + 440);

    v48 = *(v43 + 8);
    v48(v42, v44);
    v135(v40, v41);
    sub_100005664(v47, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v111, &qword_10005DC10, &qword_10004B7C0);
    v126(v122, v114);
    v48(v124, v44);
    v135(v132, v41);
    (*(v46 + 32))(v117, v120, v114);
  }

  v136 = *(v0 + 1016);
  v49 = *(v0 + 648);
  v50 = *(v0 + 624);
  v52 = *(v0 + 392);
  v51 = *(v0 + 400);
  v53 = *(v0 + 81);
  v54 = *(v0 + 312);
  v55 = v52[18];
  v56 = *(*(v0 + 632) + 32);
  v56(v51 + v52[9], *(v0 + 640), v50);
  v56(v51 + v52[10], v49, v50);
  *(v51 + v52[11]) = &_swiftEmptyArrayStorage;
  *(v51 + v52[12]) = v53;
  *(v51 + v52[13]) = &_swiftEmptyArrayStorage;
  *(v51 + v52[14]) = 0;
  *(v51 + v52[15]) = 1;
  *(v51 + v52[16]) = &_swiftEmptyArrayStorage;
  *(v51 + v52[17]) = 0;
  *(v51 + v55) = v136;
  sub_10002C4A0(v51, v54, type metadata accessor for UsageTimelineEntry);
  v57 = *(v0 + 984);
  v58 = *(v0 + 920);
  v59 = *(v0 + 912);
  v60 = *(v0 + 904);
  v61 = *(v0 + 896);
  v62 = *(v0 + 888);
  v63 = *(v0 + 880);
  v64 = *(v0 + 872);
  v65 = *(v0 + 864);
  v73 = *(v0 + 856);
  v74 = *(v0 + 848);
  v75 = *(v0 + 840);
  v76 = *(v0 + 832);
  v77 = *(v0 + 824);
  v78 = *(v0 + 816);
  v80 = *(v0 + 792);
  v82 = *(v0 + 784);
  v85 = *(v0 + 776);
  v87 = *(v0 + 768);
  v89 = *(v0 + 760);
  v91 = *(v0 + 752);
  v93 = *(v0 + 728);
  v95 = *(v0 + 720);
  v97 = *(v0 + 712);
  v99 = *(v0 + 704);
  v101 = *(v0 + 696);
  v103 = *(v0 + 688);
  v105 = *(v0 + 680);
  *(v0 + 161) = *(v0 + 89);
  v66 = *(v0 + 672);
  *(v0 + 184) = v57;
  v83 = *(v0 + 664);
  v67 = *(v0 + 952);
  *(v0 + 168) = *(v0 + 968);
  v68 = *(v0 + 936);
  *(v0 + 160) = 1;
  *(v0 + 224) = 1;
  v69 = *(v0 + 656);
  *(v0 + 192) = v68;
  *(v0 + 208) = v67;
  v79 = *(v0 + 648);
  v81 = *(v0 + 640);
  v84 = *(v0 + 616);
  v86 = *(v0 + 592);
  v88 = *(v0 + 584);
  v90 = *(v0 + 576);
  v92 = *(v0 + 568);
  v94 = *(v0 + 560);
  v96 = *(v0 + 552);
  v98 = *(v0 + 544);
  v100 = *(v0 + 536);
  v102 = *(v0 + 528);
  v104 = *(v0 + 520);
  v106 = *(v0 + 512);
  v107 = *(v0 + 504);
  v108 = *(v0 + 496);
  v109 = *(v0 + 488);
  v112 = *(v0 + 480);
  v115 = *(v0 + 472);
  v118 = *(v0 + 464);
  v121 = *(v0 + 456);
  v123 = *(v0 + 448);
  v125 = *(v0 + 440);
  v127 = *(v0 + 432);
  v130 = *(v0 + 424);
  v133 = *(v0 + 416);
  v137 = *(v0 + 408);
  v139 = *(v0 + 400);
  v70 = *(v0 + 384);
  sub_10002C508(v0 + 160);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_10002053C(uint64_t a1)
{
  v2 = sub_100049548();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100049CB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for WidgetFamily.systemSmall(_:))
  {
    return 0;
  }

  if (v12 == enum case for WidgetFamily.systemMedium(_:))
  {
    (*(v3 + 104))(v6, enum case for DynamicTypeSize.large(_:), v2);
    sub_10002C538(&qword_10005E228, &type metadata accessor for DynamicTypeSize);
    v14 = sub_100049DC8();
    (*(v3 + 8))(v6, v2);
    if (v14)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if (v12 != enum case for WidgetFamily.systemLarge(_:))
    {
      if (v12 != enum case for WidgetFamily.systemExtraLarge(_:) && v12 != enum case for WidgetFamily.accessoryCircular(_:) && v12 != enum case for WidgetFamily.accessoryRectangular(_:) && v12 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v8 + 8))(v11, v7);
      }

      return 0;
    }

    (*(v3 + 104))(v6, enum case for DynamicTypeSize.large(_:), v2);
    sub_10002C538(&qword_10005E228, &type metadata accessor for DynamicTypeSize);
    v15 = sub_100049DC8();
    (*(v3 + 8))(v6, v2);
    if (v15)
    {
      return 4;
    }

    else
    {
      return 6;
    }
  }
}

BOOL sub_100020884()
{
  v0 = sub_100049CB8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[13];
  v5(v4, enum case for WidgetFamily.systemLarge(_:), v0);
  sub_10002C538(&qword_10005DE08, &type metadata accessor for WidgetFamily);
  sub_100049F38();
  sub_100049F38();
  v6 = v1[1];
  v6(v4, v0);
  if (v9 == v8)
  {
    return 1;
  }

  v5(v4, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  sub_100049F38();
  sub_100049F38();
  v6(v4, v0);
  return v9 == v8;
}

void sub_100020A60(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 screenTimeEnabled];
    swift_beginAccess();
    *(a2 + 16) = v4;
    v5 = [v3 altDSID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_100049E08();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    swift_beginAccess();
    v13 = *(a2 + 32);
    *(a2 + 24) = v7;
    *(a2 + 32) = v9;

    v14 = [v3 dsid];
    swift_beginAccess();
    v15 = *(a2 + 40);
    *(a2 + 40) = v14;

    v16 = [v3 localizedFullName];
    v17 = sub_100049E08();
    v19 = v18;

    swift_beginAccess();
    v20 = *(a2 + 56);
    *(a2 + 48) = v17;
    *(a2 + 56) = v19;

    v21 = [v3 appleID];
    if (v21)
    {
      v22 = v21;
      v23 = sub_100049E08();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0;
    }

    swift_beginAccess();
    v26 = *(a2 + 72);
    *(a2 + 64) = v23;
    *(a2 + 72) = v25;
    *(a2 + 80) = 1;
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v10 = sub_1000492C8();
    sub_1000143C0(v10, qword_10005DF78);
    oslog = sub_1000492A8();
    v11 = sub_10004A088();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "unable to fetch user properties", v12, 2u);
    }
  }
}

uint64_t sub_100020CF8(char a1, _WORD *a2, void *a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  if (*(*sub_1000028DC((v3 + 112), *(v3 + 136)) + 24) == 1)
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1000492C8();
    sub_1000143C0(v9, qword_10005DF78);
    v10 = sub_1000492A8();
    v11 = sub_10004A0A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Successfully loaded persistent store.", v12, 2u);
    }

    v13 = *sub_1000028DC((v4 + 112), *(v4 + 136));

    sub_10003E1EC(v13, a2, a3, a1 & 1, v8, v4);
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1000492C8();
    sub_1000143C0(v14, qword_10005DF78);
    v15 = sub_1000492A8();
    v16 = sub_10004A088();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to initialize persistent store; using DeviceActivity data", v17, 2u);
    }
  }

  swift_beginAccess();
  v18 = *(v8 + 16);

  return v18;
}

void sub_100020F60(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a3 + 56);
    v5 = *(a3 + 64);
    v6 = a1;
    v7 = [v6 altDSID];
    if (v7)
    {
      v8 = v7;
      sub_100049E08();
    }

    v12 = [v6 userDeviceStates];
    if (v12)
    {
      v13 = v12;
      sub_10002C454();
      sub_10002C538(&qword_10005E220, sub_10002C454);
      sub_100049FE8();
    }

    v14 = sub_100049288();

    swift_beginAccess();
    *(a2 + 16) = v14 & 1;
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1000492C8();
    sub_1000143C0(v9, qword_10005DF78);
    oslog = sub_1000492A8();
    v10 = sub_10004A088();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Failed to fetch user; using DeviceActivity data", v11, 2u);
    }
  }
}

uint64_t sub_1000211AC@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    result = 0;
  }

  else
  {
    result = sub_10004A398();
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_100021204(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = (a3 + 40);
  v16 = a2[5];
  v22 = v14;
  v23 = v16;
  v21 = v13;
  while (1)
  {
    v20 = v3;
    v18 = *(v15 - 1);
    v17 = *v15;
    v30 = v4;
    v31 = v5;
    v32 = v6;
    v33 = v7;
    v34 = v8;
    v35 = v9;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v29 = v16;

    v18(&v36, &v30, &v24);
    if (v36)
    {
      break;
    }

    v30 = v10;
    v31 = v11;
    v32 = v12;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v24 = v4;
    v25 = v5;
    v26 = v6;
    v27 = v7;
    v28 = v8;
    v29 = v9;
    v18(&v36, &v30, &v24);
    if (v36)
    {
      break;
    }

    v15 += 2;
    v3 = v20 - 1;
    v13 = v21;
    v14 = v22;
    v16 = v23;
    if (v20 == 1)
    {
      return 0;
    }
  }

  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v18(&v36, &v30, &v24);

  return v36;
}

uint64_t sub_1000213A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[4];
  sub_1000028DC(a1, a1[3]);
  if (sub_100049F28())
  {
    return sub_10001A938(a1, a3);
  }

  v48 = a1;
  v49 = 0;
  v50 = a3;
  v55 = &_swiftEmptyDictionarySingleton;
  v8 = *(a2 + 16);
  if (!v8)
  {
LABEL_17:
    v40 = v48[3];
    v41 = v48[4];
    v42 = sub_1000028DC(v48, v40);
    __chkstk_darwin(v42);
    v47[2] = &v55;
    v44 = sub_10001C5E0(sub_10002C3C8, v47, v40, &type metadata for UsageItem, &type metadata for Never, v41, &protocol witness table for Never, v43);
    v45 = sub_1000027D4(&qword_10005E1C0, &qword_10004BA48);
    v46 = v50;
    v50[3] = v45;
    v46[4] = sub_100005708(&qword_10005E1C8, &qword_10005E1C0, &qword_10004BA48);
    *v46 = v44;
  }

  v9 = (a2 + 80);
  v10 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v53 = v8;
    v16 = *(v9 - 6);
    v15 = *(v9 - 5);
    v17 = *(v9 - 4);
    v18 = *(v9 - 3);
    v19 = *(v9 - 2);
    v20 = *(v9 - 1);
    v21 = *v9;
    swift_bridgeObjectRetain_n();
    v22 = v17;
    v23 = v18;
    swift_bridgeObjectRetain_n();
    v24 = v22;
    v25 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v10;
    v27 = sub_100024340(v16, v15);
    v29 = v10[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v28;
    if (v10[3] < v32)
    {
      sub_100024B0C(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_100024340(v16, v15);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_20;
      }

LABEL_12:
      v10 = v54;
      if (v33)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v39 = v27;
    sub_100025B44();
    v27 = v39;
    v10 = v54;
    if (v33)
    {
LABEL_5:
      v11 = (v10[7] + 56 * v27);
      v12 = v11[1];
      v51 = v11[2];
      v52 = v12;
      v13 = v11[3];
      v14 = v11[6];
      *v11 = v16;
      v11[1] = v15;
      v11[2] = v24;
      v11[3] = v25;
      v11[4] = v19;
      v11[5] = v20;
      v11[6] = v21;

      goto LABEL_6;
    }

LABEL_13:
    v10[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (v10[6] + 16 * v27);
    *v35 = v16;
    v35[1] = v15;
    v36 = (v10[7] + 56 * v27);
    *v36 = v16;
    v36[1] = v15;
    v36[2] = v24;
    v36[3] = v25;
    v36[4] = v19;
    v36[5] = v20;
    v36[6] = v21;

    v37 = v10[2];
    v31 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v31)
    {
      goto LABEL_19;
    }

    v10[2] = v38;
LABEL_6:
    v9 += 7;
    v55 = v10;
    v8 = v53 - 1;
    if (v53 == 1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}

uint64_t sub_100021738@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = *(*a2 + 16);

  if (!v11 || (v12 = sub_100024340(v8, v7), (v13 & 1) == 0))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
LABEL_6:
    sub_10002C3E8(v23, 0, v24, v25);

    v18 = v4;
    goto LABEL_7;
  }

  v26 = v9;
  v14 = (*(v10 + 56) + 56 * v12);
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v18 = v14[5];
  v27 = v14[4];
  v28 = *v14;
  v19 = v14[6];

  v20 = v16;
  v21 = v17;

  if (!v15)
  {
    v23 = v28;
    v25 = v17;
    v24 = v16;
    v9 = v26;
    goto LABEL_6;
  }

  result = sub_10002C3E8(v28, v15, v16, v17);
  v5 = v19;
  v9 = v26;
LABEL_7:
  *a3 = v18;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v8;
  a3[4] = v7;
  a3[5] = v9;
  return result;
}

uint64_t sub_1000218AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_100049228();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = sub_100049248();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();
  v13 = sub_100049238();
  v6[24] = v13;
  v14 = *(v13 - 8);
  v6[25] = v14;
  v15 = *(v14 + 64) + 15;
  v6[26] = swift_task_alloc();
  v16 = sub_1000027D4(&qword_10005DE20, &qword_10004B8F0);
  v6[27] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v18 = sub_100049058();
  v6[30] = v18;
  v19 = *(v18 - 8);
  v6[31] = v19;
  v20 = *(v19 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v21 = sub_1000027D4(&qword_10005DE28, &qword_10004B8F8);
  v6[34] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v23 = sub_100049498();
  v6[36] = v23;
  v24 = *(v23 - 8);
  v6[37] = v24;
  v25 = *(v24 + 64) + 15;
  v6[38] = swift_task_alloc();
  v26 = sub_1000490F8();
  v6[39] = v26;
  v27 = *(v26 - 8);
  v6[40] = v27;
  v28 = *(v27 + 64) + 15;
  v6[41] = swift_task_alloc();

  return _swift_task_switch(sub_100021BD0, 0, 0);
}

uint64_t sub_100021BD0()
{
  v1 = v0[41];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v5 = v0[14];
  sub_1000490B8();
  sub_100048E88();
  sub_100048E68();
  sub_10002C538(&qword_10005DBF0, &type metadata accessor for Date);
  v6 = sub_100049DD8();
  if (v6)
  {
    v10 = v0[35];
    v24 = v10;
    v25 = v0[34];
    v26 = v0[38];
    v11 = v0[32];
    v13 = v0[30];
    v12 = v0[31];
    v15 = v0[28];
    v14 = v0[29];
    v16 = v0[27];
    v28 = v0[26];
    v29 = v0[25];
    v30 = v0[24];
    v31 = v0[22];
    v32 = v0[21];
    v33 = v0[23];
    v27 = v0[15];
    v17 = *(v12 + 32);
    v17(v14, v0[33], v13);
    v17(v14 + *(v16 + 48), v11, v13);
    sub_1000055FC(v14, v15, &qword_10005DE20, &qword_10004B8F0);
    v18 = *(v16 + 48);
    v17(v10, v15, v13);
    v19 = *(v12 + 8);
    v19(v15 + v18, v13);
    sub_100004DF8(v14, v15, &qword_10005DE20, &qword_10004B8F0);
    v17(v24 + *(v25 + 36), v15 + *(v16 + 48), v13);
    v19(v15, v13);
    sub_100049488();
    sub_100049278();
    v20 = sub_100048E98();
    (*(*(v20 - 8) + 16))(v28, v27, v20);
    (*(v29 + 104))(v28, enum case for DeviceActivityFilter.SegmentInterval.hourly(_:), v30);
    (*(v31 + 104))(v33, enum case for _SegmentInterval.hourly(_:), v32);
    v21 = async function pointer to static STDeviceActivityDataSource.fetchData(segment:segmentInterval:userAltDSID:)[1];
    v22 = swift_task_alloc();
    v0[42] = v22;
    *v22 = v0;
    v22[1] = sub_100021ED0;
    v7 = v0[23];
    v8 = v0[12];
    v9 = v0[13];
    v6 = v0[26];
  }

  else
  {
    __break(1u);
  }

  return static STDeviceActivityDataSource.fetchData(segment:segmentInterval:userAltDSID:)(v6, v7, v8, v9);
}

uint64_t sub_100021ED0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *(*v2 + 208);
  v6 = *(*v2 + 200);
  v7 = *(*v2 + 192);
  v8 = *(*v2 + 184);
  v9 = *(*v2 + 176);
  v10 = *(*v2 + 168);
  v13 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v11 = sub_100022728;
  }

  else
  {
    v11 = sub_1000220A8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000220A8()
{
  v1 = *(v0 + 344);
  if (v1)
  {
    v2 = *(v0 + 128);
    v62 = sub_100026638(*(v0 + 344));
    v70 = sub_100028838(v62, v2);
    v67 = sub_100028C50(v1);
    v64 = sub_100029268(v67);
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v0 + 152);
      v7 = *(v4 + 16);
      v6 = v4 + 16;
      v5 = v7;
      v8 = v1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
      v9 = *(v6 + 56);
      v10 = 0.0;
      do
      {
        v11 = *(v0 + 160);
        v12 = *(v0 + 144);
        v5(v11, v8, v12);
        sub_1000491F8();
        v14 = v13;
        (*(v6 - 8))(v11, v12);
        v10 = v10 + v14;
        v8 += v9;
        --v3;
      }

      while (v3);
    }

    else
    {
      v10 = 0.0;
    }

    v30 = *(v0 + 328);
    v31 = *(v0 + 304);
    *(v0 + 40) = sub_1000027D4(&qword_10005E148, &unk_10004B9E0);
    *(v0 + 48) = sub_100005708(&qword_10005E150, &qword_10005E148, &unk_10004B9E0);
    v32 = sub_1000298D8(v62, 3);
    v34 = v33;

    *(v0 + 16) = v32;
    *(v0 + 24) = v34;
    sub_1000213A4((v0 + 16), v70, v0 + 56);
    sub_100002890((v0 + 16));
    sub_10001435C((v0 + 56), v0 + 16);
    v35 = sub_100029F60(v67, v64, (v0 + 16));

    v36 = *(v0 + 40);
    v37 = *(v0 + 48);
    v38 = sub_1000028DC((v0 + 16), v36);
    v69 = sub_10002B7FC(v35, v38, 3, v64, v31, v30, v36, v37);

    if (v10 == 0.0)
    {
      if (qword_10005D6B0 != -1)
      {
        swift_once();
      }

      v39 = sub_1000492C8();
      sub_1000143C0(v39, qword_10005DF78);

      v40 = sub_1000492A8();
      v41 = sub_10004A078();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        v43 = *(v1 + 16);

        *(v42 + 4) = v43;

        _os_log_impl(&_mh_execute_header, v40, v41, "total screen on time was 0 from %ld activity segment(s)", v42, 0xCu);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
    }

    v44 = *(v0 + 320);
    v45 = *(v0 + 328);
    v46 = *(v0 + 304);
    v47 = *(v0 + 296);
    v54 = *(v0 + 288);
    v55 = *(v0 + 312);
    v56 = *(v0 + 280);
    v57 = *(v0 + 264);
    v58 = *(v0 + 256);
    v59 = *(v0 + 232);
    v60 = *(v0 + 224);
    v61 = *(v0 + 208);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v48 = *(v0 + 40);
    sub_1000028DC((v0 + 16), v48);
    v49 = *(v48 - 8);
    v50 = *(v49 + 64) + 15;
    swift_task_alloc();
    (*(v49 + 16))();
    v51 = sub_100049F88();
    (*(v47 + 8))(v46, v54);
    (*(v44 + 8))(v45, v55);

    sub_100002890((v0 + 16));

    v52 = *(v0 + 8);
    v53.n128_f64[0] = v10;

    return v52(v51, v69, v70, v53);
  }

  else
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1000492C8();
    sub_1000143C0(v15, qword_10005DF78);
    v16 = sub_1000492A8();
    v17 = sub_10004A088();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "did not get any activity segments", v18, 2u);
    }

    sub_1000228BC();
    swift_allocError();
    swift_willThrow();
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 312);
    v22 = *(v0 + 280);
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v26 = *(v0 + 224);
    v25 = *(v0 + 232);
    v27 = *(v0 + 208);
    v65 = *(v0 + 184);
    v68 = *(v0 + 160);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    (*(v20 + 8))(v19, v21);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_100022728()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[26];
  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[44];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100022850()
{
  sub_100002890(v0 + 2);
  sub_100002890(v0 + 9);
  sub_100002890(v0 + 14);

  return _swift_deallocClassInstance(v0, 152, 7);
}

unint64_t sub_1000228BC()
{
  result = qword_10005E140;
  if (!qword_10005E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E140);
  }

  return result;
}

uint64_t sub_100022910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a2;
  v7 = sub_1000490D8();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v83 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v84 = &v71 - v17;
  v18 = __chkstk_darwin(v16);
  v86 = &v71 - v19;
  __chkstk_darwin(v18);
  v21 = &v71 - v20;
  v22 = sub_100049058();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v26 = __chkstk_darwin(v25);
  v27 = __chkstk_darwin(v26);
  v28 = __chkstk_darwin(v27);
  v85 = &v71 - v29;
  v30 = __chkstk_darwin(v28);
  v31 = __chkstk_darwin(v30);
  v91 = &v71 - v32;
  __chkstk_darwin(v31);
  v34 = __chkstk_darwin(&v71 - v33);
  v35 = __chkstk_darwin(v34);
  v42 = &v71 - v41;
  v92 = a1;
  if (a1 < 24)
  {
    v77 = v37;
    v82 = v36;
    v89 = v35;
    v72 = v40;
    v73 = v39;
    v74 = v38;
    v75 = a4;
    sub_100049068();
    v43 = v8 + 13;
    v90 = v8[13];
    v90(v11, enum case for Calendar.Component.day(_:), v7);
    v93 = v42;
    sub_1000490A8();
    v44 = v8[1];
    v94 = v8 + 1;
    v44(v11, v7);
    v87 = *(v23 + 48);
    v88 = v23 + 48;
    result = v87(v21, 1, v22);
    if (result != 1)
    {
      v46 = v23;
      v47 = v7;
      v80 = v46;
      v81 = *(v46 + 32);
      v81(v82, v21, v22);
      sub_100049068();
      v48 = enum case for Calendar.Component.hour(_:);
      v49 = v90;
      v90(v11, enum case for Calendar.Component.hour(_:), v47);
      v50 = sub_1000490E8();
      result = (v44)(v11, v47);
      if (__OFADD__(v50, 1))
      {
        __break(1u);
      }

      else
      {
        LODWORD(v95) = v48;
        v49(v11, v48, v47);
        v51 = v86;
        v78 = a3;
        sub_1000490A8();
        v76 = v47;
        v79 = v44;
        v44(v11, v47);
        result = v87(v51, 1, v22);
        if (result == 1)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v71 = v43;
        v52 = v91;
        v53 = v81;
        v81(v91, v51, v22);
        v54 = v89;
        v55 = sub_100048FC8();
        v56 = v85;
        if (v55)
        {
          v57 = v80;
          (*(v80 + 8))(v52, v22);
          v58 = v77;
          (*(v57 + 16))(v77, v54, v22);
        }

        else
        {
          v58 = v77;
          v53(v77, v52, v22);
        }

        v60 = v92;
        v61 = v84;
        v62 = v76;
        v53(v52, v58, v22);
        result = (v90)(v11, v95, v62);
        if (!__OFSUB__(0, v60))
        {
          sub_1000490A8();
          v79(v11, v62);
          result = v87(v61, 1, v22);
          if (result != 1)
          {
            v53(v56, v61, v22);
            if (sub_100048FD8())
            {
              v63 = v80;
              (*(v80 + 8))(v56, v22);
              (*(v63 + 16))(v56, v93, v22);
            }

            v90(v11, v95, v62);
            v64 = v83;
            sub_1000490A8();
            v79(v11, v62);
            result = v87(v64, 1, v22);
            if (result != 1)
            {
              v65 = v72;
              v81(v72, v64, v22);
              v66 = v89;
              v67 = sub_100048FC8();
              v68 = v80;
              if (v67)
              {
                (*(v80 + 8))(v65, v22);
                v69 = *(v68 + 16);
                v69(v65, v66, v22);
              }

              else
              {
                v69 = *(v80 + 16);
              }

              v69(v73, v56, v22);
              v69(v74, v65, v22);
              sub_100048E78();
              v70 = *(v68 + 8);
              v70(v65, v22);
              v70(v56, v22);
              v70(v91, v22);
              v70(v66, v22);
              v70(v82, v22);
              return (v70)(v93, v22);
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v59 = v95;

  return sub_10001C284(v59, a4);
}

char *sub_1000231F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005E200, &qword_10004BA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000232F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005DAD8, &qword_10004B6B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_100023424(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000027D4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100023600(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005E1F8, &unk_10004CD60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023728(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005E230, &qword_10004BAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100023834@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100023864(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

char *sub_100023884(char *a1, int64_t a2, char a3)
{
  result = sub_100023904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000238A4(char *a1, int64_t a2, char a3)
{
  result = sub_100023A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000238C4(char *a1, int64_t a2, char a3)
{
  result = sub_100023B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000238E4(char *a1, int64_t a2, char a3)
{
  result = sub_100023C34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100023904(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005DAD8, &qword_10004B6B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100023A08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005E238, &qword_10004BAA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023B14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005E1D0, &qword_10004BA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023C34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005E1F8, &unk_10004CD60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100023D5C(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *__dst, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 48;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 48;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[6 * v11] <= __dst)
    {
      v34 = __dst;
      memmove(__dst, a2, 48 * v11);
      __dst = v34;
    }

    v13 = &__dst[6 * v11];
    v12 = __dst;
    if (v10 < 48 || v6 <= __src)
    {
      v33 = v6;
      goto LABEL_47;
    }

    v66 = __dst;
    while (1)
    {
      v65 = v5;
      v35 = 0;
      v36 = v13;
      v63 = v6 - 6;
      v68 = v13;
      while (1)
      {
        v37 = &v36[v35];
        v38 = &v36[v35 - 6];
        v39 = v36[v35 - 5];
        v40 = v36[v35 - 4];
        v41 = v36[v35 - 3];
        v42 = v36[v35 - 2];
        v43 = v36[v35 - 1];
        v76 = *v38;
        v77 = v39;
        v78 = v40;
        v79 = v41;
        v80 = v42;
        v81 = v43;
        v44 = *(v6 - 5);
        v45 = *(v6 - 4);
        v46 = *(v6 - 3);
        v47 = *(v6 - 2);
        v48 = *(v6 - 1);
        v70 = *(v6 - 6);
        v71 = v44;
        v72 = v45;
        v73 = v46;
        v74 = v47;
        v75 = v48;

        v49 = v82;
        v50 = sub_100021204(&v76, &v70, a5);
        v82 = v49;
        if (v49)
        {

          v59 = v66;
          v60 = (v68 - v66 + v35 * 8) / 48;
          if (v6 < v66 || v6 >= &v66[6 * v60])
          {
            v58 = 48 * v60;
            v33 = v6;
          }

          else
          {
            if (v6 == v66)
            {
              goto LABEL_53;
            }

            v58 = 48 * v60;
            v33 = v6;
          }

          goto LABEL_52;
        }

        v51 = v50;

        if (v51)
        {
          break;
        }

        v36 = v68;
        if (&v65[v35] != v37)
        {
          v52 = &v65[v35 - 6];
          v53 = *v38;
          v54 = *(v38 + 32);
          *(v52 + 1) = *(v38 + 16);
          *(v52 + 2) = v54;
          *v52 = v53;
        }

        v35 -= 6;
        v13 = &v68[v35 * 8];
        v12 = v66;
        if (&v68[v35 * 8] <= v66)
        {
          v33 = v6;
          goto LABEL_47;
        }
      }

      v5 = &v65[v35 - 6];
      v33 = v6 - 6;
      if (&v65[v35] != v6)
      {
        v55 = *v63;
        v56 = *(v6 - 1);
        *&v65[v35 - 4] = *(v6 - 2);
        *&v65[v35 - 2] = v56;
        *v5 = v55;
      }

      v13 = &v68[v35 * 8];
      v12 = v66;
      if (&v68[v35 * 8] > v66)
      {
        v6 -= 6;
        if (v63 > __src)
        {
          continue;
        }
      }

      v13 = &v68[v35 * 8];
LABEL_47:
      v61 = (v13 - v12) / 48;
      if (v33 >= v12 && v33 < &v12[6 * v61] && v33 == v12)
      {
        goto LABEL_53;
      }

      v58 = 48 * v61;
LABEL_51:
      v59 = v12;
LABEL_52:
      memmove(v33, v59, v58);
      goto LABEL_53;
    }
  }

  v12 = __dst;
  if (__dst != __src || &__src[6 * v9] <= __dst)
  {
    memmove(__dst, __src, 48 * v9);
  }

  v13 = &v12[6 * v9];
  if (v8 < 48)
  {
    v33 = __src;
    goto LABEL_47;
  }

  v14 = __src;
  if (v6 >= v5)
  {
    v33 = __src;
    goto LABEL_47;
  }

  v15 = v82;
  v67 = v13;
  while (1)
  {
    v16 = v5;
    v17 = v6[1];
    v18 = v6[2];
    v19 = v6[3];
    v20 = v6[4];
    v21 = v6[5];
    v76 = *v6;
    v77 = v17;
    v78 = v18;
    v79 = v19;
    v80 = v20;
    v81 = v21;
    v22 = v12[1];
    v23 = v12[2];
    v24 = v12[3];
    v25 = v12[4];
    v26 = v12[5];
    v70 = *v12;
    v71 = v22;
    v72 = v23;
    v73 = v24;
    v74 = v25;
    v75 = v26;

    v27 = sub_100021204(&v76, &v70, a5);
    v82 = v15;
    if (v15)
    {
      break;
    }

    v28 = v27;

    if ((v28 & 1) == 0)
    {
      v29 = v12;
      v30 = v14 == v12;
      v12 += 6;
      v5 = v16;
      if (v30)
      {
        goto LABEL_15;
      }

LABEL_14:
      v31 = *v29;
      v32 = *(v29 + 2);
      *(v14 + 1) = *(v29 + 1);
      *(v14 + 2) = v32;
      *v14 = v31;
      goto LABEL_15;
    }

    v29 = v6;
    v30 = v14 == v6;
    v6 += 6;
    v5 = v16;
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_15:
    v14 += 6;
    v13 = v67;
    v15 = v82;
    if (v12 >= v67 || v6 >= v5)
    {
      v33 = v14;
      goto LABEL_47;
    }
  }

  v57 = (v67 - v12) / 48;
  if (v14 < v12 || v14 >= &v12[6 * v57])
  {
    v58 = 48 * v57;
    v33 = v14;
    v59 = v12;
    goto LABEL_52;
  }

  if (v14 != v12)
  {
    v58 = 48 * v57;
    v33 = v14;
    goto LABEL_51;
  }

LABEL_53:

  return 1;
}

uint64_t sub_1000242A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002432C(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_100024340(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10004A418();
  sub_100049E48();
  v6 = sub_10004A448();

  return sub_1000254B0(a1, a2, v6);
}

unint64_t sub_1000243B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100048E98();
  sub_10002C538(&qword_10005E170, &type metadata accessor for DateInterval);
  v5 = sub_100049DB8();

  return sub_100025568(a1, v5);
}

uint64_t sub_100024450(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000027D4(&qword_10005E208, &qword_10004BA88);
  v40 = a2;
  result = sub_10004A338();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 48 * v22);
      v26 = v25[1];
      v43 = *v25;
      v44 = *v23;
      v27 = v25[2];
      v28 = v25[4];
      v41 = v25[5];
      v42 = v25[3];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_10004A418();
      sub_100049E48();
      result = sub_10004A448();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v44;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 48 * v16);
      *v18 = v43;
      v18[1] = v26;
      v18[2] = v27;
      v18[3] = v42;
      v18[4] = v28;
      v18[5] = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100024748(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100048E98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000027D4(&qword_10005E1D8, &qword_10004BA58);
  v43 = a2;
  result = sub_10004A338();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_10002C538(&qword_10005E170, &type metadata accessor for DateInterval);
      result = sub_100049DB8();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100024B0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000027D4(&qword_10005E210, &qword_10004BA90);
  v48 = a2;
  result = sub_10004A338();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v47 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v52 = *v25;
      v27 = (*(v5 + 56) + 56 * v24);
      v28 = v27[1];
      v30 = v27[2];
      v29 = v27[3];
      v31 = v27[4];
      v32 = v27[5];
      v33 = v27[6];
      v50 = v32;
      v51 = *v27;
      if ((v48 & 1) == 0)
      {

        v34 = v30;
        v35 = v29;
      }

      v8 = v47;
      v36 = *(v47 + 40);
      sub_10004A418();
      sub_100049E48();
      result = sub_10004A448();
      v37 = -1 << *(v47 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v30;
        v18 = v29;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v30;
      v18 = v29;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v47 + 48) + 16 * v16);
      *v19 = v52;
      v19[1] = v26;
      v20 = (*(v47 + 56) + 56 * v16);
      *v20 = v51;
      v20[1] = v28;
      v20[2] = v17;
      v20[3] = v18;
      v20[4] = v31;
      v20[5] = v50;
      v20[6] = v33;
      ++*(v47 + 16);
      v5 = v46;
      v13 = v49;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v49 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_35;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100024E30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000027D4(&qword_10005E168, &qword_10004BA08);
  v37 = a2;
  result = sub_10004A338();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10004A418();
      sub_100049E48();
      result = sub_10004A448();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000250D4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_100048E98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_1000027D4(a3, a4);
  v47 = a2;
  result = sub_10004A338();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_10002C538(&qword_10005E170, &type metadata accessor for DateInterval);
      result = sub_100049DB8();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

unint64_t sub_1000254B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10004A398())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100025568(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_100048E98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10002C538(&qword_10005E178, &type metadata accessor for DateInterval);
      v16 = sub_100049DE8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_100025728()
{
  v1 = v0;
  sub_1000027D4(&qword_10005E208, &qword_10004BA88);
  v2 = *v0;
  v3 = sub_10004A328();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = v22[5];
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = (*(v4 + 56) + v17);
        *v30 = v23;
        v30[1] = v24;
        v30[2] = v25;
        v30[3] = v26;
        v30[4] = v27;
        v30[5] = v28;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000258D0()
{
  v1 = v0;
  v30 = sub_100048E98();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000027D4(&qword_10005E1D8, &qword_10004BA58);
  v4 = *v0;
  v5 = sub_10004A328();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 8 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 8 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100025B44()
{
  sub_1000027D4(&qword_10005E210, &qword_10004BA90);
  v33 = v0;
  v1 = *v0;
  v2 = sub_10004A328();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 56;
        v21 = (*(v1 + 56) + v16);
        v22 = *v21;
        v23 = v21[1];
        v25 = v21[2];
        v24 = v21[3];
        v26 = v21[4];
        v27 = v21[5];
        v28 = v21[6];
        v29 = (*(v3 + 48) + v17);
        *v29 = v20;
        v29[1] = v19;
        v30 = (*(v3 + 56) + v16);
        *v30 = v22;
        v30[1] = v23;
        v30[2] = v25;
        v30[3] = v24;
        v30[4] = v26;
        v30[5] = v27;
        v30[6] = v28;

        v31 = v25;
        v32 = v24;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v33 = v3;
  }

  return result;
}

void *sub_100025D04()
{
  v1 = v0;
  sub_1000027D4(&qword_10005E168, &qword_10004BA08);
  v2 = *v0;
  v3 = sub_10004A328();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100025E6C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_100048E98();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000027D4(a1, a2);
  v8 = *v2;
  v9 = sub_10004A328();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

__n128 sub_10002610C@<Q0>(char a1@<W0>, _WORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for XPCPersistentStoreManager();
  v18[3] = v10;
  v18[4] = &off_10005AA70;
  v18[0] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 65) = 0u;
  v12 = *sub_1000028DC(v18, v10);

  sub_10003D4A4(v12, a2, a3, a1, v11);

  swift_beginAccess();
  v13 = *(v11 + 32);
  v14 = *(v11 + 64);
  v21 = *(v11 + 48);
  v22 = v14;
  v23 = *(v11 + 80);
  v19 = *(v11 + 16);
  v20 = v13;
  sub_10002C5D0(&v19, v17);

  sub_100002890(v18);
  v15 = v22;
  *(a5 + 32) = v21;
  *(a5 + 48) = v15;
  *(a5 + 64) = v23;
  result = v20;
  *a5 = v19;
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_10002625C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 72) = a1;
  return _swift_task_switch(sub_100026288, 0, 0);
}

uint64_t sub_100026288()
{
  if (*(v0 + 72) == 1)
  {
    if (qword_10005D6B0 != -1)
    {
      swift_once();
    }

    v1 = sub_1000492C8();
    sub_1000143C0(v1, qword_10005DF78);
    v2 = sub_1000492A8();
    v3 = sub_10004A078();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetch profile picture started", v4, 2u);
    }

    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    if (v6 && v5)
    {
      v7 = *(v0 + 32);
      v8 = *(v0 + 16);
      v9 = swift_task_alloc();
      *(v0 + 56) = v9;
      *v9 = v0;
      v9[1] = sub_1000264D0;
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v12 = *(v0 + 24);

      return sub_1000024B8(v8, v12, v7, v10, v11);
    }

    v14 = sub_1000492A8();
    v15 = sub_10004A088();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "couldn't fetch profile pic because dsid or full name was nil", v16, 2u);
    }
  }

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_1000264D0(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1000265D0, 0, 0);
}

uint64_t sub_1000265D0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100026638(uint64_t a1)
{
  v271 = sub_1000491E8();
  v2 = *(v271 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v271);
  v5 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_100049158();
  v6 = *(v272 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v272);
  v9 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000491B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v251 = &v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v241 = &v225 - v15;
  v16 = sub_100049228();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v233 = *(a1 + 16);
  if (!v233)
  {
    v223 = 0;
    v24 = &_swiftEmptyDictionarySingleton;
    goto LABEL_131;
  }

  v227 = 0;
  v226 = 0;
  v229 = 0;
  v228 = 0;
  v262 = 0;
  v263 = 0;
  v264 = 0;
  v265 = 0;
  v257 = 0;
  v256 = 0;
  v259 = 0;
  v258 = 0;
  v21 = 0;
  v23 = *(v20 + 16);
  v22 = v20 + 16;
  v236 = v23;
  v235 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v250 = v11 + 16;
  v249 = (v11 + 8);
  v240 = CTCategoryIdentifierSystemUnblockable;
  v239 = CTCategoryIdentifierSystemBlockable;
  v245 = CTCategoryIdentifierSystemHidden;
  v266 = v6 + 16;
  v268 = v6;
  v261 = (v6 + 8);
  v260 = v2 + 16;
  v267 = v2;
  v255 = (v2 + 8);
  v230 = (v22 - 8);
  v234 = *(v22 + 56);
  v24 = &_swiftEmptyDictionarySingleton;
  v273 = &_swiftEmptyDictionarySingleton;
  v269 = v9;
  v270 = v5;
  v25 = &v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = v10;
  v246 = v11;
  v232 = v19;
  v231 = v22;
  v238 = v25;
  while (1)
  {
    v237 = v21;
    v236(v25, v235 + v234 * v21, v19);
    v28 = sub_100049218();
    v29 = v28;
    v30 = *(v28 + 16);
    if (v30)
    {
      v31 = 0;
      v254 = v28 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
      v32 = v241;
      v33 = v273;
      v252 = v28;
      v253 = v30;
      while (1)
      {
        if (v31 >= *(v29 + 16))
        {
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v34 = v248;
        (*(v246 + 16))(v32, v254 + *(v246 + 72) * v31, v248);
        sub_100049168();
        if (v35 > 0.0)
        {
          break;
        }

        (*v249)(v32, v34);
LABEL_7:
        if (v30 == ++v31)
        {
          goto LABEL_43;
        }
      }

      v36 = sub_100049E08();
      v38 = v37;
      v39 = sub_100049E08();
      v41 = v40;
      v42 = sub_100049E08();
      v44 = v43;
      if (sub_100049178() == v36 && v45 == v38)
      {

LABEL_14:
        v32 = v241;
        (*v249)(v241, v248);

LABEL_15:
        v9 = v269;
        v5 = v270;
LABEL_16:
        v29 = v252;
        v30 = v253;
        goto LABEL_7;
      }

      v46 = sub_10004A398();

      if (v46)
      {
        goto LABEL_14;
      }

      if (sub_100049178() == v39 && v47 == v41)
      {

        v9 = v269;
        v5 = v270;
LABEL_21:
        v32 = v241;
        (*v249)(v241, v248);

        goto LABEL_16;
      }

      v48 = sub_10004A398();

      v9 = v269;
      v5 = v270;
      if (v48)
      {
        goto LABEL_21;
      }

      v32 = v241;
      v49 = sub_100049178();
      v30 = v253;
      if (v49 == v42 && v50 == v44)
      {

LABEL_26:
        (*v249)(v32, v248);
        v29 = v252;
        goto LABEL_7;
      }

      v51 = sub_10004A398();

      if (v51)
      {
        goto LABEL_26;
      }

      v52 = sub_100049178();
      v54 = v53;
      v55 = sub_100049198();
      if (v56)
      {
        v57 = v55;
        v58 = v56;
      }

      else
      {

        v57 = v52;
        v58 = v54;
      }

      v59 = v229;
      v60 = v227;
      v61 = swift_allocObject();
      v61[2] = v57;
      v61[3] = v58;
      v61[4] = v52;
      v61[5] = v54;

      sub_10002C258(v60);
      sub_100049168();
      v63 = v62;
      v64 = swift_allocObject();
      *(v64 + 16) = sub_10002C374;
      *(v64 + 24) = v61;
      sub_10002C258(v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = v33;
      v67 = sub_100024340(v52, v54);
      v68 = v33[2];
      v69 = (v66 & 1) == 0;
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_140;
      }

      v71 = v66;
      if (v33[3] < v70)
      {
        sub_100024450(v70, isUniquelyReferenced_nonNull_native);
        v72 = sub_100024340(v52, v54);
        if ((v71 & 1) != (v73 & 1))
        {
          goto LABEL_142;
        }

        v67 = v72;
        v33 = v274;
        if ((v71 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_38:

LABEL_39:
        *(v33[7] + 48 * v67 + 16) = v63 + *(v33[7] + 48 * v67 + 16);
        v85 = v241;
        (*v249)(v241, v248);
        v229 = sub_10002C924;
        v227 = sub_10002C374;
        v226 = v61;
        v228 = v64;
        v32 = v85;
        v24 = v33;
        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v274;
        if (v66)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_100025728();
        v33 = v274;
        if (v71)
        {
          goto LABEL_38;
        }
      }

LABEL_34:
      v74 = *(v64 + 24);
      (*(v64 + 16))(&v274);
      v75 = v274;
      v76 = v275;
      v77 = v276;
      v78 = v277;
      v79 = v278;
      v33[(v67 >> 6) + 8] |= 1 << v67;
      v80 = (v33[6] + 16 * v67);
      *v80 = v52;
      v80[1] = v54;
      v81 = v33[7] + 48 * v67;
      *v81 = v75;
      *(v81 + 8) = v76;
      *(v81 + 16) = v77;
      *(v81 + 24) = v78;
      *(v81 + 40) = v79;
      v82 = v33[2];
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_141;
      }

      v33[2] = v84;
      goto LABEL_39;
    }

    v33 = v273;
LABEL_43:
    v273 = v33;

    v86 = sub_100049218();
    v244 = *(v86 + 16);
    if (v244)
    {
      break;
    }

LABEL_3:

    v26 = v237 + 1;
    v25 = v238;
    v27 = v232;
    (*v230)(v238, v232);
    v21 = v26;
    v19 = v27;
    if (v26 == v233)
    {
      goto LABEL_130;
    }
  }

  v87 = 0;
  v88 = v246;
  v243 = v86 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
  v89 = v248;
  v242 = v86;
  while (1)
  {
    if (v87 >= *(v86 + 16))
    {
      goto LABEL_137;
    }

    v91 = *(v88 + 72);
    v247 = v87;
    (*(v88 + 16))(v251, v243 + v91 * v87, v89);
    v92 = sub_100049E08();
    v94 = v93;
    if (sub_100049178() != v92 || v95 != v94)
    {
      break;
    }

LABEL_51:

LABEL_46:
    v90 = v247 + 1;
    (*v249)(v251, v89);
    v87 = v90;
    v86 = v242;
    if (v90 == v244)
    {
      goto LABEL_3;
    }
  }

  v96 = sub_10004A398();

  if (v96)
  {
    goto LABEL_46;
  }

  v97 = sub_1000491A8();
  v98 = v97;
  v99 = *(v97 + 16);
  if (!v99)
  {

    goto LABEL_92;
  }

  v100 = 0;
  v101 = v97 + ((*(v268 + 80) + 32) & ~*(v268 + 80));
  v254 = v97;
  v253 = v99;
  v252 = v101;
  while (1)
  {
    if (v100 >= *(v98 + 16))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      sub_10002C258(v227);
      sub_10002C258(v229);
      sub_10002C258(v263);
      sub_10002C258(v265);
      sub_10002C258(v257);
      v223 = v259;
LABEL_131:
      sub_10002C258(v223);
      return v24;
    }

    (*(v268 + 16))(v9, v101 + *(v268 + 72) * v100, v272);
    sub_100049128();
    if (v102 <= 0.0)
    {
      goto LABEL_57;
    }

    v103 = sub_100049138();
    v105 = v104;
    v106 = sub_100049148();
    if (v107)
    {
      v108 = v106;
      v109 = v107;
    }

    else
    {

      v108 = v103;
      v109 = v105;
    }

    v110 = swift_allocObject();
    *(v110 + 2) = v108;
    *(v110 + 3) = v109;
    *(v110 + 4) = v103;
    *(v110 + 5) = v105;

    sub_10002C258(v263);
    sub_100049128();
    v112 = v111;
    v113 = swift_allocObject();
    *(v113 + 16) = sub_10002C32C;
    *(v113 + 24) = v110;
    sub_10002C258(v265);
    v114 = v273;
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v274 = v114;
    v117 = sub_100024340(v103, v105);
    v118 = v114[2];
    v119 = (v116 & 1) == 0;
    v120 = v118 + v119;
    if (__OFADD__(v118, v119))
    {
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v121 = v116;
    if (v114[3] >= v120)
    {
      break;
    }

    sub_100024450(v120, v115);
    v24 = v274;
    v122 = sub_100024340(v103, v105);
    if ((v121 & 1) != (v123 & 1))
    {
      goto LABEL_142;
    }

    v117 = v122;
    if ((v121 & 1) == 0)
    {
LABEL_70:
      v124 = *(v113 + 24);
      (*(v113 + 16))(&v274);
      v125 = v274;
      v126 = v275;
      v127 = v276;
      v128 = v277;
      v129 = v278;
      v24[(v117 >> 6) + 8] |= 1 << v117;
      v130 = (v24[6] + 16 * v117);
      *v130 = v103;
      v130[1] = v105;
      v131 = v24[7] + 48 * v117;
      *v131 = v125;
      *(v131 + 8) = v126;
      *(v131 + 16) = v127;
      *(v131 + 24) = v128;
      *(v131 + 40) = v129;
      v132 = v24[2];
      v83 = __OFADD__(v132, 1);
      v133 = v132 + 1;
      if (v83)
      {
        goto LABEL_135;
      }

      v24[2] = v133;
      goto LABEL_56;
    }

LABEL_55:

LABEL_56:
    *(v24[7] + 48 * v117 + 16) = v112 + *(v24[7] + 48 * v117 + 16);
    v264 = v113;
    v265 = sub_10002C924;
    v262 = v110;
    v263 = sub_10002C32C;
    v273 = v24;
    v9 = v269;
    v5 = v270;
    v98 = v254;
    v99 = v253;
    v101 = v252;
LABEL_57:
    ++v100;
    (*v261)(v9, v272);
    if (v100 == v99)
    {

      v89 = v248;
      v88 = v246;
LABEL_92:
      v162 = sub_100049188();
      v163 = v162;
      v164 = *(v162 + 16);
      if (!v164)
      {
        goto LABEL_51;
      }

      v165 = 0;
      v166 = v162 + ((*(v267 + 80) + 32) & ~*(v267 + 80));
      v254 = *(v162 + 16);
      v253 = v166;
      while (1)
      {
        if (v165 >= *(v163 + 16))
        {
          goto LABEL_129;
        }

        (*(v267 + 16))(v5, v166 + *(v267 + 72) * v165, v271);
        sub_1000491C8();
        if (v167 > 0.0)
        {
          break;
        }

LABEL_96:
        ++v165;
        (*v255)(v5, v271);
        if (v165 == v164)
        {

          v89 = v248;
          v88 = v246;
          goto LABEL_46;
        }
      }

      v168 = sub_1000491D8();
      v170 = v169;
      v171 = swift_allocObject();
      *(v171 + 16) = v168;
      *(v171 + 24) = v170;

      sub_10002C258(v257);
      sub_1000491C8();
      v173 = v172;
      v174 = swift_allocObject();
      *(v174 + 16) = sub_10002C2A0;
      *(v174 + 24) = v171;
      sub_10002C258(v259);
      v175 = v273;
      v176 = swift_isUniquelyReferenced_nonNull_native();
      v274 = v175;
      v178 = sub_100024340(v168, v170);
      v179 = v175[2];
      v180 = (v177 & 1) == 0;
      v181 = v179 + v180;
      if (__OFADD__(v179, v180))
      {
        goto LABEL_133;
      }

      v182 = v177;
      if (v175[3] >= v181)
      {
        if (v176)
        {
          v24 = v175;
          if ((v177 & 1) == 0)
          {
LABEL_106:
            v185 = *(v174 + 24);
            (*(v174 + 16))(&v274);
            v186 = v274;
            v187 = v275;
            v188 = v276;
            v189 = v277;
            v190 = v278;
            v24[(v178 >> 6) + 8] |= 1 << v178;
            v191 = (v24[6] + 16 * v178);
            *v191 = v168;
            v191[1] = v170;
            v192 = v24[7] + 48 * v178;
            *v192 = v186;
            *(v192 + 8) = v187;
            *(v192 + 16) = v188;
            *(v192 + 24) = v189;
            *(v192 + 40) = v190;
            v193 = v24[2];
            v83 = __OFADD__(v193, 1);
            v194 = v193 + 1;
            if (v83)
            {
              goto LABEL_136;
            }

            v24[2] = v194;
            goto LABEL_95;
          }
        }

        else
        {
          sub_1000027D4(&qword_10005E208, &qword_10004BA88);
          v195 = sub_10004A328();
          v196 = v273;
          v24 = v195;
          if (v273[2])
          {
            v197 = (v195 + 64);
            v198 = (v273 + 8);
            v199 = ((1 << *(v24 + 32)) + 63) >> 6;
            v252 = (v273 + 8);
            if (v24 != v273 || v197 >= &v198[8 * v199])
            {
              memmove(v197, v198, 8 * v199);
              v196 = v273;
            }

            v200 = 0;
            v24[2] = v196[2];
            v201 = 1 << *(v196 + 32);
            if (v201 < 64)
            {
              v202 = ~(-1 << v201);
            }

            else
            {
              v202 = -1;
            }

            v203 = v202 & v196[8];
            v204 = (v201 + 63) >> 6;
            v256 = v204;
            if (v203)
            {
              do
              {
                v259 = (v203 - 1) & v203;
                v205 = __clz(__rbit64(v203)) | (v200 << 6);
                v206 = v273;
LABEL_122:
                v209 = 16 * v205;
                v210 = (v206[6] + 16 * v205);
                v212 = *v210;
                v211 = v210[1];
                v213 = 48 * v205;
                v214 = (v206[7] + v213);
                v215 = *v214;
                v257 = v214[1];
                v216 = v257;
                v217 = v214[2];
                v218 = v214[3];
                v258 = v214[4];
                v219 = v258;
                v220 = v214[5];
                v221 = (v24[6] + v209);
                *v221 = v212;
                v221[1] = v211;
                v222 = (v24[7] + v213);
                *v222 = v215;
                v222[1] = v216;
                v222[2] = v217;
                v222[3] = v218;
                v222[4] = v219;
                v222[5] = v220;

                v204 = v256;
                v203 = v259;
              }

              while (v259);
            }

            v207 = v200;
            v206 = v273;
            while (1)
            {
              v200 = v207 + 1;
              if (__OFADD__(v207, 1))
              {
                goto LABEL_139;
              }

              if (v200 >= v204)
              {
                break;
              }

              v208 = *&v252[8 * v200];
              ++v207;
              if (v208)
              {
                v259 = (v208 - 1) & v208;
                v205 = __clz(__rbit64(v208)) | (v200 << 6);
                goto LABEL_122;
              }
            }
          }

          if ((v182 & 1) == 0)
          {
            goto LABEL_106;
          }
        }
      }

      else
      {
        sub_100024450(v181, v176);
        v24 = v274;
        v183 = sub_100024340(v168, v170);
        if ((v182 & 1) != (v184 & 1))
        {
          goto LABEL_142;
        }

        v178 = v183;
        if ((v182 & 1) == 0)
        {
          goto LABEL_106;
        }
      }

LABEL_95:
      *(v24[7] + 48 * v178 + 16) = v173 + *(v24[7] + 48 * v178 + 16);
      v259 = sub_10002C2E0;
      v257 = sub_10002C2A0;
      v273 = v24;
      v256 = v171;
      v258 = v174;
      v9 = v269;
      v5 = v270;
      v164 = v254;
      v166 = v253;
      goto LABEL_96;
    }
  }

  if (v115)
  {
    v24 = v114;
    if ((v116 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_55;
  }

  sub_1000027D4(&qword_10005E208, &qword_10004BA88);
  v134 = sub_10004A328();
  v135 = v273;
  v24 = v134;
  if (!v273[2])
  {
LABEL_88:

    if ((v121 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_55;
  }

  v136 = (v134 + 64);
  v137 = (v273 + 8);
  v138 = ((1 << *(v24 + 32)) + 63) >> 6;
  if (v24 != v273 || v136 >= &v137[8 * v138])
  {
    memmove(v136, v273 + 8, 8 * v138);
    v135 = v273;
  }

  v139 = 0;
  v24[2] = v135[2];
  v140 = 1 << *(v135 + 32);
  if (v140 < 64)
  {
    v141 = ~(-1 << v140);
  }

  else
  {
    v141 = -1;
  }

  v142 = v141 & v135[8];
  v143 = ((v140 + 63) >> 6);
  v262 = v137;
  v263 = v143;
  if (v142)
  {
    do
    {
      v265 = (v142 - 1) & v142;
      v144 = __clz(__rbit64(v142)) | (v139 << 6);
      v145 = v273;
LABEL_86:
      v148 = 16 * v144;
      v149 = (v145[6] + 16 * v144);
      v151 = *v149;
      v150 = v149[1];
      v152 = 48 * v144;
      v153 = (v145[7] + v152);
      v154 = *v153;
      v264 = v153[1];
      v155 = v264;
      v156 = v153[2];
      v157 = v153[3];
      v158 = v153[4];
      v159 = v153[5];
      v160 = (v24[6] + v148);
      *v160 = v151;
      v160[1] = v150;
      v161 = (v24[7] + v152);
      *v161 = v154;
      v161[1] = v155;
      v161[2] = v156;
      v161[3] = v157;
      v161[4] = v158;
      v161[5] = v159;

      v137 = v262;
      v143 = v263;
      v142 = v265;
    }

    while (v265);
  }

  v146 = v139;
  v145 = v273;
  while (1)
  {
    v139 = v146 + 1;
    if (__OFADD__(v146, 1))
    {
      break;
    }

    if (v139 >= v143)
    {
      goto LABEL_88;
    }

    v147 = *&v137[8 * v139];
    ++v146;
    if (v147)
    {
      v265 = (v147 - 1) & v147;
      v144 = __clz(__rbit64(v147)) | (v139 << 6);
      goto LABEL_86;
    }
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}

uint64_t sub_100027B60(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = &_swiftEmptyArrayStorage;
LABEL_89:
    __dst = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_91;
    }

    goto LABEL_131;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v8 + 1 >= v7)
    {
      v28 = v8 + 1;
    }

    else
    {
      v146 = v7;
      v10 = *a3;
      v11 = (*a3 + 48 * (v8 + 1));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = v11[4];
      v17 = v11[5];
      v157 = v12;
      v158 = v13;
      v159 = v14;
      v160 = v15;
      v161 = v16;
      v162 = v17;
      v18 = (v10 + 48 * v8);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      v151 = v19;
      v152 = v20;
      v153 = v21;
      v154 = v22;
      v155 = v23;
      v156 = v24;

      LODWORD(__dst) = sub_100021204(&v157, &v151, a5);
      if (v6)
      {
        swift_bridgeObjectRelease_n();
      }

      v25 = v8;
      v26 = v8 + 2;
      v140 = v25;
      v142 = 48 * v25;
      v27 = (v10 + 48 * v25 + 136);
      while (1)
      {
        v28 = v146;
        if (v146 == v26)
        {
          break;
        }

        v29 = *(v27 - 4);
        v30 = *(v27 - 3);
        v31 = *(v27 - 2);
        v32 = *(v27 - 1);
        v33 = *v27;
        v35 = *(v27 - 7);
        v34 = *(v27 - 6);
        v157 = *(v27 - 5);
        v158 = v29;
        v159 = v30;
        v160 = v31;
        v161 = v32;
        v162 = v33;
        v36 = *(v27 - 10);
        v37 = *(v27 - 9);
        v38 = *(v27 - 8);
        v151 = *(v27 - 11);
        v152 = v36;
        v153 = v37;
        v154 = v38;
        v155 = v35;
        v156 = v34;

        v39 = sub_100021204(&v157, &v151, a5);

        ++v26;
        v27 += 6;
        if ((__dst ^ v39))
        {
          v28 = v26 - 1;
          break;
        }
      }

      v8 = v140;
      if (__dst)
      {
        if (v28 < v140)
        {
          goto LABEL_125;
        }

        if (v140 < v28)
        {
          v40 = 48 * v28 - 24;
          v41 = v142 + 40;
          v42 = v28;
          v43 = v140;
          do
          {
            if (v43 != --v42)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v45 = (v44 + v41);
              v46 = v44 + v40;
              v47 = *(v45 - 5);
              v48 = *(v45 - 4);
              v49 = *(v45 - 3);
              v50 = *(v45 - 1);
              v51 = *v45;
              v52 = *(v46 + 8);
              v53 = *(v46 - 8);
              *(v45 - 5) = *(v46 - 24);
              *(v45 - 3) = v53;
              *(v45 - 1) = v52;
              *(v46 - 24) = v47;
              *(v46 - 16) = v48;
              *(v46 - 8) = v49;
              *v46 = v50;
              *(v46 + 16) = v51;
            }

            ++v43;
            v40 -= 48;
            v41 += 48;
          }

          while (v43 < v42);
        }
      }
    }

    v54 = a3[1];
    if (v28 >= v54)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v28, v8))
    {
      goto LABEL_121;
    }

    if (v28 - v8 >= a4)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_127:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_128;
    }

    if (v8 + a4 >= v54)
    {
      v55 = a3[1];
    }

    else
    {
      v55 = v8 + a4;
    }

    if (v55 < v8)
    {
      goto LABEL_124;
    }

    if (v28 == v55)
    {
LABEL_28:
      v56 = v28;
      if (v28 < v8)
      {
        goto LABEL_120;
      }
    }

    else
    {
      __dst = v6;
      v108 = *a3;
      v109 = *a3 + 48 * v28 - 48;
      v141 = v8;
      v144 = v55;
      v110 = v8 - v28;
      do
      {
        v147 = v28;
        v111 = (v108 + 48 * v28);
        v112 = *v111;
        v113 = v111[1];
        v114 = v111[2];
        v115 = v111[3];
        v116 = v111[4];
        v117 = v111[5];
        v137 = v110;
        v138 = v109;
        v118 = v109;
        do
        {
          v157 = v112;
          v158 = v113;
          v159 = v114;
          v160 = v115;
          v161 = v116;
          v162 = v117;
          v119 = v118[1];
          v120 = v118[2];
          v121 = v118[3];
          v122 = v118[4];
          v123 = v118[5];
          v151 = *v118;
          v152 = v119;
          v153 = v120;
          v154 = v121;
          v155 = v122;
          v156 = v123;

          v124 = sub_100021204(&v157, &v151, a5);
          if (__dst)
          {
            swift_bridgeObjectRelease_n();
          }

          v125 = v124;

          if ((v125 & 1) == 0)
          {
            break;
          }

          if (!v108)
          {
            goto LABEL_127;
          }

          v112 = v118[6];
          v113 = v118[7];
          v114 = v118[8];
          v115 = v118[9];
          v116 = v118[10];
          v117 = v118[11];
          v126 = *(v118 + 1);
          *(v118 + 3) = *v118;
          *(v118 + 4) = v126;
          *(v118 + 5) = *(v118 + 2);
          *v118 = v112;
          v118[1] = v113;
          v118[2] = v114;
          v118[3] = v115;
          v118[4] = v116;
          v118[5] = v117;
          v118 -= 6;
        }

        while (!__CFADD__(v110++, 1));
        v28 = v147 + 1;
        v109 = v138 + 48;
        v110 = v137 - 1;
        v56 = v144;
      }

      while (v147 + 1 != v144);
      v8 = v141;
      v6 = 0;
      if (v144 < v141)
      {
        goto LABEL_120;
      }
    }

    v57 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1000231F4(0, *(v9 + 2) + 1, 1, v9);
    }

    v59 = *(v9 + 2);
    v58 = *(v9 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v9 = sub_1000231F4((v58 > 1), v59 + 1, 1, v9);
    }

    *(v9 + 2) = v60;
    v61 = &v9[16 * v59];
    *(v61 + 4) = v57;
    *(v61 + 5) = v56;
    v143 = v56;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v59)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v143;
    if (v143 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v62 = v60 - 1;
    if (v60 >= 4)
    {
      v67 = &v9[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_107;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_108;
      }

      v74 = &v9[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_110;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_113;
      }

      if (v78 >= v70)
      {
        v96 = &v9[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_119;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v60 == 3)
    {
      v63 = *(v9 + 4);
      v64 = *(v9 + 5);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_48:
      if (v66)
      {
        goto LABEL_109;
      }

      v79 = &v9[16 * v60];
      v81 = *v79;
      v80 = *(v79 + 1);
      v82 = __OFSUB__(v80, v81);
      v83 = v80 - v81;
      v84 = v82;
      if (v82)
      {
        goto LABEL_112;
      }

      v85 = &v9[16 * v62 + 32];
      v87 = *v85;
      v86 = *(v85 + 1);
      v73 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v73)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v83, v88))
      {
        goto LABEL_116;
      }

      if (v83 + v88 >= v65)
      {
        if (v65 < v88)
        {
          v62 = v60 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v89 = &v9[16 * v60];
    v91 = *v89;
    v90 = *(v89 + 1);
    v73 = __OFSUB__(v90, v91);
    v83 = v90 - v91;
    v84 = v73;
LABEL_62:
    if (v84)
    {
      goto LABEL_111;
    }

    v92 = &v9[16 * v62];
    v94 = *(v92 + 4);
    v93 = *(v92 + 5);
    v73 = __OFSUB__(v93, v94);
    v95 = v93 - v94;
    if (v73)
    {
      goto LABEL_114;
    }

    if (v95 < v83)
    {
      goto LABEL_3;
    }

LABEL_69:
    v100 = v62 - 1;
    if (v62 - 1 >= v60)
    {
      break;
    }

    v101 = *a3;
    if (!*a3)
    {
      goto LABEL_126;
    }

    v102 = *&v9[16 * v100 + 32];
    v103 = *&v9[16 * v62 + 40];
    v104 = (v101 + 48 * v102);
    v105 = (v101 + 48 * *&v9[16 * v62 + 32]);
    v106 = (v101 + 48 * v103);

    sub_100023D5C(v104, v105, v106, __dst, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
    }

    if (v103 < v102)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10002432C(v9);
    }

    if (v100 >= *(v9 + 2))
    {
      goto LABEL_106;
    }

    v107 = &v9[16 * v100];
    *(v107 + 4) = v102;
    *(v107 + 5) = v103;
    v163 = v9;
    sub_1000242A0(v62);
    v9 = v163;
    v60 = *(v163 + 2);
    if (v60 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v9 = sub_10002432C(v9);
LABEL_91:
  v163 = v9;
  v128 = *(v9 + 2);
  if (v128 < 2)
  {
LABEL_99:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v129 = *a3;
      if (!*a3)
      {
        break;
      }

      v130 = *&v9[16 * v128];
      v131 = *&v9[16 * v128 + 24];
      v132 = (v129 + 48 * v130);
      v133 = (v129 + 48 * *&v9[16 * v128 + 16]);
      v134 = (v129 + 48 * v131);

      sub_100023D5C(v132, v133, v134, __dst, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v131 < v130)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10002432C(v9);
      }

      if (v128 - 2 >= *(v9 + 2))
      {
        goto LABEL_118;
      }

      v135 = &v9[16 * v128];
      *v135 = v130;
      *(v135 + 1) = v131;
      v163 = v9;
      sub_1000242A0(v128 - 1);
      v9 = v163;
      v128 = *(v163 + 2);
      if (v128 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_128:

    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_131:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000284CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v30 = a5;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 48 * a3 - 48);
    v8 = result - a3;
LABEL_4:
    v26 = v7;
    v27 = a3;
    v9 = (v6 + 48 * a3);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = v9[5];
    v25 = v8;
    while (1)
    {
      v29[0] = v10;
      v29[1] = v11;
      v29[2] = v12;
      v29[3] = v13;
      v29[4] = v14;
      v29[5] = v15;
      v16 = v7[1];
      v17 = v7[2];
      v18 = v7[3];
      v19 = v7[4];
      v20 = v7[5];
      v28[0] = *v7;
      v28[1] = v16;
      v28[2] = v17;
      v28[3] = v18;
      v28[4] = v19;
      v28[5] = v20;

      v21 = sub_100021204(v29, v28, v30);

      if (v5)
      {
        break;
      }

      if (v21)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v7[6];
        v11 = v7[7];
        v12 = v7[8];
        v13 = v7[9];
        v14 = v7[10];
        v15 = v7[11];
        v22 = *(v7 + 1);
        *(v7 + 3) = *v7;
        *(v7 + 4) = v22;
        *(v7 + 5) = *(v7 + 2);
        *v7 = v10;
        v7[1] = v11;
        v7[2] = v12;
        v7[3] = v13;
        v7[4] = v14;
        v7[5] = v15;
        v7 -= 6;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v27 + 1;
      v7 = v26 + 6;
      v8 = v25 - 1;
      if (v27 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

Swift::Int sub_10002864C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_10004A368(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_100049F68();
        v8[2] = v7;
      }

      v9[0] = v8 + 4;
      v9[1] = v7;

      sub_100027B60(v9, v10, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
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

    sub_1000284CC(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100028794(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1000260F8(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_10002864C(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

char *sub_100028838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = &_swiftEmptyArrayStorage;
    if (!v6)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 56) + 48 * (v10 | (v8 << 6)));
        v12 = v11[5];
        if (v12 != 3)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v51 = *v11;
      v14 = v11[2];
      v15 = v11[4];
      v48 = v11[3];
      v55 = v11[1];

      v53 = v15;

      v57 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000238C4(0, *(v9 + 2) + 1, 1);
        v9 = v57;
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v47 = v17 + 1;
        sub_1000238C4((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
        v9 = v57;
      }

      *(v9 + 2) = v18;
      v19 = &v9[48 * v17];
      *(v19 + 4) = v51;
      *(v19 + 5) = v55;
      *(v19 + 6) = v14;
      *(v19 + 7) = v48;
      *(v19 + 8) = v53;
      *(v19 + 9) = v12;
    }

    while (v6);
LABEL_7:
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        v57 = v9;

        sub_100028794(&v57, &off_100059BC8);
        sub_1000027D4(&qword_10005E1B8, &qword_10004BA40);
        swift_arrayDestroy();

        if ((a2 & 0x8000000000000000) == 0)
        {
          v20 = v57;
          v57 = &_swiftEmptyArrayStorage;
          sub_1000238E4(0, 0, 0);
          v21 = 0;
          v49 = v20;
          v22 = (v20 + 72);
          v23 = v57;
          do
          {
            v24 = *(v49 + 2);
            if (v21 == v24)
            {
              break;
            }

            if (v21 >= v24)
            {
              goto LABEL_31;
            }

            v25 = *(v22 - 4);
            v26 = *(v22 - 3);
            v27 = *(v22 - 1);
            v28 = *v22;
            v29 = *(v22 - 2);
            v30 = objc_allocWithZone(STUsageDetailItem);

            v31 = sub_100049DF8();
            v32 = [v30 initWithType:v28 identifier:v31];

            v33 = [v32 localizedDisplayName];
            v34 = sub_100049E08();
            v54 = v35;
            v56 = v34;

            v36 = &selRef_darkColorsMonogram;
            if (v28 == 2)
            {
              v37 = &selRef_lightColorsMonogram;
            }

            else
            {
              v36 = &selRef_iconImage;
              v37 = &selRef_iconImage;
            }

            v52 = [v32 *v36];
            v38 = [v32 *v37];
            v39 = [v32 identifier];
            v40 = sub_100049E08();
            v42 = v41;

            v57 = v23;
            v44 = *(v23 + 2);
            v43 = *(v23 + 3);
            if (v44 >= v43 >> 1)
            {
              sub_1000238E4((v43 > 1), v44 + 1, 1);
              v23 = v57;
            }

            ++v21;
            *(v23 + 2) = v44 + 1;
            v45 = &v23[56 * v44];
            *(v45 + 4) = v40;
            *(v45 + 5) = v42;
            *(v45 + 6) = v52;
            *(v45 + 7) = v38;
            *(v45 + 8) = v26;
            *(v45 + 9) = v56;
            *(v45 + 10) = v54;
            v22 += 6;
          }

          while (a2 != v21);

          return v23;
        }

LABEL_32:
        __break(1u);

        __break(1u);
        return result;
      }

      v6 = *(v3 + 8 * v13);
      ++v8;
      if (v6)
      {
        v8 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_100028C50(uint64_t a1)
{
  v2 = sub_100049228();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100048E98();
  v7 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v12 = 0;
  v43 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = a1 + v43;
  v14 = *(v3 + 72);
  v45 = (v3 + 16);
  v38 = v8 + 16;
  v39 = v8;
  v41 = (v8 + 8);
  v42 = v14;
  v15 = &_swiftEmptyDictionarySingleton;
  v40 = (v3 + 32);
  v44 = v2;
  while (1)
  {
    sub_100049208();
    v16 = v6;
    (*v45)(v6, v13, v2);
    sub_10002C258(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v15;
    v19 = sub_1000243B8(v10);
    v20 = v15[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v15[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_100025E6C(&qword_10005E1E8, &qword_10004BA68);
        v15 = v47;
        if (v23)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_1000250D4(v22, isUniquelyReferenced_nonNull_native, &qword_10005E1E8, &qword_10004BA68);
      v15 = v47;
      v24 = sub_1000243B8(v10);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_24;
      }

      v19 = v24;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    v15[(v19 >> 6) + 8] |= 1 << v19;
    (*(v39 + 16))(v15[6] + *(v39 + 72) * v19, v10, v46);
    *(v15[7] + 8 * v19) = &_swiftEmptyArrayStorage;
    v26 = v15[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_23;
    }

    v15[2] = v28;
LABEL_12:
    v29 = v15[7];
    v30 = *(v29 + 8 * v19);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 8 * v19) = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_100023424(0, v30[2] + 1, 1, v30, &qword_10005E1F0, &unk_10004BA70, &type metadata accessor for _DeviceActivityData.ActivitySegment);
      *(v29 + 8 * v19) = v30;
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      *(v29 + 8 * v19) = sub_100023424(v32 > 1, v33 + 1, 1, v30, &qword_10005E1F0, &unk_10004BA70, &type metadata accessor for _DeviceActivityData.ActivitySegment);
    }

    (*v41)(v10, v46);
    v34 = *(v29 + 8 * v19);
    *(v34 + 16) = v33 + 1;
    v35 = v42;
    v36 = v34 + v43 + v33 * v42;
    v6 = v16;
    v2 = v44;
    (*v40)(v36, v16, v44);
    v13 += v35;
    v12 = sub_10002189C;
    if (!--v11)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}

unint64_t sub_100029080(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005E1E0, &qword_10004BA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000027D4(&qword_10005E1D8, &qword_10004BA58);
    v8 = sub_10004A348();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v10, v6, &qword_10005E1E0, &qword_10004BA60);
      result = sub_1000243B8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100048E98();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100029268(uint64_t a1)
{
  v68 = sub_100049228();
  v2 = *(v68 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v68);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100048E98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v67 - v12;
  v13 = sub_1000027D4(&qword_10005E180, &qword_10004BA10);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v76 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = &v67 - v17;
  v18 = sub_100029080(&_swiftEmptyArrayStorage);
  v19 = *(a1 + 64);
  v75 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v67 = (v20 + 63) >> 6;
  v77 = v7 + 16;
  v78 = v7;
  v81 = (v7 + 32);
  v69 = v2 + 16;
  v70 = v2;
  v23 = (v2 + 8);
  v24 = v6;
  v72 = a1;
  v73 = (v7 + 8);
  v25 = v11;

  v26 = 0;
  v79 = v11;
  v84 = v24;
  while (1)
  {
    v83 = v18;
    if (!v22)
    {
      break;
    }

    v27 = v26;
LABEL_16:
    v82 = (v22 - 1) & v22;
    v31 = __clz(__rbit64(v22)) | (v27 << 6);
    v33 = v71;
    v32 = v72;
    v34 = v78;
    v35 = v84;
    (*(v78 + 16))(v71, *(v72 + 48) + *(v78 + 72) * v31, v84);
    v80 = *(*(v32 + 56) + 8 * v31);
    v36 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
    v37 = *(v36 + 48);
    v38 = *(v34 + 32);
    v30 = v76;
    v38(v76, v33, v35);
    *(v30 + v37) = v80;
    (*(*(v36 - 8) + 56))(v30, 0, 1, v36);

    v25 = v79;
LABEL_17:
    v39 = v74;
    sub_100004DF8(v30, v74, &qword_10005E180, &qword_10004BA10);
    v40 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {

      return v83;
    }

    v41 = *(v39 + *(v40 + 48));
    (*v81)(v25, v39, v84);
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v80 = v41;
      v44 = v41 + v43;
      v45 = *(v70 + 72);
      v46 = *(v70 + 16);
      v47 = 0.0;
      v48 = v68;
      do
      {
        v46(v5, v44, v48);
        sub_1000491F8();
        v50 = v49;
        (*v23)(v5, v48);
        v47 = v47 + v50;
        v44 += v45;
        --v42;
      }

      while (v42);

      v25 = v79;
    }

    else
    {

      v47 = 0.0;
    }

    v51 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v51;
    v54 = sub_1000243B8(v25);
    v55 = v51[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_35;
    }

    v58 = v53;
    if (v51[3] >= v57)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000258D0();
      }
    }

    else
    {
      sub_100024748(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_1000243B8(v25);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_37;
      }

      v54 = v59;
    }

    v61 = v84;
    v18 = v85;
    v22 = v82;
    if (v58)
    {
      *(v85[7] + 8 * v54) = v47;
    }

    else
    {
      v85[(v54 >> 6) + 8] |= 1 << v54;
      (*(v78 + 16))(v18[6] + *(v78 + 72) * v54, v25, v61);
      *(v18[7] + 8 * v54) = v47;
      v62 = v18[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_36;
      }

      v18[2] = v64;
    }

    (*v73)(v25, v61);
  }

  if (v67 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v67;
  }

  v29 = v28 - 1;
  v30 = v76;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v67)
    {
      v65 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
      (*(*(v65 - 8) + 56))(v30, 1, 1, v65);
      v82 = 0;
      v26 = v29;
      goto LABEL_17;
    }

    v22 = *(v75 + 8 * v27);
    ++v26;
    if (v22)
    {
      v26 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}

uint64_t sub_1000298D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  while (v8)
  {
    v9 = v4;
LABEL_10:
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    if (*(*(result + 56) + 48 * (v10 | (v9 << 6)) + 40) == 3)
    {
      v11 = 1 << *(result + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(result + 64);
      v14 = (v11 + 63) >> 6;

      v15 = 0;
      if (!v13)
      {
        goto LABEL_16;
      }

      do
      {
LABEL_14:
        while (1)
        {
          v16 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v17 = (*(v3 + 56) + 48 * (v16 | (v15 << 6)));
          if (v17[5] == 3)
          {
            break;
          }

          if (!v13)
          {
            goto LABEL_16;
          }
        }

        v19 = v17[2];
        v20 = v17[4];
        v28 = v17[3];
        v29 = *v17;
        v30 = v17[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000238C4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          result = sub_1000238C4((v21 > 1), v22 + 1, 1);
          v23 = v22 + 1;
        }

        _swiftEmptyArrayStorage[2] = v23;
        v24 = &_swiftEmptyArrayStorage[6 * v22];
        v24[4] = v29;
        v24[5] = v30;
        v24[6] = v19;
        v24[7] = v28;
        v24[8] = v20;
        v24[9] = 3;
      }

      while (v13);
LABEL_16:
      while (1)
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v18 >= v14)
        {

          v25 = sub_1000027D4(&qword_10005E1C0, &qword_10004BA48);
          v32 = v25;
          v33 = sub_100005708(&qword_10005E1C8, &qword_10005E1C0, &qword_10004BA48);
          v31[0] = _swiftEmptyArrayStorage;
          goto LABEL_27;
        }

        v13 = *(v5 + 8 * v18);
        ++v15;
        if (v13)
        {
          v15 = v18;
          goto LABEL_14;
        }
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v9 >= ((v6 + 63) >> 6))
    {
      break;
    }

    v8 = *(v5 + 8 * v9);
    ++v4;
    if (v8)
    {
      v4 = v9;
      goto LABEL_10;
    }
  }

  v25 = sub_1000027D4(&qword_10005E1A8, &qword_10004BA38);
  v32 = v25;
  v33 = sub_100005708(&qword_10005E1B0, &qword_10005E1A8, &qword_10004BA38);
  v31[0] = v3;

LABEL_27:
  v26 = sub_1000028DC(v31, v25);
  __chkstk_darwin(v26);
  v27 = sub_100049F18();
  sub_1000027D4(&qword_10005E1B8, &qword_10004BA40);
  result = swift_arrayDestroy();
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_100002890(v31);
    return v27;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100029C74(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005E1A0, &qword_10004BA30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000027D4(&qword_10005E190, &qword_10004BA20);
    v8 = sub_10004A348();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v10, v6, &qword_10005E1A0, &qword_10004BA30);
      result = sub_1000243B8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100048E98();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100029E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000027D4(&qword_10005E168, &qword_10004BA08);
    v3 = sub_10004A348();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100024340(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100029F60(uint64_t a1, uint64_t a2, void *a3)
{
  v268 = a2;
  v301 = sub_1000491E8();
  v306 = *(v301 - 8);
  v5 = *(v306 + 64);
  __chkstk_darwin(v301);
  v300 = &v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_100049158();
  v7 = *(v305 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v305);
  v304 = &v256 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000491B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v276 = &v256 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v261 = &v256 - v16;
  __chkstk_darwin(v15);
  v18 = &v256 - v17;
  v293 = sub_100049228();
  v19 = *(v293 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v293);
  v292 = &v256 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_100048E98();
  v22 = *(v280 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v280);
  v277 = &v256 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v279 = &v256 - v27;
  __chkstk_darwin(v26);
  v264 = &v256 - v28;
  v29 = sub_1000027D4(&qword_10005E180, &qword_10004BA10);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v270 = &v256 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v269 = &v256 - v33;
  v278 = sub_100029C74(_swiftEmptyArrayStorage);
  v34 = a3[4];
  sub_1000028DC(a3, a3[3]);
  v262 = sub_100049F28();
  v259 = 0;
  v35 = a1 + 64;
  v36 = 1 << *(a1 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(a1 + 64);
  v260 = (v36 + 63) >> 6;
  v275 = (v22 + 16);
  v274 = (v22 + 32);
  v291 = v19 + 16;
  v263 = v19;
  v290 = (v19 + 8);
  v283 = v11;
  v288 = (v11 + 8);
  v285 = CTCategoryIdentifierSystemHidden;
  v308 = v7;
  v302 = v7 + 8;
  v303 = v7 + 16;
  v299 = v306 + 16;
  v298 = v306 + 8;
  v282 = CTCategoryIdentifierSystemUnblockable;
  v281 = CTCategoryIdentifierSystemBlockable;
  v271 = v22;
  v39 = (v22 + 8);
  v40 = v38;
  v266 = v39;
  v265 = a1;

  v41 = 0;
  v295 = v10;
  v294 = v18;
  v267 = a1 + 64;
  v297 = v11 + 16;
  while (1)
  {
    if (v40)
    {
      v272 = v41;
      v46 = v41;
LABEL_17:
      v273 = (v40 - 1) & v40;
      v50 = __clz(__rbit64(v40)) | (v46 << 6);
      v51 = v265;
      v52 = v271;
      v53 = v264;
      v54 = v280;
      (*(v271 + 16))(v264, *(v265 + 48) + *(v271 + 72) * v50, v280);
      v55 = *(*(v51 + 56) + 8 * v50);
      v56 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
      v57 = *(v56 + 48);
      v58 = *(v52 + 32);
      v59 = v270;
      v58(v270, v53, v54);
      *&v59[v57] = v55;
      v49 = v59;
      (*(*(v56 - 8) + 56))(v59, 0, 1, v56);
    }

    else
    {
      v47 = v260 <= v41 + 1 ? v41 + 1 : v260;
      v48 = v47 - 1;
      v49 = v270;
      while (1)
      {
        v46 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_191;
        }

        if (v46 >= v260)
        {
          break;
        }

        v40 = *(v35 + 8 * v46);
        ++v41;
        if (v40)
        {
          v272 = v46;
          goto LABEL_17;
        }
      }

      v253 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
      (*(*(v253 - 8) + 56))(v49, 1, 1, v253);
      v273 = 0;
      v272 = v48;
    }

    v60 = v269;
    sub_100004DF8(v49, v269, &qword_10005E180, &qword_10004BA10);
    v61 = sub_1000027D4(&qword_10005E188, &qword_10004BA18);
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
    {

      return v278;
    }

    v62 = *(v60 + *(v61 + 48));
    (*v274)(v279, v60, v280);
    v63 = sub_100029E5C(_swiftEmptyArrayStorage);
    v64 = *(v62 + 16);
    if (v64)
    {
      v65 = *(v263 + 80);
      v310 = v62;
      v66 = v62 + ((v65 + 32) & ~v65);
      v67 = *(v263 + 72);
      v68 = *(v263 + 16);
      v69 = _swiftEmptyArrayStorage;
      do
      {
        v70 = v292;
        v71 = v293;
        v68(v292, v66, v293);
        v72 = sub_100049218();
        (*v290)(v70, v71);
        v73 = *(v72 + 16);
        v74 = v69[2];
        v75 = v74 + v73;
        if (__OFADD__(v74, v73))
        {
          goto LABEL_183;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v69;
        if (!isUniquelyReferenced_nonNull_native || v75 > v69[3] >> 1)
        {
          if (v74 <= v75)
          {
            v78 = v74 + v73;
          }

          else
          {
            v78 = v74;
          }

          v77 = sub_100023424(isUniquelyReferenced_nonNull_native, v78, 1, v69, &qword_10005E198, &qword_10004BA28, &type metadata accessor for _DeviceActivityData.CategoryActivity);
        }

        v18 = v294;
        if (*(v72 + 16))
        {
          v79 = *(v77 + 16);
          if ((*(v77 + 24) >> 1) - v79 < v73)
          {
            goto LABEL_187;
          }

          v69 = v77;
          v80 = v77 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v79;
          swift_arrayInitWithCopy();

          if (v73)
          {
            v81 = v69[2];
            v82 = __OFADD__(v81, v73);
            v83 = v81 + v73;
            if (v82)
            {
              goto LABEL_189;
            }

            v69[2] = v83;
          }
        }

        else
        {
          v69 = v77;

          if (v73)
          {
            goto LABEL_184;
          }
        }

        v66 += v67;
        --v64;
      }

      while (v64);

      v10 = v295;
    }

    else
    {

      v69 = _swiftEmptyArrayStorage;
    }

    v84 = v268;
    v85 = *(v268 + 16);
    v86 = 0.0;
    v289 = v69;
    if (v85)
    {
      v87 = sub_1000243B8(v279);
      v69 = v289;
      if (v88)
      {
        v86 = *(*(v84 + 56) + 8 * v87);
      }
    }

    v89 = v69[2];
    if (v89)
    {
      break;
    }

LABEL_80:

LABEL_168:
    v238 = *v275;
    v239 = v277;
    (*v275)(v277, v279, v280);
    v240 = v278;
    v241 = swift_isUniquelyReferenced_nonNull_native();
    v311 = v240;
    v242 = sub_1000243B8(v239);
    v244 = *(v240 + 16);
    v245 = (v243 & 1) == 0;
    v82 = __OFADD__(v244, v245);
    v246 = v244 + v245;
    if (v82)
    {
      goto LABEL_192;
    }

    v247 = v243;
    if (*(v240 + 24) >= v246)
    {
      if ((v241 & 1) == 0)
      {
        v254 = v242;
        sub_100025E6C(&qword_10005E190, &qword_10004BA20);
        v242 = v254;
      }
    }

    else
    {
      sub_1000250D4(v246, v241, &qword_10005E190, &qword_10004BA20);
      v242 = sub_1000243B8(v277);
      if ((v247 & 1) != (v248 & 1))
      {
        goto LABEL_199;
      }
    }

    v278 = v311;
    if (v247)
    {
      v42 = *(v311 + 56);
      v43 = *(v42 + 8 * v242);
      *(v42 + 8 * v242) = v63;
    }

    else
    {
      *(v311 + 8 * (v242 >> 6) + 64) |= 1 << v242;
      v249 = v242;
      v238(*(v278 + 48) + *(v271 + 72) * v242, v277, v280);
      v250 = v278;
      *(*(v278 + 56) + 8 * v249) = v63;
      v251 = *(v250 + 16);
      v82 = __OFADD__(v251, 1);
      v252 = v251 + 1;
      if (v82)
      {
        goto LABEL_193;
      }

      *(v250 + 16) = v252;
    }

    v44 = *v266;
    v45 = v280;
    (*v266)(v277, v280);
    v44(v279, v45);
    v35 = v267;
    v40 = v273;
    v41 = v272;
  }

  v90 = v69 + ((*(v283 + 80) + 32) & ~*(v283 + 80));
  v91 = *(v283 + 72);
  v92 = *(v283 + 16);
  v93 = 0.0;
  v296 = v90;
  v287 = v89;
  v94 = v288;
  v309 = v91;
  v310 = v92;
  do
  {
    v310(v18, v90, v10);
    sub_100049168();
    v96 = v95;
    v97 = *v94;
    (*v94)(v18, v10);
    v98 = v309;
    v99 = v310;
    v93 = v93 + v96;
    v90 += v309;
    --v89;
  }

  while (v89);
  v286 = v97;
  if (v262)
  {
    v100 = 0;
    v101 = v261;
    v102 = v289;
    v103 = v296;
    while (1)
    {
      if (v100 >= v102[2])
      {
        goto LABEL_188;
      }

      v296 = v103;
      v99(v101);
      v104 = sub_100049E08();
      v106 = v105;
      v107 = sub_100049E08();
      v109 = v108;
      v110 = sub_100049E08();
      v112 = v111;
      if (sub_100049178() == v104 && v113 == v106)
      {
        break;
      }

      v114 = sub_10004A398();

      if (v114)
      {
        goto LABEL_50;
      }

      if (sub_100049178() == v107 && v115 == v109)
      {
      }

      else
      {
        v116 = sub_10004A398();

        if ((v116 & 1) == 0)
        {
          v117 = sub_100049178();
          v10 = v295;
          if (v117 == v110 && v118 == v112)
          {

LABEL_79:
            v286(v101, v10);
            goto LABEL_52;
          }

          v119 = sub_10004A398();

          if (v119)
          {
            goto LABEL_79;
          }

          v120 = sub_100049178();
          v122 = v121;
          sub_100049168();
          v124 = 0.0;
          if (v86 >= v93)
          {
            if (v86 != 0.0)
            {
              v124 = v123 / v86;
            }
          }

          else if (v93 != 0.0)
          {
            v124 = v123 / v93;
          }

          v125 = swift_isUniquelyReferenced_nonNull_native();
          v311 = v63;
          v126 = sub_100024340(v120, v122);
          v128 = *(v63 + 16);
          v129 = (v127 & 1) == 0;
          v82 = __OFADD__(v128, v129);
          v130 = v128 + v129;
          if (v82)
          {
            goto LABEL_196;
          }

          v131 = v127;
          if (*(v63 + 24) >= v130)
          {
            if (v125)
            {
              goto LABEL_73;
            }

            v134 = v126;
            sub_100025D04();
            v126 = v134;
            v63 = v311;
            if ((v131 & 1) == 0)
            {
              goto LABEL_76;
            }

LABEL_74:
            v133 = v126;

            v126 = v133;
          }

          else
          {
            sub_100024E30(v130, v125);
            v126 = sub_100024340(v120, v122);
            if ((v131 & 1) != (v132 & 1))
            {
              goto LABEL_198;
            }

LABEL_73:
            v63 = v311;
            if (v131)
            {
              goto LABEL_74;
            }

LABEL_76:
            *(v63 + 8 * (v126 >> 6) + 64) |= 1 << v126;
            v135 = (*(v63 + 48) + 16 * v126);
            *v135 = v120;
            v135[1] = v122;
            *(*(v63 + 56) + 8 * v126) = 0;
            v136 = *(v63 + 16);
            v82 = __OFADD__(v136, 1);
            v137 = v136 + 1;
            if (v82)
            {
              goto LABEL_197;
            }

            *(v63 + 16) = v137;
          }

          *(*(v63 + 56) + 8 * v126) = v124 + *(*(v63 + 56) + 8 * v126);
          v101 = v261;
          goto LABEL_79;
        }
      }

      v10 = v295;
      v286(v101, v295);
LABEL_51:

LABEL_52:
      ++v100;
      v99 = v310;
      v103 = &v296[v309];
      v102 = v289;
      if (v287 == v100)
      {

        v18 = v294;
        goto LABEL_168;
      }
    }

LABEL_50:
    v10 = v295;
    v286(v101, v295);

    goto LABEL_51;
  }

  v138 = 0;
  v139 = v276;
  v140 = v289;
  while (1)
  {
    if (v138 >= v140[2])
    {
      goto LABEL_190;
    }

    v284 = v138;
    (v99)(v139, &v296[v138 * v98], v10);
    v142 = sub_100049E08();
    v144 = v143;
    if (sub_100049178() == v142 && v145 == v144)
    {

      goto LABEL_83;
    }

    v146 = sub_10004A398();

    if (v146)
    {
      goto LABEL_83;
    }

    v147 = sub_1000491A8();
    v148 = v147;
    v149 = *(v147 + 16);
    if (v149)
    {
      break;
    }

LABEL_128:
    v192 = sub_100049188();
    v193 = v192;
    v194 = *(v192 + 16);
    if (v194)
    {
      v195 = 0;
      v196 = v192 + ((*(v306 + 80) + 32) & ~*(v306 + 80));
      while (1)
      {
        if (v195 >= *(v193 + 16))
        {
          goto LABEL_181;
        }

        v199 = v306;
        v200 = v300;
        v201 = v301;
        (*(v306 + 16))(v300, v196 + *(v306 + 72) * v195, v301);
        v202 = sub_1000491D8();
        v204 = v203;
        sub_1000491C8();
        v206 = v205;
        (*(v199 + 8))(v200, v201);
        v207 = 0.0;
        if (v86 >= v93)
        {
          if (v86 != 0.0)
          {
            v207 = v206 / v86;
          }
        }

        else if (v93 != 0.0)
        {
          v207 = v206 / v93;
        }

        v208 = swift_isUniquelyReferenced_nonNull_native();
        v311 = v63;
        v198 = sub_100024340(v202, v204);
        v210 = *(v63 + 16);
        v211 = (v209 & 1) == 0;
        v82 = __OFADD__(v210, v211);
        v212 = v210 + v211;
        if (v82)
        {
          goto LABEL_182;
        }

        v213 = v209;
        if (*(v63 + 24) < v212)
        {
          break;
        }

        if (v208)
        {
          goto LABEL_143;
        }

        v257 = v198;
        sub_1000027D4(&qword_10005E168, &qword_10004BA08);
        v218 = sub_10004A328();
        v219 = v218;
        if (*(v63 + 16))
        {
          v220 = (v218 + 64);
          v221 = (v63 + 64);
          v222 = ((1 << *(v219 + 32)) + 63) >> 6;
          v256 = v63 + 64;
          if (v219 != v63 || v220 >= &v221[8 * v222])
          {
            memmove(v220, v221, 8 * v222);
          }

          v223 = 0;
          v224 = *(v63 + 16);
          v258 = v219;
          *(v219 + 16) = v224;
          v225 = 1 << *(v63 + 32);
          if (v225 < 64)
          {
            v226 = ~(-1 << v225);
          }

          else
          {
            v226 = -1;
          }

          v227 = v226 & *(v63 + 64);
          v228 = (v225 + 63) >> 6;
          if (v227)
          {
            do
            {
              v229 = __clz(__rbit64(v227));
              v307 = (v227 - 1) & v227;
LABEL_160:
              v232 = v229 | (v223 << 6);
              v233 = (*(v63 + 48) + 16 * v232);
              v234 = v233[1];
              v235 = *(*(v63 + 56) + 8 * v232);
              v236 = v258;
              v237 = (*(v258 + 48) + 16 * v232);
              *v237 = *v233;
              v237[1] = v234;
              *(*(v236 + 56) + 8 * v232) = v235;

              v227 = v307;
            }

            while (v307);
          }

          v230 = v223;
          while (1)
          {
            v223 = v230 + 1;
            if (__OFADD__(v230, 1))
            {
              goto LABEL_195;
            }

            if (v223 >= v228)
            {
              break;
            }

            v231 = *(v256 + 8 * v223);
            ++v230;
            if (v231)
            {
              v229 = __clz(__rbit64(v231));
              v307 = (v231 - 1) & v231;
              goto LABEL_160;
            }
          }

          v219 = v258;
        }

        v63 = v219;
        v198 = v257;
        if ((v213 & 1) == 0)
        {
LABEL_144:
          *(v63 + 8 * (v198 >> 6) + 64) |= 1 << v198;
          v215 = (*(v63 + 48) + 16 * v198);
          *v215 = v202;
          v215[1] = v204;
          *(*(v63 + 56) + 8 * v198) = 0;
          v216 = *(v63 + 16);
          v82 = __OFADD__(v216, 1);
          v217 = v216 + 1;
          if (v82)
          {
            goto LABEL_186;
          }

          *(v63 + 16) = v217;
          goto LABEL_131;
        }

LABEL_130:
        v197 = v198;

        v198 = v197;
LABEL_131:
        ++v195;
        *(*(v63 + 56) + 8 * v198) = v207 + *(*(v63 + 56) + 8 * v198);
        if (v195 == v194)
        {

          v10 = v295;
          v139 = v276;
          goto LABEL_167;
        }
      }

      sub_100024E30(v212, v208);
      v63 = v311;
      v198 = sub_100024340(v202, v204);
      if ((v213 & 1) != (v214 & 1))
      {
        goto LABEL_198;
      }

LABEL_143:
      if ((v213 & 1) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_130;
    }

    v10 = v295;
LABEL_167:
    v18 = v294;
LABEL_83:
    v141 = v284 + 1;
    v286(v139, v10);
    v138 = v141;
    v140 = v289;
    v98 = v309;
    v99 = v310;
    if (v141 == v287)
    {
      goto LABEL_80;
    }
  }

  v150 = 0;
  v307 = v147 + ((*(v308 + 80) + 32) & ~*(v308 + 80));
  while (v150 < *(v148 + 16))
  {
    v151 = v308;
    v152 = v304;
    v153 = v305;
    (*(v308 + 16))(v304, v307 + *(v308 + 72) * v150, v305);
    v154 = sub_100049138();
    v156 = v155;
    sub_100049128();
    v158 = v157;
    (*(v151 + 8))(v152, v153);
    v159 = 0.0;
    if (v86 >= v93)
    {
      if (v86 != 0.0)
      {
        v159 = v158 / v86;
      }
    }

    else if (v93 != 0.0)
    {
      v159 = v158 / v93;
    }

    v160 = swift_isUniquelyReferenced_nonNull_native();
    v311 = v63;
    v162 = sub_100024340(v154, v156);
    v163 = *(v63 + 16);
    v164 = (v161 & 1) == 0;
    v165 = v163 + v164;
    if (__OFADD__(v163, v164))
    {
      goto LABEL_180;
    }

    v166 = v161;
    if (*(v63 + 24) >= v165)
    {
      if (v160)
      {
        if ((v161 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        sub_1000027D4(&qword_10005E168, &qword_10004BA08);
        v172 = sub_10004A328();
        v173 = v172;
        if (*(v63 + 16))
        {
          v174 = (v172 + 64);
          v175 = (v63 + 64);
          v176 = ((1 << *(v173 + 32)) + 63) >> 6;
          v256 = v63 + 64;
          if (v173 != v63 || v174 >= &v175[8 * v176])
          {
            memmove(v174, v175, 8 * v176);
          }

          v177 = 0;
          v178 = *(v63 + 16);
          v257 = v173;
          *(v173 + 16) = v178;
          v179 = 1 << *(v63 + 32);
          if (v179 < 64)
          {
            v180 = ~(-1 << v179);
          }

          else
          {
            v180 = -1;
          }

          v181 = v180 & *(v63 + 64);
          v182 = (v179 + 63) >> 6;
          if (v181)
          {
            do
            {
              v183 = __clz(__rbit64(v181));
              v258 = (v181 - 1) & v181;
LABEL_121:
              v186 = v183 | (v177 << 6);
              v187 = (*(v63 + 48) + 16 * v186);
              v188 = v187[1];
              v189 = *(*(v63 + 56) + 8 * v186);
              v190 = v257;
              v191 = (*(v257 + 48) + 16 * v186);
              *v191 = *v187;
              v191[1] = v188;
              *(*(v190 + 56) + 8 * v186) = v189;

              v181 = v258;
            }

            while (v258);
          }

          v184 = v177;
          while (1)
          {
            v177 = v184 + 1;
            if (__OFADD__(v184, 1))
            {
              goto LABEL_194;
            }

            if (v177 >= v182)
            {
              break;
            }

            v185 = *(v256 + 8 * v177);
            ++v184;
            if (v185)
            {
              v183 = __clz(__rbit64(v185));
              v258 = (v185 - 1) & v185;
              goto LABEL_121;
            }
          }

          v173 = v257;
        }

        v63 = v173;
        if ((v166 & 1) == 0)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      sub_100024E30(v165, v160);
      v63 = v311;
      v167 = sub_100024340(v154, v156);
      if ((v166 & 1) != (v168 & 1))
      {
        goto LABEL_198;
      }

      v162 = v167;
      if ((v166 & 1) == 0)
      {
LABEL_105:
        *(v63 + 8 * (v162 >> 6) + 64) |= 1 << v162;
        v169 = (*(v63 + 48) + 16 * v162);
        *v169 = v154;
        v169[1] = v156;
        *(*(v63 + 56) + 8 * v162) = 0;
        v170 = *(v63 + 16);
        v82 = __OFADD__(v170, 1);
        v171 = v170 + 1;
        if (v82)
        {
          goto LABEL_185;
        }

        *(v63 + 16) = v171;
        goto LABEL_91;
      }
    }

LABEL_91:
    ++v150;
    *(*(v63 + 56) + 8 * v162) = v159 + *(*(v63 + 56) + 8 * v162);
    if (v150 == v149)
    {

      v139 = v276;
      goto LABEL_128;
    }
  }

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
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  sub_10004A3C8();
  __break(1u);
LABEL_199:
  result = sub_10004A3C8();
  __break(1u);
  return result;
}