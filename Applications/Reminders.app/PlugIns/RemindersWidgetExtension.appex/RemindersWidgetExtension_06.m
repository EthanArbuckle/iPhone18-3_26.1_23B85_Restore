size_t sub_10009C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v161 = a3;
  v5 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v167 = *(v5 - 8);
  v168 = v5;
  v6 = *(v167 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v149 - v11;
  v13 = __chkstk_darwin(v10);
  v152 = &v149 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v149 - v16;
  v18 = __chkstk_darwin(v15);
  v154 = &v149 - v19;
  v20 = __chkstk_darwin(v18);
  v153 = &v149 - v21;
  v22 = __chkstk_darwin(v20);
  v155 = &v149 - v23;
  __chkstk_darwin(v22);
  v170 = &v149 - v24;
  v159 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  v25 = *(*(v159 - 8) + 64);
  v26 = __chkstk_darwin(v159);
  v158 = (&v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v157 = &v149 - v28;
  v165 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v29 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v31 = &v149 - v30;
  v32 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = (&v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v176 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v43 = &v149 - v42;
  __chkstk_darwin(v41);
  v164 = &v149 - v44;
  v177 = sub_1000C0AF8();
  v172 = *(v177 - 8);
  v45 = *(v172 + 64);
  v46 = __chkstk_darwin(v177);
  v160 = &v149 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v49 = __chkstk_darwin(v48);
  v175 = &v149 - v50;
  __chkstk_darwin(v49);
  v162 = &v149 - v52;
  v53 = *(a1 + 16);
  if (!v53)
  {
    goto LABEL_23;
  }

  v169 = v31;
  v163 = a1;
  v149 = v12;
  v151 = v9;
  v150 = v17;
  v54 = *(a2 + 16);
  v166 = v53;
  v156 = v51;
  if (v54)
  {
    v55 = *(v32 + 24);
    v56 = a2 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v173 = *(v33 + 72);
    v174 = v55;
    v57 = (v172 + 48);
    v178 = (v172 + 32);
    v171 = (v172 + 56);
    v58 = &_swiftEmptyArrayStorage;
    v59 = v176;
    v60 = v177;
    do
    {
      sub_10009DA8C(v56, v36, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      sub_1000082B4(v36 + v174, v59, &qword_1000EE300, &unk_1000C6370);
      v61 = *v57;
      if ((*v57)(v59, 1, v60) == 1)
      {
        v62 = v36[4];
        sub_100026D74(v36, v36[3]);
        v60 = v177;
        sub_1000C0DB8();
        v59 = v176;
        if (v61(v176, 1, v60) != 1)
        {
          sub_1000084C0(v59, &qword_1000EE300, &unk_1000C6370);
        }
      }

      else
      {
        (*v178)(v43, v59, v60);
        (*v171)(v43, 0, 1, v60);
      }

      sub_100099C44(v36, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      if (v61(v43, 1, v60) == 1)
      {
        sub_1000084C0(v43, &qword_1000EE300, &unk_1000C6370);
      }

      else
      {
        v63 = *v178;
        (*v178)(v175, v43, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1000224AC(0, v58[2] + 1, 1, v58);
        }

        v65 = v58[2];
        v64 = v58[3];
        if (v65 >= v64 >> 1)
        {
          v58 = sub_1000224AC(v64 > 1, v65 + 1, 1, v58);
        }

        v58[2] = v65 + 1;
        v66 = v58 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v65;
        v60 = v177;
        v63(v66, v175, v177);
        v59 = v176;
      }

      v56 += v173;
      --v54;
    }

    while (v54);
  }

  else
  {
    v58 = &_swiftEmptyArrayStorage;
    v60 = v177;
  }

  v67 = v164;
  sub_100098D50(v58, v164);

  v68 = v172;
  v69 = (*(v172 + 48))(v67, 1, v60);
  a1 = v163;
  if (v69 == 1)
  {
    sub_1000084C0(v67, &qword_1000EE300, &unk_1000C6370);
LABEL_23:

    return a1;
  }

  v70 = v68 + 4;
  v71 = v162;
  v178 = v68[4];
  (v178)(v162, v67, v60);
  v72 = v156;
  sub_1000C0A48();
  v73 = v161;
  v74 = sub_1000C0A88();
  v75 = v68[1];
  v75(v72, v60);
  if ((v74 & 1) == 0)
  {
    v75(v71, v60);
    goto LABEL_23;
  }

  v175 = v75;
  v176 = (v68 + 1);
  v174 = sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
  v76 = sub_1000C25D8();
  v79 = v68[2];
  v78 = (v68 + 2);
  v77 = v79;
  v173 = v79;
  v80 = v160;
  if (v76)
  {
    v81 = v160;
    v82 = v71;
  }

  else
  {
    v81 = v160;
    v82 = v73;
  }

  v77(v81, v82, v60);
  v84 = v169;
  v85 = v156;
  sub_1000C0A48();
  if ((sub_1000C25E8() & 1) == 0)
  {
    goto LABEL_68;
  }

  v86 = v157;
  v172 = v78;
  v173(v157, v80, v60);
  v87 = v159;
  v88 = v85;
  v89 = v178;
  (v178)(v86 + *(v159 + 48), v88, v60);
  v80 = v70;
  v70 = v158;
  sub_1000082B4(v86, v158, &qword_1000EE308, &unk_1000C8CC0);
  v90 = *(v87 + 48);
  (v89)(v84, v70, v60);
  v91 = v175;
  (v175)(v70 + v90, v60);
  sub_10001DA60(v86, v70, &qword_1000EE308, &unk_1000C8CC0);
  v92 = *(v165 + 36);
  v93 = v70 + *(v87 + 48);
  v164 = v80;
  (v89)(v84 + v92, v93, v60);
  v94 = (v91)(v70, v60);
  __chkstk_darwin(v94);
  *(&v149 - 2) = v84;
  v71 = 0;
  v161 = sub_10008F460(sub_10009DBB4, (&v149 - 4), a1);
  v95 = v166;
  if (v96)
  {
LABEL_28:
    v97 = v175;
    (v175)(v160, v60);
    (v97)(v162, v60);
    a1 = v163;

    goto LABEL_29;
  }

  a1 = 0;
  v171 = ((*(v167 + 80) + 32) & ~*(v167 + 80));
  v78 = v171 + v163;
  while (1)
  {
    v98 = v95 + a1 - 1;
    if (v98 >= v95)
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v60 = *(v167 + 72);
    v71 = v78 + v60 * v98;
    v99 = v170;
    sub_10009DA8C(v71, v170, type metadata accessor for TTRNewWidgetPresenter.Division);
    v70 = (v99 + *(v168 + 20));
    v80 = v92;
    if ((sub_1000C25E8() & 1) == 0)
    {
      v100 = *(v165 + 36);
      if ((sub_1000C25E8() & 1) == 0)
      {
        sub_1000A064C(&qword_1000F02B8, &type metadata accessor for Date);
        if ((sub_1000C2608() & 1) == 0)
        {
          break;
        }
      }
    }

    sub_100099C44(v170, type metadata accessor for TTRNewWidgetPresenter.Division);
    v84 = v169;
LABEL_32:
    --a1;
    v95 = v166;
    v60 = v177;
    if (!(v166 + a1))
    {
      goto LABEL_28;
    }
  }

  v84 = v169;
  v101 = sub_1000C2608();
  sub_100099C44(v170, type metadata accessor for TTRNewWidgetPresenter.Division);
  if (v101)
  {
    goto LABEL_32;
  }

  v180 = &_swiftEmptyArrayStorage;
  v102 = v161;
  v103 = v166;
  if (v161 < 1)
  {
    goto LABEL_41;
  }

  if (v166 < v161)
  {
    __break(1u);
    goto LABEL_72;
  }

  v70 = ((2 * v161) | 1);

  sub_10007827C(v104, v78, 0, (2 * v102) | 1);
  v103 = v166;
LABEL_41:
  if (v102 >= v103)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v105 = v155;
  sub_10009DA8C(v78 + v60 * v102, v155, type metadata accessor for TTRNewWidgetPresenter.Division);
  v106 = v105 + *(v168 + 20);
  v107 = sub_1000C0A98();
  v170 = v106;
  if ((v107 & 1) == 0)
  {
    v70 = v180;
    v78 = v150;
    goto LABEL_49;
  }

  sub_1000082B4(v105, v153, &qword_1000F0290, &qword_1000C8D08);
  v108 = v177;
  if ((sub_1000C25E8() & 1) == 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v109 = v157;
  v110 = v173;
  v173(v157, v106, v108);
  v111 = v159;
  v110(v109 + *(v159 + 48), v84, v108);
  v112 = v158;
  sub_1000082B4(v109, v158, &qword_1000EE308, &unk_1000C8CC0);
  v113 = *(v111 + 48);
  v167 = v153 + *(v168 + 20);
  v114 = v178;
  (v178)();
  v115 = v112 + v113;
  v116 = v175;
  (v175)(v115, v108);
  sub_10001DA60(v109, v112, &qword_1000EE308, &unk_1000C8CC0);
  (v114)(v167 + *(v165 + 36), v112 + *(v159 + 48), v108);
  (v116)(v112, v108);
  *(v153 + *(v168 + 24)) = 0;
  v70 = v180;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v118 = v70[2];
    v117 = v70[3];
    v78 = v150;
    v84 = v169;
    v119 = v153;
    if (v118 >= v117 >> 1)
    {
      v70 = sub_100022484(v117 > 1, v118 + 1, 1, v70);
      v119 = v153;
    }

    v70[2] = v118 + 1;
    sub_10009DB2C(v119, v171 + v70 + v118 * v60, type metadata accessor for TTRNewWidgetPresenter.Division);
    v180 = v70;
    v105 = v155;
LABEL_49:
    v120 = v154;
    sub_1000082B4(v105, v154, &qword_1000F0290, &qword_1000C8D08);
    v121 = v168;
    sub_1000082B4(v84, v120 + *(v168 + 20), &qword_1000F02B0, &unk_1000C8D30);
    *(v120 + *(v121 + 24)) = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_70:
      v70 = sub_100022484(0, v70[2] + 1, 1, v70);
    }

    v123 = v70[2];
    v122 = v70[3];
    if (v123 >= v122 >> 1)
    {
      v70 = sub_100022484(v122 > 1, v123 + 1, 1, v70);
    }

    v70[2] = v123 + 1;
    sub_10009DB2C(v154, v171 + v70 + v123 * v60, type metadata accessor for TTRNewWidgetPresenter.Division);
    v180 = v70;
    sub_10009DA8C(v71, v78, type metadata accessor for TTRNewWidgetPresenter.Division);
    v124 = v78 + *(v168 + 20);
    v125 = v165;
    v126 = *(v165 + 36);
    if ((sub_1000C0A88() & 1) == 0)
    {
      break;
    }

    sub_1000082B4(v78, v152, &qword_1000F0290, &qword_1000C8D08);
    v71 = v170;
    v174 = *(v125 + 36);
    v127 = v177;
    if (sub_1000C25E8())
    {
      v128 = v157;
      v129 = v173;
      v173(v157, v84 + v80, v127);
      v130 = v159;
      v129(v128 + *(v159 + 48), v71 + v174, v127);
      v131 = v158;
      sub_1000082B4(v128, v158, &qword_1000EE308, &unk_1000C8CC0);
      v132 = *(v130 + 48);
      v174 = v152 + *(v168 + 20);
      v133 = v178;
      (v178)();
      v134 = v175;
      (v175)(v131 + v132, v127);
      sub_10001DA60(v128, v131, &qword_1000EE308, &unk_1000C8CC0);
      v135 = v152;
      (v133)(v174 + *(v165 + 36), v131 + *(v159 + 48), v127);
      (v134)(v131, v127);
      *(v135 + *(v168 + 24)) = 0;
      v137 = v70[2];
      v136 = v70[3];
      if (v137 >= v136 >> 1)
      {
        v70 = sub_100022484(v136 > 1, v137 + 1, 1, v70);
      }

      v70[2] = v137 + 1;
      sub_10009DB2C(v135, v171 + v70 + v137 * v60, type metadata accessor for TTRNewWidgetPresenter.Division);
      v180 = v70;
      v78 = v150;
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    v70 = sub_100022484(0, v70[2] + 1, 1, v70);
  }

  v138 = v166 + a1;
  if (v166 + a1 >= v166 - 1)
  {
    goto LABEL_66;
  }

  v139 = &_swiftEmptyArrayStorage;
  if (!a1)
  {
    goto LABEL_65;
  }

  v179 = &_swiftEmptyArrayStorage;
  result = sub_1000BA4AC(0, -a1 & ~(-a1 >> 63), 0);
  if (-a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v140 = -a1;
    v141 = v171 + v163 + v60 * v138;
    v139 = v179;
    v142 = v149;
    do
    {
      v143 = v151;
      sub_10009DA8C(v141, v151, type metadata accessor for TTRNewWidgetPresenter.Division);
      sub_10001DA60(v143, v142, &qword_1000F0290, &qword_1000C8D08);
      v144 = v168;
      sub_10001DA60(v143 + *(v168 + 20), v142 + *(v168 + 20), &qword_1000F02B0, &unk_1000C8D30);
      *(v142 + *(v144 + 24)) = 0;
      v179 = v139;
      v146 = v139[2];
      v145 = v139[3];
      if (v146 >= v145 >> 1)
      {
        sub_1000BA4AC(v145 > 1, v146 + 1, 1);
        v139 = v179;
      }

      v139[2] = v146 + 1;
      sub_10009DB2C(v142, v171 + v139 + v146 * v60, type metadata accessor for TTRNewWidgetPresenter.Division);
      v141 += v60;
      --v140;
    }

    while (v140);
    v78 = v150;
    v84 = v169;
LABEL_65:
    sub_10007882C(v139);
LABEL_66:
    sub_100099C44(v78, type metadata accessor for TTRNewWidgetPresenter.Division);
    sub_100099C44(v155, type metadata accessor for TTRNewWidgetPresenter.Division);
    v147 = v177;
    v148 = v175;
    (v175)(v160, v177);
    (v148)(v162, v147);
    a1 = v180;
LABEL_29:
    sub_1000084C0(v84, &qword_1000F02B0, &unk_1000C8D30);
    return a1;
  }

  return result;
}

uint64_t sub_10009DA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[8];
  return sub_100094A8C(a1, v2[2], v2[3], v2[5], v2[6], v2[7], a2);
}

uint64_t sub_10009DB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DBD4()
{
  v1 = (sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000C0AF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v20 = v2 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v0 + v3);

  v12 = v1[10];
  v13 = sub_1000C0E58();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v14 = *(v11 + v1[11]);

  v15 = *(v11 + v1[12]);

  v16 = *(v0 + v4);

  (*(v6 + 8))(v0 + v8, v5);
  v17 = *(v0 + v9);

  v18 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16, v20 | 7);
}

uint64_t sub_10009DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1000C0AF8() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100093F14(a1, a2, a3, (v3 + v8), *(v3 + v9), v3 + v11, *(v3 + v12), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10009DEFC(id *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v85 = a5;
  v86 = a4;
  v96 = a3;
  v84 = a2;
  v6 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  v8 = __chkstk_darwin(v6);
  v89 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = v78 - v10;
  v11 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v78 - v13;
  v93 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v79 = *(v93 - 8);
  v15 = *(v79 + 64);
  __chkstk_darwin(v93);
  v17 = (v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v92 = *(v97 - 8);
  v18 = *(v92 + 64);
  __chkstk_darwin(v97);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v78 - v23;
  v25 = sub_1000C1118();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
  *v29 = [*a1 objectID];
  v31 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
  v32 = sub_1000C10C8();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  (*(v26 + 104))(v29, enum case for REMNavigationSpecifier.customSmartList(_:), v25);
  v33 = sub_100004D04(&qword_1000EFC60, &qword_1000C7E48);
  v34 = *(v33 + 40);
  v35 = a1;
  v36 = *(a1 + *(v33 + 36));
  v83 = v35;
  v37 = *(v35 + v34);
  v38 = *(v26 + 16);
  v80 = v29;
  v38(v24, v29, v25);
  v81 = v26;
  v39 = *(v26 + 56);
  v82 = v25;
  v39(v24, 0, 1, v25);
  v40 = v96;
  v41 = v88;
  v105 = v96;
  v106 = v88;
  v107 = v24;
  v42 = sub_10008D27C(sub_1000A0864, v104, v36, type metadata accessor for TTRNewWidgetViewModel.Reminder, sub_1000BA468, type metadata accessor for TTRNewWidgetInteractorReminderWrapper, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v102 = v41;
  v103 = v24;
  v91 = sub_10008F144(sub_1000A0884, v101, v36);
  v99 = v41;
  v100 = v24;
  v87 = v24;
  sub_10008F144(sub_1000A089C, v98, v36);

  v43 = sub_10009A6D4(v37);
  v44 = v40;
  v45 = sub_10009B378(v43, v40);

  v108 = v36;

  sub_100078858(v46);
  v47 = sub_10009C674(v45, v108, v44);

  v48 = *(v47 + 16);
  if (!v48)
  {

    v51 = &_swiftEmptyArrayStorage;
    v71 = v86;
    goto LABEL_25;
  }

  v96 = v42;
  v78[2] = 0;
  v49 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v78[1] = v47;
  v50 = v47 + v49;
  v92 = *(v92 + 72);
  v51 = &_swiftEmptyArrayStorage;
  v52 = (v79 + 48);
  v53 = v89;
  do
  {
    sub_10009DA8C(v50, v20, type metadata accessor for TTRNewWidgetPresenter.Division);
    sub_1000082B4(v20, v14, &qword_1000F0290, &qword_1000C8D08);
    if ((*v52)(v14, 1, v93) == 1)
    {
      sub_1000084C0(v14, &qword_1000F0290, &qword_1000C8D08);
LABEL_7:
      v54 = v97;
      if (v20[*(v97 + 24)])
      {
        v55 = v96;
      }

      else
      {
        v55 = v91;
      }

      v56 = *(v54 + 20);
      v57 = sub_1000C0AF8();
      (*(*(v57 - 8) + 16))(v53, &v20[v56], v57);
      v58 = v95;
      *(v53 + *(v95 + 20)) = v55;
      *(v53 + *(v58 + 24)) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1000224FC(0, v51[2] + 1, 1, v51);
      }

      v60 = v51[2];
      v59 = v51[3];
      if (v60 >= v59 >> 1)
      {
        v51 = sub_1000224FC(v59 > 1, v60 + 1, 1, v51);
      }

      sub_100099C44(v20, type metadata accessor for TTRNewWidgetPresenter.Division);
      v51[2] = v60 + 1;
      sub_10009DB2C(v53, v51 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v60, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
      goto LABEL_4;
    }

    sub_10009DB2C(v14, v17, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
    v61 = v17[4];
    sub_100026D74(v17, v17[3]);
    if (sub_1000C0DA8())
    {
      if ((v20[*(v97 + 24)] & 1) == 0)
      {
        sub_100099C44(v17, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        v53 = v89;
        goto LABEL_7;
      }
    }

    else
    {
      v20[*(v97 + 24)];
    }

    v63 = sub_1000983DC(v62, v17, v87);

    v64 = *(v97 + 20);
    v65 = sub_1000C0AF8();
    v66 = &v20[v64];
    v67 = v90;
    (*(*(v65 - 8) + 16))(v90, v66, v65);
    v68 = v95;
    *(v67 + *(v95 + 20)) = v63;
    *(v67 + *(v68 + 24)) = 1065353216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_1000224FC(0, v51[2] + 1, 1, v51);
    }

    v70 = v51[2];
    v69 = v51[3];
    v53 = v89;
    if (v70 >= v69 >> 1)
    {
      v51 = sub_1000224FC(v69 > 1, v70 + 1, 1, v51);
    }

    sub_100099C44(v20, type metadata accessor for TTRNewWidgetPresenter.Division);
    v51[2] = v70 + 1;
    sub_10009DB2C(v90, v51 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v70, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
    sub_100099C44(v17, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
LABEL_4:
    v50 += v92;
    --v48;
  }

  while (v48);

  v71 = v86;
LABEL_25:

  v72 = sub_1000084C0(v87, &qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v72);
  v73 = v83;
  v78[-4] = v88;
  v78[-3] = v73;
  v74 = v80;
  v75 = v84;
  v78[-2] = v80;
  v78[-1] = v75;
  v76 = sub_10008D27C(sub_10009EA28, &v78[-6], v51, type metadata accessor for TTRNewWidgetTimelineEntry, sub_1000BA4F0, type metadata accessor for TTRNewWidgetPresenter.Snapshot, type metadata accessor for TTRNewWidgetTimelineEntry);

  v71(v76);

  return (*(v81 + 8))(v74, v82);
}

uint64_t sub_10009EA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_100095850(a1, v2[2], v2[3], a2);
}

uint64_t *sub_10009EA70(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = *(a2 + 3);
      *(a1 + 3) = v11;
      (**(v11 - 8))(a1, a2);
      a1[5] = a2[5];
      v12 = *(v7 + 24);
      v13 = sub_1000C0AF8();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(a2 + v12, 1, v13))
      {
        v15 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
        memcpy(a1 + v12, a2 + v12, *(*(v15 - 8) + 64));
      }

      else
      {
        (*(v14 + 16))(a1 + v12, a2 + v12, v13);
        (*(v14 + 56))(a1 + v12, 0, 1, v13);
      }

      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v16 = *(a3 + 20);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = sub_1000C0AF8();
    v20 = *(*(v19 - 8) + 16);
    v20(v17, v18, v19);
    v21 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
    v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return a1;
}

uint64_t sub_10009ED68(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    sub_10002285C(a1);
    v5 = *(v4 + 24);
    v6 = sub_1000C0AF8();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(a1 + v5, 1, v6))
    {
      (*(v7 + 8))(a1 + v5, v6);
    }
  }

  v8 = a1 + *(a2 + 20);
  v9 = sub_1000C0AF8();
  v12 = *(*(v9 - 8) + 8);
  (v12)((v9 - 8), v8, v9);
  v10 = &v8[*(sub_100004D04(&qword_1000F02B0, &unk_1000C8D30) + 36)];

  return v12(v10, v9);
}

uint64_t sub_10009EEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = *(a2 + 24);
    *(a1 + 24) = v9;
    (**(v9 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    v10 = *(v6 + 24);
    v11 = sub_1000C0AF8();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(a2 + v10, 1, v11))
    {
      v13 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
      memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(a1 + v10, a2 + v10, v11);
      (*(v12 + 56))(a1 + v10, 0, 1, v11);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v14 = *(a3 + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = sub_1000C0AF8();
  v18 = *(*(v17 - 8) + 16);
  v18(v15, v16, v17);
  v19 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v18(v15 + *(v19 + 36), v16 + *(v19 + 36), v17);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t *sub_10009F198(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      sub_10008331C(a1, a2);
      a1[5] = a2[5];
      v19 = *(v6 + 24);
      v20 = sub_1000C0AF8();
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      v23 = v22(a1 + v19, 1, v20);
      v24 = v22(a2 + v19, 1, v20);
      if (v23)
      {
        if (!v24)
        {
          (*(v21 + 16))(a1 + v19, a2 + v19, v20);
          (*(v21 + 56))(a1 + v19, 0, 1, v20);
          goto LABEL_14;
        }
      }

      else
      {
        if (!v24)
        {
          (*(v21 + 24))(a1 + v19, a2 + v19, v20);
          goto LABEL_14;
        }

        (*(v21 + 8))(a1 + v19, v20);
      }

      v16 = *(*(sub_100004D04(&qword_1000EE300, &unk_1000C6370) - 8) + 64);
      v17 = (a1 + v19);
      v18 = (a2 + v19);
      goto LABEL_8;
    }

    sub_100099C44(a1, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
LABEL_7:
    v16 = *(*(sub_100004D04(&qword_1000F0290, &qword_1000C8D08) - 8) + 64);
    v17 = a1;
    v18 = a2;
LABEL_8:
    memcpy(v17, v18, v16);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = a2[3];
  a1[3] = v11;
  a1[4] = a2[4];
  (**(v11 - 8))(a1, a2);
  a1[5] = a2[5];
  v12 = *(v6 + 24);
  v13 = sub_1000C0AF8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a2 + v12, 1, v13))
  {
    v15 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy(a1 + v12, a2 + v12, *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(a1 + v12, a2 + v12, v13);
    (*(v14 + 56))(a1 + v12, 0, 1, v13);
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v25 = *(a3 + 20);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v28 = sub_1000C0AF8();
  v29 = *(*(v28 - 8) + 24);
  v29(v26, v27, v28);
  v30 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v29(&v26[*(v30 + 36)], &v27[*(v30 + 36)], v28);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

_OWORD *sub_10009F5D4(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = a2[1];
    *a1 = *a2;
    a1[1] = v9;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    v11 = *(v6 + 24);
    v12 = sub_1000C0AF8();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 32))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v15 = *(a3 + 20);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = sub_1000C0AF8();
  v19 = *(*(v18 - 8) + 32);
  v19(v16, v17, v18);
  v20 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v19(&v16[*(v20 + 36)], &v17[*(v20 + 36)], v18);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_10009F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      sub_10002285C(a1);
      v20 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v20;
      v21 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v21;
      v22 = *(v6 + 24);
      v23 = sub_1000C0AF8();
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);
      v26 = v25(a1 + v22, 1, v23);
      v27 = v25(a2 + v22, 1, v23);
      if (v26)
      {
        if (!v27)
        {
          (*(v24 + 32))(a1 + v22, a2 + v22, v23);
          (*(v24 + 56))(a1 + v22, 0, 1, v23);
          goto LABEL_14;
        }
      }

      else
      {
        if (!v27)
        {
          (*(v24 + 40))(a1 + v22, a2 + v22, v23);
          goto LABEL_14;
        }

        (*(v24 + 8))(a1 + v22, v23);
      }

      v17 = *(*(sub_100004D04(&qword_1000EE300, &unk_1000C6370) - 8) + 64);
      v18 = (a1 + v22);
      v19 = (a2 + v22);
      goto LABEL_8;
    }

    sub_100099C44(a1, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
LABEL_7:
    v17 = *(*(sub_100004D04(&qword_1000F0290, &qword_1000C8D08) - 8) + 64);
    v18 = a1;
    v19 = a2;
LABEL_8:
    memcpy(v18, v19, v17);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v12;
  v13 = *(v6 + 24);
  v14 = sub_1000C0AF8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a2 + v13, 1, v14))
  {
    v16 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy((a1 + v13), (a2 + v13), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(a1 + v13, a2 + v13, v14);
    (*(v15 + 56))(a1 + v13, 0, 1, v14);
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v28 = *(a3 + 20);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = sub_1000C0AF8();
  v32 = *(*(v31 - 8) + 40);
  v32(v29, v30, v31);
  v33 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v32(v29 + *(v33 + 36), v30 + *(v33 + 36), v31);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_10009FC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10009FDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10009FED0()
{
  sub_10009FFA0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10009FFF8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_10009FFA0()
{
  if (!qword_1000F0338)
  {
    type metadata accessor for TTRNewWidgetInteractorReminderWrapper(255);
    v0 = sub_1000C2A58();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F0338);
    }
  }
}

void sub_10009FFF8()
{
  if (!qword_1000F0340)
  {
    sub_1000C0AF8();
    sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
    v0 = sub_1000C2908();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F0340);
    }
  }
}

uint64_t *sub_1000A008C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0AF8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

uint64_t sub_1000A0160(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0AF8();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t sub_1000A01D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000A025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1000A02F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_1000A0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1000A041C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A04EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C0AF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A05A4()
{
  result = sub_1000C0AF8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1000A064C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A0694()
{
  v1 = sub_1000C0AF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000A0778(uint64_t a1)
{
  v3 = *(sub_1000C0AF8() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_100090F8C(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1000A08B4()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0420);
  v1 = sub_10000D978(v0, qword_1000F0420);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A097C()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

uint64_t sub_1000A09BC()
{
  v0 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = [objc_allocWithZone(REMStore) init];
  v5 = sub_1000C1338();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_1000C0FB8();
  v6 = sub_1000C0FA8();
  v7 = type metadata accessor for TTRNewWidgetInteractor(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v10[2] = 0x4000000000000000;
  v10[3] = v4;
  v10[4] = v6;
  sub_1000A0B24(v3, v10 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle);
  type metadata accessor for TTRNewWidgetInteractor.CompletedCache();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_1000A0B94(v3);
  *(v11 + 112) = 0x4000000000000000;
  *(v11 + 120) = &_swiftEmptyDictionarySingleton;
  *(v10 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache) = v11;
  qword_1000F0438 = v10;
  return result;
}

uint64_t sub_1000A0B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0B94(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A0BFC()
{
  v0 = sub_1000C1388();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRNewWidgetRouter();
  v6 = swift_allocObject();
  sub_1000A11E4();
  sub_1000C29E8();
  sub_1000C0FB8();
  sub_1000C0FA8();
  v7 = sub_1000C1048();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1000C1038();
  v54 = v7;
  v55 = &protocol witness table for REMContactsProvider;
  v53[0] = v10;
  v48 = v10;

  sub_1000C29E8();
  v11 = sub_1000C0F28();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v47 = sub_1000C0F18();
  if (qword_1000EC9C0 != -1)
  {
    swift_once();
  }

  v14 = qword_1000F0438;
  (*(v1 + 104))(v4, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v0);
  v54 = v5;
  v55 = &off_1000E99A8;
  v53[0] = v6;
  v15 = type metadata accessor for TTRNewWidgetPresenter(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = sub_1000A1230(v53, v5);
  v46[1] = v46;
  v20 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v0;
  v23 = (v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v50 = v5;
  v51 = &off_1000E99A8;
  *&v49 = v25;
  v26 = (v18 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);

  v27 = v47;

  v56._countAndFlagsBits = 0x65726F4D2040252BLL;
  v57._object = 0x80000001000CDDD0;
  v56._object = 0xE800000000000000;
  v57._countAndFlagsBits = 0xD00000000000001BLL;
  *v26 = sub_1000C0D78(v56, v57);
  v26[1] = v28;
  *(v18 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_relevantTimeDeltaLowerBound) = 0xC0AC200000000000;
  *(v18 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_timeDelta) = xmmword_1000C8D90;
  *(v18 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_overlapDelta) = 0x406E000000000000;
  *(v18 + 16) = v14;
  *(v18 + 24) = &off_1000E8C60;
  sub_100004E0C(&v49, v18 + 32);
  (*(v1 + 32))(v18 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks, v4, v22);
  v29 = v18 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_shareeInfoStyle;
  *v29 = v27;
  *(v29 + 8) = v52;
  *(v29 + 24) = v11;
  *(v29 + 32) = &protocol witness table for TTRParticipantAvatarProvider;
  __asm { FMOV            V0.2D, #20.0 }

  *(v29 + 40) = _Q0;
  *(v18 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder) = 2;
  *(v18 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForInterestingReminder) = 0;
  sub_10002285C(v53);
  if (qword_1000EC9B8 != -1)
  {
    swift_once();
  }

  v35 = sub_1000C1568();
  sub_10000D978(v35, qword_1000F0420);

  v36 = sub_1000C1558();
  v37 = sub_1000C2968();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *&v49 = swift_slowAlloc();
    *v38 = 136446466;
    v53[0] = &type metadata for TTRNewWidgetAssembly;
    sub_100004D04(&qword_1000F0448, &qword_1000C8DC8);
    v39 = sub_1000C26A8();
    v41 = sub_1000B7B58(v39, v40, &v49);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v53[0] = v18;
    v53[1] = 8;

    v42 = sub_1000C26A8();
    v44 = sub_1000B7B58(v42, v43, &v49);

    *(v38 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s: Created provider %s", v38, 0x16u);
    swift_arrayDestroy();
  }

  return v18;
}

unint64_t sub_1000A11E4()
{
  result = qword_1000F0440;
  if (!qword_1000F0440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0440);
  }

  return result;
}

uint64_t sub_1000A1230(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000A1294(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, id a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24))
  {
    v13 = [a6 substringWithRange:{a2, a3}];
    sub_1000C2678();

    v14 = sub_1000C1DA8();
    v16 = v15;
    v18 = v17;

    if (a8)
    {

      v19 = sub_1000C1D78();
      v21 = v20;
      v23 = v22;

      sub_10000537C(v14, v16, v18 & 1);

      v14 = v19;
      v16 = v21;
      v18 = v23;
    }

    v24 = *a5;
    v25 = *(a5 + 8);
    v26 = *(a5 + 16);
    v27 = *(a5 + 24);
    sub_100008420(*a5, v25, v26);

    v28 = sub_1000C1D98();
    v51 = v29;
    v52 = v30;
    v50 = v31;
    sub_10000537C(v24, v25, v26);

    sub_10000537C(v14, v16, v18 & 1);

    v32 = *a5;
    v33 = *(a5 + 8);
    v34 = *(a5 + 16);
    v35 = *(a5 + 24);
    *a5 = v28;
    *(a5 + 8) = v51;
    *(a5 + 16) = v50 & 1;
    *(a5 + 24) = v52;
  }

  else
  {
    v36 = *a5;
    v37 = *(a5 + 8);
    v38 = *(a5 + 16);
    v39 = *(a5 + 24);
    sub_100008420(*a5, v37, v38);

    v40 = [a6 substringWithRange:{a2, a3}];
    sub_1000C2678();

    v41 = sub_1000C1D98();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_10000537C(v36, v37, v38);

    v32 = *a5;
    v33 = *(a5 + 8);
    v34 = *(a5 + 16);
    v48 = *(a5 + 24);
    *a5 = v41;
    *(a5 + 8) = v43;
    *(a5 + 16) = v45 & 1;
    *(a5 + 24) = v47;
  }

  sub_10000537C(v32, v33, v34);
}

unint64_t sub_1000A155C()
{
  result = qword_1000F0480;
  if (!qword_1000F0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0480);
  }

  return result;
}

unint64_t sub_1000A15B4()
{
  result = qword_1000F0488;
  if (!qword_1000F0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0488);
  }

  return result;
}

unint64_t sub_1000A1674()
{
  result = qword_1000F0490;
  if (!qword_1000F0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0490);
  }

  return result;
}

uint64_t sub_1000A16C8()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0450);
  sub_10000D978(v0, qword_1000F0450);
  v1 = [objc_opt_self() widget];
  return sub_1000C1578();
}

uint64_t sub_1000A1738()
{
  v0 = sub_1000C0888();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C0B68();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000C2628();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000C0898();
  sub_10000D9B0(v9, qword_1000FAB78);
  sub_10000D978(v9, qword_1000FAB78);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000C08A8();
}

uint64_t sub_1000A1920(uint64_t a1)
{
  v1[2] = a1;
  sub_1000C2848();
  v1[3] = sub_1000C2838();
  v3 = sub_1000C2818();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000A19B8, v3, v2);
}

uint64_t sub_1000A19B8()
{
  if (qword_1000EC9C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000C1568();
  sub_10000D978(v1, qword_1000F0450);
  v2 = sub_1000C1558();
  v3 = sub_1000C2968();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CreateQuickReminderIntent: perform", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1000A1B00;

  return sub_1000A237C();
}

uint64_t sub_1000A1B00()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1000A1CAC;
  }

  else
  {
    v7 = sub_1000A1C3C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A1C3C()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1000C0338();
  sub_1000A1D14();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A1CAC()
{
  v1 = v0[3];

  sub_1000A1D14();
  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1000A1D14()
{
  if (qword_1000EC9C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000C1568();
  sub_10000D978(v0, qword_1000F0450);
  oslog = sub_1000C1558();
  v1 = sub_1000C2968();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "CreateQuickReminderIntent: finish performing", v2, 2u);
  }
}

uint64_t sub_1000A1DFC()
{
  v0 = sub_100004D04(&qword_1000F04C8, &qword_1000C8F38);
  sub_10000D9B0(v0, qword_1000F0468);
  v1 = sub_10000D978(v0, qword_1000F0468);
  v2 = sub_1000C2198();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1000A1E9C(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000F04B8, &qword_1000C8F28);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - v5, a1, v4);
  return sub_1000C21C8();
}

uint64_t sub_1000A1F6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000EC9D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000C0898();
  v3 = sub_10000D978(v2, qword_1000FAB78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000A2018(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B028;

  return sub_1000A1920(a1);
}

uint64_t sub_1000A20B0(uint64_t a1)
{
  v2 = sub_1000A1674();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000A2150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004D04(&qword_1000F0508, &qword_1000C9058);
    v3 = sub_1000C2C68();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100079A34(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1000A2248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004D04(&qword_1000F04F0, &qword_1000C8F78);
    v3 = sub_1000C2C68();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v4, &v13, &qword_1000F04F8, &unk_1000C8F80);
      v5 = v13;
      v6 = v14;
      result = sub_100079AC8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100004E0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_1000A237C()
{
  v1 = *(*(sub_100004D04(&qword_1000F04A8, &qword_1000C8F18) - 8) + 64) + 15;
  v0[17] = swift_task_alloc();
  v2 = *(*(sub_1000C2278() - 8) + 64) + 15;
  v0[18] = swift_task_alloc();
  v3 = sub_1000C2248();
  v0[19] = v3;
  v4 = *(v3 - 8);
  v0[20] = v4;
  v5 = *(v4 + 64) + 15;
  v0[21] = swift_task_alloc();
  v6 = *(*(sub_100004D04(&qword_1000F04B0, &qword_1000C8F20) - 8) + 64) + 15;
  v0[22] = swift_task_alloc();
  v7 = sub_1000C2198();
  v0[23] = v7;
  v8 = *(v7 - 8);
  v0[24] = v8;
  v9 = *(v8 + 64) + 15;
  v0[25] = swift_task_alloc();
  v10 = sub_1000C0B68();
  v0[26] = v10;
  v11 = *(v10 - 8);
  v0[27] = v11;
  v12 = *(v11 + 64) + 15;
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v13 = sub_100004D04(&qword_1000F04B8, &qword_1000C8F28);
  v0[30] = v13;
  v14 = *(v13 - 8);
  v0[31] = v14;
  v15 = *(v14 + 64) + 15;
  v0[32] = swift_task_alloc();
  v16 = sub_1000C21D8();
  v0[33] = v16;
  v17 = *(v16 - 8);
  v0[34] = v17;
  v18 = *(v17 + 64) + 15;
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v19 = *(*(sub_100004D04(&qword_1000F04C0, &qword_1000C8F30) - 8) + 64) + 15;
  v0[37] = swift_task_alloc();
  v20 = sub_1000C2178();
  v0[38] = v20;
  v21 = *(v20 - 8);
  v0[39] = v21;
  v22 = *(v21 + 64) + 15;
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v23 = sub_100004D04(&qword_1000F04C8, &qword_1000C8F38);
  v0[42] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000A2750, 0, 0);
}

uint64_t sub_1000A2750()
{
  if (qword_1000EC9D8 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[23];
  v3 = v0[24];
  v4 = sub_10000D978(v0[42], qword_1000F0468);
  v0[45] = v4;
  swift_beginAccess();
  sub_1000082B4(v4, v1, &qword_1000F04C8, &qword_1000C8F38);
  LODWORD(v2) = (*(v3 + 48))(v1, 1, v2);
  sub_1000084C0(v1, &qword_1000F04C8, &qword_1000C8F38);
  if (v2 != 1)
  {
    if (qword_1000EC9C8 != -1)
    {
      swift_once();
    }

    v13 = sub_1000C1568();
    sub_10000D978(v13, qword_1000F0450);
    v14 = sub_1000C1558();
    v15 = sub_1000C2948();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "CreateQuickReminderIntent: already running ToolKit workflow ", v16, 2u);
    }

    sub_1000A387C();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_1000C2228();
  v0[46] = sub_1000C2218();
  v5 = v0[36];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v60 = v0[33];
  v62 = v0[37];
  v9 = v0[30];
  v10 = v0[31];
  v58 = v0[29];
  sub_1000C21A8();
  swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000024;
  *(v11 + 24) = 0x80000001000CDDF0;
  *v8 = v11;
  (*(v10 + 104))(v8, enum case for CompoundToolKitPropertyFilter.is<A>(_:), v9);
  sub_1000A3824();
  sub_100008478(&qword_1000F04D8, &qword_1000F04B8, &qword_1000C8F28);
  sub_1000C2288();

  (*(v10 + 8))(v8, v9);
  v12 = *(v7 + 8);
  v12(v6, v60);
  sub_1000C0B38();
  sub_1000C2208();
  v30 = v0[38];
  v31 = v0[39];
  v33 = v0[36];
  v32 = v0[37];
  v34 = v0[33];
  (*(v0[27] + 8))(v0[29], v0[26]);
  v12(v33, v34);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    sub_1000084C0(v0[37], &qword_1000F04C0, &qword_1000C8F30);
    if (qword_1000EC9C8 != -1)
    {
      swift_once();
    }

    v35 = sub_1000C1568();
    sub_10000D978(v35, qword_1000F0450);
    v36 = sub_1000C1558();
    v37 = sub_1000C2948();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "CreateQukcReminderIntent: failed to read ToolDatabase", v38, 2u);
    }

    sub_1000A387C();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();

LABEL_10:
    v19 = v0[43];
    v18 = v0[44];
    v21 = v0[40];
    v20 = v0[41];
    v23 = v0[36];
    v22 = v0[37];
    v24 = v0[35];
    v25 = v0[32];
    v26 = v0[28];
    v27 = v0[29];
    v57 = v0[25];
    v59 = v0[22];
    v61 = v0[21];
    v63 = v0[18];
    v64 = v0[17];

    v28 = v0[1];

    return v28();
  }

  v40 = v0[40];
  v41 = v0[41];
  v42 = v0[38];
  v43 = v0[39];
  v44 = v0[25];
  v45 = v0[22];
  (*(v43 + 32))(v41, v0[37], v42);
  (*(v43 + 16))(v40, v41, v42);
  sub_1000A2248(_swiftEmptyArrayStorage);
  v46 = sub_1000C21F8();
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  sub_1000C2188();
  v47 = v0[43];
  v48 = v0[28];
  v49 = v0[24];
  v50 = v0[23];
  v51 = v0[21];
  v52 = v0[18];
  (*(v49 + 16))(v47, v0[25], v50);
  v53 = *(v49 + 56);
  v0[47] = v53;
  v0[48] = (v49 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v53(v47, 0, 1, v50);
  swift_beginAccess();
  sub_1000A38D0(v47, v4);
  swift_endAccess();
  sub_1000C2268();
  sub_1000C0B38();
  sub_1000C2238();
  v54 = async function pointer to static ToolExecutor.start(options:)[1];
  v55 = swift_task_alloc();
  v0[49] = v55;
  *v55 = v0;
  v55[1] = sub_1000A2F34;
  v56 = v0[21];

  return static ToolExecutor.start(options:)(v56);
}

uint64_t sub_1000A2F34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  v4[50] = a1;
  v4[51] = v1;

  v7 = v4[21];
  v8 = v4[20];
  v9 = v4[19];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_1000A344C, 0, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v10 = async function pointer to ToolExecutionSession.execute(invocation:)[1];
    v11 = swift_task_alloc();
    v4[52] = v11;
    v12 = sub_100004D04(&qword_1000F04E8, &qword_1000C8F70);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *v11 = v6;
    v11[1] = sub_1000A3160;
    v14 = v4[25];
    v15 = v4[17];

    return ToolExecutionSession.execute(invocation:)(v15, v14, v12, OpaqueTypeConformance2);
  }
}

uint64_t sub_1000A3160()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v6 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_1000A3604;
  }

  else
  {
    sub_1000084C0(*(v2 + 136), &qword_1000F04A8, &qword_1000C8F18);
    v4 = sub_1000A328C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000A328C()
{
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v5 = v0[43];
  v6 = v0[41];
  v15 = v0[44];
  v16 = v0[40];
  v7 = v0[39];
  v13 = v0[46];
  v14 = v0[38];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[32];
  v21 = v0[29];
  v22 = v0[28];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[18];
  v26 = v0[17];
  swift_unknownObjectRelease();
  v3(v5, 1, 1, v10);
  swift_beginAccess();
  sub_1000A38D0(v5, v4);
  swift_endAccess();

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v6, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A344C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v10 = *(v0 + 184);
  (*(v0 + 376))(v4, 1, 1, v10);
  swift_beginAccess();
  sub_1000A38D0(v4, v2);
  swift_endAccess();

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  v14 = *(v0 + 320);
  v13 = *(v0 + 328);
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  v17 = *(v0 + 280);
  v18 = *(v0 + 256);
  v19 = *(v0 + 224);
  v20 = *(v0 + 232);
  v23 = *(v0 + 200);
  v24 = *(v0 + 176);
  v25 = *(v0 + 168);
  v26 = *(v0 + 144);
  v27 = *(v0 + 136);
  v28 = *(v0 + 408);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000A3604()
{
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[39];
  v27 = v0[38];
  v29 = v0[41];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];
  swift_unknownObjectRelease();
  v3(v6, 1, 1, v10);
  swift_beginAccess();
  sub_1000A38D0(v6, v4);
  swift_endAccess();

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v29, v27);
  v12 = v0[43];
  v11 = v0[44];
  v14 = v0[40];
  v13 = v0[41];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[28];
  v20 = v0[29];
  v23 = v0[25];
  v24 = v0[22];
  v25 = v0[21];
  v26 = v0[18];
  v28 = v0[17];
  v30 = v0[53];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000A37EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000A3824()
{
  result = qword_1000F04D0;
  if (!qword_1000F04D0)
  {
    sub_1000C21D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F04D0);
  }

  return result;
}

unint64_t sub_1000A387C()
{
  result = qword_1000F04E0;
  if (!qword_1000F04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F04E0);
  }

  return result;
}

uint64_t sub_1000A38D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000F04C8, &qword_1000C8F38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A3954()
{
  result = qword_1000F0500;
  if (!qword_1000F0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0500);
  }

  return result;
}

char *sub_1000A39B8(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0AF8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = sub_1000C0938();
    (*(*(v11 - 8) + 16))(v9, v10, v11);
    v12 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
    v9[*(v12 + 20)] = v10[*(v12 + 20)];
    *&v9[*(v12 + 24)] = *&v10[*(v12 + 24)];
    v13 = *(a3 + 24);
    v14 = sub_1000C2478();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);

    if (v16(&a2[v13], 1, v14))
    {
      v17 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
      memcpy(&a1[v13], &a2[v13], *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(&a1[v13], &a2[v13], v14);
      (*(v15 + 56))(&a1[v13], 0, 1, v14);
    }
  }

  return a1;
}

uint64_t sub_1000A3BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0AF8();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 20);
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + *(type metadata accessor for TTRTodayComplicationWidgetViewModel() + 24));

  v8 = *(a2 + 24);
  v9 = sub_1000C2478();
  v12 = *(v9 - 8);
  result = (*(v12 + 48))(a1 + v8, 1, v9);
  if (!result)
  {
    v11 = *(v12 + 8);

    return v11(a1 + v8, v9);
  }

  return result;
}

uint64_t sub_1000A3D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = sub_1000C0938();
  (*(*(v10 - 8) + 16))(v8, v9, v10);
  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(v8 + *(v11 + 20)) = *(v9 + *(v11 + 20));
  *(v8 + *(v11 + 24)) = *(v9 + *(v11 + 24));
  v12 = *(a3 + 24);
  v13 = sub_1000C2478();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);

  if (v15(a2 + v12, 1, v13))
  {
    v16 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v12), (a2 + v12), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(a1 + v12, a2 + v12, v13);
    (*(v14 + 56))(a1 + v12, 0, 1, v13);
  }

  return a1;
}

uint64_t sub_1000A3EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = sub_1000C0938();
  (*(*(v10 - 8) + 24))(v8, v9, v10);
  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(v8 + *(v11 + 20)) = *(v9 + *(v11 + 20));
  v12 = *(v11 + 24);
  v13 = *(v9 + v12);
  v14 = *(v8 + v12);
  *(v8 + v12) = v13;

  v15 = *(a3 + 24);
  v16 = sub_1000C2478();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  LODWORD(v8) = v18(a1 + v15, 1, v16);
  v19 = v18(a2 + v15, 1, v16);
  if (!v8)
  {
    if (!v19)
    {
      (*(v17 + 24))(a1 + v15, a2 + v15, v16);
      return a1;
    }

    (*(v17 + 8))(a1 + v15, v16);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v20 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v15), (a2 + v15), *(*(v20 - 8) + 64));
    return a1;
  }

  (*(v17 + 16))(a1 + v15, a2 + v15, v16);
  (*(v17 + 56))(a1 + v15, 0, 1, v16);
  return a1;
}

uint64_t sub_1000A410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = sub_1000C0938();
  (*(*(v10 - 8) + 32))(v8, v9, v10);
  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(v8 + *(v11 + 20)) = *(v9 + *(v11 + 20));
  *(v8 + *(v11 + 24)) = *(v9 + *(v11 + 24));
  v12 = *(a3 + 24);
  v13 = sub_1000C2478();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a2 + v12, 1, v13))
  {
    v15 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v12), (a2 + v12), *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(a1 + v12, a2 + v12, v13);
    (*(v14 + 56))(a1 + v12, 0, 1, v13);
  }

  return a1;
}

uint64_t sub_1000A42C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = sub_1000C0938();
  (*(*(v10 - 8) + 40))(v8, v9, v10);
  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(v8 + *(v11 + 20)) = *(v9 + *(v11 + 20));
  v12 = *(v11 + 24);
  v13 = *(v8 + v12);
  *(v8 + v12) = *(v9 + v12);

  v14 = *(a3 + 24);
  v15 = sub_1000C2478();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  LODWORD(v8) = v17(a1 + v14, 1, v15);
  v18 = v17(a2 + v14, 1, v15);
  if (!v8)
  {
    if (!v18)
    {
      (*(v16 + 40))(a1 + v14, a2 + v14, v15);
      return a1;
    }

    (*(v16 + 8))(a1 + v14, v15);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v14), (a2 + v14), *(*(v19 - 8) + 64));
    return a1;
  }

  (*(v16 + 32))(a1 + v14, a2 + v14, v15);
  (*(v16 + 56))(a1 + v14, 0, 1, v15);
  return a1;
}

uint64_t sub_1000A44F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000A4654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for TTRTodayComplicationWidgetTimelineEntry()
{
  result = qword_1000F0568;
  if (!qword_1000F0568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A47F8()
{
  v0 = sub_1000C0AF8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000A48FC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_1000A48FC()
{
  if (!qword_1000EDB30)
  {
    sub_1000C2478();
    v0 = sub_1000C2A58();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EDB30);
    }
  }
}

void *sub_1000A4954(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0938();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

uint64_t sub_1000A4A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 24));
}

uint64_t sub_1000A4A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000A4B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000A4BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_1000A4C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000A4CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A4DB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C0938();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TTRTodayComplicationWidgetViewModel()
{
  result = qword_1000F0600;
  if (!qword_1000F0600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A4EB4()
{
  result = sub_1000C0938();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1000A4F58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_100004D04(&qword_1000EE300, &unk_1000C6370) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v71 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v58 - v6;
  v77 = sub_1000C0BC8();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v77);
  v76 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C0AF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v70 = &v58 - v17;
  v18 = __chkstk_darwin(v16);
  v63 = &v58 - v19;
  v20 = __chkstk_darwin(v18);
  v69 = &v58 - v21;
  __chkstk_darwin(v20);
  v23 = &v58 - v22;
  v24 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  __chkstk_darwin(v24);
  v64 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  v72 = *(v1 + *(result + 24));
  v68 = *(v72 + 16);
  if (v68)
  {
    v58 = v24;
    v59 = a1;
    v28 = 0;
    v74 = (v7 + 8);
    v75 = (v11 + 8);
    v60 = (v11 + 48);
    v61 = (v11 + 32);
    v62 = v15;
    v29 = v64;
    v30 = v72;
    v67 = v23;
    while (v28 < *(v30 + 16))
    {
      sub_1000A5D58(v30 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v28, v29);
      sub_1000C0AB8();
      v41 = *(v29 + 8);
      if (!v41)
      {
        (*v75)(v23, v10);
LABEL_20:
        a1 = v59;
        sub_100085E30(v29, v59);
        v57 = 0;
LABEL_22:
        v24 = v58;
        return (*(v73 + 56))(a1, v57, 1, v24);
      }

      v42 = v41;
      v43 = [v42 isAllDay];
      v78 = v42;
      if (v43)
      {
        v31 = v76;
        sub_1000C0B98();
        v32 = [v42 date];
        v33 = v63;
        sub_1000C0AA8();

        v34 = v10;
        v35 = v69;
        sub_1000C0B78();
        v36 = *v75;
        (*v75)(v33, v34);
        v66 = v28;
        v37 = *v74;
        v38 = v77;
        (*v74)(v31, v77);
        sub_1000C0B98();
        sub_1000C0B78();
        v39 = v31;
        v23 = v67;
        v37(v39, v38);
        v28 = v66;
        LOBYTE(v32) = sub_1000C0A98();

        v36(v33, v34);
        v40 = v35;
        v10 = v34;
        v29 = v64;
        v36(v40, v10);
        v36(v23, v10);
        if ((v32 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v44 = [v42 date];
        v45 = v69;
        sub_1000C0AA8();

        v46 = v76;
        sub_1000C0B98();
        v47 = v65;
        sub_1000C0A38();
        v48 = v47;
        v49 = *v74;
        (*v74)(v46, v77);
        v50 = *v75;
        (*v75)(v45, v10);
        v51 = *v60;
        if ((*v60)(v48, 1, v10) == 1)
        {
          sub_1000C09F8();
          if (v51(v48, 1, v10) != 1)
          {
            sub_1000A5DBC(v65);
          }
        }

        else
        {
          (*v61)(v70, v48, v10);
        }

        v52 = v76;
        sub_1000C0B98();
        sub_1000C0A38();
        v53 = v71;
        v49(v52, v77);
        if (v51(v53, 1, v10) == 1)
        {
          v54 = v62;
          sub_1000C09F8();
          if (v51(v53, 1, v10) != 1)
          {
            sub_1000A5DBC(v53);
          }
        }

        else
        {
          v54 = v62;
          (*v61)(v62, v53, v10);
        }

        v55 = v70;
        v56 = sub_1000C0A98();

        v50(v54, v10);
        v50(v55, v10);
        v50(v23, v10);
        if ((v56 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      ++v28;
      result = sub_100028560(v29);
      v30 = v72;
      if (v68 == v28)
      {
        v57 = 1;
        a1 = v59;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v57 = 1;
    return (*(v73 + 56))(a1, v57, 1, v24);
  }

  return result;
}

uint64_t sub_1000A568C()
{
  v1 = v0;
  v2 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v64 - v7;
  v79 = sub_1000C0BC8();
  v8 = *(v79 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v79);
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C0AF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v73 = &v64 - v17;
  v18 = __chkstk_darwin(v16);
  v68 = &v64 - v19;
  v20 = __chkstk_darwin(v18);
  v74 = &v64 - v21;
  __chkstk_darwin(v20);
  v75 = &v64 - v22;
  v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + *(type metadata accessor for TTRTodayComplicationWidgetViewModel() + 24));
  v29 = *(v28 + 16);
  if (!v29)
  {
    return 0;
  }

  v30 = v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v80 = *(v24 + 72);
  v76 = 0;
  v77 = (v8 + 8);
  v31 = (v12 + 8);
  v64 = (v12 + 32);
  v65 = (v12 + 48);
  v32 = v75;
  v71 = (v12 + 8);
  v72 = v27;
  v66 = v6;
  while (1)
  {
    sub_1000A5D58(v30, v27);
    sub_1000C0AB8();
    v33 = *(v27 + 1);
    if (v33)
    {
      break;
    }

    (*v31)(v32, v11);
    sub_100028560(v27);
LABEL_4:
    v30 += v80;
    if (!--v29)
    {
      return v76;
    }
  }

  v34 = v33;
  v35 = [v34 isAllDay];
  v81 = v34;
  v82 = v31 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v35)
  {
    v36 = v78;
    sub_1000C0B98();
    v37 = [v34 date];
    v38 = v68;
    sub_1000C0AA8();

    v39 = v11;
    v40 = v74;
    sub_1000C0B78();
    v70 = v29;
    v41 = *v31;
    (*v31)(v38, v39);
    v42 = *v77;
    v43 = v79;
    (*v77)(v36, v79);
    sub_1000C0B98();
    sub_1000C0B78();
    v44 = v36;
    v6 = v66;
    v45 = v43;
    v31 = v71;
    v42(v44, v45);
    v46 = v41;
    v29 = v70;
    v47 = sub_1000C0A98();

    v46(v38, v39);
    v48 = v40;
    v11 = v39;
    v32 = v75;
  }

  else
  {
    v49 = [v34 date];
    v50 = v74;
    sub_1000C0AA8();

    v51 = v78;
    sub_1000C0B98();
    v52 = v69;
    sub_1000C0A38();
    v53 = v52;
    v54 = v31;
    v55 = *v77;
    (*v77)(v51, v79);
    v70 = *v54;
    (v70)(v50, v11);
    v56 = *v65;
    if ((*v65)(v53, 1, v11) == 1)
    {
      sub_1000C09F8();
      v57 = v11;
      if (v56(v53, 1, v11) != 1)
      {
        sub_1000A5DBC(v53);
      }
    }

    else
    {
      (*v64)(v73, v53, v11);
      v57 = v11;
    }

    v58 = v78;
    sub_1000C0B98();
    sub_1000C0A38();
    v55(v58, v79);
    v11 = v57;
    if (v56(v6, 1, v57) == 1)
    {
      v59 = v67;
      sub_1000C09F8();
      v60 = v56(v6, 1, v11);
      v31 = v71;
      if (v60 != 1)
      {
        sub_1000A5DBC(v6);
      }
    }

    else
    {
      v59 = v67;
      (*v64)(v67, v6, v11);
      v31 = v71;
    }

    v61 = v73;
    v47 = sub_1000C0A98();

    v46 = v70;
    (v70)(v59, v11);
    v48 = v61;
  }

  v46(v48, v11);
  v46(v32, v11);
  v27 = v72;
  sub_100028560(v72);
  if ((v47 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v76++, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
  return 0;
}

uint64_t sub_1000A5D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5DBC(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A5E28()
{
  result = qword_1000F0660;
  if (!qword_1000F0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0660);
  }

  return result;
}

uint64_t sub_1000A5EC0()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000C0888();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1000C0728();
  sub_10000D9B0(v15, qword_1000FAB90);
  sub_10000D978(v15, qword_1000FAB90);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1000C0718();
}

uint64_t sub_1000A619C@<X0>(uint64_t a1@<X8>)
{
  v31[3] = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v32 = v31 - v3;
  v4 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v31[0] = v31 - v6;
  v7 = sub_1000C0888();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0B68();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1000C2628();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v31[2] = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v31[1] = v31 - v21;
  sub_1000C2618();
  sub_1000C0B58();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  v24 = v31[0];
  sub_1000C08A8();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = v32;
  sub_1000C05F8();
  v27 = sub_1000C0608();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  v28 = *(v17 + 16);
  v29 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_1000C3590;
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_1000A66D0()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FABA8);
  sub_10000D978(v0, qword_1000FABA8);
  return sub_1000C0878();
}

uint64_t sub_1000A6734()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v19 - v2;
  v19[0] = sub_1000C0888();
  v4 = *(v19[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v15, qword_1000FABC0);
  v16 = sub_10000D978(v15, qword_1000FABC0);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_1000C0588();
  v17 = sub_1000C0578();
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_1000A6A64()
{
  result = swift_getKeyPath();
  qword_1000FABD8 = result;
  return result;
}

uint64_t sub_1000A6A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100004D04(&qword_1000ED110, &unk_1000C8A60) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100004D04(&qword_1000ED118, &qword_1000C4400) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100004D04(&qword_1000F0798, &qword_1000C99D8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000C0318();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100004D04(&qword_1000F07A0, &qword_1000C99E0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6C6C, 0, 0);
}

uint64_t sub_1000A6C6C()
{
  v1 = v0[8];
  sub_1000C0368();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000A7E54();
  *v3 = v0;
  v3[1] = sub_1000A6D3C;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000AA4F4, 0, &type metadata for IncludeDueTodayEntity, v4);
}

uint64_t sub_1000A6D3C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000A6E38, 0, 0);
}

uint64_t sub_1000A6E38()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000C0368();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000EC9F8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000FABD8;
  *(v0 + 176) = qword_1000FABD8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100008478(&qword_1000F0788, &qword_1000F0790, &qword_1000C99C8);
  *v6 = v0;
  v6[1] = sub_1000A6F98;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000A6F98()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100009CB4;
  }

  else
  {
    v5 = sub_1000A70EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A70EC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_1000C0368();
  v0[6] = v0[5];
  v8 = sub_1000C06F8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000C0738();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000A5E28();
  sub_1000A8068();
  sub_1000C02E8();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000A7358()
{
  v0 = sub_100004D04(&qword_1000F07A8, &qword_1000C99E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000EC9F8 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_1000A8068();
  sub_100008478(&qword_1000F07B0, &qword_1000F07A8, &qword_1000C99E8);
  sub_1000C05C8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_1000A74CC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t (*sub_1000A7540(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_1000A75B4()
{
  if (qword_1000EC9F8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000A7614()
{
  result = qword_1000F0678;
  if (!qword_1000F0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0678);
  }

  return result;
}

unint64_t sub_1000A766C()
{
  result = qword_1000F0680;
  if (!qword_1000F0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0680);
  }

  return result;
}

uint64_t sub_1000A7744@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000EC9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FABC0);

  return sub_10000DA20(v3, a1);
}

uint64_t sub_1000A77C8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_1000A6A8C(a1, v5, v4);
}

uint64_t sub_1000A7874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A9B00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000A78BC()
{
  result = qword_1000F0688;
  if (!qword_1000F0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0688);
  }

  return result;
}

unint64_t sub_1000A7914()
{
  result = qword_1000F0690;
  if (!qword_1000F0690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0690);
  }

  return result;
}

uint64_t sub_1000A7988()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 shouldIncludeRemindersDueTodayInBadgeCount];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000A7A50()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  [v2 setShouldIncludeRemindersDueTodayInBadgeCount:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A7AE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000C0898() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000A7B78, 0, 0);
}

uint64_t sub_1000A7B78()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004D04(&qword_1000F0670, qword_1000C9110);
  sub_1000C0878();
  sub_100008478(&qword_1000F0788, &qword_1000F0790, &qword_1000C99C8);
  *v2 = sub_1000C0768();

  v3 = v0[1];

  return v3();
}

unint64_t sub_1000A7C9C()
{
  result = qword_1000F0698;
  if (!qword_1000F0698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0698);
  }

  return result;
}

uint64_t sub_1000A7CF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000A81FC();
  *v5 = v2;
  v5[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000A7DA4()
{
  result = qword_1000F06A0;
  if (!qword_1000F06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06A0);
  }

  return result;
}

unint64_t sub_1000A7DFC()
{
  result = qword_1000F06A8;
  if (!qword_1000F06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06A8);
  }

  return result;
}

unint64_t sub_1000A7E54()
{
  result = qword_1000F06B0;
  if (!qword_1000F06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06B0);
  }

  return result;
}

uint64_t sub_1000A7EA8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000A81FC();
  *v6 = v2;
  v6[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000A7F5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000A81FC();
  *v5 = v2;
  v5[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000A8010()
{
  result = qword_1000F06B8;
  if (!qword_1000F06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06B8);
  }

  return result;
}

unint64_t sub_1000A8068()
{
  result = qword_1000F06C0;
  if (!qword_1000F06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06C0);
  }

  return result;
}

unint64_t sub_1000A80C0()
{
  result = qword_1000F06C8;
  if (!qword_1000F06C8)
  {
    sub_100005334(&qword_1000F06D0, qword_1000C93B0);
    sub_1000A8068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06C8);
  }

  return result;
}

uint64_t sub_1000A8144(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000A7C9C();
  *v6 = v2;
  v6[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000A81FC()
{
  result = qword_1000F06D8;
  if (!qword_1000F06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06D8);
  }

  return result;
}

uint64_t sub_1000A8250()
{
  v0 = qword_1000F0640;

  return v0;
}

unint64_t sub_1000A828C()
{
  result = qword_1000F06E0;
  if (!qword_1000F06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06E0);
  }

  return result;
}

unint64_t sub_1000A82E4()
{
  result = qword_1000F06E8;
  if (!qword_1000F06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06E8);
  }

  return result;
}

unint64_t sub_1000A833C()
{
  result = qword_1000F06F0;
  if (!qword_1000F06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06F0);
  }

  return result;
}

unint64_t sub_1000A8394()
{
  result = qword_1000F06F8;
  if (!qword_1000F06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06F8);
  }

  return result;
}

unint64_t sub_1000A83EC()
{
  result = qword_1000F0700;
  if (!qword_1000F0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0700);
  }

  return result;
}

unint64_t sub_1000A8444()
{
  result = qword_1000F0708;
  if (!qword_1000F0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0708);
  }

  return result;
}

uint64_t sub_1000A8498@<X0>(uint64_t *a1@<X8>)
{
  sub_1000A7914();
  result = sub_1000C0348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A8554(uint64_t a1)
{
  v2 = sub_1000A7E54();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000A85A4()
{
  result = qword_1000F0720;
  if (!qword_1000F0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0720);
  }

  return result;
}

uint64_t sub_1000A85FC(uint64_t a1)
{
  v2 = sub_1000A8444();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000A864C()
{
  result = qword_1000F0728;
  if (!qword_1000F0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0728);
  }

  return result;
}

uint64_t sub_1000A86A0(uint64_t a1)
{
  if (qword_1000EC8C8 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAAA8);
  v2 = sub_1000A7E54();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_1000A8760()
{
  sub_1000AA468();
  v1 = sub_1000C0668();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000A87D0()
{
  result = qword_1000F0730;
  if (!qword_1000F0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0730);
  }

  return result;
}

uint64_t sub_1000A8824()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FABE0);
  sub_10000D978(v0, qword_1000FABE0);
  return sub_1000C0878();
}

uint64_t sub_1000A8888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000C0888();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000C0B68();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C2628();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000C0898();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_1000C08A8();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_1000C0588();
  v18 = sub_1000C0578();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_1000A8B84(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

unint64_t sub_1000A8BF8()
{
  result = qword_1000F0738;
  if (!qword_1000F0738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0738);
  }

  return result;
}

uint64_t sub_1000A8C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AA3C0();
  v5 = sub_1000AA468();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000A8CB8()
{
  v0 = qword_1000F0650;

  return v0;
}

unint64_t sub_1000A8CF4()
{
  result = qword_1000F0740;
  if (!qword_1000F0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0740);
  }

  return result;
}

unint64_t sub_1000A8D4C()
{
  result = qword_1000F0748;
  if (!qword_1000F0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0748);
  }

  return result;
}

uint64_t sub_1000A8E48(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000AA3C0();
  v8 = sub_1000AA414();
  v9 = sub_1000AA468();
  *v6 = v2;
  v6[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_1000A8F1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A9F64();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8F44(uint64_t a1)
{
  v2 = sub_1000A8BF8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000A9048@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v27 = &v27 - v13;
  v14 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v28 = &v27 - v17;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_1000A7914();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v18 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0);
  sub_1000C1AB8();

  (*(v29 + 8))(v4, v1);
  sub_1000C19E8();
  v37 = v1;
  v38 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v27;
  v21 = v30;
  sub_1000C1A78();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_1000C1AD8();
  (*(v33 + 8))(v20, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1000C1A98();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_1000A95AC()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000A961C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C0B68();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000C2628();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C0898();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_1000A9830@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C2628();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C0898();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v21[1] = sub_1000C1DD8();
  v21[2] = v15;
  v21[3] = v16 & 1;
  v21[4] = v17;
  v22 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v23;
  v19 = v24;
  v20 = v25;
  *a2 = v23;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_1000A9B00()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000C0658();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1000C0898();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004D04(&qword_1000F0768, &qword_1000C99B0);
  sub_1000C0878();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_1000C0318();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v10, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_1000A7E54();
  v28 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_1000C2808();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_1000C0398();
  return v28;
}

uint64_t sub_1000A9F64()
{
  v0 = sub_1000C0658();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  v9 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000C0888();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C0B68();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000C2628();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000C0898();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_100004D04(&qword_1000F0768, &qword_1000C99B0);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_1000C08A8();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_1000C0318();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1000A7E54();
  return sub_1000C0388();
}

unint64_t sub_1000AA3C0()
{
  result = qword_1000F0770;
  if (!qword_1000F0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0770);
  }

  return result;
}

unint64_t sub_1000AA414()
{
  result = qword_1000F0778;
  if (!qword_1000F0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0778);
  }

  return result;
}

unint64_t sub_1000AA468()
{
  result = qword_1000F0780;
  if (!qword_1000F0780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0780);
  }

  return result;
}

unint64_t sub_1000AA518()
{
  result = qword_1000F07D8;
  if (!qword_1000F07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F07D8);
  }

  return result;
}

uint64_t sub_1000AA5B0()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000C0888();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1000C0728();
  sub_10000D9B0(v15, qword_1000FABF8);
  sub_10000D978(v15, qword_1000FABF8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1000C0718();
}

uint64_t sub_1000AA894@<X0>(uint64_t a1@<X8>)
{
  v31[3] = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v32 = v31 - v3;
  v4 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v31[0] = v31 - v6;
  v7 = sub_1000C0888();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0B68();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1000C2628();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v31[2] = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v31[1] = v31 - v21;
  sub_1000C2618();
  sub_1000C0B58();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  v24 = v31[0];
  sub_1000C08A8();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = v32;
  sub_1000C05F8();
  v27 = sub_1000C0608();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  v28 = *(v17 + 16);
  v29 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_1000C3590;
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_1000AADCC()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAC10);
  sub_10000D978(v0, qword_1000FAC10);
  return sub_1000C0878();
}

uint64_t sub_1000AAE30()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v19 - v2;
  v19[0] = sub_1000C0888();
  v4 = *(v19[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v15, qword_1000FAC28);
  v16 = sub_10000D978(v15, qword_1000FAC28);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_1000C0588();
  v17 = sub_1000C0578();
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_1000AB160()
{
  result = swift_getKeyPath();
  qword_1000FAC40 = result;
  return result;
}

uint64_t sub_1000AB188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100004D04(&qword_1000ED110, &unk_1000C8A60) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100004D04(&qword_1000ED118, &qword_1000C4400) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100004D04(&qword_1000F0910, &qword_1000CA348) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000C0318();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100004D04(&qword_1000F0918, &qword_1000CA350);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000AB368, 0, 0);
}

uint64_t sub_1000AB368()
{
  v1 = v0[8];
  sub_1000C0368();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000AC55C();
  *v3 = v0;
  v3[1] = sub_1000AB438;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000AEC04, 0, &type metadata for ShowAsOverdueEntity, v4);
}

uint64_t sub_1000AB438()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000AB534, 0, 0);
}

uint64_t sub_1000AB534()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000C0368();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000ECA20 != -1)
  {
    swift_once();
  }

  v4 = qword_1000FAC40;
  *(v0 + 176) = qword_1000FAC40;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100008478(&qword_1000F0900, &qword_1000F0908, &qword_1000CA338);
  *v6 = v0;
  v6[1] = sub_1000AB694;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000AB694()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100009CB4;
  }

  else
  {
    v5 = sub_1000AB7E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000AB7E8()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_1000C0368();
  v0[6] = v0[5];
  v8 = sub_1000C06F8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000C0738();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000AA518();
  sub_1000AC770();
  sub_1000C02E8();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000ABA54()
{
  v0 = sub_100004D04(&qword_1000F0920, &qword_1000CA358);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000ECA20 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_1000AC770();
  sub_100008478(&qword_1000F0928, &qword_1000F0920, &qword_1000CA358);
  sub_1000C05C8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_1000ABBC8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t (*sub_1000ABC3C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_1000ABCB0()
{
  if (qword_1000ECA20 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000ABD10()
{
  result = qword_1000F07F0;
  if (!qword_1000F07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F07F0);
  }

  return result;
}

unint64_t sub_1000ABD68()
{
  result = qword_1000F07F8;
  if (!qword_1000F07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F07F8);
  }

  return result;
}

uint64_t sub_1000ABE40@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000ECA18 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FAC28);

  return sub_10000DA20(v3, a1);
}

uint64_t sub_1000ABEC4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_1000AB188(a1, v5, v4);
}

uint64_t sub_1000ABF70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000AE210();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000ABFB8()
{
  result = qword_1000F0800;
  if (!qword_1000F0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0800);
  }

  return result;
}

unint64_t sub_1000AC010()
{
  result = qword_1000F0808;
  if (!qword_1000F0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0808);
  }

  return result;
}

uint64_t sub_1000AC084()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 showRemindersAsOverdueWithShouldBypassCache:1];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000AC150()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  [v2 setShowRemindersAsOverdue:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000AC1E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000C0898() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000AC278, 0, 0);
}

uint64_t sub_1000AC278()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004D04(&qword_1000F07E8, qword_1000C9A80);
  sub_1000C0878();
  sub_100008478(&qword_1000F0900, &qword_1000F0908, &qword_1000CA338);
  *v2 = sub_1000C0768();

  v3 = v0[1];

  return v3();
}

unint64_t sub_1000AC3A4()
{
  result = qword_1000F0810;
  if (!qword_1000F0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0810);
  }

  return result;
}

uint64_t sub_1000AC3F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000AC904();
  *v5 = v2;
  v5[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000AC4AC()
{
  result = qword_1000F0818;
  if (!qword_1000F0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0818);
  }

  return result;
}

unint64_t sub_1000AC504()
{
  result = qword_1000F0820;
  if (!qword_1000F0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0820);
  }

  return result;
}

unint64_t sub_1000AC55C()
{
  result = qword_1000F0828;
  if (!qword_1000F0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0828);
  }

  return result;
}

uint64_t sub_1000AC5B0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000AC904();
  *v6 = v2;
  v6[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000AC664(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000AC904();
  *v5 = v2;
  v5[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000AC718()
{
  result = qword_1000F0830;
  if (!qword_1000F0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0830);
  }

  return result;
}

unint64_t sub_1000AC770()
{
  result = qword_1000F0838;
  if (!qword_1000F0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0838);
  }

  return result;
}

unint64_t sub_1000AC7C8()
{
  result = qword_1000F0840;
  if (!qword_1000F0840)
  {
    sub_100005334(&qword_1000F0848, qword_1000C9D20);
    sub_1000AC770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0840);
  }

  return result;
}

uint64_t sub_1000AC84C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000AC3A4();
  *v6 = v2;
  v6[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000AC904()
{
  result = qword_1000F0850;
  if (!qword_1000F0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0850);
  }

  return result;
}

uint64_t sub_1000AC958()
{
  v0 = qword_1000F07B8;

  return v0;
}

unint64_t sub_1000AC994()
{
  result = qword_1000F0858;
  if (!qword_1000F0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0858);
  }

  return result;
}

unint64_t sub_1000AC9EC()
{
  result = qword_1000F0860;
  if (!qword_1000F0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0860);
  }

  return result;
}

unint64_t sub_1000ACA44()
{
  result = qword_1000F0868;
  if (!qword_1000F0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0868);
  }

  return result;
}

unint64_t sub_1000ACA9C()
{
  result = qword_1000F0870;
  if (!qword_1000F0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0870);
  }

  return result;
}

unint64_t sub_1000ACAF4()
{
  result = qword_1000F0878;
  if (!qword_1000F0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0878);
  }

  return result;
}

unint64_t sub_1000ACB4C()
{
  result = qword_1000F0880;
  if (!qword_1000F0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0880);
  }

  return result;
}

uint64_t sub_1000ACBA0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000AC010();
  result = sub_1000C0348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000ACC5C(uint64_t a1)
{
  v2 = sub_1000AC55C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000ACCAC()
{
  result = qword_1000F0898;
  if (!qword_1000F0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0898);
  }

  return result;
}

uint64_t sub_1000ACD04(uint64_t a1)
{
  v2 = sub_1000ACB4C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000ACD54()
{
  result = qword_1000F08A0;
  if (!qword_1000F08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08A0);
  }

  return result;
}

uint64_t sub_1000ACDA8(uint64_t a1)
{
  if (qword_1000EC8D8 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAAC8);
  v2 = sub_1000AC55C();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_1000ACE68()
{
  sub_1000AEB78();
  v1 = sub_1000C0668();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000ACED8()
{
  result = qword_1000F08A8;
  if (!qword_1000F08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08A8);
  }

  return result;
}

uint64_t sub_1000ACF2C()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAC48);
  sub_10000D978(v0, qword_1000FAC48);
  return sub_1000C0878();
}

uint64_t sub_1000ACF90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000C0888();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000C0B68();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C2628();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000C0898();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_1000C08A8();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_1000C0588();
  v18 = sub_1000C0578();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_1000AD28C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

unint64_t sub_1000AD300()
{
  result = qword_1000F08B0;
  if (!qword_1000F08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08B0);
  }

  return result;
}

uint64_t sub_1000AD354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AEAD0();
  v5 = sub_1000AEB78();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000AD3C0()
{
  v0 = qword_1000F07C8;

  return v0;
}

unint64_t sub_1000AD3FC()
{
  result = qword_1000F08B8;
  if (!qword_1000F08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08B8);
  }

  return result;
}

unint64_t sub_1000AD454()
{
  result = qword_1000F08C0;
  if (!qword_1000F08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08C0);
  }

  return result;
}

uint64_t sub_1000AD550(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000AEAD0();
  v8 = sub_1000AEB24();
  v9 = sub_1000AEB78();
  *v6 = v2;
  v6[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_1000AD624@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000AE674();
  *a1 = result;
  return result;
}

uint64_t sub_1000AD64C(uint64_t a1)
{
  v2 = sub_1000AD300();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000AD750@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v27 = &v27 - v13;
  v14 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v28 = &v27 - v17;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_1000AC010();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v18 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0);
  sub_1000C1AB8();

  (*(v29 + 8))(v4, v1);
  sub_1000C19E8();
  v37 = v1;
  v38 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v27;
  v21 = v30;
  sub_1000C1A78();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_1000C1AD8();
  (*(v33 + 8))(v20, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1000C1A98();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_1000ADCB4()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000ADD2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C0B68();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000C2628();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C0898();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_1000ADF40@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C2628();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C0898();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v21[1] = sub_1000C1DD8();
  v21[2] = v15;
  v21[3] = v16 & 1;
  v21[4] = v17;
  v22 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v23;
  v19 = v24;
  v20 = v25;
  *a2 = v23;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_1000AE210()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000C0658();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1000C0898();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004D04(&qword_1000F08E0, &qword_1000CA320);
  sub_1000C0878();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_1000C0318();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v10, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_1000AC55C();
  v28 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_1000C2808();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_1000C0398();
  return v28;
}

uint64_t sub_1000AE674()
{
  v0 = sub_1000C0658();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  v9 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000C0888();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C0B68();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000C2628();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000C0898();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_100004D04(&qword_1000F08E0, &qword_1000CA320);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_1000C08A8();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_1000C0318();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1000AC55C();
  return sub_1000C0388();
}

unint64_t sub_1000AEAD0()
{
  result = qword_1000F08E8;
  if (!qword_1000F08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08E8);
  }

  return result;
}

unint64_t sub_1000AEB24()
{
  result = qword_1000F08F0;
  if (!qword_1000F08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08F0);
  }

  return result;
}

unint64_t sub_1000AEB78()
{
  result = qword_1000F08F8;
  if (!qword_1000F08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08F8);
  }

  return result;
}

uint64_t sub_1000AEC24()
{
  v0 = sub_100004D04(&qword_1000F0A38, &qword_1000CA688);
  v1 = *(v0 - 8);
  v19 = v0;
  v20 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - v3;
  v5 = sub_100004D04(&qword_1000F0A40, &qword_1000CA690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10008811C();
  sub_1000C0518();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1000C0508(v21);
  swift_getKeyPath();
  sub_1000B2AD0();
  sub_1000C0428();

  sub_1000C04F8();

  v22._countAndFlagsBits = 0xD000000000000025;
  v22._object = 0x80000001000CED80;
  sub_1000C0508(v22);
  sub_1000C0528();
  v18 = sub_1000C0458();
  v7 = v19;
  v16 = *(v20 + 8);
  v20 += 8;
  v16(v4, v19);
  sub_1000C0518();
  v23._countAndFlagsBits = 0x206E727554;
  v23._object = 0xE500000000000000;
  sub_1000C0508(v23);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v24._countAndFlagsBits = 0xD000000000000022;
  v24._object = 0x80000001000CEDB0;
  sub_1000C0508(v24);
  sub_1000C0528();
  v17 = sub_1000C0458();
  v8 = v7;
  v9 = v16;
  v16(v4, v8);
  sub_1000C0518();
  v25._countAndFlagsBits = 0x656B696C20642749;
  v25._object = 0xEF206562206F7420;
  sub_1000C0508(v25);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v26._object = 0x80000001000CEDE0;
  v26._countAndFlagsBits = 0xD000000000000014;
  sub_1000C0508(v26);
  sub_1000C0528();
  v10 = sub_1000C0458();
  v9(v4, v19);
  sub_100004D04(&qword_1000F0A48, &qword_1000CA698);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000C4500;
  v12 = v17;
  *(v11 + 32) = v18;
  *(v11 + 40) = v12;
  *(v11 + 48) = v10;
  v13 = sub_1000C0448();

  return v13;
}

uint64_t sub_1000AF0A4()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  v2 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C4500;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_1000C0468();

  return v4;
}

uint64_t sub_1000AF158()
{
  v0 = sub_100004D04(&qword_1000F0A20, &qword_1000CA648);
  v1 = *(v0 - 8);
  v23 = v0;
  v24 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - v3;
  v5 = sub_1000C0438();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000F0A28, &qword_1000CA650);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_1000A5E28();
  sub_1000C0518();
  v25._countAndFlagsBits = 0x20656B614DLL;
  v25._object = 0xE500000000000000;
  sub_1000C0508(v25);
  (*(v6 + 104))(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_1000C04E8();
  (*(v6 + 8))(v9, v5);
  v26._countAndFlagsBits = 0x6320656764616220;
  v26._object = 0xED000020746E756FLL;
  sub_1000C0508(v26);
  swift_getKeyPath();
  v19 = sub_1000B2AD0();
  sub_1000C0428();

  sub_1000C04F8();

  v27._object = 0x80000001000CED00;
  v27._countAndFlagsBits = 0xD000000000000015;
  sub_1000C0508(v27);
  sub_1000C0528();
  v22 = sub_1000C0458();
  v12 = v23;
  v20 = *(v24 + 8);
  v24 += 8;
  v20(v4, v23);
  sub_1000C0518();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1000C0508(v28);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v29._countAndFlagsBits = 0xD000000000000022;
  v29._object = 0x80000001000CED20;
  sub_1000C0508(v29);
  sub_1000C0528();
  v21 = sub_1000C0458();
  v13 = v20;
  v20(v4, v12);
  sub_1000C0518();
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_1000C0508(v30);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v31._countAndFlagsBits = 0xD000000000000024;
  v31._object = 0x80000001000CED50;
  sub_1000C0508(v31);
  sub_1000C0528();
  v14 = sub_1000C0458();
  v13(v4, v12);
  sub_100004D04(&qword_1000F0A30, &qword_1000CA658);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000C4500;
  v16 = v21;
  *(v15 + 32) = v22;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = sub_1000C0448();

  return v17;
}

uint64_t sub_1000AF6D4(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000F0A08, &qword_1000CA608);
  v3 = *(v2 - 8);
  v25 = v2;
  v26 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_100004D04(&qword_1000F0A10, &qword_1000CA610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  sub_1000B293C();
  sub_1000C0518();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1000C0508(v27);
  swift_getKeyPath();
  v24 = sub_1000B2AD0();
  v19 = a1;
  sub_1000C0428();

  sub_1000C04F8();

  v28._countAndFlagsBits = 0xD000000000000035;
  v28._object = 0x80000001000CEC10;
  sub_1000C0508(v28);
  sub_1000C0528();
  v9 = sub_1000C0458();
  v10 = v25;
  v11 = *(v26 + 8);
  v22 = v9;
  v23 = v11;
  v26 += 8;
  v11(v6, v25);
  sub_1000C0518();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1000C0508(v29);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v30._countAndFlagsBits = 0xD000000000000031;
  v30._object = 0x80000001000CEC50;
  sub_1000C0508(v30);
  sub_1000C0528();
  v21 = sub_1000C0458();
  v12 = v23;
  v23(v6, v10);
  sub_1000C0518();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_1000C0508(v31);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v32._object = 0x80000001000CEC90;
  v32._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1000C0508(v32);
  sub_1000C0528();
  v20 = sub_1000C0458();
  v13 = v25;
  v12(v6, v25);
  sub_1000C0518();
  v33._countAndFlagsBits = 8265;
  v33._object = 0xE200000000000000;
  sub_1000C0508(v33);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v34._countAndFlagsBits = 0xD000000000000032;
  v34._object = 0x80000001000CECC0;
  sub_1000C0508(v34);
  sub_1000C0528();
  v14 = sub_1000C0458();
  v23(v6, v13);
  sub_100004D04(&qword_1000F0A18, &qword_1000CA618);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000C5A40;
  v16 = v21;
  *(v15 + 32) = v22;
  *(v15 + 40) = v16;
  *(v15 + 48) = v20;
  *(v15 + 56) = v14;
  v17 = sub_1000C0448();

  return v17;
}

uint64_t sub_1000AFC14()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  v2 = sub_1000C0478();
  v3 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C5A40;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1000C0468();

  return v5;
}

uint64_t sub_1000AFCFC(uint64_t a1)
{
  v21 = sub_100004D04(&qword_1000F09F0, &qword_1000CA5C8);
  v24 = *(v21 - 8);
  v2 = *(v24 + 64);
  __chkstk_darwin(v21);
  v4 = &v17 - v3;
  v5 = sub_100004D04(&qword_1000F09F8, &qword_1000CA5D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000AA518();
  sub_1000C0518();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1000C0508(v25);
  swift_getKeyPath();
  sub_1000B2AD0();
  v19 = a1;
  sub_1000C0428();

  sub_1000C04F8();

  v22 = " suggestions when adding ";
  v26._object = 0x80000001000CEBD0;
  v26._countAndFlagsBits = 0xD000000000000016;
  sub_1000C0508(v26);
  sub_1000C0528();
  v7 = sub_1000C0458();
  v18 = *(v24 + 8);
  v23 = v7;
  v24 += 8;
  v8 = v21;
  v18(v4, v21);
  sub_1000C0518();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1000C0508(v27);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v28._object = 0x80000001000CEBF0;
  v28._countAndFlagsBits = 0xD000000000000016;
  sub_1000C0508(v28);
  sub_1000C0528();
  v20 = sub_1000C0458();
  v9 = v8;
  v10 = v8;
  v11 = v18;
  v18(v4, v9);
  sub_1000C0518();
  v29._countAndFlagsBits = 0x656B696C20642749;
  v29._object = 0xEC000000206F7420;
  sub_1000C0508(v29);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v30._object = (v22 | 0x8000000000000000);
  v30._countAndFlagsBits = 0xD000000000000016;
  sub_1000C0508(v30);
  sub_1000C0528();
  v12 = sub_1000C0458();
  v11(v4, v10);
  sub_100004D04(&qword_1000F0A00, &qword_1000CA5D8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000C4500;
  v14 = v20;
  *(v13 + 32) = v23;
  *(v13 + 40) = v14;
  *(v13 + 48) = v12;
  v15 = sub_1000C0448();

  return v15;
}

uint64_t sub_1000B018C()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C44F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1000C0468();

  return v3;
}

uint64_t sub_1000B0214(uint64_t a1)
{
  v36 = a1;
  v1 = sub_100004D04(&qword_1000F09D8, &qword_1000CA588);
  v2 = *(v1 - 8);
  v42 = v1;
  v43 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v39 = &v26 - v4;
  v5 = sub_1000C0438();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000F09E0, &qword_1000CA590);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = sub_100008750();
  sub_1000C0518();
  v44._countAndFlagsBits = 0x206E6F206E727554;
  v44._object = 0xE800000000000000;
  sub_1000C0508(v44);
  swift_getKeyPath();
  v35 = sub_1000B2AD0();
  sub_1000C0428();

  sub_1000C04F8();

  v29 = "I want to see all ";
  v45._object = 0x80000001000CEB90;
  v45._countAndFlagsBits = 0xD000000000000011;
  sub_1000C0508(v45);
  v13 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v14 = v6[13];
  v34 = v6 + 13;
  v41 = v14;
  v37 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v14(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_1000C04E8();
  v15 = v6[1];
  v33 = v6 + 1;
  v40 = v15;
  v15(v9, v5);
  v46._countAndFlagsBits = 46;
  v46._object = 0xE100000000000000;
  sub_1000C0508(v46);
  v16 = v39;
  sub_1000C0528();
  v32 = v12;
  v31 = sub_1000C0458();
  v38 = *(v43 + 8);
  v43 += 8;
  v38(v16, v42);
  sub_1000C0518();
  v47._countAndFlagsBits = 0x7420746E61772049;
  v47._object = 0xEA0000000000206FLL;
  sub_1000C0508(v47);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v28 = " suggestions for ";
  v48._countAndFlagsBits = 0xD000000000000019;
  v48._object = 0x80000001000CEBB0;
  sub_1000C0508(v48);
  v27 = v5;
  v41(v9, v13, v5);
  sub_1000C04E8();
  v40(v9, v5);
  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  sub_1000C0508(v49);
  v17 = v39;
  sub_1000C0528();
  v30 = sub_1000C0458();
  v38(v17, v42);
  sub_1000C0518();
  v50._countAndFlagsBits = 0x66666F206E727554;
  v50._object = 0xE900000000000020;
  sub_1000C0508(v50);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v51._object = (v29 | 0x8000000000000000);
  v51._countAndFlagsBits = 0xD000000000000011;
  sub_1000C0508(v51);
  v18 = v27;
  v41(v9, v37, v27);
  sub_1000C04E8();
  v40(v9, v18);
  v52._countAndFlagsBits = 46;
  v52._object = 0xE100000000000000;
  sub_1000C0508(v52);
  v19 = v39;
  sub_1000C0528();
  v29 = sub_1000C0458();
  v20 = v38;
  v38(v19, v42);
  sub_1000C0518();
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_1000C0508(v53);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v54._countAndFlagsBits = 0xD000000000000019;
  v54._object = (v28 | 0x8000000000000000);
  sub_1000C0508(v54);
  v41(v9, v37, v18);
  sub_1000C04E8();
  v40(v9, v18);
  v55._countAndFlagsBits = 46;
  v55._object = 0xE100000000000000;
  sub_1000C0508(v55);
  sub_1000C0528();
  v21 = sub_1000C0458();
  v20(v19, v42);
  sub_100004D04(&qword_1000F09E8, &qword_1000CA598);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000C5A40;
  v23 = v30;
  *(v22 + 32) = v31;
  *(v22 + 40) = v23;
  *(v22 + 48) = v29;
  *(v22 + 56) = v21;
  v24 = sub_1000C0448();

  return v24;
}

uint64_t sub_1000B099C()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  v2 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C4500;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_1000C0468();

  return v4;
}

uint64_t sub_1000B0A44(uint64_t a1)
{
  v21 = a1;
  v20 = sub_100004D04(&qword_1000F09B8, &qword_1000CA548);
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v18 - v3;
  v5 = sub_1000C0438();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000F09C0, &qword_1000CA550);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100010EE0();
  sub_1000C0518();
  v22._object = 0x80000001000CEB70;
  v22._countAndFlagsBits = 0xD000000000000012;
  sub_1000C0508(v22);
  (*(v6 + 104))(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_1000C04E8();
  (*(v6 + 8))(v9, v5);
  v23._countAndFlagsBits = 0x676E697474657320;
  v23._object = 0xEA00000000002E73;
  sub_1000C0508(v23);
  sub_1000C0528();
  v19 = sub_1000C0458();
  v12 = *(v1 + 8);
  v13 = v20;
  v12(v4, v20);
  sub_1000C0518();
  v24._countAndFlagsBits = 0x206E65704FLL;
  v24._object = 0xE500000000000000;
  sub_1000C0508(v24);
  swift_getKeyPath();
  sub_10000FF04();
  sub_1000C0428();

  sub_1000C04F8();

  v25._countAndFlagsBits = 0x676E697474657320;
  v25._object = 0xEA00000000002E73;
  sub_1000C0508(v25);
  sub_1000C0528();
  v14 = sub_1000C0458();
  v12(v4, v13);
  sub_100004D04(&qword_1000F09C8, &qword_1000CA558);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000C44F0;
  *(v15 + 32) = v19;
  *(v15 + 40) = v14;
  v16 = sub_1000C0448();

  return v16;
}

uint64_t sub_1000B0E54()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  v2 = sub_1000C0478();
  v3 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C5A40;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1000C0468();

  return v5;
}

uint64_t sub_1000B0F54(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_100004D04(&qword_1000F09B8, &qword_1000CA548);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_100004D04(&qword_1000F09C0, &qword_1000CA550);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100010EE0();
  sub_1000C0518();
  v16._object = 0x80000001000CEB30;
  v16._countAndFlagsBits = 0xD000000000000016;
  sub_1000C0508(v16);
  swift_getKeyPath();
  sub_10000FF04();
  sub_1000C0428();

  sub_1000C04F8();

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  sub_1000C0508(v17);
  sub_1000C0528();
  v14 = sub_1000C0458();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_1000C0518();
  v18._countAndFlagsBits = 0x20656D20776F6853;
  v18._object = 0xEB0000000020796DLL;
  sub_1000C0508(v18);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1000C0508(v19);
  sub_1000C0528();
  v9 = sub_1000C0458();
  v7(v4, v8);
  sub_100004D04(&qword_1000F09C8, &qword_1000CA558);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C44F0;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_1000C0448();

  return v11;
}

uint64_t sub_1000B12D4()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C44F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1000C0468();

  return v3;
}

uint64_t sub_1000B1384(uint64_t a1)
{
  v21 = a1;
  v1 = sub_100004D04(&qword_1000F09A0, &qword_1000CA508);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = sub_100004D04(&qword_1000F09A8, &qword_1000CA510);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  sub_10008B458();
  sub_1000C04D8();
  v24 = sub_1000C0458();
  v8 = *(v4 + 8);
  v19 = v3;
  v8(v7, v3);
  v26 = v4 + 8;
  v18 = v8;
  sub_1000C04D8();
  v23 = sub_1000C0458();
  v8(v7, v3);
  sub_1000C0518();
  v27._object = 0x80000001000CEA70;
  v27._countAndFlagsBits = 0xD000000000000022;
  sub_1000C0508(v27);
  swift_getKeyPath();
  v25 = sub_10008A894();
  sub_1000C0428();

  sub_1000C04F8();

  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  sub_1000C0508(v28);
  sub_1000C0528();
  v22 = sub_1000C0458();
  v10 = v18;
  v9 = v19;
  v18(v7, v19);
  sub_1000C0518();
  v29._countAndFlagsBits = 0xD000000000000036;
  v29._object = 0x80000001000CEAA0;
  sub_1000C0508(v29);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  sub_1000C0508(v30);
  sub_1000C0528();
  v20 = sub_1000C0458();
  v10(v7, v9);
  sub_1000C0518();
  v31._countAndFlagsBits = 0xD00000000000002ELL;
  v31._object = 0x80000001000CEAE0;
  sub_1000C0508(v31);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  sub_1000C0508(v32);
  sub_1000C0528();
  v11 = sub_1000C0458();
  v10(v7, v9);
  sub_100004D04(&qword_1000F09B0, &qword_1000CA518);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000CA3F0;
  v13 = v23;
  *(v12 + 32) = v24;
  *(v12 + 40) = v13;
  v14 = v20;
  *(v12 + 48) = v22;
  *(v12 + 56) = v14;
  *(v12 + 64) = v11;
  v15 = sub_1000C0448();

  return v15;
}

uint64_t sub_1000B18AC(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_1000C04C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_1000C0428();

  a4(v11);
  sub_1000C04B8();
  v12 = sub_1000C04A8();
  (*(v7 + 8))(v10, v6);
  sub_100004D04(&qword_1000F0998, &qword_1000CA500);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000C3590;
  *(v13 + 32) = v12;
  v14 = sub_1000C0498();

  return v14;
}

uint64_t sub_1000B1A50()
{
  v0 = sub_100004D04(&qword_1000F0988, &qword_1000CA4C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_1000AD300();
  sub_1000C04D8();
  v5 = sub_1000C0458();
  (*(v1 + 8))(v4, v0);
  sub_100004D04(&qword_1000F0990, &qword_1000CA4D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C3590;
  *(v6 + 32) = v5;
  v7 = sub_1000C0448();

  return v7;
}

uint64_t sub_1000B1BB8()
{
  v0 = sub_100004D04(&qword_1000F0978, &qword_1000CA4B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_1000A8BF8();
  sub_1000C04D8();
  v5 = sub_1000C0458();
  (*(v1 + 8))(v4, v0);
  sub_100004D04(&qword_1000F0980, &qword_1000CA4C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C3590;
  *(v6 + 32) = v5;
  v7 = sub_1000C0448();

  return v7;
}

uint64_t sub_1000B1D1C()
{
  v0 = sub_100004D04(&qword_1000F0968, &qword_1000CA4A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_1000B2990();
  sub_1000C04D8();
  v5 = sub_1000C0458();
  (*(v1 + 8))(v4, v0);
  sub_100004D04(&qword_1000F0970, &qword_1000CA4B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C3590;
  *(v6 + 32) = v5;
  v7 = sub_1000C0448();

  return v7;
}

uint64_t sub_1000B1E80()
{
  v0 = sub_100004D04(&qword_1000F0958, &qword_1000CA498);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_10000BD00();
  sub_1000C04D8();
  v5 = sub_1000C0458();
  (*(v1 + 8))(v4, v0);
  sub_100004D04(&qword_1000F0960, &qword_1000CA4A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C3590;
  *(v6 + 32) = v5;
  v7 = sub_1000C0448();

  return v7;
}

uint64_t sub_1000B1FE4()
{
  v0 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000C3590;
  *(v1 + 32) = v0;
  v2 = sub_1000C0468();

  return v2;
}

uint64_t sub_1000B2068()
{
  v0 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000C3590;
  *(v1 + 32) = v0;
  v2 = sub_1000C0468();

  return v2;
}

uint64_t sub_1000B2108()
{
  v0 = sub_1000C0558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10008C360();
  v30 = v5;
  sub_10008811C();
  sub_1000C0568();
  v28 = sub_1000C0548();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v29 = sub_1000A9B00();
  v30 = v7;
  sub_1000A5E28();
  sub_1000C0568();
  v27 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_1000B6830();
  v30 = v8;
  sub_1000B293C();
  sub_1000C0568();
  v26 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_1000AE210();
  v30 = v9;
  sub_1000AA518();
  sub_1000C0568();
  v25 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_10000CFBC();
  v30 = v10;
  sub_100008750();
  sub_1000C0568();
  v24 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_1000122B8();
  sub_100010EE0();
  sub_1000C0568();
  v23 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_1000122B8();
  sub_1000C0568();
  v11 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_10008C7C4();
  sub_10008B458();
  sub_1000C0568();
  v12 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_1000AE674();
  sub_1000AD300();
  sub_1000C0568();
  v13 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_1000A9F64();
  sub_1000A8BF8();
  sub_1000C0568();
  v14 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_1000B6C94();
  sub_1000B2990();
  sub_1000C0568();
  v15 = sub_1000C0548();
  v6(v4, v0);
  v29 = sub_10000D420();
  sub_10000BD00();
  sub_1000C0568();
  v16 = sub_1000C0548();
  v6(v4, v0);
  sub_100004D04(&qword_1000F0950, &qword_1000CA490);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000CA400;
  v18 = v27;
  *(v17 + 32) = v28;
  *(v17 + 40) = v18;
  v19 = v25;
  *(v17 + 48) = v26;
  *(v17 + 56) = v19;
  v20 = v23;
  *(v17 + 64) = v24;
  *(v17 + 72) = v20;
  *(v17 + 80) = v11;
  *(v17 + 88) = v12;
  *(v17 + 96) = v13;
  *(v17 + 104) = v14;
  *(v17 + 112) = v15;
  *(v17 + 120) = v16;
  v21 = sub_1000C0538();

  return v21;
}

uint64_t sub_1000B27A0()
{
  v0 = sub_1000C0418();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008B458();
  sub_1000C0408();
  v5 = sub_1000C03F8();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_10008811C();
  sub_1000C0408();
  v7 = sub_1000C03F8();
  v6(v4, v0);
  sub_100004D04(&qword_1000F0930, &qword_1000CA480);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C44F0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_1000C03E8();

  return v9;
}

unint64_t sub_1000B293C()
{
  result = qword_1000F0940;
  if (!qword_1000F0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0940);
  }

  return result;
}

unint64_t sub_1000B2990()
{
  result = qword_1000F0948;
  if (!qword_1000F0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0948);
  }

  return result;
}

uint64_t sub_1000B29E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000C0368();
  *a2 = v5;
  return result;
}

uint64_t sub_1000B2A20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_1000C0378();
}

uint64_t sub_1000B2A5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000C0368();
  *a2 = v5;
  return result;
}

uint64_t sub_1000B2A98(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1000C0378();
}

unint64_t sub_1000B2AD0()
{
  result = qword_1000F09D0;
  if (!qword_1000F09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09D0);
  }

  return result;
}

uint64_t sub_1000B2B2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1000C0368();
  *a2 = v5;
  return result;
}

uint64_t sub_1000B2B68(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_1000C0378();
}

uint64_t sub_1000B2C40()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000C0888();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1000C0728();
  sub_10000D9B0(v15, qword_1000FAC60);
  sub_10000D978(v15, qword_1000FAC60);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1000C0718();
}

uint64_t sub_1000B2F1C@<X0>(uint64_t a1@<X8>)
{
  v31[2] = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v33 = v31 - v3;
  v4 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v32 = v31 - v6;
  v7 = sub_1000C0888();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0B68();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1000C2628();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v31[1] = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v31[0] = v31 - v21;
  sub_1000C2618();
  sub_1000C0B58();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  v24 = v32;
  sub_1000C08A8();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = v33;
  sub_1000C05F8();
  v27 = sub_1000C0608();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  v28 = *(v17 + 16);
  v29 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_1000C3590;
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_1000B344C()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAC78);
  sub_10000D978(v0, qword_1000FAC78);
  return sub_1000C0878();
}

uint64_t sub_1000B34B0()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v19 - v2;
  v19[0] = sub_1000C0888();
  v4 = *(v19[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v15, qword_1000FAC90);
  v16 = sub_10000D978(v15, qword_1000FAC90);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_1000C0588();
  v17 = sub_1000C0578();
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_1000B37E0()
{
  result = swift_getKeyPath();
  qword_1000FACA8 = result;
  return result;
}

uint64_t sub_1000B3808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100004D04(&qword_1000ED110, &unk_1000C8A60) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100004D04(&qword_1000ED118, &qword_1000C4400) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100004D04(&qword_1000F0C30, &qword_1000CAFC8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000C0318();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100004D04(&qword_1000F0C38, &qword_1000CAFD0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000B39E8, 0, 0);
}

uint64_t sub_1000B39E8()
{
  v1 = v0[8];
  sub_1000C0368();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000B4BD8();
  *v3 = v0;
  v3[1] = sub_1000B3AB8;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000B7224, 0, &type metadata for MuteNotificationsEntity, v4);
}

uint64_t sub_1000B3AB8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000B3BB4, 0, 0);
}

uint64_t sub_1000B3BB4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000C0368();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000ECA48 != -1)
  {
    swift_once();
  }

  v4 = qword_1000FACA8;
  *(v0 + 176) = qword_1000FACA8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100008478(&qword_1000F0C20, &qword_1000F0C28, &qword_1000CAFA8);
  *v6 = v0;
  v6[1] = sub_1000B3D14;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000B3D14()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100009CB4;
  }

  else
  {
    v5 = sub_1000B3E68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B3E68()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_1000C0368();
  v0[6] = v0[5];
  v8 = sub_1000C06F8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000C0738();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000B293C();
  sub_1000B4DEC();
  sub_1000C02E8();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000B40D4()
{
  v0 = sub_100004D04(&qword_1000F0C40, &qword_1000CAFD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000ECA48 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_1000B4DEC();
  sub_100008478(&qword_1000F0C48, &qword_1000F0C40, &qword_1000CAFD8);
  sub_1000C05C8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_1000B4248(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t (*sub_1000B42BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_1000B4330()
{
  if (qword_1000ECA48 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000B4390()
{
  result = qword_1000F0B18;
  if (!qword_1000F0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B18);
  }

  return result;
}

unint64_t sub_1000B43E8()
{
  result = qword_1000F0B20;
  if (!qword_1000F0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B20);
  }

  return result;
}

uint64_t sub_1000B44C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000ECA40 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FAC90);

  return sub_10000DA20(v3, a1);
}

uint64_t sub_1000B4544(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_1000B3808(a1, v5, v4);
}

uint64_t sub_1000B45F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B6830();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000B4638()
{
  result = qword_1000F0B28;
  if (!qword_1000F0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B28);
  }

  return result;
}

unint64_t sub_1000B4690()
{
  result = qword_1000F0B30;
  if (!qword_1000F0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B30);
  }

  return result;
}

uint64_t sub_1000B4704()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 enableAssignmentNotifications];

  *v1 = v3 ^ 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000B47D0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  [v2 setEnableAssignmentNotifications:(v1 & 1) == 0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000B486C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000C0898() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000B48FC, 0, 0);
}

uint64_t sub_1000B48FC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004D04(&qword_1000F0B10, qword_1000CA6F0);
  sub_1000C0878();
  sub_100008478(&qword_1000F0C20, &qword_1000F0C28, &qword_1000CAFA8);
  *v2 = sub_1000C0768();

  v3 = v0[1];

  return v3();
}

unint64_t sub_1000B4A20()
{
  result = qword_1000F0B38;
  if (!qword_1000F0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B38);
  }

  return result;
}

uint64_t sub_1000B4A74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000B4F80();
  *v5 = v2;
  v5[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000B4B28()
{
  result = qword_1000F0B40;
  if (!qword_1000F0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B40);
  }

  return result;
}

unint64_t sub_1000B4B80()
{
  result = qword_1000F0B48;
  if (!qword_1000F0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B48);
  }

  return result;
}

unint64_t sub_1000B4BD8()
{
  result = qword_1000F0B50;
  if (!qword_1000F0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B50);
  }

  return result;
}

uint64_t sub_1000B4C2C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000B4F80();
  *v6 = v2;
  v6[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000B4CE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000B4F80();
  *v5 = v2;
  v5[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000B4D94()
{
  result = qword_1000F0B58;
  if (!qword_1000F0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B58);
  }

  return result;
}

unint64_t sub_1000B4DEC()
{
  result = qword_1000F0B60;
  if (!qword_1000F0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B60);
  }

  return result;
}

unint64_t sub_1000B4E44()
{
  result = qword_1000F0B68;
  if (!qword_1000F0B68)
  {
    sub_100005334(&qword_1000F0B70, qword_1000CA990);
    sub_1000B4DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B68);
  }

  return result;
}

uint64_t sub_1000B4EC8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000B4A20();
  *v6 = v2;
  v6[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000B4F80()
{
  result = qword_1000F0B78;
  if (!qword_1000F0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B78);
  }

  return result;
}

uint64_t sub_1000B4FD4()
{
  v0 = qword_1000F0AE8;

  return v0;
}

unint64_t sub_1000B5010()
{
  result = qword_1000F0B80;
  if (!qword_1000F0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B80);
  }

  return result;
}

unint64_t sub_1000B5068()
{
  result = qword_1000F0B88;
  if (!qword_1000F0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B88);
  }

  return result;
}

unint64_t sub_1000B50C0()
{
  result = qword_1000F0B90;
  if (!qword_1000F0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B90);
  }

  return result;
}

unint64_t sub_1000B5118()
{
  result = qword_1000F0B98;
  if (!qword_1000F0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B98);
  }

  return result;
}

unint64_t sub_1000B5170()
{
  result = qword_1000F0BA0;
  if (!qword_1000F0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BA0);
  }

  return result;
}

unint64_t sub_1000B51C8()
{
  result = qword_1000F0BA8;
  if (!qword_1000F0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BA8);
  }

  return result;
}

uint64_t sub_1000B521C@<X0>(uint64_t *a1@<X8>)
{
  sub_1000B4690();
  result = sub_1000C0348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B52D8(uint64_t a1)
{
  v2 = sub_1000B4BD8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000B5328()
{
  result = qword_1000F0BC0;
  if (!qword_1000F0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BC0);
  }

  return result;
}

uint64_t sub_1000B5380(uint64_t a1)
{
  v2 = sub_1000B51C8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000B53D0()
{
  result = qword_1000F0BC8;
  if (!qword_1000F0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BC8);
  }

  return result;
}

uint64_t sub_1000B5424(uint64_t a1)
{
  if (qword_1000EC8D0 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAAB8);
  v2 = sub_1000B4BD8();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_1000B54E4()
{
  sub_1000B7198();
  v1 = sub_1000C0668();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000B5554()
{
  result = qword_1000F0BD0;
  if (!qword_1000F0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BD0);
  }

  return result;
}

uint64_t sub_1000B55A8()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FACB0);
  sub_10000D978(v0, qword_1000FACB0);
  return sub_1000C0878();
}

uint64_t sub_1000B560C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000C0888();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000C0B68();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C2628();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000C0898();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_1000C08A8();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_1000C0588();
  v18 = sub_1000C0578();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_1000B5908(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_1000B597C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B70F0();
  v5 = sub_1000B7198();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000B59E8()
{
  v0 = qword_1000F0AF8;

  return v0;
}

unint64_t sub_1000B5A24()
{
  result = qword_1000F0BD8;
  if (!qword_1000F0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BD8);
  }

  return result;
}

unint64_t sub_1000B5A7C()
{
  result = qword_1000F0BE0;
  if (!qword_1000F0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BE0);
  }

  return result;
}

uint64_t sub_1000B5B78(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000B70F0();
  v8 = sub_1000B7144();
  v9 = sub_1000B7198();
  *v6 = v2;
  v6[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_1000B5C4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B6C94();
  *a1 = result;
  return result;
}

uint64_t sub_1000B5C74(uint64_t a1)
{
  v2 = sub_1000B2990();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000B5D78@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v27 = &v27 - v13;
  v14 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v28 = &v27 - v17;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_1000B4690();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v18 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0);
  sub_1000C1AB8();

  (*(v29 + 8))(v4, v1);
  sub_1000C19E8();
  v37 = v1;
  v38 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v27;
  v21 = v30;
  sub_1000C1A78();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_1000C1AD8();
  (*(v33 + 8))(v20, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1000C1A98();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_1000B62DC()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000B634C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C0B68();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000C2628();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C0898();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_1000B6560@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C2628();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C0898();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v21[1] = sub_1000C1DD8();
  v21[2] = v15;
  v21[3] = v16 & 1;
  v21[4] = v17;
  v22 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v23;
  v19 = v24;
  v20 = v25;
  *a2 = v23;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_1000B6830()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000C0658();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1000C0898();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004D04(&qword_1000F0C00, &qword_1000CAF90);
  sub_1000C0878();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_1000C0318();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v10, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_1000B4BD8();
  v28 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_1000C2808();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_1000C0398();
  return v28;
}

uint64_t sub_1000B6C94()
{
  v0 = sub_1000C0658();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  v9 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000C0888();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C0B68();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000C2628();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000C0898();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_100004D04(&qword_1000F0C00, &qword_1000CAF90);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_1000C08A8();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_1000C0318();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1000B4BD8();
  return sub_1000C0388();
}

unint64_t sub_1000B70F0()
{
  result = qword_1000F0C08;
  if (!qword_1000F0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C08);
  }

  return result;
}

unint64_t sub_1000B7144()
{
  result = qword_1000F0C10;
  if (!qword_1000F0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C10);
  }

  return result;
}

unint64_t sub_1000B7198()
{
  result = qword_1000F0C18;
  if (!qword_1000F0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C18);
  }

  return result;
}

void sub_1000B7244(uint64_t *a1@<X8>)
{
  v62 = type metadata accessor for TTRTodayComplicationWidgetProvider();
  v2 = *(*(v62 - 8) + 64);
  v3 = __chkstk_darwin(v62);
  v61 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = &v61 - v5;
  v6 = sub_1000C1388();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v61 - v13;
  v15 = [objc_allocWithZone(REMStore) init];
  v16 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v17 = sub_1000C1468();
  (*(*(v17 - 8) + 104))(v14, v16, v17);
  v18 = enum case for REMRemindersListDataView.SortingStyle.displayDate(_:);
  v19 = sub_1000C1338();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v14, v18, v19);
  (*(v20 + 56))(v14, 0, 1, v19);
  sub_1000C0FB8();
  v21 = v15;
  v22 = sub_1000C0FA8();
  v23 = type metadata accessor for TTRNewWidgetInteractor(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v26[2] = 0x4000000000000000;
  v26[3] = v21;
  v64 = v21;
  v26[4] = v22;
  sub_1000A0B24(v14, v26 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle);
  type metadata accessor for TTRNewWidgetInteractor.CompletedCache();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000A0B94(v14);
  *(v27 + 112) = 0x4000000000000000;
  *(v27 + 120) = &_swiftEmptyDictionarySingleton;
  *(v26 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache) = v27;
  v28 = type metadata accessor for TTRNewWidgetRouter();
  v29 = swift_allocObject();
  (*(v7 + 104))(v10, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v6);
  v68[3] = v28;
  v68[4] = &off_1000E99A8;
  v68[0] = v29;
  v30 = type metadata accessor for TTRNewWidgetPresenter(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v34 = sub_1000A1230(v68, v28);
  v35 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (&v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v66 = v28;
  v67 = &off_1000E99A8;
  *&v65 = v39;
  v40 = (v33 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);

  v69._countAndFlagsBits = 0x65726F4D2040252BLL;
  v70._object = 0x80000001000CDDD0;
  v69._object = 0xE800000000000000;
  v70._countAndFlagsBits = 0xD00000000000001BLL;
  *v40 = sub_1000C0D78(v69, v70);
  v40[1] = v41;
  *(v33 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_relevantTimeDeltaLowerBound) = 0xC0AC200000000000;
  *(v33 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_timeDelta) = xmmword_1000C8D90;
  *(v33 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_overlapDelta) = 0x406E000000000000;
  *(v33 + 16) = v26;
  *(v33 + 24) = &off_1000E8C60;
  sub_100004E0C(&v65, v33 + 32);
  (*(v7 + 32))(v33 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks, v10, v6);
  v42 = v62;
  v43 = v33 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_shareeInfoStyle;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0;
  *(v33 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder) = 1;
  *(v33 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForInterestingReminder) = 1;
  sub_10002285C(v68);
  *a1 = v33;
  v44 = *(v42 + 20);
  v45 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v46 = sub_1000C10B8();
  (*(*(v46 - 8) + 104))(a1 + v44, v45, v46);
  v47 = enum case for REMNavigationSpecifier.today(_:);
  v48 = sub_1000C1118();
  (*(*(v48 - 8) + 104))(a1 + v44, v47, v48);
  if (qword_1000ECA58 != -1)
  {
    swift_once();
  }

  v49 = sub_1000C1568();
  sub_10000D978(v49, qword_1000F0C50);
  v50 = v63;
  sub_1000B7A98(a1, v63);
  v51 = sub_1000C1558();
  v52 = sub_1000C2968();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v53 = 136446466;
    *&v65 = &type metadata for TTRTodayComplicationWidgetAssembly;
    sub_100004D04(&qword_1000F0C68, &qword_1000CB078);
    v54 = sub_1000C26A8();
    v56 = sub_1000B7B58(v54, v55, v68);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2080;
    sub_1000B7A98(v50, v61);
    v57 = sub_1000C26A8();
    v59 = v58;
    sub_1000B7AFC(v50);
    v60 = sub_1000B7B58(v57, v59, v68);

    *(v53 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v51, v52, "%{public}s: Created provider %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000B7AFC(v50);
  }
}

uint64_t sub_1000B79D0()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0C50);
  v1 = sub_10000D978(v0, qword_1000F0C50);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B7A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7AFC(uint64_t a1)
{
  v2 = type metadata accessor for TTRTodayComplicationWidgetProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B7B58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000B7C24(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000B8100(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10002285C(v11);
  return v7;
}

unint64_t sub_1000B7C24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000B7D30(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000C2B58();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000B7D30(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000B7D7C(a1, a2);
  sub_1000B7EAC(&off_1000E7788);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000B7D7C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000B7F98(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000C2B58();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000C26E8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000B7F98(v10, 0);
        result = sub_1000C2B38();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000B7EAC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000B800C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000B7F98(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004D04(&qword_1000F0C70, &unk_1000CB080);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000B800C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0C70, &unk_1000CB080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000B8100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000B816C(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000C2BF8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_1000BA534(0, v2 & ~(v2 >> 63), 0);
    v3 = _swiftEmptyArrayStorage;
    if (v33)
    {
      v4 = sub_1000C2BA8();
    }

    else
    {
      v6 = -1 << *(v1 + 32);
      v4 = sub_1000C2A88();
      v5 = *(v1 + 36);
    }

    v36 = v4;
    v37 = v5;
    v38 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v31 = v2;
      v32 = v1;
      while (v7 < v2)
      {
        if (__OFADD__(v7, 1))
        {
          goto LABEL_27;
        }

        v15 = v36;
        v16 = v38;
        v34 = v37;
        sub_1000BB254(v35, v36, v37, v38, v1);
        v17 = v35[0];
        v19 = v18;
        v20 = [v17 title];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 string];

          v23 = sub_1000C2678();
          v25 = v24;
        }

        else
        {

          v23 = 0;
          v25 = 0xE000000000000000;
        }

        v26 = v3;
        v39 = v3;
        v27 = v3[2];
        v28 = v26[3];
        if (v27 >= v28 >> 1)
        {
          sub_1000BA534((v28 > 1), v27 + 1, 1);
          v26 = v39;
        }

        v26[2] = v27 + 1;
        v29 = &v26[3 * v27];
        v29[4] = v19;
        v29[5] = v23;
        v29[6] = v25;
        if (v33)
        {
          v1 = v32;
          if (!v16)
          {
            goto LABEL_29;
          }

          v3 = v26;
          if (sub_1000C2BC8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          v14 = v7 + 1;
          sub_100004D04(&qword_1000F0D40, &qword_1000CB650);
          v30 = sub_1000C2588();
          sub_1000C2C28();
          v30(v35, 0);
        }

        else
        {
          v3 = v26;
          v1 = v32;
          sub_1000BB0F0(v15, v34, v16, v32);
          v9 = v8;
          v11 = v10;
          v13 = v12;
          sub_1000BC2E8(v15, v34, v16);
          v36 = v9;
          v37 = v11;
          v38 = v13 & 1;
          v2 = v31;
          v14 = v7 + 1;
        }

        ++v7;
        if (v14 == v2)
        {
          sub_1000BC2E8(v36, v37, v38);
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1000B8480()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0C78);
  v1 = sub_10000D978(v0, qword_1000F0C78);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B8548()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FACC8);
  sub_10000D978(v0, qword_1000FACC8);
  return sub_1000C0878();
}

uint64_t sub_1000B85AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_1000C0AF8();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8670, 0, 0);
}

uint64_t sub_1000B8670()
{
  if (qword_1000ECA60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = sub_1000C1568();
  sub_10000D978(v4, qword_1000F0C78);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v5 = sub_1000C1558();
  v6 = sub_1000C2968();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    sub_1000C0368();
    v13 = *(v0 + 104);
    v14 = *(v0 + 120);

    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 1024;
    sub_1000C0368();

    *(v11 + 14) = *(v0 + 233);

    _os_log_impl(&_mh_execute_header, v5, v6, "ReminderSetCompletedIntent reminder %@ setting completed %{BOOL}d", v11, 0x12u);
    sub_1000084C0(v12, &qword_1000F0280, &qword_1000C8CF0);
  }

  else
  {
    v15 = *(v0 + 136);
  }

  v16 = *(v0 + 176);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v19 = *(v0 + 136);
  sub_1000BBE30();
  sub_1000C01B8();
  *(v0 + 184) = sub_100026D74((v0 + 16), *(v0 + 40));
  sub_1000C0368();
  *(v0 + 192) = *(v0 + 56);
  v20 = *(v0 + 72);

  sub_1000C0368();
  *(v0 + 234) = *(v0 + 232);
  sub_1000C0AE8();
  *(v0 + 80) = v19;
  *(v0 + 88) = v18;
  *(v0 + 96) = v17;
  sub_1000C2848();
  *(v0 + 200) = sub_1000C2838();
  v22 = sub_1000C2818();

  return _swift_task_switch(sub_1000B8948, v22, v21);
}

uint64_t sub_1000B8948()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);

  sub_1000BC2F4();
  v3 = sub_1000C03C8();
  *(v0 + 208) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_1000B8A20;
  v6 = *(v0 + 234);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  return sub_100078F74(v7, v6, v8, v3);
}

uint64_t sub_1000B8A20()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 224) = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v8 = sub_1000B8C44;
  }

  else
  {
    v8 = sub_1000B8BC8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000B8BC8()
{
  v1 = v0[22];
  v2 = v0[16];
  sub_10002285C(v0 + 2);
  sub_1000C0338();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B8C44()
{
  v1 = v0[22];
  sub_10002285C(v0 + 2);

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t sub_1000B8CEC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DC8C;

  return sub_1000B85AC(a1, v4, v5, v6);
}

uint64_t sub_1000B8DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BB980();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1000B8DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to _UndoableIntent.configuration()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000DC8C;

  return _UndoableIntent.configuration()(a1, a2, a3);
}

uint64_t sub_1000B8E80(uint64_t a1)
{
  v2 = sub_10001C6DC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000B8EBC()
{
  v0 = sub_1000C0728();
  sub_10000D9B0(v0, qword_1000FACE0);
  sub_10000D978(v0, qword_1000FACE0);
  return sub_1000C0708();
}

id sub_1000B8F20@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1000B8F64@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000D978(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000B900C(uint64_t a1)
{
  v2 = sub_1000B9D00();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000B9058()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);

  return DisplayRepresentation.init(stringLiteral:)(v2, v1);
}

uint64_t sub_1000B90A8(uint64_t a1)
{
  v2 = sub_1000B9AD4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

id sub_1000B90F4()
{
  result = [objc_allocWithZone(REMStore) initUserInteractive:1];
  qword_1000F0C90 = result;
  return result;
}

uint64_t sub_1000B912C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DCD8;

  return sub_1000BC03C(a1);
}

uint64_t sub_1000B91D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to EntityQuery.suggestedEntities()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B028;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1000B9288(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000B9940();
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000B933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000DC8C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t REMObjectID.entityIdentifierString.getter()
{
  v1 = sub_1000C0938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  *&v4 = __chkstk_darwin(v1).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 urlRepresentation];
  sub_1000C0908();

  v8 = sub_1000C08E8();
  (*(v2 + 8))(v6, v1);
  return v8;
}

id static REMObjectID.entityIdentifier(for:)()
{
  v0 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_1000C0938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C0918();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000084C0(v3, &qword_1000ECCE0, &qword_1000C4EF0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_1000C08F8(v10);
    v12 = v11;
    v13 = [swift_getObjCClassFromMetadata() objectIDWithURL:v11];

    (*(v5 + 8))(v8, v4);
    return v13;
  }
}

unint64_t sub_1000B96C0()
{
  result = qword_1000F0C98;
  if (!qword_1000F0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C98);
  }

  return result;
}

unint64_t sub_1000B9718()
{
  result = qword_1000F0CA0;
  if (!qword_1000F0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CA0);
  }

  return result;
}

unint64_t sub_1000B97DC()
{
  result = qword_1000F0CA8;
  if (!qword_1000F0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CA8);
  }

  return result;
}

unint64_t sub_1000B9838()
{
  result = qword_1000F0CB0;
  if (!qword_1000F0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CB0);
  }

  return result;
}

unint64_t sub_1000B9890()
{
  result = qword_1000F0CB8;
  if (!qword_1000F0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CB8);
  }

  return result;
}

unint64_t sub_1000B98E8()
{
  result = qword_1000F0CC0;
  if (!qword_1000F0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CC0);
  }

  return result;
}

unint64_t sub_1000B9940()
{
  result = qword_1000F0CC8;
  if (!qword_1000F0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CC8);
  }

  return result;
}

unint64_t sub_1000B99CC()
{
  result = qword_1000F0CD8;
  if (!qword_1000F0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CD8);
  }

  return result;
}

unint64_t sub_1000B9A24()
{
  result = qword_1000F0CE0;
  if (!qword_1000F0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CE0);
  }

  return result;
}

unint64_t sub_1000B9A7C()
{
  result = qword_1000F0CE8;
  if (!qword_1000F0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CE8);
  }

  return result;
}

unint64_t sub_1000B9AD4()
{
  result = qword_1000F0CF0;
  if (!qword_1000F0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CF0);
  }

  return result;
}

uint64_t sub_1000B9B5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10007E3A8(255, &qword_1000EFB58, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B9BF8()
{
  result = qword_1000F0D08;
  if (!qword_1000F0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D08);
  }

  return result;
}

unint64_t sub_1000B9C50()
{
  result = qword_1000F0D10;
  if (!qword_1000F0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D10);
  }

  return result;
}

unint64_t sub_1000B9CA8()
{
  result = qword_1000F0D18;
  if (!qword_1000F0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D18);
  }

  return result;
}

unint64_t sub_1000B9D00()
{
  result = qword_1000F0D20;
  if (!qword_1000F0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D20);
  }

  return result;
}

unint64_t sub_1000B9D58()
{
  result = qword_1000F0D28;
  if (!qword_1000F0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D28);
  }

  return result;
}

unint64_t sub_1000B9DB0()
{
  result = qword_1000F0D30;
  if (!qword_1000F0D30)
  {
    sub_100005334(&qword_1000F0D38, qword_1000CB498);
    sub_1000B9A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D30);
  }

  return result;
}

uint64_t sub_1000B9E34()
{
  v1 = sub_1000C0938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  *&v4 = __chkstk_darwin(v1).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*v0 urlRepresentation];
  sub_1000C0908();

  v8 = sub_1000C08E8();
  (*(v2 + 8))(v6, v1);
  return v8;
}

id sub_1000B9F34@<X0>(void *a1@<X8>)
{
  result = static REMObjectID.entityIdentifier(for:)();
  *a1 = result;
  return result;
}

uint64_t destroy for TTRReminderAppEntity(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void *sub_1000B9FAC(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for TTRReminderAppEntity(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  return a1;
}

__n128 initializeWithTake for TTRReminderAppEntity(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRReminderAppEntity(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  v6 = *(a1 + 16);
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t destroy for TTRReminderSetCompletedIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];
}

void *sub_1000BA10C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for TTRReminderSetCompletedIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a2[2];
  v7 = a1[2];
  a1[2] = v6;

  return a1;
}

uint64_t *assignWithTake for TTRReminderSetCompletedIntent(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t sub_1000BA224(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000BA26C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1000BA300(char *a1, int64_t a2, char a3)
{
  result = sub_1000BA554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BA320(char *a1, int64_t a2, char a3)
{
  result = sub_1000BA648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000BA340(size_t a1, int64_t a2, char a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000ECB68, &unk_1000C3680, &type metadata accessor for WidgetFamily);
  *v3 = result;
  return result;
}

void *sub_1000BA384(void *a1, int64_t a2, char a3)
{
  result = sub_1000BA884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000BA3A4(void *a1, int64_t a2, char a3)
{
  result = sub_1000BA9B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000BA3C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000ED9A0, &unk_1000C5760, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
  *v3 = result;
  return result;
}

size_t sub_1000BA408(size_t a1, int64_t a2, char a3)
{
  result = sub_1000BAB00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BA428(char *a1, int64_t a2, char a3)
{
  result = sub_1000BACF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000BA448(void *a1, int64_t a2, char a3)
{
  result = sub_1000BA73C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000BA468(size_t a1, int64_t a2, char a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000ED970, &qword_1000C5730, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  *v3 = result;
  return result;
}

size_t sub_1000BA4AC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000ED980, &qword_1000C5740, type metadata accessor for TTRNewWidgetPresenter.Division);
  *v3 = result;
  return result;
}

size_t sub_1000BA4F0(size_t a1, int64_t a2, char a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000EFF98, &unk_1000C8180, type metadata accessor for TTRNewWidgetTimelineEntry);
  *v3 = result;
  return result;
}

char *sub_1000BA534(char *a1, int64_t a2, char a3)
{
  result = sub_1000BAFD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BA554(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0D70, &qword_1000CB698);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000BA648(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0D68, &qword_1000CB690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1000BA73C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004D04(&qword_1000ED940, &unk_1000C56D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004D04(&qword_1000ED948, &unk_1000C7D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000BA884(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004D04(&qword_1000F0D80, &qword_1000CB6B0);
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
    sub_100004D04(&qword_1000F0D88, &qword_1000CB6B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000BA9B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004D04(&qword_1000F0D90, &qword_1000CB6C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004D04(&qword_1000EFC10, &qword_1000C7D90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000BAB00(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004D04(&qword_1000F0D78, &unk_1000CB6A0);
  v10 = *(sub_100004D04(&qword_1000ED918, &qword_1000C56A8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004D04(&qword_1000ED918, &qword_1000C56A8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000BACF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0D98, &qword_1000CB6C8);
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

size_t sub_1000BADF4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100004D04(a5, a6);
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

char *sub_1000BAFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0D48, &qword_1000CB658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000BB0F0(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1000C2BD8() == *(a4 + 36))
    {
      sub_1000C2BE8();
      sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
      swift_dynamicCast();
      sub_1000799F0(v8);
      v6 = v5;

      if (v6)
      {
        sub_1000C2BB8();
        sub_1000C2C08();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1000C2A98();
  v7 = *(a4 + 36);
}

void sub_1000BB254(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_1000C2C18();
      sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
      swift_dynamicCast();
      sub_10007E3A8(0, &qword_1000EFB90, REMReminder_ptr);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1000C2BD8() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000C2BE8();
  sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
  swift_dynamicCast();
  a2 = sub_1000799F0(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

uint64_t sub_1000BB438(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = a4;
  *(&v43 + 1) = a2;
  v44 = a3;
  *&v43 = a1;
  v4 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v6;
  v46 = sub_1000C0658();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v46);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  v34 = &v34 - v20;
  v22 = sub_1000C0898();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v41 = sub_100004D04(&qword_1000F0D50, &unk_1000CB668);
  sub_1000C0878();
  v39 = *(v23 + 56);
  v39(v21, 1, 1, v22);
  v25 = sub_1000C0318();
  *&v48 = 0;
  v47 = 0uLL;
  v26 = *(*(v25 - 8) + 56);
  v35 = v17;
  v26(v17, 1, 1, v25);
  v26(v15, 1, 1, v25);
  v38 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v7 + 104);
  v36 = v7 + 104;
  v37 = v27;
  v27(v10);
  sub_1000B9D00();
  v28 = v34;
  v41 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);

  sub_1000C0878();
  v39(v28, 1, 1, v40);
  LOBYTE(v47) = 2;
  v29 = sub_1000C2808();
  (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
  v26(v35, 1, 1, v25);
  v37(v10, v38, v46);
  sub_1000C0398();
  sub_100004D04(&qword_1000F0D58, &qword_1000CB678);
  sub_1000C0218();
  v47 = 0u;
  v48 = 0u;
  v49 = 0;

  sub_1000C0208();
  sub_1000C01C8();
  v30 = v43;
  v47 = v43;
  *&v48 = v44;

  v31 = v30;

  v32 = v41;
  sub_1000C0378();
  LOBYTE(v47) = v45;
  sub_1000C0378();

  return v32;
}

uint64_t sub_1000BB980()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000C0658();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v28 = &v27 - v16;
  v18 = sub_1000C0898();
  v33 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v34 = sub_100004D04(&qword_1000F0D50, &unk_1000CB668);
  sub_1000C0878();
  v32 = *(v19 + 56);
  v32(v17, 1, 1, v18);
  v21 = sub_1000C0318();
  *&v38 = 0;
  v37 = 0uLL;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v10, 1, 1, v21);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v23;
  v23(v6);
  sub_1000B9D00();
  v24 = v28;
  v34 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v32(v24, 1, 1, v33);
  LOBYTE(v37) = 2;
  v25 = sub_1000C2808();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v22(v13, 1, 1, v21);
  v30(v6, v31, v36);
  sub_1000C0398();
  sub_100004D04(&qword_1000F0D58, &qword_1000CB678);
  sub_1000C0218();
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  sub_1000C0208();
  sub_1000C01C8();
  return v34;
}

uint64_t sub_1000BBE30()
{
  v0 = sub_1000C0FE8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1028();
  sub_1000C1018();
  v5 = enum case for REMRemindersWidgetUserOperation.completeReminder(_:);
  v6 = sub_1000C1538();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = v1[13];
  v7(v4, enum case for REMAnalyticsEvent.remindersWidgetUserOperation(_:), v0);
  sub_1000C1008();

  v8 = v1[1];
  v8(v4, v0);
  sub_1000C1018();
  *v4 = 0xD00000000000001DLL;
  *(v4 + 1) = 0x80000001000CB600;
  *(v4 + 2) = 0x746567646977;
  *(v4 + 3) = 0xE600000000000000;
  *(v4 + 4) = 0x704163696C627570;
  *(v4 + 5) = 0xEF746E65746E4970;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  v7(v4, enum case for REMAnalyticsEvent.appIntents(_:), v0);
  sub_1000C1008();

  return (v8)(v4, v0);
}

uint64_t sub_1000BC03C(uint64_t a1)
{
  *(v1 + 24) = a1;

  return _swift_task_switch(sub_1000BC0CC, 0, 0);
}

uint64_t sub_1000BC0CC()
{
  if (qword_1000ECA78 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = qword_1000F0C90;
  sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
  isa = sub_1000C27A8().super.isa;
  v0[2] = 0;
  v4 = [v2 fetchRemindersWithObjectIDs:isa error:v0 + 2];

  v5 = v0[2];
  if (v4)
  {
    sub_10007E3A8(0, &qword_1000EFB90, REMReminder_ptr);
    sub_1000B9B5C(&qword_1000EFB60);
    v6 = sub_1000C2578();
    v7 = v5;

    sub_1000B816C(v6);
    v9 = v8;

    v10 = v0[1];

    return v10(v9);
  }

  else
  {
    v12 = v5;
    sub_1000C0868();

    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000BC2E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1000BC2F4()
{
  result = qword_1000F0D60;
  if (!qword_1000F0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D60);
  }

  return result;
}

uint64_t sub_1000BC38C@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v56 = sub_1000C0888();
  v1 = *(v56 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v56);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C0B68();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000C2628();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v60 = sub_1000C0898();
  v51 = *(v60 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(v60);
  v46 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100004D04(&qword_1000F0DA0, &qword_1000CB730);
  v49 = *(v47 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v47);
  v13 = v42 - v12;
  v14 = sub_100004D04(&qword_1000F0DA8, &qword_1000CB738);
  v15 = *(v14 - 8);
  v52 = v14;
  v53 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v45 = v42 - v17;
  v18 = sub_100004D04(&qword_1000F0DB0, &qword_1000CB740);
  v19 = *(v18 - 8);
  v54 = v18;
  v55 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v48 = v42 - v21;
  v22 = sub_100004D04(&qword_1000F0DB8, &qword_1000CB748);
  v23 = *(v22 - 8);
  v57 = v22;
  v58 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v50 = v42 - v25;
  sub_100004D04(&qword_1000F0DC0, &unk_1000CB750);
  sub_100008478(&qword_1000F0DC8, &qword_1000F0DC0, &unk_1000CB750);
  sub_1000C24C8();
  sub_1000C2618();
  sub_1000C0B58();
  v44 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v1 + 104);
  v42[1] = v1 + 104;
  v43 = v26;
  v27 = v4;
  v28 = v4;
  v29 = v56;
  v26(v28);
  v30 = v46;
  sub_1000C08A8();
  v31 = sub_100008478(&qword_1000F0DD0, &qword_1000F0DA0, &qword_1000CB730);
  v32 = v47;
  sub_1000C1B78();
  v51 = *(v51 + 8);
  (v51)(v30, v60);
  (*(v49 + 8))(v13, v32);
  sub_1000C2618();
  sub_1000C0B58();
  v43(v27, v44, v29);
  sub_1000C08A8();
  v61 = v32;
  v62 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = v52;
  v36 = v45;
  sub_1000C1B68();
  (v51)(v30, v60);
  (*(v53 + 8))(v36, v35);
  v61 = v35;
  v62 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v50;
  v39 = v54;
  sub_1000C1B98();
  (*(v55 + 8))(v34, v39);
  v61 = v39;
  v62 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v57;
  sub_1000C1B88();
  return (*(v58 + 8))(v38, v40);
}

uint64_t sub_1000BCAE8()
{
  v0 = sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  v1 = sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0);
  v2 = sub_1000A1674();

  return ControlWidgetButton.init<>(action:label:)(v2, sub_1000BCBA0, 0, v0, &type metadata for CreateQuickReminderIntent, v1, v2);
}

uint64_t sub_1000BCBF4@<X0>(uint64_t a1@<X8>)
{
  v6._countAndFlagsBits = 0x696D65522077654ELL;
  v6._object = 0xEC0000007265646ELL;
  v7._object = 0x80000001000CF4B0;
  v7._countAndFlagsBits = 0xD000000000000032;
  sub_1000C0D78(v6, v7);
  sub_100012814();
  result = sub_1000C1DE8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000BCC80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C2038();
  *a1 = result;
  return result;
}

uint64_t sub_1000BCCC4()
{
  sub_100005334(&qword_1000F0DB8, &qword_1000CB748);
  sub_100005334(&qword_1000F0DB0, &qword_1000CB740);
  sub_100005334(&qword_1000F0DA8, &qword_1000CB738);
  sub_100005334(&qword_1000F0DA0, &qword_1000CB730);
  sub_100008478(&qword_1000F0DD0, &qword_1000F0DA0, &qword_1000CB730);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t *sub_1000BCE18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    v28 = v27 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = sub_1000C2378();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v71 = a1;
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    *(v9 + 1) = *(a2 + v8 + 16);
    *(v9 + 4) = *(a2 + v8 + 32);
    v12 = type metadata accessor for TTRNewWidgetViewModel(0);
    v13 = v12[7];
    v14 = sub_1000C0E58();
    v15 = *(*(v14 - 8) + 16);

    v15(&v9[v13], &v10[v13], v14);
    v16 = v12[8];
    v17 = &v9[v16];
    v18 = &v10[v16];
    v19 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v19;
    v20 = v12[9];
    v21 = &v9[v20];
    v22 = &v10[v20];
    v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v24 = *(v23 - 1);
    v25 = *(v24 + 48);

    if (v25(v22, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v21, v22, *(*(v26 - 8) + 64));
    }

    else
    {
      v69 = v24;
      v29 = *v22;
      v30 = v22[1];
      *v21 = *v22;
      v21[1] = v30;
      v67 = v23[6];
      v31 = sub_1000C0818();
      v64 = *(v31 - 8);
      v65 = *(v64 + 48);
      v32 = v29;
      v33 = v30;
      if (v65(v22 + v67, 1, v31))
      {
        v34 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v21 + v67, v22 + v67, *(*(v34 - 8) + 64));
      }

      else
      {
        (*(v64 + 16))(v21 + v67, v22 + v67, v31);
        (*(v64 + 56))(v21 + v67, 0, 1, v31);
      }

      v35 = v23[7];
      v36 = sub_1000C0938();
      (*(*(v36 - 8) + 16))(v21 + v35, v22 + v35, v36);
      v37 = v23[8];
      v38 = *(v22 + v37);
      *(v21 + v37) = v38;
      *(v21 + v23[9]) = *(v22 + v23[9]);
      *(v21 + v23[10]) = *(v22 + v23[10]);
      *(v21 + v23[11]) = *(v22 + v23[11]);
      v39 = *(v69 + 56);
      v40 = v38;
      v39(v21, 0, 1, v23);
    }

    v41 = v12[10];
    v70 = *&v10[v41];
    *&v9[v41] = v70;
    v42 = v12[11];
    v43 = &v9[v42];
    v44 = &v10[v42];
    v45 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v45;
    v46 = v12[12];
    v68 = *&v10[v46];
    *&v9[v46] = v68;
    v47 = v12[13];
    v48 = &v9[v47];
    v49 = &v10[v47];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    v51 = v12[14];
    v52 = &v9[v51];
    v53 = &v10[v51];
    v54 = *(v53 + 1);
    *v52 = *v53;
    *(v52 + 1) = v54;
    v9[v12[15]] = v10[v12[15]];
    v55 = v12[16];
    v56 = &v9[v55];
    v57 = &v10[v55];
    v58 = *(v57 + 1);
    *v56 = *v57;
    *(v56 + 1) = v58;
    *&v9[v12[17]] = *&v10[v12[17]];
    v59 = v12[18];
    v60 = sub_1000C0938();
    v66 = *(*(v60 - 8) + 16);
    v61 = v70;

    v62 = v68;

    v66(&v9[v59], &v10[v59], v60);
    *&v9[v12[19]] = *&v10[v12[19]];
    v9[v12[20]] = v10[v12[20]];

    return v71;
  }

  return v28;
}

uint64_t sub_1000BD2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C2378();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 20);
  v6 = *(v5 + 8);

  v7 = *(v5 + 32);

  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = v8[7];
  v10 = sub_1000C0E58();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v5 + v8[8] + 8);

  v12 = (v5 + v8[9]);
  v13 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {

    v14 = v13[6];
    v15 = sub_1000C0818();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v12 + v14, 1, v15))
    {
      (*(v16 + 8))(v12 + v14, v15);
    }

    v17 = v13[7];
    v18 = sub_1000C0938();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
  }

  v19 = *(v5 + v8[11] + 8);

  v20 = *(v5 + v8[13] + 8);

  v21 = *(v5 + v8[14] + 8);

  v22 = *(v5 + v8[16] + 8);

  v23 = *(v5 + v8[17]);

  v24 = v8[18];
  v25 = sub_1000C0938();
  (*(*(v25 - 8) + 8))(v5 + v24, v25);
  v26 = *(v5 + v8[19]);
}

uint64_t sub_1000BD59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v69 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7);
  v11 = *(v9 + 8);
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);
  v12 = type metadata accessor for TTRNewWidgetViewModel(0);
  v13 = v12[7];
  v14 = sub_1000C0E58();
  v15 = *(*(v14 - 8) + 16);

  v15(v8 + v13, v9 + v13, v14);
  v16 = v12[8];
  v17 = (v8 + v16);
  v18 = (v9 + v16);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;
  v20 = v12[9];
  v21 = (v8 + v20);
  v22 = (v9 + v20);
  v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v24 = *(v23 - 1);
  v25 = *(v24 + 48);

  if (v25(v22, 1, v23))
  {
    v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v21, v22, *(*(v26 - 8) + 64));
  }

  else
  {
    v67 = v24;
    v27 = *v22;
    v28 = v22[1];
    *v21 = *v22;
    v21[1] = v28;
    v65 = v23[6];
    v29 = sub_1000C0818();
    v62 = *(v29 - 8);
    v63 = *(v62 + 48);
    v30 = v27;
    v31 = v28;
    if (v63(v22 + v65, 1, v29))
    {
      v32 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v21 + v65, v22 + v65, *(*(v32 - 8) + 64));
    }

    else
    {
      (*(v62 + 16))(v21 + v65, v22 + v65, v29);
      (*(v62 + 56))(v21 + v65, 0, 1, v29);
    }

    v33 = v23[7];
    v34 = sub_1000C0938();
    (*(*(v34 - 8) + 16))(v21 + v33, v22 + v33, v34);
    v35 = v23[8];
    v36 = *(v22 + v35);
    *(v21 + v35) = v36;
    *(v21 + v23[9]) = *(v22 + v23[9]);
    *(v21 + v23[10]) = *(v22 + v23[10]);
    *(v21 + v23[11]) = *(v22 + v23[11]);
    v37 = *(v67 + 56);
    v38 = v36;
    v37(v21, 0, 1, v23);
  }

  v39 = v12[10];
  v68 = *(v9 + v39);
  *(v8 + v39) = v68;
  v40 = v12[11];
  v41 = (v8 + v40);
  v42 = (v9 + v40);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = v12[12];
  v66 = *(v9 + v44);
  *(v8 + v44) = v66;
  v45 = v12[13];
  v46 = (v8 + v45);
  v47 = (v9 + v45);
  v48 = v47[1];
  *v46 = *v47;
  v46[1] = v48;
  v49 = v12[14];
  v50 = (v8 + v49);
  v51 = (v9 + v49);
  v52 = v51[1];
  *v50 = *v51;
  v50[1] = v52;
  *(v8 + v12[15]) = *(v9 + v12[15]);
  v53 = v12[16];
  v54 = (v8 + v53);
  v55 = (v9 + v53);
  v56 = v55[1];
  *v54 = *v55;
  v54[1] = v56;
  *(v8 + v12[17]) = *(v9 + v12[17]);
  v57 = v12[18];
  v58 = sub_1000C0938();
  v64 = *(*(v58 - 8) + 16);
  v59 = v68;

  v60 = v66;

  v64(v8 + v57, v9 + v57, v58);
  *(v8 + v12[19]) = *(v9 + v12[19]);
  *(v8 + v12[20]) = *(v9 + v12[20]);

  return v69;
}

uint64_t sub_1000BDA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v95 = a1;
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *(a2 + v7);
  v10 = *(a1 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 8);

  *(v8 + 2) = *(v9 + 2);
  *(v8 + 3) = *(v9 + 3);
  v11 = *(v8 + 4);
  *(v8 + 4) = *(v9 + 4);

  v12 = type metadata accessor for TTRNewWidgetViewModel(0);
  v13 = v12[7];
  v14 = sub_1000C0E58();
  (*(*(v14 - 8) + 24))(&v8[v13], &v9[v13], v14);
  v15 = v12[8];
  v16 = &v8[v15];
  v17 = &v9[v15];
  *v16 = *v17;
  v18 = *(v16 + 1);
  *(v16 + 1) = *(v17 + 1);

  v19 = v12[9];
  v20 = &v8[v19];
  v21 = &v9[v19];
  v22 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v23 = *(v22 - 1);
  v24 = *(v23 + 48);
  v25 = v24(v20, 1, v22);
  v26 = v24(v21, 1, v22);
  if (!v25)
  {
    if (v26)
    {
      sub_1000BFAC8(v20, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v33 = *v21;
    v34 = *v20;
    *v20 = *v21;
    v35 = v33;

    v36 = *(v20 + 1);
    v37 = *(v21 + 1);
    *(v20 + 1) = v37;
    v38 = v37;

    v39 = v22[6];
    v40 = sub_1000C0818();
    v91 = *(v40 - 8);
    v41 = *(v91 + 48);
    v93 = v41(&v20[v39], 1, v40);
    v42 = v41(&v21[v39], 1, v40);
    if (v93)
    {
      if (!v42)
      {
        (*(v91 + 16))(&v20[v39], &v21[v39], v40);
        (*(v91 + 56))(&v20[v39], 0, 1, v40);
        goto LABEL_18;
      }

      v43 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v44 = &v20[v39];
      v45 = &v21[v39];
    }

    else
    {
      if (!v42)
      {
        (*(v91 + 24))(&v20[v39], &v21[v39], v40);
        goto LABEL_18;
      }

      (*(v91 + 8))(&v20[v39], v40);
      v43 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v44 = &v20[v39];
      v45 = &v21[v39];
    }

    memcpy(v44, v45, v43);
LABEL_18:
    v52 = v22[7];
    v53 = sub_1000C0938();
    (*(*(v53 - 8) + 24))(&v20[v52], &v21[v52], v53);
    v54 = v22[8];
    v55 = *&v20[v54];
    v56 = *&v21[v54];
    *&v20[v54] = v56;
    v57 = v56;

    *&v20[v22[9]] = *&v21[v22[9]];
    v20[v22[10]] = v21[v22[10]];
    v20[v22[11]] = v21[v22[11]];
    goto LABEL_19;
  }

  if (v26)
  {
LABEL_7:
    v32 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v20, v21, *(*(v32 - 8) + 64));
    goto LABEL_19;
  }

  v27 = *v21;
  *v20 = *v21;
  v92 = *(v21 + 1);
  *(v20 + 1) = v92;
  v94 = v22[6];
  v28 = sub_1000C0818();
  v89 = *(v28 - 8);
  v90 = *(v89 + 48);
  v29 = v27;
  v30 = v92;
  if (v90(&v21[v94], 1, v28))
  {
    v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v20[v94], &v21[v94], *(*(v31 - 8) + 64));
  }

  else
  {
    (*(v89 + 16))(&v20[v94], &v21[v94], v28);
    (*(v89 + 56))(&v20[v94], 0, 1, v28);
  }

  v46 = v22[7];
  v47 = sub_1000C0938();
  (*(*(v47 - 8) + 16))(&v20[v46], &v21[v46], v47);
  v48 = v22[8];
  v49 = *&v21[v48];
  *&v20[v48] = v49;
  *&v20[v22[9]] = *&v21[v22[9]];
  v20[v22[10]] = v21[v22[10]];
  v20[v22[11]] = v21[v22[11]];
  v50 = *(v23 + 56);
  v51 = v49;
  v50(v20, 0, 1, v22);
LABEL_19:
  v58 = v12[10];
  v59 = *&v9[v58];
  v60 = *&v8[v58];
  *&v8[v58] = v59;
  v61 = v59;

  v62 = v12[11];
  v63 = &v8[v62];
  v64 = &v9[v62];
  *v63 = *v64;
  v65 = *(v63 + 1);
  *(v63 + 1) = *(v64 + 1);

  v66 = v12[12];
  v67 = *&v8[v66];
  v68 = *&v9[v66];
  *&v8[v66] = v68;
  v69 = v68;

  v70 = v12[13];
  v71 = &v8[v70];
  v72 = &v9[v70];
  *v71 = *v72;
  v73 = *(v71 + 1);
  *(v71 + 1) = *(v72 + 1);

  v74 = v12[14];
  v75 = &v8[v74];
  v76 = &v9[v74];
  *v75 = *v76;
  v77 = *(v75 + 1);
  *(v75 + 1) = *(v76 + 1);

  v8[v12[15]] = v9[v12[15]];
  v78 = v12[16];
  v79 = &v8[v78];
  v80 = &v9[v78];
  *v79 = *v80;
  v81 = *(v79 + 1);
  *(v79 + 1) = *(v80 + 1);

  v82 = v12[17];
  v83 = *&v8[v82];
  *&v8[v82] = *&v9[v82];

  v84 = v12[18];
  v85 = sub_1000C0938();
  (*(*(v85 - 8) + 24))(&v8[v84], &v9[v84], v85);
  v86 = v12[19];
  v87 = *&v8[v86];
  *&v8[v86] = *&v9[v86];

  v8[v12[20]] = v9[v12[20]];
  return v95;
}

uint64_t sub_1000BE190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  *(v8 + 16) = *(a2 + v7 + 16);
  *(v8 + 24) = *(a2 + v7 + 24);
  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 32))(v8 + v11, v9 + v11, v12);
  *(v8 + v10[8]) = *(v9 + v10[8]);
  v13 = v10[9];
  v14 = (v8 + v13);
  v15 = (v9 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v29 = a1;
    v19 = v15[1];
    *v14 = *v15;
    v14[1] = v19;
    v20 = v16[6];
    v21 = sub_1000C0818();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v15 + v20, 1, v21))
    {
      v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v14 + v20, v15 + v20, *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v22 + 32))(v14 + v20, v15 + v20, v21);
      (*(v22 + 56))(v14 + v20, 0, 1, v21);
    }

    v24 = v16[7];
    v25 = sub_1000C0938();
    (*(*(v25 - 8) + 32))(v14 + v24, v15 + v24, v25);
    *(v14 + v16[8]) = *(v15 + v16[8]);
    *(v14 + v16[9]) = *(v15 + v16[9]);
    *(v14 + v16[10]) = *(v15 + v16[10]);
    *(v14 + v16[11]) = *(v15 + v16[11]);
    (*(v17 + 56))(v14, 0, 1, v16);
    a1 = v29;
  }

  *(v8 + v10[10]) = *(v9 + v10[10]);
  *(v8 + v10[11]) = *(v9 + v10[11]);
  *(v8 + v10[12]) = *(v9 + v10[12]);
  *(v8 + v10[13]) = *(v9 + v10[13]);
  *(v8 + v10[14]) = *(v9 + v10[14]);
  *(v8 + v10[15]) = *(v9 + v10[15]);
  *(v8 + v10[16]) = *(v9 + v10[16]);
  *(v8 + v10[17]) = *(v9 + v10[17]);
  v26 = v10[18];
  v27 = sub_1000C0938();
  (*(*(v27 - 8) + 32))(v8 + v26, v9 + v26, v27);
  *(v8 + v10[19]) = *(v9 + v10[19]);
  *(v8 + v10[20]) = *(v9 + v10[20]);
  return a1;
}

uint64_t sub_1000BE564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v88 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  v11 = *(a1 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 8) = v10;

  *(v8 + 16) = *(v9 + 16);
  v12 = *(v8 + 32);
  *(v8 + 32) = *(v9 + 32);

  v13 = type metadata accessor for TTRNewWidgetViewModel(0);
  v14 = v13[7];
  v15 = sub_1000C0E58();
  (*(*(v15 - 8) + 40))(v8 + v14, v9 + v14, v15);
  v16 = v13[8];
  v17 = (v8 + v16);
  v18 = (v9 + v16);
  v20 = *v18;
  v19 = v18[1];
  v21 = v17[1];
  *v17 = v20;
  v17[1] = v19;

  v22 = v13[9];
  v23 = (v8 + v22);
  v24 = (v9 + v22);
  v25 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v26 = *(v25 - 1);
  v27 = *(v26 + 48);
  v28 = v27(v23, 1, v25);
  v29 = v27(v24, 1, v25);
  if (!v28)
  {
    if (v29)
    {
      sub_1000BFAC8(v23, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v36 = *v23;
    *v23 = *v24;

    v37 = *(v23 + 1);
    *(v23 + 1) = *(v24 + 1);

    v38 = v25[6];
    v39 = sub_1000C0818();
    v86 = *(v39 - 8);
    v40 = *(v86 + 48);
    v87 = v40(&v23[v38], 1, v39);
    v41 = v40(&v24[v38], 1, v39);
    if (v87)
    {
      if (!v41)
      {
        (*(v86 + 32))(&v23[v38], &v24[v38], v39);
        (*(v86 + 56))(&v23[v38], 0, 1, v39);
        goto LABEL_18;
      }

      v42 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v43 = &v23[v38];
      v44 = &v24[v38];
    }

    else
    {
      if (!v41)
      {
        (*(v86 + 40))(&v23[v38], &v24[v38], v39);
        goto LABEL_18;
      }

      (*(v86 + 8))(&v23[v38], v39);
      v42 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v43 = &v23[v38];
      v44 = &v24[v38];
    }

    memcpy(v43, v44, v42);
LABEL_18:
    v47 = v25[7];
    v48 = sub_1000C0938();
    (*(*(v48 - 8) + 40))(&v23[v47], &v24[v47], v48);
    v49 = v25[8];
    v50 = *&v23[v49];
    *&v23[v49] = *&v24[v49];

    *&v23[v25[9]] = *&v24[v25[9]];
    v23[v25[10]] = v24[v25[10]];
    v23[v25[11]] = v24[v25[11]];
    goto LABEL_19;
  }

  if (v29)
  {
LABEL_7:
    v35 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v23, v24, *(*(v35 - 8) + 64));
    goto LABEL_19;
  }

  v30 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v30;
  v31 = v25[6];
  v32 = sub_1000C0818();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(&v24[v31], 1, v32))
  {
    v34 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v23[v31], &v24[v31], *(*(v34 - 8) + 64));
  }

  else
  {
    (*(v33 + 32))(&v23[v31], &v24[v31], v32);
    (*(v33 + 56))(&v23[v31], 0, 1, v32);
  }

  v45 = v25[7];
  v46 = sub_1000C0938();
  (*(*(v46 - 8) + 32))(&v23[v45], &v24[v45], v46);
  *&v23[v25[8]] = *&v24[v25[8]];
  *&v23[v25[9]] = *&v24[v25[9]];
  v23[v25[10]] = v24[v25[10]];
  v23[v25[11]] = v24[v25[11]];
  (*(v26 + 56))(v23, 0, 1, v25);
LABEL_19:
  v51 = v13[10];
  v52 = *(v8 + v51);
  *(v8 + v51) = *(v9 + v51);

  v53 = v13[11];
  v54 = (v8 + v53);
  v55 = (v9 + v53);
  v57 = *v55;
  v56 = v55[1];
  v58 = v54[1];
  *v54 = v57;
  v54[1] = v56;

  v59 = v13[12];
  v60 = *(v8 + v59);
  *(v8 + v59) = *(v9 + v59);

  v61 = v13[13];
  v62 = (v8 + v61);
  v63 = (v9 + v61);
  v65 = *v63;
  v64 = v63[1];
  v66 = v62[1];
  *v62 = v65;
  v62[1] = v64;

  v67 = v13[14];
  v68 = (v8 + v67);
  v69 = (v9 + v67);
  v71 = *v69;
  v70 = v69[1];
  v72 = v68[1];
  *v68 = v71;
  v68[1] = v70;

  *(v8 + v13[15]) = *(v9 + v13[15]);
  v73 = v13[16];
  v74 = (v8 + v73);
  v75 = (v9 + v73);
  v77 = *v75;
  v76 = v75[1];
  v78 = v74[1];
  *v74 = v77;
  v74[1] = v76;

  v79 = v13[17];
  v80 = *(v8 + v79);
  *(v8 + v79) = *(v9 + v79);

  v81 = v13[18];
  v82 = sub_1000C0938();
  (*(*(v82 - 8) + 40))(v8 + v81, v9 + v81, v82);
  v83 = v13[19];
  v84 = *(v8 + v83);
  *(v8 + v83) = *(v9 + v83);

  *(v8 + v13[20]) = *(v9 + v13[20]);
  return v88;
}

uint64_t sub_1000BEC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TTRNewWidgetViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000BED30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C2378();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TTRNewWidgetViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s10WidgetViewVMa_0()
{
  result = qword_1000F0E30;
  if (!qword_1000F0E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BEE78()
{
  result = sub_1000C2378();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for TTRNewWidgetViewModel(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BEF5C()
{
  sub_1000C18C8();
  sub_1000BFB28(&qword_1000F0EA0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000C1948();
  return v1;
}

uint64_t sub_1000BEFD8@<X0>(_BYTE *a1@<X8>)
{
  sub_1000C18C8();
  sub_1000BFB28(&qword_1000F0EA0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_1000C1948();
  *a1 = v3;
  return result;
}

uint64_t sub_1000BF068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = type metadata accessor for TTRIAnyListComplicationWidgetView(0);
  v3 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100004D04(&qword_1000F0E68, &qword_1000CB7C0);
  v5 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v7 = &v42 - v6;
  v43 = sub_100004D04(&qword_1000F0E70, &qword_1000CB7C8);
  v8 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v10 = &v42 - v9;
  v45 = sub_100004D04(&qword_1000F0E78, &qword_1000CB7D0);
  v11 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v13 = &v42 - v12;
  v14 = type metadata accessor for TTRAnyListWidget.SystemWidgetView(0);
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C2378();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v42 - v25;
  (*(v19 + 16))(&v42 - v25, a1, v18, v24);
  v27 = (*(v19 + 88))(v26, v18);
  if (v27 == enum case for WidgetFamily.systemSmall(_:))
  {
    v28 = 0;
LABEL_7:
    v29 = _s10WidgetViewVMa_0();
    sub_1000BFA60(a1 + *(v29 + 20), &v17[v14[5]], type metadata accessor for TTRNewWidgetViewModel);
    *v17 = v28;
    v30 = v14[6];
    *&v17[v30] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    swift_storeEnumTagMultiPayload();
    v31 = &v17[v14[7]];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v32 = v14[8];
    *&v17[v32] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    v33 = v14[9];
    *&v17[v33] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_1000BFA60(v17, v10, type metadata accessor for TTRAnyListWidget.SystemWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_1000BFB28(&qword_1000F0E90, type metadata accessor for TTRAnyListWidget.SystemWidgetView);
    sub_1000BFB28(&qword_1000F0E98, type metadata accessor for TTRIAnyListComplicationWidgetView);
    sub_1000C1AE8();
    sub_1000BF974(v13, v7);
    swift_storeEnumTagMultiPayload();
    sub_1000BF888();
    sub_1000C1AE8();
    sub_1000BF9E4(v13);
    v34 = type metadata accessor for TTRAnyListWidget.SystemWidgetView;
    v35 = v17;
    return sub_1000BFAC8(v35, v34);
  }

  if (v27 == enum case for WidgetFamily.systemMedium(_:))
  {
    v28 = 1;
    goto LABEL_7;
  }

  if (v27 == enum case for WidgetFamily.systemLarge(_:))
  {
    v28 = 2;
    goto LABEL_7;
  }

  v37 = enum case for WidgetFamily.accessoryRectangular(_:);
  if (v27 != enum case for WidgetFamily.systemExtraLarge(_:) && v27 != enum case for WidgetFamily.accessoryCircular(_:) && v27 != enum case for WidgetFamily.accessoryRectangular(_:) && v27 != enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v19 + 8))(v26, v18);
  }

  (*(v19 + 104))(v22, v37, v18);
  sub_1000BFB28(&qword_1000F0E80, &type metadata accessor for WidgetFamily);
  sub_1000C2788();
  sub_1000C2788();
  (*(v19 + 8))(v22, v18);
  if (v49 != v48)
  {
    v50._countAndFlagsBits = 0x7070755320746F4ELL;
    v50._object = 0xED0000646574726FLL;
    v51._object = 0x80000001000CF4F0;
    v51._countAndFlagsBits = 0xD000000000000033;
    *v7 = sub_1000C0D78(v50, v51);
    *(v7 + 1) = v41;
    v7[16] = 0;
    *(v7 + 3) = _swiftEmptyArrayStorage;
    swift_storeEnumTagMultiPayload();
    sub_1000BF888();
    return sub_1000C1AE8();
  }

  v38 = a1 + *(_s10WidgetViewVMa_0() + 20);
  v39 = v42;
  sub_1000BFA60(v38, v42, type metadata accessor for TTRNewWidgetViewModel);
  v40 = v44;
  *(v39 + *(v44 + 20)) = 3;
  *(v39 + *(v40 + 24)) = 1;
  sub_1000BFA60(v39, v10, type metadata accessor for TTRIAnyListComplicationWidgetView);
  swift_storeEnumTagMultiPayload();
  sub_1000BFB28(&qword_1000F0E90, type metadata accessor for TTRAnyListWidget.SystemWidgetView);
  sub_1000BFB28(&qword_1000F0E98, type metadata accessor for TTRIAnyListComplicationWidgetView);
  sub_1000C1AE8();
  sub_1000BF974(v13, v7);
  swift_storeEnumTagMultiPayload();
  sub_1000BF888();
  sub_1000C1AE8();
  sub_1000BF9E4(v13);
  v34 = type metadata accessor for TTRIAnyListComplicationWidgetView;
  v35 = v39;
  return sub_1000BFAC8(v35, v34);
}

unint64_t sub_1000BF888()
{
  result = qword_1000F0E88;
  if (!qword_1000F0E88)
  {
    sub_100005334(&qword_1000F0E78, &qword_1000CB7D0);
    sub_1000BFB28(&qword_1000F0E90, type metadata accessor for TTRAnyListWidget.SystemWidgetView);
    sub_1000BFB28(&qword_1000F0E98, type metadata accessor for TTRIAnyListComplicationWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0E88);
  }

  return result;
}

uint64_t sub_1000BF974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000F0E78, &qword_1000CB7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF9E4(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000F0E78, &qword_1000CB7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BFA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BFAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BFB28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BFB74()
{
  result = qword_1000F0EA8;
  if (!qword_1000F0EA8)
  {
    sub_100005334(&qword_1000F0EB0, &qword_1000CB870);
    sub_1000BFBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0EA8);
  }

  return result;
}

unint64_t sub_1000BFBF8()
{
  result = qword_1000F0EB8;
  if (!qword_1000F0EB8)
  {
    sub_100005334(&qword_1000F0EC0, &qword_1000CB878);
    sub_1000BF888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0EB8);
  }

  return result;
}

uint64_t sub_1000BFCB0(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1000FA9F0 == -1)
  {
    if (qword_1000FA9F8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000C0178();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000FA9F8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000FA9E8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000C0190();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000FA9D8 < v11;
    if (dword_1000FA9D8 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000FA9DC > a3)
      {
        return 1;
      }

      if (dword_1000FA9DC >= a3)
      {
        return dword_1000FA9E0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000FA9D8 < a2;
  if (dword_1000FA9D8 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000BFE44(uint64_t result)
{
  v1 = qword_1000FA9F8;
  if (qword_1000FA9F8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000FA9F8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000FA9D8, &dword_1000FA9DC, &dword_1000FA9E0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
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