uint64_t sub_10001AC90(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_10001ACC8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DE590);
  __chkstk_darwin(v2 - 8);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v37 - v5;
  __chkstk_darwin(v7);
  v43 = v37 - v8;
  v44 = type metadata accessor for Date();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001599C(a1);
  v13 = v12[2];
  if (v13)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_10001E734(0, v13, 0);
    v14 = v45;
    v16 = *(v9 + 16);
    v15 = v9 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v39 = (v15 - 8);
    v40 = v16;
    v18 = *(v15 + 56);
    v37[1] = v12;
    v38 = v18;
    v41 = v15;
    do
    {
      v40(v11, v17, v44);
      v19.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (qword_1008DA540 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Calendar();
      sub_10001AC90(v20, qword_100924FE8);
      isa = Calendar._bridgeToObjectiveC()().super.isa;
      v22 = _HKActivityCacheDateComponentsFromDate();

      if (v22)
      {
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = type metadata accessor for DateComponents();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v6, v23, 1, v24);
      v26 = v6;
      v27 = v43;
      sub_100015E80(v6, v43, &qword_1008DE590);
      v28 = v27;
      v29 = v42;
      sub_10001B104(v28, v42, &qword_1008DE590);
      v30 = (*(v25 + 48))(v29, 1, v24);
      v31 = 0;
      if (v30 != 1)
      {
        v32 = v42;
        v31 = DateComponents._bridgeToObjectiveC()().super.isa;
        (*(v25 + 8))(v32, v24);
      }

      v33 = _HKCacheIndexFromDateComponents();

      sub_10000EA04(v43, &qword_1008DE590);
      (*v39)(v11, v44);
      v45 = v14;
      v35 = v14[2];
      v34 = v14[3];
      if (v35 >= v34 >> 1)
      {
        sub_10001E734((v34 > 1), v35 + 1, 1);
        v14 = v45;
      }

      v14[2] = v35 + 1;
      v14[v35 + 4] = v33;
      v17 += v38;
      --v13;
      v6 = v26;
    }

    while (v13);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

uint64_t sub_10001B104(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100140278(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001B17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = type metadata accessor for Calendar.Component();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v6 - 8);
  v34 = v32 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = v32 - v12;
  __chkstk_darwin(v13);
  v15 = v32 - v14;
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Calendar();
  v33 = sub_10001AC90(v19, qword_100924FE8);
  DateInterval.start.getter();
  v35 = v18;
  Calendar.startOfDay(for:)();
  v20 = *(v9 + 8);
  v20(v15, v8);
  (*(v3 + 104))(v5, enum case for Calendar.Component.day(_:), v39);
  v21 = v40;
  v32[1] = a1;
  DateInterval.end.getter();
  Calendar.startOfDay(for:)();
  v20(v21, v8);
  v22 = v34;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v33 = v20;
  v20(v15, v8);
  (*(v3 + 8))(v5, v39);
  v23 = *(v9 + 48);
  v24 = v23(v22, 1, v8);
  v36 = v9;
  if (v24 == 1)
  {
    v25 = v37;
    DateInterval.end.getter();
    v26 = v23(v22, 1, v8);
    v27 = v25;
    if (v26 != 1)
    {
      sub_10000EA04(v22, &unk_1008F73A0);
    }
  }

  else
  {
    v27 = v37;
    (*(v9 + 32))(v37, v22, v8);
  }

  v28 = v35;
  v29 = *(v36 + 16);
  v29(v15, v35, v8);
  v29(v40, v27, v8);
  DateInterval.init(start:end:)();
  v30 = v33;
  v33(v27, v8);
  return v30(v28, v8);
}

void sub_10001B5CC(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  p_ivars = &ResourceBundleClass.ivars;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = p_ivars[394];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() kilocalorieUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      p_ivars = (&ResourceBundleClass + 48);
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_10001C204@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = result;
    v7 = (a4 - a3) / result;
    v8 = &_swiftEmptyArrayStorage;
    if (result)
    {
      v9 = &_swiftEmptyArrayStorage;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10001C378(0, *(v8 + 2) + 1, 1, v8);
        }

        v11 = *(v8 + 2);
        v10 = *(v8 + 3);
        if (v11 >= v10 >> 1)
        {
          v8 = sub_10001C378((v10 > 1), v11 + 1, 1, v8);
        }

        *(v8 + 2) = v11 + 1;
        *&v8[8 * v11 + 32] = v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10001C47C(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v13 = *(v9 + 2);
        v12 = *(v9 + 3);
        if (v13 >= v12 >> 1)
        {
          result = sub_10001C47C((v12 > 1), v13 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v13 + 1;
        v14 = &v9[24 * v13];
        *(v14 + 4) = 0;
        *(v14 + 5) = 0;
        v14[48] = 1;
        v4 = v7 + v4;
        --v5;
      }

      while (v5);
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }

    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = xmmword_1006E8D80;
  }

  return result;
}

char *sub_10001C378(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE480);
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

char *sub_10001C47C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_10001C59C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Calendar();
  sub_10001AC90(v11, qword_100924FE8);
  v12 = [a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = Calendar.isDateInToday(_:)();
  result = (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    if ((a3 & 0x10) != 0)
    {
      v15 = [a1 sumQuantity];
    }

    else
    {
      v15 = [a1 averageQuantity];
    }

    v16 = v15;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(*(a4 + 16) + 16) >= *(*(a4 + 16) + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

size_t sub_10001C794(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_100140278(a5);
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

void *sub_10001C970(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100140278(&qword_1008E5C78);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000216FC(&qword_1008E5C80, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000216FC(&qword_1008E5C88, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

id sub_10001CC90()
{
  v1 = v0;
  v2 = 0;
  v3 = *v0;
  v4 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v4 - 8);
  v6 = &v55 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_friendListSectionManager);
  result = [v11 hasInitializedFriendData];
  if (!result)
  {
    return result;
  }

  v13 = [v11 allFriends];
  if (!v13)
  {
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v14 = v13;
  v63 = v6;
  v59 = v8;
  sub_1000059F8(0, &qword_1008E53D0);
  sub_10001D4A8(&qword_1008EE6C0, &qword_1008E53D0);
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = v3;
  v62 = v10;
  v60 = v7;
  if ((v15 & 0xC000000000000001) == 0)
  {
    v33 = *(v15 + 32);
    v56 = ((1 << v33) + 63) >> 6;
    if ((v33 & 0x3Fu) <= 0xD)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

  v58 = 0;
  v17 = &_swiftEmptySetSingleton;
  v66 = &_swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v18 = __CocoaSet.Iterator.next()();
  if (!v18)
  {
LABEL_24:

    v10 = v62;
    v6 = v63;
    v2 = v58;
    goto LABEL_45;
  }

  v2 = &selRef_initWithLayer_;
  while (1)
  {
    v64 = v18;
    swift_dynamicCast();
    v19 = v65;
    if ([v65 isMe] & 1) == 0 && objc_msgSend(v19, "isFriendshipCurrentlyActive") && (objc_msgSend(v19, "isActivityDataCurrentlyVisibleToMe"))
    {
      break;
    }

LABEL_7:
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  v20 = v65;
  v21 = v17[2];
  if (v17[3] <= v21)
  {
    sub_100066904(v21 + 1);
  }

  v17 = v66;
  v15 = v20;
  v22 = NSObject._rawHashValue(seed:)(v66[5]);
  v23 = v17 + 7;
  v24 = -1 << *(v17 + 32);
  v25 = v22 & ~v24;
  v26 = v25 >> 6;
  if (((-1 << v25) & ~v17[(v25 >> 6) + 7]) != 0)
  {
    v27 = __clz(__rbit64((-1 << v25) & ~v17[(v25 >> 6) + 7])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(v17[6] + 8 * v27) = v20;
    ++v17[2];
    goto LABEL_7;
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = v23[v26];
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_54:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_27:
    v55 = &v55;
    __chkstk_darwin(v16);
    v57 = &v55 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v34);
    v58 = 0;
    v35 = 0;
    v36 = 1 << *(v15 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v15 + 56);
    v39 = (v36 + 63) >> 6;
    while (v38)
    {
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
LABEL_38:
      v6 = v40 | (v35 << 6);
      v43 = *(*(v15 + 48) + 8 * v6);
      if (([v43 isMe] & 1) != 0 || !objc_msgSend(v43, "isFriendshipCurrentlyActive"))
      {
      }

      else
      {
        v10 = [v43 isActivityDataCurrentlyVisibleToMe];

        if (v10)
        {
          *&v57[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
          v44 = __OFADD__(v58, 1);
          v58 = (v58 + 1);
          if (v44)
          {
            __break(1u);
LABEL_44:
            v17 = sub_1004C0D28(v57, v56, v58, v15);
            goto LABEL_45;
          }
        }
      }
    }

    v41 = v35;
    v10 = v62;
    v6 = v63;
    while (1)
    {
      v35 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v35 >= v39)
      {
        goto LABEL_44;
      }

      v42 = *(v15 + 56 + 8 * v35);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v38 = (v42 - 1) & v42;
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  v54 = swift_slowAlloc();
  v17 = sub_1004C0C98(v54, v56, v15, sub_10035323C);

  v10 = v62;
  v6 = v63;
LABEL_45:

  v32 = sub_10002C98C(v17);

  v7 = v60;
  v3 = v61;
  v8 = v59;
LABEL_46:
  v45 = Date.init()();
  __chkstk_darwin(v45);
  *(&v55 - 2) = v10;
  v66 = sub_10002E4C0(sub_10002E774, (&v55 - 4), v32);

  sub_10002E8E0(&v66);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    v46 = v66;
    if (v66[2] >= 0xAuLL)
    {
      v47 = 10;
    }

    else
    {
      v47 = v66[2];
    }

    v48 = *(type metadata accessor for ActivitySharingHighlight() - 8);
    v49 = v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v50 = (2 * v47) | 1;
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v6, 1, 1, v51);
    type metadata accessor for MainActor();

    v52 = static MainActor.shared.getter();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = &protocol witness table for MainActor;
    v53[4] = v46;
    v53[5] = v49;
    v53[6] = 0;
    v53[7] = v50;
    v53[8] = v1;
    v53[9] = v3;
    sub_10026E198(0, 0, v6, &unk_1006EAF40, v53);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_10001D460()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001D4A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000059F8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D4F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_10001D510(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_10001D528(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10001D544()
{
  v1 = sub_100140278(&qword_1008E1760);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v44 = &v37 - v5;

  v7 = sub_100049B38(v6);

  v51 = &_swiftEmptySetSingleton;
  v45 = &v51;
  v46 = v0;
  v43 = v0;
  UnfairLock.acquire<A>(_:)();
  v8 = v51;
  v9 = v51 + 56;
  v10 = 1 << v51[32];
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v51 + 7);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 56;

  v16 = 0;
  v42 = v4;
LABEL_5:
  while (v12)
  {
    v17 = v12;
LABEL_11:
    v12 = (v17 - 1) & v17;
    if (*(v7 + 16))
    {
      v19 = *(*(v8 + 6) + (__clz(__rbit64(v17)) | (v16 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      if ((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (*(*(v7 + 48) + v21) != v19)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v39 = v12;
        v40 = v8;
        v41 = v7;
        v23 = type metadata accessor for TaskPriority();
        v24 = *(v23 - 8);
        v25 = v44;
        (*(v24 + 56))(v44, 1, 1, v23);
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        v27 = v43;
        *(v26 + 32) = v43;
        *(v26 + 40) = v19;
        v28 = v25;
        v29 = v42;
        sub_10001B104(v28, v42, &qword_1008E1760);
        v38 = v24;
        v30 = (*(v24 + 48))(v29, 1, v23);
        v31 = v27;

        if (v30 == 1)
        {
          sub_10000EA04(v29, &qword_1008E1760);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v38 + 8))(v29, v23);
        }

        v32 = *(v26 + 16);
        swift_unknownObjectRetain();

        v12 = v39;
        if (v32)
        {
          swift_getObjectType();
          v33 = dispatch thunk of Actor.unownedExecutor.getter();
          v35 = v34;
          swift_unknownObjectRelease();
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        sub_10000EA04(v44, &qword_1008E1760);
        v36 = swift_allocObject();
        *(v36 + 16) = &unk_1006ED838;
        *(v36 + 24) = v26;
        sub_100140278(&qword_1008DC408);
        if (v35 | v33)
        {
          v47 = 0;
          v48 = 0;
          v49 = v33;
          v50 = v35;
        }

        v7 = v41;
        swift_task_create();

        v8 = v40;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
    }

    v17 = *&v9[8 * v18];
    ++v16;
    if (v17)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D9FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001DA3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DA74(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *v2;
  sub_10001D510(*v2, *(v2 + 8), *(v2 + 16));
  return v3;
}

uint64_t type metadata accessor for MetricDetailViewModel()
{
  result = qword_1008ECE48;
  if (!qword_1008ECE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10001DB1C(void *a1, uint64_t a2, double a3)
{
  v6 = sub_100140278(&qword_1008DCC58);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 + -40.0 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = a3 + -40.0;
  }

  v17 = floor((v16 + -10.0) * 0.5);
  if (v17 < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v17;
  }

  v19 = a1[3];
  v20 = a1[4];
  sub_1000066AC(a1, v19);
  if ((*(v20 + 24))(v19, v20))
  {
    return v16;
  }

  sub_10001B104(a2, v9, &qword_1008DCC58);
  v21 = *(v13 + 48);
  if (v21(v9, 1, v12) == 1)
  {
    v22 = [objc_opt_self() sharedApplication];
    v23 = [v22 preferredContentSizeCategory];

    DynamicTypeSize.init(_:)();
    if (v21(v9, 1, v12) != 1)
    {
      sub_10000EA04(v9, &qword_1008DCC58);
    }
  }

  else
  {
    (*(v13 + 32))(v11, v9, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
  }

  if (v21(v11, 1, v12) == 1)
  {
    sub_10000EA04(v11, &qword_1008DCC58);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v24 = a1[3];
    v25 = a1[4];
    sub_1000066AC(a1, v24);
    v26 = (*(v25 + 16))(v24, v25);
    v28 = v27;
    LOBYTE(v24) = v29;
    LOBYTE(v25) = sub_10001DEC8(v15, v26, v27, v29);
    sub_10001D4F8(v26, v28, v24);
    (*(v13 + 8))(v15, v12);
    if ((v25 & 0xFE) != 0)
    {
      return v16;
    }
  }

  return v18;
}

uint64_t sub_10001DEC8(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v17 = a3;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 104);
  v10(v9, enum case for DynamicTypeSize.large(_:), v6);
  sub_10001E0D8(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v11 = dispatch thunk of static Comparable.< infix(_:_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if (a4 - 1 >= 2)
  {
    if (!a4)
    {
LABEL_6:
      v13 = &enum case for DynamicTypeSize.xxxLarge(_:);
      goto LABEL_10;
    }

    if (a4 != 3)
    {
      return 1;
    }

    if (__PAIR128__((a2 >= 2) + v17 - 1, a2 - 2) < 2)
    {
      goto LABEL_6;
    }

    if (a2 ^ 7 | v17)
    {
      return 1;
    }
  }

  v13 = &enum case for DynamicTypeSize.accessibility1(_:);
LABEL_10:
  v10(v9, *v13, v6);
  v15 = static DynamicTypeSize.< infix(_:_:)();
  v12(v9, v6);
  if (v15)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10001E0D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E120(uint64_t a1, uint64_t a2, double a3)
{
  v38 = a1;
  v5 = sub_100140278(&qword_1008DCC58);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 preferredContentSizeCategory];

  sub_10001B104(a2, v8, &qword_1008DCC58);
  v17 = *(v12 + 48);
  if (v17(v8, 1, v11) == 1)
  {
    v18 = v16;
    DynamicTypeSize.init(_:)();
    v19 = v16;
    if (v17(v8, 1, v11) != 1)
    {
      sub_10000EA04(v8, &qword_1008DCC58);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v8, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v19 = v16;
  }

  if (v17(v10, 1, v11) == 1)
  {

    v20 = &qword_1008DCC58;
    v21 = v10;
LABEL_11:
    sub_10000EA04(v21, v20);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_10001B104(v38, &v39, &qword_1008DCC60);
  if (!v40)
  {
    (*(v12 + 8))(v14, v11);

    v20 = &qword_1008DCC60;
    v21 = &v39;
    goto LABEL_11;
  }

  sub_100006260(&v39, v41);
  v22 = v42;
  v23 = v43;
  sub_1000066AC(v41, v42);
  if ((*(v23 + 24))(v22, v23))
  {
    (*(v12 + 8))(v14, v11);

    sub_100005A40(v41);
    return 0;
  }

  v25 = v42;
  v26 = v43;
  sub_1000066AC(v41, v42);
  v27 = (*(v26 + 16))(v25, v26);
  v29 = v28;
  LOBYTE(v26) = v30;
  v31 = sub_10001DEC8(v14, v27, v28, v30);
  sub_10001D4F8(v27, v29, v26);
  if (!v31)
  {
    v32 = 1.05;
    goto LABEL_17;
  }

  if (v31 == 1)
  {
    v32 = 1.15;
LABEL_17:
    v33 = v32 * a3;
    if (qword_1008DAB10 != -1)
    {
      swift_once();
    }

    if (byte_100925960)
    {
      v33 = v33 * 1.15;
    }

    if (qword_1008DAB18 != -1)
    {
      swift_once();
    }

    v34 = byte_100925961;

    (*(v12 + 8))(v14, v11);
    v35 = v33 * 1.15;
    if (!v34)
    {
      v35 = v33;
    }

    v36 = v35;
    goto LABEL_27;
  }

  (*(v12 + 8))(v14, v11);
  v36 = 0.0;
LABEL_27:
  sub_100005A40(v41);
  return *&v36;
}

char *sub_10001E638(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100140278(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_10001E734(char *a1, int64_t a2, char a3)
{
  result = sub_10001E638(a1, a2, a3, *v3, &qword_1008DE5B8);
  *v3 = result;
  return result;
}

void *sub_10001E764(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100140278(&qword_1008DE5A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(&qword_1008DE5B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001E898(void *a1, int64_t a2, char a3)
{
  result = sub_10001E764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10001E8B8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Date() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = v11 + v10;
  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 223) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v12 + 239) & 0xFFFFFFFFFFFFFFF8;
  sub_10001668C(a1, a2, a3, *(v3 + 16), *(v3 + 24), (v3 + v9), v3 + v11, *(v3 + v13), *(v3 + v13 + 8), (v3 + v14), *(v3 + v15), *(v3 + v15 + 8), *(v3 + v16), *(v3 + v16 + 8), *(v3 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_10001E9E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t type metadata accessor for FitnessPlusSampleContentTip()
{
  result = qword_1008EBC58;
  if (!qword_1008EBC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadTrackingTip()
{
  result = qword_1008F28B0;
  if (!qword_1008F28B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CustomizeSummaryTip()
{
  result = qword_1008F0220;
  if (!qword_1008F0220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActivityDashboardViewController()
{
  result = qword_1008EE618;
  if (!qword_1008EE618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001EB9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10001EC80()
{
  v0 = sub_100140278(&qword_1008E5718);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for Notification();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_10001FF10();
  return sub_10000EA04(v2, &qword_1008E5718);
}

char *sub_10001ED54(void *a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_dataProvider] = a1;
  *&v2[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_healthStore] = a2;
  v15 = type metadata accessor for TrendsAvailabilityManager();
  v34.receiver = v2;
  v34.super_class = v15;
  v28 = a1;
  v27 = a2;
  v16 = objc_msgSendSuper2(&v34, "init");
  if (qword_1008DAFA0 != -1)
  {
    swift_once();
  }

  if ((byte_1008F8688 & 1) == 0)
  {
    if (qword_1008DAFA8 != -1)
    {
      swift_once();
    }

    if ((byte_1008F8689 & 1) == 0)
    {
      v17 = [objc_opt_self() standardUserDefaults];
      v18 = String._bridgeToObjectiveC()();
      v19 = [v17 integerForKey:v18];

      if (v19 <= 3 && *&v16[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability] != v19)
      {
        *&v16[OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability] = v19;
        v20 = [objc_opt_self() defaultCenter];
        if (qword_1008DAD60 != -1)
        {
          swift_once();
        }

        [v20 postNotificationName:qword_100925E00 object:v16];
      }

      v21 = [objc_opt_self() defaultCenter];
      if (qword_1008DAE08 != -1)
      {
        swift_once();
      }

      [v21 addObserver:v16 selector:? name:? object:?];
    }
  }

  sub_1000078CC();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInteractive(_:), v11);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  aBlock[4] = sub_100546840;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085FDF8;
  v24 = _Block_copy(aBlock);
  v25 = v16;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v31 + 8))(v7, v5);
  (*(v29 + 8))(v10, v30);

  return v25;
}

uint64_t sub_10001F2F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F328(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1000059F8(0, &qword_1008E04E8);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a2;
  v11 = a4;
  v12 = a5;
  v9(v10, v7, a4, a5);
}

void sub_10001F490()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v83 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar.Component();
  v84 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v27 = &v67 - v24;
  if (qword_1008DAFA0 != -1)
  {
    v79 = v26;
    v80 = v25;
    v76 = v1;
    v82 = &v67 - v24;
    v65 = v23;
    swift_once();
    v26 = v79;
    v25 = v80;
    v23 = v65;
    v27 = v82;
    v1 = v76;
  }

  if (byte_1008F8688)
  {
    goto LABEL_7;
  }

  if (qword_1008DAFA8 != -1)
  {
    v79 = v26;
    v80 = v25;
    v76 = v1;
    v82 = v27;
    v66 = v23;
    swift_once();
    v26 = v79;
    v25 = v80;
    v23 = v66;
    v27 = v82;
    v1 = v76;
  }

  if (byte_1008F8689)
  {
LABEL_7:
    static os_log_type_t.default.getter();
    v28 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v29 = OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability;
    v30 = 3;
LABEL_8:
    *(v0 + v29) = v30;
    return;
  }

  v79 = v26;
  v80 = v25;
  v78 = v2;
  v81 = v23;
  v82 = v27;
  v31 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_healthStore);
  if (FIExperienceTypeWithHealthStore() != 1)
  {
LABEL_14:
    static os_log_type_t.default.getter();
    v38 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v29 = OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability;
    v30 = 1;
    goto LABEL_8;
  }

  v76 = v1;
  v77 = v14;
  v75 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_dataProvider);
  v32 = *(v75 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache);
  v33 = [v32 activitySummaryForCacheIndex:{objc_msgSend(v32, "latestActivitySummaryIndex")}];

  if (!v33)
  {
    v85 = 0;
    v34 = [v31 activityMoveModeWithError:&v85];
    if (!v34)
    {
      v46 = v85;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      static os_log_type_t.default.getter();
      v47 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      return;
    }

    v33 = v34;
    v35 = v85;
  }

  v36 = [v33 activityMoveMode];

  v37 = v84;
  if (v36 == 2)
  {
    goto LABEL_14;
  }

  v70 = v0;
  Date.init()();
  if (qword_1008DA550 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Calendar();
  sub_10001AC90(v39, qword_100925018);
  v40 = *(v37 + 104);
  v74 = enum case for Calendar.Component.day(_:);
  v73 = v40;
  v40(v6);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v41 = *(v37 + 8);
  v84 = v37 + 8;
  v72 = v41;
  v41(v6, v4);
  v42 = v77;
  v71 = *(v77 + 48);
  if (v71(v12, 1, v81) == 1)
  {
    v9 = v12;
LABEL_21:
    sub_10000EA04(v9, &unk_1008F73A0);
    static os_log_type_t.default.getter();
    v45 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    (*(v42 + 8))(v82, v81);
    return;
  }

  v43 = v12;
  v44 = v81;
  v68 = *(v42 + 32);
  v69 = v42 + 32;
  v68(v80, v43, v81);
  v73(v6, v74, v4);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v72(v6, v4);
  if (v71(v9, 1, v44) == 1)
  {
    (*(v42 + 8))(v80, v81);
    goto LABEL_21;
  }

  v48 = v9;
  v49 = v81;
  v68(v79, v48, v81);
  v50 = *(v42 + 16);
  v50(v19, v80, v49);
  v50(v16, v82, v49);
  v51 = v83;
  DateInterval.init(start:end:)();
  v84 = sub_10000E0B8();
  v52 = *(v78 + 8);
  v53 = v76;
  v52(v51, v76);
  v50(v19, v79, v49);
  v50(v16, v82, v49);
  DateInterval.init(start:end:)();
  v54 = sub_10000E0B8();
  v55 = v51;
  v56 = v84;
  v52(v55, v53);
  v57 = sub_100011DC8();
  if (v56 < 180 || v54 < 45)
  {
    static os_log_type_t.default.getter();
    v60 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1006D1F70;
    *(v61 + 56) = &type metadata for Int;
    *(v61 + 64) = &protocol witness table for Int;
    *(v61 + 32) = v56;
    *(v61 + 96) = &type metadata for Int;
    *(v61 + 104) = &protocol witness table for Int;
    *(v61 + 72) = v54;
    v62 = v60;
    os_log(_:dso:log:_:_:)();

    v63 = *(v77 + 8);
    v64 = v81;
    v63(v79, v81);
    v63(v80, v64);
    v63(v82, v64);
    if (v57)
    {
      *(v70 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability) = 3;
    }

    else
    {
      *(v70 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability) = 2;
    }
  }

  else
  {
    v58 = *(v77 + 8);
    v59 = v81;
    v58(v79, v81);
    v58(v80, v59);
    v58(v82, v59);
    *(v70 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability) = 3;
  }
}

void sub_10001FF10()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability;
  v9 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability);
  sub_10001F490();
  if (qword_1008DAFA0 != -1)
  {
    swift_once();
  }

  if ((byte_1008F8688 & 1) == 0)
  {
    if (qword_1008DAFA8 != -1)
    {
      swift_once();
    }

    if ((byte_1008F8689 & 1) == 0)
    {
      v24 = objc_opt_self();
      v10 = [v24 standardUserDefaults];
      v11 = String._bridgeToObjectiveC()();
      v25 = v2;
      v12 = v11;
      v13 = [v10 integerForKey:v11];

      v2 = v25;
      if (v13 <= 3 && *(v0 + v8) != v13)
      {
        v14 = [v24 standardUserDefaults];
        v15 = *(v0 + v8);
        v16 = String._bridgeToObjectiveC()();
        [v14 setInteger:v15 forKey:v16];

        v2 = v25;
      }
    }
  }

  if (*(v0 + v8) != v9)
  {
    static os_log_type_t.default.getter();
    v17 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006D1F70;
    *(v18 + 56) = &type metadata for Int;
    *(v18 + 64) = &protocol witness table for Int;
    *(v18 + 32) = v9;
    v19 = *(v0 + v8);
    *(v18 + 96) = &type metadata for Int;
    *(v18 + 104) = &protocol witness table for Int;
    *(v18 + 72) = v19;
    v20 = v17;
    os_log(_:dso:log:_:_:)();

    sub_1000078CC();
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100546734;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10085FD58;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v2 + 8))(v4, v1);
    (*(v26 + 8))(v7, v27);
  }
}

uint64_t sub_1000203A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

size_t sub_100020F7C(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &unk_1008E51C0, &unk_1006D8E40, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

unint64_t sub_100020FC0()
{
  result = qword_1008E8760;
  if (!qword_1008E8760)
  {
    sub_100141EEC(&unk_1008E99C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8760);
  }

  return result;
}

uint64_t sub_100021024(void *a1, char a2)
{
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v51 - v12;
  v14 = type metadata accessor for DateComponents();
  __chkstk_darwin(v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v17).n128_u64[0];
  v21 = v51 - v20;
  if (a2)
  {
    return 34;
  }

  v52 = v8;
  v53 = v18;
  v54 = 0;
  v23 = [a1 dateOfBirthComponentsWithError:{&v54, v19}];
  v24 = v54;
  v25 = &unk_1006D4000;
  if (!v23)
  {
    v34 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_13:
    static os_log_type_t.error.getter();
    v36 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v37 = swift_allocObject();
    *(v37 + 16) = v25[108];
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_10000A788();
    *(v37 + 32) = 0xD00000000000003DLL;
    *(v37 + 40) = 0x8000000100753AF0;
    v38 = v36;
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v26 = v23;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v24;

  v54 = 0;
  v28 = [a1 biologicalSexWithError:&v54];
  if (!v28)
  {
    v35 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_11;
  }

  v29 = v28;
  v30 = v54;
  v51[2] = [v29 biologicalSex];

  Date.init()();
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Calendar();
  v32 = sub_10001AC90(v31, qword_100924FE8);
  Calendar.date(from:)();
  v33 = v52;
  if ((*(v52 + 48))(v6, 1, v7) == 1)
  {
    sub_1001F145C(v6);
    sub_1002D89C0();
    swift_allocError();
    swift_willThrow();
    (*(v33 + 8))(v13, v7);
LABEL_11:
    (*(v53 + 8))(v21, v14);
LABEL_12:
    v25 = &unk_1006D4000;
    goto LABEL_13;
  }

  (*(v33 + 32))(v10, v6, v7);
  sub_100140278(&unk_1008E51B0);
  v39 = type metadata accessor for Calendar.Component();
  v40 = *(v39 - 8);
  v51[1] = v32;
  v41 = v40;
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1006D46C0;
  (*(v41 + 104))(v43 + v42, enum case for Calendar.Component.year(_:), v39);
  v51[0] = sub_10001C970(v43);
  swift_setDeallocating();
  (*(v41 + 8))(v43 + v42, v39);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  v44 = DateComponents.year.getter();
  if (v45)
  {
    sub_1002D89C0();
    swift_allocError();
    swift_willThrow();
    v46 = *(v53 + 8);
    v46(v16, v14);
    v47 = *(v52 + 8);
    v47(v10, v7);
    v47(v13, v7);
    v46(v21, v14);
    goto LABEL_12;
  }

  v48 = *(v53 + 8);
  v49 = v44;
  v48(v16, v14);
  v50 = *(v52 + 8);
  v50(v10, v7);
  v50(v13, v7);
  v48(v21, v14);
  return v49;
}

uint64_t sub_1000216FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021744(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v28 = v2;
  v26 = v4;
  v5 = sub_100140278(&qword_1008E9FF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v25 = type metadata accessor for ActivitySharingHighlight();
  v23 = *(v25 - 8);
  v8 = __chkstk_darwin(v25);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v27 = a1;
  v29 = sub_100022B64();

  sub_100022664(&v29);

  v12 = v29;
  v13 = v29[2];
  if (v13)
  {
    v14 = 0;
    v15 = (v23 + 48);
    v16 = v29 + 5;
    v17 = _swiftEmptyArrayStorage;
    while (v14 < v12[2])
    {
      v18 = *v16;
      v19 = *(v16 - 1);
      sub_100021A38(v19, v18, v27, v28, v26, v7);

      if ((*v15)(v7, 1, v25) == 1)
      {
        sub_10000EA04(v7, &qword_1008E9FF0);
      }

      else
      {
        sub_100042910(v7, v11);
        sub_100042910(v11, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100043614(0, v17[2] + 1, 1, v17);
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          v17 = sub_100043614(v20 > 1, v21 + 1, 1, v17);
        }

        v17[2] = v21 + 1;
        sub_100042910(v24, v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21);
      }

      ++v14;
      v16 += 2;
      if (v13 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_13:

    return v17;
  }

  return result;
}

id sub_100021A38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a5;
  v88 = a4;
  v98 = a3;
  v96 = a6;
  v8 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v8 - 8);
  v91 = &v82 - v9;
  v10 = type metadata accessor for Date();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = __chkstk_darwin(v10);
  v87 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v82 - v13;
  v15 = type metadata accessor for DateComponents();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TimeZone();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for Calendar();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v90 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v82 - v25;
  __chkstk_darwin(v24);
  v97 = &v82 - v27;
  v94 = a1;
  result = sub_100022E90(a1);
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      v89 = v18;
      v85 = v16;
      v86 = v15;
      v84 = result;
      [result setEarnedInstanceCount:{a2, v82}];
      v83 = objc_opt_self();
      v29 = [v83 hk_gregorianCalendar];
      v30 = v97;
      static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

      result = [v98 timeZone];
      if (result)
      {
        v31 = result;
        static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

        Calendar.timeZone.setter();
        (*(v21 + 16))(v26, v30, v20);
        sub_100140278(&unk_1008E51B0);
        v32 = type metadata accessor for Calendar.Component();
        v33 = *(v32 - 8);
        v34 = v33;
        v95 = v20;
        v35 = *(v33 + 72);
        v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1006D64F0;
        v38 = v37 + v36;
        v39 = *(v34 + 104);
        v39(v38, enum case for Calendar.Component.year(_:), v32);
        v39(v38 + v35, enum case for Calendar.Component.month(_:), v32);
        v39(v38 + 2 * v35, enum case for Calendar.Component.day(_:), v32);
        sub_10001C970(v37);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v40 = v94;
        result = [v94 completedDate];
        if (result)
        {
          v41 = result;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = v89;
          Calendar.dateComponents(_:from:)();

          v44 = v92;
          v43 = v93;
          v92[1](v14, v93);
          v47 = *(v21 + 8);
          v46 = (v21 + 8);
          v45 = v47;
          v48 = v26;
          v49 = v95;
          (v47)(v48, v95);
          v50 = [v83 hk_gregorianCalendarWithLocalTimeZone];
          v51 = v90;
          static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = v91;
          Calendar.date(from:)();
          (v47)(v51, v49);
          v53 = (v44[6])(v52, 1, v43);
          v54 = v85;
          if (v53 == 1)
          {
            sub_10000EA04(v52, &unk_1008F73A0);
            v55 = static os_log_type_t.error.getter();
            v56 = HKLogActivity;
            if (os_log_type_enabled(HKLogActivity, v55))
            {
              v57 = v56;
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v90 = v46;
              v61 = v60;
              v99 = v60;
              *v58 = 136315394;
              v62 = _typeName(_:qualified:)();
              v64 = sub_10000AFDC(v62, v63, &v99);

              *(v58 + 4) = v64;
              *(v58 + 12) = 2112;
              v65 = v84;
              *(v58 + 14) = v84;
              *v59 = v65;
              v66 = v65;
              _os_log_impl(&_mh_execute_header, v57, v55, "%s Failed to convert date for friend achievement %@", v58, 0x16u);
              sub_10000EA04(v59, &unk_1008DB8B0);

              sub_100005A40(v61);
            }

            else
            {
            }

            (*(v54 + 8))(v42, v86);
            (v45)(v97, v95);
            v81 = type metadata accessor for ActivitySharingHighlight();
            return (*(*(v81 - 8) + 56))(v96, 1, 1, v81);
          }

          else
          {
            v90 = v46;
            v71 = v44[4];
            v92 = v45;
            v72 = v87;
            (v71)(v87, v52, v43);
            v73 = v84;
            v74 = v84;
            v75 = [v40 UUID];
            v76 = v43;
            v77 = type metadata accessor for ActivitySharingHighlight();
            v78 = v96;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v54 + 8))(v89, v86);
            (v92)(v97, v95);
            (v71)(v78 + v77[6], v72, v76);
            v79 = *(v88 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType);
            *v78 = v73;
            *(v78 + 8) = 0;
            *(v78 + v77[7]) = v98;
            *(v78 + v77[8]) = v79;
            (*(*(v77 - 1) + 56))(v78, 0, 1, v77);
            v80 = v98;

            return v80;
          }
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v67 = type metadata accessor for ActivitySharingHighlight();
  v68 = *(*(v67 - 8) + 56);
  v69 = v67;
  v70 = v96;

  return v68(v70, 1, 1, v69);
}

void *sub_1000223C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100140278(&qword_1008DE4C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(&qword_1008DE4C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002250C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100022664(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000224F8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_100022A5C(v4);
  *a1 = v2;
}

void *sub_1000226D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022E70(0, v1, 0);
    v3 = a1 + 40;
    do
    {
      v4 = *(v3 - 8);
      sub_100140278(&qword_1008DF160);
      sub_100140278(&qword_1008DE4C8);
      swift_dynamicCast();
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_100022E70((v5 > 1), v6 + 1, 1);
      }

      v3 += 16;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[2 * v6];
      *(v7 + 4) = v9;
      *(v7 + 5) = v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000227FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v40);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v34 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v38 = (v10 + 8);
    v41 = v13;
    v14 = v13 + 16 * a3 - 16;
    v15 = a1 - a3;
    p_ivars = &ResourceBundleClass.ivars;
LABEL_5:
    v36 = v14;
    v37 = a3;
    v17 = *(v41 + 16 * a3);
    v35 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v17;
      v20 = v18;
      v21 = [v19 p_ivars[426]];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v20 p_ivars[426]];
      if (!v23)
      {
        goto LABEL_14;
      }

      v24 = v23;
      v43 = v19;
      v25 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = static Date.> infix(_:_:)();
      v26 = p_ivars;
      v27 = v12;
      v28 = *v38;
      v29 = v25;
      v30 = v40;
      (*v38)(v29, v40);
      v28(v27, v30);
      v12 = v27;
      p_ivars = v26;

      if (v42)
      {
        if (!v41)
        {
          goto LABEL_15;
        }

        v17 = *(v14 + 16);
        v31 = *(v14 + 24);
        *(v14 + 16) = *v14;
        *v14 = v17;
        *(v14 + 8) = v31;
        v14 -= 16;
        if (!__CFADD__(v15++, 1))
        {
          continue;
        }
      }

      a3 = v37 + 1;
      v14 = v36 + 16;
      v15 = v35 - 1;
      if (v37 + 1 == v34)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_100022A5C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100140278(&qword_1008DE4C8);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 2) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100353DC0(v7, v8, a1, v4);
      *(v6 + 2) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000227FC(0, v2, 1, a1);
  }
}

uint64_t sub_100022B64()
{
  v1 = [v0 friendAchievements];
  if (v1)
  {
    v0 = v1;
    sub_1000059F8(0, &qword_1008E1750);
    sub_100140278(&qword_1008E0518);
    sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750);
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v2 = sub_1004C9F78(_swiftEmptyArrayStorage);
  }

  v18 = &_swiftEmptyDictionarySingleton;
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; i = v8)
  {
    v8 = i;
LABEL_11:
    v9 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v10 = *(*(v2 + 56) + v9);
    v17[0] = *(*(v2 + 48) + v9);
    v17[1] = v10;
    v0 = v17[0];

    sub_100066918(&v18, v17);
    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v11 = v18;
      v12 = v18[2];
      if (!v12)
      {
        goto LABEL_16;
      }

      v13 = sub_1000679B8(v18[2], 0);
      v14 = sub_10002250C(v17, v13 + 4, v12, v11);

      sub_100022DEC();
      if (v14 != v12)
      {
        __break(1u);
LABEL_16:
        v13 = _swiftEmptyArrayStorage;
      }

      v15 = sub_1000226D0(v13);

      return v15;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++i;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_100022DF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100140278(a3);
  v5 = swift_allocObject();
  v6 = j__malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *sub_100022E70(void *a1, int64_t a2, char a3)
{
  result = sub_1000223C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_100022E90(void *a1)
{
  v2 = type metadata accessor for Date();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateComponents();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DA9F8 != -1)
  {
    swift_once();
  }

  v11 = qword_1008EB6A0;
  v12 = [a1 templateUniqueName];
  if (!v12)
  {
    __break(1u);
  }

  v13 = v12;
  v76 = 0;
  v14 = [v11 ephemeralAchievementWithTemplateUniqueName:v12 error:&v76];

  if (v76)
  {
    v15 = v76;

    swift_willThrow();
    v16 = static os_log_type_t.error.getter();
    v17 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v16))
    {
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_10000AFDC(0xD00000000000001DLL, 0x800000010075A9B0, &v78);
      *(v19 + 12) = 2080;
      v21 = [a1 templateUniqueName];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v76 = v23;
      v77 = v25;
      sub_100140278(&qword_1008DC8F8);
      v55 = Optional.description.getter();
      v57 = v56;

      v58 = sub_10000AFDC(v55, v57, &v78);

      *(v19 + 14) = v58;
      *(v19 + 22) = 2112;
      v59 = v15;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v60;
      *v20 = v60;
      _os_log_impl(&_mh_execute_header, v18, v16, "%s failed to fetch ephemeral achievement for %s with error %@", v19, 0x20u);
      sub_1001F3454(v20);

      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  if (!v14 || ![v14 hasClientRequiredURLs])
  {
    v46 = static os_log_type_t.default.getter();
    v47 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v46))
    {
      v48 = v47;
      v49 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_10000AFDC(0xD00000000000001DLL, 0x800000010075A9B0, &v78);
      *(v49 + 12) = 2080;
      v50 = [a1 templateUniqueName];
      if (v50)
      {
        v51 = v50;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      v76 = v52;
      v77 = v54;
      sub_100140278(&qword_1008DC8F8);
      v61 = Optional.description.getter();
      v63 = v62;

      v64 = sub_10000AFDC(v61, v63, &v78);

      *(v49 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v48, v46, "%s Friend Achievement %s does not have required URLs, filtering out.", v49, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v72 = a1;
  v26 = [v14 relevantEarnedInstance];
  if (v26)
  {
    v66 = v2;
    v67 = v26;
    static Calendar.current.getter();
    sub_100140278(&unk_1008E51B0);
    v27 = type metadata accessor for Calendar.Component();
    v28 = *(v27 - 8);
    v69 = *(v28 + 72);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v71 = 2 * v69;
    v30 = swift_allocObject();
    v70 = v30;
    *(v30 + 16) = xmmword_1006D64F0;
    v68 = v30 + v29;
    v31 = *(v28 + 104);
    v32 = v27;
    v31();
    v33 = v68;
    (v31)(v68 + v69, enum case for Calendar.Component.month(_:), v32);
    (v31)(v33 + v71, enum case for Calendar.Component.day(_:), v32);
    sub_10001C970(v70);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    result = [v72 completedDate];
    if (!result)
    {
      __break(1u);
      goto LABEL_31;
    }

    v35 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Calendar.dateComponents(_:from:)();

    (*(v75 + 8))(v4, v66);
    (*(v74 + 8))(v7, v5);
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v73 + 8))(v10, v8);
    v37 = v67;
    [v67 setEarnedDateComponents:isa];
  }

  v38 = [v14 template];
  v39 = [v38 canonicalUnit];

  if (!v39)
  {
    return v14;
  }

  v40 = [v14 relevantEarnedInstance];
  if (!v40)
  {
LABEL_17:

    return v14;
  }

  v41 = v40;
  result = [v72 value];
  if (result)
  {
    v42 = result;
    [result doubleValue];
    v44 = v43;

    v45 = [objc_opt_self() quantityWithUnit:v39 doubleValue:v44];
    [v41 setValue:v45];

    goto LABEL_17;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000237AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100023A68(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  v134 = a7;
  v135 = a8;
  v140 = a16;
  v132 = a15;
  v129 = a14;
  v126 = a13;
  v133 = a12;
  v138 = a11;
  v125 = a10;
  v139 = sub_100140278(&qword_1008E0398);
  v131 = *(v139 - 8);
  __chkstk_darwin(v139);
  v130 = &v112 - v22;
  type metadata accessor for ScrollToTopCoordinator();
  v23 = swift_allocObject();
  v137 = v23;
  v24 = OBJC_IVAR____TtC10FitnessApp22ScrollToTopCoordinator_scrollViewProxy;
  v25 = type metadata accessor for ScrollViewProxy();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  type metadata accessor for FriendsSetupCoordinator();
  sub_100024890(&qword_1008DC078, type metadata accessor for FriendsSetupCoordinator);
  v128 = a1;
  v136 = a2;
  v127 = a3;
  v26 = a4;
  v124 = a5;
  v123 = a6;
  v27 = v134;
  v28 = v135;
  v29 = a9;
  v30 = ObservedObject.init(wrappedValue:)();
  v134 = v31;
  v135 = v30;
  type metadata accessor for ActivitySharingHighlightDataProvider();
  swift_allocObject();
  v32 = v138;
  v33 = v28;
  v34 = v32;
  v138 = v34;
  v35 = v125;
  v133 = v133;
  v121 = v126;
  v120 = v129;
  v118 = v132;
  v36 = v140;
  v132 = sub_100024924(v33, v34);

  type metadata accessor for ActivitySharingFriendListDataProvider();
  swift_allocObject();
  v37 = v26;
  v129 = v37;
  v38 = v27;
  v39 = v33;
  v40 = v35;
  v41 = v36;
  v140 = v41;
  sub_100024EC0(v37, v38, v39, v40, v41);

  v42 = v38;
  v112 = v38;

  v43 = v40;
  v114 = v40;

  sub_100024890(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
  v44 = ObservedObject.init(wrappedValue:)();
  v125 = v45;
  v126 = v44;
  type metadata accessor for ReachableContactsDataSource();
  swift_allocObject();
  v46 = v39;
  v113 = v46;
  v122 = sub_100025C2C(v46);
  type metadata accessor for ActivitySharingNavigationCoordinator();
  v47 = swift_allocObject();

  swift_defaultActor_initialize();
  sub_100024890(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
  *(v47 + 112) = 0u;
  *(v47 + 128) = 0u;
  *(v47 + 144) = 0;
  v119 = ObservedObject.init(wrappedValue:)();
  v49 = v48;
  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
  v50 = swift_allocObject();
  swift_defaultActor_initialize();
  v51 = OBJC_IVAR____TtC10FitnessApp43ActivitySharingFriendDetailAlertCoordinator__presentedAlertType;
  v159 = 0u;
  v160 = 0u;
  LOBYTE(v161) = -1;
  sub_100140278(&qword_1008E03A0);
  v52 = v130;
  Published.init(initialValue:)();
  (*(v131 + 32))(v50 + v51, v52, v139);
  sub_100024890(&qword_1008EB690, type metadata accessor for ActivitySharingFriendDetailAlertCoordinator);
  v131 = ObservedObject.init(wrappedValue:)();
  v54 = v53;
  v139 = v53;
  v55 = swift_allocObject();
  v57 = v127;
  v56 = v128;
  v55[2] = v128;
  v55[3] = v57;
  v55[4] = v54;
  v59 = v123;
  v58 = v124;
  v55[5] = v124;
  v55[6] = v59;
  v55[7] = v42;
  v55[8] = v46;
  v60 = v138;
  v55[9] = v43;
  v55[10] = v60;
  v62 = v120;
  v61 = v121;
  v55[11] = v49;
  v55[12] = v61;
  v63 = v118;
  v55[13] = v62;
  v55[14] = v63;
  v55[15] = v140;
  v64 = v49[14];
  v115 = v49[15];
  v116 = v64;
  v117 = sub_1001D3B90;
  v49[14] = sub_1001D3B90;
  v49[15] = v55;
  swift_retain_n();
  v128 = v56;
  v127 = v57;
  v130 = v58;
  v65 = v59;
  v66 = v112;
  v67 = v113;
  v124 = v138;
  v68 = v114;
  v113 = v68;
  v138 = v61;
  v69 = v62;
  v114 = v69;
  v70 = v63;
  v120 = v70;
  v140 = v140;

  sub_1000245E0(v116);

  v71 = swift_allocObject();
  v71[2] = v67;
  v71[3] = v68;
  v73 = v127;
  v72 = v128;
  v71[4] = v127;
  v71[5] = v69;
  v71[6] = v70;
  v71[7] = v66;
  v74 = v124;
  v71[8] = v72;
  v71[9] = v74;
  v75 = v117;
  v71[10] = v65;
  v71[11] = v75;
  v71[12] = v55;
  v76 = v49[17];
  v123 = v49[16];
  v121 = v76;
  v49[16] = sub_1001D3BDC;
  v49[17] = v71;
  v128 = v72;
  v77 = v73;
  v78 = v65;
  v79 = v66;
  v80 = v67;
  v81 = v74;
  v82 = v113;
  v83 = v114;
  v84 = v120;

  sub_1000245E0(v123);

  *&v145 = v128;
  *(&v145 + 1) = v77;
  *&v146 = v136;
  *(&v146 + 1) = v129;
  *&v147 = v130;
  *(&v147 + 1) = v78;
  *&v148 = v79;
  *(&v148 + 1) = v80;
  *&v149 = v82;
  *(&v149 + 1) = v122;
  *&v150 = v81;
  *(&v150 + 1) = v122;
  *&v151 = v133;
  *(&v151 + 1) = v138;
  *&v152 = v83;
  *(&v152 + 1) = v84;
  *&v153 = v140;
  *(&v153 + 1) = v119;
  *&v154 = v49;
  *(&v154 + 1) = v132;
  *&v155 = v126;
  *(&v155 + 1) = v125;
  *&v156 = v131;
  *(&v156 + 1) = v139;
  *&v157 = v135;
  *(&v157 + 1) = v134;
  v158 = v137;
  *&v159 = v128;
  *(&v159 + 1) = v77;
  *&v160 = v136;
  *(&v160 + 1) = v129;
  v161 = v130;
  v162 = v78;
  v163 = v79;
  v164 = v80;
  v165 = v82;
  v166 = v122;
  v167 = v81;
  v168 = v122;
  v169 = v133;
  v170 = v138;
  v171 = v83;
  v172 = v84;
  v173 = v140;
  v174 = v119;
  v175 = v49;
  v176 = v132;
  v177 = v126;
  v178 = v125;
  v179 = v131;
  v180 = v139;
  v181 = v135;
  v182 = v134;
  v183 = v137;
  sub_1000262F0(&v145, v143);
  sub_100026328(&v159);
  v85 = objc_allocWithZone(type metadata accessor for ActivitySharingTabViewHostingController());
  *&v85[qword_1008E0F78] = 0;
  v86 = &v85[qword_1008E0F80];
  v87 = v146;
  *v86 = v145;
  *(v86 + 1) = v87;
  v88 = v150;
  v89 = v148;
  v90 = v147;
  *(v86 + 4) = v149;
  *(v86 + 5) = v88;
  *(v86 + 2) = v90;
  *(v86 + 3) = v89;
  v91 = v154;
  v92 = v152;
  v93 = v151;
  *(v86 + 8) = v153;
  *(v86 + 9) = v91;
  *(v86 + 6) = v93;
  *(v86 + 7) = v92;
  v94 = v155;
  v95 = v156;
  v96 = v157;
  *(v86 + 26) = v158;
  *(v86 + 11) = v95;
  *(v86 + 12) = v96;
  *(v86 + 10) = v94;
  v143[10] = v155;
  v143[11] = v156;
  v143[12] = v157;
  v144 = v158;
  v143[6] = v151;
  v143[7] = v152;
  v143[8] = v153;
  v143[9] = v154;
  v143[2] = v147;
  v143[3] = v148;
  v143[4] = v149;
  v143[5] = v150;
  v143[0] = v145;
  v143[1] = v146;
  sub_1000262F0(&v145, v142);
  sub_1000262F0(&v145, v142);
  v97 = UIHostingController.init(rootView:)();
  result = [v97 tabBarItem];
  if (result)
  {
    v99 = result;
    v100 = [objc_opt_self() mainBundle];
    v101 = String._bridgeToObjectiveC()();
    v102 = [v100 localizedStringForKey:v101 value:0 table:0];

    if (!v102)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = String._bridgeToObjectiveC()();
    }

    [v99 setTitle:v102];
    result = [v97 tabBarItem];
    if (result)
    {
      v103 = result;
      v104 = [objc_opt_self() smm_systemImageNamed:@"person.2.fill"];
      [v103 setImage:v104];

      v105 = [v97 navigationItem];
      [v105 setLargeTitleDisplayMode:3];

      v106 = type metadata accessor for ActivitySharingNavigationController();
      v107 = objc_allocWithZone(v106);
      *&v107[OBJC_IVAR____TtC10FitnessApp35ActivitySharingNavigationController_viewController] = v97;
      v141.receiver = v107;
      v141.super_class = v106;
      v108 = objc_msgSendSuper2(&v141, "initWithRootViewController:", v97);
      v109 = v154;

      sub_100026328(&v145);
      v110 = *(v109 + 144);
      *(v109 + 144) = v108;
      v111 = v108;

      return v111;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000245E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000245F0()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100024690()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t type metadata accessor for ScrollToTopCoordinator()
{
  result = qword_1008DBF48;
  if (!qword_1008DBF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002475C()
{
  if (!qword_1008DBF58)
  {
    type metadata accessor for ScrollViewProxy();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DBF58);
    }
  }
}

void sub_1000247B4()
{
  sub_10002475C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for FriendsSetupCoordinator()
{
  result = qword_1008F6F38;
  if (!qword_1008F6F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ActivitySharingHighlightDataProvider()
{
  result = qword_1008E9EC8;
  if (!qword_1008E9EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024924(void *a1, void *a2)
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - v6;
  v8 = sub_100140278(&qword_1008E9FE8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider__state;
  aBlock[0] = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v12, v11, v8);
  *(v2 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType) = 1;
  *(v2 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_friendListSectionManager) = a1;
  *(v2 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_healthStore) = a2;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v15 = a1;
  v16 = a2;

  sub_10026E198(0, 0, v7, &unk_1006EAF10, v14);

  v17 = [objc_opt_self() defaultCenter];
  v18 = kASFriendListChangedNotificationKey;
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 mainQueue];
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100355134;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026F8C;
  aBlock[3] = &unk_100854028;
  v23 = _Block_copy(aBlock);

  v24 = [v17 addObserverForName:v20 object:0 queue:v21 usingBlock:v23];
  _Block_release(v23);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_100024C84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for ActivitySharingFriendListDataProvider()
{
  result = qword_1008DE7B8;
  if (!qword_1008DE7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024D14()
{
  if (!qword_1008DE7C8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DE7C8);
    }
  }
}

void sub_100024D64()
{
  sub_100024D14();
  if (v0 <= 0x3F)
  {
    sub_100024E68();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100024E68()
{
  if (!qword_1008DE7D0)
  {
    type metadata accessor for ASFriendListDisplayMode(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DE7D0);
    }
  }
}

char *sub_100024EC0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v52 = *v6;
  v12 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v12 - 8);
  v51 = &v50 - v13;
  v14 = sub_100140278(&qword_1008DE930);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  swift_defaultActor_initialize();
  v18 = OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider__state;
  aBlock = 0;
  v54 = 0;
  v55 = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(&v6[v18], v17, v14);
  v19 = OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_invitationDestinationCoordinator;
  *&v6[v19] = [objc_allocWithZone(type metadata accessor for InvitationDestinationCoordinator()) init];
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_activitySharingClient] = a1;
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_fiuiFormattingManager] = a2;
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_friendListSectionManager] = a3;
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_friendManager] = a4;
  *&v6[OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_pauseRingsCoordinator] = a5;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = sub_100025974();
  swift_beginAccess();
  v59 = v25;
  type metadata accessor for ASFriendListDisplayMode(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v26 = type metadata accessor for TaskPriority();
  v27 = v51;
  (*(*(v26 - 8) + 56))(v51, 1, 1, v26);
  type metadata accessor for MainActor();

  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v6;
  sub_10026E198(0, 0, v27, &unk_1006D8338, v29);

  v30 = objc_opt_self();
  v31 = [v30 defaultCenter];
  v32 = kASFriendListChangedNotificationKey;
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 mainQueue];
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v38 = v52;
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  v57 = sub_100193EA4;
  v58 = v37;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_100026F8C;
  v56 = &unk_100849810;
  v39 = _Block_copy(&aBlock);

  v40 = [v31 addObserverForName:v34 object:0 queue:v35 usingBlock:v39];
  _Block_release(v39);
  swift_unknownObjectRelease();

  v41 = [v30 defaultCenter];
  v42 = [objc_opt_self() didUpdatePauseStateNotification];
  v43 = [v33 mainQueue];
  v44 = swift_allocObject();
  swift_weakInit();

  v45 = swift_allocObject();
  v46 = v52;
  *(v45 + 16) = v44;
  *(v45 + 24) = v46;
  v57 = sub_100193EAC;
  v58 = v45;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_100026F8C;
  v56 = &unk_100849860;
  v47 = _Block_copy(&aBlock);

  v48 = [v41 addObserverForName:v42 object:0 queue:v43 usingBlock:v47];
  _Block_release(v47);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_100025484()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000254BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 initializeBufferWithCopyOfBuffer for TrendsCoachingAverageInformation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for InvitationDestinationCoordinator()
{
  result = qword_1008F3CC8;
  if (!qword_1008F3CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002556C()
{
  result = type metadata accessor for InvitationDestinationService();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SecureCloudClient();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_100025638()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for InvitationDestinationCache();
  sub_100025870(&_swiftEmptyArrayStorage);
  v6 = InvitationDestinationCache.__allocating_init(invitationDestinationMap:)();
  v16 = v5;
  v17 = &protocol witness table for InvitationDestinationCache;
  v15 = v6;
  InvitationDestinationService.init(cache:)();
  SecureCloudClient.init()();
  v7 = type metadata accessor for InvitationDestinationCoordinator();
  v14.receiver = v1;
  v14.super_class = v7;
  v8 = objc_msgSendSuper2(&v14, "init");
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_10026E7AC(0, 0, v4, &unk_1006FB1F8, v11);

  return v8;
}

uint64_t sub_1000257D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002580C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100025870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008F3CF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100066F20(v5, v6);
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

uint64_t sub_100025974()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000EA04(v7, &qword_1008E51F0);
  }

  return 0;
}

uint64_t sub_100025AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ReachableContactsDataSource()
{
  result = qword_1008F8520;
  if (!qword_1008F8520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025B04()
{
  if (!qword_1008F8530[0])
  {
    sub_100141EEC(&qword_1008E0988);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, qword_1008F8530);
    }
  }
}

void sub_100025B68()
{
  sub_100025B04();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100025C2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008F8678);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  *(v2 + 6) = [objc_allocWithZone(type metadata accessor for InvitationDestinationCoordinator()) init];
  v16 = OBJC_IVAR____TtC10FitnessApp27ReachableContactsDataSource__friendSuggestionList;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E0988);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v2[v16], v15, v12);
  *(v2 + 4) = a1;
  v17 = a1;
  v18 = [v17 allDestinationsForActiveOrPendingFriends];
  if (v18)
  {
    v19 = v18;
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = &_swiftEmptySetSingleton;
  }

  *(v2 + 2) = v20;
  v21 = objc_opt_self();
  result = [v21 sharedInstanceForServiceIdentifier:kASiCloudServiceIdentifier];
  if (result)
  {
    v23 = result;
    v34 = v17;
    result = [v21 sharedInstanceForServiceIdentifier:kASiMessageServiceIdentifier];
    if (result)
    {
      v24 = result;
      sub_100140278(&unk_1008E4E20);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1006D68D0;
      *(v25 + 32) = v23;
      *(v25 + 40) = v24;
      *(v2 + 5) = v25;
      v26 = objc_allocWithZone(CNContactStore);
      v27 = v23;
      v28 = v24;
      *(v2 + 3) = [v26 init];
      sub_1000059F8(0, &qword_1008E3FD0);
      (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
      v29 = static OS_dispatch_queue.global(qos:)();
      (*(v9 + 8))(v11, v8);
      aBlock[4] = sub_10067961C;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_1008673C0;
      v30 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v40 = &_swiftEmptyArrayStorage;
      sub_1000261C4();
      sub_100140278(&unk_1008E7F50);
      sub_10002621C();
      v31 = v36;
      v32 = v39;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v30);

      (*(v38 + 8))(v31, v32);
      (*(v35 + 8))(v7, v37);

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000261C4()
{
  result = qword_1008E33B0;
  if (!qword_1008E33B0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E33B0);
  }

  return result;
}

unint64_t sub_10002621C()
{
  result = qword_1008E33C0;
  if (!qword_1008E33C0)
  {
    sub_100141EEC(&unk_1008E7F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E33C0);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySharingFriendDetailAlertCoordinator()
{
  result = qword_1008F1098;
  if (!qword_1008F1098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActivitySharingTabViewHostingController()
{
  result = qword_1008E0F88;
  if (!qword_1008E0F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002642C()
{
  v1 = sub_100140278(&unk_1008E4F00);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-1] - v2;
  sub_100007C5C(*(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_avatarSettingsProvider, v8);
  sub_1000066AC(v8, v8[3]);
  dispatch thunk of AvatarSettingsCoordinating.fetchAvatarSettings()();
  v4 = type metadata accessor for AvatarSettings();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100005A40(v8);
    sub_10000EA04(v3, &unk_1008E4F00);
    v6 = 0;
  }

  else
  {
    v6 = AvatarSettings.contact.getter();
    (*(v5 + 8))(v3, v4);
    sub_100005A40(v8);
  }

  dispatch thunk of AccountButton.updateContact(_:)();
}

uint64_t sub_1000265E0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActivityDashboardViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
    }

    [v5 detachPalette];
  }

  sub_10046CEE8();
  return sub_1000265C0();
}

uint64_t sub_10002669C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_100026988(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100026A24(char a1)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for ActivityDashboardViewController();
  v30.receiver = v1;
  v30.super_class = v7;
  objc_msgSendSuper2(&v30, "viewDidAppear:", a1 & 1);
  v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_visibility] = 2;
  if (v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_initialPresentation + 8])
  {
    static os_log_type_t.default.getter();
    v8 = HKLogActivity;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    [v1 presentAppSettingsShowingPane:*&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_initialPresentation]];
  }

  sub_100026E98(&qword_1008EE860, type metadata accessor for ActivityDashboardViewController);
  sub_100026E98(&qword_1008EE868, type metadata accessor for ActivityDashboardViewController);
  MetricResignActiveObserving<>.addResignActiveObserver()();
  v9 = [v1 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 setDelegate:v2];
  }

  v11 = *&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator];
  *&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator] = 0;

  v12 = *(*&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activitySharingNavigationCoordinator);

  v13 = [v2 navigationController];
  v14 = *(v12 + 144);
  *(v12 + 144) = v13;

  dispatch thunk of MarketingPaletteBannerPresenter.onAppear()();
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v6, 1, 1, v15);
  type metadata accessor for MainActor();
  v17 = v2;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  sub_10026E198(0, 0, v6, &unk_1006F2AB0, v19);

  v16(v6, 1, 1, v15);
  v20 = v17;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  sub_10026E198(0, 0, v6, &unk_1006F2AC0, v22);

  v16(v6, 1, 1, v15);
  v23 = v20;
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = &protocol witness table for MainActor;
  v25[4] = v23;
  sub_10026E198(0, 0, v6, &unk_1006F2AD0, v25);

  v16(v6, 1, 1, v15);
  v26 = v23;
  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v26;
  sub_10026E198(0, 0, v6, &unk_1006F2AE0, v28);
}

uint64_t sub_100026E98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100026F34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100026F8C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_100027080(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___CHHistoryDataProvider_mindfulnessSessionDataProvider);

    aBlock[4] = sub_10044FBE0;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004476B0;
    aBlock[3] = &unk_10085AD78;
    v6 = _Block_copy(aBlock);

    [v5 allMindfulnessSessionsWithCompletion:v6];
    _Block_release(v6);
  }
}

uint64_t sub_100027198()
{
  v1 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0[5] = v0[2];

  return _swift_task_switch(sub_100044BF4, v1, 0);
}

uint64_t sub_100027254(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  Calendar.date(from:)();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10000EA04(v7, &unk_1008F73A0);
    v16 = 0;
  }

  else
  {
    v22 = v2;
    v21 = *(v9 + 32);
    v21(v14, v7, v8);
    v17 = v24;
    Calendar.date(from:)();
    if (v15(v17, 1, v8) == 1)
    {
      (*(v9 + 8))(v14, v8);
      sub_10000EA04(v17, &unk_1008F73A0);
      v16 = 0;
    }

    else
    {
      v21(v11, v17, v8);
      v16 = static Date.< infix(_:_:)();
      v18 = *(v9 + 8);
      v18(v11, v8);
      v18(v14, v8);
    }
  }

  return v16 & 1;
}

void sub_1000274FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = type metadata accessor for DateComponents();
  __chkstk_darwin(v11);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v38 - v14;
  v18 = __chkstk_darwin(v15);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v16;
    v19 = *v5;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        (v48)(v50, v25, v11, v18);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          v37(v28, v11);
          return;
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        v33(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        v34(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = &v42[v38];
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

char *sub_100027808(uint64_t a1, uint64_t a2, char a3)
{
  v59 = a2;
  v5 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v64 = type metadata accessor for Calendar.Component();
  v8 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateComponents();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v58 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v43 - v13;
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  v46 = type metadata accessor for Calendar();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v62 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  v66 = &_swiftEmptySetSingleton;
  DateInterval.start.getter();
  v56 = a1;
  DateInterval.end.getter();
  v54 = sub_1002175F0();
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v25 = *(v18 + 8);
  v55 = v20;
  v60 = v25;
  v61 = v18 + 8;
  v26 = (v25)(v20, v17);
  if (a1)
  {
LABEL_10:
    v38 = v66;
    v39 = v66[2];
    if (v39)
    {
      v40 = sub_1001A3CCC(v66[2], 0);
      v64 = sub_1001A9A60(&v65, &v40[(*(v44 + 80) + 32) & ~*(v44 + 80)], v39, v38);

      v26 = sub_100022DEC();
      if (v64 == v39)
      {
LABEL_14:
        __chkstk_darwin(v26);
        *(&v43 - 2) = v62;
        v65 = v40;

        sub_1004AA4B0(sub_1000277E8, (&v43 - 4));

        v60(v23, v17);

        v41 = v65;
        goto LABEL_16;
      }

      __break(1u);
    }

    v40 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v27 = &enum case for Calendar.Component.day(_:);
  if (!v59)
  {
    v27 = &enum case for Calendar.Component.hour(_:);
  }

  v28 = (a3 & 1) == 0;
  v52 = a3 & 1;
  v51 = (v44 + 16);
  v29 = (v44 + 8);
  v50 = (v8 + 104);
  v49 = (v18 + 48);
  v53 = (v8 + 8);
  v47 = (v18 + 32);
  if (v28)
  {
    v27 = &enum case for Calendar.Component.month(_:);
  }

  v48 = *v27;
  while (1)
  {
    sub_1004A9C98(v59, v52, v16);
    v30 = v58;
    (*v51)(v58, v16, v10);
    v31 = v57;
    sub_1001A42DC(v57, v30);
    v32 = v10;
    v33 = *v29;
    (*v29)(v31, v32);
    (*v50)(v63, v48, v64);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    if ((*v49)(v7, 1, v17) == 1)
    {
      break;
    }

    (*v53)(v63, v64);
    v33(v16, v32);
    v34 = v16;
    v35 = v60;
    v60(v23, v17);
    (*v47)(v23, v7, v17);
    v36 = v55;
    DateInterval.end.getter();
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    v26 = v35(v36, v17);
    v16 = v34;
    v10 = v32;
    if (v37)
    {
      goto LABEL_10;
    }
  }

  sub_10000EA04(v7, &unk_1008F73A0);
  (*v53)(v63, v64);
  v33(v16, v32);
  v60(v23, v17);
  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  (*(v45 + 8))(v62, v46);
  return v41;
}

void sub_100027F40(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  v111 = a6;
  v117 = a5;
  v114 = type metadata accessor for TimeZone();
  v10 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v82[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Calendar();
  v116 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v15 - 8);
  v95 = &v82[-v16];
  v115 = type metadata accessor for Date();
  v17 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v82[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v100 = &v82[-v20];
  v94 = type metadata accessor for MetricChartData();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v82[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v82[-v23];
  v99 = type metadata accessor for DateComponents();
  v25 = *(v99 - 8);
  __chkstk_darwin(v99);
  v109 = &v82[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_100027808(a3, a1, a2 & 1);
  v108 = *(v27 + 2);
  if (!v108)
  {
LABEL_57:

    return;
  }

  v28 = v10;
  v29 = 0;
  v97 = 0;
  v107 = &v27[(*(v25 + 80) + 32) & ~*(v25 + 80)];
  v105 = v116 + 1;
  v106 = v25 + 16;
  v104 = (v17 + 48);
  v98 = (v17 + 32);
  v83 = a2;
  v85 = a2 & (a1 == 0);
  v110 = (v28 + 8);
  v116 = (v17 + 8);
  v86 = (v17 + 16);
  v101 = (v25 + 8);
  v30 = 0.0;
  v91 = v111;
  v96 = _swiftEmptyArrayStorage;
  v31 = v95;
  v32 = v115;
  v33 = v99;
  v34 = v109;
  v90 = a4;
  v88 = v12;
  v89 = v14;
  v87 = v24;
  v102 = v27;
  v103 = v25;
  while (v29 < *(v27 + 2))
  {
    (*(v25 + 16))(v34, &v107[*(v25 + 72) * v29], v33);
    static Calendar.current.getter();
    Calendar.date(from:)();
    (*v105)(v14, v12);
    if ((*v104)(v31, 1, v32) == 1)
    {
      (*v101)(v34, v33);
      sub_10000EA04(v31, &unk_1008F73A0);
    }

    else
    {
      v35 = v100;
      (*v98)(v100, v31, v32);
      if (*(a4 + 16))
      {
        v36 = sub_1004C59D4(v109);
        if (v37)
        {
          v38 = *(*(a4 + 56) + 8 * v36);
          v39 = v38 >> 62;
          if (v38 >> 62)
          {
            v40 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v40)
          {
            v41 = 0;
            v42 = 0.0;
            while (1)
            {
              if ((v38 & 0xC000000000000001) != 0)
              {
                v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_59;
                }

                v43 = *(v38 + 8 * v41 + 32);
              }

              v44 = v43;
              v45 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              v46 = [v43 quantity];
              [v46 doubleValueForUnit:v117];
              v48 = v47;

              v42 = v42 + v48;
              ++v41;
              if (v45 == v40)
              {
                goto LABEL_22;
              }
            }

            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }

          v42 = 0.0;
LABEL_22:
          v30 = v30 + v42;
          v49 = 1;
          v50 = v100;
          if (((1 << v91) & 0x5DDBB8E070) != 0)
          {
LABEL_23:
            v49 = 0;
            goto LABEL_25;
          }

          if (((1 << v91) & 0x2224471F80) != 0)
          {
LABEL_25:
            if (v85)
            {
              if (v39)
              {
                v51 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v51 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

LABEL_44:

              v68 = v90;
              v14 = v89;
              if (__OFADD__(v97, v51))
              {
                goto LABEL_61;
              }

              v97 += v51;
              if (v49)
              {

                v31 = v95;
                v32 = v115;
LABEL_48:
                if (v51 < 1)
                {
                  v42 = 0.0;
                }

                else
                {
                  v42 = v42 / v51;
                }
              }

              else
              {
                v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v31 = v95;
                v32 = v115;
                if (v69)
                {
                  goto LABEL_48;
                }
              }

              v70 = v94;
              v71 = v92;
              (*v86)(&v92[*(v94 + 20)], v50, v32);
              v72 = objc_opt_self();
              v73 = v117;
              v74 = [v72 quantityWithUnit:v117 doubleValue:v42];
              (*v116)(v50, v32);
              (*v101)(v109, v99);
              *v71 = v73;
              *(v71 + *(v70 + 24)) = v74;
              v75 = v71;
              v76 = v87;
              sub_10002AFD4(v75, v87, type metadata accessor for MetricChartData);
              v77 = v73;
              v78 = v96;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = sub_1001A1F18(0, v78[2] + 1, 1, v78);
              }

              a4 = v68;
              v80 = v78[2];
              v79 = v78[3];
              v12 = v88;
              if (v80 >= v79 >> 1)
              {
                v78 = sub_1001A1F18(v79 > 1, v80 + 1, 1, v78);
              }

              v78[2] = v80 + 1;
              v81 = (*(v93 + 80) + 32) & ~*(v93 + 80);
              v96 = v78;
              sub_10002AFD4(v76, v78 + v81 + *(v93 + 72) * v80, type metadata accessor for MetricChartData);
              v33 = v99;
              v34 = v109;
              goto LABEL_4;
            }
          }

          else if (v83)
          {
            goto LABEL_23;
          }

          if (v39)
          {
            v52 = _CocoaArrayWrapper.endIndex.getter();
            if (!v52)
            {
              goto LABEL_42;
            }

LABEL_32:
            v118 = _swiftEmptyArrayStorage;
            sub_100073020(0, v52 & ~(v52 >> 63), 0);
            if (v52 < 0)
            {
              goto LABEL_62;
            }

            v84 = v49;
            v53 = 0;
            v54 = v118;
            v111 = v38 & 0xC000000000000001;
            v55 = v52;
            do
            {
              if (v111)
              {
                v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v56 = *(v38 + 8 * v53 + 32);
              }

              v57 = v56;
              v58 = [v56 endDate];
              v59 = v112;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v60 = v113;
              static TimeZone.current.getter();
              v61 = Date.dayOfMonth(in:)();
              v63 = v62;

              (*v110)(v60, v114);
              (*v116)(v59, v115);
              v118 = v54;
              v65 = v54[2];
              v64 = v54[3];
              if (v65 >= v64 >> 1)
              {
                sub_100073020((v64 > 1), v65 + 1, 1);
                v54 = v118;
              }

              ++v53;
              v54[2] = v65 + 1;
              v66 = &v54[2 * v65];
              v66[4] = v61;
              v66[5] = v63;
            }

            while (v55 != v53);

            v50 = v100;
            v49 = v84;
          }

          else
          {
            v52 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v52)
            {
              goto LABEL_32;
            }

LABEL_42:

            v54 = _swiftEmptyArrayStorage;
          }

          v67 = sub_1001AA6D4(v54);

          v51 = *(v67 + 16);
          goto LABEL_44;
        }
      }

      (*v116)(v35, v32);
      v34 = v109;
      v33 = v99;
      (*v101)(v109, v99);
    }

LABEL_4:
    ++v29;
    v27 = v102;
    v25 = v103;
    if (v29 == v108)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_100028AE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = a5;
  v14 = sub_100140278(&qword_1008DC408);
  __chkstk_darwin(v14 - 8);
  v16 = &v65 - v15;
  v71 = type metadata accessor for MetricDetailViewModel();
  v17 = *(v71 - 8);
  __chkstk_darwin(v71);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = sub_100627E80(a2);
    if (v20)
    {
      if (!a3)
      {
        v66 = a9;
        v45 = a6 & 1;
        v69 = v16;
        v46 = v70;
        LODWORD(v68) = v45;
        v47 = sub_1003CE35C(v20, v70, v45, sub_10048C700);

        v48 = sub_1004D3AD8(a4);
        v49 = v45;
        v50 = v66;
        sub_100027F40(v46, v49, v66, v47, v48, a4);
        v67 = v51;
        v53 = v52;
        v55 = v54;

        v56 = v71;
        v57 = *(v71 + 36);
        v58 = type metadata accessor for DateInterval();
        v59 = *(v58 - 8);
        (*(v59 + 16))(&v19[v57], v50, v58);
        (*(v59 + 56))(&v19[v57], 0, 1, v58);
        v60 = v48;
        Date.init()();
        v61 = objc_opt_self();
        *v19 = [v61 quantityWithUnit:v60 doubleValue:v53];
        v62 = [v61 quantityWithUnit:v60 doubleValue:v55];

        v63 = v67;
        *(v19 + 1) = v62;
        *(v19 + 2) = v63;
        *(v19 + 3) = _swiftEmptyArrayStorage;
        *(v19 + 4) = v46;
        v19[40] = v68;
        v19[*(v56 + 40)] = 1;
        v64 = v69;
        sub_10002910C(v19, v69);
        (*(v17 + 56))(v64, 0, 1, v56);
        sub_100140278(&qword_1008EB7D8);
        CheckedContinuation.resume(returning:)();

        return sub_1000292B4(v19, type metadata accessor for MetricDetailViewModel);
      }
    }
  }

  v21 = static os_log_type_t.error.getter();
  v22 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v21))
  {
    v69 = a7;
    v68 = v22;
    v23 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v23 = 136315906;
    v24 = _typeName(_:qualified:)();
    v26 = sub_10000AFDC(v24, v25, &v75);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = sub_10002A094(a4);
    v29 = sub_10000AFDC(v27, v28, &v75);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    if (a6)
    {
      v30 = 0xE90000000000006BLL;
      v31 = 0x6565772073696874;
      if (v70 != 1)
      {
        v31 = 0x6E6F6D2073696874;
        v30 = 0xEA00000000006874;
      }

      if (v70)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0x7961646F74;
      }

      if (v70)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0xE500000000000000;
      }
    }

    else
    {
      v73 = 0x2072616579;
      v74 = 0xE500000000000000;
      v72 = v70;
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v32 = v73;
      v33 = v74;
    }

    v35 = sub_10000AFDC(v32, v33, &v75);

    *(v23 + 24) = v35;
    *(v23 + 32) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v73 = v36;
    v74 = v38;
    sub_100140278(&qword_1008DC8F8);
    v39 = Optional.description.getter();
    v41 = v40;

    v42 = sub_10000AFDC(v39, v41, &v75);

    *(v23 + 34) = v42;
    v43 = v68;
    _os_log_impl(&_mh_execute_header, v68, v21, "%s error fetchQuantitySample for %s in %s: %s", v23, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v17 + 56))(v16, 1, 1, v71);
  sub_100140278(&qword_1008EB7D8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10002910C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricDetailViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100029184(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100140278(&qword_1008E5C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000292B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100029338(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v34 = a6;
  v33 = a5;
  v32 = a4;
  v37 = a2;
  v38 = a3;
  v35 = a7;
  v36 = a9;
  v11 = type metadata accessor for DateInterval();
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008EB7D8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v31 - v19;
  (*(v16 + 16))(&v31 - v19, a1, v15, v18);
  (*(v12 + 16))(v14, a8, v11);
  v21 = (*(v16 + 80) + 33) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v12 + 80) + v22 + 8) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v32;
  *(v25 + 24) = v33;
  *(v25 + 32) = v34 & 1;
  (*(v16 + 32))(v25 + v21, v20, v15);
  v26 = v35;
  *(v25 + v22) = v35;
  (*(v12 + 32))(v25 + v23, v14, v31);
  *(v25 + v24) = v36;
  v27 = objc_allocWithZone(HKSampleQuery);
  aBlock[4] = sub_1003CEDE4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DEE0;
  aBlock[3] = &unk_100856220;
  v28 = _Block_copy(aBlock);
  v29 = v26;
  v30 = [v27 initWithSampleType:v37 predicate:v38 limit:0 sortDescriptors:0 resultsHandler:v28];
  _Block_release(v28);

  [*&v29[OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_healthStore] executeQuery:v30];
}

uint64_t sub_100029660()
{
  v1 = sub_100140278(&qword_1008EB7D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000297D4()
{

  return _swift_task_switch(sub_1000298EC, 0, 0);
}

uint64_t sub_1000298EC()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000299A0()
{

  return _swift_task_switch(sub_100029A9C, 0, 0);
}

uint64_t sub_100029A9C()
{
  v48 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  sub_10001B104(v2, v1, &qword_1008DC408);
  if (os_log_type_enabled(v4, v3))
  {
    v5 = *(v0 + 121);
    v6 = *(v0 + 120);
    v7 = v4;
    v8 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v8 = 136315906;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10000AFDC(v9, v10, &v45);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = sub_10002A094(v6);
    v14 = sub_10000AFDC(v12, v13, &v45);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    v15 = *(v0 + 56);
    if (v5)
    {
      v16 = 0xE90000000000006BLL;
      v17 = 0x6565772073696874;
      if (v15 != 1)
      {
        v17 = 0x6E6F6D2073696874;
        v16 = 0xEA00000000006874;
      }

      if (v15)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x7961646F74;
      }

      if (v15)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0xE500000000000000;
      }
    }

    else
    {
      v46 = 0x2072616579;
      v47 = 0xE500000000000000;
      *(v0 + 32) = v15;
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v18 = v46;
      v19 = v47;
    }

    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    v23 = sub_10000AFDC(v18, v19, &v45);

    *(v8 + 24) = v23;
    *(v8 + 32) = 2080;
    sub_10001B104(v21, v22, &qword_1008DC408);
    v24 = type metadata accessor for MetricDetailViewModel();
    if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
    {
      sub_10000EA04(*(v0 + 80), &qword_1008DC408);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v27 = *(v0 + 120);
      v28 = 1;
      if (((1 << v27) & 0x5DDBB8E070) != 0)
      {
        v28 = 0;
      }

      else if (((1 << v27) & 0x2224471F80) == 0)
      {
        v28 = *(v0 + 121) ^ 1;
      }

      v29 = *(v0 + 80);
      v25 = sub_10002A4EC(v28 & 1);
      v26 = v30;
      sub_1000292B4(v29, type metadata accessor for MetricDetailViewModel);
    }

    v31 = *(v0 + 88);
    *(v0 + 16) = v25;
    *(v0 + 24) = v26;
    sub_100140278(&qword_1008DC8F8);
    v32 = Optional.description.getter();
    v34 = v33;
    sub_10000EA04(v31, &qword_1008DC408);

    v35 = sub_10000AFDC(v32, v34, &v45);

    *(v8 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v7, v3, "%s fetchData returned for %s in %s: %s", v8, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_10000EA04(*(v0 + 88), &qword_1008DC408);
  }

  v36 = *(v0 + 123);
  v37 = *(v0 + 64);
  v38 = *(v0 + 122);
  v39 = *(v0 + 120);
  v40 = *(v0 + 40);
  v41 = *(v0 + 48);
  v42 = swift_task_alloc();
  *(v42 + 16) = v41;
  *(v42 + 24) = v38;
  *(v42 + 32) = v37;
  *(v42 + 40) = v36 & 1;
  *(v42 + 48) = v40;
  *(v42 + 56) = v39;
  UnfairLock.acquire<A>(_:)();

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100029F64(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100140278(&qword_1008E5C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10002A094(char a1)
{
  result = 0x54535F4C41544F54;
  switch(a1)
  {
    case 1:
      return 0x49445F4C41544F54;
    case 2:
      return 0x55505F4C41544F54;
    case 3:
    case 32:
      v5 = 9;
      return v5 | 0xD000000000000010;
    case 4:
      return 0xD000000000000010;
    case 5:
      v4 = 1313756498;
      goto LABEL_17;
    case 6:
    case 15:
    case 25:
    case 27:
      return 0xD000000000000011;
    case 7:
      v3 = 1313756498;
      goto LABEL_36;
    case 8:
      v7 = 1313756498;
      return v7 | 0x5F474E4900000000;
    case 9:
      v6 = 1313756498;
      return v6 | 0x5F474E4900000000;
    case 10:
      v5 = 11;
      return v5 | 0xD000000000000010;
    case 11:
      return 0xD00000000000001CLL;
    case 12:
      v5 = 5;
      return v5 | 0xD000000000000010;
    case 13:
      return 0xD000000000000010;
    case 14:
      v4 = 1279482179;
      goto LABEL_17;
    case 16:
      v3 = 1279482179;
      goto LABEL_36;
    case 17:
      v7 = 1279482179;
      return v7 | 0x5F474E4900000000;
    case 18:
      v6 = 1279482179;
      return v6 | 0x5F474E4900000000;
    case 19:
      return 0x445F474E494B4948;
    case 20:
      return 0x545F474E494B4948;
    case 21:
      return 0xD000000000000010;
    case 22:
      return 0x505F474E494B4948;
    case 23:
      return 0xD000000000000010;
    case 24:
      v4 = 1263288663;
LABEL_17:
      result = v4 | 0x5F474E4900000000;
      break;
    case 26:
      v3 = 1263288663;
LABEL_36:
      result = v3 | 0x5F474E4900000000;
      break;
    case 28:
    case 29:
      result = 0x474E494D4D495753;
      break;
    case 30:
    case 36:
      result = 0xD000000000000018;
      break;
    case 31:
    case 33:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000017;
      break;
    case 35:
    case 37:
    case 38:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002A4EC(char a1)
{
  if (a1)
  {
    v9 = 0x3A65676172657661;
    v2 = [v1[1] description];
  }

  else
  {
    v9 = 0x203A6C61746F74;
    v2 = [*v1 description];
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return v9;
}

uint64_t sub_10002A5B0(void *a1, int a2, Swift::UInt a3, int a4, uint64_t a5, int a6)
{
  v43 = a5;
  v36 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v39 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100140278(&qword_1008DC408);
  __chkstk_darwin(v13 - 8);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v31[-v17];
  v19 = type metadata accessor for MetricDetailViewModel();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v33 = &v31[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v32 = a4;
  v34 = a2;
  v35 = a3;
  sub_10002AC1C(0, a2, a3, a4 & 1);
  swift_endAccess();
  sub_10001B104(v43, v18, &qword_1008DC408);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_10000EA04(v18, &qword_1008DC408);
  }

  v23 = v33;
  sub_10002AFD4(v18, v33, type metadata accessor for MetricDetailViewModel);
  sub_10002910C(v23, v15);
  (*(v20 + 56))(v15, 0, 1, v19);
  swift_beginAccess();
  sub_10002B0A4(v15, v34, v35, v32 & 1);
  swift_endAccess();
  sub_1000059F8(0, &qword_1008E3FD0);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v36;
  aBlock[4] = sub_1003CF084;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100856298;
  v26 = _Block_copy(aBlock);
  v27 = a1;
  v28 = v37;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10002BA84(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  v29 = v39;
  v30 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v41 + 8))(v29, v30);
  (*(v38 + 8))(v28, v40);
  sub_1000292B4(v23, type metadata accessor for MetricDetailViewModel);
}

uint64_t sub_10002AB14()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_10002AB7C(unsigned __int8 a1, Swift::UInt a2, char a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if ((a3 & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();

  return sub_10002ACFC(a1, a2, a3 & 1, v6);
}

unint64_t sub_10002AC1C(uint64_t a1, unsigned __int8 a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = sub_100490F24(a1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    *v4 = v16;
  }

  else
  {
    result = sub_10002AB7C(a2, a3, a4 & 1);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v5;
      if (!v14)
      {
        sub_10049496C();
        v15 = v17;
      }

      result = sub_10002ADD4(v13, v15);
      *v5 = v15;
    }
  }

  return result;
}

unint64_t sub_10002ACFC(unsigned __int8 a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      if (*v9 == a1)
      {
        v10 = *(v9 + 1);
        if (v9[16] == 1)
        {
          if (v10)
          {
            if (v10 == 1)
            {
              if ((a3 & (a2 == 1)) != 0)
              {
                return result;
              }
            }

            else if ((a3 & (a2 > 1)) != 0)
            {
              return result;
            }
          }

          else if ((a3 & (a2 == 0)) != 0)
          {
            return result;
          }
        }

        else if ((a3 & 1) == 0 && v10 == a2)
        {
          return result;
        }
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int sub_10002ADD4(Swift::Int result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v27 = v4;
    do
    {
      v9 = v8;
      v10 = 24 * v6;
      v11 = v2;
      v12 = (*(v2 + 48) + 24 * v6);
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = v12[16];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v13);
      if ((v15 & 1) == 0)
      {
        Hasher._combine(_:)(3uLL);
      }

      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v16 = result & v7;
      v8 = v9;
      if (v3 >= v9)
      {
        v4 = v27;
        v2 = v11;
        if (v16 < v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v27;
        v2 = v11;
        if (v16 >= v9)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v16)
      {
LABEL_12:
        v17 = *(v2 + 48);
        v18 = v17 + 24 * v3;
        v19 = (v17 + v10);
        if (24 * v3 < v10 || v18 >= v19 + 24 || v3 != v6)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(v2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(v2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v26;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_10002AFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B0A4(uint64_t a1, char a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = sub_100140278(&qword_1008DC408);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for MetricDetailViewModel();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v13, v15) == 1)
  {
    sub_10000EA04(a1, &qword_1008DC408);
    v18 = sub_10002AB7C(a2, a3, a4 & 1);
    if (v19)
    {
      v20 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v4;
      v26 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1004946FC();
        v22 = v26;
      }

      sub_10002B380(*(v22 + 56) + *(v14 + 72) * v20, v12, type metadata accessor for MetricDetailViewModel);
      sub_10056DEF4(v20, v22);
      *v5 = v22;
      (*(v14 + 56))(v12, 0, 1, v13);
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    return sub_10000EA04(v12, &qword_1008DC408);
  }

  else
  {
    sub_10002B380(a1, v17, type metadata accessor for MetricDetailViewModel);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    result = sub_10002B3E8(v17, a2, a3, a4 & 1, v23);
    *v4 = v26;
  }

  return result;
}

uint64_t sub_10002B318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B3E8(uint64_t a1, char a2, Swift::UInt a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_10002AB7C(a2, a3, a4 & 1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a5 & 1) != 0)
  {
LABEL_7:
    v20 = *v6;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for MetricDetailViewModel();
      return sub_1004A9090(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for MetricDetailViewModel);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a5 & 1) == 0)
  {
    sub_1004946FC();
    goto LABEL_7;
  }

  sub_10002B568(v17, a5 & 1);
  v24 = sub_10002AB7C(a2, a3, a4 & 1);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v6;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_10002B908(v14, a2, a3, a4 & 1, a1, v20);
}

uint64_t sub_10002B568(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for MetricDetailViewModel();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100140278(&qword_1008EB7C8);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v25 = v22 | (v10 << 6);
      v26 = *(v7 + 56);
      v27 = (*(v7 + 48) + 24 * v25);
      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = v27[16];
      v31 = v26 + *(v40 + 72) * v25;
      v42 = *(v40 + 72);
      if (v41)
      {
        sub_10002B9C4(v31, v43, type metadata accessor for MetricDetailViewModel);
      }

      else
      {
        sub_1004A9424(v31, v43, type metadata accessor for MetricDetailViewModel);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v28);
      if ((v30 & 1) == 0)
      {
        Hasher._combine(_:)(3uLL);
      }

      Hasher._combine(_:)(v29);
      result = Hasher._finalize()();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v17) >> 6;
        while (++v19 != v33 || (v32 & 1) == 0)
        {
          v34 = v19 == v33;
          if (v19 == v33)
          {
            v19 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v19);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v9 + 48) + 24 * v20;
      *v21 = v28;
      *(v21 + 8) = v29;
      *(v21 + 16) = v30;
      result = sub_10002B9C4(v43, *(v9 + 56) + v42 * v20, type metadata accessor for MetricDetailViewModel);
      ++*(v9 + 16);
      v7 = v39;
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_16;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v3 = v9;
  return result;
}

uint64_t sub_10002B908(unint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a6[6] + 24 * a1;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4 & 1;
  v10 = a6[7];
  v11 = type metadata accessor for MetricDetailViewModel();
  result = sub_10002B9C4(a5, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for MetricDetailViewModel);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

uint64_t sub_10002B9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002BA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002BA84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002BACC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002BBC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002BCC0()
{
  v44 = v0;
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 105);
    v4 = *(v0 + 104);
    log = v2;
    v5 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10000AFDC(v6, v7, &v41);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_10002A094(v4);
    v11 = sub_10000AFDC(v9, v10, &v41);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2080;
    v12 = *(v0 + 40);
    if (v3)
    {
      v13 = 0xE90000000000006BLL;
      v14 = 0x6565772073696874;
      if (v12 != 1)
      {
        v14 = 0x6E6F6D2073696874;
        v13 = 0xEA00000000006874;
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x7961646F74;
      }

      if (v12)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0xE500000000000000;
      }
    }

    else
    {
      v42 = 0x2072616579;
      v43 = 0xE500000000000000;
      *(v0 + 24) = v12;
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v15 = v42;
      v16 = v43;
    }

    v18 = sub_10000AFDC(v15, v16, &v41);

    *(v5 + 24) = v18;
    _os_log_impl(&_mh_execute_header, log, v1, "%s fetchData for %s in %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  v19 = *(v0 + 105);
  v21 = *(v0 + 40);
  v20 = *(v0 + 48);
  v22 = *(v0 + 104);
  *(v0 + 16) = 0;
  v23 = swift_task_alloc();
  *(v23 + 16) = v0 + 16;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = v21;
  *(v23 + 48) = v19 & 1;
  UnfairLock.acquire<A>(_:)();

  v24 = *(v0 + 16);
  *(v0 + 72) = v24;
  if (v24)
  {

    v25 = swift_task_alloc();
    *(v0 + 80) = v25;
    v26 = sub_100140278(&qword_1008DC408);
    *v25 = v0;
    v27 = sub_1003C5A74;
  }

  else
  {
    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = *(v0 + 105);
    v32 = *(v0 + 40);
    v31 = *(v0 + 48);
    v33 = *(v0 + 104);
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = v33;
    *(v35 + 40) = v31;
    *(v35 + 48) = v32;
    v30 &= 1u;
    *(v35 + 56) = v30;
    *(v35 + 64) = v33;
    *(v35 + 72) = v32;
    *(v35 + 80) = v30;
    *(v35 + 88) = v29;
    v36 = v31;
    v24 = sub_10026E498(0, 0, v28, &unk_1006ED820, v35);
    *(v0 + 88) = v24;
    v37 = swift_task_alloc();
    *(v37 + 16) = v36;
    *(v37 + 24) = v33;
    *(v37 + 32) = v32;
    *(v37 + 40) = v30;
    *(v37 + 48) = v24;
    UnfairLock.acquire<A>(_:)();

    v25 = swift_task_alloc();
    *(v0 + 96) = v25;
    v26 = sub_100140278(&qword_1008DC408);
    *v25 = v0;
    v27 = sub_10002C1C0;
  }

  v25[1] = v27;
  v38 = *(v0 + 32);

  return Task<>.value.getter(v38, v24, v26);
}

uint64_t sub_10002C180()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10002C1C0()
{

  return _swift_task_switch(sub_10002C2BC, 0, 0);
}

uint64_t sub_10002C2BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for ActivitySharingHighlight()
{
  result = qword_1008E5458;
  if (!qword_1008E5458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002C384(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for Date();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10002C49C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void *sub_10002C5A4(void *a1)
{
  v2 = v1;
  v35 = *v1;
  v4 = sub_100140278(&qword_1008E9FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v34 = type metadata accessor for ActivitySharingHighlight();
  v30 = *(v34 - 8);
  v7 = __chkstk_darwin(v34);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = &v27 - v9;
  v36 = a1;
  v10 = [a1 snapshots];
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = v10;
  sub_1000059F8(0, &qword_1008E1750);
  sub_1000059F8(0, &qword_1008E9FF8);
  sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v12;
  sub_10002CBFC(v13);
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = 0;
    v31 = v15 & 0xFFFFFFFFFFFFFF8;
    v32 = v15 & 0xC000000000000001;
    v18 = (v30 + 48);
    v19 = _swiftEmptyArrayStorage;
    v28 = v2;
    while (1)
    {
      if (v32)
      {
        v20 = v15;
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v31 + 16))
        {
          goto LABEL_20;
        }

        v20 = v15;
        v21 = *(v15 + 8 * v17 + 32);
      }

      v15 = v21;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v37 = v21;
      sub_10002CDF4(&v37, v36, v2, v35, v6);

      if ((*v18)(v6, 1, v34) == 1)
      {
        sub_10000EA04(v6, &qword_1008E9FF0);
      }

      else
      {
        v23 = v29;
        sub_100042910(v6, v29);
        sub_100042910(v23, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100043614(0, v19[2] + 1, 1, v19);
        }

        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          v19 = sub_100043614(v24 > 1, v25 + 1, 1, v19);
        }

        v19[2] = v25 + 1;
        sub_100042910(v33, v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25);
        v2 = v28;
      }

      v15 = v20;
      ++v17;
      if (v22 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_23:

  return v19;
}

void *sub_10002C98C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000059F8(0, &qword_1008E53D0);
    sub_10001D4A8(&qword_1008EE6C0, &qword_1008E53D0);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_100022DEC();
      return _swiftEmptyArrayStorage;
    }

    while (1)
    {
      v15 = sub_100021744(v14);
      v16 = sub_10002C5A4(v14);
      sub_10002D688(v16);
      v17 = sub_10002D6C4(v14);
      v18 = v15;
      sub_10002D688(v17);

      result = sub_10002D688(v15);
      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000059F8(0, &qword_1008E53D0);
        swift_dynamicCast();
        v14 = v18;
        v12 = v5;
        v13 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_10002CBFC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaDictionary.makeIterator()();
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v1 = v2 | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = a1 + 64;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 64);
  }

  v9 = 0;
  v10 = (v4 + 64) >> 6;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (swift_unknownObjectRelease(), sub_1000059F8(0, &qword_1008E9FF8), swift_dynamicCast(), v15 = v16, v13 = v9, v14 = v5, !v16))
    {
LABEL_21:
      sub_100022DEC();
      return;
    }

LABEL_19:
    if (ASAllGoalsMetForSnapshot())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v9 = v13;
    v5 = v14;
  }

  v11 = v9;
  v12 = v5;
  v13 = v9;
  if (v5)
  {
LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_21;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_10002CDF4@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v58 = a3;
  v59 = a2;
  v66 = a5;
  v7 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - v8;
  v10 = type metadata accessor for Date();
  v65 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateComponents();
  v61 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar();
  v63 = *(v16 - 8);
  v64 = v16;
  __chkstk_darwin(v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = [*a1 activitySummary];
  if (v20)
  {
    v21 = v20;
    v60 = v5;
    v22 = [objc_opt_self() hk_gregorianCalendar];
    static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

    [v19 snapshotIndex];
    v23 = _HKActivityCacheDateComponentsFromCacheIndex();
    if (v23)
    {
      v24 = v23;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      Calendar.date(from:)();
      v25 = v65;
      if ((v65[6].isa)(v9, 1, v10) != 1)
      {
        v49 = v12;
        v57 = v12;
        v50 = v21;
        isa = v25[4].isa;
        v65 = v25 + 4;
        isa(v49, v9, v10);
        v62 = v50;
        v52 = [v19 UUID];
        v53 = type metadata accessor for ActivitySharingHighlight();
        v54 = v66;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v61 + 8))(v15, v13);
        (*(v63 + 8))(v18, v64);
        isa((v54 + v53[6]), v57, v10);
        v55 = v59;
        v56 = *(v58 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType);
        *v54 = v50;
        *(v54 + 8) = 1;
        *(v54 + v53[7]) = v55;
        *(v54 + v53[8]) = v56;
        (*(*(v53 - 1) + 56))(v54, 0, 1, v53);
        return v55;
      }

      (*(v61 + 8))(v15, v13);
      sub_10000EA04(v9, &unk_1008F73A0);
    }

    v26 = static os_log_type_t.error.getter();
    v27 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v26))
    {
      v65 = v27;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67 = v30;
      *v28 = 136315394;
      v31 = _typeName(_:qualified:)();
      v33 = sub_10000AFDC(v31, v32, &v67);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2112;
      *(v28 + 14) = v19;
      *v29 = v19;
      v34 = v19;
      v35 = v65;
      _os_log_impl(&_mh_execute_header, v65, v26, "%s failed to create snapshot date for %@", v28, 0x16u);
      sub_10000EA04(v29, &unk_1008DB8B0);

      sub_100005A40(v30);
    }

    else
    {
    }

    (*(v63 + 8))(v18, v64);
    v48 = type metadata accessor for ActivitySharingHighlight();
    return (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  }

  else
  {
    v36 = static os_log_type_t.error.getter();
    v37 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v36))
    {
      v38 = v37;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v67 = v41;
      *v39 = 136315394;
      v42 = _typeName(_:qualified:)();
      v44 = sub_10000AFDC(v42, v43, &v67);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v19;
      *v40 = v19;
      v45 = v19;
      _os_log_impl(&_mh_execute_header, v38, v36, "%s failed to create activity summary for %@", v39, 0x16u);
      sub_10000EA04(v40, &unk_1008DB8B0);

      sub_100005A40(v41);
    }

    v46 = type metadata accessor for ActivitySharingHighlight();
    return (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  }
}

uint64_t sub_10002D52C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_10001AA8C(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10002D6C4(void *a1)
{
  v37 = *v1;
  v3 = sub_100140278(&qword_1008E9FF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v36 = type metadata accessor for ActivitySharingHighlight();
  v33 = *(v36 - 8);
  v6 = __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v30 - v8;
  v38 = a1;
  v9 = [a1 friendWorkouts];
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = v9;
    sub_1000059F8(0, &qword_1008E1750);
    sub_100140278(&qword_1008DE948);
    sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750);
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = _swiftEmptyArrayStorage;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    if (v15)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        do
        {
LABEL_10:
          v15 &= v15 - 1;

          sub_10002DB30(v19);
        }

        while (v15);
        continue;
      }
    }

    v17 = v40;
    if (v40 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v21 = 0;
      v34 = v17 & 0xC000000000000001;
      v22 = (v33 + 48);
      v10 = _swiftEmptyArrayStorage;
      v31 = i;
      while (1)
      {
        if (v34)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v23 = *(v17 + 8 * v21 + 32);
        }

        v24 = v23;
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v40 = v23;
        sub_10002E200(&v40, v38, v39, v5);

        if ((*v22)(v5, 1, v36) == 1)
        {
          sub_10000EA04(v5, &qword_1008E9FF0);
        }

        else
        {
          v26 = v32;
          sub_100042910(v5, v32);
          sub_100042910(v26, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100043614(0, v10[2] + 1, 1, v10);
          }

          v28 = v10[2];
          v27 = v10[3];
          if (v28 >= v27 >> 1)
          {
            v10 = sub_100043614(v27 > 1, v28 + 1, 1, v10);
          }

          v10[2] = v28 + 1;
          sub_100042910(v35, v10 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28);
          i = v31;
        }

        ++v21;
        if (v25 == i)
        {
          goto LABEL_33;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_33:
  }

  return v10;
}

uint64_t sub_10002DB30(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_10002DF70();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_10002DF78(&v34, (v3 + 8 * v13 + 32), v14, v8, &qword_1008DE938, _HKFitnessFriendWorkout_ptr, &qword_1008DE940);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_100022DEC();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000059F8(0, &qword_1008DE938);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_1000059F8(0, &qword_1008DE938);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_10002DED0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void *sub_10002DF78(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v14 = 0;
    v23 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v8 + 56);
    v16 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000059F8(0, a5);
  sub_10002E1BC(a7, a5);
  result = Set.Iterator.init(_cocoa:)();
  v8 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v16)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v17 = 0;
  v27 = v13;
  a5 = ((v13 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000059F8(0, v28);
      swift_dynamicCast();
      result = v30;
      v16 = a3;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v14;
    if (!v15)
    {
      break;
    }

    v20 = v14;
LABEL_13:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(v8 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v16)
    {
      v17 = v16;
      goto LABEL_30;
    }

    ++a2;
    v17 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v14 = v20;
      goto LABEL_13;
    }
  }

  v15 = 0;
  if (a5 <= (v14 + 1))
  {
    v26 = (v14 + 1);
  }

  else
  {
    v26 = a5;
  }

  v14 = v26 - 1;
LABEL_30:
  v13 = v27;
LABEL_32:
  *v10 = v8;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return v17;
}

uint64_t sub_10002E1BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000059F8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10002E200@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 hkWorkoutFromFriendWorkout];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    v11 = [v7 UUID];
    v12 = type metadata accessor for ActivitySharingHighlight();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = [v7 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(a3 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType);
    *a4 = v9;
    *(a4 + 8) = 2;
    *(a4 + *(v12 + 28)) = a2;
    *(a4 + *(v12 + 32)) = v14;
    (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
    return a2;
  }

  else
  {
    v16 = static os_log_type_t.error.getter();
    v17 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v16))
    {
      log = v17;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v18 = 136315394;
      v21 = _typeName(_:qualified:)();
      v23 = sub_10000AFDC(v21, v22, &v27);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v7;
      *v19 = v7;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, log, v16, "%s failed to create workout for %@", v18, 0x16u);
      sub_10000EA04(v19, &unk_1008DB8B0);

      sub_100005A40(v20);
    }

    v25 = type metadata accessor for ActivitySharingHighlight();
    return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
  }
}

uint64_t sub_10002E4C0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ActivitySharingHighlight();
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_10002E710(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_10002E870(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_10002E7C4(v12, v24, type metadata accessor for ActivitySharingHighlight);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002E82C(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_10002E82C(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_10002E7C4(v24, v14 + v15 + v20 * v16, type metadata accessor for ActivitySharingHighlight);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_10002E870(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_10002E710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingHighlight();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_10002E82C(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE558, &unk_1006D8F80, type metadata accessor for ActivitySharingHighlight);
  *v3 = result;
  return result;
}

uint64_t sub_10002E870(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingHighlight();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10002E8E0(void **a1)
{
  v2 = *(type metadata accessor for ActivitySharingHighlight() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002E8CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100042D38(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_10002E9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ActivitySharingHighlight();
  v9 = __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = *a4;
    v29 = v19;
    v23 = v35 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v22;
    v25 = v20;
    while (1)
    {
      sub_10002E710(v23, v18);
      sub_10002E710(v25, v14);
      v26 = Date.isAfter(date:)();
      sub_10002E870(v14);
      result = sub_10002E870(v18);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_100042910(v23, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100042910(v11, v25);
      v25 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002EBB8()
{
  sub_10001CC90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002EC18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002EC58()
{

  return _swift_deallocObject(v0, 232, 7);
}

uint64_t sub_10002ED40()
{
  v1 = type metadata accessor for MetricDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_100140278(&qword_1008DC2A0);

  v8 = (v0 + v3 + v1[11]);
  v9 = type metadata accessor for MetricChartData();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v7(v8 + *(v9 + 20), v6);
  }

  sub_100140278(&qword_1008DC2A8);

  v10 = (v4 + v1[13]);
  v11 = type metadata accessor for MetricFormattingHelper();
  v12 = *(v11 + 20);
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);

  return _swift_deallocObject(v0, v3 + v15, v2 | 7);
}

uint64_t sub_10002EFE4()
{
  v1 = type metadata accessor for AwardsCardView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[5];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for AwardsCard();
  sub_10001D4F8(*(v7 + v9[5]), *(v7 + v9[5] + 8), *(v7 + v9[5] + 16));

  v10 = v5 + v1[7];
  if (*(v10 + 24))
  {
    sub_100005A40(v10);
  }

  v11 = v5 + v1[9];
  v12 = type metadata accessor for GeometryProxy();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  sub_100140278(&qword_1008DC6B0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F26C()
{
  v1 = type metadata accessor for DashboardCardView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100005A40(v5 + v1[5]);
  v7 = v1[6];
  v8 = type metadata accessor for AppComposer();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v5 + v1[7];
  if (*(v9 + 24))
  {
    sub_100005A40(v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F3F0()
{
  sub_100005A40(v0 + 16);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002F430()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F470()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002F4B8()
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  v2 = *(*(OnboardingNavigationView - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(OnboardingNavigationView - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3))
  {
  }

  if (*(v5 + 16))
  {
  }

  v6 = *(OnboardingNavigationView + 36);
  sub_100140278(&qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F610()
{
  v1 = type metadata accessor for CardConfigurationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100140278(&qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F7F8(uint64_t *a1)
{
  v2 = sub_100140278(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10002F87C()
{
  v1 = type metadata accessor for SmallAwardsCardView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v15 = v0;
  v4 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_100005A40(v4 + v1[5]);

  v6 = v4 + v1[11];
  if (*(v6 + 24))
  {
    sub_100005A40(v6);
  }

  v7 = v4 + v1[12];

  v8 = *(sub_100140278(&qword_1008DC7F0) + 32);
  v9 = type metadata accessor for GeometryProxy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v12 = v4 + v1[13];
  if (!v11(v12, 1, v9))
  {
    (*(v10 + 8))(v12, v9);
  }

  sub_100140278(&qword_1008DC6B0);

  return _swift_deallocObject(v15, v3 + v14, v2 | 7);
}

uint64_t sub_10002FB3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002FB7C()
{
  v1 = (type metadata accessor for MindfulnessItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[12];
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100140278(&qword_1008E09C0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002FCB8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002FD00()
{
  sub_10021D470(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10002FD3C()
{
  v1 = type metadata accessor for MetricCardBarChartView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v5 + v1[9]);

  v8 = type metadata accessor for MetricFormattingHelper();
  v9 = *(v8 + 20);
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  sub_100005A40(v5 + v1[10]);
  v11 = v1[11];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[12];
  v14 = type metadata accessor for Calendar.Component();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[13];
  v16 = type metadata accessor for Date.FormatStyle();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  v17 = v1[15];
  v18 = type metadata accessor for AxisMarkValues();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002FFE4()
{
  v1 = (type metadata accessor for ScheduleDayRowView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Calendar();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000300DC()
{
  v1 = type metadata accessor for MetricDetailChartView();
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v24 = v0;
  v22 = (v2 + 16) & ~v2;
  v3 = v0 + v22;
  v4 = (v0 + v22 + v1[6]);

  v5 = type metadata accessor for MetricDetailViewModel();
  v6 = *(v5 + 36);
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v5 + 44);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v4 + v9, v10);
  v13 = (v3 + v1[7]);

  v14 = type metadata accessor for MetricFormattingHelper();
  v15 = *(v14 + 20);
  v16 = type metadata accessor for AttributedString();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);

  v17 = v3 + v1[8];

  v18 = (v17 + *(sub_100140278(&qword_1008DC470) + 32));
  v19 = type metadata accessor for MetricChartData();
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {

    v12(v18 + *(v19 + 20), v10);
  }

  v20 = (v3 + v1[9]);
  if (!(*(v11 + 48))(v20, 1, v10))
  {
    v12(v20, v10);
  }

  sub_100140278(&qword_1008E33E8);

  return _swift_deallocObject(v24, v22 + v23, v2 | 7);
}

uint64_t sub_100030438()
{
  v1 = type metadata accessor for CardTypeConfigurationRoomView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[6];
  if (*(v7 + 24))
  {
    sub_100005A40(v7);
  }

  v8 = v1[15];
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v1[16], v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100030618()
{
  v1 = type metadata accessor for ActivitySharingReplyEditView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_100262D5C();
  v6 = v1[9];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[10];
  v10 = type metadata accessor for Reply();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[11];
  v12 = type metadata accessor for ReplyLayoutValues();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100030808()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100030888()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000308D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030910()
{
  v1 = type metadata accessor for LargeAwardsCardView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v15 = v0;
  v4 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_100005A40(v4 + v1[5]);

  v6 = v4 + v1[11];
  if (*(v6 + 24))
  {
    sub_100005A40(v6);
  }

  v7 = v4 + v1[12];

  v8 = *(sub_100140278(&qword_1008DC7F0) + 32);
  v9 = type metadata accessor for GeometryProxy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v12 = v4 + v1[16];
  if (!v11(v12, 1, v9))
  {
    (*(v10 + 8))(v12, v9);
  }

  sub_100140278(&qword_1008DC6B0);

  return _swift_deallocObject(v15, v3 + v14, v2 | 7);
}

uint64_t sub_100030BD0()
{
  v1 = (type metadata accessor for MetricFamilyRoomView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[9]);

  v6 = type metadata accessor for MetricFormattingHelper();
  v7 = *(v6 + 20);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100030D84()
{
  v1 = (type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = type metadata accessor for ActivitySharingHighlight();
  v7 = v6[5];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v6[6];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  v11 = v1[12];
  v12 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100030F54()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100030FCC()
{
  v1 = (type metadata accessor for QuickStartWorkoutCardView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  started = type metadata accessor for QuickStartWorkoutCard();
  sub_10001D4F8(*(v0 + v3 + *(started + 20)), *(v0 + v3 + *(started + 20) + 8), *(v0 + v3 + *(started + 20) + 16));

  v7 = v0 + v3 + v1[7];
  if (*(v7 + 24))
  {
    sub_100005A40(v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000310F0()
{
  v1 = *(type metadata accessor for ActivitySharingHighlightViewWrapper(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for ActivitySharingHighlight();
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v5[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = type metadata accessor for ActivitySharingHighlightViewModel();
  v11 = v10[10];
  v12 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000312C4()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100031324()
{
  v1 = type metadata accessor for MetricFamilyChartView();
  v2 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  v5 = (v0 + v3 + v1[6]);

  v6 = type metadata accessor for MetricDetailViewModel();
  v7 = *(v6 + 36);
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v6 + 44);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = (v4 + v1[8]);

  v13 = type metadata accessor for MetricFormattingHelper();
  v14 = *(v13 + 20);
  v15 = type metadata accessor for AttributedString();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);

  return _swift_deallocObject(v0, v3 + v17, v2 | 7);
}

uint64_t sub_100031540()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031580()
{
  v1 = *(type metadata accessor for ActivitySharingFriendListItemView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(v1 + 64);
  v4 = v0 + v3;

  v5 = type metadata accessor for ActivitySharingFriendListItem();
  v6 = v5[6];
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v9(v0 + v3 + v5[7], v7);
  v10 = v5[8];
  if (!(*(v8 + 48))(v0 + v3 + v10, 1, v7))
  {
    v9(v4 + v10, v7);
  }

  return _swift_deallocObject(v0, v3 + v12, v2 | 7);
}

uint64_t sub_10003172C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100031774()
{
  v1 = *(type metadata accessor for WorkoutReportTrackIssueView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100140278(&qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100031898()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000318E0()
{
  v1 = *(type metadata accessor for WorkoutChart() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for WorkoutChartViewModel(0);

  v6 = v5[10];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v5[11], v7);

  return _swift_deallocObject(v0, v3 + v10, v2 | 7);
}

uint64_t sub_100031AB4()
{
  v1 = (type metadata accessor for MetricCardLineChartView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[9]);

  v6 = type metadata accessor for MetricFormattingHelper();
  v7 = *(v6 + 20);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v1[11];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100031C18()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031C68()
{
  v1 = (type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for ActivitySharingSettings();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100031D70()
{
  v1 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100031DF8()
{
  v1 = *(type metadata accessor for WorkoutChartView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for WorkoutChartViewModel(0);

  v6 = v5[10];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v5[11], v7);

  return _swift_deallocObject(v0, v3 + v10, v2 | 7);
}

uint64_t sub_100031FCC()
{
  View = type metadata accessor for FitnessPlusUpNextView();
  v2 = *(*(View - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(View - 8) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(View + 24);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  Card = type metadata accessor for FitnessPlusUpNextCard();
  sub_10001D4F8(*(v7 + Card[5]), *(v7 + Card[5] + 8), *(v7 + Card[5] + 16));
  if (*(v7 + Card[9]) >= 4uLL)
  {
  }

  sub_100005A40(v7 + Card[10]);
  sub_100005A40(v7 + Card[11]);
  v10 = v5 + *(View + 28);
  if (*(v10 + 24))
  {
    sub_100005A40(v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032198()
{
  v1 = type metadata accessor for ActivityRingsCardView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v4 + *(v1 + 24);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for ActivityRingsCard();
  sub_10001D4F8(*(v6 + v8[5]), *(v6 + v8[5] + 8), *(v6 + v8[5] + 16));

  v9 = v8[10];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v4 + *(v1 + 28);
  if (*(v12 + 24))
  {
    sub_100005A40(v12);
  }

  return _swift_deallocObject(v0, v3 + v14, v2 | 7);
}

uint64_t sub_1000323EC()
{
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v2 = *(*(DetailsStackedChartView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(DetailsStackedChartView - 1) + 64);
  v5 = v0 + v3;

  v6 = *(sub_100140278(&qword_1008F0320) + 32);
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v0 + v3 + v6, DataType);

  v8 = v0 + v3 + DetailsStackedChartView[11];
  v9 = type metadata accessor for DayIndex();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  sub_100140278(&qword_1008F0328);

  v10(v0 + v3 + DetailsStackedChartView[16], v9);
  sub_1000A73A4(*(v5 + DetailsStackedChartView[17]), *(v5 + DetailsStackedChartView[17] + 8));
  v11 = DetailsStackedChartView[18];
  sub_100140278(&qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = DetailsStackedChartView[19];
  sub_100140278(&qword_1008E66B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for LayoutDirection();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032710()
{
  v1 = (type metadata accessor for FitnessPlusStackItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = type metadata accessor for FitnessPlusStackViewModel();

  v6(v0 + v3 + *(v7 + 32), v5);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v0 + v3 + v1[11];
  v11 = type metadata accessor for AttributedString();
  (*(*(v11 - 8) + 8))(v10, v11);
  sub_100140278(&qword_1008E09C0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003291C()
{
  v1 = (type metadata accessor for WorkoutItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[12];
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100140278(&qword_1008E09C0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032A80()
{
  v1 = *(type metadata accessor for WorkoutChartableMetricsView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100140278(&qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032BA0()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_100032D14()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScheduleDayRowButton() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100032E2C()
{
  v1 = (type metadata accessor for LoadDetailsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[14];
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v5, DataType);
  sub_100140278(&qword_1008F33F0);

  sub_1000A73A4(*(v0 + v3 + v1[16]), *(v0 + v3 + v1[16] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032F9C()
{
  v1 = type metadata accessor for DataLinkCommand();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}